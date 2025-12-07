uint64_t TUCall.spamModel(with:spamContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v46 = sub_1D33DDD34();
  v11 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a4 + 8))(v48, a1, a2, ObjectType, a4);
  v44 = v48[1];
  v45 = v48[0];
  v42 = v50;
  v43 = v49;
  v15 = *(a4 + 16);
  v47 = a1;
  v41 = v15(a1, a2, ObjectType, a4);
  v16 = [v5 remoteParticipantHandles];
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v17 = sub_1D33DEA54();

  sub_1D335AEA4(v17);
  v40 = v18;

  v19 = sub_1D335FF3C();
  v39 = v20;
  [v6 callDuration];
  v22 = v21;
  v23 = [objc_opt_self() sharedInstance];
  v24 = [v23 activeConversationForCall_];

  if (!v24 || (v25 = [v24 initiator], v24, !v25))
  {
    v26 = [v6 remoteParticipantHandles];
    v27 = sub_1D33DEA54();

    v25 = sub_1D335DC94(v27, sub_1D33D3784);
  }

  v28 = [v6 callUUID];
  v29 = sub_1D33DE7B4();
  v31 = v30;

  [v6 callDuration];
  sub_1D33DDCC4();
  sub_1D33DDCD4();
  v33 = v32;
  (*(v11 + 8))(v13, v46);
  v34 = v39;
  *a5 = v40;
  *(a5 + 8) = v19;
  *(a5 + 16) = v34;
  *(a5 + 24) = v22;
  *(a5 + 32) = 0;
  *(a5 + 40) = v47;
  *(a5 + 48) = a2;
  *(a5 + 56) = v25;
  *(a5 + 64) = v29;
  *(a5 + 72) = v31;
  *(a5 + 80) = v33;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0xD000000000000010;
  *(a5 + 104) = 0x80000001D33E6240;
  *(a5 + 112) = 0xD000000000000011;
  *(a5 + 120) = 0x80000001D33E6280;
  *(a5 + 128) = 0;
  *(a5 + 136) = 0;
  v35 = v44;
  *(a5 + 144) = v45;
  *(a5 + 160) = v35;
  v36 = v42;
  *(a5 + 176) = v43;
  *(a5 + 184) = v36;
  *(a5 + 192) = v41;
}

unint64_t sub_1D335FF3C()
{
  v1 = [v0 remoteParticipantHandles];
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v2 = sub_1D33DEA54();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D33DEE14();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  v4 = [v0 provider];
  v5 = [v4 isFaceTimeProvider];

  v6 = 0x656D697465636166;
  if (v3 == 1)
  {
    v6 = 0xD000000000000013;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

id TUCall.initiatorHandle.getter()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 activeConversationForCall_];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 initiator];

  return v3;
}

uint64_t sub_1D3360118(uint64_t (*a1)(void), void (*a2)(void))
{
  v3 = a1();
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v6 = *(v3 + 16);
  while (1)
  {
    if (v6 == v4)
    {

      if (v5 >> 62)
      {
        goto LABEL_21;
      }

      v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    v7 = *(v3 + 8 * v4++ + 32);
    if (v7)
    {
      v8 = v7;
      MEMORY[0x1D38B6F20]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      v5 = v15;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v9 = sub_1D33DEE14();
    if (!v9)
    {
      break;
    }

LABEL_10:
    v10 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1D38B75D0](v10, v5);
      }

      else
      {
        if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v11 = *(v5 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      a2();

      ++v10;
      if (v13 == v9)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_22:
}

BOOL sub_1D33602C8(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v5 = *(v2 + 16);
  while (v5 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v6 = *(v2 + 8 * v3++ + 32);
    if (v6)
    {
      v7 = v6;
      MEMORY[0x1D38B6F20]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v1 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      v4 = v15;
    }
  }

  v1 = v4 & 0xFFFFFFFFFFFFFF8;
  if (!(v4 >> 62))
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

LABEL_23:
  v8 = sub_1D33DEE14();
LABEL_10:
  v9 = 0;
  do
  {
    v10 = v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1D38B75D0](v9, v4);
    }

    else
    {
      if (v9 >= *(v1 + 16))
      {
        goto LABEL_22;
      }

      v11 = *(v4 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_21;
    }

    v13 = TUHandle.isBlocked()();

    v9 = v10 + 1;
  }

  while (v13);

  return v8 == v10;
}

Swift::Void __swiftcall TUCall.unblock()()
{
  v1 = [v0 remoteParticipantHandles];
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v2 = sub_1D33DEA54();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D33DEA94();
    v2 = v31[1];
    v3 = v31[2];
    v5 = v31[3];
    v4 = v31[4];
    v6 = v31[5];
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v4 = 0;
  }

  v10 = (v5 + 64) >> 6;
  v28 = v2;
  while (v2 < 0)
  {
    if (!sub_1D33DEE54() || (swift_dynamicCast(), v15 = v31[0], v13 = v4, v14 = v6, !v31[0]))
    {
LABEL_22:
      sub_1D331FEEC(v2);

      return;
    }

LABEL_18:
    v30 = v14;
    if (qword_1EC760968 != -1)
    {
      swift_once();
    }

    v16 = sub_1D33DE464();
    __swift_project_value_buffer(v16, qword_1EC761DC8);
    v17 = v15;
    v18 = sub_1D33DE444();
    v19 = sub_1D33DEAF4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31[0] = v29;
      *v20 = 136315138;
      v21 = v10;
      v22 = v3;
      v23 = [v17 value];
      v24 = sub_1D33DE7B4();
      v26 = v25;

      v3 = v22;
      v10 = v21;
      v27 = sub_1D3328B48(v24, v26, v31);

      *(v20 + 4) = v27;
      v2 = v28;
      _os_log_impl(&dword_1D331A000, v18, v19, "TUCall: unblock handle %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1D38B81C0](v29, -1, -1);
      MEMORY[0x1D38B81C0](v20, -1, -1);
    }

    v6 = v30;
    TUHandle.unblock()();

    v4 = v13;
  }

  v11 = v4;
  v12 = v6;
  v13 = v4;
  if (v6)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
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
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id sub_1D33608E8()
{
  v1 = *v0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 activeConversationForCall_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 initiator];

  return v4;
}

uint64_t RecentsItem.isIncomingCall.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for RecentsItem(0);
  sub_1D3367A94(v0 + *(v4 + 32), v3);
  v5 = type metadata accessor for CallInfo(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_1D3367B04(v3);
    v6 = 0;
  }

  else
  {
    v7 = v3[*(v5 + 36)];
    sub_1D3367D30(v3, type metadata accessor for CallInfo);
    v6 = v7 ^ 1;
  }

  return v6 & 1;
}

uint64_t RecentsItem.isOneToOneUnknownFaceTimeCall.getter()
{
  v0 = sub_1D33C8784();
  if (v0 >> 62)
  {
    v1 = sub_1D33DEE14();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 == 1)
  {
    v2 = RecentsItem.unknownHandles.getter();
    v3 = RecentsItem.initiatorHandle.getter();
    v7 = v3;
    MEMORY[0x1EEE9AC00](v3);
    v6[2] = &v7;
    v4 = sub_1D3358048(sub_1D3367DAC, v6, v2);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t RecentsItem.unknownHandles.getter()
{
  v60 = sub_1D33DDBC4();
  v0 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v69 = v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D33C8784();
  v87 = MEMORY[0x1E69E7CC0];
  v58 = v2;
  if (v2 >> 62)
  {
    goto LABEL_63;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = 0;
    v74 = v58 & 0xC000000000000001;
    v73 = v58 & 0xFFFFFFFFFFFFFF8;
    v71 = v58 + 32;
    v59 = (v0 + 8);
    v72 = xmmword_1D33E1DE0;
    v70 = v3;
LABEL_7:
    if (v74)
    {
      v6 = MEMORY[0x1D38B75D0](v5, v58);
    }

    else
    {
      if (v5 >= *(v73 + 16))
      {
        goto LABEL_62;
      }

      v6 = *(v71 + 8 * v5);
    }

    v0 = v6;
    v7 = __OFADD__(v5, 1);
    v8 = v5 + 1;
    if (v7)
    {
      goto LABEL_61;
    }

    v77 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
    inited = swift_initStackObject();
    *(inited + 16) = v72;
    *(inited + 32) = v0;
    v76 = v0;
    v10 = sub_1D336793C(inited, &unk_1EDEC0120, 0x1E69D8C00, &unk_1EDEC0040, sub_1D3363C74);
    swift_setDeallocating();
    swift_arrayDestroy();
    if (qword_1EDEC0138 != -1)
    {
      swift_once();
    }

    v75 = qword_1EDEC0110;
    v79 = v10;
    if ((v10 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1D33DEDC4();
      sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
      sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
      sub_1D33DEA94();
      v10 = v88;
      v11 = v89;
      v12 = v90;
      v13 = v91;
      v14 = v92;
    }

    else
    {
      v15 = -1 << *(v10 + 32);
      v11 = v10 + 56;
      v12 = ~v15;
      v16 = -v15;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v14 = v17 & *(v10 + 56);

      v13 = 0;
    }

    v78 = v12;
    v18 = (v12 + 64) >> 6;
    v19 = v4;
    while (1)
    {
      v0 = v13;
      if (v10 < 0)
      {
        v23 = sub_1D33DEE54();
        if (!v23 || (v80 = v23, sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00), swift_dynamicCast(), (v22 = v81) == 0))
        {
LABEL_43:
          sub_1D331FEEC(v10);

          v49 = 0;
          v4 = MEMORY[0x1E69E7CC0];
          v81 = MEMORY[0x1E69E7CC0];
          v50 = *(v19 + 2);
          v0 = MEMORY[0x1E69E7CC0];
LABEL_44:
          v51 = 56 * v49 + 32;
          while (v50 != v49)
          {
            if (v49 >= *(v19 + 2))
            {
              __break(1u);
              goto LABEL_60;
            }

            ++v49;
            v52 = *&v19[v51];
            v51 += 56;
            if (v52)
            {
              v53 = v52;
              MEMORY[0x1D38B6F20]();
              if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1D33DE8D4();
              }

              sub_1D33DE8F4();
              v0 = v81;
              goto LABEL_44;
            }
          }

          if (v0 >> 62)
          {
            v54 = sub_1D33DEE14();
          }

          else
          {
            v54 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v5 = v77;

          if (v54)
          {
          }

          else
          {
            sub_1D33DEF84();
            v0 = *(v87 + 16);
            sub_1D33DEFB4();
            sub_1D33DEFC4();
            sub_1D33DEF94();
          }

          if (v5 == v70)
          {
            v4 = v87;
            break;
          }

          goto LABEL_7;
        }
      }

      else
      {
        v20 = v13;
        v21 = v14;
        if (!v14)
        {
          while (1)
          {
            v13 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v13 >= v18)
            {
              goto LABEL_43;
            }

            v21 = *(v11 + 8 * v13);
            ++v20;
            if (v21)
            {
              goto LABEL_25;
            }
          }

LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          v3 = sub_1D33DEE14();
          goto LABEL_3;
        }

LABEL_25:
        v14 = (v21 - 1) & v21;
        v22 = *(*(v10 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v21)))));
        if (!v22)
        {
          goto LABEL_43;
        }
      }

      v24 = [v22 value];
      if (!v24)
      {
        sub_1D33DE7B4();
        v24 = sub_1D33DE784();
      }

      v25 = [v24 destinationIdIsTemporary];

      if (v25)
      {
      }

      else
      {
        sub_1D332786C(v22, 0, 0, &v81);
        v26 = v81;
        v64 = v82;
        v27 = v83;
        v63 = v84;
        v28 = v85;
        v62 = v86;
        v66 = v81;
        v68 = v27;

        v67 = v28;

        v61 = MEMORY[0x1D38B7A70](v29);
        sub_1D33DDBB4();
        v65 = v26;
        if (v26)
        {
          v30 = v66;
          v31 = [v66 givenName];
          sub_1D33DE7B4();
          v57[1] = v32;

          sub_1D33DDB84();
          v33 = [v30 familyName];
          sub_1D33DE7B4();
        }

        else
        {
          sub_1D33DDB84();
        }

        sub_1D33DDB94();
        if (qword_1EDEC0130 != -1)
        {
          swift_once();
        }

        v34 = qword_1EDEC1498;
        v35 = sub_1D33DDBA4();
        v36 = v34;
        v37 = [v34 stringFromPersonNameComponents_];

        v38 = sub_1D33DE7B4();
        v40 = v39;

        (*v59)(v69, v60);
        objc_autoreleasePoolPop(v61);
        v81 = v38;
        v82 = v40;
        sub_1D3328AF4();
        v41 = sub_1D33DED14();
        v43 = v42;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1D3359C88(0, *(v19 + 2) + 1, 1, v19);
        }

        v45 = *(v19 + 2);
        v44 = *(v19 + 3);
        if (v45 >= v44 >> 1)
        {
          v19 = sub_1D3359C88((v44 > 1), v45 + 1, 1, v19);
        }

        *(v19 + 2) = v45 + 1;
        v46 = &v19[56 * v45];
        v47 = v64;
        *(v46 + 4) = v65;
        *(v46 + 5) = v47;
        v48 = v63;
        *(v46 + 6) = v68;
        *(v46 + 7) = v48;
        *(v46 + 8) = v67;
        *(v46 + 9) = v41;
        *(v46 + 10) = v43;
      }
    }
  }

  v55 = sub_1D335F428(v4, &unk_1EDEC0120, 0x1E69D8C00, &qword_1EC7611C8, &qword_1D33E26F8);

  return v55;
}

uint64_t RecentsItem.isGroupFaceTimeWithUnknownInitiator.getter(uint64_t a1)
{
  v1 = sub_1D33C8784();
  if (v1 >> 62)
  {
    v2 = sub_1D33DEE14();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = RecentsItem.unknownHandles.getter();
    v4 = RecentsItem.initiatorHandle.getter();
    v8 = v4;
    MEMORY[0x1EEE9AC00](v4);
    v7[2] = &v8;
    v5 = sub_1D3358048(sub_1D3367DAC, v7, v3);
  }

  return v5 & 1;
}

