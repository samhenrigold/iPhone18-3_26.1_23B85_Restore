uint64_t sub_10001DB18(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  if (v2 == 4)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      if (HIBYTE(v12) == 1)
      {
        v8 = &unk_1000A10D8;
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10009DAF0();

        if (HIBYTE(v12) != 3)
        {
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_10009DAF0();

        if ((HIBYTE(v12) - 2) < 4u || (v12 & 0x100000000000000) != 0)
        {
        }

        v8 = &unk_1000A10C8;
      }

      sub_10009DF20();
      v9 = sub_10009DF40();
      (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
      sub_10009DF10();

      v10 = sub_10009DF00();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = &protocol witness table for MainActor;
      v11[4] = v7;
      sub_100019B10(0, 0, v6, v8, v11);
    }
  }

  return result;
}

uint64_t sub_10001DDC4()
{
  v0[2] = sub_10009DF10();
  v0[3] = sub_10009DF00();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10001DE74;

  return sub_10001DFB0(1);
}

uint64_t sub_10001DE74()
{

  v1 = sub_10009DED0();

  return _swift_task_switch(sub_10003A8CC, v1, v0);
}

uint64_t sub_10001DFB0(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 163) = a1;
  *(v2 + 104) = sub_10009DF10();
  *(v2 + 112) = sub_10009DF00();
  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  *v3 = v2;
  v3[1] = sub_10001E068;

  return sub_10001C240(300);
}

uint64_t sub_10001E068()
{
  v1 = *v0;

  v3 = sub_10009DED0();
  *(v1 + 128) = v3;
  *(v1 + 136) = v2;

  return _swift_task_switch(sub_10001E1AC, v3, v2);
}

uint64_t sub_10001E1AC()
{
  if ((*(v0 + 163) & 1) == 0)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 57) = 3;

LABEL_7:
    sub_10009DB00();
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 58) != 4)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 60) == 2)
  {

LABEL_8:
    v1 = *(v0 + 8);

    return v1();
  }

  v3 = *(v0 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 61) = 1;

  sub_10009DB00();

  v4 = sub_10004834C();

  v5 = *(*(v3 + 16) + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_allowAccessRequestsSPIOverride);
  if (v5 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    LOBYTE(v5) = *(v0 + 62);
  }

  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_10001E4B8;

  return sub_100023A48(v4 & 1, v5 & 1);
}

uint64_t sub_10001E4B8()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_10001E6A8;
  }

  else
  {
    v5 = sub_10001E5F4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10001E5F4()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 162) = 2;

  sub_10009DB00();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001E6A8()
{
  v1 = v0;
  v2 = *(v0 + 152);

  *(v0 + 64) = v2;
  v3 = v0 + 64;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 24);
    v36 = *(v0 + 16);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 161) = 4;

    result = sub_10009DB00();
    if (v8 == 10)
    {
      if (!v6)
      {
        __break(1u);
        return result;
      }

      v10 = v6;

      sub_1000264AC(1u, v6);
      sub_1000323E0(v36, v4, v6, v5, v7, 10, v11, v12);

      v4, v13, v14, v15, v16, v17, v18, v19;
      v7, v20, v21, v22, v23, v24, v25, v26;
    }

    else
    {
      v31 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_1000264AC(2u, v31);
      sub_1000323E0(v36, v4, v6, v5, v7, v8, v32, v33);
    }
  }

  else
  {
    v27 = *(v0 + 152);

    *(v1 + 72) = v27;
    swift_errorRetain();
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {

      v28 = *(v3 + 16);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v3 + 96) = 4;

      sub_10009DB00();
      *(v3 + 24) = v28;
      sub_1000391A4(&qword_1000CA028, type metadata accessor for CKError, &unk_10009FB80);
      v29 = CKErrorDomain;
      v30 = [objc_allocWithZone(NSError) initWithDomain:v29 code:sub_10009D790() userInfo:0];

      sub_1000264AC(1u, v30);
    }

    else
    {

      swift_getKeyPath();
      swift_getKeyPath();
      *(v3 - 1) = 4;

      sub_10009DB00();
      v34 = sub_10009D7A0();
      sub_1000264AC(2u, v34);
    }
  }

  v35 = *(v1 + 8);

  return v35();
}

uint64_t sub_10001EAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_10009DF10();
  v4[3] = sub_10009DF00();
  v6 = sub_10009DED0();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10001EB3C, v6, v5);
}

uint64_t sub_10001EB3C()
{
  v1 = (v0[2] + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_lastServicesData);
  v2 = *v1;
  v0[6] = *v1;
  v3 = v1[1];
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10001EC08;

  return sub_10001ED4C(0, v2, v3);
}

uint64_t sub_10001EC08()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_10003A8CC, v3, v2);
}

uint64_t sub_10001ED4C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  *(v4 + 72) = a2;
  *(v4 + 145) = a1;
  sub_10009DF10();
  *(v4 + 96) = sub_10009DF00();
  v6 = sub_10009DED0();
  *(v4 + 104) = v6;
  *(v4 + 112) = v5;

  return _swift_task_switch(sub_10001EDEC, v6, v5);
}

uint64_t sub_10001EDEC()
{
  *(*(v0 + 88) + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_lastServicesData) = *(v0 + 72);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_10001EEAC;
  v2 = *(v0 + 145);

  return sub_10001DFB0(v2);
}

uint64_t sub_10001EEAC()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10001EFCC, v3, v2);
}

uint64_t sub_10001EFCC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 57) != 4 || (swift_getKeyPath(), swift_getKeyPath(), sub_10009DAF0(), , , *(v0 + 59) != 3) && (swift_getKeyPath(), swift_getKeyPath(), sub_10009DAF0(), , , *(v0 + 60) != 2))
  {
    v1 = *(v0 + 145);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 58) = v1;

    sub_10009DB00();
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 61) == 3)
  {

LABEL_7:
    v2 = *(v0 + 8);

    return v2();
  }

  v4 = *(v0 + 145);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 62) = v4;

  sub_10009DB00();
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_10001F298;

  return sub_100026F78();
}

uint64_t sub_10001F298()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_10001F484;
  }

  else
  {
    v5 = sub_10001F3D4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10001F3D4()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 144) = 3;

  sub_10009DB00();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001F484()
{
  v1 = v0;
  v2 = *(v0 + 136);

  *(v0 + 64) = v2;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 24);
    v31 = *(v0 + 16);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 5;

    result = sub_10009DB00();
    if (v7 == 4)
    {
      if (!v5)
      {
        __break(1u);
        return result;
      }

      v9 = v5;

      sub_1000264AC(5u, v5);
      sub_1000323E0(v31, v3, v5, v4, v6, 4, v10, v11);

      v3, v12, v13, v14, v15, v16, v17, v18;
      v6, v19, v20, v21, v22, v23, v24, v25;
    }

    else
    {
      v27 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_1000264AC(2u, v27);
      sub_1000323E0(v31, v3, v5, v4, v6, v7, v28, v29);
    }
  }

  else
  {

    v26 = sub_10009D7A0();
    sub_1000264AC(2u, v26);
  }

  v30 = *(v1 + 8);

  return v30();
}

uint64_t sub_10001F6D8(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  if (v2 == 2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v8 = HIBYTE(v12);
      if (HIBYTE(v12) - 2 >= 4)
      {
        sub_10009DF20();
        v9 = sub_10009DF40();
        (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
        sub_10009DF10();

        v10 = sub_10009DF00();
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = &protocol witness table for MainActor;
        *(v11 + 32) = v7;
        *(v11 + 40) = v8 & 1;
        sub_100019B10(0, 0, v6, &unk_1000A0F80, v11);
      }
    }
  }

  return result;
}

uint64_t sub_10001F89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a4;
  sub_10009DF10();
  *(v5 + 24) = sub_10009DF00();
  v7 = sub_10009DED0();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return _swift_task_switch(sub_10001F938, v7, v6);
}

uint64_t sub_10001F938()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_lastServicesData);
  v2 = *v1;
  *(v0 + 48) = *v1;
  v3 = v1[1];
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10001EC08;
  v5 = *(v0 + 64);

  return sub_10001ED4C(v5, v2, v3);
}

uint64_t sub_10001FA08(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  if (v2 == 3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      sub_10009DF20();
      v8 = sub_10009DF40();
      (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
      sub_10009DF10();

      v9 = sub_10009DF00();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = &protocol witness table for MainActor;
      v10[4] = v7;
      sub_10004CDF4(0, 0, v6, &unk_1000A0F70, v10);
    }
  }

  return result;
}

uint64_t sub_10001FB70(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 104) = a6;
  *(v7 + 112) = a7;
  *(v7 + 88) = a4;
  *(v7 + 96) = a5;
  *(v7 + 256) = a2;
  *(v7 + 72) = a1;
  *(v7 + 80) = a3;
  v8 = sub_10009DC50();
  *(v7 + 120) = v8;
  *(v7 + 128) = *(v8 - 8);
  *(v7 + 136) = swift_task_alloc();
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  v9 = sub_10009D860();
  *(v7 + 160) = v9;
  *(v7 + 168) = *(v9 - 8);
  *(v7 + 176) = swift_task_alloc();
  v10 = sub_10009D9F0();
  *(v7 + 184) = v10;
  *(v7 + 192) = *(v10 - 8);
  *(v7 + 200) = swift_task_alloc();
  sub_10009DF10();
  *(v7 + 208) = sub_10009DF00();
  v12 = sub_10009DED0();
  *(v7 + 216) = v12;
  *(v7 + 224) = v11;

  return _swift_task_switch(sub_10001FD6C, v12, v11);
}

uint64_t sub_10001FD6C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 232) = Strong;
  if (!Strong)
  {

    v4 = [objc_allocWithZone(UIImage) init];
LABEL_22:

    v30 = *(v0 + 8);

    return v30(v4);
  }

  v2 = *(v0 + 80);
  if (v2)
  {
    v3 = v2;

    v4 = *(v0 + 80);
    goto LABEL_12;
  }

  if (*(v0 + 256))
  {

    v4 = sub_10009D240(v5, v6, v7, v8, v9, v10, v11, v12, v84);
    v13 = v4;
    sub_10009D9D0();
    v14 = v13;
    v15 = sub_10009D9E0();
    v16 = sub_10009DFF0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v4;
      _os_log_impl(&_mh_execute_header, v15, v16, "iOS appIcon: icon: %@", v17, 0xCu);
      sub_100008728(v18, &qword_1000CA8E0, &qword_10009FE08);
    }

    else
    {

      v15 = v14;
    }

    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v23 = *(v0 + 184);

    (*(v22 + 8))(v21, v23);
LABEL_12:
    sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    v24 = *(v0 + 40);
    if (qword_1000C9DD8 != -1)
    {
      swift_once();
    }

    v25 = qword_1000CA490;
    v26 = sub_10009E110();

    if (v26)
    {
      if (v4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v27 = *(v0 + 48);
      v28 = [objc_allocWithZone(UIImage) init];
      v29 = sub_10009E110();

      if (v4)
      {
        goto LABEL_21;
      }

      if ((v29 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10009DAF0();

        v4 = *(v0 + 56);
        goto LABEL_22;
      }
    }

    v4 = v25;
LABEL_21:

    goto LABEL_22;
  }

  v19 = *(v0 + 88);
  if (v19)
  {
    v20 = v19;

    v4 = *(v0 + 88);
    goto LABEL_12;
  }

  v32 = Strong;
  v33 = *(v0 + 160);
  v34 = *(v0 + 168);
  v35 = *(v0 + 152);
  sub_100008658(*(v0 + 72), v35, &qword_1000CA250, &qword_10009FDF8);
  if ((*(v34 + 48))(v35, 1, v33) == 1)
  {
    v36 = *(v0 + 152);

    sub_100008728(v36, &qword_1000CA250, &qword_10009FDF8);
    v4 = 0;
    goto LABEL_12;
  }

  (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 152), *(v0 + 160));
  v37 = *(v32 + 56);
  if (*(v32 + 64) == 1)
  {
    v38 = *(v32 + 56);
  }

  else
  {
    v40 = *(v0 + 128);
    v39 = *(v0 + 136);
    v41 = *(v0 + 120);
    swift_retain_n();
    sub_10009DFE0();
    v42 = sub_10009DC70();
    sub_10009D9C0();

    sub_10009DC40();
    swift_getAtKeyPath();
    sub_10003A168(v37, 0);
    (*(v40 + 8))(v39, v41);
    sub_10003A168(v37, 0);
    v38 = *(v0 + 64);
  }

  v43 = swift_unknownObjectWeakLoadStrong();
  if (v43)
  {
    v44 = *(v43 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_itemUTI + 8);
    if (v44)
    {
      v45 = *(v0 + 168);
      v46 = *(v0 + 160);
      v47 = *(v0 + 144);
      v48 = *(v43 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_itemUTI);
      (*(v45 + 16))(v47, *(v0 + 176), v46);
      (*(v45 + 56))(v47, 0, 1, v46);

      LOBYTE(v46) = sub_100096298(v48, v44, v47);
      v44, v49, v50, v51, v52, v53, v54, v55;
      sub_100008728(v47, &qword_1000CA250, &qword_10009FDF8);
      if (sub_100094E04(v46) == 0x7265646C6F66 && v56 == 0xE600000000000000)
      {
        0xE600000000000000, 0xE600000000000000, v57, v58, v59, v60, v61, v62;
        goto LABEL_37;
      }

      v71 = v56;
      v72 = sub_10009E2E0();
      v71, v73, v74, v75, v76, v77, v78, v79;
      if (v72)
      {
LABEL_37:
        v4 = sub_10009D240(v63, v64, v65, v66, v67, v68, v69, v70, v84);
        swift_unknownObjectRelease();
        if (v4)
        {

          (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
          goto LABEL_12;
        }

        goto LABEL_40;
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_40:
  v80 = swift_task_alloc();
  *(v0 + 240) = v80;
  *v80 = v0;
  v80[1] = sub_10002048C;
  v81 = *(v0 + 176);
  v82 = *(v0 + 104);
  v83 = *(v0 + 112);

  return sub_1000382A0(v81, v82, v83, v38);
}

uint64_t sub_10002048C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 248) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return _swift_task_switch(sub_1000205B4, v4, v3);
}

uint64_t sub_1000205B4()
{

  v1 = v0[31];
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v2 = v0[5];
  if (qword_1000C9DD8 != -1)
  {
    swift_once();
  }

  v3 = qword_1000CA490;
  v4 = sub_10009E110();

  if (v4)
  {
    if (v1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v5 = v0[6];
  v6 = [objc_allocWithZone(UIImage) init];
  v7 = sub_10009E110();

  if (v1)
  {
    goto LABEL_10;
  }

  if (v7)
  {
LABEL_9:
    v1 = v3;
LABEL_10:

    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v1 = v0[7];
LABEL_11:

  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_100020834()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v1;
}

uint64_t sub_1000208A8(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = sub_100003714(&qword_1000CAD50, &qword_1000A0EF8);
  v7 = *(a2 + v6[12]);
  v8 = *(a2 + v6[16]);
  v9 = *(a2 + v6[20]);
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  *(v3 + 24) = v10;
  *v10 = v3;
  v10[1] = sub_1000209EC;

  return v12(a2, v7, v8, v9);
}

uint64_t sub_1000209EC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

void sub_100020AFC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    v5 = [v3 containerOptions];
    v6 = [v5 prefersHiddenAllowedSharingOptionsUI];

    if (v6)
    {
      v4 = 0;
    }
  }

  *a2 = v4;
}

uint64_t sub_100020B64(char *a1, uint64_t a2)
{
  v3 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-v4];
  v6 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-v7];
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    v11 = sub_10009D860();
    v12 = (*(*(v11 - 8) + 48))(v8, 1, v11);
    sub_100008728(v8, &qword_1000CA250, &qword_10009FDF8);
    if (v12 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v13 = (v19 & 0xFE) != 8;
      if (v9)
      {
      }
    }

    else
    {
      if (v9)
      {
      }

      v13 = 1;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if (v19 == 2 && v13)
    {
      v14 = sub_10009DF40();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      v15 = swift_allocObject();
      swift_weakInit();
      sub_10009DF10();

      v16 = sub_10009DF00();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = &protocol witness table for MainActor;
      v17[4] = v15;

      sub_100019B10(0, 0, v5, &unk_1000A0ED0, v17);
    }
  }

  return result;
}

uint64_t sub_100020EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_10009D9F0();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = sub_10009DF10();
  v4[12] = sub_10009DF00();
  v7 = sub_10009DED0();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_100020FA4, v7, v6);
}

uint64_t sub_100020FA4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = swift_unknownObjectWeakLoadStrong();
    v0[16] = v2;
    if (v2)
    {
      sub_10009D9D0();
      v3 = sub_10009D9E0();
      v4 = sub_10009DFF0();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Refetching share due to network change.", v5, 2u);
      }

      v6 = v0[10];
      v7 = v0[7];
      v8 = v0[8];

      v9 = *(v8 + 8);
      v0[17] = v9;
      v9(v6, v7);
      v0[18] = sub_10009DF00();
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_100021184;

      return sub_1000250A0();
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100021184()
{
  *(*v1 + 160) = v0;

  v3 = sub_10009DED0();
  if (v0)
  {
    v4 = sub_1000213C8;
  }

  else
  {
    v4 = sub_1000212E0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1000212E0()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100021344, v1, v2);
}

uint64_t sub_100021344()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000213C8()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_10002142C, v1, v2);
}

uint64_t sub_10002142C()
{
  v26 = v0;

  swift_unknownObjectRelease();

  sub_10009D9D0();
  swift_errorRetain();
  v1 = sub_10009D9E0();
  v2 = sub_10009DFD0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v23 = v0[9];
    v24 = v0[17];
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136315138;
    v0[5] = v3;
    swift_errorRetain();
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v7 = sub_10009DDA0();
    v9 = v8;
    v10 = sub_1000307A4(v7, v8, &v25);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to refetch share for network change %s", v5, 0xCu);
    sub_10000670C(v6);

    v24(v23, v4);
  }

  else
  {
    v18 = v0[17];
    v19 = v0[9];
    v20 = v0[7];

    v18(v19, v20);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100021698()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v1;
}

uint64_t sub_100021720(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();
}

uint64_t sub_1000217B8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v3;
}

uint64_t sub_10002184C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v1;
}

uint64_t sub_1000218C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10009D860();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  v14 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_shouldStopAccessingSharedFileOrFolderURL;
  if (*(v2 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_shouldStopAccessingSharedFileOrFolderURL) == 1)
  {
    sub_100008658(a1, &v17 - v12, &qword_1000CA250, &qword_10009FDF8);
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      sub_100008728(v13, &qword_1000CA250, &qword_10009FDF8);
    }

    else
    {
      sub_10009D810();
      (*(v5 + 8))(v13, v4);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v5 + 48))(v11, 1, v4))
  {
    result = sub_100008728(v11, &qword_1000CA250, &qword_10009FDF8);
    v16 = 0;
  }

  else
  {
    (*(v5 + 16))(v7, v11, v4);
    sub_100008728(v11, &qword_1000CA250, &qword_10009FDF8);
    v16 = sub_10009D830();
    result = (*(v5 + 8))(v7, v4);
  }

  *(v2 + v14) = v16;
  return result;
}

uint64_t sub_100021B84(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v3;
}

double sub_100021BF0@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100021C70(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

uint64_t sub_100021CF4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v4;
  return result;
}

uint64_t sub_100021D74(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_10009DB00();
}

uint64_t sub_100021DEC(char a1, char a2)
{
  v4 = sub_10009D9F0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    if (a1)
    {
      v9 = v6;
      sub_10009D9D0();
      v10 = sub_10009D9E0();
      v11 = sub_10009DFD0();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "setExecutionModeForSPI specified true for both isPreShare and isAddPeople; this will eventually become an internal error", v12, 2u);
      }

      (*(v5 + 8))(v8, v9);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v15[13] = 3;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if (v15[15] == 3)
    {
      return result;
    }

    if (a1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v15[14] = v14;
  }

  return sub_10009DB00();
}

uint64_t sub_100022014()
{
  v0 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v3 = sub_10009D860();
  v4 = 1;
  v5 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_100008728(v2, &qword_1000CA250, &qword_10009FDF8);
  if (v5 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v6 = v12;
    if (v12)
    {
      v7 = sub_10009DD50();
      v8 = NSSelectorFromString(v7);

      if ([v6 respondsToSelector:v8] && objc_msgSend(v6, "br_isCloudDocsShare"))
      {

        return 1;
      }

      v9 = sub_10001A8A0();

      if (v9 == 9)
      {
        return 1;
      }
    }

    return 0;
  }

  return v4;
}

uint64_t sub_100022220()
{
  v1[4] = v0;
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v2 = sub_10009D860();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_10009DF10();
  v1[11] = sub_10009DF00();
  v4 = sub_10009DED0();

  return _swift_task_switch(sub_100022364, v4, v3);
}

uint64_t sub_100022364()
{
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 96) = 1;

  sub_10009DB00();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v0 + 97) & 0xFE) == 8)
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      v4 = *(v0 + 56);

      sub_100008728(v4, &qword_1000CA250, &qword_10009FDF8);
      sub_100005B1C();
      swift_allocError();
      *v5 = 0xD000000000000016;
      *(v5 + 8) = 0x80000001000A64E0;
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      *(v5 + 16) = 0;
      *(v5 + 40) = 0;
      swift_willThrow();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 98) = 0;
    }

    else
    {
      (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
      v6 = sub_1000184A8();
      v8 = v6;
      if (v7)
      {
        v9 = *(v0 + 72);
        v29 = *(v0 + 80);
        v10 = *(v0 + 64);
        v11 = v6;
        v12 = v7;
        v13 = v7;

        sub_100005B1C();
        swift_allocError();
        *v14 = xmmword_1000A0420;
        *(v14 + 24) = 0;
        *(v14 + 32) = 0;
        *(v14 + 16) = v12;
        *(v14 + 40) = 1;
        swift_willThrow();

        (*(v9 + 8))(v29, v10);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 103) = 0;
      }

      else
      {

        if (v8)
        {
          v17 = *(v0 + 32);
          swift_getKeyPath();
          swift_getKeyPath();
          v18 = v8;

          sub_10009DAF0();

          if (*(v0 + 100) == 1)
          {
            swift_getKeyPath();
            swift_getKeyPath();

            sub_10009DAF0();

            if (*(v0 + 102) > 1u)
            {
              if (*(v0 + 102) != 2)
              {
                return sub_10009E250();
              }

              v19 = 2;
            }

            else if (*(v0 + 102))
            {
              v19 = 3;
            }

            else
            {
              v19 = 1;
            }
          }

          else
          {
            v19 = 1;
          }

          [v18 setPublicPermission:v19];
          v24 = *(*(v17 + 16) + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_allowAccessRequestsSPIOverride);
          v25 = v8;
          if (v24 == 2)
          {
            swift_getKeyPath();
            swift_getKeyPath();

            sub_10009DAF0();

            LOBYTE(v24) = *(v0 + 101);
          }

          v26 = *(v0 + 72);
          v27 = *(v0 + 80);
          v28 = *(v0 + 64);
          [v18 setAllowsAccessRequests:v24 & 1];
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 24) = v25;

          sub_10009DB00();

          (*(v26 + 8))(v27, v28);
        }

        else
        {
          v20 = *(v0 + 72);
          v21 = *(v0 + 64);
          v30 = *(v0 + 80);
          v23 = *(v0 + 40);
          v22 = *(v0 + 48);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 16) = 0;
          swift_retain_n();
          sub_10009DB00();
          (*(v20 + 56))(v22, 1, 1, v21);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_100008658(v22, v23, &qword_1000CA250, &qword_10009FDF8);

          sub_10009DB00();
          sub_100008728(v22, &qword_1000CA250, &qword_10009FDF8);

          (*(v20 + 8))(v30, v21);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 99) = 0;
      }
    }
  }

  else
  {
    sub_1000194F8();

    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 104) = 0;
  }

  sub_10009DB00();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100022B3C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 296) = a2;
  *(v4 + 304) = v3;
  *(v4 + 408) = a3;
  *(v4 + 288) = a1;
  v5 = sub_10009D9F0();
  *(v4 + 312) = v5;
  *(v4 + 320) = *(v5 - 8);
  *(v4 + 328) = swift_task_alloc();
  sub_10009DF10();
  *(v4 + 336) = sub_10009DF00();
  v7 = sub_10009DED0();
  *(v4 + 344) = v7;
  *(v4 + 352) = v6;

  return _swift_task_switch(sub_100022C38, v7, v6);
}

