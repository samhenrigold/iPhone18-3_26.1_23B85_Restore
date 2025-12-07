uint64_t PrescribedPlanGenerator.telemetryTarget.getter()
{
  sub_22C90645C();
  sub_22C36985C();
  v0 = sub_22C36BA00();

  return v1(v0);
}

uint64_t sub_22C5D97FC(uint64_t a1)
{
  v2 = sub_22C5D9E88();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C5D9838(uint64_t a1)
{
  v2 = sub_22C5D9E88();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C5D9890()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C5D991C;

  return PrescribedPlanGenerator.setup(sessionState:)();
}

uint64_t sub_22C5D991C()
{
  sub_22C369980();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22C5D9A0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C5D9AB0;

  return PrescribedPlanGenerator.handle(_:plannerServiceContext:)();
}

uint64_t sub_22C5D9AB0()
{
  sub_22C369980();
  v3 = v2;
  v7 = *v1;

  v5 = *(v7 + 8);
  if (!v0)
  {
    v4 = v3;
  }

  return v5(v4);
}

unint64_t sub_22C5D9BC4(uint64_t a1)
{
  result = sub_22C5D9BEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C5D9BEC()
{
  result = qword_27D9BEE90;
  if (!qword_27D9BEE90)
  {
    type metadata accessor for PrescribedPlanGenerator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE90);
  }

  return result;
}

uint64_t sub_22C5D9C70(uint64_t a1)
{
  result = sub_22C907BAC();
  if (v2 <= 0x3F)
  {
    result = sub_22C5D9CF4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22C5D9CF4()
{
  result = qword_281433338;
  if (!qword_281433338)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281433338);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrescribedPlanGenerator.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C5D9E34()
{
  result = qword_27D9BEE98;
  if (!qword_27D9BEE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEE98);
  }

  return result;
}

unint64_t sub_22C5D9E88()
{
  result = qword_27D9BEEA0;
  if (!qword_27D9BEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEEA0);
  }

  return result;
}

uint64_t sub_22C5D9EFC()
{
  *(v1 - 96) = v0;

  return sub_22C90708C();
}

void sub_22C5D9F30()
{

  sub_22C5916E4();
}

void sub_22C5D9F54()
{

  sub_22C5916E4();
}

uint64_t sub_22C5D9F78(uint64_t a1)
{

  return sub_22C90766C();
}

uint64_t sub_22C5D9F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C90708C();
}

uint64_t sub_22C5D9FC0()
{

  return sub_22C370B74(v0, 1, v1);
}

uint64_t sub_22C5DA04C(uint64_t a1)
{

  return sub_22C9070BC();
}

uint64_t sub_22C5DA068@<X0>(uint64_t a2@<X8>)
{
  *v3 = v2;
  v3[1] = a2;

  return sub_22C9068FC();
}

uint64_t sub_22C5DA084()
{

  return sub_22C90882C();
}

uint64_t sub_22C5DA0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C36C640(a1, a2, a3, v3);
  *(v5 - 104) = v4;
  return result;
}

uint64_t SuggestedInvocationPlanGenerator.init(suggestedInvocation:contextRetrieval:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_22C9081FC();
  sub_22C36985C();
  (*(v6 + 32))(a3, a1);
  v7 = a3 + *(type metadata accessor for SuggestedInvocationPlanGenerator(0) + 20);

  return sub_22C36C730(a2, v7);
}

uint64_t type metadata accessor for SuggestedInvocationPlanGenerator(uint64_t a1)
{
  result = qword_281430680;
  if (!qword_281430680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SuggestedInvocationPlanGenerator.handle(_:plannerServiceContext:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_22C9089DC();
  v2[9] = v3;
  sub_22C3699B8(v3);
  v2[10] = v4;
  v2[11] = sub_22C3699D4();
  v5 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v5);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = sub_22C90880C();
  v2[14] = v6;
  sub_22C3699B8(v6);
  v2[15] = v7;
  v2[16] = sub_22C3699D4();
  v8 = sub_22C908A0C();
  v2[17] = v8;
  sub_22C3699B8(v8);
  v2[18] = v9;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v10 = sub_22C902D3C();
  sub_22C369914(v10);
  v2[21] = sub_22C3699D4();
  v11 = sub_22C90888C();
  v2[22] = v11;
  sub_22C3699B8(v11);
  v2[23] = v12;
  v2[24] = sub_22C3699D4();
  v13 = sub_22C9088CC();
  v2[25] = v13;
  sub_22C3699B8(v13);
  v2[26] = v14;
  v2[27] = sub_22C3699D4();
  v15 = sub_22C90700C();
  sub_22C369914(v15);
  v2[28] = sub_22C3699D4();
  v16 = sub_22C9068CC();
  v2[29] = v16;
  sub_22C3699B8(v16);
  v2[30] = v17;
  v2[31] = sub_22C3699D4();
  v18 = sub_22C3A5908(&qword_27D9BE068, &qword_22C91CE40);
  sub_22C369914(v18);
  v2[32] = sub_22C3699D4();
  v19 = sub_22C90769C();
  sub_22C369914(v19);
  v2[33] = sub_22C3699D4();
  v20 = sub_22C90654C();
  v2[34] = v20;
  sub_22C3699B8(v20);
  v2[35] = v21;
  v2[36] = sub_22C3699D4();
  v22 = sub_22C901FAC();
  v2[37] = v22;
  sub_22C3699B8(v22);
  v2[38] = v23;
  v2[39] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C5DA558, 0, 0);
}

uint64_t sub_22C5DA558()
{
  sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
  v1 = sub_22C9070DC();
  sub_22C3699B8(v1);
  *(swift_allocObject() + 16) = xmmword_22C90F800;
  sub_22C9087AC();
  sub_22C90882C();

  sub_22C9072AC();
  sub_22C90877C();
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  sub_22C9068AC();
  (*(v5 + 8))(v2, v4);
  v6 = sub_22C90212C();
  v7 = sub_22C370B74(v3, 1, v6);
  v8 = *(v0 + 256);
  if (v7 == 1)
  {
    v9 = sub_22C36DD28(*(v0 + 256), &qword_27D9BE068, &qword_22C91CE40);
  }

  else
  {
    sub_22C90211C();
    v9 = (*(*(v6 - 8) + 8))(v8, v6);
  }

  v10 = *(v0 + 288);
  v11 = *(v0 + 280);
  v39 = *(v0 + 272);
  v12 = *(v0 + 184);
  v41 = *(v0 + 192);
  v42 = *(v0 + 176);
  v48 = *(v0 + 136);
  v43 = *(v0 + 128);
  v44 = *(v0 + 120);
  v45 = *(v0 + 112);
  v46 = *(v0 + 104);
  v47 = *(v0 + 96);
  MEMORY[0x2318B4B50](v9);
  sub_22C90766C();
  sub_22C909F0C();
  sub_22C906AAC();
  v13 = (*(v11 + 104))(v10, *MEMORY[0x277D1DA78], v39);
  MEMORY[0x2318B4570](v13);
  MEMORY[0x2318B4580]();
  sub_22C9070BC();
  sub_22C90708C();
  (*(v12 + 104))(v41, *MEMORY[0x277D1E6B0], v42);
  sub_22C9088AC();
  sub_22C90889C();
  sub_22C90878C();
  v14 = sub_22C9087DC();
  (*(v44 + 8))(v43, v45);
  sub_22C3A5950(v14);

  sub_22C3BD74C(v46, v47);
  if (sub_22C370B74(v47, 1, v48) == 1)
  {
    v16 = *(v0 + 208);
    v15 = *(v0 + 216);
    v17 = *(v0 + 200);
    v18 = *(v0 + 104);
    sub_22C36DD28(*(v0 + 96), &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C90735C();
    sub_22C3A5F00();
    swift_allocError();
    v19 = *(v0 + 48);
    v20 = *(v0 + 32);
    *v21 = *(v0 + 16);
    *(v21 + 16) = v20;
    *(v21 + 32) = v19;
    swift_willThrow();
    sub_22C36DD28(v18, &qword_27D9BA808, &qword_22C90C6E0);
    (*(v16 + 8))(v15, v17);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 216);
    v25 = *(v0 + 208);
    v37 = *(v0 + 200);
    v38 = *(v0 + 160);
    v26 = *(v0 + 144);
    v27 = *(v0 + 152);
    v28 = *(v0 + 136);
    v29 = *(v0 + 96);
    v31 = *(v0 + 80);
    v30 = *(v0 + 88);
    v36 = *(v0 + 72);
    sub_22C36DD28(*(v0 + 104), &qword_27D9BA808, &qword_22C90C6E0);
    v40 = *(v26 + 32);
    v40(v27, v29, v28);
    (*(v25 + 16))(v30, v24, v37);
    (*(v31 + 104))(v30, *MEMORY[0x277D1E6F8], v36);
    sub_22C90893C();
    (*(v31 + 8))(v30, v36);
    v32 = v28;
    (*(v26 + 8))(v27, v28);
    sub_22C3A5908(&qword_27D9BAE10, &unk_22C91DB10);
    v33 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_22C90F800;
    v40(v34 + v33, v38, v32);
    (*(v25 + 8))(v24, v37);

    v35 = *(v0 + 8);

    return v35(v34);
  }
}

uint64_t SuggestedInvocationPlanGenerator.telemetryTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D930];
  sub_22C90645C();
  sub_22C36985C();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_22C5DADAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3B00E8;

  return SuggestedInvocationPlanGenerator.setup(sessionState:)();
}

uint64_t sub_22C5DAE38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C3B0268;

  return SuggestedInvocationPlanGenerator.handle(_:plannerServiceContext:)(a1);
}

unint64_t sub_22C5DAEE4(uint64_t a1)
{
  result = sub_22C5DAF0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C5DAF0C()
{
  result = qword_27D9BEEF0;
  if (!qword_27D9BEEF0)
  {
    type metadata accessor for SuggestedInvocationPlanGenerator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEEF0);
  }

  return result;
}

