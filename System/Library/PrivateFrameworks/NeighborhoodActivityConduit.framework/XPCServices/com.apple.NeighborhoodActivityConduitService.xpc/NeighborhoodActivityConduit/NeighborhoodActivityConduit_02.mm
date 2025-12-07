uint64_t sub_10003258C()
{
  v2 = *(*v1 + 120);
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_100032834;
  }

  else
  {
    v3 = sub_1000326B4;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1000326B4()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_100032720, v1, 0);
}

uint64_t sub_100032720()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[4] + v0[11];
  v0[2] = v0[3];

  sub_1000E1FC8();

  v4 = *v3;
  v5 = *(v3 + 8);
  *v3 = 0;
  *(v3 + 8) = 0;
  v6 = *(v3 + 16);
  *(v3 + 16) = 0;
  sub_10002D710(v4, v5, v6);
  sub_10001C430(v4, v5);

  swift_unknownObjectRelease();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100032834()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_1000328A0, v1, 0);
}

uint64_t sub_1000328A0()
{
  v1 = *(v0 + 96);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100032924()
{
  v2 = *(*v1 + 152);
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_100032AB8;
  }

  else
  {
    v3 = sub_100032A4C;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100032A4C()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_10003C080, v1, 0);
}

uint64_t sub_100032AB8()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_100032B24, v1, 0);
}

uint64_t sub_100032B24()
{
  v1 = *(v0 + 96);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100032BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230D0;
  v6[5] = qword_1001230D0;

  return _swift_task_switch(sub_100032C48, v7, 0);
}

uint64_t sub_100032C48()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v1)
  {
    if (!v2)
    {
      v5 = [v1 deviceHandle];
      v0[12] = v5;
      v9 = swift_task_alloc();
      v0[13] = v9;
      *v9 = v0;
      v9[1] = sub_100033240;
      v8 = 0;
      goto LABEL_8;
    }

    v3 = v1;
    v4 = v2;
    v5 = [v3 deviceHandle];
    v0[6] = v5;
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v7 = sub_100032E20;
LABEL_6:
    v6[1] = v7;
    v8 = v0[3];
LABEL_8:

    return sub_100033718(v8, v5);
  }

  if (v2)
  {
    v5 = [v2 deviceHandle];
    v0[15] = v5;
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v7 = sub_1000333CC;
    goto LABEL_6;
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100032E20()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_100033558;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_100032F44;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100032F44()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) deviceHandle];
  v3 = [v1 deviceHandle];
  sub_10000CAAC(0, &qword_10011EAB0, TUNearbyDeviceHandle_ptr);
  LOBYTE(v1) = sub_1000E2818();

  v4 = *(v0 + 24);
  if (v1)
  {
    v5 = *(v0 + 16);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = [v4 deviceHandle];
    *(v0 + 72) = v8;
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_1000330B0;
    v10 = *(v0 + 24);

    return sub_100033718(v10, v8);
  }
}

uint64_t sub_1000330B0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1000335CC;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1000331D8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000331D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100033240()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_100033640;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_100033368;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100033368()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000333CC()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1000336AC;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1000334F4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000334F4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100033558()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000335CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100033640()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000336AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100033718(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1000E1E28();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230D0;
  v3[9] = qword_1001230D0;

  return _swift_task_switch(sub_100033820, v5, 0);
}

uint64_t sub_100033820()
{
  v1 = sub_100061CD4();
  v0[10] = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = v0[2];
    if (v5)
    {
      v6 = swift_task_alloc();
      v6[2] = v3;
      v6[3] = v4;
      v6[4] = v5;
      sub_10003BB3C(&qword_10011EE00, 255, &type metadata accessor for NCProtoSuggestionAdvertisementDidChangeEvent, &protocol conformance descriptor for NCProtoSuggestionAdvertisementDidChangeEvent);
      v7 = v5;
      sub_1000E0E38();

      if (qword_10011DC18 != -1)
      {
        swift_once();
      }

      v0[11] = qword_1001230E0;
      v8 = swift_task_alloc();
      v0[12] = v8;
      *v8 = v0;
      v8[1] = sub_100033C04;
      v9 = v0[8];
    }

    else
    {
      sub_10003BB3C(&qword_10011EE00, 255, &type metadata accessor for NCProtoSuggestionAdvertisementDidChangeEvent, &protocol conformance descriptor for NCProtoSuggestionAdvertisementDidChangeEvent);
      sub_1000E0E38();
      if (qword_10011DC18 != -1)
      {
        swift_once();
      }

      v0[14] = qword_1001230E0;
      v16 = swift_task_alloc();
      v0[15] = v16;
      *v16 = v0;
      v16[1] = sub_100033F28;
      v9 = v0[7];
    }

    return sub_10002624C(8, v9, v3, v4, 0);
  }

  else
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    sub_1000049D0(v10, qword_100123188);
    v11 = sub_1000E1EE8();
    v12 = sub_1000E2678();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Cannot sendSuggestionAdvertisementDidChangeEvent to deviceHandle without idsDeviceIdentifier", v13, 2u);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100033C04()
{
  v2 = *(*v1 + 88);
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100033E3C;
  }

  else
  {
    v3 = sub_100033D50;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100033D50()
{
  v1 = v0[9];
  (*(v0[6] + 8))(v0[8], v0[5]);

  return _swift_task_switch(sub_100033DC8, v1, 0);
}

uint64_t sub_100033DC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100033E3C()
{
  v1 = v0[9];
  (*(v0[6] + 8))(v0[8], v0[5]);

  return _swift_task_switch(sub_100033EB4, v1, 0);
}

uint64_t sub_100033EB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100033F28()
{
  v2 = *(*v1 + 112);
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1000340F8;
  }

  else
  {
    v3 = sub_100034074;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100034074()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000340F8()
{
  v1 = v0[9];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return _swift_task_switch(sub_100034174, v1, 0);
}

uint64_t sub_100034174()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000341E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1000E1918();
  __chkstk_darwin(v4);
  sub_10003BB3C(&qword_10011F068, 255, &type metadata accessor for NCProtoSuggestionAdvertisement, &protocol conformance descriptor for NCProtoSuggestionAdvertisement);
  sub_1000E0E38();
  return sub_1000E1E18();
}

uint64_t sub_100034300(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_10000ADE4(&qword_10011F070, &qword_1000F1630);
  __chkstk_darwin(v5 - 8);
  v21 = &v20 - v6;
  v20 = sub_1000E18D8();
  v7 = *(v20 - 8);
  __chkstk_darwin(v20);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1000E0D68();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1000E18E8();
  v14 = [a4 identifier];
  sub_1000E0D38();

  sub_1000E0D08();
  v15 = v10;
  v16 = v21;
  (*(v11 + 8))(v13, v15);
  v17 = v20;
  sub_1000E18F8();
  [a4 type];
  sub_1000E18C8();
  v18 = *(v7 + 48);
  if (v18(v16, 1, v17) == 1)
  {
    *v9 = [a4 type];
    (*(v7 + 104))(v9, enum case for NCProtoSuggestionAdvertisement.SuggestionType.UNRECOGNIZED(_:), v17);
    if (v18(v16, 1, v17) != 1)
    {
      sub_1000033C8(v16, &qword_10011F070, &qword_1000F1630);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v16, v17);
  }

  return sub_1000E1908();
}

uint64_t sub_1000345F0(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState + 8);
    sub_10001C3F0(*(v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState), v4);
    v5 = v2;
    sub_10001C430(v2, v4);
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v6 = sub_1000E1F08();
    sub_1000049D0(v6, qword_100123188);
    v7 = v5;
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2698();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v2;
      *(v10 + 12) = 2080;
      v13 = 0xE700000000000000;
      v14 = 0x6E776F6E6B6E75;
      v15 = 0xE700000000000000;
      v16 = 0x74756F656D6974;
      v17 = 0xED000064656C6C65;
      v18 = 0x636E614372657375;
      if (v3 != 4)
      {
        v18 = 0xD000000000000014;
        v17 = 0x80000001000EAA60;
      }

      if (v3 != 3)
      {
        v16 = v18;
        v15 = v17;
      }

      v19 = 0x80000001000EAA80;
      v20 = 0xD000000000000015;
      if (v3 != 1)
      {
        v20 = 0x656767755377656ELL;
        v19 = 0xED00006E6F697473;
      }

      if (v3)
      {
        v14 = v20;
        v13 = v19;
      }

      if (v3 <= 2u)
      {
        v21 = v14;
      }

      else
      {
        v21 = v16;
      }

      if (v3 <= 2u)
      {
        v22 = v13;
      }

      else
      {
        v22 = v15;
      }

      v23 = v12;
      v24 = v7;
      v25 = sub_100029C70(v21, v22, &v28);

      *(v10 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v8, v9, "Sending cancel result for %@ reason: %s", v10, 0x16u);
      sub_1000033C8(v11, &unk_10011EAC0, &unk_1000F0E60);

      sub_10000E9DC(v23);
    }

    v26 = objc_allocWithZone(TUNearbySuggestionResult);

    v27 = [v26 initWithSuggestion:v7 selectedActivity:0 type:0];
    v28 = v27;
    sub_1000E1FC8();
  }

  return result;
}

id sub_100034918()
{
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v0 = sub_1000E1F08();
  sub_1000049D0(v0, qword_100123188);
  v1 = sub_1000E1EE8();
  v2 = sub_1000E2668();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Generating suggestion timer", v3, 2u);
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_10003BCEC;
  v10[5] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10002ED24;
  v10[3] = &unk_100113D38;
  v5 = _Block_copy(v10);
  v6 = objc_opt_self();

  v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:60.0];
  _Block_release(v5);

  v8 = [objc_opt_self() mainRunLoop];
  [v8 addTimer:v7 forMode:NSRunLoopCommonModes];

  return v7;
}

void sub_100034B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1000E2538();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = qword_10011DC08;
    v13 = v9;
    if (v11 != -1)
    {
      swift_once();
    }

    v14 = qword_1001230D0;
    v15 = sub_10003BB3C(&unk_10011F010, v12, type metadata accessor for NearbySuggestionActor, &unk_1000F1580);
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v15;
    v16[4] = v13;

    sub_100022960(0, 0, v7, a4, v16);
  }
}

uint64_t sub_100034CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230D0;

  return _swift_task_switch(sub_100034D70, v5, 0);
}

uint64_t sub_100034D70()
{
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123188);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Remove suggestion timer fired", v4, 2u);
  }

  sub_100031750(3);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100034E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 120) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_1000E0D68();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230D0;
  *(v6 + 80) = qword_1001230D0;

  return _swift_task_switch(sub_100034F94, v8, 0);
}

uint64_t sub_100034F94()
{
  v0[11] = *(v0[6] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_conduitDeviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;
  v0[12] = qword_1001230E0;

  return _swift_task_switch(sub_100035040, v1, 0);
}

uint64_t sub_100035040()
{
  v1 = *(v0 + 80);
  *(v0 + 104) = sub_1000449DC(*(v0 + 16), *(v0 + 24), 0);

  return _swift_task_switch(sub_1000350B4, v1, 0);
}

uint64_t sub_1000350B4()
{
  v12 = v0;
  if (v0[13])
  {
    v1 = v0[12];

    return _swift_task_switch(sub_100035298, v1, 0);
  }

  else
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v2 = sub_1000E1F08();
    sub_1000049D0(v2, qword_100123188);

    v3 = sub_1000E1EE8();
    v4 = sub_1000E2698();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[2];
      v5 = v0[3];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_100029C70(v6, v5, &v11);
      _os_log_impl(&_mh_execute_header, v3, v4, "Unable to find conduit device with identifier: %s, dropping suggestion", v7, 0xCu);
      sub_10000E9DC(v8);
    }

    v9 = v0[1];

    return v9(0, 0, 0);
  }
}

uint64_t sub_100035298()
{
  v1 = *(v0 + 80);
  *(v0 + 112) = sub_100012CD8();

  return _swift_task_switch(sub_100035310, v1, 0);
}

uint64_t sub_100035310()
{
  [*(v0 + 112) deviceModel];
  if (qword_10011DC58 != -1)
  {
    swift_once();
  }

  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = sub_1000E2328();
  v3 = [v1 initWithSuiteName:v2];

  if (v3 && (v4 = sub_1000E2328(), v5 = [v3 BOOLForKey:v4], v3, v4, (v5 & 1) != 0))
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v6 = sub_1000E1F08();
    sub_1000049D0(v6, qword_100123188);
    v7 = sub_1000E1EE8();
    v8 = sub_1000E2698();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 112);
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Continuity Camera disabled in Settings on the local device. Pushing isn't supported", v11, 2u);
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v15 = *(v0 + 112);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    v21 = *(v0 + 32);
    v20 = *(v0 + 40);
    sub_1000E0D58();
    v22 = objc_allocWithZone(TUNearbySuggestion);
    v23 = v15;
    isa = sub_1000E0D18().super.isa;
    v12 = [v22 initWithIdentifier:isa deviceHandle:v23 activity:v21 type:v20];

    (*(v17 + 8))(v16, v18);
    v25 = *(v19 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState);
    if (v25)
    {
      v26 = *(v19 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState + 8);
      sub_10001C3F0(*(v19 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState), v26);
      v27 = v25;
      sub_10001C430(v25, v26);
      v28 = [v27 isEquivalentToSuggestion:v12];
      if (v28)
      {
        v29 = v12;
      }

      else
      {
        v29 = v27;
      }

      if (v28)
      {
        v12 = v27;
      }
    }

    v30 = *(v0 + 112);
    v14 = *(v0 + 120);
    v13 = sub_100034918();
  }

  v31 = *(v0 + 8);

  return v31(v12, v13, v14);
}

unint64_t TUConversationAVMode.description.getter(uint64_t a1)
{
  result = 0xD000000000000019;
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 != 1 && a1 != 2)
  {
    sub_1000E2A88(31);

    v3._countAndFlagsBits = sub_1000E2C18();
    sub_1000E23A8(v3);

    v4._countAndFlagsBits = 41;
    v4._object = 0xE100000000000000;
    sub_1000E23A8(v4);
    return 0xD00000000000001CLL;
  }

  return result;
}

uint64_t sub_100035794()
{
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002E7C;

  return sub_100035854();
}

uint64_t sub_100035854()
{
  *(v1 + 16) = v0;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v2 = qword_1001230D0;

  return _swift_task_switch(sub_1000358EC, v2, 0);
}

uint64_t sub_1000358EC()
{
  sub_10002D4D0();
  if (v1)
  {
    v2 = v1;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v3 = sub_1000E1F08();
    sub_1000049D0(v3, qword_100123128);
    v4 = v2;
    v5 = sub_1000E1EE8();
    v6 = sub_1000E2698();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v2;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "updateRecommendationMode for conversation: %@", v7, 0xCu);
      sub_1000033C8(v8, &unk_10011EAC0, &unk_1000F0E60);
    }

    if ([v4 state] != 3 || (v10 = objc_msgSend(v4, "presentationContext"), v11 = objc_msgSend(v10, "mode"), v10, v11 == 2) || (objc_msgSend(*(*(v0 + 16) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_featureFlags), "lagunaAudioCallsEnabled") & 1) == 0 && objc_msgSend(v4, "avMode") == 1)
    {
      v12 = sub_1000E1EE8();
      v13 = sub_1000E2698();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "updateRecommendationMode pauseRecommendations", v14, 2u);
      }

      v15 = 0;
    }

    else
    {
      v18 = sub_1000E1EE8();
      v19 = sub_1000E2698();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "updateRecommendationMode resumeRecommendations", v20, 2u);
      }

      v15 = 1;
    }

    sub_100035E48(v15);
  }

  else
  {
    sub_100035E48(0);
    sub_100031750(5);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100035C98()
{
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D64;

  return sub_100035854();
}

void sub_100035E48(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_irSession);
  v4 = [v3 configuration];
  if (v4)
  {
    oslog = v4;
    if ([v4 mode]!= a1)
    {
      if (qword_10011DC80 != -1)
      {
        swift_once();
      }

      v16 = sub_1000E1F08();
      sub_1000049D0(v16, qword_100123188);
      v17 = sub_1000E1EE8();
      v18 = sub_1000E2698();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25 = v20;
        *v19 = 136315138;
        type metadata accessor for IRConfigurationUpdateMode(0);
        v21 = sub_1000E2368();
        v23 = sub_100029C70(v21, v22, &v25);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "Setting IRSession mode to %s", v19, 0xCu);
        sub_10000E9DC(v20);
      }

      [oslog setMode:a1];
      [v3 runWithConfiguration:oslog];
      goto LABEL_16;
    }

    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v5 = sub_1000E1F08();
    sub_1000049D0(v5, qword_100123188);
    v6 = sub_1000E1EE8();
    v7 = sub_1000E2698();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25 = v9;
      *v8 = 136315138;
      type metadata accessor for IRConfigurationUpdateMode(0);
      v10 = sub_1000E2368();
      v12 = sub_100029C70(v10, v11, &v25);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "IRSession mode is already %s", v8, 0xCu);
      sub_10000E9DC(v9);