uint64_t sub_100022C38()
{
  if (*(v0 + 408))
  {
    v1 = sub_10000B284();
    *(v0 + 368) = v1;
    v2 = v0 + 16;
    v3 = v1;
    v4 = sub_10009DD50();
    *(v0 + 392) = v4;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_1000231DC;
    v5 = swift_continuation_init();
    *(v0 + 200) = sub_100003714(&qword_1000CA8E8, &qword_1000A09B8);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10003A8C8;
    *(v0 + 168) = &unk_1000C2628;
    *(v0 + 176) = v5;
    [v3 fetchShareParticipantWithPhoneNumber:v4 completionHandler:v0 + 144];
  }

  else
  {
    v6 = sub_10000B284();
    *(v0 + 360) = v6;
    v2 = v0 + 80;
    v7 = v6;
    v8 = sub_10009DD50();
    *(v0 + 376) = v8;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 280;
    *(v0 + 88) = sub_100023020;
    v9 = swift_continuation_init();
    *(v0 + 264) = sub_100003714(&qword_1000CA8E8, &qword_1000A09B8);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_10003A8C8;
    *(v0 + 232) = &unk_1000C2650;
    *(v0 + 240) = v9;
    [v7 fetchShareParticipantWithEmailAddress:v8 completionHandler:v0 + 208];
  }

  return _swift_continuation_await(v2);
}

uint64_t sub_100023020()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 384) = v2;
  v3 = *(v1 + 352);
  v4 = *(v1 + 344);
  if (v2)
  {
    v5 = sub_100023398;
  }

  else
  {
    v5 = sub_100023150;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100023150()
{
  v1 = v0[47];
  v2 = v0[45];

  v3 = v0[35];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1000231DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  v3 = *(v1 + 352);
  v4 = *(v1 + 344);
  if (v2)
  {
    v5 = sub_100023594;
  }

  else
  {
    v5 = sub_10002330C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002330C()
{
  v1 = v0[49];
  v2 = v0[46];

  v3 = v0[34];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100023398()
{
  v1 = v0[47];
  v2 = v0[45];

  swift_willThrow();

  sub_10009D9D0();
  swift_errorRetain();
  v3 = sub_10009D9E0();
  v4 = sub_10009DFD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "participant(withAddress) got CK error: %@", v5, 0xCu);
    sub_100008728(v6, &qword_1000CA8E0, &qword_10009FE08);
  }

  v9 = v0[40];
  v8 = v0[41];
  v10 = v0[39];

  (*(v9 + 8))(v8, v10);
  v11 = sub_10009D7A0();
  sub_100005B1C();
  swift_allocError();
  *v12 = 0xD000000000000019;
  *(v12 + 8) = 0x80000001000A5AB0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = v11;
  *(v12 + 40) = 2;
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100023594()
{
  v1 = v0[49];
  v2 = v0[46];

  swift_willThrow();

  sub_10009D9D0();
  swift_errorRetain();
  v3 = sub_10009D9E0();
  v4 = sub_10009DFD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "participant(withAddress) got CK error: %@", v5, 0xCu);
    sub_100008728(v6, &qword_1000CA8E0, &qword_10009FE08);
  }

  v9 = v0[40];
  v8 = v0[41];
  v10 = v0[39];

  (*(v9 + 8))(v8, v10);
  v11 = sub_10009D7A0();
  sub_100005B1C();
  swift_allocError();
  *v12 = 0xD000000000000019;
  *(v12 + 8) = 0x80000001000A5AB0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = v11;
  *(v12 + 40) = 2;
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100023794(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000067C8((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_10002386C(uint64_t a1, unsigned __int8 a2)
{
  if (sub_100019E10())
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    if (v8)
    {
      goto LABEL_6;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (v7 != 1)
  {
    return 3;
  }

LABEL_6:
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (v6 & 1 | a2 & (a1 == 3))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_100023A48(char a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 220) = a2;
  *(v3 + 219) = a1;
  v4 = sub_10009D9F0();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  sub_10009DF10();
  *(v3 + 88) = sub_10009DF00();
  v6 = sub_10009DED0();
  *(v3 + 96) = v6;
  *(v3 + 104) = v5;

  return _swift_task_switch(sub_100023B50, v6, v5);
}

uint64_t sub_100023B50()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v1 = *(v0 + 16);
  *(v0 + 112) = v1;
  if (!v1)
  {

    sub_100005B1C();
    swift_allocError();
    *v10 = 0xD000000000000043;
    *(v10 + 8) = 0x80000001000A5960;
    *(v10 + 16) = xmmword_1000A0430;
    *(v10 + 32) = 0x80000001000A59B0;
    *(v10 + 40) = 11;
    swift_willThrow();

    v9 = *(v0 + 8);
LABEL_7:

    return v9();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 216) == 1)
  {

    sub_10009D9D0();
    v2 = sub_10009D9E0();
    v3 = sub_10009DFF0();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 80);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "addParticipantsToShare, doing nothing as we have a public share", v8, 2u);
    }

    (*(v7 + 8))(v5, v6);

    v9 = *(v0 + 8);
    goto LABEL_7;
  }

  *(v0 + 24) = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  result = *(v0 + 32);
  *(v0 + 120) = result;
  v19 = *(result + 16);
  *(v0 + 128) = v19;
  if (v19)
  {
    *(v0 + 136) = _swiftEmptyArrayStorage;
    *(v0 + 144) = 0;
    if (*(result + 16))
    {
      v20 = *(result + 32);
      *(v0 + 152) = v20;
      v21 = *(result + 40);
      *(v0 + 160) = v21;
      v22 = *(result + 48);
      *(v0 + 221) = v22;
      sub_1000321DC(v20, v21);
      v23 = swift_task_alloc();
      *(v0 + 168) = v23;
      *v23 = v0;
      v23[1] = sub_1000240AC;

      return sub_100022B3C(v20, v21, v22);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(v0 + 192) = _swiftEmptyArrayStorage;
    v24 = *(v0 + 112);
    v25 = *(v0 + 220);
    result, v12, v13, v14, v15, v16, v17, v18;
    [v24 setAllowsAccessRequests:v25];
    sub_10009D9D0();

    v26 = sub_10009D9E0();
    v27 = sub_10009DFF0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v29 = *(v0 + 40);
      v30 = *(v29 + 16);
      v29, v31, v32, v33, v34, v35, v36, v37;
      *(v28 + 4) = v30;

      _os_log_impl(&_mh_execute_header, v26, v27, "addParticipantsToShare, adding %ld", v28, 0xCu);
    }

    else
    {
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v38 = swift_task_alloc();
    *(v0 + 200) = v38;
    *v38 = v0;
    v38[1] = sub_1000246EC;

    return sub_100024988(_swiftEmptyArrayStorage, 1, 1);
  }

  return result;
}

uint64_t sub_1000240AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v10 = *(v4 + 221);
  v11 = *(v3 + 160);
  v12 = *(v3 + 152);
  if (v1)
  {
    v13 = *(v4 + 136);
    v14 = *(v4 + 120);
    sub_1000321E4(v12, v11, v10, v5, v6, v7, v8, v9);
    v14, v15, v16, v17, v18, v19, v20, v21;
    v13, v22, v23, v24, v25, v26, v27, v28;
    v29 = *(v4 + 96);
    v30 = *(v4 + 104);
    v31 = sub_100024884;
  }

  else
  {
    sub_1000321E4(v12, v11, v10, v5, v6, v7, v8, v9);
    v29 = *(v4 + 96);
    v30 = *(v4 + 104);
    v31 = sub_10002421C;
  }

  return _swift_task_switch(v31, v29, v30);
}

void sub_10002421C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(v0 + 217) == 3)
  {
    v1 = 2;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    if (*(v0 + 218) > 1u)
    {
      if (*(v0 + 218) != 2)
      {
        sub_10009E250();
        return;
      }

      v1 = 2;
    }

    else if (*(v0 + 218))
    {
      v1 = 3;
    }

    else
    {
      v1 = 1;
    }
  }

  v2 = *(v0 + 176);
  v3 = *(v0 + 219);
  [v2 setPermission:v1];
  [v2 setRole:{sub_10002386C(objc_msgSend(v2, "permission"), v3)}];
  v4 = v2;
  sub_10009DE80();
  if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10009DEB0();
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 128);
  v7 = *(v0 + 144) + 1;
  sub_10009DEC0();

  v15 = *(v0 + 24);
  if (v7 == v6)
  {
    *(v0 + 192) = v15;
    v16 = *(v0 + 112);
    v17 = *(v0 + 220);
    *(v0 + 120), v8, v9, v10, v11, v12, v13, v14;
    [v16 setAllowsAccessRequests:v17];
    sub_10009D9D0();

    v18 = sub_10009D9E0();
    v19 = sub_10009DFF0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v21 = *(v0 + 40);
      v22 = *(v21 + 16);
      v21, v23, v24, v25, v26, v27, v28, v29;
      *(v20 + 4) = v22;

      _os_log_impl(&_mh_execute_header, v18, v19, "addParticipantsToShare, adding %ld", v20, 0xCu);
    }

    else
    {
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v37 = swift_task_alloc();
    *(v0 + 200) = v37;
    *v37 = v0;
    v37[1] = sub_1000246EC;

    sub_100024988(v15, 1, 1);
  }

  else
  {
    v30 = *(v0 + 144) + 1;
    *(v0 + 136) = v15;
    *(v0 + 144) = v30;
    v31 = *(v0 + 120);
    if (v30 >= *(v31 + 16))
    {
      __break(1u);
    }

    else
    {
      v32 = v31 + 24 * v30;
      v33 = *(v32 + 32);
      *(v0 + 152) = v33;
      v34 = *(v32 + 40);
      *(v0 + 160) = v34;
      v35 = *(v32 + 48);
      *(v0 + 221) = v35;
      sub_1000321DC(v33, v34);
      v36 = swift_task_alloc();
      *(v0 + 168) = v36;
      *v36 = v0;
      v36[1] = sub_1000240AC;

      sub_100022B3C(v33, v34, v35);
    }
  }
}

uint64_t sub_1000246EC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v10 = *(v2 + 96);
    v11 = *(v2 + 104);
    v12 = sub_100024900;
  }

  else
  {
    *(v2 + 192), v3, v4, v5, v6, v7, v8, v9;
    v10 = *(v2 + 96);
    v11 = *(v2 + 104);
    v12 = sub_100024808;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_100024808()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100024884()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100024900()
{
  v1 = v0[24];
  v2 = v0[14];

  v1, v3, v4, v5, v6, v7, v8, v9;

  v10 = v0[1];

  return v10();
}

uint64_t sub_100024988(uint64_t a1, char a2, char a3)
{
  *(v4 + 116) = a3;
  *(v4 + 115) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  v5 = sub_10009D9F0();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_10009DF10();
  *(v4 + 64) = sub_10009DF00();
  v7 = sub_10009DED0();
  *(v4 + 72) = v7;
  *(v4 + 80) = v6;

  return _swift_task_switch(sub_100024A84, v7, v6);
}

uint64_t sub_100024A84()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v1 = *(v0 + 16);
  *(v0 + 88) = v1;
  if (!v1)
  {

    sub_100005B1C();
    swift_allocError();
    *v12 = 0xD000000000000034;
    *(v12 + 8) = 0x80000001000A5A70;
    *(v12 + 16) = xmmword_1000A0430;
    *(v12 + 32) = 0x80000001000A59B0;
    *(v12 + 40) = 11;
    swift_willThrow();

    v9 = *(v0 + 8);
LABEL_11:

    return v9();
  }

  if (*(v0 + 115) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    if (*(v0 + 114) == 1)
    {

      sub_10009D9D0();
      v2 = sub_10009D9E0();
      v3 = sub_10009DFF0();
      v4 = os_log_type_enabled(v2, v3);
      v6 = *(v0 + 48);
      v5 = *(v0 + 56);
      v7 = *(v0 + 40);
      if (v4)
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "addParticipantsToShare, doing nothing as we have a public share", v8, 2u);
      }

      (*(v6 + 8))(v5, v7);

      v9 = *(v0 + 8);
      goto LABEL_11;
    }
  }

  *(v0 + 96) = sub_100094060();
  *(v0 + 104) = v10;
  *(v0 + 112) = v11;

  return _swift_task_switch(sub_100024D54, 0, 0);
}

uint64_t sub_100024D54(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, uint64_t a8)
{
  v9 = *(v8 + 24);
  if (v9 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009E260())
  {
    v11 = 0;
    v12 = *(v8 + 104);
    v13 = v9 & 0xC000000000000001;
    v14 = *(v8 + 24) + 32;
    p_weak_ivar_lyt = &OptionsModel.weak_ivar_lyt;
    v26 = *(v8 + 100);
    v27 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v17 = sub_10009E1F0();
      }

      else
      {
        if (v11 >= *(v27 + 16))
        {
          goto LABEL_36;
        }

        v17 = *(v14 + 8 * v11);
      }

      v9 = v17;
      v18 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (*(v8 + 116) != 1 || [v17 role] == 1)
      {
        goto LABEL_6;
      }

      if (v26 == 3)
      {
        goto LABEL_20;
      }

      if (*(v8 + 100) > 1u)
      {
        if (*(v8 + 100) != 2)
        {
          return sub_10009E250();
        }

LABEL_20:
        v19 = 2;
        goto LABEL_21;
      }

      if (*(v8 + 100))
      {
        v19 = 3;
      }

      else
      {
        v19 = 1;
      }

LABEL_21:
      [v9 p:v19 weak:? ivar:?lyt[202]];
      v20 = *(v12 + 16);
      if (!v20)
      {
        goto LABEL_37;
      }

      if (*(v12 + 32) != 1)
      {
        if (v20 == 1)
        {
          goto LABEL_38;
        }

LABEL_29:
        if (*(v8 + 112))
        {
          v16 = 2;
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      if (v20 == 1)
      {
        goto LABEL_39;
      }

      if (v26 != 1 || !*(v12 + 33))
      {
        goto LABEL_29;
      }

      if ([v9 role] == 3 || (v25 = *(v8 + 112), v21 = objc_msgSend(v9, "role"), (v25 & 1) != 0))
      {
        v16 = 2;
        p_weak_ivar_lyt = (&OptionsModel + 56);
        goto LABEL_5;
      }

      v16 = 2;
      p_weak_ivar_lyt = (&OptionsModel + 56);
      if (v21 == 2)
      {
        goto LABEL_5;
      }

LABEL_4:
      v16 = 3;
LABEL_5:
      [v9 setRole:v16];
LABEL_6:
      [*(v8 + 88) addParticipant:v9];

      ++v11;
      if (v18 == i)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_41:
  *(v8 + 104), a2, a3, a4, a5, a6, a7, a8;
  v23 = *(v8 + 72);
  v24 = *(v8 + 80);

  return _swift_task_switch(sub_10002502C, v23, v24);
}

uint64_t sub_10002502C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000250A0()
{
  v1[4] = v0;
  v2 = sub_10009D9F0();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = sub_10009D860();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  sub_10009DF10();
  v1[18] = sub_10009DF00();
  v5 = sub_10009DED0();
  v1[19] = v5;
  v1[20] = v4;

  return _swift_task_switch(sub_100025270, v5, v4);
}

uint64_t sub_100025270()
{
  v43 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v0 + 216) & 0xFE) != 8)
  {

    v7 = *(v0 + 8);
    goto LABEL_5;
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v4 = *(v2 + 48);
  *(v0 + 168) = v4;
  *(v0 + 176) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 104);

    sub_100008728(v5, &qword_1000CA250, &qword_10009FDF8);
    sub_100005B1C();
    swift_allocError();
    *v6 = 0xD000000000000016;
    *(v6 + 8) = 0x80000001000A64E0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = 0;
    *(v6 + 40) = 0;
    swift_willThrow();

    v7 = *(v0 + 8);
LABEL_5:

    return v7();
  }

  v9 = *(v0 + 128);
  v10 = *(v0 + 136);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  (*(v12 + 32))(v10, *(v0 + 104), v11);
  sub_10009D9D0();
  (*(v12 + 16))(v9, v10, v11);
  v13 = sub_10009D9E0();
  v14 = sub_10009DFF0();
  v15 = os_log_type_enabled(v13, v14);
  v17 = *(v0 + 120);
  v16 = *(v0 + 128);
  v18 = *(v0 + 112);
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);
  v21 = *(v0 + 40);
  if (v15)
  {
    v41 = *(v0 + 40);
    v22 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42 = v40;
    *v22 = 136315138;
    sub_1000391A4(&qword_1000CA4A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v23 = sub_10009E2C0();
    v39 = v19;
    v25 = v24;
    v38 = v14;
    v26 = *(v17 + 8);
    v26(v16, v18);
    v27 = sub_1000307A4(v23, v25, &v42);
    v25, v28, v29, v30, v31, v32, v33, v34;
    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v13, v38, "Fetching share for URL: %s", v22, 0xCu);
    sub_10000670C(v40);

    (*(v20 + 8))(v39, v41);
  }

  else
  {

    v26 = *(v17 + 8);
    v26(v16, v18);
    (*(v20 + 8))(v19, v21);
  }

  *(v0 + 184) = v26;
  v35 = swift_task_alloc();
  *(v0 + 192) = v35;
  *v35 = v0;
  v35[1] = sub_10002575C;
  v36 = *(v0 + 136);
  v37 = *(v0 + 88);

  return sub_1000069A4(v37, v36);
}

