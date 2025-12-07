uint64_t sub_3DEF8(uint64_t a1, uint64_t a2)
{
  v3[10] = v2;
  v3[11] = a2;
  v3[9] = a1;
  v4 = sub_6CFDC();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = type metadata accessor for IFFlowError(0);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_getAssociatedTypeWitness();
  v3[21] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[22] = AssociatedTypeWitness;
  v3[23] = *(AssociatedTypeWitness - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  sub_5708(&qword_81E60, &qword_70E90);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_3E160, 0, 0);
}

uint64_t sub_3E160()
{
  sub_321FC(v0[25]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_3E244;
  v3 = v0[27];
  v4 = v0[22];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, AssociatedConformanceWitness);
}

uint64_t sub_3E244()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_3E690;
  }

  else
  {
    sub_325C0(*(v2 + 200));
    v3 = sub_3E364;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_3E364()
{
  v1 = v0[30];
  v2 = v0[19];
  sub_201AC(v0[27], v0[28], &qword_81E60, &qword_70E90);
  sub_3C798(v2);
  v3 = v0[28];
  if (v1)
  {
    v4 = v0[19];
    v5 = v0[11];
    sub_5E20(v3, &qword_81E60, &qword_70E90);
    sub_4B304(v4, v5, type metadata accessor for IFFlowError);
LABEL_5:

    v12 = v0[1];
    goto LABEL_6;
  }

  v6 = v0[26];
  sub_C14C(v3, v6, &qword_81E60, &qword_70E90);
  v7 = sub_6C83C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = v0[28];
  if (v9 == 1)
  {
    v11 = v0[11];
    sub_5E20(v0[26], &qword_81E60, &qword_70E90);
    *v11 = 0xD000000000000023;
    v11[1] = 0x800000000006F420;
    swift_storeEnumTagMultiPayload();
    sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
    swift_willThrowTypedImpl();
    sub_5E20(v10, &qword_81E60, &qword_70E90);
    goto LABEL_5;
  }

  v14 = v0[26];
  v15 = v0[9];
  sub_5E20(v10, &qword_81E60, &qword_70E90);
  (*(v8 + 32))(v15, v14, v7);

  v12 = v0[1];
LABEL_6:

  return v12();
}

uint64_t sub_3E690()
{
  v1 = v0[30];
  v2 = v0[24];
  (*(v0[23] + 32))(v2, v0[25], v0[22]);
  sub_325C0(v2);
  v0[8] = v1;
  swift_errorRetain();
  sub_5708(&qword_813D0, qword_6FC50);
  if (swift_dynamicCast())
  {
    v3 = v0[18];
    v5 = v0[15];
    v4 = v0[16];
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[12];

    (*(v7 + 32))(v5, v4, v8);
    sub_4B434(&qword_81D40, &type metadata accessor for IFSessionServiceClient.RelayError, &protocol conformance descriptor for IFSessionServiceClient.RelayError);
    v9 = swift_allocError();
    v10 = *(v7 + 16);
    v10(v11, v5, v8);
    *v3 = v9;
    swift_storeEnumTagMultiPayload();
    v10(v6, v5, v8);
    v12 = (*(v7 + 88))(v6, v8);
    if (v12 == enum case for IFSessionServiceClient.RelayError.companionNotFound(_:) || v12 == enum case for IFSessionServiceClient.RelayError.companionAIIsOff(_:))
    {
      sub_4B36C(v0[18], type metadata accessor for IFFlowError);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      (*(v0[13] + 8))(v0[14], v0[12]);
    }

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v21 = sub_6D04C();
    sub_5CE4(v21, qword_839A0);
    v22 = sub_6D03C();
    v23 = sub_6D46C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[18];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_beginAccess();
      sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
      swift_allocError();
      sub_4B3CC(v24, v27, type metadata accessor for IFFlowError);
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_0, v22, v23, "IFFlow Error error to return Intelligence Flow %@", v25, 0xCu);
      sub_5E20(v26, &qword_81508, &unk_70260);
    }

    v29 = v0[18];
    v30 = v0[15];
    v31 = v0[12];
    v32 = v0[13];
    v33 = v0[11];

    swift_beginAccess();
    sub_4B3CC(v29, v33, type metadata accessor for IFFlowError);
    sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
    swift_willThrowTypedImpl();
    (*(v32 + 8))(v30, v31);
    sub_4B36C(v29, type metadata accessor for IFFlowError);
  }

  else
  {

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v13 = sub_6D04C();
    sub_5CE4(v13, qword_839A0);
    swift_errorRetain();
    v14 = sub_6D03C();
    v15 = sub_6D46C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&dword_0, v14, v15, "Error while receiving event from Intelligence Flow %@", v16, 0xCu);
      sub_5E20(v17, &qword_81508, &unk_70260);
    }

    v19 = v0[30];
    v20 = v0[11];

    *v20 = v19;
    swift_storeEnumTagMultiPayload();
    sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
    swift_willThrowTypedImpl();
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_3ED5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[93] = a3;
  v4[92] = v3;
  v4[91] = a2;
  v4[90] = a1;
  v5 = *v3;
  v6 = sub_6B60C();
  v4[94] = v6;
  v4[95] = *(v6 - 8);
  v4[96] = swift_task_alloc();
  v7 = sub_6C06C();
  v4[97] = v7;
  v4[98] = *(v7 - 8);
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v8 = sub_6B7FC();
  v4[101] = v8;
  v4[102] = *(v8 - 8);
  v4[103] = swift_task_alloc();
  sub_6B7AC();
  v4[104] = swift_task_alloc();
  v9 = sub_6B36C();
  v4[105] = v9;
  v4[106] = *(v9 - 8);
  v4[107] = swift_task_alloc();
  v10 = sub_6B7EC();
  v4[108] = v10;
  v4[109] = *(v10 - 8);
  v4[110] = swift_task_alloc();
  v11 = sub_6B1AC();
  v4[111] = v11;
  v4[112] = *(v11 - 8);
  v4[113] = swift_task_alloc();
  v12 = sub_6B10C();
  v4[114] = v12;
  v4[115] = *(v12 - 8);
  v4[116] = swift_task_alloc();
  v13 = sub_6B12C();
  v4[117] = v13;
  v4[118] = *(v13 - 8);
  v4[119] = swift_task_alloc();
  type metadata accessor for FlowAction.ExitValue(0);
  v4[120] = swift_task_alloc();
  v14 = sub_6B5DC();
  v4[121] = v14;
  v4[122] = *(v14 - 8);
  v4[123] = swift_task_alloc();
  v15 = sub_6D02C();
  v4[124] = v15;
  v4[125] = *(v15 - 8);
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  v16 = sub_6C61C();
  v4[128] = v16;
  v4[129] = *(v16 - 8);
  v4[130] = swift_task_alloc();
  v4[131] = swift_task_alloc();
  v17 = sub_6C63C();
  v4[132] = v17;
  v4[133] = *(v17 - 8);
  v4[134] = swift_task_alloc();
  type metadata accessor for LocationRequest(0);
  v4[135] = swift_task_alloc();
  v18 = sub_6C83C();
  v4[136] = v18;
  v19 = *(v18 - 8);
  v4[137] = v19;
  v4[138] = *(v19 + 64);
  v4[139] = swift_task_alloc();
  v20 = sub_6BEEC();
  v4[140] = v20;
  v21 = *(v20 - 8);
  v4[141] = v21;
  v4[142] = *(v21 + 64);
  v4[143] = swift_task_alloc();
  v4[144] = swift_task_alloc();
  v4[145] = swift_task_alloc();
  v4[146] = swift_task_alloc();
  v4[147] = swift_task_alloc();
  v4[148] = swift_task_alloc();
  v4[149] = swift_task_alloc();
  v4[150] = type metadata accessor for PromptValue(0);
  v4[151] = swift_task_alloc();
  v4[152] = swift_task_alloc();
  v4[153] = swift_task_alloc();
  v4[154] = swift_task_alloc();
  sub_5708(&qword_81D88, &qword_70DC0);
  v4[155] = swift_task_alloc();
  sub_5708(&unk_82030, &qword_70370);
  v4[156] = swift_task_alloc();
  v22 = sub_6C7EC();
  v4[157] = v22;
  v4[158] = *(v22 - 8);
  v4[159] = swift_task_alloc();
  v23 = *(v5 + 80);
  v4[160] = v23;
  v24 = *(v5 + 88);
  v4[161] = v24;
  v26 = type metadata accessor for IFFlow.State(0, v23, v24, v25);
  v4[162] = v26;
  v4[163] = *(v26 - 8);
  v4[164] = swift_task_alloc();
  v27 = type metadata accessor for FlowAction(0);
  v4[165] = v27;
  v4[166] = *(v27 - 8);
  v4[167] = swift_task_alloc();
  sub_5708(&qword_81D90, &qword_70DC8);
  v4[168] = swift_task_alloc();
  v4[169] = swift_task_alloc();
  v4[170] = swift_task_alloc();
  v28 = sub_6C35C();
  v4[171] = v28;
  v4[172] = *(v28 - 8);
  v4[173] = swift_task_alloc();
  v4[174] = swift_task_alloc();
  v4[175] = swift_task_alloc();
  v4[176] = type metadata accessor for IFFlowError(0);
  v4[177] = swift_task_alloc();
  v4[178] = swift_task_alloc();
  v4[179] = swift_task_alloc();
  v4[180] = swift_task_alloc();
  v4[181] = swift_task_alloc();
  v4[182] = swift_task_alloc();
  v29 = sub_6AE9C();
  v4[183] = v29;
  v30 = *(v29 - 8);
  v4[184] = v30;
  v4[185] = *(v30 + 64);
  v4[186] = swift_task_alloc();
  v4[187] = swift_task_alloc();

  return _swift_task_switch(sub_3F788, 0, 0);
}

uint64_t sub_3F788()
{
  sub_30FBC(*(v0 + 1456));
  *(v0 + 1504) = 0;
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1376);
  v4 = *(v0 + 1368);
  sub_6C81C();
  (*(v3 + 32))(v2, v1, v4);
  v5 = (*(v3 + 88))(v2, v4);
  LODWORD(v1) = enum case for MessagePayload.plannerReturnedRawPlan(_:);
  v6 = *(v3 + 8);
  *(v0 + 1512) = v6;
  v6(v2, v4);
  if (v5 == v1)
  {
    v7 = swift_task_alloc();
    *(v0 + 1520) = v7;
    *v7 = v0;
    v7[1] = sub_3FC9C;

    return sub_576F4();
  }

  else
  {
    v9 = *(v0 + 736);
    v10 = sub_30BD4();
    *(v0 + 1528) = v10;
    v11 = *(v9 + 200);
    v12 = *(v9 + 208);
    *(v0 + 1536) = v12;
    v13 = *(v9 + 193);

    v14 = swift_task_alloc();
    *(v0 + 1544) = v14;
    *v14 = v0;
    v14[1] = sub_3FE80;
    v15 = *(v0 + 1360);
    v16 = *(v0 + 728);

    return sub_58694(v15, v16, v9 + 96, v10, v11, v12, v9 + 16, v13);
  }
}

uint64_t sub_3FC9C()
{

  return _swift_task_switch(sub_3FD98, 0, 0);
}

uint64_t sub_3FD98()
{
  v1 = v0[92];
  v2 = sub_30BD4();
  v0[191] = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  v0[192] = v4;
  v5 = *(v1 + 193);

  v6 = swift_task_alloc();
  v0[193] = v6;
  *v6 = v0;
  v6[1] = sub_3FE80;
  v7 = v0[170];
  v8 = v0[91];

  return sub_58694(v7, v8, v1 + 96, v2, v3, v4, v1 + 16, v5);
}

uint64_t sub_3FE80()
{

  return _swift_task_switch(sub_3FFB4, 0, 0);
}

uint64_t sub_3FFB4()
{
  v497 = v0;
  v1 = v0;
  v2 = v0[170];
  v3 = v0[169];
  v4 = v0[166];
  v5 = v0[165];
  sub_C14C(v2, v3, &qword_81D90, &qword_70DC8);
  v6 = *(v4 + 48);
  v7 = v6(v3, 1, v5);
  v8 = *(v1 + 169);
  if (v7 == 1)
  {
    sub_5E20(v8, &qword_81D90, &qword_70DC8);
  }

  else
  {
    v9 = *(v1 + 167);
    v10 = *(v1 + 91);
    sub_4B304(v8, v9, type metadata accessor for FlowAction);
    sub_3CCDC(v9, v10);
    sub_4B36C(v9, type metadata accessor for FlowAction);
  }

  sub_30BD4();
  v11 = sub_6CDBC();
  v13 = v12;

  if (v13)
  {
    v487 = *(v1 + 189);
    v14 = *(v1 + 173);
    v15 = *(v1 + 171);
    sub_6C81C();
    sub_51190(v14, v11, v13);

    v487(v14, v15);
  }

  else
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v16 = sub_6D04C();
    sub_5CE4(v16, qword_839A0);
    v17 = sub_6D03C();
    v18 = sub_6D45C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Cannot attempt to apply redaction tag for empty rootRequestId", v19, 2u);
    }
  }

  v20 = *(v1 + 168);
  v21 = *(v1 + 165);
  sub_C14C(*(v1 + 170), v20, &qword_81D90, &qword_70DC8);
  if (v6(v20, 1, v21) == 1)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v22 = sub_6D04C();
    sub_5CE4(v22, qword_839A0);
    v23 = sub_6D03C();
    v24 = sub_6D45C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v496[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v496);
      _os_log_impl(&dword_0, v23, v24, "In %s - next flow action is none", v25, 0xCu);
      sub_9964(v26);
    }

    v27 = *(v1 + 187);
    v28 = *(v1 + 184);
    v29 = *(v1 + 183);
    v30 = *(v1 + 170);
    v31 = *(v1 + 164);
    v32 = *(v1 + 163);
    v33 = *(v1 + 162);
    swift_storeEnumTagMultiPayload();
    sub_4A280(v31);
    (*(v32 + 8))(v31, v33);
    sub_6B45C();
    sub_5E20(v30, &qword_81D90, &qword_70DC8);
    (*(v28 + 8))(v27, v29);
    goto LABEL_17;
  }

  v36 = *(v1 + 168);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v112 = *(v1 + 143);
        v113 = *(v1 + 141);
        v114 = *(v1 + 140);
        v115 = sub_5708(&qword_81DA8, &unk_71420);
        v451 = *(v113 + 32);
        v451(v112, v36 + *(v115 + 48), v114);
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v116 = sub_6D04C();
        sub_5CE4(v116, qword_839A0);
        v117 = sub_6D03C();
        v118 = sub_6D45C();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v496[0] = v120;
          *v119 = 136315138;
          *(v119 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v496);
          _os_log_impl(&dword_0, v117, v118, "In %s - next flow action is promptForProtectedAppApproval", v119, 0xCu);
          sub_9964(v120);
        }

        v437 = *(v1 + 183);
        v444 = *(v1 + 187);
        v422 = *(v1 + 170);
        v429 = *(v1 + 184);
        v121 = *(v1 + 164);
        v376 = *(v1 + 162);
        v122 = *(v1 + 161);
        v123 = *(v1 + 160);
        v360 = v123;
        v365 = v122;
        v389 = *(v1 + 163);
        v393 = *(v1 + 148);
        v466 = *(v1 + 143);
        v399 = *(v1 + 142);
        v490 = *(v1 + 141);
        v124 = *(v1 + 140);
        v396 = *(v1 + 139);
        v125 = *(v1 + 137);
        v126 = *(v1 + 136);
        v474 = *(v1 + 92);
        v370 = *(v1 + 91);
        sub_6B05C();
        sub_5708(&qword_81DB0, &qword_70E20);
        sub_6B0BC();
        *(swift_allocObject() + 16) = xmmword_70000;
        sub_6B09C();

        v480 = sub_6B04C();
        type metadata accessor for IFFlow.PromptValue(255, v123, v122, v127);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v129 = *(TupleTypeMetadata3 + 48);
        v130 = *(TupleTypeMetadata3 + 64);
        *v121 = 1;
        v409 = *(v125 + 16);
        v409(&v121[v129], v370, v126);
        v131 = *(v490 + 16);
        v131(&v121[v130], v466, v124);
        swift_storeEnumTagMultiPayload();
        sub_4A280(v121);
        (*(v389 + 8))(v121, v376);
        *(v1 + 83) = v480;
        v131(v393, v466, v124);
        v409(v396, v370, v126);
        v132 = (*(v490 + 80) + 40) & ~*(v490 + 80);
        v133 = (v399 + *(v125 + 80) + v132) & ~*(v125 + 80);
        v134 = swift_allocObject();
        *(v134 + 2) = v360;
        *(v134 + 3) = v365;
        *(v134 + 4) = v474;
        v451(&v134[v132], v393, v124);
        (*(v125 + 32))(&v134[v133], v396, v126);

        sub_6B46C();

        (*(v490 + 8))(v466, v124);
        sub_5E20(v422, &qword_81D90, &qword_70DC8);
        (*(v429 + 8))(v444, v437);
      }

      else
      {
        if (EnumCaseMultiPayload == 7)
        {
          v48 = *v36;
          v49 = *(v36 + 8);
          if (qword_812A0 != -1)
          {
            swift_once();
          }

          v50 = sub_6D04C();
          sub_5CE4(v50, qword_839A0);
          v51 = sub_6D03C();
          v52 = sub_6D45C();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v496[0] = v54;
            *v53 = 136315138;
            *(v53 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v496);
            _os_log_impl(&dword_0, v51, v52, "In %s - next flow action is  redirectToEmergencyDomain", v53, 0xCu);
            sub_9964(v54);
          }

          v55 = sub_6D03C();
          v56 = sub_6D44C();

          v416 = v49;
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v496[0] = v58;
            *v57 = 136315138;
            *(v57 + 4) = sub_1076C(v48, v49, v496);
            _os_log_impl(&dword_0, v55, v56, "Redirecting to emergency domain with situation '%s'", v57, 0xCu);
            sub_9964(v58);
          }

          v59 = v48;
          v478 = *(v1 + 183);
          v488 = *(v1 + 187);
          v463 = *(v1 + 170);
          v472 = *(v1 + 184);
          v60 = *(v1 + 110);
          v61 = *(v1 + 109);
          v62 = *(v1 + 107);
          v63 = *(v1 + 106);
          v64 = *(v1 + 103);
          v65 = *(v1 + 102);
          v427 = *(v1 + 108);
          v435 = *(v1 + 101);
          v456 = *(v1 + 105);
          sub_5708(&qword_81DA0, &unk_70E00);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_70000;
          *(inited + 32) = 0xD000000000000012;
          v67 = inited + 32;
          *(inited + 72) = &type metadata for String;
          *(inited + 40) = 0x800000000006F3B0;
          *(inited + 48) = v59;
          *(inited + 56) = v416;
          sub_26118(inited);
          swift_setDeallocating();
          sub_5E20(v67, &qword_81A00, &qword_716C0);
          sub_6B7BC();
          (*(v61 + 16))(v64, v60, v427);
          (*(v65 + 104))(v64, enum case for Parse.directInvocation(_:), v435);
          sub_6B79C();
          sub_6B34C();
          sub_6B4AC();
          (*(v63 + 8))(v62, v456);
          (*(v61 + 8))(v60, v427);
        }

        else
        {
          (*(*(v1 + 98) + 32))(*(v1 + 100), v36, *(v1 + 97));
          if (qword_812A0 != -1)
          {
            swift_once();
          }

          v183 = sub_6D04C();
          sub_5CE4(v183, qword_839A0);
          v184 = sub_6D03C();
          v185 = sub_6D45C();
          if (os_log_type_enabled(v184, v185))
          {
            v186 = swift_slowAlloc();
            v187 = swift_slowAlloc();
            v496[0] = v187;
            *v186 = 136315138;
            *(v186 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v496);
            _os_log_impl(&dword_0, v184, v185, "In %s - next flow action is redirectToShim", v186, 0xCu);
            sub_9964(v187);
          }

          v188 = *(v1 + 92);
          (*(*(v1 + 98) + 16))(*(v1 + 99), *(v1 + 100), *(v1 + 97));
          sub_6B5FC();
          sub_9878(v188 + 16, (v1 + 6));
          sub_9878(v188 + 56, v1 + 136);
          if (qword_812B0 != -1)
          {
            swift_once();
          }

          v478 = *(v1 + 183);
          v488 = *(v1 + 187);
          v463 = *(v1 + 170);
          v472 = *(v1 + 184);
          v189 = *(v1 + 164);
          v190 = *(v1 + 163);
          v452 = *(v1 + 97);
          v459 = *(v1 + 100);
          v191 = *(v1 + 95);
          v411 = *(v1 + 94);
          v417 = *(v1 + 96);
          v431 = *(v1 + 162);
          v446 = *(v1 + 98);
          v192 = qword_839C8;
          type metadata accessor for IFClientActionRoutingFlow(0);
          v193 = swift_allocObject();
          v194 = OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow__currentRequest;
          swift_getKeyPath();
          sub_5708(&qword_816B8, &qword_70210);
          swift_allocObject();

          *(v193 + v194) = sub_6BC8C();
          (*(v191 + 32))(v193 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_clientActionParse, v417, v411);
          sub_1FD68(v1 + 6, v193 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_deviceState);
          sub_1FD68((v1 + 136), v193 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_outputPublisher);
          *(v193 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_instrumentationUtil) = v192;
          v195 = (v193 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_errorGenerator);
          *v195 = &unk_70270;
          v195[1] = 0;
          *(v193 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state) = 0;
          *v189 = 0;
          *(v189 + 8) = 0;
          swift_storeEnumTagMultiPayload();
          sub_4A280(v189);
          (*(v190 + 8))(v189, v431);
          *(v1 + 82) = v193;
          sub_4B434(&qword_81D98, type metadata accessor for IFClientActionRoutingFlow, &unk_70198);
          sub_6B13C();
          sub_6B48C();

          (*(v446 + 8))(v459, v452);
        }

        sub_5E20(v463, &qword_81D90, &qword_70DC8);
        (*(v472 + 8))(v488, v478);
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 9)
    {
      sub_4B304(v36, *(v1 + 120), type metadata accessor for FlowAction.ExitValue);
      v154 = swift_task_alloc();
      *(v1 + 201) = v154;
      *v154 = v1;
      v154[1] = sub_45BC0;
      v155 = *(v1 + 177);
      v156 = *(v1 + 120);
      v157 = *(v1 + 90);

      return sub_477B0(v157, v156, v155);
    }

    if (EnumCaseMultiPayload == 10)
    {
      (*(*(v1 + 118) + 32))(*(v1 + 119), v36, *(v1 + 117));
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v93 = sub_6D04C();
      sub_5CE4(v93, qword_839A0);
      v94 = sub_6D03C();
      v95 = sub_6D45C();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v496[0] = v97;
        *v96 = 136315138;
        *(v96 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v496);
        _os_log_impl(&dword_0, v94, v95, "In %s - next flow action is redirectToSiriX", v96, 0xCu);
        sub_9964(v97);
      }

      v98 = *(v1 + 116);
      v99 = *(v1 + 115);
      v100 = *(v1 + 114);
      sub_6B11C();
      v101 = (*(v99 + 88))(v98, v100);
      v102 = v101;
      v103 = enum case for SiriXRedirectContext.RedirectReason.noMatchingTool(_:);
      if (v101 == enum case for SiriXRedirectContext.RedirectReason.noMatchingTool(_:))
      {
        sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
        v104 = swift_allocError();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        if (v101 != enum case for SiriXRedirectContext.RedirectReason.unableToHandle(_:))
        {
          v254 = *(v1 + 164);
          v255 = *(v1 + 163);
          v256 = *(v1 + 162);
          v257 = enum case for SiriXRedirectContext.RedirectReason.ifFlowError(_:);
          sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
          v258 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          *v254 = v258;
          *(v254 + 8) = 1;
          swift_storeEnumTagMultiPayload();
          sub_4A280(v254);
          (*(v255 + 8))(v254, v256);
          if (v102 == v257)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        }

        v104 = 0;
      }

      v242 = v102 == v103;
      v243 = *(v1 + 164);
      v244 = *(v1 + 163);
      v245 = *(v1 + 162);
      *v243 = v104;
      *(v243 + 8) = v242;
      swift_storeEnumTagMultiPayload();
      sub_4A280(v243);
      (*(v244 + 8))(v243, v245);
LABEL_105:
      (*(*(v1 + 115) + 8))(*(v1 + 116), *(v1 + 114));
