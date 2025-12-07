uint64_t sub_1B7C215A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = result;
  v7 = *(result + 32);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v3 = &v26;
    v10 = v7 + 32;
    while (v9 < *(v7 + 16))
    {
      sub_1B7AEBEFC(v10, v24);
      v11 = *&v24[0] == a2 && *(&v24[0] + 1) == a3;
      if (v11 || (sub_1B7CFF590() & 1) != 0)
      {
        goto LABEL_11;
      }

      ++v9;
      result = sub_1B7AEBF70(v24);
      v10 += 136;
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1B7CFF210();

    v26 = 0x79747265706F7250;
    v27 = 0xE900000000000020;
    MEMORY[0x1B8CADCA0](a2, a3);
    MEMORY[0x1B8CADCA0](0xD000000000000014, 0x80000001B7D51480);
    MEMORY[0x1B8CADCA0](*(v6 + 16), *(v6 + 24));
    sub_1B7CFF340();
    __break(1u);
LABEL_11:
    v12 = v24[7];
    *(v3 + 6) = v24[6];
    *(v3 + 7) = v12;
    v30 = v25;
    v13 = v24[3];
    *(v3 + 2) = v24[2];
    *(v3 + 3) = v13;
    v14 = v24[5];
    *(v3 + 4) = v24[4];
    *(v3 + 5) = v14;
    v15 = v24[1];
    *v3 = v24[0];
    *(v3 + 1) = v15;
    v16 = *(v6 + 16);
    v17 = *(v6 + 24);
    v18 = v28;
    v19 = v29;
    v20 = sub_1B7C20AA0();
    v22 = v21;
    *&v24[0] = 0;
    *(&v24[0] + 1) = 0xE000000000000000;
    sub_1B7CFF210();

    strcpy(v24, "ALTER TABLE ");
    BYTE13(v24[0]) = 0;
    HIWORD(v24[0]) = -5120;
    MEMORY[0x1B8CADCA0](v16, v17);
    MEMORY[0x1B8CADCA0](0x4C4F432044444120, 0xEC000000204E4D55);
    MEMORY[0x1B8CADCA0](v18, v19);
    MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
    MEMORY[0x1B8CADCA0](v20, v22);

    v23 = *&v24[0];
    sub_1B7AEBF70(&v26);
    return v23;
  }

  return result;
}

uint64_t sub_1B7C21820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA51FD0, qword_1B7D11D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t StorageInspectionReport.reportLines.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StorageInspectorReportStringBuilder();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v4 = (v3 + 16);
  *(v3 + 24) = 0;
  (*(a2 + 8))();
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t StorageInspectionReport.report.getter(uint64_t a1, uint64_t a2)
{
  StorageInspectionReport.reportLines.getter(a1, a2);
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v2 = sub_1B7CFEA10();

  return v2;
}

uint64_t sub_1B7C219E4(uint64_t a1, uint64_t a2)
{
  if (*(v3 + 3) + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v3;
    v14 = sub_1B7CFEC10();
    v15 = v8;
    MEMORY[0x1B8CADCA0](a1, a2);
    v4 = v14;
    v5 = v15;
    swift_beginAccess();
    v3 = *(v3 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 2) = v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v3 = sub_1B7AF182C(0, *(v3 + 2) + 1, 1, v3);
  *(v2 + 2) = v3;
LABEL_3:
  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = sub_1B7AF182C((v10 > 1), v11 + 1, 1, v3);
  }

  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = v4;
  *(v12 + 5) = v5;
  *(v2 + 2) = v3;
  return swift_endAccess();
}

uint64_t StorageInspectorReportStringBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1B7C21B78(uint64_t a1, uint64_t a2, void (*a3)(BOOL, void, __n128))
{
  sub_1B7AE3F68();

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = v6[2];
  v7 = v6[3];
  v9 = v8 + 1;
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1B7AE3A9C((v7 > 1), v8 + 1, 1, v6);
  }

  v10 = MEMORY[0x1E69E6158];
  v17 = MEMORY[0x1E69E6158];
  v18 = &off_1F2FA8B58;
  *&v16 = a1;
  *(&v16 + 1) = a2;
  v6[2] = v9;
  sub_1B7AE910C(&v16, &v6[5 * v8 + 4]);
  v11 = v6[3];
  v12 = v8 + 2;

  if (v12 > (v11 >> 1))
  {
    v6 = sub_1B7AE3A9C((v11 > 1), v12, 1, v6);
  }

  v17 = v10;
  v18 = &off_1F2FA8B58;
  *&v16 = a1;
  *(&v16 + 1) = a2;
  v6[2] = v12;
  sub_1B7AE910C(&v16, &v6[5 * v9 + 4]);
  v13 = sub_1B7AE3B2C(0xD0000000000000DALL, 0x80000001B7D51500, 0);
  *&v16 = v5;

  sub_1B7AF2C24(v6, v13, &v16, v13);

  v14 = *(v16 + 16);

  (a3)(v14 != 0, 0);
}

void sub_1B7C21F1C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B7CFDEB0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_1B7C21FA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1B7C21FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1B7C22058(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B7C2206C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_1B7C220B4(uint64_t result, int a2, int a3)
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
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7C22108()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EBA50F10);
  sub_1B7AD9040(v0, qword_1EBA50F10);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

Swift::Void __swiftcall IMDPersistenceServiceListener.resume()()
{
  v1 = *(v0 + OBJC_IVAR___IMDPersistenceServiceListener_listener);
  [v1 setDelegate_];
  [v1 resume];
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v0 selector:sel_serviceResetting_ name:@"IMDPersistenceServiceResettingNotification" object:0];
}

Swift::Void __swiftcall IMDPersistenceServiceListener.invalidate()()
{
  v1 = v0;
  if (qword_1EBA50F00 != -1)
  {
    swift_once();
  }

  v2 = sub_1B7CFE420();
  sub_1B7AD9040(v2, qword_1EBA50F10);
  v3 = sub_1B7CFE400();
  v4 = sub_1B7CFEF00();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, v4, "Invalidating listener", v5, 2u);
    MEMORY[0x1B8CB0E70](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR___IMDPersistenceServiceListener_listener);

  [v6 invalidate];
}

id sub_1B7C22370()
{
  v1 = v0;
  if (qword_1EBA50F00 != -1)
  {
    swift_once();
  }

  v2 = sub_1B7CFE420();
  sub_1B7AD9040(v2, qword_1EBA50F10);
  v3 = sub_1B7CFE400();
  v4 = sub_1B7CFEF00();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, v4, "Service is being reset", v5, 2u);
    MEMORY[0x1B8CB0E70](v5, -1, -1);
  }

  return [v1 invalidate];
}

void sub_1B7C22550(char *a1)
{
  v3 = *(v1 + OBJC_IVAR___IMDPersistenceServiceListener_state);
  os_unfair_lock_lock((v3 + 24));
  sub_1B7C22828((v3 + 16), a1, &v19);
  os_unfair_lock_unlock((v3 + 24));
  v4 = v20;
  if (!v20)
  {
    return;
  }

  v5 = v19;
  v6 = v21;
  v7 = qword_1EBA50F00;

  if (v7 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v8 = sub_1B7CFE420();
    sub_1B7AD9040(v8, qword_1EBA50F10);

    v9 = a1;
    v10 = sub_1B7CFE400();
    v11 = sub_1B7CFEEE0();

    if (!os_log_type_enabled(v10, v11))
    {
      break;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 134218242;
    *(v12 + 4) = *(v6 + 16);

    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_1B7AD5000, v10, v11, "Invoking %ld cleanup handler(s) for connection %@", v12, 0x16u);
    sub_1B7C20434(v13);
    MEMORY[0x1B8CB0E70](v13, -1, -1);
    MEMORY[0x1B8CB0E70](v12, -1, -1);

    a1 = *(v6 + 16);
    if (!a1)
    {
      goto LABEL_12;
    }

LABEL_5:

    v15 = 0;
    v16 = v6 + 40;
    while (v15 < *(v4 + 16))
    {
      if (v15 >= *(v6 + 16))
      {
        goto LABEL_16;
      }

      ++v15;
      v17 = *(v16 - 8);

      v17(v18);

      v16 += 16;
      if (a1 == v15)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }

  a1 = *(v6 + 16);
  if (a1)
  {
    goto LABEL_5;
  }

LABEL_12:

  sub_1B7C255F0(v5, v4, v6);
}

void sub_1B7C22828(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1B7C402DC(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v14 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B7CE8BD0();
      v9 = v14;
    }

    v10 = *(v9 + 56) + 24 * v7;
    v11 = *v10;
    v13 = *(v10 + 8);
    sub_1B7CE70EC(v7, v9);
    v12 = v13;
    *a1 = v9;
  }

  else
  {
    v11 = 0;
    v12 = 0uLL;
  }

  *a3 = v11;
  *(a3 + 8) = v12;
}

void sub_1B7C22928(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = [a1 __imdp_persistenceServiceListener];
  if (!v12)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (qword_1EBA50F00 != -1)
  {
    swift_once();
  }

  v13 = sub_1B7CFE420();
  sub_1B7AD9040(v13, qword_1EBA50F10);
  v14 = a1;

  v15 = sub_1B7CFE400();
  v16 = sub_1B7CFEEE0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = a4;
    v19 = a2;
    v20 = swift_slowAlloc();
    v42 = a5;
    v43 = swift_slowAlloc();
    v21 = v6;
    v22 = v43;
    *v17 = 138412546;
    *(v17 + 4) = v14;
    *v20 = v14;
    *(v17 + 12) = 2080;
    v23 = v14;
    *(v17 + 14) = sub_1B7AED1B8(v19, a3, &v43);
    _os_log_impl(&dword_1B7AD5000, v15, v16, "Registering cleanup handler for connection %@ with ID %s", v17, 0x16u);
    sub_1B7C20434(v20);
    v24 = v20;
    a2 = v19;
    a4 = v18;
    MEMORY[0x1B8CB0E70](v24, -1, -1);
    sub_1B7AE9168(v22);
    v25 = v22;
    v6 = v21;
    a5 = v42;
    MEMORY[0x1B8CB0E70](v25, -1, -1);
    MEMORY[0x1B8CB0E70](v17, -1, -1);
  }

  v26 = *(v6 + OBJC_IVAR___IMDPersistenceServiceListener_state);
  os_unfair_lock_lock((v26 + 24));
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(v26 + 16);
  v29 = v43;
  *(v26 + 16) = 0x8000000000000000;
  v31 = sub_1B7C402DC(v14);
  v32 = *(v29 + 16);
  v33 = (v30 & 1) == 0;
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
    __break(1u);
    goto LABEL_17;
  }

  LOBYTE(a4) = v30;
  if (*(v29 + 24) >= v34)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

LABEL_17:
    sub_1B7CE8BD0();
    v29 = v43;
    goto LABEL_11;
  }

  sub_1B7CE4C18(v34, isUniquelyReferenced_nonNull_native);
  v29 = v43;
  v35 = sub_1B7C402DC(v14);
  if ((a4 & 1) != (v36 & 1))
  {
LABEL_19:
    sub_1B7AEE088(0, &qword_1EBA521E8, 0x1E696B0B8);
    sub_1B7CFF740();
    __break(1u);
    return;
  }

  v31 = v35;
LABEL_11:
  *(v26 + 16) = v29;

  v37 = *(v26 + 16);
  if ((a4 & 1) == 0)
  {
    sub_1B7CCAF28(MEMORY[0x1E69E7CC0]);
    sub_1B7CA6728(v31, v14, v38, v39, v40, v37);
    v41 = v14;
  }

  sub_1B7CC7D28(sub_1B7C25694, v27, a2, a3);

  os_unfair_lock_unlock((v26 + 24));
}

void sub_1B7C22D68(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_1EBA50F00 != -1)
  {
    swift_once();
  }

  v8 = sub_1B7CFE420();
  sub_1B7AD9040(v8, qword_1EBA50F10);
  v9 = a1;

  v10 = sub_1B7CFE400();
  v11 = sub_1B7CFEEE0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v15 = v9;
    *(v12 + 14) = sub_1B7AED1B8(a2, a3, &v17);
    _os_log_impl(&dword_1B7AD5000, v10, v11, "Unregistering cleanup handler for connection %@ with ID %s", v12, 0x16u);
    sub_1B7C20434(v13);
    MEMORY[0x1B8CB0E70](v13, -1, -1);
    sub_1B7AE9168(v14);
    MEMORY[0x1B8CB0E70](v14, -1, -1);
    MEMORY[0x1B8CB0E70](v12, -1, -1);
  }

  v16 = *(v4 + OBJC_IVAR___IMDPersistenceServiceListener_state);
  os_unfair_lock_lock((v16 + 24));
  sub_1B7C22F54((v16 + 16), v9, a2, a3);

  os_unfair_lock_unlock((v16 + 24));
}

unint64_t sub_1B7C22F54(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7C2302C(v19, a2);
  if (*(v10 + 8))
  {
    v11 = sub_1B7CC8184(a3, a4, v9);
    sub_1B7AE15D4(v11, v12);
  }

  result = (v8)(v19, 0);
  v14 = *a1;
  if (*(*a1 + 16))
  {
    result = sub_1B7C402DC(a2);
    if ((v15 & 1) != 0 && !*(*(*(v14 + 56) + 24 * result + 16) + 16))
    {
      v16 = sub_1B7CE2F50(a2);
      return sub_1B7C255F0(v16, v17, v18);
    }
  }

  return result;
}

