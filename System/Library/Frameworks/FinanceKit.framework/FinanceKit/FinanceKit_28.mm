uint64_t sub_1B743B5B0()
{
  sub_1B7205418(*(v0 + 376), &qword_1EB994BE0, &qword_1B782BC08);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B743B668(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 456) = v3;

  if (v3)
  {
    v9 = sub_1B743B8E4;
  }

  else
  {
    *(v8 + 464) = a3;
    sub_1B720A388(a1, a2);
    v9 = sub_1B743B7AC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B743B7AC()
{
  PrismWebServiceRegisterTransactionResponse.init(httpResponse:)(*(v0 + 464));
  (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
  sub_1B743DE0C(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B743B8E4()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  sub_1B743DE0C((v0 + 18));
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B743B9AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1[3])
  {
    v25 = a1[3];
    v26 = a1[2];
    v4 = a1[5];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = 0xE300000000000000;
    v26 = 7104878;
    v4 = a1[5];
    if (v4)
    {
LABEL_3:
      v23 = v4;
      v24 = a1[4];
      v5 = a1[7];
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v23 = 0xE300000000000000;
  v24 = 7104878;
  v5 = a1[7];
  if (v5)
  {
LABEL_4:
    v21 = v5;
    v22 = a1[6];
    v6 = a1[9];
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    v19 = 0xE300000000000000;
    v20 = 7104878;
    v7 = a1[12];
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v21 = 0xE300000000000000;
  v22 = 7104878;
  v6 = a1[9];
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  v19 = v6;
  v20 = a1[8];
  v7 = a1[12];
  if (v7)
  {
LABEL_6:
    v17 = v7;
    v18 = a1[11];
    goto LABEL_12;
  }

LABEL_11:
  v17 = 0xE300000000000000;
  v18 = 7104878;
LABEL_12:
  if (a1[14])
  {
    v15 = a1[14];
    v16 = a1[13];
    v8 = a1[16];
    if (v8)
    {
      goto LABEL_14;
    }

LABEL_17:
    v13 = 0xE300000000000000;
    v14 = 7104878;
    v9 = a1[18];
    if (v9)
    {
      goto LABEL_15;
    }

LABEL_18:
    v11 = 0xE300000000000000;
    v10 = 7104878;
    goto LABEL_19;
  }

  v15 = 0xE300000000000000;
  v16 = 7104878;
  v8 = a1[16];
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_14:
  v13 = v8;
  v14 = a1[15];
  v9 = a1[18];
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_15:
  v10 = a1[17];
  v11 = v9;
LABEL_19:

  result = sub_1B743DC80(a1);
  *a2 = v26;
  a2[1] = v25;
  a2[2] = v24;
  a2[3] = v23;
  a2[4] = v22;
  a2[5] = v21;
  a2[6] = v20;
  a2[7] = v19;
  a2[8] = v18;
  a2[9] = v17;
  a2[10] = v16;
  a2[11] = v15;
  a2[12] = v14;
  a2[13] = v13;
  a2[14] = v10;
  a2[15] = v11;
  return result;
}

uint64_t sub_1B743BBB0(uint64_t a1, int *a2)
{
  *(v3 + 16) = v2;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1B743BCB4;

  return v7(a1);
}

uint64_t sub_1B743BCB4()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1B743BF98;
  }

  else
  {
    v2 = sub_1B743BDC8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B743BDC8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B743BE9C;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v1, 0, 0, 0xD000000000000015, 0x80000001B787ECF0, sub_1B743E7A8, v2, v3);
}

uint64_t sub_1B743BE9C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B722ADB4, 0, 0);
}

uint64_t sub_1B743BF98()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B743C06C;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v1, 0, 0, 0xD000000000000015, 0x80000001B787ECF0, sub_1B743DE60, v2, v3);
}

uint64_t sub_1B743C06C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B743C168, 0, 0);
}

uint64_t sub_1B743C168(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

void sub_1B743C1D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8, &qword_1B781A1E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_sessionDelegateQueue);
  v10 = *(a2 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_session);
  v11 = *(a2 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_sessionDelegate);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v5 + 32))(v13 + v12, v8, v4);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  aBlock[4] = sub_1B743E5E8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B72A58C8;
  aBlock[3] = &block_descriptor_9;
  v14 = _Block_copy(aBlock);
  v15 = v10;
  v16 = v11;

  [v9 addOperationWithBlock_];
  _Block_release(v14);
}

id sub_1B743C3D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8, &qword_1B781A1E0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  if (*(a1 + OBJC_IVAR____TtC10FinanceKitP33_82FCA57B9514272BE863607579F9568E15SessionDelegate_sessionDidBecomeInvalid) == 1)
  {
    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v10 = sub_1B78000B8();
    __swift_project_value_buffer(v10, qword_1EDAF6550);
    v11 = sub_1B7800098();
    v12 = sub_1B78011D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B7198000, v11, v12, "Prism web service client session did become invalid already", v13, 2u);
      MEMORY[0x1B8CA7A40](v13, -1, -1);
    }

    return sub_1B7800D08();
  }

  else
  {
    (*(v7 + 16))(v9, a2, v6);
    v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v16 = swift_allocObject();
    (*(v7 + 32))(v16 + v15, v9, v6);
    v17 = (a1 + OBJC_IVAR____TtC10FinanceKitP33_82FCA57B9514272BE863607579F9568E15SessionDelegate_sessionDidBecomeInvalidHandler);
    v18 = *(a1 + OBJC_IVAR____TtC10FinanceKitP33_82FCA57B9514272BE863607579F9568E15SessionDelegate_sessionDidBecomeInvalidHandler);
    v19 = *(a1 + OBJC_IVAR____TtC10FinanceKitP33_82FCA57B9514272BE863607579F9568E15SessionDelegate_sessionDidBecomeInvalidHandler + 8);
    *v17 = sub_1B743E68C;
    v17[1] = v16;
    sub_1B71F4844(v18, v19);
    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v20 = sub_1B78000B8();
    __swift_project_value_buffer(v20, qword_1EDAF6550);
    v21 = sub_1B7800098();
    v22 = sub_1B78011B8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B7198000, v21, v22, "Invalidating Prism web service client session", v23, 2u);
      MEMORY[0x1B8CA7A40](v23, -1, -1);
    }

    return [a3 invalidateAndCancel];
  }
}

uint64_t PrismWebServiceClient.deinit()
{
  v1 = OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_baseURL;
  v2 = sub_1B77FF4F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1B743DC80(v0 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_clientInfo);
  v3 = OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_sessionID;
  v4 = sub_1B77FFA18();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_authenticator));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_signer));
  return v0;
}

uint64_t PrismWebServiceClient.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_baseURL;
  v2 = sub_1B77FF4F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1B743DC80(v0 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_clientInfo);
  v3 = OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_sessionID;
  v4 = sub_1B77FFA18();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_authenticator));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10FinanceKit21PrismWebServiceClient_signer));

  return swift_deallocClassInstance();
}

id sub_1B743C9C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1B743CA14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60, &qword_1B780CC30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7807CD0;
  strcpy((v2 + 32), "Content-Type");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  *(v2 + 48) = 0xD000000000000010;
  *(v2 + 56) = 0x80000001B7873B70;
  *&v37[0] = v2;
  sub_1B7244198(MEMORY[0x1E69E7CC0]);
  v3 = *&v37[0];
  v4 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BE8, &qword_1B782BC10) + 36));
  v5 = v4[5];
  v6 = v4[3];
  v33 = v4[4];
  v34 = v5;
  v7 = v4[5];
  v8 = v4[7];
  v35 = v4[6];
  v36 = v8;
  v9 = v4[1];
  v10 = v4[3];
  v31 = v4[2];
  v32 = v10;
  v11 = v4[1];
  v30[0] = *v4;
  v30[1] = v11;
  v25 = v33;
  v26 = v7;
  v12 = v4[7];
  v27 = v35;
  v28 = v12;
  v21 = v30[0];
  v22 = v9;
  v23 = v31;
  v24 = v6;
  sub_1B743E6F8(v30, v37);
  static HTTPHeaderField.appleClientInfo(_:)(&v21, v29);
  v37[4] = v25;
  v37[5] = v26;
  v37[6] = v27;
  v37[7] = v28;
  v37[0] = v21;
  v37[1] = v22;
  v37[2] = v23;
  v37[3] = v24;
  sub_1B743E754(v37);
  v13 = v29[0];
  v14 = v29[1];
  v15 = v29[2];
  v16 = v29[3];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B723E73C(0, *(v3 + 2) + 1, 1, v3);
  }

  v18 = *(v3 + 2);
  v17 = *(v3 + 3);
  if (v18 >= v17 >> 1)
  {
    v3 = sub_1B723E73C((v17 > 1), v18 + 1, 1, v3);
  }

  *(v3 + 2) = v18 + 1;
  v19 = &v3[32 * v18];
  *(v19 + 4) = v13;
  *(v19 + 5) = v14;
  *(v19 + 6) = v15;
  *(v19 + 7) = v16;
  return v3;
}

char *sub_1B743CBFC()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BA0, &unk_1B782BBF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_1B77FFA98();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B743CA14();
  if (!v1)
  {
    v2 = v10;
    v31 = 0;
    v11 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BF0, &qword_1B782BC18) + 36));
    v12 = v11[1];
    if (v12)
    {
      v13 = *v11;
      v29 = 0x80000001B787EEE0;
      v30 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1B723E73C(0, *(v2 + 2) + 1, 1, v2);
      }

      v15 = *(v2 + 2);
      v14 = *(v2 + 3);
      if (v15 >= v14 >> 1)
      {
        v2 = sub_1B723E73C((v14 > 1), v15 + 1, 1, v2);
      }

      *(v2 + 2) = v15 + 1;
      v16 = &v2[32 * v15];
      *(v16 + 4) = 0xD000000000000010;
      v17 = v30;
      *(v16 + 5) = v29;
      *(v16 + 6) = v17;
      *(v16 + 7) = v12;
    }

    if (*(v11 + 16) == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1B723E73C(0, *(v2 + 2) + 1, 1, v2);
      }

      v19 = *(v2 + 2);
      v18 = *(v2 + 3);
      if (v19 >= v18 >> 1)
      {
        v2 = sub_1B723E73C((v18 > 1), v19 + 1, 1, v2);
      }

      *(v2 + 2) = v19 + 1;
      v20 = &v2[32 * v19];
      *(v20 + 4) = 0xD000000000000018;
      *(v20 + 5) = 0x80000001B787EEC0;
      *(v20 + 6) = 1702195828;
      *(v20 + 7) = 0xE400000000000000;
    }

    v21 = type metadata accessor for ApplePayHTTPClientInfo(0);
    sub_1B7205588(v11 + *(v21 + 24), v5, &qword_1EB994BA0, &unk_1B782BBF0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1B7205418(v5, &qword_1EB994BA0, &unk_1B782BBF0);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v22 = sub_1B77FFA88();
      v24 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1B723E73C(0, *(v2 + 2) + 1, 1, v2);
      }

      v26 = *(v2 + 2);
      v25 = *(v2 + 3);
      if (v26 >= v25 >> 1)
      {
        v2 = sub_1B723E73C((v25 > 1), v26 + 1, 1, v2);
      }

      (*(v7 + 8))(v9, v6);
      *(v2 + 2) = v26 + 1;
      v27 = &v2[32 * v26];
      *(v27 + 4) = 0xD000000000000015;
      *(v27 + 5) = 0x80000001B787EEA0;
      *(v27 + 6) = v22;
      *(v27 + 7) = v24;
    }
  }

  return v2;
}

char *sub_1B743CFC4()
{
  v1 = sub_1B743CBFC();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BF8, &qword_1B782BC20);
    v2 = sub_1B77FF9A8();
    v4 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1B723E73C(0, *(v1 + 2) + 1, 1, v1);
    }

    v6 = *(v1 + 2);
    v5 = *(v1 + 3);
    if (v6 >= v5 >> 1)
    {
      v1 = sub_1B723E73C((v5 > 1), v6 + 1, 1, v1);
    }

    *(v1 + 2) = v6 + 1;
    v7 = &v1[32 * v6];
    *(v7 + 4) = 0xD00000000000001BLL;
    *(v7 + 5) = 0x80000001B787EE80;
    *(v7 + 6) = v2;
    *(v7 + 7) = v4;
  }

  return v1;
}

char *sub_1B743D0C0()
{
  v2 = sub_1B7439060();
  if (!v1)
  {
    sub_1B7801A78();

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BE0, &qword_1B782BC08);
    MEMORY[0x1B8CA4D30](*(v0 + *(v3 + 36)), *(v0 + *(v3 + 36) + 8));
    MEMORY[0x1B8CA4D30](58, 0xE100000000000000);
    MEMORY[0x1B8CA4D30](*(v0 + *(v3 + 40)), *(v0 + *(v3 + 40) + 8));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B723E73C(0, *(v2 + 2) + 1, 1, v2);
    }

    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    if (v5 >= v4 >> 1)
    {
      v2 = sub_1B723E73C((v4 > 1), v5 + 1, 1, v2);
    }

    *(v2 + 2) = v5 + 1;
    v6 = &v2[32 * v5];
    strcpy(v6 + 32, "Authorization");
    *(v6 + 23) = -4864;
    *(v6 + 6) = 0x6B6F54656C707041;
    *(v6 + 7) = 0xEB00000000206E65;
  }

  return v2;
}

uint64_t sub_1B743D230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BE8, &qword_1B782BC10);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BF0, &qword_1B782BC18);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BF8, &qword_1B782BC20);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BD8, &qword_1B782BC00);
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B743D378, 0, 0);
}

uint64_t sub_1B743D378()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  sub_1B7205588(v0[9], v1, &qword_1EB994BD8, &qword_1B782BC00);
  sub_1B7205588(v1, v2, &qword_1EB994BF8, &qword_1B782BC20);
  sub_1B7205588(v2, v3, &qword_1EB994BF0, &qword_1B782BC18);
  sub_1B7205588(v3, v4, &qword_1EB994BE8, &qword_1B782BC10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80, &unk_1B780C050);
  v5 = swift_allocObject();
  v0[15] = v5;
  *(v5 + 16) = xmmword_1B781A380;
  *(v5 + 32) = 12662;
  *(v5 + 40) = 0xE200000000000000;
  strcpy((v5 + 48), "transactions");
  *(v5 + 61) = 0;
  *(v5 + 62) = -5120;
  sub_1B72B71E4(*v4, *(v4 + 8));
  *(v5 + 64) = v6;
  *(v5 + 72) = v7;
  *(v5 + 80) = 0x656369766564;
  *(v5 + 88) = 0xE600000000000000;
  strcpy((v5 + 96), "registration");
  *(v5 + 109) = 0;
  *(v5 + 110) = -5120;
  sub_1B7205418(v4, &qword_1EB994BE8, &qword_1B782BC10);
  sub_1B7205418(v3, &qword_1EB994BF0, &qword_1B782BC18);
  sub_1B7205418(v2, &qword_1EB994BF8, &qword_1B782BC20);
  sub_1B7205418(v1, &qword_1EB994BD8, &qword_1B782BC00);
  v8 = sub_1B7438DF8();
  v10 = v0[10];
  v0[16] = v9;
  v0[17] = v8;
  if (v9 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  if (v9 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = v9;
  }

  v14 = v10[3];
  v13 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v14);
  v0[6] = v11;
  v0[7] = v12;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v16 = sub_1B736E424();
  *v15 = v0;
  v15[1] = sub_1B743D6A8;
  v17 = MEMORY[0x1E6969080];

  return SecureElementSigning.signature<A>(for:)((v0 + 2), (v0 + 6), v14, v17, v13, v16);
}

uint64_t sub_1B743D6A8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = v2;

  if (v2)
  {
    v5 = sub_1B743DB2C;
  }

  else
  {
    v5 = sub_1B743D7C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B743D7C0()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = sub_1B743D0C0();
  v7 = *(v0 + 152);
  v8 = *(v0 + 160);
  if (v1)
  {
    v9 = *(v0 + 128);
    v10 = *(v0 + 72);
    if (v9 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v0 + 136);
    }

    if (v9 >> 60 == 15)
    {
      v12 = 0xC000000000000000;
    }

    else
    {
      v12 = *(v0 + 128);
    }

    sub_1B720A388(v7, v8);
    sub_1B720A388(v11, v12);
    sub_1B7205418(v10, &qword_1EB994BE0, &qword_1B782BC08);

    __swift_destroy_boxed_opaque_existential_1(*(v0 + 80));

    v13 = *(v0 + 8);
  }

  else
  {
    v37 = v3;
    sub_1B72B71E4(v7, v8);
    v15 = v14;
    v17 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1B723E73C(0, *(v6 + 2) + 1, 1, v6);
    }

    v19 = *(v6 + 2);
    v18 = *(v6 + 3);
    v20 = v18 >> 1;
    v21 = v19 + 1;
    if (v18 >> 1 <= v19)
    {
      v6 = sub_1B723E73C((v18 > 1), v19 + 1, 1, v6);
      v18 = *(v6 + 3);
      v20 = v18 >> 1;
    }

    *(v6 + 2) = v21;
    v22 = &v6[32 * v19];
    *(v22 + 4) = 0xD000000000000011;
    *(v22 + 5) = 0x80000001B787EE60;
    *(v22 + 6) = v15;
    *(v22 + 7) = v17;
    v23 = v19 + 2;
    if (v20 < (v19 + 2))
    {
      v6 = sub_1B723E73C((v18 > 1), v19 + 2, 1, v6);
    }

    *(v6 + 2) = v23;
    v24 = &v6[32 * v21];
    strcpy(v24 + 32, "X-Apple-SEID");
    v24[45] = 0;
    *(v24 + 23) = -5120;
    *(v24 + 6) = v5;
    *(v24 + 7) = v4;
    v25 = *(v6 + 3);
    v26 = v19 + 3;
    if ((v19 + 3) > (v25 >> 1))
    {
      v6 = sub_1B723E73C((v25 > 1), v19 + 3, 1, v6);
    }

    v27 = *(v0 + 128);
    v28 = *(v0 + 120);
    v29 = *(v0 + 72);
    v36 = *(v0 + 80);
    v30 = *(v0 + 64);
    if (v27 >> 60 == 15)
    {
      v31 = 0xC000000000000000;
    }

    else
    {
      v31 = *(v0 + 128);
    }

    if (v27 >> 60 == 15)
    {
      v32 = 0;
    }

    else
    {
      v32 = *(v0 + 136);
    }

    sub_1B720A388(*(v0 + 152), *(v0 + 160));
    sub_1B7205418(v29, &qword_1EB994BE0, &qword_1B782BC08);
    *(v6 + 2) = v26;
    v33 = &v6[32 * v23];
    *(v33 + 4) = 0x4343452D44534143;
    *(v33 + 5) = 0xE800000000000000;
    *(v33 + 6) = v37;
    *(v33 + 7) = v2;
    v34 = MEMORY[0x1E69E7CC0];
    *v30 = v28;
    *(v30 + 8) = v34;
    *(v30 + 16) = 2;
    *(v30 + 24) = v6;
    *(v30 + 32) = v32;
    *(v30 + 40) = v31;

    sub_1B720ABEC(v32, v31);
    __swift_destroy_boxed_opaque_existential_1(v36);

    sub_1B720A388(v32, v31);

    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_1B743DB2C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 128);
  v3 = *(v0 + 72);
  if (v2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v0 + 136);
  }

  if (v2 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = *(v0 + 128);
  }

  type metadata accessor for FinanceNetworkError(0);
  sub_1B743DD44();
  swift_allocError();
  *v6 = v1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1B720A388(v4, v5);
  sub_1B7205418(v3, &qword_1EB994BE0, &qword_1B782BC08);
  __swift_destroy_boxed_opaque_existential_1(*(v0 + 80));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B743DC80(uint64_t a1)
{
  v2 = type metadata accessor for PrismWebServiceClientInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B743DCDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B743DD44()
{
  result = qword_1EB994C00;
  if (!qword_1EB994C00)
  {
    v3 = type metadata accessor for FinanceNetworkError(255);
    result = swift_getWitnessTable(protocol conformance descriptor for FinanceNetworkError, v3, v0, v1);
    atomic_store(result, &qword_1EB994C00);
  }

  return result;
}

uint64_t sub_1B743DD9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BD8, &qword_1B782BC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B743DE90(uint64_t a1)
{
  sub_1B7280028();
  if (v1 <= 0x3F)
  {
    sub_1B743DF34(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B743DF34(uint64_t a1)
{
  if (!qword_1EB994C28)
  {
    sub_1B77FFA98();
    v1 = sub_1B7801768();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB994C28);
    }
  }
}

uint64_t sub_1B743DF94(uint64_t a1)
{
  result = sub_1B77FF4F8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PrismWebServiceClientInfo(319);
    if (v3 <= 0x3F)
    {
      result = sub_1B77FFA18();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of PrismWebServiceClient.registerTransaction(with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 168) + **(*v2 + 168));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B7201BB0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of PrismWebServiceClient.invalidateAndCancelAfter<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 176) + **(*v4 + 176));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1B723838C;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1B743E35C(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = a1;
    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v5 = sub_1B78000B8();
    __swift_project_value_buffer(v5, qword_1EDAF6550);
    v6 = a1;
    v7 = sub_1B7800098();
    v8 = sub_1B78011D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1B7198000, v7, v8, "Prism web service client session did become invalid with error: %@", v9, 0xCu);
      sub_1B7205418(v10, &qword_1EB9910D0, &unk_1B780D910);
      MEMORY[0x1B8CA7A40](v10, -1, -1);
      MEMORY[0x1B8CA7A40](v9, -1, -1);

      goto LABEL_12;
    }
  }

  else
  {
    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v13 = sub_1B78000B8();
    __swift_project_value_buffer(v13, qword_1EDAF6550);
    v7 = sub_1B7800098();
    v14 = sub_1B78011B8();
    if (os_log_type_enabled(v7, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B7198000, v7, v14, "Prism web service client session did become invalid", v15, 2u);
      MEMORY[0x1B8CA7A40](v15, -1, -1);
    }
  }

LABEL_12:
  *(v2 + OBJC_IVAR____TtC10FinanceKitP33_82FCA57B9514272BE863607579F9568E15SessionDelegate_sessionDidBecomeInvalid) = 1;
  v16 = (v2 + OBJC_IVAR____TtC10FinanceKitP33_82FCA57B9514272BE863607579F9568E15SessionDelegate_sessionDidBecomeInvalidHandler);
  v17 = *(v2 + OBJC_IVAR____TtC10FinanceKitP33_82FCA57B9514272BE863607579F9568E15SessionDelegate_sessionDidBecomeInvalidHandler);
  if (v17)
  {
    v18 = v16[1];

    v17(v19);
    sub_1B71F4844(v17, v18);
    v20 = *v16;
  }

  else
  {
    v20 = 0;
  }

  v21 = v16[1];
  *v16 = 0;
  v16[1] = 0;

  return sub_1B71F4844(v20, v21);
}