uint64_t sub_10002575C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v5 = *(v3 + 160);
  v6 = *(v3 + 152);
  if (v1)
  {
    v7 = sub_100025C18;
  }

  else
  {
    v7 = sub_1000258A0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000258A0()
{
  v1 = v0[21];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  sub_1000086C0(v4, v3, &qword_1000CA250, &qword_10009FDF8);
  sub_100008658(v3, v5, &qword_1000CA250, &qword_10009FDF8);
  LODWORD(v2) = v1(v5, 1, v2);
  sub_100008728(v5, &qword_1000CA250, &qword_10009FDF8);
  v6 = v0[25];
  if (v2 != 1)
  {
    v7 = [objc_allocWithZone(BRCKShareSubitem) initWithShare:v6];

    v6 = v7;
  }

  v9 = v0[8];
  v8 = v0[9];
  sub_100008658(v0[12], v8, &qword_1000CA250, &qword_10009FDF8);
  sub_100008658(v8, v9, &qword_1000CA250, &qword_10009FDF8);

  sub_10003E81C(v9);

  sub_100008728(v8, &qword_1000CA250, &qword_10009FDF8);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v0[23];
  v11 = v0[17];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[12];
  if (v6)
  {
    v0[3] = v6;

    sub_10009DB00();
    sub_100008728(v14, &qword_1000CA250, &qword_10009FDF8);
    v10(v11, v12);
  }

  else
  {
    v19 = v0[23];
    v16 = v0[8];
    v15 = v0[9];
    v0[2] = 0;
    swift_retain_n();
    sub_10009DB00();
    (*(v13 + 56))(v15, 1, 1, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100008658(v15, v16, &qword_1000CA250, &qword_10009FDF8);

    sub_10009DB00();
    sub_100008728(v15, &qword_1000CA250, &qword_10009FDF8);

    sub_100008728(v14, &qword_1000CA250, &qword_10009FDF8);
    v19(v11, v12);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100025C18()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[14];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100025D14(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  sub_10009DF10();
  v3[12] = sub_10009DF00();
  v5 = sub_10009DED0();
  v3[13] = v5;
  v3[14] = v4;

  return _swift_task_switch(sub_100025DB0, v5, v4);
}

uint64_t sub_100025DB0()
{
  type metadata accessor for CloudKitOperations(0);
  v1 = swift_allocObject();
  v0[15] = v1;
  v1[2] = 0xD000000000000021;
  v1[3] = 0x80000001000A4980;
  v1[4] = 0xD000000000000016;
  v1[5] = 0x80000001000A49B0;
  v1[6] = 0xD00000000000001DLL;
  v1[7] = 0x80000001000A49D0;
  v0[6] = 0;
  v0[5] = 0;
  sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
  sub_10009DAC0();

  return _swift_task_switch(sub_100025EB8, 0, 0);
}

uint64_t sub_100025EB8()
{
  v1 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = swift_task_alloc();
  v0[16] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[17] = v5;
  v6 = sub_100003714(&qword_1000CAD88, &qword_1000A11E0);
  *v5 = v0;
  v5[1] = sub_100025FD0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000002DLL, 0x80000001000A4820, sub_10003A828, v4, v6);
}

uint64_t sub_100025FD0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100026340;
  }

  else
  {

    v2 = sub_1000260EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000260EC()
{
  *(v0 + 152) = *(v0 + 16);
  *(v0 + 168) = *(v0 + 32);
  return _swift_task_switch(sub_100026114, *(v0 + 104), *(v0 + 112));
}

uint64_t sub_100026114()
{
  v1 = v0[10];

  if (v1)
  {
    v2 = v0[10];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[8] = v2;
    v3 = v2;

    sub_10009DB00();
  }

  else
  {
    v4 = v0[20];

    v5 = v4;
    sub_1000983D8(v4, 0);
  }

  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v9 = v0[15];
  v10 = v0[11];
  v11 = *(v10 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_ckMetadata);
  *(v10 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_ckMetadata) = v6;
  v12 = v6;

  swift_getKeyPath();
  swift_getKeyPath();
  v0[7] = v8;

  v13 = v8;
  sub_10009DB00();
  swift_setDeallocating();
  v9[3], v14, v15, v16, v17, v18, v19, v20;
  v9[5], v21, v22, v23, v24, v25, v26, v27;
  v9[7], v28, v29, v30, v31, v32, v33, v34;
  v35 = OBJC_IVAR____TtC13SPIHelper_iOS18CloudKitOperations__ckSourceAppBundleID;
  v36 = sub_100003714(&qword_1000CA230, &qword_10009FDB0);
  (*(*(v36 - 8) + 8))(v9 + v35, v36);
  swift_deallocClassInstance();

  v37 = v0[1];

  return v37();
}

uint64_t sub_100026340()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_1000263A4, v1, v2);
}

uint64_t sub_1000263A4()
{
  v1 = *(v0 + 120);

  swift_setDeallocating();
  v1[3], v2, v3, v4, v5, v6, v7, v8;
  v1[5], v9, v10, v11, v12, v13, v14, v15;
  v1[7], v16, v17, v18, v19, v20, v21, v22;
  v23 = OBJC_IVAR____TtC13SPIHelper_iOS18CloudKitOperations__ckSourceAppBundleID;
  v24 = sub_100003714(&qword_1000CA230, &qword_10009FDB0);
  (*(*(v24 - 8) + 8))(v1 + v23, v24);
  swift_deallocClassInstance();
  v25 = *(v0 + 8);

  return v25();
}

void sub_1000264AC(unsigned __int8 a1, void *a2)
{
  v4 = a1;
  v5 = sub_10009D9F0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v148 - v10;
  if (v4 == 6)
  {
    sub_1000194F8();
    v154 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    sub_10004551C(v154);
    swift_unknownObjectRelease();
    v12 = v154;
  }

  else
  {
    v13 = v2;
    if (a2)
    {
      v14 = a2;
      sub_10009D9D0();
      v15 = v14;
      v16 = sub_10009D9E0();
      v17 = sub_10009DFD0();

      if (os_log_type_enabled(v16, v17))
      {
        LODWORD(v150) = v17;
        v152 = v16;
        v154 = v6;
        v18 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v155 = v149;
        v151 = v18;
        *v18 = 136315394;
        v19 = sub_10009DE60();
        v27 = v20;
        if (("(generic fallback)" & 0x2000000000000000) != 0)
        {
          v28 = ("(generic fallback)" >> 40) & 0xF0000;
        }

        else
        {
          v28 = 2031616;
        }

        v153 = v13;
        if (v28)
        {
          v29 = v19;
          while (1)
          {
            v30 = sub_10009DE60();
            v38 = v31;
            if (v30 == v29 && v31 == v27)
            {
              v27, v31, v32, v33, v34, v35, v36, v37;
              goto LABEL_32;
            }

            v39 = sub_10009E2E0();
            v38, v40, v41, v42, v43, v44, v45, v46;
            if (v39)
            {
              break;
            }

            if ((v28 ^ sub_10009DE00()) < 0x4000)
            {
              goto LABEL_16;
            }
          }

          v38 = v27;
LABEL_32:
          v38, v47, v48, v49, v50, v51, v52, v53;
          sub_10009DE70();
          v97 = v96;
          v98 = sub_10009DDD0();
          v55 = v99;
          v97, v99, v100, v101, v102, v103, v104, v105;
          v54 = v98;
        }

        else
        {
LABEL_16:
          v27, v20, v21, v22, v23, v24, v25, v26;
          v54 = 0;
          v55 = 0xE000000000000000;
        }

        v107 = v151;
        v106 = v152;
        v108 = sub_1000307A4(v54, v55, &v155);
        v55, v109, v110, v111, v112, v113, v114, v115;
        *(v107 + 1) = v108;
        *(v107 + 6) = 2080;
        v116 = v15;
        v117 = [v116 description];
        v118 = sub_10009DD90();
        v120 = v119;

        v121 = sub_1000307A4(v118, v120, &v155);
        v120, v122, v123, v124, v125, v126, v127, v128;
        *(v107 + 14) = v121;
        _os_log_impl(&_mh_execute_header, v106, v150, "%s cancelling via extension with error: %s", v107, 0x16u);
        swift_arrayDestroy();

        (*(v154 + 1))(v11, v5);
      }

      else
      {

        (v6)[1](v11, v5);
      }

      sub_1000194F8();
      sub_10004551C(v15);
    }

    else
    {
      sub_10009D9D0();
      v56 = sub_10009D9E0();
      v57 = sub_10009DFF0();
      if (os_log_type_enabled(v56, v57))
      {
        LODWORD(v151) = v57;
        v154 = v6;
        v58 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v155 = v150;
        v152 = v58;
        LODWORD(v58->isa) = 136315138;
        v59 = sub_10009DE60();
        v67 = v60;
        if (("(generic fallback)" & 0x2000000000000000) != 0)
        {
          v68 = ("(generic fallback)" >> 40) & 0xF0000;
        }

        else
        {
          v68 = 2031616;
        }

        v153 = v13;
        if (v68)
        {
          v69 = v59;
          while (1)
          {
            v70 = sub_10009DE60();
            v78 = v71;
            if (v70 == v69 && v71 == v67)
            {
              v67, v71, v72, v73, v74, v75, v76, v77;
              goto LABEL_37;
            }

            v79 = sub_10009E2E0();
            v78, v80, v81, v82, v83, v84, v85, v86;
            if (v79)
            {
              break;
            }

            if ((v68 ^ sub_10009DE00()) < 0x4000)
            {
              goto LABEL_27;
            }
          }

          v78 = v67;
LABEL_37:
          v78, v87, v88, v89, v90, v91, v92, v93;
          sub_10009DE70();
          v130 = v129;
          v131 = sub_10009DDD0();
          v95 = v132;
          v130, v132, v133, v134, v135, v136, v137, v138;
          v94 = v131;
        }

        else
        {
LABEL_27:
          v67, v60, v61, v62, v63, v64, v65, v66;
          v94 = 0;
          v95 = 0xE000000000000000;
        }

        v139 = sub_1000307A4(v94, v95, &v155);
        v95, v140, v141, v142, v143, v144, v145, v146;
        v147 = v152;
        *(&v152->isa + 4) = v139;
        _os_log_impl(&_mh_execute_header, v56, v151, "%s dismissing via extension without error", v147, 0xCu);
        sub_10000670C(v150);

        (*(v154 + 1))(v9, v5);
      }

      else
      {

        (v6)[1](v9, v5);
      }

      sub_1000194F8();
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100026B34(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  *(v2 + 24) = swift_task_alloc();
  sub_10009DF10();
  *(v2 + 32) = sub_10009DF00();
  v4 = sub_10009DED0();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_100026C08, v4, v3);
}

uint64_t sub_100026C08()
{
  v1 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v2 = sub_10009D860();
  *(v0 + 56) = v2;
  v3 = *(v2 - 8);
  *(v0 + 64) = v3;
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = sub_100026D50;
    v6 = *(v0 + 24);
    v7 = *(v0 + 88);

    return sub_1000140D4(v6, v7);
  }

  return result;
}

uint64_t sub_100026D50()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];
    v5 = sub_100026EE8;
  }

  else
  {
    (*(v2[8] + 8))(v2[3], v2[7]);
    v3 = v2[5];
    v4 = v2[6];
    v5 = sub_100026E7C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100026E7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100026EE8()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[3];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100026F78()
{
  v1[6] = v0;
  v2 = sub_10009D9F0();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v1[11] = swift_task_alloc();
  sub_10009DF10();
  v1[12] = sub_10009DF00();
  v4 = sub_10009DED0();
  v1[13] = v4;
  v1[14] = v3;

  return _swift_task_switch(sub_1000270B0, v4, v3);
}

uint64_t sub_1000270B0()
{
  v34 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 168) = 2;

  sub_10009DB00();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v1 = *(v0 + 16);
  *(v0 + 120) = v1;
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if ((*(v0 + 170) & 0xFE) == 8)
    {
      v2 = 0;
    }

    else
    {
      v2 = sub_10000B284();
    }

    *(v0 + 128) = v2;
    v25 = sub_100094060();
    v27 = v26;
    v29 = v28;
    *(v0 + 136) = v26;
    v30 = swift_task_alloc();
    *(v0 + 144) = v30;
    *v30 = v0;
    v30[1] = sub_100027584;
    v31 = *(v0 + 88);

    return sub_1000070A8(v31, v1, v2, v25 & 0x101FFFFFFFFFFLL, v27, v29 & 0x101);
  }

  else
  {

    sub_100005B1C();
    v3 = swift_allocError();
    *v4 = xmmword_1000A0440;
    *(v4 + 16) = xmmword_1000A0450;
    *(v4 + 32) = 0x80000001000A5930;
    *(v4 + 40) = 11;
    swift_willThrow();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 169) = 0;

    sub_10009DB00();
    sub_10009D9D0();
    swift_errorRetain();
    v5 = sub_10009D9E0();
    v6 = sub_10009DFD0();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 64);
    v32 = *(v0 + 72);
    v9 = *(v0 + 56);
    if (v7)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v33 = v11;
      *v10 = 136315138;
      *(v0 + 24) = v3;
      swift_errorRetain();
      sub_100003714(&qword_1000CB840, &qword_10009FDA0);
      v12 = sub_10009DDA0();
      v14 = v13;
      v15 = sub_1000307A4(v12, v13, &v33);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "saveShare error: %s", v10, 0xCu);
      sub_10000670C(v11);
    }

    (*(v8 + 8))(v32, v9);
    swift_willThrow();

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_100027584(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  v5 = v3[17];
  v6 = v3[16];
  sub_100008728(v3[11], &qword_1000CA250, &qword_10009FDF8);
  v5, v7, v8, v9, v10, v11, v12, v13;

  v14 = v3[14];
  v15 = v3[13];
  if (v1)
  {
    v16 = sub_100027A2C;
  }

  else
  {
    v16 = sub_10002772C;
  }

  return _swift_task_switch(v16, v15, v14);
}

uint64_t sub_10002772C()
{
  v32 = v0;
  v1 = *(v0 + 152);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v1;

  v2 = v1;
  sub_10009DB00();
  sub_10009D9D0();
  v3 = v2;
  v4 = sub_10009D9E0();
  v5 = sub_10009DFF0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v30 = *(v0 + 80);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315394;
    *(v0 + 40) = [v6 rootRecordID];
    sub_100003714(&qword_1000CA8D8, &qword_1000A07A0);
    v11 = sub_10009DDA0();
    v13 = v12;
    v14 = sub_1000307A4(v11, v12, &v31);
    v13, v15, v16, v17, v18, v19, v20, v21;
    *(v9 + 4) = v14;
    *(v9 + 12) = 1026;
    LODWORD(v13) = [v6 allowsAccessRequests];

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "saveShare succeeded, rootRecordID: %s, share allowAccessRequests: %{BOOL,public}d", v9, 0x12u);
    sub_10000670C(v10);

    (*(v7 + 8))(v30, v8);
  }

  else
  {
    v22 = *(v0 + 152);
    v23 = *(v0 + 80);
    v24 = *(v0 + 56);
    v25 = *(v0 + 64);

    (*(v25 + 8))(v23, v24);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  v26 = *(v0 + 152);
  v27 = *(v0 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 171) = 3;

  sub_10009DB00();

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100027A2C()
{
  v27 = v0;
  v1 = *(v0 + 120);

  v2 = *(v0 + 160);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 169) = 0;

  sub_10009DB00();
  sub_10009D9D0();
  swift_errorRetain();
  v3 = sub_10009D9E0();
  v4 = sub_10009DFD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v25 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    *(v0 + 24) = v2;
    swift_errorRetain();
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v9 = sub_10009DDA0();
    v11 = v10;
    v12 = sub_1000307A4(v9, v10, &v26);
    v11, v13, v14, v15, v16, v17, v18, v19;
    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "saveShare error: %s", v7, 0xCu);
    sub_10000670C(v8);

    (*(v5 + 8))(v25, v6);
  }

  else
  {
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 56);

    (*(v21 + 8))(v20, v22);
  }

  swift_willThrow();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100027C80()
{
  v1[5] = v0;
  v2 = sub_10009D9F0();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_10009DF10();
  v1[13] = sub_10009DF00();
  v4 = sub_10009DED0();
  v1[14] = v4;
  v1[15] = v3;

  return _swift_task_switch(sub_100027DD0, v4, v3);
}

uint64_t sub_100027DD0()
{
  v32 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 176) = 2;

    sub_10009DB00();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v2 = *(v0 + 16);
    *(v0 + 136) = v2;
    if (v2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      if ((*(v0 + 179) & 0xFE) == 8)
      {
        v3 = 0;
      }

      else
      {
        v3 = sub_10000B284();
      }

      *(v0 + 144) = v3;
      v26 = sub_100094060();
      *(v0 + 152) = v27;
      v28 = swift_task_alloc();
      *(v0 + 160) = v28;
      *v28 = v0;
      v28[1] = sub_100028360;
      v29 = *(v0 + 96);

      return sub_100008788(v29, v2, v3, v26 & 0x101FFFFFFFFFFLL);
    }

    sub_100005B1C();
    v5 = swift_allocError();
    *v6 = xmmword_1000A0460;
    *(v6 + 16) = xmmword_1000A0470;
    *(v6 + 32) = 0x80000001000A6730;
    *(v6 + 40) = 11;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 177) = 0;

    sub_10009DB00();
    sub_10009D9D0();
    swift_errorRetain();
    v7 = sub_10009D9E0();
    v8 = sub_10009DFD0();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 56);
    v30 = *(v0 + 64);
    v11 = *(v0 + 48);
    if (v9)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136315138;
      *(v0 + 24) = v5;
      swift_errorRetain();
      sub_100003714(&qword_1000CB840, &qword_10009FDA0);
      v14 = sub_10009DDA0();
      v16 = v15;
      v17 = sub_1000307A4(v14, v15, &v31);
      v16, v18, v19, v20, v21, v22, v23, v24;
      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "stopSharing error: %s", v12, 0xCu);
      sub_10000670C(v13);
    }

    (*(v10 + 8))(v30, v11);
    swift_willThrow();

    v4 = *(v0 + 8);
  }

  else
  {

    v4 = *(v0 + 8);
  }

  return v4();
}

uint64_t sub_100028360()
{
  v2 = *v1;
  (*v1)[21] = v0;

  v3 = v2[19];
  v4 = v2[18];
  sub_100008728(v2[12], &qword_1000CA250, &qword_10009FDF8);
  v3, v5, v6, v7, v8, v9, v10, v11;

  v12 = v2[15];
  v13 = v2[14];
  if (v0)
  {
    v14 = sub_10002886C;
  }

  else
  {
    v14 = sub_100028500;
  }

  return _swift_task_switch(v14, v13, v12);
}

uint64_t sub_100028500()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 0;
  swift_retain_n();
  sub_10009DB00();
  v3 = sub_10009D860();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008658(v1, v2, &qword_1000CA250, &qword_10009FDF8);

  sub_10009DB00();
  sub_100008728(v1, &qword_1000CA250, &qword_10009FDF8);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 181) = 0;

  sub_10009DB00();
  sub_10009D9D0();

  v4 = sub_10009D9E0();
  v5 = sub_10009DFF0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    *(v6 + 4) = (*(v0 + 182) & 0xFE) != 8;

    _os_log_impl(&_mh_execute_header, v4, v5, "stopSharing succeeded. Is CloudKit Sharing: %{BOOL}d", v6, 8u);
  }

  else
  {
  }

  v7 = *(v0 + 136);
  v8 = *(v0 + 72);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  swift_unknownObjectRelease();

  (*(v10 + 8))(v8, v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10002886C()
{
  v27 = v0;
  v1 = *(v0 + 136);

  swift_unknownObjectRelease();

  v2 = *(v0 + 168);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 177) = 0;

  sub_10009DB00();
  sub_10009D9D0();
  swift_errorRetain();
  v3 = sub_10009D9E0();
  v4 = sub_10009DFD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 56);
    v25 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    *(v0 + 24) = v2;
    swift_errorRetain();
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v9 = sub_10009DDA0();
    v11 = v10;
    v12 = sub_1000307A4(v9, v10, &v26);
    v11, v13, v14, v15, v16, v17, v18, v19;
    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "stopSharing error: %s", v7, 0xCu);
    sub_10000670C(v8);

    (*(v5 + 8))(v25, v6);
  }

  else
  {
    v21 = *(v0 + 56);
    v20 = *(v0 + 64);
    v22 = *(v0 + 48);

    (*(v21 + 8))(v20, v22);
  }

  swift_willThrow();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100028ADC(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v2[95] = sub_100003714(&qword_1000CA420, &unk_1000A0310);
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v3 = sub_10009D860();
  v2[106] = v3;
  v2[107] = *(v3 - 8);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  v4 = sub_10009D9F0();
  v2[111] = v4;
  v2[112] = *(v4 - 8);
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  sub_10009DF10();
  v2[118] = sub_10009DF00();
  v6 = sub_10009DED0();
  v2[119] = v6;
  v2[120] = v5;

  return _swift_task_switch(sub_100028D50, v6, v5);
}

uint64_t sub_100028D50(uint64_t a1)
{
  v72 = v1;
  sub_10009D9D0();
  v2 = sub_10009D9E0();
  v3 = sub_10009DFB0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 936);
  v6 = *(v1 + 896);
  v7 = *(v1 + 888);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v71 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1000307A4(0xD00000000000001CLL, 0x80000001000A5910, &v71);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Start", v8, 0xCu);
    sub_10000670C(v9);
  }

  v10 = *(v6 + 8);
  v10(v5, v7);
  *(v1 + 968) = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v1 + 1012) & 0xFE) != 8)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v11 = *(v1 + 696);
    if (v11)
    {
      v12 = [*(v1 + 696) URL];
      if (v12)
      {
        v13 = v12;
        v70 = v11;
        v14 = *(v1 + 880);
        v15 = *(v1 + 872);
        v16 = *(v1 + 856);
        v17 = *(v1 + 848);

        sub_10009D820();

        sub_10009D9D0();
        v69 = *(v16 + 16);
        v69(v15, v14, v17);
        v18 = sub_10009D9E0();
        v19 = sub_10009DFB0();
        v20 = os_log_type_enabled(v18, v19);
        v21 = *(v1 + 928);
        v22 = *(v1 + 888);
        v23 = *(v1 + 872);
        v24 = *(v1 + 856);
        v25 = *(v1 + 848);
        if (v20)
        {
          v26 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *v26 = 136315394;
          *(v26 + 4) = sub_1000307A4(0xD00000000000001CLL, 0x80000001000A5910, &v71);
          *(v26 + 12) = 2080;
          v66 = v22;
          v67 = v21;
          v27 = sub_10009D7E0();
          v29 = v28;
          v68 = *(v24 + 8);
          v68(v23, v25);
          v30 = sub_1000307A4(v27, v29, &v71);
          v29, v31, v32, v33, v34, v35, v36, v37;
          *(v26 + 14) = v30;
          _os_log_impl(&_mh_execute_header, v18, v19, "%s Found CKShare URL, replacing URL with: %s", v26, 0x16u);
          swift_arrayDestroy();

          v39 = v66;
          v38 = v67;
        }

        else
        {

          v68 = *(v24 + 8);
          v68(v23, v25);
          v38 = v21;
          v39 = v22;
        }

        v10(v38, v39);
        v59 = *(v1 + 880);
        v60 = *(v1 + 856);
        v61 = *(v1 + 848);
        v62 = *(v1 + 840);
        v63 = *(v1 + 832);
        v69(v62, v59, v61);
        (*(v60 + 56))(v62, 0, 1, v61);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100008658(v62, v63, &qword_1000CA250, &qword_10009FDF8);

        sub_10009DB00();

        sub_100008728(v62, &qword_1000CA250, &qword_10009FDF8);
        v68(v59, v61);
LABEL_20:
        sub_100029FAC();

        v64 = *(v1 + 8);

        return v64();
      }
    }
  }

  v40 = *(v1 + 856);
  v41 = *(v1 + 848);
  v42 = *(v1 + 824);
  sub_100008658(*(v1 + 744), v42, &qword_1000CA250, &qword_10009FDF8);
  v43 = *(v40 + 48);
  *(v1 + 976) = v43;
  *(v1 + 984) = (v40 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v43(v42, 1, v41) == 1)
  {
    v44 = *(v1 + 824);

    sub_100008728(v44, &qword_1000CA250, &qword_10009FDF8);
    sub_10009D9D0();
    v45 = sub_10009D9E0();
    v46 = sub_10009DFD0();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v1 + 904);
    v49 = *(v1 + 888);
    if (v47)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v71 = v51;
      *v50 = 136446210;
      *(v50 + 4) = sub_1000307A4(0xD00000000000001CLL, 0x80000001000A5910, &v71);
      _os_log_impl(&_mh_execute_header, v45, v46, "%{public}s Is not a CKShare nor is there a fileURL. This is a silent failure.", v50, 0xCu);
      sub_10000670C(v51);
    }

    v10(v48, v49);
    goto LABEL_20;
  }

  (*(*(v1 + 856) + 32))(*(v1 + 864), *(v1 + 824), *(v1 + 848));
  sub_10009D9D0();
  v52 = sub_10009D9E0();
  v53 = sub_10009DFB0();
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v1 + 920);
  v56 = *(v1 + 888);
  if (v54)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v71 = v58;
    *v57 = 136446210;
    *(v57 + 4) = sub_1000307A4(0xD00000000000001CLL, 0x80000001000A5910, &v71);
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s Copying sharing URL...", v57, 0xCu);
    sub_10000670C(v58);
  }

  v10(v55, v56);
  *(v1 + 1008) = *(*(v1 + 760) + 48);

  return _swift_task_switch(sub_100029654, 0, 0);
}

uint64_t sub_100029654()
{
  v1 = v0[108];
  v2 = swift_task_alloc();
  v0[124] = v2;
  *(v2 + 16) = v1;
  swift_asyncLet_begin();
  v3 = v0[101];

  return _swift_asyncLet_get(v0 + 2, v3, sub_100029708, v0 + 82);
}

uint64_t sub_100029724()
{
  v1 = v0[102];
  v2 = v0[100];
  v3 = v0[95];
  sub_100008658(v0[101], v2, &qword_1000CA420, &unk_1000A0310);
  v0[125] = *(v2 + *(v3 + 48));
  sub_1000086C0(v2, v1, &qword_1000CA250, &qword_10009FDF8);
  v4 = v0[101];

  return _swift_asyncLet_finish(v0 + 2, v4, sub_1000297E0, v0 + 88);
}

uint64_t sub_1000297FC()
{

  v1 = *(v0 + 960);
  v2 = *(v0 + 952);

  return _swift_task_switch(sub_100029864, v2, v1);
}

