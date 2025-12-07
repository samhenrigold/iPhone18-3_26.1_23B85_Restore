uint64_t sub_1C5DDD110(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *(v2 + 208);
  if (v5)
  {
    OUTLINED_FUNCTION_118();

    sub_1C5D6D518();
    OUTLINED_FUNCTION_126();

    OUTLINED_FUNCTION_7_3();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = a2;
    v8[4] = v7;
    sub_1C5DE9230(0, &qword_1ED7DCF70, &type metadata for PlayerEvent);
    sub_1C5DE8E14(&qword_1ED7DCF78, &qword_1ED7DCF70, &type metadata for PlayerEvent);

    v5 = sub_1C6016600();
  }

  *(v4 + 136) = v5;
}

void sub_1C5DDD240()
{
  if (v0[8])
  {
    OUTLINED_FUNCTION_27((v0 + 2), v11);
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_73();
    swift_unknownObjectRetain();
    if (v0)
    {
      OUTLINED_FUNCTION_27_19();
      sub_1C5D54614();
      swift_unknownObjectRelease();
    }

    sub_1C5DDFE2C(0, 0);
    OUTLINED_FUNCTION_27((v0 + 20), v10);
    v1 = v0[23];
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 8);
    swift_unknownObjectRetain();
    v3(0, 0, ObjectType, v1);
    swift_unknownObjectRelease();
    swift_retain_n();
    sub_1C5DB5C40();

    sub_1C5DDE64C();
    if (v0[37])
    {

      sub_1C6016490();
    }

    if (v0[38])
    {

      sub_1C6016490();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = OUTLINED_FUNCTION_27_19();
      sub_1C5D546B8(v4, v5, v6, v7, v8, v9);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C5DDD3E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 32);
  v11 = a1;
  LOBYTE(v12) = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  LOBYTE(v17[0]) = (v7 == 1) & ~a2;
  *(v17 + 1) = 256;
  __src[0] = a1;
  __src[1] = v12;
  __src[2] = a3;
  __src[3] = a4;
  __src[4] = a5;
  __src[5] = a6;
  __src[6] = v17[0] | 0x10000;
  v20 = 16;
  v19 = 0;

  v8 = OUTLINED_FUNCTION_147();
  sub_1C5C74C28(v8, v9);
  swift_unknownObjectRetain();
  sub_1C5DE163C(__src);
  return sub_1C5DE9BB4(&v11, sub_1C5DE8AAC);
}

uint64_t sub_1C5DDD4B0(uint64_t a1)
{
  OUTLINED_FUNCTION_4_43(a1);
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_19_25();
  return v1();
}

void sub_1C5DDD4FC(void *a1, char a2, char a3)
{
  if ([objc_opt_self() supportsVideoViewController])
  {
    v7 = *(v3 + 312);
    if (v7)
    {
      swift_getObjectType();
      v8 = v7;
      sub_1C5DE8C84(a1, a2 & 1, a3 & 1, v8);
    }
  }
}

uint64_t sub_1C5DDD5B8()
{
  v1 = sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_40_7();
  (*(v3 + 104))(v0, *MEMORY[0x1E69D3968], v1);
  OUTLINED_FUNCTION_0_70();
  sub_1C5DE9C0C(v5, v6);
  OUTLINED_FUNCTION_120();
  v7 = sub_1C6015290();
  result = (*(v3 + 8))(v0, v1);
  if (v7)
  {
    if (*(v0 + 208))
    {

      sub_1C5D6D038(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  return result;
}

uint64_t sub_1C5DDD6EC()
{
  sub_1C5DE91C8(0, &qword_1EC1A9230, sub_1C5D80578, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035CF0;
  *(inited + 32) = 0x6F4D206B63617453;
  *(inited + 40) = 0xEA00000000006564;
  v2 = *(v0 + 32);
  *(inited + 48) = v2;
  *(inited + 72) = &type metadata for PlayerController.StackMode;
  *(inited + 80) = 0x65746167656C6544;
  *(inited + 88) = 0xE800000000000000;
  OUTLINED_FUNCTION_27(v0 + 16, v15);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v0 + 24);
  *&v12 = Strong;
  *(&v12 + 1) = v4;
  sub_1C5DBBED4(v2);
  sub_1C5DE9964(0, &qword_1EC1A95E8);
  v5 = sub_1C60169A0();
  v6 = MEMORY[0x1E69E6158];
  *(inited + 96) = v5;
  *(inited + 104) = v7;
  *(inited + 120) = v6;
  *(inited + 128) = 5067590;
  *(inited + 136) = 0xE300000000000000;
  OUTLINED_FUNCTION_27(v0 + 160, v14);
  v8 = [*(v0 + 160) stateDictionary];
  v9 = sub_1C6016860();

  sub_1C5DE98A0(0, &qword_1EC1A9490, MEMORY[0x1E69E5E28]);
  *(inited + 144) = v9;
  *(inited + 168) = v10;
  *(inited + 176) = 0x65726F74696E6F4DLL;
  *(inited + 184) = 0xEF73746E65764564;
  if (*(v0 + 320))
  {
    OUTLINED_FUNCTION_53_8();

    sub_1C5DEE624();
    OUTLINED_FUNCTION_126();

    v13 = v8;
    *&v12 = v6;
    sub_1C5C70758(&v12, (inited + 192));
  }

  else
  {
    *(inited + 216) = v6;
    *(inited + 192) = 0x676E6968746F4ELL;
    *(inited + 200) = 0xE700000000000000;
  }

  return sub_1C6016880();
}

uint64_t sub_1C5DDD938(uint64_t a1)
{
  OUTLINED_FUNCTION_4_43(a1);
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_19_25();
  return v1();
}

uint64_t sub_1C5DDD984(uint64_t a1)
{
  OUTLINED_FUNCTION_4_43(a1);
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_19_25();
  return v1();
}

uint64_t sub_1C5DDD9D0(uint64_t a1)
{
  OUTLINED_FUNCTION_4_43(a1);
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_19_25();
  return v1();
}

uint64_t sub_1C5DDDA1C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_43(a1);
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_19_25();
  return v1();
}

uint64_t sub_1C5DDDA6C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_43(a1);
  OUTLINED_FUNCTION_59_6();
  sub_1C5C8A688();
  OUTLINED_FUNCTION_126();
  swift_unknownObjectRelease();
  type metadata accessor for InterruptedState();
  OUTLINED_FUNCTION_120();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + 240);
    v4 = *(v1 + 208);
    if (v4)
    {
      v5 = *(v4 + 24);
      v6 = v5;
    }

    else
    {
      v5 = 0;
    }

    v7 = sub_1C5DDF0FC(v8, v3, v5);
  }

  else
  {

    return 65272;
  }

  return v7;
}

BOOL sub_1C5DDDB2C(uint64_t a1, double a2)
{
  v4 = sub_1C5DDBDF8(a1);
  result = v4 & (a1 == 0);
  if (!v4 && !a1)
  {
    sub_1C5DDD938(result);
    return a2 + 4.0 < v6;
  }

  return result;
}

unint64_t sub_1C5DDDB88()
{
  if (!*(v0 + 64))
  {
    return -1;
  }

  OUTLINED_FUNCTION_58_7();
  v2 = *(v1 + 104);
  swift_unknownObjectRetain();
  v3 = OUTLINED_FUNCTION_10_28();
  v2(v3);
  OUTLINED_FUNCTION_73();
  swift_unknownObjectRelease();
  if (v0 >= 3)
  {
    return -1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C5DDDBFC()
{
  OUTLINED_FUNCTION_17_23();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_24_20(v0, v1);
  v2 = OUTLINED_FUNCTION_108();
  sub_1C5C74C28(v2, v3);

  v4 = OUTLINED_FUNCTION_108();
  v6 = sub_1C5C74C28(v4, v5);
  OUTLINED_FUNCTION_13_28(v6, v7);

  v8 = OUTLINED_FUNCTION_108();

  return sub_1C5C74C18(v8, v9);
}

uint64_t sub_1C5DDDC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 208))
  {

    sub_1C5D6CE58(2097168, v7, v8, v9, v10, v11, v12, v13);
  }

  OUTLINED_FUNCTION_7_3();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a3;
  v15[4] = a4;
  sub_1C5C74C28(a3, a4);
  swift_bridgeObjectRetain_n();

  v16 = sub_1C5C74C28(sub_1C5DE9A04, v15);
  OUTLINED_FUNCTION_13_28(v16, v17);
}

uint64_t sub_1C5DDDDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  *v19 = a7;
  v19[1] = a1;
  v19[2] = a2;
  LOBYTE(v20) = 0;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = 0;
  v26 = 1;
  v16[0] = v19[0];
  v16[1] = a1;
  v16[2] = a2;
  v16[3] = v20;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v16[7] = a6;
  v18 = 33;
  v17 = 0;
  v12[0] = v19[0];
  v12[1] = a1;
  v12[2] = a2;
  v12[3] = v20;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;
  v14 = 33;
  v13 = 0;
  v15 = 0;

  v8 = OUTLINED_FUNCTION_147();
  sub_1C5C74C28(v8, v9);
  swift_unknownObjectRetain();

  sub_1C5DE93E4(v19, &v11, sub_1C5DE92A8);
  sub_1C5DE294C(v12, v7, v7, v16);
  return sub_1C5DE9BB4(v19, sub_1C5DE92A8);
}

uint64_t sub_1C5DDDEF0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a1;
  v19 = a2 & 1;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = 0x10000;
  v26 = 80;
  v25 = 0;
  v14[0] = a1;
  v14[1] = v19;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = 0x10000;
  v16 = 80;
  v15 = 0;
  v17 = 0;

  v7 = OUTLINED_FUNCTION_108();
  sub_1C5C74C28(v7, v8);

  v9 = OUTLINED_FUNCTION_108();
  sub_1C5C74C28(v9, v10);
  sub_1C5DE294C(v14, v6, v6, &v18);

  v11 = OUTLINED_FUNCTION_108();

  return sub_1C5C74C18(v11, v12);
}

uint64_t sub_1C5DDDFD4()
{
  OUTLINED_FUNCTION_17_23();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_24_20(v0, v1);
  v2 = OUTLINED_FUNCTION_108();
  sub_1C5C74C28(v2, v3);

  v4 = OUTLINED_FUNCTION_108();
  v6 = sub_1C5C74C28(v4, v5);
  OUTLINED_FUNCTION_13_28(v6, v7);

  v8 = OUTLINED_FUNCTION_108();

  return sub_1C5C74C18(v8, v9);
}

uint64_t sub_1C5DDE068()
{
  OUTLINED_FUNCTION_17_23();

  v0 = OUTLINED_FUNCTION_108();
  sub_1C5C74C28(v0, v1);

  v2 = OUTLINED_FUNCTION_108();
  v4 = sub_1C5C74C28(v2, v3);
  OUTLINED_FUNCTION_13_28(v4, v5);

  v6 = OUTLINED_FUNCTION_108();

  return sub_1C5C74C18(v6, v7);
}

uint64_t sub_1C5DDE114(void *a1)
{
  if (!a1)
  {
    return 1869377363;
  }

  if (a1 == 1)
  {
    return 0x646572616853;
  }

  sub_1C6017540();

  v3 = [a1 description];
  v4 = sub_1C6016940();
  v6 = v5;

  MEMORY[0x1C69534E0](v4, v6);

  MEMORY[0x1C69534E0](41, 0xE100000000000000);
  return 0x53646567616E614DLL;
}

void sub_1C5DDE210(void *a1)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  sub_1C5DBBED4(a1);
  sub_1C5DBBEE4(v3);
  sub_1C5DDE750();

  sub_1C5DBBEE4(a1);
}

void sub_1C5DDE264()
{
  if (*(v0 + 64))
  {
    OUTLINED_FUNCTION_58_7();
    v2 = *(v1 + 144);
    swift_unknownObjectRetain();
    v3 = OUTLINED_FUNCTION_10_28();
    v2(v3);
    swift_unknownObjectRelease();
  }
}

void sub_1C5DDE2E0(float a1)
{
  if (*(v1 + 64))
  {
    v4 = OUTLINED_FUNCTION_58_7();
    v5 = *(v2 + 120);
    swift_unknownObjectRetain();
    v6 = OUTLINED_FUNCTION_10_28();
    if (v5(v6) & 1) != 0 && a1 > 0.0 && (sub_1C5DE5150())
    {
      (*(v2 + 128))(0, v4, v2);
    }

    v7 = OUTLINED_FUNCTION_10_28();
    v8(v7);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C5DDE3DC()
{
  if (!*(v0 + 64))
  {
    return 0;
  }

  OUTLINED_FUNCTION_58_7();
  v2 = *(v1 + 120);
  swift_unknownObjectRetain();
  v3 = OUTLINED_FUNCTION_10_28();
  v4 = v2(v3);
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t sub_1C5DDE450(uint64_t result)
{
  if (*(v1 + 64))
  {
    v2 = result;
    v3 = *(v1 + 72);
    swift_unknownObjectRetain();
    if (v2 & 1) != 0 || (sub_1C5DE5150())
    {
      ObjectType = swift_getObjectType();
      (*(v3 + 128))(v2 & 1, ObjectType, v3);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DDE4E8(uint64_t result, double a2)
{
  if (result != 1)
  {
    if (result)
    {
      return result;
    }

    *(v2 + 104) = 0;
    v3 = 1;
    goto LABEL_9;
  }

  if (a2 >= 1.0 && a2 <= 12.0)
  {
    v3 = 0;
    *(v2 + 104) = a2;
LABEL_9:
    *(v2 + 112) = v3;
  }

  return result;
}

uint64_t sub_1C5DDE544(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 56);
  if (v3)
  {
    v4 = v3;
    sub_1C6014CB0();
  }

  sub_1C5DDE64C();
  sub_1C5DDE6A8();
  sub_1C5C96DF0(v2 + 16);
  sub_1C5DBBEE4(*(v2 + 32));

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_1C5DE9158(v2 + 224, qword_1ED7DF310, &type metadata for SystemObserver);

  __swift_destroy_boxed_opaque_existential_0((v2 + 328));
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_1C5DDE64C()
{
  *(v0 + 208) = 0;

  if (*(v0 + 216))
  {

    sub_1C6016490();
  }

  return result;
}

uint64_t sub_1C5DDE6A8()
{
  memset(v2, 0, sizeof(v2));
  swift_beginAccess();
  sub_1C5DE90D0(v2, v0 + 224);
  result = swift_endAccess();
  if (*(v0 + 288))
  {

    sub_1C6016490();
  }

  return result;
}

uint64_t sub_1C5DDE71C(uint64_t a1)
{
  sub_1C5DDE544(a1);

  return MEMORY[0x1EEE6BDC0](v1, 392, 7);
}

void sub_1C5DDE750()
{
  __swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]);
  sub_1C6017540();

  __src[0] = 0xD000000000000011;
  __src[1] = 0x80000001C6055390;
  v1 = v0[4];
  sub_1C5DBBED4(v1);
  v2 = sub_1C5DDE114(v1);
  MEMORY[0x1C69534E0](v2);

  sub_1C5DBBEE4(v1);
  sub_1C5D7E534(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C5DBBF0C();

  v3 = v0[4];
  if (!v3)
  {
    *(*__swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]) + 32) = 0;
    __swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]);
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD00000000000003BLL, 0x80000001C60553B0);
    v13 = v0[4];
    sub_1C5DBBED4(v13);
    v14 = sub_1C5DDE114(v13);
    MEMORY[0x1C69534E0](v14);

    sub_1C5DBBEE4(v13);
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    sub_1C5D7E534(v35);
    memcpy(v36, v35, 0xD9uLL);
    sub_1C5DBBF0C();

    if (!v0[26])
    {
      return;
    }

    sub_1C5D6CE58(98304, v15, v16, v17, v18, v19, v20, v21);
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    *(*__swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]) + 32) = 1;
    __swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]);
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD00000000000003ALL, 0x80000001C60553F0);
    v4 = v0[4];
    sub_1C5DBBED4(v4);
    v5 = sub_1C5DDE114(v4);
    MEMORY[0x1C69534E0](v5);

    sub_1C5DBBEE4(v4);
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    sub_1C5D7E534(v35);
    memcpy(v36, v35, 0xD9uLL);
    sub_1C5DBBF0C();

    if (!v0[26])
    {
      return;
    }

    sub_1C5D6CF44(98304, v6, v7, v8, v9, v10, v11, v12);
LABEL_7:

    return;
  }

  *(*__swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]) + 32) = 2;
  __swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]);
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  v22 = v3;
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD00000000000003BLL, 0x80000001C60553B0);
  v23 = v0[4];
  sub_1C5DBBED4(v23);
  v24 = sub_1C5DDE114(v23);
  MEMORY[0x1C69534E0](v24);

  sub_1C5DBBEE4(v23);
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_1C5D7E534(v35);
  memcpy(v36, v35, 0xD9uLL);
  sub_1C5DBBF0C();

  if (v0[26])
  {

    sub_1C5D6CE58(98304, v25, v26, v27, v28, v29, v30, v31);
  }

  sub_1C5DBBED4(v3);

  sub_1C5DBBED4(v3);

  sub_1C5DB5C40();
  sub_1C5DBBEE4(v3);

  if (v0[8])
  {
    v32 = v0[9];
    ObjectType = swift_getObjectType();
    v34 = *(v32 + 208);
    sub_1C5DBBED4(v3);
    swift_unknownObjectRetain();
    v34(v22, ObjectType, v32);
    swift_unknownObjectRelease();
  }

  sub_1C5DDE6A8();
  sub_1C5DDEBC8(v22);
  sub_1C5DBBEE4(v3);
}