id sub_1B743E5E8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8, &qword_1B781A1E0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B743C3D0(v3, v0 + v2, v4);
}

uint64_t OrderAddressProvider.__allocating_init(coreDataProvider:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1B743E7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1B7801478();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B743E8B0, 0, 0);
}

uint64_t sub_1B743E8B0()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v8 = [*(*(*(v4 + 16) + 16) + 16) viewContext];
  v0[10] = v8;
  v9 = swift_allocObject();
  v0[11] = v9;
  v9[2] = v4;
  v9[3] = v8;
  v9[4] = v7;
  v9[5] = v5;
  v9[6] = v6;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);

  v8;

  v10 = swift_task_alloc();
  v0[12] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C88, &unk_1B782BD58);
  *v10 = v0;
  v10[1] = sub_1B743EA40;
  v12 = v0[9];

  return MEMORY[0x1EEDB6538](v0 + 2, v12, sub_1B743F01C, v9, v11);
}

uint64_t sub_1B743EA40()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B743EC44;
  }

  else
  {
    v5 = sub_1B743EBD4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B743EBD4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B743EC44()
{
  if (qword_1EDAF6548 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_1B78000B8();
  __swift_project_value_buffer(v2, qword_1EDAF6550);
  v3 = v1;
  v4 = sub_1B7800098();
  v5 = sub_1B78011D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B7198000, v4, v5, "Could not extract shipping fulfillment recipients: %@", v7, 0xCu);
    sub_1B726B694(v8);
    MEMORY[0x1B8CA7A40](v8, -1, -1);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
  }

  v11 = *(v0 + 104);

  v12 = *(v0 + 8);
  v13 = MEMORY[0x1E69E7CC0];

  return v12(v13);
}

uint64_t sub_1B743EDE4()
{
  v2 = [*(*(*(v0 + 16) + 16) + 16) viewContext];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C88, &unk_1B782BD58);
  sub_1B7801468();

  return v3;
}

uint64_t OrderAddressProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_1B743F034@<X0>(char **a1@<X8>)
{
  result = sub_1B743F648(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t dispatch thunk of OrderAddressProvider.shippingRecipients(forMerchantIdentifier:fetchLimit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B721FB60;

  return v10(a1, a2, a3);
}

char *sub_1B743F214(unint64_t a1)
{
  v54 = MEMORY[0x1E69E7CD0];
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v39)
  {
    v2 = 0;
    v45 = a1 & 0xC000000000000001;
    v42 = a1 & 0xFFFFFFFFFFFFFF8;
    v48 = MEMORY[0x1E69E7CC0];
    v43 = a1;
    v44 = i;
    v41 = a1 + 32;
    v3 = &selRef_heroImageAttributionName;
    while (1)
    {
      if (v45)
      {
        a1 = MEMORY[0x1B8CA5DC0](v2, v43);
      }

      else
      {
        if (v2 >= *(v42 + 16))
        {
          goto LABEL_46;
        }

        a1 = *(v41 + 8 * v2);
      }

      v4 = a1;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      a1 = ManagedECommerceOrderContent.shippingFulfillments.getter();
      v7 = a1;
      v47 = v6;
      if (a1 >> 62)
      {
        a1 = sub_1B7801958();
        v8 = a1;
        v46 = v4;
        if (!a1)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v46 = v4;
        if (!v8)
        {
          goto LABEL_4;
        }
      }

      if (v8 < 1)
      {
        goto LABEL_45;
      }

      v9 = 0;
      v50 = v7;
      v51 = v7 & 0xC000000000000001;
      v49 = v8;
      do
      {
        if (v51)
        {
          v10 = MEMORY[0x1B8CA5DC0](v9, v7);
        }

        else
        {
          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = [v10 v3[353]];
        if (v12 || (v12 = [v11 recipientGivenName]) != 0 || (v12 = objc_msgSend(v11, sel_recipientOrganizationName)) != 0 || (v12 = objc_msgSend(v11, sel_recipientAddress)) != 0)
        {

          v13 = v3;
          v14 = [v11 v3[353]];
          if (v14)
          {
            v15 = v14;
            v16 = sub_1B7800868();
            v18 = v17;
          }

          else
          {
            v16 = 0;
            v18 = 0;
          }

          v19 = [v11 recipientGivenName];
          if (v19)
          {
            v20 = v19;
            v21 = sub_1B7800868();
            v23 = v22;
          }

          else
          {
            v21 = 0;
            v23 = 0;
          }

          v24 = [v11 recipientOrganizationName];
          if (v24)
          {
            v25 = v24;
            v26 = sub_1B7800868();
            v28 = v27;
          }

          else
          {
            v26 = 0;
            v28 = 0;
          }

          v29 = [v11 recipientAddress];
          *&v55 = v16;
          *(&v55 + 1) = v18;
          *&v56 = v21;
          *(&v56 + 1) = v23;
          *&v57 = v26;
          *(&v57 + 1) = v28;
          v58 = v29;
          if (sub_1B72C38DC(&v55, v54))
          {

            sub_1B72633F0(&v55);
          }

          else
          {
            sub_1B7263394(&v55, v52);
            v30 = v48;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_1B723F3E0(0, *(v48 + 2) + 1, 1, v48);
            }

            v32 = *(v30 + 2);
            v31 = *(v30 + 3);
            if (v32 >= v31 >> 1)
            {
              v30 = sub_1B723F3E0((v31 > 1), v32 + 1, 1, v30);
            }

            *(v30 + 2) = v32 + 1;
            v48 = v30;
            v33 = &v30[56 * v32];
            v34 = v55;
            v35 = v56;
            v36 = v57;
            *(v33 + 10) = v58;
            *(v33 + 3) = v35;
            *(v33 + 4) = v36;
            *(v33 + 2) = v34;
            sub_1B7263394(&v55, v52);
            sub_1B7250B64(v52, &v55);

            sub_1B72633F0(&v55);
            v37 = v53;
          }

          v3 = v13;
          v8 = v49;
          v7 = v50;
        }

        else
        {
        }

        ++v9;
      }

      while (v8 != v9);
LABEL_4:

      v2 = v47;
      if (v47 == v44)
      {
        v38 = v48;
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v39 = a1;
    i = sub_1B7801958();
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_49:

  return v38;
}

char *sub_1B743F648(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ManagedECommerceOrderContent();
  v20.receiver = swift_getObjCClassFromMetadata();
  v20.super_class = &OBJC_METACLASS____TtC10FinanceKit28ManagedECommerceOrderContent;
  v8 = objc_msgSendSuper2(&v20, sel_fetchRequest);
  if (a3)
  {
    sub_1B7801A78();

    MEMORY[0x1B8CA4D30](a2, a3);
    MEMORY[0x1B8CA4D30](34, 0xE100000000000000);
    MEMORY[0x1B8CA4D30](0xD000000000000025, 0x80000001B787F080);
  }

  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  v9 = sub_1B78010E8();

  [v8 setPredicate_];

  v10 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v11 = sub_1B7800838();
  v12 = [v10 initWithKey:v11 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B780B190;
  *(v13 + 32) = v12;
  sub_1B7205540(0, &qword_1EDAF6470, 0x1E696AEB0);
  v14 = v12;
  v15 = sub_1B7800C18();

  [v8 setSortDescriptors_];

  [v8 setFetchLimit_];
  [v8 setReturnsObjectsAsFaults_];
  v16 = a1;
  v17 = v21;
  v18 = sub_1B7801498();
  if (v17)
  {
  }

  else
  {
    v16 = sub_1B743F214(v18);
  }

  return v16;
}

id ManagedApplePayMerchantTokenAutomaticReloadPaymentDetails.__allocating_init(_:context:)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 72);
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v12 = v3;
  v6 = *(a1 + 56);
  v9[0] = *(a1 + 40);
  v9[1] = v6;
  v10 = v4;

  v7 = ManagedApplePayMerchantTokenAutomaticReloadPaymentDetails.__allocating_init(amount:thresholdAmount:context:)(v11, v9, a2);

  return v7;
}

id ManagedApplePayMerchantTokenAutomaticReloadPaymentDetails.__allocating_init(amount:thresholdAmount:context:)(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = a1[4];
  v14 = *a2;
  v6 = a2[4];
  v7 = [objc_allocWithZone(v3) initWithContext_];
  v8 = v7;
  if (v5)
  {
    v9 = sub_1B7801608();
  }

  else
  {
    v9 = 0;
  }

  [v7 setAmountValue_];

  if (v5)
  {
    v10 = sub_1B7800838();
  }

  else
  {
    v10 = 0;
  }

  [v7 setAmountCurrencyCode_];

  if (v6)
  {
    v11 = sub_1B7801608();
    [v7 setThresholdAmountValue_];

    v12 = sub_1B7800838();
  }

  else
  {
    [v7 setThresholdAmountValue_];
    v12 = 0;
  }

  [v7 setThresholdAmountCurrencyCode_];

  return v7;
}

double sub_1B743FB58@<D0>(SEL *a1@<X0>, SEL *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v7 = [v3 *a1];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 *a2];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1B7800868();
      v13 = v12;

      v14 = sub_1B7801678();
      CurrencyAmount.init(_:currencyCode:)(v14, v15, v16, v11, v13, v20);

      v17 = v21;
      result = *v20;
      v19 = v20[1];
      *a3 = v20[0];
      *(a3 + 16) = v19;
      *(a3 + 32) = v17;
      return result;
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

id ManagedApplePayMerchantTokenAutomaticReloadPaymentDetails.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedApplePayMerchantTokenAutomaticReloadPaymentDetails.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedApplePayMerchantTokenAutomaticReloadPaymentDetails.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BankConnectConsentOverlapDetector.detectOverlaps(forInstitutionID:excludingAccountsGrantedByConsentUUID:usingGrantedAccountIDs:in:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C90, &qword_1B782BE00);
  result = sub_1B7801468();
  if (!v0)
  {
    return v2;
  }

  return result;
}

void sub_1B743FE20(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v67 = a5;
  v68 = a4;
  v66 = a2;
  v61 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10, &qword_1B780B4A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_1B77FFA18();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B72035FC(MEMORY[0x1E69E7CC0]);
  v69 = type metadata accessor for ManagedConsent();
  v72.receiver = swift_getObjCClassFromMetadata();
  v72.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedConsent;
  v16 = objc_msgSendSuper2(&v72, sel_fetchRequest);
  [v16 setReturnsObjectsAsFaults_];
  v17 = sub_1B7800C18();
  v62 = v16;
  [v16 setRelationshipKeyPathsForPrefetching_];

  sub_1B7227AFC(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B72BB9C8(v10);
    sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1B7807CD0;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1B721FF04();
    *(v18 + 32) = v66;
    *(v18 + 40) = a3;

    v19 = sub_1B78010E8();
  }

  else
  {
    v20 = *(v12 + 32);
    v64 = v14;
    v20(v14, v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1B780C060;
    sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
    v22 = swift_allocObject();
    v65 = v11;
    v23 = v15;
    v24 = v22;
    v63 = xmmword_1B7807CD0;
    *(v22 + 16) = xmmword_1B7807CD0;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1B721FF04();
    *(v24 + 32) = v66;
    *(v24 + 40) = a3;

    v15 = v23;
    *(v21 + 32) = sub_1B78010E8();
    v25 = swift_allocObject();
    *(v25 + 16) = v63;
    v26 = v64;
    v27 = sub_1B77FF9B8();
    *(v25 + 56) = sub_1B7205540(0, &qword_1EB9905A8, 0x1E696AFB0);
    *(v25 + 64) = sub_1B726E47C();
    *(v25 + 32) = v27;
    *(v21 + 40) = sub_1B78010E8();
    v28 = sub_1B7800C18();

    v19 = [objc_opt_self() andPredicateWithSubpredicates_];

    (*(v12 + 8))(v26, v65);
  }

  v29 = v62;
  [v62 setPredicate_];

  v30 = v70;
  v31 = sub_1B7801498();
  isUniquelyReferenced_nonNull_native = v30;
  if (v30)
  {

    return;
  }

  v33 = v31;
  if (v31 >> 62)
  {
LABEL_31:
    v34 = sub_1B7801958();
    if (v34)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
LABEL_8:
      v35 = 0;
      v65 = v33;
      v66 = v33 & 0xC000000000000001;
      *&v63 = v33 & 0xFFFFFFFFFFFFFF8;
      v64 = v34;
      do
      {
        if (v66)
        {
          v38 = MEMORY[0x1B8CA5DC0](v35, v33);
        }

        else
        {
          if (v35 >= *(v63 + 16))
          {
            goto LABEL_30;
          }

          v38 = *(v33 + 8 * v35 + 32);
        }

        v39 = v38;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v69 = v35 + 1;
        v40 = [v38 consentID];
        v41 = sub_1B7800868();
        v43 = v42;

        MEMORY[0x1EEE9AC00](v44);
        v70 = v39;
        v45 = v67;
        *(&v61 - 2) = v39;
        *(&v61 - 1) = v45;
        v46 = isUniquelyReferenced_nonNull_native;
        sub_1B7801468();
        v33 = isUniquelyReferenced_nonNull_native;
        v47 = v73;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v15;
        v49 = sub_1B724548C(v41, v43);
        v50 = v15;
        v51 = v15[2];
        v52 = (v48 & 1) == 0;
        v53 = v51 + v52;
        if (__OFADD__(v51, v52))
        {
          goto LABEL_28;
        }

        v54 = v48;
        if (v50[3] >= v53)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            isUniquelyReferenced_nonNull_native = v46;
            if (v48)
            {
              goto LABEL_9;
            }
          }

          else
          {
            sub_1B725CF18();
            isUniquelyReferenced_nonNull_native = v46;
            if (v54)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
          sub_1B724A3E4(v53, isUniquelyReferenced_nonNull_native);
          v55 = sub_1B724548C(v41, v43);
          if ((v54 & 1) != (v56 & 1))
          {
            sub_1B78021C8();
            __break(1u);
            return;
          }

          v49 = v55;
          isUniquelyReferenced_nonNull_native = v46;
          if (v54)
          {
LABEL_9:

            v15 = v71;
            v36 = v71[7];
            v37 = *(v36 + 8 * v49);
            *(v36 + 8 * v49) = v47;
            sub_1B7440FD4(v37);

            goto LABEL_10;
          }
        }

        v15 = v71;
        v71[(v49 >> 6) + 8] |= 1 << v49;
        v57 = (v15[6] + 16 * v49);
        *v57 = v41;
        v57[1] = v43;
        *(v15[7] + 8 * v49) = v47;

        v58 = v15[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_29;
        }

        v15[2] = v60;
LABEL_10:
        ++v35;
        v33 = v65;
      }

      while (v69 != v64);
    }
  }

  *v61 = v15;
}

void sub_1B7440554(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = a3;
  v18 = a2;
  v4 = sub_1B77FF338();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 accountObjects];
  v25 = MEMORY[0x1E69E7CD0];
  v16 = v7;
  sub_1B78014D8();
  sub_1B7440FE4();
  sub_1B78017B8();
  while (v24)
  {
    sub_1B72051F0(&v23, v22);
    sub_1B719BDE4(v22, &v21);
    type metadata accessor for ManagedInternalAccount();
    if (swift_dynamicCast())
    {
      v8 = v20;
      v9 = [v20 accountId];
      v10 = sub_1B7800868();
      v12 = v11;

      sub_1B724E408(&v21, v10, v12);
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_1B78017B8();
  }

  (*(v17 + 8))(v6, v4);
  v13 = v25;

  v14 = sub_1B74408CC(v18, v13);
  v15 = sub_1B72F4734(v13, v14);

  if (v15)
  {

    v14 = 1;
  }

  else if (!*(v14 + 16))
  {

    v14 = 0;
  }

  *v19 = v14;
}

uint64_t sub_1B74407BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C90, &qword_1B782BE00);
  result = sub_1B7801468();
  if (!v0)
  {
    return v2;
  }

  return result;
}

