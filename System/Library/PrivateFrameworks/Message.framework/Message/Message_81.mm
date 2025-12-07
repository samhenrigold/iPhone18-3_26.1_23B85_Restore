uint64_t sub_1B0D0A0C4(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = *v1;
  v5 = *(*v1 + 24);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(*v1 + 16) < v6 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B04467C8(isUniquelyReferenced_nonNull_native, v6, 0);
    }

    v8 = *(type metadata accessor for Response(0) - 8);
    return sub_1B0D0B778(*v1 + 16, *v1 + ((*(v8 + 80) + 40) & ~*(v8 + 80)), a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v3);
  }

  return result;
}

uint64_t sub_1B0D0A25C(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  MEMORY[0x1EEE9AC00](v4);
  if (a1)
  {
    v5 = &a1[a2];
  }

  else
  {
    v5 = 0;
  }

  FramingParser.appendAndFrameBytes(_:)(a1, v5);
  sub_1B0434420(v6);
}

uint64_t sub_1B0D0A440@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ResponsePayload(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0446A38(v2, v6, type metadata accessor for ResponsePayload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      *a1 = *v6;
      if (EnumCaseMultiPayload != 4)
      {
        *(a1 + 8) = *(v6 + 8);
      }

LABEL_31:
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload > 8)
    {
      v10 = *(v6 + 2);
      v11 = v6[24];
      *a1 = *v6;
      *(a1 + 16) = v10;
      *(a1 + 24) = v11;
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    v49 = type metadata accessor for ResponsePayload;
LABEL_46:
    sub_1B0446AA0(v6, v49);
    goto LABEL_47;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *v6;
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    type metadata accessor for MessageData(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 < 1)
    {
      *a1 = *v6;
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v9 <= 1 || v9 == 2)
    {
      sub_1B03C60A4(v6, a1, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    v49 = type metadata accessor for MessageData;
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload)
  {
    v12 = *(v6 + 5);
    v13 = *(v6 + 7);
    v55 = *(v6 + 6);
    v56 = v13;
    v14 = *(v6 + 7);
    v57 = *(v6 + 8);
    v15 = *(v6 + 1);
    v16 = *(v6 + 3);
    v51 = *(v6 + 2);
    v52 = v16;
    v17 = *(v6 + 3);
    v18 = *(v6 + 5);
    v53 = *(v6 + 4);
    v54 = v18;
    v19 = *(v6 + 1);
    v50[0] = *v6;
    v50[1] = v19;
    v58[6] = v55;
    v58[7] = v14;
    v58[8] = *(v6 + 8);
    v58[2] = v51;
    v58[3] = v17;
    v58[4] = v53;
    v58[5] = v12;
    v58[0] = v50[0];
    v58[1] = v15;
    v20 = sub_1B0D0CD9C(v58);
    v21 = sub_1B0504D1C(v58);
    if (v20 <= 4)
    {
      if (v20 <= 1)
      {
        if (v20)
        {
          v41 = *(v21 + 16);
          v42 = *(v21 + 20);
          v43 = *(v21 + 24);
          v44 = *(v21 + 32);
          *a1 = *v21;
          *(a1 + 16) = v41;
          *(a1 + 20) = v42;
          *(a1 + 24) = v43;
          *(a1 + 32) = v44;
        }

        else
        {
          v23 = sub_1B0D0C618(*v21);
          sub_1B0D0CDA8(v50);
          *a1 = v23;
        }
      }

      else
      {
        if (v20 == 2)
        {
          v25 = *(v21 + 16);
          v26 = *(v21 + 20);
          v27 = *(v21 + 24);
          v28 = *(v21 + 32);
          *a1 = *v21;
          *(a1 + 16) = v25;
          *(a1 + 20) = v26;
          *(a1 + 24) = v27;
          *(a1 + 32) = v28;
          type metadata accessor for UntaggedResponse(0);
          return swift_storeEnumTagMultiPayload();
        }

        if (v20 == 3)
        {
          *a1 = *v21;
        }

        else
        {
          v35 = *(v21 + 32);
          v36 = *(v21 + 33);
          v37 = *(v21 + 40);
          v38 = *(v21 + 16);
          *a1 = *v21;
          *(a1 + 16) = v38;
          *(a1 + 32) = v35;
          *(a1 + 33) = v36;
          *(a1 + 40) = v37;
        }
      }

      goto LABEL_31;
    }

    if (v20 > 7)
    {
      if (v20 == 8)
      {
        v24 = *(v21 + 16);
        *a1 = *v21;
        *(a1 + 16) = v24;
        type metadata accessor for UntaggedResponse(0);
      }

      else
      {
        if (v20 != 10)
        {
          while (1)
          {
            sub_1B0D0CDA8(v50);
LABEL_47:
            sub_1B0E465B8();
            __break(1u);
          }
        }

        v45 = *(v21 + 16);
        v46 = *(v21 + 32);
        v47 = *(v21 + 40);
        v48 = *(v21 + 24);
        *a1 = *v21;
        *(a1 + 16) = v45;
        *(a1 + 24) = v48;
        *(a1 + 32) = v46;
        *(a1 + 40) = v47;
        type metadata accessor for UntaggedResponse(0);
      }

      return swift_storeEnumTagMultiPayload();
    }

    if (v20 == 5)
    {
      *a1 = *v21;
      v29 = *(v21 + 16);
      v30 = *(v21 + 32);
      v31 = *(v21 + 64);
      *(a1 + 48) = *(v21 + 48);
      *(a1 + 64) = v31;
      *(a1 + 16) = v29;
      *(a1 + 32) = v30;
      v32 = *(v21 + 80);
      v33 = *(v21 + 96);
      v34 = *(v21 + 128);
      *(a1 + 112) = *(v21 + 112);
      *(a1 + 128) = v34;
      *(a1 + 80) = v32;
      *(a1 + 96) = v33;
      type metadata accessor for UntaggedResponse(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v20 == 6)
    {
      v22 = *v21;
      if (!HIDWORD(*v21))
      {
        goto LABEL_42;
      }
    }

    else
    {
      v22 = *v21;
      if (!HIDWORD(*v21))
      {
LABEL_42:
        *a1 = v22;
        type metadata accessor for UntaggedResponse(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    sub_1B0D0CB00();
    swift_allocError();
    *v39 = v22;
    *(v39 + 8) = 0;
    *(v39 + 16) = 2;
    return swift_willThrow();
  }

  v8 = *(v6 + 2);
  *a1 = *v6;
  *(a1 + 16) = v8;
  type metadata accessor for UntaggedResponse(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B0D0AA68@<X0>(uint64_t a1@<X8>)
{
  *v15 = *(v1 + 16);
  *&v15[9] = *(v1 + 25);
  v3 = *&v15[8];
  v13 = *v15;
  v4 = *&v15[16];
  v5 = v15[24];
  v7 = *v1;
  v6 = *(v1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v15[24])
  {
    sub_1B0D0CDFC(v15, v14);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0D0CDFC(v15, v14);
  }

  v8 = sub_1B0D0D9E4(v7, v6);
  if (v9)
  {
    sub_1B0D0CB00();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v6;
    *(v10 + 16) = 0;
    swift_willThrow();
    sub_1B0447F00(v13);
  }

  else
  {
    v12 = v8;

    *a1 = v12;
    *(a1 + 4) = HIDWORD(v12);
    *(a1 + 8) = v13;
    *(a1 + 16) = v3;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    type metadata accessor for Response(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1B0D0ABA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Response(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0446A38(a1, v6, type metadata accessor for Response);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result == 3)
    {
      result = sub_1B0446AA0(v6, type metadata accessor for Response);
      v19 = 0x6C61746166;
      v20 = 0xE500000000000000;
      goto LABEL_30;
    }

    if (result != 4)
    {
      v19 = 0x72617453656C6469;
      v20 = 0xEB00000000646574;
      goto LABEL_30;
    }

    result = sub_1B0446AA0(v6, type metadata accessor for Response);
    v21 = 0x80000001B0F2F540;
    v22 = 0xD000000000000017;
    goto LABEL_49;
  }

  if (!result)
  {
    type metadata accessor for ResponsePayload(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 5)
        {
          result = sub_1B0446AA0(v6, type metadata accessor for ResponsePayload);
          v19 = 0x6465676761746E75;
          v20 = 0xEC00000029646928;
          goto LABEL_30;
        }

        result = sub_1B0446AA0(v6, type metadata accessor for ResponsePayload);
        v33 = "untagged(quotaRoot)";
        goto LABEL_48;
      }

      if (EnumCaseMultiPayload == 7)
      {
        result = sub_1B0446AA0(v6, type metadata accessor for ResponsePayload);
        v19 = 0x6465676761746E75;
        v20 = 0xEF2961746F757128;
        goto LABEL_30;
      }

      if (EnumCaseMultiPayload == 8)
      {
        result = sub_1B0446AA0(v6, type metadata accessor for ResponsePayload);
        v21 = 0x80000001B0F2F600;
        v22 = 0xD000000000000012;
        goto LABEL_49;
      }

      result = sub_1B0446AA0(v6, type metadata accessor for ResponsePayload);
      v34 = "untagged(applePushService)";
    }

    else
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          *a2 = 0xD000000000000015;
          a2[1] = 0x80000001B0F2F680;
          return sub_1B0446AA0(v6, type metadata accessor for ResponsePayload);
        }

        if (EnumCaseMultiPayload == 3)
        {
          result = sub_1B0446AA0(v6, type metadata accessor for ResponsePayload);
          v21 = 0x80000001B0F2F660;
          v22 = 0xD000000000000018;
        }

        else
        {
          result = sub_1B0446AA0(v6, type metadata accessor for ResponsePayload);
          v21 = 0x80000001B0F2F640;
          v22 = 0xD000000000000014;
        }

        goto LABEL_49;
      }

      if (EnumCaseMultiPayload)
      {
        result = sub_1B0446AA0(v6, type metadata accessor for ResponsePayload);
        v35 = "untagged(mailboxData)";
        goto LABEL_46;
      }

      result = sub_1B0446AA0(v6, type metadata accessor for ResponsePayload);
      v34 = "untagged(conditionalState)";
    }

    v21 = (v34 - 32) | 0x8000000000000000;
    v22 = 0xD00000000000001ALL;
    goto LABEL_49;
  }

  if (result != 1)
  {
    v24 = *(v6 + 1);
    v26 = *(v6 + 2);
    v25 = *(v6 + 3);
    v27 = *(v6 + 4);
    v28 = v6[40];
    if (v6[40])
    {
      *&v47[0] = *v6;
      *(&v47[0] + 1) = v24;
      if (v28 == 1)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1B2726E80](5197344, 0xE300000000000000);

        v29 = v26;
        v30 = v25;
        v31 = v27;
        v32 = 1;
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1B2726E80](1145127456, 0xE400000000000000);

        v29 = v26;
        v30 = v25;
        v31 = v27;
        v32 = 2;
      }
    }

    else
    {
      *&v47[0] = *v6;
      *(&v47[0] + 1) = v24;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1B2726E80](4935456, 0xE300000000000000);

      v29 = v26;
      v30 = v25;
      v31 = v27;
      v32 = 0;
    }

    result = sub_1B0BB6FE0(v29, v30, v31, v32);
    v20 = *(&v47[0] + 1);
    v19 = *&v47[0];
    goto LABEL_30;
  }

  v8 = *(v6 + 9);
  v9 = *(v6 + 7);
  v43 = *(v6 + 8);
  v44 = v8;
  v10 = *(v6 + 9);
  v45 = *(v6 + 10);
  v11 = *(v6 + 5);
  v12 = *(v6 + 3);
  v39 = *(v6 + 4);
  v40 = v11;
  v13 = *(v6 + 5);
  v14 = *(v6 + 7);
  v41 = *(v6 + 6);
  v42 = v14;
  v15 = *(v6 + 1);
  v36[0] = *v6;
  v36[1] = v15;
  v16 = *(v6 + 3);
  v18 = *v6;
  v17 = *(v6 + 1);
  v37 = *(v6 + 2);
  v38 = v16;
  v47[8] = v43;
  v47[9] = v10;
  v47[10] = *(v6 + 10);
  v47[4] = v39;
  v47[5] = v13;
  v47[6] = v41;
  v47[7] = v9;
  v47[0] = v18;
  v47[1] = v17;
  v46 = *(v6 + 88);
  v48 = *(v6 + 88);
  v47[2] = v37;
  v47[3] = v12;
  result = sub_1B0D0CBC8(v47);
  if (result > 3)
  {
    if (result == 4)
    {
      sub_1B041BA38(v47);
      result = sub_1B0D0CBE4(v36);
      v35 = "fetch(streamingBytes)";
      goto LABEL_46;
    }

    if (result != 5)
    {
      v19 = 0x6966286863746566;
      v20 = 0xED0000296873696ELL;
      goto LABEL_30;
    }

    v33 = "fetch(streamingEnd)";
LABEL_48:
    v21 = (v33 - 32) | 0x8000000000000000;
    v22 = 0xD000000000000013;
    goto LABEL_49;
  }

  if (result < 2)
  {
    result = sub_1B041BA38(v47);
    v19 = 0x7473286863746566;
    v20 = 0xEC00000029747261;
LABEL_30:
    *a2 = v19;
    a2[1] = v20;
    return result;
  }

  if (result != 2)
  {
    sub_1B041BA38(v47);
    result = sub_1B0D0CBE4(v36);
    v35 = "fetch(streamingBegin)";
LABEL_46:
    v21 = (v35 - 32) | 0x8000000000000000;
    v22 = 0xD000000000000015;
    goto LABEL_49;
  }

  sub_1B041BA38(v47);
  result = sub_1B0D0CBE4(v36);
  v21 = 0x80000001B0F2F5C0;
  v22 = 0xD000000000000016;
LABEL_49:
  *a2 = v22;
  a2[1] = v21;
  return result;
}

void sub_1B0D0B1F8(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_37;
  }

  v8 = a3[1];
  v9 = *(type metadata accessor for Response(0) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v9 + 72);
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    goto LABEL_22;
  }

  if (!a4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v16 = a4 + v14 * v4;
  if (v16 <= a2 && v16 + v14 * v11 > a2)
  {
    if (v16 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    swift_arrayInitWithTakeFrontToBack();
  }

LABEL_22:
  if (v5 < v8 && v10 >= 1)
  {
    if (v15)
    {
      v19 = a2 + v14 * v11;
      if (v19 < v15 || v19 >= v15 + v14 * v10)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v19 != v15)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      return;
    }

LABEL_39:
    __break(1u);
  }
}

void sub_1B0D0B38C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for Response(0);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = v5;
      v10 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = 0;
  v8 = 0;
  v9 = v7;