LABEL_16:
      return;
    }
  }

  else
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v13 = sub_1000E1F08();
    sub_1000049D0(v13, qword_100123188);
    oslog = sub_1000E1EE8();
    v14 = sub_1000E2678();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "No configuration stored on IRSession so not updating configuration", v15, 2u);
    }
  }
}

uint64_t sub_10003620C(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  if (a2)
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v6 = sub_1000E1F08();
    sub_1000049D0(v6, qword_100123188);
    v7 = a1;
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_22;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = a1;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to obtain service token: %@", v10, 0xCu);
    sub_1000033C8(v11, &unk_10011EAC0, &unk_1000F0E60);

    goto LABEL_6;
  }

  if (!a1)
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v26 = sub_1000E1F08();
    sub_1000049D0(v26, qword_100123188);
    v8 = sub_1000E1EE8();
    v27 = sub_1000E2688();
    if (!os_log_type_enabled(v8, v27))
    {
      goto LABEL_22;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v8, v27, "Token not obtained with no error", v28, 2u);
LABEL_6:

    goto LABEL_22;
  }

  v13 = objc_opt_self();
  v36 = 0;
  v14 = a1;
  v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v36];
  v16 = v36;
  if (v15)
  {
    v17 = sub_1000E0C88();
    v19 = v18;

    v20 = [objc_opt_self() standardUserDefaults];
    isa = sub_1000E0C78().super.isa;
    v22 = sub_1000E2328();
    [v20 setObject:isa forKey:v22];

    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_100123188);
    v8 = sub_1000E1EE8();
    v24 = sub_1000E2658();
    if (os_log_type_enabled(v8, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v8, v24, "Service token retrieved and written to defaults", v25, 2u);
    }

    sub_100006660(v17, v19);
  }

  else
  {
    v29 = v16;
    sub_1000E0BE8();

    swift_willThrow();
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v30 = sub_1000E1F08();
    sub_1000049D0(v30, qword_100123188);
    swift_errorRetain();
    v8 = sub_1000E1EE8();
    v31 = sub_1000E2678();

    if (!os_log_type_enabled(v8, v31))
    {

      return a3(a1, a2);
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v8, v31, "Failed to archive service token: %@", v32, 0xCu);
    sub_1000033C8(v33, &unk_10011EAC0, &unk_1000F0E60);
  }

LABEL_22:

  return a3(a1, a2);
}

void sub_100036758(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000367E4(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v4 = qword_1001230D0;

  return _swift_task_switch(sub_100036880, v4, 0);
}

uint64_t sub_100036880()
{
  v34 = v0;
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_identifierToCandidateMap;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = v0[13];
    v4 = v0[14];

    v6 = sub_10000B2D0(v5, v4);
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * v6);

      goto LABEL_11;
    }
  }

  v10 = v0[13];
  v9 = v0[14];
  v11 = [objc_allocWithZone(IRNode) init];
  v31 = v10;
  v12 = sub_1000E2328();
  [v11 setIdsIdentifier:v12];

  v13 = objc_allocWithZone(IRCandidate);
  v14 = sub_1000E2328();
  v8 = [v13 initWithCandidateIdentifier:v14];

  sub_10000ADE4(&qword_10011EB20, &qword_1000F2570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F0F40;
  *(inited + 32) = v11;
  v16 = v11;
  sub_1000E0048(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10000CAAC(0, &unk_100120890, IRNode_ptr);
  sub_10001B174(&unk_10011F050, &unk_100120890, IRNode_ptr);
  isa = sub_1000E25D8().super.isa;

  [v8 updateNodes:isa];

  swift_beginAccess();
  v18 = v8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v1 + v2);
  *(v1 + v2) = 0x8000000000000000;
  sub_1000CA488(v18, v31, v9, isUniquelyReferenced_nonNull_native);

  *(v1 + v2) = v33;
  swift_endAccess();
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v20 = sub_1000E1F08();
  sub_1000049D0(v20, qword_100123188);
  v21 = v18;

  v22 = sub_1000E1EE8();
  v23 = sub_1000E2658();

  if (os_log_type_enabled(v22, v23))
  {
    v32 = v16;
    v24 = v0[13];
    v25 = v0[14];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v26 = 138412802;
    *(v26 + 4) = v21;
    *v27 = v8;
    *(v26 + 12) = 2080;
    v28 = v21;
    *(v26 + 14) = sub_100029C70(v24, v25, &v33);
    *(v26 + 22) = 2080;
    *(v26 + 24) = sub_100029C70(v24, v25, &v33);
    _os_log_impl(&_mh_execute_header, v22, v23, "Created IR candidate:%@ for idsIdentifier:%s with idsDeviceIdentifier:%s", v26, 0x20u);
    sub_1000033C8(v27, &unk_10011EAC0, &unk_1000F0E60);

    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_11:
  v29 = v0[1];

  return v29(v8);
}

uint64_t sub_100036CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230D0;

  return _swift_task_switch(sub_100036D80, v6, 0);
}

uint64_t sub_100036D80()
{
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123188);
  swift_errorRetain();
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2678();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "IRSession failed with error: %@", v4, 0xCu);
    sub_1000033C8(v5, &unk_10011EAC0, &unk_1000F0E60);
  }

  v7 = *(v0 + 24);

  *(v7 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_isRunning) = 0;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000370CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230D0;
  v5[14] = qword_1001230D0;

  return _swift_task_switch(sub_100037168, v6, 0);
}