void *sub_1B744083C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_1B7440A90(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1B74408CC(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_1B7440A90((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_1B744083C(v12, v6, a2, a1);

    MEMORY[0x1B8CA7A40](v12, -1, -1);
  }

  return v10;
}

void sub_1B7440A90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_1B78022F8();

      sub_1B7800798();
      v26 = sub_1B7802368();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_1B78020F8() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(a1 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          sub_1B723A660(a1, a2, v53, v5);
          return;
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_1B78022F8();

      sub_1B7800798();
      v39 = sub_1B7802368();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_1B78020F8() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        a1[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

uint64_t _s10FinanceKit29BankConnectConsentOverlapTypeO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2, __n128 a3)
{
  v3 = *a1;
  v4 = *a2;
  if (!*a1)
  {
    if (!v4)
    {
      v3 = 0;
      v5 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 1)
  {
    if (v4 >= 2)
    {
      sub_1B7205200(*a2);
      sub_1B7205200(v3);
      v5 = sub_1B72F4734(v3, v4);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 1)
  {
LABEL_8:
    sub_1B7205200(*a2);
    sub_1B7205200(v3);
    v5 = 0;
    goto LABEL_10;
  }

  v3 = 1;
  v5 = 1;
LABEL_10:
  sub_1B7440FD4(v3);
  sub_1B7440FD4(v4);
  return v5 & 1;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit29BankConnectConsentOverlapTypeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1B7440FD4(unint64_t a1)
{
  if (a1 >= 2)
  {
  }

  return result;
}

unint64_t sub_1B7440FE4()
{
  result = qword_1EB990510;
  if (!qword_1EB990510)
  {
    v3 = sub_1B77FF338();
    result = swift_getWitnessTable(MEMORY[0x1E6968EB8], v3, v0, v1);
    atomic_store(result, &qword_1EB990510);
  }

  return result;
}

uint64_t MonthFormatter.init(configuration:style:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1B742F678(a1, a3);
  result = type metadata accessor for MonthFormatter(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t type metadata accessor for MonthFormatter(uint64_t a1)
{
  result = qword_1EB994CD8;
  if (!qword_1EB994CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MonthFormatter.format(_:now:)(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v68 = a1;
  v2 = sub_1B77FF718();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1B77FF748();
  v69 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FFC68();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FF378();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v63 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1B77FFCF8();
  v59 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FFC88();
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B77FFAF8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99D700, &qword_1B780F110);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B18, &unk_1B7817CD0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v51 - v20;
  v55 = &v51 - v20;
  v22 = type metadata accessor for FormatterConfiguration(0);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1B77FF7D8();
  v60 = *(v64 - 8);
  v26 = MEMORY[0x1EEE9AC00](v64);
  v51 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v51 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v51 - v31;
  sub_1B7442910(v73, v25, type metadata accessor for FormatterConfiguration);
  v33 = sub_1B77FF648();
  (*(*(v33 - 8) + 56))(v21, 1, 1, v33);
  v34 = sub_1B77FF628();
  (*(*(v34 - 8) + 56))(v18, 1, 1, v34);
  (*(v13 + 16))(v15, v25, v12);
  (*(v57 + 16))(v56, &v25[*(v23 + 28)], v58);
  (*(v59 + 16))(v61, &v25[*(v23 + 32)], v62);
  sub_1B77FF368();
  v62 = v30;
  sub_1B77FF668();
  sub_1B7442978(v25, type metadata accessor for FormatterConfiguration);
  v36 = v65;
  v35 = v66;
  v37 = v67;
  (*(v66 + 104))(v65, *MEMORY[0x1E6969A68], v67);
  v38 = v73;
  v39 = sub_1B77FFC38();
  (*(v35 + 8))(v36, v37);
  v40 = *(v38 + *(type metadata accessor for MonthFormatter(0) + 20));
  v41 = (v69 + 8);
  v42 = v70;
  if (v40)
  {
    sub_1B77FF738();
  }

  else
  {
    sub_1B77FF728();
  }

  v43 = v62;
  sub_1B77FF698();
  (*v41)(v42, v72);
  v44 = v64;
  v45 = v60;
  if ((v39 & 1) == 0)
  {
    v46 = v52;
    sub_1B77FF708();
    v47 = v51;
    sub_1B77FF688();
    (*(v53 + 8))(v46, v54);
    (*(v45 + 8))(v32, v44);
    (*(v45 + 32))(v32, v47, v44);
  }

  v48 = sub_1B77FF788();
  v49 = *(v45 + 8);
  v49(v43, v44);
  v49(v32, v44);
  return v48;
}

uint64_t static MonthFormatter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1B8CA3D90]() & 1) != 0 && (v4 = type metadata accessor for FormatterConfiguration(0), (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20))) && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)))
  {
    v5 = type metadata accessor for MonthFormatter(0);
    v6 = *(a1 + *(v5 + 20)) ^ *(a2 + *(v5 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1B7441978()
{
  if (*v0)
  {
    return 0x656C797473;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

void sub_1B74419BC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7441A9C(uint64_t a1)
{
  v2 = sub_1B7442814();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7441AD8(uint64_t a1)
{
  v2 = sub_1B7442814();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MonthFormatter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C98, &qword_1B782BF08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7442814();
  sub_1B78023F8();
  v10[15] = 0;
  type metadata accessor for FormatterConfiguration(0);
  sub_1B7442B50(&qword_1EB990850, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
  sub_1B7801FC8();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for MonthFormatter(0) + 20));
    v10[13] = 1;
    sub_1B7442868();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MonthFormatter.hash(into:)(uint64_t a1)
{
  sub_1B77FFAF8();
  sub_1B7442B50(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B7442B50(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7442B50(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  v2 = type metadata accessor for MonthFormatter(0);
  return MEMORY[0x1B8CA6620](*(v1 + *(v2 + 20)));
}

uint64_t MonthFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B7442B50(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B7442B50(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7442B50(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  v1 = type metadata accessor for MonthFormatter(0);
  MEMORY[0x1B8CA6620](*(v0 + *(v1 + 20)));
  return sub_1B7802368();
}

uint64_t MonthFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for FormatterConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994CA8, &qword_1B782BF10);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for MonthFormatter(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7442814();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v17;
  v22 = 0;
  sub_1B7442B50(&qword_1EB990870, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
  v14 = v18;
  sub_1B7801E48();
  sub_1B742F678(v19, v12);
  v20 = 1;
  sub_1B74428BC();
  sub_1B7801E48();
  (*(v13 + 8))(v8, v14);
  *(v12 + *(v9 + 20)) = v21;
  sub_1B7442910(v12, v16, type metadata accessor for MonthFormatter);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B7442978(v12, type metadata accessor for MonthFormatter);
}

uint64_t sub_1B74422AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MonthFormatter.format(_:now:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B74422D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = MonthFormatter.format(_:now:)(a1, v7);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B74423EC(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B7442B50(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B7442B50(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7442B50(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](*(v1 + *(a1 + 20)));
  return sub_1B7802368();
}

uint64_t sub_1B7442558(uint64_t a1, uint64_t a2)
{
  sub_1B77FFAF8();
  sub_1B7442B50(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B7442B50(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7442B50(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  return MEMORY[0x1B8CA6620](*(v2 + *(a2 + 20)));
}

uint64_t sub_1B74426AC(uint64_t a1, uint64_t a2)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B7442B50(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B7442B50(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7442B50(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  MEMORY[0x1B8CA6620](*(v2 + *(a2 + 20)));
  return sub_1B7802368();
}

unint64_t sub_1B7442814()
{
  result = qword_1EB994CA0;
  if (!qword_1EB994CA0)
  {
    result = swift_getWitnessTable(byte_1B782C120, &type metadata for MonthFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994CA0);
  }

  return result;
}

unint64_t sub_1B7442868()
{
  result = qword_1EB99D740;
  if (!qword_1EB99D740)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SingleDateFormatter.Style, &type metadata for SingleDateFormatter.Style, v0, v1);
    atomic_store(result, &qword_1EB99D740);
  }

  return result;
}

unint64_t sub_1B74428BC()
{
  result = qword_1EB99D770;
  if (!qword_1EB99D770)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SingleDateFormatter.Style, &type metadata for SingleDateFormatter.Style, v0, v1);
    atomic_store(result, &qword_1EB99D770);
  }

  return result;
}

uint64_t sub_1B7442910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7442978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B74429D8(uint64_t a1)
{
  result = sub_1B7442B50(&qword_1EB994CB0, type metadata accessor for MonthFormatter, protocol conformance descriptor for MonthFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7442B50(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B7442BC0(uint64_t a1)
{
  result = type metadata accessor for FormatterConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B7442C48()
{
  result = qword_1EB994CE8;
  if (!qword_1EB994CE8)
  {
    result = swift_getWitnessTable(aQ_16, &type metadata for MonthFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994CE8);
  }

  return result;
}

unint64_t sub_1B7442CA0()
{
  result = qword_1EB994CF0;
  if (!qword_1EB994CF0)
  {
    result = swift_getWitnessTable(byte_1B782C068, &type metadata for MonthFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994CF0);
  }

  return result;
}

unint64_t sub_1B7442CF8()
{
  result = qword_1EB994CF8;
  if (!qword_1EB994CF8)
  {
    result = swift_getWitnessTable(byte_1B782C090, &type metadata for MonthFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB994CF8);
  }

  return result;
}

uint64_t sub_1B7442D8C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938, &unk_1B7812F00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40, &qword_1B7809790);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1B77FFC88();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = sub_1B77FFCF8();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  return sub_1B77FECD8();
}

uint64_t sub_1B7442FA8@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938, &unk_1B7812F00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v32 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40, &qword_1B7809790);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  v34 = v1;
  v18 = *(v1 + OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_userDefaults + 24);
  v17 = *(v1 + OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_userDefaults + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_userDefaults), v18);
  (*(v17 + 16))(v36, 0xD00000000000001CLL, 0x80000001B787F140, v18, v17);
  if (v36[3])
  {
    v19 = swift_dynamicCast();
    (*(v8 + 56))(v16, v19 ^ 1u, 1, v7);
  }

  else
  {
    sub_1B7205418(v36, &qword_1EB98FCB0, &qword_1B7808CE0);
    (*(v8 + 56))(v16, 1, 1, v7);
  }

  sub_1B7280900(v16, v14);
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    sub_1B7205418(v14, &qword_1EB98EBD0, &unk_1B7809780);
    v20 = sub_1B77FFC88();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v21 = sub_1B77FFCF8();
    (*(*(v21 - 8) + 56))(v33, 1, 1, v21);
    sub_1B77FECD8();
  }

  else
  {
    v22 = *(v8 + 32);
    v32 = v10;
    v22(v10, v14, v7);
    v33 = OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_calendar;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000, &qword_1B78100F0);
    v23 = sub_1B77FFC68();
    v24 = *(v23 - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1B780D870;
    v28 = v27 + v26;
    v29 = *(v24 + 104);
    v29(v28, *MEMORY[0x1E6969A58], v23);
    v29(v28 + v25, *MEMORY[0x1E6969A88], v23);
    v29(v28 + 2 * v25, *MEMORY[0x1E6969A98], v23);
    sub_1B7545E58(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v30 = v32;
    sub_1B77FFB68();

    (*(v8 + 8))(v30, v7);
  }

  return sub_1B7205418(v16, &qword_1EB98EBD0, &unk_1B7809780);
}

uint64_t sub_1B7443568@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938, &unk_1B7812F00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v32 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40, &qword_1B7809790);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  v34 = v1;
  v18 = *(v1 + OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_userDefaults + 24);
  v17 = *(v1 + OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_userDefaults + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_userDefaults), v18);
  (*(v17 + 16))(v36, 0xD00000000000001DLL, 0x80000001B787F160, v18, v17);
  if (v36[3])
  {
    v19 = swift_dynamicCast();
    (*(v8 + 56))(v16, v19 ^ 1u, 1, v7);
  }

  else
  {
    sub_1B7205418(v36, &qword_1EB98FCB0, &qword_1B7808CE0);
    (*(v8 + 56))(v16, 1, 1, v7);
  }

  sub_1B7280900(v16, v14);
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    sub_1B7205418(v14, &qword_1EB98EBD0, &unk_1B7809780);
    v20 = sub_1B77FFC88();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v21 = sub_1B77FFCF8();
    (*(*(v21 - 8) + 56))(v33, 1, 1, v21);
    sub_1B77FECD8();
  }

  else
  {
    v22 = *(v8 + 32);
    v32 = v10;
    v22(v10, v14, v7);
    v33 = OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_calendar;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000, &qword_1B78100F0);
    v23 = sub_1B77FFC68();
    v24 = *(v23 - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1B780D870;
    v28 = v27 + v26;
    v29 = *(v24 + 104);
    v29(v28, *MEMORY[0x1E6969A58], v23);
    v29(v28 + v25, *MEMORY[0x1E6969A88], v23);
    v29(v28 + 2 * v25, *MEMORY[0x1E6969A98], v23);
    sub_1B7545E58(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v30 = v32;
    sub_1B77FFB68();

    (*(v8 + 8))(v30, v7);
  }

  return sub_1B7205418(v16, &qword_1EB98EBD0, &unk_1B7809780);
}

uint64_t UserSleepScheduleProvider.__allocating_init(calendar:userDefaults:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_calendar;
  v6 = sub_1B77FFC88();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  v7 = v4 + OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_userDefaults;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  return v4;
}

uint64_t UserSleepScheduleProvider.init(calendar:userDefaults:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_calendar;
  v6 = sub_1B77FFC88();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  v7 = v2 + OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_userDefaults;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  return v2;
}

uint64_t sub_1B7443C74@<X0>(uint64_t (*a1)(char *, uint64_t, uint64_t)@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v98 = a1;
  v101 = a2;
  v95 = a3;
  v3 = sub_1B77FFC68();
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v87 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v89 = (&v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v82 - v10;
  v100 = sub_1B77FF988();
  v92 = *(v100 - 8);
  v12 = MEMORY[0x1EEE9AC00](v100);
  v91 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v83 = &v82 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v82 - v16;
  v94 = sub_1B77FED28();
  v99 = *(v94 - 8);
  v17 = MEMORY[0x1EEE9AC00](v94);
  v90 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v82 - v19;
  v21 = OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_calendar;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000, &qword_1B78100F0);
  v22 = *(v4 + 72);
  v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B780D870;
  v25 = *MEMORY[0x1E6969A48];
  v88 = v5;
  v26 = *(v5 + 104);
  v84 = v25;
  v26(v24 + v23);
  (v26)(v24 + v23 + v22, *MEMORY[0x1E6969A78], v3);
  (v26)(v24 + v23 + 2 * v22, *MEMORY[0x1E6969A68], v3);
  sub_1B7545E58(v24);
  swift_setDeallocating();
  v85 = v3;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B77FFB68();
  v27 = v92;

  sub_1B77FEC38();
  sub_1B77FEC48();
  sub_1B77FEC98();
  sub_1B77FECA8();
  v28 = v100;
  sub_1B77FECB8();
  sub_1B77FECC8();
  v86 = v21;
  v93 = v20;
  sub_1B77FFBF8();
  v29 = *(v27 + 48);
  if (v29(v11, 1, v28) == 1)
  {
    sub_1B7205418(v11, &qword_1EB98EBD0, &unk_1B7809780);
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v30 = sub_1B78000B8();
    __swift_project_value_buffer(v30, qword_1EDAF65B0);
    v31 = v99;
    v32 = v90;
    v33 = v94;
    (*(v99 + 16))(v90, v98, v94);
    v34 = v91;
    v36 = v100;
    v35 = v101;
    v98 = *(v27 + 16);
    v98(v91, v101, v100);
    v37 = sub_1B7800098();
    v38 = sub_1B78011D8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v33;
      v40 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v102[0] = v97;
      *v40 = 136315394;
      sub_1B7444C88(&qword_1EB994D00, MEMORY[0x1E6968278], MEMORY[0x1E69682A0]);
      LODWORD(v96) = v38;
      v41 = sub_1B7802068();
      v43 = v42;
      v89 = v37;
      v44 = *(v31 + 8);
      v99 = v31 + 8;
      v45 = v32;
      v46 = v39;
      v44(v45, v39);
      v47 = sub_1B71A3EF8(v41, v43, v102);
      v36 = v100;

      *(v40 + 4) = v47;
      *(v40 + 12) = 2080;
      sub_1B7444C88(&qword_1EB991200, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v48 = sub_1B7802068();
      v50 = v49;
      (*(v27 + 8))(v34, v36);
      v51 = sub_1B71A3EF8(v48, v50, v102);

      *(v40 + 14) = v51;
      v52 = v89;
      _os_log_impl(&dword_1B7198000, v89, v96, "Failed to merge date components %s with %s", v40, 0x16u);
      v53 = v97;
      swift_arrayDestroy();
      v35 = v101;
      MEMORY[0x1B8CA7A40](v53, -1, -1);
      MEMORY[0x1B8CA7A40](v40, -1, -1);

      v44(v93, v46);
    }

    else
    {

      (*(v27 + 8))(v34, v36);
      v56 = *(v31 + 8);
      v56(v32, v33);
      v56(v93, v33);
    }

    return v98(v95, v35, v36);
  }

  else
  {
    v54 = *(v27 + 32);
    v54(v96, v11, v28);
    sub_1B7444C88(&qword_1EB98EBD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    if (sub_1B78007F8())
    {
      (*(v99 + 8))(v93, v94);
      return (v54)(v95, v96, v28);
    }

    else
    {
      v98 = v54;
      v57 = v87;
      v58 = v85;
      (v26)(v87, v84, v85);
      v59 = v96;
      v60 = v89;
      sub_1B77FFC18();
      (*(v88 + 8))(v57, v58);
      if (v29(v60, 1, v28) == 1)
      {
        sub_1B7205418(v60, &qword_1EB98EBD0, &unk_1B7809780);
        if (qword_1EDAF65A8 != -1)
        {
          swift_once();
        }

        v61 = sub_1B78000B8();
        __swift_project_value_buffer(v61, qword_1EDAF65B0);
        v62 = *(v27 + 16);
        v63 = v83;
        v64 = v100;
        v62(v83, v59, v100);
        v65 = sub_1B7800098();
        v66 = sub_1B78011D8();
        v67 = os_log_type_enabled(v65, v66);
        v68 = v101;
        if (v67)
        {
          v69 = v27;
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v98 = v62;
          v72 = v71;
          v102[0] = v71;
          *v70 = 136315138;
          sub_1B7444C88(&qword_1EB991200, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          v73 = sub_1B7802068();
          v74 = v63;
          v75 = v68;
          v77 = v76;
          v78 = *(v69 + 8);
          v78(v74, v100);
          v79 = sub_1B71A3EF8(v73, v77, v102);
          v68 = v75;

          *(v70 + 4) = v79;
          _os_log_impl(&dword_1B7198000, v65, v66, "Failed to advance %s by one day", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v72);
          v80 = v72;
          v62 = v98;
          MEMORY[0x1B8CA7A40](v80, -1, -1);
          MEMORY[0x1B8CA7A40](v70, -1, -1);

          v78(v96, v100);
          v64 = v100;
        }

        else
        {

          v81 = *(v27 + 8);
          v81(v63, v64);
          v81(v59, v64);
        }

        (*(v99 + 8))(v93, v94);
        return v62(v95, v68, v64);
      }

      else
      {
        (*(v27 + 8))(v59, v28);
        (*(v99 + 8))(v93, v94);
        return v98(v95, v60, v28);
      }
    }
  }
}

uint64_t sub_1B74447C4@<X0>(char *a1@<X0>, void (*a2)(uint64_t)@<X1>, char *a3@<X8>)
{
  v6 = sub_1B77FED28();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  a2(v8);
  sub_1B7443C74(v10, a1, a3);
  return (*(v7 + 8))(v10, v6);
}

uint64_t UserSleepScheduleProvider.deinit()
{
  v1 = OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_calendar;
  v2 = sub_1B77FFC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1B7444924(v0 + OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_userDefaults);
  return v0;
}

uint64_t UserSleepScheduleProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_calendar;
  v2 = sub_1B77FFC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1B7444924(v0 + OBJC_IVAR____TtC10FinanceKit25UserSleepScheduleProvider_userDefaults);

  return swift_deallocClassInstance();
}

uint64_t sub_1B7444A54@<X0>(char *a1@<X0>, void (*a2)(uint64_t)@<X3>, char *a3@<X8>)
{
  v6 = sub_1B77FED28();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  a2(v8);
  sub_1B7443C74(v10, a1, a3);
  return (*(v7 + 8))(v10, v6);
}

uint64_t type metadata accessor for UserSleepScheduleProvider(uint64_t a1)
{
  result = qword_1EDAF7B28;
  if (!qword_1EDAF7B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7444BC4(uint64_t a1)
{
  result = sub_1B77FFC88();
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

uint64_t sub_1B7444C88(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

char *ManagedPendingApplePayTransactionRegistration.__allocating_init(transactionIdentifier:context:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v25 = a2;
  v6 = sub_1B78006A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v12 = [objc_allocWithZone(v3) initWithContext_];
  v13 = sub_1B7800838();
  [v12 willChangeValueForKey_];

  v14 = sub_1B77FF598();
  sub_1B720A388(v11, v10);
  [v12 setPrimitiveTransactionIdentifier_];

  v15 = sub_1B7800838();
  [v12 didChangeValueForKey_];

  v16 = sub_1B7800698();
  v17 = MEMORY[0x1B8CA4990](v16);
  v19 = v18;
  v20 = sub_1B7800838();
  [v12 willChangeValueForKey_];

  v21 = sub_1B77FF598();
  [v12 setPrimitivePrivateKey_];

  v22 = sub_1B7800838();
  [v12 didChangeValueForKey_];

  sub_1B720A388(v17, v19);
  (*(v7 + 8))(v9, v6);
  return v12;
}

void ManagedPendingApplePayTransactionRegistration.transactionIdentifier.getter(uint64_t *a1@<X8>)
{
  v3 = sub_1B7800838();
  [v1 willAccessValueForKey_];

  v4 = [v1 primitiveTransactionIdentifier];
  v5 = sub_1B77FF5B8();
  v7 = v6;

  v8 = sub_1B7800838();
  [v1 didAccessValueForKey_];

  *a1 = v5;
  a1[1] = v7;
}

void sub_1B7444FD8(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1B7800838();
  [v3 willAccessValueForKey_];

  v5 = [v3 primitiveTransactionIdentifier];
  v6 = sub_1B77FF5B8();
  v8 = v7;

  v9 = sub_1B7800838();
  [v3 didAccessValueForKey_];

  *a2 = v6;
  a2[1] = v8;
}

void sub_1B74450A4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 willChangeValueForKey_];

  v4 = sub_1B77FF598();
  [v2 setPrimitiveTransactionIdentifier_];

  v5 = sub_1B7800838();
  [v2 didChangeValueForKey_];
}

uint64_t ManagedPendingApplePayTransactionRegistration.privateKey.getter()
{
  v1 = sub_1B7800838();
  [v0 willAccessValueForKey_];

  v2 = [v0 primitivePrivateKey];
  sub_1B77FF5B8();

  v3 = sub_1B7800838();
  [v0 didAccessValueForKey_];

  return sub_1B7800688();
}

uint64_t sub_1B7445264@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 lastRegistrationAttemptDate];
  if (v3)
  {
    v4 = v3;
    sub_1B77FF928();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B77FF988();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B7445308(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7280900(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF8B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setLastRegistrationAttemptDate_];
}

void sub_1B7445434(id *a1)
{
  v1 = [*a1 creationDate];
  sub_1B77FF928();
}

Swift::Void __swiftcall ManagedPendingApplePayTransactionRegistration.awakeFromInsert()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1B77FF988();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, sel_awakeFromInsert);
  sub_1B77FF938();
  v7 = sub_1B77FF8B8();
  (*(v4 + 8))(v6, v3);
  [v1 setCreationDate_];
}

uint64_t ManagedPendingApplePayTransactionRegistration.isEligibleForAttempt(at:)(uint64_t a1)
{
  v30 = a1;
  v33 = sub_1B77FFC68();
  v1 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v26 - v11;
  v12 = sub_1B77FFB08();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B77FFC88();
  v27 = *(v16 - 8);
  v28 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, *MEMORY[0x1E6969830], v12);
  sub_1B77FFB18();
  (*(v13 + 8))(v15, v12);
  v19 = v31;
  v20 = v33;
  (*(v1 + 104))(v31, *MEMORY[0x1E6969A48], v33);
  v21 = [v32 creationDate];
  sub_1B77FF928();

  sub_1B77FFC18();
  v22 = *(v7 + 8);
  v22(v10, v6);
  (*(v1 + 8))(v19, v20);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v24 = v29;
    (*(v7 + 32))(v29, v5, v6);
    v25 = sub_1B77FF8D8();
    v22(v24, v6);
    (*(v27 + 8))(v18, v28);
    return v25 & 1;
  }

  return result;
}

uint64_t ManagedPendingApplePayTransactionRegistration.latestDocumentDeliveryDate.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v26 = sub_1B77FF988();
  v1 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1B77FFC68();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_1B77FFB08();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B77FFC88();
  v14 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, *MEMORY[0x1E6969830], v10);
  sub_1B77FFB18();
  (*(v11 + 8))(v13, v10);
  v17 = v24;
  (*(v4 + 104))(v6, *MEMORY[0x1E6969A48], v24);
  v18 = [v25 creationDate];
  sub_1B77FF928();

  v19 = v26;
  sub_1B77FFC18();
  (*(v1 + 8))(v3, v19);
  (*(v4 + 8))(v6, v17);
  result = (*(v1 + 48))(v9, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 8))(v16, v22);
    return (*(v1 + 32))(v23, v9, v19);
  }

  return result;
}

id ManagedPendingApplePayTransactionRegistration.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedPendingApplePayTransactionRegistration.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedPendingApplePayTransactionRegistration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedPendingApplePayTransactionRegistration.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit45ManagedPendingApplePayTransactionRegistration;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedPendingApplePayTransactionRegistration.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

unint64_t static ManagedPendingApplePayTransactionRegistration.fetchObject(transactionIdentifier:context:)(uint64_t *a1)
{
  v2 = v1;
  v11.receiver = swift_getObjCClassFromMetadata();
  v11.super_class = &OBJC_METACLASS____TtC10FinanceKit45ManagedPendingApplePayTransactionRegistration;
  v3 = objc_msgSendSuper2(&v11, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  v5 = sub_1B77FF598();
  *(v4 + 56) = sub_1B7205540(0, &qword_1EDAF93D0, 0x1E695DEF0);
  *(v4 + 64) = sub_1B720D718();
  *(v4 + 32) = v5;
  v6 = sub_1B78010E8();
  [v3 setPredicate_];

  result = sub_1B7801498();
  if (v1)
  {

    return v2;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v9 = result;
  v10 = sub_1B7801958();
  result = v9;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);
LABEL_8:
    v2 = v8;

    return v2;
  }

  __break(1u);
  return result;
}

id sub_1B7446418(uint64_t a1)
{
  v2 = v1;
  v4 = _s10FinanceKit22ImageProcessingServiceCACycfC_0();
  v5 = [v1 ecommerceOrderContent];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1B7446A88(v5, a1, v4, v2);
    v8 = [v2 managedObjectContext];
    if (v8)
    {
      v9 = v8;
      [v8 refreshObject:v6 mergeChanges:0];

      v6 = v9;
    }

    return v7;
  }

  else
  {
    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7446520(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990808, &unk_1B780DAE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820, &unk_1B781C590);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990830, &qword_1B780DB00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v11 = ManagedECommerceOrderContent.fulfillments.getter();
  v12 = v11;
  v13 = *(v11 + 2);
  if (!v13)
  {
LABEL_15:

    if (qword_1EDAF93A8 != -1)
    {
LABEL_20:
      swift_once();
    }

    v26 = qword_1EDAF93B0;
    v27 = sub_1B7800838();
    v28 = sub_1B7800838();
    v29 = sub_1B7800838();
    v30 = [v26 localizedStringForKey:v27 value:v28 table:v29];

    v20 = sub_1B7800868();
    return v20;
  }

  if (v13 == 1)
  {
    v14 = *(v11 + 4);
    v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);

    v16 = v36;
    if (v14 < 0)
    {
      v32 = a1;
      v33 = ManagedOrderPickupFulfillment.status.getter();
      Order.Fulfillment.DisplayStatus<>.init(order:orderContent:pickupStatus:)(v16, v32, v33, v10);
      v20 = Order.Fulfillment.DisplayStatus<>.localizedTitle.getter();

      sub_1B7205418(v10, &qword_1EB990830, &qword_1B780DB00);
    }

    else
    {
      v17 = a1;
      v18 = ManagedOrderShippingFulfillment.status.getter();
      v19 = ManagedOrderShippingFulfillment.shippingType.getter();
      Order.Fulfillment.DisplayStatus<>.init(order:orderContent:shippingStatus:shippingType:)(v16, v17, v18, v19 & 1, v7);
      v20 = Order.Fulfillment.DisplayStatus<>.localizedTitle.getter();

      sub_1B7205418(v7, &qword_1EB990820, &unk_1B781C590);
    }

    return v20;
  }

  v21 = 0;
  while (1)
  {
    if (v21 >= *(v12 + 2))
    {
      __break(1u);
      goto LABEL_20;
    }

    v22 = *&v12[8 * v21 + 32];
    if ((v22 & 0x8000000000000000) != 0)
    {
      break;
    }

    v23 = v22;
    v24 = [v23 statusValue];
    if (v24 > 7)
    {
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_1B7801A78();

      v38 = 0xD000000000000022;
      v39 = 0x80000001B787F440;
      v37 = [v23 statusValue];
      v34 = sub_1B7802068();
      MEMORY[0x1B8CA4D30](v34);

      goto LABEL_23;
    }

    if (((1 << v24) & 0xB0) == 0)
    {
      goto LABEL_14;
    }

LABEL_6:
    ++v21;

    if (v13 == v21)
    {
      goto LABEL_15;
    }
  }

  v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
  v25 = [v23 statusValue];
  if (v25 <= 5)
  {
    if (((1 << v25) & 0x28) == 0)
    {
LABEL_14:

      Order.Fulfillment.DisplayStatus<>.init(order:orderContent:)(v36, a1, v4);
      v20 = Order.Fulfillment.DisplayStatus<>.localizedTitle.getter();
      sub_1B7205418(v4, &qword_1EB990808, &unk_1B780DAE0);
      return v20;
    }

    goto LABEL_6;
  }

  v38 = 0;
  v39 = 0xE000000000000000;
  sub_1B7801A78();

  v38 = 0xD000000000000020;
  v39 = 0x80000001B787F3D0;
  v37 = [v23 statusValue];
  v35 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v35);

LABEL_23:
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

id sub_1B7446A88(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v132 = a3;
  v142 = sub_1B77FFAD8();
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1B77FFAF8();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1B77FF988();
  v135 = *(v136 - 8);
  v8 = MEMORY[0x1EEE9AC00](v136);
  v134 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v133 = &v131 - v10;
  v11 = sub_1B77FF4F8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(MEMORY[0x1E6964E90]);
  v16 = sub_1B7800838();
  v17 = [v15 initWithItemContentType_];

  v18 = [a4 objectID];
  v19 = [v18 URIRepresentation];

  sub_1B77FF478();
  sub_1B77FF3B8();
  v20 = *(v12 + 8);
  (v20)(v14, v11);
  v21 = sub_1B7800838();

  [v17 setIdentifier_];

  sub_1B7447DD0(a1);
  v22 = sub_1B7800838();

  [v17 setDisplayName_];

  v144 = a4;
  v23 = [a4 objectID];
  v24 = [v23 URIRepresentation];

  sub_1B77FF478();
  sub_1B77FF3B8();
  v143 = v11;
  (v20)(v14, v11);
  v25 = sub_1B7800838();

  v26 = sub_1B7800838();
  [v17 setAttribute:v25 forKey:v26];

  v27 = a1;
  v28 = [a1 merchant];
  v29 = [v28 displayName];

  v30 = sub_1B77FFA48();
  v31 = sub_1B741F7D4(v30);
  v33 = v32;

  v34 = [v17 displayName];
  if (!v34)
  {
    goto LABEL_7;
  }

  v35 = v34;
  v36 = sub_1B7800868();
  v38 = v37;

  if (v31 != v36 || v33 != v38)
  {
    v39 = sub_1B78020F8();

    if (v39)
    {
      goto LABEL_6;
    }

LABEL_7:
    v40 = sub_1B723E180(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v35 = *(v40 + 2);
    v41 = *(v40 + 3);
    v42 = (v35 + 1);
    if (v35 >= v41 >> 1)
    {
      goto LABEL_64;
    }

    goto LABEL_8;
  }

LABEL_6:

  v40 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v44 = sub_1B7446520(v27);
    if (v45)
    {
      v46 = v44;
      v31 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1B723E180(0, *(v40 + 2) + 1, 1, v40);
      }

      v35 = *(v40 + 2);
      v47 = *(v40 + 3);
      if (v35 >= v47 >> 1)
      {
        v40 = sub_1B723E180((v47 > 1), v35 + 1, 1, v40);
      }

      *(v40 + 2) = v35 + 1;
      v48 = &v40[16 * v35];
      *(v48 + 4) = v46;
      *(v48 + 5) = v31;
    }

    v148 = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
    sub_1B723E0F4();
    sub_1B78007C8();

    v49 = sub_1B7800838();

    [v17 setContentDescription_];

    v50 = [v27 orderManagementURL];
    sub_1B77FF478();

    v51 = sub_1B77FF3F8();
    v52 = v14;
    v14 = v27;
    (v20)(v52, v143);
    [v17 setURL_];

    v20 = &selRef_heroImageAttributionName;
    v53 = [v27 merchant];
    v54 = [v53 emailAddress];

    if (v54)
    {
      v55 = sub_1B7800868();
      v27 = v56;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80, &unk_1B780C050);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1B7807CD0;
      *(v31 + 32) = v55;
      *(v31 + 40) = v27;

      v54 = sub_1B7800C18();
      v40 = v31;
    }

    [v17 setEmailAddresses_];

    v42 = [v14 merchant];
    v57 = [v42 phoneNumber];

    if (v57)
    {
      v58 = sub_1B7800868();
      v40 = v59;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80, &unk_1B780C050);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1B7807CD0;
      *(v60 + 32) = v58;
      *(v60 + 40) = v40;
      v42 = sub_1B7800C18();

      [v17 setPhoneNumbers_];

      sub_1B7449284();
      v61 = sub_1B7801528();
      [v17 setSupportsPhoneCall_];
    }

    v33 = v14;
    v62 = ManagedECommerceOrderContent.pickupFulfillments.getter();
    if (v62 >> 62)
    {
      v33 = v62;
      v85 = sub_1B7801958();
      v62 = v33;
      if (!v85)
      {
LABEL_42:

        goto LABEL_43;
      }
    }

    else if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    if ((v62 & 0xC000000000000001) != 0)
    {
      break;
    }

    v41 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      v63 = *(v62 + 32);
      goto LABEL_24;
    }

    __break(1u);
LABEL_64:
    v40 = sub_1B723E180((v41 > 1), v42, 1, v40);
LABEL_8:
    *(v40 + 2) = v42;
    v43 = &v40[16 * v35];
    *(v43 + 4) = v31;
    *(v43 + 5) = v33;
  }

  v63 = MEMORY[0x1B8CA5DC0](0);
LABEL_24:
  v64 = v63;

  v65 = [v64 address];
  if (v65)
  {
    v66 = v65;
    v67 = [v65 street];
    if (!v67)
    {
      sub_1B7800868();
      v67 = sub_1B7800838();
    }

    [v17 setThoroughfare_];

    v68 = [v66 city];
    if (!v68)
    {
      sub_1B7800868();
      v68 = sub_1B7800838();
    }

    [v17 setCity_];

    v69 = [v66 state];
    if (!v69)
    {
      sub_1B7800868();
      v69 = sub_1B7800838();
    }

    [v17 setStateOrProvince_];

    v70 = [v66 postalCode];
    if (!v70)
    {
      sub_1B7800868();
      v70 = sub_1B7800838();
    }

    [v17 setPostalCode_];

    v71 = [v66 country];
    if (!v71)
    {
      sub_1B7800868();
      v71 = sub_1B7800838();
    }

    [v17 setCountry_];

    v72 = [objc_opt_self() stringFromPostalAddress:v66 style:0];
    if (!v72)
    {
      sub_1B7800868();
      v72 = sub_1B7800838();
    }

    [v17 setFullyFormattedAddress_];
  }

  v73 = [v64 location];
  if (v73)
  {
    v74 = v73;
    [v73 coordinate];
    v76 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v17 setLatitude_];

    [v74 coordinate];
    v78 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v17 setLongitude_];

    [v74 altitude];
    v80 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v17 setAltitude_];
  }

  sub_1B7449284();
  v81 = sub_1B7801528();
  [v17 setSupportsNavigation_];

  v82 = [v64 displayName];
  v83 = sub_1B77FFA48();
  sub_1B741F7D4(v83);

  v84 = sub_1B7800838();

  [v17 setNamedLocation_];

LABEL_43:
  v86 = [v14 createdDate];
  v87 = v133;
  sub_1B77FF928();

  v88 = sub_1B77FF8B8();
  v89 = v135;
  v90 = *(v135 + 8);
  v91 = v136;
  v90(v87, v136);
  [v17 setContentCreationDate_];

  v92 = [v14 updatedDate];
  sub_1B77FF928();

  v93 = sub_1B77FF8B8();
  v90(v87, v91);
  [v17 setContentModificationDate_];

  v94 = v144;
  v95 = [v144 creationDate];
  sub_1B77FF928();

  v96 = sub_1B77FF8B8();
  v90(v87, v91);
  [v17 setAddedDate_];

  v97 = [v94 orderContentModificationDate];
  sub_1B77FF928();

  v98 = sub_1B77FF8B8();
  v90(v87, v91);
  [v17 setDownloadedDate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F3F8, &qword_1B7809158);
  v99 = *(v89 + 72);
  v100 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_1B7808C50;
  v102 = v101 + v100;
  v103 = [v14 createdDate];
  sub_1B77FF928();

  v104 = *(v89 + 32);
  v104(v102, v87, v91);
  v105 = [v14 updatedDate];
  v106 = v134;
  sub_1B77FF928();

  v104(v102 + v99, v106, v91);
  v107 = sub_1B7800C18();

  [v17 setImportantDates_];

  sub_1B74492D0(v14);
  v108 = sub_1B7800838();

  [v17 setTextContent_];

  ManagedECommerceOrderContent.thumbnailImageNames(for:)(0xF000000000000007, &v148);
  v109 = v148;
  v110 = v149;
  v111 = LOBYTE(v150);
  v112 = v137;
  sub_1B77FFAB8();
  v113 = v140;
  sub_1B77FFAE8();
  (*(v138 + 8))(v112, v139);
  v114 = sub_1B77FFAC8();
  (*(v141 + 8))(v113, v142);
  GSMainScreenScaleFactor();
  v116 = v115;
  if ((LODWORD(v115) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_60;
  }

  if (v115 <= -9.2234e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v115 < 9.2234e18)
  {
    v148 = v109;
    v149 = v110;
    LOBYTE(v150) = v111;
    v117 = sub_1B748311C(&v148);
    if (v117)
    {
      v148 = v117;
      v149 = vdupq_n_s64(0x405E000000000000uLL);
      v150 = v116;
      v151 = 0x4020000000000000;
      v152 = 2;
      v153 = v111 != 1;
      v154 = v114 != 1;
      v155 = 4;
      v156 = 1;
      v126 = *(v132 + 16);
      sub_1B720A8E4(&v148, v145);
      sub_1B741A38C(v126, &v148, &v146);
      sub_1B7449C5C(v109, v110.i64[0], v110.i64[1], v111);
      sub_1B720A994(&v148);
      v128 = v147;
      if (v147 >> 60 == 15)
      {
        v120 = 0;
      }

      else
      {
        v129 = v146;
        v120 = sub_1B77FF598();
        sub_1B72380B8(v129, v128);
      }
    }

    else
    {
      v127 = sub_1B7449C5C(v109, v110.i64[0], v110.i64[1], v111);
      v120 = 0;
    }

    [v17 setThumbnailData_];
    goto LABEL_57;
  }

LABEL_61:
  __break(1u);
  swift_once();
  v118 = sub_1B78000B8();
  __swift_project_value_buffer(v118, qword_1EDAFD2D0);
  v119 = v113;
  v120 = sub_1B7800098();
  v121 = sub_1B78011D8();

  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *v122 = 138412290;
    v124 = v113;
    v125 = _swift_stdlib_bridgeErrorToNSError();
    *(v122 + 4) = v125;
    *v123 = v125;
    _os_log_impl(&dword_1B7198000, v120, v121, "Could not construct spotlight thumbnail: %@", v122, 0xCu);
    sub_1B7205418(v123, &qword_1EB9910D0, &unk_1B780D910);
    MEMORY[0x1B8CA7A40](v123, -1, -1);
    MEMORY[0x1B8CA7A40](v122, -1, -1);

LABEL_57:
    return v17;
  }

  return v17;
}

void sub_1B7447DD0(void *a1)
{
  v1 = ManagedECommerceOrderContent.lineItems.getter();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_86;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  v5 = &selRef_heroImageAttributionName;
  if (v3)
  {
    v226[0] = MEMORY[0x1E69E7CC0];
    sub_1B71FDB50(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      goto LABEL_193;
    }

    v6 = v3;
    v7 = 0;
    v8 = v226[0];
    v217 = v6;
    v221 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v221)
      {
        v9 = MEMORY[0x1B8CA5DC0](v7, v2);
      }

      else
      {
        v9 = *(v2 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v10 v5[85]];
      v12 = sub_1B77FFA48();
      v13 = *&v11[OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings];
      if (*(v13 + 16))
      {
        v14 = sub_1B741EBC0(v12);
        if (v14[2])
        {
          v15 = v2;
          v16 = v14[4];
          v17 = v14[5];

          if (*(v13 + 16))
          {
            v18 = sub_1B724548C(v16, v17);
            v20 = v19;

            if (v20)
            {
              v21 = (*(v13 + 56) + 16 * v18);
LABEL_18:
              v2 = v15;
              v6 = v217;
              goto LABEL_19;
            }
          }

          else
          {
          }

          v21 = &v11[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
          goto LABEL_18;
        }
      }

      v21 = &v11[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
LABEL_19:
      v23 = *v21;
      v22 = *(v21 + 1);

      v226[0] = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B71FDB50((v24 > 1), v25 + 1, 1);
        v8 = v226[0];
      }

      ++v7;
      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v23;
      *(v26 + 40) = v22;
      v5 = &selRef_heroImageAttributionName;
      if (v6 == v7)
      {
        v179 = v8;

        v4 = MEMORY[0x1E69E7CC0];
        goto LABEL_24;
      }
    }
  }

  v179 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v27 = ManagedECommerceOrderContent.returns.getter();
  v28 = v27;
  v227 = v4;
  if (v27 >> 62)
  {
    v29 = sub_1B7801958();
    if (v29)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
LABEL_26:
      v30 = 0;
      v193 = 0;
      v187 = v28 & 0xFFFFFFFFFFFFFF8;
      v189 = v28 & 0xC000000000000001;
      v183 = v28;
      v184 = v28 + 32;
      v181 = v29;
      while (1)
      {
        if (v189)
        {
          v31 = v30;
          v32 = MEMORY[0x1B8CA5DC0](v30, v28);
        }

        else
        {
          if (v30 >= *(v187 + 16))
          {
            goto LABEL_83;
          }

          v31 = v30;
          v32 = *(v184 + 8 * v30);
        }

        v194 = v32;
        v33 = __OFADD__(v31, 1);
        v34 = v31 + 1;
        if (v33)
        {
          goto LABEL_82;
        }

        v191 = v34;
        v35 = sub_1B7800838();
        [v194 willAccessValueForKey_];

        v36 = [v194 lineItemObjects];
        type metadata accessor for ManagedOrderLineItem();
        sub_1B7308800();
        v37 = sub_1B7800FA8();

        v38 = sub_1B7800838();
        [v194 didAccessValueForKey_];

        if ((v37 & 0xC000000000000001) != 0)
        {
          v39 = sub_1B7801958();
          if (!v39)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v39 = *(v37 + 16);
          if (!v39)
          {
LABEL_39:
            v43 = MEMORY[0x1E69E7CC0];
            v40 = MEMORY[0x1E69E7CC0];
            goto LABEL_43;
          }
        }

        if (v39 < 1)
        {
          v40 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
          v40 = swift_allocObject();
          v41 = _swift_stdlib_malloc_size(v40);
          v42 = v41 - 32;
          if (v41 < 32)
          {
            v42 = v41 - 25;
          }

          *(v40 + 16) = v39;
          *(v40 + 24) = (2 * (v42 >> 3)) | 1;
        }

        v44 = sub_1B7261D6C(v226, (v40 + 32), v39, v37);
        sub_1B71B7B58(v226[0]);
        if (v44 != v39)
        {
          goto LABEL_84;
        }

        v43 = MEMORY[0x1E69E7CC0];
LABEL_43:
        v226[0] = v40;
        sub_1B74D29C8(v226);

        v45 = v226[0];
        if (v226[0] < 0 || (v226[0] & 0x4000000000000000) != 0)
        {
          v46 = sub_1B7801958();
          if (v46)
          {
LABEL_46:
            sub_1B71FDB50(0, v46 & ~(v46 >> 63), 0);
            if (v46 < 0)
            {
              goto LABEL_85;
            }

            v47 = 0;
            v2 = v43;
            v205 = v45 & 0xC000000000000001;
            v196 = v46;
            v199 = v45;
            while (2)
            {
              if (v205)
              {
                v48 = MEMORY[0x1B8CA5DC0](v47, v45);
              }

              else
              {
                v48 = *(v45 + 8 * v47 + 32);
              }

              v49 = v48;
              v50 = [v49 v5[85]];
              v222 = sub_1B77FFA48();
              v51 = OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings;
              v52 = *(*&v50[OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings] + 16);
              if (v52)
              {
                v211 = v47;
                v214 = *&v50[OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings];
                v53 = *&v50[OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization + 8];
                v208 = v49;
                v218 = v50;
                if (v53)
                {
                  v54 = *&v50[OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization];
                  v55 = v222;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v55 = sub_1B723E180(0, *(v222 + 16) + 1, 1, v222);
                  }

                  v57 = *(v55 + 2);
                  v56 = *(v55 + 3);
                  if (v57 >= v56 >> 1)
                  {
                    v55 = sub_1B723E180((v56 > 1), v57 + 1, 1, v55);
                  }

                  *(v55 + 2) = v57 + 1;
                  v58 = &v55[16 * v57];
                  *(v58 + 4) = v54;
                  *(v58 + 5) = v53;
                  v59 = *&v218[v51];
                  v52 = *(v59 + 16);
                  if (v52)
                  {
                    v202 = v2;
                    goto LABEL_61;
                  }
                }

                else
                {
                  v202 = v2;

                  v59 = v214;
LABEL_61:
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80, &unk_1B780C050);
                  v61 = swift_allocObject();
                  v62 = _swift_stdlib_malloc_size(v61);
                  v63 = v62 - 32;
                  if (v62 < 32)
                  {
                    v63 = v62 - 17;
                  }

                  v61[2] = v52;
                  v61[3] = 2 * (v63 >> 4);
                  v64 = sub_1B7261C10(v226, (v61 + 4), v52, v59);
                  v65 = v226[0];
                  v2 = v226[4];

                  sub_1B71B7B58(v65);
                  if (v64 != v52)
                  {
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
                    v3 = sub_1B7801958();
                    goto LABEL_3;
                  }

                  v5 = &selRef_heroImageAttributionName;
                  v46 = v196;
                  v45 = v199;
                  v2 = v202;
                }

                v66 = objc_opt_self();
                v67 = sub_1B7800C18();

                v68 = sub_1B7800C18();

                v69 = [v66 preferredLocalizationsFromArray:v67 forPreferences:v68];

                v70 = sub_1B7800C38();
                if (v70[2])
                {
                  v72 = v70[4];
                  v71 = v70[5];

                  v47 = v211;
                  v50 = v218;
                  if (*(v214 + 16))
                  {
                    v73 = sub_1B724548C(v72, v71);
                    v75 = v74;

                    if (v75)
                    {
                      v60 = (*(v214 + 56) + 16 * v73);
                      goto LABEL_72;
                    }
                  }

                  else
                  {
                  }

                  v60 = &v218[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
                }

                else
                {

                  v50 = v218;
                  v60 = &v218[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
                  v47 = v211;
                }

LABEL_72:
                v49 = v208;
              }

              else
              {
                v60 = &v50[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
              }

              v77 = *v60;
              v76 = *(v60 + 1);

              v79 = *(v2 + 16);
              v78 = *(v2 + 24);
              if (v79 >= v78 >> 1)
              {
                sub_1B71FDB50((v78 > 1), v79 + 1, 1);
              }

              ++v47;
              *(v2 + 16) = v79 + 1;
              v80 = v2 + 16 * v79;
              *(v80 + 32) = v77;
              *(v80 + 40) = v76;
              if (v46 == v47)
              {

                goto LABEL_27;
              }

              continue;
            }
          }
        }

        else
        {
          v46 = *(v226[0] + 16);
          if (v46)
          {
            goto LABEL_46;
          }
        }

        v2 = v43;
LABEL_27:
        sub_1B724428C(v2);
        v28 = v183;
        v30 = v191;
        if (v191 == v181)
        {
          v182 = v227;
          v4 = MEMORY[0x1E69E7CC0];
          goto LABEL_89;
        }
      }
    }
  }

  v193 = 0;
  v182 = v4;
LABEL_89:

  v81 = ManagedECommerceOrderContent.fulfillments.getter();
  v227 = v4;
  v192 = *(v81 + 2);
  if (!v192)
  {
    v169 = v4;
    goto LABEL_179;
  }

  v82 = 0;
  v188 = v81;
  v190 = v81 + 32;
  do
  {
    if (v82 >= *(v81 + 2))
    {
      goto LABEL_189;
    }

    v195 = v82;
    v83 = *&v190[8 * v82];
    if ((v83 & 0x8000000000000000) == 0)
    {
      v84 = v83;
      v85 = ManagedOrderShippingFulfillment.lineItems.getter();
      v86 = v85;
      if (v85 >> 62)
      {
        v87 = sub_1B7801958();
      }

      else
      {
        v87 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v88 = MEMORY[0x1E69E7CC0];
      if (!v87)
      {

        v90 = v88;
        goto LABEL_91;
      }

      v225 = MEMORY[0x1E69E7CC0];
      sub_1B71FDB50(0, v87 & ~(v87 >> 63), 0);
      if (v87 < 0)
      {
        goto LABEL_190;
      }

      v185 = v84;
      v89 = 0;
      v90 = v225;
      v200 = v86;
      v203 = v86 & 0xC000000000000001;
      v197 = v87;
      while (1)
      {
        v91 = v203 ? MEMORY[0x1B8CA5DC0](v89, v86) : *(v86 + 8 * v89 + 32);
        v92 = v91;
        v93 = [v92 v5[85]];
        v223 = sub_1B77FFA48();
        v94 = OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings;
        v95 = *(*&v93[OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings] + 16);
        if (v95)
        {
          break;
        }

        v103 = &v93[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
LABEL_124:
        v120 = *v103;
        v119 = *(v103 + 1);

        v122 = *(v90 + 16);
        v121 = *(v90 + 24);
        if (v122 >= v121 >> 1)
        {
          sub_1B71FDB50((v121 > 1), v122 + 1, 1);
        }

        ++v89;
        *(v90 + 16) = v122 + 1;
        v123 = v90 + 16 * v122;
        *(v123 + 32) = v120;
        *(v123 + 40) = v119;
        if (v87 == v89)
        {

          goto LABEL_91;
        }
      }

      v209 = v89;
      v212 = *&v93[OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings];
      v96 = *&v93[OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization + 8];
      v206 = v92;
      v219 = v93;
      if (v96)
      {
        v97 = *&v93[OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization];
        v98 = v223;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_1B723E180(0, *(v223 + 16) + 1, 1, v223);
        }

        v100 = *(v98 + 2);
        v99 = *(v98 + 3);
        if (v100 >= v99 >> 1)
        {
          v98 = sub_1B723E180((v99 > 1), v100 + 1, 1, v98);
        }

        *(v98 + 2) = v100 + 1;
        v101 = &v98[16 * v100];
        *(v101 + 4) = v97;
        *(v101 + 5) = v96;
        v102 = *&v219[v94];
        v95 = *(v102 + 16);
        if (!v95)
        {
          goto LABEL_116;
        }

        v215 = v90;
      }

      else
      {
        v215 = v90;

        v102 = v212;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80, &unk_1B780C050);
      v104 = swift_allocObject();
      v105 = _swift_stdlib_malloc_size(v104);
      v106 = v105 - 32;
      if (v105 < 32)
      {
        v106 = v105 - 17;
      }

      v104[2] = v95;
      v104[3] = 2 * (v106 >> 4);
      v107 = sub_1B7261C10(v226, (v104 + 4), v95, v102);
      v108 = v226[0];

      sub_1B71B7B58(v108);
      if (v107 != v95)
      {
        __break(1u);
LABEL_187:

        v176 = [a1 merchant];
        v177 = [v176 displayName];

        v178 = sub_1B77FFA48();
        sub_1B741F7D4(v178);

        return;
      }

      v5 = &selRef_heroImageAttributionName;
      v90 = v215;
      v87 = v197;
      v86 = v200;
LABEL_116:
      v109 = objc_opt_self();
      v110 = sub_1B7800C18();

      v111 = sub_1B7800C18();

      v112 = [v109 preferredLocalizationsFromArray:v110 forPreferences:v111];

      v113 = sub_1B7800C38();
      if (v113[2])
      {
        v115 = v113[4];
        v114 = v113[5];

        v89 = v209;
        v93 = v219;
        if (*(v212 + 16))
        {
          v116 = sub_1B724548C(v115, v114);
          v118 = v117;

          if (v118)
          {
            v103 = (*(v212 + 56) + 16 * v116);
LABEL_123:
            v92 = v206;
            goto LABEL_124;
          }
        }

        else
        {
        }

        v103 = &v219[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
        goto LABEL_123;
      }

      v93 = v219;
      v103 = &v219[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
      v89 = v209;
      goto LABEL_123;
    }

    v124 = (v83 & 0x7FFFFFFFFFFFFFFFLL);
    v125 = [v124 lineItemObjects];
    type metadata accessor for ManagedOrderLineItem();
    sub_1B7308800();
    v126 = sub_1B7800FA8();

    if ((v126 & 0xC000000000000001) != 0)
    {
      v127 = sub_1B7801958();
      if (!v127)
      {
        goto LABEL_136;
      }
    }

    else
    {
      v127 = *(v126 + 16);
      if (!v127)
      {
LABEL_136:
        v131 = MEMORY[0x1E69E7CC0];
        v128 = MEMORY[0x1E69E7CC0];
        goto LABEL_140;
      }
    }

    if (v127 < 1)
    {
      v128 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
      v128 = swift_allocObject();
      v129 = _swift_stdlib_malloc_size(v128);
      v130 = v129 - 32;
      if (v129 < 32)
      {
        v130 = v129 - 25;
      }

      *(v128 + 16) = v127;
      *(v128 + 24) = (2 * (v130 >> 3)) | 1;
    }

    v132 = sub_1B7261D6C(v226, (v128 + 32), v127, v126);
    sub_1B71B7B58(v226[0]);
    if (v132 != v127)
    {
      goto LABEL_191;
    }

    v131 = MEMORY[0x1E69E7CC0];
LABEL_140:
    v226[0] = v128;
    sub_1B74D29C8(v226);

    v133 = v226[0];
    if (v226[0] < 0 || (v226[0] & 0x4000000000000000) != 0)
    {
      v134 = sub_1B7801958();
      if (!v134)
      {
        goto LABEL_176;
      }

LABEL_143:
      sub_1B71FDB50(0, v134 & ~(v134 >> 63), 0);
      if (v134 < 0)
      {
        goto LABEL_192;
      }

      v186 = v124;
      v135 = 0;
      v90 = v131;
      v201 = v133;
      v204 = v133 & 0xC000000000000001;
      v198 = v134;
      while (1)
      {
        v136 = v204 ? MEMORY[0x1B8CA5DC0](v135, v133) : *(v133 + 8 * v135 + 32);
        v137 = v136;
        v138 = [v137 v5[85]];
        v224 = sub_1B77FFA48();
        v139 = OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings;
        v140 = *(*&v138[OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings] + 16);
        if (v140)
        {
          break;
        }

        v148 = &v138[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
LABEL_170:
        v165 = *v148;
        v164 = *(v148 + 1);

        v167 = *(v90 + 16);
        v166 = *(v90 + 24);
        if (v167 >= v166 >> 1)
        {
          sub_1B71FDB50((v166 > 1), v167 + 1, 1);
        }

        ++v135;
        *(v90 + 16) = v167 + 1;
        v168 = v90 + 16 * v167;
        *(v168 + 32) = v165;
        *(v168 + 40) = v164;
        if (v134 == v135)
        {

          goto LABEL_91;
        }
      }

      v210 = v135;
      v213 = *&v138[OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings];
      v141 = *&v138[OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization + 8];
      v207 = v137;
      v220 = v138;
      if (v141)
      {
        v142 = *&v138[OBJC_IVAR____TtC10FinanceKit15LocalizedString_developmentLocalization];
        v143 = v224;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = sub_1B723E180(0, *(v224 + 16) + 1, 1, v224);
        }

        v145 = *(v143 + 2);
        v144 = *(v143 + 3);
        if (v145 >= v144 >> 1)
        {
          v143 = sub_1B723E180((v144 > 1), v145 + 1, 1, v143);
        }

        *(v143 + 2) = v145 + 1;
        v146 = &v143[16 * v145];
        *(v146 + 4) = v142;
        *(v146 + 5) = v141;
        v138 = v220;
        v147 = *&v220[v139];
        v140 = *(v147 + 16);
        if (!v140)
        {
          goto LABEL_162;
        }

        v216 = v90;
      }

      else
      {
        v216 = v90;

        v147 = v213;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80, &unk_1B780C050);
      v149 = swift_allocObject();
      v150 = _swift_stdlib_malloc_size(v149);
      v151 = v150 - 32;
      if (v150 < 32)
      {
        v151 = v150 - 17;
      }

      v149[2] = v140;
      v149[3] = 2 * (v151 >> 4);
      v152 = sub_1B7261C10(v226, (v149 + 4), v140, v147);
      v153 = v226[0];

      sub_1B71B7B58(v153);
      if (v152 != v140)
      {
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);

        __break(1u);
        return;
      }

      v5 = &selRef_heroImageAttributionName;
      v90 = v216;
      v138 = v220;
      v134 = v198;
      v133 = v201;
LABEL_162:
      v154 = objc_opt_self();
      v155 = sub_1B7800C18();

      v156 = sub_1B7800C18();

      v157 = [v154 preferredLocalizationsFromArray:v155 forPreferences:v156];

      v158 = sub_1B7800C38();
      if (v158[2])
      {
        v160 = v158[4];
        v159 = v158[5];

        v135 = v210;
        if (*(v213 + 16))
        {
          v161 = sub_1B724548C(v160, v159);
          v163 = v162;

          if (v163)
          {
            v148 = (*(v213 + 56) + 16 * v161);
LABEL_169:
            v137 = v207;
            goto LABEL_170;
          }
        }

        else
        {
        }

        v148 = &v138[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
        goto LABEL_169;
      }

      v148 = &v138[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
      v135 = v210;
      goto LABEL_169;
    }

    v134 = *(v226[0] + 16);
    if (v134)
    {
      goto LABEL_143;
    }

LABEL_176:

    v90 = v131;
LABEL_91:
    sub_1B724428C(v90);
    v82 = (v195 + 1);
    v81 = v188;
  }

  while (v195 + 1 != v192);
  v169 = v227;
LABEL_179:

  if (*(v169 + 16))
  {

    v170 = objc_opt_self();
    v171 = sub_1B7800C18();

    v172 = [v170 localizedStringByJoiningStrings_];
  }

  else
  {

    if (*(v179 + 16))
    {

      v173 = objc_opt_self();
      v171 = sub_1B7800C18();

      v172 = [v173 localizedStringByJoiningStrings_];
    }

    else
    {

      if (!*(v182 + 16))
      {
        goto LABEL_187;
      }

      v174 = objc_opt_self();
      v171 = sub_1B7800C18();

      v172 = [v174 localizedStringByJoiningStrings_];
    }
  }

  v175 = v172;

  sub_1B7800868();
}

unint64_t sub_1B7449284()
{
  result = qword_1EDAFC4C8;
  if (!qword_1EDAFC4C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAFC4C8);
  }

  return result;
}

uint64_t sub_1B74492D0(void *a1)
{
  if (qword_1EDAF93A8 != -1)
  {
LABEL_36:
    swift_once();
  }

  v2 = qword_1EDAF93B0;
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();
  v5 = sub_1B7800838();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  v7 = sub_1B7800868();
  v9 = v8;

  v10 = sub_1B723E180(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1B723E180((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[16 * v12];
  *(v13 + 4) = v7;
  *(v13 + 5) = v9;
  v14 = sub_1B7800838();
  v15 = sub_1B7800838();
  v16 = sub_1B7800838();
  v17 = [v2 localizedStringForKey:v14 value:v15 table:v16];

  v18 = sub_1B7800868();
  v20 = v19;

  v22 = *(v10 + 2);
  v21 = *(v10 + 3);
  if (v22 >= v21 >> 1)
  {
    v10 = sub_1B723E180((v21 > 1), v22 + 1, 1, v10);
  }

  *(v10 + 2) = v22 + 1;
  v23 = &v10[16 * v22];
  *(v23 + 4) = v18;
  *(v23 + 5) = v20;
  v107 = v10;
  v24 = [a1 orderNumber];
  v25 = &off_1E7CAF000;
  if (v24)
  {
    v26 = v24;
    v27 = sub_1B7800868();
    v29 = v28;

    v31 = *(v10 + 2);
    v30 = *(v10 + 3);
    if (v31 >= v30 >> 1)
    {
      v10 = sub_1B723E180((v30 > 1), v31 + 1, 1, v10);
    }

    *(v10 + 2) = v31 + 1;
    v32 = &v10[16 * v31];
    *(v32 + 4) = v27;
    *(v32 + 5) = v29;
    v107 = v10;
  }

  v33 = ManagedECommerceOrderContent.shippingFulfillments.getter();
  if (v33 >> 62)
  {
    v34 = sub_1B7801958();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v34 >= 1)
  {
    v35 = sub_1B7800838();
    v36 = sub_1B7800838();
    v37 = sub_1B7800838();
    v38 = [v2 localizedStringForKey:v35 value:v36 table:v37];

    v39 = sub_1B7800868();
    v41 = v40;

    v43 = *(v10 + 2);
    v42 = *(v10 + 3);
    if (v43 >= v42 >> 1)
    {
      v10 = sub_1B723E180((v42 > 1), v43 + 1, 1, v10);
    }

    v105 = v2;
    *(v10 + 2) = v43 + 1;
    v44 = &v10[16 * v43];
    *(v44 + 4) = v39;
    *(v44 + 5) = v41;
    v107 = v10;
    v45 = ManagedECommerceOrderContent.shippingFulfillments.getter();
    v46 = v45;
    v47 = v45 & 0xFFFFFFFFFFFFFF8;
    if (v45 >> 62)
    {
      v48 = sub_1B7801958();
      if (v48)
      {
LABEL_17:
        v49 = 0;
        v50 = MEMORY[0x1E69E7CC0];
        do
        {
          v51 = v49;
          while (1)
          {
            if ((v46 & 0xC000000000000001) != 0)
            {
              v52 = MEMORY[0x1B8CA5DC0](v51, v46);
              v49 = v51 + 1;
              if (__OFADD__(v51, 1))
              {
                goto LABEL_34;
              }
            }

            else
            {
              if (v51 >= *(v47 + 16))
              {
                goto LABEL_35;
              }

              v52 = *(v46 + 8 * v51 + 32);
              v49 = v51 + 1;
              if (__OFADD__(v51, 1))
              {
LABEL_34:
                __break(1u);
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            v53 = v52;
            v54 = [v53 carrier];
            if (v54)
            {
              break;
            }

            ++v51;
            if (v49 == v48)
            {
              goto LABEL_40;
            }
          }

          v104 = a1;
          v55 = v54;
          v56 = sub_1B7800868();
          v103 = v57;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_1B723E180(0, *(v50 + 2) + 1, 1, v50);
          }

          v59 = *(v50 + 2);
          v58 = *(v50 + 3);
          if (v59 >= v58 >> 1)
          {
            v50 = sub_1B723E180((v58 > 1), v59 + 1, 1, v50);
          }

          *(v50 + 2) = v59 + 1;
          v60 = &v50[16 * v59];
          a1 = v104;
          *(v60 + 4) = v56;
          *(v60 + 5) = v103;
        }

        while (v49 != v48);
        goto LABEL_40;
      }
    }

    else
    {
      v48 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48)
      {
        goto LABEL_17;
      }
    }

    v50 = MEMORY[0x1E69E7CC0];
LABEL_40:

    sub_1B724428C(v50);
    v2 = v105;
    v25 = &off_1E7CAF000;
  }

  v61 = ManagedECommerceOrderContent.pickupFulfillments.getter();
  if (v61 >> 62)
  {
LABEL_77:
    v62 = sub_1B7801958();
  }

  else
  {
    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v62 >= 1)
  {
    v63 = sub_1B7800838();
    v64 = sub_1B7800838();
    v65 = sub_1B7800838();
    v66 = [v2 *(v25 + 3064)];

    v67 = sub_1B7800868();
    v69 = v68;

    v70 = v107;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_1B723E180(0, *(v107 + 2) + 1, 1, v107);
    }

    v72 = *(v70 + 2);
    v71 = *(v70 + 3);
    if (v72 >= v71 >> 1)
    {
      v70 = sub_1B723E180((v71 > 1), v72 + 1, 1, v70);
    }

    *(v70 + 2) = v72 + 1;
    v73 = &v70[16 * v72];
    *(v73 + 4) = v67;
    *(v73 + 5) = v69;
    v107 = v70;
  }

  v74 = ManagedECommerceOrderContent.returns.getter();
  if (v74 >> 62)
  {
    v75 = sub_1B7801958();
  }

  else
  {
    v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v75 >= 1)
  {
    v76 = sub_1B7800838();
    v77 = sub_1B7800838();
    v78 = sub_1B7800838();
    v79 = [v2 *(v25 + 3064)];

    v80 = sub_1B7800868();
    v82 = v81;

    v83 = v107;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v83 = sub_1B723E180(0, *(v107 + 2) + 1, 1, v107);
    }

    v85 = *(v83 + 2);
    v84 = *(v83 + 3);
    if (v85 >= v84 >> 1)
    {
      v83 = sub_1B723E180((v84 > 1), v85 + 1, 1, v83);
    }

    *(v83 + 2) = v85 + 1;
    v86 = &v83[16 * v85];
    *(v86 + 4) = v80;
    *(v86 + 5) = v82;
    v107 = v83;
    v87 = ManagedECommerceOrderContent.returns.getter();
    v88 = v87;
    v89 = v87 & 0xFFFFFFFFFFFFFF8;
    if (v87 >> 62)
    {
      v90 = sub_1B7801958();
      if (v90)
      {
LABEL_58:
        v91 = 0;
        v2 = MEMORY[0x1E69E7CC0];
        do
        {
          v92 = v91;
          while (1)
          {
            if ((v88 & 0xC000000000000001) != 0)
            {
              v93 = MEMORY[0x1B8CA5DC0](v92, v88);
              v91 = v92 + 1;
              if (__OFADD__(v92, 1))
              {
                goto LABEL_75;
              }
            }

            else
            {
              if (v92 >= *(v89 + 16))
              {
                goto LABEL_76;
              }

              v93 = *(v88 + 8 * v92 + 32);
              v91 = v92 + 1;
              if (__OFADD__(v92, 1))
              {
LABEL_75:
                __break(1u);
LABEL_76:
                __break(1u);
                goto LABEL_77;
              }
            }

            v94 = v93;
            v95 = [v94 returnNumber];
            if (v95)
            {
              break;
            }

            ++v92;
            if (v91 == v90)
            {
              goto LABEL_81;
            }
          }

          v96 = v95;
          v97 = sub_1B7800868();
          v106 = v98;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1B723E180(0, *(v2 + 2) + 1, 1, v2);
          }

          v25 = *(v2 + 2);
          v99 = *(v2 + 3);
          if (v25 >= v99 >> 1)
          {
            v2 = sub_1B723E180((v99 > 1), v25 + 1, 1, v2);
          }

          *(v2 + 2) = v25 + 1;
          v100 = &v2[16 * v25];
          *(v100 + 4) = v97;
          *(v100 + 5) = v106;
        }

        while (v91 != v90);
        goto LABEL_81;
      }
    }

    else
    {
      v90 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v90)
      {
        goto LABEL_58;
      }
    }

    v2 = MEMORY[0x1E69E7CC0];
LABEL_81:

    sub_1B724428C(v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
  sub_1B723E0F4();
  v101 = sub_1B78007C8();

  return v101;
}

double sub_1B7449C5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }
  }

  return result;
}

uint64_t InternalTransactionQuery.init(sortDescriptors:predicate:limit:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v28 = a6;
  v27 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924B0, &qword_1B781A2A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5A8, &qword_1B7809310);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v27 - v20;
  *a7 = a1;
  v22 = type metadata accessor for InternalTransactionQuery(0);
  sub_1B7423DE0(a2, a7 + v22[5]);
  sub_1B7423DE0(a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B7336A10(a2);
    result = sub_1B7336A10(v14);
    v24 = 0;
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    sub_1B729D790();
    (*(v16 + 16))(v19, v21, v15);
    v24 = sub_1B71FA2E0(v19);
    sub_1B7336A10(a2);
    result = (*(v16 + 8))(v21, v15);
  }

  *(a7 + v22[8]) = v24;
  v25 = a7 + v22[6];
  *v25 = a3;
  v25[8] = a4 & 1;
  v26 = a7 + v22[7];
  *v26 = v27;
  v26[8] = v28 & 1;
  return result;
}

uint64_t type metadata accessor for InternalTransactionQuery(uint64_t a1)
{
  result = qword_1EB994D18;
  if (!qword_1EB994D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1B7449F8C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(a2 + 32));
  v4 = v3;
  return v3;
}

uint64_t sub_1B7449FE4@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a2;
  v26 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913D0, &unk_1B7812E10);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5A0, &qword_1B7809308);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994E10, &qword_1B782C3B0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994E18, &qword_1B782C3B8);
  v14 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v16 = &v23 - v15;
  sub_1B728216C(&qword_1EB9945A0, &qword_1EB98F5A0, &qword_1B7809308, MEMORY[0x1E6968DA8]);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  (*(v7 + 8))(v9, v6);
  v29 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994E20, &qword_1B782C3E0);
  sub_1B728216C(&qword_1EB994E28, &qword_1EB994E10, &qword_1B782C3B0, MEMORY[0x1E6968D58]);
  sub_1B728216C(&qword_1EB994E30, &qword_1EB994E20, &qword_1B782C3E0, MEMORY[0x1E6968C08]);
  sub_1B77FF018();
  (*(v11 + 8))(v13, v10);
  v30 = 0;
  v17 = v25;
  sub_1B77FF2C8();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994E38, &qword_1B782C3E8);
  v19 = v26;
  v26[3] = v18;
  v19[4] = sub_1B744B8A4();
  __swift_allocate_boxed_opaque_existential_1(v19);
  sub_1B728216C(&qword_1EB994E98, &qword_1EB994E18, &qword_1B782C3B8, MEMORY[0x1E6968BC8]);
  sub_1B728216C(&qword_1EB9914F8, &qword_1EB9913D0, &unk_1B7812E10, MEMORY[0x1E6968D20]);
  v20 = v24;
  v21 = v27;
  sub_1B77FF0A8();
  (*(v28 + 8))(v17, v21);
  return (*(v14 + 8))(v16, v20);
}

