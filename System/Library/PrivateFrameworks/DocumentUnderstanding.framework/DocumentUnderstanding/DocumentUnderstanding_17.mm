uint64_t sub_232C76204()
{
  sub_232B26C7C();
  v3 = v2;
  sub_232B26C70();
  v5 = v4;
  sub_232B51338();
  *v6 = v5;
  v7 = *v1;
  sub_232B26B3C();
  *v8 = v7;
  *(v5 + 248) = v0;

  if (!v0)
  {
    *(v5 + 256) = v3;
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232C76310()
{
  sub_232BAE1F8();

  sub_232B51374();
  v2 = *(v0 + 256);

  return v1(v2);
}

uint64_t sub_232C763D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_232C79DB4();
  sub_232BAE1F8();

  sub_232C79D34();

  sub_232B26CF4();
  sub_232C79CBC();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t static TextUnderstandingManager._extractEventsAndOrders(document:documentType:onBehalfOfPID:)()
{
  sub_232B26C44();
  v1[28] = v2;
  v1[29] = v0;
  v1[26] = v3;
  v1[27] = v4;
  v5 = sub_232CE9A30();
  v1[30] = v5;
  sub_232B27FBC(v5);
  v1[31] = v6;
  v1[32] = sub_232C79E3C();
  v1[33] = swift_task_alloc();
  v7 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v7);
  v1[34] = sub_232B27FCC();
  v8 = type metadata accessor for DULLMInput(0);
  v1[35] = v8;
  sub_232B2D120(v8);
  v1[36] = sub_232B27FCC();
  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232C76580()
{
  v1 = sub_232B591FC();
  v0[37] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text);
    sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text, (v0 + 2));
    v4 = v3[1];
    if (v4)
    {
      v5 = *v3;
      v6 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v6 = *v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v6)
      {
        v7 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
        sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline], (v0 + 5));
        v49 = *(v7 + 1);
        v50 = *v7;
        v8 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
        sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData], (v0 + 8));
        v9 = *&v2[v8];
        if (v9 && (v10 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData, sub_232B13F74(v9 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData, (v0 + 11)), (v11 = *(v9 + v10)) != 0))
        {
          v12 = (v11 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail);
          sub_232B13F74(v11 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail, (v0 + 14));
          v14 = *v12;
          v13 = v12[1];
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        v40 = v0[34];
        v41 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
        sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated], (v0 + 17));
        sub_232B26744(&v2[v41], v40, &qword_27DDC6A80, &qword_232CF6D30);
        if (v9)
        {
          v42 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
          sub_232B13F74(v9 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData, (v0 + 20));
          v43 = *(v9 + v42);
          if (v43)
          {
            v44 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
            sub_232B13F74(v43 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers, (v0 + 23));
            v43 = *(v43 + v44);
          }
        }

        else
        {
          v43 = 0;
        }

        v46 = v0[35];
        v45 = v0[36];
        v47 = v0[34];
        *v45 = v0[27];
        v45[1] = v5;
        v45[2] = v4;
        v45[3] = v50;
        v45[4] = v49;
        v45[5] = 0;
        v45[6] = 0;
        v45[7] = v14;
        v45[8] = v13;
        sub_232BA4BBC(v47, v45 + *(v46 + 36));
        *(v45 + *(v46 + 40)) = v43;

        v48 = swift_task_alloc();
        v0[38] = v48;
        *v48 = v0;
        v48[1] = sub_232C76980;
        sub_232BC1EF8(v0[36]);

        return static TextUnderstandingManager._extractEventsAndOrders(input:onBehalfOfPID:)();
      }
    }

    sub_232CE9A20();
    v15 = sub_232CE9A00();
    v16 = sub_232CEA1C0();
    if (sub_232C79B04(v16))
    {
      sub_232BAE0AC();
      v17 = swift_slowAlloc();
      *v17 = 0;
      sub_232C79B20();
      _os_log_impl(v18, v19, v20, v21, v17, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v22 = sub_232C79BF0();
    v23(v22);
    sub_232C78B18();
    sub_232B4ACD4();
    v24 = swift_allocError();
    sub_232C79B2C(v24, v25);
  }

  else
  {
    sub_232CE9A20();
    v26 = sub_232CE9A00();
    v27 = sub_232CEA1C0();
    if (sub_232C6F000(v27))
    {
      sub_232BAE0AC();
      v28 = swift_slowAlloc();
      sub_232BD4280(v28);
      sub_232C79A04();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v34 = sub_232C79A54();
    v35(v34);
    sub_232C78B18();
    sub_232B4ACD4();
    v36 = swift_allocError();
    sub_232C79B2C(v36, v37);
  }

  sub_232B26CF4();

  return v38();
}

uint64_t sub_232C76980(uint64_t a1)
{
  sub_232C79DE0();
  sub_232B482F8();
  v4 = v3;
  v5 = *v2;
  v6 = *v2;
  sub_232B26B3C();
  *v7 = v6;
  *v7 = *v2;
  *(v6 + 312) = v1;

  v8 = *(v5 + 288);
  if (!v1)
  {
    *(v6 + 320) = v4;
  }

  sub_232C78B6C(v8);
  sub_232B48304();
  sub_232C79DCC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232C76AB0()
{
  sub_232B26C7C();

  sub_232B51374();
  v2 = *(v0 + 320);

  return v1(v2);
}

uint64_t sub_232C76B40()
{
  sub_232B26C7C();

  sub_232B26CF4();

  return v1();
}

uint64_t sub_232C76BEC(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, void *aBlock, uint64_t a7, uint64_t a8)
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = v13;
  v14[6] = a1;
  v15 = a3;

  return sub_232C6F124(a8, v14);
}

uint64_t sub_232C76C80(void *a1, int a2, int a3, void *aBlock, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v7 = a1;
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_232C79950;

  return static TextUnderstandingManager._extractEventsAndOrders(document:documentType:onBehalfOfPID:)();
}

void sub_232C76D60()
{
  sub_232B35110();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v26 = v8;
  v10 = v9;
  v12 = v11;
  ObjectType = swift_getObjectType();
  v13 = sub_232CE9A30();
  sub_232B48F0C();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_232C799AC(v17);
  v18 = sub_232CE9A00();
  sub_232CEA1A0();
  sub_232C79CF8();
  if (os_log_type_enabled(v18, v19))
  {
    sub_232BAE0AC();
    v20 = swift_slowAlloc();
    sub_232BD7228(v20);
    sub_232C79C30(&dword_232B02000, v18, v1, "(TextUnderstandingManager) extractEventWithSerializedDocument called");
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  (*(v15 + 8))(v0, v13);
  v21 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_foundInEventsQueue);
  sub_232C79CEC();
  v22 = swift_allocObject();
  v22[2] = v12;
  v22[3] = v10;
  v22[4] = v26;
  v22[5] = v7;
  v22[6] = v5;
  v22[7] = v3;
  v22[8] = ObjectType;
  v27[4] = sub_232C78BC8;
  v27[5] = v22;
  sub_232C52900();
  v27[1] = 1107296256;
  sub_232C79980();
  v27[2] = v23;
  v27[3] = &unk_284814190;
  v24 = _Block_copy(v27);
  sub_232B41B94(v12, v10);

  [v21 addOperationWithBlock_];
  _Block_release(v24);
  sub_232B20A00();
}

uint64_t sub_232C76F5C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v20 - v15;
  v17 = sub_232CEA090();
  sub_232B12504(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = a5;
  v18[9] = a6;
  v18[10] = a7;
  sub_232B41B94(a1, a2);

  sub_232B23FB4(0, 0, v16, &unk_232CFF8E0, v18);
}

uint64_t sub_232C7708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[56] = v12;
  v8[57] = v13;
  v8[54] = a7;
  v8[55] = a8;
  v8[52] = a5;
  v8[53] = a6;
  v8[51] = a4;
  v9 = sub_232CE9A30();
  v8[58] = v9;
  v8[59] = *(v9 - 8);
  v8[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C77160, 0, 0);
}