uint64_t sub_100037168()
{
  v82 = v0;
  v1 = *(v0 + 96);
  v2 = sub_1000E2338();
  if (!*(v1 + 16))
  {
LABEL_7:

    goto LABEL_8;
  }

  v4 = sub_10000B2D0(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(*(*(v0 + 96) + 56) + 8 * v4);
  *(v0 + 120) = v7;
  v8 = qword_10011DC80;
  v9 = v7;
  if (v8 != -1)
  {
LABEL_63:
    swift_once();
  }

  v10 = sub_1000E1F08();
  v11 = sub_1000049D0(v10, qword_100123188);
  *(v0 + 128) = v11;
  v12 = v9;
  v13 = sub_1000E1EE8();
  v14 = sub_1000E2698();
  if (os_log_type_enabled(v13, v14))
  {
    v80 = v11;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v81[0] = v16;
    *v15 = 134218242;
    v17 = [v12 candidateResults];
    sub_10000CAAC(0, &unk_10011EDF0, IRCandidateResult_ptr);
    sub_10001B174(&unk_10011F040, &unk_10011EDF0, IRCandidateResult_ptr);
    v18 = sub_1000E25E8();

    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = sub_1000E2968();
    }

    else
    {
      v19 = *(v18 + 16);
    }

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v22 = [v12 candidateResults];
    sub_1000E25E8();

    v23 = sub_1000E25F8();
    v25 = v24;

    v26 = sub_100029C70(v23, v25, v81);

    *(v15 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v13, v14, "Found potential candidates (%ld) %s", v15, 0x16u);
    sub_10000E9DC(v16);
  }

  else
  {
  }

  v27 = [v12 candidateResults];
  sub_10000CAAC(0, &unk_10011EDF0, IRCandidateResult_ptr);
  sub_10001B174(&unk_10011F040, &unk_10011EDF0, IRCandidateResult_ptr);
  v28 = sub_1000E25E8();

  v81[0] = sub_100020344(v28);
  sub_100039504(v81);

  v29 = v81[0];
  *(v0 + 136) = v81[0];
  if (qword_10011DC58 != -1)
  {
    swift_once();
  }

  v30 = sub_1000D5568(3u);
  *(v0 + 144) = v30;
  *(v0 + 280) = v31;
  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v30;
  }

  v33 = sub_1000D5568(2u);
  if (v34)
  {
    if (qword_10011DCB0 != -1)
    {
      swift_once();
    }

    v35 = qword_100120528;
  }

  else
  {
    v35 = v33;
  }

  *(v0 + 152) = v35;
  v36 = sub_1000E1EE8();
  v37 = sub_1000E2698();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 67109632;
    *(v38 + 4) = v32 < v35;
    *(v38 + 8) = 2048;
    *(v38 + 10) = v32;
    *(v38 + 18) = 2048;
    *(v38 + 20) = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "shouldSuggestAnyNearbyAuthenticatedTV=%{BOOL}d suggestionsGivenCount=%ld topOfListThreshold=%ld", v38, 0x1Cu);
  }

  sub_10002D4D0();
  if (v39)
  {
    v40 = v39;
    v41 = [v39 avMode];

    v42 = v41 == 1;
    if (v29 < 0)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v42 = 0;
    if (v29 < 0)
    {
      goto LABEL_64;
    }
  }

  if ((v29 & 0x4000000000000000) == 0)
  {
    v43 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 160) = v43;
    if (!v43)
    {
LABEL_65:

      sub_10002DE20();
      if (v78)
      {
        goto LABEL_66;
      }

LABEL_67:

      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_64:
  v77 = sub_1000E2B68();
  *(v0 + 160) = v77;
  if (!v77)
  {
    goto LABEL_65;
  }

LABEL_32:
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v9 = IRNode_ptr;
  while (1)
  {
    *(v0 + 168) = v45;
    *(v0 + 176) = v46;
    *(v0 + 281) = v44 & 1;
    *(v0 + 282) = v42 & 1;
    v48 = *(v0 + 136);
    if ((v48 & 0xC000000000000001) != 0)
    {
      v49 = sub_1000E2A98();
    }

    else
    {
      if (v47 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v49 = *(v48 + 8 * v47 + 32);
    }

    v50 = v49;
    *(v0 + 192) = v49;
    *(v0 + 200) = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v51 = [v49 candidate];
    v52 = [v51 nodes];

    sub_10000CAAC(0, &unk_100120890, IRNode_ptr);
    sub_10001B174(&unk_10011F050, &unk_100120890, IRNode_ptr);
    v53 = sub_1000E25E8();

    v54 = v53 & 0xC000000000000001;
    if ((v53 & 0xC000000000000001) != 0)
    {
      v55 = sub_1000E2908();
      v57 = v56;
      v58 = sub_1000E29C8();
      v60 = v59;
      v61 = sub_1000E2938();
      sub_10000A848(v58, v60, 1);
      if (v61)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v62 = 0;
      v63 = (v53 + 56);
      v55 = 1 << *(v53 + 32);
      v64 = (v55 + 63) >> 6;
      while (1)
      {
        v66 = *v63++;
        v65 = v66;
        if (v66)
        {
          break;
        }

        v62 -= 64;
        if (!--v64)
        {
          v57 = *(v53 + 36);
          goto LABEL_46;
        }
      }

      v67 = __clz(__rbit64(v65));
      v57 = *(v53 + 36);
      if (v67 - v55 == v62)
      {
LABEL_46:
        sub_10000A848(v55, v57, v54 != 0);

        goto LABEL_49;
      }

      v55 = v67 - v62;
    }

    sub_1000D4AD8(v55, v57, v54 != 0, v53);
    v69 = v68;
    sub_10000A848(v55, v57, v54 != 0);

    v70 = [v69 idsIdentifier];

    if (v70)
    {
      v73 = sub_1000E2338();
      v75 = v74;

      *(v0 + 208) = v73;
      *(v0 + 216) = v75;
      if (qword_10011DC18 != -1)
      {
        swift_once();
      }

      v76 = qword_1001230E0;
      *(v0 + 224) = qword_1001230E0;

      return _swift_task_switch(sub_100037AB0, v76, 0);
    }

LABEL_49:

    v45 = *(v0 + 168);
    v46 = *(v0 + 176);
    v44 = *(v0 + 281);
    v47 = *(v0 + 200);
    if (v47 == *(v0 + 160))
    {
      break;
    }

    v42 = *(v0 + 282);
  }

  *(v0 + 184) = v46;

  sub_10002DE20();
  if ((v71 & 1) == 0)
  {
    goto LABEL_67;
  }

  if (v46)
  {
    sub_1000345F0(2);
    v72 = swift_task_alloc();
    *(v0 + 256) = v72;
    *v72 = v0;
    v72[1] = sub_100038FAC;

    return sub_100034E90(v45, v46, 0, 1, v44);
  }

LABEL_66:
  v79 = *(v0 + 120);
  sub_100031750(1);

LABEL_8:
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100037AB0()
{
  if (qword_10011DC20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);

  return _swift_task_switch(sub_100037B40, v1, 0);
}

uint64_t sub_100037B40()
{
  v1 = *(v0 + 112);
  *(v0 + 232) = qword_1001230E8;
  return _swift_task_switch(sub_100037B68, v1, 0);
}

uint64_t sub_100037B68()
{
  v1 = *(v0 + 224);

  return _swift_task_switch(sub_100037BD4, v1, 0);
}

uint64_t sub_100037BD4()
{
  v1 = v0[29];
  v29 = v0[27];
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (63 - v4) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  v11 = 0;
  while (v6)
  {
LABEL_10:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = *(*(v2 + 56) + ((v11 << 9) | (8 * v13)));
    v0[30] = v14;
    v8 = swift_beginAccess();
    if (*(*(v14 + 40) + 16))
    {
      v16 = v0[26];
      v15 = v0[27];
      v28 = *(v14 + 40);
      sub_1000E2D48();
      v0[10] = 0;
      v0[11] = 0xE000000000000000;

      sub_1000E2A88(38);

      v0[8] = 0xD000000000000023;
      v0[9] = 0x80000001000E9C70;
      v31._countAndFlagsBits = v16;
      v31._object = v15;
      sub_1000E23A8(v31);
      v32._countAndFlagsBits = 41;
      v32._object = 0xE100000000000000;
      sub_1000E23A8(v32);
      sub_1000E2398();

      v17 = sub_1000E2D68();
      v18 = -1 << *(v28 + 32);
      v19 = v17 & ~v18;
      if ((*(v28 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v27 = v2;
        v20 = ~v18;
        v21 = *(v28 + 48);
        while (1)
        {
          v22 = v21 + 24 * v19;
          if (!*(v22 + 16))
          {
            v23 = *v22 == v0[26] && *(v22 + 8) == v29;
            if (v23 || (sub_1000E2C68() & 1) != 0)
            {
              break;
            }
          }

          v19 = (v19 + 1) & v20;
          if (((*(v28 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {

            v2 = v27;
            goto LABEL_23;
          }
        }

        v24 = v0[28];

        v25 = sub_10003831C;
LABEL_26:
        v8 = v25;
        v9 = v24;
        v10 = 0;

        return _swift_task_switch(v8, v9, v10);
      }

LABEL_23:
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
      v24 = v0[14];
      swift_bridgeObjectRelease_n();

      v25 = sub_100037EE0;
      goto LABEL_26;
    }

    v6 = *(v3 + 8 * v12);
    ++v11;
    if (v6)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100037EE0()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 281);
  for (i = *(v0 + 200); i != *(v0 + 160); i = *(v0 + 200))
  {
    *(v0 + 168) = v2;
    *(v0 + 176) = v1;
    *(v0 + 281) = v3 & 1;
    v8 = *(v0 + 136);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = sub_1000E2A98();
    }

    else
    {
      if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v9 = *(v8 + 8 * i + 32);
    }

    v10 = v9;
    *(v0 + 192) = v9;
    *(v0 + 200) = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v11 = [v9 candidate];
    v12 = [v11 nodes];

    sub_10000CAAC(0, &unk_100120890, IRNode_ptr);
    sub_10001B174(&unk_10011F050, &unk_100120890, IRNode_ptr);
    v13 = sub_1000E25E8();

    v14 = v13 & 0xC000000000000001;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v15 = sub_1000E2908();
      v17 = v16;
      v18 = sub_1000E29C8();
      v20 = v19;
      v21 = sub_1000E2938();
      sub_10000A848(v18, v20, 1);
      if (v21)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v22 = 0;
      v23 = (v13 + 56);
      v15 = 1 << *(v13 + 32);
      v24 = (v15 + 63) >> 6;
      while (1)
      {
        v26 = *v23++;
        v25 = v26;
        if (v26)
        {
          break;
        }

        v22 -= 64;
        if (!--v24)
        {
          v17 = *(v13 + 36);
          goto LABEL_8;
        }
      }

      v27 = __clz(__rbit64(v25));
      v17 = *(v13 + 36);
      if (v27 - v15 == v22)
      {
LABEL_8:
        sub_10000A848(v15, v17, v14 != 0);

        goto LABEL_9;
      }

      v15 = v27 - v22;
    }

    sub_1000D4AD8(v15, v17, v14 != 0, v13);
    v29 = v28;
    sub_10000A848(v15, v17, v14 != 0);

    v30 = [v29 idsIdentifier];

    if (v30)
    {
      v31 = sub_1000E2338();
      v33 = v32;

      *(v0 + 208) = v31;
      *(v0 + 216) = v33;
      if (qword_10011DC18 == -1)
      {
        goto LABEL_26;
      }

LABEL_36:
      swift_once();
LABEL_26:
      v34 = qword_1001230E0;
      *(v0 + 224) = qword_1001230E0;

      return _swift_task_switch(sub_100037AB0, v34, 0);
    }

LABEL_9:

    v2 = *(v0 + 168);
    v1 = *(v0 + 176);
    v3 = *(v0 + 281);
  }

  *(v0 + 184) = v1;

  sub_10002DE20();
  if (v5)
  {
    if (v1)
    {
      sub_1000345F0(2);
      v6 = swift_task_alloc();
      *(v0 + 256) = v6;
      *v6 = v0;
      v6[1] = sub_100038FAC;

      return sub_100034E90(v2, v1, 0, 1, v3);
    }

    v35 = *(v0 + 120);
    sub_100031750(1);
  }

  else
  {
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_10003831C()
{
  v1 = *(v0 + 112);
  *(v0 + 248) = sub_100012CD8();

  return _swift_task_switch(sub_10003838C, v1, 0);
}

uint64_t sub_10003838C()
{
  v124 = v0;
  v1 = *(v0 + 248);
  v2 = [v1 capabilities];

  if (([v2 isLagunaCapable] & 1) == 0)
  {
    v22 = *(v0 + 192);

    goto LABEL_44;
  }

  v3 = *(v0 + 282);
  v4 = [*(v0 + 192) candidate];
  if (v3 != 1 || ([v2 isAudioCallCapable] & 1) != 0)
  {
    v5 = *(v0 + 176);
    v6 = [*(v0 + 192) classification];
    if (v5 || v6 < 4)
    {
      if (*(v0 + 280))
      {
        v23 = 0;
      }

      else
      {
        v23 = *(v0 + 144);
      }

      if (!v5 && v23 < *(v0 + 152))
      {
        v24 = *(v0 + 192);
        v25 = v4;
        v26 = v24;
        v27 = sub_1000E1EE8();
        v28 = sub_1000E2698();

        v29 = os_log_type_enabled(v27, v28);
        v30 = *(v0 + 192);
        if (v29)
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          loga = v27;
          v33 = swift_slowAlloc();
          v123 = v33;
          *v31 = 138412546;
          *(v31 + 4) = v25;
          *v32 = v25;
          *(v31 + 12) = 2080;
          v120 = v25;
          [v30 classification];
          v34 = IRCandidateClassificationToString();
          v35 = sub_1000E2338();
          v116 = v30;
          v37 = v36;

          v38 = sub_100029C70(v35, v37, &v123);

          *(v31 + 14) = v38;
          v30 = loga;
          _os_log_impl(&_mh_execute_header, loga, v28, "filtered candidate but suggesting for onboarding:%@ classified:%s", v31, 0x16u);
          sub_1000033C8(v32, &unk_10011EAC0, &unk_1000F0E60);

          sub_10000E9DC(v33);
        }

        else
        {
        }

        v72 = *(v0 + 216);
        i = (v0 + 208);
        v75 = 1;
        goto LABEL_46;
      }

      v57 = *(v0 + 192);

      v58 = v4;
      v59 = v57;
      v60 = sub_1000E1EE8();
      v61 = sub_1000E2658();

      v62 = os_log_type_enabled(v60, v61);
      v63 = *(v0 + 192);
      if (v62)
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        logc = v60;
        v66 = swift_slowAlloc();
        v123 = v66;
        *v64 = 138412546;
        *(v64 + 4) = v58;
        *v65 = v58;
        *(v64 + 12) = 2080;
        v121 = v58;
        [v63 classification];
        v67 = IRCandidateClassificationToString();
        v68 = sub_1000E2338();
        v118 = v63;
        v70 = v69;

        v71 = sub_100029C70(v68, v70, &v123);

        *(v64 + 14) = v71;
        _os_log_impl(&_mh_execute_header, logc, v61, "filtered candidate:%@ classified:%s", v64, 0x16u);
        sub_1000033C8(v65, &unk_10011EAC0, &unk_1000F0E60);

        sub_10000E9DC(v66);
      }

      else
      {
      }

      goto LABEL_44;
    }

    v7 = *(v0 + 192);
    v8 = v4;
    v9 = v7;
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 192);
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      log = v10;
      v16 = swift_slowAlloc();
      v123 = v16;
      *v14 = 138412546;
      *(v14 + 4) = v8;
      *v15 = v8;
      *(v14 + 12) = 2080;
      v119 = v8;
      [v13 classification];
      v17 = IRCandidateClassificationToString();
      v18 = sub_1000E2338();
      v115 = v13;
      v20 = v19;

      v21 = sub_100029C70(v18, v20, &v123);

      *(v14 + 14) = v21;
      v13 = log;
      _os_log_impl(&_mh_execute_header, log, v11, "Top candidate:%@ classified:%s", v14, 0x16u);
      sub_1000033C8(v15, &unk_10011EAC0, &unk_1000F0E60);

      sub_10000E9DC(v16);
    }

    else
    {
    }

    v72 = *(v0 + 216);
    for (i = (v0 + 208); ; i = (v0 + 168))
    {
      v75 = *(v0 + 281);
LABEL_46:
      v74 = *i;
      v55 = *(v0 + 200);
      if (v55 == *(v0 + 160))
      {
        goto LABEL_48;
      }

      v56 = *(v0 + 282);
      *(v0 + 168) = v74;
      *(v0 + 176) = v72;
      *(v0 + 281) = v75 & 1;
LABEL_28:
      *(v0 + 282) = v56;
      v76 = *(v0 + 136);
      if ((v76 & 0xC000000000000001) != 0)
      {
        v77 = sub_1000E2A98();
      }

      else
      {
        if (v55 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v77 = *(v76 + 8 * v55 + 32);
      }

      v78 = v77;
      *(v0 + 192) = v77;
      *(v0 + 200) = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v79 = [v77 candidate];
      v80 = [v79 nodes];

      sub_10000CAAC(0, &unk_100120890, IRNode_ptr);
      sub_10001B174(&unk_10011F050, &unk_100120890, IRNode_ptr);
      v81 = sub_1000E25E8();

      v82 = v81 & 0xC000000000000001;
      if ((v81 & 0xC000000000000001) != 0)
      {
        v83 = sub_1000E2908();
        v85 = v84;
        v86 = sub_1000E29C8();
        v88 = v87;
        v89 = sub_1000E2938();
        sub_10000A848(v86, v88, 1);
        v90 = v83;
        if (v89)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v91 = 0;
        v92 = (v81 + 56);
        v90 = 1 << *(v81 + 32);
        v93 = (v90 + 63) >> 6;
        while (1)
        {
          v95 = *v92++;
          v94 = v95;
          if (v95)
          {
            break;
          }

          v91 -= 64;
          if (!--v93)
          {
            v85 = *(v81 + 36);
            goto LABEL_41;
          }
        }

        v96 = __clz(__rbit64(v94));
        v83 = v96 - v91;
        v85 = *(v81 + 36);
        if (v96 - v90 == v91)
        {
LABEL_41:
          sub_10000A848(v90, v85, v82 != 0);

          goto LABEL_43;
        }
      }

      sub_1000D4AD8(v83, v85, v82 != 0, v81);
      v98 = v97;
      sub_10000A848(v83, v85, v82 != 0);

      v99 = [v98 idsIdentifier];

      if (v99)
      {
        v103 = sub_1000E2338();
        v105 = v104;

        *(v0 + 208) = v103;
        *(v0 + 216) = v105;
        if (qword_10011DC18 == -1)
        {
LABEL_55:
          v106 = qword_1001230E0;
          *(v0 + 224) = qword_1001230E0;

          return _swift_task_switch(sub_100037AB0, v106, 0);
        }

LABEL_64:
        swift_once();
        goto LABEL_55;
      }

LABEL_43:

LABEL_44:
      v72 = *(v0 + 176);
    }
  }

  v39 = *(v0 + 192);

  v40 = v4;
  v41 = v39;
  v42 = sub_1000E1EE8();
  v43 = sub_1000E2658();

  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v0 + 192);
  v122 = *(v0 + 200);
  v46 = *(v0 + 160);
  if (v44)
  {
    logb = *(v0 + 192);
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v109 = v42;
    v49 = swift_slowAlloc();
    v123 = v49;
    *v47 = 138412546;
    *(v47 + 4) = v40;
    *v48 = v40;
    *(v47 + 12) = 2080;
    v117 = v40;
    [v45 classification];
    v50 = IRCandidateClassificationToString();
    v110 = v46;
    v51 = sub_1000E2338();
    v53 = v52;

    v54 = sub_100029C70(v51, v53, &v123);

    *(v47 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v109, v43, "filtered candidate not capable of receiving audio calls:%@ classified:%s", v47, 0x16u);
    sub_1000033C8(v48, &unk_10011EAC0, &unk_1000F0E60);

    sub_10000E9DC(v49);

    if (v122 != v110)
    {
LABEL_18:
      v55 = *(v0 + 200);
      v56 = 1;
      goto LABEL_28;
    }
  }

  else
  {

    if (v122 != v46)
    {
      goto LABEL_18;
    }
  }

  v74 = *(v0 + 168);
  v72 = *(v0 + 176);
  v75 = *(v0 + 281);
LABEL_48:
  *(v0 + 184) = v72;

  sub_10002DE20();
  if (v100)
  {
    if (v72)
    {
      sub_1000345F0(2);
      v101 = swift_task_alloc();
      *(v0 + 256) = v101;
      *v101 = v0;
      v101[1] = sub_100038FAC;

      return sub_100034E90(v74, v72, 0, 1, v75 & 1);
    }

    v107 = *(v0 + 120);
    sub_100031750(1);
  }

  else
  {
  }

  v108 = *(v0 + 8);

  return v108();
}

uint64_t sub_100038FAC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 112);
  *(v4 + 264) = a1;
  *(v4 + 272) = a2;
  *(v4 + 283) = a3;

  return _swift_task_switch(sub_1000390E4, v5, 0);
}

uint64_t sub_1000390E4()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v0 + 283);
  *v4 = v2;
  *(v4 + 8) = v1;
  v8 = *(v4 + 16);
  *(v4 + 16) = v7;
  sub_10001C3F0(v2, v1);
  sub_10002D710(v5, v6, v8);
  sub_10001C430(v5, v6);
  sub_10001C430(v2, v1);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100039394(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1000393DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_100039474(void *a1, void *a2)
{
  sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v5 = *(v2 + 16);

  sub_10002E6C8(a1, a2, v5);
}

uint64_t sub_100039504(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10003A5B4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100039580(v6);
  return sub_1000E2AD8();
}

void sub_100039580(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1000E2C08(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000CAAC(0, &unk_10011EDF0, IRCandidateResult_ptr);
        v6 = sub_1000E2498();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10003978C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100039694(0, v2, 1, a1);
  }
}

void sub_100039694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 classification];
      v13 = [v11 classification];

      if (v13 >= v12)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10003978C(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_10003A164(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_100039DF4((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_10003A164(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_10003A0D8(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 classification];
      v104 = [v14 classification];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 classification];
        v7 = [v18 classification];

        v21 = v7 < v20;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v104 < v106) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v104 < v106)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10003A178(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_10003A178((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_100039DF4((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10003A164(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_10003A0D8(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 classification];
    v41 = [v39 classification];

    if (v41 >= v40)
    {
LABEL_31:
      v7 = (v107 + 1);
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_100039DF4(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *(v26 - 1);
          v26 -= 8;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 classification];
          v35 = [v33 classification];

          if (v35 < v34)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 classification];
          v20 = [v18 classification];

          if (v20 >= v19)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_10003A0D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10003A164(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_10003A178(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADE4(&qword_10011F060, &qword_1000F15D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10003A27C(void *a1, uint64_t a2, _BYTE *a3)
{
  v28 = a2;
  v5 = sub_1000E2128();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionXPCDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionResultSubject;
  sub_10000ADE4(&qword_10011F0A0, &qword_1000F1660);
  swift_allocObject();
  *&a3[v9] = sub_1000E1FD8();
  v10 = &a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState];
  v10[16] = 0;
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_conduitDeviceManager;
  if (qword_10011DC20 != -1)
  {
    swift_once();
  }

  *&a3[v11] = qword_1001230E8;
  v12 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_irSession;
  v13 = objc_allocWithZone(IRSession);

  *&a3[v12] = [v13 init];
  *&a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_identifierToCandidateMap] = _swiftEmptyDictionarySingleton;
  a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_isRunning] = 0;
  a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suppressSuggestions] = 0;
  *&a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suppressSuggestionTimer] = 0;
  type metadata accessor for NeighborhoodActivityPublisherService();
  v14 = swift_allocObject();
  *&a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_publisherService] = sub_1000D8940(v14, v15, v16);
  *&a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_conversationManager] = a1;
  *&a3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_featureFlags] = v28;
  v17 = type metadata accessor for NearbySuggestionController();
  v29.receiver = a3;
  v29.super_class = v17;
  v18 = a1;
  v19 = objc_msgSendSuper2(&v29, "init");
  v20 = *&v19[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_irSession];
  v21 = v19;
  [v20 setDelegate:v21];
  v22 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_conversationManager;
  v23 = *&v21[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_conversationManager];
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  (*(v6 + 104))(v8, enum case for DispatchQoS.QoSClass.userInteractive(_:), v5);
  v24 = v23;
  v25 = sub_1000E2758();
  (*(v6 + 8))(v8, v5);
  [v24 addDelegate:v21 queue:v25];

  [*&v21[v22] registerWithCompletionHandler:0];
  return v21;
}

void sub_10003A5C8(void (*a1)(id, void), uint64_t a2)
{
  if (qword_10011DC58 != -1)
  {
    swift_once();
  }

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_1000E2328();
  v6 = [v4 dataForKey:v5];

  if (v6)
  {
    v7 = sub_1000E0C88();
    v9 = v8;

    sub_10000CAAC(0, &qword_10011F020, NSKeyedUnarchiver_ptr);
    sub_10000CAAC(0, &qword_10011F028, IRServiceToken_ptr);
    v18 = sub_1000E26A8();
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v14 = sub_1000E1F08();
    sub_1000049D0(v14, qword_100123188);
    v15 = sub_1000E1EE8();
    v16 = sub_1000E2658();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Using irServiceToken found in defaults", v17, 2u);
    }

    a1(v18, 0);
    sub_100006660(v7, v9);
  }

  else
  {
    v10 = [objc_allocWithZone(IRServiceParameters) initWithServicePackage:1];
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    aBlock[4] = sub_10003AA84;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100036758;
    aBlock[3] = &unk_100113BF8;
    v13 = _Block_copy(aBlock);

    [v11 createServiceWithParameters:v10 reply:v13];
    _Block_release(v13);
  }
}

uint64_t sub_10003AA8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_1000370CC(a1, v4, v5, v7, v6);
}

uint64_t sub_10003AB54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002E7C;

  return sub_100032BA8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10003AC1C(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_10003AC74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100036CE8(a1, v4, v5, v7, v6);
}

uint64_t sub_10003AD34(void *a1)
{
  v2 = v1;
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_1000E0D68();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v11 = sub_1000E1F08();
  sub_1000049D0(v11, qword_100123188);
  v12 = a1;
  v13 = sub_1000E1EE8();
  v14 = sub_1000E2658();

  if (!os_log_type_enabled(v13, v14))
  {

    goto LABEL_18;
  }

  v35 = v2;
  v15 = 0xE900000000000029;
  v16 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  *v16 = 136315394;
  v17 = [v12 state];
  v34 = v8;
  if (v17 <= 1)
  {
    if (!v17)
    {
      v18 = 0x676E697469615728;
      goto LABEL_17;
    }

    if (v17 == 1)
    {
      v15 = 0xEB0000000029676ELL;
      v18 = 0x6972617065725028;
      goto LABEL_17;
    }

LABEL_16:
    v18 = 0x6E776F6E6B6E5528;
    goto LABEL_17;
  }

  if (v17 == 2)
  {
    v18 = 0x676E696E696F4A28;
    goto LABEL_17;
  }

  if (v17 == 3)
  {
    v15 = 0xE800000000000000;
    v18 = 0x2964656E696F4A28;
    goto LABEL_17;
  }

  if (v17 != 4)
  {
    goto LABEL_16;
  }

  v18 = 0x676E697661654C28;
LABEL_17:
  v19 = sub_100029C70(v18, v15, &v36);

  *(v16 + 4) = v19;
  *(v16 + 12) = 2080;
  v20 = [v12 UUID];
  sub_1000E0D38();

  sub_10003BB3C(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v21 = sub_1000E2C18();
  v23 = v22;
  (*(v34 + 8))(v10, v7);
  v24 = sub_100029C70(v21, v23, &v36);

  *(v16 + 14) = v24;
  _os_log_impl(&_mh_execute_header, v13, v14, "Conversation state changed to %s for %s.", v16, 0x16u);
  swift_arrayDestroy();

  v2 = v35;
LABEL_18:
  v25 = sub_1000E2538();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  v26 = qword_10011DC08;
  v28 = v2;
  if (v26 != -1)
  {
    swift_once();
  }

  v29 = qword_1001230D0;
  v30 = sub_10003BB3C(&unk_10011F010, v27, type metadata accessor for NearbySuggestionActor, &unk_1000F1580);
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v30;
  v31[4] = v28;

  sub_100022960(0, 0, v6, &unk_1000F1618, v31);
}

uint64_t sub_10003B20C(void *a1)
{
  v2 = v1;
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v38[-v5];
  v7 = sub_1000E0D68();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v11 = sub_1000E1F08();
  sub_1000049D0(v11, qword_100123188);
  v12 = a1;
  v13 = sub_1000E1EE8();
  v14 = sub_1000E2658();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v41 = v6;
    v16 = v15;
    v40 = swift_slowAlloc();
    v42 = v40;
    *v16 = 136315394;
    v17 = [v12 presentationContext];
    v39 = v14;
    v18 = v17;
    v19 = [v17 description];

    v20 = sub_1000E2338();
    v21 = v8;
    v23 = v22;

    v24 = sub_100029C70(v20, v23, &v42);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v12 UUID];
    sub_1000E0D38();

    sub_10003BB3C(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = sub_1000E2C18();
    v28 = v27;
    (*(v21 + 8))(v10, v7);
    v29 = sub_100029C70(v26, v28, &v42);

    *(v16 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v13, v39, "Conversation presentation context changed to %s for %s.", v16, 0x16u);
    swift_arrayDestroy();

    v6 = v41;
  }

  v30 = sub_1000E2538();
  (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
  v31 = qword_10011DC08;
  v33 = v2;
  if (v31 != -1)
  {
    swift_once();
  }

  v34 = qword_1001230D0;
  v35 = sub_10003BB3C(&unk_10011F010, v32, type metadata accessor for NearbySuggestionActor, &unk_1000F1580);
  v36 = swift_allocObject();
  v36[2] = v34;
  v36[3] = v35;
  v36[4] = v33;

  sub_100022960(0, 0, v6, &unk_1000F1608, v36);
}

uint64_t sub_10003B66C(void *a1)
{
  v2 = v1;
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_1000E0D68();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v11 = sub_1000E1F08();
  sub_1000049D0(v11, qword_100123188);
  v12 = a1;
  v13 = sub_1000E1EE8();
  v14 = sub_1000E2658();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v36 = v6;
    v16 = v15;
    v37 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = TUConversationAVMode.description.getter([v12 avMode]);
    v19 = sub_100029C70(v17, v18, &v37);
    v35 = v2;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = [v12 UUID];
    sub_1000E0D38();

    sub_10003BB3C(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = sub_1000E2C18();
    v24 = v23;
    (*(v8 + 8))(v10, v7);
    v25 = sub_100029C70(v22, v24, &v37);
    v2 = v35;

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Conversation avMode changed to %s for %s.", v16, 0x16u);
    swift_arrayDestroy();

    v6 = v36;
  }

  v26 = sub_1000E2538();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  v27 = qword_10011DC08;
  v29 = v2;
  if (v27 != -1)
  {
    swift_once();
  }

  v30 = qword_1001230D0;
  v31 = sub_10003BB3C(&unk_10011F010, v28, type metadata accessor for NearbySuggestionActor, &unk_1000F1580);
  v32 = swift_allocObject();
  v32[2] = v30;
  v32[3] = v31;
  v32[4] = v29;

  sub_100022960(0, 0, v6, &unk_1000F15F0, v32);
}

uint64_t sub_10003BA88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D64;

  return sub_100035C98();
}

uint64_t sub_10003BB3C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10003BB84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D64;

  return sub_100035C98();
}

uint64_t sub_10003BC38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D64;

  return sub_100035794();
}