uint64_t sub_1B744A4C0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994E90, &unk_1B782C400);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994E68, &unk_1B782C3F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - v10;
  v13[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994E78, &unk_1B785AFF0);
  sub_1B77FF2C8();
  sub_1B728216C(&qword_1EB994EA0, &qword_1EB994E90, &unk_1B782C400, MEMORY[0x1E6968DA8]);
  sub_1B77FF2D8();
  sub_1B728216C(&qword_1EB994EA8, &qword_1EB994E68, &unk_1B782C3F0, MEMORY[0x1E6968D20]);
  sub_1B728216C(&qword_1EB994EB0, &qword_1EB994E78, &unk_1B785AFF0, MEMORY[0x1E69E6328]);
  sub_1B744BC20();
  sub_1B77FF028();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B744A770@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5A0, &qword_1B7809308);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994DA8, &unk_1B782C370);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994DB0, &unk_1B785AF70);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994DB8, &qword_1B782C380);
  sub_1B77FF2C8();
  sub_1B728216C(&qword_1EB9945A0, &qword_1EB98F5A0, &qword_1B7809308, MEMORY[0x1E6968DA8]);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  (*(v6 + 8))(v8, v5);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994DC0, &qword_1B782C3A8);
  a3[4] = sub_1B744B568();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1B728216C(&qword_1EB994DF0, &qword_1EB994DB0, &unk_1B785AF70, MEMORY[0x1E6968D20]);
  sub_1B728216C(&qword_1EB994DF8, &qword_1EB994DA8, &unk_1B782C370, MEMORY[0x1E6968D58]);
  sub_1B728216C(&qword_1EB994E00, &qword_1EB994DB8, &qword_1B782C380, MEMORY[0x1E69E6328]);
  sub_1B744B848();
  v17 = v20;
  sub_1B77FF028();
  (*(v21 + 8))(v12, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1B744AB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1);
  }

  type metadata accessor for InternalTransaction(0);
  return sub_1B77FFD38();
}