LABEL_6:
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_1B0D0B4B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for Response(0);
  if (v5 >= v7)
  {
    v9 = 0;
    v8 = 0;
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v9)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1B0D0B5C8()
{
  v1 = *v0;
  v2 = type metadata accessor for Response(0);
  v3 = *(v1 + 16);
  v4 = *(*(v2 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65A0, &qword_1B0EE8188);
  v5 = swift_allocObject();
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_1B0D0B4B0(v5 + 16, v5 + ((v4 + 40) & ~v4), (v1 + 16), v1 + ((v4 + 40) & ~v4));
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1B0D0B778(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v7 = result;
    v8 = *(result + 16);
    result = v8 - a4;
    if (__OFADD__(v8, -a4))
    {
      __break(1u);
    }

    else
    {
      if (result < 0)
      {
        v9 = __OFADD__(result, *v7);
        result += *v7;
        if (v9)
        {
          goto LABEL_10;
        }
      }

      v7[2] = result;
      v10 = v7[1];
      v9 = __OFADD__(v10, a4);
      v11 = v10 + a4;
      if (!v9)
      {
        v7[1] = v11;
        sub_1B0D0B968(result, v8, v7, a2, v12);
        return sub_1B0D0B81C(a3, a4);
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D0B81C(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (*(v2 + 32))
  {
    if (!result || !a2)
    {
      return result;
    }

    if (*(v2 + 8) >= a2)
    {
      type metadata accessor for Response(0);
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v5 = *(v2 + 8);
  if (v5 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(v2 + 24);
  if (result && v5)
  {
    type metadata accessor for Response(0);
    result = swift_arrayInitWithCopy();
  }

  if (__OFADD__(v5, a2 - v5))
  {
    goto LABEL_20;
  }

  if (a2 < v5)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v4 || a2 == v5)
  {
    return result;
  }

  result = type metadata accessor for Response(0);
  if (v6 < a2 - v5)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_16:

  return swift_arrayInitWithCopy();
}

uint64_t sub_1B0D0B968@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a2;
  v7 = result;
  if (result >= a2)
  {
    v12 = *a3 - result;
    if (!__OFSUB__(*a3, result))
    {
      v14 = a2 == 0;
      if (a2)
      {
        v13 = a4;
      }

      else
      {
        v13 = 0;
      }

      v15 = type metadata accessor for Response(0);
      v16 = *(v15 - 8);
      result = v15 - 8;
      v10 = v16;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = type metadata accessor for Response(0);
    v11 = *(v9 - 8);
    result = v9 - 8;
    v10 = v11;
    v12 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      v13 = 0;
      v6 = 0;
      v14 = 1;
LABEL_9:
      *a5 = a4 + *(v10 + 72) * v7;
      *(a5 + 8) = v12;
      *(a5 + 16) = v13;
      *(a5 + 24) = v6;
      *(a5 + 32) = v14;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D0BA58(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = HIDWORD(a3);
  v46 = WORD2(a4);
  v9 = BYTE6(a4);
  v10 = *v4;
  sub_1B0E46C28();
  GmailLabel.hash(into:)(v49, a2, a3, a4 & 0xFFFFFFFFFFFFFFLL);
  v11 = sub_1B0E46CB8();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  v47 = a4;
  v41 = a3;
  v39 = v8;
  v45 = v9;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = v10;
    v16 = ~v13;
    v17 = (v8 - a3);
    v43 = (v9 & 0xFFFFFFFFFF0000FFLL | (WORD2(a4) << 8)) + a3;
    v44 = v10 + 56;
    while (1)
    {
      v18 = 24 * v14;
      v19 = *(v15 + 48) + 24 * v14;
      v21 = *(v19 + 8);
      v20 = *(v19 + 12);
      if (v20 - v21 == v17)
      {
        v22 = v15;
        v23 = *v19;
        v24 = *(v19 + 20);
        v25 = *(v19 + 22);
        v26 = *(v19 + 16) == v47 && v24 == v46;
        v27 = v26 && v25 == v45;
        if (v27 && v23 == a2)
        {
          break;
        }

        v29 = v17;
        swift_beginAccess();
        v30 = *(v23 + 24) + (v25 | (v24 << 8));
        swift_beginAccess();
        v31 = memcmp((v30 + v21), (*(a2 + 24) + v43), v20 - v21);
        v17 = v29;
        v18 = 24 * v14;
        v12 = v44;
        v15 = v22;
        if (!v31)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v16;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v32 = *(v22 + 48) + v18;
    v33 = *(v32 + 16);
    v34 = *(v32 + 20);
    v35 = *(v32 + 22);
    *a1 = *v32;
    *(a1 + 8) = *(v32 + 8);
    *(a1 + 16) = v33;
    *(a1 + 20) = v34;
    *(a1 + 22) = v35;

    return 0;
  }

  else
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *v40;

    sub_1B0D0BF90(v38, v41, v47 & 0xFFFFFFFFFFFFFFLL, v14, isUniquelyReferenced_nonNull_native);
    *v40 = v48;
    *a1 = a2;
    *(a1 + 8) = v41;
    *(a1 + 12) = v39;
    *(a1 + 16) = v47;
    *(a1 + 20) = v46;
    *(a1 + 22) = v45;
    return 1;
  }
}

uint64_t sub_1B0D0BCD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65C0, &unk_1B0EE81B0);
  v4 = sub_1B0E46208();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v33 = v1;
    v34 = (v3 + 56);
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
    v11 = v4 + 56;
    v35 = v3;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v36 = (v9 - 1) & v9;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v14 | (v6 << 6));
      v19 = *v18;
      v21 = *(v18 + 8);
      v20 = *(v18 + 12);
      v22 = *(v18 + 16);
      v23 = *(v18 + 20);
      v24 = *(v18 + 22);
      sub_1B0E46C28();
      v37 = v37 & 0xFF00000000000000 | v22 | (v23 << 32) | (v24 << 48);
      GmailLabel.hash(into:)(v38, v19, v21 | (v20 << 32), v37);
      result = sub_1B0E46CB8();
      v25 = -1 << *(v5 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 24 * v12;
      *v13 = v19;
      *(v13 + 8) = v21;
      *(v13 + 12) = v20;
      *(v13 + 16) = v22;
      *(v13 + 20) = v23;
      *(v13 + 22) = v24;
      ++*(v5 + 16);
      v3 = v35;
      v9 = v36;
    }

    v15 = v6;
    result = v34;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v10)
      {
        break;
      }

      v17 = v34[v6];
      ++v15;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B0D0BF90(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = HIDWORD(a2);
  v35 = WORD2(a3);
  v36 = BYTE6(a3);
  v37 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  v31 = HIDWORD(a2);
  v32 = a2;
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_25;
  }

  v34 = a3;
  if (a5)
  {
    sub_1B0D0BCD8(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1B0D0C1FC();
      LODWORD(a3) = v34;
      goto LABEL_25;
    }

    sub_1B0D0C37C(v9 + 1);
  }

  v11 = *v5;
  sub_1B0E46C28();
  LODWORD(v12) = v34;
  GmailLabel.hash(into:)(v38, v37, a2, v34 & 0xFFFFFFFFFFFFFFLL);
  result = sub_1B0E46CB8();
  v13 = -1 << *(v11 + 32);
  a4 = result & ~v13;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = a2;
    v15 = ~v13;
    v16 = v8 - a2;
    v33 = (v36 & 0xFFFFFFFFFF0000FFLL | (WORD2(v34) << 8)) + v14;
    LODWORD(a3) = v34;
    while (1)
    {
      v17 = *(v11 + 48) + 24 * a4;
      v19 = *(v17 + 8);
      v18 = *(v17 + 12);
      if (v18 - v19 == v16)
      {
        v12 = *v17;
        v20 = *(v17 + 20);
        v21 = *(v17 + 22);
        v22 = *(v17 + 16) == a3 && v20 == v35;
        v23 = v22 && v21 == v36;
        if (v23 && v12 == v37)
        {
          break;
        }

        swift_beginAccess();
        v12 = *(v12 + 24) + (v21 | (v20 << 8));
        swift_beginAccess();
        result = memcmp((v12 + v19), (*(v37 + 24) + v33), v18 - v19);
        LODWORD(a3) = v34;
        if (!result)
        {
          break;
        }
      }

      a4 = (a4 + 1) & v15;
      if (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    result = sub_1B0E46B98();
    __break(1u);
  }

  LODWORD(a3) = v12;
LABEL_25:
  v25 = *v30;
  *(*v30 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v26 = *(v25 + 48) + 24 * a4;
  *v26 = v37;
  *(v26 + 8) = v32;
  *(v26 + 12) = v31;
  *(v26 + 16) = a3;
  *(v26 + 20) = v35;
  *(v26 + 22) = v36;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

void *sub_1B0D0C1FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65C0, &unk_1B0EE81B0);
  v2 = *v0;
  v3 = sub_1B0E461F8();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 20);
        v21 = *(v18 + 22);
        v22 = *(v4 + 48) + v17;
        v23 = *(v18 + 8);
        *v22 = *v18;
        *(v22 + 8) = v23;
        *(v22 + 16) = v19;
        *(v22 + 20) = v20;
        *(v22 + 22) = v21;
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

uint64_t sub_1B0D0C37C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65C0, &unk_1B0EE81B0);
  result = sub_1B0E46208();
  v5 = result;
  if (*(v3 + 16))
  {
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
    v31 = v1;
    v32 = (v8 + 63) >> 6;
    v11 = result + 56;
    v33 = v3;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(v3 + 48) + 24 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 12);
      v21 = *(v17 + 16);
      v22 = *(v17 + 20);
      v23 = *(v17 + 22);
      sub_1B0E46C28();
      v35 = v35 & 0xFF00000000000000 | v21 | (v22 << 32) | (v23 << 48);
      GmailLabel.hash(into:)(v36, v18, v19 | (v20 << 32), v35);
      result = sub_1B0E46CB8();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v11 + 8 * v26);
          if (v30 != -1)
          {
            v12 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 12) = v20;
      *(v13 + 16) = v21;
      *(v13 + 20) = v22;
      *(v13 + 22) = v23;
      ++*(v5 + 16);

      v3 = v33;
      v10 = v34;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v32)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
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

uint64_t sub_1B0D0C618(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B041C194();
  result = MEMORY[0x1B2727570](v2, &type metadata for Flag, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B01BA4(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1B0D0C6B0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_1B0D0CCF4();
  result = MEMORY[0x1B2727570](v3, &type metadata for GmailLabel, v4);
  v10 = result;
  if (v3)
  {
    v6 = (a1 + 54);
    do
    {
      v7 = *(v6 - 14);
      v8 = *(v6 - 22);
      v1 = v1 & 0xFF00000000000000 | *(v6 - 6) | (*(v6 - 1) << 32) | (*v6 << 48);

      sub_1B0D0BA58(v9, v8, v7, v1);

      v6 += 24;
      --v3;
    }

    while (v3);
    return v10;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213FramingParserV18LiteralHeaderStateO(uint64_t a1)
{
  if ((*(a1 + 23) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 23) & 7;
  }
}

unint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213FramingParserV5StateO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1B0D0C7BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0D0C804(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B0D0C884(uint64_t a1)
{
  type metadata accessor for ResponseOrContinuationRequest(319);
  if (v1 <= 0x3F)
  {
    sub_1B0D0C90C(319);
    if (v2 <= 0x3F)
    {
      sub_1B0D0C994(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1B0D0C90C(uint64_t a1)
{
  if (!qword_1EB6DA390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1748, &qword_1B0E99930);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6588, &qword_1B0EE80E8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DA390);
    }
  }
}

void sub_1B0D0C994(uint64_t a1)
{
  if (!qword_1EB6DA388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1748, &qword_1B0E99930);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DA388);
    }
  }
}

__n128 __swift_memcpy103_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B0D0CA34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 103))
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

uint64_t sub_1B0D0CA7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 102) = 0;
    *(result + 100) = 0;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 103) = 1;
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

    *(result + 103) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0D0CB00()
{
  result = qword_1EB6E6590;
  if (!qword_1EB6E6590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6590);
  }

  return result;
}

unint64_t sub_1B0D0CB74()
{
  result = qword_1EB6DD0F8;
  if (!qword_1EB6DD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD0F8);
  }

  return result;
}

uint64_t sub_1B0D0CBC8(uint64_t a1)
{
  v1 = (*(a1 + 176) >> 9) & 7;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

unint64_t sub_1B0D0CCA0()
{
  result = qword_1EB6E65B0;
  if (!qword_1EB6E65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E65B0);
  }

  return result;
}

unint64_t sub_1B0D0CCF4()
{
  result = qword_1EB6E65B8;
  if (!qword_1EB6E65B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E65B8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore216SectionSpecifierV4KindO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213StreamingKindO(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213FetchResponseO(uint64_t a1)
{
  v1 = (*(a1 + 176) >> 9) & 7;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy178_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1B0D0CEF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 178))
  {
    return (*a1 + 3);
  }

  v3 = *(a1 + 176);
  if ((~(v3 >> 9) & 6) != 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = ~(v3 >> 9) & 7;
  }

  return (v4 + 1);
}

uint64_t sub_1B0D0CF48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 178) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 178) = 0;
    }

    if (a2)
    {
      *(result + 144) = 0u;
      *(result + 160) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 176) = (-512 * a2) & 0xE00;
    }
  }

  return result;
}

