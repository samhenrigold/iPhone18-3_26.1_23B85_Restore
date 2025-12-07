uint64_t sub_14C8()
{
  v0 = sub_42A4(&qword_C198, &qword_49D8);
  v1 = sub_1604(v0);
  __chkstk_darwin(v1);
  v3 = &v7 - v2;
  v4 = sub_4688();
  sub_15CC(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_3044(0, 0, v3, &unk_49E8, v5);
}

uint64_t sub_1590()
{
  swift_unknownObjectRelease();
  v0 = sub_1F90();

  return _swift_deallocObject(v0);
}

uint64_t sub_1610()
{
  sub_1B34();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E70;

  return sub_1A80();
}

uint64_t sub_1698()
{
  sub_1D70();
  v0 = swift_task_alloc();
  v1 = sub_1FB0(v0);
  *v1 = v2;
  v3 = sub_4428(v1);

  return v4(v3);
}

uint64_t sub_172C()
{

  return swift_task_alloc();
}

uint64_t sub_1750(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D90;

  return v6(a1);
}

uint64_t sub_1848(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_42A4(a2, a3);
  sub_20A4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_18D8()
{
  sub_1D70();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2AEC;

  return sub_197C();
}

uint64_t sub_197C()
{
  sub_1B34();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_4648();
  v1[5] = v4;
  sub_15F4(v4);
  v1[6] = v5;
  v1[7] = sub_172C();
  v6 = sub_45D8();
  v1[8] = v6;
  sub_15F4(v6);
  v1[9] = v7;
  v1[10] = sub_172C();
  v8 = sub_1B50();

  return _swift_task_switch(v8);
}

uint64_t sub_1A80()
{
  sub_1B34();
  v1 = sub_4648();
  v0[2] = v1;
  sub_15F4(v1);
  v0[3] = v2;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v3 = sub_1B50();

  return _swift_task_switch(v3);
}

uint64_t sub_1B60()
{
  if (sub_4598())
  {
    v1 = swift_task_alloc();
    *(v0 + 48) = v1;
    *v1 = v0;
    v1[1] = sub_2E68;

    return static StaticSuggestionDialogCache.prewarm()();
  }

  else
  {
    sub_4628();
    v2 = sub_4638();
    v3 = sub_4698();
    if (sub_2240(v3))
    {
      sub_1744();
      v4 = swift_slowAlloc();
      sub_15C0(v4);
      sub_1D50(&dword_0, v5, v6, "StaticSuggestionDialogCache.shouldWarmup() returned false. Not warming up StaticDialogCache");
      sub_1D38();
    }

    v7 = sub_1FA0();
    v8(v7);
    sub_4588();
    if (sub_4568())
    {
      sub_4578();
    }

    else
    {
      sub_4628();
      v9 = sub_4638();
      v10 = sub_4698();
      if (sub_2240(v10))
      {
        sub_1744();
        v11 = swift_slowAlloc();
        sub_15C0(v11);
        sub_1D50(&dword_0, v12, v13, "CoreSpeechPolicyProvider.shouldWarmup() returned false. Not warming up CoreSpeechPolicyProvider");
        sub_1D38();
      }

      v14 = sub_1FA0();
      v15(v14);
    }

    sub_1F74();

    return v16();
  }
}

void sub_1D50(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1D90()
{
  sub_1B34();
  sub_1D44();
  v1 = *v0;
  sub_1F64();
  *v2 = v1;

  sub_1F80();

  return v3();
}

uint64_t sub_1E70()
{
  sub_1B34();
  sub_1D44();
  v1 = *v0;
  sub_1F64();
  *v2 = v1;

  sub_1F74();

  return v3();
}

uint64_t sub_1FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1D7C();
  v10 = swift_task_alloc();
  v11 = sub_1FB0(v10);
  *v11 = v12;
  v11[1] = sub_2AEC;
  sub_1A70();

  return sub_20B4(v13, v14, v15, v16, a5, a6, a7, a8, v22, a9);
}

uint64_t sub_20B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  sub_1B34();
  *(v11 + 136) = a10;
  *(v11 + 144) = v10;
  *(v11 + 120) = a9;
  *(v11 + 104) = v12;
  *(v11 + 112) = v13;
  *(v11 + 88) = v14;
  *(v11 + 96) = v15;
  *(v11 + 72) = v16;
  *(v11 + 80) = v17;
  *(v11 + 56) = v18;
  *(v11 + 64) = v19;
  v20 = sub_4648();
  *(v11 + 152) = v20;
  sub_15F4(v20);
  *(v11 + 160) = v21;
  *(v11 + 168) = sub_172C();
  v22 = sub_44E8();
  *(v11 + 176) = v22;
  sub_15F4(v22);
  *(v11 + 184) = v23;
  *(v11 + 192) = sub_172C();
  v24 = sub_42A4(&qword_C180, &qword_49A8);
  sub_1604(v24);
  *(v11 + 200) = swift_task_alloc();
  *(v11 + 208) = swift_task_alloc();
  v25 = sub_45C8();
  *(v11 + 216) = v25;
  sub_15F4(v25);
  *(v11 + 224) = v26;
  *(v11 + 232) = sub_172C();
  v27 = sub_1B50();
  return sub_225C(v27);
}

BOOL sub_2240(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_225C(uint64_t a1)
{

  return _swift_task_switch(a1);
}

uint64_t sub_2270()
{
  v0 = sub_42A4(&qword_C1A8, qword_4A08);
  v1 = sub_1604(v0);
  __chkstk_darwin(v1);
  v3 = v22 - v2;
  v4 = sub_4648();
  sub_27B8();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1B40();
  v10 = v9 - v8;
  sub_4628();
  v11 = sub_4638();
  v12 = sub_46A8();
  if (os_log_type_enabled(v11, v12))
  {
    sub_1744();
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "getting bridge facade from SiriKit runtime.", v13, 2u);
    sub_1D38();
  }

  (*(v6 + 8))(v10, v4);
  sub_4558();
  v14 = enum case for TaskInitiatedParty.user(_:);
  sub_4618();
  sub_20A4();
  (*(v15 + 104))(v3, v14);
  v16 = enum case for AssistantTurnState.taskComplete(_:);
  v17 = sub_4608();
  sub_20A4();
  (*(v18 + 104))(v3, v16, v17);
  sub_15CC(v3, 0, 1, v17);
  v19 = sub_4508();
  swift_allocObject();
  v20 = sub_44F8();
  v22[4] = v19;
  v22[5] = &protocol witness table for SiriRuntimeSuggestionsAPIClientProvider;
  v22[1] = v20;
  return sub_4528();
}

uint64_t sub_24C8()
{
  v0[30] = (*(v0[18] + 16))();
  v1 = v0[13];
  sub_4468();
  sub_4478();
  sub_4488();
  sub_45B8();
  if (v1)
  {
    v2 = sub_45E8();
    swift_allocObject();

    v3 = sub_45F8();
    v4 = sub_43E0(&qword_C190, 255, &type metadata accessor for DomainOwner, &protocol conformance descriptor for DomainOwner);
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v4 = 0;
    v0[3] = 0;
    v0[4] = 0;
  }

  v0[2] = v3;
  v0[5] = v2;
  v0[6] = v4;
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_27CC;
  v6 = v0[26];
  v7 = v0[16];
  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[9];
  v11 = v0[10];
  v12 = v0[8];

  return SiriSuggestionsFacade.doSiriHints(requestId:applicationSessionId:sourceOwner:intentProperties:verb:executionProperties:executionContextData:suggestionCallback:)(v6, v12, v10, v11, v0 + 2, v8, v9, v7);
}

uint64_t sub_27CC()
{
  sub_1B34();
  sub_1D44();
  v3 = v2;
  v4 = *v1;
  sub_1F64();
  *v5 = v4;
  *(v3 + 256) = v0;

  sub_1848(v3 + 16, &qword_C188, &qword_49C8);
  if (v0)
  {
    v6 = sub_36C0;
  }

  else
  {
    v6 = sub_28E8;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_28E8()
{
  v1 = v0[25];
  v2 = v0[22];
  sub_42EC(v0[26], v1, &qword_C180, &qword_49A8);
  v3 = sub_18A0(v1, 1, v2);
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[26];
  if (v3 == 1)
  {
    v8 = v0[7];

    sub_1848(v7, &qword_C180, &qword_49A8);
    (*(v6 + 8))(v4, v5);
    v9 = sub_44B8();
    v10 = v8;
    v11 = 1;
  }

  else
  {
    v12 = v0[24];
    v14 = v0[22];
    v13 = v0[23];
    v18 = v0[29];
    v15 = v0[7];
    (*(v13 + 32))(v12, v0[25], v14);
    sub_44D8();
    sub_44C8();
    sub_44A8();

    (*(v13 + 8))(v12, v14);
    sub_1848(v7, &qword_C180, &qword_49A8);
    (*(v6 + 8))(v18, v5);
    v9 = sub_44B8();
    v10 = v15;
    v11 = 0;
  }

  sub_15CC(v10, v11, 1, v9);
  sub_2ACC();

  sub_1F80();

  return v16();
}

uint64_t sub_2ACC()
{
}

uint64_t sub_2AF0()
{
  *(v0 + 88) = (*(*(v0 + 32) + 16))();
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  **(v0 + 80) = v2;
  (*(v1 + 104))();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_3788;
  v5 = *(v0 + 80);
  v6 = *(v0 + 24);

  return SiriSuggestionsFacade.submitEngagement(for:with:)(v5, v6);
}

uint64_t sub_2CB4()
{

  v0 = sub_1F90();

  return _swift_deallocObject(v0);
}

uint64_t sub_2CE8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_4648();
  sub_27B8();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1B40();
  v10 = v9 - v8;
  sub_4628();
  v11 = sub_4638();
  v12 = sub_46A8();
  if (os_log_type_enabled(v11, v12))
  {
    sub_1744();
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Returning the suggestions SiriKitExecutor bridge", v13, 2u);
    sub_1D38();
  }

  (*(v6 + 8))(v10, v4);
  inited = swift_initStaticObject();
  sub_14C8();
  a1[3] = v2;
  result = sub_43E0(&qword_C1A0, v15, type metadata accessor for SiriKitExecutorBridge, &unk_4948);
  a1[4] = result;
  *a1 = inited;
  return result;
}

uint64_t sub_2E68()
{
  sub_1B34();
  sub_1D44();
  v1 = *v0;
  sub_1F64();
  *v2 = v1;

  v3 = sub_1B50();

  return _swift_task_switch(v3);
}

uint64_t sub_2F4C()
{
  sub_4588();
  if (sub_4568())
  {
    sub_4578();
  }

  else
  {
    sub_4628();
    v0 = sub_4638();
    v1 = sub_4698();
    if (sub_2240(v1))
    {
      sub_1744();
      v2 = swift_slowAlloc();
      sub_15C0(v2);
      sub_1D50(&dword_0, v3, v4, "CoreSpeechPolicyProvider.shouldWarmup() returned false. Not warming up CoreSpeechPolicyProvider");
      sub_1D38();
    }

    v5 = sub_1FA0();
    v6(v5);
  }

  sub_1F74();

  return v7();
}

uint64_t sub_3044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_42A4(&qword_C198, &qword_49D8);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_42EC(a3, v24 - v10, &qword_C198, &qword_49D8);
  v12 = sub_4688();
  v13 = sub_18A0(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1848(v11, &qword_C198, &qword_49D8);
  }

  else
  {
    sub_4678();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_4668();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_4658() + 32;
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

      sub_1848(a3, &qword_C198, &qword_49D8);

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

  sub_1848(a3, &qword_C198, &qword_49D8);
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

uint64_t sub_3328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  sub_1B34();
  *(v12 + 104) = a11;
  *(v12 + 112) = v11;
  *(v12 + 96) = a10;
  *(v12 + 80) = a9;
  *(v12 + 64) = v13;
  *(v12 + 72) = v14;
  *(v12 + 48) = v15;
  *(v12 + 56) = v16;
  *(v12 + 32) = v17;
  *(v12 + 40) = v18;
  *(v12 + 16) = v19;
  *(v12 + 24) = v20;
  v21 = sub_4498();
  *(v12 + 120) = v21;
  sub_15F4(v21);
  *(v12 + 128) = v22;
  *(v12 + 136) = sub_172C();
  v23 = sub_1B50();
  return sub_225C(v23);
}

uint64_t sub_33E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  sub_1D70();

  sub_4458();
  v11 = swift_task_alloc();
  v10[18] = v11;
  *v11 = v10;
  v11[1] = sub_34CC;
  v12 = v10[17];
  v13 = v10[7];
  v14 = v10[8];
  v15 = v10[5];
  v16 = v10[6];
  v17 = v10[3];
  v18 = v10[4];
  v19 = v10[2];

  return sub_20B4(v19, v17, v18, v15, v12, v16, v13, v14, a9, a10);
}

uint64_t sub_34CC()
{
  sub_1D44();
  v3 = v2;
  v4 = v2[17];
  v5 = v2[16];
  v6 = v2[15];
  v7 = *v1;
  sub_1F64();
  *v8 = v7;
  v3[19] = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {

    return _swift_task_switch(sub_3664);
  }

  else
  {

    sub_1F74();

    return v9();
  }
}

uint64_t sub_3664()
{
  sub_1B34();

  sub_1F74();

  return v0();
}

uint64_t sub_36C0()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[28];

  (*(v3 + 8))(v1, v2);

  sub_1F74();

  return v4();
}

