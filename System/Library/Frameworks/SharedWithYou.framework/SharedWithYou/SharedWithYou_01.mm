void sub_1BBC35768(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5380, &qword_1BBC445A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v54 - v13;
  if (sub_1BBC4111C() < 1)
  {
    v22 = sub_1BBC411DC();
    v23 = SWFrameworkLogHandle();
    if (!v23)
    {
      __break(1u);
      goto LABEL_41;
    }

    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA5800, &qword_1BBC44B38);
    v25 = swift_allocObject();
    v26 = v25;
    *(v25 + 16) = xmmword_1BBC441B0;
    if (a5)
    {
      v27 = 0xE500000000000000;
      if (a5 == 1)
      {
        v28 = 1768191329;
      }

      else
      {
        v28 = 1701079414;
      }

      v34 = v28 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
    }

    else
    {
      v27 = 0xE700000000000000;
      v34 = 0x6567617373656DLL;
    }

    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1BBC2B39C();
    *(v26 + 32) = v34;
    *(v26 + 40) = v27;
    sub_1BBC40A2C(v22, &dword_1BBC06000, v24, "Attempted to perform %@ communication action for attribution with an empty identifier!", 86, 2, v26);
  }

  else
  {
    v56 = a3;
    if (qword_1EBCA4F30 != -1)
    {
      swift_once();
    }

    v15 = sub_1BBC40A5C();
    __swift_project_value_buffer(v15, qword_1EBCA6AF8);

    v16 = sub_1BBC40A3C();
    v17 = sub_1BBC411CC();

    if (os_log_type_enabled(v16, v17))
    {
      v54[1] = a4;
      v55 = v6;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v57 = v19;
      *v18 = 136315394;
      if (a5)
      {
        if (a5 == 1)
        {
          v20 = 0x6F69647561;
        }

        else
        {
          v20 = 0x6F65646976;
        }

        v21 = 0xE500000000000000;
      }

      else
      {
        v20 = 0x6567617373656DLL;
        v21 = 0xE700000000000000;
      }

      v35 = sub_1BBC36DCC(v20, v21, &v57);

      *(v18 + 4) = v35;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_1BBC36DCC(a1, a2, &v57);
      _os_log_impl(&dword_1BBC06000, v16, v17, "Received request to perform %s communication action for attribution with identifier %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB19980](v19, -1, -1);
      MEMORY[0x1BFB19980](v18, -1, -1);

      v6 = v55;
      v29 = a5;
      if (!a5)
      {
        goto LABEL_33;
      }
    }

    else
    {

      v29 = a5;
      if (!a5)
      {
LABEL_33:
        v57 = 0;
        v58 = 0xE000000000000000;
        sub_1BBC4131C();

        v57 = 0xD00000000000001DLL;
        v58 = 0x80000001BBC47590;
        MEMORY[0x1BFB18D60](a1, a2);
        MEMORY[0x1BFB18D60](0x79616C7265766F26, 0xEA0000000000313DLL);
        v37 = v57;
        v36 = v58;
        sub_1BBC4087C();
        v38 = sub_1BBC4088C();
        v39 = (*(*(v38 - 8) + 48))(v14, 1, v38);
        sub_1BBC27FF0(v14, &qword_1EBCA5380, &qword_1BBC445A0);
        if (v39 != 1)
        {
          v46 = [objc_allocWithZone(MEMORY[0x1E69D3840]) init];
          v47 = *(v6 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_presentingViewController);
          if (v47)
          {
            v48 = v47;

            v49 = sub_1BBC410BC();
            v50 = sub_1BBC410BC();
            [v46 presentTranscriptForMessageGUID:v49 attachmentGUID:v50 presentingViewController:v48];

            return;
          }

          v51 = sub_1BBC411DC();
          v52 = SWFrameworkLogHandle();
          if (v52)
          {
            v53 = v52;

            sub_1BBC40A2C(v51, &dword_1BBC06000, v53, "presentingViewController is nil.", 32, 2, MEMORY[0x1E69E7CC0]);

            return;
          }

          goto LABEL_42;
        }

        v40 = sub_1BBC411DC();
        v41 = SWFrameworkLogHandle();
        if (v41)
        {
          v42 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA5800, &qword_1BBC44B38);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1BBC44F40;
          v44 = MEMORY[0x1E69E6158];
          *(v43 + 56) = MEMORY[0x1E69E6158];
          v45 = sub_1BBC2B39C();
          *(v43 + 32) = 0x6567617373656DLL;
          *(v43 + 40) = 0xE700000000000000;
          *(v43 + 96) = v44;
          *(v43 + 104) = v45;
          *(v43 + 64) = v45;
          *(v43 + 72) = a1;
          *(v43 + 80) = a2;
          *(v43 + 136) = v44;
          *(v43 + 144) = v45;
          *(v43 + 112) = v37;
          *(v43 + 120) = v36;

          sub_1BBC40A2C(v40, &dword_1BBC06000, v42, "Tried to open communication channel, but URL was nil. channel: %@. messageGUID %@. urlString: %@", 96, 2, v43);

          return;
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }
    }

    if (v29 == 1)
    {
      v30 = (v6 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_attributionIdentifier);
      *v30 = a1;
      v30[1] = a2;

      *(v6 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_videoEnabled) = 0;
    }

    else
    {
      v31 = (v6 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_attributionIdentifier);
      *v31 = a1;
      v31[1] = a2;

      *(v6 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_videoEnabled) = 1;
    }

    v32 = sub_1BBC355B8();
    v33 = [v32 connectionActive];

    if (v33)
    {

      sub_1BBC36218();
    }

    else
    {

      sub_1BBC35E48();
    }
  }
}

uint64_t sub_1BBC35E48()
{
  v1 = v0;
  v2 = sub_1BBC4106C();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BBC410AC();
  v5 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBCA4F30 != -1)
  {
    swift_once();
  }

  v8 = sub_1BBC40A5C();
  __swift_project_value_buffer(v8, qword_1EBCA6AF8);
  v9 = sub_1BBC40A3C();
  v10 = sub_1BBC411CC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1BBC36DCC(0xD000000000000013, 0x80000001BBC47510, aBlock);
    _os_log_impl(&dword_1BBC06000, v9, v10, "%s: Not currently connected to FaceTime service. We'll wait for the connection to finish posting pending notices.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1BFB19980](v12, -1, -1);
    MEMORY[0x1BFB19980](v11, -1, -1);
  }

  sub_1BBC1D534(0, &unk_1EBCA57D0, 0x1E69E9610);
  v13 = sub_1BBC4123C();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  aBlock[4] = sub_1BBC373E8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBC2B520;
  aBlock[3] = &block_descriptor_33;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  sub_1BBC4108C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BBC30F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA57E0, &unk_1BBC445D0);
  sub_1BBC1D5D4(&qword_1EBCA53D0, &qword_1EBCA57E0, &unk_1BBC445D0, MEMORY[0x1E69E6328]);
  sub_1BBC412CC();
  MEMORY[0x1BFB18E80](0, v7, v4, v15);
  _Block_release(v15);

  (*(v19 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v18);
}

double sub_1BBC36218()
{
  v1 = sub_1BBC4106C();
  v18 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BBC410AC();
  v4 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BBC4107C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBC1D534(0, &unk_1EBCA57D0, 0x1E69E9610);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F80], v7);
  v11 = sub_1BBC4126C();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_1BBC373C0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBC2B520;
  aBlock[3] = &block_descriptor_4;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  sub_1BBC4108C();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1BBC30F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA57E0, &unk_1BBC445D0);
  sub_1BBC1D5D4(&qword_1EBCA53D0, &qword_1EBCA57E0, &unk_1BBC445D0, MEMORY[0x1E69E6328]);
  sub_1BBC412CC();
  MEMORY[0x1BFB18E80](0, v6, v3, v13);
  _Block_release(v13);

  (*(v18 + 8))(v3, v1);
  (*(v4 + 8))(v6, v17);

  return result;
}

