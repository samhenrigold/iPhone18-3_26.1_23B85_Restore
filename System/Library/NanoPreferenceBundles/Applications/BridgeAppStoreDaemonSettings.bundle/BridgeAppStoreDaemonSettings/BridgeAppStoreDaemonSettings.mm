void sub_1A9C()
{
  dword_25AD8 = 0;
  qword_25AE0 = 0;
  qword_25AE8 = 0;
  byte_25AF0 = 0;
}

id sub_1AE4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v6 = sub_184FC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = sub_184BC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3;
  a4();
  (*(v7 + 16))(v10, v12, v6);
  sub_1849C();
  (*(v7 + 8))(v12, v6);
  v18 = sub_10F24(v17, 0, v16);

  (*(v14 + 8))(v16, v13);

  return v18;
}

id sub_1D14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_9C94(&qword_25770, &qword_1ABD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = &v3[OBJC_IVAR___BagService_bagService];
  v11 = sub_1847C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  *v10 = 0;
  v12 = *(sub_9C94(&qword_25778, &qword_1ABF0) + 28);
  v13 = sub_9C94(&qword_259F8, &qword_1AE58);
  bzero(&v10[v12], *(*(v13 - 8) + 64));
  sub_136A4(v9, &v10[v12], &qword_25770, &qword_1ABD0);
  v14 = &v3[OBJC_IVAR___BagService_lastRecentBagMutex];
  *v14 = 0;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 5) = 0;
  v15 = OBJC_IVAR___BagService_clientInfo;
  v16 = sub_184BC();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v3[v15], a1, v16);
  v18 = OBJC_IVAR___BagService_accountSource;
  v19 = sub_183DC();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v3[v18], a2, v19);
  v23.receiver = v3;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, "init");
  (*(v20 + 8))(a2, v19);
  (*(v17 + 8))(a1, v16);
  return v21;
}

void sub_1F94(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_1873C();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_9C94(&qword_259C8, &qword_1AD68);
  v5 = __chkstk_darwin(v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_9C94(&qword_25770, &qword_1ABD0);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - v11;
  v13 = (v1 + OBJC_IVAR___BagService_bagService);
  os_unfair_lock_lock((v1 + OBJC_IVAR___BagService_bagService));
  v14 = *(sub_9C94(&qword_25778, &qword_1ABF0) + 28);
  sub_12D3C(v13 + v14, v12, &qword_25770, &qword_1ABD0);
  os_unfair_lock_unlock(v13);
  v15 = sub_1847C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v12, 1, v15) == 1)
  {
    sub_13304(v12, &qword_25770, &qword_1ABD0);
    os_unfair_lock_lock(v13);
    v17 = v31;
    sub_2404(v13 + v14, v1, v9);
    if (v17)
    {
      os_unfair_lock_unlock(v13);
      __break(1u);
    }

    else
    {
      v18 = v9;
      os_unfair_lock_unlock(v13);
      sub_12D3C(v9, v7, &qword_259C8, &qword_1AD68);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v20 = v32;
      if (EnumCaseMultiPayload == 1)
      {
        v33 = *v7;
        sub_9C94(&qword_259D0, &qword_1AD70);
        swift_willThrowTypedImpl();
        v21 = v28;
        sub_1871C();
        swift_errorRetain();
        v22 = sub_1872C();
        v23 = sub_1895C();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138543362;
          swift_errorRetain();
          v26 = _swift_stdlib_bridgeErrorToNSError();
          *(v24 + 4) = v26;
          *v25 = v26;
          _os_log_impl(&dword_0, v22, v23, "Error creating BagService: %{public}@", v24, 0xCu);
          sub_13304(v25, &qword_259A8, &qword_1AD50);

          v18 = v9;
        }

        (*(v29 + 8))(v21, v30);
        swift_willThrow();
        sub_13304(v18, &qword_259C8, &qword_1AD68);
      }

      else
      {
        sub_13304(v9, &qword_259C8, &qword_1AD68);
        (*(v16 + 32))(v20, v7, v15);
      }
    }
  }

  else
  {
    (*(v16 + 32))(v32, v12, v15);
  }
}

uint64_t sub_2404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v6 = sub_9C94(&qword_259C8, &qword_1AD68);
  v7 = __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v18 - v10);
  v12 = sub_9C94(&qword_25770, &qword_1ABD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - v13;
  sub_12D3C(a1, &v18 - v13, &qword_25770, &qword_1ABD0);
  v15 = sub_1847C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_13304(v14, &qword_25770, &qword_1ABD0);
    sub_2668(v19, a1, &v20, v9);
    if (v3)
    {
      *v11 = v20;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_136A4(v9, v11, &qword_259C8, &qword_1AD68);
    }

    return sub_136A4(v11, a3, &qword_259C8, &qword_1AD68);
  }

  else
  {
    (*(v16 + 32))(a3, v14, v15);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_2668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a2;
  v35 = a3;
  v39 = a1;
  v42 = a4;
  v4 = sub_183DC();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_184BC();
  v7 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1837C();
  __chkstk_darwin(v10 - 8);
  v40 = sub_1873C();
  v11 = *(v40 - 8);
  v12 = __chkstk_darwin(v40);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  sub_1871C();
  v16 = sub_1872C();
  v17 = sub_1896C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "Creating BagService", v18, 2u);
  }

  v19 = *(v11 + 8);
  v20 = v40;
  v19(v15, v40);
  sub_1836C();
  v21 = v39;
  (*(v7 + 16))(v9, v39 + OBJC_IVAR___BagService_clientInfo, v36);
  (*(v37 + 16))(v6, v21 + OBJC_IVAR___BagService_accountSource, v38);
  v22 = v42;
  v23 = v41;
  result = sub_1839C();
  if (v23)
  {
    *v35 = v23;
  }

  else
  {
    v25 = v33;
    sub_1871C();
    v26 = sub_1872C();
    v27 = sub_1896C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Created BagService", v28, 2u);
    }

    v19(v25, v20);
    v29 = v34;
    sub_13304(v34, &qword_25770, &qword_1ABD0);
    v30 = sub_1847C();
    v31 = *(v30 - 8);
    (*(v31 + 16))(v29, v22, v30);
    return (*(v31 + 56))(v29, 0, 1, v30);
  }

  return result;
}

uint64_t sub_2AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_1844C();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_2BA4, 0, 0);
}

uint64_t sub_2BA4()
{
  sub_1842C();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_2C50;
  v2 = *(v0 + 80);

  return sub_2E98(v0 + 16, 0, 0, v2);
}

uint64_t sub_2C50()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2E34;
  }

  else
  {
    sub_128AC((v2 + 16));
    v6 = sub_2DD0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_2DD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2E34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[12] = a1;
  sub_183BC();
  v5[15] = swift_task_alloc();
  sub_1840C();
  v5[16] = swift_task_alloc();
  v7 = sub_1846C();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v8 = sub_1847C();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v9 = sub_1868C();
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v10 = sub_1844C();
  v5[27] = v10;
  v5[28] = *(v10 - 8);
  v5[29] = swift_task_alloc();
  v11 = sub_1873C();
  v5[30] = v11;
  v5[31] = *(v11 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v12 = sub_186BC();
  v5[34] = v12;
  v5[35] = *(v12 - 8);
  v5[36] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v13 = sub_188BC();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v5[37] = v13;
  v5[38] = v15;

  return _swift_task_switch(sub_31D4, v13, v15);
}

uint64_t sub_31D4(uint64_t a1)
{
  v3 = *(v1 + 224);
  v2 = *(v1 + 232);
  v4 = *(v1 + 216);
  sub_1871C();
  sub_1869C();
  sub_1842C();
  sub_12C90(&qword_259D8, &type metadata accessor for BagService.PermittedDataOrigin, &protocol conformance descriptor for BagService.PermittedDataOrigin);
  v5 = sub_1880C();
  *(v1 + 336) = v5 & 1;
  (*(v3 + 8))(v2, v4);
  sub_1867C();
  v6 = sub_186AC();
  v7 = sub_189AC();
  if (sub_189FC())
  {
    if (v5)
    {
      v8 = "Creating recentBag from persistence only";
    }

    else
    {
      v8 = "Creating recentBag";
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_1866C();
    _os_signpost_emit_with_name_impl(&dword_0, v6, v7, v10, v8, "", v9, 2u);
  }

  v11 = *(v1 + 200);
  v12 = *(v1 + 208);
  v13 = *(v1 + 184);
  v14 = *(v1 + 192);
  v15 = *(v1 + 176);

  (*(v14 + 16))(v11, v12, v13);
  sub_186FC();
  swift_allocObject();
  *(v1 + 312) = sub_186EC();
  (*(v14 + 8))(v12, v13);
  sub_1F94(v15);
  v17 = *(v1 + 224);
  v16 = *(v1 + 232);
  v18 = *(v1 + 216);
  v19 = *(v1 + 104);
  sub_183FC();
  sub_183AC();
  (*(v17 + 16))(v16, v19, v18);
  sub_1845C();
  v20 = swift_task_alloc();
  *(v1 + 320) = v20;
  *v20 = v1;
  v20[1] = sub_36D0;
  v21 = *(v1 + 152);

  return BagService.createBag(policy:)(v1 + 56, v21);
}

uint64_t sub_36D0()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = v2[22];
  v4 = v2[21];
  v5 = v2[20];
  (*(v2[18] + 8))(v2[19], v2[17]);
  (*(v4 + 8))(v3, v5);
  v6 = v2[38];
  v7 = v2[37];
  if (v0)
  {
    v8 = sub_3ACC;
  }

  else
  {
    v8 = sub_38B4;
  }

  return _swift_task_switch(v8, v7, v6);
}

void sub_38B4()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 112);
  sub_9C94(&qword_25938, &qword_1ACB8);
  sub_9C94(&qword_259E0, &qword_1ADB8);
  swift_dynamicCast();
  v3 = v2 + OBJC_IVAR___BagService_lastRecentBagMutex;
  os_unfair_lock_lock((v2 + OBJC_IVAR___BagService_lastRecentBagMutex));
  sub_6F90((v3 + 8), (v0 + 16));
  if (v1)
  {

    os_unfair_lock_unlock(v3);
  }

  else
  {
    v4 = *(v0 + 312);
    v5 = *(v0 + 280);
    v6 = *(v0 + 288);
    v7 = *(v0 + 272);
    if (*(v0 + 336))
    {
      v8 = "Creating recentBag from persistence only";
    }

    else
    {
      v8 = "Creating recentBag";
    }

    v9 = *(v0 + 96);
    os_unfair_lock_unlock(v3);
    sub_12974(v0 + 16, v9);
    sub_59E4(v6, v8, v4);

    (*(v5 + 8))(v6, v7);
    sub_128AC((v0 + 16));

    v10 = *(v0 + 8);

    v10();
  }
}

uint64_t sub_3ACC(uint64_t a1)
{
  sub_1871C();
  swift_errorRetain();
  v2 = sub_1872C();
  v3 = sub_1895C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Failed to create bag: %{public}@", v4, 0xCu);
    sub_13304(v5, &qword_259A8, &qword_1AD50);
  }

  v7 = *(v1 + 312);
  v8 = *(v1 + 336);
  v10 = *(v1 + 280);
  v9 = *(v1 + 288);
  v11 = *(v1 + 272);
  v12 = *(v1 + 248);
  v13 = *(v1 + 256);
  v14 = *(v1 + 240);

  if (v8)
  {
    v15 = "Creating recentBag from persistence only";
  }

  else
  {
    v15 = "Creating recentBag";
  }

  (*(v12 + 8))(v13, v14);
  swift_willThrow();
  sub_59E4(v9, v15, v7);

  (*(v10 + 8))(v9, v11);

  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_3E78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1874C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (v1 + OBJC_IVAR___BagService_lastRecentBagMutex);
  os_unfair_lock_lock((v1 + OBJC_IVAR___BagService_lastRecentBagMutex));
  sub_12D3C(&v7[2], &v21, &qword_25970, &qword_1ACF0);
  os_unfair_lock_unlock(v7);
  v8 = v22;
  if (v22)
  {
    v9 = v23;
    v10 = sub_F19C(&v21, v22);
    *(&v25 + 1) = v8;
    v26 = v9;
    v11 = sub_128F8(&v24);
    (*(*(v8 - 8) + 16))(v11, v10, v8);
    sub_128AC(&v21);
    if (*(&v25 + 1))
    {
      return sub_1295C(&v24, a1);
    }
  }

  else
  {
    sub_13304(&v21, &qword_25970, &qword_1ACF0);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  *v6 = 5;
  (*(v4 + 104))(v6, enum case for DispatchTimeInterval.seconds(_:), v3);
  v13 = sub_4124(v6, v18);
  (*(v4 + 8))(v6, v3, v13);
  v14 = v19;
  if (!v19)
  {
    sub_13304(v18, &qword_25970, &qword_1ACF0);
LABEL_10:
    *(a1 + 24) = &type metadata for EmptyBag;
    result = sub_132B0();
    *(a1 + 32) = result;
    if (!*(&v25 + 1))
    {
      return result;
    }

    return sub_13304(&v24, &qword_259F0, &qword_1ADF8);
  }

  v15 = v20;
  v16 = sub_F19C(v18, v19);
  v22 = v14;
  v23 = v15;
  v17 = sub_128F8(&v21);
  (*(*(v14 - 8) + 16))(v17, v16, v14);
  sub_128AC(v18);
  if (!v22)
  {
    goto LABEL_10;
  }

  result = sub_1295C(&v21, a1);
  if (*(&v25 + 1))
  {
    return sub_13304(&v24, &qword_259F0, &qword_1ADF8);
  }

  return result;
}

