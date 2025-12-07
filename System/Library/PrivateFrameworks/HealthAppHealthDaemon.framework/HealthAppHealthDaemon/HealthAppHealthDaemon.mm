uint64_t sub_22939FFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2293B0408();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2293AEB44();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_2293A00BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2293B0408();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2293AEB44();
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_2293A01C4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id OUTLINED_FUNCTION_1(id a1)
{

  return a1;
}

void sub_2293A1440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2293A20C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_2293A36A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2293A4030(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_2293A59B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_2293A5DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2293A6ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2293A8708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDHealthAppNotificationManager.__allocating_init(profile:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v5 = [v3 initWithProfile:a1 userNotificationCenter:v4];

  return v5;
}

id HDHealthAppNotificationManager.init(profile:)(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v4 = [v1 initWithProfile:a1 userNotificationCenter:v3];

  return v4;
}

id HDHealthAppNotificationManager.__allocating_init(profile:userNotificationCenter:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = [objc_allocWithZone(MEMORY[0x277D108C8]) initWithProfile_];
  *&v5[OBJC_IVAR____TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager_summarySharingEntryManager] = v6;
  *&v5[OBJC_IVAR____TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager_userNotificationCenter] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id HDHealthAppNotificationManager.init(profile:userNotificationCenter:)(void *a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D108C8]) initWithProfile_];
  *&v2[OBJC_IVAR____TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager_summarySharingEntryManager] = v5;
  *&v2[OBJC_IVAR____TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager_userNotificationCenter] = a2;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for HDHealthAppNotificationManager();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id sub_2293ABD64()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + OBJC_IVAR____TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager_summarySharingEntryManager);
  v14[0] = 0;
  v3 = [v2 fetchSharingEntriesWithError_];
  v4 = v14[0];
  if (v3)
  {
    v5 = v3;
    sub_2293ABF04();
    v6 = sub_2293C0600();
    v7 = v4;

    v8 = sub_2293AC3F0(v6);

    v9 = sub_2293AC578(v8);

    if (!v1)
    {
      v11 = [objc_opt_self() sharingReminderNotificationIdentifier];
      if (!v11)
      {
        sub_2293C0570();
        v11 = sub_2293C0550();
      }

      v12 = [objc_opt_self() requestWithIdentifier:v11 content:v9 trigger:0];

      return v12;
    }
  }

  else
  {
    v13 = v14[0];
    sub_2293BFFE0();

    return swift_willThrow();
  }

  return result;
}

unint64_t sub_2293ABF04()
{
  result = qword_27D86CD38;
  if (!qword_27D86CD38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D86CD38);
  }

  return result;
}

void sub_2293ABFF0(uint64_t a1, uint64_t a2)
{
  sub_2293AD4F8(0, &qword_2813D93E8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2293C28E0;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = OBJC_IVAR____TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager_userNotificationCenter;
  v7 = *(v2 + OBJC_IVAR____TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager_userNotificationCenter);

  v8 = v7;
  v9 = sub_2293C05F0();
  [v8 removePendingNotificationRequestsWithIdentifiers_];

  v10 = *(v2 + v6);
  v11 = sub_2293C05F0();

  [v10 removeDeliveredNotificationsWithIdentifiers_];
}

void sub_2293AC17C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager_userNotificationCenter;
  v3 = *(v1 + OBJC_IVAR____TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager_userNotificationCenter);
  v4 = sub_2293C05F0();
  [v3 removePendingNotificationRequestsWithIdentifiers_];

  v5 = *(v1 + v2);
  v6 = sub_2293C05F0();
  [v5 removeDeliveredNotificationsWithIdentifiers_];
}

id HDHealthAppNotificationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHealthAppNotificationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHealthAppNotificationManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2293AC3F0(unint64_t a1)
{
  v9 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2293C0820())
  {
    v3 = 0;
    v4 = &selRef_numberWithInteger_;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AACA3F0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v5 direction] || objc_msgSend(v6, v4[100]) && objc_msgSend(v6, v4[100]) != 1)
      {
      }

      else
      {
        sub_2293C07E0();
        sub_2293C0800();
        sub_2293C0810();
        sub_2293C07F0();
        v4 = &selRef_numberWithInteger_;
      }

      ++v3;
      if (v7 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_2293AC578(unint64_t a1)
{
  v3 = sub_2293C0180();
  v86 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v85 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2293C00A0();
  MEMORY[0x28223BE20](v5 - 8);
  v81 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2293C01C0();
  v83 = *(v7 - 8);
  v84 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v80 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v82 = &v70 - v10;
  sub_2293AD26C(0, &qword_27D86CD40, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v70 - v15;
  v17 = sub_2293C00C0();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2293C0540();
  MEMORY[0x28223BE20](v20 - 8);
  if (!(a1 >> 62))
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21 >= 1)
    {
      goto LABEL_3;
    }

LABEL_32:
    sub_2293AD218();
    swift_allocError();
    *v69 = 0xD00000000000001ALL;
    v69[1] = 0x80000002293C3BC0;
    swift_willThrow();
    return v19;
  }

  v21 = sub_2293C0820();
  if (v21 < 1)
  {
    goto LABEL_32;
  }

LABEL_3:
  v75 = v3;
  v76 = v14;
  v78 = v16;
  v79 = v1;
  v22 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  sub_2293C0530();
  if (qword_27D86CD20 != -1)
  {
    swift_once();
  }

  v23 = qword_27D86D2D0;
  v24 = qword_27D86D2D0;
  sub_2293C00B0();
  v77 = v24;
  sub_2293C0580();
  v25 = sub_2293C0550();

  [v22 setTitle_];

  sub_2293C0530();
  sub_2293C00B0();
  sub_2293C0580();
  v26 = sub_2293C0550();

  v87 = v22;
  [v22 setSubtitle_];

  if (v21 != 1)
  {
    sub_2293C0530();
    v28 = v77;
    sub_2293C00B0();
    sub_2293C0580();
    sub_2293AD26C(0, &qword_27D86CD50, sub_2293AD2D0, MEMORY[0x277D84560]);
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D83B88];
    *(v29 + 16) = xmmword_2293C28E0;
    v31 = MEMORY[0x277D83C10];
    *(v29 + 56) = v30;
    *(v29 + 64) = v31;
    *(v29 + 32) = v21;
    sub_2293C0560();

    v32 = [objc_allocWithZone(MEMORY[0x277D0FD70]) init];
    v33 = [v32 URLForSharingOverview];
    v34 = v78;
    if (v33)
    {
      v35 = v76;
      v36 = v33;
      sub_2293BFFF0();

      v37 = 0;
      v32 = v36;
    }

    else
    {
      v37 = 1;
      v35 = v76;
    }

    v50 = sub_2293C0000();
    (*(*(v50 - 8) + 56))(v35, v37, 1, v50);
    sub_2293AD334(v35, v34);
LABEL_30:
    v66 = sub_2293C0550();

    v19 = v87;
    [v87 setBody_];

    sub_2293C0150();
    v67 = sub_2293C0140();
    [v19 setSound_];

    MEMORY[0x22AAC9D60](11, v34);
    v68 = sub_2293C0500();

    [v19 setUserInfo_];

    sub_2293AD3C8(v34);
    return v19;
  }

  v76 = v23;
  if (a1 >> 62)
  {
    result = sub_2293C0820();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
    sub_2293AD218();
    swift_allocError();
    *v51 = 0xD00000000000001ELL;
    v51[1] = 0x80000002293C3CE0;
    swift_willThrow();

    return v19;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x22AACA3F0](0, a1);
LABEL_15:
    v39 = v38;
    v40 = [v38 CNContactIdentifier];
    if (v40 && (v40, (v41 = [v39 CNContactIdentifier]) != 0))
    {
      v42 = v41;
      v43 = sub_2293C0570();
      v45 = v44;

      v46 = HIBYTE(v45) & 0xF;
      if ((v45 & 0x2000000000000000) == 0)
      {
        v46 = v43 & 0xFFFFFFFFFFFFLL;
      }

      LODWORD(v74) = v46 != 0;
    }

    else
    {
      LODWORD(v74) = 0;
    }

    v47 = [v39 firstName];
    if (v47)
    {
      v48 = v47;
      v71 = sub_2293C0570();
      v72 = v49;
    }

    else
    {
      v71 = 0;
      v72 = 0;
    }

    v52 = [v39 lastName];
    if (v52)
    {
      v53 = v52;
      sub_2293C0570();
    }

    sub_2293C01A0();
    v54 = [v39 primaryContactIdentifier];
    sub_2293C0570();
    v73 = v39;

    v55 = sub_2293C0190();
    v74 = v56;

    sub_2293C0530();
    v57 = v77;
    sub_2293C00B0();
    sub_2293C0580();
    sub_2293AD26C(0, &qword_27D86CD50, sub_2293AD2D0, MEMORY[0x277D84560]);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_2293C28E0;
    *(v58 + 56) = MEMORY[0x277D837D0];
    *(v58 + 64) = sub_2293AD454();
    v59 = v74;
    *(v58 + 32) = v55;
    *(v58 + 40) = v59;
    sub_2293C0560();

    v60 = v73;
    v61 = [v73 UUID];
    sub_2293C0090();

    v62 = v82;
    sub_2293C01B0();
    v64 = v83;
    v63 = v84;
    (*(v83 + 16))(v80, v62, v84);
    v65 = v85;
    sub_2293C0160();
    v34 = v78;
    sub_2293C0170();

    (*(v86 + 8))(v65, v75);
    (*(v64 + 8))(v62, v63);
    goto LABEL_30;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(a1 + 32);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2293AD178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2293AD1C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2293AD218()
{
  result = qword_27D86CD48;
  if (!qword_27D86CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86CD48);
  }

  return result;
}

void sub_2293AD26C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2293AD2D0()
{
  result = qword_27D86CD58;
  if (!qword_27D86CD58)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D86CD58);
  }

  return result;
}