unint64_t sub_22C5DAF90(uint64_t a1)
{
  result = sub_22C9081FC();
  if (v2 <= 0x3F)
  {
    result = sub_22C5D9CF4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22C5DB014()
{
  sub_22C36BA7C();
  v5 = v4;
  sub_22C369A48();
  sub_22C903CCC();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C3772FC();
  v8 = MEMORY[0x28223BE20](v7);
  sub_22C5E7710(v8, v9, v10, v11, v12, v13, v14, v15, v39);
  MEMORY[0x28223BE20](v16);
  sub_22C377318();
  if (v0 != v5 && (sub_22C5E7BD4(), v17))
  {
    sub_22C3882D8();
    if (v19)
    {
      while (2)
      {
        sub_22C36C050();
LABEL_11:
        v21 = sub_22C5E7500();
        v3(v21);
        v22 = sub_22C5E7604();
        v23(v22);
        v24 = *(v5 + 40);
        sub_22C5E742C();
        v26 = sub_22C5E72C8(&qword_281435738, v25, MEMORY[0x277D1F0E8]);
        sub_22C5E7A80(v26);
        sub_22C5E7964();
        do
        {
          sub_22C5E75E8();
          if ((v27 & 1) == 0)
          {
            v37 = sub_22C5E7AF0();
            v38(v37);
            goto LABEL_18;
          }

          v28 = sub_22C5E75CC();
          v3(v28);
          sub_22C5E742C();
          sub_22C5E72C8(&qword_27D9BF080, v29, MEMORY[0x277D1F0F0]);
          v30 = sub_22C5E7874();
          sub_22C5E7D3C(v30, v31, v32, v33);
          v34 = sub_22C5E7950();
          v1(v34);
        }

        while ((v24 & 1) == 0);
        v35 = sub_22C5E7AF0();
        v1(v35);
        sub_22C5E76F8();
        if (v36)
        {
          continue;
        }

        break;
      }
    }

    v20 = v2;
    while (1)
    {
      v2 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v2 >= v18)
      {
        goto LABEL_18;
      }

      ++v20;
      if (*(v40 + 8 * v2))
      {
        sub_22C375A38();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    sub_22C36CC48();
  }
}

void sub_22C5DB210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v29 = sub_22C90399C();
  sub_22C369824();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  sub_22C369838();
  v35 = v34 - v33;
  v36 = sub_22C9039FC();
  sub_22C369824();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  sub_22C3698A8();
  v102 = v40;
  v41 = sub_22C36BA0C();
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(v41);
  sub_22C36985C();
  MEMORY[0x28223BE20](v42);
  sub_22C369ABC();
  v104 = v43 - v44;
  MEMORY[0x28223BE20](v45);
  v105 = v88 - v46;
  v111 = sub_22C3A5908(&qword_27D9BAA78, &unk_22C90D110);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v47);
  sub_22C37FCFC();
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(0);
  sub_22C369824();
  MEMORY[0x28223BE20](v48);
  sub_22C3772FC();
  MEMORY[0x28223BE20](v49);
  sub_22C5E7BA4();
  MEMORY[0x28223BE20](v50);
  if (v28 == v26 || v28[2] != v26[2])
  {
    goto LABEL_34;
  }

  v101 = v29;
  v51 = 0;
  sub_22C5E7AA0((v26 + 7));
  v99 = (v31 + 8);
  v95 = v31 + 32;
  v98 = (v38 + 8);
  v93 = v38 + 32;
  v96 = v35;
  v100 = v36;
  v92 = v53;
  v91 = v52;
  if (!v55)
  {
    goto LABEL_5;
  }

  do
  {
    v88[0] = (v55 - 1) & v55;
LABEL_10:
    v90 = v28;
    v89 = v54;
    sub_22C380560();
    v60 = v59;
    sub_22C5E7218(v61, v59);
    sub_22C3827F0();
    v88[1] = v60;
    sub_22C5E7270(v60, v20);
    sub_22C90B62C();
    v62 = sub_22C9097DC();
    sub_22C5E7D58(v62, v63);

    v64 = (v20 + *(DecorationTupleParameter + 20));
    v112 = *v64;
    MEMORY[0x2318B8B10]();
    DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
    v65 = *(DecorationEntity + 20);
    v109 = v64;
    v107 = v65;
    v66 = sub_22C7E5918();
    sub_22C90B62C();
    MEMORY[0x2318B8B10](v66);
    v67 = sub_22C90B66C();
    MEMORY[0x2318B8B10](v67);
    sub_22C90B66C();
    sub_22C386A8C();
    v70 = v69 & ~v68;
    v71 = v110;
    if (((*(v110 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
    {
LABEL_33:
      sub_22C5E734C();
      sub_22C5E7168();
LABEL_34:
      sub_22C36CC48();
      return;
    }

    v72 = ~v68;
    v106 = v26;
    v94 = v20;
    while (1)
    {
      sub_22C380560();
      sub_22C5E7218(v73, v22);
      if ((sub_22C9097CC() & 1) == 0 || (v74 = (v22 + *(DecorationTupleParameter + 20)), *v74 != v112))
      {
        sub_22C5E734C();
        sub_22C5E7168();
        goto LABEL_19;
      }

      v75 = *(v111 + 48);
      v71 = type metadata accessor for QueryDecorationEntityValue;
      sub_22C5E7218(v74 + *(DecorationEntity + 20), v21);
      sub_22C5E7218(v109 + v107, v21 + v75);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        break;
      }

      sub_22C5E74A0();
      sub_22C5580B8();
      sub_22C5E7218(v80, v81);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_22C5E734C();
        sub_22C5E7168();
        sub_22C36BA4C();
        v83 = &v114;
        goto LABEL_26;
      }

      sub_22C36BA4C();
      v84 = v102;
      v85 = v100;
      v86(v102, v21 + v75, v100);
      v97 = sub_22C9039EC();
      v26 = v98;
      v87 = v84;
      v71 = *v98;
      (*v98)(v87, v85);
      sub_22C5E734C();
      sub_22C5E7168();
      sub_22C5E7DCC();
      v71();
LABEL_29:
      sub_22C5E78B8();
      sub_22C5E7E28();
      if (v97)
      {
        goto LABEL_30;
      }

LABEL_19:
      v70 = (v70 + 1) & v72;
      if (((*(v71 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_22C5E74A0();
      sub_22C5580B8();
      sub_22C5E7218(v77, v78);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_22C5E734C();
        sub_22C5E7168();
        sub_22C36BA4C();
        v83 = &a9;
LABEL_26:
        v82(type metadata accessor for QueryDecorationEntityValue, *(v83 - 32));
LABEL_27:
        sub_22C36DD28(v21, &qword_27D9BAA78, &unk_22C90D110);
        sub_22C5E7E28();
        goto LABEL_19;
      }

      sub_22C36BA4C();
      v71 = v101;
      v79(v96, v21 + v75, v101);
      v97 = sub_22C90393C();
      v26 = *v99;
      sub_22C5E7DCC();
      (v26)();
      sub_22C5E734C();
      sub_22C5E7168();
      (v26)(v104, v71);
      v20 = v94;
      goto LABEL_29;
    }

    sub_22C5E734C();
    sub_22C5E7168();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_27;
    }

    sub_22C5E78B8();
    v26 = v106;
LABEL_30:
    sub_22C5E734C();
    sub_22C5E7168();
    v28 = v90;
    v54 = v89;
    v53 = v92;
    v52 = v91;
    v55 = v88[0];
  }

  while (v88[0]);
LABEL_5:
  v56 = v51;
  while (1)
  {
    v51 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v51 >= v52)
    {
      goto LABEL_34;
    }

    ++v56;
    if (*(v53 + 8 * v51))
    {
      sub_22C375A38();
      v88[0] = v58 & v57;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_22C5DB9D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_12:
    v7 &= v7 - 1;
    sub_22C90B62C();
    MEMORY[0x2318B8B10](0);
    result = sub_22C90B66C();
    v10 = result & ~(-1 << *(a2 + 32));
    if (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return 1;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_22C5DBAE4()
{
  sub_22C3806F4();
  if (v0 == v1 || (v2 = v1, *(v0 + 16) != *(v1 + 16)))
  {
LABEL_23:
    sub_22C5E78F0();
    return;
  }

  v3 = 0;
  sub_22C36AD3C();
  v7 = (v6 + 63) >> 6;
  v8 = v2 + 56;
  if ((v5 & v4) != 0)
  {
    do
    {
      sub_22C36C050();
      v32 = v11;
LABEL_10:
      v16 = *(v9 + 48) + 24 * (v10 | (v3 << 6));
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      sub_22C90B62C();
      MEMORY[0x2318B8B30](v17 >> 14);
      v20 = v18 >> 14;
      MEMORY[0x2318B8B30](v20);
      MEMORY[0x2318B8B10](v19);
      v21 = sub_22C90B66C();
      v22 = -1 << *(v2 + 32);
      v23 = v21 & ~v22;
      if (((*(v8 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_23;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(v2 + 48) + 24 * v23;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = *(v25 + 16);
        v29 = v27 >> 14;
        v30 = v17 >> 14 == v26 >> 14 && v29 == v20;
        if (v30 && v28 == v19)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v8 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    while (v32);
  }

  v12 = v3;
  while (1)
  {
    v3 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      goto LABEL_23;
    }

    sub_22C5E79B0();
    if (v13)
    {
      sub_22C375A38();
      v32 = v15 & v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_22C5DBC6C()
{
  sub_22C36BA7C();
  v5 = v4;
  sub_22C369A48();
  sub_22C90952C();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C3772FC();
  v8 = MEMORY[0x28223BE20](v7);
  sub_22C5E7710(v8, v9, v10, v11, v12, v13, v14, v15, v39);
  MEMORY[0x28223BE20](v16);
  sub_22C377318();
  if (v0 != v5 && (sub_22C5E7BD4(), v17))
  {
    sub_22C3882D8();
    if (v19)
    {
      while (2)
      {
        sub_22C36C050();
LABEL_11:
        v21 = sub_22C5E7500();
        v3(v21);
        v22 = sub_22C5E7604();
        v23(v22);
        v24 = *(v5 + 40);
        sub_22C386278();
        v26 = sub_22C5E72C8(&qword_28142FA80, v25, MEMORY[0x277D72D68]);
        sub_22C5E7A80(v26);
        sub_22C5E7964();
        do
        {
          sub_22C5E75E8();
          if ((v27 & 1) == 0)
          {
            v37 = sub_22C5E7AF0();
            v38(v37);
            goto LABEL_18;
          }

          v28 = sub_22C5E75CC();
          v3(v28);
          sub_22C386278();
          sub_22C5E72C8(&qword_28142FA78, v29, MEMORY[0x277D72D70]);
          v30 = sub_22C5E7874();
          sub_22C5E7D3C(v30, v31, v32, v33);
          v34 = sub_22C5E7950();
          v1(v34);
        }

        while ((v24 & 1) == 0);
        v35 = sub_22C5E7AF0();
        v1(v35);
        sub_22C5E76F8();
        if (v36)
        {
          continue;
        }

        break;
      }
    }

    v20 = v2;
    while (1)
    {
      v2 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v2 >= v18)
      {
        goto LABEL_18;
      }

      ++v20;
      if (*(v40 + 8 * v2))
      {
        sub_22C375A38();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    sub_22C36CC48();
  }
}

void sub_22C5DBE68()
{
  sub_22C36BA7C();
  v5 = v4;
  sub_22C369A48();
  sub_22C902D0C();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C3772FC();
  v8 = MEMORY[0x28223BE20](v7);
  sub_22C5E7710(v8, v9, v10, v11, v12, v13, v14, v15, v39);
  MEMORY[0x28223BE20](v16);
  sub_22C377318();
  if (v0 != v5 && (sub_22C5E7BD4(), v17))
  {
    sub_22C3882D8();
    if (v19)
    {
      while (2)
      {
        sub_22C36C050();
LABEL_11:
        v21 = sub_22C5E7500();
        v3(v21);
        v22 = sub_22C5E7604();
        v23(v22);
        v24 = *(v5 + 40);
        sub_22C5E73E4();
        v26 = sub_22C5E72C8(&qword_27D9BAAA8, v25, MEMORY[0x277D1D808]);
        sub_22C5E7A80(v26);
        sub_22C5E7964();
        do
        {
          sub_22C5E75E8();
          if ((v27 & 1) == 0)
          {
            v37 = sub_22C5E7AF0();
            v38(v37);
            goto LABEL_18;
          }

          v28 = sub_22C5E75CC();
          v3(v28);
          sub_22C5E73E4();
          sub_22C5E72C8(&qword_27D9BC488, v29, MEMORY[0x277D1D810]);
          v30 = sub_22C5E7874();
          sub_22C5E7D3C(v30, v31, v32, v33);
          v34 = sub_22C5E7950();
          v1(v34);
        }

        while ((v24 & 1) == 0);
        v35 = sub_22C5E7AF0();
        v1(v35);
        sub_22C5E76F8();
        if (v36)
        {
          continue;
        }

        break;
      }
    }

    v20 = v2;
    while (1)
    {
      v2 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v2 >= v18)
      {
        goto LABEL_18;
      }

      ++v20;
      if (*(v40 + 8 * v2))
      {
        sub_22C375A38();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    sub_22C36CC48();
  }
}

void sub_22C5DC064()
{
  sub_22C36BA7C();
  v3 = v2;
  sub_22C3704C4();
  v67 = sub_22C908C5C();
  sub_22C369824();
  v66 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  v72 = v6;
  sub_22C36BA0C();
  v71 = sub_22C9069BC();
  sub_22C369824();
  v65 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  sub_22C5E7AA0(v9);
  v10 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  v11 = sub_22C369914(v10);
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v12);
  sub_22C377318();
  if (v0 == v3 || *(v0 + 16) != *(v3 + 16))
  {
LABEL_35:
    sub_22C36CC48();
  }

  else
  {
    v14 = 0;
    v15 = v0 + 56;
    v16 = 1 << *(v0 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v0 + 56);
    v19 = (v16 + 63) >> 6;
    v20 = (v65 + 32);
    v69 = v13;
    v64 = v1;
    v63 = v3;
    v59 = v0;
    v58 = v0 + 56;
    v57 = v19;
    v62 = v3 + 56;
    if (v18)
    {
LABEL_7:
      v21 = __clz(__rbit64(v18));
      v60 = (v18 - 1) & v18;
LABEL_13:
      v61 = v14;
      v26 = *(*(v0 + 48) + 8 * (v21 | (v14 << 6)));
      sub_22C90B62C();
      v27 = 1 << *(v26 + 32);
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v29 = v28 & *(v26 + 64);
      v30 = (v27 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v31 = 0;
      v32 = 0;
      v33 = v67;
      for (i = v30; ; v30 = i)
      {
        v73 = v31;
        if (!v29)
        {
          break;
        }

        v34 = v32;
LABEL_24:
        v36 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v37 = v36 | (v34 << 6);
        (*(v65 + 16))(v70, *(v26 + 48) + *(v65 + 72) * v37, v71);
        (*(v66 + 16))(v72, *(v26 + 56) + *(v66 + 72) * v37, v33);
        v30 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
        v38 = *(v30 + 48);
        v35 = v69;
        v20 = (v65 + 32);
        (*(v65 + 32))(v69, v70, v71);
        v39 = v69 + v38;
        v33 = v67;
        (*(v66 + 32))(v39, v72, v67);
        sub_22C387310(v69);
        v1 = v64;
LABEL_25:
        sub_22C5E71BC(v35, v1, &qword_27D9BF108, &unk_22C921F70);
        sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
        v40 = sub_22C36A024();
        sub_22C36D3E0(v40);
        if (v41)
        {

          sub_22C5E7D7C();
          v52 = sub_22C90B66C();
          v53 = ~(-1 << *(v63 + 32));
          do
          {
            v54 = v52 & v53;
            if (((*(v62 + (((v52 & v53) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v52 & v53)) & 1) == 0)
            {

              goto LABEL_35;
            }

            sub_22C74B664();
            v56 = v55;

            v52 = v54 + 1;
          }

          while ((v56 & 1) == 0);

          v0 = v59;
          v14 = v61;
          v15 = v58;
          v19 = v57;
          v18 = v60;
          if (v60)
          {
            goto LABEL_7;
          }

          goto LABEL_8;
        }

        v42 = *(v30 + 48);
        (*v20)(v70, v1, v71);
        sub_22C36BA4C();
        v43(v72, v1 + v42, v33);
        sub_22C5E79F8();
        sub_22C5E73B8();
        sub_22C5E72C8(&qword_27D9BAA98, v44, MEMORY[0x277D1DCF8]);
        sub_22C387D60();
        sub_22C909F8C();
        sub_22C36BA4C();
        v45(v70, v71);
        sub_22C5E7388();
        sub_22C5E72C8(&qword_27D9BAA90, v46, MEMORY[0x277D1E970]);
        sub_22C387D60();
        sub_22C909F8C();
        sub_22C36BA4C();
        v47(v72, v33);
        v31 = sub_22C90B66C() ^ v73;
      }

      v35 = v69;
      while (1)
      {
        v34 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v34 >= v30)
        {
          sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
          v48 = sub_22C5E7874();
          sub_22C374D84(v48, v49, v50, v51);
          v29 = 0;
          goto LABEL_25;
        }

        v29 = *(v26 + 64 + 8 * v34);
        ++v32;
        if (v29)
        {
          v32 = v34;
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v23 >= v19)
        {
          goto LABEL_35;
        }

        ++v22;
        if (*(v15 + 8 * v23))
        {
          sub_22C375A38();
          v60 = v25 & v24;
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }
}

void static RequirementStatus.== infix(_:_:)()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v6 = sub_22C9026DC();
  sub_22C369824();
  v25 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  type metadata accessor for RequirementStatus(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  sub_22C5E7BA4();
  MEMORY[0x28223BE20](v13);
  v15 = (&v24 - v14);
  v16 = sub_22C3A5908(&qword_27D9BEEF8, &qword_22C9215C0);
  sub_22C369914(v16);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  sub_22C3721C8();
  v19 = *(v18 + 56);
  sub_22C5E7218(v5, v0);
  sub_22C5E7218(v3, v0 + v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C3767B4();
      sub_22C5E7218(v0, v1);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = v25;
        (*(v25 + 32))(v11, v0 + v19, v6);
        sub_22C9026CC();
        v22 = *(v21 + 8);
        v22(v11, v6);
        v22(v1, v6);
LABEL_12:
        sub_22C5E73FC();
        sub_22C5E7168();
        goto LABEL_13;
      }

      (*(v25 + 8))(v1, v6);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_22C3767B4();
    sub_22C5E7218(v0, v15);
    v23 = *v15;
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C5DB9D8(v23, *(v0 + v19));

      goto LABEL_12;
    }
  }

  sub_22C36DD28(v0, &qword_27D9BEEF8, &qword_22C9215C0);
LABEL_13:
  sub_22C36CC48();
}

uint64_t type metadata accessor for RequirementStatus(uint64_t a1)
{
  result = qword_27D9BEFD0;
  if (!qword_27D9BEFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C5DCA48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6569667369746173 && a2 == 0xE900000000000064;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x800000022C932E50 == a2;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7365726975716572 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C5DCB68(char a1)
{
  if (!a1)
  {
    return 0x6569667369746173;
  }

  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  return 0x7365726975716572;
}

uint64_t sub_22C5DCBC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E65766967 && a2 == 0xE500000000000000)
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

uint64_t sub_22C5DCC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5DCA48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C5DCC80(uint64_t a1)
{
  v2 = sub_22C5DD39C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5DCCBC(uint64_t a1)
{
  v2 = sub_22C5DD39C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C5DCCF8(uint64_t a1)
{
  v2 = sub_22C5DD3F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5DCD34(uint64_t a1)
{
  v2 = sub_22C5DD3F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C5DCD70(uint64_t a1)
{
  v2 = sub_22C5DD4EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5DCDAC(uint64_t a1)
{
  v2 = sub_22C5DD4EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C5DCDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5DCBC8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C5DCE18(uint64_t a1)
{
  v2 = sub_22C5DD444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5DCE54(uint64_t a1)
{
  v2 = sub_22C5DD444();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequirementStatus.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C370030();
  a23 = v27;
  a24 = v28;
  v80 = v26;
  v77 = v25;
  v30 = v29;
  sub_22C3A5908(&qword_27D9BEF00, &qword_22C9215C8);
  sub_22C369824();
  v75 = v32;
  v76 = v31;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v33);
  sub_22C36D5B4();
  v72 = v34;
  sub_22C36BA0C();
  sub_22C9026DC();
  sub_22C369824();
  v73 = v36;
  v74 = v35;
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  v71 = v37;
  sub_22C3A5908(&qword_27D9BEF08, &qword_22C9215D0);
  sub_22C369824();
  v69 = v39;
  v70 = v38;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v40);
  sub_22C3721C8();
  v41 = sub_22C3A5908(&qword_27D9BEF10, &qword_22C9215D8);
  sub_22C369824();
  v68 = v42;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v43);
  v45 = &v68 - v44;
  type metadata accessor for RequirementStatus(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v46);
  sub_22C369838();
  v49 = (v48 - v47);
  sub_22C3A5908(&qword_27D9BEF18, &qword_22C9215E0);
  sub_22C369824();
  v78 = v51;
  v79 = v50;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v52);
  sub_22C374168(v30, v30[3]);
  sub_22C5DD39C();
  sub_22C90B6CC();
  sub_22C3767B4();
  sub_22C5E7218(v77, v49);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v55 = v73;
      v54 = v74;
      v56 = v71;
      (*(v73 + 32))(v71, v49, v74);
      a14 = 2;
      sub_22C5DD3F0();
      v57 = v72;
      sub_22C5E7E70(&type metadata for RequirementStatus.RequiresCodingKeys, &a14);
      sub_22C3814FC();
      sub_22C5E72C8(v58, v59, MEMORY[0x277D1CC38]);
      v60 = v76;
      sub_22C90B41C();
      (*(v75 + 8))(v57, v60);
      (*(v55 + 8))(v56, v54);
    }

    else
    {
      a12 = 0;
      sub_22C5DD4EC();
      sub_22C5E7E70(&type metadata for RequirementStatus.SatisfiedCodingKeys, &a12);
      (*(v68 + 8))(v45, v41);
    }

    v61 = sub_22C5E7BB4();
    v62(v61, v24);
  }

  else
  {
    v63 = *v49;
    a13 = 1;
    sub_22C5DD444();
    v64 = v79;
    sub_22C90B36C();
    v81 = v63;
    sub_22C3A5908(&qword_27D9BEF40, &qword_22C9215E8);
    sub_22C5E6518(&qword_27D9BEF48, sub_22C5DD498, MEMORY[0x277D83B50]);
    v65 = v70;
    sub_22C90B41C();
    (*(v69 + 8))(v24, v65);
    v66 = sub_22C5E7BB4();
    v67(v66, v64);
  }

  sub_22C36FB20();
}

unint64_t sub_22C5DD39C()
{
  result = qword_27D9BEF20;
  if (!qword_27D9BEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEF20);
  }

  return result;
}

unint64_t sub_22C5DD3F0()
{
  result = qword_27D9BEF28;
  if (!qword_27D9BEF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEF28);
  }

  return result;
}

unint64_t sub_22C5DD444()
{
  result = qword_27D9BEF38;
  if (!qword_27D9BEF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEF38);
  }

  return result;
}

unint64_t sub_22C5DD498()
{
  result = qword_27D9BEF50;
  if (!qword_27D9BEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEF50);
  }

  return result;
}

unint64_t sub_22C5DD4EC()
{
  result = qword_27D9BEF58;
  if (!qword_27D9BEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEF58);
  }

  return result;
}

void RequirementStatus.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C370030();
  a23 = v27;
  a24 = v28;
  v104 = v24;
  v30 = v29;
  v99 = v31;
  v100 = sub_22C3A5908(&qword_27D9BEF60, &qword_22C9215F0);
  sub_22C369824();
  v96 = v32;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v33);
  sub_22C36D5B4();
  v98 = v34;
  sub_22C3A5908(&qword_27D9BEF68, &qword_22C9215F8);
  sub_22C369824();
  v94 = v36;
  v95 = v35;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v37);
  sub_22C36D5B4();
  v103 = v38;
  sub_22C3A5908(&qword_27D9BEF70, &qword_22C921600);
  sub_22C369824();
  v92 = v40;
  v93 = v39;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v41);
  sub_22C36D5B4();
  v97 = v42;
  sub_22C3A5908(&qword_27D9BEF78, &unk_22C921608);
  sub_22C369824();
  v101 = v44;
  v102 = v43;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v45);
  v47 = &v88 - v46;
  v48 = type metadata accessor for RequirementStatus(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v49);
  sub_22C3772FC();
  MEMORY[0x28223BE20](v50);
  sub_22C5E7BA4();
  MEMORY[0x28223BE20](v51);
  v53 = &v88 - v52;
  sub_22C374168(v30, v30[3]);
  sub_22C5DD39C();
  v54 = v104;
  sub_22C90B6BC();
  if (v54)
  {
    goto LABEL_10;
  }

  v88 = v25;
  v89 = v26;
  v90 = v53;
  v91 = v48;
  v104 = v30;
  v55 = v102;
  sub_22C90B34C();
  sub_22C3E1F24();
  if (v57 == v58 >> 1)
  {
LABEL_9:
    sub_22C90AFBC();
    swift_allocError();
    v66 = v65;
    sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0);
    *v66 = v91;
    v67 = sub_22C90B25C();
    sub_22C387D6C(v67);
    sub_22C36BBA8();
    (*(v68 + 104))(v66);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v101 + 8))(v47, v55);
    v30 = v104;
LABEL_10:
    v69 = v30;
LABEL_11:
    sub_22C36FF94(v69);
    sub_22C36FB20();
    return;
  }

  if (v57 < (v58 >> 1))
  {
    v59 = v47;
    v60 = *(v56 + v57);
    sub_22C3E1F20();
    v62 = v61;
    v64 = v63;
    swift_unknownObjectRelease();
    if (v62 != v64 >> 1)
    {
      v47 = v59;
      goto LABEL_9;
    }

    if (v60)
    {
      if (v60 != 1)
      {
        a14 = 2;
        sub_22C5DD3F0();
        sub_22C5E7A60(&type metadata for RequirementStatus.RequiresCodingKeys, &a14);
        v71 = v99;
        sub_22C9026DC();
        sub_22C3814FC();
        sub_22C5E72C8(v74, v75, MEMORY[0x277D1CC40]);
        v76 = v89;
        sub_22C90B32C();
        swift_unknownObjectRelease();
        v84 = sub_22C5E7DEC();
        v85(v84);
        v86 = sub_22C385DCC();
        v87(v86);
        swift_storeEnumTagMultiPayload();
        sub_22C5E7414();
        v83 = v90;
        sub_22C5E7270(v76, v90);
LABEL_15:
        sub_22C5E7414();
        sub_22C5E7270(v83, v71);
        v69 = v104;
        goto LABEL_11;
      }

      a13 = 1;
      sub_22C5DD444();
      sub_22C5E7A60(&type metadata for RequirementStatus.SatisfiedWithConditionsCodingKeys, &a13);
      sub_22C3A5908(&qword_27D9BEF40, &qword_22C9215E8);
      sub_22C5E6518(&qword_27D9BEF88, sub_22C5E6590, MEMORY[0x277D83B70]);
      sub_22C90B32C();
      swift_unknownObjectRelease();
      v77 = sub_22C5E7E14();
      v78(v77);
      v79 = sub_22C5E7678();
      v80(v79);
      v81 = v88;
      *v88 = v105;
      swift_storeEnumTagMultiPayload();
      sub_22C5E7414();
      v82 = v81;
      v83 = v90;
      sub_22C5E7270(v82, v90);
    }

    else
    {
      a12 = 0;
      sub_22C5DD4EC();
      v70 = v97;
      sub_22C5E7A60(&type metadata for RequirementStatus.SatisfiedCodingKeys, &a12);
      swift_unknownObjectRelease();
      (*(v92 + 8))(v70, v93);
      v72 = sub_22C5E7678();
      v73(v72);
      v83 = v90;
      swift_storeEnumTagMultiPayload();
    }

    v71 = v99;
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_22C5DDCA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x800000022C932E70 == a2)
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

uint64_t sub_22C5DDD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5DDCA0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C5DDD6C(uint64_t a1)
{
  v2 = sub_22C5E65E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5DDDA8(uint64_t a1)
{
  v2 = sub_22C5E65E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C5DDDE4(uint64_t a1)
{
  v2 = sub_22C5E6638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5DDE20(uint64_t a1)
{
  v2 = sub_22C5E6638();

  return MEMORY[0x2821FE720](a1, v2);
}

void SatifisfactionCondition.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v22;
  a20 = v23;
  a10 = v20;
  v25 = v24;
  v26 = sub_22C3A5908(&qword_27D9BEF98, &qword_22C921618);
  sub_22C369824();
  v28 = v27;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  sub_22C37FCFC();
  v30 = sub_22C3A5908(&qword_27D9BEFA0, &qword_22C921620);
  sub_22C369824();
  v32 = v31;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  sub_22C374168(v25, v25[3]);
  sub_22C5E65E4();
  sub_22C90B6CC();
  sub_22C5E6638();
  sub_22C90B36C();
  (*(v28 + 8))(v21, v26);
  (*(v32 + 8))(v35, v30);
  sub_22C36FB20();
}

uint64_t SatifisfactionCondition.hashValue.getter()
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](0);
  return sub_22C90B66C();
}

void SatifisfactionCondition.init(from:)()
{
  sub_22C370030();
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9BEFB8, &qword_22C921628);
  sub_22C369824();
  v25 = v6;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C3721C8();
  v8 = sub_22C3A5908(&qword_27D9BEFC0, &qword_22C921630);
  sub_22C369824();
  v26 = v9;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C5CA768();
  sub_22C374168(v4, v4[3]);
  sub_22C5E65E4();
  sub_22C90B6BC();
  if (v1)
  {
    goto LABEL_7;
  }

  v11 = sub_22C90B34C();
  sub_22C3E16E0(v11, 0);
  if (v12 == v13 >> 1)
  {
LABEL_6:
    sub_22C90AFBC();
    swift_allocError();
    v19 = v18;
    sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0);
    *v19 = &type metadata for SatifisfactionCondition;
    v20 = sub_22C90B25C();
    sub_22C387D6C(v20);
    sub_22C36BBA8();
    (*(v21 + 104))(v19);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v26 + 8))(v2, v8);
LABEL_7:
    v24 = v4;
    goto LABEL_8;
  }

  if (v12 < (v13 >> 1))
  {
    sub_22C3E1F20();
    v15 = v14;
    v17 = v16;
    swift_unknownObjectRelease();
    if (v15 == v17 >> 1)
    {
      sub_22C5E6638();
      sub_22C90B24C();
      swift_unknownObjectRelease();
      (*(v25 + 8))(v0, v5);
      v22 = sub_22C50B478();
      v23(v22);
      v24 = v4;
LABEL_8:
      sub_22C36FF94(v24);
      sub_22C36FB20();
      return;
    }

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t RequirementStatus.conditions.getter()
{
  type metadata accessor for RequirementStatus(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v4 = v3 - v2;
  sub_22C3767B4();
  sub_22C5E7218(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v4;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_22C5E7168();
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22C5DE4D0()
{
  sub_22C3A5908(&qword_27D9BF148, &qword_22C921FB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22C90D070;
  *(v0 + 56) = &type metadata for CarPlayRequirementEvaluator;
  *(v0 + 64) = &protocol witness table for CarPlayRequirementEvaluator;
  if (qword_281434BA0 != -1)
  {
    swift_once();
  }

  v1 = qword_281437570;
  *(v0 + 32) = qword_281437570;
  *(v0 + 96) = &type metadata for CarBluetoothRequirementEvaluator;
  *(v0 + 104) = &protocol witness table for CarBluetoothRequirementEvaluator;
  *(v0 + 72) = v1;
  v6 = &type metadata for ToolKitDeviceUnlockStateProvider;
  v7 = &protocol witness table for ToolKitDeviceUnlockStateProvider;
  v2 = type metadata accessor for AuthenticationRequirementEvaluator();
  v3 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  swift_defaultActor_initialize();
  result = sub_22C36C730(&v5, v3 + 112);
  *(v0 + 136) = v2;
  *(v0 + 144) = &protocol witness table for AuthenticationRequirementEvaluator;
  *(v0 + 112) = v3;
  *(v0 + 176) = &type metadata for ResponseModeRequirementEvaluator;
  *(v0 + 184) = &protocol witness table for ResponseModeRequirementEvaluator;
  qword_281437500 = v0;
  return result;
}

uint64_t MultiActionRequirementEvaluator.evaluate(tool:transcript:)()
{
  sub_22C369980();
  v1[9] = v2;
  v1[10] = v3;
  v1[8] = v4;
  v5 = type metadata accessor for RequirementStatus(0);
  v1[11] = v5;
  sub_22C369914(v5);
  v1[12] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *v0;
  v1[13] = v6;
  v1[14] = v7;

  return MEMORY[0x2822009F8](sub_22C5DE6B0, 0, 0);
}

void sub_22C5DE6B0()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84FA0];
  *(v0 + 136) = 0;
  *(v0 + 144) = v3;
  *(v0 + 120) = v2;
  *(v0 + 128) = v3;
  if (v2)
  {
    if (*(v1 + 16))
    {
      sub_22C378A4C(v1 + 32, v0 + 16);
      sub_22C374168((v0 + 16), *(v0 + 40));
      sub_22C5E7BE4();
      sub_22C369B5C();
      v9 = (v4 + *v4);
      swift_task_alloc();
      sub_22C36CC90();
      *(v0 + 152) = v5;
      *v5 = v6;
      v7 = sub_22C38B1E8(v5);

      v9(v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (*(v3 + 16))
    {
      **(v0 + 64) = v3;
    }

    else
    {
    }

    sub_22C36BA00();
    swift_storeEnumTagMultiPayload();

    sub_22C369A24();

    v8();
  }
}

uint64_t sub_22C5DE854()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v3 + 160) = v0;

  sub_22C36FF94((v3 + 16));
  if (v0)
  {

    v6 = sub_22C5DED6C;
  }

  else
  {
    v6 = sub_22C5DE974;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_22C5DE974()
{
  v1 = v0[12];
  sub_22C3767B4();
  sub_22C5E7218(v2, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v15 = v0[18];
      v30 = v0[16];
      goto LABEL_25;
    }

    v4 = v0[13];
    v5 = v0[8];

    sub_22C5E7414();
    sub_22C5E7270(v4, v5);
    sub_22C5E73FC();
    sub_22C5E7168();
LABEL_34:

    sub_22C369A24();
    sub_22C381608();

    __asm { BRAA            X1, X16 }
  }

  v6 = 0;
  v7 = *v0[12];
  v10 = *(v7 + 56);
  v9 = v7 + 56;
  v8 = v10;
  v11 = -1 << *(*v0[12] + 32);
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v8;
  v14 = (63 - v11) >> 6;
  v15 = v0[18];
  v40 = v0[16];
  while (2)
  {
    while (2)
    {
      if (v13)
      {
        goto LABEL_13;
      }

      do
      {
        v16 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
          goto LABEL_38;
        }

        if (v16 >= v14)
        {

          v30 = v40;
LABEL_25:
          sub_22C5E73FC();
          sub_22C5E7168();
          v31 = v0[17] + 1;
          v0[17] = v31;
          v0[18] = v15;
          v0[16] = v30;
          if (v31 == v0[15])
          {
            if (*(v15 + 16))
            {
              *v0[8] = v15;
            }

            else
            {
            }

            sub_22C36BA00();
            swift_storeEnumTagMultiPayload();
            goto LABEL_34;
          }

          v32 = v0[14];
          if (v31 < *(v32 + 16))
          {
            sub_22C378A4C(v32 + 40 * v31 + 32, (v0 + 2));
            sub_22C374168(v0 + 2, v0[5]);
            sub_22C5E7BE4();
            sub_22C369B5C();
            swift_task_alloc();
            sub_22C36CC90();
            v0[19] = v33;
            *v33 = v34;
            sub_22C38B1E8(v33);
            sub_22C381608();

            __asm { BRAA            X5, X16 }
          }

          __break(1u);
LABEL_42:
          __break(1u);
          return;
        }

        v13 = *(v9 + 8 * v16);
        ++v6;
      }

      while (!v13);
      v6 = v16;
LABEL_13:
      v13 &= v13 - 1;
      sub_22C90B62C();
      MEMORY[0x2318B8B10](0);
      sub_22C90B66C();
      sub_22C386A8C();
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v15 + 56 + 8 * (v19 >> 6))) != 0)
      {
        continue;
      }

      break;
    }

    v15 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[7] = v40;
    v23 = *(v40 + 16);
    if (*(v40 + 24) > v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C5E2B3C();
        v15 = v0[7];
      }

LABEL_21:
      *(v15 + 8 * v20 + 56) |= v21;
      v27 = *(v15 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_42;
      }

      *(v15 + 16) = v29;
      v40 = v15;
      continue;
    }

    break;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    sub_22C5E0200(v23 + 1);
  }

  else
  {
    sub_22C5E4358(v23 + 1);
  }

  v15 = v0[7];
  sub_22C90B62C();
  MEMORY[0x2318B8B10](0);
  sub_22C90B66C();
  sub_22C386A8C();
  v26 = v24 & ~v25;
  v20 = v26 >> 6;
  v21 = 1 << v26;
  if (((1 << v26) & *(v15 + 8 * (v26 >> 6) + 56)) == 0)
  {
    goto LABEL_21;
  }

LABEL_38:
  sub_22C381608();

  sub_22C90B53C();
}

uint64_t sub_22C5DED6C()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C5DEDD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return MultiActionRequirementEvaluator.evaluate(tool:transcript:)();
}

uint64_t static ActionRequirementEvaluating<>.defaultRequirementsEvaluator.getter@<X0>(void *a1@<X8>)
{
  if (qword_281430890 != -1)
  {
    swift_once();
  }

  *a1 = qword_281437500;
}

uint64_t sub_22C5DEF04()
{
  sub_22C369980();
  type metadata accessor for RequirementStatus(0);
  swift_storeEnumTagMultiPayload();
  sub_22C369A24();

  return v0();
}

uint64_t sub_22C5DEF74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C46BC08;

  return AlwaysSatisfiedRequirementEvaluator.evaluate(tool:transcript:)(a1);
}

uint64_t AnyActionRequirementEvaluating.init<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  sub_22C36D548(a3);
  sub_22C36BBA8();
  v4 = *(v3 + 32);

  return v4();
}

uint64_t AnyActionRequirementEvaluating.evaluate(tool:transcript:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_22C36A77C();
}

uint64_t sub_22C5DF090()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  sub_22C374168(v1, v2);
  sub_22C5E7BE4();
  sub_22C369B5C();
  v11 = (v4 + *v4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[6] = v5;
  *v5 = v6;
  v5[1] = sub_22C5DF1B0;
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return v11(v9, v7, v8, v2, v3);
}

uint64_t sub_22C5DF1B0()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C5DF29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C382AF4;

  return AnyActionRequirementEvaluating.evaluate(tool:transcript:)(a1, a2, a3);
}

uint64_t ActionRequirementEvaluating.eraseToAnyActionRequirementEvaluating()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  (*(v10 + 16))(v9 - v8, v3, a1);
  return AnyActionRequirementEvaluating.init<A>(_:)(a1, a2, a3);
}

