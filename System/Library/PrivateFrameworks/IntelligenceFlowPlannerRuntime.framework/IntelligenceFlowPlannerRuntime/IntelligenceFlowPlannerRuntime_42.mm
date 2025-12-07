uint64_t type metadata accessor for LocationEvent(uint64_t a1)
{
  result = qword_281434A08;
  if (!qword_281434A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C75AC84(uint64_t a1)
{
  result = sub_22C90063C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_22C75AD00@<D0>(_OWORD *a2@<X8>)
{
  v3 = sub_22C3A5908(&qword_27D9BFCF0, &qword_22C9253D0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-v7];
  v9 = type metadata accessor for LocationEvent(0);
  MEMORY[0x28223BE20](v9);
  for (i = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)]; ; sub_22C75B03C(i))
  {
    sub_22C3A5908(&qword_27D9BFCF8, &qword_22C9253D8);
    sub_22C908B5C();
    if (sub_22C370B74(v8, 1, v9) == 1)
    {
      sub_22C75AF14(v8);
LABEL_8:
      result = 0.0;
      *a2 = xmmword_22C9114A0;
      a2[1] = 0u;
      a2[2] = 0u;
      *(a2 + 41) = 0u;
      return result;
    }

    sub_22C75AF7C(v8, i);
    if ((sub_22C9005BC() & 1) == 0)
    {
      break;
    }

    sub_22C908B4C();
    sub_22C75AF14(v6);
  }

  if (sub_22C9005CC())
  {
    sub_22C75B03C(i);
    goto LABEL_8;
  }

  v13 = &i[*(v9 + 24)];
  v14 = v13[1];
  v17 = *v13;
  v18 = v14;
  v19[0] = v13[2];
  *(v19 + 9) = *(v13 + 41);
  sub_22C75AFE0(&v17, v16);
  sub_22C75B03C(i);
  v15 = v18;
  *a2 = v17;
  a2[1] = v15;
  a2[2] = v19[0];
  result = *(v19 + 9);
  *(a2 + 41) = *(v19 + 9);
  return result;
}

uint64_t sub_22C75AF14(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BFCF0, &qword_22C9253D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C75AF7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C75B03C(uint64_t a1)
{
  v2 = type metadata accessor for LocationEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for JointResolverLocationSignalProvider(uint64_t a1)
{
  result = qword_281430318;
  if (!qword_281430318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C75B10C(uint64_t a1)
{
  sub_22C75B178(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22C75B178(uint64_t a1)
{
  if (!qword_28142FA98)
  {
    sub_22C3AC1A0(&qword_27D9BFCE0, &qword_22C925320);
    sub_22C75A618();
    v1 = sub_22C908B6C();
    if (!v2)
    {
      atomic_store(v1, &qword_28142FA98);
    }
  }
}

uint64_t sub_22C75B1E8()
{
  v0 = sub_22C9063DC();
  MEMORY[0x28223BE20](v0);
  sub_22C9061CC();
  sub_22C760A9C();
  return sub_22C90620C();
}

uint64_t sub_22C75B3DC(uint64_t a1, uint64_t a2)
{
  sub_22C75B1E8();
  v5 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_jointResolverId;
  v6 = sub_22C90069C();
  sub_22C36985C();
  v8 = *(v7 + 32);
  v8(v2 + v5, a1, v6);
  v8(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_contextId, a2, v6);
  return v2;
}

void sub_22C75B4D4()
{
  sub_22C36BA7C();
  v62 = v1;
  v63 = v2;
  v61 = v3;
  v60 = v4;
  v59 = v5;
  v6 = sub_22C3A5908(&qword_27D9BE660, &qword_22C9254E0);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C38B638();
  v8 = sub_22C3A5908(&qword_27D9BFD70, &qword_22C9254F8);
  sub_22C369914(v8);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36D5B4();
  v67 = v10;
  v11 = sub_22C3A5908(&qword_27D9BFD68, &qword_22C9254F0);
  sub_22C369914(v11);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C36D5B4();
  sub_22C3698F8(v13);
  v14 = sub_22C90531C();
  sub_22C369824();
  v68 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C3698A8();
  v64 = v17;
  sub_22C904EAC();
  sub_22C369824();
  v65 = v19;
  v66 = v18;
  MEMORY[0x28223BE20](v18);
  sub_22C3698A8();
  sub_22C3698F8(v20);
  v69 = sub_22C904E5C();
  sub_22C369824();
  v55 = v21;
  MEMORY[0x28223BE20](v22);
  sub_22C3698A8();
  v24 = v23;
  v25 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v25);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v26);
  sub_22C38059C();
  v27 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v27);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v28);
  sub_22C3717BC();
  v56 = sub_22C904FBC();
  sub_22C369824();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  v33 = v32;
  v34 = v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_stream;
  if (*(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_stream + 24))
  {
    sub_22C378A4C(v34, &v70);
  }

  else
  {
    sub_22C38289C(v34);
  }

  if (v71)
  {
    sub_22C36C730(&v70, v72);
    sub_22C904FAC();
    sub_22C90068C();
    sub_22C90069C();
    sub_22C36BECC();
    sub_22C36C640(v35, v36, v37, v38);
    sub_22C904F9C();
    v39 = sub_22C90625C();
    sub_22C9062CC();
    sub_22C36BECC();
    sub_22C36C640(v40, v41, v42, v39);
    sub_22C904F8C();
    sub_22C76041C(v59, v60, v61, v62, v63);
    v43 = swift_allocBox();
    (*(v55 + 16))(v44, v24, v69);
    *v58 = v43;
    (*(v65 + 104))(v58, *MEMORY[0x277D1FDB8], v66);
    sub_22C90530C();
    (*(v30 + 16))(v57, v33, v56);
    v45 = sub_22C3726A4();
    sub_22C386860(v45, v46, v47, v56);
    sub_22C904C8C();
    (*(v65 + 16))(v67, v58, v66);
    v48 = sub_22C3726A4();
    sub_22C386860(v48, v49, v50, v66);
    sub_22C904F7C();
    sub_22C37A078();
    sub_22C90621C();
    sub_22C90622C();
    v51 = sub_22C3726A4();
    sub_22C386860(v51, v52, v53, v54);
    sub_22C9052FC();
    sub_22C374168(v72, v72[3]);
    sub_22C9062BC();
    (*(v68 + 8))(v64, v14);
    (*(v65 + 8))(v58, v66);
    (*(v55 + 8))(v24, v69);
    (*(v30 + 8))(v33, v56);
    sub_22C36FF94(v72);
  }

  sub_22C36CC48();
}

void sub_22C75BB08()
{
  sub_22C36BA7C();
  v72 = v2;
  v70 = v3;
  v68 = v4;
  v6 = v5;
  v7 = sub_22C3A5908(&qword_27D9BE660, &qword_22C9254E0);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C36D5B4();
  v76 = v9;
  v10 = sub_22C3A5908(&qword_27D9BFD70, &qword_22C9254F8);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C36D5B4();
  v73 = v12;
  v13 = sub_22C3A5908(&qword_27D9BFD68, &qword_22C9254F0);
  sub_22C369914(v13);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C3717BC();
  sub_22C90531C();
  sub_22C369824();
  v74 = v16;
  v75 = v15;
  MEMORY[0x28223BE20](v15);
  sub_22C3698A8();
  sub_22C3698F8(v17);
  v69 = sub_22C904EAC();
  sub_22C369824();
  v71 = v18;
  MEMORY[0x28223BE20](v19);
  sub_22C3698A8();
  v21 = sub_22C3698F8(v20);
  v77 = v6(v21);
  sub_22C369824();
  v23 = v22;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  v26 = &v65 - v25;
  v27 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v27);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v28);
  v29 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v29);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v30);
  sub_22C38059C();
  v31 = sub_22C904FBC();
  sub_22C369824();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  sub_22C3698A8();
  v36 = v35;
  v37 = v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_stream;
  if (*(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_stream + 24))
  {
    sub_22C378A4C(v37, &v78);
  }

  else
  {
    sub_22C38289C(v37);
  }

  if (v79)
  {
    sub_22C36C730(&v78, v80);
    sub_22C904FAC();
    sub_22C90068C();
    sub_22C90069C();
    sub_22C36BECC();
    sub_22C36C640(v38, v39, v40, v41);
    sub_22C904F9C();
    v42 = sub_22C90625C();
    sub_22C9062CC();
    sub_22C36BECC();
    sub_22C36C640(v43, v44, v45, v42);
    v46 = v36;
    v65 = v36;
    v47 = sub_22C904F8C();
    (v70)(v47);
    v48 = v77;
    v49 = swift_allocBox();
    (*(v23 + 16))(v50, v26, v48);
    v70 = v26;
    v51 = v66;
    *v66 = v49;
    v52 = v71;
    v53 = v69;
    (*(v71 + 104))(v51, *v72, v69);
    v54 = v67;
    sub_22C90530C();
    (*(v33 + 16))(v1, v46, v31);
    sub_22C36BECC();
    sub_22C36C640(v55, v56, v57, v31);
    sub_22C904C8C();
    (*(v52 + 16))(v73, v51, v53);
    v58 = sub_22C3726A4();
    sub_22C386860(v58, v59, v60, v53);
    sub_22C904F7C();
    sub_22C90621C();
    sub_22C90622C();
    v61 = sub_22C3726A4();
    sub_22C386860(v61, v62, v63, v64);
    sub_22C9052FC();
    sub_22C374168(v80, v80[3]);
    sub_22C9062BC();
    (*(v74 + 8))(v54, v75);
    (*(v52 + 8))(v51, v53);
    (*(v23 + 8))(v70, v77);
    (*(v33 + 8))(v65, v31);
    sub_22C36FF94(v80);
  }

  sub_22C36CC48();
}

void sub_22C75C098()
{
  sub_22C36BA7C();
  v2 = v0;
  v3 = sub_22C3A5908(&qword_27D9BE660, &qword_22C9254E0);
  sub_22C369914(v3);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v6 = v65 - v5;
  v7 = sub_22C3A5908(&qword_27D9BFD60, &qword_22C9254E8);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C36D5B4();
  v70 = v9;
  v10 = sub_22C3A5908(&qword_27D9BFD68, &qword_22C9254F0);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C36D5B4();
  v69 = v12;
  v13 = sub_22C90531C();
  sub_22C369824();
  v71 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  sub_22C38B638();
  v16 = sub_22C904C2C();
  sub_22C369824();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v22 = v21 - v20;
  v23 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v23);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  sub_22C37FCFC();
  v25 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v25);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v26);
  v28 = v65 - v27;
  sub_22C904FBC();
  sub_22C369824();
  v67 = v30;
  v68 = v29;
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  v33 = v32 - v31;
  v34 = v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_stream;
  if (*(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_stream + 24))
  {
    sub_22C378A4C(v34, &v73);
  }

  else
  {
    sub_22C38289C(v34);
  }

  if (v74)
  {
    sub_22C36C730(&v73, v75);
    sub_22C904FAC();
    sub_22C90068C();
    v35 = sub_22C90069C();
    v65[0] = v18;
    v36 = v2;
    v37 = v22;
    v38 = v35;
    sub_22C36BECC();
    sub_22C36C640(v39, v40, v41, v38);
    v65[1] = v6;
    v66 = v13;
    sub_22C904F9C();
    v42 = sub_22C90625C();
    v43 = v70;
    v72 = v16;
    sub_22C9062CC();
    v44 = sub_22C389250();
    sub_22C36C640(v44, v45, v46, v42);
    sub_22C904F8C();
    sub_22C904C1C();
    (*(*(v38 - 8) + 16))(v28, v36 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_contextId, v38);
    sub_22C36BECC();
    sub_22C36C640(v47, v48, v49, v38);
    v50 = v37;
    sub_22C904C0C();
    sub_22C90530C();
    v52 = v67;
    v51 = v68;
    (*(v67 + 16))(v69, v33, v68);
    sub_22C36BECC();
    sub_22C36C640(v53, v54, v55, v51);
    sub_22C904C8C();
    v56 = v65[0];
    v57 = v72;
    (*(v65[0] + 16))(v43, v50, v72);
    sub_22C36BECC();
    sub_22C36C640(v58, v59, v60, v57);
    sub_22C904C3C();
    sub_22C90621C();
    sub_22C90622C();
    sub_22C36BECC();
    sub_22C36C640(v61, v62, v63, v64);
    sub_22C9052FC();
    sub_22C374168(v75, v75[3]);
    sub_22C9062BC();
    (*(v71 + 8))(v1, v66);
    (*(v56 + 8))(v50, v72);
    (*(v52 + 8))(v33, v51);
    sub_22C36FF94(v75);
  }

  sub_22C36CC48();
}

uint64_t sub_22C75C5B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37FCFC();
  v6 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_jointResolverId;
  v7 = sub_22C90069C();
  sub_22C36985C();
  (*(v8 + 16))(v2, a2 + v6, v7);
  v9 = sub_22C389250();
  sub_22C36C640(v9, v10, v11, v7);
  return sub_22C90623C();
}

void sub_22C75C708(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void *), uint64_t (*a4)(id))
{
  sub_22C904C6C();
  v6 = sub_22C904C5C();
  v7 = a2;
  v8 = (a2)(v6);
  v9 = [v8 shape];

  sub_22C3D3108();
  v10 = sub_22C90A5EC();

  sub_22C5F2370();
  sub_22C633A2C();
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_22C36EDE8();
  }

  else
  {
    v11 = *(v10 + 32);
  }

  v12 = v11;

  v13 = a3(v12);

  if (v13 < 0)
  {
    __break(1u);
  }

  else if (v13)
  {
    v14 = 0;
    do
    {
      v15 = v7();
      v16 = [v15 objectAtIndexedSubscript_];

      v17 = a4(v16);
      v18 = sub_22C90527C();
      v20 = v19;
      v21 = *v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_22C36D270();
        sub_22C594734(v25, v26, v27, v21);
        v21 = v28;
        *v20 = v28;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_22C594734(v23 > 1, v24 + 1, 1, v21);
        v21 = v29;
        *v20 = v29;
      }

      ++v14;
      *(v21 + 16) = v24 + 1;
      *(v21 + 4 * v24 + 32) = v17;
      v18(v31, 0);
    }

    while (v13 != v14);
  }
}

void sub_22C75C98C()
{
  sub_22C36BA7C();
  v54 = v1;
  v55 = v0;
  v3 = v2;
  v52 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_22C90625C();
  sub_22C369824();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  sub_22C904C6C();
  v50 = v8;
  v19 = sub_22C904C5C();
  v51 = v6;
  v53 = v3;
  v20 = (v3)(v19);
  v21 = [v20 shape];

  v22 = sub_22C3D3108();
  v23 = sub_22C386D8C(v22);

  sub_22C5F2370();
  sub_22C633A2C();
  if ((v23 & 0xC000000000000001) != 0)
  {
    sub_22C36EDE8();
  }

  else
  {
    v24 = *(v23 + 32);
  }

  sub_22C760BF0();
  v25 = v55(v21);

  if (v25 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v25)
    {
      v28 = 0;
      v46 = v11 + 32;
      v47 = (v11 + 16);
      v45 = v11 + 8;
      v48 = v25;
      v49 = v15;
      do
      {
        v29 = v53(v26, v27);
        v30 = [v29 objectAtIndexedSubscript_];

        v31 = v55(v30);
        MEMORY[0x28223BE20](v32);
        sub_22C369920();
        *(v33 - 16) = v52;
        *(v33 - 8) = v31;
        sub_22C9062CC();
        v34 = v18;
        (*v47)(v15, v18, v9);
        v35 = sub_22C9050AC();
        v37 = v36;
        v38 = *v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v37 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C36D270();
          sub_22C594814();
          v38 = v43;
          *v37 = v43;
        }

        v40 = *(v38 + 16);
        if (v40 >= *(v38 + 24) >> 1)
        {
          sub_22C37AD30();
          sub_22C594814();
          v38 = v44;
          *v37 = v44;
        }

        ++v28;
        *(v38 + 16) = v40 + 1;
        sub_22C36BA94();
        v42 = v38 + v41 + *(v11 + 72) * v40;
        v15 = v49;
        (*(v11 + 32))(v42, v49, v9);
        v35(&v56, 0);
        v18 = v34;
        v26 = (*(v11 + 8))(v34, v9);
      }

      while (v48 != v28);
    }

    sub_22C36CC48();
  }
}

void sub_22C75CCD0()
{
  sub_22C386340();
  sub_22C904C6C();
  sub_22C8FDE04();
  v1 = v0;
  v2 = [v0 shape];

  sub_22C3D3108();
  v3 = sub_22C90A5EC();

  sub_22C5F2370();
  sub_22C633A2C();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2318B8460](0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;

  v6 = sub_22C90A90C();

  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v6)
    {
      v7 = 0;
      v8 = MEMORY[0x277D84F90];
      do
      {
        sub_22C8FDE04();
        v10 = v9;
        v11 = [v9 objectAtIndexedSubscript_];

        [v11 floatValue];
        v13 = v12;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_22C36D270();
          sub_22C59470C(v16, v17, v18, v8);
          v8 = v19;
        }

        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          v20 = sub_22C369AB0(v14);
          sub_22C59470C(v20, v15 + 1, 1, v8);
          v8 = v21;
        }

        ++v7;
        *(v8 + 16) = v15 + 1;
        *(v8 + 4 * v15 + 32) = v13;
      }

      while (v6 != v7);
    }

    sub_22C904C5C();
    sub_22C37BF60();
  }
}

void sub_22C75CE68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v162 = a2;
  v149 = a3;
  v4 = sub_22C3A5908(&qword_27D9BFD50, &qword_22C9254D0);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C36D5B4();
  sub_22C3698F8(v6);
  v167 = sub_22C90625C();
  sub_22C369824();
  v163 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  sub_22C3698F8(v10);
  v153 = sub_22C90508C();
  sub_22C369824();
  v150 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA64();
  sub_22C3698F8(v14);
  v144 = sub_22C90511C();
  sub_22C369824();
  v143 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C3698A8();
  v151 = v17;
  v18 = sub_22C3A5908(&qword_27D9BFD58, &qword_22C9254D8);
  sub_22C369914(v18);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v19);
  v21 = &v142 - v20;
  v22 = sub_22C904E9C();
  sub_22C369824();
  v160 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  sub_22C3698F8(v29);
  v148 = sub_22C904F6C();
  sub_22C369824();
  v147 = v30;
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  v157 = v32;
  v169 = a1;
  sub_22C8FDDF0();
  v34 = v33;
  v35 = &off_278729000;
  inited = [v33 shape];

  sub_22C3D3108();
  v37 = sub_22C90A5EC();

  sub_22C760B24();
  sub_22C633A2C();
  v146 = v21;
  if (inited)
  {
    goto LABEL_88;
  }

  v38 = *(v37 + 40);