uint64_t sub_2293AD334(uint64_t a1, uint64_t a2)
{
  sub_2293AD26C(0, &qword_27D86CD40, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2293AD3C8(uint64_t a1)
{
  sub_2293AD26C(0, &qword_27D86CD40, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2293AD454()
{
  result = qword_27D86CD60;
  if (!qword_27D86CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86CD60);
  }

  return result;
}

void sub_2293AD4F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2293AD548()
{
  sub_2293BFF00();
  v2 = HDEntityCategoryForKeyValueCategory();
  sub_2293BFEE0();
  v3 = *(v0 + 16);
  v4 = objc_allocWithZone(MEMORY[0x277D10718]);
  v5 = sub_2293C0550();

  v6 = [v4 initWithCategory:v2 domainName:v5 profile:v3];

  sub_2293BFED0();
  sub_2293C0700();
  if (v1)
  {
  }

  else
  {

    if (v8)
    {
      sub_2293AD7CC(&v7, v9);
      *&v7 = sub_2293BFEF0();

      sub_2293ADA70(&v7);

      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    else
    {

      sub_2293AD748(&v7);
    }
  }
}

id PinnedContentDaemonStore.makeLegacyFavoritesKVD()()
{
  sub_2293BFF00();
  v1 = HDEntityCategoryForKeyValueCategory();
  sub_2293BFEE0();
  v2 = *(v0 + 16);
  v3 = objc_allocWithZone(MEMORY[0x277D10718]);
  v4 = sub_2293C0550();

  v5 = [v3 initWithCategory:v1 domainName:v4 profile:v2];

  return v5;
}

uint64_t sub_2293AD748(uint64_t a1)
{
  sub_2293AE708(0, &qword_2813D93D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_2293AD7CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

char *sub_2293AD828(char *result, int64_t a2, char a3, char *a4)
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
    sub_2293AE708(0, &qword_2813D93E8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2293AD94C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2293AE708(0, &unk_27D86CD88, MEMORY[0x277D0FD08], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2293ADA70(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2293AE640(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2293ADADC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2293ADADC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2293C0840();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2293C0620();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2293ADCA4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2293ADBD4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2293ADBD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2293C0870(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2293ADCA4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2293AE534(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2293AE280((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2293C0870();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2293C0870();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2293AE548(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2293AE548((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2293AE280((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2293AE534(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2293AE4A8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2293C0870(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_2293AE280(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2293C0870() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2293C0870() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2293AE4A8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2293AE534(v3);
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

char *sub_2293AE548(char *result, int64_t a2, char a3, char *a4)
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
    sub_2293AE654(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void sub_2293AE654(uint64_t a1)
{
  if (!qword_27D86CD78)
  {
    sub_2293AE6AC();
    v1 = sub_2293C0860();
    if (!v2)
    {
      atomic_store(v1, &qword_27D86CD78);
    }
  }
}

void sub_2293AE6AC()
{
  if (!qword_27D86CD80)
  {
    v0 = sub_2293C06B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D86CD80);
    }
  }
}

void sub_2293AE708(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id PinnedContentTaskServer.__allocating_init(uuid:configuration:client:delegate:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_2293C0080();
  v11 = [v9 initWithUUID:v10 configuration:a2 client:a3 delegate:a4];

  swift_unknownObjectRelease();
  v12 = sub_2293C00A0();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

id PinnedContentTaskServer.init(uuid:configuration:client:delegate:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2293C0080();
  v14.receiver = v5;
  v14.super_class = type metadata accessor for PinnedContentTaskServer();
  v11 = objc_msgSendSuper2(&v14, sel_initWithUUID_configuration_client_delegate_, v10, a2, a3, a4);

  swift_unknownObjectRelease();
  v12 = sub_2293C00A0();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

void sub_2293AEB44()
{
  if (!qword_2813D9440)
  {
    v0 = sub_2293C03A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D9440);
    }
  }
}

unint64_t sub_2293AEBA4()
{
  result = qword_27D86CD98;
  if (!qword_27D86CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86CD98);
  }

  return result;
}

void sub_2293AEC10(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void *, void *))
{
  v33 = a1;
  v34 = a2;
  sub_2293AEB44();
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CoherentPinnedContentState(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = sub_2293BFF90();
  if (v17 == 2)
  {
    sub_2293AEBA4();
    v18 = swift_allocError();
    *v19 = a3;
    v19[1] = a4;

    a6(0, v18);
  }

  else
  {
    v20 = v17;
    v21 = [v6 client];
    v22 = [v21 profile];

    type metadata accessor for PinnedContentDarwinNotificationPoster();
    v23 = swift_allocObject();
    type metadata accessor for PinnedContentDaemonStore();
    inited = swift_initStackObject();
    sub_2293B0324(v22, v20 & 1, v23, inited);
    if (a5)
    {
      v25 = [a5 integerValue];
    }

    else
    {
      v25 = 0;
    }

    v26 = a6;
    v27 = sub_2293B2BE8(v33, v34, v25, a5 == 0);

    sub_2293BD0B0();
    sub_2293B0408();
    MEMORY[0x22AAC9FF0](&v35);
    (*(v31 + 16))(v13, &v16[*(v14 + 20)], v32);
    sub_2293B0468();
    sub_2293C05E0();
    v28 = objc_allocWithZone(sub_2293BFF20());
    v29 = sub_2293BFF10();
    sub_2293B04C0(v16);
    v30 = v29;
    v26(v29, 0);
  }
}

void sub_2293AF050(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, void *), uint64_t a6)
{
  v32 = a2;
  v33 = a6;
  sub_2293AEB44();
  v12 = v11;
  v31 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CoherentPinnedContentState(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  v18 = sub_2293BFF90();
  if (v18 == 2)
  {
    sub_2293AEBA4();
    v19 = swift_allocError();
    *v20 = a3;
    v20[1] = a4;

    a5(0, v19);
  }

  else
  {
    v21 = v18;
    v22 = [v6 client];
    v23 = [v22 profile];

    type metadata accessor for PinnedContentDarwinNotificationPoster();
    v24 = swift_allocObject();
    type metadata accessor for PinnedContentDaemonStore();
    inited = swift_initStackObject();
    sub_2293B0324(v23, v21 & 1, v24, inited);
    v26 = sub_2293B2F64(a1, v32);

    sub_2293BD0B0();
    sub_2293B0408();
    MEMORY[0x22AAC9FF0](&v34);
    (*(v31 + 16))(v14, &v17[*(v15 + 20)], v12);
    sub_2293B0468();
    sub_2293C05E0();
    v27 = objc_allocWithZone(sub_2293BFF20());
    v28 = sub_2293BFF10();
    sub_2293B04C0(v17);
    v29 = v28;
    a5(v28, 0);
  }
}

void sub_2293AF44C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void *, void *), uint64_t a7)
{
  v34 = a2;
  v35 = a7;
  v33 = a1;
  sub_2293AEB44();
  v13 = v12;
  v32 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CoherentPinnedContentState(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  v19 = sub_2293BFF90();
  if (v19 == 2)
  {
    sub_2293AEBA4();
    v20 = swift_allocError();
    *v21 = a3;
    v21[1] = a4;

    a6(0, v20);
  }

  else
  {
    v22 = v19;
    v23 = [v7 client];
    v24 = [v23 profile];

    type metadata accessor for PinnedContentDarwinNotificationPoster();
    v25 = swift_allocObject();
    type metadata accessor for PinnedContentDaemonStore();
    inited = swift_initStackObject();
    sub_2293B0324(v24, v22 & 1, v25, inited);
    v27 = [a5 integerValue];
    v28 = sub_2293B3280(v33, v34, v27);

    sub_2293BD0B0();
    sub_2293B0408();
    MEMORY[0x22AAC9FF0](&v36);
    (*(v32 + 16))(v15, &v18[*(v16 + 20)], v13);
    sub_2293B0468();
    sub_2293C05E0();
    v29 = objc_allocWithZone(sub_2293BFF20());
    v30 = sub_2293BFF10();
    sub_2293B04C0(v18);
    v31 = v30;
    a6(v30, 0);
  }
}

void sub_2293AF890(uint64_t a1, uint64_t a2, void (*a3)(void *, void *), uint64_t a4, uint64_t (*a5)(void))
{
  v30 = a5;
  v6 = v5;
  sub_2293AEB44();
  v11 = v10;
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CoherentPinnedContentState(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = sub_2293BFF90();
  if (v17 == 2)
  {
    sub_2293AEBA4();
    v18 = swift_allocError();
    *v19 = a1;
    v19[1] = a2;

    a3(0, v18);
  }

  else
  {
    v20 = v17;
    v21 = [v6 client];
    v22 = [v21 profile];

    type metadata accessor for PinnedContentDarwinNotificationPoster();
    v23 = swift_allocObject();
    type metadata accessor for PinnedContentDaemonStore();
    inited = swift_initStackObject();
    sub_2293B0324(v22, v20 & 1, v23, inited);
    v25 = v30();

    sub_2293BD0B0();
    sub_2293B0408();
    MEMORY[0x22AAC9FF0](&v31);
    (*(v29 + 16))(v13, &v16[*(v14 + 20)], v11);
    sub_2293B0468();
    sub_2293C05E0();
    v26 = objc_allocWithZone(sub_2293BFF20());
    v27 = sub_2293BFF10();
    sub_2293B04C0(v16);
    v28 = v27;
    a3(v27, 0);
  }
}

uint64_t sub_2293AFBE4(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t (*a5)(void))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_2293C0570();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  sub_2293B10B4(v8, v10, v11, v7, a5);
  _Block_release(v7);
  _Block_release(v7);
}

char *sub_2293AFC88(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void *), uint64_t a5)
{
  if (a1 >> 62)
  {
    v35 = a5;
    v36 = a4;
    v37 = a3;
    v38 = a2;
    v39 = sub_2293C0820();
    a2 = v38;
    a3 = v37;
    a4 = v36;
    a5 = v35;
    v6 = v39;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v40 = a2;
    v41 = a5;
    v42 = a4;
    v43 = a3;
    v45 = MEMORY[0x277D84F90];
    result = sub_2293B0304(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = v45;
    v9 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      v44 = v6;
      do
      {
        v11 = v9;
        MEMORY[0x22AACA3F0](v10);
        v12 = sub_2293BFFB0();
        v14 = v13;
        v16 = v15;
        v18 = v17;
        swift_unknownObjectRelease();
        v20 = *(v45 + 16);
        v19 = *(v45 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2293B0304((v19 > 1), v20 + 1, 1);
        }

        ++v10;
        *(v45 + 16) = v20 + 1;
        v21 = v45 + 32 * v20;
        *(v21 + 32) = v12;
        *(v21 + 40) = v14;
        *(v21 + 48) = v16;
        *(v21 + 56) = v18 & 1;
        v9 = v11;
      }

      while (v44 != v10);
    }

    else
    {
      v22 = (a1 + 32);
      do
      {
        v23 = v6;
        v24 = *v22;
        v25 = sub_2293BFFB0();
        v27 = v26;
        v29 = v28;
        v31 = v30;

        v33 = *(v45 + 16);
        v32 = *(v45 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_2293B0304((v32 > 1), v33 + 1, 1);
        }

        *(v45 + 16) = v33 + 1;
        v34 = v45 + 32 * v33;
        *(v34 + 32) = v25;
        *(v34 + 40) = v27;
        *(v34 + 48) = v29;
        *(v34 + 56) = v31 & 1;
        ++v22;
        v6 = v23 - 1;
      }

      while (v23 != 1);
    }

    a2 = v40;
    a5 = v41;
    a4 = v42;
    a3 = v43;
  }

  sub_2293AFF6C(v7, a2, a3, a4, a5);
}

void sub_2293AFF6C(void (*a1)(void *, void *), uint64_t a2, uint64_t a3, void (*a4)(void *, void *), uint64_t a5)
{
  v6 = v5;
  v32 = a1;
  sub_2293AEB44();
  v12 = v11;
  v31 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CoherentPinnedContentState(0);
  MEMORY[0x28223BE20](v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  v18 = sub_2293BFF90();
  if (v18 == 2)
  {
    sub_2293AEBA4();
    v19 = swift_allocError();
    *v20 = a2;
    v20[1] = a3;

    a4(0, v19);
  }

  else
  {
    v21 = v18;
    v30[1] = a5;
    v22 = [v6 client];
    v23 = [v22 profile];

    type metadata accessor for PinnedContentDarwinNotificationPoster();
    v24 = swift_allocObject();
    type metadata accessor for PinnedContentDaemonStore();
    inited = swift_initStackObject();
    sub_2293B0324(v23, v21 & 1, v24, inited);
    v26 = sub_2293B3C1C(v32);
    sub_2293BD0B0();
    sub_2293B0408();
    MEMORY[0x22AAC9FF0](&v33);
    v32 = a4;
    (*(v31 + 16))(v14, &v17[*(v15 + 20)], v12);
    sub_2293B0468();
    sub_2293C05E0();
    v27 = objc_allocWithZone(sub_2293BFF20());
    v28 = sub_2293BFF10();
    sub_2293B04C0(v17);
    v29 = v28;
    v32(v28, 0);
  }
}

id PinnedContentTaskServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PinnedContentTaskServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2293B0304(char *a1, int64_t a2, char a3)
{
  result = sub_2293AD94C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2293B0324(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v14 = type metadata accessor for PinnedContentDarwinNotificationPoster();
  v15 = &protocol witness table for PinnedContentDarwinNotificationPoster;
  *&v13 = a3;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2 & 1;
  v8 = a1;
  sub_2293BFF70();
  v9 = objc_allocWithZone(MEMORY[0x277D10718]);
  v10 = sub_2293C0550();

  v11 = [v9 initWithCategory:100 domainName:v10 profile:v8];

  *(a4 + 32) = v11;
  sub_2293B19C8(&v13, a4 + 40);
  return a4;
}

void sub_2293B0408()
{
  if (!qword_2813D9430)
  {
    v0 = sub_2293C03E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D9430);
    }
  }
}

unint64_t sub_2293B0468()
{
  result = qword_2813D9448;
  if (!qword_2813D9448)
  {
    sub_2293AEB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D9448);
  }

  return result;
}

uint64_t sub_2293B04C0(uint64_t a1)
{
  v2 = type metadata accessor for CoherentPinnedContentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2293B066C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v34 = a1;
  v35 = a2;
  sub_2293AEB44();
  v13 = v12;
  v33 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CoherentPinnedContentState(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  v19 = sub_2293BFF90();
  if (v19 == 2)
  {
    sub_2293AEBA4();
    v20 = swift_allocError();
    *v21 = a3;
    v21[1] = a4;

    v22 = sub_2293BFFD0();
    (*(a7 + 16))(a7, 0, v22);
  }

  else
  {
    v23 = v19;
    v24 = [a6 client];
    v25 = [v24 profile];

    type metadata accessor for PinnedContentDarwinNotificationPoster();
    v26 = swift_allocObject();
    type metadata accessor for PinnedContentDaemonStore();
    inited = swift_initStackObject();
    sub_2293B0324(v25, v23 & 1, v26, inited);
    if (a5)
    {
      v28 = [a5 integerValue];
    }

    else
    {
      v28 = 0;
    }

    v29 = sub_2293B2BE8(v34, v35, v28, a5 == 0);

    sub_2293BD0B0();
    sub_2293B0408();
    MEMORY[0x22AAC9FF0](&v36);
    (*(v33 + 16))(v15, &v18[*(v16 + 20)], v13);
    sub_2293B0468();
    sub_2293C05E0();
    v30 = objc_allocWithZone(sub_2293BFF20());
    v31 = sub_2293BFF10();
    sub_2293B04C0(v18);
    (*(a7 + 16))(a7, v31, 0);
  }
}

void sub_2293B09EC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v31 = a2;
  sub_2293AEB44();
  v12 = v11;
  v30 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CoherentPinnedContentState(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  v18 = sub_2293BFF90();
  if (v18 == 2)
  {
    sub_2293AEBA4();
    v19 = swift_allocError();
    *v20 = a3;
    v20[1] = a4;

    v21 = sub_2293BFFD0();
    (*(a6 + 16))(a6, 0, v21);
  }

  else
  {
    v22 = v18;
    v23 = [a5 client];
    v24 = [v23 profile];

    type metadata accessor for PinnedContentDarwinNotificationPoster();
    v25 = swift_allocObject();
    type metadata accessor for PinnedContentDaemonStore();
    inited = swift_initStackObject();
    sub_2293B0324(v24, v22 & 1, v25, inited);
    v27 = sub_2293B2F64(a1, v31);

    sub_2293BD0B0();
    sub_2293B0408();
    MEMORY[0x22AAC9FF0](&v32);
    (*(v30 + 16))(v14, &v17[*(v15 + 20)], v12);
    sub_2293B0468();
    sub_2293C05E0();
    v28 = objc_allocWithZone(sub_2293BFF20());
    v29 = sub_2293BFF10();
    sub_2293B04C0(v17);
    (*(a6 + 16))(a6, v29, 0);
  }
}

void sub_2293B0D48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v34 = a1;
  v35 = a2;
  sub_2293AEB44();
  v13 = v12;
  v33 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CoherentPinnedContentState(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  v19 = sub_2293BFF90();
  if (v19 == 2)
  {
    sub_2293AEBA4();
    v20 = swift_allocError();
    *v21 = a3;
    v21[1] = a4;

    v22 = sub_2293BFFD0();
    (*(a7 + 16))(a7, 0, v22);
  }

  else
  {
    v23 = v19;
    v24 = [a6 client];
    v25 = [v24 profile];

    type metadata accessor for PinnedContentDarwinNotificationPoster();
    v26 = swift_allocObject();
    type metadata accessor for PinnedContentDaemonStore();
    inited = swift_initStackObject();
    sub_2293B0324(v25, v23 & 1, v26, inited);
    v28 = [a5 integerValue];
    v29 = sub_2293B3280(v34, v35, v28);

    sub_2293BD0B0();
    sub_2293B0408();
    MEMORY[0x22AAC9FF0](&v36);
    (*(v33 + 16))(v15, &v18[*(v16 + 20)], v13);
    sub_2293B0468();
    sub_2293C05E0();
    v30 = objc_allocWithZone(sub_2293BFF20());
    v31 = sub_2293BFF10();
    sub_2293B04C0(v18);
    (*(a7 + 16))(a7, v31, 0);
  }
}

void sub_2293B10B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_2293AEB44();
  v11 = v10;
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CoherentPinnedContentState(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = sub_2293BFF90();
  if (v17 == 2)
  {
    sub_2293AEBA4();
    v18 = swift_allocError();
    *v19 = a1;
    v19[1] = a2;

    v20 = sub_2293BFFD0();
    (*(a4 + 16))(a4, 0, v20);
  }

  else
  {
    v21 = v17;
    v22 = [a3 client];
    v23 = [v22 profile];

    type metadata accessor for PinnedContentDarwinNotificationPoster();
    v24 = swift_allocObject();
    type metadata accessor for PinnedContentDaemonStore();
    inited = swift_initStackObject();
    sub_2293B0324(v23, v21 & 1, v24, inited);
    v26 = a5();

    sub_2293BD0B0();
    sub_2293B0408();
    MEMORY[0x22AAC9FF0](&v31);
    (*(v30 + 16))(v13, &v16[*(v14 + 20)], v11);
    sub_2293B0468();
    sub_2293C05E0();
    v27 = objc_allocWithZone(sub_2293BFF20());
    v28 = sub_2293BFF10();
    sub_2293B04C0(v16);
    (*(a4 + 16))(a4, v28, 0);
  }
}

void sub_2293B1408(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_2293AEB44();
  v11 = v10;
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CoherentPinnedContentState(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = sub_2293BFF90();
  if (v17 == 2)
  {
    sub_2293AEBA4();
    v18 = swift_allocError();
    *v19 = a2;
    v19[1] = a3;

    v20 = sub_2293BFFD0();
    (*(a5 + 16))(a5, 0, v20);
  }

  else
  {
    v21 = v17;
    v22 = [a4 client];
    v23 = [v22 profile];

    type metadata accessor for PinnedContentDarwinNotificationPoster();
    v24 = swift_allocObject();
    type metadata accessor for PinnedContentDaemonStore();
    inited = swift_initStackObject();
    sub_2293B0324(v23, v21 & 1, v24, inited);
    v26 = sub_2293B3C1C(a1);
    sub_2293BD0B0();
    sub_2293B0408();
    MEMORY[0x22AAC9FF0](&v31);
    (*(v30 + 16))(v13, &v16[*(v14 + 20)], v11);
    sub_2293B0468();
    sub_2293C05E0();
    v27 = objc_allocWithZone(sub_2293BFF20());
    v28 = sub_2293BFF10();
    sub_2293B04C0(v16);
    (*(a5 + 16))(a5, v28, 0);
  }
}

void sub_2293B1774(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *aBlock)
{
  if (a1 >> 62)
  {
    v38 = a1;
    v9 = sub_2293C0820();
    a1 = v38;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_16:
    _Block_copy(aBlock);
    v11 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_3:
  v10 = a1;
  _Block_copy(aBlock);
  v43 = MEMORY[0x277D84F90];
  sub_2293B0304(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    return;
  }

  v39 = a2;
  v40 = a3;
  v41 = a4;
  v11 = v43;
  v12 = v10;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    v42 = v9;
    do
    {
      v14 = v12;
      MEMORY[0x22AACA3F0](v13);
      v15 = sub_2293BFFB0();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      swift_unknownObjectRelease();
      v23 = *(v43 + 16);
      v22 = *(v43 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2293B0304((v22 > 1), v23 + 1, 1);
      }

      ++v13;
      *(v43 + 16) = v23 + 1;
      v24 = v43 + 32 * v23;
      *(v24 + 32) = v15;
      *(v24 + 40) = v17;
      *(v24 + 48) = v19;
      *(v24 + 56) = v21 & 1;
      v12 = v14;
    }

    while (v42 != v13);
  }

  else
  {
    v25 = (v10 + 32);
    do
    {
      v26 = v9;
      v27 = *v25;
      v28 = sub_2293BFFB0();
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v36 = *(v43 + 16);
      v35 = *(v43 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_2293B0304((v35 > 1), v36 + 1, 1);
      }

      *(v43 + 16) = v36 + 1;
      v37 = v43 + 32 * v36;
      *(v37 + 32) = v28;
      *(v37 + 40) = v30;
      *(v37 + 48) = v32;
      *(v37 + 56) = v34 & 1;
      ++v25;
      v9 = v26 - 1;
    }

    while (v26 != 1);
  }

  a4 = v41;
  a2 = v39;
  a3 = v40;
LABEL_17:
  _Block_copy(aBlock);
  sub_2293B1408(v11, a2, a3, a4, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

uint64_t sub_2293B19C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t PinnedContentDaemonStore.__allocating_init(profile:domain:notificationPoster:)(void *a1, char a2, void *a3)
{
  v6 = swift_allocObject();
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_2293B540C(a1, a2 & 1, v11, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v13;
}

uint64_t sub_2293B1B14(char a1)
{
  sub_2293BFF80();
  v1 = sub_2293C05A0();

  notify_post((v1 + 32));
}

uint64_t PinnedContentDaemonStore.init(profile:domain:notificationPoster:)(void *a1, char a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_2293B540C(a1, a2 & 1, v11, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v13;
}

_DWORD *sub_2293B1C98()
{
  v83 = sub_2293C01F0();
  v81 = *(v83 - 8);
  v2 = MEMORY[0x28223BE20](v83);
  v82 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v78 - v5);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v78 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v78 - v10;
  v12 = *(v0 + 24);
  v13 = sub_2293C0710();
  v15 = v14;

  if (!v1)
  {
    v17 = v82;
    v79 = v9;
    v80 = v13;
    if (v15 >> 60 == 15)
    {
      if (v12)
      {
        v18 = v83;
      }

      else
      {
        sub_2293AD548();
        v18 = v83;
        if (v45)
        {
          v46 = v45;
          sub_2293B5568();
          v47 = HDCodablePinnedContentState.init(pinnedIdentifiers:)(v46);
          sub_2293B38CC(v47);
          v78 = 0;
          v62 = *(v0 + 64);
          v63 = *(v0 + 72);
          __swift_project_boxed_opaque_existential_1((v0 + 40), v62);
          (*(v63 + 8))(0, v62, v63);
          v64 = v6;
          sub_2293C01D0();

          v6 = v47;
          v65 = sub_2293C01E0();
          v66 = sub_2293C06E0();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v82 = v64;
            v68 = v67;
            v69 = swift_slowAlloc();
            v86 = v69;
            *v68 = 136315394;
            v70 = sub_2293B4BC4();
            v72 = sub_2293B4E34(v70, v71, &v86);

            *(v68 + 4) = v72;
            *(v68 + 12) = 2080;
            v84 = HDCodablePinnedContentState.logDescription.getter();
            v85 = v73;
            sub_2293C0880();
            v74 = HKSensitiveLogItem();
            swift_unknownObjectRelease();
            sub_2293C0760();
            swift_unknownObjectRelease();
            v75 = sub_2293C0590();
            v77 = sub_2293B4E34(v75, v76, &v86);

            *(v68 + 14) = v77;
            _os_log_impl(&dword_22939E000, v65, v66, "%s: Legacy store contains content but cloud store does not; migrated and persisted legacy content: %s", v68, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AACAD50](v69, -1, -1);
            MEMORY[0x22AACAD50](v68, -1, -1);

            (*(v81 + 8))(v82, v18);
          }

          else
          {

            (*(v81 + 8))(v64, v18);
          }

          return v6;
        }
      }

      v19 = v17;
      sub_2293C01D0();

      v20 = sub_2293C01E0();
      v21 = sub_2293C06E0();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v84 = v23;
        *v22 = 136315138;
        v24 = sub_2293B4BC4();
        v26 = sub_2293B4E34(v24, v25, &v84);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_22939E000, v20, v21, "%s: No local state; returning nil", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x22AACAD50](v23, -1, -1);
        MEMORY[0x22AACAD50](v22, -1, -1);
      }

      (*(v81 + 8))(v19, v18);
      return 0;
    }

    else
    {
      v27 = v11;
      v78 = 0;
      v28 = objc_allocWithZone(MEMORY[0x277D10640]);
      v29 = v80;
      sub_2293B55F8(v80, v15);
      v30 = sub_2293C0010();
      v82 = v15;
      sub_2293B564C(v29, v15);
      v6 = [v28 initWithData_];

      if (v6)
      {
        sub_2293C01D0();

        v31 = v6;
        v32 = sub_2293C01E0();
        v33 = sub_2293C06E0();

        v34 = os_log_type_enabled(v32, v33);
        v35 = v81;
        if (v34)
        {
          v36 = swift_slowAlloc();
          LODWORD(v79) = v33;
          v37 = v36;
          v38 = swift_slowAlloc();
          v84 = v38;
          *v37 = 136315394;
          v39 = sub_2293B4BC4();
          v41 = sub_2293B4E34(v39, v40, &v84);

          *(v37 + 4) = v41;
          *(v37 + 12) = 2080;
          v42 = HDCodablePinnedContentState.logDescription.getter();
          v44 = sub_2293B4E34(v42, v43, &v84);

          *(v37 + 14) = v44;
          _os_log_impl(&dword_22939E000, v32, v79, "%s: Fetched content from local store: %s", v37, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AACAD50](v38, -1, -1);
          MEMORY[0x22AACAD50](v37, -1, -1);

          sub_2293B564C(v80, v82);
        }

        else
        {
          sub_2293B564C(v80, v82);
        }

        (*(v35 + 8))(v27, v83);
      }

      else
      {
        v48 = v79;
        sub_2293C01D0();

        v49 = sub_2293C01E0();
        v50 = sub_2293C06D0();

        v51 = os_log_type_enabled(v49, v50);
        v52 = v81;
        if (v51)
        {
          v6 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v86 = v53;
          *v6 = 136315394;
          v54 = sub_2293B4BC4();
          v56 = sub_2293B4E34(v54, v55, &v86);

          *(v6 + 1) = v56;
          *(v6 + 6) = 2080;
          v84 = 0;
          v85 = 0;
          v57 = sub_2293C0590();
          v59 = sub_2293B4E34(v57, v58, &v86);

          *(v6 + 14) = v59;
          _os_log_impl(&dword_22939E000, v49, v50, "%s: Error decoding persisted state: %s", v6, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AACAD50](v53, -1, -1);
          MEMORY[0x22AACAD50](v6, -1, -1);
        }

        (*(v52 + 8))(v48, v83);
        v60 = v80;
        sub_2293AEBA4();
        swift_allocError();
        *v61 = 0;
        v61[1] = 0;
        swift_willThrow();
        sub_2293B564C(v60, v82);
      }
    }
  }

  return v6;
}

id sub_2293B2500()
{
  v2 = v1;
  v3 = sub_2293C01F0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = sub_2293B1C98();
  if (!v1)
  {
    if (v10)
    {
      v38 = 0;
      v11 = v10;
      sub_2293C01D0();

      v2 = v11;
      v12 = sub_2293C01E0();
      v13 = sub_2293C06E0();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v37 = v4;
        v15 = v14;
        v16 = swift_slowAlloc();
        v39 = v16;
        *v15 = 136315394;
        v17 = sub_2293B4BC4();
        v19 = sub_2293B4E34(v17, v18, &v39);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2080;
        v20 = HDCodablePinnedContentState.logDescription.getter();
        v22 = sub_2293B4E34(v20, v21, &v39);

        *(v15 + 14) = v22;
        _os_log_impl(&dword_22939E000, v12, v13, "%s: Returning persisted state: %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AACAD50](v16, -1, -1);
        MEMORY[0x22AACAD50](v15, -1, -1);

        (*(v37 + 8))(v9, v3);
      }

      else
      {

        (*(v4 + 8))(v9, v3);
      }
    }

    else
    {
      if (*(v0 + 24))
      {
        v23 = sub_2293B67D4();
      }

      else
      {
        v23 = sub_2293B5DC4();
      }

      v25 = v23;
      v38 = 0;
      sub_2293C01D0();

      v2 = v25;
      v26 = sub_2293C01E0();
      v27 = sub_2293C06E0();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v37 = v4;
        v29 = v28;
        v30 = swift_slowAlloc();
        v39 = v30;
        *v29 = 136315394;
        v31 = sub_2293B4BC4();
        v33 = sub_2293B4E34(v31, v32, &v39);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2080;
        v34 = HDCodablePinnedContentState.logDescription.getter();
        v36 = sub_2293B4E34(v34, v35, &v39);

        *(v29 + 14) = v36;
        _os_log_impl(&dword_22939E000, v26, v27, "%s: No persisted pinned content, returning default state: %s", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AACAD50](v30, -1, -1);
        MEMORY[0x22AACAD50](v29, -1, -1);

        (*(v37 + 8))(v7, v3);
      }

      else
      {

        (*(v4 + 8))(v7, v3);
      }
    }
  }

  return v2;
}

_DWORD *sub_2293B28E4(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_2293C01F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293C01D0();

  v10 = a1;
  v11 = sub_2293C01E0();
  v12 = sub_2293C06E0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v35 = v10;
    v14 = v13;
    v15 = swift_slowAlloc();
    v33 = v6;
    v16 = v15;
    v36 = v15;
    *v14 = 136315394;
    v17 = sub_2293B4BC4();
    v19 = sub_2293B4E34(v17, v18, &v36);
    v34 = v2;
    v20 = v19;

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = HDCodablePinnedContentState.logDescription.getter();
    v23 = sub_2293B4E34(v21, v22, &v36);

    *(v14 + 14) = v23;
    v3 = v34;
    _os_log_impl(&dword_22939E000, v11, v12, "%s: Merging local state with other=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AACAD50](v16, -1, -1);
    v24 = v14;
    v10 = v35;
    MEMORY[0x22AACAD50](v24, -1, -1);

    v25 = (*(v7 + 8))(v9, v33);
  }

  else
  {

    v25 = (*(v7 + 8))(v9, v6);
  }

  v26 = MEMORY[0x28223BE20](v25);
  *(&v32 - 2) = v10;
  MEMORY[0x28223BE20](v26);
  *(&v32 - 4) = v4;
  *(&v32 - 3) = sub_2293B56B4;
  *(&v32 - 2) = v27;
  result = sub_2293B43B0(sub_2293B56E0, (&v32 - 6));
  if (!v3)
  {
    v29 = *(v4 + 64);
    v30 = *(v4 + 72);
    v31 = result;
    __swift_project_boxed_opaque_existential_1((v4 + 40), v29);
    (*(v30 + 8))(*(v4 + 24), v29, v30);
    return v31;
  }

  return result;
}

_DWORD *sub_2293B2BE8(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v6 = v5;
  v7 = v4;
  v38 = a4;
  v36 = a1;
  v37 = a3;
  v9 = sub_2293C01F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293C01D0();

  v13 = sub_2293C01E0();
  v14 = sub_2293C06E0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v34 = v9;
    v16 = v15;
    v33 = swift_slowAlloc();
    v41 = v33;
    *v16 = 136315650;
    v17 = sub_2293B4BC4();
    v19 = sub_2293B4E34(v17, v18, &v41);
    v35 = v5;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_2293B4E34(v36, a2, &v41);
    *(v16 + 22) = 2080;
    v39 = v37;
    v40 = v38 & 1;
    sub_2293B5CC8(0, &qword_27D86CE70, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    v21 = sub_2293C0590();
    v23 = sub_2293B4E34(v21, v22, &v41);

    *(v16 + 24) = v23;
    v6 = v35;
    _os_log_impl(&dword_22939E000, v13, v14, "%s: Pinning content with identifier=%s at index=%s", v16, 0x20u);
    v24 = v33;
    swift_arrayDestroy();
    MEMORY[0x22AACAD50](v24, -1, -1);
    MEMORY[0x22AACAD50](v16, -1, -1);

    v25 = (*(v10 + 8))(v12, v34);
  }

  else
  {

    v25 = (*(v10 + 8))(v12, v9);
  }

  v26 = MEMORY[0x28223BE20](v25);
  v27 = v37;
  *(&v33 - 4) = v36;
  *(&v33 - 3) = a2;
  *(&v33 - 2) = v27;
  *(&v33 - 8) = v38 & 1;
  MEMORY[0x28223BE20](v26);
  *(&v33 - 4) = v7;
  *(&v33 - 3) = sub_2293B5700;
  *(&v33 - 2) = v28;
  result = sub_2293B43B0(sub_2293B5D7C, (&v33 - 6));
  if (!v6)
  {
    v30 = *(v7 + 64);
    v31 = *(v7 + 72);
    v32 = result;
    __swift_project_boxed_opaque_existential_1((v7 + 40), v30);
    (*(v31 + 8))(*(v7 + 24), v30, v31);
    return v32;
  }

  return result;
}

_DWORD *sub_2293B2F64(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_2293C01F0();
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293C01D0();

  v11 = sub_2293C01E0();
  v12 = sub_2293C06E0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = a1;
    v14 = v13;
    v29 = swift_slowAlloc();
    v32 = v29;
    *v14 = 136315394;
    v15 = sub_2293B4BC4();
    v17 = sub_2293B4E34(v15, v16, &v32);
    v30 = v8;
    v18 = v17;

    *(v14 + 4) = v18;
    v4 = v3;
    *(v14 + 12) = 2080;
    v19 = v28;
    *(v14 + 14) = sub_2293B4E34(v28, a2, &v32);
    _os_log_impl(&dword_22939E000, v11, v12, "%s: Unpinning content with identifier=%s", v14, 0x16u);
    v20 = v29;
    swift_arrayDestroy();
    MEMORY[0x22AACAD50](v20, -1, -1);
    MEMORY[0x22AACAD50](v14, -1, -1);

    v21 = (*(v31 + 8))(v10, v30);
  }

  else
  {

    v21 = (*(v31 + 8))(v10, v8);
    v19 = a1;
  }

  v22 = MEMORY[0x28223BE20](v21);
  *(&v28 - 2) = v19;
  *(&v28 - 1) = a2;
  MEMORY[0x28223BE20](v22);
  *(&v28 - 4) = v5;
  *(&v28 - 3) = sub_2293B5734;
  *(&v28 - 2) = v23;
  result = sub_2293B43B0(sub_2293B5D7C, (&v28 - 6));
  if (!v4)
  {
    v25 = *(v5 + 64);
    v26 = *(v5 + 72);
    v27 = result;
    __swift_project_boxed_opaque_existential_1((v5 + 40), v25);
    (*(v26 + 8))(*(v5 + 24), v25, v26);
    return v27;
  }

  return result;
}

_DWORD *sub_2293B3280(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = sub_2293C01F0();
  v37 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2293C01D0();

  v13 = a2;
  v14 = sub_2293C01E0();
  v15 = sub_2293C06E0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = v4;
    v17 = v16;
    v34 = swift_slowAlloc();
    v38 = v34;
    *v17 = 136315650;
    v33 = v15;
    v18 = sub_2293B4BC4();
    v20 = sub_2293B4E34(v18, v19, &v38);
    v35 = v10;
    v21 = a3;
    v22 = v20;

    *(v17 + 4) = v22;
    a3 = v21;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_2293B4E34(a1, v13, &v38);
    *(v17 + 22) = 2048;
    *(v17 + 24) = v21;
    _os_log_impl(&dword_22939E000, v14, v33, "%s: Moving content with identifier=%s to index=%ld", v17, 0x20u);
    v23 = v34;
    swift_arrayDestroy();
    MEMORY[0x22AACAD50](v23, -1, -1);
    v24 = v17;
    v5 = v36;
    MEMORY[0x22AACAD50](v24, -1, -1);

    v25 = (*(v37 + 8))(v12, v35);
  }

  else
  {

    v25 = (*(v37 + 8))(v12, v10);
  }

  v26 = MEMORY[0x28223BE20](v25);
  *&v32[-32] = a1;
  *&v32[-24] = v13;
  *&v32[-16] = a3;
  MEMORY[0x28223BE20](v26);
  *&v32[-32] = v6;
  *&v32[-24] = sub_2293B5760;
  *&v32[-16] = v27;
  result = sub_2293B43B0(sub_2293B5D7C, &v32[-48]);
  if (!v5)
  {
    v29 = *(v6 + 64);
    v30 = *(v6 + 72);
    v31 = result;
    __swift_project_boxed_opaque_existential_1((v6 + 40), v29);
    (*(v30 + 8))(*(v6 + 24), v29, v30);
    return v31;
  }

  return result;
}

_DWORD *sub_2293B35B8()
{
  v2 = v1;
  v3 = sub_2293C01F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293C01D0();

  v7 = sub_2293C01E0();
  v8 = sub_2293C06E0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v23 = v1;
    v10 = v9;
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    v12 = sub_2293B4BC4();
    v14 = sub_2293B4E34(v12, v13, &v24);
    v22 = v3;
    v15 = v14;

    *(v10 + 4) = v15;
    _os_log_impl(&dword_22939E000, v7, v8, "%s: Unpinning all content", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AACAD50](v11, -1, -1);
    v16 = v10;
    v2 = v23;
    MEMORY[0x22AACAD50](v16, -1, -1);

    v17 = (*(v4 + 8))(v6, v22);
  }

  else
  {

    v17 = (*(v4 + 8))(v6, v3);
  }

  MEMORY[0x28223BE20](v17);
  *(&v22 - 4) = v0;
  *(&v22 - 3) = sub_2293B383C;
  *(&v22 - 2) = 0;
  result = sub_2293B43B0(sub_2293B5D7C, (&v22 - 6));
  if (!v2)
  {
    v19 = *(v0 + 64);
    v20 = *(v0 + 72);
    v21 = result;
    __swift_project_boxed_opaque_existential_1((v0 + 40), v19);
    (*(v20 + 8))(*(v0 + 24), v19, v20);
    return v21;
  }

  return result;
}

id sub_2293B3860(void *a1)
{
  result = sub_2293B38CC(a1);
  if (!v2)
  {
    v4 = *(v1 + 64);
    v5 = *(v1 + 72);
    __swift_project_boxed_opaque_existential_1((v1 + 40), v4);
    return (*(v5 + 8))(*(v1 + 24), v4, v5);
  }

  return result;
}

id sub_2293B38CC(void *a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2293C01F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293C01D0();

  v8 = a1;
  v9 = sub_2293C01E0();
  v10 = sub_2293C06E0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v36 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v37 = v8;
    v38[0] = v13;
    v14 = v13;
    *v12 = 136315394;
    v15 = sub_2293B4BC4();
    v17 = sub_2293B4E34(v15, v16, v38);
    v35 = v4;
    v18 = v17;

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    v19 = HDCodablePinnedContentState.logDescription.getter();
    v21 = sub_2293B4E34(v19, v20, v38);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_22939E000, v9, v10, "%s: Setting state to %s", v12, 0x16u);
    swift_arrayDestroy();
    v22 = v14;
    v8 = v37;
    MEMORY[0x22AACAD50](v22, -1, -1);
    MEMORY[0x22AACAD50](v12, -1, -1);

    (*(v5 + 8))(v7, v35);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v23 = *(v1 + 32);
  v24 = [v8 data];
  if (v24)
  {
    v25 = v24;
    v26 = sub_2293C0030();
    v28 = v27;

    v29 = sub_2293C0010();
    sub_2293B5660(v26, v28);
  }

  else
  {
    v29 = 0;
  }

  v30 = sub_2293C0550();

  v38[0] = 0;
  v31 = [v23 setData:v29 forKey:v30 error:v38];

  if (v31)
  {
    return v38[0];
  }

  v33 = v38[0];
  sub_2293BFFE0();

  return swift_willThrow();
}

_DWORD *sub_2293B3C1C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_2293C01F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293C01D0();

  v10 = a1;
  v11 = sub_2293C01E0();
  v12 = sub_2293C06E0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v35 = v2;
    v14 = v13;
    v33 = swift_slowAlloc();
    v36 = v33;
    *v14 = 136315394;
    v34 = v6;
    v15 = a1;
    v16 = sub_2293B4BC4();
    v18 = v7;
    v19 = sub_2293B4E34(v16, v17, &v36);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = MEMORY[0x22AACA240](v15, MEMORY[0x277D0FD08]);
    v22 = sub_2293B4E34(v20, v21, &v36);
    v10 = v15;

    *(v14 + 14) = v22;
    _os_log_impl(&dword_22939E000, v11, v12, "%s: Applying differences: %s", v14, 0x16u);
    v23 = v33;
    swift_arrayDestroy();
    MEMORY[0x22AACAD50](v23, -1, -1);
    v24 = v14;
    v3 = v35;
    MEMORY[0x22AACAD50](v24, -1, -1);

    v25 = (*(v18 + 8))(v9, v34);
  }

  else
  {

    v25 = (*(v7 + 8))(v9, v6);
  }

  v26 = MEMORY[0x28223BE20](v25);
  *(&v32 - 2) = v10;
  MEMORY[0x28223BE20](v26);
  *(&v32 - 4) = v4;
  *(&v32 - 3) = sub_2293B5790;
  *(&v32 - 2) = v27;
  result = sub_2293B43B0(sub_2293B5D7C, (&v32 - 6));
  if (!v3)
  {
    v29 = *(v4 + 64);
    v30 = *(v4 + 72);
    v31 = result;
    __swift_project_boxed_opaque_existential_1((v4 + 40), v29);
    (*(v30 + 8))(*(v4 + 24), v29, v30);
    return v31;
  }

  return result;
}

void sub_2293B3F44(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2293C0420();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v34 - v11;
  v44 = type metadata accessor for CoherentPinnedContentState(0);
  v12 = MEMORY[0x28223BE20](v44);
  v36 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v16 = *(a2 + 16);
  if (!v16)
  {
LABEL_9:
    HDCodablePinnedContentState.setShouldRespectOrder()();
    return;
  }

  v35 = v10;
  v42 = *MEMORY[0x277CFB5F0];
  v40 = v6;
  v41 = (v7 + 104);
  v43 = (v7 + 8);
  v17 = (a2 + 56);
  v38 = &v34 - v14;
  v39 = a1;
  while (1)
  {
    v23 = *(v17 - 2);
    v47 = *(v17 - 3);
    v24 = *(v17 - 1);
    v25 = *v17;
    v52 = v23;

    v45 = v25;
    v46 = v24;
    if (v25)
    {
      break;
    }

    sub_2293BD0B0();
    v29 = v37;
    if (v3)
    {
      v32 = v47;
      v33 = v52;
      goto LABEL_12;
    }

    v48 = v47;
    v49 = v52;
    sub_2293AEB44();
    sub_2293C0370();

    sub_2293C04F0();
    v27 = sub_2293C04E0();
    (*v41)(v29, v42, v6);
    sub_2293B5BC4();
    v28 = v15;
    v30 = sub_2293C0440();
LABEL_3:
    v18 = v30;
    v19 = v31;
    v20 = v29;
    v21 = sub_2293C0010();
    sub_2293B5660(v18, v19);
    [v39 setPinnedContentStateData_];

    sub_2293B5BBC(v47, v52);
    v22 = v20;
    v6 = v40;
    (*v43)(v22, v40);
    sub_2293B04C0(v28);
    v17 += 32;
    --v16;
    v15 = v38;
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v26 = v36;
  sub_2293BD0B0();
  if (!v3)
  {
    sub_2293B77F8(v24, 0);
    v3 = 0;
    v50 = v47;
    v51 = v52;
    sub_2293AEB44();
    sub_2293C0360();
    sub_2293C04F0();
    v27 = sub_2293C04E0();
    v28 = v26;
    v29 = v35;
    (*v41)(v35, v42, v6);
    sub_2293B5BC4();
    v30 = sub_2293C0440();
    goto LABEL_3;
  }

  v32 = v47;
  v33 = v52;
LABEL_12:
  sub_2293B5BBC(v32, v33);
}

_DWORD *sub_2293B43B0(uint64_t a1, uint64_t a2)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2293C01F0();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = 0;
  v8 = [*(v2 + 16) database];
  v9 = [objc_opt_self() contextForWritingProtectedData];
  v10 = swift_allocObject();
  v10[2] = v36;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2293B5C1C;
  *(v11 + 24) = v10;
  v34 = sub_2293B5C28;
  v35 = v11;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v32 = sub_2293B4868;
  v33 = &block_descriptor;
  v12 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v13 = [v8 performTransactionWithContext:v9 error:&aBlock block:v12 inaccessibilityHandler:0];
  _Block_release(v12);

  v14 = aBlock;
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  if (!v13)
  {
    sub_2293BFFE0();

LABEL_9:
    swift_willThrow();
    v25 = v36[0];

    return v14;
  }

  v14 = v36[0];
  if (!v36[0])
  {
    sub_2293C01D0();

    v15 = sub_2293C01E0();
    v16 = sub_2293C06D0();

    if (os_log_type_enabled(v15, v16))
    {
      v14 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v14 = 136315394;
      v18 = sub_2293B4BC4();
      v20 = sub_2293B4E34(v18, v19, &v30);

      *(v14 + 1) = v20;
      *(v14 + 6) = 2080;
      aBlock = xmmword_2293C2A30;
      v21 = sub_2293C0590();
      v23 = sub_2293B4E34(v21, v22, &v30);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_22939E000, v15, v16, "%s: No output returned during write operation: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AACAD50](v17, -1, -1);
      MEMORY[0x22AACAD50](v14, -1, -1);
    }

    (*(v28 + 8))(v7, v29);
    sub_2293AEBA4();
    swift_allocError();
    *v24 = xmmword_2293C2A30;
    goto LABEL_9;
  }

  return v14;
}

uint64_t sub_2293B47E4(uint64_t a1, uint64_t a2, void **a3, void (*a4)(void **__return_ptr, uint64_t))
{
  a4(&v7, a1);
  v5 = *a3;
  *a3 = v7;

  return 1;
}

uint64_t sub_2293B4868(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

_DWORD *sub_2293B48B4(uint64_t a1, uint64_t a2)
{
  v8[3] = a1;
  v8[4] = a2;
  result = sub_2293B43B0(sub_2293B5D7C, v8);
  if (!v3)
  {
    v5 = *(v2 + 64);
    v6 = *(v2 + 72);
    v7 = result;
    __swift_project_boxed_opaque_existential_1((v2 + 40), v5);
    (*(v6 + 8))(*(v2 + 24), v5, v6);
    return v7;
  }

  return result;
}

void sub_2293B4958(void (*a2)(void)@<X1>, void *a3@<X8>)
{
  v6 = sub_2293C01F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2293B2500();
  if (!v3)
  {
    v11 = v10;
    a2();
    sub_2293B38CC(v11);
    v26 = 0;
    sub_2293C01D0();

    v12 = v11;
    v13 = sub_2293C01E0();
    v14 = sub_2293C06E0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v15 = 136315394;
      v24 = v14;
      v16 = sub_2293B4BC4();
      v18 = sub_2293B4E34(v16, v17, &v27);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v19 = HDCodablePinnedContentState.logDescription.getter();
      v21 = sub_2293B4E34(v19, v20, &v27);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_22939E000, v13, v24, "%s: Mutation complete, new state=%s", v15, 0x16u);
      v22 = v25;
      swift_arrayDestroy();
      MEMORY[0x22AACAD50](v22, -1, -1);
      MEMORY[0x22AACAD50](v15, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    *a3 = v12;
  }
}

uint64_t sub_2293B4BC4()
{
  v1 = sub_2293C0900();
  MEMORY[0x22AACA1F0](v1);

  MEMORY[0x22AACA1F0](24413, 0xE200000000000000);
  v2 = [*(v0 + 16) profileIdentifier];
  v3 = [v2 description];
  v4 = sub_2293C0570();
  v6 = v5;

  MEMORY[0x22AACA1F0](v4, v6);

  MEMORY[0x22AACA1F0](95, 0xE100000000000000);
  v7 = sub_2293BFF70();
  MEMORY[0x22AACA1F0](v7);

  return 91;
}

unint64_t PinnedContentDaemonStore.Failure.debugDescription.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0xD000000000000021;
  }

  if (v1 == 1)
  {
    return 0xD00000000000002FLL;
  }

  v3 = *v0;
  sub_2293C07B0();

  MEMORY[0x22AACA1F0](v3, v1);
  MEMORY[0x22AACA1F0](46, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t PinnedContentDaemonStore.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

unint64_t sub_2293B4E34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2293B4F00(v11, 0, 0, 1, a1, a2);
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
    sub_2293B5C6C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2293B4F00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2293B500C(a5, a6);
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
    result = sub_2293C07D0();
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

void *sub_2293B500C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2293B5058(a1, a2);
  sub_2293B5188(&unk_283CB5518);
  return v3;
}

void *sub_2293B5058(uint64_t a1, unint64_t a2)
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

  v6 = sub_2293B5274(v5, 0);
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

  result = sub_2293C07D0();
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
        v10 = sub_2293C05D0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2293B5274(v10, 0);
        result = sub_2293C07A0();
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

uint64_t sub_2293B5188(uint64_t result)
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

  result = sub_2293B5300(result, v11, 1, v3);
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

void *sub_2293B5274(uint64_t a1, uint64_t a2)
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

  sub_2293B5CC8(0, &qword_2813D93E0, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2293B5300(char *result, int64_t a2, char a3, char *a4)
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
    sub_2293B5CC8(0, &qword_2813D93E0, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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

uint64_t sub_2293B540C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a5;
  v19 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2 & 1;
  v12 = a1;
  sub_2293BFF70();
  v13 = objc_allocWithZone(MEMORY[0x277D10718]);
  v14 = sub_2293C0550();

  v15 = [v13 initWithCategory:100 domainName:v14 profile:v12];

  *(a4 + 32) = v15;
  sub_2293B19C8(&v17, a4 + 40);
  return a4;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_2293B5568()
{
  result = qword_2813D9400;
  if (!qword_2813D9400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813D9400);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2293B55F8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2293B564C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2293B5660(result, a2);
  }

  return result;
}

uint64_t sub_2293B5660(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_09HealthAppA6Daemon013PinnedContentC5StoreC7FailureO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2293B5ADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2293B5B30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_2293B5B8C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_2293B5BC4()
{
  result = qword_2813D95B8;
  if (!qword_2813D95B8)
  {
    type metadata accessor for CoherentPinnedContentState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D95B8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2293B5C6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2293B5CC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id PinnedContentDaemonStore.makeDefaultState()()
{
  if (*(v0 + 24))
  {
    return sub_2293B67D4();
  }

  else
  {
    return sub_2293B5DC4();
  }
}

id sub_2293B5DC4()
{
  v2 = v0;
  v68 = *v0;
  v3 = sub_2293C01F0();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v66 - v7;
  if ([objc_opt_self() hasPairedWatch])
  {
    v9 = [objc_opt_self() activitySummaryType];
    v10 = sub_2293C06C0();
    v12 = v11;

    v13 = sub_2293B66D4(0, 1, 1, MEMORY[0x277D84F90]);
    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_2293B66D4((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[16 * v15];
    *(v16 + 4) = v10;
    *(v16 + 5) = v12;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v17 = v2[2];
  v18 = sub_2293B654C();
  if (v1)
  {
    sub_2293C01D0();

    v19 = v1;
    v20 = sub_2293C01E0();
    v21 = sub_2293C06D0();

    v22 = v1;
    if (os_log_type_enabled(v20, v21))
    {
      v23 = swift_slowAlloc();
      v67 = v1;
      v24 = v23;
      v25 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v72 = v66;
      *v24 = 136315650;
      v26 = sub_2293C0900();
      v28 = sub_2293B4E34(v26, v27, &v72);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2112;
      v29 = [v17 profileIdentifier];
      *(v24 + 14) = v29;
      *v25 = v29;
      *(v24 + 22) = 2080;
      v71 = v67;
      v30 = v67;
      sub_2293B6A4C();
      v31 = sub_2293C0590();
      v33 = sub_2293B4E34(v31, v32, &v72);

      *(v24 + 24) = v33;
      _os_log_impl(&dword_22939E000, v20, v21, "[%s]_%@: Unable to fetch wheelchair use: %s", v24, 0x20u);
      sub_2293B6AB0(v25);
      MEMORY[0x22AACAD50](v25, -1, -1);
      v34 = v66;
      swift_arrayDestroy();
      MEMORY[0x22AACAD50](v34, -1, -1);
      v35 = v24;
      v22 = v67;
      MEMORY[0x22AACAD50](v35, -1, -1);
    }

    (*(v69 + 8))(v6, v70);
    sub_2293B6BC4(0, &qword_2813D9410, 0x277CCD830);
    v36 = MEMORY[0x22AACA320](*MEMORY[0x277CCCC70]);
    v37 = sub_2293C06C0();
    v39 = v38;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_2293B66D4(0, *(v13 + 2) + 1, 1, v13);
    }

    v41 = *(v13 + 2);
    v40 = *(v13 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v13 = sub_2293B66D4((v40 > 1), v41 + 1, 1, v13);
    }

    goto LABEL_28;
  }

  v43 = v18;
  if (v18 >= 2)
  {
    if (v18 != 2)
    {
      sub_2293C01D0();

      v47 = sub_2293C01E0();
      v48 = sub_2293C06D0();

      if (os_log_type_enabled(v47, v48))
      {
        v50 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v72 = v67;
        *v50 = 136315650;
        v51 = sub_2293C0900();
        v53 = sub_2293B4E34(v51, v52, &v72);
        LODWORD(v68) = v48;
        v54 = v53;

        *(v50 + 4) = v54;
        *(v50 + 12) = 2112;
        v55 = [v17 profileIdentifier];
        *(v50 + 14) = v55;
        v56 = v66;
        *v66 = v55;
        *(v50 + 22) = 2080;
        v71 = v43;
        type metadata accessor for HKWheelchairUse(0);
        v57 = sub_2293C0590();
        v59 = sub_2293B4E34(v57, v58, &v72);

        *(v50 + 24) = v59;
        _os_log_impl(&dword_22939E000, v47, v68, "[%s]_%@: Unknown wheelchair status: %s", v50, 0x20u);
        sub_2293B6AB0(v56);
        MEMORY[0x22AACAD50](v56, -1, -1);
        v60 = v67;
        swift_arrayDestroy();
        MEMORY[0x22AACAD50](v60, -1, -1);
        MEMORY[0x22AACAD50](v50, -1, -1);
      }

      (*(v69 + 8))(v8, v70);
      sub_2293B6BC4(0, &qword_2813D9410, 0x277CCD830);
      v61 = MEMORY[0x22AACA320](*MEMORY[0x277CCCC70]);
      v37 = sub_2293C06C0();
      v39 = v62;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_2293B66D4(0, *(v13 + 2) + 1, 1, v13);
      }

      goto LABEL_26;
    }

    sub_2293B6BC4(0, &qword_2813D9410, 0x277CCD830);
    v44 = MEMORY[0x277CCCC10];
  }

  else
  {
    sub_2293B6BC4(0, &qword_2813D9410, 0x277CCD830);
    v44 = MEMORY[0x277CCCC70];
  }

  v45 = MEMORY[0x22AACA320](*v44);
  v37 = sub_2293C06C0();
  v39 = v46;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_2293B66D4(0, *(v13 + 2) + 1, 1, v13);
  }

LABEL_26:
  v41 = *(v13 + 2);
  v63 = *(v13 + 3);
  v42 = v41 + 1;
  if (v41 >= v63 >> 1)
  {
    v13 = sub_2293B66D4((v63 > 1), v41 + 1, 1, v13);
  }

LABEL_28:
  *(v13 + 2) = v42;
  v64 = &v13[16 * v41];
  *(v64 + 4) = v37;
  *(v64 + 5) = v39;
  sub_2293B6BC4(0, &qword_2813D9400, 0x277D10640);
  return HDCodablePinnedContentState.init(pinnedIdentifiers:)(v13);
}

id sub_2293B654C()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v1 = [v0 userCharacteristicsManager];
  sub_2293B6BC4(0, &qword_2813D9408, 0x277CCD0D0);
  v2 = MEMORY[0x22AACA360](*MEMORY[0x277CCBB28]);
  v8[0] = 0;
  v3 = [v1 userCharacteristicForType:v2 error:v8];

  if (v3)
  {
    v4 = v8[0];
    sub_2293C0760();
    swift_unknownObjectRelease();
    sub_2293B6BC4(0, &qword_27D86CE78, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v5 = [v7 integerValue];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = v8[0];
    sub_2293BFFE0();

    swift_willThrow();
  }

  return v5;
}

char *sub_2293B66D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2293B6B74();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_2293B67D4()
{
  v0 = objc_opt_self();
  result = [v0 bloodPressureType];
  if (result)
  {
    v2 = result;
    v3 = sub_2293C06C0();
    v5 = v4;

    v6 = sub_2293B66D4(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_2293B66D4((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = v3;
    *(v9 + 5) = v5;
    sub_2293B6BC4(0, &qword_2813D9410, 0x277CCD830);
    v10 = MEMORY[0x22AACA320](*MEMORY[0x277CCCAF8]);
    v11 = sub_2293C06C0();
    v13 = v12;

    v15 = *(v6 + 2);
    v14 = *(v6 + 3);
    if (v15 >= v14 >> 1)
    {
      v6 = sub_2293B66D4((v14 > 1), v15 + 1, 1, v6);
    }

    *(v6 + 2) = v15 + 1;
    v16 = &v6[16 * v15];
    *(v16 + 4) = v11;
    *(v16 + 5) = v13;
    v17 = [v0 stateOfMindType];
    v18 = sub_2293C06C0();
    v20 = v19;

    v22 = *(v6 + 2);
    v21 = *(v6 + 3);
    if (v22 >= v21 >> 1)
    {
      v6 = sub_2293B66D4((v21 > 1), v22 + 1, 1, v6);
    }

    *(v6 + 2) = v22 + 1;
    v23 = &v6[16 * v22];
    *(v23 + 4) = v18;
    *(v23 + 5) = v20;
    if ([objc_opt_self() hasPairedWatch])
    {
      v24 = MEMORY[0x22AACA320](*MEMORY[0x277CCC990]);
      v25 = sub_2293C06C0();
      v27 = v26;

      v29 = *(v6 + 2);
      v28 = *(v6 + 3);
      if (v29 >= v28 >> 1)
      {
        v6 = sub_2293B66D4((v28 > 1), v29 + 1, 1, v6);
      }

      *(v6 + 2) = v29 + 1;
      v30 = &v6[16 * v29];
      *(v30 + 4) = v25;
      *(v30 + 5) = v27;
    }

    sub_2293B6BC4(0, &qword_2813D9400, 0x277D10640);
    return HDCodablePinnedContentState.init(pinnedIdentifiers:)(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2293B6A4C()
{
  result = qword_2813D93D8;
  if (!qword_2813D93D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813D93D8);
  }

  return result;
}

uint64_t sub_2293B6AB0(uint64_t a1)
{
  sub_2293B6B0C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2293B6B0C(uint64_t a1)
{
  if (!qword_2813D93F0)
  {
    sub_2293B6BC4(255, &qword_2813D93F8, 0x277D82BB8);
    v1 = sub_2293C0750();
    if (!v2)
    {
      atomic_store(v1, &qword_2813D93F0);
    }
  }
}

void sub_2293B6B74()
{
  if (!qword_2813D93E8)
  {
    v0 = sub_2293C0860();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D93E8);
    }
  }
}

uint64_t sub_2293B6BC4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id PinnedContentDaemonStore.setModel(_:)(void *a1)
{
  result = sub_2293B38CC(a1);
  if (!v2)
  {
    v4 = *(v1 + 64);
    v5 = *(v1 + 72);
    __swift_project_boxed_opaque_existential_1((v1 + 40), v4);
    return (*(v5 + 8))(*(v1 + 24), v4, v5);
  }

  return result;
}

id sub_2293B6C90(void *a1)
{
  v3 = *v1;
  result = sub_2293B38CC(a1);
  if (!v2)
  {
    v5 = *(v3 + 64);
    v6 = *(v3 + 72);
    __swift_project_boxed_opaque_existential_1((v3 + 40), v5);
    return (*(v6 + 8))(*(v3 + 24), v5, v6);
  }

  return result;
}

id (*sub_2293B6D48(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 epoch];
  return sub_2293B6D9C;
}

uint64_t sub_2293B6DB0()
{
  swift_getObjectType();
  [v0 copy];
  sub_2293C0760();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v2;
}

uint64_t PinnedContentSyncStateUpdaterDelegate.__allocating_init(profile:pinnedContentDomain:notificationPoster:maxDataSizeInBytes:)(void *a1, char a2, void *a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v7 = sub_2293C01F0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v26[-v12];
  sub_2293C01D0();
  v14 = "PinnedContentDomainSummary";
  v27 = a2 & 1;
  if (a2)
  {
    v14 = "PinnedContentDomainLogging";
  }

  v28 = v14 - 32;
  v29 = "seTransaction8^@16";
  sub_2293B752C(a3, v32);
  type metadata accessor for PinnedContentDaemonStore();
  v15 = swift_allocObject();
  v16 = v33;
  v17 = v34;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x28223BE20](v18);
  v20 = &v26[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v21 + 16))(v20);
  v22 = a1;
  v23 = sub_2293B540C(v22, v27, v20, v15, v16, v17);
  __swift_destroy_boxed_opaque_existential_0(v32);
  objc_allocWithZone(type metadata accessor for PinnedContentSyncStateUpdaterDelegate(0));
  (*(v8 + 16))(v11, v13, v7);
  v32[0] = v23;
  v24 = sub_2293C00D0();

  __swift_destroy_boxed_opaque_existential_0(v30);
  (*(v8 + 8))(v13, v7);
  return v24;
}

uint64_t PinnedContentSyncStateUpdaterDelegate.__allocating_init(logger:key:supportedSyncVersionRange:domain:store:maxDataSizeInBytes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v18[1] = a6;
  v18[2] = a8;
  v12 = sub_2293C01F0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(v9);
  (*(v13 + 16))(v15, a1, v12);
  v18[3] = a7;
  v16 = sub_2293C00D0();
  (*(v13 + 8))(a1, v12);
  return v16;
}

uint64_t PinnedContentSyncStateUpdaterDelegate.init(logger:key:supportedSyncVersionRange:domain:store:maxDataSizeInBytes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15[1] = a8;
  v10 = sub_2293C01F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  (*(v11 + 16))(v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v15[3] = a7;
  v13 = sub_2293C00D0();
  (*(v11 + 8))(a1, v10);
  return v13;
}

id PinnedContentSyncStateUpdaterDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PinnedContentSyncStateUpdaterDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2293B73D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v17[1] = a6;
  v17[2] = a8;
  v10 = sub_2293C01F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a7;
  objc_allocWithZone(type metadata accessor for PinnedContentSyncStateUpdaterDelegate(0));
  (*(v11 + 16))(v13, a1, v10);
  v17[3] = v14;
  v15 = sub_2293C00D0();
  (*(v11 + 8))(a1, v10);
  return v15;
}

uint64_t sub_2293B752C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for PinnedContentSyncStateUpdaterDelegate(uint64_t a1)
{
  result = qword_27D86CE88;
  if (!qword_27D86CE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2293B75E0()
{
  result = qword_27D86CE80;
  if (!qword_27D86CE80)
  {
    sub_2293B5568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86CE80);
  }

  return result;
}

uint64_t type metadata accessor for CoherentPinnedContentState(uint64_t a1)
{
  result = qword_2813D9590;
  if (!qword_2813D9590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2293B76F4(uint64_t a1)
{
  sub_2293B0408();
  if (v1 <= 0x3F)
  {
    sub_2293AEB44();
    if (v2 <= 0x3F)
    {
      sub_2293B7790(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2293B7790(uint64_t a1)
{
  if (!qword_2813D9428)
  {
    sub_2293C0490();
    v1 = sub_2293C0520();
    if (!v2)
    {
      atomic_store(v1, &qword_2813D9428);
    }
  }
}

unint64_t sub_2293B77F8(unint64_t a1, char a2)
{
  v4 = sub_2293C01F0();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoherentPinnedContentState(0);
  sub_2293AEB44();
  result = sub_2293C0380();
  if ((a2 & 1) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result >= a1)
    {
      return a1;
    }

    else
    {
      v8 = sub_2293C0380();
      sub_2293C01D0();
      v9 = sub_2293C01E0();
      v10 = sub_2293C06D0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23 = v18;
        *v11 = 136315394;
        *(v11 + 4) = sub_2293B4E34(0xD00000000000001ALL, 0x80000002293C2CD0, &v23);
        *(v11 + 12) = 2080;
        v20 = a1;
        v21 = v8;
        v22 = 1;
        v12 = sub_2293C0590();
        v14 = sub_2293B4E34(v12, v13, &v23);

        *(v11 + 14) = v14;
        _os_log_impl(&dword_22939E000, v9, v10, "[%s]: Could not sanitize index: %s", v11, 0x16u);
        v15 = v18;
        swift_arrayDestroy();
        MEMORY[0x22AACAD50](v15, -1, -1);
        MEMORY[0x22AACAD50](v11, -1, -1);
      }

      (*(v19 + 8))(v6, v4);
      sub_2293B920C();
      swift_allocError();
      *v16 = a1;
      *(v16 + 8) = v8;
      *(v16 + 16) = 1;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_2293B7A88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_2293C01F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2293B77F8(a3, 0);
  if (!v3)
  {
    v23 = result;
    type metadata accessor for CoherentPinnedContentState(0);
    sub_2293B7D64(a1, a2);
    if (v12)
    {
      sub_2293C01D0();

      v13 = sub_2293C01E0();
      v14 = sub_2293C06D0();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v27 = v22;
        *v15 = 136315650;
        *(v15 + 4) = sub_2293B4E34(0xD00000000000001ALL, 0x80000002293C2CD0, &v27);
        *(v15 + 12) = 2048;
        *(v15 + 14) = v23;
        *(v15 + 22) = 2080;
        v24 = a1;
        v25 = a2;
        v26 = 0;

        v16 = sub_2293C0590();
        LODWORD(v23) = v14;
        v18 = sub_2293B4E34(v16, v17, &v27);

        *(v15 + 24) = v18;
        _os_log_impl(&dword_22939E000, v13, v23, "[%s]: Attempted to move item to index %ld failed: %s", v15, 0x20u);
        v19 = v22;
        swift_arrayDestroy();
        MEMORY[0x22AACAD50](v19, -1, -1);
        MEMORY[0x22AACAD50](v15, -1, -1);
      }

      (*(v8 + 8))(v10, v7);
      sub_2293B920C();
      swift_allocError();
      *v20 = a1;
      *(v20 + 8) = a2;
      *(v20 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      sub_2293AEB44();
      return sub_2293C0350();
    }
  }

  return result;
}

uint64_t sub_2293B7D64(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  sub_2293AEB44();
  sub_2293B8EA0(&unk_27D86CEB0, sub_2293AEB44, MEMORY[0x277CFB590]);
  sub_2293C0670();
  if ((v13 & 1) == 0)
  {
    return v12;
  }

  sub_2293C0660();
  while (1)
  {
    sub_2293C0680();
    v4 = v14;
    if (v14 == v12)
    {
      return 0;
    }

    v5 = sub_2293C06A0();
    v8 = *v6;
    v7 = v6[1];

    v5(&v12, 0);
    if (v8 == a1 && v7 == a2)
    {
      break;
    }

    v10 = sub_2293C0870();

    if (v10)
    {
      return v4;
    }

    sub_2293C0690();
  }

  return v4;
}

uint64_t sub_2293B7EF4()
{
  qword_2813D9CA0 = 0xD000000000000014;
  *algn_2813D9CA8 = 0x80000002293C3FE0;
  qword_2813D9CB0 = swift_getKeyPath();
  unk_2813D9CB8 = 0xD000000000000012;
  qword_2813D9CC0 = 0x80000002293C4000;
  result = swift_getKeyPath();
  qword_2813D9CC8 = result;
  return result;
}

uint64_t sub_2293B7F6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_2293C07B0();

    v8 = 0x207865646E49;
    v5 = sub_2293C0850();
    MEMORY[0x22AACA1F0](v5);

    MEMORY[0x22AACA1F0](0xD000000000000020, 0x80000002293C4020);
    v6 = sub_2293C0850();
    MEMORY[0x22AACA1F0](v6);
  }

  else
  {
    sub_2293C07B0();

    v8 = 0x696669746E656449;
    MEMORY[0x22AACA1F0](a1, a2);
    MEMORY[0x22AACA1F0](0xD000000000000019, 0x80000002293C4050);
  }

  return v8;
}

uint64_t sub_2293B81D4(uint64_t a1)
{
  v2 = sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);

  return MEMORY[0x28214D858](a1, v2);
}

uint64_t sub_2293B82A0@<X0>(void *a1@<X8>)
{
  if (qword_2813D95E0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_2813D9CA8;
  v3 = qword_2813D9CB0;
  v2 = unk_2813D9CB8;
  v4 = qword_2813D9CC0;
  v5 = qword_2813D9CC8;
  *a1 = qword_2813D9CA0;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_2293B8344(uint64_t a1)
{
  v2 = sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);

  return MEMORY[0x28214D8D8](a1, v2);
}

uint64_t sub_2293B83BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_2293B8418@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *(a2 + *(a1 + 24)) = MEMORY[0x277D84F98];
  sub_2293C03F0();
  sub_2293B91BC();
  sub_2293B8EA0(&qword_2813D9418, sub_2293B91BC, MEMORY[0x277D83970]);
  return sub_2293C03B0();
}

uint64_t sub_2293B8508(uint64_t a1)
{
  v2 = sub_2293B8EA0(&qword_2813D95B0, type metadata accessor for CoherentPinnedContentState, &unk_2293C2D4C);

  return MEMORY[0x28214E298](a1, v2);
}

uint64_t sub_2293B8574(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);

  return MEMORY[0x28214D8C0](a1, a2, v4);
}

uint64_t sub_2293B85F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);

  return MEMORY[0x28214D868](a1, a2, v4);
}

uint64_t sub_2293B8674(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);

  return MEMORY[0x28214D890](a1, a2, v4);
}

uint64_t sub_2293B86F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);

  return MEMORY[0x28214D8D0](a1, a2, v4);
}

uint64_t sub_2293B876C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);

  return MEMORY[0x28214D898](a1, a2, a3, v6);
}

uint64_t sub_2293B8800(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);

  return MEMORY[0x28214D8C8](a1, a2, v4);
}

uint64_t sub_2293B887C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);

  return MEMORY[0x28214D8A0](a1, a2, v4);
}

uint64_t sub_2293B88F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);

  return MEMORY[0x28214D880](a1, a2, v4);
}

uint64_t sub_2293B897C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);

  return MEMORY[0x28214D878](a1, a2, v4);
}

uint64_t sub_2293B8A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);

  return MEMORY[0x28214D860](a1, a2, a3, v6);
}

uint64_t sub_2293B8A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);

  return MEMORY[0x28214D848](a1, a2, v4);
}

uint64_t sub_2293B8B10(uint64_t a1)
{
  v2 = sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);

  return MEMORY[0x28214D870](a1, v2);
}

uint64_t sub_2293B8B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);

  return MEMORY[0x28214D850](a1, a2, v4);
}

uint64_t sub_2293B8C00(uint64_t a1, uint64_t a2)
{
  sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);

  return sub_2293C02C0();
}

