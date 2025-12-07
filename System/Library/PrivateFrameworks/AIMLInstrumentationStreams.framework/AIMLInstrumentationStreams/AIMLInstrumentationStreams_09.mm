uint64_t sub_23C632E64()
{
  v0 = sub_23C871654();
  __swift_allocate_value_buffer(v0, qword_27E1FBBE0);
  __swift_project_value_buffer(v0, qword_27E1FBBE0);
  sub_23C588EAC();
  sub_23C871B54();
  return sub_23C871664();
}

void sub_23C632EF8(uint64_t a1)
{
  v2 = v1;
  v3 = v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25SiriConversationPublisher_trackingTag;
  v4 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25SiriConversationPublisher_trackingTag);
  v5 = *(v3 + 8);
  v6 = objc_allocWithZone(type metadata accessor for SiriConversationPublisher.SiriConversationSubscriber(0));

  v7 = swift_unknownObjectRetain();
  v8 = sub_23C64B39C(v7, v4, v5);
  swift_unknownObjectRelease();
  v9 = *(v2 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25SiriConversationPublisher_inner);
  *(v2 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25SiriConversationPublisher_inner) = v8;
  v10 = v8;

  [*(v2 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25SiriConversationPublisher_upstream) subscribe_];
}

uint64_t sub_23C63316C()
{
  sub_23C8720F4();
  sub_23C870B74();
  sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C6331F4(uint64_t a1)
{
  sub_23C870B74();
  sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_23C8716F4();
}

uint64_t sub_23C633278(uint64_t a1)
{
  sub_23C8720F4();
  sub_23C870B74();
  sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C633450(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for CoreAnalyticsTracker(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_upstreamFinished) = 1;
  sub_23C633E80();
  [*(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_downstream) receiveCompletion_];
  v10 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_tracker;
  swift_beginAccess();
  sub_23C5855B0(v1 + v10, v5, &unk_27E1FB5D0, &unk_23C874EE0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_23C585C34(v5, &unk_27E1FB5D0, &unk_23C874EE0);
  }

  sub_23C64BB10(v5, v9, type metadata accessor for CoreAnalyticsTracker);
  sub_23C5FCF78(0, 0, 1, 0, 1, 0, 1, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_conversationCount), 0);
  return sub_23C64BB78(v9, type metadata accessor for CoreAnalyticsTracker);
}

uint64_t sub_23C6336CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for CoreAnalyticsTracker(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_upstreamFinished) = 1;
  [*(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_downstream) cancel];
  v8 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_tracker;
  swift_beginAccess();
  sub_23C5855B0(v0 + v8, v3, &unk_27E1FB5D0, &unk_23C874EE0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_23C585C34(v3, &unk_27E1FB5D0, &unk_23C874EE0);
  }

  sub_23C64BB10(v3, v7, type metadata accessor for CoreAnalyticsTracker);
  sub_23C5FCF78(1, 0, 1, 0, 1, 0, 1, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_conversationCount), 0);
  return sub_23C64BB78(v7, type metadata accessor for CoreAnalyticsTracker);
}