uint64_t sub_10003BD24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002E7C;

  return sub_100034CD8(a1, v4, v5, v6);
}

uint64_t sub_10003BE24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&unk_10011F0C0, &qword_1000F1670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003BECC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_10002EB44(a1, v4, v5, v6);
}

uint64_t sub_10003BF80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_10002DFF8(a1, v4, v5, v6);
}

uint64_t sub_10003C034()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003C08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_10001223C(a3, &v24[-1] - v11);
  v13 = sub_1000E2538();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100002248(v12);
  }

  else
  {
    sub_1000E2528();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000E24B8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1000E2378();
      sub_10003C924(v20 + 32, v24);

      v21 = v24[0];
      sub_100002248(a3);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100002248(a3);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t WeakTask.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  WeakTask.init(_:)(a1, a2);
  return v4;
}

uint64_t WeakTask.value.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_10003C368, 0, 0);
}

uint64_t sub_10003C368()
{
  v1 = v0[4];
  v2 = *(v0[3] + 16);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = *(v1 + 80);
  v0[6] = v4;
  v5 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  *v3 = v0;
  v3[1] = sub_10003C440;
  v6 = v0[2];

  return Task.value.getter(v6, v2, v4, v5, &protocol self-conformance witness table for Error);
}

uint64_t sub_10003C440()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10003C570, 0, 0);
  }
}

uint64_t sub_10003C570()
{
  (*(*(v0[6] - 8) + 56))(v0[2], 0, 1);
  v1 = v0[1];

  return v1();
}

uint64_t *WeakTask.init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_1000E2538();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v11 = *(v5 + 80);
  v10[4] = v11;
  v10[5] = a1;
  v10[6] = a2;
  v2[2] = sub_10003C08C(0, 0, v8, &unk_1000F16D0, v10, v11);
  return v2;
}

uint64_t sub_10003C730(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002E7C;

  return sub_1000252C4(a1, v4, v5, v6);
}

void *WeakTask.deinit()
{

  sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  sub_1000E2558();

  return v0;
}