uint64_t (*sub_1B7C2302C(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1B7C232C0(v4, a2);
  return sub_1B7C230A4;
}

void sub_1B7C230A4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void __swiftcall IMDPersistenceServiceListener.init()(IMDPersistenceServiceListener *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_1B7C23204(uint64_t a1, char *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1B7C22550(a2);
  }
}

void (*sub_1B7C232C0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1B7C2361C(v5);
  v5[9] = sub_1B7C233C4(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1B7C23364;
}

void sub_1B7C23364(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1B7C233C4(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 24) = a2;
  *(v8 + 32) = v3;
  v10 = *v3;
  v11 = sub_1B7C402DC(a2);
  *(v9 + 48) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1B7CE8BD0();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1B7CE4C18(v16, a3 & 1);
    v11 = sub_1B7C402DC(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_1B7AEE088(0, &qword_1EBA521E8, 0x1E696B0B8);
    result = sub_1B7CFF740();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 40) = v11;
  if (v17)
  {
    v21 = *(*v4 + 56) + 24 * v11;
    v22 = *v21;
    v23 = *(v21 + 8);
  }

  else
  {
    v22 = 0;
    v23 = 0uLL;
  }

  *v9 = v22;
  *(v9 + 8) = v23;
  return sub_1B7C23530;
}

void sub_1B7C23530(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 48);
  if (v3)
  {
    v6 = v1[5];
    v7 = *v1[4];
    if (v5)
    {
      v8 = (v7[7] + 24 * v6);
      *v8 = v2;
      v8[1] = v3;
      v8[2] = v4;
    }

    else
    {
      v11 = v1[3];
      sub_1B7CA6728(v6, v11, v2, v3, v4, v7);
      v12 = v11;
    }
  }

  else if ((*a1)[6])
  {
    v9 = v1[5];
    v10 = *v1[4];

    sub_1B7CE70EC(v9, v10);
  }

  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  sub_1B7C25640(v2, v3, v4);
  sub_1B7C255F0(v13, v14, v15);

  free(v1);
}

uint64_t (*sub_1B7C2361C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B7C23644;
}

unint64_t sub_1B7C23650(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52260, &qword_1B7D0B3B8);
    v3 = sub_1B7CFF380();
    for (i = a1 + 32; ; i += 72)
    {
      sub_1B7C2569C(i, &v15, &qword_1EBA52268, &qword_1B7D0B3C0);
      v5 = v15;
      result = sub_1B7AE1160(v15);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + (result << 6));
      v9 = v16;
      v10 = v17;
      v11 = v19;
      v8[2] = v18;
      v8[3] = v11;
      *v8 = v9;
      v8[1] = v10;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7C237A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA521F8, &qword_1B7D0B358);
    v3 = sub_1B7CFF380();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7C2569C(v4, &v17, &qword_1EBA52200, &qword_1B7D0B360);
      v5 = v17;
      v6 = v18;
      result = sub_1B7AE11D0(v17, v18);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + (result << 6));
      v11 = v19;
      v12 = v20;
      v13 = v22;
      v10[2] = v21;
      v10[3] = v13;
      *v10 = v11;
      v10[1] = v12;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      v4 += 80;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7C238DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52210, &qword_1B7D0B370);
    v3 = sub_1B7CFF380();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1B7C400B4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7C239C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA521A8, &qword_1B7D0B328);
    v3 = sub_1B7CFF380();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7C2569C(v4, &v13, &qword_1EBA521B0, &unk_1B7D0A710);
      v5 = v13;
      v6 = v14;
      result = sub_1B7AE11D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B7AE910C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7C23AFC(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA52160, &qword_1B7D0AA60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1B7C107FC(&qword_1EBA52168, &qword_1B7D0B2E8);
    v7 = sub_1B7CFF380();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B7C2569C(v9, v5, &qword_1EBA52160, &qword_1B7D0AA60);
      result = sub_1B7C40208(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1B7CFDD90();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 24 * v13;
      v17 = *(v8 + 8);
      *v16 = *v8;
      *(v16 + 8) = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7C23CF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52238, &qword_1B7D0B390);
    v3 = sub_1B7CFF380();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1B7AE1160(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7C23DD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&unk_1EBA52270, &qword_1B7D0B3C8);
    v3 = sub_1B7CFF380();

    for (i = (a1 + 56); ; i += 4)
    {
      v6 = *(i - 3);
      v5 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v6;
      result = sub_1B7C402DC(v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v9;
      v12 = (v3[7] + 24 * result);
      *v12 = v5;
      v12[1] = v7;
      v12[2] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7C23EF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1B7C107FC(&qword_1EBA52250, &qword_1B7D0B3A8);
  v3 = sub_1B7CFF380();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v20 = *(a1 + 56);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  result = sub_1B7C41954();
  v10 = v20;
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v13 = v3[7] + 48 * result;
    *v13 = v5;
    *(v13 + 8) = v6;
    *(v13 + 16) = v10;
    *(v13 + 32) = v7;
    *(v13 + 40) = v8;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 7;
    v4 = *(v12 - 6);
    v5 = *(v12 - 5);
    v6 = *(v12 - 4);
    v21 = *(v12 - 3);
    v18 = *(v12 - 1);
    v8 = *v12;

    result = sub_1B7C41954();
    v12 = v17;
    v7 = v18;
    v10 = v21;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B7C2404C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1B7C107FC(&qword_1EBA52258, &qword_1B7D0B3B0);
  v3 = sub_1B7CFF380();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1B7C41954();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1B7C41954();
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7C24154(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52248, &qword_1B7D0B3A0);
    v3 = sub_1B7CFF380();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1B7C41954();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7C24230(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA521D0, &qword_1B7D0B348);
    v3 = sub_1B7CFF380();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7C2569C(v4, v13, &qword_1EBA521D8, &qword_1B7D0B350);
      result = sub_1B7C40388(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1B7C255E0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7C2436C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52240, &qword_1B7D0B398);
    v3 = sub_1B7CFF380();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B7AE11D0(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7C24490(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52228, &qword_1B7D0B388);
    v3 = sub_1B7CFF380();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7C2569C(v4, v13, &qword_1EBA52230, &unk_1B7D10DA0);
      result = sub_1B7C40388(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + result) = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7C245B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52220, &qword_1B7D0B380);
    v3 = sub_1B7CFF380();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B7AE11D0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7C246B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52218, &qword_1B7D0B378);
    v3 = sub_1B7CFF380();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_1B7C400B4(v5);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7C247C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1B7C107FC(a2, a3);
    v5 = sub_1B7CFF380();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1B7AE11D0(v7, v8);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7C248BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA521C8, &qword_1B7D0B340);
    v3 = sub_1B7CFF380();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B7AE11D0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7C249D0(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA52150, &qword_1B7D0B2D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1B7C107FC(&qword_1EBA52158, &qword_1B7D0B2E0);
    v7 = sub_1B7CFF380();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B7C2569C(v9, v5, &qword_1EBA52150, &qword_1B7D0B2D8);
      result = sub_1B7C403CC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1B7CFF330();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_1B7C255E0(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7C24BE0(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA52138, &qword_1B7D0B2C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1B7C107FC(&qword_1EBA52140, &qword_1B7D0B2C8);
    v7 = sub_1B7CFF380();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B7C2569C(v9, v5, &qword_1EBA52138, &qword_1B7D0B2C0);
      result = sub_1B7C40430(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1B7CFE7C0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_1B7CFE6C0();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B7C24E24(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = sub_1B7C107FC(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_1B7C107FC(a4, a5);
    v14 = sub_1B7CFF380();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_1B7C2569C(v16, v12, a2, v27);
      result = sub_1B7C40430(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_1B7CFE7C0();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1B7C2502C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = a1[2];
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1B7C107FC(a2, a3);
  v7 = sub_1B7CFF380();
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a4(v8);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v13 = v11;
  result = v10;
  v15 = a1 + 9;
  while (1)
  {
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    *(v7[6] + 8 * v13) = v8;
    v16 = (v7[7] + 16 * v13);
    *v16 = v9;
    v16[1] = result;
    v17 = v7[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v7[2] = v19;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v20 = v15 + 3;
    v8 = *(v15 - 2);
    v9 = *(v15 - 1);
    v21 = *v15;

    v13 = a4(v8);
    v15 = v20;
    result = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C2514C(void *a1)
{
  v2 = v1;
  [a1 auditToken];
  v4 = __IMDPersistenceCheckAnyEntitlementsForInitialConnection(&v26);
  if (v4)
  {
    if (qword_1EBA50F00 != -1)
    {
      swift_once();
    }

    v5 = sub_1B7CFE420();
    sub_1B7AD9040(v5, qword_1EBA50F10);
    v6 = a1;
    v7 = sub_1B7CFE400();
    v8 = sub_1B7CFEED0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = [v6 processIdentifier];

      _os_log_impl(&dword_1B7AD5000, v7, v8, "Accepting connection from PID %d", v9, 8u);
      MEMORY[0x1B8CB0E70](v9, -1, -1);
    }

    else
    {

      v7 = v6;
    }

    v15 = [objc_allocWithZone(IMDPersistenceService) initWithListener_];
    [v6 setExportedObject:v15];

    v16 = sub_1B7CE04F8();
    [v6 setExportedInterface:v16];

    [v6 _setQueue:*(v2 + OBJC_IVAR___IMDPersistenceServiceListener_queue)];
    [v6 __imdp_setPersistenceServiceListener:v2];
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v6;
    v30 = sub_1B7C25764;
    v31 = v18;
    v26 = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1B7AE14D0;
    v29 = &unk_1F2F9F820;
    v19 = _Block_copy(&v26);
    v20 = v6;

    [v20 setInterruptionHandler:v19];
    _Block_release(v19);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v20;
    v30 = sub_1B7C25744;
    v31 = v22;
    v26 = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1B7AE14D0;
    v29 = &unk_1F2FA3710;
    v23 = _Block_copy(&v26);
    v24 = v20;

    [v24 setInvalidationHandler:v23];
    _Block_release(v23);
    [v24 resume];
  }

  else
  {
    if (qword_1EBA50F00 != -1)
    {
      swift_once();
    }

    v10 = sub_1B7CFE420();
    sub_1B7AD9040(v10, qword_1EBA50F10);
    v11 = a1;
    v12 = sub_1B7CFE400();
    v13 = sub_1B7CFEED0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = [v11 processIdentifier];

      _os_log_impl(&dword_1B7AD5000, v12, v13, "Connection from %d has no IMDP entitlements, denying connection", v14, 8u);
      MEMORY[0x1B8CB0E70](v14, -1, -1);
    }

    else
    {
    }
  }

  return v4;
}

_OWORD *sub_1B7C255E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B7C255F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return v3;
}

double sub_1B7C25640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B7C2569C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B7C107FC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B7C25704()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1B7C25780()
{
  result = qword_1EBA52280;
  if (!qword_1EBA52280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52280);
  }

  return result;
}

uint64_t sub_1B7C257D4()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](v1);
  return sub_1B7CFF800();
}

uint64_t sub_1B7C2581C(uint64_t a1)
{
  v2 = *v1;
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](v2);
  return sub_1B7CFF800();
}

unint64_t sub_1B7C25864()
{
  result = qword_1EBA52288;
  if (!qword_1EBA52288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52288);
  }

  return result;
}

uint64_t sub_1B7C258B8()
{
  v1 = *v0;
  v2 = 0x4449776F72;
  v3 = 0x6843746E65726170;
  if (v1 != 6)
  {
    v3 = 0x656D686361747461;
  }

  v4 = 0x6574656C65447369;
  if (v1 != 4)
  {
    v4 = 0x65766F6365527369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4449656C646E6168;
  if (v1 != 2)
  {
    v5 = 0x6E6148726568746FLL;
  }

  if (*v0)
  {
    v2 = 1684632935;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B7C259D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7C26D78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7C25A10(uint64_t a1)
{
  v2 = sub_1B7C27548();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C25A4C(uint64_t a1)
{
  v2 = sub_1B7C27548();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7C25A88(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA522C8, &qword_1B7D0B5A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C27548();
  sub_1B7CFF830();
  LOBYTE(v11) = 0;
  sub_1B7CFF520();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1B7CFF4E0();
    LOBYTE(v11) = 2;
    sub_1B7CFF4A0();
    LOBYTE(v11) = 3;
    sub_1B7CFF4A0();
    LOBYTE(v11) = 4;
    sub_1B7CFF4B0();
    LOBYTE(v11) = 5;
    sub_1B7CFF4B0();
    LOBYTE(v11) = 6;
    sub_1B7CFF4D0();
    v11 = *(v3 + 80);
    v10[7] = 7;
    sub_1B7C107FC(&qword_1EBA522B0, &qword_1B7D0B598);
    sub_1B7C27604(&qword_1EBA522D0, &qword_1EBA522D8, &unk_1B7D0DD94, MEMORY[0x1E69E6300]);
    sub_1B7CFF4C0();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_1B7C25D58@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1B7C27024(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1B7C25DCC()
{
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000026, 0x80000001B7D517A0);
  v1 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v1);

  MEMORY[0x1B8CADCA0](0x203A64697567202CLL, 0xE800000000000000);
  MEMORY[0x1B8CADCA0](*(v0 + 8), *(v0 + 16));
  MEMORY[0x1B8CADCA0](0x656C646E6168202CLL, 0xEC000000203A4449);
  if (*(v0 + 32))
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1B8CADCA0](v2, v3);

  MEMORY[0x1B8CADCA0](0x48726568746F202CLL, 0xEF203A656C646E61);
  if (*(v0 + 48))
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x1B8CADCA0](v4, v5);

  MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D517D0);
  v6 = 7104878;
  v7 = 0xE300000000000000;
  if ((*(v0 + 72) & 1) == 0)
  {
    sub_1B7C2617C();
    v6 = sub_1B7CFF090();
    v7 = v8;
  }

  MEMORY[0x1B8CADCA0](v6, v7);

  MEMORY[0x1B8CADCA0](0x656C65447369202CLL, 0xED0000203A646574);
  v9 = *(v0 + 56);
  if (v9)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  if (v9 == 2)
  {
    v12 = 7104878;
  }

  else
  {
    v12 = v10;
  }

  if (v9 == 2)
  {
    v13 = 0xE300000000000000;
  }

  else
  {
    v13 = v11;
  }

  MEMORY[0x1B8CADCA0](v12, v13);

  MEMORY[0x1B8CADCA0](0xD000000000000011, 0x80000001B7D517F0);
  v14 = *(v0 + 57);
  if (v14)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  if (v14 == 2)
  {
    v17 = 7104878;
  }

  else
  {
    v17 = v15;
  }

  if (v14 == 2)
  {
    v18 = 0xE300000000000000;
  }

  else
  {
    v18 = v16;
  }

  MEMORY[0x1B8CADCA0](v17, v18);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1B7C260C4()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE930](v1);
  return sub_1B7CFF800();
}

uint64_t sub_1B7C26138(uint64_t a1)
{
  v2 = *v1;
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE930](v2);
  return sub_1B7CFF800();
}

unint64_t sub_1B7C2617C()
{
  result = qword_1EBA52290;
  if (!qword_1EBA52290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52290);
  }

  return result;
}

uint64_t sub_1B7C261D0@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, sqlite3_int64 a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v13[4] = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64((a1 + 48), a2);
  v13[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v13);
  v10 = v13[0];
  swift_endAccess();
  if (v10)
  {
LABEL_8:
    v10;
    return swift_willThrow();
  }

  if (a3 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64((a1 + 48), a3);
  v13[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v13);
  v10 = v13[0];
  swift_endAccess();
  if (v10)
  {
    goto LABEL_8;
  }

  v11 = *(a4 + 24);
  if (v11 < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  if (v11 > 0x7FFFFFFF)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt((a1 + 48), v11);
  v13[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v13);
  v10 = v13[0];
  swift_endAccess();
  if (v10)
  {
    goto LABEL_8;
  }

  result = SqlOperation.uint64s(forColumnName:)(0x5F6567617373656DuLL, 0xEA00000000006469);
  *a5 = result;
  return result;
}

uint64_t sub_1B7C26374(void *a1)
{
  v3 = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = *a1;
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000018, 0x80000001B7D51850);
  v6 = *(v1 + 112);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);

  MEMORY[0x1B8CADCA0](v7, v8);

  MEMORY[0x1B8CADCA0](0xD00000000000002CLL, 0x80000001B7D51870);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v1;

  v10 = sub_1B7CD7370(0, 0xE000000000000000, sub_1B7C26BF4, v9);
  if (v3)
  {

    return v3;
  }

  v3 = v10;

  if (!v3)
  {
LABEL_10:

    return MEMORY[0x1E69E7CC0];
  }

  v11 = *(v3 + 16);
  if (!v11)
  {

    goto LABEL_10;
  }

  v12 = *(v3 + 24 * v11 + 8);

  if (v12 != -1)
  {
    *a1 = v12 + 1;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C2657C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (v8 < 0)
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64((a1 + 48), v8);
  *&v33 = 0;
  IMDSqlOperationGetError(a1 + 16, &v33);
  v9 = v33;
  swift_endAccess();
  if (v9)
  {
LABEL_6:
    v9;
    return swift_willThrow();
  }

  v10 = *(a3 + 24);
  if (v10 < 0xFFFFFFFF80000000)
  {
    goto LABEL_35;
  }

  if (v10 > 0x7FFFFFFF)
  {
    goto LABEL_36;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt((a1 + 48), v10);
  *&v33 = 0;
  IMDSqlOperationGetError(a1 + 16, &v33);
  v9 = v33;
  swift_endAccess();
  if (v9)
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(a1 + 16);
  swift_endAccess();
  if (!HasRows)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_32;
  }

  type metadata accessor for SqlOperation.Row();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v31 = a4;
  do
  {
    v32 = v14;
    while (1)
    {
      inited = swift_initStackObject();
      v17 = sub_1B7C23650(v13);
      *(inited + 16) = a1;
      *(inited + 24) = v17;
      SqlOperation.Row.column(forColumnName:)(0x64697567uLL, 0xE400000000000000, &v33);
      if (*(&v33 + 1))
      {
        v37 = v33;
        v38 = v34;
        v39 = v35;
        v40 = v36;
        v18 = v34;
        sub_1B7C26C78(&v37);
        v19 = SqlOperation.Row.string(forColumnIndex:)(v18);
        object = v19.value._object;
        v21 = v19.value._object ? v19.value._countAndFlagsBits : 0;
      }

      else
      {
        sub_1B7C26C10(&v33);
        v21 = 0;
        object = 0;
      }

      SqlOperation.Row.column(forColumnName:)(0x4449574F52uLL, 0xE500000000000000, &v33);
      if (*(&v33 + 1))
      {
        break;
      }

      sub_1B7C26C10(&v33);
LABEL_22:
      if (object)
      {
      }

LABEL_10:
      swift_setDeallocating();

      swift_beginAccess();

      v15 = IMDSqlOperationHasRows(a1 + 16);
      swift_endAccess();
      if (!v15)
      {
        a4 = v31;
        v14 = v32;
        goto LABEL_32;
      }
    }

    v37 = v33;
    v38 = v34;
    v39 = v35;
    v40 = v36;
    v22 = v34;
    sub_1B7C26C78(&v37);
    v42 = SqlOperation.Row.uint64(forColumnIndex:)(v22);
    if (v42.is_nil)
    {
      goto LABEL_22;
    }

    value = v42.value;
    if (v42.value == -1)
    {
      goto LABEL_34;
    }

    *(a2 + 16) = v42.value + 1;
    if (!object)
    {
      goto LABEL_10;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_1B7CA22D0(0, v32[2] + 1, 1, v32);
    }

    v26 = v32[2];
    v25 = v32[3];
    v29 = v26 + 1;
    v30 = v26;
    if (v26 >= v25 >> 1)
    {
      v32 = sub_1B7CA22D0((v25 > 1), v26 + 1, 1, v32);
    }

    v32[2] = v29;
    v27 = &v32[3 * v30];
    v27[4] = value;
    v27[5] = v21;
    v14 = v32;
    v27[6] = object;
    swift_beginAccess();

    v28 = IMDSqlOperationHasRows(a1 + 16);
    swift_endAccess();
    a4 = v31;
  }

  while (v28);
LABEL_32:

  *a4 = v14;
  return result;
}

uint64_t sub_1B7C26978(uint64_t a1)
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();

  v3 = *(v1 + 64);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  MEMORY[0x1B8CADCA0](v4, v5);

  MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D51830);
  sub_1B7AF7F10(0x3F, 0xE100000000000000, *(a1 + 16));
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v6 = sub_1B7CFEA10();
  v8 = v7;

  MEMORY[0x1B8CADCA0](v6, v8);

  MEMORY[0x1B8CADCA0](15138, 0xE200000000000000);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;

  v10 = sub_1B7CD7370(0xD000000000000012, 0x80000001B7D51810, sub_1B7C26BD8, v9);

  if (v10)
  {
    return v10;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

void sub_1B7C26B80(Swift::OpaquePointer a1@<0:X1>, uint64_t *a2@<X8>)
{
  SqlOperation.bind(_:)(a1);
  if (!v3)
  {
    *a2 = SqlOperation.uint64s(forColumnName:)(0x4449574F52uLL, 0xE500000000000000);
  }
}

uint64_t sub_1B7C26C10(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA52298, &unk_1B7D10570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C26CCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7C26D14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7C26D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C646E6168 && a2 == 0xE800000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6148726568746FLL && a2 == 0xEB00000000656C64 || (sub_1B7CFF590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574656C65447369 && a2 == 0xE900000000000064 || (sub_1B7CFF590() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65766F6365527369 && a2 == 0xED0000656C626172 || (sub_1B7CFF590() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6843746E65726170 && a2 == 0xEC00000044497461 || (sub_1B7CFF590() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEB0000000073746ELL)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B7CFF590();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void sub_1B7C27024(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B7C107FC(&qword_1EBA522A0, &qword_1B7D0B590);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C27548();
  sub_1B7CFF820();
  if (v2)
  {
    sub_1B7AE9168(a1);
  }

  else
  {
    LOBYTE(v39[0]) = 0;
    v9 = sub_1B7CFF460();
    LOBYTE(v39[0]) = 1;
    v30 = sub_1B7CFF420();
    v32 = v10;
    LOBYTE(v39[0]) = 2;
    v11 = sub_1B7CFF3E0();
    v31 = v12;
    v28 = v11;
    LOBYTE(v39[0]) = 3;
    v27 = sub_1B7CFF3E0();
    v29 = v13;
    LOBYTE(v39[0]) = 4;
    v26 = sub_1B7CFF3F0();
    LOBYTE(v39[0]) = 5;
    v25 = sub_1B7CFF3F0();
    LOBYTE(v39[0]) = 6;
    v24 = sub_1B7CFF410();
    v46 = v14 & 1;
    sub_1B7C107FC(&qword_1EBA522B0, &qword_1B7D0B598);
    v47 = 7;
    sub_1B7C27604(&qword_1EBA522B8, &qword_1EBA522C0, &unk_1B7D0DDBC, MEMORY[0x1E69E6330]);
    sub_1B7CFF400();
    (*(v6 + 8))(v8, v5);
    v23 = v45;
    *&v33 = v9;
    v15 = v30;
    *(&v33 + 1) = v30;
    v16 = v32;
    *&v34 = v32;
    *(&v34 + 1) = v28;
    v17 = v31;
    *&v35 = v31;
    *(&v35 + 1) = v27;
    v18 = v29;
    *&v36 = v29;
    BYTE8(v36) = v26;
    BYTE9(v36) = v25;
    *&v37 = v24;
    v19 = v46;
    BYTE8(v37) = v46;
    v38 = v45;
    sub_1B7C2759C(&v33, v39);
    sub_1B7AE9168(a1);
    v39[0] = v9;
    v39[1] = v15;
    v39[2] = v16;
    v39[3] = v28;
    v39[4] = v17;
    v39[5] = v27;
    v39[6] = v18;
    v40 = v26;
    v41 = v25;
    v42 = v24;
    v43 = v19;
    v44 = v23;
    sub_1B7C275D4(v39);
    v20 = v36;
    *(a2 + 32) = v35;
    *(a2 + 48) = v20;
    *(a2 + 64) = v37;
    *(a2 + 80) = v38;
    v21 = v34;
    *a2 = v33;
    *(a2 + 16) = v21;
  }
}

unint64_t sub_1B7C27548()
{
  result = qword_1EBA522A8;
  if (!qword_1EBA522A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA522A8);
  }

  return result;
}

uint64_t sub_1B7C27604(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA522B0, &qword_1B7D0B598);
    sub_1B7C2768C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B7C2768C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StorageInspectionAttachmentRecord(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorageInspectionMessageRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorageInspectionMessageRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7C27824()
{
  result = qword_1EBA522E0;
  if (!qword_1EBA522E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA522E0);
  }

  return result;
}

unint64_t sub_1B7C2787C()
{
  result = qword_1EBA522E8;
  if (!qword_1EBA522E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA522E8);
  }

  return result;
}

unint64_t sub_1B7C278D4()
{
  result = qword_1EBA522F0;
  if (!qword_1EBA522F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA522F0);
  }

  return result;
}

id IMDSyncChatSliceRecord.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = v1;
  sub_1B7AEE088(0, &unk_1EDBE59A0, 0x1E696AEC0);
  v4 = sub_1B7CFEFB0();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7CFEFB0();
    v7 = [v2 initWithServiceName:v5 ckRecordID:v6];
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

void sub_1B7C27D38(void *a1)
{
  v3 = [v1 serviceName];
  if (!v3)
  {
    sub_1B7CFEA60();
    v3 = sub_1B7CFEA30();
  }

  v4 = sub_1B7CFEA30();
  [a1 encodeObject:v3 forKey:v4];

  v5 = [v1 ckRecordID];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1B7CFEA30();
    [a1 encodeObject:v6 forKey:v7];
  }
}

id IMDSyncChatSliceRecord.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1B7C27FB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord, &unk_1B7D0BA14);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  sub_1B7CFE770();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B7C280C0()
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord, &unk_1B7D0BA14);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7C281C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  sub_1B7CFE790();
}