uint64_t sub_1C5DDEBC8(void *a1)
{
  v2 = v1;
  v4 = sub_1C6016630();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6016690();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(v1 + 41, v1[44]);
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  sub_1C6017540();

  v29[0] = 0xD000000000000023;
  v29[1] = 0x80000001C6054D70;
  v28[0] = [a1 opaqueSessionID];
  v10 = sub_1C60177D0();
  MEMORY[0x1C69534E0](v10);

  sub_1C5D7E534(v29);
  memcpy(v28, v29, 0xD9uLL);
  sub_1C5DBBF0C();

  v11 = v1[19];
  sub_1C5CDAF64((v2 + 41), v27);
  v24 = 0;
  v25 = a1;
  v26 = v11;
  swift_beginAccess();
  v19 = v11;
  v12 = a1;
  sub_1C5DE90D0(&v24, (v2 + 28));
  swift_endAccess();
  swift_beginAccess();
  if (v2[29])
  {
    v13 = sub_1C5D82164();
    swift_endAccess();
    v24 = v13;
    swift_allocObject();
    swift_weakInit();
    sub_1C5DE9230(0, &qword_1ED7DCF60, &type metadata for SystemEvent);
    sub_1C5DE8E14(&qword_1ED7DCF68, &qword_1ED7DCF60, &type metadata for SystemEvent);
    v14 = sub_1C6016600();
  }

  else
  {
    swift_endAccess();
    v14 = 0;
  }

  v2[36] = v14;

  result = sub_1C5DE97D0((v2 + 28), &v24, qword_1ED7DF310, &type metadata for SystemObserver);
  if (v25)
  {
    if (MSVDeviceOSIsInternalInstall() && !MSVDeviceIsInternalCarry())
    {
      return sub_1C5DE9158(&v24, qword_1ED7DF310, &type metadata for SystemObserver);
    }

    else
    {
      IsScreenProbablyBeingRecorded = FigOutputMonitorIsScreenProbablyBeingRecorded();
      result = sub_1C5DE9158(&v24, qword_1ED7DF310, &type metadata for SystemObserver);
      if (IsScreenProbablyBeingRecorded)
      {
        v27[1] = sub_1C5DE91C0;
        v27[2] = v2;
        v24 = MEMORY[0x1E69E9820];
        v25 = 1107296256;
        v26 = sub_1C5DBC798;
        v27[0] = &block_descriptor_101;
        v17 = _Block_copy(&v24);

        sub_1C6016670();
        v23 = MEMORY[0x1E69E7CC0];
        sub_1C5DE9C0C(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60]);
        v18 = MEMORY[0x1E69E7F60];
        sub_1C5DE91C8(0, &qword_1ED7DC288, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1C5DE9C50(&qword_1ED7DC280, &qword_1ED7DC288, v18);
        sub_1C60173B0();
        MEMORY[0x1C6953AC0](0, v9, v6, v17);
        _Block_release(v17);
        (*(v22 + 8))(v6, v4);
        (*(v20 + 8))(v9, v21);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5DDF0FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  type metadata accessor for TransitionState();
  if (swift_dynamicCastClass())
  {
    __break(1u);
    goto LABEL_90;
  }

  type metadata accessor for ScanningState();
  if (swift_dynamicCastClass())
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  type metadata accessor for SeekingState();
  if (swift_dynamicCastClass())
  {
LABEL_91:
    __break(1u);
LABEL_92:
    sub_1C5CDAF64(v3 + 328, v51);
    __swift_project_boxed_opaque_existential_0(v51, v51[3]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    v49 = __dst[0];
    v50 = __dst[1];
    v34 = MEMORY[0x1C69534E0](0xD000000000000046, 0x80000001C6055490);
    v35 = (*(*a1 + 144))(v34);
    MEMORY[0x1C69534E0](v35);

    v36 = MEMORY[0x1C69534E0](0xD000000000000011, 0x80000001C60554E0);
    v37 = (*(*a2 + 144))(v36);
    MEMORY[0x1C69534E0](v37);

    MEMORY[0x1C69534E0](0x616C705B202D205DLL, 0xED0000203A726579);
    if (a3)
    {
      v39 = sub_1C5C64D74(0, &qword_1ED7DCCD8, 0x1E6988098);
      v38 = a3;
    }

    else
    {
      v38 = 0;
      v39 = 0;
      __dst[1] = 0;
      __dst[2] = 0;
    }

    __dst[0] = v38;
    __dst[3] = v39;
    v40 = a3;
    DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
    v41 = MEMORY[0x1E69E7CA0];
    sub_1C5DE9158(__dst, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
    MEMORY[0x1C69534E0](0x65746172202D2029, 0xEA0000000000203ALL);
    if (a3)
    {
      [v40 rate];
      LODWORD(v48[0]) = v43;
      v42 = MEMORY[0x1E69E6448];
    }

    else
    {
      v42 = 0;
      memset(v48, 0, 24);
    }

    v48[3] = v42;
    DefaultStringInterpolation.appendInterpolation(describing:default:)(v48, 7104878, 0xE300000000000000);
    sub_1C5DE9158(v48, &qword_1ED7E0200, v41 + 8);
    MEMORY[0x1C69534E0](0x63617453202D2029, 0xEA00000000003A6BLL);
    sub_1C5DDD6EC();
    v44 = sub_1C6016870();
    v46 = v45;

    MEMORY[0x1C69534E0](v44, v46);

    __src[0] = v49;
    __src[1] = v50;
    sub_1C5D45B74(__src);
    memcpy(__dst, __src, 0xD9uLL);

    sub_1C5DBBF0C();

    result = __swift_destroy_boxed_opaque_existential_0(v51);
    __break(1u);
    return result;
  }

  type metadata accessor for IdleState();
  if (swift_dynamicCastClass())
  {
    return 0x8000;
  }

  type metadata accessor for PausedAtQueueEndState();
  if (swift_dynamicCastClass())
  {
    return 0x8000;
  }

  type metadata accessor for InitialPreLoadingState();
  if (swift_dynamicCastClass())
  {
    return *(swift_dynamicCastClassUnconditional() + 52) != 0.0;
  }

  type metadata accessor for InitialLoadingState();
  if (swift_dynamicCastClass())
  {
    return *(swift_dynamicCastClassUnconditional() + 64);
  }

  type metadata accessor for InitiatingPlaybackState();
  if (swift_dynamicCastClass())
  {
    return 32769;
  }

  type metadata accessor for PlayingState();
  if (swift_dynamicCastClass())
  {
    if (!a3)
    {
      return 32769;
    }

    v9 = a3;
    if ([v9 timeControlStatus] == 1)
    {
      if ([v9 timeControlStatus] != 1)
      {
        goto LABEL_32;
      }

      v10 = [v9 reasonForWaitingToPlay];
      if (v10)
      {
        v11 = v10;
        v12 = sub_1C6016940();
        v14 = v13;
        if (v12 == sub_1C6016940() && v14 == v15)
        {
        }

        else
        {
          v17 = sub_1C6017860();

          if ((v17 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

LABEL_32:
        if ([v9 timeControlStatus] != 1)
        {
          goto LABEL_39;
        }

        v18 = [v9 reasonForWaitingToPlay];
        if (!v18)
        {
          goto LABEL_39;
        }

        v19 = v18;
        v20 = sub_1C6016940();
        v22 = v21;
        if (v20 == sub_1C6016940() && v22 == v23)
        {
        }

        else
        {
          v25 = sub_1C6017860();

          if ((v25 & 1) == 0)
          {
LABEL_39:
            __swift_project_boxed_opaque_existential_0((v4 + 328), *(v4 + 352));
            __dst[0] = 0;
            __dst[1] = 0xE000000000000000;
            sub_1C6017540();
            MEMORY[0x1C69534E0](0xD000000000000043, 0x80000001C6055500);
            sub_1C5DDD6EC();
            v26 = sub_1C6016870();
            v28 = v27;

            MEMORY[0x1C69534E0](v26, v28);

            __src[0] = 0;
            __src[1] = 0xE000000000000000;
            sub_1C5D45B74(__src);
            memcpy(__dst, __src, 0xD9uLL);
            sub_1C5DBBF0C();

            return 32769;
          }
        }

        return 257;
      }
    }

LABEL_24:

    return 32769;
  }

  type metadata accessor for InterruptedState();
  if (swift_dynamicCastClass())
  {
    return 32773;
  }

  type metadata accessor for PausedState();
  if (swift_dynamicCastClass())
  {
    return 32770;
  }

  if (swift_dynamicCastClass())
  {
    return 32771;
  }

  if (swift_dynamicCastClass())
  {
    return 32772;
  }

  type metadata accessor for JumpToTimeState();
  if (swift_dynamicCastClass())
  {
    if (swift_dynamicCastClass())
    {
      return 32769;
    }

    if (swift_dynamicCastClass())
    {
      return 32773;
    }

    if (swift_dynamicCastClass())
    {
      return 32770;
    }

    if (swift_dynamicCastClass())
    {
      return *(swift_dynamicCastClassUnconditional() + 64);
    }
  }

  type metadata accessor for StallingState();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_59;
  }

  if (!swift_dynamicCastClass())
  {
    if (swift_dynamicCastClass())
    {
      return 32773;
    }

    if (swift_dynamicCastClass())
    {
      return 32770;
    }

LABEL_59:
    type metadata accessor for ErrorResolutionState();
    if (swift_dynamicCastClass())
    {
      if (swift_dynamicCastClass())
      {
        return 32769;
      }

      if (swift_dynamicCastClass())
      {
        return 32773;
      }

      if (swift_dynamicCastClass())
      {
        return 32770;
      }

      if (swift_dynamicCastClass())
      {
        return *(swift_dynamicCastClassUnconditional() + 64);
      }

      if (swift_dynamicCastClass())
      {
        return 32769;
      }
    }

    v33 = swift_dynamicCastClass();
    if (v33)
    {
      type metadata accessor for NaturalTransitionState();
      if (swift_dynamicCastClass())
      {
        return 32769;
      }

      type metadata accessor for OverlappedTransitionState();
      if (swift_dynamicCastClass())
      {
        return 32769;
      }
    }

    type metadata accessor for NaturalTransitionState();
    if (swift_dynamicCastClass() && swift_dynamicCastClass())
    {
      return 32770;
    }

    type metadata accessor for FailedTransitionState();
    if (swift_dynamicCastClass())
    {
      if (v33)
      {
        return 32769;
      }

      if (swift_dynamicCastClass())
      {
        return 32773;
      }

      if (swift_dynamicCastClass())
      {
        return 32770;
      }

      if (swift_dynamicCastClass())
      {
        return *(swift_dynamicCastClassUnconditional() + 64);
      }

      if (swift_dynamicCastClass())
      {
        return 32769;
      }
    }

    type metadata accessor for SkippingTransitionState();
    if (swift_dynamicCastClass())
    {
      if (v33)
      {
        return 32769;
      }

      if (swift_dynamicCastClass())
      {
        return 32773;
      }

      if (swift_dynamicCastClass())
      {
        return 32770;
      }

      if (swift_dynamicCastClass())
      {
        return *(swift_dynamicCastClassUnconditional() + 64);
      }
    }

    type metadata accessor for ChangingQueueState();
    if (swift_dynamicCastClass())
    {
      if (v33)
      {
        return 32769;
      }

      if (swift_dynamicCastClass())
      {
        return 32773;
      }

      if (swift_dynamicCastClass())
      {
        return 32770;
      }

      if (swift_dynamicCastClass())
      {
        return *(swift_dynamicCastClassUnconditional() + 64);
      }

      if (swift_dynamicCastClass())
      {
        return 32769;
      }
    }

    type metadata accessor for WaitingForItemTransitionState();
    if (swift_dynamicCastClass())
    {
      return 16388;
    }

    goto LABEL_92;
  }

  if (a3 && (v29 = [a3 reasonForWaitingToPlay]) != 0)
  {
    v31 = v29;
    v32 = sub_1C5D62CAC(v29, v30);
  }

  else
  {
    v32 = 3;
  }

  return v32 | 0x4000u;
}

uint64_t sub_1C5DDFAF8(uint64_t result)
{
  v2 = v1;
  v3 = v1[8];
  if (v3)
  {
    if (v3 == result)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  v4 = v1[7];
  if (v4)
  {
    v5 = v4;
    sub_1C6014CB0();

    v3 = v2[8];
  }

  if (v3)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_getKeyPath();
      swift_allocObject();
      swift_weakInit();
      swift_unknownObjectRetain();
      v6 = sub_1C6014DE0();
      swift_unknownObjectRelease();

      v7 = v2[7];
      v2[7] = v6;
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if (v2[8])
    {
      v9 = v2[9];
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 176);
      swift_unknownObjectRetain();
      v12 = v11(ObjectType, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0;
    }

    [*(v8 + 56) updatePlayerPlaybackCoordinator_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1C5DDFCB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 playbackCoordinator];
  *a2 = result;
  return result;
}

void sub_1C5DDFCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C5DE8E78(0);
  sub_1C6014DA0();
  sub_1C6014D90();
  v3 = v7;
  if (v8)
  {
    if (v7)
    {
      sub_1C5C64D74(0, &qword_1EC1AB9C8, 0x1E69880F0);
      v4 = sub_1C60172D0();

      if (v4)
      {
        return;
      }

      goto LABEL_9;
    }

    v3 = v8;
  }

  else if (!v7)
  {
    return;
  }

LABEL_9:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_1C6014D90();
      [*(Strong + 56) updatePlayerPlaybackCoordinator_];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1C5DDFE2C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  swift_unknownObjectRetain();
  sub_1C5DDFAF8(v3);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5DDFE88(uint64_t result, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (((*(result + 64) >> 58) & 0x3C | (*(result + 64) >> 1) & 3) == 0x15)
  {
    a2();
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + 136) = 0;
    }
  }

  return result;
}

void sub_1C5DDFF0C()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v2 = sub_1C6016FC0();
  OUTLINED_FUNCTION_25();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v8 = v7 - v6;
  sub_1C6016F90();
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_146();
  v10 = sub_1C6016690();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_146();
  v11 = sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_146();
  v17 = v16 - v15;
  if (v1 == 1 || ((*(v13 + 104))(v17, *MEMORY[0x1E69D3958], v11), OUTLINED_FUNCTION_0_70(), sub_1C5DE9C0C(v18, v19), v20 = sub_1C6015290(), (*(v13 + 8))(v17, v11), (v20 & 1) != 0))
  {
    sub_1C5C64D74(0, &qword_1ED7DCE50, 0x1E69E9610);
    sub_1C6016680();
    sub_1C5DE9C0C(&qword_1EC1A93A0, MEMORY[0x1E69E8030]);
    v21 = v2;
    v22 = MEMORY[0x1E69E8030];
    sub_1C5DE91C8(0, &unk_1EC1A9448, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1C5DE9C50(qword_1EC1A9430, &unk_1EC1A9448, v22);
    sub_1C60173B0();
    (*(v4 + 104))(v8, *MEMORY[0x1E69E8090], v21);
    sub_1C6016FF0();
  }

  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5DE024C(void *a1)
{
  v2 = v1;
  v4 = v2[18];
  v5 = v2[19];
  sub_1C5CDAF64((v2 + 41), v24);
  type metadata accessor for PlayerObserver();
  swift_allocObject();
  v6 = v5;
  v2[26] = sub_1C5D6CCDC(a1, v4, v5, v24, 10.0);

  v7 = v2[26];
  if (v2[4] == 1)
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    sub_1C5D6CF44(98304, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    sub_1C5D6CE58(98304, v15, v16, v17, v18, v19, v20, v21);
  }

  v7 = v2[26];
  if (v7)
  {

    v22 = sub_1C5D6D518();

    v24[0] = v22;
    swift_allocObject();
    swift_weakInit();
    sub_1C5DE9230(0, &qword_1ED7DCF70, &type metadata for PlayerEvent);
    sub_1C5DE8E14(&qword_1ED7DCF78, &qword_1ED7DCF70, &type metadata for PlayerEvent);
    v7 = sub_1C6016600();
  }

LABEL_8:
  v2[27] = v7;
}

void *sub_1C5DE03EC(const void *a1, uint64_t a2)
{
  v3 = sub_1C6015060();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v67, a1, sizeof(v67));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = v67[0];
    v10 = (v67[8] >> 58) & 0x3C | (LODWORD(v67[8]) >> 1) & 3;
    v11 = v67[2];
    v12 = v67[3];
    v13 = v67[4];
    switch(v10)
    {
      case 20:
        if (result[4] != 1)
        {
          goto LABEL_40;
        }

        if ((v67[3] - 1) <= 1)
        {
          goto LABEL_41;
        }

        v58 = LODWORD(v67[1]);

        sub_1C6015050();
        v14 = sub_1C6015030();
        v16 = v15;
        (*(v4 + 8))(v6, v3);
        v17 = MEMORY[0x1E69E6158];
        v18 = sub_1C6016880();
        if (v12)
        {

          sub_1C5DE91C8(0, &qword_1EC1A9230, sub_1C5D80578, MEMORY[0x1E69E6F90]);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_1C60311E0;
          *(v19 + 32) = 0x7069636974726150;
          *(v19 + 40) = 0xEB00000000746E61;
          *(v19 + 72) = v17;
          *(v19 + 48) = v11;
          *(v19 + 56) = v12;
          v18 = sub_1C6016880();
        }

        type metadata accessor for CoordinatorUserAction();
        v20 = swift_allocObject();
        *(v20 + 56) = xmmword_1C6042FE0;
        *(v20 + 72) = 0x80000001C6054DA0;
        *(v20 + 16) = v14;
        *(v20 + 24) = v16;
        *(v20 + 40) = v13;
        *(v20 + 48) = v18;
        *(v20 + 32) = 0;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();

            if (Strong)
            {

              [Strong userActionDidBegin_];

              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v52 = swift_allocObject();
        *(v52 + 16) = v8;
        *(v52 + 24) = v20;
        LODWORD(v74) = v58;
        BYTE8(v75) = 0;
        *(&v74 + 1) = 0;
        *&v75 = 0;
        v76 = v14;
        v77 = v16;
        v78 = sub_1C5DE9F7C;
        v79 = v52;
        v80 = 1;
        v81 = 0;
        v68 = v74;
        v69 = __PAIR128__(*(&v75 + 1), 0);
        v70 = v14;
        v71 = v16;
        v72 = sub_1C5DE9F7C;
        *&v73 = v52;
        BYTE10(v73) = 32;
        WORD4(v73) = 1;
        v82 = v74;
        v83 = __PAIR128__(*(&v75 + 1), 0);
        v84 = v14;
        v85 = v16;
        v86 = sub_1C5DE9F7C;
        v87 = v52;
        v89 = 32;
        v88 = 1;
        v90 = 0;
        swift_retain_n();

        sub_1C5DE93E4(&v74, v59, sub_1C5DE92A8);
        sub_1C5DE294C(&v82, v8, v8, &v68);
        sub_1C5DE12E4(v67);

        v51 = sub_1C5DE92A8;
        goto LABEL_61;
      case 21:
        if (v67[5] != 1)
        {
          goto LABEL_40;
        }

        v58 = LODWORD(v67[1]);
        v41 = v67[6];
        swift_beginAccess();
        swift_unknownObjectRetain();
        sub_1C5C8A688();
        swift_unknownObjectRelease();
        type metadata accessor for PausedState();
        v42 = swift_dynamicCastClass();
        if (v42 && (*(v42 + 192) >> 1 == 0xFFFFFFFFLL ? (v43 = (*(v42 + 200) & 0xF000000000000007) == 0) : (v43 = 0), v43))
        {
          sub_1C6015050();
          v44 = sub_1C6015030();
          v46 = v45;
          (*(v4 + 8))(v6, v3);
          v47 = sub_1C6016880();
          type metadata accessor for PlayerSourcedUserAction();
          v48 = swift_allocObject();
          *(v48 + 56) = xmmword_1C6042FF0;
          *(v48 + 72) = 0xE800000000000000;
          v57 = v44;
          *(v48 + 16) = v44;
          *(v48 + 24) = v46;
          *(v48 + 40) = v41;
          *(v48 + 48) = v47;
          *(v48 + 32) = 0;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_beginAccess();
              v49 = swift_unknownObjectWeakLoadStrong();

              if (v49)
              {

                [v49 userActionDidBegin_];

                swift_unknownObjectRelease();
              }

              swift_unknownObjectRelease();
            }

            else
            {
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v55 = swift_allocObject();
          *(v55 + 16) = v8;
          *(v55 + 24) = v48;
          v56 = v58;
          LODWORD(v59[0]) = v58;
          LOBYTE(v60) = 0;
          v59[1] = 0;
          v59[2] = 0;
          v61 = v57;
          v62 = v46;
          v63 = sub_1C5DE9F7C;
          v64 = v55;
          v65 = 1;
          v66 = 0;
          v74 = v59[0];
          v75 = __PAIR128__(v60, 0);
          v76 = v57;
          v77 = v46;
          v78 = sub_1C5DE9F7C;
          v79 = v55;
          v81 = 32;
          v80 = 1;
          v82 = v59[0];
          v83 = __PAIR128__(v60, 0);
          v84 = v57;
          v85 = v46;
          v86 = sub_1C5DE9F7C;
          v87 = v55;
          v89 = 32;
          v88 = 1;
          v90 = 0;
          swift_retain_n();

          sub_1C5DE93E4(v59, &v68, sub_1C5DE92A8);
          sub_1C5DE294C(&v82, v8, v8, &v74);
          *&v68 = v9;
          DWORD2(v68) = v56;
          BYTE12(v68) = 0;
          v69 = xmmword_1C60311B0;
          v70 = v41;
          v73 = xmmword_1C603A0A0;

          swift_unknownObjectRetain();
          sub_1C5DE12E4(&v68);

          swift_unknownObjectRelease();
          sub_1C5DE9BB4(v59, sub_1C5DE92A8);

LABEL_14:
        }

        else
        {
        }

LABEL_40:
        sub_1C5DE12E4(v67);
        goto LABEL_41;
      case 22:
        if (result[4] != 1 || (v67[2] - 1) <= 1)
        {
          goto LABEL_40;
        }

        v23 = LODWORD(v67[1]);
        v24 = HIDWORD(v67[1]);

        sub_1C6015050();
        v25 = sub_1C6015030();
        v58 = v26;
        (*(v4 + 8))(v6, v3);
        v27 = MEMORY[0x1E69E6158];
        v28 = sub_1C6016880();
        if (v11)
        {

          sub_1C5DE91C8(0, &qword_1EC1A9230, sub_1C5D80578, MEMORY[0x1E69E6F90]);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_1C60311E0;
          *(v29 + 32) = 0x7069636974726150;
          *(v29 + 40) = 0xEB00000000746E61;
          *(v29 + 72) = v27;
          *(v29 + 48) = v23 | (v24 << 32);
          *(v29 + 56) = v11;
          v28 = sub_1C6016880();
        }

        type metadata accessor for CoordinatorUserAction();
        v30 = swift_allocObject();
        *(v30 + 56) = xmmword_1C6042FE0;
        *(v30 + 72) = 0x80000001C6054DA0;
        v31 = v58;
        *(v30 + 16) = v25;
        *(v30 + 24) = v31;
        *(v30 + 40) = v13;
        *(v30 + 48) = v28;
        *(v30 + 32) = 1;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_beginAccess();
            v32 = swift_unknownObjectWeakLoadStrong();

            if (v32)
            {

              [v32 userActionDidBegin_];

              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v50 = swift_allocObject();
        *(v50 + 16) = v8;
        *(v50 + 24) = v30;
        v74 = 0u;
        v75 = 0u;
        v76 = v25;
        v77 = v31;
        v78 = sub_1C5DE93C8;
        v79 = v50;
        v80 = 1;
        v81 = 0;
        v68 = 0u;
        v69 = 0u;
        v70 = v25;
        v71 = v31;
        v72 = sub_1C5DE93C8;
        *&v73 = v50;
        BYTE10(v73) = 48;
        WORD4(v73) = 1;
        v82 = 0u;
        v83 = 0u;
        v84 = v25;
        v85 = v31;
        v86 = sub_1C5DE93C8;
        v87 = v50;
        v89 = 48;
        v88 = 1;
        v90 = 0;
        swift_retain_n();

        sub_1C5DE93E4(&v74, v59, sub_1C5DE9440);
        sub_1C5DE294C(&v82, v8, v8, &v68);
        sub_1C5DE12E4(v67);

        v51 = sub_1C5DE9440;
LABEL_61:
        sub_1C5DE9BB4(&v74, v51);

      case 23:
        goto LABEL_40;
      case 24:
        if (result[4] != 1 || (v67[3] - 1) < 2)
        {
          goto LABEL_40;
        }

        sub_1C6015050();
        v33 = sub_1C6015030();
        v58 = v34;
        (*(v4 + 8))(v6, v3);
        v35 = MEMORY[0x1E69E6158];
        v36 = sub_1C6016880();
        if (v12)
        {

          sub_1C5DE91C8(0, &qword_1EC1A9230, sub_1C5D80578, MEMORY[0x1E69E6F90]);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_1C60311E0;
          *(v37 + 32) = 0x7069636974726150;
          *(v37 + 40) = 0xEB00000000746E61;
          *(v37 + 72) = v35;
          *(v37 + 48) = v11;
          *(v37 + 56) = v12;
          v36 = sub_1C6016880();
        }

        type metadata accessor for CoordinatorUserAction();
        v38 = swift_allocObject();
        *(v38 + 56) = xmmword_1C6042FE0;
        *(v38 + 72) = 0x80000001C6054DA0;
        v39 = v58;
        *(v38 + 16) = v33;
        *(v38 + 24) = v39;
        *(v38 + 40) = v13;
        *(v38 + 48) = v36;
        *(v38 + 32) = 6;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_beginAccess();
            v40 = swift_unknownObjectWeakLoadStrong();

            if (v40)
            {

              [v40 userActionDidBegin_];

              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        sub_1C5DE12E4(v67);
        if (swift_unknownObjectWeakLoadStrong())
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_beginAccess();
            v53 = swift_unknownObjectWeakLoadStrong();
            if (v53)
            {
              v54 = v53;

              [v54 userActionDidEnd:v38 error:0];

              swift_unknownObjectRelease();
            }

            else
            {
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }

          result = swift_unknownObjectRelease();
        }

        else
        {

LABEL_41:
        }

        break;
      default:
        if (v10 != 9)
        {
          goto LABEL_40;
        }

        swift_getObjectType();
        v8[47] = sub_1C5DEA0B4();
        v8[48] = v22;
        goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_1C5DE12E4(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 64);
  v5 = sub_1C60167E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  swift_beginAccess();
  v9 = *(a1 + 16);
  v43[0] = *a1;
  v43[1] = v9;
  v42 = v43[0];
  v10 = *(a1 + 48);
  v43[2] = *(a1 + 32);
  v43[3] = v10;
  v44 = v4;
  v45 = 1;
  swift_unknownObjectRetain();
  sub_1C5C8A868();
  swift_unknownObjectRelease();
  if (*(v1 + 320))
  {

    v12 = sub_1C5DDBEF8(v11);
    sub_1C5C8B6FC(v43, 0, v12);
  }

  v13 = (v4 >> 58) & 0x3C | (v4 >> 1) & 3;
  if (v13 == 14)
  {
    swift_unknownObjectRetain();
LABEL_9:
    v17 = swift_unknownObjectRetain();
    sub_1C5DE2E8C(v17);
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (v13 == 34)
  {
    swift_unknownObjectRetain();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_1C5D54868(Strong);
      v16 = v15;
      swift_unknownObjectRelease();
      if ((v16 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

LABEL_11:
  (*(v6 + 104))(v8, *MEMORY[0x1E69D3968], v5);
  sub_1C5DE9C0C(&qword_1ED7DCF48, MEMORY[0x1E69D3970]);
  v18 = sub_1C6015290();
  (*(v6 + 8))(v8, v5);
  if ((v18 & 1) != 0 && ((*(a1 + 64) >> 58) & 0x3C | (*(a1 + 64) >> 1) & 3) == 0x11)
  {
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      sub_1C5D54868(v19);
      v21 = v20;
      swift_unknownObjectRelease();
      if ((v21 & 1) == 0)
      {
        if (*(v2 + 208))
        {

          sub_1C5D6D140(v22, v23, v24, v25, v26, v27, v28, v29);
        }
      }
    }

    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      sub_1C5D549A0(v30);
      v32 = v31;
      swift_unknownObjectRelease();
      if ((v32 & 1) == 0)
      {
        if (*(v2 + 208))
        {

          sub_1C5D6D248(v33, v34, v35, v36, v37, v38, v39, v40);
        }
      }
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5DE163C(void *__src)
{
  memcpy(__dst, __src, 0x43uLL);
  __dst[72] = 0;

  sub_1C5D95E74(__src, v4);
  return sub_1C5DE294C(__dst, v1, v1, __src);
}

uint64_t sub_1C5DE16A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_27(a4 + 16, v12);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      OUTLINED_FUNCTION_27(Strong + OBJC_IVAR___MFPlaybackStackControllerImplementation_delegate, &v11);
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        if (a3)
        {
          a3 = sub_1C6014D30();
        }

        [v10 userActionDidEnd:a5 error:a3];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DE1790(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8[0] = v2;
    v8[1] = v3;
    v8[2] = v4;
    v8[3] = v5;
    v9 = 3;

    sub_1C5C8CF74(v2, v3, v4, v5);
    sub_1C5C8B948(v8, v7, v7, v2, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1C5DE1844(uint64_t a1)
{
  sub_1C6014F90();
  v3 = v2;
  type metadata accessor for EventTime();
  swift_allocObject();
  v5 = 1;
  v6 = sub_1C5C8A6E0(0, 0, 0, 1, v3, v3);
  v7 = xmmword_1C6043000;
  v8 = 3;

  sub_1C5C8B948(&v5, a1, a1, 1, v6, 0, 0x8000000000000000);
}

uint64_t sub_1C5DE191C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 64))
    {
      v10 = *(Strong + 72);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v12 = (*(v10 + 8))(ObjectType, v10);
      swift_unknownObjectRelease();
      if (v12)
      {
        v13 = sub_1C5D62DEC();
        *v22 = v13[2];
        v22[1] = v12;
        v23 = xmmword_1C60311B0;
        v24 = v13;
        v25 = xmmword_1C603A080;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {

          sub_1C5DE12E4(v22);
        }

        else
        {
        }
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 208))
    {

      sub_1C5D6CF44(2097168, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (a5)
  {
    return a5(a1, a2, a3);
  }

  return result;
}

id sub_1C5DE1AEC(uint64_t a1)
{
  if (*(v1 + 32) != 1)
  {
    return 0;
  }

  if (((*(a1 + 66) << 16) & 0xF00000) != 0x300000)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  swift_unknownObjectRetain();
  sub_1C5D869C0(v2);

  sub_1C5C74C28(v3, v4);

  sub_1C5C74C18(v3, v4);
  swift_unknownObjectRelease();
  if (v2 < 0xC && ((0xFFDu >> v2) & 1) != 0)
  {
    return 0;
  }

  v5 = *MEMORY[0x1E69873C8];
  sub_1C5D5D584(v2);
  return v5;
}

uint64_t sub_1C5DE1BC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(v4 + 32) != 1 || a4 >> 61 != 0)
  {
    return 0;
  }

  v6 = *MEMORY[0x1E69873B8];
  v7 = *MEMORY[0x1E69873B8];
  return v6;
}

BOOL sub_1C5DE1C10(uint64_t a1)
{
  if (*(v1 + 32) != 1)
  {
    return 0;
  }

  v3 = *(a1 + 66);
  result = 1;
  switch(v3 >> 4)
  {
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
      return 0;
    case 4:
      result = *a1 != 0.0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C5DE1C64(uint64_t a1)
{
  if (v1[4] == 1)
  {
    v2 = v1;
    __swift_project_boxed_opaque_existential_0(v1 + 41, v1[44]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000025, 0x80000001C6054BB0);
    type metadata accessor for Reason();
    sub_1C6017650();
    MEMORY[0x1C69534E0](774778461, 0xE400000000000000);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1C5D7E534(v12);
    memcpy(__dst, v12, 0xD9uLL);
    sub_1C5DBBF0C();

    v4 = v1[15];
    if (v4)
    {
      [v4 end];
      v5 = v1[15];
      v1[15] = 0;
    }

    v6 = v1[8];
    if (v6)
    {
      v7 = v2[9];
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 176);
      swift_unknownObjectRetain();
      v10 = v9(ObjectType, v7);
      swift_unknownObjectRelease();
      v6 = [v10 beginSuspensionForReason_];
    }

    v11 = v2[15];
    v2[15] = v6;
  }
}

void sub_1C5DE1E0C()
{
  if (v0[4] == 1 && v0[15])
  {
    __swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]);
    v3[0] = 0xD000000000000025;
    v3[1] = 0x80000001C6054BE0;
    sub_1C5D7E534(v3);
    memcpy(__dst, v3, sizeof(__dst));
    sub_1C5DBBF0C();
    v1 = v0[15];
    if (v1)
    {
      [v1 end];
      v2 = v0[15];
    }

    else
    {
      v2 = 0;
    }

    v0[15] = 0;
  }
}

void sub_1C5DE1EC8(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  v74 = *(a2 + 32);
  v75 = *(a2 + 40);
  v7 = *(a2 + 48);
  v71 = *(a2 + 16);
  v72 = *(a2 + 56);
  v8 = *(a2 + 64) | (*(a2 + 66) << 16);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  swift_endAccess();
  v73 = v4;
  if ((v8 & 0xF00000) == 0x100000)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRetain();

    sub_1C5C74C28(v74, v75);
    if (Strong)
    {
      v10 = sub_1C5D543A4(v4, v71, v6);
      v12 = v11;
      v14 = v13;
      swift_unknownObjectRelease();
      if ((v10 & 1) == 0)
      {
        if ((v10 & 0x100) != 0)
        {
          __swift_project_boxed_opaque_existential_0(a1 + 41, a1[44]);
          sub_1C6017540();

          __dst[0] = 0xD000000000000017;
          __dst[1] = 0x80000001C6054B90;
          MEMORY[0x1C69534E0](v12, v14);
          MEMORY[0x1C69534E0](93, 0xE100000000000000);
          __src[0] = 0xD000000000000017;
          __src[1] = 0x80000001C6054B90;
          sub_1C5D7E534(__src);
          memcpy(__dst, __src, 0xD9uLL);
          sub_1C5DBBF0C();

          v59 = sub_1C5DBA4F0(v71, v6, 0, v12, v14);

          sub_1C5D61B3C(&v84);
          v60 = v85;
          v61 = v86;
          v80 = v84;
          sub_1C5CC583C(&v80);
          if (v60)
          {
            sub_1C5D61B3C(&v94);
            v62 = v94;
            v63 = v95;
            sub_1C5C74C18(v96, v97);
            v60(v62, v63, v59);
            sub_1C5C74C18(v60, v61);

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          sub_1C5C74C18(v74, v75);
        }

        else
        {
          __swift_project_boxed_opaque_existential_0(a1 + 41, a1[44]);
          sub_1C6017540();

          __dst[0] = 0xD000000000000015;
          __dst[1] = 0x80000001C6054B70;
          MEMORY[0x1C69534E0](v12, v14);

          MEMORY[0x1C69534E0](93, 0xE100000000000000);
          __src[0] = 0xD000000000000015;
          __src[1] = 0x80000001C6054B70;
          sub_1C5D7E534(__src);
          memcpy(__dst, __src, 0xD9uLL);
          sub_1C5DBBF0C();

          swift_unknownObjectRelease();
          sub_1C5C74C18(v74, v75);
        }

        return;
      }
    }

    sub_1C5C74C18(v74, v75);
    swift_unknownObjectRelease();
  }

  v15 = sub_1C5DE1AEC(a2);
  if (v15)
  {
    v16 = v15;
    sub_1C5DE1C64(v15);
  }

  HIDWORD(v70) = HIWORD(v8);
  if (((*(a2 + 66) << 16) & 0xF00000) == 0x300000)
  {
    v17 = v5;
    v18 = *(a2 + 24);
    v20 = *(a2 + 48);
    v19 = *(a2 + 56);
    v67 = v17;
    swift_unknownObjectRetain();
    sub_1C5D869C0(v6);

    v68 = v7;
    sub_1C5C74C28(v7, v72);

    sub_1C5C74C18(v20, v19);
    swift_unknownObjectRelease();
    v69 = v18;
    __swift_project_boxed_opaque_existential_0(a1 + 41, a1[44]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    if (v18 >= 0xC)
    {
      v21 = "quired [Pausing in ";
      v22 = 0xD000000000000040;
    }

    else
    {
      v21 = " in the current player state ";
      v22 = 0xD000000000000033;
    }

    MEMORY[0x1C69534E0](v22, v21 | 0x8000000000000000);
    v23 = a1[4];
    sub_1C5DBBED4(v23);
    v24 = sub_1C5DDE114(v23);
    MEMORY[0x1C69534E0](v24);

    sub_1C5DBBEE4(v23);
    MEMORY[0x1C69534E0](0x63616279616C7020, 0xEA00000000005D6BLL);
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    sub_1C5D7E534(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    v5 = v67;
    if (a1[40])
    {
      __src[0] = v73;
      __src[1] = v67;
      __src[2] = v71;
      __src[3] = v6;
      __src[4] = v74;
      __src[5] = v75;
      __src[6] = v7;
      __src[7] = v72;
      LOWORD(__src[8]) = v8;
      BYTE2(__src[8]) = BYTE2(v8);
      LOBYTE(__src[9]) = 0;
      v26 = a1[4];

      v27 = sub_1C5DBBED4(v26);
      v28 = sub_1C5DDBEF8(v27);
      sub_1C5C8B6FC(__src, v26, v28);
      sub_1C5DBBEE4(v26);
    }

    v29 = sub_1C5DDBEF8(v25);
    if ((v29 & 0xC000) != 0 || (v29 & 1) == 0)
    {
      sub_1C5D5D584(v69);
    }

    else
    {

      sub_1C5DB5628(0, 1);
      sub_1C5D5D584(v69);
    }
  }

  if (a1[40])
  {

    sub_1C5DEDBE8(v30, v31, v32, v33, v34, v35, v36, v37, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
    v39 = v38;

    if (v39)
    {
      if (a1[40])
      {
        v94 = v73;
        v95 = v5;
        v96 = v71;
        v97 = v6;
        v98 = v74;
        v99 = v75;
        v100 = v7;
        v101 = v72;
        v102 = v8;
        v103 = BYTE4(v70);
        v104 = 0;
        v40 = a1[4];

        v41 = sub_1C5DBBED4(v40);
        v42 = sub_1C5DDBEF8(v41);
        sub_1C5C8B6FC(&v94, v40, v42);
        sub_1C5DBBEE4(v40);
      }
    }
  }

  swift_beginAccess();
  v43 = a1[20];
  swift_unknownObjectRetain();
  v44 = sub_1C5C8A688();
  v45 = (*(*v44 + 80))(a2, v43);
  swift_unknownObjectRelease();

  if (v45)
  {
    *&v84 = v73;
    *(&v84 + 1) = v5;
    v85 = v71;
    v86 = v6;
    v87 = v74;
    v88 = v75;
    v89 = v7;
    v90 = v72;
    v91 = v8;
    v92 = BYTE4(v70);
    v93 = 0;
    swift_unknownObjectRetain();
    sub_1C5C8A868();
    v47 = v46;
    swift_unknownObjectRelease();
    if ((v47 & 1) == 0)
    {
      sub_1C5D61B3C(&v77);
      v48 = v78;
      v49 = v79;
      v83 = v77;
      sub_1C5CC583C(&v83);
      if (v48)
      {
        sub_1C5D61B3C(&v80);
        v50 = v80;
        sub_1C5C74C18(v81, v82);
        v48(v50, *(&v50 + 1), 0);
        sub_1C5C74C18(v48, v49);
      }
    }
  }

  else
  {
    if (a1[40])
    {

      sub_1C5DEDDC0(a2);
    }

    *&v84 = v73;
    *(&v84 + 1) = v5;
    v85 = v71;
    v86 = v6;
    v87 = v74;
    v88 = v75;
    v89 = v7;
    v90 = v72;
    v91 = v8;
    v92 = BYTE4(v70);
    v93 = 0;
    swift_unknownObjectRetain();
    sub_1C5C8A868();
    v52 = v51;
    swift_unknownObjectRelease();
    if ((v52 & 1) == 0)
    {
      sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
      sub_1C6016940();
      *&v77 = 0;
      *&v80 = 0;
      *(&v80 + 1) = 0xE000000000000000;
      sub_1C6017540();
      MEMORY[0x1C69534E0](0xD000000000000019, 0x80000001C6054AA0);
      v53 = sub_1C5D61CD4();
      MEMORY[0x1C69534E0](v53);

      MEMORY[0x1C69534E0](0xD00000000000001DLL, 0x80000001C6054AC0);
      swift_unknownObjectRetain();
      v54 = sub_1C5C8A688();
      v55 = swift_unknownObjectRelease();
      v56 = (*(*v54 + 144))(v55);
      MEMORY[0x1C69534E0](v56);

      sub_1C6016880();
      _s3__C4CodeOMa_6();
      sub_1C5DE9C0C(&qword_1ED7DCDE0, _s3__C4CodeOMa_6);
      v57 = sub_1C6017280();

      if (a1[40])
      {

        v58 = v57;
        sub_1C5DEE158(a2, v58);
      }

      else
      {
      }
    }
  }

  if (sub_1C5DE1C10(a2))
  {
    sub_1C5DE1E0C();
  }
}

uint64_t sub_1C5DE294C(char *a1, uint64_t a2, void *a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  memcpy((v8 + 24), a4, 0x43uLL);
  v9 = *(a2 + 368);

  if (!v9)
  {
    sub_1C5D95E74(a4, v15);
    goto LABEL_7;
  }

  sub_1C5D95E74(a4, v15);
  v10 = sub_1C5DE38E8(a1);
  if (!v10)
  {
LABEL_7:
    sub_1C5DE1EC8(a3, a4);
    goto LABEL_8;
  }

  v12 = v10;
  v13 = v11;
  if (!sub_1C5DE3E80(a1))
  {
    sub_1C5C74C18(v12, v13);
    goto LABEL_7;
  }

  v12();
  swift_unknownObjectRelease();
  sub_1C5C74C18(v12, v13);
LABEL_8:

  return sub_1C5DE8B2C(a4);
}

void sub_1C5DE2A78(unsigned __int8 *__src, double a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_27(v2 + 160, v21);
  OUTLINED_FUNCTION_59_6();
  sub_1C5C8A688();
  OUTLINED_FUNCTION_126();
  swift_unknownObjectRelease();
  v5 = __src[66] >> 4;
  if (v5 != 2 && (v5 != 1 || (__src[8] & 1) == 0))
  {
LABEL_9:
    OUTLINED_FUNCTION_8_33();
    sub_1C6017540();
    OUTLINED_FUNCTION_3_44();
    sub_1C5D61CD4();
    OUTLINED_FUNCTION_45_7();

    v8 = "rdinated playback ...";
    v7 = 0xD000000000000011;
    goto LABEL_10;
  }

  type metadata accessor for InitialPreLoadingState();
  OUTLINED_FUNCTION_120();
  if (swift_dynamicCastClass())
  {
LABEL_5:
    OUTLINED_FUNCTION_8_33();
    sub_1C6017540();
    OUTLINED_FUNCTION_3_44();
    sub_1C5D61CD4();
    OUTLINED_FUNCTION_45_7();

    OUTLINED_FUNCTION_109();
    v7 = 0xD00000000000002CLL;
    goto LABEL_11;
  }

  type metadata accessor for InitialLoadingState();
  OUTLINED_FUNCTION_120();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for InitiatingPlaybackState();
    OUTLINED_FUNCTION_120();
    if (swift_dynamicCastClass())
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_33();
  sub_1C6017540();
  OUTLINED_FUNCTION_3_44();
  sub_1C5D61CD4();
  OUTLINED_FUNCTION_45_7();

  v8 = "ing rate change to 1] event=";
  v7 = 0xD000000000000030;
LABEL_10:
  v6 = v8 | 0x8000000000000000;
LABEL_11:
  MEMORY[0x1C69534E0](v7, v6);
  sub_1C5D61CD4();
  OUTLINED_FUNCTION_45_7();

  MEMORY[0x1C69534E0](0x74756F656D697420, 0xE90000000000003DLL);
  sub_1C6016D10();
  v9 = MEMORY[0x1C69534E0](0x746E657272756320, 0xEE003D6574617453);
  v10 = (*(*v3 + 144))(v9);
  v12 = v11;
  MEMORY[0x1C69534E0](v10);

  sub_1C5DBB53C();
  OUTLINED_FUNCTION_118();

  __swift_project_boxed_opaque_existential_0((v2 + 328), *(v2 + 352));
  memcpy(__srca, __dst, 0x43uLL);
  memset(&__srca[9], 0, 72);
  LOBYTE(__srca[18]) = -1;
  __srca[19] = v12;
  memcpy(v20, __srca, 0xA0uLL);
  sub_1C5DE8BA4(v20);
  memcpy(v26, v20, 0xD9uLL);
  sub_1C5D95E74(__src, v18);
  v13 = v12;
  sub_1C5DBBF0C();
  sub_1C5DE9BB4(__srca, sub_1C5DE8BB8);
  sub_1C5D61B3C(&v22);
  v14 = v23;
  v15 = v24;
  v25 = v22;
  sub_1C5CC583C(&v25);
  if (v14)
  {
    sub_1C5D61B3C(v18);
    sub_1C5C74C18(v18[2], v18[3]);
    v16 = OUTLINED_FUNCTION_39_8();
    v14(v16);
    sub_1C5C74C18(v14, v15);
  }

  OUTLINED_FUNCTION_27(v2 + 16, &v17);
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_98();
    sub_1C5D4CB44();
    swift_unknownObjectRelease();
  }

  sub_1C5DDC13C(v12);
}

uint64_t sub_1C5DE2E8C(uint64_t a1)
{
  v2 = sub_1C6016630();
  v20 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6016690();
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6016650();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5C64D74(0, &qword_1ED7DCE50, 0x1E69E9610);
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7F80], v8);
  v12 = sub_1C6017010();
  (*(v9 + 8))(v11, v8);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1C5DE95AC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5DBC798;
  aBlock[3] = &block_descriptor_122_0;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1C6016670();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1C5DE9C0C(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60]);
  v16 = MEMORY[0x1E69E7F60];
  sub_1C5DE91C8(0, &qword_1ED7DC288, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1C5DE9C50(&qword_1ED7DC280, &qword_1ED7DC288, v16);
  sub_1C60173B0();
  MEMORY[0x1C6953AC0](0, v7, v4, v15);
  _Block_release(v15);

  (*(v20 + 8))(v4, v2);
  (*(v18 + 8))(v7, v19);
}

void sub_1C5DE3284(void *a1, uint64_t a2)
{
  v3 = sub_1C6016630();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6016690();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 avPlayerItem];
  v12 = [v11 accessLog];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = *(Strong + 152);

    v14 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a1;
    v23 = v14;
    v15[4] = v12;
    aBlock[4] = sub_1C5DE95B4;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5DBC798;
    aBlock[3] = &block_descriptor_129;
    v16 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    v22 = v12;
    sub_1C6016670();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1C5DE9C0C(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60]);
    v17 = v4;
    v18 = MEMORY[0x1E69E7F60];
    sub_1C5DE91C8(0, &qword_1ED7DC288, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    v21 = v7;
    sub_1C5DE9C50(&qword_1ED7DC280, &qword_1ED7DC288, v18);
    sub_1C60173B0();
    v19 = v24;
    MEMORY[0x1C6953AC0](0, v10, v6, v16);
    _Block_release(v16);

    (*(v17 + 8))(v6, v3);
    (*(v8 + 8))(v10, v21);
  }

  else
  {
  }
}

uint64_t sub_1C5DE3660(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_1C5D5475C(a2, a3);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1C5DE3700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_1C5DE1BC4(a2, a3, a4, a5);
  if (v10)
  {
    v11 = v10;
    sub_1C5DE1C64(v10);
  }

  else if (*(a1 + 32) == 1 && (a5 & 0xE000000000000000) == 0x2000000000000000)
  {
    sub_1C5DE1E0C();
  }

  swift_beginAccess();
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v16 = 3;
  swift_unknownObjectRetain();
  sub_1C5C8A868();
  swift_unknownObjectRelease();
  if (*(a1 + 320))
  {

    v14 = sub_1C5DDBEF8(v13);
    sub_1C5C8B6FC(v15, 0, v14);
  }

  if (a5 >> 61 == 6)
  {
    sub_1C5DE1C64(*MEMORY[0x1E69873C8]);
  }
}

uint64_t sub_1C5DE3834(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_27(v4 + 160, v11);
  v12[0] = a1;
  v12[1] = a2;
  v13 = a3;
  v14 = 2;
  swift_unknownObjectRetain();
  sub_1C5C8A868();
  result = swift_unknownObjectRelease();
  if (*(v4 + 320))
  {

    v10 = sub_1C5DDBEF8(v9);
    sub_1C5C8B6FC(v12, 0, v10);
  }

  return result;
}

void (*sub_1C5DE38E8(char *a1))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v2 = *(v1 + 368);
  if (!v2)
  {
    return 0;
  }

  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(swift_allocObject() + 16) = v2;
  if (a1[72] != 3)
  {
    if (!a1[72])
    {
      switch(a1[66] >> 4)
      {
        case 1:
          v5 = *(a1 + 2);
          swift_unknownObjectRetain_n();
          if (v5)
          {
            goto LABEL_19;
          }

          swift_unknownObjectRetain();

          v7 = sub_1C5DDBEF8(v6);
          swift_unknownObjectRelease();

          if (v7 >> 14)
          {
            if (v7 >> 14 != 1)
            {
              switch(v7)
              {
                case 0x8001u:
                case 0x8003u:
                case 0x8004u:
                  return sub_1C5DE8B80;
                default:
                  goto LABEL_16;
              }
            }
          }

          else if ((v7 & 1) == 0)
          {
            goto LABEL_16;
          }

          return sub_1C5DE8B80;
        case 2:
          swift_unknownObjectRetain_n();

          v12 = sub_1C5DDBEF8(v11);
          swift_unknownObjectRelease();

          if (!(v12 >> 14))
          {
            goto LABEL_29;
          }

          if (v12 >> 14 != 1)
          {
            switch(v12)
            {
              case 0x8001u:
              case 0x8003u:
              case 0x8004u:
                goto LABEL_16;
              default:
                return sub_1C5DE8B80;
            }
          }

          goto LABEL_16;
        case 3:
          goto LABEL_12;
        case 5:
          swift_unknownObjectRetain_n();

          v12 = sub_1C5DDBEF8(v13);
          swift_unknownObjectRelease();

          if (v12 >> 14)
          {
            if (v12 >> 14 != 1)
            {
              switch(v12)
              {
                case 0x8001u:
                case 0x8003u:
                case 0x8004u:
                  goto LABEL_16;
                default:
                  return sub_1C5DE8B80;
              }
            }

            goto LABEL_16;
          }

LABEL_29:
          if (v12)
          {
            goto LABEL_16;
          }

          break;
        default:
          goto LABEL_15;
      }

      return sub_1C5DE8B80;
    }

    swift_unknownObjectRetain_n();

    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  v8 = *(a1 + 3) >> 61;
  if (v8 == 3)
  {
    v10 = *a1;
    swift_unknownObjectRetain_n();

    if (v10)
    {
      return sub_1C5DE8B88;
    }

LABEL_16:

    return 0;
  }

  if (v8 == 1)
  {
    swift_unknownObjectRetain_n();
LABEL_19:

    return sub_1C5DE8B80;
  }

  if (v8)
  {
LABEL_15:
    swift_unknownObjectRetain_n();

    goto LABEL_16;
  }

LABEL_12:
  swift_unknownObjectRetain_n();

  return sub_1C5DE8B88;
}

void sub_1C5DE3BF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  v12[4] = sub_1C5DE8B98;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C5DBC798;
  v12[3] = &block_descriptor_84;
  v11 = _Block_copy(v12);

  [a4 requestLeaseForItem:a1 completion:v11];
  _Block_release(v11);
}

void sub_1C5DE3DB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C5DBC798;
  v7[3] = &block_descriptor_25;
  v6 = _Block_copy(v7);

  [a4 relinquishLeaseForItem:a1 completion:v6];
  _Block_release(v6);
}

uint64_t sub_1C5DE3E80(uint64_t result)
{
  v1 = result;
  if (*(result + 72) == 3)
  {
    v2 = *(result + 24) >> 61;
    if (v2 <= 3 && v2 != 2)
    {
LABEL_9:

      return sub_1C5DDBE58(result);
    }

    return 0;
  }

  if (*(result + 72))
  {
    return 0;
  }

  result = 0;
  switch(*(v1 + 66) >> 4)
  {
    case 1:
      result = swift_unknownObjectRetain();
      break;
    case 2:
    case 3:
    case 5:
      goto LABEL_9;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C5DE3F2C(uint64_t a1)
{
  if (sub_1C5DDBEF8(a1) == 32771 || !*(v1 + 64))
  {
    return 0;
  }

  v2 = *(v1 + 72);
  swift_getObjectType();
  v3 = *(v2 + 384);
  swift_unknownObjectRetain();
  v4 = OUTLINED_FUNCTION_147();
  v5 = v3(v4);
  swift_unknownObjectRelease();
  return v5 & 1;
}

id sub_1C5DE3FD4()
{
  if (!*(v0 + 64))
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result canPlaySpeedRamp];
  }

  return result;
}

unint64_t sub_1C5DE4028()
{
  sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_40_7();
  v2 = OUTLINED_FUNCTION_32_8();
  v3(v2);
  OUTLINED_FUNCTION_0_70();
  sub_1C5DE9C0C(v4, v5);
  OUTLINED_FUNCTION_37_7();
  v6 = sub_1C6015290();
  v7 = OUTLINED_FUNCTION_39_8();
  v8(v7);
  if (v6)
  {
    IsSystemApp = ICCurrentApplicationIsSystemApp();
    if (IsSystemApp)
    {
      OUTLINED_FUNCTION_27(v0 + 16, &v34);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v11 = [*(Strong + 56) queueSupportsTransitionSettings], swift_unknownObjectRelease(), v11))
      {
        OUTLINED_FUNCTION_26_15();
        OUTLINED_FUNCTION_89();
        v35 = 0xD00000000000002ALL;
        v36 = v12;
        OUTLINED_FUNCTION_16_24();
        OUTLINED_FUNCTION_57_5();
        v13 = swift_unknownObjectWeakLoadStrong();
        if (!v13)
        {
          return 1;
        }

        v14 = [*(v13 + 56) transitionsEnabled];
        swift_unknownObjectRelease();
        v15 = swift_unknownObjectWeakLoadStrong();
        if (!v15)
        {
          return 1;
        }

        v16 = [*(v15 + 56) transitionStyle];
        swift_unknownObjectRelease();
        v17 = swift_unknownObjectWeakLoadStrong();
        if (!v17)
        {
          return 1;
        }

        [*(v17 + 56) crossfadeDuration];
        v19 = v18;
        swift_unknownObjectRelease();
        if (!v14)
        {
          return 1;
        }

        if (v16 != 1)
        {
          if (v16)
          {
            return 1;
          }

LABEL_21:
          if (v19 > 0.0)
          {
            type metadata accessor for MPCCrossFadeParameters();
            OUTLINED_FUNCTION_7_3();
            v21 = swift_allocObject();
            *(v21 + 16) = v19;
            return v21;
          }

          return 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_26_15();
        OUTLINED_FUNCTION_89();
        v35 = 0xD00000000000002ELL;
        v36 = v24;
        OUTLINED_FUNCTION_16_24();
        OUTLINED_FUNCTION_57_5();
        v25 = objc_opt_self();
        v26 = [v25 standardUserDefaults];
        v27 = [v26 areTransitionsEnabled];

        if (!v27)
        {
          return 1;
        }

        v28 = [v25 standardUserDefaults];
        v29 = [v28 transitionStyle];

        if (v29 != 1)
        {
          if (v29)
          {
            return 1;
          }

          v30 = [v25 standardUserDefaults];
          [v30 crossFadeDuration];
          v19 = v31;

          goto LABEL_21;
        }
      }

      return 0;
    }

    v22 = sub_1C5DE439C(IsSystemApp);
    if (!v22)
    {
      OUTLINED_FUNCTION_26_15();
      OUTLINED_FUNCTION_89();
      v35 = 0xD000000000000023;
      v36 = v32;
      OUTLINED_FUNCTION_16_24();
      OUTLINED_FUNCTION_57_5();
      return 1;
    }

    v21 = v22;
    OUTLINED_FUNCTION_26_15();
    OUTLINED_FUNCTION_89();
    v35 = 0xD000000000000044;
    v36 = v23;
    OUTLINED_FUNCTION_16_24();
    OUTLINED_FUNCTION_57_5();
  }

  else
  {
    v20 = sub_1C5DE43E8();
    if (v20 <= 1)
    {
      return 1;
    }

    else
    {
      return v20;
    }
  }

  return v21;
}

uint64_t sub_1C5DE439C(uint64_t a1)
{
  if (*(v1 + 112))
  {
    return 0;
  }

  v2 = *(v1 + 104);
  if (v2 <= 0.0)
  {
    return 0;
  }

  type metadata accessor for MPCCrossFadeParameters();
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t sub_1C5DE43E8()
{
  __swift_project_boxed_opaque_existential_0((v0 + 328), *(v0 + 352));
  __src[0] = 0xD000000000000038;
  __src[1] = 0x80000001C6054A40;
  sub_1C5D7E534(__src);
  memcpy(v9, __src, sizeof(v9));
  sub_1C5DBBF0C();
  IsSystemApp = ICCurrentApplicationIsSystemApp();
  if (!IsSystemApp)
  {
    return sub_1C5DE439C(IsSystemApp);
  }

  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = [v3 isCrossFadeEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [v2 standardUserDefaults];
  [v5 crossFadeDuration];
  v7 = v6;

  if (v7 <= 0.0)
  {
    return 0;
  }

  type metadata accessor for MPCCrossFadeParameters();
  result = swift_allocObject();
  *(result + 16) = v7;
  return result;
}

void sub_1C5DE4520()
{
  if (*(v0 + 208))
  {

    sub_1C5D6D350(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

uint64_t sub_1C5DE4570(uint64_t a1)
{
  OUTLINED_FUNCTION_5_37(a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1C5D52D8C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DE45E8(uint64_t a1)
{
  OUTLINED_FUNCTION_5_37(a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1C5D54614();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DE4690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_5_37(a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1C5D546B8(a1, a2, a3, a4, a5, a6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DE4738(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_5_37(a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = a1();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1C5DE4794(uint64_t a1)
{
  OUTLINED_FUNCTION_5_37(a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_147();
    sub_1C5D5C5D4();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C5DE4814(void *a1)
{
  sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_40_7();
  v4 = OUTLINED_FUNCTION_32_8();
  v5(v4);
  OUTLINED_FUNCTION_0_70();
  sub_1C5DE9C0C(v6, v7);
  OUTLINED_FUNCTION_37_7();
  v8 = sub_1C6015290();
  v9 = OUTLINED_FUNCTION_39_8();
  v10(v9);
  if (v8)
  {

    sub_1C5DDBC3C(1, a1);
    if (v12 == v13 >> 1)
    {
      swift_unknownObjectRelease();
      if (v1[26])
      {

        sub_1C5D6B6B0(0);
      }
    }

    else if (v12 >= (v13 >> 1))
    {
      __break(1u);
    }

    else
    {
      v14 = *(v11 + 8 * v12);
      OUTLINED_FUNCTION_126();
      swift_unknownObjectRelease();
      if (v1[26])
      {
        v15 = a1;
        OUTLINED_FUNCTION_206();

        sub_1C5D6B6B0(a1);
      }

      else
      {
      }
    }
  }
}

double sub_1C5DE49B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_5_37(a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1C5DABCEC(a2);
    swift_unknownObjectRelease();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_1C5DE4A20()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  __swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]);
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_1C6017540();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1C69534E0](0xD000000000000016);
  sub_1C5DE9A10(0);
  OUTLINED_FUNCTION_54_7(v9, v10, v9, v11, v12, v13, v14, v15, *v48, *&v48[4], *&v48[8], *v49, *&v49[8], *&v49[16], *&v49[24], *&v49[32], *&v49[40], *&v49[48], *&v49[56], *&v49[64], *&v49[72], *&v49[80], *&v49[88], *&v49[96], *&v49[104], *&v49[112], *&v49[120], *&v49[128], *&v49[136], *&v49[144], *&v49[152], *&v49[160], *&v49[168], *&v49[176], *&v49[184], *&v49[192], *&v49[200], *&v49[208], *&v49[216], v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v50[23]);
  MEMORY[0x1C69534E0](540945696, 0xE400000000000000);
  sub_1C5DE9AA8(0);
  OUTLINED_FUNCTION_54_7(v16, v17, v16, v18, v19, v20, v21, v22, *v48, *&v48[4], *&v48[8], *v49, *&v49[8], *&v49[16], *&v49[24], *&v49[32], *&v49[40], *&v49[48], *&v49[56], *&v49[64], *&v49[72], *&v49[80], *&v49[88], *&v49[96], *&v49[104], *&v49[112], *&v49[120], *&v49[128], *&v49[136], *&v49[144], *&v49[152], *&v49[160], *&v49[168], *&v49[176], *&v49[184], *&v49[192], *&v49[200], *&v49[208], *&v49[216], v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v50[23]);
  sub_1C5D7E534(__src);
  memcpy(__dst, __src, 0xD9uLL);
  sub_1C5DBBF0C();

  if (v8 && v6)
  {

    sub_1C5DE4CF4(v23, v6, v4, v2);
    v24 = v0[26];
    if (v24)
    {
      v25 = *(v24 + 24);
      v26 = v25;
    }

    else
    {
      v25 = 0;
    }

    v27 = sub_1C5DDF0FC(v8, v6, v25);

    v28 = v0[26];
    if (v28)
    {
      v29 = *(v28 + 24);
      v30 = v29;
    }

    else
    {
      v29 = 0;
    }

    v31 = sub_1C5DDF0FC(v4, v2, v29);

    __swift_project_boxed_opaque_existential_0(v0 + 41, v0[44]);
    v50[1] = 0xE000000000000000;
    sub_1C6017540();
    v32 = MEMORY[0x1C69534E0](0xD000000000000023, 0x80000001C6055460);
    v48[0] = v27;
    OUTLINED_FUNCTION_42_10(v32, v33, v34, v35, v36, v37, v38, v39, *v48, *&v48[4], *&v48[8], *v49, *&v49[8], *&v49[16], *&v49[24], *&v49[32], *&v49[40], *&v49[48], *&v49[56], *&v49[64], *&v49[72], *&v49[80], *&v49[88], *&v49[96], *&v49[104], *&v49[112], *&v49[120], *&v49[128], *&v49[136], *&v49[144], *&v49[152], *&v49[160], *&v49[168], *&v49[176], *&v49[184], *&v49[192], *&v49[200], *&v49[208], *&v49[216], 0);
    v40 = MEMORY[0x1C69534E0](540945696, 0xE400000000000000);
    v48[0] = v31;
    OUTLINED_FUNCTION_42_10(v40, v41, v42, v43, v44, v45, v46, v47, *v48, *&v48[4], *&v48[8], *v49, *&v49[8], *&v49[16], *&v49[24], *&v49[32], *&v49[40], *&v49[48], *&v49[56], *&v49[64], *&v49[72], *&v49[80], *&v49[88], *&v49[96], *&v49[104], *&v49[112], *&v49[120], *&v49[128], *&v49[136], *&v49[144], *&v49[152], *&v49[160], *&v49[168], *&v49[176], *&v49[184], *&v49[192], *&v49[200], *&v49[208], *&v49[216], v50[0]);
    *v49 = v50[0];
    *&v49[8] = 0xE000000000000000;
    sub_1C5D7E534(v49);
    memcpy(v50, v49, 0xD9uLL);
    sub_1C5DBBF0C();

    if ((sub_1C5DDBFA4(v27, v31) & 1) != 0 || (OUTLINED_FUNCTION_27((v0 + 2), v48), !swift_unknownObjectWeakLoadStrong()))
    {
    }

    else
    {
      sub_1C5D4FA6C();

      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5DE4CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = v4[6];
  v11 = v4[47];
  v10 = v4[48];

  if (sub_1C5DDBE58(v12))
  {
    swift_getObjectType();
    v13 = sub_1C5DEA0B4();
    v15 = v14;
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = sub_1C5DE4DDC(a1, a2, a3, a4, v9, v11, v10, v13, v15);

  if (v16 != v5[6])
  {
    v5[6] = v16;
  }

  return result;
}

uint64_t sub_1C5DE4DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = (a7 | a9) == 0;
  if (a7 && a9)
  {
    if (a6 == a8 && a7 == a9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1C6017860();
    }
  }

  type metadata accessor for InitialLoadingState();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  type metadata accessor for PlayingState();
  if (swift_dynamicCastClass() && a1)
  {
    type metadata accessor for NaturalTransitionState();
    if (!((swift_dynamicCastClass() == 0) | v11 & 1))
    {
      return 1;
    }

    type metadata accessor for FailedTransitionState();
    if (!((swift_dynamicCastClass() == 0) | v11 & 1) && a5 != 5)
    {
      goto LABEL_20;
    }
  }

  type metadata accessor for PausedState();
  if (swift_dynamicCastClass())
  {
    if (a1)
    {
      type metadata accessor for FailedTransitionState();
      if (!((swift_dynamicCastClass() == 0) | v11 & 1) && a5 != 5)
      {
LABEL_20:
        type metadata accessor for FailedTransitionState();
        goto LABEL_23;
      }
    }
  }

  type metadata accessor for SkippingTransitionState();
  if (swift_dynamicCastClass() && a5 != 5)
  {
LABEL_23:
    v14 = swift_dynamicCastClassUnconditional();

    return sub_1C5DE500C(v14);
  }

  type metadata accessor for EndOfQueueState();
  if (swift_dynamicCastClass())
  {
    return 5;
  }

  type metadata accessor for InitiatingPlaybackState();
  if (swift_dynamicCastClass() && a5 == 5)
  {
    return 0;
  }

  type metadata accessor for ScanningState();
  v15 = swift_dynamicCastClass();
  if (a5 == 5)
  {
    v16 = 0;
  }

  else
  {
    v16 = a5;
  }

  if (v15)
  {
    return v16;
  }

  else
  {
    return a5;
  }
}

uint64_t sub_1C5DE500C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = 2 * (v1 > 1);
  if (v1 == -1 || v1 == 1)
  {
    v2 = *(a1 + 24);
  }

  if (v1 >= -1)
  {
    return v2;
  }

  else
  {
    return -2;
  }
}

uint64_t sub_1C5DE5150()
{
  swift_beginAccess();
  result = sub_1C5DE97D0(v0 + 224, v3, qword_1ED7DF310, &type metadata for SystemObserver);
  if (v4)
  {
    if ((!MSVDeviceOSIsInternalInstall() || MSVDeviceIsInternalCarry()) && FigOutputMonitorIsScreenProbablyBeingRecorded())
    {
      sub_1C5DE9158(v3, qword_1ED7DF310, &type metadata for SystemObserver);
      v2 = sub_1C5DE4738(sub_1C5D54840);
    }

    else
    {
      sub_1C5DE9158(v3, qword_1ED7DF310, &type metadata for SystemObserver);
      v2 = 1;
    }

    return v2 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5DE5344(uint64_t a1)
{
  if (a1 != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (qword_1EC1A9180 != -1)
  {
    swift_once();
  }

  v1 = off_1EC1A9188;
  v2 = *(off_1EC1A9188 + 2);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1C60175F0();
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      sub_1C6016D30();
      v6 = objc_allocWithZone(MEMORY[0x1E69585F8]);
      sub_1C6016900();
      OUTLINED_FUNCTION_98();

      LODWORD(v7) = v5;
      [v6 initWithRate:0 localizedName:v7];

      sub_1C60175D0();
      sub_1C6017600();
      sub_1C6017610();
      sub_1C60175E0();
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1C5DE54BC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 328), *(a1 + 352));
  sub_1C6017540();

  __src[0] = 0xD00000000000001ELL;
  __src[1] = 0x80000001C6054D50;
  v3 = [a2 description];
  v4 = sub_1C6016940();
  v6 = v5;

  MEMORY[0x1C69534E0](v4, v6);

  sub_1C5D7E534(__src);
  memcpy(v8, __src, sizeof(v8));
  sub_1C5DBBF0C();
}

id sub_1C5DE55B4(uint64_t a1)
{
  v1 = *(a1 + 16);

  OUTLINED_FUNCTION_255();
  sub_1C6016900();
  OUTLINED_FUNCTION_206();

  return v1;
}

uint64_t sub_1C5DE5600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = sub_1C6016940();
  *(a1 + 24) = v4;
}

id sub_1C5DE5644()
{

  sub_1C6016840();
  OUTLINED_FUNCTION_73();

  return v0;
}

uint64_t sub_1C5DE56A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 48) = sub_1C6016860();
}

id sub_1C5DE570C(uint64_t a1)
{
  v1 = *(a1 + 64);

  OUTLINED_FUNCTION_255();
  sub_1C6016900();
  OUTLINED_FUNCTION_206();

  return v1;
}

uint64_t sub_1C5DE5758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 64) = sub_1C6016940();
  *(a1 + 72) = v4;
}

uint64_t sub_1C5DE579C()
{
  *(v0 + 56) = xmmword_1C6043010;
  OUTLINED_FUNCTION_89();
  *(v0 + 72) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 48) = v5;
  sub_1C6014F90();
  v7 = v6;
  type metadata accessor for EventTime();
  swift_allocObject();
  *(v0 + 40) = sub_1C5C8A6E0(0, 0, 0, 1, v7, v7);
  return v0;
}

uint64_t sub_1C5DE5830()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C5DE5868()
{
  sub_1C5DE5830();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

void sub_1C5DE5964(uint64_t a1)
{
  v3 = sub_1C6016630();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C6016690();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR___PlayerViewControllerBehavior_reporter];
  __swift_project_boxed_opaque_existential_0(&v1[OBJC_IVAR___PlayerViewControllerBehavior_reporter], *&v1[OBJC_IVAR___PlayerViewControllerBehavior_reporter + 24]);
  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD000000000000028, 0x80000001C6055310);
  v45 = a1;
  v7 = AVMusicAppBehaviorContextUserAction.customDescription.getter(a1);
  MEMORY[0x1C69534E0](v7);

  MEMORY[0x1C69534E0](0x65746E6F63202D20, 0xEC000000203A7478);
  v8 = [v1 behaviorContext];
  v9 = sub_1C5DE829C(v8);
  v11 = v10;

  MEMORY[0x1C69534E0](v9, v11);

  sub_1C5DB12C8(v50);
  memcpy(v49, v50, sizeof(v49));
  sub_1C5DBBF0C();

  v12 = objc_opt_self();
  if ([v12 isMainThread])
  {
    sub_1C5DE6424(v45);
  }

  else
  {
    __swift_project_boxed_opaque_existential_0(v6, *(v6 + 3));
    v48[0] = 0;
    v48[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD00000000000004ELL, 0x80000001C6055340);
    v13 = [v12 currentThread];
    v14 = [v13 description];
    v15 = sub_1C6016940();
    v17 = v16;

    MEMORY[0x1C69534E0](v15, v17);

    v47[0] = v48[0];
    v47[1] = v48[1];
    sub_1C5D45B74(v47);
    memcpy(v48, v47, 0xD9uLL);
    sub_1C5DBBF0C();

    v38 = objc_opt_self();
    v18 = *MEMORY[0x1E69B1338];
    v19 = sub_1C6016900();
    v20 = sub_1C6016900();
    v21 = sub_1C6016900();
    sub_1C5DE990C(0, &qword_1ED7DCAE8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C60311E0;
    v23 = [v12 currentThread];
    v24 = [v23 description];

    v25 = sub_1C6016940();
    v27 = v26;

    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 32) = v25;
    *(v22 + 40) = v27;
    sub_1C5DC9604(v18, v19, v20, v21, 0, v22, 0, v38);

    sub_1C5C64D74(0, &qword_1ED7DCE50, 0x1E69E9610);
    v28 = sub_1C6016FD0();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v31 = v45;
    *(v30 + 16) = v29;
    *(v30 + 24) = v31;
    v46[4] = sub_1C5DE995C;
    v46[5] = v30;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 1107296256;
    v46[2] = sub_1C5DBC798;
    v46[3] = &block_descriptor_142;
    v32 = _Block_copy(v46);

    v33 = v39;
    sub_1C6016670();
    v46[0] = MEMORY[0x1E69E7CC0];
    sub_1C5DE9C0C(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60]);
    v34 = MEMORY[0x1E69E7F60];
    sub_1C5DE91C8(0, &qword_1ED7DC288, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1C5DE9C50(&qword_1ED7DC280, &qword_1ED7DC288, v34);
    v35 = v41;
    v36 = v44;
    sub_1C60173B0();
    MEMORY[0x1C6953AC0](0, v33, v35, v32);
    _Block_release(v32);

    (*(v43 + 8))(v35, v36);
    (*(v40 + 8))(v33, v42);
  }
}

uint64_t AVMusicAppBehaviorContextUserAction.customDescription.getter(uint64_t a1)
{
  v1 = 0x6573756170;
  switch(a1)
  {
    case 0:
      break;
    case 1:
      v1 = 2036427888;
      break;
    case 2:
      v1 = 1702131053;
      break;
    case 3:
      v1 = 0x6574756D6E75;
      break;
    case 4:
      v1 = 0x7263536E69676562;
      break;
    case 5:
      v1 = 0x6275726353646E65;
      break;
    case 6:
      v1 = 0x6565537472617473;
      break;
    case 7:
      v1 = 0x6B656553706F7473;
      break;
    case 8:
      v1 = 0x6163536E69676562;
      break;
    case 9:
      v1 = 0x6E6E616353646E65;
      break;
    case 10:
      OUTLINED_FUNCTION_7_35();
      v1 = v4 + 2;
      break;
    case 11:
      OUTLINED_FUNCTION_89();
      break;
    case 12:
      OUTLINED_FUNCTION_7_35();
      v1 = v2 + 3;
      break;
    case 13:
      OUTLINED_FUNCTION_7_35();
      v1 = v3 | 1;
      break;
    default:
      v1 = 0x206E776F6E6B6E75;
      break;
  }

  v7 = v1;
  MEMORY[0x1C69534E0](23328, 0xE200000000000000);
  v5 = sub_1C60177D0();
  MEMORY[0x1C69534E0](v5);

  MEMORY[0x1C69534E0](93, 0xE100000000000000);
  return v7;
}

void sub_1C5DE6258(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1C5DE6424(a2);
  }
}

void sub_1C5DE6308(void *a1)
{
  v2 = [a1 playerViewController];
  if (v2)
  {
    v3 = v2;
    [v2 setCanPausePlaybackWhenExitingFullScreen_];
  }

  v4 = [a1 playerViewController];
  if (v4)
  {
    v5 = v4;
    [v4 setUpdatesNowPlayingInfoCenter_];
  }
}

void sub_1C5DE6424(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 behaviorContext];
  v5 = sub_1C5DE71F8(a1, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_0(&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter], *&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter + 24]);
    *&__dst[0] = 0;
    *(&__dst[0] + 1) = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000044, 0x80000001C6055290);
    v26 = AVMusicAppBehaviorContextUserAction.customDescription.getter(a1);
    MEMORY[0x1C69534E0](v26);

    MEMORY[0x1C69534E0](540945696, 0xE400000000000000);
    type metadata accessor for Description();
    v29 = sub_1C5DCA77C(v5, v27, v28);
    MEMORY[0x1C69534E0](v29);

    MEMORY[0x1C69534E0](0x746E6F63202D205DLL, 0xED0000203A747865);
    v30 = [v2 behaviorContext];
    v31 = sub_1C5DE829C(v30);
    v33 = v32;

    MEMORY[0x1C69534E0](v31, v33);

    *&__src[0] = 0;
    *(&__src[0] + 1) = 0xE000000000000000;
    sub_1C5DB12C8(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    v34 = sub_1C6016880();
    sub_1C5DE73FC(v5, v34);

    return;
  }

  v8 = [v2 behaviorContext];
  v9 = sub_1C5DE732C(a1, v8);

  if (v9)
  {
    v10 = [v2 behaviorContext];
    if (!v10)
    {
      __swift_project_boxed_opaque_existential_0(&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter], *&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter + 24]);
      *&__dst[0] = 0;
      *(&__dst[0] + 1) = 0xE000000000000000;
      sub_1C6017540();
      MEMORY[0x1C69534E0](0xD000000000000049, 0x80000001C6055080);
      v39 = AVMusicAppBehaviorContextUserAction.customDescription.getter(a1);
      MEMORY[0x1C69534E0](v39);

      *&__src[0] = 0;
      *(&__src[0] + 1) = 0xE000000000000000;
      sub_1C5D45B74(__src);
      memcpy(__dst, __src, 0xD9uLL);
      sub_1C5DBBF0C();

      v40 = objc_opt_self();
      v41 = *MEMORY[0x1E69B1338];
      v42 = sub_1C6016900();
      v43 = sub_1C6016900();
      v44 = sub_1C6016900();
      [v40 snapshotWithDomain:v41 type:v42 subType:v43 context:v44 triggerThresholdValues:0 events:0 completion:0];

      return;
    }

    v11 = v10;
    v12 = [v10 playerViewController];
    if (v12 && (v13 = v12, v14 = [v12 player], v13, v14) && (v15 = objc_msgSend(v14, sel_currentItem), v14, v15))
    {
      v16 = &v2[OBJC_IVAR___PlayerViewControllerBehavior_onGoingJumpToTimeInfo];
      v17 = *&v2[OBJC_IVAR___PlayerViewControllerBehavior_onGoingJumpToTimeInfo + 8];
      if (!v17)
      {
        __swift_project_boxed_opaque_existential_0(&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter], *&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter + 24]);
        *&__dst[0] = 0;
        *(&__dst[0] + 1) = 0xE000000000000000;
        sub_1C6017540();
        MEMORY[0x1C69534E0](0xD00000000000006ALL, 0x80000001C6055180);
        v50 = AVMusicAppBehaviorContextUserAction.customDescription.getter(a1);
        MEMORY[0x1C69534E0](v50);

        *&__src[0] = 0;
        *(&__src[0] + 1) = 0xE000000000000000;
        sub_1C5D45B74(__src);
        memcpy(__dst, __src, 0xD9uLL);
        sub_1C5DBBF0C();

        v51 = objc_opt_self();
        v52 = *MEMORY[0x1E69B1338];
        v53 = sub_1C6016900();
        v54 = sub_1C6016900();
        v55 = sub_1C6016900();
        [v51 snapshotWithDomain:v52 type:v53 subType:v54 context:v55 triggerThresholdValues:0 events:0 completion:0];

        return;
      }

      v77 = *v16;
      v78 = v15;
      v18 = *(v16 + 2);
      v19 = v16[24];
      sub_1C5CDAF64(&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter], v83);
      __swift_project_boxed_opaque_existential_0(v83, v84);
      *&__dst[0] = 0;
      *(&__dst[0] + 1) = 0xE000000000000000;

      sub_1C6017540();
      v80 = __dst[0];
      MEMORY[0x1C69534E0](0xD000000000000054, 0x80000001C6055210);
      *&__dst[0] = a1;
      type metadata accessor for AVMusicAppBehaviorContextUserAction();
      sub_1C6017650();
      v87.value = MEMORY[0x1C69534E0](0x72617473202D205DLL, 0xEF203A656D695474);
      v87.is_nil = v18;
      DefaultStringInterpolation.appendInterpolation(time:)(v87);
      MEMORY[0x1C69534E0](0xD000000000000013, 0x80000001C6055270);
      v20 = [v2 behaviorContext];
      if (v20)
      {
        v22 = v20;
        v23 = [v20 seekTargetTime];

        if (v23)
        {
          [v23 doubleValue];
          v25 = v24;

          LOBYTE(v20) = v25;
        }

        else
        {
          LOBYTE(v20) = 0;
        }
      }

      DefaultStringInterpolation.appendInterpolation(time:)(*(&v20 - 1));
      MEMORY[0x1C69534E0](0x546D657469202D20, 0xED0000203A656D69);
      [v78 currentTime];
      v56 = sub_1C6017220();
      sub_1C5DE9844(0, &qword_1ED7DCB08, &qword_1ED7DCAC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v57 = swift_allocObject();
      v58 = MEMORY[0x1E69E63B0];
      *(v57 + 16) = xmmword_1C60311E0;
      v59 = MEMORY[0x1E69E6438];
      *(v57 + 56) = v58;
      *(v57 + 64) = v59;
      *(v57 + 32) = v56;
      v60 = sub_1C6016960();
      MEMORY[0x1C69534E0](v60);

      MEMORY[0x1C69534E0](0x65746E6F63202D20, 0xEC000000203A7478);
      v61 = [v2 behaviorContext];
      v62 = sub_1C5DE829C(v61);
      v64 = v63;

      MEMORY[0x1C69534E0](v62, v64);

      __src[0] = v80;
      sub_1C5DB12C8(__src);
      memcpy(__dst, __src, 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v83);
      v65 = MEMORY[0x1E69E6370];
      *(&v82 + 1) = MEMORY[0x1E69E6370];
      LOBYTE(v81) = 1;
      sub_1C5C70758(&v81, v79);
      v66 = MEMORY[0x1E69E7CC8];
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C5E361A8(v79, 0x64656873696E6966, 0xE800000000000000);
      *(&v82 + 1) = MEMORY[0x1E69E6158];
      *&v81 = v77;
      *(&v81 + 1) = v17;
      sub_1C5C70758(&v81, v79);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C5E361A8(v79, 0x696669746E656469, 0xEA00000000007265);
      if (v19)
      {
        v67 = sub_1C5CE2084(0x6D69547472617473, 0xE900000000000065);
        v68 = MEMORY[0x1E69E7CA0];
        if (v69)
        {
          v70 = v67;
          swift_isUniquelyReferenced_nonNull_native();
          *&v79[0] = v66;
          sub_1C5DE98A0(0, &qword_1EC1A9268, MEMORY[0x1E69E6DC8]);
          v58 = MEMORY[0x1E69E63B0];
          sub_1C6017660();
          v71 = *&v79[0];

          sub_1C5C70758((*(v71 + 56) + 32 * v70), &v81);
          sub_1C6017680();
        }

        else
        {
          v81 = 0u;
          v82 = 0u;
        }

        sub_1C5DE9158(&v81, &qword_1ED7E0200, v68 + 8);
      }

      else
      {
        *(&v82 + 1) = v58;
        *&v81 = v18;
        sub_1C5C70758(&v81, v79);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C5E361A8(v79, 0x6D69547472617473, 0xE900000000000065);
      }

      [v78 currentTime];
      v72 = sub_1C6017220();
      *(&v82 + 1) = v58;
      *&v81 = v72;
      sub_1C5C70758(&v81, v79);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C5E361A8(v79, 0x656D6954646E65, 0xE700000000000000);
      *(&v82 + 1) = v65;
      LOBYTE(v81) = 1;
      sub_1C5C70758(&v81, v79);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C5E361A8(v79, 0x65766973736170, 0xE700000000000000);
      *(v16 + 1) = 0;
      *(v16 + 2) = 0;
      v16[24] = 0;
      *v16 = 0;

      v73 = [objc_opt_self() defaultCenter];
      if (qword_1ED7DCE20 != -1)
      {
        swift_once();
      }

      v74 = qword_1ED7E1680;
      v49 = v78;
      sub_1C5E10480();
      v76 = v75;

      sub_1C5DC96C0(v74, v78, v76, v73);
    }

    else
    {
      sub_1C5CDAF64(&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter], v83);
      __swift_project_boxed_opaque_existential_0(v83, v84);
      *&__dst[0] = 0;
      *(&__dst[0] + 1) = 0xE000000000000000;
      sub_1C6017540();
      v79[0] = __dst[0];
      MEMORY[0x1C69534E0](0xD00000000000004ELL, 0x80000001C60550F0);
      v35 = AVMusicAppBehaviorContextUserAction.customDescription.getter(a1);
      MEMORY[0x1C69534E0](v35);

      MEMORY[0x1C69534E0](0xD000000000000018, 0x80000001C6055140);
      v36 = [v2 behaviorContext];
      if (v36 && (v37 = v36, v38 = [v36 playerViewController], v37, v38))
      {
        *(&v82 + 1) = sub_1C5C64D74(0, &qword_1EC1AB9D8, 0x1E6958608);
        *&v81 = v38;
      }

      else
      {
        v81 = 0u;
        v82 = 0u;
      }

      DefaultStringInterpolation.appendInterpolation(describing:default:)(&v81, 7104878, 0xE300000000000000);
      sub_1C5DE9158(&v81, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
      __src[0] = v79[0];
      sub_1C5D45B74(__src);
      memcpy(__dst, __src, 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v83);
      v45 = objc_opt_self();
      v46 = *MEMORY[0x1E69B1338];
      v47 = sub_1C6016900();
      v48 = sub_1C6016900();
      v49 = sub_1C6016900();
      [v45 snapshotWithDomain:v46 type:v47 subType:v48 context:v49 triggerThresholdValues:0 events:0 completion:0];
    }
  }
}

uint64_t sub_1C5DE71F8(uint64_t a1, void *a2)
{
  result = 0;
  switch(a1)
  {
    case 0:
      result = 1;
      break;
    case 1:
      return result;
    case 4:
    case 6:
      if (sub_1C5DE72AC(a1, a2))
      {
        result = 6;
      }

      else
      {
        result = 0;
      }

      break;
    case 10:
      result = 2;
      break;
    case 11:
      result = 3;
      break;
    case 12:
      result = 4;
      break;
    case 13:
      result = 5;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_1C5DE72AC(uint64_t a1, id a2)
{
  if (a1 == 4)
  {
    return 1;
  }

  result = 0;
  if (a1 == 6 && a2)
  {
    if ([a2 isScrubbing])
    {
      return 0;
    }

    result = [a2 seekTargetTime];
    if (result)
    {

      return 1;
    }
  }

  return result;
}

uint64_t sub_1C5DE732C(uint64_t a1, id a2)
{
  if (!*(v2 + OBJC_IVAR___PlayerViewControllerBehavior_onGoingJumpToTimeInfo + 8))
  {
    return 0;
  }

  if (a2)
  {
    v5 = [a2 isScrubbing];
  }

  else
  {
    v5 = 2;
  }

  v6 = [a2 seekTargetTime];
  if (a1 == 7)
  {
    if (v5 == 2 || (v5 & 1) != 0)
    {
      goto LABEL_13;
    }

    if (v6)
    {
      v7 = 1;
      goto LABEL_14;
    }

    return 0;
  }

  if (a1 != 5)
  {
LABEL_13:
    v7 = 0;
LABEL_14:

    return v7;
  }

  v7 = 0;
  if (v5 == 2 || (v5 & 1) == 0 || v6)
  {
    goto LABEL_14;
  }

  return 1;
}

uint64_t sub_1C5DE73FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1C6015060();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6015050();
  v9 = sub_1C6015030();
  v11 = v10;
  (*(v6 + 8))(v8, v5);

  sub_1C5E10F64();
  type metadata accessor for VideoUserAction();
  v12 = swift_allocObject();
  sub_1C5DE579C();
  v13 = [v3 behaviorContext];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = v12;

  sub_1C5DE7AE0(a1, v13, v9, v11, sub_1C5DE97C4, v15, &v35);

  v16 = v39 | (v40 << 16);
  if ((~v16 & 0xFEFEFE) != 0)
  {
    v41[0] = v35;
    v41[1] = v36;
    v41[2] = v37;
    v41[3] = v38;
    v42 = v39;
    v43 = BYTE2(v16);
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v34 = v38;
    if (a1 == 6)
    {
      v18 = sub_1C5DE8500();
      v19 = 0.0;
      if (v18 && (v20 = v18, v21 = [v18 currentItem], v20, v21))
      {
        [v21 currentTime];
        v29[1] = v45;
        v29[2] = *(&v44 + 1);

        v19 = sub_1C6017220();
        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

      v23 = &v3[OBJC_IVAR___PlayerViewControllerBehavior_onGoingJumpToTimeInfo];
      *v23 = v9;
      *(v23 + 1) = v11;
      *(v23 + 2) = v19;
      v23[24] = v22;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;

      sub_1C5DE95C0(v26, v25);

      swift_unknownObjectRelease();
    }

    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      if (((v43 << 16) & 0xF00000) != 0xC00000)
      {
        v44 = v31;
        v45 = v32;
        v46 = v33;
        v47 = v34;
        v48 = v16;
        v49 = BYTE2(v16);
        v50 = 0;
        swift_unknownObjectRetain();
        sub_1C5DE97D0(&v35, &v30, &qword_1ED7DC2D0, &type metadata for UserEvent);
        sub_1C5DE294C(&v44, v28, v28, v41);
      }

      sub_1C5DE9158(&v35, &qword_1ED7DC2D0, &type metadata for UserEvent);

      return swift_unknownObjectRelease();
    }

    else
    {

      return sub_1C5DE9158(&v35, &qword_1ED7DC2D0, &type metadata for UserEvent);
    }
  }

  else
  {
  }
}

void sub_1C5DE7808(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_1C5CDAF64(Strong + OBJC_IVAR___PlayerViewControllerBehavior_reporter, v28);
    __swift_project_boxed_opaque_existential_0(v28, v28[3]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    v26 = __dst[0];
    v27 = __dst[1];
    MEMORY[0x1C69534E0](0xD000000000000040, 0x80000001C6055030);
    type metadata accessor for Description();
    v15 = sub_1C5DCA77C(a5, v13, v14);
    MEMORY[0x1C69534E0](v15);

    MEMORY[0x1C69534E0](0x746E656469202D20, 0xEE003A7265696669);
    MEMORY[0x1C69534E0](a1, a2);
    MEMORY[0x1C69534E0](0x726F727265202D20, 0xE90000000000003ALL);
    if (a3)
    {
      swift_getErrorValue();
      *(&v25 + 1) = v22;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
      (*(*(v22 - 8) + 16))(boxed_opaque_existential_0);
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    DefaultStringInterpolation.appendInterpolation(describing:default:)(&v24, 7104878, 0xE300000000000000);
    sub_1C5DE9158(&v24, &qword_1ED7E0200, MEMORY[0x1E69E7CA0] + 8);
    MEMORY[0x1C69534E0](0x65746E6F63202D20, 0xEC000000203A7478);
    v17 = [v12 behaviorContext];
    v18 = sub_1C5DE829C(v17);
    v20 = v19;

    MEMORY[0x1C69534E0](v18, v20);

    __src[0] = v26;
    __src[1] = v27;
    sub_1C5DB12C8(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v28);
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      sub_1C5DE968C(a6, a3, v21);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1C5DE7AE0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = a3;
  switch(a1)
  {
    case 0:
      if (a2)
      {

        v19 = [a2 playerViewController];
        if (v19)
        {
          v20 = v19;
          v21 = [v19 player];

          if (v21)
          {
            [v21 defaultRate];
            v23 = v22;

            LODWORD(v13) = v23;
LABEL_17:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v14 = 0;
            v15 = 2097153;
            goto LABEL_23;
          }
        }
      }

      else
      {
      }

      LODWORD(v13) = 1065353216;
      goto LABEL_17;
    case 1:

      v16 = 0;
      v17 = 0;
      v18 = 0;
      LODWORD(v13) = 0;
      v14 = 0;
      v15 = 3145729;
      goto LABEL_23;
    case 2:

      v14 = 0;
      OUTLINED_FUNCTION_35_14();
      LODWORD(v13) = v16;
      goto LABEL_23;
    case 3:
    case 5:
      LODWORD(v13) = a3;
      v14 = a3 & 0xFFFFFFFF00000000;

      v15 = 6291456;
      v10 = 1;
      v16 = a4;
      v17 = a5;
      v18 = a6;
      goto LABEL_23;
    case 4:

      LODWORD(v13) = 0;
      v14 = 0;
      OUTLINED_FUNCTION_35_14();
      goto LABEL_23;
    case 6:
      if (a2)
      {
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v24 = [a2 seekTargetTime];
        if (v24)
        {
          v25 = v24;
          [v24 doubleValue];
          v27 = v26;

          v13 = v27;
          goto LABEL_21;
        }
      }

      else
      {
      }

      v13 = 0x7FF8000000000000;
LABEL_21:
      v14 = v13 & 0xFFFFFFFF00000000;
LABEL_22:
      OUTLINED_FUNCTION_34_12();
LABEL_23:
      *a7 = v14 | v13;
      *(a7 + 8) = v16;
      *(a7 + 16) = v17;
      *(a7 + 24) = v18;
      *(a7 + 32) = v10;
      *(a7 + 40) = a4;
      *(a7 + 48) = a5;
      *(a7 + 56) = a6;
      *(a7 + 64) = v15;
      *(a7 + 66) = BYTE2(v15);
      return;
    case 7:

      v14 = 0;
      LODWORD(v13) = 1;
      OUTLINED_FUNCTION_34_12();
      goto LABEL_23;
    case 8:

      LODWORD(v13) = 0;
      v14 = 0;
      goto LABEL_22;
    default:
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      sub_1C60178A0();
      __break(1u);
      return;
  }
}

uint64_t sub_1C5DE7DF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C6015060();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 7) <= 1)
  {
    sub_1C6015050();
    v9 = sub_1C6015030();
    v11 = v10;
    (*(v5 + 8))(v8, v4);

    sub_1C6016880();
    type metadata accessor for VideoUserAction();
    swift_allocObject();
    sub_1C5DE579C();
    v12 = &v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter];
    v33[0] = __swift_project_boxed_opaque_existential_0(&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter], *&v2[OBJC_IVAR___PlayerViewControllerBehavior_reporter + 24]);
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD00000000000003CLL, 0x80000001C6054F90);
    v33[1] = type metadata accessor for Description();
    v15 = sub_1C5DCA77C(a1, v13, v14);
    MEMORY[0x1C69534E0](v15);

    MEMORY[0x1C69534E0](0x746E656469202D20, 0xEE003A7265696669);
    v34 = v9;
    MEMORY[0x1C69534E0](v9, v11);
    MEMORY[0x1C69534E0](0x65746E6F63202D20, 0xEC000000203A7478);
    v16 = [v2 behaviorContext];
    v17 = sub_1C5DE829C(v16);
    v19 = v18;

    MEMORY[0x1C69534E0](v17, v19);

    v36[0] = v38[0];
    v36[1] = v38[1];
    sub_1C5DB12C8(v36);
    memcpy(v38, v36, 0xD9uLL);
    sub_1C5DBBF0C();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;

      sub_1C5DE95C0(v22, v21);

      swift_unknownObjectRelease();
    }

    __swift_project_boxed_opaque_existential_0(v12, *(v12 + 3));
    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD00000000000003ELL, 0x80000001C6054FD0);
    v25 = sub_1C5DCA77C(a1, v23, v24);
    MEMORY[0x1C69534E0](v25);

    MEMORY[0x1C69534E0](0x746E656469202D20, 0xEE003A7265696669);
    MEMORY[0x1C69534E0](v34, v11);

    MEMORY[0x1C69534E0](0x65746E6F63202D20, 0xEC000000203A7478);
    v26 = [v2 behaviorContext];
    v27 = sub_1C5DE829C(v26);
    v29 = v28;

    MEMORY[0x1C69534E0](v27, v29);

    v35[0] = v37[0];
    v35[1] = v37[1];
    sub_1C5DB12C8(v35);
    memcpy(v37, v35, 0xD9uLL);
    sub_1C5DBBF0C();

    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;

      sub_1C5DE968C(v32, 0, v31);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1C5DE829C(void *a1)
{
  if (!a1)
  {
    return 0x65746E6F63206F4ELL;
  }

  v1 = a1;
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD000000000000010, 0x80000001C6054F10);
  v2 = [v1 isScrubbing];
  v3 = v2 == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x1C69534E0](v4, v5);

  MEMORY[0x1C69534E0](0x3A656D6974202D20, 0xE800000000000000);
  v6 = [v1 seekTargetTime];
  v8 = v6;
  if (v6)
  {
    [v6 doubleValue];
    v10 = v9;

    LOBYTE(v6) = v10;
  }

  DefaultStringInterpolation.appendInterpolation(time:)(*(&v6 - 1));
  MEMORY[0x1C69534E0](0xD000000000000016, 0x80000001C6054F30);
  v11 = [v1 showsSkipItemButtons];
  v12 = v11 == 0;
  if (v11)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x1C69534E0](v13, v14);

  MEMORY[0x1C69534E0](0xD000000000000014, 0x80000001C6054F50);
  v15 = [v1 isSkipToPreviousItemButtonEnabled];
  v16 = v15 == 0;
  if (v15)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v16)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  MEMORY[0x1C69534E0](v17, v18);

  MEMORY[0x1C69534E0](0xD000000000000010, 0x80000001C6054F70);
  v19 = [v1 isSkipToNextItemButtonEnabled];
  v20 = v19 == 0;
  if (v19)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v20)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x1C69534E0](v21, v22);

  MEMORY[0x1C69534E0](93, 0xE100000000000000);

  return 0;
}