uint64_t sub_232C77644()
{
  sub_232B26C7C();
  v3 = v2;
  sub_232B26C70();
  v5 = v4;
  sub_232B51338();
  *v6 = v5;
  v7 = *v1;
  sub_232B26B3C();
  *v8 = v7;
  *(v5 + 512) = v0;

  if (!v0)
  {
    *(v5 + 520) = v3;
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232C77750()
{
  sub_232B482F8();
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[55];
  v4 = sub_232BB818C(v0[65]);

  v3(v4, 0);

  sub_232B26CF4();

  return v5();
}

uint64_t sub_232C777F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_232C79DB4();
  sub_232BAE1F8();
  v11 = *(v10 + 496);

  v12 = *(v10 + 512);
  *(v10 + 400) = v12;
  v13 = v12;
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v14 = *(v10 + 352);
  v15 = *(v10 + 360);
  v16 = *(v10 + 368);
  sub_232B124A8(&qword_27DDC8600, &qword_232CFF8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232CF7250;
  *(inited + 32) = xmmword_232CFF6D0;
  *(inited + 48) = 3;
  *(inited + 56) = xmmword_232CFF6F0;
  *(inited + 72) = 3;
  *(inited + 80) = xmmword_232CFF6C0;
  *(inited + 96) = 3;
  *(inited + 104) = xmmword_232CFF6B0;
  *(inited + 120) = 3;
  v18 = sub_232C79C98(inited, 3u, xmmword_232CFF6E0);
  v19 = sub_232C79AAC(v18);
  swift_setDeallocating();
  sub_232C788C0();

  if (!v19)
  {
    if (v16 == 3)
    {
      if (!(v14 | v15))
      {
        sub_232C79DF4();
        sub_232CE9D50();
        sub_232BECA40();
        sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
        v38 = swift_initStackObject();
        *(v38 + 16) = xmmword_232CF6460;
        v39 = sub_232CE9D50();
        *(v38 + 32) = v39;
        *(v38 + 40) = v40;
        sub_232C79B5C(v39, MEMORY[0x277D837D0]);
        *(v38 + 48) = v42;
        *(v38 + 56) = v41;
        v28 = sub_232C79E0C();
        v43 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v30 = sub_232C79A64();
        v32 = 0;
        goto LABEL_11;
      }

      if (!(v14 ^ 1 | v15))
      {
        sub_232C79DF4();
        sub_232CE9D50();
        sub_232BECA40();
        sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
        v23 = swift_initStackObject();
        *(v23 + 16) = xmmword_232CF6460;
        v24 = sub_232CE9D50();
        *(v23 + 32) = v24;
        *(v23 + 40) = v25;
        sub_232C79B5C(v24, MEMORY[0x277D837D0]);
        *(v23 + 48) = v26 + 13;
        *(v23 + 56) = v27;
        v28 = sub_232C79E0C();
        v29 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v30 = sub_232C79A64();
        v32 = 1;
LABEL_11:
        v44 = sub_232BC8980(v30, v31, v32, v28);
        (v15)(MEMORY[0x277D84F90], v44);

        goto LABEL_12;
      }
    }

    v33 = sub_232B37B20();
    sub_232BB6A10(v33, v34, v16);
LABEL_9:
    v35 = *(v10 + 440);

    v36 = v12;
    v35(MEMORY[0x277D84F90], v12);

    v37 = v12;
    goto LABEL_13;
  }

  v20 = *(v10 + 440);

  v21 = sub_232B37B20();
  sub_232BB6A10(v21, v22, v16);
  v20(MEMORY[0x277D84F90], 0);
LABEL_12:
  v37 = *(v10 + 400);
LABEL_13:

  sub_232B26CF4();
  sub_232C79CBC();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10);
}

void sub_232C77C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B124A8(&qword_27DDC72C8, &qword_232CFF860);
  v5 = sub_232CE9FD0();
  if (a2)
  {
    v6 = sub_232CE8B20();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

id TextUnderstandingManager.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TextUnderstandingManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_232C77D9C(char a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36)
{
  if (a2)
  {
    v61 = sub_232CE8B20();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v61 = 0;
    if (a4)
    {
LABEL_3:
      v60 = sub_232CE9D20();

      if (a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v59 = 0;
      if (a7)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v60 = 0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v59 = sub_232CE8B20();

  if (a7)
  {
LABEL_5:
    v58 = sub_232CE9D20();

    goto LABEL_10;
  }

LABEL_9:
  v58 = 0;
LABEL_10:
  if (a8)
  {
    v57 = sub_232CE8B20();
  }

  else
  {
    v57 = 0;
  }

  if (a10)
  {
    v52 = sub_232CE9D20();
  }

  else
  {
    v52 = 0;
  }

  if (a11)
  {
    v51 = sub_232CE9C20();
  }

  else
  {
    v51 = 0;
  }

  if (a12)
  {
    v55 = sub_232CE8B20();
  }

  else
  {
    v55 = 0;
  }

  if (a14)
  {
    v54 = sub_232CE9D20();
  }

  else
  {
    v54 = 0;
  }

  if (a15)
  {
    v53 = sub_232CE9C20();
  }

  else
  {
    v53 = 0;
  }

  if (a16)
  {
    v68 = sub_232CE8B20();
  }

  else
  {
    v68 = 0;
  }

  if (a18)
  {
    v67 = sub_232CE9D20();
  }

  else
  {
    v67 = 0;
  }

  if (a19)
  {
    v66 = sub_232CE8B20();
  }

  else
  {
    v66 = 0;
  }

  if (a21)
  {
    v65 = sub_232CE9D20();
  }

  else
  {
    v65 = 0;
  }

  if (a22)
  {
    v64 = sub_232CE8B20();
  }

  else
  {
    v64 = 0;
  }

  if (a24)
  {
    v41 = sub_232CE9D20();
  }

  else
  {
    v41 = 0;
  }

  if (a25)
  {
    v42 = sub_232CE8B20();
  }

  else
  {
    v42 = 0;
  }

  if (a27)
  {
    v43 = sub_232CE9D20();
  }

  else
  {
    v43 = 0;
  }

  if (a28)
  {
    v44 = sub_232CE8B20();
  }

  else
  {
    v44 = 0;
  }

  if (a30)
  {
    v45 = sub_232CE9D20();
  }

  else
  {
    v45 = 0;
  }

  if (a31)
  {
    v46 = sub_232CE8B20();
  }

  else
  {
    v46 = 0;
  }

  if (a33)
  {
    v47 = sub_232CE9D20();
  }

  else
  {
    v47 = 0;
  }

  if (!a34)
  {
    v48 = 0;
    if (a36)
    {
      goto LABEL_66;
    }

LABEL_68:
    v49 = 0;
    goto LABEL_69;
  }

  v48 = sub_232CE8B20();

  if (!a36)
  {
    goto LABEL_68;
  }

LABEL_66:
  v49 = sub_232CE9D20();

LABEL_69:
  v63 = [v62 initWithFields:a1 & 1 reservationIdError:v61 reservationId:v60 reservationNameError:v59 reservationName:v58 startAddressError:v57 startAddress:v52 startAddressComponents:v51 endAddressError:v55 endAddress:v54 endAddressComponents:v53 startPlaceError:v68 startPlace:v67 endPlaceError:v66 endPlace:v65 startDateError:v64 startDate:v41 endDateError:v42 endDate:v43 hotelNameError:v44 hotelName:v45 guestNameError:v46 guestName:v47 movieNameError:v48 movieName:v49];

  return v63;
}

uint64_t sub_232C78304(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_232B26B14;

  return v6();
}

uint64_t sub_232C783EC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_232B26664;

  return v7();
}

uint64_t sub_232C784D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_232B26744(a3, v22 - v10, &qword_27DDC68A8, &qword_232CFA960);
  v12 = sub_232CEA090();
  if (sub_232B12480(v11, 1, v12) == 1)
  {
    sub_232B267AC(v11, &qword_27DDC68A8, &qword_232CFA960);
  }

  else
  {
    sub_232CEA080();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_232CEA050();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_232CE9DE0() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_232B267AC(a3, &qword_27DDC68A8, &qword_232CFA960);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_232B267AC(a3, &qword_27DDC68A8, &qword_232CFA960);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_232C787B0()
{
  sub_232B124A8(&qword_27DDC8608, &qword_232CFF948);
  swift_arrayDestroy();
  v0 = sub_232C79B7C();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_232C78808()
{
  sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  swift_arrayDestroy();
  v0 = sub_232C79B7C();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_232C78884()
{
  swift_arrayDestroy();
  v0 = sub_232C79B7C();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_232C788C0()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_232C78904(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_232CE9D20();

  [a3 setName_];
}

uint64_t sub_232C789C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232C78A58()
{
  sub_232BAE1F8();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];
  v4 = swift_task_alloc();
  v5 = sub_232B26CA4(v4);
  *v5 = v6;
  v5[1] = sub_232B26B14;
  v7 = sub_232C79994();

  return sub_232C744E4(v7, v8, v9, v10, v1, v2, v3);
}

unint64_t sub_232C78B18()
{
  result = qword_2814E2330;
  if (!qword_2814E2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E2330);
  }

  return result;
}

uint64_t sub_232C78B6C(uint64_t a1)
{
  v2 = type metadata accessor for DULLMInput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232C78BE0()
{
  result = qword_27DDC85F8;
  if (!qword_27DDC85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC85F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextUnderstandingManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_232C78F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_27DDC65A8;
  if (!qword_27DDC65A8)
  {
    type metadata accessor for DUExtractionAttributeKey(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC65A8);
  }

  return result;
}

uint64_t sub_232C78F74()
{

  sub_232B41BEC(*(v0 + 24), *(v0 + 32));

  v1 = sub_232C79C10();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232C78FCC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_232C7900C()
{
  sub_232B482F8();
  v0 = swift_task_alloc();
  v1 = sub_232B482EC(v0);
  *v1 = v2;
  v1[1] = sub_232B26B14;
  sub_232C79A14();

  return v3();
}

uint64_t sub_232C790C4()
{
  sub_232C79DE0();
  sub_232B482F8();
  v0 = swift_task_alloc();
  v1 = sub_232B482EC(v0);
  *v1 = v2;
  v1[1] = sub_232B26B14;
  sub_232C79A74();
  sub_232C79DCC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_232C79168()
{
  swift_unknownObjectRelease();

  v0 = sub_232C79B6C();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_232C791A0()
{
  sub_232B482F8();
  sub_232C79C00();
  v0 = swift_task_alloc();
  v1 = sub_232B26CA4(v0);
  *v1 = v2;
  v1[1] = sub_232B26B14;
  v3 = sub_232C79994();

  return v4(v3);
}

uint64_t sub_232C79248()
{
  sub_232B26C7C();
  v0 = swift_task_alloc();
  v1 = sub_232B26CA4(v0);
  *v1 = v2;
  v3 = sub_232B26C24(v1);

  return v4(v3);
}

uint64_t sub_232C792DC()
{
  sub_232B26C7C();
  v0 = swift_task_alloc();
  v1 = sub_232B26CA4(v0);
  *v1 = v2;
  v3 = sub_232B26C24(v1);

  return v4(v3);
}

uint64_t sub_232C79370()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_232C793B0()
{
  sub_232B482F8();
  v0 = swift_task_alloc();
  v1 = sub_232B482EC(v0);
  *v1 = v2;
  v1[1] = sub_232B26B14;
  sub_232C79A14();

  return v3();
}

uint64_t sub_232C79468()
{
  sub_232C79DE0();
  sub_232B482F8();
  v0 = swift_task_alloc();
  v1 = sub_232B482EC(v0);
  *v1 = v2;
  v1[1] = sub_232B26B14;
  sub_232C79A74();
  sub_232C79DCC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_232C7950C(uint64_t a1)
{
  sub_232C79D18();
  sub_232C79B8C();
  sub_232C79A34();
  v1 = swift_task_alloc();
  v2 = sub_232B26CA4(v1);
  *v2 = v3;
  sub_232C799D4(v2);
  sub_232C6EFE4();

  return sub_232C7708C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_232C795F0(uint64_t a1)
{
  sub_232C79DE0();
  sub_232B482F8();
  sub_232C79C00();
  v1 = swift_task_alloc();
  v2 = sub_232B26CA4(v1);
  *v2 = v3;
  v2[1] = sub_232B26B14;
  sub_232C79994();
  sub_232C79DCC();

  return sub_232C72B9C(v4, v5, v6, v7, v8);
}

uint64_t sub_232C79684(uint64_t a1)
{
  sub_232C79D18();
  sub_232C79B8C();
  sub_232C79A34();
  v1 = swift_task_alloc();
  v2 = sub_232B26CA4(v1);
  *v2 = v3;
  sub_232C799D4(v2);
  sub_232C6EFE4();

  return sub_232C71D4C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_232C79714(uint64_t a1)
{
  sub_232C79D18();
  sub_232C79B8C();
  sub_232C79A34();
  v1 = swift_task_alloc();
  v2 = sub_232B26CA4(v1);
  *v2 = v3;
  sub_232C799D4(v2);
  sub_232C6EFE4();

  return sub_232C715EC(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_232C797A4(uint64_t a1)
{
  sub_232C79DB4();
  sub_232BAE1F8();
  v1 = swift_task_alloc();
  v2 = sub_232B26CA4(v1);
  *v2 = v3;
  v2[1] = sub_232B26B14;
  sub_232C79994();
  sub_232C79CBC();

  return sub_232C709BC(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_232C7984C()
{
  swift_unknownObjectRelease();

  v1 = sub_232C79B6C();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232C7988C(uint64_t a1)
{
  sub_232C79DE0();
  sub_232B482F8();
  sub_232C79C00();
  v1 = swift_task_alloc();
  v2 = sub_232B26CA4(v1);
  *v2 = v3;
  v2[1] = sub_232B26B14;
  sub_232C79994();
  sub_232C79DCC();

  return sub_232C6FE10(v4, v5, v6, v7, v8);
}

uint64_t sub_232C799AC(uint64_t a1)
{

  return sub_232CE9A20();
}

uint64_t sub_232C799D4(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  return v2;
}

uint64_t sub_232C79A88()
{

  return swift_beginAccess();
}

BOOL sub_232C79AAC(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_232C0A69C();
}

BOOL sub_232C79B04(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_232C79B2C(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_232C79B98()
{

  return sub_232CE9CD0();
}

uint64_t sub_232C79BB8(uint64_t a1)
{

  return sub_232CEA310();
}

void sub_232C79C30(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_232C79C60(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 3;

  return swift_willThrow();
}

uint64_t sub_232C79C7C()
{

  return swift_slowAlloc();
}

uint64_t sub_232C79C98@<X0>(__n128 *a1@<X0>, unsigned __int8 a2@<W8>, __n128 a3@<Q0>)
{
  a1[8] = a3;
  a1[9].n128_u8[0] = a2;
  *(v3 + 376) = v4;
  *(v3 + 384) = v5;
  *(v3 + 392) = v6;

  return swift_task_alloc();
}

uint64_t sub_232C79CD4(uint64_t a1)
{

  return sub_232CEA290();
}

uint64_t sub_232C79D34()
{
}

void sub_232C79D54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_232C79D74(uint64_t a1)
{
}

uint64_t sub_232C79D94(uint64_t a1)
{

  return sub_232B12504(v1, 1, 1, a1);
}

void sub_232C79DF4()
{
}

uint64_t sub_232C79E0C()
{

  return sub_232CE9C60();
}

uint64_t sub_232C79E24()
{

  return sub_232CEA2F0();
}

uint64_t sub_232C79E3C()
{

  return swift_task_alloc();
}

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(uint64_t a1)
{
  result = qword_27DDC8610;
  if (!qword_27DDC8610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C79EC8(uint64_t a1)
{
  sub_232C79FC4(319, &qword_27DDC8620, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_232CE9340();
    if (v2 <= 0x3F)
    {
      sub_232C79FC4(319, &qword_27DDC67E8, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232C79FC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_232C7A028@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0);
  sub_232CE9330();
  v4 = *(v3 + 28);
  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);

  return sub_232B12504(a1 + v4, 1, 1, v5);
}

uint64_t sub_232C7A098()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5218);
  sub_232B135C4(v0, qword_27DDD5218);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF8180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "globalTopics";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "personalTopics";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "responseDebugInfo";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C7A2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v14 = sub_232B13EE0();
        sub_232C7A46C(v14, v15, v16, v17);
        break;
      case 2:
        v10 = sub_232B13EE0();
        sub_232C7A3CC(v10, v11, v12, v13);
        break;
      case 1:
        v6 = sub_232B13EE0();
        sub_232C7A32C(v6, v7, v8, v9);
        break;
    }
  }

  return result;
}

uint64_t sub_232C7A32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  sub_232C7B028(&qword_27DDC7C60, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult, &unk_232CFFC24);
  return sub_232CE94B0();
}

uint64_t sub_232C7A3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  sub_232C7B028(&qword_27DDC7C60, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult, &unk_232CFFC24);
  return sub_232CE94B0();
}

uint64_t sub_232C7A46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0);
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232C7B028(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF66A0);
  return sub_232CE94C0();
}

uint64_t sub_232C7A520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = *v3;
  if (!*(v10 + 16) || (type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0), sub_232C7B070(), v13 = sub_232C7B028(v11, v12, &unk_232CFFC24), result = sub_232C7B0A0(v10, 1, v14, v13), (v5 = v4) == 0))
  {
    v16 = *(v6 + 8);
    if (!*(v16 + 16) || (type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0), sub_232C7B070(), v19 = sub_232C7B028(v17, v18, &unk_232CFFC24), result = sub_232C7B0A0(v16, 2, v20, v19), (v5 = v4) == 0))
    {
      result = sub_232C7A65C(v6, a1, a2, a3);
      if (!v5)
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0);
        return sub_232CE9320();
      }
    }
  }

  return result;
}

uint64_t sub_232C7A65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0);
  sub_232B21B7C(a1 + *(v11 + 28), v7);
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC67C8, &unk_232CF5E70);
  }

  sub_232B21BEC(v7, v10);
  sub_232C7B028(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF66A0);
  sub_232CE95E0();
  return sub_232B21C50(v10);
}

uint64_t sub_232C7A7FC(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_232B124A8(&qword_27DDC6828, &unk_232CF6030);
  sub_232B13F24();
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  sub_232B33D10(*a1, *a2);
  if ((v15 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_232B33D10(a1[1], a2[1]);
  if ((v16 & 1) == 0)
  {
    goto LABEL_25;
  }

  v17 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0) + 28);
  v18 = *(v11 + 48);
  sub_232B21B7C(a1 + v17, v14);
  sub_232B21B7C(a2 + v17, &v14[v18]);
  sub_232B13FF0(v14);
  if (v22)
  {
    sub_232B13FF0(&v14[v18]);
    if (v22)
    {
      sub_232B13790(v14, &qword_27DDC67C8, &unk_232CF5E70);
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  sub_232B21B7C(v14, v10);
  sub_232B13FF0(&v14[v18]);
  if (v22)
  {
    sub_232B21C50(v10);
LABEL_12:
    v23 = &qword_27DDC6828;
    v24 = &unk_232CF6030;
LABEL_24:
    sub_232B13790(v14, v23, v24);
LABEL_25:
    v21 = 0;
    return v21 & 1;
  }

  sub_232B21BEC(&v14[v18], v7);
  v25 = *(v4 + 20);
  v26 = &v10[v25];
  v27 = *&v10[v25 + 8];
  v28 = &v7[v25];
  v29 = *(v28 + 1);
  if (!v27)
  {
    if (!v29)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (!v29 || (*v26 == *v28 ? (v30 = v27 == v29) : (v30 = 0), !v30 && (sub_232CEA750() & 1) == 0))
  {
LABEL_23:
    sub_232B21C50(v7);
    sub_232B21C50(v10);
    v23 = &qword_27DDC67C8;
    v24 = &unk_232CF5E70;
    goto LABEL_24;
  }

LABEL_20:
  sub_232CE9340();
  sub_232C7B088();
  sub_232C7B028(v31, v32, MEMORY[0x277D216D0]);
  v33 = sub_232CE9CF0();
  sub_232B21C50(v7);
  sub_232B21C50(v10);
  sub_232B13790(v14, &qword_27DDC67C8, &unk_232CF5E70);
  if ((v33 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  sub_232CE9340();
  sub_232C7B088();
  sub_232C7B028(v19, v20, MEMORY[0x277D216D0]);
  v21 = sub_232CE9CF0();
  return v21 & 1;
}

uint64_t sub_232C7AB10()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0);
  sub_232C7B028(&qword_27DDC8630, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse, &unk_232CFF9B8);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C7ABB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_232C7AC2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_232C7ACF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C7B028(&qword_27DDC8640, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse, &unk_232CFFA48);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C7AD70@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6450 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD5218);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C7AE18(uint64_t a1)
{
  v2 = sub_232C7B028(&qword_27DDC7BF0, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse, &unk_232CFFA80);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C7AE88(uint64_t a1, uint64_t a2)
{
  sub_232C7B028(&qword_27DDC7BF0, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse, &unk_232CFFA80);

  return sub_232CE9500();
}

uint64_t sub_232C7B028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232C7B0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232CE95D0();
}

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(uint64_t a1)
{
  result = qword_27DDC8648;
  if (!qword_27DDC8648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C7B138(uint64_t a1)
{
  sub_232C7B2C8(319, &qword_2814DF980, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_232CE9340();
    if (v2 <= 0x3F)
    {
      sub_232C7B270(319);
      if (v3 <= 0x3F)
      {
        sub_232C7B2C8(319, &qword_2814DFA10, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_232C7B2C8(319, &qword_27DDC6840, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_232C7B270(uint64_t a1)
{
  if (!qword_27DDC8658)
  {
    type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(255);
    v1 = sub_232CEA350();
    if (!v2)
    {
      atomic_store(v1, &qword_27DDC8658);
    }
  }
}

void sub_232C7B2C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_232C7B318@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  sub_232CE9330();
  v3 = v2[6];
  v4 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  result = sub_232B12504(a1 + v3, 1, 1, v4);
  v6 = (a1 + v2[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1 + v2[8];
  *v7 = 0;
  v7[8] = 1;
  return result;
}

uint64_t sub_232C7B3A4()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5230);
  sub_232B135C4(v0, qword_27DDD5230);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF4C30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "topicSet";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "topicIdentifier";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "topicConfidence";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "topicNames";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C7B5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = sub_232B13EE0();
        sub_232C7B69C(v6, v7, v8, v9);
        break;
      case 2:
        v14 = sub_232B13EE0();
        sub_232C7B750(v14, v15, v16, v17);
        break;
      case 3:
        v10 = sub_232B13EE0();
        sub_232C7B7B4(v10, v11, v12, v13);
        break;
      case 4:
        sub_232CE9460();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C7B69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  sub_232C7C3F8(&qword_27DDC7C58, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier, &unk_232CFFF18);
  return sub_232CE94C0();
}

uint64_t sub_232C7B818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232C2A594();
  result = sub_232C7B8F8(v5, v6, v7, v8);
  if (!v4)
  {
    sub_232C2A594();
    sub_232C7BA98(v10, v11, v12, v13);
    sub_232C2A594();
    sub_232C7BB10(v14, v15, v16, v17);
    if (*(*v3 + 16))
    {
      sub_232C2A594();
      sub_232CE95A0();
    }

    type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232C7B8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  sub_232C12540(a1 + *(v11 + 24), v7);
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B267AC(v7, &qword_27DDC6AC0, &unk_232CFBF50);
  }

  sub_232C7C338(v7, v10);
  sub_232C7C3F8(&qword_27DDC7C58, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier, &unk_232CFFF18);
  sub_232CE95E0();
  return sub_232C7C39C(v10);
}

uint64_t sub_232C7BA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C7BB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C7BB88(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = sub_232B124A8(&qword_27DDC6AC8, qword_232CF6E00);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  v15 = v14[6];
  v16 = *(v11 + 56);
  sub_232C12540(a1 + v15, v13);
  sub_232C12540(a2 + v15, &v13[v16]);
  sub_232B13FF0(v13);
  if (v23)
  {
    sub_232B13FF0(&v13[v16]);
    if (v23)
    {
      sub_232B267AC(v13, &qword_27DDC6AC0, &unk_232CFBF50);
      goto LABEL_6;
    }

LABEL_17:
    v24 = &qword_27DDC6AC8;
    v25 = qword_232CF6E00;
LABEL_40:
    sub_232B267AC(v13, v24, v25);
    goto LABEL_41;
  }

  sub_232C12540(v13, v9);
  sub_232B13FF0(&v13[v16]);
  if (v23)
  {
    sub_232C7C39C(v9);
    goto LABEL_17;
  }

  sub_232C7C338(&v13[v16], v6);
  v26 = *v9;
  v27 = *v6;
  if (v9[8])
  {
    v26 = *v9 != 0;
  }

  if (v6[8] == 1)
  {
    if (v27)
    {
      if (v26 != 1)
      {
        goto LABEL_39;
      }
    }

    else if (v26)
    {
LABEL_39:
      sub_232C7C39C(v6);
      sub_232C7C39C(v9);
      v24 = &qword_27DDC6AC0;
      v25 = &unk_232CFBF50;
      goto LABEL_40;
    }
  }

  else if (v26 != v27)
  {
    goto LABEL_39;
  }

  if (*(v9 + 2) != *(v6 + 2))
  {
    goto LABEL_39;
  }

  sub_232CE9340();
  sub_232C7C440();
  sub_232C7C3F8(v36, v37, MEMORY[0x277D216D0]);
  v38 = sub_232CE9CF0();
  sub_232C7C39C(v6);
  sub_232C7C39C(v9);
  sub_232B267AC(v13, &qword_27DDC6AC0, &unk_232CFBF50);
  if ((v38 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_6:
  v17 = v14[7];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v20[1];
  if (v19)
  {
    if (!v21)
    {
      goto LABEL_41;
    }

    v22 = *v18 == *v20 && v19 == v21;
    if (!v22 && (sub_232CEA750() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v21)
  {
    goto LABEL_41;
  }

  v28 = v14[8];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      goto LABEL_41;
    }
  }

  if ((sub_232B32DC4(*a1, *a2) & 1) == 0)
  {
LABEL_41:
    v35 = 0;
    return v35 & 1;
  }

  sub_232CE9340();
  sub_232C7C440();
  sub_232C7C3F8(v33, v34, MEMORY[0x277D216D0]);
  v35 = sub_232CE9CF0();
  return v35 & 1;
}

uint64_t sub_232C7BF2C()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(0);
  sub_232C7C3F8(&qword_27DDC8668, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult, &unk_232CFFB5C);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C7C004(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C7C3F8(&qword_27DDC8678, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult, &unk_232CFFBEC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C7C080@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6458 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD5230);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C7C128(uint64_t a1)
{
  v2 = sub_232C7C3F8(&qword_27DDC7C60, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult, &unk_232CFFC24);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C7C198(uint64_t a1, uint64_t a2)
{
  sub_232C7C3F8(&qword_27DDC7C60, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult, &unk_232CFFC24);

  return sub_232CE9500();
}

uint64_t sub_232C7C338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232C7C39C(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232C7C3F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(uint64_t a1)
{
  result = qword_27DDC8688;
  if (!qword_27DDC8688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232C7C4CC(uint64_t a1)
{
  result = sub_232CE9340();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DocumentUnderstanding_TopicSetIdentifier.TopicSetName(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232C7C570(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

BOOL sub_232C7C59C(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_232C7C5B0@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  return sub_232CE9330();
}

void sub_232C7C608(uint64_t a1@<X8>)
{
  sub_232C7C5F4();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_232C7C648(uint64_t a1@<X8>)
{
  sub_232C7C5F4();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

BOOL sub_232C7C680@<W0>(_BOOL8 *a1@<X8>)
{
  result = sub_232C7C59C(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_232C7C6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C7D260();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_232C7C734()
{
  result = qword_27DDC8698;
  if (!qword_27DDC8698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8698);
  }

  return result;
}

unint64_t sub_232C7C790()
{
  result = qword_27DDC86A0;
  if (!qword_27DDC86A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC86A0);
  }

  return result;
}

double sub_232C7C7E4@<D0>(void *a1@<X8>)
{
  *a1 = qword_27DDC8680;

  return result;
}

uint64_t sub_232C7C7F4()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5248);
  sub_232B135C4(v0, qword_27DDD5248);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topicSetName";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "topicSetVersion";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C7C9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_232CE93A0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_232CE9440();
    }

    else if (result == 1)
    {
      sub_232C7CA44(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_232C7CAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_232C7D260(), result = sub_232CE9570(), !v4))
  {
    if (!v3[2] || (result = sub_232CE9590(), !v4))
    {
      type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
      return sub_232CE9320();
    }
  }

  return result;
}

uint64_t sub_232C7CB90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
    sub_232CE9340();
    sub_232C7D2B4(&qword_27DDC6590, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_232CE9CF0() & 1;
  }

  return 0;
}

uint64_t sub_232C7CC84()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_TopicSetIdentifier(0);
  sub_232C7D2B4(&qword_27DDC86B0, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier, &unk_232CFFE10);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C7CD5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C7D2B4(&qword_27DDC86D0, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier, &unk_232CFFEA0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C7CDFC(uint64_t a1)
{
  v2 = sub_232C7D2B4(&qword_27DDC7C58, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier, &unk_232CFFF18);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C7CE6C(uint64_t a1, uint64_t a2)
{
  sub_232C7D2B4(&qword_27DDC7C58, type metadata accessor for DocumentUnderstanding_TopicSetIdentifier, &unk_232CFFF18);

  return sub_232CE9500();
}

uint64_t sub_232C7CEEC()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5260);
  sub_232B135C4(v0, qword_27DDD5260);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "WIKIDATA";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NEWS";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

unint64_t sub_232C7D1B4()
{
  result = qword_27DDC86B8;
  if (!qword_27DDC86B8)
  {
    sub_232B27EEC(&qword_27DDC86C0, qword_232CFFED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC86B8);
  }

  return result;
}

unint64_t sub_232C7D260()
{
  result = qword_27DDC86D8;
  if (!qword_27DDC86D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC86D8);
  }

  return result;
}

uint64_t sub_232C7D2B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232C7D2FC@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Dutool_TopicVectorEntry(0);
  result = sub_232CE9330();
  v4 = (a1 + *(v2 + 24));
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + *(v2 + 28));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_232C7D358()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5278);
  sub_232B135C4(v0, qword_27DDD5278);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF8180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "qid";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "vector";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C7D55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_232CE93F0();
        break;
      case 2:
        sub_232C2A594();
        sub_232C7D664(v10, v11, v12, v13);
        break;
      case 1:
        sub_232C2A594();
        sub_232C7D600(v6, v7, v8, v9);
        break;
    }
  }

  return result;
}

uint64_t sub_232C7D6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232C2A594();
  result = sub_232C7D78C(v5, v6, v7, v8);
  if (!v4)
  {
    sub_232C2A594();
    sub_232C7D804(v10, v11, v12, v13);
    if (*(*v3 + 16))
    {
      sub_232C2A594();
      sub_232CE9530();
    }

    type metadata accessor for Dutool_TopicVectorEntry(0);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232C7D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Dutool_TopicVectorEntry(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C7D804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Dutool_TopicVectorEntry(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C7D87C(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for Dutool_TopicVectorEntry(0);
  sub_232B2DF3C();
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v8 = *v6 == *v7 && v4 == v5;
    if (!v8 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  sub_232B2DF3C();
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v13 = *v11 == *v12 && v9 == v10;
    if (!v13 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (sub_232B32944(*a1, *a2))
  {
    sub_232CE9340();
    sub_232C7DDF4(&qword_27DDC6590, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_232CE9CF0() & 1;
  }

  return 0;
}

uint64_t sub_232C7D99C()
{
  sub_232CEA820();
  type metadata accessor for Dutool_TopicVectorEntry(0);
  sub_232C7DDF4(&qword_27DDC86F0, type metadata accessor for Dutool_TopicVectorEntry, &unk_232CFFFB8);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C7DA74(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C7DDF4(&qword_27DDC8700, type metadata accessor for Dutool_TopicVectorEntry, &unk_232D00048);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C7DAF0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6470 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD5278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C7DB98(uint64_t a1)
{
  v2 = sub_232C7DDF4(&qword_27DDC86E8, type metadata accessor for Dutool_TopicVectorEntry, &unk_232D00080);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C7DC08(uint64_t a1, uint64_t a2)
{
  sub_232C7DDF4(&qword_27DDC86E8, type metadata accessor for Dutool_TopicVectorEntry, &unk_232D00080);

  return sub_232CE9500();
}

uint64_t type metadata accessor for Dutool_TopicVectorEntry(uint64_t a1)
{
  result = qword_27DDC8708;
  if (!qword_27DDC8708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232C7DDF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_232C7DE64(uint64_t a1)
{
  sub_232C7DF48(319, &qword_27DDC71C8, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_232CE9340();
    if (v2 <= 0x3F)
    {
      sub_232C7DF48(319, &qword_2814DFA10, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232C7DF48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(uint64_t a1)
{
  result = qword_27DDC8718;
  if (!qword_27DDC8718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C7E00C(uint64_t a1)
{
  sub_232C7E108(319, &qword_27DDC8728, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_232CE9340();
    if (v2 <= 0x3F)
    {
      sub_232C7E108(319, &qword_27DDC67E8, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232C7E108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_232C7E16C@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(0);
  sub_232CE9330();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);

  return sub_232B12504(a1 + v3, 1, 1, v4);
}

uint64_t sub_232C7E1DC()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5290);
  sub_232B135C4(v0, qword_27DDD5290);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "foundEntities";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "responseDebugInfo";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C7E3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v10 = sub_232B13EE0();
      sub_232C7E4B8(v10, v11, v12, v13);
    }

    else if (result == 1)
    {
      v6 = sub_232B13EE0();
      sub_232C7E418(v6, v7, v8, v9);
    }
  }

  return result;
}

uint64_t sub_232C7E418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult(0);
  sub_232C7EF28(&qword_27DDC8750, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult, &unk_232D00438);
  return sub_232CE94B0();
}

uint64_t sub_232C7E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(0);
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232C7EF28(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF66A0);
  return sub_232CE94C0();
}

uint64_t sub_232C7E56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult(0), sub_232C7EF28(&qword_27DDC8750, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult, &unk_232D00438), result = sub_232CE95D0(), !v4))
  {
    result = sub_232C7E678(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(0);
      return sub_232CE9320();
    }
  }

  return result;
}

uint64_t sub_232C7E678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(0);
  sub_232B21B7C(a1 + *(v11 + 24), v7);
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC67C8, &unk_232CF5E70);
  }

  sub_232B21BEC(v7, v10);
  sub_232C7EF28(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF66A0);
  sub_232CE95E0();
  return sub_232B21C50(v10);
}

uint64_t sub_232C7E818(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_232B124A8(&qword_27DDC6828, &unk_232CF6030);
  sub_232B13F24();
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  sub_232B32998(*a1, *a2);
  if ((v15 & 1) == 0)
  {
    goto LABEL_24;
  }

  v16 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(0) + 24);
  v17 = *(v11 + 48);
  sub_232B21B7C(a1 + v16, v14);
  sub_232B21B7C(a2 + v16, &v14[v17]);
  sub_232B13FF0(v14);
  if (v21)
  {
    sub_232B13FF0(&v14[v17]);
    if (v21)
    {
      sub_232B13790(v14, &qword_27DDC67C8, &unk_232CF5E70);
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  sub_232B21B7C(v14, v10);
  sub_232B13FF0(&v14[v17]);
  if (v21)
  {
    sub_232B21C50(v10);
LABEL_11:
    v22 = &qword_27DDC6828;
    v23 = &unk_232CF6030;
LABEL_23:
    sub_232B13790(v14, v22, v23);
LABEL_24:
    v20 = 0;
    return v20 & 1;
  }

  sub_232B21BEC(&v14[v17], v7);
  v24 = *(v4 + 20);
  v25 = &v10[v24];
  v26 = *&v10[v24 + 8];
  v27 = &v7[v24];
  v28 = *(v27 + 1);
  if (!v26)
  {
    if (!v28)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (!v28 || (*v25 == *v27 ? (v29 = v26 == v28) : (v29 = 0), !v29 && (sub_232CEA750() & 1) == 0))
  {
LABEL_22:
    sub_232B21C50(v7);
    sub_232B21C50(v10);
    v22 = &qword_27DDC67C8;
    v23 = &unk_232CF5E70;
    goto LABEL_23;
  }

LABEL_19:
  sub_232CE9340();
  sub_232C7EF70();
  sub_232C7EF28(v30, v31, MEMORY[0x277D216D0]);
  v32 = sub_232CE9CF0();
  sub_232B21C50(v7);
  sub_232B21C50(v10);
  sub_232B13790(v14, &qword_27DDC67C8, &unk_232CF5E70);
  if ((v32 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_7:
  sub_232CE9340();
  sub_232C7EF70();
  sub_232C7EF28(v18, v19, MEMORY[0x277D216D0]);
  v20 = sub_232CE9CF0();
  return v20 & 1;
}

uint64_t sub_232C7EB1C()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(0);
  sub_232C7EF28(&qword_27DDC8738, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse, &unk_232D001B4);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C7EBF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C7EF28(&qword_27DDC8748, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse, &unk_232D00244);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C7EC70@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6478 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD5290);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C7ED18(uint64_t a1)
{
  v2 = sub_232C7EF28(&qword_27DDC7CB0, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse, &unk_232D0027C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C7ED88(uint64_t a1, uint64_t a2)
{
  sub_232C7EF28(&qword_27DDC7CB0, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse, &unk_232D0027C);

  return sub_232CE9500();
}

uint64_t sub_232C7EF28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult(uint64_t a1)
{
  result = qword_27DDC8758;
  if (!qword_27DDC8758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C7EFFC(uint64_t a1)
{
  sub_232CE9340();
  if (v1 <= 0x3F)
  {
    sub_232C7F090();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232C7F090()
{
  if (!qword_27DDC6840)
  {
    v0 = sub_232CEA350();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDC6840);
    }
  }
}

uint64_t sub_232C7F0E0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult(0);
  result = sub_232CE9330();
  v4 = a1 + *(v2 + 24);
  *v4 = 0;
  v4[8] = 1;
  return result;
}

uint64_t sub_232C7F134()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD52A8);
  sub_232B135C4(v0, qword_27DDD52A8);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topicIdentifier";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "topicConfidence";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C7F2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_232CE93A0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_232C7F384(a1, v5, a2, a3);
    }

    else if (result == 1)
    {
      sub_232CE94A0();
    }
  }

  return result;
}

uint64_t sub_232C7F3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_232CE95C0(), !v4))
  {
    result = sub_232C7F4AC(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult(0);
      return sub_232CE9320();
    }
  }

  return result;
}

uint64_t sub_232C7F4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C7F524(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult(0) + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  sub_232CE9340();
  sub_232C7FA20(&qword_27DDC6590, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232C7F614()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult(0);
  sub_232C7FA20(&qword_27DDC8770, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult, &unk_232D00370);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C7F6EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C7FA20(&qword_27DDC8780, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult, &unk_232D00400);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C7F768@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6480 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD52A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C7F810(uint64_t a1)
{
  v2 = sub_232C7FA20(&qword_27DDC8750, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult, &unk_232D00438);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C7F880(uint64_t a1, uint64_t a2)
{
  sub_232C7FA20(&qword_27DDC8750, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult, &unk_232D00438);

  return sub_232CE9500();
}

uint64_t sub_232C7FA20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t VectorRecord.associatedData.getter()
{
  v0 = sub_232B2080C();
  sub_232C05E58(v0, v1);
  return sub_232B2080C();
}

uint64_t VectorRecord.init(recordID:vector:associatedData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t NeighborRetrievalResult.associatedData.getter()
{
  v0 = sub_232B2080C();
  sub_232C05E58(v0, v1);
  return sub_232B2080C();
}

uint64_t sub_232C7FB40(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_232C7FB5C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232C7FB84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232C7FBC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_232C7FC1C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_232C7FC30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 36))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232C7FC70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_232C7FCDC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2848148B0;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x238392BE0](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  return a1;
}

uint64_t sub_232C7FD40(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  *a1 = &unk_284814790;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_2848148B0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_2848148B0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_232CB32B4((a1 + 96));
  sub_232C7FE74(a1, a3, a4, &v8);
  sub_232CB34D4((a1 + 96), &v8);
  sub_232CB32BC(&v8);
  return a1;
}

void sub_232C7FE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB32BC(va);
  sub_232CB32BC((v5 + 96));
  sub_232C7FCDC(v6);
  sub_232C7FCDC(v4);
  v8 = *v3;
  *v3 = 0;
  if (v8)
  {
    sub_232C85D30(v3, v8);
  }

  _Unwind_Resume(a1);
}

void *sub_232C7FE74@<X0>(void *a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a2;
  v9 = a3;
  result = sub_232C8051C(a2, a3, a1 + 22, a4);
  if (!*a4)
  {
    sub_232CB32BC(a4);
    result = sub_232CB1748(&v8, 4uLL, a4);
    if (!*a4)
    {
      sub_232CB32BC(a4);
      result = sub_232C8051C(v8, v9, a1 + 23, a4);
      if (!*a4)
      {
        sub_232CB32BC(a4);
        result = sub_232CB1748(&v8, 4uLL, a4);
        if (!*a4)
        {
          sub_232CB32BC(a4);
          v7 = 0;
          result = sub_232C80728(v8, v9, &v7, a4);
          if (!*a4)
          {
            sub_232CB32BC(a4);
            result = sub_232CB1748(&v8, 4uLL, a4);
            if (!*a4)
            {
              sub_232CB32BC(a4);
              sub_232C80934();
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_232C804DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232C80A34(va);
  _Unwind_Resume(a1);
}

void *sub_232C8051C@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2 <= 3)
  {
    LODWORD(v7) = 13;
    v6 = sub_232C83BBC(&v8);
    sub_232C85DAC(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62, v7);
    sub_232C85DAC(&v8, "(", 1);
    MEMORY[0x238392A80](&v8, 448);
    sub_232C85DAC(&v8, ") [", 3);
    sub_232C85DAC(&v8, "string.size() >= sizeof(T)", 26);
    sub_232C85DAC(&v8, "] ", 2);
    sub_232C809A4(&v7, a4);
    v8 = *MEMORY[0x277D82828];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
    v9 = MEMORY[0x277D82878] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x238392BA0](&v12);
  }

  else
  {
    *a3 = *a1;

    return sub_232CB32B4(a4);
  }
}

void *sub_232C80728@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2 <= 3)
  {
    LODWORD(v7) = 13;
    v6 = sub_232C83BBC(&v8);
    sub_232C85DAC(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62, v7);
    sub_232C85DAC(&v8, "(", 1);
    MEMORY[0x238392A80](&v8, 448);
    sub_232C85DAC(&v8, ") [", 3);
    sub_232C85DAC(&v8, "string.size() >= sizeof(T)", 26);
    sub_232C85DAC(&v8, "] ", 2);
    sub_232C809A4(&v7, a4);
    v8 = *MEMORY[0x277D82828];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
    v9 = MEMORY[0x277D82878] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x238392BA0](&v12);
  }

  else
  {
    *a3 = *a1;

    return sub_232CB32B4(a4);
  }
}

void sub_232C809A4(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  std::stringbuf::str();
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  sub_232CB3420(a2, v3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_232C80A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_232C80A34(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *(a1 + 8) = *MEMORY[0x277D82828];
  *(a1 + 8 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));
  std::ostream::~ostream();
  MEMORY[0x238392BA0](a1 + 120);
  return a1;
}

void *sub_232C80B58(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1 || (result = __dynamic_cast(v1, &unk_284814880, &unk_284815860, 16)) == 0)
  {
    v8 = 1;
    v3 = sub_232C85DAC(MEMORY[0x277D82670], "model_interface.cc", 18);
    v4 = sub_232C85DAC(v3, "(", 1);
    v5 = MEMORY[0x238392A80](v4, 103);
    v6 = sub_232C85DAC(v5, ") [", 3);
    v7 = sub_232C85DAC(v6, "(model_proto = dynamic_cast<const ModelProto *>(model_proto_))", 62);
    sub_232C85DAC(v7, "] ", 2);
    result = sub_232C83EEC(&v8);
    __break(1u);
  }

  return result;
}

void *sub_232C80C50(void *a1)
{
  *a1 = &unk_284814790;
  sub_232CB32BC(a1 + 12);
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = &unk_2848148B0;
  v2 = a1[10];
  if (v2)
  {
    MEMORY[0x238392BE0](v2, 0x1000C8052888210);
    a1[10] = 0;
  }

  a1[4] = 0;
  a1[5] = 0;
  a1[3] = &unk_2848148B0;
  v3 = a1[6];
  if (v3)
  {
    MEMORY[0x238392BE0](v3, 0x1000C8052888210);
    a1[6] = 0;
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    sub_232C85D30((a1 + 2), v4);
  }

  return a1;
}

const char *sub_232C80D30(uint64_t a1)
{
  (*(**(a1 + 8) + 32))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 32))(*(a1 + 8));
  }

  else
  {
    return "<unk>";
  }
}

const char *sub_232C80DB4(uint64_t a1)
{
  (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 40))(*(a1 + 8));
  }

  else
  {
    return "<s>";
  }
}

const char *sub_232C80E38(uint64_t a1)
{
  (*(**(a1 + 8) + 48))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 48))(*(a1 + 8));
  }

  else
  {
    return "</s>";
  }
}

const char *sub_232C80EBC(uint64_t a1)
{
  (*(**(a1 + 8) + 56))(*(a1 + 8));
  if (v2)
  {
    return (*(**(a1 + 8) + 56))(*(a1 + 8));
  }

  else
  {
    return "<pad>";
  }
}

uint64_t sub_232C80F40(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 72);
  v4 = *v3;
  if (a3)
  {
    v5 = 0;
    v6 = a2;
    v7 = a3;
    while (1)
    {
      v8 = *v6++;
      v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v8;
      v4 = v3[v5];
      if ((v4 & 0x800000FF) != v8)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = *a2;
    if (*a2)
    {
      v5 = 0;
      v10 = a2 + 1;
      while (1)
      {
        v5 ^= (v4 >> 10 << ((v4 >> 6) & 8)) ^ v9;
        v4 = v3[v5];
        if ((v4 & 0x800000FF) != v9)
        {
          break;
        }

        v11 = *v10++;
        v9 = v11;
        if (!v11)
        {
LABEL_10:
          if ((v4 & 0x100) != 0)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }

    else
    {
      v5 = 0;
      if ((v4 & 0x100) != 0)
      {
LABEL_23:
        v19 = v5 ^ (v4 >> 10 << ((v4 >> 6) & 8));
        return v3[v19] & 0x7FFFFFFF;
      }
    }
  }

  v3 = *(a1 + 40);
  v12 = *v3;
  if (a3)
  {
    v13 = 0;
    while (1)
    {
      v14 = *a2++;
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v14;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v14)
      {
        return *(a1 + 88);
      }

      if (!--a3)
      {
        goto LABEL_20;
      }
    }
  }

  v15 = *a2;
  if (*a2)
  {
    v13 = 0;
    v16 = a2 + 1;
    while (1)
    {
      v13 ^= (v12 >> 10 << ((v12 >> 6) & 8)) ^ v15;
      v12 = v3[v13];
      if ((v12 & 0x800000FF) != v15)
      {
        return *(a1 + 88);
      }

      v17 = *v16++;
      v15 = v17;
      if (!v17)
      {
LABEL_20:
        if ((v12 & 0x100) != 0)
        {
          goto LABEL_25;
        }

        return *(a1 + 88);
      }
    }
  }

  v13 = 0;
  if ((v12 & 0x100) == 0)
  {
    return *(a1 + 88);
  }

LABEL_25:
  v19 = v13 ^ (v12 >> 10 << ((v12 >> 6) & 8));
  return v3[v19] & 0x7FFFFFFF;
}

void sub_232C810B0(void (***a1)(void **__return_ptr)@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = a4;
  (*a1)[2](&__p);
  v12 = __p;
  sub_232CB32BC(&__p);
  if (v12)
  {
    sub_232CB34D0(a6, a1 + 12);
  }

  else
  {
    v13 = ((*a1)[16])(a1);
    sub_232C812AC((a1 + 3), a2, v7, v13, &__p, a3);
    v14 = __p;
    v15 = v22;
    while (v14 != v15)
    {
      v16 = *v14;
      if ((((*a1)[18])(a1, v16) & 1) == 0 && (((*a1)[19])(a1, v16) & 1) == 0)
      {
        v20[0] = ((*a1)[15])(a1, v16);
        v20[1] = v17;
        v18 = *(a5 + 8);
        if (v18 >= *(a5 + 16))
        {
          v19 = sub_232C862B4(a5, v20);
        }

        else
        {
          sub_232C861F0(a5, v20);
          v19 = (v18 + 24);
        }

        *(a5 + 8) = v19;
      }

      v14 += 4;
    }

    sub_232CB34D0(a6, a1 + 12);
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }
}

void sub_232C81288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C812AC(uint64_t a1@<X0>, _BYTE *a2@<X1>, int a3@<W3>, int a4@<W4>, uint64_t *a5@<X8>, uint64_t a6@<X2>)
{
  if (a3 != -1)
  {
    a4 = a3;
  }

  sub_232C8613C(a5, a4);
  v12 = sub_232C83FCC(a1, a2, *a5, (a5[1] - *a5) >> 4, a6, a3);
  sub_232C842D4(a5, v12);
}

void sub_232C8132C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C81348(void (***a1)(void **__return_ptr)@<X0>, _BYTE *a2@<X1>, int a3@<W3>, const void **a4@<X4>, uint64_t *a5@<X8>, uint64_t a6@<X2>)
{
  (*a1)[2](&__p);
  v12 = __p;
  sub_232CB32BC(&__p);
  if (v12)
  {
    sub_232CB34D0(a5, a1 + 12);
  }

  else
  {
    v13 = ((*a1)[16])(a1);
    sub_232C812AC((a1 + 3), a2, a3, v13, &__p, a6);
    v14 = __p;
    v15 = v28;
    if (__p != v28)
    {
      do
      {
        v16 = *v14;
        if ((((*a1)[18])(a1, v16) & 1) == 0 && (((*a1)[19])(a1, v16) & 1) == 0)
        {
          v18 = a4[1];
          v17 = a4[2];
          if (v18 >= v17)
          {
            v20 = *a4;
            v21 = v18 - *a4;
            v22 = v21 >> 2;
            v23 = (v21 >> 2) + 1;
            if (v23 >> 62)
            {
              sub_232C84C3C();
            }

            v24 = v17 - v20;
            if (v24 >> 1 > v23)
            {
              v23 = v24 >> 1;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v25 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              sub_232C86538(a4, v25);
            }

            *(4 * v22) = v16;
            v19 = 4 * v22 + 4;
            memcpy(0, v20, v21);
            v26 = *a4;
            *a4 = 0;
            a4[1] = v19;
            a4[2] = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v18 = v16;
            v19 = (v18 + 4);
          }

          a4[1] = v19;
        }

        v14 += 4;
      }

      while (v14 != v15);
    }

    sub_232CB34D0(a5, a1 + 12);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }
  }
}

void sub_232C8157C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C815A0(void (***a1)(void **__return_ptr)@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  (*a1)[2](&v22);
  v10 = v22;
  sub_232CB32BC(&v22);
  if (v10)
  {
    sub_232CB34D0(a5, a1 + 12);
  }

  else
  {
    sub_232C8185C((a1 + 3), a2, a3, &v22);
    v11 = v22;
    v12 = v23;
    while (v11 != v12)
    {
      v13 = *v11;
      if ((((*a1)[18])(a1, v13) & 1) == 0 && (((*a1)[19])(a1, v13) & 1) == 0)
      {
        __p.__r_.__value_.__r.__words[0] = ((*a1)[15])(a1, v13);
        __p.__r_.__value_.__l.__size_ = v14;
        v15 = *(a4 + 8);
        if (v15 >= *(a4 + 16))
        {
          v16 = sub_232C862B4(a4, &__p);
        }

        else
        {
          sub_232C861F0(a4, &__p);
          v16 = (v15 + 24);
        }

        *(a4 + 8) = v16;
      }

      v11 += 4;
    }

    if (a3 && ((*a1)[23])(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v17 = a2[2] == 129) : (v17 = 0), !v17))
      {
        v24 = *a2;
        sub_232C83330(&__p, "<0x%02X>", &v24);
        v18 = *(a4 + 8);
        if (v18 >= *(a4 + 16))
        {
          v20 = sub_232C86580(a4, &__p);
        }

        else
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_232C866C0(*(a4 + 8), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v19 = *&__p.__r_.__value_.__l.__data_;
            *(v18 + 16) = *(&__p.__r_.__value_.__l + 2);
            *v18 = v19;
          }

          v20 = v18 + 24;
          *(a4 + 8) = v18 + 24;
        }

        *(a4 + 8) = v20;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    sub_232CB34D0(a5, a1 + 12);
    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }
}

void sub_232C81810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  *(v17 + 8) = v18;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C8185C(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_232C8613C(a4, a3 + 1);
  v8 = *a4;
  v9 = (a4[1] - *a4) >> 4;
  v10 = *(a1 + 16);
  v11 = (*v10 >> 10 << ((*v10 >> 6) & 8));
  if (a3)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = a2[v12];
      v15 = v11 ^ v14;
      v16 = v10[v15];
      if ((v16 & 0x800000FF) != v14)
      {
        break;
      }

      v11 = v15 ^ (v16 >> 10 << ((v16 >> 6) & 8));
      if ((v16 & 0x100) != 0)
      {
        if (v13 < v9)
        {
          v17 = v8 + 16 * v13;
          *v17 = v10[v11] & 0x7FFFFFFF;
          *(v17 + 8) = v12 + 1;
        }

        ++v13;
      }

      ++v12;
    }

    while (a3 != v12);
  }

  else
  {
    v18 = *a2;
    if (*a2)
    {
      v13 = 0;
      v19 = 1;
      do
      {
        v20 = v11 ^ v18;
        v21 = v10[v20];
        if ((v21 & 0x800000FF) != v18)
        {
          break;
        }

        v11 = v20 ^ (v21 >> 10 << ((v21 >> 6) & 8));
        if ((v21 & 0x100) != 0)
        {
          if (v13 < v9)
          {
            v22 = v8 + 16 * v13;
            *v22 = v10[v11] & 0x7FFFFFFF;
            *(v22 + 8) = v19;
          }

          ++v13;
        }

        v18 = a2[v19++];
      }

      while (v18);
    }

    else
    {
      v13 = 0;
    }
  }

  sub_232C842D4(a4, v13);
}

void sub_232C819AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C819F8(void (***a1)(void **__return_ptr)@<X0>, char *a2@<X1>, unint64_t a3@<X2>, const void **a4@<X3>, uint64_t *a5@<X8>)
{
  (*a1)[2](&v40);
  v10 = v40;
  sub_232CB32BC(&v40);
  if (v10)
  {
    sub_232CB34D0(a5, a1 + 12);
  }

  else
  {
    sub_232C8185C((a1 + 3), a2, a3, &v40);
    v11 = v40;
    v12 = v41;
    while (v11 != v12)
    {
      v13 = *v11;
      if ((((*a1)[18])(a1, v13) & 1) == 0 && (((*a1)[19])(a1, v13) & 1) == 0)
      {
        v15 = a4[1];
        v14 = a4[2];
        if (v15 >= v14)
        {
          v17 = *a4;
          v18 = v15 - *a4;
          v19 = v18 >> 2;
          v20 = (v18 >> 2) + 1;
          if (v20 >> 62)
          {
            sub_232C84C3C();
          }

          v21 = v14 - v17;
          if (v21 >> 1 > v20)
          {
            v20 = v21 >> 1;
          }

          v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
          v23 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v23 = v20;
          }

          if (v23)
          {
            sub_232C86538(a4, v23);
          }

          *(4 * v19) = v13;
          v16 = 4 * v19 + 4;
          memcpy(0, v17, v18);
          v24 = *a4;
          *a4 = 0;
          a4[1] = v16;
          a4[2] = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v15 = v13;
          v16 = (v15 + 4);
        }

        a4[1] = v16;
      }

      v11 += 4;
    }

    if (a3 && ((*a1)[23])(a1))
    {
      if (a3 < 3 || (*a2 == 38626 ? (v25 = a2[2] == 129) : (v25 = 0), !v25))
      {
        v42 = *a2;
        sub_232C83330(&__p, "<0x%02X>", &v42);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v28 = ((*a1)[14])(a1, p_p, size);
        v30 = a4[1];
        v29 = a4[2];
        if (v30 >= v29)
        {
          v32 = *a4;
          v33 = v30 - *a4;
          v34 = v33 >> 2;
          v35 = (v33 >> 2) + 1;
          if (v35 >> 62)
          {
            sub_232C84C3C();
          }

          v36 = v29 - v32;
          if (v36 >> 1 > v35)
          {
            v35 = v36 >> 1;
          }

          v22 = v36 >= 0x7FFFFFFFFFFFFFFCLL;
          v37 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v22)
          {
            v37 = v35;
          }

          if (v37)
          {
            sub_232C86538(a4, v37);
          }

          *(4 * v34) = v28;
          v31 = 4 * v34 + 4;
          memcpy(0, v32, v33);
          v38 = *a4;
          *a4 = 0;
          a4[1] = v31;
          a4[2] = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v30 = v28;
          v31 = (v30 + 4);
        }

        a4[1] = v31;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    sub_232CB34D0(a5, a1 + 12);
    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }
  }
}

void sub_232C81D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C81DB0(uint64_t a1)
{
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = &v50;
  v46 = &v47;
  v47 = 0;
  *(a1 + 88) = -1;
  v45[0] = 0;
  v45[1] = 0;
  v44 = v45;
  LOBYTE(v52) = 0;
  sub_232C867B8(&__p, 256, &v52);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (*(v3 + 64) < 1)
  {
LABEL_35:
    if (*(a1 + 88) == -1)
    {
      sub_232CB3420(&v52, 13, "unk is not defined.", 0x13uLL);
      sub_232CB34D4((a1 + 96), &v52);
    }

    else
    {
      v24 = *(v3 + 80);
      if (!v24)
      {
        v24 = &unk_27DDD5398;
      }

      if (v24[248] != 1 || (*&v52 = __p, DWORD2(v52) = 0, sub_232C86F14(&v52, v43, &v40), v40.__r_.__value_.__l.__data_ == __p + 8 * (v43 >> 6)) && LODWORD(v40.__r_.__value_.__r.__words[1]) == (v43 & 0x3F))
      {
        if (!v51 || (sub_232C82660((a1 + 24), &v49, &v52), sub_232CB34D4((a1 + 96), &v52), sub_232CB32BC(&v52), (*(*a1 + 16))(&v52, a1), v25 = v52, sub_232CB32BC(&v52), !v25))
        {
          if (!v48 || (sub_232C82660((a1 + 56), &v46, &v52), sub_232CB34D4((a1 + 96), &v52), sub_232CB32BC(&v52), (*(*a1 + 16))(&v52, a1), v26 = v52, sub_232CB32BC(&v52), !v26))
          {
            sub_232C82B28();
          }
        }

        goto LABEL_69;
      }

      sub_232CB34D4((a1 + 96), &v52);
    }

LABEL_68:
    sub_232CB32BC(&v52);
    goto LABEL_69;
  }

  v4 = 0;
  while (1)
  {
    v5 = sub_232C84D2C(v3 + 56, v4);
    v6 = v5;
    v7 = *(v5 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    if (v8 < 0)
    {
      if (!*(v7 + 8))
      {
LABEL_47:
        sub_232CB3420(&v52, 13, "piece must not be empty.", 0x18uLL);
        sub_232CB34D4((a1 + 96), &v52);
        goto LABEL_68;
      }
    }

    else if (!*(v7 + 23))
    {
      goto LABEL_47;
    }

    v9 = *(v5 + 60);
    v10 = v9 > 5;
    v11 = (1 << v9) & 0x32;
    if (v10 || v11 == 0)
    {
      v13 = &v46;
    }

    else
    {
      v13 = &v49;
    }

    if ((v8 & 0x80000000) != 0)
    {
      v14 = v7;
      v7 = *v7;
      v8 = *(v14 + 8);
    }

    *&v52 = v7;
    *(&v52 + 1) = v8;
    LODWORD(v53) = v4;
    sub_232C86A7C(v13, &v52, &v52);
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = *(v6 + 60);
    if (v16 == 4)
    {
      v17 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      if (v18 < 0)
      {
        v17 = *v17;
        v18 = *((*(v6 + 48) & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      *&v52 = v17;
      *(&v52 + 1) = v18;
      sub_232C86E80(&v44, &v52, &v52);
      v16 = *(v6 + 60);
    }

    if (v16 == 6)
    {
      v19 = *(v3 + 80);
      if (!v19)
      {
        v19 = &unk_27DDD5398;
      }

      if ((v19[248] & 1) == 0)
      {
        std::operator+<char>();
        v35 = *&v34->__r_.__value_.__l.__data_;
        v53 = v34->__r_.__value_.__r.__words[2];
        v52 = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        if (v53 >= 0)
        {
          v36 = &v52;
        }

        else
        {
          v36 = v52;
        }

LABEL_75:
        v39 = strlen(v36);
        sub_232CB3420(&v41, 13, v36, v39);
        sub_232CB34D4((a1 + 96), &v41);
        sub_232CB32BC(&v41);
        if (SHIBYTE(v53) < 0)
        {
          operator delete(v52);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          v33 = v40.__r_.__value_.__r.__words[0];
          goto LABEL_79;
        }

        goto LABEL_69;
      }

      v20 = *(v6 + 48);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFELL);
      v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if ((v22 & 0x8000000000000000) != 0)
      {
        v21 = *v21;
        v22 = *((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      v23 = sub_232C8250C(v21, v22);
      if ((v23 & 0x80000000) != 0)
      {
        std::operator+<char>();
        v37 = std::string::append(&v40, " is invalid.");
        v38 = *&v37->__r_.__value_.__l.__data_;
        v53 = v37->__r_.__value_.__r.__words[2];
        v52 = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        if (v53 >= 0)
        {
          v36 = &v52;
        }

        else
        {
          v36 = v52;
        }

        goto LABEL_75;
      }

      *(__p + ((v23 >> 3) & 0x1FFFFFF8)) |= 1 << v23;
    }

    else if (v16 == 2)
    {
      if ((*(a1 + 88) & 0x80000000) == 0)
      {
        sub_232CB3420(&v52, 13, "unk is already defined.", 0x17uLL);
        sub_232CB34D4((a1 + 96), &v52);
        goto LABEL_68;
      }

      *(a1 + 88) = v4;
    }

    if (++v4 >= *(v3 + 64))
    {
      goto LABEL_35;
    }
  }

  v27 = *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v27 + 23) >= 0)
  {
    v28 = *(v27 + 23);
  }

  else
  {
    v28 = *(v27 + 8);
  }

  v29 = &v52;
  sub_232C86DF4(&v52, v28 + 20);
  if (v53 < 0)
  {
    v29 = v52;
  }

  if (v28)
  {
    if (*(v27 + 23) >= 0)
    {
      v30 = v27;
    }

    else
    {
      v30 = *v27;
    }

    memmove(v29, v30, v28);
  }

  strcpy(v29 + v28, " is already defined.");
  if (v53 >= 0)
  {
    v31 = &v52;
  }

  else
  {
    v31 = v52;
  }

  v32 = strlen(v31);
  sub_232CB3420(&v40, 13, v31, v32);
  sub_232CB34D4((a1 + 96), &v40);
  sub_232CB32BC(&v40);
  if (SHIBYTE(v53) < 0)
  {
    v33 = v52;
LABEL_79:
    operator delete(v33);
  }

LABEL_69:
  if (__p)
  {
    operator delete(__p);
  }

  sub_232C86764(&v44, v45[0]);
  sub_232C86764(&v46, v47);
  sub_232C86764(&v49, v50);
}

void sub_232C823F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26)
{
  sub_232CB32BC(&a15);
  if (*(v26 - 89) < 0)
  {
    operator delete(*(v26 - 112));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  sub_232C86764(&a19, a20);
  sub_232C86764(&a22, a23);
  sub_232C86764(&a25, a26);
  _Unwind_Resume(a1);
}

uint64_t sub_232C8250C(void *__src, size_t __len)
{
  if ((atomic_load_explicit(&qword_27DDD4D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DDD4D58))
  {
    sub_232C833E0();
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_232C85C94();
  }

  v4 = qword_27DDD4D50;
  if (__len >= 0x17)
  {
    operator new();
  }

  v9 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  v5 = sub_232C8703C(v4, &__dst);
  v6 = v5;
  if (v9 < 0)
  {
    operator delete(__dst);
    if (v6)
    {
      return *(v6 + 40);
    }
  }

  else if (v5)
  {
    return *(v6 + 40);
  }

  return 0xFFFFFFFFLL;
}

void sub_232C82660(void *a1@<X0>, void *a2@<X1>, uint64_t *a4@<X8>)
{
  if (a2[2])
  {
    __p = 0;
    v32 = 0;
    v33 = 0;
    __src = 0;
    v29 = 0;
    v30 = 0;
    v5 = a2 + 1;
    v4 = *a2;
    while (1)
    {
      v6 = v4[4];
      v7 = v32;
      if (v32 >= v33)
      {
        v9 = (v32 - __p) >> 3;
        if ((v9 + 1) >> 61)
        {
          sub_232C84C3C();
        }

        v10 = (v33 - __p) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v33 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          sub_232C87138(&__p, v11);
        }

        v12 = (8 * v9);
        *v12 = v6;
        v8 = 8 * v9 + 8;
        v13 = v12 - (v32 - __p);
        memcpy(v13, __p, v32 - __p);
        v14 = __p;
        __p = v13;
        v32 = v8;
        v33 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v32 = v6;
        v8 = (v7 + 8);
      }

      v32 = v8;
      v15 = v29;
      if (v29 >= v30)
      {
        v17 = __src;
        v18 = v29 - __src;
        v19 = (v29 - __src) >> 2;
        v20 = v19 + 1;
        if ((v19 + 1) >> 62)
        {
          sub_232C84C3C();
        }

        v21 = v30 - __src;
        if ((v30 - __src) >> 1 > v20)
        {
          v20 = v21 >> 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v22 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          sub_232C86538(&__src, v22);
        }

        *(4 * v19) = *(v4 + 12);
        v16 = 4 * v19 + 4;
        memcpy(0, v17, v18);
        v23 = __src;
        __src = 0;
        v29 = v16;
        v30 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v29 = *(v4 + 12);
        v16 = (v15 + 4);
      }

      v29 = v16;
      v24 = v4[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v4[2];
          v26 = *v25 == v4;
          v4 = v25;
        }

        while (!v26);
      }

      v4 = v25;
      if (v25 == v5)
      {
        sub_232C834C8(a1, (v32 - __p) >> 3, __p, 0, __src, 0);
      }
    }
  }

  sub_232CB3420(a4, 13, "no pieces are loaded.", 0x15uLL);
}

void sub_232C82AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C82B98(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v32;
  }

  else
  {
    v4 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v4->__r_.__value_.__l.__data_) = *(a1 + 88);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v32;
  }

  else
  {
    v5 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v5, size);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  memset(&v32, 0, sizeof(v32));
  std::string::resize(&v32, 4uLL, 0);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v32;
  }

  else
  {
    v7 = v32.__r_.__value_.__r.__words[0];
  }

  LODWORD(v7->__r_.__value_.__l.__data_) = *(a1 + 92);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v32;
  }

  else
  {
    v8 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  sub_232C8B7AC(*(a1 + 16), &v32);
  v10 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  v11 = v32.__r_.__value_.__r.__words[1];
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((v10 & 0x80u) == 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(p_p->__r_.__value_.__l.__data_) = v12;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v32;
  }

  else
  {
    v16 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v32.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v16, v17);
  sub_232CB16E0(a2);
  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v20 = 4 * v19;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v21->__r_.__value_.__l.__data_) = v20;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v22, v23);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v18, v20);
  sub_232CB16E0(a2);
  v26 = a1 + 64;
  v24 = *(a1 + 64);
  v25 = *(v26 + 8);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  v27 = 4 * v24;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &__p;
  }

  else
  {
    v28 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v28->__r_.__value_.__l.__data_) = v27;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v29, v30);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, v25, v27);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_232C82E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C82ED8(unsigned __int8 *__s1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, const void **a5@<X8>)
{
  v8 = &__s1[a2];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if ((a3 & 1) == 0)
  {
    if (a2 < 1)
    {
      return;
    }

    v9 = 0;
    v10 = 0;
    v11 = __s1;
    while (1)
    {
      v12 = asc_232D0C525[*v11 >> 4];
      if (v8 - v11 < v12)
      {
        v12 = v8 - v11;
      }

      v13 = v12;
      if (v12 == 3)
      {
        v14 = memcmp(v11, "▁", 3uLL);
        v15 = v14 == 0;
        if (v11 == __s1)
        {
          goto LABEL_16;
        }

        if ((v10 & a4 & 1) == 0 && !v14)
        {
          v15 = 1;
LABEL_16:
          v16 = a5[2];
          if (v9 >= v16)
          {
            v17 = *a5;
            v18 = v9 - *a5;
            v19 = v18 >> 4;
            v20 = (v18 >> 4) + 1;
            if (v20 >> 60)
            {
              sub_232C84C3C();
            }

            v21 = v16 - v17;
            if (v21 >> 3 > v20)
            {
              v20 = v21 >> 3;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFF0;
            v23 = 0xFFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              sub_232C86FF4(a5, v23);
            }

            v24 = (16 * v19);
            *v24 = v11;
            v24[1] = 0;
            v9 = (16 * v19 + 16);
            memcpy(0, v17, v18);
            v25 = *a5;
            *a5 = 0;
            a5[1] = v9;
            a5[2] = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v9 = v11;
            *(v9 + 1) = 0;
            v9 += 16;
          }

          a5[1] = v9;
          goto LABEL_30;
        }

        if (v10)
        {
          v15 = v10 & (v14 == 0);
          goto LABEL_30;
        }
      }

      else if (v11 == __s1)
      {
        v15 = 0;
        goto LABEL_16;
      }

      v15 = 0;
LABEL_30:
      *(v9 - 1) += v13;
      v11 += v13;
      v10 = v15;
      if (v11 >= v8)
      {
        return;
      }
    }
  }

  if (a2 >= 1)
  {
    sub_232C86FF4(a5, 1uLL);
  }
}

void sub_232C832FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C83330@<X0>(std::string *__return_ptr a1@<X8>, char *__format@<X0>, unsigned __int8 *a3@<X1>)
{
  v6 = snprintf(0, 0, __format, *a3);
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  std::string::resize(a1, v6, 0);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  return snprintf(v8, size + 1, __format, *a3);
}

void sub_232C833C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C834AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C834C8(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(unint64_t, uint64_t))
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v6 = a6;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  sub_232C87180(&v6, v12);
}

uint64_t sub_232C83608@<X0>(void *a1@<X8>)
{
  result = sub_232CB1330();
  if (result <= 2)
  {
    v10 = 0;
    v3 = sub_232C85DAC(MEMORY[0x277D82670], "model_interface.h", 17);
    v4 = sub_232C85DAC(v3, "(", 1);
    v5 = MEMORY[0x238392A80](v4, 96);
    v6 = sub_232C85DAC(v5, ") ", 2);
    v7 = sub_232C85DAC(v6, "LOG(", 4);
    v8 = sub_232C85DAC(v7, "ERROR", 5);
    v9 = sub_232C85DAC(v8, ") ", 2);
    sub_232C85DAC(v9, "Not implemented.", 16);
    result = sub_232C83EEC(&v10);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_232C836E4@<X0>(void *a1@<X8>)
{
  result = sub_232CB1330();
  if (result <= 2)
  {
    v10 = 0;
    v3 = sub_232C85DAC(MEMORY[0x277D82670], "model_interface.h", 17);
    v4 = sub_232C85DAC(v3, "(", 1);
    v5 = MEMORY[0x238392A80](v4, 102);
    v6 = sub_232C85DAC(v5, ") ", 2);
    v7 = sub_232C85DAC(v6, "LOG(", 4);
    v8 = sub_232C85DAC(v7, "ERROR", 5);
    v9 = sub_232C85DAC(v8, ") ", 2);
    sub_232C85DAC(v9, "Not implemented.", 16);
    result = sub_232C83EEC(&v10);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void sub_232C837C0(uint64_t *a1@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  if (sub_232CB1330() <= 2)
  {
    LOBYTE(__p) = 0;
    v2 = sub_232C85DAC(MEMORY[0x277D82670], "model_interface.h", 17);
    v3 = sub_232C85DAC(v2, "(", 1);
    v4 = MEMORY[0x238392A80](v3, 117);
    v5 = sub_232C85DAC(v4, ") ", 2);
    v6 = sub_232C85DAC(v5, "LOG(", 4);
    v7 = sub_232C85DAC(v6, "ERROR", 5);
    v8 = sub_232C85DAC(v7, ") ", 2);
    sub_232C85DAC(v8, "Not implemented.", 16);
    sub_232C83EEC(&__p);
  }

  __p = 0;
  v10 = 0;
  v12 = 0;
  v11 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_232C85868(a1, &__p, &v13, 1uLL);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_232C838E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_232C83914()
{
  if (sub_232CB1330() <= 2)
  {
    v8 = 0;
    v0 = sub_232C85DAC(MEMORY[0x277D82670], "model_interface.h", 17);
    v1 = sub_232C85DAC(v0, "(", 1);
    v2 = MEMORY[0x238392A80](v1, 125);
    v3 = sub_232C85DAC(v2, ") ", 2);
    v4 = sub_232C85DAC(v3, "LOG(", 4);
    v5 = sub_232C85DAC(v4, "ERROR", 5);
    v6 = sub_232C85DAC(v5, ") ", 2);
    sub_232C85DAC(v6, "Not implemented.", 16);
    sub_232C83EEC(&v8);
  }

  return 0.0;
}

uint64_t sub_232C83A30(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_232C83B50(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t *sub_232C83BBC(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_232C83D28((a1 + 1), 16);
  return a1;
}

void sub_232C83D00(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x238392BA0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_232C83D28(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x238392B50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_232C83DE4(a1);
  return a1;
}

void sub_232C83DBC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_232C83DE4(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

_BYTE *sub_232C83EEC(_BYTE *a1)
{
  std::ios_base::getloc((MEMORY[0x277D82670] + *(*MEMORY[0x277D82670] - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  if (*a1 == 1)
  {
    sub_232CB3168();
  }

  return a1;
}

unint64_t sub_232C83FCC(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v9 = *(a1 + 16);
  v10 = *v9;
  if (a5)
  {
    v11 = *a2;
    v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v11;
    v10 = v9[v12];
    if ((v10 & 0x800000FF) == v11)
    {
      v13 = a5 - 1;
      v14 = a2 + 1;
      while (1)
      {
        v15 = v12;
        if (!v13)
        {
          goto LABEL_16;
        }

        v16 = *v14++;
        v12 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v16;
        v10 = v9[v12];
        --v13;
        if ((v10 & 0x800000FF) != v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v17 = *a2;
    if (!*a2)
    {
      v15 = 0;
      LODWORD(v12) = 0;
LABEL_16:
      if ((v10 & 0x100) != 0)
      {
        v22 = v9[(v10 >> 10 << ((v10 >> 6) & 8)) ^ v12] & 0x7FFFFFFF;
      }

      else
      {
        v22 = -1;
      }

      goto LABEL_19;
    }

    v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v17;
    v10 = v9[v18];
    if ((v10 & 0x800000FF) == v17)
    {
      v19 = a2 + 1;
      LODWORD(v12) = v18;
      while (1)
      {
        v15 = v18;
        v21 = *v19++;
        v20 = v21;
        if (!v21)
        {
          goto LABEL_16;
        }

        v18 = (v10 >> 10 << ((v10 >> 6) & 8)) ^ v12 ^ v20;
        v10 = v9[v18];
        LODWORD(v12) = v18;
        if ((v10 & 0x800000FF) != v20)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v15 = 0;
LABEL_14:
  v22 = -2;
LABEL_19:
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v41.n128_u32[0] = 0;
  v41.n128_u64[1] = v15;
  v42 = v22;
  sub_232C84304(v43, &v41);
  v23 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v24 = 0;
    do
    {
      v25 = (*(*(&v43[0] + 1) + 8 * (v44 / 0xAA)) + 24 * (v44 % 0xAA));
      v26 = *v25;
      v27 = v25[2];
      v28 = v25[4];
      *&v44 = v44 + 1;
      *(&v44 + 1) = v23 - 1;
      if (v44 >= 0x154)
      {
        operator delete(**(&v43[0] + 1));
        *(&v43[0] + 1) += 8;
        *&v44 = v44 - 170;
      }

      if ((v28 & 0x80000000) == 0)
      {
        v29 = a3 + 16 * v24;
        *v29 = v28;
        *(v29 + 8) = a5;
        ++v24;
      }

      v31 = a6 >= 0 && v26 > a6;
      if (v24 >= a4 || v31)
      {
        break;
      }

      if (v28 != -2)
      {
        v32 = v26 + 1;
        for (i = 1; i != 256; ++i)
        {
          v34 = *(a1 + 16);
          v35 = (*(v34 + 4 * v27) >> 10 << ((*(v34 + 4 * v27) >> 6) & 8)) ^ v27 ^ i;
          v36 = *(v34 + 4 * v35);
          if (i == (v36 & 0x800000FF))
          {
            if ((v36 & 0x100) != 0)
            {
              v37 = *(v34 + 4 * ((v36 >> 10 << ((v36 >> 6) & 8)) ^ v35)) & 0x7FFFFFFF;
            }

            else
            {
              v37 = -1;
            }

            v41.n128_u32[0] = v32;
            v41.n128_u64[1] = v35;
            v42 = v37;
            sub_232C84304(v43, &v41);
          }
        }
      }

      v23 = *(&v44 + 1);
    }

    while (*(&v44 + 1));
  }

  else
  {
    v24 = 0;
  }

  sub_232C84A2C(v43);
  return v24;
}

void sub_232C842BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_232C84A2C(va);
  _Unwind_Resume(a1);
}

void sub_232C842D4(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    sub_232C84B28(result, a2 - v2);
  }
}

__n128 sub_232C84304(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_232C843B4(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  result = *a2;
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  *v8 = result;
  ++a1[5];
  return result;
}

void sub_232C843B4(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_232C849E4(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_232C84588(a1, &v9);
}

void sub_232C8453C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_232C84588(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_232C849E4(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_232C84690(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_232C849E4(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_232C8479C(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_232C849E4(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_232C848A4(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_232C849E4(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_232C849B0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_232C849E4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_232C849B0();
}

uint64_t sub_232C84A2C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 170;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_232C84AD8(a1);
}

uint64_t sub_232C84AD8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_232C84B28(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_232C84C3C();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_232C84CE4(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_232C84C54(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_232C84CB0(exception, a1);
  __cxa_throw(exception, off_2789A6DF8, MEMORY[0x277D825F0]);
}

std::logic_error *sub_232C84CB0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_232C84CE4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_232C849B0();
}

uint64_t sub_232C84D2C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_232C84DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

const void **sub_232C84E0C(float *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_232C8508C(a1, a2);
  v7 = v6;
  v8 = *(a1 + 2);
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_232C85538(a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

unint64_t sub_232C8508C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_232C850CC(&v5, a2, v3);
}

unint64_t sub_232C850CC(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_232C85478(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_232C853CC(a2, a3);
  }

  else
  {
    return sub_232C852D4(a2, a3);
  }
}

unint64_t sub_232C852D4(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_232C853CC(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_232C85478(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL sub_232C85538(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_232C855B0(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_232C856A0(result, prime);
    }
  }
}

void sub_232C856A0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_232C849B0();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_232C85804(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_232C85868(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_232C858F0(result, a4);
  }

  return result;
}

void sub_232C858D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_232C85BE8(&a9);
  _Unwind_Resume(a1);
}

void sub_232C858F0(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_232C8592C(a1, a2);
  }

  sub_232C84C3C();
}

void sub_232C8592C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_232C849B0();
}

uint64_t sub_232C85974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      sub_232C85A3C(v4, *v6, *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - *v6) >> 3));
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_232C85B60(v8);
  return v4;
}

uint64_t *sub_232C85A3C(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_232C85ABC(result, a4);
  }

  return result;
}

void sub_232C85AA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C85ABC(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_232C85B08(a1, a2);
  }

  sub_232C84C3C();
}

void sub_232C85B08(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_232C849B0();
}

uint64_t sub_232C85B60(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_232C85B98(a1);
  }

  return a1;
}

void sub_232C85B98(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 32);
      v3 -= 32;
      v4 = v5;
      if (v5)
      {
        *(v1 - 24) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_232C85BE8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_232C85C3C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_232C85C3C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 32);
      v4 -= 32;
      v5 = v6;
      if (v6)
      {
        *(v2 - 24) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_232C85CAC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2848148B0;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x238392BE0](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  JUMPOUT(0x238392C10);
}

void sub_232C85D30(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    JUMPOUT(0x238392C10);
  }
}

void *sub_232C85DAC(void *a1, const char *a2, uint64_t a3, ...)
{
  MEMORY[0x238392A20](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = &a2[a3];
    }

    else
    {
      v11 = a2;
    }

    if (!sub_232C85F54(v7, a2, v11, &a2[a3], v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x238392A30](v13);
  return a1;
}

void sub_232C85EEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x238392A30](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x232C85ECCLL);
}

uint64_t sub_232C85F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_232C85C94();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_232C86120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_232C8613C(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_232C861B4(a1, a2);
  }

  return a1;
}

void sub_232C86198(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_232C861B4(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_232C84CE4(a1, a2);
  }

  sub_232C84C3C();
}

void *sub_232C861F0(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *(a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_232C85C94();
  }

  v5 = *a2;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v3[23] = v4;
  if (v4)
  {
    result = memmove(v3, v5, v4);
  }

  v3[v4] = 0;
  v2[1] = v3 + 24;
  return result;
}

char *sub_232C862B4(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_232C84C3C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_232C8644C(a1, v6);
  }

  v7 = 24 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  v19 = 0;
  v8 = *(a2 + 8);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_232C85C94();
  }

  v9 = *a2;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(v7 + 23) = v8;
  if (v8)
  {
    memmove(v7, v9, v8);
  }

  *(v7 + v8) = 0;
  v10 = v18 + 24;
  v11 = a1[1] - *a1;
  v12 = &v17[-v11];
  memcpy(&v17[-v11], *a1, v11);
  v13 = *a1;
  *a1 = v12;
  a1[1] = v10;
  v14 = a1[2];
  a1[2] = v19;
  v18 = v13;
  v19 = v14;
  v16 = v13;
  v17 = v13;
  sub_232C864A4(&v16);
  return v10;
}

void sub_232C86438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C864A4(va);
  _Unwind_Resume(a1);
}

void sub_232C8644C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_232C849B0();
}

uint64_t sub_232C864A4(uint64_t a1)
{
  sub_232C864DC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_232C864DC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_232C86538(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_232C849B0();
}

uint64_t sub_232C86580(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_232C84C3C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_232C8644C(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_232C866C0(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_232C864A4(&v17);
  return v11;
}

void sub_232C866AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232C864A4(va);
  _Unwind_Resume(a1);
}

void *sub_232C866C0(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_232C85C94();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_232C86764(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_232C86764(a1, *a2);
    sub_232C86764(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *sub_232C867B8(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_232C8688C(a1, a2);
  }

  return a1;
}

void sub_232C8688C(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_232C868D0(a1, v2);
  }

  sub_232C84C3C();
}

void sub_232C868D0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_232C849B0();
}

void *sub_232C86918(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void sub_232C869CC(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t sub_232C86A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *sub_232C86B18(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_232C86B18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_232C86C0C(a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_232C86C0C(a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *sub_232C86BB4(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_232C86C58(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_232C86C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = memcmp(v3, v5, v7);
  if (v4 < v6)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (v4 == v6)
  {
    v9 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  return v9 >> 31;
}

uint64_t *sub_232C86C58(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_232C86DF4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_232C85C94();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

uint64_t sub_232C86E80(uint64_t **a1, uint64_t a2, _OWORD *a3)
{
  v3 = *sub_232C86B18(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_232C86F14@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *result;
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = (64 - v3);
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = (64 - v3);
  }

  if (((0xFFFFFFFFFFFFFFFFLL >> (64 - v3 - v6)) & (-1 << v3) & ~*v4) != 0)
  {
    v7 = __rbit64((0xFFFFFFFFFFFFFFFFLL >> (64 - v3 - v6)) & (-1 << v3) & ~*v4);
LABEL_17:
    *a3 = v4;
    *(a3 + 8) = __clz(v7);
    return result;
  }

  if (v5 < a2)
  {
    a2 -= v6;
    *result = ++v4;
LABEL_9:
    if (a2 < 0x40)
    {
LABEL_12:
      if (!a2 || (v8 = (0xFFFFFFFFFFFFFFFFLL >> -a2) & ~*v4) == 0)
      {
        *a3 = v4;
        *(a3 + 8) = a2;
        return result;
      }
    }

    else
    {
      while (*v4 == -1)
      {
        *result = ++v4;
        a2 -= 64;
        if (a2 <= 0x3F)
        {
          goto LABEL_12;
        }
      }

      v8 = ~*v4;
    }

    v7 = __rbit64(v8);
    goto LABEL_17;
  }

  *a3 = &v4[(v3 + a2) >> 6];
  *(a3 + 8) = (v3 + a2) & 0x3F;
  return result;
}

void sub_232C86FF4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_232C849B0();
}

const void **sub_232C8703C(void *a1, uint64_t *a2)
{
  v4 = sub_232C8508C(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (sub_232C85538(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_232C87138(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_232C849B0();
}

void sub_232C87180(void (**a1)(unint64_t, uint64_t), unint64_t *a2)
{
  if (a2[3])
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    sub_232C87740(a1, a2, v2);
  }

  sub_232C87B6C(a1, a2);
}

uint64_t *sub_232C87274(uint64_t *a1)
{
  sub_232C872C0(a1);
  if (*a1)
  {
    MEMORY[0x238392BE0](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_232C872C0(uint64_t *a1)
{
  sub_232C8730C(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x238392BE0](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t *sub_232C8730C(uint64_t *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 > a2)
  {
    result[1] = a2;
    v2 = a2;
  }

  if (result[2] < a2)
  {
    sub_232C8736C(result, a2);
  }

  if (v2 < a2)
  {
    result[1] = a2;
  }

  return result;
}

void sub_232C8736C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 2 * a1[2])
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

void sub_232C874AC(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x238392C10);
}

const char *sub_232C874E4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return *(a1 + 8);
  }

  else
  {
    return "";
  }
}

uint64_t *sub_232C874FC(uint64_t *a1)
{
  sub_232C87548(a1);
  if (*a1)
  {
    MEMORY[0x238392BE0](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_232C87548(uint64_t *a1)
{
  sub_232C87594(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x238392BE0](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void sub_232C87594(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  if (v4 > a2)
  {
    a1[1] = a2;
    v4 = a2;
  }

  if (a1[2] < a2)
  {
    sub_232C87604(a1, a2);
  }

  if (a2 > v4)
  {
    bzero((*a1 + 4 * v4), 4 * (a2 - v4));
    a1[1] = a2;
  }
}

void sub_232C87604(uint64_t *a1, unint64_t a2)
{
  if (a2 < 2 * a1[2])
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

void sub_232C87740(void (**a1)(unint64_t, uint64_t), unint64_t *a2, int **a3)
{
  sub_232C885B8(a3);
  if (*a2)
  {
    v6 = 0;
    do
    {
      v7 = a2[2];
      v8 = *(a2[1] + 8 * v6);
      if (v7)
      {
        v9 = *(v7 + 8 * v6);
      }

      else
      {
          ;
        }

        v9 = v7 - 1;
      }

      v11 = a2[3];
      if (v11)
      {
        v12 = *(v11 + 4 * v6);
      }

      else
      {
        v12 = v6;
      }

      sub_232C8868C(a3, v8, v9, v12);
      ++v6;
      if (*a1)
      {
        (*a1)(v6, *a2 + 1);
      }
    }

    while (v6 < *a2);
  }

  sub_232C88B38(a3, 0);
  v13 = *a3;
  v14 = *(*a3 + 8);
  v15 = **a3;
  if (v14)
  {
    if (*(v13 + 9))
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 | (4 * v15);
  }

  else
  {
    v17 = 2 * v15;
  }

  *a3[3] = v17 | *(v13 + 10);
  *a3[6] = v14;
  sub_232C88398(a3);
  sub_232C87E34(a3 + 15);
  sub_232C87E34(a3 + 18);
  sub_232C87E34(a3 + 21);

  sub_232C88F68(a3 + 9);
}

void sub_232C87870(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = 1;
  do
  {
    v4 = v3;
    v3 *= 2;
  }

  while (v4 < v2);
  if (*(a1 + 24) < v4)
  {
    sub_232C87604((a1 + 8), v4);
  }

  operator new[]();
}

void sub_232C87B6C(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = 1;
  do
  {
    v4 = v3;
    v3 *= 2;
  }

  while (v4 < v2);
  if (*(a1 + 24) < v4)
  {
    sub_232C87604((a1 + 8), v4);
  }

  operator new[]();
}

uint64_t *sub_232C87DF8(uint64_t *a1)
{
  sub_232C87E34(a1);

  return sub_232C8801C(a1);
}

uint64_t sub_232C87E34(uint64_t *a1)
{
  sub_232C87E80(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x238392BE0](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t *sub_232C87E80(uint64_t *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 > a2)
  {
    result[1] = a2;
    v2 = a2;
  }

  if (result[2] < a2)
  {
    sub_232C87EE0(result, a2);
  }

  if (v2 < a2)
  {
    result[1] = a2;
  }

  return result;
}

void sub_232C87EE0(uint64_t *a1, unint64_t a2)
{
  if (a2 < 2 * a1[2])
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

uint64_t *sub_232C8801C(uint64_t *a1)
{
  sub_232C87E34(a1);
  if (*a1)
  {
    MEMORY[0x238392BE0](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t *sub_232C88068(uint64_t *a1)
{
  sub_232C880C4(a1);
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x238392BE0](v2, 0x1000C8052888210);
    a1[3] = 0;
  }

  return sub_232C8801C(a1);
}

uint64_t sub_232C880C4(uint64_t *a1)
{
  sub_232C87E34(a1);
  result = a1[3];
  if (result)
  {
    result = MEMORY[0x238392BE0](result, 0x1000C8052888210);
    a1[3] = 0;
  }

  return result;
}

uint64_t *sub_232C88108(uint64_t *a1)
{
  sub_232C88154(a1);
  if (*a1)
  {
    MEMORY[0x238392BE0](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_232C88154(uint64_t *a1)
{
  sub_232C881A0(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x238392BE0](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void sub_232C881A0(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  if (v4 > a2)
  {
    a1[1] = a2;
    v4 = a2;
  }

  if (a1[2] < a2)
  {
    sub_232C88210(a1, a2);
  }

  if (a2 > v4)
  {
    bzero((*a1 + 4 * v4), 4 * (a2 - v4));
    a1[1] = a2;
  }
}

void sub_232C88210(uint64_t *a1, unint64_t a2)
{
  if (a2 < 2 * a1[2])
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

uint64_t *sub_232C8834C(uint64_t *a1)
{
  sub_232C88398(a1);
  if (*a1)
  {
    MEMORY[0x238392BE0](*a1, 0x1000C8077774924);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_232C88398(uint64_t *a1)
{
  sub_232C883E4(a1, 0);
  result = *a1;
  if (*a1)
  {
    result = MEMORY[0x238392BE0](result, 0x1000C8077774924);
    *a1 = 0;
  }

  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t *sub_232C883E4(uint64_t *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 > a2)
  {
    result[1] = a2;
    v2 = a2;
  }

  if (result[2] < a2)
  {
    sub_232C88468(result, a2);
  }

  for (; v2 < a2; v2 = result[1])
  {
    result[1] = v2 + 1;
    v3 = *result + 12 * v2;
    *(v3 + 7) = 0;
    *v3 = 0;
  }

  return result;
}

void sub_232C88468(uint64_t *a1, unint64_t a2)
{
  if (a2 < 2 * a1[2])
  {
    v2 = 1;
    do
    {
      v3 = v2;
      v2 *= 2;
    }

    while (v3 < a2);
  }

  operator new[]();
}

uint64_t *sub_232C885B8(uint64_t *a1)
{
  v7 = 0;
  sub_232C888E4(a1 + 15, 0x400uLL, &v7);
  v2 = a1[22];
  if (v2)
  {
    v3 = *a1 + 12 * *(a1[21] + 4 * v2 - 4);
    *(v3 + 7) = 0;
    *v3 = 0;
    --a1[22];
  }

  else
  {
    sub_232C889F0(a1);
  }

  sub_232C88A48(a1 + 9);
  sub_232C88A98(a1 + 3);
  v4 = a1[7];
  if (v4 == a1[8])
  {
    sub_232C8736C(a1 + 6, v4 + 1);
  }

  a1[7] = v4 + 1;
  a1[24] = 1;
  *(*a1 + 8) = -1;
  v6 = 0;
  return sub_232C88AE4(a1 + 18, &v6);
}

void *sub_232C8868C(void *result, uint64_t a2, unint64_t a3, int a4)
{
  if (a4 < 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1106: exception: failed to insert key: negative value";
    goto LABEL_25;
  }

  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1108: exception: failed to insert key: zero-length key";
LABEL_25:
    *exception = &unk_2848148F8;
    exception[1] = v24;
    __cxa_throw(exception, &unk_2848148D0, std::exception::~exception);
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = *result;
  while (1)
  {
    v11 = *(v10 + 12 * v8);
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = *(a2 + v9);
    if (v9 < a3 && !*(a2 + v9))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1122: exception: failed to insert key: invalid null character";
      goto LABEL_25;
    }

    v13 = v10 + 12 * v11;
    v14 = *(v13 + 8);
    if (v12 < v14)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v24 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1127: exception: failed to insert key: wrong key order";
      goto LABEL_25;
    }

    if (v12 > v14)
    {
      break;
    }

    ++v9;
    v8 = *(v10 + 12 * v8);
    if (v9 > a3)
    {
      return result;
    }
  }

  *(v13 + 10) = 1;
  result = sub_232C88B38(result, v11);
LABEL_12:
  while (v9 <= a3)
  {
    if (v9 >= a3)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + v9);
    }

    v16 = v7[22];
    if (v16)
    {
      v17 = *(v7[21] + 4 * v16 - 4);
      v18 = *v7 + 12 * v17;
      *(v18 + 7) = 0;
      *v18 = 0;
      --v7[22];
    }

    else
    {
      v17 = *(v7 + 2);
      sub_232C889F0(v7);
    }

    v25 = v17;
    v19 = *v7;
    v20 = (*v7 + 12 * v8);
    v21 = *v20;
    if (!*v20)
    {
      *(v19 + 12 * v17 + 9) = 1;
    }

    *(v19 + 12 * v17 + 4) = v21;
    v22 = v25;
    *(v19 + 12 * v25 + 8) = v15;
    *v20 = v22;
    result = sub_232C88AE4(v7 + 18, &v25);
    v8 = v25;
    ++v9;
  }

  *(*v7 + 12 * v8) = a4;
  return result;
}

uint64_t *sub_232C888E4(uint64_t *result, unint64_t a2, int *a3)
{
  v3 = result[1];
  if (v3 > a2)
  {
    result[1] = a2;
    v3 = a2;
  }

  if (result[2] < a2)
  {
    sub_232C87EE0(result, a2);
  }

  v4 = a2 - v3;
  if (a2 > v3)
  {
    v5 = 0;
    v6 = *a3;
    v7 = vdupq_n_s64(v4 - 1);
    v8 = (*result + 4 * v3 + 8);
    do
    {
      v9 = vdupq_n_s64(v5);
      v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_232CFE360)));
      if (vuzp1_s16(v10, *v7.i8).u8[0])
      {
        *(v8 - 2) = v6;
      }

      if (vuzp1_s16(v10, *&v7).i8[2])
      {
        *(v8 - 1) = v6;
      }

      if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_232D00680)))).i32[1])
      {
        *v8 = v6;
        v8[1] = v6;
      }

      v5 += 4;
      v8 += 4;
    }

    while (((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v5);
    result[1] = a2;
  }

  return result;
}

uint64_t *sub_232C889F0(uint64_t *result)
{
  v1 = result[1];
  if (v1 == result[2])
  {
    sub_232C88468(result, v1 + 1);
  }

  result[1] = v1 + 1;
  v2 = *result + 12 * v1;
  *(v2 + 7) = 0;
  *v2 = 0;
  return result;
}

uint64_t *sub_232C88A48(uint64_t *result)
{
  v1 = result;
  v2 = result[5];
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    result = sub_232C88AE4(result, &v3);
    v2 = v1[5];
  }

  v1[5] = v2 + 1;
  return result;
}

uint64_t *sub_232C88A98(uint64_t *result)
{
  v1 = result[1];
  if (v1 == result[2])
  {
    sub_232C88210(result, v1 + 1);
  }

  result[1] = v1 + 1;
  *(*result + 4 * v1) = 0;
  return result;
}

uint64_t *sub_232C88AE4(uint64_t *result, _DWORD *a2)
{
  v2 = result[1];
  if (v2 == result[2])
  {
    sub_232C87EE0(result, v2 + 1);
  }

  result[1] = v2 + 1;
  *(*result + 4 * v2) = *a2;
  return result;
}

uint64_t sub_232C88B38(uint64_t result, int a2)
{
  v2 = result;
  v3 = *(result + 152);
  v4 = *(*(result + 144) + 4 * v3 - 4);
  if (v4 != a2)
  {
    while (1)
    {
      *(v2 + 152) = v3 - 1;
      v6 = *(v2 + 128);
      if (*(v2 + 192) >= v6 - (v6 >> 2))
      {
        v7 = 2 * v6;
        sub_232C87E34((v2 + 120));
        v34 = 0;
        sub_232C888E4((v2 + 120), v7, &v34);
        v8 = *(v2 + 32);
        if (v8 >= 2)
        {
          v9 = *(v2 + 48);
          for (i = 1; i != v8; ++i)
          {
            if (!*(v9 + i) || (*(*(v2 + 24) + 4 * i) & 2) != 0)
            {
              v11 = 0;
              if (i)
              {
                v12 = i;
                do
                {
                  v13 = *(*(v2 + 24) + 4 * v12);
                  v14 = (v13 ^ ~(*(v9 + v12) << 24)) + (v13 << 15);
                  v15 = 2057 * ((5 * (v14 ^ (v14 >> 12))) ^ ((5 * (v14 ^ (v14 >> 12))) >> 4));
                  v11 ^= HIWORD(v15) ^ v15;
                  v16 = __CFADD__(v12++, 1);
                }

                while (!v16 && (v13 & 1) != 0);
              }

              v17 = *(v2 + 120);
              do
              {
                v18 = v11 % *(v2 + 128);
                v11 = v18 + 1;
              }

              while (*(v17 + 4 * v18));
              *(v17 + 4 * v18) = i;
            }
          }
        }
      }

      v19 = 0;
      if (v4)
      {
        v20 = v4;
        do
        {
          ++v19;
          v20 = *(*v2 + 12 * v20 + 4);
        }

        while (v20);
      }

      v33 = 0;
      result = sub_232C88E08(v2, v4, &v33);
      if (result)
      {
        v21 = result;
        *(*(v2 + 72) + 4 * (result >> 5)) |= 1 << result;
        if (v4)
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      if (!v19)
      {
        break;
      }

      do
      {
        sub_232C88A48((v2 + 72));
        result = sub_232C88A98((v2 + 24));
        v24 = *(v2 + 56);
        if (v24 == *(v2 + 64))
        {
          sub_232C8736C((v2 + 48), v24 + 1);
        }

        *(v2 + 56) = v24 + 1;
        --v19;
      }

      while (v19);
      v25 = *(v2 + 112) - 1;
      if (v4)
      {
        goto LABEL_31;
      }

LABEL_39:
      v21 = v25 + 1;
      *(*(v2 + 120) + 4 * v33) = v25 + 1;
      ++*(v2 + 192);
      if (v4)
      {
        do
        {
LABEL_21:
          v22 = *(*v2 + 12 * v4 + 4);
          v35 = v4;
          result = sub_232C88AE4((v2 + 168), &v35);
          v4 = v22;
        }

        while (v22);
      }

LABEL_22:
      v3 = *(v2 + 152);
      v23 = *(v2 + 144) + 4 * v3;
      *(*v2 + 12 * *(v23 - 4)) = v21;
      v4 = *(v23 - 4);
      if (v4 == a2)
      {
        goto LABEL_2;
      }
    }

    v25 = 0;
    if (!v4)
    {
      goto LABEL_39;
    }

LABEL_31:
    v26 = *v2;
    v27 = v4;
    do
    {
      v28 = v26 + 12 * v27;
      v29 = *(v28 + 8);
      v30 = *v28;
      if (v29)
      {
        if (*(v28 + 9))
        {
          v31 = 2;
        }

        else
        {
          v31 = 0;
        }

        v32 = v31 | (4 * v30);
      }

      else
      {
        v32 = 2 * v30;
      }

      *(*(v2 + 24) + 4 * v25) = v32 | *(v28 + 10);
      *(*(v2 + 48) + v25--) = v29;
      v26 = *v2;
      v27 = *(*v2 + 12 * v27 + 4);
    }

    while (v27);
    goto LABEL_39;
  }

LABEL_2:
  *(v2 + 152) = v3 - 1;
  return result;
}

uint64_t sub_232C88E08(uint64_t *a1, unsigned int a2, _DWORD *a3)
{
  v3 = a2;
  if (a2)
  {
    LODWORD(v4) = 0;
    v5 = a2;
    do
    {
      v6 = *a1 + 12 * v5;
      v7 = *v6;
      if (*(v6 + 8))
      {
        if (*(v6 + 9))
        {
          v8 = 2;
        }

        else
        {
          v8 = 0;
        }

        v9 = v8 | (4 * v7);
      }

      else
      {
        v9 = 2 * v7;
      }

      v10 = ((v9 | *(v6 + 10)) ^ ~(*(v6 + 8) << 24)) + ((v9 | *(v6 + 10)) << 15);
      v11 = 2057 * ((5 * (v10 ^ (v10 >> 12))) ^ ((5 * (v10 ^ (v10 >> 12))) >> 4));
      v4 = v4 ^ HIWORD(v11) ^ v11;
      v5 = *(v6 + 4);
    }

    while (v5);
  }

  else
  {
    v4 = 0;
  }

  v13 = a1[15];
  v12 = a1[16];
  v14 = v4 % v12;
  *a3 = v4 % v12;
  v15 = *(v13 + 4 * (v4 % v12));
  if (v15)
  {
    v16 = *a1;
    v17 = *a1 + 12 * a2;
    v18 = a1[3];
    do
    {
      v19 = *(v17 + 4);
      v20 = v15;
      if (v19)
      {
        v20 = v15;
        while ((*(v18 + 4 * v20) & 1) != 0)
        {
          ++v20;
          LODWORD(v19) = *(v16 + 12 * v19 + 4);
          if (!v19)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        if ((*(v18 + 4 * v20) & 1) == 0)
        {
          if (!v3)
          {
            return v15;
          }

          v21 = v3;
          while (1)
          {
            v22 = (v16 + 12 * v21);
            v23 = *v22;
            if (*(v22 + 8))
            {
              v24 = *(v22 + 9) ? 2 : 0;
              v25 = v24 | (4 * v23);
            }

            else
            {
              v25 = 2 * v23;
            }

            if ((v25 | *(v22 + 10)) != *(v18 + 4 * v20) || *(v22 + 8) != *(a1[6] + v20))
            {
              break;
            }

            v21 = v22[1];
            --v20;
            if (!v21)
            {
              return v15;
            }
          }
        }
      }

      v14 = (v14 + 1) % v12;
      *a3 = v14;
      v15 = *(v13 + 4 * v14);
    }

    while (v15);
  }

  return v15;
}

unsigned int *sub_232C890AC(unsigned int *result, unsigned int a2)
{
  if (a2 >> 29)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_2848148F8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1339: exception: failed to modify unit: too large offset";
    __cxa_throw(exception, &unk_2848148D0, std::exception::~exception);
  }

  v2 = (4 * a2) | 0x200;
  if (a2 < 0x200000)
  {
    v2 = a2 << 10;
  }

  *result = *result & 0x800001FF | v2;
  return result;
}

unsigned int *sub_232C89130(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v8 = a2 + 9;
  v9 = *(a2[3] + 4 * a3);
  v10 = v9 >> 2;
  v11 = v9 >> 7;
  v12 = 1 << (v9 >> 2);
  if ((v12 & *(a2[9] + 4 * (v9 >> 7))) != 0 && (v13 = *(*(a1 + 64) + 4 * (sub_232C89730(a2 + 9, v10) - 1))) != 0 && ((v14 = v13 ^ v4, ((v13 ^ v4) & 0x1FE00000) != 0) ? (v15 = (v13 ^ v4) == 0) : (v15 = 1), v15))
  {
    if (*(a2[6] + v10))
    {
      v16 = *(a1 + 8);
      v17 = v4;
    }

    else
    {
      v17 = v4;
      v16 = *(a1 + 8);
      *(v16 + 4 * v4) |= 0x100u;
    }

    return sub_232C890AC((v16 + 4 * v17), v14);
  }

  else
  {
    result = sub_232C894B4(a1, a2, v5, v4);
    v19 = result;
    if ((*(a2[9] + 4 * v11) & v12) != 0)
    {
      result = sub_232C89730(v8, v10);
      *(*(a1 + 64) + 4 * (result - 1)) = v19;
    }

    do
    {
      if (*(a2[6] + v10))
      {
        result = sub_232C89130(a1, a2, v10, v19 ^ *(a2[6] + v10));
      }

      if (v10 == -1)
      {
        break;
      }

      v20 = *(a2[3] + 4 * v10);
      LODWORD(v10) = v10 + 1;
    }

    while ((v20 & 1) != 0);
  }

  return result;
}

void sub_232C892A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (v2 + 256);
  v4 = (v2 >> 8) - 16;
  if (v4 >= 0xFFFFFFEF)
  {
    sub_232C87594((a1 + 8), (v2 + 256));
  }

  else
  {
    v5 = 0;
    v6 = v4 << 8;
    v7 = *(a1 + 32);
    v8 = (3072 * ((v2 >> 8) & 0xF)) | 9;
    while (*(v7 + v8) == 1)
    {
      --v5;
      v8 += 12;
      if (v5 == -256)
      {
        v9 = 0;
        goto LABEL_8;
      }
    }

    v9 = v6 - v5;
LABEL_8:
    v10 = 3072 * ((v2 >> 8) & 0xF);
    v11 = 256;
    do
    {
      if ((*(v7 + v10 + 8) & 1) == 0)
      {
        if (*(a1 + 16) <= v6)
        {
          sub_232C892A8(a1);
          v7 = *(a1 + 32);
        }

        v12 = (v7 + v10);
        v13 = *(v7 + v10 + 4);
        if (v6 == *(a1 + 72))
        {
          *(a1 + 72) = v13;
          if (v6 == v13)
          {
            *(a1 + 72) = *(a1 + 16);
          }
        }

        v14 = *v12;
        *(v7 + 12 * (*v12 & 0xFFF) + 4) = v13;
        *(v7 + 12 * (v12[1] & 0xFFF)) = v14;
        *(v12 + 8) = 1;
        *(*(a1 + 8) + 4 * v6) = v9 ^ v6;
      }

      ++v6;
      v10 += 12;
      --v11;
    }

    while (v11);
    sub_232C87594((a1 + 8), (v2 + 256));
    v15 = v2;
    if (v2 < v3)
    {
      v16 = *(a1 + 32);
      do
      {
        *(v16 + 12 * (v15++ & 0xFFF) + 8) = 0;
      }

      while (v3 != v15);
    }
  }

  v17 = *(a1 + 32);
  if (v2 + 1 < v3)
  {
    v18 = 255;
    v19 = v2;
    do
    {
      *(v17 + 12 * (v19 & 0xFFF) + 4) = v19 + 1;
      *(v17 + 12 * ((v19 + 1) & 0xFFF)) = v19;
      ++v19;
      --v18;
    }

    while (v18);
  }

  v20 = 12 * (v2 & 0xFFF);
  *(v17 + v20) = v2 + 255;
  v21 = *(a1 + 72);
  v22 = 12 * (v21 & 0xFFF);
  v23 = *(v17 + v22);
  *(v17 + v20) = v23;
  *(v17 + 12 * ((v2 + 255) & 0xFFF) + 4) = v21;
  *(v17 + 12 * (v23 & 0xFFF) + 4) = v2;
  *(v17 + v22) = v2 + 255;
}

uint64_t sub_232C894B4(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  sub_232C8730C((a1 + 40), 0);
  v8 = *(*(a2 + 24) + 4 * a3);
  if (v8 >= 4)
  {
    v9 = v8 >> 2;
    do
    {
      v38 = *(*(a2 + 48) + v9);
      sub_232C89794((a1 + 40), &v38);
      v10 = *(*(a2 + 24) + 4 * v9);
      v12 = __CFADD__(v9++, 1);
    }

    while ((v10 & 1) != 0 && !v12);
  }

  v13 = *(a1 + 72);
  v14 = *(a1 + 16);
  if (v14 > v13)
  {
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v19 = *v15;
    v17 = v15 + 1;
    v18 = v19;
    v20 = *(a1 + 72);
    do
    {
      v21 = v20 ^ v18;
      if ((*(v16 + 12 * ((v20 ^ v18) & 0xFFF) + 9) & 1) == 0 && (!((v20 ^ v18) ^ a4) || ((v21 ^ a4) & 0x1FE00000) == 0))
      {
        v22 = *(a1 + 48);
        if (v22 < 2)
        {
          goto LABEL_21;
        }

        v23 = v22 - 1;
        v24 = v17;
        while (1)
        {
          v25 = *v24++;
          if (*(v16 + 12 * ((v20 ^ v18) & 0xFFF ^ v25) + 8) == 1)
          {
            break;
          }

          if (!--v23)
          {
            goto LABEL_21;
          }
        }
      }

      v20 = *(v16 + 12 * (v20 & 0xFFF) + 4);
    }

    while (v20 != v13);
  }

  v21 = a4 | v14;
LABEL_21:
  sub_232C890AC((*(a1 + 8) + 4 * a4), v21 ^ a4);
  if (*(a1 + 48))
  {
    v26 = 0;
    v27 = *(*(a2 + 24) + 4 * a3) >> 2;
    do
    {
      v28 = v21 ^ *(*(a1 + 40) + v26);
      if (*(a1 + 16) <= v28)
      {
        sub_232C892A8(a1);
      }

      if (*(a1 + 72) == v28)
      {
        v29 = v28 & 0xFFF;
        v30 = *(a1 + 32);
        v31 = *(v30 + 12 * (v28 & 0xFFF) + 4);
        *(a1 + 72) = v31;
        if (v31 == v28)
        {
          *(a1 + 72) = *(a1 + 16);
        }
      }

      else
      {
        v30 = *(a1 + 32);
        v29 = v28 & 0xFFF;
      }

      v32 = v30 + 12 * v29;
      v33 = *(v32 + 4);
      v34 = v30 + 12 * (*v32 & 0xFFF);
      *(v30 + 12 * (v33 & 0xFFF)) = *v32;
      *(v34 + 4) = v33;
      *(v32 + 8) = 1;
      v35 = *(a1 + 8);
      if (*(*(a2 + 48) + v27))
      {
        *(v35 + 4 * v28) = *(*(a1 + 40) + v26);
        v36 = *(*(a2 + 24) + 4 * v27);
      }

      else
      {
        *(v35 + 4 * a4) |= 0x100u;
        v36 = *(*(a2 + 24) + 4 * v27);
        *(v35 + 4 * v28) = (v36 >> 1) | 0x80000000;
      }

      v27 = ((v36 << 31) >> 31) & (v27 + 1);
      ++v26;
    }

    while (v26 < *(a1 + 48));
  }

  else
  {
    v30 = *(a1 + 32);
  }

  *(v30 + 12 * (v21 & 0xFFF) + 9) = 1;
  return v21;
}

uint64_t sub_232C89730(void *a1, unint64_t a2)
{
  v2 = (a2 >> 3) & 0x1FFFFFFFFFFFFFFCLL;
  v3 = *(a1[3] + v2);
  LODWORD(v2) = *(*a1 + v2) & (0xFFFFFFFF >> ~a2);
  LODWORD(v2) = ((((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) >> 2) & 0x33333333) + ((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) & 0x33333333) + (((((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) >> 2) & 0x33333333) + ((((v2 >> 1) & 0x55555555) + (v2 & 0x55555555)) & 0x33333333)) >> 4)) & 0xF0F0F0F;
  return ((v2 + BYTE1(v2) + ((v2 + (v2 >> 8)) >> 16)) & 0x3Fu) + v3;
}

uint64_t *sub_232C89794(uint64_t *result, _BYTE *a2)
{
  v2 = result[1];
  if (v2 == result[2])
  {
    sub_232C8736C(result, v2 + 1);
  }

  result[1] = v2 + 1;
  *(*result + v2) = *a2;
  return result;
}

uint64_t *sub_232C897E8(uint64_t *a1)
{
  sub_232C88398(a1);
  sub_232C88154(a1 + 3);
  sub_232C872C0(a1 + 6);
  sub_232C880C4(a1 + 9);
  sub_232C87E34(a1 + 15);
  sub_232C87E34(a1 + 18);
  sub_232C87E34(a1 + 21);
  a1[24] = 0;
  sub_232C87DF8(a1 + 21);
  sub_232C87DF8(a1 + 18);
  sub_232C8801C(a1 + 15);
  sub_232C88068(a1 + 9);
  sub_232C87274(a1 + 6);
  sub_232C88108(a1 + 3);

  return sub_232C8834C(a1);
}

uint64_t sub_232C89888(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  while (1)
  {
    result = sub_232C899F0(a1, a2, a3, a4, a5, a6);
    v12 = result;
    if (a3 < a4)
    {
      v13 = a2[2];
      while (v13 && *(v13 + 8 * a3) <= a5 || !*(*(a2[1] + 8 * a3) + a5))
      {
        if (a4 == ++a3)
        {
          return result;
        }
      }
    }

    if (a3 == a4)
    {
      break;
    }

    v14 = a2[2];
    if (v14 && *(v14 + 8 * a3) <= a5)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(*(a2[1] + 8 * a3) + a5);
    }

    v16 = a3 + 1;
    if (a3 + 1 < a4)
    {
      do
      {
        if (v14 && *(v14 + 8 * v16) <= a5)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(*(a2[1] + 8 * v16) + a5);
        }

        if (v17 != v15)
        {
          sub_232C89888(a1, a2, a3, v16, a5 + 1);
          v14 = a2[2];
          if (v14 && *(v14 + 8 * v16) <= a5)
          {
            v15 = 0;
          }

          else
          {
            v15 = *(*(a2[1] + 8 * v16) + a5);
          }

          a3 = v16;
        }

        ++v16;
      }

      while (a4 != v16);
    }

    a6 = v12 ^ v15;
    ++a5;
  }

  return result;
}

uint64_t sub_232C899F0(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  sub_232C8730C((a1 + 40), 0);
  if (a3 < a4)
  {
    v12 = -1;
    while (1)
    {
      v13 = a2[2];
      if (v13)
      {
        if (*(v13 + 8 * a3) > a5)
        {
          v44 = *(*(a2[1] + 8 * a3) + a5);
          if (!v44)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1675: exception: failed to build double-array: invalid null character";
            goto LABEL_57;
          }

          goto LABEL_20;
        }

        v44 = 0;
      }

      else
      {
        v44 = *(*(a2[1] + 8 * a3) + a5);
        if (v44)
        {
          goto LABEL_20;
        }
      }

      v14 = a2[3];
      if (v14)
      {
        if ((*(v14 + 4 * a3) & 0x80000000) != 0)
        {
          goto LABEL_56;
        }
      }

      else if ((a3 & 0x80000000) != 0)
      {
LABEL_56:
        exception = __cxa_allocate_exception(0x10uLL);
        v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1677: exception: failed to build double-array: negative value";
LABEL_57:
        *exception = &unk_2848148F8;
        exception[1] = v43;
        __cxa_throw(exception, &unk_2848148D0, std::exception::~exception);
      }

      if (v12 == -1)
      {
        if (v14)
        {
          v12 = *(v14 + 4 * a3);
        }

        else
        {
          v12 = a3;
        }
      }

      if (*a1)
      {
        (*a1)(a3 + 1, *a2 + 1);
      }

LABEL_20:
      v15 = *(a1 + 48);
      if (!v15)
      {
        goto LABEL_24;
      }

      v16 = *(*(a1 + 40) + v15 - 1);
      if (v44 != v16)
      {
        if (v44 < v16)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v43 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/darts_clone/darts.h:1692: exception: failed to build double-array: wrong key order";
          goto LABEL_57;
        }

LABEL_24:
        sub_232C89794((a1 + 40), &v44);
      }

      if (a4 == ++a3)
      {
        v17 = v12 | 0x80000000;
        goto LABEL_28;
      }
    }
  }

  v17 = -1;
LABEL_28:
  v18 = *(a1 + 72);
  v19 = *(a1 + 16);
  if (v19 > v18)
  {
    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
    v24 = *v20;
    v22 = v20 + 1;
    v23 = v24;
    v25 = *(a1 + 72);
    do
    {
      v26 = v25 ^ v23;
      if ((*(v21 + 12 * ((v25 ^ v23) & 0xFFF) + 9) & 1) == 0 && (!((v25 ^ v23) ^ a6) || ((v26 ^ a6) & 0x1FE00000) == 0))
      {
        v27 = *(a1 + 48);
        if (v27 < 2)
        {
          goto LABEL_41;
        }

        v28 = v27 - 1;
        v29 = v22;
        while (1)
        {
          v30 = *v29++;
          if (*(v21 + 12 * ((v25 ^ v23) & 0xFFF ^ v30) + 8) == 1)
          {
            break;
          }

          if (!--v28)
          {
            goto LABEL_41;
          }
        }
      }

      v25 = *(v21 + 12 * (v25 & 0xFFF) + 4);
    }

    while (v25 != v18);
  }

  v26 = a6 | v19;
LABEL_41:
  sub_232C890AC((*(a1 + 8) + 4 * a6), v26 ^ a6);
  if (*(a1 + 48))
  {
    v31 = 0;
    v32 = *(a1 + 40);
    do
    {
      v33 = v26 ^ *(v32 + v31);
      if (*(a1 + 16) <= v33)
      {
        sub_232C892A8(a1);
      }

      if (*(a1 + 72) == v33)
      {
        v34 = v33 & 0xFFF;
        v35 = *(a1 + 32);
        v36 = *(v35 + 12 * (v33 & 0xFFF) + 4);
        *(a1 + 72) = v36;
        if (v36 == v33)
        {
          *(a1 + 72) = *(a1 + 16);
        }
      }

      else
      {
        v35 = *(a1 + 32);
        v34 = v33 & 0xFFF;
      }

      v37 = v35 + 12 * v34;
      v38 = *(v37 + 4);
      v39 = v35 + 12 * (*v37 & 0xFFF);
      *(v35 + 12 * (v38 & 0xFFF)) = *v37;
      *(v39 + 4) = v38;
      *(v37 + 8) = 1;
      v32 = *(a1 + 40);
      v40 = *(a1 + 8);
      if (*(v32 + v31))
      {
        *(v40 + 4 * v33) = *(v32 + v31);
      }

      else
      {
        *(v40 + 4 * a6) |= 0x100u;
        *(v40 + 4 * v33) = v17;
      }

      ++v31;
    }

    while (v31 < *(a1 + 48));
  }

  else
  {
    v35 = *(a1 + 32);
  }

  *(v35 + 12 * (v26 & 0xFFF) + 9) = 1;
  return v26;
}