uint64_t sub_1B7C28278(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord, &unk_1B7D0BA14);
  sub_1B7CFE1D0();
}

double sub_1B7C2837C@<D0>(void *a1@<X0>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t (*a5)(uint64_t, uint64_t, void)@<X6>, _OWORD *a6@<X8>)
{
  *&v11 = *a1;
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord, &unk_1B7D0BA14);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  a5(a3, a4, MEMORY[0x1E69E7C88]);
  sub_1B7CFE770();

  result = *&v11;
  *a6 = v11;
  return result;
}

uint64_t sub_1B7C284F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void))
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord, &unk_1B7D0BA14);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  a4(a2, a3, MEMORY[0x1E69E7C88]);
  sub_1B7CFE770();

  return v4;
}

uint64_t sub_1B7C28628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void))
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  a7(a5, a6, MEMORY[0x1E69E7C70]);
  sub_1B7CFE790();
}

uint64_t sub_1B7C28710@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord, &unk_1B7D0BA14);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  sub_1B7CFE770();

  *a3 = v5;
  return result;
}

uint64_t sub_1B7C28818(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord, &unk_1B7D0BA14);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C288E8(uint64_t a1)
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord, &unk_1B7D0BA14);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  sub_1B7CFE770();

  return v1;
}

uint64_t sub_1B7C289E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  sub_1B7CFE790();
}

uint64_t sub_1B7C28BE4@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord, &unk_1B7D0BA14);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  sub_1B7C2D7E4(&qword_1EBA523F8, MEMORY[0x1E69E7390], MEMORY[0x1E69E7C88]);
  sub_1B7CFE770();

  *a3 = v5;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_1B7C28D1C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord, &unk_1B7D0BA14);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C28DF4(uint64_t a1)
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord, &unk_1B7D0BA14);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  sub_1B7C2D7E4(&qword_1EBA523F8, MEMORY[0x1E69E7390], MEMORY[0x1E69E7C88]);
  sub_1B7CFE770();

  return v1;
}

uint64_t sub_1B7C28F1C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  sub_1B7C2D7E4(&qword_1EBA523E8, MEMORY[0x1E69E7368], MEMORY[0x1E69E7C70]);
  sub_1B7CFE790();
}

uint64_t sub_1B7C29014@<X0>(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord, &unk_1B7D0BA14);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  sub_1B7CFE770();

  *a3 = v5;
  return result;
}

uint64_t sub_1B7C2911C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord, &unk_1B7D0BA14);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C291F0(uint64_t a1)
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord, &unk_1B7D0BA14);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  sub_1B7CFE770();

  return v2;
}

uint64_t sub_1B7C292EC(uint64_t a1, char a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  sub_1B7CFE790();
}

uint64_t sub_1B7C299CC(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for MessageRecord(0);
  *(v1 + 80) = sub_1B7C107FC(&unk_1EBA52428, &qword_1B7D0CA10);
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  *(v1 + 88) = swift_getOpaqueTypeConformance2();
  sub_1B7C1A14C((v1 + 56));
  sub_1B7CFE720();
  *(v1 + 16) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 17) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 18) = 257;
  *(v1 + 20) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 21) = 257;
  *(v1 + 23) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 24) = 257;
  *(v1 + 26) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 27) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 28) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 29) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 30) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 31) = 1;
  *(v1 + 32) = 1;
  *(v1 + 33) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 34) = 1;
  *(v1 + 35) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 36) = 1;
  *(v1 + 37) = 1;
  *(v1 + 38) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 39) = 1;
  *(v1 + 40) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 41) = 1;
  *(v1 + 42) = 1;
  *(v1 + 43) = 1;
  *(v1 + 44) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 45) = 1;
  *(v1 + 46) = 1;
  *(v1 + 47) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 48) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 49) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 50) = 1;
  *(v1 + 51) = 1;
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 52) = 1;
  sub_1B7CFE1F0();
  *(v1 + 45) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  swift_beginAccess();
  sub_1B7AE9168((v1 + 56));
  sub_1B7AE910C(a1, v1 + 56);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B7C2AB38()
{
  sub_1B7AE9168((v0 + 56));
  v1 = OBJC_IVAR____TtC14IMDPersistence13MessageRecord___observationRegistrar;
  v2 = sub_1B7CFE200();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C2ABE4(uint64_t a1)
{
  result = sub_1B7CFE200();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1B7C2ADB0(__int128 *a1)
{
  type metadata accessor for MessageRecord(0);
  v2 = swift_allocObject();
  sub_1B7C299CC(a1);
  return v2;
}

uint64_t sub_1B7C2AE3C(__int128 *a1)
{
  swift_beginAccess();
  sub_1B7AE9168((v1 + 56));
  sub_1B7AE910C(a1, v1 + 56);
  return swift_endAccess();
}

void (*sub_1B7C2AE94(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1B7AE90A8(v1 + 56, v4);
  return sub_1B7C2AF24;
}

void sub_1B7C2AF24(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1B7AE90A8(*a1, v2 + 40);
    swift_beginAccess();
    sub_1B7AE9168((v3 + 56));
    sub_1B7AE910C((v2 + 40), v3 + 56);
    swift_endAccess();
    sub_1B7AE9168(v2);
  }

  else
  {
    swift_beginAccess();
    sub_1B7AE9168((v3 + 56));
    sub_1B7AE910C(v2, v3 + 56);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1B7C2AFE0()
{
  sub_1B7CFF7C0();
  type metadata accessor for MessageRecord(0);
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7C2B0C4(uint64_t a1, uint64_t a2)
{
  sub_1B7CFF7C0();
  swift_getWitnessTable();
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7C2B12C()
{
  type metadata accessor for MessageRecord(0);
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  return sub_1B7CFE740();
}

uint64_t sub_1B7C2B1A8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1B7C2B3C4(uint64_t a1)
{
  result = sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord, &unk_1B7D0BAD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7C2B41C()
{
  sub_1B7C107FC(&qword_1EBA52050, &qword_1B7D0AF40);
  sub_1B7CFE850();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7D0B6C0;
  swift_getKeyPath();
  sub_1B7C107FC(&qword_1EBA523D0, &qword_1B7D0BB90);
  sub_1B7CFE910();
  *(swift_allocObject() + 16) = xmmword_1B7D0A7B0;
  sub_1B7CFE900();
  sub_1B7CFE940();
  swift_allocObject();
  sub_1B7CFE950();
  sub_1B7C2D4BC(&qword_1EDBE3A00, MEMORY[0x1E697BD30], MEMORY[0x1E697BD28]);
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  swift_allocObject();
  sub_1B7CFE950();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  swift_allocObject();
  sub_1B7CFE950();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  swift_allocObject();
  sub_1B7CFE950();
  sub_1B7CFE840();
  return v1;
}

uint64_t sub_1B7C2D4BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7C2D7E4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA523F0, &unk_1B7D0CA00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C2DCBC()
{
  result = qword_1EBA52410;
  if (!qword_1EBA52410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52410);
  }

  return result;
}

uint64_t sub_1B7C2DD10(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA52408, qword_1B7D13650);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C2DD88()
{
  result = qword_1EBA52420;
  if (!qword_1EBA52420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52420);
  }

  return result;
}

void sub_1B7C2E8B4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{

  v10 = sub_1B7AE8874(a1, a2);
  v12 = v11;

  v17 = a3;
  v20 = sub_1B7AE8874(a3, a4);
  v14 = v13;
  v23 = 0;
  MEMORY[0x1B8CADCA0](v10, v12);
  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  swift_bridgeObjectRetain_n();

  v15 = sub_1B7AE3B2C(0xD000000000000012, 0x80000001B7D50BA0, 1);
  if (v21)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v16 = v15;

    sub_1B7C94814(MEMORY[0x1E69E7CC0], v16, v20, v14, &v23);

    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
    if ((v23 & 1) == 0)
    {
      sub_1B7CFF210();

      strcpy(v22, "ALTER TABLE ");
      BYTE5(v22[1]) = 0;
      HIWORD(v22[1]) = -5120;
      MEMORY[0x1B8CADCA0](a1, a2);
      MEMORY[0x1B8CADCA0](0x4C4F432044444120, 0xEC000000204E4D55);
      MEMORY[0x1B8CADCA0](v17, a4);
      MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
      MEMORY[0x1B8CADCA0](a5, a6);
      sub_1B7AE3B2C(v22[0], v22[1], 1);

      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
    }
  }
}

void sub_1B7C2EBBC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[6];
  if (*(v6 + 16) && (v7 = v3, v9 = sub_1B7AE11D0(a2, a3), (v10 & 1) != 0))
  {
    v20 = a3;
    v11 = (*(v6 + 56) + 16 * v9);
    v13 = *v11;
    v12 = v11[1];
    v15 = a1[2];
    v14 = a1[3];
    v21 = 0;

    MEMORY[0x1B8CADCA0](v15, v14);
    MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
    swift_bridgeObjectRetain_n();

    v16 = sub_1B7AE3B2C(0xD000000000000012, 0x80000001B7D50BA0, 1);
    if (v7)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v17 = v16;

      sub_1B7C94814(MEMORY[0x1E69E7CC0], v17, v13, v12, &v21);
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      if ((v21 & 1) == 0)
      {
        v18 = sub_1B7C215A8(a1, a2, v20);
        sub_1B7AE3B2C(v18, v19, 1);

        sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
      }
    }
  }

  else
  {
    sub_1B7CFF210();

    MEMORY[0x1B8CADCA0](a2, a3);
    MEMORY[0x1B8CADCA0](0x65646F6D206E6F20, 0xE90000000000006CLL);
    sub_1B7CFF340();
    __break(1u);
  }
}

void sub_1B7C2EF3C(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  if (a1)
  {
    v9 = *(a1 + 8);
    if (v9)
    {
      v10 = *(v6 + 28);
      v11 = sub_1B7CFE420();
      (*(*(v11 - 8) + 56))(&v8[v10], 1, 1, v11);
      *v8 = 1;
      *(v8 + 1) = 0;
      *(v8 + 8) = 1;
      sub_1B7AE3EA4(v8, v4);
      type metadata accessor for SQLConnection(0);
      v12 = swift_allocObject();
      v13 = (v12 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
      v14 = MEMORY[0x1E69E7CC8];
      *v13 = MEMORY[0x1E69E7CC8];
      v13[1] = v14;
      v13[2] = 32;
      *(v12 + 16) = v9;
      *(v12 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
      sub_1B7AE3EA4(v4, v12 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
      if (v4[2])
      {
LABEL_8:
        sub_1B7AE3F08(v4);
        v16[1] = v12;
        sub_1B7C17B04();

        sub_1B7AE3F08(v8);
        return;
      }

      v15 = v4[1] * 1000.0;
      if (COERCE__INT64(fabs(v15)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v15 > -2147483650.0)
      {
        if (v15 < 2147483650.0)
        {
          sqlite3_busy_timeout(v9, v15);
          goto LABEL_8;
        }

LABEL_12:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_12;
    }
  }
}

uint64_t sub_1B7C2F148(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1B7C31188(0, v1, 0);
    v4 = a1 + 32;
    v2 = v10;
    do
    {
      sub_1B7C107FC(&qword_1EBA524C0, &qword_1B7D0CAA8);
      sub_1B7C107FC(&qword_1EBA524C8, &qword_1B7D0CAB0);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1B7C31188((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B7C2F27C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1B7C31268(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {

      sub_1B7C107FC(&qword_1EBA52478, &unk_1B7D0D930);
      sub_1B7C107FC(&qword_1EBA52560, &qword_1B7D0CB20);
      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B7C31268((v5 > 1), v6 + 1, 1);
      }

      v4 += 24;
      *(v12 + 16) = v6 + 1;
      v7 = (v12 + 24 * v6);
      v7[4] = v9;
      v7[5] = v10;
      v7[6] = v11;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B7C2F3B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B7AF5760(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 32);
    v5 = MEMORY[0x1E69E6530];
    do
    {
      v7 = *v4++;
      v6 = v7;
      v14 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1B7AF5760((v8 > 1), v9 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = &off_1F2FA89F8;
      *&v11 = v6;
      *(v2 + 16) = v9 + 1;
      sub_1B7AE910C(&v11, v2 + 40 * v9 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B7C2F4BC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1B7CFF2C0();
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      a2(v7);
      sub_1B7CFF290();
      sub_1B7CFF2D0();
      sub_1B7CFF2E0();
      sub_1B7CFF2A0();
      --v3;
    }

    while (v3);
    return v8;
  }

  return result;
}

void IMDPersistentTaskQueries.loadRecentTasks(withFlags:groups:lanes:excludingReasons:limit:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v10, 0);
    v11 = aBlock[0];
    v13 = (a1 + 32);
    v14 = *(aBlock[0] + 16);
    do
    {
      v16 = *v13++;
      v15 = v16;
      aBlock[0] = v11;
      v17 = *(v11 + 24);
      if (v14 >= v17 >> 1)
      {
        sub_1B7C312D8((v17 > 1), v14 + 1, 1);
        v11 = aBlock[0];
      }

      *(v11 + 16) = v14 + 1;
      *(v11 + 8 * v14++ + 32) = v15;
      --v10;
    }

    while (v10);
  }

  sub_1B7C2F4BC(v11, MEMORY[0x1E696A038]);

  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v18 = sub_1B7CFECC0();

  v19 = *(a2 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v19, 0);
    v20 = aBlock[0];
    v21 = (a2 + 32);
    v22 = *(aBlock[0] + 16);
    do
    {
      v24 = *v21++;
      v23 = v24;
      aBlock[0] = v20;
      v25 = *(v20 + 24);
      if (v22 >= v25 >> 1)
      {
        sub_1B7C312D8((v25 > 1), v22 + 1, 1);
        v20 = aBlock[0];
      }

      *(v20 + 16) = v22 + 1;
      *(v20 + 8 * v22++ + 32) = v23;
      --v19;
    }

    while (v19);
  }

  sub_1B7C2F4BC(v20, MEMORY[0x1E696A038]);

  v26 = sub_1B7CFECC0();

  v27 = *(a3 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v27, 0);
    v28 = aBlock[0];
    v29 = (a3 + 32);
    v30 = *(aBlock[0] + 16);
    do
    {
      v32 = *v29++;
      v31 = v32;
      aBlock[0] = v28;
      v33 = *(v28 + 24);
      if (v30 >= v33 >> 1)
      {
        sub_1B7C312D8((v33 > 1), v30 + 1, 1);
        v28 = aBlock[0];
      }

      *(v28 + 16) = v30 + 1;
      *(v28 + 8 * v30++ + 32) = v31;
      --v27;
    }

    while (v27);
  }

  sub_1B7C2F4BC(v28, MEMORY[0x1E696A038]);

  v34 = sub_1B7CFECC0();

  sub_1B7C2F4BC(a4, MEMORY[0x1E6969E50]);
  v35 = sub_1B7CFECC0();

  aBlock[4] = a6;
  aBlock[5] = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7C2F91C;
  aBlock[3] = &unk_1F2F9F848;
  v36 = _Block_copy(aBlock);

  [v39 loadRecentTasksWithFlags:v18 groups:v26 lanes:v34 excludingReasons:v35 limit:a5 completionBlock:v36];
  _Block_release(v36);
}

uint64_t IMDPersistentTaskQueries.loadRecentTasks(withFlags:groups:lanes:excludingReasons:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[23] = a5;
  v6[24] = v5;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7C2F958, 0, 0);
}

uint64_t sub_1B7C2F958()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v2, 0);
    v3 = v36;
    v4 = (v1 + 32);
    v5 = *(v36 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = *(v36 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1B7C312D8((v8 > 1), v5 + 1, 1);
      }

      *(v36 + 16) = v5 + 1;
      *(v36 + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  v9 = v0[20];
  sub_1B7C2F4BC(v3, MEMORY[0x1E696A038]);

  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v35 = sub_1B7CFECC0();
  v0[25] = v35;

  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v0[20];
    v37 = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v10, 0);
    v11 = v37;
    v13 = (v12 + 32);
    v14 = *(v37 + 16);
    do
    {
      v16 = *v13++;
      v15 = v16;
      v17 = *(v37 + 24);
      if (v14 >= v17 >> 1)
      {
        sub_1B7C312D8((v17 > 1), v14 + 1, 1);
      }

      *(v37 + 16) = v14 + 1;
      *(v37 + 8 * v14++ + 32) = v15;
      --v10;
    }

    while (v10);
  }

  v18 = v0[21];
  sub_1B7C2F4BC(v11, MEMORY[0x1E696A038]);

  v19 = sub_1B7CFECC0();
  v0[26] = v19;

  v20 = *(v18 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v22 = v0[21];
    v38 = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v20, 0);
    v21 = v38;
    v23 = (v22 + 32);
    v24 = *(v38 + 16);
    do
    {
      v26 = *v23++;
      v25 = v26;
      v27 = *(v38 + 24);
      if (v24 >= v27 >> 1)
      {
        sub_1B7C312D8((v27 > 1), v24 + 1, 1);
      }

      *(v38 + 16) = v24 + 1;
      *(v38 + 8 * v24++ + 32) = v25;
      --v20;
    }

    while (v20);
  }

  v28 = v0[23];
  v29 = v0[24];
  v30 = v0[22];
  sub_1B7C2F4BC(v21, MEMORY[0x1E696A038]);

  v31 = sub_1B7CFECC0();
  v0[27] = v31;

  sub_1B7C2F4BC(v30, MEMORY[0x1E6969E50]);
  v32 = sub_1B7CFECC0();
  v0[28] = v32;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B7C2FD74;
  v33 = swift_continuation_init();
  v0[17] = sub_1B7C107FC(&qword_1EBA52438, &qword_1B7D0CA20);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7C2FED4;
  v0[13] = &unk_1F2FA39A0;
  v0[14] = v33;
  [v29 loadRecentTasksWithFlags:v35 groups:v19 lanes:v31 excludingReasons:v32 limit:v28 completionBlock:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7C2FD74()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7C2FE54, 0, 0);
}

uint64_t sub_1B7C2FE54()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 144);

  v5 = *(v0 + 8);

  return v5(v4);
}

void IMDPersistentTaskQueries.clearTasks(withRowIDs:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7C2F4BC(a1, MEMORY[0x1E6969E50]);
  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v6 = sub_1B7CFECC0();

  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B7AE14D0;
  v8[3] = &unk_1F2FA39C8;
  v7 = _Block_copy(v8);

  [v3 clearTasksWithRowIDs:v6 completionBlock:v7];
  _Block_release(v7);
}

uint64_t IMDPersistentTaskQueries.clearTasks(withRowIDs:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C3001C, 0, 0);
}

uint64_t sub_1B7C3001C()
{
  v1 = v0[19];
  sub_1B7C2F4BC(v0[18], MEMORY[0x1E6969E50]);
  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v2 = sub_1B7CFECC0();
  v0[20] = v2;

  v0[2] = v0;
  v0[3] = sub_1B7C3018C;
  v3 = swift_continuation_init();
  v0[17] = sub_1B7C107FC(&qword_1EBA52440, &qword_1B7D0CA30);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7C302CC;
  v0[13] = &unk_1F2F9F5F0;
  v0[14] = v3;
  [v1 clearTasksWithRowIDs:v2 completionBlock:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7C3018C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7C3026C, 0, 0);
}

uint64_t sub_1B7C3026C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7C302CC(uint64_t a1)
{
  v1 = *sub_1B7AE9124((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

void IMDPersistentTaskQueries.loadPTaskReports(forGroups:excludingReasons:loadFullReports:completionBlock:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = a2;
  if (!a1)
  {
    v19 = 0;
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v21 = v6;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v12, 0);
    v13 = aBlock[0];
    v14 = (a1 + 32);
    v15 = *(aBlock[0] + 16);
    do
    {
      v17 = *v14++;
      v16 = v17;
      aBlock[0] = v13;
      v18 = *(v13 + 24);
      if (v15 >= v18 >> 1)
      {
        sub_1B7C312D8((v18 > 1), v15 + 1, 1);
        v13 = aBlock[0];
      }

      *(v13 + 16) = v15 + 1;
      *(v13 + 8 * v15++ + 32) = v16;
      --v12;
    }

    while (v12);
    v6 = v21;
  }

  sub_1B7C2F4BC(v13, MEMORY[0x1E696A038]);

  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v19 = sub_1B7CFECC0();

  if (v10)
  {
LABEL_9:
    sub_1B7C2F4BC(v10, MEMORY[0x1E6969E50]);
    sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
    v10 = sub_1B7CFECC0();
  }

LABEL_10:
  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7C3053C;
  aBlock[3] = &unk_1F2FA39F0;
  v20 = _Block_copy(aBlock);

  [v6 loadPTaskReportsForGroups:v19 excludingReasons:v10 loadFullReports:a3 & 1 completionBlock:v20];
  _Block_release(v20);
}

double sub_1B7C30550(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v4 = *(a1 + 32);
  sub_1B7AEE088(0, a3, a4);
  v5 = sub_1B7CFECE0();

  v4(v5);

  return result;
}

uint64_t IMDPersistentTaskQueries.loadPTaskReports(forGroups:excludingReasons:loadFullReports:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 160) = a2;
  *(v4 + 168) = v3;
  *(v4 + 192) = a3;
  *(v4 + 152) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C305F4, 0, 0);
}

uint64_t sub_1B7C305F4(__n128 a1)
{
  v2 = *(v1 + 152);
  if (v2)
  {
    v3 = *(v2 + 16);
    v4 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1B7C312D8(0, v3, 0);
      v4 = v17;
      v5 = (v2 + 32);
      v6 = *(v17 + 16);
      do
      {
        v8 = *v5++;
        v7 = v8;
        v9 = *(v17 + 24);
        if (v6 >= v9 >> 1)
        {
          sub_1B7C312D8((v9 > 1), v6 + 1, 1);
        }

        *(v17 + 16) = v6 + 1;
        *(v17 + 8 * v6++ + 32) = v7;
        --v3;
      }

      while (v3);
    }

    sub_1B7C2F4BC(v4, MEMORY[0x1E696A038]);

    sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
    v10 = sub_1B7CFECC0();
  }

  else
  {
    v10 = 0;
  }

  *(v1 + 176) = v10;
  v11 = *(v1 + 160);
  if (v11)
  {
    sub_1B7C2F4BC(v11, MEMORY[0x1E6969E50]);
    sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
    v12 = sub_1B7CFECC0();
  }

  else
  {
    v12 = 0;
  }

  *(v1 + 184) = v12;
  v13 = *(v1 + 168);
  v14 = *(v1 + 192);
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_1B7C30880;
  v15 = swift_continuation_init();
  *(v1 + 136) = sub_1B7C107FC(&qword_1EBA52448, &qword_1B7D0CA40);
  *(v1 + 80) = MEMORY[0x1E69E9820];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_1B7C309CC;
  *(v1 + 104) = &unk_1F2F9F780;
  *(v1 + 112) = v15;
  [v13 loadPTaskReportsForGroups:v10 excludingReasons:v12 loadFullReports:v14 completionBlock:v1 + 80];

  return MEMORY[0x1EEE6DEC8](v1 + 16);
}