void sub_1B0D0D014(uint64_t a1)
{
  sub_1B0CF82BC();
  if (v1 <= 0x3F)
  {
    sub_1B07B1348(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13IMAP2Protocol10ParseErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1B0D0D0C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0D0D10C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0D0D150(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t Tag.debugDescription.getter(uint64_t a1)
{
  v2 = sub_1B0E44B68();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B0D0D4B0(a1 & 0xFFFFFFFF000000FFLL);
  sub_1B0E44B48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B07B517C();
  v3 = sub_1B0E44B08();
  v5 = v4;

  if (v5)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t Tag.hashValue.getter(unint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D0D388()
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D0D428(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

char *sub_1B0D0D4B0(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  v3 = sub_1B0C0C114(0, 10, 0, MEMORY[0x1E69E7CC0]);
  v4 = v1 + 1;
  v5 = *(v3 + 2);
  do
  {
    if (v5 >= *(v3 + 3) >> 1)
    {
      v3 = sub_1B0C0C114(1, v5 + 1, 1, v3);
      v6 = *(v3 + 2);
    }

    else
    {
      v6 = v5;
    }

    v7 = v4 - 1;
    v8 = (v4 - 1);
    v4 = (v4 - 1) / 0x1Au;
    v9 = v7 - 26 * v4 + 65;
    result = memmove(v3 + 33, v3 + 32, v6);
    v5 = v6 + 1;
    *(v3 + 2) = v6 + 1;
    v3[32] = v9;
  }

  while (v8 > 0x19);
  while (1)
  {
    v11 = *(v3 + 2);
    if (v11 <= v6)
    {
      break;
    }

    if (v11 >= *(v3 + 3) >> 1)
    {
      v3 = sub_1B0C0C114(1, v11 + 1, 1, v3);
      v11 = *(v3 + 2);
    }

    result = memmove(&v3[v5 + 33], &v3[v5 + 32], v11 - v5);
    ++*(v3 + 2);
    v3[v5 + 32] = (v2 % 0xA) | 0x30;
    v12 = v2 > 9;
    LODWORD(v2) = v2 / 0xA;
    if (!v12)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D0D624()
{
  v1 = sub_1B0E44B68();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1B0D0D4B0(*v0 | (*(v0 + 1) << 32));
  sub_1B0E44B48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B07B517C();
  v2 = sub_1B0E44B08();
  v4 = v3;

  if (v4)
  {
    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0D0D704(unint64_t result, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v3 = result;
      v4 = 0;
      v5 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v6 = *(v3 + v4);
        if ((v6 - 91) < 0xE6u)
        {
          break;
        }

        if (v4 >= a2)
        {
          __break(1u);
          goto LABEL_47;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B0C0C114(0, *(v5 + 16) + 1, 1, v5);
          v5 = result;
        }

        v8 = *(v5 + 16);
        v7 = *(v5 + 24);
        if (v8 >= v7 >> 1)
        {
          result = sub_1B0C0C114((v7 > 1), v8 + 1, 1, v5);
          v5 = result;
        }

        ++v4;
        *(v5 + 16) = v8 + 1;
        *(v5 + v8 + 32) = v6 - 65;
        if (a2 == v4)
        {
          v4 = a2;
          break;
        }
      }

      v9 = (v5 + 16);
      if (!*(v5 + 16))
      {
        goto LABEL_27;
      }

      v11 = a2 - v4;
      if (a2 == v4)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v20 = (v3 + v4);
        v21 = v4 + 1;
        v10 = MEMORY[0x1E69E7CC0];
        do
        {
          v23 = *v20++;
          v22 = v23;
          if ((v23 - 58) < 0xF6u)
          {
            break;
          }

          if (v21 > a2)
          {
            goto LABEL_51;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0C0C114(0, *(v10 + 16) + 1, 1, v10);
            v10 = result;
          }

          v25 = *(v10 + 16);
          v24 = *(v10 + 24);
          if (v25 >= v24 >> 1)
          {
            result = sub_1B0C0C114((v24 > 1), v25 + 1, 1, v10);
            v10 = result;
          }

          *(v10 + 16) = v25 + 1;
          *(v10 + v25 + 32) = v22 - 48;
          ++v21;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
      v9 = (MEMORY[0x1E69E7CC0] + 16);
      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_27;
      }

      v10 = MEMORY[0x1E69E7CC0];
    }

    v12 = *(v10 + 16);
    if (v12)
    {
      v13 = *v9;
      if (*v9)
      {
        v14 = 0;
        v15 = (v5 + 32);
        while (1)
        {
          v16 = 26 * v14;
          if ((v14 * 26) >> 64 != (26 * v14) >> 63)
          {
            break;
          }

          v17 = *v15 + 1;
          v18 = __OFADD__(v16, v17);
          v14 = v16 + v17;
          if (v18)
          {
            goto LABEL_48;
          }

          ++v15;
          if (!--v13)
          {
            v19 = v14 - 1;
            if (!__OFSUB__(v14, 1))
            {
              goto LABEL_24;
            }

            __break(1u);
            goto LABEL_39;
          }
        }

LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v19 = -1;
LABEL_24:
      if ((v19 & 0x8000000000000000) == 0 && v19 <= 0xFF)
      {
LABEL_39:
        v26 = 0;
        for (i = 32; ; ++i)
        {
          v28 = 10 * v26;
          if ((v26 * 10) >> 64 != (10 * v26) >> 63)
          {
            break;
          }

          v29 = *(v10 + i);
          v26 = v28 + v29;
          if (__OFADD__(v28, v29))
          {
            goto LABEL_50;
          }

          if (!--v12)
          {

            if (HIDWORD(v26))
            {
              return 0;
            }

            else
            {
              return v19 | (v26 << 32);
            }
          }
        }

LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_52:
  __break(1u);
  return result;
}

unint64_t sub_1B0D0D9E4(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B0A6C2B0(a1, a2);
    v8 = v7;

    a1 = v6;
    v2 = v8;
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = HIBYTE(v2) & 0xF;
    v11[0] = a1;
    v11[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v11;
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = sub_1B0E46368();
  }

  v5 = v3;
LABEL_8:
  v9 = sub_1B0D0D704(v5, v4);

  return v9;
}

unint64_t sub_1B0D0DA98()
{
  result = qword_1EB6E65C8;
  if (!qword_1EB6E65C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E65C8);
  }

  return result;
}

uint64_t EngineTracingID.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t EngineTracingIDOwner.__allocating_init()()
{
  v0 = swift_allocObject();
  if (qword_1EB6DEA88 != -1)
  {
    swift_once();
  }

  v1 = off_1EB6DEA90;

  os_unfair_lock_lock(v1 + 7);
  sub_1B0D0E0A0(&v1[4], &v4);
  os_unfair_lock_unlock(v1 + 7);
  v2 = v4;

  *(v0 + 16) = v2;
  return v0;
}

uint64_t EngineTracingIDOwner.init()()
{
  if (qword_1EB6DEA88 != -1)
  {
    swift_once();
  }

  v1 = off_1EB6DEA90;

  os_unfair_lock_lock(v1 + 7);
  sub_1B0D0E0A0(&v1[4], &v4);
  os_unfair_lock_unlock(v1 + 7);
  v2 = v4;

  *(v0 + 16) = v2;
  return v0;
}

uint64_t EngineTracingIDOwner.deinit()
{
  v1 = v0;
  if (qword_1EB6DEA88 != -1)
  {
    goto LABEL_22;
  }

LABEL_2:
  v2 = off_1EB6DEA90;
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v2 + 7);
  v4 = (v2 + 16);
  v5 = *(v2 + 2);
  v6 = *(v5 + 2);
  if (!v6)
  {
    goto LABEL_6;
  }

  for (i = 0; i != v6; ++i)
  {
    if (i[v5 + 32] == v3)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_24;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v11 = *(v5 + 2);
        if (v9 != v11)
        {
          v13 = v5 + 32;
          v14 = &i[v5 + 33];
          while (v9 < v11)
          {
            v16 = *v14;
            if (v16 != v3)
            {
              if (v9 != i)
              {
                if (i >= v11)
                {
                  __break(1u);
                  break;
                }

                v15 = i[v13];
                i[v13] = v16;
                *v14 = v15;
                v11 = *(v5 + 2);
              }

              ++i;
            }

            ++v9;
            ++v14;
            if (v9 == v11)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_22:
          swift_once();
          goto LABEL_2;
        }

LABEL_10:
        *v4 = v5;
        v8 = *(v5 + 2);
        v6 = i;
        if (v8 >= i)
        {
          goto LABEL_11;
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v17 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        *v4 = sub_1B0D0E298(v17);

        v5 = *v4;
      }
    }
  }

LABEL_6:
  v8 = *(v5 + 2);
LABEL_11:
  sub_1B0D0E350(v6, v8);
  os_unfair_lock_unlock(v2 + 7);

  return v1;
}

uint64_t EngineTracingIDOwner.__deallocating_deinit()
{
  v1 = v0;
  if (qword_1EB6DEA88 != -1)
  {
    goto LABEL_24;
  }

LABEL_2:
  v2 = off_1EB6DEA90;
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v2 + 7);
  v4 = (v2 + 16);
  v5 = *(v2 + 2);
  v6 = *(v5 + 2);
  if (!v6)
  {
    goto LABEL_6;
  }

  for (i = 0; i != v6; ++i)
  {
    if (i[v5 + 32] == v3)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_27;
      }

      while (1)
      {
        v11 = *(v5 + 2);
        if (v9 != v11)
        {
          v13 = v5 + 32;
          v14 = &i[v5 + 33];
          while (v9 < v11)
          {
            v16 = *v14;
            if (v16 != v3)
            {
              if (v9 != i)
              {
                if (i >= v11)
                {
                  __break(1u);
                  break;
                }

                v15 = i[v13];
                i[v13] = v16;
                *v14 = v15;
                v11 = *(v5 + 2);
              }

              ++i;
            }

            ++v9;
            ++v14;
            if (v9 == v11)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_24:
          swift_once();
          goto LABEL_2;
        }

LABEL_10:
        *v4 = v5;
        v8 = *(v5 + 2);
        v6 = i;
        if (v8 >= i)
        {
          goto LABEL_11;
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        v17 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        *v4 = sub_1B0D0E298(v17);

        v5 = *v4;
      }
    }
  }

LABEL_6:
  v8 = *(v5 + 2);
LABEL_11:
  sub_1B0D0E350(v6, v8);
  os_unfair_lock_unlock(v2 + 7);

  return swift_deallocClassInstance();
}

uint64_t sub_1B0D0E04C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65E0, &qword_1B0EE8B10);
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 28) = 0;
  *(result + 16) = v1;
  *(result + 24) = 1;
  off_1EB6DEA90 = result;
  return result;
}

uint64_t sub_1B0D0E0A0@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  v4 = *result;
  v5 = *(*result + 16);
  v6 = *(result + 8);
  while (2)
  {
    if (v6 < 0x1E)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(*result + 16);
    v9 = (*result + 32);
    do
    {
      if (!v8)
      {
        *(result + 8) = v7;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B0D0E1A4(0, v5 + 1, 1, v4);
          v4 = result;
        }

        v12 = *(v4 + 16);
        v11 = *(v4 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_1B0D0E1A4((v11 > 1), v12 + 1, 1, v4);
          v4 = result;
        }

        *(v4 + 16) = v12 + 1;
        *(v4 + v12 + 32) = v6;
        *v2 = v4;
        goto LABEL_15;
      }

      v10 = *v9++;
      --v8;
    }

    while (v10 != v6);
    v6 = v7;
    if (v7 != *(result + 8))
    {
      continue;
    }

    break;
  }

  LOBYTE(v6) = 31;
LABEL_15:
  *a2 = v6;
  return result;
}

char *sub_1B0D0E1A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65D8, &qword_1B0EE8B08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1B0D0E2AC(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_1B0D0E350(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
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

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1B0D0E1A4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1B0D0E2AC(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1B0D0E414()
{
  result = qword_1EB6E65D0;
  if (!qword_1EB6E65D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E65D0);
  }

  return result;
}

uint64_t TaskName.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double sub_1B0D0E54C@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t MailboxTaskLoggerID.name.getter()
{
  v1 = *(v0 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t MailboxTaskLoggerID.init(id:name:counter:mailbox:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_1B0D0E668(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t sub_1B0D0E6B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0D0E71C()
{
  sub_1B0D0E9A4();
  result = sub_1B0E45D48();
  tracingLog = result;
  return result;
}

uint64_t sub_1B0D0E77C()
{
  v0 = sub_1B0E43868();
  __swift_allocate_value_buffer(v0, tracingSignposter);
  __swift_project_value_buffer(v0, tracingSignposter);
  if (qword_1EB6DEA98 != -1)
  {
    swift_once();
  }

  v1 = tracingLog;
  return sub_1B0E43848();
}

uint64_t sub_1B0D0E814()
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D0E88C(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D0E8D0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s2os12OSSignpostIDV12IMAP2TracingE9TraceKindO8rawValueAFSgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t _s2os12OSSignpostIDV12IMAP2TracingE9TraceKindO8rawValueAFSgs5UInt8V_tcfC_0(unsigned __int8 a1)
{
  if (a1 <= 6u)
  {
    return (0x5040302010006uLL >> (8 * a1));
  }

  else
  {
    return 6;
  }
}

unint64_t sub_1B0D0E940()
{
  result = qword_1EB6E65E8;
  if (!qword_1EB6E65E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E65E8);
  }

  return result;
}

unint64_t sub_1B0D0E9A4()
{
  result = qword_1EB6DA588;
  if (!qword_1EB6DA588)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB6DA588);
  }

  return result;
}

IMAPSearchIndexerXPC::AccountID_optional __swiftcall AccountID.init(rawValue:)(Swift::String rawValue)
{
  v1 = HIBYTE(rawValue._object) & 0xF;
  if ((rawValue._object & 0x2000000000000000) == 0)
  {
    v1 = rawValue._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {

    rawValue._countAndFlagsBits = 0;
    rawValue._object = 0;
  }

  result.value.rawValue = rawValue;
  result.is_nil = v2;
  return result;
}

uint64_t sub_1B0D0EA64(uint64_t a1)
{
  sub_1B0D0EC3C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D0EAA0(uint64_t a1)
{
  sub_1B0D0EC3C();

  return sub_1B0E46F38();
}

uint64_t static AccountID.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t AccountID.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E65F8, &qword_1B0EE8D40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D0EC3C();
  sub_1B0E46D48();
  sub_1B0E46928();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B0D0EC3C()
{
  result = qword_1EB6DC370;
  if (!qword_1EB6DC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC370);
  }

  return result;
}

uint64_t AccountID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

void *AccountID.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6608, &qword_1B0EE8D48);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D0EC3C();
  sub_1B0E46D18();
  if (!v1)
  {
    v7 = sub_1B0E46848();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1B0D0EE40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6608, &qword_1B0EE8D48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D0EC3C();
  sub_1B0E46D18();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = sub_1B0E46848();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_1B0D0EFBC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E65F8, &qword_1B0EE8D40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D0EC3C();
  sub_1B0E46D48();
  sub_1B0E46928();
  return (*(v3 + 8))(v5, v2);
}

uint64_t AccountConfiguration.accountID.getter()
{
  v1 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t AccountConfiguration.accountID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AccountConfiguration.endpoint.getter()
{
  v1 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t AccountConfiguration.endpoint.setter(uint64_t a1, uint64_t a2, __int16 a3)
{

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

uint64_t AccountConfiguration.Endpoint.host.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1B0D0F2E4()
{
  if (*v0)
  {
    return 1953656688;
  }

  else
  {
    return 1953722216;
  }
}

uint64_t sub_1B0D0F308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953722216 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953656688 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

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

uint64_t sub_1B0D0F3E4(uint64_t a1)
{
  sub_1B0D0F648();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D0F420(uint64_t a1)
{
  sub_1B0D0F648();

  return sub_1B0E46F38();
}

BOOL static AccountConfiguration.Endpoint.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = sub_1B0E46A78();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t AccountConfiguration.Endpoint.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E6610, &qword_1B0EE8D50);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D0F648();
  sub_1B0E46D48();
  v14 = 0;
  sub_1B0E46928();
  if (!v4)
  {
    v13 = 1;
    sub_1B0E46978();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1B0D0F648()
{
  result = qword_1EB6DC428;
  if (!qword_1EB6DC428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC428);
  }

  return result;
}

uint64_t AccountConfiguration.Endpoint.init(from:)(void *a1)
{
  result = sub_1B0D10980(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1B0D0F6C0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0D10980(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

BOOL sub_1B0D0F710(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1B0E46A78();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1B0D0F7A0()
{
  v1 = 0x534C547472617473;
  if (*v0 != 1)
  {
    v1 = 7564404;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6572756365736E69;
  }
}

uint64_t sub_1B0D0F7F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0D10CFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0D0F81C(uint64_t a1)
{
  sub_1B0D10B58();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D0F858(uint64_t a1)
{
  sub_1B0D10B58();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D0F8A0(uint64_t a1)
{
  sub_1B0D10CA8();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D0F8DC(uint64_t a1)
{
  sub_1B0D10CA8();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D0F918(uint64_t a1)
{
  sub_1B0D10C54();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D0F954(uint64_t a1)
{
  sub_1B0D10C54();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D0F990(uint64_t a1)
{
  sub_1B0D10BAC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D0F9CC(uint64_t a1)
{
  sub_1B0D10BAC();

  return sub_1B0E46F38();
}

BOOL static AccountConfiguration.TransportLayerSecurity.__derived_enum_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        return ((a2 ^ a1) & 0x3F) == 0;
      }
    }

    else if (a2 == 128)
    {
      return 1;
    }
  }

  else if (a2 <= 0x3Fu)
  {
    return a1 == a2;
  }

  return 0;
}

uint64_t AccountConfiguration.TransportLayerSecurity.encode(to:)(void *a1, int a2)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6620, &qword_1B0EE8D58);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v21 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6628, &qword_1B0EE8D60);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6630, &qword_1B0EE8D68);
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E6638, &qword_1B0EE8D70);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D10B58();
  v15 = v27;
  sub_1B0E46D48();
  if (!(v15 >> 6))
  {
    v30 = 1;
    sub_1B0D10C54();
    sub_1B0E468B8();
    v29 = v15;
    sub_1B0D10C00();
    v19 = v23;
    sub_1B0E46958();
    (*(v22 + 8))(v7, v19);
    return (*(v12 + 8))(v14, v11);
  }

  if (v15 >> 6 == 1)
  {
    v16 = v15 & 0x3F;
    v32 = 2;
    sub_1B0D10BAC();
    v17 = v24;
    sub_1B0E468B8();
    v31 = v16;
    sub_1B0D10C00();
    v18 = v26;
    sub_1B0E46958();
    (*(v25 + 8))(v17, v18);
    return (*(v12 + 8))(v14, v11);
  }

  v28 = 0;
  sub_1B0D10CA8();
  sub_1B0E468B8();
  (*(v21 + 8))(v10, v8);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1B0D0FEA0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0D10E14(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B0D0FEE8(uint64_t a1)
{
  sub_1B0D1148C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D0FF24(uint64_t a1)
{
  sub_1B0D1148C();

  return sub_1B0E46F38();
}

unint64_t sub_1B0D0FF60()
{
  v1 = 0xD000000000000011;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1B0D0FFB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0D11670(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0D0FFDC(uint64_t a1)
{
  sub_1B0D11438();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D10018(uint64_t a1)
{
  sub_1B0D11438();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D10054(uint64_t a1)
{
  sub_1B0D11534();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D10090(uint64_t a1)
{
  sub_1B0D11534();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D100CC(uint64_t a1)
{
  sub_1B0D114E0();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D10108(uint64_t a1)
{
  sub_1B0D114E0();

  return sub_1B0E46F38();
}

uint64_t AccountConfiguration.CertificateTrustPolicy.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6658, &qword_1B0EE8D78);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6660, &qword_1B0EE8D80);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6668, &qword_1B0EE8D88);
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E6670, &qword_1B0EE8D90);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D11438();
  sub_1B0E46D48();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1B0D114E0();
      sub_1B0E468B8();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1B0D1148C();
      v16 = v22;
      sub_1B0E468B8();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1B0D11534();
    sub_1B0E468B8();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t AccountConfiguration.CertificateTrustPolicy.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D1054C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0D11798(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t AccountConfiguration.init(accountID:endpoint:transportLayerSecurity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 34) = a6;
  return result;
}

unint64_t sub_1B0D105A8()
{
  v1 = 0x746E696F70646E65;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

uint64_t sub_1B0D1060C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0D11E58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0D10634(uint64_t a1)
{
  sub_1B0D11D08();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D10670(uint64_t a1)
{
  sub_1B0D11D08();

  return sub_1B0E46F38();
}

uint64_t AccountConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6698, &qword_1B0EE8D98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D11D08();
  sub_1B0E46D48();
  v10 = *v3;
  v12 = 0;
  sub_1B0D11D5C();
  sub_1B0E46958();
  if (!v2)
  {
    v10 = v3[1];
    v11 = *(v3 + 16);
    v12 = 1;
    sub_1B0D11DB0();
    sub_1B0E46958();
    LOBYTE(v10) = *(v3 + 34);
    v12 = 2;
    sub_1B0D11E04();
    sub_1B0E46958();
  }

  return (*(v6 + 8))(v8, v5);
}

double AccountConfiguration.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1B0D11F80(a2, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a1 = v6;
    *(a1 + 16) = v5;
    *(a1 + 31) = *&v7[15];
  }

  return result;
}

double sub_1B0D108D4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1B0D11F80(a2, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a1 = v6;
    *(a1 + 16) = v5;
    *(a1 + 31) = *&v7[15];
  }

  return result;
}

BOOL sub_1B0D10934(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return _s20IMAPSearchIndexerXPC20AccountConfigurationV23__derived_struct_equalsySbAC_ACtFZ_0(&v5, &v7);
}

uint64_t sub_1B0D10980(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6758, &unk_1B0EE9C40);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D0F648();
  sub_1B0E46D18();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_1B0E46848();
    v9[14] = 1;
    sub_1B0E46888();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_1B0D10B58()
{
  result = qword_1EB6DC4A0;
  if (!qword_1EB6DC4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4A0);
  }

  return result;
}

unint64_t sub_1B0D10BAC()
{
  result = qword_1EB6DC478;
  if (!qword_1EB6DC478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC478);
  }

  return result;
}

unint64_t sub_1B0D10C00()
{
  result = qword_1EB6DC4B0;
  if (!qword_1EB6DC4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4B0);
  }

  return result;
}

unint64_t sub_1B0D10C54()
{
  result = qword_1EB6E6648;
  if (!qword_1EB6E6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6648);
  }

  return result;
}

unint64_t sub_1B0D10CA8()
{
  result = qword_1EB6E6650;
  if (!qword_1EB6E6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6650);
  }

  return result;
}

uint64_t sub_1B0D10CFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572756365736E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x534C547472617473 && a2 == 0xE800000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7564404 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B0D10E14(void *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6730, &qword_1B0EE9C20);
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v25 - v2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6738, &qword_1B0EE9C28);
  v28 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6740, &qword_1B0EE9C30);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6748, &qword_1B0EE9C38);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = a1[3];
  v32 = a1;
  v13 = __swift_project_boxed_opaque_existential_0(a1, v12);
  sub_1B0D10B58();
  v14 = v31;
  sub_1B0E46D18();
  if (!v14)
  {
    v31 = v5;
    v15 = v30;
    v16 = sub_1B0E468A8();
    v17 = (2 * *(v16 + 16)) | 1;
    v33 = v16;
    v34 = v16 + 32;
    v35 = 0;
    v36 = v17;
    v18 = sub_1B0D26074();
    if (v18 == 3 || v35 != v36 >> 1)
    {
      v20 = sub_1B0E46338();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0);
      *v22 = &type metadata for AccountConfiguration.TransportLayerSecurity;
      v13 = v11;
      sub_1B0E46808();
      sub_1B0E46328();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      if (v18 == 1)
      {
        v37 = 1;
        sub_1B0D10C54();
        sub_1B0E467F8();
        sub_1B0D12FD8();
        v19 = v25;
        sub_1B0E46868();
        (*(v28 + 8))(v4, v19);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v13 = v37;
      }

      else
      {
        v37 = 2;
        sub_1B0D10BAC();
        sub_1B0E467F8();
        sub_1B0D12FD8();
        v24 = v27;
        sub_1B0E46868();
        (*(v29 + 8))(v15, v24);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v13 = v37 | 0x40u;
      }
    }

    else
    {
      v37 = 0;
      sub_1B0D10CA8();
      sub_1B0E467F8();
      (*(v26 + 8))(v7, v31);
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 128;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v32);
  return v13;
}

unint64_t sub_1B0D11438()
{
  result = qword_1EB6DC508;
  if (!qword_1EB6DC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC508);
  }

  return result;
}

unint64_t sub_1B0D1148C()
{
  result = qword_1EB6E6680;
  if (!qword_1EB6E6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6680);
  }

  return result;
}

unint64_t sub_1B0D114E0()
{
  result = qword_1EB6E6688;
  if (!qword_1EB6E6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6688);
  }

  return result;
}

unint64_t sub_1B0D11534()
{
  result = qword_1EB6DC4E0;
  if (!qword_1EB6DC4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4E0);
  }

  return result;
}

BOOL _s20IMAPSearchIndexerXPC20AccountConfigurationV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 32);
  if (a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24))
  {
    if (v5 != v6)
    {
      return 0;
    }

LABEL_14:
    v10 = *(a1 + 34);
    v11 = *(a2 + 34);
    if (v10 >> 6)
    {
      if (v10 >> 6 == 1)
      {
        return (v11 & 0xC0) == 0x40 && ((v11 ^ v10) & 0x3F) == 0;
      }

      if (v11 != 128)
      {
        return 0;
      }
    }

    else if ((v10 & 0x3F) != v11)
    {
      return 0;
    }

    return 1;
  }

  v8 = sub_1B0E46A78();
  result = 0;
  if ((v8 & 1) != 0 && v5 == v6)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1B0D11670(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001B0F2F020 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B0F2F000 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B0F2EFE0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B0E46A78();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B0D11798(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6708, &qword_1B0EE9BF8);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6710, &qword_1B0EE9C00);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6718, &qword_1B0EE9C08);
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6720, &unk_1B0EE9C10);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v12);
  sub_1B0D11438();
  v13 = v34;
  sub_1B0E46D18();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_1B0E468A8();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_1B0D26074();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1B0D114E0();
          sub_1B0E467F8();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v35);
          return v9;
        }

        v40 = 2;
        sub_1B0D1148C();
        v24 = v11;
        sub_1B0E467F8();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1B0D11534();
        v24 = v11;
        sub_1B0E467F8();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_1B0E46338();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0) + 48);
    *v22 = &type metadata for AccountConfiguration.CertificateTrustPolicy;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0(v35);
  return v9;
}