double sub_4124@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v77 = a2;
  v2 = sub_187BC();
  v71 = *(v2 - 8);
  v72 = v2;
  v3 = __chkstk_darwin(v2);
  v68 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v69 = &v65 - v5;
  v6 = sub_9C94(&qword_25930, &qword_1AC60);
  __chkstk_darwin(v6 - 8);
  v8 = &v65 - v7;
  v9 = sub_1873C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v67 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v66 = &v65 - v14;
  v15 = __chkstk_darwin(v13);
  v65 = &v65 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v65 - v18;
  __chkstk_darwin(v17);
  v21 = &v65 - v20;
  sub_1871C();
  v22 = sub_1872C();
  v23 = sub_1896C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "Blocking thread on bag load", v24, 2u);
  }

  v25 = *(v10 + 8);
  v75 = v10 + 8;
  v76 = v9;
  v74 = v25;
  v25(v21, v9);
  v26 = dispatch_semaphore_create(0);
  sub_188CC();
  v27 = sub_188EC();
  v28 = *(*(v27 - 8) + 56);
  v28(v8, 0, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v30 = v73;
  v29[4] = v26;
  v29[5] = v30;
  v31 = v26;
  v32 = v30;
  sub_11944(0xD00000000000001ELL, 0x800000000001B650, v8, 0, 0, &unk_1AE30, v29);

  sub_13304(v8, &qword_25930, &qword_1AC60);
  sub_189CC();
  v33 = &v32[OBJC_IVAR___BagService_lastRecentBagMutex];
  os_unfair_lock_lock(&v32[OBJC_IVAR___BagService_lastRecentBagMutex]);
  sub_12D3C(&v33[2], &v78, &qword_25970, &qword_1ACF0);
  os_unfair_lock_unlock(v33);
  if (v79)
  {
    sub_1295C(&v78, v80);
    sub_1871C();
    v34 = sub_1872C();
    v35 = sub_1894C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "Returning bag from persistence", v36, 2u);

      v37 = v31;
    }

    else
    {
      v37 = v34;
      v34 = v31;
    }

    v50 = v76;

    v74(v19, v50);
LABEL_12:
    sub_1295C(v80, v77);
    return result;
  }

  sub_13304(&v78, &qword_25970, &qword_1ACF0);
  sub_188CC();
  v28(v8, 0, 1, v27);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v31;
  v38[5] = v32;
  v39 = v31;
  v40 = v32;
  sub_11944(0xD00000000000001ALL, 0x800000000001B670, v8, 0, 0, &unk_1AE40, v38);

  sub_13304(v8, &qword_25930, &qword_1AC60);
  v41 = v68;
  sub_187AC();
  v42 = v69;
  sub_187CC();
  v43 = v72;
  v44 = *(v71 + 8);
  v44(v41, v72);
  sub_189BC();
  v44(v42, v43);
  if (sub_1875C())
  {
    os_unfair_lock_lock(v33);
    sub_12D3C(&v33[2], &v78, &qword_25970, &qword_1ACF0);
    os_unfair_lock_unlock(v33);
    if (v79)
    {
      sub_1295C(&v78, v80);
      v45 = v65;
      sub_1871C();
      v46 = sub_1872C();
      v47 = sub_1894C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_0, v46, v47, "Returning bag", v48, 2u);

        v49 = v39;
      }

      else
      {
        v49 = v46;
        v46 = v39;
      }

      v64 = v76;

      v74(v45, v64);
      goto LABEL_12;
    }

    sub_13304(&v78, &qword_25970, &qword_1ACF0);
  }

  v52 = sub_1875C();
  v53 = v76;
  if (v52)
  {
    sub_1871C();
    v54 = sub_1872C();
    v55 = sub_1894C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "Gave up waiting on bag", v56, 2u);

      v57 = v39;
    }

    else
    {
      v57 = v54;
      v54 = v39;
    }

    v62 = v66;
  }

  else
  {
    sub_1871C();
    v58 = sub_1872C();
    v59 = sub_1893C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_0, v58, v59, "Failed to load bag", v60, 2u);

      v61 = v39;
    }

    else
    {
      v61 = v58;
      v58 = v39;
    }

    v62 = v67;
  }

  v74(v62, v53);
  v63 = v77;
  *(v77 + 32) = 0;
  result = 0.0;
  *v63 = 0u;
  v63[1] = 0u;
  return result;
}

uint64_t sub_49A8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___BagService_lastRecentBagMutex);
  os_unfair_lock_lock(v3);
  sub_12D3C(&v3[2], v15, &qword_25970, &qword_1ACF0);
  os_unfair_lock_unlock(v3);
  sub_12D3C(v15, v9, &qword_25970, &qword_1ACF0);
  v4 = v10;
  if (v10)
  {
    v5 = v11;
    v6 = sub_F19C(v9, v10);
    *(&v13 + 1) = v4;
    v14 = v5;
    v7 = sub_128F8(&v12);
    (*(*(v4 - 8) + 16))(v7, v6, v4);
    sub_128AC(v9);
    if (*(&v13 + 1))
    {
      sub_13304(v15, &qword_25970, &qword_1ACF0);
      return sub_1295C(&v12, a1);
    }
  }

  else
  {
    sub_13304(v9, &qword_25970, &qword_1ACF0);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
  }

  *(a1 + 24) = &type metadata for EmptyBag;
  *(a1 + 32) = sub_132B0();
  result = sub_13304(v15, &qword_25970, &qword_1ACF0);
  if (*(&v13 + 1))
  {
    return sub_13304(&v12, &qword_259F0, &qword_1ADF8);
  }

  return result;
}

uint64_t sub_4B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  __chkstk_darwin(a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1857C();
  if (result)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    (*(v5 + 16))(v7, v2, a1);
    sub_9C94(&qword_25968, &qword_1ACE8);
    return swift_dynamicCast();
  }

  return result;
}

uint64_t sub_4C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_1844C();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_4CF0, 0, 0);
}

uint64_t sub_4CF0(uint64_t a1)
{
  sub_1842C();
  v2 = swift_task_alloc();
  *(v1 + 96) = v2;
  *v2 = v1;
  v2[1] = sub_4D9C;
  v3 = *(v1 + 88);

  return sub_2E98(v1 + 16, 0, 0, v3);
}

uint64_t sub_4D9C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_13B24;
  }

  else
  {
    sub_128AC((v2 + 16));
    v6 = sub_13AC0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_4F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_1844C();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_4FDC, 0, 0);
}

uint64_t sub_4FDC()
{
  sub_1841C();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_5088;
  v2 = *(v0 + 88);

  return sub_2E98(v0 + 16, 0, 0, v2);
}

uint64_t sub_5088()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_5278;
  }

  else
  {
    sub_128AC((v2 + 16));
    v6 = sub_5208;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_5208()
{
  sub_189DC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5278()
{
  sub_189DC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_52E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_188BC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[17] = v6;
  v5[18] = v8;

  return _swift_task_switch(sub_5384, v6, v8);
}

uint64_t sub_5384()
{
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_5420;
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[14];

  return sub_56A8((v0 + 7), v3, v4, v2);
}

uint64_t sub_5420()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_5638;
  }

  else
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_5544;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_5544()
{
  v7 = *(v0 + 80);
  v1 = *(v0 + 80);
  v2 = sub_F19C((v0 + 56), v1);
  *(v0 + 40) = v7;
  v3 = sub_128F8((v0 + 16));
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  sub_128AC((v0 + 56));
  v4 = *(v0 + 96);
  if (*(v0 + 40))
  {
    sub_1295C((v0 + 16), v4);
  }

  else
  {
    *(v4 + 24) = &type metadata for EmptyBag;
    *(v4 + 32) = sub_132B0();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_5638(uint64_t a1)
{
  v2 = *(v1 + 96);
  *(v2 + 24) = &type metadata for EmptyBag;
  *(v2 + 32) = sub_132B0();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_56A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_188BC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[17] = v6;
  v5[18] = v8;

  return _swift_task_switch(sub_5744, v6, v8);
}

uint64_t sub_5744()
{
  v1 = (*(v0 + 128) + OBJC_IVAR___BagService_lastRecentBagMutex);
  os_unfair_lock_lock(v1);
  sub_12D3C(&v1[2], v0 + 56, &qword_25970, &qword_1ACF0);
  os_unfair_lock_unlock(v1);
  if (*(v0 + 80))
  {
    v2 = *(v0 + 96);
    sub_1295C((v0 + 56), v0 + 16);
    sub_1295C((v0 + 16), v2);
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    sub_13304(v0 + 56, &qword_25970, &qword_1ACF0);
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v5[1] = sub_588C;
    v6 = *(v0 + 120);
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);

    return sub_2E98(v9, v7, v8, v6);
  }
}

uint64_t sub_588C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 136);
    v7 = *(v2 + 144);

    return _swift_task_switch(sub_59CC, v6, v7);
  }
}

uint64_t sub_59E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_186CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1868C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_186AC();
  sub_186DC();
  v18 = sub_1899C();
  result = sub_189FC();
  if ((result & 1) == 0)
  {
LABEL_7:

    return (*(v9 + 8))(v11, v8);
  }

  if (a2)
  {

    sub_1870C();

    if ((*(v5 + 88))(v7, v4) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1866C();
    _os_signpost_emit_with_name_impl(&dword_0, v12, v18, v16, a2, v14, v15, 2u);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_5C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  if (a2)
  {
    swift_getObjectType();
    v5 = sub_188BC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[21] = v5;
  v4[22] = v7;

  return _swift_task_switch(sub_5CD4, v5, v7);
}

uint64_t sub_5CD4()
{
  v1 = (*(v0 + 160) + OBJC_IVAR___BagService_lastRecentBagMutex);
  os_unfair_lock_lock(v1);
  sub_12D3C(&v1[2], v0 + 96, &qword_25970, &qword_1ACF0);
  os_unfair_lock_unlock(v1);
  v2 = *(v0 + 120);
  if (v2)
  {
    sub_F19C((v0 + 96), *(v0 + 120));
    sub_4B2C(v2, v0 + 56);
    sub_128AC((v0 + 96));
    if (*(v0 + 80))
    {
      v3 = *(v0 + 136);
      sub_1295C((v0 + 56), v0 + 16);
      sub_1295C((v0 + 16), v3);
      v4 = *(v0 + 8);

      return v4();
    }
  }

  else
  {
    sub_13304(v0 + 96, &qword_25970, &qword_1ACF0);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
  }

  sub_13304(v0 + 56, &qword_25968, &qword_1ACE8);
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_5E78;
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);
  v9 = *(v0 + 144);

  return sub_5FB8(v8, v9, v7);
}

uint64_t sub_5E78()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 168);
    v7 = *(v2 + 176);

    return _swift_task_switch(sub_13B64, v6, v7);
  }
}

uint64_t sub_5FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a1;
  v4[13] = v3;
  sub_1844C();
  v4[14] = swift_task_alloc();
  sub_183BC();
  v4[15] = swift_task_alloc();
  sub_1840C();
  v4[16] = swift_task_alloc();
  v6 = sub_1846C();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = sub_1847C();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v8 = sub_1868C();
  v4[23] = v8;
  v4[24] = *(v8 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v9 = sub_1873C();
  v4[27] = v9;
  v4[28] = *(v9 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v10 = sub_186BC();
  v4[31] = v10;
  v4[32] = *(v10 - 8);
  v4[33] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v11 = sub_188BC();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v4[34] = v11;
  v4[35] = v13;

  return _swift_task_switch(sub_62C0, v11, v13);
}

uint64_t sub_62C0(uint64_t a1)
{
  sub_1871C();
  sub_1869C();
  sub_1867C();
  v2 = sub_186AC();
  v3 = sub_189AC();
  if (sub_189FC())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1866C();
    _os_signpost_emit_with_name_impl(&dword_0, v2, v3, v5, "Creating upToDateBag", "", v4, 2u);
  }

  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[23];
  v9 = v1[24];
  v10 = v1[22];

  (*(v9 + 16))(v6, v7, v8);
  sub_186FC();
  swift_allocObject();
  v1[36] = sub_186EC();
  (*(v9 + 8))(v7, v8);
  sub_1F94(v10);
  sub_183EC();
  sub_183AC();
  sub_1843C();
  sub_1845C();
  v11 = swift_task_alloc();
  v1[37] = v11;
  *v11 = v1;
  v11[1] = sub_66E4;
  v12 = v1[19];

  return BagService.createBag(policy:)(v1 + 7, v12);
}