uint64_t sub_1B744AC10@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913D0, &unk_1B7812E10);
  a1[4] = sub_1B72D7CDC();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1B77FF2C8();
}

uint64_t sub_1B744AC7C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5A0, &qword_1B7809308);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994D30, &unk_1B782C330);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994D38, &unk_1B785AF30);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994D40, &qword_1B782C340);
  sub_1B77FF2C8();
  sub_1B728216C(&qword_1EB9945A0, &qword_1EB98F5A0, &qword_1B7809308, MEMORY[0x1E6968DA8]);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  (*(v6 + 8))(v8, v5);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994D48, &qword_1B782C368);
  a3[4] = sub_1B744B19C();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1B728216C(&qword_1EB994D88, &qword_1EB994D38, &unk_1B785AF30, MEMORY[0x1E6968D20]);
  sub_1B728216C(&qword_1EB994D90, &qword_1EB994D30, &unk_1B782C330, MEMORY[0x1E6968D58]);
  sub_1B728216C(&qword_1EB994D98, &qword_1EB994D40, &qword_1B782C340, MEMORY[0x1E69E6328]);
  sub_1B744B514();
  v17 = v20;
  sub_1B77FF028();
  (*(v21 + 8))(v12, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t PrivateInternalTransactionQuery.init(sortDescriptors:predicate:limit:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

void sub_1B744B080(uint64_t a1)
{
  sub_1B729D930(319, &qword_1EB991F98, &qword_1EB991FA0, &qword_1B782C2E0, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B729D930(319, &qword_1EB994D28, &qword_1EB98F5A8, &qword_1B7809310, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B729D994();
      if (v3 <= 0x3F)
      {
        sub_1B729D9E4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B744B19C()
{
  result = qword_1EB994D50;
  if (!qword_1EB994D50)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994D48, &qword_1B782C368);
    v4[0] = sub_1B744B240();
    v4[1] = sub_1B744B47C(&qword_1EB994D80, &qword_1EB994D30, &unk_1B782C330);
    result = swift_getWitnessTable(MEMORY[0x1E6968C00], v3, v4);
    atomic_store(result, &qword_1EB994D50);
  }

  return result;
}

unint64_t sub_1B744B240()
{
  result = qword_1EB994D58;
  if (!qword_1EB994D58)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994D38, &unk_1B785AF30);
    v4[0] = sub_1B744B2CC();
    v4[1] = sub_1B744B3A4();
    result = swift_getWitnessTable(MEMORY[0x1E6968D18], v3, v4);
    atomic_store(result, &qword_1EB994D58);
  }

  return result;
}

unint64_t sub_1B744B2CC()
{
  result = qword_1EB994D60;
  if (!qword_1EB994D60)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994D40, &qword_1B782C340);
    v4[0] = sub_1B744B350();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EB994D60);
  }

  return result;
}