uint64_t sub_1B7C30880()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7C30960, 0, 0);
}

uint64_t sub_1B7C30960()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1B7C309E0(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v6 = *sub_1B7AE9124((a1 + 32), *(a1 + 56));
  sub_1B7AEE088(0, a3, a4);
  **(*(v6 + 64) + 40) = sub_1B7CFECE0();

  return MEMORY[0x1EEE6DED8](v6);
}

void IMDPersistentTaskQueries.clearAllTasks(in:flags:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a2 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v19[0] = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v9, 0);
    v10 = v19[0];
    v12 = (a2 + 32);
    v13 = *(v19[0] + 16);
    do
    {
      v15 = *v12++;
      v14 = v15;
      v19[0] = v10;
      v16 = *(v10 + 24);
      if (v13 >= v16 >> 1)
      {
        sub_1B7C312D8((v16 > 1), v13 + 1, 1);
        v10 = v19[0];
      }

      *(v10 + 16) = v13 + 1;
      *(v10 + 8 * v13++ + 32) = v14;
      --v9;
    }

    while (v9);
  }

  sub_1B7C2F4BC(v10, MEMORY[0x1E696A038]);

  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v17 = sub_1B7CFECC0();

  v19[4] = a3;
  v19[5] = a4;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1B7C30C34;
  v19[3] = &unk_1F2F9F5C8;
  v18 = _Block_copy(v19);

  [v5 clearAllTasksInLane:a1 flags:v17 completionBlock:v18];
  _Block_release(v18);
}

void sub_1B7C30C34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t IMDPersistentTaskQueries.clearAllTasks(in:flags:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C30CC4, 0, 0);
}

uint64_t sub_1B7C30CC4()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v2, 0);
    v3 = v14;
    v4 = (v1 + 32);
    v5 = *(v14 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = *(v14 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1B7C312D8((v8 > 1), v5 + 1, 1);
      }

      *(v14 + 16) = v5 + 1;
      *(v14 + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  v9 = v0[20];
  v10 = v0[18];
  sub_1B7C2F4BC(v3, MEMORY[0x1E696A038]);

  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v11 = sub_1B7CFECC0();
  v0[21] = v11;

  v0[2] = v0;
  v0[3] = sub_1B7C30ED8;
  v12 = swift_continuation_init();
  v0[17] = sub_1B7C107FC(&unk_1EBA52450, &qword_1B7D0CA50);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7C310BC;
  v0[13] = &unk_1F2F9F708;
  v0[14] = v12;
  [v9 clearAllTasksInLane:v10 flags:v11 completionBlock:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7C30ED8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1B7C3104C;
  }

  else
  {
    v2 = sub_1B7C30FE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7C30FE8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7C3104C(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1B7C310BC(uint64_t a1, void *a2)
{
  v3 = sub_1B7AE9124((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

void *sub_1B7C31168(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7C31470(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B7C31188(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7C315B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B7C311A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7C316BC(a1, a2, a3, *v3, &qword_1EBA52550, &qword_1B7D0CB10, &qword_1EBA52558, &qword_1B7D0CB18);
  *v3 = result;
  return result;
}

void *sub_1B7C311E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7C316BC(a1, a2, a3, *v3, &qword_1EBA52540, &qword_1B7D0CB00, &qword_1EBA52548, &qword_1B7D0CB08);
  *v3 = result;
  return result;
}

void *sub_1B7C31228(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7C31A3C(a1, a2, a3, *v3, &qword_1EBA52530, &qword_1B7D0CAF8, &qword_1EBA52538, &qword_1B7D0FF90);
  *v3 = result;
  return result;
}

void *sub_1B7C31268(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7C316BC(a1, a2, a3, *v3, &qword_1EBA52568, &qword_1B7D0CB28, &qword_1EBA52560, &qword_1B7D0CB20);
  *v3 = result;
  return result;
}

void *sub_1B7C312A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7C31B70(a1, a2, a3, *v3, &qword_1EBA52520, &qword_1B7D0CAE8);
  *v3 = result;
  return result;
}

char *sub_1B7C312D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7C3183C(a1, a2, a3, *v3, &unk_1EBA52590, &unk_1B7D0CB40);
  *v3 = result;
  return result;
}

char *sub_1B7C31320(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7C3183C(a1, a2, a3, *v3, &qword_1EBA52508, qword_1B7D13910);
  *v3 = result;
  return result;
}

char *sub_1B7C31350(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7C31938(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B7C31370(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7C31A3C(a1, a2, a3, *v3, &qword_1EBA524F0, &qword_1B7D0CAC8, &qword_1EBA524F8, &qword_1B7D0CAD0);
  *v3 = result;
  return result;
}

void *sub_1B7C313B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7C31A3C(a1, a2, a3, *v3, &unk_1EBA52510, &qword_1B7D0CAE0, &unk_1EBA525A0, "D\r\b");
  *v3 = result;
  return result;
}

void *sub_1B7C313F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7C31A3C(a1, a2, a3, *v3, &qword_1EBA52578, &qword_1B7D0CB38, &unk_1EBA52580, &qword_1B7D10D90);
  *v3 = result;
  return result;
}

void *sub_1B7C31430(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7C316BC(a1, a2, a3, *v3, &qword_1EBA52470, &qword_1B7D0CA60, &qword_1EBA52478, &unk_1B7D0D930);
  *v3 = result;
  return result;
}

void *sub_1B7C31470(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B7C107FC(&qword_1EBA524B0, &qword_1B7D0CA98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(&qword_1EBA524B8, &qword_1B7D0CAA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7C315B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA524D0, &qword_1B7D0CAB8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B7C316BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1B7C107FC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1B7C3183C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1B7C107FC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1B7C31938(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA52500, &qword_1B7D0CAD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1B7C31A3C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1B7C107FC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1B7C31B70(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1B7C107FC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(&qword_1EBA52528, &qword_1B7D0CAF0);
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1B7C31CD8(unint64_t a1)
{
  sub_1B7AE3F68();
  v21 = 0;
  v22 = 0xE000000000000000;
  v23 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD000000000000076, 0x80000001B7D539C0);
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7CFF120())
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v4 = a1;
    v20 = MEMORY[0x1E69E7CC0];
    result = sub_1B7C31370(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    a1 = 0;
    v3 = v20;
    v7 = v4;
    v17 = v4 & 0xC000000000000001;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v8 = v4;
    while (1)
    {
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v17)
      {
        v10 = MEMORY[0x1B8CAE380](v6, v7);
      }

      else
      {
        if (v6 >= *(v16 + 16))
        {
          goto LABEL_20;
        }

        v10 = *(v7 + 8 * v6 + 32);
      }

      v11 = v10;
      v18 = v10;
      sub_1B7C32164(&v18, &v19);

      v12 = v19;
      v20 = v3;
      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1B7C31370((v13 > 1), v14 + 1, 1);
        v3 = v20;
      }

      *(v3 + 16) = v14 + 1;
      *(v3 + 8 * v14 + 32) = v12;
      ++v6;
      v7 = v8;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_14:
  sub_1B7C8BDE8(v3);

  MEMORY[0x1B8CADCA0](10, 0xE100000000000000);
  if (qword_1EBA50C88 != -1)
  {
    swift_once();
  }

  MEMORY[0x1B8CADCA0](qword_1EBA50C90, unk_1EBA50C98);
  sub_1B7AF3098(MEMORY[0x1E69E7CC0]);
  v15 = v23;
  sub_1B7AE3B2C(v21, v22, 0);
  sub_1B7AF3FE4(v15);

  [objc_opt_self() _notifyPTasksUpdated];
}

void sub_1B7C32164(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1B7C107FC(&unk_1EBA52600, &qword_1B7D0AA78);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7D0CB50;
  v5 = [v3 guid];
  v6 = sub_1B7CFEA60();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = &off_1F2FA8B58;
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = [v3 group];
  v10 = MEMORY[0x1E69E6810];
  *(v4 + 96) = MEMORY[0x1E69E6810];
  *(v4 + 104) = &off_1F2FA8A98;
  *(v4 + 72) = v9;
  v11 = [v3 flag];
  *(v4 + 136) = v10;
  *(v4 + 144) = &off_1F2FA8A98;
  *(v4 + 112) = v11;
  v12 = [v3 flagPriority];
  v13 = MEMORY[0x1E69E6530];
  *(v4 + 176) = MEMORY[0x1E69E6530];
  *(v4 + 184) = &off_1F2FA89F8;
  *(v4 + 152) = v12;
  v14 = [v3 lane];
  *(v4 + 216) = v10;
  *(v4 + 224) = &off_1F2FA8A98;
  *(v4 + 192) = v14;
  v15 = [v3 reason];
  *(v4 + 256) = v13;
  *(v4 + 264) = &off_1F2FA89F8;
  *(v4 + 232) = v15;
  v16 = [v3 reasonPriority];
  *(v4 + 296) = v13;
  *(v4 + 304) = &off_1F2FA89F8;
  *(v4 + 272) = v16;
  v17 = [v3 userInfo];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1B7CFE990();
  }

  else
  {
    v19 = 0;
  }

  *(v4 + 336) = sub_1B7C107FC(&unk_1EBA525C0, &qword_1B7D0CB80);
  *(v4 + 344) = sub_1B7C3D3E0();
  if (v19)
  {
    v20 = objc_opt_self();
    v21 = sub_1B7CFE980();
    v22 = [v20 _dataForUserInfo_];

    if (v22)
    {
      v23 = sub_1B7CFE020();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xF000000000000000;
    }

    *(v4 + 312) = v23;
    *(v4 + 320) = v25;
  }

  else
  {
    *(v4 + 312) = 0;
    *(v4 + 320) = 0xB000000000000000;
  }

  *a2 = v4;
}

char *sub_1B7C324F0(unint64_t a1, void (*a2)(void))
{
  v4 = sub_1B7AE3F68();
  v22 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD00000000000002CLL, 0x80000001B7D53990);
  if (a1 >> 62)
  {
    v5 = sub_1B7CFF120();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v21 = MEMORY[0x1E69E7CC0];
    result = sub_1B7C31320(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v20 = v4;
    v8 = a2;
    v6 = v21;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v5; ++i)
      {
        v10 = [MEMORY[0x1B8CAE380](i a1)];
        swift_unknownObjectRelease();
        v12 = *(v21 + 16);
        v11 = *(v21 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1B7C31320((v11 > 1), v12 + 1, 1);
        }

        *(v21 + 16) = v12 + 1;
        *(v21 + 8 * v12 + 32) = v10;
      }
    }

    else
    {
      v13 = (a1 + 32);
      do
      {
        v14 = [*v13 integerValue];
        v16 = *(v21 + 16);
        v15 = *(v21 + 24);
        if (v16 >= v15 >> 1)
        {
          v17 = v14;
          sub_1B7C31320((v15 > 1), v16 + 1, 1);
          v14 = v17;
        }

        *(v21 + 16) = v16 + 1;
        *(v21 + 8 * v16 + 32) = v14;
        ++v13;
        --v5;
      }

      while (v5);
    }

    a2 = v8;
  }

  v18 = sub_1B7C2F3B4(v6);

  sub_1B7AF57A0(v18);

  sub_1B7AE3B2C(0, 0xE000000000000000, 0);
  sub_1B7AF3FE4(v22);

  v19 = [objc_opt_self() _notifyPTasksUpdated];
  a2(v19);
}

void sub_1B7C32AC0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, void *a6, void (*a7)(uint64_t))
{
  sub_1B7AE3F68();
  v13 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  v14 = sub_1B7C32F1C(a1, a2, a3, a4);
  v16 = v15;
  v18 = v17;
  v19 = sub_1B7AE3A9C(0, 1, 1, v13);
  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1B7AE3A9C((v20 > 1), v21 + 1, 1, v19);
  }

  v34 = MEMORY[0x1E69E6530];
  v35 = &off_1F2FA89F8;
  *&v33 = a5;
  v19[2] = v21 + 1;
  sub_1B7AE910C(&v33, &v19[5 * v21 + 4]);
  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7D0CB60;
  *(inited + 32) = 0xD0000000000000B0;
  *(inited + 40) = 0x80000001B7D53890;
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  *(inited + 64) = v16;
  *(inited + 72) = v18;
  *(inited + 80) = 0x3F202054494D494CLL;
  *(inited + 88) = 0xE900000000000020;
  *(inited + 96) = v19;
  sub_1B7CB5C48(inited);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  swift_setDeallocating();
  swift_arrayDestroy();
  v29 = a6;

  v30 = sub_1B7AE3B2C(v24, v26, 0);
  v31 = v29;
  sub_1B7C95CC8(v28, v30, v31, &v36);

  swift_bridgeObjectRelease_n();
  a7(v36);
}

uint64_t sub_1B7C32F1C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v29 = sub_1B7C330B0(a1);
  v30 = v7;
  v31 = v8;
  v9 = sub_1B7C33248(a2);
  v27 = v10;
  v28 = v9;
  v12 = v11;
  v13 = sub_1B7C336A0(a3, 0x20203D20656E616CLL, 0xEA0000000000203FLL, 40, 0xE100000000000000);
  v15 = v14;
  v17 = v16;
  v18 = sub_1B7C336A0(a4, 0x3D206E6F73616572, 0xEC000000203F2020, 0x2820544F4ELL, 0xE500000000000000);
  v20 = v19;
  v22 = v21;
  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  inited = swift_initStackObject();
  *(inited + 32) = v29;
  *(inited + 16) = xmmword_1B7D0CB70;
  *(inited + 40) = v31;
  *(inited + 48) = v30;
  *(inited + 56) = v28;
  *(inited + 64) = v27;
  *(inited + 72) = v12;
  *(inited + 80) = v13;
  *(inited + 88) = v15;
  *(inited + 96) = v17;
  *(inited + 104) = v18;
  *(inited + 112) = v20;
  *(inited + 120) = v22;
  *(inited + 128) = 0xD000000000000010;
  v24 = MEMORY[0x1E69E7CC0];
  *(inited + 136) = 0x80000001B7D53950;
  *(inited + 144) = v24;
  v25 = sub_1B7C81314(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v25;
}

uint64_t sub_1B7C330B0(unint64_t a1)
{
  if (!a1)
  {
    v11 = 0;
    v3 = MEMORY[0x1E69E7CC0];
LABEL_8:
    v13 = 0xE000000000000000;
    goto LABEL_9;
  }

  if (a1 >> 62)
  {
    v2 = sub_1B7CFF120();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v4 = sub_1B7C3382C(a1, 0x20203D2067616C66, 0xEA0000000000203FLL);
  v6 = v5;
  v8 = v7;
  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  inited = swift_initStackObject();
  *(inited + 32) = 40;
  *(inited + 16) = xmmword_1B7D0CB60;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  *(inited + 80) = 8233;
  *(inited + 88) = 0xE200000000000000;
  *(inited + 96) = v3;
  sub_1B7CB5C48(inited);
  v11 = v10;
  v13 = v12;
  v3 = v14;
  swift_setDeallocating();
  swift_arrayDestroy();
LABEL_9:
  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1B7D0A7B0;
  *(v15 + 32) = v11;
  v16 = v15 + 32;
  *(v15 + 40) = v13;
  *(v15 + 48) = v3;
  sub_1B7CB5C48(v15);
  v18 = v17;
  swift_setDeallocating();
  sub_1B7C3D308(v16);
  return v18;
}

uint64_t sub_1B7C33248(unint64_t a1)
{
  if (!a1)
  {
    v11 = 0;
    v3 = MEMORY[0x1E69E7CC0];
LABEL_8:
    v13 = 0xE000000000000000;
    goto LABEL_9;
  }

  if (a1 >> 62)
  {
    v2 = sub_1B7CFF120();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v4 = sub_1B7C333C8(a1);
  v6 = v5;
  v8 = v7;
  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  inited = swift_initStackObject();
  *(inited + 32) = 40;
  *(inited + 16) = xmmword_1B7D0CB60;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  *(inited + 80) = 8233;
  *(inited + 88) = 0xE200000000000000;
  *(inited + 96) = v3;
  sub_1B7CB5C48(inited);
  v11 = v10;
  v13 = v12;
  v3 = v14;
  swift_setDeallocating();
  swift_arrayDestroy();
LABEL_9:
  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1B7D0A7B0;
  *(v15 + 32) = v11;
  v16 = v15 + 32;
  *(v15 + 40) = v13;
  *(v15 + 48) = v3;
  sub_1B7CB5C48(v15);
  v18 = v17;
  swift_setDeallocating();
  sub_1B7C3D308(v16);
  return v18;
}

unint64_t sub_1B7C333C8(unint64_t result)
{
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = &unk_1B7D0A000;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:
    v5 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v22 = sub_1B7C81304(v5);
    v24 = v23;
    v26 = v25;

    sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7D0A7B0;
    *(inited + 32) = v22;
    v28 = inited + 32;
    *(inited + 40) = v24;
    *(inited + 48) = v26;
    v29 = sub_1B7C81304(inited);
    swift_setDeallocating();
    sub_1B7C3D308(v28);
    return v29;
  }

  result = sub_1B7CFF120();
  v2 = result;
  v3 = &unk_1B7D0A000;
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v4 = 0;
    v31 = 0x80000001B7D53970;
    v5 = MEMORY[0x1E69E7CC0];
    v30 = v3[123];
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B8CAE380](v4, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 integerValue];
      v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v11 = v9[2];
      v10 = v9[3];
      if (v11 >= v10 >> 1)
      {
        v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
      }

      v34 = &off_1F2FA89F8;
      v33 = MEMORY[0x1E69E6530];
      *&v32 = v8;
      v9[2] = v11 + 1;
      sub_1B7AE910C(&v32, &v9[5 * v11 + 4]);
      sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
      v12 = swift_initStackObject();
      *(v12 + 16) = v30;
      *(v12 + 32) = 0xD000000000000010;
      v13 = v12 + 32;
      *(v12 + 40) = v31;
      *(v12 + 48) = v9;
      v14 = sub_1B7C81304(v12);
      v16 = v15;
      v18 = v17;
      swift_setDeallocating();
      sub_1B7C3D308(v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1B7CA23F8(0, *(v5 + 2) + 1, 1, v5);
      }

      v20 = *(v5 + 2);
      v19 = *(v5 + 3);
      if (v20 >= v19 >> 1)
      {
        v5 = sub_1B7CA23F8((v19 > 1), v20 + 1, 1, v5);
      }

      ++v4;

      *(v5 + 2) = v20 + 1;
      v21 = &v5[24 * v20];
      *(v21 + 4) = v14;
      *(v21 + 5) = v16;
      *(v21 + 6) = v18;
    }

    while (v2 != v4);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C336A0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 >> 62)
  {
    v25 = a1;
    v26 = a3;
    v27 = a2;
    v28 = sub_1B7CFF120();
    a2 = v27;
    a3 = v26;
    v7 = v28;
    a1 = v25;
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = sub_1B7C3382C(a1, a2, a3);
    v11 = v10;
    v13 = v12;
    sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7D0CB60;
    *(inited + 32) = a4;
    *(inited + 40) = a5;
    *(inited + 48) = v8;
    *(inited + 56) = v9;
    *(inited + 64) = v11;
    *(inited + 72) = v13;
    *(inited + 80) = 8233;
    *(inited + 88) = 0xE200000000000000;
    *(inited + 96) = v8;
    sub_1B7CB5C48(inited);
    v16 = v15;
    v18 = v17;
    v8 = v19;
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1B7D0A7B0;
  *(v20 + 32) = v16;
  v21 = v20 + 32;
  *(v20 + 40) = v18;
  *(v20 + 48) = v8;
  sub_1B7CB5C48(v20);
  v23 = v22;
  swift_setDeallocating();
  sub_1B7C3D308(v21);
  return v23;
}

unint64_t sub_1B7C3382C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = &unk_1B7D0A000;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_17:
    v7 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v24 = sub_1B7C81304(v7);
    v26 = v25;
    v28 = v27;

    sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7D0A7B0;
    *(inited + 32) = v24;
    v30 = inited + 32;
    *(inited + 40) = v26;
    *(inited + 48) = v28;
    v31 = sub_1B7C81304(inited);
    swift_setDeallocating();
    sub_1B7C3D308(v30);
    return v31;
  }

  result = sub_1B7CFF120();
  v4 = result;
  v5 = &unk_1B7D0A000;
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v32 = v5[123];
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B8CAE380](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 integerValue];
      v11 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v13 = v11[2];
      v12 = v11[3];
      if (v13 >= v12 >> 1)
      {
        v11 = sub_1B7AE3A9C((v12 > 1), v13 + 1, 1, v11);
      }

      v37 = &off_1F2FA89F8;
      v36 = MEMORY[0x1E69E6530];
      *&v35 = v10;
      v11[2] = v13 + 1;
      sub_1B7AE910C(&v35, &v11[5 * v13 + 4]);
      sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
      v14 = swift_initStackObject();
      *(v14 + 16) = v32;
      *(v14 + 32) = a2;
      v15 = v14 + 32;
      *(v14 + 40) = a3;
      *(v14 + 48) = v11;
      v16 = sub_1B7C81304(v14);
      v18 = v17;
      v20 = v19;
      swift_setDeallocating();
      sub_1B7C3D308(v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1B7CA23F8(0, *(v7 + 2) + 1, 1, v7);
      }

      v22 = *(v7 + 2);
      v21 = *(v7 + 3);
      if (v22 >= v21 >> 1)
      {
        v7 = sub_1B7CA23F8((v21 > 1), v22 + 1, 1, v7);
      }

      ++v6;

      *(v7 + 2) = v22 + 1;
      v23 = &v7[24 * v22];
      *(v23 + 4) = v16;
      *(v23 + 5) = v18;
      *(v23 + 6) = v20;
    }

    while (v4 != v6);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