uint64_t sub_66E4()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = v2[22];
  v4 = v2[21];
  v5 = v2[20];
  (*(v2[18] + 8))(v2[19], v2[17]);
  (*(v4 + 8))(v3, v5);
  v6 = v2[35];
  v7 = v2[34];
  if (v0)
  {
    v8 = sub_6B10;
  }

  else
  {
    v8 = sub_68C8;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_68C8()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[33];
  v13 = v0[31];
  v4 = v0[13];
  v12 = v0[12];
  sub_9C94(&qword_25938, &qword_1ACB8);
  sub_9C94(&qword_259B0, &qword_1AD58);
  swift_dynamicCast();
  v5 = v0[5];
  v6 = v0[6];
  v7 = sub_F19C(v0 + 2, v5);
  v8 = *(v5 - 8);
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v5);
  sub_10974(v9, v4, v5, v6);
  (*(v8 + 8))(v9, v5);

  sub_12974((v0 + 2), v12);
  sub_6D48(v3, v1);

  (*(v2 + 8))(v3, v13);
  sub_128AC(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_6B10(uint64_t a1)
{
  sub_1871C();
  swift_errorRetain();
  v2 = sub_1872C();
  v3 = sub_1895C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Failed to create bag: %{public}@", v4, 0xCu);
    sub_13304(v5, &qword_259A8, &qword_1AD50);
  }

  v7 = v1[36];
  v8 = v1[32];
  v9 = v1[33];
  v10 = v1[31];
  v11 = v2;
  v12 = v1[28];
  v13 = v1[29];
  v14 = v1[27];

  (*(v12 + 8))(v13, v14);
  swift_willThrow();
  sub_6D48(v9, v7);

  (*(v8 + 8))(v9, v10);

  v15 = v1[1];

  return v15();
}

uint64_t sub_6D48(uint64_t a1, uint64_t a2)
{
  v2 = sub_186CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1868C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_186AC();
  sub_186DC();
  v11 = sub_1899C();
  if (sub_189FC())
  {

    sub_1870C();

    if ((*(v3 + 88))(v5, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1866C();
    _os_signpost_emit_with_name_impl(&dword_0, v10, v11, v14, "Creating upToDateBag", v12, v13, 2u);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_6F90(void *a1, void *a2)
{
  v4 = sub_9C94(&qword_259B8, &qword_1AD60);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_1831C();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  sub_F19C(a2, a2[3]);
  sub_1851C();
  v14 = a1[3];
  v24 = a1;
  if (v14)
  {
    v15 = sub_F19C(a1, v14);
    v23 = &v23;
    v16 = *(v14 - 8);
    __chkstk_darwin(v15);
    v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    sub_1851C();
    (*(v16 + 8))(v18, v14);
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v11, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    sub_182EC();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_13304(v6, &qword_259B8, &qword_1AD60);
    }
  }

  sub_12C90(&qword_259C0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v19 = sub_187FC();
  v20 = *(v8 + 8);
  v20(v11, v7);
  result = (v20)(v13, v7);
  if (v19)
  {
    v22 = v24;
    sub_13304(v24, &qword_25970, &qword_1ACF0);
    return sub_12974(a2, v22);
  }

  return result;
}

id sub_7404(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  __chkstk_darwin(a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ASDAMSBag();
  (*(v5 + 16))(v7, v2, a1);
  v15[3] = a1;
  v15[4] = a2;
  v9 = sub_128F8(v15);
  (*(v5 + 32))(v9, v7, a1);
  v10 = objc_allocWithZone(v8);
  sub_12974(v15, v10 + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag);
  v14.receiver = v10;
  v14.super_class = v8;
  v11 = objc_msgSendSuper2(&v14, "init");
  sub_128AC(v15);
  return v11;
}

uint64_t sub_753C()
{
  v0 = sub_1873C();
  __chkstk_darwin(v0);
  v1 = sub_9C94(&qword_25770, &qword_1ABD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_1847C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1F94(v3);
  (*(v5 + 56))(v3, 0, 1, v4);
  (*(v5 + 32))(v7, v3, v4);
  sub_1892C();
  v8 = sub_1891C();
  (*(v5 + 8))(v7, v4);
  return v8;
}

id sub_7974(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v5 = type metadata accessor for ObjCBag();
  v6 = a1;
  a3(v16);
  v7 = v17;
  v8 = v18;
  v9 = sub_13260(v16, v17);
  __chkstk_darwin(v9);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_10A18(v11, v5, v7, v8);

  sub_128AC(v16);

  return v13;
}

uint64_t sub_7A9C(uint64_t a1, uint64_t a2)
{
  v5 = sub_9C94(&qword_25930, &qword_1AC60);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  v10 = sub_188EC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1AE18;
  v11[5] = v9;
  v11[6] = 0;
  v11[7] = sub_13B7C;
  v11[8] = v8;

  v12 = v2;

  sub_11C5C(0, 0, v7, 0, 0, &unk_1AE20, v11);

  return sub_13304(v7, &qword_25930, &qword_1AC60);
}

uint64_t sub_7C70(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_9C94(&qword_25930, &qword_1AC60);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  v12 = sub_188EC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1AE08;
  v13[5] = v11;
  v13[6] = a1;
  v13[7] = sub_13B7C;
  v13[8] = v10;
  v14 = a1;

  v15 = v3;

  sub_11C5C(0, 0, v9, 0, 0, &unk_1AE10, v13);

  return sub_13304(v9, &qword_25930, &qword_1AC60);
}

uint64_t sub_7E88(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_1844C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_7F48, 0, 0);
}

uint64_t sub_7F48()
{
  v0[12] = type metadata accessor for ObjCBag();
  sub_1843C();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_8000;
  v2 = v0[11];

  return sub_52E8((v0 + 2), 0, 0, v2);
}

uint64_t sub_8000()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_13B60, 0, 0);
}

uint64_t sub_818C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_9C94(&qword_25930, &qword_1AC60);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  v12 = sub_188EC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1ADD8;
  v13[5] = v11;
  v13[6] = a1;
  v13[7] = sub_13058;
  v13[8] = v10;
  v14 = a1;

  v15 = v3;

  sub_11C5C(0, 0, v9, 0, 0, &unk_1ADE8, v13);

  return sub_13304(v9, &qword_25930, &qword_1AC60);
}

uint64_t sub_8370(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_1844C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_8430, 0, 0);
}

uint64_t sub_8430()
{
  v0[12] = type metadata accessor for ObjCBag();
  sub_1842C();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_84E8;
  v2 = v0[11];

  return sub_52E8((v0 + 2), 0, 0, v2);
}

uint64_t sub_84E8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_8640, 0, 0);
}

uint64_t sub_8640()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v5 = sub_13260((v0 + 2), v4);
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v4);
  v8 = sub_10A18(v7, v1, v4, v2);
  sub_128AC(v0 + 2);

  *v3 = v8;

  v9 = v0[1];

  return v9();
}

uint64_t sub_87A0(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(a3, a6, v12);
}

uint64_t sub_8848(uint64_t a1, uint64_t a2)
{
  v5 = sub_9C94(&qword_25930, &qword_1AC60);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  v10 = sub_188EC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1ADC0;
  v11[5] = v9;
  v11[6] = 0;
  v11[7] = sub_13B74;
  v11[8] = v8;

  v12 = v2;

  sub_11C5C(0, 0, v7, 0, 0, &unk_1ADC8, v11);

  return sub_13304(v7, &qword_25930, &qword_1AC60);
}

uint64_t sub_8A1C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_9C94(&qword_25930, &qword_1AC60);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  v12 = sub_188EC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1AD90;
  v13[5] = v11;
  v13[6] = a1;
  v13[7] = sub_12E30;
  v13[8] = v10;
  v14 = a1;

  v15 = v3;

  sub_11C5C(0, 0, v9, 0, 0, &unk_1ADA0, v13);

  return sub_13304(v9, &qword_25930, &qword_1AC60);
}

uint64_t sub_8C34(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_8CC8(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_1844C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_8D88, 0, 0);
}

uint64_t sub_8D88(uint64_t a1)
{
  sub_1843C();
  v2 = swift_task_alloc();
  *(v1 + 96) = v2;
  *v2 = v1;
  v2[1] = sub_8E34;
  v3 = *(v1 + 88);

  return sub_56A8(v1 + 16, 0, 0, v3);
}

uint64_t sub_8E34()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_90E0;
  }

  else
  {
    v5 = sub_8FA4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_8FA4()
{
  v1 = v0[7];
  v2 = objc_allocWithZone(type metadata accessor for ObjCRecentBag());
  v3 = v0[5];
  v4 = v0[6];
  v5 = sub_F19C(v0 + 2, v3);
  v6 = *(v3 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v3);
  v8 = sub_10AC8(v7, v2, v3, v4);

  sub_128AC(v0 + 2);
  *v1 = v8;

  v9 = v0[1];

  return v9();
}

uint64_t sub_90E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_9178(uint64_t a1, uint64_t a2)
{
  v5 = sub_9C94(&qword_25930, &qword_1AC60);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  v10 = sub_188EC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1AD78;
  v11[5] = v9;
  v11[6] = 0;
  v11[7] = sub_13B74;
  v11[8] = v8;

  v12 = v2;

  sub_11C5C(0, 0, v7, 0, 0, &unk_1AD80, v11);

  return sub_13304(v7, &qword_25930, &qword_1AC60);
}

uint64_t sub_934C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_9C94(&qword_25930, &qword_1AC60);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  v12 = sub_188EC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1AD08;
  v13[5] = v11;
  v13[6] = a1;
  v13[7] = sub_13B74;
  v13[8] = v10;
  v14 = a1;

  v15 = v3;

  sub_11C5C(0, 0, v9, 0, 0, &unk_1AD18, v13);

  return sub_13304(v9, &qword_25930, &qword_1AC60);
}

void sub_9564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1829C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_95D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_95F4, 0, 0);
}

uint64_t sub_95F4()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_9694;

  return sub_5C3C(v0 + 16, 0, 0);
}