LABEL_106:
      v246 = *(v1 + 184);
      v483 = *(v1 + 183);
      v492 = *(v1 + 187);
      v247 = *(v1 + 170);
      v248 = *(v1 + 119);
      v249 = *(v1 + 118);
      v250 = *(v1 + 117);
      v251 = *(v1 + 113);
      v252 = *(v1 + 112);
      v253 = *(v1 + 111);
      (*(v249 + 16))(v251, v248, v250);
      (*(v252 + 104))(v251, enum case for FlowUnhandledReason.needsSiriXRedirect(_:), v253);
      sub_6B4BC();
      (*(v252 + 8))(v251, v253);
      (*(v249 + 8))(v248, v250);
      sub_5E20(v247, &qword_81D90, &qword_70DC8);
      (*(v246 + 8))(v492, v483);
      goto LABEL_17;
    }

    v221 = *(v1 + 147);
    v222 = *(v1 + 141);
    v223 = *(v1 + 140);
    v224 = *(v1 + 134);
    v225 = *(v1 + 133);
    v226 = *(v1 + 132);
    v227 = *(sub_5708(&qword_81E00, &qword_70E50) + 48);
    (*(v225 + 32))(v224, v36, v226);
    v425 = *(v222 + 32);
    v425(v221, v36 + v227, v223);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v228 = sub_6D04C();
    sub_5CE4(v228, qword_839A0);
    v229 = sub_6D03C();
    v230 = sub_6D45C();
    if (os_log_type_enabled(v229, v230))
    {
      v231 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      v496[0] = v232;
      *v231 = 136315138;
      *(v231 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v496);
      _os_log_impl(&dword_0, v229, v230, "In %s - next flow action is runAjaxEnablement", v231, 0xCu);
      sub_9964(v232);
    }

    v233 = *(v1 + 131);
    v234 = *(v1 + 130);
    v235 = *(v1 + 129);
    v236 = *(v1 + 128);
    sub_6C62C();
    (*(v235 + 32))(v234, v233, v236);
    v237 = (*(v235 + 88))(v234, v236);
    if (v237 == enum case for ActionConfirmation.SystemStyle.MontaraEnablement.Source.mediaQA(_:))
    {
      v238 = *(v1 + 126);
      v239 = *(v1 + 125);
      v240 = *(v1 + 124);
      v241 = &enum case for RequestType.mediaQA(_:);
    }

    else if (v237 == enum case for ActionConfirmation.SystemStyle.MontaraEnablement.Source.knowledgeFallback(_:))
    {
      v238 = *(v1 + 126);
      v239 = *(v1 + 125);
      v240 = *(v1 + 124);
      v241 = &enum case for RequestType.knowledgeFallback(_:);
    }

    else
    {
      if (v237 != enum case for ActionConfirmation.SystemStyle.MontaraEnablement.Source.composeViaSiri(_:))
      {
        v260 = *(*(v1 + 125) + 104);
        if (v237 != enum case for ActionConfirmation.SystemStyle.MontaraEnablement.Source.textAssistant(_:))
        {
          v332 = *(v1 + 130);
          v333 = *(v1 + 129);
          v334 = *(v1 + 128);
          v260(*(v1 + 126), enum case for RequestType.composeViaSiri(_:), *(v1 + 124));
          (*(v333 + 8))(v332, v334);
          goto LABEL_115;
        }

        v238 = *(v1 + 126);
        v240 = *(v1 + 124);
        v259 = enum case for RequestType.textAssistant(_:);
LABEL_114:
        v260(v238, v259, v240);
LABEL_115:
        v493 = *(v1 + 187);
        v379 = *(v1 + 186);
        v453 = *(v1 + 184);
        v367 = *(v1 + 183);
        v419 = *(v1 + 170);
        v261 = *(v1 + 164);
        v356 = *(v1 + 162);
        v363 = *(v1 + 163);
        v262 = *(v1 + 161);
        v263 = *(v1 + 160);
        v350 = v262;
        v477 = *(v1 + 148);
        v440 = *(v1 + 147);
        v372 = *(v1 + 142);
        v264 = *(v1 + 141);
        v343 = *(v1 + 140);
        v484 = *(v1 + 139);
        v385 = *(v1 + 138);
        v265 = *(v1 + 137);
        v341 = v265;
        v266 = *(v1 + 136);
        v400 = *(v1 + 134);
        v405 = *(v1 + 133);
        v413 = *(v1 + 132);
        v469 = *(v1 + 92);
        v267 = *(v1 + 91);
        (*(*(v1 + 125) + 32))(*(v1 + 127), *(v1 + 126), *(v1 + 124));
        sub_6C60C();
        sub_6D0EC();
        swift_allocObject();
        v461 = sub_6D0DC();
        type metadata accessor for IFFlow.PromptValue(255, v263, v262, v268);
        v269 = swift_getTupleTypeMetadata3();
        v270 = *(v269 + 48);
        v271 = *(v269 + 64);
        *v261 = 1;
        v335 = *(v265 + 16);
        v335(&v261[v270], v267, v266);
        v272 = *(v264 + 16);
        v272(&v261[v271], v440, v343);
        swift_storeEnumTagMultiPayload();
        sub_4A280(v261);
        (*(v363 + 8))(v261, v356);
        *(v1 + 87) = v461;
        v272(v477, v440, v343);
        v335(v484, v267, v266);
        (*(v453 + 16))(v379, v493, v367);
        v273 = (*(v264 + 80) + 40) & ~*(v264 + 80);
        v274 = (v372 + *(v341 + 80) + v273) & ~*(v341 + 80);
        v275 = (v385 + *(v453 + 80) + v274) & ~*(v453 + 80);
        v276 = swift_allocObject();
        *(v276 + 2) = v263;
        *(v276 + 3) = v350;
        *(v276 + 4) = v469;
        v425(&v276[v273], v477, v343);
        (*(v341 + 32))(&v276[v274], v484, v266);
        (*(v453 + 32))(&v276[v275], v379, v367);
        sub_4B434(&qword_81E08, &type metadata accessor for GenerativeAssistantEnablementFlow, &protocol conformance descriptor for GenerativeAssistantEnablementFlow);

        sub_6B46C();

        (*(v264 + 8))(v440, v343);
        (*(v405 + 8))(v400, v413);
        sub_5E20(v419, &qword_81D90, &qword_70DC8);
        (*(v453 + 8))(v493, v367);

        goto LABEL_17;
      }

      v238 = *(v1 + 126);
      v239 = *(v1 + 125);
      v240 = *(v1 + 124);
      v241 = &enum case for RequestType.composeViaSiri(_:);
    }

    v259 = *v241;
    v260 = *(v239 + 104);
    goto LABEL_114;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v68 = *(v1 + 145);
        v69 = *(v1 + 141);
        v70 = *(v1 + 140);
        v464 = *(v36 + 40);
        v71 = *(sub_5708(&qword_81DC0, &qword_70E30) + 64);
        sub_1FD68(v36, (v1 + 11));
        v408 = *(v69 + 32);
        v408(v68, v36 + v71, v70);
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v72 = sub_6D04C();
        sub_5CE4(v72, qword_839A0);
        v73 = sub_6D03C();
        v74 = sub_6D45C();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v496[0] = v76;
          *v75 = 136315138;
          *(v75 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v496);
          _os_log_impl(&dword_0, v73, v74, "In %s - next flow action is promptForDisambiguation", v75, 0xCu);
          sub_9964(v76);
        }

        v479 = *(v1 + 187);
        v382 = *(v1 + 186);
        v457 = *(v1 + 184);
        v369 = *(v1 + 183);
        v402 = *(v1 + 170);
        v359 = *(v1 + 163);
        v348 = *(v1 + 164);
        v353 = *(v1 + 162);
        v77 = *(v1 + 161);
        v78 = *(v1 + 160);
        v345 = v77;
        v473 = *(v1 + 148);
        v436 = *(v1 + 145);
        v375 = *(v1 + 142);
        v428 = *(v1 + 141);
        v489 = *(v1 + 140);
        v443 = *(v1 + 139);
        v388 = *(v1 + 138);
        v79 = *(v1 + 137);
        v80 = *(v1 + 136);
        v81 = *(v1 + 92);
        v450 = v81;
        v82 = *(v1 + 91);
        sub_9878((v1 + 11), v1 + 216);
        type metadata accessor for DisambiguationStrategy();
        v83 = swift_allocObject();
        sub_1FD68((v1 + 216), v83 + 16);
        *(v83 + 56) = v464;
        sub_9878(v81 + 56, (v1 + 16));
        sub_5708(&qword_81DC8, &qword_70E38);
        swift_allocObject();
        sub_4B434(&qword_81DD0, type metadata accessor for DisambiguationStrategy, &unk_702E8);

        v465 = sub_6B03C();
        type metadata accessor for IFFlow.PromptValue(255, v78, v77, v84);
        v85 = swift_getTupleTypeMetadata3();
        v86 = *(v85 + 48);
        v87 = *(v85 + 64);
        *v348 = 1;
        v340 = *(v79 + 16);
        v340(&v348[v86], v82, v80);
        v88 = *(v428 + 16);
        v88(&v348[v87], v436, v489);
        swift_storeEnumTagMultiPayload();
        sub_4A280(v348);
        (*(v359 + 8))(v348, v353);
        *(v1 + 85) = v465;
        v88(v473, v436, v489);
        v340(v443, v82, v80);
        (*(v457 + 16))(v382, v479, v369);
        v89 = (*(v428 + 80) + 40) & ~*(v428 + 80);
        v90 = (v375 + *(v79 + 80) + v89) & ~*(v79 + 80);
        v91 = (v388 + *(v457 + 80) + v90) & ~*(v457 + 80);
        v92 = swift_allocObject();
        *(v92 + 2) = v78;
        *(v92 + 3) = v345;
        *(v92 + 4) = v450;
        v408(&v92[v89], v473, v489);
        (*(v79 + 32))(&v92[v90], v443, v80);
        (*(v457 + 32))(&v92[v91], v382, v369);
        sub_4B0C8(&qword_81DD8, &qword_81DC8, &qword_70E38, &protocol conformance descriptor for PromptForDisambiguationFlowAsync<A, B>);

        sub_6B46C();

        (*(v428 + 8))(v436, v489);
        sub_9964(v1 + 22);
        sub_5E20(v402, &qword_81D90, &qword_70DC8);
        (*(v457 + 8))(v479, v369);
      }

      else
      {
        v196 = *(v1 + 144);
        v197 = *(v1 + 141);
        v198 = *(v1 + 140);
        v199 = *(v1 + 123);
        v200 = *(v1 + 122);
        v201 = *(v1 + 121);
        v202 = *(sub_5708(&qword_81DB8, &qword_70E28) + 48);
        (*(v200 + 32))(v199, v36, v201);
        v447 = *(v197 + 32);
        v447(v196, v36 + v202, v198);
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v203 = sub_6D04C();
        sub_5CE4(v203, qword_839A0);
        v204 = sub_6D03C();
        v205 = sub_6D45C();
        if (os_log_type_enabled(v204, v205))
        {
          v206 = swift_slowAlloc();
          v207 = swift_slowAlloc();
          v496[0] = v207;
          *v206 = 136315138;
          *(v206 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v496);
          _os_log_impl(&dword_0, v204, v205, "In %s - next flow action is promptForAuthentication", v206, 0xCu);
          sub_9964(v207);
        }

        v432 = *(v1 + 183);
        v439 = *(v1 + 187);
        v418 = *(v1 + 170);
        v424 = *(v1 + 184);
        v208 = *(v1 + 164);
        v362 = *(v1 + 162);
        v366 = *(v1 + 163);
        v209 = *(v1 + 161);
        v210 = *(v1 + 160);
        v346 = v210;
        v378 = *(v1 + 148);
        v460 = *(v1 + 144);
        v355 = *(v1 + 141);
        v211 = *(v1 + 140);
        v384 = *(v1 + 139);
        v391 = *(v1 + 142);
        v482 = *(v1 + 137);
        v212 = *(v1 + 136);
        v397 = *(v1 + 123);
        v404 = *(v1 + 122);
        v412 = *(v1 + 121);
        v468 = *(v1 + 92);
        v476 = *(v1 + 91);
        sub_6B05C();
        sub_5708(&qword_81DB0, &qword_70E20);
        sub_6B0BC();
        *(swift_allocObject() + 16) = xmmword_70000;
        sub_6B0AC();
        v491 = sub_6B04C();
        type metadata accessor for IFFlow.PromptValue(255, v210, v209, v213);
        v214 = swift_getTupleTypeMetadata3();
        v215 = *(v214 + 48);
        v216 = *(v214 + 64);
        *v208 = 1;
        v342 = *(v482 + 16);
        v342(&v208[v215], v476, v212);
        v217 = *(v355 + 16);
        v217(&v208[v216], v460, v211);
        swift_storeEnumTagMultiPayload();
        sub_4A280(v208);
        (*(v366 + 8))(v208, v362);
        *(v1 + 84) = v491;
        v217(v378, v460, v211);
        v342(v384, v476, v212);
        v218 = (*(v355 + 80) + 40) & ~*(v355 + 80);
        v219 = (v391 + *(v482 + 80) + v218) & ~*(v482 + 80);
        v220 = swift_allocObject();
        *(v220 + 2) = v346;
        *(v220 + 3) = v209;
        *(v220 + 4) = v468;
        v447(&v220[v218], v378, v211);
        (*(v482 + 32))(&v220[v219], v384, v212);

        sub_6B46C();

        (*(v355 + 8))(v460, v211);
        (*(v404 + 8))(v397, v412);
        sub_5E20(v418, &qword_81D90, &qword_70DC8);
        (*(v424 + 8))(v439, v432);
      }

      goto LABEL_17;
    }

    v135 = *(v1 + 154);
    v136 = *(v1 + 149);
    v137 = *(v1 + 141);
    v138 = *(v1 + 140);
    v139 = *(sub_5708(&qword_81E10, &qword_70E58) + 48);
    sub_4B304(v36, v135, type metadata accessor for PromptValue);
    v140 = *(v137 + 32);
    v140(v136, v36 + v139, v138);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v141 = *(v1 + 154);
    v142 = *(v1 + 153);
    v143 = sub_6D04C();
    sub_5CE4(v143, qword_839A0);
    sub_4B3CC(v141, v142, type metadata accessor for PromptValue);
    v144 = sub_6D03C();
    v145 = sub_6D45C();
    v146 = os_log_type_enabled(v144, v145);
    v147 = *(v1 + 153);
    if (v146)
    {
      v148 = *(v1 + 152);
      v149 = swift_slowAlloc();
      v496[0] = swift_slowAlloc();
      *v149 = 136315394;
      *(v149 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v496);
      *(v149 + 12) = 2080;
      sub_4B3CC(v147, v148, type metadata accessor for PromptValue);
      v150 = swift_getEnumCaseMultiPayload();
      v151 = *(v1 + 152);
      if (v150)
      {
        if (v150 == 1)
        {
          sub_9964(v151);
          v152 = 0xEC0000006F666E49;
          v153 = 0x6C61636974697263;
        }

        else
        {
          sub_4B36C(v151, type metadata accessor for PromptValue);
          v152 = 0xE800000000000000;
          v153 = 0x6E6F697461636F6CLL;
        }
      }

      else
      {
        sub_4B36C(v151, type metadata accessor for PromptValue);
        v152 = 0xE500000000000000;
        v153 = 0x6F746F6870;
      }

      sub_4B36C(*(v1 + 153), type metadata accessor for PromptValue);
      v277 = sub_1076C(v153, v152, v496);

      *(v149 + 14) = v277;
      _os_log_impl(&dword_0, v144, v145, "In %s - next flow action is promptForValue with prompt type: %s", v149, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_4B36C(v147, type metadata accessor for PromptValue);
    }

    sub_4B3CC(*(v1 + 154), *(v1 + 151), type metadata accessor for PromptValue);
    v278 = swift_getEnumCaseMultiPayload();
    if (!v278)
    {
      v462 = *(v1 + 187);
      v387 = *(v1 + 186);
      v442 = *(v1 + 184);
      v381 = *(v1 + 183);
      v401 = *(v1 + 170);
      v486 = v140;
      v296 = *(v1 + 164);
      v352 = *(v1 + 162);
      v358 = *(v1 + 163);
      v297 = *(v1 + 161);
      v298 = *(v1 + 160);
      v398 = *(v1 + 154);
      v299 = *(v1 + 151);
      v421 = *(v1 + 149);
      v455 = *(v1 + 148);
      v368 = *(v1 + 142);
      v407 = *(v1 + 140);
      v415 = *(v1 + 141);
      v449 = *(v1 + 139);
      v374 = *(v1 + 138);
      v471 = *(v1 + 136);
      v300 = *(v1 + 92);
      v434 = *(v1 + 137);
      v344 = *(v1 + 91);
      v301 = *v299;
      v302 = v299[1];
      v494 = v1;
      v303 = *(v299 + 16);
      type metadata accessor for ImagePickerPromptStrategy();
      v304 = swift_allocObject();
      *(v304 + 16) = v301;
      *(v304 + 24) = v302;
      *(v304 + 32) = v303;
      sub_9878(v300 + 56, v494 + 536);
      sub_5708(&qword_81E30, &qword_70E68);
      swift_allocObject();
      sub_4B434(&qword_81E38, type metadata accessor for ImagePickerPromptStrategy, &unk_71200);

      *(v494 + 89) = sub_6AF8C();
      sub_4B0C8(&qword_81E40, &qword_81E30, &qword_70E68, &protocol conformance descriptor for PromptForValueFlowAsync<A>);
      sub_6B14C();

      type metadata accessor for IFFlow.PromptValue(255, v298, v297, v305);
      v306 = swift_getTupleTypeMetadata3();
      v307 = *(v306 + 48);
      v308 = *(v306 + 64);
      *v296 = 0;
      v339 = *(v434 + 16);
      v339(&v296[v307], v344, v471);
      v309 = *(v415 + 16);
      v309(&v296[v308], v421, v407);
      swift_storeEnumTagMultiPayload();
      sub_4A280(v296);
      (*(v358 + 8))(v296, v352);
      v309(v455, v421, v407);
      v339(v449, v344, v471);
      v1 = v494;
      v290 = v381;
      (*(v442 + 16))(v387, v462, v381);
      v310 = (*(v415 + 80) + 40) & ~*(v415 + 80);
      v311 = (v368 + *(v434 + 80) + v310) & ~*(v434 + 80);
      v312 = (v374 + *(v442 + 80) + v311) & ~*(v442 + 80);
      v313 = swift_allocObject();
      *(v313 + 2) = v298;
      *(v313 + 3) = v297;
      *(v313 + 4) = v300;
      v486(&v313[v310], v455, v407);
      (*(v434 + 32))(&v313[v311], v449, v471);
      (*(v442 + 32))(&v313[v312], v387, v381);

      sub_6B47C();

      (*(v415 + 8))(v421, v407);
      sub_4B36C(v398, type metadata accessor for PromptValue);
      sub_5E20(v401, &qword_81D90, &qword_70DC8);
      v295 = v442;
      goto LABEL_123;
    }

    if (v278 == 1)
    {
      v462 = *(v1 + 187);
      v395 = *(v1 + 186);
      v454 = *(v1 + 184);
      v392 = *(v1 + 183);
      v414 = *(v1 + 170);
      v485 = v140;
      v357 = *(v1 + 163);
      v347 = *(v1 + 164);
      v351 = *(v1 + 162);
      v279 = *(v1 + 161);
      v280 = *(v1 + 160);
      v406 = *(v1 + 154);
      v433 = *(v1 + 149);
      v364 = *(v1 + 148);
      v380 = *(v1 + 142);
      v420 = *(v1 + 140);
      v426 = *(v1 + 141);
      v373 = *(v1 + 139);
      v386 = *(v1 + 138);
      v448 = *(v1 + 137);
      v470 = *(v1 + 136);
      v281 = *(v1 + 92);
      v338 = *(v1 + 91);
      sub_1FD68(*(v1 + 151), (v1 + 26));
      sub_9878((v1 + 26), v1 + 456);
      v282 = *(v281 + 192);
      v283 = v281;
      v441 = v281;
      type metadata accessor for CriticalInfoPromptStrategy();
      v284 = swift_allocObject();
      sub_1FD68((v1 + 456), v284 + 16);
      *(v284 + 56) = v282;
      sub_9878(v283 + 56, (v1 + 31));
      sub_5708(&qword_81E18, &qword_70E60);
      swift_allocObject();
      sub_4B434(&qword_81E20, type metadata accessor for CriticalInfoPromptStrategy, &unk_70F10);

      *(v1 + 88) = sub_6AF8C();
      sub_4B0C8(&qword_81E28, &qword_81E18, &qword_70E60, &protocol conformance descriptor for PromptForValueFlowAsync<A>);
      sub_6B14C();

      type metadata accessor for IFFlow.PromptValue(255, v280, v279, v285);
      v286 = swift_getTupleTypeMetadata3();
      v287 = *(v286 + 48);
      v288 = *(v286 + 64);
      *v347 = 1;
      v336 = *(v448 + 16);
      v336(&v347[v287], v338, v470);
      v289 = *(v426 + 16);
      v289(&v347[v288], v433, v420);
      swift_storeEnumTagMultiPayload();
      sub_4A280(v347);
      (*(v357 + 8))(v347, v351);
      v289(v364, v433, v420);
      v336(v373, v338, v470);
      v290 = v392;
      (*(v454 + 16))(v395, v462, v392);
      v291 = (*(v426 + 80) + 40) & ~*(v426 + 80);
      v292 = (v380 + *(v448 + 80) + v291) & ~*(v448 + 80);
      v293 = (v386 + *(v454 + 80) + v292) & ~*(v454 + 80);
      v294 = swift_allocObject();
      *(v294 + 2) = v280;
      *(v294 + 3) = v279;
      *(v294 + 4) = v441;
      v485(&v294[v291], v364, v420);
      (*(v448 + 32))(&v294[v292], v373, v470);
      (*(v454 + 32))(&v294[v293], v395, v392);

      sub_6B47C();

      sub_9964(v1 + 52);
      (*(v426 + 8))(v433, v420);
      sub_4B36C(v406, type metadata accessor for PromptValue);
      sub_5E20(v414, &qword_81D90, &qword_70DC8);
      v295 = v454;
LABEL_123:
      (*(v295 + 8))(v462, v290);
      goto LABEL_17;
    }

    v314 = *(v1 + 188);
    v315 = *(v1 + 135);
    v316 = *(v1 + 90);
    sub_4B304(*(v1 + 151), v315, type metadata accessor for LocationRequest);
    sub_66CD0(v315, v316);
    v317 = *(v1 + 187);
    v318 = *(v1 + 184);
    v319 = *(v1 + 183);
    if (v314)
    {
      v495 = *(v1 + 178);
      v320 = *(v1 + 170);
      v321 = *(v1 + 154);
      v322 = *(v1 + 149);
      v323 = v1;
      v324 = *(v1 + 141);
      v325 = *(v323 + 140);
      v326 = *(v323 + 93);
      sub_4B36C(*(v323 + 135), type metadata accessor for LocationRequest);
      (*(v324 + 8))(v322, v325);
      sub_4B36C(v321, type metadata accessor for PromptValue);
      sub_5E20(v320, &qword_81D90, &qword_70DC8);
      (*(v318 + 8))(v317, v319);
      sub_4B304(v495, v326, type metadata accessor for IFFlowError);

      v34 = *(v323 + 1);
      goto LABEL_18;
    }

    v327 = *(v1 + 170);
    v328 = *(v1 + 154);
    v329 = *(v1 + 149);
    v330 = *(v1 + 141);
    v331 = *(v1 + 140);
    sub_4B36C(*(v1 + 135), type metadata accessor for LocationRequest);
    (*(v330 + 8))(v329, v331);
    sub_4B36C(v328, type metadata accessor for PromptValue);
    sub_5E20(v327, &qword_81D90, &qword_70DC8);
    (*(v318 + 8))(v317, v319);
LABEL_17:

    v34 = *(v1 + 1);
LABEL_18:

    return v34();
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v158 = *(v1 + 146);
      v159 = *(v1 + 141);
      v160 = *(v1 + 140);
      v161 = sub_5708(&qword_81DE0, &qword_70E40);
      v162 = *(v161 + 48);
      v163 = *(v36 + *(v161 + 64));
      sub_1FD68(v36, v1 + 296);
      v410 = *(v159 + 32);
      v410(v158, v36 + v162, v160);
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v164 = sub_6D04C();
      sub_5CE4(v164, qword_839A0);
      v165 = sub_6D03C();
      v166 = sub_6D45C();
      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        v496[0] = v168;
        *v167 = 136315138;
        *(v167 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v496);
        _os_log_impl(&dword_0, v165, v166, "In %s - next flow action is promptForConfirmation", v167, 0xCu);
        sub_9964(v168);
      }

      v481 = *(v1 + 187);
      v390 = *(v1 + 186);
      v371 = *(v1 + 184);
      v377 = *(v1 + 183);
      v403 = *(v1 + 170);
      v361 = *(v1 + 163);
      v349 = *(v1 + 164);
      v354 = *(v1 + 162);
      v169 = *(v1 + 161);
      v170 = *(v1 + 160);
      v475 = *(v1 + 148);
      v445 = *(v1 + 146);
      v383 = *(v1 + 142);
      v430 = *(v1 + 140);
      v438 = *(v1 + 141);
      v467 = *(v1 + 139);
      v394 = *(v1 + 138);
      v171 = *(v1 + 136);
      v172 = *(v1 + 92);
      v458 = *(v1 + 137);
      v423 = *(v1 + 91);
      sub_9878(v1 + 296, (v1 + 21));
      type metadata accessor for ExternalServiceConfirmationStrategy();
      v173 = swift_allocObject();
      sub_1FD68(v1 + 21, v173 + 16);
      *(v173 + 56) = v163;
      sub_9878(v172 + 56, v1 + 376);
      sub_5708(&qword_81DE8, &qword_70E48);
      swift_allocObject();
      sub_4B434(&qword_81DF0, type metadata accessor for ExternalServiceConfirmationStrategy, &unk_70850);

      *(v1 + 86) = sub_6AFDC();
      sub_4B0C8(&qword_81DF8, &qword_81DE8, &qword_70E48, &protocol conformance descriptor for PromptForConfirmationFlowAsync<A, B>);
      sub_6B14C();

      type metadata accessor for IFFlow.PromptValue(255, v170, v169, v174);
      v175 = swift_getTupleTypeMetadata3();
      v176 = *(v175 + 48);
      v177 = *(v175 + 64);
      *v349 = 1;
      v337 = *(v458 + 16);
      v337(&v349[v176], v423, v171);
      v178 = *(v438 + 16);
      v178(&v349[v177], v445, v430);
      swift_storeEnumTagMultiPayload();
      sub_4A280(v349);
      (*(v361 + 8))(v349, v354);
      v178(v475, v445, v430);
      v337(v467, v423, v171);
      (*(v371 + 16))(v390, v481, v377);
      v179 = (*(v438 + 80) + 40) & ~*(v438 + 80);
      v180 = (v383 + *(v458 + 80) + v179) & ~*(v458 + 80);
      v181 = (v394 + *(v371 + 80) + v180) & ~*(v371 + 80);
      v182 = swift_allocObject();
      *(v182 + 2) = v170;
      *(v182 + 3) = v169;
      *(v182 + 4) = v172;
      v410(&v182[v179], v475, v430);
      (*(v458 + 32))(&v182[v180], v467, v171);
      (*(v371 + 32))(&v182[v181], v390, v377);

      sub_6B47C();

      (*(v438 + 8))(v445, v430);
      sub_9964(v1 + 37);
      sub_5E20(v403, &qword_81D90, &qword_70DC8);
      (*(v371 + 8))(v481, v377);
      goto LABEL_17;
    }

    *(v1 + 196) = *(v36 + 40);
    *(v1 + 197) = *(v36 + 48);
    sub_1FD68(v36, (v1 + 36));
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v38 = sub_6D04C();
    *(v1 + 198) = sub_5CE4(v38, qword_839A0);
    v39 = sub_6D03C();
    v40 = sub_6D45C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v496[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v496);
      _os_log_impl(&dword_0, v39, v40, "%s publishIntermediateResponseOutput", v41, 0xCu);
      sub_9964(v42);
    }

    v43 = *(v1 + 92);
    v44 = v43[10];
    v45 = v43[11];
    sub_99FC(v43 + 7, v44);
    v46 = swift_task_alloc();
    *(v1 + 199) = v46;
    *v46 = v1;
    v46[1] = sub_44BD8;
    v47 = v1 + 36;
  }

  else
  {
    sub_1FD68(v36, v1 + 616);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v105 = sub_6D04C();
    sub_5CE4(v105, qword_839A0);
    v106 = sub_6D03C();
    v107 = sub_6D45C();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v496[0] = v109;
      *v108 = 136315138;
      *(v108 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v496);
      _os_log_impl(&dword_0, v106, v107, "In %s - next flow action is publishOutput", v108, 0xCu);
      sub_9964(v109);
    }

    v110 = *(v1 + 92);
    v44 = v110[10];
    v45 = v110[11];
    sub_99FC(v110 + 7, v44);
    v111 = swift_task_alloc();
    *(v1 + 194) = v111;
    *v111 = v1;
    v111[1] = sub_44358;
    v47 = v1 + 77;
  }

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v47, v44, v45);
}

uint64_t sub_44358()
{
  *(*v1 + 1560) = v0;

  if (v0)
  {
    v2 = sub_44818;
  }

  else
  {
    v2 = sub_4446C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_4446C()
{
  v1 = v0[187];
  v2 = v0[184];
  v3 = v0[183];
  v4 = v0[170];
  v5 = v0[164];
  v6 = v0[163];
  v7 = v0[162];
  swift_storeEnumTagMultiPayload();
  sub_4A280(v5);
  (*(v6 + 8))(v5, v7);
  sub_6B45C();
  sub_9964(v0 + 77);
  sub_5E20(v4, &qword_81D90, &qword_70DC8);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_44818()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1472);
  v3 = *(v0 + 1464);
  v4 = *(v0 + 1360);
  **(v0 + 744) = *(v0 + 1560);
  swift_storeEnumTagMultiPayload();
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
  swift_willThrowTypedImpl();
  sub_9964((v0 + 616));
  sub_5E20(v4, &qword_81D90, &qword_70DC8);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_44BD8()
{
  *(*v1 + 1600) = v0;

  if (v0)
  {

    v2 = sub_45800;
  }

  else
  {
    v2 = sub_44CF4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_44CF4()
{
  v52 = v0;
  v50 = v0[189];
  v1 = v0[184];
  v2 = v0[183];
  v3 = v0[173];
  v4 = v0[172];
  v45 = v0[200];
  v48 = v0[171];
  v5 = v0[156];
  v6 = v0[155];
  v7 = v0[141];
  v40 = v0[140];
  v41 = v0[186];
  sub_6C82C();
  (*(v1 + 56))(v5, 1, 1, v2);
  (*(v7 + 56))(v6, 1, 1, v40);
  sub_6C98C();
  (*(v4 + 104))(v3, enum case for MessagePayload.intermediateSystemResponseRendered(_:), v48);
  sub_30BF8(v41, v3);
  v50(v3, v48);
  v49 = *(v1 + 8);
  v49(v41, v2);
  sub_6CF4C();
  if (v45)
  {
    v8 = v0[181];
    v9 = v0[180];
    v10 = v0[179];
    *v8 = v45;
    swift_storeEnumTagMultiPayload();
    sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
    swift_willThrowTypedImpl();
    sub_4B304(v8, v9, type metadata accessor for IFFlowError);
    sub_4B3CC(v9, v10, type metadata accessor for IFFlowError);
    v11 = sub_6D03C();
    v12 = sub_6D46C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[179];
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v51[0] = v16;
      *v15 = 136315138;
      v17 = sub_6D66C();
      v19 = v18;
      sub_4B36C(v14, type metadata accessor for IFFlowError);
      v20 = sub_1076C(v17, v19, v51);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_0, v11, v12, "Error while sending message to Intelligence Flow %s", v15, 0xCu);
      sub_9964(v16);
    }

    else
    {

      sub_4B36C(v14, type metadata accessor for IFFlowError);
    }

    v44 = v0[183];
    v47 = v0[187];
    v31 = v0[180];
    v32 = v0[170];
    v33 = v0[159];
    v34 = v0[158];
    v35 = v0[157];
    v36 = v0[93];
    v37 = swift_allocError();
    sub_4B3CC(v31, v38, type metadata accessor for IFFlowError);
    *v36 = v37;
    swift_storeEnumTagMultiPayload();
    swift_willThrowTypedImpl();
    sub_4B36C(v31, type metadata accessor for IFFlowError);
    (*(v34 + 8))(v33, v35);
    sub_9964(v0 + 72);
    sub_5E20(v32, &qword_81D90, &qword_70DC8);
    v49(v47, v44);

    v30 = v0[1];
  }

  else
  {
    v21 = sub_6D03C();
    v22 = sub_6D47C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Sending IntermediateSystemResponseRendered back from IFFlow", v23, 2u);
    }

    v43 = v0[183];
    v46 = v0[187];
    v42 = v0[170];
    v24 = v0[164];
    v25 = v0[163];
    v26 = v0[162];
    v27 = v0[159];
    v28 = v0[158];
    v29 = v0[157];

    swift_storeEnumTagMultiPayload();
    sub_4A280(v24);
    (*(v25 + 8))(v24, v26);
    sub_6B45C();
    (*(v28 + 8))(v27, v29);
    sub_9964(v0 + 72);
    sub_5E20(v42, &qword_81D90, &qword_70DC8);
    v49(v46, v43);

    v30 = v0[1];
  }

  return v30();
}

uint64_t sub_45800()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1472);
  v3 = *(v0 + 1464);
  v4 = *(v0 + 1360);
  **(v0 + 744) = *(v0 + 1600);
  swift_storeEnumTagMultiPayload();
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
  swift_willThrowTypedImpl();
  sub_9964((v0 + 576));
  sub_5E20(v4, &qword_81D90, &qword_70DC8);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_45BC0()
{

  if (v0)
  {
    v1 = sub_46040;
  }

  else
  {
    v1 = sub_45CD0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_45CD0()
{
  v1 = v0[187];
  v2 = v0[184];
  v3 = v0[183];
  v4 = v0[170];
  sub_4B36C(v0[120], type metadata accessor for FlowAction.ExitValue);
  sub_5E20(v4, &qword_81D90, &qword_70DC8);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_46040()
{
  v1 = v0[187];
  v2 = v0[184];
  v3 = v0[183];
  v4 = v0[177];
  v5 = v0[170];
  v6 = v0[93];
  sub_4B36C(v0[120], type metadata accessor for FlowAction.ExitValue);
  sub_5E20(v5, &qword_81D90, &qword_70DC8);
  (*(v2 + 8))(v1, v3);
  sub_4B304(v4, v6, type metadata accessor for IFFlowError);

  v7 = v0[1];

  return v7();
}

uint64_t sub_463D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v22 = a4;
  v23 = a6;
  v21 = a3;
  v8 = *a2;
  v9 = sub_6CFCC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IFFlow.State(0, *(v8 + 80), *(v8 + 88), v13);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v20 - v16;
  v18 = *(a2 + 192);
  sub_3556C(2, v12);
  v23(a1, v21, v22, v18, v12);
  (*(v10 + 8))(v12, v9);
  sub_4A280(v17);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_465B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v21 = a3;
  v23 = a4;
  v5 = *a2;
  v22 = sub_6CFCC();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5708(&qword_81E58, &unk_70E80);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v14 = type metadata accessor for IFFlow.State(0, *(v5 + 80), *(v5 + 88), v13);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v20 - v16;
  sub_69838(v12);
  sub_3556C(2, v8);
  v18 = sub_6B76C();
  sub_29260(v12, v21, v23, v8, v18, &protocol witness table for SimpleConfirmationResponseProvider, v17);
  (*(v6 + 8))(v8, v22);
  (*(v10 + 8))(v12, v9);
  sub_4A280(v17);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_46838(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v7 = *a2;
  v8 = sub_6CFCC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IFFlow.State(0, *(v7 + 80), *(v7 + 88), v12);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_3556C(2, v11);
  v17 = sub_6B76C();
  sub_29260(a1, a3, v20, v11, v17, &protocol witness table for SimpleConfirmationResponseProvider, v16);
  (*(v9 + 8))(v11, v8);
  sub_4A280(v16);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_46A1C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v7 = *a2;
  v8 = sub_6CFCC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IFFlow.State(0, *(v7 + 80), *(v7 + 88), v12);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v18 - v15;
  sub_3556C(2, v11);
  sub_11FFC(a1, a3, v19, v11, v16);
  (*(v9 + 8))(v11, v8);
  sub_4A280(v16);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_46BEC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a3;
  v90 = a4;
  v79 = a2;
  v75 = a1;
  v91 = *v4;
  v64 = sub_6C4EC();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5708(&qword_81B58, qword_70A90);
  __chkstk_darwin(v6 - 8);
  v83 = &v60 - v7;
  v8 = sub_6CFCC();
  v77 = *(v8 - 8);
  v78 = v8;
  __chkstk_darwin(v8);
  v76 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_6C35C();
  v86 = *(v81 - 8);
  v10 = __chkstk_darwin(v81);
  v80 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v60 - v12;
  v13 = sub_6C7EC();
  v84 = *(v13 - 8);
  v85 = v13;
  __chkstk_darwin(v13);
  v88 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_5708(&qword_81770, &unk_70F70);
  __chkstk_darwin(v15 - 8);
  v71 = &v60 - v16;
  v69 = sub_6BEEC();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v70 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_6C86C();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_5708(&unk_82030, &qword_70370);
  __chkstk_darwin(v20 - 8);
  v65 = &v60 - v21;
  v22 = sub_6C89C();
  v73 = *(v22 - 8);
  __chkstk_darwin(v22);
  v72 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for IFFlowError(0);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = (&v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v28 = sub_6AE9C();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30);
  v35 = &v60 - v34;
  __chkstk_darwin(v33);
  v87 = &v60 - v36;
  v82 = v4;
  sub_30FBC(v27);
  v61 = v22;
  v60 = v29;
  (*(v29 + 32))(v87, v35, v28);
  (*(v29 + 56))(v65, 1, 1, v28);
  sub_6C80C();
  sub_6B07C();
  sub_6C84C();
  (*(v66 + 104))(v19, enum case for SystemPromptResolution.UserAction.requirementAddressed(_:), v67);
  (*(v68 + 16))(v70, v79, v69);
  v37 = sub_6C85C();
  (*(*(v37 - 8) + 56))(v71, 1, 1, v37);
  v38 = v72;
  sub_6C87C();
  sub_6C82C();
  v39 = v76;
  sub_3556C(2, v76);
  v40 = v74;
  sub_A17C(v38, v39);
  (*(v77 + 8))(v39, v78);
  v41 = v86;
  v42 = v81;
  (*(v86 + 104))(v40, enum case for MessagePayload.request(_:), v81);
  sub_30BF8(v32, v40);
  v43 = *(v41 + 8);
  v44 = v40;
  v45 = v60;
  v43(v44, v42);
  v46 = *(v45 + 8);
  v82 = v28;
  v46(v32, v28);
  v47 = v80;
  sub_6C81C();
  if ((*(v41 + 88))(v47, v42) == enum case for MessagePayload.systemResponse(_:))
  {
    (*(v86 + 96))(v47, v42);
    v48 = v63;
    v49 = v62;
    v50 = v64;
    (*(v63 + 32))(v62, v47, v64);
    v51 = v83;
    sub_4458(v49, v83);
    (*(v48 + 8))(v49, v50);
    (*(v73 + 8))(v38, v61);
    v46(v87, v82);
    v52 = 0;
  }

  else
  {
    (*(v73 + 8))(v38, v61);
    v46(v87, v82);
    v43(v47, v42);
    v52 = 1;
    v51 = v83;
  }

  v54 = v84;
  v53 = v85;
  v55 = sub_6CD2C();
  (*(*(v55 - 8) + 56))(v51, v52, 1, v55);
  v56 = *(sub_5708(&qword_81788, &qword_70380) + 48);
  v57 = v90;
  (*(v54 + 32))(v90, v88, v53);
  sub_201AC(v51, v57 + v56, &qword_81B58, qword_70A90);
  type metadata accessor for IFFlow.State(0, *(v91 + 80), *(v91 + 88), v58);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_47694(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for IFFlow.State(0, *(*a2 + 80), *(*a2 + 88), a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_46BEC(*a1, a3, a4, &v12 - v9);
  sub_4A280(v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_477B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = v3;
  v4[15] = a3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = *v3;
  v6 = sub_6BF6C();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for IFFlowError(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v8 = type metadata accessor for IFFlow.State(0, *(v5 + 80), *(v5 + 88), v7);
  v4[24] = v8;
  v4[25] = *(v8 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = type metadata accessor for FlowAction.ExitValue(0);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_479B8, 0, 0);
}

uint64_t sub_479B8()
{
  v82 = v0;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[13];
  v4 = sub_6D04C();
  sub_5CE4(v4, qword_839A0);
  sub_4B3CC(v3, v1, type metadata accessor for FlowAction.ExitValue);
  sub_4B3CC(v3, v2, type metadata accessor for FlowAction.ExitValue);
  v5 = sub_6D03C();
  v6 = sub_6D45C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[32];
  if (v7)
  {
    v9 = v0[30];
    v10 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v10 = 136446723;
    *(v10 + 4) = sub_1076C(0xD000000000000012, 0x800000000006F400, &v81);
    *(v10 + 12) = 2080;
    sub_4B3CC(v8, v9, type metadata accessor for FlowAction.ExitValue);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v15 = v0[30];
        v17 = v0[16];
        v16 = v0[17];
        v18 = sub_5708(&qword_81E50, &qword_70E78);
        (*(v16 + 8))(&v15[*(v18 + 48)], v17);
        sub_9964(v15);
        v12 = 0xEE006572756C6961;
        v13 = 0x466E6F697463612ELL;
      }

      else
      {
        v12 = 0xEA00000000006E61;
        v13 = 0x6C50664F646E652ELL;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_4B36C(v0[30], type metadata accessor for FlowAction.ExitValue);
      v12 = 0xE700000000000000;
      v13 = 0x74757074756F2ELL;
    }

    else
    {
      sub_4B36C(v0[30], type metadata accessor for FlowAction.ExitValue);
      v12 = 0xE600000000000000;
      v13 = 0x726F7272652ELL;
    }

    v19 = v0[31];
    v20 = v0[29];
    sub_4B36C(v0[32], type metadata accessor for FlowAction.ExitValue);
    v21 = sub_1076C(v13, v12, &v81);

    *(v10 + 14) = v21;
    *(v10 + 22) = 2081;
    sub_4B3CC(v19, v20, type metadata accessor for FlowAction.ExitValue);
    v22 = sub_6D2EC();
    v24 = v23;
    sub_4B36C(v19, type metadata accessor for FlowAction.ExitValue);
    v25 = sub_1076C(v22, v24, &v81);

    *(v10 + 24) = v25;
    _os_log_impl(&dword_0, v5, v6, "%{public}s: next flow action is exit with type %s and value %{private}s", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = v0[31];

    sub_4B36C(v14, type metadata accessor for FlowAction.ExitValue);
    sub_4B36C(v8, type metadata accessor for FlowAction.ExitValue);
  }

  sub_4B3CC(v0[13], v0[28], type metadata accessor for FlowAction.ExitValue);
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 > 1)
  {
    if (v26 != 2)
    {
      v67 = sub_6D03C();
      v68 = sub_6D45C();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_0, v67, v68, "Session completed due to end of plan", v69, 2u);
      }

      v71 = v0[25];
      v70 = v0[26];
      v72 = v0[24];

      *v70 = 0;
      *(v70 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      sub_4A280(v70);
      (*(v71 + 8))(v70, v72);
      sub_6B49C();

      v73 = v0[1];
      goto LABEL_28;
    }

    v39 = v0[28];
    v41 = v0[19];
    v40 = v0[20];
    v42 = v0[16];
    v43 = v0[17];
    v44 = *(sub_5708(&qword_81E50, &qword_70E78) + 48);
    sub_1FD68(v39, (v0 + 2));
    (*(v43 + 32))(v40, v39 + v44, v42);
    v45 = *(v43 + 16);
    v0[35] = v45;
    v0[36] = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v45(v41, v40, v42);
    v46 = sub_6D03C();
    v47 = sub_6D45C();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v0[19];
    if (v48)
    {
      v50 = v0[17];
      v51 = v0[18];
      v52 = v0[16];
      v53 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v81 = v80;
      *v53 = 136446210;
      v45(v51, v49, v52);
      v54 = sub_6D2EC();
      v56 = v55;
      v57 = *(v50 + 8);
      v57(v49, v52);
      v58 = sub_1076C(v54, v56, &v81);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_0, v46, v47, "Session completed with action failure: %{public}s", v53, 0xCu);
      sub_9964(v80);
    }

    else
    {
      v76 = v0[16];
      v77 = v0[17];

      v57 = *(v77 + 8);
      v57(v49, v76);
    }

    v0[37] = v57;
    v78 = v0[14];
    v63 = v78[10];
    v64 = v78[11];
    sub_99FC(v78 + 7, v63);
    v79 = swift_task_alloc();
    v0[38] = v79;
    *v79 = v0;
    v79[1] = sub_488B4;
    v66 = v0 + 2;
  }

  else
  {
    if (!v26)
    {
      v27 = v0[22];
      v28 = v0[23];
      sub_4B304(v0[28], v28, type metadata accessor for IFFlowError);
      sub_4B3CC(v28, v27, type metadata accessor for IFFlowError);
      v29 = sub_6D03C();
      v30 = sub_6D45C();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v0[22];
      if (v31)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v81 = v34;
        *v33 = 136446210;
        sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
        v35 = sub_6D66C();
        v37 = v36;
        sub_4B36C(v32, type metadata accessor for IFFlowError);
        v38 = sub_1076C(v35, v37, &v81);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_0, v29, v30, "Session completed with error: %{public}s", v33, 0xCu);
        sub_9964(v34);
      }

      else
      {

        sub_4B36C(v32, type metadata accessor for IFFlowError);
      }

      v74 = v0[23];
      sub_4B3CC(v74, v0[15], type metadata accessor for IFFlowError);
      sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
      swift_willThrowTypedImpl();
      sub_4B36C(v74, type metadata accessor for IFFlowError);

      v73 = v0[1];
LABEL_28:

      return v73();
    }

    sub_1FD68(v0[28], (v0 + 7));
    v59 = sub_6D03C();
    v60 = sub_6D45C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_0, v59, v60, "Session completed with some output", v61, 2u);
    }

    v62 = v0[14];

    v63 = v62[10];
    v64 = v62[11];
    sub_99FC(v62 + 7, v63);
    v65 = swift_task_alloc();
    v0[33] = v65;
    *v65 = v0;
    v65[1] = sub_484FC;
    v66 = v0 + 7;
  }

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v66, v63, v64);
}