void sub_22C5DF410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C3744F8();
  a29 = v36;
  a30 = v37;
  sub_22C3856E0();
  sub_22C3A5908(&qword_27D9BF170, &qword_22C921FD8);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v38)
  {
LABEL_23:

    *v30 = v32;
    sub_22C38C3F0();
    return;
  }

  sub_22C5E7C64();
  sub_22C36AD3C();
  sub_22C36CD2C();
  if (!v35)
  {
LABEL_4:
    v39 = v33;
    while (1)
    {
      v33 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v33 >= v34)
      {
        break;
      }

      ++v39;
      if (*(v31 + 56 + 8 * v33))
      {
        sub_22C375A38();
        v35 = v41 & v40;
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v49 != v50)
    {
      sub_22C5E7578(v48);
    }

    else
    {
      v51 = sub_22C3856F8();
      sub_22C88FAFC(v51, v52, v31 + 56);
    }

    sub_22C379C34();
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C382D5C();
LABEL_9:
    sub_22C5E7940();
    v43 = *v42;
    v44 = v42[1];
    sub_22C5E7C1C();
    sub_22C5E7F08(&a10);
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C38A074();
    if (v45)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    sub_22C36D914();
    sub_22C5E753C();
    *v47 = v43;
    v47[1] = v44;
    sub_22C37B32C();
    if (!v35)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v45)
    {
      if (v46)
      {
        break;
      }
    }

    sub_22C5E7764();
    sub_22C5E7554();
    if (!v45)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5DF550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C3744F8();
  a29 = v36;
  a30 = v37;
  sub_22C3856E0();
  sub_22C3A5908(&qword_27D9BF0A0, &unk_22C922100);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v38)
  {
LABEL_23:

    *v30 = v32;
    sub_22C38C3F0();
    return;
  }

  sub_22C5E7C64();
  sub_22C36AD3C();
  sub_22C36CD2C();
  if (!v35)
  {
LABEL_4:
    v39 = v33;
    while (1)
    {
      v33 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v33 >= v34)
      {
        break;
      }

      ++v39;
      if (*(v31 + 56 + 8 * v33))
      {
        sub_22C375A38();
        v35 = v41 & v40;
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v49 != v50)
    {
      sub_22C5E7578(v48);
    }

    else
    {
      v51 = sub_22C3856F8();
      sub_22C88FAFC(v51, v52, v31 + 56);
    }

    sub_22C379C34();
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C382D5C();
LABEL_9:
    sub_22C5E7940();
    v43 = *v42;
    v44 = v42[1];
    sub_22C5E7C1C();
    sub_22C5E7F08(&a10);
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C38A074();
    if (v45)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    sub_22C36D914();
    sub_22C5E753C();
    *v47 = v43;
    v47[1] = v44;
    sub_22C37B32C();
    if (!v35)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v45)
    {
      if (v46)
      {
        break;
      }
    }

    sub_22C5E7554();
    if (!v45)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5DF694()
{
  sub_22C3806F4();
  sub_22C3856E0();
  sub_22C3A5908(&qword_27D9BF078, &unk_22C926CB0);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v5)
  {
LABEL_23:

    *v0 = v2;
    sub_22C5E78F0();
    return;
  }

  v28 = v0;
  v29 = v1;
  v6 = 0;
  v7 = v1 + 56;
  sub_22C36AD3C();
  sub_22C5E7650();
  if (!v0)
  {
LABEL_4:
    v8 = v6;
    while (1)
    {
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v6 >= v4)
      {
        break;
      }

      ++v8;
      if (*(v7 + 8 * v6))
      {
        sub_22C375A38();
        v0 = (v10 & v9);
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v24 != v25)
    {
      sub_22C5E7578(v23);
    }

    else
    {
      v26 = sub_22C3856F8();
      sub_22C88FAFC(v26, v27, v7);
    }

    v0 = v28;
    *(v1 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C5E7528();
LABEL_9:
    sub_22C5E7D94();
    v14 = (v12 + v11 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(v14 + 16);
    sub_22C375D08();
    MEMORY[0x2318B8B30](v16 >> 14);
    MEMORY[0x2318B8B30](v15 >> 14);
    MEMORY[0x2318B8B10](v17);
    sub_22C90B66C();
    sub_22C374D64();
    if (v18)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    sub_22C5E7588();
    sub_22C5E74D0();
    *(v3 + v20) = v21;
    sub_22C5E78E0();
    *v22 = v16;
    *(v22 + 8) = v15;
    *(v22 + 16) = v17;
    sub_22C37B32C();
    v1 = v29;
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v18)
    {
      if (v19)
      {
        break;
      }
    }

    sub_22C5E7764();
    sub_22C5E74E0();
    if (!v18)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5DF814()
{
  sub_22C36BA7C();
  v4 = sub_22C37EC78();
  v5 = type metadata accessor for PromptTreeIdentifier.Label(v4);
  v6 = sub_22C3699B8(v5);
  MEMORY[0x28223BE20](v6);
  sub_22C377578();
  sub_22C370854();
  sub_22C3A5908(&qword_27D9BF160, &qword_22C921FC8);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v7)
  {
LABEL_23:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  v8 = 0;
  sub_22C36AD3C();
  v11 = v10 & v9;
  sub_22C5E79EC();
  if (!v11)
  {
LABEL_4:
    v12 = v8;
    while (1)
    {
      v8 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v8 >= v3)
      {
        break;
      }

      sub_22C5E79B0();
      if (v13)
      {
        sub_22C375A38();
        v11 = v15 & v14;
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v22 != v23)
    {
      sub_22C386A8C();
      *(v0 + 56) = v24;
    }

    else
    {
      v25 = sub_22C3856F8();
      sub_22C88FAFC(v25, v26, v0 + 56);
    }

    *(v0 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C5E7E5C();
LABEL_9:
    sub_22C5E74B8();
    sub_22C5E7270(v16, v2);
    sub_22C90B62C();
    sub_22C48640C();
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C38A074();
    if (v17)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    sub_22C5E7588();
    sub_22C5E74D0();
    *(v1 + 56 + v19) = v20;
    sub_22C5E74B8();
    sub_22C5E7270(v2, v21);
    sub_22C37B32C();
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v17)
    {
      if (v18)
      {
        break;
      }
    }

    sub_22C5E7554();
    if (!v17)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5DFA00()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C90952C();
  v5 = sub_22C5E73A0(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v6, v23);
  sub_22C3A5908(&qword_27D9BF0A8, &unk_22C921F20);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v7)
  {
LABEL_23:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v8 = v3;
    while (1)
    {
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v9)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v19 != v20)
    {
      sub_22C5E74F0(v18);
    }

    else
    {
      v21 = sub_22C3856F8();
      sub_22C88FAFC(v21, v22, v1);
    }

    sub_22C5E781C();
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v10 = sub_22C371A68();
    v11(v10);
    sub_22C5E7828();
    sub_22C386278();
    sub_22C5E72C8(&qword_28142FA80, v12, MEMORY[0x277D72D68]);
    sub_22C385DCC();
    sub_22C909F7C();
    sub_22C36C014();
    if (v13)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    v16 = sub_22C36A08C(v14);
    v17(v16);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    sub_22C386D30();
    if (!v13)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5DFBB0()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C902D0C();
  v5 = sub_22C5E73A0(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v6, v23);
  sub_22C3A5908(&qword_27D9BF168, &qword_22C921FD0);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v7)
  {
LABEL_23:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v8 = v3;
    while (1)
    {
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v9)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v19 != v20)
    {
      sub_22C5E74F0(v18);
    }

    else
    {
      v21 = sub_22C3856F8();
      sub_22C88FAFC(v21, v22, v1);
    }

    sub_22C5E781C();
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v10 = sub_22C371A68();
    v11(v10);
    sub_22C5E7828();
    sub_22C5E73E4();
    sub_22C5E72C8(&qword_27D9BAAA8, v12, MEMORY[0x277D1D808]);
    sub_22C385DCC();
    sub_22C909F7C();
    sub_22C36C014();
    if (v13)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    v16 = sub_22C36A08C(v14);
    v17(v16);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    sub_22C386D30();
    if (!v13)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5DFD60()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C901FAC();
  v5 = sub_22C5E73A0(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v6, v23);
  sub_22C3A5908(&qword_27D9BF120, &unk_22C926C80);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v7)
  {
LABEL_23:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v8 = v3;
    while (1)
    {
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v9)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v19 != v20)
    {
      sub_22C5E74F0(v18);
    }

    else
    {
      v21 = sub_22C3856F8();
      sub_22C88FAFC(v21, v22, v1);
    }

    sub_22C5E781C();
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v10 = sub_22C371A68();
    v11(v10);
    sub_22C5E7828();
    sub_22C5E7488();
    sub_22C5E72C8(&qword_2814357B0, v12, MEMORY[0x277D1C348]);
    sub_22C385DCC();
    sub_22C909F7C();
    sub_22C36C014();
    if (v13)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    v16 = sub_22C36A08C(v14);
    v17(v16);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    sub_22C386D30();
    if (!v13)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5DFF10()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C90941C();
  v5 = sub_22C5E73A0(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v6, v23);
  sub_22C3A5908(&qword_27D9BF158, &qword_22C921FC0);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v7)
  {
LABEL_23:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v8 = v3;
    while (1)
    {
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v9)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v19 != v20)
    {
      sub_22C5E74F0(v18);
    }

    else
    {
      v21 = sub_22C3856F8();
      sub_22C88FAFC(v21, v22, v1);
    }

    sub_22C5E781C();
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v10 = sub_22C371A68();
    v11(v10);
    sub_22C5E7828();
    sub_22C5E7804();
    sub_22C5E72C8(&qword_27D9BAAA0, v12, MEMORY[0x277D72B10]);
    sub_22C385DCC();
    sub_22C909F7C();
    sub_22C36C014();
    if (v13)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    v16 = sub_22C36A08C(v14);
    v17(v16);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    sub_22C386D30();
    if (!v13)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5E00C0()
{
  sub_22C3744F8();
  sub_22C3856E0();
  sub_22C3A5908(&qword_27D9BF178, &unk_22C921FE0);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v4)
  {
LABEL_23:

    *v0 = v2;
    sub_22C38C3F0();
    return;
  }

  v5 = 0;
  sub_22C381340();
  sub_22C5E7620();
  sub_22C5E7650();
  if (!v0)
  {
LABEL_4:
    v6 = v5;
    while (1)
    {
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v5 >= v3)
      {
        break;
      }

      ++v6;
      if (*(v1 + 8 * v5))
      {
        sub_22C375A38();
        v0 = (v8 & v7);
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v17 != v18)
    {
      sub_22C5E7578(v16);
    }

    else
    {
      v19 = sub_22C3856F8();
      sub_22C88FAFC(v19, v20, v1);
    }

    sub_22C379C34();
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C5E7528();
LABEL_9:
    sub_22C5E7D94();
    v11 = *(v10 + v9);
    sub_22C5E7C1C();
    MEMORY[0x2318B8B10](v11);
    sub_22C90B66C();
    sub_22C37EF28();
    if (v12)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    sub_22C3872F0(v13);
    *(*(v2 + 48) + v15) = v11;
    sub_22C37B32C();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v12)
    {
      if (v14)
      {
        break;
      }
    }

    sub_22C5E7764();
    sub_22C5E74E0();
    if (!v12)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_22C5E0200(uint64_t a1)
{
  v2 = *v1;
  sub_22C3A5908(&qword_27D9BF150, &qword_22C921FB8);
  result = sub_22C90AEEC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (!v9)
    {
      goto LABEL_6;
    }

    do
    {
LABEL_10:
      sub_22C90B62C();
      MEMORY[0x2318B8B10](0);
      result = sub_22C90B66C();
      v13 = -1 << *(v4 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v13) >> 6;
        while (++v15 != v18 || (v17 & 1) == 0)
        {
          v19 = v15 == v18;
          if (v15 == v18)
          {
            v15 = 0;
          }

          v17 |= v19;
          v20 = *(v11 + 8 * v15);
          if (v20 != -1)
          {
            v16 = __clz(__rbit64(~v20)) + (v15 << 6);
            goto LABEL_19;
          }
        }

LABEL_27:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
      v9 &= v9 - 1;
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      ++*(v4 + 16);
    }

    while (v9);
    while (1)
    {
LABEL_6:
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v12 >= v10)
      {
        break;
      }

      v9 = v6[v12];
      ++v5;
      if (v9)
      {
        v5 = v12;
        goto LABEL_10;
      }
    }

    v21 = 1 << *(v2 + 32);
    if (v21 >= 64)
    {
      sub_22C88FAFC(0, (v21 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v21;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void sub_22C5E0414()
{
  sub_22C36BA7C();
  v2 = sub_22C37EC78();
  _s14TypedCandidateVMa(v2);
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v6 = v5 - v4;
  sub_22C370854();
  sub_22C3A5908(&qword_27D9BF130, &qword_22C921F98);
  v7 = sub_22C3744D4();
  if (!*(v1 + 16))
  {
LABEL_23:

    *v0 = v7;
    sub_22C36CC48();
    return;
  }

  v29 = v1;
  v8 = 0;
  v9 = v1 + 56;
  sub_22C36AD3C();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  if ((v11 & v10) == 0)
  {
LABEL_4:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v8 >= v14)
      {
        break;
      }

      sub_22C5E7CE8();
      if (v16)
      {
        sub_22C36FD98();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v25 != v26)
    {
      sub_22C5E74F0(v24);
    }

    else
    {
      v27 = sub_22C3856F8();
      sub_22C88FAFC(v27, v28, v9);
    }

    *(v1 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C5E73D0();
LABEL_9:
    sub_22C5E745C();
    sub_22C5E7270(v17, v6);
    sub_22C90B62C();
    sub_22C9093BC();
    sub_22C5E7444();
    sub_22C5E72C8(&qword_28142FA90, v18, MEMORY[0x277D72A88]);
    sub_22C909F8C();
    sub_22C909FFC();
    sub_22C909FFC();
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C38A074();
    if (v19)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    sub_22C5E7588();
    sub_22C5E74D0();
    *(v7 + 56 + v21) = v22;
    sub_22C5E745C();
    sub_22C5E7270(v6, v23);
    ++*(v7 + 16);
    v1 = v29;
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v19)
    {
      if (v20)
      {
        break;
      }
    }

    sub_22C5E7764();
    sub_22C5E7554();
    if (!v19)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5E0678()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C908C5C();
  v5 = sub_22C5E73A0(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v6, v23);
  sub_22C3A5908(&qword_27D9BF138, &qword_22C921FA0);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v7)
  {
LABEL_23:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v8 = v3;
    while (1)
    {
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v9)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v19 != v20)
    {
      sub_22C5E74F0(v18);
    }

    else
    {
      v21 = sub_22C3856F8();
      sub_22C88FAFC(v21, v22, v1);
    }

    sub_22C5E781C();
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v10 = sub_22C371A68();
    v11(v10);
    sub_22C5E7828();
    sub_22C5E7388();
    sub_22C5E72C8(&qword_27D9BAA90, v12, MEMORY[0x277D1E970]);
    sub_22C385DCC();
    sub_22C909F7C();
    sub_22C36C014();
    if (v13)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    v16 = sub_22C36A08C(v14);
    v17(v16);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    sub_22C386D30();
    if (!v13)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5E0828()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C9069BC();
  v5 = sub_22C5E73A0(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v6, v23);
  sub_22C3A5908(&qword_27D9BF140, &qword_22C921FA8);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v7)
  {
LABEL_23:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v8 = v3;
    while (1)
    {
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v9)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v19 != v20)
    {
      sub_22C5E74F0(v18);
    }

    else
    {
      v21 = sub_22C3856F8();
      sub_22C88FAFC(v21, v22, v1);
    }

    sub_22C5E781C();
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v10 = sub_22C371A68();
    v11(v10);
    sub_22C5E7828();
    sub_22C5E73B8();
    sub_22C5E72C8(&qword_27D9BAA98, v12, MEMORY[0x277D1DCF8]);
    sub_22C385DCC();
    sub_22C909F7C();
    sub_22C36C014();
    if (v13)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    v16 = sub_22C36A08C(v14);
    v17(v16);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    sub_22C386D30();
    if (!v13)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5E09D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  sub_22C3704C4();
  v23 = sub_22C908C5C();
  sub_22C369824();
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  sub_22C5CA768();
  sub_22C9069BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v25);
  sub_22C3698A8();
  v26 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  v27 = sub_22C369914(v26);
  MEMORY[0x28223BE20](v27);
  sub_22C369ABC();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  sub_22C5E7978();
  sub_22C3A5908(&qword_27D9BF118, &unk_22C921F80);
  v32 = sub_22C5E7874();
  sub_22C5E75B0(v32);
  if (v20[2])
  {
    sub_22C385E88();
    if (v33)
    {
      while (2)
      {
        sub_22C36C050();
LABEL_9:
        sub_22C5E79A0();
        v40 = *(v39 + 8 * v38);
        sub_22C90B62C();
        sub_22C36AD3C();
        v43 = v42 & v41;
        sub_22C5E79E0();
        sub_22C5E7D18(v44);
        v45 = 0;
        v46 = 0;
        while (1)
        {
          v87 = v45;
          if (!v43)
          {
            v20 = &qword_27D9BF110;
            while (1)
            {
              v47 = v46 + 1;
              if (__OFADD__(v46, 1))
              {
                break;
              }

              if (v47 >= v85)
              {
                v68 = sub_22C3806B8();
                v70 = sub_22C3A5908(v68, v69);
                sub_22C374D84(v30, v71, v72, v70);
                v43 = 0;
                goto LABEL_17;
              }

              v43 = *(v40 + 64 + 8 * v47);
              ++v46;
              if (v43)
              {
                v46 = v47;
                goto LABEL_16;
              }
            }

            __break(1u);
            goto LABEL_29;
          }

LABEL_16:
          v48 = sub_22C5E76AC();
          v49(v48);
          sub_22C383D08();
          v50 = sub_22C5E7DAC();
          v51(v50);
          sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
          v52 = sub_22C5E7770();
          v53(v52);
          v23 = v22;
          v22 = &qword_27D9BF110;
          v20 = &qword_27D9BF110;
          sub_22C5E7DB8();
          v54();
          sub_22C387310(v30);
          v21 = v86;
LABEL_17:
          sub_22C5E71BC(v30, v21, &qword_27D9BF108, &unk_22C921F70);
          v55 = sub_22C3806B8();
          sub_22C3A5908(v55, v56);
          sub_22C36D3E0(v21);
          if (v57)
          {
            break;
          }

          v58 = sub_22C5E7B50();
          v59(v58);
          sub_22C36BA4C();
          v60 = sub_22C5E7DAC();
          v61(v60);
          sub_22C5E79F8();
          sub_22C5E73B8();
          sub_22C5E72C8(&qword_27D9BAA98, v62, MEMORY[0x277D1DCF8]);
          v63 = sub_22C387D60();
          sub_22C5E7E90(v63);
          v64 = sub_22C5E768C();
          v65(v64);
          sub_22C5E7388();
          sub_22C5E72C8(&qword_27D9BAA90, v66, MEMORY[0x277D1E970]);
          sub_22C387D60();
          sub_22C909F8C();
          sub_22C36BA4C();
          v67(v22, v23);
          v45 = sub_22C90B66C() ^ v87;
        }

        sub_22C5E7ED8();
        sub_22C5E7D7C();
        v73 = sub_22C90B66C();
        sub_22C388D34(v73, *(v84 + 32));
        sub_22C5580B8();
        sub_22C90AE8C();
        sub_22C5E7664();
        sub_22C36D300(v74, v75);
        if (v76)
        {
          continue;
        }

        break;
      }
    }

    sub_22C5E7C94();
    while (1)
    {
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v37 >= v36)
      {
        sub_22C36ED64();
        if (v77 != v78)
        {
          sub_22C386A8C();
          *v79 = v80;
        }

        else
        {
          v81 = sub_22C3856F8();
          sub_22C88FAFC(v81, v82, v83);
        }

        sub_22C5E7DA0();
        v20[2] = 0;

        goto LABEL_27;
      }

      ++v35;
      if (*(v34 + 8 * v37))
      {
        sub_22C375A38();
        goto LABEL_9;
      }
    }

LABEL_29:
    __break(1u);
  }

  else
  {

    sub_22C5E7DA0();
LABEL_27:
    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E0E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  sub_22C3704C4();
  v23 = sub_22C908C5C();
  sub_22C369824();
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  sub_22C5CA768();
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v25);
  sub_22C3698A8();
  v26 = sub_22C3A5908(&qword_27D9BF0F0, &qword_22C921F58);
  v27 = sub_22C369914(v26);
  MEMORY[0x28223BE20](v27);
  sub_22C369ABC();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  sub_22C5E7978();
  sub_22C3A5908(&qword_27D9BF0F8, &unk_22C921F60);
  v32 = sub_22C5E7874();
  sub_22C5E75B0(v32);
  if (v20[2])
  {
    sub_22C385E88();
    if (v33)
    {
      while (2)
      {
        sub_22C36C050();
LABEL_9:
        sub_22C5E79A0();
        v40 = *(v39 + 8 * v38);
        sub_22C90B62C();
        sub_22C36AD3C();
        v43 = v42 & v41;
        sub_22C5E79E0();
        sub_22C5E7D18(v44);
        v45 = 0;
        v46 = 0;
        while (1)
        {
          v87 = v45;
          if (!v43)
          {
            v20 = &qword_27D9BF100;
            while (1)
            {
              v47 = v46 + 1;
              if (__OFADD__(v46, 1))
              {
                break;
              }

              if (v47 >= v85)
              {
                v68 = sub_22C3806B8();
                v70 = sub_22C3A5908(v68, v69);
                sub_22C374D84(v30, v71, v72, v70);
                v43 = 0;
                goto LABEL_17;
              }

              v43 = *(v40 + 64 + 8 * v47);
              ++v46;
              if (v43)
              {
                v46 = v47;
                goto LABEL_16;
              }
            }

            __break(1u);
            goto LABEL_29;
          }

LABEL_16:
          v48 = sub_22C5E76AC();
          v49(v48);
          sub_22C383D08();
          v50 = sub_22C5E7DAC();
          v51(v50);
          sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
          v52 = sub_22C5E7770();
          v53(v52);
          v23 = v22;
          v22 = &qword_27D9BF100;
          v20 = &qword_27D9BF100;
          sub_22C5E7DB8();
          v54();
          sub_22C387310(v30);
          v21 = v86;
LABEL_17:
          sub_22C5E71BC(v30, v21, &qword_27D9BF0F0, &qword_22C921F58);
          v55 = sub_22C3806B8();
          sub_22C3A5908(v55, v56);
          sub_22C36D3E0(v21);
          if (v57)
          {
            break;
          }

          v58 = sub_22C5E7B50();
          v59(v58);
          sub_22C36BA4C();
          v60 = sub_22C5E7DAC();
          v61(v60);
          sub_22C5E79F8();
          sub_22C5E7488();
          sub_22C5E72C8(&qword_2814357B0, v62, MEMORY[0x277D1C348]);
          v63 = sub_22C387D60();
          sub_22C5E7E90(v63);
          v64 = sub_22C5E768C();
          v65(v64);
          sub_22C5E7388();
          sub_22C5E72C8(&qword_27D9BAA90, v66, MEMORY[0x277D1E970]);
          sub_22C387D60();
          sub_22C909F8C();
          sub_22C36BA4C();
          v67(v22, v23);
          v45 = sub_22C90B66C() ^ v87;
        }

        sub_22C5E7ED8();
        sub_22C5E7D7C();
        v73 = sub_22C90B66C();
        sub_22C388D34(v73, *(v84 + 32));
        sub_22C5580B8();
        sub_22C90AE8C();
        sub_22C5E7664();
        sub_22C36D300(v74, v75);
        if (v76)
        {
          continue;
        }

        break;
      }
    }

    sub_22C5E7C94();
    while (1)
    {
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v37 >= v36)
      {
        sub_22C36ED64();
        if (v77 != v78)
        {
          sub_22C386A8C();
          *v79 = v80;
        }

        else
        {
          v81 = sub_22C3856F8();
          sub_22C88FAFC(v81, v82, v83);
        }

        sub_22C5E7DA0();
        v20[2] = 0;

        goto LABEL_27;
      }

      ++v35;
      if (*(v34 + 8 * v37))
      {
        sub_22C375A38();
        goto LABEL_9;
      }
    }