void sub_1BBC36594(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_attributionIdentifier + 8];
  if (!v1)
  {
    if (qword_1EBCA4F30 != -1)
    {
      swift_once();
    }

    v6 = sub_1BBC40A5C();
    __swift_project_value_buffer(v6, qword_1EBCA6AF8);
    oslog = sub_1BBC40A3C();
    v7 = sub_1BBC411CC();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BBC06000, oslog, v7, "No attribution identifier found, could not start facetime", v8, 2u);
      MEMORY[0x1BFB19980](v8, -1, -1);
    }

    return;
  }

  v3 = *&a1[OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_attributionIdentifier];

  v4 = sub_1BBC355B8();
  v5 = [v4 remoteService];

  if (v5)
  {
    sub_1BBC412BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  aBlock = v30;
  v26 = v31;
  if (*(&v31 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA57E8, &qword_1BBC45080);
    if (swift_dynamicCast())
    {
      v9 = v29;
      if ([v29 respondsToSelector_])
      {
        if (qword_1EBCA4F30 != -1)
        {
          swift_once();
        }

        v10 = sub_1BBC40A5C();
        __swift_project_value_buffer(v10, qword_1EBCA6AF8);

        v11 = a1;
        v12 = sub_1BBC40A3C();
        v13 = sub_1BBC411CC();

        v14 = &qword_1EBCA5000;
        if (os_log_type_enabled(v12, v13))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *&aBlock = v16;
          *v15 = 136315394;
          *(v15 + 4) = sub_1BBC36DCC(v3, v1, &aBlock);
          *(v15 + 12) = 1024;
          *(v15 + 14) = v11[OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_videoEnabled];

          _os_log_impl(&dword_1BBC06000, v12, v13, "Sending highlight to SLD to initiate FaceTime call for attribution identifier %s with video enabled: %{BOOL}d}", v15, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x1BFB19980](v16, -1, -1);
          v17 = v15;
          v14 = &qword_1EBCA5000;
          MEMORY[0x1BFB19980](v17, -1, -1);
        }

        else
        {
        }

        v20 = sub_1BBC410BC();

        v21 = v11[v14[244]];
        v22 = swift_allocObject();
        *(v22 + 16) = v3;
        *(v22 + 24) = v1;
        v27 = sub_1BBC373E0;
        v28 = v22;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v26 = sub_1BBC3501C;
        *(&v26 + 1) = &block_descriptor_26;
        v23 = _Block_copy(&aBlock);

        [v9 initiateTUConversationForAttributionIdentifier:v20 videoEnabled:v21 completion:v23];
        _Block_release(v23);
        swift_unknownObjectRelease();
        goto LABEL_22;
      }

      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    sub_1BBC27FF0(&aBlock, &unk_1EBCA5650, &unk_1BBC45070);
  }

  v18 = sub_1BBC411DC();
  v19 = SLFrameworkLogHandle();
  if (v19)
  {
    v20 = v19;

    sub_1BBC40A2C(v18, &dword_1BBC06000, v20, "We don't have a remote service conforming the the SLDFaceTimeService protocol", 77, 2, MEMORY[0x1E69E7CC0]);
LABEL_22:

    return;
  }

  __break(1u);
}

void sub_1BBC36A50(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EBCA4F30 != -1)
  {
    swift_once();
  }

  v5 = sub_1BBC40A5C();
  __swift_project_value_buffer(v5, qword_1EBCA6AF8);

  oslog = sub_1BBC40A3C();
  v6 = sub_1BBC411CC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1BBC36DCC(a2, a3, &v10);
    _os_log_impl(&dword_1BBC06000, oslog, v6, "FaceTime started for attribution with identifier: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1BFB19980](v8, -1, -1);
    MEMORY[0x1BFB19980](v7, -1, -1);
  }
}

id sub_1BBC36C68(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CommunicationManager(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1BBC36D78()
{
  result = qword_1EBCA57C8;
  if (!qword_1EBCA57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA57C8);
  }

  return result;
}

unint64_t sub_1BBC36DCC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BBC36E98(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1BBC1D3EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1BBC36E98(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BBC36FA4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1BBC4133C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1BBC36FA4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BBC36FF0(a1, a2);
  sub_1BBC37120(&unk_1F3ABA8C0);
  return v3;
}

void *sub_1BBC36FF0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BBC3720C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1BBC4133C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1BBC4113C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BBC3720C(v10, 0);
        result = sub_1BBC4130C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BBC37120(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1BBC37280(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1BBC3720C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA57F0, qword_1BBC45088);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1BBC37280(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA57F0, qword_1BBC45088);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

unint64_t sub_1BBC37374(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BBC4138C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1BBC373E8()
{
  v0 = sub_1BBC355B8();
  [v0 connect];
}

uint64_t sub_1BBC37448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BBC40CDC();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1BBC40CEC();
}

uint64_t sub_1BBC37540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BBC40CDC();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1BBC40CEC();
}

uint64_t sub_1BBC37638(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1BBC4105C();
}

uint64_t sub_1BBC3786C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5498, &qword_1BBC44980);
  sub_1BBC40FDC();
  return v2;
}

uint64_t sub_1BBC378D0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = type metadata accessor for _CollaborationDetailView(0, a3, a4, a4);
  v9 = &a5[*(v8 + 40)];
  sub_1BBC40FBC();
  *v9 = v12;
  *(v9 + 1) = v13;
  swift_getObjectType();
  sub_1BBC3AF20();
  *a5 = sub_1BBC40B1C();
  *(a5 + 1) = v10;
  return (*(*(a3 - 8) + 32))(&a5[*(v8 + 36)], a2, a3);
}

void _CollaborationDetailView.init(itemProvider:listContent:)(void *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(type metadata accessor for CollaborationDetailViewModel(0));
  v12 = a1;
  CollaborationDetailViewModel.init(itemProvider:)(v12);
  a2();
  sub_1BBC378D0(v11, a3, a4, a5);
}

void _CollaborationDetailView.init(itemProvider:contentTitle:collaborators:listContent:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v24 = a5;
  v25 = a8;
  v23[1] = a6;
  MEMORY[0x1EEE9AC00](a1);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(type metadata accessor for CollaborationDetailViewModel(0));
  v18 = a1;
  v19 = CollaborationDetailViewModel.init(itemProvider:)(v18);
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = a2;
  v27 = a3;
  v20 = v19;
  sub_1BBC40ACC();
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = a4;
  v21 = v20;
  v22 = sub_1BBC40ACC();
  v24(v22);
  sub_1BBC378D0(v16, a7, v25, a9);
}