uint64_t sub_3788()
{
  sub_1D70();
  sub_1D44();
  v3 = v2[10];
  v4 = v2[9];
  v5 = v2[8];
  v6 = *v1;
  sub_1F64();
  *v7 = v6;
  *(v8 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_3954;
  }

  else
  {
    v9 = sub_38E8;
  }

  return _swift_task_switch(v9);
}

uint64_t sub_38E8()
{
  sub_1B34();

  sub_1F80();

  return v0();
}

uint64_t sub_3954()
{
  sub_1B34();

  sub_1F74();

  return v0();
}

uint64_t sub_39C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v10 = sub_4498();
  sub_27B8();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1B40();
  v16 = v15 - v14;

  sub_4458();
  sub_3AF0(a1, a2, a3, v16, x8_0);
  return (*(v12 + 8))(v16, v10);
}

uint64_t sub_3AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a4;
  v49 = a1;
  v50 = a2;
  v51 = a3;
  v55 = a5;
  sub_4648();
  sub_27B8();
  v53 = v8;
  v54 = v7;
  __chkstk_darwin(v7);
  sub_1B40();
  v11 = v10 - v9;
  v12 = sub_44E8();
  sub_27B8();
  v47 = v13;
  __chkstk_darwin(v14);
  sub_1B40();
  v17 = v16 - v15;
  v18 = sub_42A4(&qword_C180, &qword_49A8);
  v19 = sub_1604(v18);
  v20 = __chkstk_darwin(v19);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v52 = &v45 - v23;
  v24 = sub_45C8();
  sub_27B8();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_1B40();
  (*(v5 + 16))();
  if (v6)
  {

    sub_4628();
    v28 = sub_4638();
    v29 = sub_46B8();
    if (os_log_type_enabled(v28, v29))
    {
      sub_1744();
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "facade not set. Unable to process doContinuousConversationsHints", v30, 2u);
      sub_1D38();
    }

    (*(v53 + 8))(v11, v54);
  }

  else
  {
    v45 = v17;
    v46 = v24;
    v53 = v12;
    v54 = v26;
    sub_4468();
    sub_4478();
    sub_4488();
    sub_45B8();
    v35 = v52;
    sub_4548();
    sub_42EC(v35, v22, &qword_C180, &qword_49A8);
    v36 = v53;
    v37 = sub_18A0(v22, 1, v53);
    v38 = v46;
    if (v37 != 1)
    {
      v41 = v47;
      v42 = v45;
      (*(v47 + 32))(v45, v22, v36);
      sub_44D8();
      sub_44C8();
      v32 = v55;
      sub_44A8();

      (*(v41 + 8))(v42, v36);
      sub_1848(v35, &qword_C180, &qword_49A8);
      v43 = sub_18C8();
      v44(v43, v46);
      v31 = 0;
      goto LABEL_6;
    }

    sub_1848(v35, &qword_C180, &qword_49A8);
    v39 = sub_18C8();
    v40(v39, v38);
  }

  v31 = 1;
  v32 = v55;
LABEL_6:
  v33 = sub_44B8();
  return sub_15CC(v32, v31, 1, v33);
}

uint64_t sub_3F48()
{

  v0 = sub_1F90();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_3FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D7C();
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_408C;
  sub_1A70();

  return SiriSuggestionsBroker.doSiriHints(requestId:applicationSessionId:sourceDomainOwner:intentProperties:verb:executionProperties:dialogPhase:)(v7, v8, v9, v10, a5);
}

uint64_t sub_408C()
{
  sub_1B34();
  v3 = v2;
  sub_1D44();
  v4 = *v1;
  sub_1F64();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_417C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  sub_1D7C();
  v9 = swift_task_alloc();
  v10 = sub_1FB0(v9);
  *v10 = v11;
  v10[1] = sub_1E70;
  sub_1A70();

  return sub_3328(v12, v13, v14, v15, a5, a6, a7, a8, v22, a9, *(&a9 + 1));
}

uint64_t sub_42A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_42EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_42A4(a3, a4);
  sub_20A4();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_434C()
{
  sub_1D70();
  v0 = swift_task_alloc();
  v1 = sub_1FB0(v0);
  *v1 = v2;
  v3 = sub_4428(v1);

  return v4(v3);
}

uint64_t sub_43E0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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