uint64_t sub_100029864()
{
  v59 = v0;
  v1 = *(v0 + 816);
  v2 = *(v0 + 792);
  v3 = *(v0 + 760);
  *(v1 + *(v0 + 1008)) = *(v0 + 1000);
  sub_100008658(v1, v2, &qword_1000CA420, &unk_1000A0310);
  v4 = *(v2 + *(v3 + 48));
  if (!v4)
  {
    v12 = *(v0 + 816);
    v13 = *(v0 + 784);
    sub_100008728(*(v0 + 792), &qword_1000CA250, &qword_10009FDF8);
    sub_10009D9D0();
    sub_100008658(v12, v13, &qword_1000CA420, &unk_1000A0310);
    v14 = sub_10009D9E0();
    v15 = sub_10009DFB0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 976);
      v17 = *(v0 + 848);
      v18 = *(v0 + 784);
      v19 = *(v0 + 776);
      v20 = *(v0 + 760);
      v21 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = sub_1000307A4(0xD00000000000001CLL, 0x80000001000A5910, v58);
      *(v21 + 12) = 2080;
      sub_100008658(v18, v19, &qword_1000CA420, &unk_1000A0310);

      result = v16(v19, 1, v17);
      if (result == 1)
      {
        goto LABEL_13;
      }

      v54 = *(v0 + 912);
      v56 = *(v0 + 968);
      v53 = *(v0 + 888);
      v23 = *(v0 + 856);
      v24 = *(v0 + 848);
      v25 = *(v0 + 784);
      v26 = *(v0 + 776);
      v27 = sub_10009D7E0();
      v29 = v28;
      sub_100008728(v25, &qword_1000CA420, &unk_1000A0310);
      (*(v23 + 8))(v26, v24);
      v30 = sub_1000307A4(v27, v29, v58);
      v29, v31, v32, v33, v34, v35, v36, v37;
      *(v21 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s Replacing URL with: %s", v21, 0x16u);
      swift_arrayDestroy();

      v56(v54, v53);
    }

    else
    {
      v38 = *(v0 + 968);
      v39 = *(v0 + 912);
      v40 = *(v0 + 888);
      v41 = *(v0 + 784);

      sub_100008728(v41, &qword_1000CA420, &unk_1000A0310);
      v38(v39, v40);
    }

    v42 = *(v0 + 976);
    v43 = *(v0 + 848);
    v44 = *(v0 + 768);
    v45 = *(v0 + 760);
    sub_100008658(*(v0 + 816), v44, &qword_1000CA420, &unk_1000A0310);
    v46 = *(v44 + *(v45 + 48));

    result = v42(v44, 1, v43);
    if (result != 1)
    {
      v47 = *(v0 + 856);
      v48 = *(v0 + 848);
      v49 = *(v0 + 840);
      v50 = *(v0 + 832);
      v55 = *(v0 + 816);
      v57 = *(v0 + 864);
      v51 = *(v0 + 768);

      (*(v47 + 16))(v49, v51, v48);
      (*(v47 + 56))(v49, 0, 1, v48);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100008658(v49, v50, &qword_1000CA250, &qword_10009FDF8);
      sub_10009DB00();
      sub_100008728(v49, &qword_1000CA250, &qword_10009FDF8);
      sub_100008728(v55, &qword_1000CA420, &unk_1000A0310);
      v52 = *(v47 + 8);
      v52(v57, v48);
      v52(v51, v48);
      sub_100029FAC();

      v11 = *(v0 + 8);
      goto LABEL_9;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = *(v0 + 864);
  v6 = *(v0 + 856);
  v7 = *(v0 + 848);
  v8 = *(v0 + 816);
  v9 = *(v0 + 792);

  sub_100008728(v9, &qword_1000CA250, &qword_10009FDF8);
  sub_100005B1C();
  swift_allocError();
  *v10 = 0xD00000000000001CLL;
  *(v10 + 8) = 0x80000001000A5910;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v4;
  *(v10 + 40) = 7;
  swift_willThrow();
  sub_100008728(v8, &qword_1000CA420, &unk_1000A0310);
  (*(v6 + 8))(v5, v7);
  sub_100029FAC();

  v11 = *(v0 + 8);
LABEL_9:

  return v11();
}

uint64_t sub_100029FAC()
{
  v0 = sub_10009D9F0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009D9D0();
  v4 = sub_10009D9E0();
  v5 = sub_10009DFB0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1000307A4(0xD00000000000001CLL, 0x80000001000A5910, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s Finish", v6, 0xCu);
    sub_10000670C(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10002A144()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  sub_10003A844(v0 + 40);
  sub_10003A168(*(v0 + 56), *(v0 + 64));
  v8 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isDelegateInitialized;
  v9 = sub_100003714(&qword_1000CAB08, &qword_1000A0E10);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v11 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__executionMode;
  v12 = sub_100003714(&qword_1000CAB00, &qword_1000A0E08);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharingType;
  v14 = sub_100003714(&qword_1000CAAF8, &qword_1000A0E00);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharingStage;
  v16 = sub_100003714(&qword_1000CAAF0, &qword_1000A0DF8);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__addedAddresses;
  v18 = sub_100003714(&qword_1000CAAE8, &qword_1000A0DF0);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__createOrLoadStage;
  v20 = sub_100003714(&qword_1000CAAE0, &qword_1000A0DE8);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__addingAddressesStage;
  v22 = sub_100003714(&qword_1000CAAD8, &qword_1000A0DE0);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__savingStage;
  v24 = sub_100003714(&qword_1000CAAD0, &qword_1000A0DD8);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);
  v25 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__alertNowShowing;
  v26 = sub_100003714(&qword_1000CAAC8, &unk_1000A1870);
  (*(*(v26 - 8) + 8))(v0 + v25, v26);
  v10(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isShowingAlert, v9);
  v10(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isFolderShare, v9);

  v10(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isFolderSubshare, v9);

  v27 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__folderSharingStage;
  v28 = sub_100003714(&qword_1000CAAC0, &qword_1000A0DD0);
  (*(*(v28 - 8) + 8))(v0 + v27, v28);
  v29 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__shareSaveStatus;
  v30 = sub_100003714(&qword_1000CAAB8, &qword_1000A0DC8);
  (*(*(v30 - 8) + 8))(v0 + v29, v30);
  swift_unknownObjectRelease();
  v31 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharingOptionsAllowedFromSPI;
  v32 = sub_100003714(&qword_1000CAAB0, &qword_1000A0DC0);
  (*(*(v32 - 8) + 8))(v0 + v31, v32);
  v33 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__yourNameAndEmail;
  v34 = sub_100003714(&qword_1000CAAA8, &qword_1000A0DB8);
  (*(*(v34 - 8) + 8))(v0 + v33, v34);
  v35 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharedFileOrFolderURL;
  v36 = sub_100003714(&qword_1000CAAA0, &qword_1000A0DB0);
  (*(*(v36 - 8) + 8))(v0 + v35, v36);
  v37 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__itemUTI;
  v38 = sub_100003714(&qword_1000CA230, &qword_10009FDB0);
  v39 = *(*(v38 - 8) + 8);
  v39(v0 + v37, v38);
  v10(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isShareRoot, v9);
  v40 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__thumbnail;
  v41 = sub_100003714(&unk_1000CAA90, &qword_1000A0DA8);
  (*(*(v41 - 8) + 8))(v0 + v40, v41);
  v42 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__thumbnailFromCloudKitSPI;
  v43 = sub_100003714(&qword_1000CAA88, &qword_1000A0DA0);
  v44 = *(*(v43 - 8) + 8);
  v44(v0 + v42, v43);
  v44(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__thumbnailFromDocumentSPI, v43);
  v45 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__itemTitle;
  v46 = sub_100003714(&qword_1000CAA80, &qword_1000A18C0);
  v47 = *(*(v46 - 8) + 8);
  v47(v0 + v45, v46);
  v39(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sourceAppBundleID, v38);
  v47(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sectionTitleForAuxiliaryToggles, v46);
  v47(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__primaryCheckboxTitle, v46);
  v47(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__secondaryCheckboxTitle, v46);
  v10(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__primaryCheckboxState, v9);
  v10(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__secondaryCheckboxState, v9);
  v48 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__ckContainerIdentifier;
  v49 = sub_100003714(&qword_1000CAA78, &qword_1000A0D98);
  (*(*(v49 - 8) + 8))(v0 + v48, v49);
  v47(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__helpAnchor, v46);
  v50 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__participantDetails;
  v51 = sub_100003714(&qword_1000CAA70, &qword_1000A0D90);
  (*(*(v51 - 8) + 8))(v0 + v50, v51);

  return v0;
}

uint64_t sub_10002A970()
{
  sub_10002A144();

  return swift_deallocClassInstance();
}

uint64_t sub_10002A9C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009DAA0();
  *a1 = result;
  return result;
}

void sub_10002AA18()
{
  v0 = sub_10009DD50();
  v1 = [objc_opt_self() imageNamed:v0];

  if (!v1)
  {
    v1 = [objc_allocWithZone(UIImage) init];
  }

  qword_1000CA490 = v1;
}

uint64_t sub_10002AAAC(char a1)
{
  *(v2 + 168) = v1;
  *(v2 + 106) = a1;
  sub_100003714(&qword_1000CA660, &qword_1000A1300);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v3 = type metadata accessor for AlertViewModelButton(0);
  *(v2 + 192) = v3;
  *(v2 + 200) = *(v3 - 8);
  *(v2 + 208) = swift_task_alloc();
  v4 = sub_10009D9F0();
  *(v2 + 216) = v4;
  *(v2 + 224) = *(v4 - 8);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = sub_10009DF10();
  *(v2 + 312) = sub_10009DF00();
  v6 = sub_10009DED0();
  *(v2 + 320) = v6;
  *(v2 + 328) = v5;

  return _swift_task_switch(sub_10002ACD4, v6, v5);
}

uint64_t sub_10002ACD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v0 + 57) & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_10009DAF0(), , , *(v0 + 58) - 2 > 3))
  {

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v1 = *(v0 + 296);
    v2 = *(v0 + 168);
    sub_10009DF20();
    v3 = sub_10009DF40();
    (*(*(v3 - 8) + 56))(v1, 0, 1, v3);

    v4 = sub_10009DF00();
    v5 = swift_allocObject();
    v5[2] = v4;
    v5[3] = &protocol witness table for MainActor;
    v5[4] = v2;
    v6 = sub_10004CDF4(0, 0, v1, &unk_1000A0A68, v5);
    *(v0 + 336) = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 0;

    sub_10009DB00();
    v7 = swift_task_alloc();
    *(v0 + 344) = v7;
    v8 = sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    *(v0 + 352) = v8;
    *v7 = v0;
    v7[1] = sub_10002B024;

    return Task.value.getter(v8, v6, &type metadata for () + 8, v8, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_10002B024()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);
  if (v0)
  {
    v5 = sub_10002B2B8;
  }

  else
  {
    v5 = sub_10002B160;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002B160()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 105) = 2;

  sub_10009DB00();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002B2B8()
{
  v322 = v0;
  *(v0 + 144) = *(v0 + 360);
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    *(v0 + 368) = v2;
    *(v0 + 376) = v1;
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    *(v0 + 384) = v3;
    *(v0 + 392) = v4;
    v5 = *(v0 + 48);
    *(v0 + 400) = v5;
    v318 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 60) = 2;

    sub_10009DB00();
    sub_10009D9D0();
    sub_100032380(v2, v1, v3, v4, v5, v318);
    v6 = v1;
    v7 = sub_10009D9E0();
    v8 = sub_10009DFD0();
    v316 = v3;
    v9 = v3;
    v10 = v4;
    v11 = v4;
    v12 = v318;
    sub_1000323E0(v2, v6, v9, v11, v5, v318, v13, v14);
    v308 = v8;
    v15 = os_log_type_enabled(v7, v8);
    v313 = *(v0 + 288);
    v16 = *(v0 + 224);
    v17 = *(v0 + 216);
    v317 = v5;
    if (v15)
    {
      v18 = v6;
      loga = v7;
      v304 = *(v0 + 216);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v321 = v20;
      *v19 = 136315138;
      *(v0 + 64) = v2;
      *(v0 + 72) = v18;
      *(v0 + 80) = v316;
      *(v0 + 88) = v10;
      *(v0 + 96) = v5;
      *(v0 + 104) = v318;
      sub_100032380(v2, v18, v316, v10, v5, v318);
      v21 = sub_10009DDA0();
      v23 = v22;
      v24 = sub_1000307A4(v21, v22, &v321);
      v25 = v23;
      v26 = v10;
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v19 + 4) = v24;
      v12 = v318;
      _os_log_impl(&_mh_execute_header, loga, v308, "saveShareAndReportErrors error: %s", v19, 0xCu);
      sub_10000670C(v20);

      v34 = *(v16 + 8);
      result = v34(v313, v304);
    }

    else
    {

      v36 = *(v16 + 8);
      result = v36(v313, v17);
      v34 = v36;
      v26 = v10;
      v18 = v6;
    }

    *(v0 + 408) = v34;
    if (v12 == 4)
    {
      v314 = v34;
      v37 = v316;
      if (!v316)
      {
        __break(1u);
        return result;
      }

      sub_100032380(v2, v18, v316, v26, v317, 4u);
      v38 = v316;
      v39 = v18;
      sub_10009045C(22);
      v41 = v40;

      if (v41)
      {

        sub_10009D9D0();
        v42 = sub_10009D9E0();
        v43 = sub_10009DFD0();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v42, v43, "saveShareAndReportErrors got batchRequestFailed, will retry once", v44, 2u);
        }

        v45 = *(v0 + 280);
        v46 = *(v0 + 216);
        v47 = *(v0 + 106);

        v314(v45, v46);
        if (v47 == 1)
        {
          v48 = swift_task_alloc();
          *(v0 + 416) = v48;
          *v48 = v0;
          v48[1] = sub_10002CA1C;

          return sub_10002AAAC(0);
        }

        v39, v142, v143, v144, v145, v146, v147, v148;

        v317, v149, v150, v151, v152, v153, v154, v155;
        v37 = v316;
        v18 = v39;
        LOBYTE(v12) = v318;
        goto LABEL_16;
      }

      v51 = v38;
      sub_10009045C(14);
      v53 = v52;

      if (v53)
      {
        v309 = v26;
        v319 = v39;
        sub_10009D9D0();
        v54 = sub_10009D9E0();
        v55 = sub_10009DFD0();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "saveShareAndReportErrors got oplock error, will update share and show alert", v56, 2u);
        }

        v57 = *(v0 + 272);
        v58 = *(v0 + 216);
        v305 = v0;

        v314(v57, v58);
        v59 = v51;

        v60 = [v59 userInfo];
        log = v59;

        v61 = sub_10009DD00();
        v62 = sub_10009DD90();
        if (*(v61 + 16))
        {
          v70 = v63;
          v71 = sub_100030DD4(v62, v63);
          v73 = v72;
          v70, v72, v74, v75, v76, v77, v78, v79;
          v87 = v39;
          if (v73)
          {
            sub_1000066A8(*(v61 + 56) + 32 * v71, v0 + 112);
            v61, v88, v89, v90, v91, v92, v93, v94;
            sub_1000037C4(0, &qword_1000CA900, CKShare_ptr);
            if (swift_dynamicCast())
            {
              sub_1000323E0(v2, v39, v316, v309, v317, 4, v95, v96);
              v97 = *(v0 + 152);
              sub_10009D9D0();
              v98 = v97;
              v99 = sub_10009D9E0();
              v100 = sub_10009DFC0();

              if (os_log_type_enabled(v99, v100))
              {
                v101 = swift_slowAlloc();
                v102 = swift_slowAlloc();
                *v101 = 138412290;
                *(v101 + 4) = v98;
                *v102 = v98;
                v103 = v98;
                _os_log_impl(&_mh_execute_header, v99, v100, "saveShareAndReportErrors oplock error server's updated share: %@", v101, 0xCu);
                sub_100008728(v102, &qword_1000CA8E0, &qword_10009FE08);
              }

              v104 = *(v305 + 208);
              v105 = *(v305 + 192);
              v299 = *(v305 + 200);
              v300 = *(v305 + 184);
              v310 = *(v305 + 176);
              v314(*(v305 + 264), *(v305 + 216));
              swift_getKeyPath();
              swift_getKeyPath();
              *(v305 + 160) = v98;
              v315 = v98;

              sub_10009DB00();
              sub_10009DC60();
              LOWORD(v296._object) = 256;
              v106 = sub_10009DC80();
              v108 = v107;
              v110 = v109;
              v112 = v111;
              v113 = v105[6];
              v114 = sub_10009DC10();
              (*(*(v114 - 8) + 56))(v104 + v113, 1, 1, v114);
              v115 = swift_allocObject();
              swift_weakInit();
              sub_10009D890();
              v116 = v104 + v105[5];
              *v116 = v106;
              *(v116 + 8) = v108;
              *(v116 + 16) = v110 & 1;
              *(v116 + 24) = v112;
              v117 = (v104 + v105[7]);
              *v117 = sub_100039044;
              v117[1] = v115;
              v118 = objc_opt_self();
              v119 = [v118 mainBundle];
              v296._countAndFlagsBits = 0x80000001000A5CC0;
              v324._countAndFlagsBits = 0x1000000000000019;
              v324._object = 0x80000001000A5CA0;
              v329.value._countAndFlagsBits = 0;
              v329.value._object = 0;
              v120.super.isa = v119;
              v334._countAndFlagsBits = 0;
              v334._object = 0xE000000000000000;
              v121 = sub_10009D680(v324, v329, v120, v334, 0xD000000000000029, v296);
              v123 = v122;

              v124 = v104;
              v125 = [v118 mainBundle];
              v297._countAndFlagsBits = 0x80000001000A5D10;
              v325._object = 0x80000001000A5CF0;
              v325._countAndFlagsBits = 0xD000000000000011;
              v330.value._countAndFlagsBits = 0;
              v330.value._object = 0;
              v126.super.isa = v125;
              v335._countAndFlagsBits = 0;
              v335._object = 0xE000000000000000;
              v127 = sub_10009D680(v325, v330, v126, v335, 0xD00000000000002BLL, v297);
              v129 = v128;

              sub_100003714(&qword_1000CA8F8, &qword_1000A0A70);
              v130 = (*(v299 + 80) + 32) & ~*(v299 + 80);
              v131 = swift_allocObject();
              *(v131 + 16) = xmmword_10009FCE0;
              sub_10003246C(v124, v131 + v130);
              sub_10009D890();
              v132 = type metadata accessor for AlertViewModel(0);
              v133 = (v300 + v132[5]);
              *v133 = v121;
              v133[1] = v123;
              v134 = (v300 + v132[6]);
              *v134 = v127;
              v134[1] = v129;
              *(v300 + v132[7]) = v131;
              (*(*(v132 - 1) + 56))(v300, 0, 1, v132);
              swift_getKeyPath();
              swift_getKeyPath();
              sub_100008658(v300, v310, &qword_1000CA660, &qword_1000A1300);

              sub_10009DB00();
              sub_100008728(v300, &qword_1000CA660, &qword_1000A1300);
              swift_getKeyPath();
              swift_getKeyPath();
              *(v305 + 63) = 1;

              sub_10009DB00();

              v319, v135, v136, v137, v138, v139, v140, v141;

              v0 = v305;
              goto LABEL_40;
            }
          }

          else
          {
            v61, v80, v81, v82, v83, v84, v85, v86;
          }
        }

        else
        {
          v63, v63, v64, v65, v66, v67, v68, v69;
          v61, v260, v261, v262, v263, v264, v265, v266;
          v87 = v39;
        }

        sub_10009D9D0();
        v267 = sub_10009D9E0();
        v268 = sub_10009DFC0();
        if (os_log_type_enabled(v267, v268))
        {
          v269 = swift_slowAlloc();
          *v269 = 0;
          _os_log_impl(&_mh_execute_header, v267, v268, "saveShareAndReportErrors userInfo has no CKRecordChangedErrorServerRecordKey, so rethrow oplock", v269, 2u);
        }

        v270 = *(v0 + 256);
        v271 = *(v0 + 216);

        v314(v270, v271);
        sub_100005B1C();
        swift_allocError();
        *v272 = v2;
        *(v272 + 8) = v87;
        *(v272 + 16) = v316;
        *(v272 + 24) = v309;
        *(v272 + 32) = v317;
        *(v272 + 40) = 4;
        swift_willThrow();
        sub_100032380(v2, v87, v316, v309, v317, 4u);

        v87, v273, v274, v275, v276, v277, v278, v279;

        v317, v280, v281, v282, v283, v284, v285, v286;
        sub_1000323E0(v2, v87, v316, v309, v317, 4, v287, v288);
        goto LABEL_17;
      }

      v156 = v51;
      sub_1000906D4(2011);
      v158 = v157;

      if (v158)
      {
        v315 = v156;
        v320 = v39;
        sub_1000323E0(v2, v39, v316, v26, v317, 4, v159, v160);
        sub_10009D9D0();
        v161 = sub_10009D9E0();
        v162 = sub_10009DFC0();
        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          *v163 = 0;
          _os_log_impl(&_mh_execute_header, v161, v162, "saveShareAndReportErrors got rejected login error", v163, 2u);
        }

        v164 = *(v0 + 248);
        v165 = *(v0 + 216);
        v166 = *(v0 + 208);
        v168 = *(v0 + 184);
        v167 = *(v0 + 192);
        v306 = *(v0 + 200);
        v311 = *(v0 + 176);

        v314(v164, v165);
        sub_10009DC60();
        LOWORD(v296._object) = 256;
        v169 = sub_10009DC80();
        v171 = v170;
        LOBYTE(v165) = v172;
        v174 = v173;
        v175 = v167[6];
        v176 = sub_10009DC10();
        (*(*(v176 - 8) + 56))(v166 + v175, 1, 1, v176);
        v177 = swift_allocObject();
        swift_weakInit();
        sub_10009D890();
        v178 = v166 + v167[5];
        *v178 = v169;
        *(v178 + 8) = v171;
        *(v178 + 16) = v165 & 1;
        *(v178 + 24) = v174;
        v179 = (v166 + v167[7]);
        *v179 = sub_100032584;
        v179[1] = v177;
        v180 = [objc_opt_self() mainBundle];
        v296._countAndFlagsBits = 0x80000001000A5C50;
        v326._countAndFlagsBits = 0x6E67695320746F4ELL;
        v326._object = 0xED00006E49206465;
        v331.value._countAndFlagsBits = 0;
        v331.value._object = 0;
        v181.super.isa = v180;
        v336._countAndFlagsBits = 0;
        v336._object = 0xE000000000000000;
        v182 = sub_10009D680(v326, v331, v181, v336, 0xD000000000000047, v296);
        v184 = v183;

        v185 = sub_100038978();
        v186 = sub_100018F60(v185);
        v188 = v187;
        v185, v187, v189, v190, v191, v192, v193, v194;
        sub_100003714(&qword_1000CA8F8, &qword_1000A0A70);
        v195 = (*(v306 + 80) + 32) & ~*(v306 + 80);
        v196 = swift_allocObject();
        *(v196 + 16) = xmmword_10009FCE0;
        v197 = v196 + v195;
        v124 = v166;
        sub_10003246C(v166, v197);
        sub_10009D890();
        v198 = type metadata accessor for AlertViewModel(0);
        v199 = (v168 + v198[5]);
        *v199 = v182;
        v199[1] = v184;
        v200 = (v168 + v198[6]);
        *v200 = v186;
        v200[1] = v188;
        *(v168 + v198[7]) = v196;
        (*(*(v198 - 1) + 56))(v168, 0, 1, v198);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100008658(v168, v311, &qword_1000CA660, &qword_1000A1300);

        sub_10009DB00();
        sub_100008728(v168, &qword_1000CA660, &qword_1000A1300);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 62) = 1;

LABEL_39:
        sub_10009DB00();

        v320, v246, v247, v248, v249, v250, v251, v252;
LABEL_40:

        v317, v253, v254, v255, v256, v257, v258, v259;
        sub_100032528(v124);

        v50 = *(v0 + 8);
        goto LABEL_18;
      }

      v201 = v156;
      sub_1000906D4(2045);
      v203 = v202;

      if (v203)
      {
        v315 = v201;
        v320 = v39;
        sub_1000323E0(v2, v39, v316, v26, v317, 4, v209, v210);
        sub_10009D9D0();
        v211 = sub_10009D9E0();
        v212 = sub_10009DFC0();
        if (os_log_type_enabled(v211, v212))
        {
          v213 = swift_slowAlloc();
          *v213 = 0;
          _os_log_impl(&_mh_execute_header, v211, v212, "saveShareAndReportErrors got too many participants error", v213, 2u);
        }

        v214 = *(v0 + 240);
        v215 = *(v0 + 216);
        v216 = *(v0 + 208);
        v217 = *(v0 + 192);
        logb = *(v0 + 200);
        v307 = *(v0 + 184);
        v312 = *(v0 + 176);

        v314(v214, v215);
        sub_10009DC60();
        LOWORD(v296._object) = 256;
        v218 = sub_10009DC80();
        v220 = v219;
        LOBYTE(v215) = v221;
        v223 = v222;
        v224 = v217[6];
        v225 = sub_10009DC10();
        (*(*(v225 - 8) + 56))(v216 + v224, 1, 1, v225);
        v226 = swift_allocObject();
        swift_weakInit();
        sub_10009D890();
        v227 = v216 + v217[5];
        *v227 = v218;
        *(v227 + 8) = v220;
        *(v227 + 16) = v215 & 1;
        *(v227 + 24) = v223;
        v228 = (v216 + v217[7]);
        *v228 = sub_10003A8A8;
        v228[1] = v226;
        v229 = objc_opt_self();
        v230 = [v229 mainBundle];
        v296._countAndFlagsBits = 0x80000001000A5B20;
        v327._object = 0x80000001000A5B00;
        v327._countAndFlagsBits = 0x1000000000000017;
        v332.value._countAndFlagsBits = 0;
        v332.value._object = 0;
        v231.super.isa = v230;
        v337._countAndFlagsBits = 0;
        v337._object = 0xE000000000000000;
        v232 = sub_10009D680(v327, v332, v231, v337, 0xD000000000000063, v296);
        v234 = v233;

        v235 = [v229 mainBundle];
        v298._countAndFlagsBits = 0x80000001000A5BE0;
        v328._countAndFlagsBits = 0xD000000000000041;
        v328._object = 0x80000001000A5B90;
        v333.value._countAndFlagsBits = 0;
        v333.value._object = 0;
        v236.super.isa = v235;
        v338._countAndFlagsBits = 0;
        v338._object = 0xE000000000000000;
        v237 = sub_10009D680(v328, v333, v236, v338, 0xD000000000000065, v298);
        v239 = v238;

        sub_100003714(&qword_1000CA8F8, &qword_1000A0A70);
        v240 = (LOBYTE(logb[10].isa) + 32) & ~LOBYTE(logb[10].isa);
        v241 = swift_allocObject();
        *(v241 + 16) = xmmword_10009FCE0;
        v242 = v241 + v240;
        v124 = v216;
        sub_10003246C(v216, v242);
        sub_10009D890();
        v243 = type metadata accessor for AlertViewModel(0);
        v244 = (v307 + v243[5]);
        *v244 = v232;
        v244[1] = v234;
        v245 = (v307 + v243[6]);
        *v245 = v237;
        v245[1] = v239;
        *(v307 + v243[7]) = v241;
        (*(*(v243 - 1) + 56))(v307, 0, 1, v243);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_100008658(v307, v312, &qword_1000CA660, &qword_1000A1300);

        sub_10009DB00();
        sub_100008728(v307, &qword_1000CA660, &qword_1000A1300);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 61) = 1;

        goto LABEL_39;
      }

      v18 = v39;
      v39, v204, v205, v206, v207, v208, v209, v210;

      v317, v289, v290, v291, v292, v293, v294, v295;
    }

    else
    {

      v37 = v316;
    }

LABEL_16:
    sub_100005B1C();
    swift_allocError();
    *v49 = v2;
    *(v49 + 8) = v18;
    *(v49 + 16) = v37;
    *(v49 + 24) = v26;
    *(v49 + 32) = v317;
    *(v49 + 40) = v12;
    swift_willThrow();

    goto LABEL_17;
  }

LABEL_17:

  v50 = *(v0 + 8);
LABEL_18:

  return v50();
}