uint64_t WeakTask.__deallocating_deinit()
{
  WeakTask.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10003C924@<X0>(uint64_t result@<X0>, uint64_t *a4@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003CA10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v8 = *(i - 1);
    v7 = *i;
    v9 = *v3 >> 62;
    v10 = *i >> 62;
    if (v9 == 3)
    {
      if (v5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == 0xC000000000000000;
      }

      v12 = 0;
      v13 = v11 && *i >> 62 == 3;
      if (v13 && !v8 && v7 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v10 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v19 = *(v5 + 16);
        v18 = *(v5 + 24);
        v16 = __OFSUB__(v18, v19);
        v12 = v18 - v19;
        if (v16)
        {
          goto LABEL_138;
        }

        goto LABEL_28;
      }

      v12 = 0;
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

    else if (v9)
    {
      LODWORD(v12) = HIDWORD(v5) - v5;
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_137;
      }

      v12 = v12;
      if (v10 <= 1)
      {
LABEL_29:
        if (v10)
        {
          LODWORD(v17) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
          }

          v17 = v17;
        }

        else
        {
          v17 = BYTE6(v7);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v12 = BYTE6(v6);
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

LABEL_22:
    if (v10 != 2)
    {
      if (v12)
      {
        return 0;
      }

      goto LABEL_6;
    }

    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (v16)
    {
      goto LABEL_136;
    }

LABEL_33:
    if (v12 != v17)
    {
      return 0;
    }

    if (v12 < 1)
    {
      goto LABEL_6;
    }

    if (v9 > 1)
    {
      break;
    }

    if (v9)
    {
      v33 = v5;
      if (v5 > v5 >> 32)
      {
        goto LABEL_139;
      }

      v64 = *(v3 - 1);
      sub_1000123E0(v5, v6);
      sub_1000123E0(v8, v7);
      v27 = sub_1000E0B08();
      if (v27)
      {
        v34 = sub_1000E0B28();
        if (__OFSUB__(v33, v34))
        {
          goto LABEL_141;
        }

        v27 += v33 - v34;
      }

      sub_1000E0B18();
      if (v10 == 2)
      {
        v62 = v27;
        v54 = *(v8 + 16);
        v53 = *(v8 + 24);
        v29 = sub_1000E0B08();
        if (v29)
        {
          v55 = sub_1000E0B28();
          if (__OFSUB__(v54, v55))
          {
            goto LABEL_155;
          }

          v29 += v54 - v55;
        }

        v16 = __OFSUB__(v53, v54);
        v56 = v53 - v54;
        if (v16)
        {
          goto LABEL_151;
        }

        v57 = sub_1000E0B18();
        if (v57 >= v56)
        {
          v32 = v56;
        }

        else
        {
          v32 = v57;
        }

        result = v62;
        if (!v62)
        {
          goto LABEL_166;
        }

        if (!v29)
        {
          goto LABEL_165;
        }

        goto LABEL_127;
      }

      if (v10 == 1)
      {
        if (v8 >> 32 < v8)
        {
          goto LABEL_150;
        }

        v29 = sub_1000E0B08();
        if (v29)
        {
          v35 = sub_1000E0B28();
          if (__OFSUB__(v8, v35))
          {
            goto LABEL_157;
          }

          v29 += v8 - v35;
        }

        v36 = sub_1000E0B18();
        if (v36 >= (v8 >> 32) - v8)
        {
          v32 = (v8 >> 32) - v8;
        }

        else
        {
          v32 = v36;
        }

        result = v27;
        if (!v27)
        {
          goto LABEL_172;
        }

        if (!v29)
        {
          goto LABEL_171;
        }

LABEL_127:
        if (result == v29)
        {
          sub_100006660(v8, v7);
          sub_100006660(v64, v6);
          goto LABEL_6;
        }

        v58 = v32;
        v59 = v29;
        goto LABEL_132;
      }

      __s1[0] = v8;
      LOWORD(__s1[1]) = v7;
      BYTE2(__s1[1]) = BYTE2(v7);
      BYTE3(__s1[1]) = BYTE3(v7);
      BYTE4(__s1[1]) = BYTE4(v7);
      BYTE5(__s1[1]) = BYTE5(v7);
      if (!v27)
      {
        goto LABEL_162;
      }

      goto LABEL_131;
    }

    __s1[0] = *(v3 - 1);
    LOWORD(__s1[1]) = v6;
    BYTE2(__s1[1]) = BYTE2(v6);
    BYTE3(__s1[1]) = BYTE3(v6);
    BYTE4(__s1[1]) = BYTE4(v6);
    BYTE5(__s1[1]) = BYTE5(v6);
    if (!v10)
    {
      goto LABEL_89;
    }

    v63 = v5;
    if (v10 == 1)
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_143;
      }

      sub_1000123E0(v5, v6);
      sub_1000123E0(v8, v7);
      v21 = sub_1000E0B08();
      if (!v21)
      {
        goto LABEL_159;
      }

      v22 = v21;
      v23 = sub_1000E0B28();
      if (__OFSUB__(v8, v23))
      {
        goto LABEL_147;
      }

      v24 = (v8 - v23 + v22);
      result = sub_1000E0B18();
      if (!v24)
      {
        goto LABEL_160;
      }
    }

    else
    {
      v41 = *(v8 + 16);
      v40 = *(v8 + 24);
      sub_1000123E0(v5, v6);
      sub_1000123E0(v8, v7);
      v24 = sub_1000E0B08();
      if (v24)
      {
        v42 = sub_1000E0B28();
        if (__OFSUB__(v41, v42))
        {
          goto LABEL_152;
        }

        v24 += v41 - v42;
      }

      v16 = __OFSUB__(v40, v41);
      v20 = v40 - v41;
      if (v16)
      {
        goto LABEL_145;
      }

      result = sub_1000E0B18();
      if (!v24)
      {
        goto LABEL_158;
      }
    }

LABEL_101:
    if (result >= v20)
    {
      v46 = v20;
    }

    else
    {
      v46 = result;
    }

    v47 = memcmp(__s1, v24, v46);
    sub_100006660(v8, v7);
    sub_100006660(v63, v6);
    if (v47)
    {
      return 0;
    }

LABEL_6:
    v3 += 2;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v9 != 2)
  {
    memset(__s1, 0, 14);
    if (!v10)
    {
LABEL_89:
      __s2 = v8;
      v66 = v7;
      v67 = BYTE2(v7);
      v68 = BYTE3(v7);
      v69 = BYTE4(v7);
      v70 = BYTE5(v7);
      if (memcmp(__s1, &__s2, BYTE6(v7)))
      {
        return 0;
      }

      goto LABEL_6;
    }

    v63 = v5;
    if (v10 == 2)
    {
      v38 = *(v8 + 16);
      v37 = *(v8 + 24);
      sub_1000123E0(v5, v6);
      sub_1000123E0(v8, v7);
      v24 = sub_1000E0B08();
      if (v24)
      {
        v39 = sub_1000E0B28();
        if (__OFSUB__(v38, v39))
        {
          goto LABEL_153;
        }

        v24 += v38 - v39;
      }

      v16 = __OFSUB__(v37, v38);
      v20 = v37 - v38;
      if (v16)
      {
        goto LABEL_146;
      }

      result = sub_1000E0B18();
      if (!v24)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_142;
      }

      sub_1000123E0(v5, v6);
      sub_1000123E0(v8, v7);
      v43 = sub_1000E0B08();
      if (!v43)
      {
        goto LABEL_163;
      }

      v44 = v43;
      v45 = sub_1000E0B28();
      if (__OFSUB__(v8, v45))
      {
        goto LABEL_148;
      }

      v24 = (v8 - v45 + v44);
      result = sub_1000E0B18();
      if (!v24)
      {
        goto LABEL_164;
      }
    }

    goto LABEL_101;
  }

  v26 = *(v5 + 16);
  v64 = *(v3 - 1);
  sub_1000123E0(v5, v6);
  sub_1000123E0(v8, v7);
  v27 = sub_1000E0B08();
  if (v27)
  {
    v28 = sub_1000E0B28();
    if (__OFSUB__(v26, v28))
    {
      goto LABEL_140;
    }

    v27 += v26 - v28;
  }

  sub_1000E0B18();
  if (v10 == 2)
  {
    v61 = v27;
    v49 = *(v8 + 16);
    v48 = *(v8 + 24);
    v29 = sub_1000E0B08();
    if (v29)
    {
      v50 = sub_1000E0B28();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_154;
      }

      v29 += v49 - v50;
    }

    v16 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v16)
    {
      goto LABEL_149;
    }

    v52 = sub_1000E0B18();
    if (v52 >= v51)
    {
      v32 = v51;
    }

    else
    {
      v32 = v52;
    }

    result = v61;
    if (!v61)
    {
      goto LABEL_170;
    }

    if (!v29)
    {
      goto LABEL_169;
    }

    goto LABEL_127;
  }

  if (v10 == 1)
  {
    if (v8 >> 32 < v8)
    {
      goto LABEL_144;
    }

    v29 = sub_1000E0B08();
    if (v29)
    {
      v30 = sub_1000E0B28();
      if (__OFSUB__(v8, v30))
      {
        goto LABEL_156;
      }

      v29 += v8 - v30;
    }

    v31 = sub_1000E0B18();
    if (v31 >= (v8 >> 32) - v8)
    {
      v32 = (v8 >> 32) - v8;
    }

    else
    {
      v32 = v31;
    }

    result = v27;
    if (!v27)
    {
      goto LABEL_168;
    }

    if (!v29)
    {
      goto LABEL_167;
    }

    goto LABEL_127;
  }

  __s1[0] = v8;
  LOWORD(__s1[1]) = v7;
  BYTE2(__s1[1]) = BYTE2(v7);
  BYTE3(__s1[1]) = BYTE3(v7);
  BYTE4(__s1[1]) = BYTE4(v7);
  BYTE5(__s1[1]) = BYTE5(v7);
  if (v27)
  {
LABEL_131:
    v58 = BYTE6(v7);
    v59 = __s1;
    result = v27;
LABEL_132:
    v60 = memcmp(result, v59, v58);
    sub_100006660(v8, v7);
    sub_100006660(v64, v6);
    if (v60)
    {
      return 0;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  sub_1000E0B18();
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  result = sub_1000E0B18();
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
  return result;
}

void sub_10003D270(uint64_t a1)
{
  sub_1000E2398();
  sub_1000E0C98();
  sub_1000E0C98();
  v2 = *(v1 + 48);
  v3 = *(v2 + 16);
  sub_1000E2D58(v3);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_1000123E0(v5, *v4);
      sub_1000E0C98();
      sub_100006660(v5, v6);
      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_10003D328@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10003DC48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003D368(uint64_t a1)
{
  v2 = sub_10000641C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003D3A4(uint64_t a1)
{
  v2 = sub_10000641C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10003D3E0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10003DDB4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

Swift::Int sub_10003D430()
{
  sub_1000E2D48();
  sub_10003D270(v1);
  return sub_1000E2D68();
}

Swift::Int sub_10003D474()
{
  sub_1000E2D48();
  sub_10003D270(v1);
  return sub_1000E2D68();
}

uint64_t sub_10003D4B0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1000E2C68() & 1) == 0 || !sub_10003DAE0(v2, v4, v7, v8) || !sub_10003DAE0(v3, v6, v9, v10))
  {
    return 0;
  }

  return sub_10003CA10(v5, v11);
}

__n128 sub_10003D598(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10003D5B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10003D614()
{
  result = qword_10011F160;
  if (!qword_10011F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F160);
  }

  return result;
}

uint64_t sub_10003D668@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1000E0B08();
    if (v10)
    {
      v11 = sub_1000E0B28();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1000E0B18();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1000E0B08();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1000E0B28();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1000E0B18();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10003D898(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10003DA28(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100006660(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10003D668(v13, a3, a4, &v12);
  v10 = v4;
  sub_100006660(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10003DA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1000E0B08();
  v11 = result;
  if (result)
  {
    result = sub_1000E0B28();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1000E0B18();
  sub_10003D668(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_10003DAE0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1000123E0(a3, a4);
          return sub_10003D898(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10003DC48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_1000E2C68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000EAB00 == a2 || (sub_1000E2C68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000EAB20 == a2 || (sub_1000E2C68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000EAB40 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000E2C68();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10003DDB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000ADE4(&qword_10011F190, &qword_1000F18F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_1000036AC(a1, a1[3]);
  sub_10000641C();
  sub_1000E2D88();
  if (v2)
  {
    return sub_10000E9DC(a1);
  }

  LOBYTE(v24) = 0;
  v22 = sub_1000E2BB8();
  v23 = v9;
  v26 = 1;
  sub_10003E150();
  sub_1000E2BC8();
  v20 = v24;
  v21 = v25;
  v26 = 2;
  sub_1000E2BC8();
  v10 = v24;
  v19 = v25;
  sub_10000ADE4(&qword_10011F180, &qword_1000F18F0);
  v26 = 3;
  sub_1000066B4(&qword_10011F1A0, sub_10003E150, &protocol conformance descriptor for <A> [A]);
  sub_1000E2BC8();
  (*(v6 + 8))(v8, v5);
  v12 = v23;
  v11 = v24;

  v13 = v10;
  v15 = v20;
  v14 = v21;
  sub_1000123E0(v20, v21);
  v16 = v19;
  sub_1000123E0(v13, v19);

  sub_10000E9DC(a1);

  sub_100006660(v15, v14);
  sub_100006660(v13, v16);

  *a2 = v22;
  a2[1] = v12;
  a2[2] = v15;
  a2[3] = v14;
  a2[4] = v13;
  a2[5] = v16;
  a2[6] = v11;
  return result;
}

unint64_t sub_10003E150()
{
  result = qword_10011F198;
  if (!qword_10011F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F198);
  }

  return result;
}

unint64_t sub_10003E1C0()
{
  result = qword_10011F1A8;
  if (!qword_10011F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F1A8);
  }

  return result;
}

unint64_t sub_10003E218()
{
  result = qword_10011F1B0;
  if (!qword_10011F1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F1B0);
  }

  return result;
}

unint64_t sub_10003E270()
{
  result = qword_10011F1B8;
  if (!qword_10011F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F1B8);
  }

  return result;
}

uint64_t sub_10003E2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1000CA67C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10000B2D0(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1000CB5F0();
        v14 = v16;
      }

      result = sub_1000C9E04(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_10003E3BC()
{
  type metadata accessor for ConduitDeviceActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1001230E0 = v0;
  return result;
}

uint64_t sub_10003E41C()
{
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10003E478()
{
  v0 = type metadata accessor for ConduitDeviceActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v0);
}

unint64_t sub_10003E4B0(char a1)
{
  result = 0xD00000000000002BLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000029;
      break;
    case 2:
      result = 0xD000000000000028;
      break;
    case 3:
      result = 0xD000000000000030;
      break;
    case 4:
      result = 0xD000000000000031;
      break;
    case 5:
      result = 0xD000000000000034;
      break;
    case 6:
      result = 0xD000000000000032;
      break;
    case 8:
      result = 0xD00000000000002FLL;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0xD000000000000033;
      break;
    case 11:
      result = 0xD00000000000002ELL;
      break;
    case 12:
      result = 0xD00000000000002DLL;
      break;
    case 13:
      result = 0xD000000000000036;
      break;
    case 14:
      result = 0xD000000000000037;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10003E638(char a1)
{
  result = 0xD00000000000002BLL;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0xD000000000000029;
      break;
    case 2:
    case 13:
      result = 0xD000000000000030;
      break;
    case 3:
      result = 0xD000000000000033;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    case 5:
    case 7:
      result = 0xD000000000000027;
      break;
    case 8:
      result = 0xD000000000000038;
      break;
    case 9:
      result = 0xD00000000000002CLL;
      break;
    case 10:
      result = 0xD000000000000028;
      break;
    case 11:
      result = 0xD00000000000002BLL;
      break;
    case 12:
      result = 0xD000000000000034;
      break;
    case 14:
      result = 0xD00000000000002ALL;
      break;
    case 15:
      result = 0xD00000000000002FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10003E7C0()
{
  v1 = 0xD00000000000002CLL;
  v2 = 0xD000000000000029;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000002CLL;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000002DLL;
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

void sub_10003E830()
{
  v0 = [objc_allocWithZone(RPCompanionLinkClient) init];
  v1 = objc_allocWithZone(RPCompanionLinkClient);
  v2 = v0;
  v3 = [v1 init];
  v4 = objc_allocWithZone(RPRemoteDisplayDiscovery);
  v5 = v3;
  v6 = [v4 init];
  type metadata accessor for ConduitDeviceManager();
  v7 = swift_allocObject();
  v8 = v6;
  v9 = sub_100057AFC(v2, v5, v8, v7);

  qword_1001230E8 = v9;
}

uint64_t sub_10003E904(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_10003E924, 0, 0);
}

uint64_t sub_10003E924()
{
  v1 = v0;
  v16 = v0 + 2;
  v2 = v0 + 10;
  v3 = v1[18];
  v4 = v1[19];
  *(v4 + 24) = v3;
  v5 = objc_allocWithZone(RPCompanionLinkClient);

  v6 = [v5 init];
  *(v4 + 16) = v6;
  [v6 setControlFlags:0x180000002802];
  v7 = *(v4 + 16);
  v1[14] = sub_10005A1C4;
  v1[15] = v3;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10002ED24;
  v1[13] = &unk_100114638;
  v8 = _Block_copy(v2);

  v9 = v7;

  [v9 setDeviceFoundHandler:v8];
  _Block_release(v8);

  v10 = *(v4 + 16);
  v1[14] = sub_10005A210;
  v1[15] = v3;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10002ED24;
  v1[13] = &unk_100114660;
  v11 = _Block_copy(v2);

  v12 = v10;

  [v12 setDeviceLostHandler:v11];
  _Block_release(v11);

  v13 = *(v4 + 16);
  v1[20] = v13;
  v1[2] = v1;
  v1[3] = sub_10003EBA8;
  v14 = swift_continuation_init();
  v1[17] = sub_10000ADE4(&qword_10011E7C0, &qword_1000F0C30);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100014FC4;
  v1[13] = &unk_100114688;
  v1[14] = v14;
  [v13 activateWithCompletion:v2];

  return _swift_continuation_await(v16);
}

uint64_t sub_10003EBA8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_10003EDE4;
  }

  else
  {
    v2 = sub_10003ECB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003ECB8()
{
  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_1001231A0);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[BLE] BLE discovery client assertion activated!", v4, 2u);
  }

  v5 = *(v0 + 8);
  v6 = *(v0 + 152);

  return v5(v6);
}

uint64_t sub_10003EDE4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  swift_willThrow();

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_10003EE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230E0;

  return _swift_task_switch(sub_10003EF08, v6, 0);
}

uint64_t sub_10003EF08()
{
  sub_100045B10(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003EF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230E0;

  return _swift_task_switch(sub_10003F000, v6, 0);
}

uint64_t sub_10003F000()
{
  sub_100046064(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003F060()
{
  v1 = v0;
  v2 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = [*(v1 + 16) activeDevices];
  sub_10000CAAC(0, &qword_10011F5E0, RPCompanionLinkDevice_ptr);
  v6 = sub_1000E2468();

  v8 = *(v1 + 16);
  v7 = *(v1 + 24);

  [v8 invalidate];
  v9 = sub_1000E2538();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = qword_10011DC18;

  if (v10 != -1)
  {
    swift_once();
  }

  v12 = qword_1001230E0;
  v13 = sub_100058F28(&qword_1001201E0, v11, type metadata accessor for ConduitDeviceActor, &unk_1000F1B48);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v6;
  v14[5] = v7;

  sub_100022960(0, 0, v4, &unk_1000F1BB8, v14);

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v15 = sub_1000E1F08();
  sub_1000049D0(v15, qword_1001231A0);
  v16 = sub_1000E1EE8();
  v17 = sub_1000E2698();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "[BLE] BLE discovery client assertion deactivated...", v18, 2u);
  }

  return v1;
}

uint64_t sub_10003F328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230E0;

  return _swift_task_switch(sub_10003F3C0, v6, 0);
}

void sub_10003F3C0(__n128 a1)
{
  v30 = v1;
  v2 = v1[5];
  if (v2 >> 62)
  {
    v3 = sub_1000E2B68();
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  v5 = v1[6];
  v6 = v2 & 0xC000000000000001;
  v28 = v1[5] + 32;
  v7 = &CSDVoucherManagerImpl__prots_0;
  a1.n128_u64[0] = 136315138;
  v25 = a1;
  v26 = v2 & 0xC000000000000001;
  do
  {
    if (v6)
    {
      v8 = sub_1000E2A98();
    }

    else
    {
      v8 = *(v28 + 8 * v4);
    }

    v9 = v8;
    v10 = [v8 v7[352].count];
    if (v10 && (v11 = v10, sub_1000E2338(), v11, v32._countAndFlagsBits = 0x5654656C707041, v32._object = 0xE700000000000000, LOBYTE(v11) = sub_1000E2408(v32), , (v11 & 1) != 0))
    {
      v12 = sub_10004595C(v9);
      if (v12)
      {
        v13 = v12;
        if ((sub_100046564(v12) & 1) == 0)
        {
          v14 = *(v13 + 16);
          v15 = *(v13 + 24);
          swift_beginAccess();

          sub_10003E2C4(0, v14, v15);
          swift_endAccess();
          if (qword_10011DC88 != -1)
          {
            swift_once();
          }

          v16 = sub_1000E1F08();
          sub_1000049D0(v16, qword_1001231A0);

          v17 = sub_1000E1EE8();
          v18 = sub_1000E2698();

          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v29 = v27;
            *v19 = v25.n128_u32[0];
            v20 = sub_100013B80();
            v22 = v5;
            v23 = sub_100029C70(v20, v21, &v29);

            *(v19 + 4) = v23;
            v5 = v22;
            _os_log_impl(&_mh_execute_header, v17, v18, "Conduit device disconnected %s.", v19, 0xCu);
            sub_10000E9DC(v27);

            v6 = v26;
          }

          v1[2] = v13;
          sub_1000E1FC8();
        }
      }

      v7 = &CSDVoucherManagerImpl__prots_0;
    }

    else
    {
    }

    ++v4;
  }

  while (v3 != v4);
LABEL_22:
  v24 = v1[1];

  v24(a1);
}

uint64_t sub_10003F6D8()
{
  sub_10003F060();

  return swift_deallocClassInstance();
}

uint64_t sub_10003F70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230E0;

  return _swift_task_switch(sub_10003F7A8, v6, 0);
}

uint64_t sub_10003F7A8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_100045B10(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003F848(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, char *, uint64_t, void *))
{
  v9 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_1000E2538();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = qword_10011DC18;

  v15 = a1;
  if (v13 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230E0;
  v17 = sub_100058F28(&qword_1001201E0, v14, type metadata accessor for ConduitDeviceActor, &unk_1000F1B48);
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = a2;
  v18[5] = v15;

  a5(0, 0, v11, a4, v18);
}

uint64_t sub_10003F9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230E0;

  return _swift_task_switch(sub_10003FA80, v6, 0);
}

uint64_t sub_10003FA80()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_100046064(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003FB20(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_1000E2538();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = qword_10011DC18;

  if (v10 != -1)
  {
    swift_once();
  }

  v12 = qword_1001230E0;
  v13 = sub_100058F28(&qword_1001201E0, v11, type metadata accessor for ConduitDeviceActor, &unk_1000F1B48);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  *(v14 + 32) = a4;
  *(v14 + 40) = a1;

  sub_100022F54(0, 0, v8, &unk_1000F1B88, v14);
}

uint64_t sub_10003FCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230E0;

  return _swift_task_switch(sub_10003FD50, v6, 0);
}

uint64_t sub_10003FD50()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1000462C4(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void *sub_10003FDF0()
{
  swift_beginAccess();
  sub_10002B4BC((v0 + 7), v6);
  v1 = v7;
  v2 = v8;
  sub_1000036AC(v6, v7);
  (*(v2 + 160))(v1, v2);
  sub_10000E9DC(v6);
  sub_10002B4BC((v0 + 12), v6);
  v3 = v7;
  v4 = v8;
  sub_1000036AC(v6, v7);
  (*(v4 + 160))(v3, v4);
  sub_10000E9DC(v6);
  sub_100007E88((v0 + 2));

  sub_10000E9DC(v0 + 7);
  sub_10000E9DC(v0 + 12);
  sub_10000E9DC(v0 + 17);
  swift_weakDestroy();

  return v0;
}

uint64_t sub_10003FF08()
{
  sub_10003FDF0();

  return swift_deallocClassInstance();
}

uint64_t sub_10003FF60()
{
  v1[4] = v0;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v1[5] = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v2 = qword_1001230E0;
  v1[6] = qword_1001230E0;

  return _swift_task_switch(sub_100040034, v2, 0);
}

uint64_t sub_100040034()
{
  if (TULockdownModeEnabled())
  {
    sub_100058DE4();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();

    v2 = v0[1];

    return v2();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = Strong;

      v6 = v0[1];

      return v6(v5);
    }

    else
    {
      v7 = v0[4];
      v8 = *(v7 + 184);
      v0[7] = v8;
      if (v8)
      {

        v9 = swift_task_alloc();
        v0[8] = v9;
        v10 = type metadata accessor for ConduitDeviceManager.BleDiscoveryAssertion();
        v11 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
        *v9 = v0;
        v9[1] = sub_100040360;
        v12 = v0 + 3;
      }

      else
      {
        v13 = v0[5];
        v14 = v0[6];
        v15 = sub_1000E2538();
        (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
        v17 = sub_100058F28(&qword_1001201E0, v16, type metadata accessor for ConduitDeviceActor, &unk_1000F1B48);
        v18 = swift_allocObject();
        v18[2] = v14;
        v18[3] = v17;
        v18[4] = v7;

        v8 = sub_100022690(0, 0, v13, &unk_1000F1DA8, v18);
        v0[10] = v8;
        *(v7 + 184) = v8;

        v19 = swift_task_alloc();
        v0[11] = v19;
        v10 = type metadata accessor for ConduitDeviceManager.BleDiscoveryAssertion();
        v11 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
        *v19 = v0;
        v19[1] = sub_100040500;
        v12 = v0 + 2;
      }

      return Task.value.getter(v12, v8, v10, v11, &protocol self-conformance witness table for Error);
    }
  }
}

uint64_t sub_100040360()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1000406BC;
  }

  else
  {
    v4 = sub_10004048C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004048C()
{

  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100040500()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100040728;
  }

  else
  {
    v4 = sub_10004062C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004062C()
{
  v1 = v0[4];

  v2 = v0[2];
  swift_weakAssign();
  *(v1 + 184) = 0;

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1000406BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100040728()
{
  v1 = *(v0 + 32);

  *(v1 + 184) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000407A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v4[3] = qword_1001230E0;
  type metadata accessor for ConduitDeviceManager.BleDiscoveryAssertion();
  swift_allocObject();

  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1000408A4;

  return sub_10003E904(a4);
}

uint64_t sub_1000408A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 24);
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_1000409F0, v8, 0);
  }
}

uint64_t sub_100040A14(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = [*(result + 16) activeDevices];
    sub_10000CAAC(0, &qword_10011F5E0, RPCompanionLinkDevice_ptr);
    v4 = sub_1000E2468();

    if (v4 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000E2B68())
    {
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v8 = v4 & 0xFFFFFFFFFFFFFF8;
      v9 = &CSDVoucherManagerImpl__prots_0;
      v22 = v4;
      while (1)
      {
        if (v7)
        {
          v10 = sub_1000E2A98();
        }

        else
        {
          if (v6 >= *(v8 + 16))
          {
            goto LABEL_22;
          }

          v10 = *(v4 + 8 * v6 + 32);
        }

        v11 = v10;
        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (([v10 v9[360].count] & 2) != 0 && (v23 = *(a1 + 24), v24 = *(a1 + 16), (v13 = objc_msgSend(v11, "idsDeviceIdentifier")) != 0))
        {
          v14 = v13;
          v15 = i;
          v16 = a1;
          v17 = sub_1000E2338();
          v19 = v18;

          if (v24 == v17 && v23 == v19)
          {

            return 1;
          }

          v21 = sub_1000E2C68();

          a1 = v16;
          i = v15;
          v4 = v22;
          v9 = &CSDVoucherManagerImpl__prots_0;
          if (v21)
          {

            return 1;
          }
        }

        else
        {
        }

        ++v6;
        if (v12 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:

    return 0;
  }

  return result;
}

uint64_t sub_100040C34()
{
  *(v1 + 744) = v0;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v2 = qword_1001230E0;
  *(v1 + 752) = qword_1001230E0;

  return _swift_task_switch(sub_100040CD0, v2, 0);
}

uint64_t sub_100040CD0()
{
  if (TULockdownModeEnabled())
  {
    sub_100058DE4();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[93];
    swift_beginAccess();
    sub_10002B4BC(v4 + 56, (v0 + 2));
    v5 = v0[5];
    v6 = v0[6];
    sub_1000036AC(v0 + 2, v5);
    v8 = (*(v6 + 168) + **(v6 + 168));
    v7 = swift_task_alloc();
    v0[95] = v7;
    *v7 = v0;
    v7[1] = sub_100040E80;

    return v8(v5, v6);
  }
}

uint64_t sub_100040E80()
{
  v2 = *v1;
  *(*v1 + 768) = v0;

  v3 = *(v2 + 752);
  if (v0)
  {
    v4 = sub_100042554;
  }

  else
  {
    v4 = sub_100040FAC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100040FAC()
{
  v1 = v0[93];
  sub_10000E9DC(v0 + 2);
  sub_10002B4BC(v1 + 96, (v0 + 7));
  v2 = v0[10];
  v3 = v0[11];
  sub_1000036AC(v0 + 7, v2);
  v6 = (*(v3 + 168) + **(v3 + 168));
  v4 = swift_task_alloc();
  v0[97] = v4;
  *v4 = v0;
  v4[1] = sub_1000410E8;

  return v6(v2, v3);
}

uint64_t sub_1000410E8()
{
  v2 = *v1;
  *(*v1 + 784) = v0;

  v3 = *(v2 + 752);
  if (v0)
  {
    v4 = sub_1000425B8;
  }

  else
  {
    v4 = sub_100041214;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100041214()
{
  v1 = v0[93];
  sub_10000E9DC(v0 + 7);
  swift_beginAccess();
  sub_10002B4BC(v1 + 136, (v0 + 12));
  v2 = v0[15];
  v3 = v0[16];
  sub_1000036AC(v0 + 12, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  v0[99] = v4;
  *v4 = v0;
  v4[1] = sub_100041364;

  return v6(v2, v3);
}

uint64_t sub_100041364()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  v3 = *(v2 + 752);
  if (v0)
  {
    v4 = sub_10004261C;
  }

  else
  {
    v4 = sub_100041490;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100041490()
{
  v1 = v0[93];
  sub_10000E9DC(v0 + 12);
  v2 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 17));
  v4 = v0[20];
  v3 = v0[21];
  sub_1000036AC(v0 + 17, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 2;
  *(v6 + 32) = &unk_1000F1BD0;
  *(v6 + 40) = v2;
  v7 = *(v3 + 184);

  v7(0xD000000000000028, 0x80000001000EB340, 0, sub_1000582AC, v6, v4, v3);

  sub_10000E9DC(v0 + 17);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 22));
  v9 = v0[25];
  v10 = v0[26];
  sub_1000036AC(v0 + 22, v9);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = 3;
  *(v12 + 32) = &unk_1000F1BE0;
  *(v12 + 40) = v8;
  v13 = *(v10 + 184);

  v13(0xD000000000000030, 0x80000001000EB300, 0, sub_1000583A8, v12, v9, v10);

  sub_10000E9DC(v0 + 22);
  v14 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 27));
  v15 = v0[30];
  v16 = v0[31];
  sub_1000036AC(v0 + 27, v15);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = 4;
  *(v18 + 32) = &unk_1000F1BF0;
  *(v18 + 40) = v14;
  v19 = *(v16 + 184);

  v19(0xD000000000000031, 0x80000001000EB2C0, 0, sub_1000584A4, v18, v15, v16);

  sub_10000E9DC(v0 + 27);
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 32));
  v21 = v0[35];
  v22 = v0[36];
  sub_1000036AC(v0 + 32, v21);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = 5;
  *(v24 + 32) = &unk_1000F1C00;
  *(v24 + 40) = v20;
  v25 = *(v22 + 184);

  v25(0xD000000000000034, 0x80000001000EB280, 0, sub_1000585A0, v24, v21, v22);

  sub_10000E9DC(v0 + 32);
  v26 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 37));
  v27 = v0[40];
  v28 = v0[41];
  sub_1000036AC(v0 + 37, v27);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = 6;
  *(v30 + 32) = &unk_1000F1C10;
  *(v30 + 40) = v26;
  v31 = *(v28 + 184);

  v31(0xD000000000000032, 0x80000001000EB240, 0, sub_10005869C, v30, v27, v28);

  sub_10000E9DC(v0 + 37);
  v32 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 42));
  v33 = v0[45];
  v34 = v0[46];
  sub_1000036AC(v0 + 42, v33);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = 7;
  *(v36 + 32) = &unk_1000F1C20;
  *(v36 + 40) = v32;
  v37 = *(v34 + 184);

  v37(0xD00000000000002BLL, 0x80000001000EB210, 0, sub_100058798, v36, v33, v34);

  sub_10000E9DC(v0 + 42);
  v38 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 47));
  v39 = v0[50];
  v40 = v0[51];
  sub_1000036AC(v0 + 47, v39);
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = 10;
  *(v42 + 32) = &unk_1000F1C30;
  *(v42 + 40) = v38;
  v43 = *(v40 + 184);

  v43(0xD000000000000033, 0x80000001000EB170, 0, sub_100058894, v42, v39, v40);

  sub_10000E9DC(v0 + 47);
  v44 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 52));
  v45 = v0[55];
  v46 = v0[56];
  sub_1000036AC(v0 + 52, v45);
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  *(v48 + 24) = 11;
  *(v48 + 32) = &unk_1000F1C40;
  *(v48 + 40) = v44;
  v49 = *(v46 + 184);

  v49(0xD00000000000002ELL, 0x80000001000EB140, 0, sub_100058990, v48, v45, v46);

  sub_10000E9DC(v0 + 52);
  v50 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 57));
  v51 = v0[60];
  v52 = v0[61];
  sub_1000036AC(v0 + 57, v51);
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  *(v54 + 24) = 12;
  *(v54 + 32) = &unk_1000F1C50;
  *(v54 + 40) = v50;
  v55 = *(v52 + 184);

  v55(0xD00000000000002DLL, 0x80000001000EB110, 0, sub_100058A8C, v54, v51, v52);

  sub_10000E9DC(v0 + 57);
  v56 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 62));
  v57 = v0[65];
  v58 = v0[66];
  sub_1000036AC(v0 + 62, v57);
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = 13;
  *(v60 + 32) = &unk_1000F1C60;
  *(v60 + 40) = v56;
  v61 = *(v58 + 184);

  v61(0xD000000000000036, 0x80000001000EB0D0, 0, sub_100058B88, v60, v57, v58);

  sub_10000E9DC(v0 + 62);
  v62 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 67));
  v63 = v0[70];
  v64 = v0[71];
  sub_1000036AC(v0 + 67, v63);
  v65 = swift_allocObject();
  swift_weakInit();
  v66 = swift_allocObject();
  *(v66 + 16) = v65;
  *(v66 + 24) = 14;
  *(v66 + 32) = &unk_1000F1C70;
  *(v66 + 40) = v62;
  v67 = *(v64 + 184);

  v67(0xD000000000000037, 0x80000001000EB090, 0, sub_100058C84, v66, v63, v64);

  sub_10000E9DC(v0 + 67);
  v68 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 72));
  v69 = v0[75];
  v70 = v0[76];
  sub_1000036AC(v0 + 72, v69);
  v71 = swift_allocObject();
  swift_weakInit();
  v72 = swift_allocObject();
  *(v72 + 16) = v71;
  *(v72 + 24) = 4;
  *(v72 + 32) = sub_100058CCC;
  *(v72 + 40) = v68;
  v73 = *(v70 + 192);

  v73(0xD000000000000022, 0x80000001000EAF80, 0, sub_100058CD4, v72, v69, v70);

  sub_10000E9DC(v0 + 72);
  v74 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 77));
  v75 = v0[80];
  v76 = v0[81];
  sub_1000036AC(v0 + 77, v75);
  v77 = swift_allocObject();
  swift_weakInit();
  v78 = swift_allocObject();
  *(v78 + 16) = v77;
  *(v78 + 24) = 5;
  *(v78 + 32) = sub_100058D14;
  *(v78 + 40) = v74;
  v79 = *(v76 + 192);

  v79(0xD000000000000027, 0x80000001000EAF50, 0, sub_100058D1C, v78, v75, v76);

  sub_10000E9DC(v0 + 77);
  v80 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v1 + 96, (v0 + 82));
  v81 = v0[85];
  v82 = v0[86];
  sub_1000036AC(v0 + 82, v81);
  v83 = swift_allocObject();
  swift_weakInit();
  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  *(v84 + 24) = 10;
  *(v84 + 32) = sub_100058D5C;
  *(v84 + 40) = v80;
  v85 = *(v82 + 192);

  v85(0xD000000000000028, 0x80000001000EAE50, 0, sub_100058DA4, v84, v81, v82);

  sub_10000E9DC(v0 + 82);
  v86 = v0[1];

  return v86();
}