uint64_t sub_484FC()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_48758;
  }

  else
  {
    v2 = sub_48610;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_48610()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  *v1 = 0;
  *(v1 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  sub_4A280(v1);
  (*(v2 + 8))(v1, v3);
  sub_9964(v0 + 7);
  sub_6B49C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_48758()
{
  **(v0 + 120) = *(v0 + 272);
  swift_storeEnumTagMultiPayload();
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
  swift_willThrowTypedImpl();
  sub_9964((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_488B4()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_48BC0;
  }

  else
  {
    v2 = sub_489C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_489C8()
{
  v1 = v0[35];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[16];
  v11 = v0[37];
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
  v7 = swift_allocError();
  v1(v8, v5, v6);
  swift_storeEnumTagMultiPayload();
  *v2 = v7;
  *(v2 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  sub_4A280(v2);
  (*(v3 + 8))(v2, v4);
  v11(v5, v6);
  sub_9964(v0 + 2);
  sub_6B49C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_48BC0()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  **(v0 + 120) = *(v0 + 312);
  swift_storeEnumTagMultiPayload();
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
  swift_willThrowTypedImpl();
  v1(v2, v3);
  sub_9964((v0 + 16));

  v4 = *(v0 + 8);

  return v4();
}

Swift::Int sub_48E08(unsigned __int8 a1)
{
  sub_6D6BC();
  sub_6D6CC(a1);
  return sub_6D6DC();
}

Swift::Int sub_48E6C()
{
  sub_6D6BC();
  sub_48DE0(v2, *v0);
  return sub_6D6DC();
}

uint64_t sub_48EAC(uint64_t a1)
{
  v3 = type metadata accessor for IFFlowError(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6CD2C();
  v44 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5708(&qword_81B58, qword_70A90);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v46 = &v44 - v13;
  v47 = sub_6C7EC();
  v45 = *(v47 - 8);
  v14 = __chkstk_darwin(v47);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v44 - v18;
  v20 = *(a1 - 8);
  __chkstk_darwin(v17);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22, v1, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0x6C616974696E692ELL;
      }

      else
      {
        return 0x6E6974696177612ELL;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_4B304(v22, v5, type metadata accessor for IFFlowError);
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_6D57C(21);

      v50 = 0xD000000000000012;
      v51 = 0x800000000006F2B0;
      v52._countAndFlagsBits = sub_2B20();
      sub_6D33C(v52);

      v53._countAndFlagsBits = 41;
      v53._object = 0xE100000000000000;
      sub_6D33C(v53);
      v26 = v50;
      sub_4B36C(v5, type metadata accessor for IFFlowError);
    }

    else
    {
      v39 = *v22;
      v40 = v22[8];
      v50 = 0x74656C706D6F632ELL;
      v51 = 0xEB00000000286465;
      v48 = v39;
      v49 = v40;
      sub_4A3C4(v39, v40);
      sub_5708(&qword_81D60, &unk_70D40);
      v55._countAndFlagsBits = sub_6D2EC();
      sub_6D33C(v55);

      v56._countAndFlagsBits = 41;
      v56._object = 0xE100000000000000;
      sub_6D33C(v56);
      sub_4A3D0(v39, v40);
      return v50;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = *v22;
      type metadata accessor for IFFlow.PromptValue(255, *(a1 + 16), *(a1 + 24), v24);
      v28 = sub_6C83C();
      v29 = sub_6BEEC();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v31 = *(TupleTypeMetadata3 + 48);
      v32 = *(TupleTypeMetadata3 + 64);
      v50 = 0;
      v51 = 0xE000000000000000;
      v54._countAndFlagsBits = 0x6974706D6F72702ELL;
      v54._object = 0xEB0000000028676ELL;
      sub_6D33C(v54);
      LOBYTE(v48) = v27;
      sub_6D62C();
      v26 = v50;
      (*(*(v29 - 8) + 8))(&v22[v32], v29);
      (*(*(v28 - 8) + 8))(&v22[v31], v28);
    }

    else
    {
      v26 = 0xD000000000000011;
      (*(v20 + 8))(v22, a1);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v33 = *(sub_5708(&qword_81788, &qword_70380) + 48);
    (*(v45 + 32))(v19, v22, v47);
    v34 = &v22[v33];
    v35 = v46;
    sub_201AC(v34, v46, &qword_81B58, qword_70A90);
    sub_C14C(v35, v12, &qword_81B58, qword_70A90);
    v36 = v44;
    if ((*(v44 + 48))(v12, 1, v6) == 1)
    {
      v37 = 0x800000000006F2F0;
      v38 = 0xD000000000000014;
    }

    else
    {
      (*(v36 + 32))(v8, v12, v6);
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_6D5AC();
      v38 = v50;
      v37 = v51;
      (*(v36 + 8))(v8, v6);
    }

    v50 = 0;
    v51 = 0xE000000000000000;
    sub_6D57C(28);

    v50 = 0xD000000000000011;
    v51 = 0x800000000006F310;
    v41 = v45;
    v42 = v47;
    (*(v45 + 16))(v16, v19, v47);
    v57._countAndFlagsBits = sub_6D2EC();
    sub_6D33C(v57);

    v58._countAndFlagsBits = 0x206D6F72662029;
    v58._object = 0xE700000000000000;
    sub_6D33C(v58);
    v59._countAndFlagsBits = v38;
    v59._object = v37;
    sub_6D33C(v59);

    v26 = v50;
    sub_5E20(v46, &qword_81B58, qword_70A90);
    (*(v41 + 8))(v19, v42);
  }

  else
  {
    v25 = sub_6B7AC();
    (*(*(v25 - 8) + 8))(v22, v25);
    return 0xD000000000000014;
  }

  return v26;
}

uint64_t *sub_49680()
{
  v1 = *v0;
  sub_9964(v0 + 2);
  sub_9964(v0 + 7);
  sub_9964(v0 + 12);

  sub_9964(v0 + 19);

  v2 = *(v1 + 80);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 184), v2);
  v3 = *(*v0 + 192);
  v4 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  v5 = sub_6D4DC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(*v0 + 200);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v7 = sub_6D4DC();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 208);
  v10 = type metadata accessor for IFFlow.State(0, v2, v4, v9);
  (*(*(v10 - 8) + 8))(v0 + v8, v10);
  return v0;
}

uint64_t sub_498C0()
{
  sub_49680();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ValueResolutionMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ValueResolutionMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_49AC0(uint64_t a1)
{
  sub_49BC4();
  if (v2 <= 0x3F)
  {
    sub_49C0C(319);
    if (v4 <= 0x3F)
    {
      type metadata accessor for IFFlow.PromptValue(255, *(a1 + 16), *(a1 + 24), v3);
      sub_6C83C();
      sub_6BEEC();
      swift_getTupleTypeMetadata3();
      if (v5 <= 0x3F)
      {
        type metadata accessor for LocationRequest(319);
        if (v6 <= 0x3F)
        {
          type metadata accessor for IFFlowError(319);
          if (v7 <= 0x3F)
          {
            sub_49CA0(319);
            if (v8 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_49BC4()
{
  if (!qword_81CA0)
  {
    v0 = sub_6B7AC();
    if (!v1)
    {
      atomic_store(v0, &qword_81CA0);
    }
  }
}

void sub_49C0C(uint64_t a1)
{
  if (!qword_81CA8)
  {
    sub_6C7EC();
    sub_29F8(&qword_81B58, qword_70A90);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_81CA8);
    }
  }
}

void sub_49CA0(uint64_t a1)
{
  if (!qword_81CB0[0])
  {
    sub_29F8(&qword_813D0, qword_6FC50);
    v1 = sub_6D6EC();
    if (!v2)
    {
      atomic_store(v1, qword_81CB0);
    }
  }
}

uint64_t sub_49D20(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_49DB0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_49E88()
{
  result = qword_81D38;
  if (!qword_81D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81D38);
  }

  return result;
}

void (*sub_49EDC(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_6BC9C();
  return sub_223D0;
}

uint64_t sub_49F68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_102E0;

  return sub_32C6C(a1);
}

uint64_t sub_4A024(uint64_t a1)
{
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_E728;

  return sub_355F4(a1, v3, v4, v5);
}

uint64_t sub_4A0C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_31A24();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

Swift::Int sub_4A10C()
{
  v1 = *v0;
  sub_6D6BC();
  sub_6D6CC(v1);
  return sub_6D6DC();
}

Swift::Int sub_4A180()
{
  v1 = *v0;
  sub_6D6BC();
  sub_6D6CC(v1);
  return sub_6D6DC();
}

uint64_t sub_4A1FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_6BC3C();
  *a1 = result;
  return result;
}

void sub_4A280(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  swift_beginAccess();
  v6 = type metadata accessor for IFFlow.State(0, *(v3 + 80), *(v3 + 88), v5);
  (*(*(v6 - 8) + 24))(v1 + v4, a1, v6);
  v7 = swift_endAccess();
  sub_327C0(v7, v8, v9, v10);
}

uint64_t sub_4A34C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_30BD4();
  *a1 = result;
  return result;
}

__n128 sub_4A384(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_4A3C4(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_4A3D0(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_4A3DC(uint64_t a1)
{
  v2 = sub_5708(&qword_81D78, &qword_70DA8);
  __chkstk_darwin(v2 - 8);
  v49 = &v47 - v3;
  v4 = sub_5708(&qword_819D0, &qword_70DB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_6B8DC();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v47 - v11;
  v13 = sub_6B7FC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6B3DC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, v13);
  if ((*(v14 + 88))(v16, v13) == enum case for Parse.nlRouter(_:))
  {
    (*(v14 + 96))(v16, v13);
    (*(v18 + 32))(v20, v16, v17);
    sub_6B39C();
    v21 = sub_6B82C();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v6, 1, v21) != 1)
    {
      sub_6B81C();
      (*(v22 + 8))(v6, v21);
      v28 = v47;
      v29 = v10;
      v30 = v48;
      (*(v47 + 32))(v12, v29, v48);
      sub_5708(&qword_81D80, &qword_70DB8);
      v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_70000;
      (*(v28 + 16))(v32 + v31, v12, v30);
      v33 = sub_6BA8C();
      v34 = v49;
      (*(*(v33 - 8) + 56))(v49, 1, 1, v33);
      v35 = sub_6CE7C();

      sub_5E20(v34, &qword_81D78, &qword_70DA8);
      (*(v28 + 8))(v12, v30);
      (*(v18 + 8))(v20, v17);
      v26 = v35 & 1;
      goto LABEL_11;
    }

    (*(v18 + 8))(v20, v17);
    sub_5E20(v6, &qword_819D0, &qword_70DB0);
  }

  else
  {
    (*(v14 + 8))(v16, v13);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v23 = sub_6D04C();
    sub_5CE4(v23, qword_839A0);
    v24 = sub_6D03C();
    v25 = sub_6D45C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = 2;
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v24, v25, "Input parse is not of type nlrouter", v27, 2u);

      goto LABEL_11;
    }
  }

  v26 = 2;
LABEL_11:
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v36 = sub_6D04C();
  sub_5CE4(v36, qword_839A0);
  v37 = sub_6D03C();
  v38 = sub_6D45C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v50 = v40;
    *v39 = 136315138;
    v41 = 1702195828;
    if ((v26 & 1) == 0)
    {
      v41 = 0x65736C6166;
    }

    v42 = 0xE500000000000000;
    if (v26)
    {
      v42 = 0xE400000000000000;
    }

    if (v26 == 2)
    {
      v43 = 0;
    }

    else
    {
      v43 = v41;
    }

    if (v26 == 2)
    {
      v44 = 0xE000000000000000;
    }

    else
    {
      v44 = v42;
    }

    v45 = sub_1076C(v43, v44, &v50);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_0, v37, v38, "Parsed input parse to isPSC: %s", v39, 0xCu);
    sub_9964(v40);
  }

  return v26;
}

unint64_t sub_4AADC()
{
  result = qword_81D68;
  if (!qword_81D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_81D68);
  }

  return result;
}

uint64_t sub_4AB28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_30DC8();
  *a1 = result;
  return result;
}

uint64_t sub_4AB60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_6BC3C();
  *a1 = result;
  return result;
}

uint64_t sub_4ABBC()
{
  v1 = sub_6BEEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_6C83C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_4AD10(unsigned __int8 *a1)
{
  v3 = *(sub_6BEEC() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_6C83C() - 8);
  return sub_47694(a1, *(v1 + 32), v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t sub_4AE10(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_6BEEC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_6C83C() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_6AE9C() - 8);
  v11 = *(v2 + 32);
  v12 = v2 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return a2(a1, v11, v2 + v5, v2 + v8, v12);
}

uint64_t sub_4AF90(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v5 = *(sub_6BEEC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_6C83C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_6AE9C() - 8);
  return sub_463D8(a1, *(v2 + 32), v2 + v6, v2 + v9, v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80)), a2);
}

uint64_t sub_4B0C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29F8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4B110()
{
  v17 = sub_6BEEC();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_6C83C();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_6AE9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;

  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_4B304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_4B36C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_4B3CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_4B434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4B4CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_6BF0C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6C95C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = sub_6C4DC();
  if (*(v13 + 16))
  {
    (*(v7 + 16))(v10, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    (*(v7 + 32))(v12, v10, v6);
    sub_6C94C();
    return (*(v7 + 8))(v12, v6);
  }

  else
  {

    (*(v3 + 104))(v5, enum case for ActionFailure.Failure.actionCanceled(_:), v2);
    sub_6BF4C();
    v15 = enum case for StatementOutcome.failure(_:);
    v16 = sub_6C54C();
    return (*(*(v16 - 8) + 104))(a1, v15, v16);
  }
}

uint64_t sub_4B728()
{
  v0 = sub_6C95C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6C4DC();
  if (*(v4 + 16))
  {
    (*(v1 + 16))(v3, v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    v5 = sub_6C93C();
    v7 = v6;
    (*(v1 + 8))(v3, v0);
    if (v7)
    {
      return v5;
    }
  }

  else
  {
  }

  return 0xD000000000000012;
}

uint64_t sub_4B870()
{
  v0 = sub_6C95C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = sub_6C4DC();
  if (*(v7 + 16))
  {
    (*(v1 + 16))(v4, v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    (*(v1 + 32))(v6, v4, v0);
    sub_6C92C();
    return (*(v1 + 8))(v6, v0);
  }

  else
  {

    return StatementID.init(index:name:)(1, 0, 0);
  }
}

uint64_t sub_4BA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v130 = a5;
  v128 = a4;
  v135 = a3;
  v124 = a2;
  v142 = *v6;
  v143 = a6;
  v8 = sub_6C4EC();
  v126 = *(v8 - 8);
  v127 = v8;
  __chkstk_darwin(v8);
  v125 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_6C35C();
  v132 = *(v134 - 8);
  v10 = __chkstk_darwin(v134);
  v133 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v131 = &v110 - v12;
  v13 = sub_5708(&qword_81770, &unk_70F70);
  __chkstk_darwin(v13 - 8);
  v123 = &v110 - v14;
  v121 = sub_6BEEC();
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v122 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_6C86C();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v120 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6AE9C();
  v137 = *(v17 - 8);
  v138 = v17;
  __chkstk_darwin(v17);
  v136 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_5708(&unk_82030, &qword_70370);
  __chkstk_darwin(v19 - 8);
  v129 = &v110 - v20;
  v116 = sub_6C89C();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_6D1EC();
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = (&v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_6C0EC();
  __chkstk_darwin(v23 - 8);
  v25 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_5708(&qword_81580, &unk_70F80);
  __chkstk_darwin(v26 - 8);
  v28 = &v110 - v27;
  v29 = sub_5708(&qword_81588, &qword_700C0);
  __chkstk_darwin(v29 - 8);
  v31 = &v110 - v30;
  v32 = sub_6C33C();
  v140 = *(v32 - 8);
  v141 = v32;
  v33 = __chkstk_darwin(v32);
  v35 = &v110 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v139 = &v110 - v36;
  v37 = sub_5708(&qword_81F10, &unk_70F90);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = (&v110 - v39);
  (*(v38 + 16))(&v110 - v39, a1, v37);
  v41 = (*(v38 + 88))(v40, v37);
  if (v41 == enum case for PromptResult.answered<A>(_:))
  {
    (*(v38 + 96))(v40, v37);
    v43 = *v40;
    v42 = v40[1];
    v110 = v6;
    if (v128)
    {
      v62 = v137;
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v63 = sub_6D04C();
      sub_5CE4(v63, qword_839A0);
      v64 = sub_6D03C();
      v65 = sub_6D45C();
      v66 = os_log_type_enabled(v64, v65);
      v67 = v138;
      if (v66)
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_0, v64, v65, "IFFlow.valueResolutionMode == .stringValue; passing prompt response to IF as a resolved parameter value", v68, 2u);
      }

      v69 = sub_6D1DC();
      v70 = swift_allocBox();
      *v71 = v43;
      v71[1] = v42;
      (*(*(v69 - 8) + 104))(v71, enum case for TypedValue.PrimitiveValue.string(_:), v69);
      v72 = v111;
      *v111 = v70;
      v73 = v112;
      v74 = v114;
      (*(v112 + 104))(v72, enum case for TypedValue.primitive(_:), v114);
      (*(v62 + 56))(v129, 1, 1, v67);
      sub_6C80C();
      v75 = v120;
      (*(v73 + 16))(v120, v72, v74);
      (*(v117 + 104))(v75, enum case for SystemPromptResolution.UserAction.parameterValueSelected(_:), v118);
      (*(v119 + 16))(v122, v124, v121);
      v76 = enum case for SystemPromptResolution.ResolutionInput.touch(_:);
      v77 = sub_6C85C();
      v78 = *(v77 - 8);
      v79 = v123;
      (*(v78 + 104))(v123, v76, v77);
      (*(v78 + 56))(v79, 0, 1, v77);
      v80 = v113;
      v81 = v136;
      sub_6C87C();
      v52 = v139;
      sub_A17C(v80, v130);
      (*(v115 + 8))(v80, v116);
      (*(v73 + 8))(v72, v74);
      v57 = v134;
      v56 = v137;
      v55 = v81;
      v51 = v140;
      v54 = v141;
    }

    else
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v44 = sub_6D04C();
      sub_5CE4(v44, qword_839A0);
      v45 = sub_6D03C();
      v46 = sub_6D45C();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_0, v45, v46, "IFFlow.valueResolutionMode == .passthrough; passing prompt response back to planner unresolved", v47, 2u);
      }

      v48 = sub_6C04C();
      (*(*(v48 - 8) + 56))(v31, 1, 1, v48);
      v49 = sub_6C29C();
      (*(*(v49 - 8) + 56))(v28, 1, 1, v49);
      sub_9B78(v43, v31, v25);
      sub_6C31C();
      sub_9E14(v35, v130, v28);
      v50 = v134;

      sub_5E20(v28, &qword_81580, &unk_70F80);
      sub_5E20(v31, &qword_81588, &qword_700C0);
      v52 = v139;
      v51 = v140;
      v53 = v35;
      v54 = v141;
      (*(v140 + 32))(v139, v53, v141);
      v55 = v136;
      v56 = v137;
      v57 = v50;
    }

    v136 = *(sub_5708(&qword_81788, &qword_70380) + 48);
    sub_6C82C();
    v82 = v131;
    (*(v51 + 16))(v131, v52, v54);
    v83 = v132;
    (*(v132 + 104))(v82, enum case for MessagePayload.request(_:), v57);
    sub_30BF8(v55, v82);
    v84 = *(v83 + 8);
    v84(v82, v57);
    (*(v56 + 8))(v55, v138);
    v85 = v133;
    sub_6C81C();
    if ((*(v83 + 88))(v85, v57) == enum case for MessagePayload.systemResponse(_:))
    {
      (*(v83 + 96))(v85, v57);
      v87 = v126;
      v86 = v127;
      v88 = v125;
      (*(v126 + 32))(v125, v85, v127);
      v89 = v143;
      v90 = v136;
      sub_4458(v88, v143 + v136);
      (*(v87 + 8))(v88, v86);
      (*(v140 + 8))(v139, v141);
      v91 = 0;
      v92 = v89;
      v93 = v90;
    }

    else
    {
      (*(v140 + 8))(v139, v141);
      v84(v85, v57);
      v91 = 1;
      v92 = v143;
      v93 = v136;
    }

    v100 = sub_6CD2C();
    (*(*(v100 - 8) + 56))(v92 + v93, v91, 1, v100);
    type metadata accessor for IFFlow.State(0, *(v142 + 80), *(v142 + 88), v101);
    return swift_storeEnumTagMultiPayload();
  }

  if (v41 == enum case for PromptResult.error<A>(_:))
  {
    (*(v38 + 96))(v40, v37);
    v58 = *v40;
    v59 = *(v40 + 8);
    v60 = v143;
    *v143 = v58;
    *(v60 + 8) = v59;
    type metadata accessor for IFFlowError(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for IFFlow.State(0, *(v142 + 80), *(v142 + 88), v61);
    return swift_storeEnumTagMultiPayload();
  }

  v94 = v143;
  if (v41 == enum case for PromptResult.cancelled<A>(_:))
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v95 = sub_6D04C();
    sub_5CE4(v95, qword_839A0);
    v96 = sub_6D03C();
    v97 = sub_6D45C();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_0, v96, v97, "Exiting IFFlow, received userCancelled", v98, 2u);
    }

    *v94 = 0;
    *(v94 + 8) = 0;
    type metadata accessor for IFFlow.State(0, *(v142 + 80), *(v142 + 88), v99);
    return swift_storeEnumTagMultiPayload();
  }

  if (v41 == enum case for PromptResult.unanswered<A>(_:))
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v103 = sub_6D04C();
    sub_5CE4(v103, qword_839A0);
    v104 = sub_6D03C();
    v105 = sub_6D45C();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_0, v104, v105, "Exiting IFFlow, received .unaswered from PromptForValueFlow", v106, 2u);
    }

    *v94 = 0;
    type metadata accessor for IFFlowError(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for IFFlow.State(0, *(v142 + 80), *(v142 + 88), v107);
    return swift_storeEnumTagMultiPayload();
  }

  v144 = 0;
  v145 = 0xE000000000000000;
  sub_6D57C(35);

  v144 = 0xD000000000000021;
  v145 = 0x800000000006EDA0;
  sub_4D49C();
  v146._countAndFlagsBits = sub_6D61C();
  sub_6D33C(v146);

  v108 = v145;
  *v94 = v144;
  v94[1] = v108;
  type metadata accessor for IFFlowError(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for IFFlow.State(0, *(v142 + 80), *(v142 + 88), v109);
  swift_storeEnumTagMultiPayload();
  return (*(v38 + 8))(v40, v37);
}