double sub_1B7C33CE0(char a1, uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6)
{
  v11 = [objc_allocWithZone(_IMPersistentTaskReportSetBuilder) init];
  v12 = v11;
  if (a1)
  {
    v38 = a4;
    v39 = a3;
    v13 = sub_1B7AE3F68();
    v14 = sub_1B7AE3B2C(0xD00000000000007ALL, 0x80000001B7D537A0, 0);
    v36 = v13;
    v15 = MEMORY[0x1E69E7CC0];
    v40[0] = MEMORY[0x1E69E7CC0];

    sub_1B7C950E4(v15, v14, v40, v14);
    v37 = v12;

    v19 = *(v40[0] + 16);
    if (v19)
    {
      v34 = a6;
      v35 = a5;
      v33 = v40[0];
      v20 = (v40[0] + 64);
      do
      {
        v21 = *(v20 - 4);
        v22 = *(v20 - 2);
        v23 = *(v20 - 1);
        v24 = *v20;
        v25 = v39;
        if (!v39 || (v26 = sub_1B7CFF050(), v40[0] = v26, MEMORY[0x1EEE9AC00](v26), v32 = v40, v27 = sub_1B7C19BFC(sub_1B7C3D934, v31, v25), v26, (v27 & 1) != 0))
        {
          v28 = v38;
          if (!v38 || (v29 = sub_1B7CFEE20(), v40[0] = v29, MEMORY[0x1EEE9AC00](v29), v32 = v40, v30 = sub_1B7C19BFC(sub_1B7C3D7E8, v31, v28), v29, (v30 & 1) == 0))
          {
            [v37 recordFlag:v21 lane:v22 reason:v23 count:v24];
          }
        }

        v20 += 5;
        --v19;
      }

      while (v19);

      a5 = v35;
      v12 = v37;
    }

    else
    {

      v12 = v37;
    }
  }

  else
  {
    sub_1B7C3AE7C(v11, a3, a4);
  }

  v16 = [v12 reset];
  sub_1B7AEE088(0, &qword_1EDBE5A10, 0x1E69A81D0);
  v17 = sub_1B7CFECE0();

  a5(v17);

  return result;
}

void sub_1B7C34340(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  sub_1B7AEE088(0, a3, a4);
  v5 = sub_1B7CFECC0();
  (*(a2 + 16))(a2, v5);
}

char *sub_1B7C343B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id), unint64_t a7)
{
  sub_1B7AE3F68();
  v62 = 0;
  v63 = 0xE000000000000000;
  v64 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD000000000000073, 0x80000001B7D53660);
  if (qword_1EDBE3010 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDBE79C8;
  v15 = *(qword_1EDBE79C8 + 16);
  if (v15)
  {
    v16 = sub_1B7C41954();
    if (v17)
    {
      v57 = a2;
      v58 = a3;
      a3 = *(*(v14 + 56) + 48 * v16 + 40);
      v7 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      a2 = v7[2];
      v15 = v7[3];
      v14 = a2 + 1;
      if (a2 < v15 >> 1)
      {
        goto LABEL_6;
      }

      goto LABEL_44;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_44:
  v7 = sub_1B7AE3A9C((v15 > 1), v14, 1, v7);
LABEL_6:
  v60 = MEMORY[0x1E69E6810];
  v61 = &off_1F2FA8A98;
  *&v59 = a3;
  v7[2] = v14;
  sub_1B7AE910C(&v59, &v7[5 * a2 + 4]);
  v64 = v7;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v19 = v7[2];
  v18 = v7[3];
  if (v19 >= v18 >> 1)
  {
    v7 = sub_1B7AE3A9C((v18 > 1), v19 + 1, 1, v7);
  }

  v61 = &off_1F2FA8A98;
  v60 = MEMORY[0x1E69E6810];
  *&v59 = a1;
  v7[2] = v19 + 1;
  sub_1B7AE910C(&v59, &v7[5 * v19 + 4]);
  v64 = v7;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  if (qword_1EBA50DE8 != -1)
  {
    swift_once();
  }

  v20 = qword_1EBA5DA00;
  v21 = *(qword_1EBA5DA00 + 16);
  if (v21)
  {
    v22 = sub_1B7C41954();
    if (v23)
    {
      v56 = a6;
      a6 = *(*(v20 + 56) + 8 * v22);
      a7 = v7[2];
      v21 = v7[3];
      v20 = a7 + 1;
      if (a7 < v21 >> 1)
      {
        goto LABEL_13;
      }

      goto LABEL_47;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_47:
  v7 = sub_1B7AE3A9C((v21 > 1), v20, 1, v7);
LABEL_13:
  v24 = MEMORY[0x1E69E6530];
  v60 = MEMORY[0x1E69E6530];
  v61 = &off_1F2FA89F8;
  *&v59 = a6;
  v7[2] = v20;
  sub_1B7AE910C(&v59, &v7[5 * a7 + 4]);
  v64 = v7;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v26 = v7[2];
  v25 = v7[3];
  if (v26 >= v25 >> 1)
  {
    v7 = sub_1B7AE3A9C((v25 > 1), v26 + 1, 1, v7);
  }

  v61 = &off_1F2FA8A98;
  v60 = MEMORY[0x1E69E6810];
  *&v59 = v57;
  v7[2] = v26 + 1;
  sub_1B7AE910C(&v59, &v7[5 * v26 + 4]);
  v64 = v7;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v28 = v7[2];
  v27 = v7[3];
  if (v28 >= v27 >> 1)
  {
    v7 = sub_1B7AE3A9C((v27 > 1), v28 + 1, 1, v7);
  }

  v60 = v24;
  v61 = &off_1F2FA89F8;
  *&v59 = v58;
  v7[2] = v28 + 1;
  sub_1B7AE910C(&v59, &v7[5 * v28 + 4]);
  v64 = v7;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v29 = sub_1B7C3DA5C(v58, a1);
  v31 = v7[2];
  v30 = v7[3];
  if (v31 >= v30 >> 1)
  {
    v55 = v29;
    v7 = sub_1B7AE3A9C((v30 > 1), v31 + 1, 1, v7);
    v29 = v55;
  }

  v60 = v24;
  v61 = &off_1F2FA89F8;
  *&v59 = v29;
  v7[2] = v31 + 1;
  sub_1B7AE910C(&v59, &v7[5 * v31 + 4]);
  v64 = v7;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](0xD00000000000006FLL, 0x80000001B7D536E0);
  v32 = sub_1B7CFE0A0();
  v33 = [v32 __im_nanosecondTimeInterval];

  v35 = v7[2];
  v34 = v7[3];
  if (v35 >= v34 >> 1)
  {
    v7 = sub_1B7AE3A9C((v34 > 1), v35 + 1, 1, v7);
  }

  v60 = MEMORY[0x1E69E7360];
  v61 = &off_1F2FA8A78;
  *&v59 = v33;
  v7[2] = v35 + 1;
  sub_1B7AE910C(&v59, &v7[5 * v35 + 4]);
  v64 = v7;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](0xD000000000000018, 0x80000001B7D53750);
  if (a5 >> 62)
  {
    v36 = sub_1B7CFF120();
  }

  else
  {
    v36 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    *&v59 = MEMORY[0x1E69E7CC0];
    result = sub_1B7C31320(0, v36 & ~(v36 >> 63), 0);
    if (v36 < 0)
    {
      __break(1u);
      return result;
    }

    v37 = v59;
    if ((a5 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v36; ++i)
      {
        v40 = [MEMORY[0x1B8CAE380](i a5)];
        swift_unknownObjectRelease();
        *&v59 = v37;
        v42 = *(v37 + 16);
        v41 = *(v37 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1B7C31320((v41 > 1), v42 + 1, 1);
          v37 = v59;
        }

        *(v37 + 16) = v42 + 1;
        *(v37 + 8 * v42 + 32) = v40;
      }
    }

    else
    {
      v43 = (a5 + 32);
      do
      {
        v44 = [*v43 integerValue];
        *&v59 = v37;
        v46 = *(v37 + 16);
        v45 = *(v37 + 24);
        if (v46 >= v45 >> 1)
        {
          v47 = v44;
          sub_1B7C31320((v45 > 1), v46 + 1, 1);
          v44 = v47;
          v37 = v59;
        }

        *(v37 + 16) = v46 + 1;
        *(v37 + 8 * v46 + 32) = v44;
        ++v43;
        --v36;
      }

      while (v36);
    }
  }

  v48 = sub_1B7CBBF98(v37);

  v49 = *(v48 + 16);
  if (!v49)
  {
    goto LABEL_38;
  }

  v50 = sub_1B7CD94A8(*(v48 + 16), 0);
  v51 = sub_1B7CD9C28(&v59, (v50 + 4), v49, v48);
  sub_1B7AEC4CC(v59);
  if (v51 != v49)
  {
    __break(1u);
LABEL_38:

    v50 = MEMORY[0x1E69E7CC0];
  }

  v52 = sub_1B7C2F3B4(v50);

  sub_1B7AF57A0(v52);

  MEMORY[0x1B8CADCA0](0xD000000000000020, 0x80000001B7D53770);
  if (qword_1EBA50C88 != -1)
  {
    swift_once();
  }

  MEMORY[0x1B8CADCA0](qword_1EBA50C90, unk_1EBA50C98);
  sub_1B7AF3098(MEMORY[0x1E69E7CC0]);
  v53 = v64;
  sub_1B7AE3B2C(v62, v63, 0);
  sub_1B7AF3FE4(v53);

  v54 = [objc_opt_self() _notifyPTasksUpdated];
  v56(v54);
}

char *sub_1B7C350C8(unint64_t a1, void (*a2)(void))
{
  v4 = sub_1B7AE3F68();
  v22 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD000000000000051, 0x80000001B7D53600);
  if (a1 >> 62)
  {
    v5 = sub_1B7CFF120();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v21 = MEMORY[0x1E69E7CC0];
    result = sub_1B7C31320(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v20 = v4;
    v8 = a2;
    v6 = v21;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v5; ++i)
      {
        v10 = [MEMORY[0x1B8CAE380](i a1)];
        swift_unknownObjectRelease();
        v12 = *(v21 + 16);
        v11 = *(v21 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1B7C31320((v11 > 1), v12 + 1, 1);
        }

        *(v21 + 16) = v12 + 1;
        *(v21 + 8 * v12 + 32) = v10;
      }
    }

    else
    {
      v13 = (a1 + 32);
      do
      {
        v14 = [*v13 integerValue];
        v16 = *(v21 + 16);
        v15 = *(v21 + 24);
        if (v16 >= v15 >> 1)
        {
          v17 = v14;
          sub_1B7C31320((v15 > 1), v16 + 1, 1);
          v14 = v17;
        }

        *(v21 + 16) = v16 + 1;
        *(v21 + 8 * v16 + 32) = v14;
        ++v13;
        --v5;
      }

      while (v5);
    }

    a2 = v8;
  }

  v18 = sub_1B7C2F3B4(v6);

  sub_1B7AF57A0(v18);

  sub_1B7AE3B2C(0, 0xE000000000000000, 0);
  sub_1B7AF3FE4(v22);

  v19 = [objc_opt_self() _notifyPTasksUpdated];
  a2(v19);
}

uint64_t sub_1B7C35698(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 dictionaryRepresentation];
  if (v8)
  {
    v9 = v8;
    sub_1B7CFE990();

    v10 = objc_opt_self();
    v11 = sub_1B7CFE980();
    v12 = [v10 _dataForUserInfo_];

    if (v12)
    {
      v13 = sub_1B7CFE020();
      v15 = v14;

      goto LABEL_6;
    }
  }

  v13 = 0;
  v15 = 0xF000000000000000;
LABEL_6:
  if (qword_1EBA50EC0 != -1)
  {
    swift_once();
  }

  v16 = sub_1B7CFE420();
  sub_1B7AD9040(v16, qword_1EBA5DA38);
  v17 = sub_1B7CFE400();
  v18 = sub_1B7CFEED0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1B7AD5000, v17, v18, "Scheduling full reindex...", v19, 2u);
    MEMORY[0x1B8CB0E70](v19, -1, -1);
  }

  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a1;
  v20[4] = v13;
  v20[5] = v15;
  v20[6] = a3;
  v20[7] = a4;
  v21 = a2;
  v22 = a1;
  sub_1B7C3D3CC(v13, v15);

  sub_1B7C35D30(v22, v13, v15, sub_1B7C3D69C, v20);

  return sub_1B7C2049C(v13, v15);
}

uint64_t sub_1B7C358F4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EBA50EC0 != -1)
  {
    swift_once();
  }

  v11 = sub_1B7CFE420();
  sub_1B7AD9040(v11, qword_1EBA5DA38);
  v12 = sub_1B7CFE400();
  v13 = sub_1B7CFEED0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B7AD5000, v12, v13, "Scheduled chat reindexing, scheduling messages...", v14, 2u);
    MEMORY[0x1B8CB0E70](v14, -1, -1);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;

  sub_1B7C35B6C(a2, a3, a4, sub_1B7C3D6E4, v15);
}

uint64_t sub_1B7C35A60(uint64_t (*a1)(id))
{
  if (qword_1EBA50EC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B7CFE420();
  sub_1B7AD9040(v2, qword_1EBA5DA38);
  v3 = sub_1B7CFE400();
  v4 = sub_1B7CFEED0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, v4, "Finished scheduling reindexing", v5, 2u);
    MEMORY[0x1B8CB0E70](v5, -1, -1);
  }

  v6 = [objc_opt_self() _notifyPTasksUpdated];
  return a1(v6);
}

uint64_t sub_1B7C35B6C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = objc_opt_self();
  [v10 setReindexSchedulingLastRowID_];
  [v10 setReindexSchedulingInProgress_];
  v21[0] = 0;
  v11 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v21];
  v12 = v21[0];
  if (v11)
  {
    v13 = sub_1B7CFE020();
    v15 = v14;

    v16 = sub_1B7CFE010();
    sub_1B7C204B0(v13, v15);
  }

  else
  {
    v17 = v12;
    v18 = sub_1B7CFDEC0();

    swift_willThrow();
    v16 = 0;
  }

  [v10 setReindexSchedulingContext_];

  if (a3 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_1B7CFE010();
  }

  [v10 setReindexSchedulingUserInfoData_];

  return sub_1B7C35FA4(a1, a2, a3, a4, a5);
}