LABEL_29:
    __break(1u);
  }

  else
  {

    sub_22C5E7DA0();
LABEL_27:
    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E1320()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C9093BC();
  v5 = sub_22C5E73A0(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v6, v23);
  sub_22C3A5908(&qword_27D9BF128, &qword_22C921F90);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v7)
  {
LABEL_23:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v8 = v3;
    while (1)
    {
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v9)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v19 != v20)
    {
      sub_22C5E74F0(v18);
    }

    else
    {
      v21 = sub_22C3856F8();
      sub_22C88FAFC(v21, v22, v1);
    }

    sub_22C5E781C();
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v10 = sub_22C371A68();
    v11(v10);
    sub_22C5E7828();
    sub_22C5E7444();
    sub_22C5E72C8(&qword_28142FA90, v12, MEMORY[0x277D72A88]);
    sub_22C385DCC();
    sub_22C909F7C();
    sub_22C36C014();
    if (v13)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    v16 = sub_22C36A08C(v14);
    v17(v16);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    sub_22C386D30();
    if (!v13)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5E14D0()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C903CCC();
  v5 = sub_22C5E73A0(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v6, v23);
  sub_22C3A5908(&qword_27D9BF0D0, &qword_22C921F40);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v7)
  {
LABEL_23:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v8 = v3;
    while (1)
    {
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v9)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v19 != v20)
    {
      sub_22C5E74F0(v18);
    }

    else
    {
      v21 = sub_22C3856F8();
      sub_22C88FAFC(v21, v22, v1);
    }

    sub_22C5E781C();
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v10 = sub_22C371A68();
    v11(v10);
    sub_22C5E7828();
    sub_22C5E742C();
    sub_22C5E72C8(&qword_281435738, v12, MEMORY[0x277D1F0E8]);
    sub_22C385DCC();
    sub_22C909F7C();
    sub_22C36C014();
    if (v13)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    v16 = sub_22C36A08C(v14);
    v17(v16);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    sub_22C386D30();
    if (!v13)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5E1680()
{
  sub_22C36BA7C();
  v1 = v0;
  sub_22C369A48();
  v35 = sub_22C9036EC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  v34 = v5;
  v6 = sub_22C36BA0C();
  type metadata accessor for QueryDecorationTuple(v6);
  sub_22C369824();
  v33 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v32 = v9;
  v10 = *v0;
  if (*(*v0 + 24) > v0)
  {
    v0 = *(*v0 + 24);
  }

  sub_22C3A5908(&qword_27D9BF088, &qword_22C921F00);
  v11 = sub_22C5E7B18();
  sub_22C5E75B0(v11);
  sub_22C5E7CF4();
  if (v12)
  {
    v30 = v1;
    v13 = 0;
    v14 = v10 + 7;
    sub_22C36AD3C();
    v17 = v16 & v15;
    v19 = (v18 + 63) >> 6;
    v31 = v10;
    if ((v16 & v15) != 0)
    {
      do
      {
        sub_22C5E73D0();
LABEL_11:
        v36 = *(v33 + 72);
        sub_22C5E7270(v10[6] + v36 * (v20 | (v13 << 6)), v32);
        sub_22C90B62C();
        sub_22C90371C();
        sub_22C5E77A4();
        sub_22C5E72C8(&qword_281435770, v22, MEMORY[0x277D1ED10]);
        sub_22C909F8C();
        (*(v3 + 8))(v34, v35);
        sub_22C7E6754();
        v23 = sub_22C90B66C();
        sub_22C388D34(v23, *(v0 + 32));
        v24 = sub_22C90AE8C();
        *(v0 + 56 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v10 = v31;
        sub_22C5E7270(v32, *(v0 + 48) + v24 * v36);
        ++*(v0 + 16);
      }

      while (v17);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        return;
      }

      if (v13 >= v19)
      {
        break;
      }

      ++v21;
      if (v14[v13])
      {
        sub_22C36FD98();
        goto LABEL_11;
      }
    }

    sub_22C36ED64();
    if (v25 != v26)
    {
      sub_22C386A8C();
      *v14 = v27;
    }

    else
    {
      v28 = sub_22C3856F8();
      sub_22C88FAFC(v28, v29, v14);
    }

    v1 = v30;
    v10[2] = 0;
  }

  *v1 = v0;
  sub_22C36CC48();
}