uint64_t _CollaborationDetailView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5818, &qword_1BBC45150);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5820, &qword_1BBC45158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5828, &qword_1BBC45160);
  sub_1BBC40CFC();
  swift_getTupleTypeMetadata2();
  sub_1BBC4104C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5830, &qword_1BBC45168);
  sub_1BBC40B3C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5838, &qword_1BBC45170);
  sub_1BBC40B3C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBCA5840, &qword_1BBC45178);
  swift_getTupleTypeMetadata3();
  sub_1BBC4104C();
  WitnessTable = swift_getWitnessTable();
  v25 = MEMORY[0x1E69E73F0];
  v26 = WitnessTable;
  sub_1BBC40E4C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v4 = sub_1BBC40B3C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = MEMORY[0x1E697EBF8];
  v5 = swift_getWitnessTable();
  v23 = v4;
  v24 = v5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = *(OpaqueTypeMetadata2 - 8);
  v8 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v19 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  sub_1BBC38058(a1, v10);
  v23 = v4;
  v24 = v5;
  swift_getOpaqueTypeConformance2();
  sub_1BBC38A6C(v10, OpaqueTypeMetadata2, v13);
  v16 = *(v7 + 8);
  v16(v10, OpaqueTypeMetadata2);
  v17 = *(v7 + 16);
  v17(v15, v13, OpaqueTypeMetadata2);
  v16(v13, OpaqueTypeMetadata2);
  v17(v20, v15, OpaqueTypeMetadata2);
  return (v16)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_1BBC38058@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a1;
  v66 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5818, &qword_1BBC45150);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5820, &qword_1BBC45158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5828, &qword_1BBC45160);
  v50 = *(a1 + 16);
  sub_1BBC40CFC();
  swift_getTupleTypeMetadata2();
  sub_1BBC4104C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5830, &qword_1BBC45168);
  sub_1BBC40B3C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5838, &qword_1BBC45170);
  sub_1BBC40B3C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBCA5840, &qword_1BBC45178);
  swift_getTupleTypeMetadata3();
  v47 = sub_1BBC4104C();
  WitnessTable = swift_getWitnessTable();
  v72 = MEMORY[0x1E69E73E0];
  v73 = v47;
  v74 = MEMORY[0x1E69E73F0];
  v75 = WitnessTable;
  v3 = sub_1BBC40E4C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - v5;
  v7 = swift_getWitnessTable();
  v72 = v3;
  v73 = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = &v45 - v9;
  v72 = v3;
  v73 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = OpaqueTypeMetadata2;
  v73 = OpaqueTypeConformance2;
  v12 = swift_getOpaqueTypeMetadata2();
  v59 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v45 - v13;
  v72 = OpaqueTypeMetadata2;
  v73 = OpaqueTypeConformance2;
  v48 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  v72 = v12;
  v73 = v14;
  v15 = swift_getOpaqueTypeMetadata2();
  v64 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v45 - v16;
  v65 = v17;
  v18 = sub_1BBC40B3C();
  v62 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v45 - v19;
  v54 = v12;
  v72 = v12;
  v73 = v14;
  v55 = v14;
  v53 = swift_getOpaqueTypeConformance2();
  v70 = v53;
  v71 = MEMORY[0x1E697EBF8];
  v20 = swift_getWitnessTable();
  v63 = v18;
  v72 = v18;
  v73 = v20;
  v57 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v56 = &v45 - v26;
  v27 = *(v51 + 24);
  v67 = v50;
  v68 = v27;
  v69 = v52;
  sub_1BBC40E3C();
  sub_1BBC40F1C();
  (*(v4 + 8))(v6, v3);
  LOBYTE(v12) = sub_1BBC40DDC();
  sub_1BBC40DFC();
  sub_1BBC40DFC();
  if (sub_1BBC40DFC() != v12)
  {
    sub_1BBC40DFC();
  }

  v28 = objc_opt_self();
  v29 = [v28 currentDevice];
  [v29 userInterfaceIdiom];

  v30 = v58;
  sub_1BBC40EBC();
  (*(v49 + 8))(v10, OpaqueTypeMetadata2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA58D8, &qword_1BBC45210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BBC44A10;
  v32 = sub_1BBC40DBC();
  *(inited + 32) = v32;
  v33 = sub_1BBC40DEC();
  *(inited + 33) = v33;
  sub_1BBC40DFC();
  sub_1BBC40DFC();
  if (sub_1BBC40DFC() != v32)
  {
    sub_1BBC40DFC();
  }

  sub_1BBC40DFC();
  if (sub_1BBC40DFC() != v33)
  {
    sub_1BBC40DFC();
  }

  v34 = [v28 currentDevice];
  [v34 userInterfaceIdiom];

  v35 = v61;
  v36 = v54;
  sub_1BBC40EBC();
  (*(v59 + 8))(v30, v36);
  v37 = [v28 currentDevice];
  [v37 userInterfaceIdiom];

  sub_1BBC4103C();
  v38 = v65;
  v39 = v60;
  sub_1BBC40F2C();
  (*(v64 + 8))(v35, v38);
  v40 = v63;
  sub_1BBC40EDC();
  (*(v62 + 8))(v39, v40);
  v41 = *(v22 + 16);
  v42 = v56;
  v41(v56, v25, v21);
  v43 = *(v22 + 8);
  v43(v25, v21);
  v41(v66, v42, v21);
  return (v43)(v42, v21);
}

uint64_t sub_1BBC38A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7);
  (v8)(a3, v7, a2);
  return (*(v5 + 8))(v7, a2);
}

uint64_t sub_1BBC38B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA58E0, &qword_1BBC45218);
  v80 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v71 = v66 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBCA5840, &qword_1BBC45178);
  v8 = MEMORY[0x1EEE9AC00](v81);
  v82 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v84 = v66 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5820, &qword_1BBC45158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5828, &qword_1BBC45160);
  sub_1BBC40CFC();
  swift_getTupleTypeMetadata2();
  v74 = sub_1BBC4104C();
  v76 = *(v74 - 1);
  MEMORY[0x1EEE9AC00](v74);
  v73 = v66 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5830, &qword_1BBC45168);
  v75 = sub_1BBC40B3C();
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5838, &qword_1BBC45170);
  v12 = sub_1BBC40B3C();
  v13 = *(v12 - 8);
  v89 = v12;
  v90 = v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v88 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v87 = v66 - v16;
  v17 = sub_1BBC40BBC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5818, &qword_1BBC45150);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v79 = v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v66 - v24;
  v72 = type metadata accessor for _CollaborationDetailView(0, a2, a3, v26);
  sub_1BBC39564(v72);
  sub_1BBC40BAC();
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA58E8, &qword_1BBC45220) + 36);
  v28 = *(v18 + 16);
  v68 = v18 + 16;
  v67 = v28;
  v28(&v25[v27], v20, v17);
  v29 = *(v18 + 56);
  v29(&v25[v27], 0, 1, v17);
  KeyPath = swift_getKeyPath();
  v77 = v21;
  v31 = *(v21 + 36);
  v78 = v25;
  v32 = &v25[v31];
  v33 = *(v85 + 28);
  v34 = *(v18 + 32);
  v66[1] = v18 + 32;
  v66[0] = v34;
  v34(v32 + v33, v20, v17);
  v70 = v29;
  v69 = v18 + 56;
  v29(v32 + v33, 0, 1, v17);
  v35 = v72;
  *v32 = KeyPath;
  v36 = v73;
  v37 = a1;
  sub_1BBC396F0(v35, v73);
  sub_1BBC40BAC();
  v38 = v74;
  WitnessTable = swift_getWitnessTable();
  v40 = v88;
  sub_1BBC40F0C();
  (*(v18 + 8))(v20, v17);
  (*(v76 + 1))(v36, v38);
  v41 = sub_1BBC1D5D4(&qword_1EBCA58F0, &qword_1EBCA5830, &qword_1BBC45168, MEMORY[0x1E697FDC0]);
  v95[5] = WitnessTable;
  v95[6] = v41;
  v42 = swift_getWitnessTable();
  v43 = sub_1BBC1D5D4(&qword_1EBCA58F8, &qword_1EBCA5838, &qword_1BBC45170, MEMORY[0x1E6980A18]);
  v95[3] = v42;
  v95[4] = v43;
  v44 = v89;
  v75 = swift_getWitnessTable();
  v45 = v90;
  v74 = *(v90 + 16);
  (v74)(v87, v40, v44);
  v46 = *(v45 + 8);
  v90 = v45 + 8;
  v76 = v46;
  v46(v40, v44);
  v47 = *(v37 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v48 = v47;
  sub_1BBC40ABC(v95);

  v49 = 1;
  if (LOBYTE(v95[0]) == 1)
  {
    v50 = v71;
    sub_1BBC39C34(v35, v71);
    sub_1BBC40BAC();
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5960, &qword_1BBC452D8) + 36);
    v67(v50 + v51, v20, v17);
    v52 = v70;
    v70((v50 + v51), 0, 1, v17);
    v53 = swift_getKeyPath();
    v54 = (v50 + *(v86 + 36));
    v55 = *(v85 + 28);
    (v66[0])(v54 + v55, v20, v17);
    v52(v54 + v55, 0, 1, v17);
    *v54 = v53;
    sub_1BBC09838(v50, v84);
    v49 = 0;
  }

  v56 = v84;
  (*(v80 + 56))(v84, v49, 1, v86);
  v57 = v78;
  v58 = v79;
  sub_1BBC280C0(v78, v79, &qword_1EBCA5818, &qword_1BBC45150);
  v95[0] = v58;
  v60 = v87;
  v59 = v88;
  v61 = v89;
  (v74)(v88, v87, v89);
  v95[1] = v59;
  v62 = v82;
  sub_1BBC280C0(v56, v82, qword_1EBCA5840, &qword_1BBC45178);
  v95[2] = v62;
  v94[0] = v77;
  v94[1] = v61;
  v94[2] = v81;
  v91 = sub_1BBC3B4FC();
  v92 = v75;
  v93 = sub_1BBC3BA1C(&qword_1EBCA5948, qword_1EBCA5840, &qword_1BBC45178, sub_1BBC3B880);
  sub_1BBC37638(v95, 3uLL, v94);
  sub_1BBC27FF0(v56, qword_1EBCA5840, &qword_1BBC45178);
  v63 = v60;
  v64 = v76;
  v76(v63, v61);
  sub_1BBC27FF0(v57, &qword_1EBCA5818, &qword_1BBC45150);
  sub_1BBC27FF0(v62, qword_1EBCA5840, &qword_1BBC45178);
  v64(v59, v61);
  return sub_1BBC27FF0(v58, &qword_1EBCA5818, &qword_1BBC45150);
}