uint64_t sub_9694()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_98D8;
  }

  else
  {
    v2 = sub_97A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_97A8()
{
  v1 = v0[7];
  v2 = objc_allocWithZone(type metadata accessor for ObjCUpToDateBag());
  v3 = v0[5];
  v4 = v0[6];
  v5 = sub_F19C(v0 + 2, v3);
  v6 = *(v3 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v3);
  v8 = sub_10B78(v7, v2, v3, v4);

  sub_128AC(v0 + 2);
  *v1 = v8;
  v9 = v0[1];

  return v9();
}

uint64_t type metadata accessor for AppStoreDaemonBagService(uint64_t a1)
{
  result = qword_25B18;
  if (!qword_25B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9AAC(uint64_t a1)
{
  sub_184BC();
  if (v1 <= 0x3F)
  {
    sub_183DC();
    if (v2 <= 0x3F)
    {
      sub_9BB8(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_9BB8(uint64_t a1)
{
  if (!qword_25768)
  {
    sub_9C1C(&qword_25770, &qword_1ABD0);
    v1 = sub_1832C();
    if (!v2)
    {
      atomic_store(v1, &qword_25768);
    }
  }
}

uint64_t sub_9C1C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_9C64()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_9C94(&qword_25778, &qword_1ABF0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_9C94(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

char *sub_9CDC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_9C94(&qword_25780, &qword_1ABF8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_9D18()
{
  sub_1882C();
  v0 = sub_1850C();

  return v0;
}

uint64_t sub_A058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1882C();
  v6 = a4(v5);

  return v6;
}

uint64_t sub_A240()
{
  sub_1882C();
  v0 = sub_1854C();

  return v0;
}

uint64_t sub_A35C()
{
  sub_1882C();
  sub_1858C();
}

char *sub_A534(uint64_t a1)
{
  v2 = sub_1865C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F19C((v1 + OBJC_IVAR___Bag_bag), *(v1 + OBJC_IVAR___Bag_bag + 24));
  v6 = sub_A74C();
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v3 + 16;
    v9 = *(v3 + 16);
    v10 = *(v3 + 80);
    v21 = v6;
    v11 = v6 + ((v10 + 32) & ~v10);
    v22 = *(v8 + 56);
    v23 = v9;
    v24 = v8;
    v12 = (v8 - 8);
    v13 = &_swiftEmptyArrayStorage;
    v9(v5, v11, v2);
    while (1)
    {
      v15 = sub_1864C();
      v17 = v16;
      (*v12)(v5, v2);
      if (v17)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_FFD8(0, *(v13 + 2) + 1, 1, v13);
        }

        v19 = *(v13 + 2);
        v18 = *(v13 + 3);
        if (v19 >= v18 >> 1)
        {
          v13 = sub_FFD8((v18 > 1), v19 + 1, 1, v13);
        }

        *(v13 + 2) = v19 + 1;
        v14 = &v13[16 * v19];
        *(v14 + 4) = v15;
        *(v14 + 5) = v17;
      }

      v11 += v22;
      if (!--v7)
      {
        break;
      }

      v23(v5, v11, v2);
    }
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return v13;
}

uint64_t sub_A74C()
{
  sub_1882C();
  v0 = sub_1852C();

  return v0;
}

void *sub_A824()
{
  v1 = sub_1865C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F19C((v0 + OBJC_IVAR___Bag_bag), *(v0 + OBJC_IVAR___Bag_bag + 24));
  v5 = sub_A74C();
  if (!v5)
  {
    return 0;
  }

  v18 = &_swiftEmptyArrayStorage;
  v6 = *(v5 + 16);
  if (v6)
  {
    v9 = *(v2 + 16);
    v7 = v2 + 16;
    v8 = v9;
    v10 = (*(v7 + 64) + 32) & ~*(v7 + 64);
    v17[2] = v5;
    v11 = v5 + v10;
    v12 = *(v7 + 56);
    v13 = (v7 - 8);
    v14 = &_swiftEmptyArrayStorage;
    v9(v4, v5 + v10, v1);
    while (1)
    {
      sub_185BC();
      if (v15)
      {
        (*v13)(v4, v1);
      }

      else
      {
        sub_1890C();
        (*v13)(v4, v1);
        sub_1886C();
        if (*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v18 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v17[1] = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
          sub_1888C();
        }

        sub_1889C();
        v14 = v18;
      }

      v11 += v12;
      if (!--v6)
      {
        break;
      }

      v8(v4, v11, v1);
    }
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return v14;
}

id sub_AB8C()
{
  v1 = *(v0 + OBJC_IVAR___Bag_bag + 24);
  sub_F19C((v0 + OBJC_IVAR___Bag_bag), v1);
  sub_AD3C(v1, v17);
  sub_12D3C(v17, &v15, &qword_25970, &qword_1ACF0);
  if (v16)
  {
    sub_1295C(&v15, v14);
    sub_12974(v14, v11);
    v2 = objc_allocWithZone(type metadata accessor for ObjCRecentBag());
    v3 = v12;
    v4 = v13;
    v5 = sub_F19C(v11, v12);
    __chkstk_darwin(v5);
    v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v7);
    v9 = sub_10AC8(v7, v2, v3, v4);
    sub_128AC(v14);
    sub_13304(v17, &qword_25970, &qword_1ACF0);
    sub_128AC(v11);
  }

  else
  {
    sub_13304(v17, &qword_25970, &qword_1ACF0);
    return 0;
  }

  return v9;
}

uint64_t sub_AD3C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v20 = a3;
  v5 = *(a1 - 8);
  __chkstk_darwin(a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1831C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_1851C();
  sub_182EC();
  v15 = sub_1830C();
  v16 = *(v9 + 8);
  v16(v12, v8);
  result = (v16)(v14, v8);
  if (v15)
  {
    v18 = v20;
    *(v20 + 32) = 0;
    *v18 = 0u;
    v18[1] = 0u;
  }

  else
  {
    (*(v5 + 16))(v7, v3, a1);
    sub_9C94(&qword_25970, &qword_1ACF0);
    return swift_dynamicCast();
  }

  return result;
}

id sub_AF88()
{
  v1 = *(v0 + OBJC_IVAR___Bag_bag + 24);
  sub_F19C((v0 + OBJC_IVAR___Bag_bag), v1);
  sub_4B2C(v1, v17);
  sub_12D3C(v17, &v15, &qword_25968, &qword_1ACE8);
  if (v16)
  {
    sub_1295C(&v15, v14);
    sub_12974(v14, v11);
    v2 = objc_allocWithZone(type metadata accessor for ObjCUpToDateBag());
    v3 = v12;
    v4 = v13;
    v5 = sub_F19C(v11, v12);
    __chkstk_darwin(v5);
    v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v7);
    v9 = sub_10B78(v7, v2, v3, v4);
    sub_128AC(v14);
    sub_13304(v17, &qword_25968, &qword_1ACE8);
    sub_128AC(v11);
  }

  else
  {
    sub_13304(v17, &qword_25968, &qword_1ACE8);
    return 0;
  }

  return v9;
}

id sub_B1E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_B2E4@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_11FD4(a2, a3);
  v4 = sub_182CC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 1, 1, v4);
}

uint64_t sub_B354(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[10] = a6;
  v10 = sub_1876C();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  v11 = sub_1879C();
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();
  v12 = sub_1877C();
  v8[19] = v12;
  v8[20] = *(v12 - 8);
  v8[21] = swift_task_alloc();
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  v8[22] = v13;
  *v13 = v8;
  v13[1] = sub_B568;

  return v15(v8 + 8);
}

uint64_t sub_B568()
{

  return _swift_task_switch(sub_B664, 0, 0);
}

uint64_t sub_B664()
{
  v1 = v0[10];
  if (v1)
  {
    v20 = v0[10];
  }

  else
  {
    v3 = v0[20];
    v2 = v0[21];
    v4 = v0[19];
    sub_12C2C(0, &qword_25988, OS_dispatch_queue_ptr);
    (*(v3 + 104))(v2, enum case for DispatchQoS.QoSClass.default(_:), v4);
    v20 = sub_1898C();
    (*(v3 + 8))(v2, v4);
    v1 = 0;
  }

  v5 = v0[18];
  v6 = v0[15];
  v18 = v0[17];
  v19 = v0[16];
  v7 = v0[13];
  v17 = v0[14];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[8];
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v9;
  v11[4] = v10;
  v0[6] = sub_13220;
  v0[7] = v11;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_B920;
  v0[5] = &unk_212A8;
  v12 = _Block_copy(v0 + 2);
  v13 = v1;

  v14 = v10;
  sub_1878C();
  v0[9] = &_swiftEmptyArrayStorage;
  sub_12C90(&qword_25990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_9C94(&qword_25998, &qword_1AD38);
  sub_12CD8();
  sub_18A0C();
  sub_1897C();
  _Block_release(v12);

  (*(v17 + 8))(v6, v7);
  (*(v18 + 8))(v5, v19);

  v15 = v0[1];

  return v15();
}

uint64_t sub_B920(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_B964(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[10] = a6;
  v10 = sub_1876C();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  v11 = sub_1879C();
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();
  v12 = sub_1877C();
  v8[19] = v12;
  v8[20] = *(v12 - 8);
  v8[21] = swift_task_alloc();
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  v8[22] = v13;
  *v13 = v8;
  v13[1] = sub_BB78;

  return v15(v8 + 8);
}

uint64_t sub_BB78()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_BF54;
  }

  else
  {
    v2 = sub_BC8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_BC8C()
{
  v1 = v0[8];
  v2 = v0[10];
  if (v2)
  {
    v19 = v0[10];
  }

  else
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = v0[19];
    sub_12C2C(0, &qword_25988, OS_dispatch_queue_ptr);
    (*(v4 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v5);
    v19 = sub_1898C();
    (*(v4 + 8))(v3, v5);
    v2 = 0;
  }

  v6 = v0[18];
  v18 = v0[17];
  v7 = v0[15];
  v20 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[11];
  v10 = v0[12];
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = v1;
  v12[5] = 0;
  v0[6] = sub_13000;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_B920;
  v0[5] = &unk_21118;
  v13 = _Block_copy(v0 + 2);
  v14 = v2;

  v15 = v1;
  swift_errorRetain();
  sub_1878C();
  v0[9] = &_swiftEmptyArrayStorage;
  sub_12C90(&qword_25990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_9C94(&qword_25998, &qword_1AD38);
  sub_12CD8();
  sub_18A0C();
  sub_1897C();
  _Block_release(v13);

  (*(v8 + 8))(v7, v9);
  (*(v18 + 8))(v6, v20);

  v16 = v0[1];

  return v16();
}

uint64_t sub_BF54()
{
  v1 = v0[23];
  v2 = v0[10];
  if (v2)
  {
    v19 = v0[10];
  }

  else
  {
    v3 = v0[20];
    v4 = v0[21];
    v5 = v0[19];
    sub_12C2C(0, &qword_25988, OS_dispatch_queue_ptr);
    (*(v3 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v5);
    v19 = sub_1898C();
    (*(v3 + 8))(v4, v5);
  }

  v6 = v0[18];
  v7 = v0[15];
  v17 = v0[17];
  v18 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[11];
  v10 = v0[12];
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = 0;
  v12[5] = v1;
  v0[6] = sub_13000;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_B920;
  v0[5] = &unk_21118;
  v13 = _Block_copy(v0 + 2);
  v14 = v2;

  swift_errorRetain();
  sub_1878C();
  v0[9] = &_swiftEmptyArrayStorage;
  sub_12C90(&qword_25990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_9C94(&qword_25998, &qword_1AD38);
  sub_12CD8();
  sub_18A0C();
  sub_1897C();
  _Block_release(v13);

  (*(v8 + 8))(v7, v9);
  (*(v17 + 8))(v6, v18);

  v15 = v0[1];

  return v15();
}

uint64_t sub_C208(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[10] = a6;
  v10 = sub_1876C();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  v11 = sub_1879C();
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();
  v12 = sub_1877C();
  v8[19] = v12;
  v8[20] = *(v12 - 8);
  v8[21] = swift_task_alloc();
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  v8[22] = v13;
  *v13 = v8;
  v13[1] = sub_C41C;

  return v15(v8 + 8);
}

uint64_t sub_C41C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_C7F8;
  }

  else
  {
    v2 = sub_C530;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_C530()
{
  v1 = v0[8];
  v2 = v0[10];
  if (v2)
  {
    v19 = v0[10];
  }

  else
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = v0[19];
    sub_12C2C(0, &qword_25988, OS_dispatch_queue_ptr);
    (*(v4 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v5);
    v19 = sub_1898C();
    (*(v4 + 8))(v3, v5);
    v2 = 0;
  }

  v6 = v0[18];
  v18 = v0[17];
  v7 = v0[15];
  v20 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[11];
  v10 = v0[12];
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = v1;
  v12[5] = 0;
  v0[6] = sub_13B3C;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_B920;
  v0[5] = &unk_20F88;
  v13 = _Block_copy(v0 + 2);
  v14 = v2;

  v15 = v1;
  swift_errorRetain();
  sub_1878C();
  v0[9] = &_swiftEmptyArrayStorage;
  sub_12C90(&qword_25990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_9C94(&qword_25998, &qword_1AD38);
  sub_12CD8();
  sub_18A0C();
  sub_1897C();
  _Block_release(v13);

  (*(v8 + 8))(v7, v9);
  (*(v18 + 8))(v6, v20);

  v16 = v0[1];

  return v16();
}

uint64_t sub_C7F8()
{
  v1 = v0[23];
  v2 = v0[10];
  if (v2)
  {
    v19 = v0[10];
  }

  else
  {
    v3 = v0[20];
    v4 = v0[21];
    v5 = v0[19];
    sub_12C2C(0, &qword_25988, OS_dispatch_queue_ptr);
    (*(v3 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v5);
    v19 = sub_1898C();
    (*(v3 + 8))(v4, v5);
  }

  v6 = v0[18];
  v7 = v0[15];
  v17 = v0[17];
  v18 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[11];
  v10 = v0[12];
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = 0;
  v12[5] = v1;
  v0[6] = sub_13B3C;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_B920;
  v0[5] = &unk_20F88;
  v13 = _Block_copy(v0 + 2);
  v14 = v2;

  swift_errorRetain();
  sub_1878C();
  v0[9] = &_swiftEmptyArrayStorage;
  sub_12C90(&qword_25990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_9C94(&qword_25998, &qword_1AD38);
  sub_12CD8();
  sub_18A0C();
  sub_1897C();
  _Block_release(v13);

  (*(v8 + 8))(v7, v9);
  (*(v17 + 8))(v6, v18);

  v15 = v0[1];

  return v15();
}

uint64_t sub_CAB8(char *a1, uint64_t a2, void *a3)
{
  sub_F19C(&a1[*a3], *&a1[*a3 + 24]);
  v4 = a1;
  v5 = sub_1857C();

  return v5 & 1;
}

uint64_t sub_CCF0(uint64_t a1, uint64_t a2)
{
  v3[13] = v2;
  v5 = sub_1831C();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_188BC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return _swift_task_switch(sub_CE14, v6, v8);
}

uint64_t sub_CE14()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = [objc_allocWithZone(AMSSnapshotBagBuilder) init];
  v6 = sub_1881C();
  [v5 setProfile:v6];

  v7 = sub_1881C();
  [v5 setProfileVersion:v7];

  v8 = [objc_opt_self() currentProcess];
  [v5 setProcessInfo:v8];

  sub_182EC();
  isa = sub_182FC().super.isa;
  (*(v2 + 8))(v1, v3);
  [v5 setExpirationDate:isa];

  sub_12974(v4 + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag, v0 + 56);
  sub_9C94(&qword_25938, &qword_1ACB8);
  sub_9C94(&qword_25940, &qword_1ACC0);
  if (swift_dynamicCast())
  {
    sub_F19C((v0 + 16), *(v0 + 40));
    v10 = sub_1833C();
    sub_128AC((v0 + 16));
  }

  else
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_13304(v0 + 16, &qword_25948, &qword_1ACC8);
    v10 = sub_1217C(&_swiftEmptyArrayStorage);
  }

  sub_D198(v10);

  v11 = sub_187DC().super.isa;

  [v5 setData:v11];

  *(v0 + 96) = 0;
  v12 = [v5 buildWithError:v0 + 96];
  v13 = *(v0 + 96);
  if (v12)
  {
    v14 = v12;
    v15 = v13;

    v16 = *(v0 + 8);

    return v16(v14);
  }

  else
  {
    v18 = v13;
    sub_182AC();

    swift_willThrow();

    v19 = *(v0 + 8);

    return v19();
  }
}

unint64_t sub_D198(uint64_t a1)
{
  v2 = sub_1865C();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  __chkstk_darwin(v2);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_9C94(&qword_25950, &qword_1ACD0);
  v5 = __chkstk_darwin(v46);
  v45 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v44 = &v38 - v7;
  v50 = a1;
  if (*(a1 + 16))
  {
    sub_9C94(&qword_258A8, &qword_1AC38);
    v8 = sub_18AAC();
  }

  else
  {
    v8 = &_swiftEmptyDictionarySingleton;
  }

  v9 = v50 + 64;
  v10 = 1 << *(v50 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v50 + 64);
  v13 = (v10 + 63) >> 6;
  v43 = v49 + 16;
  v42 = v49 + 32;
  v39 = v8 + 8;

  v15 = 0;
  v41 = v9;
  v40 = v13;
  while (v12)
  {
    v18 = v15;
LABEL_14:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = v19 | (v18 << 6);
    v21 = v49;
    v22 = (*(v50 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = v46;
    v26 = v44;
    v27 = v48;
    (*(v49 + 16))(&v44[*(v46 + 48)], *(v50 + 56) + *(v49 + 72) * v20, v48);
    *v26 = v24;
    v26[1] = v23;
    v28 = v45;
    sub_136A4(v26, v45, &qword_25950, &qword_1ACD0);
    v29 = *(v25 + 48);
    v31 = *v28;
    v30 = v28[1];
    (*(v21 + 32))(v47, v28 + v29, v27);

    swift_dynamicCast();
    sub_124C0(&v51, v53);
    sub_124C0(v53, v54);
    sub_124C0(v54, &v52);
    result = sub_1068C(v31, v30, sub_FF20);
    v32 = result;
    if (v33)
    {
      v16 = (v8[6] + 16 * result);
      *v16 = v31;
      v16[1] = v30;

      v17 = (v8[7] + 32 * v32);
      sub_128AC(v17);
      result = sub_124C0(&v52, v17);
    }

    else
    {
      if (v8[2] >= v8[3])
      {
        goto LABEL_20;
      }

      *(v39 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v34 = (v8[6] + 16 * result);
      *v34 = v31;
      v34[1] = v30;
      result = sub_124C0(&v52, (v8[7] + 32 * result));
      v35 = v8[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_21;
      }

      v8[2] = v37;
    }

    v15 = v18;
    v9 = v41;
    v13 = v40;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v13)
    {

      return v8;
    }

    v12 = *(v9 + 8 * v18);
    ++v15;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_D738(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_D7E8;

  return sub_CCF0(0, 0);
}

uint64_t sub_D7E8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_1829C();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

id sub_D988(uint64_t a1)
{
  sub_F19C((v1 + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag), *(v1 + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag + 24));
  sub_1882C();
  sub_1854C();
  v4 = v3;

  if (v4 && (v5 = sub_1881C(), , v5))
  {
    v6 = [objc_opt_self() promiseWithResult:v5];
  }

  else
  {
    type metadata accessor for AMSError(0);
    sub_1237C(&_swiftEmptyArrayStorage);
    sub_12C90(&qword_258A0, type metadata accessor for AMSError, &unk_1B070);
    sub_1828C();
    v7 = sub_1829C();
    v6 = [objc_opt_self() promiseWithError:{v7, 204}];

    v5 = 0;
  }

  v8 = [objc_opt_self() bagValueWithKey:a1 valueType:4 valuePromise:v6];
  return v8;
}

id sub_DB40(uint64_t a1)
{
  if (a1)
  {
    v1 = [objc_opt_self() promiseWithResult:a1];

    return v1;
  }

  else
  {
    type metadata accessor for AMSError(0);
    sub_1237C(&_swiftEmptyArrayStorage);
    sub_12C90(&qword_258A0, type metadata accessor for AMSError, &unk_1B070);
    sub_1828C();
    v3 = sub_1829C();
    v4 = [objc_opt_self() promiseWithError:{v3, 204}];

    return v4;
  }
}

id sub_DCC8(uint64_t a1)
{
  v3 = sub_1865C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F19C((v1 + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag), *(v1 + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag + 24));
  sub_1882C();
  v7 = sub_1852C();

  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    v21 = a1;
    v24 = &_swiftEmptyArrayStorage;
    sub_18A5C();
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v22 = v10;
    v11 = *(v9 + 64);
    v20[1] = v7;
    v12 = v7 + ((v11 + 32) & ~v11);
    v13 = *(v9 + 56);
    do
    {
      v22(v6, v12, v3);
      sub_E000();
      (*(v9 - 8))(v6, v3);
      sub_18A3C();
      sub_18A6C();
      sub_18A7C();
      sub_18A4C();
      v12 += v13;
      --v8;
    }

    while (v8);

    a1 = v21;
  }

  else
  {
  }

  sub_9C94(&qword_25920, &qword_1AC50);
  v14.super.isa = sub_1887C().super.isa;

  if (v14.super.isa)
  {
    v15 = [objc_opt_self() promiseWithResult:v14.super.isa];
  }

  else
  {
LABEL_9:
    type metadata accessor for AMSError(0);
    v23 = 204;
    sub_1237C(&_swiftEmptyArrayStorage);
    sub_12C90(&qword_258A0, type metadata accessor for AMSError, &unk_1B070);
    sub_1828C();
    v16 = v24;
    v17 = sub_1829C();
    v15 = [objc_opt_self() promiseWithError:v17];

    v14.super.isa = 0;
  }

  v18 = [objc_opt_self() bagValueWithKey:a1 valueType:0 valuePromise:v15];
  return v18;
}

void *sub_E000()
{
  v0 = sub_1865C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_185EC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  sub_1861C();
  sub_185DC();
  v11 = sub_185CC();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  if (v11)
  {
    return [objc_allocWithZone(NSNull) init];
  }

  if (sub_185FC() != 2)
  {
    return sub_188AC().super.super.isa;
  }

  sub_185BC();
  if ((v14 & 1) == 0)
  {
    return sub_1890C().super.super.isa;
  }

  sub_1863C();
  if ((v15 & 1) == 0)
  {
    return sub_188FC().super.super.isa;
  }

  sub_1864C();
  if (v16)
  {
    v17 = sub_1881C();
LABEL_8:
    v18 = v17;

    return v18;
  }

  v19 = sub_1860C();
  if (v20 >> 60 == 15)
  {
    v21 = sub_185AC();
    if (v21)
    {
      sub_10710(v21);

      sub_9C94(&qword_25920, &qword_1AC50);
      isa = sub_187DC().super.isa;

      return isa;
    }

    else
    {
      result = sub_1862C();
      if (result)
      {
        v26 = result[2];
        if (v26)
        {
          v34 = &_swiftEmptyArrayStorage;
          v27 = result;
          sub_18A5C();
          v29 = *(v1 + 16);
          v28 = v1 + 16;
          v32 = v27;
          v33 = v29;
          v30 = v27 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
          v31 = *(v28 + 56);
          do
          {
            v33(v3, v30, v0);
            sub_E000();
            (*(v28 - 8))(v3, v0);
            sub_18A3C();
            sub_18A6C();
            sub_18A7C();
            sub_18A4C();
            v30 += v31;
            --v26;
          }

          while (v26);
        }

        sub_9C94(&qword_25920, &qword_1AC50);
        v17 = sub_1887C().super.isa;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v23 = v19;
    v24 = v20;
    v25 = sub_182DC().super.isa;
    sub_124D0(v23, v24);
    return v25;
  }

  return result;
}

id sub_E418(uint64_t a1)
{
  sub_F19C((v1 + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag), *(v1 + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag + 24));
  sub_1882C();
  v3 = sub_1850C();

  if (v3 == 2)
  {
    isa = 0;
  }

  else
  {
    isa = sub_188AC().super.super.isa;
  }

  v5 = sub_DB40(isa);

  v6 = [objc_opt_self() bagValueWithKey:a1 valueType:1 valuePromise:v5];
  return v6;
}

id sub_E550(uint64_t a1)
{
  sub_F19C((v1 + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag), *(v1 + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag + 24));
  sub_1882C();
  sub_1853C();
  v4 = v3;

  if (v4)
  {
    isa = 0;
  }

  else
  {
    isa = sub_188FC().super.super.isa;
  }

  v6 = sub_DB40(isa);

  v7 = [objc_opt_self() bagValueWithKey:a1 valueType:2 valuePromise:v6];
  return v7;
}

id sub_E684(uint64_t a1)
{
  sub_F19C((v1 + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag), *(v1 + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag + 24));
  sub_1882C();
  sub_1856C();
  v4 = v3;

  if (v4)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1890C().super.super.isa;
  }

  v6 = sub_DB40(isa);

  v7 = [objc_opt_self() bagValueWithKey:a1 valueType:3 valuePromise:v6];
  return v7;
}

id sub_E7B8(uint64_t a1)
{
  v3 = sub_9C94(&qword_25898, &qword_1AC30);
  __chkstk_darwin(v3 - 8);
  v5 = v16 - v4;
  sub_F19C((v1 + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag), *(v1 + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag + 24));
  sub_1882C();
  sub_1858C();

  v6 = sub_182CC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1 || (sub_182BC(v8), v10 = v9, (*(v7 + 8))(v5, v6), !v10))
  {
    type metadata accessor for AMSError(0);
    v16[0] = 204;
    sub_1237C(&_swiftEmptyArrayStorage);
    sub_12C90(&qword_258A0, type metadata accessor for AMSError, &unk_1B070);
    sub_1828C();
    v12 = v16[1];
    v13 = sub_1829C();
    v11 = [objc_opt_self() promiseWithError:v13];

    v10 = 0;
  }

  else
  {
    v11 = [objc_opt_self() promiseWithResult:v10];
  }

  v14 = [objc_opt_self() bagValueWithKey:a1 valueType:5 valuePromise:v11];
  return v14;
}

id sub_EA7C(uint64_t a1)
{
  sub_F19C((v1 + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag), *(v1 + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag + 24));
  sub_1882C();
  v3 = sub_1855C();

  if (v3 && (sub_10710(v3), , sub_9C94(&qword_25920, &qword_1AC50), v4.super.isa = sub_187DC().super.isa, , v4.super.isa))
  {
    v5 = [objc_opt_self() promiseWithResult:v4.super.isa];
  }

  else
  {
    type metadata accessor for AMSError(0);
    sub_1237C(&_swiftEmptyArrayStorage);
    sub_12C90(&qword_258A0, type metadata accessor for AMSError, &unk_1B070);
    sub_1828C();
    v6 = sub_1829C();
    v5 = [objc_opt_self() promiseWithError:v6];

    v4.super.isa = 0;
  }

  v7 = [objc_opt_self() bagValueWithKey:a1 valueType:6 valuePromise:v5];
  return v7;
}

id sub_ECCC(uint64_t a1, void *a2)
{
  v5 = sub_9C94(&qword_25898, &qword_1AC30);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1835C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_12974(v2 + OBJC_IVAR____TtC28BridgeAppStoreDaemonSettingsP33_0A13CEED745858FF5AC3E5CC59508EC39ASDAMSBag_bag, v26);
    sub_F19C(v26, v26[3]);
    v24 = a1;
    sub_1882C();
    v23 = a2;
    sub_1834C();
    sub_1859C();

    (*(v9 + 8))(v11, v8);
    v12 = sub_182CC();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v7, 1, v12) == 1)
    {
      sub_128AC(v26);
      type metadata accessor for AMSError(0);
      v25 = 204;
      sub_1237C(&_swiftEmptyArrayStorage);
      sub_12C90(&qword_258A0, type metadata accessor for AMSError, &unk_1B070);
      sub_1828C();
      v15 = v26[0];
      v16 = sub_1829C();
      v17 = [objc_opt_self() promiseWithError:v16];
    }

    else
    {
      sub_182BC(v14);
      v20 = v19;
      (*(v13 + 8))(v7, v12);
      v17 = [objc_opt_self() promiseWithResult:v20];

      sub_128AC(v26);
    }

    v21 = [objc_opt_self() bagValueWithKey:v24 valueType:5 valuePromise:v17];

    return v21;
  }

  else
  {

    return sub_E7B8(a1);
  }
}

id sub_F11C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_F19C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_F1F4(uint64_t a1)
{
  v2 = sub_12C90(&qword_25A20, type metadata accessor for AMSError, &unk_1AFBC);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_F260(uint64_t a1)
{
  v2 = sub_12C90(&qword_25A20, type metadata accessor for AMSError, &unk_1AFBC);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_F2D0(uint64_t a1)
{
  v2 = sub_12C90(&qword_258A0, type metadata accessor for AMSError, &unk_1B070);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_F35C(uint64_t a1)
{
  v2 = sub_12C90(&qword_258A0, type metadata accessor for AMSError, &unk_1B070);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_F3C8(uint64_t a1)
{
  v2 = sub_12C90(&qword_258A0, type metadata accessor for AMSError, &unk_1B070);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_F434(void *a1, uint64_t a2)
{
  v4 = sub_12C90(&qword_258A0, type metadata accessor for AMSError, &unk_1B070);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_F4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_12C90(&qword_258A0, type metadata accessor for AMSError, &unk_1B070);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_F564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18AFC();
  sub_187EC();
  return sub_18B0C();
}

void *sub_F5C4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_F5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_12C90(&qword_258A0, type metadata accessor for AMSError, &unk_1B070);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_F678(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_F770;

  return v6(a1);
}

uint64_t sub_F770()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_F868(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_13B54;

  return v6();
}

uint64_t sub_F950(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_FA38;

  return v7();
}

uint64_t sub_FA38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_FB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_9C94(&qword_25930, &qword_1AC60);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_12D3C(a3, v23 - v10, &qword_25930, &qword_1AC60);
  v12 = sub_188EC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_13304(v11, &qword_25930, &qword_1AC60);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_188DC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_188BC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1883C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_13304(a3, &qword_25930, &qword_1AC60);

    return v21;
  }

LABEL_8:
  sub_13304(a3, &qword_25930, &qword_1AC60);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_FE28(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_13B58;

  return v6(a1);
}

unint64_t sub_FF20(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_18ABC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_FFD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_9C94(&qword_25978, &qword_1ACF8);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_101B0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_13A5C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_128AC(v11);
  return v7;
}

unint64_t sub_101B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_102BC(a5, a6);
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
    result = sub_18A2C();
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

char *sub_102BC(uint64_t a1, unint64_t a2)
{
  v3 = sub_10308(a1, a2);
  sub_10438(&off_20D80);
  return v3;
}

char *sub_10308(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10524(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_18A2C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1885C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10524(v10, 0);
        result = sub_18A1C();
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

uint64_t sub_10438(uint64_t result)
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

  result = sub_10598(result, v11, 1, v3);
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

void *sub_10524(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_9C94(&qword_25A58, &qword_1B180);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10598(char *result, int64_t a2, char a3, char *a4)
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
    sub_9C94(&qword_25A58, &qword_1B180);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_1068C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_18AFC();
  sub_1884C();
  v5 = sub_18B0C();

  return a3(a1, a2, v5);
}

uint64_t sub_10710(uint64_t a1)
{
  v35 = sub_1865C();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_9C94(&qword_25928, &qword_1AC58);
  result = sub_18A9C();
  v5 = 0;
  v36 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v34 = v2;
  v30 = v2 + 8;
  v31 = v2 + 16;
  v29 = result + 64;
  v32 = result;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v37 = (v11 - 1) & v11;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v38 = 16 * v16;
      v17 = v35;
      v18 = *(v36 + 56);
      v19 = (*(v36 + 48) + 16 * v16);
      v20 = v19[1];
      v39 = *v19;
      v21 = v33;
      v22 = v34;
      (*(v34 + 16))(v33, v18 + *(v34 + 72) * v16, v35);

      v23 = sub_E000();
      (*(v22 + 8))(v21, v17);
      *(v29 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v32;
      v24 = (*(v32 + 48) + v38);
      *v24 = v39;
      v24[1] = v20;
      *(*(result + 56) + 8 * v16) = v23;
      v25 = *(result + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      *(result + 16) = v27;
      v11 = v37;
      if (!v37)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v37 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  v7 = sub_128F8(v10);
  (*(*(a3 - 8) + 16))(v7, a1, a3);
  v8 = a2 + OBJC_IVAR___BagService_lastRecentBagMutex;
  os_unfair_lock_lock((a2 + OBJC_IVAR___BagService_lastRecentBagMutex));
  sub_6F90((v8 + 8), v10);
  os_unfair_lock_unlock(v8);
  return sub_128AC(v10);
}

id sub_10A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  v6 = sub_128F8(v12);
  (*(*(a3 - 8) + 32))(v6, a1, a3);
  v7 = type metadata accessor for ObjCBag();
  v8 = objc_allocWithZone(v7);
  sub_12974(v12, v8 + OBJC_IVAR___Bag_bag);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, "init");
  sub_128AC(v12);
  return v9;
}

id sub_10AC8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  v7 = sub_128F8(v11);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  sub_12974(v11, &a2[OBJC_IVAR___Bag_bag]);
  v10.receiver = a2;
  v10.super_class = type metadata accessor for ObjCBag();
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_128AC(v11);
  return v8;
}

id sub_10B78(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  (*(v7 + 32))(&v15 - v11);
  (*(v7 + 16))(v10, v12, a3);
  v13 = sub_10AC8(v10, a2, a3, a4);
  (*(v7 + 8))(v12, a3);
  return v13;
}

id sub_10CB0(char *a1)
{
  v2 = sub_184FC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  (*(v3 + 16))(&v16 - v7, a1, v2);
  sub_184CC();
  sub_12C90(&qword_25A00, &type metadata accessor for AccountClientIdentifier, &protocol conformance descriptor for AccountClientIdentifier);
  v9 = sub_1880C();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9)
  {
    v11 = &AMSAccountMediaTypeAppStore;
LABEL_7:
    v10(v8, v2);
    v14 = *v11;
    v10(a1, v2);
    return v14;
  }

  sub_184EC();
  v12 = sub_1880C();
  v10(v6, v2);
  if (v12)
  {
    v11 = &AMSAccountMediaTypeAppStoreSandbox;
    goto LABEL_7;
  }

  sub_184DC();
  v13 = sub_1880C();
  v10(v6, v2);
  if (v13)
  {
    v11 = &AMSAccountMediaTypeAppStoreBeta;
    goto LABEL_7;
  }

  result = sub_18A8C();
  __break(1u);
  return result;
}

id sub_10F24(void *a1, int a2, uint64_t a3)
{
  v58 = a3;
  LODWORD(v53) = a2;
  v4 = 0;
  v55 = sub_1835C();
  v5 = *(v55 - 8);
  v6 = __chkstk_darwin(v55);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v44 - v9;
  v10 = sub_183DC();
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = &v44 - v14;
  v50 = sub_184FC();
  v15 = *(v50 - 8);
  v16 = __chkstk_darwin(v50);
  v49 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v44 - v18;
  v20 = sub_184BC();
  v56 = *(v20 - 8);
  v57 = v20;
  v21 = __chkstk_darwin(v20);
  v54 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v51 = &v44 - v24;
  __chkstk_darwin(v23);
  v26 = &v44 - v25;
  v27 = [a1 ams_DSID];
  v28 = v27;
  v52 = 0;
  if (v27)
  {
    v4 = [v27 unsignedLongLongValue];
  }

  if (qword_25AD0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_25AD8);
  if (qword_25AE0)
  {
    if (byte_25AF0)
    {
      if (!v28)
      {
LABEL_11:
        v29 = qword_25AE0;
        os_unfair_lock_unlock(&dword_25AD8);
        return v29;
      }
    }

    else if (v28 && qword_25AE8 == v4)
    {
      goto LABEL_11;
    }
  }

  v45 = v4;
  v48 = v13;
  if (v53 & 1) != 0 && (sub_184CC(), v53 = a1, v31 = v50, (*(v15 + 16))(v49, v19, v50), a1 = v53, sub_1849C(), (*(v15 + 8))(v19, v31), v32 = sub_184AC(), (*(v56 + 8))(v26, v57), (v32))
  {
    v33 = *(v56 + 16);
    v33(v51, v58, v57);
    v34 = a1;
    v35 = v47;
    v36 = v52;
    sub_1834C();
    if (v36)
    {
LABEL_22:
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    LODWORD(v56) = v28 == 0;

    v37 = v46;
    sub_183CC();
    (*(v5 + 8))(v35, v55);
    v38 = objc_allocWithZone(type metadata accessor for AppStoreDaemonBagService(0));
    qword_25AE0 = sub_1D14(v51, v37);
    qword_25AE8 = v45;
    byte_25AF0 = v56;
    v39 = qword_25AE0;
    os_unfair_lock_unlock(&dword_25AD8);
    result = v39;
    v40 = v54;
    if (v39)
    {
      return result;
    }
  }

  else
  {
    os_unfair_lock_unlock(&dword_25AD8);
    v33 = *(v56 + 16);
    v40 = v54;
    v36 = v52;
  }

  v33(v40, v58, v57);
  v41 = a1;
  sub_1834C();
  v42 = v48;
  if (v36)
  {
    swift_unexpectedError();
    __break(1u);
    goto LABEL_22;
  }

  sub_183CC();
  (*(v5 + 8))(v8, v55);
  v43 = objc_allocWithZone(type metadata accessor for AppStoreDaemonBagService(0));
  return sub_1D14(v40, v42);
}

id sub_11508(uint64_t a1)
{
  v2 = sub_184FC();
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1873C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1871C();
  v9 = sub_1872C();
  v10 = sub_1893C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "Fetching current account", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v12 = objc_opt_self();
  sub_1848C();
  v13 = sub_10CB0(v4);
  v14 = [v12 ams_sharedAccountStoreForMediaType:v13];

  v15 = [v14 ams_activeiTunesAccount];
  if (!v15)
  {
    v15 = [objc_opt_self() ams_createEphemeralAccount];
  }

  v16 = v15;
  v17 = sub_10F24(v16, 1, a1);

  return v17;
}

id sub_11744(void (*a1)(uint64_t))
{
  v2 = sub_184FC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = sub_184BC();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v11);
  (*(v3 + 16))(v6, v8, v2);
  sub_1849C();
  (*(v3 + 8))(v8, v2);
  v14 = sub_11508(v13);
  (*(v10 + 8))(v13, v9);
  return v14;
}

uint64_t sub_11944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a6;
  v26 = a5;
  v27 = a1;
  v11 = sub_9C94(&qword_25930, &qword_1AC60);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_188BC();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_12D3C(a3, v13, &qword_25930, &qword_1AC60);
  v18 = sub_188EC();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_13304(v13, &qword_25930, &qword_1AC60);
  }

  else
  {
    sub_188DC();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v34[0] = 0;
      v34[1] = 0;
      v24 = v34;
      v34[2] = v14;
      v34[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v24 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v22 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v22;
        }

        goto LABEL_12;
      }
    }

    v33[4] = 6;
    v33[5] = v24;
    v33[6] = a4;
    v33[7] = v26;
    goto LABEL_17;
  }

  v20 = sub_1883C() + 32;
  swift_unknownObjectRetain();

  if (v16 | v14)
  {
    v33[0] = 0;
    v33[1] = 0;
    v21 = v33;
    v33[2] = v14;
    v33[3] = v16;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v21 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v32[0] = 6;
    v32[1] = v21;
    v32[2] = a4;
    v32[3] = v26;
    v21 = v32;
  }

LABEL_11:
  v29 = 7;
  v30 = v21;
  v31 = v20;
  v22 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v22;
}

uint64_t sub_11C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v28 = a5;
  v29 = a1;
  v11 = sub_9C94(&qword_25930, &qword_1AC60);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_188BC();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_12D3C(a3, v13, &qword_25930, &qword_1AC60);
  v18 = sub_188EC();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_13304(v13, &qword_25930, &qword_1AC60);
  }

  else
  {
    sub_188DC();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    *(v25 + 24) = a7;
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v36[0] = 0;
      v36[1] = 0;
      v26 = v36;
      v36[2] = v14;
      v36[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v23 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v23;
        }

        goto LABEL_12;
      }
    }

    v35[4] = 6;
    v35[5] = v26;
    v35[6] = a4;
    v35[7] = v28;
    goto LABEL_17;
  }

  v20 = sub_1883C() + 32;
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  *(v21 + 24) = a7;
  swift_unknownObjectRetain();

  if (v16 | v14)
  {
    v35[0] = 0;
    v35[1] = 0;
    v22 = v35;
    v35[2] = v14;
    v35[3] = v16;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v22 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v34[0] = 6;
    v34[1] = v22;
    v34[2] = a4;
    v34[3] = v28;
    v22 = v34;
  }

LABEL_11:
  v31 = 7;
  v32 = v22;
  v33 = v20;
  v23 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v23;
}

uint64_t sub_11FD4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1873C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1871C();

  v8 = sub_1872C();
  v9 = sub_1896C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100E4(a1, a2, &v14);
    _os_log_impl(&dword_0, v8, v9, "Read key %s from an empty bag", v10, 0xCu);
    sub_128AC(v11);
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1217C(uint64_t a1)
{
  v2 = sub_9C94(&qword_25958, &qword_1ACD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_9C94(&qword_25960, &qword_1ACE0);
    v7 = sub_18AAC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_12D3C(v9, v5, &qword_25958, &qword_1ACD8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1068C(*v5, v12, sub_FF20);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1865C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1237C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_9C94(&qword_258A8, &qword_1AC38);
    v3 = sub_18AAC();
    v4 = a1 + 32;

    while (1)
    {
      sub_12D3C(v4, &v13, &unk_258B0, &unk_1AC40);
      v5 = v13;
      v6 = v14;
      result = sub_1068C(v13, v14, sub_FF20);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_124C0(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_124C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_124D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_124E4(a1, a2);
  }

  return a1;
}

uint64_t sub_124E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_12538()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_12578()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_13B54;

  return sub_D738(v2, v3);
}

uint64_t sub_12628()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_13B54;

  return sub_F868(v2, v3, v4);
}

uint64_t sub_126E8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_12728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_13B54;

  return sub_F950(a1, v4, v5, v6);
}

uint64_t sub_127F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_13B54;

  return sub_FE28(a1, v4);
}

uint64_t sub_128AC(void *a1)
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

uint64_t *sub_128F8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1295C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_12974(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_129DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_13B54;

  return sub_95D4(a1, v4);
}

uint64_t sub_12A80()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_13B54;

  return sub_C208(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_12B3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_12B74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_13B54;

  return sub_F678(a1, v4);
}

uint64_t sub_12C2C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_12C78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_12C90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_12CD8()
{
  result = qword_259A0;
  if (!qword_259A0)
  {
    sub_9C1C(&qword_25998, &qword_1AD38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_259A0);
  }

  return result;
}

uint64_t sub_12D3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_9C94(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_12DA4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_12DDC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_12E5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_13B54;

  return sub_8CC8(a1, v4);
}

uint64_t sub_12EFC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_13B54;

  return sub_B964(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_12FB8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_13004()
{
  v1 = v0[2];
  v2 = v0[5];
  v4 = v0[4];
  return v1(&v4, v2);
}

uint64_t sub_13084(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_FA38;

  return sub_8370(a1, v4);
}

uint64_t sub_13124()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_13B54;

  return sub_B354(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_131E0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_13220()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t sub_13260(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_132B0()
{
  result = qword_259E8;
  if (!qword_259E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_259E8);
  }

  return result;
}

uint64_t sub_13304(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_9C94(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_13364(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_13B54;

  return sub_7E88(a1, v4);
}

uint64_t sub_13404()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_13458()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_13B54;

  return sub_4C30(v4, v5, v6, v2, v3);
}

uint64_t sub_134F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_13538()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_FA38;

  return sub_4F1C(v4, v5, v6, v2, v3);
}

uint64_t sub_135D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_13610()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_13B54;

  return sub_2AE4(v3, v4, v5, v2);
}

uint64_t sub_136A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_9C94(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_138E0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_13978()
{
  result = qword_25A48;
  if (!qword_25A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25A48);
  }

  return result;
}

uint64_t sub_13A5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_13B80(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13C24;
  block[3] = &unk_21500;
  block[4] = objc_opt_self();
  if (qword_26038 != -1)
  {
    dispatch_once(&qword_26038, block);
  }

  v1 = qword_26030;

  return v1;
}

uint64_t sub_13C24(uint64_t a1)
{
  qword_26030 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_13EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_13F5C(uint64_t a1)
{
  v1 = sub_14090(a1, @"ActiveDSID", 0, 1);

  return v1;
}

id sub_13F98(uint64_t a1)
{
  objc_opt_self();
  v4[0] = @"ForceAppDRMMode";
  v4[1] = @"CellularSettings";
  v4[2] = @"ActiveCompanionSim";
  v1 = [NSArray arrayWithObjects:v4 count:3];
  v2 = [NSSet setWithArray:v1];

  return v2;
}

id sub_1405C(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    a1 = sub_14090(a1, a2, a3, 0);
    v3 = vars8;
  }

  return a1;
}

id sub_14090(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = [*(a1 + 24) synchronize];
    v10 = v8;
    v11 = [*(a1 + 24) dictionaryForKey:@"AutoSettingsData"];
    v12 = v11;
    if (a4)
    {
      [v11 objectForKeyedSubscript:v7];
      v10 = v13 = v10;
    }

    else
    {
      v14 = sub_13F5C(a1);
      v13 = v14;
      if (v14)
      {
        v15 = [v14 stringValue];
        v16 = [v12 objectForKeyedSubscript:v15];

        if (v16)
        {
          v17 = [v16 objectForKeyedSubscript:v7];

          if (v17)
          {
            v18 = [v16 objectForKeyedSubscript:v7];

            v10 = v18;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_141DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_142A4;
    block[3] = &unk_21528;
    block[4] = a1;
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }
}

void sub_142A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v18 = *(a1 + 40);
  v3 = v2;
  if (v1)
  {
    v4 = [*(v1 + 24) dictionaryForKey:@"AutoSettingsData"];
    v5 = [v4 mutableCopy];

    if (!v5)
    {
      v5 = objc_opt_new();
    }

    v6 = sub_13F5C(v1);
    v7 = v6;
    if (v6)
    {
      v8 = [v6 stringValue];
      v9 = [v5 objectForKeyedSubscript:v8];
      v10 = [v9 mutableCopy];

      if (!v10)
      {
        v10 = objc_opt_new();
      }

      [v10 setObject:v18 forKeyedSubscript:v3];
      v11 = [v7 stringValue];
      [v5 setObject:v10 forKeyedSubscript:v11];
    }

    [*(v1 + 24) setObject:v5 forKey:@"AutoSettingsData"];
    v12 = [*(v1 + 24) synchronize];
    v14 = *(v1 + 24);
    v13 = *(v1 + 32);
    v15 = @"AutoSettingsData";
    v16 = [v14 domain];
    v17 = [NSSet setWithObject:@"AutoSettingsData"];

    [v13 synchronizeNanoDomain:v16 keys:v17];
  }
}

void sub_1445C(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"WatchSettingsManagerSettingsChangedExternallyNotification" object:0];
}

void sub_144B0(uint64_t a1)
{
  v2 = ASDLogHandleForCategory(14);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Received a notification that preferences have changed externally.", &v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = ASDLogHandleForCategory(14);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Received notification that settings changed externally.", &v6, 0xCu);
    }

    dispatch_async(WeakRetained[1], &stru_21548);
  }
}

id ASDLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/AppStoreDaemon.framework"];
  v3 = +[NSLocale preferredLanguages];
  v4 = [v2 localizations];
  v5 = [NSBundle preferredLocalizationsFromArray:v4 forPreferences:v3];
  v6 = [v5 firstObject];
  v7 = [v2 localizedStringForKey:v1 value:0 table:0 localization:v6];

  return v7;
}

id ASDLogHandleForCategory(uint64_t a1)
{
  if (qword_261B8 != -1)
  {
    dispatch_once(&qword_261B8, &stru_215C0);
  }

  v2 = qword_26060[a1];

  return v2;
}

void sub_14EDC(id a1)
{
  v1 = os_log_create("com.apple.appstored", "Activity");
  v2 = qword_26060[0];
  qword_26060[0] = v1;

  v3 = os_log_create("com.apple.appstored", "AppCapabilities");
  v4 = qword_26068;
  qword_26068 = v3;

  v5 = os_log_create("com.apple.appstored", "AppInstall");
  v6 = qword_26070;
  qword_26070 = v5;

  v7 = os_log_create("com.apple.appstored", "AppUsage");
  v8 = qword_26078;
  qword_26078 = v7;

  v9 = os_log_create("com.apple.appstored", "Arcade");
  v10 = qword_26080;
  qword_26080 = v9;

  v11 = os_log_create("com.apple.appstored", "Bag");
  v12 = qword_26088;
  qword_26088 = v11;

  v13 = os_log_create("com.apple.appstored", "Cleanup");
  v14 = qword_26090;
  qword_26090 = v13;

  v15 = os_log_create("com.apple.appstored", "Clips");
  v16 = qword_26098;
  qword_26098 = v15;

  v17 = os_log_create("com.apple.appstored", "DAAP");
  v18 = qword_260A0;
  qword_260A0 = v17;

  v19 = os_log_create("com.apple.appstored", "Daemon");
  v20 = qword_260A8;
  qword_260A8 = v19;

  v21 = os_log_create("com.apple.appstored", "Download");
  v22 = qword_260B0;
  qword_260B0 = v21;

  v23 = os_log_create("com.apple.appstored", "EventsExtension");
  v24 = qword_260B8;
  qword_260B8 = v23;

  v25 = os_log_create("com.apple.appstored", "Extension");
  v26 = qword_260C0;
  qword_260C0 = v25;

  v27 = os_log_create("com.apple.appstored", "Framework");
  v28 = qword_260C8;
  qword_260C8 = v27;

  v29 = os_log_create("com.apple.appstored", "General");
  v30 = qword_260D0;
  qword_260D0 = v29;

  v31 = os_log_create("com.apple.appstored", "Library");
  v32 = qword_260D8;
  qword_260D8 = v31;

  v33 = os_log_create("com.apple.appstored", "Metrics");
  v34 = qword_260E0;
  qword_260E0 = v33;

  v35 = os_log_create("com.apple.appstored", "Migrate");
  v36 = qword_260E8;
  qword_260E8 = v35;

  v37 = os_log_create("com.apple.appstored", "StoreKitInXcode");
  v38 = qword_260F0;
  qword_260F0 = v37;

  v39 = os_log_create("com.apple.appstored", "ODR");
  v40 = qword_260F8;
  qword_260F8 = v39;

  v41 = os_log_create("com.apple.appstored", "Offloading");
  v42 = qword_26100;
  qword_26100 = v41;

  v43 = os_log_create("com.apple.appstored", "Daemon-Oversize");
  v44 = qword_26108;
  qword_26108 = v43;

  v45 = os_log_create("com.apple.appstored", "Performance");
  v46 = qword_26110;
  qword_26110 = v45;

  v47 = os_log_create("com.apple.appstored", "PrivilegedTask");
  v48 = qword_26118;
  qword_26118 = v47;

  v49 = os_log_create("com.apple.appstored", "Progress");
  v50 = qword_26120;
  qword_26120 = v49;

  v51 = os_log_create("com.apple.appstored", "Purchase");
  v52 = qword_26128;
  qword_26128 = v51;

  v53 = os_log_create("com.apple.appstored", "Push");
  v54 = qword_26130;
  qword_26130 = v53;

  v55 = os_log_create("com.apple.appstored", "QA");
  v56 = qword_26138;
  qword_26138 = v55;

  v57 = os_log_create("com.apple.appstored", "Repair");
  v58 = qword_26140;
  qword_26140 = v57;

  v59 = os_log_create("com.apple.appstored", "Restore");
  v60 = qword_26148;
  qword_26148 = v59;

  v61 = os_log_create("com.apple.appstored", "Scheduler");
  v62 = qword_26150;
  qword_26150 = v61;

  v63 = os_log_create("com.apple.appstored", "Signpost");
  v64 = qword_26158;
  qword_26158 = v63;

  v65 = os_log_create("com.apple.appstored", "SKAdNetwork");
  v66 = qword_26160;
  qword_26160 = v65;

  v67 = os_log_create("com.apple.appstored", "Skanner");
  v68 = qword_26168;
  qword_26168 = v67;

  v69 = os_log_create("com.apple.appstored", "SoftwareMap");
  v70 = qword_26170;
  qword_26170 = v69;

  v71 = os_log_create("com.apple.appstored", "SQL");
  v72 = qword_26178;
  qword_26178 = v71;

  v73 = os_log_create("com.apple.appstored", "StoreKit");
  v74 = qword_26180;
  qword_26180 = v73;

  v75 = os_log_create("com.apple.appstored", "Subscription");
  v76 = qword_26188;
  qword_26188 = v75;

  v77 = os_log_create("com.apple.appstored", "TestFlightFeedback");
  v78 = qword_26190;
  qword_26190 = v77;

  v79 = os_log_create("com.apple.appstored", "TestFlightExtension");
  v80 = qword_26198;
  qword_26198 = v79;

  v81 = os_log_create("com.apple.appstored", "Updates");
  v82 = qword_261A0;
  qword_261A0 = v81;

  v83 = os_log_create("com.apple.appstored", "VPP");
  v84 = qword_261A8;
  qword_261A8 = v83;

  qword_261B0 = os_log_create("com.apple.appstored", "XDC");

  _objc_release_x1();
}

void sub_15754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_15778(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadForExternalChange];
}

void sub_16144(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1[18] clearDialog:v3];
    v12 = 0;
    v5 = [v4 resultWithError:&v12];
    v6 = v12;

    if (v5 && ([v3 identifier], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      [a1 beginUpdates];
      v8 = [v3 identifier];
      [a1 removeSpecifierID:v8 animated:1];

      [a1 endUpdates];
    }

    else if (v6)
    {
      v9 = ASDLogHandleForCategory(14);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = [v3 identifier];
        *buf = 138543874;
        v14 = v10;
        v15 = 2114;
        v16 = v11;
        v17 = 2114;
        v18 = v6;
        _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "[%{public}@]: Error clearing repair dialog (%{public}@): %{public}@", buf, 0x20u);
      }
    }
  }
}