uint64_t sub_4CBC4()
{
  v1 = sub_6B7FC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 56) == 1 && (sub_22C60() & 1) != 0)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v5 = sub_6D04C();
    sub_5CE4(v5, qword_839A0);
    v6 = sub_6D03C();
    v7 = sub_6D44C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1076C(0xD000000000000012, 0x800000000006F4A0, &v19);
      _os_log_impl(&dword_0, v6, v7, "%s Cancelling input due to user cancel signal", v8, 0xCu);
      sub_9964(v9);
    }

    return static ActionForInput.cancel()();
  }

  else
  {
    sub_6B78C();
    v10 = (*(v2 + 88))(v4, v1);
    v11 = enum case for Parse.nlRouter(_:);
    (*(v2 + 8))(v4, v1);
    if (v10 == v11)
    {
      return sub_6B3FC();
    }

    else
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v12 = sub_6D04C();
      sub_5CE4(v12, qword_839A0);
      v13 = sub_6D03C();
      v14 = sub_6D44C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v19 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_1076C(0xD000000000000012, 0x800000000006F4A0, &v19);
        _os_log_impl(&dword_0, v13, v14, "%s Ignoring input as it does not contain NLRouter info", v15, 0xCu);
        sub_9964(v16);
      }

      return sub_6B40C();
    }
  }
}

uint64_t sub_4CF64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_4D010;

  return sub_4DA08(a2);
}

uint64_t sub_4D010(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_4D12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_12CEC;

  return PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()(a1, v7, a3);
}

uint64_t sub_4D204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_12CEC;

  return PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()(a1, v7, a3);
}

uint64_t sub_4D2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_E728;

  return PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()(a1, v7, a3);
}

uint64_t sub_4D3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_12CEC;

  return PromptForValueFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, v9, a4);
}

unint64_t sub_4D49C()
{
  result = qword_81F18;
  if (!qword_81F18)
  {
    sub_29F8(&qword_81F10, &unk_70F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81F18);
  }

  return result;
}

uint64_t sub_4D500(uint64_t a1)
{
  v2 = sub_6B7AC();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_6B3AC();
  v4 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6B3DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6B7FC();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  sub_6B78C();
  if ((*(v12 + 88))(v15, v11) == enum case for Parse.nlRouter(_:))
  {
    (*(v12 + 96))(v15, v11);
    (*(v8 + 32))(v10, v15, v7);
    sub_6B3CC();
    (*(v8 + 8))(v10, v7);
    v16 = v33;
    if ((*(v4 + 88))(v6, v33) == enum case for NLRouterParse.InputCandidate.text(_:))
    {
      (*(v4 + 96))(v6, v16);
      return *v6;
    }

    (*(v4 + 8))(v6, v16);
  }

  else
  {
    v18 = v11;
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v19 = sub_6D04C();
    sub_5CE4(v19, qword_839A0);
    v21 = v34;
    v20 = v35;
    v22 = v36;
    (*(v35 + 16))(v34, a1, v36);
    v23 = sub_6D03C();
    v24 = sub_6D46C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v33 = v18;
      v26 = v25;
      v27 = v21;
      v32 = swift_slowAlloc();
      v37 = v32;
      *v26 = 136315138;
      sub_6B78C();
      v28 = sub_6D2EC();
      v30 = v29;
      (*(v20 + 8))(v27, v22);
      v31 = sub_1076C(v28, v30, &v37);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_0, v23, v24, "Unexpected parse received: %s", v26, 0xCu);
      sub_9964(v32);

      v18 = v33;
    }

    else
    {

      (*(v20 + 8))(v21, v22);
    }

    (*(v12 + 8))(v15, v18);
  }

  return 0;
}

uint64_t sub_4DA08(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_6B7AC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_4DAC8, 0, 0);
}

uint64_t sub_4DAC8()
{
  v25 = v0;
  v1 = sub_4D500(v0[2]);
  v3 = v2;
  if (!v2)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v5 = v0[4];
    v4 = v0[5];
    v7 = v0[2];
    v6 = v0[3];
    v8 = sub_6D04C();
    sub_5CE4(v8, qword_839A0);
    (*(v5 + 16))(v4, v7, v6);
    v9 = sub_6D03C();
    v10 = sub_6D46C();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];
    if (v11)
    {
      v23 = v10;
      v15 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v15 = 136315138;
      sub_4DCFC();
      v16 = sub_6D61C();
      v18 = v17;
      (*(v13 + 8))(v12, v14);
      v19 = sub_1076C(v16, v18, &v24);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_0, v9, v23, "Unexpectedly found nil criticalInfoValueResponse in %s (why didn't actionForInput ignore?)", v15, 0xCu);
      sub_9964(v22);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }
  }

  v20 = v0[1];

  return v20(v1, v3);
}

unint64_t sub_4DCFC()
{
  result = qword_81768;
  if (!qword_81768)
  {
    sub_6B7AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81768);
  }

  return result;
}

id sub_4DD54()
{
  type metadata accessor for IFFlowInstrumentationUtil();
  v0 = swift_allocObject();
  v1 = objc_opt_self();
  v0[2] = [v1 sharedStream];
  sub_6CF2C();
  swift_allocObject();
  v0[3] = sub_6CF1C();
  result = [v1 sharedAnalytics];
  v0[4] = result;
  qword_839C8 = v0;
  return result;
}

void sub_4DDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || (v9 = v8, (v11 = sub_6CF0C()) == 0))
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v21 = sub_6D04C();
    sub_5CE4(v21, qword_839A0);
    v41 = sub_6D03C();
    v22 = sub_6D46C();
    if (!os_log_type_enabled(v41, v22))
    {
      goto LABEL_22;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v42 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1076C(0xD00000000000004BLL, 0x800000000006F780, &v42);
    _os_log_impl(&dword_0, v41, v22, "[IFFlowInstrumentationUtil] The plannerTraceId is nil or not a valid UUID, stopping %s", v23, 0xCu);
    sub_9964(v24);

    goto LABEL_20;
  }

  v41 = v11;
  v12 = sub_6CEFC();
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v12;
  v14 = [v12 eventMetadata];
  if (!v14)
  {

LABEL_16:
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v25 = sub_6D04C();
    sub_5CE4(v25, qword_839A0);
    v26 = sub_6D03C();
    v27 = sub_6D46C();
    if (!os_log_type_enabled(v26, v27))
    {

      goto LABEL_22;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v42 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_1076C(0xD00000000000004BLL, 0x800000000006F780, &v42);
    _os_log_impl(&dword_0, v26, v27, "[IFFlowInstrumentationUtil] Could not build wrapper or eventMetadata when logging %s", v28, 0xCu);
    sub_9964(v29);

LABEL_20:
    return;
  }

  v15 = sub_6CF0C();
  if (!v15)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v30 = sub_6D04C();
    sub_5CE4(v30, qword_839A0);
    v31 = sub_6D03C();
    v32 = sub_6D46C();
    if (!os_log_type_enabled(v31, v32))
    {

      goto LABEL_22;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_1076C(0xD00000000000004BLL, 0x800000000006F780, &v42);
    _os_log_impl(&dword_0, v31, v32, "[IFFlowInstrumentationUtil] The requestId is not a valid UUID, stop %s", v33, 0xCu);
    sub_9964(v34);

    goto LABEL_20;
  }

  v16 = v15;
  v17 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowQuerySent) init];
  if (v17)
  {
    v40 = v17;
    if (a8)
    {
      v18 = sub_6CF0C();
      if (v18)
      {
        v19 = v18;
        [v40 setTrpId:v18];
      }
    }

    [v40 setTraceId:v41];
    [v40 setSubRequestId:v16];
    [v13 setIntelligenceFlowQuerySent:v40];
    [*(v9 + 16) emitMessage:v13];

    v20 = v40;
    goto LABEL_23;
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v35 = sub_6D04C();
  sub_5CE4(v35, qword_839A0);
  v36 = sub_6D03C();
  v37 = sub_6D46C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_1076C(0xD00000000000004BLL, 0x800000000006F780, &v42);
    _os_log_impl(&dword_0, v36, v37, "[IFFlowInstrumentationUtil] Could not build schema event for %s", v38, 0xCu);
    sub_9964(v39);

    goto LABEL_20;
  }

LABEL_22:
  v20 = v41;
LABEL_23:
}

void sub_4E400(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a4)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v10 = sub_6D04C();
    sub_5CE4(v10, qword_839A0);
    oslog = sub_6D03C();
    v11 = sub_6D46C();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_13;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1076C(0xD000000000000031, 0x800000000006F740, &v18);
    _os_log_impl(&dword_0, oslog, v11, "[IFFlowInstrumentationUtil] The plannerTraceId nil, stopping %s", v12, 0xCu);
    sub_9964(v13);

    goto LABEL_12;
  }

  v9 = sub_6CEEC();
  if (!v9)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v14 = sub_6D04C();
    sub_5CE4(v14, qword_839A0);

    oslog = sub_6D03C();
    v15 = sub_6D46C();

    if (!os_log_type_enabled(oslog, v15))
    {
      goto LABEL_13;
    }

    v16 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_1076C(a1, a2, &v18);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1076C(a3, a4, &v18);
    _os_log_impl(&dword_0, oslog, v15, "[IFFlowInstrumentationUtil] Unable to logSubRequestTraceLink for subRequestId=%s and plannerTraceId=%s", v16, 0x16u);
    swift_arrayDestroy();

LABEL_12:

    return;
  }

  oslog = v9;
  [*(v4 + 16) emitMessage:?];
LABEL_13:
}

void sub_4E710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for IFFlowError(0);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v18 = sub_6D04C();
    sub_5CE4(v18, qword_839A0);
    v29 = sub_6D03C();
    v19 = sub_6D46C();
    if (os_log_type_enabled(v29, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1076C(0xD00000000000002ALL, 0x800000000006F6E0, v31);
      _os_log_impl(&dword_0, v29, v19, "[IFFlowInstrumentationUtil] could not build wrapper for %s because rootRequest is nil", v20, 0xCu);
      sub_9964(v21);

      return;
    }

    goto LABEL_27;
  }

  v10 = sub_6CEFC();
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v10;
  v12 = [v10 eventMetadata];
  if (!v12)
  {

LABEL_18:
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v22 = sub_6D04C();
    sub_5CE4(v22, qword_839A0);
    v29 = sub_6D03C();
    v23 = sub_6D46C();
    if (os_log_type_enabled(v29, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v29, v23, "[IFFlowInstrumentationUtil] Could not build wrapper or eventMetadata when logging logIFRequestFailed", v24, 2u);
    }

    goto LABEL_27;
  }

  v13 = [objc_allocWithZone(ORCHSchemaORCHRequestFailed) init];
  if (v13)
  {
    v14 = v13;
    [v13 setErrorDomain:15];
    [v14 setOrchErrorCode:sub_37B8()];
    sub_4394(a3, v9);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 0x16)
    {
      goto LABEL_8;
    }

    if (((1 << EnumCaseMultiPayload) & 0x580000) != 0)
    {
LABEL_10:
      v16 = [objc_allocWithZone(ORCHSchemaORCHRequestContext) init];
      v17 = v16;
      if (v16)
      {
        [v16 setFailed:v14];
      }

      [v11 setRequestContext:v17];
      [*(v4 + 16) emitMessage:v11];

      return;
    }

    if (((1 << EnumCaseMultiPayload) & 0x81) == 0)
    {
LABEL_8:
      strcpy(v31, "IFFlowError.");
      BYTE5(v31[1]) = 0;
      HIWORD(v31[1]) = -5120;
      v30 = sub_37B8();
      v33._countAndFlagsBits = sub_6D61C();
      sub_6D33C(v33);

      sub_6CE9C();
    }

    sub_43F8(v9);
    goto LABEL_10;
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v25 = sub_6D04C();
  sub_5CE4(v25, qword_839A0);
  v29 = sub_6D03C();
  v26 = sub_6D46C();
  if (os_log_type_enabled(v29, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v29, v26, "[IFFlowInstrumentationUtil] Could not build schema event for logIFRequestFailed", v27, 2u);
  }

LABEL_27:
  v28 = v29;
}

void sub_4EC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v12 = sub_6D04C();
  sub_5CE4(v12, qword_839A0);
  v13 = sub_6D03C();
  v14 = sub_6D44C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = a8;
    v16 = v9;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v46 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1076C(0xD00000000000004ELL, 0x800000000006F690, &v46);
    _os_log_impl(&dword_0, v13, v14, "[IFFlowInstrumentationUtil] Logging Request Ended in %s", v17, 0xCu);
    sub_9964(v18);

    v9 = v16;
    a8 = v15;
  }

  if (a2)
  {
    v19 = sub_6CF0C();
    if (v19)
    {
      v45 = v19;
      v20 = sub_6CF0C();
      if (!v20)
      {
        v21 = sub_6D03C();
        v34 = sub_6D46C();
        if (os_log_type_enabled(v21, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v46 = v36;
          *v35 = 136315138;
          *(v35 + 4) = sub_1076C(0xD00000000000004ELL, 0x800000000006F690, &v46);
          _os_log_impl(&dword_0, v21, v34, "[IFFlowInstrumentationUtil] The requestId is not a valid UUID, stop %s", v35, 0xCu);
          sub_9964(v36);

LABEL_27:

          goto LABEL_28;
        }

        goto LABEL_31;
      }

      v21 = v20;
      v22 = sub_6CEFC();
      if (v22)
      {
        v23 = v22;
        v24 = [v22 eventMetadata];
        if (v24)
        {

          v25 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowRequestEnded) init];
          if (v25)
          {
            v26 = v25;
            v27 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowRequestContext) init];
            if (v27)
            {
              v44 = v27;
              if (a8)
              {
                v28 = sub_6CF0C();
                if (v28)
                {
                  v29 = v28;
                  [v44 setTrpId:v28];
                }
              }

              [v44 setEnded:v26];
              [v44 setTraceId:v45];
              [v44 setSubRequestId:v21];
              [v23 setIntelligenceFlowRequestContext:v44];
              [*(v9 + 16) emitMessage:v23];

              v30 = v44;
              goto LABEL_33;
            }
          }

          v37 = sub_6D03C();
          v41 = sub_6D46C();
          if (os_log_type_enabled(v37, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v46 = v43;
            *v42 = 136315138;
            *(v42 + 4) = sub_1076C(0xD00000000000004ELL, 0x800000000006F690, &v46);
            _os_log_impl(&dword_0, v37, v41, "[IFFlowInstrumentationUtil] Could not create schema events in %s. This should never occur", v42, 0xCu);
            sub_9964(v43);

            goto LABEL_26;
          }

LABEL_30:
LABEL_31:

          goto LABEL_32;
        }
      }

      v37 = sub_6D03C();
      v38 = sub_6D46C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v46 = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_1076C(0xD00000000000004ELL, 0x800000000006F690, &v46);
        _os_log_impl(&dword_0, v37, v38, "[IFFlowInstrumentationUtil] Could not build wrapper or eventMetadata in %s", v39, 0xCu);
        sub_9964(v40);

LABEL_26:

        goto LABEL_27;
      }

      goto LABEL_30;
    }
  }

  v45 = sub_6D03C();
  v31 = sub_6D46C();
  if (os_log_type_enabled(v45, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v46 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_1076C(0xD00000000000004ELL, 0x800000000006F690, &v46);
    _os_log_impl(&dword_0, v45, v31, "[IFFlowInstrumentationUtil] The plannerTraceId is nil or not a valid UUID, stopping %s", v32, 0xCu);
    sub_9964(v33);

LABEL_28:

    return;
  }

LABEL_32:
  v30 = v45;
LABEL_33:
}

void sub_4F28C(void *a1, NSObject *a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v110 = a8;
  v108 = a7;
  v113 = a5;
  v114 = a1;
  v115 = a2;
  v112 = a9;
  v13 = sub_6C06C();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v111 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v109 = &v99 - v18;
  __chkstk_darwin(v17);
  v20 = &v99 - v19;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v21 = sub_6D04C();
  sub_5CE4(v21, qword_839A0);
  v22 = sub_6D03C();
  v23 = sub_6D44C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v107 = a6;
    v25 = v24;
    v26 = swift_slowAlloc();
    v106 = a3;
    v27 = v20;
    v28 = v14;
    v29 = v13;
    v30 = v10;
    v31 = v26;
    v116 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1076C(0xD000000000000066, 0x800000000006F620, &v116);
    _os_log_impl(&dword_0, v22, v23, "[IFFlowInstrumentationUtil] Logging Request redirected to shim in %s", v25, 0xCu);
    sub_9964(v31);
    v10 = v30;
    v13 = v29;
    v14 = v28;
    v20 = v27;
  }

  if (v115 && (v32 = sub_6CF0C()) != 0)
  {
    v115 = v32;
    v33 = sub_6CF0C();
    if (v33)
    {
      v34 = v33;
      v35 = sub_6CEFC();
      if (v35)
      {
        v36 = v35;
        v37 = [v35 eventMetadata];
        if (v37)
        {

          v38 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowRequestEnded) init];
          if (v38)
          {
            v39 = v38;
            v40 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowRequestContext) init];
            if (v40)
            {
              v114 = v40;
              v104 = v10;
              v106 = *(v14 + 16);
              v107 = v14 + 16;
              v106(v20, v112, v13);
              v41 = sub_6D03C();
              v42 = v20;
              v43 = sub_6D44C();
              v44 = os_log_type_enabled(v41, v43);
              v105 = v14;
              if (v44)
              {
                v45 = swift_slowAlloc();
                v103 = v39;
                v46 = v45;
                v47 = swift_slowAlloc();
                v101 = v36;
                v48 = v47;
                v116 = v47;
                *v46 = 136315138;
                v100 = sub_6C05C();
                v102 = v34;
                v50 = v49;
                v113 = *(v14 + 8);
                v113(v42, v13);
                v51 = sub_1076C(v100, v50, &v116);
                v34 = v102;

                *(v46 + 4) = v51;
                _os_log_impl(&dword_0, v41, v43, "[IFFlowInstrumentationUtil] Finding shim with id: %s", v46, 0xCu);
                sub_9964(v48);
                v36 = v101;

                v39 = v103;
              }

              else
              {

                v113 = *(v14 + 8);
                v113(v42, v13);
              }

              v67 = sub_6BE7C();
              v68 = sub_6C05C();
              if (*(v67 + 16))
              {
                sub_10DDC(v68, v69);
                v71 = v70;

                if (v71)
                {

                  v72 = sub_6BE8C();
                  v73 = v109;
                  v106(v109, v112, v13);
                  v74 = sub_6D03C();
                  v75 = sub_6D44C();
                  if (os_log_type_enabled(v74, v75))
                  {
                    v76 = swift_slowAlloc();
                    LODWORD(v112) = v72;
                    v77 = v76;
                    v78 = swift_slowAlloc();
                    v79 = v73;
                    v111 = v13;
                    v80 = v78;
                    v116 = v78;
                    *v77 = 67109378;
                    *(v77 + 4) = v112;
                    *(v77 + 8) = 2080;
                    v81 = sub_6C05C();
                    v103 = v39;
                    v82 = v36;
                    v84 = v83;
                    v113(v79, v111);
                    v85 = sub_1076C(v81, v84, &v116);
                    v36 = v82;
                    v39 = v103;

                    *(v77 + 10) = v85;
                    _os_log_impl(&dword_0, v74, v75, "[IFFlowInstrumentationUtil] Found schema shim action %d for shim id %s", v77, 0x12u);
                    sub_9964(v80);

                    v72 = v112;
                  }

                  else
                  {

                    v113(v73, v13);
                  }

                  v96 = v114;
                  [v39 setShimAction:v72];
                  if (v110)
                  {
                    v97 = sub_6CF0C();
                    if (v97)
                    {
                      v98 = v97;
                      [v96 setTrpId:v97];
                    }
                  }

                  [v96 setEnded:v39];
                  [v96 setTraceId:v115];
                  [v96 setSubRequestId:v34];
                  [v36 setIntelligenceFlowRequestContext:v96];
                  [*(v104 + 16) emitMessage:v36];

                  return;
                }
              }

              else
              {
              }

              v86 = v111;
              v106(v111, v112, v13);
              v87 = sub_6D03C();
              v88 = sub_6D46C();
              if (os_log_type_enabled(v87, v88))
              {
                v89 = swift_slowAlloc();
                v90 = swift_slowAlloc();
                v116 = v90;
                *v89 = 136315138;
                v91 = sub_6C05C();
                v92 = v13;
                v94 = v93;
                v113(v86, v92);
                v95 = sub_1076C(v91, v94, &v116);

                *(v89 + 4) = v95;
                _os_log_impl(&dword_0, v87, v88, "[IFFlowInstrumentationUtil] Could not find shim with id: %s", v89, 0xCu);
                sub_9964(v90);
              }

              else
              {

                v113(v86, v13);
              }

              return;
            }
          }

          v59 = sub_6D03C();
          v63 = sub_6D46C();
          if (os_log_type_enabled(v59, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v116 = v65;
            *v64 = 136315138;
            *(v64 + 4) = sub_1076C(0xD000000000000066, 0x800000000006F620, &v116);
            _os_log_impl(&dword_0, v59, v63, "[IFFlowInstrumentationUtil] Could not build schema events for %s. This should never occur", v64, 0xCu);
            sub_9964(v65);

            goto LABEL_25;
          }

LABEL_28:
          goto LABEL_29;
        }
      }

      v59 = sub_6D03C();
      v60 = sub_6D46C();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v116 = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_1076C(0xD000000000000066, 0x800000000006F620, &v116);
        _os_log_impl(&dword_0, v59, v60, "[IFFlowInstrumentationUtil] Could not build wrapper or eventMetadata in %s", v61, 0xCu);
        sub_9964(v62);

LABEL_25:

        goto LABEL_26;
      }

      goto LABEL_28;
    }

    v55 = sub_6D03C();
    v56 = sub_6D46C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v116 = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_1076C(0xD000000000000066, 0x800000000006F620, &v116);
      _os_log_impl(&dword_0, v55, v56, "[IFFlowInstrumentationUtil] The requestId is not a valid UUID, stop %s", v57, 0xCu);
      sub_9964(v58);

      goto LABEL_26;
    }
  }

  else
  {
    v115 = sub_6D03C();
    v52 = sub_6D46C();
    if (os_log_type_enabled(v115, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v116 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_1076C(0xD000000000000066, 0x800000000006F620, &v116);
      _os_log_impl(&dword_0, v115, v52, "[IFFlowInstrumentationUtil] The plannerTraceId is nil or not a valid UUID, stopping %s", v53, 0xCu);
      sub_9964(v54);

LABEL_26:

      return;
    }
  }

LABEL_29:
  v66 = v115;
}

void sub_4FEAC(NSObject *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v11 = v10;
  v90 = a5;
  v91 = a6;
  v92 = a3;
  v93 = a4;
  v94 = a1;
  v89 = a10;
  v85 = a9;
  v15 = sub_5708(&qword_81E48, &qword_70E70);
  __chkstk_darwin(v15 - 8);
  v17 = &v80[-v16];
  v18 = sub_6BF0C();
  v87 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v80[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v88 = &v80[-v22];
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v23 = sub_6D04C();
  sub_5CE4(v23, qword_839A0);
  v24 = sub_6D03C();
  v25 = sub_6D44C();
  v26 = os_log_type_enabled(v24, v25);
  v84 = v21;
  v86 = v17;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = v18;
    v29 = a7;
    v30 = a8;
    v31 = v11;
    v32 = swift_slowAlloc();
    v95 = v32;
    *v27 = 136315138;
    *(v27 + 4) = sub_1076C(0xD000000000000068, 0x800000000006F5B0, &v95);
    _os_log_impl(&dword_0, v24, v25, "[IFFlowInstrumentationUtil] Logging Request fall back to SiriX in %s", v27, 0xCu);
    sub_9964(v32);
    v11 = v31;
    a8 = v30;
    a7 = v29;
    v18 = v28;
  }

  if (a2 && (v33 = *(v11 + 24), (v34 = sub_6CF0C()) != 0))
  {
    v94 = v34;
    v35 = sub_6CF0C();
    if (v35)
    {
      v36 = v35;
      v37 = sub_6CEFC();
      if (v37)
      {
        v38 = v37;
        v39 = [v37 eventMetadata];
        if (v39)
        {

          v93 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowRequestFailed) init];
          if (v93)
          {
            v92 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowRequestContext) init];
            if (v92)
            {
              v40 = v86;
              sub_526E4(v85, v86);
              v41 = v87;
              if ((*(v87 + 48))(v40, 1, v18) == 1)
              {
                sub_5E20(v40, &qword_81E48, &qword_70E70);
                v42 = sub_6D03C();
                v43 = sub_6D44C();
                if (os_log_type_enabled(v42, v43))
                {
                  v44 = swift_slowAlloc();
                  *v44 = 0;
                  _os_log_impl(&dword_0, v42, v43, "[IFFlowInstrumentationUtil] Logging failure with unknown reason", v44, 2u);
                }

                [v93 setReason:0];
                v45 = v92;
              }

              else
              {
                v85 = v33;
                v90 = v38;
                v91 = v11;
                v61 = *(v41 + 32);
                v62 = v41;
                v63 = v88;
                v61(v88, v40, v18);
                v64 = sub_508F8();
                v65 = v84;
                (*(v62 + 16))(v84, v63, v18);
                v66 = sub_6D03C();
                v67 = sub_6D44C();
                if (os_log_type_enabled(v66, v67))
                {
                  v68 = swift_slowAlloc();
                  LODWORD(v86) = v64;
                  v69 = v68;
                  v70 = swift_slowAlloc();
                  v83 = a8;
                  v71 = v70;
                  v95 = v70;
                  *v69 = 67109378;
                  *(v69 + 4) = v86;
                  *(v69 + 8) = 2080;
                  sub_52754();
                  v81 = v67;
                  v72 = sub_6D24C();
                  v82 = a7;
                  v74 = v73;
                  v75 = *(v62 + 8);
                  v75(v65, v18);
                  v76 = sub_1076C(v72, v74, &v95);

                  *(v69 + 10) = v76;
                  _os_log_impl(&dword_0, v66, v81, "[IFFlowInstrumentationUtil] Found schema failure reason %d for failure %s", v69, 0x12u);
                  sub_9964(v71);
                  a8 = v83;

                  v64 = v86;
                }

                else
                {

                  v75 = *(v62 + 8);
                  v75(v65, v18);
                }

                v45 = v92;
                [v93 setReason:v64];
                v75(v88, v18);
                v38 = v90;
                v11 = v91;
              }

              [v93 setIsSiriXFallback:v89 & 1];
              if (a8)
              {
                v77 = sub_6CF0C();
                if (v77)
                {
                  v78 = v77;
                  [v45 setTrpId:v77];
                }
              }

              v79 = v93;
              [v45 setFailed:v93];
              [v45 setTraceId:v94];
              [v45 setSubRequestId:v36];
              [v38 setIntelligenceFlowRequestContext:v45];
              [*(v11 + 16) emitMessage:v38];

              return;
            }
          }

          v53 = sub_6D03C();
          v57 = sub_6D46C();
          if (os_log_type_enabled(v53, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v95 = v59;
            *v58 = 136315138;
            *(v58 + 4) = sub_1076C(0xD000000000000068, 0x800000000006F5B0, &v95);
            _os_log_impl(&dword_0, v53, v57, "[IFFlowInstrumentationUtil] Could not build schema events for %s. This should never occur", v58, 0xCu);
            sub_9964(v59);

            goto LABEL_27;
          }

LABEL_30:
          goto LABEL_31;
        }
      }

      v53 = sub_6D03C();
      v54 = sub_6D46C();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v95 = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_1076C(0xD000000000000068, 0x800000000006F5B0, &v95);
        _os_log_impl(&dword_0, v53, v54, "[IFFlowInstrumentationUtil] Could not build wrapper or eventMetadata in %s", v55, 0xCu);
        sub_9964(v56);

LABEL_27:

        goto LABEL_28;
      }

      goto LABEL_30;
    }

    v49 = sub_6D03C();
    v50 = sub_6D46C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v95 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_1076C(0xD000000000000068, 0x800000000006F5B0, &v95);
      _os_log_impl(&dword_0, v49, v50, "[IFFlowInstrumentationUtil] The requestId is not a valid UUID, stop %s", v51, 0xCu);
      sub_9964(v52);

      goto LABEL_28;
    }
  }

  else
  {
    v94 = sub_6D03C();
    v46 = sub_6D46C();
    if (os_log_type_enabled(v94, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v95 = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_1076C(0xD000000000000068, 0x800000000006F5B0, &v95);
      _os_log_impl(&dword_0, v94, v46, "[IFFlowInstrumentationUtil] The plannerTraceId is nil or not a valid UUID, stopping %s", v47, 0xCu);
      sub_9964(v48);

LABEL_28:

      return;
    }
  }

LABEL_31:
  v60 = v94;
}

uint64_t sub_508F8()
{
  v1 = v0;
  v2 = sub_6BF0C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for ActionFailure.Failure.developerDefinedError(_:))
  {
    v7 = 16;
  }

  else if (v6 == enum case for ActionFailure.Failure.unableToHandleRequest(_:))
  {
    v7 = 20;
  }

  else
  {
    if (v6 == enum case for ActionFailure.Failure.preflightCheckFailure(_:))
    {
      return 1;
    }

    if (v6 == enum case for ActionFailure.Failure.preciseLocationDisabled(_:))
    {
      return 2;
    }

    if (v6 == enum case for ActionFailure.Failure.locationDisabled(_:))
    {
      return 3;
    }

    if (v6 == enum case for ActionFailure.Failure.wifiDisabled(_:))
    {
      return 4;
    }

    if (v6 == enum case for ActionFailure.Failure.bluetoothDisabled(_:))
    {
      return 5;
    }

    if (v6 == enum case for ActionFailure.Failure.networkFailure(_:))
    {
      return 6;
    }

    if (v6 == enum case for ActionFailure.Failure.partialFailure(_:))
    {
      return 7;
    }

    if (v6 == enum case for ActionFailure.Failure.unsupportedOnDevice(_:))
    {
      return 8;
    }

    if (v6 == enum case for ActionFailure.Failure.featureCurrentlyRestricted(_:))
    {
      return 9;
    }

    if (v6 == enum case for ActionFailure.Failure.entityNotFound(_:))
    {
      return 10;
    }

    if (v6 == enum case for ActionFailure.Failure.actionNotAllowed(_:))
    {
      return 11;
    }

    if (v6 == enum case for ActionFailure.Failure.valueDisambiguationRejected(_:))
    {
      return 12;
    }

    if (v6 == enum case for ActionFailure.Failure.noMatchingTool(_:))
    {
      return 13;
    }

    if (v6 == enum case for ActionFailure.Failure.unableToUndo(_:))
    {
      return 14;
    }

    if (v6 == enum case for ActionFailure.Failure.actionCanceled(_:))
    {
      return 15;
    }

    if (v6 == enum case for ActionFailure.Failure.unableToCancel(_:))
    {
      return 17;
    }

    if (v6 == enum case for ActionFailure.Failure.searchSucceededNoMatchingTool(_:))
    {
      return 18;
    }

    if (v6 == enum case for ActionFailure.Failure.valueSelectionRequired(_:))
    {
      return 19;
    }

    v7 = 0;
  }

  (*(v3 + 8))(v5, v2);
  return v7;
}