uint64_t sub_10002CA1C()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);
  if (v0)
  {
    v5 = sub_10002CCA8;
  }

  else
  {
    v5 = sub_10002CB58;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002CB58()
{
  v1 = v0[49];
  v2 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[46];

  v4, v6, v7, v8, v9, v10, v11, v12;
  v2, v13, v14, v15, v16, v17, v18, v19;
  sub_1000323E0(v5, v4, v3, v1, v2, 4, v20, v21);

  v22 = v0[1];

  return v22();
}

uint64_t sub_10002CCA8()
{

  sub_10009D9D0();
  v1 = sub_10009D9E0();
  v2 = sub_10009DFD0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "saveShareAndReportErrors retry failed, so rethrow batchRequestFailed", v3, 2u);
  }

  v4 = v0[50];
  v5 = v0[51];
  v6 = v0[48];
  v7 = v0[47];
  v28 = v0[46];
  v29 = v0[49];
  v8 = v0[29];
  v9 = v0[27];

  v5(v8, v9);
  swift_willThrow();

  v7, v10, v11, v12, v13, v14, v15, v16;

  v4, v17, v18, v19, v20, v21, v22, v23;
  sub_1000323E0(v28, v7, v6, v29, v4, 4, v24, v25);

  v26 = v0[1];

  return v26();
}

uint64_t sub_10002CEA8()
{
  v1 = sub_10009D9F0();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = sub_10009DF10();
  v0[6] = sub_10009DF00();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_10002CFB0;

  return sub_100026F78();
}

uint64_t sub_10002CFB0()
{
  *(*v1 + 64) = v0;

  v3 = sub_10009DED0();
  if (v0)
  {
    v4 = sub_10002D218;
  }

  else
  {
    v4 = sub_10002D10C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10002D10C()
{

  sub_10009D9D0();
  v1 = sub_10009D9E0();
  v2 = sub_10009DFF0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "saveShareAndReportErrors successfully completed saveShare()", v3, 2u);
  }

  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10002D218()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002D288(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DB00();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000264AC(6u, 0);
  }

  return result;
}

uint64_t sub_10002D348(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10009DB00();
  }

  return result;
}

uint64_t sub_10002D3C8()
{
  v1 = (*(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderURL) + *(**(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderURL) + 104));
  v2 = *v1;
  v3 = v1[1];
  *v1 = sub_100039088;
  v1[1] = v0;

  sub_1000186F4(v2, v3);

  v4 = (*(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderTitle) + *(**(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderTitle) + 104));
  v5 = *v4;
  v6 = v4[1];
  *v4 = sub_10003908C;
  v4[1] = v0;

  sub_1000186F4(v5, v6);

  v7 = (*(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__ckFolderSubitemName) + *(**(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__ckFolderSubitemName) + 104));
  v8 = *v7;
  v9 = v7[1];
  *v7 = sub_100039090;
  v7[1] = v0;

  sub_1000186F4(v8, v9);
}

uint64_t sub_10002D518()
{
  v1[20] = v0;
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v1[21] = swift_task_alloc();
  v2 = sub_10009D860();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  sub_10009DF10();
  v1[25] = sub_10009DF00();
  v4 = sub_10009DED0();
  v1[26] = v4;
  v1[27] = v3;

  return _swift_task_switch(sub_10002D644, v4, v3);
}

uint64_t sub_10002D644()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  if (*(v0 + 96) || v8 != 0xE000000000000000)
  {
    v18 = sub_10009E2E0();
    v8, v19, v20, v21, v22, v23, v24, v25;
    if ((v18 & 1) == 0)
    {

      v10, v39, v40, v41, v42, v43, v44, v45;
      goto LABEL_15;
    }
  }

  else
  {
    0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  }

  if (v9 || v10 != 0xE000000000000000)
  {
    v26 = sub_10009E2E0();
    v10, v27, v28, v29, v30, v31, v32, v33;
    if ((v26 & 1) == 0)
    {

      goto LABEL_15;
    }
  }

  else
  {
    0xE000000000000000, v11, v12, v13, v14, v15, v16, v17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v0 + 384) & 0xFE) == 8)
  {
    v34 = *(v0 + 176);
    v35 = *(v0 + 184);
    v36 = *(v0 + 168);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if ((*(v35 + 48))(v36, 1, v34) == 1)
    {
      v37 = *(v0 + 168);

      sub_100008728(v37, &qword_1000CA250, &qword_10009FDF8);
LABEL_15:

      v46 = *(v0 + 8);

      return v46();
    }

    (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
    v48 = swift_task_alloc();
    *(v0 + 280) = v48;
    *v48 = v0;
    v48[1] = sub_10002DDD8;
    v49 = *(v0 + 192);

    return sub_100013164(v0 + 16, v49);
  }

  else
  {
    v38 = sub_10000B284();
    *(v0 + 224) = v38;
    v50 = v38;
    v51 = swift_task_alloc();
    *(v0 + 232) = v51;
    *v51 = v0;
    v51[1] = sub_10002DA60;

    return sub_100006030(v50);
  }
}

uint64_t sub_10002DA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 240) = v4;

  if (v4)
  {
    v11 = *(v10 + 208);
    v12 = *(v10 + 216);
    v13 = sub_10002DD34;
  }

  else
  {

    *(v10 + 248) = a4;
    *(v10 + 256) = a3;
    *(v10 + 264) = a2;
    *(v10 + 272) = a1;
    v11 = *(v10 + 208);
    v12 = *(v10 + 216);
    v13 = sub_10002DBB0;
  }

  return _swift_task_switch(v13, v11, v12);
}

uint64_t sub_10002DBB0()
{

  v8 = v0[33];
  v9 = v0[31];
  if (v8)
  {
    if (v9)
    {
      v10 = v0[34];
      v11 = v0[32];
      swift_getKeyPath();
      swift_getKeyPath();
      v0[16] = v10;
      v0[17] = v8;
      v0[18] = v11;
      v0[19] = v9;

      sub_10009DB00();

      v12 = v0[1];
      goto LABEL_7;
    }

    v13 = v0[33];
  }

  else
  {
    v13 = v0[31];
  }

  v13, v1, v2, v3, v4, v5, v6, v7;
  sub_100005B1C();
  swift_allocError();
  *v14 = 0xD000000000000016;
  *(v14 + 8) = 0x80000001000A6710;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 16) = 0;
  *(v14 + 40) = 6;
  swift_willThrow();

  v12 = v0[1];
LABEL_7:

  return v12();
}

uint64_t sub_10002DD34()
{
  *(v0 + 328) = *(v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_10002E148;

  return sub_1000138E8(v0 + 56);
}

uint64_t sub_10002DDD8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 32);
  *(v2 + 18) = *(v2 + 1);
  *(v2 + 19) = v3;
  v2[40] = v1[6];

  v4 = v1[27];
  v5 = v1[26];

  return _swift_task_switch(sub_10002DF14, v5, v4);
}

uint64_t sub_10002DF14()
{
  v1 = v0[40];

  if (v1)
  {
    v2 = v0[39];
    v3 = v0[40];
    v4 = v0[37];
    v6 = v0[23];
    v5 = v0[24];
    v7 = v0[22];
    sub_100005B1C();
    swift_allocError();
    *v8 = 0xD000000000000016;
    *(v8 + 8) = 0x80000001000A6710;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 16) = v3;
    *(v8 + 40) = 6;
    swift_willThrow();
    v4, v9, v10, v11, v12, v13, v14, v15;
    v2, v16, v17, v18, v19, v20, v21, v22;
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
    v30 = v0[39];
    v31 = v0[37];
    if (v31)
    {
      if (v30)
      {
        v32 = v0[38];
        v33 = v0[36];
        swift_getKeyPath();
        swift_getKeyPath();
        v0[16] = v33;
        v0[17] = v31;
        v0[18] = v32;
        v0[19] = v30;

        sub_10009DB00();

        v34 = v0[1];
        goto LABEL_10;
      }

      v35 = v0[37];
    }

    else
    {
      v35 = v0[39];
    }

    v35, v23, v24, v25, v26, v27, v28, v29;
    sub_100005B1C();
    swift_allocError();
    *v36 = 0xD000000000000016;
    *(v36 + 8) = 0x80000001000A6710;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0;
    *(v36 + 16) = 0;
    *(v36 + 40) = 6;
    swift_willThrow();
  }

  v34 = v0[1];
LABEL_10:

  return v34();
}

uint64_t sub_10002E148()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 43) = *(v2 + 7);
  *(v2 + 45) = *(v2 + 9);
  v2[47] = v1[11];

  v3 = v1[27];
  v4 = v1[26];

  return _swift_task_switch(sub_10002E294, v4, v3);
}

uint64_t sub_10002E294()
{
  v1 = v0[47];

  if (v1)
  {
    v2 = v0[46];
    v3 = v0[47];
    v4 = v0[44];
    sub_100005B1C();
    swift_allocError();
    *v5 = 0xD000000000000016;
    *(v5 + 8) = 0x80000001000A6710;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 16) = v3;
    *(v5 + 40) = 6;
    swift_willThrow();
    v4, v6, v7, v8, v9, v10, v11, v12;
    v2, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {

    v27 = v0[46];
    v28 = v0[44];
    if (v28)
    {
      if (v27)
      {
        v29 = v0[45];
        v30 = v0[43];
        swift_getKeyPath();
        swift_getKeyPath();
        v0[16] = v30;
        v0[17] = v28;
        v0[18] = v29;
        v0[19] = v27;

        sub_10009DB00();

        v31 = v0[1];
        goto LABEL_10;
      }

      v32 = v0[44];
    }

    else
    {
      v32 = v0[46];
    }

    v32, v20, v21, v22, v23, v24, v25, v26;
    sub_100005B1C();
    swift_allocError();
    *v33 = 0xD000000000000016;
    *(v33 + 8) = 0x80000001000A6710;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0;
    *(v33 + 16) = 0;
    *(v33 + 40) = 6;
    swift_willThrow();
  }

  v31 = v0[1];
LABEL_10:

  return v31();
}

uint64_t sub_10002E4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v4[10] = swift_task_alloc();
  sub_10009DF10();
  v4[11] = sub_10009DF00();
  v6 = sub_10009DED0();
  v4[12] = v6;
  v4[13] = v5;

  return _swift_task_switch(sub_10002E574, v6, v5);
}

uint64_t sub_10002E574()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_10002E658;
  v2 = *(v0 + 80);

  return sub_100028ADC(v2);
}

uint64_t sub_10002E658()
{
  v2 = *v1;
  (*v1)[15] = v0;

  sub_100008728(v2[10], &qword_1000CA250, &qword_10009FDF8);
  v3 = v2[13];
  v4 = v2[12];
  if (v0)
  {
    v5 = sub_10002E9EC;
  }

  else
  {
    v5 = sub_10002E7BC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002E7BC()
{
  v1 = *(v0 + 72);

  if (!*(v1 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_lastServicesData) || (v2 = *(v0 + 120), swift_unknownObjectRetain(), sub_10003A228(), swift_unknownObjectRelease(), !v2))
  {
    sub_1000264AC(5u, 0);
LABEL_11:

    v27 = *(v0 + 8);
    goto LABEL_12;
  }

  *(v0 + 64) = v2;
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {

    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);
    if (v9 == 7)
    {
      if (!v7)
      {
        __break(1u);
        return result;
      }

      v10 = v7;

      sub_1000264AC(1u, v7);
      sub_1000323E0(v5, v4, v7, v6, v8, 7, v11, v12);

      v4, v13, v14, v15, v16, v17, v18, v19;
      v8, v20, v21, v22, v23, v24, v25, v26;
    }

    else
    {
      v28 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_1000264AC(2u, v28);
      sub_1000323E0(v5, v4, v7, v6, v8, v9, v29, v30);
    }

    goto LABEL_11;
  }

  v27 = *(v0 + 8);
LABEL_12:

  return v27();
}

uint64_t sub_10002E9EC()
{

  *(v0 + 64) = *(v0 + 120);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    if (v7 == 7)
    {
      if (!v5)
      {
        __break(1u);
        return result;
      }

      v8 = v5;

      sub_1000264AC(1u, v5);
      sub_1000323E0(v3, v2, v5, v4, v6, 7, v9, v10);

      v2, v11, v12, v13, v14, v15, v16, v17;
      v6, v18, v19, v20, v21, v22, v23, v24;
    }

    else
    {
      v25 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_1000264AC(2u, v25);
      sub_1000323E0(v3, v2, v5, v4, v6, v7, v26, v27);
    }
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10002EBD4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 57) = a3;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  *(v3 + 88) = swift_task_alloc();
  v4 = sub_10009D9F0();
  *(v3 + 96) = v4;
  *(v3 + 104) = *(v4 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  sub_10009DF10();
  *(v3 + 152) = sub_10009DF00();
  v6 = sub_10009DED0();
  *(v3 + 160) = v6;
  *(v3 + 168) = v5;

  return _swift_task_switch(sub_10002ED34, v6, v5);
}

void sub_10002ED34()
{
  v2 = v0[9];
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v0[22] = BRCloudDocsErrorDomain;
    v0[23] = v2;
    v3 = swift_task_alloc();
    v0[24] = v3;
    *v3 = v0;
    v3[1] = sub_10002EDE4;

    sub_1000250A0();
  }
}

uint64_t sub_10002EDE4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_10002F074;
  }

  else
  {
    v5 = sub_10002EF20;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002EF20()
{

  sub_10009D9D0();
  v1 = sub_10009D9E0();
  v2 = sub_10009DFF0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[23];
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "fetchShare completed with this many retries left: %ld", v4, 0xCu);
  }

  v5 = v0[18];
  v6 = v0[12];
  v7 = v0[13];

  (*(v7 + 8))(v5, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10002F074()
{
  *(v0 + 64) = *(v0 + 200);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  v1 = swift_dynamicCast();
  if (v1)
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    *(v0 + 208) = v3;
    *(v0 + 216) = v2;
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    *(v0 + 224) = v4;
    *(v0 + 232) = v5;
    v6 = *(v0 + 48);
    *(v0 + 240) = v6;
    v7 = *(v0 + 56);
    v123 = v5;
    if (v7 != 5)
    {

      sub_10009D9D0();
      v30 = sub_10009D9E0();
      v31 = sub_10009DFD0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 184);
        v33 = swift_slowAlloc();
        *v33 = 134217984;
        *(v33 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v30, v31, "tryToFetchShare error: throwing unexpected error--retries that were left: %ld", v33, 0xCu);
      }

      v35 = *(v0 + 104);
      v34 = *(v0 + 112);
      v36 = *(v0 + 96);

      (*(v35 + 8))(v34, v36);
      sub_100005B1C();
      swift_allocError();
      *v37 = 0xD00000000000003ELL;
      *(v37 + 8) = 0x80000001000A6760;
      *(v37 + 16) = xmmword_1000A0480;
      *(v37 + 32) = 0x80000001000A67A0;
      *(v37 + 40) = 11;
      swift_willThrow();
      v40 = v3;
      v41 = v2;
      v42 = v4;
      v43 = v123;
      v44 = v6;
      v45 = v7;
      goto LABEL_21;
    }

    v122 = v3;
    if (v4)
    {

      v8 = v4;

      v9 = v8;
      v10 = [v9 domain];
      v11 = sub_10009DD90();
      v13 = v12;

      v15 = sub_10009DD90();
      v21 = v14;
      if (v11 == v15 && v13 == v14)
      {
        v14, v14, v15, v16, v17, v18, v19, v20;
        v13, v22, v23, v24, v25, v26, v27, v28;
        v29 = v122;
      }

      else
      {
        v46 = sub_10009E2E0();
        v21, v47, v48, v49, v50, v51, v52, v53;
        v13, v54, v55, v56, v57, v58, v59, v60;
        v29 = v122;
        if ((v46 & 1) == 0)
        {

          goto LABEL_17;
        }
      }

      v61 = [v9 code];

      if (v61 != 7)
      {

        goto LABEL_17;
      }

      v62 = *(v0 + 88);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v63 = sub_10009D860();
      if ((*(*(v63 - 8) + 48))(v62, 1, v63) == 1)
      {
        v64 = *(v0 + 88);

        sub_100008728(v64, &qword_1000CA250, &qword_10009FDF8);
        v29 = v122;
LABEL_17:
        sub_10009D9D0();
        v65 = v9;
        v66 = sub_10009D9E0();
        v67 = sub_10009DFD0();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = *(v0 + 184);
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v69 = 134218242;
          *(v69 + 4) = v68;
          *(v69 + 12) = 2112;
          *(v69 + 14) = v65;
          *v70 = v4;
          v71 = v65;
          _os_log_impl(&_mh_execute_header, v66, v67, "tryToFetchShare failed to fetch share so throwing--retries that were left: %ld, error: %@", v69, 0x16u);
          sub_100008728(v70, &qword_1000CA8E0, &qword_10009FE08);
          v29 = v122;
        }

        v72 = *(v0 + 120);
        v73 = *(v0 + 96);
        v74 = *(v0 + 104);

        (*(v74 + 8))(v72, v73);
        sub_100005B1C();
        swift_allocError();
        *v75 = v29;
        *(v75 + 8) = v2;
        *(v75 + 16) = v4;
        *(v75 + 24) = v123;
        *(v75 + 32) = v6;
        *(v75 + 40) = 5;
        swift_willThrow();
        sub_100032380(v29, v2, v4, v123, v6, 5u);

        v2, v76, v77, v78, v79, v80, v81, v82;
        v6, v83, v84, v85, v86, v87, v88, v89;
        v40 = v29;
        v41 = v2;
        v42 = v4;
        v43 = v123;
LABEL_20:
        v44 = v6;
        v45 = 5;
LABEL_21:
        sub_1000323E0(v40, v41, v42, v43, v44, v45, v38, v39);
        goto LABEL_22;
      }

      v92 = *(v0 + 57);
      sub_100008728(*(v0 + 88), &qword_1000CA250, &qword_10009FDF8);
      if ((v92 & 1) == 0)
      {

        sub_10009D9D0();
        v101 = sub_10009D9E0();
        v102 = sub_10009DFD0();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&_mh_execute_header, v101, v102, "tryToFetchShare not synced to iCloud AND not shared so throw notInICloud error", v103, 2u);
        }

        v104 = *(v0 + 136);
        v105 = *(v0 + 96);
        v106 = *(v0 + 104);

        (*(v106 + 8))(v104, v105);
        sub_100005B1C();
        swift_allocError();
        *v107 = v122;
        *(v107 + 8) = v2;
        *(v107 + 16) = v4;
        *(v107 + 24) = v5;
        *(v107 + 32) = v6;
        *(v107 + 40) = 5;
        swift_willThrow();
        sub_100032380(v122, v2, v4, v5, v6, 5u);

        v2, v108, v109, v110, v111, v112, v113, v114;
        v6, v115, v116, v117, v118, v119, v120, v121;
        v40 = v122;
        v41 = v2;
        v42 = v4;
        v43 = v5;
        goto LABEL_20;
      }

      sub_10009D9D0();
      v93 = sub_10009D9E0();
      v94 = sub_10009DFF0();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = *(v0 + 184);
        v96 = swift_slowAlloc();
        *v96 = 134217984;
        *(v96 + 4) = v95;
        _os_log_impl(&_mh_execute_header, v93, v94, "About to retry tryToFetchShare post-share when unsynced after 1 second--retries left including this one: %ld", v96, 0xCu);
      }

      v97 = *(v0 + 128);
      v98 = *(v0 + 96);
      v99 = *(v0 + 104);

      (*(v99 + 8))(v97, v98);
      v100 = swift_task_alloc();
      *(v0 + 248) = v100;
      *v100 = v0;
      v100[1] = sub_10002F8CC;
      v1 = 1000000000;
    }

    else
    {
      __break(1u);
    }

    return static Task<>.sleep(nanoseconds:)(v1);
  }

LABEL_22:

  v90 = *(v0 + 8);

  return v90();
}

uint64_t sub_10002F8CC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_10003A8C0;
  }

  else
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_10002F9F0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10002F9F0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, uint64_t a8)
{
  v9 = v8[29];
  v10 = v8[30];
  v12 = v8[27];
  v11 = v8[28];
  v13 = v8[26];
  v14 = v8[23];
  v10, a2, a3, a4, a5, a6, a7, a8;

  v12, v15, v16, v17, v18, v19, v20, v21;
  sub_1000323E0(v13, v12, v11, v9, v10, 5, v22, v23);

  if (v14 == 1)
  {

    v27 = v8[1];

    return v27();
  }

  else
  {
    v25 = v8[23];
    if (v25 < 2)
    {
      __break(1u);
    }

    else
    {
      v8[23] = v25 - 1;
      v26 = swift_task_alloc();
      v8[24] = v26;
      *v26 = v8;
      v26[1] = sub_10002EDE4;

      return sub_1000250A0();
    }
  }

  return result;
}

uint64_t shareStatus(url:)()
{
  v0 = sub_10009D860();
  __chkstk_darwin(v0);
  v1 = sub_10009D9F0();
  v57[0] = *(v1 - 8);
  v57[1] = v1;
  __chkstk_darwin(v1);
  v57[2] = v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10009D6F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003714(&qword_1000CA498, &qword_1000A04B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A0490;
  *(inited + 32) = NSURLUbiquitousItemIsSharedKey;
  *(inited + 40) = NSURLUbiquitousSharedItemCurrentUserRoleKey;
  v8 = NSURLUbiquitousItemIsSharedKey;
  v9 = NSURLUbiquitousSharedItemCurrentUserRoleKey;
  sub_1000315FC(inited);
  v11 = v10;
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  sub_10009D7C0();
  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = sub_10009D6C0();
  v20 = sub_10009D6D0();
  if (!v20)
  {
    v20 = NSURLUbiquitousSharedItemRoleParticipant;
  }

  v21 = v20;
  v22 = sub_10009DD90();
  v24 = v23;
  v26 = sub_10009DD90();
  v32 = v25;
  if (v22 == v26 && v24 == v25)
  {
    v24, v25, v26, v27, v28, v29, v30, v31;
    v32, v33, v34, v35, v36, v37, v38, v39;
    v40 = 256;
  }

  else
  {
    v41 = sub_10009E2E0();
    v24, v42, v43, v44, v45, v46, v47, v48;
    v32, v49, v50, v51, v52, v53, v54, v55;
    if (v41)
    {
      v40 = 256;
    }

    else
    {
      v40 = 0;
    }
  }

  (*(v4 + 8))(v6, v3);
  return v40 | v19 & 1u;
}

unint64_t sub_1000300B8(uint64_t a1, _TtC13SPIHelper_iOS9SPIHelper *a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (1)
  {
    v9 = sub_10009DE60();
    v17 = v10;
    if (v9 == a1 && v10 == a2)
    {
      break;
    }

    v18 = sub_10009E2E0();
    v17, v19, v20, v21, v22, v23, v24, v25;
    if (v18)
    {
      return v8;
    }

    v8 = sub_10009DE00();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  v10, v10, v11, v12, v13, v14, v15, v16;
  return v8;
}

uint64_t sub_1000301D0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v4;
  return result;
}

uint64_t sub_100030250(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

uint64_t sub_1000302F4@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a4 = v6;
  return result;
}

uint64_t sub_100030370(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

uint64_t sub_1000303E0(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();
}

uint64_t sub_10003045C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100003714(&qword_1000CA660, &qword_1000A1300);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_100008658(a1, &v10 - v7, &qword_1000CA660, &qword_1000A1300);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008658(v8, v6, &qword_1000CA660, &qword_1000A1300);

  sub_10009DB00();
  return sub_100008728(v8, &qword_1000CA660, &qword_1000A1300);
}

uint64_t sub_1000305B4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000306AC;

  return v6(a1);
}