uint64_t sub_1BBC39564(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5910, &qword_1BBC452C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10[-v5];
  v11 = *(a1 + 16);
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5A60, &unk_1BBC45440);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5920, &qword_1BBC452C8);
  v8 = sub_1BBC3B774();
  v13 = v7;
  v14 = v8;
  swift_getOpaqueTypeConformance2();
  sub_1BBC4102C();
  sub_1BBC40DCC();
  sub_1BBC3B6A8();
  sub_1BBC40EFC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BBC396F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5828, &qword_1BBC45160);
  v5 = *(a1 + 16);
  v44 = v4;
  v6 = sub_1BBC40CFC();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v40 - v10;
  v11 = *(v5 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v41 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v40 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v43 = a1;
  v20 = *(a1 + 36);
  v21 = *(v11 + 16);
  v21(&v40 - v22, v2 + v20, v5);
  v42 = swift_dynamicCast();
  v21(v19, v2 + v20, v5);
  if (swift_dynamicCast())
  {
    v23 = v63;
    v24 = sub_1BBC4100C();
    v25 = v23;
    [v25 frame];
    v27 = v26;
    [v25 frame];
    [v25 systemLayoutSizeFittingSize_];
    sub_1BBC4103C();
    sub_1BBC40B0C();
    *(v59 + 7) = v64;
    *(&v59[1] + 7) = v65;
    *(&v59[2] + 7) = v66;
    *&v57[0] = v25;
    *(&v57[0] + 1) = v24;
    memset(&v57[1], 0, 32);
    v58[0] = 0;
    *&v58[48] = *(&v66 + 1);
    *&v58[33] = v59[2];
    *&v58[17] = v59[1];
    *&v58[1] = v59[0];
    v54 = *&v58[16];
    v55 = *&v58[32];
    v56 = *&v58[48];
    v50 = v57[0];
    v51 = 0u;
    v52 = 0u;
    v53 = *v58;
    sub_1BBC280C0(v57, v59, &qword_1EBCA5828, &qword_1BBC45160);
    v29 = sub_1BBC3C10C();
    v30 = *(v43 + 24);
    v31 = v45;
    sub_1BBC37448(&v50, v44, v5, v29, v30);

    sub_1BBC27FF0(v57, &qword_1EBCA5828, &qword_1BBC45160);
    v59[4] = v54;
    v59[5] = v55;
    v60 = v56;
    v59[0] = v50;
    v59[1] = v51;
    v59[2] = v52;
    v59[3] = v53;
    sub_1BBC27FF0(v59, &qword_1EBCA5828, &qword_1BBC45160);
  }

  else
  {
    v30 = *(v43 + 24);
    v21(v16, v2 + v20, v5);
    v32 = v41;
    v21(v41, v16, v5);
    v33 = sub_1BBC3C10C();
    v31 = v45;
    sub_1BBC37540(v32, v44, v5, v33, v30);
    v34 = *(v11 + 8);
    v34(v32, v5);
    v34(v16, v5);
  }

  LOBYTE(v63) = v42;
  *&v59[0] = &v63;
  v36 = v46;
  v35 = v47;
  v37 = v48;
  (*(v47 + 16))(v46, v31, v48);
  *(&v59[0] + 1) = v36;
  *&v57[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5820, &qword_1BBC45158);
  *(&v57[0] + 1) = v37;
  *&v50 = sub_1BBC3C35C();
  v61 = sub_1BBC3C10C();
  v62 = v30;
  *(&v50 + 1) = swift_getWitnessTable();
  sub_1BBC37638(v59, 2uLL, v57);
  v38 = *(v35 + 8);
  v38(v31, v37);
  return (v38)(v36, v37);
}

uint64_t sub_1BBC39C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5980, &qword_1BBC452E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5228, &unk_1BBC446E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v24 - v7);
  v9 = type metadata accessor for CollaborationInfo(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v13;
  sub_1BBC40ABC(v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BBC27FF0(v8, &qword_1EBCA5228, &unk_1BBC446E0);
  }

  else
  {
    sub_1BBC27F8C(v8, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v14;
    sub_1BBC40ABC(v28);

    if (LOBYTE(v28[0]) == 1)
    {
      v24 = &v24;
      MEMORY[0x1EEE9AC00](v16);
      *(&v24 - 2) = *(v25 + 16);
      *(&v24 - 2) = v2;
      *(&v24 - 1) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59E8, &qword_1BBC45370);
      v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5988, &qword_1BBC452F0);
      v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5990, &qword_1BBC452F8);
      v19 = sub_1BBC1D5D4(&qword_1EBCA5998, &qword_1EBCA5988, &qword_1BBC452F0, MEMORY[0x1E697D680]);
      v20 = sub_1BBC3BBC4();
      v28[0] = v17;
      v28[1] = v18;
      v28[2] = v19;
      v28[3] = v20;
      swift_getOpaqueTypeConformance2();
      v21 = v26;
      sub_1BBC4102C();
      v22 = v27;
      (*(v4 + 32))(v27, v21, v3);
      (*(v4 + 56))(v22, 0, 1, v3);
      return sub_1BBC28128(v12);
    }

    sub_1BBC28128(v12);
  }

  return (*(v4 + 56))(v27, 1, 1, v3);
}

double sub_1BBC3A048(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1BBC40FBC();
  type metadata accessor for CollaborationDetailViewModel(0);
  sub_1BBC3AF20();
  sub_1BBC40B1C();
  v4 = v2;
  sub_1BBC4100C();
  sub_1BBC40AFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5920, &qword_1BBC452C8);
  sub_1BBC3B774();
  sub_1BBC40EEC();

  return result;
}

uint64_t sub_1BBC3A154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a2;
  v43 = a5;
  v8 = type metadata accessor for CollaborationInfo(0);
  v39 = *(v8 - 8);
  v38 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _CollaborationDetailView(0, a3, a4, v10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5988, &qword_1BBC452F0);
  v17 = *(v16 - 8);
  v41 = v16;
  v42 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v29 - v18;
  v33 = *(v12 + 16);
  v33(v15, a1, v11);
  v19 = *(v12 + 80);
  v32 = ((v19 + 32) & ~v19) + v13;
  v20 = (v19 + 32) & ~v19;
  v35 = v20;
  v36 = v19 | 7;
  v21 = swift_allocObject();
  v30 = a3;
  v31 = a4;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  v34 = *(v12 + 32);
  v34(v21 + v20, v15, v11);
  v45 = a3;
  v46 = a4;
  v47 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59F0, &unk_1BBC45378);
  sub_1BBC1D5D4(&qword_1EBCA59F8, &qword_1EBCA59F0, &unk_1BBC45378, MEMORY[0x1E69817F8]);
  sub_1BBC40FFC();
  sub_1BBC3786C(v11);
  v33(v15, a1, v11);
  v22 = v37;
  sub_1BBC27EC8(v40, v37);
  v23 = (v32 + *(v39 + 80)) & ~*(v39 + 80);
  v24 = swift_allocObject();
  v25 = v31;
  *(v24 + 16) = v30;
  *(v24 + 24) = v25;
  v34(v24 + v35, v15, v11);
  sub_1BBC27F8C(v22, v24 + v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5990, &qword_1BBC452F8);
  sub_1BBC1D5D4(&qword_1EBCA5998, &qword_1EBCA5988, &qword_1BBC452F0, MEMORY[0x1E697D680]);
  sub_1BBC3BBC4();
  v26 = v41;
  v27 = v44;
  sub_1BBC40F4C();

  return (*(v42 + 8))(v27, v26);
}

double sub_1BBC3A5A4@<D0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_1BBC40B9C();
  v18 = 1;
  sub_1BBC3A6DC(a1, &v12);
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v19 = v12;
  v24[1] = v13;
  v24[2] = v14;
  v24[3] = v15;
  v25 = v16;
  v24[0] = v12;
  sub_1BBC280C0(&v19, v11, &qword_1EBCA5A00, qword_1BBC45388);
  sub_1BBC27FF0(v24, &qword_1EBCA5A00, qword_1BBC45388);
  *&v17[7] = v19;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  v7 = *v17;
  *(a4 + 33) = *&v17[16];
  v8 = *&v17[48];
  *(a4 + 49) = *&v17[32];
  *(a4 + 65) = v8;
  result = *&v17[63];
  *(a4 + 80) = *&v17[63];
  v10 = v18;
  *a4 = v6;
  *(a4 + 8) = 0;
  *(a4 + 16) = v10;
  *(a4 + 17) = v7;
  return result;
}