unint64_t sub_1B744B350()
{
  result = qword_1EB994D68;
  if (!qword_1EB994D68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransactionType, &type metadata for TransactionType, v0, v1);
    atomic_store(result, &qword_1EB994D68);
  }

  return result;
}

unint64_t sub_1B744B3A4()
{
  result = qword_1EB994D70;
  if (!qword_1EB994D70)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994D40, &qword_1B782C340);
    v4[0] = sub_1B744B428();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB994D70);
  }

  return result;
}

unint64_t sub_1B744B428()
{
  result = qword_1EB994D78;
  if (!qword_1EB994D78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransactionType, &type metadata for TransactionType, v0, v1);
    atomic_store(result, &qword_1EB994D78);
  }

  return result;
}

uint64_t sub_1B744B47C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v6 = sub_1B728216C(&qword_1EB9945C8, &qword_1EB98F5A0, &qword_1B7809308, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable(MEMORY[0x1E6968D50], v5, &v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B744B514()
{
  result = qword_1EB994DA0;
  if (!qword_1EB994DA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransactionType, &type metadata for TransactionType, v0, v1);
    atomic_store(result, &qword_1EB994DA0);
  }

  return result;
}

unint64_t sub_1B744B568()
{
  result = qword_1EB994DC8;
  if (!qword_1EB994DC8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994DC0, &qword_1B782C3A8);
    v4[0] = sub_1B744B60C();
    v4[1] = sub_1B744B47C(&qword_1EB994DE8, &qword_1EB994DA8, &unk_1B782C370);
    result = swift_getWitnessTable(MEMORY[0x1E6968C00], v3, v4);
    atomic_store(result, &qword_1EB994DC8);
  }

  return result;
}

unint64_t sub_1B744B60C()
{
  result = qword_1EB994DD0;
  if (!qword_1EB994DD0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994DB0, &unk_1B785AF70);
    v4[0] = sub_1B744B698();
    v4[1] = sub_1B744B770();
    result = swift_getWitnessTable(MEMORY[0x1E6968D18], v3, v4);
    atomic_store(result, &qword_1EB994DD0);
  }

  return result;
}

unint64_t sub_1B744B698()
{
  result = qword_1EB994DD8;
  if (!qword_1EB994DD8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994DB8, &qword_1B782C380);
    v4[0] = sub_1B744B71C();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EB994DD8);
  }

  return result;
}

unint64_t sub_1B744B71C()
{
  result = qword_1EB99DAC0;
  if (!qword_1EB99DAC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransactionStatus, &type metadata for TransactionStatus, v0, v1);
    atomic_store(result, &qword_1EB99DAC0);
  }

  return result;
}

unint64_t sub_1B744B770()
{
  result = qword_1EB994DE0;
  if (!qword_1EB994DE0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994DB8, &qword_1B782C380);
    v4[0] = sub_1B744B7F4();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB994DE0);
  }

  return result;
}

unint64_t sub_1B744B7F4()
{
  result = qword_1EB99DA50;
  if (!qword_1EB99DA50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransactionStatus, &type metadata for TransactionStatus, v0, v1);
    atomic_store(result, &qword_1EB99DA50);
  }

  return result;
}

unint64_t sub_1B744B848()
{
  result = qword_1EB994E08;
  if (!qword_1EB994E08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransactionStatus, &type metadata for TransactionStatus, v0, v1);
    atomic_store(result, &qword_1EB994E08);
  }

  return result;
}

unint64_t sub_1B744B8A4()
{
  result = qword_1EB994E40;
  if (!qword_1EB994E40)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994E38, &qword_1B782C3E8);
    v4[0] = sub_1B744B930();
    v4[1] = sub_1B72D7CDC();
    result = swift_getWitnessTable(MEMORY[0x1E6968BA0], v3, v4);
    atomic_store(result, &qword_1EB994E40);
  }

  return result;
}

unint64_t sub_1B744B930()
{
  result = qword_1EB994E48;
  if (!qword_1EB994E48)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994E18, &qword_1B782C3B8);
    v4[0] = sub_1B744B47C(&qword_1EB994E50, &qword_1EB994E10, &qword_1B782C3B0);
    v4[1] = sub_1B744B9D4();
    result = swift_getWitnessTable(MEMORY[0x1E6968BC0], v3, v4);
    atomic_store(result, &qword_1EB994E48);
  }

  return result;
}

unint64_t sub_1B744B9D4()
{
  result = qword_1EB994E58;
  if (!qword_1EB994E58)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994E20, &qword_1B782C3E0);
    v4[0] = sub_1B744BA8C();
    v4[1] = sub_1B728216C(&qword_1EB994E88, &qword_1EB994E90, &unk_1B782C400, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable(MEMORY[0x1E6968C00], v3, v4);
    atomic_store(result, &qword_1EB994E58);
  }

  return result;
}

unint64_t sub_1B744BA8C()
{
  result = qword_1EB994E60;
  if (!qword_1EB994E60)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994E68, &unk_1B782C3F0);
    v4[0] = sub_1B744BB18();
    v4[1] = sub_1B744BB9C();
    result = swift_getWitnessTable(MEMORY[0x1E6968D18], v3, v4);
    atomic_store(result, &qword_1EB994E60);
  }

  return result;
}

unint64_t sub_1B744BB18()
{
  result = qword_1EB994E70;
  if (!qword_1EB994E70)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994E78, &unk_1B785AFF0);
    v4[0] = sub_1B7408B8C();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EB994E70);
  }

  return result;
}

unint64_t sub_1B744BB9C()
{
  result = qword_1EB994E80;
  if (!qword_1EB994E80)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994E78, &unk_1B785AFF0);
    v4[0] = sub_1B7408BE0();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB994E80);
  }

  return result;
}

unint64_t sub_1B744BC20()
{
  result = qword_1EB994EB8;
  if (!qword_1EB994EB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MerchantCategoryCode, &type metadata for MerchantCategoryCode, v0, v1);
    atomic_store(result, &qword_1EB994EB8);
  }

  return result;
}

void sub_1B744BC78(void *a1, uint64_t a2)
{
  sub_1B7205540(0, &qword_1EB990580, 0x1E696ABC8);

  v3 = sub_1B7801138();
  v4 = [v3 keyPath];

  v5 = v4;
  if (!v4)
  {
    sub_1B7800868();
    v5 = sub_1B7800838();
  }

  v6 = sub_1B7800868();
  v8 = v7;
  v9 = [a1 valueForKeyPath_];

  if (v9)
  {
    sub_1B7801848();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (!*(&v19 + 1))
  {
    sub_1B7205418(v20, &qword_1EB98FCB0, &qword_1B7808CE0);
    goto LABEL_11;
  }

  sub_1B7205540(0, &qword_1EB990590, 0x1E695D620);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = v17;
  if (([v17 isDeleted] & 1) == 0)
  {

LABEL_14:

    return;
  }

LABEL_12:
  v11 = [a1 entity];
  v12 = [v11 name];

  if (v12)
  {
    v13 = sub_1B7800868();
    v15 = v14;

    sub_1B7269974();
    swift_allocError();
    *v16 = v13;
    *(v16 + 8) = v15;
    *(v16 + 16) = v6;
    *(v16 + 24) = v8;
    *(v16 + 32) = 1;
    swift_willThrow();
    goto LABEL_14;
  }

  __break(1u);
}

void ManagedOrder.fullyQualifiedOrderIdentifier.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 orderTypeIdentifier];
  v4 = sub_1B7800868();
  v6 = v5;

  v7 = [v1 orderIdentifier];
  v8 = sub_1B7800868();
  v10 = v9;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
}

uint64_t static ManagedOrder.fetchOrders(withTransactionIdentifier:in:)(uint64_t a1, uint64_t a2)
{
  v8.receiver = swift_getObjCClassFromMetadata();
  v8.super_class = &OBJC_METACLASS____TtC10FinanceKit12ManagedOrder;
  v4 = objc_msgSendSuper2(&v8, sel_fetchRequest);
  v5 = _s10FinanceKit12ManagedOrderC18predicateForOrders25withTransactionIdentifierSo11NSPredicateCSS_tFZ_0(a1, a2);
  [v4 setPredicate_];

  v6 = sub_1B7801498();
  return v6;
}

id ManagedOrder.orderContent.getter@<X0>(void *a1@<X8>)
{
  result = [v1 ecommerceOrderContent];
  if (result)
  {
    *a1 = result;
  }

  else
  {
    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}

id sub_1B744C08C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderType];
  *a2 = result;
  return result;
}

id sub_1B744C0DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderWebService];
  *a2 = result;
  return result;
}

uint64_t ManagedOrder.mailItems.getter()
{
  v1 = sub_1B77FF338();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 mailItemObjects];
  v13 = MEMORY[0x1E69E7CC0];
  sub_1B78014D8();
  sub_1B74515D8(&qword_1EB990510, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
  sub_1B78017B8();
  while (v12)
  {
    sub_1B72051F0(&v11, &v9);
    type metadata accessor for ManagedFoundInMailItem();
    if ((swift_dynamicCast() & 1) != 0 && v10)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
    }

    sub_1B78017B8();
  }

  (*(v2 + 8))(v4, v1);

  *&v11 = sub_1B725F32C(v6);
  sub_1B744FF8C(&v11);

  return v11;
}

void sub_1B744C378(void *a1, void **a2)
{
  v2 = *a2;

  sub_1B723B6F0(v3);

  type metadata accessor for ManagedFoundInMailItem();
  sub_1B74515D8(&qword_1EB98FFC8, type metadata accessor for ManagedFoundInMailItem, MEMORY[0x1E69E81B8]);
  v4 = sub_1B7800F78();

  [v2 setMailItemObjects_];
}

void ManagedOrder.mailItems.setter(unint64_t a1)
{
  sub_1B723B6F0(a1);

  type metadata accessor for ManagedFoundInMailItem();
  sub_1B74515D8(&qword_1EB98FFC8, type metadata accessor for ManagedFoundInMailItem, MEMORY[0x1E69E81B8]);
  v2 = sub_1B7800F78();

  [v1 setMailItemObjects_];
}

uint64_t sub_1B744C50C(void **a1, void **a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = *a1;
  v12 = *a2;
  v13 = [v11 dateSent];
  sub_1B77FF928();

  v14 = [v12 dateSent];
  sub_1B77FF928();

  LOBYTE(v14) = sub_1B77FF918();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  if (v14)
  {
    v16 = [v11 messageID];
    v17 = sub_1B7800868();
    v19 = v18;

    v20 = [v12 messageID];
    v21 = sub_1B7800868();
    v23 = v22;

    if (v17 == v21 && v19 == v23)
    {

      v24 = 0;
    }

    else
    {
      v24 = sub_1B78020F8();
    }
  }

  else
  {
    v25 = [v11 dateSent];
    sub_1B77FF928();

    v26 = [v12 dateSent];
    sub_1B77FF928();

    v24 = sub_1B77FF8D8();
    v15(v8, v4);
    v15(v10, v4);
  }

  return v24 & 1;
}

void (*ManagedOrder.mailItems.modify(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedOrder.mailItems.getter();
  return sub_1B744C800;
}

void sub_1B744C800(unint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    sub_1B723B6F0(v3);

    type metadata accessor for ManagedFoundInMailItem();
    sub_1B74515D8(&qword_1EB98FFC8, type metadata accessor for ManagedFoundInMailItem, MEMORY[0x1E69E81B8]);
    v4 = sub_1B7800F78();

    [v2 setMailItemObjects_];
  }

  else
  {
    sub_1B723B6F0(*a1);

    type metadata accessor for ManagedFoundInMailItem();
    sub_1B74515D8(&qword_1EB98FFC8, type metadata accessor for ManagedFoundInMailItem, MEMORY[0x1E69E81B8]);
    v5 = sub_1B7800F78();

    [v2 setMailItemObjects_];
  }
}

uint64_t (*ManagedOrder.mailItemOrderDetails.getter())(uint64_t)
{
  v1 = sub_1B77FF338();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 mailItemOrderDetailsObjects];
  v6 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  sub_1B78014D8();
  sub_1B74515D8(&qword_1EB990510, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
  sub_1B78017B8();
  while (v12)
  {
    sub_1B72051F0(&v11, v9);
    type metadata accessor for ManagedFoundInMailItemOrderDetails();
    if ((swift_dynamicCast() & 1) != 0 && v10)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      v6 = v13;
    }

    sub_1B78017B8();
  }

  (*(v2 + 8))(v4, v1);
  v7 = sub_1B723B738(v6);

  return v7;
}

void sub_1B744CBA8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  type metadata accessor for ManagedFoundInMailItemOrderDetails();
  sub_1B74515D8(&qword_1EB98FFC0, type metadata accessor for ManagedFoundInMailItemOrderDetails, MEMORY[0x1E69E81B8]);
  v3 = sub_1B7800F78();
  [v2 setMailItemOrderDetailsObjects_];
}

void ManagedOrder.mailItemOrderDetails.setter(uint64_t a1)
{
  type metadata accessor for ManagedFoundInMailItemOrderDetails();
  sub_1B74515D8(&qword_1EB98FFC0, type metadata accessor for ManagedFoundInMailItemOrderDetails, MEMORY[0x1E69E81B8]);
  v2 = sub_1B7800F78();

  [v1 setMailItemOrderDetailsObjects_];
}

void (*ManagedOrder.mailItemOrderDetails.modify(uint64_t (**a1)(uint64_t)))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedOrder.mailItemOrderDetails.getter();
  return sub_1B744CD54;
}

void sub_1B744CD54(uint64_t *a1, char a2)
{
  type metadata accessor for ManagedFoundInMailItemOrderDetails();
  sub_1B74515D8(&qword_1EB98FFC0, type metadata accessor for ManagedFoundInMailItemOrderDetails, MEMORY[0x1E69E81B8]);
  v4 = a1[1];
  if (a2)
  {

    v5 = sub_1B7800F78();

    [v4 setMailItemOrderDetailsObjects_];
  }

  else
  {
    v6 = sub_1B7800F78();

    [v4 setMailItemOrderDetailsObjects_];
  }
}

uint64_t sub_1B744CE9C()
{
  sub_1B78022F8();
  sub_1B7802328();
  return sub_1B7802368();
}

uint64_t sub_1B744CF08(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7802328();
  return sub_1B7802368();
}

void ManagedOrder.orderContentType.getter()
{
  v1 = sub_1B7800838();
  [v0 willAccessValueForKey_];

  v2 = [v0 primitiveOrderContentType];
  v3 = sub_1B7800838();
  [v0 didAccessValueForKey_];

  LODWORD(v3) = [v2 shortValue];
  if (v3)
  {
    __break(1u);
  }
}

void sub_1B744D01C(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 willChangeValueForKey_];

  v4 = sub_1B7802288();
  [v2 setPrimitiveOrderContentType_];

  v5 = sub_1B7800838();
  [v2 didChangeValueForKey_];
}

uint64_t ManagedOrder.setOrderContent(_:modificationDate:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Order.PriorityInfo(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  v13 = sub_1B7802288();
  [v1 setPrimitiveOrderContentType_];

  v14 = sub_1B7800838();
  [v1 didChangeValueForKey_];

  [v1 setEcommerceOrderContent_];
  [v1 setOrderContentDecodingVersion_];
  v15 = sub_1B77FF8B8();
  [v2 setOrderContentModificationDate_];

  ManagedECommerceOrderContent.priorityInfo.getter(v10);
  [v2 setStatusPriorityValue_];
  sub_1B7280900(&v10[*(v8 + 32)], v6);
  v16 = sub_1B77FF988();
  v17 = *(v16 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v6, 1, v16) != 1)
  {
    v18 = sub_1B77FF8B8();
    (*(v17 + 8))(v6, v16);
  }

  [v2 setPriorityEstimatedCompletionDate_];

  ManagedOrder.updateOrderContentUpdatedDate()();
  return sub_1B7451E2C(v10, type metadata accessor for Order.PriorityInfo);
}

Swift::Void __swiftcall ManagedOrder.updateOrderContentUpdatedDate()()
{
  v1 = v0;
  v2 = sub_1B77FF988();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 ecommerceOrderContent];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 updatedDate];
    sub_1B77FF928();

    v9 = sub_1B77FF8B8();
    (*(v3 + 8))(v5, v2);
    [v1 setOrderContentUpdatedDate_];
  }

  else
  {
    sub_1B7801C88();
    __break(1u);
  }
}

void sub_1B744D528(char a1, uint64_t a2, SEL *a3, SEL *a4)
{
  [v4 *a3];
  v6 = sub_1B77FF8B8();
  [v4 *a4];
}

void sub_1B744D59C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7280900(a1, &v15 - v9);
  v11 = *a2;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF8B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

Swift::Void __swiftcall ManagedOrder.awakeFromInsert()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1B77FF988();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, sel_awakeFromInsert);
  sub_1B77FF938();
  v7 = sub_1B77FF8B8();
  (*(v4 + 8))(v6, v3);
  [v1 setCreationDate_];
}

Swift::Void __swiftcall ManagedOrder.willSave()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1B77FF988();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.receiver = v0;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_willSave);
  if (([v0 isDeleted] & 1) == 0)
  {
    sub_1B744DA78();
    sub_1B77FF938();
    ManagedOrder.updateEffectiveAutomaticUpdatesEnabledIfNeeded(now:)(v5);
    (*(v3 + 8))(v5, v2);
    if ([v0 automaticUpdatesEnabled])
    {
      v6 = [v0 notificationsEnabled];
      if (v6 == [v0 effectiveNotificationsEnabled])
      {
        return;
      }
    }

    else
    {
      if (([v0 effectiveNotificationsEnabled] & 1) == 0)
      {
        return;
      }

      v6 = 0;
    }

    [v0 setEffectiveNotificationsEnabled_];
  }
}

uint64_t sub_1B744DA78()
{
  v1 = v0;
  if ([v0 isMarkedAsComplete])
  {
    result = [v0 isActive];
    if ((result & 1) == 0)
    {
      return result;
    }

    LOBYTE(v3) = 0;
    goto LABEL_6;
  }

  v4 = [v0 ecommerceOrderContent];
  if (!v4)
  {
    result = sub_1B7801C88();
    __break(1u);
    return result;
  }

  v5 = v4;
  v3 = ManagedOrderContent.isActive.getter();

  result = [v1 isActive];
  if ((v3 ^ result))
  {
LABEL_6:

    return [v1 setIsActive_];
  }

  return result;
}

uint64_t ManagedOrder.updateEffectiveAutomaticUpdatesEnabledIfNeeded(now:)(uint64_t a1)
{
  v3 = sub_1B77FF988();
  v34 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v33 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v33 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v33 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = _s10FinanceKit12ManagedOrderC32effectiveAutomaticUpdatesEnabled5order3nowSbAC_10Foundation4DateVtFZ_0(v1, a1);
  v19 = v18 ^ [v1 effectiveAutomaticUpdatesEnabled];
  if (v19)
  {
    [v1 setEffectiveAutomaticUpdatesEnabled_];
    if (([v1 effectiveAutomaticUpdatesEnabled] & 1) != 0 || (v20 = objc_msgSend(v1, sel_orderRegistration)) == 0)
    {
      if ([v1 effectiveAutomaticUpdatesEnabled])
      {
        [v1 setRequestAttemptCount_];
        [v1 setLastRequestAttemptDate_];
      }
    }

    else
    {
      v21 = v20;
      if (([v1 automaticUpdatesEnabled] & 1) != 0 || (v22 = objc_msgSend(v1, sel_automaticUpdatesEnabledModificationDate)) == 0)
      {
        if ([v1 isMarkedAsComplete] && (v26 = objc_msgSend(v1, sel_isMarkedAsCompleteModificationDate)) != 0)
        {
          v27 = v26;
          sub_1B77FF928();

          v28 = v34;
          (*(v34 + 32))(v12, v9, v3);
          v29 = sub_1B77FF8B8();
          [v21 setCancellationDate_];

          (*(v28 + 8))(v12, v3);
        }

        else
        {
          v30 = [v1 orderContentModificationDate];
          sub_1B77FF928();

          v31 = sub_1B77FF8B8();
          (*(v34 + 8))(v6, v3);
          [v21 setCancellationDate_];
        }
      }

      else
      {
        v23 = v22;
        sub_1B77FF928();

        v24 = v34;
        (*(v34 + 32))(v17, v15, v3);
        v25 = sub_1B77FF8B8();
        [v21 setCancellationDate_];

        (*(v24 + 8))(v17, v3);
      }
    }
  }

  return v19 & 1;
}

uint64_t static ManagedOrder.isActive(order:)(void *a1)
{
  if ([a1 isMarkedAsComplete])
  {
    v2 = 0;
    return v2 & 1;
  }

  v3 = [a1 ecommerceOrderContent];
  if (v3)
  {
    v4 = v3;
    v2 = ManagedOrderContent.isActive.getter();

    return v2 & 1;
  }

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t ManagedOrder.updateShowsAsActiveIfNeeded(now:)(uint64_t a1)
{
  v3 = sub_1B77FFC88();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFBC8();
  v7 = _s10FinanceKit12ManagedOrderC13showsAsActive5order3now8calendarSbAC_10Foundation4DateVAH8CalendarVtFZ_0(v1, a1);
  (*(v4 + 8))(v6, v3);
  v8 = v7 ^ [v1 showsAsActive];
  if (v8)
  {
    [v1 setShowsAsActive_];
  }

  return v8 & 1;
}

id ManagedOrder.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrder.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ManagedOrder.orderUpdatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = [v2 orderContentUpdatedDate];
  if (v11)
  {
    v12 = v11;
    sub_1B77FF928();

    v13 = *(v5 + 32);
    v13(v10, v7, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
    return (v13)(a1, v10, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
    v15 = [v2 ecommerceOrderContent];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 updatedDate];
      sub_1B77FF928();

      result = (*(v5 + 48))(v10, 1, v4);
      if (result != 1)
      {
        return sub_1B7205418(v10, &qword_1EB98EBD0, &unk_1B7809780);
      }
    }

    else
    {
      result = sub_1B7801C88();
      __break(1u);
    }
  }

  return result;
}