BOOL RecentsItem.isGroupFaceTimeWithSomeUnknownContacts.getter()
{
  if (!sub_1D3361714())
  {
    return 0;
  }

  v0 = *(RecentsItem.unknownHandles.getter() + 16);

  if (!v0)
  {
    return 0;
  }

  v1 = *(RecentsItem.unknownHandles.getter() + 16);

  v2 = sub_1D33C8784();
  if (v2 >> 62)
  {
    v3 = sub_1D33DEE14();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 < v3;
}

BOOL sub_1D3361714()
{
  v1 = type metadata accessor for RecentsItem(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  if (*(v0 + 32) == 7)
  {
    return 0;
  }

  if (qword_1EC760968 != -1)
  {
    swift_once();
  }

  v7 = sub_1D33DE464();
  __swift_project_value_buffer(v7, qword_1EC761DC8);
  sub_1D332A828(v0, v6);
  sub_1D332A828(v0, v4);
  v8 = sub_1D33DE444();
  v9 = sub_1D33DEAF4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    v11 = sub_1D3361BB4() & 1;
    sub_1D3367D30(v6, type metadata accessor for RecentsItem);
    *(v10 + 4) = v11;
    *(v10 + 8) = 1024;
    v12 = sub_1D3361CA0();
    sub_1D3367D30(v4, type metadata accessor for RecentsItem);
    *(v10 + 10) = v12;
    _os_log_impl(&dword_1D331A000, v8, v9, "[SpamReporting] isTelephony: %{BOOL}d, isOneToOne: %{BOOL}d", v10, 0xEu);
    MEMORY[0x1D38B81C0](v10, -1, -1);
  }

  else
  {
    sub_1D3367D30(v4, type metadata accessor for RecentsItem);
    sub_1D3367D30(v6, type metadata accessor for RecentsItem);
  }

  return (sub_1D3361BB4() & 1) == 0 && !sub_1D3361CA0();
}

uint64_t RecentsItem.isGroupFaceTimeWithAllUnknownContacts.getter(uint64_t a1)
{
  v1 = sub_1D33C8784();
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_19:
    v4 = sub_1D33DEE14();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1D38B75D0](v5, v2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_18;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v10 = _s16CallsAppServices17ReportSpamManagerC10getContact9forHandleSaySo9CNContactCGSgSo8TUHandleC_tFZ_0(v7);

    ++v5;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D3359DB0(0, v6[2] + 1, 1, v6);
      }

      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        v6 = sub_1D3359DB0((v11 > 1), v12 + 1, 1, v6);
      }

      v6[2] = v12 + 1;
      v6[v12 + 4] = v10;
      v5 = v9;
    }
  }

  v13 = v6[2];

  return sub_1D3361714() & (v13 == 0);
}

BOOL RecentsItem.isOneToOneFaceTime.getter(uint64_t a1)
{
  if ((*(v1 + 32) | 2) != 6)
  {
    goto LABEL_12;
  }

  v2 = [*v1 serviceProvider];
  if (!v2)
  {
    sub_1D33DE7B4();
    goto LABEL_11;
  }

  v3 = v2;
  v4 = sub_1D33DE7B4();
  v6 = v5;

  v7 = sub_1D33DE7B4();
  if (!v6)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v4 == v7 && v6 == v8)
  {

    return 0;
  }

  v10 = sub_1D33DF1B4();

  if (v10)
  {
    return 0;
  }

LABEL_12:

  return sub_1D3361CA0();
}

uint64_t sub_1D3361BB4()
{
  if ((*(v0 + 32) | 2) == 6)
  {
    v1 = [*v0 serviceProvider];
    if (v1)
    {
      v2 = v1;
      v3 = sub_1D33DE7B4();
      v5 = v4;

      v6 = sub_1D33DE7B4();
      if (v5)
      {
        if (v3 == v6 && v5 == v7)
        {

          v9 = 1;
        }

        else
        {
          v9 = sub_1D33DF1B4();
        }

        goto LABEL_13;
      }
    }

    else
    {
      sub_1D33DE7B4();
    }

    v9 = 0;
LABEL_13:

    return v9 & 1;
  }

  v9 = 0;
  return v9 & 1;
}

BOOL sub_1D3361CA0()
{
  v1 = v0;
  v2 = type metadata accessor for RecentsItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC760968 != -1)
  {
    swift_once();
  }

  v5 = sub_1D33DE464();
  __swift_project_value_buffer(v5, qword_1EC761DC8);
  sub_1D332A828(v0, v4);
  v6 = sub_1D33DE444();
  v7 = sub_1D33DEAF4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 136315138;
    v10 = *(v4 + 1);
    v11 = *(v4 + 2);
    v12 = *(v4 + 3);
    v13 = v4[32];
    v33[0] = *v4;
    v33[1] = v10;
    v33[2] = v11;
    v33[3] = v12;
    v34 = v13;
    sub_1D332B0D0(v33[0], v10, v11, v12, v13);
    v14 = sub_1D33DE804();
    v16 = v15;
    sub_1D3367D30(v4, type metadata accessor for RecentsItem);
    v17 = sub_1D3328B48(v14, v16, &v35);

    *(v8 + 4) = v17;
    _os_log_impl(&dword_1D331A000, v6, v7, "[SpamReporting] RecentsItem: type: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D38B81C0](v9, -1, -1);
    MEMORY[0x1D38B81C0](v8, -1, -1);
  }

  else
  {

    sub_1D3367D30(v4, type metadata accessor for RecentsItem);
  }

  v18 = *v1;
  v19 = *(v1 + 8);
  v21 = *(v1 + 16);
  v20 = *(v1 + 24);
  v22 = *(v1 + 32);
  if (v22 > 8)
  {
    goto LABEL_14;
  }

  result = 1;
  if (((1 << v22) & 0x4C) != 0)
  {
    return result;
  }

  v24 = 1 << v22;
  if ((v24 & 0x182) != 0)
  {
    return 0;
  }

  if ((v24 & 0x30) != 0)
  {
    v25 = v18;
    v26 = [v25 remoteParticipantHandles];

    if (!v26)
    {
      return 0;
    }

    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v27 = sub_1D33DEA54();

    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = sub_1D33DEE14();
    }

    else
    {
      v28 = *(v27 + 16);
    }

    return v28 == 1;
  }

  else
  {
LABEL_14:
    v29 = [v18 remoteMembers];
    sub_1D331DA18(0, &unk_1EC761E40, 0x1E69D8B80);
    sub_1D33565AC(&unk_1EC7619C0, &unk_1EC761E40, 0x1E69D8B80);
    v30 = sub_1D33DEA54();

    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = sub_1D33DEE14();
      sub_1D332B1DC(v18, v19, v21, v20, 0);
    }

    else
    {
      sub_1D332B1DC(v18, v19, v21, v20, 0);
      v31 = *(v30 + 16);
    }

    return v31 == 1;
  }
}

uint64_t RecentsItem.spamModel(with:spamContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v68 = sub_1D33DDD34();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v65 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v65 - v19;
  if ((*(v5 + 32) | 2) == 6)
  {
    v21 = sub_1D33C8614([*v5 callStatus]);
    v82 = v22;
    v83 = v21;
  }

  else
  {
    v82 = 0;
    v83 = 0;
  }

  ObjectType = swift_getObjectType();
  (*(a4 + 8))(v86, a1, a2, ObjectType, a4);
  v81 = v86[1];
  v78 = v86[0];
  v79 = v88;
  v80 = v87;
  v24 = *(a4 + 16);
  v84 = a1;
  v85 = a2;
  v77 = v24(a1, a2, ObjectType, a4);
  v76 = sub_1D3362664(v77);
  v74 = sub_1D33627EC();
  v75 = v25;
  v26 = *(type metadata accessor for RecentsItem(0) + 32);
  sub_1D3367A94(v5 + v26, v20);
  v27 = type metadata accessor for CallInfo(0);
  v28 = *(*(v27 - 8) + 48);
  v72 = v28(v20, 1, v27);
  if (v72 == 1)
  {
    sub_1D3367B04(v20);
    v73 = 0;
  }

  else
  {
    v73 = *&v20[*(v27 + 40)];
    sub_1D3367D30(v20, type metadata accessor for CallInfo);
  }

  v71 = *(v5 + 32);
  v29 = RecentsItem.initiatorHandle.getter();
  sub_1D3367A94(v5 + v26, v18);
  if (v28(v18, 1, v27) == 1)
  {
    sub_1D3367B04(v18);
    v70 = 0;
    v69 = 0;
  }

  else
  {
    v30 = v18[1];
    v70 = *v18;
    v69 = v30;

    sub_1D3367D30(v18, type metadata accessor for CallInfo);
  }

  sub_1D3367A94(v5 + v26, v15);
  v31 = v28(v15, 1, v27);
  if (v31 == 1)
  {
    sub_1D3367B04(v15);
    v32 = 0;
  }

  else
  {
    v33 = *(v27 + 24);
    v34 = v67;
    v35 = v66;
    v36 = v68;
    (*(v67 + 16))(v66, &v15[v33], v68);
    sub_1D3367D30(v15, type metadata accessor for CallInfo);
    sub_1D33DDCD4();
    v32 = v37;
    (*(v34 + 8))(v35, v36);
  }

  v38 = *(v6 + 8);
  v39 = *(v6 + 32);
  if (v39 == 7)
  {
    v40 = v29;
  }

  else
  {
    if (v39 != 1)
    {
      v44 = 0;
      v46 = 0;
      v47 = v85;
      v49 = v82;
      v48 = v83;
      v51 = v79;
      v50 = v80;
      v52 = v76;
      v53 = v77;
      v54 = v75;
      v55 = v74;
      v56 = v73;
      v57 = v72;
      goto LABEL_22;
    }

    v40 = v29;
    v38 = *(v6 + 16);
  }

  v41 = v38;

  v42 = [v41 linkName];
  if (v42)
  {
    v43 = v42;
    v44 = sub_1D33DE7B4();
    v46 = v45;
  }

  else
  {

    v44 = 0;
    v46 = 0;
  }

  v47 = v85;
  v49 = v82;
  v48 = v83;
  v51 = v79;
  v50 = v80;
  v52 = v76;
  v53 = v77;
  v54 = v75;
  v55 = v74;
  v56 = v73;
  v57 = v72;
  v29 = v40;
LABEL_22:
  v58 = v71;
  v59 = v70;
  v60 = v69;
  *a5 = v52;
  *(a5 + 8) = v55;
  v61 = v58 == 1 || v58 == 7;
  *(a5 + 16) = v54;
  *(a5 + 24) = v56;
  v62 = v61;
  *(a5 + 32) = v57 == 1;
  *(a5 + 33) = v62;
  *(a5 + 40) = v84;
  *(a5 + 48) = v47;
  *(a5 + 56) = v29;
  *(a5 + 64) = v59;
  *(a5 + 72) = v60;
  *(a5 + 80) = v32;
  *(a5 + 88) = v31 == 1;
  *(a5 + 96) = 0xD000000000000010;
  *(a5 + 104) = 0x80000001D33E6240;
  *(a5 + 112) = v48;
  *(a5 + 120) = v49;
  *(a5 + 128) = v44;
  *(a5 + 136) = v46;
  v63 = v81;
  *(a5 + 144) = v78;
  *(a5 + 160) = v63;
  *(a5 + 176) = v50;
  *(a5 + 184) = v51;
  *(a5 + 192) = v53;
}

char *sub_1D3362664(uint64_t a1)
{
  v1 = sub_1D33C8784();
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v4 = sub_1D33DEE14();
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D38B75D0](v7, v2);
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(v2 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = TUCopyIDSFromIDForHandle();
      if (v10)
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    v11 = v10;
    v12 = sub_1D33DE7B4();
    v14 = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D3359DD4(0, *(v6 + 2) + 1, 1, v6);
    }

    v16 = *(v6 + 2);
    v15 = *(v6 + 3);
    if (v16 >= v15 >> 1)
    {
      v6 = sub_1D3359DD4((v15 > 1), v16 + 1, 1, v6);
    }

    *(v6 + 2) = v16 + 1;
    v17 = &v6[16 * v16];
    *(v17 + 4) = v12;
    *(v17 + 5) = v14;
  }

  while (v5 != v4);
LABEL_23:

  return v6;
}

uint64_t sub_1D33627EC()
{
  if (sub_1D3361CA0() && (sub_1D3361BB4() & 1) == 0)
  {
    return 0xD000000000000013;
  }

  v1 = 0x656D697465636166;
  if (!sub_1D3361714())
  {
    v2 = *(v0 + 32);
    if (v2 != 1 && v2 != 7)
    {
      return 0;
    }
  }

  return v1;
}

id RecentsItem.initiatorHandle.getter()
{
  if (*(v0 + 32) - 4 >= 3)
  {
    return 0;
  }

  v1 = *v0;
  v2 = [v1 initiator];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D336A260();

  return v3;
}