void sub_2293B8C84()
{
  sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);

  JUMPOUT(0x22AAC9F00);
}

uint64_t sub_2293B8EA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2293B9128(uint64_t a1)
{
  if (!qword_27D86CEA0)
  {
    type metadata accessor for CoherentPinnedContentState(255);
    sub_2293B8EA0(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);
    v1 = sub_2293C0430();
    if (!v2)
    {
      atomic_store(v1, &qword_27D86CEA0);
    }
  }
}

void sub_2293B91BC()
{
  if (!qword_2813D9420)
  {
    v0 = sub_2293C0630();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D9420);
    }
  }
}

unint64_t sub_2293B920C()
{
  result = qword_27D86CEA8;
  if (!qword_27D86CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86CEA8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2293B9280(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2293B92C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_2293B9360()
{
  sub_2293BE234(&unk_283CB5540);
  sub_2293BB084(&unk_283CB5560);
  v0 = sub_2293C0550();
  v1 = sub_2293C0640();

  v2 = [objc_opt_self() schemaWithDomain:v0 dataKeys:v1];

  qword_2813D95F0 = v2;
}

id static AppAnalyticsAcceptanceStateSyncEntity.stateEntitySchema.getter()
{
  if (qword_2813D95E8 != -1)
  {
    swift_once();
  }

  v1 = qword_2813D95F0;

  return v1;
}

id AppAnalyticsAcceptanceStateSyncEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppAnalyticsAcceptanceStateSyncEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppAnalyticsAcceptanceStateSyncEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AppAnalyticsAcceptanceStateSyncEntity.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppAnalyticsAcceptanceStateSyncEntity();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2293B96A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v2 + 56) + 8 * v11);

    sub_2293B9810(v13, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v19 = sub_2293B9940(v18, v15);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2293B9810(uint64_t a1, uint64_t a2)
{
  sub_2293C08E0();
  sub_2293C05B0();
  v4 = sub_2293C08F0();

  return sub_2293B9888(a1, a2, v4);
}

unint64_t sub_2293B9888(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2293C0870())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2293B9940(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_2293B6BC4(0, &unk_27D86CF28, 0x277D0FD50);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x22AACA3F0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x22AACA3F0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_2293C0740();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_2293C0740();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_2293C0820();
  }

  result = sub_2293C0820();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_2293B9B90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2293BB014(0, &qword_27D86CF78, MEMORY[0x277D84460]);
    v3 = sub_2293C0830();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2293B9810(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_2293B9CA4(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = sub_2293C0550();
  *&v18[0] = 0;
  v17[0] = 0;
  v4 = [a1 data:v18 forKey:v3 error:v17];

  v5 = v17[0];
  v6 = *&v18[0];
  if (!v4)
  {
    v12 = v17[0];
    v13 = v6;
    sub_2293BFFE0();

    swift_willThrow();
    return v5;
  }

  if (!*&v18[0])
  {
    v14 = v17[0];
    goto LABEL_8;
  }

  v18[0] = xmmword_2293C30D0;
  v7 = v17[0];
  v8 = v6;
  sub_2293C0020();
  v9 = *(&v18[0] + 1);
  if (*(&v18[0] + 1) >> 60 == 15)
  {
LABEL_8:
    v5 = sub_2293B9B90(MEMORY[0x277D84F90]);

    return v5;
  }

  v10 = *&v18[0];
  v5 = sub_2293B6BC4(0, &qword_27D86CF40, 0x277CCAAC8);
  sub_2293BAF0C(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2293C30E0;
  *(v11 + 32) = sub_2293B6BC4(0, &qword_27D86CF58, 0x277CBEAC0);
  *(v11 + 40) = sub_2293B6BC4(0, &qword_27D86CF60, 0x277CCACA8);
  *(v11 + 48) = sub_2293B6BC4(0, &qword_27D86CF68, 0x277CBEA60);
  *(v11 + 56) = sub_2293B6BC4(0, &unk_27D86CF28, 0x277D0FD50);
  sub_2293C0720();
  if (!v1)
  {

    sub_2293BAFB0(v18, v17);
    if (v17[3])
    {
      sub_2293BB014(0, &qword_27D86CF70, MEMORY[0x277D834F8]);
      if (swift_dynamicCast())
      {
        sub_2293AD748(v18);
        sub_2293B564C(v10, v9);
        v5 = v16;

        return v5;
      }
    }

    else
    {
      sub_2293AD748(v17);
    }

    v5 = sub_2293B9B90(MEMORY[0x277D84F90]);
    sub_2293B564C(v10, v9);
    sub_2293AD748(v18);

    return v5;
  }

  sub_2293B564C(v10, v9);

  return v5;
}

void sub_2293B9F90(void *a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = sub_2293C0070();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() pluginIdentifier];
  if (!v10)
  {
    sub_2293C0570();
    v10 = sub_2293C0550();
  }

  v11 = [a2 profileExtensionWithIdentifier_];

  if (v11)
  {
    sub_2293C0760();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (*(&v26 + 1))
  {
    sub_2293B6BC4(0, &qword_27D86CF38, off_278657CB8);
    if (swift_dynamicCast())
    {
      v12 = v24;
      v13 = [v24 appAnalyticsUpdateManager];

      if (v13)
      {
        v23 = a3;
        v14 = v13;
        v15 = [a1 accepted];
        v16 = [a1 agreement];
        if (!v16)
        {
          sub_2293C0570();
          v16 = sub_2293C0550();
        }

        v17 = [a1 version];
        v18 = [a1 modificationDate];
        sub_2293C0060();

        v19 = sub_2293C0050();
        (*(v7 + 8))(v9, v6);
        *&v27[0] = 0;
        v20 = [v14 setAccepted:v15 agreement:v16 version:v17 modificationDate:v19 transaction:v23 error:v27];

        if (v20)
        {
          v21 = *&v27[0];
        }

        else
        {
          v22 = *&v27[0];
          sub_2293BFFE0();

          swift_willThrow();
        }
      }
    }
  }

  else
  {
    sub_2293AD748(v27);
  }
}

void sub_2293BA2B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v77 = a4;
  v96 = *MEMORY[0x277D85DE8];
  v80 = sub_2293C0070();
  v7 = MEMORY[0x28223BE20](v80);
  v75 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v69 - v10;
  v11 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v78 = (v9 + 8);

  v16 = v14;
  v17 = 0;
  v72 = a2;
  v82 = a3;
  v81 = a1;
  v71 = a2 + 64;
  v70 = v15;
  do
  {
LABEL_5:
    if (!v16)
    {
      do
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_61;
        }

        if (v18 >= v15)
        {
          goto LABEL_55;
        }

        v16 = *(v11 + 8 * v18);
        ++v17;
      }

      while (!v16);
      v17 = v18;
    }

    v19 = __clz(__rbit64(v16)) | (v17 << 6);
    v20 = *(a2 + 56);
    v21 = (*(a2 + 48) + 16 * v19);
    v23 = *v21;
    v22 = v21[1];
    v88 = v23;
    v89 = v22;
    v24 = *(v20 + 8 * v19);
    if (v24 >> 62)
    {
      v65 = v16;
      v66 = sub_2293C0820();
      v16 = v65;
      v25 = v66;
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 &= v16 - 1;
  }

  while (!v25);
  v73 = v16;
  v74 = v17;
  v26 = v24 & 0xC000000000000001;
  v83 = v24 + 32;
  v84 = v24 & 0xFFFFFFFFFFFFFF8;

  v27 = 0;
  v86 = v25;
  v87 = v24;
  v85 = v24 & 0xC000000000000001;
  while (1)
  {
    if (v26)
    {
      v28 = MEMORY[0x22AACA3F0](v27, v24);
    }

    else
    {
      if (v27 >= *(v84 + 16))
      {
        goto LABEL_62;
      }

      v28 = *(v83 + 8 * v27);
    }

    v29 = v28;
    v30 = __OFADD__(v27, 1);
    v31 = (v27 + 1);
    if (v30)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
    }

    v32 = *(a1 + 16);
    v90 = v31;
    if (!v32)
    {
      goto LABEL_36;
    }

    v33 = sub_2293B9810(v88, v89);
    if ((v34 & 1) == 0)
    {
      goto LABEL_36;
    }

    v35 = *(*(a1 + 56) + 8 * v33);
    if (v35 >> 62)
    {
      v36 = sub_2293C0820();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v36)
    {
LABEL_35:

      a3 = v82;
      a1 = v81;
      v25 = v86;
      v24 = v87;
      v26 = v85;
LABEL_36:
      v41 = [objc_opt_self() pluginIdentifier];
      if (!v41)
      {
        sub_2293C0570();
        v41 = sub_2293C0550();
      }

      v42 = [a3 profileExtensionWithIdentifier_];

      if (v42)
      {
        sub_2293C0760();
        swift_unknownObjectRelease();
      }

      else
      {
        v93 = 0u;
        v94 = 0u;
      }

      v27 = v90;
      v95[0] = v93;
      v95[1] = v94;
      if (*(&v94 + 1))
      {
        sub_2293B6BC4(0, &qword_27D86CF38, off_278657CB8);
        if (swift_dynamicCast())
        {
          v43 = v92;
          v44 = [v92 appAnalyticsUpdateManager];

          if (!v44)
          {
            goto LABEL_52;
          }

          v45 = v44;
          v46 = [v29 accepted];
          v47 = [v29 agreement];
          if (!v47)
          {
            sub_2293C0570();
            v47 = sub_2293C0550();
          }

          v48 = [v29 version];
          v49 = [v29 modificationDate];
          v50 = v79;
          sub_2293C0060();

          v51 = sub_2293C0050();
          (*v78)(v50, v80);
          *&v95[0] = 0;
          LODWORD(v48) = [v45 setAccepted:v46 agreement:v47 version:v48 modificationDate:v51 transaction:v77 error:v95];

          if (v48)
          {
            v52 = *&v95[0];

            v29 = v45;
            v25 = v86;
            v24 = v87;
            v26 = v85;
            goto LABEL_52;
          }

          v67 = *&v95[0];
          v68 = sub_2293BFFE0();

          v76 = v68;
          swift_willThrow();

          return;
        }
      }

      else
      {
        sub_2293AD748(v95);
      }

      goto LABEL_15;
    }

    v37 = 0;
    v91 = v35 & 0xC000000000000001;
    while (1)
    {
      if (v91)
      {
        v38 = MEMORY[0x22AACA3F0](v37, v35);
      }

      else
      {
        if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v38 = *(v35 + 8 * v37 + 32);
      }

      v31 = v38;
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v40 = [v38 version];
      if (v40 == [v29 version])
      {
        break;
      }

      ++v37;
      if (v39 == v36)
      {
        goto LABEL_35;
      }
    }

    v53 = [v29 modificationDate];
    v54 = v79;
    sub_2293C0060();

    sub_2293C0040();
    v56 = v55;
    v57 = *v78;
    v58 = v54;
    v59 = v80;
    (*v78)(v58, v80);
    v60 = [v31 &off_278658078];
    v61 = v75;
    sub_2293C0060();

    sub_2293C0040();
    v63 = v62;
    v57(v61, v59);
    if (v63 < v56)
    {
      break;
    }

    a3 = v82;
    a1 = v81;
    v25 = v86;
    v24 = v87;
    v26 = v85;
LABEL_52:
    v27 = v90;
LABEL_15:

    if (v27 == v25)
    {

      a2 = v72;
      v11 = v71;
      v15 = v70;
      v17 = v74;
      v16 = v73;
      goto LABEL_5;
    }
  }

  a3 = v82;
  v64 = v76;
  sub_2293B9F90(v29, v82, v77);
  v76 = v64;
  a1 = v81;
  v25 = v86;
  v24 = v87;
  v26 = v85;
  if (!v64)
  {

    goto LABEL_52;
  }

LABEL_59:

LABEL_55:
}

void sub_2293BAAB4(void *a1, id a2, uint64_t a3)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v7 = [a2 profileIdentifier];
  v8 = [v7 type];

  if (v8 != 1)
  {
    return;
  }

  v9 = sub_2293B9CA4(a1);
  if (v3)
  {
    return;
  }

  v10 = v9;
  v11 = objc_opt_self();
  v36[0] = 0;
  v12 = [v11 allAcceptancesInTransaction:a3 error:v36];
  v13 = v36[0];
  if (!v12)
  {
    goto LABEL_8;
  }

  v14 = v12;
  sub_2293BAE50(0);
  v15 = sub_2293C0510();
  v16 = v13;

  if (sub_2293B96A8(v10, v15))
  {

LABEL_7:

    return;
  }

  sub_2293BA2B8(v15, v10, a2, a3);

  v36[0] = 0;
  v18 = [v11 allAcceptancesInTransaction:a3 error:v36];
  v19 = v36[0];
  if (!v18)
  {
LABEL_8:
    v17 = v36[0];

LABEL_9:
    sub_2293BFFE0();

    swift_willThrow();
    return;
  }

  v20 = v18;
  v21 = sub_2293C0510();
  v22 = v19;

  v23 = sub_2293B96A8(v21, v10);

  if (v23)
  {
    goto LABEL_7;
  }

  v24 = objc_opt_self();
  v25 = sub_2293C0500();

  v36[0] = 0;
  v26 = [v24 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:v36];

  v27 = v36[0];
  if (!v26)
  {
    v17 = v27;
    goto LABEL_9;
  }

  v28 = sub_2293C0030();
  v30 = v29;

  v31 = sub_2293C0010();
  v32 = sub_2293C0550();
  v36[0] = 0;
  v33 = [a1 setData:v31 forKey:v32 error:v36];

  if (v33)
  {
    v34 = v36[0];
  }

  else
  {
    v35 = v36[0];
    sub_2293BFFE0();

    swift_willThrow();
  }

  sub_2293B5660(v28, v30);
}