void sub_169B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak((v33 - 256));
  _Unwind_Resume(a1);
}

void sub_169F8(uint64_t a1, int a2)
{
  val = objc_loadWeakRetained((a1 + 48));
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v6 = v4;
    if (val)
    {
      v7 = [v5 deepLink];
      v8 = [NSURLComponents componentsWithURL:v7 resolvingAgainstBaseURL:0];

      v9 = [v8 scheme];
      v10 = [v9 isEqualToString:@"itms-ui"];

      if (v10)
      {
        [v8 setScheme:@"https"];
      }

      location = 0;
      p_location = &location;
      v21 = 0x2050000000;
      v11 = qword_26050;
      v22 = qword_26050;
      if (!qword_26050)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v24 = sub_181A0;
        v25 = &unk_21750;
        v26 = &location;
        sub_181A0(&buf);
        v11 = p_location[3];
      }

      v12 = v11;
      _Block_object_dispose(&location, 8);
      v13 = [v11 alloc];
      v14 = [v8 URL];
      v15 = [v13 initWithAccountURL:v14];

      [v15 setDelegate:val];
      if (v6)
      {
        objc_storeStrong(val + 17, v4);
        objc_initWeak(&location, val);
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v24 = sub_17BBC;
        v25 = &unk_216D8;
        v26 = val;
        objc_copyWeak(&v28, &location);
        v27 = v15;
        [v27 prepareWithCompletionBlock:&buf];

        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
      }

      else
      {
        v16 = ASDLogHandleForCategory(14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = objc_opt_class();
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v17;
          _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "[%{public}@]: Action tapped but no dialog request found", &buf, 0xCu);
        }
      }
    }
  }
}