uint64_t sub_1D33628F8(void (*a1)(void))
{
  v2 = RecentsItem.unknownHandles.getter();
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
  v5 = *(v2 + 16);
  while (1)
  {
    if (v5 == v3)
    {

      if (v4 >> 62)
      {
        goto LABEL_24;
      }

      v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v6 = *(v2 + 8 * v3++ + 32);
    if (v6)
    {
      v7 = v6;
      MEMORY[0x1D38B6F20]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      v4 = v32;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v8 = sub_1D33DEE14();
    if (!v8)
    {
      break;
    }

LABEL_10:
    v9 = 0;
    v10 = v4 & 0xC000000000000001;
    v11 = v4 & 0xFFFFFFFFFFFFFF8;
    v28 = v8;
    v29 = a1;
    v27 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v10)
      {
        v12 = MEMORY[0x1D38B75D0](v9, v4);
      }

      else
      {
        if (v9 >= *(v11 + 16))
        {
          goto LABEL_23;
        }

        v12 = *(v4 + 8 * v9 + 32);
      }

      v13 = v12;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v31 = v9 + 1;
      if (qword_1EC760968 != -1)
      {
        swift_once();
      }

      v14 = sub_1D33DE464();
      __swift_project_value_buffer(v14, qword_1EC761DC8);
      v15 = v13;
      v16 = sub_1D33DE444();
      v17 = sub_1D33DEAF4();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v32 = v30;
        *v18 = 136315138;
        v19 = v10;
        v20 = v4;
        v21 = [v15 value];
        v22 = sub_1D33DE7B4();
        v24 = v23;

        v4 = v20;
        v10 = v19;
        v25 = sub_1D3328B48(v22, v24, &v32);
        v11 = v27;

        *(v18 + 4) = v25;
        v8 = v28;
        _os_log_impl(&dword_1D331A000, v16, v17, "TUCall: block unknown handle %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        a1 = v29;
        MEMORY[0x1D38B81C0](v30, -1, -1);
        MEMORY[0x1D38B81C0](v18, -1, -1);
      }

      a1();
      ++v9;
      if (v31 == v8)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_25:
}

Swift::Bool __swiftcall RecentsItem.isBlocked()()
{
  v1 = RecentsItem.unknownHandles.getter();
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v4 = *(v1 + 16);
  while (v4 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v5 = *(v1 + 8 * v2++ + 32);
    if (v5)
    {
      v6 = v5;
      MEMORY[0x1D38B6F20]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v0 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      v3 = v14;
    }
  }

  v0 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

LABEL_23:
  v7 = sub_1D33DEE14();
LABEL_10:
  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1D38B75D0](v8, v3);
    }

    else
    {
      if (v8 >= *(v0 + 16))
      {
        goto LABEL_22;
      }

      v10 = *(v3 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_21;
    }

    v12 = TUHandle.isBlocked()();

    v8 = v9 + 1;
  }

  while (v12);

  return v7 == v9;
}