id sub_1C5DE8500()
{
  v1 = [v0 behaviorContext];
  v2 = [v1 playerViewController];

  v3 = [v2 player];
  return v3;
}

id sub_1C5DE85CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerViewControllerBehavior();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5DE873C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1C5DE877C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17MediaPlaybackCore16PlayerControllerC9StackModeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C5DE87E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C5DE883C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1C5DE88A8()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_40_7();
  v11 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_146();
  v15 = v14 - v13;
  (*(v11 + 16))(v14 - v13, v9, v3);
  OUTLINED_FUNCTION_27(v5 + 16, &v32);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1C5D5C4CC(v15, v7, Strong, v3, v1);
    swift_unknownObjectRelease();
  }

  v17 = OUTLINED_FUNCTION_32_8();
  v18(v17);
  OUTLINED_FUNCTION_0_70();
  sub_1C5DE9C0C(v19, v20);
  OUTLINED_FUNCTION_37_7();
  v21 = sub_1C6015290();
  v22 = OUTLINED_FUNCTION_39_8();
  v23(v22);
  if ((v21 & 1) != 0 && *(v5 + 208))
  {

    sub_1C5D6D350(v24, v25, v26, v27, v28, v29, v30, v31);
  }

  (*(v11 + 8))(v15, v3);
  OUTLINED_FUNCTION_237();
}