uint64_t sub_1BBC3A6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_1BBC40ABC(&v25);

  sub_1BBC3C0B8();
  v5 = sub_1BBC40E8C();
  v7 = v6;
  v9 = v8;
  sub_1BBC40F6C();
  v10 = sub_1BBC40E5C();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_1BBC2AD44(v5, v7, v9 & 1);

  v17 = sub_1BBC40F8C();
  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (v19 == 6)
  {
    v20 = sub_1BBC40F6C();
  }

  else
  {
    v20 = sub_1BBC40F5C();
  }

  v21 = v20;
  KeyPath = swift_getKeyPath();
  v23 = v14 & 1;
  LOBYTE(v25) = v23;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v23;
  *(a2 + 24) = v16;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v17;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = v21;
  sub_1BBC2AD54(v10, v12, v23);

  sub_1BBC2AD44(v10, v12, v23);
}

uint64_t sub_1BBC3A8C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for _CollaborationDetailView(0, a2, a3, a3);
  sub_1BBC3A920(a1);
  result = sub_1BBC40DCC();
  *(a4 + 27) = result;
  return result;
}

uint64_t sub_1BBC3A920(uint64_t a1)
{
  v2 = sub_1BBC4088C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v4);
  v8 = v22 - v7 + 16;
  v9 = type metadata accessor for CollaborationInfo(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_1BBC27EC8(a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BBC28128(v11);
      v30 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59C0, &qword_1BBC45308);
      sub_1BBC3BCDC();
      return sub_1BBC40CEC();
    }

    else
    {
      (*(v3 + 32))(v8, v11, v2);
      (*(v3 + 16))(v6, v8, v2);
      v18 = sub_1BBC2B01C(v6);
      if (v18)
      {
        v23 = v18;
        LOBYTE(v24) = 0;
      }

      else
      {
        v23 = 0;
        LOBYTE(v24) = 1;
      }

      sub_1BBC2AF74();
      sub_1BBC40CEC();
      v19 = v26;
      v20 = v27;
      v29 = 1;
      sub_1BBC3BFF0(v26, v27);
      sub_1BBC3BFF0(v19, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59D0, &qword_1BBC45310);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59E0, &unk_1BBC45318);
      sub_1BBC3BD68();
      sub_1BBC3BDF4();
      sub_1BBC40CEC();
      sub_1BBC280C0(&v23, &v26, &qword_1EBCA59C0, &qword_1BBC45308);
      v30 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59C0, &qword_1BBC45308);
      sub_1BBC3BCDC();
      sub_1BBC40CEC();
      sub_1BBC3BFFC(v19, v20);
      sub_1BBC3BFFC(v19, v20);
      sub_1BBC27FF0(&v23, &qword_1EBCA59C0, &qword_1BBC45308);
      return (*(v3 + 8))(v8, v2);
    }
  }

  else
  {
    v15 = *v11;
    v14 = *(v11 + 1);
    if (v11[16] == 1)
    {
      swift_beginAccess();
      swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();
      v16 = v15;
      v17 = v14;
      swift_unknownObjectRelease();
      v24 = v16;
      v25 = v17;
      sub_1BBC3C008(&v23, &v26);
      v28 = 0;
      sub_1BBC34F74();
      sub_1BBC40CEC();
      sub_1BBC3C064(&v23);
    }

    else
    {
      v28 = 1;
      sub_1BBC34F74();
      sub_1BBC40CEC();
    }

    sub_1BBC280C0(v22, &v26, &qword_1EBCA59D0, &qword_1BBC45310);
    v29 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59D0, &qword_1BBC45310);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59E0, &unk_1BBC45318);
    sub_1BBC3BD68();
    sub_1BBC3BDF4();
    sub_1BBC40CEC();
    sub_1BBC280C0(&v23, &v26, &qword_1EBCA59C0, &qword_1BBC45308);
    v30 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA59C0, &qword_1BBC45308);
    sub_1BBC3BCDC();
    sub_1BBC40CEC();

    sub_1BBC27FF0(&v23, &qword_1EBCA59C0, &qword_1BBC45308);
    return sub_1BBC27FF0(v22, &qword_1EBCA59D0, &qword_1BBC45310);
  }
}

void _CollaborationDetailView<>.init(itemProvider:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_allocWithZone(type metadata accessor for CollaborationDetailViewModel(0));
  v5 = a1;
  CollaborationDetailViewModel.init(itemProvider:)(v5);
  sub_1BBC40FBC();
  sub_1BBC3AF20();
  v6 = sub_1BBC40B1C();
  v8 = v7;

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
}

unint64_t sub_1BBC3AF20()
{
  result = qword_1EBCA54F8;
  if (!qword_1EBCA54F8)
  {
    type metadata accessor for CollaborationDetailViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA54F8);
  }

  return result;
}

void sub_1BBC3AFC4(uint64_t a1)
{
  sub_1BBC3B394(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1BBC3B3F8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BBC3B064(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1BBC3B1AC(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1BBC3B394(uint64_t a1)
{
  if (!qword_1EBCA58C8)
  {
    type metadata accessor for CollaborationDetailViewModel(255);
    sub_1BBC3AF20();
    v1 = sub_1BBC40B2C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBCA58C8);
    }
  }
}

void sub_1BBC3B3F8()
{
  if (!qword_1EBCA58D0)
  {
    v0 = sub_1BBC40FEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCA58D0);
    }
  }
}

uint64_t sub_1BBC3B454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5A58, &qword_1BBC45438);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BBC280C0(a1, &v6 - v3, &qword_1EBCA5A58, &qword_1BBC45438);
  return MEMORY[0x1BFB187C0](v4);
}

unint64_t sub_1BBC3B4FC()
{
  result = qword_1EBCA5900;
  if (!qword_1EBCA5900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5818, &qword_1BBC45150);
    sub_1BBC3B5B4();
    sub_1BBC1D5D4(&qword_1EBCA58F8, &qword_1EBCA5838, &qword_1BBC45170, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5900);
  }

  return result;
}

unint64_t sub_1BBC3B5B4()
{
  result = qword_1EBCA5908;
  if (!qword_1EBCA5908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA58E8, &qword_1BBC45220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5910, &qword_1BBC452C0);
    sub_1BBC3B6A8();
    swift_getOpaqueTypeConformance2();
    sub_1BBC1D5D4(&qword_1EBCA58F0, &qword_1EBCA5830, &qword_1BBC45168, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5908);
  }

  return result;
}

unint64_t sub_1BBC3B6A8()
{
  result = qword_1EBCA5918;
  if (!qword_1EBCA5918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5910, &qword_1BBC452C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5920, &qword_1BBC452C8);
    sub_1BBC3B774();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5918);
  }

  return result;
}

unint64_t sub_1BBC3B774()
{
  result = qword_1EBCA5928;
  if (!qword_1EBCA5928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5920, &qword_1BBC452C8);
    sub_1BBC3B82C();
    sub_1BBC1D5D4(&qword_1EBCA5938, &qword_1EBCA5940, &qword_1BBC452D0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5928);
  }

  return result;
}

unint64_t sub_1BBC3B82C()
{
  result = qword_1EBCA5930;
  if (!qword_1EBCA5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5930);
  }

  return result;
}

unint64_t sub_1BBC3B880()
{
  result = qword_1EBCA5950;
  if (!qword_1EBCA5950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA58E0, &qword_1BBC45218);
    sub_1BBC3B938();
    sub_1BBC1D5D4(&qword_1EBCA58F8, &qword_1EBCA5838, &qword_1BBC45170, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5950);
  }

  return result;
}

unint64_t sub_1BBC3B938()
{
  result = qword_1EBCA5958;
  if (!qword_1EBCA5958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5960, &qword_1BBC452D8);
    sub_1BBC3BA1C(&qword_1EBCA5968, &qword_1EBCA5970, &qword_1BBC452E0, sub_1BBC3BA98);
    sub_1BBC1D5D4(&qword_1EBCA58F0, &qword_1EBCA5830, &qword_1BBC45168, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5958);
  }

  return result;
}

uint64_t sub_1BBC3BA1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BBC3BA98()
{
  result = qword_1EBCA5978;
  if (!qword_1EBCA5978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5980, &qword_1BBC452E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5988, &qword_1BBC452F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5990, &qword_1BBC452F8);
    sub_1BBC1D5D4(&qword_1EBCA5998, &qword_1EBCA5988, &qword_1BBC452F0, MEMORY[0x1E697D680]);
    sub_1BBC3BBC4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5978);
  }

  return result;
}

unint64_t sub_1BBC3BBC4()
{
  result = qword_1EBCA59A0;
  if (!qword_1EBCA59A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5990, &qword_1BBC452F8);
    sub_1BBC3BC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA59A0);
  }

  return result;
}