LABEL_3:
  sub_22C37BB14();

  v39 = sub_22C90A90C();

  sub_22C8FDDF0();
  v41 = v40;
  v42 = [v40 v35[440]];

  v43 = sub_22C90A5EC();
  sub_22C760B24();
  sub_22C633A2C();
  if (v42)
  {
    MEMORY[0x2318B8460](2, v43);
  }

  else
  {
    v44 = *(v43 + 48);
  }

  sub_22C37BB14();

  v170 = sub_22C90A90C();

  sub_22C90525C();
  sub_22C37A078();
  sub_22C904C6C();
  sub_22C904C5C();
  v45 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
  v46 = sub_22C760B78(v45, &v174);
  v171 = xmmword_22C922290;
  *(v46 + 16) = xmmword_22C922290;
  *(v46 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  if (v39 < 0)
  {
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v158 = v39;
  if (v39)
  {
    sub_22C36FE40();
    if ((v47 & 0x8000000000000000) == 0)
    {
      v48 = 0;
      v49 = v46 & 0xFFFFFFFFFFFFFF8;
      sub_22C3768F8(v173);
      v159 = v22;
      v156 = v27;
      v154 = v46 & 0xFFFFFFFFFFFFFF8;
      v155 = v46;
      while (1)
      {
        sub_22C37EFC0();
        inited = swift_initStackObject();
        sub_22C38AAA0(inited);
        *(inited + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v50 = *(v49 + 16);

        if (swift_isUniquelyReferenced_nonNull_bridgeObject() && v50 < *(v49 + 24) >> 1)
        {
          v37 = v46;
        }

        else
        {
          v37 = sub_22C90AF9C();
          v49 = v37 & 0xFFFFFFFFFFFFFF8;
        }

        v51 = *(v49 + 16);
        if (v51 >= *(v49 + 24) >> 1)
        {
          goto LABEL_85;
        }

        v161 = v48;
        sub_22C3889A8(v49 + 8 * v51);
        swift_arrayInitWithCopy();

        ++*(v49 + 16);
        sub_22C37A078();
        sub_22C904C6C();
        sub_22C904C5C();
        sub_22C36FE40();
        if (v52)
        {
          break;
        }

LABEL_33:

        sub_22C36BA4C();
        v79 = v156;
        v80 = v159;
        v81(v156, v168, v159);
        v82 = v157;
        v83 = sub_22C904F3C();
        v85 = sub_22C3838BC(v83, v84);
        *v22 = v82;
        if ((v85 & 1) == 0)
        {
          sub_22C36D270();
          sub_22C5949A4();
          sub_22C375FF0(v91);
        }

        v86 = v161;
        v27 = *(v82 + 16);
        v87 = *(v82 + 24);
        v35 = (v27 + 1);
        v46 = v155;
        if (v27 >= v87 >> 1)
        {
          sub_22C369AB0(v87);
          sub_22C37AD30();
          sub_22C5949A4();
          sub_22C375FF0(v92);
        }

        v48 = v86 + 1;
        *(v82 + 16) = v35;
        v88 = sub_22C370374(v173);
        v89(v88, v79, v80);
        v90 = sub_22C372444();
        (v37)(v90);
        (*(v27 + 9))(v168, v80);
        v39 = v158;
        v49 = v154;
        if (v48 == v158)
        {
          goto LABEL_38;
        }
      }

      v27 = 0;
      while (1)
      {
        sub_22C37EFC0();
        inited = swift_initStackObject();
        sub_22C38AAA0(inited);
        *(inited + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v22 = v37 >> 62;
        if (v37 >> 62)
        {
          v53 = sub_22C90B1BC();
        }

        else
        {
          v53 = *(v49 + 16);
        }

        v35 = (v53 + 1);
        if (__OFADD__(v53, 1))
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          MEMORY[0x2318B8460](1, v37);
          goto LABEL_3;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v22)
        {
          goto LABEL_25;
        }

        v54 = v49;
        v22 = v37;
        if (v35 > *(v49 + 24) >> 1)
        {
          goto LABEL_26;
        }

LABEL_27:
        v55 = *(v54 + 16);
        if (v55 >= *(v54 + 24) >> 1)
        {
          goto LABEL_79;
        }

        sub_22C3889A8(v54 + 8 * v55);
        swift_arrayInitWithCopy();

        ++*(v54 + 16);
        sub_22C8FDDF0();
        v57 = v56;
        v58 = sub_22C90A5DC();

        v60 = sub_22C38C484(v59, sel_objectForKeyedSubscript_);

        [v60 floatValue];
        v62 = v61;

        v63 = sub_22C904E6C();
        v22 = v64;
        v65 = *v64;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v22 = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v71 = sub_22C36D270();
          sub_22C59470C(v71, v72, v73, v65);
          v65 = v74;
          *v22 = v74;
        }

        v68 = *(v65 + 16);
        v67 = *(v65 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_22C369AB0(v67);
          sub_22C37AD30();
          sub_22C59470C(v75, v76, v77, v65);
          v65 = v78;
          *v22 = v78;
        }

        ++v27;
        *(v65 + 16) = v68 + 1;
        *(v65 + 4 * v68 + 32) = v62;
        v69 = sub_22C372444();
        v63(v69);
        sub_22C36FE40();
        if (v70 == v27)
        {
          goto LABEL_33;
        }
      }

      if (v22)
      {
LABEL_25:
        sub_22C90B1BC();
      }

LABEL_26:
      v22 = sub_22C90AF9C();
      v54 = v22 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_27;
    }

    goto LABEL_91;
  }

LABEL_38:

  v37 = v148;
  (*(v147 + 16))(v146, v157, v148);
  v93 = sub_22C3726A4();
  sub_22C386860(v93, v94, v95, v37);
  sub_22C90523C();
  sub_22C37A078();
  sub_22C904C6C();
  sub_22C904C5C();
  sub_22C37EFC0();
  v22 = swift_allocObject();
  sub_22C38AAA0(v22);
  *(v22 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  if (!v39)
  {
LABEL_77:

    v136 = v143;
    v137 = v151;
    v138 = v144;
    (*(v143 + 16))(v145, v151, v144);
    sub_22C36BECC();
    sub_22C36C640(v139, v140, v141, v138);
    sub_22C90524C();
    (*(v136 + 8))(v137, v138);
    (*(v147 + 8))(v157, v148);
    return;
  }

  sub_22C36FE40();
  if ((v96 & 0x8000000000000000) == 0)
  {
    inited = 0;
    v97 = v22 & 0xFFFFFFFFFFFFFF8;
    v168 = v163 + 16;
    sub_22C760B30(v163);
    sub_22C3768F8(v172);
    v154 = v22 & 0xFFFFFFFFFFFFFF8;
    v155 = v22;
    while (1)
    {
      if (__OFADD__(inited, 1))
      {
        goto LABEL_86;
      }

      v156 = (inited + 1);
      sub_22C37EFC0();
      v37 = swift_initStackObject();
      sub_22C38AAA0(v37);
      *(v37 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      inited = *(v97 + 16);

      if (swift_isUniquelyReferenced_nonNull_bridgeObject() && inited < *(v97 + 24) >> 1)
      {
        v98 = v22;
      }

      else
      {
        v98 = sub_22C90AF9C();
        v97 = v98 & 0xFFFFFFFFFFFFFF8;
      }

      if (*(v97 + 16) >= *(v97 + 24) >> 1)
      {
        goto LABEL_87;
      }

      swift_arrayInitWithCopy();

      ++*(v97 + 16);
      sub_22C37A078();
      sub_22C904C6C();
      sub_22C904C5C();
      sub_22C36FE40();
      if (v99)
      {
        break;
      }

LABEL_72:

      sub_22C36BA4C();
      v125(v152, v164, v153);
      v126 = v151;
      v127 = sub_22C9050EC();
      v129 = sub_22C3838BC(v127, v128);
      *v22 = v126;
      if ((v129 & 1) == 0)
      {
        sub_22C36D270();
        sub_22C5948DC();
        sub_22C375FF0(v134);
      }

      v97 = v154;
      v130 = v156;
      v27 = *(v126 + 16);
      v131 = *(v126 + 24);
      v35 = (v27 + 1);
      if (v27 >= v131 >> 1)
      {
        sub_22C369AB0(v131);
        sub_22C37AD30();
        sub_22C5948DC();
        sub_22C375FF0(v135);
      }

      v22 = v155;
      *(v126 + 16) = v35;
      sub_22C370374(v172);
      sub_22C386ADC();
      v132();
      v133 = sub_22C372444();
      (v37)(v133);
      (*(v27 + 9))(v164, v126);
      inited = v130;
      if (v130 == v158)
      {
        goto LABEL_77;
      }
    }

    v37 = 0;
    if (v98 >= 0)
    {
      v100 = v97;
    }

    else
    {
      v100 = v98;
    }

    v159 = v100;
    while (1)
    {
      sub_22C37EFC0();
      inited = swift_initStackObject();
      sub_22C38AAA0(inited);
      *(inited + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v22 = v98 >> 62;
      if (v98 >> 62)
      {
        v101 = sub_22C90B1BC();
      }

      else
      {
        v101 = *(v97 + 16);
      }

      v35 = (v101 + 1);
      if (__OFADD__(v101, 1))
      {
        goto LABEL_80;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v22)
      {
        goto LABEL_61;
      }

LABEL_62:
      v22 = sub_22C90AF9C();
      v27 = v22 & 0xFFFFFFFFFFFFFF8;
LABEL_63:
      v102 = *(v27 + 16);
      if (v102 >= *(v27 + 24) >> 1)
      {
        goto LABEL_81;
      }

      sub_22C3889A8(v27 + 8 * v102);
      swift_arrayInitWithCopy();

      ++*(v27 + 16);
      sub_22C8FDDF0();
      v104 = v103;
      v35 = sub_22C90A5DC();

      v22 = sub_22C38C484(v105, sel_objectForKeyedSubscript_);

      [v22 floatValue];
      v107 = v106;
      inited = LODWORD(v106);

      if ((inited & 0x7FFFFFFF) > 0x7F7FFFFF)
      {
        goto LABEL_82;
      }

      if (v107 <= -9.2234e18)
      {
        goto LABEL_83;
      }

      if (v107 >= 9.2234e18)
      {
        goto LABEL_84;
      }

      MEMORY[0x28223BE20](v108);
      *(&v142 - 2) = v162;
      *(&v142 - 1) = v109;
      v110 = v165;
      sub_22C386ADC();
      sub_22C9062CC();
      sub_22C36BA4C();
      v111(v166, v110, inited);
      v112 = sub_22C90505C();
      v114 = v113;
      v27 = *v113;
      v115 = swift_isUniquelyReferenced_nonNull_native();
      *v114 = v27;
      if ((v115 & 1) == 0)
      {
        sub_22C36D270();
        sub_22C594814();
        v27 = v123;
        *v114 = v123;
      }

      v117 = *(v27 + 16);
      v116 = *(v27 + 24);
      if (v117 >= v116 >> 1)
      {
        sub_22C369AB0(v116);
        sub_22C594814();
        v27 = v124;
        *v114 = v124;
      }

      ++v37;
      *(v27 + 16) = v117 + 1;
      v22 = v163;
      sub_22C36BA94();
      v119 = v27 + v118 + *(v22 + 72) * v117;
      v120 = v167;
      (*(v22 + 32))(v119, v166, v167);
      v121 = sub_22C372444();
      v112(v121);
      (*(v22 + 8))(v165, v120);
      sub_22C36FE40();
      if (v122 == v37)
      {
        goto LABEL_72;
      }
    }

    if (!v22)
    {
      v27 = v97;
      v22 = v98;
      if (v35 <= *(v97 + 24) >> 1)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

LABEL_61:
    sub_22C90B1BC();
    goto LABEL_62;
  }

LABEL_92:
  __break(1u);
}

void sub_22C75DE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C386340();
  a21 = v22;
  a22 = v23;
  v97 = v24;
  v103 = sub_22C90625C();
  sub_22C369824();
  v98 = v25;
  MEMORY[0x28223BE20](v26);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v27);
  sub_22C36BA64();
  sub_22C3698F8(v28);
  sub_22C90522C();
  sub_22C369824();
  v95 = v29;
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v33 = v32 - v31;
  sub_22C904C6C();
  sub_22C904C5C();
  sub_22C8FDE20();
  v35 = v34;
  v36 = &off_278729000;
  v37 = [v34 shape];

  sub_22C3D3108();
  v38 = sub_22C90A5EC();

  v39 = (v38 & 0xC000000000000001);
  sub_22C5F2370();
  sub_22C633A2C();
  if ((v38 & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  v40 = *(v38 + 32);
  while (1)
  {
    sub_22C37BB14();

    v41 = sub_22C90A90C();

    sub_22C8FDE20();
    v43 = v42;
    v44 = [v42 v36[440]];

    v45 = sub_22C90A5EC();
    sub_22C760B24();
    sub_22C633A2C();
    if (v44)
    {
      MEMORY[0x2318B8460](1, v45);
    }

    else
    {
      v46 = *(v45 + 40);
    }

    sub_22C37BB14();

    v47 = sub_22C90A90C();

    if (v41 < 0)
    {
      break;
    }

    v94 = v41;
    if (!v41)
    {
LABEL_28:
      sub_22C37BF60();
      return;
    }

    v48 = v47 - 2;
    if (__OFSUB__(v47, 2))
    {
      goto LABEL_34;
    }

    v49 = 0;
    v36 = 0;
    sub_22C760B30(v95);
    v50 = &off_278729000;
    v99 = v47 - 2;
    v100 = v33;
    while (1)
    {
      v51 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
      v38 = sub_22C760B78(v51, &a13);
      sub_22C383438(v38, &a15);
      v96 = v49;
      *(v38 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_22C90521C();
      sub_22C9051EC();
      if (v48 >= 1)
      {
        break;
      }

      v75 = 0;
LABEL_24:
      inited = swift_initStackObject();
      sub_22C383438(inited, &a15);
      inited[2].n128_u64[0] = [objc_allocWithZone(MEMORY[0x277CCABB0]) v50[446]];
      v104[0] = v38;

      sub_22C3CE468(inited);
      if (v48 >= 1)
      {
      }

      sub_22C8FDE20();
      v78 = v77;
      v79 = sub_22C90A5DC();

      v33 = sub_22C38C484(v80, sel_objectForKeyedSubscript_);

      [v33 floatValue];
      v81 = sub_22C375AFC();
      MEMORY[0x2318B26D0](v81);
      v82 = swift_initStackObject();
      sub_22C383438(v82, &a15);
      v39 = (v75 + 1);
      if (__OFADD__(v75, 1))
      {
        goto LABEL_30;
      }

      v84 = v83;
      v49 = v96 + 1;
      v50 = &off_278729000;
      *(v83 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v104[0] = v38;
      sub_22C3CE468(v84);
      sub_22C8FDE20();
      v86 = v85;
      v87 = sub_22C90A5DC();

      v88 = [v86 &off_278729AF8];

      [v88 floatValue];
      sub_22C375AFC();
      sub_22C90520C();
      v89 = sub_22C90519C();
      v91 = v90;
      sub_22C3D0FC8();
      v92 = *(*v91 + 16);
      sub_22C3D118C(v92);
      *(*v91 + 16) = v92 + 1;
      sub_22C760B48();
      sub_22C386ADC();
      v93();
      v89(v104, 0);
      (*(v95 + 8))(v100, v91);
      v48 = v99;
      if (v96 + 1 == v94)
      {
        goto LABEL_28;
      }
    }

    v33 = 0;
    v52 = 0;
    while (1)
    {
      v39 = swift_initStackObject();
      sub_22C383438(v39, &a15);
      v39[2].n128_u64[0] = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v53 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v54 = v38 & 0xFFFFFFFFFFFFFF8, v53 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
      {
        v54 = sub_22C90AF9C() & 0xFFFFFFFFFFFFFF8;
      }

      v55 = *(v54 + 16);
      if (v55 >= *(v54 + 24) >> 1)
      {
        break;
      }

      sub_22C3889A8(v54 + 8 * v55);
      swift_arrayInitWithCopy();

      ++*(v54 + 16);
      if (v33)
      {
      }

      sub_22C8FDE20();
      v57 = v56;
      v58 = sub_22C90A5DC();

      v60 = sub_22C38C484(v59, sel_objectForKeyedSubscript_);

      v61 = sub_22C90A90C();
      MEMORY[0x28223BE20](v62);
      sub_22C369920();
      *(v63 - 16) = v97;
      *(v63 - 8) = v61;
      sub_22C386ADC();
      sub_22C9062CC();
      sub_22C36BA4C();
      v64(v102, v101, v61);
      v65 = sub_22C9051DC();
      v67 = v66;
      v68 = *v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v67 = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C36D270();
        sub_22C594814();
        v68 = v73;
        *v67 = v73;
      }

      v71 = *(v68 + 16);
      v70 = *(v68 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_22C369AB0(v70);
        sub_22C377674();
        sub_22C594814();
        v68 = v74;
        *v67 = v74;
      }

      *(v68 + 16) = v71 + 1;
      sub_22C36BA94();
      (*(v98 + 32))(v68 + v72 + *(v98 + 72) * v71, v102, v103);
      v65(v104, 0);
      (*(v98 + 8))(v101, v103);
      ++v52;
      v33 = 1;
      if (v99 == v52)
      {
        v48 = v99;
        v75 = v99;
        v50 = &off_278729000;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    MEMORY[0x2318B8460](0, v38);
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_22C75EA08()
{
  sub_22C760BD8();
  sub_22C8FDEB0();
  v1 = v0;
  v2 = [v0 objectAtIndexedSubscript_];

  v3 = sub_22C90ABEC();
  v4 = sub_22C90ABFC();

  return v4 & 1;
}

void sub_22C75EA88(id *a1@<X0>, void *a2@<X8>)
{
  sub_22C904F1C();
  v40 = a1;
  v6 = [a1[2] shape];
  sub_22C760BD8();
  sub_22C90A5EC();

  v7 = sub_22C36E2B8();
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    sub_22C38BFCC(v7);
    if (v3 < 0)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    sub_22C37F4F0();
    while (1)
    {
      if (v8)
      {
        sub_22C760BAC();
      }

      else
      {
        v9 = sub_22C37ED5C();
      }

      v10 = sub_22C3745A8(v9);

      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v10))
      {
        goto LABEL_84;
      }

      sub_22C36C2A4();
      if (v12)
      {
        sub_22C387500(v11);
        v2 = v41;
      }

      sub_22C378660();
      if (v13)
      {

        v8 = MEMORY[0x277D84F90];
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v2 = MEMORY[0x277D84F90];
LABEL_15:
  sub_22C37B778();
  sub_22C904ECC();
  sub_22C760B94([v40[3] shape]);

  v14 = sub_22C36E2B8();
  if (v14)
  {
    sub_22C38BFCC(v14);
    if (v3 < 0)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    sub_22C37F4F0();
    while (1)
    {
      if (v8)
      {
        sub_22C760BAC();
      }

      else
      {
        v15 = sub_22C37ED5C();
      }

      v16 = sub_22C3745A8(v15);

      if ((v16 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v16))
      {
        goto LABEL_86;
      }

      sub_22C36C2A4();
      if (v12)
      {
        sub_22C387500(v17);
        v2 = v41;
      }

      sub_22C378660();
      if (v13)
      {

        v8 = MEMORY[0x277D84F90];
        goto LABEL_29;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v2 = MEMORY[0x277D84F90];
LABEL_29:
  sub_22C37B778();
  sub_22C904EBC();
  sub_22C760B94([v40[4] shape]);

  v18 = sub_22C36E2B8();
  if (v18)
  {
    sub_22C38BFCC(v18);
    if (v3 < 0)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    sub_22C37F4F0();
    while (1)
    {
      if (v8)
      {
        sub_22C760BAC();
      }

      else
      {
        v19 = sub_22C37ED5C();
      }

      v20 = sub_22C3745A8(v19);

      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_87;
      }

      if (HIDWORD(v20))
      {
        goto LABEL_88;
      }

      sub_22C36C2A4();
      if (v12)
      {
        sub_22C387500(v21);
        v2 = v41;
      }

      sub_22C378660();
      if (v13)
      {

        v8 = MEMORY[0x277D84F90];
        goto LABEL_43;
      }
    }
  }

  v2 = MEMORY[0x277D84F90];
LABEL_43:
  sub_22C37B778();
  sub_22C904EEC();
  sub_22C760B94([v40[5] shape]);

  v22 = sub_22C36E2B8();
  if (v22)
  {
    sub_22C38BFCC(v22);
    if (v3 < 0)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    sub_22C37F4F0();
    while (1)
    {
      if (v8)
      {
        sub_22C760BAC();
      }

      else
      {
        v23 = sub_22C37ED5C();
      }

      v24 = sub_22C3745A8(v23);

      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_89;
      }

      if (HIDWORD(v24))
      {
        goto LABEL_90;
      }

      sub_22C36C2A4();
      if (v12)
      {
        sub_22C387500(v25);
        v2 = v41;
      }

      sub_22C378660();
      if (v13)
      {

        v8 = MEMORY[0x277D84F90];
        goto LABEL_57;
      }
    }
  }

  v2 = MEMORY[0x277D84F90];
LABEL_57:
  sub_22C37B778();
  sub_22C904F0C();
  sub_22C760B94([v40[6] shape]);

  v26 = sub_22C36E2B8();
  if (v26)
  {
    sub_22C38BFCC(v26);
    if (v3 < 0)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    sub_22C37F4F0();
    while (1)
    {
      if (v8)
      {
        sub_22C760BAC();
      }

      else
      {
        v27 = sub_22C37ED5C();
      }

      v28 = sub_22C3745A8(v27);

      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_91;
      }

      if (HIDWORD(v28))
      {
        goto LABEL_92;
      }

      sub_22C36C2A4();
      if (v12)
      {
        sub_22C387500(v29);
        v2 = v41;
      }

      sub_22C378660();
      if (v13)
      {

        v8 = MEMORY[0x277D84F90];
        goto LABEL_71;
      }
    }
  }

  v2 = MEMORY[0x277D84F90];
LABEL_71:
  sub_22C37B778();
  sub_22C904EFC();
  v30 = sub_22C760B94([v40[7] shape]);

  v31 = sub_22C36E2B8();
  if (!v31)
  {
LABEL_82:

    sub_22C37B778();
    sub_22C904EDC();
    return;
  }

  v32 = v31;
  sub_22C3B7754(0, v31 & ~(v31 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v33 = 0;
    while (1)
    {
      v34 = (v30 & 0xC000000000000001) != 0 ? MEMORY[0x2318B8460](v33, v30) : *(v30 + 8 * v33 + 32);
      v35 = v34;
      v36 = [v34 integerValue];

      if ((v36 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v36))
      {
        goto LABEL_94;
      }

      v38 = *(v8 + 16);
      v37 = *(v8 + 24);
      if (v38 >= v37 >> 1)
      {
        v39 = sub_22C369AB0(v37);
        sub_22C3B7754(v39, v38 + 1, 1);
      }

      ++v33;
      *(v8 + 16) = v38 + 1;
      *(v8 + 4 * v38 + 32) = v36;
      if (v32 == v33)
      {
        goto LABEL_82;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

LABEL_100:
  __break(1u);
}

uint64_t sub_22C75EFE8(uint64_t a1, uint64_t a2)
{
  v55[0] = a1;
  v55[1] = a2;
  sub_22C3858B4();
  sub_22C90AD9C();
  sub_22C3813C8();
  sub_22C633A28();
  sub_22C760BC4();

  if (v55 > 0 || v4 < 2)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];

  v10 = sub_22C862FDC(1uLL, v6, v7, v8, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if ((v4 & 1) == 0 || (swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    sub_22C7608F0(v2, v3, v55, v4);
    sub_22C760BC4();
  }

  if (v4 < 2 || v55 > 0)
  {
    goto LABEL_29;
  }

  *v3 = v10;
  v3[1] = v12;
  v3[2] = v14;
  v3[3] = v16;

  sub_22C90629C();
  if ((v3[1] ^ *v3) < 0x4000)
  {
LABEL_30:
    LOBYTE(v29) = 1;
    goto LABEL_18;
  }

  v18 = sub_22C372CE4();
  v23 = sub_22C76098C(v18, v19, v20, v21, v22);
  if ((v23 & 0x10000000000) != 0)
  {

    v24 = sub_22C372CE4();
    sub_22C8A3F68(v24, v25, v26, v27);
    v23 = v28;
  }

  v29 = (v23 & 0x100000000uLL) >> 32;
LABEL_18:
  sub_22C37A350(v29);
  sub_22C90626C();
  if (v4 < 4)
  {
    __break(1u);
    goto LABEL_32;
  }

  if ((v3[5] ^ v3[4]) < 0x4000)
  {
LABEL_32:
    LOBYTE(v41) = 1;
    goto LABEL_23;
  }

  v30 = sub_22C372CE4();
  v35 = sub_22C76098C(v30, v31, v32, v33, v34);
  if ((v35 & 0x10000000000) != 0)
  {

    v36 = sub_22C372CE4();
    sub_22C8A3F68(v36, v37, v38, v39);
    v35 = v40;
  }

  v41 = (v35 & 0x100000000uLL) >> 32;
LABEL_23:
  sub_22C37A350(v41);
  sub_22C90627C();
  if (v4 < 6)
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((v3[9] ^ v3[8]) < 0x4000)
  {
LABEL_34:
    LOBYTE(v53) = 1;
    goto LABEL_28;
  }

  v42 = sub_22C760B60();
  v47 = sub_22C76098C(v42, v43, v44, v45, v46);
  if ((v47 & 0x10000000000) != 0)
  {

    v48 = sub_22C760B60();
    sub_22C8A3F68(v48, v49, v50, v51);
    v47 = v52;
  }

  v53 = (v47 & 0x100000000uLL) >> 32;
LABEL_28:
  sub_22C37A350(v53);
  sub_22C90628C();
  return swift_unknownObjectRelease();
}

void sub_22C75F264()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C9052EC();
  sub_22C369824();
  v61 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  sub_22C904C6C();
  v60 = v3;
  sub_22C904C5C();
  v64 = v1;
  v13 = &off_278729000;
  v14 = [*(v1 + 64) shape];
  v63 = sub_22C760BD8();
  v15 = sub_22C90A5EC();

  inited = v15 & 0xC000000000000001;
  sub_22C5F2370();
  sub_22C633A2C();
  if ((v15 & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  v17 = *(v15 + 32);
  while (1)
  {
    sub_22C37BB14();

    v18 = sub_22C90A90C();

    v19 = [*(v64 + 64) *(v13 + 3520)];
    v20 = sub_22C90A5EC();

    sub_22C760B24();
    sub_22C633A2C();
    if (v19)
    {
      MEMORY[0x2318B8460](1, v20);
    }

    else
    {
      v21 = *(v20 + 40);
    }

    sub_22C37BB14();

    v67 = sub_22C90A90C();

    if (v18 < 0)
    {
      break;
    }

    if (!v18)
    {
LABEL_28:
      sub_22C36CC48();
      return;
    }

    if (v67 < 0)
    {
      goto LABEL_34;
    }

    v22 = 0;
    v58 = v61 + 32;
    v59 = (v61 + 16);
    v57 = v61 + 8;
    v66 = xmmword_22C922290;
    v56 = v4;
    v55 = v9;
    v54 = v18;
    while (1)
    {
      sub_22C904C6C();
      sub_22C904C5C();
      v65 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
      v23 = swift_allocObject();
      *(v23 + 16) = v66;
      v24 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v62 = v22;
      *(v23 + 32) = [v24 initWithInteger_];
      if (v67)
      {
        break;
      }

LABEL_23:
      (*v59)(v9, v12, v4);
      v42 = sub_22C904C4C();
      v44 = v43;
      v45 = *v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v44 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C36D270();
        sub_22C594B34();
        v45 = v52;
        *v44 = v52;
      }

      v48 = *(v45 + 16);
      v47 = *(v45 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_22C369AB0(v47);
        sub_22C377674();
        sub_22C594B34();
        v45 = v53;
        *v44 = v53;
      }

      v49 = v61;
      *(v45 + 16) = v48 + 1;
      sub_22C36BA94();
      v22 = v51;
      (*(v49 + 32))(v45 + v50 + *(v49 + 72) * v48, v9, v4);
      v42(v68, 0);
      (*(v49 + 8))(v12, v4);
      if (v22 == v18)
      {
        goto LABEL_28;
      }
    }

    v25 = v12;
    v26 = 0;
    v12 = (v23 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v66;
      *(inited + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v15 = v23 & 0xFFFFFFFFFFFFFF8, v13 = v23, v27 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
      {
        v13 = sub_22C90AF9C();
        v15 = v13 & 0xFFFFFFFFFFFFFF8;
      }

      v28 = *(v15 + 16);
      if (v28 >= *(v15 + 24) >> 1)
      {
        break;
      }

      sub_22C3889A8(v15 + 8 * v28);
      swift_arrayInitWithCopy();

      ++*(v15 + 16);
      v15 = *(v64 + 64);
      inited = sub_22C90A5DC();

      v13 = [v15 objectForKeyedSubscript_];

      v29 = [v13 intValue];
      if ((v29 & 0x80000000) != 0)
      {
        goto LABEL_30;
      }

      v30 = sub_22C9052BC();
      v32 = v31;
      v33 = *v31;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      *v32 = v33;
      if ((v34 & 1) == 0)
      {
        v36 = sub_22C36D270();
        sub_22C594734(v36, v37, v38, v33);
        v33 = v39;
        *v32 = v39;
      }

      v9 = *(v33 + 16);
      v35 = *(v33 + 24);
      v4 = v9 + 1;
      if (v9 >= v35 >> 1)
      {
        v40 = sub_22C369AB0(v35);
        sub_22C594734(v40, v9 + 1, 1, v33);
        v33 = v41;
        *v32 = v41;
      }

      ++v26;
      *(v33 + 16) = v4;
      *(v33 + 4 * v9 + 32) = v29;
      v30(v68, 0);
      if (v67 == v26)
      {

        v4 = v56;
        v9 = v55;
        v12 = v25;
        v18 = v54;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    MEMORY[0x2318B8460](0, v15);
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_22C75F814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C386340();
  a21 = v23;
  a22 = v24;
  v84 = v25;
  v27 = v26;
  v28 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v28);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  sub_22C37FCFC();
  v30 = sub_22C90500C();
  sub_22C369824();
  v85 = v31;
  MEMORY[0x28223BE20](v32);
  sub_22C369838();
  sub_22C38B638();
  v33 = sub_22C90515C();
  sub_22C369824();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  sub_22C369838();
  v39 = (v38 - v37);
  sub_22C904C6C();
  sub_22C904C5C();
  v40 = [*(v27 + 56) shape];
  sub_22C760BD8();
  v41 = sub_22C90A5EC();

  v42 = (v41 & 0xC000000000000001);
  sub_22C5F2370();
  sub_22C633A2C();
  if ((v41 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2318B8460](0, v41);
  }

  else
  {
    v43 = *(v41 + 32);
  }

  sub_22C37BB14();

  v44 = sub_22C90A90C();

  if (v44 < 0)
  {
    __break(1u);
  }

  else
  {
    v81 = v33;
    if (v44)
    {
      v82 = sub_22C90625C();
      v45 = 0;
      v87 = v27;
      v83 = v44;
      do
      {
        v86 = v45 + 1;
        sub_22C904FFC();
        v46 = sub_22C3A5908(&qword_27D9BE3A8, &unk_22C91D950);
        v47 = sub_22C760B78(v46, &a16);
        sub_22C383438(v47, &a17);
        v47[2].n128_u64[0] = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        inited = swift_initStackObject();
        sub_22C383438(inited, &a17);
        sub_22C381BAC([objc_allocWithZone(MEMORY[0x277CCABB0]) &selRef:0 initWithPattern:? options:? error:?]);

        sub_22C3CE468(inited);
        v49 = *(v27 + 56);
        v50 = sub_22C90A5DC();

        v51 = [v49 objectForKeyedSubscript_];

        v52 = sub_22C90A90C();
        MEMORY[0x28223BE20](v53);
        sub_22C369920();
        *(v54 - 16) = v84;
        *(v54 - 8) = v52;
        sub_22C9062CC();
        v55 = sub_22C389250();
        sub_22C36C640(v55, v56, v57, v82);
        sub_22C904F8C();
        v58 = swift_initStackObject();
        sub_22C383438(v58, &a17);
        sub_22C381BAC([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_]);

        sub_22C3CE468(v58);
        v59 = *(v87 + 56);
        v60 = sub_22C90A5DC();

        v61 = [v59 objectForKeyedSubscript_];

        v62 = sub_22C90A90C();
        MEMORY[0x28223BE20](v63);
        sub_22C369920();
        *(v64 - 16) = v84;
        *(v64 - 8) = v62;
        sub_22C9062CC();
        v27 = v87;
        v65 = sub_22C389250();
        sub_22C36C640(v65, v66, v67, v82);
        sub_22C904FDC();
        v68 = swift_initStackObject();
        sub_22C383438(v68, &a17);
        sub_22C381BAC([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_]);
        sub_22C3CE468(v68);
        v69 = *(v87 + 56);
        sub_22C37BB14();
        v70 = sub_22C90A5DC();

        v72 = sub_22C38C484(v71, sel_objectForKeyedSubscript_);

        sub_22C90A85C();
        v88[0] = 0;
        sub_22C904FEC();
        v73 = sub_22C90512C();
        v75 = v74;
        sub_22C3D0FE0();
        v76 = *(*v75 + 16);
        sub_22C3D11A4(v76);
        *(*v75 + 16) = v76 + 1;
        sub_22C760B48();
        (*(v85 + 16))(v77 + v78 * v76, v22, v30);
        v73(v88, 0);
        (*(v85 + 8))(v22, v30);
        v45 = v86;
      }

      while (v83 != v86);
    }

    sub_22C3A5908(&qword_27D9BFD20, &unk_22C925498);
    v79 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_22C90F800;
    (*(v35 + 32))(v80 + v79, v39, v81);
    sub_22C37BF60();
  }
}

uint64_t sub_22C75FF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C37FCFC();
  if (*(a2 + 16) && (v8 = sub_22C628CD4(a3), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(a2 + 56);
    v12 = sub_22C90069C();
    sub_22C36985C();
    (*(v13 + 16))(v3, v11 + *(v13 + 72) * v10, v12);
    v14 = sub_22C389250();
    v17 = v12;
  }

  else
  {
    v17 = sub_22C90069C();
    v14 = v3;
    v15 = 1;
    v16 = 1;
  }

  sub_22C36C640(v14, v15, v16, v17);
  return sub_22C90623C();
}

void sub_22C760038(uint64_t a1)
{
  v3 = [*(a1 + 88) shape];
  sub_22C3813C8();
  v4 = sub_22C3D3108();
  v5 = sub_22C386D8C(v4);

  v6 = (v5 & 0xC000000000000001);
  sub_22C5F2370();
  sub_22C633A2C();
  if ((v5 & 0xC000000000000001) != 0)
  {
    sub_22C36EDE8();
  }

  else
  {
    v7 = *(v5 + 32);
  }

  sub_22C760BF0();
  v8 = sub_22C90A90C();

  if (v8 < 0)
  {
    __break(1u);
  }

  else if (v8)
  {
    v9 = MEMORY[0x277D84F90];
    do
    {
      v10 = [*(a1 + 88) objectAtIndexedSubscript_];
      [v10 floatValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_22C36D270();
        sub_22C59470C(v14, v15, v16, v9);
        v9 = v17;
      }

      sub_22C381788();
      if (v12)
      {
        sub_22C369AB0(v11);
        sub_22C377674();
        sub_22C59470C(v18, v19, v20, v21);
        v9 = v22;
      }

      sub_22C37FF70();
    }

    while (!v13);
  }
}

void sub_22C760184(uint64_t a1)
{
  v3 = [*(a1 + 112) shape];
  sub_22C3813C8();
  v4 = sub_22C3D3108();
  v5 = sub_22C386D8C(v4);

  v6 = (v5 & 0xC000000000000001);
  sub_22C5F2370();
  sub_22C633A2C();
  if ((v5 & 0xC000000000000001) != 0)
  {
    sub_22C36EDE8();
  }

  else
  {
    v7 = *(v5 + 32);
  }

  sub_22C760BF0();
  v8 = sub_22C90A90C();

  if (v8 < 0)
  {
    __break(1u);
  }

  else if (v8)
  {
    v9 = MEMORY[0x277D84F90];
    do
    {
      v10 = [*(a1 + 112) objectAtIndexedSubscript_];
      [v10 floatValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_22C36D270();
        sub_22C59470C(v14, v15, v16, v9);
        v9 = v17;
      }

      sub_22C381788();
      if (v12)
      {
        sub_22C369AB0(v11);
        sub_22C377674();
        sub_22C59470C(v18, v19, v20, v21);
        v9 = v22;
      }

      sub_22C37FF70();
    }

    while (!v13);
  }
}

void sub_22C7602D0(uint64_t a1)
{
  v3 = [*(a1 + 96) shape];
  sub_22C3813C8();
  v4 = sub_22C3D3108();
  v5 = sub_22C386D8C(v4);

  v6 = (v5 & 0xC000000000000001);
  sub_22C5F2370();
  sub_22C633A2C();
  if ((v5 & 0xC000000000000001) != 0)
  {
    sub_22C36EDE8();
  }

  else
  {
    v7 = *(v5 + 32);
  }

  sub_22C760BF0();
  v8 = sub_22C90A90C();

  if (v8 < 0)
  {
    __break(1u);
  }

  else if (v8)
  {
    v9 = MEMORY[0x277D84F90];
    do
    {
      v10 = [*(a1 + 96) objectAtIndexedSubscript_];
      [v10 floatValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_22C36D270();
        sub_22C59470C(v14, v15, v16, v9);
        v9 = v17;
      }

      sub_22C381788();
      if (v12)
      {
        sub_22C369AB0(v11);
        sub_22C377674();
        sub_22C59470C(v18, v19, v20, v21);
        v9 = v22;
      }

      sub_22C37FF70();
    }

    while (!v13);
  }
}

float sub_22C7606B4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 80) objectAtIndexedSubscript_];
  sub_22C90A85C();
  v4 = v3;

  return v4;
}

uint64_t sub_22C760708()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_jointResolverId;
  v2 = sub_22C90069C();
  sub_22C36985C();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_contextId, v2);
  if (*(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_stream + 24))
  {
    sub_22C36FF94((v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22JointResolverTelemetry_stream));
  }

  return v0;
}

uint64_t sub_22C7607A8()
{
  sub_22C760708();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JointResolverTelemetry(uint64_t a1)
{
  result = qword_281433320;
  if (!qword_281433320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C760854(uint64_t a1)
{
  result = sub_22C90069C();
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

void sub_22C7608F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = sub_22C5979E0();
  if (v4 < a3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  swift_arrayInitWithCopy();
  swift_unknownObjectRelease();

  sub_22C3E171C(v7, a3);
}

uint64_t sub_22C76098C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v14 = 0;
    return v14 | (((a4 >> 60) & 1) << 40);
  }

  v7 = a5;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_22C90AFCC();
  }

  result = sub_22C8A4C9C(v11, v12, a1, a2, a3, a4, v7);
  if (!v5)
  {
    v16 = BYTE4(result) & 1;
    v14 = result | ((BYTE4(result) & 1) << 32);
    return v14 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

unint64_t sub_22C760A9C()
{
  result = qword_2814356F0;
  if (!qword_2814356F0)
  {
    sub_22C9061CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814356F0);
  }

  return result;
}

uint64_t sub_22C760B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return swift_allocObject();
}

uint64_t sub_22C760B94(uint64_t a1)
{

  return sub_22C90A5EC();
}

void sub_22C760BAC()
{

  JUMPOUT(0x2318B8460);
}

unint64_t sub_22C760BD8()
{

  return sub_22C3D3108();
}

uint64_t sub_22C760BF0()
{
}

unint64_t sub_22C760C08(void (**a1)(uint64_t, uint64_t), uint64_t a2)
{
  v4 = sub_22C908C5C();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  sub_22C36BA58();
  v69 = v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA64();
  v68 = v14;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v74 = v15;
  v75 = v16;
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  sub_22C50B4C8();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA58();
  v19 = v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  v22 = v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA64();
  v25 = v24;
  v73 = sub_22C76256C();
  if (!v26)
  {
    sub_22C903FAC();
    (*(v6 + 16))(v10, a1, v4);
    v40 = sub_22C9063CC();
    v41 = sub_22C90AABC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = sub_22C383050();
      v76 = sub_22C37A180();
      *v42 = 136315394;
      *(v42 + 4) = sub_22C378678("getExactMatchScore(candidate:events:)");
      *(v42 + 12) = 2080;
      v43 = sub_22C908B9C();
      v45 = v44;
      (*(v6 + 8))(v10, v4);
      v46 = sub_22C36F9F4(v43, v45, &v76);

      *(v42 + 14) = v46;
      _os_log_impl(&dword_22C366000, v40, v41, "%s Cannot compute tokenDistance. candidateTitle is nil for candidate: %s", v42, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {

      (*(v6 + 8))(v10, v4);
    }

    sub_22C3828B0();
    v66 = v2;
    goto LABEL_16;
  }

  v27 = v26;
  v28 = sub_22C761498(a1, a2);
  if (!v29)
  {
    sub_22C903FAC();
    v47 = v6;
    (*(v6 + 16))(v69, a1, v4);

    v48 = sub_22C9063CC();
    v49 = sub_22C90AABC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v50 = 136315650;
      *(v50 + 4) = sub_22C378678("getExactMatchScore(candidate:events:)");
      *(v50 + 12) = 2080;
      v51 = sub_22C36F9F4(v73, v27, &v76);

      *(v50 + 14) = v51;
      *(v50 + 22) = 2080;
      sub_22C908B9C();
      v52 = sub_22C37F9E8();
      v53(v52, v4);
      v54 = sub_22C36F9F4(v69, v27, &v76);

      *(v50 + 24) = v54;
      _os_log_impl(&dword_22C366000, v48, v49, "%s Cannot compute tokenDistance.\ncandidateTitle: '%s',but queryString is nil for candidate: %s", v50, 0x20u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {

      (*(v47 + 8))(v69, v4);
    }

    sub_22C3828B0();
    v66 = v19;
LABEL_16:
    v65(v66, v74);
    v34 = 0;
    v39 = 1;
    return v34 | (v39 << 32);
  }

  v30 = v28;
  v31 = v29;
  v72 = sub_22C7632C4(v73, v27, v28, v29);
  if ((v72 & 0x100000000) != 0)
  {
    v70 = v30;
    sub_22C903FAC();
    v55 = v6;
    (*(v6 + 16))(v68, a1, v4);

    v56 = sub_22C9063CC();
    v57 = sub_22C90AABC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v58 = 136315906;
      *(v58 + 4) = sub_22C378678("getExactMatchScore(candidate:events:)");
      *(v58 + 12) = 2080;
      v59 = sub_22C36F9F4(v73, v27, &v76);

      *(v58 + 14) = v59;
      *(v58 + 22) = 2080;
      v60 = sub_22C36F9F4(v70, v31, &v76);

      *(v58 + 24) = v60;
      *(v58 + 32) = 2080;
      sub_22C908B9C();
      v61 = sub_22C37F9E8();
      v62(v61, v4);
      v63 = sub_22C36F9F4(v68, v68, &v76);

      *(v58 + 34) = v63;
      _os_log_impl(&dword_22C366000, v56, v57, "%s Cannot compute tokenDistance.\ncandidateTitle: '%s', queryString: '%s', but  exactMatchScore is nil for candidate: %s", v58, 0x2Au);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();

      sub_22C3828B0();
    }

    else
    {

      (*(v55 + 8))(v68, v4);
      sub_22C3828B0();
    }

    v64(v22, v74);
    v39 = 1;
    goto LABEL_20;
  }

  sub_22C903FAC();

  v32 = sub_22C9063CC();
  v33 = sub_22C90AABC();

  if (!os_log_type_enabled(v32, v33))
  {

    (*(v75 + 8))(v25, v74);
    v39 = 0;
LABEL_20:
    v34 = v72;
    return v34 | (v39 << 32);
  }

  v34 = v72;
  v35 = v30;
  v36 = swift_slowAlloc();
  v76 = swift_slowAlloc();
  *v36 = 136315906;
  *(v36 + 4) = sub_22C378678("getExactMatchScore(candidate:events:)");
  *(v36 + 12) = 2048;
  *(v36 + 14) = *&v72;
  *(v36 + 22) = 2080;
  v37 = sub_22C36F9F4(v35, v31, &v76);

  *(v36 + 24) = v37;
  *(v36 + 32) = 2080;
  v38 = sub_22C36F9F4(v73, v27, &v76);

  *(v36 + 34) = v38;
  _os_log_impl(&dword_22C366000, v32, v33, "%s exactMatchScore: %f for queryString: '%s', candidateTitle: '%s'", v36, 0x2Au);
  swift_arrayDestroy();
  sub_22C3699EC();
  sub_22C3699EC();

  (*(v75 + 8))(v25, v74);
  v39 = 0;
  return v34 | (v39 << 32);
}

char *sub_22C761498(void (**a1)(uint64_t, uint64_t), uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF740, &unk_22C923A40);
  v5 = sub_22C369914(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_22C908CEC();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  sub_22C76160C(a1, a2, v7);
  if (sub_22C370B74(v7, 1, v8) == 1)
  {
    sub_22C3770B0(v7, &qword_27D9BF740, &unk_22C923A40);
    return 0;
  }

  else
  {
    sub_22C37017C();
    v10();
    sub_22C761F14();
    sub_22C385630();
    v11 = sub_22C36A724();
    v12(v11);
  }

  return v7;
}

uint64_t sub_22C76160C@<X0>(void (**a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a2;
  v105 = a3;
  v120 = sub_22C908C5C();
  sub_22C369824();
  v115 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v114 = (v7 - v6);
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v112 = v8;
  v113 = v9;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v12 = v11 - v10;
  v118 = sub_22C9089DC();
  sub_22C369824();
  v106 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  v110 = sub_22C908CEC();
  sub_22C369824();
  v101 = v18;
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v102 = v21 - v20;
  v22 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  v23 = sub_22C369914(v22);
  MEMORY[0x28223BE20](v23);
  v108 = (v100 - v24);
  sub_22C36BA0C();
  v25 = sub_22C906ECC();
  sub_22C369824();
  v103 = v26;
  MEMORY[0x28223BE20](v27);
  sub_22C369838();
  v119 = v29 - v28;
  v30 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  v31 = sub_22C369914(v30);
  MEMORY[0x28223BE20](v31);
  v33 = v100 - v32;
  v34 = sub_22C901FAC();
  sub_22C369824();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  sub_22C369ABC();
  v117 = v38 - v39;
  sub_22C369930();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA58();
  v116 = v41;
  sub_22C369930();
  v43 = MEMORY[0x28223BE20](v42);
  MEMORY[0x28223BE20](v43);
  v45 = v100 - v44;
  v111 = a1;
  sub_22C908B8C();
  v46 = sub_22C901ECC();
  if (sub_22C370B74(v33, 1, v46) == 1)
  {
    v47 = &qword_27D9BF318;
    v48 = &qword_22C9225A0;
    v49 = v33;
LABEL_5:
    sub_22C3770B0(v49, v47, v48);
    sub_22C903FAC();
    v54 = v114;
    v55 = v115;
    v56 = v120;
    (*(v115 + 16))(v114, v111, v120);
    v57 = sub_22C9063CC();
    v58 = v12;
    v59 = sub_22C90AABC();
    if (sub_22C36FBB4(v59))
    {
      v60 = sub_22C383050();
      v61 = sub_22C37A180();
      v62 = v54;
      v63 = v113;
      v121[0] = v61;
      *v60 = 136315394;
      sub_22C36EE00();
      v65 = sub_22C36F9F4(0xD00000000000001ALL, v64, v121);
      sub_22C389260(v65);
      v66 = sub_22C908B9C();
      v67 = v56;
      v69 = v68;
      (*(v55 + 8))(v62, v67);
      v70 = sub_22C36F9F4(v66, v69, v121);

      *(v60 + 14) = v70;
      sub_22C376924(&dword_22C366000, v71, v59, "%s statementId or statementResult is nil for candidate: %s");
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C372A84();

      v63[1](v58, v112);
    }

    else
    {

      (*(v55 + 8))(v54, v56);
      v113[1](v58, v112);
    }

    v72 = v105;
    v73 = 1;
    v74 = v110;
    return sub_22C36C640(v72, v73, 1, v74);
  }

  MEMORY[0x2318AF390]();
  (*(*(v46 - 8) + 8))(v33, v46);
  v50 = sub_22C369D14();
  v51(v50);
  v52 = v104;
  v121[0] = v104;
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3AC13C();
  v53 = v108;
  sub_22C907EBC();
  if (sub_22C370B74(v53, 1, v25) == 1)
  {
    (*(v36 + 8))(v45, v34);
    v47 = &qword_27D9BC0A0;
    v48 = &unk_22C922F30;
    v49 = v53;
    goto LABEL_5;
  }

  v100[0] = v45;
  v115 = v34;
  v75 = *(v103 + 32);
  v100[1] = v25;
  v75(v119, v53, v25);
  v76 = *(v52 + 16);
  v77 = v110;
  v78 = v118;
  v79 = v102;
  v80 = v36;
  if (!v76)
  {
LABEL_16:
    v94 = sub_22C37FF88();
    v95(v94);
    (*(v80 + 8))(v100[0], v115);
    v72 = v105;
    v73 = 1;
    goto LABEL_18;
  }

  v81 = *(sub_22C908A0C() - 8);
  v82 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v83 = (v106 + 11);
  v84 = *MEMORY[0x277D1E730];
  v112 = v106 + 1;
  v111 = v106 + 12;
  v114 = (v101 + 32);
  v113 = (v80 + 8);
  v106 = (v101 + 8);
  v85 = *(v81 + 72);
  v86 = v52 + v82 + v85 * (v76 - 1);
  v120 = -v85;
  v108 = v83;
  v109 = v80;
  v107 = v84;
  while (1)
  {
    sub_22C9089EC();
    if ((*v83)(v17, v78) != v84)
    {
      (*v112)(v17, v78);
      goto LABEL_15;
    }

    (*v111)(v17, v78);
    v87 = v17;
    v110 = *v114;
    v110(v79, v17, v77);
    v88 = v116;
    sub_22C9068FC();
    v89 = v117;
    sub_22C906DFC();
    v90 = sub_22C901F6C();
    v91 = *v113;
    v92 = v89;
    v93 = v115;
    (*v113)(v92, v115);
    v91(v88, v93);
    if (v90)
    {
      break;
    }

    (*v106)(v79, v77);
    v78 = v118;
    v17 = v87;
    v83 = v108;
    v80 = v109;
    v84 = v107;
LABEL_15:
    v86 += v120;
    if (!--v76)
    {
      goto LABEL_16;
    }
  }

  v96 = sub_22C37FF88();
  v97(v96);
  v91(v100[0], v115);
  v98 = v105;
  v110(v105, v79, v77);
  v72 = v98;
  v73 = 0;
LABEL_18:
  v74 = v77;
  return sub_22C36C640(v72, v73, 1, v74);
}

uint64_t sub_22C761F14()
{
  sub_22C90665C();
  sub_22C369824();
  v74 = v2;
  v75 = v1;
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v73 = v4 - v3;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v76 = v6;
  v77 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  sub_22C50B4C8();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v72 = v12;
  sub_22C36BA0C();
  v13 = sub_22C90681C();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  sub_22C90682C();
  sub_22C369824();
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v26 = v25 - v24;
  sub_22C908CCC();
  v27 = sub_22C36DA14();
  v29 = v28(v27);
  if (v29 == *MEMORY[0x277D1DBF0])
  {
LABEL_2:
    v30 = sub_22C36DA14();
    v31(v30);
    return 0;
  }

  if (v29 == *MEMORY[0x277D1DC08])
  {
    v33 = sub_22C36DA14();
    v34(v33);
    v35 = v73;
    v36 = v74;
    v37 = v75;
    (*(v74 + 32))(v73, v26, v75);
    v32 = sub_22C9065EC();
    v39 = v38;
    if (v38)
    {
      sub_22C903FAC();

      v40 = sub_22C9063CC();
      v41 = sub_22C90AABC();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = sub_22C383050();
        v78 = sub_22C37A180();
        *v42 = 136315394;
        sub_22C36EE00();
        *(v42 + 4) = sub_22C377680(v43, v44);
        *(v42 + 12) = 2080;
        *(v42 + 14) = sub_22C36F9F4(v32, v39, &v78);
        _os_log_impl(&dword_22C366000, v40, v41, "%s Resolved .string querypayload to '%s'", v42, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();
      }

      (*(v76 + 8))(v0, v77);
    }

    (*(v36 + 8))(v35, v37);
  }

  else
  {
    if (v29 != *MEMORY[0x277D1DC10])
    {
      sub_22C903FAC();
      v62 = sub_22C9063CC();
      v63 = sub_22C90AABC();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v78 = v65;
        *v64 = 136315138;
        sub_22C36EE00();
        *(v64 + 4) = sub_22C377680(v66, v67);
        _os_log_impl(&dword_22C366000, v62, v63, "%s Unsupported query payload type, returning nothing.", v64, 0xCu);
        sub_22C36FF94(v65);
        sub_22C3699EC();
        sub_22C372A84();
      }

      (*(v76 + 8))(v9, v77);
      goto LABEL_2;
    }

    v45 = sub_22C36DA14();
    v46(v45);
    v47 = v13;
    (*(v15 + 32))(v22, v26, v13);
    v48 = v72;
    sub_22C903FAC();
    (*(v15 + 16))(v19, v22, v47);
    v49 = sub_22C9063CC();
    v50 = sub_22C90AABC();
    if (sub_22C36FBB4(v50))
    {
      v51 = sub_22C383050();
      v75 = sub_22C37A180();
      v78 = v75;
      *v51 = 136315394;
      sub_22C36EE00();
      v54 = sub_22C377680(v52, v53);
      sub_22C389260(v54);
      v55 = sub_22C9067EC();
      v57 = v56;
      v58 = sub_22C374F90();
      v59(v58);
      v60 = sub_22C36F9F4(v55, v57, &v78);

      *(v51 + 14) = v60;
      sub_22C376924(&dword_22C366000, v61, v50, "%s Resolved .string querypayload to '%s'");
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C372A84();
    }

    else
    {

      v68 = sub_22C374F90();
      v69(v68);
    }

    (*(v76 + 8))(v48, v77);
    v32 = sub_22C9067EC();
    v19(v22, v47);
  }

  return v32;
}

uint64_t sub_22C76256C()
{
  v167 = sub_22C9092DC();
  sub_22C369824();
  v160 = v1;
  MEMORY[0x28223BE20](v2);
  sub_22C369ABC();
  v164 = v3 - v4;
  sub_22C369930();
  MEMORY[0x28223BE20](v5);
  sub_22C36BA64();
  v166 = v6;
  sub_22C36BA0C();
  v7 = sub_22C90931C();
  sub_22C369824();
  v165 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v149 - v14;
  sub_22C90910C();
  sub_22C369824();
  v153 = v16;
  v154 = v17;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v157 = v19 - v18;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v169 = v20;
  v170 = v21;
  MEMORY[0x28223BE20](v20);
  sub_22C369ABC();
  v151 = v22 - v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA58();
  v159 = v25;
  sub_22C369930();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA58();
  v150 = v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  v155 = v29;
  v30 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v31 = sub_22C369914(v30);
  MEMORY[0x28223BE20](v31);
  sub_22C369ABC();
  sub_22C50B4C8();
  MEMORY[0x28223BE20](v32);
  v34 = &v149 - v33;
  v168 = sub_22C90993C();
  sub_22C369824();
  v156 = v35;
  MEMORY[0x28223BE20](v36);
  sub_22C369ABC();
  v149 = v37 - v38;
  sub_22C369930();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA58();
  v152 = v40;
  sub_22C369930();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v149 - v43;
  MEMORY[0x28223BE20](v42);
  sub_22C36BA64();
  v158 = v45;
  sub_22C36BA0C();
  sub_22C90919C();
  sub_22C369824();
  v162 = v47;
  v163 = v46;
  MEMORY[0x28223BE20](v46);
  sub_22C369838();
  v161 = v49 - v48;
  sub_22C36BA0C();
  v50 = sub_22C9093BC();
  sub_22C369824();
  v52 = v51;
  MEMORY[0x28223BE20](v53);
  sub_22C369838();
  v56 = (v55 - v54);
  sub_22C90774C();
  v57 = (*(v52 + 88))(v56, v50);
  if (v57 == *MEMORY[0x277D72A58])
  {
    v58 = sub_22C3709F4();
    v59(v58);
    v60 = *v56;
    v61 = swift_projectBox();
    v62 = v165;
    v63 = *(v165 + 16);
    v63(v15, v61, v7);
    v63(v12, v15, v7);
    v64 = sub_22C369D14();
    if (v65(v64) == *MEMORY[0x277D729B0])
    {
      v163 = v60;
      v168 = v15;
      v66 = sub_22C369D14();
      v67(v66);
      v68 = v160;
      v69 = v166;
      v70 = v167;
      v71 = sub_22C36DA14();
      v72(v71);
      v73 = v159;
      sub_22C903FAC();
      v74 = v164;
      (*(v68 + 16))(v164, v69, v70);
      v75 = sub_22C9063CC();
      v76 = sub_22C90AABC();
      if (sub_22C36FBB4(v76))
      {
        v77 = sub_22C383050();
        v162 = sub_22C37A180();
        v171[0] = v162;
        *v77 = 136315394;
        v78 = sub_22C7637A8("extractCandidateTitle(from:)");
        sub_22C389260(v78);
        LODWORD(v161) = v76;
        v79 = sub_22C9092CC();
        v80 = [v79 displayName];

        v81 = sub_22C90A11C();
        v82 = v62;
        v84 = v83;

        v85 = *(v68 + 8);
        v85(v164, v167);
        v86 = sub_22C36F9F4(v81, v84, v171);
        v62 = v82;

        *(v77 + 14) = v86;
        sub_22C376924(&dword_22C366000, v87, v161, "%s Resolved .person title to '%s'");
        swift_arrayDestroy();
        v70 = v167;
        sub_22C3699EC();
        sub_22C372A84();
      }

      else
      {

        v85 = *(v68 + 8);
        v85(v74, v70);
      }

      (*(v170 + 8))(v73, v169);
      v105 = v166;
      v106 = v166;
      v107 = sub_22C9092CC();
      v108 = [v107 displayName];

      sub_22C90A11C();
      sub_22C385630();

      v85(v105, v70);
      (*(v62 + 8))(v168, v7);
LABEL_27:

      return v106;
    }

    v95 = *(v62 + 8);
    v95(v15, v7);
    v96 = sub_22C369D14();
    (v95)(v96);
  }

  else if (v57 == *MEMORY[0x277D72A38])
  {
    v88 = sub_22C3709F4();
    v89(v88);
    v90 = swift_projectBox();
    v91 = v161;
    v92 = v162;
    v93 = v163;
    (*(v162 + 16))(v161, v90, v163);
    sub_22C90915C();
    v94 = v168;
    if (sub_22C370B74(v34, 1, v168) != 1)
    {
      v109 = v156;
      v110 = v158;
      (*(v156 + 32))(v158, v34, v94);
      v111 = v155;
      sub_22C903FAC();
      (*(v109 + 16))(v44, v110, v94);
      v112 = sub_22C9063CC();
      v113 = sub_22C90AABC();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = sub_22C383050();
        v167 = sub_22C37A180();
        v171[0] = v167;
        *v114 = 136315394;
        *(v114 + 4) = sub_22C7637A8("extractCandidateTitle(from:)");
        *(v114 + 12) = 2080;
        v115 = sub_22C9098BC();
        v117 = v116;
        v118 = sub_22C372454();
        v12(v118, v168);
        v119 = sub_22C36F9F4(v115, v117, v171);
        v94 = v168;

        *(v114 + 14) = v119;
        sub_22C7637E0(&dword_22C366000, v120, v121, "%s Resolved .entity title to '%s'");
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v170 + 8))(v155, v169);
      }

      else
      {

        v144 = sub_22C372454();
        v12(v144, v94);
        (*(v170 + 8))(v111, v169);
      }

      v145 = v158;
      v106 = v158;
      sub_22C9098BC();
      sub_22C385630();
      v12(v145, v94);
      (*(v162 + 8))(v161, v163);
      goto LABEL_27;
    }

    (*(v92 + 8))(v91, v93);
    sub_22C3770B0(v34, &qword_27D9BC390, &qword_22C912AC0);
  }

  else
  {
    if (v57 != *MEMORY[0x277D729F8])
    {
      v122 = v151;
      sub_22C903FAC();
      v123 = sub_22C9063CC();
      v124 = sub_22C90AABC();
      if (sub_22C36FBB4(v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v171[0] = v126;
        *v125 = 136315138;
        *(v125 + 4) = sub_22C7637A8("extractCandidateTitle(from:)");
        _os_log_impl(&dword_22C366000, v123, v124, "%s Unsupoported candidate value type, returning nothing.", v125, 0xCu);
        sub_22C36FF94(v126);
        sub_22C372A84();
        sub_22C3699EC();
      }

      (*(v170 + 8))(v122, v169);
      (*(v52 + 8))(v56, v50);
      return 0;
    }

    v97 = sub_22C3709F4();
    v98(v97);
    v99 = *v56;
    v100 = swift_projectBox();
    v101 = v153;
    v102 = v154;
    v103 = v157;
    (*(v154 + 16))(v157, v100, v153);
    sub_22C9090DC();
    v104 = v168;
    if (sub_22C370B74(v0, 1, v168) != 1)
    {
      v167 = v99;
      v127 = v152;
      v128 = v0;
      v129 = v156;
      (*(v156 + 32))(v152, v128, v104);
      v130 = v150;
      sub_22C903FAC();
      v131 = v149;
      (*(v129 + 16))(v149, v127, v104);
      v132 = sub_22C9063CC();
      v133 = sub_22C90AABC();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = sub_22C383050();
        v171[0] = sub_22C37A180();
        *v134 = 136315394;
        *(v134 + 4) = sub_22C7637A8("extractCandidateTitle(from:)");
        *(v134 + 12) = 2080;
        v135 = sub_22C9098BC();
        v136 = v129;
        v138 = v137;
        v139 = v131;
        v140 = *(v136 + 8);
        v140(v139, v168);
        v141 = sub_22C36F9F4(v135, v138, v171);

        *(v134 + 14) = v141;
        sub_22C7637E0(&dword_22C366000, v142, v143, "%s Resolved .entityIdentifier title to '%s'");
        swift_arrayDestroy();
        v102 = v154;
        sub_22C3699EC();
        v104 = v168;
        sub_22C3699EC();
      }

      else
      {

        v146 = v131;
        v140 = *(v129 + 8);
        v140(v146, v104);
      }

      (*(v170 + 8))(v130, v169);
      v147 = v152;
      v106 = v152;
      sub_22C9098BC();
      sub_22C385630();
      v140(v147, v104);
      (*(v102 + 8))(v157, v101);
      goto LABEL_27;
    }

    (*(v102 + 8))(v103, v101);
    sub_22C3770B0(v0, &qword_27D9BC390, &qword_22C912AC0);
  }

  return 0;
}

uint64_t sub_22C7632C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22C763378(a1, a2);
  v8 = v7;
  if (v6 == sub_22C763378(a3, a4) && v8 == v9)
  {

    return 1065353216;
  }

  else
  {
    sub_22C36A724();
    v11 = sub_22C90B4FC();

    v12 = 1065353216;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return v12;
}

unint64_t sub_22C763378(uint64_t a1, uint64_t a2)
{
  sub_22C90A1BC();
  while (1)
  {
    sub_22C90A3AC();
    if (!v2)
    {

      return 0;
    }

    if ((sub_22C909FAC() & 1) == 0)
    {
      sub_22C36A724();
      if ((sub_22C909FDC() & 1) == 0)
      {
        sub_22C36A724();
        if ((sub_22C90A00C() & 1) == 0)
        {
          sub_22C36A724();
          if ((sub_22C909F9C() & 1) == 0)
          {
            break;
          }
        }
      }
    }

LABEL_12:
  }

  v3 = sub_22C36A724();
  result = sub_22C763580(v3, v4);
  if ((result & 0x100000000) == 0)
  {
    if ((result - 14) <= 0xFFFFFFFB && (result - 8232) >= 2 && result != 133)
    {
      v7 = sub_22C36A724();
      MEMORY[0x2318B7840](v7);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_22C763484(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v12[2] = v3;
      v12[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v12[0] = a2;
        v12[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v12 + v5) & 0xC0) == 0x80)
        {
          do
          {
            sub_22C37F500();
          }

          while (v9);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = result >> 16;
          v6 = sub_22C90AFCC();
          v5 = v11;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            sub_22C37F500();
          }

          while (v9);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_22C763580(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_22C37017C();
    sub_22C7636EC();
    if ((a2 & 0x1000000000000000) != 0)
    {
      sub_22C37017C();
      v9 = sub_22C90AF4C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v9 = *(v19 + v6);
        if (*(v19 + v6) < 0)
        {
          sub_22C38AAB0();
          switch(v12)
          {
            case 1:
LABEL_14:
              v9 = v10[1] & 0x3F | ((v9 & 0x1F) << 6);
              break;
            case 2:
LABEL_15:
              v13 = v10[1];
              v14 = v10[2];
              v15 = ((v9 & 0xF) << 12) | ((v13 & 0x3F) << 6);
              goto LABEL_17;
            case 3:
LABEL_16:
              v16 = v10[1];
              v17 = v10[2];
              v14 = v10[3];
              v15 = ((v9 & 0xF) << 18) | ((v16 & 0x3F) << 12) | ((v17 & 0x3F) << 6);
LABEL_17:
              v9 = v15 & 0xFFFFFFC0 | v14 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_22C90AFCC();
        }

        v8 = *(v7 + v6);
        v9 = *(v7 + v6);
        if (v8 < 0)
        {
          sub_22C38AAB0();
          switch(v11)
          {
            case 1:
              goto LABEL_14;
            case 2:
              goto LABEL_15;
            case 3:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v19[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

void sub_22C7636EC()
{
  sub_22C379B08();
  if (v0)
  {
    sub_22C7637CC();
    if (!v1)
    {
      sub_22C370398();
      if (v3 > v2 >> 16)
      {
        return;
      }

      __break(1u);
    }
  }

  sub_22C37017C();
  sub_22C763760();
  if ((v4 & 1) == 0)
  {
    sub_22C37017C();
    sub_22C763484(v5, v6, v7);
  }
}

void sub_22C763760()
{
  sub_22C379B08();
  sub_22C7637CC();
  if (v0)
  {
    sub_22C37017C();
    sub_22C8A3F0C(v3, v4, v5);
  }

  sub_22C370398();
  if (v2 <= v1 >> 16)
  {
    __break(1u);
  }
}

unint64_t sub_22C7637A8@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD00000000000001CLL, (a1 - 32) | 0x8000000000000000, (v1 - 96));
}

void sub_22C7637E0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_22C763800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  v60 = a6;
  v61 = a4;
  sub_22C9063DC();
  sub_22C369824();
  v62 = v17;
  v63 = v16;
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  sub_22C37A1A4();
  MEMORY[0x28223BE20](v22);
  sub_22C37F9FC();
  MEMORY[0x28223BE20](v23);
  v25 = &v59 - v24;
  v26 = sub_22C764D2C(a3);
  if (v26 != 6)
  {
    v28 = v26;
    sub_22C903FAC();
    v30 = sub_22C9063CC();
    v37 = sub_22C90AACC();
    if (!sub_22C7663C4(v37))
    {
LABEL_12:
      v20 = v25;
      goto LABEL_13;
    }

    v38 = sub_22C36FB44();
    *v38 = 134217984;
    *(v38 + 4) = v28;
    sub_22C38BFF4();
    _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
LABEL_11:
    sub_22C3699EC();
    goto LABEL_12;
  }

  v27 = sub_22C374168(v10 + 8, v10[11]);
  v28 = sub_22C646AE4(a1, a2, *v27);
  if (v28 == 6)
  {
    swift_beginAccess();
    v28 = sub_22C605BA0(a1, a2, v10[3]);
    swift_endAccess();
    if (v28 == 6)
    {
      if (a7 && a5 && (v29 = sub_22C765328(v60, a7, v61, a5), v29 != 6))
      {
        v28 = v29;
        sub_22C903FAC();
        v30 = sub_22C9063CC();
        v52 = sub_22C90AACC();
        if (!sub_22C7663C4(v52))
        {
          v20 = v8;
          goto LABEL_13;
        }

        v53 = sub_22C36FB44();
        sub_22C37FFA0(v53, 3.852e-34);
        sub_22C38BFF4();
        _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
        v25 = v8;
      }

      else
      {
        sub_22C903FAC();
        v30 = sub_22C9063CC();
        v31 = sub_22C90AACC();
        v28 = 2;
        if (!sub_22C7663C4(v31))
        {
LABEL_13:

          (*(v62 + 8))(v20, v63);
          return v28;
        }

        *sub_22C36D240() = 0;
        sub_22C38BFF4();
        _os_log_impl(v32, v33, v34, v35, v36, 2u);
        v25 = v20;
      }
    }

    else
    {
      sub_22C903FAC();
      v30 = sub_22C9063CC();
      v45 = sub_22C90AACC();
      if (!sub_22C7663C4(v45))
      {
        v20 = v9;
        goto LABEL_13;
      }

      v46 = sub_22C36FB44();
      sub_22C37FFA0(v46, 3.852e-34);
      sub_22C38BFF4();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      v25 = v9;
    }

    goto LABEL_11;
  }

  return v28;
}

uint64_t sub_22C763B48(uint64_t a1)
{
  v34 = sub_22C90637C();
  sub_22C369824();
  v32 = v1;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v5 = v4 - v3;
  v6 = sub_22C90634C();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C90636C();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v19 = v18 - v17;
  sub_22C90365C();
  v20 = sub_22C90635C();
  sub_22C90638C();
  v33 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v30 = v15;
    v31 = v6;

    sub_22C9063BC();

    if ((*(v32 + 88))(v5, v34) == *MEMORY[0x277D85B00])
    {
      v21 = 0;
      v22 = 0;
      v35 = "[Error] Interval already ended";
    }

    else
    {
      (*(v32 + 8))(v5, v34);
      v35 = "%s";
      v22 = 2;
      v21 = 1;
    }

    v24 = sub_22C36FB44();
    v25 = swift_slowAlloc();
    v36 = v25;
    *v24 = v22;
    *(v24 + 1) = v21;
    *(v24 + 2) = 2080;
    sub_22C90366C();
    v26 = sub_22C90AF7C();
    v28 = sub_22C36F9F4(v26, v27, &v36);

    *(v24 + 4) = v28;
    v29 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v20, v33, v29, "JointResolverTrialConfigProvider.init", v35, v24, 0xCu);
    sub_22C36FF94(v25);
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v8 + 8))(v12, v31);
    return (*(v30 + 8))(v19, v13);
  }

  else
  {

    (*(v8 + 8))(v12, v6);
    return (*(v15 + 8))(v19, v13);
  }
}

uint64_t sub_22C763E98()
{
  v3 = sub_22C90046C();
  sub_22C369824();
  v175 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v170 = v6 - v7;
  sub_22C369930();
  MEMORY[0x28223BE20](v8);
  v174 = (v162 - v9);
  v176 = sub_22C9063DC();
  sub_22C369824();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v13);
  sub_22C37F9FC();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v162 - v16;
  MEMORY[0x28223BE20](v15);
  sub_22C37A1A4();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA58();
  v173 = v19;
  sub_22C369930();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v162 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v162 - v25;
  MEMORY[0x28223BE20](v24);
  v29 = v162 - v28;
  v30 = v0[2];
  if (!v30)
  {
    sub_22C903FAC();
    v74 = sub_22C9063CC();
    v75 = sub_22C90AADC();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = sub_22C36D240();
      *v76 = 0;
      _os_log_impl(&dword_22C366000, v74, v75, "JointResolverTrialConfigProvider no trialManager instance provided", v76, 2u);
      sub_22C3699EC();
    }

    return (*(v11 + 8))(v2, v176);
  }

  v169 = v3;
  v172 = v27;
  v177 = v0;
  swift_beginAccess();

  v31 = sub_22C633A20();
  swift_endAccess();
  if (v31)
  {
    [v31 doubleValue];
    v33 = v32;

    v177[5] = v33;
    sub_22C903FAC();

    v34 = sub_22C9063CC();
    v35 = sub_22C90AABC();

    if (os_log_type_enabled(v34, v35))
    {
      sub_22C36FB44();
      sub_22C7663E0();
      *v36 = 134217984;
      *(v36 + 4) = v177[5];
      sub_22C5CA530();
      _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      sub_22C37869C();
    }

    sub_22C37F518();
    v42(v29, v176);
  }

  sub_22C3738DC();
  sub_22C387524();
  v43 = sub_22C633A20();
  swift_endAccess();
  v44 = v176;
  if (v43)
  {
    v171 = v1;
    [v43 doubleValue];
    v46 = v45;

    v177[7] = v46;
    sub_22C903FAC();

    v47 = sub_22C9063CC();
    v48 = sub_22C90AABC();

    if (os_log_type_enabled(v47, v48))
    {
      sub_22C36FB44();
      sub_22C7663E0();
      *v49 = 134217984;
      *(v49 + 4) = v177[7];
      sub_22C5CA530();
      _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
      sub_22C37869C();
    }

    sub_22C37F518();
    v55(v26, v44);
    v1 = v171;
  }

  sub_22C3738DC();
  sub_22C387524();
  v56 = sub_22C633A20();
  swift_endAccess();
  if (v56)
  {
    [v56 doubleValue];
    v58 = v57;

    v177[6] = v58;
    sub_22C903FAC();

    v59 = sub_22C9063CC();
    v60 = sub_22C90AABC();

    if (os_log_type_enabled(v59, v60))
    {
      sub_22C36FB44();
      sub_22C7663E0();
      *v61 = 134217984;
      *(v61 + 4) = v177[6];
      sub_22C5CA530();
      _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
      sub_22C37869C();
    }

    sub_22C37F518();
    v67(v23, v44);
  }

  sub_22C3738DC();
  v68 = sub_22C633A20();
  swift_endAccess();
  if (!v68)
  {
    sub_22C903FAC();
    v78 = sub_22C9063CC();
    v79 = sub_22C90AADC();
    if (os_log_type_enabled(v78, v79))
    {
      *sub_22C36D240() = 0;
      sub_22C5CA530();
      _os_log_impl(v80, v81, v82, v83, v84, 2u);
      sub_22C3699EC();
    }

    else
    {
    }

    v93 = *(v11 + 8);
    v94 = v1;
    return v93(v94, v44);
  }

  sub_22C3738DC();
  sub_22C387524();
  v69 = sub_22C633A20();
  swift_endAccess();
  if (!v69)
  {
    v85 = v173;
    sub_22C903FAC();
    v86 = sub_22C9063CC();
    v87 = sub_22C90AADC();
    if (os_log_type_enabled(v86, v87))
    {
      *sub_22C36D240() = 0;
      sub_22C5CA530();
      _os_log_impl(v88, v89, v90, v91, v92, 2u);
      sub_22C3699EC();
    }

    else
    {
    }

LABEL_37:
    v93 = *(v11 + 8);
    v94 = v85;
    return v93(v94, v44);
  }

  v70 = [v68 fileValue];
  if (v70)
  {
    v167 = v30;
    sub_22C73A88C(v70);
    v71 = v175;
    if (v72)
    {
      sub_22C90038C();

      v73 = sub_22C9004AC();
      v96 = v95;
      v174 = *(v71 + 8);
      v175 = v71 + 8;
      v97 = v73;
      v98 = sub_22C36DA48();
      v99(v98);
      v100 = sub_22C8FFECC();
      swift_allocObject();
      sub_22C8FFEBC();
      sub_22C765C00();
      sub_22C8FFEAC();
      v168 = 0;
      v162[0] = v100;
      v162[1] = v97;
      v162[2] = v96;
      v165 = v68;
      v166 = v69;
      v163 = v17;
      v164 = v11;

      v171 = *(v179 + 16);
      v120 = 0;

      v121 = v173 + 48;
      v122 = v177;
      while (1)
      {
        v123 = v174;
        if (v171 == v120)
        {
          break;
        }

        if (v120 >= *(v173 + 16))
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
          goto LABEL_71;
        }

        v124 = *(v121 - 16);
        v125 = *(v121 - 8);
        swift_beginAccess();

        swift_isUniquelyReferenced_nonNull_native();
        v178 = v122[3];
        v126 = v178;
        v122[3] = 0x8000000000000000;
        sub_22C36E2BC(v124, v125);
        if (__OFADD__(*(v126 + 16), (v127 & 1) == 0))
        {
          goto LABEL_66;
        }

        v128 = v127;
        sub_22C3A5908(&qword_27D9BFD80, &qword_22C9255A0);
        if (sub_22C90B15C())
        {
          sub_22C36E2BC(v124, v125);
          if ((v128 & 1) != (v129 & 1))
          {
            goto LABEL_75;
          }
        }

        v130 = v178;
        if (v128)
        {
          sub_22C37769C();
        }

        else
        {
          sub_22C372CFC();
          *v131 = v124;
          v131[1] = v125;
          sub_22C37769C();
          v132 = *(v130 + 16);
          v133 = __OFADD__(v132, 1);
          v134 = v132 + 1;
          if (v133)
          {
            goto LABEL_67;
          }

          *(v130 + 16) = v134;
        }

        v122 = v177;
        v177[3] = v130;
        swift_endAccess();

        v121 += 24;
        ++v120;
        v44 = v176;
      }

      v135 = v166;
      v136 = [v166 fileValue];
      if (!v136)
      {
        goto LABEL_73;
      }

      sub_22C73A88C(v136);
      v11 = v164;
      v137 = v165;
      v85 = v163;
      if (v138)
      {

        sub_22C90038C();

        v139 = v168;
        sub_22C9004AC();
        if (v139)
        {
          v168 = v139;
          v141 = sub_22C36DA48();
          v123(v141);
          v142 = sub_22C36C2B8();
          sub_22C38B120(v142, v143);

          sub_22C903FAC();
          v101 = v168;
          v102 = v168;
          v103 = sub_22C9063CC();
          v104 = sub_22C90AADC();

          if (os_log_type_enabled(v103, v104))
          {
            v105 = sub_22C36FB44();
            v106 = swift_slowAlloc();
            *v105 = 138412290;
            v107 = v101;
            v108 = _swift_stdlib_bridgeErrorToNSError();
            *(v105 + 4) = v108;
            *v106 = v108;
            _os_log_impl(&dword_22C366000, v103, v104, "JointResolverTrialConfigProvider error %@", v105, 0xCu);
            sub_22C5AB9D0(v106);
            sub_22C3699EC();
            sub_22C3699EC();
          }

          else
          {
          }

          sub_22C37F518();
          v109(v172, v44);
        }

        else
        {
          v144 = v140;
          v145 = sub_22C36DA48();
          v147 = v146;
          v123(v145);
          swift_allocObject();
          sub_22C8FFEBC();
          sub_22C765C54();
          sub_22C8FFEAC();
          v168 = 0;
          v172 = v147;
          v173 = v144;

          v174 = *(v179 + 16);
          v175 = v179;
          v148 = v179 + 48;
          v149 = v177;
          while (v174 != v139)
          {
            if (v139 >= *(v175 + 16))
            {
              goto LABEL_68;
            }

            v150 = *(v148 - 16);
            v151 = *(v148 - 8);
            swift_beginAccess();

            swift_isUniquelyReferenced_nonNull_native();
            v178 = v149[4];
            v152 = v178;
            v149[4] = 0x8000000000000000;
            sub_22C36E2BC(v150, v151);
            if (__OFADD__(*(v152 + 16), (v153 & 1) == 0))
            {
              goto LABEL_69;
            }

            v154 = v153;
            sub_22C3A5908(&qword_27D9BFD80, &qword_22C9255A0);
            if (sub_22C90B15C())
            {
              sub_22C36E2BC(v150, v151);
              if ((v154 & 1) != (v155 & 1))
              {
                goto LABEL_75;
              }
            }

            v156 = v178;
            if (v154)
            {
              sub_22C37769C();
            }

            else
            {
              sub_22C372CFC();
              *v157 = v150;
              v157[1] = v151;
              sub_22C37769C();
              v158 = *(v156 + 16);
              v133 = __OFADD__(v158, 1);
              v159 = v158 + 1;
              if (v133)
              {
                goto LABEL_70;
              }

              *(v156 + 16) = v159;
            }

            v44 = v176;
            v149 = v177;
            v137 = v165;
            v135 = v166;
            v177[4] = v156;
            swift_endAccess();

            v148 += 24;
            ++v139;
          }

          sub_22C38B120(v172, v173);
          v160 = sub_22C36C2B8();
          sub_22C38B120(v160, v161);

          v11 = v164;
          v85 = v163;
        }

        sub_22C903FAC();

        v110 = sub_22C9063CC();
        v111 = sub_22C90AABC();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = sub_22C36FB44();
          v113 = swift_slowAlloc();
          v178 = v113;
          *v112 = 136315138;
          swift_beginAccess();

          v114 = v11;
          v115 = v44;
          v116 = sub_22C909EDC();
          v118 = v117;

          v119 = sub_22C36F9F4(v116, v118, &v178);

          *(v112 + 4) = v119;
          _os_log_impl(&dword_22C366000, v110, v111, "JointResolverTrialConfigProvider toolRiskMap %s", v112, 0xCu);
          sub_22C36FF94(v113);
          sub_22C3699EC();
          sub_22C3699EC();

          return (*(v114 + 8))(v85, v115);
        }

        goto LABEL_37;
      }

      goto LABEL_74;
    }
  }

  else
  {
LABEL_71:
    __break(1u);
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C764D2C(uint64_t a1)
{
  v74 = sub_22C90960C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v61 = v5 - v6;
  sub_22C369930();
  MEMORY[0x28223BE20](v7);
  sub_22C36BA58();
  v66 = v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA58();
  v65 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  v73 = &v58 - v12;
  v13 = sub_22C908D6C();
  sub_22C369824();
  MEMORY[0x28223BE20](v14);
  sub_22C369ABC();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  sub_22C36BA58();
  v58 = v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  v23 = &v58 - v21;
  v24 = *(a1 + 16);
  v67 = v3;
  v59 = v22;
  v60 = a1;
  if (v24)
  {
    v25 = *(v22 + 16);
    v26 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v77 = *(v22 + 72);
    v27 = (v22 + 32);
    v28 = (v22 + 88);
    v76 = *MEMORY[0x277D72128];
    v70 = (v22 + 96);
    v71 = (v22 + 8);
    v69 = *MEMORY[0x277D72DE0];
    v68 = (v3 + 32);
    v75 = MEMORY[0x277D84F90];
    v63 = v22 + 16;
    v64 = &v58 - v21;
    v72 = v25;
    v62 = (v22 + 32);
    do
    {
      v25(v23, v26, v13);
      (*v27)(v17, v23, v13);
      v29 = (*v28)(v17, v13);
      if (v29 == v76)
      {
        (*v70)(v17, v13);
        v30 = sub_22C9095DC();
        v31 = *(v30 - 8);
        v32 = (*(v31 + 88))(v17, v30);
        if (v32 == v69)
        {
          (*(v31 + 96))(v17, v30);
          v33 = *v68;
          v34 = v66;
          v35 = v74;
          (*v68)(v66, v17, v74);
          v36 = v65;
          v33(v65, v34, v35);
          v33(v73, v36, v35);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v37 = v75;
          }

          else
          {
            sub_22C594590();
            v37 = v40;
          }

          v38 = *(v37 + 16);
          v23 = v64;
          v27 = v62;
          if (v38 >= *(v37 + 24) >> 1)
          {
            sub_22C594590();
            v37 = v41;
          }

          *(v37 + 16) = v38 + 1;
          v39 = (*(v67 + 80) + 32) & ~*(v67 + 80);
          v75 = v37;
          v33(v37 + v39 + *(v67 + 72) * v38, v73, v74);
        }

        else
        {
          (*(v31 + 8))(v17, v30);
        }

        v25 = v72;
      }

      else
      {
        (*v71)(v17, v13);
      }

      v26 += v77;
      --v24;
    }

    while (v24);
  }

  else
  {
    v75 = MEMORY[0x277D84F90];
  }

  v43 = v58;
  v42 = v59;
  v44 = (*(v59 + 104))(v58, *MEMORY[0x277D72130], v13);
  MEMORY[0x28223BE20](v44);
  sub_22C371C90();
  v46 = sub_22C5EC62C(sub_22C50AFAC, v45, v60);
  (*(v42 + 8))(v43, v13);
  if (v46)
  {
    v47 = 1;
    v48 = v74;
    v49 = v75;
    v50 = v67;
    v51 = v61;
  }

  else
  {
    v51 = v61;
    v52 = sub_22C9095EC();
    MEMORY[0x28223BE20](v52);
    sub_22C371C90();
    v49 = v75;
    v47 = sub_22C5EC65C(sub_22C765BE0, v53, v75);
    v50 = v67;
    v48 = v74;
    (*(v67 + 8))(v51, v74);
  }

  v54 = sub_22C9095FC();
  MEMORY[0x28223BE20](v54);
  sub_22C371C90();
  v56 = sub_22C5EC65C(sub_22C7663A8, v55, v49);

  (*(v50 + 8))(v51, v48);
  if (v47 || v56)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_22C765328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x2318B7850](46, 0xE100000000000000);
  MEMORY[0x2318B7850](a3, a4);
  swift_beginAccess();
  v7 = sub_22C605BA0(a1, a2, *(v4 + 32));
  swift_endAccess();

  return v7;
}

uint64_t sub_22C7653CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73616D65686373 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void *sub_22C76545C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = sub_22C3A5908(a2, a3);
  sub_22C369824();
  v17 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  v13 = sub_22C374168(a1, a1[3]);
  a4();
  v14 = v13;
  sub_22C90B6BC();
  if (v5)
  {
    sub_22C36FF94(a1);
  }

  else
  {
    sub_22C3A5908(&qword_27D9BFDA0, &qword_22C925640);
    sub_22C765D14();
    sub_22C90B32C();
    (*(v17 + 8))(v12, v8);
    v14 = v18;
    sub_22C36FF94(a1);
  }

  return v14;
}

uint64_t sub_22C7655E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576654C6B736972 && a2 == 0xE90000000000006CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C7656AC(char a1)
{
  if (a1)
  {
    return 0x6576654C6B736972;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_22C7656DC(void *a1)
{
  sub_22C3A5908(&qword_27D9BFDF8, &qword_22C9258C8);
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  v4 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C766118();
  sub_22C90B6BC();
  if (!v1)
  {
    v4 = sub_22C90B2DC();
    sub_22C76616C();
    sub_22C90B32C();
    v6 = sub_22C389270();
    v7(v6);
  }

  sub_22C36FF94(a1);
  return v4;
}

uint64_t sub_22C7658AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C7653CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C7658D8(uint64_t a1)
{
  v2 = sub_22C765DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C765914(uint64_t a1)
{
  v2 = sub_22C765DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_22C765950@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_22C76545C(a1, &qword_27D9BFDB8, &qword_22C925648, sub_22C765DEC, &type metadata for JointResolverTrialConfigProvider.SchemaRiskData.CodingKeys);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C7659A8(uint64_t a1)
{
  v2 = sub_22C765CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C7659E4(uint64_t a1)
{
  v2 = sub_22C765CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_22C765A20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_22C76545C(a1, &qword_27D9BFD90, &qword_22C925638, sub_22C765CC0, &type metadata for JointResolverTrialConfigProvider.ToolRiskData.CodingKeys);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C765A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C7655E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C765AA8(uint64_t a1)
{
  v2 = sub_22C766118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C765AE4(uint64_t a1)
{
  v2 = sub_22C766118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C765B20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22C7656DC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_22C765B50()
{

  sub_22C36FF94((v0 + 64));
  return v0;
}

uint64_t sub_22C765B88()
{
  sub_22C765B50();

  return swift_deallocClassInstance();
}

unint64_t sub_22C765C00()
{
  result = qword_27D9BFD78;
  if (!qword_27D9BFD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFD78);
  }

  return result;
}

unint64_t sub_22C765C54()
{
  result = qword_27D9BFD88;
  if (!qword_27D9BFD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFD88);
  }

  return result;
}

unint64_t sub_22C765CC0()
{
  result = qword_27D9BFD98;
  if (!qword_27D9BFD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFD98);
  }

  return result;
}

unint64_t sub_22C765D14()
{
  result = qword_27D9BFDA8;
  if (!qword_27D9BFDA8)
  {
    sub_22C3AC1A0(&qword_27D9BFDA0, &qword_22C925640);
    sub_22C765D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDA8);
  }

  return result;
}

unint64_t sub_22C765D98()
{
  result = qword_27D9BFDB0;
  if (!qword_27D9BFDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDB0);
  }

  return result;
}

unint64_t sub_22C765DEC()
{
  result = qword_27D9BFDC0;
  if (!qword_27D9BFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDC0);
  }

  return result;
}

_BYTE *sub_22C765E50(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C765F0C()
{
  result = qword_27D9BFDC8;
  if (!qword_27D9BFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDC8);
  }

  return result;
}

unint64_t sub_22C765F64()
{
  result = qword_27D9BFDD0;
  if (!qword_27D9BFDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDD0);
  }

  return result;
}

unint64_t sub_22C765FBC()
{
  result = qword_27D9BFDD8;
  if (!qword_27D9BFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDD8);
  }

  return result;
}

unint64_t sub_22C766014()
{
  result = qword_27D9BFDE0;
  if (!qword_27D9BFDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDE0);
  }

  return result;
}

unint64_t sub_22C76606C()
{
  result = qword_27D9BFDE8;
  if (!qword_27D9BFDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDE8);
  }

  return result;
}

unint64_t sub_22C7660C4()
{
  result = qword_27D9BFDF0;
  if (!qword_27D9BFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFDF0);
  }

  return result;
}

unint64_t sub_22C766118()
{
  result = qword_27D9BFE00;
  if (!qword_27D9BFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFE00);
  }

  return result;
}

unint64_t sub_22C76616C()
{
  result = qword_27D9BFE08;
  if (!qword_27D9BFE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFE08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JointResolverTrialConfigProvider.CandidateRisk.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C7662A0()
{
  result = qword_27D9BFE10;
  if (!qword_27D9BFE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFE10);
  }

  return result;
}

unint64_t sub_22C7662F8()
{
  result = qword_27D9BFE18;
  if (!qword_27D9BFE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFE18);
  }

  return result;
}

unint64_t sub_22C766350()
{
  result = qword_27D9BFE20;
  if (!qword_27D9BFE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFE20);
  }

  return result;
}

BOOL sub_22C7663C4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_22C7663F0(uint64_t a1)
{
  v2 = sub_22C909C4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C76A6CC(&qword_28142FA50, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
  v6 = sub_22C90A4DC();
  v48 = MEMORY[0x277D84F90];
  sub_22C3B5E2C(0, v6 & ~(v6 >> 63), 0, v7, v8, v9, v10);
  v11 = v48;
  (*(v3 + 16))(v5, a1, v2);
  sub_22C90A4CC();
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v12 = v47;
      v13 = *(v46 + 16);
      v44 = v46;
      *&v45 = v13;
      v43 = v46 + 32;
      v42 = xmmword_22C90F800;
      v14 = v47;
      while (v45 != v12)
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v12 >= *(v44 + 16))
        {
          goto LABEL_21;
        }

        v15 = *(v43 + v12);
        sub_22C3A5908(&qword_27D9BB5D8, &unk_22C91A680);
        v16 = swift_allocObject();
        *(v16 + 16) = v42;
        *(v16 + 56) = MEMORY[0x277D84B78];
        *(v16 + 64) = MEMORY[0x277D84BC0];
        *(v16 + 32) = v15;
        v21 = sub_22C90A14C();
        v23 = v22;
        v48 = v11;
        v25 = *(v11 + 16);
        v24 = *(v11 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_22C3B5E2C(v24 > 1, v25 + 1, 1, v17, v18, v19, v20);
          v11 = v48;
        }

        *(v11 + 16) = v25 + 1;
        v26 = v11 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
        ++v12;
        if (!--v6)
        {
          v47 = v12;
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v27 = v46;
      v45 = xmmword_22C90F800;
      while (1)
      {
        v28 = *(v27 + 16);
        if (v47 == v28)
        {

          return;
        }

        if (v47 >= v28)
        {
          break;
        }

        v29 = *(v27 + 32 + v47++);
        sub_22C3A5908(&qword_27D9BB5D8, &unk_22C91A680);
        v30 = swift_allocObject();
        *(v30 + 16) = v45;
        *(v30 + 56) = MEMORY[0x277D84B78];
        *(v30 + 64) = MEMORY[0x277D84BC0];
        *(v30 + 32) = v29;
        v35 = sub_22C90A14C();
        v37 = v36;
        v48 = v11;
        v39 = *(v11 + 16);
        v38 = *(v11 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_22C3B5E2C(v38 > 1, v39 + 1, 1, v31, v32, v33, v34);
          v11 = v48;
        }

        *(v11 + 16) = v39 + 1;
        v40 = v11 + 16 * v39;
        *(v40 + 32) = v35;
        *(v40 + 40) = v37;
      }

      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22C766760(unint64_t a1, unint64_t a2)
{
  v4 = 0;
  v54 = *MEMORY[0x277D85DE8];
  v48[0] = a1;
  v48[1] = a2;
  *&v51 = a1;
  *(&v51 + 1) = a2;

  sub_22C3A5908(&qword_27D9BFE28, &qword_22C9259F0);
  if (swift_dynamicCast())
  {
    sub_22C36C730(v49, &v52);
    sub_22C374168(&v52, v53);
    sub_22C90018C();
    v49[0] = v51;
    sub_22C36FF94(&v52);
    goto LABEL_59;
  }

  v50 = 0;
  memset(v49, 0, sizeof(v49));
  sub_22C3770B0(v49, &qword_27D9BFE30, &qword_22C9259F8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v49[0] = a1;
    *(&v49[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v49;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_22C90AFCC();
  }

  sub_22C769E20(v5, v6, &v52);
  v7 = *(&v52 + 1);
  v8 = v52;
  if (*(&v52 + 1) >> 60 != 15)
  {
    v49[0] = v52;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v49[0] = MEMORY[0x2318AD9C0](v9);
  *(&v49[0] + 1) = v10;
  MEMORY[0x28223BE20](*&v49[0]);
  v43[2] = v48;
  v11 = sub_22C769F3C(sub_22C76A690, v43);
  v13 = *(&v49[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v49[0]);
  switch(*(&v49[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v49[0]) - LODWORD(v49[0]);
      if (__OFSUB__(DWORD1(v49[0]), v49[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v49[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v49[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v49[0] + 16);
      v21 = *(*&v49[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_22C9004DC();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v43[4] = v4;
      v44 = v8;
      v45 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v46 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v47 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v51 + 7) = 0;
      *&v51 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v49[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v32 = sub_22C371CA4();
      v28 = sub_22C8A3F0C(v32, v33, v34);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_22C90A3BC();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_22C90A3FC();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v52 = v14;
      *(&v52 + 1) = v47;
      v31 = *(&v52 + v29);
    }

    else
    {
      v30 = v46;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_22C90AFCC();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v35 = sub_22C371CA4();
      v18 = sub_22C8A3F0C(v35, v36, v37);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    sub_22C371CA4();
    v18 = sub_22C90A3CC();
LABEL_46:
    *(&v51 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      sub_22C76A714();
      sub_22C9004FC();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    sub_22C76A714();
    sub_22C9004FC();
    sub_22C3C8114(v44, v45);
    goto LABEL_58;
  }

  sub_22C3C8114(v44, v45);
LABEL_59:
  v38 = sub_22C37170C();
  sub_22C3C832C(v38, v39);

  v40 = sub_22C37170C();
  sub_22C38B120(v40, v41);
  return sub_22C37170C();
}

uint64_t sub_22C766C2C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v158 = a2;
  sub_22C90931C();
  sub_22C369824();
  v155 = v4;
  v156 = v3;
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  v154 = v5;
  sub_22C36BA0C();
  v142 = sub_22C909C4C();
  sub_22C369824();
  v141 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  v140 = v8;
  v9 = sub_22C3A5908(&qword_27D9BF2F8, &unk_22C922540);
  MEMORY[0x28223BE20](v9 - 8);
  v162 = &v134 - v10;
  sub_22C36BA0C();
  v148 = sub_22C90906C();
  sub_22C369824();
  v147 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v146 = v13;
  sub_22C36BA0C();
  v14 = sub_22C9090BC();
  sub_22C369824();
  v149 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_22C90910C();
  sub_22C369824();
  v137 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22C3698A8();
  v136 = v21;
  sub_22C36BA0C();
  sub_22C90952C();
  sub_22C369824();
  v151 = v23;
  v152 = v22;
  MEMORY[0x28223BE20](v22);
  sub_22C3698A8();
  v150 = v24;
  sub_22C36BA0C();
  v145 = sub_22C90919C();
  sub_22C369824();
  v144 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22C9093BC();
  sub_22C369824();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  v160 = v33;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v134 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = (&v134 - v38);
  v164 = sub_22C9032BC();
  sub_22C369824();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  sub_22C3698E4();
  v161 = v43;
  v45 = MEMORY[0x28223BE20](v44);
  v138 = &v134 - v46;
  MEMORY[0x28223BE20](v45);
  v153 = &v134 - v47;
  v49 = (v31 + 16);
  v48 = *(v31 + 16);
  v157 = a1;
  v159 = v48;
  v48(v39, a1, v29);
  v50 = sub_22C37170C();
  v52 = v51(v50);
  if (v52 != *MEMORY[0x277D72A58])
  {
    v143 = v31;
    v163 = v41;
    if (v52 == *MEMORY[0x277D729E8])
    {
      v60 = v14;
      v135 = v14;
      v61 = v143;
      v62 = sub_22C36A31C();
      v63(v62);
      v49 = *v39;
      v64 = swift_projectBox();
      v65 = v149;
      (*(v149 + 16))(v18, v64, v60);
      sub_22C90908C();
      v66 = v150;
      sub_22C9090AC();
      sub_22C9094BC();
      (*(v151 + 8))(v66, v152);
      sub_22C3889BC();
      sub_22C90328C();
      (*(v61 + 8))(v157, v29);
      (*(v65 + 8))(v18, v135);
      goto LABEL_8;
    }

    if (v52 == *MEMORY[0x277D72A38])
    {
      v67 = v143;
      v68 = sub_22C36A31C();
      v69(v68);
      v139 = *v39;
      v70 = swift_projectBox();
      v71 = v144;
      v72 = v145;
      (*(v144 + 16))(v28, v70, v145);
      sub_22C90908C();
      v149 = v29;
      v73 = v150;
      sub_22C9090AC();
      sub_22C9094BC();
      sub_22C3786C0();
      v74(v73);
      sub_22C38C004();
      (*(v67 + 8))(v157, v149);
      (*(v71 + 8))(v28, v72);
      goto LABEL_8;
    }

    if (v52 == *MEMORY[0x277D729E0])
    {
      v80 = v143;
      v81 = sub_22C36A31C();
      v82(v81);
      v139 = *v39;
      v83 = swift_projectBox();
      (*(v147 + 16))(v146, v83, v148);
      v145 = sub_22C90905C();
      v84 = *(v145 + 16);
      v75 = v164;
      v149 = v29;
      if (v84)
      {
        v85 = v145 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
        v86 = *(v80 + 72);
        v155 = v80 + 8;
        v156 = v86;
        v154 = (v163 + 32);
        v87 = MEMORY[0x277D84F90];
        v88 = v138;
        do
        {
          v89 = v159;
          v159(v37, v85, v29);
          v90 = v160;
          v89(v160, v37, v29);
          v91 = v162;
          sub_22C766C2C(v90, v162);
          (*v155)(v37, v29);
          if (sub_22C370B74(v91, 1, v75) == 1)
          {
            sub_22C3770B0(v91, &qword_27D9BF2F8, &unk_22C922540);
          }

          else
          {
            v92 = *v154;
            (*v154)(v88, v91, v75);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22C593ECC();
              v87 = v94;
            }

            v93 = *(v87 + 16);
            if (v93 >= *(v87 + 24) >> 1)
            {
              sub_22C593ECC();
              v87 = v95;
            }

            *(v87 + 16) = v93 + 1;
            v75 = v164;
            v92((v87 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v93), v88, v164);
            v29 = v149;
          }

          v85 += v156;
          --v84;
        }

        while (v84);
      }

      else
      {

        v87 = MEMORY[0x277D84F90];
      }

      v76 = v158;
      v110 = *(v87 + 16);
      if (v110)
      {
        v167 = MEMORY[0x277D84F90];
        sub_22C3B5E2C(0, v110, 0, v104, v105, v106, v107);
        v111 = v167;
        v112 = *(v163 + 16);
        v113 = v87 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
        v159 = *(v163 + 72);
        v160 = v112;
        v162 = v163 + 16;
        v155 = v87;
        v156 = (v163 + 8);
        do
        {
          v114 = v161;
          (v160)(v161, v113, v75);
          v115 = v75;
          v165 = sub_22C9032AC();
          v166 = v116;

          MEMORY[0x2318B7850](14906, 0xE200000000000000);

          v117 = v165;
          v118 = v166;
          v119 = sub_22C90329C();
          v121 = v120;
          v165 = v117;
          v166 = v118;

          MEMORY[0x2318B7850](v119, v121);

          v49 = v165;
          v122 = v166;
          (*v156)(v114, v115);
          v167 = v111;
          v128 = *(v111 + 16);
          v127 = *(v111 + 24);
          if (v128 >= v127 >> 1)
          {
            sub_22C3B5E2C(v127 > 1, v128 + 1, 1, v123, v124, v125, v126);
            v111 = v167;
          }

          *(v111 + 16) = v128 + 1;
          v129 = v111 + 16 * v128;
          *(v129 + 32) = v49;
          *(v129 + 40) = v122;
          v113 += v159;
          --v110;
          v75 = v164;
        }

        while (v110);

        v76 = v158;
      }

      else
      {

        v111 = MEMORY[0x277D84F90];
      }

      v130 = v140;
      sub_22C767AD0(v111, v140);

      sub_22C7663F0(v130);
      v165 = v131;
      sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
      sub_22C3F035C();
      sub_22C90A04C();

      (*(v141 + 8))(v130, v142);
      v132 = v150;
      v133 = v146;
      sub_22C90904C();
      sub_22C9094BC();
      (*(v151 + 8))(v132, v152);
      sub_22C3889BC();
      sub_22C90328C();
      (*(v143 + 8))(v157, v149);
      (*(v147 + 8))(v133, v148);
      goto LABEL_10;
    }

    v75 = v164;
    if (v52 == *MEMORY[0x277D729F8])
    {
      v96 = v143;
      v97 = sub_22C36A31C();
      v98(v97);
      v49 = *v39;
      v99 = swift_projectBox();
      v100 = v137;
      v101 = v136;
      (*(v137 + 16))(v136, v99, v139);
      sub_22C90908C();
      v149 = v29;
      v102 = v150;
      sub_22C9090AC();
      sub_22C9094BC();
      sub_22C3786C0();
      v103(v102);
      sub_22C38C004();
      (*(v96 + 8))(v157, v149);
      (*(v100 + 8))(v101, v139);
      goto LABEL_9;
    }

    v108 = *(v143 + 8);
    v108(v157, v29);
    v109 = sub_22C37170C();
    (v108)(v109);
LABEL_12:
    v77 = v158;
    v78 = 1;
    return sub_22C36C640(v77, v78, 1, v75);
  }

  v53 = sub_22C36A31C();
  v54(v53);
  v55 = swift_projectBox();
  (*(v155 + 16))(v154, v55, v156);
  sub_22C767DEC();
  if (!v56)
  {
    (*(v31 + 8))(v157, v29);
    (*(v155 + 8))(v154, v156);

    v75 = v164;
    goto LABEL_12;
  }

  v163 = v41;
  v57 = v150;
  v58 = v157;
  sub_22C90935C();
  sub_22C9094BC();
  sub_22C3786C0();
  v59(v57);
  v49 = v153;
  sub_22C90328C();
  (*(v31 + 8))(v58, v29);
  (*(v155 + 8))(v154, v156);
LABEL_8:
  v75 = v164;
LABEL_9:
  v76 = v158;
LABEL_10:

  (*(v163 + 32))(v76, v49, v75);
  v77 = v76;
  v78 = 0;
  return sub_22C36C640(v77, v78, 1, v75);
}

uint64_t sub_22C767AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = sub_22C909C6C();
  v17[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C76A6CC(&qword_28142FA48, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22C909C3C();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 40);
    v18 = v3;
    while (2)
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      v10 = sub_22C766760(v8, v9);
      v12 = v10;
      v13 = v11;
      switch(v11 >> 62)
      {
        case 1uLL:
          if (v10 >> 32 < v10)
          {
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
          }

          if (sub_22C90006C() && __OFSUB__(v12, sub_22C90008C()))
          {
            goto LABEL_21;
          }

LABEL_15:
          sub_22C90007C();
          v3 = v18;
LABEL_16:
          sub_22C909C1C();
          sub_22C38B120(v12, v13);
          v7 += 2;
          if (!--v6)
          {
            break;
          }

          continue;
        case 2uLL:
          v15 = *(v10 + 16);
          v14 = *(v10 + 24);
          if (sub_22C90006C() && __OFSUB__(v15, sub_22C90008C()))
          {
            goto LABEL_20;
          }

          if (!__OFSUB__(v14, v15))
          {
            goto LABEL_15;
          }

          goto LABEL_19;
        case 3uLL:
          memset(v19, 0, 14);
          goto LABEL_16;
        default:
          v19[0] = v10;
          LOWORD(v19[1]) = v11;
          BYTE2(v19[1]) = BYTE2(v11);
          BYTE3(v19[1]) = BYTE3(v11);
          BYTE4(v19[1]) = BYTE4(v11);
          BYTE5(v19[1]) = BYTE5(v11);
          goto LABEL_16;
      }

      break;
    }
  }

  sub_22C909C2C();
  return (*(v17[0] + 8))(v5, v3);
}

uint64_t sub_22C767DEC()
{
  v142 = sub_22C90929C();
  v140 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v141 = &v139 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_22C3A5908(&qword_27D9BFE38, &qword_22C92B200);
  MEMORY[0x28223BE20](v1 - 8);
  v149 = &v139 - v2;
  v148 = sub_22C9001BC();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v146 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_22C90021C();
  v150 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v158 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_22C90046C();
  v157 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9BF2C0, &qword_22C925300);
  MEMORY[0x28223BE20](v6 - 8);
  v162 = &v139 - v7;
  v167 = sub_22C90014C();
  v165 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v163 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BFE40, &qword_22C925A00);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v156 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v173 = &v139 - v12;
  v13 = sub_22C90083C();
  v184 = *(v13 - 8);
  v185 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v155 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v172 = &v139 - v16;
  v17 = sub_22C90058C();
  v180 = *(v17 - 8);
  v181 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v154 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v171 = &v139 - v20;
  v21 = sub_22C90056C();
  v178 = *(v21 - 8);
  v179 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v153 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v170 = &v139 - v24;
  v177 = sub_22C90054C();
  v176 = *(v177 - 8);
  v25 = MEMORY[0x28223BE20](v177);
  v152 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v169 = &v139 - v27;
  v175 = sub_22C90055C();
  v174 = *(v175 - 8);
  v28 = MEMORY[0x28223BE20](v175);
  v161 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v168 = &v139 - v30;
  v31 = sub_22C90059C();
  v182 = *(v31 - 8);
  v183 = v31;
  v32 = MEMORY[0x28223BE20](v31);
  v151 = &v139 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v139 - v34;
  v193 = sub_22C90063C();
  v186 = *(v193 - 8);
  v36 = MEMORY[0x28223BE20](v193);
  v160 = &v139 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v139 - v38;
  v40 = sub_22C90926C();
  v139 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v139 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22C909C6C();
  v188 = *(v43 - 8);
  v189 = v43;
  MEMORY[0x28223BE20](v43);
  v187 = &v139 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22C909C4C();
  v191 = *(v45 - 8);
  v192 = v45;
  MEMORY[0x28223BE20](v45);
  v190 = &v139 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_22C9092DC();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v139 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22C90930C();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = &v139 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22C90931C();
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v55 = (&v139 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v55, v194, v52);
  v56 = (*(v53 + 88))(v55, v52);
  if (v56 == *MEMORY[0x277D72988])
  {
    (*(v53 + 96))(v55, v52);
    if (*v55)
    {
      return 1702195828;
    }

    else
    {
      return 0x65736C6166;
    }
  }

  if (v56 == *MEMORY[0x277D729A8])
  {
    (*(v53 + 96))(v55, v52);
    return sub_22C90A84C();
  }

  if (v56 == *MEMORY[0x277D729B8])
  {
    (*(v53 + 96))(v55, v52);
    v58 = sub_22C766760(*v55, v55[1]);
    v60 = v59;
    sub_22C76A6CC(&qword_28142FA48, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v61 = v187;
    v62 = v189;
    sub_22C909C3C();
    sub_22C3C832C(v58, v60);
    sub_22C878568(v58, v60);
    sub_22C38B120(v58, v60);
    v63 = v190;
    sub_22C909C2C();
    (*(v188 + 8))(v61, v62);
    sub_22C7663F0(v63);
    v195 = v64;
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C3F035C();
    v57 = sub_22C90A04C();
    sub_22C38B120(v58, v60);
    (*(v191 + 8))(v63, v192);
LABEL_9:

    return v57;
  }

  if (v56 == *MEMORY[0x277D72990])
  {
    (*(v53 + 96))(v55, v52);
    v65 = v186;
    (*(v186 + 32))(v39, v55, v193);
    (*(v174 + 104))(v168, *MEMORY[0x277CC9460], v175);
    (*(v176 + 104))(v169, *MEMORY[0x277CC9458], v177);
    (*(v178 + 104))(v170, *MEMORY[0x277CC9468], v179);
    (*(v180 + 104))(v171, *MEMORY[0x277CC9480], v181);
    v66 = v173;
    sub_22C90080C();
    v67 = v185;
    result = sub_22C370B74(v66, 1, v185);
    if (result != 1)
    {
      (*(v184 + 32))(v172, v66, v67);
      sub_22C90057C();
      sub_22C76A6CC(&qword_27D9BFE48, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
      v69 = v183;
      sub_22C90061C();
      (*(v182 + 8))(v35, v69);
      (*(v65 + 8))(v39, v193);
      return v195;
    }

    __break(1u);
  }

  else
  {
    if (v56 != *MEMORY[0x277D72958])
    {
      if (v56 == *MEMORY[0x277D72980])
      {
        (*(v53 + 96))(v55, v52);
        v76 = v157;
        (*(v157 + 32))(v164, v55, v166);
        v77 = sub_22C90045C();
        v79 = v78;

        v80 = sub_22C766760(v77, v79);
        v82 = v81;
        sub_22C76A6CC(&qword_28142FA48, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
        v83 = v187;
        v84 = v189;
        sub_22C909C3C();
        sub_22C3C832C(v80, v82);
        sub_22C878568(v80, v82);
        sub_22C38B120(v80, v82);
        v85 = v190;
        sub_22C909C2C();
        (*(v188 + 8))(v83, v84);
        sub_22C38B120(v80, v82);

        sub_22C7663F0(v85);
        v195 = v86;
        sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
        sub_22C3F035C();
        v57 = sub_22C90A04C();
        (*(v191 + 8))(v85, v192);
        (*(v76 + 8))(v164, v166);
      }

      else if (v56 == *MEMORY[0x277D72968])
      {
        (*(v53 + 96))(v55, v52);
        v92 = v150;
        (*(v150 + 32))(v158, v55, v159);
        v93 = v146;
        sub_22C90019C();
        sub_22C87F748();
        (*(v147 + 8))(v93, v148);
        v94 = sub_22C90A19C();
        v96 = v95;

        v97 = sub_22C766760(v94, v96);
        v99 = v98;
        sub_22C76A6CC(&qword_28142FA48, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
        v100 = v187;
        v101 = v189;
        sub_22C909C3C();
        sub_22C3C832C(v97, v99);
        sub_22C878568(v97, v99);
        sub_22C38B120(v97, v99);
        v102 = v190;
        sub_22C909C2C();
        (*(v188 + 8))(v100, v101);
        sub_22C38B120(v97, v99);

        sub_22C7663F0(v102);
        v195 = v103;
        sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
        sub_22C3F035C();
        v57 = sub_22C90A04C();
        (*(v191 + 8))(v102, v192);
        (*(v92 + 8))(v158, v159);
      }

      else
      {
        if (v56 == *MEMORY[0x277D729D0])
        {
          (*(v53 + 96))(v55, v52);
          (*(v49 + 32))(v51, v55, v48);
          v104 = objc_autoreleasePoolPush();
          sub_22C769AC0(&v195);
          objc_autoreleasePoolPop(v104);
          v57 = v195;
          (*(v49 + 8))(v51, v48);
          return v57;
        }

        if (v56 == *MEMORY[0x277D729B0])
        {
          (*(v53 + 96))(v55, v52);
          v105 = v144;
          v106 = v143;
          v107 = v145;
          (*(v144 + 32))(v143, v55, v145);
          v108 = sub_22C9092CC();
          v109 = [v108 personHandle];
          if (v109 && (v110 = sub_22C8E62D8(v109), v111) || (v110 = sub_22C76A4D8(v108, &selRef_contactIdentifier), v112) || (v110 = sub_22C76A4D8(v108, &selRef_customIdentifier), v113))
          {
            v57 = v110;

            (*(v105 + 8))(v106, v107);
            return v57;
          }

          v128 = [v108 displayName];
          sub_22C90A11C();

          v129 = sub_22C90A1BC();
          v131 = v130;

          v132 = sub_22C766760(v129, v131);
          v134 = v133;
          sub_22C76A6CC(&qword_28142FA48, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
          v135 = v187;
          v136 = v189;
          sub_22C909C3C();
          sub_22C3C832C(v132, v134);
          sub_22C878568(v132, v134);
          sub_22C38B120(v132, v134);
          v137 = v190;
          sub_22C909C2C();
          (*(v188 + 8))(v135, v136);
          sub_22C38B120(v132, v134);

          sub_22C7663F0(v137);
          v195 = v138;
          sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
          sub_22C3F035C();
          v57 = sub_22C90A04C();

          (*(v191 + 8))(v137, v192);
          (*(v144 + 8))(v143, v145);
        }

        else
        {
          if (v56 != *MEMORY[0x277D72998])
          {
            if (v56 == *MEMORY[0x277D72970])
            {
              (*(v53 + 96))(v55, v52);
              v127 = v139;
              (*(v139 + 32))(v42, v55, v40);
              v57 = sub_22C90924C();
              (*(v127 + 8))(v42, v40);
            }

            else if (v56 == *MEMORY[0x277D729A0])
            {
              return 1701736302;
            }

            else
            {
              (*(v53 + 8))(v55, v52);
              return 0;
            }

            return v57;
          }

          (*(v53 + 96))(v55, v52);
          v114 = v140;
          (*(v140 + 32))(v141, v55, v142);
          v115 = sub_22C90928C();
          v116 = [v115 description];

          v117 = sub_22C90A11C();
          v119 = v118;

          v120 = sub_22C766760(v117, v119);
          v122 = v121;
          sub_22C76A6CC(&qword_28142FA48, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
          v123 = v187;
          v124 = v189;
          sub_22C909C3C();
          sub_22C3C832C(v120, v122);
          sub_22C878568(v120, v122);
          sub_22C38B120(v120, v122);
          v125 = v190;
          sub_22C909C2C();
          (*(v188 + 8))(v123, v124);
          sub_22C38B120(v120, v122);

          sub_22C7663F0(v125);
          v195 = v126;
          sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
          sub_22C3F035C();
          v57 = sub_22C90A04C();
          (*(v191 + 8))(v125, v192);
          (*(v114 + 8))(v141, v142);
        }
      }

      goto LABEL_9;
    }

    (*(v53 + 96))(v55, v52);
    v70 = v165;
    v71 = v163;
    v72 = v167;
    (*(v165 + 32))(v163, v55, v167);
    v73 = v162;
    sub_22C9000DC();
    v74 = v193;
    if (sub_22C370B74(v73, 1, v193) == 1)
    {
      v75 = sub_22C3770B0(v73, &qword_27D9BF2C0, &qword_22C925300);
      v57 = MEMORY[0x2318AD580](v75);
      (*(v70 + 8))(v71, v72);
      return v57;
    }

    (*(v186 + 32))(v160, v73, v74);
    (*(v174 + 104))(v161, *MEMORY[0x277CC9460], v175);
    (*(v176 + 104))(v152, *MEMORY[0x277CC9458], v177);
    (*(v178 + 104))(v153, *MEMORY[0x277CC9468], v179);
    (*(v180 + 104))(v154, *MEMORY[0x277CC9480], v181);
    v87 = v156;
    sub_22C90080C();
    v88 = v185;
    result = sub_22C370B74(v87, 1, v185);
    if (result != 1)
    {
      (*(v184 + 32))(v155, v87, v88);
      v89 = v151;
      sub_22C90057C();
      sub_22C76A6CC(&qword_27D9BFE48, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
      v90 = v183;
      v91 = v160;
      sub_22C90061C();
      (*(v182 + 8))(v89, v90);
      (*(v186 + 8))(v91, v74);
      (*(v70 + 8))(v71, v167);
      return v195;
    }
  }

  __break(1u);
  return result;
}

void sub_22C769AC0(uint64_t *a1@<X8>)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22C909C6C();
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C909C4C();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C9092FC();
  v9 = [v8 location];

  if (v9)
  {
    v10 = objc_opt_self();
    v28[0] = 0;
    v11 = [v10 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v28];
    v12 = v28[0];
    if (v11)
    {
      v13 = sub_22C90051C();
      v25 = v5;
      v14 = v13;
      v16 = v15;

      sub_22C76A6CC(&qword_28142FA48, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      v24 = a1;
      sub_22C909C3C();
      sub_22C3C832C(v14, v16);
      sub_22C878568(v14, v16);
      sub_22C38B120(v14, v16);
      sub_22C909C2C();
      (*(v26 + 8))(v4, v2);
      sub_22C7663F0(v7);
      v28[0] = v17;
      sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
      sub_22C3F035C();
      v18 = sub_22C90A04C();
      v20 = v19;
      sub_22C38B120(v14, v16);

      (*(v27 + 8))(v7, v25);

      v21 = v24;
      *v24 = v18;
      v21[1] = v20;
      return;
    }

    v22 = v12;
    v23 = sub_22C90030C();

    swift_willThrow();
  }

  *a1 = 0;
  a1[1] = 0;
}

uint64_t sub_22C769E20@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_22C90047C();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_22C90009C();
      swift_allocObject();
      v8 = sub_22C90005C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_22C9004CC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_22C769EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_22C76A3C0(sub_22C76A6AC, v5, a1, a2);
}

uint64_t sub_22C769F3C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22C38B120(v7, v6);
      *v5 = xmmword_22C9259E0;
      sub_22C38B120(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_22C90006C() && __OFSUB__(v7, sub_22C90008C()))
      {
        goto LABEL_24;
      }

      sub_22C90009C();
      swift_allocObject();
      v14 = sub_22C90004C();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_22C76A424(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22C38B120(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_22C9259E0;
      sub_22C38B120(0, 0xC000000000000000);
      sub_22C90048C();
      v7 = v17;
      v10 = sub_22C76A424(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_22C38B120(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_22C76A300@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_22C90047C();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x2318AD970]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x2318AD990]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_22C76A378(uint64_t result)
{
  if (result)
  {
    result = sub_22C90AF6C();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22C76A3C0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_22C76A424(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_22C90006C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_22C90008C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_22C90007C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_22C76A4D8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22C90A11C();

  return v4;
}

void *sub_22C76A538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_22C769EE8(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_22C76A570@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22C76A378(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_22C76A5B0(uint64_t a1, uint64_t a2)
{
  result = sub_22C90006C();
  if (!result || (result = sub_22C90008C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22C90007C();
      sub_22C909C6C();
      sub_22C76A6CC(&qword_28142FA48, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22C909C1C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C76A6CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t String.djb2Hash<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v15[1] = a6;
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15[8] = a2;
  v15[9] = a3;
  swift_getAssociatedConformanceWitness();

  sub_22C90B51C();
  sub_22C90B4DC();
  v15[4] = a4;
  v15[5] = a5;
  sub_22C76AAFC();
  sub_22C90A52C();
  (*(v10 + 8))(v12, a4);
}

uint64_t sub_22C76A924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  v15[1] = a4;
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v12 = *v11;
  v17 = 5;
  sub_22C76AB50();
  sub_22C90ADAC();
  sub_22C90B13C();
  v13 = *(v5 + 8);
  v13(v8, a2);
  v16 = v12;
  sub_22C76ABA4();
  sub_22C90ADCC();
  sub_22C90B13C();
  v13(v8, a2);
  return (v13)(v10, a2);
}

unint64_t sub_22C76AAFC()
{
  result = qword_27D9BFE50;
  if (!qword_27D9BFE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFE50);
  }

  return result;
}

unint64_t sub_22C76AB50()
{
  result = qword_27D9BFE58;
  if (!qword_27D9BFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFE58);
  }

  return result;
}

unint64_t sub_22C76ABA4()
{
  result = qword_27D9BFE60;
  if (!qword_27D9BFE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFE60);
  }

  return result;
}

uint64_t sub_22C76ABF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22C3A5908(&qword_27D9BFE68, &qword_22C925A80);
  sub_22C369914(v3);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v4 = sub_22C90014C();
  v2[6] = v4;
  sub_22C3699B8(v4);
  v2[7] = v5;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for DateComponentsResolver(0);
  v2[10] = v6;
  sub_22C369914(v6);
  v2[11] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v2[12] = v7;
  sub_22C3699B8(v7);
  v2[13] = v8;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v9 = sub_22C90063C();
  v2[16] = v9;
  sub_22C3699B8(v9);
  v2[17] = v10;
  v2[18] = swift_task_alloc();
  v11 = type metadata accessor for DateResolver(0);
  v2[19] = v11;
  sub_22C369914(v11);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C76AE08, 0, 0);
}

uint64_t sub_22C76AE08()
{
  v85 = v0;
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[10];
  v6 = v0[3];
  v7 = v6[1];
  v83 = *v6;
  v8 = v5[5];
  v9 = v2[5];
  sub_22C90981C();
  sub_22C36985C();
  (*(v10 + 16))(v1 + v9, v6 + v8);
  v11 = v5[6];
  v12 = v2[6];
  sub_22C90077C();
  sub_22C36985C();
  (*(v13 + 16))(v1 + v12, v6 + v11);
  sub_22C3E8FB4(v6 + v5[7], v1 + v2[7], &qword_27D9BFE70, &unk_22C925A20);
  v14 = *(v6 + v5[8]);
  (*(v4 + 16))(v1 + v2[9], v6 + v5[9], v3);
  v15 = v5[10];
  v16 = v2[10];
  sub_22C90083C();
  sub_22C36985C();
  (*(v17 + 16))(v1 + v16, v6 + v15);
  *v1 = v83;
  v1[1] = v7;
  *(v1 + v2[8]) = v14;
  v18 = objc_allocWithZone(MEMORY[0x277CCAA68]);
  v19 = v14;

  v20 = [v18 init];
  v21 = sub_22C90A0EC();
  v22 = [v20 dateFromString_];

  v23 = v0[20];
  if (v22)
  {
    v25 = v0[17];
    v24 = v0[18];
    v26 = v0[16];
    v27 = v0[2];
    sub_22C9005FC();

    sub_22C36B604();
    sub_22C76C7B4(v23, v28);
    v29 = sub_22C90931C();
    v30 = swift_allocBox();
    v32 = v31;
    (*(v25 + 32))(v31, v24, v26);
    (*(*(v29 - 8) + 104))(v32, *MEMORY[0x277D72990], v29);
    *v27 = v30;
    v33 = *MEMORY[0x277D72A58];
    v34 = sub_22C9093BC();
    sub_22C36985C();
    (*(v35 + 104))(v27, v33, v34);
    v36 = v27;
    v37 = 0;
    v38 = v34;
    goto LABEL_18;
  }

  v0[21] = sub_22C76CA60(v83, v7);
  result = sub_22C36E2B8();
  v0[22] = result;
  if (!result)
  {
    v42 = v0[11];
    v43 = v0[3];

    sub_22C903F8C();
    sub_22C76C750(v43, v42);
    v44 = sub_22C9063CC();
    v45 = sub_22C90AADC();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[20];
    v48 = v0[15];
    v50 = v0[12];
    v49 = v0[13];
    v51 = v0[11];
    if (v46)
    {
      swift_slowAlloc();
      v52 = sub_22C376940();
      v84[0] = v52;
      *v48 = 136315138;
      v82 = v47;
      v54 = *v51;
      v53 = v51[1];

      sub_22C372D24();
      v55 = sub_22C36F9F4(v54, v53, v84);

      *(v48 + 4) = v55;
      _os_log_impl(&dword_22C366000, v44, v45, "Not able to convert Input = %s to SiriInference.DateTime.", v48, 0xCu);
      sub_22C36FF94(v52);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v49 + 8))(v83, v50);
      sub_22C36B604();
      v57 = v82;
    }

    else
    {

      sub_22C372D24();
      (*(v49 + 8))(v48, v50);
      sub_22C36B604();
      v57 = v47;
    }

    sub_22C76C7B4(v57, v56);
    v71 = v0[2];
    v38 = sub_22C9093BC();
    v36 = v71;
    v37 = 1;
LABEL_18:
    v72 = sub_22C36C640(v36, v37, 1, v38);
    sub_22C370A04(v72, v73, v74, v75, v76, v77, v78, v79, v82, v83, v84[0], v84[1], v84[2], v84[3], v84[4], v84[5], v84[6], v84[7], v84[8], v85);

    sub_22C36D5F8();

    __asm { BRAA            X1, X16 }
  }

  v40 = v0[21];
  if ((v40 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x2318B8460](0);
  }

  else
  {
    if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v41 = *(v40 + 32);
  }

  v0[23] = v41;
  v0[24] = 1;
  v58 = sub_22C9017FC();
  if (v58)
  {
    v61 = v58;
    v62 = sub_22C9017BC();

    if (v62)
    {
      sub_22C37A368();
      sub_22C76B998(v16);

      sub_22C36C640(v16, 0, 1, v83);
      v63 = sub_22C37FFB4();
      v64(v63);
      sub_22C76BFB8(v21, v61);

      v65 = sub_22C36CA88();
      v66(v65);
      sub_22C36B604();
      sub_22C76C7B4(0, v67);
      v38 = sub_22C9093BC();
      v36 = v61;
      v37 = 0;
      goto LABEL_18;
    }
  }

  v68 = v0[5];
  sub_22C374D84(v68, v59, v60, v0[6]);
  sub_22C36DD28(v68, &qword_27D9BFE68, &qword_22C925A80);
  v69 = swift_task_alloc();
  v0[25] = v69;
  *v69 = v0;
  sub_22C38C02C(v69);
  sub_22C36D5F8();

  return sub_22C76D444();
}

uint64_t sub_22C76B43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return MEMORY[0x2822009F8](sub_22C76B538, 0, 0);
}

uint64_t sub_22C76B538()
{
  v65 = v0;
  v4 = v0[6];
  v5 = v0[4];
  if (sub_22C370B74(v5, 1, v4) != 1)
  {
    v25 = v0[20];
    v27 = v0[7];
    v26 = v0[8];
    v28 = v0[2];

    v29 = sub_22C36CA88();
    v30(v29);
    sub_22C76BFB8(v26, v28);

    (*(v27 + 8))(v26, v4);
    sub_22C36B604();
    sub_22C76C7B4(v25, v31);
    v32 = sub_22C9093BC();
    v33 = v28;
LABEL_6:
    v34 = 0;
    goto LABEL_11;
  }

  v6 = v0[24];
  v7 = v0[22];

  result = sub_22C36DD28(v5, &qword_27D9BFE68, &qword_22C925A80);
  if (v6 == v7)
  {
    sub_22C903F8C();

    v9 = sub_22C9063CC();
    v10 = sub_22C90AADC();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[20];
    v13 = v0[21];
    v14 = v0[13];
    v15 = v0[14];
    v16 = v0[12];
    if (v11)
    {
      swift_slowAlloc();
      v17 = sub_22C376940();
      v64[0] = v17;
      *v15 = 136315138;
      v18 = sub_22C90184C();
      v19 = MEMORY[0x2318B7AD0](v13, v18);
      v62 = v12;
      v21 = v20;

      v22 = sub_22C36F9F4(v19, v21, v64);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_22C366000, v9, v10, "Could not resolve dateComponents from dateTime(s)=%s", v15, 0xCu);
      sub_22C36FF94(v17);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v14 + 8))(v63, v16);
      sub_22C36B604();
      v24 = v62;
    }

    else
    {

      (*(v14 + 8))(v15, v16);
      sub_22C36B604();
      v24 = v12;
    }

    sub_22C76C7B4(v24, v23);
    v38 = v0[2];
    v32 = sub_22C9093BC();
    v33 = v38;
    v34 = 1;
LABEL_11:
    v39 = sub_22C36C640(v33, v34, 1, v32);
    sub_22C370A04(v39, v40, v41, v42, v43, v44, v45, v46, v62, v63, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v65);

    sub_22C36D5F8();

    __asm { BRAA            X1, X16 }
  }

  v35 = v0[24];
  v36 = v0[21];
  if ((v36 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x2318B8460](v0[24]);
    v37 = result;
  }

  else
  {
    if (v35 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v37 = *(v36 + 8 * v35 + 32);
  }

  v0[23] = v37;
  v0[24] = v35 + 1;
  if (__OFADD__(v35, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v49 = sub_22C9017FC();
  if (v49)
  {
    v52 = v49;
    v53 = sub_22C9017BC();

    if (v53)
    {
      sub_22C37A368();
      sub_22C76B998(v3);

      sub_22C36C640(v3, 0, 1, v5);
      v54 = sub_22C37FFB4();
      v55(v54);
      sub_22C76BFB8(v2, v52);

      v56 = sub_22C36CA88();
      v57(v56);
      sub_22C36B604();
      sub_22C76C7B4(v1, v58);
      v32 = sub_22C9093BC();
      v33 = v52;
      goto LABEL_6;
    }
  }

  v59 = v0[5];
  sub_22C374D84(v59, v50, v51, v0[6]);
  sub_22C36DD28(v59, &qword_27D9BFE68, &qword_22C925A80);
  v60 = swift_task_alloc();
  v0[25] = v60;
  *v60 = v0;
  sub_22C38C02C(v60);
  sub_22C36D5F8();

  return sub_22C76D444();
}

void sub_22C76B998(uint64_t a1@<X8>)
{
  v2 = sub_22C3A5908(&qword_27D9BFE40, &qword_22C925A00);
  v3 = sub_22C369914(v2);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  sub_22C36BA58();
  v92 = v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA58();
  v95 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA58();
  v94 = v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  v96 = &v89 - v14;
  v15 = sub_22C3A5908(&qword_27D9BFE78, &qword_22C925A30);
  v16 = sub_22C369914(v15);
  MEMORY[0x28223BE20](v16);
  sub_22C369ABC();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  v91 = v21;
  sub_22C369930();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v89 - v24;
  MEMORY[0x28223BE20](v23);
  sub_22C36BA58();
  v93 = v26;
  sub_22C369930();
  MEMORY[0x28223BE20](v27);
  v29 = &v89 - v28;
  v30 = sub_22C3A5908(&qword_27D9BFE80, &qword_22C925A38);
  v31 = sub_22C369914(v30);
  MEMORY[0x28223BE20](v31);
  sub_22C369ABC();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v89 - v36;
  sub_22C90183C();
  v38 = sub_22C90178C();
  if (sub_22C370B74(v37, 1, v38) == 1)
  {
    goto LABEL_2;
  }

  v89 = v37;
  v90 = a1;
  sub_22C3E8FB4(v37, v34, &qword_27D9BFE80, &qword_22C925A38);
  v45 = *(v38 - 8);
  v46 = (*(v45 + 88))(v34, v38);
  if (v46 == *MEMORY[0x277D562D0])
  {
    v47 = sub_22C9007EC();
    v50 = sub_22C371CB4(v29, v48, v49, v47);
    sub_22C3889D0(v50, v51, v52, v50);
    sub_22C90182C();
    if (v53)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    sub_22C383444();
    v37 = v89;
    if (v55)
    {
      __break(1u);
    }

    else if (v54 > -9.22337204e18)
    {
      sub_22C76CA50();
      if (v56)
      {
        sub_22C3786D4();
        LOBYTE(v98) = v57;
        v97 = 0;
        sub_22C373900();
        LOBYTE(v90) = 0;
        v89 = v58;
        goto LABEL_10;
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v46 == *MEMORY[0x277D562F0])
  {
    v59 = sub_22C9007EC();
    v62 = sub_22C371CB4(v25, v60, v61, v59);
    sub_22C374D84(v95, v63, v64, v62);
    sub_22C90182C();
    if (v65)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    sub_22C383444();
    if (!v55)
    {
      if (v66 > -9.22337204e18)
      {
        sub_22C76CA50();
        if (v56)
        {
          sub_22C3786D4();
          LOBYTE(v98) = v67;
          v97 = 0;
          sub_22C373900();
          LOBYTE(v90) = v68;
          v89 = 0;
          sub_22C76CA3C();
          sub_22C90013C();
          v37 = v89;
          goto LABEL_12;
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

  if (v46 == *MEMORY[0x277D562E0])
  {
    v69 = sub_22C9007EC();
    v72 = sub_22C371CB4(v93, v70, v71, v69);
    sub_22C3889D0(v72, v73, v74, v72);
    sub_22C90182C();
    v37 = v89;
    if (v75)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    sub_22C383444();
    if (!v55)
    {
      if (v76 > -9.22337204e18)
      {
        sub_22C76CA50();
        if (v56)
        {
          sub_22C3786D4();
          LOBYTE(v98) = 0;
          v97 = v77;
          sub_22C373900();
          LOBYTE(v90) = v78;
          v89 = 0;
          goto LABEL_10;
        }

        goto LABEL_43;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v46 != *MEMORY[0x277D562E8])
  {
    (*(v45 + 8))(v34, v38);
    v37 = v89;
LABEL_2:
    v39 = sub_22C9007EC();
    v42 = sub_22C371CB4(v19, v40, v41, v39);
    sub_22C374D84(v6, v43, v44, v42);
LABEL_10:
    sub_22C76CA3C();
LABEL_11:
    sub_22C90013C();
LABEL_12:
    sub_22C36DD28(v37, &qword_27D9BFE80, &qword_22C925A38);
    return;
  }

  v79 = sub_22C9007EC();
  v82 = sub_22C371CB4(v91, v80, v81, v79);
  sub_22C3889D0(v82, v83, v84, v82);
  sub_22C90182C();
  v37 = v89;
  if ((v85 & 1) == 0)
  {
    sub_22C383444();
    if (!v55)
    {
      if (v86 > -9.22337204e18)
      {
        sub_22C76CA50();
        if (v56)
        {
          sub_22C3786D4();
          LOBYTE(v98) = v87;
          v97 = 0;
          sub_22C373900();
          LOBYTE(v90) = v88;
          v89 = 0;
          sub_22C76CA28();
          goto LABEL_11;
        }

        goto LABEL_46;
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_50:
  __break(1u);
}

uint64_t sub_22C76BFB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v3 = sub_22C3A5908(&qword_27D9BFE88, &unk_22C925A40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_22C90967C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C90014C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  (*(v11 + 16))(&v25 - v15, a1, v10);
  type metadata accessor for DateComponentsResolver(0);
  sub_22C5EE4F4(v5);
  if (sub_22C370B74(v5, 1, v6) == 1)
  {
    sub_22C36DD28(v5, &qword_27D9BFE88, &unk_22C925A40);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_22C76C310(v14);
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v16, v10);
    (*(v11 + 32))(v16, v14, v10);
  }

  v17 = sub_22C90931C();
  v18 = swift_allocBox();
  v20 = v19;
  (*(v11 + 32))(v19, v16, v10);
  (*(*(v17 - 8) + 104))(v20, *MEMORY[0x277D72958], v17);
  v21 = v26;
  *v26 = v18;
  v22 = *MEMORY[0x277D72A58];
  v23 = sub_22C9093BC();
  return (*(*(v23 - 8) + 104))(v21, v22, v23);
}

uint64_t sub_22C76C310@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22C3A5908(&qword_27D9BFE40, &qword_22C925A00);
  v3 = sub_22C369914(v2);
  MEMORY[0x28223BE20](v3);
  v4 = sub_22C3A5908(&qword_27D9BFE78, &qword_22C925A30);
  v5 = sub_22C369914(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - v6;
  v8 = sub_22C90967C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C36CA88();
  v13(v12);
  v14 = (*(v9 + 88))(v11, v8);
  if (v14 == *MEMORY[0x277D72F78])
  {
    v15 = sub_22C9007EC();
    v18 = sub_22C371CB4(v7, v16, v17, v15);
    sub_22C3889D0(v18, v19, v20, v18);
    v21 = sub_22C9000EC();
    v22 = sub_22C90011C();
    sub_22C90012C();
    sub_22C36C2CC();
    v52 = v23;
    v51 = v24;
    LOBYTE(v50) = v25;
    v49 = v22;
    LOBYTE(v48) = v26;
    v47 = v21;
    LOBYTE(v46) = 1;
    v45 = 0;
    sub_22C76CA28();
    return sub_22C90013C();
  }

  v27 = v14;
  if (v14 == *MEMORY[0x277D72F70])
  {
    v28 = sub_22C9007EC();
    v31 = sub_22C371CB4(v7, v29, v30, v28);
    sub_22C3889D0(v31, v32, v33, v31);
    sub_22C9000FC();
    sub_22C90010C();
    sub_22C9000CC();
    sub_22C36C2CC();
    v52 = 1;
    v51 = 0;
    LOBYTE(v50) = 1;
    v49 = 0;
    LOBYTE(v48) = 1;
    v47 = 0;
    LOBYTE(v46) = v34;
    v45 = v35;
    sub_22C76CA28();
    return sub_22C90013C();
  }

  v53 = *MEMORY[0x277D72F68];
  v37 = sub_22C9007EC();
  v40 = sub_22C371CB4(v7, v38, v39, v37);
  sub_22C3889D0(v40, v41, v42, v40);
  v51 = sub_22C9000FC();
  HIDWORD(v49) = v43;
  v50 = sub_22C90010C();
  LODWORD(v49) = v44;
  v48 = sub_22C9000CC();
  v47 = sub_22C9000EC();
  v45 = sub_22C90011C();
  v46 = a1;
  sub_22C90012C();
  sub_22C76CA28();
  result = sub_22C90013C();
  if (v27 != v53)
  {
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t type metadata accessor for DateComponentsResolver(uint64_t a1)
{
  result = qword_27D9BFE90;
  if (!qword_27D9BFE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C76C750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateComponentsResolver(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C76C7B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_22C76C834(uint64_t a1)
{
  sub_22C90981C();
  if (v1 <= 0x3F)
  {
    sub_22C90077C();
    if (v2 <= 0x3F)
    {
      sub_22C76C928(319);
      if (v3 <= 0x3F)
      {
        sub_22C76C98C(319);
        if (v4 <= 0x3F)
        {
          sub_22C90063C();
          if (v5 <= 0x3F)
          {
            sub_22C90083C();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22C76C928(uint64_t a1)
{
  if (!qword_27D9BFEA0)
  {
    sub_22C3AC1A0(&qword_27D9BFEA8, &qword_22C925AF0);
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BFEA0);
    }
  }
}

void sub_22C76C98C(uint64_t a1)
{
  if (!qword_27D9BFEB0)
  {
    sub_22C76C9E4();
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BFEB0);
    }
  }
}

unint64_t sub_22C76C9E4()
{
  result = qword_27D9BFEB8;
  if (!qword_27D9BFEB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9BFEB8);
  }

  return result;
}

uint64_t sub_22C76CA60(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C9063DC();
  sub_22C369824();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v86 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v88 = &v86 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v86 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v86 - v20;
  v22 = type metadata accessor for DateResolver(0);
  sub_22C3E8FB4(v2 + *(v22 + 28), &v100, &qword_27D9BFE70, &unk_22C925A20);
  if (v101)
  {
    sub_22C36C730(&v100, v102);
    v23 = sub_22C374168(v102, v102[3]);
    sub_22C773E00(a1, a2, *v23);
    v25 = v24;
    sub_22C903F8C();

    v26 = sub_22C9063CC();
    v27 = sub_22C90AABC();

    v28 = os_log_type_enabled(v26, v27);
    v29 = MEMORY[0x277D84F70];
    v90 = v14;
    v92 = v19;
    if (v28)
    {
      sub_22C36BED8();
      v30 = swift_slowAlloc();
      v31 = sub_22C370060();
      *&v100 = v31;
      *v30 = 136315138;
      v32 = MEMORY[0x2318B7AD0](v25, v29 + 8);
      v34 = v7;
      v35 = sub_22C36F9F4(v32, v33, &v100);

      *(v30 + 4) = v35;
      v7 = v34;
      v29 = MEMORY[0x277D84F70];
      _os_log_impl(&dword_22C366000, v26, v27, "USO Entities = %s", v30, 0xCu);
      sub_22C36FF94(v31);
      sub_22C36C30C();
      v19 = v92;
      sub_22C3699EC();

      v36 = v34;
    }

    else
    {

      v36 = v7;
    }

    v93 = *(v36 + 8);
    v93(v21, v5);
    *&v100 = sub_22C7E38E4(v25);
    sub_22C771488(&v100);

    v43 = v100;
    v44 = *(v100 + 16);
    v89 = v5;
    if (v44)
    {
      v91 = v7;
      v99[0] = MEMORY[0x277D84F90];
      sub_22C3B7118(0);
      v45 = v99[0];
      *&v87 = v43;
      v46 = v43 + 32;
      do
      {
        sub_22C3E8FB4(v46, &v100, &qword_27D9BAD70, qword_22C925AC0);
        sub_22C3E8FB4(&v100, &v96, &qword_27D9BAD70, qword_22C925AC0);
        v94 = v96;
        sub_22C456E34(&v97, v95);
        sub_22C36F998(v95, v98);
        sub_22C36DD28(&v94, &qword_27D9BAD70, qword_22C925AC0);
        sub_22C36DD28(&v100, &qword_27D9BAD70, qword_22C925AC0);
        v99[0] = v45;
        v48 = *(v45 + 16);
        v47 = *(v45 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_22C3B7118(v47 > 1);
          v45 = v99[0];
        }

        *(v45 + 16) = v48 + 1;
        sub_22C456E34(v98, (v45 + 32 * v48 + 32));
        v46 += 40;
        --v44;
      }

      while (v44);

      v5 = v89;
      v29 = MEMORY[0x277D84F70];
      v7 = v91;
      v19 = v92;
    }

    else
    {

      v45 = MEMORY[0x277D84F90];
    }

    sub_22C903F8C();

    v49 = sub_22C9063CC();
    v50 = sub_22C90AABC();

    if (os_log_type_enabled(v49, v50))
    {
      sub_22C36BED8();
      v51 = v19;
      v52 = swift_slowAlloc();
      v53 = sub_22C370060();
      *&v100 = v53;
      *v52 = 136315138;
      v54 = MEMORY[0x2318B7AD0](v45, v29 + 8);
      v56 = sub_22C36F9F4(v54, v55, &v100);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_22C366000, v49, v50, "Sorted USO Entities to prioritize 'common_DateTime' = %s", v52, 0xCu);
      sub_22C36FF94(v53);
      sub_22C3699EC();
      sub_22C3699EC();

      v57 = v51;
    }

    else
    {

      v57 = v19;
    }

    v93(v57, v5);
    v59 = v88;
    *&v98[0] = MEMORY[0x277D84F90];
    v60 = *(v45 + 16);
    if (v60)
    {
      v61 = v45 + 32;
      v92 = (v7 + 8);
      v62 = MEMORY[0x277D84F90];
      *&v58 = 136315138;
      v86 = v58;
      *&v58 = 136315394;
      v87 = v58;
      v91 = v45;
      do
      {
        sub_22C36F998(v61, &v100);
        if (sub_22C7730EC(&v100))
        {
          sub_22C903F8C();
          sub_22C36F998(&v100, &v96);

          v63 = sub_22C9063CC();
          v64 = v59;
          v65 = sub_22C90AABC();

          if (os_log_type_enabled(v63, v65))
          {
            v66 = swift_slowAlloc();
            v99[0] = swift_slowAlloc();
            *v66 = v87;
            sub_22C36F998(&v96, &v94);
            v67 = sub_22C90A1AC();
            v69 = v68;
            sub_22C36FF94(&v96);
            v70 = sub_22C36F9F4(v67, v69, v99);

            *(v66 + 4) = v70;
            *(v66 + 12) = 2080;
            v71 = sub_22C9017DC();
            v73 = sub_22C36F9F4(v71, v72, v99);

            *(v66 + 14) = v73;
            _os_log_impl(&dword_22C366000, v63, v65, "Converted USO Entity = %s to SiriInference.DateTime = %s", v66, 0x16u);
            swift_arrayDestroy();
            sub_22C386DA4();
            sub_22C3699EC();
          }

          else
          {

            sub_22C36FF94(&v96);
          }

          sub_22C376960();
          v82();
          v59 = v64;

          MEMORY[0x2318B7AA0](v83);
          if (*((*&v98[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v98[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22C90A61C();
          }

          sub_22C90A65C();

          sub_22C36FF94(&v100);
          v62 = *&v98[0];
        }

        else
        {
          sub_22C903F8C();
          sub_22C36F998(&v100, &v96);
          v74 = sub_22C9063CC();
          v75 = sub_22C90AABC();
          if (os_log_type_enabled(v74, v75))
          {
            sub_22C36BED8();
            v76 = swift_slowAlloc();
            v77 = sub_22C370060();
            v99[0] = v77;
            *v76 = v86;
            sub_22C36F998(&v96, &v94);
            v78 = sub_22C90A1AC();
            v80 = v79;
            sub_22C36FF94(&v96);
            v81 = sub_22C36F9F4(v78, v80, v99);

            *(v76 + 4) = v81;
            _os_log_impl(&dword_22C366000, v74, v75, "USO Entity = %s could not be converted to SiriInference.DateTime", v76, 0xCu);
            sub_22C36FF94(v77);
            sub_22C3699EC();
            sub_22C386DA4();
          }

          else
          {

            sub_22C36FF94(&v96);
          }

          sub_22C376960();
          v84();
          sub_22C36FF94(&v100);
          v59 = v88;
        }

        v61 += 32;
        --v60;
      }

      while (v60);
    }

    else
    {

      v62 = MEMORY[0x277D84F90];
    }

    sub_22C36FF94(v102);
  }

  else
  {
    sub_22C36DD28(&v100, &qword_27D9BFE70, &unk_22C925A20);
    sub_22C903F8C();
    v37 = sub_22C9063CC();
    v38 = sub_22C90AADC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = sub_22C36D240();
      *v39 = 0;
      _os_log_impl(&dword_22C366000, v37, v38, "dataDetectors is nil.", v39, 2u);
      sub_22C3699EC();

      v40 = sub_22C36D264();
    }

    else
    {

      v42 = *(v7 + 8);
      v40 = v11;
      v41 = v5;
    }

    v42(v40, v41);
    return MEMORY[0x277D84F90];
  }

  return v62;
}

uint64_t sub_22C76D444()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_22C9063DC();
  v1[7] = v4;
  sub_22C3699B8(v4);
  v1[8] = v5;
  v1[9] = sub_22C3699D4();
  v6 = sub_22C3A5908(&qword_27D9BFEC8, &qword_22C925A90);
  v1[10] = v6;
  sub_22C3699B8(v6);
  v1[11] = v7;
  v1[12] = sub_22C3699D4();
  v8 = sub_22C90634C();
  v1[13] = v8;
  sub_22C3699B8(v8);
  v1[14] = v9;
  v1[15] = sub_22C36D0D4();
  v1[16] = swift_task_alloc();
  v10 = sub_22C90636C();
  v1[17] = v10;
  sub_22C3699B8(v10);
  v1[18] = v11;
  v1[19] = sub_22C36D0D4();
  v1[20] = swift_task_alloc();
  v12 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C76D5F4(uint64_t a1)
{
  v2 = v1[18];
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v3 = *(v2 + 8);
  v4 = sub_22C37170C();
  v3(v4);
  v5 = sub_22C90635C();
  sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    *sub_22C36D240() = 0;
    v6 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v7, v8, v6, "DateResolver.resolveComponents", "");
    sub_22C3699EC();
  }

  v9 = sub_22C77238C();
  v10(v9);
  v11 = sub_22C9063AC();
  sub_22C3856A0(v11);
  v1[21] = sub_22C36D704();
  v12 = sub_22C36CA88();
  v13(v12);
  v14 = sub_22C36D264();
  v3(v14);
  swift_task_alloc();
  sub_22C36CC90();
  v1[22] = v15;
  *v15 = v16;
  v15[1] = sub_22C76D7A0;
  v17 = v1[12];
  v18 = v1[5];

  return sub_22C76F0F0(v17, v18);
}

uint64_t sub_22C76D7A0()
{
  sub_22C369980();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 184) = v0;

  if (v0)
  {
    v5 = sub_22C76D980;
  }

  else
  {
    v5 = sub_22C76D8A8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C76D980(uint64_t a1)
{
  v38 = v1;
  v2 = v1[23];
  sub_22C903F8C();
  v3 = v2;

  v4 = sub_22C9063CC();
  v5 = sub_22C90AADC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[23];
    v7 = v1[8];
    v36 = v1[9];
    v8 = v1[7];
    v9 = v1[5];
    v10 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v10 = 136315394;
    v1[2] = v6;
    v11 = v6;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    v12 = sub_22C90A1AC();
    sub_22C36F9F4(v12, v13, v37);
    sub_22C37B3BC();
    *(v10 + 4) = v1 + 2;
    *(v10 + 12) = 2080;
    v1[3] = v9;
    v14 = sub_22C90184C();
    sub_22C36B61C();
    sub_22C771440(v15, v16, MEMORY[0x277D564C0]);
    v17 = sub_22C90B47C();
    sub_22C36F9F4(v17, v18, v37);
    sub_22C37B3BC();
    *(v10 + 14) = v14;
    _os_log_impl(&dword_22C366000, v4, v5, "makeRecommendation() threw error: %s, returning %s", v10, 0x16u);
    swift_arrayDestroy();
    sub_22C36C30C();
    sub_22C3699EC();

    (*(v7 + 8))(v36, v8);
  }

  else
  {

    v19 = sub_22C37170C();
    v20(v19);
  }

  v21 = v1[23];
  v22 = v1[21];
  v23 = v1[4];
  sub_22C90181C();

  v24 = sub_22C90014C();
  sub_22C36C640(v23, 0, 1, v24);
  sub_22C76EDBC(v22, "DateResolver.resolveComponents");

  sub_22C375B18(v25, v26, v27, v28, v29, v30, v31, v32, v35, v36, v37[0], v37[1], v37[2], v37[3], v37[4], v37[5], v37[6], v37[7], v37[8], v38);

  sub_22C369A24();

  return v33();
}

uint64_t sub_22C76DC34()
{
  sub_22C369980();
  v1[2] = v2;
  v1[3] = v0;
  sub_22C3A5908(&qword_27D9BF2C0, &qword_22C925300);
  v1[4] = sub_22C3699D4();
  sub_22C3A5908(&qword_27D9BFE68, &qword_22C925A80);
  v1[5] = sub_22C3699D4();
  v3 = sub_22C90014C();
  v1[6] = v3;
  sub_22C3699B8(v3);
  v1[7] = v4;
  v1[8] = sub_22C36D0D4();
  v1[9] = swift_task_alloc();
  v5 = sub_22C9007EC();
  v1[10] = v5;
  sub_22C3699B8(v5);
  v1[11] = v6;
  v1[12] = sub_22C3699D4();
  type metadata accessor for DateResolver(0);
  v1[13] = sub_22C3699D4();
  v7 = sub_22C9063DC();
  v1[14] = v7;
  sub_22C3699B8(v7);
  v1[15] = v8;
  v1[16] = sub_22C36D0D4();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v9 = sub_22C90063C();
  v1[19] = v9;
  sub_22C3699B8(v9);
  v1[20] = v10;
  v1[21] = sub_22C36D0D4();
  v1[22] = swift_task_alloc();
  v11 = sub_22C90634C();
  v1[23] = v11;
  sub_22C3699B8(v11);
  v1[24] = v12;
  v1[25] = sub_22C36D0D4();
  v1[26] = swift_task_alloc();
  v13 = sub_22C90636C();
  v1[27] = v13;
  sub_22C3699B8(v13);
  v1[28] = v14;
  v1[29] = sub_22C36D0D4();
  v1[30] = swift_task_alloc();
  v15 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C76DF20(uint64_t a1)
{
  v58 = v1;
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v2 = sub_22C37170C();
  v55 = v3;
  v3(v2);
  v4 = sub_22C90635C();
  sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    *sub_22C36D240() = 0;
    v5 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v6, v7, v5, "DateResolver.run", "");
    sub_22C3699EC();
  }

  v8 = sub_22C77238C();
  v9(v8);
  v10 = sub_22C9063AC();
  sub_22C3856A0(v10);
  v1[31] = sub_22C36D704();
  v11 = sub_22C36CA88();
  v12(v11);
  v13 = sub_22C36D264();
  v55(v13);
  v14 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_22C36FCCC();
  v15 = sub_22C90A0EC();
  v16 = [v14 dateFromString_];

  if (v16)
  {
    v17 = v1[22];
    v18 = v1[19];
    v19 = v1[20];
    v20 = v1[2];
    sub_22C9005FC();

    v21 = sub_22C90931C();
    v22 = swift_allocBox();
    v24 = v23;
    (*(v19 + 32))(v23, v17, v18);
    (*(*(v21 - 8) + 104))(v24, *MEMORY[0x277D72990], v21);
    *v20 = v22;
    v25 = *MEMORY[0x277D72A58];
    v26 = sub_22C9093BC();
    sub_22C36985C();
    (*(v27 + 104))(v20, v25, v26);
    sub_22C36DA54();
    goto LABEL_5;
  }

  v34 = sub_22C36FCCC();
  v1[32] = sub_22C76CA60(v34, v35);
  v36 = sub_22C36E2B8();
  v1[33] = v36;
  if (!v36)
  {
    v40 = v1[13];
    v41 = v1[3];

    sub_22C903F8C();
    sub_22C77131C(v41, v40);
    v42 = sub_22C9063CC();
    v43 = sub_22C90AADC();
    v44 = os_log_type_enabled(v42, v43);
    v22 = v1[18];
    v46 = v1[14];
    v45 = v1[15];
    v47 = v1[13];
    if (v44)
    {
      sub_22C36BED8();
      v56 = v22;
      v22 = swift_slowAlloc();
      v48 = sub_22C370060();
      v57 = v48;
      *v22 = 136315138;
      v49 = *v47;
      v50 = v47[1];

      sub_22C771380(v47);
      v51 = sub_22C36F9F4(v49, v50, &v57);

      *(v22 + 4) = v51;
      _os_log_impl(&dword_22C366000, v42, v43, "Not able to convert Input = %s to SiriInference.DateTime object(s).", v22, 0xCu);
      sub_22C36FF94(v48);
      sub_22C36C30C();
      sub_22C3699EC();

      (*(v45 + 8))(v56, v46);
    }

    else
    {

      sub_22C771380(v47);
      (*(v45 + 8))(v22, v46);
    }

    sub_22C9093BC();
    v28 = sub_22C3703AC();
LABEL_5:
    sub_22C36C640(v28, v29, v30, v31);
    sub_22C371CE4();
    sub_22C76EDBC(v22, "DateResolver.run");

    sub_22C369A24();
    sub_22C378644();

    __asm { BRAA            X1, X16 }
  }

  result = sub_22C76EC1C();
  v38 = v1[32];
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x2318B8460](0);
  }

  else
  {
    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v39 = *(v38 + 32);
  }

  v1[34] = v39;
  v1[35] = 1;
  swift_task_alloc();
  sub_22C36CC90();
  v1[36] = v52;
  *v52 = v53;
  sub_22C3786E8(v52);
  sub_22C378644();

  return sub_22C76D444();
}

uint64_t sub_22C76E448()
{
  sub_22C369980();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C76E530()
{
  v87 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = &unk_22C90D000;
  if (sub_22C370B74(v2, 1, v1) == 1)
  {

    result = sub_22C36DD28(v2, &qword_27D9BFE68, &qword_22C925A80);
  }

  else
  {
    v27 = v0[19];
    v28 = v0[4];
    (*(v0[7] + 32))(v0[9], v2, v1);
    sub_22C90078C();
    if (sub_22C370B74(v28, 1, v27) != 1)
    {
      v49 = v0[20];
      v50 = v0[19];
      v51 = v0[9];
      v52 = v0[6];
      v53 = v0[7];
      v80 = v0[4];
      v82 = v0[21];
      v85 = v0[2];

      (*(v53 + 8))(v51, v52);
      v54 = sub_22C36CA88();
      v55(v54);
      v56 = *(v49 + 32);
      v56(v82, v80, v50);
      v57 = sub_22C90931C();
      v25 = swift_allocBox();
      v59 = v58;
      v56(v58, v82, v50);
      (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D72990], v57);
      *v85 = v25;
      v60 = *MEMORY[0x277D72A58];
      v61 = sub_22C9093BC();
      sub_22C36985C();
      (*(v62 + 104))(v85, v60, v61);
      sub_22C36DA54();
      goto LABEL_14;
    }

    sub_22C36DD28(v0[4], &qword_27D9BF2C0, &qword_22C925300);
    sub_22C903F8C();
    v29 = sub_22C36A724();
    v30(v29);
    v31 = sub_22C9063CC();
    v32 = sub_22C90AABC();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[17];
    v35 = v0[15];
    v84 = v0[14];
    v36 = v0[8];
    v37 = v0[9];
    v38 = v0[6];
    v39 = v0[7];
    if (v33)
    {
      sub_22C36BED8();
      v40 = swift_slowAlloc();
      v75 = v32;
      v41 = sub_22C370060();
      v86 = v41;
      *v40 = 136315138;
      sub_22C771440(&qword_27D9BFEC0, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v77 = v34;
      v79 = v37;
      v42 = sub_22C90B47C();
      v44 = v43;
      v45 = *(v39 + 8);
      v45(v36, v38);
      v46 = sub_22C36F9F4(v42, v44, &v86);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_22C366000, v31, v75, "Could not extract a valid date from dateComponents: %s", v40, 0xCu);
      sub_22C36FF94(v41);
      sub_22C386DA4();
      v3 = &unk_22C90D000;
      sub_22C3699EC();

      (*(v35 + 8))(v77, v84);
      result = (v45)(v79, v38);
    }

    else
    {

      v73 = *(v39 + 8);
      v73(v36, v38);
      (*(v35 + 8))(v34, v84);
      v74 = sub_22C36D264();
      result = (v73)(v74);
    }
  }

  v5 = v0[35];
  v6 = v0[32];
  if (v5 == v0[33])
  {
    sub_22C903F8C();

    v7 = sub_22C9063CC();
    v8 = sub_22C90AADC();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[32];
    v11 = v0[15];
    v12 = v0[16];
    v83 = v0[14];
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[10];
    if (v9)
    {
      sub_22C36BED8();
      v81 = v12;
      v16 = swift_slowAlloc();
      v17 = sub_22C370060();
      v18 = v3;
      v19 = v17;
      v86 = v17;
      *v16 = v18[4];
      v20 = sub_22C90184C();
      v76 = v15;
      v78 = v13;
      v21 = MEMORY[0x2318B7AD0](v10, v20);
      v23 = v22;

      v24 = sub_22C36F9F4(v21, v23, &v86);

      *(v16 + 4) = v24;
      _os_log_impl(&dword_22C366000, v7, v8, "Could not resolve dateComponents from dateTime(s)=%s", v16, 0xCu);
      sub_22C36FF94(v19);
      sub_22C3699EC();
      sub_22C36C30C();

      v26 = *(v11 + 8);
      v25 = v11 + 8;
      v26(v81, v83);
      (*(v14 + 8))(v78, v76);
    }

    else
    {

      v67 = *(v11 + 8);
      v25 = v11 + 8;
      v67(v12, v83);
      (*(v14 + 8))(v13, v15);
    }

    sub_22C9093BC();
    v63 = sub_22C3703AC();
LABEL_14:
    sub_22C36C640(v63, v64, v65, v66);
    sub_22C371CE4();
    sub_22C76EDBC(v25, "DateResolver.run");

    sub_22C369A24();
    sub_22C378644();

    __asm { BRAA            X1, X16 }
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v47 = sub_22C36A724();
    result = MEMORY[0x2318B8460](v47);
    v48 = result;
  }

  else
  {
    if (v5 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      __break(1u);
      return result;
    }

    v48 = *(v6 + 8 * v5 + 32);
  }

  v0[34] = v48;
  v0[35] = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  swift_task_alloc();
  sub_22C36CC90();
  v0[36] = v70;
  *v70 = v71;
  sub_22C3786E8(v70);
  sub_22C378644();

  return sub_22C76D444();
}

uint64_t sub_22C76EC1C()
{
  v1 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_22C90083C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9007BC();
  v8 = type metadata accessor for DateResolver(0);
  (*(v5 + 16))(v7, v0 + *(v8 + 40), v4);
  sub_22C9007CC();
  v9 = *(v8 + 24);
  v10 = sub_22C90077C();
  (*(*(v10 - 8) + 16))(v3, v0 + v9, v10);
  sub_22C36C640(v3, 0, 1, v10);
  return sub_22C9007AC();
}

uint64_t sub_22C76EDBC(uint64_t a1, const char *a2)
{
  sub_22C90637C();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v3 = sub_22C90634C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C90636C();
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v16 = v15 - v14;
  sub_22C90365C();
  v17 = sub_22C90635C();
  sub_22C90638C();
  v33 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v32 = v5;

    sub_22C9063BC();

    v18 = sub_22C36A724();
    if (v19(v18) == *MEMORY[0x277D85B00])
    {
      v20 = 0;
      v21 = 0;
      v34 = "[Error] Interval already ended";
    }

    else
    {
      v23 = sub_22C36A724();
      v24(v23);
      v34 = "%s";
      v21 = 2;
      v20 = 1;
    }

    v25 = v12;
    sub_22C36BED8();
    v26 = swift_slowAlloc();
    v27 = sub_22C370060();
    v36 = v27;
    *v26 = v21;
    *(v26 + 1) = v20;
    *(v26 + 2) = 2080;
    sub_22C90366C();
    v28 = sub_22C90AF7C();
    v30 = sub_22C36F9F4(v28, v29, &v36);

    *(v26 + 4) = v30;
    v31 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v17, v33, v31, a2, v34, v26, 0xCu);
    sub_22C36FF94(v27);
    sub_22C3699EC();
    sub_22C36C30C();

    (*(v32 + 8))(v9, v3);
    return (*(v25 + 8))(v16, v10);
  }

  else
  {

    (*(v5 + 8))(v9, v3);
    return (*(v12 + 8))(v16, v10);
  }
}

uint64_t sub_22C76F0F0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22C9015CC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_22C9063DC();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_22C90163C();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_22C90164C();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();
  v8 = sub_22C90166C();
  v3[18] = v8;
  v3[19] = *(v8 - 8);
  v3[20] = swift_task_alloc();
  v9 = sub_22C90063C();
  v3[21] = v9;
  v3[22] = *(v9 - 8);
  v3[23] = swift_task_alloc();
  sub_22C9007EC();
  v3[24] = swift_task_alloc();
  v10 = sub_22C90083C();
  v3[25] = v10;
  v3[26] = *(v10 - 8);
  v3[27] = swift_task_alloc();
  v11 = sub_22C90077C();
  v3[28] = v11;
  v3[29] = *(v11 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BFEE8, &qword_22C925AB0);
  v3[33] = swift_task_alloc();
  v12 = sub_22C90168C();
  v3[34] = v12;
  v3[35] = *(v12 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v13 = sub_22C90634C();
  v3[38] = v13;
  v3[39] = *(v13 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v14 = sub_22C90636C();
  v3[42] = v14;
  v3[43] = *(v14 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C76F5EC, 0, 0);
}

uint64_t sub_22C76F5EC(uint64_t a1)
{
  v2 = v1[43];
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v3 = *(v2 + 8);
  v4 = sub_22C37170C();
  v3(v4);
  v5 = sub_22C90635C();
  sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    *sub_22C36D240() = 0;
    v6 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v7, v8, v6, "DateResolver.resolveComponents", "");
    sub_22C3699EC();
  }

  v9 = sub_22C77238C();
  v10(v9);
  v11 = sub_22C9063AC();
  sub_22C3856A0(v11);
  v1[46] = sub_22C36D704();
  v12 = sub_22C36CA88();
  v13(v12);
  v14 = sub_22C36D264();
  v3(v14);
  swift_task_alloc();
  sub_22C36CC90();
  v1[47] = v15;
  *v15 = v16;
  v15[1] = sub_22C76F798;
  v17 = v1[33];

  return sub_22C770FAC(v17);
}

uint64_t sub_22C76F798()
{
  sub_22C369980();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 384) = v0;

  if (v0)
  {

    v5 = sub_22C76FE20;
  }

  else
  {
    v5 = sub_22C76F8A8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C76F8A8()
{
  v59 = v0;
  v1 = v0[33];
  v2 = v0[34];
  sub_22C7723A0();
  if (v3)
  {
    (*(v0[35] + 104))(v0[37], *MEMORY[0x277D56150], v2);
    sub_22C7723A0();
    if (!v3)
    {
      sub_22C36DD28(v0[33], &qword_27D9BFEE8, &qword_22C925AB0);
    }
  }

  else
  {
    (*(v0[35] + 32))(v0[37], v1, v2);
  }

  v4 = v0[35];
  v46 = v0[34];
  v47 = v0[37];
  v5 = v0[32];
  v45 = v0[36];
  v6 = v0[29];
  v39 = v0[31];
  v40 = v0[30];
  v7 = v0[28];
  v8 = v0[26];
  v41 = v0[25];
  v42 = v0[27];
  v43 = v0[24];
  v57 = v0[23];
  v44 = v0[22];
  v48 = v0[21];
  v49 = v0[16];
  v50 = v0[17];
  v51 = v0[15];
  v53 = v0[14];
  v52 = v0[13];
  v54 = v0[12];
  v9 = v0[5];
  v55 = v0[4];
  v10 = type metadata accessor for DateResolver(0);
  v11 = v10[6];
  v12 = *(v6 + 16);
  v12(v5, v9 + v11, v7);
  v12(v39, v9 + v11, v7);
  v12(v40, v9 + v11, v7);
  (*(v8 + 16))(v42, v9 + v10[10], v41);
  (*(v4 + 16))(v45, v47, v46);
  sub_22C76EC1C();
  (*(v44 + 16))(v57, v9 + v10[9], v48);
  v13 = sub_22C9016AC();
  sub_22C3856A0(v13);
  sub_22C90169C();
  (*(v49 + 104))(v50, *MEMORY[0x277D56130], v51);
  (*(v52 + 104))(v53, *MEMORY[0x277D56128], v54);
  sub_22C90179C();
  v14 = sub_22C90184C();
  sub_22C38C05C();
  sub_22C771440(v15, v16, MEMORY[0x277D56400]);
  v17 = sub_22C909F0C();
  sub_22C37FA10(v17, v18, v17);
  sub_22C903F8C();
  v19 = v55;

  v20 = sub_22C9063CC();
  v21 = sub_22C90AABC();

  v22 = os_log_type_enabled(v20, v21);
  v24 = v0[10];
  v23 = v0[11];
  v25 = v0[9];
  if (v22)
  {
    v56 = v0[11];
    v26 = v0[4];
    sub_22C36BED8();
    v19 = swift_slowAlloc();
    v27 = sub_22C370060();
    v58[0] = v27;
    *v19 = 136315138;
    v0[2] = v26;
    sub_22C36B61C();
    sub_22C771440(v28, v29, MEMORY[0x277D564C0]);
    v30 = sub_22C90B47C();
    sub_22C36F9F4(v30, v31, v58);
    sub_22C37B3BC();
    *(v19 + 4) = v42;
    _os_log_impl(&dword_22C366000, v20, v21, "Making DateTime recommendation for %s", v19, 0xCu);
    sub_22C36FF94(v27);
    sub_22C36C30C();
    sub_22C386DA4();

    (*(v24 + 8))(v56, v25);
  }

  else
  {

    (*(v24 + 8))(v23, v25);
  }

  sub_22C381798();
  sub_22C9015AC();
  sub_22C772330();
  v32 = v0[7];
  v33 = v0[8];
  v34 = v0[6];

  (*(v32 + 8))(v33, v34);
  v35 = sub_22C36FCCC();
  v36(v35);
  (*(v14 + 8))(v44, v43);
  sub_22C76EDBC(v19, "DateResolver.dateResolverMakeRecommendation");

  sub_22C369A24();

  return v37();
}

uint64_t sub_22C76FE20()
{
  v56 = v0;
  sub_22C36C640(v0[33], 1, 1, v0[34]);
  (*(v0[35] + 104))(v0[37], *MEMORY[0x277D56150], v0[34]);
  sub_22C7723A0();
  if (!v1)
  {
    sub_22C36DD28(v0[33], &qword_27D9BFEE8, &qword_22C925AB0);
  }

  v2 = v0[35];
  v44 = v0[34];
  v45 = v0[37];
  v3 = v0[32];
  v43 = v0[36];
  v4 = v0[29];
  v37 = v0[31];
  v38 = v0[30];
  v5 = v0[28];
  v6 = v0[26];
  v39 = v0[25];
  v40 = v0[27];
  v41 = v0[24];
  v54 = v0[23];
  v42 = v0[22];
  v46 = v0[21];
  v47 = v0[16];
  v48 = v0[17];
  v49 = v0[15];
  v50 = v0[13];
  v51 = v0[14];
  v52 = v0[12];
  v7 = v0[5];
  v53 = v0[4];
  v8 = type metadata accessor for DateResolver(0);
  v9 = v8[6];
  v10 = *(v4 + 16);
  v10(v3, v7 + v9, v5);
  v10(v37, v7 + v9, v5);
  v10(v38, v7 + v9, v5);
  (*(v6 + 16))(v40, v7 + v8[10], v39);
  (*(v2 + 16))(v43, v45, v44);
  sub_22C76EC1C();
  (*(v42 + 16))(v54, v7 + v8[9], v46);
  v11 = sub_22C9016AC();
  sub_22C3856A0(v11);
  sub_22C90169C();
  (*(v47 + 104))(v48, *MEMORY[0x277D56130], v49);
  (*(v50 + 104))(v51, *MEMORY[0x277D56128], v52);
  sub_22C90179C();
  v12 = sub_22C90184C();
  sub_22C38C05C();
  sub_22C771440(v13, v14, MEMORY[0x277D56400]);
  v15 = sub_22C909F0C();
  sub_22C37FA10(v15, v16, v15);
  sub_22C903F8C();
  v17 = v53;

  v18 = sub_22C9063CC();
  v19 = sub_22C90AABC();

  v20 = os_log_type_enabled(v18, v19);
  v22 = v0[10];
  v21 = v0[11];
  v23 = v0[9];
  if (v20)
  {
    v24 = v0[4];
    sub_22C36BED8();
    v17 = swift_slowAlloc();
    v25 = sub_22C370060();
    v55[0] = v25;
    *v17 = 136315138;
    v0[2] = v24;
    sub_22C36B61C();
    sub_22C771440(v26, v27, MEMORY[0x277D564C0]);
    v28 = sub_22C90B47C();
    sub_22C36F9F4(v28, v29, v55);
    sub_22C37B3BC();
    *(v17 + 4) = v12;
    _os_log_impl(&dword_22C366000, v18, v19, "Making DateTime recommendation for %s", v17, 0xCu);
    sub_22C36FF94(v25);
    sub_22C36C30C();
    sub_22C386DA4();
  }

  (*(v22 + 8))(v21, v23);
  sub_22C381798();
  sub_22C9015AC();
  sub_22C772330();
  v30 = v0[7];
  v31 = v0[8];
  v32 = v0[6];

  (*(v30 + 8))(v31, v32);
  v33 = sub_22C36FCCC();
  v34(v33);
  (*(v22 + 16))(v41, v40);
  sub_22C76EDBC(v17, "DateResolver.dateResolverMakeRecommendation");

  sub_22C369A24();

  return v35();
}

uint64_t sub_22C77035C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a2;
  v97 = a3;
  v4 = sub_22C3A5908(&qword_27D9BFE68, &qword_22C925A80);
  MEMORY[0x28223BE20](v4 - 8);
  v93 = &v90 - v5;
  v6 = sub_22C9063DC();
  v7 = *(v6 - 8);
  v95 = v6;
  v96 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v92 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v91 = &v90 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v90 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v90 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v90 - v18;
  v20 = sub_22C3A5908(&qword_27D9BFEC8, &qword_22C925A90);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = (&v90 - v25);
  v27 = *(v21 + 16);
  v27(&v90 - v25, a1, v20);
  v28 = (*(v21 + 88))(v26, v20);
  if (v28 == *MEMORY[0x277D56080])
  {
    (*(v21 + 96))(v26, v20);
    v29 = *v26;
    sub_22C903F8C();

    v30 = sub_22C9063CC();
    v31 = sub_22C90AABC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v98 = v29;
      v99 = v33;
      *v32 = 136315138;
      sub_22C90184C();
      sub_22C771440(&qword_27D9BFED0, MEMORY[0x277D56498], MEMORY[0x277D564C0]);
      v34 = sub_22C90B47C();
      v36 = sub_22C36F9F4(v34, v35, &v99);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_22C366000, v30, v31, "Confidently resolved to %s", v32, 0xCu);
      sub_22C36FF94(v33);
      MEMORY[0x2318B9880](v33, -1, -1);
      MEMORY[0x2318B9880](v32, -1, -1);
    }

    (*(v96 + 8))(v19, v95);
LABEL_9:
    v45 = v97;
    sub_22C90181C();

    v46 = sub_22C90014C();
    v47 = v45;
    return sub_22C36C640(v47, 0, 1, v46);
  }

  if (v28 == *MEMORY[0x277D56068])
  {
    (*(v21 + 96))(v26, v20);
    v37 = *v26;
    sub_22C903F8C();

    v38 = sub_22C9063CC();
    v39 = sub_22C90AABC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v98 = v37;
      v99 = v41;
      *v40 = 136315138;
      sub_22C90184C();
      sub_22C771440(&qword_27D9BFED0, MEMORY[0x277D56498], MEMORY[0x277D564C0]);
      v42 = sub_22C90B47C();
      v44 = sub_22C36F9F4(v42, v43, &v99);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_22C366000, v38, v39, "Needs Confirmation to %s", v40, 0xCu);
      sub_22C36FF94(v41);
      MEMORY[0x2318B9880](v41, -1, -1);
      MEMORY[0x2318B9880](v40, -1, -1);
    }

    (*(v96 + 8))(v17, v95);
    goto LABEL_9;
  }

  if (v28 == *MEMORY[0x277D56070])
  {
    (*(v21 + 96))(v26, v20);
    v49 = *v26;
    sub_22C903F8C();

    v50 = sub_22C9063CC();
    v51 = sub_22C90AADC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v99 = v53;
      *v52 = 134218242;
      *(v52 + 4) = sub_22C36E2B8();

      *(v52 + 12) = 2080;
      v54 = sub_22C36E2B8();
      if (v54)
      {
        sub_22C633A2C();
        if ((v49 & 0xC000000000000001) != 0)
        {
          v54 = MEMORY[0x2318B8460](0, v49);
        }

        else
        {
        }
      }

      v98 = v54;
      sub_22C3A5908(&qword_27D9BFEE0, &qword_22C925AA8);
      v55 = sub_22C90A1AC();
      v57 = sub_22C36F9F4(v55, v56, &v99);

      *(v52 + 14) = v57;
      _os_log_impl(&dword_22C366000, v50, v51, "Found %ld recommendations, returning the 1st one by default %s", v52, 0x16u);
      sub_22C36FF94(v53);
      MEMORY[0x2318B9880](v53, -1, -1);
      MEMORY[0x2318B9880](v52, -1, -1);
    }

    else
    {
    }

    (*(v96 + 8))(v14, v95);
    v68 = sub_22C36E2B8();
    v69 = v97;
    v70 = v93;
    if (v68)
    {
      sub_22C633A2C();
      if ((v49 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2318B8460](0, v49);
      }

      else
      {
      }

      sub_22C90181C();

      v71 = sub_22C90014C();
      sub_22C36C640(v70, 0, 1, v71);
      (*(*(v71 - 8) + 32))(v69, v70, v71);
    }

    else
    {

      v71 = sub_22C90014C();
      sub_22C36C640(v70, 1, 1, v71);
      sub_22C90181C();
      if (sub_22C370B74(v70, 1, v71) != 1)
      {
        sub_22C36DD28(v70, &qword_27D9BFE68, &qword_22C925A80);
      }
    }

    sub_22C90014C();
    v47 = v69;
    v46 = v71;
    return sub_22C36C640(v47, 0, 1, v46);
  }

  v58 = v94;
  if (v28 == *MEMORY[0x277D56078])
  {
    v59 = v91;
    sub_22C903F8C();

    v60 = sub_22C9063CC();
    v61 = sub_22C90AADC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v98 = v58;
      v99 = v63;
      *v62 = 136315138;
      sub_22C90184C();
      sub_22C771440(&qword_27D9BFED0, MEMORY[0x277D56498], MEMORY[0x277D564C0]);
      v64 = sub_22C90B47C();
      v66 = sub_22C36F9F4(v64, v65, &v99);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_22C366000, v60, v61, "Made No recommendation, returning original DateTimeValue as is %s", v62, 0xCu);
      sub_22C36FF94(v63);
      MEMORY[0x2318B9880](v63, -1, -1);
      MEMORY[0x2318B9880](v62, -1, -1);
    }

    (*(v96 + 8))(v59, v95);
    v67 = v97;
    sub_22C90181C();
    v46 = sub_22C90014C();
    v47 = v67;
    return sub_22C36C640(v47, 0, 1, v46);
  }

  v72 = v92;
  sub_22C903F8C();
  v27(v24, a1, v20);

  v73 = sub_22C9063CC();
  v74 = sub_22C90AADC();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    LODWORD(v91) = v74;
    v76 = v75;
    v93 = swift_slowAlloc();
    v99 = v93;
    *v76 = 136315394;
    sub_22C7713DC();
    v77 = sub_22C90B47C();
    v79 = v78;
    v80 = *(v21 + 8);
    v80(v24, v20);
    v81 = sub_22C36F9F4(v77, v79, &v99);
    v82 = v94;

    *(v76 + 4) = v81;
    *(v76 + 12) = 2080;
    v98 = v82;
    sub_22C90184C();
    sub_22C771440(&qword_27D9BFED0, MEMORY[0x277D56498], MEMORY[0x277D564C0]);
    v83 = sub_22C90B47C();
    v85 = sub_22C36F9F4(v83, v84, &v99);

    *(v76 + 14) = v85;
    _os_log_impl(&dword_22C366000, v73, v91, "Unhandled recommendation of %s, returning original DateTimeValue as is %s", v76, 0x16u);
    v86 = v93;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v86, -1, -1);
    MEMORY[0x2318B9880](v76, -1, -1);

    v87 = v80;
    (*(v96 + 8))(v92, v95);
  }

  else
  {

    v87 = *(v21 + 8);
    v87(v24, v20);
    (*(v96 + 8))(v72, v95);
  }

  v88 = v97;
  sub_22C90181C();
  v89 = sub_22C90014C();
  sub_22C36C640(v88, 0, 1, v89);
  return (v87)(v26, v20);
}