BOOL sub_1D3362E00()
{
  if (!sub_1D3361714())
  {
    return 0;
  }

  v0 = *(RecentsItem.unknownHandles.getter() + 16);

  if (!v0)
  {
    return 0;
  }

  v1 = *(RecentsItem.unknownHandles.getter() + 16);

  v2 = sub_1D33C8784();
  if (v2 >> 62)
  {
    v3 = sub_1D33DEE14();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 < v3;
}

uint64_t sub_1D3362E94(uint64_t a1)
{
  v1 = sub_1D33C8784();
  if (v1 >> 62)
  {
    v2 = sub_1D33DEE14();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = RecentsItem.unknownHandles.getter();
    v4 = RecentsItem.initiatorHandle.getter();
    v8 = v4;
    MEMORY[0x1EEE9AC00](v4);
    v7[2] = &v8;
    v5 = sub_1D3358048(sub_1D3367DAC, v7, v3);
  }

  return v5 & 1;
}

uint64_t sub_1D3362F8C(uint64_t a1)
{
  v1 = sub_1D33C8784();
  if (v1 >> 62)
  {
    v2 = sub_1D33DEE14();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 == 1)
  {
    v3 = RecentsItem.unknownHandles.getter();
    v4 = RecentsItem.initiatorHandle.getter();
    v8 = v4;
    MEMORY[0x1EEE9AC00](v4);
    v7[2] = &v8;
    v5 = sub_1D3358048(sub_1D3367DAC, v7, v3);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1D3363084(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  sub_1D3367A94(v1 + *(a1 + 32), &v10 - v4);
  v6 = type metadata accessor for CallInfo(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_1D3367B04(v5);
    v7 = 0;
  }

  else
  {
    v8 = v5[*(v6 + 36)];
    sub_1D3367D30(v5, type metadata accessor for CallInfo);
    v7 = v8 ^ 1;
  }

  return v7 & 1;
}

void *sub_1D3363238(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1D33632AC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1D33632DC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D33DDDB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D3367CE8(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = sub_1D33DE724();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D3367CE8(&qword_1EDEBFD30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1D33DE774();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D33651D8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D33635BC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D33DE374();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D3367CE8(&qword_1EC7611A8, MEMORY[0x1E696EDC8], MEMORY[0x1E696EDF8]);
  v33 = a2;
  v11 = sub_1D33DE724();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D3367CE8(&qword_1EC7611B0, MEMORY[0x1E696EDC8], MEMORY[0x1E696EE10]);
      v21 = sub_1D33DE774();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D33654A0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D336389C(uint64_t *a1, void *a2)
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
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D33DEE24();

    if (v9)
    {

      sub_1D331DA18(0, &qword_1EC761170, 0x1E69992A8);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D33DEE14();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D3364184(v7, result + 1, &qword_1EC7611C0, &qword_1D33E26F0, &qword_1EC761170, 0x1E69992A8);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D3364FB8(v20 + 1, &qword_1EC7611C0, &qword_1D33E26F0);
    }

    v18 = v8;
    sub_1D33A1260();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D331DA18(0, &qword_1EC761170, 0x1E69992A8);
  v11 = sub_1D33DEC64();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D33658E8(v18, v13, isUniquelyReferenced_nonNull_native, &qword_1EC7611C0, &qword_1D33E26F0, &qword_1EC761170, 0x1E69992A8);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D33DEC74();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1D3363B24(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D33DF284();
  sub_1D33DE824();
  v8 = sub_1D33DF2C4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D33DF1B4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1D3365768(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D3363C74(uint64_t *a1, void *a2)
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
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D33DEE24();

    if (v9)
    {

      sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D33DEE14();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D3364184(v7, result + 1, qword_1EC7611D8, &unk_1D33E4370, &unk_1EDEC0120, 0x1E69D8C00);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D3364FB8(v20 + 1, qword_1EC7611D8, &unk_1D33E4370);
    }

    v18 = v8;
    sub_1D33A1260();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  v11 = sub_1D33DEC64();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D33658E8(v18, v13, isUniquelyReferenced_nonNull_native, qword_1EC7611D8, &unk_1D33E4370, &unk_1EDEC0120, 0x1E69D8C00);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D33DEC74();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1D3363EFC(uint64_t *a1, void *a2)
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
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D33DEE24();

    if (v9)
    {

      sub_1D331DA18(0, &unk_1EC7613D0, 0x1E69D8B68);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D33DEE14();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D3364184(v7, result + 1, &qword_1EC761188, &qword_1D33E26C8, &unk_1EC7613D0, 0x1E69D8B68);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D3364FB8(v20 + 1, &qword_1EC761188, &qword_1D33E26C8);
    }

    v18 = v8;
    sub_1D33A1260();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D331DA18(0, &unk_1EC7613D0, 0x1E69D8B68);
  v11 = sub_1D33DEC64();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D33658E8(v18, v13, isUniquelyReferenced_nonNull_native, &qword_1EC761188, &qword_1D33E26C8, &unk_1EC7613D0, 0x1E69D8B68);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D33DEC74();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1D3364184(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_1D33DEEF4();
    v23 = v10;
    sub_1D33DEDC4();
    if (sub_1D33DEE54())
    {
      sub_1D331DA18(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_1D3364FB8(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_1D33DEC64();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_1D33DEE54());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_1D3364398(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for RecentsItem(0);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761178, &qword_1D33E26C0);
  result = sub_1D33DEEE4();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_1D33302BC(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5);
      sub_1D33DF284();
      RecentsItem.hash(into:)(v32);
      result = sub_1D33DF2C4();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D33302BC(v5, *(v8 + 48) + v16 * v20);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1D3364678(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1D33DDDB4();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761190, &qword_1D33E26D0);
  result = sub_1D33DEEE4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1D3367CE8(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D33DE724();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1D33649D4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1D33DE374();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7611B8, &qword_1D33E26E8);
  result = sub_1D33DEEE4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1D3367CE8(&qword_1EC7611A8, MEMORY[0x1E696EDC8], MEMORY[0x1E696EDF8]);
      result = sub_1D33DE724();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1D3364D44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7611A0, &qword_1D33E26E0);
  result = sub_1D33DEEE4();
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
      sub_1D33DF284();
      sub_1D33DE824();
      result = sub_1D33DF2C4();
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

uint64_t sub_1D3364FB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D33DEEE4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_1D33DEC64();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1D33651D8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1D33DDDB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D3364678(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D3365C84(MEMORY[0x1E69695A8], &qword_1EC761190, &qword_1D33E26D0);
      goto LABEL_12;
    }

    sub_1D3366408(v10 + 1);
  }

  v12 = *v3;
  sub_1D3367CE8(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v13 = sub_1D33DE724();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1D3367CE8(&qword_1EDEBFD30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1D33DE774();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D33DF1D4();
  __break(1u);
  return result;
}

uint64_t sub_1D33654A0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1D33DE374();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D33649D4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D3365C84(MEMORY[0x1E696EDC8], &qword_1EC7611B8, &qword_1D33E26E8);
      goto LABEL_12;
    }

    sub_1D3366724(v10 + 1);
  }

  v12 = *v3;
  sub_1D3367CE8(&qword_1EC7611A8, MEMORY[0x1E696EDC8], MEMORY[0x1E696EDF8]);
  v13 = sub_1D33DE724();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1D3367CE8(&qword_1EC7611B0, MEMORY[0x1E696EDC8], MEMORY[0x1E696EE10]);
      v21 = sub_1D33DE774();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D33DF1D4();
  __break(1u);
  return result;
}

uint64_t sub_1D3365768(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D3364D44(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D3365EBC();
      goto LABEL_16;
    }

    sub_1D3366A40(v8 + 1);
  }

  v10 = *v4;
  sub_1D33DF284();
  sub_1D33DE824();
  result = sub_1D33DF2C4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D33DF1B4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D33DF1D4();
  __break(1u);
  return result;
}

void sub_1D33658E8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_1D3364FB8(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D3366018(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_1D3366C78(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_1D33DEC64();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_1D331DA18(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_1D33DEC74();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D33DF1D4();
  __break(1u);
}

void *sub_1D3365A78()
{
  v1 = v0;
  v2 = type metadata accessor for RecentsItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761178, &qword_1D33E26C0);
  v6 = *v0;
  v7 = sub_1D33DEED4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D332A828(*(v6 + 48) + v21, v5);
        result = sub_1D33302BC(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1D3365C84(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_1D33DEED4();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

void *sub_1D3365EBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7611A0, &qword_1D33E26E0);
  v2 = *v0;
  v3 = sub_1D33DEED4();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

id sub_1D3366018(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D33DEED4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1D3366158(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for RecentsItem(0);
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761178, &qword_1D33E26C0);
  result = sub_1D33DEEE4();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_1D332A828(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5);
      sub_1D33DF284();
      RecentsItem.hash(into:)(v30);
      result = sub_1D33DF2C4();
      v20 = -1 << *(v8 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1D33302BC(v5, *(v8 + 48) + v15 * v19);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1D3366408(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1D33DDDB4();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761190, &qword_1D33E26D0);
  v7 = sub_1D33DEEE4();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1D3367CE8(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D33DE724();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1D3366724(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1D33DE374();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7611B8, &qword_1D33E26E8);
  v7 = sub_1D33DEEE4();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1D3367CE8(&qword_1EC7611A8, MEMORY[0x1E696EDC8], MEMORY[0x1E696EDF8]);
      result = sub_1D33DE724();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1D3366A40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7611A0, &qword_1D33E26E0);
  result = sub_1D33DEEE4();
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
      sub_1D33DF284();

      sub_1D33DE824();
      result = sub_1D33DF2C4();
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

uint64_t sub_1D3366C78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D33DEEE4();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
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
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_1D33DEC64();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
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

        v4 = v26;
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

void *sub_1D3366E84(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_1D339E5B0(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_1D3366F50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1D33DEF04();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_1D33DEC64();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D336713C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1D33DDDB4();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761190, &qword_1D33E26D0);
  result = sub_1D33DEF04();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1D3367CE8(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = sub_1D33DE724();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void (*sub_1D3367464(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D38B75D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D3367DC8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D33674E4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D38B75D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1D3367564;
  }

  __break(1u);
  return result;
}

void (*sub_1D336756C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D38B75D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D33675EC;
  }

  __break(1u);
  return result;
}

BOOL sub_1D33675F4(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    v6 = v2;
    v7 = v3;
    v8 = sub_1D33DEC74();

    return v8 & 1;
  }

  return result;
}

uint64_t sub_1D33676A8(uint64_t a1)
{
  v2 = sub_1D33DE374();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D3367CE8(&qword_1EC7611A8, MEMORY[0x1E696EDC8], MEMORY[0x1E696EDF8]);
  result = MEMORY[0x1D38B7100](v9, v2, v10);
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
      sub_1D33635BC(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1D3367844(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D38B7100](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D3363B24(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t *sub_1D336793C(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D33DEE14())
  {
    v12 = sub_1D331DA18(0, a2, a3);
    v13 = sub_1D33565AC(a4, a2, a3);
    result = MEMORY[0x1D38B7100](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x1D38B75D0](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_1D33DEE14();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D3367A94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3367B04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D3367CE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D3367D30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D3367E38(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D3367EA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1D3367FE8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1D3368248()
{
  sub_1D3368348();
  result = sub_1D33DEB94();
  qword_1EC7620F8 = result;
  return result;
}

unint64_t sub_1D33682A0(uint64_t a1, uint64_t a2)
{
  result = qword_1EC761260;
  if (!qword_1EC761260)
  {
    type metadata accessor for TUActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761260);
  }

  return result;
}

unint64_t sub_1D3368348()
{
  result = qword_1EDEBEEC8;
  if (!qword_1EDEBEEC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEBEEC8);
  }

  return result;
}

void *RequestsHandlerPresenter.presentingViewController.getter()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_presentingViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RequestsHandlerPresenter.presentingViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_presentingViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *RequestsHandlerPresenter.metadataCache.getter()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_metadataCache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RequestsHandlerPresenter.metadataCache.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_metadataCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *RequestsHandlerPresenter.sourceView.getter()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RequestsHandlerPresenter.sourceView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id RequestsHandlerPresenter.__allocating_init(presentingViewController:sourceView:sourceRect:metadataCache:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = objc_allocWithZone(v4);
  v9 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_presentingViewController;
  *&v8[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_presentingViewController] = 0;
  v10 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_metadataCache;
  *&v8[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_metadataCache] = 0;
  v11 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceView;
  *&v8[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceView] = 0;
  v12 = &v8[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceRect];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[32] = 1;
  v13 = &v8[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v8[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager] = 0;
  v14 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_featureFlags;
  *&v8[v14] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v15 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_requestHandler;
  if (qword_1EDEBFC40 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDEBFC50;
  *&v8[v15] = qword_1EDEBFC50;
  swift_beginAccess();
  v17 = *&v8[v9];
  *&v8[v9] = a1;
  v18 = v16;
  v19 = a1;

  swift_beginAccess();
  v20 = *&v8[v11];
  *&v8[v11] = a2;
  v21 = a2;

  v22 = *(a3 + 16);
  *v12 = *a3;
  *(v12 + 1) = v22;
  v12[32] = *(a3 + 32);
  swift_beginAccess();
  v23 = *&v8[v10];
  *&v8[v10] = a4;
  v24 = a4;

  v29.receiver = v8;
  v29.super_class = v28;
  v25 = objc_msgSendSuper2(&v29, sel_init);

  return v25;
}

id RequestsHandlerPresenter.init(presentingViewController:sourceView:sourceRect:metadataCache:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_presentingViewController;
  *&v4[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_presentingViewController] = 0;
  v9 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_metadataCache;
  *&v4[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_metadataCache] = 0;
  v10 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceView;
  *&v4[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceView] = 0;
  v11 = &v4[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceRect];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  v12 = &v4[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager] = 0;
  v13 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_featureFlags;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v14 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_requestHandler;
  if (qword_1EDEBFC40 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDEBFC50;
  *&v4[v14] = qword_1EDEBFC50;
  swift_beginAccess();
  v16 = *&v4[v8];
  *&v4[v8] = a1;
  v17 = v15;
  v18 = a1;

  swift_beginAccess();
  v19 = *&v4[v10];
  *&v4[v10] = a2;
  v20 = a2;

  v21 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 1) = v21;
  v11[32] = *(a3 + 32);
  swift_beginAccess();
  v22 = *&v4[v9];
  *&v4[v9] = a4;
  v23 = a4;

  v28.receiver = v4;
  v28.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v28, sel_init);

  return v24;
}

id RequestsHandlerPresenter.contextualAction(for:)(uint64_t a1)
{
  v3 = type metadata accessor for RecentsItem(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = aBlock - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = aBlock - v11;
  if (![*(v1 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_featureFlags) acceptedContactsLabelsEnabled])
  {
    return 0;
  }

  sub_1D3367A94(a1 + *(v3 + 32), v12);
  v13 = type metadata accessor for CallInfo(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    sub_1D331E880(v12, &unk_1EC761DE0, &unk_1D33E50F0);
  }

  else
  {
    v14 = v12[*(v13 + 48)];
    sub_1D336A0E8(v12);
    if (v14 != 1)
    {
      goto LABEL_13;
    }
  }

  v15 = *(a1 + 32);
  if (v15 > 8)
  {
    goto LABEL_9;
  }

  if (((1 << v15) & 0x1B0) != 0)
  {
LABEL_10:
    v17 = sub_1D33DDDB4();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    sub_1D331E880(v9, &qword_1EC7612B0, qword_1D33E2830);
    return 0;
  }

  v16 = *(a1 + 8);
  if (v15 != 3 && v15 != 6)
  {
LABEL_9:
    if (v15 < 2)
    {
      goto LABEL_10;
    }

    v16 = *a1;
  }

  v18 = v16;
  sub_1D33DE0B4();

  v19 = sub_1D33DDDB4();
  (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
  sub_1D331E880(v9, &qword_1EC7612B0, qword_1D33E2830);
LABEL_13:
  if (RequestsHandler.isItemUnknownParticipant(_:)(a1))
  {
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D332A828(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    sub_1D3329070(v6, v22 + v21, type metadata accessor for RecentsItem);

    v23 = sub_1D33DE784();
    aBlock[4] = sub_1D336A04C;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D33698FC;
    aBlock[3] = &block_descriptor_0;
    v24 = _Block_copy(aBlock);
    v25 = [objc_opt_self() contextualActionWithStyle:0 title:v23 handler:v24];

    _Block_release(v24);

    v26 = objc_opt_self();
    v27 = sub_1D33DE784();
    v28 = [v26 __systemImageNamedSwift_];

    [v25 setImage_];
    v29 = [objc_opt_self() systemBlueColor];
    [v25 setBackgroundColor_];

    return v25;
  }

  return 0;
}

void sub_1D3368F90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceView;
    swift_beginAccess();
    v13 = *&v11[v12];
    *&v11[v12] = a2;

    v14 = a2;
    sub_1D3369054(a6);
    v15 = &v11[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler];
    v16 = *&v11[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler];
    v17 = *&v11[OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler + 8];
    *v15 = a3;
    *(v15 + 1) = a4;
    sub_1D331EEDC(v16, v17);
  }
}

void sub_1D3369054(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v71 - v5;
  v7 = type metadata accessor for CallInfo(0);
  v76 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v74 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v9) = *(a1 + 32) - 4;
  v77 = v8;
  if (v9 <= 2)
  {
    v10 = *a1;
    v79 = sub_1D33D5B88(v10);
    v12 = v11;
    v78 = sub_1D33D6278(v10);
    v14 = v13;
    v15 = [v10 remoteParticipantHandles];
    if (v15 && (v16 = v15, sub_1D331F56C(), sub_1D331F514(), v17 = sub_1D33DEA54(), v16, v18 = sub_1D335DC7C(v17), , v18))
    {
      v19 = sub_1D336A260();
    }

    else
    {
      v19 = 0;
    }

    v22 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_metadataCache;
    swift_beginAccess();
    v23 = [objc_opt_self() contactForRecentCall:v10 metadataCache:*(v2 + v22)];
    if (v23)
    {
      v24 = v23;
      v25 = objc_opt_self();
      v20 = v24;
      v26 = [v25 stringFromContact:v20 style:0];
      if (v26)
      {
        v27 = v26;
        v75 = sub_1D33DE7B4();
        v21 = v28;

        goto LABEL_13;
      }
    }

    else
    {

      v20 = 0;
    }

    v75 = 0;
    v21 = 0;
    goto LABEL_13;
  }

  v78 = 0;
  v79 = 0;
  v14 = 0;
  v12 = 0;
  v20 = 0;
  v75 = 0;
  v21 = 0;
  v19 = 0;
LABEL_13:
  v29 = *(a1 + 32);
  if (v29 > 8)
  {
    goto LABEL_17;
  }

  if (((1 << v29) & 0x1B0) != 0)
  {
    goto LABEL_18;
  }

  v30 = *(a1 + 8);
  if (v29 != 3 && v29 != 6)
  {
LABEL_17:
    if (v29 < 2)
    {
LABEL_18:
      if (v19)
      {
        goto LABEL_19;
      }

LABEL_47:

      if (qword_1EDEBFD70 != -1)
      {
        swift_once();
      }

      v64 = sub_1D33DE464();
      __swift_project_value_buffer(v64, qword_1EDEC1480);
      v65 = sub_1D33DE444();
      v66 = sub_1D33DEAD4();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_1D331A000, v65, v66, "[RequestsHandlerPresenter] Could not find remote handle", v67, 2u);
        MEMORY[0x1D38B81C0](v67, -1, -1);
      }

      v68 = (v2 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
      v69 = *(v2 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
      if (v69)
      {
        v70 = v68[1];

        v69(0);

        sub_1D331EEDC(v69, v70);
        v41 = *v68;
        v42 = v68[1];
        *v68 = 0;
        v68[1] = 0;
        goto LABEL_53;
      }

LABEL_55:
      v35 = v20;
      goto LABEL_56;
    }

    v30 = *a1;
  }

  v58 = v30;

  v79 = sub_1D33DE1B4();
  v12 = v59;
  v60 = [objc_opt_self() mainBundle];
  v61 = [v60 bundleIdentifier];

  if (v61)
  {
    v78 = sub_1D33DE7B4();
    v14 = v62;
  }

  else
  {
    v78 = 0;
    v14 = 0;
  }

  v63 = sub_1D33DE124();

  v19 = v63;
  if (!v63)
  {
    goto LABEL_47;
  }

LABEL_19:
  v31 = [v19 type];
  if (v31 != 3)
  {
    if (v31 == 2)
    {
      v72 = v12;
      v73 = v20;
      v32 = &selRef_configurationForPhoneNumber_;
      goto LABEL_23;
    }

    v38 = (v2 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
    v39 = *(v2 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
    if (v39)
    {
      v40 = v38[1];

      v39(0);

      sub_1D331EEDC(v39, v40);
      v41 = *v38;
      v42 = v38[1];
      *v38 = 0;
      v38[1] = 0;
LABEL_53:
      sub_1D331EEDC(v41, v42);
      v35 = *(v2 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager);
      *(v2 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager) = 0;
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v72 = v12;
  v73 = v20;
  v32 = &selRef_configurationForEmailAddress_;
LABEL_23:
  v33 = [v19 value];
  sub_1D33DE7B4();

  v34 = sub_1D33DE784();

  v35 = [objc_opt_self() *v32];

  v36 = *(a1 + 72);
  v37 = v35;
  if (v36)
  {
    v36 = sub_1D33DE784();
  }

  [v35 setSubtitle_];

  v43 = type metadata accessor for RecentsItem(0);
  sub_1D3367A94(a1 + *(v43 + 32), v6);
  if ((*(v76 + 48))(v6, 1, v77) != 1)
  {
    v45 = v74;
    sub_1D3329070(v6, v74, type metadata accessor for CallInfo);
    v46 = objc_opt_self();
    v47 = sub_1D33DE784();

    v48 = [v46 __systemImageNamedSwift_];

    [v35 setSubtitleImage_];
    sub_1D336A0E8(v45);
    if (v21)
    {
      goto LABEL_29;
    }

LABEL_31:
    v44 = 0;
    goto LABEL_32;
  }

  sub_1D331E880(v6, &unk_1EC761DE0, &unk_1D33E50F0);
  if (!v21)
  {
    goto LABEL_31;
  }

LABEL_29:
  v44 = sub_1D33DE784();

LABEL_32:
  [v35 setSuggestedDisplayName_];

  v49 = v73;
  [v35 setContact_];
  if (v72)
  {
    v50 = sub_1D33DE784();
  }

  else
  {
    v50 = 0;
  }

  [v35 setSendingAddress_];

  if (v14)
  {
    v51 = sub_1D33DE784();
  }

  else
  {
    v51 = 0;
  }

  [v35 setSource_];

  v52 = [objc_allocWithZone(MEMORY[0x1E695D1A8]) initWithConfiguration_];
  v53 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager;
  v54 = *(v2 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager);
  *(v2 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager) = v52;

  v55 = *(v2 + v53);
  if (v55 && ([v55 setDelegate_], (v56 = *(v2 + v53)) != 0))
  {
    v57 = v56;
    [v57 presentAcceptedContactViewController];

    v35 = v19;
  }

  else
  {
  }

LABEL_56:
}

void sub_1D33698FC(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_1D336A244, v8);
}

void RequestsHandlerPresenter.presentAcceptUI(for:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  v6 = *(v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  v7 = *(v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler + 8);
  *v5 = a2;
  v5[1] = a3;
  sub_1D331EEDC(v6, v7);

  sub_1D3369054(a1);
}

id RequestsHandlerPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RequestsHandlerPresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *RequestsHandlerPresenter.presentingViewController(for:sourceView:sourceRect:)(uint64_t a1, void *a2)
{
  v2 = sub_1D336A144(a2);
  v3 = v2;
  return v2;
}

void RequestsHandlerPresenter.acceptedContactActionsManager(_:didRecordRecentEvent:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  if (v2)
  {
    v3 = v0;
    v4 = v1[1];

    v2(1);
    sub_1D331EEDC(v2, v4);
    v5 = *v1;
    v6 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    sub_1D331EEDC(v5, v6);
    v7 = *(v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager);
    *(v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager) = 0;
  }
}

void RequestsHandlerPresenter.acceptedContactActionsManager(_:didCreateNewContact:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  if (v2)
  {
    v3 = v0;
    v4 = v1[1];

    v2(1);
    sub_1D331EEDC(v2, v4);
    v5 = *v1;
    v6 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    sub_1D331EEDC(v5, v6);
    v7 = *(v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager);
    *(v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager) = 0;
  }
}

void RequestsHandlerPresenter.acceptedContactActionsManagerDidCancel(_:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  if (v2)
  {
    v3 = v0;
    v4 = v1[1];

    v2(0);
    sub_1D331EEDC(v2, v4);
    v5 = *v1;
    v6 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    sub_1D331EEDC(v5, v6);
    v7 = *(v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager);
    *(v3 + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager) = 0;
  }
}

void sub_1D336A04C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for RecentsItem(0) - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  sub_1D3368F90(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_1D336A0E8(uint64_t a1)
{
  v2 = type metadata accessor for CallInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D336A144(void *a1)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_sourceView;
    swift_beginAccess();
    v4 = *(v1 + v3);
    *a1 = v4;
    v5 = v4;
  }

  v6 = OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_presentingViewController;
  swift_beginAccess();
  return *(v1 + v6);
}

uint64_t dispatch thunk of RequestsHandlerPresenter.__allocating_init(presentingViewController:sourceView:sourceRect:metadataCache:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 144);
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  v9 = v5;
  return v4(a1, a2, v8);
}

id sub_1D336A260()
{
  v1 = [v0 type];
  if (v1 > 3)
  {
    v2 = 2;
  }

  else
  {
    v2 = qword_1D33E29B0[v1];
  }

  v3 = [v0 value];
  if (!v3)
  {
    sub_1D33DE7B4();
    v3 = sub_1D33DE784();
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v2 value:v3];

  return v4;
}

id sub_1D336A314()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D33E28A0;
  v1 = *MEMORY[0x1E695C240];
  v2 = *MEMORY[0x1E695C230];
  *(v0 + 32) = *MEMORY[0x1E695C240];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C330];
  v4 = *MEMORY[0x1E695C208];
  *(v0 + 48) = *MEMORY[0x1E695C330];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C258];
  v6 = *MEMORY[0x1E695C3D0];
  *(v0 + 64) = *MEMORY[0x1E695C258];
  *(v0 + 72) = v6;
  v7 = objc_opt_self();
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  result = [v7 descriptorForRequiredKeysForStyle_];
  *(v0 + 80) = result;
  qword_1EDEC1478 = v0;
  return result;
}

uint64_t sub_1D336A41C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController) recentCalls];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
  v3 = sub_1D33DE8B4();

  v21 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D38B75D0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 serviceProvider];
      if (!v9)
      {
        sub_1D33DE7B4();
LABEL_6:

        goto LABEL_7;
      }

      v10 = v9;
      v11 = sub_1D33DE7B4();
      v13 = v12;

      v14 = sub_1D33DE7B4();
      if (!v13)
      {
        goto LABEL_6;
      }

      if (v11 == v14 && v13 == v15)
      {

LABEL_22:
        sub_1D33DEF84();
        sub_1D33DEFB4();
        sub_1D33DEFC4();
        sub_1D33DEF94();
        goto LABEL_8;
      }

      v17 = sub_1D33DF1B4();

      if (v17)
      {
        goto LABEL_22;
      }

LABEL_7:

LABEL_8:
      ++v5;
      if (v8 == i)
      {
        v18 = v21;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_30:

  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    v19 = sub_1D33DEE14();
  }

  else
  {
    v19 = *(v18 + 16);
  }

  return v19;
}

void sub_1D336A684(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 <= 5)
  {
    if (v2 == 2)
    {
      v14 = [*(v1 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController) callProviderManager];
      v15 = Message.dialRequest(with:)(v14);

      osloga = [objc_opt_self() sharedInstance];
      v16 = [osloga dialWithRequest:v15];

      goto LABEL_15;
    }

    if (v2 != 4)
    {
      return;
    }

LABEL_11:
    oslog = *a1;
    v12 = CHRecentCall.isGroupFaceTime.getter();
    v13 = *(v1 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
    if (v12)
    {
      [v13 performJoinRequestForRecentCall_];
    }

    else
    {
      [v13 performDialRequestForRecentCall_];
    }

LABEL_15:

    return;
  }

  if (v2 == 6)
  {
    goto LABEL_11;
  }

  if (v2 != 7)
  {
    return;
  }

  v3 = *(a1 + 8);
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 6)
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v17 = sub_1D33DE464();
    __swift_project_value_buffer(v17, qword_1EDEC1480);
    osloga = sub_1D33DE444();
    v18 = sub_1D33DEAD4();
    if (os_log_type_enabled(osloga, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D331A000, osloga, v18, "links are only included on visionOS currently, this action should not be invoked.", v19, 2u);
      MEMORY[0x1D38B81C0](v19, -1, -1);
    }

    goto LABEL_15;
  }

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D33DEE14())
  {
    sub_1D33A6DF0(MEMORY[0x1E69E7CC0]);
  }

  v6 = objc_allocWithZone(MEMORY[0x1E69D8C10]);
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v7 = sub_1D33DEA44();

  v8 = [v6 initWithConversationLink:v3 otherInvitedHandles:v7 sendLetMeInRequest:0];

  [v8 setVideoEnabled_];
  [v8 setOriginatingUIType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D33E28B0;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69D8B68]) initWithHandleType:2 notificationStyles:2];
  *(inited + 40) = [objc_allocWithZone(MEMORY[0x1E69D8B68]) initWithHandleType:3 notificationStyles:2];
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E69D8B68]) initWithHandleType:1 notificationStyles:2];
  sub_1D336790C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1D331DA18(0, &unk_1EC7613D0, 0x1E69D8B68);
  sub_1D33565AC(&qword_1EC761180, &unk_1EC7613D0, 0x1E69D8B68);
  v10 = sub_1D33DEA44();

  [v8 setInvitationPreferences_];

  v11 = [objc_opt_self() sharedInstance];
  [v11 launchAppForJoinRequest_];
}

void sub_1D336AB18(uint64_t a1)
{
  v3 = type metadata accessor for RecentsItem(0) - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1E69E7CC0];
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    do
    {
      sub_1D336D080(v8, v6, type metadata accessor for RecentsItem);
      if (*(v6 + 32) - 4 >= 3)
      {
        sub_1D3367D30(v6, type metadata accessor for RecentsItem);
      }

      else
      {
        v10 = *v6;
        v11 = sub_1D3367D30(v6, type metadata accessor for RecentsItem);
        MEMORY[0x1D38B6F20](v11);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D33DE8D4();
        }

        sub_1D33DE8F4();
      }

      v8 += v9;
      --v7;
    }

    while (v7);
  }

  v12 = *(v1 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
  sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
  v13 = sub_1D33DE8A4();

  [v12 deleteRecentCalls_];
}

void *PKRecentsController.contacts(for:keyDescriptors:)(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
  v4 = sub_1D33DE8A4();
  v5 = [v2 contactByHandleForRecentCall:a1 keyDescriptors:v4];

  if (v5)
  {
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v6 = sub_1D33DE6F4();
  }

  else
  {
    v6 = sub_1D3320188(MEMORY[0x1E69E7CC0]);
  }

  v7 = [a1 validRemoteParticipantHandles];
  if (v7)
  {
    v8 = v7;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v9 = sub_1D33DEA54();

    v10 = a1;
    v11 = v2;
    v12 = sub_1D336C398(v9, v6, v10);

    swift_bridgeObjectRelease_n();
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v12;
}

void sub_1D336AF90(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  if (*(a2 + 32) - 4 <= 2)
  {
    v8 = *a2;
    v9 = *(v2 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
    sub_1D331E818(a1, v7, &qword_1EC7612B0, qword_1D33E2830);
    v10 = sub_1D33DDDB4();
    v11 = *(v10 - 8);
    v12 = 0;
    if ((*(v11 + 48))(v7, 1, v10) != 1)
    {
      v12 = sub_1D33DDD64();
      (*(v11 + 8))(v7, v10);
    }

    [v9 updateReminderUUID:v12 forRecentCall:v8];
  }
}

id sub_1D336B12C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentCallProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D336B1D0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController) serialQueue];

  return v1;
}

id sub_1D336B2A0(void *a1, void *a2)
{
  v4 = sub_1D33DDC44();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v34 = v33 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v33 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v33 - v17;
  v33[1] = sub_1D336B874(a1, a2);
  v19 = [a1 imageURL];
  v33[0] = v7;
  if (v19)
  {
    v20 = v19;
    sub_1D33DDC24();

    (*(v5 + 56))(v16, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v16, 1, 1, v4);
  }

  sub_1D333842C(v16, v18, &unk_1EC760EA0, &qword_1D33E2210);
  v21 = sub_1D336A260();
  v22 = v34;
  sub_1D331E818(v18, v34, &unk_1EC760EA0, &qword_1D33E2210);
  v23 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];
  v24 = sub_1D33DE784();

  [v23 setCompanyName_];

  [v23 setContactType_];
  sub_1D331E818(v22, v11, &unk_1EC760EA0, &qword_1D33E2210);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {

    sub_1D331E880(v22, &unk_1EC760EA0, &qword_1D33E2210);
    v22 = v18;
    v18 = v11;
  }

  else
  {
    v25 = v21;
    v26 = v33[0];
    (*(v5 + 32))(v33[0], v11, v4);
    v27 = sub_1D33DDC54();
    v28 = v4;
    v30 = v29;
    v31 = sub_1D33DDC64();
    sub_1D336D9B4(v27, v30);
    [v23 setImageData_];

    (*(v5 + 8))(v26, v28);
  }

  sub_1D331E880(v22, &unk_1EC760EA0, &qword_1D33E2210);
  sub_1D331E880(v18, &unk_1EC760EA0, &qword_1D33E2210);
  return v23;
}

uint64_t PKRecentsController.unknownContacts(for:keyDescriptors:)(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
  v4 = sub_1D33DE8A4();
  v5 = [v2 contactByHandleForRecentCall:a1 keyDescriptors:v4];

  if (v5)
  {
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v6 = sub_1D33DE6F4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1 validRemoteParticipantHandles];
  if (v7)
  {
    v8 = v7;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v9 = sub_1D33DEA54();

    v10 = a1;
    v11 = v2;
    sub_1D336C7A8(v9, v6, v10, v11);
    v13 = v12;

    swift_bridgeObjectRelease_n();
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v13;
}

uint64_t sub_1D336B874(uint64_t a1, void *a2)
{
  v5 = [v2 subtitleProvider];
  if (!v5)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69D8D00]) init];
  }

  v6 = [a2 value];
  if (!v6)
  {
    sub_1D33DE7B4();
    v6 = sub_1D33DE784();
  }

  v7 = [v5 localizedSubtitleForRecentCall:a1 handle:v6 contact:0];

  sub_1D33DE7B4();
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_1D33DDB74();

  return v10;
}