unint64_t sub_1BBC3BC50()
{
  result = qword_1EBCA59A8;
  if (!qword_1EBCA59A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA59B0, &qword_1BBC45300);
    sub_1BBC3BCDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA59A8);
  }

  return result;
}

unint64_t sub_1BBC3BCDC()
{
  result = qword_1EBCA59B8;
  if (!qword_1EBCA59B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA59C0, &qword_1BBC45308);
    sub_1BBC3BD68();
    sub_1BBC3BDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA59B8);
  }

  return result;
}

unint64_t sub_1BBC3BD68()
{
  result = qword_1EBCA59C8;
  if (!qword_1EBCA59C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA59D0, &qword_1BBC45310);
    sub_1BBC34F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA59C8);
  }

  return result;
}

unint64_t sub_1BBC3BDF4()
{
  result = qword_1EBCA59D8;
  if (!qword_1EBCA59D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA59E0, &unk_1BBC45318);
    sub_1BBC2AF74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA59D8);
  }

  return result;
}

uint64_t sub_1BBC3BF00@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for _CollaborationDetailView(0, v4, v5, a1) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for CollaborationInfo(0) - 8);
  v10 = v2 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_1BBC3A8C8(v10, v4, v5, a2);
}

id sub_1BBC3BFF0(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

void sub_1BBC3BFFC(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

unint64_t sub_1BBC3C0B8()
{
  result = qword_1EBCA5A08;
  if (!qword_1EBCA5A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5A08);
  }

  return result;
}

unint64_t sub_1BBC3C10C()
{
  result = qword_1EBCA5A10;
  if (!qword_1EBCA5A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5828, &qword_1BBC45160);
    sub_1BBC3C198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5A10);
  }

  return result;
}

unint64_t sub_1BBC3C198()
{
  result = qword_1EBCA5A18;
  if (!qword_1EBCA5A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5A20, &qword_1BBC45420);
    sub_1BBC3C250();
    sub_1BBC1D5D4(&qword_1EBCA5A40, &qword_1EBCA5A48, &qword_1BBC45430, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5A18);
  }

  return result;
}

unint64_t sub_1BBC3C250()
{
  result = qword_1EBCA5A28;
  if (!qword_1EBCA5A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5A30, &qword_1BBC45428);
    sub_1BBC3C308();
    sub_1BBC1D5D4(&qword_1EBCA5938, &qword_1EBCA5940, &qword_1BBC452D0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5A28);
  }

  return result;
}

unint64_t sub_1BBC3C308()
{
  result = qword_1EBCA5A38;
  if (!qword_1EBCA5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5A38);
  }

  return result;
}

unint64_t sub_1BBC3C35C()
{
  result = qword_1EBCA5A50;
  if (!qword_1EBCA5A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5820, &qword_1BBC45158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5A50);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1BBC3C4C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BBC40A5C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1BBC40A4C();
}

void sub_1BBC3C53C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC(&v3);

  *a2 = v3;
}

uint64_t sub_1BBC3C5BC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1BBC40ACC();
}

uint64_t _SWCollaborationDetailViewController.setListContent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _CollaborationDetailView(0, v10, v11, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v17 = [v3 viewModel];
  (*(v7 + 16))(v9, a1, a2);
  sub_1BBC378D0(v9, a2, a3, v16);
  sub_1BBC3D9F8(v16, a2, a3);
  return (*(v14 + 8))(v16, v13);
}

uint64_t _SWCollaborationDetailViewController.setListContent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7();
  _SWCollaborationDetailViewController.setListContent<A>(_:)(v9, a3, a4);
  return (*(v6 + 8))(v9, a3);
}