void sub_50C28(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_5708(&unk_82030, &qword_70370);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_6AE9C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6AE5C();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_5E20(v10, &unk_82030, &qword_70370);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v15 = sub_6D04C();
    sub_5CE4(v15, qword_839A0);

    v16 = sub_6D03C();
    v17 = sub_6D46C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1076C(a2, a3, aBlock);
      _os_log_impl(&dword_0, v16, v17, "[IFFlowInstrumentationUtil] Unable to apply log redaction due to invalid requestId %s", v18, 0xCu);
      sub_9964(v19);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v20 = sub_6D04C();
    sub_5CE4(v20, qword_839A0);

    v21 = sub_6D03C();
    v22 = sub_6D45C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = a2;
      v40 = v24;
      aBlock[0] = v24;
      *v23 = 136315394;
      v25 = sub_6D48C();
      v27 = sub_1076C(v25, v26, aBlock);
      v38 = v21;
      v28 = v14;
      v29 = a1;
      v30 = v27;

      *(v23 + 4) = v30;
      a1 = v29;
      v14 = v28;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1076C(v39, a3, aBlock);
      v31 = v38;
      _os_log_impl(&dword_0, v38, v22, "[IFFlowInstrumentationUtil] Apply redaction tag with sensitive state %s for requestId %s", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v32 = objc_allocWithZone(SiriAnalyticsTag);
    isa = sub_6AE7C().super.isa;
    v34 = [v32 initWithConditionType:a1 requestId:isa joined:1];

    v35 = *(v4 + 32);
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_51118;
    aBlock[3] = &unk_7F4B8;
    v36 = _Block_copy(aBlock);
    [v35 createTag:v34 completion:v36];
    _Block_release(v36);

    (*(v12 + 8))(v14, v11);
  }
}

void sub_51118(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_51190(char *a1, uint64_t a2, unint64_t a3)
{
  v126 = a3;
  v125 = a2;
  v130 = a1;
  v3 = sub_5708(&qword_814F0, &qword_71350);
  __chkstk_darwin(v3 - 8);
  v124 = &v117 - v4;
  v5 = sub_6CD0C();
  v128 = *(v5 - 8);
  v129 = v5;
  __chkstk_darwin(v5);
  v127 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6CD2C();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v117 - v12;
  v14 = sub_6C35C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_6C4EC();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v119 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v123 = &v117 - v23;
  v24 = __chkstk_darwin(v22);
  v120 = &v117 - v25;
  v26 = __chkstk_darwin(v24);
  v122 = &v117 - v27;
  v28 = __chkstk_darwin(v26);
  v121 = &v117 - v29;
  __chkstk_darwin(v28);
  v31 = &v117 - v30;
  (*(v15 + 16))(v17, v130, v14);
  if ((*(v15 + 88))(v17, v14) != enum case for MessagePayload.systemResponse(_:))
  {
    return (*(v15 + 8))(v17, v14);
  }

  (*(v15 + 96))(v17, v14);
  (*(v19 + 32))(v31, v17, v18);
  sub_4458(v31, v13);
  (*(v8 + 16))(v11, v13, v7);
  v32 = (*(v8 + 88))(v11, v7);
  v33 = v8;
  if (v32 == enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:))
  {
    (*(v8 + 96))(v11, v7);
    (*(v128 + 32))(v127, v11, v129);
    v34 = v124;
    sub_6CCFC();
    v35 = sub_6CD3C();
    v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
    sub_5E20(v34, &qword_814F0, &qword_71350);
    v117 = v33;
    v118 = v13;
    if (v36 == 1)
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v37 = sub_6D04C();
      sub_5CE4(v37, qword_839A0);
      v38 = v122;
      (*(v19 + 16))(v122, v31, v18);
      v39 = sub_6D03C();
      v40 = v19;
      v41 = sub_6D45C();
      if (os_log_type_enabled(v39, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v124 = v7;
        v44 = v31;
        v45 = v43;
        v131 = v43;
        *v42 = 136315138;
        v46 = sub_4B728();
        v47 = v38;
        v48 = v18;
        v50 = v49;
        v51 = *(v40 + 8);
        v51(v47, v48);
        v52 = sub_1076C(v46, v50, &v131);
        v18 = v48;

        *(v42 + 4) = v52;
        _os_log_impl(&dword_0, v39, v41, "[IFFlowInstrumentationUtil] Attempting to apply redaction tag for inferred toolId = %s which is not a Montara use-case but tagging it with PQA to ensure redaction", v42, 0xCu);
        sub_9964(v45);
        v31 = v44;
        v7 = v124;
      }

      else
      {

        v51 = *(v40 + 8);
        v51(v38, v18);
      }

      v99 = 10;
    }

    else
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v68 = sub_6D04C();
      sub_5CE4(v68, qword_839A0);
      v69 = *(v19 + 16);
      v70 = v121;
      v130 = v31;
      v69(v121, v31, v18);
      v71 = sub_6D03C();
      v72 = sub_6D45C();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = v19;
        v74 = swift_slowAlloc();
        v75 = v18;
        v76 = swift_slowAlloc();
        v131 = v76;
        *v74 = 136315138;
        v77 = sub_4B728();
        v78 = v70;
        v79 = v7;
        v81 = v80;
        v51 = *(v73 + 8);
        v51(v78, v75);
        v82 = sub_1076C(v77, v81, &v131);
        v7 = v79;

        *(v74 + 4) = v82;
        _os_log_impl(&dword_0, v71, v72, "[IFFlowInstrumentationUtil] Attempting to apply redaction tag for inferred toolId = %s which is a Montara use-case", v74, 0xCu);
        sub_9964(v76);
        v18 = v75;
      }

      else
      {

        v51 = *(v19 + 8);
        v51(v70, v18);
      }

      v99 = 9;
      v31 = v130;
    }

    sub_50C28(v99, v125, v126);
    (*(v128 + 8))(v127, v129);
    (*(v117 + 8))(v118, v7);
    return (v51)(v31, v18);
  }

  v54 = v123;
  if (v32 == enum case for RequestSummary.ExecutionSource.siriX(_:))
  {
    goto LABEL_10;
  }

  if (v32 == enum case for RequestSummary.ExecutionSource.searchTool(_:))
  {
    v118 = v13;
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v117 = v33;
    v124 = v7;
    v83 = sub_6D04C();
    sub_5CE4(v83, qword_839A0);
    v84 = *(v19 + 16);
    v85 = v120;
    v130 = v31;
    v84(v120, v31, v18);
    v86 = sub_6D03C();
    v87 = v19;
    v88 = sub_6D45C();
    if (os_log_type_enabled(v86, v88))
    {
      v89 = v18;
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v131 = v91;
      *v90 = 136315138;
      v92 = sub_4B728();
      v93 = v85;
      v95 = v94;
      v96 = *(v87 + 8);
      v96(v93, v89);
      v97 = sub_1076C(v92, v95, &v131);

      *(v90 + 4) = v97;
      _os_log_impl(&dword_0, v86, v88, "[IFFlowInstrumentationUtil] Attempting to apply redaction tag for inferred toolId = %s which is a PQA use-case", v90, 0xCu);
      sub_9964(v91);

      v18 = v89;
    }

    else
    {

      v96 = *(v87 + 8);
      v96(v85, v18);
    }

    sub_50C28(10, v125, v126);
    (*(v117 + 8))(v118, v124);
    return (v96)(v130, v18);
  }

  else
  {
    if (v32 == enum case for RequestSummary.ExecutionSource.unknown(_:))
    {
LABEL_10:
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v55 = sub_6D04C();
      sub_5CE4(v55, qword_839A0);
      (*(v19 + 16))(v54, v31, v18);
      v56 = sub_6D03C();
      v57 = v31;
      v58 = sub_6D45C();
      if (os_log_type_enabled(v56, v58))
      {
        v59 = swift_slowAlloc();
        v130 = v57;
        v60 = v54;
        v61 = v59;
        v62 = v18;
        v63 = swift_slowAlloc();
        v131 = v63;
        *v61 = 136315138;
        v129 = sub_4B728();
        v124 = v7;
        v65 = v64;
        v118 = v13;
        v66 = *(v19 + 8);
        v66(v60, v62);
        v67 = sub_1076C(v129, v65, &v131);

        *(v61 + 4) = v67;
        _os_log_impl(&dword_0, v56, v58, "[IFFlowInstrumentationUtil] Not attempting to apply redaction tag for inferred toolId = %s", v61, 0xCu);
        sub_9964(v63);

        (*(v33 + 8))(v118, v124);
        return (v66)(v130, v62);
      }

      else
      {

        v98 = *(v19 + 8);
        v98(v54, v18);
        (*(v33 + 8))(v13, v7);
        return (v98)(v57, v18);
      }
    }

    v129 = v11;
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v124 = v7;
    v117 = v33;
    v118 = v13;
    v100 = sub_6D04C();
    sub_5CE4(v100, qword_839A0);
    v101 = v119;
    (*(v19 + 16))(v119, v31, v18);
    v102 = sub_6D03C();
    v103 = v19;
    v104 = sub_6D45C();
    if (os_log_type_enabled(v102, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v130 = v31;
      v131 = v106;
      v107 = v106;
      *v105 = 136315138;
      v108 = sub_4B728();
      v109 = v101;
      v110 = v18;
      v112 = v111;
      v113 = *(v103 + 8);
      v113(v109, v110);
      v114 = sub_1076C(v108, v112, &v131);
      v18 = v110;

      *(v105 + 4) = v114;
      _os_log_impl(&dword_0, v102, v104, "[IFFlowInstrumentationUtil] Attempting to apply redaction tag for inferred toolId = %s which is an unknown use-case but tagging it with PQA to ensure redaction", v105, 0xCu);
      sub_9964(v107);
      v31 = v130;
    }

    else
    {

      v113 = *(v103 + 8);
      v113(v101, v18);
    }

    sub_50C28(10, v125, v126);
    v115 = *(v117 + 8);
    v116 = v124;
    v115(v118, v124);
    v113(v31, v18);
    return (v115)(v129, v116);
  }
}

uint64_t sub_52014()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_52080(uint64_t a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v9 = sub_6D04C();
  sub_5CE4(v9, qword_839A0);
  v10 = sub_6D03C();
  v11 = sub_6D44C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v7;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1076C(0xD000000000000050, 0x800000000006F530, &v40);
    _os_log_impl(&dword_0, v10, v11, "[IFFlowInstrumentationUtil] Logging Request started in %s", v13, 0xCu);
    sub_9964(v14);

    v7 = v12;
  }

  if (!a2 || (v15 = sub_6CF0C()) == 0)
  {
    v39 = sub_6D03C();
    v25 = sub_6D46C();
    if (os_log_type_enabled(v39, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1076C(0xD000000000000050, 0x800000000006F530, &v40);
      _os_log_impl(&dword_0, v39, v25, "[IFFlowInstrumentationUtil] The plannerTraceId is nil or not a valid UUID, stopping %s", v26, 0xCu);
      sub_9964(v27);

LABEL_25:

      return;
    }

LABEL_29:
    v24 = v39;
    goto LABEL_30;
  }

  v39 = v15;
  v16 = sub_6CF0C();
  if (!v16)
  {
    v17 = sub_6D03C();
    v28 = sub_6D46C();
    if (os_log_type_enabled(v17, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1076C(0xD000000000000050, 0x800000000006F530, &v40);
      _os_log_impl(&dword_0, v17, v28, "[IFFlowInstrumentationUtil] The requestId is not a valid UUID, stop %s", v29, 0xCu);
      sub_9964(v30);

LABEL_24:

      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v17 = v16;
  v18 = sub_6CEFC();
  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = v18;
  v20 = [v18 eventMetadata];
  if (!v20)
  {

LABEL_18:
    v31 = sub_6D03C();
    v32 = sub_6D46C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1076C(0xD000000000000050, 0x800000000006F530, &v40);
      _os_log_impl(&dword_0, v31, v32, "[IFFlowInstrumentationUtil] Could not build wrapper or eventMetadata in %s", v33, 0xCu);
      sub_9964(v34);

LABEL_23:

      goto LABEL_24;
    }

    goto LABEL_27;
  }

  v21 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowRequestStarted) init];
  if (!v21)
  {
LABEL_21:
    v31 = sub_6D03C();
    v35 = sub_6D46C();
    if (os_log_type_enabled(v31, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v40 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1076C(0xD000000000000050, 0x800000000006F530, &v40);
      _os_log_impl(&dword_0, v31, v35, "[IFFlowInstrumentationUtil] Could not create schema events in %s. This should never occur", v36, 0xCu);
      sub_9964(v37);

      goto LABEL_23;
    }

LABEL_27:
LABEL_28:

    goto LABEL_29;
  }

  v22 = v21;
  v23 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowRequestContext) init];
  if (!v23)
  {

    goto LABEL_21;
  }

  v38 = v23;
  [v22 setExists:1];
  [v38 setStartedOrChanged:v22];
  [v38 setTraceId:v39];
  [v38 setSubRequestId:v17];
  [v19 setIntelligenceFlowRequestContext:v38];
  [*(v7 + 16) emitMessage:v19];

  v24 = v38;
LABEL_30:
}

uint64_t sub_526CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_526E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81E48, &qword_70E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_52754()
{
  result = qword_82040;
  if (!qword_82040)
  {
    sub_6BF0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_82040);
  }

  return result;
}

id sub_527AC()
{
  result = AFIsInternalInstall();
  if (result)
  {
    v1 = objc_allocWithZone(NSUserDefaults);
    v2 = sub_6D2BC();
    v3 = [v1 initWithSuiteName:v2];

    if (v3)
    {
      v4 = sub_6D2BC();
      v5 = [v3 objectForKey:v4];

      if (v5)
      {
        sub_6D51C();
        swift_unknownObjectRelease();
        sub_5E20(v8, &qword_819D8, &qword_70768);
        v6 = sub_6D2BC();
        v7 = [v3 BOOLForKey:v6];

        return v7;
      }

      else
      {

        memset(v8, 0, sizeof(v8));
        sub_5E20(v8, &qword_819D8, &qword_70768);
        return &dword_0 + 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_52924(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_6C83C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_529E4, 0, 0);
}

uint64_t sub_529E4()
{
  v42 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v11 = sub_6D04C();
    sub_5CE4(v11, qword_839A0);
    v12 = sub_6D03C();
    v13 = sub_6D45C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "IFFlow scope has ended, no IF server messages are passed thru", v14, 2u);
    }

    goto LABEL_22;
  }

  v2 = Strong;
  sub_5708(&qword_816B8, &qword_70210);
  v3 = swift_task_alloc();
  v4 = sub_6CFFC();
  *v3 = v4;
  v5 = sub_5471C(&qword_82128, 255, &type metadata accessor for IFSessionServiceClient, &protocol conformance descriptor for IFSessionServiceClient);
  v3[1] = v5;
  swift_getKeyPath();

  v6 = swift_task_alloc();
  *v6 = v4;
  v6[1] = v5;
  swift_getKeyPath();

  v0[6] = v2;

  sub_6BC7C();

  v7 = sub_6CDBC();
  v9 = v8;

  if (v9)
  {
    if (sub_6C7FC() == v7 && v9 == v10)
    {

LABEL_15:

      v19 = 1;
      goto LABEL_24;
    }

    v18 = sub_6D63C();

    if (v18)
    {
      goto LABEL_15;
    }

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v21 = v0[10];
    v20 = v0[11];
    v22 = v0[9];
    v23 = v0[7];
    v24 = sub_6D04C();
    sub_5CE4(v24, qword_839A0);
    (*(v21 + 16))(v20, v23, v22);

    v25 = sub_6D03C();
    v26 = sub_6D45C();

    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[10];
    v28 = v0[11];
    v30 = v0[9];
    if (!v27)
    {

      (*(v29 + 8))(v28, v30);
      goto LABEL_23;
    }

    v40 = v26;
    v31 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v31 = 136315394;
    v32 = sub_6C7FC();
    log = v25;
    v34 = v33;
    (*(v29 + 8))(v28, v30);
    v35 = sub_1076C(v32, v34, &v41);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    v36 = sub_1076C(v7, v9, &v41);

    *(v31 + 14) = v36;
    v12 = log;
    _os_log_impl(&dword_0, log, v40, "IFFlow received a message with foreign clientRequestId of %s. IntelligenceFlowTraceId: %s", v31, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v15 = sub_6D04C();
    sub_5CE4(v15, qword_839A0);
    v12 = sub_6D03C();
    v16 = sub_6D45C();
    if (!os_log_type_enabled(v12, v16))
    {
      goto LABEL_21;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v12, v16, "IFFlow does not have intelligenceFlowTraceId, waiting for another message", v17, 2u);
  }

LABEL_21:

LABEL_22:

LABEL_23:
  v19 = 0;
LABEL_24:

  v37 = v0[1];

  return v37(v19);
}

uint64_t sub_52F58@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v105 = a1;
  v106 = a2;
  v95 = sub_6B60C();
  v94 = *(v95 - 8);
  v3 = __chkstk_darwin(v95);
  v93 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v100 = &v93 - v5;
  v103 = sub_6B7EC();
  v102 = *(v103 - 8);
  v6 = __chkstk_darwin(v103);
  v99 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v101 = &v93 - v9;
  __chkstk_darwin(v8);
  v104 = &v93 - v10;
  v98 = sub_6C9FC();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6B3DC();
  v96 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_6B7FC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_99FC((v2 + 96), *(v2 + 120));
  if (sub_6CEDC() & 1) != 0 && (sub_99FC((v2 + 96), *(v2 + 120)), (sub_6CECC()))
  {
    v20 = v2;
    (*(v17 + 16))(v19, v105, v16);
    v21 = (*(v17 + 88))(v19, v16);
    if (v21 == enum case for Parse.directInvocation(_:))
    {
      (*(v17 + 96))(v19, v16);
      v22 = v102;
      v23 = v104;
      v24 = v103;
      (*(v102 + 32))(v104, v19, v103);
      v25 = *(v22 + 16);
      v26 = v101;
      v25(v101, v23, v24);
      v27 = sub_54430(v26);
      if (v27 == 2)
      {
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v28 = sub_6D04C();
        sub_5CE4(v28, qword_839A0);
        v29 = v99;
        v25(v99, v23, v24);
        v30 = sub_6D03C();
        v31 = sub_6D45C();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *&v112 = v33;
          *v32 = 136315138;
          v25(v26, v29, v24);
          v34 = sub_6D2EC();
          v36 = v35;
          v37 = *(v22 + 8);
          v37(v29, v24);
          v38 = sub_1076C(v34, v36, &v112);

          *(v32 + 4) = v38;
          _os_log_impl(&dword_0, v30, v31, "IFFlowPlugin does not support direct invocation %s. Returning .noFlow.", v32, 0xCu);
          sub_9964(v33);
          v23 = v104;
        }

        else
        {

          v37 = *(v22 + 8);
          v37(v29, v24);
        }

        sub_6B18C();
        return (v37)(v23, v24);
      }

      v47 = v27;
      (*(v22 + 8))(v23, v24);
      goto LABEL_19;
    }

    if (v21 == enum case for Parse.nlRouter(_:))
    {
      (*(v17 + 96))(v19, v16);
      v44 = v96;
      (*(v96 + 32))(v15, v19, v13);
      sub_6B3BC();
      (*(v44 + 8))(v15, v13);
      v45 = v97;
      v46 = v98;
      v47 = (*(v97 + 88))(v12, v98) == enum case for NLRoutingDecisionMessage.RoutingDecision.ajax(_:);
      (*(v45 + 8))(v12, v46);
LABEL_19:
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v48 = sub_6D04C();
      sub_5CE4(v48, qword_839A0);
      v49 = sub_6D03C();
      v50 = sub_6D45C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v112 = v52;
        *v51 = 136315138;
        LOBYTE(v111[0]) = v47;
        v53 = sub_6D2EC();
        v55 = sub_1076C(v53, v54, &v112);

        *(v51 + 4) = v55;
        _os_log_impl(&dword_0, v49, v50, "IFFlowPlugin building IFFlow with routing mode %s", v51, 0xCu);
        sub_9964(v52);
      }

      v56 = sub_6CFFC();
      v57 = sub_6CFEC();
      v105 = v56;
      sub_9878(v20 + 56, &v112);
      sub_9878(v20 + 16, v111);
      type metadata accessor for IFFlowInstrumentationUtil();
      v58 = swift_allocObject();
      v59 = objc_opt_self();
      v58[2] = [v59 sharedStream];
      sub_6CF2C();
      swift_allocObject();
      v58[3] = sub_6CF1C();
      v58[4] = [v59 sharedAnalytics];
      v60 = sub_6B53C();
      swift_allocObject();
      v61 = sub_6B52C();
      v110[3] = v60;
      v110[4] = &protocol witness table for ResponseFactory;
      v110[0] = v61;
      v62 = [BiomeLibrary() Siri];
      swift_unknownObjectRelease();
      v63 = [v62 Orchestration];
      swift_unknownObjectRelease();
      v64 = [v63 RequestContext];
      swift_unknownObjectRelease();
      v65 = [v64 source];

      v109[3] = &type metadata for FeatureEnablementProvider;
      v109[4] = &off_7F140;
      v66 = sub_527AC();
      v104 = sub_5708(&qword_82110, &qword_710E0);
      v67 = swift_allocObject();
      v108 = v57;
      *(v67 + 200) = 0;
      *(v67 + 208) = 0;
      swift_getKeyPath();
      sub_5708(&qword_816B8, &qword_70210);
      swift_allocObject();

      *(v67 + 216) = sub_6BC8C();
      swift_getKeyPath();
      sub_5708(&qword_81D70, &qword_70D50);
      swift_allocObject();
      *(v67 + 224) = sub_6BC8C();
      *(v67 + 240) = 0;
      v68 = *(*v67 + 200);
      v69 = sub_5708(&qword_82118, &qword_71118);
      (*(*(v69 - 8) + 56))(v67 + v68, 1, 1, v69);
      sub_5708(&qword_82120, &qword_71120);
      swift_storeEnumTagMultiPayload();
      *(v67 + 232) = v57;
      *(v67 + 192) = v47;
      sub_9878(&v112, v67 + 16);
      sub_9878(v111, v67 + 56);
      sub_9878(v110, v67 + 96);
      *(v67 + 136) = v65;
      *(v67 + 144) = v58;
      sub_9878(v109, v67 + 152);
      v70 = v66 & 1;
      *(v67 + 193) = v70;

      v71 = v65;
      v72 = sub_6D03C();
      v73 = sub_6D45C();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 67109120;
        *(v74 + 4) = v70;
        _os_log_impl(&dword_0, v72, v73, "IFFlow is created with diagnostic errors visibility set to %{BOOL}d", v74, 8u);
      }

      swift_allocObject();
      swift_weakInit();
      sub_5471C(&qword_82128, 255, &type metadata accessor for IFSessionServiceClient, &protocol conformance descriptor for IFSessionServiceClient);

      sub_6CF5C();

      sub_9964(v111);
      sub_9964(&v112);
      sub_9964(v109);
      sub_9964(v110);

      *(v67 + 240) = v107;

      *&v112 = v67;
      sub_54764();
      sub_6B13C();
      sub_6B19C();
    }

    if (v21 == enum case for Parse.ifClientAction(_:))
    {
      (*(v17 + 96))(v19, v16);
      v75 = v94;
      v76 = v100;
      v77 = v95;
      v105 = *(v94 + 32);
      v105(v100, v19, v95);
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v78 = sub_6D04C();
      sub_5CE4(v78, qword_839A0);
      v79 = sub_6D03C();
      v80 = sub_6D45C();
      v81 = os_log_type_enabled(v79, v80);
      v82 = v93;
      if (v81)
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_0, v79, v80, "IFFlowPlugin returning ClientActionRoutingFlow", v83, 2u);
      }

      (*(v75 + 16))(v82, v76, v77);
      sub_9878(v20 + 56, &v112);
      sub_9878(v20 + 16, v111);
      v84 = v75;
      if (qword_812B0 != -1)
      {
        swift_once();
      }

      v85 = qword_839C8;
      type metadata accessor for IFClientActionRoutingFlow(0);
      v86 = swift_allocObject();
      v87 = OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow__currentRequest;
      swift_getKeyPath();
      sub_5708(&qword_816B8, &qword_70210);
      swift_allocObject();

      *(v86 + v87) = sub_6BC8C();
      v105((v86 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_clientActionParse), v82, v77);
      sub_1FD68(&v112, v86 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_deviceState);
      sub_1FD68(v111, v86 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_outputPublisher);
      *(v86 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_instrumentationUtil) = v85;
      v88 = (v86 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_errorGenerator);
      *v88 = &unk_70270;
      v88[1] = 0;
      *(v86 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state) = 0;
      *&v112 = v86;
      sub_5471C(&qword_81D98, 255, type metadata accessor for IFClientActionRoutingFlow, &unk_70198);
      sub_6B13C();
      sub_6B19C();

      return (*(v84 + 8))(v100, v77);
    }

    else
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v89 = sub_6D04C();
      sub_5CE4(v89, qword_839A0);
      v90 = sub_6D03C();
      v91 = sub_6D45C();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&dword_0, v90, v91, "IFFlowPlugin returning .noFlow", v92, 2u);
      }

      sub_6B18C();
      return (*(v17 + 8))(v19, v16);
    }
  }

  else
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v39 = sub_6D04C();
    sub_5CE4(v39, qword_839A0);
    v40 = sub_6D03C();
    v41 = sub_6D46C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "IFFlowPlugin was invoked on a device/locale where it is not supported/enabled.", v42, 2u);
    }

    return sub_6B18C();
  }
}