void sub_2293BAE50(uint64_t a1)
{
  if (!qword_27D86CF20)
  {
    sub_2293B6BC4(255, &unk_27D86CF28, 0x277D0FD50);
    v1 = sub_2293C0630();
    if (!v2)
    {
      atomic_store(v1, &qword_27D86CF20);
    }
  }
}

void sub_2293BAEB8()
{
  if (!qword_2813D93D0)
  {
    v0 = sub_2293C0750();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D93D0);
    }
  }
}

void sub_2293BAF0C(uint64_t a1)
{
  if (!qword_27D86CF48)
  {
    sub_2293BAF64();
    v1 = sub_2293C0860();
    if (!v2)
    {
      atomic_store(v1, &qword_27D86CF48);
    }
  }
}

unint64_t sub_2293BAF64()
{
  result = qword_27D86CF50;
  if (!qword_27D86CF50)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27D86CF50);
  }

  return result;
}

uint64_t sub_2293BAFB0(uint64_t a1, uint64_t a2)
{
  sub_2293BAEB8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2293BB014(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_2293BAE50(255);
    v7 = a3(a1, MEMORY[0x277D837D0], v6, MEMORY[0x277D837E0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id sub_2293BB0D8()
{
  sub_2293BB130();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27D86D2D0 = result;
  return result;
}

unint64_t sub_2293BB130()
{
  result = qword_27D86CF80;
  if (!qword_27D86CF80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D86CF80);
  }

  return result;
}

id HDCodablePinnedContentState.init(pinnedIdentifiers:)(uint64_t a1)
{
  v2 = sub_2293C0420();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CoherentPinnedContentState(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v10 = result;
    *&v8[*(v6 + 24)] = MEMORY[0x277D84F98];
    v21 = 1;
    sub_2293C03F0();
    v20[1] = a1;
    sub_2293BD478(0, &qword_2813D9420, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2293BB46C();
    sub_2293C03B0();
    sub_2293C04F0();
    v11 = sub_2293C04E0();
    v12 = v2;
    (*(v3 + 104))(v5, *MEMORY[0x277CFB5F0], v2);
    sub_2293BB4E8(&qword_2813D95B8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2F14);
    v13 = v20[0];
    v14 = sub_2293C0440();
    if (v13)
    {

      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v16 = v14;
      v17 = v15;
      v18 = sub_2293C0010();
      v20[0] = v12;
      v19 = v18;
      sub_2293B5660(v16, v17);
      [v10 setPinnedContentStateData_];

      (*(v3 + 8))(v5, v20[0]);
    }

    sub_2293B04C0(v8);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2293BB46C()
{
  result = qword_2813D9418;
  if (!qword_2813D9418)
  {
    sub_2293BD478(255, &qword_2813D9420, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D9418);
  }

  return result;
}

uint64_t sub_2293BB4E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HDCodablePinnedContentState.getPinnedContent()()
{
  sub_2293AEB44();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for CoherentPinnedContentState(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2293BD0B0();
  if (!v0)
  {
    sub_2293B0408();
    MEMORY[0x22AAC9FF0](&v12);
    (*(v3 + 16))(v5, &v8[*(v6 + 20)], v2);
    sub_2293BB4E8(&qword_2813D9448, sub_2293AEB44, MEMORY[0x277CFB588]);
    sub_2293C05E0();
    v9 = objc_allocWithZone(sub_2293BFF20());
    v2 = sub_2293BFF10();
    sub_2293B04C0(v8);
  }

  return v2;
}

uint64_t HDCodablePinnedContentState.logDescription.getter()
{
  swift_getObjectType();
  sub_2293AEB44();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v22[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CoherentPinnedContentState(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22[-1] - v9;
  sub_2293BD0B0();
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_2293C07B0();

  strcpy(v22, "identifiers=");
  BYTE5(v22[1]) = 0;
  HIWORD(v22[1]) = -5120;
  (*(v2 + 16))(v4, &v10[*(v5 + 20)], v1);
  sub_2293BB4E8(&qword_2813D9448, sub_2293AEB44, MEMORY[0x277CFB588]);
  sub_2293C05E0();
  v11 = MEMORY[0x22AACA240]();
  v13 = v12;

  MEMORY[0x22AACA1F0](v11, v13);

  MEMORY[0x22AACA1F0](0x6E696B636162202CLL, 0xEE003D6174614467);
  sub_2293BD3B0(v10, v8);
  v14 = sub_2293C0590();
  MEMORY[0x22AACA1F0](v14);

  v16 = v22[0];
  v15 = v22[1];
  sub_2293B04C0(v10);
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_2293C07B0();
  v17 = sub_2293C0900();
  v19 = v18;

  v22[0] = v17;
  v22[1] = v19;
  MEMORY[0x22AACA1F0](0x4364656E6E697020, 0xEF3D746E65746E6FLL);
  MEMORY[0x22AACA1F0](v16, v15);

  return v22[0];
}

uint64_t HDCodablePinnedContentState.merge(with:)(uint64_t (*a1)(uint64_t))
{
  v35 = a1;
  v3 = sub_2293C0420();
  v34 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2293C0330();
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CoherentPinnedContentState(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  result = sub_2293BD0B0();
  if (!v2)
  {
    v31 = v5;
    v32 = v14;
    v17 = v33;
    v16 = v34;
    v29 = v1;
    v30 = v3;
    sub_2293BD0B0();
    v35 = type metadata accessor for CoherentPinnedContentState;
    sub_2293BB4E8(&qword_2813D95D8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2EEC);
    v18 = v32;
    sub_2293C02C0();
    v19 = v6;
    v20 = v18;
    (*(v17 + 8))(v8, v19);
    sub_2293C04F0();
    v21 = sub_2293C04E0();
    v22 = v16;
    v23 = v30;
    (*(v16 + 104))(v31, *MEMORY[0x277CFB5F0], v30);
    sub_2293BB4E8(&qword_2813D95B8, v35, &unk_2293C2F14);
    v24 = sub_2293C0440();
    v26 = v25;
    v27 = v23;
    v28 = sub_2293C0010();
    sub_2293B5660(v24, v26);
    [v29 setPinnedContentStateData_];

    (*(v22 + 8))(v31, v27);
    sub_2293B04C0(v12);
    return sub_2293B04C0(v20);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HDCodablePinnedContentState.pinContentWithIdentifier(_:at:)(Swift::String _, Swift::Int_optional at)
{
  v24 = *&at.is_nil;
  value = at.value;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = sub_2293C0420();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CoherentPinnedContentState(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293BD0B0();
  if (!v3)
  {
    v21 = v2;
    v22 = v9;
    v23 = v6;
    sub_2293B77F8(value, v24 & 1);
    v25 = countAndFlagsBits;
    v26 = object;
    sub_2293AEB44();
    sub_2293C0360();
    sub_2293C04F0();
    v13 = sub_2293C04E0();
    v14 = v22;
    v15 = v23;
    (*(v7 + 104))(v22, *MEMORY[0x277CFB5F0], v23);
    sub_2293BB4E8(&qword_2813D95B8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2F14);
    v16 = sub_2293C0440();
    v17 = v13;
    v19 = v18;
    v20 = sub_2293C0010();
    sub_2293B5660(v16, v19);
    [v21 setPinnedContentStateData_];

    (*(v7 + 8))(v14, v15);
    sub_2293B04C0(v12);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HDCodablePinnedContentState.movePinnedContentWithIdentifier(_:to:)(Swift::String _, Swift::Int to)
{
  v24 = to;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = sub_2293C0420();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CoherentPinnedContentState(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293BD0B0();
  if (!v3)
  {
    v23 = v2;
    sub_2293B7A88(countAndFlagsBits, object, v24);
    sub_2293C04F0();
    v13 = sub_2293C04E0();
    v14 = v7;
    v15 = *(v7 + 104);
    v16 = v6;
    v15(v9, *MEMORY[0x277CFB5F0], v6);
    sub_2293BB4E8(&qword_2813D95B8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2F14);
    v17 = sub_2293C0440();
    v18 = v9;
    v20 = v19;
    v21 = sub_2293C0010();
    sub_2293B5660(v17, v20);
    [v23 setPinnedContentStateData_];

    (*(v14 + 8))(v18, v16);
    sub_2293B04C0(v12);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HDCodablePinnedContentState.unpinAllContentInDomain()()
{
  v2 = v0;
  v3 = sub_2293C0420();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CoherentPinnedContentState(0);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293BD0B0();
  if (!v1)
  {
    sub_2293AEB44();
    sub_2293C0390();
    sub_2293C04F0();
    v10 = sub_2293C04E0();
    (*(v4 + 104))(v6, *MEMORY[0x277CFB5F0], v3);
    sub_2293BB4E8(&qword_2813D95B8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2F14);
    v11 = sub_2293C0440();
    v16[1] = 0;
    v12 = v11;
    v14 = v13;
    v15 = sub_2293C0010();
    sub_2293B5660(v12, v14);
    [v2 setPinnedContentStateData_];

    (*(v4 + 8))(v6, v3);
    sub_2293B04C0(v9);
  }
}

uint64_t sub_2293BC490(uint64_t a1, uint64_t a2)
{
  v6 = sub_2293C0420();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CoherentPinnedContentState(0);
  MEMORY[0x28223BE20](v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2293BD0B0();
  if (!v3)
  {
    v20 = v2;
    v19[0] = a1;
    v19[1] = a2;
    sub_2293AEB44();
    sub_2293C0370();

    sub_2293C04F0();
    v14 = sub_2293C04E0();
    (*(v7 + 104))(v9, *MEMORY[0x277CFB5F0], v6);
    sub_2293BB4E8(&qword_2813D95B8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2F14);
    v15 = sub_2293C0440();
    v17 = v16;
    v18 = sub_2293C0010();
    sub_2293B5660(v15, v17);
    [v20 setPinnedContentStateData_];

    (*(v7 + 8))(v9, v6);
    return sub_2293B04C0(v12);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HDCodablePinnedContentState.setShouldRespectOrder()()
{
  v2 = v0;
  v3 = sub_2293C0420();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CoherentPinnedContentState(0);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293BD0B0();
  if (!v1)
  {
    v17 = 1;
    sub_2293B0408();
    sub_2293C03D0();
    sub_2293C04F0();
    v10 = sub_2293C04E0();
    (*(v4 + 104))(v6, *MEMORY[0x277CFB5F0], v3);
    sub_2293BB4E8(&qword_2813D95B8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2F14);
    v11 = sub_2293C0440();
    v16[1] = 0;
    v12 = v11;
    v14 = v13;
    v15 = sub_2293C0010();
    sub_2293B5660(v12, v14);
    [v2 setPinnedContentStateData_];

    (*(v4 + 8))(v6, v3);
    sub_2293B04C0(v9);
  }
}

uint64_t HDCodablePinnedContentState.makeCopy()()
{
  swift_getObjectType();
  [v0 copy];
  sub_2293C0760();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HDCodablePinnedContentState.purgeCoherentMetadataAndIncrementEpoch()()
{
  v2 = sub_2293C0420();
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293AEB44();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CoherentPinnedContentState(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  sub_2293BD0B0();
  if (!v1)
  {
    v29 = v0;
    v30 = 0;
    sub_2293BD414(v14, v12);
    sub_2293B0408();
    MEMORY[0x22AAC9FF0](&v36);
    v31 = v2;
    v15 = v36;
    (*(v6 + 16))(v8, &v12[*(v9 + 20)], v5);
    sub_2293BB4E8(&qword_2813D9448, sub_2293AEB44, MEMORY[0x277CFB588]);
    v16 = sub_2293C05E0();
    *&v14[*(v9 + 24)] = MEMORY[0x277D84F98];
    v35 = v15;
    v17 = v31;
    sub_2293C03F0();
    v34 = v16;
    sub_2293BD478(0, &qword_2813D9420, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2293BB46C();
    sub_2293C03B0();
    sub_2293B04C0(v12);
    sub_2293C04F0();
    v18 = sub_2293C04E0();
    v20 = v32;
    v19 = v33;
    (*(v33 + 104))(v32, *MEMORY[0x277CFB5F0], v17);
    sub_2293BB4E8(&qword_2813D95B8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2F14);
    v21 = v30;
    v22 = sub_2293C0440();
    if (v21)
    {

      (*(v19 + 8))(v20, v17);
      sub_2293B04C0(v14);
    }

    else
    {
      v24 = v22;
      v25 = v23;
      v26 = sub_2293C0010();
      sub_2293B5660(v24, v25);
      v27 = v29;
      [v29 setPinnedContentStateData_];

      (*(v19 + 8))(v20, v17);
      sub_2293B04C0(v14);
      v28 = [v27 epoch];
      if (__OFADD__(v28, 1))
      {
        __break(1u);
      }

      else
      {
        [v27 setEpoch_];
      }
    }
  }
}

uint64_t HDCodablePinnedContentState.Failure.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2293C07B0();

  MEMORY[0x22AACA1F0](v1, v2);
  MEMORY[0x22AACA1F0](0xD00000000000001ELL, 0x80000002293C4130);
  return 543516756;
}

uint64_t sub_2293BCE68()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2293C07B0();

  MEMORY[0x22AACA1F0](v1, v2);
  MEMORY[0x22AACA1F0](0xD00000000000001ELL, 0x80000002293C4130);
  return 543516756;
}

BOOL HDCodablePinnedContentState.isEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for CoherentPinnedContentState(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  sub_2293BAFB0(a1, v16);
  if (!v17)
  {
    sub_2293AD748(v16);
    return 0;
  }

  sub_2293B5568();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v9 = v15[1];
  sub_2293BD0B0();
  sub_2293BD0B0();
  v11 = sub_2293C0340();
  if (v11)
  {
    v12 = [v1 epoch];
    v13 = [v9 epoch];

    v14 = v12 == v13;
  }

  else
  {

    v14 = 0;
  }

  sub_2293B04C0(v6);
  sub_2293B04C0(v8);
  return v14;
}

uint64_t sub_2293BD0B0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2293C01F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 pinnedContentStateData];
  if (v6)
  {
    v7 = v6;
    sub_2293C0030();

    type metadata accessor for CoherentPinnedContentState(0);
    sub_2293BB4E8(&qword_2813D95B8, type metadata accessor for CoherentPinnedContentState, &unk_2293C2F14);
    return sub_2293C0450();
  }

  else
  {
    v9 = 0x80000002293C4160;
    sub_2293C01D0();
    v10 = sub_2293C01E0();
    v11 = sub_2293C06D0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = 0x80000002293C4160;
      v14 = v13;
      v27 = v13;
      *v12 = 136315394;
      v15 = sub_2293C0900();
      v17 = sub_2293B4E34(v15, v16, &v27);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2080;
      v25 = 0xD000000000000016;
      v26 = v24;
      v18 = sub_2293C0590();
      v20 = sub_2293B4E34(v18, v19, &v27);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_22939E000, v10, v11, "[%s]: Underlying data is missing: %s", v12, 0x16u);
      swift_arrayDestroy();
      v21 = v14;
      v9 = v24;
      MEMORY[0x22AACAD50](v21, -1, -1);
      MEMORY[0x22AACAD50](v12, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_2293BD550();
    swift_allocError();
    *v22 = 0xD000000000000016;
    v22[1] = v9;
    return swift_willThrow();
  }
}

uint64_t sub_2293BD3B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoherentPinnedContentState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2293BD414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoherentPinnedContentState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2293BD478(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

BOOL sub_2293BD4D8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_2293C0760();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = HDCodablePinnedContentState.isEqual(_:)(v8);

  sub_2293AD748(v8);
  return v6;
}

unint64_t sub_2293BD550()
{
  result = qword_27D86CF88;
  if (!qword_27D86CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86CF88);
  }

  return result;
}

void sub_2293BD5E0()
{
  sub_2293BE234(&unk_283CB5570);
  sub_2293BB084(&unk_283CB5590);
  v0 = sub_2293C0550();
  v1 = sub_2293C0640();

  v2 = [objc_opt_self() schemaWithDomain:v0 dataKeys:v1];

  qword_2813D9500 = v2;
}

id static SummaryPinnedContentStateSyncEntity.stateEntitySchema.getter()
{
  if (qword_2813D94F8 != -1)
  {
    swift_once();
  }

  v1 = qword_2813D9500;

  return v1;
}

id SummaryPinnedContentStateSyncEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SummaryPinnedContentStateSyncEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryPinnedContentStateSyncEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SummaryPinnedContentStateSyncEntity.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SummaryPinnedContentStateSyncEntity();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2293BD994(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2293C08E0();
  sub_2293C05B0();
  v8 = sub_2293C08F0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2293C0870() & 1) != 0)
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

    sub_2293BDD38(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2293BDAE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2293BEBD0();
  result = sub_2293C0780();
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
      sub_2293C08E0();
      sub_2293C05B0();
      result = sub_2293C08F0();
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

uint64_t sub_2293BDD38(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2293BDAE4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2293BDEB8();
      goto LABEL_16;
    }

    sub_2293BE008(v8 + 1);
  }

  v10 = *v4;
  sub_2293C08E0();
  sub_2293C05B0();
  result = sub_2293C08F0();
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

      result = sub_2293C0870();
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
  result = sub_2293C0890();
  __break(1u);
  return result;
}

void *sub_2293BDEB8()
{
  v1 = v0;
  sub_2293BEBD0();
  v2 = *v0;
  v3 = sub_2293C0770();
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

uint64_t sub_2293BE008(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2293BEBD0();
  result = sub_2293C0780();
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
      sub_2293C08E0();

      sub_2293C05B0();
      result = sub_2293C08F0();
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

uint64_t sub_2293BE234(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AACA280](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2293BD994(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

id sub_2293BE2CC(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = a1;
  v22 = a3;
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2293C01F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  v20 = objc_opt_self();
  type metadata accessor for PinnedContentDarwinNotificationPoster();
  v11 = swift_allocObject();
  sub_2293C01D0();
  v19[2] = "seTransaction8^@16";
  type metadata accessor for PinnedContentDaemonStore();
  v12 = swift_allocObject();
  v13 = a2;

  v14 = sub_2293B0324(v13, 0, v11, v12);
  v15 = objc_allocWithZone(type metadata accessor for PinnedContentSyncStateUpdaterDelegate(0));
  (*(v5 + 16))(v8, v10, v4);
  v23[0] = v14;
  v16 = sub_2293C00D0();

  (*(v5 + 8))(v10, v4);
  v23[0] = 0;
  LOBYTE(v14) = [v20 updateDataWithStateStore:v21 delegate:v16 profile:v13 transaction:v22 error:v23];

  if (v14)
  {
    return v23[0];
  }

  v18 = v23[0];
  sub_2293BFFE0();

  return swift_willThrow();
}

uint64_t sub_2293BE560(uint64_t a1, void *a2)
{
  v4 = sub_2293C01F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v53 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v53 - v12;
  if (a1 == 1)
  {
    sub_2293C01D0();
    v26 = a2;
    v27 = sub_2293C01E0();
    v28 = sub_2293C06D0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v54 = v4;
      v32 = v31;
      v56 = v31;
      *v29 = 136315394;
      v33 = sub_2293C0900();
      v35 = sub_2293B4E34(v33, v34, &v56);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2112;
      v36 = [v26 profileIdentifier];
      *(v29 + 14) = v36;
      *v30 = v36;
      _os_log_impl(&dword_22939E000, v27, v28, "[%s]_%@: Unable to sync", v29, 0x16u);
      sub_2293B6AB0(v30);
      MEMORY[0x22AACAD50](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AACAD50](v32, -1, -1);
      MEMORY[0x22AACAD50](v29, -1, -1);

      return (*(v5 + 8))(v11, v54);
    }

    v51 = *(v5 + 8);
    v52 = v11;
  }

  else if (a1)
  {
    sub_2293C01D0();
    v37 = a2;
    v38 = sub_2293C01E0();
    v39 = sub_2293C06D0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v56 = v53;
      *v40 = 136315650;
      v42 = sub_2293C0900();
      v44 = sub_2293B4E34(v42, v43, &v56);
      v54 = v4;
      v45 = v44;

      *(v40 + 4) = v45;
      *(v40 + 12) = 2112;
      v46 = [v37 profileIdentifier];
      *(v40 + 14) = v46;
      *v41 = v46;
      *(v40 + 22) = 2080;
      v55 = a1;
      type metadata accessor for HDCloudSyncStateResult(0);
      v47 = sub_2293C0590();
      v49 = sub_2293B4E34(v47, v48, &v56);

      *(v40 + 24) = v49;
      _os_log_impl(&dword_22939E000, v38, v39, "[%s]_%@: Unknown sync result: %s", v40, 0x20u);
      sub_2293B6AB0(v41);
      MEMORY[0x22AACAD50](v41, -1, -1);
      v50 = v53;
      swift_arrayDestroy();
      MEMORY[0x22AACAD50](v50, -1, -1);
      MEMORY[0x22AACAD50](v40, -1, -1);

      return (*(v5 + 8))(v8, v54);
    }

    v51 = *(v5 + 8);
    v52 = v8;
  }

  else
  {
    sub_2293C01D0();
    v14 = a2;
    v15 = sub_2293C01E0();
    v16 = sub_2293C06E0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v54 = v4;
      v20 = v19;
      v56 = v19;
      *v17 = 136315394;
      v21 = sub_2293C0900();
      v23 = sub_2293B4E34(v21, v22, &v56);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2112;
      v24 = [v14 profileIdentifier];
      *(v17 + 14) = v24;
      *v18 = v24;
      _os_log_impl(&dword_22939E000, v15, v16, "[%s]_%@: Sync complete!", v17, 0x16u);
      sub_2293B6AB0(v18);
      MEMORY[0x22AACAD50](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AACAD50](v20, -1, -1);
      MEMORY[0x22AACAD50](v17, -1, -1);

      return (*(v5 + 8))(v13, v54);
    }

    v51 = *(v5 + 8);
    v52 = v13;
  }

  return v51(v52, v4);
}

uint64_t getEnumTagSinglePayload for SummaryPinnedContentStateSyncEntity.SyncSchemaVersion(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SummaryPinnedContentStateSyncEntity.SyncSchemaVersion(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_2293BEBD0()
{
  if (!qword_27D86CF90)
  {
    v0 = sub_2293C0790();
    if (!v1)
    {
      atomic_store(v0, &qword_27D86CF90);
    }
  }
}

void sub_2293BEC88(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2293BFFD0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2293BEDAC(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

id HealthAppHealthDaemonOrchestrationClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthAppHealthDaemonOrchestrationClient.init()()
{
  v1 = OBJC_IVAR____TtC21HealthAppHealthDaemon40HealthAppHealthDaemonOrchestrationClient_connection;
  *&v0[v1] = [objc_allocWithZone(sub_2293C0120()) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for HealthAppHealthDaemonOrchestrationClient();
  return objc_msgSendSuper2(&v3, sel_init);
}

id HealthAppHealthDaemonOrchestrationClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthAppHealthDaemonOrchestrationClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}