unint64_t sub_1D336B9F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761408, &qword_1D33E2960);
    v3 = sub_1D33DF124();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D33378A8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D336BAF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7613E0, &qword_1D33E2938);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7613E8, &unk_1D33E2940);
    v7 = sub_1D33DF124();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D331E818(v9, v5, &qword_1EC7613E0, &qword_1D33E2938);
      result = sub_1D33B926C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D33DDDB4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for RecentsItem(0);
      result = sub_1D33290D8(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for RecentsItem);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D336BD10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7613C0, &qword_1D33E2930);
    v3 = sub_1D33DF124();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D33378A8(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D336BE24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DC8, &qword_1D33E1B50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761440, &unk_1D33E3050);
    v7 = sub_1D33DF124();
    v21 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1D331E818(v8, v5, &qword_1EC760DC8, &qword_1D33E1B50);
      result = sub_1D33B9390(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
      sub_1D333842C(v5, v13 + *(*(v14 - 8) + 72) * v12, &qword_1EC7612B0, qword_1D33E2830);
      v15 = v7[7];
      v16 = type metadata accessor for RecentsItem(0);
      result = sub_1D33290D8(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, type metadata accessor for RecentsItem);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D336C04C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7613F0, &qword_1D33E5430);
    v3 = sub_1D33DF124();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D331E818(v4, v13, &qword_1EC7613F8, &qword_1D33E2950);
      result = sub_1D33B95A0(v13);
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
      result = sub_1D334CCF4(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D336C188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761410, &qword_1D33E2968);
    v3 = sub_1D33DF124();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D33378A8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D336C284(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761400, &qword_1D33E2958);
    v3 = sub_1D33DF124();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D33378A8(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D336C398(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1;
  v35 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    result = sub_1D33DEA94();
    v3 = v30;
    v5 = v31;
    v6 = v32;
    v7 = v33;
    v8 = v34;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = MEMORY[0x1E69E7CC0];
  if (v3 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_35:
      sub_1D331FEEC(v3);
      return v12;
    }

    while (1)
    {
      v28 = v16;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v18 = v17;
        v19 = sub_1D33DF0A4();

        if (v19)
        {
          sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
          swift_dynamicCast();
          if (v29)
          {
            goto LABEL_31;
          }
        }
      }

      else if (*(a2 + 16))
      {
        v20 = sub_1D33B9340(v17);
        if (v21)
        {
          if (*(*(a2 + 56) + 8 * v20))
          {
            goto LABEL_31;
          }
        }
      }

      if ([a3 callDirectoryIdentityType] == 2)
      {
        sub_1D336B2A0(a3, v17);
      }

      else
      {
        v22 = [v17 type];
        if (v22 > 3)
        {
          v23 = 2;
        }

        else
        {
          v23 = qword_1D33E29B0[v22];
        }

        v24 = [v17 value];
        if (!v24)
        {
          sub_1D33DE7B4();
          v24 = sub_1D33DE784();
        }

        v25 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v23 value:v24];

        [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];
        v17 = v25;
      }

LABEL_31:

      MEMORY[0x1D38B6F20]();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D33DE8D4();
      }

      result = sub_1D33DE8F4();
      v12 = v35;
      v7 = v15;
      v8 = v28;
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (sub_1D33DEE54())
      {
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        swift_dynamicCast();
        v17 = v29;
        v15 = v7;
        v16 = v8;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_35;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_35;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1D336C7A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v73 = a4;
  v74 = a3;
  v76 = sub_1D33DDC44();
  v6 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v72 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v65 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v68 = v65 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v75 = v65 - v16;
  v91 = MEMORY[0x1E69E7CC0];
  v83 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    a2 = v83;
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33DEA94();
    a1 = v86;
    v17 = v87;
    v18 = v88;
    v19 = v89;
    v20 = v90;
  }

  else
  {
    v21 = -1 << *(a1 + 32);
    v17 = a1 + 56;
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(a1 + 56);

    v19 = 0;
  }

  v78 = v18;
  v24 = (v18 + 64) >> 6;
  v25 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v25 = a2;
  }

  v81 = v25;
  v82 = a2 & 0xC000000000000001;
  v70 = (v6 + 56);
  v69 = (v6 + 48);
  v67 = (v6 + 32);
  v66 = (v6 + 8);
  v80 = MEMORY[0x1E69E7CC0];
  v77 = v13;
  while (1)
  {
    if (a1 < 0)
    {
      v29 = sub_1D33DEE54();
      if (!v29 || (v84 = v29, sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578), swift_dynamicCast(), (v28 = v85) == 0))
      {
LABEL_52:
        sub_1D331FEEC(a1);
        return;
      }

      goto LABEL_20;
    }

    v26 = v19;
    v27 = v20;
    if (!v20)
    {
      break;
    }