unint64_t sub_1B0D11D08()
{
  result = qword_1EB6DC530;
  if (!qword_1EB6DC530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC530);
  }

  return result;
}

unint64_t sub_1B0D11D5C()
{
  result = qword_1EB6DC348;
  if (!qword_1EB6DC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC348);
  }

  return result;
}

unint64_t sub_1B0D11DB0()
{
  result = qword_1EB6DC410;
  if (!qword_1EB6DC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC410);
  }

  return result;
}

unint64_t sub_1B0D11E04()
{
  result = qword_1EB6DC438;
  if (!qword_1EB6DC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC438);
  }

  return result;
}

uint64_t sub_1B0D11E58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B0F2F740 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B0D11F80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E66E8, &qword_1B0EE9BF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D11D08();
  sub_1B0E46D18();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  sub_1B0D12EDC();
  sub_1B0E46868();
  v9 = v17;
  v16 = v18;
  v21 = 1;
  sub_1B0D12F30();
  sub_1B0E46868();
  v14 = v17;
  v15 = v9;
  v10 = v18;
  v20 = v19;
  v21 = 2;
  sub_1B0D12F84();
  sub_1B0E46868();
  (*(v6 + 8))(v8, v5);
  v11 = v17;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v13 = v16;
  *a2 = v15;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v10;
  *(a2 + 32) = v20;
  *(a2 + 34) = v11;
  return result;
}

unint64_t sub_1B0D1220C()
{
  result = qword_1EB6E66A0;
  if (!qword_1EB6E66A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66A0);
  }

  return result;
}

unint64_t sub_1B0D12264()
{
  result = qword_1EB6E66A8;
  if (!qword_1EB6E66A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66A8);
  }

  return result;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0D122DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_1B0D12324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0D1237C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1B0D123C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0D124E8()
{
  result = qword_1EB6E66B0;
  if (!qword_1EB6E66B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66B0);
  }

  return result;
}

unint64_t sub_1B0D12540()
{
  result = qword_1EB6E66B8;
  if (!qword_1EB6E66B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66B8);
  }

  return result;
}

unint64_t sub_1B0D12598()
{
  result = qword_1EB6E66C0;
  if (!qword_1EB6E66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66C0);
  }

  return result;
}

unint64_t sub_1B0D125F0()
{
  result = qword_1EB6E66C8;
  if (!qword_1EB6E66C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66C8);
  }

  return result;
}

unint64_t sub_1B0D12648()
{
  result = qword_1EB6E66D0;
  if (!qword_1EB6E66D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66D0);
  }

  return result;
}

unint64_t sub_1B0D126A0()
{
  result = qword_1EB6E66D8;
  if (!qword_1EB6E66D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66D8);
  }

  return result;
}

unint64_t sub_1B0D126F8()
{
  result = qword_1EB6E66E0;
  if (!qword_1EB6E66E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66E0);
  }

  return result;
}

unint64_t sub_1B0D12750()
{
  result = qword_1EB6DC518;
  if (!qword_1EB6DC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC518);
  }

  return result;
}

unint64_t sub_1B0D127A8()
{
  result = qword_1EB6DC520;
  if (!qword_1EB6DC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC520);
  }

  return result;
}

unint64_t sub_1B0D12800()
{
  result = qword_1EB6DC4C8;
  if (!qword_1EB6DC4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4C8);
  }

  return result;
}

unint64_t sub_1B0D12858()
{
  result = qword_1EB6DC4D0;
  if (!qword_1EB6DC4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4D0);
  }

  return result;
}

unint64_t sub_1B0D128B0()
{
  result = qword_1EB6DC4B8;
  if (!qword_1EB6DC4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4B8);
  }

  return result;
}

unint64_t sub_1B0D12908()
{
  result = qword_1EB6DC4C0;
  if (!qword_1EB6DC4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4C0);
  }

  return result;
}

unint64_t sub_1B0D12960()
{
  result = qword_1EB6DC4E8;
  if (!qword_1EB6DC4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4E8);
  }

  return result;
}

unint64_t sub_1B0D129B8()
{
  result = qword_1EB6DC4F0;
  if (!qword_1EB6DC4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4F0);
  }

  return result;
}

unint64_t sub_1B0D12A10()
{
  result = qword_1EB6DC4F8;
  if (!qword_1EB6DC4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4F8);
  }

  return result;
}

unint64_t sub_1B0D12A68()
{
  result = qword_1EB6DC500;
  if (!qword_1EB6DC500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC500);
  }

  return result;
}

unint64_t sub_1B0D12AC0()
{
  result = qword_1EB6DC458;
  if (!qword_1EB6DC458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC458);
  }

  return result;
}

unint64_t sub_1B0D12B18()
{
  result = qword_1EB6DC460;
  if (!qword_1EB6DC460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC460);
  }

  return result;
}

unint64_t sub_1B0D12B70()
{
  result = qword_1EB6DC448;
  if (!qword_1EB6DC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC448);
  }

  return result;
}

unint64_t sub_1B0D12BC8()
{
  result = qword_1EB6DC450;
  if (!qword_1EB6DC450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC450);
  }

  return result;
}

unint64_t sub_1B0D12C20()
{
  result = qword_1EB6DC468;
  if (!qword_1EB6DC468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC468);
  }

  return result;
}

unint64_t sub_1B0D12C78()
{
  result = qword_1EB6DC470;
  if (!qword_1EB6DC470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC470);
  }

  return result;
}

unint64_t sub_1B0D12CD0()
{
  result = qword_1EB6DC488;
  if (!qword_1EB6DC488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC488);
  }

  return result;
}

unint64_t sub_1B0D12D28()
{
  result = qword_1EB6DC490;
  if (!qword_1EB6DC490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC490);
  }

  return result;
}

unint64_t sub_1B0D12D80()
{
  result = qword_1EB6DC418;
  if (!qword_1EB6DC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC418);
  }

  return result;
}

unint64_t sub_1B0D12DD8()
{
  result = qword_1EB6DC420;
  if (!qword_1EB6DC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC420);
  }

  return result;
}

unint64_t sub_1B0D12E30()
{
  result = qword_1EB6DC358;
  if (!qword_1EB6DC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC358);
  }

  return result;
}

unint64_t sub_1B0D12E88()
{
  result = qword_1EB6DC360;
  if (!qword_1EB6DC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC360);
  }

  return result;
}

unint64_t sub_1B0D12EDC()
{
  result = qword_1EB6DC340;
  if (!qword_1EB6DC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC340);
  }

  return result;
}

unint64_t sub_1B0D12F30()
{
  result = qword_1EB6E66F8;
  if (!qword_1EB6E66F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66F8);
  }

  return result;
}

unint64_t sub_1B0D12F84()
{
  result = qword_1EB6E6700;
  if (!qword_1EB6E6700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6700);
  }

  return result;
}

unint64_t sub_1B0D12FD8()
{
  result = qword_1EB6E6750;
  if (!qword_1EB6E6750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6750);
  }

  return result;
}

uint64_t sub_1B0D13048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B0E46A78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0D130CC(uint64_t a1)
{
  sub_1B0D143A0();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D13108(uint64_t a1)
{
  sub_1B0D143A0();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D13144()
{
  v1 = *v0;
  v2 = 0x44496E6F73726570;
  v3 = 0x49656E696863616DLL;
  v4 = 0x50656D6954656E6FLL;
  if (v1 != 3)
  {
    v4 = 0x6E49746E65696C63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E656B6F74;
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

uint64_t sub_1B0D131F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0D1449C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0D13218(uint64_t a1)
{
  sub_1B0D143F4();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D13254(uint64_t a1)
{
  sub_1B0D143F4();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D13290()
{
  v1 = *v0;
  v2 = 0x656D616E72657375;
  v3 = 0x6B6F54656C707061;
  v4 = 0x6B6F54687475416FLL;
  if (v1 != 3)
  {
    v4 = 0x68747541657270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6B6F54656C707061;
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

uint64_t sub_1B0D1333C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0D14660(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0D13364(uint64_t a1)
{
  sub_1B0D142A4();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D133A0(uint64_t a1)
{
  sub_1B0D142A4();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D133DC()
{
  if (*v0)
  {
    return 0x6F54737365636361;
  }

  else
  {
    return 0x656D616E72657375;
  }
}

uint64_t sub_1B0D13420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D616E72657375 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F54737365636361 && a2 == 0xEB000000006E656BLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

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

uint64_t sub_1B0D13500(uint64_t a1)
{
  sub_1B0D1434C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1353C(uint64_t a1)
{
  sub_1B0D1434C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D13578(uint64_t a1)
{
  sub_1B0D142F8();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D135B4(uint64_t a1)
{
  sub_1B0D142F8();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D135F0()
{
  if (*v0)
  {
    return 0x64726F7773736170;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B0D13620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

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

uint64_t sub_1B0D136F4(uint64_t a1)
{
  sub_1B0D14448();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D13730(uint64_t a1)
{
  sub_1B0D14448();

  return sub_1B0E46F38();
}

uint64_t Credentials.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6760, &qword_1B0EE9C50);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  *&v52 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6768, &qword_1B0EE9C58);
  *(&v55 + 1) = *(v6 - 8);
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6);
  *&v55 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6770, &qword_1B0EE9C60);
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6778, &qword_1B0EE9C68);
  v57 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6780, &qword_1B0EE9C70);
  v48 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6788, &qword_1B0EE9C78);
  v58 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v17 = &v48 - v16;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D142A4();
  v60 = v17;
  sub_1B0E46D48();
  v19 = *v2;
  v18 = v2[1];
  v20 = v2[2];
  v21 = v2[7];
  v22 = v2[9];
  v23 = (v22 >> 59) & 6 | ((v21 & 0x2000000000000000) != 0);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      LOBYTE(v62) = 2;
      v30 = v18;
      sub_1B0D143A0();
      v31 = v49;
      v33 = v60;
      v32 = v61;
      sub_1B0E468B8();
      *&v62 = v19;
      *(&v62 + 1) = v30;
      sub_1B0BA48CC();
      v34 = v51;
      sub_1B0E46958();
      (*(v50 + 8))(v31, v34);
      return (*(v58 + 8))(v33, v32);
    }

    v25 = v60;
    v24 = v61;
    if (v23 != 3)
    {
      LOBYTE(v62) = 4;
      sub_1B0D142F8();
      v36 = v52;
      sub_1B0E468B8();
      (*(v53 + 8))(v36, v54);
      return (*(v58 + 8))(v25, v24);
    }

    LOBYTE(v62) = 3;
    sub_1B0D1434C();
    v26 = v55;
    sub_1B0E468B8();
    LOBYTE(v62) = 0;
    v27 = v56;
    v28 = v59;
    sub_1B0E46928();
    if (!v28)
    {
      LOBYTE(v62) = 1;
      sub_1B0E46928();
    }

    (*(*(&v55 + 1) + 8))(v26, v27);
    goto LABEL_16;
  }

  *(&v55 + 1) = v2[3];
  v56 = v18;
  *&v55 = v20;
  if (!v23)
  {
    LOBYTE(v62) = 0;
    sub_1B0D14448();
    v25 = v60;
    v24 = v61;
    sub_1B0E468B8();
    *&v62 = v19;
    *(&v62 + 1) = v56;
    v63 = 0;
    sub_1B0BA48CC();
    v29 = v59;
    sub_1B0E46958();
    if (!v29)
    {
      v62 = v55;
      v63 = 1;
      sub_1B0E46958();
    }

    (*(v48 + 8))(v15, v13);
LABEL_16:
    v43 = *(v58 + 8);
    v44 = v25;
    return v43(v44, v24);
  }

  v37 = v10;
  v52 = *(v2 + 2);
  v38 = v2[6];
  v53 = v2[8];
  v54 = v38;
  LOBYTE(v62) = 1;
  sub_1B0D143F4();
  v39 = v12;
  v40 = v60;
  v24 = v61;
  sub_1B0E468B8();
  *&v62 = v19;
  *(&v62 + 1) = v56;
  v63 = 0;
  sub_1B0BA48CC();
  v41 = v37;
  v42 = v59;
  sub_1B0E46958();
  if (v42)
  {
    (*(v57 + 8))(v39, v37);
    v43 = *(v58 + 8);
    v44 = v40;
    return v43(v44, v24);
  }

  v45 = v53;
  v46 = v54;
  v62 = v55;
  v63 = 1;
  sub_1B0E46958();
  v62 = v52;
  v63 = 2;
  sub_1B0E46958();
  v47 = v57;
  *&v62 = v46;
  *(&v62 + 1) = v21 & 0xDFFFFFFFFFFFFFFFLL;
  v63 = 3;
  sub_1B0E46958();
  *&v62 = v45;
  *(&v62 + 1) = v22 & 0xCFFFFFFFFFFFFFFFLL;
  v63 = 4;
  sub_1B0E46958();
  (*(v47 + 8))(v39, v41);
  return (*(v58 + 8))(v60, v61);
}

__n128 Credentials.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1B0D1481C(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

__n128 sub_1B0D1403C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1B0D1481C(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t *Credentials.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  return sub_1B0D140D0(a1, sub_1B070BB30, a2);
}

{
  return sub_1B0D140D0(a1, sub_1B0D1560C, a2);
}

uint64_t *sub_1B0D140D0@<X0>(uint64_t *result@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  v7 = result;
  v9 = *result;
  v10 = result[1];
  v11 = result[2];
  v12 = result[3];
  v13 = result[7];
  v14 = result[9];
  v15 = (v14 >> 59) & 6 | ((v13 & 0x2000000000000000) != 0);
  if (v15 <= 1)
  {
    if (v15)
    {
      v23 = result[5];
      v4 = result[6];
      v19 = v14 & 0xCFFFFFFFFFFFFFFFLL;
      v24 = result[4];
      v25 = v24;
      v26 = result[8];
      v27 = result[1];
      v28 = *result;
      sub_1B03B2000(v9, v10);
      sub_1B03B2000(v11, v12);
      sub_1B03B2000(v24, v23);
      sub_1B03B2000(v4, v13 & 0xDFFFFFFFFFFFFFFFLL);
      v5 = v26;
      sub_1B03B2000(v26, v19);
      result = a2(v7);
      v3 = v25;
      v10 = v27;
      v9 = v28;
      v18 = v23 & 0xCFFFFFFFFFFFFFFFLL;
      v20 = v13 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    }

    else
    {
      v21 = *result;
      v22 = result[1];
      sub_1B03B2000(*result, v10);
      sub_1B03B2000(v11, v12);
      result = a2(v7);
      v10 = v22;
      v9 = v21;
      v18 = 0;
      v20 = 0;
      v19 = 0;
    }
  }

  else if (v15 == 2)
  {
    v18 = 0;
    v20 = 0;
    v19 = 0x1000000000000000;
  }

  else if (v15 == 3)
  {
    v16 = *result;
    v17 = result[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = a2(v7);
    v10 = v17;
    v9 = v16;
    v18 = 0;
    v19 = 0x1000000000000000;
    v20 = 0x2000000000000000;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v3 = 0;
    v18 = 0;
    v4 = 0;
    v20 = 0;
    v5 = 0;
    v19 = 0x2000000000000000;
  }

  *a3 = v9;
  a3[1] = v10;
  a3[2] = v11;
  a3[3] = v12;
  a3[4] = v3;
  a3[5] = v18;
  a3[6] = v4;
  a3[7] = v20;
  a3[8] = v5;
  a3[9] = v19;
  return result;
}

unint64_t sub_1B0D142A4()
{
  result = qword_1EB6DC850;
  if (!qword_1EB6DC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC850);
  }

  return result;
}

unint64_t sub_1B0D142F8()
{
  result = qword_1EB6E6790;
  if (!qword_1EB6E6790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6790);
  }

  return result;
}

unint64_t sub_1B0D1434C()
{
  result = qword_1EB6E6798;
  if (!qword_1EB6E6798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6798);
  }

  return result;
}

unint64_t sub_1B0D143A0()
{
  result = qword_1EB6DC7F0;
  if (!qword_1EB6DC7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7F0);
  }

  return result;
}

unint64_t sub_1B0D143F4()
{
  result = qword_1EB6DC818;
  if (!qword_1EB6DC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC818);
  }

  return result;
}

unint64_t sub_1B0D14448()
{
  result = qword_1EB6E67A0;
  if (!qword_1EB6E67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E67A0);
  }

  return result;
}

uint64_t sub_1B0D1449C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496E6F73726570 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49656E696863616DLL && a2 == 0xE900000000000044 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x50656D6954656E6FLL && a2 == 0xEF64726F77737361 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E49746E65696C63 && a2 == 0xEA00000000006F66)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B0D14660(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E72657375 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6F54656C707061 && a2 == 0xEA00000000006E65 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6F54656C707061 && a2 == 0xEB00000000326E65 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B6F54687475416FLL && a2 == 0xEA00000000006E65 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x68747541657270 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B0D1481C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v77 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E67D0, &qword_1B0EEA790);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v73 = &v63 - v3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E67D8, &qword_1B0EEA798);
  v71 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v76 = &v63 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E67E0, &qword_1B0EEA7A0);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v75 = &v63 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E67E8, &qword_1B0EEA7A8);
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v7 = &v63 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E67F0, &qword_1B0EEA7B0);
  v65 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v63 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E67F8, &qword_1B0EEA7B8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v63 - v13);
  v15 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v15);
  sub_1B0D142A4();
  v16 = v78;
  sub_1B0E46D18();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(v79);
  }

  v64 = v10;
  v17 = v75;
  v63 = v8;
  v18 = v74;
  v78 = v12;
  v20 = v76;
  v19 = v77;
  v21 = sub_1B0E468A8();
  v22 = (2 * *(v21 + 16)) | 1;
  v90 = v21;
  v91 = v21 + 32;
  v92 = 0;
  v93 = v22;
  v23 = sub_1B0D15D38();
  if (v23 == 5 || v92 != v93 >> 1)
  {
    v26 = v14;
    v27 = sub_1B0E46338();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0);
    *v29 = &type metadata for Credentials;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    (*(v78 + 8))(v26, v11);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v79);
  }

  if (v23 <= 1u)
  {
    if (v23)
    {
      LOBYTE(v88) = 1;
      sub_1B0D143F4();
      v35 = v7;
      sub_1B0E467F8();
      v76 = v11;
      LOBYTE(v86) = 0;
      sub_1B0D15CB0();
      v39 = v18;
      v40 = v35;
      sub_1B0E46868();
      v47 = v88;
      v46 = v89;
      LOBYTE(v84) = 1;
      sub_1B0E46868();
      v73 = v47;
      v75 = v46;
      v58 = v86;
      v59 = v87;
      LOBYTE(v82) = 2;
      sub_1B0E46868();
      v68 = v59;
      v69 = v58;
      v70 = v14;
      v60 = v84;
      v61 = v85;
      LOBYTE(v80) = 3;
      sub_1B0E46868();
      v11 = v82;
      v62 = v83;
      v94 = 4;
      sub_1B0E46868();
      v71 = 0;
      (*(v72 + 8))(v40, v39);
      (*(v78 + 8))(v70, v76);
      swift_unknownObjectRelease();
      v7 = v60;
      v14 = v80;
      v78 = v61 & 0xCFFFFFFFFFFFFFFFLL;
      v53 = v81 & 0xCFFFFFFFFFFFFFFFLL;
      v54 = v62 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v55 = v73;
      v49 = v69;
      v52 = v68;
    }

    else
    {
      LOBYTE(v88) = 0;
      sub_1B0D14448();
      v7 = v64;
      sub_1B0E467F8();
      v31 = v14;
      LOBYTE(v86) = 0;
      sub_1B0D15CB0();
      v32 = v63;
      sub_1B0E46868();
      v55 = v88;
      v75 = v89;
      LOBYTE(v84) = 1;
      sub_1B0E46868();
      v53 = 0;
      v71 = 0;
      v14 = (v65 + 8);
      (*(v65 + 8))(v7, v32);
      (*(v78 + 8))(v31, v11);
      swift_unknownObjectRelease();
      v78 = 0;
      v54 = 0;
      v49 = v86;
      v52 = v87;
    }
  }

  else if (v23 == 2)
  {
    LOBYTE(v88) = 2;
    sub_1B0D143A0();
    v49 = v17;
    sub_1B0E467F8();
    v33 = v78;
    sub_1B0D15CB0();
    v36 = v67;
    v52 = v49;
    sub_1B0E46868();
    v71 = 0;
    (*(v66 + 8))(v49, v36);
    (*(v33 + 8))(v14, v11);
    swift_unknownObjectRelease();
    v78 = 0;
    v54 = 0;
    v55 = v88;
    v75 = v89;
    v53 = 0x1000000000000000;
  }

  else
  {
    v7 = v14;
    v24 = v78;
    if (v23 == 3)
    {
      LOBYTE(v88) = 3;
      sub_1B0D1434C();
      v25 = v20;
      sub_1B0E467F8();
      LOBYTE(v88) = 0;
      v37 = v70;
      v38 = sub_1B0E46848();
      v42 = v41;
      v43 = v25;
      v73 = v38;
      LOBYTE(v88) = 1;
      v44 = sub_1B0E46848();
      v45 = (v71 + 8);
      v14 = (v24 + 8);
      v71 = 0;
      v48 = *v45;
      v75 = v42;
      v49 = v44;
      v50 = v43;
      v52 = v51;
      v48(v50, v37);
      (*v14)(v7, v11);
      swift_unknownObjectRelease();
      v78 = 0;
      v53 = 0x1000000000000000;
      v54 = 0x2000000000000000;
      v55 = v73;
    }

    else
    {
      LOBYTE(v88) = 4;
      sub_1B0D142F8();
      v34 = v73;
      sub_1B0E467F8();
      v71 = 0;
      (*(v68 + 8))(v34, v69);
      (*(v24 + 8))(v7, v11);
      swift_unknownObjectRelease();
      v55 = 0;
      v75 = 0;
      v49 = 0;
      v52 = 0;
      v7 = 0;
      v78 = 0;
      v11 = 0;
      v54 = 0;
      v14 = 0;
      v53 = 0x2000000000000000;
    }
  }

  result = __swift_destroy_boxed_opaque_existential_0(v79);
  v56 = v75;
  *v19 = v55;
  v19[1] = v56;
  v19[2] = v49;
  v19[3] = v52;
  v57 = v78;
  v19[4] = v7;
  v19[5] = v57;
  v19[6] = v11;
  v19[7] = v54;
  v19[8] = v14;
  v19[9] = v53;
  return result;
}