void sub_22C5E197C()
{
  sub_22C36BA7C();
  v2 = v0;
  v3 = sub_22C3704C4();
  type metadata accessor for QueryDecorationEntityValue(v3);
  sub_22C36985C();
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  v40 = v5;
  v6 = sub_22C36BA0C();
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(v6);
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C5CA768();
  v8 = *v0;
  sub_22C3A5908(&qword_27D9BF090, &qword_22C921F08);
  v9 = sub_22C90AEEC();
  if (!*(v8 + 16))
  {
LABEL_29:

    *v2 = v9;
    sub_22C36CC48();
    return;
  }

  v10 = 0;
  v11 = (v8 + 56);
  sub_22C36AD3C();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v38 = v8;
  if ((v13 & v12) == 0)
  {
LABEL_4:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v10 >= v16)
      {
        break;
      }

      ++v18;
      if (v11[v10])
      {
        sub_22C375A38();
        v14 = v20 & v19;
        goto LABEL_9;
      }
    }

    sub_22C36ED64();
    if (v33 != v34)
    {
      sub_22C386A8C();
      *v11 = v35;
    }

    else
    {
      v36 = sub_22C3856F8();
      sub_22C88FAFC(v36, v37, v11);
    }

    v2 = v0;
    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    sub_22C5E7E5C();
LABEL_9:
    sub_22C5E7C34(v17 | (v10 << 6));
    sub_22C3827F0();
    sub_22C5E7270(v21, v1);
    sub_22C90B62C();
    sub_22C9097DC();
    sub_22C909FFC();

    v22 = (v1 + *(DecorationTupleParameter + 20));
    MEMORY[0x2318B8B10](*v22);
    type metadata accessor for QueryDecorationEntity(0);
    sub_22C5E74A0();
    sub_22C5E7218(v22 + v23, v40);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      sub_22C9039FC();
      v25 = 0;
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_22C90399C();
      v25 = 1;
LABEL_13:
      sub_22C36BBA8();
      (*(v26 + 8))(v40);
      goto LABEL_15;
    }

    v25 = EnumCaseMultiPayload;
LABEL_15:
    sub_22C90B62C();
    MEMORY[0x2318B8B10](v25);
    v27 = sub_22C90B66C();
    MEMORY[0x2318B8B10](v27);
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C37AC88();
    if (v28)
    {
      break;
    }

    sub_22C37F394();
LABEL_23:
    sub_22C5E7588();
    sub_22C5E74D0();
    *(v9 + 56 + v30) = v31;
    sub_22C3827F0();
    sub_22C5E7270(v1, v32);
    ++*(v9 + 16);
    v8 = v38;
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v28)
    {
      if (v29)
      {
        break;
      }
    }

    sub_22C5E7764();
    sub_22C386D30();
    if (!v28)
    {
      sub_22C36D900();
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_22C5E1CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C3744F8();
  sub_22C3856E0();
  sub_22C3A5908(&qword_27D9BF098, &unk_22C921F10);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (v35)
  {
    sub_22C5E7C64();
    sub_22C381340();
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v30 = (v38 & v36);
    sub_22C5E79EC();
    while (v30)
    {
      sub_22C5E7528();
LABEL_12:
      v43 = *(*(v31 + 48) + 8 * (v39 | (v33 << 6)));
      sub_22C5E7C1C();
      sub_22C7E6754();
      sub_22C90B66C();
      sub_22C90AE8C();
      sub_22C5E7664();
      *(v32 + 56 + v44) |= v45;
      *(*(v32 + 48) + 8 * v46) = v43;
      sub_22C37B32C();
    }

    v40 = v33;
    while (1)
    {
      v33 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        return;
      }

      if (v33 >= v34)
      {
        break;
      }

      ++v40;
      if (*(v31 + 8 * v33))
      {
        sub_22C375A38();
        v30 = (v42 & v41);
        goto LABEL_12;
      }
    }

    sub_22C37F8D8();
    if (v48 != v49)
    {
      sub_22C5E7578(v47);
    }

    else
    {
      v50 = sub_22C3856F8();
      sub_22C88FAFC(v50, v51, v31);
    }

    sub_22C379C34();
  }

  *v30 = v32;
  sub_22C38C3F0();
}