void sub_1C5DE8AAC(uint64_t a1)
{
  if (!qword_1EC1A9690)
  {
    sub_1C5D11E0C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC1A9690);
    }
  }
}

void sub_1C5DE8BB8(uint64_t a1)
{
  if (!qword_1EC1A95D0)
  {
    sub_1C5DE990C(255, qword_1ED7DC2D8, &type metadata for Event, MEMORY[0x1E69E6720]);
    sub_1C5DE9844(255, &qword_1ED7DCAD0, &qword_1ED7DCAE0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC1A95D0);
    }
  }
}

void sub_1C5DE8C84(void *a1, char a2, char a3, void *a4)
{
  v7 = [a1 prefersSeekOverSkip];
  v8 = [a4 behaviorContext];
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
      [v8 setShowsSkipItemButtons_];
    }

    v13 = [a4 behaviorContext];
    [v13 setSkipToNextItemButtonEnabled_];

    v14 = [a4 behaviorContext];
    [v14 setSkipToPreviousItemButtonEnabled_];
    goto LABEL_11;
  }

  if (v8)
  {
    [v8 setShowsSkipItemButtons_];
  }

  v10 = [a4 behaviorContext];
  if (v10)
  {
    v11 = v10;
    [v10 setSkipToNextItemButtonEnabled_];
  }

  v12 = [a4 behaviorContext];
  if (v12)
  {
    v14 = v12;
    [v12 setSkipToPreviousItemButtonEnabled_];
LABEL_11:
  }
}