uint64_t get_enum_tag_for_layout_string_20IMAPSearchIndexerXPC11CredentialsO(uint64_t a1)
{
  if (((*(a1 + 72) >> 59) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 72) >> 59) & 6 | ((*(a1 + 56) & 0x2000000000000000) != 0);
  }
}

unint64_t sub_1B0D156DC()
{
  result = qword_1EB6E67A8;
  if (!qword_1EB6E67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E67A8);
  }

  return result;
}

unint64_t sub_1B0D15734()
{
  result = qword_1EB6E67B0;
  if (!qword_1EB6E67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E67B0);
  }

  return result;
}

unint64_t sub_1B0D1578C()
{
  result = qword_1EB6E67B8;
  if (!qword_1EB6E67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E67B8);
  }

  return result;
}

unint64_t sub_1B0D157E4()
{
  result = qword_1EB6E67C0;
  if (!qword_1EB6E67C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E67C0);
  }

  return result;
}

unint64_t sub_1B0D1583C()
{
  result = qword_1EB6E67C8;
  if (!qword_1EB6E67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E67C8);
  }

  return result;
}

unint64_t sub_1B0D15894()
{
  result = qword_1EB6DC820;
  if (!qword_1EB6DC820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC820);
  }

  return result;
}

unint64_t sub_1B0D158EC()
{
  result = qword_1EB6DC828;
  if (!qword_1EB6DC828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC828);
  }

  return result;
}

unint64_t sub_1B0D15944()
{
  result = qword_1EB6DC808;
  if (!qword_1EB6DC808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC808);
  }

  return result;
}

unint64_t sub_1B0D1599C()
{
  result = qword_1EB6DC810;
  if (!qword_1EB6DC810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC810);
  }

  return result;
}

unint64_t sub_1B0D159F4()
{
  result = qword_1EB6DC7E0;
  if (!qword_1EB6DC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7E0);
  }

  return result;
}

unint64_t sub_1B0D15A4C()
{
  result = qword_1EB6DC7E8;
  if (!qword_1EB6DC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7E8);
  }

  return result;
}

unint64_t sub_1B0D15AA4()
{
  result = qword_1EB6DC7F8;
  if (!qword_1EB6DC7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7F8);
  }

  return result;
}

unint64_t sub_1B0D15AFC()
{
  result = qword_1EB6DC800;
  if (!qword_1EB6DC800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC800);
  }

  return result;
}

unint64_t sub_1B0D15B54()
{
  result = qword_1EB6DC830;
  if (!qword_1EB6DC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC830);
  }

  return result;
}

unint64_t sub_1B0D15BAC()
{
  result = qword_1EB6DC838;
  if (!qword_1EB6DC838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC838);
  }

  return result;
}

unint64_t sub_1B0D15C04()
{
  result = qword_1EB6DC840;
  if (!qword_1EB6DC840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC840);
  }

  return result;
}

unint64_t sub_1B0D15C5C()
{
  result = qword_1EB6DC848;
  if (!qword_1EB6DC848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC848);
  }

  return result;
}

unint64_t sub_1B0D15CB0()
{
  result = qword_1EB6E6800;
  if (!qword_1EB6E6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6800);
  }

  return result;
}