void sub_22C5E1E10()
{
  sub_22C36BA7C();
  v2 = sub_22C3A5908(&qword_27D9BF0B0, &unk_22C926980);
  sub_22C5E73A0(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C36D5B4();
  sub_22C370854();
  sub_22C3A5908(&qword_27D9BF0B8, &qword_22C921F30);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v4)
  {
LABEL_23:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  v5 = 0;
  sub_22C36AD3C();
  v8 = v7 & v6;
  sub_22C5E7630();
  if (!v8)
  {
LABEL_4:
    v9 = v5;
    while (1)
    {
      v5 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v5 >= v0)
      {
        break;
      }

      sub_22C5E7CE8();
      if (v10)
      {
        sub_22C375A38();
        v8 = v12 & v11;
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v21 != v22)
    {
      sub_22C5E74F0(v20);
    }

    else
    {
      v23 = sub_22C3856F8();
      sub_22C88FAFC(v23, v24, v1 + 56);
    }

    sub_22C5E781C();
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C382D5C();
LABEL_9:
    v13 = sub_22C371A68();
    v14(v13);
    sub_22C5E7828();
    sub_22C5E7104();
    sub_22C385DCC();
    sub_22C909F7C();
    sub_22C36C014();
    if (v15)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    v18 = sub_22C36A08C(v16);
    v19(v18);
    sub_22C381B0C();
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v15)
    {
      if (v17)
      {
        break;
      }
    }

    sub_22C386D30();
    if (!v15)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5E1FEC()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C9037EC();
  v5 = sub_22C5E73A0(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v6, v23);
  sub_22C3A5908(&qword_27D9BF0D8, &qword_22C921F48);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v7)
  {
LABEL_23:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v8 = v3;
    while (1)
    {
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v9)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v19 != v20)
    {
      sub_22C5E74F0(v18);
    }

    else
    {
      v21 = sub_22C3856F8();
      sub_22C88FAFC(v21, v22, v1);
    }

    sub_22C5E781C();
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v10 = sub_22C371A68();
    v11(v10);
    sub_22C5E7828();
    sub_22C37D998();
    sub_22C5E72C8(&qword_281435768, v12, MEMORY[0x277D1EDA0]);
    sub_22C385DCC();
    sub_22C909F7C();
    sub_22C36C014();
    if (v13)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    v16 = sub_22C36A08C(v14);
    v17(v16);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    sub_22C386D30();
    if (!v13)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5E219C()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v4 = sub_22C908EAC();
  v5 = sub_22C5E73A0(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C38BBD8(v6, v23);
  sub_22C3A5908(&qword_27D9BF0E0, &qword_22C921F50);
  sub_22C3744D4();
  sub_22C5E76A0();
  if (!v7)
  {
LABEL_23:

    sub_22C3864D4();
    sub_22C36CC48();
    return;
  }

  sub_22C373608();
  if (!v2)
  {
LABEL_4:
    v8 = v3;
    while (1)
    {
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v3 >= v0)
      {
        break;
      }

      sub_22C5E7880();
      if (v9)
      {
        sub_22C3700F4();
        goto LABEL_9;
      }
    }

    sub_22C37F8D8();
    if (v19 != v20)
    {
      sub_22C5E74F0(v18);
    }

    else
    {
      v21 = sub_22C3856F8();
      sub_22C88FAFC(v21, v22, v1);
    }

    sub_22C5E781C();
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C36D6B8();
LABEL_9:
    v10 = sub_22C371A68();
    v11(v10);
    sub_22C5E7828();
    sub_22C5E7834();
    sub_22C5E72C8(&qword_27D9BAA80, v12, MEMORY[0x277D72248]);
    sub_22C385DCC();
    sub_22C909F7C();
    sub_22C36C014();
    if (v13)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    v16 = sub_22C36A08C(v14);
    v17(v16);
    sub_22C381B0C();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    sub_22C386D30();
    if (!v13)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5E234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C3806F4();
  a31 = v33;
  a32 = v34;
  v35 = v32;
  v36 = *v32;
  sub_22C36D13C();
  sub_22C3A5908(&qword_27D9BF0E8, &unk_22C926C70);
  v37 = sub_22C5E7874();
  v38 = sub_22C5E75B0(v37);
  if (!*(v36 + 16))
  {
LABEL_23:

    *v35 = v38;
    sub_22C5E78F0();
    return;
  }

  v63 = v36;
  v39 = 0;
  v40 = v36 + 56;
  sub_22C36AD3C();
  v43 = v42 & v41;
  sub_22C5E7630();
  if (!v43)
  {
LABEL_4:
    v46 = v39;
    while (1)
    {
      v39 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v39 >= v32)
      {
        break;
      }

      ++v46;
      if (*(v40 + 8 * v39))
      {
        sub_22C375A38();
        v43 = v48 & v47;
        goto LABEL_9;
      }
    }

    sub_22C36ED64();
    if (v59 != v60)
    {
      sub_22C5E7578(v58);
    }

    else
    {
      v61 = sub_22C3856F8();
      sub_22C88FAFC(v61, v62, v40);
    }

    v35 = v32;
    *(v36 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C383840();
LABEL_9:
    v49 = *(v36 + 48) + (v44 | (v39 << 6)) * v45;
    v50 = *v49;
    v51 = *(v49 + 8);
    v52 = *(v49 + 16);
    sub_22C375D08();
    sub_22C5E7F08(&a12);
    sub_22C90B64C();
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C37AC88();
    if (v53)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    sub_22C5E7588();
    sub_22C5E74D0();
    *(v38 + 56 + v55) = v56;
    sub_22C5E78E0();
    *v57 = v50;
    *(v57 + 8) = v51;
    *(v57 + 16) = v52;
    sub_22C37B32C();
    v36 = v63;
    if (!v43)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v53)
    {
      if (v54)
      {
        break;
      }
    }

    sub_22C5E7764();
    sub_22C375F24();
    if (!v53)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5E24E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C3806F4();
  v33 = v32;
  v34 = *v32;
  sub_22C36D13C();
  sub_22C3A5908(&qword_27D9BF0C8, &qword_22C921F38);
  v35 = sub_22C5E7874();
  v36 = sub_22C5E75B0(v35);
  if (!*(v34 + 16))
  {
LABEL_23:

    *v33 = v36;
    sub_22C5E78F0();
    return;
  }

  v55 = v34;
  v37 = 0;
  v38 = v34 + 56;
  sub_22C36AD3C();
  v41 = v40 & v39;
  sub_22C5E7630();
  if (!v41)
  {
LABEL_4:
    v43 = v37;
    while (1)
    {
      v37 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v37 >= v32)
      {
        break;
      }

      ++v43;
      if (*(v38 + 8 * v37))
      {
        sub_22C375A38();
        v41 = v45 & v44;
        goto LABEL_9;
      }
    }

    sub_22C36ED64();
    if (v51 != v52)
    {
      sub_22C5E7578(v50);
    }

    else
    {
      v53 = sub_22C3856F8();
      sub_22C88FAFC(v53, v54, v38);
    }

    v33 = v32;
    *(v34 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    sub_22C383840();
LABEL_9:
    v46 = *(*(v34 + 48) + 8 * (v42 | (v37 << 6)));
    sub_22C90A11C();
    sub_22C90B62C();
    sub_22C909FFC();
    sub_22C90B66C();

    sub_22C5E7564();
    if (v47)
    {
      break;
    }

    sub_22C37F394();
LABEL_17:
    sub_22C36D914();
    sub_22C5E7BC4();
    *(*(v36 + 48) + 8 * v49) = v46;
    sub_22C37B32C();
    v34 = v55;
    if (!v41)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v47)
    {
      if (v48)
      {
        break;
      }
    }

    sub_22C5E7764();
    sub_22C375F24();
    if (!v47)
    {
      sub_22C36D900();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_22C5E2694()
{
  sub_22C3A5908(&qword_27D9BF170, &qword_22C921FD8);
  sub_22C5E784C();
  sub_22C5E7A54();
  if (v4)
  {
    v5 = sub_22C3890D4();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      sub_22C5E7D00(v5, v6);
    }

    sub_22C37A1E0();
    while (v3)
    {
      sub_22C3D35D4();
LABEL_15:
      sub_22C5E7B24(v10);
    }

    v11 = v1;
    while (1)
    {
      v1 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      sub_22C5E7CDC();
      if (v12)
      {
        sub_22C375A38();
        v3 = v14 & v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_22C5E274C()
{
  sub_22C3A5908(&qword_27D9BF0A0, &unk_22C922100);
  sub_22C5E784C();
  sub_22C5E7A54();
  if (v4)
  {
    v5 = sub_22C3890D4();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      sub_22C5E7D00(v5, v6);
    }

    sub_22C37A1E0();
    while (v3)
    {
      sub_22C3D35D4();
LABEL_15:
      sub_22C5E7B24(v10);
    }

    v11 = v1;
    while (1)
    {
      v1 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      sub_22C5E7CDC();
      if (v12)
      {
        sub_22C375A38();
        v3 = v14 & v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_22C5E2804()
{
  sub_22C3A5908(&qword_27D9BF078, &unk_22C926CB0);
  sub_22C5E784C();
  sub_22C5E7A54();
  if (v3)
  {
    v4 = sub_22C3890D4();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      sub_22C5E7D00(v4, v5);
    }

    sub_22C5E7728();
    if (v11)
    {
      do
      {
        sub_22C5E7CC4();
LABEL_15:
        v16 = 3 * v13;
        v17 = *(v1 + 48) + 8 * v16;
        v18 = *(v17 + 16);
        v19 = v0[6] + 8 * v16;
        *v19 = *v17;
        *(v19 + 16) = v18;
      }

      while (v12);
    }

    v14 = v9;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + 8 * v15))
      {
        sub_22C5E7CAC();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_22C5E28CC()
{
  sub_22C36BA7C();
  v3 = sub_22C5E7C70();
  v4 = type metadata accessor for PromptTreeIdentifier.Label(v3);
  v5 = sub_22C3699B8(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C3881C0();
  sub_22C3A5908(&qword_27D9BF160, &qword_22C921FC8);
  sub_22C5E7B6C();
  sub_22C5E7CF4();
  if (v6)
  {
    sub_22C37B6EC();
    sub_22C37E308();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      sub_22C5E7EF0(v7, v8);
    }

    sub_22C37BB44();
    while (v2)
    {
      sub_22C36D6B8();
LABEL_15:
      sub_22C5E763C();
      sub_22C5E77EC();
      sub_22C5E7EC0();
      sub_22C5E74B8();
      sub_22C5E7EA8(v14);
    }

    v12 = v0;
    while (1)
    {
      v0 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v0 >= v1)
      {
        goto LABEL_17;
      }

      sub_22C5E7AE4();
      if (v13)
      {
        sub_22C3700F4();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E2A88()
{
  sub_22C3A5908(&qword_27D9BF178, &unk_22C921FE0);
  sub_22C5E784C();
  sub_22C5E7A54();
  if (v3)
  {
    v4 = sub_22C3890D4();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      sub_22C5E7D00(v4, v5);
    }

    sub_22C5E7728();
    if (v11)
    {
      do
      {
        sub_22C5E7CC4();
LABEL_15:
        *(v0[6] + v13) = *(*(v1 + 48) + v13);
      }

      while (v12);
    }

    v14 = v9;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + 8 * v15))
      {
        sub_22C5E7CAC();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void *sub_22C5E2B3C()
{
  v1 = v0;
  sub_22C3A5908(&qword_27D9BF150, &qword_22C921FB8);
  v2 = *v0;
  v3 = sub_22C90AEDC();
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
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        do
        {
LABEL_15:
          v11 &= v11 - 1;
        }

        while (v11);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

void sub_22C5E2C48()
{
  sub_22C36BA7C();
  v3 = sub_22C5E7C70();
  v4 = _s14TypedCandidateVMa(v3);
  v5 = sub_22C3699B8(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C3881C0();
  sub_22C3A5908(&qword_27D9BF130, &qword_22C921F98);
  sub_22C5E7B6C();
  sub_22C5E7CF4();
  if (v6)
  {
    sub_22C37B6EC();
    sub_22C37E308();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      sub_22C5E7EF0(v7, v8);
    }

    sub_22C37BB44();
    while (v2)
    {
      sub_22C36D6B8();
LABEL_15:
      sub_22C5E763C();
      sub_22C5E77D4();
      sub_22C5E7EC0();
      sub_22C5E745C();
      sub_22C5E7EA8(v14);
    }

    v12 = v0;
    while (1)
    {
      v0 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v0 >= v1)
      {
        goto LABEL_17;
      }

      sub_22C5E7AE4();
      if (v13)
      {
        sub_22C3700F4();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E2E2C()
{
  sub_22C36BA7C();
  v3 = sub_22C5E7C70();
  DecorationTuple = type metadata accessor for QueryDecorationTuple(v3);
  v5 = sub_22C3699B8(DecorationTuple);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C3881C0();
  sub_22C3A5908(&qword_27D9BF088, &qword_22C921F00);
  sub_22C5E7B6C();
  sub_22C5E7CF4();
  if (v6)
  {
    sub_22C37B6EC();
    sub_22C37E308();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      sub_22C5E7EF0(v7, v8);
    }

    sub_22C37BB44();
    while (v2)
    {
      sub_22C36D6B8();
LABEL_15:
      sub_22C5E763C();
      sub_22C5E77BC();
      sub_22C5E7EC0();
      sub_22C37E87C();
      sub_22C5E7EA8(v14);
    }

    v12 = v0;
    while (1)
    {
      v0 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v0 >= v1)
      {
        goto LABEL_17;
      }

      sub_22C5E7AE4();
      if (v13)
      {
        sub_22C3700F4();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E2F48()
{
  sub_22C36BA7C();
  v3 = sub_22C5E7C70();
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(v3);
  v5 = sub_22C3699B8(DecorationTupleParameter);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C3881C0();
  sub_22C3A5908(&qword_27D9BF090, &qword_22C921F08);
  sub_22C5E7B6C();
  sub_22C5E7CF4();
  if (v6)
  {
    sub_22C37B6EC();
    sub_22C37E308();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      sub_22C5E7EF0(v7, v8);
    }

    sub_22C37BB44();
    while (v2)
    {
      sub_22C36D6B8();
LABEL_15:
      sub_22C5E763C();
      sub_22C380560();
      sub_22C5E7EC0();
      sub_22C3827F0();
      sub_22C5E7EA8(v14);
    }

    v12 = v0;
    while (1)
    {
      v0 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v0 >= v1)
      {
        goto LABEL_17;
      }

      sub_22C5E7AE4();
      if (v13)
      {
        sub_22C3700F4();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E3078(uint64_t *a1, uint64_t *a2)
{
  sub_22C3A5908(a1, a2);
  sub_22C5E784C();
  sub_22C5E7A54();
  if (v7)
  {
    v8 = sub_22C3890D4();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      sub_22C5E7D00(v8, v9);
    }

    sub_22C37A1E0();
    while (v6)
    {
      sub_22C3D35D4();
LABEL_15:
      *(v2[6] + 8 * (v13 | (v4 << 6))) = *(*(v3 + 48) + 8 * (v13 | (v4 << 6)));
    }

    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        goto LABEL_17;
      }

      sub_22C5E7CDC();
      if (v15)
      {
        sub_22C375A38();
        v6 = v17 & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void sub_22C5E3134()
{
  sub_22C36BA7C();
  v4 = v0;
  sub_22C3A5908(&qword_27D9BF0B0, &unk_22C926980);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37FCFC();
  v6 = sub_22C3A5908(&qword_27D9BF0B8, &qword_22C921F30);
  v7 = *v4;
  sub_22C90AEDC();
  sub_22C5E7E50();
  if (v8)
  {
    sub_22C37B6EC();
    sub_22C5E7C4C();
    if (v12)
    {
      v13 = v9 >= v11;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      memmove(v9, v1, 8 * v10);
    }

    v14 = 0;
    *(v6 + 16) = *(v7 + 16);
    sub_22C5E7474();
    sub_22C5E7AAC();
    while (v3)
    {
      sub_22C382D5C();
LABEL_15:
      v19 = sub_22C5E7918();
      v20(v19);
      v21 = sub_22C5E7AC8();
      v22(v21);
    }

    v15 = v14;
    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v14 >= v2)
      {
        goto LABEL_17;
      }

      sub_22C5E79B0();
      if (v16)
      {
        sub_22C375A38();
        v3 = v18 & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E3308()
{
  sub_22C36BA7C();
  v4 = v3;
  v6 = v5;
  v7 = sub_22C5E7C70();
  v8(v7);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C37FCFC();
  v10 = sub_22C3A5908(v6, v4);
  v11 = *v0;
  sub_22C90AEDC();
  sub_22C5E7E50();
  if (v12)
  {
    sub_22C37B6EC();
    sub_22C5E7C4C();
    if (v16)
    {
      v17 = v13 >= v15;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      memmove(v13, v6, 8 * v14);
    }

    v18 = 0;
    *(v10 + 16) = *(v11 + 16);
    sub_22C5E7474();
    sub_22C5E7AAC();
    while (v2)
    {
      sub_22C382D5C();
LABEL_15:
      v23 = sub_22C5E7918();
      v24(v23);
      v25 = sub_22C5E7AC8();
      v26(v25);
    }

    v19 = v18;
    while (1)
    {
      v18 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v18 >= v1)
      {
        goto LABEL_17;
      }

      sub_22C5E79B0();
      if (v20)
      {
        sub_22C375A38();
        v2 = v22 & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E3484()
{
  sub_22C3A5908(&qword_27D9BF0E8, &unk_22C926C70);
  sub_22C5E784C();
  sub_22C5E7A54();
  if (v5)
  {
    v6 = sub_22C3890D4();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      sub_22C5E7D00(v6, v7);
    }

    sub_22C37A1E0();
    while (v4)
    {
      sub_22C3D35D4();
LABEL_15:
      v16 = 3 * (v11 | (v2 << 6));
      v17 = *(v1 + 48) + 8 * v16;
      v19 = *v17;
      v18 = *(v17 + 8);
      LOBYTE(v17) = *(v17 + 16);
      v20 = v0[6] + 8 * v16;
      *v20 = v19;
      *(v20 + 8) = v18;
      *(v20 + 16) = v17;
    }

    v12 = v2;
    while (1)
    {
      v2 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      sub_22C5E7CDC();
      if (v13)
      {
        sub_22C375A38();
        v4 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_22C5E3564()
{
  sub_22C3A5908(&qword_27D9BF0C8, &qword_22C921F38);
  sub_22C5E784C();
  sub_22C5E7A54();
  if (v5)
  {
    v6 = sub_22C3890D4();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      sub_22C5E7D00(v6, v7);
    }

    sub_22C37A1E0();
    for (; v4; v18 = v17)
    {
      sub_22C3D35D4();
LABEL_15:
      v16 = v11 | (v2 << 6);
      v17 = *(*(v1 + 48) + 8 * v16);
      *(v0[6] + 8 * v16) = v17;
    }

    v12 = v2;
    while (1)
    {
      v2 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      sub_22C5E7CDC();
      if (v13)
      {
        sub_22C375A38();
        v4 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_22C5E3630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C3744F8();
  sub_22C3856E0();
  sub_22C3A5908(&qword_27D9BF170, &qword_22C921FD8);
  v35 = sub_22C375F14();
  sub_22C3839C0(v35, v36);
  sub_22C5E76A0();
  if (v37)
  {
    sub_22C5E7C64();
    sub_22C36AD3C();
    sub_22C36CD2C();
    if (v34)
    {
      while (1)
      {
        sub_22C382D5C();
LABEL_9:
        sub_22C5E7940();
        v43 = *v42;
        v44 = v42[1];
        sub_22C5E7C1C();

        sub_22C909FFC();
        sub_22C90B66C();
        sub_22C36C03C();
        sub_22C38A074();
        if (v45)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        sub_22C36D914();
        sub_22C5E753C();
        *v47 = v43;
        v47[1] = v44;
        sub_22C37B32C();
        if (!v34)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v45)
        {
          if (v46)
          {
            break;
          }
        }

        sub_22C5E7764();
        sub_22C5E7554();
        if (!v45)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v38 = v32;
      while (1)
      {
        v32 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v32 >= v33)
        {

          v30 = a9;
          goto LABEL_21;
        }

        sub_22C5E79B0();
        if (v39)
        {
          sub_22C375A38();
          v34 = v41 & v40;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v30 = v31;
    sub_22C38C3F0();
  }
}

void sub_22C5E3770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C3744F8();
  sub_22C3856E0();
  sub_22C3A5908(&qword_27D9BF0A0, &unk_22C922100);
  v35 = sub_22C375F14();
  sub_22C3839C0(v35, v36);
  sub_22C5E76A0();
  if (v37)
  {
    sub_22C5E7C64();
    sub_22C36AD3C();
    sub_22C36CD2C();
    if (v34)
    {
      while (1)
      {
        sub_22C382D5C();
LABEL_9:
        sub_22C5E7940();
        v43 = *v42;
        v44 = v42[1];
        sub_22C5E7C1C();

        sub_22C909FFC();
        sub_22C90B66C();
        sub_22C36C03C();
        sub_22C38A074();
        if (v45)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        sub_22C36D914();
        sub_22C5E753C();
        *v47 = v43;
        v47[1] = v44;
        sub_22C37B32C();
        if (!v34)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v45)
        {
          if (v46)
          {
            break;
          }
        }

        sub_22C5E7554();
        if (!v45)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v38 = v32;
      while (1)
      {
        v32 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v32 >= v33)
        {

          v30 = a9;
          goto LABEL_21;
        }

        sub_22C5E79B0();
        if (v39)
        {
          sub_22C375A38();
          v34 = v41 & v40;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v30 = v31;
    sub_22C38C3F0();
  }
}

void sub_22C5E38B4()
{
  sub_22C3806F4();
  sub_22C3856E0();
  sub_22C3A5908(&qword_27D9BF078, &unk_22C926CB0);
  v4 = sub_22C375F14();
  sub_22C3839C0(v4, v5);
  sub_22C5E76A0();
  if (v6)
  {
    v24 = v0;
    v7 = 0;
    sub_22C36AD3C();
    sub_22C5E7650();
    if (v0)
    {
      while (1)
      {
        sub_22C5E7528();
LABEL_9:
        sub_22C5E7D94();
        v15 = (v13 + v12 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(v15 + 16);
        sub_22C375D08();
        MEMORY[0x2318B8B30](v17 >> 14);
        MEMORY[0x2318B8B30](v16 >> 14);
        MEMORY[0x2318B8B10](v18);
        sub_22C90B66C();
        sub_22C374D64();
        if (v19)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        sub_22C5E7588();
        sub_22C5E74D0();
        *(v2 + v21) = v22;
        sub_22C5E78E0();
        *v23 = v17;
        *(v23 + 8) = v16;
        *(v23 + 16) = v18;
        sub_22C37B32C();
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v19)
        {
          if (v20)
          {
            break;
          }
        }

        sub_22C5E7764();
        sub_22C5E74E0();
        if (!v19)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v8 = v7;
      while (1)
      {
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v7 >= v3)
        {

          v0 = v24;
          goto LABEL_21;
        }

        sub_22C5E7AE4();
        if (v9)
        {
          sub_22C375A38();
          v0 = (v11 & v10);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v0 = v1;
    sub_22C5E78F0();
  }
}

void sub_22C5E3A20()
{
  sub_22C36BA7C();
  v3 = sub_22C37EC78();
  v4 = type metadata accessor for PromptTreeIdentifier.Label(v3);
  v5 = sub_22C3699B8(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  sub_22C3799BC();
  sub_22C3A5908(&qword_27D9BF160, &qword_22C921FC8);
  v9 = sub_22C386A68();
  if (*(v1 + 16))
  {
    v10 = 0;
    sub_22C36AD3C();
    v13 = v12 & v11;
    sub_22C5E79EC();
    if (v13)
    {
      while (1)
      {
        sub_22C383840();
LABEL_9:
        sub_22C5E77EC();
        sub_22C5E7218(v18, v8);
        sub_22C90B62C();
        sub_22C48640C();
        sub_22C90B66C();
        sub_22C36C03C();
        sub_22C38A074();
        if (v19)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        sub_22C5E7588();
        sub_22C5E74D0();
        *(v9 + 56 + v21) = v22;
        sub_22C5E74B8();
        sub_22C5E7270(v8, v23);
        ++*(v9 + 16);
        if (!v13)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v19)
        {
          if (v20)
          {
            break;
          }
        }

        sub_22C5E7554();
        if (!v19)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v14 = v10;
      while (1)
      {
        v10 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v10 >= v2)
        {
          goto LABEL_19;
        }

        sub_22C5E79B0();
        if (v15)
        {
          sub_22C375A38();
          v13 = v17 & v16;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v0 = v9;
    sub_22C36CC48();
  }
}

void sub_22C5E3C0C()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v3 = sub_22C90952C();
  v4 = sub_22C5E73A0(v3);
  MEMORY[0x28223BE20](v4);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF0A8, &unk_22C921F20);
  sub_22C386A68();
  v5 = sub_22C3865B4();
  if (v6)
  {
    sub_22C36ACEC(v5);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v9 = sub_22C372A38();
        v10(v9);
        sub_22C386278();
        v12 = sub_22C5E72C8(&qword_28142FA80, v11, MEMORY[0x277D72D68]);
        sub_22C36ED74(v12);
        sub_22C5E7364();
        if (v13)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        v16 = sub_22C5E7314(v14);
        v17(v16);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v13)
        {
          if (v15)
          {
            break;
          }
        }

        sub_22C5E74E0();
        if (!v13)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v7 = v2;
      while (1)
      {
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v2 >= v0)
        {
          goto LABEL_19;
        }

        sub_22C5E7868();
        if (v8)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E3D90()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v3 = sub_22C902D0C();
  v4 = sub_22C5E73A0(v3);
  MEMORY[0x28223BE20](v4);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF168, &qword_22C921FD0);
  sub_22C386A68();
  v5 = sub_22C3865B4();
  if (v6)
  {
    sub_22C36ACEC(v5);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v9 = sub_22C372A38();
        v10(v9);
        sub_22C5E73E4();
        v12 = sub_22C5E72C8(&qword_27D9BAAA8, v11, MEMORY[0x277D1D808]);
        sub_22C36ED74(v12);
        sub_22C5E7364();
        if (v13)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        v16 = sub_22C5E7314(v14);
        v17(v16);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v13)
        {
          if (v15)
          {
            break;
          }
        }

        sub_22C5E74E0();
        if (!v13)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v7 = v2;
      while (1)
      {
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v2 >= v0)
        {
          goto LABEL_19;
        }

        sub_22C5E7868();
        if (v8)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E3F14()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v3 = sub_22C901FAC();
  v4 = sub_22C5E73A0(v3);
  MEMORY[0x28223BE20](v4);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF120, &unk_22C926C80);
  sub_22C386A68();
  v5 = sub_22C3865B4();
  if (v6)
  {
    sub_22C36ACEC(v5);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v9 = sub_22C372A38();
        v10(v9);
        sub_22C5E7488();
        v12 = sub_22C5E72C8(&qword_2814357B0, v11, MEMORY[0x277D1C348]);
        sub_22C36ED74(v12);
        sub_22C5E7364();
        if (v13)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        v16 = sub_22C5E7314(v14);
        v17(v16);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v13)
        {
          if (v15)
          {
            break;
          }
        }

        sub_22C5E74E0();
        if (!v13)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v7 = v2;
      while (1)
      {
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v2 >= v0)
        {
          goto LABEL_19;
        }

        sub_22C5E7868();
        if (v8)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E4098()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v3 = sub_22C90941C();
  v4 = sub_22C5E73A0(v3);
  MEMORY[0x28223BE20](v4);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF158, &qword_22C921FC0);
  sub_22C386A68();
  v5 = sub_22C3865B4();
  if (v6)
  {
    sub_22C36ACEC(v5);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v9 = sub_22C372A38();
        v10(v9);
        sub_22C5E7804();
        v12 = sub_22C5E72C8(&qword_27D9BAAA0, v11, MEMORY[0x277D72B10]);
        sub_22C36ED74(v12);
        sub_22C5E7364();
        if (v13)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        v16 = sub_22C5E7314(v14);
        v17(v16);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v13)
        {
          if (v15)
          {
            break;
          }
        }

        sub_22C5E74E0();
        if (!v13)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v7 = v2;
      while (1)
      {
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v2 >= v0)
        {
          goto LABEL_19;
        }

        sub_22C5E7868();
        if (v8)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E421C()
{
  sub_22C3744F8();
  sub_22C3856E0();
  sub_22C3A5908(&qword_27D9BF178, &unk_22C921FE0);
  v3 = sub_22C375F14();
  sub_22C3839C0(v3, v4);
  sub_22C5E76A0();
  if (v5)
  {
    v18 = v0;
    v6 = 0;
    sub_22C5E7620();
    sub_22C5E7650();
    if (v0)
    {
      while (1)
      {
        sub_22C5E7528();
LABEL_9:
        sub_22C5E7D94();
        v13 = *(v12 + v11);
        sub_22C5E7C1C();
        MEMORY[0x2318B8B10](v13);
        sub_22C90B66C();
        sub_22C37EF28();
        if (v14)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        sub_22C3872F0(v15);
        *(*(v1 + 48) + v17) = v13;
        sub_22C37B32C();
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v14)
        {
          if (v16)
          {
            break;
          }
        }

        sub_22C5E7764();
        sub_22C5E74E0();
        if (!v14)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v7 = v6;
      while (1)
      {
        v6 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v6 >= v2)
        {

          v0 = v18;
          goto LABEL_21;
        }

        sub_22C5E7AE4();
        if (v8)
        {
          sub_22C375A38();
          v0 = (v10 & v9);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v0 = v1;
    sub_22C38C3F0();
  }
}

uint64_t sub_22C5E4358(uint64_t a1)
{
  v2 = *v1;
  sub_22C3A5908(&qword_27D9BF150, &qword_22C921FB8);
  result = sub_22C90AEEC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (!v8)
    {
      goto LABEL_6;
    }

    do
    {
LABEL_10:
      sub_22C90B62C();
      MEMORY[0x2318B8B10](0);
      result = sub_22C90B66C();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v10 + 8 * (v13 >> 6))) == 0)
      {
        v16 = 0;
        v17 = (63 - v12) >> 6;
        while (++v14 != v17 || (v16 & 1) == 0)
        {
          v18 = v14 == v17;
          if (v14 == v17)
          {
            v14 = 0;
          }

          v16 |= v18;
          v19 = *(v10 + 8 * v14);
          if (v19 != -1)
          {
            v15 = __clz(__rbit64(~v19)) + (v14 << 6);
            goto LABEL_19;
          }
        }

        goto LABEL_23;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v10 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
      v8 &= v8 - 1;
      *(v10 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      ++*(v4 + 16);
    }

    while (v8);
LABEL_6:
    while (1)
    {
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_21;
      }

      v8 = *(v2 + 56 + 8 * v11);
      ++v5;
      if (v8)
      {
        v5 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_21:

    *v1 = v4;
  }

  return result;
}

void sub_22C5E4530()
{
  sub_22C36BA7C();
  v2 = sub_22C37EC78();
  _s14TypedCandidateVMa(v2);
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C377578();
  v4 = *v0;
  sub_22C3A5908(&qword_27D9BF130, &qword_22C921F98);
  v5 = sub_22C5E7B18();
  v6 = sub_22C5E7594(v5);
  if (*(v4 + 16))
  {
    v7 = 0;
    sub_22C36AD3C();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      while (1)
      {
        sub_22C383840();
LABEL_9:
        sub_22C5E77D4();
        sub_22C5E7218(v16, v1);
        sub_22C90B62C();
        sub_22C9093BC();
        sub_22C5E7444();
        sub_22C5E72C8(&qword_28142FA90, v17, MEMORY[0x277D72A88]);
        sub_22C909F8C();
        sub_22C909FFC();
        sub_22C909FFC();
        sub_22C90B66C();
        sub_22C36C03C();
        sub_22C38A074();
        if (v18)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        sub_22C5E7588();
        sub_22C5E74D0();
        *(v6 + 56 + v20) = v21;
        sub_22C5E745C();
        sub_22C5E7270(v1, v22);
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v18)
        {
          if (v19)
          {
            break;
          }
        }

        sub_22C5E7764();
        sub_22C5E7554();
        if (!v18)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v12)
        {
          goto LABEL_19;
        }

        ++v13;
        if (*(v4 + 56 + 8 * v7))
        {
          sub_22C375A38();
          v10 = v15 & v14;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E478C()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v3 = sub_22C908C5C();
  v4 = sub_22C5E73A0(v3);
  MEMORY[0x28223BE20](v4);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF138, &qword_22C921FA0);
  sub_22C386A68();
  v5 = sub_22C3865B4();
  if (v6)
  {
    sub_22C36ACEC(v5);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v9 = sub_22C372A38();
        v10(v9);
        sub_22C5E7388();
        v12 = sub_22C5E72C8(&qword_27D9BAA90, v11, MEMORY[0x277D1E970]);
        sub_22C36ED74(v12);
        sub_22C5E7364();
        if (v13)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        v16 = sub_22C5E7314(v14);
        v17(v16);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v13)
        {
          if (v15)
          {
            break;
          }
        }

        sub_22C5E74E0();
        if (!v13)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v7 = v2;
      while (1)
      {
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v2 >= v0)
        {
          goto LABEL_19;
        }

        sub_22C5E7868();
        if (v8)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E4910()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v3 = sub_22C9069BC();
  v4 = sub_22C5E73A0(v3);
  MEMORY[0x28223BE20](v4);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF140, &qword_22C921FA8);
  sub_22C386A68();
  v5 = sub_22C3865B4();
  if (v6)
  {
    sub_22C36ACEC(v5);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v9 = sub_22C372A38();
        v10(v9);
        sub_22C5E73B8();
        v12 = sub_22C5E72C8(&qword_27D9BAA98, v11, MEMORY[0x277D1DCF8]);
        sub_22C36ED74(v12);
        sub_22C5E7364();
        if (v13)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        v16 = sub_22C5E7314(v14);
        v17(v16);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v13)
        {
          if (v15)
          {
            break;
          }
        }

        sub_22C5E74E0();
        if (!v13)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v7 = v2;
      while (1)
      {
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v2 >= v0)
        {
          goto LABEL_19;
        }

        sub_22C5E7868();
        if (v8)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E4A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  v21 = v20;
  sub_22C908C5C();
  sub_22C369824();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_22C3698A8();
  sub_22C36BA0C();
  sub_22C9069BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v25);
  sub_22C3698A8();
  sub_22C5E7AA0(v26);
  v27 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  v28 = sub_22C369914(v27);
  MEMORY[0x28223BE20](v28);
  sub_22C369ABC();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  sub_22C377318();
  sub_22C5E7AFC();
  sub_22C3A5908(&qword_27D9BF118, &unk_22C921F80);
  v33 = sub_22C5E7874();
  sub_22C5E7594(v33);
  sub_22C5E7E50();
  if (v34)
  {
    sub_22C38B45C();
    sub_22C387B80();
    if (v35)
    {
      while (2)
      {
        sub_22C36C050();
LABEL_9:
        sub_22C5E79A0();
        v42 = *(v41 + 8 * v40);
        sub_22C90B62C();
        v43 = (v42 + 64);
        sub_22C5E7620();
        v46 = v45 & v44;
        sub_22C5E79E0();
        sub_22C5E7BF4(v47);
        sub_22C5E7B88();
        while (1)
        {
          if (!v46)
          {
            v31 = v79;
            while (1)
            {
              v48 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                break;
              }

              if (v48 >= v78)
              {
                sub_22C375F34();
                v71 = sub_22C5E7B18();
                sub_22C374D84(v71, v72, v73, v74);
                v46 = 0;
                goto LABEL_17;
              }

              v46 = v43[v48];
              ++v23;
              if (v46)
              {
                v23 = v48;
                goto LABEL_16;
              }
            }

            __break(1u);
            goto LABEL_24;
          }

LABEL_16:
          v46 &= v46 - 1;
          sub_22C5E7DCC();
          sub_22C383D08();
          v49 = sub_22C5E7A14();
          v50(v49);
          v51 = sub_22C380144();
          v52(v51);
          sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
          v53 = sub_22C5E788C();
          v54(v53);
          v55 = sub_22C5E7A34();
          v56(v55);
          sub_22C387310(v31);
LABEL_17:
          v57 = sub_22C50B478();
          sub_22C5E71BC(v57, v58, &qword_27D9BF108, &unk_22C921F70);
          sub_22C375F34();
          v59 = sub_22C36A024();
          sub_22C36D3E0(v59);
          if (v60)
          {
            break;
          }

          v61 = sub_22C5E79BC();
          v62(v61);
          sub_22C36BA4C();
          v63 = sub_22C5E7E00();
          v64(v63);
          sub_22C5E79F8();
          sub_22C5E73B8();
          sub_22C5E72C8(&qword_27D9BAA98, v65, MEMORY[0x277D1DCF8]);
          v66 = sub_22C387D60();
          sub_22C5E7E90(v66);
          v67 = sub_22C5E768C();
          v68(v67);
          sub_22C5E7388();
          sub_22C5E72C8(&qword_27D9BAA90, v69, MEMORY[0x277D1E970]);
          sub_22C387D60();
          sub_22C909F8C();
          sub_22C36BA4C();
          v70(&qword_27D9BF110, v21);
          v43 = &v80;
          sub_22C90B66C();
          sub_22C5E7E3C();
        }

        sub_22C5E7ED8();
        sub_22C5E7D7C();
        v75 = sub_22C90B66C();
        v76 = sub_22C38A1A0(v75);
        sub_22C383BF0(v76);
        if (v77)
        {
          continue;
        }

        break;
      }
    }

    sub_22C5E7C7C();
    while (1)
    {
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v39 >= v38)
      {
        goto LABEL_22;
      }

      ++v36;
      if (*(v37 + 8 * v39))
      {
        sub_22C375A38();
        goto LABEL_9;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    sub_22C5E7DD8();
    sub_22C36CC48();
  }
}

void sub_22C5E4EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  v21 = v20;
  sub_22C908C5C();
  sub_22C369824();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_22C3698A8();
  sub_22C36BA0C();
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v25);
  sub_22C3698A8();
  sub_22C5E7AA0(v26);
  v27 = sub_22C3A5908(&qword_27D9BF0F0, &qword_22C921F58);
  v28 = sub_22C369914(v27);
  MEMORY[0x28223BE20](v28);
  sub_22C369ABC();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  sub_22C377318();
  sub_22C5E7AFC();
  sub_22C3A5908(&qword_27D9BF0F8, &unk_22C921F60);
  v33 = sub_22C5E7874();
  sub_22C5E7594(v33);
  sub_22C5E7E50();
  if (v34)
  {
    sub_22C38B45C();
    sub_22C387B80();
    if (v35)
    {
      while (2)
      {
        sub_22C36C050();
LABEL_9:
        sub_22C5E79A0();
        v42 = *(v41 + 8 * v40);
        sub_22C90B62C();
        v43 = (v42 + 64);
        sub_22C5E7620();
        v46 = v45 & v44;
        sub_22C5E79E0();
        sub_22C5E7BF4(v47);
        sub_22C5E7B88();
        while (1)
        {
          if (!v46)
          {
            v31 = v79;
            while (1)
            {
              v48 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                break;
              }

              if (v48 >= v78)
              {
                sub_22C375F34();
                v71 = sub_22C5E7B18();
                sub_22C374D84(v71, v72, v73, v74);
                v46 = 0;
                goto LABEL_17;
              }

              v46 = v43[v48];
              ++v23;
              if (v46)
              {
                v23 = v48;
                goto LABEL_16;
              }
            }

            __break(1u);
            goto LABEL_24;
          }

LABEL_16:
          v46 &= v46 - 1;
          sub_22C5E7DCC();
          sub_22C383D08();
          v49 = sub_22C5E7A14();
          v50(v49);
          v51 = sub_22C380144();
          v52(v51);
          sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
          v53 = sub_22C5E788C();
          v54(v53);
          v55 = sub_22C5E7A34();
          v56(v55);
          sub_22C387310(v31);
LABEL_17:
          v57 = sub_22C50B478();
          sub_22C5E71BC(v57, v58, &qword_27D9BF0F0, &qword_22C921F58);
          sub_22C375F34();
          v59 = sub_22C36A024();
          sub_22C36D3E0(v59);
          if (v60)
          {
            break;
          }

          v61 = sub_22C5E79BC();
          v62(v61);
          sub_22C36BA4C();
          v63 = sub_22C5E7E00();
          v64(v63);
          sub_22C5E79F8();
          sub_22C5E7488();
          sub_22C5E72C8(&qword_2814357B0, v65, MEMORY[0x277D1C348]);
          v66 = sub_22C387D60();
          sub_22C5E7E90(v66);
          v67 = sub_22C5E768C();
          v68(v67);
          sub_22C5E7388();
          sub_22C5E72C8(&qword_27D9BAA90, v69, MEMORY[0x277D1E970]);
          sub_22C387D60();
          sub_22C909F8C();
          sub_22C36BA4C();
          v70(&qword_27D9BF100, v21);
          v43 = &v80;
          sub_22C90B66C();
          sub_22C5E7E3C();
        }

        sub_22C5E7ED8();
        sub_22C5E7D7C();
        v75 = sub_22C90B66C();
        v76 = sub_22C38A1A0(v75);
        sub_22C383BF0(v76);
        if (v77)
        {
          continue;
        }

        break;
      }
    }

    sub_22C5E7C7C();
    while (1)
    {
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v39 >= v38)
      {
        goto LABEL_22;
      }

      ++v36;
      if (*(v37 + 8 * v39))
      {
        sub_22C375A38();
        goto LABEL_9;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    sub_22C5E7DD8();
    sub_22C36CC48();
  }
}

void sub_22C5E52EC()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v3 = sub_22C9093BC();
  v4 = sub_22C5E73A0(v3);
  MEMORY[0x28223BE20](v4);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF128, &qword_22C921F90);
  sub_22C386A68();
  v5 = sub_22C3865B4();
  if (v6)
  {
    sub_22C36ACEC(v5);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v9 = sub_22C372A38();
        v10(v9);
        sub_22C5E7444();
        v12 = sub_22C5E72C8(&qword_28142FA90, v11, MEMORY[0x277D72A88]);
        sub_22C36ED74(v12);
        sub_22C5E7364();
        if (v13)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        v16 = sub_22C5E7314(v14);
        v17(v16);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v13)
        {
          if (v15)
          {
            break;
          }
        }

        sub_22C5E74E0();
        if (!v13)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v7 = v2;
      while (1)
      {
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v2 >= v0)
        {
          goto LABEL_19;
        }

        sub_22C5E7868();
        if (v8)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E5470()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v3 = sub_22C903CCC();
  v4 = sub_22C5E73A0(v3);
  MEMORY[0x28223BE20](v4);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF0D0, &qword_22C921F40);
  sub_22C386A68();
  v5 = sub_22C3865B4();
  if (v6)
  {
    sub_22C36ACEC(v5);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v9 = sub_22C372A38();
        v10(v9);
        sub_22C5E742C();
        v12 = sub_22C5E72C8(&qword_281435738, v11, MEMORY[0x277D1F0E8]);
        sub_22C36ED74(v12);
        sub_22C5E7364();
        if (v13)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        v16 = sub_22C5E7314(v14);
        v17(v16);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v13)
        {
          if (v15)
          {
            break;
          }
        }

        sub_22C5E74E0();
        if (!v13)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v7 = v2;
      while (1)
      {
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v2 >= v0)
        {
          goto LABEL_19;
        }

        sub_22C5E7868();
        if (v8)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E55F4()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v26 = sub_22C9036EC();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  v25 = v4;
  v5 = sub_22C36BA0C();
  type metadata accessor for QueryDecorationTuple(v5);
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  v24 = v7;
  v8 = *v0;
  sub_22C3A5908(&qword_27D9BF088, &qword_22C921F00);
  v9 = sub_22C5E7594(v8);
  if (*(v8 + 16))
  {
    v10 = 0;
    sub_22C36AD3C();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        sub_22C383840();
LABEL_9:
        sub_22C5E77BC();
        sub_22C5E7218(v19, v24);
        sub_22C90B62C();
        sub_22C90371C();
        sub_22C5E77A4();
        sub_22C5E72C8(&qword_281435770, v20, MEMORY[0x277D1ED10]);
        sub_22C909F8C();
        (*(v2 + 8))(v25, v26);
        sub_22C7E6754();
        v21 = sub_22C90B66C();
        sub_22C388D34(v21, *(v9 + 32));
        v22 = sub_22C90AE8C();
        *(v9 + 56 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        sub_22C37E87C();
        sub_22C5E7270(v24, v23);
        ++*(v9 + 16);
      }

      while (v13);
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_11;
      }

      ++v16;
      if (*(v8 + 56 + 8 * v10))
      {
        sub_22C375A38();
        v13 = v18 & v17;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    sub_22C5E790C();
    sub_22C36CC48();
  }
}

void sub_22C5E58C0()
{
  sub_22C36BA7C();
  v2 = sub_22C37EC78();
  type metadata accessor for QueryDecorationEntityValue(v2);
  sub_22C36985C();
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  v39 = v4;
  v5 = sub_22C36BA0C();
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(v5);
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  sub_22C3799BC();
  sub_22C3A5908(&qword_27D9BF090, &qword_22C921F08);
  v10 = sub_22C386A68();
  if (!*(v1 + 16))
  {

LABEL_29:
    *v0 = v10;
    sub_22C36CC48();
    return;
  }

  v37 = v0;
  v11 = 0;
  sub_22C36AD3C();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v17 = v10 + 56;
  if ((v13 & v12) == 0)
  {
LABEL_4:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v0 = v37;
        goto LABEL_29;
      }

      ++v19;
      if (*(v1 + 56 + 8 * v11))
      {
        sub_22C375A38();
        v14 = v21 & v20;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_9:
    sub_22C5E7C34(v18 | (v11 << 6));
    sub_22C380560();
    sub_22C5E7218(v22, v9);
    sub_22C90B62C();
    v23 = sub_22C9097DC();
    sub_22C5E7D58(v23, v24);

    v25 = (v9 + *(DecorationTupleParameter + 20));
    MEMORY[0x2318B8B10](*v25);
    type metadata accessor for QueryDecorationEntity(0);
    sub_22C5E74A0();
    sub_22C5E7218(v25 + v26, v39);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      sub_22C9039FC();
      v28 = 0;
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_22C90399C();
      v28 = 1;
LABEL_13:
      sub_22C36BBA8();
      (*(v29 + 8))(v39);
      goto LABEL_15;
    }

    v28 = EnumCaseMultiPayload;
LABEL_15:
    sub_22C90B62C();
    MEMORY[0x2318B8B10](v28);
    v30 = sub_22C90B66C();
    MEMORY[0x2318B8B10](v30);
    sub_22C90B66C();
    sub_22C36C03C();
    sub_22C37AC88();
    if (v31)
    {
      break;
    }

    sub_22C37F394();
LABEL_25:
    sub_22C5E7588();
    sub_22C5E74D0();
    *(v17 + v34) = v35;
    sub_22C3827F0();
    sub_22C5E7270(v9, v36);
    ++*(v10 + 16);
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  sub_22C370840();
  while (1)
  {
    sub_22C36D130();
    if (v31)
    {
      if (v32)
      {
        break;
      }
    }

    sub_22C5E7764();
    if (v31)
    {
      v33 = 0;
    }

    if (*(v17 + 8 * v33) != -1)
    {
      sub_22C36D900();
      goto LABEL_25;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_22C5E5BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C3744F8();
  sub_22C3856E0();
  sub_22C3A5908(&qword_27D9BF098, &unk_22C921F10);
  v34 = sub_22C375F14();
  sub_22C3839C0(v34, v35);
  sub_22C5E76A0();
  if (v36)
  {
    v37 = 0;
    sub_22C36AD3C();
    v40 = v39 & v38;
    sub_22C5E79EC();
    while (v40)
    {
      sub_22C382D5C();
LABEL_9:
      v46 = *(*(v31 + 48) + 8 * (v41 | (v37 << 6)));
      sub_22C5E7C1C();

      sub_22C7E6754();
      v47 = sub_22C90B66C();
      sub_22C388D34(v47, *(v32 + 32));
      sub_22C90AE8C();
      sub_22C5E7664();
      *(v32 + 56 + v48) |= v49;
      *(*(v32 + 48) + 8 * v50) = v46;
      sub_22C37B32C();
    }

    v42 = v37;
    while (1)
    {
      v37 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v37 >= v33)
      {
        goto LABEL_11;
      }

      sub_22C5E79B0();
      if (v43)
      {
        sub_22C375A38();
        v40 = v45 & v44;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    *v30 = v32;
    sub_22C38C3F0();
  }
}

void sub_22C5E5CF4()
{
  sub_22C36BA7C();
  v2 = sub_22C3A5908(&qword_27D9BF0B0, &unk_22C926980);
  sub_22C5E73A0(v2);
  v4 = v3;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  sub_22C3799BC();
  sub_22C3A5908(&qword_27D9BF0B8, &qword_22C921F30);
  sub_22C386A68();
  sub_22C3865B4();
  if (v8)
  {
    v23 = v0;
    v9 = 0;
    sub_22C36AD3C();
    v12 = v11 & v10;
    sub_22C5E7630();
    v26 = v4 + 16;
    v27 = v4;
    v24 = (v4 + 32);
    v25 = v13;
    if (v12)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v18 = *(v27 + 72);
        (*(v27 + 16))(v7, *(v14 + 48) + v18 * (v15 | (v9 << 6)), v28);
        v19 = sub_22C5E7104();
        sub_22C36ED74(v19);
        sub_22C36C03C();
        sub_22C37AC88();
        if (v20)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        sub_22C36D914();
        sub_22C5E7BC4();
        (*v24)(*(v1 + 48) + v22 * v18, v7, v28);
        sub_22C37BE80();
        if (!v12)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v20)
        {
          if (v21)
          {
            break;
          }
        }

        sub_22C375F24();
        if (!v20)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v16 = v9;
      while (1)
      {
        v9 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v9 >= v0)
        {
          goto LABEL_19;
        }

        sub_22C5E7CE8();
        if (v17)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E5EF0()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v3 = sub_22C9037EC();
  v4 = sub_22C5E73A0(v3);
  MEMORY[0x28223BE20](v4);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF0D8, &qword_22C921F48);
  sub_22C386A68();
  v5 = sub_22C3865B4();
  if (v6)
  {
    sub_22C36ACEC(v5);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v9 = sub_22C372A38();
        v10(v9);
        sub_22C37D998();
        v12 = sub_22C5E72C8(&qword_281435768, v11, MEMORY[0x277D1EDA0]);
        sub_22C36ED74(v12);
        sub_22C5E7364();
        if (v13)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        v16 = sub_22C5E7314(v14);
        v17(v16);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v13)
        {
          if (v15)
          {
            break;
          }
        }

        sub_22C5E74E0();
        if (!v13)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v7 = v2;
      while (1)
      {
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v2 >= v0)
        {
          goto LABEL_19;
        }

        sub_22C5E7868();
        if (v8)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E6074()
{
  sub_22C36BA7C();
  sub_22C37EC78();
  v3 = sub_22C908EAC();
  v4 = sub_22C5E73A0(v3);
  MEMORY[0x28223BE20](v4);
  sub_22C388810();
  sub_22C3A5908(&qword_27D9BF0E0, &qword_22C921F50);
  sub_22C386A68();
  v5 = sub_22C3865B4();
  if (v6)
  {
    sub_22C36ACEC(v5);
    if (v1)
    {
      while (1)
      {
        sub_22C5E73D0();
LABEL_9:
        v9 = sub_22C372A38();
        v10(v9);
        sub_22C5E7834();
        v12 = sub_22C5E72C8(&qword_27D9BAA80, v11, MEMORY[0x277D72248]);
        sub_22C36ED74(v12);
        sub_22C5E7364();
        if (v13)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        v16 = sub_22C5E7314(v14);
        v17(v16);
        sub_22C37BE80();
        if (!v1)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v13)
        {
          if (v15)
          {
            break;
          }
        }

        sub_22C5E74E0();
        if (!v13)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v7 = v2;
      while (1)
      {
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v2 >= v0)
        {
          goto LABEL_19;
        }

        sub_22C5E7868();
        if (v8)
        {
          sub_22C36FD98();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    sub_22C3864C8();
    sub_22C36CC48();
  }
}

void sub_22C5E61F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C3806F4();
  v33 = v32;
  v34 = *v32;
  sub_22C36D13C();
  sub_22C3A5908(&qword_27D9BF0E8, &unk_22C926C70);
  v35 = sub_22C5E7B18();
  v36 = sub_22C5E7594(v35);
  if (*(v34 + 16))
  {
    v56 = v34;
    v37 = 0;
    sub_22C36AD3C();
    v40 = v39 & v38;
    sub_22C5E7630();
    if (v40)
    {
      while (1)
      {
        sub_22C383840();
LABEL_9:
        v47 = *(v34 + 48) + (v41 | (v37 << 6)) * v42;
        v48 = *v47;
        v49 = *(v47 + 8);
        v50 = *(v47 + 16);
        sub_22C375D08();

        sub_22C909FFC();
        sub_22C90B64C();
        sub_22C90B66C();
        sub_22C36C03C();
        sub_22C37AC88();
        if (v51)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        sub_22C5E7588();
        sub_22C5E74D0();
        *(v36 + 56 + v53) = v54;
        sub_22C5E78E0();
        *v55 = v48;
        *(v55 + 8) = v49;
        *(v55 + 16) = v50;
        sub_22C37B32C();
        v34 = v56;
        if (!v40)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v51)
        {
          if (v52)
          {
            break;
          }
        }

        sub_22C5E7764();
        sub_22C375F24();
        if (!v51)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v43 = v37;
      while (1)
      {
        v37 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if (v37 >= v32)
        {

          v33 = v32;
          goto LABEL_21;
        }

        sub_22C5E7CE8();
        if (v44)
        {
          sub_22C375A38();
          v40 = v46 & v45;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v33 = v36;
    sub_22C5E78F0();
  }
}

void sub_22C5E6388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C3806F4();
  a31 = v33;
  a32 = v34;
  v35 = v32;
  v36 = *v32;
  sub_22C36D13C();
  sub_22C3A5908(&qword_27D9BF0C8, &qword_22C921F38);
  v37 = sub_22C5E7B18();
  v38 = sub_22C5E7594(v37);
  if (*(v36 + 16))
  {
    v53 = v32;
    v54 = v36;
    v39 = 0;
    sub_22C36AD3C();
    v42 = v41 & v40;
    sub_22C5E7630();
    if (v42)
    {
      while (1)
      {
        sub_22C383840();
LABEL_9:
        v48 = *(*(v36 + 48) + 8 * (v43 | (v39 << 6)));
        sub_22C90A11C();
        sub_22C90B62C();
        v49 = v48;
        sub_22C5E7F08(&a12);
        sub_22C90B66C();
        sub_22C36A024();

        sub_22C5E7564();
        if (v50)
        {
          break;
        }

        sub_22C37F394();
LABEL_17:
        sub_22C36D914();
        sub_22C5E7BC4();
        *(*(v38 + 48) + 8 * v52) = v49;
        sub_22C37B32C();
        v36 = v54;
        if (!v42)
        {
          goto LABEL_4;
        }
      }

      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v50)
        {
          if (v51)
          {
            break;
          }
        }

        sub_22C375F24();
        if (!v50)
        {
          sub_22C36D900();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v44 = v39;
      while (1)
      {
        v39 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v39 >= v35)
        {

          v35 = v53;
          goto LABEL_21;
        }

        sub_22C5E7CE8();
        if (v45)
        {
          sub_22C375A38();
          v42 = v47 & v46;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v35 = v38;
    sub_22C5E78F0();
  }
}

uint64_t sub_22C5E6518(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BEF40, &qword_22C9215E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C5E6590()
{
  result = qword_27D9BEF90;
  if (!qword_27D9BEF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEF90);
  }

  return result;
}

unint64_t sub_22C5E65E4()
{
  result = qword_27D9BEFA8;
  if (!qword_27D9BEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEFA8);
  }

  return result;
}

unint64_t sub_22C5E6638()
{
  result = qword_27D9BEFB0;
  if (!qword_27D9BEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEFB0);
  }

  return result;
}

unint64_t sub_22C5E6690()
{
  result = qword_27D9BEFC8;
  if (!qword_27D9BEFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEFC8);
  }

  return result;
}