void sub_1B7C35D30(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = ObjectType;
  v15[4] = sub_1B7C3D6B4;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1B7AE14D0;
  v15[3] = &unk_1F2FA3E00;
  v13 = _Block_copy(v15);
  v14 = a1;
  sub_1B7C3D3CC(a2, a3);

  [v5 _performHandoffBlock_];
  _Block_release(v13);
}

uint64_t sub_1B7C35FA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v38 = a4;
  v39 = a5;
  v40 = a2;
  v41 = a3;
  v37 = a1;
  v7 = sub_1B7CFE180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  sub_1B7C36318();
  sub_1B7CFE170();
  v42 = v12;
  v13 = sub_1B7CFE150();
  [v6 setLastReindexSchedulingID_];

  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  v15 = *(v8 + 16);
  v35 = v7;
  v15(&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v7);
  v16 = *(v8 + 80);
  v17 = v8;
  v36 = v8;
  v18 = (v16 + 32) & ~v16;
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v14;
  *(v21 + 24) = v6;
  (*(v17 + 32))(v21 + v18, v34, v7);
  v22 = (v21 + v19);
  v23 = v39;
  *v22 = v38;
  v22[1] = v23;
  v24 = v37;
  *(v21 + v20) = v37;
  v25 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = v40;
  v26 = v41;
  *v25 = v40;
  v25[1] = v26;
  swift_beginAccess();
  v28 = *(v14 + 16);
  v29 = *(v14 + 24);

  v30 = v6;

  v31 = v24;
  sub_1B7C3D3CC(v27, v26);
  *(v14 + 16) = sub_1B7C3D51C;
  *(v14 + 24) = v21;
  sub_1B7AE15D4(v28, v29);
  aBlock[4] = sub_1B7C3D51C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7AE14D0;
  aBlock[3] = &unk_1F2FA3CE8;
  v32 = _Block_copy(aBlock);

  [v30 _performHandoffBlock_];
  _Block_release(v32);
  (*(v36 + 8))(v42, v35);
}

id sub_1B7C36318()
{
  v1 = v0;
  v2 = sub_1B7C107FC(&qword_1EBA525D8, &qword_1B7D0CB88);
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v15 - v4;
  v6 = [v1 lastReindexSchedulingID];
  if (v6)
  {
    v7 = v6;
    sub_1B7CFE160();

    v8 = sub_1B7CFE180();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    sub_1B7AEE190(v5, &qword_1EBA525D8, &qword_1B7D0CB88);
    if (qword_1EBA50EC0 != -1)
    {
      swift_once();
    }

    v9 = sub_1B7CFE420();
    sub_1B7AD9040(v9, qword_1EBA5DA38);
    v10 = sub_1B7CFE400();
    v11 = sub_1B7CFEED0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B7AD5000, v10, v11, "Invalidaating prior reindex scheduling job", v12, 2u);
      MEMORY[0x1B8CB0E70](v12, -1, -1);
    }

    return [v1 setLastReindexSchedulingID_];
  }

  else
  {
    v14 = sub_1B7CFE180();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    return sub_1B7AEE190(v5, &qword_1EBA525D8, &qword_1B7D0CB88);
  }
}

uint64_t sub_1B7C3659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void))
{
  sub_1B7AE3F68();
  if (a1)
  {
    v9 = objc_opt_self();
    v10 = sub_1B7CFE980();
    v11 = [v9 _dataForUserInfo_];

    if (v11)
    {
      v12 = sub_1B7CFE020();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xF000000000000000;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0xB000000000000000;
  }

  v15 = *(sub_1B7C40CA8(a2) + 16);
  v16 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v18 = v16[2];
  v17 = v16[3];
  v19 = v18 + 1;
  v48 = v14;
  v20 = v12;
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1B7AE3A9C((v17 > 1), v18 + 1, 1, v16);
  }

  v21 = MEMORY[0x1E69E6810];
  v51 = MEMORY[0x1E69E6810];
  v52 = &off_1F2FA8A98;
  *&v50 = v15;
  v16[2] = v19;
  sub_1B7AE910C(&v50, &v16[5 * v18 + 4]);
  v22 = v16[3];
  if ((v18 + 2) > (v22 >> 1))
  {
    v16 = sub_1B7AE3A9C((v22 > 1), v18 + 2, 1, v16);
  }

  v51 = v21;
  v52 = &off_1F2FA8A98;
  *&v50 = a2;
  v16[2] = v18 + 2;
  sub_1B7AE910C(&v50, &v16[5 * v19 + 4]);
  v23 = [objc_opt_self() priorityForFlag_];
  v25 = v16[2];
  v24 = v16[3];
  v26 = v25 + 1;
  if (v25 >= v24 >> 1)
  {
    v43 = v23;
    v16 = sub_1B7AE3A9C((v24 > 1), v25 + 1, 1, v16);
    v23 = v43;
  }

  v27 = MEMORY[0x1E69E6530];
  v51 = MEMORY[0x1E69E6530];
  v52 = &off_1F2FA89F8;
  *&v50 = v23;
  v16[2] = v26;
  sub_1B7AE910C(&v50, &v16[5 * v25 + 4]);
  v28 = v16[3];
  v29 = v25 + 2;
  if ((v25 + 2) > (v28 >> 1))
  {
    v16 = sub_1B7AE3A9C((v28 > 1), v25 + 2, 1, v16);
  }

  v51 = v21;
  v52 = &off_1F2FA8A98;
  *&v50 = a3;
  v16[2] = v29;
  sub_1B7AE910C(&v50, &v16[5 * v26 + 4]);
  v30 = v16[3];
  if ((v25 + 3) > (v30 >> 1))
  {
    v16 = sub_1B7AE3A9C((v30 > 1), v25 + 3, 1, v16);
  }

  v31 = v20;
  v51 = v27;
  v52 = &off_1F2FA89F8;
  *&v50 = a4;
  v16[2] = v25 + 3;
  sub_1B7AE910C(&v50, &v16[5 * v29 + 4]);
  v32 = sub_1B7C3DA5C(a4, a2);
  v34 = v16[2];
  v33 = v16[3];
  v35 = v34 + 1;
  if (v34 >= v33 >> 1)
  {
    v44 = v32;
    v16 = sub_1B7AE3A9C((v33 > 1), v34 + 1, 1, v16);
    v32 = v44;
  }

  v51 = v27;
  v52 = &off_1F2FA89F8;
  *&v50 = v32;
  v16[2] = v35;
  sub_1B7AE910C(&v50, &v16[5 * v34 + 4]);
  sub_1B7C3D3B8(v31, v48);
  v36 = v16[3];
  v37 = v34 + 2;
  if ((v34 + 2) > (v36 >> 1))
  {
    v16 = sub_1B7AE3A9C((v36 > 1), v34 + 2, 1, v16);
  }

  v51 = sub_1B7C107FC(&unk_1EBA525C0, &qword_1B7D0CB80);
  v52 = sub_1B7C3D3E0();
  *&v50 = v31;
  *(&v50 + 1) = v48;
  v16[2] = v37;
  sub_1B7AE910C(&v50, &v16[5 * v35 + 4]);
  v38 = v16[3];
  if ((v34 + 3) > (v38 >> 1))
  {
    v16 = sub_1B7AE3A9C((v38 > 1), v34 + 3, 1, v16);
  }

  v51 = v27;
  v52 = &off_1F2FA89F8;
  *&v50 = a5;
  v16[2] = v34 + 3;
  sub_1B7AE910C(&v50, &v16[5 * v37 + 4]);
  v39 = objc_opt_self();
  if ([v39 _shouldExplainQueryPlans])
  {
    v40 = 4;
  }

  else
  {
    v40 = 0;
  }

  v41 = sub_1B7C154F8(0xD00000000000017CLL, 0x80000001B7D52B10, v16, v40);

  [v39 _notifyPTasksUpdatedImmediately_];
  a7(v41, 0);
  sub_1B7C3D4E0(v31, v48);
}

void sub_1B7C36D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_1B7CFECC0();
    if (a2)
    {
LABEL_3:
      v6 = sub_1B7CFDEB0();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1B7C36E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1B7C3BB68(a1);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = v15;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = v14;
  v16[7] = a5;
  v16[8] = a2;
  v16[9] = a3;
  v16[10] = a4;
  v16[11] = v23;
  swift_beginAccess();
  v17 = *(v15 + 16);
  v18 = *(v15 + 24);
  *(v15 + 16) = sub_1B7C3D380;
  *(v15 + 24) = v16;

  v19 = v23;
  sub_1B7AE15D4(v17, v18);
  aBlock[4] = sub_1B7C3D380;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7AE14D0;
  aBlock[3] = &unk_1F2FA3BF8;
  v20 = _Block_copy(aBlock);

  [v19 _performHandoffBlock_];
  _Block_release(v20);
}

void sub_1B7C37018(uint64_t a1, uint64_t a2, void (*a3)(void *), void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  swift_beginAccess();
  v19 = *(a1 + 16);
  if (!*(v19 + 16))
  {
    swift_beginAccess();
    v25 = *(a2 + 16);
    v26 = *(a2 + 24);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    sub_1B7AE15D4(v25, v26);
    [objc_opt_self() _notifyPTasksUpdatedImmediately_];
    swift_beginAccess();
    v27 = *(a5 + 16);
    v28 = v27;
    a3(v27);

    return;
  }

  swift_beginAccess();
  v20 = *(v19 + 16);
  if (v20)
  {
    v63 = a8;
    v64 = *(v19 + 32);

    sub_1B7C901EC(0, 1);
    swift_endAccess();
    sub_1B7AE3F68();
    if (a6)
    {
      v21 = objc_opt_self();
      v22 = sub_1B7CFE980();
      v23 = [v21 _dataForUserInfo_];

      if (v23)
      {
        v65 = sub_1B7CFE020();
        a6 = v24;
      }

      else
      {
        v65 = 0;
        a6 = 0xF000000000000000;
      }
    }

    else
    {
      v65 = 0;
      a6 = 0xB000000000000000;
    }

    v29 = MEMORY[0x1E69E7CC0];
    v72 = MEMORY[0x1E69E7CC0];
    v73 = 0xD000000000000081;
    v74 = 0x80000001B7D525F0;
    a3 = *(sub_1B7C40CA8(a7) + 16);
    a4 = sub_1B7AE3A9C(0, 1, 1, v29);
    v19 = a4[2];
    v20 = a4[3];
    v10 = v19 + 1;
    v66 = a2;
    if (v19 < v20 >> 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  a4 = sub_1B7AE3A9C((v20 > 1), v10, 1, a4);
LABEL_10:
  v30 = MEMORY[0x1E69E6810];
  v69 = MEMORY[0x1E69E6810];
  v70 = &off_1F2FA8A98;
  *&aBlock = a3;
  a4[2] = v10;
  sub_1B7AE910C(&aBlock, &a4[5 * v19 + 4]);
  v72 = a4;
  v73 = 0xD000000000000086;
  v74 = 0x80000001B7D52680;
  v31 = a4[3];
  if ((v19 + 2) > (v31 >> 1))
  {
    a4 = sub_1B7AE3A9C((v31 > 1), v19 + 2, 1, a4);
  }

  v69 = v30;
  v70 = &off_1F2FA8A98;
  *&aBlock = a7;
  a4[2] = v19 + 2;
  sub_1B7AE910C(&aBlock, &a4[5 * v10 + 4]);
  v72 = a4;
  v73 = 0xD00000000000008BLL;
  v74 = 0x80000001B7D52710;
  v32 = [objc_opt_self() priorityForFlag_];
  v34 = a4[2];
  v33 = a4[3];
  v35 = v34 + 1;
  if (v34 >= v33 >> 1)
  {
    v61 = v32;
    a4 = sub_1B7AE3A9C((v33 > 1), v34 + 1, 1, a4);
    v32 = v61;
  }

  v69 = MEMORY[0x1E69E6530];
  v70 = &off_1F2FA89F8;
  *&aBlock = v32;
  a4[2] = v35;
  sub_1B7AE910C(&aBlock, &a4[5 * v34 + 4]);
  v72 = a4;
  v73 = 0xD000000000000090;
  v74 = 0x80000001B7D527A0;
  v36 = a4[3];
  v37 = v34 + 2;
  v38 = a6;
  if ((v34 + 2) > (v36 >> 1))
  {
    a4 = sub_1B7AE3A9C((v36 > 1), v34 + 2, 1, a4);
  }

  v69 = v30;
  v70 = &off_1F2FA8A98;
  *&aBlock = v63;
  a4[2] = v37;
  sub_1B7AE910C(&aBlock, &a4[5 * v35 + 4]);
  v72 = a4;
  v73 = 0xD000000000000095;
  v74 = 0x80000001B7D52840;
  v39 = a4[3];
  if ((v34 + 3) > (v39 >> 1))
  {
    a4 = sub_1B7AE3A9C((v39 > 1), v34 + 3, 1, a4);
  }

  v70 = &off_1F2FA89F8;
  v69 = MEMORY[0x1E69E6530];
  *&aBlock = a9;
  a4[2] = v34 + 3;
  sub_1B7AE910C(&aBlock, &a4[5 * v37 + 4]);
  v72 = a4;
  v73 = 0xD00000000000009ALL;
  v74 = 0x80000001B7D528E0;
  v40 = sub_1B7C3DA5C(a9, a7);
  v42 = a4[2];
  v41 = a4[3];
  v43 = v42 + 1;
  if (v42 >= v41 >> 1)
  {
    v62 = v40;
    a4 = sub_1B7AE3A9C((v41 > 1), v42 + 1, 1, a4);
    v40 = v62;
  }

  v70 = &off_1F2FA89F8;
  v69 = MEMORY[0x1E69E6530];
  *&aBlock = v40;
  a4[2] = v43;
  sub_1B7AE910C(&aBlock, &a4[5 * v42 + 4]);
  v72 = a4;
  v73 = 0xD00000000000009FLL;
  v74 = 0x80000001B7D52980;
  sub_1B7C3D3B8(v65, a6);
  v44 = a4[3];
  v45 = v42 + 2;
  if ((v42 + 2) > (v44 >> 1))
  {
    a4 = sub_1B7AE3A9C((v44 > 1), v42 + 2, 1, a4);
  }

  v69 = sub_1B7C107FC(&unk_1EBA525C0, &qword_1B7D0CB80);
  v70 = sub_1B7C3D3E0();
  *&aBlock = v65;
  *(&aBlock + 1) = a6;
  v46 = a6;
  a4[2] = v45;
  sub_1B7AE910C(&aBlock, &a4[5 * v43 + 4]);
  v72 = a4;
  v73 = 0xD0000000000000B9;
  v74 = 0x80000001B7D52A20;
  v47 = sub_1B7AF5664(v64);

  sub_1B7AF3098(v48);
  v49 = *(v47 + 16);

  *&aBlock = sub_1B7AF7F10(0x293F28, 0xE300000000000000, v49);
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v50 = sub_1B7CFEA10();
  v52 = v51;

  MEMORY[0x1B8CADCA0](v50, v52);

  MEMORY[0x1B8CADCA0](0xD00000000000002ELL, 0x80000001B7D52AE0);
  v53 = v73;
  v54 = v74;
  v55 = v72;
  if ([objc_opt_self() _shouldExplainQueryPlans])
  {
    v56 = 4;
  }

  else
  {
    v56 = 0;
  }

  sub_1B7CA46D8(v53, v54, v55, v56);

  v57 = v46;
  swift_beginAccess();
  v58 = *(v66 + 16);
  if (v58)
  {
    v59 = *(v66 + 24);
    v70 = *(v66 + 16);
    v71 = v59;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v68 = sub_1B7AE14D0;
    v69 = &unk_1F2F9F640;
    v60 = _Block_copy(&aBlock);
    sub_1B7AD8F38(v58, v59);

    [a10 _performHandoffBlock_];
    sub_1B7C3D4E0(v65, v57);

    _Block_release(v60);
    sub_1B7AE15D4(v58, v59);
  }

  else
  {
    sub_1B7C3D4E0(v65, v38);
  }
}

void sub_1B7C37AB0(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = sub_1B7AE3F68();
  v43 = 0;
  v44 = 0xE000000000000000;
  v8 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD00000000000002ALL, 0x80000001B7D525C0);
  v9 = sub_1B7AE3A9C(0, 1, 1, v8);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v41 = MEMORY[0x1E69E6810];
  v42 = &off_1F2FA8A98;
  *&v40 = a1;
  v9[2] = v11 + 1;
  sub_1B7AE910C(&v40, &v9[5 * v11 + 4]);
  v45 = v9;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](0x616C6620444E4120, 0xED0000204E492067);
  if (a2 >> 62)
  {
    v12 = sub_1B7CFF120();
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    goto LABEL_18;
  }

  *&v40 = MEMORY[0x1E69E7CC0];
  sub_1B7C31320(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v39 = v7;
    v14 = a4;
    v13 = v40;
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v12; ++i)
      {
        v16 = [MEMORY[0x1B8CAE380](i a2)];
        swift_unknownObjectRelease();
        *&v40 = v13;
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1B7C31320((v17 > 1), v18 + 1, 1);
          v13 = v40;
        }

        *(v13 + 16) = v18 + 1;
        *(v13 + 8 * v18 + 32) = v16;
      }
    }

    else
    {
      v19 = (a2 + 32);
      do
      {
        v20 = [*v19 integerValue];
        *&v40 = v13;
        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        if (v22 >= v21 >> 1)
        {
          v23 = v20;
          sub_1B7C31320((v21 > 1), v22 + 1, 1);
          v20 = v23;
          v13 = v40;
        }

        *(v13 + 16) = v22 + 1;
        *(v13 + 8 * v22 + 32) = v20;
        ++v19;
        --v12;
      }

      while (v12);
    }

    a4 = v14;
LABEL_18:
    v24 = sub_1B7C2F3B4(v13);

    sub_1B7AF57A0(v24);

    MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
    v25 = v43;
    v26 = v44;
    v27 = v45;
    v28 = objc_opt_self();
    if ([v28 _shouldExplainQueryPlans])
    {
      v29 = 4;
    }

    else
    {
      v29 = 0;
    }

    sub_1B7CA46D8(v25, v26, v27, v29);

    [v28 _notifyPTasksUpdatedImmediately_];
    a4(0);

    return;
  }

  __break(1u);
  swift_once();
  v30 = sub_1B7CFE420();
  sub_1B7AD9040(v30, qword_1EBA5DA38);
  v31 = a2;
  v32 = sub_1B7CFE400();
  v33 = sub_1B7CFEEF0();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    v36 = a2;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_1B7AD5000, v32, v33, "Failed to clear all tasks with error %@", v34, 0xCu);
    sub_1B7AEE190(v35, &qword_1EBA521E0, &unk_1B7D0CE60);
    MEMORY[0x1B8CB0E70](v35, -1, -1);
    MEMORY[0x1B8CB0E70](v34, -1, -1);
  }

  v38 = a2;
  a4(a2);
}