uint64_t sub_542BC()
{
  sub_9964(v0 + 2);
  sub_9964(v0 + 7);
  sub_9964(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_5434C@<X0>(void *a1@<X8>)
{
  v2 = swift_allocObject();
  sub_6B66C();
  sub_6B80C();
  v3 = sub_6CEBC();
  swift_allocObject();
  result = sub_6CEAC();
  v2[15] = v3;
  v2[16] = &protocol witness table for FeatureChecker;
  v2[12] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_54430(uint64_t a1)
{
  v3 = sub_6B7CC();
  v4 = v2;
  if (v3 == 0xD00000000000001FLL && 0x800000000006DF40 == v2 || (sub_6D63C() & 1) != 0 || v3 == 0xD000000000000035 && 0x800000000006DF60 == v4 || (sub_6D63C() & 1) != 0)
  {
    v5 = sub_6B7EC();
    (*(*(v5 - 8) + 8))(a1, v5);

    return 1;
  }

  if (v3 == 0xD00000000000001FLL && 0x800000000006DFA0 == v4)
  {

    v7 = sub_6B7EC();
    (*(*(v7 - 8) + 8))(a1, v7);
    return 1;
  }

  v8 = sub_6D63C();

  v9 = sub_6B7EC();
  (*(*(v9 - 8) + 8))(a1, v9);
  if (v8)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_545F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_6BC5C();
  *a1 = result;
  return result;
}

uint64_t sub_5464C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_54684(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_102E0;

  return sub_52924(a1, v1);
}

uint64_t sub_5471C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_54764()
{
  result = qword_82130;
  if (!qword_82130)
  {
    sub_29F8(&qword_82110, &qword_710E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_82130);
  }

  return result;
}

__n128 sub_547D8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *sub_547E4(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_6D1EC();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_27ED4(0, v9, 0);
  v10 = v21;
  v16 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v12 = *i;
    v20[0] = *(i - 1);
    v20[1] = v12;

    v18(v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v10;
    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      sub_27ED4((v13 > 1), v14 + 1, 1);
      v10 = v21;
    }

    v10[2] = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_549B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char **a5@<X8>)
{
  v171 = a4;
  v174 = a3;
  v168 = a2;
  v187 = a5;
  v180 = *v5;
  v155 = sub_6C4EC();
  v7 = *(v155 - 8);
  v8 = __chkstk_darwin(v155);
  v150 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v153 = &v148 - v10;
  v175 = sub_6C35C();
  v173 = *(v175 - 8);
  v11 = __chkstk_darwin(v175);
  v151 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v156 = &v148 - v14;
  __chkstk_darwin(v13);
  v172 = &v148 - v15;
  v16 = sub_5708(&qword_81770, &unk_70F70);
  __chkstk_darwin(v16 - 8);
  v167 = &v148 - v17;
  v162 = sub_6BEEC();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v166 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_6C86C();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v165 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_6AE9C();
  v20 = *(v181 - 8);
  __chkstk_darwin(v181);
  v169 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_5708(&unk_82030, &qword_70370);
  __chkstk_darwin(v22 - 8);
  v159 = &v148 - v23;
  v164 = sub_6C89C();
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v160 = &v148 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_6C33C();
  v170 = *(v182 - 8);
  v25 = __chkstk_darwin(v182);
  v152 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v177 = &v148 - v27;
  v28 = sub_6D1EC();
  v184 = *(v28 - 8);
  v185 = v28;
  __chkstk_darwin(v28);
  v183 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_6D20C();
  v178 = *(v30 - 8);
  v179 = v30;
  v31 = __chkstk_darwin(v30);
  v176 = &v148 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v186 = (&v148 - v33);
  v34 = sub_5708(&qword_821D8, &qword_71260);
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v38 = &v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v40 = &v148 - v39;
  v41 = *(v35 + 16);
  v41(&v148 - v39, a1, v34);
  v42 = (*(v35 + 88))(v40, v34);
  if (v42 == enum case for PromptResult.answered<A>(_:))
  {
    v154 = v20;
    v149 = v7;
    (*(v35 + 96))(v40, v34);
    v43 = *v40;
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v44 = sub_6D04C();
    sub_5CE4(v44, qword_839A0);
    v45 = sub_6D03C();
    v46 = sub_6D45C();
    v47 = os_log_type_enabled(v45, v46);
    v49 = v184;
    v48 = v185;
    v50 = v183;
    if (v47)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v45, v46, "IFFlow prompt for image picker returning with answer. Returning to IF", v51, 2u);
    }

    v52 = swift_allocObject();
    v52[2] = 0xD000000000000019;
    v52[3] = 0x800000000006F8A0;
    v52[4] = 0x746E457465737341;
    v52[5] = 0xEB00000000797469;
    v53 = v186;
    *v186 = v52;
    v55 = v178;
    v54 = v179;
    (*(v178 + 104))(v53, enum case for TypeIdentifier.custom(_:), v179);
    (*(v55 + 16))(v176, v53, v54);
    v56 = *(v43 + 2);
    if (v56)
    {
      v192 = _swiftEmptyArrayStorage;
      sub_27D80(0, v56, 0);
      v57 = v192;
      v58 = sub_1FE68();
      v152 = v43;
      v59 = (v43 + 40);
      do
      {
        v60 = *v59;
        v193 = *(v59 - 1);
        v194 = v60;
        v190 = 0x3130302F304C2FLL;
        v191 = 0xE700000000000000;
        v188 = 0;
        v189 = 0xE000000000000000;
        v146 = v58;
        v147 = v58;
        v145[0] = &type metadata for String;
        v145[1] = v58;
        v61 = sub_6D4EC();
        v63 = v62;
        v192 = v57;
        v65 = v57[2];
        v64 = v57[3];
        if (v65 >= v64 >> 1)
        {
          sub_27D80((v64 > 1), v65 + 1, 1);
          v57 = v192;
        }

        v57[2] = v65 + 1;
        v66 = &v57[2 * v65];
        v66[4] = v61;
        v66[5] = v63;
        v59 += 2;
        --v56;
      }

      while (v56);

      v49 = v184;
      v48 = v185;
      v50 = v183;
    }

    else
    {

      v57 = _swiftEmptyArrayStorage;
    }

    sub_6D15C();
    v81 = swift_allocBox();
    __chkstk_darwin(v81);
    v146 = v186;
    sub_547E4(sub_56E84, v145, v57);

    sub_6D13C();
    *v50 = v81;
    (*(v49 + 104))(v50, enum case for TypedValue.collection(_:), v48);
    v82 = v49;
    v83 = v154;
    (*(v154 + 56))(v159, 1, 1, v181);
    v84 = v50;
    v85 = v169;
    sub_6C80C();
    v86 = v165;
    (*(v82 + 16))(v165, v84, v48);
    (*(v157 + 104))(v86, enum case for SystemPromptResolution.UserAction.parameterValueSelected(_:), v158);
    (*(v161 + 16))(v166, v168, v162);
    v87 = enum case for SystemPromptResolution.ResolutionInput.touch(_:);
    v88 = sub_6C85C();
    v89 = *(v88 - 8);
    v90 = v167;
    (*(v89 + 104))(v167, v87, v88);
    (*(v89 + 56))(v90, 0, 1, v88);
    v91 = v160;
    sub_6C87C();
    v92 = v177;
    sub_A17C(v91, v171);
    (*(v163 + 8))(v91, v164);
    v176 = *(sub_5708(&qword_81788, &qword_70380) + 48);
    sub_6C82C();
    v93 = v170;
    v94 = v172;
    (*(v170 + 16))(v172, v92, v182);
    v95 = v173;
    v96 = v175;
    (*(v173 + 104))(v94, enum case for MessagePayload.request(_:), v175);
    sub_30BF8(v85, v94);
    v97 = *(v95 + 8);
    v97(v94, v96);
    (*(v83 + 8))(v85, v181);
    v98 = v156;
    sub_6C81C();
    if ((*(v95 + 88))(v98, v96) == enum case for MessagePayload.systemResponse(_:))
    {
      (*(v95 + 96))(v98, v96);
      v99 = v149;
      v100 = v153;
      v101 = v155;
      (*(v149 + 32))(v153, v98, v155);
      v102 = v187;
      v103 = v176;
      sub_4458(v100, &v176[v187]);
      (*(v99 + 8))(v100, v101);
      (*(v93 + 8))(v177, v182);
      (*(v184 + 8))(v183, v185);
      v104 = 0;
      v105 = v180;
      v106 = v102;
      v107 = v103;
    }

    else
    {
      (*(v93 + 8))(v177, v182);
      (*(v184 + 8))(v183, v185);
      v97(v98, v96);
      v104 = 1;
      v105 = v180;
      v106 = v187;
      v107 = v176;
    }

    v108 = sub_6CD2C();
    (*(*(v108 - 8) + 56))(&v107[v106], v104, 1, v108);
    type metadata accessor for IFFlow.State(0, *(v105 + 80), *(v105 + 88), v109);
    swift_storeEnumTagMultiPayload();
    return (*(v178 + 8))(v186, v179);
  }

  else if (v42 == enum case for PromptResult.error<A>(_:))
  {
    (*(v35 + 96))(v40, v34);
    v67 = *v40;
    v68 = v40[8];
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v69 = sub_6D04C();
    sub_5CE4(v69, qword_839A0);
    swift_errorRetain();
    v70 = sub_6D03C();
    v71 = sub_6D46C();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138412290;
      swift_errorRetain();
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v72 + 4) = v74;
      *v73 = v74;
      _os_log_impl(&dword_0, v70, v71, "Error occurred during PromptForPhotoPicker with error %@", v72, 0xCu);
      sub_56DDC(v73);
    }

    v75 = v187;
    *v187 = v67;
    *(v75 + 8) = v68;
    type metadata accessor for IFFlowError(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for IFFlow.State(0, *(v180 + 80), *(v180 + 88), v76);
    return swift_storeEnumTagMultiPayload();
  }

  else if (v42 == enum case for PromptResult.cancelled<A>(_:) || v42 == enum case for PromptResult.unanswered<A>(_:))
  {
    v149 = v7;
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v110 = sub_6D04C();
    sub_5CE4(v110, qword_839A0);
    v41(v38, a1, v34);
    v111 = sub_6D03C();
    v112 = sub_6D45C();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v193 = v114;
      *v113 = 136315138;
      sub_56B78();
      v115 = sub_6D61C();
      v116 = v20;
      v118 = v117;
      (*(v35 + 8))(v38, v34);
      v119 = sub_1076C(v115, v118, &v193);
      v20 = v116;

      *(v113 + 4) = v119;
      _os_log_impl(&dword_0, v111, v112, "Received %s during PromptForPhotoPicker, returning actionCanceled to IF", v113, 0xCu);
      sub_9964(v114);
    }

    else
    {

      (*(v35 + 8))(v38, v34);
    }

    v120 = v182;
    v154 = v20;
    (*(v20 + 56))(v159, 1, 1, v181);
    v121 = v169;
    sub_6C80C();
    v122 = v165;
    sub_6C88C();
    (*(v157 + 104))(v122, enum case for SystemPromptResolution.UserAction.actionCanceled(_:), v158);
    (*(v161 + 16))(v166, v168, v162);
    v123 = enum case for SystemPromptResolution.ResolutionInput.touch(_:);
    v124 = sub_6C85C();
    v125 = *(v124 - 8);
    v126 = v167;
    (*(v125 + 104))(v167, v123, v124);
    (*(v125 + 56))(v126, 0, 1, v124);
    v127 = v160;
    sub_6C87C();
    v128 = v152;
    sub_A17C(v127, v171);
    (*(v163 + 8))(v127, v164);
    v186 = *(sub_5708(&qword_81788, &qword_70380) + 48);
    sub_6C82C();
    v129 = v170;
    v130 = v172;
    (*(v170 + 16))(v172, v128, v120);
    v131 = v173;
    v132 = v175;
    (*(v173 + 104))(v130, enum case for MessagePayload.request(_:), v175);
    v133 = v187;
    sub_30BF8(v121, v130);
    v134 = *(v131 + 8);
    v134(v130, v132);
    (*(v154 + 8))(v121, v181);
    v135 = v151;
    sub_6C81C();
    if ((*(v131 + 88))(v135, v132) == enum case for MessagePayload.systemResponse(_:))
    {
      (*(v131 + 96))(v135, v132);
      v136 = v149;
      v137 = v150;
      v138 = v155;
      (*(v149 + 32))(v150, v135, v155);
      v139 = v186;
      sub_4458(v137, v186 + v133);
      (*(v136 + 8))(v137, v138);
      (*(v129 + 8))(v152, v182);
      v140 = 0;
      v141 = v180;
      v142 = v139;
    }

    else
    {
      (*(v129 + 8))(v152, v182);
      v134(v135, v132);
      v140 = 1;
      v141 = v180;
      v142 = v186;
    }

    v143 = sub_6CD2C();
    (*(*(v143 - 8) + 56))(&v142[v133], v140, 1, v143);
    type metadata accessor for IFFlow.State(0, *(v141 + 80), *(v141 + 88), v144);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v193 = 0;
    v194 = 0xE000000000000000;
    sub_6D57C(63);
    v195._countAndFlagsBits = 0xD000000000000021;
    v195._object = 0x800000000006EDA0;
    sub_6D33C(v195);
    sub_56B78();
    v196._countAndFlagsBits = sub_6D61C();
    sub_6D33C(v196);

    v197._countAndFlagsBits = 0xD00000000000001CLL;
    v197._object = 0x800000000006F880;
    sub_6D33C(v197);
    v78 = v194;
    v79 = v187;
    *v187 = v193;
    v79[1] = v78;
    type metadata accessor for IFFlowError(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for IFFlow.State(0, *(v180 + 80), *(v180 + 88), v80);
    swift_storeEnumTagMultiPayload();
    return (*(v35 + 8))(v40, v34);
  }
}

uint64_t sub_56140@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_6B7FC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6B7EC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  if (sub_22C60())
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v13 = sub_6D04C();
    sub_5CE4(v13, qword_839A0);
    v14 = sub_6D03C();
    v15 = sub_6D45C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "ImagePickerPromptStrategy intercepted user cancellation input. Cancelling", v16, 2u);
    }

    return static ActionForInput.cancel()();
  }

  sub_6B78C();
  if ((*(v3 + 88))(v5, v2) != enum case for Parse.directInvocation(_:))
  {
    (*(v3 + 8))(v5, v2);
    return sub_6B40C();
  }

  (*(v3 + 96))(v5, v2);
  (*(v7 + 32))(v12, v5, v6);
  if (sub_6B7CC() == 0xD000000000000032 && 0x800000000006F8C0 == v17)
  {
  }

  else
  {
    v19 = sub_6D63C();

    if ((v19 & 1) == 0)
    {
      (*(v7 + 8))(v12, v6);
      return sub_6B40C();
    }
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v20 = sub_6D04C();
  sub_5CE4(v20, qword_839A0);
  (*(v7 + 16))(v10, v12, v6);
  v21 = sub_6D03C();
  v22 = sub_6D45C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v31 = v23;
    v32 = swift_slowAlloc();
    v34 = v32;
    *v23 = 136315138;
    v24 = sub_6B7CC();
    v33 = a1;
    v26 = v25;
    v27 = *(v7 + 8);
    v27(v10, v6);
    v28 = sub_1076C(v24, v26, &v34);

    v29 = v31;
    *(v31 + 1) = v28;
    _os_log_impl(&dword_0, v21, v22, "ImagePickerPromptStrategy received direct invocation input with idenfier %s. Will Handle input", v29, 0xCu);
    sub_9964(v32);
  }

  else
  {

    v27 = *(v7 + 8);
    v27(v10, v6);
  }

  sub_6B3FC();
  return (v27)(v12, v6);
}

uint64_t sub_5663C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_5665C, 0, 0);
}

uint64_t sub_5665C()
{
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = sub_6D04C();
  sub_5CE4(v1, qword_839A0);
  v2 = sub_6D03C();
  v3 = sub_6D45C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ImagePickerPromptStrategy sending SAUIPhotoPickerRequest output", v4, 2u);
  }

  v5 = v0[3];

  v6 = [objc_allocWithZone(SAUIPhotoPickerRequest) init];
  v7 = sub_6D2BC();
  [v6 setSearchQuery:v7];

  if (*(v5 + 32))
  {
    [v6 setSelectionLimit:0];
  }

  else
  {
    sub_2C9A0();
    isa = sub_6D4AC(1).super.super.isa;
    [v6 setSelectionLimit:isa];
  }

  v9 = v0[2];
  v10 = sub_6D2BC();
  [v6 setDirectInvocationBundleIdentifier:v10];

  sub_5708(&qword_81548, &qword_70088);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_6FFF0;
  *(v11 + 32) = v6;
  v9[3] = sub_6B89C();
  v9[4] = &protocol witness table for AceOutput;
  sub_97B0(v9);
  sub_6B86C();
  v12 = v0[1];

  return v12();
}

uint64_t sub_568B0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_56924(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_569D0;

  return sub_56EA4(a2);
}

uint64_t sub_569D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_56AE0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_12CEC;

  return sub_5663C(a1);
}

unint64_t sub_56B78()
{
  result = qword_821E0;
  if (!qword_821E0)
  {
    sub_29F8(&qword_821D8, &qword_71260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_821E0);
  }

  return result;
}

uint64_t sub_56BDC@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a3;
  v4 = sub_5708(&qword_821E8, &qword_71268);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_6D20C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6D17C();
  v11 = swift_allocBox();
  (*(v8 + 16))(v10, a2, v7);
  v12 = sub_6D21C();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);

  sub_6D16C();
  v13 = v18;
  *v18 = v11;
  v14 = enum case for TypedValue.entityIdentifier(_:);
  v15 = sub_6D1EC();
  return (*(*(v15 - 8) + 104))(v13, v14, v15);
}

uint64_t sub_56DDC(uint64_t a1)
{
  v2 = sub_5708(&qword_81508, &unk_70260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_56E44()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_56EA4(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_6B7FC();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_6B7EC();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = sub_6B7AC();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_5701C, 0, 0);
}

uint64_t sub_5701C()
{
  v61 = v0;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[7];
  v5 = sub_6D04C();
  sub_5CE4(v5, qword_839A0);
  (*(v1 + 16))(v2, v4, v3);
  v6 = sub_6D03C();
  v7 = sub_6D45C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[15];
  v10 = v0[16];
  v11 = v0[14];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v13 = v60;
    *v12 = 136315138;
    sub_4DCFC();
    v14 = sub_6D61C();
    v16 = v15;
    (*(v9 + 8))(v10, v11);
    v17 = sub_1076C(v14, v16, &v60);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "ImagePickerPromptStrategy parseValueResponse called with input: %s", v12, 0xCu);
    sub_9964(v13);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v18 = v0[9];
  v19 = v0[10];
  v20 = v0[8];
  sub_6B78C();
  if ((*(v18 + 88))(v19, v20) != enum case for Parse.directInvocation(_:))
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    v26 = sub_6D03C();
    v27 = sub_6D45C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "ImagePickerPromptStrategy parseValueResponse input is not direct invocation. Will return nil", v28, 2u);
    }

    goto LABEL_30;
  }

  v21 = v0[12];
  v22 = v0[13];
  v24 = v0[10];
  v23 = v0[11];
  (*(v0[9] + 96))(v24, v0[8]);
  (*(v21 + 32))(v22, v24, v23);
  if (sub_6B7CC() == 0xD000000000000032 && 0x800000000006F8C0 == v25)
  {
  }

  else
  {
    v29 = sub_6D63C();

    if ((v29 & 1) == 0)
    {
      v46 = sub_6D03C();
      v47 = sub_6D45C();
      v55 = os_log_type_enabled(v46, v47);
      v50 = v0[12];
      v49 = v0[13];
      v51 = v0[11];
      if (v55)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        v53 = "ImagePickerPromptStrategy parseValueResponse direct invocation identifier does not match. Will return nil";
        goto LABEL_28;
      }

      goto LABEL_29;
    }
  }

  v30 = sub_6B7DC();
  if (!v30)
  {
    v46 = sub_6D03C();
    v47 = sub_6D45C();
    v54 = os_log_type_enabled(v46, v47);
    v50 = v0[12];
    v49 = v0[13];
    v51 = v0[11];
    if (v54)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = "ImagePickerPromptStrategy parseValueResponse input does not have user data. Will return nil";
      goto LABEL_28;
    }

LABEL_29:

    (*(v50 + 8))(v49, v51);
LABEL_30:
    v34 = 0;
    goto LABEL_31;
  }

  v31 = v30;
  if (!*(v30 + 16) || (v32 = sub_10DDC(0xD000000000000010, 0x800000000006F900), (v33 & 1) == 0))
  {

LABEL_22:
    v46 = sub_6D03C();
    v47 = sub_6D45C();
    v48 = os_log_type_enabled(v46, v47);
    v50 = v0[12];
    v49 = v0[13];
    v51 = v0[11];
    if (v48)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = "ImagePickerPromptStrategy parseValueResponse input user data does not contain expected 'assetEntityIdentifiers' field. Will return nil";
LABEL_28:
      _os_log_impl(&dword_0, v46, v47, v53, v52, 2u);

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  sub_98EC(*(v31 + 56) + 32 * v32, (v0 + 2));

  sub_5708(&qword_81840, &qword_70428);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v34 = v0[6];
  if (!*(v34 + 16))
  {

    v46 = sub_6D03C();
    v47 = sub_6D45C();
    v58 = os_log_type_enabled(v46, v47);
    v50 = v0[12];
    v49 = v0[13];
    v51 = v0[11];
    if (!v58)
    {
      goto LABEL_29;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "ImagePickerPromptStrategy parseValueResponse input returned empty 'assetEntityIdentifiers' field. Will return nil";
    goto LABEL_28;
  }

  v35 = sub_6D03C();
  v36 = sub_6D45C();

  v37 = os_log_type_enabled(v35, v36);
  v38 = v0[12];
  v39 = v0[13];
  v40 = v0[11];
  if (v37)
  {
    v59 = v0[13];
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v60 = v42;
    *v41 = 136315138;
    v43 = sub_6D39C();
    v45 = sub_1076C(v43, v44, &v60);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_0, v35, v36, "ImagePickerPromptStrategy parseValueResponse input is valid. Returning asset identifier: %s", v41, 0xCu);
    sub_9964(v42);

    (*(v38 + 8))(v59, v40);
  }

  else
  {

    (*(v38 + 8))(v39, v40);
  }

LABEL_31:

  v56 = v0[1];

  return v56(v34);
}

uint64_t sub_576F4()
{
  v1[7] = v0;
  v1[8] = type metadata accessor for IFFlowError(0);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v2 = sub_6B1DC();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = sub_5708(&unk_82030, &qword_70370);
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  sub_5708(&qword_821F0, &unk_71290);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_578A8, 0, 0);
}

uint64_t sub_578A8()
{
  v1 = sub_30BD4();
  v0[20] = v1;
  sub_6CE5C();
  if (v2)
  {
    sub_6AE5C();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[15];
  v7 = v0[16];
  (*(v7 + 56))(v4, v3, 1, v6);
  sub_C14C(v4, v5, &qword_821F0, &unk_71290);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = v0[18];
  if (v8 == 1)
  {
    sub_5E20(v9, &qword_821F0, &unk_71290);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v10 = sub_6D04C();
    sub_5CE4(v10, qword_839A0);
    v11 = sub_6D03C();
    v12 = sub_6D45C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[19];
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v11, v12, "Not sending the heartbeat because conversationSessionID is nil", v15, 2u);
    }

    v16 = &qword_821F0;
    v17 = &unk_71290;
    v18 = v14;
LABEL_19:
    sub_5E20(v18, v16, v17);

    v38 = v0[1];

    return v38();
  }

  v19 = v0[17];
  sub_5854C(v9, v19);
  v20 = swift_task_alloc();
  *(v20 + 16) = v1;
  *(v20 + 24) = v19;
  v21 = objc_allocWithZone(sub_6CB6C());
  v22 = sub_6CAEC();
  v0[21] = v22;

  if (!v22)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v32 = sub_6D04C();
    sub_5CE4(v32, qword_839A0);
    v33 = sub_6D03C();
    v34 = sub_6D45C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "Not sending the heartbeat because IntelligenceFlowStatusUpdateMessage can not be constructed", v35, 2u);
    }

    v36 = v0[19];
    v37 = v0[17];

    sub_5E20(v36, &qword_821F0, &unk_71290);
    v16 = &unk_82030;
    v17 = &qword_70370;
    v18 = v37;
    goto LABEL_19;
  }

  v24 = v0[13];
  v23 = v0[14];
  v25 = v0[12];
  v26 = v0[7];
  v27 = v22;
  sub_6B1CC();
  v28 = v26[10];
  v29 = v26[11];
  sub_99FC(v26 + 7, v28);
  v0[5] = v25;
  v0[6] = &protocol witness table for FlowMessageTransportableOutput;
  v30 = sub_97B0(v0 + 2);
  (*(v24 + 16))(v30, v23, v25);
  v31 = swift_task_alloc();
  v0[22] = v31;
  *v31 = v0;
  v31[1] = sub_57D50;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v28, v29);
}

uint64_t sub_57D50()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_57F84;
  }

  else
  {
    v2 = sub_57E64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_57E64()
{
  v1 = v0[21];
  v2 = v0[19];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  sub_9964(v0 + 2);

  (*(v4 + 8))(v3, v5);
  sub_5E20(v2, &qword_821F0, &unk_71290);
  sub_5E20(v0[17], &unk_82030, &qword_70370);

  v6 = v0[1];

  return v6();
}

uint64_t sub_57F84()
{
  v29 = v0;
  v1 = v0[10];
  v2 = v0[11];
  *v2 = v0[23];
  swift_storeEnumTagMultiPayload();
  sub_C0F4();
  swift_willThrowTypedImpl();
  sub_9964(v0 + 2);
  sub_9814(v2, v1);
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v4 = v0[10];
  v5 = sub_6D04C();
  sub_5CE4(v5, qword_839A0);
  sub_4394(v4, v3);
  v6 = sub_6D03C();
  v7 = sub_6D45C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[21];
  v10 = v0[19];
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[12];
  v14 = v0[9];
  v27 = v0[10];
  if (v8)
  {
    v26 = v0[14];
    v25 = v0[19];
    v15 = swift_slowAlloc();
    v24 = v13;
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315138;
    v17 = sub_6D66C();
    v19 = v18;
    sub_43F8(v14);
    v20 = sub_1076C(v17, v19, &v28);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v6, v7, "Publishing heartbeat failed with error: %s", v15, 0xCu);
    sub_9964(v16);

    sub_43F8(v27);
    (*(v12 + 8))(v26, v24);
    v21 = v25;
  }

  else
  {

    sub_43F8(v14);
    sub_43F8(v27);
    (*(v12 + 8))(v11, v13);
    v21 = v10;
  }

  sub_5E20(v21, &qword_821F0, &unk_71290);
  sub_5E20(v0[17], &unk_82030, &qword_70370);

  v22 = v0[1];

  return v22();
}

uint64_t sub_582A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_5708(&qword_81B70, &qword_70940);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_5708(&qword_81B60, &qword_70930);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_5708(&unk_82030, &qword_70370);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  sub_6CE4C();
  sub_6CB0C();
  sub_C14C(a3, v12, &unk_82030, &qword_70370);
  sub_6CB4C();
  sub_6CDCC();
  sub_6CB3C();
  sub_6CDBC();
  sub_6CB1C();
  v13 = enum case for MessageSource.ifFlow(_:);
  v14 = sub_6CC2C();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v9, v13, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  sub_6CB2C();
  sub_6CB5C();
  v16 = enum case for IntelligenceFlowStatusUpdateMessage.StatusUpdate.heartbeat(_:);
  v17 = sub_6CA8C();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v6, v16, v17);
  (*(v18 + 56))(v6, 0, 1, v17);
  return sub_6CAFC();
}

uint64_t sub_5854C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&unk_82030, &qword_70370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_585C4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_585D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_58620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_58694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 145) = a8;
  *(v8 + 352) = a6;
  *(v8 + 360) = a7;
  *(v8 + 336) = a4;
  *(v8 + 344) = a5;
  *(v8 + 320) = a2;
  *(v8 + 328) = a3;
  *(v8 + 312) = a1;
  sub_5708(&qword_821F8, &qword_712F0);
  *(v8 + 368) = swift_task_alloc();
  v9 = sub_6AE9C();
  *(v8 + 376) = v9;
  v10 = *(v9 - 8);
  *(v8 + 384) = v10;
  *(v8 + 392) = *(v10 + 64);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  v11 = sub_6C0FC();
  *(v8 + 416) = v11;
  v12 = *(v11 - 8);
  *(v8 + 424) = v12;
  *(v8 + 432) = *(v12 + 64);
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  sub_5708(&qword_82200, &qword_712F8);
  *(v8 + 456) = swift_task_alloc();
  v13 = sub_6D01C();
  *(v8 + 464) = v13;
  *(v8 + 472) = *(v13 - 8);
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  v14 = sub_6BECC();
  *(v8 + 504) = v14;
  *(v8 + 512) = *(v14 - 8);
  *(v8 + 520) = swift_task_alloc();
  *(v8 + 528) = type metadata accessor for IFFlowError(0);
  *(v8 + 536) = swift_task_alloc();
  v15 = sub_6C0AC();
  *(v8 + 544) = v15;
  *(v8 + 552) = *(v15 - 8);
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  v16 = sub_6C34C();
  *(v8 + 584) = v16;
  *(v8 + 592) = *(v16 - 8);
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  sub_5708(&qword_817E0, &qword_71300);
  *(v8 + 624) = swift_task_alloc();
  sub_5708(&qword_82208, &qword_71308);
  *(v8 + 632) = swift_task_alloc();
  v17 = sub_6D1EC();
  *(v8 + 640) = v17;
  *(v8 + 648) = *(v17 - 8);
  *(v8 + 656) = swift_task_alloc();
  v18 = sub_6C54C();
  *(v8 + 664) = v18;
  *(v8 + 672) = *(v18 - 8);
  *(v8 + 680) = swift_task_alloc();
  sub_5708(&qword_81D88, &qword_70DC0);
  *(v8 + 688) = swift_task_alloc();
  sub_5708(&unk_82030, &qword_70370);
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  v19 = sub_6C91C();
  *(v8 + 712) = v19;
  *(v8 + 720) = *(v19 - 8);
  *(v8 + 728) = swift_task_alloc();
  v20 = sub_6C4EC();
  *(v8 + 736) = v20;
  *(v8 + 744) = *(v20 - 8);
  *(v8 + 752) = swift_task_alloc();
  v21 = sub_6C77C();
  *(v8 + 760) = v21;
  *(v8 + 768) = *(v21 - 8);
  *(v8 + 776) = swift_task_alloc();
  v22 = sub_6C78C();
  *(v8 + 784) = v22;
  *(v8 + 792) = *(v22 - 8);
  *(v8 + 800) = swift_task_alloc();
  v23 = sub_6C7AC();
  *(v8 + 808) = v23;
  *(v8 + 816) = *(v23 - 8);
  *(v8 + 824) = swift_task_alloc();
  v24 = sub_6C35C();
  *(v8 + 832) = v24;
  *(v8 + 840) = *(v24 - 8);
  *(v8 + 848) = swift_task_alloc();

  return _swift_task_switch(sub_58E0C, 0, 0);
}