uint64_t sub_100042554()
{
  sub_10000E9DC((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000425B8()
{
  sub_10000E9DC((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004261C()
{
  sub_10000E9DC((v0 + 96));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100042680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_100042720, v5, 0);
}

uint64_t sub_100042720()
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), v0[10] = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_100042898;
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];

    return sub_10007B2B0(v5, v3, v4);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100042898()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_100042A28;
  }

  else
  {
    v4 = sub_1000429C4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000429C4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100042A28()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100042A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_100042B2C, v5, 0);
}

uint64_t sub_100042B2C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), v0[10] = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_100042CA4;
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];

    return sub_100071504(v5, v3, v4);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100042CA4()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_10005A564;
  }

  else
  {
    v4 = sub_10005A570;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100042DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_100042E70, v5, 0);
}

uint64_t sub_100042E70()
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), *(v0 + 80) = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v2 = qword_1001230F0;

    return _swift_task_switch(sub_100042FB4, v2, 0);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100042FB4()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100042CA4;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  return sub_1000BCDEC(v4, v2, v3);
}

uint64_t sub_10004305C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_1000430FC, v5, 0);
}

uint64_t sub_1000430FC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), v0[10] = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_100042CA4;
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];

    return sub_1000736AC(v5, v3, v4);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100043274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_100043314, v5, 0);
}

uint64_t sub_100043314()
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), *(v0 + 80) = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v2 = qword_1001230F0;

    return _swift_task_switch(sub_100043458, v2, 0);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100043458()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100042CA4;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  return sub_1000C1D74(v4, v2, v3);
}

uint64_t sub_100043500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_1000435A0, v5, 0);
}

uint64_t sub_1000435A0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), *(v0 + 80) = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v2 = qword_1001230F0;

    return _swift_task_switch(sub_1000436E4, v2, 0);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1000436E4()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100042CA4;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  return sub_1000BF01C(v4, v2, v3);
}

uint64_t sub_10004378C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_10004382C, v5, 0);
}

uint64_t sub_10004382C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), v0[10] = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_100042CA4;
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];

    return sub_100074228(v5, v3, v4);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1000439A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_100043A44, v5, 0);
}

uint64_t sub_100043A44()
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), v0[10] = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_100042CA4;
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];

    return sub_100075BC4(v5, v3, v4);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100043BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_100043C5C, v5, 0);
}

uint64_t sub_100043C5C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), v0[10] = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_100042CA4;
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];

    return sub_10007A0FC(v5, v3, v4);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100043DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_100043E74, v5, 0);
}

uint64_t sub_100043E74()
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), *(v0 + 80) = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v2 = qword_1001230F0;

    return _swift_task_switch(sub_100043FB8, v2, 0);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100043FB8()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100042CA4;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  return sub_1000C3030(v4, v2, v3);
}

uint64_t sub_100044060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230E0;
  v4[9] = qword_1001230E0;

  return _swift_task_switch(sub_100044100, v5, 0);
}

uint64_t sub_100044100()
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), *(v0 + 80) = Strong, , Strong))
  {
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v2 = qword_1001230F0;

    return _swift_task_switch(sub_100044244, v2, 0);
  }

  else
  {
    sub_100058DE4();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100044244()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100042CA4;
  v2 = v0[6];
  v3 = v0[5];

  return sub_1000B2B74(v3, v2);
}