uint64_t sub_1B0D15D04()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D15D38()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D15D6C()
{
  v1 = 0x686372616573;
  if (*v0 != 1)
  {
    v1 = 0x69746E6564657263;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_1B0D15DC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0D1D6D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0D15DF0(uint64_t a1)
{
  sub_1B0D1D15C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D15E2C(uint64_t a1)
{
  sub_1B0D1D15C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D15E68(uint64_t a1)
{
  sub_1B0D1D1C0();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D15EA4(uint64_t a1)
{
  sub_1B0D1D1C0();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D15EE0(uint64_t a1)
{
  sub_1B0D1D310();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D15F1C(uint64_t a1)
{
  sub_1B0D1D310();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D15F58(uint64_t a1)
{
  sub_1B0D1D268();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D15F94(uint64_t a1)
{
  sub_1B0D1D268();

  return sub_1B0E46F38();
}

uint64_t static IndexRequest.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3)
  {
    return a6 & (a1 == a4);
  }

  result = 0;
  if ((a6 & 1) == 0 && a1 == a4)
  {
    return sub_1B0D19D4C(a2, a5);
  }

  return result;
}

uint64_t MessageToSearchIndexer.encode(to:)(void *a1)
{
  v2 = v1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6808, &qword_1B0EEA7D0);
  v23 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v20 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6810, &qword_1B0EEA7D8);
  v21 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6818, &qword_1B0EEA7E0);
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6820, &qword_1B0EEA7E8);
  v25 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v12 = &v20 - v11;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D1D15C();
  sub_1B0E46D48();
  *&v30[9] = *(v2 + 25);
  v13 = v2[1];
  v29 = *v2;
  *v30 = v13;
  v14 = v30[24] >> 6;
  if (v14)
  {
    v30[24] &= 0x3Fu;
    if (v14 == 1)
    {
      v31 = v29;
      v32[0] = *v30;
      *(v32 + 9) = *&v30[9];
      LOBYTE(v27) = 1;
      sub_1B0D1D268();
      v15 = v26;
      sub_1B0E468B8();
      v27 = v31;
      v28[0] = v32[0];
      *(v28 + 9) = *(v32 + 9);
      sub_1B0D1D2BC();
      v16 = v22;
      sub_1B0E46958();
      (*(v21 + 8))(v7, v16);
    }

    else
    {
      sub_1B0D1D1B0(&v29, &v33);
      LOBYTE(v27) = 2;
      sub_1B0D1D1C0();
      v15 = v26;
      sub_1B0E468B8();
      sub_1B0D1D1B0(&v33, &v27);
      sub_1B0D1D214();
      v19 = v24;
      sub_1B0E46958();
      (*(v23 + 8))(v5, v19);
    }

    return (*(v25 + 8))(v12, v15);
  }

  else
  {
    LOBYTE(v27) = 0;
    sub_1B0D1D310();
    v17 = v26;
    sub_1B0E468B8();
    v27 = *v2;
    LOBYTE(v28[0]) = *(v2 + 16);
    sub_1B0D1D364();
    sub_1B0E46958();
    (*(v20 + 8))(v10, v8);
    return (*(v25 + 8))(v12, v17);
  }
}

double MessageToSearchIndexer.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0D1D7E4(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

double sub_1B0D1652C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0D1D7E4(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1B0D16588(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v6 = *a1;
  v7[0] = v2;
  *(v7 + 9) = *(a1 + 25);
  v3 = a2[1];
  v8 = *a2;
  v9[0] = v3;
  *(v9 + 9) = *(a2 + 25);
  _s20IMAPSearchIndexerXPC015MessageToSearchB0O21__derived_enum_equalsySbAC_ACtFZ_0(&v6, &v8);
  return v4 & 1;
}

unint64_t sub_1B0D165D4()
{
  v1 = 0x7865646E69;
  v2 = 0x69746E6564657263;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0x686372616573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B0D16654@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0D1E1C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0D1667C(uint64_t a1)
{
  sub_1B0D1DEBC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D166B8(uint64_t a1)
{
  sub_1B0D1DEBC();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D166F4(uint64_t a1)
{
  sub_1B0D1DFC8();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D16730(uint64_t a1)
{
  sub_1B0D1DFC8();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1676C(uint64_t a1)
{
  sub_1B0D1E118();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D167A8(uint64_t a1)
{
  sub_1B0D1E118();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D167E4(uint64_t a1)
{
  sub_1B0D1DF10();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D16820(uint64_t a1)
{
  sub_1B0D1DF10();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1685C(uint64_t a1)
{
  sub_1B0D1E070();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D16898(uint64_t a1)
{
  sub_1B0D1E070();

  return sub_1B0E46F38();
}

uint64_t static CredentialRequest.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t MessageFromSearchIndexer.encode(to:)(void *a1)
{
  v2 = v1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6828, &qword_1B0EEA7F0);
  v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v31 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6830, &qword_1B0EEA7F8);
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6838, &qword_1B0EEA800);
  v29 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6840, &qword_1B0EEA808);
  v28 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6848, &qword_1B0EEA810);
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D1DEBC();
  sub_1B0E46D48();
  v43 = *(v2 + 32);
  v15 = v43;
  v16 = v2[1];
  v41 = *v2;
  v42 = v16;
  v17 = v43 >> 6;
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v43 &= 0x3Fu;
      sub_1B0D1DFB8(&v41, &v47);
      LOBYTE(v38) = 2;
      sub_1B0D1DFC8();
      v21 = v37;
      sub_1B0E468B8();
      sub_1B0D1DFB8(&v47, &v38);
      sub_1B0D1E01C();
      v22 = v33;
      sub_1B0E46958();
      v23 = *(v32 + 8);
      v24 = v6;
    }

    else
    {
      LOBYTE(v38) = 3;
      sub_1B0D1DF10();
      v26 = v31;
      v21 = v37;
      sub_1B0E468B8();
      v27 = v2[1];
      v38 = *v2;
      v39 = v27;
      sub_1B0D1DF64();
      v22 = v35;
      sub_1B0E46958();
      v23 = *(v34 + 8);
      v24 = v26;
    }

    v23(v24, v22);
  }

  else
  {
    if (!v17)
    {
      v18 = v41;
      LOBYTE(v38) = 0;
      sub_1B0D1E118();
      v19 = v37;
      sub_1B0E468B8();
      LOBYTE(v38) = v18;
      sub_1B0D1E16C();
      sub_1B0E46958();
      (*(v28 + 8))(v11, v9);
      return (*(v36 + 8))(v14, v19);
    }

    v43 &= 0x3Fu;
    v44 = v41;
    v45 = v42;
    v46 = v15 & 0x3F;
    LOBYTE(v38) = 1;
    sub_1B0D1E070();
    v21 = v37;
    sub_1B0E468B8();
    v38 = v44;
    v39 = v45;
    v40 = v46;
    sub_1B0D1E0C4();
    v25 = v30;
    sub_1B0E46958();
    (*(v29 + 8))(v8, v25);
  }

  return (*(v36 + 8))(v14, v21);
}

double MessageFromSearchIndexer.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0D1E328(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

double sub_1B0D16F24@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0D1E328(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1B0D16F84(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6 = a1[2].i8[0];
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return _s20IMAPSearchIndexerXPC017MessageFromSearchB0O21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t XPCSession.sendToSearchIndexer(_:replyHandler:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1B0D1EBCC();
  sub_1B0D1EC20();

  sub_1B0E43A28();
}

uint64_t sub_1B0D17098(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return a2(v4);
}

uint64_t XPCSession.sendToMaild(_:replyHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1B0D1ECB8();
  sub_1B0D1ED0C();

  sub_1B0E43A28();
}

unint64_t sub_1B0D1724C()
{
  v1 = *v0;
  v2 = 0x7265666544646964;
  v3 = 0xD000000000000014;
  v4 = 0x6C706D6F43646964;
  if (v1 != 3)
  {
    v4 = 0x6572756C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F43746F4E646964;
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

uint64_t sub_1B0D17300@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0D1EF58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0D17328(uint64_t a1)
{
  sub_1B0D1ED60();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D17364(uint64_t a1)
{
  sub_1B0D1ED60();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D173A0(uint64_t a1)
{
  sub_1B0D1EE5C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D173DC(uint64_t a1)
{
  sub_1B0D1EE5C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D17418(uint64_t a1)
{
  sub_1B0D1EE08();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D17454(uint64_t a1)
{
  sub_1B0D1EE08();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D17490(uint64_t a1)
{
  sub_1B0D1EF04();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D174CC(uint64_t a1)
{
  sub_1B0D1EF04();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D17508(uint64_t a1)
{
  sub_1B0D1EEB0();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D17544(uint64_t a1)
{
  sub_1B0D1EEB0();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D17580(uint64_t a1)
{
  sub_1B0D1EDB4();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D175BC(uint64_t a1)
{
  sub_1B0D1EDB4();

  return sub_1B0E46F38();
}

uint64_t IndexRequest.Response.encode(to:)(void *a1, int a2)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6880, &qword_1B0EEA818);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6888, &qword_1B0EEA820);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6890, &qword_1B0EEA828);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6898, &qword_1B0EEA830);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68A0, &qword_1B0EEA838);
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68A8, &qword_1B0EEA840);
  v15 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v17 = &v29 - v16;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D1ED60();
  sub_1B0E46D48();
  v18 = (v15 + 8);
  if (v40 <= 1u)
  {
    v24 = v38;
    v23 = v39;
    if (v40)
    {
      v43 = 1;
      sub_1B0D1EEB0();
      v28 = v41;
      sub_1B0E468B8();
      (*(v23 + 8))(v11, v9);
      return (*v18)(v17, v28);
    }

    v42 = 0;
    sub_1B0D1EF04();
    v25 = v41;
    sub_1B0E468B8();
    (*(v24 + 8))(v14, v12);
    return (*v18)(v17, v25);
  }

  if (v40 == 2)
  {
    v44 = 2;
    sub_1B0D1EE5C();
    v26 = v29;
    v25 = v41;
    sub_1B0E468B8();
    (*(v30 + 8))(v26, v31);
    return (*v18)(v17, v25);
  }

  if (v40 == 3)
  {
    v45 = 3;
    sub_1B0D1EE08();
    v19 = v32;
    v20 = v41;
    sub_1B0E468B8();
    v22 = v33;
    v21 = v34;
  }

  else
  {
    v46 = 4;
    sub_1B0D1EDB4();
    v19 = v35;
    v20 = v41;
    sub_1B0E468B8();
    v22 = v36;
    v21 = v37;
  }

  (*(v22 + 8))(v19, v21);
  return (*v18)(v17, v20);
}

uint64_t IndexRequest.Response.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D17BF4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0D1F11C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B0D17C3C()
{
  if (*v0)
  {
    return 1886352499;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1B0D17C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1886352499 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

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

uint64_t sub_1B0D17D44(uint64_t a1)
{
  sub_1B0D1F814();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D17D80(uint64_t a1)
{
  sub_1B0D1F814();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D17DBC(uint64_t a1)
{
  sub_1B0D1F910();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D17DF8(uint64_t a1)
{
  sub_1B0D1F910();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D17E34(uint64_t a1)
{
  sub_1B0D1F868();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D17E70(uint64_t a1)
{
  sub_1B0D1F868();

  return sub_1B0E46F38();
}

void _s20IMAPSearchIndexerXPC18CredentialResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v183 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    for (i = v2 - 1; ; --i)
    {
      v6 = v3[3];
      v177 = v3[2];
      v178 = v6;
      v7 = v3[1];
      v175 = *v3;
      v176 = v7;
      v8 = v4[2];
      v9 = v4[3];
      v10 = *v4;
      *v181 = v4[1];
      *&v181[16] = v8;
      v11 = v4[4];
      *&v181[32] = v9;
      v182 = v11;
      v179 = v3[4];
      v180 = v10;
      v12 = *(&v176 + 1);
      v13 = v176;
      v14 = *(&v178 + 1);
      v15 = (*(&v179 + 1) >> 59) & 6 | ((*(&v178 + 1) & 0x2000000000000000) != 0);
      if (v15 <= 1)
      {
        break;
      }

      if (v15 == 2)
      {
        if (((*(&v182 + 1) >> 59) & 6 | ((*&v181[40] & 0x2000000000000000) != 0)) != 2)
        {
          return;
        }

        v27 = *(&v180 + 1);
        v28 = v180;
        v29 = *(&v175 + 1) >> 62;
        v30 = *(&v180 + 1) >> 62;
        if (*(&v175 + 1) >> 62 == 3)
        {
          v31 = 0;
          if (v175 == __PAIR128__(0xC000000000000000, 0) && *(&v180 + 1) >> 62 == 3)
          {
            v31 = 0;
            if (v180 == __PAIR128__(0xC000000000000000, 0))
            {
              goto LABEL_378;
            }
          }

LABEL_80:
          if (v30 <= 1)
          {
            goto LABEL_81;
          }

LABEL_40:
          if (v30 != 2)
          {
            if (v31)
            {
              return;
            }

            goto LABEL_378;
          }

          v39 = *(v180 + 16);
          v38 = *(v180 + 24);
          v40 = __OFSUB__(v38, v39);
          v41 = v38 - v39;
          if (v40)
          {
            goto LABEL_387;
          }
        }

        else
        {
          if (v29 > 1)
          {
            if (v29 == 2)
            {
              v50 = *(v175 + 16);
              v49 = *(v175 + 24);
              v40 = __OFSUB__(v49, v50);
              v31 = v49 - v50;
              if (v40)
              {
                goto LABEL_401;
              }

              goto LABEL_80;
            }

            v31 = 0;
            if (v30 <= 1)
            {
              goto LABEL_81;
            }

            goto LABEL_40;
          }

          if (v29)
          {
            LODWORD(v31) = DWORD1(v175) - v175;
            if (__OFSUB__(DWORD1(v175), v175))
            {
              goto LABEL_403;
            }

            v31 = v31;
            goto LABEL_80;
          }

          v31 = BYTE14(v175);
          if (v30 > 1)
          {
            goto LABEL_40;
          }

LABEL_81:
          if (v30)
          {
            LODWORD(v41) = DWORD1(v180) - v180;
            if (__OFSUB__(DWORD1(v180), v180))
            {
              goto LABEL_384;
            }

            v41 = v41;
          }

          else
          {
            v41 = BYTE14(v180);
          }
        }

        if (v31 != v41)
        {
          return;
        }

        if (v31 < 1)
        {
          goto LABEL_378;
        }

        if (v29 > 1)
        {
          v172 = i;
          if (v29 == 2)
          {
            v57 = *(v175 + 16);
            v56 = *(v175 + 24);
            sub_1B0D26014(&v180, v174);
            sub_1B0D26014(&v175, v174);
            v58 = sub_1B0E42A98();
            if (v58)
            {
              v59 = sub_1B0E42AC8();
              if (__OFSUB__(v57, v59))
              {
                goto LABEL_426;
              }

              v58 += v57 - v59;
            }

            if (__OFSUB__(v56, v57))
            {
              goto LABEL_419;
            }

            goto LABEL_147;
          }

          memset(v173, 0, 14);
          sub_1B0D26014(&v180, v174);
          sub_1B0D26014(&v175, v174);
          sub_1B0AE2440(v173, v28, v27, v174);
          sub_1B0D1560C(&v180);
          sub_1B0D1560C(&v175);
          v73 = v174[0];
        }

        else
        {
          if (!v29)
          {
            v55 = i;
            LODWORD(v173[0]) = v175;
            WORD2(v173[0]) = WORD2(v175);
            *(v173 + 6) = *(&v175 + 6);
            sub_1B0D26014(&v180, v174);
            sub_1B0D26014(&v175, v174);
            sub_1B0AE2440(v173, v28, v27, v174);
            sub_1B0D1560C(&v180);
            sub_1B0D1560C(&v175);
            i = v55;
            if ((v174[0] & 1) == 0)
            {
              return;
            }

            goto LABEL_378;
          }

          v172 = i;
          v71 = v175;
          if (v175 >> 32 < v175)
          {
            goto LABEL_416;
          }

          sub_1B0D26014(&v180, v174);
          sub_1B0D26014(&v175, v174);
          v58 = sub_1B0E42A98();
          if (v58)
          {
            v72 = sub_1B0E42AC8();
            if (__OFSUB__(v71, v72))
            {
              goto LABEL_431;
            }

            v58 += v71 - v72;
          }

LABEL_147:
          sub_1B0E42AB8();
          sub_1B0AE2440(v58, v28, v27, v174);
          sub_1B0D1560C(&v180);
          sub_1B0D1560C(&v175);
          v73 = v174[0];
        }

        i = v172;
        if ((v73 & 1) == 0)
        {
          return;
        }

        goto LABEL_378;
      }

      if (v15 == 3)
      {
        if (((*(&v182 + 1) >> 59) & 6 | ((*&v181[40] & 0x2000000000000000) != 0)) != 3)
        {
          return;
        }

        v16 = *(&v176 + 1);
        v17 = i;
        v18 = *v181;
        v19 = *&v181[8];
        if (v175 != v180 && (sub_1B0E46A78() & 1) == 0)
        {
          return;
        }

        if (v13 == v18 && v16 == v19)
        {
          i = v17;
        }

        else
        {
          v48 = sub_1B0E46A78();
          i = v17;
          if ((v48 & 1) == 0)
          {
            return;
          }
        }
      }

      else
      {
        if (((*(&v182 + 1) >> 59) & 6 | ((*&v181[40] & 0x2000000000000000) != 0)) != 4)
        {
          return;
        }

        if (*(&v182 + 1) != 0x2000000000000000)
        {
          return;
        }

        v32 = vorrq_s8(*&v181[8], *&v181[24]);
        if (*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | v182 | *v181 | *(&v180 + 1) | v180 | *&v181[40])
        {
          return;
        }
      }

LABEL_378:
      if (!i)
      {
        return;
      }

      v4 += 5;
      v3 += 5;
    }

    v171 = i;
    if (!v15)
    {
      if ((*(&v182 + 1) >> 59) & 6 | ((*&v181[40] & 0x2000000000000000) != 0))
      {
        return;
      }

      v21 = *(&v180 + 1);
      v20 = v180;
      v22 = *v181;
      v23 = *&v181[8];
      v24 = *(&v175 + 1) >> 62;
      v25 = *(&v180 + 1) >> 62;
      if (*(&v175 + 1) >> 62 == 3)
      {
        v26 = 0;
        if (v175 == __PAIR128__(0xC000000000000000, 0) && *(&v180 + 1) >> 62 == 3)
        {
          v26 = 0;
          if (v180 == __PAIR128__(0xC000000000000000, 0))
          {
LABEL_112:
            sub_1B0D26014(&v180, v174);
            sub_1B0D26014(&v175, v174);
            goto LABEL_160;
          }
        }
      }

      else if (v24 > 1)
      {
        if (v24 != 2)
        {
          v26 = 0;
          if (v25 <= 1)
          {
LABEL_103:
            if (v25)
            {
              LODWORD(v44) = DWORD1(v180) - v180;
              if (__OFSUB__(DWORD1(v180), v180))
              {
                __break(1u);
LABEL_384:
                __break(1u);
LABEL_385:
                __break(1u);
LABEL_386:
                __break(1u);
LABEL_387:
                __break(1u);
LABEL_388:
                __break(1u);
LABEL_389:
                __break(1u);
LABEL_390:
                __break(1u);
LABEL_391:
                __break(1u);
LABEL_392:
                __break(1u);
LABEL_393:
                __break(1u);
LABEL_394:
                __break(1u);
LABEL_395:
                __break(1u);
LABEL_396:
                __break(1u);
LABEL_397:
                __break(1u);
LABEL_398:
                __break(1u);
LABEL_399:
                __break(1u);
LABEL_400:
                __break(1u);
LABEL_401:
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
LABEL_431:
                __break(1u);
              }

              v44 = v44;
            }

            else
            {
              v44 = BYTE14(v180);
            }

            goto LABEL_107;
          }

LABEL_47:
          if (v25 != 2)
          {
            if (v26)
            {
              return;
            }

            goto LABEL_112;
          }

          v43 = *(v180 + 16);
          v42 = *(v180 + 24);
          v40 = __OFSUB__(v42, v43);
          v44 = v42 - v43;
          if (v40)
          {
            goto LABEL_388;
          }

LABEL_107:
          if (v26 != v44)
          {
            return;
          }

          if (v26 < 1)
          {
            goto LABEL_112;
          }

          if (v24 > 1)
          {
            if (v24 != 2)
            {
              memset(v173, 0, 14);
              sub_1B0D26014(&v180, v174);
              sub_1B0D26014(&v175, v174);
              sub_1B0AE2440(v173, v20, v21, v174);
              if ((v174[0] & 1) == 0)
              {
                goto LABEL_382;
              }

LABEL_160:
              v77 = v12 >> 62;
              v78 = v23 >> 62;
              if (v12 >> 62 == 3)
              {
                v79 = 0;
                if (!v13 && v12 == 0xC000000000000000 && v23 >> 62 == 3)
                {
                  v79 = 0;
                  if (!v22 && v23 == 0xC000000000000000)
                  {
                    goto LABEL_365;
                  }
                }
              }

              else if (v77 > 1)
              {
                if (v77 != 2)
                {
                  v79 = 0;
                  if (v78 <= 1)
                  {
LABEL_181:
                    if (v78)
                    {
                      LODWORD(v82) = HIDWORD(v22) - v22;
                      if (__OFSUB__(HIDWORD(v22), v22))
                      {
                        goto LABEL_390;
                      }

                      v82 = v82;
                    }

                    else
                    {
                      v82 = BYTE6(v23);
                    }

LABEL_185:
                    if (v79 != v82)
                    {
                      goto LABEL_382;
                    }

                    if (v79 < 1)
                    {
                      goto LABEL_365;
                    }

                    if (v77 > 1)
                    {
                      if (v77 == 2)
                      {
                        v85 = v22;
                        v87 = *(v13 + 16);
                        v88 = *(v13 + 24);
LABEL_242:
                        sub_1B03B2000(v85, v23);
                        sub_1B03B2000(v85, v23);
                        sub_1B03B2000(v85, v23);
                        v105 = sub_1B0AB87A0(v87, v88, v12 & 0x3FFFFFFFFFFFFFFFLL, v85, v23);
                        sub_1B0391D50(v85, v23);
                        sub_1B0D1560C(&v180);
                        sub_1B0D1560C(&v175);
                        sub_1B0391D50(v85, v23);
                        v106 = v85;
                        v107 = v23;
                        goto LABEL_373;
                      }

                      *&v174[6] = 0;
                      *v174 = 0;
                      sub_1B03B2000(v22, v23);
                      sub_1B03B2000(v22, v23);
                      sub_1B0AE2440(v174, v22, v23, v173);
                      sub_1B0D1560C(&v180);
                      sub_1B0D1560C(&v175);
                      sub_1B0391D50(v22, v23);
                      v86 = v22;
                    }

                    else
                    {
                      v85 = v22;
                      if (v77)
                      {
                        v87 = v13;
                        v88 = v13 >> 32;
                        if (v88 < v87)
                        {
                          goto LABEL_422;
                        }

                        goto LABEL_242;
                      }

                      *v174 = v13;
                      *&v174[8] = v12;
                      v174[10] = BYTE2(v12);
                      v174[11] = BYTE3(v12);
                      v174[12] = BYTE4(v12);
                      v174[13] = BYTE5(v12);
                      sub_1B03B2000(v22, v23);
                      sub_1B03B2000(v22, v23);
                      sub_1B0AE2440(v174, v22, v23, v173);
                      sub_1B0D1560C(&v180);
                      sub_1B0D1560C(&v175);
                      sub_1B0391D50(v22, v23);
                      v86 = v22;
                    }

                    v108 = v23;
                    goto LABEL_377;
                  }

LABEL_170:
                  if (v78 != 2)
                  {
                    goto LABEL_347;
                  }

                  v81 = *(v22 + 16);
                  v80 = *(v22 + 24);
                  v40 = __OFSUB__(v80, v81);
                  v82 = v80 - v81;
                  if (v40)
                  {
                    goto LABEL_391;
                  }

                  goto LABEL_185;
                }

                v84 = *(v13 + 16);
                v83 = *(v13 + 24);
                v40 = __OFSUB__(v83, v84);
                v79 = v83 - v84;
                if (v40)
                {
                  goto LABEL_406;
                }
              }

              else
              {
                if (!v77)
                {
                  v79 = BYTE6(v12);
                  if (v78 <= 1)
                  {
                    goto LABEL_181;
                  }

                  goto LABEL_170;
                }

                LODWORD(v79) = HIDWORD(v13) - v13;
                if (__OFSUB__(HIDWORD(v13), v13))
                {
                  goto LABEL_405;
                }

                v79 = v79;
              }

              if (v78 <= 1)
              {
                goto LABEL_181;
              }

              goto LABEL_170;
            }

            v166 = *&v181[8];
            v169 = *v181;
            v61 = *(v175 + 16);
            v164 = *(v175 + 24);
            sub_1B0D26014(&v180, v174);
            sub_1B0D26014(&v175, v174);
            v62 = sub_1B0E42A98();
            if (v62)
            {
              v63 = sub_1B0E42AC8();
              if (__OFSUB__(v61, v63))
              {
                goto LABEL_427;
              }

              v62 += v61 - v63;
            }

            if (__OFSUB__(v164, v61))
            {
              goto LABEL_420;
            }

            sub_1B0E42AB8();
            sub_1B0AE2440(v62, v20, v21, v174);
            v60 = v174[0];
          }

          else
          {
            v169 = *v181;
            if (!v24)
            {
              LODWORD(v173[0]) = v175;
              WORD2(v173[0]) = WORD2(v175);
              *(v173 + 6) = *(&v175 + 6);
              sub_1B0D26014(&v180, v174);
              sub_1B0D26014(&v175, v174);
              sub_1B0AE2440(v173, v20, v21, v174);
              v60 = v174[0];
              goto LABEL_157;
            }

            v166 = *&v181[8];
            v153 = *(&v176 + 1);
            v74 = v175;
            if (v175 >> 32 < v175)
            {
              goto LABEL_417;
            }

            sub_1B0D26014(&v180, v174);
            sub_1B0D26014(&v175, v174);
            v75 = sub_1B0E42A98();
            if (v75)
            {
              v76 = sub_1B0E42AC8();
              if (__OFSUB__(v74, v76))
              {
                goto LABEL_430;
              }

              v75 += v74 - v76;
            }

            v12 = v153;
            sub_1B0E42AB8();
            sub_1B0AE2440(v75, v20, v21, v174);
            v60 = v174[0];
          }

          v23 = v166;
LABEL_157:
          v22 = v169;
          if ((v60 & 1) == 0)
          {
            goto LABEL_382;
          }

          goto LABEL_160;
        }

        v52 = *(v175 + 16);
        v51 = *(v175 + 24);
        v40 = __OFSUB__(v51, v52);
        v26 = v51 - v52;
        if (v40)
        {
          goto LABEL_399;
        }
      }

      else
      {
        if (!v24)
        {
          v26 = BYTE14(v175);
          if (v25 <= 1)
          {
            goto LABEL_103;
          }

          goto LABEL_47;
        }

        LODWORD(v26) = DWORD1(v175) - v175;
        if (__OFSUB__(DWORD1(v175), v175))
        {
          goto LABEL_400;
        }

        v26 = v26;
      }

      if (v25 <= 1)
      {
        goto LABEL_103;
      }

      goto LABEL_47;
    }

    v33 = *&v181[40];
    v157 = *(&v182 + 1);
    if (((*(&v182 + 1) >> 59) & 6 | ((*&v181[40] & 0x2000000000000000) != 0)) != 1)
    {
      return;
    }

    v158 = v178;
    v159 = *(&v179 + 1);
    v34 = *&v181[8];
    v163 = *(&v177 + 1);
    v165 = *v181;
    v161 = v177;
    v162 = *&v181[16];
    v168 = *&v181[24];
    v35 = *(&v175 + 1) >> 62;
    v36 = *(&v180 + 1) >> 62;
    v160 = *&v181[32];
    v155 = v179;
    v156 = v182;
    if (*(&v175 + 1) >> 62 == 3)
    {
      v37 = 0;
      if (v175 == __PAIR128__(0xC000000000000000, 0) && *(&v180 + 1) >> 62 == 3)
      {
        v37 = 0;
        if (v180 == __PAIR128__(0xC000000000000000, 0))
        {
LABEL_131:
          sub_1B0D26014(&v180, v174);
          sub_1B0D26014(&v175, v174);
          v67 = v33;
          goto LABEL_202;
        }
      }
    }

    else if (v35 > 1)
    {
      if (v35 != 2)
      {
        v37 = 0;
        if (v36 <= 1)
        {
LABEL_122:
          if (v36)
          {
            LODWORD(v47) = DWORD1(v180) - v180;
            if (__OFSUB__(DWORD1(v180), v180))
            {
              goto LABEL_386;
            }

            v47 = v47;
          }

          else
          {
            v47 = BYTE14(v180);
          }

          goto LABEL_126;
        }

LABEL_54:
        if (v36 != 2)
        {
          if (v37)
          {
            return;
          }

          goto LABEL_131;
        }

        v46 = *(v180 + 16);
        v45 = *(v180 + 24);
        v40 = __OFSUB__(v45, v46);
        v47 = v45 - v46;
        if (v40)
        {
          goto LABEL_385;
        }

LABEL_126:
        if (v37 != v47)
        {
          return;
        }

        if (v37 < 1)
        {
          goto LABEL_131;
        }

        if (v35 > 1)
        {
          v150 = v180;
          if (v35 != 2)
          {
            memset(v173, 0, 14);
            sub_1B0D26014(&v180, v174);
            sub_1B0D26014(&v175, v174);
            sub_1B0AE2440(v173, v150, *(&v150 + 1), v174);
            v67 = v33;
            if ((v174[0] & 1) == 0)
            {
              goto LABEL_382;
            }

LABEL_202:
            v91 = v12 >> 62;
            v92 = v34 >> 62;
            if (v12 >> 62 == 3)
            {
              v93 = 0;
              v94 = v168;
              if (!v13 && v12 == 0xC000000000000000 && v34 >> 62 == 3)
              {
                v93 = 0;
                if (!v165 && v34 == 0xC000000000000000)
                {
                  goto LABEL_235;
                }
              }
            }

            else
            {
              v94 = v168;
              if (v91 > 1)
              {
                if (v91 != 2)
                {
                  v93 = 0;
                  if (v92 <= 1)
                  {
LABEL_225:
                    if (v92)
                    {
                      LODWORD(v97) = HIDWORD(v165) - v165;
                      if (__OFSUB__(HIDWORD(v165), v165))
                      {
                        goto LABEL_389;
                      }

                      v97 = v97;
                    }

                    else
                    {
                      v97 = BYTE6(v34);
                    }

LABEL_229:
                    if (v93 != v97)
                    {
                      goto LABEL_382;
                    }

                    if (v93 >= 1)
                    {
                      if (v91 > 1)
                      {
                        if (v91 == 2)
                        {
                          v103 = *(v13 + 24);
                          v154 = *(v13 + 16);
                          sub_1B03B2000(v165, v34);
                          sub_1B03B2000(v165, v34);
                          sub_1B03B2000(v165, v34);
                          v104 = sub_1B0AB87A0(v154, v103, v12 & 0x3FFFFFFFFFFFFFFFLL, v165, v34);
                          sub_1B0391D50(v165, v34);
                          sub_1B0391D50(v165, v34);
                          sub_1B0391D50(v165, v34);
                          v100 = v160;
                          v94 = v168;
                          v101 = v163;
                          if ((v104 & 1) == 0)
                          {
                            goto LABEL_382;
                          }
                        }

                        else
                        {
                          *&v174[6] = 0;
                          *v174 = 0;
                          sub_1B03B2000(v165, v34);
                          sub_1B03B2000(v165, v34);
                          sub_1B0AE2440(v174, v165, v34, v173);
                          sub_1B0391D50(v165, v34);
                          sub_1B0391D50(v165, v34);
                          v100 = v160;
                          v101 = v163;
                          if ((v173[0] & 1) == 0)
                          {
                            goto LABEL_382;
                          }
                        }
                      }

                      else
                      {
                        v102 = v34;
                        if (v91)
                        {
                          v109 = v13;
                          v110 = v13 >> 32;
                          if (v13 >> 32 < v13)
                          {
                            goto LABEL_421;
                          }

                          v111 = v102;
                          sub_1B03B2000(v165, v102);
                          sub_1B03B2000(v165, v111);
                          sub_1B03B2000(v165, v111);
                          v112 = sub_1B0AB87A0(v109, v110, v12 & 0x3FFFFFFFFFFFFFFFLL, v165, v111);
                          sub_1B0391D50(v165, v111);
                          sub_1B0391D50(v165, v111);
                          sub_1B0391D50(v165, v111);
                          v100 = v160;
                          v94 = v168;
                          v101 = v163;
                          if ((v112 & 1) == 0)
                          {
                            goto LABEL_382;
                          }
                        }

                        else
                        {
                          *v174 = v13;
                          *&v174[8] = v12;
                          v174[10] = BYTE2(v12);
                          v174[11] = BYTE3(v12);
                          v174[12] = BYTE4(v12);
                          v174[13] = BYTE5(v12);
                          sub_1B03B2000(v165, v34);
                          sub_1B03B2000(v165, v34);
                          sub_1B0AE2440(v174, v165, v34, v173);
                          sub_1B0391D50(v165, v34);
                          sub_1B0391D50(v165, v34);
                          v100 = v160;
                          v101 = v163;
                          if ((v173[0] & 1) == 0)
                          {
                            goto LABEL_382;
                          }
                        }
                      }

LABEL_249:
                      v113 = v101 >> 62;
                      v114 = v94 >> 62;
                      if (v101 >> 62 == 3)
                      {
                        v115 = 0;
                        if (!v161 && v101 == 0xC000000000000000 && v94 >> 62 == 3)
                        {
                          v115 = 0;
                          if (!v162 && v94 == 0xC000000000000000)
                          {
                            goto LABEL_291;
                          }
                        }
                      }

                      else if (v113 > 1)
                      {
                        if (v113 != 2)
                        {
                          v115 = 0;
                          if (v114 <= 1)
                          {
LABEL_272:
                            if (v114)
                            {
                              LODWORD(v118) = HIDWORD(v162) - v162;
                              if (__OFSUB__(HIDWORD(v162), v162))
                              {
                                goto LABEL_393;
                              }

                              v118 = v118;
                            }

                            else
                            {
                              v118 = BYTE6(v94);
                            }

                            goto LABEL_276;
                          }

LABEL_259:
                          if (v114 != 2)
                          {
                            if (v115)
                            {
                              goto LABEL_382;
                            }

                            goto LABEL_291;
                          }

                          v117 = *(v162 + 16);
                          v116 = *(v162 + 24);
                          v40 = __OFSUB__(v116, v117);
                          v118 = v116 - v117;
                          if (v40)
                          {
                            goto LABEL_394;
                          }

LABEL_276:
                          if (v115 != v118)
                          {
                            goto LABEL_382;
                          }

                          if (v115 < 1)
                          {
                            goto LABEL_291;
                          }

                          if (v113 > 1)
                          {
                            if (v113 == 2)
                            {
                              v122 = v101;
                              v167 = *(v161 + 24);
                              v170 = *(v161 + 16);
                              sub_1B03B2000(v162, v94);
                              sub_1B03B2000(v162, v94);
                              sub_1B03B2000(v162, v94);
                              LOBYTE(v122) = sub_1B0AB87A0(v170, v167, v122 & 0x3FFFFFFFFFFFFFFFLL, v162, v94);
                              sub_1B0391D50(v162, v94);
                              sub_1B0391D50(v162, v94);
                              sub_1B0391D50(v162, v94);
                              if ((v122 & 1) == 0)
                              {
                                goto LABEL_382;
                              }

                              goto LABEL_291;
                            }

                            *&v174[6] = 0;
                            *v174 = 0;
                            sub_1B03B2000(v162, v94);
                            sub_1B03B2000(v162, v94);
                            sub_1B0AE2440(v174, v162, v94, v173);
                            sub_1B0391D50(v162, v94);
                            v121 = v162;
                          }

                          else
                          {
                            if (v113)
                            {
                              if (v161 >> 32 < v161)
                              {
                                goto LABEL_423;
                              }

                              sub_1B03B2000(v162, v94);
                              sub_1B03B2000(v162, v94);
                              sub_1B03B2000(v162, v94);
                              v123 = sub_1B0AB87A0(v161, v161 >> 32, v163 & 0x3FFFFFFFFFFFFFFFLL, v162, v94);
                              sub_1B0391D50(v162, v94);
                              sub_1B0391D50(v162, v94);
                              sub_1B0391D50(v162, v94);
                              if ((v123 & 1) == 0)
                              {
LABEL_382:
                                sub_1B0D1560C(&v180);
                                sub_1B0D1560C(&v175);
                                return;
                              }

LABEL_291:
                              v124 = v14 >> 62;
                              v125 = v67 >> 62;
                              if (v14 >> 62 == 3)
                              {
                                v126 = 0;
                                if (!v158 && (v14 & 0xDFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v67 >> 62 == 3)
                                {
                                  v126 = 0;
                                  if (!v100 && (v67 & 0xDFFFFFFFFFFFFFFFLL) == 0xC000000000000000)
                                  {
                                    goto LABEL_324;
                                  }
                                }
                              }

                              else if (v124 > 1)
                              {
                                if (v124 != 2)
                                {
                                  v126 = 0;
                                  if (v125 <= 1)
                                  {
LABEL_314:
                                    if (v125)
                                    {
                                      LODWORD(v129) = HIDWORD(v100) - v100;
                                      if (__OFSUB__(HIDWORD(v100), v100))
                                      {
                                        goto LABEL_395;
                                      }

                                      v129 = v129;
                                    }

                                    else
                                    {
                                      v129 = BYTE6(v67);
                                    }

                                    goto LABEL_318;
                                  }

LABEL_301:
                                  if (v125 != 2)
                                  {
                                    v132 = v155;
                                    v133 = v156;
                                    v134 = v157;
                                    if (v126)
                                    {
                                      goto LABEL_382;
                                    }

                                    goto LABEL_333;
                                  }

                                  v128 = *(v100 + 16);
                                  v127 = *(v100 + 24);
                                  v40 = __OFSUB__(v127, v128);
                                  v129 = v127 - v128;
                                  if (v40)
                                  {
                                    goto LABEL_396;
                                  }

LABEL_318:
                                  if (v126 != v129)
                                  {
                                    goto LABEL_382;
                                  }

                                  if (v126 >= 1)
                                  {
                                    if (v124 > 1)
                                    {
                                      if (v124 != 2)
                                      {
                                        *&v174[6] = 0;
                                        *v174 = 0;
                                        sub_1B03B2000(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B03B2000(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B0AE2440(v174, v100, v67 & 0xDFFFFFFFFFFFFFFFLL, v173);
                                        sub_1B0391D50(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B0391D50(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                        v132 = v155;
                                        v133 = v156;
                                        v134 = v157;
                                        if ((v173[0] & 1) == 0)
                                        {
                                          goto LABEL_382;
                                        }

LABEL_333:
                                        v138 = v134 & 0xCFFFFFFFFFFFFFFFLL;
                                        v139 = v159 >> 62;
                                        v140 = v134 >> 62;
                                        if (v159 >> 62 == 3)
                                        {
                                          v79 = 0;
                                          if (!v132 && (v159 & 0xCFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v134 >> 62 == 3)
                                          {
                                            v79 = 0;
                                            if (!v133 && v138 == 0xC000000000000000)
                                            {
                                              goto LABEL_365;
                                            }
                                          }
                                        }

                                        else if (v139 > 1)
                                        {
                                          if (v139 != 2)
                                          {
                                            v79 = 0;
                                            if (v140 <= 1)
                                            {
LABEL_356:
                                              if (v140)
                                              {
                                                LODWORD(v143) = HIDWORD(v133) - v133;
                                                if (__OFSUB__(HIDWORD(v133), v133))
                                                {
                                                  goto LABEL_397;
                                                }

                                                v143 = v143;
                                              }

                                              else
                                              {
                                                v143 = BYTE6(v134);
                                              }

LABEL_360:
                                              if (v79 != v143)
                                              {
                                                goto LABEL_382;
                                              }

                                              if (v79 < 1)
                                              {
                                                goto LABEL_365;
                                              }

                                              if (v139 > 1)
                                              {
                                                if (v139 == 2)
                                                {
                                                  v146 = *(v132 + 16);
                                                  v147 = *(v132 + 24);
                                                  sub_1B03B2000(v133, v134 & 0xCFFFFFFFFFFFFFFFLL);
                                                  sub_1B03B2000(v133, v138);
                                                  sub_1B03B2000(v133, v138);
                                                  v148 = v159 & 0xFFFFFFFFFFFFFFFLL;
                                                  goto LABEL_372;
                                                }

                                                *&v174[6] = 0;
                                                *v174 = 0;
                                                sub_1B03B2000(v133, v134 & 0xCFFFFFFFFFFFFFFFLL);
                                                sub_1B03B2000(v133, v138);
                                              }

                                              else
                                              {
                                                if (v139)
                                                {
                                                  v146 = v132;
                                                  v147 = v132 >> 32;
                                                  if (v132 >> 32 < v132)
                                                  {
                                                    goto LABEL_425;
                                                  }

                                                  sub_1B03B2000(v133, v134 & 0xCFFFFFFFFFFFFFFFLL);
                                                  sub_1B03B2000(v133, v138);
                                                  sub_1B03B2000(v133, v138);
                                                  v148 = v159 & 0xFFFFFFFFFFFFFFFLL;
LABEL_372:
                                                  v105 = sub_1B0AB87A0(v146, v147, v148, v133, v138);
                                                  sub_1B0391D50(v133, v138);
                                                  sub_1B0D1560C(&v180);
                                                  sub_1B0D1560C(&v175);
                                                  sub_1B0391D50(v133, v138);
                                                  v106 = v133;
                                                  v107 = v138;
LABEL_373:
                                                  sub_1B0391D50(v106, v107);
                                                  i = v171;
                                                  if ((v105 & 1) == 0)
                                                  {
                                                    return;
                                                  }

                                                  goto LABEL_378;
                                                }

                                                *v174 = v132;
                                                *&v174[8] = v159;
                                                *&v174[12] = WORD2(v159);
                                                sub_1B03B2000(v133, v134 & 0xCFFFFFFFFFFFFFFFLL);
                                                sub_1B03B2000(v133, v138);
                                              }

                                              sub_1B0AE2440(v174, v133, v138, v173);
                                              sub_1B0D1560C(&v180);
                                              sub_1B0D1560C(&v175);
                                              sub_1B0391D50(v133, v138);
                                              v86 = v133;
                                              v108 = v138;
LABEL_377:
                                              sub_1B0391D50(v86, v108);
                                              i = v171;
                                              if ((v173[0] & 1) == 0)
                                              {
                                                return;
                                              }

                                              goto LABEL_378;
                                            }

LABEL_343:
                                            if (v140 != 2)
                                            {
LABEL_347:
                                              if (v79)
                                              {
                                                goto LABEL_382;
                                              }

LABEL_365:
                                              sub_1B0D1560C(&v180);
                                              sub_1B0D1560C(&v175);
                                              i = v171;
                                              goto LABEL_378;
                                            }

                                            v142 = *(v133 + 16);
                                            v141 = *(v133 + 24);
                                            v40 = __OFSUB__(v141, v142);
                                            v143 = v141 - v142;
                                            if (v40)
                                            {
                                              goto LABEL_398;
                                            }

                                            goto LABEL_360;
                                          }

                                          v145 = *(v132 + 16);
                                          v144 = *(v132 + 24);
                                          v40 = __OFSUB__(v144, v145);
                                          v79 = v144 - v145;
                                          if (v40)
                                          {
                                            goto LABEL_413;
                                          }
                                        }

                                        else
                                        {
                                          if (!v139)
                                          {
                                            v79 = BYTE6(v159);
                                            if (v140 <= 1)
                                            {
                                              goto LABEL_356;
                                            }

                                            goto LABEL_343;
                                          }

                                          LODWORD(v79) = HIDWORD(v132) - v132;
                                          if (__OFSUB__(HIDWORD(v132), v132))
                                          {
                                            goto LABEL_414;
                                          }

                                          v79 = v79;
                                        }

                                        if (v140 <= 1)
                                        {
                                          goto LABEL_356;
                                        }

                                        goto LABEL_343;
                                      }

                                      v135 = *(v158 + 16);
                                      v136 = *(v158 + 24);
                                    }

                                    else
                                    {
                                      if (!v124)
                                      {
                                        *v174 = v158;
                                        *&v174[8] = v14;
                                        v174[10] = BYTE2(v14);
                                        v174[11] = BYTE3(v14);
                                        v174[12] = BYTE4(v14);
                                        v174[13] = BYTE5(v14);
                                        sub_1B03B2000(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B03B2000(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B0AE2440(v174, v100, v67 & 0xDFFFFFFFFFFFFFFFLL, v173);
                                        sub_1B0391D50(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B0391D50(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                        v132 = v155;
                                        v133 = v156;
                                        v134 = v157;
                                        if ((v173[0] & 1) == 0)
                                        {
                                          goto LABEL_382;
                                        }

                                        goto LABEL_333;
                                      }

                                      v135 = v158;
                                      v136 = v158 >> 32;
                                      if (v158 >> 32 < v158)
                                      {
                                        goto LABEL_424;
                                      }
                                    }

                                    sub_1B03B2000(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B03B2000(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B03B2000(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                    v137 = sub_1B0AB87A0(v135, v136, v14 & 0x1FFFFFFFFFFFFFFFLL, v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B0391D50(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B0391D50(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B0391D50(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                    v132 = v155;
                                    v133 = v156;
                                    v134 = v157;
                                    if ((v137 & 1) == 0)
                                    {
                                      goto LABEL_382;
                                    }

                                    goto LABEL_333;
                                  }

LABEL_324:
                                  v132 = v155;
                                  v133 = v156;
                                  v134 = v157;
                                  goto LABEL_333;
                                }

                                v131 = *(v158 + 16);
                                v130 = *(v158 + 24);
                                v40 = __OFSUB__(v130, v131);
                                v126 = v130 - v131;
                                if (v40)
                                {
                                  goto LABEL_411;
                                }
                              }

                              else
                              {
                                if (!v124)
                                {
                                  v126 = BYTE6(v14);
                                  if (v125 <= 1)
                                  {
                                    goto LABEL_314;
                                  }

                                  goto LABEL_301;
                                }

                                LODWORD(v126) = HIDWORD(v158) - v158;
                                if (__OFSUB__(HIDWORD(v158), v158))
                                {
                                  goto LABEL_412;
                                }

                                v126 = v126;
                              }

                              if (v125 <= 1)
                              {
                                goto LABEL_314;
                              }

                              goto LABEL_301;
                            }

                            *v174 = v161;
                            *&v174[8] = v101;
                            v174[10] = BYTE2(v101);
                            v174[11] = BYTE3(v101);
                            v174[12] = BYTE4(v101);
                            v174[13] = BYTE5(v101);
                            sub_1B03B2000(v162, v94);
                            sub_1B03B2000(v162, v94);
                            sub_1B0AE2440(v174, v162, v94, v173);
                            sub_1B0391D50(v162, v94);
                            v121 = v162;
                          }

                          sub_1B0391D50(v121, v94);
                          if ((v173[0] & 1) == 0)
                          {
                            goto LABEL_382;
                          }

                          goto LABEL_291;
                        }

                        v120 = *(v161 + 16);
                        v119 = *(v161 + 24);
                        v40 = __OFSUB__(v119, v120);
                        v115 = v119 - v120;
                        if (v40)
                        {
                          goto LABEL_410;
                        }
                      }

                      else
                      {
                        if (!v113)
                        {
                          v115 = BYTE6(v101);
                          if (v114 <= 1)
                          {
                            goto LABEL_272;
                          }

                          goto LABEL_259;
                        }

                        LODWORD(v115) = HIDWORD(v161) - v161;
                        if (__OFSUB__(HIDWORD(v161), v161))
                        {
                          goto LABEL_409;
                        }

                        v115 = v115;
                      }

                      if (v114 <= 1)
                      {
                        goto LABEL_272;
                      }

                      goto LABEL_259;
                    }

LABEL_235:
                    v100 = v160;
                    v101 = v163;
                    goto LABEL_249;
                  }

LABEL_212:
                  if (v92 != 2)
                  {
                    v100 = v160;
                    v101 = v163;
                    if (v93)
                    {
                      goto LABEL_382;
                    }

                    goto LABEL_249;
                  }

                  v96 = *(v165 + 16);
                  v95 = *(v165 + 24);
                  v40 = __OFSUB__(v95, v96);
                  v97 = v95 - v96;
                  if (v40)
                  {
                    goto LABEL_392;
                  }

                  goto LABEL_229;
                }

                v99 = *(v13 + 16);
                v98 = *(v13 + 24);
                v40 = __OFSUB__(v98, v99);
                v93 = v98 - v99;
                if (v40)
                {
                  goto LABEL_407;
                }
              }

              else
              {
                if (!v91)
                {
                  v93 = BYTE6(v12);
                  if (v92 <= 1)
                  {
                    goto LABEL_225;
                  }

                  goto LABEL_212;
                }

                LODWORD(v93) = HIDWORD(v13) - v13;
                if (__OFSUB__(HIDWORD(v13), v13))
                {
                  goto LABEL_408;
                }

                v93 = v93;
              }
            }

            if (v92 <= 1)
            {
              goto LABEL_225;
            }

            goto LABEL_212;
          }

          v151 = *&v181[8];
          v152 = *(&v176 + 1);
          v68 = *(v175 + 16);
          v149 = *(v175 + 24);
          sub_1B0D26014(&v180, v174);
          sub_1B0D26014(&v175, v174);
          v69 = sub_1B0E42A98();
          if (v69)
          {
            v70 = sub_1B0E42AC8();
            if (__OFSUB__(v68, v70))
            {
              goto LABEL_428;
            }

            v69 += v68 - v70;
          }

          if (__OFSUB__(v149, v68))
          {
            goto LABEL_418;
          }
        }

        else
        {
          v151 = *&v181[8];
          if (!v35)
          {
            LODWORD(v173[0]) = v175;
            WORD2(v173[0]) = WORD2(v175);
            *(v173 + 6) = *(&v175 + 6);
            v64 = *(&v180 + 1);
            v65 = v180;
            sub_1B0D26014(&v180, v174);
            sub_1B0D26014(&v175, v174);
            sub_1B0AE2440(v173, v65, v64, v174);
            v66 = v174[0];
            goto LABEL_199;
          }

          v150 = v180;
          v152 = *(&v176 + 1);
          v89 = v175;
          if (v175 >> 32 < v175)
          {
            goto LABEL_415;
          }

          sub_1B0D26014(&v180, v174);
          sub_1B0D26014(&v175, v174);
          v69 = sub_1B0E42A98();
          if (v69)
          {
            v90 = sub_1B0E42AC8();
            if (__OFSUB__(v89, v90))
            {
              goto LABEL_429;
            }

            v69 += v89 - v90;
          }
        }

        sub_1B0E42AB8();
        sub_1B0AE2440(v69, v150, *(&v150 + 1), v174);
        v66 = v174[0];
        v12 = v152;
LABEL_199:
        v67 = v33;
        v34 = v151;
        if ((v66 & 1) == 0)
        {
          goto LABEL_382;
        }

        goto LABEL_202;
      }

      v54 = *(v175 + 16);
      v53 = *(v175 + 24);
      v40 = __OFSUB__(v53, v54);
      v37 = v53 - v54;
      if (v40)
      {
        goto LABEL_402;
      }
    }

    else
    {
      if (!v35)
      {
        v37 = BYTE14(v175);
        if (v36 <= 1)
        {
          goto LABEL_122;
        }

        goto LABEL_54;
      }

      LODWORD(v37) = DWORD1(v175) - v175;
      if (__OFSUB__(DWORD1(v175), v175))
      {
        goto LABEL_404;
      }

      v37 = v37;
    }

    if (v36 <= 1)
    {
      goto LABEL_122;
    }

    goto LABEL_54;
  }
}

uint64_t sub_1B0D19BC8(uint64_t result, uint64_t a2)
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

uint64_t sub_1B0D19C24(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 != a2[2])
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 4;
    v4 = a2 + 4;
    v5 = a1[4];
    v6 = a2[4];
    v7 = *(v5 + 16);
    if (v7 == *(v6 + 16))
    {
      v8 = a2 + 6;
      v9 = a2 + 5;
      v10 = a1 + 5;
      v11 = a1 + 6;
      v12 = 1;
      while (!v7 || v5 == v6)
      {
LABEL_11:
        v15 = *v10 == *v9 && *v11 == *v8;
        if (!v15 && (sub_1B0E46A78() & 1) == 0)
        {
          return 0;
        }

        if (v12 == v2)
        {
          return 1;
        }

        result = 0;
        v17 = 3 * v12++;
        v17 *= 8;
        v11 = (v3 + v17 + 16);
        v10 = (v3 + v17 + 8);
        v5 = *(v3 + v17);
        v9 = (v4 + v17 + 8);
        v8 = (v4 + v17 + 16);
        v6 = *(v4 + v17);
        v7 = *(v5 + 16);
        if (v7 != *(v6 + 16))
        {
          return result;
        }
      }

      v13 = (v5 + 32);
      v14 = (v6 + 32);
      while (*v13 == *v14)
      {
        ++v13;
        ++v14;
        if (!--v7)
        {
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B0D19D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 40)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 66);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 66);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1B0E46A78() & 1) == 0)
      {
        break;
      }

      if (v4 == v8 && v5 == v9)
      {
        if (v6 != v10)
        {
          return 0;
        }
      }

      else
      {
        v14 = sub_1B0E46A78();
        result = 0;
        if ((v14 & 1) == 0 || v6 != v10)
        {
          return result;
        }
      }

      if (v7 >> 6)
      {
        if (v7 >> 6 == 1)
        {
          result = 0;
          if ((v11 & 0xC0) != 0x40 || ((v11 ^ v7) & 0x3F) != 0)
          {
            return result;
          }
        }

        else if (v11 != 128)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v11 > 0x3F || v7 != v11)
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t IndexRequest.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v23 = a2;
  v22 = a4;
  v18 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68D0, &qword_1B0EEA848);
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68D8, &qword_1B0EEA850);
  v20 = *(v8 - 8);
  v21 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68E0, &qword_1B0EEA858);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D1F814();
  sub_1B0E46D48();
  if (v22)
  {
    LOBYTE(v26) = 1;
    sub_1B0D1F868();
    sub_1B0E468B8();
    v26 = v23;
    sub_1B0D1F8BC();
    sub_1B0E46958();
    (*(v19 + 8))(v7, v5);
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_1B0D1F910();
    sub_1B0E468B8();
    v26 = v23;
    v25 = 0;
    sub_1B0D1F8BC();
    v15 = v21;
    v16 = v24;
    sub_1B0E46958();
    if (v16)
    {
      (*(v20 + 8))(v10, v15);
      return (*(v12 + 8))(v14, v11);
    }

    v26 = v18;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68E8, &qword_1B0EEA860);
    sub_1B0D1F964();
    sub_1B0E46958();
    (*(v20 + 8))(v10, v15);
  }

  return (*(v12 + 8))(v14, v11);
}

void *IndexRequest.init(from:)(void *a1)
{
  result = sub_1B0D1FA3C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_1B0D1A294@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0D1FA3C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1B0D1A2E8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*a1 == *a2)
    {
      return *(a2 + 16);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v3 = *(a2 + 16);
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }

    else
    {
      return sub_1B0D19D4C(*(a1 + 8), *(a2 + 8));
    }
  }
}

uint64_t IndexRequest.ID.next.getter(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t IndexRequest.ID.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D1A3C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BA0, &qword_1B0EED950);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 1;
  off_1EB6DC768 = result;
  return result;
}

void static IndexRequest.ID.makeNext()()
{
  if (qword_1EB6DC760 != -1)
  {
    swift_once();
  }

  v0 = off_1EB6DC768;

  os_unfair_lock_lock(v0 + 6);
  v1 = *&v0[4]._os_unfair_lock_opaque;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *&v0[4]._os_unfair_lock_opaque = v1 + 1;
    os_unfair_lock_unlock(v0 + 6);
  }
}

uint64_t IndexRequest.ID.init(from:)(void *a1)
{
  sub_1B03D2CA8(a1, v4);
  v2 = sub_1B0E455C8();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t sub_1B0D1A50C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B03D2CA8(a1, v7);
  v5 = sub_1B0E455C8();
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1B0D1A63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64657243656B616DLL && a2 == 0xEF736C6169746E65)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B0E46A78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0D1A6CC(uint64_t a1)
{
  sub_1B0D2000C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1A708(uint64_t a1)
{
  sub_1B0D2000C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1A744(uint64_t a1)
{
  sub_1B0D20060();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1A780(uint64_t a1)
{
  sub_1B0D20060();

  return sub_1B0E46F38();
}

uint64_t CredentialRequest.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68F0, &qword_1B0EEA868);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68F8, &qword_1B0EEA870);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2000C();
  sub_1B0E46D48();
  sub_1B0D20060();
  sub_1B0E468B8();
  v15 = v13;
  v16 = v14;
  sub_1B0D11D5C();
  sub_1B0E46958();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void *sub_1B0D1A9E4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0D200B4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1B0D1AA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B0E46A78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0D1AAD8(uint64_t a1)
{
  sub_1B0D20434();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1AB14(uint64_t a1)
{
  sub_1B0D20434();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1AB50(uint64_t a1)
{
  sub_1B0D20488();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1AB8C(uint64_t a1)
{
  sub_1B0D20488();

  return sub_1B0E46F38();
}

uint64_t CredentialResponse.encode(to:)(void *a1, uint64_t a2)
{
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6900, &qword_1B0EEA878);
  v4 = *(v13[0] - 8);
  MEMORY[0x1EEE9AC00](v13[0]);
  v6 = v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6908, &qword_1B0EEA880);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D20434();
  sub_1B0E46D48();
  sub_1B0D20488();
  sub_1B0E468B8();
  v13[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6910, &qword_1B0EEA888);
  sub_1B0D204DC();
  v11 = v13[0];
  sub_1B0E46958();
  (*(v4 + 8))(v6, v11);
  return (*(v8 + 8))(v10, v7);
}

void *sub_1B0D1AE00@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B0D205B4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B0D1AE54()
{
  v1 = *v0;
  v2 = 0x686372616573;
  v3 = 0xD000000000000015;
  v4 = 0x6C616E41646E6573;
  if (v1 == 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v1 == 1)
  {
    v5 = 0x70756B6F6F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B0D1AF20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0D20D10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0D1AF48(uint64_t a1)
{
  sub_1B0D20944();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1AF84(uint64_t a1)
{
  sub_1B0D20944();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1AFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

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

uint64_t sub_1B0D1B08C(uint64_t a1)
{
  sub_1B0D209EC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1B0C8(uint64_t a1)
{
  sub_1B0D209EC();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1B104()
{
  v1 = 0x65726F666562;
  if (*v0 != 1)
  {
    v1 = 0x74696D696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B0D1B14C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0D20F18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0D1B174(uint64_t a1)
{
  sub_1B0D20BC0();

  return sub_1B0E46F28();
}