void sub_1B7C380E4(uint64_t a1, void (*a2)(void, void))
{
  sub_1B7AE3F68();
  v4 = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  if (v5)
  {
    v28 = a2;
    v6 = 0;
    v7 = 10000;
    v8 = *(a1 + 16);
    while (1)
    {
      v9 = v5 >= v7 ? v7 : v5;
      v10 = v6 + 10000;
      if (__OFADD__(v6, 10000))
      {
        break;
      }

      if (v5 >= v10)
      {
        v11 = v6 + 10000;
      }

      else
      {
        v11 = v5;
      }

      v29 = 0;
      v30 = 0xE000000000000000;
      v31 = v4;
      MEMORY[0x1B8CADCA0](0xD000000000000030, 0x80000001B7D52580);
      if (v11 < v6)
      {
        goto LABEL_25;
      }

      if (v8 == v9)
      {
        v12 = a1;
      }

      else
      {
        sub_1B7CBBE10(a1, a1 + 32, v6, (2 * v11) | 1);
        v12 = v18;
      }

      v13 = sub_1B7AF5664(v12);

      sub_1B7AF57A0(v13);

      MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
      v14 = v29;
      v15 = v30;
      v16 = v31;

      v17 = sub_1B7AE3B2C(v14, v15, 0);
      v29 = MEMORY[0x1E69E7CC0];

      sub_1B7AF1A7C(v16, v17, &v29, v17);

      swift_bridgeObjectRelease_n();
      sub_1B7C50BFC(v29);
      v8 += 10000;
      v7 += 10000;
      v6 += 10000;
      v4 = MEMORY[0x1E69E7CC0];
      if (v10 >= v5)
      {
        v4 = v32;
        a2 = v28;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    swift_once();
    v19 = sub_1B7CFE420();
    sub_1B7AD9040(v19, qword_1EBA5DA38);
    v20 = 0;
    v21 = sub_1B7CFE400();
    v22 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = 0;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1B7AD5000, v21, v22, "Failed to fetch remaining task GUIDs with error %@", v23, 0xCu);
      sub_1B7AEE190(v24, &qword_1EBA521E0, &unk_1B7D0CE60);
      MEMORY[0x1B8CB0E70](v24, -1, -1);
      MEMORY[0x1B8CB0E70](v23, -1, -1);
    }

    v27 = 0;
    (v7)(0, 0);
  }

  else
  {
LABEL_21:
    a2(v4, 0);
  }
}

uint64_t sub_1B7C38680()
{
  result = sub_1B7C386A4();
  qword_1EBA50C90 = result;
  unk_1EBA50C98 = v1;
  return result;
}

uint64_t sub_1B7C386A4()
{
  if (qword_1EDBE2DE0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDBE79A8;
  v1 = sub_1B7C3A764(0xD000000000000017, 0x80000001B7D52E80, 0xD00000000000001BLL, 0x80000001B7D52EA0, qword_1EDBE79A8);
  v3 = v2;
  v4 = sub_1B7C3A764(0x646564756C637865, 0xEF6E6F736165722ELL, 0xD000000000000013, 0x80000001B7D52EC0, v0);
  v6 = v5;
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000006ALL, 0x80000001B7D52EE0);
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000002BLL, 0x80000001B7D52F50);
  MEMORY[0x1B8CADCA0](v1, v3);
  MEMORY[0x1B8CADCA0](0x20444E4120, 0xE500000000000000);
  MEMORY[0x1B8CADCA0](v4, v6);
  MEMORY[0x1B8CADCA0](0x204E4548542029, 0xE700000000000000);
  MEMORY[0x1B8CADCA0](0xD000000000000017, 0x80000001B7D52E80);
  MEMORY[0x1B8CADCA0](0xD000000000000047, 0x80000001B7D52F80);
  MEMORY[0x1B8CADCA0](v1, v3);
  MEMORY[0x1B8CADCA0](0x544F4E20444E4120, 0xE900000000000020);
  MEMORY[0x1B8CADCA0](v4, v6);
  MEMORY[0x1B8CADCA0](0x204E4548542029, 0xE700000000000000);
  MEMORY[0x1B8CADCA0](0x646564756C637865, 0xEF6E6F736165722ELL);
  MEMORY[0x1B8CADCA0](0xD00000000000004BLL, 0x80000001B7D52FD0);
  MEMORY[0x1B8CADCA0](v1, v3);
  MEMORY[0x1B8CADCA0](0x20444E4120, 0xE500000000000000);
  MEMORY[0x1B8CADCA0](v4, v6);
  MEMORY[0x1B8CADCA0](0x204E4548542029, 0xE700000000000000);
  MEMORY[0x1B8CADCA0](0xD000000000000017, 0x80000001B7D52E80);
  MEMORY[0x1B8CADCA0](0xD000000000000077, 0x80000001B7D53020);
  MEMORY[0x1B8CADCA0](0xD000000000000017, 0x80000001B7D52E80);
  MEMORY[0x1B8CADCA0](0xD00000000000003FLL, 0x80000001B7D530A0);
  MEMORY[0x1B8CADCA0](0x646564756C637865, 0xEF6E6F736165722ELL);
  MEMORY[0x1B8CADCA0](0x29444E450ALL, 0xE500000000000000);
  MEMORY[0x1B8CADCA0](0, 0xE000000000000000);

  MEMORY[0x1B8CADCA0](0xD000000000000018, 0x80000001B7D530E0);
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000002BLL, 0x80000001B7D52F50);
  MEMORY[0x1B8CADCA0](v1, v3);
  MEMORY[0x1B8CADCA0](0x20444E4120, 0xE500000000000000);
  MEMORY[0x1B8CADCA0](v4, v6);
  MEMORY[0x1B8CADCA0](0x204E4548542029, 0xE700000000000000);
  MEMORY[0x1B8CADCA0](0xD000000000000020, 0x80000001B7D53100);
  MEMORY[0x1B8CADCA0](0xD000000000000047, 0x80000001B7D52F80);
  MEMORY[0x1B8CADCA0](v1, v3);
  MEMORY[0x1B8CADCA0](0x544F4E20444E4120, 0xE900000000000020);
  MEMORY[0x1B8CADCA0](v4, v6);
  MEMORY[0x1B8CADCA0](0x204E4548542029, 0xE700000000000000);
  MEMORY[0x1B8CADCA0](0xD000000000000018, 0x80000001B7D53130);
  MEMORY[0x1B8CADCA0](0xD00000000000004BLL, 0x80000001B7D52FD0);
  MEMORY[0x1B8CADCA0](v1, v3);
  MEMORY[0x1B8CADCA0](0x20444E4120, 0xE500000000000000);
  MEMORY[0x1B8CADCA0](v4, v6);
  MEMORY[0x1B8CADCA0](0x204E4548542029, 0xE700000000000000);
  MEMORY[0x1B8CADCA0](0xD000000000000020, 0x80000001B7D53100);
  MEMORY[0x1B8CADCA0](0xD000000000000077, 0x80000001B7D53020);
  MEMORY[0x1B8CADCA0](0xD000000000000020, 0x80000001B7D53100);
  MEMORY[0x1B8CADCA0](0xD00000000000003FLL, 0x80000001B7D530A0);
  MEMORY[0x1B8CADCA0](0xD000000000000018, 0x80000001B7D53130);
  MEMORY[0x1B8CADCA0](0x29444E450ALL, 0xE500000000000000);
  MEMORY[0x1B8CADCA0](0, 0xE000000000000000);

  MEMORY[0x1B8CADCA0](0xD000000000000061, 0x80000001B7D53150);
  MEMORY[0x1B8CADCA0](v1, v3);

  MEMORY[0x1B8CADCA0](0x20444E4120, 0xE500000000000000);
  MEMORY[0x1B8CADCA0](v4, v6);

  MEMORY[0x1B8CADCA0](0xD00000000000026ELL, 0x80000001B7D531C0);
  return 0;
}