uint64_t sub_1C5DE8E14(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C5DE9230(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C5DE8E78(uint64_t a1)
{
  if (!qword_1EC1AB9C0)
  {
    sub_1C5C64D74(255, &qword_1EC1AB9C8, 0x1E69880F0);
    v1 = sub_1C6014DB0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1AB9C0);
    }
  }
}

id sub_1C5DE8EFC(uint64_t a1, char *a2)
{
  v8[3] = type metadata accessor for EventReporter();
  v8[4] = &off_1F4544D18;
  v8[0] = a1;
  *&a2[OBJC_IVAR___PlayerViewControllerBehavior_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &a2[OBJC_IVAR___PlayerViewControllerBehavior_onGoingJumpToTimeInfo];
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  v4[24] = 0;
  sub_1C5CDAF64(v8, &a2[OBJC_IVAR___PlayerViewControllerBehavior_reporter]);
  v7.receiver = a2;
  v7.super_class = type metadata accessor for PlayerViewControllerBehavior();
  v5 = objc_msgSendSuper2(&v7, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

id sub_1C5DE8FB0(uint64_t *a1)
{
  v10 = *a1;
  v11 = &off_1F4544D18;
  v9[0] = a1;
  v1 = objc_allocWithZone(type metadata accessor for PlayerViewControllerBehavior());
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v9[-1] - v3);
  (*(v5 + 16))(&v9[-1] - v3);
  v6 = sub_1C5DE8EFC(*v4, v1);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

uint64_t sub_1C5DE90D0(uint64_t a1, uint64_t a2)
{
  sub_1C5DE990C(0, qword_1ED7DF310, &type metadata for SystemObserver, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5DE9158(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1C5DE990C(0, a2, a3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_105();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C5DE91C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_120();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1C5DE9230(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C6016470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C5DE92A8(uint64_t a1)
{
  if (!qword_1EC1AB9D0)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1C5DE9964(255, &qword_1EC1A9148);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC1AB9D0);
    }
  }
}

uint64_t sub_1C5DE93E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_105();
  v4 = OUTLINED_FUNCTION_255();
  v5(v4);
  return a2;
}

void sub_1C5DE9440(uint64_t a1)
{
  if (!qword_1EC1A8D00)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1C5DE9964(255, &qword_1EC1A9148);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC1A8D00);
    }
  }
}

uint64_t objectdestroy_71Tm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  v2 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C5DE95C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong userActionDidBegin_];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DE968C(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        if (a2)
        {
          a2 = sub_1C6014D30();
        }

        [v7 userActionDidEnd:a1 error:a2];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t objectdestroy_80Tm()
{

  v0 = OUTLINED_FUNCTION_15_23();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5DE97D0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1C5DE990C(0, a3, a4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_105();
  v5 = OUTLINED_FUNCTION_255();
  v6(v5);
  return a2;
}

void sub_1C5DE9844(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    v7 = OUTLINED_FUNCTION_43();
    sub_1C5DE99B0(v7, v8, v9, 1);
    v10 = OUTLINED_FUNCTION_120();
    v11 = a5(v10);
    if (!v12)
    {
      atomic_store(v11, v5);
    }
  }
}

void sub_1C5DE98A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C5DE990C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C5DE9964(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_43();
    sub_1C5DE99B0(v3, v4, v5, 0);
    OUTLINED_FUNCTION_34_4();
    v6 = sub_1C6017350();
    if (!v7)
    {
      atomic_store(v6, v2);
    }
  }
}

uint64_t sub_1C5DE99B0(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1C5DE9A10(uint64_t a1)
{
  if (!qword_1ED7DD6D8[0])
  {
    sub_1C5DE91C8(255, &qword_1ED7DD6D0, type metadata accessor for State, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1ED7DD6D8);
    }
  }
}

void sub_1C5DE9AA8(uint64_t a1)
{
  if (!qword_1ED7DD7C0)
  {
    type metadata accessor for State();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED7DD7C0);
    }
  }
}

void sub_1C5DE9B10(uint64_t a1)
{
  if (!qword_1EC1A9688)
  {
    sub_1C5DE91C8(255, &qword_1ED7DF158, sub_1C5D11E0C, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC1A9688);
    }
  }
}

uint64_t sub_1C5DE9BB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_105();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C5DE9C0C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_34_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5DE9C50(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C5DE91C8(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlayerController.PlayerState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0xFFE)
  {
    if (a2 + 61442 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 61442 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 61443;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 14) | (4 * ((*a1 >> 4) & 0x3E0 | (*a1 >> 3)))) ^ 0xFFF;
  if (v5 >= 0xFFD)
  {
    v5 = -1;
  }

  return v5 + 1;
}

uint64_t storeEnumTagSinglePayload for PlayerController.PlayerState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61442 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 61442 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFFD)
  {
    v6 = ((a2 - 4094) >> 16) + 1;
    *result = a2 - 4094;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          v7 = ((-a2 >> 2) & 0x3FF) - (a2 << 10);
          *result = (16 * v7) & 0xFE00 | (8 * (v7 & 0x1F));
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C5DE9E44(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 14;
  v4 = (v1 & 7 | (8 * ((v1 >> 8) & 1))) + 2;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_WORD *sub_1C5DE9E7C(_WORD *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0x107 | (a2 << 14);
  }

  else
  {
    v2 = (32 * (a2 - 2)) & 0x100 | (a2 - 2) & 7 | 0x8000;
  }

  *result = v2;
  return result;
}

void *OUTLINED_FUNCTION_16_24()
{
  sub_1C5D7E534(v0 + 32);

  return memcpy((v0 + 256), (v0 + 32), 0xD9uLL);
}

uint64_t OUTLINED_FUNCTION_42_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  return sub_1C6017650();
}

uint64_t OUTLINED_FUNCTION_43_11()
{

  return sub_1C60176D0();
}

uint64_t OUTLINED_FUNCTION_54_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_1C6017650();
}

uint64_t OUTLINED_FUNCTION_57_5()
{

  return sub_1C5DBBF0C();
}

uint64_t OUTLINED_FUNCTION_58_7()
{

  return swift_getObjectType();
}

uint64_t sub_1C5DEA0B4()
{
  v1 = [v0 contentItemID];
  v2 = sub_1C6016940();

  return v2;
}

uint64_t sub_1C5DEA10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1C6017860();
  }
}

uint64_t sub_1C5DEA140(uint64_t a1, uint64_t a2)
{
  sub_1C60179F0();
  sub_1C60169F0();
  return sub_1C6017A20();
}

uint64_t sub_1C5DEA1A0(uint64_t a1)
{
  sub_1C60179F0();
  sub_1C60169F0();
  return sub_1C6017A20();
}

unint64_t QueuePlayerItemType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C5DEA23C()
{
  result = qword_1EC1AB9E0;
  if (!qword_1EC1AB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB9E0);
  }

  return result;
}

unint64_t sub_1C5DEA290@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = QueuePlayerItemType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1C5DEA2E8()
{
  result = qword_1EC1AB9E8[0];
  if (!qword_1EC1AB9E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC1AB9E8);
  }

  return result;
}