uint64_t ManagedOrder.supportsAutomaticUpdates.getter()
{
  result = [v0 orderWebService];
  if (result)
  {

    result = [v0 authenticationToken];
    if (result)
    {

      return 1;
    }
  }

  return result;
}

uint64_t ManagedOrder.versionIdentifier.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 orderTypeIdentifier];
  v4 = sub_1B7800868();
  v6 = v5;

  v7 = [v1 orderIdentifier];
  v8 = sub_1B7800868();
  v10 = v9;

  v11 = type metadata accessor for Order.VersionIdentifier(0);
  result = ManagedOrder.orderUpdatedDate.getter(a1 + *(v11 + 20));
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
  return result;
}

void ManagedOrder.setIsMarkedAsComplete(_:modificationDate:)(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  [v3 setIsMarkedAsComplete_];
  sub_1B7280900(a2, v8);
  v9 = sub_1B77FF988();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = sub_1B77FF8B8();
    (*(v10 + 8))(v8, v9);
  }

  [v3 setIsMarkedAsCompleteModificationDate_];
}

uint64_t ManagedOrder.automaticUpdatesAvailable.getter()
{
  result = [v0 isActive];
  if (result)
  {
    result = [v0 orderWebService];
    if (result)
    {

      result = [v0 authenticationToken];
      if (result)
      {

        return 1;
      }
    }
  }

  return result;
}

void *ManagedOrder.statusPriority.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  result = [v2 statusPriorityValue];
  if (result == -1)
  {
    goto LABEL_4;
  }

  result = Order.StatusPriority.init(rawValue:)([v2 statusPriorityValue], &v7);
  v5 = v7;
  if (v7 == 10)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    sub_1B7801A78();

    v7 = 0xD000000000000022;
    v8 = 0x80000001B787F490;
    [v2 statusPriorityValue];
    v6 = sub_1B7802068();
    a1 = &v7;
    MEMORY[0x1B8CA4D30](v6);

    result = sub_1B7801C88();
    __break(1u);
LABEL_4:
    v5 = 10;
  }

  *a1 = v5;
  return result;
}

void ManagedOrder.priority.getter(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  ManagedOrder.statusPriority.getter(&v28);
  v16 = v28;
  if (v28 == 10 || (v17 = [v1 orderContentUpdatedDate]) == 0)
  {
    v24 = [v1 ecommerceOrderContent];
    if (v24)
    {
      v27 = v24;
      ManagedECommerceOrderContent.priorityInfo.getter(a1);
      v25 = v27;
    }

    else
    {
      sub_1B7801C88();
      __break(1u);
    }
  }

  else
  {
    v18 = v17;
    sub_1B77FF928();

    v19 = v13;
    v20 = *(v7 + 32);
    v20(v15, v19, v6);
    (*(v7 + 16))(v10, v15, v6);
    v21 = [v1 priorityEstimatedCompletionDate];
    if (v21)
    {
      v22 = v21;
      sub_1B77FF928();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    (*(v7 + 8))(v15, v6);
    (*(v7 + 56))(v5, v23, 1, v6);
    v20(a1, v10, v6);
    v26 = type metadata accessor for Order.PriorityInfo(0);
    a1[*(v26 + 20)] = v16;
    sub_1B7205340(v5, &a1[*(v26 + 24)]);
  }
}

id static ManagedOrder.dictionaryFetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit12ManagedOrder;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);
  [v0 setResultType_];
  return v0;
}

id static ManagedOrder.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit12ManagedOrder;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedOrder.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