uint64_t sub_1000442EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v9 = sub_1000E2538();
      (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
      v10 = qword_10011DC30;
      swift_unknownObjectRetain();

      if (v10 != -1)
      {
        swift_once();
      }

      v11 = qword_1001230F0;
      v12 = sub_100058F28(&qword_100120020, 255, type metadata accessor for ConduitActor, &unk_1000F2250);
      v13 = swift_allocObject();
      v13[2] = v11;
      v13[3] = v12;
      v13[4] = Strong;
      v13[5] = a2;

      sub_100022F54(0, 0, v6, &unk_1000F1CD8, v13);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000444D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000E17A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v14 = sub_1000E2538();
      (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
      (*(v6 + 16))(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
      v15 = qword_10011DC30;
      swift_unknownObjectRetain();

      v21 = a2;
      if (v15 != -1)
      {
        swift_once();
      }

      v16 = qword_1001230F0;
      v17 = sub_100058F28(&qword_100120020, 255, type metadata accessor for ConduitActor, &unk_1000F2250);
      v18 = (*(v6 + 80) + 40) & ~*(v6 + 80);
      v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      v20 = swift_allocObject();
      *(v20 + 2) = v16;
      *(v20 + 3) = v17;
      *(v20 + 4) = Strong;
      (*(v6 + 32))(&v20[v18], v8, v5);
      *&v20[v19] = v21;

      sub_100022F54(0, 0, v11, &unk_1000F1CB8, v20);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000447A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000E17C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v13 = sub_1000E2538();
      (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
      (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
      v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
      v15 = swift_allocObject();
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 4) = Strong;
      (*(v6 + 32))(&v15[v14], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      *&v15[(v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;

      sub_1000223DC(0, 0, v10, &unk_1000F1C98, v15);
    }
  }

  return result;
}

uint64_t sub_1000449DC(uint64_t a1, void *a2, char a3)
{
  v28._countAndFlagsBits = a1;
  v28._object = a2;
  swift_beginAccess();
  v5 = *(v3 + 48);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
LABEL_5:
  if (v9)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return 0;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
LABEL_10:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = *(*(v5 + 56) + ((v12 << 9) | (8 * v14)));
      result = swift_beginAccess();
      v16 = *(v15 + 40);
      if (*(v16 + 16))
      {
        sub_1000E2D48();
        if (a3)
        {

          if (a3 == 1)
          {
            sub_1000E2A88(39);
          }

          else
          {
            sub_1000E2A88(38);
          }
        }

        else
        {

          sub_1000E2A88(38);
        }

        sub_1000E23A8(v28);
        v29._countAndFlagsBits = 41;
        v29._object = 0xE100000000000000;
        sub_1000E23A8(v29);
        sub_1000E2398();

        v17 = sub_1000E2D68();
        v18 = -1 << *(v16 + 32);
        v19 = v17 & ~v18;
        if ((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          v27 = v5;
          v20 = ~v18;
          v21 = *(v16 + 48);
          while (1)
          {
            v22 = (v21 + 24 * v19);
            v23 = *v22;
            v24 = v22[1];
            v25 = *(v22 + 16);
            if (v25)
            {
              if (v25 == 1)
              {
                if (a3 != 1)
                {
                  goto LABEL_20;
                }
              }

              else if (a3 != 2)
              {
                goto LABEL_20;
              }
            }

            else if (a3)
            {
              goto LABEL_20;
            }

            v26 = v23 == v28._countAndFlagsBits && v24 == v28._object;
            if (v26 || (sub_1000E2C68() & 1) != 0)
            {

              return v15;
            }

LABEL_20:
            v19 = (v19 + 1) & v20;
            if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
            {

              v5 = v27;
              goto LABEL_5;
            }
          }
        }
      }

      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void sub_100044D58(void *a1)
{
  v2 = [a1 knownIdentifiersByHandleType];
  sub_10000CAAC(0, &qword_10011DF80, NSNumber_ptr);
  sub_1000154B8();
  v3 = sub_1000E22B8();

  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);
  swift_beginAccess();
  v8 = 0;
  v9 = (v5 + 63) >> 6;
  v10 = &CSDVoucherManagerImpl__prots_0;
  v80 = v1;
  v81 = v3;
  v78 = v9;
  v79 = v3 + 64;
  while (1)
  {
LABEL_5:
    if (!v7)
    {
      while (1)
      {
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v12 >= v9)
        {

          return;
        }

        v7 = *(v4 + 8 * v12);
        ++v8;
        if (v7)
        {
          v11 = v1;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_87;
    }

    v11 = v1;
    v12 = v8;
LABEL_11:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(*(v3 + 48) + 8 * v14);
    v16 = (*(v3 + 56) + 16 * v14);
    v17 = v16[1];
    v83._countAndFlagsBits = *v16;
    v18 = v15;
    v83._object = v17;

    v82 = v18;
    v19 = [v18 v10[463].count];
    if (!v19)
    {
      v55 = *(v11 + 48);
      v56 = v55 + 64;
      v57 = 1 << *(v55 + 32);
      if (v57 < 64)
      {
        v58 = ~(-1 << v57);
      }

      else
      {
        v58 = -1;
      }

      v59 = v58 & *(v55 + 64);
      v74 = (v57 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v60 = 0;
      v77 = v55;
      while (v59)
      {
LABEL_68:
        v62 = __clz(__rbit64(v59));
        v59 &= v59 - 1;
        v63 = *(*(v55 + 56) + ((v60 << 9) | (8 * v62)));
        swift_beginAccess();
        v64 = *(v63 + 40);
        if (*(v64 + 16))
        {
          sub_1000E2D48();

          sub_1000E2A88(38);

          sub_1000E23A8(v83);
          v86._countAndFlagsBits = 41;
          v86._object = 0xE100000000000000;
          sub_1000E23A8(v86);
          sub_1000E2398();

          v65 = sub_1000E2D68();
          v66 = -1 << *(v64 + 32);
          v67 = v65 & ~v66;
          if ((*(v64 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
          {
            v68 = ~v66;
            v69 = *(v64 + 48);
            while (1)
            {
              v70 = v69 + 24 * v67;
              if (*(v70 + 16) >= 2u)
              {
                v71 = *v70 == v83._countAndFlagsBits && *(v70 + 8) == v83._object;
                if (v71 || (sub_1000E2C68() & 1) != 0)
                {
                  break;
                }
              }

              v67 = (v67 + 1) & v68;
              if (((*(v64 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
              {
                goto LABEL_79;
              }
            }

LABEL_84:

            return;
          }

LABEL_79:

          v55 = v77;
        }
      }

      v1 = v80;
      while (1)
      {
        v61 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_88;
        }

        if (v61 >= v74)
        {
LABEL_81:

          v8 = v12;
          v3 = v81;
          v9 = v78;
          v4 = v79;
          v10 = &CSDVoucherManagerImpl__prots_0;
          goto LABEL_5;
        }

        v59 = *(v56 + 8 * v61);
        ++v60;
        if (v59)
        {
          v60 = v61;
          goto LABEL_68;
        }
      }
    }

    v1 = v11;
    if (v19 == 1)
    {
      break;
    }

    if (v19 == 2)
    {
      v20 = *(v11 + 48);
      v21 = v20 + 64;
      v22 = 1 << *(v20 + 32);
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v24 = v23 & *(v20 + 64);
      v72 = (v22 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v25 = 0;
      v75 = v20;
      while (v24)
      {
LABEL_24:
        v27 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v28 = *(*(v20 + 56) + ((v25 << 9) | (8 * v27)));
        swift_beginAccess();
        v29 = *(v28 + 40);
        if (*(v29 + 16))
        {
          sub_1000E2D48();

          sub_1000E2A88(38);

          sub_1000E23A8(v83);
          v84._countAndFlagsBits = 41;
          v84._object = 0xE100000000000000;
          sub_1000E23A8(v84);
          sub_1000E2398();

          v30 = sub_1000E2D68();
          v31 = -1 << *(v29 + 32);
          v32 = v30 & ~v31;
          if ((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
          {
            v33 = ~v31;
            v34 = *(v29 + 48);
            do
            {
              v35 = v34 + 24 * v32;
              if (!*(v35 + 16))
              {
                v36 = *v35 == v83._countAndFlagsBits && *(v35 + 8) == v83._object;
                if (v36 || (sub_1000E2C68() & 1) != 0)
                {
                  goto LABEL_84;
                }
              }

              v32 = (v32 + 1) & v33;
            }

            while (((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0);
          }

          v20 = v75;
        }
      }

      v1 = v80;
      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v26 >= v72)
        {
          goto LABEL_81;
        }

        v24 = *(v21 + 8 * v26);
        ++v25;
        if (v24)
        {
          v25 = v26;
          goto LABEL_24;
        }
      }

LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v8 = v12;
  }

  v37 = *(v11 + 48);
  v38 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & *(v37 + 64);
  v42 = (v39 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v43 = 0;
  v73 = v42;
  v76 = v37;
  while (v41)
  {
LABEL_46:
    v45 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v46 = *(*(v37 + 56) + ((v43 << 9) | (8 * v45)));
    swift_beginAccess();
    v47 = *(v46 + 40);
    if (*(v47 + 16))
    {
      sub_1000E2D48();

      sub_1000E2A88(39);

      sub_1000E23A8(v83);
      v85._countAndFlagsBits = 41;
      v85._object = 0xE100000000000000;
      sub_1000E23A8(v85);
      sub_1000E2398();

      v48 = sub_1000E2D68();
      v49 = -1 << *(v47 + 32);
      v50 = v48 & ~v49;
      if ((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
      {
        v51 = ~v49;
        v52 = *(v47 + 48);
        do
        {
          v53 = v52 + 24 * v50;
          if (*(v53 + 16) == 1)
          {
            v54 = *v53 == v83._countAndFlagsBits && *(v53 + 8) == v83._object;
            if (v54 || (sub_1000E2C68() & 1) != 0)
            {
              goto LABEL_84;
            }
          }

          v50 = (v50 + 1) & v51;
        }

        while (((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) != 0);
      }

      v42 = v73;
      v37 = v76;
    }
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v44 >= v42)
    {

      v8 = v12;
      v1 = v80;
      v3 = v81;
      v9 = v78;
      v4 = v79;
      v10 = &CSDVoucherManagerImpl__prots_0;
      goto LABEL_5;
    }

    v41 = *(v38 + 8 * v44);
    ++v43;
    if (v41)
    {
      v43 = v44;
      goto LABEL_46;
    }
  }

LABEL_89:
  __break(1u);
}

uint64_t sub_1000455D8(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  swift_beginAccess();
  v3 = v2[10];
  v4 = v2[11];
  v31 = v2;
  v5 = sub_1000036AC(v2 + 7, v3);
  v6 = *(v3 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  v9 = (*(v4 + 56))(v3, v4);
  (*(v6 + 8))(v8, v3);
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_16:

    result = swift_weakLoadStrong();
    if (result)
    {
      v19 = *(result + 16);

      v20 = [v19 activeDevices];
      sub_10000CAAC(0, &qword_10011F5E0, RPCompanionLinkDevice_ptr);
      v21 = sub_1000E2468();

      v30 = v19;
      if (v21 >> 62)
      {
        goto LABEL_32;
      }

      for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000E2B68())
      {
        v23 = 0;
        while (1)
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v24 = sub_1000E2A98();
          }

          else
          {
            if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v24 = *(v21 + 8 * v23 + 32);
          }

          v25 = v24;
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          v27 = sub_1000E2328();
          v28 = [v25 compareWithDeviceIdentifier:v27];

          if (v28)
          {

            v17 = sub_10004595C(v25);

            return v17;
          }

          ++v23;
          if (v26 == i)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        ;
      }

LABEL_33:

      return 0;
    }

    return result;
  }

LABEL_15:
  v10 = sub_1000E2B68();
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_3:
  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = sub_1000E2A98();
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v15 = sub_1000E2328();
    v16 = [v13 compareWithDeviceIdentifier:v15];

    if (v16)
    {
      break;
    }

    ++v11;
    if (v14 == v10)
    {
      goto LABEL_16;
    }
  }

  v17 = sub_10004595C(v13);

  return v17;
}

uint64_t sub_10004595C(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  v21 = v3;
  while (v7)
  {
LABEL_10:
    v12 = *(*(v3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    v13 = *(v12 + 16);
    v23 = *(v12 + 24);

    v14 = [a1 idsDeviceIdentifier];
    if (v14)
    {
      v22 = v13;
      v15 = v14;
      v16 = sub_1000E2338();
      v18 = v17;

      if (v22 == v16 && v23 == v18)
      {

LABEL_20:

        return v12;
      }

      v20 = sub_1000E2C68();

      v3 = v21;
      if (v20)
      {

        goto LABEL_20;
      }
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return 0;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_100045B10(void *a1)
{
  v3 = [a1 model];
  if (v3)
  {
    v4 = v3;
    sub_1000E2338();

    v39._countAndFlagsBits = 0x5654656C707041;
    v39._object = 0xE700000000000000;
    LOBYTE(v4) = sub_1000E2408(v39);

    if (v4)
    {
      if (sub_10004595C(a1))
      {
        sub_1000138F4(a1);
        if (qword_10011DC88 != -1)
        {
          swift_once();
        }

        v5 = sub_1000E1F08();
        sub_1000049D0(v5, qword_1001231A0);

        oslog = sub_1000E1EE8();
        v6 = sub_1000E2698();

        if (os_log_type_enabled(oslog, v6))
        {
          v7 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v37[0] = v8;
          *v7 = 136315138;
          v9 = sub_100013B80();
          v11 = sub_100029C70(v9, v10, v37);

          *(v7 + 4) = v11;
          _os_log_impl(&_mh_execute_header, oslog, v6, "Found existing device again, merged in new data: %s.", v7, 0xCu);
          sub_10000E9DC(v8);

LABEL_14:

          return;
        }
      }

      else
      {
        type metadata accessor for ConduitDevice();
        swift_allocObject();
        v12 = a1;
        v13 = sub_1000132BC(v12);
        if (v13)
        {
          v14 = v13;
          if (qword_10011DC88 != -1)
          {
            swift_once();
          }

          v15 = sub_1000E1F08();
          sub_1000049D0(v15, qword_1001231A0);
          v16 = v12;

          v17 = sub_1000E1EE8();
          v18 = sub_1000E2698();

          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v37[0] = v21;
            *v19 = 136315394;
            v22 = sub_100013B80();
            v24 = sub_100029C70(v22, v23, v37);

            *(v19 + 4) = v24;
            *(v19 + 12) = 2112;
            *(v19 + 14) = v16;
            *v20 = v16;
            v25 = v16;
            _os_log_impl(&_mh_execute_header, v17, v18, "Publishing conduit device %s for %@.", v19, 0x16u);
            sub_1000033C8(v20, &unk_10011EAC0, &unk_1000F0E60);

            sub_10000E9DC(v21);
          }

          v26 = *(v14 + 16);
          v27 = *(v14 + 24);
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36 = *(v1 + 48);
          *(v1 + 48) = 0x8000000000000000;
          sub_1000CA67C(v14, v26, v27, isUniquelyReferenced_nonNull_native);

          *(v1 + 48) = v36;
          swift_endAccess();
          v37[0] = v14;
          sub_1000E1FC8();
          goto LABEL_14;
        }

        if (qword_10011DC88 != -1)
        {
          swift_once();
        }

        v29 = sub_1000E1F08();
        sub_1000049D0(v29, qword_1001231A0);
        v30 = v12;
        oslog = sub_1000E1EE8();
        v31 = sub_1000E2678();

        if (os_log_type_enabled(oslog, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *v32 = 138412290;
          *(v32 + 4) = v30;
          *v33 = v30;
          v34 = v30;
          _os_log_impl(&_mh_execute_header, oslog, v31, "Failed to create conduit device for %@.", v32, 0xCu);
          sub_1000033C8(v33, &unk_10011EAC0, &unk_1000F0E60);
        }
      }
    }
  }
}

id sub_100046064(void *a1)
{
  result = [a1 model];
  if (result)
  {
    v3 = result;
    sub_1000E2338();

    v17._countAndFlagsBits = 0x5654656C707041;
    v17._object = 0xE700000000000000;
    LOBYTE(v3) = sub_1000E2408(v17);

    if (v3)
    {
      result = sub_10004595C(a1);
      if (result)
      {
        v4 = result;
        if (sub_100046564(result))
        {
        }

        else
        {
          v5 = v4[2];
          v6 = v4[3];
          swift_beginAccess();

          sub_10003E2C4(0, v5, v6);
          swift_endAccess();
          if (qword_10011DC88 != -1)
          {
            swift_once();
          }

          v7 = sub_1000E1F08();
          sub_1000049D0(v7, qword_1001231A0);

          v8 = sub_1000E1EE8();
          v9 = sub_1000E2698();

          if (os_log_type_enabled(v8, v9))
          {
            v10 = swift_slowAlloc();
            v11 = swift_slowAlloc();
            v15[0] = v11;
            *v10 = 136315138;
            v12 = sub_100013B80();
            v14 = sub_100029C70(v12, v13, v15);

            *(v10 + 4) = v14;
            _os_log_impl(&_mh_execute_header, v8, v9, "Conduit device disconnected %s.", v10, 0xCu);
            sub_10000E9DC(v11);
          }

          v15[0] = v4;
          sub_1000E1FC8();
        }
      }
    }
  }

  return result;
}

void sub_1000462C4(char a1)
{
  if (!a1)
  {
    v2 = v1;
    swift_beginAccess();
    v3 = *(v1 + 48);
    v4 = v3 + 64;
    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    v24 = v3;
    while (v7)
    {
LABEL_12:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v3 + 56) + ((v9 << 9) | (8 * v11)));

      if ((sub_100046564(v13) & 1) == 0)
      {
        v14 = *(v12 + 16);
        v15 = *(v12 + 24);
        swift_beginAccess();

        sub_10003E2C4(0, v14, v15);
        swift_endAccess();
        if (qword_10011DC88 != -1)
        {
          swift_once();
        }

        v16 = sub_1000E1F08();
        sub_1000049D0(v16, qword_1001231A0);

        v17 = sub_1000E1EE8();
        v18 = sub_1000E2698();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v26[0] = v25;
          *v19 = 136315138;
          v20 = sub_100013B80();
          v22 = v2;
          v23 = sub_100029C70(v20, v21, v26);

          *(v19 + 4) = v23;
          v2 = v22;
          _os_log_impl(&_mh_execute_header, v17, v18, "Pruning undiscoverable device after display discovery state changed: %s", v19, 0xCu);
          sub_10000E9DC(v25);

          v3 = v24;
        }

        v26[0] = v12;
        sub_1000E1FC8();
      }
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        return;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100046564(uint64_t a1)
{
  v60 = a1;
  swift_beginAccess();
  v2 = v1[10];
  v3 = v1[11];
  v57 = v1;
  v4 = sub_1000036AC(v1 + 7, v2);
  v5 = *(v2 - 8);
  __chkstk_darwin(v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v3 + 56))(v2, v3);
  (*(v5 + 8))(v7, v2);
  if (v8 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000E2B68())
  {
    v10 = 0;
    v58 = v8 & 0xFFFFFFFFFFFFFF8;
    v59 = v8 & 0xC000000000000001;
    while (1)
    {
      if (v59)
      {
        v11 = sub_1000E2A98();
      }

      else
      {
        if (v10 >= *(v58 + 16))
        {
          goto LABEL_20;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = *(v60 + 16);
      v15 = *(v60 + 24);
      v16 = [v11 idsDeviceIdentifier];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1000E2338();
        v20 = v19;

        if (v14 == v18 && v15 == v20)
        {

          return 1;
        }

        v22 = sub_1000E2C68();

        if (v22)
        {

          return 1;
        }
      }

      else
      {
      }

      ++v10;
      if (v13 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  v23 = v57;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = *(Strong + 16);

    v26 = [v25 activeDevices];
    sub_10000CAAC(0, &qword_10011F5E0, RPCompanionLinkDevice_ptr);
    v27 = sub_1000E2468();

    v56 = v25;
    if (v27 >> 62)
    {
      goto LABEL_43;
    }

    for (j = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1000E2B68())
    {
      v29 = 0;
      v58 = v27 & 0xFFFFFFFFFFFFFF8;
      v59 = v27 & 0xC000000000000001;
      while (1)
      {
        if (v59)
        {
          v30 = sub_1000E2A98();
        }

        else
        {
          if (v29 >= *(v58 + 16))
          {
            goto LABEL_42;
          }

          v30 = *(v27 + 8 * v29 + 32);
        }

        v31 = v30;
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        v33 = *(v60 + 16);
        v34 = *(v60 + 24);
        v35 = [v30 idsDeviceIdentifier];
        if (v35)
        {
          v36 = v35;
          v37 = sub_1000E2338();
          v39 = v38;

          if (v33 == v37 && v34 == v39)
          {

            return 1;
          }

          v41 = sub_1000E2C68();

          if (v41)
          {

            return 1;
          }
        }

        else
        {
        }

        ++v29;
        if (v32 == j)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

LABEL_44:

    v23 = v57;
  }

  swift_beginAccess();
  v42 = v23[20];
  v43 = v23[21];
  v44 = sub_1000036AC(v23 + 17, v42);
  v45 = *(v42 - 8);
  __chkstk_darwin(v44);
  v47 = &v55 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v47);
  v48 = (*(v43 + 8))(v42, v43);
  v50 = v49;
  (*(v45 + 8))(v47, v42);
  if (!v50)
  {
    return 0;
  }

  v51 = sub_1000455D8(v48, v50);

  if (!v51)
  {
    return 0;
  }

  if (*(v51 + 16) == *(v60 + 16) && *(v51 + 24) == *(v60 + 24))
  {
  }

  else
  {
    v53 = sub_1000E2C68();

    if ((v53 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100046AFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a8;
  v14 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v14 - 8);
  v16 = &v24 - v15;
  v17 = sub_1000E2538();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = qword_10011DC18;

  if (v18 != -1)
  {
    swift_once();
  }

  v20 = qword_1001230E0;
  v21 = sub_100058F28(&qword_1001201E0, v19, type metadata accessor for ConduitDeviceActor, &unk_1000F1B48);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  *(v22 + 32) = a3;
  *(v22 + 40) = a2;
  *(v22 + 48) = a4;
  *(v22 + 56) = a1;
  *(v22 + 64) = a5;
  *(v22 + 72) = a6;

  sub_100022960(0, 0, v16, v25, v22);
}

uint64_t sub_100046CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 392) = a8;
  *(v8 + 400) = v13;
  *(v8 + 376) = a5;
  *(v8 + 384) = a7;
  *(v8 + 448) = a6;
  *(v8 + 368) = a4;
  sub_1000E0E08();
  *(v8 + 408) = swift_task_alloc();
  sub_10000ADE4(&qword_10011F5F0, &unk_1000F1C88);
  *(v8 + 416) = swift_task_alloc();
  v9 = sub_1000E17C8();
  *(v8 + 424) = v9;
  *(v8 + 432) = *(v9 - 8);
  *(v8 + 440) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v10 = qword_1001230E0;

  return _swift_task_switch(sub_100046E34, v10, 0);
}

uint64_t sub_100046E34()
{
  v75 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 376);
    if (v1)
    {
      *(v0 + 256) = sub_1000E2338();
      *(v0 + 264) = v2;
      sub_1000E2A08();
      if (*(v1 + 16) && (v3 = sub_10000B3E0(v0 + 16), (v4 & 1) != 0))
      {
        sub_1000153C0(*(v1 + 56) + 32 * v3, v0 + 136);
        sub_10000C1C0(v0 + 16);
        if (swift_dynamicCast())
        {
          v5 = sub_1000449DC(*(v0 + 272), *(v0 + 280), 0);

          if (v5)
          {
            v6 = v5;
            goto LABEL_8;
          }

          *(v0 + 288) = sub_1000E2338();
          *(v0 + 296) = v42;
          sub_1000E2A08();
          if (*(v1 + 16) && (v43 = sub_10000B3E0(v0 + 56), (v44 & 1) != 0))
          {
            sub_1000153C0(*(v1 + 56) + 32 * v43, v0 + 168);
            sub_10000C1C0(v0 + 56);
            if (swift_dynamicCast())
            {
              v6 = sub_1000449DC(*(v0 + 336), *(v0 + 344), 0);

              if (v6)
              {

LABEL_8:
                v7 = *(v0 + 384);
                *(v0 + 304) = 0x6567617373656DLL;
                *(v0 + 312) = 0xE700000000000000;

                sub_1000E2A08();
                if (*(v7 + 16) && (v8 = sub_10000B3E0(v0 + 96), (v9 & 1) != 0))
                {
                  sub_1000153C0(*(*(v0 + 384) + 56) + 32 * v8, v0 + 200);
                  sub_10000C1C0(v0 + 96);
                  if (swift_dynamicCast())
                  {
                    v10 = *(v0 + 320);
                    v11 = *(v0 + 328);
                    v74 = 0;
                    memset(v73, 0, sizeof(v73));
                    sub_1000123E0(v10, v11);
                    sub_1000E0DF8();
                    sub_100058F28(&qword_10011ED90, 255, &type metadata accessor for NCProtoEndLagunaSessionEvent, &protocol conformance descriptor for NCProtoEndLagunaSessionEvent);
                    sub_1000E0E18();
                    v56 = *(v0 + 432);
                    v55 = *(v0 + 440);
                    v58 = *(v0 + 416);
                    v57 = *(v0 + 424);
                    (*(v56 + 56))(v58, 0, 1, v57);
                    (*(v56 + 32))(v55, v58, v57);
                    if (qword_10011DC88 != -1)
                    {
                      swift_once();
                    }

                    v59 = sub_1000E1F08();
                    sub_1000049D0(v59, qword_1001231A0);

                    v60 = sub_1000E1EE8();
                    v61 = sub_1000E2698();

                    if (os_log_type_enabled(v60, v61))
                    {
                      v72 = *(v0 + 448);
                      v62 = swift_slowAlloc();
                      *&v73[0] = swift_slowAlloc();
                      *v62 = 136315394;
                      v64 = *(v6 + 16);
                      v63 = *(v6 + 24);

                      v65 = sub_100029C70(v64, v63, v73);

                      *(v62 + 4) = v65;
                      *(v62 + 12) = 2080;
                      v66 = sub_10003E638(v72);
                      v68 = sub_100029C70(v66, v67, v73);

                      *(v62 + 14) = v68;
                      _os_log_impl(&_mh_execute_header, v60, v61, "[%s] Received event %s.", v62, 0x16u);
                      swift_arrayDestroy();
                    }

                    v70 = *(v0 + 432);
                    v69 = *(v0 + 440);
                    v71 = *(v0 + 424);
                    (*(v0 + 392))(v69, v6);

                    sub_100006660(v10, v11);

                    (*(v70 + 8))(v69, v71);
                    goto LABEL_22;
                  }
                }

                else
                {

                  sub_10000C1C0(v0 + 96);
                }

                if (qword_10011DC88 != -1)
                {
                  swift_once();
                }

                v28 = sub_1000E1F08();
                sub_1000049D0(v28, qword_1001231A0);

                v29 = sub_1000E1EE8();
                v30 = sub_1000E2678();

                if (!os_log_type_enabled(v29, v30))
                {

                  goto LABEL_22;
                }

                v31 = *(v0 + 448);
                v32 = swift_slowAlloc();
                *&v73[0] = swift_slowAlloc();
                *v32 = 136315650;
                v34 = *(v6 + 16);
                v33 = *(v6 + 24);

                v35 = sub_100029C70(v34, v33, v73);

                *(v32 + 4) = v35;
                *(v32 + 12) = 2080;
                v36 = sub_10003E638(v31);
                v38 = sub_100029C70(v36, v37, v73);

                *(v32 + 14) = v38;
                *(v32 + 22) = 2080;
                v39 = sub_1000E22C8();
                v41 = sub_100029C70(v39, v40, v73);

                *(v32 + 24) = v41;
                _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Failed to decode event %s: %s.", v32, 0x20u);
                swift_arrayDestroy();

LABEL_41:

                goto LABEL_22;
              }
            }
          }

          else
          {
            sub_10000C1C0(v0 + 56);
          }

          if (qword_10011DC88 != -1)
          {
            swift_once();
          }

          v45 = sub_1000E1F08();
          sub_1000049D0(v45, qword_1001231A0);

          v29 = sub_1000E1EE8();
          v46 = sub_1000E2678();

          if (os_log_type_enabled(v29, v46))
          {
            v47 = *(v0 + 448);
            v48 = swift_slowAlloc();
            *&v73[0] = swift_slowAlloc();
            *v48 = 136315394;
            v49 = sub_10003E638(v47);
            v51 = sub_100029C70(v49, v50, v73);

            *(v48 + 4) = v51;
            *(v48 + 12) = 2080;
            *(v0 + 360) = v1;

            sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
            v52 = sub_1000E2368();
            v54 = sub_100029C70(v52, v53, v73);

            *(v48 + 14) = v54;
            _os_log_impl(&_mh_execute_header, v29, v46, "Received event %s from unrecognized device %s.", v48, 0x16u);
            swift_arrayDestroy();
          }

          goto LABEL_41;
        }
      }

      else
      {
        sub_10000C1C0(v0 + 16);
      }
    }
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 376);
  v13 = sub_1000E1F08();
  sub_1000049D0(v13, qword_1001231A0);

  v14 = sub_1000E1EE8();
  v15 = sub_1000E2678();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 376);
    v17 = *(v0 + 448);
    v18 = swift_slowAlloc();
    *&v73[0] = swift_slowAlloc();
    *v18 = 136315394;
    v19 = sub_10003E638(v17);
    v21 = sub_100029C70(v19, v20, v73);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    if (v16)
    {
      *(v0 + 352) = v12;

      sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
      v22 = sub_1000E2368();
      v24 = v23;
    }

    else
    {
      v24 = 0xE300000000000000;
      v22 = 7104878;
    }

    v25 = sub_100029C70(v22, v24, v73);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "Received invalid event %s options %s.", v18, 0x16u);
    swift_arrayDestroy();
  }

LABEL_22:

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100047920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 392) = a8;
  *(v8 + 400) = v13;
  *(v8 + 376) = a5;
  *(v8 + 384) = a7;
  *(v8 + 448) = a6;
  *(v8 + 368) = a4;
  sub_1000E0E08();
  *(v8 + 408) = swift_task_alloc();
  sub_10000ADE4(&qword_10011F5F8, &qword_1000F1CB0);
  *(v8 + 416) = swift_task_alloc();
  v9 = sub_1000E17A8();
  *(v8 + 424) = v9;
  *(v8 + 432) = *(v9 - 8);
  *(v8 + 440) = swift_task_alloc();
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v10 = qword_1001230E0;

  return _swift_task_switch(sub_100047A8C, v10, 0);
}

uint64_t sub_100047A8C()
{
  v75 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 376);
    if (v1)
    {
      *(v0 + 256) = sub_1000E2338();
      *(v0 + 264) = v2;
      sub_1000E2A08();
      if (*(v1 + 16) && (v3 = sub_10000B3E0(v0 + 16), (v4 & 1) != 0))
      {
        sub_1000153C0(*(v1 + 56) + 32 * v3, v0 + 136);
        sub_10000C1C0(v0 + 16);
        if (swift_dynamicCast())
        {
          v5 = sub_1000449DC(*(v0 + 272), *(v0 + 280), 0);

          if (v5)
          {
            v6 = v5;
            goto LABEL_8;
          }

          *(v0 + 288) = sub_1000E2338();
          *(v0 + 296) = v42;
          sub_1000E2A08();
          if (*(v1 + 16) && (v43 = sub_10000B3E0(v0 + 56), (v44 & 1) != 0))
          {
            sub_1000153C0(*(v1 + 56) + 32 * v43, v0 + 168);
            sub_10000C1C0(v0 + 56);
            if (swift_dynamicCast())
            {
              v6 = sub_1000449DC(*(v0 + 336), *(v0 + 344), 0);

              if (v6)
              {

LABEL_8:
                v7 = *(v0 + 384);
                *(v0 + 304) = 0x6567617373656DLL;
                *(v0 + 312) = 0xE700000000000000;

                sub_1000E2A08();
                if (*(v7 + 16) && (v8 = sub_10000B3E0(v0 + 96), (v9 & 1) != 0))
                {
                  sub_1000153C0(*(*(v0 + 384) + 56) + 32 * v8, v0 + 200);
                  sub_10000C1C0(v0 + 96);
                  if (swift_dynamicCast())
                  {
                    v10 = *(v0 + 320);
                    v11 = *(v0 + 328);
                    v74 = 0;
                    memset(v73, 0, sizeof(v73));
                    sub_1000123E0(v10, v11);
                    sub_1000E0DF8();
                    sub_100058F28(&qword_10011F600, 255, &type metadata accessor for NCProtoCancelAddMemberEvent, &protocol conformance descriptor for NCProtoCancelAddMemberEvent);
                    sub_1000E0E18();
                    v56 = *(v0 + 432);
                    v55 = *(v0 + 440);
                    v58 = *(v0 + 416);
                    v57 = *(v0 + 424);
                    (*(v56 + 56))(v58, 0, 1, v57);
                    (*(v56 + 32))(v55, v58, v57);
                    if (qword_10011DC88 != -1)
                    {
                      swift_once();
                    }

                    v59 = sub_1000E1F08();
                    sub_1000049D0(v59, qword_1001231A0);

                    v60 = sub_1000E1EE8();
                    v61 = sub_1000E2698();

                    if (os_log_type_enabled(v60, v61))
                    {
                      v72 = *(v0 + 448);
                      v62 = swift_slowAlloc();
                      *&v73[0] = swift_slowAlloc();
                      *v62 = 136315394;
                      v64 = *(v6 + 16);
                      v63 = *(v6 + 24);

                      v65 = sub_100029C70(v64, v63, v73);

                      *(v62 + 4) = v65;
                      *(v62 + 12) = 2080;
                      v66 = sub_10003E638(v72);
                      v68 = sub_100029C70(v66, v67, v73);

                      *(v62 + 14) = v68;
                      _os_log_impl(&_mh_execute_header, v60, v61, "[%s] Received event %s.", v62, 0x16u);
                      swift_arrayDestroy();
                    }

                    v70 = *(v0 + 432);
                    v69 = *(v0 + 440);
                    v71 = *(v0 + 424);
                    (*(v0 + 392))(v69, v6);

                    sub_100006660(v10, v11);

                    (*(v70 + 8))(v69, v71);
                    goto LABEL_22;
                  }
                }

                else
                {

                  sub_10000C1C0(v0 + 96);
                }

                if (qword_10011DC88 != -1)
                {
                  swift_once();
                }

                v28 = sub_1000E1F08();
                sub_1000049D0(v28, qword_1001231A0);

                v29 = sub_1000E1EE8();
                v30 = sub_1000E2678();

                if (!os_log_type_enabled(v29, v30))
                {

                  goto LABEL_22;
                }

                v31 = *(v0 + 448);
                v32 = swift_slowAlloc();
                *&v73[0] = swift_slowAlloc();
                *v32 = 136315650;
                v34 = *(v6 + 16);
                v33 = *(v6 + 24);

                v35 = sub_100029C70(v34, v33, v73);

                *(v32 + 4) = v35;
                *(v32 + 12) = 2080;
                v36 = sub_10003E638(v31);
                v38 = sub_100029C70(v36, v37, v73);

                *(v32 + 14) = v38;
                *(v32 + 22) = 2080;
                v39 = sub_1000E22C8();
                v41 = sub_100029C70(v39, v40, v73);

                *(v32 + 24) = v41;
                _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Failed to decode event %s: %s.", v32, 0x20u);
                swift_arrayDestroy();

LABEL_41:

                goto LABEL_22;
              }
            }
          }

          else
          {
            sub_10000C1C0(v0 + 56);
          }

          if (qword_10011DC88 != -1)
          {
            swift_once();
          }

          v45 = sub_1000E1F08();
          sub_1000049D0(v45, qword_1001231A0);

          v29 = sub_1000E1EE8();
          v46 = sub_1000E2678();

          if (os_log_type_enabled(v29, v46))
          {
            v47 = *(v0 + 448);
            v48 = swift_slowAlloc();
            *&v73[0] = swift_slowAlloc();
            *v48 = 136315394;
            v49 = sub_10003E638(v47);
            v51 = sub_100029C70(v49, v50, v73);

            *(v48 + 4) = v51;
            *(v48 + 12) = 2080;
            *(v0 + 360) = v1;

            sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
            v52 = sub_1000E2368();
            v54 = sub_100029C70(v52, v53, v73);

            *(v48 + 14) = v54;
            _os_log_impl(&_mh_execute_header, v29, v46, "Received event %s from unrecognized device %s.", v48, 0x16u);
            swift_arrayDestroy();
          }

          goto LABEL_41;
        }
      }

      else
      {
        sub_10000C1C0(v0 + 16);
      }
    }
  }

  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 376);
  v13 = sub_1000E1F08();
  sub_1000049D0(v13, qword_1001231A0);

  v14 = sub_1000E1EE8();
  v15 = sub_1000E2678();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 376);
    v17 = *(v0 + 448);
    v18 = swift_slowAlloc();
    *&v73[0] = swift_slowAlloc();
    *v18 = 136315394;
    v19 = sub_10003E638(v17);
    v21 = sub_100029C70(v19, v20, v73);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    if (v16)
    {
      *(v0 + 352) = v12;

      sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
      v22 = sub_1000E2368();
      v24 = v23;
    }

    else
    {
      v24 = 0xE300000000000000;
      v22 = 7104878;
    }

    v25 = sub_100029C70(v22, v24, v73);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "Received invalid event %s options %s.", v18, 0x16u);
    swift_arrayDestroy();
  }

LABEL_22:

  v26 = *(v0 + 8);

  return v26();
}