LABEL_16:
    v20 = (v27 - 1) & v27;
    v28 = *(*(a1 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v28)
    {
      goto LABEL_52;
    }

LABEL_20:
    v30 = v83;
    if (!v83)
    {
      goto LABEL_28;
    }

    if (v82)
    {
      v31 = v28;
      v32 = sub_1D33DF0A4();

      if (!v32)
      {
        goto LABEL_28;
      }

      v84 = v32;
      sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
      swift_dynamicCast();
      v33 = v85;
      if (!v85)
      {
        goto LABEL_28;
      }

LABEL_10:
    }

    else
    {
      if (*(v83 + 16))
      {
        v34 = sub_1D33B9340(v28);
        if (v35)
        {
          v33 = *(*(v30 + 56) + 8 * v34);
          if (v33)
          {
            goto LABEL_10;
          }
        }
      }

LABEL_28:
      v36 = v74;
      if ([v74 callDirectoryIdentityType] == 2)
      {
        v65[1] = sub_1D336B874(v36, v28);
        v80 = v37;
        v38 = [v36 imageURL];
        if (v38)
        {
          v39 = v68;
          v40 = v38;
          sub_1D33DDC24();

          v41 = 0;
          v42 = v76;
        }

        else
        {
          v41 = 1;
          v42 = v76;
          v39 = v68;
        }

        (*v70)(v39, v41, 1, v42);
        v47 = v39;
        v48 = v75;
        sub_1D333842C(v47, v75, &unk_1EC760EA0, &qword_1D33E2210);
        v49 = [v28 type];
        if (v49 > 3)
        {
          v50 = 2;
        }

        else
        {
          v50 = qword_1D33E29B0[v49];
        }

        v51 = [v28 value];
        if (!v51)
        {
          sub_1D33DE7B4();
          v51 = sub_1D33DE784();
          v48 = v75;
        }

        v52 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v50 value:v51];

        sub_1D331E818(v48, v77, &unk_1EC760EA0, &qword_1D33E2210);
        v53 = objc_allocWithZone(MEMORY[0x1E695CF18]);
        v65[0] = v52;
        v54 = [v53 _initWithHandle_];
        v55 = sub_1D33DE784();

        [v54 setCompanyName_];

        [v54 setContactType_];
        v80 = v54;

        v56 = v77;
        v57 = v71;
        sub_1D331E818(v77, v71, &unk_1EC760EA0, &qword_1D33E2210);
        v58 = v76;
        if ((*v69)(v57, 1, v76) == 1)
        {

          sub_1D331E880(v56, &unk_1EC760EA0, &qword_1D33E2210);
          sub_1D331E880(v75, &unk_1EC760EA0, &qword_1D33E2210);
          sub_1D331E880(v57, &unk_1EC760EA0, &qword_1D33E2210);
        }

        else
        {
          (*v67)(v72, v57, v58);
          v59 = v79;
          v60 = sub_1D33DDC54();
          if (v59)
          {

            v62 = 0;
            v79 = 0;
          }

          else
          {
            v79 = 0;
            v63 = v60;
            v64 = v61;
            v62 = sub_1D33DDC64();
            sub_1D336D9B4(v63, v64);
          }

          [v80 setImageData_];

          (*v66)(v72, v76);
          sub_1D331E880(v77, &unk_1EC760EA0, &qword_1D33E2210);
          sub_1D331E880(v75, &unk_1EC760EA0, &qword_1D33E2210);
        }
      }

      else
      {
        v43 = [v28 type];
        if (v43 > 3)
        {
          v44 = 2;
        }

        else
        {
          v44 = qword_1D33E29B0[v43];
        }

        v45 = [v28 value];
        if (!v45)
        {
          sub_1D33DE7B4();
          v45 = sub_1D33DE784();
        }

        v46 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v44 value:v45];

        [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];
        v28 = v46;
      }

      MEMORY[0x1D38B6F20]();
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      v80 = v91;
    }
  }

  while (1)
  {
    v19 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v19 >= v24)
    {
      goto LABEL_52;
    }

    v27 = *(v17 + 8 * v19);
    ++v26;
    if (v27)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1D336D080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D336D0E8(char *a1)
{
  v2 = type metadata accessor for RecentsItem(0);
  v70 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v69 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v55 - v5;
  v7 = sub_1D33DE3B4();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D33DE3E4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = [a1 recentCalls];
  if (v15)
  {
    v16 = v15;
    sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
    v17 = sub_1D33DE8B4();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EDEBF088 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v18 = __swift_project_value_buffer(v10, qword_1EDEC1458);
    v19 = v11[2];
    v61 = v10;
    v19(v13, v18, v10);
    sub_1D33DE3A4();
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_1D33DE3D4();
    v22 = sub_1D33DEC04();
    v10 = v9;
    v23 = sub_1D33DE394();
    v56 = v21;
    v57 = v20;
    _os_signpost_emit_with_name_impl(&dword_1D331A000, v21, v22, v23, "Create RecentsItems", "", v20, 2u);
    v24 = v17 >> 62 ? sub_1D33DEE14() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v58 = v13;
    v59 = v11;
    v60 = v9;
    v11 = MEMORY[0x1E69E7CC0];
    if (!v24)
    {
      break;
    }

    v13 = 0;
    v73 = v17 & 0xC000000000000001;
    v74 = 0;
    v71 = v24;
    v72 = v17 & 0xFFFFFFFFFFFFFF8;
    v66 = *MEMORY[0x1E69935B8];
    v65 = MEMORY[0x1E69E7CC0] >> 62;
    v9 = v14;
    v75 = v14;
    v67 = v6;
    v68 = v17;
    while (1)
    {
      if (v73)
      {
        v25 = MEMORY[0x1D38B75D0](v13, v17);
      }

      else
      {
        if (v13 >= *(v72 + 16))
        {
          goto LABEL_44;
        }

        v25 = *(v17 + 8 * v13 + 32);
      }

      v10 = v25;
      v26 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (([v25 isFaceTime] & 1) == 0 || (v27 = objc_msgSend(v10, sel_callStatus), v27 != v66))
      {
LABEL_26:
        v76 = [v9 itemForRecentCall:v10 presentationStyle:0];
        if (qword_1EDEBFC30 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
        v34 = sub_1D33DE8A4();
        v35 = [v9 contactByHandleForRecentCall:v10 keyDescriptors:v34];

        if (v35)
        {
          v14 = 0x1E6993578;
          sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
          sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
          sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
          v36 = sub_1D33DE6F4();
        }

        else
        {
          v36 = sub_1D3320188(MEMORY[0x1E69E7CC0]);
        }

        v37 = v11;
        v38 = [v10 validRemoteParticipantHandles];
        if (v38)
        {
          v39 = v38;
          sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
          sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
          v40 = sub_1D33DEA54();

          v41 = v10;
          v42 = v9;
          v14 = v74;
          v43 = sub_1D336C398(v40, v36, v41);
          v74 = v14;

          swift_bridgeObjectRelease_n();
        }

        else
        {

          v43 = MEMORY[0x1E69E7CC0];
        }

        v44 = v69;
        RecentsItem.init(from:recentsItem:contacts:)(v10, v76, v43, v69);
        v6 = v67;
        sub_1D33290D8(v44, v67, type metadata accessor for RecentsItem);
        v11 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v71;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v11 = sub_1D33226AC(0, v37[2] + 1, 1, v37);
        }

        v9 = v75;
        v17 = v68;
        v10 = v11[2];
        v47 = v11[3];
        if (v10 >= v47 >> 1)
        {
          v11 = sub_1D33226AC((v47 > 1), v10 + 1, 1, v11);
        }

        v11[2] = v10 + 1;
        sub_1D33290D8(v6, v11 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v10, type metadata accessor for RecentsItem);
        goto LABEL_39;
      }

      v28 = [v10 remoteParticipantHandles];
      if (v28)
      {
        v29 = v28;
        v14 = 0x1E6993578;
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
        v30 = sub_1D33DEA54();

        if ((v30 & 0xC000000000000001) != 0)
        {
          goto LABEL_20;
        }
      }

      else if (v65 && (v32 = MEMORY[0x1E69E7CC0], sub_1D33DEE14()))
      {
        sub_1D33A72F4(v32);
        v30 = v33;
        if ((v33 & 0xC000000000000001) != 0)
        {
LABEL_20:
          v31 = sub_1D33DEE14();
          goto LABEL_25;
        }
      }

      else
      {
        v30 = MEMORY[0x1E69E7CD0];
        if ((MEMORY[0x1E69E7CD0] & 0xC000000000000001) != 0)
        {
          goto LABEL_20;
        }
      }

      v31 = *(v30 + 16);
LABEL_25:
      v9 = v75;

      if (v31)
      {
        goto LABEL_26;
      }

      v46 = v71;
LABEL_39:
      ++v13;
      if (v26 == v46)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

LABEL_42:
  v48 = sub_1D33DEBF4();
  v49 = v60;
  v50 = sub_1D33DE394();
  v51 = v48;
  v52 = v56;
  v53 = v57;
  _os_signpost_emit_with_name_impl(&dword_1D331A000, v56, v51, v50, "Create RecentsItems", "", v57, 2u);

  MEMORY[0x1D38B81C0](v53, -1, -1);

  (*(v62 + 8))(v49, v63);
  (v59[1])(v58, v61);
  *(v64 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentItems) = v11;

  sub_1D33DE4C4();
}

uint64_t sub_1D336D9B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1D336DA30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[9];
  v5 = v3[10];
  v6 = v3[11];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_1D336DB60(v4, v5, v6);
}

uint64_t sub_1D336DA84(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_beginAccess();
  v6 = v5[9];
  v7 = v5[10];
  v8 = v5[11];
  v5[9] = v2;
  v5[10] = v3;
  v5[11] = v4;
  sub_1D336DB60(v2, v3, v4);
  return sub_1D33717A8(v6, v7, v8);
}

uint64_t sub_1D336DB10@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return sub_1D336DB60(v3, v4, v5);
}

uint64_t sub_1D336DB60(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

void sub_1D336DBAC(uint64_t a1)
{
  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D331A000, v2, v3, "SearchManager: Cancelling old search task", v4, 2u);
    MEMORY[0x1D38B81C0](v4, -1, -1);
  }

  if (a1)
  {

    sub_1D33DE9D4();
  }
}

char *SearchManager.__allocating_init(recentsController:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1D3371580(a1);

  return v2;
}

char *SearchManager.init(recentsController:)(void *a1)
{
  v2 = sub_1D3371580(a1);

  return v2;
}

uint64_t sub_1D336DD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D33DE664();
  MEMORY[0x1EEE9AC00](v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  aBlock[4] = sub_1D337179C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3329468;
  aBlock[3] = &block_descriptor_1;
  _Block_copy(aBlock);
  sub_1D3372394(&unk_1EDEBEF50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
  sub_1D334CB54(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0, MEMORY[0x1E69E6328]);
  sub_1D33DED64();
  sub_1D33DE6D4();
  swift_allocObject();
  v9 = sub_1D33DE6B4();

  sub_1D3370ED8(v9);
}

uint64_t sub_1D336DF60(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D336DFDC(a2, a3, a4);
  }

  return result;
}

void sub_1D336DFDC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v51 - v12;
  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D33DE464();
  __swift_project_value_buffer(v14, qword_1EC762160);

  v15 = sub_1D33DE444();
  v16 = sub_1D33DEAF4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v53 = v10;
    v18 = v17;
    v19 = swift_slowAlloc();
    v52 = v13;
    v20 = v19;
    v54 = v19;
    *v18 = 136315394;
    v21 = a1;
    if (a2)
    {
      v22 = a2;
    }

    else
    {
      a1 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = sub_1D3328B48(a1, v22, &v54);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = sub_1D331DA18(0, &unk_1EC761570, 0x1E69DCF30);
    v25 = MEMORY[0x1D38B6F50](a3, v24);
    v27 = sub_1D3328B48(v25, v26, &v54);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_1D331A000, v15, v16, "SearchViewController: Performing Search for searchText: %s searchTokens: %s", v18, 0x16u);
    swift_arrayDestroy();
    v28 = v20;
    v13 = v52;
    MEMORY[0x1D38B81C0](v28, -1, -1);
    v29 = v18;
    v10 = v53;
    MEMORY[0x1D38B81C0](v29, -1, -1);
  }

  else
  {
    v21 = a1;
  }

  sub_1D33DE4F4();
  if (a2)
  {
    if (!v55)
    {
      goto LABEL_21;
    }

    if (v54 == v21 && v55 == a2)
    {
    }

    else
    {
      v30 = sub_1D33DF1B4();

      if ((v30 & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  else if (v55)
  {

    goto LABEL_21;
  }

  v32 = sub_1D3374154(v31, a3);

  if (v32)
  {
    v33 = sub_1D33DE444();
    v34 = sub_1D33DEAF4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D331A000, v33, v34, "SearchTableDataSource: Aborting new search as text and tokens unchanged", v35, 2u);
      MEMORY[0x1D38B81C0](v35, -1, -1);
    }

    return;
  }

LABEL_21:
  v36 = v21;
  v54 = v21;
  v55 = a2;
  sub_1D33DE4E4();
  *(v4 + 64) = a3;

  v37 = sub_1D33DE444();
  v38 = sub_1D33DEAF4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1D331A000, v37, v38, "SearchTableDataSource: Setting new search task", v39, 2u);
    MEMORY[0x1D38B81C0](v39, -1, -1);
  }

  sub_1D33DDD24();
  v40 = sub_1D33DDD34();
  (*(*(v40 - 8) + 56))(v13, 0, 1, v40);
  v41 = OBJC_IVAR____TtC16CallsAppServices13SearchManager_lastSearchStartTime;
  swift_beginAccess();
  sub_1D3371CF4(v13, v4 + v41);
  swift_endAccess();
  v42 = swift_allocObject();
  v43 = MEMORY[0x1E69E7CC0];
  v42[2] = MEMORY[0x1E69E7CC0];
  v42[3] = v43;
  v42[4] = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  sub_1D33DE984();
  v45 = sub_1D33DE9B4();
  (*(*(v45 - 8) + 56))(v10, 0, 1, v45);
  sub_1D33DE974();

  v46 = sub_1D33DE964();
  v47 = swift_allocObject();
  v48 = MEMORY[0x1E69E85E0];
  v47[2] = v46;
  v47[3] = v48;
  v47[4] = v4;
  v47[5] = v36;
  v47[6] = a2;
  v47[7] = a3;
  v47[8] = v42;
  v47[9] = v44;
  v49 = sub_1D333DD88(0, 0, v10, &unk_1D33E2B78, v47);
  v50 = *(v4 + 104);
  *(v4 + 104) = v49;

  sub_1D336DBAC(v50);
}