void sub_16D2C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    v5 = WeakRetained;
    sub_16144(WeakRetained, *(a1 + 32));
    WeakRetained = v5;
  }
}

void sub_16D84(uint64_t a1, void *a2)
{
  v45 = a2;
  if (a1)
  {
    v46 = sub_175E0();
    v3 = [v46 valueForProperty:NRDevicePropertyIsAltAccount];
    v4 = [v3 BOOLValue];

    if (v4)
    {
      v43 = v46;
      v5 = [v43 valueForProperty:@"_altAccountAltDSID"];
      if (v5)
      {
        v6 = objc_opt_new();
        [v6 setCachePolicy:1];
        v58 = 0;
        v59 = &v58;
        v60 = 0x3032000000;
        v61 = sub_17E50;
        v62 = sub_17E60;
        v63 = 0;
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_17E68;
        v55[3] = &unk_21728;
        v55[4] = a1;
        v57 = &v58;
        v7 = dispatch_semaphore_create(0);
        v56 = v7;
        v44 = v6;
        [v6 startRequestWithCompletionHandler:v55];
        v8 = dispatch_time(0, 30000000000);
        v42 = v7;
        if (dispatch_semaphore_wait(v7, v8))
        {
          v9 = ASDLogHandleForCategory(14);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v40 = objc_opt_class();
            *buf = 138543362;
            v65 = v40;
            _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "[%{public}@]: Timed out attempting to sync the family circle", buf, 0xCu);
          }

          v10 = 0;
        }

        else
        {
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v21 = [v59[5] members];
          v22 = [v21 countByEnumeratingWithState:&v51 objects:buf count:16];
          if (v22)
          {
            v23 = *v52;
            while (2)
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v52 != v23)
                {
                  objc_enumerationMutation(v21);
                }

                v25 = *(*(&v51 + 1) + 8 * i);
                v26 = [v25 altDSID];
                v27 = [v26 isEqualToString:v5];

                if (v27)
                {
                  v22 = v5;
                  v28 = [v25 dsid];
                  v29 = [v25 appleID];
                  goto LABEL_27;
                }
              }

              v22 = [v21 countByEnumeratingWithState:&v51 objects:buf count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          v28 = 0;
          v29 = 0;
LABEL_27:

          v9 = v22;
          v30 = v28;
          v31 = v29;
          v32 = +[ACAccountStore ams_sharedAccountStore];
          v10 = [v32 ams_iTunesAccountWithAltDSID:v9 DSID:v30 username:v31];

          if (!v10)
          {
            if (v9 || v30 || v31)
            {
              v33 = +[ACAccountStore ams_sharedAccountStore];
              v34 = [v33 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifieriTunesStore];

              v10 = [[ACAccount alloc] initWithAccountType:v34];
              [v10 ams_setAltDSID:v9];
              [v10 ams_setDSID:v30];
              [v10 setUsername:v31];
            }

            else
            {
              v10 = 0;
            }
          }
        }

        _Block_object_dispose(&v58, 8);
      }

      else
      {
        v44 = ASDLogHandleForCategory(14);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v65 = objc_opt_class();
          v66 = 2114;
          v67 = v43;
          _os_log_error_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "[%{public}@]: No alt DSID found for device: %{public}@", buf, 0x16u);
        }

        v10 = 0;
      }

      if (!v10)
      {
        v39 = ASDLogHandleForCategory(14);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v41 = objc_opt_class();
          *buf = 138543362;
          v65 = v41;
          _os_log_error_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "[%{public}@]: Requested active family account authentication but there is no active family iTunes account.", buf, 0xCu);
        }

        v45[2](v45, 0);
        goto LABEL_40;
      }
    }

    else
    {
      v11 = +[ACAccountStore ams_sharedAccountStore];
      v10 = [v11 ams_activeiTunesAccount];

      if (!v10)
      {
        v12 = ASDLogHandleForCategory(14);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v65 = objc_opt_class();
          _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[%{public}@]: Requested active account authentication but there is no active iTunes account.", buf, 0xCu);
        }

        v13 = ASDLogHandleForCategory(14);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = objc_opt_class();
          *buf = 138543362;
          v65 = v14;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Presenting sign-in needed dialog.", buf, 0xCu);
        }

        v15 = ASDLocalizedString(@"SIGN_IN_TO_APP_STORE_ON_THIS_IPHONE");
        v16 = [AMSDialogRequest requestWithTitle:0 message:v15];

        v17 = ASDLocalizedString(@"OK");
        v18 = [AMSDialogAction actionWithTitle:v17];
        [v16 addButtonAction:v18];

        v19 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v16];
        v20 = [v19 present];
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_17908;
        v47[3] = &unk_216B0;
        v47[4] = a1;
        v48 = v45;
        [v20 addFinishBlock:v47];

        goto LABEL_40;
      }
    }

    v35 = objc_alloc_init(AMSAuthenticateOptions);
    [v35 setProxyAppBundleID:@"com.apple.AppStore"];
    [v35 setForceSyncToPairedWatch:v4 ^ 1];
    v36 = [[AMSAuthenticateRequest alloc] initWithAccount:v10 options:v35];
    v37 = [objc_alloc(sub_17668()) initWithRequest:v36 presentingViewController:a1];
    sub_17748(a1);
    v38 = [v37 performAuthentication];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_177BC;
    v49[3] = &unk_21688;
    v49[4] = a1;
    v50 = v45;
    [v38 addFinishBlock:v49];