uint64_t sub_1B7C38CD8(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void *a6, uint64_t a7, unint64_t a8)
{
  v81 = a8;
  v80 = a7;
  v79 = a6;
  v86 = a3;
  v12 = sub_1B7CFE180();
  v87 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v68[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = sub_1B7C107FC(&unk_1EBA525F0, &qword_1B7D0CB90);
  MEMORY[0x1EEE9AC00](v85);
  v77 = &v68[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68[-v16];
  v18 = sub_1B7C107FC(&qword_1EBA525D8, &qword_1B7D0CB88);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v75 = &v68[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v78 = &v68[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v76 = &v68[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v68[-v25];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v68[-v28];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v68[-v31];
  swift_beginAccess();
  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v83 = a4;
  v74 = a2;
  v33 = [a2 lastReindexSchedulingID];
  v82 = a5;
  if (v33)
  {
    v34 = v33;
    sub_1B7CFE160();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = v87;
  v37 = *(v87 + 56);
  v37(v32, v35, 1, v12);
  v38 = *(v36 + 16);
  v71 = v36 + 16;
  v70 = v38;
  v38(v29, v86, v12);
  v72 = v37;
  v37(v29, 0, 1, v12);
  v39 = *(v85 + 48);
  sub_1B7C3D5CC(v32, v17);
  sub_1B7C3D5CC(v29, &v17[v39]);
  v40 = *(v36 + 48);
  if (v40(v17, 1, v12) == 1)
  {
    v73 = v40;
    sub_1B7AEE190(v29, &qword_1EBA525D8, &qword_1B7D0CB88);
    sub_1B7AEE190(v32, &qword_1EBA525D8, &qword_1B7D0CB88);
    if (v73(&v17[v39], 1, v12) == 1)
    {
      sub_1B7AEE190(v17, &qword_1EBA525D8, &qword_1B7D0CB88);
      a4 = v83;
      v41 = v74;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_1B7C3D5CC(v17, v26);
  if (v40(&v17[v39], 1, v12) == 1)
  {
    sub_1B7AEE190(v29, &qword_1EBA525D8, &qword_1B7D0CB88);
    sub_1B7AEE190(v32, &qword_1EBA525D8, &qword_1B7D0CB88);
    (*(v87 + 8))(v26, v12);
LABEL_10:
    sub_1B7AEE190(v17, &unk_1EBA525F0, &qword_1B7D0CB90);
    a4 = v83;
LABEL_22:
    swift_beginAccess();
    v54 = *(a1 + 16);
    v55 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v56 = sub_1B7AE15D4(v54, v55);
    return a4(v56);
  }

  v73 = v40;
  (*(v87 + 32))(v84, &v17[v39], v12);
  sub_1B7AE10D0(&qword_1EBA50F98, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v69 = sub_1B7CFEA20();
  v42 = *(v87 + 8);
  v42(v84, v12);
  sub_1B7AEE190(v29, &qword_1EBA525D8, &qword_1B7D0CB88);
  sub_1B7AEE190(v32, &qword_1EBA525D8, &qword_1B7D0CB88);
  v42(v26, v12);
  sub_1B7AEE190(v17, &qword_1EBA525D8, &qword_1B7D0CB88);
  a4 = v83;
  v41 = v74;
  if ((v69 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  sub_1B7C3BE80(v79, v80, v81);
  swift_beginAccess();
  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v43 = [v41 lastReindexSchedulingID];
  if (v43)
  {
    v44 = v76;
    v45 = v43;
    sub_1B7CFE160();

    v46 = 0;
    v47 = v77;
  }

  else
  {
    v46 = 1;
    v47 = v77;
    v44 = v76;
  }

  v48 = v72;
  v72(v44, v46, 1, v12);
  v49 = v78;
  v70(v78, v86, v12);
  v48(v49, 0, 1, v12);
  v50 = *(v85 + 48);
  sub_1B7C3D5CC(v44, v47);
  sub_1B7C3D5CC(v49, &v47[v50]);
  v51 = v73;
  if (v73(v47, 1, v12) == 1)
  {
    sub_1B7AEE190(v49, &qword_1EBA525D8, &qword_1B7D0CB88);
    sub_1B7AEE190(v44, &qword_1EBA525D8, &qword_1B7D0CB88);
    if (v51(&v47[v50], 1, v12) == 1)
    {
      sub_1B7AEE190(v47, &qword_1EBA525D8, &qword_1B7D0CB88);
      v52 = v74;
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v53 = v75;
  sub_1B7C3D5CC(v47, v75);
  if (v51(&v47[v50], 1, v12) == 1)
  {
    sub_1B7AEE190(v78, &qword_1EBA525D8, &qword_1B7D0CB88);
    sub_1B7AEE190(v44, &qword_1EBA525D8, &qword_1B7D0CB88);
    (*(v87 + 8))(v53, v12);
LABEL_21:
    sub_1B7AEE190(v47, &unk_1EBA525F0, &qword_1B7D0CB90);
    goto LABEL_22;
  }

  v58 = v87;
  v59 = &v47[v50];
  v60 = v84;
  (*(v87 + 32))(v84, v59, v12);
  sub_1B7AE10D0(&qword_1EBA50F98, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  LODWORD(v86) = sub_1B7CFEA20();
  v61 = *(v58 + 8);
  v61(v60, v12);
  sub_1B7AEE190(v78, &qword_1EBA525D8, &qword_1B7D0CB88);
  sub_1B7AEE190(v44, &qword_1EBA525D8, &qword_1B7D0CB88);
  v61(v53, v12);
  sub_1B7AEE190(v77, &qword_1EBA525D8, &qword_1B7D0CB88);
  v52 = v74;
  if ((v86 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  v62 = objc_opt_self();
  if ([v62 reindexSchedulingLastRowID] <= 0)
  {
    swift_beginAccess();
    v66 = *(a1 + 16);
    v67 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    sub_1B7AE15D4(v66, v67);
    [v62 setReindexSchedulingInProgress_];
    [v62 setReindexSchedulingContext_];
    [v62 setReindexSchedulingLastRowID_];
    [v62 setReindexSchedulingUserInfoData_];
    v56 = sub_1B7C36318();
    return a4(v56);
  }

  result = swift_beginAccess();
  v63 = *(a1 + 16);
  if (v63)
  {
    v64 = *(a1 + 24);
    aBlock[4] = *(a1 + 16);
    aBlock[5] = v64;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B7AE14D0;
    aBlock[3] = &unk_1F2FA3D10;
    v65 = _Block_copy(aBlock);
    sub_1B7AD8F38(v63, v64);

    [v62 reindexSchedulingBatchDelay];
    [v52 _performHandoffBlock_delay_];
    _Block_release(v65);
    return sub_1B7AE15D4(v63, v64);
  }

  return result;
}

uint64_t sub_1B7C39784(void *a1, uint64_t a2, unint64_t a3, void (*a4)(__n128))
{
  sub_1B7AE3F68();
  v8 = [a1 laneOverride];
  v40 = a3;
  if (v8)
  {
    v9 = v8;
    v39 = [v8 unsignedIntegerValue];
  }

  else
  {
    v39 = [objc_opt_self() laneForFlag:3 reason:{objc_msgSend(a1, sel_reason)}];
  }

  v10 = *(sub_1B7C40CA8(3) + 16);
  v44 = MEMORY[0x1E69E7CC0];
  v45 = 0xD00000000000007ELL;
  v46 = 0x80000001B7D53430;
  v11 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = v11[2];
  v12 = v11[3];
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1B7AE3A9C((v12 > 1), v13 + 1, 1, v11);
  }

  v15 = MEMORY[0x1E69E6810];
  v42 = MEMORY[0x1E69E6810];
  v43 = &off_1F2FA8A98;
  *&v41 = v10;
  v11[2] = v14;
  sub_1B7AE910C(&v41, &v11[5 * v13 + 4]);
  v44 = v11;
  v45 = 0xD000000000000083;
  v46 = 0x80000001B7D534B0;
  v16 = v11[3];
  if ((v13 + 2) > (v16 >> 1))
  {
    v11 = sub_1B7AE3A9C((v16 > 1), v13 + 2, 1, v11);
  }

  v42 = v15;
  v43 = &off_1F2FA8A98;
  *&v41 = 3;
  v11[2] = v13 + 2;
  sub_1B7AE910C(&v41, &v11[5 * v14 + 4]);
  v44 = v11;
  v45 = 0xD000000000000088;
  v46 = 0x80000001B7D53540;
  if (qword_1EBA50DE8 != -1)
  {
    swift_once();
  }

  v17 = qword_1EBA5DA00;
  v18 = *(qword_1EBA5DA00 + 16);
  if (v18)
  {
    v19 = sub_1B7C41954();
    if (v20)
    {
      v38 = a4;
      a4 = *(*(v17 + 56) + 8 * v19);
      v13 = v11[2];
      v18 = v11[3];
      v17 = v13 + 1;
      if (v13 < v18 >> 1)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_26:
  v11 = sub_1B7AE3A9C((v18 > 1), v17, 1, v11);
LABEL_13:
  v21 = MEMORY[0x1E69E6530];
  v42 = MEMORY[0x1E69E6530];
  v43 = &off_1F2FA89F8;
  *&v41 = a4;
  v11[2] = v17;
  sub_1B7AE910C(&v41, &v11[5 * v13 + 4]);
  v44 = v11;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v23 = v11[2];
  v22 = v11[3];
  if (v23 >= v22 >> 1)
  {
    v11 = sub_1B7AE3A9C((v22 > 1), v23 + 1, 1, v11);
  }

  v42 = v15;
  v43 = &off_1F2FA8A98;
  *&v41 = v39;
  v11[2] = v23 + 1;
  sub_1B7AE910C(&v41, &v11[5 * v23 + 4]);
  v44 = v11;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v24 = [a1 reason];
  v26 = v11[2];
  v25 = v11[3];
  if (v26 >= v25 >> 1)
  {
    v36 = v24;
    v11 = sub_1B7AE3A9C((v25 > 1), v26 + 1, 1, v11);
    v24 = v36;
  }

  v42 = v21;
  v43 = &off_1F2FA89F8;
  *&v41 = v24;
  v11[2] = v26 + 1;
  sub_1B7AE910C(&v41, &v11[5 * v26 + 4]);
  v44 = v11;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v27 = sub_1B7C3DA5C([a1 reason], 3);
  v29 = v11[2];
  v28 = v11[3];
  if (v29 >= v28 >> 1)
  {
    v37 = v27;
    v11 = sub_1B7AE3A9C((v28 > 1), v29 + 1, 1, v11);
    v27 = v37;
  }

  v42 = v21;
  v43 = &off_1F2FA89F8;
  *&v41 = v27;
  v11[2] = v29 + 1;
  sub_1B7AE910C(&v41, &v11[5 * v29 + 4]);
  v44 = v11;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  sub_1B7C3D3CC(a2, v40);
  v31 = v11[2];
  v30 = v11[3];
  if (v31 >= v30 >> 1)
  {
    v11 = sub_1B7AE3A9C((v30 > 1), v31 + 1, 1, v11);
  }

  v42 = sub_1B7C107FC(&qword_1EBA52408, qword_1B7D13650);
  v43 = sub_1B7C3D464();
  *&v41 = a2;
  *(&v41 + 1) = v40;
  v11[2] = v31 + 1;
  sub_1B7AE910C(&v41, &v11[5 * v31 + 4]);
  v44 = v11;
  v32 = sub_1B7C3D3CC(a2, v40);
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000, v32);
  sub_1B7C2049C(a2, v40);
  MEMORY[0x1B8CADCA0](0xD00000000000002BLL, 0x80000001B7D535D0);
  if (qword_1EBA50C88 != -1)
  {
    swift_once();
  }

  MEMORY[0x1B8CADCA0](qword_1EBA50C90, unk_1EBA50C98);
  sub_1B7AF3098(MEMORY[0x1E69E7CC0]);
  v33 = v44;
  sub_1B7AE3B2C(v45, v46, 0);
  sub_1B7AF3FE4(v33);

  (v38)(v34);
}

uint64_t sub_1B7C39F8C(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1B7AE3F68();
  v7 = sub_1B7C3A29C(a1, a2, a3);
  v9 = v8;
  v11 = v10;
  v12 = v3;

  v13 = sub_1B7AE3B2C(v7, v9, 0);
  v14 = v12;
  sub_1B7C95CC8(v11, v13, v14, &v16);

  swift_bridgeObjectRelease_n();
  return v16;
}

uint64_t sub_1B7C3A29C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xE000000000000000;
  v23 = 0;
  *&v24 = 0xE000000000000000;
  v7 = MEMORY[0x1E69E7CC0];
  *(&v24 + 1) = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD00000000000008BLL, 0x80000001B7D524F0);
  sub_1B7C15098(a1);
  v22 = v24;
  if (*(a2 + 16))
  {
    v27 = a2;
    v28 = v7;
    v23 = 0x4220524544524F20;
    *&v24 = 0xEA00000000002059;
    sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    sub_1B7AF7FAC();
    v8 = sub_1B7CFEA10();
    MEMORY[0x1B8CADCA0](v8);

    sub_1B7AF3098(v7);
    sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7D0A7B0;
    *(inited + 32) = 0x4220524544524F20;
    v10 = inited + 32;
    *(inited + 40) = 0xEA00000000002059;
    *(inited + 48) = v7;
    sub_1B7CB5C48(inited);
    v12 = v11;
    v6 = v13;
    v7 = v14;
    swift_setDeallocating();
    sub_1B7C3D308(v10);
  }

  else
  {
    v12 = 0;
  }

  v15 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1B7AE3A9C((v16 > 1), v17 + 1, 1, v15);
  }

  v25 = MEMORY[0x1E69E6530];
  v26 = &off_1F2FA89F8;
  v23 = a3;
  v15[2] = v17 + 1;
  sub_1B7AE910C(&v23, &v15[5 * v17 + 4]);
  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1B7D0CB60;
  *(v18 + 32) = 0;
  *(v18 + 40) = v22;
  *(v18 + 56) = v12;
  *(v18 + 64) = v6;
  *(v18 + 72) = v7;
  *(v18 + 80) = 0x202054494D494C20;
  *(v18 + 88) = 0xEA0000000000203FLL;
  *(v18 + 96) = v15;
  sub_1B7CB5C48(v18);
  v20 = v19;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v20;
}

uint64_t sub_1B7C3A5FC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_1B7C3A6B4(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1B7C3A5FC(a1, &a1[a2]);
  }

  sub_1B7CFDCC0();
  swift_allocObject();
  sub_1B7CFDC80();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1B7CFE000();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1B7C3A764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *(*a5 + 168);
  v11 = *(v10() + 16);

  if (!v11)
  {
    return 48;
  }

  sub_1B7CFF210();

  MEMORY[0x1B8CADCA0](a3, a4);
  MEMORY[0x1B8CADCA0](2112800, 0xE300000000000000);
  v24 = a5[2];
  v12 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v12);

  MEMORY[0x1B8CADCA0](0x20444E4120, 0xE500000000000000);
  MEMORY[0x1B8CADCA0](a1, a2);
  v13 = MEMORY[0x1B8CADCA0](0x28204E4920, 0xE500000000000000);
  v14 = (v10)(v13);
  swift_getKeyPath();
  v15 = *(v14 + 16);
  if (v15)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v15, 0);
    v16 = 32;
    do
    {
      swift_getAtKeyPath();
      v18 = *(v26 + 16);
      v17 = *(v26 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B7AECEEC((v17 > 1), v18 + 1, 1);
      }

      *(v26 + 16) = v18 + 1;
      v19 = v26 + 16 * v18;
      *(v19 + 32) = v24;
      *(v19 + 40) = v25;
      v16 += 8;
      --v15;
    }

    while (v15);
  }

  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v21 = sub_1B7CFEA10();
  v23 = v22;

  MEMORY[0x1B8CADCA0](v21, v23);

  MEMORY[0x1B8CADCA0](10537, 0xE200000000000000);
  return 40;
}

uint64_t sub_1B7C3AA1C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 < 3)
  {
    __break(1u);
    goto LABEL_44;
  }

  v2 = result;
  v3 = *(result + 72);
  if (v3 < 0xFFFFFFFF80000000)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  result = sqlite3_column_int64(*(result + 64), v3);
  if (result < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v1 == 3)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v4 = *(v2 + 88);
  if (v4 < 0xFFFFFFFF80000000)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v4 > 0x7FFFFFFF)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v5 = result;
  result = sqlite3_column_int64(*(v2 + 80), v4);
  if (result < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v1 < 9)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v6 = *(v2 + 168);
  if (v6 < 0xFFFFFFFF80000000)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v7 = result;
  v8 = *(v2 + 160);
  v9 = sqlite3_column_type(v8, *(v2 + 168));
  result = sub_1B7CD6250(v9);
  if (result == 4 && (result = sqlite3_column_type(v8, v6), result != 5))
  {
    v27 = sqlite3_column_bytes(v8, v6);
    if (v27 < 1)
    {
      v10 = 0;
      v11 = 0xC000000000000000;
    }

    else
    {
      v28 = v27;
      result = sqlite3_column_blob(v8, v6);
      if (!result)
      {
LABEL_71:
        __break(1u);
        return result;
      }

      v10 = sub_1B7C3A6B4(result, v28);
      v11 = v29;
    }

    v30 = objc_opt_self();
    sub_1B7C1A208(v10, v11);
    v31 = sub_1B7CFE010();
    v32 = [v30 _decodeUserInfoData_];

    if (v32)
    {
      v37 = sub_1B7CFE990();

      result = sub_1B7C204B0(v10, v11);
    }

    else
    {
      result = sub_1B7C204B0(v10, v11);
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  v12 = *(v2 + 40);
  if (v12 < 0xFFFFFFFF80000000)
  {
    goto LABEL_54;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  result = sqlite3_column_int64(*(v2 + 32), v12);
  v13 = *(v2 + 56);
  if (v13 < 0xFFFFFFFF80000000)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v13 > 0x7FFFFFFF)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v14 = result;
  v36 = v10;
  result = sqlite3_column_text(*(v2 + 48), v13);
  if (!result)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  result = sub_1B7CFEB80();
  v15 = *(v2 + 104);
  if (v15 < 0xFFFFFFFF80000000)
  {
    goto LABEL_58;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  result = sqlite3_column_int64(*(v2 + 96), v15);
  v16 = *(v2 + 120);
  if (v16 < 0xFFFFFFFF80000000)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v34 = result;
  v35 = v14;
  result = sqlite3_column_int64(*(v2 + 112), v16);
  if (result < 0)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v17 = *(v2 + 136);
  if (v17 < 0xFFFFFFFF80000000)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v17 > 0x7FFFFFFF)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v18 = result;
  v33 = v11;
  result = sqlite3_column_int64(*(v2 + 128), v17);
  v19 = *(v2 + 152);
  if (v19 < 0xFFFFFFFF80000000)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v19 > 0x7FFFFFFF)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v20 = result;
  result = sqlite3_column_int64(*(v2 + 144), v19);
  if (v1 == 9)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v21 = *(v2 + 184);
  if (v21 < 0xFFFFFFFF80000000)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v21 > 0x7FFFFFFF)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v22 = result;
  v23 = sqlite3_column_int64(*(v2 + 176), v21);
  v24 = sub_1B7CFEA30();

  if (v37)
  {
    v25 = sub_1B7CFE980();
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_allocWithZone(IMDPersistentTask) initWithRowID:v35 guid:v24 group:v5 flag:v7 flagPriority:v34 lane:v18 reason:v20 reasonPriority:v22 userInfo:v25 retryCount:v23];

  sub_1B7C2049C(v36, v33);
  return v26;
}

void sub_1B7C3AE7C(void *a1, unint64_t a2, unint64_t a3)
{
  v53 = a1;
  v56 = sub_1B7AE3F68();
  *&v70 = MEMORY[0x1E69E7CC0];
  sub_1B7CFF2C0();
  if (qword_1EDBE2DE0 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {

    sub_1B7CFF290();
    sub_1B7CFF2D0();
    sub_1B7CFF2E0();
    sub_1B7CFF2A0();
    if (qword_1EDBE2DE8 != -1)
    {
      swift_once();
    }

    sub_1B7CFF290();
    sub_1B7CFF2D0();
    sub_1B7CFF2E0();
    sub_1B7CFF2A0();
    if (qword_1EDBE2DF0 != -1)
    {
      swift_once();
    }

    sub_1B7CFF290();
    sub_1B7CFF2D0();
    sub_1B7CFF2E0();
    sub_1B7CFF2A0();
    v5 = v70;

    v6 = *(v70 + 16);
    if (!v6)
    {
      goto LABEL_47;
    }

LABEL_9:
    v57 = a2;
    a2 = 0;
    v58 = v5 & 0xC000000000000001;
    v52 = v5 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    v54 = v6;
    v55 = v5;
    v64 = a3;
    while (1)
    {
      if (v58)
      {
        v8 = MEMORY[0x1B8CAE380](a2);
      }

      else
      {
        if (a2 >= *(v5 + 16))
        {
          goto LABEL_44;
        }

        v8 = *(v52 + 8 * a2);
      }

      v9 = __OFADD__(a2++, 1);
      v59 = a2;
      if (v9)
      {
        break;
      }

      v10 = v57;
      if (!v57 || (v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_], *&v70 = v11, MEMORY[0x1EEE9AC00](v11), v51 = &v70, v12 = v68, v13 = sub_1B7C19BFC(sub_1B7C3D934, v50, v10), v68 = v12, v11, (v13 & 1) != 0))
      {
        a2 = v8[5];
        v62 = *(a2 + 16);
        if (v62)
        {
          v61 = a2 + 32;

          v14 = 0;
          v60 = a2;
          while (1)
          {
            if (v14 >= *(a2 + 16))
            {
              __break(1u);
              goto LABEL_43;
            }

            v15 = v8[6];
            v67 = *(v15 + 16);
            if (v67)
            {
              break;
            }

LABEL_22:
            if (++v14 == v62)
            {

              goto LABEL_11;
            }
          }

          v63 = v14;
          v16 = *(v61 + 8 * v14);
          v66 = v15 + 32;

          v17 = 0;
          v65 = v15;
          while (v17 < *(v15 + 16))
          {
            v73 = v17;
            v18 = *(v66 + 8 * v17);
            if (!a3 || (v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_], *&v70 = v19, MEMORY[0x1EEE9AC00](v19), v51 = &v70, v20 = v68, v21 = sub_1B7C19BFC(sub_1B7C3D934, v50, a3), v68 = v20, v19, (v21 & 1) == 0))
            {
              v22 = sub_1B7CFEF80();
              v23 = *(v22 + 16);
              v69 = v22;
              if (v23)
              {
                v24 = (v22 + 32);
                do
                {
                  v26 = *v24++;
                  v25 = v26;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v7 = sub_1B7CA2634(0, v7[2] + 1, 1, v7);
                  }

                  v28 = v7[2];
                  v27 = v7[3];
                  if (v28 >= v27 >> 1)
                  {
                    v7 = sub_1B7CA2634((v27 > 1), v28 + 1, 1, v7);
                  }

                  v7[2] = v28 + 1;
                  v29 = &v7[4 * v28];
                  v29[4] = v16;
                  v29[5] = v8;
                  v29[6] = v25;
                  v29[7] = v18;
                  --v23;
                }

                while (v23);
              }

              a3 = v64;
              v15 = v65;
            }

            v17 = v73 + 1;
            if (v73 + 1 == v67)
            {

              a2 = v60;
              v14 = v63;
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_41:

          goto LABEL_48;
        }
      }

LABEL_11:
      v5 = v55;
      a2 = v59;
      if (v59 == v54)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v30 = v70;
  v6 = sub_1B7CFF120();
  v5 = v30;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_47:

  v7 = MEMORY[0x1E69E7CC0];
LABEL_48:
  v65 = v7[2];
  if (v65)
  {
    v31 = 0;
    v66 = 0x80000001B7D53820;
    v32 = v7 + 7;
    while (v31 < v7[2])
    {
      v33 = *(v32 - 3);
      v34 = *(v32 - 2);
      v35 = *v32;
      v73 = *(v32 - 1);
      v69 = v35;

      v36 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v38 = v36[2];
      v37 = v36[3];
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1B7AE3A9C((v37 > 1), v38 + 1, 1, v36);
      }

      v72 = &off_1F2FA8A98;
      v71 = MEMORY[0x1E69E6810];
      v67 = v33;
      *&v70 = v33;
      v36[2] = v39;
      sub_1B7AE910C(&v70, &v36[5 * v38 + 4]);
      v40 = *(v34 + 16);
      v41 = v36[3];
      v42 = v38 + 2;
      if ((v38 + 2) > (v41 >> 1))
      {
        v36 = sub_1B7AE3A9C((v41 > 1), v38 + 2, 1, v36);
      }

      v72 = &off_1F2FA8A98;
      v71 = MEMORY[0x1E69E6810];
      *&v70 = v40;
      v36[2] = v42;
      sub_1B7AE910C(&v70, &v36[5 * v39 + 4]);
      v43 = v36[3];
      v44 = v38 + 3;
      if ((v38 + 3) > (v43 >> 1))
      {
        v36 = sub_1B7AE3A9C((v43 > 1), v38 + 3, 1, v36);
      }

      v72 = &off_1F2FA8A98;
      v71 = MEMORY[0x1E69E6810];
      *&v70 = v73;
      v36[2] = v44;
      sub_1B7AE910C(&v70, &v36[5 * v42 + 4]);
      v45 = v36[3];
      if ((v38 + 4) > (v45 >> 1))
      {
        v36 = sub_1B7AE3A9C((v45 > 1), v38 + 4, 1, v36);
      }

      v72 = &off_1F2FA89F8;
      v71 = MEMORY[0x1E69E6530];
      *&v70 = v69;
      v36[2] = v38 + 4;
      sub_1B7AE910C(&v70, &v36[5 * v44 + 4]);
      v46 = v68;
      v47 = sub_1B7AE3B2C(0xD00000000000006CLL, v66, 0);
      if (v46)
      {

        return;
      }

      v48 = v47;
      *&v70 = MEMORY[0x1E69E7CC0];

      sub_1B7AF2C24(v36, v48, &v70, v48);
      v68 = 0;

      v49 = *(v70 + 16);

      if (v49)
      {
        [v53 recordFlag:v67 lane:v73 reason:v69 count:1];
      }

      ++v31;

      v32 += 4;
      if (v65 == v31)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_63:
  }
}

uint64_t sub_1B7C3B758(uint64_t a1, void (**a2)(void))
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = objc_opt_self();
  _Block_copy(a2);
  if (![v4 reindexSchedulingInProgress])
  {
    if (qword_1EBA50EC0 != -1)
    {
      swift_once();
    }

    v15 = sub_1B7CFE420();
    sub_1B7AD9040(v15, qword_1EBA5DA38);
    v16 = sub_1B7CFE400();
    v17 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1B7AD5000, v16, v17, "Ignoring request to resume reindex scheduling from stored state as no reindexing state was recorded", v18, 2u);
      MEMORY[0x1B8CB0E70](v18, -1, -1);
    }

    goto LABEL_15;
  }

  v5 = [v4 reindexSchedulingContext];
  if (!v5)
  {
LABEL_5:
    if (qword_1EBA50EC0 != -1)
    {
      swift_once();
    }

    v11 = sub_1B7CFE420();
    sub_1B7AD9040(v11, qword_1EBA5DA38);
    v12 = sub_1B7CFE400();
    v13 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B7AD5000, v12, v13, "Ignoring request to resume reindex scheduling from stored state because indexing context decoding failed", v14, 2u);
      MEMORY[0x1B8CB0E70](v14, -1, -1);
    }

    [v4 setReindexSchedulingInProgress_];
LABEL_15:
    a2[2](a2);
    goto LABEL_16;
  }

  v6 = v5;
  v7 = sub_1B7CFE020();
  v9 = v8;

  sub_1B7AEE088(0, &qword_1EBA525E0, 0x1E696ACD0);
  sub_1B7AEE088(0, &qword_1EBA525E8, off_1E7CB50D0);
  v10 = sub_1B7CFEF20();
  if (!v10)
  {
    sub_1B7C204B0(v7, v9);
    goto LABEL_5;
  }

  v20 = v10;
  v21 = [v4 reindexSchedulingUserInfoData];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1B7CFE020();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xF000000000000000;
  }

  if (qword_1EBA50EC0 != -1)
  {
    swift_once();
  }

  v26 = sub_1B7CFE420();
  sub_1B7AD9040(v26, qword_1EBA5DA38);
  v27 = sub_1B7CFE400();
  v28 = sub_1B7CFEED0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1B7AD5000, v27, v28, "Resuming prior reindex scheduling job", v29, 2u);
    MEMORY[0x1B8CB0E70](v29, -1, -1);
  }

  sub_1B7C35FA4(v20, v23, v25, sub_1B7C3D50C, v3);
  sub_1B7C2049C(v23, v25);

  sub_1B7C204B0(v7, v9);
LABEL_16:
}

uint64_t sub_1B7C3BB68(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v6 = __OFADD__(v4, 5000);
      v4 += 5000;
      if (v6)
      {
        v4 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v3;
      if (v4 >= v2)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
LABEL_9:
    v26 = MEMORY[0x1E69E7CC0];
    result = sub_1B7C313B0(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      goto LABEL_61;
    }

    if (!v5)
    {
      if (!v2)
      {
        return v26;
      }

      v9 = 0;
LABEL_34:
      v17 = v9;
      while (1)
      {
        v18 = v17 + 5000;
        if (__OFADD__(v17, 5000))
        {
          goto LABEL_58;
        }

        if (v2 >= v18)
        {
          v19 = v17 + 5000;
        }

        else
        {
          v19 = v2;
        }

        v20 = v19 - v17;
        if (v19 < v17)
        {
          goto LABEL_59;
        }

        if (v9 < 0)
        {
          goto LABEL_60;
        }

        if (v20 == v2)
        {

          v21 = v1;
        }

        else
        {
          v21 = MEMORY[0x1E69E7CC0];
          if (v19 != v17)
          {
            if (v20 >= 1)
            {
              sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
              v21 = swift_allocObject();
              v24 = j__malloc_size(v21);
              v25 = v24 - 32;
              if (v24 < 32)
              {
                v25 = v24 - 17;
              }

              v21[2] = v20;
              v21[3] = 2 * (v25 >> 4);
            }

            result = swift_arrayInitWithCopy();
          }
        }

        v23 = *(v26 + 16);
        v22 = *(v26 + 24);
        if (v23 >= v22 >> 1)
        {
          result = sub_1B7C313B0((v22 > 1), v23 + 1, 1);
        }

        *(v26 + 16) = v23 + 1;
        *(v26 + 8 * v23 + 32) = v21;
        v17 = v18;
        if (v18 >= v2)
        {
          return v26;
        }
      }
    }

    v7 = 0;
    v8 = 0;
    while (v8 < v2)
    {
      if (v7 == 0x68DB8BAC710CBLL)
      {
        goto LABEL_56;
      }

      v9 = v8 + 5000;
      if (v2 >= (v8 + 5000))
      {
        v10 = v8 + 5000;
      }

      else
      {
        v10 = v2;
      }

      v11 = v10 - v8;
      if (v10 < v8)
      {
        goto LABEL_57;
      }

      if (v11 == v2)
      {

        v12 = v1;
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
        if (v10 != v8)
        {
          if (v11 >= 1)
          {
            sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
            v12 = swift_allocObject();
            v15 = j__malloc_size(v12);
            v16 = v15 - 32;
            if (v15 < 32)
            {
              v16 = v15 - 17;
            }

            v12[2] = v11;
            v12[3] = 2 * (v16 >> 4);
          }

          result = swift_arrayInitWithCopy();
        }
      }

      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1B7C313B0((v13 > 1), v14 + 1, 1);
      }

      ++v7;
      *(v26 + 16) = v14 + 1;
      *(v26 + 8 * v14 + 32) = v12;
      v8 = v9;
      if (v7 == v5)
      {
        if (v9 < v2)
        {
          goto LABEL_34;
        }

        return v26;
      }
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}