uint64_t sub_1D336E5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15[-v7];
  swift_beginAccess();
  if (*(a1 + 16))
  {

    sub_1D33DE9D4();
  }

  v9 = sub_1D33DE9B4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1D33DE974();

  v10 = sub_1D33DE964();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a2;
  v11[5] = a3;
  v13 = sub_1D333DD88(0, 0, v8, &unk_1D33E2BC8, v11);
  swift_beginAccess();
  *(a1 + 16) = v13;
}

uint64_t sub_1D336E7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_1D33DEFE4();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_1D33DE974();
  v5[13] = sub_1D33DE964();
  v8 = sub_1D33DE914();
  v5[14] = v8;
  v5[15] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D336E89C, v8, v7);
}

uint64_t sub_1D336E89C(uint64_t a1)
{
  sub_1D33DF214();
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  v2[1] = sub_1D336E968;

  return sub_1D33710C8(200000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1D336E968()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  v3 = v2[15];
  v4 = v2[14];
  if (v0)
  {
    v5 = sub_1D336EBE4;
  }

  else
  {
    v5 = sub_1D336EAF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D336EAF0()
{
  v2 = v0[8];
  v1 = v0[9];

  swift_beginAccess();
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  swift_beginAccess();
  v6 = v2[9];
  v7 = v2[10];
  v8 = v2[11];
  v2[9] = v4;
  v2[10] = v3;
  v2[11] = v5;

  sub_1D33717A8(v6, v7, v8);
  sub_1D33DE4C4();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D336EBE4()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D336EC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  v8[9] = sub_1D33DE974();
  v8[10] = sub_1D33DE964();
  v10 = sub_1D33DE914();
  v8[11] = v10;
  v8[12] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D336ED08, v10, v9);
}

uint64_t sub_1D336ED08(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 40);
  v13 = *(v1 + 24);
  v14 = *(v1 + 48);
  v4 = sub_1D33DE964();
  *(v1 + 104) = v4;
  v5 = swift_task_alloc();
  *(v1 + 112) = v5;
  *(v5 + 16) = v13;
  *(v5 + 32) = v3;
  *(v5 + 40) = v14;
  *(v5 + 56) = v2;
  v6 = swift_task_alloc();
  *(v1 + 120) = v6;
  *v6 = v1;
  v6[1] = sub_1D336EE34;
  v7 = *(v1 + 16);
  v8 = MEMORY[0x1E69E7CA8] + 8;
  v9 = MEMORY[0x1E69E85E0];
  v10 = MEMORY[0x1E69E7CA8] + 8;
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v7, v8, v10, v4, v9, &unk_1D33E2B88, v5, v11);
}

uint64_t sub_1D336EE34()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D336EF94, v3, v2);
}

uint64_t sub_1D336EF94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D336EFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v8[12] = swift_task_alloc();
  sub_1D33DE974();
  v8[13] = sub_1D33DE964();
  v10 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D336F0D0, v10, v9);
}

uint64_t sub_1D336F0D0()
{
  v1 = v0[12];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v6 = v0[7];

  v19 = sub_1D33DE9B4();
  v18 = *(*(v19 - 8) + 56);
  v18(v1, 1, 1, v19);
  v8 = v7[3];
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v6;
  v9[5] = v4;
  v9[6] = v5;
  v9[7] = v3;
  v9[8] = v2;
  v9[9] = v7;
  v9[10] = v8;

  v10 = v8;

  sub_1D336F7A4(v1, &unk_1D33E2B98, v9);
  sub_1D331E880(v1, &unk_1EC7610E0, &qword_1D33E16C0);
  v18(v1, 1, 1, v19);
  v11 = v7[4];
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v6;
  v12[5] = v4;
  v12[6] = v5;
  v12[7] = v3;
  v12[8] = v2;
  v12[9] = v7;
  v12[10] = v11;

  v13 = v11;
  sub_1D336F7A4(v1, &unk_1D33E2BA8, v12);
  sub_1D331E880(v1, &unk_1EC7610E0, &qword_1D33E16C0);
  v18(v1, 1, 1, v19);
  v14 = v7[5];
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v6;
  v15[5] = v4;
  v15[6] = v5;
  v15[7] = v3;
  v15[8] = v2;
  v15[9] = v7;
  v15[10] = v14;

  sub_1D336F7A4(v1, &unk_1D33E2BB8, v15);
  sub_1D331E880(v1, &unk_1EC7610E0, &qword_1D33E16C0);
  swift_beginAccess();
  if (*(v2 + 16))
  {

    sub_1D33DE9D4();
  }

  sub_1D33DE4C4();

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D336F430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v10;
  v8[14] = v11;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D336F464, 0, 0);
}

uint64_t sub_1D336F464()
{
  sub_1D33DE974();
  v0[15] = sub_1D33DE964();
  v2 = sub_1D33DE914();
  v0[16] = v2;
  v0[17] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D336F4F8, v2, v1);
}

uint64_t sub_1D336F4F8()
{
  sub_1D3375E8C();
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_1D336F5AC;
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];

  return CallsSearchManager.search(with:searchTokens:)(v4, v2, v3);
}

uint64_t sub_1D336F5AC()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D336F6CC, v3, v2);
}

uint64_t sub_1D336F6CC()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];

  v5 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_results;
  swift_beginAccess();
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 16) = v6;

  sub_1D336E5FC(v2, v3, v4);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1D336F7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v20 - v9;
  sub_1D33723DC(a1, v20 - v9);
  v11 = sub_1D33DE9B4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D331E880(v10, &unk_1EC7610E0, &qword_1D33E16C0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1D33DE914();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D33DE9A4();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_1D336F9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v10;
  v8[14] = v11;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D336F9E0, 0, 0);
}

uint64_t sub_1D336F9E0()
{
  sub_1D33DE974();
  v0[15] = sub_1D33DE964();
  v2 = sub_1D33DE914();
  v0[16] = v2;
  v0[17] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D336FA74, v2, v1);
}

uint64_t sub_1D336FA74()
{
  sub_1D3375E8C();
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_1D336FB28;
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];

  return VoicemailSearchManager.search(with:searchTokens:)(v4, v2, v3);
}

uint64_t sub_1D336FB28()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D336FC48, v3, v2);
}

uint64_t sub_1D336FC48()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];

  v5 = OBJC_IVAR____TtC16CallsAppServices22VoicemailSearchManager_results;
  swift_beginAccess();
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 24) = v6;

  sub_1D336E5FC(v2, v3, v4);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1D336FD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v10;
  v8[14] = v11;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D336FD54, 0, 0);
}

uint64_t sub_1D336FD54()
{
  sub_1D33DE974();
  v0[15] = sub_1D33DE964();
  v2 = sub_1D33DE914();
  v0[16] = v2;
  v0[17] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D336FDE8, v2, v1);
}

uint64_t sub_1D336FDE8()
{
  v15 = v0;
  if (qword_1EC760998 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  __swift_project_value_buffer(v1, qword_1EC762148);

  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    v6 = sub_1D33C3880();
    v8 = sub_1D3328B48(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D331A000, v2, v3, "Search cancelled for %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1D38B81C0](v5, -1, -1);
    MEMORY[0x1D38B81C0](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_1D336FFC4;
  v10 = v0[9];
  v11 = v0[10];
  v12 = v0[8];

  return ContactSearchManager.search(with:searchTokens:)(v12, v10, v11);
}

uint64_t sub_1D336FFC4()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D33700E4, v3, v2);
}

uint64_t sub_1D33700E4()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];

  swift_beginAccess();
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 32) = v5;

  sub_1D336E5FC(v2, v3, v4);
  v6 = v0[1];

  return v6();
}

uint64_t SearchManager.deinit()
{

  sub_1D33717A8(*(v0 + 72), *(v0 + 80), *(v0 + 88));

  sub_1D331E880(v0 + OBJC_IVAR____TtC16CallsAppServices13SearchManager_lastSearchStartTime, &qword_1EC760E10, &unk_1D33E1A90);
  v1 = OBJC_IVAR____TtC16CallsAppServices13SearchManager_logger;
  v2 = sub_1D33DE464();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SearchManager.__deallocating_deinit()
{
  SearchManager.deinit();

  return swift_deallocClassInstance();
}

void SearchManager.redial(item:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 32);
  if (v4 == 2)
  {
    v8 = [*(v2 + 16) callProviderManager];
    v9 = Message.dialRequest(with:)(v8);

    v11 = [objc_opt_self() sharedInstance];
    v10 = [v11 dialWithRequest_];
  }

  else if (v4 == 4)
  {
    v5 = CHRecentCall.isGroupFaceTime.getter();
    v6 = *(v2 + 16);
    if (v5)
    {
      v7 = sel_performJoinRequestForRecentCall_;
    }

    else
    {
      v7 = sel_performDialRequestForRecentCall_;
    }

    [v6 v7];
  }
}

void SearchManager.dialAudio(contactResult:)(void *a1)
{
  v1 = sub_1D337049C(a1, 0, 0);
  if (v1)
  {
    v2 = v1;
    v4 = [objc_opt_self() sharedInstance];
    v3 = [v4 dialWithRequest_];
  }
}

id sub_1D337049C(void *a1, char a2, void *a3)
{
  v7 = [*(v3 + 16) callProviderManager];
  v8 = [a1 contact];
  v9 = [a1 preferredPhoneNumber];
  if (a2 & 1 | (a3 != 0))
  {
    v10 = &selRef_faceTimeProvider;
  }

  else
  {
    v10 = &selRef_telephonyProvider;
  }

  v11 = [v7 *v10];
  v12 = objc_opt_self();
  if ([v12 supportsTelephonyCalls])
  {
    if ([v12 isRelayCallingEnabled])
    {
      v13 = 1;
    }

    else
    {
      v13 = [v12 isThumperCallingEnabled];
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 1 && (v13 & 1) == 0)
  {
    v16 = [v7 faceTimeProvider];

    v11 = v16;
  }

  if ((a2 & 1) == 0)
  {
    if (v9)
    {
      v18 = [v9 value];
      v19 = [v18 stringValue];

      sub_1D33DE7B4();
    }

    else
    {
      v20 = [v8 phoneNumberStrings];
      v21 = sub_1D33DE8B4();

      if (!*(v21 + 16))
      {

        return 0;
      }
    }

    v22 = objc_opt_self();
    v23 = sub_1D33DE784();

    v17 = [v22 normalizedHandleWithDestinationID_];

    if (v17)
    {
      goto LABEL_21;
    }

    v27 = v8;
    v28 = sub_1D33DE444();
    v29 = sub_1D33DEAF4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_1D331A000, v28, v29, "SearchManager: Cannot able to create handle for contact %@ ", v30, 0xCu);
      sub_1D331E880(v31, &qword_1EC761D90, &unk_1D33E4E90);
      MEMORY[0x1D38B81C0](v31, -1, -1);
      MEMORY[0x1D38B81C0](v30, -1, -1);
    }

    else
    {
    }

LABEL_27:

    return 0;
  }

  if (!a3)
  {

    goto LABEL_27;
  }

  v17 = a3;
LABEL_21:
  v24 = v17;
  v25 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
  [v25 setHandle_];
  v26 = [v8 identifier];
  if (!v26)
  {
    sub_1D33DE7B4();
    v26 = sub_1D33DE784();
  }

  [v25 setContactIdentifier_];

  [v25 setVideo_];
  [v25 setOriginatingUIType_];

  return v25;
}

void sub_1D3370934(void *a1, void *a2, char a3)
{
  v3 = sub_1D337049C(a1, a3, a2);
  if (v3)
  {
    v4 = v3;
    v6 = [objc_opt_self() sharedInstance];
    v5 = [v6 dialWithRequest_];
  }
}

uint64_t sub_1D33709DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_1D33DEB74();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7614D0, &qword_1D33E2C08);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_logger;
  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v12 = sub_1D33DE464();
  v13 = __swift_project_value_buffer(v12, qword_1EC762160);
  (*(*(v12 - 8) + 16))(v1 + v11, v13, v12);
  *(v1 + OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_throttleTime) = 0x3FB999999999999ALL;
  v14 = OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_subject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7614D8, &qword_1D33E2C10);
  swift_allocObject();
  v15 = sub_1D33DE4D4();
  *(v1 + v14) = v15;
  v22 = OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_inputCancellable;
  *(v1 + OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_inputCancellable) = 0;
  *(v1 + OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_scheduledWorkItem) = 0;
  v28 = v15;

  sub_1D33DEB44();
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v16 = sub_1D33DEB94();
  v27 = v16;
  v17 = sub_1D33DEB34();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_1D334CB54(&qword_1EC7614E0, &qword_1EC7614D8, &qword_1D33E2C10, MEMORY[0x1E695BF88]);
  sub_1D3372504();
  sub_1D33DE614();
  sub_1D331E880(v4, &qword_1EC760F20, &qword_1D33E2290);

  (*(v23 + 8))(v7, v24);

  swift_allocObject();
  swift_weakInit();
  sub_1D334CB54(&qword_1EC7614E8, &qword_1EC7614D0, &qword_1D33E2C08, MEMORY[0x1E695BE50]);
  v18 = v26;
  v19 = sub_1D33DE644();

  (*(v25 + 8))(v10, v18);
  *(v1 + v22) = v19;

  return v1;
}

uint64_t sub_1D3370E38(uint64_t *a1, uint64_t a2)
{
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v2 = sub_1D33DEB94();
  sub_1D33DEBC4();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_scheduledWorkItem) = 0;
  }

  return result;
}

uint64_t sub_1D3370ED8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_scheduledWorkItem;
  if (*(v1 + OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_scheduledWorkItem))
  {
    v5 = sub_1D33DE444();
    v6 = sub_1D33DEAF4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D331A000, v5, v6, "SearchViewController: Throttling Search", v7, 2u);
      MEMORY[0x1D38B81C0](v7, -1, -1);
    }
  }

  else
  {
    sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
    v5 = sub_1D33DEB94();
    sub_1D33DEBC4();
  }

  *(v2 + v4) = a1;

  return sub_1D33DE4C4();
}

uint64_t sub_1D3370FFC()
{
  v1 = OBJC_IVAR____TtC16CallsAppServicesP33_CE9459785E7C7A88254F22E542B848618Throttle_logger;
  v2 = sub_1D33DE464();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D33710C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D33DEFD4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D33711C8, 0, 0);
}