uint64_t sub_58E0C(uint64_t a1)
{
  v240 = v1;
  v2 = v1;
  v3 = v1[106];
  v4 = v1[105];
  v5 = *(v2 + 104);
  sub_6C81C();
  v6 = (*(v4 + 88))(v3, v5);
  if (v6 == enum case for MessagePayload.terminate(_:))
  {
    v7 = *(v2 + 106);
    v8 = *(v2 + 105);
    v9 = *(v2 + 104);
    v10 = *(v2 + 67);
    v11 = *(v2 + 39);
    swift_storeEnumTagMultiPayload();
    sub_66050(v10, v11, type metadata accessor for IFFlowError);
    type metadata accessor for FlowAction.ExitValue(0);
    swift_storeEnumTagMultiPayload();
    v12 = type metadata accessor for FlowAction(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
LABEL_3:
    (*(v8 + 8))(v7, v9);
LABEL_61:
    v245 = *(v2 + 46);

    v193 = *(v2 + 1);

    return v193();
  }

  if (v6 == enum case for MessagePayload.endOfPlan(_:))
  {
    v13 = *(v2 + 106);
    v14 = *(v2 + 77);
    v15 = *(v2 + 74);
    v16 = *(v2 + 73);
    (*(*(v2 + 105) + 96))(v13, *(v2 + 104));
    (*(v15 + 32))(v14, v13, v16);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v17 = *(v2 + 77);
    v18 = *(v2 + 76);
    v19 = *(v2 + 74);
    v20 = *(v2 + 73);
    v21 = sub_6D04C();
    sub_5CE4(v21, qword_839A0);
    v22 = *(v19 + 16);
    v22(v18, v17, v20);
    v23 = sub_6D03C();
    v24 = sub_6D45C();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v2 + 77);
    v27 = *(v2 + 76);
    if (v25)
    {
      v28 = *(v2 + 75);
      v233 = *(v2 + 77);
      v29 = *(v2 + 74);
      v30 = *(v2 + 73);
      v245 = v2;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v238[0] = v32;
      *v31 = 136315138;
      v22(v28, v27, v30);
      v33 = sub_6D2EC();
      v35 = v34;
      v36 = *(v29 + 8);
      v36(v27, v30);
      v37 = sub_1076C(v33, v35, v238);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_0, v23, v24, "IFFlow received endOfPlan message %s", v31, 0xCu);
      sub_9964(v32);

      v2 = v245;

      v36(v233, v30);
    }

    else
    {
      v64 = *(v2 + 74);
      v65 = *(v2 + 73);

      v66 = *(v64 + 8);
      v66(v27, v65);
      v66(v26, v65);
    }

    v67 = *(v2 + 39);
    type metadata accessor for FlowAction.ExitValue(0);
    swift_storeEnumTagMultiPayload();
    v68 = type metadata accessor for FlowAction(0);
    goto LABEL_17;
  }

  if (v6 == enum case for MessagePayload.error(_:))
  {
    v38 = *(v2 + 106);
    v39 = *(v2 + 72);
    v40 = *(v2 + 69);
    v41 = *(v2 + 68);
    (*(*(v2 + 105) + 96))(v38, *(v2 + 104));
    v42 = *(v40 + 32);
    v42(v39, v38, v41);
    if (sub_62298())
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v43 = *(v2 + 72);
      v44 = *(v2 + 71);
      v45 = *(v2 + 69);
      v46 = *(v2 + 68);
      v47 = sub_6D04C();
      sub_5CE4(v47, qword_839A0);
      v48 = *(v45 + 16);
      v48(v44, v43, v46);
      v49 = sub_6D03C();
      v50 = sub_6D45C();
      v51 = os_log_type_enabled(v49, v50);
      v52 = *(v2 + 72);
      v53 = *(v2 + 71);
      if (v51)
      {
        v54 = *(v2 + 70);
        v234 = *(v2 + 72);
        v55 = *(v2 + 69);
        v56 = *(v2 + 68);
        v245 = v2;
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v238[0] = v58;
        *v57 = 136315138;
        v48(v54, v53, v56);
        v59 = sub_6D2EC();
        v61 = v60;
        v62 = *(v55 + 8);
        v62(v53, v56);
        v63 = sub_1076C(v59, v61, v238);

        *(v57 + 4) = v63;
        _os_log_impl(&dword_0, v49, v50, "Received Network Failure error as SessionError: %s", v57, 0xCu);
        sub_9964(v58);

        v2 = v245;

        v62(v234, v56);
      }

      else
      {
        v98 = *(v2 + 69);
        v99 = *(v2 + 68);

        v100 = *(v98 + 8);
        v100(v53, v99);
        v100(v52, v99);
      }

      v101 = *(v2 + 67);
      v95 = *(v2 + 39);
      swift_storeEnumTagMultiPayload();
      sub_66050(v101, v95, type metadata accessor for IFFlowError);
      type metadata accessor for FlowAction.ExitValue(0);
      swift_storeEnumTagMultiPayload();
      v97 = type metadata accessor for FlowAction(0);
      goto LABEL_29;
    }

    v83 = sub_6C09C();
    v84 = *(v83 + 16);
    if (v84)
    {
      v85 = *(v2 + 65);
      v86 = *(v2 + 63);
      v87 = *(v2 + 64);
      v88 = *(v2 + 58);
      v89 = *(v2 + 59);
      v90 = v2;
      v91 = *(v2 + 57);
      (*(v87 + 16))(v85, v83 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * (v84 - 1), v86);

      v92 = sub_6BEAC();
      (*(v87 + 8))(v85, v86);
      sub_6D00C();
      if ((*(v89 + 48))(v91, 1, v88) == 1)
      {
        v93 = *(v90 + 57);

        sub_5E20(v93, &qword_82200, &qword_712F8);
        v2 = v90;
      }

      else
      {
        v236 = (*(v90 + 59) + 32);
        v231 = *v236;
        (*v236)(*(v90 + 62), *(v90 + 57), *(v90 + 58));
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v141 = *(v90 + 61);
        v140 = *(v90 + 62);
        v142 = *(v90 + 58);
        v143 = *(v90 + 59);
        v144 = sub_6D04C();
        sub_5CE4(v144, qword_839A0);
        v228 = *(v143 + 16);
        v228(v141, v140, v142);
        v145 = sub_6D03C();
        v146 = sub_6D45C();
        v147 = os_log_type_enabled(v145, v146);
        v148 = *(v90 + 61);
        v150 = *(v90 + 58);
        v149 = *(v90 + 59);
        v245 = v90;
        if (v147)
        {
          v225 = v146;
          v151 = swift_slowAlloc();
          v223 = swift_slowAlloc();
          *v151 = 138412290;
          sub_65FB0(&qword_82210, &type metadata accessor for GATError, &protocol conformance descriptor for GATError);
          swift_allocError();
          v228(v152, v148, v150);
          v153 = _swift_stdlib_bridgeErrorToNSError();
          v154 = *(v149 + 8);
          v154(v148, v150);
          *(v151 + 4) = v153;
          *v223 = v153;
          _os_log_impl(&dword_0, v145, v225, "Received an error from GAT: %@", v151, 0xCu);
          sub_5E20(v223, &qword_81508, &unk_70260);
        }

        else
        {

          v154 = *(v149 + 8);
          v154(v148, v150);
        }

        v2 = v245;
        v184 = *(v245 + 59);
        v183 = *(v245 + 60);
        v185 = *(v245 + 58);
        v231(v183, *(v245 + 62), v185);
        if ((*(v184 + 88))(v183, v185) == enum case for GATError.emergencyFallback(_:))
        {
          v187 = *(v245 + 59);
          v186 = *(v245 + 60);
          v188 = *(v245 + 58);
          v189 = *(v245 + 39);
          (*(*(v245 + 69) + 8))(*(v245 + 72), *(v245 + 68));
          (*(v187 + 96))(v186, v188);
          v190 = v186[1];
          *v189 = *v186;
          v189[1] = v190;
          v191 = type metadata accessor for FlowAction(0);
LABEL_60:
          swift_storeEnumTagMultiPayload();
          (*(*(v191 - 8) + 56))(v189, 0, 1, v191);
          goto LABEL_61;
        }

        v154(*(v245 + 60), *(v245 + 58));
      }
    }

    else
    {
    }

    v192 = *(v2 + 67);
    v189 = *(v2 + 39);
    v42(v192, *(v2 + 72), *(v2 + 68));
    swift_storeEnumTagMultiPayload();
    sub_66050(v192, v189, type metadata accessor for IFFlowError);
    type metadata accessor for FlowAction.ExitValue(0);
    swift_storeEnumTagMultiPayload();
    v191 = type metadata accessor for FlowAction(0);
    goto LABEL_60;
  }

  if (v6 == enum case for MessagePayload.actionWillExecute(_:))
  {
    v69 = *(v2 + 106);
    v70 = *(v2 + 56);
    v71 = *(v2 + 52);
    v72 = *(v2 + 53);
    (*(*(v2 + 105) + 96))(v69, *(v2 + 104));
    v73 = *(v72 + 32);
    v73(v70, v69, v71);
    sub_6CD9C();
    sub_6CD8C();
    sub_6CDBC();
    if (v74)
    {
      v75 = *(v2 + 87);
      v76 = *(v2 + 47);
      v77 = *(v2 + 48);
      sub_6AE5C();

      v78 = (*(v77 + 48))(v75, 1, v76);
      v79 = *(v2 + 87);
      if (v78 == 1)
      {
        v80 = *(v2 + 56);
        v81 = *(v2 + 52);
        v82 = *(v2 + 53);
        sub_9964(v2 + 19);
        (*(v82 + 8))(v80, v81);
        sub_5E20(v79, &unk_82030, &qword_70370);
      }

      else
      {
        v235 = (*(v2 + 48) + 32);
        v230 = *v235;
        (*v235)(*(v2 + 51), *(v2 + 87), *(v2 + 47));
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v245 = v73;
        v122 = sub_6D04C();
        sub_5CE4(v122, qword_839A0);
        v123 = sub_6D03C();
        v124 = sub_6D45C();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          *v125 = 0;
          _os_log_impl(&dword_0, v123, v124, "IFFlow received actionWillExecute message and passing this to suggestions", v125, 2u);
        }

        v127 = *(v2 + 55);
        v126 = *(v2 + 56);
        v128 = *(v2 + 53);
        v129 = *(v2 + 51);
        v222 = v129;
        v130 = *(v2 + 50);
        v219 = *(v2 + 52);
        v131 = *(v2 + 48);
        v221 = *(v2 + 49);
        v132 = *(v2 + 46);
        v217 = *(v2 + 47);
        v227 = v126;

        v133 = sub_6D41C();
        (*(*(v133 - 8) + 56))(v132, 1, 1, v133);
        sub_9878(v2 + 152, (v2 + 12));
        (*(v131 + 16))(v130, v129, v217);
        (*(v128 + 16))(v127, v126, v219);
        v134 = v2;
        v135 = (*(v131 + 80) + 72) & ~*(v131 + 80);
        v136 = (v221 + *(v128 + 80) + v135) & ~*(v128 + 80);
        v137 = swift_allocObject();
        *(v137 + 16) = 0;
        *(v137 + 24) = 0;
        sub_1FD68(v134 + 12, v137 + 32);
        v138 = v137 + v135;
        v2 = v134;
        v230(v138, v130, v217);
        (v245)(v137 + v136, v127, v219);
        sub_629FC(0, 0, v132, &unk_71318, v137);

        (*(v131 + 8))(v222, v217);
        sub_9964(v134 + 19);
        (*(v128 + 8))(v227, v219);
      }
    }

    else
    {
      v119 = *(v2 + 56);
      v120 = *(v2 + 52);
      v121 = *(v2 + 53);
      sub_9964(v2 + 19);
      (*(v121 + 8))(v119, v120);
    }

    v67 = *(v2 + 39);
    goto LABEL_42;
  }

  if (v6 == enum case for MessagePayload.clientAction(_:))
  {
    v94 = *(v2 + 106);
    v95 = *(v2 + 39);
    (*(*(v2 + 105) + 96))(v94, *(v2 + 104));
    v96 = sub_6C06C();
    (*(*(v96 - 8) + 32))(v95, v94, v96);
    v97 = type metadata accessor for FlowAction(0);
LABEL_29:
    swift_storeEnumTagMultiPayload();
    (*(*(v97 - 8) + 56))(v95, 0, 1, v97);
    goto LABEL_61;
  }

  if (v6 == enum case for MessagePayload.systemResponse(_:))
  {
    v102 = *(v2 + 106);
    v103 = *(v2 + 94);
    v104 = *(v2 + 93);
    v105 = *(v2 + 92);
    (*(*(v2 + 105) + 96))(v102, *(v2 + 104));
    (*(v104 + 32))(v103, v102, v105);
    v106 = sub_6CDCC();
    v108 = v107;
    *(v2 + 107) = v107;
    v109 = swift_task_alloc();
    *(v2 + 108) = v109;
    *v109 = v2;
    v109[1] = sub_5A728;
    v110 = *(v2 + 94);
    v112 = *(v2 + 44);
    v111 = *(v2 + 45);
    v113 = *(v2 + 42);
    v114 = *(v2 + 43);
    v115 = *(v2 + 40);
    v116 = *(v2 + 41);
    v117 = *(v2 + 39);
    v244 = *(v2 + 145);
    v242 = v112;
    v243 = v111;

    return sub_5B528(v117, v115, v110, v116, v106, v108, v113, v114);
  }

  else
  {
    if (v6 != enum case for MessagePayload.intermediateSystemResponse(_:))
    {
      if (v6 == enum case for MessagePayload.actionSummaryUpdate(_:))
      {
        v7 = *(v2 + 106);
        v8 = *(v2 + 105);
        v9 = *(v2 + 104);
        sub_5AE7C(*(v2 + 40), *(v2 + 39));
        goto LABEL_3;
      }

      v7 = *(v2 + 106);
      v8 = *(v2 + 105);
      v9 = *(v2 + 104);
      if (v6 != enum case for MessagePayload.statusUpdate(_:))
      {
        v214 = *(v2 + 39);
        v215 = type metadata accessor for FlowAction(0);
        (*(*(v215 - 8) + 56))(v214, 1, 1, v215);
        goto LABEL_3;
      }

      v194 = *(v2 + 103);
      v195 = *(v2 + 102);
      v196 = *(v2 + 101);
      v197 = v2;
      v198 = *(v2 + 100);
      v199 = *(v197 + 99);
      v200 = *(v197 + 98);
      (*(v8 + 96))(v7, v9);
      (*(v195 + 32))(v194, v7, v196);
      sub_6C79C();
      v201 = v198;
      v2 = v197;
      v202 = (*(v199 + 88))(v201, v200);
      v203 = *(v197 + 103);
      v204 = *(v197 + 102);
      v205 = *(v197 + 101);
      v206 = *(v197 + 100);
      v207 = *(v197 + 99);
      v208 = *(v197 + 98);
      if (v202 != enum case for SessionStatusUpdate.Payload.intermediateQueryResult(_:))
      {
        sub_5AE7C(*(v197 + 40), *(v197 + 39));
        (*(v204 + 8))(v203, v205);
        (*(v207 + 8))(v206, v208);
        goto LABEL_61;
      }

      v209 = *(v197 + 97);
      v210 = *(v197 + 96);
      v211 = *(v197 + 95);
      (*(v207 + 96))(*(v197 + 100), *(v197 + 98));
      (*(v210 + 32))(v209, v206, v211);
      sub_19890(v238);
      v212 = v209;
      v2 = v197;
      (*(v210 + 8))(v212, v211);
      (*(v204 + 8))(v203, v205);
      *(v197 + 38) = v239;
      v213 = v238[1];
      v197[17] = v238[0];
      v197[18] = v213;
      v67 = *(v197 + 39);
      if (*(v197 + 37))
      {
        sub_1FD68(v197 + 17, *(v197 + 39));
        v68 = type metadata accessor for FlowAction(0);
LABEL_17:
        swift_storeEnumTagMultiPayload();
        (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
        goto LABEL_61;
      }

LABEL_42:
      v139 = type metadata accessor for FlowAction(0);
      (*(*(v139 - 8) + 56))(v67, 1, 1, v139);
      goto LABEL_61;
    }

    v155 = *(v2 + 106);
    v156 = *(v2 + 91);
    v157 = *(v2 + 90);
    v158 = *(v2 + 89);
    (*(*(v2 + 105) + 96))(v155, *(v2 + 104));
    (*(v157 + 32))(v156, v155, v158);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v159 = sub_6D04C();
    sub_5CE4(v159, qword_839A0);
    v160 = sub_6D03C();
    v161 = sub_6D45C();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      *v162 = 0;
      _os_log_impl(&dword_0, v160, v161, "IFFlow received intermediateSystemResponse", v162, 2u);
    }

    v229 = *(v2 + 94);
    v163 = *(v2 + 88);
    v164 = *(v2 + 86);
    v220 = *(v2 + 85);
    v165 = *(v2 + 84);
    v166 = *(v2 + 82);
    v167 = *(v2 + 81);
    v216 = *(v2 + 80);
    v218 = *(v2 + 79);
    v224 = *(v2 + 83);
    v168 = *(v2 + 47);
    v169 = *(v2 + 48);
    LODWORD(v245) = *(v2 + 145);
    v232 = *(v2 + 45);
    v237 = *(v2 + 42);
    v226 = *(v2 + 41);

    (*(v169 + 56))(v163, 1, 1, v168);
    v170 = sub_6BEEC();
    (*(*(v170 - 8) + 56))(v164, 1, 1, v170);
    sub_6C90C();
    v171 = sub_6D1DC();
    v172 = swift_allocBox();
    (*(*(v171 - 8) + 104))(v173, enum case for TypedValue.PrimitiveValue.none(_:), v171);
    *v166 = v172;
    (*(v167 + 104))(v166, enum case for TypedValue.primitive(_:), v216);
    v174 = sub_6BF7C();
    (*(*(v174 - 8) + 56))(v218, 1, 1, v174);
    sub_6BF8C();
    (*(v165 + 104))(v220, enum case for StatementOutcome.success(_:), v224);
    sub_6C8FC();
    sub_6C4BC();
    sub_9878(v226, (v2 + 1));
    sub_9878(v232, v2 + 104);
    *(v2 + 10) = &type metadata for FeatureEnablementProvider;
    *(v2 + 11) = &off_7F140;
    *(v2 + 12) = v237;
    *(v2 + 144) = v245;

    v175 = sub_6CDCC();
    v177 = v176;
    *(v2 + 109) = v176;
    v178 = sub_659BC(v229);
    v179 = swift_task_alloc();
    *(v2 + 110) = v179;
    *v179 = v2;
    v179[1] = sub_5AA9C;
    v180 = *(v2 + 94);
    v181 = *(v2 + 43);
    v182 = *(v2 + 44);

    return sub_14D74(v2 + 232, v180, v175, v177, v181, v182, v178 & 1);
  }
}

uint64_t sub_5A728()
{

  return _swift_task_switch(sub_5A840, 0, 0);
}

uint64_t sub_5A840()
{
  v1 = v0[39];
  (*(v0[93] + 8))(v0[94], v0[92]);
  v2 = type metadata accessor for FlowAction(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_5AA9C()
{
  v1 = *v0;

  sub_65E88(v1 + 16);

  return _swift_task_switch(sub_5ABBC, 0, 0);
}

uint64_t sub_5ABBC()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];
  v6 = v0[89];
  v7 = v0[39];
  sub_9878((v0 + 29), v7);
  v8 = sub_6C90C();
  v10 = v9;
  sub_9964(v0 + 29);
  (*(v2 + 8))(v1, v3);
  (*(v5 + 8))(v4, v6);
  *(v7 + 40) = v8;
  *(v7 + 48) = v10;
  v11 = type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_5AE7C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a2;
  v60 = a3;
  v3 = sub_6C35C();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin(v3);
  v5 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_5708(&qword_81D50, &qword_70D20);
  __chkstk_darwin(v6 - 8);
  v8 = &v54 - v7;
  v9 = sub_6B1DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_5708(&unk_82030, &qword_70370);
  __chkstk_darwin(v12 - 8);
  v14 = &v54 - v13;
  v15 = sub_6AE9C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6CE5C();
  if (!v19)
  {
    goto LABEL_7;
  }

  sub_6AE5C();

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v20 = &unk_82030;
    v21 = &qword_70370;
    v22 = v14;
LABEL_6:
    sub_5E20(v22, v20, v21);
LABEL_7:
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v33 = sub_6D04C();
    sub_5CE4(v33, qword_839A0);

    v34 = sub_6D03C();
    v35 = sub_6D46C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v61 = v37;
      *v36 = 136315138;
      v38 = sub_6CE5C();
      if (v39)
      {
        v40 = v39;
      }

      else
      {
        v38 = 1819047278;
        v40 = 0xE400000000000000;
      }

      v41 = sub_1076C(v38, v40, &v61);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_0, v34, v35, "Failed to compose IntelligenceFlowStatusUpdateMessage with sessionId - %s", v36, 0xCu);
      sub_9964(v37);
    }

    v42 = type metadata accessor for FlowAction(0);
    return (*(*(v42 - 8) + 56))(v60, 1, 1, v42);
  }

  (*(v16 + 32))(v18, v14, v15);
  v54 = v16;
  sub_6C81C();
  v23 = sub_6CDCC();
  v57 = v9;
  v55 = v10;
  v25 = v24;
  v26 = sub_6CDBC();
  v28 = v27;
  v29 = sub_6CE4C();
  sub_2D0B8(v5, v23, v25, v26, v28, v18, v29, v30, v8);

  v31 = v55;
  v32 = v57;

  (*(v58 + 8))(v5, v59);
  if ((*(v31 + 48))(v8, 1, v32) == 1)
  {
    (*(v54 + 8))(v18, v15);
    v20 = &qword_81D50;
    v21 = &qword_70D20;
    v22 = v8;
    goto LABEL_6;
  }

  v44 = *(v31 + 32);
  v45 = v56;
  v44(v56, v8, v32);
  v46 = v60;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v47 = sub_6D04C();
  sub_5CE4(v47, qword_839A0);
  v48 = sub_6D03C();
  v49 = sub_6D45C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_0, v48, v49, "Publishing IntelligenceFlowStatusUpdateMessage Message", v50, 2u);
  }

  v51 = v57;
  v46[3] = v57;
  v46[4] = &protocol witness table for FlowMessageTransportableOutput;
  v52 = sub_97B0(v46);
  v44(v52, v45, v51);
  (*(v54 + 8))(v18, v15);
  v53 = type metadata accessor for FlowAction(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v53 - 8) + 56))(v46, 0, 1, v53);
}

uint64_t sub_5B528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 145) = v33;
  *(v8 + 2232) = v32;
  *(v8 + 2224) = v31;
  *(v8 + 2216) = a8;
  *(v8 + 2208) = a7;
  *(v8 + 2200) = a6;
  *(v8 + 2192) = a5;
  *(v8 + 2184) = a4;
  *(v8 + 2176) = a3;
  *(v8 + 2168) = a2;
  *(v8 + 2160) = a1;
  v9 = sub_6C4EC();
  *(v8 + 2240) = v9;
  *(v8 + 2248) = *(v9 - 8);
  *(v8 + 2256) = swift_task_alloc();
  *(v8 + 2264) = type metadata accessor for IFFlowError(0);
  *(v8 + 2272) = swift_task_alloc();
  v10 = sub_6C55C();
  *(v8 + 2280) = v10;
  *(v8 + 2288) = *(v10 - 8);
  *(v8 + 2296) = swift_task_alloc();
  v11 = sub_6BF3C();
  *(v8 + 2304) = v11;
  *(v8 + 2312) = *(v11 - 8);
  *(v8 + 2320) = swift_task_alloc();
  v12 = sub_6B12C();
  *(v8 + 2328) = v12;
  *(v8 + 2336) = *(v12 - 8);
  *(v8 + 2344) = swift_task_alloc();
  v13 = sub_6B0DC();
  *(v8 + 2352) = v13;
  *(v8 + 2360) = *(v13 - 8);
  *(v8 + 2368) = swift_task_alloc();
  v14 = sub_6BF0C();
  *(v8 + 2376) = v14;
  *(v8 + 2384) = *(v14 - 8);
  *(v8 + 2392) = swift_task_alloc();
  v15 = sub_6BF6C();
  *(v8 + 2400) = v15;
  *(v8 + 2408) = *(v15 - 8);
  *(v8 + 2416) = swift_task_alloc();
  *(v8 + 2424) = swift_task_alloc();
  *(v8 + 2432) = swift_task_alloc();
  *(v8 + 2440) = swift_task_alloc();
  *(v8 + 2448) = swift_task_alloc();
  v16 = sub_6C7CC();
  *(v8 + 2456) = v16;
  *(v8 + 2464) = *(v16 - 8);
  *(v8 + 2472) = swift_task_alloc();
  v17 = sub_6C68C();
  *(v8 + 2480) = v17;
  *(v8 + 2488) = *(v17 - 8);
  *(v8 + 2496) = swift_task_alloc();
  sub_5708(&qword_817E0, &qword_71300);
  *(v8 + 2504) = swift_task_alloc();
  v18 = sub_6C43C();
  *(v8 + 2512) = v18;
  *(v8 + 2520) = *(v18 - 8);
  *(v8 + 2528) = swift_task_alloc();
  v19 = sub_6C97C();
  *(v8 + 2536) = v19;
  *(v8 + 2544) = *(v19 - 8);
  *(v8 + 2552) = swift_task_alloc();
  *(v8 + 2560) = swift_task_alloc();
  *(v8 + 2568) = swift_task_alloc();
  v20 = sub_6D1FC();
  *(v8 + 2576) = v20;
  *(v8 + 2584) = *(v20 - 8);
  *(v8 + 2592) = swift_task_alloc();
  sub_5708(&qword_82218, &qword_71338);
  *(v8 + 2600) = swift_task_alloc();
  v21 = sub_6C6CC();
  *(v8 + 2608) = v21;
  *(v8 + 2616) = *(v21 - 8);
  *(v8 + 2624) = swift_task_alloc();
  v22 = sub_6C6FC();
  *(v8 + 2632) = v22;
  *(v8 + 2640) = *(v22 - 8);
  *(v8 + 2648) = swift_task_alloc();
  *(v8 + 2656) = swift_task_alloc();
  v23 = sub_6C71C();
  *(v8 + 2664) = v23;
  *(v8 + 2672) = *(v23 - 8);
  *(v8 + 2680) = swift_task_alloc();
  *(v8 + 2688) = swift_task_alloc();
  v24 = sub_6C8BC();
  *(v8 + 2696) = v24;
  *(v8 + 2704) = *(v24 - 8);
  *(v8 + 2712) = swift_task_alloc();
  v25 = sub_6CD2C();
  *(v8 + 2720) = v25;
  *(v8 + 2728) = *(v25 - 8);
  *(v8 + 2736) = swift_task_alloc();
  *(v8 + 2744) = swift_task_alloc();
  sub_5708(&qword_82220, &unk_71340);
  *(v8 + 2752) = swift_task_alloc();
  v26 = sub_6C63C();
  *(v8 + 2760) = v26;
  *(v8 + 2768) = *(v26 - 8);
  *(v8 + 2776) = swift_task_alloc();
  v27 = sub_6C66C();
  *(v8 + 2784) = v27;
  *(v8 + 2792) = *(v27 - 8);
  *(v8 + 2800) = swift_task_alloc();
  v28 = sub_6C54C();
  *(v8 + 2808) = v28;
  *(v8 + 2816) = *(v28 - 8);
  *(v8 + 2824) = swift_task_alloc();
  *(v8 + 2832) = swift_task_alloc();

  return _swift_task_switch(sub_5BE40, 0, 0);
}