LABEL_40:
  }
}

void sub_175AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_175E0()
{
  v0 = +[NRPairedDeviceRegistry sharedInstance];
  v1 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v2 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:v1];
  v3 = [v2 firstObject];

  return v3;
}

id sub_17668()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_26040;
  v7 = qword_26040;
  if (!qword_26040)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_17FD8;
    v3[3] = &unk_21750;
    v3[4] = &v4;
    sub_17FD8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_17730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_17748(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_17D2C;
  block[3] = &unk_21700;
  block[4] = a1;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_177BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  sub_17870(*(a1 + 32));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_178EC;
  v7[3] = &unk_21660;
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

void sub_17870(uint64_t a1)
{
  if (a1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_17DF4;
    block[3] = &unk_21700;
    block[4] = a1;
    dispatch_async(&_dispatch_main_q, block);
  }
}

uint64_t sub_17908(uint64_t a1)
{
  v2 = ASDLogHandleForCategory(14);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = objc_opt_class();
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Sign-in needed dialog acknowledged.", &v4, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_179CC(uint64_t a1)
{
  sub_17870(*(a1 + 32));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_17BBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    WeakRetained = ASDLogHandleForCategory(14);
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543618;
      v7 = objc_opt_class();
      v8 = 2114;
      v9 = v4;
      _os_log_error_impl(&dword_0, WeakRetained, OS_LOG_TYPE_ERROR, "[%{public}@]: Error preparing account view controller: %{public}@", &v6, 0x16u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained presentViewController:*(a1 + 40) animated:1 completion:0];
  }
}

void sub_17D2C(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationItem];
  v3 = [v2 rightBarButtonItem];
  v4 = *(a1 + 32);
  v5 = *(v4 + 152);
  *(v4 + 152) = v3;

  v8 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  v6 = [[UIBarButtonItem alloc] initWithCustomView:v8];
  [v8 startAnimating];
  v7 = [*(a1 + 32) navigationItem];
  [v7 setRightBarButtonItem:v6];
}

void sub_17DF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[19];
  v3 = [v1 navigationItem];
  [v3 setRightBarButtonItem:v2];
}

uint64_t sub_17E50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_17E68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory(14);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "[%{public}@]: Error loading family circle: %{public}@", &v11, 0x16u);
    }
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

Class sub_17FD8(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_26048)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1812C;
    v4[4] = &unk_21500;
    v4[5] = v4;
    v5 = off_21770;
    v6 = 0;
    qword_26048 = _sl_dlopen();
    v2 = v4[0];
    if (qword_26048)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AMSUIAuthenticateTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "AMSUIAuthenticateTask");
  }

  qword_26040 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1812C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_26048 = result;
  return result;
}

Class sub_181A0(uint64_t a1)
{
  if (!qword_26058)
  {
    qword_26058 = dlopen("/System/Library/Frameworks/StoreKit.framework/StoreKit", 2);
  }

  result = objc_getClass("SKAccountPageViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "SKAccountPageViewController");
    JUMPOUT(0x1822CLL);
  }

  qword_26050 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}