uint64_t sub_1D33711C8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1D33DEFE4();
  v5 = sub_1D3372394(&qword_1EDEBEE38, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1D33DF1F4();
  sub_1D3372394(&unk_1EDEBEE40, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1D33DEFF4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D3371358;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1D3371358()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D3371514, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D3371514()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1D3371580(void *a1)
{
  v2 = v1;
  type metadata accessor for ContactSearchManager();
  swift_allocObject();
  *(v1 + 5) = sub_1D33C6344(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761430, &qword_1D33E2BF0);
  swift_allocObject();
  *(v1 + 6) = sub_1D33DE4D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7614C8, &unk_1D33E2BF8);
  swift_allocObject();
  v4 = sub_1D33DE504();
  v5 = MEMORY[0x1E69E7CC0];
  *(v1 + 7) = v4;
  *(v1 + 8) = v5;
  type metadata accessor for Throttle(0);
  *(v1 + 10) = 0;
  *(v1 + 11) = 0;
  *(v1 + 9) = 0;
  swift_allocObject();
  *(v1 + 12) = sub_1D33709DC();
  *(v1 + 13) = 0;
  v6 = OBJC_IVAR____TtC16CallsAppServices13SearchManager_lastSearchStartTime;
  v7 = sub_1D33DDD34();
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC16CallsAppServices13SearchManager_logger;
  if (qword_1EC760998 != -1)
  {
    swift_once();
  }

  v9 = sub_1D33DE464();
  v10 = __swift_project_value_buffer(v9, qword_1EC762148);
  (*(*(v9 - 8) + 16))(&v2[v8], v10, v9);
  *(v2 + 2) = a1;
  v11 = objc_allocWithZone(type metadata accessor for CallsSearchManager(0));
  v12 = a1;
  *(v2 + 3) = sub_1D33726D4(v12);
  v13 = [v12 callProviderManager];
  v14 = objc_allocWithZone(type metadata accessor for VoicemailSearchManager(0));
  *(v2 + 4) = sub_1D337EF48(v13);
  return v2;
}

uint64_t sub_1D33717A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of SearchResultsProviding.search(with:searchTokens:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D334D4B4;

  return v13(a1, a2, a3, a4, a5);
}

void sub_1D3371984(uint64_t a1)
{
  sub_1D3371B10(319);
  if (v1 <= 0x3F)
  {
    sub_1D33DE464();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D3371B10(uint64_t a1)
{
  if (!qword_1EDEC0010)
  {
    sub_1D33DDD34();
    v1 = sub_1D33DECF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEC0010);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D3371B7C(uint64_t *a1, int a2)
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

uint64_t sub_1D3371BC4(uint64_t result, int a2, int a3)
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

uint64_t sub_1D3371C3C(uint64_t a1)
{
  result = sub_1D33DE464();
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

uint64_t sub_1D3371CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3371D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D334D4B4;

  return sub_1D336EC58(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D3371E50(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D334D4B4;

  return sub_1D336EFF4(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_1D3371F2C(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D334D4B4;

  return sub_1D336F430(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_45Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D3372088(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D334D4B4;

  return sub_1D336F9AC(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D337217C(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D334D4B4;

  return sub_1D336FD20(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_2Tm(void (*a1)(void), void (*a2)(void))
{
  a1(v2[2]);
  a2(v2[4]);
  a2(v2[5]);

  return MEMORY[0x1EEE6BDD0](v2, 48, 7);
}

uint64_t sub_1D33722D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D334CF9C;

  return sub_1D336E7A8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D3372394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D33723DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D337244C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D334CF9C;

  return sub_1D331E8E0(a1, v4);
}

unint64_t sub_1D3372504()
{
  result = qword_1EDEBEED8;
  if (!qword_1EDEBEED8)
  {
    sub_1D331DA18(255, &qword_1EDEBEEC8, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBEED8);
  }

  return result;
}

uint64_t CallsSearchManager.searchText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_searchText);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t CallsSearchManager.searchText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_searchText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_1D33726D4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_results] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_resultIDs] = v5;
  *&v2[OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_spotlightSearchResultIDs] = v5;
  v6 = &v2[OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_searchText];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v2[OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_searchTokens] = v5;
  v7 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_featureFlags;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v8 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_logger;
  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v9 = sub_1D33DE464();
  v10 = __swift_project_value_buffer(v9, qword_1EC762160);
  (*(*(v9 - 8) + 16))(&v2[v8], v10, v9);
  v11 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_recentsUpdatedContinuation;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761560, &qword_1D33E2CC0);
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  *&v2[OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_recentsController] = a1;
  v13 = a1;
  v14 = [v13 callProviderManager];
  v15 = objc_allocWithZone(type metadata accessor for SpotlightSearchDataSource());
  *&v2[OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_dataSource] = sub_1D3376320(0, v14);
  v20.receiver = v2;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, sel_init);
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v17 = v16;
  v18 = sub_1D33DEB94();
  [v13 addDelegate:v17 queue:v18];

  return v17;
}

uint64_t sub_1D3372928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761568, &qword_1D33E2CC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761560, &qword_1D33E2CC0);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_recentsUpdatedContinuation;
  swift_beginAccess();
  sub_1D3375E04(v6, a2 + v9);
  return swift_endAccess();
}

uint64_t CallsSearchManager.search(with:searchTokens:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D33DE944();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = sub_1D33DE974();
  v4[17] = sub_1D33DE964();
  v7 = sub_1D33DE914();
  v4[18] = v7;
  v4[19] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D3372B5C, v7, v6);
}

uint64_t sub_1D3372B5C()
{
  v1 = v0[10];
  if (!v1)
  {
    goto LABEL_20;
  }

  if (sub_1D33DE834() > 0)
  {
    goto LABEL_5;
  }

  v2 = v0[11];
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_5;
    }

LABEL_20:
    v15 = v0[12];
    v16 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_results;
    swift_beginAccess();
    v17 = MEMORY[0x1E69E7CC0];
    *(v15 + v16) = MEMORY[0x1E69E7CC0];

    *(v15 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_resultIDs) = v17;

    *(v15 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_spotlightSearchResultIDs) = v17;

    v0[30] = sub_1D33DE964();
    v19 = sub_1D33DE914();
    v0[31] = v19;
    v0[32] = v18;

    return MEMORY[0x1EEE6DFA0](sub_1D33739F0, v19, v18);
  }

  if (sub_1D33DEE14() < 1)
  {
    goto LABEL_20;
  }

LABEL_5:
  v3 = (v0[12] + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_searchText);
  swift_beginAccess();
  v4 = v3[1];
  if (v4 && (*v3 == v0[9] ? (v5 = v4 == v0[10]) : (v5 = 0), v5 || (sub_1D33DF1B4() & 1) != 0))
  {
    v6 = v0[11];

    LOBYTE(v6) = sub_1D3374168(v7, v6, &unk_1EC761570, 0x1E69DCF30);

    if (v6)
    {

      v8 = v0[1];

      return v8();
    }
  }

  else
  {
  }

  v10 = v0[11];
  v11 = v0[12];
  *v3 = *(v0 + 9);

  *(v11 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_searchTokens) = v10;

  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_1D3372E50;
  v13 = v0[11];
  v14 = v0[9];

  return sub_1D3377A10(v14, v1, v13);
}

uint64_t sub_1D3372E50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v5 = *(v3 + 152);
  v6 = *(v3 + 144);
  if (v1)
  {
    v7 = sub_1D3373D40;
  }

  else
  {
    v7 = sub_1D3372F94;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D3372F94()
{
  v44 = v0;
  v1 = *(v0 + 176);
  sub_1D33DEA04();
  if (v1)
  {

    *(v0 + 64) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    if (swift_dynamicCast())
    {

      v3 = sub_1D33DE444();
      v4 = sub_1D33DEAD4();

      if (os_log_type_enabled(v3, v4))
      {
        v6 = *(v0 + 72);
        v5 = *(v0 + 80);
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v43[0] = v8;
        *v7 = 136315138;
        *(v7 + 4) = sub_1D3328B48(v6, v5, v43);
        _os_log_impl(&dword_1D331A000, v3, v4, "CallsSearchController: Search cancelled for '%s'", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x1D38B81C0](v8, -1, -1);
        MEMORY[0x1D38B81C0](v7, -1, -1);
      }

      (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
      goto LABEL_12;
    }

    v17 = sub_1D33DE444();
    v18 = sub_1D33DEAD4();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 72);
      v19 = *(v0 + 80);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1D3328B48(v20, v19, v43);
      _os_log_impl(&dword_1D331A000, v17, v18, "CallsSearchController: Failed to search for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1D38B81C0](v22, -1, -1);
      MEMORY[0x1D38B81C0](v21, -1, -1);
    }

LABEL_11:
LABEL_12:

    v23 = *(v0 + 8);

    return v23();
  }

  v9 = sub_1D33DE444();
  v10 = sub_1D33DEAF4();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 168);
  if (v11)
  {
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    v16 = v43[0];
    *v15 = 136315394;
    *(v15 + 4) = sub_1D3328B48(v14, v13, v43);
    *(v15 + 12) = 2048;
    *(v15 + 14) = *(v12 + 16);

    _os_log_impl(&dword_1D331A000, v9, v10, "CallsSearchController: Completed search for %s. Got %ld results", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1D38B81C0](v16, -1, -1);
    MEMORY[0x1D38B81C0](v15, -1, -1);
  }

  else
  {
  }

  v25 = *(v0 + 168);
  if (*(v25 + 16))
  {
    v43[0] = *(v0 + 168);

    sub_1D3375198(v43);
    v26 = *(v0 + 96);
    v27 = v43[0];
    v28 = OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_spotlightSearchResultIDs;
    v43[0] = *(v26 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_spotlightSearchResultIDs);
    swift_bridgeObjectRetain_n();
    sub_1D3375198(v43);

    v34 = sub_1D33743D0(v27, v43[0]);

    if (v34)
    {

      v17 = sub_1D33DE444();
      v35 = sub_1D33DEAF4();
      if (os_log_type_enabled(v17, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1D331A000, v17, v35, "CallsSearchController: Search calls did not change for calls search controller.", v36, 2u);
        MEMORY[0x1D38B81C0](v36, -1, -1);
      }

      goto LABEL_11;
    }

    v37 = sub_1D33DE444();
    v38 = sub_1D33DEAF4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = *(v25 + 16);

      _os_log_impl(&dword_1D331A000, v37, v38, "CallsSearchController: Search calls did changed! Search results count: %ld", v39, 0xCu);
      MEMORY[0x1D38B81C0](v39, -1, -1);
    }

    else
    {
    }

    *(v26 + v28) = *(v0 + 168);

    v40 = objc_opt_self();

    v41 = sub_1D33DE8A4();

    v42 = [v40 predicateForCallsWithAnyUniqueIDs_];

    v31 = v42;
  }

  else
  {
    v29 = *(v0 + 96);

    v30 = [objc_opt_self() predicateWithValue_];
    *(v29 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_spotlightSearchResultIDs) = MEMORY[0x1E69E7CC0];
    v31 = v30;
  }

  *(v0 + 184) = v31;
  *(v0 + 192) = sub_1D33DE964();
  v33 = sub_1D33DE914();
  *(v0 + 200) = v33;
  *(v0 + 208) = v32;

  return MEMORY[0x1EEE6DFA0](sub_1D337368C, v33, v32);
}

uint64_t sub_1D337368C()
{
  v1 = v0[12];
  [*(v1 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_recentsController) setPreFetchingPredicate_];
  v2 = sub_1D33DE964();
  v0[27] = v2;
  v3 = swift_task_alloc();
  v0[28] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_1D33737B0;
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v4, v2, v5, 0xD000000000000010, 0x80000001D33E6710, sub_1D3375E88, v3, v6);
}

uint64_t sub_1D33737B0()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1D3373910, v3, v2);
}

uint64_t sub_1D3373910()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1D337397C, v1, v2);
}

uint64_t sub_1D337397C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D33739F0()
{
  v1 = v0[12];
  [*(v1 + OBJC_IVAR____TtC16CallsAppServices18CallsSearchManager_recentsController) setPreFetchingPredicate_];
  v2 = sub_1D33DE964();
  v0[33] = v2;
  v3 = swift_task_alloc();
  v0[34] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_1D3373B14;
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v4, v2, v5, 0xD000000000000010, 0x80000001D33E6710, sub_1D3373FF8, v3, v6);
}

uint64_t sub_1D3373B14()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1D3373C74, v3, v2);
}

uint64_t sub_1D3373C74()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1D3373CD8, v1, v2);
}

uint64_t sub_1D3373CD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D3373D40()
{
  v18 = v0;

  v1 = *(v0 + 176);
  *(v0 + 64) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
  if (swift_dynamicCast())
  {

    v3 = sub_1D33DE444();
    v4 = sub_1D33DEAD4();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 72);
      v5 = *(v0 + 80);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1D3328B48(v6, v5, &v17);
      _os_log_impl(&dword_1D331A000, v3, v4, "CallsSearchController: Search cancelled for '%s'", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1D38B81C0](v8, -1, -1);
      MEMORY[0x1D38B81C0](v7, -1, -1);
    }

    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  }

  else
  {

    v9 = sub_1D33DE444();
    v10 = sub_1D33DEAD4();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 72);
      v11 = *(v0 + 80);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1D3328B48(v12, v11, &v17);
      _os_log_impl(&dword_1D331A000, v9, v10, "CallsSearchController: Failed to search for %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1D38B81C0](v14, -1, -1);
      MEMORY[0x1D38B81C0](v13, -1, -1);
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D3374000(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v11 = 1;
    }

    else
    {
      sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
      v5 = a2 + 48;
      v6 = a1 + 48;
      do
      {
        v7 = *(v6 - 8);
        v8 = *(v5 - 8);

        v9 = v7;

        v10 = v8;

        v11 = sub_1D33DEC74();

        if ((v11 & 1) == 0)
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

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1D3374168(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1D331DA18(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1D38B75D0](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x1D38B75D0](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_1D33DEC74();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1D33DEC74();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1D33DEE14();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1D33DEE14();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}