uint64_t sub_5BE40()
{
  v422 = v0;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = sub_6D04C();
  sub_5CE4(v1, qword_839A0);
  v2 = sub_6D03C();
  v3 = sub_6D45C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v421[0] = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_1076C(0xD00000000000001DLL, 0x800000000006F920, v421);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1076C(0xD000000000000093, 0x800000000006F940, v421);
    _os_log_impl(&dword_0, v2, v3, "%s:%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v5 = *(v0 + 2832);
  v6 = *(v0 + 2816);
  v7 = *(v0 + 2808);
  sub_4B4CC(v5);
  v8 = (*(v6 + 88))(v5, v7);
  if (v8 == enum case for StatementOutcome.success(_:))
  {
    v9 = sub_6D03C();
    v10 = sub_6D44C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "IFFlow Publishing success output", v11, 2u);
    }

    v12 = *(v0 + 145);
    v13 = *(v0 + 2232);
    v14 = *(v0 + 2208);
    v15 = *(v0 + 2184);
    v16 = *(v0 + 2176);

    sub_9878(v15, v0 + 1784);
    sub_9878(v13, v0 + 1872);
    *(v0 + 1848) = &type metadata for FeatureEnablementProvider;
    *(v0 + 1856) = &off_7F140;
    *(v0 + 1864) = v14;
    *(v0 + 1912) = v12;

    v17 = sub_659BC(v16);
    v18 = swift_task_alloc();
    *(v0 + 2840) = v18;
    *v18 = v0;
    v18[1] = sub_5EF08;
    v19 = *(v0 + 2224);
    v20 = *(v0 + 2216);
    v21 = *(v0 + 2200);
    v22 = *(v0 + 2192);
    v23 = *(v0 + 2176);
    v24 = v0 + 2120;
    v25 = v17 & 1;
    goto LABEL_9;
  }

  if (v8 == enum case for StatementOutcome.snippetStream(_:))
  {
    v27 = sub_6D03C();
    v28 = sub_6D46C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "IFFlow received unsupported snippetStream outcomeType", v29, 2u);
    }

    v30 = *(v0 + 2832);
    v31 = *(v0 + 2816);
    v32 = *(v0 + 2808);
    v33 = *(v0 + 2272);
    v34 = *(v0 + 2168);
    v35 = *(v0 + 2160);

    v36 = sub_6C83C();
    (*(*(v36 - 8) + 16))(v33, v34, v36);
    swift_storeEnumTagMultiPayload();
    sub_66050(v33, v35, type metadata accessor for IFFlowError);
    type metadata accessor for FlowAction.ExitValue(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for FlowAction(0);
    swift_storeEnumTagMultiPayload();
    (*(v31 + 8))(v30, v32);
    goto LABEL_16;
  }

  if (v8 == enum case for StatementOutcome.actionConfirmation(_:))
  {
    v38 = *(v0 + 2832);
    v39 = *(v0 + 2800);
    v40 = *(v0 + 2792);
    v41 = *(v0 + 2784);
    (*(*(v0 + 2816) + 96))(v38, *(v0 + 2808));
    (*(v40 + 32))(v39, v38, v41);
    v42 = sub_6D03C();
    v43 = sub_6D44C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v42, v43, "IFFlow inferredOutcome action confirmation", v44, 2u);
    }

    v45 = *(v0 + 2752);

    sub_6C65C();
    v46 = sub_6C64C();
    v47 = *(v46 - 8);
    v48 = (*(v47 + 48))(v45, 1, v46);
    v49 = *(v0 + 2752);
    if (v48 == 1)
    {
      sub_5E20(v49, &qword_82220, &unk_71340);
    }

    else
    {
      if ((*(v47 + 88))(v49, v46) == enum case for ActionConfirmation.SystemStyle.montaraEnablement(_:))
      {
        v64 = *(v0 + 2776);
        v65 = *(v0 + 2768);
        v66 = *(v0 + 2760);
        v67 = *(v0 + 2752);
        (*(v47 + 96))(v67, v46);
        (*(v65 + 32))(v64, v67, v66);
        v68 = sub_6D03C();
        v69 = sub_6D44C();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_0, v68, v69, "IFFlow pushing Ajax enablement flow", v70, 2u);
        }

        v71 = *(v0 + 2800);
        v72 = *(v0 + 2792);
        v73 = *(v0 + 2784);
        v74 = *(v0 + 2776);
        v75 = *(v0 + 2768);
        v76 = *(v0 + 2760);
        v77 = *(v0 + 2160);

        sub_5708(&qword_81E00, &qword_70E50);
        (*(v75 + 16))(v77, v74, v76);
        sub_4B870();
        (*(v75 + 8))(v74, v76);
        (*(v72 + 8))(v71, v73);
        type metadata accessor for FlowAction(0);
        swift_storeEnumTagMultiPayload();
        goto LABEL_16;
      }

      (*(v47 + 8))(*(v0 + 2752), v46);
    }

    v94 = *(v0 + 2744);
    v95 = *(v0 + 2736);
    v96 = *(v0 + 2728);
    v97 = *(v0 + 2720);
    v98 = *(v0 + 2176);
    sub_6CD0C();
    sub_65FB0(&qword_814E8, &type metadata accessor for RequestSummary.ExecutionSource.IntelligenceFlow, &protocol conformance descriptor for RequestSummary.ExecutionSource.IntelligenceFlow);
    sub_6BE5C();
    (*(v96 + 104))(v94, enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:), v97);
    sub_4458(v98, v95);
    v99 = sub_6CD1C();
    v100 = v99 & 1;
    *(v0 + 146) = v99 & 1;
    v101 = *(v96 + 8);
    *(v0 + 2848) = v101;
    *(v0 + 2856) = (v96 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v101(v95, v97);
    v102 = sub_6D03C();
    v103 = sub_6D44C();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 67109120;
      *(v104 + 4) = v100;
      _os_log_impl(&dword_0, v102, v103, "IFFlow pushing confirmation flow, isGenAIMediaQnA: %{BOOL}d", v104, 8u);
    }

    v105 = *(v0 + 145);
    v106 = *(v0 + 2232);
    v107 = *(v0 + 2208);
    v108 = *(v0 + 2184);
    v109 = *(v0 + 2176);

    v110 = sub_5708(&qword_81DE0, &qword_70E40);
    *(v0 + 148) = *(v110 + 48);
    *(v0 + 284) = *(v110 + 64);
    sub_9878(v108, v0 + 1648);
    sub_9878(v106, v0 + 1736);
    *(v0 + 1712) = &type metadata for FeatureEnablementProvider;
    *(v0 + 1720) = &off_7F140;
    *(v0 + 1728) = v107;
    *(v0 + 1776) = v105;

    v111 = sub_659BC(v109);
    v112 = swift_task_alloc();
    *(v0 + 2864) = v112;
    *v112 = v0;
    v112[1] = sub_5F2B0;
    v19 = *(v0 + 2224);
    v20 = *(v0 + 2216);
    v21 = *(v0 + 2200);
    v22 = *(v0 + 2192);
    v23 = *(v0 + 2176);
    v24 = *(v0 + 2160);
    v25 = v111 & 1;
    goto LABEL_9;
  }

  if (v8 == enum case for StatementOutcome.toolDisambiguation(_:))
  {
    v50 = *(v0 + 2832);
    v51 = *(v0 + 2496);
    v52 = *(v0 + 2488);
    v53 = *(v0 + 2480);
    (*(*(v0 + 2816) + 96))(v50, *(v0 + 2808));
    (*(v52 + 32))(v51, v50, v53);
    v54 = sub_6D03C();
    v55 = sub_6D44C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "IFFlow pushing tool Disambiguation flow", v56, 2u);
    }

    v57 = *(v0 + 145);
    v58 = *(v0 + 2232);
    v59 = *(v0 + 2208);
    v60 = *(v0 + 2184);
    v61 = *(v0 + 2176);

    *(v0 + 2984) = *(sub_6C67C() + 16);

    *(v0 + 1236) = *(sub_5708(&qword_81DC0, &qword_70E30) + 64);
    sub_9878(v60, v0 + 696);
    sub_9878(v58, v0 + 784);
    *(v0 + 760) = &type metadata for FeatureEnablementProvider;
    *(v0 + 768) = &off_7F140;
    *(v0 + 776) = v59;
    *(v0 + 824) = v57;

    v62 = sub_659BC(v61);
    v63 = swift_task_alloc();
    *(v0 + 2992) = v63;
    *v63 = v0;
    v63[1] = sub_60C5C;
    v19 = *(v0 + 2224);
    v20 = *(v0 + 2216);
    v21 = *(v0 + 2200);
    v22 = *(v0 + 2192);
    v23 = *(v0 + 2176);
    v24 = *(v0 + 2160);
    v25 = v62 & 1;
    goto LABEL_9;
  }

  if (v8 == enum case for StatementOutcome.parameterNeedsValue(_:))
  {
    v78 = *(v0 + 2832);
    v79 = *(v0 + 2656);
    v80 = *(v0 + 2648);
    v81 = *(v0 + 2640);
    v82 = *(v0 + 2632);
    (*(*(v0 + 2816) + 96))(v78, *(v0 + 2808));
    (*(v81 + 32))(v79, v78, v82);
    (*(v81 + 16))(v80, v79, v82);
    v83 = sub_6D03C();
    v84 = sub_6D44C();
    v85 = os_log_type_enabled(v83, v84);
    v86 = *(v0 + 2648);
    v87 = *(v0 + 2640);
    v88 = *(v0 + 2632);
    if (v85)
    {
      v89 = swift_slowAlloc();
      v410 = swift_slowAlloc();
      v421[0] = v410;
      *v89 = 136315138;
      v405 = sub_6C69C();
      v91 = v90;
      v92 = *(v87 + 8);
      v92(v86, v88);
      v93 = sub_1076C(v405, v91, v421);

      *(v89 + 4) = v93;
      _os_log_impl(&dword_0, v83, v84, "IFFlow pushing needsValue flow for %s", v89, 0xCu);
      sub_9964(v410);
    }

    else
    {

      v92 = *(v87 + 8);
      v92(v86, v88);
    }

    *(v0 + 2920) = v92;
    v124 = *(v0 + 2600);
    sub_6C6EC();
    v125 = sub_6C6DC();
    v126 = *(v125 - 8);
    v127 = (*(v126 + 48))(v124, 1, v125);
    v128 = *(v0 + 2600);
    if (v127 == 1)
    {
      sub_5E20(v128, &qword_82218, &qword_71338);
    }

    else
    {
      if ((*(v126 + 88))(v128, v125) == enum case for ParameterNeedsValue.Context.photosSearch(_:))
      {
        v411 = v92;
        v143 = *(v0 + 2624);
        v144 = *(v0 + 2616);
        v145 = *(v0 + 2608);
        v146 = *(v0 + 2600);
        (*(v126 + 96))(v146, v125);
        (*(v144 + 32))(v143, v146, v145);
        v147 = sub_6D03C();
        v148 = sub_6D44C();
        if (os_log_type_enabled(v147, v148))
        {
          v149 = swift_slowAlloc();
          *v149 = 0;
          _os_log_impl(&dword_0, v147, v148, "IFFLow pushing needsValue for Image", v149, 2u);
        }

        v150 = *(v0 + 2656);
        v406 = *(v0 + 2632);
        v151 = *(v0 + 2624);
        v152 = *(v0 + 2616);
        v153 = *(v0 + 2592);
        v154 = *(v0 + 2584);
        v155 = *(v0 + 2576);
        v401 = *(v0 + 2608);
        v156 = *(v0 + 2160);

        sub_6C6AC();
        v157 = (*(v154 + 88))(v153, v155) == enum case for TypeInstance.collection(_:);
        (*(v154 + 8))(v153, v155);
        sub_5708(&qword_81E10, &qword_70E58);
        *v156 = sub_6C6BC();
        *(v156 + 8) = v158;
        *(v156 + 16) = v157;
        type metadata accessor for PromptValue(0);
        swift_storeEnumTagMultiPayload();
        sub_4B870();
        (*(v152 + 8))(v151, v401);
        v411(v150, v406);
        type metadata accessor for FlowAction(0);
        swift_storeEnumTagMultiPayload();
        goto LABEL_16;
      }

      (*(v126 + 8))(*(v0 + 2600), v125);
    }

    v178 = sub_6D03C();
    v179 = sub_6D44C();
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      *v180 = 0;
      _os_log_impl(&dword_0, v178, v179, "IFFLow pushing .promptForValue", v180, 2u);
    }

    v181 = *(v0 + 145);
    v182 = *(v0 + 2232);
    v183 = *(v0 + 2208);
    v184 = *(v0 + 2184);
    v185 = *(v0 + 2176);

    *(v0 + 964) = *(sub_5708(&qword_81E10, &qword_70E58) + 48);
    sub_9878(v184, v0 + 1104);
    sub_9878(v182, v0 + 1192);
    *(v0 + 1168) = &type metadata for FeatureEnablementProvider;
    *(v0 + 1176) = &off_7F140;
    *(v0 + 1184) = v183;
    *(v0 + 1232) = v181;

    v186 = sub_659BC(v185);
    v187 = swift_task_alloc();
    *(v0 + 2928) = v187;
    *v187 = v0;
    v187[1] = sub_60160;
    v19 = *(v0 + 2224);
    v20 = *(v0 + 2216);
    v21 = *(v0 + 2200);
    v22 = *(v0 + 2192);
    v23 = *(v0 + 2176);
    v24 = *(v0 + 2160);
    v25 = v186 & 1;
    goto LABEL_9;
  }

  if (v8 == enum case for StatementOutcome.parameterConfirmation(_:))
  {
    v113 = sub_6D03C();
    v114 = sub_6D44C();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&dword_0, v113, v114, "IFFlow pushing parameter confirmation flow", v115, 2u);
    }

    v116 = *(v0 + 145);
    v117 = *(v0 + 2232);
    v118 = *(v0 + 2208);
    v119 = *(v0 + 2184);
    v120 = *(v0 + 2176);

    v121 = sub_5708(&qword_81DE0, &qword_70E40);
    *(v0 + 556) = *(v121 + 48);
    *(v0 + 692) = *(v121 + 64);
    sub_9878(v119, v0 + 1376);
    sub_9878(v117, v0 + 1464);
    *(v0 + 1440) = &type metadata for FeatureEnablementProvider;
    *(v0 + 1448) = &off_7F140;
    *(v0 + 1456) = v118;
    *(v0 + 1504) = v116;

    v122 = sub_659BC(v120);
    v123 = swift_task_alloc();
    *(v0 + 2888) = v123;
    *v123 = v0;
    v123[1] = sub_5FA18;
    v19 = *(v0 + 2224);
    v20 = *(v0 + 2216);
    v21 = *(v0 + 2200);
    v22 = *(v0 + 2192);
    v23 = *(v0 + 2176);
    v24 = *(v0 + 2160);
    v25 = v122 & 1;
    goto LABEL_9;
  }

  if (v8 == enum case for StatementOutcome.parameterDisambiguation(_:))
  {
    v129 = *(v0 + 2832);
    v130 = *(v0 + 2712);
    v131 = *(v0 + 2704);
    v132 = *(v0 + 2696);
    (*(*(v0 + 2816) + 96))(v129, *(v0 + 2808));
    (*(v131 + 32))(v130, v129, v132);
    v133 = sub_6D03C();
    v134 = sub_6D44C();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&dword_0, v133, v134, "IFFlow pushing parameter disambiguation flow", v135, 2u);
    }

    v136 = *(v0 + 145);
    v137 = *(v0 + 2232);
    v138 = *(v0 + 2208);
    v139 = *(v0 + 2184);
    v140 = *(v0 + 2176);

    *(v0 + 2872) = *(sub_6C8AC() + 16);

    *(v0 + 420) = *(sub_5708(&qword_81DC0, &qword_70E30) + 64);
    sub_9878(v139, v0 + 1512);
    sub_9878(v137, v0 + 1600);
    *(v0 + 1576) = &type metadata for FeatureEnablementProvider;
    *(v0 + 1584) = &off_7F140;
    *(v0 + 1592) = v138;
    *(v0 + 1640) = v136;

    v141 = sub_659BC(v140);
    v142 = swift_task_alloc();
    *(v0 + 2880) = v142;
    *v142 = v0;
    v142[1] = sub_5F67C;
    v19 = *(v0 + 2224);
    v20 = *(v0 + 2216);
    v21 = *(v0 + 2200);
    v22 = *(v0 + 2192);
    v23 = *(v0 + 2176);
    v24 = *(v0 + 2160);
    v25 = v141 & 1;
    goto LABEL_9;
  }

  if (v8 == enum case for StatementOutcome.parameterNotAllowed(_:))
  {
    v159 = *(v0 + 2832);
    v160 = *(v0 + 2688);
    v161 = *(v0 + 2680);
    v162 = *(v0 + 2672);
    v163 = *(v0 + 2664);
    (*(*(v0 + 2816) + 96))(v159, *(v0 + 2808));
    (*(v162 + 32))(v160, v159, v163);
    (*(v162 + 16))(v161, v160, v163);
    v164 = sub_6D03C();
    v165 = sub_6D44C();
    v166 = os_log_type_enabled(v164, v165);
    v167 = *(v0 + 2680);
    v168 = *(v0 + 2672);
    v169 = *(v0 + 2664);
    if (v166)
    {
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v421[0] = v171;
      *v170 = 136315138;
      v412 = sub_6C70C();
      v173 = v172;
      v176 = *(v168 + 8);
      v175 = v168 + 8;
      v174 = v176;
      v176(v167, v169);
      v177 = sub_1076C(v412, v173, v421);

      *(v170 + 4) = v177;
      _os_log_impl(&dword_0, v164, v165, "IFFlow received parameterNotAllowed pushing needsValue flow for %s", v170, 0xCu);
      sub_9964(v171);
    }

    else
    {

      v195 = *(v168 + 8);
      v175 = v168 + 8;
      v174 = v195;
      v195(v167, v169);
    }

    *(v0 + 2904) = v174;
    *(v0 + 2896) = v175;
    v196 = *(v0 + 145);
    v197 = *(v0 + 2232);
    v198 = *(v0 + 2208);
    v199 = *(v0 + 2184);
    v200 = *(v0 + 2176);
    *(v0 + 828) = *(sub_5708(&qword_81E10, &qword_70E58) + 48);
    sub_9878(v199, v0 + 1240);
    sub_9878(v197, v0 + 1328);
    *(v0 + 1304) = &type metadata for FeatureEnablementProvider;
    *(v0 + 1312) = &off_7F140;
    *(v0 + 1320) = v198;
    *(v0 + 1368) = v196;

    LOBYTE(v197) = sub_659BC(v200);
    v201 = swift_task_alloc();
    *(v0 + 2912) = v201;
    *v201 = v0;
    v201[1] = sub_5FDB4;
    v19 = *(v0 + 2224);
    v20 = *(v0 + 2216);
    v21 = *(v0 + 2200);
    v22 = *(v0 + 2192);
    v23 = *(v0 + 2176);
    v24 = *(v0 + 2160);
    v25 = v197 & 1;
    goto LABEL_9;
  }

  if (v8 == enum case for StatementOutcome.parameterCandidatesNotFound(_:))
  {
    v188 = *(v0 + 2832);
    v189 = *(v0 + 2568);
    v190 = *(v0 + 2544);
    v191 = *(v0 + 2536);
    v192 = *(v0 + 2504);
    (*(*(v0 + 2816) + 96))(v188, *(v0 + 2808));
    (*(v190 + 32))(v189, v188, v191);
    sub_6C4CC();
    v193 = sub_6C4AC();
    v194 = *(v193 - 8);
    if ((*(v194 + 48))(v192, 1, v193) == 1)
    {
      sub_5E20(*(v0 + 2504), &qword_817E0, &qword_71300);
    }

    else
    {
      v212 = *(v0 + 2824);
      v213 = *(v0 + 2816);
      v214 = *(v0 + 2528);
      v215 = *(v0 + 2520);
      v407 = *(v0 + 2808);
      v413 = *(v0 + 2512);
      v216 = *(v0 + 2504);
      sub_4B4CC(v212);
      sub_6C47C();
      (*(v213 + 8))(v212, v407);
      (*(v194 + 8))(v216, v193);
      v217 = (*(v215 + 88))(v214, v413);
      v218 = enum case for ResponseOutput.ResponseType.completion(_:);
      (*(v215 + 8))(v214, v413);
      if (v217 == v218)
      {
        (*(*(v0 + 2544) + 16))(*(v0 + 2560), *(v0 + 2568), *(v0 + 2536));
        v219 = sub_6D03C();
        v220 = sub_6D44C();
        v221 = os_log_type_enabled(v219, v220);
        v222 = *(v0 + 2560);
        v223 = *(v0 + 2544);
        v224 = *(v0 + 2536);
        if (v221)
        {
          v225 = swift_slowAlloc();
          v226 = swift_slowAlloc();
          v421[0] = v226;
          *v225 = 136315138;
          v414 = sub_6C96C();
          v228 = v227;
          v231 = *(v223 + 8);
          v230 = v223 + 8;
          v229 = v231;
          v231(v222, v224);
          v232 = sub_1076C(v414, v228, v421);

          *(v225 + 4) = v232;
          _os_log_impl(&dword_0, v219, v220, "IFFlow publishing parameterCandidatesNotFound error output for %s", v225, 0xCu);
          sub_9964(v226);
        }

        else
        {

          v289 = *(v223 + 8);
          v230 = v223 + 8;
          v229 = v289;
          v289(v222, v224);
        }

        *(v0 + 2944) = v229;
        *(v0 + 2936) = v230;
        v290 = *(v0 + 145);
        v291 = *(v0 + 2232);
        v292 = *(v0 + 2208);
        v293 = *(v0 + 2176);
        sub_9878(*(v0 + 2184), v0 + 968);
        sub_9878(v291, v0 + 1056);
        *(v0 + 1032) = &type metadata for FeatureEnablementProvider;
        *(v0 + 1040) = &off_7F140;
        *(v0 + 1048) = v292;
        *(v0 + 1096) = v290;

        LOBYTE(v291) = sub_659BC(v293);
        v294 = swift_task_alloc();
        *(v0 + 2952) = v294;
        *v294 = v0;
        v294[1] = sub_60510;
        v19 = *(v0 + 2224);
        v20 = *(v0 + 2216);
        v21 = *(v0 + 2200);
        v22 = *(v0 + 2192);
        v23 = *(v0 + 2176);
        v24 = v0 + 2080;
        v25 = v291 & 1;
        goto LABEL_9;
      }
    }

    (*(*(v0 + 2544) + 16))(*(v0 + 2552), *(v0 + 2568), *(v0 + 2536));
    v233 = sub_6D03C();
    v234 = sub_6D44C();
    v235 = os_log_type_enabled(v233, v234);
    v236 = *(v0 + 2552);
    v237 = *(v0 + 2544);
    v238 = *(v0 + 2536);
    if (v235)
    {
      v239 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      v421[0] = v240;
      *v239 = 136315138;
      v415 = sub_6C96C();
      v242 = v241;
      v245 = *(v237 + 8);
      v244 = v237 + 8;
      v243 = v245;
      v245(v236, v238);
      v246 = sub_1076C(v415, v242, v421);

      *(v239 + 4) = v246;
      _os_log_impl(&dword_0, v233, v234, "IFFlow pushing needsValue flow for %s", v239, 0xCu);
      sub_9964(v240);
    }

    else
    {

      v261 = *(v237 + 8);
      v244 = v237 + 8;
      v243 = v261;
      v261(v236, v238);
    }

    *(v0 + 2968) = v243;
    *(v0 + 2960) = v244;
    v262 = *(v0 + 145);
    v263 = *(v0 + 2232);
    v264 = *(v0 + 2208);
    v265 = *(v0 + 2184);
    v266 = *(v0 + 2176);
    *(v0 + 1100) = *(sub_5708(&qword_81E10, &qword_70E58) + 48);
    sub_9878(v265, v0 + 832);
    sub_9878(v263, v0 + 920);
    *(v0 + 896) = &type metadata for FeatureEnablementProvider;
    *(v0 + 904) = &off_7F140;
    *(v0 + 912) = v264;
    *(v0 + 960) = v262;

    LOBYTE(v263) = sub_659BC(v266);
    v267 = swift_task_alloc();
    *(v0 + 2976) = v267;
    *v267 = v0;
    v267[1] = sub_608B0;
    v19 = *(v0 + 2224);
    v20 = *(v0 + 2216);
    v21 = *(v0 + 2200);
    v22 = *(v0 + 2192);
    v23 = *(v0 + 2176);
    v24 = *(v0 + 2160);
    v25 = v263 & 1;
LABEL_9:

    return sub_14D74(v24, v23, v22, v21, v20, v19, v25);
  }

  if (v8 == enum case for StatementOutcome.actionRequirement(_:))
  {
    v202 = *(v0 + 2832);
    v203 = *(v0 + 2296);
    v204 = *(v0 + 2288);
    v205 = *(v0 + 2280);
    v206 = *(v0 + 145);
    v207 = *(v0 + 2232);
    v208 = *(v0 + 2208);
    v209 = *(v0 + 2184);
    v210 = *(v0 + 2176);
    (*(*(v0 + 2816) + 96))(v202, *(v0 + 2808));
    (*(v204 + 32))(v203, v202, v205);
    sub_9878(v209, v0 + 16);
    sub_9878(v207, v0 + 104);
    *(v0 + 80) = &type metadata for FeatureEnablementProvider;
    *(v0 + 88) = &off_7F140;
    *(v0 + 96) = v208;
    *(v0 + 144) = v206;

    LOBYTE(v202) = sub_659BC(v210);
    v211 = swift_task_alloc();
    *(v0 + 3056) = v211;
    *v211 = v0;
    v211[1] = sub_61F10;
    v19 = *(v0 + 2224);
    v20 = *(v0 + 2216);
    v21 = *(v0 + 2200);
    v22 = *(v0 + 2192);
    v23 = *(v0 + 2176);
    v24 = v0 + 1920;
    v25 = v202 & 1;
    goto LABEL_9;
  }

  if (v8 == enum case for StatementOutcome.valueDisambiguation(_:))
  {
    v247 = *(v0 + 2832);
    v248 = *(v0 + 2472);
    v249 = *(v0 + 2464);
    v250 = *(v0 + 2456);
    (*(*(v0 + 2816) + 96))(v247, *(v0 + 2808));
    (*(v249 + 32))(v248, v247, v250);
    v251 = sub_6D03C();
    v252 = sub_6D44C();
    if (os_log_type_enabled(v251, v252))
    {
      v253 = swift_slowAlloc();
      *v253 = 0;
      _os_log_impl(&dword_0, v251, v252, "IFFlow pushing value Disambiguation flow", v253, 2u);
    }

    v254 = *(v0 + 145);
    v255 = *(v0 + 2232);
    v256 = *(v0 + 2208);
    v257 = *(v0 + 2184);
    v258 = *(v0 + 2176);

    *(v0 + 3000) = *(sub_6C7BC() + 16);

    *(v0 + 1372) = *(sub_5708(&qword_81DC0, &qword_70E30) + 64);
    sub_9878(v257, v0 + 560);
    sub_9878(v255, v0 + 648);
    *(v0 + 624) = &type metadata for FeatureEnablementProvider;
    *(v0 + 632) = &off_7F140;
    *(v0 + 640) = v256;
    *(v0 + 688) = v254;

    v259 = sub_659BC(v258);
    v260 = swift_task_alloc();
    *(v0 + 3008) = v260;
    *v260 = v0;
    v260[1] = sub_60FF8;
    v19 = *(v0 + 2224);
    v20 = *(v0 + 2216);
    v21 = *(v0 + 2200);
    v22 = *(v0 + 2192);
    v23 = *(v0 + 2176);
    v24 = *(v0 + 2160);
    v25 = v259 & 1;
    goto LABEL_9;
  }

  if (v8 == enum case for StatementOutcome.failure(_:))
  {
    v268 = *(v0 + 2832);
    v269 = *(v0 + 2448);
    v270 = *(v0 + 2408);
    v271 = *(v0 + 2400);
    v272 = *(v0 + 2392);
    v273 = *(v0 + 2384);
    v274 = *(v0 + 2376);
    (*(*(v0 + 2816) + 96))(v268, *(v0 + 2808));
    v275 = *(v270 + 32);
    *(v0 + 3016) = v275;
    *(v0 + 3024) = (v270 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v275(v269, v268, v271);
    sub_6BF5C();
    v276 = (*(v273 + 88))(v272, v274);
    if (v276 == enum case for ActionFailure.Failure.developerDefinedError(_:))
    {
      v277 = *(*(v0 + 2408) + 16);
      v277(*(v0 + 2424), *(v0 + 2448), *(v0 + 2400));
      v278 = sub_6D03C();
      v279 = sub_6D44C();
      if (os_log_type_enabled(v278, v279))
      {
        v280 = *(v0 + 2432);
        v281 = *(v0 + 2424);
        v282 = *(v0 + 2408);
        v283 = *(v0 + 2400);
        v284 = swift_slowAlloc();
        v416 = swift_slowAlloc();
        v421[0] = v416;
        *v284 = 136315138;
        v277(v280, v281, v283);
        v285 = sub_6D2EC();
        v287 = v286;
        (*(v282 + 8))(v281, v283);
        v288 = sub_1076C(v285, v287, v421);

        *(v284 + 4) = v288;
        _os_log_impl(&dword_0, v278, v279, "IFFlow received developer defined error. Producing output for %s", v284, 0xCu);
        sub_9964(v416);
      }

      else
      {
        v331 = *(v0 + 2424);
        v332 = *(v0 + 2408);
        v333 = *(v0 + 2400);

        (*(v332 + 8))(v331, v333);
      }

      v334 = *(v0 + 145);
      v335 = *(v0 + 2232);
      v336 = *(v0 + 2208);
      v337 = *(v0 + 2176);
      sub_9878(*(v0 + 2184), v0 + 288);
      sub_9878(v335, v0 + 376);
      *(v0 + 352) = &type metadata for FeatureEnablementProvider;
      *(v0 + 360) = &off_7F140;
      *(v0 + 368) = v336;
      *(v0 + 416) = v334;

      LOBYTE(v335) = sub_659BC(v337);
      v338 = swift_task_alloc();
      *(v0 + 3040) = v338;
      *v338 = v0;
      v338[1] = sub_61750;
      v19 = *(v0 + 2224);
      v20 = *(v0 + 2216);
      v21 = *(v0 + 2200);
      v22 = *(v0 + 2192);
      v23 = *(v0 + 2176);
      v24 = v0 + 2000;
      v25 = v335 & 1;
      goto LABEL_9;
    }

    if (v276 == enum case for ActionFailure.Failure.unableToHandleRequest(_:))
    {
      v307 = *(v0 + 2392);
      v308 = *(v0 + 2320);
      v309 = *(v0 + 2312);
      v310 = *(v0 + 2304);
      (*(*(v0 + 2384) + 96))(v307, *(v0 + 2376));
      (*(v309 + 32))(v308, v307, v310);
      v311 = sub_6D03C();
      v312 = sub_6D46C();
      if (os_log_type_enabled(v311, v312))
      {
        v313 = swift_slowAlloc();
        *v313 = 0;
        _os_log_impl(&dword_0, v311, v312, "IntelligenceFlow couldn't handle the request, falling back to SiriX.", v313, 2u);
      }

      v314 = *(v0 + 2408);
      v403 = *(v0 + 2400);
      v408 = *(v0 + 2448);
      v315 = *(v0 + 2344);
      v316 = *(v0 + 2336);
      v317 = *(v0 + 2328);
      v318 = *(v0 + 2320);
      v319 = *(v0 + 2312);
      v417 = *(v0 + 2304);
      v320 = *(v0 + 2160);

      *(swift_task_alloc() + 16) = v318;
      sub_65FB0(&qword_81510, &type metadata accessor for SiriXRedirectContext, &protocol conformance descriptor for SiriXRedirectContext);
      sub_6BE5C();

      (*(v314 + 8))(v408, v403);
      (*(v316 + 32))(v320, v315, v317);
      type metadata accessor for FlowAction(0);
      swift_storeEnumTagMultiPayload();
      (*(v319 + 8))(v318, v417);
      goto LABEL_16;
    }

    if (v276 == enum case for ActionFailure.Failure.noMatchingTool(_:))
    {
      v339 = sub_6D03C();
      v340 = sub_6D46C();
      if (os_log_type_enabled(v339, v340))
      {
        v341 = swift_slowAlloc();
        *v341 = 0;
        _os_log_impl(&dword_0, v339, v340, "IntelligenceFlow couldn't find any matching tools, falling back to SiriX", v341, 2u);
      }

      v342 = *(v0 + 2408);
      v404 = *(v0 + 2400);
      v409 = *(v0 + 2448);
      v343 = *(v0 + 2368);
      v418 = *(v0 + 2360);
      v344 = *(v0 + 2352);
      v345 = *(v0 + 2344);
      v346 = *(v0 + 2336);
      v347 = *(v0 + 2328);
      v402 = *(v0 + 2160);

      sub_65FB0(&qword_82228, &type metadata accessor for SiriXRedirectContext.RedirectReason.NoMatchingTool, &protocol conformance descriptor for SiriXRedirectContext.RedirectReason.NoMatchingTool);
      sub_6BE6C();
      sub_6BE4C();

      *(swift_task_alloc() + 16) = v343;
      sub_65FB0(&qword_81510, &type metadata accessor for SiriXRedirectContext, &protocol conformance descriptor for SiriXRedirectContext);
      sub_6BE5C();

      (*(v342 + 8))(v409, v404);
      (*(v346 + 32))(v402, v345, v347);
      type metadata accessor for FlowAction(0);
      swift_storeEnumTagMultiPayload();
      (*(v418 + 8))(v343, v344);
      goto LABEL_16;
    }

    if (v276 == enum case for ActionFailure.Failure.actionCanceled(_:))
    {
      v348 = *(*(v0 + 2408) + 16);
      v348(*(v0 + 2440), *(v0 + 2448), *(v0 + 2400));
      v349 = sub_6D03C();
      v350 = sub_6D44C();
      v351 = os_log_type_enabled(v349, v350);
      v352 = *(v0 + 2440);
      if (v351)
      {
        v353 = *(v0 + 2432);
        v354 = *(v0 + 2408);
        v355 = *(v0 + 2400);
        v356 = swift_slowAlloc();
        v419 = swift_slowAlloc();
        v421[0] = v419;
        *v356 = 136315138;
        v348(v353, v352, v355);
        v357 = sub_6D2EC();
        v359 = v358;
        (*(v354 + 8))(v352, v355);
        v360 = sub_1076C(v357, v359, v421);

        *(v356 + 4) = v360;
        _os_log_impl(&dword_0, v349, v350, "IFFlow Publishing failure output for %s", v356, 0xCu);
        sub_9964(v419);
      }

      else
      {
        v368 = *(v0 + 2408);
        v369 = *(v0 + 2400);

        (*(v368 + 8))(v352, v369);
      }

      v370 = *(v0 + 145);
      v371 = *(v0 + 2232);
      v372 = *(v0 + 2208);
      v373 = *(v0 + 2176);
      sub_9878(*(v0 + 2184), v0 + 424);
      sub_9878(v371, v0 + 512);
      *(v0 + 488) = &type metadata for FeatureEnablementProvider;
      *(v0 + 496) = &off_7F140;
      *(v0 + 504) = v372;
      *(v0 + 552) = v370;

      LOBYTE(v371) = sub_659BC(v373);
      v374 = swift_task_alloc();
      *(v0 + 3032) = v374;
      *v374 = v0;
      v374[1] = sub_61394;
      v19 = *(v0 + 2224);
      v20 = *(v0 + 2216);
      v21 = *(v0 + 2200);
      v22 = *(v0 + 2192);
      v23 = *(v0 + 2176);
      v24 = v0 + 2040;
      v25 = v371 & 1;
      goto LABEL_9;
    }

    if (v276 == enum case for ActionFailure.Failure.searchSucceededNoMatchingTool(_:))
    {
      v361 = *(v0 + 2448);
      v362 = *(v0 + 2408);
      v363 = *(v0 + 2400);
      v364 = *(v0 + 2344);
      v365 = *(v0 + 2336);
      v366 = *(v0 + 2328);
      v367 = *(v0 + 2160);
      sub_65FB0(&qword_81510, &type metadata accessor for SiriXRedirectContext, &protocol conformance descriptor for SiriXRedirectContext);
      sub_6BE5C();
      (*(v362 + 8))(v361, v363);
      (*(v365 + 32))(v367, v364, v366);
      type metadata accessor for FlowAction(0);
    }

    else
    {
      if (v276 != enum case for ActionFailure.Failure.valueSelectionRequired(_:))
      {
        v381 = *(*(v0 + 2408) + 16);
        v381(*(v0 + 2416), *(v0 + 2448), *(v0 + 2400));
        v382 = sub_6D03C();
        v383 = sub_6D46C();
        if (os_log_type_enabled(v382, v383))
        {
          v384 = *(v0 + 2432);
          v385 = *(v0 + 2416);
          v386 = *(v0 + 2408);
          v387 = *(v0 + 2400);
          v388 = swift_slowAlloc();
          v420 = swift_slowAlloc();
          v421[0] = v420;
          *v388 = 136315138;
          v381(v384, v385, v387);
          v389 = sub_6D2EC();
          v391 = v390;
          (*(v386 + 8))(v385, v387);
          v392 = sub_1076C(v389, v391, v421);

          *(v388 + 4) = v392;
          _os_log_impl(&dword_0, v382, v383, "IFFlow received unsupported failure %s", v388, 0xCu);
          sub_9964(v420);
        }

        else
        {
          v393 = *(v0 + 2416);
          v394 = *(v0 + 2408);
          v395 = *(v0 + 2400);

          (*(v394 + 8))(v393, v395);
        }

        v396 = *(v0 + 145);
        v397 = *(v0 + 2232);
        v398 = *(v0 + 2208);
        v399 = *(v0 + 2176);
        sub_9878(*(v0 + 2184), v0 + 152);
        sub_9878(v397, v0 + 240);
        *(v0 + 216) = &type metadata for FeatureEnablementProvider;
        *(v0 + 224) = &off_7F140;
        *(v0 + 232) = v398;
        *(v0 + 280) = v396;

        LOBYTE(v397) = sub_659BC(v399);
        v400 = swift_task_alloc();
        *(v0 + 3048) = v400;
        *v400 = v0;
        v400[1] = sub_61B30;
        v19 = *(v0 + 2224);
        v20 = *(v0 + 2216);
        v21 = *(v0 + 2200);
        v22 = *(v0 + 2192);
        v23 = *(v0 + 2176);
        v24 = v0 + 1960;
        v25 = v397 & 1;
        goto LABEL_9;
      }

      v375 = sub_6D03C();
      v376 = sub_6D46C();
      if (os_log_type_enabled(v375, v376))
      {
        v377 = swift_slowAlloc();
        *v377 = 0;
        _os_log_impl(&dword_0, v375, v376, "IntelligenceFlow couldn't handle the request due to .valueSelectionRequired, falling back to SiriX.", v377, 2u);
      }

      v378 = *(v0 + 2448);
      v379 = *(v0 + 2408);
      v380 = *(v0 + 2400);

      sub_65FB0(&qword_81510, &type metadata accessor for SiriXRedirectContext, &protocol conformance descriptor for SiriXRedirectContext);
      sub_6BE5C();
      (*(v379 + 8))(v378, v380);
      type metadata accessor for FlowAction(0);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(*(v0 + 2248) + 16))(*(v0 + 2256), *(v0 + 2176), *(v0 + 2240));
    v295 = sub_6D03C();
    v296 = sub_6D46C();
    if (os_log_type_enabled(v295, v296))
    {
      v297 = *(v0 + 2824);
      v298 = *(v0 + 2256);
      v299 = *(v0 + 2248);
      v300 = *(v0 + 2240);
      v301 = swift_slowAlloc();
      v302 = swift_slowAlloc();
      v421[0] = v302;
      *v301 = 136315138;
      sub_4B4CC(v297);
      v303 = sub_6D2EC();
      v305 = v304;
      (*(v299 + 8))(v298, v300);
      v306 = sub_1076C(v303, v305, v421);

      *(v301 + 4) = v306;
      _os_log_impl(&dword_0, v295, v296, "IFFlow received unsupported outcomeType %s", v301, 0xCu);
      sub_9964(v302);
    }

    else
    {
      v321 = *(v0 + 2256);
      v322 = *(v0 + 2248);
      v323 = *(v0 + 2240);

      (*(v322 + 8))(v321, v323);
    }

    v324 = *(v0 + 2832);
    v325 = *(v0 + 2816);
    v326 = *(v0 + 2808);
    v327 = *(v0 + 2272);
    v328 = *(v0 + 2168);
    v329 = *(v0 + 2160);
    v330 = sub_6C83C();
    (*(*(v330 - 8) + 16))(v327, v328, v330);
    swift_storeEnumTagMultiPayload();
    sub_66050(v327, v329, type metadata accessor for IFFlowError);
    type metadata accessor for FlowAction.ExitValue(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for FlowAction(0);
    swift_storeEnumTagMultiPayload();
    (*(v325 + 8))(v324, v326);
  }

LABEL_16:

  v37 = *(v0 + 8);

  return v37();
}