uint64_t sub_23C63391C()
{
  v1 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v37 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23C870B74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = v34 - v9;
  if (qword_27E1F8338 != -1)
  {
    swift_once();
  }

  v10 = sub_23C871654();
  __swift_project_value_buffer(v10, qword_27E1FBBE0);
  v11 = v0;
  v12 = sub_23C871634();
  v13 = sub_23C871AC4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v36 = v8;
    v15 = v14;
    *v14 = 67109376;
    v14[1] = *(&v11->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_upstreamFinished);

    *(v15 + 4) = 2048;
    *(v15 + 10) = *(&v11->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_lastReceivedTimestamp) + -300.0;
    _os_log_impl(&dword_23C56D000, v12, v13, "Conversation builder upstream finished %{BOOL}d expiry time: %f", v15, 0x12u);
    v16 = v15;
    v8 = v36;
    MEMORY[0x23EED8240](v16, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  if (*(&v11->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_upstreamFinished) == 1)
  {

    v17 = sub_23C638774();

    v18 = *(v17 + 16);
    if (v18)
    {
      v38 = MEMORY[0x277D84F90];
      sub_23C592B60(0, v18, 0);
      v19 = v38;
      v20 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v34[1] = v17;
      v21 = v17 + v20;
      v22 = *(v37 + 72);
      v36 = (v5 + 32);
      v37 = v22;
      v23 = v35;
      do
      {
        sub_23C600748(v21, v3, type metadata accessor for SiriConversationPublisher.GraphUUID);
        (*(v5 + 16))(v23, v3, v4);
        sub_23C64BB78(v3, type metadata accessor for SiriConversationPublisher.GraphUUID);
        v38 = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_23C592B60((v24 > 1), v25 + 1, 1);
          v19 = v38;
        }

        *(v19 + 16) = v25 + 1;
        (*(v5 + 32))(v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25, v23, v4);
        v21 += v37;
        --v18;
      }

      while (v18);
LABEL_20:

      return v19;
    }
  }

  else
  {
    v26 = *(&v11->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_lastReceivedTimestamp) + -300.0;

    v27 = sub_23C6381B4(v26);

    v28 = *(v27 + 16);
    if (v28)
    {
      v38 = MEMORY[0x277D84F90];
      sub_23C592B60(0, v28, 0);
      v19 = v38;
      v29 = v27 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
      v37 = *(v37 + 72);
      v35 = v27;
      v36 = (v5 + 32);
      do
      {
        sub_23C600748(v29, v3, type metadata accessor for SiriConversationPublisher.GraphUUID);
        (*(v5 + 16))(v8, v3, v4);
        sub_23C64BB78(v3, type metadata accessor for SiriConversationPublisher.GraphUUID);
        v38 = v19;
        v30 = v8;
        v32 = *(v19 + 16);
        v31 = *(v19 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_23C592B60((v31 > 1), v32 + 1, 1);
          v19 = v38;
        }

        *(v19 + 16) = v32 + 1;
        (*(v5 + 32))(v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v32, v30, v4);
        v29 += v37;
        --v28;
        v8 = v30;
      }

      while (v28);
      goto LABEL_20;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C633E80()
{
  v1 = v0;
  v2 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_23C870B74();
  v5 = *(v104 - 8);
  v6 = MEMORY[0x28223BE20](v104);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v79 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v92 = &v79 - v13;
  MEMORY[0x28223BE20](v12);
  v97 = &v79 - v14;
  v88 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_downstream;
  v87 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_conversationCount;
  v91 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_graphBuilder;
  v15 = sub_23C63391C();
  if (!*(v15 + 16))
  {
  }

  v89 = *(v5 + 16);
  v90 = v5 + 16;
  v103 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v102 = (v5 + 32);
  v95 = (v5 + 8);
  v96 = 0;
  *&v16 = 136315394;
  v83 = v16;
  v100 = v8;
  v82 = v0;
  v81 = v4;
  v80 = v11;
  v99 = v5;
  while (1)
  {
    v17 = v104;
    v18 = v92;
    v19 = v89;
    v89(v92, (v15 + v103), v104);

    v20 = v97;
    v101 = *v102;
    v101(v97, v18, v17);
    v19(v4, v20, v17);

    sub_23C63906C(v4);
    v22 = v21;

    sub_23C64BB78(v4, type metadata accessor for SiriConversationPublisher.GraphUUID);
    if (!v22)
    {
      return (*v95)(v97, v104);
    }

    v23 = type metadata accessor for SiriConversation();
    v24 = objc_allocWithZone(v23);
    v25 = v22 & 0xFFFFFFFFFFFFFF8;
    if (v22 >> 62)
    {
      v61 = sub_23C871C34();
      if (v61)
      {
        v62 = v61;
        v25 = sub_23C65368C();

        sub_23C648C84(v25 + 32, v62, v22);
        v63 = v11;
        v65 = v64;

        v66 = v65 == v62;
        v11 = v63;
        if (!v66)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v25 = MEMORY[0x277D84F90];
      }
    }

    else
    {
    }

    v107 = v25;
    v26 = v96;
    sub_23C63084C(&v107);
    v96 = v26;
    if (v26)
    {
      goto LABEL_57;
    }

    *&v24[OBJC_IVAR___ISSiriConversation_turns] = v107;
    v106.receiver = v24;
    v106.super_class = v23;
    v27 = objc_msgSendSuper2(&v106, sel_init);
    v28 = *v95;
    result = (*v95)(v97, v104);
    if (!v27)
    {
      return result;
    }

    if (qword_27E1F8338 != -1)
    {
      swift_once();
    }

    v30 = sub_23C871654();
    __swift_project_value_buffer(v30, qword_27E1FBBE0);
    v31 = v27;
    v32 = sub_23C871634();
    v33 = sub_23C871AC4();

    if (!os_log_type_enabled(v32, v33))
    {

      v60 = v87;
      goto LABEL_41;
    }

    v86 = v33;
    v34 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v107 = v85;
    v94 = v34;
    *v34 = v83;
    v35 = OBJC_IVAR___ISSiriConversation_turns;
    v36 = *&v31[OBJC_IVAR___ISSiriConversation_turns];
    if (v36 >> 62)
    {
      if (!sub_23C871C34())
      {
        goto LABEL_51;
      }
    }

    else if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    v84 = v32;
    if ((v36 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x23EED7610](0, v36);
    }

    else
    {
      if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v37 = *(v36 + 32);
    }

    v38 = v37;
    v93 = v31;
    if (!EventGraph.uei.getter())
    {
      goto LABEL_55;
    }

    v39 = sub_23C62FC3C();

    sub_23C870E24();

    sub_23C64B2C8(&qword_27E1FBCA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v40 = v104;
    v41 = sub_23C871FD4();
    v43 = v42;
    v28(v11, v40);
    v44 = sub_23C63C388(v41, v43, &v107);

    v45 = v94;
    *(v94 + 1) = v44;
    *(v45 + 6) = 2080;
    v46 = *&v93[v35];
    if (!(v46 >> 62))
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
        break;
      }

      goto LABEL_39;
    }

    v67 = *&v93[v35];
    v68 = sub_23C871C34();
    v46 = v67;
    v47 = v68;
    if (v68)
    {
      break;
    }

LABEL_39:
    v50 = MEMORY[0x277D84F90];
LABEL_40:
    v69 = MEMORY[0x23EED71B0](v50, v104);
    v71 = v70;

    v72 = sub_23C63C388(v69, v71, &v107);

    v73 = v94;
    *(v94 + 14) = v72;
    v74 = v84;
    _os_log_impl(&dword_23C56D000, v84, v86, "Generated conversation id: %s with turns: %s", v73, 0x16u);
    v75 = v85;
    swift_arrayDestroy();
    MEMORY[0x23EED8240](v75, -1, -1);
    MEMORY[0x23EED8240](v73, -1, -1);

    v60 = v87;
    v31 = v93;
LABEL_41:
    [*(v1 + v88) receiveInput_];

    v76 = *(v1 + v60);
    v77 = __OFADD__(v76, 1);
    v78 = v76 + 1;
    if (v77)
    {
      goto LABEL_50;
    }

    *(v1 + v60) = v78;
    v15 = sub_23C63391C();
    if (!*(v15 + 16))
    {
    }
  }

  v48 = v46;
  v105 = MEMORY[0x277D84F90];
  sub_23C592B60(0, v47 & ~(v47 >> 63), 0);
  if (v47 < 0)
  {
    goto LABEL_53;
  }

  v49 = 0;
  v50 = v105;
  v51 = v48;
  v98 = v48 & 0xFFFFFFFFFFFFFF8;
  v52 = v47;
  while (1)
  {
    v53 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if ((v48 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x23EED7610](v49, v51);
    }

    else
    {
      if (v49 >= *(v98 + 16))
      {
        goto LABEL_49;
      }

      v54 = *(v51 + 8 * v49 + 32);
    }

    v55 = v54;
    if (!EventGraph.uei.getter())
    {
      goto LABEL_54;
    }

    v56 = sub_23C62FC3C();

    v57 = v100;
    sub_23C870E24();

    v105 = v50;
    v59 = *(v50 + 16);
    v58 = *(v50 + 24);
    if (v59 >= v58 >> 1)
    {
      sub_23C592B60((v58 > 1), v59 + 1, 1);
      v50 = v105;
    }

    *(v50 + 16) = v59 + 1;
    v101((v50 + v103 + *(v99 + 72) * v59), v57, v104);
    ++v49;
    v51 = v48;
    if (v53 == v52)
    {
      v1 = v82;
      v4 = v81;
      v11 = v80;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:

  __break(1u);
  return result;
}

uint64_t sub_23C634718(char *a1)
{
  v3 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v83 = &v74[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v86 = &v74[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v74[-v8];
  v10 = sub_23C870B74();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v74[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v84 = &v74[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v74[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v87 = &v74[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v74[-v22];
  v24 = *&a1[OBJC_IVAR___ISEventGraph_timestamp];
  v25 = *&v1[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_lastReceivedTimestamp];
  if (v24 > v25)
  {
    v25 = *&a1[OBJC_IVAR___ISEventGraph_timestamp];
  }

  v26 = v1;
  v82 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_lastReceivedTimestamp;
  *&v1[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_lastReceivedTimestamp] = v25;
  result = EventGraph.uei.getter();
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v28 = sub_23C62FC3C();

  sub_23C870E24();

  result = EventGraph.uei.getter();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  ComponentGroup<>.previousTurnId.getter(v9);

  v29 = (*(v11 + 48))(v9, 1, v10);
  v30 = v87;
  v85 = v23;
  if (v29 == 1)
  {
    sub_23C585C34(v9, &qword_27E1F92A0, &qword_23C8734E0);
    v31 = v26;
    if (qword_27E1F8338 != -1)
    {
      swift_once();
    }

    v32 = sub_23C871654();
    __swift_project_value_buffer(v32, qword_27E1FBBE0);
    v33 = *(v11 + 16);
    (v33)(v14, v23, v10);
    v34 = v31;
    v35 = sub_23C871634();
    v36 = sub_23C871AC4();
    v87 = v34;

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v81 = a1;
      v38 = v37;
      v83 = swift_slowAlloc();
      v88 = v83;
      *v38 = 136315394;
      sub_23C64B2C8(&qword_27E1FBCA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      LODWORD(v80) = v36;
      v39 = sub_23C871FD4();
      v84 = v33;
      v41 = v40;
      v42 = *(v11 + 8);
      v79 = v31;
      v42(v14, v10);
      v43 = sub_23C63C388(v39, v41, &v88);
      v33 = v84;

      *(v38 + 4) = v43;
      *(v38 + 12) = 2048;
      *(v38 + 14) = *&v79[v82];
      _os_log_impl(&dword_23C56D000, v35, v80, "Ingesting turn: %s with no previousTurnId last received timestamp: %f", v38, 0x16u);
      v44 = v83;
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x23EED8240](v44, -1, -1);
      v45 = v38;
      a1 = v81;
      MEMORY[0x23EED8240](v45, -1, -1);
    }

    else
    {

      v42 = *(v11 + 8);
      v42(v14, v10);
    }

    v67 = v86;
    v68 = v85;
    (v33)(v86, v85, v10);

    sub_23C635B9C(a1, v67, v24);

    sub_23C64BB78(v67, type metadata accessor for SiriConversationPublisher.GraphUUID);
    return (v42)(v68, v10);
  }

  else
  {
    (*(v11 + 32))(v87, v9, v10);
    v46 = v26;
    if (qword_27E1F8338 != -1)
    {
      swift_once();
    }

    v81 = a1;
    v47 = sub_23C871654();
    __swift_project_value_buffer(v47, qword_27E1FBBE0);
    v48 = *(v11 + 16);
    v48(v19, v23, v10);
    v49 = v84;
    v80 = v48;
    v48(v84, v30, v10);
    v50 = v46;
    v51 = sub_23C871634();
    v52 = sub_23C871AC4();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v78 = v50;
      v54 = v53;
      v77 = swift_slowAlloc();
      v88 = v77;
      *v54 = 136315650;
      sub_23C64B2C8(&qword_27E1FBCA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v76 = v51;
      v55 = sub_23C871FD4();
      v79 = v46;
      v57 = v56;
      v75 = v52;
      v58 = *(v11 + 8);
      v58(v19, v10);
      v59 = sub_23C63C388(v55, v57, &v88);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2080;
      v60 = v84;
      v61 = sub_23C871FD4();
      v63 = v62;
      v58(v60, v10);
      v64 = sub_23C63C388(v61, v63, &v88);

      *(v54 + 14) = v64;
      *(v54 + 22) = 2048;
      *(v54 + 24) = *&v79[v82];
      v65 = v76;
      _os_log_impl(&dword_23C56D000, v76, v75, "Ingesting turn: %s with previousTurnId: %s last received timestamp: %f", v54, 0x20u);
      v66 = v77;
      swift_arrayDestroy();
      MEMORY[0x23EED8240](v66, -1, -1);
      MEMORY[0x23EED8240](v54, -1, -1);
    }

    else
    {

      v58 = *(v11 + 8);
      v58(v49, v10);
      v58(v19, v10);
    }

    v69 = v85;
    v70 = v86;
    v71 = v80;
    v80(v86, v85, v10);
    v72 = v83;
    v73 = v87;
    v71(v83, v87, v10);

    sub_23C6370F8(v81, v70, v72, v24);

    sub_23C64BB78(v72, type metadata accessor for SiriConversationPublisher.GraphUUID);
    sub_23C64BB78(v70, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v58(v73, v10);
    return (v58)(v69, v10);
  }
}

id sub_23C6350F0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_23C6351D4(uint64_t a1)
{
  sub_23C5A795C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_23C6352E0(uint64_t a1)
{
  result = sub_23C870B74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23C63534C(unint64_t a1, void *a2, double a3)
{
  v8 = v3;
  v9 = v3[6];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = a3;
  v4 = a2;
  v12 = a1;
  v8[6] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
  inited = swift_initStackObject();
  v40 = xmmword_23C874E20;
  *(inited + 16) = xmmword_23C874E20;
  *(inited + 32) = v12;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42[0] = v8[3];
  v14 = v42[0];
  v8[3] = 0x8000000000000000;
  a1 = sub_23C5FFA08(v4);
  v16 = v14[2];
  v17 = (v15 & 1) == 0;
  v10 = __OFADD__(v16, v17);
  v18 = v16 + v17;
  if (v10)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = v15;
  if (v14[3] < v18)
  {
    sub_23C63F7B8(v18, isUniquelyReferenced_nonNull_native, &qword_27E1F9B08, &unk_23C87BE60);
    v14 = v42[0];
    a1 = sub_23C5FFA08(v4);
    if ((v6 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

    sub_23C870E34();
    a1 = sub_23C872064();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_22:
    v38 = a1;
    sub_23C644870(&qword_27E1F9B08, &unk_23C87BE60);
    a1 = v38;
    v14 = v42[0];
    v8[3] = v42[0];
    if (v6)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_7:
  v8[3] = v14;
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_8:
  v14[(a1 >> 6) + 8] |= 1 << a1;
  *(v14[6] + 8 * a1) = v4;
  *(v14[7] + 8 * a1) = MEMORY[0x277D84F90];
  v20 = v14[2];
  v10 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_25;
  }

  v14[2] = v21;
  v22 = v4;
LABEL_10:
  sub_23C6360F8(inited, sub_23C6487D4);
  swift_endAccess();
  swift_beginAccess();
  v23 = v8[5];

  v24 = sub_23C6323B8(v4, v23);

  if (v24)
  {
  }

  else
  {
    v25 = v8[4];
    v26 = swift_initStackObject();
    *(v26 + 16) = v40;
    *(v26 + 32) = v4;
    v27 = v4;

    v28 = MEMORY[0x277D84FA0];
    do
    {
      while (1)
      {

        v28 = sub_23C64913C(v29, v28);

        v42[0] = v28;

        v30 = sub_23C649230(v26, v25);

        v26 = sub_23C6495EC(v30, v42);

        if (v26 >> 62)
        {
          break;
        }

        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }
      }
    }

    while (sub_23C871C34());
LABEL_17:

    sub_23C5916F4(v28);
    v32 = v31;
    v42[0] = v31;
    MEMORY[0x28223BE20](v31);
    v39[2] = v8;
    v39[3] = v42;
    sub_23C63246C(sub_23C64BCCC, v39, v28);
  }

  v33 = v8[5];

  v34 = sub_23C6323B8(v4, v33);
  if (v34)
  {
    v35 = v34;

    swift_beginAccess();
    v36 = v35;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v8[2];
    v8[2] = 0x8000000000000000;
    sub_23C593F08(v36, v37, v7);

    v8[2] = v41;
    swift_endAccess();

    return;
  }

LABEL_25:
  __break(1u);
}

unint64_t sub_23C63576C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v14 = v6;
  v15 = v6[6];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = a6;
  v8 = a5;
  v10 = a4;
  v9 = a3;
  v12 = a2;
  v18 = result;
  v14[6] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C874E20;
  *(inited + 32) = v18;
  swift_beginAccess();
  v19 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v14[3];
  v21 = v57;
  v14[3] = 0x8000000000000000;
  result = sub_23C5FFB88(v12, v9, v10, v8);
  v23 = v21[2];
  v24 = (v22 & 1) == 0;
  v16 = __OFADD__(v23, v24);
  v25 = v23 + v24;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  LOBYTE(v11) = v22;
  if (v21[3] < v25)
  {
    sub_23C63EA50(v25, isUniquelyReferenced_nonNull_native, &unk_27E1FBDD0, &unk_23C874D10);
    v21 = v57;
    result = sub_23C5FFB88(v12, v9, v10, v8);
    if ((v11 & 1) == (v26 & 1))
    {
      goto LABEL_7;
    }

    result = sub_23C872064();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  for (v14[3] = v21; (v11 & 1) != 0; v14[3] = v57)
  {
LABEL_10:
    sub_23C6360F8(inited, sub_23C648964);
    swift_endAccess();
    swift_beginAccess();
    if (!*(v14[5] + 16) || (, sub_23C5FFB88(v12, v9, v10, v8), inited = v30, result = , (inited & 1) == 0))
    {

      v11 = sub_23C63BA88(v12, v9, v10, v8);

      v31 = sub_23C591B98(v11);
      v33 = v32;
      v50 = v12;
      v51 = v9;
      v35 = v34;
      v37 = v36;
      v53 = v31;
      v54 = v32;
      v55 = v34;
      v56 = v36;
      MEMORY[0x28223BE20](v31);
      v49[2] = v14;
      v49[3] = v38;
      inited = 0;
      sub_23C63269C(sub_23C64BBFC, v49, v11);

      v39 = v35;
      v12 = v50;
      sub_23C58428C(v31, v33, v39, v37);
      v9 = v51;
    }

    v40 = v14[5];
    if (*(v40 + 16))
    {

      result = sub_23C5FFB88(v12, v9, v10, v8);
      if (v41)
      {
        v42 = (*(v40 + 56) + 32 * result);
        v44 = *v42;
        v43 = v42[1];
        v45 = v42[2];
        v46 = v42[3];

        swift_beginAccess();
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v52 = v14[2];
        v14[2] = 0x8000000000000000;
        sub_23C59461C(v44, v43, v45, v46, v47, v13);
        v14[2] = v52;
        swift_endAccess();
      }
    }

    else
    {
LABEL_18:
      __break(1u);
    }

    __break(1u);
LABEL_20:
    v48 = result;
    sub_23C644140(&unk_27E1FBDD0, &unk_23C874D10);
    result = v48;
    v21 = v57;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v27 = (v21[6] + 32 * result);
  *v27 = v12;
  v27[1] = v9;
  v27[2] = v10;
  v27[3] = v8;
  *(v21[7] + 8 * result) = MEMORY[0x277D84F90];
  v28 = v21[2];
  v16 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v16)
  {
    v21[2] = v29;

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C635B9C(void *a1, uint64_t a2, double a3)
{
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBCA8, &qword_23C87BDB8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v6[6];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_18;
  }

  v44 = v13;
  v45 = v18;
  v6[6] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C874E20;
  *(inited + 32) = a1;
  swift_beginAccess();
  v24 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = v6[3];
  v26 = v47;
  v6[3] = 0x8000000000000000;
  v5 = sub_23C5FFCB8(a2);
  v28 = v26[2];
  v29 = (v27 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  LOBYTE(v13) = v27;
  if (v26[3] >= v30)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
LABEL_7:
      v33 = v17;
      v6[3] = v26;
      if ((v13 & 1) == 0)
      {
        sub_23C600748(a2, v20, type metadata accessor for SiriConversationPublisher.GraphUUID);
        sub_23C642D24(v5, v20, MEMORY[0x277D84F90], v26, type metadata accessor for SiriConversationPublisher.GraphUUID, type metadata accessor for SiriConversationPublisher.GraphUUID);
      }

      sub_23C6360F8(inited, sub_23C648C84);
      swift_endAccess();
      swift_beginAccess();
      v34 = v6[5];
      if (*(v34 + 16))
      {

        v35 = sub_23C5FFCB8(a2);
        if (v36)
        {
          sub_23C600748(*(v34 + 56) + *(v17 + 72) * v35, v15, type metadata accessor for SiriConversationPublisher.GraphUUID);

          (*(v17 + 56))(v15, 0, 1, v45);
          goto LABEL_14;
        }
      }

      (*(v17 + 56))(v15, 1, 1, v45);
      sub_23C585C34(v15, &qword_27E1FBCA8, &qword_23C87BDB8);

      v13 = sub_23C63BD68(a2);

      v17 = v44;
      v37 = sub_23C591DB0(v13, v44);
      MEMORY[0x28223BE20](v37);
      *(&v43 - 2) = v6;
      *(&v43 - 1) = v17;
      sub_23C6327F4(sub_23C64BCAC, (&v43 - 4), v13);

      v15 = v17;
LABEL_14:
      sub_23C585C34(v15, &qword_27E1FBCA8, &qword_23C87BDB8);
      v38 = v6[5];
      if (*(v38 + 16))
      {

        v39 = sub_23C5FFCB8(a2);
        if (v40)
        {
          sub_23C600748(*(v38 + 56) + *(v33 + 72) * v39, v20, type metadata accessor for SiriConversationPublisher.GraphUUID);

          swift_beginAccess();
          v41 = swift_isUniquelyReferenced_nonNull_native();
          v46 = v6[2];
          v6[2] = 0x8000000000000000;
          sub_23C594A44(v20, v41, a3);
          v6[2] = v46;
          swift_endAccess();
          return sub_23C64BB78(v20, type metadata accessor for SiriConversationPublisher.GraphUUID);
        }
      }

      else
      {
LABEL_19:
        __break(1u);
      }

      __break(1u);
LABEL_21:
      sub_23C644FD8(&unk_27E1FBCC0, &unk_23C87BDD0);
      v26 = v47;
    }
  }

  sub_23C640768(v30, isUniquelyReferenced_nonNull_native, &unk_27E1FBCC0, &unk_23C87BDD0);
  v26 = v47;
  v31 = sub_23C5FFCB8(a2);
  if ((v13 & 1) == (v32 & 1))
  {
    v5 = v31;
    goto LABEL_7;
  }

  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C6360F8(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_23C871C34();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_23C871C34();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_23C63C930(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_23C6361F0(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v11 = v4;
  v12 = v4[6];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_30;
  }

  v10 = a4;
  v6 = a3;
  v11[6] = v14;
  v56 = a2;
  v16 = sub_23C649848(a2, a3);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
  inited = swift_initStackObject();
  v54 = xmmword_23C874E20;
  *(inited + 16) = xmmword_23C874E20;
  *(inited + 32) = a1;
  swift_beginAccess();
  v7 = v16;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58[0] = v11[3];
  v18 = v58[0];
  v11[3] = 0x8000000000000000;
  v8 = sub_23C5FFA08(v7);
  v9 = v19;
  v20 = v18[2];
  v21 = (v19 & 1) == 0;
  sub_23C870E34();
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v18[3] < v22)
  {
    sub_23C63F7B8(v22, isUniquelyReferenced_nonNull_native, &qword_27E1F9B08, &unk_23C87BE60);
    v18 = v58[0];
    v23 = sub_23C5FFA08(v7);
    if ((v9 & 1) != (v24 & 1))
    {
LABEL_35:
      sub_23C872064();
      __break(1u);
      return;
    }

    v8 = v23;
    v11[3] = v58[0];
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v11[3] = v18;
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_31:
  sub_23C644870(&qword_27E1F9B08, &unk_23C87BE60);
  v18 = v58[0];
  v11[3] = v58[0];
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_9:
  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = v7;
  *(v18[7] + 8 * v8) = MEMORY[0x277D84F90];
  v25 = v18[2];
  v13 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v13)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v18[2] = v26;
  v27 = v7;
LABEL_11:
  sub_23C6360F8(inited, sub_23C6487D4);

  swift_endAccess();

  v28 = v56;
  sub_23C63AD1C(v56, v6);

  swift_beginAccess();
  v29 = v11[5];

  v30 = sub_23C6323B8(v56, v29);

  v31 = v11[5];

  v32 = sub_23C6323B8(v6, v31);

  if (!v30 || !v32 || (v33 = v30, v34 = v32, v35 = sub_23C871B34(), v33, v34, (v35 & 1) == 0))
  {
    v36 = v11[4];
    v37 = swift_initStackObject();
    *(v37 + 16) = v54;
    *(v37 + 32) = v28;

    v38 = v28;
    v39 = MEMORY[0x277D84FA0];
    do
    {
      while (1)
      {

        v39 = sub_23C64913C(v40, v39);

        v58[0] = v39;

        v41 = sub_23C649230(v37, v36);

        v37 = sub_23C6495EC(v41, v58);

        if (v37 >> 62)
        {
          break;
        }

        if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }
      }
    }

    while (sub_23C871C34());
LABEL_19:

    sub_23C5916F4(v39);
    v43 = v42;
    v58[0] = v42;
    MEMORY[0x28223BE20](v42);
    v53[2] = v11;
    v53[3] = v58;
    sub_23C63246C(sub_23C64BBD8, v53, v39);
  }

  v44 = v11[5];

  v45 = sub_23C6323B8(v28, v44);
  if (!v45)
  {
    goto LABEL_34;
  }

  v46 = v45;

  swift_beginAccess();
  v47 = v11[2];
  if (*(v47 + 16))
  {

    v48 = sub_23C5FFA08(v46);
    v49 = 0.0;
    if (v50)
    {
      v49 = *(*(v47 + 56) + 8 * v48);
    }
  }

  else
  {
    v49 = 0.0;
  }

  if (v49 > v10)
  {
    v10 = v49;
  }

  swift_beginAccess();
  v51 = v46;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v11[2];
  v11[2] = 0x8000000000000000;
  sub_23C593F08(v51, v52, v10);

  v11[2] = v57;
  swift_endAccess();
}

uint64_t sub_23C636734(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v18 = v10;
  v19 = v10[6];
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_44;
  }

  v17 = a9;
  v15 = a3;
  v18[6] = v21;
  v119 = a2;
  v120 = a4;
  v121 = a6;
  v122 = a8;
  v25 = sub_23C637C60(a2, a3, a4, a5, a6, a7, a8, a10);
  v27 = v26;
  v118 = v28;
  v14 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C874E20;
  v114 = inited;
  *(inited + 32) = a1;
  swift_beginAccess();
  v115 = v15;

  v116 = a5;

  v117 = a7;

  v123 = a10;
  v16 = v25;

  v31 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v142[0] = v18[3];
  v33 = v142[0];
  v18[3] = 0x8000000000000000;
  v34 = v25;
  v12 = v27;
  v35 = v27;
  v11 = v118;
  v13 = sub_23C5FFB88(v34, v35, v118, v14);
  v37 = *(v33 + 16);
  v38 = (v36 & 1) == 0;
  v39 = v37 + v38;
  if (__OFADD__(v37, v38))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  LOBYTE(v15) = v36;
  if (*(v33 + 24) >= v39)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_47;
    }

    while (1)
    {
LABEL_7:
      v42 = v142[0];
      v18[3] = v142[0];
      if ((v15 & 1) == 0)
      {
        v42[(v13 >> 6) + 8] |= 1 << v13;
        v43 = (v42[6] + 32 * v13);
        *v43 = v16;
        v43[1] = v12;
        v43[2] = v11;
        v43[3] = v14;
        *(v42[7] + 8 * v13) = MEMORY[0x277D84F90];
        v44 = v42[2];
        v20 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v20)
        {
          __break(1u);
          goto LABEL_49;
        }

        v42[2] = v45;
      }

      sub_23C6360F8(v114, sub_23C648964);

      swift_endAccess();
      v113 = v18;
      v46 = v119;
      v47 = v120;
      v49 = v115;
      v48 = v116;
      v142[0] = v119;
      v142[1] = v115;
      v142[2] = v120;
      v142[3] = v116;
      v51 = v121;
      v50 = v122;
      v52 = v117;
      v142[4] = v121;
      v142[5] = v117;
      v53 = v123;
      v142[6] = v122;
      v142[7] = v123;

      sub_23C5855B0(v142, v143, &qword_27E1F9DD0, &unk_23C874ED0);
      sub_23C63B034(v46, v49, v47, v48, v51, v52, v50, v53);

      v143[0] = v46;
      v143[1] = v49;
      v143[2] = v47;
      v143[3] = v48;
      v143[4] = v51;
      v143[5] = v52;
      v54 = v52;
      v143[6] = v50;
      v143[7] = v53;
      v55 = v113;
      swift_beginAccess();
      v56 = v55;
      v57 = *(v55 + 40);
      if (*(v57 + 16))
      {
        sub_23C5855B0(v143, &v134, &qword_27E1F9DD0, &unk_23C874ED0);

        v58 = v119;
        v14 = v49;
        v59 = v48;
        v60 = sub_23C5FFB88(v119, v49, v47, v48);
        v61 = v58;
        if (v62)
        {
          v63 = (*(v57 + 56) + 32 * v60);
          v64 = v63[1];
          v114 = *v63;
          v65 = v63[3];
          v112 = v63[2];
          v118 = v64;

          v110 = v65;
        }

        else
        {

          v114 = 0;
          v118 = 0;
          v112 = 0;
          v110 = 0;
        }
      }

      else
      {
        v14 = v49;
        v59 = v48;
        sub_23C5855B0(v143, &v134, &qword_27E1F9DD0, &unk_23C874ED0);
        v114 = 0;
        v118 = 0;
        v112 = 0;
        v110 = 0;
        v61 = v119;
      }

      v18 = v56;
      v66 = v54;

      v134 = v61;
      v135 = v14;
      v67 = v121;
      v136 = v120;
      v137 = v59;
      v138 = v121;
      v139 = v54;
      v69 = v122;
      v68 = v123;
      v140 = v122;
      v141 = v123;
      v70 = v18[5];
      v15 = v61;
      if (!*(v70 + 16))
      {
        break;
      }

      sub_23C5855B0(&v134, &v126, &qword_27E1F9DD0, &unk_23C874ED0);

      v71 = sub_23C5FFB88(v67, v66, v69, v68);
      if ((v72 & 1) == 0)
      {

        goto LABEL_20;
      }

      v73 = (*(v70 + 56) + 32 * v71);
      v16 = v73[1];
      v113 = *v73;
      v74 = v73[3];
      v111 = v73[2];

      v109 = v74;

LABEL_21:
      v75 = v135;
      v76 = v137;
      v107 = v136;
      v108 = v134;

      if (!v118 || !v16)
      {
        goto LABEL_32;
      }

      if ((v114 != v113 || v118 != v16) && (sub_23C872014() & 1) == 0)
      {
        sub_23C5A79B4(v114, v118, v112, v110);
        sub_23C5A79B4(v113, v16, v111, v109);

LABEL_32:

        v81 = sub_23C63BA88(v108, v75, v107, v76);

        v82 = sub_23C591B98(v81);
        v84 = v83;
        v13 = v85;
        v87 = v86;
        v14 = v16;
        v126 = v82;
        v127 = v83;
        v128 = v85;
        v129 = v86;
        MEMORY[0x28223BE20](v82);
        v105[2] = v18;
        v105[3] = &v126;
        sub_23C63269C(sub_23C64BCF0, v105, v81);

        v88 = v87;
        v15 = v119;
        sub_23C58428C(v82, v84, v13, v88);
        goto LABEL_33;
      }

      v13 = v109;
      v77 = v110;
      if (v112 == v111 && v110 == v109)
      {
        v78 = v112;
        sub_23C5A79B4(v114, v118, v112, v110);
        sub_23C5A79B4(v113, v16, v78, v77);

        goto LABEL_33;
      }

      v79 = v110;
      v14 = v112;
      v106 = sub_23C872014();
      v80 = v13;
      v13 = v118;
      sub_23C5A79B4(v114, v118, v14, v79);
      sub_23C5A79B4(v113, v16, v111, v80);

      if ((v106 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_33:
      v89 = v115;
      v11 = v116;
      v126 = v15;
      v127 = v115;
      v12 = v120;
      v128 = v120;
      v129 = v116;
      v130 = v121;
      v131 = v117;
      v132 = v122;
      v133 = v123;
      v90 = v18[5];
      if (*(v90 + 16))
      {
        sub_23C5855B0(&v126, v125, &qword_27E1F9DD0, &unk_23C874ED0);

        v91 = sub_23C5FFB88(v15, v89, v12, v11);
        if (v92)
        {
          v108 = v16;
          v93 = (*(v90 + 56) + 32 * v91);
          v94 = *v93;
          v95 = v93[1];
          v97 = v93[2];
          v96 = v93[3];

          swift_beginAccess();
          v98 = v18[2];
          if (*(v98 + 16))
          {

            v99 = sub_23C5FFB88(v94, v95, v97, v96);
            v100 = 0.0;
            v101 = v117;
            if (v102)
            {
              v100 = *(*(v98 + 56) + 8 * v99);
            }
          }

          else
          {
            v100 = 0.0;
            v101 = v117;
          }

          if (v100 > v17)
          {
            v17 = v100;
          }

          swift_beginAccess();
          v103 = swift_isUniquelyReferenced_nonNull_native();
          v124 = v18[2];
          v18[2] = 0x8000000000000000;
          sub_23C59461C(v94, v95, v97, v96, v103, v17);
          v18[2] = v124;
          swift_endAccess();
          sub_23C58428C(v113, v108, v111, v109);
          sub_23C58428C(v114, v118, v112, v110);

          v125[0] = v119;
          v125[1] = v115;
          v125[2] = v120;
          v125[3] = v116;
          v125[4] = v121;
          v125[5] = v101;
          v125[6] = v122;
          v125[7] = v123;
          return sub_23C585C34(v125, &qword_27E1F9DD0, &unk_23C874ED0);
        }
      }

      else
      {
LABEL_45:
        __break(1u);
      }

      __break(1u);
LABEL_47:
      sub_23C644140(&unk_27E1FBDD0, &unk_23C874D10);
    }

    sub_23C5855B0(&v134, &v126, &qword_27E1F9DD0, &unk_23C874ED0);
LABEL_20:
    v113 = 0;
    v16 = 0;
    v111 = 0;
    v109 = 0;
    goto LABEL_21;
  }

  sub_23C63EA50(v39, isUniquelyReferenced_nonNull_native, &unk_27E1FBDD0, &unk_23C874D10);
  v40 = sub_23C5FFB88(v16, v12, v118, v14);
  if ((v15 & 1) == (v41 & 1))
  {
    v13 = v40;
    goto LABEL_7;
  }

LABEL_49:
  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C6370F8(void *a1, char *a2, uint64_t (*inited)(uint64_t a1), double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBCA8, &qword_23C87BDB8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v92 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v89 = &v88 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v90 = &v88 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v95 = &v88 - v18;
  MEMORY[0x28223BE20](v17);
  v96 = &v88 - v19;
  v98 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v100 = *(v98 - 8);
  v20 = MEMORY[0x28223BE20](v98);
  v93 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v94 = &v88 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v91 = &v88 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v88 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBCB0, &unk_23C87BDC0);
  v29 = MEMORY[0x28223BE20](v28);
  v97 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v88 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v88 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v88 - v37;
  v39 = type metadata accessor for SiriConversationPublisher.GraphUUID;
  sub_23C600748(a2, &v88 - v37, type metadata accessor for SiriConversationPublisher.GraphUUID);
  v99 = v28;
  v40 = &v38[*(v28 + 48)];
  sub_23C600748(inited, v40, type metadata accessor for SiriConversationPublisher.GraphUUID);
  v41 = v5[6];
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v5[6] = v43;
  if (MEMORY[0x23EED6420](v40, v38))
  {
    v44 = v40;
  }

  else
  {
    v44 = v38;
  }

  sub_23C600748(v44, v27, type metadata accessor for SiriConversationPublisher.GraphUUID);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_23C874E20;
  *(inited + 4) = a1;
  swift_beginAccess();
  v45 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v102[0] = v5[3];
  v47 = v102[0];
  v5[3] = 0x8000000000000000;
  a2 = sub_23C5FFCB8(v27);
  v49 = v47[2];
  v50 = (v48 & 1) == 0;
  v51 = v49 + v50;
  if (__OFADD__(v49, v50))
  {
    goto LABEL_42;
  }

  LOBYTE(v39) = v48;
  if (v47[3] >= v51)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_45;
    }

    v5[3] = v47;
    if ((v48 & 1) == 0)
    {
      goto LABEL_12;
    }

    while (1)
    {
LABEL_13:
      sub_23C6360F8(inited, sub_23C648C84);
      sub_23C64BB78(v27, type metadata accessor for SiriConversationPublisher.GraphUUID);
      swift_endAccess();
      sub_23C5855B0(v38, v36, &unk_27E1FBCB0, &unk_23C87BDC0);
      v55 = *(v99 + 48);

      sub_23C63B4B0(v36, &v36[v55]);

      sub_23C64BB78(&v36[v55], type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C64BB78(v36, type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C5855B0(v38, v33, &unk_27E1FBCB0, &unk_23C87BDC0);
      swift_beginAccess();
      v56 = v5[5];
      if (*(v56 + 16))
      {

        v57 = sub_23C5FFCB8(v33);
        v27 = v96;
        if (v58)
        {
          sub_23C600748(*(v56 + 56) + v100[9] * v57, v96, type metadata accessor for SiriConversationPublisher.GraphUUID);
          v59 = 0;
        }

        else
        {
          v59 = 1;
        }
      }

      else
      {
        v59 = 1;
        v27 = v96;
      }

      v60 = v100[7];
      v61 = 1;
      v60(v27, v59, 1, v98);
      v62 = v99;
      sub_23C64BB78(&v33[*(v99 + 48)], type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C64BB78(v33, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v63 = v97;
      sub_23C5855B0(v38, v97, &unk_27E1FBCB0, &unk_23C87BDC0);
      v64 = *(v62 + 48);
      v65 = v5[5];
      if (*(v65 + 16))
      {

        v66 = sub_23C5FFCB8(v63 + v64);
        v33 = v95;
        if (v67)
        {
          sub_23C600748(*(v65 + 56) + v100[9] * v66, v95, type metadata accessor for SiriConversationPublisher.GraphUUID);
          v61 = 0;
        }

        else
        {
          v61 = 1;
        }
      }

      else
      {
        v33 = v95;
      }

      v68 = v61;
      v69 = v98;
      v60(v33, v68, 1, v98);
      v70 = v97;
      sub_23C64BB78(v97 + v64, type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C64BB78(v70, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v71 = v100[6];
      v72 = v71(v27, 1, v69);
      v39 = v94;
      if (v72 == 1 || v71(v33, 1, v69) == 1)
      {
        goto LABEL_30;
      }

      a2 = v90;
      sub_23C5855B0(v27, v90, &qword_27E1FBCA8, &qword_23C87BDB8);
      if (v71(a2, 1, v69) == 1)
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v73 = v89;
      sub_23C5855B0(v33, v89, &qword_27E1FBCA8, &qword_23C87BDB8);
      if (v71(v73, 1, v69) == 1)
      {
        goto LABEL_48;
      }

      v74 = sub_23C870B44();
      inited = type metadata accessor for SiriConversationPublisher.GraphUUID;
      sub_23C64BB78(v73, type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C64BB78(a2, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v27 = v96;
      if ((v74 & 1) == 0)
      {
LABEL_30:

        v75 = sub_23C63BD68(v38);

        a2 = v92;
        v76 = sub_23C591DB0(v75, v92);
        MEMORY[0x28223BE20](v76);
        *(&v88 - 2) = v5;
        *(&v88 - 1) = a2;
        inited = 0;
        sub_23C6327F4(sub_23C64B310, (&v88 - 4), v75);

        sub_23C585C34(a2, &qword_27E1FBCA8, &qword_23C87BDB8);
      }

      sub_23C5855B0(v38, v36, &unk_27E1FBCB0, &unk_23C87BDC0);
      v77 = v5[5];
      if (*(v77 + 16))
      {
        v78 = *(v99 + 48);

        v79 = sub_23C5FFCB8(v36);
        if (v80)
        {
          sub_23C600748(*(v77 + 56) + v100[9] * v79, v39, type metadata accessor for SiriConversationPublisher.GraphUUID);

          sub_23C64BB78(&v36[v78], type metadata accessor for SiriConversationPublisher.GraphUUID);
          sub_23C64BB78(v36, type metadata accessor for SiriConversationPublisher.GraphUUID);
          v81 = v93;
          sub_23C600748(v39, v93, type metadata accessor for SiriConversationPublisher.GraphUUID);
          swift_beginAccess();
          v82 = v5[2];
          if (*(v82 + 16))
          {

            v83 = sub_23C5FFCB8(v39);
            v84 = 0.0;
            if (v85)
            {
              v84 = *(*(v82 + 56) + 8 * v83);
            }
          }

          else
          {
            v84 = 0.0;
          }

          if (v84 > a4)
          {
            a4 = v84;
          }

          swift_beginAccess();
          v86 = swift_isUniquelyReferenced_nonNull_native();
          v101 = v5[2];
          v5[2] = 0x8000000000000000;
          sub_23C594A44(v81, v86, a4);
          sub_23C64BB78(v81, type metadata accessor for SiriConversationPublisher.GraphUUID);
          v5[2] = v101;
          swift_endAccess();
          sub_23C64BB78(v39, type metadata accessor for SiriConversationPublisher.GraphUUID);
          sub_23C585C34(v38, &unk_27E1FBCB0, &unk_23C87BDC0);
          sub_23C585C34(v33, &qword_27E1FBCA8, &qword_23C87BDB8);
          return sub_23C585C34(v27, &qword_27E1FBCA8, &qword_23C87BDB8);
        }
      }

      else
      {
LABEL_43:
        __break(1u);
      }

      __break(1u);
LABEL_45:
      sub_23C644FD8(&unk_27E1FBCC0, &unk_23C87BDD0);
      v47 = v102[0];
      v5[3] = v102[0];
      if ((v39 & 1) == 0)
      {
LABEL_12:
        v54 = v91;
        sub_23C600748(v27, v91, type metadata accessor for SiriConversationPublisher.GraphUUID);
        sub_23C642D24(a2, v54, MEMORY[0x277D84F90], v47, type metadata accessor for SiriConversationPublisher.GraphUUID, type metadata accessor for SiriConversationPublisher.GraphUUID);
      }
    }
  }

  sub_23C640768(v51, isUniquelyReferenced_nonNull_native, &unk_27E1FBCC0, &unk_23C87BDD0);
  v47 = v102[0];
  v52 = sub_23C5FFCB8(v27);
  if ((v39 & 1) == (v53 & 1))
  {
    a2 = v52;
    v5[3] = v47;
    if ((v39 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_49:
  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C637C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a7 == a3 && a8 == a4 || (sub_23C872014()) && a5 == a1 && a6 == a2 || (sub_23C872014() & 1) == 0)
  {
    a5 = a1;
  }

  return a5;
}

uint64_t sub_23C637D50(double a1)
{
  swift_beginAccess();
  v25 = a1;

  v3 = 0;
  v4 = sub_23C64B010(v2, sub_23C60C740, v24, sub_23C64AD24, sub_23C64AD24);

  v5 = v4[2];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = sub_23C64D4F0(v4[2], 0);
    v8 = sub_23C652C14(&v26, v7 + 4, v5, v4);
    v9 = v26;

    sub_23C56EF08(v9);
    if (v8 != v5)
    {
LABEL_15:
      __break(1u);

      __break(1u);
      return result;
    }

    v6 = MEMORY[0x277D84F90];
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v26 = v7;
  sub_23C6456D0(&v26);

  v10 = v26;
  v3 = v26[2];
  if (v3)
  {
    v26 = v6;
    sub_23C592C24(0, v3, 0);
    v11 = 0;
    v12 = v26;
    v13 = (v10 + 56);
    v22 = v3;
    v23 = v10;
    while (v11 < *(v10 + 16))
    {
      v15 = *(v13 - 3);
      v14 = *(v13 - 2);
      v17 = *(v13 - 1);
      v16 = *v13;
      v26 = v12;
      v18 = *(v12 + 16);
      v19 = *(v12 + 24);

      if (v18 >= v19 >> 1)
      {
        sub_23C592C24((v19 > 1), v18 + 1, 1);
        v12 = v26;
      }

      ++v11;
      *(v12 + 16) = v18 + 1;
      v20 = (v12 + 32 * v18);
      v20[4] = v15;
      v20[5] = v14;
      v20[6] = v17;
      v20[7] = v16;
      v13 += 5;
      v3 = v22;
      v10 = v23;
      if (v22 == v11)
      {

        return v12;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C637F9C(double a1)
{
  swift_beginAccess();
  *&v15[2] = a1;

  v3 = 0;
  v4 = sub_23C64B010(v2, sub_23C60BFE8, v15, sub_23C64AEAC, sub_23C64AEAC);

  v5 = v4[2];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = sub_23C64D3D0(v4[2], 0);
    v8 = sub_23C6527F4(&v16, v7 + 4, v5, v4);
    v9 = v16;

    sub_23C56EF08(v9);
    if (v8 != v5)
    {
      goto LABEL_12;
    }

    v6 = MEMORY[0x277D84F90];
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v16 = v7;
  sub_23C60922C(&v16);

  v10 = v16;
  v3 = v16[2];
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v16 = v6;
  sub_23C871D84();
  v11 = 0;
  v12 = 32;
  while (v11 < *(v10 + 16))
  {
    ++v11;
    v13 = *(v10 + v12);
    sub_23C871D54();
    sub_23C871D94();
    sub_23C871DA4();
    sub_23C871D64();
    v12 += 16;
    if (v3 == v11)
    {

      return v16;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_23C6381B4(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v30 = a1;

  v10 = sub_23C64B010(v9, sub_23C60C740, v29, sub_23C64B910, sub_23C64B910);

  v11 = v10[2];
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = sub_23C64D650(v10[2], 0);
    v14 = sub_23C653078(v31, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v11, v10);
    v15 = v31[0];
    v16 = v31[2];
    v26 = v31[3];
    v27 = v14;
    v25 = v31[4];

    sub_23C56EF08(v15);
    if (v27 != v11)
    {
LABEL_15:
      __break(1u);

      __break(1u);
      return result;
    }

    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v31[0] = v13;
  sub_23C645848(v31);

  v17 = v31[0];
  v16 = *(v31[0] + 16);
  if (v16)
  {
    v18 = v8;
    v31[0] = v12;
    sub_23C592CC8(0, v16, 0);
    v19 = 0;
    v20 = v31[0];
    v26 = v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v27 = v3;
    while (v19 < *(v17 + 16))
    {
      v21 = v17;
      sub_23C5855B0(v26 + *(v27 + 72) * v19, v5, &qword_27E1F9A98, &qword_23C874AF0);
      sub_23C600748(v5, v18, type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C585C34(v5, &qword_27E1F9A98, &qword_23C874AF0);
      v31[0] = v20;
      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_23C592CC8((v22 > 1), v23 + 1, 1);
        v20 = v31[0];
      }

      ++v19;
      *(v20 + 16) = v23 + 1;
      sub_23C64BB10(v18, v20 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v17 = v21;
      if (v16 == v19)
      {

        return v20;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C63858C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_23C64D4F0(*(v1 + 16), 0);
    v4 = sub_23C652C14(&v21, v3 + 4, v2, v1);
    v5 = v21;
    swift_bridgeObjectRetain_n();
    sub_23C56EF08(v5);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v21 = v3;
  sub_23C6456D0(&v21);

  v6 = v21;
  v7 = v21[2];
  if (v7)
  {
    v21 = MEMORY[0x277D84F90];
    sub_23C592C24(0, v7, 0);
    v8 = 0;
    v9 = v21;
    v10 = (v6 + 56);
    v19 = v7;
    v20 = v6;
    while (v8 < *(v6 + 16))
    {
      v12 = *(v10 - 3);
      v11 = *(v10 - 2);
      v14 = *(v10 - 1);
      v13 = *v10;
      v21 = v9;
      v15 = *(v9 + 16);
      v16 = *(v9 + 24);

      if (v15 >= v16 >> 1)
      {
        sub_23C592C24((v16 > 1), v15 + 1, 1);
        v9 = v21;
      }

      ++v8;
      *(v9 + 16) = v15 + 1;
      v17 = (v9 + 32 * v15);
      v17[4] = v12;
      v17[5] = v11;
      v17[6] = v14;
      v17[7] = v13;
      v10 += 5;
      v7 = v19;
      v6 = v20;
      if (v19 == v8)
      {

        return v9;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_23C638774()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v0 + 16);
  v9 = *(v8 + 16);
  v22 = v2;
  if (v9)
  {
    v10 = sub_23C64D650(v9, 0);
    v11 = sub_23C653078(v23, v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v9, v8);
    v12 = v23[0];
    v20 = v23[4];
    swift_bridgeObjectRetain_n();
    sub_23C56EF08(v12);
    if (v11 != v9)
    {
LABEL_15:
      __break(1u);

      __break(1u);
      return result;
    }

    v2 = v22;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v23[0] = v10;
  v10 = 0;
  sub_23C645848(v23);

  v13 = v23[0];
  v14 = *(v23[0] + 16);
  if (v14)
  {
    v23[0] = MEMORY[0x277D84F90];
    v20 = v14;
    sub_23C592CC8(0, v14, 0);
    v15 = 0;
    v16 = v23[0];
    v17 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    while (v15 < *(v13 + 16))
    {
      sub_23C5855B0(v17 + *(v2 + 72) * v15, v4, &qword_27E1F9A98, &qword_23C874AF0);
      sub_23C600748(v4, v7, type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C585C34(v4, &qword_27E1F9A98, &qword_23C874AF0);
      v23[0] = v16;
      v10 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v10 >= v18 >> 1)
      {
        sub_23C592CC8((v18 > 1), v10 + 1, 1);
        v16 = v23[0];
      }

      ++v15;
      *(v16 + 16) = v10 + 1;
      sub_23C64BB10(v7, v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v10, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v2 = v22;
      if (v20 == v15)
      {

        return v16;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C638AD4(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 40);

  v5 = sub_23C6323B8(a1, v4);

  if (!v5)
  {
    return 0;
  }

  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!*(v6 + 16))
  {
LABEL_18:

    return 0;
  }

  v7 = sub_23C5FFA08(v5);
  if ((v8 & 1) == 0)
  {

    goto LABEL_18;
  }

  v21 = *(*(v6 + 56) + 8 * v7);

  v9 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C874E20;
  *(inited + 32) = a1;

  v11 = a1;
  v12 = MEMORY[0x277D84FA0];
  do
  {
    while (1)
    {

      v12 = sub_23C64913C(v13, v12);

      v22 = v12;

      v14 = sub_23C649230(inited, v9);

      inited = sub_23C6495EC(v14, &v22);

      if (inited >> 62)
      {
        break;
      }

      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_9;
      }
    }
  }

  while (sub_23C871C34());
LABEL_9:

  v15 = sub_23C631384(v12);

  sub_23C6499B8(v15, v2);

  if (v15 >> 62)
  {
    v16 = sub_23C871C34();
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_23:

    v20 = MEMORY[0x277D84F90];
LABEL_24:
    sub_23C6393EC(v20);

    return v21;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_11:
  v22 = MEMORY[0x277D84F90];
  result = sub_23C871D84();
  if ((v16 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EED7610](v18, v15);
      }

      else
      {
        v19 = *(v15 + 8 * v18 + 32);
      }

      ++v18;
      sub_23C871D54();
      sub_23C871D94();
      sub_23C871DA4();
      sub_23C871D64();
    }

    while (v16 != v18);

    v20 = v22;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C638DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 40);
  if (!*(v10 + 16))
  {
    return 0;
  }

  v11 = sub_23C5FFB88(a1, a2, a3, a4);
  if ((v12 & 1) == 0)
  {
LABEL_14:

    return 0;
  }

  v13 = (*(v10 + 56) + 32 * v11);
  v15 = *v13;
  v14 = v13[1];
  v17 = v13[2];
  v16 = v13[3];

  swift_beginAccess();
  v18 = *(v5 + 16);
  if (!*(v18 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v19 = sub_23C5FFB88(v15, v14, v17, v16);
  if ((v20 & 1) == 0)
  {

    goto LABEL_13;
  }

  v34 = *(*(v18 + 56) + 8 * v19);

  v21 = sub_23C63BA88(a1, a2, a3, a4);

  v22 = sub_23C631680(v21);

  sub_23C649DE0(v22, v5);

  v23 = *(v22 + 16);
  if (v23)
  {
    v35 = MEMORY[0x277D84F90];
    sub_23C592C24(0, v23, 0);
    v24 = v35;
    v25 = (v22 + 56);
    do
    {
      v26 = *(v25 - 3);
      v27 = *(v25 - 2);
      v28 = *(v25 - 1);
      v29 = *v25;
      v30 = *(v35 + 16);
      v31 = *(v35 + 24);

      if (v30 >= v31 >> 1)
      {
        sub_23C592C24((v31 > 1), v30 + 1, 1);
      }

      *(v35 + 16) = v30 + 1;
      v32 = (v35 + 32 * v30);
      v32[4] = v26;
      v32[5] = v27;
      v32[6] = v28;
      v32[7] = v29;
      v25 += 4;
      --v23;
    }

    while (v23);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  sub_23C6394F0(v24);

  return v34;
}

uint64_t sub_23C63906C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  swift_beginAccess();
  v14 = *(v1 + 40);
  if (!*(v14 + 16))
  {
    return 0;
  }

  v15 = sub_23C5FFCB8(a1);
  if ((v16 & 1) == 0)
  {

    return 0;
  }

  v17 = *(v5 + 72);
  sub_23C600748(*(v14 + 56) + v17 * v15, v11, type metadata accessor for SiriConversationPublisher.GraphUUID);

  sub_23C64BB10(v11, v13, type metadata accessor for SiriConversationPublisher.GraphUUID);
  swift_beginAccess();
  v18 = *(v2 + 16);
  if (!*(v18 + 16))
  {
LABEL_13:
    sub_23C64BB78(v13, type metadata accessor for SiriConversationPublisher.GraphUUID);
    return 0;
  }

  v19 = sub_23C5FFCB8(v13);
  if ((v20 & 1) == 0)
  {

    goto LABEL_13;
  }

  v33 = *(*(v18 + 56) + 8 * v19);

  v21 = sub_23C63BD68(a1);

  v22 = sub_23C6318C0(v21);

  v32 = sub_23C64A144(v22, v2);

  v23 = *(v22 + 16);
  if (v23)
  {
    v31 = v13;
    v34 = MEMORY[0x277D84F90];
    sub_23C592CC8(0, v23, 0);
    v24 = v34;
    v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v30 = v22;
    v26 = v22 + v25;
    do
    {
      sub_23C600748(v26, v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v34 = v24;
      v28 = *(v24 + 16);
      v27 = *(v24 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_23C592CC8((v27 > 1), v28 + 1, 1);
        v24 = v34;
      }

      *(v24 + 16) = v28 + 1;
      sub_23C64BB10(v8, v24 + v25 + v28 * v17, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v26 += v17;
      --v23;
    }

    while (v23);

    v13 = v31;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  sub_23C6395AC(v24);

  sub_23C64BB78(v13, type metadata accessor for SiriConversationPublisher.GraphUUID);
  return v33;
}

void sub_23C6393EC(unint64_t a1)
{
  v2 = v1;

  sub_23C63C0DC(a1);

  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C871C34())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EED7610](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_23C6397EC(v6, v2);

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_23C6394F0(uint64_t a1)
{
  v2 = v1;

  sub_23C63C248(a1);

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 56);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v10 = *(v6 - 3);
      v9 = *(v6 - 2);

      sub_23C63999C(v10, v9, v8, v7, v2);

      v6 += 4;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_23C6395AC(uint64_t a1)
{
  v3 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[4];
  v8 = *(a1 + 16);

  if (v8)
  {
    v20 = v1;
    v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    v11 = v9;
    v12 = v8;
    do
    {
      sub_23C600748(v11, v6, type metadata accessor for SiriConversationPublisher.GraphUUID);
      swift_beginAccess();
      v13 = sub_23C5FFCB8(v6);
      if (v14)
      {
        v15 = v13;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *(v7 + 16);
        v21 = v17;
        *(v7 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_23C644FD8(&qword_27E1F9AB8, &qword_23C874B18);
          v17 = v21;
        }

        sub_23C64BB78(*(v17 + 48) + v15 * v10, type metadata accessor for SiriConversationPublisher.GraphUUID);
        sub_23C641F78(v15, v17);
        *(v7 + 16) = v17;
      }

      swift_endAccess();
      sub_23C64BB78(v6, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v11 += v10;
      --v12;
    }

    while (v12);

    v18 = v20;
    do
    {
      result = sub_23C639BF8(v9, v18);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  else
  {
  }

  return result;
}

uint64_t sub_23C6397EC(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a2[5];

  v5 = sub_23C6323B8(a1, v4);

  if (v5)
  {
    swift_beginAccess();
    sub_23C64D774(v5);
    swift_endAccess();
  }

  swift_beginAccess();
  v6 = sub_23C64D81C(a1);
  swift_endAccess();

  swift_beginAccess();
  v7 = a2[3];
  if (!*(v7 + 16))
  {
    goto LABEL_9;
  }

  v8 = sub_23C5FFA08(a1);
  if ((v9 & 1) == 0)
  {

LABEL_9:
    i = 0;
    goto LABEL_10;
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  if (v10 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

LABEL_10:
    v12 = a2[6];
    v13 = __OFSUB__(v12, i);
    v14 = v12 - i;
    if (!v13)
    {
      break;
    }

    __break(1u);
LABEL_13:
    ;
  }

  a2[6] = v14;
  swift_beginAccess();
  sub_23C64D968(a1);
  swift_endAccess();
}

uint64_t sub_23C63999C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  v10 = a5[5];
  if (*(v10 + 16))
  {

    v11 = sub_23C5FFB88(a1, a2, a3, a4);
    if (v12)
    {
      v13 = (*(v10 + 56) + 32 * v11);
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[3];
      v33 = v13[2];

      swift_beginAccess();
      sub_23C64DAD4(v14, v15, v33, v16);
      swift_endAccess();
    }
  }

  swift_beginAccess();
  v17 = sub_23C64D9FC(a1, a2, a3, a4);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  swift_endAccess();
  sub_23C58428C(v17, v19, v21, v23);
  swift_beginAccess();
  v24 = a5[3];
  if (!*(v24 + 16))
  {
    goto LABEL_11;
  }

  v25 = sub_23C5FFB88(a1, a2, a3, a4);
  if ((v26 & 1) == 0)
  {

LABEL_11:
    i = 0;
    goto LABEL_12;
  }

  v27 = *(*(v24 + 56) + 8 * v25);

  if (v27 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

LABEL_12:
    v29 = a5[6];
    v30 = __OFSUB__(v29, i);
    v31 = v29 - i;
    if (!v30)
    {
      break;
    }

    __break(1u);
LABEL_15:
    ;
  }

  a5[6] = v31;
  swift_beginAccess();
  sub_23C64DB8C(a1, a2, a3, a4);
  swift_endAccess();
}

uint64_t sub_23C639BF8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBCA8, &qword_23C87BDB8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  swift_beginAccess();
  v14 = a2[5];
  if (*(v14 + 16))
  {

    v15 = sub_23C5FFCB8(a1);
    if (v16)
    {
      sub_23C600748(*(v14 + 56) + *(v8 + 72) * v15, v11, type metadata accessor for SiriConversationPublisher.GraphUUID);

      sub_23C64BB10(v11, v13, type metadata accessor for SiriConversationPublisher.GraphUUID);
      swift_beginAccess();
      sub_23C632B3C(v13);
      swift_endAccess();
      sub_23C64BB78(v13, type metadata accessor for SiriConversationPublisher.GraphUUID);
    }

    else
    {
    }
  }

  swift_beginAccess();
  sub_23C632C14(a1, v6);
  sub_23C585C34(v6, &qword_27E1FBCA8, &qword_23C87BDB8);
  swift_endAccess();
  swift_beginAccess();
  v17 = a2[3];
  if (!*(v17 + 16))
  {
    goto LABEL_11;
  }

  v18 = sub_23C5FFCB8(a1);
  if ((v19 & 1) == 0)
  {

LABEL_11:
    i = 0;
    goto LABEL_12;
  }

  v20 = *(*(v17 + 56) + 8 * v18);

  if (v20 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

LABEL_12:
    v22 = a2[6];
    v23 = __OFSUB__(v22, i);
    v24 = v22 - i;
    if (!v23)
    {
      break;
    }

    __break(1u);
LABEL_15:
    ;
  }

  a2[6] = v24;
  swift_beginAccess();
  sub_23C632D90(a1);
  swift_endAccess();
}

char *sub_23C639F00(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 40);

  v7 = sub_23C6323B8(a1, v6);

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(a2 + 40);

  v9 = sub_23C6323B8(a1, v8);

  if (!v9)
  {
    if (!a3)
    {
      swift_beginAccess();
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_9;
  }

  sub_23C870E34();
  v10 = v9;
  v11 = a3;
  v12 = sub_23C871B34();

  if ((v12 & 1) == 0)
  {
LABEL_9:
    v13 = *(a2 + 40);

    result = sub_23C6323B8(a1, v13);
    if (!result)
    {
      goto LABEL_23;
    }

    v15 = result;

    swift_beginAccess();
    sub_23C64D774(v15);
    swift_endAccess();

LABEL_11:
    swift_beginAccess();
    if (a3)
    {
      goto LABEL_12;
    }

LABEL_18:

    return swift_endAccess();
  }

  swift_beginAccess();
LABEL_12:
  v16 = *(a2 + 40);
  if ((v16 & 0xC000000000000001) == 0)
  {
    v18 = a3;
    goto LABEL_20;
  }

  if (v16 < 0)
  {
    v17 = *(a2 + 40);
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  v18 = a3;
  result = sub_23C871C34();
  if (!__OFADD__(result, 1))
  {
    *(a2 + 40) = sub_23C64DE34(v17, (result + 1));
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a2 + 40);
    sub_23C594024(v18, a1, isUniquelyReferenced_nonNull_native);
    *(a2 + 40) = v20;
    return swift_endAccess();
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_23C63A13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  if (!*(*(a5 + 40) + 16))
  {
    goto LABEL_27;
  }

  sub_23C5FFB88(a1, a2, a3, a4);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    goto LABEL_27;
  }

  v51 = a1;
  v52 = a3;
  v17 = *(a5 + 40);
  v18 = *(v17 + 16);
  if (!v18)
  {
LABEL_19:
    v24 = 0;
    v23 = 0;
    if (!a7)
    {
LABEL_27:
      swift_beginAccess();
      sub_23C5A79B4(a6, a7, a8, a9);

      sub_23C631BBC(a6, a7, a8, a9, a1, a2, a3, a4);
      swift_endAccess();
      return;
    }

    goto LABEL_20;
  }

  v19 = sub_23C5FFB88(a1, a2, a3, a4);
  if ((v20 & 1) == 0)
  {

    v18 = 0;
    goto LABEL_19;
  }

  v21 = (*(v17 + 56) + 32 * v19);
  v23 = *v21;
  v22 = v21[1];
  v24 = v21[2];
  v25 = v21[3];

  if (!v22)
  {
    v18 = v25;
    a1 = v51;
    a3 = v52;
    if (!a7)
    {
      goto LABEL_27;
    }

LABEL_20:
    v48 = v24;
    v50 = v23;
    v30 = 0;
    v31 = a6;
    v32 = a8;
    v25 = v18;
LABEL_21:
    sub_23C5A79B4(v31, a7, v32, a9);
    sub_23C58428C(v50, v30, v48, v25);
    v33 = v31;
    v34 = a7;
    v35 = v32;
    v36 = a9;
LABEL_22:
    sub_23C58428C(v33, v34, v35, v36);
    goto LABEL_23;
  }

  if (!a7)
  {
    v48 = v24;
    v50 = v23;
    sub_23C5A79B4(v23, v22, v24, v25);

    v31 = a6;
    v30 = v22;
    v32 = a8;
    goto LABEL_21;
  }

  v26 = v23 == a6 && v22 == a7;
  v27 = a8;
  if (!v26)
  {
    v28 = sub_23C872014();
    v27 = a8;
    if ((v28 & 1) == 0)
    {
      sub_23C5A79B4(v23, v22, v24, v25);
      sub_23C5A79B4(v23, v22, v24, v25);
      sub_23C5A79B4(a6, a7, a8, a9);

      sub_23C58428C(v23, v22, v24, v25);

      v33 = v23;
      v34 = v22;
      v35 = v24;
      v36 = v25;
      goto LABEL_22;
    }
  }

  if (v24 == v27 && v25 == a9)
  {
    v45 = v22;
    v46 = v22;
    v47 = v27;
    sub_23C5A79B4(v23, v45, v27, a9);
    sub_23C5A79B4(v23, v46, v47, a9);
    sub_23C5A79B4(a6, a7, v47, a9);

    sub_23C58428C(v23, v46, v47, a9);

    sub_23C58428C(v23, v46, v47, a9);
    goto LABEL_26;
  }

  v49 = sub_23C872014();
  sub_23C5A79B4(v23, v22, v24, v25);
  sub_23C5A79B4(v23, v22, v24, v25);
  sub_23C5A79B4(a6, a7, a8, a9);

  sub_23C58428C(v23, v22, v24, v25);

  sub_23C58428C(v23, v22, v24, v25);
  a1 = v51;
  a3 = v52;
  if (v49)
  {
    goto LABEL_27;
  }

LABEL_23:
  v37 = *(a5 + 40);
  if (*(v37 + 16))
  {

    v38 = sub_23C5FFB88(v51, a2, v52, a4);
    if (v39)
    {
      v40 = (*(v37 + 56) + 32 * v38);
      v41 = *v40;
      v42 = v40[1];
      v43 = v40[2];
      v44 = v40[3];

      swift_beginAccess();
      sub_23C64DAD4(v41, v42, v43, v44);
      swift_endAccess();

LABEL_26:
      a1 = v51;
      a3 = v52;
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_23C63A648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBCD0, &unk_23C87BDE0);
  MEMORY[0x28223BE20](v58);
  v59 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBCA8, &qword_23C87BDB8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v60 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v57 = &v53 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  swift_beginAccess();
  v23 = *(a2 + 40);
  v24 = *(v23 + 16);
  v62 = a1;
  if (!v24)
  {
    v26 = a3;
    (*(v7 + 56))(v22, 1, 1, v6);
LABEL_7:
    sub_23C585C34(v22, &qword_27E1FBCA8, &qword_23C87BDB8);
    v30 = v26;
    v31 = v61;
    v32 = v62;
LABEL_23:
    sub_23C600748(v32, v31, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v48 = v60;
    sub_23C5855B0(v30, v60, &qword_27E1FBCA8, &qword_23C87BDB8);
    swift_beginAccess();
    sub_23C631D24(v48, v31);
    return swift_endAccess();
  }

  v25 = sub_23C5FFCB8(a1);
  v54 = v11;
  v26 = a3;
  if (v27)
  {
    sub_23C600748(*(v23 + 56) + *(v7 + 72) * v25, v22, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = *(v7 + 56);
  v29(v22, v28, 1, v6);

  v56 = v7;
  v55 = *(v7 + 48);
  if (v55(v22, 1, v6) == 1)
  {
    goto LABEL_7;
  }

  sub_23C585C34(v22, &qword_27E1FBCA8, &qword_23C87BDB8);
  v33 = *(a2 + 40);
  if (*(v33 + 16))
  {

    v34 = sub_23C5FFCB8(v62);
    if (v35)
    {
      sub_23C600748(*(v33 + 56) + *(v56 + 72) * v34, v20, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v36 = v20;
      v37 = 0;
    }

    else
    {
      v36 = v20;
      v37 = 1;
    }

    v29(v36, v37, 1, v6);
  }

  else
  {
    v29(v20, 1, 1, v6);
  }

  v38 = v59;
  v39 = *(v58 + 48);
  sub_23C5855B0(v20, v59, &qword_27E1FBCA8, &qword_23C87BDB8);
  v58 = a3;
  sub_23C5855B0(a3, v38 + v39, &qword_27E1FBCA8, &qword_23C87BDB8);
  v40 = v55;
  if (v55(v38, 1, v6) == 1)
  {
    sub_23C585C34(v20, &qword_27E1FBCA8, &qword_23C87BDB8);
    v41 = v40(v38 + v39, 1, v6);
    v31 = v61;
    v32 = v62;
    if (v41 == 1)
    {
      sub_23C585C34(v38, &qword_27E1FBCA8, &qword_23C87BDB8);
      v30 = v58;
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v42 = v57;
  sub_23C5855B0(v38, v57, &qword_27E1FBCA8, &qword_23C87BDB8);
  v43 = v40(v38 + v39, 1, v6);
  v32 = v62;
  if (v43 == 1)
  {
    sub_23C585C34(v20, &qword_27E1FBCA8, &qword_23C87BDB8);
    sub_23C64BB78(v42, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v31 = v61;
LABEL_19:
    result = sub_23C585C34(v38, &unk_27E1FBCD0, &unk_23C87BDE0);
    v45 = v56;
    v30 = v58;
    goto LABEL_20;
  }

  v49 = v38 + v39;
  v50 = v54;
  sub_23C64BB10(v49, v54, type metadata accessor for SiriConversationPublisher.GraphUUID);
  v51 = v38;
  v52 = sub_23C870B44();
  sub_23C64BB78(v50, type metadata accessor for SiriConversationPublisher.GraphUUID);
  sub_23C585C34(v20, &qword_27E1FBCA8, &qword_23C87BDB8);
  sub_23C64BB78(v42, type metadata accessor for SiriConversationPublisher.GraphUUID);
  result = sub_23C585C34(v51, &qword_27E1FBCA8, &qword_23C87BDB8);
  v31 = v61;
  v45 = v56;
  v30 = v58;
  if (v52)
  {
    goto LABEL_23;
  }

LABEL_20:
  v46 = *(a2 + 40);
  if (*(v46 + 16))
  {

    result = sub_23C5FFCB8(v32);
    if (v47)
    {
      sub_23C600748(*(v46 + 56) + *(v45 + 72) * result, v31, type metadata accessor for SiriConversationPublisher.GraphUUID);

      swift_beginAccess();
      sub_23C632B3C(v31);
      swift_endAccess();
      sub_23C64BB78(v31, type metadata accessor for SiriConversationPublisher.GraphUUID);
      goto LABEL_23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23C63AD1C(void *a1, id a2)
{
  v3 = v2;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  v30 = v7;
  *(v3 + 16) = 0x8000000000000000;
  v8 = sub_23C5FFA08(a1);
  LOBYTE(v10) = v9;
  v11 = v7[2];
  v12 = (v9 & 1) == 0;
  sub_23C870E34();
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v7[3] >= v13)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v7;
    if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    while (1)
    {
      a2 = a2;
      sub_23C64E050(&v30, a2);
      v19 = v30;
      swift_endAccess();

      swift_beginAccess();
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(v3 + 16);
      v7 = v30;
      *(v3 + 16) = 0x8000000000000000;
      v13 = sub_23C5FFA08(a2);
      v21 = v7[2];
      v22 = (v20 & 1) == 0;
      v16 = __OFADD__(v21, v22);
      v23 = v21 + v22;
      if (!v16)
      {
        break;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      v13 = sub_23C644870(&qword_27E1F9BE8, &qword_23C87BE70);
      v7 = v30;
      *(v3 + 16) = v30;
      if ((v10 & 1) == 0)
      {
LABEL_8:
        v7[(v8 >> 6) + 8] |= 1 << v8;
        *(v7[6] + 8 * v8) = a1;
        *(v7[7] + 8 * v8) = MEMORY[0x277D84FA0];
        v15 = v7[2];
        v16 = __OFADD__(v15, 1);
        v17 = v15 + 1;
        if (v16)
        {
          __break(1u);
          goto LABEL_24;
        }

        v7[2] = v17;
        v18 = a1;
      }
    }

    LOBYTE(v8) = v20;
    if (v7[3] >= v23)
    {
      goto LABEL_14;
    }

    sub_23C63F7B8(v23, v10, &qword_27E1F9BE8, &qword_23C87BE70);
    v7 = v30;
    v13 = sub_23C5FFA08(a2);
    if ((v8 & 1) == (v24 & 1))
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_23C63F7B8(v13, isUniquelyReferenced_nonNull_native, &qword_27E1F9BE8, &qword_23C87BE70);
    v7 = v30;
    v13 = sub_23C5FFA08(a1);
    if ((v10 & 1) == (v14 & 1))
    {
      v8 = v13;
      *(v3 + 16) = v30;
      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  v13 = sub_23C872064();
  __break(1u);
LABEL_14:
  if ((v10 & 1) == 0)
  {
LABEL_24:
    v29 = v13;
    sub_23C644870(&qword_27E1F9BE8, &qword_23C87BE70);
    v13 = v29;
    v7 = v30;
    *(v3 + 16) = v30;
    if (v8)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v3 + 16) = v7;
  if (v8)
  {
LABEL_18:
    sub_23C64E050(&v30, a1);
    v28 = v30;
    swift_endAccess();

    return;
  }

LABEL_16:
  v7[(v13 >> 6) + 8] |= 1 << v13;
  *(v7[6] + 8 * v13) = a2;
  *(v7[7] + 8 * v13) = MEMORY[0x277D84FA0];
  v25 = v7[2];
  v16 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v16)
  {
    v7[2] = v26;
    v27 = a2;
    goto LABEL_18;
  }

  __break(1u);
}

unint64_t sub_23C63B034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v8 + 16);
  v42[0] = v17;
  *(v9 + 16) = 0x8000000000000000;
  v41 = a1;
  v18 = a3;
  v20 = sub_23C5FFB88(a1, a2, a3, a4);
  v21 = v17[2];
  v22 = (v19 & 1) == 0;
  result = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_20;
  }

  LOBYTE(a1) = v19;
  if (v17[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_6;
  }

  sub_23C63EA50(result, isUniquelyReferenced_nonNull_native, &qword_27E1F9C48, &qword_23C874D08);
  v17 = v42[0];
  v24 = v18;
  result = sub_23C5FFB88(v41, a2, v18, a4);
  if ((a1 & 1) == (v25 & 1))
  {
    v20 = result;
    while (1)
    {
      v18 = a7;
      *(v9 + 16) = v17;
      if ((a1 & 1) == 0)
      {
        v17[(v20 >> 6) + 8] |= 1 << v20;
        v26 = (v17[6] + 32 * v20);
        *v26 = v41;
        v26[1] = a2;
        v26[2] = v24;
        v26[3] = a4;
        *(v17[7] + 8 * v20) = MEMORY[0x277D84FA0];
        v27 = v17[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          goto LABEL_23;
        }

        v17[2] = v29;
      }

      a7 = v24;
      sub_23C64E564(v42, a5, a6, v18, a8);
      v20 = v42[3];
      swift_endAccess();

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      a1 = swift_isUniquelyReferenced_nonNull_native();
      v42[0] = *(v9 + 16);
      v17 = v42[0];
      *(v9 + 16) = 0x8000000000000000;
      result = sub_23C5FFB88(a5, a6, v18, a8);
      v31 = v17[2];
      v32 = (v30 & 1) == 0;
      v28 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (!v28)
      {
        break;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      result = sub_23C644140(&qword_27E1F9C48, &qword_23C874D08);
      v17 = v42[0];
LABEL_6:
      v24 = v18;
    }

    LOBYTE(v20) = v30;
    if (v17[3] >= v33)
    {
      goto LABEL_14;
    }

    sub_23C63EA50(v33, a1, &qword_27E1F9C48, &qword_23C874D08);
    v17 = v42[0];
    result = sub_23C5FFB88(a5, a6, v18, a8);
    if ((v20 & 1) == (v34 & 1))
    {
      goto LABEL_15;
    }
  }

  result = sub_23C872064();
  __break(1u);
LABEL_14:
  v24 = a7;
  if (a1)
  {
LABEL_15:
    *(v9 + 16) = v17;
    if (v20)
    {
LABEL_18:
      sub_23C64E564(v42, v41, a2, v24, a4);
      swift_endAccess();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
LABEL_23:
    v38 = result;
    sub_23C644140(&qword_27E1F9C48, &qword_23C874D08);
    result = v38;
    v17 = v42[0];
    *(v9 + 16) = v42[0];
    if (v20)
    {
      goto LABEL_18;
    }
  }

  v17[(result >> 6) + 8] |= 1 << result;
  v35 = (v17[6] + 32 * result);
  *v35 = a5;
  v35[1] = a6;
  v35[2] = v18;
  v35[3] = a8;
  *(v17[7] + 8 * result) = MEMORY[0x277D84FA0];
  v36 = v17[2];
  v28 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v28)
  {
    v17[2] = v37;

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C63B4B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v6 = MEMORY[0x28223BE20](v51);
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v53 = &v50 - v9;
  MEMORY[0x28223BE20](v8);
  v54 = &v50 - v10;
  v11 = &unk_27E1FBCB0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBCB0, &unk_23C87BDC0);
  v13 = MEMORY[0x28223BE20](v12);
  v57 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = (&v50 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v50 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v50 - v23;
  v25 = type metadata accessor for SiriConversationPublisher.GraphUUID;
  sub_23C600748(a1, &v50 - v23, type metadata accessor for SiriConversationPublisher.GraphUUID);
  v56 = v12;
  sub_23C600748(a2, &v24[*(v12 + 48)], type metadata accessor for SiriConversationPublisher.GraphUUID);
  sub_23C5855B0(v24, v22, &unk_27E1FBCB0, &unk_23C87BDC0);
  sub_23C5855B0(v24, v19, &unk_27E1FBCB0, &unk_23C87BDC0);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *(v3 + 16);
  v27 = v58;
  *(v3 + 16) = 0x8000000000000000;
  v29 = sub_23C5FFCB8(v22);
  v30 = v27[2];
  v31 = (v28 & 1) == 0;
  v32 = v30 + v31;
  if (__OFADD__(v30, v31))
  {
    __break(1u);
    goto LABEL_18;
  }

  LOBYTE(v11) = v28;
  if (v27[3] >= v32)
  {
    v25 = v55;
    v12 = v56;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_23C640768(v32, isUniquelyReferenced_nonNull_native, &qword_27E1F9AB8, &qword_23C874B18);
    v27 = v58;
    v33 = sub_23C5FFCB8(v22);
    v25 = v55;
    v12 = v56;
    if ((v11 & 1) != (v34 & 1))
    {
      goto LABEL_20;
    }

    v29 = v33;
  }

  while (1)
  {
    v35 = v54;
    *(v3 + 16) = v27;
    if ((v11 & 1) == 0)
    {
      v36 = v53;
      sub_23C600748(v22, v53, type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C642D24(v29, v36, MEMORY[0x277D84FA0], v27, type metadata accessor for SiriConversationPublisher.GraphUUID, type metadata accessor for SiriConversationPublisher.GraphUUID);
    }

    v11 = *(v12 + 48);
    sub_23C64EAC8(v35, v11 + v19);
    sub_23C64BB78(v35, type metadata accessor for SiriConversationPublisher.GraphUUID);
    swift_endAccess();
    sub_23C64BB78(v19, type metadata accessor for SiriConversationPublisher.GraphUUID);
    sub_23C64BB78(v11 + v22, type metadata accessor for SiriConversationPublisher.GraphUUID);
    sub_23C64BB78(v22, type metadata accessor for SiriConversationPublisher.GraphUUID);
    sub_23C5855B0(v24, v25, &unk_27E1FBCB0, &unk_23C87BDC0);
    v37 = *(v12 + 48);
    v22 = v57;
    sub_23C5855B0(v24, v57, &unk_27E1FBCB0, &unk_23C87BDC0);
    swift_beginAccess();
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v58 = *(v3 + 16);
    v38 = v58;
    *(v3 + 16) = 0x8000000000000000;
    v19 = sub_23C5FFCB8(v25 + v37);
    v40 = v38[2];
    v41 = (v39 & 1) == 0;
    v42 = v40 + v41;
    if (!__OFADD__(v40, v41))
    {
      break;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    sub_23C644FD8(&qword_27E1F9AB8, &qword_23C874B18);
    v27 = v58;
  }

  v43 = v39;
  if (v38[3] >= v42)
  {
    if ((v29 & 1) == 0)
    {
      sub_23C644FD8(&qword_27E1F9AB8, &qword_23C874B18);
      v38 = v58;
    }

    goto LABEL_14;
  }

  sub_23C640768(v42, v29, &qword_27E1F9AB8, &qword_23C874B18);
  v38 = v58;
  v44 = sub_23C5FFCB8(v25 + v37);
  if ((v43 & 1) != (v45 & 1))
  {
LABEL_20:
    result = sub_23C872064();
    __break(1u);
    return result;
  }

  v19 = v44;
LABEL_14:
  v46 = v52;
  *(v3 + 16) = v38;
  if ((v43 & 1) == 0)
  {
    v47 = v53;
    sub_23C600748(v25 + v37, v53, type metadata accessor for SiriConversationPublisher.GraphUUID);
    sub_23C642D24(v19, v47, MEMORY[0x277D84FA0], v38, type metadata accessor for SiriConversationPublisher.GraphUUID, type metadata accessor for SiriConversationPublisher.GraphUUID);
  }

  v48 = *(v12 + 48);
  sub_23C64EAC8(v46, v22);
  sub_23C64BB78(v46, type metadata accessor for SiriConversationPublisher.GraphUUID);
  swift_endAccess();
  sub_23C585C34(v24, &unk_27E1FBCB0, &unk_23C87BDC0);
  sub_23C64BB78(&v22[v48], type metadata accessor for SiriConversationPublisher.GraphUUID);
  sub_23C64BB78(v25 + v37, type metadata accessor for SiriConversationPublisher.GraphUUID);
  return sub_23C64BB78(v25, type metadata accessor for SiriConversationPublisher.GraphUUID);
}

uint64_t sub_23C63BA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9510, &qword_23C873A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D10;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  *(inited + 56) = a4;

  v9 = MEMORY[0x277D84FA0];
  while (1)
  {

    v12 = sub_23C64A4C4(v11, v9);

    v33 = v12;
    v36 = v12;
    v13 = *(inited + 16);
    result = swift_beginAccess();
    v34 = v13;
    if (v13)
    {
      break;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_3:

    inited = sub_23C64A6B4(v10, &v36);

    v9 = v33;
    if (!*(inited + 16))
    {

      return v33;
    }
  }

  v15 = 0;
  v16 = (inited + 56);
  v10 = MEMORY[0x277D84F90];
  while (v15 < *(inited + 16))
  {
    v17 = *(v16 - 2);
    v18 = *v16;
    v19 = *(v35 + 16);
    if (*(v19 + 16))
    {
      v20 = *(v16 - 1);
      v21 = *(v16 - 3);

      v22 = sub_23C5FFB88(v21, v17, v20, v18);
      if (v23)
      {
        v24 = *(*(v19 + 56) + 8 * v22);

        goto LABEL_15;
      }
    }

    else
    {
    }

    v24 = MEMORY[0x277D84FA0];
LABEL_15:
    v25 = sub_23C631680(v24);

    v26 = *(v25 + 16);
    v27 = *(v10 + 16);
    v28 = v27 + v26;
    if (__OFADD__(v27, v26))
    {
      goto LABEL_30;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v28 <= *(v10 + 24) >> 1)
    {
      if (*(v25 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v27 <= v28)
      {
        v29 = v27 + v26;
      }

      else
      {
        v29 = v27;
      }

      result = sub_23C584180(result, v29, 1, v10);
      v10 = result;
      if (*(v25 + 16))
      {
LABEL_24:
        if ((*(v10 + 24) >> 1) - *(v10 + 16) < v26)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v26)
        {
          v30 = *(v10 + 16);
          v31 = __OFADD__(v30, v26);
          v32 = v30 + v26;
          if (v31)
          {
            goto LABEL_33;
          }

          *(v10 + 16) = v32;
        }

        goto LABEL_7;
      }
    }

    if (v26)
    {
      goto LABEL_31;
    }

LABEL_7:
    ++v15;
    v16 += 4;
    if (v34 == v15)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_23C63BD68(uint64_t a1)
{
  v29 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9420, &qword_23C8739B0);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v33 = *(v2 + 72);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23C873D10;
  v30 = v5;
  sub_23C600748(a1, v6 + v5, type metadata accessor for SiriConversationPublisher.GraphUUID);
  v7 = MEMORY[0x277D84FA0];
  while (1)
  {

    v10 = sub_23C64A568(v9, v7);

    v28 = v10;
    v34 = v10;
    v11 = *(v6 + 16);
    result = swift_beginAccess();
    v31 = v11;
    if (v11)
    {
      break;
    }

    v8 = MEMORY[0x277D84F90];
LABEL_3:

    v6 = sub_23C64A99C(v8, &v34);

    v7 = v28;
    if (!*(v6 + 16))
    {

      return v7;
    }
  }

  v13 = 0;
  v14 = v6 + v30;
  v8 = MEMORY[0x277D84F90];
  while (v13 < *(v6 + 16))
  {
    sub_23C600748(v14, v4, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v15 = *(v32 + 16);
    if (*(v15 + 16))
    {

      v16 = sub_23C5FFCB8(v4);
      v17 = MEMORY[0x277D84FA0];
      if (v18)
      {
        v17 = *(*(v15 + 56) + 8 * v16);
      }
    }

    else
    {
      v17 = MEMORY[0x277D84FA0];
    }

    v19 = sub_23C6318C0(v17);

    result = sub_23C64BB78(v4, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v20 = *(v19 + 16);
    v21 = v8[2];
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_29;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v22 <= v8[3] >> 1)
    {
      if (*(v19 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v23 = v21 + v20;
      }

      else
      {
        v23 = v21;
      }

      result = sub_23C584D68(result, v23, 1, v8);
      v8 = result;
      if (*(v19 + 16))
      {
LABEL_23:
        if ((v8[3] >> 1) - v8[2] < v20)
        {
          goto LABEL_31;
        }

        swift_arrayInitWithCopy();

        if (v20)
        {
          v24 = v8[2];
          v25 = __OFADD__(v24, v20);
          v26 = v24 + v20;
          if (v25)
          {
            goto LABEL_32;
          }

          v8[2] = v26;
        }

        goto LABEL_7;
      }
    }

    if (v20)
    {
      goto LABEL_30;
    }

LABEL_7:
    ++v13;
    v14 += v33;
    if (v31 == v13)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_23C63C0DC(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C871C34())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EED7610](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      swift_beginAccess();
      v9 = sub_23C5FFA08(v7);
      if (v10)
      {
        v11 = v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = *(v2 + 16);
        *(v2 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_23C644870(&qword_27E1F9BE8, &qword_23C87BE70);
        }

        sub_23C6413F0(v11, v13);
        *(v2 + 16) = v13;
      }

      swift_endAccess();

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

uint64_t sub_23C63C248(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v4 = (result + 56);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v4 - 3);
      v7 = *(v4 - 2);
      swift_beginAccess();

      v9 = sub_23C5FFB88(v8, v7, v6, v5);
      if (v10)
      {
        v11 = v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = *(v3 + 16);
        *(v3 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_23C644140(&qword_27E1F9C48, &qword_23C874D08);
        }

        sub_23C641D9C(v11, v13);
        *(v3 + 16) = v13;
      }

      swift_endAccess();

      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return result;
}

unint64_t sub_23C63C388(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23C63C454(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23C588DC0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23C63C454(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23C63C560(a5, a6);
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
    result = sub_23C871D44();
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

void *sub_23C63C560(uint64_t a1, unint64_t a2)
{
  v3 = sub_23C63C5AC(a1, a2);
  sub_23C63C6DC(&unk_284F2D750);
  return v3;
}

void *sub_23C63C5AC(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23C63C7C8(v5, 0);
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

  result = sub_23C871D44();
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
        v10 = sub_23C871824();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23C63C7C8(v10, 0);
        result = sub_23C871D04();
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

uint64_t sub_23C63C6DC(uint64_t result)
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

  result = sub_23C63C83C(result, v11, 1, v3);
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

void *sub_23C63C7C8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBCF0, &qword_23C87BDF8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23C63C83C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBCF0, &qword_23C87BDF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_23C63C930(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_23C871C34();
LABEL_9:
  result = sub_23C871D34();
  *v2 = result;
  return result;
}

uint64_t sub_23C63C9D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE10, &unk_23C874CD0);
  result = sub_23C871E74();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_23C59A4B0((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_23C59A4C0(v23, &v36);
        sub_23C588DC0(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_23C871C94();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_23C59A4B0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_23C63CC88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD80, &unk_23C874B80);
  result = sub_23C871E74();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_23C871B24();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_23C63CEF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD90, &unk_23C874C90);
  result = sub_23C871E74();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_23C871B24();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_23C63D16C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for EventTypeIdPair(0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BC8, &unk_23C87BE50);
  v39 = v4;
  result = sub_23C871E74();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v36 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 48);
      v40 = *(v37 + 72);
      v24 = v23 + v40 * v22;
      if (v39)
      {
        sub_23C64BB10(v24, v7, type metadata accessor for EventTypeIdPair);
      }

      else
      {
        sub_23C600748(v24, v7, type metadata accessor for EventTypeIdPair);
      }

      v25 = *(*(v8 + 56) + 8 * v22);
      sub_23C8720F4();
      MEMORY[0x23EED79F0](*v7);
      sub_23C870B74();
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_23C8716F4();
      result = sub_23C872124();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v8 = v36;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v8 = v36;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_23C64BB10(v7, *(v10 + 48) + v40 * v18, type metadata accessor for EventTypeIdPair);
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_23C63D550(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for EventTypeIdPair(0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD70, &qword_23C874C58);
  v39 = v4;
  result = sub_23C871E74();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v36 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v37 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v39)
      {
        sub_23C64BB10(v25, v7, type metadata accessor for EventTypeIdPair);
        v40 = *(*(v10 + 56) + 8 * v23);
      }

      else
      {
        sub_23C600748(v25, v7, type metadata accessor for EventTypeIdPair);
        v40 = *(*(v10 + 56) + 8 * v23);
      }

      sub_23C8720F4();
      MEMORY[0x23EED79F0](*v7);
      sub_23C870B74();
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_23C8716F4();
      result = sub_23C872124();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v10 = v36;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v10 = v36;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_23C64BB10(v7, *(v11 + 48) + v24 * v19, type metadata accessor for EventTypeIdPair);
      *(*(v11 + 56) + 8 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v10 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_23C63D934(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23C870B74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD40, &unk_23C87BE30);
  v39 = v4;
  result = sub_23C871E74();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v19 = v6;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v41 = *(v19 + 72);
      v26 = v25 + v41 * v24;
      if (v39)
      {
        (*v40)(v42, v26, v43);
      }

      else
      {
        (*v37)(v42, v26, v43);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_23C8716E4();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v40)(*(v11 + 48) + v41 * v20, v42, v43);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v19 = v38;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_23C63DCF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23C870B74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BD8, &qword_23C874C78);
  v39 = v4;
  result = sub_23C871E74();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_23C8716E4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_23C63E0FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE58, &unk_23C87BF10);
  v40 = v4;
  result = sub_23C871E74();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 96 * v21;
      if (v40)
      {
        v41 = *(v25 + 8);
        v42 = *v25;
        v45 = *(v25 + 16);
        v26 = *(v25 + 24);
        v43 = *(v25 + 32);
        v44 = *(v25 + 48);
        v46 = *(v25 + 64);
        v47 = *(v25 + 80);
      }

      else
      {
        v27 = *(v25 + 32);
        v28 = *(v25 + 48);
        v29 = *(v25 + 80);
        v51 = *(v25 + 64);
        v52 = v29;
        v49[2] = v27;
        v50 = v28;
        v30 = *(v25 + 16);
        v49[0] = *v25;
        v49[1] = v30;
        v46 = v51;
        v47 = v29;
        v43 = v27;
        v44 = v50;
        v45 = v30;
        v26 = BYTE8(v30);
        v41 = *(&v49[0] + 1);
        v42 = *&v49[0];

        sub_23C58BBD4(v49, v48);
      }

      sub_23C8720F4();
      sub_23C871804();
      result = sub_23C872124();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v49[0]) = v26;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 96 * v15;
      *v17 = v42;
      *(v17 + 8) = v41;
      *(v17 + 16) = v45;
      *(v17 + 24) = v26;
      *(v17 + 32) = v43;
      *(v17 + 48) = v44;
      *(v17 + 64) = v46;
      *(v17 + 80) = v47;
      ++*(v7 + 16);
      v5 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_23C63E460(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBDE0, &qword_23C874D00);
  v40 = v4;
  result = sub_23C871E74();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v19 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
LABEL_15:
      v22 = 32 * (v19 | (v8 << 6));
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + v22);
      v25 = v24[1];
      v45 = *v24;
      v26 = v24[3];
      v27 = (v23 + v22);
      v28 = v27[1];
      v43 = *v27;
      v44 = v24[2];
      v29 = v27[3];
      v42 = v27[2];
      if ((v40 & 1) == 0)
      {
      }

      sub_23C8720F4();
      sub_23C871804();
      sub_23C871804();
      result = sub_23C872124();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 32 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v45;
      v17[1] = v25;
      v17[2] = v44;
      v17[3] = v26;
      v18 = (*(v7 + 56) + v16);
      *v18 = v43;
      v18[1] = v28;
      v18[2] = v42;
      v18[3] = v29;
      ++*(v7 + 16);
      v5 = v39;
      v12 = v41;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23C63E768(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C50, &unk_23C87BEA0);
  v37 = v4;
  result = sub_23C871E74();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
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
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[3];
      v38 = v22[2];
      v26 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
      }

      sub_23C8720F4();
      sub_23C871804();
      sub_23C871804();
      result = sub_23C872124();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v38;
      v16[3] = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23C63EA50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_23C871E74();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 32 * v22);
      v25 = v24[1];
      v39 = *v24;
      v26 = v24[3];
      v38 = v24[2];
      v27 = *(v23 + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      sub_23C8720F4();
      sub_23C871804();
      sub_23C871804();
      result = sub_23C872124();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 32 * v17);
      *v18 = v39;
      v18[1] = v25;
      v18[2] = v38;
      v18[3] = v26;
      *(*(v9 + 56) + 8 * v17) = v27;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_23C63ED18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C40, &unk_23C87BE90);
  v33 = v4;
  result = sub_23C871E74();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_23C8720F4();
      sub_23C871804();
      result = sub_23C872124();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23C63EFD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_23C871E74();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_23C8720F4();
      sub_23C871804();
      result = sub_23C872124();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_23C63F270(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD10, &qword_23C874AF8);
  v35 = v4;
  result = sub_23C871E74();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_23C8720F4();
      sub_23C871804();
      result = sub_23C872124();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23C63F514(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C10, &qword_23C87BEF0);
  v30 = v4;
  result = sub_23C871E74();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        sub_23C59A744(v21);
      }

      sub_23C8720F4();
      MEMORY[0x23EED79F0](v20);
      result = sub_23C872124();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23C63F7B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_23C871E74();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
      }

      result = sub_23C871B24();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_23C63FA34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v32 = v6;
  result = sub_23C871E74();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v32 & 1) == 0)
      {
      }

      sub_23C8720F4();
      MEMORY[0x23EED79F0](v22);
      result = sub_23C872124();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_23C63FCBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE18, &unk_23C87BED0);
  v33 = v4;
  result = sub_23C871E74();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v33 & 1) == 0)
      {
        v22 = v20;
      }

      sub_23C8720F4();
      sub_23C872114();
      if (v20)
      {
        v23 = v20;
        sub_23C871B44();
      }

      result = sub_23C872124();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_23C63FF74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AD0, &qword_23C874B38);
  v38 = v4;
  result = sub_23C871E74();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    v39 = v8;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 48);
      v24 = *(v37 + 72);
      v25 = v23 + v24 * v22;
      if (v38)
      {
        sub_23C64BB10(v25, v7, type metadata accessor for SiriConversationPublisher.GraphUUID);
      }

      else
      {
        sub_23C600748(v25, v7, type metadata accessor for SiriConversationPublisher.GraphUUID);
      }

      v26 = *(*(v39 + 56) + 8 * v22);
      sub_23C8720F4();
      sub_23C870B74();
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_23C8716F4();
      result = sub_23C872124();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_23C64BB10(v7, *(v10 + 48) + v24 * v18, type metadata accessor for SiriConversationPublisher.GraphUUID);
      *(*(v10 + 56) + 8 * v18) = v26;
      ++*(v10 + 16);
      v8 = v39;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

char *sub_23C64033C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v38 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - v8;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AA8, &qword_23C874B08);
  v39 = v4;
  result = sub_23C871E74();
  v12 = result;
  if (*(v10 + 16))
  {
    v36 = v2;
    v37 = v10;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    v41 = v9;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v25 = *(v10 + 48);
      v40 = *(v38 + 72);
      v26 = v40 * (v22 | (v13 << 6));
      if (v39)
      {
        sub_23C64BB10(v25 + v26, v41, type metadata accessor for SiriConversationPublisher.GraphUUID);
        sub_23C64BB10(*(v10 + 56) + v26, v42, type metadata accessor for SiriConversationPublisher.GraphUUID);
      }

      else
      {
        sub_23C600748(v25 + v26, v41, type metadata accessor for SiriConversationPublisher.GraphUUID);
        sub_23C600748(*(v10 + 56) + v26, v42, type metadata accessor for SiriConversationPublisher.GraphUUID);
      }

      sub_23C8720F4();
      sub_23C870B74();
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_23C8716F4();
      v27 = sub_23C872124();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*&v19[8 * (v29 >> 6)]) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        result = v41;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *&v19[8 * v30];
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*&v19[8 * (v29 >> 6)])) | v29 & 0x7FFFFFFFFFFFFFC0;
      result = v41;
LABEL_7:
      *&v19[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
      v21 = v40 * v20;
      sub_23C64BB10(result, *(v12 + 48) + v40 * v20, type metadata accessor for SiriConversationPublisher.GraphUUID);
      result = sub_23C64BB10(v42, *(v12 + 56) + v21, type metadata accessor for SiriConversationPublisher.GraphUUID);
      ++*(v12 + 16);
      v10 = v37;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_23C640768(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = sub_23C871E74();
  v14 = result;
  if (*(v12 + 16))
  {
    v40 = v4;
    v41 = v12;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v12 + 48);
      v44 = *(v42 + 72);
      v28 = v27 + v44 * v26;
      if (v43)
      {
        sub_23C64BB10(v28, v11, type metadata accessor for SiriConversationPublisher.GraphUUID);
        v29 = v11;
        v30 = *(*(v12 + 56) + 8 * v26);
      }

      else
      {
        sub_23C600748(v28, v11, type metadata accessor for SiriConversationPublisher.GraphUUID);
        v29 = v11;
        v30 = *(*(v12 + 56) + 8 * v26);
      }

      sub_23C8720F4();
      sub_23C870B74();
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v31 = v29;
      sub_23C8716F4();
      result = sub_23C872124();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_23C64BB10(v31, *(v14 + 48) + v44 * v22, type metadata accessor for SiriConversationPublisher.GraphUUID);
      *(*(v14 + 56) + 8 * v22) = v30;
      v11 = v31;
      ++*(v14 + 16);
      v12 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v12 + 32);
    v7 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v7 = v14;
  return result;
}

uint64_t sub_23C640B38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C18, &qword_23C874CC0);
  v33 = v4;
  result = sub_23C871E74();
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
        sub_23C59A4B0(v24, v34);
      }

      else
      {
        sub_23C588DC0(v24, v34);
      }

      sub_23C8720F4();
      sub_23C871804();
      result = sub_23C872124();
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
      result = sub_23C59A4B0(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_23C640DF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBE40, &unk_23C87BEF8);
  v40 = v4;
  result = sub_23C871E74();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + (v21 << 6);
      if (v40)
      {
        v41 = *v25;
        v26 = *(v25 + 16);
        v44 = *(v25 + 32);
        v42 = *(v25 + 24);
        v43 = *(v25 + 40);
        v46 = *(v25 + 48);
        v45 = *(v25 + 56);
      }

      else
      {
        v27 = *v25;
        v28 = *(v25 + 16);
        v29 = *(v25 + 32);
        *&v48[9] = *(v25 + 41);
        v47[1] = v28;
        *v48 = v29;
        v47[0] = v27;
        v45 = v48[24];
        v46 = *&v48[16];
        v43 = *(&v29 + 1);
        v44 = v29;
        v42 = *(&v28 + 1);
        v26 = v28;
        v41 = v27;

        sub_23C64BC50(v47, v49);
      }

      sub_23C8720F4();
      sub_23C871804();
      result = sub_23C872124();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v47[0]) = v26;
      v49[0] = v45;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + (v15 << 6);
      *v17 = v41;
      *(v17 + 16) = v26;
      *(v17 + 24) = v42;
      *(v17 + 32) = v44;
      *(v17 + 40) = v43;
      *(v17 + 48) = v46;
      *(v17 + 56) = v45;
      ++*(v7 + 16);
      v5 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_23C641150(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B78, &qword_23C874C00);
  v34 = v4;
  result = sub_23C871E74();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_23C8720F4();
      sub_23C871804();
      result = sub_23C872124();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void sub_23C6413F0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23C871BC4() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_23C871B24();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_23C641580(int64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for EventTypeIdPair(0);
  v4 = *(v28 - 8);
  result = MEMORY[0x28223BE20](v28);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_23C871BC4() + 1) & ~v9;
    v13 = *(v4 + 72);
    v27 = a2 + 64;
    do
    {
      v14 = v13;
      v15 = v13 * v10;
      sub_23C600748(*(a2 + 48) + v13 * v10, v7, type metadata accessor for EventTypeIdPair);
      sub_23C8720F4();
      MEMORY[0x23EED79F0](*v7);
      sub_23C870B74();
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_23C8716F4();
      v16 = sub_23C872124();
      result = sub_23C64BB78(v7, type metadata accessor for EventTypeIdPair);
      v17 = v16 & v11;
      if (a1 >= v12)
      {
        if (v17 < v12)
        {
          v8 = v27;
          v13 = v14;
          goto LABEL_4;
        }

        v13 = v14;
        if (a1 >= v17)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = v14;
        if (v17 >= v12 || a1 >= v17)
        {
LABEL_11:
          v18 = *(a2 + 48);
          result = v18 + v13 * a1;
          if (v13 * a1 < v15 || result >= v18 + v15 + v13)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v27;
          }

          else
          {
            v19 = v13 * a1 == v15;
            v8 = v27;
            if (!v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 8 * a1);
          v22 = (v20 + 8 * v10);
          if (a1 != v10 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      v8 = v27;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23C6418A4(int64_t a1, uint64_t a2)
{
  v40 = sub_23C870B74();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_23C871BC4();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_23C8716E4();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_23C641BC4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23C871BC4() + 1) & ~v5;
    do
    {
      sub_23C8720F4();

      sub_23C871804();
      sub_23C871804();
      v10 = sub_23C872124();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 32 * v3);
        v14 = (v12 + 32 * v6);
        if (v3 != v6 || v13 >= v14 + 2)
        {
          v15 = v14[1];
          *v13 = *v14;
          v13[1] = v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23C641D9C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23C871BC4() + 1) & ~v5;
    do
    {
      sub_23C8720F4();

      sub_23C871804();
      sub_23C871804();
      v9 = sub_23C872124();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 32 * v3);
        v13 = (v11 + 32 * v6);
        if (v3 != v6 || v12 >= v13 + 2)
        {
          v14 = v13[1];
          *v12 = *v13;
          v12[1] = v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23C641F78(int64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v4 = *(v26 - 8);
  result = MEMORY[0x28223BE20](v26);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_23C871BC4() + 1) & ~v8;
    v12 = *(v4 + 72);
    v27 = a2 + 64;
    v13 = v28;
    do
    {
      v14 = v12;
      v15 = v12 * v9;
      sub_23C600748(*(a2 + 48) + v12 * v9, v13, type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C8720F4();
      sub_23C870B74();
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_23C8716F4();
      v16 = sub_23C872124();
      result = sub_23C64BB78(v13, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v17 = v16 & v10;
      if (a1 >= v11)
      {
        if (v17 < v11)
        {
          v7 = v27;
          v12 = v14;
          goto LABEL_4;
        }

        v12 = v14;
        if (a1 >= v17)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v14;
        if (v17 >= v11 || a1 >= v17)
        {
LABEL_11:
          v18 = *(a2 + 48);
          result = v18 + v12 * a1;
          if (v12 * a1 < v15 || result >= v18 + v15 + v12)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v27;
          }

          else
          {
            v19 = v12 * a1 == v15;
            v7 = v27;
            if (!v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 8 * a1);
          v22 = (v20 + 8 * v9);
          if (a1 != v9 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v27;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23C642290(int64_t a1, uint64_t a2)
{
  v23 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v4 = *(v23 - 8);
  result = MEMORY[0x28223BE20](v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_23C871BC4() + 1) & ~v9;
    v13 = *(v4 + 72);
    v24 = a2 + 64;
    while (1)
    {
      v14 = v13 * v10;
      sub_23C600748(*(a2 + 48) + v13 * v10, v7, type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C8720F4();
      sub_23C870B74();
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_23C8716F4();
      v15 = sub_23C872124();
      result = sub_23C64BB78(v7, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v16 = v15 & v11;
      if (a1 >= v12)
      {
        break;
      }

      if (v16 < v12)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = v13 * a1;
      if (v13 * a1 < v14 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v14 + v13))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v17 != v14)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v18 = *(a2 + 56);
      result = v18 + v17;
      if (v17 < v14 || result >= v18 + v14 + v13)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a1 = v10;
        if (v17 == v14)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      a1 = v10;
LABEL_5:
      v10 = (v10 + 1) & v11;
      v8 = v24;
      if (((*(v24 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (a1 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23C64257C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23C871BC4() + 1) & ~v5;
    do
    {
      sub_23C8720F4();

      sub_23C871804();
      v10 = sub_23C872124();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_23C64272C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_23C59A4B0(a3, (a4[7] + 32 * a1));
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

unint64_t sub_23C6427A8(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

unint64_t sub_23C6427EC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
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

uint64_t sub_23C642888(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23C870B74();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_23C642940(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_23C870B74();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

unint64_t sub_23C6429F8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_23C642A44(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  a10[(result >> 6) + 8] |= 1 << result;
  v10 = (a10[6] + 32 * result);
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v11 = (a10[7] + 32 * result);
  *v11 = a6;
  v11[1] = a7;
  v11[2] = a8;
  v11[3] = a9;
  v12 = a10[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a10[2] = v14;
  }

  return result;
}

unint64_t sub_23C642AA0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v7 = (a6[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a6[7] + 8 * result) = a7;
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

unint64_t sub_23C642AEC(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
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

unint64_t sub_23C642B34(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
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

uint64_t sub_23C642BA8(unint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t (*a5)(void), double a6)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a3[6];
  v12 = a4(0);
  result = sub_23C64BB10(a2, v11 + *(*(v12 - 8) + 72) * a1, a5);
  *(a3[7] + 8 * a1) = a6;
  v14 = a3[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v16;
  }

  return result;
}

uint64_t sub_23C642C5C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6];
  v8 = *(*(type metadata accessor for SiriConversationPublisher.GraphUUID(0) - 8) + 72) * a1;
  sub_23C64BB10(a2, v7 + v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
  result = sub_23C64BB10(a3, a4[7] + v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_23C642D24(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  result = sub_23C64BB10(a2, v11 + *(*(v12 - 8) + 72) * a1, a6);
  *(a4[7] + 8 * a1) = a3;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

_OWORD *sub_23C642DD0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23C59A4B0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_23C642E3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE10, &unk_23C874CD0);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        v18 = 40 * v17;
        sub_23C59A4C0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_23C588DC0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_23C59A4B0(v22, (*(v4 + 56) + v17));
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

id sub_23C642FE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD80, &unk_23C874B80);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
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