void sub_1C5DEA33C(uint64_t a1)
{
  sub_1C6017350();
  if (v1 <= 0x3F)
  {
    sub_1C5DED248(319, &qword_1EC1A91D0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1C5DEA470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 & 0x7FFFFFFF;
  v6 = &unk_1F453C2D8;
  v7 = MEMORY[0x1E69E7CC0];
  if ((a3 & 0x7FFFFFFF) == 0)
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if ((a3 & 0x100000000) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = &unk_1F453C2A0;
  }

  v9 = v8[2];

  if (!v9)
  {
    return 0;
  }

  v10 = &unk_1F453C258;
  if (!v5)
  {
    v10 = v7;
  }

  if ((a3 & 0x100000000) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = &unk_1F453C220;
  }

  v12 = v11[2];

  v14 = v12 - 1;
  if (v12 - 1 >= a1)
  {
    v14 = a1;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < v11[2])
  {
    v15 = v11[v14 + 4];

    return v15;
  }

  __break(1u);
  return result;
}

void sub_1C5DEA54C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = &unk_1F453C378;
  if ((a3 & 0x7FFFFFFF) == 0)
  {
    v6 = &unk_1F453C350;
  }

  if ((a3 & 0x100000000) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = &unk_1F453C320;
  }

  v8 = v7[2];

  v9 = v8 - 1;
  if (v8 - 1 >= a1)
  {
    v9 = a1;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < v7[2])
  {

    sub_1C5DEA614(a2, a3 | ((HIDWORD(a3) & 1) << 32));
    return;
  }

  __break(1u);
}

float sub_1C5DEA614(uint64_t a1, uint64_t a2)
{
  v2 = -1.0;
  if (a1 == 1)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = -1.0;
  }

  if (a1 == 1)
  {
    v4 = *&a2;
  }

  else
  {
    v4 = -*&a2;
  }

  if (*&a2 != 0.0)
  {
    v3 = v4;
  }

  if (a1 == 1)
  {
    v2 = 1.0;
    v5 = *&a2;
  }

  else
  {
    v5 = -*&a2;
  }

  if (*&a2 == 0.0)
  {
    result = v2;
  }

  else
  {
    result = v5;
  }

  if ((a2 & 0x100000000) != 0)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1C5DEA658(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_45();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_1_57();
  type metadata accessor for RateScanningSubscription(v12, v13, v14, v15);
  v16 = OUTLINED_FUNCTION_4_44();
  v17(v16);
  sub_1C5DEA768(v7, v6, v5 | ((HIDWORD(v5) & 1) << 32), a4, a5);
  v21 = v8;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_45(WitnessTable);
  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t *sub_1C5DEA768(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  swift_allocObject();
  return sub_1C5DEA818(a1, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4, v5);
}

uint64_t *sub_1C5DEA818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v23 = a5;
  v24 = a1;
  v9 = *v5;
  v10 = *(*v5 + 80);
  v11 = sub_1C6017350();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  __swift_storeEnumTagSinglePayload(v5 + *(v9 + 104), 1, 1, v10);
  v15 = (v5 + *(*v5 + 112));
  *v15 = 0u;
  v15[1] = 0u;
  *(v5 + *(*v5 + 120)) = 0;
  *(v5 + *(*v5 + 128)) = 0;
  v16 = *(*v5 + 136);
  v17 = sub_1C6015020();
  __swift_storeEnumTagSinglePayload(v5 + v16, 1, 1, v17);
  v18 = *(*v5 + 144);
  v19 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1C5DED354(0, 0xE000000000000000, v19);
  [v19 setMinimumFractionDigits_];
  [v19 setMaximumFractionDigits_];
  *(v5 + v18) = v19;
  v5[2] = a2;
  *(v5 + 6) = a3;
  *(v5 + 28) = BYTE4(a3) & 1;
  v5[4] = a4;
  *(v5 + 40) = v23;
  (*(*(v10 - 8) + 32))(v14, v24, v10);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v10);
  v20 = *(*v5 + 104);
  swift_beginAccess();
  (*(v12 + 40))(v5 + v20, v14, v11);
  swift_endAccess();
  return v5;
}