uint64_t _SWCollaborationDetailViewController.customContentTitle.getter()
{
  v1 = [v0 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC(&v3);

  return v3;
}

uint64_t _SWCollaborationDetailViewController.customContentTitle.setter(uint64_t a1, uint64_t a2)
{
  v3 = [v2 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1BBC40ACC();
}

void __swiftcall _SWCollaborationDetailViewController.init(highlight:listContent:)(_SWCollaborationDetailViewController *__return_ptr retstr, SWHighlight_optional highlight, UIView *listContent)
{
  identifier = highlight.value._identifier;
  isa = highlight.value.super.isa;
  [objc_allocWithZone(swift_getObjCClassFromMetadata(retstr)) initWithHighlight:highlight.value.super.isa listContent:highlight.value._identifier];
}

id sub_1BBC3CA9C(void *a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for CollaborationDetailViewModel(0));
  v13[0] = 0;
  v5 = sub_1BBC2655C(a1);
  sub_1BBC40FBC();
  v6 = v15;
  v7 = v16;
  sub_1BBC3AF20();
  v8 = sub_1BBC40B1C();
  v10 = v9;
  v15 = v8;
  v16 = v9;
  v17 = a2;
  v18 = v6;
  *v19 = *v14;
  *&v19[3] = *&v14[3];
  v20 = v7;
  sub_1BBC3F87C(&v15, v13);
  v11 = sub_1BBC3F554(v5, &v15);
  sub_1BBC3F8EC(&v15);

  return v11;
}

id _SWCollaborationDetailViewController.init<A>(highlight:listContent:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BBC3F288(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a2, a3);

  return v7;
}

id _SWCollaborationDetailViewController.init<A>(highlight:listContent:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1BBC3F458(a1, a2, a3, a4, a5);

  return v6;
}

void __swiftcall _SWCollaborationDetailViewController.init(highlight:)(_SWCollaborationDetailViewController *__return_ptr retstr, SWHighlight_optional highlight)
{
  isa = highlight.value.super.isa;
  [objc_allocWithZone(swift_getObjCClassFromMetadata(retstr)) initWithHighlight_];
}

void sub_1BBC3CC8C(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1BBC40DAC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = [v5 typeErasedHostingController];
  if (v11)
  {
    v12 = v11;
    [v11 willMoveToParentViewController_];
  }

  v13 = [v5 typeErasedHostingController];
  [v13 removeFromParentViewController];

  v14 = [v5 typeErasedHostingController];
  if (!v14)
  {
LABEL_6:
    v65 = a2;
    LOBYTE(v66) = a3 & 1;
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA5A80, &unk_1BBC45718));

    v17 = a2;
    v18 = sub_1BBC40BFC();
    v19 = [v18 view];
    if (v19)
    {
      v20 = v19;
      v21 = [objc_opt_self() clearColor];
      [v20 setBackgroundColor_];

      sub_1BBC40D9C();
      sub_1BBC40BDC();
      v22 = [objc_opt_self() currentDevice];
      [v22 userInterfaceIdiom];

      CGSizeMake();
      [v18 setPreferredContentSize_];
      [v5 addChildViewController_];
      v23 = [v5 view];
      if (v23)
      {
        v24 = v23;
        v25 = [v18 view];
        if (v25)
        {
          v26 = v25;
          [v24 addSubview_];

          [v18 didMoveToParentViewController_];
          v27 = [v18 view];
          if (v27)
          {
            v28 = v27;
            [v27 setTranslatesAutoresizingMaskIntoConstraints_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5688, &unk_1BBC44C20);
            v29 = swift_allocObject();
            *(v29 + 16) = xmmword_1BBC44C30;
            v30 = [v18 view];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 topAnchor];

              v33 = [v5 view];
              if (v33)
              {
                v34 = v33;
                v35 = [v33 safeAreaLayoutGuide];

                v36 = [v35 topAnchor];
                v37 = [v32 constraintEqualToAnchor_];

                *(v29 + 32) = v37;
                v38 = [v18 view];
                if (v38)
                {
                  v39 = v38;
                  v40 = [v38 bottomAnchor];

                  v41 = [v5 view];
                  if (v41)
                  {
                    v42 = v41;
                    v43 = [v41 safeAreaLayoutGuide];

                    v44 = [v43 bottomAnchor];
                    v45 = [v40 constraintEqualToAnchor_];

                    *(v29 + 40) = v45;
                    v46 = [v18 view];
                    if (v46)
                    {
                      v47 = v46;
                      v48 = [v46 leadingAnchor];

                      v49 = [v5 view];
                      if (v49)
                      {
                        v50 = v49;
                        v51 = [v49 safeAreaLayoutGuide];

                        v52 = [v51 leadingAnchor];
                        v53 = [v48 constraintEqualToAnchor_];

                        *(v29 + 48) = v53;
                        v54 = [v18 view];
                        if (v54)
                        {
                          v55 = v54;
                          v56 = [v54 trailingAnchor];

                          v57 = [v5 view];
                          if (v57)
                          {
                            v58 = v57;
                            v59 = objc_opt_self();
                            v60 = [v58 safeAreaLayoutGuide];

                            v61 = [v60 trailingAnchor];
                            v62 = [v56 constraintEqualToAnchor_];

                            *(v29 + 56) = v62;
                            sub_1BBC3F954(0, v63);
                            v64 = sub_1BBC4116C();

                            [v59 activateConstraints_];

                            [v5 setTypeErasedHostingController_];
                            return;
                          }

                          goto LABEL_30;
                        }

LABEL_29:
                        __break(1u);
LABEL_30:
                        __break(1u);
                        goto LABEL_31;
                      }

LABEL_28:
                      __break(1u);
                      goto LABEL_29;
                    }

LABEL_27:
                    __break(1u);
                    goto LABEL_28;
                  }

LABEL_26:
                  __break(1u);
                  goto LABEL_27;
                }

LABEL_25:
                __break(1u);
                goto LABEL_26;
              }

LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  v15 = v14;
  v16 = [v14 view];

  if (v16)
  {
    [v16 removeFromSuperview];

    goto LABEL_6;
  }

LABEL_31:
  __break(1u);
}

void sub_1BBC3D348(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1BBC40DAC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = [v2 typeErasedHostingController];
  if (v5)
  {
    v6 = v5;
    [v5 willMoveToParentViewController_];
  }

  v7 = [v2 typeErasedHostingController];
  [v7 removeFromParentViewController];

  v8 = [v2 typeErasedHostingController];
  if (!v8)
  {
LABEL_6:
    v11 = a1[1];
    v60 = *a1;
    v61 = v11;
    v62 = *(a1 + 4);
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5A78, &unk_1BBC45708));
    sub_1BBC3F87C(a1, v59);
    v12 = sub_1BBC40BFC();
    v13 = [v12 view];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() clearColor];
      [v14 setBackgroundColor_];

      sub_1BBC40D9C();
      sub_1BBC40BDC();
      v16 = [objc_opt_self() currentDevice];
      [v16 userInterfaceIdiom];

      CGSizeMake();
      [v12 setPreferredContentSize_];
      [v2 addChildViewController_];
      v17 = [v2 view];
      if (v17)
      {
        v18 = v17;
        v19 = [v12 view];
        if (v19)
        {
          v20 = v19;
          [v18 addSubview_];

          [v12 didMoveToParentViewController_];
          v21 = [v12 view];
          if (v21)
          {
            v22 = v21;
            [v21 setTranslatesAutoresizingMaskIntoConstraints_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5688, &unk_1BBC44C20);
            v23 = swift_allocObject();
            *(v23 + 16) = xmmword_1BBC44C30;
            v24 = [v12 view];
            if (v24)
            {
              v25 = v24;
              v26 = [v24 topAnchor];

              v27 = [v2 view];
              if (v27)
              {
                v28 = v27;
                v29 = [v27 safeAreaLayoutGuide];

                v30 = [v29 topAnchor];
                v31 = [v26 constraintEqualToAnchor_];

                *(v23 + 32) = v31;
                v32 = [v12 view];
                if (v32)
                {
                  v33 = v32;
                  v34 = [v32 bottomAnchor];

                  v35 = [v2 view];
                  if (v35)
                  {
                    v36 = v35;
                    v37 = [v35 safeAreaLayoutGuide];

                    v38 = [v37 bottomAnchor];
                    v39 = [v34 constraintEqualToAnchor_];

                    *(v23 + 40) = v39;
                    v40 = [v12 view];
                    if (v40)
                    {
                      v41 = v40;
                      v42 = [v40 leadingAnchor];

                      v43 = [v2 view];
                      if (v43)
                      {
                        v44 = v43;
                        v45 = [v43 safeAreaLayoutGuide];

                        v46 = [v45 leadingAnchor];
                        v47 = [v42 constraintEqualToAnchor_];

                        *(v23 + 48) = v47;
                        v48 = [v12 view];
                        if (v48)
                        {
                          v49 = v48;
                          v50 = [v48 trailingAnchor];

                          v51 = [v2 view];
                          if (v51)
                          {
                            v52 = v51;
                            v53 = objc_opt_self();
                            v54 = [v52 safeAreaLayoutGuide];

                            v55 = [v54 trailingAnchor];
                            v56 = [v50 constraintEqualToAnchor_];

                            *(v23 + 56) = v56;
                            sub_1BBC3F954(0, v57);
                            v58 = sub_1BBC4116C();

                            [v53 activateConstraints_];

                            [v2 setTypeErasedHostingController_];
                            return;
                          }

                          goto LABEL_30;
                        }

LABEL_29:
                        __break(1u);
LABEL_30:
                        __break(1u);
                        goto LABEL_31;
                      }

LABEL_28:
                      __break(1u);
                      goto LABEL_29;
                    }

LABEL_27:
                    __break(1u);
                    goto LABEL_28;
                  }

LABEL_26:
                  __break(1u);
                  goto LABEL_27;
                }

LABEL_25:
                __break(1u);
                goto LABEL_26;
              }

LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  v9 = v8;
  v10 = [v8 view];

  if (v10)
  {
    [v10 removeFromSuperview];

    goto LABEL_6;
  }

LABEL_31:
  __break(1u);
}

void sub_1BBC3D9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1BBC40DAC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = type metadata accessor for _CollaborationDetailView(0, a2, a3, v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v67 - v12;
  v14 = [v4 typeErasedHostingController];
  if (v14)
  {
    v15 = v14;
    [v14 willMoveToParentViewController_];
  }

  v16 = [v4 typeErasedHostingController];
  [v16 removeFromParentViewController];

  v17 = [v4 typeErasedHostingController];
  if (!v17)
  {
LABEL_6:
    swift_getWitnessTable();
    sub_1BBC40C0C();
    (*(v11 + 16))(v13, a1, v10);
    v20 = sub_1BBC40BEC();
    v21 = [v20 view];
    if (v21)
    {
      v22 = v21;
      v23 = [objc_opt_self() clearColor];
      [v22 setBackgroundColor_];

      sub_1BBC40D9C();
      sub_1BBC40BDC();
      v24 = [objc_opt_self() currentDevice];
      [v24 userInterfaceIdiom];

      CGSizeMake();
      [v20 setPreferredContentSize_];
      [v4 addChildViewController_];
      v25 = [v4 view];
      if (v25)
      {
        v26 = v25;
        v27 = [v20 view];
        if (v27)
        {
          v28 = v27;
          [v26 addSubview_];

          [v20 didMoveToParentViewController_];
          v29 = [v20 view];
          if (v29)
          {
            v30 = v29;
            [v29 setTranslatesAutoresizingMaskIntoConstraints_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5688, &unk_1BBC44C20);
            v31 = swift_allocObject();
            *(v31 + 16) = xmmword_1BBC44C30;
            v32 = [v20 view];
            if (v32)
            {
              v33 = v32;
              v34 = [v32 topAnchor];

              v35 = [v4 view];
              if (v35)
              {
                v36 = v35;
                v37 = [v35 safeAreaLayoutGuide];

                v38 = [v37 topAnchor];
                v39 = [v34 constraintEqualToAnchor_];

                *(v31 + 32) = v39;
                v40 = [v20 view];
                if (v40)
                {
                  v41 = v40;
                  v42 = [v40 bottomAnchor];

                  v43 = [v4 view];
                  if (v43)
                  {
                    v44 = v43;
                    v45 = [v43 safeAreaLayoutGuide];

                    v46 = [v45 bottomAnchor];
                    v47 = [v42 constraintEqualToAnchor_];

                    *(v31 + 40) = v47;
                    v48 = [v20 view];
                    if (v48)
                    {
                      v49 = v48;
                      v50 = [v48 leadingAnchor];

                      v51 = [v4 view];
                      if (v51)
                      {
                        v52 = v51;
                        v53 = [v51 safeAreaLayoutGuide];

                        v54 = [v53 leadingAnchor];
                        v55 = [v50 constraintEqualToAnchor_];

                        *(v31 + 48) = v55;
                        v56 = [v20 view];
                        if (v56)
                        {
                          v57 = v56;
                          v58 = [v56 trailingAnchor];

                          v59 = [v4 view];
                          if (v59)
                          {
                            v60 = v59;
                            v61 = objc_opt_self();
                            v62 = [v60 safeAreaLayoutGuide];

                            v63 = [v62 trailingAnchor];
                            v64 = [v58 constraintEqualToAnchor_];

                            *(v31 + 56) = v64;
                            sub_1BBC3F954(0, v65);
                            v66 = sub_1BBC4116C();

                            [v61 activateConstraints_];

                            [v4 setTypeErasedHostingController_];
                            return;
                          }

                          goto LABEL_30;
                        }

LABEL_29:
                        __break(1u);
LABEL_30:
                        __break(1u);
                        goto LABEL_31;
                      }

LABEL_28:
                      __break(1u);
                      goto LABEL_29;
                    }

LABEL_27:
                    __break(1u);
                    goto LABEL_28;
                  }

LABEL_26:
                  __break(1u);
                  goto LABEL_27;
                }

LABEL_25:
                __break(1u);
                goto LABEL_26;
              }

LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [v17 view];

  if (v19)
  {
    [v19 removeFromSuperview];

    goto LABEL_6;
  }

LABEL_31:
  __break(1u);
}

id _SWCollaborationDetailViewController.init(itemProvider:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for CollaborationDetailViewModel(0));
  v3 = a1;
  v4 = CollaborationDetailViewModel.init(itemProvider:)(v3);
  sub_1BBC40FBC();
  sub_1BBC3AF20();
  v5 = sub_1BBC40B1C();
  v7 = v6;
  swift_getObjectType();
  v8 = sub_1BBC3F694(v4, v5, v7, v10, v11);

  swift_deallocPartialClassInstance();
  return v8;
}

id _SWCollaborationDetailViewController.viewModel.getter()
{
  result = [v0 typeErasedViewModel];
  if (result)
  {
    type metadata accessor for CollaborationDetailViewModel(0);

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _SWCollaborationDetailViewController.viewModel.setter(void *a1)
{
  [v1 setTypeErasedViewModel_];
}

Swift::Void __swiftcall _SWCollaborationDetailViewController.setListContentView(_:)(UIView *a1)
{
  v2 = a1;
  v3 = [v1 viewModel];
  v9[0] = 0;
  sub_1BBC40FBC();
  v4 = v10;
  v5 = *(&v10 + 1);
  type metadata accessor for CollaborationDetailViewModel(0);
  sub_1BBC3AF20();
  v6 = sub_1BBC40B1C();
  v8 = v7;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v11 = v2;
  v12 = v4;
  *v13 = *v9;
  *&v13[3] = *&v9[3];
  v14 = v5;
  sub_1BBC3D348(&v10);
}

uint64_t sub_1BBC3E4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBC3F828();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BBC3E54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBC3F828();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BBC3E5B0(uint64_t a1)
{
  sub_1BBC3F828();
  sub_1BBC40CAC();
  __break(1u);
}

uint64_t sub_1BBC3E698(uint64_t a1, uint64_t a2)
{
  v3 = [v2 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC(&v5);

  return v5;
}

uint64_t sub_1BBC3E7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [v3 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1BBC40ACC();
}

double sub_1BBC3E86C@<D0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = [*a1 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC(&v5);

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1BBC3E908(uint64_t *a1, void **a2)
{
  v2 = *a2;

  v3 = [v2 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1BBC40ACC();
}

void (*_SWCollaborationDetailViewController.customContentTitle.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v2;
  v6 = [v2 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC((v5 + 16));

  *v5 = *(v5 + 16);
  return sub_1BBC3EA7C;
}

void sub_1BBC3EA7C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  if (a2)
  {

    v6 = [v5 viewModel];
    swift_getKeyPath();
    swift_getKeyPath();
    v2[2] = v4;
    v2[3] = v3;
    sub_1BBC40ACC();
  }

  else
  {
    v7 = [(*a1)[4] viewModel];
    swift_getKeyPath();
    swift_getKeyPath();
    v2[2] = v4;
    v2[3] = v3;
    sub_1BBC40ACC();
  }

  free(v2);
}

void sub_1BBC3EB80(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC(&v4);

  *a2 = v4;
}

uint64_t sub_1BBC3EC1C(void *a1, void **a2)
{
  v2 = *a2;

  v3 = [v2 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1BBC40ACC();
}

uint64_t (*_SWCollaborationDetailViewController.customCollaborators.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC(a1 + 1);

  *a1 = a1[1];
  return sub_1BBC3ED5C;
}

uint64_t sub_1BBC3ED5C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[2];
  if (a2)
  {

    v5 = [v4 viewModel];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v3;
    sub_1BBC40ACC();
  }

  else
  {
    v7 = [a1[2] viewModel];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v3;

    return sub_1BBC40ACC();
  }
}

id _SWCollaborationDetailViewController.init(highlight:listContent:)(void *a1, void *a2)
{
  swift_getObjectType();
  v4 = sub_1BBC3CA9C(a1, a2);
  swift_deallocPartialClassInstance();
  return v4;
}

id _SWCollaborationDetailViewController.init(highlight:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for CollaborationDetailViewModel(0));
  v3 = sub_1BBC2655C(a1);
  sub_1BBC40FBC();
  sub_1BBC3AF20();
  v4 = sub_1BBC40B1C();
  v6 = v5;
  swift_getObjectType();
  v7 = sub_1BBC3F694(v3, v4, v6, v9, v10);

  swift_deallocPartialClassInstance();
  return v7;
}

id _SWCollaborationDetailViewController.updateHighlight<A>(_:newListContent:)(uint64_t a1)
{
  return [v1 setCollaborationHighlight_];
}

{
  return [v1 setCollaborationHighlight_];
}

id sub_1BBC3F098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BBC40DAC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = type metadata accessor for _CollaborationDetailView(0, a3, a4, v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v18 - v12);
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v12)) init];
  [v14 setTypeErasedViewModel_];
  swift_getWitnessTable();
  sub_1BBC40C0C();
  (*(v11 + 16))(v13, a2, v10);
  v15 = sub_1BBC40BEC();
  sub_1BBC40D9C();
  sub_1BBC40BDC();
  v16 = v15;
  [v14 setTypeErasedHostingController_];
  sub_1BBC3D9F8(a2, a3, a4);

  return v14;
}

id sub_1BBC3F288(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _CollaborationDetailView(0, v11, v12, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - v15;
  v17 = objc_allocWithZone(type metadata accessor for CollaborationDetailViewModel(0));
  v18 = sub_1BBC2655C(a1);
  (*(v8 + 16))(v10, a2, a3);
  v19 = v18;
  sub_1BBC378D0(v10, a3, a4, v16);
  v20 = sub_1BBC3F098(v19, v16, a3, a4);

  (*(v14 + 8))(v16, v13);
  return v20;
}

id sub_1BBC3F458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v9);
  v13 = sub_1BBC3F288(a1, v11, a4, a5);
  (*(v8 + 8))(v11, a4);
  return v13;
}

id sub_1BBC3F554(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BBC40DAC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata(((v5 + 15) & 0xFFFFFFFFFFFFFFF0))) init];
  [v6 setTypeErasedViewModel_];
  v7 = *(a2 + 16);
  v13 = *a2;
  v14 = v7;
  v15 = *(a2 + 32);
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5A78, &unk_1BBC45708));
  sub_1BBC3F87C(a2, v12);
  v9 = sub_1BBC40BFC();
  sub_1BBC40D9C();
  sub_1BBC40BDC();
  v10 = v9;
  [v6 setTypeErasedHostingController_];
  sub_1BBC3D348(a2);

  return v6;
}

id sub_1BBC3F694(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  v10 = sub_1BBC40DAC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata(((v11 + 15) & 0xFFFFFFFFFFFFFFF0))) init];
  [v12 setTypeErasedViewModel_];
  v17 = a3;
  LOBYTE(v18) = a4;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA5A80, &unk_1BBC45718));

  v13 = a3;
  v14 = sub_1BBC40BFC();
  sub_1BBC40D9C();
  sub_1BBC40BDC();
  v15 = v14;
  [v12 setTypeErasedHostingController_];
  sub_1BBC3CC8C(a2, v13, a4, a5);

  return v12;
}

unint64_t sub_1BBC3F828()
{
  result = qword_1EBCA5A68;
  if (!qword_1EBCA5A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5A68);
  }

  return result;
}

uint64_t sub_1BBC3F87C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5A70, &qword_1BBC45700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBC3F8EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5A70, &qword_1BBC45700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BBC3F954(uint64_t a1, uint64_t a2)
{
  result = qword_1EBCA5690;
  if (!qword_1EBCA5690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCA5690);
  }

  return result;
}