uint64_t sub_1000306AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1000307A4(uint64_t a1, _TtC13SPIHelper_iOS9SPIHelper *a2, uint64_t *a3)
{

  v6 = sub_100030870(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v18[0] = a1;
    v18[1] = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13;
  ObjectType = swift_getObjectType();
  v18[0] = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000066A8(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  sub_10000670C(v18);
  return v14;
}

unint64_t sub_100030870(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10003097C(a5, a6);
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
    result = sub_10009E200();
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

void *sub_10003097C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000309C8(a1, a2);
  sub_100030AF8(&off_1000C17A8);
  return v3;
}

void *sub_1000309C8(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100030BE4(v5, 0);
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

  result = sub_10009E200();
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
        v10 = sub_10009DE20();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100030BE4(v10, 0);
        result = sub_10009E1D0();
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

void sub_100030AF8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *&(*v1)->requestingProcessBundleIdentifier[8];
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= (v3[1].super.isa >> 1))
  {
    if (*(result + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_100030C58(isUniquelyReferenced_nonNull_native, v26, 1, v3, v11, v12, v13, v14);
  if (!*(result + 16))
  {
LABEL_13:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = *&v3->requestingProcessBundleIdentifier[8];
  if (((v3[1].super.isa >> 1) - v15) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[1].requestingProcessBundleIdentifier[v15], (result + 32), v2);
  result, v16, v17, v18, v19, v20, v21, v22;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *&v3->requestingProcessBundleIdentifier[8];
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *&v3->requestingProcessBundleIdentifier[8] = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_100030BE4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100003714(&qword_1000CAD98, &qword_1000A1298);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_TtC13SPIHelper_iOS9SPIHelper *sub_100030C58(_TtC13SPIHelper_iOS9SPIHelper *result, int64_t a2, void *a3, _TtC13SPIHelper_iOS9SPIHelper *a4, void *a5, int64_t a6, int64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    isa = a4[1].super.isa;
    v11 = isa >> 1;
    if ((isa >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = isa & 0xFFFFFFFFFFFFFFFELL;
      if ((isa & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *&a4->requestingProcessBundleIdentifier[8];
  if (v11 <= v12)
  {
    v13 = *&a4->requestingProcessBundleIdentifier[8];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100003714(&qword_1000CAD98, &qword_1000A1298);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *&v14->requestingProcessBundleIdentifier[8] = v12;
    v14[1].super.isa = (2 * v15 - 64);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  requestingProcessBundleIdentifier = v14[1].requestingProcessBundleIdentifier;
  v17 = a4[1].requestingProcessBundleIdentifier;
  if (v9)
  {
    if (v14 != a4 || requestingProcessBundleIdentifier >= &v17[v12])
    {
      memmove(requestingProcessBundleIdentifier, v17, v12);
    }

    *&a4->requestingProcessBundleIdentifier[8] = 0;
  }

  else
  {
    memcpy(requestingProcessBundleIdentifier, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

unint64_t sub_100030D4C(uint64_t a1)
{
  v1 = a1;
  sub_10009E380();
  sub_100094E04(v1);
  v3 = v2;
  sub_10009DDE0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  v11 = sub_10009E3A0();

  return sub_100030E4C(v1, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t sub_100030DD4(uint64_t a1, uint64_t a2)
{
  sub_10009E380();
  sub_10009DDE0();
  v4 = sub_10009E3A0();

  return sub_1000312D8(a1, a2, v4);
}

unint64_t sub_100030E4C(char a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, uint64_t a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v12 = ~v9;
    while (1)
    {
      v13 = 0xE600000000000000;
      v14 = 0x7265646C6F66;
      switch(*(*(v8 + 48) + v10))
      {
        case 1:
          v13 = 0xE800000000000000;
          v14 = 0x746E656D75636F64;
          break;
        case 2:
          v14 = 0x6873646165727073;
          v15 = 7628133;
          goto LABEL_17;
        case 3:
          v14 = 0x61746E6573657270;
          v13 = 0xEC0000006E6F6974;
          break;
        case 4:
          v13 = 0xE500000000000000;
          v14 = 0x6567616D69;
          break;
        case 5:
          v13 = 0xE500000000000000;
          v14 = 0x6569766F6DLL;
          break;
        case 6:
          v13 = 0xE300000000000000;
          v14 = 6710384;
          break;
        case 7:
          v13 = 0xE400000000000000;
          v14 = 1702129518;
          break;
        case 8:
          v14 = 0x6C6F467365746F6ELL;
          v15 = 7497060;
LABEL_17:
          v13 = (v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000);
          break;
        case 9:
          v13 = 0xE400000000000000;
          v14 = 1953720684;
          break;
        case 0xA:
          v13 = 0xE800000000000000;
          v14 = 0x70756F7247626174;
          break;
        case 0xB:
          v14 = 0x6D726F6665657266;
          v13 = 0xED00006472616F42;
          break;
        case 0xC:
          v14 = 0x43636972656E6567;
          v13 = 0xEF74694B64756F6CLL;
          break;
        case 0xD:
          v13 = 0xE500000000000000;
          v14 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v16 = 0xE600000000000000;
      v17 = 0x7265646C6F66;
      switch(a1)
      {
        case 1:
          v16 = 0xE800000000000000;
          v17 = 0x746E656D75636F64;
          if (v14 == 0x746E656D75636F64)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 2:
          v17 = 0x6873646165727073;
          v18 = 7628133;
          goto LABEL_47;
        case 3:
          v17 = 0x61746E6573657270;
          v16 = 0xEC0000006E6F6974;
          if (v14 != 0x61746E6573657270)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 4:
          v16 = 0xE500000000000000;
          v17 = 0x6567616D69;
          if (v14 != 0x6567616D69)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 5:
          v16 = 0xE500000000000000;
          v17 = 0x6569766F6DLL;
          if (v14 != 0x6569766F6DLL)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 6:
          v16 = 0xE300000000000000;
          v17 = 6710384;
          if (v14 != 6710384)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 7:
          v16 = 0xE400000000000000;
          v17 = 1702129518;
          if (v14 != 1702129518)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 8:
          v17 = 0x6C6F467365746F6ELL;
          v18 = 7497060;
LABEL_47:
          v16 = (v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000);
          if (v14 != v17)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 9:
          v16 = 0xE400000000000000;
          v17 = 1953720684;
          if (v14 != 1953720684)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 10:
          v16 = 0xE800000000000000;
          v17 = 0x70756F7247626174;
          goto LABEL_41;
        case 11:
          v17 = 0x6D726F6665657266;
          v16 = 0xED00006472616F42;
          if (v14 != 0x6D726F6665657266)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 12:
          v17 = 0x43636972656E6567;
          v16 = 0xEF74694B64756F6CLL;
          if (v14 != 0x43636972656E6567)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 13:
          v16 = 0xE500000000000000;
          v17 = 0x726568746FLL;
          if (v14 != 0x726568746FLL)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        default:
LABEL_41:
          if (v14 != v17)
          {
            goto LABEL_43;
          }

LABEL_42:
          if (v13 == v16)
          {
            v13, a2, v17, a4, a5, a6, a7, a8;
            v16, v34, v35, v36, v37, v38, v39, v40;
            return v10;
          }

LABEL_43:
          v19 = sub_10009E2E0();
          v13, v20, v21, v22, v23, v24, v25, v26;
          v16, v27, v28, v29, v30, v31, v32, v33;
          if (v19)
          {
            return v10;
          }

          v10 = (v10 + 1) & v12;
          if (((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            return v10;
          }

          break;
      }
    }
  }

  return v10;
}

unint64_t sub_1000312D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10009E2E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100031390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_100003714(&qword_1000CAD50, &qword_1000A0EF8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = &v15 - v10;
  sub_100008658(a1, &v15 - v10, &qword_1000CAD50, &qword_1000A0EF8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  sub_1000086C0(v11, v13 + v12, &qword_1000CAD50, &qword_1000A0EF8);
  sub_100003714(&qword_1000CAC78, &qword_1000A0E98);
  swift_allocObject();

  result = sub_10009DAB0();
  *a4 = result;
  return result;
}

unint64_t sub_100031504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003714(&qword_1000CA908, &qword_1000A0B08);
    v3 = sub_10009E290();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_100030D4C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_1000315FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003714(&unk_1000CADA0, &unk_1000A12A0);
    v3 = sub_10009E1C0();
    v4 = 0;
    v5 = v3 + 56;
    v64 = v1;
    v65 = a1 + 32;
    v6 = v1;
    do
    {
      v21 = *(v65 + 8 * v4);
      sub_10009DD90();
      v23 = v22;
      sub_10009E380();
      v66 = v21;
      sub_10009DDE0();
      v24 = sub_10009E3A0();
      v23, v25, v26, v27, v28, v29, v30, v31;
      v32 = -1 << *(v3 + 32);
      v33 = v24 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v5 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) == 0)
      {
        goto LABEL_15;
      }

      v37 = ~v32;
      do
      {
        v38 = sub_10009DD90();
        v40 = v39;
        v42 = sub_10009DD90();
        v43 = v38;
        v44 = v41;
        if (v43 == v42 && v40 == v41)
        {

          v40, v7, v8, v9, v10, v11, v12, v13;
          v44, v14, v15, v16, v17, v18, v19, v20;
LABEL_4:
          v6 = v64;
          goto LABEL_5;
        }

        v46 = sub_10009E2E0();
        v40, v47, v48, v49, v50, v51, v52, v53;
        v44, v54, v55, v56, v57, v58, v59, v60;
        if (v46)
        {

          goto LABEL_4;
        }

        v33 = (v33 + 1) & v37;
        v34 = v33 >> 6;
        v35 = *(v5 + 8 * (v33 >> 6));
        v36 = 1 << v33;
      }

      while (((1 << v33) & v35) != 0);
      v6 = v64;
LABEL_15:
      *(v5 + 8 * v34) = v36 | v35;
      *(*(v3 + 48) + 8 * v33) = v66;
      v61 = *(v3 + 16);
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v63;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

uint64_t type metadata accessor for SharingModel(uint64_t a1)
{
  result = qword_1000CA600;
  if (!qword_1000CA600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031844(uint64_t a1)
{
  sub_100031F60(319, &qword_1000CA610, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_100031F60(319, &qword_1000CA618, &type metadata for ExecutionMode);
    if (v2 <= 0x3F)
    {
      sub_100031F60(319, &qword_1000CA620, &type metadata for SharingType);
      if (v3 <= 0x3F)
      {
        sub_100031F60(319, &qword_1000CA628, &type metadata for SharingStage);
        if (v4 <= 0x3F)
        {
          sub_100032004(319, &qword_1000CA630, &qword_1000CA638, &qword_1000A0530);
          if (v5 <= 0x3F)
          {
            sub_100031F60(319, &qword_1000CA640, &type metadata for CreateOrLoadStage);
            if (v6 <= 0x3F)
            {
              sub_100031F60(319, &qword_1000CA648, &type metadata for AddAddressesStage);
              if (v7 <= 0x3F)
              {
                sub_100031F60(319, &qword_1000CA650, &type metadata for SaveStage);
                if (v8 <= 0x3F)
                {
                  sub_100032004(319, &qword_1000CA658, &qword_1000CA660, &qword_1000A1300);
                  if (v9 <= 0x3F)
                  {
                    sub_100032004(319, &qword_1000CA668, &qword_1000CA670, &qword_1000A0538);
                    if (v10 <= 0x3F)
                    {
                      sub_100031F60(319, &qword_1000CA678, &type metadata for ShareSaveStatus);
                      if (v11 <= 0x3F)
                      {
                        sub_100031F60(319, &qword_1000CA680, &type metadata for SharingOptions);
                        if (v12 <= 0x3F)
                        {
                          sub_100032004(319, &qword_1000CA688, &qword_1000CA690, &qword_1000A0558);
                          if (v13 <= 0x3F)
                          {
                            sub_100032004(319, &qword_1000CA698, &qword_1000CA250, &qword_10009FDF8);
                            if (v14 <= 0x3F)
                            {
                              sub_100032004(319, &qword_1000CA0F0, &qword_1000CA6A0, &qword_10009FD50);
                              if (v15 <= 0x3F)
                              {
                                sub_100031FAC(319, &qword_1000CA6A8, &qword_1000CA6B0, UIImage_ptr);
                                if (v16 <= 0x3F)
                                {
                                  sub_100032004(319, &qword_1000CA6B8, &qword_1000CA6C0, &qword_1000A0578);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_100031F60(319, &qword_1000CA6C8, &type metadata for String);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_100031FAC(319, &qword_1000CA6D0, &qword_1000CA6D8, CKContainerID_ptr);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_100032004(319, &qword_1000CA6E0, &unk_1000CA6E8, &qword_1000A0580);
                                        if (v20 <= 0x3F)
                                        {
                                          swift_updateClassMetadata2();
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100031F60(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_10009DB10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100031FAC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1000037C4(255, a3, a4);
    v5 = sub_10009DB10();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100032004(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000594C(a3, a4);
    v5 = sub_10009DB10();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000320BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000093DC;

  return sub_100013D8C(a1, v4);
}

uint64_t sub_1000322CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000093DC;

  return sub_10002CEA8();
}

void sub_100032380(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0xDu)
  {

    v7 = a3;
  }
}

void sub_1000323E0(uint64_t a1, _TtC13SPIHelper_iOS9SPIHelper *a2, void *a3, void *a4, _TtC13SPIHelper_iOS9SPIHelper *a5, int64_t a6, int64_t a7, uint64_t a8)
{
  if (a6 <= 0xDu)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;

    a5, v11, v12, v13, v14, v15, v16, v17;
  }
}

uint64_t sub_100032434()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003246C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertViewModelButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032528(uint64_t a1)
{
  v2 = type metadata accessor for AlertViewModelButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000325A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100003714(a2, a3);
    v5 = sub_10009E290();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100030DD4(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_10003269C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003714(&qword_1000CA910, &qword_1000A0B60);
    v3 = sub_10009E290();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008658(v4, &v13, &unk_1000CA918, &qword_1000A1E30);
      v5 = v13;
      v6 = v14;
      result = sub_100030DD4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100039068(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000327CC(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_10009E260();
    if (result)
    {
LABEL_3:
      sub_100003714(&qword_1000CAD38, &qword_1000A0EC0);
      result = sub_10009E1C0();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_10009E260();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = sub_10009E1F0();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_10009DA90();
    sub_1000391A4(&qword_1000CAD40, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    result = sub_10009DD20();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1000391A4(&qword_1000CAD48, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while (1)
      {
        result = sub_10009DD40();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

char *sub_100032A60(uint64_t a1)
{
  v2 = v1;
  v491 = a1;
  v414 = *v1;
  v435 = sub_100003714(&qword_1000CA928, &qword_1000A0C48);
  v434 = *(v435 - 8);
  __chkstk_darwin(v435);
  v433 = &v305 - v3;
  v438 = sub_100003714(&qword_1000CA930, &qword_1000A0C50);
  v437 = *(v438 - 8);
  __chkstk_darwin(v438);
  v436 = &v305 - v4;
  v441 = sub_100003714(&qword_1000CA938, &qword_1000A0C58);
  v440 = *(v441 - 8);
  __chkstk_darwin(v441);
  v439 = &v305 - v5;
  v428 = sub_100003714(&qword_1000CA940, &qword_1000A0C60);
  v427 = *(v428 - 8);
  __chkstk_darwin(v428);
  v425 = &v305 - v6;
  v429 = sub_100003714(&qword_1000CA948, &qword_1000A0C68);
  __chkstk_darwin(v429);
  v426 = &v305 - v7;
  v465 = sub_100003714(&qword_1000CA950, &qword_1000A0C70);
  v430 = *(v465 - 8);
  v8 = __chkstk_darwin(v465);
  v431 = &v305 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v432 = &v305 - v10;
  v419 = sub_100003714(&qword_1000CA958, &qword_1000A0C78);
  __chkstk_darwin(v419);
  v417 = &v305 - v11;
  v422 = sub_100003714(&qword_1000CA960, &qword_1000A0C80);
  v420 = *(v422 - 8);
  __chkstk_darwin(v422);
  v418 = &v305 - v12;
  v424 = sub_100003714(&qword_1000CA968, &qword_1000A0C88);
  v423 = *(v424 - 8);
  __chkstk_darwin(v424);
  v421 = &v305 - v13;
  v416 = sub_100003714(&qword_1000CA970, &qword_1000A0C90);
  v415 = *(v416 - 8);
  v14 = __chkstk_darwin(v416);
  v412 = &v305 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v413 = &v305 - v16;
  v409 = sub_100003714(&qword_1000CA978, &qword_1000A0C98);
  v408 = *(v409 - 8);
  __chkstk_darwin(v409);
  v406 = &v305 - v17;
  v402 = sub_100003714(&qword_1000CA980, &qword_1000A0CA0);
  v400 = *(v402 - 8);
  __chkstk_darwin(v402);
  v398 = &v305 - v18;
  v401 = sub_100003714(&qword_1000CA988, &qword_1000A0CA8);
  v19 = __chkstk_darwin(v401);
  v399 = &v305 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v397 = &v305 - v21;
  v405 = sub_100003714(&qword_1000CA990, &qword_1000A0CB0);
  v404 = *(v405 - 8);
  __chkstk_darwin(v405);
  v403 = &v305 - v22;
  v411 = sub_100003714(&qword_1000CA998, &qword_1000A0CB8);
  v410 = *(v411 - 8);
  __chkstk_darwin(v411);
  v407 = &v305 - v23;
  v396 = sub_100003714(&qword_1000CA9A0, &qword_1000A0CC0);
  v395 = *(v396 - 8);
  __chkstk_darwin(v396);
  v394 = &v305 - v24;
  v393 = sub_100003714(&qword_1000CA9A8, &qword_1000A0CC8);
  v392 = *(v393 - 8);
  __chkstk_darwin(v393);
  v391 = &v305 - v25;
  v390 = sub_100003714(&qword_1000CA9B0, &qword_1000A0CD0);
  v389 = *(v390 - 8);
  __chkstk_darwin(v390);
  v388 = &v305 - v26;
  v387 = sub_100003714(&qword_1000CA9B8, &qword_1000A0CD8);
  v386 = *(v387 - 8);
  __chkstk_darwin(v387);
  v385 = &v305 - v27;
  v384 = sub_100003714(&qword_1000CA9C0, &qword_1000A0CE0);
  v383 = *(v384 - 8);
  __chkstk_darwin(v384);
  v382 = &v305 - v28;
  v375 = sub_100003714(&qword_1000CA9C8, &qword_1000A0CE8);
  v374 = *(v375 - 8);
  __chkstk_darwin(v375);
  v373 = &v305 - v29;
  v370 = sub_100003714(&qword_1000CA9D0, &qword_1000A0CF0);
  v369 = *(v370 - 8);
  __chkstk_darwin(v370);
  v368 = &v305 - v30;
  v376 = sub_100003714(&qword_1000CA9D8, &qword_1000A0CF8);
  __chkstk_darwin(v376);
  v377 = &v305 - v31;
  v380 = sub_100003714(&qword_1000CA9E0, &qword_1000A0D00);
  v379 = *(v380 - 8);
  __chkstk_darwin(v380);
  v378 = &v305 - v32;
  v454 = sub_100003714(&qword_1000CA9E8, &qword_1000A0D08);
  v372 = *(v454 - 8);
  v33 = __chkstk_darwin(v454);
  v367 = &v305 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v371 = &v305 - v35;
  v456 = sub_100003714(&qword_1000CA9F0, &qword_1000A0D10);
  v381 = *(v456 - 8);
  __chkstk_darwin(v456);
  v455 = &v305 - v36;
  v362 = sub_100003714(&qword_1000CA9F8, &qword_1000A0D18);
  v361 = *(v362 - 8);
  __chkstk_darwin(v362);
  v360 = &v305 - v37;
  v365 = sub_100003714(&qword_1000CAA00, &qword_1000A0D20);
  v364 = *(v365 - 8);
  __chkstk_darwin(v365);
  v363 = &v305 - v38;
  v39 = sub_100003714(&qword_1000CAA08, &qword_1000A0D28);
  __chkstk_darwin(v39 - 8);
  v490 = &v305 - v40;
  v470 = sub_100003714(&qword_1000CAA10, &qword_1000A0D30);
  v486 = *(v470 - 8);
  __chkstk_darwin(v470);
  v366 = &v305 - v41;
  v359 = sub_100003714(&qword_1000CAA18, &qword_1000A0D38);
  v356 = *(v359 - 1);
  __chkstk_darwin(v359);
  v358 = &v305 - v42;
  v447 = sub_100003714(&qword_1000CAA20, &qword_1000A0D40);
  v357 = *(v447 - 8);
  __chkstk_darwin(v447);
  v355 = &v305 - v43;
  v473 = sub_100003714(&qword_1000CAA28, &qword_1000A0D48);
  v487 = *(v473 - 8);
  v44 = __chkstk_darwin(v473);
  v466 = &v305 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v471 = &v305 - v46;
  v462 = sub_100003714(&qword_1000CAA30, &qword_1000A0D50);
  v475 = *(v462 - 8);
  __chkstk_darwin(v462);
  v461 = &v305 - v47;
  v464 = sub_100003714(&qword_1000CAA38, &qword_1000A0D58);
  __chkstk_darwin(v464);
  v476 = &v305 - v48;
  v352 = sub_100003714(&qword_1000CAA40, &qword_1000A0D60);
  v351 = *(v352 - 1);
  __chkstk_darwin(v352);
  v350 = &v305 - v49;
  v449 = sub_100003714(&qword_1000CAA48, &qword_1000A0D68);
  v50 = __chkstk_darwin(v449);
  v446 = &v305 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v482 = (&v305 - v52);
  v459 = sub_100003714(&qword_1000CAA50, &qword_1000A0D70);
  v474 = *(v459 - 8);
  __chkstk_darwin(v459);
  v458 = &v305 - v53;
  v460 = sub_100003714(&qword_1000CAA58, &qword_1000A0D78);
  __chkstk_darwin(v460);
  v488 = (&v305 - v54);
  v443 = sub_100003714(&qword_1000CAA60, &qword_1000A0D80);
  v442 = *(v443 - 1);
  __chkstk_darwin(v443);
  v353 = &v305 - v55;
  v448 = sub_100003714(&qword_1000CAA68, &qword_1000A0D88);
  v445 = *(v448 - 1);
  __chkstk_darwin(v448);
  v444 = &v305 - v56;
  v467 = sub_100003714(&qword_1000CAA70, &qword_1000A0D90);
  v349 = *(v467 - 1);
  __chkstk_darwin(v467);
  v348 = &v305 - v57;
  v347 = sub_100003714(&qword_1000CAA78, &qword_1000A0D98);
  v346 = *(v347 - 8);
  __chkstk_darwin(v347);
  v343 = &v305 - v58;
  v345 = sub_100003714(&qword_1000CAA80, &qword_1000A18C0);
  v344 = *(v345 - 8);
  __chkstk_darwin(v345);
  v342 = &v305 - v59;
  v457 = sub_100003714(&qword_1000CAA88, &qword_1000A0DA0);
  v341 = *(v457 - 8);
  __chkstk_darwin(v457);
  v340 = &v305 - v60;
  v463 = sub_100003714(&unk_1000CAA90, &qword_1000A0DA8);
  v339 = *(v463 - 8);
  __chkstk_darwin(v463);
  v338 = &v305 - v61;
  v484 = sub_100003714(&qword_1000CA230, &qword_10009FDB0);
  v354 = *(v484 - 8);
  __chkstk_darwin(v484);
  v337 = &v305 - v62;
  v472 = sub_100003714(&qword_1000CAAA0, &qword_1000A0DB0);
  v336 = *(v472 - 8);
  __chkstk_darwin(v472);
  v335 = &v305 - v63;
  v334 = sub_100003714(&qword_1000CAAA8, &qword_1000A0DB8);
  v333 = *(v334 - 8);
  __chkstk_darwin(v334);
  v332 = &v305 - v64;
  v477 = sub_100003714(&qword_1000CAAB0, &qword_1000A0DC0);
  v331 = *(v477 - 8);
  __chkstk_darwin(v477);
  v330 = &v305 - v65;
  v329 = sub_100003714(&qword_1000CAAB8, &qword_1000A0DC8);
  v327 = *(v329 - 8);
  __chkstk_darwin(v329);
  v326 = &v305 - v66;
  v451 = sub_100003714(&qword_1000CAAC0, &qword_1000A0DD0);
  v325 = *(v451 - 8);
  __chkstk_darwin(v451);
  v324 = &v305 - v67;
  v481 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v68 = __chkstk_darwin(v481);
  v323 = &v305 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __chkstk_darwin(v68);
  v478 = (&v305 - v71);
  __chkstk_darwin(v70);
  v328 = &v305 - v72;
  v322 = sub_100003714(&qword_1000CAAC8, &unk_1000A1870);
  v321 = *(v322 - 8);
  __chkstk_darwin(v322);
  v320 = &v305 - v73;
  v319 = sub_100003714(&qword_1000CA660, &qword_1000A1300);
  v74 = __chkstk_darwin(v319);
  v318 = &v305 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v317 = &v305 - v76;
  v453 = sub_100003714(&qword_1000CAAD0, &qword_1000A0DD8);
  v316 = *(v453 - 8);
  __chkstk_darwin(v453);
  v315 = &v305 - v77;
  v452 = sub_100003714(&qword_1000CAAD8, &qword_1000A0DE0);
  v314 = *(v452 - 8);
  __chkstk_darwin(v452);
  v313 = &v305 - v78;
  v450 = sub_100003714(&qword_1000CAAE0, &qword_1000A0DE8);
  v312 = *(v450 - 8);
  __chkstk_darwin(v450);
  v311 = &v305 - v79;
  v310 = sub_100003714(&qword_1000CAAE8, &qword_1000A0DF0);
  v309 = *(v310 - 8);
  __chkstk_darwin(v310);
  v308 = &v305 - v80;
  v307 = sub_100003714(&qword_1000CAAF0, &qword_1000A0DF8);
  v306 = *(v307 - 8);
  __chkstk_darwin(v307);
  v305 = &v305 - v81;
  v485 = sub_100003714(&qword_1000CAAF8, &qword_1000A0E00);
  v82 = *(v485 - 8);
  __chkstk_darwin(v485);
  v84 = &v305 - v83;
  v479 = sub_100003714(&qword_1000CAB00, &qword_1000A0E08);
  v85 = *(v479 - 8);
  __chkstk_darwin(v479);
  v87 = &v305 - v86;
  v88 = sub_100003714(&qword_1000CAB08, &qword_1000A0E10);
  v89 = *(v88 - 8);
  __chkstk_darwin(v88);
  v91 = &v305 - v90;
  if (_swiftEmptyArrayStorage >> 62 && sub_10009E260())
  {
    v92 = sub_1000327CC(_swiftEmptyArrayStorage);
  }

  else
  {
    v92 = &_swiftEmptySetSingleton;
  }

  v2[4] = v92;
  v468 = v2 + 4;
  v2[6] = 0;
  swift_unknownObjectWeakInit();
  v2[7] = swift_getKeyPath();
  *(v2 + 64) = 0;
  v93 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isDelegateInitialized;
  LOBYTE(v492) = 0;
  sub_10009DAC0();
  v489 = *(v89 + 32);
  v489(v2 + v93, v91, v88);
  v94 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__executionMode;
  LOBYTE(v492) = 0;
  sub_10009DAC0();
  (*(v85 + 32))(v2 + v94, v87, v479);
  v95 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharingType;
  LOBYTE(v492) = 8;
  sub_10009DAC0();
  (*(v82 + 32))(v2 + v95, v84, v485);
  v96 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharingStage;
  LOBYTE(v492) = 0;
  v97 = v305;
  sub_10009DAC0();
  (*(v306 + 32))(v2 + v96, v97, v307);
  v98 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__addedAddresses;
  v492 = _swiftEmptyArrayStorage;
  sub_100003714(&qword_1000CA638, &qword_1000A0530);
  v99 = v308;
  sub_10009DAC0();
  (*(v309 + 32))(v2 + v98, v99, v310);
  v100 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__createOrLoadStage;
  LOBYTE(v492) = 0;
  v101 = v311;
  sub_10009DAC0();
  (*(v312 + 32))(v2 + v100, v101, v450);
  v102 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__addingAddressesStage;
  LOBYTE(v492) = 0;
  v103 = v313;
  sub_10009DAC0();
  (*(v314 + 32))(v2 + v102, v103, v452);
  v104 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__savingStage;
  LOBYTE(v492) = 2;
  v105 = v315;
  sub_10009DAC0();
  (*(v316 + 32))(v2 + v104, v105, v453);
  v106 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__alertNowShowing;
  v107 = type metadata accessor for AlertViewModel(0);
  v108 = v317;
  (*(*(v107 - 8) + 56))(v317, 1, 1, v107);
  sub_100008658(v108, v318, &qword_1000CA660, &qword_1000A1300);
  v109 = v320;
  sub_10009DAC0();
  sub_100008728(v108, &qword_1000CA660, &qword_1000A1300);
  (*(v321 + 32))(v2 + v106, v109, v322);
  v110 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isShowingAlert;
  LOBYTE(v492) = 0;
  v483 = v91;
  sub_10009DAC0();
  v480 = v88;
  v111 = v489;
  v489(v2 + v110, v91, v88);
  v112 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isFolderShare;
  LOBYTE(v492) = 0;
  sub_10009DAC0();
  v111(v2 + v112, v91, v88);
  v469 = (v89 + 32);
  v113 = v111;
  v319 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderURL;
  v321 = sub_10009D860();
  v114 = *(v321 - 8);
  v320 = *(v114 + 56);
  v322 = v114 + 56;
  v115 = v328;
  (v320)(v328, 1, 1, v321);
  sub_100003714(&qword_1000CAB10, &qword_1000A0E48);
  v116 = swift_allocObject();
  v117 = (v116 + *(*v116 + 104));
  *v117 = 0;
  v117[1] = 0;
  v118 = v478;
  sub_100008658(v115, v478, &qword_1000CA250, &qword_10009FDF8);
  swift_beginAccess();
  sub_100008658(v118, v323, &qword_1000CA250, &qword_10009FDF8);
  sub_10009DAC0();
  sub_100008728(v118, &qword_1000CA250, &qword_10009FDF8);
  swift_endAccess();
  v119 = v115;
  sub_100008728(v115, &qword_1000CA250, &qword_10009FDF8);
  *(v2 + v319) = v116;
  v120 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isFolderSubshare;
  LOBYTE(v492) = 0;
  v121 = v483;
  sub_10009DAC0();
  v122 = v121;
  v123 = v480;
  v113(v2 + v120, v122, v480);
  v124 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__rootFolderTitle;
  sub_100003714(&qword_1000CAB18, &qword_1000A0E50);
  v125 = swift_allocObject();
  v126 = (v125 + *(*v125 + 104));
  *v126 = 0;
  v126[1] = 0;
  swift_beginAccess();
  v496 = 0;
  v497 = 0;
  v127 = sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
  sub_10009DAC0();
  swift_endAccess();
  *(v2 + v124) = v125;
  v128 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__ckFolderSubitemName;
  v129 = swift_allocObject();
  v130 = (v129 + *(*v129 + 104));
  *v130 = 0;
  v130[1] = 0;
  swift_beginAccess();
  v496 = 0;
  v497 = 0;
  v323 = v127;
  sub_10009DAC0();
  swift_endAccess();
  *(v2 + v128) = v129;
  v131 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__folderSharingStage;
  LOBYTE(v492) = 4;
  sub_100003714(&qword_1000CA670, &qword_1000A0538);
  v132 = v324;
  sub_10009DAC0();
  (*(v325 + 32))(v2 + v131, v132, v451);
  v133 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__shareSaveStatus;
  LOBYTE(v492) = 0;
  v134 = v326;
  sub_10009DAC0();
  (*(v327 + 32))(v2 + v133, v134, v329);
  v135 = (v2 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_lastServicesData);
  *v135 = 0;
  v135[1] = 0;
  v136 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharingOptionsAllowedFromSPI;
  v492 = 15;
  v137 = v330;
  sub_10009DAC0();
  (*(v331 + 32))(v2 + v136, v137, v477);
  v138 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__yourNameAndEmail;
  v492 = 0;
  v493 = 0xE000000000000000;
  v494 = 0;
  v495 = 0xE000000000000000;
  sub_100003714(&qword_1000CA690, &qword_1000A0558);
  v139 = v332;
  sub_10009DAC0();
  (*(v333 + 32))(v2 + v138, v139, v334);
  v140 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharedFileOrFolderURL;
  (v320)(v119, 1, 1, v321);
  sub_100008658(v119, v478, &qword_1000CA250, &qword_10009FDF8);
  v141 = v335;
  sub_10009DAC0();
  sub_100008728(v119, &qword_1000CA250, &qword_10009FDF8);
  (*(v336 + 32))(v2 + v140, v141, v472);
  v142 = v2;
  *(v2 + OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_shouldStopAccessingSharedFileOrFolderURL) = 0;
  v143 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__itemUTI;
  v492 = 0;
  v493 = 0;
  v144 = v337;
  sub_10009DAC0();
  v481 = *(v354 + 32);
  v481(v2 + v143, v144, v484);
  v145 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__isShareRoot;
  LOBYTE(v492) = 1;
  v146 = v483;
  sub_10009DAC0();
  v489(&v142[v145], v146, v123);
  v147 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__thumbnail;
  v492 = [objc_allocWithZone(UIImage) init];
  v354 = sub_1000037C4(0, &qword_1000CA6B0, UIImage_ptr);
  v148 = v338;
  sub_10009DAC0();
  (*(v339 + 32))(&v142[v147], v148, v463);
  v149 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__thumbnailFromCloudKitSPI;
  v492 = 0;
  sub_100003714(&qword_1000CA6C0, &qword_1000A0578);
  v150 = v340;
  sub_10009DAC0();
  v151 = *(v341 + 32);
  v152 = v457;
  v151(&v142[v149], v150, v457);
  v153 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__thumbnailFromDocumentSPI;
  v492 = 0;
  sub_10009DAC0();
  v151(&v142[v153], v150, v152);
  v154 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__itemTitle;
  v492 = 0;
  v493 = 0xE000000000000000;
  v155 = v342;
  sub_10009DAC0();
  v156 = *(v344 + 4);
  v157 = &v142[v154];
  v158 = v142;
  v159 = v345;
  v156(v157, v155, v345);
  v160 = v156;
  v161 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sourceAppBundleID;
  v492 = 0;
  v493 = 0;
  sub_10009DAC0();
  v481(&v158[v161], v144, v484);
  v162 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sectionTitleForAuxiliaryToggles;
  v492 = 0;
  v493 = 0xE000000000000000;
  sub_10009DAC0();
  v160(&v158[v162], v155, v159);
  v163 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__primaryCheckboxTitle;
  v492 = 0;
  v493 = 0xE000000000000000;
  sub_10009DAC0();
  v160(&v158[v163], v155, v159);
  v478 = v160;
  v164 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__secondaryCheckboxTitle;
  v492 = 0;
  v493 = 0xE000000000000000;
  sub_10009DAC0();
  v160(&v158[v164], v155, v159);
  v165 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__primaryCheckboxState;
  LOBYTE(v492) = 0;
  v166 = v483;
  sub_10009DAC0();
  v167 = v480;
  v168 = v489;
  v489(&v158[v165], v166, v480);
  v169 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__secondaryCheckboxState;
  LOBYTE(v492) = 0;
  sub_10009DAC0();
  v168(&v158[v169], v166, v167);
  v170 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__ckContainerIdentifier;
  v492 = [objc_allocWithZone(CKContainerID) init];
  sub_1000037C4(0, &qword_1000CA6D8, CKContainerID_ptr);
  v171 = v343;
  sub_10009DAC0();
  v346[4](&v158[v170], v171, v347);
  v172 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__helpAnchor;
  v492 = 0;
  v493 = 0xE000000000000000;
  sub_10009DAC0();
  v478(&v158[v172], v155, v159);
  v173 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__participantDetails;
  v492 = sub_1000325A0(_swiftEmptyArrayStorage, &qword_1000CAD80, &qword_1000A11D0);
  sub_100003714(&unk_1000CA6E8, &qword_1000A0580);
  v174 = v348;
  sub_10009DAC0();
  (*(v349 + 32))(&v158[v173], v174, v467);
  v175 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_networkMonitor;
  type metadata accessor for NetworkMonitor(0);
  swift_allocObject();
  *&v158[v175] = sub_100046C10(0);
  *&v158[OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel_ckMetadata] = 0;
  v176 = v491;
  *(v158 + 2) = v491;
  *(v158 + 3) = *(v176 + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_ckShareModel);
  v177 = v158;
  swift_weakAssign();
  v349 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharedFileOrFolderURL;
  swift_beginAccess();

  v178 = v458;
  sub_10009DAD0();
  swift_endAccess();
  v348 = sub_100039B10(&qword_1000CAB20, &qword_1000CAA50, &qword_1000A0D70, &protocol conformance descriptor for Published<A>.Publisher);
  v347 = sub_1000390F0();
  v179 = v459;
  sub_10009DB60();
  v180 = *(v474 + 8);
  v474 += 8;
  v346 = v180;
  (v180)(v178, v179);
  swift_beginAccess();
  v181 = v350;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CAB38, &qword_1000CAA40, &qword_1000A0D60, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1000391EC();
  v182 = v352;
  sub_10009DB60();
  v183 = *(v351 + 8);
  v183(v181, v182);
  swift_beginAccess();
  sub_10009DAD0();
  swift_endAccess();
  sub_10009DB60();
  v183(v181, v182);
  swift_beginAccess();
  v184 = v461;
  sub_10009DAD0();
  swift_endAccess();
  v489 = &protocol conformance descriptor for Published<A>.Publisher;
  v345 = sub_100039B10(&qword_1000CAB48, &qword_1000CAA30, &qword_1000A0D50, &protocol conformance descriptor for Published<A>.Publisher);
  v185 = v462;
  sub_10009DB60();
  v186 = *(v475 + 8);
  v475 += 8;
  v344 = v186;
  v186(v184, v185);
  v350 = sub_100039B10(&qword_1000CAB50, &qword_1000CAA58, &qword_1000A0D78, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_100039B10(&qword_1000CAB58, &qword_1000CAA48, &qword_1000A0D68, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v469 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  v351 = sub_100039B10(&qword_1000CAB60, &qword_1000CAA38, &qword_1000A0D58, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v187 = v353;
  sub_10009DA40();
  v188 = swift_allocObject();
  *(v188 + 16) = sub_100039268;
  *(v188 + 24) = v177;
  v352 = &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>;
  sub_100039B10(&qword_1000CAB68, &qword_1000CAA60, &qword_1000A0D80, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);

  v189 = v444;
  v190 = v443;
  sub_10009DB30();

  (*(v442 + 8))(v187, v190);
  v191 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__sharingType;
  swift_beginAccess();
  v192 = v471;
  sub_10009DAD0();
  swift_endAccess();
  v449 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_100039B10(&qword_1000CAB70, &qword_1000CAA68, &qword_1000A0D88, &protocol conformance descriptor for Publishers.Map<A, B>);
  v193 = v448;
  sub_10009DB80();
  (*(v445 + 8))(v189, v193);
  v194 = v487;
  v195 = v473;
  (*(v487 + 16))(v466, v192, v473);
  v446 = v191;
  swift_beginAccess();
  sub_10009DAE0();
  swift_endAccess();
  v196 = *(v194 + 8);
  v487 = v194 + 8;
  v448 = v196;
  (v196)(v192, v195);
  v442 = OBJC_IVAR____TtC13SPIHelper_iOS12SharingModel__executionMode;
  swift_beginAccess();
  v197 = v366;
  sub_10009DAD0();
  swift_endAccess();
  v445 = sub_100039B10(&qword_1000CAB78, &qword_1000CAA10, &qword_1000A0D30, &protocol conformance descriptor for Published<A>.Publisher);
  v444 = sub_1000392B0();
  v198 = v358;
  v199 = v470;
  sub_10009DB60();
  v200 = *(v486 + 8);
  v486 += 8;
  v443 = v200;
  (v200)(v197, v199);
  v478 = objc_opt_self();
  v201 = [v478 mainRunLoop];
  v492 = v201;
  v483 = sub_10009E130();
  v202 = *(v483 - 8);
  v482 = *(v202 + 56);
  v484 = v202 + 56;
  v203 = v490;
  v482(v490, 1, 1, v483);
  v466 = sub_1000037C4(0, &qword_1000CAB88, NSRunLoop_ptr);
  sub_100039B10(&qword_1000CAB90, &qword_1000CAA18, &qword_1000A0D38, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v481 = sub_100039304(&qword_1000CAB98, &qword_1000CAB88, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
  v204 = v355;
  v205 = v359;
  sub_10009DB50();
  sub_100008728(v203, &qword_1000CAA08, &qword_1000A0D28);

  (*(v356 + 8))(v198, v205);
  v467 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100039B10(&qword_1000CABA0, &qword_1000CAA20, &qword_1000A0D40, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v206 = v447;
  sub_10009DB70();

  (*(v357 + 8))(v204, v206);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  sub_10009DAD0();
  swift_endAccess();
  v207 = v470;
  sub_10009DB60();
  (v443)(v197, v207);
  swift_beginAccess();

  v447 = sub_100003714(&qword_1000CABA8, &qword_1000A0E58);
  sub_10009DAD0();
  swift_endAccess();

  v357 = sub_100039B10(&qword_1000CABB0, &qword_1000CA9F0, &qword_1000A0D10, v489);
  v208 = v360;
  sub_10009DA00();
  v209 = swift_allocObject();
  swift_weakInit();
  v210 = swift_allocObject();
  *(v210 + 16) = sub_100039350;
  *(v210 + 24) = v209;
  v359 = &protocol conformance descriptor for Publishers.CombineLatest<A, B>;
  sub_100039B10(&qword_1000CABB8, &qword_1000CA9F8, &qword_1000A0D18, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v211 = v363;
  v212 = v362;
  sub_10009DB30();

  (*(v361 + 8))(v208, v212);
  swift_beginAccess();

  v213 = sub_100003714(&qword_1000CABC0, &qword_1000A0E60);
  v214 = v371;
  v362 = v213;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CABC8, &qword_1000CAA00, &qword_1000A0D20, v449);
  v215 = v365;
  sub_10009DB80();
  (*(v364 + 8))(v211, v215);
  v216 = v372;
  v217 = v454;
  (*(v372 + 16))(v367, v214, v454);
  swift_beginAccess();
  sub_10009DAE0();
  swift_endAccess();

  v372 = *(v216 + 8);
  (v372)(v214, v217);
  swift_beginAccess();
  sub_10009DAD0();
  swift_endAccess();
  v218 = v377;
  v219 = v470;
  sub_10009DB60();
  (v443)(v197, v219);
  swift_beginAccess();
  v220 = v471;
  sub_10009DAD0();
  swift_endAccess();
  v221 = v489;
  v486 = sub_100039B10(&qword_1000CABD0, &qword_1000CAA28, &qword_1000A0D48, v489);
  sub_100039390();
  v222 = v473;
  sub_10009DB60();
  (v448)(v220, v222);
  swift_beginAccess();

  sub_10009DAD0();
  swift_endAccess();

  swift_beginAccess();
  sub_100003714(&qword_1000CABE0, &qword_1000A0E68);
  v223 = v368;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CABE8, &qword_1000CA9D0, &qword_1000A0CF0, v221);
  sub_1000393E4();
  v224 = v370;
  sub_10009DB60();
  (*(v369 + 8))(v223, v224);
  swift_beginAccess();
  sub_100003714(&qword_1000CABF8, &qword_1000A0E70);
  v225 = v373;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CAC00, &qword_1000CA9C8, &qword_1000A0CE8, v221);
  sub_100039438();
  v226 = v375;
  sub_10009DB60();
  (*(v374 + 8))(v225, v226);
  swift_beginAccess();

  sub_10009DAD0();
  swift_endAccess();

  sub_100039B10(&qword_1000CAC10, &qword_1000CA9E8, &qword_1000A0D08, v221);
  sub_10003948C();
  v227 = v454;
  sub_10009DB60();
  (v372)(v214, v227);
  v228 = [v478 mainRunLoop];
  v492 = v228;
  v229 = v490;
  v482(v490, 1, 1, v483);
  sub_100039B10(&qword_1000CAC20, &qword_1000CA9D8, &qword_1000A0CF8, &protocol conformance descriptor for Publishers.CSCombineLatest6<A, B, C, D, E, F>);
  v230 = v378;
  sub_10009DB50();
  sub_100008728(v229, &qword_1000CAA08, &qword_1000A0D28);

  sub_100008728(v218, &qword_1000CA9D8, &qword_1000A0CF8);
  v231 = swift_allocObject();
  swift_weakInit();
  v232 = swift_allocObject();
  v233 = v491;
  *(v232 + 16) = v231;
  *(v232 + 24) = v233;
  v234 = swift_allocObject();
  *(v234 + 16) = sub_100039520;
  *(v234 + 24) = v232;
  v235 = v467;
  sub_100039B10(&qword_1000CAC28, &qword_1000CA9E0, &qword_1000A0D00, v467);

  v236 = v380;
  sub_10009DB70();

  (*(v379 + 8))(v230, v236);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();

  v237 = v455;
  sub_10009DAD0();
  swift_endAccess();

  v238 = [v478 mainRunLoop];
  v492 = v238;
  v239 = v490;
  v482(v490, 1, 1, v483);
  v240 = v382;
  v241 = v456;
  sub_10009DB50();
  sub_100008728(v239, &qword_1000CAA08, &qword_1000A0D28);

  (*(v381 + 8))(v237, v241);
  swift_allocObject();
  swift_weakInit();
  sub_100039B10(&qword_1000CAC30, &qword_1000CA9C0, &qword_1000A0CE0, v235);
  v242 = v384;
  sub_10009DB70();

  (*(v383 + 8))(v240, v242);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  v243 = v471;
  sub_10009DAD0();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  v244 = v473;
  sub_10009DB70();

  (v448)(v243, v244);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  v245 = v385;
  sub_10009DAD0();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  v246 = v489;
  sub_100039B10(&qword_1000CAC38, &qword_1000CA9B8, &qword_1000A0CD8, v489);
  v247 = v387;
  sub_10009DB70();

  (*(v386 + 8))(v245, v247);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  v248 = v388;
  sub_10009DAD0();
  swift_endAccess();
  v249 = swift_allocObject();
  swift_weakInit();
  v250 = swift_allocObject();
  *(v250 + 16) = sub_100039580;
  *(v250 + 24) = v249;
  sub_100039B10(&qword_1000CAC40, &qword_1000CA9B0, &qword_1000A0CD0, v246);
  v251 = v390;
  sub_10009DB70();

  (*(v389 + 8))(v248, v251);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  v252 = v391;
  sub_10009DAD0();
  swift_endAccess();
  v253 = swift_allocObject();
  swift_weakInit();
  v254 = swift_allocObject();
  *(v254 + 16) = sub_1000395B4;
  *(v254 + 24) = v253;
  sub_100039B10(&qword_1000CAC48, &qword_1000CA9A8, &qword_1000A0CC8, v246);
  v255 = v393;
  sub_10009DB70();

  (*(v392 + 8))(v252, v255);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  v256 = v394;
  sub_10009DAD0();
  swift_endAccess();
  v257 = swift_allocObject();
  swift_weakInit();
  v258 = swift_allocObject();
  *(v258 + 16) = sub_1000395E8;
  *(v258 + 24) = v257;
  sub_100039B10(&qword_1000CAC50, &qword_1000CA9A0, &qword_1000A0CC0, v246);
  v259 = v396;
  sub_10009DB70();

  (*(v395 + 8))(v256, v259);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  v260 = v458;
  sub_10009DAD0();
  swift_endAccess();
  v261 = v459;
  sub_10009DB60();
  (v346)(v260, v261);
  swift_beginAccess();
  v262 = v461;
  sub_10009DAD0();
  swift_endAccess();
  v263 = v462;
  sub_10009DB60();
  v344(v262, v263);
  swift_beginAccess();
  v264 = v398;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CAC58, &qword_1000CA980, &qword_1000A0CA0, v246);
  sub_10003961C();
  v265 = v402;
  sub_10009DB60();
  v266 = *(v400 + 8);
  v266(v264, v265);
  swift_beginAccess();
  sub_10009DAD0();
  swift_endAccess();
  sub_10009DB60();
  v266(v264, v265);
  sub_100039B10(&qword_1000CAC70, &qword_1000CA988, &qword_1000A0CA8, v469);
  v267 = v403;
  sub_10009DA40();
  v268 = swift_allocObject();
  swift_weakInit();
  v269 = swift_allocObject();
  *(v269 + 16) = v268;
  *(v269 + 24) = vdupq_n_s64(0x4060000000000000uLL);
  *(v269 + 40) = v414;
  v270 = swift_allocObject();
  *(v270 + 16) = &unk_1000A0E80;
  *(v270 + 24) = v269;
  v271 = swift_allocObject();
  *(v271 + 16) = &unk_1000A0E90;
  *(v271 + 24) = v270;

  sub_10009DA70();
  sub_100003714(&qword_1000CAC78, &qword_1000A0E98);
  sub_100039B10(&qword_1000CAC80, &qword_1000CA990, &qword_1000A0CB0, v352);
  sub_100039B10(&qword_1000CAC88, &qword_1000CAC78, &qword_1000A0E98, &protocol conformance descriptor for Future<A, B>);
  v272 = v406;
  v273 = v405;
  v274 = v267;
  sub_10009DB40();

  sub_100039B10(&qword_1000CAC90, &qword_1000CA978, &qword_1000A0C98, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v275 = v409;
  v276 = sub_10009DB20();

  (*(v408 + 8))(v272, v275);
  (*(v404 + 8))(v274, v273);
  v492 = v276;
  v277 = [v478 mainRunLoop];
  v496 = v277;
  v278 = v490;
  v482(v490, 1, 1, v483);
  sub_100003714(&qword_1000CAC98, &qword_1000A0EA0);
  sub_100039B10(&qword_1000CACA0, &qword_1000CAC98, &qword_1000A0EA0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v279 = v407;
  sub_10009DB50();
  sub_100008728(v278, &qword_1000CAA08, &qword_1000A0D28);

  swift_beginAccess();
  v280 = v413;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CACA8, &qword_1000CA998, &qword_1000A0CB8, v467);
  v281 = v411;
  sub_10009DB80();
  (*(v410 + 8))(v279, v281);
  v282 = v415;
  v283 = v416;
  (*(v415 + 16))(v412, v280, v416);
  swift_beginAccess();
  sub_10009DAE0();
  swift_endAccess();
  (*(v282 + 8))(v280, v283);
  swift_beginAccess();
  v284 = v432;
  sub_10009DAD0();
  swift_endAccess();
  v285 = v489;
  sub_100039B10(&qword_1000CACB0, &qword_1000CA950, &qword_1000A0C70, v489);
  sub_1000399B0();
  v286 = v465;
  sub_10009DB60();
  v287 = v430;
  v488 = *(v430 + 8);
  v488(v284, v286);
  swift_beginAccess();

  sub_100003714(&qword_1000CACC0, &qword_1000A0EA8);
  v288 = v425;
  sub_10009DAD0();
  swift_endAccess();

  sub_100039B10(&qword_1000CACC8, &qword_1000CA940, &qword_1000A0C60, v285);
  sub_100039A04();
  v289 = v428;
  sub_10009DB60();
  (*(v427 + 8))(v288, v289);
  v290 = v469;
  sub_100039B10(&qword_1000CACF0, &qword_1000CA958, &qword_1000A0C78, v469);
  sub_100039B10(&qword_1000CACF8, &qword_1000CA948, &qword_1000A0C68, v290);
  v291 = v418;
  sub_10009DA00();
  sub_100039B10(&qword_1000CAD00, &qword_1000CA960, &qword_1000A0C80, v359);
  v292 = v421;
  v293 = v422;
  sub_10009DB30();
  (*(v420 + 8))(v291, v293);
  swift_beginAccess();
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CAD08, &qword_1000CA968, &qword_1000A0C88, v449);
  v294 = v424;
  sub_10009DB80();
  (*(v423 + 8))(v292, v294);
  v295 = v465;
  (*(v287 + 16))(v431, v284, v465);
  swift_beginAccess();
  sub_10009DAE0();
  swift_endAccess();
  v488(v284, v295);
  swift_beginAccess();

  sub_100003714(&qword_1000CAD10, &qword_1000A0EB8);
  v296 = v433;
  sub_10009DAD0();
  swift_endAccess();

  sub_100039B10(&qword_1000CAD18, &qword_1000CA928, &qword_1000A0C48, v489);
  sub_100039AB4();
  v297 = v436;
  v298 = v435;
  sub_10009DB60();
  (*(v434 + 8))(v296, v298);
  v299 = [v478 mainRunLoop];
  v492 = v299;
  v300 = v490;
  v482(v490, 1, 1, v483);
  sub_100039B10(&qword_1000CAD28, &qword_1000CA930, &qword_1000A0C50, v469);
  v301 = v439;
  v302 = v438;
  sub_10009DB50();
  sub_100008728(v300, &qword_1000CAA08, &qword_1000A0D28);

  (*(v437 + 8))(v297, v302);
  swift_allocObject();
  swift_weakInit();

  sub_100039B10(&qword_1000CAD30, &qword_1000CA938, &qword_1000A0C58, v467);
  v303 = v441;
  sub_10009DB70();

  (*(v440 + 8))(v301, v303);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  return v177;
}

uint64_t sub_1000382A0(uint64_t a1, double a2, double a3, double a4)
{
  *(v4 + 176) = a3;
  *(v4 + 184) = a4;
  *(v4 + 168) = a2;
  *(v4 + 160) = a1;
  v5 = sub_10009D9F0();
  *(v4 + 192) = v5;
  *(v4 + 200) = *(v5 - 8);
  *(v4 + 208) = swift_task_alloc();
  sub_10009DF10();
  *(v4 + 216) = sub_10009DF00();
  v7 = sub_10009DED0();
  *(v4 + 224) = v7;
  *(v4 + 232) = v6;

  return _swift_task_switch(sub_10003839C, v7, v6);
}

uint64_t sub_10003839C(uint64_t a1)
{
  v3 = *(v1 + 176);
  v2 = *(v1 + 184);
  v4 = *(v1 + 168);
  *(v1 + 264) = sub_10009D830();
  v5 = objc_allocWithZone(QLThumbnailGenerationRequest);
  sub_10009D800(v6);
  v8 = v7;
  v9 = [v5 initWithFileAtURL:v7 size:-1 scale:v4 representationTypes:{v3, v2}];
  *(v1 + 240) = v9;

  v10 = [objc_opt_self() sharedGenerator];
  *(v1 + 248) = v10;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_100038558;
  v11 = swift_continuation_init();
  *(v1 + 136) = sub_100003714(&unk_1000CAD60, &qword_1000A0F60);
  *(v1 + 80) = _NSConcreteStackBlock;
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_10003A8C8;
  *(v1 + 104) = &unk_1000C2920;
  *(v1 + 112) = v11;
  [v10 generateBestRepresentationForRequest:v9 completionHandler:v1 + 80];

  return _swift_continuation_await(v1 + 16);
}

uint64_t sub_100038558()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_100038748;
  }

  else
  {
    v5 = sub_100038688;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100038688()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 264);

  v4 = *(v0 + 144);
  v5 = [v4 UIImage];

  if (v3 == 1)
  {
    sub_10009D810();
  }

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_100038748()
{
  v29 = v0;

  swift_willThrow();
  sub_10009D9D0();
  swift_errorRetain();
  v1 = sub_10009D9E0();
  v2 = sub_10009DFD0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 256);
    v5 = *(v0 + 200);
    v27 = *(v0 + 208);
    v25 = *(v0 + 240);
    v26 = *(v0 + 192);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136315138;
    *(v0 + 152) = v4;
    swift_errorRetain();
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v8 = sub_10009DDA0();
    v10 = v9;
    v11 = sub_1000307A4(v8, v9, &v28);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "generateBestRepresentation throws error: %s", v6, 0xCu);
    sub_10000670C(v7);

    (*(v5 + 8))(v27, v26);
  }

  else
  {
    v19 = *(v0 + 240);
    v21 = *(v0 + 200);
    v20 = *(v0 + 208);
    v22 = *(v0 + 192);

    (*(v21 + 8))(v20, v22);
  }

  if (*(v0 + 264) == 1)
  {
    sub_10009D810();
  }

  v23 = *(v0 + 8);

  return v23(0);
}

unint64_t sub_100038978()
{
  sub_100003714(&qword_1000CA288, &qword_10009FFC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A04A0;
  *(inited + 32) = 7;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v69._countAndFlagsBits = 0x80000001000A5DA0;
  v82._object = 0x80000001000A5D40;
  v82._countAndFlagsBits = 0xD00000000000005DLL;
  v95.value._countAndFlagsBits = 0;
  v95.value._object = 0;
  v3.super.isa = v2;
  v108._countAndFlagsBits = 0;
  v108._object = 0xE000000000000000;
  v4 = sub_10009D680(v82, v95, v3, v108, 0xD00000000000002BLL, v69);
  v6 = v5;

  *(inited + 40) = v4;
  *(inited + 48) = v6;
  *(inited + 56) = 8;
  v7 = [v1 mainBundle];
  v70._countAndFlagsBits = 0x80000001000A5E30;
  v83._countAndFlagsBits = 0xD00000000000005FLL;
  v83._object = 0x80000001000A5DD0;
  v96.value._countAndFlagsBits = 0;
  v96.value._object = 0;
  v8.super.isa = v7;
  v109._countAndFlagsBits = 0;
  v109._object = 0xE000000000000000;
  v9 = sub_10009D680(v83, v96, v8, v109, 0xD000000000000033, v70);
  v11 = v10;

  *(inited + 64) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = 9;
  v12 = [v1 mainBundle];
  v71._countAndFlagsBits = 0x80000001000A5ED0;
  v84._object = 0x80000001000A5E70;
  v84._countAndFlagsBits = 0xD00000000000005DLL;
  v97.value._countAndFlagsBits = 0;
  v97.value._object = 0;
  v13.super.isa = v12;
  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  v14 = sub_10009D680(v84, v97, v13, v110, 0xD00000000000002BLL, v71);
  v16 = v15;

  *(inited + 88) = v14;
  *(inited + 96) = v16;
  *(inited + 104) = 10;
  v17 = [v1 mainBundle];
  v72._countAndFlagsBits = 0x80000001000A5F70;
  v85._countAndFlagsBits = 0xD000000000000062;
  v85._object = 0x80000001000A5F00;
  v98.value._countAndFlagsBits = 0;
  v98.value._object = 0;
  v18.super.isa = v17;
  v111._countAndFlagsBits = 0;
  v111._object = 0xE000000000000000;
  v19 = sub_10009D680(v85, v98, v18, v111, 0xD000000000000030, v72);
  v21 = v20;

  *(inited + 112) = v19;
  *(inited + 120) = v21;
  *(inited + 128) = 11;
  v22 = [v1 mainBundle];
  v73._countAndFlagsBits = 0x80000001000A6010;
  v86._countAndFlagsBits = 0xD00000000000005ELL;
  v86._object = 0x80000001000A5FB0;
  v99.value._countAndFlagsBits = 0;
  v99.value._object = 0;
  v23.super.isa = v22;
  v112._countAndFlagsBits = 0;
  v112._object = 0xE000000000000000;
  v24 = sub_10009D680(v86, v99, v23, v112, 0xD00000000000002CLL, v73);
  v26 = v25;

  *(inited + 136) = v24;
  *(inited + 144) = v26;
  *(inited + 152) = 0;
  v27 = [v1 mainBundle];
  v74._countAndFlagsBits = 0x80000001000A6040;
  v87._countAndFlagsBits = 0xD00000000000005FLL;
  v87._object = 0x80000001000A5DD0;
  v100.value._countAndFlagsBits = 0;
  v100.value._object = 0;
  v28.super.isa = v27;
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  v29 = sub_10009D680(v87, v100, v28, v113, 0xD00000000000002DLL, v74);
  v31 = v30;

  *(inited + 160) = v29;
  *(inited + 168) = v31;
  *(inited + 176) = 1;
  v32 = [v1 mainBundle];
  v75._countAndFlagsBits = 0x80000001000A60E0;
  v88._countAndFlagsBits = 0xD000000000000061;
  v88._object = 0x80000001000A6070;
  v101.value._countAndFlagsBits = 0;
  v101.value._object = 0;
  v33.super.isa = v32;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  v34 = sub_10009D680(v88, v101, v33, v114, 0xD00000000000002FLL, v75);
  v36 = v35;

  *(inited + 184) = v34;
  *(inited + 192) = v36;
  *(inited + 200) = 2;
  v37 = [v1 mainBundle];
  v76._countAndFlagsBits = 0x80000001000A6180;
  v89._countAndFlagsBits = 0xD000000000000064;
  v89._object = 0x80000001000A6110;
  v102.value._countAndFlagsBits = 0;
  v102.value._object = 0;
  v38.super.isa = v37;
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  v39 = sub_10009D680(v89, v102, v38, v115, 0xD000000000000032, v76);
  v41 = v40;

  *(inited + 208) = v39;
  *(inited + 216) = v41;
  *(inited + 224) = 3;
  v42 = [v1 mainBundle];
  v77._countAndFlagsBits = 0x80000001000A6230;
  v90._countAndFlagsBits = 0xD000000000000065;
  v90._object = 0x80000001000A61C0;
  v103.value._countAndFlagsBits = 0;
  v103.value._object = 0;
  v43.super.isa = v42;
  v116._countAndFlagsBits = 0;
  v116._object = 0xE000000000000000;
  v44 = sub_10009D680(v90, v103, v43, v116, 0xD000000000000033, v77);
  v46 = v45;

  *(inited + 232) = v44;
  *(inited + 240) = v46;
  *(inited + 248) = 4;
  v47 = [v1 mainBundle];
  v78._countAndFlagsBits = 0x80000001000A62D0;
  v91._countAndFlagsBits = 0xD00000000000005ELL;
  v91._object = 0x80000001000A6270;
  v104.value._countAndFlagsBits = 0;
  v104.value._object = 0;
  v48.super.isa = v47;
  v117._countAndFlagsBits = 0;
  v117._object = 0xE000000000000000;
  v49 = sub_10009D680(v91, v104, v48, v117, 0xD00000000000002DLL, v78);
  v51 = v50;

  *(inited + 256) = v49;
  *(inited + 264) = v51;
  *(inited + 272) = 5;
  v52 = [v1 mainBundle];
  v79._countAndFlagsBits = 0x80000001000A6360;
  v92._countAndFlagsBits = 0xD00000000000005ELL;
  v92._object = 0x80000001000A6300;
  v105.value._countAndFlagsBits = 0;
  v105.value._object = 0;
  v53.super.isa = v52;
  v118._countAndFlagsBits = 0;
  v118._object = 0xE000000000000000;
  v54 = sub_10009D680(v92, v105, v53, v118, 0xD00000000000002CLL, v79);
  v56 = v55;

  *(inited + 280) = v54;
  *(inited + 288) = v56;
  *(inited + 296) = 6;
  v57 = [v1 mainBundle];
  v93._countAndFlagsBits = 0xD00000000000005CLL;
  v80._countAndFlagsBits = 0x80000001000A63F0;
  v93._object = 0x80000001000A6390;
  v106.value._countAndFlagsBits = 0;
  v106.value._object = 0;
  v58.super.isa = v57;
  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  v59 = sub_10009D680(v93, v106, v58, v119, 0xD00000000000002ALL, v80);
  v61 = v60;

  *(inited + 304) = v59;
  *(inited + 312) = v61;
  *(inited + 320) = 13;
  v62 = [v1 mainBundle];
  v81._countAndFlagsBits = 0x80000001000A6480;
  v94._object = 0x80000001000A6420;
  v94._countAndFlagsBits = 0xD00000000000005DLL;
  v107.value._countAndFlagsBits = 0;
  v107.value._object = 0;
  v63.super.isa = v62;
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  v64 = sub_10009D680(v94, v107, v63, v120, 0xD000000000000032, v81);
  v66 = v65;

  *(inited + 328) = v64;
  *(inited + 336) = v66;
  v67 = sub_100031504(inited);
  swift_setDeallocating();
  sub_100003714(qword_1000CA290, &qword_10009FFD0);
  swift_arrayDestroy();
  return v67;
}

_OWORD *sub_100039068(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000390F0()
{
  result = qword_1000CAB28;
  if (!qword_1000CAB28)
  {
    sub_10000594C(&qword_1000CA250, &qword_10009FDF8);
    sub_1000391A4(&qword_1000CAB30, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAB28);
  }

  return result;
}

uint64_t sub_1000391A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000391EC()
{
  result = qword_1000CAB40;
  if (!qword_1000CAB40)
  {
    sub_10000594C(&qword_1000CA6A0, &qword_10009FD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAB40);
  }

  return result;
}

uint64_t sub_100039270()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000392B0()
{
  result = qword_1000CAB80;
  if (!qword_1000CAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAB80);
  }

  return result;
}

uint64_t sub_100039304(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000037C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100039358@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 1));
  *a2 = result;
  return result;
}

unint64_t sub_100039390()
{
  result = qword_1000CABD8;
  if (!qword_1000CABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CABD8);
  }

  return result;
}

unint64_t sub_1000393E4()
{
  result = qword_1000CABF0;
  if (!qword_1000CABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CABF0);
  }

  return result;
}

unint64_t sub_100039438()
{
  result = qword_1000CAC08;
  if (!qword_1000CAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAC08);
  }

  return result;
}

unint64_t sub_10003948C()
{
  result = qword_1000CAC18;
  if (!qword_1000CAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAC18);
  }

  return result;
}

uint64_t sub_1000394E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10003961C()
{
  result = qword_1000CAC60;
  if (!qword_1000CAC60)
  {
    sub_10000594C(&qword_1000CA6C0, &qword_1000A0578);
    sub_100039304(&qword_1000CAC68, &qword_1000CA6B0, UIImage_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAC60);
  }

  return result;
}

uint64_t sub_1000396CC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100039704(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 2);
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1000397E4;

  return sub_10001FB70(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t sub_1000397E4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000398E0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000841C;

  return sub_1000208A8(a1, a2, v6);
}

unint64_t sub_1000399B0()
{
  result = qword_1000CACB8;
  if (!qword_1000CACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CACB8);
  }

  return result;
}

unint64_t sub_100039A04()
{
  result = qword_1000CACD0;
  if (!qword_1000CACD0)
  {
    sub_10000594C(&qword_1000CACD8, &qword_1000A0EB0);
    sub_100039304(&qword_1000CACE0, &qword_1000CACE8, CKContainerSetupInfo_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CACD0);
  }

  return result;
}

unint64_t sub_100039AB4()
{
  result = qword_1000CAD20;
  if (!qword_1000CAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CAD20);
  }

  return result;
}

uint64_t sub_100039B10(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000594C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100039B58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000093DC;

  return sub_100020EA0(a1, v4, v5, v6);
}

uint64_t sub_100039C0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000093DC;

  return sub_1000305B4(a1, v4);
}

uint64_t sub_100039CC4()
{
  v1 = sub_100003714(&qword_1000CAD50, &qword_1000A0EF8);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;
  v6 = sub_10009D860();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100039E10(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100003714(&qword_1000CAD50, &qword_1000A0EF8) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_100019674(a1, a2, v6, v7, v8);
}

uint64_t sub_100039EA0()
{
  v1 = sub_100003714(&qword_1000CAD50, &qword_1000A0EF8);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = sub_10009D860();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10003A00C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100003714(&qword_1000CAD50, &qword_1000A0EF8) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000093DC;

  return sub_100019884(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_10003A168(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_10003A174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000841C;

  return sub_10002E4A4(a1, v4, v5, v6);
}

uint64_t sub_10003A228()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (v3)
  {
    v0 = [v3 _copyWithoutPersonalInfo];
    sub_1000194F8();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_100005B1C();
    swift_allocError();
    *v2 = 0xD000000000000024;
    *(v2 + 8) = 0x80000001000A65E0;
    *(v2 + 16) = xmmword_1000A0430;
    *(v2 + 32) = 0x80000001000A6610;
    *(v2 + 40) = 11;
    return swift_willThrow();
  }
}

uint64_t sub_10003A35C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000093DC;

  return sub_10001F89C(a1, v4, v5, v6, v7);
}

uint64_t sub_10003A560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000093DC;

  return sub_10001EAA4(a1, v4, v5, v6);
}

uint64_t sub_10003A614()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000093DC;

  return sub_10001DDC4();
}

uint64_t sub_10003A6C8(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10003A714()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000093DC;

  return sub_10001BFF4();
}

unint64_t *sub_10003A8E4@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void *sub_10003A964@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

Swift::Int sub_10003A9A4()
{
  v1 = *v0;
  sub_10009E380();
  sub_10009E390(v1);
  return sub_10009E3A0();
}

Swift::Int sub_10003A9EC(uint64_t a1)
{
  v2 = *v1;
  sub_10009E380();
  sub_10009E390(v2);
  return sub_10009E3A0();
}

uint64_t sub_10003AA40()
{

  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;
  v8 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__showingAlert;
  v9 = sub_100003714(&qword_1000CAAC8, &unk_1000A1870);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__showingAlertBool;
  v11 = sub_100003714(&qword_1000CAB08, &qword_1000A0E10);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v13 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__whoCanAccessPermissions;
  v14 = sub_100003714(&qword_1000CB028, &qword_1000A1880);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__whoCanAccessPermissionSelected;
  v16 = sub_100003714(&qword_1000CB030, &qword_1000A1888);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__readWritePermissions;
  v18 = sub_100003714(&qword_1000CB038, &qword_1000A1890);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__readWritePermissionSelected;
  v20 = sub_100003714(&qword_1000CB040, &qword_1000A1898);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__whoCanAddPeoplePermissions;
  v22 = sub_100003714(&qword_1000CB048, &qword_1000A18A0);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__whoCanAddPeoplePermissionSelected;
  v24 = sub_100003714(&qword_1000CB050, &qword_1000A18A8);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);
  v12(v0 + OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__anyoneCanAddPeople, v11);
  v25 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__whoCanRequestAccessPermissions;
  v26 = sub_100003714(&qword_1000CB058, &qword_1000A18B0);
  (*(*(v26 - 8) + 8))(v0 + v25, v26);
  v27 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__whoCanRequestAccessSelected;
  v28 = sub_100003714(&qword_1000CB060, &qword_1000A18B8);
  (*(*(v28 - 8) + 8))(v0 + v27, v28);
  v29 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__localizedPermissionSummary;
  v30 = sub_100003714(&qword_1000CAA80, &qword_1000A18C0);
  (*(*(v30 - 8) + 8))(v0 + v29, v30);
  v12(v0 + OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__shouldShowSharingOptionsView, v11);
  v31 = OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__didTapCopyLink;
  v32 = sub_100003714(&qword_1000CB068, &qword_1000A18C8);
  (*(*(v32 - 8) + 8))(v0 + v31, v32);
  v12(v0 + OBJC_IVAR____TtC13SPIHelper_iOS25GlobalPermissionViewModel__savingInProgress, v11);
  return v0;
}

uint64_t sub_10003AE68()
{
  sub_10003AA40();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GlobalPermissionViewModel(uint64_t a1)
{
  result = qword_1000CAE50;
  if (!qword_1000CAE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003AF14(uint64_t a1)
{
  sub_100032004(319, &qword_1000CA658, &qword_1000CA660, &qword_1000A1300);
  if (v1 <= 0x3F)
  {
    sub_100031F60(319, &qword_1000CA610, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_100032004(319, &qword_1000CAE60, &qword_1000CAE68, &qword_1000A1308);
      if (v3 <= 0x3F)
      {
        sub_100031F60(319, &qword_1000CAE70, &type metadata for GlobalPermissionViewModel.WhoCanAccess);
        if (v4 <= 0x3F)
        {
          sub_100032004(319, &qword_1000CAE78, &qword_1000CAE80, &qword_1000A1310);
          if (v5 <= 0x3F)
          {
            sub_100031F60(319, &qword_1000CAE88, &type metadata for GlobalPermissionViewModel.CanMakeChangesOrViewOnly);
            if (v6 <= 0x3F)
            {
              sub_100032004(319, &qword_1000CAE90, &qword_1000CAE98, &qword_1000A1318);
              if (v7 <= 0x3F)
              {
                sub_100031F60(319, &qword_1000CAEA0, &type metadata for GlobalPermissionViewModel.WhoCanAddPeople);
                if (v8 <= 0x3F)
                {
                  sub_100032004(319, &qword_1000CAEA8, &qword_1000CAEB0, &qword_1000A1320);
                  if (v9 <= 0x3F)
                  {
                    sub_100031F60(319, &qword_1000CAEB8, &type metadata for GlobalPermissionViewModel.WhoCanRequestAccess);
                    if (v10 <= 0x3F)
                    {
                      sub_100031F60(319, &qword_1000CA6C8, &type metadata for String);
                      if (v11 <= 0x3F)
                      {
                        sub_100032004(319, &qword_1000CAEC0, &unk_1000CAEC8, &qword_1000A1328);
                        if (v12 <= 0x3F)
                        {
                          swift_updateClassMetadata2();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for SharingMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SharingMode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NetworkStatus(unsigned __int8 *a1, unsigned int a2)
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