unint64_t static ManagedOrder.existingOrder(with:in:)(__int128 *a1)
{
  v2 = v1;
  v11 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit12ManagedOrder;
  v5 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  v12 = v11;
  v13 = v3;
  v14 = v4;
  v6 = _s10FinanceKit17ManagedCloudOrderC012predicateFordE04withSo11NSPredicateCAA014FullyQualifiedE10IdentifierV_tFZ_0(&v12);
  [v5 setPredicate_];

  result = sub_1B7801498();
  if (v1)
  {

    return v2;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v9 = result;
  v10 = sub_1B7801958();
  result = v9;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);
LABEL_8:
    v2 = v8;

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedOrder.fetchShowsAsActiveOrders(in:)()
{
  v6.receiver = swift_getObjCClassFromMetadata();
  v6.super_class = &OBJC_METACLASS____TtC10FinanceKit12ManagedOrder;
  v0 = objc_msgSendSuper2(&v6, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7807CD0;
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(v1 + 56) = sub_1B7205540(0, &qword_1EDAFC4C8, 0x1E696AD98);
  *(v1 + 64) = sub_1B7451BE4();
  *(v1 + 32) = v2;
  v3 = sub_1B78010E8();
  [v0 setPredicate_];

  v4 = sub_1B7801498();
  return v4;
}

id static ManagedOrder.fetchShowsAsActiveOrdersRequest()()
{
  v5.receiver = swift_getObjCClassFromMetadata();
  v5.super_class = &OBJC_METACLASS____TtC10FinanceKit12ManagedOrder;
  v0 = objc_msgSendSuper2(&v5, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7807CD0;
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(v1 + 56) = sub_1B7205540(0, &qword_1EDAFC4C8, 0x1E696AD98);
  *(v1 + 64) = sub_1B7451BE4();
  *(v1 + 32) = v2;
  v3 = sub_1B78010E8();
  [v0 setPredicate_];

  return v0;
}

BOOL static ManagedOrder.exists(with:in:)(__int128 *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v16.receiver = swift_getObjCClassFromMetadata();
  v16.super_class = &OBJC_METACLASS____TtC10FinanceKit12ManagedOrder;
  v5 = objc_msgSendSuper2(&v16, sel_fetchRequest);
  v13 = v12;
  v14 = v3;
  v15 = v4;
  v6 = _s10FinanceKit17ManagedCloudOrderC012predicateFordE04withSo11NSPredicateCAA014FullyQualifiedE10IdentifierV_tFZ_0(&v13);
  [v5 setPredicate_];

  *&v13 = 0;
  v7 = [a2 countForFetchRequest:v5 error:&v13];
  v8 = v13;
  if (v13)
  {
    swift_willThrow();
    v8;
  }

  else
  {
    v10 = v7;

    return v10 > 0;
  }

  return v9;
}

unint64_t static ManagedOrder.existingOrder(withMessageID:orderNumber:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit12ManagedOrder;
  v6 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B721FF04();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1B78010E8();
  [v6 setPredicate_];

  result = sub_1B7801498();
  if (v2)
  {

    return v3;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v11 = result;
  v12 = sub_1B7801958();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v3 = v10;

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedOrder.predicateForOrder(withMessageID:)(uint64_t a1, uint64_t a2)
{
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return sub_1B78010E8();
}

uint64_t sub_1B744F600()
{
  v0 = sub_1B72020F4(&unk_1F2F44308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4D8, &qword_1B7809240);
  result = swift_arrayDestroy();
  qword_1EB994EC0 = v0;
  return result;
}

double static ManagedOrder.attributeNamesByKeyPath.getter()
{
  if (qword_1EB98EAD0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t static ManagedOrder.predicateForShowsAsActive()()
{
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(v0 + 56) = sub_1B7205540(0, &qword_1EDAFC4C8, 0x1E696AD98);
  *(v0 + 64) = sub_1B7451BE4();
  *(v0 + 32) = v1;
  return sub_1B78010E8();
}

id static ManagedOrder.fetchEffectiveAutomaticUpdatesEnabledOrdersRequest()()
{
  v5.receiver = swift_getObjCClassFromMetadata();
  v5.super_class = &OBJC_METACLASS____TtC10FinanceKit12ManagedOrder;
  v0 = objc_msgSendSuper2(&v5, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7807CD0;
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(v1 + 56) = sub_1B7205540(0, &qword_1EDAFC4C8, 0x1E696AD98);
  *(v1 + 64) = sub_1B7451BE4();
  *(v1 + 32) = v2;
  v3 = sub_1B78010E8();
  [v0 setPredicate_];

  return v0;
}

double sub_1B744F8D0()
{
  if (qword_1EB98EAD0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t static ManagedOrder.predicateForOrdersWithStatus(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7290];
  *(v2 + 16) = xmmword_1B7807CD0;
  v4 = MEMORY[0x1E69E72E8];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = v1;
  return sub_1B78010E8();
}

uint64_t static ManagedOrder.predicateForOrdersWithObjectIDs(_:)(uint64_t a1)
{
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7807CD0;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994ED0, &qword_1B782C410);
  *(v2 + 64) = sub_1B7451C4C();
  *(v2 + 32) = a1;

  return sub_1B78010E8();
}

void sub_1B744FA94()
{
  v1 = sub_1B77FE748();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1B77FE758();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [v0 ecommerceOrderContent];
  if (!v6 || (v7 = v6, v8 = [v6 isDeleted], v7, (v8 & 1) != 0))
  {
    sub_1B77FE6D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110, &unk_1B7808C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7807CD0;
    *(inited + 32) = sub_1B7800868();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v10;
    *(inited + 48) = 0xD000000000000015;
    *(inited + 56) = 0x80000001B787EB00;
    sub_1B72018E0(inited);
    swift_setDeallocating();
    sub_1B7205418(inited + 32, &qword_1EB98F118, &qword_1B781A570);
    sub_1B74515D8(&qword_1EDAF6608, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1B77FF2F8();
    sub_1B77FE688();
    (*(v3 + 8))(v5, v2);
    swift_willThrow();
  }
}

void sub_1B744FDB0(SEL *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.super_class = swift_getObjectType();
  v10[0] = 0;
  v9.receiver = v1;
  if (objc_msgSendSuper2(&v9, *a1, v10))
  {
    v4 = v10[0];
    sub_1B744FA94();
    if (!v2)
    {
      v5 = [v1 authenticationToken];
      if (v5)
      {

        KeyPath = swift_getKeyPath();
        sub_1B744BC78(v1, KeyPath);
      }

      v7 = swift_getKeyPath();
      sub_1B744BC78(v1, v7);
    }
  }

  else
  {
    v8 = v10[0];
    sub_1B77FF318();

    swift_willThrow();
  }
}

uint64_t sub_1B744FF08(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

uint64_t sub_1B744FF8C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B77E6DD4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B7450008(v6);
  return sub_1B7801B78();
}

void sub_1B7450008(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B7802038();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ManagedFoundInMailItem();
        v6 = sub_1B7800C78();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1B74504B8(v8, v9, a1, v4);
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
    sub_1B745010C(0, v2, 1, a1);
  }
}

void sub_1B745010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1B77FF988();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = a2;
  if (a3 != a2)
  {
    v14 = &v43 - v13;
    v53 = *a4;
    v52 = (v12 + 8);
    v15 = v53 + 8 * a3 - 8;
    v16 = a1 - a3;
    v49 = v11;
    v50 = v8;
    v48 = &v43 - v13;
LABEL_6:
    v46 = v15;
    v47 = a3;
    v17 = *(v53 + 8 * a3);
    v45 = v16;
    while (1)
    {
      v54 = v16;
      v18 = *v15;
      v19 = v17;
      v20 = v18;
      v21 = v8;
      v22 = v19;
      v23 = [v19 dateSent];
      sub_1B77FF928();

      v55 = v20;
      v24 = [v20 dateSent];
      sub_1B77FF928();

      LOBYTE(v24) = sub_1B77FF918();
      v25 = *v52;
      (*v52)(v11, v21);
      v25(v14, v21);
      if (v24)
      {
        v26 = v22;
        v27 = [v22 messageID];
        v28 = sub_1B7800868();
        v30 = v29;

        v31 = v55;
        v32 = [v55 messageID];
        v33 = sub_1B7800868();
        v35 = v34;

        if (v28 == v33 && v30 == v35)
        {

          v11 = v49;
          v8 = v50;
          v14 = v48;
LABEL_5:
          a3 = v47 + 1;
          v15 = v46 + 8;
          v16 = v45 - 1;
          if (v47 + 1 == v44)
          {
            return;
          }

          goto LABEL_6;
        }

        v36 = sub_1B78020F8();

        v11 = v49;
        v8 = v50;
        v14 = v48;
        v37 = v54;
        if ((v36 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v51 = v22;
        v38 = [v22 &selRef_setTransactionCategorySourceValue_ + 7];
        sub_1B77FF928();

        v39 = v55;
        v40 = [v55 &selRef_setTransactionCategorySourceValue_ + 7];
        sub_1B77FF928();

        LOBYTE(v40) = sub_1B77FF8D8();
        v25(v11, v21);
        v25(v14, v21);

        v8 = v21;
        v37 = v54;
        if ((v40 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v53)
      {
        break;
      }

      v41 = *v15;
      v17 = *(v15 + 8);
      *v15 = v17;
      *(v15 + 8) = v41;
      v15 -= 8;
      v42 = __CFADD__(v37, 1);
      v16 = v37 + 1;
      if (v42)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1B74504B8(void **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v7 = v5;
  v138 = a1;
  v10 = sub_1B77FF988();
  v11 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v132 - v13;
  v16 = a3[1];
  if (v16 >= 1)
  {
    v17 = 0;
    v147 = (v12 + 8);
    v18 = MEMORY[0x1E69E7CC0];
    v137 = a4;
    v148 = v10;
    v143 = v14;
    v144 = &v132 - v13;
    v133 = a3;
    while (1)
    {
      v19 = v17++;
      if (v17 < v16)
      {
        v145 = v16;
        v136 = v18;
        v6 = *a3;
        v20 = *(*a3 + 8 * v17);
        v150 = *(*a3 + 8 * v19);
        v21 = v150;
        v151 = v20;
        v22 = v20;
        v4 = v21;
        LODWORD(v146) = sub_1B744C50C(&v151, &v150);
        if (v7)
        {

          return;
        }

        v17 = v19 + 2;
        if (v19 + 2 >= v145)
        {
          v18 = v136;
          v15 = v144;
          if (v146)
          {
LABEL_18:
            if (v17 < v19)
            {
              goto LABEL_137;
            }

LABEL_19:
            if (v19 < v17)
            {
              v47 = 8 * v17 - 8;
              v48 = 8 * v19;
              v49 = v17;
              v50 = v19;
              do
              {
                if (v50 != --v49)
                {
                  v51 = *a3;
                  if (!*a3)
                  {
                    goto LABEL_143;
                  }

                  v52 = *(v51 + v48);
                  *(v51 + v48) = *(v51 + v47);
                  *(v51 + v47) = v52;
                }

                ++v50;
                v47 -= 8;
                v48 += 8;
              }

              while (v50 < v49);
            }
          }
        }

        else
        {
          v134 = v19;
          v135 = 0;
          v142 = (v19 + 2);
          v23 = (v6 + 8 * v19 + 16);
          v15 = v144;
          v24 = &off_1E7CAF000;
          do
          {
            v29 = *(v23 - 1);
            v30 = *v23;
            v31 = v29;
            v32 = v30;
            v33 = [v30 v24[439]];
            sub_1B77FF928();

            v34 = v24[439];
            v149 = v31;
            v35 = [v31 v34];
            v6 = v143;
            sub_1B77FF928();

            LOBYTE(v35) = sub_1B77FF918();
            v36 = v15;
            v37 = v148;
            v38 = *v147;
            (*v147)(v6, v148);
            v38(v36, v37);
            if (v35)
            {
              v39 = v32;
              v40 = [v32 messageID];
              v4 = sub_1B7800868();
              v42 = v41;

              v43 = v149;
              v6 = [v149 messageID];
              v44 = sub_1B7800868();
              v46 = v45;

              if (v4 == v44 && v42 == v46)
              {

                v24 = &off_1E7CAF000;
                if (v146)
                {
                  v18 = v136;
                  a4 = v137;
                  v15 = v144;
                  v17 = v142;
                  a3 = v133;
                  v19 = v134;
                  v7 = v135;
                  if (v142 < v134)
                  {
                    goto LABEL_137;
                  }

                  goto LABEL_19;
                }
              }

              else
              {
                v4 = sub_1B78020F8();

                v24 = &off_1E7CAF000;
                if ((v146 ^ v4))
                {
LABEL_16:
                  v18 = v136;
                  a4 = v137;
                  v15 = v144;
                  v17 = v142;
                  goto LABEL_26;
                }
              }
            }

            else
            {
              v25 = v24[439];
              v141 = v32;
              v26 = [v32 v25];
              sub_1B77FF928();

              v27 = v149;
              v28 = [v149 v24[439]];
              sub_1B77FF928();

              v4 = sub_1B77FF8D8();
              v38(v6, v37);
              v38(v36, v37);

              if ((v146 ^ v4))
              {
                goto LABEL_16;
              }
            }

            ++v23;
            ++v142;
            v15 = v144;
          }

          while (v145 != v142);
          v17 = v145;
          v18 = v136;
          a4 = v137;
LABEL_26:
          a3 = v133;
          v19 = v134;
          v7 = v135;
          if (v146)
          {
            goto LABEL_18;
          }
        }
      }

      v53 = a3[1];
      if (v17 >= v53)
      {
        goto LABEL_50;
      }

      if (__OFSUB__(v17, v19))
      {
        goto LABEL_136;
      }

      if (v17 - v19 >= a4)
      {
        goto LABEL_50;
      }

      v54 = v19 + a4;
      if (__OFADD__(v19, a4))
      {
        goto LABEL_138;
      }

      if (v54 >= v53)
      {
        v54 = a3[1];
      }

      if (v54 < v19)
      {
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      if (v17 == v54)
      {
        goto LABEL_50;
      }

      v135 = v7;
      v136 = v18;
      v146 = *a3;
      v55 = (v146 + 8 * v17 - 8);
      v134 = v19;
      v56 = v19 - v17;
      v57 = v143;
      v139 = v54;
LABEL_38:
      v141 = v55;
      v142 = v17;
      v58 = *(v146 + 8 * v17);
      v140 = v56;
      while (1)
      {
        v59 = *v55;
        v60 = v58;
        v61 = v59;
        v62 = v60;
        v63 = [v60 dateSent];
        sub_1B77FF928();

        v149 = v61;
        v64 = [v61 dateSent];
        sub_1B77FF928();

        LOBYTE(v64) = sub_1B77FF918();
        v65 = v15;
        v66 = v57;
        v6 = v148;
        v67 = *v147;
        (*v147)(v66, v148);
        v67(v65, v6);
        if (v64)
        {
          break;
        }

        v145 = v62;
        v76 = [v62 dateSent];
        sub_1B77FF928();

        v77 = v149;
        v78 = [v149 dateSent];
        sub_1B77FF928();

        v4 = sub_1B77FF8D8();
        v67(v66, v6);
        v67(v65, v6);

        v57 = v66;
        v15 = v65;
        if ((v4 & 1) == 0)
        {
          goto LABEL_37;
        }

LABEL_45:
        if (!v146)
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        v79 = *v55;
        v58 = v55[1];
        *v55 = v58;
        v55[1] = v79;
        --v55;
        if (__CFADD__(v56++, 1))
        {
          goto LABEL_37;
        }
      }

      v6 = v62;
      v68 = [v62 messageID];
      v69 = sub_1B7800868();
      v71 = v70;

      v72 = v149;
      v73 = [v149 messageID];
      v4 = sub_1B7800868();
      v75 = v74;

      if (v69 != v4 || v71 != v75)
      {
        break;
      }

      v57 = v143;
      v15 = v144;
LABEL_37:
      v17 = (v142 + 1);
      v55 = v141 + 1;
      v56 = v140 - 1;
      if (v142 + 1 != v139)
      {
        goto LABEL_38;
      }

      v17 = v139;
      v7 = v135;
      v18 = v136;
      a3 = v133;
      v19 = v134;
LABEL_50:
      if (v17 < v19)
      {
        goto LABEL_135;
      }

      v81 = v18;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v18 = v81;
      }

      else
      {
        v18 = sub_1B723E420(0, *(v81 + 2) + 1, 1, v81);
      }

      v4 = *(v18 + 2);
      v82 = *(v18 + 3);
      v83 = v4 + 1;
      if (v4 >= v82 >> 1)
      {
        v18 = sub_1B723E420((v82 > 1), v4 + 1, 1, v18);
      }

      *(v18 + 2) = v83;
      v84 = &v18[16 * v4];
      *(v84 + 4) = v19;
      *(v84 + 5) = v17;
      v85 = *v138;
      if (!*v138)
      {
        goto LABEL_145;
      }

      if (v4)
      {
        while (2)
        {
          v6 = v83 - 1;
          if (v83 >= 4)
          {
            v90 = &v18[16 * v83 + 32];
            v91 = *(v90 - 64);
            v92 = *(v90 - 56);
            v96 = __OFSUB__(v92, v91);
            v93 = v92 - v91;
            if (v96)
            {
              goto LABEL_122;
            }

            v95 = *(v90 - 48);
            v94 = *(v90 - 40);
            v96 = __OFSUB__(v94, v95);
            v88 = v94 - v95;
            v89 = v96;
            if (v96)
            {
              goto LABEL_123;
            }

            v97 = &v18[16 * v83];
            v99 = *v97;
            v98 = *(v97 + 1);
            v96 = __OFSUB__(v98, v99);
            v100 = v98 - v99;
            if (v96)
            {
              goto LABEL_125;
            }

            v96 = __OFADD__(v88, v100);
            v101 = v88 + v100;
            if (v96)
            {
              goto LABEL_128;
            }

            if (v101 >= v93)
            {
              v119 = &v18[16 * v6 + 32];
              v121 = *v119;
              v120 = *(v119 + 1);
              v96 = __OFSUB__(v120, v121);
              v122 = v120 - v121;
              if (v96)
              {
                goto LABEL_132;
              }

              if (v88 < v122)
              {
                v6 = v83 - 2;
              }
            }

            else
            {
LABEL_70:
              if (v89)
              {
                goto LABEL_124;
              }

              v102 = &v18[16 * v83];
              v104 = *v102;
              v103 = *(v102 + 1);
              v105 = __OFSUB__(v103, v104);
              v106 = v103 - v104;
              v107 = v105;
              if (v105)
              {
                goto LABEL_127;
              }

              v108 = &v18[16 * v6 + 32];
              v110 = *v108;
              v109 = *(v108 + 1);
              v96 = __OFSUB__(v109, v110);
              v111 = v109 - v110;
              if (v96)
              {
                goto LABEL_130;
              }

              if (__OFADD__(v106, v111))
              {
                goto LABEL_131;
              }

              if (v106 + v111 < v88)
              {
                goto LABEL_84;
              }

              if (v88 < v111)
              {
                v6 = v83 - 2;
              }
            }
          }

          else
          {
            if (v83 == 3)
            {
              v86 = *(v18 + 4);
              v87 = *(v18 + 5);
              v96 = __OFSUB__(v87, v86);
              v88 = v87 - v86;
              v89 = v96;
              goto LABEL_70;
            }

            v112 = &v18[16 * v83];
            v114 = *v112;
            v113 = *(v112 + 1);
            v96 = __OFSUB__(v113, v114);
            v106 = v113 - v114;
            v107 = v96;
LABEL_84:
            if (v107)
            {
              goto LABEL_126;
            }

            v115 = &v18[16 * v6];
            v117 = *(v115 + 4);
            v116 = *(v115 + 5);
            v96 = __OFSUB__(v116, v117);
            v118 = v116 - v117;
            if (v96)
            {
              goto LABEL_129;
            }

            if (v118 < v106)
            {
              break;
            }
          }

          v4 = v6 - 1;
          if (v6 - 1 >= v83)
          {
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
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
            goto LABEL_139;
          }

          if (!*a3)
          {
            goto LABEL_142;
          }

          v123 = v18;
          v124 = *&v18[16 * v4 + 32];
          v125 = *&v18[16 * v6 + 40];
          sub_1B7451000((*a3 + 8 * v124), (*a3 + 8 * *&v18[16 * v6 + 32]), (*a3 + 8 * v125), v85);
          if (v7)
          {
            goto LABEL_116;
          }

          if (v125 < v124)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = sub_1B77E4CA4(v123);
          }

          if (v4 >= *(v123 + 2))
          {
            goto LABEL_121;
          }

          v126 = &v123[16 * v4];
          *(v126 + 4) = v124;
          *(v126 + 5) = v125;
          v152 = v123;
          sub_1B77E4C18(v6);
          v18 = v152;
          v83 = *(v152 + 2);
          v15 = v144;
          if (v83 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v16 = a3[1];
      a4 = v137;
      if (v17 >= v16)
      {
        goto LABEL_105;
      }
    }

    v4 = sub_1B78020F8();

    v57 = v143;
    v15 = v144;
    if ((v4 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_105:
  v6 = *v138;
  if (!*v138)
  {
    goto LABEL_146;
  }

  v4 = v18;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v127 = v4;
  }

  else
  {
LABEL_140:
    v127 = sub_1B77E4CA4(v4);
  }

  v152 = v127;
  v4 = *(v127 + 2);
  if (v4 < 2)
  {
LABEL_116:

    return;
  }

  while (*a3)
  {
    v128 = *&v127[16 * v4];
    v129 = v127;
    v130 = *&v127[16 * v4 + 24];
    sub_1B7451000((*a3 + 8 * v128), (*a3 + 8 * *&v127[16 * v4 + 16]), (*a3 + 8 * v130), v6);
    if (v7)
    {
      goto LABEL_116;
    }

    if (v130 < v128)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v129 = sub_1B77E4CA4(v129);
    }

    if (v4 - 2 >= *(v129 + 2))
    {
      goto LABEL_134;
    }

    v131 = &v129[16 * v4];
    *v131 = v128;
    *(v131 + 1) = v130;
    v152 = v129;
    sub_1B77E4C18(v4 - 1);
    v127 = v152;
    v4 = *(v152 + 2);
    if (v4 <= 1)
    {
      goto LABEL_116;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_1B7451000(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_1B744C50C(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= (v21 + (v44 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = (v21 + 1);
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = v16 - a4 + 7;
    if ((v16 - a4) >= 0)
    {
      v46 = v16 - a4;
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = v16 + v28;
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *--v31;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_1B744C50C(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = v6 + 1;
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= v51 + (v40 & 0xFFFFFFFFFFFFFFF8) || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

id _s10FinanceKit12ManagedOrderC18predicateForOrders25withTransactionIdentifierSo11NSPredicateCSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B781E650;
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1B721FF04();
  *(v5 + 64) = v7;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  *(v4 + 32) = sub_1B78010E8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7808C50;
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 32) = 0xD000000000000042;
  *(v8 + 40) = 0x80000001B787F9A0;
  *(v8 + 96) = v6;
  *(v8 + 104) = v7;
  *(v8 + 72) = a1;
  *(v8 + 80) = a2;

  *(v4 + 40) = sub_1B78010E8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7808C50;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  *(v9 + 32) = 0xD000000000000030;
  *(v9 + 40) = 0x80000001B787FA20;
  *(v9 + 96) = v6;
  *(v9 + 104) = v7;
  *(v9 + 72) = a1;
  *(v9 + 80) = a2;

  *(v4 + 48) = sub_1B78010E8();
  v10 = sub_1B7800C18();

  v11 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v11;
}

uint64_t sub_1B74515D8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10FinanceKit12ManagedOrderC32effectiveAutomaticUpdatesEnabled5order3nowSbAC_10Foundation4DateVtFZ_0(void *a1, uint64_t a2)
{
  v3 = sub_1B77FF988();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  if (([a1 isMarkedAsComplete] & 1) == 0 && (v10 = objc_msgSend(a1, sel_orderWebService)) != 0 && (v10, (v11 = objc_msgSend(a1, sel_authenticationToken)) != 0) && (v11, objc_msgSend(a1, sel_automaticUpdatesEnabled)))
  {
    v12 = [a1 automaticUpdatesEnabledUntilDate];
    if (v12)
    {
      v13 = v12;
      sub_1B77FF928();

      (*(v4 + 32))(v9, v7, v3);
      v14 = sub_1B77FF8C8();
      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t _s10FinanceKit12ManagedOrderC13showsAsActive5order3now8calendarSbAC_10Foundation4DateVAH8CalendarVtFZ_0(void *a1, uint64_t a2)
{
  v27[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938, &unk_1B7812F00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40, &qword_1B7809790);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v27 - v10;
  v12 = type metadata accessor for Duration(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B77FF988();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v27 - v20;
  if ([a1 isMarkedAsComplete])
  {
    v22 = 0;
    return v22 & 1;
  }

  ManagedOrder.orderUpdatedDate.getter(v19);
  v23 = sub_1B77FFC88();
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  v24 = sub_1B77FFCF8();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  sub_1B77FECD8();
  sub_1B77FFC08();
  result = (*(v16 + 48))(v5, 1, v15);
  if (result != 1)
  {
    sub_1B7451E2C(v14, type metadata accessor for Duration);
    v26 = *(v16 + 8);
    v26(v19, v15);
    (*(v16 + 32))(v21, v5, v15);
    v22 = sub_1B77FF8D8();
    v26(v21, v15);
    return v22 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7451BE4()
{
  result = qword_1EDAF6448;
  if (!qword_1EDAF6448)
  {
    v3 = sub_1B7205540(255, &qword_1EDAFC4C8, 0x1E696AD98);
    result = swift_getWitnessTable(MEMORY[0x1E69E81C8], v3, v0, v1);
    atomic_store(result, &qword_1EDAF6448);
  }

  return result;
}

unint64_t sub_1B7451C4C()
{
  result = qword_1EB994ED8;
  if (!qword_1EB994ED8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994ED0, &qword_1B782C410);
    result = swift_getWitnessTable(MEMORY[0x1E6969E40], v3, v0, v1);
    atomic_store(result, &qword_1EB994ED8);
  }

  return result;
}

unint64_t sub_1B7451CCC()
{
  result = qword_1EB994EE0;
  if (!qword_1EB994EE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManagedOrder.OrderContentType, &type metadata for ManagedOrder.OrderContentType, v0, v1);
    atomic_store(result, &qword_1EB994EE0);
  }

  return result;
}

uint64_t sub_1B7451E2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B7451EA4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 annotation];
  v4 = sub_1B77FF5B8();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B7451EFC(id *a1)
{
  v1 = [*a1 annotatedObjectID];
  sub_1B77FF9E8();
}

id ManagedAnnotation.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAnnotation.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAnnotation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedAnnotation.__allocating_init(annotation:key:applicationGroupID:annotatedObjectID:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v14 = [objc_allocWithZone(v9) initWithContext_];
  v15 = sub_1B77FF598();
  [v14 setAnnotation_];

  v16 = sub_1B7800838();

  [v14 setKey_];

  v17 = sub_1B7800838();

  [v14 setApplicationGroupID_];

  v18 = sub_1B77FF9B8();
  [v14 setAnnotatedObjectID_];

  sub_1B720A388(a1, a2);
  v19 = sub_1B77FFA18();
  (*(*(v19 - 8) + 8))(a7, v19);
  return v14;
}

id static ManagedAnnotation.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit17ManagedAnnotation;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

unint64_t sub_1B7452294()
{
  v1 = v0;
  type metadata accessor for ManagedAnnotation();
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit17ManagedAnnotation;
  v2 = objc_msgSendSuper2(&v10, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  v4 = sub_1B77FF9B8();
  *(v3 + 56) = sub_1B7205540(0, &qword_1EB9905A8, 0x1E696AFB0);
  *(v3 + 64) = sub_1B726E47C();
  *(v3 + 32) = v4;
  v5 = sub_1B78010E8();
  [v2 setPredicate_];

  result = sub_1B7801498();
  if (v0)
  {

    return v1;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v8 = result;
  v9 = sub_1B7801958();
  result = v8;
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);
LABEL_8:
    v1 = v7;

    return v1;
  }

  __break(1u);
  return result;
}

void keypath_setTm_5(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), SEL *a6)
{
  v7 = *a2;
  v8 = (a5)(*a1, a1[1], a3, a4);
  [v7 *a6];
}

id static BackgroundDeliveryServiceConfiguration.serviceInterface.getter()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

id sub_1B74525D0()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

uint64_t dispatch thunk of BackgroundDeliveryProviding.initiateDelivery(with:frequency:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B721FB60;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_1B7452764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10, &qword_1B780B4A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v48 - v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F3E0, &unk_1B7809140);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v48 - v5;
  v6 = type metadata accessor for MapsTransactionInsightResult(0);
  v53 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v48 - v9;
  v65 = sub_1B77FFA18();
  v10 = *(v65 - 8);
  v11 = MEMORY[0x1EEE9AC00](v65);
  v62 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v60 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v48 - v15;
  v16 = sub_1B7203B8C(MEMORY[0x1E69E7CC0]);
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v63 = v16;
  v64 = (v10 + 48);
  v54 = (v10 + 32);
  v57 = (v10 + 16);
  v51 = v10;
  v52 = (v10 + 8);

  v21 = 0;
  while (1)
  {
    v22 = v21;
    if (!v19)
    {
      break;
    }

LABEL_8:
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = *(*(a1 + 56) + 8 * (v23 | (v21 << 6)));

    v25 = v24;
    sub_1B77FF998();
    if ((*v64)(v4, 1, v65) == 1)
    {
      sub_1B7205418(v4, &unk_1EB993A10, &qword_1B780B4A0);
    }

    else
    {
      v49 = *v54;
      v49(v60, v4, v65);
      v26 = v55;
      v50 = *(v56 + 48);
      v49(v55, v60, v65);
      v48 = type metadata accessor for MapsTransactionInsightResult;
      sub_1B7453F94(v25 + OBJC_IVAR___XPCMapsTransactionInsightResult_value, v50 + v26, type metadata accessor for MapsTransactionInsightResult);
      v49(v61, v26, v65);
      v27 = v50 + v26;
      v28 = v58;
      v29 = v48;
      sub_1B7453FFC(v27, v58, v48);
      v49 = *v57;
      v49(v62, v61, v65);
      sub_1B7453F94(v28, v59, v29);
      v30 = v63;
      LODWORD(v50) = swift_isUniquelyReferenced_nonNull_native();
      v66 = v30;
      v32 = sub_1B72454E8(v62);
      v33 = *(v30 + 16);
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_22;
      }

      if (*(v30 + 24) >= v35)
      {
        if ((v50 & 1) == 0)
        {
          LODWORD(v63) = v31;
          sub_1B725D238();
          LOBYTE(v31) = v63;
        }
      }

      else
      {
        LODWORD(v63) = v31;
        sub_1B724AAC8(v35, v50);
        v36 = sub_1B72454E8(v62);
        v37 = v31 & 1;
        LOBYTE(v31) = v63;
        if ((v63 & 1) != v37)
        {
          goto LABEL_24;
        }

        v32 = v36;
      }

      v38 = v66;
      v63 = v66;
      if (v31)
      {
        sub_1B74540C4(v59, *(v66 + 56) + *(v53 + 72) * v32);
        v39 = *v52;
        (*v52)(v62, v65);
        sub_1B7454064(v58, type metadata accessor for MapsTransactionInsightResult);
        v39(v61, v65);
      }

      else
      {
        *(v66 + 8 * (v32 >> 6) + 64) |= 1 << v32;
        v40 = v51;
        v49((*(v38 + 48) + *(v51 + 72) * v32), v62, v65);
        v41 = *(v63 + 56) + *(v53 + 72) * v32;
        v50 = type metadata accessor for MapsTransactionInsightResult;
        sub_1B7453FFC(v59, v41, type metadata accessor for MapsTransactionInsightResult);
        v42 = *(v40 + 8);
        v42(v62, v65);
        sub_1B7454064(v58, v50);
        v42(v61, v65);
        v43 = v63;

        v44 = *(v43 + 16);
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_23;
        }

        *(v43 + 16) = v46;
      }
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v63;
    }

    v19 = *(a1 + 64 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1B78021C8();
  __break(1u);
  return result;
}

void *sub_1B7452DDC(uint64_t a1)
{
  v2 = type metadata accessor for MapsTransactionInsightResult(0);
  v71 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v65 - v6;
  v7 = sub_1B77FFA18();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v80 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994EF8, &qword_1B782C658);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v76 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v65 - v15;
  v16 = sub_1B7203DA8(MEMORY[0x1E69E7CC0]);
  v17 = *(a1 + 64);
  v66 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v65 = (v18 + 63) >> 6;
  v68 = v8 + 16;
  v77 = (v8 + 32);
  v70 = v8;
  v72 = a1;
  v73 = (v8 + 8);

  v21 = 0;
  v74 = v7;
  v67 = v5;
  while (v20)
  {
    v24 = v21;
LABEL_15:
    v29 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v30 = v29 | (v24 << 6);
    v31 = v72;
    v33 = v69;
    v32 = v70;
    (*(v70 + 16))(v69, *(v72 + 48) + *(v70 + 72) * v30, v7);
    v34 = v78;
    sub_1B7453F94(*(v31 + 56) + *(v71 + 72) * v30, v78, type metadata accessor for MapsTransactionInsightResult);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F00, &qword_1B782C660);
    v36 = *(v35 + 48);
    v37 = *(v32 + 32);
    v38 = v76;
    v37(v76, v33, v7);
    v27 = v38;
    sub_1B7453FFC(v34, &v38[v36], type metadata accessor for MapsTransactionInsightResult);
    (*(*(v35 - 8) + 56))(v38, 0, 1, v35);
    v26 = v24;
    v28 = v75;
    v5 = v67;
LABEL_16:
    sub_1B722376C(v27, v28, &qword_1EB994EF8, &qword_1B782C658);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F00, &qword_1B782C660);
    if ((*(*(v39 - 8) + 48))(v28, 1, v39) == 1)
    {

      return v16;
    }

    v79 = v26;
    v40 = *(v39 + 48);
    (*v77)(v80, v28, v7);
    sub_1B7453FFC(v28 + v40, v5, type metadata accessor for MapsTransactionInsightResult);
    v41 = sub_1B77FF9A8();
    v43 = v42;
    v44 = v5;
    v45 = v78;
    sub_1B7453F94(v5, v78, type metadata accessor for MapsTransactionInsightResult);
    v46 = type metadata accessor for MapsTransactionInsightResult.XPC(0);
    v47 = objc_allocWithZone(v46);
    sub_1B7453F94(v45, v47 + OBJC_IVAR___XPCMapsTransactionInsightResult_value, type metadata accessor for MapsTransactionInsightResult);
    v82.receiver = v47;
    v82.super_class = v46;
    v48 = objc_msgSendSuper2(&v82, sel_init);
    sub_1B7454064(v45, type metadata accessor for MapsTransactionInsightResult);
    v49 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v16;
    v52 = sub_1B724548C(v41, v43);
    v53 = v16[2];
    v54 = (v51 & 1) == 0;
    v55 = v53 + v54;
    if (__OFADD__(v53, v54))
    {
      goto LABEL_29;
    }

    v56 = v51;
    if (v16[3] >= v55)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B725D564();
      }
    }

    else
    {
      sub_1B724AF6C(v55, isUniquelyReferenced_nonNull_native);
      v57 = sub_1B724548C(v41, v43);
      if ((v56 & 1) != (v58 & 1))
      {
        goto LABEL_31;
      }

      v52 = v57;
    }

    v5 = v44;
    v16 = v81;
    if (v56)
    {
      v22 = v81[7];
      v23 = *(v22 + 8 * v52);
      *(v22 + 8 * v52) = v49;

      sub_1B7454064(v44, type metadata accessor for MapsTransactionInsightResult);
      v7 = v74;
      (*v73)(v80, v74);
    }

    else
    {
      v81[(v52 >> 6) + 8] |= 1 << v52;
      v59 = (v16[6] + 16 * v52);
      *v59 = v41;
      v59[1] = v43;
      *(v16[7] + 8 * v52) = v49;

      sub_1B7454064(v44, type metadata accessor for MapsTransactionInsightResult);
      v7 = v74;
      (*v73)(v80, v74);
      v60 = v16[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_30;
      }

      v16[2] = v62;
    }

    v21 = v79;
  }

  if (v65 <= v21 + 1)
  {
    v25 = v21 + 1;
  }

  else
  {
    v25 = v65;
  }

  v26 = v25 - 1;
  v28 = v75;
  v27 = v76;
  while (1)
  {
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v24 >= v65)
    {
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F00, &qword_1B782C660);
      (*(*(v63 - 8) + 56))(v27, 1, 1, v63);
      v20 = 0;
      goto LABEL_16;
    }

    v20 = *(v66 + 8 * v24);
    ++v21;
    if (v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1B78021C8();
  __break(1u);
  return result;
}

void *sub_1B74534E4(uint64_t a1)
{
  v2 = type metadata accessor for Transaction.Insight(0);
  v71 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v65 - v6;
  v7 = sub_1B77FFA18();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v80 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994EE8, &qword_1B782C648);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v76 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v65 - v15;
  v16 = sub_1B7204788(MEMORY[0x1E69E7CC0]);
  v17 = *(a1 + 64);
  v66 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v65 = (v18 + 63) >> 6;
  v68 = v8 + 16;
  v77 = (v8 + 32);
  v70 = v8;
  v72 = a1;
  v73 = (v8 + 8);

  v21 = 0;
  v74 = v7;
  v67 = v5;
  while (v20)
  {
    v24 = v21;
LABEL_15:
    v29 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v30 = v29 | (v24 << 6);
    v31 = v72;
    v33 = v69;
    v32 = v70;
    (*(v70 + 16))(v69, *(v72 + 48) + *(v70 + 72) * v30, v7);
    v34 = v78;
    sub_1B7453F94(*(v31 + 56) + *(v71 + 72) * v30, v78, type metadata accessor for Transaction.Insight);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994EF0, &qword_1B782C650);
    v36 = *(v35 + 48);
    v37 = *(v32 + 32);
    v38 = v76;
    v37(v76, v33, v7);
    v27 = v38;
    sub_1B7453FFC(v34, &v38[v36], type metadata accessor for Transaction.Insight);
    (*(*(v35 - 8) + 56))(v38, 0, 1, v35);
    v26 = v24;
    v28 = v75;
    v5 = v67;
LABEL_16:
    sub_1B722376C(v27, v28, &qword_1EB994EE8, &qword_1B782C648);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994EF0, &qword_1B782C650);
    if ((*(*(v39 - 8) + 48))(v28, 1, v39) == 1)
    {

      return v16;
    }

    v79 = v26;
    v40 = *(v39 + 48);
    (*v77)(v80, v28, v7);
    sub_1B7453FFC(v28 + v40, v5, type metadata accessor for Transaction.Insight);
    v41 = sub_1B77FF9A8();
    v43 = v42;
    v44 = v5;
    v45 = v78;
    sub_1B7453F94(v5, v78, type metadata accessor for Transaction.Insight);
    v46 = type metadata accessor for Transaction.Insight.XPC(0);
    v47 = objc_allocWithZone(v46);
    sub_1B7453F94(v45, v47 + OBJC_IVAR___XPCTransactionInsight_value, type metadata accessor for Transaction.Insight);
    v82.receiver = v47;
    v82.super_class = v46;
    v48 = objc_msgSendSuper2(&v82, sel_init);
    sub_1B7454064(v45, type metadata accessor for Transaction.Insight);
    v49 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v16;
    v52 = sub_1B724548C(v41, v43);
    v53 = v16[2];
    v54 = (v51 & 1) == 0;
    v55 = v53 + v54;
    if (__OFADD__(v53, v54))
    {
      goto LABEL_29;
    }

    v56 = v51;
    if (v16[3] >= v55)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B725E7E8();
      }
    }

    else
    {
      sub_1B724D08C(v55, isUniquelyReferenced_nonNull_native);
      v57 = sub_1B724548C(v41, v43);
      if ((v56 & 1) != (v58 & 1))
      {
        goto LABEL_31;
      }

      v52 = v57;
    }

    v5 = v44;
    v16 = v81;
    if (v56)
    {
      v22 = v81[7];
      v23 = *(v22 + 8 * v52);
      *(v22 + 8 * v52) = v49;

      sub_1B7454064(v44, type metadata accessor for Transaction.Insight);
      v7 = v74;
      (*v73)(v80, v74);
    }

    else
    {
      v81[(v52 >> 6) + 8] |= 1 << v52;
      v59 = (v16[6] + 16 * v52);
      *v59 = v41;
      v59[1] = v43;
      *(v16[7] + 8 * v52) = v49;

      sub_1B7454064(v44, type metadata accessor for Transaction.Insight);
      v7 = v74;
      (*v73)(v80, v74);
      v60 = v16[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_30;
      }

      v16[2] = v62;
    }

    v21 = v79;
  }

  if (v65 <= v21 + 1)
  {
    v25 = v21 + 1;
  }

  else
  {
    v25 = v65;
  }

  v26 = v25 - 1;
  v28 = v75;
  v27 = v76;
  while (1)
  {
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v24 >= v65)
    {
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994EF0, &qword_1B782C650);
      (*(*(v63 - 8) + 56))(v27, 1, 1, v63);
      v20 = 0;
      goto LABEL_16;
    }

    v20 = *(v66 + 8 * v24);
    ++v21;
    if (v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1B78021C8();
  __break(1u);
  return result;
}