uint64_t sub_1C5DEAAC8(uint64_t a1)
{
  sub_1C5DED248(0, &qword_1EC1A91D0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1C6016460();
  if (sub_1C6016450() & 1) != 0 && (sub_1C6016460(), result = sub_1C6016450(), (result))
  {
    __break(1u);
  }

  else
  {
    sub_1C6016460();
    if ((sub_1C6016450() & 1) != 0 || (sub_1C6016460(), result = sub_1C6016450(), a1) && (result & 1) == 0)
    {
      sub_1C6015010();
      v7 = sub_1C6015020();
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
      v8 = *(*v1 + 136);
      swift_beginAccess();
      sub_1C5DED118(v5, v1 + v8);
      swift_endAccess();
      return sub_1C5DEAC18();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5DEAC18()
{
  v1 = v0;
  v2 = *v0;
  v78 = sub_1C6016630();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v75 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1C6016690();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6016620();
  v86 = *(v5 - 8);
  v87 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v85 = (&v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v72 - v8;
  v83 = sub_1C60166B0();
  v82 = *(v83 - 8);
  v9 = MEMORY[0x1EEE9AC00](v83);
  v80 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v72 - v11;
  v12 = sub_1C6017030();
  v89 = *(v12 - 8);
  v90 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2[11];
  v15 = v2[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v94 = v14;
  swift_getAssociatedConformanceWitness();
  v17 = sub_1C6016440();
  v92 = *(v17 - 8);
  v93 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v91 = &v72 - v19;
  v20 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v72 - v21;
  v23 = v1[2];
  v24 = *(v1 + 6);
  v26 = v2[15];
  v27 = *(v1 + v26);
  LOBYTE(aBlock[0]) = *(v1 + 28);
  v25 = LOBYTE(aBlock[0]);
  sub_1C5DEA54C(v27, v23, v24 | (LOBYTE(aBlock[0]) << 32));
  v29 = v28;
  v30 = *(*v1 + 104);
  swift_beginAccess();
  v95 = v15;
  if (!__swift_getEnumTagSinglePayload(v1 + v30, 1, v15))
  {
    v31 = v95;
    (*(v20 + 16))(v22, v1 + v30, v95);
    LODWORD(aBlock[0]) = v29;
    sub_1C6016430();
    (*(v20 + 8))(v22, v31);
  }

  v32 = v20;
  v33 = *(v1 + v26);
  v79 = v24 & 0x7FFFFFFF;
  v34 = &unk_1F453C378;
  if ((v24 & 0x7FFFFFFF) == 0)
  {
    v34 = &unk_1F453C350;
  }

  if (v25)
  {
    v35 = v34;
  }

  else
  {
    v35 = &unk_1F453C320;
  }

  v36 = v35[2];

  if (v33 == v36 - 1 && !__swift_getEnumTagSinglePayload(v1 + v30, 1, v95))
  {
    v38 = v32;
    v39 = *(v32 + 16);
    v40 = v95;
    v39(v22, v1 + v30, v95);
    v41 = v91;
    __swift_storeEnumTagSinglePayload(v91, 1, 1, AssociatedTypeWitness);
    sub_1C6016410();
    (*(v92 + 8))(v41, v93);
    (*(v38 + 8))(v22, v40);
  }

  v42 = *(v1 + v26);
  LOBYTE(aBlock[0]) = v25;
  result = sub_1C5DEA470(v42, v37, v24 | (v25 << 32));
  if ((v44 & 1) == 0)
  {
    v45 = *(*v1 + 128);
    if (!*(v1 + v45))
    {
      v46 = MEMORY[0x1E69E7CC0];
      if (*(v1 + 40) == 1)
      {
        v47 = &unk_1F453C258;
        if (!v79)
        {
          v47 = MEMORY[0x1E69E7CC0];
        }

        if (v25)
        {
          v48 = v47;
        }

        else
        {
          v48 = &unk_1F453C220;
        }

        sub_1C5DEB900(v48);
      }

      v49 = *(v1 + v26);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        __break(1u);
      }

      else
      {
        *(v1 + v26) = v51;
        sub_1C5DED1AC();
        aBlock[0] = v46;
        sub_1C5DED1F0();
        sub_1C5DED248(0, &qword_1ED7DC278, MEMORY[0x1E69E80B0], MEMORY[0x1E69E62F8]);
        sub_1C5DED2AC();
        v52 = v88;
        v53 = v90;
        sub_1C60173B0();
        v54 = sub_1C6017040();
        (*(v89 + 8))(v52, v53);
        *(v1 + v45) = v54;
        result = swift_unknownObjectRelease();
        if (*(v1 + v45))
        {
          ObjectType = swift_getObjectType();
          swift_unknownObjectRetain();
          v56 = v80;
          sub_1C60166A0();
          v57 = v81;
          sub_1C60166E0();
          v93 = v45;
          v58 = *(v82 + 8);
          v59 = v83;
          v58(v56, v83);
          v60 = v84;
          sub_1C5DEDA0C(v84);
          v61 = v85;
          sub_1C5DEDA78(v85);
          MEMORY[0x1C6953BE0](v57, v60, v61, ObjectType);
          swift_unknownObjectRelease();
          v62 = v87;
          v63 = *(v86 + 8);
          v63(v61, v87);
          v63(v60, v62);
          result = (v58)(v57, v59);
          v64 = v93;
          if (*(v1 + v93))
          {
            v65 = swift_getObjectType();
            v66 = swift_allocObject();
            swift_weakInit();
            v67 = swift_allocObject();
            v68 = v94;
            v67[2] = v95;
            v67[3] = v68;
            v67[4] = v66;
            aBlock[4] = sub_1C5DED334;
            aBlock[5] = v67;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1C5DBC798;
            aBlock[3] = &block_descriptor_26;
            v69 = _Block_copy(aBlock);
            swift_unknownObjectRetain();

            v70 = v73;
            sub_1C5DEDAE8(v65);
            v71 = v75;
            sub_1C5DEDAEC();
            sub_1C6017050();
            _Block_release(v69);
            swift_unknownObjectRelease();
            (*(v77 + 8))(v71, v78);
            (*(v74 + 8))(v70, v76);

            if (*(v1 + v64))
            {
              swift_getObjectType();
              swift_unknownObjectRetain();
              sub_1C6017070();
              return swift_unknownObjectRelease();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C5DEB65C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_1C6016440();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - v11;
  v13 = *(v2 + 104);
  swift_beginAccess();
  if (!__swift_getEnumTagSinglePayload(v1 + v13, 1, v3))
  {
    (*(v10 + 16))(v12, v1 + v13, v3);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, AssociatedTypeWitness);
    sub_1C6016410();
    (*(v6 + 8))(v9, v5);
    (*(v10 + 8))(v12, v3);
  }

  v14 = *(*v1 + 128);
  if (*(v1 + v14))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C6017060();
    swift_unknownObjectRelease();
  }

  *(v1 + v14) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5DEB900(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1C5DEB944(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(*result + 128);
    if (*(result + v3))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1C6017060();
      swift_unknownObjectRelease();
    }

    *(v2 + v3) = 0;
    swift_unknownObjectRelease();
    sub_1C5DEAC18();
  }

  return result;
}

id *sub_1C5DEB9FC()
{
  v1 = *(*v0 + 13);
  v2 = sub_1C6017350();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C5CBCF4C(v0 + *(*v0 + 14));
  swift_unknownObjectRelease();
  sub_1C5D01DB8(v0 + *(*v0 + 17));

  return v0;
}

void sub_1C5DEBB30(uint64_t a1)
{
  sub_1C6017350();
  if (v1 <= 0x3F)
  {
    sub_1C5DED248(319, &qword_1EC1A91D0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1C5DEBCB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = &unk_1F453C3F8;
  }

  else
  {
    v5 = &unk_1F453C3B0;
  }

  v6 = v5[2];

  v8 = v6 - 1;
  if (v6 - 1 >= a1)
  {
    v8 = a1;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < v5[2])
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5DEBD70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  OUTLINED_FUNCTION_2_45();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_1_57();
  type metadata accessor for JumpScanningSubscription(v12, v13, v14, v15);
  v16 = OUTLINED_FUNCTION_4_44();
  v17(v16);
  sub_1C5DEBE78(v7, v6, v5, a4 & 1, a5);
  v21 = v8;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_45(WitnessTable);
  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t *sub_1C5DEBF0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v24 = a5;
  v25 = a1;
  v9 = *v5;
  v10 = *(*v5 + 80);
  v11 = sub_1C6017350();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  __swift_storeEnumTagSinglePayload(v5 + *(v9 + 104), 1, 1, v10);
  v15 = (v5 + *(*v5 + 112));
  *v15 = 0u;
  v15[1] = 0u;
  *(v5 + *(*v5 + 120)) = 0;
  *(v5 + *(*v5 + 128)) = 0;
  *(v5 + *(*v5 + 136)) = 0;
  v16 = *(*v5 + 144);
  v17 = sub_1C6015020();
  __swift_storeEnumTagSinglePayload(v5 + v16, 1, 1, v17);
  v18 = *(*v5 + 152);
  v19 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1C5DED354(0, 0xE000000000000000, v19);
  [v19 setMinimumFractionDigits_];
  [v19 setMaximumFractionDigits_];
  *(v5 + v18) = v19;
  v5[2] = a2;
  v5[3] = a3;
  *(v5 + 32) = a4 & 1;
  v20 = v25;
  v5[5] = v24;
  (*(*(v10 - 8) + 32))(v14, v20, v10);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v10);
  v21 = *(*v5 + 104);
  swift_beginAccess();
  (*(v12 + 40))(v5 + v21, v14, v11);
  swift_endAccess();
  return v5;
}

uint64_t sub_1C5DEC1C4(uint64_t a1)
{
  sub_1C5DED248(0, &qword_1EC1A91D0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1C6016460();
  if (sub_1C6016450() & 1) != 0 && (sub_1C6016460(), result = sub_1C6016450(), (result))
  {
    __break(1u);
  }

  else
  {
    sub_1C6016460();
    if ((sub_1C6016450() & 1) != 0 || (sub_1C6016460(), result = sub_1C6016450(), a1) && (result & 1) == 0)
    {
      sub_1C6015010();
      v7 = sub_1C6015020();
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
      v8 = *(*v1 + 144);
      swift_beginAccess();
      sub_1C5DED118(v5, v1 + v8);
      swift_endAccess();
      return sub_1C5DEC314();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5DEC314()
{
  v1 = v0;
  v68 = *v0;
  v2 = v68;
  v59 = sub_1C6016630();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1C6016690();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6016620();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v64 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v53 - v8;
  v9 = sub_1C60166B0();
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v53 - v13;
  v14 = sub_1C6017030();
  v67 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + 80);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v53 - v20;
  v22 = *(v1 + 32);
  v23 = *(v2 + 120);
  sub_1C5DEBCB0(*(v1 + v23), v1[2], v1[3], *(v1 + 32));
  v25 = v24;
  v26 = *(*v1 + 104);
  swift_beginAccess();
  if (!__swift_getEnumTagSinglePayload(v1 + v26, 1, v18))
  {
    (*(v19 + 16))(v21, v1 + v26, v18);
    aBlock[0] = v25;
    sub_1C6016430();
    (*(v19 + 8))(v21, v18);
  }

  v27 = *(v1 + v23);
  v28 = &unk_1F453C3C0;
  if (v22)
  {
    v28 = &unk_1F453C408;
  }

  v29 = *v28;

  if (v27 >= v29 - 1)
  {
    goto LABEL_10;
  }

  v31 = *(*v1 + 128);
  v32 = *(v1 + v31);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v1 + v31) = v34;
  if (v34 >= 4)
  {
    *(v1 + v31) = 0;
    v35 = *(v1 + v23);
    v33 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (!v33)
    {
      *(v1 + v23) = v36;
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_10:
  v37 = *(*v1 + 136);
  if (!*(v1 + v37))
  {
    sub_1C5DED1AC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C5DED1F0();
    sub_1C5DED248(0, &qword_1ED7DC278, MEMORY[0x1E69E80B0], MEMORY[0x1E69E62F8]);
    sub_1C5DED2AC();
    sub_1C60173B0();
    v38 = sub_1C6017040();
    (*(v67 + 8))(v17, v14);
    *(v1 + v37) = v38;
    result = swift_unknownObjectRelease();
    if (*(v1 + v37))
    {
      swift_unknownObjectRetain();
      sub_1C60166A0();
      ObjectType = swift_getObjectType();
      v40 = v60;
      sub_1C60166E0();
      v41 = v62;
      v67 = *(v61 + 8);
      (v67)(v12, v62);
      v42 = v63;
      sub_1C5DEDA0C(v63);
      v43 = v64;
      sub_1C5DEDA78(v64);
      MEMORY[0x1C6953BE0](v40, v42, v43, ObjectType);
      swift_unknownObjectRelease();
      v44 = *(v65 + 8);
      v45 = v43;
      v46 = v66;
      v44(v45, v66);
      v44(v42, v46);
      result = (v67)(v40, v41);
      if (*(v1 + v37))
      {
        v47 = swift_getObjectType();
        v48 = swift_allocObject();
        swift_weakInit();
        v49 = swift_allocObject();
        v49[2] = v18;
        v49[3] = *(v68 + 88);
        v49[4] = v48;
        aBlock[4] = sub_1C5DED348;
        aBlock[5] = v49;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C5DBC798;
        aBlock[3] = &block_descriptor_25_0;
        v50 = _Block_copy(aBlock);
        swift_unknownObjectRetain();

        v51 = v54;
        sub_1C5DEDAE8(v47);
        v52 = v56;
        sub_1C5DEDAEC();
        sub_1C6017050();
        _Block_release(v50);
        swift_unknownObjectRelease();
        (*(v58 + 8))(v52, v59);
        (*(v55 + 8))(v51, v57);

        if (*(v1 + v37))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1C6017070();
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C5DECB60()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_1C6016440();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - v11;
  v13 = *(v2 + 104);
  swift_beginAccess();
  if (!__swift_getEnumTagSinglePayload(v1 + v13, 1, v3))
  {
    (*(v10 + 16))(v12, v1 + v13, v3);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, AssociatedTypeWitness);
    sub_1C6016410();
    (*(v6 + 8))(v9, v5);
    (*(v10 + 8))(v12, v3);
  }

  v14 = *(*v1 + 136);
  if (*(v1 + v14))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C6017060();
    swift_unknownObjectRelease();
  }

  *(v1 + v14) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5DECE04(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(*result + 136);
    if (*(result + v3))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1C6017060();
      swift_unknownObjectRelease();
    }

    *(v2 + v3) = 0;
    swift_unknownObjectRelease();
    sub_1C5DEC314();
  }

  return result;
}

id *sub_1C5DECEBC()
{
  v1 = *(*v0 + 13);
  v2 = sub_1C6017350();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C5CBCF4C(v0 + *(*v0 + 14));
  swift_unknownObjectRelease();
  sub_1C5D01DB8(v0 + *(*v0 + 18));

  return v0;
}

uint64_t sub_1C5DECFD8(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1C5DED118(uint64_t a1, uint64_t a2)
{
  sub_1C5DED248(0, &qword_1EC1A91D0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C5DED1AC()
{
  result = qword_1ED7DC238;
  if (!qword_1ED7DC238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7DC238);
  }

  return result;
}

unint64_t sub_1C5DED1F0()
{
  result = qword_1ED7DC240;
  if (!qword_1ED7DC240)
  {
    sub_1C6017030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DC240);
  }

  return result;
}

void sub_1C5DED248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C5DED2AC()
{
  result = qword_1ED7DC270;
  if (!qword_1ED7DC270)
  {
    sub_1C5DED248(255, &qword_1ED7DC278, MEMORY[0x1E69E80B0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DC270);
  }

  return result;
}

void sub_1C5DED354(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C6016900();

  [a3 setNegativePrefix_];
}

uint64_t sub_1C5DED3B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C5DED3F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5DED448(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1C5DED488(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5DED4D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5DED514(uint64_t result, unsigned int a2, unsigned int a3)
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

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_1C5DED58C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 13))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 12);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5DED5CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C5DED650(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1C6017440();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_1C5D0F1D8(0, v2 & ~(v2 >> 63), 0);
    v36 = v44;
    result = sub_1C5DF4ACC(v1);
    v40 = result;
    v41 = v4;
    v42 = v5 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (!__OFADD__(v6++, 1))
      {
        v8 = v40;
        v9 = v42;
        v35 = v41;
        v10 = v1;
        v11 = sub_1C5DF4B2C(v40, v41, v42, v1);
        if ((~(*(v11 + 96) | (*(v11 + 98) << 16)) & 0xFEFEFE) != 0)
        {
          memcpy(__dst, (v11 + 32), sizeof(__dst));
          memmove(__src, (v11 + 32), 0x43uLL);
          memcpy(v43, __src, sizeof(v43));
          sub_1C5D95E74(__src, v37);
          v12 = sub_1C5D61CD4();
          v13 = v14;
          sub_1C5DF47C8();
        }

        else
        {

          v12 = 0;
          v13 = 0;
        }

        v15 = v36;
        v44 = v36;
        v17 = *(v36 + 16);
        v16 = *(v36 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_1C5D0F1D8((v16 > 1), v17 + 1, 1);
          v15 = v44;
        }

        *(v15 + 16) = v17 + 1;
        v18 = v15 + 16 * v17;
        *(v18 + 32) = v12;
        *(v18 + 40) = v13;
        v36 = v15;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_39;
          }

          v1 = v10;
          if (sub_1C6017410())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v23 = v33;
          sub_1C5DF508C(0, &qword_1EC1ABB28, MEMORY[0x1E69E64B8]);
          v24 = sub_1C6016D80();
          sub_1C6017490();
          result = v24(__src, 0);
        }

        else
        {
          if (v9)
          {
            goto LABEL_40;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          v1 = v10;
          v19 = 1 << *(v10 + 32);
          if (v8 >= v19)
          {
            goto LABEL_35;
          }

          v20 = v8 >> 6;
          v21 = *(v32 + 8 * (v8 >> 6));
          if (((v21 >> v8) & 1) == 0)
          {
            goto LABEL_36;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_37;
          }

          v22 = v21 & (-2 << (v8 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v23 = v33;
          }

          else
          {
            v25 = v20 << 6;
            v26 = v20 + 1;
            v27 = (v31 + 8 * v20);
            v23 = v33;
            while (v26 < (v19 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                result = sub_1C5D380F8(v8, v35, 0);
                v19 = __clz(__rbit64(v28)) + v25;
                goto LABEL_30;
              }
            }

            result = sub_1C5D380F8(v8, v35, 0);
          }

LABEL_30:
          v30 = *(v10 + 36);
          v40 = v19;
          v41 = v30;
          v42 = 0;
        }

        if (v6 == v23)
        {
          sub_1C5D380F8(v40, v41, v42);
          return v36;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5DED9EC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1C6017440();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_1C5DEDA0C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7F40];
  sub_1C6016620();
  OUTLINED_FUNCTION_105();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1C5DEDA78@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  sub_1C6016620();
  OUTLINED_FUNCTION_105();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1C5DEDAEC()
{
  sub_1C6016630();
  sub_1C5DF5240(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v0 = MEMORY[0x1E69E7F60];
  sub_1C5DF4F4C(0, &qword_1ED7DC288, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1C5DF4FC0(&qword_1ED7DC280, &qword_1ED7DC288, v0);
  return sub_1C60173B0();
}

void sub_1C5DEDBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_29_14();
  a29 = v31;
  a30 = v32;
  OUTLINED_FUNCTION_27(v30 + 40, &a11);
  v33 = *(v30 + 40);
  if ((v33 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1C6017400();
    OUTLINED_FUNCTION_107();
    type metadata accessor for UserEventCompletionMonitor();
    OUTLINED_FUNCTION_0_72();
    sub_1C5DF5240(v34, v35, &unk_1C6043B28);
    sub_1C6016D90();
    v37 = a14;
    v36 = a15;
    v38 = a16;
    v39 = a17;
    v40 = a18;
  }

  else
  {
    OUTLINED_FUNCTION_20_25();
    v36 = v33 + 56;
    v38 = ~v41;
    OUTLINED_FUNCTION_12_27();
    v40 = v42 & v43;
    swift_bridgeObjectRetain_n();
    v39 = 0;
    v37 = v33;
  }

  if (v37 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v44 = v39;
  v45 = v39;
  if (v40)
  {
LABEL_9:
    OUTLINED_FUNCTION_9_2();
    v48 = v47 & v46;
    v50 = *(*(v37 + 48) + ((v45 << 9) | (8 * v49)));

    if (v50)
    {
      while (!sub_1C5DEF878(v51))
      {

        v39 = v45;
        v40 = v48;
        if ((v37 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_11:
        if (sub_1C6017470())
        {
          type metadata accessor for UserEventCompletionMonitor();
          v51 = OUTLINED_FUNCTION_42_11();
          v45 = v39;
          v48 = v40;
          if (a10)
          {
            continue;
          }
        }

        goto LABEL_16;
      }

      OUTLINED_FUNCTION_37_8();
    }

    else
    {
LABEL_16:
      OUTLINED_FUNCTION_37_8();
    }

    OUTLINED_FUNCTION_30_14();
  }

  else
  {
    while (1)
    {
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v45 >= ((v38 + 64) >> 6))
      {
        goto LABEL_16;
      }

      ++v44;
      if (*(v36 + 8 * v45))
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C5DEDDC0(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 66) >> 4) < 0xDu && ((0x1A81u >> ((*(a1 + 64) | (*(a1 + 66) << 16)) >> 20)))
  {
    return 0;
  }

  v30 = a1;
  OUTLINED_FUNCTION_27(v1 + 40, v33);
  v4 = *(v1 + 40);
  if ((v4 & 0xC000000000000001) != 0)
  {

    sub_1C6017400();
    OUTLINED_FUNCTION_107();
    type metadata accessor for UserEventCompletionMonitor();
    OUTLINED_FUNCTION_0_72();
    sub_1C5DF5240(v5, v6, &unk_1C6043B28);
    result = sub_1C6016D90();
    v4 = v34;
    v7 = v35;
    v8 = v36;
    v9 = v37;
    v10 = v38;
  }

  else
  {
    OUTLINED_FUNCTION_20_25();
    v7 = v4 + 56;
    v8 = ~v11;
    OUTLINED_FUNCTION_12_27();
    v10 = v12 & v13;

    v9 = 0;
  }

  v29[1] = v8;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v9;
    v15 = v9;
    if (!v10)
    {
      break;
    }

LABEL_12:
    OUTLINED_FUNCTION_9_2();
    v18 = v17 & v16;
    v20 = *(*(v4 + 48) + ((v15 << 9) | (8 * v19)));

    if (!v20)
    {
LABEL_20:
      sub_1C5C8C7F4(v4);
      sub_1C5CDAF64(v2 + 48, v32);
      v22 = *(v2 + 16);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v32, v32[3]);
      MEMORY[0x1EEE9AC00](v23);
      v25 = (v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25);
      v27 = *v25;

      v28 = v30;
      sub_1C5D95E74(v30, v31);
      sub_1C5DF4D00(v28, v27, v2, &off_1F45469E0, v22);
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_51_9();

      sub_1C5E1F79C();
      swift_endAccess();

      return 1;
    }

    while (1)
    {
      if (sub_1C5DEE974(v30))
      {
        OUTLINED_FUNCTION_51_9();
        sub_1C5DF3CF0(v20);
        swift_endAccess();

        sub_1C5DEEB7C(v30);
      }

      v9 = v15;
      v10 = v18;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v21 = sub_1C6017470();
      if (v21)
      {
        v32[0] = v21;
        type metadata accessor for UserEventCompletionMonitor();
        OUTLINED_FUNCTION_42_11();
        v20 = v31[0];
        v15 = v9;
        v18 = v10;
        if (v31[0])
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= ((v8 + 64) >> 6))
    {
      goto LABEL_20;
    }

    ++v14;
    if (*(v7 + 8 * v15))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C5DEE158(void *result, void *a2)
{
  v3 = *(result + 1);
  v85 = *result;
  v86 = v3;
  v4 = *(result + 3);
  v87 = *(result + 2);
  v88 = v4;
  if ((*(result + 66) >> 4) <= 0xCu && ((1 << (*(result + 66) >> 4)) & 0x1A81) != 0)
  {
    return result;
  }

  v7 = result;
  v56 = *(result + 32) | (*(result + 66) << 16);
  OUTLINED_FUNCTION_27(v2 + 40, v75);
  v48 = v2;
  v49 = a2;
  if ((*(v2 + 40) & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1C6017400();
    OUTLINED_FUNCTION_107();
    type metadata accessor for UserEventCompletionMonitor();
    OUTLINED_FUNCTION_0_72();
    sub_1C5DF5240(v8, v9, &unk_1C6043B28);
    result = sub_1C6016D90();
    v17 = v76;
    v18 = v77;
    v19 = v78;
    v20 = v79;
    v21 = v80;
  }

  else
  {
    OUTLINED_FUNCTION_20_25();
    v17 = v22;
    v18 = v22 + 56;
    v19 = ~v23;
    OUTLINED_FUNCTION_12_27();
    v21 = v24 & v25;
    result = swift_bridgeObjectRetain_n();
    v20 = 0;
  }

  v52 = v19;
  v26 = (v19 + 64) >> 6;
  v55 = v56 & 0xFEFEFEFE;
  v54 = v17;
  if (v17 < 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v27 = v20;
  v28 = v20;
  if (!v21)
  {
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        return result;
      }

      if (v28 >= v26)
      {
        break;
      }

      ++v27;
      if (*(v18 + 8 * v28))
      {
        goto LABEL_14;
      }
    }

LABEL_27:
    OUTLINED_FUNCTION_50_7(v17, v10, v11, v12, v13, v14, v15, v16, v47, v48, v49, v50, v51, v52);
  }

LABEL_14:
  OUTLINED_FUNCTION_9_2();
  v31 = v30 & v29;
  v33 = *(*(v17 + 48) + ((v28 << 9) | (8 * v32)));

  if (!v33)
  {
    goto LABEL_27;
  }

  while (1)
  {
    memcpy(__dst, v33 + 2, 0x43uLL);
    v35 = v33[3];
    v70 = v33[2];
    v71 = v35;
    v36 = v33[5];
    v72 = v33[4];
    v73 = v36;
    *(__src + 5) = v85;
    *(&__src[2] + 5) = v86;
    *(&__src[4] + 5) = v87;
    v37 = __dst[32] | (LOBYTE(__dst[33]) << 16);
    *(&__src[6] + 5) = v88;
    if ((~v37 & 0xFEFEFE) == 0)
    {
      if (v55 == 16711422)
      {
        sub_1C5D936A8(__dst, v63);
        sub_1C5D95E74(v7, v63);
        OUTLINED_FUNCTION_50_7(v54, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
        OUTLINED_FUNCTION_23_16();
        v65 = BYTE2(v37);
        v64 = v37;
        sub_1C5DF47C8();
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    v38 = v33[3];
    v59 = v33[2];
    v60 = v38;
    v39 = v33[5];
    v61 = v33[4];
    v62 = v39;
    if (v55 != 16711422)
    {
      break;
    }

LABEL_22:
    sub_1C5D936A8(__dst, v63);
    sub_1C5D95E74(v7, v63);

    OUTLINED_FUNCTION_23_16();
    v64 = v37;
    v65 = BYTE2(v37);
    memcpy(v66, __src, sizeof(v66));
    v68 = BYTE2(v56);
    v67 = v56;
    result = sub_1C5DF4518();
LABEL_25:
    v20 = v28;
    v21 = v31;
    v17 = v54;
    if ((v54 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v34 = sub_1C6017470();
    if (v34)
    {
      __src[0] = v34;
      type metadata accessor for UserEventCompletionMonitor();
      OUTLINED_FUNCTION_42_11();
      v33 = v63[0];
      v28 = v20;
      v31 = v21;
      if (v63[0])
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  v50 = v21;
  v51 = v20;
  v58[0] = v85;
  v58[1] = v86;
  v58[2] = v87;
  v58[3] = v88;
  BYTE2(v58[4]) = BYTE2(v56);
  LOWORD(v58[4]) = v56;
  memcpy(v84, v58, 0x43uLL);
  v81[0] = v59;
  v81[1] = v60;
  v81[2] = v61;
  v81[3] = v62;
  v83 = BYTE2(v37);
  v82 = __dst[32];
  sub_1C5D936A8(__dst, v57);
  sub_1C5D936A8(__dst, v57);
  sub_1C5D95E74(v7, v57);
  v53 = sub_1C5D614C0(v81, v84);
  sub_1C5DF47C8();
  sub_1C5DF47C8();
  OUTLINED_FUNCTION_23_16();
  v65 = BYTE2(v37);
  v64 = v37;
  sub_1C5DF47C8();
  if ((v53 & 1) == 0)
  {

    goto LABEL_25;
  }

  sub_1C5C8C7F4(v54);
LABEL_29:

  swift_beginAccess();
  sub_1C5DF3CF0(v33);
  swift_endAccess();

  sub_1C5DEF600(v49);
}

uint64_t sub_1C5DEE624()
{
  sub_1C5D5D630(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001C60558C0;
  OUTLINED_FUNCTION_27(v0 + 40, v9);

  v3 = sub_1C5DED9EC(v2);

  v4 = MEMORY[0x1E69E6530];
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x65726F74696E6F4DLL;
  *(inited + 88) = 0xEF73746E65764564;

  v6 = sub_1C5DED650(v5);

  sub_1C5DF5024(0);
  *(inited + 120) = v7;
  *(inited + 96) = v6;
  return sub_1C6016880();
}

void sub_1C5DEE73C(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = sub_1C6017440();

    if (!v4)
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  v5 = *(v1 + 40);
  *(v1 + 40) = MEMORY[0x1E69E7CD0];
  if ((v5 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C6017400();
    OUTLINED_FUNCTION_107();
    type metadata accessor for UserEventCompletionMonitor();
    OUTLINED_FUNCTION_0_72();
    sub_1C5DF5240(v6, v7, &unk_1C6043B28);
    sub_1C6016D90();
    v9 = v25;
    v8 = v26;
    v10 = v27;
    v11 = v28;
    v12 = v29;
  }

  else
  {
    OUTLINED_FUNCTION_20_25();
    v8 = v5 + 56;
    v10 = ~v13;
    OUTLINED_FUNCTION_12_27();
    v12 = v14 & v15;

    v11 = 0;
    v9 = v5;
  }

  v16 = (v10 + 64) >> 6;
  if (v9 < 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v17 = v11;
    v18 = v11;
    if (!v12)
    {
      break;
    }

LABEL_13:
    OUTLINED_FUNCTION_9_2();
    v21 = v20 & v19;
    v23 = *(*(v9 + 48) + ((v18 << 9) | (8 * v22)));

    if (!v23)
    {
LABEL_19:
      sub_1C5C8C7F4(v9);

      return;
    }

    while (1)
    {
      sub_1C5DEF600(a1);

      v11 = v18;
      v12 = v21;
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_15:
      if (sub_1C6017470())
      {
        type metadata accessor for UserEventCompletionMonitor();
        OUTLINED_FUNCTION_42_11();
        v18 = v11;
        v21 = v12;
        if (v24)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v16)
    {
      goto LABEL_19;
    }

    ++v17;
    if (*(v8 + 8 * v18))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1C5DEE974(unsigned __int8 *__src)
{
  memcpy(v14, __src, sizeof(v14));
  memcpy(__dst, (v1 + 32), 0x43uLL);
  memcpy(v13, (v1 + 32), sizeof(v13));
  v3 = LOWORD(__dst[8]) | (BYTE2(__dst[8]) << 16);
  if ((~v3 & 0xFEFEFE) != 0)
  {
    switch(v3 >> 20)
    {
      case 1u:
        if (((__src[66] << 16) & 0xF00000) != 0x100000)
        {
          goto LABEL_22;
        }

        if (__dst[2] == *(__src + 2) && __dst[3] == *(__src + 3))
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      case 2u:
        if (((__src[66] << 16) & 0xF00000) == 0x300000)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      case 8u:
        v5 = __src[66] >> 4;
        if (v5 == 3)
        {
          goto LABEL_25;
        }

        if (v5 != 8)
        {
          goto LABEL_22;
        }

        goto LABEL_17;
      case 0xAu:
        v6 = __src[66] >> 4;
        if (v6 == 3)
        {
LABEL_25:
          sub_1C5D95E74(__src, v11);
          sub_1C5D936A8(__dst, v11);
          sub_1C5DF4818();
          v9 = 1;
          return v9 & 1;
        }

        if (v6 == 10)
        {
LABEL_17:
          if (__dst[1] != *(__src + 1) || __dst[2] != *(__src + 2))
          {
LABEL_21:
            v8 = sub_1C6017860();
            sub_1C5D95E74(__src, v11);
            sub_1C5D936A8(__dst, v11);
            sub_1C5DF4818();
            v9 = v8 ^ 1;
            return v9 & 1;
          }
        }

LABEL_22:
        sub_1C5D95E74(__src, v11);
        sub_1C5D936A8(__dst, v11);
        break;
      default:
        goto LABEL_22;
    }
  }

  else
  {
    sub_1C5D95E74(__src, v11);
  }

  sub_1C5DF4818();
  v9 = 0;
  return v9 & 1;
}

void sub_1C5DEEB7C(uint64_t *__src)
{
  v2 = v1;
  memcpy(v55, __src, sizeof(v55));
  memcpy(__dst, v1 + 2, 0x43uLL);
  memcpy(v54, v1 + 2, sizeof(v54));
  v4 = LOWORD(__dst[8]) | (BYTE2(__dst[8]) << 16);
  if ((~v4 & 0xFEFEFE) != 0)
  {
    v5 = __dst[2];
    v7 = __dst[3];
    v6 = __dst[4];
    switch(v4 >> 20)
    {
      case 1u:
        if (((*(__src + 66) << 16) & 0xF00000) != 0x100000)
        {
          goto LABEL_30;
        }

        v8 = __src[2];
        v9 = __src[3];
        if (__dst[2] == v8 && __dst[3] == v9)
        {
          goto LABEL_30;
        }

        v11 = __dst[5];
        v12 = __src[4];
        v13 = __src[5];
        if (sub_1C6017860())
        {
          goto LABEL_30;
        }

        strcpy(v46, "Replaced by ");
        v46[13] = 0;
        *&v46[14] = -5120;
        sub_1C5D95E74(__src, &v47);
        sub_1C5D936A8(__dst, &v47);

        sub_1C5C74C28(v6, v11);

        sub_1C5C74C28(v12, v13);
        MEMORY[0x1C69534E0](v8, v9);
        v14 = sub_1C5DBA4F0(v5, v7, 0, *v46, *&v46[8]);

        sub_1C5DF053C(v14, v2, __src);

        sub_1C5C74C18(v12, v13);

        sub_1C5C74C18(v6, v11);
        goto LABEL_31;
      case 2u:
        goto LABEL_20;
      case 8u:
        v15 = *(__src + 66) >> 4;
        if (v15 == 3)
        {
          goto LABEL_33;
        }

        if (v15 != 8)
        {
          goto LABEL_30;
        }

        if (__dst[1] == __src[1] && __dst[2] == __src[2])
        {
          goto LABEL_30;
        }

        v17 = __src[3];
        v18 = __src[4];
        if (sub_1C6017860())
        {
          goto LABEL_30;
        }

        *v46 = 0;
        *&v46[8] = 0xE000000000000000;
        sub_1C5D95E74(__src, &v47);
        sub_1C5D936A8(__dst, &v47);

        sub_1C5C74C28(v7, v6);
        v41 = v18;
        v42 = v17;
        sub_1C5C74C28(v17, v18);
        sub_1C6017540();
        *&v45 = 0;
        *(&v45 + 1) = 0xE000000000000000;
        memcpy(v46, v2 + 2, sizeof(v46));
        v19 = *&v46[64] | (v46[66] << 16);
        if ((~v19 & 0xFEFEFE) != 0)
        {
          goto LABEL_36;
        }

        __break(1u);
LABEL_20:
        if (((*(__src + 66) << 16) & 0xF00000) != 0x300000)
        {
          goto LABEL_30;
        }

        *v46 = 0;
        *&v46[8] = 0xE000000000000000;
        sub_1C5D95E74(__src, &v47);
        sub_1C5D936A8(__dst, &v47);
        sub_1C6017540();
        v45 = *v46;
        memcpy(v46, v2 + 2, sizeof(v46));
        v20 = *&v46[64] | (v46[66] << 16);
        if ((~v20 & 0xFEFEFE) == 0)
        {
          goto LABEL_38;
        }

        v21 = v2[3];
        v47 = v2[2];
        v48 = v21;
        v22 = v2[5];
        v49 = v2[4];
        v50 = v22;
        v51 = *&v46[64];
        v52 = BYTE2(v20);
        memcpy(v44, v2 + 2, 0x43uLL);
        sub_1C5D95E74(v44, v43);
        v23 = sub_1C5D61CD4();
        MEMORY[0x1C69534E0](v23);

        sub_1C5DF47C8();
        MEMORY[0x1C69534E0](0xD00000000000001ALL, 0x80000001C6055830);
        v24 = sub_1C5D61CD4();
        MEMORY[0x1C69534E0](v24);

        MEMORY[0x1C69534E0](0xD00000000000001BLL, 0x80000001C6055850);
        sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
        sub_1C6016940();
        v43[0] = 2;
        sub_1C6016880();
        _s3__C4CodeOMa_6();
        sub_1C5DF5240(&qword_1ED7DCDE0, _s3__C4CodeOMa_6, &unk_1C6035958);
        v25 = sub_1C6017280();

        sub_1C5DF053C(v25, v2, __src);

        goto LABEL_31;
      case 0xAu:
        v26 = *(__src + 66) >> 4;
        if (v26 == 3)
        {
LABEL_33:
          sub_1C5D95E74(__src, &v47);
          sub_1C5D936A8(__dst, &v47);
          sub_1C5DF4818();
          *&v47 = 0;
          *(&v47 + 1) = 0xE000000000000000;
          sub_1C6017540();
          v45 = v47;
          memcpy(v46, v1 + 2, sizeof(v46));
          v30 = *&v46[64] | (v46[66] << 16);
          if ((~v30 & 0xFEFEFE) != 0)
          {
            v31 = v1[3];
            v47 = v1[2];
            v48 = v31;
            v32 = v1[5];
            v49 = v1[4];
            v50 = v32;
            v51 = *&v46[64];
            v52 = BYTE2(v30);
            memcpy(v44, v1 + 2, 0x43uLL);
            sub_1C5D95E74(v44, v43);
            v33 = sub_1C5D61CD4();
            MEMORY[0x1C69534E0](v33);

            sub_1C5DF47C8();
            MEMORY[0x1C69534E0](0x2C64656C69616620, 0xE900000000000020);
            v34 = sub_1C5D61CD4();
            MEMORY[0x1C69534E0](v34);

            MEMORY[0x1C69534E0](0xD00000000000001BLL, 0x80000001C6055850);
            sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
            sub_1C6016940();
            v43[0] = 10;
            sub_1C6016880();
            _s3__C4CodeOMa_6();
            sub_1C5DF5240(&qword_1ED7DCDE0, _s3__C4CodeOMa_6, &unk_1C6035958);
            v35 = sub_1C6017280();

            sub_1C5DF053C(v35, v2, __src);

            return;
          }

          __break(1u);
LABEL_38:
          __break(1u);
        }

        else
        {
          if (v26 != 10 || (__dst[1] == __src[1] ? (v27 = __dst[2] == __src[2]) : (v27 = 0), v27 || (v28 = __src[3], v29 = __src[4], (sub_1C6017860() & 1) != 0)))
          {
LABEL_30:
            sub_1C5D95E74(__src, &v47);
            sub_1C5D936A8(__dst, &v47);
            goto LABEL_31;
          }

          *v46 = 0;
          *&v46[8] = 0xE000000000000000;
          sub_1C5D95E74(__src, &v47);
          sub_1C5D936A8(__dst, &v47);

          sub_1C5C74C28(v7, v6);
          v41 = v29;
          v42 = v28;
          sub_1C5C74C28(v28, v29);
          sub_1C6017540();
          *&v45 = 0;
          *(&v45 + 1) = 0xE000000000000000;
          memcpy(v46, v2 + 2, sizeof(v46));
          v19 = *&v46[64] | (v46[66] << 16);
          if ((~v19 & 0xFEFEFE) != 0)
          {
LABEL_36:
            v36 = v2[3];
            v47 = v2[2];
            v48 = v36;
            v37 = v2[5];
            v49 = v2[4];
            v50 = v37;
            v51 = v19;
            v52 = BYTE2(v19);
            memcpy(v44, v2 + 2, 0x43uLL);
            sub_1C5D95E74(v44, v43);
            v38 = sub_1C5D61CD4();
            MEMORY[0x1C69534E0](v38);

            sub_1C5DF47C8();
            MEMORY[0x1C69534E0](0xD00000000000001ALL, 0x80000001C6055830);
            v39 = sub_1C5D61CD4();
            MEMORY[0x1C69534E0](v39);

            MEMORY[0x1C69534E0](0xD00000000000001BLL, 0x80000001C6055850);
            sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
            sub_1C6016940();
            v43[0] = 2;
            sub_1C6016880();
            _s3__C4CodeOMa_6();
            sub_1C5DF5240(&qword_1ED7DCDE0, _s3__C4CodeOMa_6, &unk_1C6035958);
            v40 = sub_1C6017280();

            sub_1C5DF053C(v40, v2, __src);

            sub_1C5C74C18(v42, v41);

            sub_1C5C74C18(v7, v6);
            goto LABEL_31;
          }
        }

        __break(1u);
        break;
      default:
        goto LABEL_30;
    }
  }

  else
  {
    sub_1C5D95E74(__src, &v47);
LABEL_31:
    sub_1C5DF4818();
  }
}

uint64_t sub_1C5DEF600(void *a1)
{
  v2 = v1;
  sub_1C5DF09CC(&v15);
  v4 = v19 | (v20 << 16);
  if ((~v4 & 0xFEFEFE) != 0)
  {
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = BYTE2(v4);
    v11[0] = v15;
    v11[1] = v16;
    v11[2] = v17;
    v11[3] = v18;
    __swift_project_boxed_opaque_existential_0((v1 + 192), *(v1 + 216));
    BYTE2(v11[4]) = BYTE2(v4);
    LOWORD(v11[4]) = v4;
    *(&v11[4] + 8) = 0u;
    *(&v11[5] + 8) = 0u;
    *(&v11[6] + 8) = 0u;
    *(&v11[7] + 8) = 0u;
    *(&v11[8] + 1) = 0;
    LOBYTE(v11[9]) = -1;
    *(&v11[9] + 1) = a1;
    memcpy(__dst, v11, 0xA0uLL);
    sub_1C5DE8BA4(__dst);
    memcpy(v32, __dst, sizeof(v32));
    v6 = a1;
    sub_1C5D936A8(&v15, v14);
    sub_1C5DBBF0C();
    sub_1C5DF4518();
    memcpy(v13, (v1 + 104), sizeof(v13));
    *(v1 + 104) = 0u;
    *(v1 + 120) = 0u;
    *(v1 + 136) = 0u;
    *(v1 + 152) = 0u;
    *(v1 + 170) = -2;
    *(v1 + 168) = -258;
    sub_1C5DF47C8();
    memcpy(v14, (v1 + 32), 0x43uLL);
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 98) = -2;
    *(v1 + 96) = -258;
    sub_1C5DF47C8();
    sub_1C5D61B3C(&v21);
    v7 = v22;
    v8 = v23;
    v31 = v21;
    sub_1C5CC583C(&v31);
    if (v7)
    {
      sub_1C5D61B3C(v24);
      v9 = v24[0];
      v10 = v24[1];
      sub_1C5C74C18(v24[2], v24[3]);
      v7(v9, v10, a1);
      sub_1C5C74C18(v7, v8);
    }

    sub_1C5DF47C8();
    return sub_1C5DF08B8(v2);
  }

  else
  {

    return sub_1C5DF08B8(v1);
  }
}

BOOL sub_1C5DEF878(uint64_t a1)
{
  sub_1C5DF09CC(v4);
  v1 = v5 | (v6 << 16);
  if ((~v1 & 0xFEFEFE) == 0)
  {
    return 0;
  }

  v2 = (v1 & 0xF00000) == 0x100000;
  sub_1C5DF47C8();
  return v2;
}

uint64_t sub_1C5DEF8F0()
{
  sub_1C5C96DF0(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  return v0;
}

uint64_t sub_1C5DEF920()
{
  sub_1C5DEF8F0();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1C5DEFA4C(uint64_t a1, unsigned __int8 *a2)
{
  swift_beginAccess();
  sub_1C5DF3CF0(a1);
  swift_endAccess();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1C5DE2A78(a2, *(a1 + 176));
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5DEFADC(const void *a1)
{
  v2 = v1;
  v4 = sub_1C6016630();
  v50 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1C6016690();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6016620();
  v58 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v57 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v44 - v10;
  v11 = sub_1C60166B0();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v52 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v44 - v14;
  v15 = sub_1C6017030();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((v1 + 192), *(v1 + 216));
  memcpy(v66, a1, 0x43uLL);
  sub_1C5DF4F38(v66);
  memcpy(v65, v66, sizeof(v65));
  sub_1C5DBBF0C();
  sub_1C5D61B3C(&v60);
  v19 = v63;
  v64 = v60;
  sub_1C5CC583C(&v64);
  result = sub_1C5C74C18(v61, v62);
  if (v19)
  {
    v45 = sub_1C5C64D74(0, &qword_1ED7DC238, 0x1E69E9630);
    v59[0] = MEMORY[0x1E69E7CC0];
    sub_1C5DF5240(&qword_1ED7DC240, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    v51 = v2;
    v21 = v16;
    v22 = v7;
    v23 = v4;
    v24 = MEMORY[0x1E69E80B0];
    sub_1C5DF4F4C(0, &qword_1ED7DC278, MEMORY[0x1E69E80B0], MEMORY[0x1E69E62F8]);
    v25 = v24;
    v26 = v23;
    sub_1C5DF4FC0(&qword_1ED7DC270, &qword_1ED7DC278, v25);
    v27 = v51;
    sub_1C60173B0();
    sub_1C5C64D74(0, &qword_1ED7DCE50, 0x1E69E9610);
    v28 = sub_1C6016FD0();
    v29 = sub_1C6017040();

    (*(v21 + 8))(v18, v15);
    *(v27 + 184) = v29;
    result = swift_unknownObjectRelease();
    if (*(v27 + 184))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v31 = v52;
      sub_1C60166A0();
      v32 = v53;
      sub_1C60166E0();
      v45 = v26;
      v33 = v55;
      v34 = *(v54 + 8);
      v34(v31, v55);
      v35 = v56;
      sub_1C5DEDA0C(v56);
      v36 = v57;
      sub_1C5DEDA78(v57);
      MEMORY[0x1C6953BE0](v32, v35, v36, ObjectType);
      swift_unknownObjectRelease();
      v37 = *(v58 + 8);
      v37(v36, v22);
      v37(v35, v22);
      result = (v34)(v32, v33);
      v38 = v51;
      v39 = v45;
      if (*(v51 + 184))
      {
        swift_getObjectType();
        v40 = swift_allocObject();
        swift_weakInit();
        v59[4] = sub_1C5DF4FB0;
        v59[5] = v40;
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 1107296256;
        v59[2] = sub_1C5DBC798;
        v59[3] = &block_descriptor_27;
        v41 = _Block_copy(v59);
        swift_unknownObjectRetain();

        v42 = v46;
        sub_1C6016670();
        v43 = v48;
        sub_1C5DEDAEC();
        sub_1C6017050();
        _Block_release(v41);
        swift_unknownObjectRelease();
        (*(v50 + 8))(v43, v39);
        (*(v47 + 8))(v42, v49);

        if (*(v38 + 184))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1C6017070();
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

void *sub_1C5DF01E0()
{
  memcpy(__dst, (v0 + 32), 0x43uLL);
  v1 = __dst[32] | (LOBYTE(__dst[33]) << 16);
  if ((~v1 & 0xFEFEFE) != 0)
  {
    v2 = *(v0 + 48);
    v9 = *(v0 + 32);
    v10 = v2;
    v3 = *(v0 + 80);
    v11 = *(v0 + 64);
    v12 = v3;
    v13 = __dst[32];
    v14 = BYTE2(v1);
    memcpy(v8, (v0 + 32), 0x43uLL);
    sub_1C5D95E74(v8, v7);
    sub_1C6017540();
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    MEMORY[0x1C69534E0](0xD00000000000001FLL, 0x80000001C6055870);
    v4 = sub_1C5D61CD4();
    MEMORY[0x1C69534E0](v4);

    MEMORY[0x1C69534E0](0xD000000000000022, 0x80000001C6055890);
    sub_1C5C64D74(0, &qword_1ED7DCCF0, 0x1E696ABC0);
    sub_1C6016940();
    v7[0] = 2;
    sub_1C6016880();
    _s3__C4CodeOMa_6();
    sub_1C5DF5240(&qword_1ED7DCDE0, _s3__C4CodeOMa_6, &unk_1C6035958);
    v5 = sub_1C6017280();

    sub_1C5DEF600(v5);

    sub_1C5DF47C8();
  }

  if (*(v0 + 184))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C6017060();
    swift_unknownObjectRelease();
  }

  *(v0 + 184) = 0;
  swift_unknownObjectRelease();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakAssign();
  sub_1C5C96DF0(v0 + 16);
  memcpy(v7, (v0 + 32), 0x43uLL);
  sub_1C5DF47C8();
  memcpy(v8, (v0 + 104), 0x43uLL);
  sub_1C5DF47C8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 192));

  return v0;
}

uint64_t sub_1C5DF04E8()
{
  v0 = sub_1C5DF01E0();

  return MEMORY[0x1EEE6BDC0](v0, 240, 7);
}

uint64_t sub_1C5DF053C(void *a1, uint64_t a2, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v30, (a2 + 32), 0x43uLL);
  v6 = *(a2 + 48);
  v31 = *(a2 + 32);
  v32 = v6;
  v7 = *(a2 + 80);
  v33 = *(a2 + 64);
  v34 = v7;
  v8 = v30[32] | (LOBYTE(v30[33]) << 16);
  if ((~v8 & 0xFEFEFE) != 0)
  {
    v10 = *(a2 + 48);
    v25[1] = *(a2 + 32);
    v25[2] = v10;
    v11 = *(a2 + 80);
    v25[3] = *(a2 + 64);
    v25[4] = v11;
    v26 = v30[32];
    v27 = BYTE2(v8);
    __swift_project_boxed_opaque_existential_0((a2 + 192), *(a2 + 216));
    memcpy(&v17[4] + 8, __dst, 0x43uLL);
    v17[0] = v31;
    v17[1] = v32;
    v17[2] = v33;
    v17[3] = v34;
    BYTE2(v17[4]) = BYTE2(v8);
    LOWORD(v17[4]) = v8;
    LOBYTE(v17[9]) = 0;
    *(&v17[9] + 1) = a1;
    memcpy(__srca, v17, 0xA0uLL);
    sub_1C5DE8BA4(__srca);
    memcpy(v28, __srca, sizeof(v28));
    sub_1C5D936A8(v30, v20);
    sub_1C5D936A8(v30, v20);
    v12 = a1;
    sub_1C5D95E74(__src, v20);
    sub_1C5DBBF0C();
    sub_1C5DF4518();
    memcpy(v19, (a2 + 32), sizeof(v19));
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 98) = -2;
    *(a2 + 96) = -258;
    sub_1C5DF47C8();
    memcpy(v20, (a2 + 104), 0x43uLL);
    *(a2 + 104) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 152) = 0u;
    *(a2 + 170) = -2;
    *(a2 + 168) = -258;
    sub_1C5DF47C8();
    sub_1C5D61B3C(&v21);
    v13 = v22;
    v14 = v23;
    v25[0] = v21;
    sub_1C5CC583C(v25);
    if (v13)
    {
      sub_1C5D61B3C(v24);
      v15 = v24[0];
      v16 = v24[1];
      sub_1C5C74C18(v24[2], v24[3]);
      v13(v15, v16, a1);
      sub_1C5C74C18(v13, v14);
    }

    sub_1C5DF47C8();
    return sub_1C5DF07F4(a2);
  }

  else
  {

    return sub_1C5DF07F4(a2);
  }
}

uint64_t sub_1C5DF07F4(uint64_t a1)
{
  memcpy(__dst, (a1 + 32), sizeof(__dst));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 98) = -2;
  *(a1 + 96) = -258;
  sub_1C5DF47C8();
  if (*(a1 + 184))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C6017060();
    swift_unknownObjectRelease();
  }

  *(a1 + 184) = 0;
  swift_unknownObjectRelease();
  *(a1 + 24) = 0;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C5DF08B8(uint64_t a1)
{
  memcpy(v3, (a1 + 104), sizeof(v3));
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 170) = -2;
  *(a1 + 168) = -258;
  sub_1C5DF47C8();
  memcpy(__dst, (a1 + 32), sizeof(__dst));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 98) = -2;
  *(a1 + 96) = -258;
  sub_1C5DF47C8();
  if (*(a1 + 184))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C6017060();
    swift_unknownObjectRelease();
  }

  *(a1 + 184) = 0;
  swift_unknownObjectRelease();
  *(a1 + 24) = 0;
  return swift_unknownObjectWeakAssign();
}

void *sub_1C5DF09CC@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 104), 0x43uLL);
  if ((~(__dst[32] | (LOBYTE(__dst[33]) << 16)) & 0xFEFEFE) != 0)
  {
    v3 = (v1 + 104);
  }

  else
  {
    memcpy(v5, (v1 + 32), 0x43uLL);
    sub_1C5D936A8(v5, __src);
    v3 = v5;
  }

  memcpy(__src, v3, 0x43uLL);
  sub_1C5D936A8(__dst, v5);
  return memcpy(a1, __src, 0x43uLL);
}

uint64_t sub_1C5DF0A74(void *a1, const void *a2)
{
  v3 = v2;
  memcpy(__dst, a2, sizeof(__dst));
  sub_1C5DF09CC(&v17);
  v6 = v21 | (v22 << 16);
  if ((~v6 & 0xFEFEFE) != 0)
  {
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v32 = BYTE2(v6);
    __src[0] = v17;
    __src[1] = v18;
    __src[2] = v19;
    __src[3] = v20;
    __swift_project_boxed_opaque_existential_0((v2 + 192), *(v2 + 216));
    memcpy(&__src[4] + 8, __dst, 0x49uLL);
    BYTE2(__src[4]) = BYTE2(v6);
    LOWORD(__src[4]) = v6;
    *(&__src[9] + 1) = a1;
    memcpy(v15, __src, 0xA0uLL);
    sub_1C5DE8BA4(v15);
    memcpy(v34, v15, sizeof(v34));
    sub_1C5D936A8(&v17, v13);
    v8 = a1;
    sub_1C5D86964(a2, v13);
    sub_1C5DBBF0C();
    sub_1C5DF4518();
    memcpy(v16, (v2 + 32), sizeof(v16));
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 98) = -2;
    *(v2 + 96) = -258;
    sub_1C5DF47C8();
    memcpy(v13, (v2 + 104), 0x43uLL);
    *(v2 + 104) = 0u;
    *(v2 + 120) = 0u;
    *(v2 + 136) = 0u;
    *(v2 + 152) = 0u;
    *(v2 + 170) = -2;
    *(v2 + 168) = -258;
    sub_1C5DF47C8();
    sub_1C5D61B3C(&v23);
    v9 = v24;
    v10 = v25;
    v33 = v23;
    sub_1C5CC583C(&v33);
    if (v9)
    {
      sub_1C5D61B3C(v26);
      v11 = v26[0];
      v12 = v26[1];
      sub_1C5C74C18(v26[2], v26[3]);
      v9(v11, v12, a1);
      sub_1C5C74C18(v9, v10);
    }

    sub_1C5DF47C8();
    return sub_1C5DF2D40(v3);
  }

  else
  {

    return sub_1C5DF2D40(v2);
  }
}

uint64_t sub_1C5DF0CFC(const void *a1, uint64_t a2, void *a3)
{
  sub_1C5DF09CC(v11);
  v6 = v12 | (v13 << 16);
  if ((~v6 & 0xFEFEFE) == 0)
  {
    return 0;
  }

  v7 = v6 >> 20;
  if (v7 != 8 && v7 != 2)
  {
    if (v7 == 1)
    {
      if (!a2)
      {
        memcpy(__dst, a1, 0x43uLL);
        v15 = 0;
        v9 = a3;
        goto LABEL_15;
      }

      if (a2 == 1)
      {
        memcpy(__dst, a1, 0x43uLL);
        v15 = 0;
        v9 = 0;
LABEL_15:
        sub_1C5DF0A74(v9, __dst);
        sub_1C5DF47C8();
        return 1;
      }
    }

    sub_1C5DF47C8();
    return 0;
  }

  sub_1C5DF47C8();
  memcpy(__dst, a1, 0x43uLL);
  v15 = 0;
  sub_1C5DF0A74(a3, __dst);
  return 1;
}

void *sub_1C5DF0E34(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = memcpy(v109, (v1 + 32), 0x43uLL);
  v4 = LOWORD(v109[8]) | (BYTE2(v109[8]) << 16);
  if ((~v4 & 0xFEFEFE) != 0)
  {
    v44 = v1;
    v5 = v109[1];
    v6 = *(&v109[1] + 1) | ((*(&v109[1] + 5) | (HIBYTE(v109[1]) << 16)) << 32);
    v7 = __src;
    v8 = BYTE1(v109[6]);
    v9 = BYTE2(v109[6]);
    v10 = *(&v109[6] + 3) | (HIBYTE(v109[6]) << 32);
    v11 = v109[7];
    v92 = v109[0];
    v93 = v109[1];
    v94 = *(&v109[1] + 1);
    v96 = BYTE6(v6);
    v95 = *(&v109[1] + 5);
    v97 = v109[2];
    v98 = v109[3];
    v99 = v109[4];
    v100 = v109[5];
    v101 = v109[6];
    v102 = BYTE2(v109[6]);
    v103 = *(&v109[6] + 3);
    v104 = BYTE4(v10);
    v105 = v109[7];
    v106 = v109[8];
    v107 = BYTE2(v4);
    v52 = v109[2];
    v53 = v109[0];
    v69 = v109[0];
    v70 = v109[1];
    v71 = *(&v109[1] + 1);
    v73 = BYTE6(v6);
    v72 = *(&v109[1] + 5);
    v74 = v109[2];
    v45 = v109[5];
    v46 = v109[3];
    v75 = v109[3];
    v49 = v109[6];
    v51 = v109[4];
    v76 = v109[4];
    v77 = v109[5];
    v78 = v109[6];
    v79 = BYTE2(v109[6]);
    v80 = *(&v109[6] + 3);
    v81 = BYTE4(v10);
    v82 = v109[7];
    v83 = v109[8];
    v35 = HIWORD(v4);
    v84 = BYTE2(v4);
    v55 = v7;
    v54 = LOWORD(v109[8]) | (BYTE2(v109[8]) << 16);
    memcpy(v85, v7, sizeof(v85));
    v12 = v54;
    v41 = v109[1];
    v42 = BYTE2(v109[6]);
    v43 = BYTE1(v109[6]);
    v39 = v109[7];
    v40 = *(&v109[6] + 3);
    v37 = HIDWORD(v6);
    v38 = HIWORD(v6);
    v36 = HIDWORD(v10);
    if ((v54 & 0xF00000) != 0x100000)
    {
      sub_1C5D936A8(v109, v86);
      sub_1C5D936A8(v109, v86);
      sub_1C5D936A8(v109, v86);
      sub_1C5D95E74(v55, v86);
      sub_1C5DF44A8(&v69);
      *__srca = v53;
      __srca[8] = v5;
      __srca[15] = BYTE6(v6);
      *&__srca[13] = WORD2(v6);
      *&__srca[9] = v6;
      v15 = v52;
      *&__srca[16] = v52;
      *&__srca[24] = v46;
      *&__srca[32] = v51;
      *&__srca[40] = v45;
      v21 = v49;
      __srca[48] = v49;
      __srca[49] = v8;
      __srca[50] = v9;
      __srca[55] = BYTE4(v10);
      *&__srca[51] = v10;
      *&__srca[56] = v11;
      v19 = v46;
      v13 = v51;
      v16 = v6;
      v18 = v45;
      v17 = v44;
      goto LABEL_21;
    }

    v13 = v109[4];
    v14 = *(v55 + 66) >> 4;
    if (v14 == 2)
    {
      v15 = v109[2];
      v16 = *(&v109[1] + 1);
      v17 = v44;
      if ((v109[1] & 1) == 0)
      {
        sub_1C5D936A8(v109, v86);
        sub_1C5D936A8(v109, v86);
        sub_1C5D95E74(v55, v86);
        swift_unknownObjectRetain();
        v19 = v46;

        v18 = v45;
        sub_1C5C74C28(v51, v45);
        sub_1C5DF44A8(&v69);
        *__srca = v53;
        *&__srca[8] = 1;
        *&__srca[16] = v52;
        *&__srca[24] = v46;
        *&__srca[32] = v51;
        *&__srca[40] = v45;
        v20 = (v42 & 1) == 0;
        goto LABEL_15;
      }

      sub_1C5D936A8(v109, v86);
      sub_1C5D936A8(v109, v86);
      sub_1C5D936A8(v109, v86);
      sub_1C5D95E74(v55, v86);
      sub_1C5DF44A8(&v69);
      *__srca = v53;
      __srca[8] = v41;
      __srca[15] = BYTE6(v6);
      *&__srca[13] = WORD2(v6);
      *&__srca[9] = v6;
      *&__srca[16] = v52;
      v18 = v45;
      v19 = v46;
      *&__srca[24] = v46;
      *&__srca[32] = v51;
      *&__srca[40] = v45;
      v21 = v49;
      __srca[48] = v49;
      __srca[49] = v43;
      __srca[50] = v42;
    }

    else
    {
      v15 = v109[2];
      v16 = *(&v109[1] + 1);
      v17 = v44;
      if (v14 != 3)
      {
        sub_1C5D936A8(v109, v86);
        sub_1C5D936A8(v109, v86);
        sub_1C5D936A8(v109, v86);
        sub_1C5D95E74(v55, v86);
        sub_1C5DF44A8(&v69);
        *__srca = v53;
        __srca[8] = v41;
        __srca[15] = BYTE6(v6);
        *&__srca[13] = WORD2(v6);
        *&__srca[9] = v6;
        *&__srca[16] = v52;
        v18 = v45;
        v19 = v46;
        *&__srca[24] = v46;
        *&__srca[32] = v51;
        *&__srca[40] = v45;
        v21 = v49;
        __srca[48] = v49;
        __srca[49] = v43;
        __srca[50] = v42;
        __srca[55] = v36;
        *&__srca[51] = v40;
LABEL_13:
        *&__srca[56] = v39;
        goto LABEL_21;
      }

      v18 = v109[5];
      v19 = v109[3];
      if (v109[1])
      {
        sub_1C5D936A8(v109, v86);
        sub_1C5D936A8(v109, v86);
        sub_1C5D95E74(v55, v86);
        swift_unknownObjectRetain();

        sub_1C5C74C28(v51, v45);
        sub_1C5DF44A8(&v69);
        *__srca = v53;
        *&__srca[8] = 0;
        *&__srca[16] = v52;
        *&__srca[24] = v46;
        *&__srca[32] = v51;
        *&__srca[40] = v45;
        v20 = (v42 & 1) == 0;
LABEL_15:
        v22 = 0x10000;
        if (v20)
        {
          v22 = 0;
        }

        v23 = 256;
        if ((v43 & 1) == 0)
        {
          v23 = 0;
        }

        v21 = v49;
        *&__srca[48] = v23 & 0xFFFFFFFFFFFFFFFELL | v49 & 1 | v22;
        v12 = 0x100000;
LABEL_21:
        *&__srca[64] = v12;
        __srca[66] = BYTE2(v12);
        memcpy(v91, __srca, 0x43uLL);
        sub_1C5D95E74(__srca, v86);
        v24 = sub_1C5D614C0(v91, &v92);
        sub_1C5DE8B2C(__srca);
        if (v24)
        {
          sub_1C5DE8B2C(__srca);
          return sub_1C5DF47C8();
        }

        v50 = v16;
        v63 = *__srca;
        v64 = *&__srca[16];
        v65 = *&__srca[32];
        v66 = *&__srca[48];
        v25 = *&__srca[64] | (__srca[66] << 16);
        memcpy(v67, (v17 + 104), 0x43uLL);
        v59 = *__srca;
        v60 = *&__srca[16];
        *&v57[5] = *(v17 + 104);
        *&v57[21] = *(v17 + 120);
        *&v57[37] = *(v17 + 136);
        *&v57[53] = *(v17 + 152);
        v26 = v67[32] | (LOBYTE(v67[33]) << 16);
        v27 = v26 & 0xFEFEFE;
        v61 = *&__srca[32];
        v62 = *&__srca[48];
        if ((~v25 & 0xFEFEFE) != 0)
        {
          v28 = v43;
          if (v27 != 16711422)
          {
            v32 = *(v17 + 120);
            v56[0] = *(v17 + 104);
            v56[1] = v32;
            v33 = *(v17 + 152);
            v56[2] = *(v17 + 136);
            v56[3] = v33;
            BYTE2(v56[4]) = BYTE2(v26);
            LOWORD(v56[4]) = v67[32];
            v34 = *&__srca[64];
            v29 = HIWORD(v25);
            memcpy(v90, v56, 0x43uLL);
            v87[0] = *__srca;
            v87[1] = *&__srca[16];
            v87[2] = *&__srca[32];
            v87[3] = *&__srca[48];
            v89 = v29;
            v88 = *&__srca[64];
            sub_1C5D95E74(__srca, v58);
            sub_1C5D936A8(v67, v58);
            sub_1C5D95E74(__srca, v58);
            sub_1C5D936A8(v67, v58);
            v48 = sub_1C5D614C0(v87, v90);
            sub_1C5DF47C8();
            sub_1C5DE8B2C(__srca);
            sub_1C5DF47C8();
            v86[0] = v59;
            v86[1] = v60;
            v86[2] = v61;
            v86[3] = v62;
            BYTE2(v86[4]) = v29;
            LOWORD(v86[4]) = v34;
            sub_1C5DF47C8();
            if (v48)
            {
              sub_1C5DF47C8();
              return sub_1C5DE8B2C(__srca);
            }

            v47 = v34;
            v13 = v51;
            v15 = v52;
            goto LABEL_28;
          }
        }

        else
        {
          v28 = v43;
          if (v27 == 16711422)
          {
            sub_1C5D936A8(v67, v86);
            sub_1C5DF47C8();
            v86[0] = v59;
            v86[1] = v60;
            v86[2] = v61;
            v86[3] = v62;
            BYTE2(v86[4]) = BYTE2(v25);
            LOWORD(v86[4]) = v25;
            return sub_1C5DF47C8();
          }
        }

        v86[0] = *__srca;
        v86[1] = *&__srca[16];
        v86[2] = *&__srca[32];
        v86[3] = *&__srca[48];
        LOWORD(v86[4]) = *&__srca[64];
        BYTE2(v86[4]) = BYTE2(v25);
        v47 = *&__srca[64];
        v29 = HIWORD(v25);
        memcpy(&v86[4] + 3, v57, 0x45uLL);
        BYTE10(v86[8]) = BYTE2(v26);
        WORD4(v86[8]) = v67[32];
        sub_1C5D95E74(__srca, v56);
        sub_1C5D936A8(v67, v56);
        sub_1C5DF4518();
LABEL_28:
        __swift_project_boxed_opaque_existential_0((v17 + 192), *(v17 + 216));
        memcpy(&v56[9], __dst, 0x43uLL);
        *&v56[0] = v53;
        BYTE8(v56[0]) = v41;
        HIBYTE(v56[0]) = v38;
        *(v56 + 13) = v37;
        *(v56 + 9) = v50;
        *&v56[1] = v15;
        *(&v56[1] + 1) = v19;
        *&v56[2] = v13;
        *(&v56[2] + 1) = v18;
        LOBYTE(v56[3]) = v21;
        BYTE1(v56[3]) = v28;
        BYTE2(v56[3]) = v42;
        BYTE7(v56[3]) = v36;
        *(&v56[3] + 3) = v40;
        *(&v56[3] + 1) = v39;
        BYTE2(v56[4]) = v35;
        LOWORD(v56[4]) = v54;
        *(&v56[4] + 1) = v53;
        LOBYTE(v56[5]) = v41;
        BYTE7(v56[5]) = v38;
        *(&v56[5] + 5) = v37;
        *(&v56[5] + 1) = v50;
        *(&v56[5] + 1) = v15;
        *&v56[6] = v19;
        *(&v56[6] + 1) = v13;
        *&v56[7] = v18;
        BYTE8(v56[7]) = v21;
        BYTE9(v56[7]) = v28;
        BYTE10(v56[7]) = v42;
        HIBYTE(v56[7]) = v36;
        *(&v56[7] + 11) = v40;
        *&v56[8] = v39;
        BYTE10(v56[8]) = v35;
        WORD4(v56[8]) = v54;
        BYTE8(v56[13]) = 0;
        memcpy(v57, v56, 0xD9uLL);
        sub_1C5DF43D0(v57);
        memcpy(v86, v57, 0xD9uLL);
        sub_1C5D936A8(v109, v58);
        sub_1C5D936A8(v109, v58);
        sub_1C5D95E74(v55, v58);
        sub_1C5DBBF0C();
        sub_1C5DF47C8();
        sub_1C5DF4518();
        memcpy(v58, (v17 + 104), 0x43uLL);
        v30 = v64;
        *(v17 + 104) = v63;
        *(v17 + 120) = v30;
        v31 = v66;
        *(v17 + 136) = v65;
        *(v17 + 152) = v31;
        *(v17 + 170) = v29;
        *(v17 + 168) = v47;
        return sub_1C5DF47C8();
      }

      sub_1C5D936A8(v109, v86);
      sub_1C5D936A8(v109, v86);
      sub_1C5D936A8(v109, v86);
      sub_1C5D95E74(v55, v86);
      sub_1C5DF44A8(&v69);
      *__srca = v53;
      __srca[8] = v41;
      __srca[15] = v38;
      *&__srca[13] = v37;
      *&__srca[9] = v16;
      *&__srca[16] = v52;
      *&__srca[24] = v46;
      *&__srca[32] = v51;
      *&__srca[40] = v45;
      v21 = v49;
      __srca[48] = v49;
      __srca[49] = v43;
      __srca[50] = v42;
    }

    __srca[55] = v36;
    *&__srca[51] = v40;
    v12 = v54;
    goto LABEL_13;
  }

  return result;
}