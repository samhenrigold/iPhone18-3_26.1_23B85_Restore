uint64_t sub_1E3C3D9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *(v4 + 16);
  type metadata accessor for ViewLayout();
  v19 = v9;
  v10 = __swift_allocate_boxed_opaque_existential_1(&v17);
  (*(*(v9 - 8) + 16))(v10, a1, v9);
  sub_1E3C36CE4(&v17);
  v12 = v11;
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1(&v17);
  v17 = a2;
  v18 = a3;
  MEMORY[0x1E69109E0](v12, v14);

  v16 = v18;
  *a4 = v17;
  a4[1] = v16;
  return result;
}

unint64_t sub_1E3C3DA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE28A3C0;
  if (!qword_1EE28A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A3C0);
  }

  return result;
}

unint64_t sub_1E3C3DAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE280F80;
  if (!qword_1EE280F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE280F80);
  }

  return result;
}

uint64_t sub_1E3C3DB2C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

_OWORD *sub_1E3C3DB88@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = *(*(v3 + 48) + v10);
    sub_1E328438C(*(v3 + 56) + 32 * v10, v15);
    LOBYTE(v17) = v11;
    result = sub_1E329504C(v15, (&v17 + 8));
    v13 = v19;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v13)
    {
      v14 = v1[5];
      v15[0] = v17;
      v15[1] = v18;
      v16 = v13;
      v14(v15);
      return sub_1E325F6F0(v15, &qword_1ECF357A8, &qword_1E42C5458);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v13 = 0;
        v9 = 0;
        v19 = 0;
        v17 = 0u;
        v18 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E3C3DCC0(uint64_t *a1)
{
  type metadata accessor for RelationalLayout();

  sub_1E4177084(v1);
  OUTLINED_FUNCTION_9_2();
  v3 = *(v2 + 1424);

  return v3();
}

uint64_t sub_1E3C3DD48(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (result != 1)
  {
    (a3)();

    return a3(a2);
  }

  return result;
}

unint64_t sub_1E3C3DDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE23C238;
  if (!qword_1EE23C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23C238);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_53_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_1E3C38448(&a65, &STACK[0x210]);
}

uint64_t OUTLINED_FUNCTION_57_19(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void x5_0, void x6_0, void a8, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_86_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_88_11()
{

  JUMPOUT(0x1E69109E0);
}

double OUTLINED_FUNCTION_106_12()
{

  return result;
}

double OUTLINED_FUNCTION_107_6()
{

  return result;
}

double OUTLINED_FUNCTION_108_8()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_109_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_1E328438C(&a21, &a65);
}

double OUTLINED_FUNCTION_116_5()
{

  return result;
}

double OUTLINED_FUNCTION_117_7()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_121_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_122_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_1E325F6F0(&a65, v65, v66);
}

_OWORD *OUTLINED_FUNCTION_125_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20, __int128 a21)
{

  return sub_1E329504C(&a18, &a21);
}

__n128 OUTLINED_FUNCTION_127_7()
{
  result = *(v0 - 160);
  v2 = *(v0 - 144);
  *(v0 - 128) = result;
  *(v0 - 112) = v2;
  return result;
}

double OUTLINED_FUNCTION_130_8()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t *OUTLINED_FUNCTION_152_6()
{
  *(v1 - 136) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 160));
}

uint64_t OUTLINED_FUNCTION_153_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

__n128 sub_1E3C3E138@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 152);
  v4 = *(v1 + 120);
  *a1 = *(v1 + 104);
  *(a1 + 16) = v4;
  result = *(v1 + 136);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

__n128 sub_1E3C3E190(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v3;
  result = *(a1 + 32);
  *(v1 + 136) = result;
  *(v1 + 152) = *(a1 + 48);
  return result;
}

uint64_t sub_1E3C3E1E8()
{
  (*(*v0 + 1696))(v2);
  if (LOWORD(v2[0]) == 263 || (v3 & 1) != 0)
  {
    return sub_1E3C2E8EC();
  }

  else
  {
    return v2[3];
  }
}

uint64_t (*sub_1E3C3E264(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = sub_1E3C3E1E8();
  *(a1 + 8) = v3 & 1;
  return sub_1E3C3E2B4;
}

uint64_t sub_1E3C3E2D8()
{
  (*(*v0 + 1696))(v2);
  if (LOWORD(v2[0]) == 263 || (v3 & 1) != 0)
  {
    return sub_1E3C2E620();
  }

  else
  {
    return v2[1];
  }
}

uint64_t (*sub_1E3C3E354(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = sub_1E3C3E2D8();
  *(a1 + 8) = v3 & 1;
  return sub_1E3C3E3A4;
}

uint64_t sub_1E3C3E3C8()
{
  v0 = swift_allocObject();
  *(v0 + 104) = 263;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 137) = 0u;
  return sub_1E3C2F9A0();
}

uint64_t sub_1E3C3E410()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 153, 7);
}

void sub_1E3C3E464()
{
  v0 = objc_opt_self();
  v1 = sub_1E4205ED4();
  v2 = [v0 imageForResource:v1 accessibilityDescription:0];

  qword_1EE2AB260 = v2;
}

uint64_t *sub_1E3C3E4E0()
{
  if (qword_1EE2A84E0 != -1)
  {
    OUTLINED_FUNCTION_0_188(&qword_1EE2A84E0);
  }

  return &qword_1EE2AB260;
}

uint64_t sub_1E3C3E520(uint64_t a1, double a2, double a3)
{
  type metadata accessor for ImageViewModel();
  result = swift_dynamicCastClass();
  if (result)
  {
    OUTLINED_FUNCTION_30();
    v7 = *(v6 + 1000);

    v8 = v7(0, a2, a3);
    v10 = v8;
    if (v9 != 1)
    {
      if (v9 != 255)
      {
        sub_1E379098C(v8, v9);
      }

      return 0;
    }

    if ([objc_opt_self() makeImageProxyWithDescriptor_])
    {
      sub_1E4207264();

      sub_1E379098C(v10, 1u);
      swift_unknownObjectRelease();
    }

    else
    {

      sub_1E379098C(v10, 1u);
      v13 = 0u;
      v14 = 0u;
    }

    v12[0] = v13;
    v12[1] = v14;
    if (!*(&v14 + 1))
    {
      sub_1E329505C(v12);
      return 0;
    }

    sub_1E3280A90(0, &qword_1EE23B340, 0x1E69DF730);
    if (swift_dynamicCast())
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double sub_1E3C3E6B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  if ((a2 & 1) == 0)
  {
    if ((sub_1E373F6E0(*(a1 + 98), 39, a3, a4, a5, a6) & 1) == 0)
    {
      return a7;
    }

    type metadata accessor for ImageViewModel();
    if (!swift_dynamicCastClass())
    {
      return a7;
    }

    OUTLINED_FUNCTION_30();
    v13 = *(v12 + 392);

    if (!v13(v14))
    {
LABEL_19:

      return a7;
    }

    type metadata accessor for ImageLayout();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_30();
      *&v16 = COERCE_DOUBLE((*(v15 + 432))());
      if ((v17 & 1) == 0)
      {
        v21 = *&v16;
LABEL_16:
        if (v21 > 0.0)
        {
          VUIMakeLargestSizeWithGivenSizeAndAspectRatio();
          a7 = v22;
        }

        goto LABEL_18;
      }

      v18 = COERCE_DOUBLE((*(*v8 + 1696))(v16));
      if ((v20 & 1) == 0)
      {
        v21 = v18 / v19;
        goto LABEL_16;
      }
    }

LABEL_18:

    goto LABEL_19;
  }

  sub_1E3280A90(0, &qword_1EE23AD50, 0x1E69DCEB0);
  v10 = sub_1E41DA724();
  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (v10 <= a7)
  {
    return v10;
  }

  return a7;
}

uint64_t sub_1E3C3E874()
{
  OUTLINED_FUNCTION_134();
  v2 = *(v1 + 80);
  v3 = OBJC_IVAR____TtC8VideosUI25UNCenterLocalNotification_service;
  OUTLINED_FUNCTION_13_107();
  sub_1E327F454(v2 + v3, v1 + 16);
  OUTLINED_FUNCTION_13_27();
  OUTLINED_FUNCTION_16_81();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v1 + 88) = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_56_1(v5);

  return v7(v3, v0);
}

uint64_t sub_1E3C3E990()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 96) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E3C3EA84, 0, 0);
}

uint64_t sub_1E3C3EA84()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = [v1 authorizationStatus];

  OUTLINED_FUNCTION_13_7();

  return v3(v2);
}

uint64_t sub_1E3C3EAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[50] = a7;
  v8[51] = v7;
  v8[48] = a5;
  v8[49] = a6;
  v8[46] = a3;
  v8[47] = a4;
  v8[44] = a1;
  v8[45] = a2;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C3EB1C()
{
  v1 = *(v0 + 400);
  v2 = [objc_allocWithZone(MEMORY[0x1E6983220]) init];
  *(v0 + 416) = v2;
  v3 = sub_1E4205ED4();
  [v2 setTitle_];

  v4 = sub_1E4205ED4();
  [v2 setBody_];

  if (v1)
  {
    v5 = *(v0 + 400);
    type metadata accessor for LocalNotificationServiceOptionsKey();
    v6 = static LocalNotificationServiceOptionsKey.bannerOnly.getter();
    sub_1E3277E60(v6, v7, v5, (v0 + 192));

    if (*(v0 + 216))
    {
      sub_1E329504C((v0 + 192), (v0 + 160));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      *(v0 + 328) = static LocalNotificationServiceOptionsKey.bannerOnly.getter();
      *(v0 + 336) = v9;
      sub_1E4207414();
      sub_1E328438C(v0 + 160, inited + 72);
      sub_1E4205CB4();
      v10 = sub_1E4205C44();

      [v2 setUserInfo_];

      __swift_destroy_boxed_opaque_existential_1((v0 + 160));
      goto LABEL_7;
    }
  }

  else
  {
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
  }

  sub_1E325F748(v0 + 192, &unk_1ECF296E0, &unk_1E4298030);
  if (!v1)
  {
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    goto LABEL_11;
  }

  v5 = *(v0 + 400);
LABEL_7:
  type metadata accessor for LocalNotificationServiceOptionsKey();
  v11 = static LocalNotificationServiceOptionsKey.interruptionLevel.getter();
  sub_1E3277E60(v11, v12, v5, (v0 + 224));

  if (!*(v0 + 248))
  {
LABEL_11:
    sub_1E325F748(v0 + 224, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v13 = *(v0 + 344);
    goto LABEL_13;
  }

LABEL_12:
  v13 = 1;
LABEL_13:
  [v2 setInterruptionLevel_];
  v14 = [objc_opt_self() defaultSound];
  if (!v1)
  {
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    goto LABEL_23;
  }

  v15 = *(v0 + 400);
  type metadata accessor for LocalNotificationServiceOptionsKey();
  v16 = static LocalNotificationServiceOptionsKey.sound.getter();
  sub_1E3277E60(v16, v17, v15, (v0 + 256));

  if (!*(v0 + 280))
  {
LABEL_23:
    sub_1E325F748(v0 + 256, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v19 = *(v0 + 312);
  v18 = *(v0 + 320);
  type metadata accessor for LocalNotificationServiceSound();
  if (v19 == static LocalNotificationServiceSound.silent.getter() && v18 == v20)
  {
  }

  else
  {
    v22 = sub_1E42079A4();

    if ((v22 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v14 = 0;
LABEL_24:
  v23 = *(v0 + 408);
  v25 = *(v0 + 352);
  v24 = *(v0 + 360);
  [v2 setSound_];

  sub_1E3280A90(0, &qword_1ECF35858, 0x1E6983298);

  v26 = sub_1E3C3F200(v25, v24, v2, 0);
  *(v0 + 424) = v26;
  v27 = OBJC_IVAR____TtC8VideosUI25UNCenterLocalNotification_service;
  swift_beginAccess();
  sub_1E327F454(v23 + v27, v0 + 120);
  v28 = *(v0 + 144);
  v29 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1((v0 + 120), v28);
  OUTLINED_FUNCTION_16_81();
  v33 = (v30 + *v30);
  v31 = swift_task_alloc();
  *(v0 + 432) = v31;
  *v31 = v0;
  OUTLINED_FUNCTION_56_1(v31);

  return v33(v26, v28, v29);
}

uint64_t sub_1E3C3F030()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 440) = v0;

  if (v0)
  {
    v7 = sub_1E3C3F198;
  }

  else
  {
    v7 = sub_1E3C3F130;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E3C3F130()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 424);

  __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3C3F198()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 424);

  __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  OUTLINED_FUNCTION_54();

  return v2();
}

id sub_1E3C3F200(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1E4205ED4();

  v7 = [swift_getObjCClassFromMetadata() requestWithIdentifier:v6 content:a3 trigger:a4];

  return v7;
}

uint64_t sub_1E3C3F284(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C3F298()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC8VideosUI25UNCenterLocalNotification_service;
  OUTLINED_FUNCTION_13_107();
  sub_1E327F454(v1 + v2, v0 + 16);
  OUTLINED_FUNCTION_13_27();
  OUTLINED_FUNCTION_16_81();
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_10_97(v3);

  return v5(v4);
}

uint64_t sub_1E3C3F3A8()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 104) = v0;

  if (v0)
  {
    v9 = sub_1E3C3F520;
  }

  else
  {
    *(v5 + 112) = v3 & 1;
    v9 = sub_1E3C3F4C0;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E3C3F4C0()
{
  OUTLINED_FUNCTION_24();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_13_7();
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_1E3C3F520()
{
  OUTLINED_FUNCTION_24();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_13_7();

  return v1(0);
}

uint64_t sub_1E3C3F580(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C3F594()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC8VideosUI25UNCenterLocalNotification_service;
  OUTLINED_FUNCTION_13_107();
  sub_1E327F454(v1 + v2, v0 + 16);
  OUTLINED_FUNCTION_13_27();
  OUTLINED_FUNCTION_16_81();
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_10_97(v3);

  return v5(v4);
}

uint64_t sub_1E3C3F6A4()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    v7 = sub_1E3C3F7A4;
  }

  else
  {
    v7 = sub_1E3B632A8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E3C3F7A4()
{
  OUTLINED_FUNCTION_24();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3C3F800@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() currentNotificationCenter];
  result = sub_1E3280A90(0, &unk_1ECF35860, 0x1E6983308);
  a1[3] = result;
  a1[4] = &off_1F5D9D448;
  *a1 = v2;
  return result;
}

void *sub_1E3C3F8A8(void *a1)
{
  sub_1E327F454(a1, v1 + OBJC_IVAR____TtC8VideosUI25UNCenterLocalNotification_service);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for UNCenterLocalNotification();
  v3 = objc_msgSendSuper2(&v10, sel_init);
  v4 = v3 + OBJC_IVAR____TtC8VideosUI25UNCenterLocalNotification_service;
  v5 = v3;
  swift_beginAccess();
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v6);
  v8 = *(v7 + 16);
  swift_unknownObjectRetain();
  v8(v3, v6, v7);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

id sub_1E3C3F9F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UNCenterLocalNotification();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3C3FA4C()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  v5 = (*(v0 + 112) + **(v0 + 112));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_56_1(v2);

  return v5();
}

uint64_t sub_1E3C3FB5C()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  OUTLINED_FUNCTION_39();
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_13_7();

  return v5(v2);
}

uint64_t sub_1E3C3FC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  v19 = (*(v14 + 120) + **(v14 + 120));
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_30_0(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_56_1(v16);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1E3C3FDB4()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  v7 = (*(v2 + 128) + **(v2 + 128));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_56_1(v4);

  return v7(v1);
}

uint64_t sub_1E3C3FED4()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  OUTLINED_FUNCTION_13_7();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_1E3C3FFC8()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  v7 = (*(v2 + 136) + **(v2 + 136));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_56_1(v4);

  return v7(v1);
}

uint64_t sub_1E3C400E8()
{
  OUTLINED_FUNCTION_24();
  v0[13] = v1;
  v2 = sub_1E41FFCB4();
  v0[14] = v2;
  v0[15] = *(v2 - 8);
  v0[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E3C401A4, 0, 0);
}

uint64_t sub_1E3C401A4()
{
  OUTLINED_FUNCTION_134();
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = sub_1E324FBDC();
  (*(v2 + 16))(v1, v5, v3);
  v6 = v4;
  v7 = sub_1E41FFC94();
  v8 = sub_1E42067E4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&dword_1E323F000, v7, v8, "UNCenterLocalNotification:: willPresentNotification: %@", v10, 0xCu);
    sub_1E325F748(v11, &unk_1ECF28E30, &qword_1E429E820);
    MEMORY[0x1E69143B0](v11, -1, -1);
    MEMORY[0x1E69143B0](v10, -1, -1);
  }

  v14 = *(v0 + 120);
  v13 = *(v0 + 128);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);

  (*(v14 + 8))(v13, v15);
  v17 = [v16 request];
  v18 = [v17 content];

  v19 = [v18 userInfo];
  v20 = sub_1E4205C64();

  type metadata accessor for LocalNotificationServiceOptionsKey();
  *(v0 + 88) = static LocalNotificationServiceOptionsKey.bannerOnly.getter();
  *(v0 + 96) = v21;
  sub_1E4207414();
  sub_1E375D7E8(v20, (v0 + 56), v0 + 16);

  sub_1E375D84C(v0 + 16);
  if (!*(v0 + 80))
  {
    sub_1E325F748(v0 + 56, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v22 = 27;
    goto LABEL_10;
  }

  if (*(v0 + 136))
  {
    v22 = 16;
  }

  else
  {
    v22 = 27;
  }

LABEL_10:

  OUTLINED_FUNCTION_13_7();

  return v23(v22);
}

uint64_t sub_1E3C404E8(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1E3C405B4;

  return sub_1E3C400E8();
}

uint64_t sub_1E3C405B4()
{
  OUTLINED_FUNCTION_134();
  v2 = v1;
  OUTLINED_FUNCTION_39();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  OUTLINED_FUNCTION_7();
  *v9 = v8;

  v4[2](v4, v2);
  _Block_release(v4);
  OUTLINED_FUNCTION_54();

  return v10();
}

uint64_t sub_1E3C40720@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E383E9D8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1E3C40750@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E383EA08(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1E3C40780@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E383EA38(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1E3C407B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E383EB88(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1E3C407E0()
{
  OUTLINED_FUNCTION_134();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_130(v1);

  return v4(v3);
}

void type metadata accessor for UNNotificationPresentationOptions()
{
  if (!qword_1ECF358D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF358D0);
    }
  }
}

uint64_t sub_1E3C4099C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UNNotificationPresentationOptions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1E3C409E0()
{
  OUTLINED_FUNCTION_0_189();
  if (sub_1E3C417E4(v0, v1))
  {

    return sub_1E3C40A30();
  }

  else
  {

    return sub_1E3C41AA8();
  }
}

id sub_1E3C40A30()
{
  v1 = OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___platformExtensibleContainerView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___platformExtensibleContainerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___platformExtensibleContainerView];
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD380]) init];
    [v4 setDisableAutomaticLayout_];
    [v4 setDisableBlurEffects_];
    v5 = v4;
    [v5 setClipsToBounds_];
    [v0 vui:v5 addSubview:0 oldView:?];

    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1E3C40B20()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v75 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  v14 = OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_disableBackgroundExtension;
  OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_disableBackgroundExtension], v78);
  if ((v1[v14] & 1) == 0)
  {
    v28 = OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_leadingExtendPercentage;
    if (*&v1[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_leadingExtendPercentage] > 0.0 || (OUTLINED_FUNCTION_7_142(), !(v30 ^ v31 | v29)))
    {
      OUTLINED_FUNCTION_0_189();
      if (sub_1E3C417E4(v32, v33))
      {
        v34 = OUTLINED_FUNCTION_7_142();
        if (v30 ^ v31 | v29)
        {
          goto LABEL_36;
        }

        if ([v1 vuiIsRTL])
        {
          v35 = 2;
        }

        else
        {
          v35 = 8;
        }
      }

      else
      {
        if (*&v1[v28] <= 0.0)
        {
          v35 = 0;
        }

        else if ([v1 vuiIsRTL])
        {
          v35 = 8;
        }

        else
        {
          v35 = 2;
        }

        v36 = OUTLINED_FUNCTION_7_142();
        if (!(v30 ^ v31 | v29))
        {
          v37 = [v1 vuiIsRTL];
          v38 = 8;
          if (v37)
          {
            v38 = 2;
          }

          v35 |= v38;
        }
      }

      if ((v35 & 0xAAAAAAAAAAAAAAAALL) != 0)
      {
        if (*&v1[v28] > *&v1[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_trailingExtendPercentage])
        {
          v39 = *&v1[v28];
        }

        else
        {
          v39 = *&v1[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_trailingExtendPercentage];
        }

        sub_1E324FBDC();
        OUTLINED_FUNCTION_0_11();
        v40(v13);
        v41 = v1;
        v42 = sub_1E41FFC94();
        v43 = sub_1E4206814();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v76 = v35;
          v45 = v44;
          v75 = OUTLINED_FUNCTION_100();
          v77[0] = v75;
          *v45 = 136315394;
          v46 = sub_1E3C41690();
          v48 = sub_1E3270FC8(v46, v47, v77);

          *(v45 + 4) = v48;
          *(v45 + 12) = 2048;
          *(v45 + 14) = v39;
          _os_log_impl(&dword_1E323F000, v42, v43, "%s updateExtensionConfiguration: mirrorPercentage=%f", v45, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v75);
          OUTLINED_FUNCTION_6_0();
          v35 = v76;
          OUTLINED_FUNCTION_6_0();
        }

        (*(v4 + 8))(v13, v2);
        v49 = sub_1E3C409E0();
        v50 = [v49 vuiLayer];

        if (v50)
        {
          v51 = [objc_opt_self() vuiMeshTransformWithEdges:v35 mirrorPercentage:v39];
          [v50 setMeshTransform_];
        }

        v52 = sub_1E3C409E0();
        v53 = [v52 vuiLayer];

        if (v53)
        {
          [v53 setShouldRasterize_];
        }

        v54 = sub_1E3C409E0();
        v55 = [v54 vuiLayer];

        if (v55)
        {
          v56 = [objc_opt_self() vui_main];
          if (v56)
          {
            v57 = v56;
            [v56 vui_scale];
            v59 = v58;
          }

          else
          {
            v59 = 1.0;
          }

          [v55 setRasterizationScale_];
          v73 = 0;
          goto LABEL_46;
        }

        v73 = 0;
        goto LABEL_47;
      }

LABEL_36:
      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v60(v10);
      v61 = v1;
      v62 = sub_1E41FFC94();
      v63 = sub_1E4206814();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v76 = v61;
        v65 = v64;
        v66 = OUTLINED_FUNCTION_100();
        v77[0] = v66;
        *v65 = 136315138;
        v67 = sub_1E3C41690();
        v69 = sub_1E3270FC8(v67, v68, v77);

        *(v65 + 4) = v69;
        _os_log_impl(&dword_1E323F000, v62, v63, "%s updateExtensionConfiguration: no edge needed, ignore", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v66);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v4 + 8))(v10, v2);
      v70 = sub_1E3C409E0();
      v71 = [v70 vuiLayer];

      if (v71)
      {
        [v71 setMeshTransform_];
      }

      v72 = sub_1E3C409E0();
      v55 = [v72 vuiLayer];

      if (v55)
      {
        [v55 setShouldRasterize_];
        v73 = 1;
LABEL_46:

        goto LABEL_47;
      }

      v73 = 1;
LABEL_47:
      v74 = sub_1E3C409E0();
      [v74 setClipsToBounds_];

      [v1 setClipsToBounds_];
      sub_1E3C41BC4();
      return;
    }
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v15(v7);
  v16 = v1;
  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = OUTLINED_FUNCTION_100();
    v77[0] = v20;
    *v19 = 136315138;
    v21 = sub_1E3C41690();
    v23 = sub_1E3270FC8(v21, v22, v77);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1E323F000, v17, v18, "%s updateExtensionConfiguration: disabled, reset config", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v7, v2);
  v24 = OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_contentView;
  OUTLINED_FUNCTION_5_0(&v16[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_contentView], v77);
  v25 = *&v16[v24];
  if (v25)
  {
    v26 = [v25 vuiLayer];
    if (v26)
    {
      v27 = v26;
      [v26 setMeshTransform_];
    }
  }
}

void sub_1E3C41260(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_contentView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;
  if (sub_1E39DFFC8())
  {
    v6 = sub_1E3C409E0();
    v7 = OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_contentView;
    OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_contentView], v13);
    [v6 vui:*&v1[v7] addSubview:v4 oldView:?];

    OUTLINED_FUNCTION_0_189();
    if (sub_1E3C417E4(v8, v9))
    {
      v10 = sub_1E3C40A30();
      v11 = *&v1[v7];
      [v10 setContentView_];
    }

    sub_1E3C40B20();
  }

  else
  {
    v12 = OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_contentView;
    OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_contentView], v13);
    [v1 vui:*&v1[v12] addSubview:v4 oldView:?];
  }
}

uint64_t sub_1E3C4137C(_BYTE *a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33_0();
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_1E4205ED4();
  v9 = [v7 objectForKey_];

  if (v9)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32[0] = v30;
  v32[1] = v31;
  if (*(&v31 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && (v29 & 1) == 0)
    {
      v10 = 0;
      v11 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    sub_1E329505C(v32);
  }

  v12 = OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_disableBackgroundExtension;
  OUTLINED_FUNCTION_5_0(&a1[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_disableBackgroundExtension], v32);
  v10 = a1[v12] ^ 1;
  v11 = 1;
LABEL_10:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v13(v1);
  v14 = a1;
  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = v3;
    v29 = OUTLINED_FUNCTION_100();
    v18 = v29;
    *v17 = 136315906;
    v19 = sub_1E3C41690();
    v27 = v1;
    v21 = v5;
    v22 = v11;
    v23 = v10;
    v24 = sub_1E3270FC8(v19, v20, &v29);

    *(v17 + 4) = v24;
    v10 = v23;
    *(v17 + 12) = 1024;
    *(v17 + 14) = v22;
    *(v17 + 18) = 1024;
    v25 = OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_disableBackgroundExtension;
    OUTLINED_FUNCTION_5_0(&v14[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_disableBackgroundExtension], &v30);
    LODWORD(v25) = v14[v25];

    *(v17 + 20) = v25;
    *(v17 + 24) = 1024;
    *(v17 + 26) = v10 & 1;
    _os_log_impl(&dword_1E323F000, v15, v16, "%s useFrameworkExtContainer: default:%{BOOL}d, disableBgExt:%{BOOL}d, result:%{BOOL}d", v17, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v21 + 8))(v27, v28);
  }

  else
  {

    (*(v5 + 8))(v1, v3);
  }

  return v10 & 1;
}

unint64_t sub_1E3C41690()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_1E42074B4();

    v3 = sub_1E41E1364(v0);
    MEMORY[0x1E69109E0](v3);

    v2 = 0xD000000000000023;
    *v1 = 0xD000000000000023;
    v1[1] = 0x80000001E42786B0;
  }

  return v2;
}

double sub_1E3C41784()
{
  v0 = objc_opt_self();
  v1 = [v0 isMac];
  result = 0.5;
  if ((v1 & 1) == 0)
  {
    v3 = [v0 isPad];
    result = 0.0;
    if (v3)
    {
      return 0.5;
    }
  }

  return result;
}

uint64_t sub_1E3C417E4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4 == 2)
  {
    LOBYTE(v4) = a2(v2);
    *(v2 + v3) = v4 & 1;
  }

  return v4 & 1;
}

uint64_t sub_1E3C41828(void *a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33_0();
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_1E4205ED4();
  v9 = [v7 objectForKey_];

  if (v9)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (*(&v23 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v21;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1E329505C(v24);
  }

  v10 = 0;
LABEL_9:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v11(v1);
  v12 = a1;
  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = OUTLINED_FUNCTION_100();
    *&v24[0] = v16;
    *v15 = 136315394;
    v17 = sub_1E3C41690();
    v19 = sub_1E3270FC8(v17, v18, v24);

    *(v15 + 4) = v19;
    *(v15 + 12) = 1024;
    *(v15 + 14) = v10;
    _os_log_impl(&dword_1E323F000, v13, v14, "%s extensionViewDisableFrameworkBlur:%{BOOL}d", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v1, v3);
  return v10;
}

id sub_1E3C41AA8()
{
  v1 = OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___normalContainerView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___normalContainerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___normalContainerView];
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setClipsToBounds_];
    [v0 vui:v4 addSubview:0 oldView:?];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

double sub_1E3C41B48(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    v6 = OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_contentView;
    OUTLINED_FUNCTION_0_12(a1);
    v7 = *(v3 + v6);
    if (v7)
    {
      [v7 vui:1 layoutSubviews:a2 computationOnly:a3];
      return v8;
    }
  }

  else
  {
    sub_1E3C41BC4();
  }

  return a2;
}

void sub_1E3C41BC4()
{
  v1 = sub_1E39DFFC8();
  if ((v1 & 1) == 0)
  {
    v10 = OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_contentView;
    OUTLINED_FUNCTION_0_12(v1);
    v11 = *&v0[v10];
    if (!v11)
    {
      return;
    }

    v8 = v11;
    [v0 bounds];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_189();
  if (sub_1E3C417E4(v2, v3))
  {
    [v0 bounds];
    CGRectGetWidth(v12);
  }

  OUTLINED_FUNCTION_12_95();
  CGRectGetWidth(v13);
  OUTLINED_FUNCTION_12_95();
  CGRectGetHeight(v14);
  v4 = sub_1E3C409E0();
  OUTLINED_FUNCTION_12_95();
  [v0 vuiIsRTL];
  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  [v4 setFrame_];

  v5 = OUTLINED_FUNCTION_12_95();
  v6 = OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_contentView;
  OUTLINED_FUNCTION_0_12(v5);
  v7 = *&v0[v6];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1E3C409E0();
    [v9 bounds];

    [v0 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
LABEL_8:
    [v8 setFrame_];
  }
}

void sub_1E3C41DF8(double a1, double a2)
{
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33_0();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v10(v3);
  v11 = v2;
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_100();
    v15 = OUTLINED_FUNCTION_100();
    v19 = v15;
    *v14 = 136315650;
    v16 = sub_1E3C41690();
    v18 = sub_1E3270FC8(v16, v17, &v19);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a1;
    *(v14 + 22) = 2048;
    *(v14 + 24) = a2;
    _os_log_impl(&dword_1E323F000, v12, v13, "%s updateExtendingPercentage leadingPercent=%f, trailingPercent=%f", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v8 + 8))(v3, v6);
  *&v11[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_leadingExtendPercentage] = a1;
  *&v11[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_trailingExtendPercentage] = a2;
  sub_1E3C40B20();
}

id sub_1E3C41FC4()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_contentView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_disableBackgroundExtension) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___useFrameworkExtensibleContainer) = 2;
  v2 = OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_leadingExtendPercentage;
  *(v0 + v2) = sub_1E3C41784();
  *(v0 + OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_trailingExtendPercentage) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___extensionViewDisableFrameworkBlur) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___normalContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___platformExtensibleContainerView) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___logPrefix);
  *v3 = 0;
  v3[1] = 0;
  v4 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v5, v6, v4, v0, ObjectType);
}

id sub_1E3C420B8(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_contentView] = 0;
  v1[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_disableBackgroundExtension] = 0;
  v1[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___useFrameworkExtensibleContainer] = 2;
  v4 = OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_leadingExtendPercentage;
  *&v1[v4] = sub_1E3C41784();
  *&v1[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView_trailingExtendPercentage] = 0;
  v1[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___extensionViewDisableFrameworkBlur] = 2;
  *&v1[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___normalContainerView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___platformExtensibleContainerView] = 0;
  v5 = &v1[OBJC_IVAR____TtC8VideosUI32BackgroundExtensionContainerView____lazy_storage___logPrefix];
  *v5 = 0;
  v5[1] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_1E3C42238()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0, &unk_1E42A9690);
  sub_1E32752B0(&qword_1EE28A190, &qword_1ECF2D3C0, &unk_1E42A9690, MEMORY[0x1E695BF88]);
  return sub_1E42006B4();
}

uint64_t sub_1E3C422C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35910, &qword_1E42C5808);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21[-v12];
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35918, &qword_1E42C5810);
  sub_1E3C42B70();
  sub_1E4203964();
  v26 = a3;
  v27 = a4;
  OUTLINED_FUNCTION_3_120();
  v17 = sub_1E32752B0(v15, &qword_1ECF35910, &qword_1E42C5808, v16);
  sub_1E32822E0(v17, v18, v19);
  sub_1E4203414();
  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_1E3C42490@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a3;
  v40 = a4;
  v41 = a5;
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v37 = v8;
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35928, &qword_1E42C5820);
  OUTLINED_FUNCTION_0_10();
  v34 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35938, &qword_1E42C5A18);
  OUTLINED_FUNCTION_0_10();
  v35 = v16;
  v36 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  v44 = a1;
  v45 = a2;

  v20 = sub_1E3E60700();
  v21 = *v20;
  v24 = sub_1E3C42D1C(v20, v22, v23);
  v25 = v21;
  sub_1E39B95A0(v21);

  sub_1E4202474();
  v44 = &type metadata for AccountSettingsButtonView;
  v45 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E4203224();
  (*(v37 + 8))(v10, v38);
  (*(v34 + 8))(v15, v11);
  v44 = v39;
  v45 = v40;
  v42 = v11;
  v43 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  sub_1E32822E0(v27, v28, v29);
  v30 = v41;
  v31 = v35;
  sub_1E4203114();
  (*(v36 + 8))(v19, v31);
  v32 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35918, &qword_1E42C5810) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35930, &qword_1E42C5828);
  result = sub_1E4201624();
  *v32 = 0;
  return result;
}

id sub_1E3C427C8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0, &unk_1E42A9690);
  swift_allocObject();
  sub_1E4200544();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    sub_1E3741090(0xD000000000000019, 0x80000001E425ECD0, result);

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E3C428BC()
{
  result = [objc_allocWithZone(VUIAccountSettingsButton) initWithType:7 interfaceStyle:0];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3C428FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E3C42E60(a1, a2, a3);

  return sub_1E3E36D18(a1, a2, v5);
}

uint64_t sub_1E3C42948()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C42E60(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v3, v4, v5, v6);
}

uint64_t sub_1E3C42A1C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C42E0C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v3);
}

uint64_t sub_1E3C42A70()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C42E0C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v3);
}

void sub_1E3C42AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3C42E0C(a1, a2, a3);
  sub_1E4201F04();
  __break(1u);
}

uint64_t sub_1E3C42AEC()
{
  memset(v2, 0, sizeof(v2));
  v3 = 1;
  sub_1E40421AC(2, 0, v2, &v1);
  sub_1E4200524();
  return sub_1E38E5014(&v1);
}

unint64_t sub_1E3C42B70()
{
  result = qword_1EE2895B8;
  if (!qword_1EE2895B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35918, &qword_1E42C5810);
    sub_1E3C42C28();
    sub_1E32752B0(&qword_1EE288858, &qword_1ECF35930, &qword_1E42C5828, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2895B8);
  }

  return result;
}

unint64_t sub_1E3C42C28()
{
  result = qword_1EE2898F0;
  if (!qword_1EE2898F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35920, &qword_1E42C5818);
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35928, &qword_1E42C5820);
    sub_1E3C42D1C(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3806164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2898F0);
  }

  return result;
}

unint64_t sub_1E3C42D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE296880[0];
  if (!qword_1EE296880[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE296880);
  }

  return result;
}

void *sub_1E3C42D9C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E3C42DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3C42E0C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3C42E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE296870;
  if (!qword_1EE296870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE296870);
  }

  return result;
}

unint64_t sub_1E3C42E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE296860;
  if (!qword_1EE296860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE296860);
  }

  return result;
}

uint64_t sub_1E3C42EB4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a4;
  v73 = a5;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v64 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35940, &qword_1E42C5A20);
  v15 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v69 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v68 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v67 = &v64 - v21;
  v22 = a3;
  v23 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v71 = v24;
  *&v26 = MEMORY[0x1EEE9AC00](v25).n128_u64[0];
  v28 = &v64 - v27;
  if (!a1)
  {
    v84 = 0u;
    v85 = 0u;
LABEL_9:
    sub_1E329505C(&v84);
    goto LABEL_10;
  }

  if ([a1 shadowColor])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v84 = v74;
  v85 = v75;
  if (!*(&v75 + 1))
  {
    goto LABEL_9;
  }

  sub_1E3755B54();
  if (swift_dynamicCast())
  {
    a2 = v74;
    goto LABEL_11;
  }

LABEL_10:
  v29 = a2;
  if (!a1)
  {
LABEL_13:
    v49 = a2;
    v50 = *(v8 + 16);
    v50(v14, v70, v22);
    v50(v11, v14, v22);
    OUTLINED_FUNCTION_1_180();
    v55 = sub_1E32752B0(v51, v52, v53, v54);
    v48 = v72;
    v82 = v72;
    v83 = v55;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    sub_1E37B8E90(v11, v15, v22);

    v56 = *(v8 + 8);
    v56(v11, v22);
    v56(v14, v22);
    goto LABEL_14;
  }

LABEL_11:
  if (!a2)
  {
    goto LABEL_13;
  }

  v30 = a1;
  v65 = v30;
  v31 = sub_1E38F08C4(a2);
  [v30 shadowBlurRadius];
  v33 = v32;
  [v30 shadowOffset];
  v35 = v34;
  [v30 shadowOffset];
  v36 = v68;
  v64 = v22;
  v66 = v23;
  v37 = v72;
  sub_1E3C43478(v31, v72, v68, v33, v35, v38);

  OUTLINED_FUNCTION_1_180();
  v43 = sub_1E32752B0(v39, v40, v41, v42);
  v76 = v37;
  v77 = v43;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v44 = v69;
  v70 = a2;
  v45 = *(v69 + 16);
  v46 = v67;
  v45(v67, v36, v15);
  v47 = *(v44 + 8);
  v47(v36, v15);
  v45(v36, v46, v15);
  sub_1E37B8D98(v36, v15);

  v48 = v37;
  v23 = v66;
  v47(v36, v15);
  v47(v46, v15);
LABEL_14:
  OUTLINED_FUNCTION_1_180();
  v61 = sub_1E32752B0(v57, v58, v59, v60);
  v80 = v48;
  v81 = v61;
  OUTLINED_FUNCTION_4_1();
  WitnessTable = swift_getWitnessTable();
  v79 = v48;
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v62 = v71;
  (*(v71 + 16))(v73, v28, v23);
  return (*(v62 + 8))(v28, v23);
}

uint64_t sub_1E3C43478@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v29 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35940, &qword_1E42C5A20);
  v12 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  v30 = a1;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35948, &qword_1E42C5A28);
  sub_1E3C436FC();
  sub_1E4203DA4();
  sub_1E4202D04();
  OUTLINED_FUNCTION_1_180();
  v24 = sub_1E32752B0(v22, &qword_1ECF35940, &qword_1E42C5A20, v23);
  v34 = a3;
  v35 = v24;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v25 = *(v14 + 16);
  v25(v21, v18, v12);
  v26 = *(v14 + 8);
  v26(v18, v12);
  v25(v29, v21, v12);
  return (v26)(v21, v12);
}

uint64_t sub_1E3C43680@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7 = *(v2 + 24);
  v5 = *(v2 + 40);
  *a2 = sub_1E42036E4();
  *(a2 + 8) = 256;
  *(a2 + 16) = v4;
  *(a2 + 24) = v7;
  *(a2 + 40) = v5;
}

unint64_t sub_1E3C436FC()
{
  result = qword_1EE289A60;
  if (!qword_1EE289A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35948, &qword_1E42C5A28);
    sub_1E32752B0(&qword_1EE289EF0, &qword_1ECF29280, &qword_1E42BA560, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A60);
  }

  return result;
}

id sub_1E3C437B4(uint64_t a1)
{
  if (*(v1 + 49))
  {
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(v1 + 32);
    }
  }

  v4 = type metadata accessor for LeagueRankView();
  result = sub_1E3C43874(*v1, 0, v2, v3 & 1);
  if (!result)
  {
    v6 = objc_allocWithZone(v4);
    v9 = OUTLINED_FUNCTION_5_8();

    return [v7 v8];
  }

  return result;
}

id sub_1E3C43874(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a2 && (type metadata accessor for LeagueRankView(), (v8 = swift_dynamicCastClass()) != 0))
  {
    v9 = v8;
    v10 = a2;
  }

  else
  {
    v11 = objc_allocWithZone(type metadata accessor for LeagueRankView());
    v12 = OUTLINED_FUNCTION_5_8();
    v9 = [v13 v14];
  }

  sub_1E3C44374(a1, a3, a4 & 1);
  return v9;
}

id sub_1E3C43908(void *a1)
{
  [a1 vui_layoutIfNeeded];
  [a1 layoutIfNeeded];
  [a1 systemLayoutSizeFittingSize_];
  [a1 frame];

  return [a1 setFrame_];
}

uint64_t sub_1E3C439C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E3C45E3C(a1, a2, a3);

  return sub_1E3E36D18(a1, a2, v5);
}

uint64_t sub_1E3C43A0C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C45E3C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v3, v4, v5, v6);
}

uint64_t sub_1E3C43AE0()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C45AF0(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v3);
}

uint64_t sub_1E3C43B34()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C45AF0(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v3);
}

void sub_1E3C43B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3C45AF0(a1, a2, a3);
  sub_1E4201F04();
  __break(1u);
}

id sub_1E3C43BB0()
{
  v1 = OBJC_IVAR____TtC8VideosUI14LeagueRankView____lazy_storage___mainContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI14LeagueRankView____lazy_storage___mainContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI14LeagueRankView____lazy_storage___mainContainerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E3C43C5C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v6 = sub_1E3C43BB0();
    [v6 addSubview_];

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

void sub_1E3C43D00()
{
  OUTLINED_FUNCTION_2_147(&OBJC_IVAR____TtC8VideosUI14LeagueRankView____lazy_storage___mainContainerView);
  sub_1E42076B4();
  __break(1u);
}

id sub_1E3C43D88()
{
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_147(&OBJC_IVAR____TtC8VideosUI14LeagueRankView____lazy_storage___mainContainerView);
  v7 = type metadata accessor for LeagueRankView();
  v1 = OUTLINED_FUNCTION_2_0();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v7);
  v5 = sub_1E3C43BB0();
  [v4 addSubview_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  return v4;
}

void sub_1E3C43E5C(double a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC8VideosUI14LeagueRankView_layout];
  if (v3)
  {
    v4 = *(*v3 + 1776);

    v6 = v4(v5);
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [v2 vuiTraitCollection];
  [v7 isAXEnabled];

  v8 = objc_opt_self();
  v9 = [v2 vuiTraitCollection];
  [v8 scaleContentSizeValue:v9 forTraitCollection:v6];
}

void sub_1E3C43FA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI14LeagueRankView_viewModel);
  if (v1)
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI14LeagueRankView_layout);
    if (v3)
    {
      v4 = *(*v3 + 1920);

      v6 = *v4(v5);
      (*(v6 + 304))();

      v4(v7);
      OUTLINED_FUNCTION_30();
      (*(v8 + 176))(v27);
      v9 = *v27;
      v10 = *&v27[1];
      v11 = *&v27[2];

      if ((v28 & 1) == 0)
      {
        sub_1E3952BD8(v9, v10, v11);
      }

      (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1D0))(v12);
      v13 = *(v0 + OBJC_IVAR____TtC8VideosUI14LeagueRankView_rankTextView);
      v14 = MEMORY[0x1E69DE090];
      if (v13)
      {
        [v13 systemLayoutSizeFittingSize_];
      }

      v15 = *(v2 + OBJC_IVAR____TtC8VideosUI14LeagueRankView_starView);
      if (v15)
      {
        [v15 systemLayoutSizeFittingSize_];
      }

      (*(*v3 + 1752))();
      v16 = (*v1 + 392);
      v17 = *v16;
      if ((*v16)())
      {
        OUTLINED_FUNCTION_30();
        (*(v18 + 176))(v29);
        v19 = *v29;
        v20 = *&v29[1];
        v21 = *&v29[2];
        v22 = *&v29[3];

        if ((v30 & 1) == 0)
        {
          sub_1E3952BE0(v19, v20, v21, v22);
        }
      }

      if (v17())
      {
        OUTLINED_FUNCTION_30();
        (*(v23 + 176))(v31);
        v24 = *v31;
        v25 = *&v31[1];
        v26 = *&v31[2];

        if ((v32 & 1) == 0)
        {
          sub_1E3952BD8(v24, v25, v26);
        }
      }
    }
  }
}

void sub_1E3C44374(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if ((*(*a1 + 392))())
  {
    type metadata accessor for LeagueRankLayout();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      *&v3[OBJC_IVAR____TtC8VideosUI14LeagueRankView_viewModel] = a1;

      *&v3[OBJC_IVAR____TtC8VideosUI14LeagueRankView_layout] = v9;

      *(&v116 + 1) = &unk_1F5D5D528;
      v117 = &off_1F5D5C858;
      LOBYTE(v115) = 0;
      v10 = j__OUTLINED_FUNCTION_18();
      v112 = a1;
      v106 = sub_1E39C29F0(&v115, v10 & 1);
      __swift_destroy_boxed_opaque_existential_1(&v115);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35958, &unk_1E42C5B88);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BD0;
      v12 = OBJC_IVAR____TtC8VideosUI14LeagueRankView_starView;
      v110 = OBJC_IVAR____TtC8VideosUI14LeagueRankView_indicatorView;
      v13 = *&v4[OBJC_IVAR____TtC8VideosUI14LeagueRankView_indicatorView];
      *(inited + 32) = v13;
      v113 = OBJC_IVAR____TtC8VideosUI14LeagueRankView_rankTextView;
      v14 = *&v4[OBJC_IVAR____TtC8VideosUI14LeagueRankView_rankTextView];
      *(inited + 40) = v14;
      v15 = *&v4[v12];
      *(inited + 48) = v15;
      v16 = v15;
      v17 = v13;
      v18 = v14;
      for (i = 32; i != 56; i += 8)
      {
        v20 = *(inited + i);
        if (v20)
        {
          [v20 removeFromSuperview];
        }
      }

      v111 = v12;
      v107 = v9;
      v108 = a3;
      v109 = a2;
      swift_setDeallocating();
      sub_1E3C45B58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_1E42A73A0;
      *(v21 + 32) = sub_1E3C43C44();
      *(v21 + 40) = sub_1E3C43C38();
      v114 = v4;
      v22 = 0;
      *(v21 + 48) = sub_1E3C43C50();
      while (v22 != 3)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1E6911E60](v22, v21);
        }

        else
        {
          if (v22 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v23 = *(v21 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = [v23 constraints];
        if (!v25)
        {
          sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
          sub_1E42062B4();
          v25 = sub_1E42062A4();
        }

        [v24 removeConstraints_];

        ++v22;
      }

      swift_setDeallocating();
      sub_1E377D458();
      v26 = v114;
      v27 = *&v114[v110];
      *&v114[v110] = 0;

      v28 = *&v114[v113];
      *&v114[v113] = 0;

      v29 = v111;
      v30 = *&v114[v111];
      *&v114[v111] = 0;

      v31 = v112;
      v32 = *(*v112 + 488);
      v33 = v32();
      if (v33)
      {
        v35 = v33;
        if (sub_1E373E010(39, v33, v34))
        {

          v37 = sub_1E373E010(39, v35, v36);

          if (v37)
          {
            type metadata accessor for ImageViewModel();
            v38 = swift_dynamicCastClass();
            if (v38)
            {
              v39 = v38;
              type metadata accessor for LeagueStandingsLegendIndicatorView();

              v40 = sub_1E3D21A5C(v39);
              v41 = *v9;
              if (v40)
              {
                v42 = (*(v41 + 1920))();
              }

              else
              {
                v42 = (*(v41 + 1896))();
              }

              v43 = v42;
              *&v114[OBJC_IVAR____TtC8VideosUI14LeagueRankView_indicatorViewModel] = v39;

              v44 = sub_1E3D20E14(v39, 0, v43);

              if (v44)
              {
                [*&v114[OBJC_IVAR____TtC8VideosUI14LeagueRankView____lazy_storage___indicatorSpacer] addSubview_];
                v45 = *&v114[v110];
                *&v114[v110] = v44;
                v46 = v44;

                *&v47 = OUTLINED_FUNCTION_3_146();
                [v48 v49];
                *&v50 = OUTLINED_FUNCTION_3_146();
                [v51 v52];
                *&v53 = OUTLINED_FUNCTION_3_146();
                [v54 v55];
                *&v56 = OUTLINED_FUNCTION_3_146();
                [v57 v58];
              }

              v26 = v114;
              v29 = v111;
              v31 = v112;
            }

            else
            {

              v26 = v114;
            }
          }
        }

        else
        {
        }
      }

      v59 = v32();
      if (v59)
      {
        v61 = sub_1E373E010(17, v59, v60);

        if (v61)
        {
          type metadata accessor for UIFactory();
          v117 = 0;
          v115 = 0u;
          v116 = 0u;
          v62 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);

          v64 = sub_1E393D92C(v63, 0, &v115, 0, v62);
          sub_1E373C624(&v115);
          if (v64)
          {
            *&v26[OBJC_IVAR____TtC8VideosUI14LeagueRankView_rankTextViewModel] = v61;

            v65 = sub_1E3C43BB0();
            v66 = OBJC_IVAR____TtC8VideosUI14LeagueRankView____lazy_storage___rankSpacer;
            [v65 addSubview_];

            [*&v26[v66] addSubview_];
            v67 = *&v26[v113];
            *&v26[v113] = v64;
            v68 = v64;

            *&v69 = OUTLINED_FUNCTION_3_146();
            [v70 v71];
            *&v72 = OUTLINED_FUNCTION_3_146();
            [v73 v74];
            *&v75 = OUTLINED_FUNCTION_3_146();
            [v76 v77];
            *&v78 = OUTLINED_FUNCTION_3_146();
            [v79 v80];
          }

          else
          {
          }
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
      v81 = swift_initStackObject();
      *(v81 + 16) = xmmword_1E4297BE0;
      *(v81 + 32) = sub_1E3C7CCAC(0);
      *(v81 + 40) = v82;
      *(v81 + 72) = MEMORY[0x1E69E6158];
      *(v81 + 48) = 0xD000000000000012;
      *(v81 + 56) = 0x80000001E4278870;
      v83 = sub_1E4205CB4();
      type metadata accessor for ImageViewModel();

      v84 = sub_1E3F5321C(39, v83, v31);
      if (v84)
      {
        v85 = v84;
        type metadata accessor for UIFactory();
        v117 = 0;
        v115 = 0u;
        v116 = 0u;
        v86 = *(*v107 + 1872);

        v88 = v86(v87);
        v89 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
        v90 = sub_1E393D92C(v85, 0, &v115, v88, v89);

        sub_1E373C624(&v115);
        if (v90)
        {
          *&v26[OBJC_IVAR____TtC8VideosUI14LeagueRankView_favoritesViewModel] = v85;

          [*&v26[OBJC_IVAR____TtC8VideosUI14LeagueRankView____lazy_storage___favoritesSpacer] addSubview_];
          v91 = *&v26[v29];
          *&v26[v29] = v90;
          v92 = v90;

          v93 = 0.0;
          if (v106)
          {
            v93 = 1.0;
          }

          [v92 setAlpha_];
          *&v94 = OUTLINED_FUNCTION_3_146();
          [v95 v96];
          *&v97 = OUTLINED_FUNCTION_3_146();
          [v98 v99];
          *&v100 = OUTLINED_FUNCTION_3_146();
          [v101 v102];
          *&v103 = OUTLINED_FUNCTION_3_146();
          [v104 v105];
        }

        else
        {
        }
      }

      sub_1E3C44CB8(v109, v108 & 1);
      [v26 vui_setNeedsLayout];
      [v26 setNeedsUpdateConstraints];
    }

    else
    {
    }
  }
}

void sub_1E3C44CB8(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI14LeagueRankView_rankTextView);
  if (v3)
  {
    v4 = *(v2 + OBJC_IVAR____TtC8VideosUI14LeagueRankView_starView);
    if (v4)
    {
      v5 = *(v2 + OBJC_IVAR____TtC8VideosUI14LeagueRankView_layout);
      if (v5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35958, &unk_1E42C5B88);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4298AD0;
        *(inited + 32) = v3;
        v107 = OBJC_IVAR____TtC8VideosUI14LeagueRankView_indicatorView;
        v7 = *(v2 + OBJC_IVAR____TtC8VideosUI14LeagueRankView_indicatorView);
        *(inited + 40) = v7;
        *(inited + 48) = v4;
        v8 = v7;
        v9 = v3;
        v10 = v4;
        v112 = v9;
        v110 = v10;
        v111 = v5;

        v109 = v2;
        *(inited + 56) = sub_1E3C43BB0();
        for (i = 32; i != 64; i += 8)
        {
          v12 = *(inited + i);
          if (v12)
          {
            v13 = v12;
            [v13 setTranslatesAutoresizingMaskIntoConstraints_];
            v14 = [v13 constraints];
            sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
            sub_1E42062B4();

            v15 = sub_1E42062A4();

            [v13 removeConstraints_];
          }
        }

        swift_setDeallocating();
        sub_1E3C45B58();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1E42C5A30;
        v17 = sub_1E3C43C44();
        v18 = [v17 heightAnchor];

        v19 = OBJC_IVAR____TtC8VideosUI14LeagueRankView____lazy_storage___mainContainerView;
        v20 = [*(v109 + OBJC_IVAR____TtC8VideosUI14LeagueRankView____lazy_storage___mainContainerView) &selRef_imageCellStyle + 2];
        v21 = [v18 constraintEqualToAnchor_];

        *(v16 + 32) = v21;
        v22 = OBJC_IVAR____TtC8VideosUI14LeagueRankView____lazy_storage___indicatorSpacer;
        v23 = [*(v109 + OBJC_IVAR____TtC8VideosUI14LeagueRankView____lazy_storage___indicatorSpacer) widthAnchor];
        (*((*MEMORY[0x1E69E7D40] & *v109) + 0x1D0))();
        v24 = [v23 constraintEqualToConstant_];

        *(v16 + 40) = v24;
        v25 = [*(v109 + v22) centerYAnchor];
        v26 = [OUTLINED_FUNCTION_6_125() &selRef_collectionView_layout_selectionMarginsForItemAtIndexPath_];
        v27 = OUTLINED_FUNCTION_4_153(v26);

        *(v16 + 48) = v27;
        v28 = [*(v109 + v22) leadingAnchor];
        v29 = [OUTLINED_FUNCTION_6_125() &selRef_loadFairPlayStreamingKeyRequests_completion_ + 1];
        v30 = OUTLINED_FUNCTION_5_140(v29, &selRef_disableBackgroundMediaPlayback + 5);

        *(v16 + 56) = v30;
        v31 = [v112 &selRef_collectionView_layout_selectionMarginsForItemAtIndexPath_];
        v32 = sub_1E3C43C50();
        v33 = [v32 &selRef_collectionView_layout_selectionMarginsForItemAtIndexPath_];

        v34 = [v31 &selRef_disableBackgroundMediaPlayback + 5];
        *(v16 + 64) = v34;
        v35 = [v112 centerXAnchor];
        v36 = OBJC_IVAR____TtC8VideosUI14LeagueRankView____lazy_storage___rankSpacer;
        v37 = OUTLINED_FUNCTION_0_190([*(v109 + OBJC_IVAR____TtC8VideosUI14LeagueRankView____lazy_storage___rankSpacer) centerXAnchor]);

        *(v16 + 72) = v37;
        v38 = [v112 widthAnchor];
        v39 = [OUTLINED_FUNCTION_10_98() widthAnchor];
        v40 = OUTLINED_FUNCTION_5_140(v39, sel_constraintLessThanOrEqualToAnchor_);

        *(v16 + 80) = v40;
        v41 = [*(v109 + v36) heightAnchor];
        v42 = [OUTLINED_FUNCTION_6_125() heightAnchor];
        v43 = OUTLINED_FUNCTION_5_140(v42, &selRef_disableBackgroundMediaPlayback + 5);

        *(v16 + 88) = v43;
        v44 = [*(v109 + v36) leadingAnchor];
        v45 = OUTLINED_FUNCTION_4_153([*(v109 + v22) trailingAnchor]);

        *(v16 + 96) = v45;
        v46 = [*(v109 + v36) &selRef_valueWithObject_inContext_ + 4];
        v47 = sub_1E3C43C38();
        v48 = [v47 leadingAnchor];

        v49 = [v46 &selRef_disableBackgroundMediaPlayback + 5];
        *(v16 + 104) = v49;
        v50 = OBJC_IVAR____TtC8VideosUI14LeagueRankView____lazy_storage___favoritesSpacer;
        v51 = [*(v109 + OBJC_IVAR____TtC8VideosUI14LeagueRankView____lazy_storage___favoritesSpacer) heightAnchor];
        v52 = [OUTLINED_FUNCTION_6_125() heightAnchor];
        v53 = OUTLINED_FUNCTION_4_153(v52);

        *(v16 + 112) = v53;
        v54 = [*(v109 + v50) widthAnchor];
        (*(*v111 + 1752))();
        v55 = [v54 constraintEqualToConstant_];

        *(v16 + 120) = v55;
        v56 = [*(v109 + v50) centerYAnchor];
        v57 = [OUTLINED_FUNCTION_6_125() centerYAnchor];
        v58 = OUTLINED_FUNCTION_4_153(v57);

        *(v16 + 128) = v58;
        v59 = [*(v109 + v50) trailingAnchor];
        v60 = [OUTLINED_FUNCTION_6_125() trailingAnchor];
        v61 = OUTLINED_FUNCTION_5_140(v60, &selRef_disableBackgroundMediaPlayback + 5);

        *(v16 + 136) = v61;
        v62 = [*(v109 + v50) leadingAnchor];
        v63 = OUTLINED_FUNCTION_0_190([v112 &selRef_valueWithObject_inContext_ + 4]);

        *(v16 + 144) = v63;
        v64 = [v110 leadingAnchor];
        v65 = [*(v109 + v50) leadingAnchor];
        (*(*v111 + 1824))();
        v66 = [v64 constraintEqualToAnchor:v65 constant:?];

        *(v16 + 152) = v66;
        v67 = [v110 centerYAnchor];
        v68 = [OUTLINED_FUNCTION_10_98() centerYAnchor];
        v69 = OUTLINED_FUNCTION_0_190(v68);

        *(v16 + 160) = v69;
        v70 = [v110 widthAnchor];
        v71 = [OUTLINED_FUNCTION_10_98() widthAnchor];
        v72 = OUTLINED_FUNCTION_5_140(v71, sel_constraintLessThanOrEqualToAnchor_);

        *(v16 + 168) = v72;
        v73 = [v110 heightAnchor];
        v74 = [OUTLINED_FUNCTION_10_98() heightAnchor];
        v75 = OUTLINED_FUNCTION_5_140(v74, sel_constraintLessThanOrEqualToAnchor_);

        *(v16 + 176) = v75;
        v76 = [v110 trailingAnchor];
        v77 = [OUTLINED_FUNCTION_10_98() trailingAnchor];
        v78 = OUTLINED_FUNCTION_5_140(v77, sel_constraintLessThanOrEqualToAnchor_);

        *(v16 + 184) = v78;
        v79 = [*(v109 + v19) leadingAnchor];
        v80 = OUTLINED_FUNCTION_0_190([v109 leadingAnchor]);

        *(v16 + 192) = v80;
        v81 = [*(v109 + v19) &selRef_valueWithObject_inContext_ + 4];
        v82 = OUTLINED_FUNCTION_0_190([v109 &selRef_valueWithObject_inContext_ + 4]);

        *(v16 + 200) = v82;
        v83 = [*(v109 + v19) topAnchor];
        v84 = OUTLINED_FUNCTION_0_190([v109 topAnchor]);

        *(v16 + 208) = v84;
        v85 = [*(v109 + v19) bottomAnchor];
        v86 = OUTLINED_FUNCTION_0_190([v109 bottomAnchor]);

        *(v16 + 216) = v86;
        v113 = v16;
        v87 = *(v109 + v107);
        if (v87)
        {
          v88 = swift_initStackObject();
          *(v88 + 16) = xmmword_1E429DCC0;
          v89 = v87;
          v90 = [v89 centerYAnchor];
          v91 = [*(v109 + v22) centerYAnchor];
          v92 = OUTLINED_FUNCTION_5_140(v91, &selRef_disableBackgroundMediaPlayback + 5);

          *(v88 + 32) = v92;
          v93 = [v89 centerXAnchor];

          v94 = [*(v109 + v22) centerXAnchor];
          v95 = OUTLINED_FUNCTION_5_140(v94, &selRef_disableBackgroundMediaPlayback + 5);

          *(v88 + 40) = v95;
          sub_1E3C45BB8(v88);
        }

        if ((a2 & 1) == 0 && *&a1 != 0.0)
        {
          v96 = swift_initStackObject();
          *(v96 + 16) = xmmword_1E4298880;
          v97 = [*(v109 + v19) widthAnchor];
          v98 = [v97 constraintEqualToConstant_];

          *(v96 + 32) = v98;
          sub_1E3C45BB8(v96);
        }

        v99 = sub_1E32AE9B0(v113);
        for (j = 0; ; ++j)
        {
          if (v99 == j)
          {
            v104 = objc_opt_self();
            sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
            v105 = sub_1E42062A4();

            [v104 activateConstraints_];

            return;
          }

          if ((v113 & 0xC000000000000001) != 0)
          {
            v101 = MEMORY[0x1E6911E60](j, v113);
          }

          else
          {
            if (j >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v101 = *(v113 + 8 * j + 32);
          }

          v103 = v101;
          if (__OFADD__(j, 1))
          {
            break;
          }

          LODWORD(v102) = 1148846080;
          [v101 setPriority_];
        }

        __break(1u);
LABEL_25:
        __break(1u);
      }
    }
  }
}

id sub_1E3C459D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LeagueRankView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3C45AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3C45AF0(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3C45AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35950;
  if (!qword_1ECF35950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35950);
  }

  return result;
}

uint64_t sub_1E3C45B58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35970, &unk_1E42C5BA0);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E3C45BB8(unint64_t a1)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = sub_1E32AE9B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E3797CDC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E3C45C64(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1E3C45C64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E3C45DD8();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35960, &qword_1E42C5B98);
          v9 = sub_1E374111C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E3C45DD8()
{
  result = qword_1ECF35968;
  if (!qword_1ECF35968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35960, &qword_1E42C5B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35968);
  }

  return result;
}

unint64_t sub_1E3C45E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35978;
  if (!qword_1ECF35978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35978);
  }

  return result;
}

unint64_t sub_1E3C45E9C(char a1)
{
  result = 0x6567617453;
  switch(a1)
  {
    case 1:
      result = 0x79616C5074736F50;
      break;
    case 2:
      result = 0x7370696C43;
      break;
    case 3:
      result = 0x5470556863746143;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3C45F3C()
{
  OUTLINED_FUNCTION_12_1();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_50();
  return sub_1E3C45F70(v0);
}

uint64_t sub_1E3C45F70(char a1)
{
  type metadata accessor for ChevronIndicatorLayout();
  *(v1 + 104) = sub_1E3DC91C8();
  type metadata accessor for ViewLayout();
  *(v1 + 112) = sub_1E3C2F968();
  *(v1 + 120) = a1;
  v3 = sub_1E3C2F9A0();
  v6 = *( + 120);
  if ((v6 - 1) >= 4)
  {
    if (!v6)
    {
      if (TVAppFeature.isEnabled.getter(20, v4, v5))
      {
        v8 = objc_opt_self();
        if ([v8 isPad])
        {
          v11 = *(v3 + 112);
          if (TVAppFeature.isEnabled.getter(10, v9, v10))
          {
            v12 = 0x4045000000000000;
          }

          else
          {
            v12 = 0x4050800000000000;
          }

          (*(*v11 + 312))(v12, 0);
        }

        else
        {
          [v8 isPhone];
          OUTLINED_FUNCTION_36();
          if (v16)
          {
            v17 = 0x404C000000000000;
          }

          else
          {
            v17 = 0x4046000000000000;
          }

          (*(v15 + 312))(v17, 0);
        }
      }

      else
      {
        OUTLINED_FUNCTION_8();
        (*(v14 + 312))(0x4046000000000000, 0);
      }

      v18 = objc_opt_self();
      if ([v18 isTV])
      {
        v23 = xmmword_1E42C5BB0;
        v24 = xmmword_1E42B8890;
      }

      else
      {
        if (![v18 isMac])
        {
          goto LABEL_2;
        }

        *&v23 = sub_1E3952C64();
        *(&v23 + 1) = v19;
        *&v24 = v20;
        *(&v24 + 1) = v21;
      }

      v25 = 0;
      OUTLINED_FUNCTION_8();
      (*(v22 + 160))(&v23);
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_8();
    (*(v13 + 312))(0x403A000000000000, 0);
  }

LABEL_2:

  return v3;
}

void sub_1E3C461F4()
{
  type metadata accessor for ChevronIndicatorLayout();
  *(v0 + 104) = sub_1E3DC91C8();
  type metadata accessor for ViewLayout();
  *(v0 + 112) = sub_1E3C2F968();
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3C46280()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 mediaShowcaseConfig];

  LODWORD(v0) = [v1 isParallaxEnabled];
  return ([objc_opt_self() isFeatureEnabled_] ^ 1) & v0;
}

uint64_t sub_1E3C46318(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_showsGradient;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

void sub_1E3C46358()
{
  objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v11 = sub_1E3C5A300;
  v12 = v1;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v9 = v2;
  v10 = &block_descriptor_149_1;
  v3 = _Block_copy(&v7);
  v4 = v0;

  v5 = OUTLINED_FUNCTION_17_1();
  [v5 v6];
  _Block_release(v3);
}

void sub_1E3C4644C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_pageControlBottomMarginConstraint);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_pageControlBottomMargin;
    OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    [v1 setConstant_];
  }
}

void sub_1E3C464B4(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_pageControlBottomMargin;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_pageControlBottomMargin, v4);
  *(v1 + v3) = a1;
  sub_1E3C4644C();
}

unint64_t sub_1E3C46500()
{
  v1 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = OUTLINED_FUNCTION_57();
  result = [v3 v4];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11[1] = v2;
    v9 = result;
    v10 = 0;
    v6 = OUTLINED_FUNCTION_57();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_0_32();
    sub_1E328FCF4(v8, &unk_1ECF2C790, &qword_1E42996A0);
    sub_1E38D2054(&v9, v11);

    return v11[0];
  }

  return result;
}

uint64_t sub_1E3C465F0()
{
  if (sub_1E3C46500())
  {
    v3[3] = &unk_1F5D5D528;
    v3[4] = &off_1F5D5C858;
    LOBYTE(v3[0]) = 9;
    v1 = j__OUTLINED_FUNCTION_18();
    sub_1E39C29F0(v3, v1 & 1);
    OUTLINED_FUNCTION_12_1();

    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1E3C4666C()
{
  [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) mediaInfoIndex];
  if (sub_1E3C46500())
  {
    sub_1E3C466E4();
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3C466E4()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 776))(v2);
  if (v2[3])
  {
    if (OUTLINED_FUNCTION_21_4())
    {
      return OUTLINED_FUNCTION_32_0();
    }
  }

  else
  {
    sub_1E325F6F0(v2, &unk_1ECF296E0, &unk_1E4298030);
  }

  return OUTLINED_FUNCTION_32_0();
}

void sub_1E3C4679C(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_swipeController];
  if (v2)
  {
    OUTLINED_FUNCTION_0_12(a1);
    v3 = v2;
    v4 = OUTLINED_FUNCTION_50();
    sub_1E4141480(v4);
  }
}

uint64_t sub_1E3C46830(uint64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_swipeController);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v2 + v3);
}

id sub_1E3C46884()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) proxyImageView];

  return v1;
}

id sub_1E3C468C4()
{
  v1 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___containerView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___containerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___containerView];
LABEL_5:
    v8 = v2;
    return v3;
  }

  v4 = v0;
  result = [v0 vuiView];
  if (result)
  {
    OUTLINED_FUNCTION_106();
    type metadata accessor for PaginatedSwipingContainerView();
    [v0 bounds];
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_6();
    v6 = sub_1E3890DAC();
    v7 = *&v0[v1];
    *&v4[v1] = v6;
    v3 = v6;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1E3C46984()
{
  v1 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___mediaShowcaseConfig;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___mediaShowcaseConfig);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___mediaShowcaseConfig);
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 mediaShowcaseConfig];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1E3C46A28()
{
  v1 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageControl;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageControl);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageControl);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCD10]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E3C46A9C()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isPlayingVideo) != 1)
  {
    return 0;
  }

  result = [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) player];
  if (result)
  {
    v2 = result;
    [result duration];
    v4 = v3;
    v5 = *MEMORY[0x1E69D5A78];

    return (v4 == v5);
  }

  return result;
}

id sub_1E3C46B2C()
{
  v1 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageProgress;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageProgress);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageProgress);
  }

  else
  {
    sub_1E3C46BB4();
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCD18]) initWithPreferredDuration_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1E3C46BB4()
{
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost))
  {
    v1 = sub_1E3C46984();
    [v1 advanceToNextPageDelayDurationImageOnly];
  }
}

uint64_t sub_1E3C46C10()
{
  v0 = sub_1E3C46CA4();
  v1 = [v0 superview];

  v2 = sub_1E3C468C4();
  if (v1)
  {
    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    OUTLINED_FUNCTION_13_8();
    v3 = sub_1E4206F64();

    v2 = v1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id sub_1E3C46CA4()
{
  v2 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataView;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataView);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataView);
  }

  else
  {
    v5 = sub_1E3C46D8C();
    sub_1E3C46E14(v5);
    OUTLINED_FUNCTION_87_0();

    v6 = *(v0 + v2);
    *(v0 + v2) = v1;
    v4 = v1;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

uint64_t sub_1E3C46D1C()
{
  v1 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataInteractor;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataInteractor))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataInteractor);
  }

  else
  {
    type metadata accessor for MediaShowcasingMetadataInteractor();
    v2 = sub_1E407B934();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1E3C46D8C()
{
  v1 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataPresenter;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataPresenter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataPresenter);
  }

  else
  {
    v3 = v0;
    type metadata accessor for MediaShowcasingMetadataPresenter(0);
    v4 = sub_1E3C46D1C();
    v5 = j__OUTLINED_FUNCTION_18();
    v2 = sub_1E392625C(v4, v5 & 1);
    *(v3 + v1) = v2;
  }

  return v2;
}

char *sub_1E3C46E14(uint64_t a1)
{
  v2 = v1;

  v5 = sub_1E3ACD07C(v4);
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35B80, &qword_1E42C5FA0);
  v13 = v5;
  v14 = v7;
  v8 = *(v2 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost);

  v9 = sub_1E3C8369C(&v13, a1, v8);
  if (v8 == 1)
  {
    v10 = 1;
  }

  else
  {
    v11 = sub_1E3C46984();
    v10 = [v11 gradientUsesImageColor];
  }

  (*((*MEMORY[0x1E69E7D40] & *v9) + 0xC0))(v10);

  return v9;
}

unint64_t sub_1E3C46F28()
{
  v1 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___buttonsPresenter;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___buttonsPresenter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___buttonsPresenter);
  }

  else
  {
    v2 = sub_1E3C46F8C(0);
    *(v0 + v1) = v2;
  }

  return v2;
}

unint64_t sub_1E3C46F8C(char a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_132_7(Strong);
    OUTLINED_FUNCTION_79_1();
    v4 = OUTLINED_FUNCTION_17_1();
    v6 = v5(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0.0;
  }

  v7 = sub_1E3C46500();
  v8 = v7;
  if (v7)
  {
    (*(*v7 + 488))(v7);
    OUTLINED_FUNCTION_38();

    sub_1E373E010(224, v8, v9);
    OUTLINED_FUNCTION_11_5();
  }

  result = [*(v1 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) mediaInfoIndex];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a1 == 2)
    {
      v12 = sub_1E3C46F28();
      v13 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_countdownButtonShown;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      a1 = *(v12 + v13);
    }

    type metadata accessor for MediaShowcasingButtonsPresenter(0);
    OUTLINED_FUNCTION_38();

    v15 = sub_1E3B228F8(v14, v11, a1 & 1, v6);
    OUTLINED_FUNCTION_4_0();
    v16 = swift_allocObject();
    OUTLINED_FUNCTION_56_10(v16);
    v17 = (v15 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_onButtonPressed);
    OUTLINED_FUNCTION_3_0(v15 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_onButtonPressed, v26);
    v18 = *v17;
    v19 = v17[1];
    *v17 = sub_1E3C59774;
    v17[1] = v11;

    sub_1E34AF594(v18, v19);

    OUTLINED_FUNCTION_4_0();
    v20 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v20);
    OUTLINED_FUNCTION_2_4();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v8;
    v22 = (v15 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_onAutoPlayPressed);
    OUTLINED_FUNCTION_3_0(v15 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_onAutoPlayPressed, &v25);
    *v22 = sub_1E3C5984C;
    v22[1] = v21;

    v23 = OUTLINED_FUNCTION_146();
    sub_1E34AF594(v23, v24);

    sub_1E3B233D4();

    return v15;
  }

  return result;
}

id sub_1E3C47218()
{
  v2 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___buttonsView;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___buttonsView);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___buttonsView);
  }

  else
  {
    sub_1E3C46F28();
    sub_1E3C47290();
    OUTLINED_FUNCTION_87_0();

    v5 = *(v0 + v2);
    *(v0 + v2) = v1;
    v4 = v1;

    v3 = 0;
  }

  v6 = v3;
  return v4;
}

uint64_t sub_1E3C47290()
{
  sub_1E3C55034(v2);
  v0 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A98, &qword_1E42C5D40));
  return sub_1E4201214();
}

void sub_1E3C472E0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  v10 = sub_1E324FBDC();
  v39 = *(v5 + 16);
  v40 = v10;
  v39(v9);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_6_21();
    v37 = v5;
    v38 = v3;
    v15 = v14;
    v41 = OUTLINED_FUNCTION_100();
    *v15 = 136315138;
    v16 = sub_1E3C486F4();
    OUTLINED_FUNCTION_58_0(v16, v17);
    OUTLINED_FUNCTION_11_5();

    *(v15 + 4) = v1;
    OUTLINED_FUNCTION_105_10();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    OUTLINED_FUNCTION_113_7();
    OUTLINED_FUNCTION_6_0();
    v5 = v37;
    v3 = v38;
    OUTLINED_FUNCTION_6_0();
  }

  v23 = *(v5 + 8);
  v23(v9, v3);
  sub_1E3C553FC();
  if ((v24 & 1) == 0)
  {
    sub_1E3C47690();
    goto LABEL_11;
  }

  v25 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isPlayingVideo;
  if (*(v11 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isPlayingVideo) != 1)
  {
    goto LABEL_10;
  }

  if (sub_1E3C46A9C())
  {
    OUTLINED_FUNCTION_32_2();
    sub_1E3C47EBC();
    goto LABEL_11;
  }

  if (*(v11 + v25) != 1 || *(v11 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost))
  {
LABEL_10:
    sub_1E3C475DC();
    goto LABEL_11;
  }

  (v39)(v2, v40, v3);
  v26 = v11;
  v27 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_34_9())
  {
    OUTLINED_FUNCTION_6_21();
    v28 = OUTLINED_FUNCTION_10_11();
    v41 = v28;
    v29 = OUTLINED_FUNCTION_164_3(4.8149e-34);
    OUTLINED_FUNCTION_58_0(v29, v30);
    OUTLINED_FUNCTION_112();

    *(v9 + 4) = v2;
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();
  }

  v23(v2, v3);
LABEL_11:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C475DC()
{
  sub_1E3C47690();
  sub_1E3C553FC();
  if (v1)
  {
    v2 = sub_1E3C56874();
    if (v2 & 1) != 0 || (v3 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_autoAdvanceForIdleVideo, OUTLINED_FUNCTION_0_12(v2), (*(v0 + v3)) || (sub_1E3C51A88(), (v4))
    {
      sub_1E3C46BB4();
      sub_1E3C55790(v5);
      sub_1E3C47EBC();
    }
  }
}

void sub_1E3C47648(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_autoAdvanceForIdleVideo;
  OUTLINED_FUNCTION_0_12(a1);
  if (*(v1 + v2) == 1)
  {
    sub_1E3C475DC();
  }

  else
  {
    sub_1E3C47690();
  }
}

void sub_1E3C47690()
{
  v1 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_autoAdvancePageTimer;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_autoAdvancePageTimer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = sub_1E3C46B2C();
  [v4 pauseTimer];
}

uint64_t sub_1E3C4772C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController);

  return sub_1E3C58BD8(v1);
}

void sub_1E3C47760(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController);
  if (a2)
  {
    v4 = v3;
    v6 = sub_1E4205ED4();
  }

  else
  {
    v5 = v3;
    v6 = 0;
  }

  [v3 setPlaybackInitiatorForRTCReporting_];
}

void sub_1E3C477F8()
{
  switch(*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost))
  {
    case 1:
    case 2:
    case 3:
    case 4:
      return;
    default:
      v1 = sub_1E3C46984();
      [v1 advanceToNextPageDelayDuration];

      break;
  }
}

uint64_t sub_1E3C47874(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_showsIndicators;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

CGFloat sub_1E3C478B4()
{
  v0 = sub_1E3C46CA4();
  v1 = *&v0[qword_1EE23EF98];

  [v1 frame];
  OUTLINED_FUNCTION_3();

  v2 = OUTLINED_FUNCTION_6();

  return CGRectGetMinY(*&v2);
}

void sub_1E3C47930()
{
  v1 = [objc_opt_self() isVision];
  if (v1 & 1) != 0 || (v1 = sub_1E39DFFC8(), (v1))
  {
    v2 = *&v0[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_swipeController];
    if (v2)
    {
      OUTLINED_FUNCTION_0_12(v1);
      v3 = v2;
      v4 = OUTLINED_FUNCTION_50();
      sub_1E4140DBC(v4);
    }
  }
}

void sub_1E3C479B0(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_swipeTransitionStyle;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2 & 1;
  sub_1E3C47930();
}

uint64_t sub_1E3C479F8()
{
  result = sub_1E39DFFC8();
  if (result)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_swipeController);
    if (v2)
    {
      v3 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldAlwaysMirrorMediaView;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v4 = *(v0 + v3);
      v5 = OBJC_IVAR____TtC8VideosUI25PaginatingSwipeController_shouldAlwaysMirrorMediaView;
      result = OUTLINED_FUNCTION_3_0(v2 + OBJC_IVAR____TtC8VideosUI25PaginatingSwipeController_shouldAlwaysMirrorMediaView, &v6);
      *(v2 + v5) = v4;
    }
  }

  return result;
}

uint64_t sub_1E3C47A94(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = OUTLINED_FUNCTION_3_0(v3 + *a2, v9);
  *(v3 + v6) = a1;
  return a3(v7);
}

double sub_1E3C47AE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3C47BAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1E4200684();
}

uint64_t sub_1E3C47C20()
{
  v0 = OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_11_3(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0, &unk_1E42AB480);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3C47C88()
{
  v1 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___layout;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___layout))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___layout);
  }

  else
  {
    v3 = v0;
    v4 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost);
    type metadata accessor for PaginatedMediaLayout();
    swift_allocObject();
    v2 = sub_1E3C45F70(v4);
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_1E3C47D18()
{
  v1 = v0;
  v2 = sub_1E3C46CA4();
  v3 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isPlayingVideo;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x188))(*(v1 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isPlayingVideo));

  if (*(v1 + v3) != 1)
  {
    return;
  }

  sub_1E3C47690();
  if ((sub_1E3C46A9C() & 1) != 0 && *(v1 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost) != 3)
  {
    if (sub_1E3C46500())
    {
      LOBYTE(v5) = 0;
      OUTLINED_FUNCTION_26_0();
      (*(v4 + 776))(&v6, &v5, &unk_1F5D5DF48, &off_1F5D5CA98);

      if (*(&v7 + 1))
      {
        OUTLINED_FUNCTION_21_4();
LABEL_12:
        sub_1E3C47EBC();
        return;
      }
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    sub_1E325F6F0(&v6, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_12;
  }

  sub_1E3C48280();
}

void sub_1E3C47EBC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v52 = v6;
  *&v7 = COERCE_DOUBLE(sub_1E41FFCB4());
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  if (sub_1E3C46A9C())
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1E3C56874();
  }

  sub_1E3C51A88();
  v14 = v13;
  v15 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldUsePageControlProgress;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v0 + v15) != 1 || (sub_1E3C553FC(), (v16 & 1) == 0) || ((v12 | v14) & 1) == 0)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v21(v1);
    v22 = v0;
    v23 = sub_1E41FFC94();
    sub_1E42067E4();

    if (OUTLINED_FUNCTION_34_9())
    {
      swift_slowAlloc();
      v52 = *&v7;
      v24 = OUTLINED_FUNCTION_10_11();
      v54 = v24;
      *v7 = 136315394;
      v25 = sub_1E3C486F4();
      v27 = sub_1E3270FC8(v25, v26, &v54);

      *(v7 + 4) = v27;
      *(v7 + 12) = 1024;
      *(v7 + 14) = v14 & 1;
      OUTLINED_FUNCTION_60_3();
      _os_log_impl(v28, v29, v30, v31, v32, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_55();

      v33 = OUTLINED_FUNCTION_111_6();
      v35 = *&v52;
    }

    else
    {

      v33 = OUTLINED_FUNCTION_111_6();
      v35 = v7;
    }

    v34(v33, v35);
    goto LABEL_16;
  }

  v17 = [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) mediaInfoIndex];
  if (v17 != -1)
  {
    if (v17 + 1 < sub_1E3C54538(v17) || (v18 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldAutoAdvanceLastPage, OUTLINED_FUNCTION_25(), swift_beginAccess(), (v18[v0] & 1) != 0))
    {
      v19 = sub_1E3C46B2C();
      v20 = v19;
      if ((v3 & 1) == 0)
      {
        if (v5)
        {
          sub_1E3C46BB4();
        }

        else
        {
          v36 = v52;
        }

        [v20 setPreferredDuration_];

        v50 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageProgress;
        [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageProgress) resumeTimer];
        [*(v0 + v50) setCurrentProgress_];
        goto LABEL_18;
      }

      [v19 resumeTimer];
LABEL_17:

LABEL_18:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v37(v11);
    v38 = v0;
    OUTLINED_FUNCTION_141_7();
    v39 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_34_9())
    {
      OUTLINED_FUNCTION_6_21();
      v40 = OUTLINED_FUNCTION_10_11();
      v53 = v40;
      *v7 = 136315138;
      v41 = sub_1E3C486F4();
      v43 = sub_1E3270FC8(v41, v42, &v53);

      *(v7 + 4) = v43;
      OUTLINED_FUNCTION_60_3();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();
    }

    v49 = OUTLINED_FUNCTION_137_5();
    v51(v49, v7);
LABEL_16:
    v20 = sub_1E3C46B2C();
    [v20 pauseTimer];
    goto LABEL_17;
  }

  __break(1u);
}

void sub_1E3C48280()
{
  OUTLINED_FUNCTION_93();
  v3 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - v6;
  v8 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldUsePageControlProgress;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (v0[v8] == 1)
  {
    v9 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController;
    v10 = [*&v0[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController] player];
    if (v10)
    {
      v11 = v10;
      if ((sub_1E3C46A9C() & 1) != 0 && v0[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost] != 3)
      {
        sub_1E324FBDC();
        OUTLINED_FUNCTION_0_11();
        v25(v1);
        v26 = v0;
        v27 = sub_1E41FFC94();
        sub_1E4206814();

        if (OUTLINED_FUNCTION_34_9())
        {
          OUTLINED_FUNCTION_6_21();
          v28 = OUTLINED_FUNCTION_10_11();
          *&v53 = v28;
          v29 = OUTLINED_FUNCTION_164_3(4.8149e-34);
          v31 = sub_1E3270FC8(v29, v30, &v53);

          *(v2 + 4) = v31;
          OUTLINED_FUNCTION_60_3();
          _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v28);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_55();
        }

        v37 = OUTLINED_FUNCTION_74();
        v38(v37);
      }

      else
      {
        sub_1E324FBDC();
        OUTLINED_FUNCTION_0_11();
        v12(v7);
        v13 = v0;
        v14 = sub_1E41FFC94();
        v15 = sub_1E42067E4();

        if (os_log_type_enabled(v14, v15))
        {
          v49 = v15;
          v50 = v11;
          v16 = swift_slowAlloc();
          v48 = OUTLINED_FUNCTION_100();
          *&v53 = v48;
          *v16 = 136315394;
          v17 = sub_1E3C486F4();
          sub_1E3270FC8(v17, v18, &v53);
          OUTLINED_FUNCTION_12_1();

          *(v16 + 4) = v8;
          *(v16 + 12) = 2048;
          v19 = [*&v3[v9] player];
          if (v19)
          {
            v20 = v19;
            [v19 duration];
            v22 = v21;
          }

          else
          {
            v22 = 0;
          }

          *(v16 + 14) = v22;
          _os_log_impl(&dword_1E323F000, v14, v49, "%s observePlayerProgress player duration=%f", v16, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v48);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_79();

          v39 = OUTLINED_FUNCTION_54_25();
          v40(v39);
          v11 = v50;
        }

        else
        {

          v23 = OUTLINED_FUNCTION_54_25();
          v24(v23);
        }

        v41 = sub_1E3C46B2C();
        [v41 pauseTimer];

        OUTLINED_FUNCTION_4_0();
        v42 = swift_allocObject();
        OUTLINED_FUNCTION_131(v42);
        v55 = sub_1E3C59854;
        v56 = v41;
        *&v53 = MEMORY[0x1E69E9820];
        *(&v53 + 1) = 1107296256;
        *&v54 = sub_1E3C55E60;
        *(&v54 + 1) = &block_descriptor_111_0;
        v43 = _Block_copy(&v53);

        v44 = [v11 addElapsedTimeObserver_];
        v45 = OUTLINED_FUNCTION_50();
        _Block_release(v45);
        if (v13)
        {
          sub_1E4207264();
          swift_unknownObjectRelease();
        }

        else
        {
          v51 = 0u;
          v52 = 0u;
        }

        v53 = v51;
        v54 = v52;
        sub_1E3C54318();

        v46 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_elapsedTimeObserverToken;
        OUTLINED_FUNCTION_11_3(&v13[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_elapsedTimeObserverToken], &v51);
        sub_1E3B0D4BC(&v53, &v13[v46], &unk_1ECF296E0, &unk_1E4298030);
        swift_endAccess();
      }
    }
  }

  OUTLINED_FUNCTION_54_0();
}

unint64_t sub_1E3C486F4()
{
  sub_1E42074B4();

  v0 = sub_1E3C48774();
  MEMORY[0x1E69109E0](v0);

  return 0xD00000000000001ALL;
}

uint64_t sub_1E3C48774()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) name];
  sub_1E4205F14();

  return OUTLINED_FUNCTION_57();
}

__n128 sub_1E3C487D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v19 = objc_allocWithZone(v10);
  sub_1E3C4887C(a1, a2, a3, a4, a5, a6, a7, a8, a9, *(&a9 + 1), a10, v21, a9, *(&a9 + 1), v22, v23, v24, v25, v26, v27, v28, v29, v30);
  return result;
}

void sub_1E3C4887C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23)
{
  OUTLINED_FUNCTION_31_1();
  v25 = v23;
  v67 = v27;
  v68 = v26;
  v71 = v28;
  v65 = v29;
  v66 = v30;
  v70 = v31;
  swift_getObjectType();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0, &unk_1E42AB480);
  OUTLINED_FUNCTION_0_10();
  v34 = v33;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_14_5();
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_showsGradient) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldUsePageControlProgress) = 1;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldUpdateMetadataViewDuringFullscreenTransition) = 1;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_pageControlBottomMarginConstraint) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_pageControlHeightConstraint) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_pageControlBottomMargin) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldAdjustCaptionPosition) = 0;
  v36 = v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationDelegate;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_lastImpressedIndex) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_playerViewControllerObservable) = 0;
  v37 = MEMORY[0x1E69E7CC0];
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_playerTabViewControllers) = MEMORY[0x1E69E7CC0];
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_hideGradientView) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_carouselBehaviorEnabled) = 0;
  v38 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaInfo;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaInfo) = 0;
  v39 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_countDownPresenter;
  type metadata accessor for CountDownProgressPresenter(0);
  *(v23 + v39) = sub_1E3C13BCC(1);
  v40 = v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_collectionImpressioner;
  *(v40 + 32) = 0;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___containerView) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___mediaShowcaseConfig) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageControl) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageProgress) = 0;
  v41 = (v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_elapsedTimeObserverToken);
  *v41 = 0u;
  v41[1] = 0u;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_enablePageControlTimer) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_chevronDebounceTimer) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_swipeController) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataInteractor) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataPresenter) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataView) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___buttonsPresenter) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___buttonsView) = 0;
  if (sub_1E32AE9B0(v37))
  {
    v42 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v42 = MEMORY[0x1E69E7CD0];
  }

  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_observers) = v42;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isAutoAdvanceEnabled) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_forceDisableAutoAdvance) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_vuiIsUserInteractionEnabled) = 1;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldAutoAdvanceLastPage) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_autoAdvanceForIdleVideo) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_autoAdvancePageTimer) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_showsIndicators) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_swipeTransitionStyle) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldAlwaysMirrorMediaView) = 0;
  v43 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController__metadataViewTopOffsetStream;
  v73 = 0;
  sub_1E4200634();
  (*(v34 + 32))(v23 + v43, v24, v32);
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_metadataContentHeightObserver) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___layout) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isCurrentMetadataLoadedObserver) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isPlayingVideo) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_offerSelectionModalNotificationToken) = 0;
  *(v23 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels) = v66;
  v44 = *(v23 + v38);
  *(v25 + v38) = v68;
  v69 = v68;

  *(v25 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost) = v71;
  OUTLINED_FUNCTION_3_0(v36, &v73);
  *(v36 + 8) = v67;
  swift_unknownObjectWeakAssign();
  if (a23)
  {
    v45 = a22;
    v46 = a23;

    v47 = v70;
  }

  else
  {
    v47 = v70;
    if (a22)
    {
      OUTLINED_FUNCTION_122_7();
      objc_allocWithZone(VUIBackgroundMediaController);
      v45 = a22;
      v48 = a22;
      v49 = OUTLINED_FUNCTION_57();
      v52 = sub_1E3C589A0(v49, v50, v51);
    }

    else
    {
      v45 = 0;
      OUTLINED_FUNCTION_122_7();
      sub_1E3280A90(0, &qword_1EE23AF70, off_1E8728270);
      OUTLINED_FUNCTION_57();
      v52 = sub_1E39F8768();
    }

    v46 = v52;
  }

  *(v25 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) = v46;
  OUTLINED_FUNCTION_11_3(v40, v72);
  sub_1E3A4DAE4(v47, v40);
  swift_endAccess();
  *(v25 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewMetricsRecorder) = a21;
  *(v25 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_showsPageControl) = 1;

  OUTLINED_FUNCTION_25();
  v55 = objc_msgSendSuper2(v53, v54, v65);
  v56 = *&v55[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController];
  v57 = v55;
  [v56 setVideoSwappingAnimationType_];
  if (v71 - 2 < 3)
  {
    v58 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isAutoAdvanceEnabled;
    OUTLINED_FUNCTION_3_0(&v57[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isAutoAdvanceEnabled], v72);
    v57[v58] = 1;
    v59 = sub_1E3C46A28();
    [v59 setBackgroundStyle_];

    swift_unknownObjectRelease();

LABEL_15:
    sub_1E325F6F0(v47, &unk_1ECF296D0, &qword_1E429BAA0);
    goto LABEL_16;
  }

  if (v71)
  {
    v63 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isAutoAdvanceEnabled;
    OUTLINED_FUNCTION_3_0(&v57[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isAutoAdvanceEnabled], v72);
    v57[v63] = 0;
    v64 = sub_1E3C46A28();
    [v64 setBackgroundStyle_];

    [*&v57[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageControl] vui:2 setOverrideUserInterfaceStyle:?];

    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v60 = sub_1E3C46984();
  v61 = [v60 isAutoAdvanceToNextPageEnabled];

  swift_unknownObjectRelease();

  sub_1E325F6F0(v47, &unk_1ECF296D0, &qword_1E429BAA0);
  v62 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isAutoAdvanceEnabled;
  OUTLINED_FUNCTION_3_0(&v57[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isAutoAdvanceEnabled], v72);
  v57[v62] = v61;

LABEL_16:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C48EC4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0, &unk_1E42AB480);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_41();
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_showsGradient) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldUsePageControlProgress) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldUpdateMetadataViewDuringFullscreenTransition) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_pageControlBottomMarginConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_pageControlHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_pageControlBottomMargin) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldAdjustCaptionPosition) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_lastImpressedIndex) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_playerViewControllerObservable) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_playerTabViewControllers) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_hideGradientView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_carouselBehaviorEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaInfo) = 0;
  v7 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_countDownPresenter;
  type metadata accessor for CountDownProgressPresenter(0);
  *(v0 + v7) = sub_1E3C13BCC(1);
  v8 = v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_collectionImpressioner;
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___containerView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___mediaShowcaseConfig) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageControl) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageProgress) = 0;
  v9 = (v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_elapsedTimeObserverToken);
  *v9 = 0u;
  v9[1] = 0u;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_enablePageControlTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_chevronDebounceTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_swipeController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataInteractor) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___buttonsPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___buttonsView) = 0;
  if (sub_1E32AE9B0(v6))
  {
    v10 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_observers) = v10;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isAutoAdvanceEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_forceDisableAutoAdvance) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_vuiIsUserInteractionEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldAutoAdvanceLastPage) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_autoAdvanceForIdleVideo) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_autoAdvancePageTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_showsIndicators) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_swipeTransitionStyle) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldAlwaysMirrorMediaView) = 0;
  v11 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController__metadataViewTopOffsetStream;
  sub_1E4200634();
  (*(v4 + 32))(v0 + v11, v1, v2);
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_metadataContentHeightObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isCurrentMetadataLoadedObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isPlayingVideo) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_offerSelectionModalNotificationToken) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3C49448()
{
  OUTLINED_FUNCTION_93();
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A38, &qword_1E42C5C38);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_138();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v11, v4);
  v12 = v0;
  v13 = sub_1E41FFC94();
  v14 = sub_1E42067E4();

  if (os_log_type_enabled(v13, v14))
  {
    v146 = ObjectType;
    v15 = OUTLINED_FUNCTION_6_21();
    v155 = OUTLINED_FUNCTION_100();
    *v15 = 136315138;
    v16 = sub_1E3C486F4();
    sub_1E3270FC8(v16, v17, &v155);
    OUTLINED_FUNCTION_6_19();

    *(v15 + 4) = v1;
    _os_log_impl(&dword_1E323F000, v13, v14, "%s vuiViewDidLoad", v15, 0xCu);
    OUTLINED_FUNCTION_113_7();
    OUTLINED_FUNCTION_6_0();
    ObjectType = v146;
    OUTLINED_FUNCTION_6_0();

    (*(v6 + 8))(v10, v4);
  }

  else
  {

    (*(v6 + 8))(v10, v4);
  }

  v149.receiver = v12;
  v149.super_class = ObjectType;
  objc_msgSendSuper2(&v149, sel_vui_viewDidLoad);
  sub_1E3C4A524();
  v18 = &v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationDelegate];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v19 = *(v18 + 1), v20 = swift_getObjectType(), v21 = sub_1E3C46CA4(), v22 = (*(v19 + 8))(v12, v21, v20, v19), swift_unknownObjectRelease(), v21, (v22 & 1) != 0))
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_1E3C46CA4();
  }

  v24 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController;
  [v12 vui:*&v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController] addChildViewController:?];
  v25 = sub_1E3C468C4();
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];

  v26 = [v12 vuiView];
  if (!v26)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v27 = v26;
  v28 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___containerView;
  [v26 addSubview_];

  v29 = *&v12[v28];
  v30 = v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost];
  LOBYTE(v27) = v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost] != 0;
  v31 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_disableBackgroundExtension;
  OUTLINED_FUNCTION_3_0(&v29[OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_disableBackgroundExtension], &v150);
  v29[v31] = v27;
  v32 = *&v12[v24];
  v33 = v29;
  v34 = [v32 vuiView];
  sub_1E3B512EC(v34, v23);

  [*&v12[v24] vui:v12 didMoveToParentViewController:?];
  if (v30 == 1)
  {
    v35 = [*&v12[v24] &selRef_viewControllerWithDocumentDataSource_appContext_documentOptions_ + 3];
    if (!v35)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v36 = v35;
    [v35 setAccessibilityElementsHidden_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1E42A1E20;
  v38 = [*&v12[v28] leadingAnchor];
  v39 = OUTLINED_FUNCTION_90_11();
  if (!v39)
  {
    goto LABEL_65;
  }

  v40 = v39;
  v41 = [v39 leadingAnchor];

  v42 = OUTLINED_FUNCTION_130_9();
  *(v37 + 32) = v42;
  v43 = [*&v12[v28] trailingAnchor];
  v44 = OUTLINED_FUNCTION_90_11();
  if (!v44)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v45 = v44;
  v46 = [v44 trailingAnchor];

  v47 = OUTLINED_FUNCTION_130_9();
  *(v37 + 40) = v47;
  v48 = [*&v12[v28] topAnchor];
  v49 = OUTLINED_FUNCTION_90_11();
  if (!v49)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v50 = v49;
  v51 = [v49 topAnchor];

  v52 = OUTLINED_FUNCTION_130_9();
  *(v37 + 48) = v52;
  v53 = [*&v12[v28] bottomAnchor];
  v54 = OUTLINED_FUNCTION_90_11();
  if (!v54)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v55 = v54;
  v56 = objc_opt_self();
  v57 = [v55 bottomAnchor];

  v58 = [v33 constraintEqualToAnchor_];
  *(v37 + 56) = v58;
  sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
  OUTLINED_FUNCTION_6_19();
  sub_1E42062A4();
  OUTLINED_FUNCTION_11_5();

  [v56 activateConstraints_];

  v59 = [v12 &selRef_viewControllerWithDocumentDataSource_appContext_documentOptions_ + 3];
  if (!v59)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v60 = v59;
  [v59 vui_setNeedsLayout];

  v61 = [v12 &selRef_viewControllerWithDocumentDataSource_appContext_documentOptions_ + 3];
  if (!v61)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v62 = v61;
  [v61 vui_layoutIfNeeded];

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  OUTLINED_FUNCTION_143_5();
  if (!v108)
  {
LABEL_37:
    v107 = v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost];
    v108 = v107 == 2 || v107 == 4;
    if (!v108)
    {
      [*&v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController] mediaInfoIndex];
    }

    v109 = sub_1E3C46CA4();
    sub_1E3C47218();
    OUTLINED_FUNCTION_55_32();
    v110 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & v111) + 0x170))();

    if (sub_1E39DFFC8())
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_143_5();
      if (v108)
      {
        v112 = sub_1E3C468C4();
        sub_1E3B50B98(2, 0.5);
      }
    }

    if (sub_1E39DFFC8())
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_143_5();
      if (v108)
      {
        v113 = [v12 vuiView];
        if (!v113)
        {
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        v114 = v113;
        [v113 setClipsToBounds_];
      }
    }

    sub_1E3C4AA34(0, 0, 1);
    v115 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController;
    [*&v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController] setShouldPauseAtEnd_];
    [*&v12[v115] setShouldShowImageAndStopAfterPausingAtEnd_];
    sub_1E3C475DC();
    v116 = sub_1E3C46CA4();
    sub_1E3C4ACD4();
    OUTLINED_FUNCTION_55_32();
    (*((*v110 & v117) + 0x190))();

    sub_1E3C4AD14();
    sub_1E3C4B20C();
    v119 = v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost] == 2 && sub_1E3C54538(v118) > 2;
    v120 = [v12 vuiView];
    if (v120)
    {
      v121 = v120;
      type metadata accessor for PaginatingSwipeController();
      v122 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_carouselBehaviorEnabled;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v123 = sub_1E41411F0(v121, v12[v122], 0, v119);
      v124 = &v123[OBJC_IVAR____TtC8VideosUI25PaginatingSwipeController_dataSource];
      OUTLINED_FUNCTION_3_0(&v123[OBJC_IVAR____TtC8VideosUI25PaginatingSwipeController_dataSource], &v154);
      *(v124 + 1) = &off_1F5D795E0;
      swift_unknownObjectWeakAssign();
      v125 = sub_1E3C46984();
      [v125 metadataFadeInSpeed];
      v127 = v126;

      v128 = OBJC_IVAR____TtC8VideosUI25PaginatingSwipeController_metadataFadeInSpeed;
      OUTLINED_FUNCTION_3_0(&v123[OBJC_IVAR____TtC8VideosUI25PaginatingSwipeController_metadataFadeInSpeed], &v153);
      *&v123[v128] = v127;
      if ((sub_1E39DFFC8() & 1) != 0 || [objc_opt_self() isVision])
      {
        v129 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_swipeTransitionStyle;
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        sub_1E4140DBC(v12[v129]);
        v130 = objc_opt_self();
        if (([v130 isPad] & 1) != 0 || objc_msgSend(v130, sel_isMac))
        {
          v131 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldAlwaysMirrorMediaView;
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          LOBYTE(v131) = v12[v131];
          v132 = OBJC_IVAR____TtC8VideosUI25PaginatingSwipeController_shouldAlwaysMirrorMediaView;
          OUTLINED_FUNCTION_3_0(&v123[OBJC_IVAR____TtC8VideosUI25PaginatingSwipeController_shouldAlwaysMirrorMediaView], &v151);
          v123[v132] = v131;
        }
      }

      v133 = *&v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_swipeController];
      *&v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_swipeController] = v123;
      v134 = v123;

      v135 = sub_1E3C468C4();
      v136 = &v135[OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_delegate];
      OUTLINED_FUNCTION_3_0(&v135[OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_delegate], &v152);
      *(v136 + 1) = &off_1F5D9A4D0;
      OUTLINED_FUNCTION_74();
      swift_unknownObjectWeakAssign();

      v137 = sub_1E3C4B570();
      if (v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost] - 1 > 3)
      {
        goto LABEL_63;
      }

      if ([*&v12[v115] view])
      {
        OUTLINED_FUNCTION_145_1();

        v138 = *&v12[v115];
        swift_getKeyPath();
        v139 = v138;
        sub_1E41FE2F4();

        OUTLINED_FUNCTION_4_0();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        OUTLINED_FUNCTION_10_99();
        sub_1E328FCF4(v140, v141, v142);
        OUTLINED_FUNCTION_40_1();
        sub_1E4200844();
        OUTLINED_FUNCTION_38();

        v143 = OUTLINED_FUNCTION_98_9();
        v144(v143);
        OUTLINED_FUNCTION_11_3(&v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_observers], &v148);
        sub_1E42004C4();
        swift_endAccess();

LABEL_63:
        sub_1E3C4B800();
        nullsub_1();
        OUTLINED_FUNCTION_54_0();
        return;
      }

      goto LABEL_76;
    }

    goto LABEL_71;
  }

  if (!OUTLINED_FUNCTION_163_4())
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_145_1();
  v63 = sub_1E3C46A28();
  [v23 vui:v63 addSubview:0 oldView:?];

  v64 = OUTLINED_FUNCTION_163_4();
  if (!v64)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v65 = v64;
  v66 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageControl;
  [v64 vui:*&v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageControl] bringSubviewToFront:?];

  [*&v12[v66] setTranslatesAutoresizingMaskIntoConstraints_];
  v67 = *&v12[v66];
  v68 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  [v67 setNumberOfPages_];
  [*&v12[v66] setCurrentPage_];
  [*&v12[v66] setHidesForSinglePage_];
  [*&v12[v66] setAccessibilityIgnoresInvertColors_];
  v69 = v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost];
  v147 = v69;
  if (v69 <= 4 && ((1 << v69) & 0x16) != 0)
  {
    v70 = OUTLINED_FUNCTION_163_4();
    if (!v70)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v71 = v70;
    v72 = [v70 bottomAnchor];
    goto LABEL_28;
  }

  v73 = OUTLINED_FUNCTION_163_4();
  if (v73)
  {
    v74 = v73;
    v71 = [v73 safeAreaLayoutGuide];

    v72 = [v71 bottomAnchor];
LABEL_28:
    v75 = v72;

    v76 = *&v12[v66];
    v77 = v75;
    v78 = [v76 bottomAnchor];
    v79 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_pageControlBottomMargin;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v80 = [v78 constraintEqualToAnchor:v77 constant:-*&v12[v79]];

    v145 = v77;
    v81 = *&v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_pageControlBottomMarginConstraint];
    *&v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_pageControlBottomMarginConstraint] = v80;
    v82 = v80;

    v83 = [*&v12[v66] heightAnchor];
    OUTLINED_FUNCTION_145_1();
    v84 = *(sub_1E3C47C88() + 112);

    *&v86 = COERCE_DOUBLE((*(*v84 + 304))(v85));
    v88 = v87;

    v89 = *&v86;
    if (v88)
    {
      v89 = 26.0;
    }

    v90 = [v80 constraintEqualToConstant_];

    v91 = *&v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_pageControlHeightConstraint];
    *&v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_pageControlHeightConstraint] = v90;
    v92 = v90;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_1E42A73A0;
    *(v93 + 32) = v82;
    v94 = *&v12[v66];
    v95 = v82;
    v96 = [v94 centerXAnchor];
    v97 = [v12 vuiView];
    if (!v97)
    {
      goto LABEL_75;
    }

    v98 = v97;
    v99 = objc_opt_self();
    v100 = [v98 centerXAnchor];

    v58 = [v96 constraintEqualToAnchor_];
    *(v93 + 40) = v58;
    *(v93 + 48) = v92;
    v101 = v92;
    sub_1E42062A4();
    OUTLINED_FUNCTION_55_12();

    [v99 activateConstraints_];

    if (v147 == 2)
    {
      [*&v12[v66] setBackgroundStyle_];
    }

    [*&v12[v66] addTarget:v12 action:sel_handlePageControlChanged forControlEvents:4096];
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_143_5();
    if (v108)
    {
      v102 = sub_1E3C46B2C();
      [v102 setResetsToInitialPageAfterEnd_];

      v103 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageProgress;
      [*&v12[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageProgress] setDelegate_];
      v104 = *&v12[v103];
      v105 = *&v12[v66];
      v106 = v104;
      [v105 setProgress_];
    }

    goto LABEL_37;
  }

LABEL_79:
  __break(1u);
}

void sub_1E3C4A524()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v47 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33_0();
  v10 = VUISignpostLogObject(v9);
  sub_1E41FFBC4();
  v11 = sub_1E4206BA4();
  v12 = VUISignpostLogObject(v11);
  OUTLINED_FUNCTION_136_3();
  sub_1E41FFBA4();

  v13 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaInfo);
  if (!v13)
  {
    v20 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v21 = *(v0 + v20);
    v22 = sub_1E32AE9B0(v21);
    if (v22)
    {
      v23 = v22;
      v45 = v3;
      v46 = v6;

      sub_1E4207574();
      if (v23 < 0)
      {
        goto LABEL_30;
      }

      v24 = 0;
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v25 = OUTLINED_FUNCTION_88();
          v26 = MEMORY[0x1E6911E60](v25);
        }

        else
        {
          v26 = *(v21 + 8 * v24 + 32);
        }

        ++v24;
        sub_1E3C4F530(v26);

        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
      }

      while (v23 != v24);

      v6 = v46;
      v3 = v45;
    }

    v27 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController;
    v28 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController);

    if (sub_1E3C58F64(v28))
    {
      v29 = OUTLINED_FUNCTION_26_5();
      v30 = sub_1E3C58A04(v29, v21);

      if (v30)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v31 = [*(v0 + v27) mediaInfoIndex];
    if (v3)
    {
      goto LABEL_16;
    }

    if (v31 != v5)
    {
LABEL_23:
      v36 = *(v0 + v27);
      v33 = sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
      v37 = v36;
      OUTLINED_FUNCTION_26_5();
      sub_1E42062A4();
      OUTLINED_FUNCTION_6_19();

      [v21 setMediaInfos:v33 selectedIndex:v5 animated:1];
      goto LABEL_24;
    }

LABEL_18:
    v35 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost);
    if (v35 == 4 || v35 == 3 || v35 == 2)
    {

      goto LABEL_25;
    }

    if ((v3 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_16:
    v32 = *(v0 + v27);
    v33 = sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
    v34 = v32;
    OUTLINED_FUNCTION_26_5();
    sub_1E42062A4();
    OUTLINED_FUNCTION_6_19();

    [v21 setMediaInfos:v33 animated:1];
LABEL_24:

    goto LABEL_25;
  }

  v14 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E4298880;
  *(v15 + 32) = v13;
  v16 = sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
  v17 = v13;
  v18 = v3;
  v19 = v14;
  OUTLINED_FUNCTION_33_11();
  sub_1E42062A4();
  OUTLINED_FUNCTION_26_5();

  [v19 setMediaInfos:v16 animated:0];

  v3 = v18;
LABEL_25:
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  sub_1E3C4F9F4(v38);
  v40 = v39;

  sub_1E3C46D1C();
  if (v3)
  {
    v5 = [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) mediaInfoIndex];
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v41 = OUTLINED_FUNCTION_18();
    sub_1E40797E8(v40, v5, v41 & 1);

    sub_1E3C46D8C();
    v42 = [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) mediaInfoIndex];
    sub_1E3926874(v42, 0, *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost) == 3);

    v43 = sub_1E4206B94();
    v44 = VUISignpostLogObject(v43);
    OUTLINED_FUNCTION_136_3();
    sub_1E41FFBA4();

    (*(v47 + 8))(v1, v6);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1E3C4AA34(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  [*(v3 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) setMediaInfoIndex:a1 imageVideoSwapBehavior:a2 animated:a3 & 1];
  v6 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_lastImpressedIndex;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v7 = *(v4 + v6);
  v8 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v9 = sub_1E32AE9B0(*(v4 + v8));
  if (v9 >= 1 && v7 < v9)
  {
    v11 = *(v4 + v6);
    if (v11 != a1)
    {
      sub_1E3C4D868(v11);
    }
  }

  sub_1E3C4DA74(a1);
  sub_1E3C46D8C();
  sub_1E3926874(a1, 0, *(v4 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost) == 3);

  *(v4 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isPlayingVideo) = 0;
  sub_1E3C47D18();
  v12 = sub_1E3C46CA4();
  v13 = sub_1E3C4ACD4();
  (*((*MEMORY[0x1E69E7D40] & *v12) + 0x190))();

  sub_1E3C4E738();
  sub_1E3C475DC();
  sub_1E3C46D1C();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

  v14 = OUTLINED_FUNCTION_38();
  sub_1E407B75C(v14);

  v15 = *(v4 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataView);
  v16 = sub_1E3C4B6F0();

  [v16 setDelegate_];
  v17 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_showsPageControl;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v4 + v17))
  {
    goto LABEL_11;
  }

  v18 = sub_1E3C46A28();
  v19 = [v18 superview];

  if (v19)
  {

LABEL_11:
    v20 = sub_1E3C46A28();
    [v20 setCurrentPage_];
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v21 = OUTLINED_FUNCTION_27_0();
    v22(v21);
    swift_unknownObjectRelease();
  }
}

id sub_1E3C4ACD4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) currentMediaInfo];

  return v1;
}

void sub_1E3C4AD14()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v3 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v36 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  if (sub_1E3C46C10())
  {
    v6 = [objc_opt_self() defaultCenter];
    v7 = *(v2 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController);
    OUTLINED_FUNCTION_24_4();
    sub_1E4206C14();

    OUTLINED_FUNCTION_4_0();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_56_10(v8);
    OUTLINED_FUNCTION_9_103();
    sub_1E3C59160(v9, v10);
    OUTLINED_FUNCTION_102_12();
    sub_1E4200844();
    OUTLINED_FUNCTION_16_5();

    v11 = OUTLINED_FUNCTION_74();
    v12(v11);
    OUTLINED_FUNCTION_44_7(v2 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_observers);
    sub_1E42004C4();
    swift_endAccess();
  }

  v33 = objc_opt_self();
  v13 = [v33 defaultCenter];
  v14 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController;
  v34 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController;
  v15 = *(v2 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController);
  OUTLINED_FUNCTION_146();
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_45_2(v16);
  OUTLINED_FUNCTION_9_103();
  sub_1E3C59160(v17, v18);
  sub_1E4200844();
  OUTLINED_FUNCTION_76();

  v35 = *(v36 + 8);
  v19 = OUTLINED_FUNCTION_74();
  v20(v19);
  v21 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_observers;
  OUTLINED_FUNCTION_44_7(v2 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_observers);
  sub_1E42004C4();
  swift_endAccess();

  v22 = [v33 &selRef_connectWithCompletionHandler_progressHandler_ + 5];
  v23 = *&v14[v2];
  OUTLINED_FUNCTION_162_5();

  OUTLINED_FUNCTION_4_0();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_45_2(v24);
  sub_1E4200844();
  OUTLINED_FUNCTION_76();

  v35(v1, v3);
  OUTLINED_FUNCTION_44_7(v2 + v21);
  sub_1E42004C4();
  swift_endAccess();

  v25 = [v33 &selRef_connectWithCompletionHandler_progressHandler_ + 5];
  v26 = *(v2 + v34);
  OUTLINED_FUNCTION_162_5();

  OUTLINED_FUNCTION_4_0();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_45_2(v27);
  sub_1E4200844();
  OUTLINED_FUNCTION_76();

  v28 = OUTLINED_FUNCTION_74();
  (v35)(v28);
  OUTLINED_FUNCTION_44_7(v2 + v21);
  sub_1E42004C4();
  swift_endAccess();

  v29 = [v33 &selRef_connectWithCompletionHandler_progressHandler_ + 5];
  v30 = *(v2 + v34);
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_56_10(v31);
  OUTLINED_FUNCTION_102_12();
  sub_1E4200844();
  OUTLINED_FUNCTION_16_5();

  v32 = OUTLINED_FUNCTION_74();
  (v35)(v32);
  OUTLINED_FUNCTION_44_7(v2 + v21);
  sub_1E42004C4();
  swift_endAccess();

  sub_1E3C550B0();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C4B20C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v33 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v32 = v7 - v6;
  OUTLINED_FUNCTION_138();
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_12_7();
  v10(v2);
  v11 = v1;
  v12 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_165_5())
  {
    v13 = OUTLINED_FUNCTION_6_21();
    v34 = OUTLINED_FUNCTION_100();
    *v13 = 136315138;
    v14 = sub_1E3C486F4();
    OUTLINED_FUNCTION_49_1(v14, v15);
    OUTLINED_FUNCTION_12_1();

    *(v13 + 4) = v0;
    OUTLINED_FUNCTION_62_2();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_79();
  }

  v21 = OUTLINED_FUNCTION_123_6();
  v22(v21, v8);
  v23 = objc_opt_self();
  v24 = [v23 defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_131(v25);
  OUTLINED_FUNCTION_9_103();
  sub_1E3C59160(v26, v27);
  OUTLINED_FUNCTION_116();
  sub_1E4200844();
  OUTLINED_FUNCTION_50();

  v28 = *(v33 + 8);
  v28(v32, v3);
  v29 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_observers;
  OUTLINED_FUNCTION_44_7(v11 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_observers);
  sub_1E42004C4();
  swift_endAccess();

  v30 = [v23 defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_131(v31);
  OUTLINED_FUNCTION_116();
  sub_1E4200844();
  OUTLINED_FUNCTION_50();

  v28(v32, v3);
  OUTLINED_FUNCTION_44_7(v11 + v29);
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3C4B570()
{
  v1 = v0;
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v3 = [objc_opt_self() defaultCenter];
  v4 = *sub_1E37E1340();
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_56_10(v5);
  OUTLINED_FUNCTION_9_103();
  sub_1E3C59160(v6, v7);
  OUTLINED_FUNCTION_102_12();
  sub_1E4200844();
  OUTLINED_FUNCTION_16_5();

  v8 = OUTLINED_FUNCTION_74();
  v9(v8);
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_observers, v11);
  sub_1E42004C4();
  swift_endAccess();

  return result;
}

id sub_1E3C4B6F0()
{
  OUTLINED_FUNCTION_12_1();
  v5[3] = swift_getObjectType();
  v5[0] = v1;
  objc_allocWithZone(MEMORY[0x1E69DD060]);
  v2 = v1;
  v3 = sub_1E3814AF0(v5, sel_mediaControllerTapped_);
  [v3 setCancelsTouchesInView_];
  [v3 setDelegate_];
  sub_1E3C58FDC(0xD000000000000022, 0x80000001E4279570, v3);

  [v0 addGestureRecognizer_];
  return v3;
}

id sub_1E3C4B7CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

void sub_1E3C4B800()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A30, &qword_1E429F570);
  OUTLINED_FUNCTION_0_10();
  v83 = v4;
  v84 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v82 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v80 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35BD0, &qword_1E42C5FB8);
  OUTLINED_FUNCTION_0_10();
  v71 = v11;
  v72 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35BD8, &qword_1E42C5FC0);
  OUTLINED_FUNCTION_0_10();
  v75 = v14;
  v76 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_35_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35BE0, &qword_1E42C5FC8);
  OUTLINED_FUNCTION_0_10();
  v77 = v17;
  v78 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v74 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35BE8, &qword_1E42C5FD0);
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v79 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A38, &qword_1E42C5C38);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_14_5();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35BF0, &unk_1E42C5FD8);
  OUTLINED_FUNCTION_0_10();
  v73 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v65 - v33;
  if (!*(v2 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isCurrentMetadataLoadedObserver))
  {
    v68 = v20;
    v69 = v32;
    v65 = v1;
    v66 = v31;
    v70 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isCurrentMetadataLoadedObserver;
    sub_1E3C46D8C();
    sub_1E3925B1C();

    v35 = *(v2 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController);
    swift_getKeyPath();
    v67 = v22;
    v36 = v35;
    sub_1E41FE2F4();

    OUTLINED_FUNCTION_10_99();
    sub_1E328FCF4(v37, v38, v39);
    sub_1E4200744();
    v40 = OUTLINED_FUNCTION_88();
    v41(v40);
    OUTLINED_FUNCTION_28_26(&unk_1EE28A0D0, &qword_1ECF3D8F0, &qword_1E42981C0);
    sub_1E328FCF4(&qword_1EE28A308, &unk_1ECF35BF0, &unk_1E42C5FD8);
    sub_1E4200714();
    sub_1E328FCF4(&unk_1EE28A390, &qword_1ECF35BD0, &qword_1E42C5FB8);
    v42 = v65;
    sub_1E4200744();
    v43 = OUTLINED_FUNCTION_98_9();
    v44(v43);
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v45 = sub_1E4206A04();
    v85 = v45;
    sub_1E42069A4();
    v46 = v80;
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    sub_1E328FCF4(&qword_1EE28A328, &qword_1ECF35BD8, &qword_1E42C5FC0);
    sub_1E3746800();
    v51 = v74;
    v52 = v76;
    sub_1E42007D4();
    sub_1E325F6F0(v46, &unk_1ECF2D2B0, &unk_1E429D3D0);

    (*(v75 + 8))(v42, v52);
    OUTLINED_FUNCTION_3_15();
    sub_1E328FCF4(v53, v54, v55);
    v56 = v78;
    v57 = v79;
    sub_1E4200794();
    (*(v77 + 8))(v51, v56);
    OUTLINED_FUNCTION_4_0();
    v58 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v58);
    sub_1E328FCF4(&qword_1EE28A368, &qword_1ECF35BE8, &qword_1E42C5FD0);
    sub_1E4200844();
    OUTLINED_FUNCTION_31_4();

    v59 = OUTLINED_FUNCTION_24_4();
    v60(v59);
    (*(v73 + 8))(v29, v81);
    (*(v69 + 8))(v34, v66);
    *(v2 + v70) = v57;
  }

  v61 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_metadataContentHeightObserver;
  if (*(v2 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_metadataContentHeightObserver))
  {

    sub_1E42004E4();
  }

  sub_1E3C46D8C();
  v62 = v82;
  sub_1E39256CC();

  OUTLINED_FUNCTION_4_0();
  v63 = swift_allocObject();
  OUTLINED_FUNCTION_45_2(v63);
  OUTLINED_FUNCTION_28_26(&qword_1EE28A110, &qword_1ECF35A30, &qword_1E429F570);
  OUTLINED_FUNCTION_40_1();
  v64 = v84;
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  (*(v83 + 8))(v62, v64);
  *(v2 + v61) = v62;

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C4C0E0()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_12_1();
  ObjectType = swift_getObjectType();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_12_7();
  v6(v2);
  v7 = v1;
  v8 = sub_1E41FFC94();
  sub_1E42067E4();

  if (OUTLINED_FUNCTION_165_5())
  {
    v22 = v4;
    v9 = OUTLINED_FUNCTION_6_21();
    v23 = OUTLINED_FUNCTION_100();
    *v9 = 136315138;
    v10 = sub_1E3C486F4();
    OUTLINED_FUNCTION_49_1(v10, v11);
    OUTLINED_FUNCTION_12_1();

    *(v9 + 4) = v0;
    OUTLINED_FUNCTION_62_2();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_79();

    v17 = OUTLINED_FUNCTION_123_6();
    v19 = v22;
  }

  else
  {

    v17 = OUTLINED_FUNCTION_123_6();
    v19 = v4;
  }

  v18(v17, v19);
  v24.receiver = v7;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, sel_vui_viewWillDisappear_, v0 & 1);
  sub_1E3C46D1C();
  sub_1E407C2C4();

  if (sub_1E3C46500())
  {
    v20 = v7[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost];
    if (v20 == 4 || v20 == 1)
    {
      sub_1E3C4C2D0();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C4C2D0()
{
  OUTLINED_FUNCTION_26_0();
  v2 = (*(v1 + 552))();
  if (!v2)
  {
    v37 = 0u;
    v38 = 0u;
    return sub_1E325F6F0(&v37, &unk_1ECF296E0, &unk_1E4298030);
  }

  v35 = &type metadata for ViewModelKeys;
  v36 = &off_1F5D7BCA8;
  LOBYTE(v34[0]) = 8;
  v3 = MEMORY[0x1E69E7CA0];
  sub_1E3F9F164(v34, v2, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  if (!*(&v38 + 1))
  {
    return sub_1E325F6F0(&v37, &unk_1ECF296E0, &unk_1E4298030);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  result = OUTLINED_FUNCTION_160_3(v34, v4, v5, v6, v7, v8, v9, v10, v30, v32, v33);
  if ((result & 1) == 0)
  {
    return result;
  }

  v12 = v34[0];
  v13 = v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_collectionImpressioner;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!*(v13 + 24))
  {
  }

  sub_1E327F454(v13, v34);
  __swift_project_boxed_opaque_existential_1(v34, v35);
  OUTLINED_FUNCTION_117_8();
  v14 = OUTLINED_FUNCTION_38();
  v16 = v15(v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  if (!v16)
  {
  }

  if (*(v16 + 16))
  {
    v35 = &type metadata for ViewModelMetrics;
    v36 = &off_1F5D74828;
    OUTLINED_FUNCTION_104_8();
    sub_1E3F9F164(v17, v12, v3 + 8);

    if (*(&v38 + 1))
    {
      if (OUTLINED_FUNCTION_160_3(&v32, v18, v19, v20, v21, v22, v23, v24, v31, v32, v33))
      {
        v25 = v32;
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
LABEL_18:

        type metadata accessor for Metrics(0);
        v28 = OUTLINED_FUNCTION_50();
        v29 = *sub_1E3BA5560(v28, 1);
        (*(v29 + 288))(0, v16, 0, v25);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v34);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      sub_1E325F6F0(&v37, &unk_1ECF296E0, &unk_1E4298030);
    }

    type metadata accessor for Metrics(0);
    v26 = OUTLINED_FUNCTION_50();
    v27 = sub_1E3BA7F00(v26);
    if (v27)
    {
      v25 = v27;
      goto LABEL_18;
    }
  }

  else
  {
  }
}

void sub_1E3C4C5CC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_12_1();
  ObjectType = swift_getObjectType();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_12_7();
  v6(v2);
  v7 = v1;
  v8 = sub_1E41FFC94();
  sub_1E42067E4();

  if (OUTLINED_FUNCTION_165_5())
  {
    v9 = OUTLINED_FUNCTION_6_21();
    OUTLINED_FUNCTION_100();
    *v9 = 136315138;
    v10 = sub_1E3C486F4();
    OUTLINED_FUNCTION_49_1(v10, v11);
    OUTLINED_FUNCTION_12_1();

    *(v9 + 4) = v0;
    OUTLINED_FUNCTION_62_2();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_36_40();
    OUTLINED_FUNCTION_79();
  }

  v17 = OUTLINED_FUNCTION_123_6();
  v18(v17, v4);
  v21.receiver = v7;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_vui_viewWillAppear_, v0 & 1);
  v19 = sub_1E3C46D1C();
  sub_1E4079598(v19, v20);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C4C7C4()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v38, sel_viewWillLayoutSubviews);
  if ((TVAppFeature.isEnabled.getter(20, v2, v3) & 1) == 0)
  {
    return;
  }

  v4 = v0[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost];
  v5 = v4 > 4;
  v6 = (1 << v4) & 0x16;
  if (!v5 && v6 != 0)
  {
    v8 = sub_1E3C47C88();
    OUTLINED_FUNCTION_129_7(v8);

    OUTLINED_FUNCTION_36();
    v10 = *(v9 + 312);
    v11 = 0x403A000000000000;
LABEL_7:
    v10(v11, 0);
    goto LABEL_8;
  }

  v19 = [v0 vuiView];
  if (!v19)
  {
    __break(1u);
    return;
  }

  v20 = v19;
  [v19 bounds];
  v22 = v21;
  v24 = v23;

  type metadata accessor for LayoutGrid();
  v25 = sub_1E3A2579C(v22);
  if ((sub_1E3A24FDC(v25) & 1) == 0)
  {
    v28 = sub_1E3C46984();
    [v28 heightThresholdForBottomPadding];
    v30 = v29;

    v31 = sub_1E3C47C88();
    OUTLINED_FUNCTION_129_7(v31);

    TVAppFeature.isEnabled.getter(10, v32, v33);
    OUTLINED_FUNCTION_36();
    v10 = *(v35 + 312);
    if (v30 >= v24)
    {
      v36 = 0x4047000000000000;
      v37 = 0x4041000000000000;
    }

    else
    {
      v36 = 0x4050800000000000;
      v37 = 0x4045000000000000;
    }

    if (v34)
    {
      v11 = v37;
    }

    else
    {
      v11 = v36;
    }

    goto LABEL_7;
  }

  v26 = sub_1E3C47C88();
  OUTLINED_FUNCTION_129_7(v26);

  OUTLINED_FUNCTION_36();
  (*(v27 + 312))(0x404C000000000000, 0);
LABEL_8:

  v12 = *&v1[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_pageControlHeightConstraint];
  if (v12)
  {
    v13 = v12;
    sub_1E3C47C88();

    OUTLINED_FUNCTION_36();
    *&v15 = COERCE_DOUBLE((*(v14 + 304))());
    v17 = v16;

    v18 = *&v15;
    if (v17)
    {
      v18 = 26.0;
    }

    [v13 setConstant_];
  }
}

uint64_t sub_1E3C4CAB4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_79_1();
    v1 = OUTLINED_FUNCTION_106_13();
    v2(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E3C4CB90()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_vui_viewDidLayoutSubviews);
  if ([v0 vuiView])
  {
    OUTLINED_FUNCTION_106();
    type metadata accessor for LayoutGrid();
    [v0 frame];
    v2 = v1;

    sub_1E3A2579C(v2);
    if (v0[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost] - 1 <= 3)
    {
      sub_1E3C46D8C();
      v3 = sub_1E3C46A28();
      [v3 frame];
      OUTLINED_FUNCTION_3();

      v4 = OUTLINED_FUNCTION_6();
      sub_1E3925EE8(v4, v5, v6, v7);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3C4CD98()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v37 = v8;
  v39 = v9;
  v40 = v10;
  v12 = v11;
  v13 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_33_0();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v38 = v13;
  v15(v1);
  v16 = v0;
  v17 = sub_1E41FFC94();
  v18 = sub_1E42067E4();

  if (os_log_type_enabled(v17, v18))
  {
    swift_slowAlloc();
    v35 = OUTLINED_FUNCTION_11_16();
    v36 = v5;
    *v3 = 136315650;
    v19 = sub_1E3C486F4();
    v21 = v7;
    v22 = v12;
    v23 = OUTLINED_FUNCTION_49_1(v19, v20);

    *(v3 + 4) = v23;
    v12 = v22;
    v7 = v21;
    *(v3 + 12) = 1024;
    *(v3 + 14) = v12 & 1;
    *(v3 + 18) = 1024;
    *(v3 + 20) = v39 & 1;
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v24, v25, v26, v27, v28, 0x18u);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v5 = v36;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v29 = OUTLINED_FUNCTION_137_5();
  v30(v29, v38);
  [*&v16[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController] transitionToForeground:v12 & 1 withPlaybackControls:v39 & 1 animated:{v40 & 1, v35}];
  v31 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldUpdateMetadataViewDuringFullscreenTransition;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (v16[v31] == 1)
  {
    sub_1E3C4D0C8(v12 & 1, v40 & 1, v37, v7, v5, v3, 0.25);
  }

  v32 = &v16[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationDelegate];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v33 = *(v32 + 1);
    ObjectType = swift_getObjectType();
    (*(v33 + 24))(v16, (v12 ^ 1) & 1, ObjectType, v33);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3C4D0C8(char a1, char a2, void (*a3)(void), uint64_t a4, void (*a5)(void), uint64_t a6, double a7)
{
  v8 = v7;
  OUTLINED_FUNCTION_4_0();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  v27 = v16;
  OUTLINED_FUNCTION_4_0();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a1;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;

  sub_1E37FAED4(a3, a4);
  sub_1E37FAED4(a5, a6);
  if ((a1 & 1) == 0)
  {
    v19 = sub_1E3C46CA4();
    v20 = (*((*MEMORY[0x1E69E7D40] & *v19) + 0x148))();

    if (v20)
    {
      [v20 setHidden_];
    }

    if (*(v8 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost) == 1)
    {
      v21 = sub_1E3C46A28();
      [v21 setHidden_];
    }
  }

  if (a2)
  {

    v22 = objc_opt_self();
    v32 = sub_1E3C58E5C;
    v33 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_1E378AEA4;
    v31 = &block_descriptor_80;
    v23 = _Block_copy(&aBlock);

    v32 = sub_1E3C58E6C;
    v33 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_1E37EB82C;
    v31 = &block_descriptor_29_0;
    v24 = _Block_copy(&aBlock);

    [v22 vui:v23 animateWithDuration:v24 animations:a7 completion:?];

    _Block_release(v24);
    _Block_release(v23);
  }

  else
  {
    sub_1E3C506A4(v15, a1 & 1, a3);

    sub_1E3C507D8(v17, a1 & 1, a5);
  }

  return result;
}

void sub_1E3C4D4B0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_12();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A40, &qword_1E42C5C78);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v35 - v12;
  v35[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A48, &unk_1E42C5C80);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_41();
  *(v3 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_playerTabViewControllers) = v5;

  v15 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController;
  v16 = [*(v3 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) avPlayerViewController];
  if (v16)
  {
    v17 = v16;
    sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
    OUTLINED_FUNCTION_20_2();
    v18 = sub_1E42062A4();
    [v17 setCustomInfoViewControllers_];
  }

  v19 = *(v3 + v15);
  swift_getKeyPath();
  v20 = v19;
  sub_1E41FE2F4();

  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v21 = sub_1E4206A04();
  v35[1] = v21;
  sub_1E42069A4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_10_99();
  sub_1E328FCF4(v26, v27, v28);
  sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F6F0(v2, &unk_1ECF2D2B0, &unk_1E429D3D0);

  (*(v10 + 8))(v13, v8);
  OUTLINED_FUNCTION_4_0();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_56_10(v29);
  OUTLINED_FUNCTION_3_15();
  sub_1E328FCF4(v30, v31, v32);
  sub_1E4200844();
  OUTLINED_FUNCTION_16_5();

  v33 = OUTLINED_FUNCTION_74();
  v34(v33);
  *(v3 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_playerViewControllerObservable) = v1;

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3C4D818@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 avPlayerViewController];
  *a2 = result;
  return result;
}

void sub_1E3C4D868(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v27 = *(v2 + v4);
    v23 = a1;
    v24 = 0;

    v5 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_0_32();
    sub_1E328FCF4(v7, &unk_1ECF2C790, &qword_1E42996A0);
    sub_1E38D2054(&v23, &v28);
    v8 = v28;

    if (v8)
    {
      v10 = *(v2 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost);
      if (v10 == 4 || v10 == 1)
      {
        sub_1E3C4C2D0();
      }

      else
      {
        v12 = (*(*v8 + 576))(v9);
        if (v12)
        {
          v13 = v12;
          v14 = v2 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_collectionImpressioner;
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          if (*(v14 + 24))
          {
            v15 = OUTLINED_FUNCTION_148_6();
            sub_1E327F454(v15, v16);
            v17 = v25;
            v18 = v26;
            __swift_project_boxed_opaque_existential_1(&v23, v25);
            (*(*(v18 + 8) + 24))(v13, v17);
            __swift_destroy_boxed_opaque_existential_1Tm(&v23);
            if (*(v14 + 24))
            {
              v19 = OUTLINED_FUNCTION_148_6();
              sub_1E327F454(v19, v20);
              __swift_project_boxed_opaque_existential_1(&v23, v25);
              v21 = OUTLINED_FUNCTION_27_0();
              v22(v21);

              __swift_destroy_boxed_opaque_existential_1Tm(&v23);
              return;
            }
          }
        }
      }
    }
  }
}

id sub_1E3C4DA74(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels;
  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  *&v65 = *&v2[v4];
  v61 = a1;
  v62 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
  OUTLINED_FUNCTION_0_32();
  sub_1E328FCF4(v6, &unk_1ECF2C790, &qword_1E42996A0);
  sub_1E38D2054(&v61, &v60);
  v7 = v60;

  if (!v7)
  {
    return result;
  }

  v8 = v2[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost];
  if (v8 == 4)
  {
    goto LABEL_26;
  }

  if (v8 == 1)
  {
    v9 = (*(*v7 + 576))(result);
    v10 = MEMORY[0x1E69E7CA0];
    if (v9)
    {
      v11 = v9;
      OUTLINED_FUNCTION_26_0();
      v14 = v13;
      (*(v12 + 128))();
      OUTLINED_FUNCTION_16_5();

      if (v14)
      {
LABEL_7:
        objc_opt_self();
        v15 = OUTLINED_FUNCTION_122();
        sub_1E3744600(v15);
        OUTLINED_FUNCTION_6_19();

        sub_1E4205C44();
        OUTLINED_FUNCTION_35_0();

        v16 = [v11 createWithMetricsData_];

        v17 = [objc_opt_self() sharedInstance];
        [v17 recordPage_];

LABEL_26:
        sub_1E3C4DFE0();
        goto LABEL_27;
      }
    }

    v34 = (*(*v7 + 552))();
    if (v34)
    {
      v35 = v34;
      v63 = &type metadata for ViewModelKeys;
      v64 = &off_1F5D7BCA8;
      OUTLINED_FUNCTION_104_8();
      sub_1E3F9F164(v36, v35, v10 + 8);

      __swift_destroy_boxed_opaque_existential_1Tm(&v61);
      if (*(&v66 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        if ((OUTLINED_FUNCTION_161_4(&v61, v37, v38, v39, v40, v41, v42, v43, v54, v56, v58) & 1) == 0)
        {
          goto LABEL_26;
        }

        v44 = v61;
        v63 = &type metadata for ViewModelMetrics;
        v64 = &off_1F5D74828;
        OUTLINED_FUNCTION_104_8();
        sub_1E3F9F164(v45, v44, v10 + 8);

        if (*(&v66 + 1))
        {
          v11 = OUTLINED_FUNCTION_161_4(&v60, v46, v47, v48, v49, v50, v51, v52, v55, v57, v59);
          v14 = v60;
          __swift_destroy_boxed_opaque_existential_1Tm(&v61);
          if ((v11 & 1) == 0 || !v14)
          {
            goto LABEL_26;
          }

          goto LABEL_7;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v61);
      }
    }

    else
    {
      v65 = 0u;
      v66 = 0u;
    }

    sub_1E325F6F0(&v65, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_26;
  }

  v18 = (*(*v7 + 576))(result);
  if (!v18)
  {
LABEL_27:

    goto LABEL_28;
  }

  v19 = v18;
  v20 = &v2[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_collectionImpressioner];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!*(v20 + 24))
  {
LABEL_23:

    goto LABEL_27;
  }

  sub_1E327F454(v20, &v61);
  v21 = v63;
  __swift_project_boxed_opaque_existential_1(&v61, v63);
  result = [v2 vuiView];
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v22 = result;
  [result frame];
  v24 = v23;
  v26 = v25;

  OUTLINED_FUNCTION_117_8();
  (*(v27 + 24))(v21, 0.0, 0.0, v24, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(&v61);
  if (!*(v20 + 24))
  {
    goto LABEL_23;
  }

  sub_1E327F454(v20, &v61);
  v28 = v63;
  v29 = v64;
  __swift_project_boxed_opaque_existential_1(&v61, v63);
  result = [v2 vuiView];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v30 = result;
  (*(v29[1] + 2))(result, v19, v28);

  __swift_destroy_boxed_opaque_existential_1Tm(&v61);
  if (!*(v20 + 24))
  {
    goto LABEL_23;
  }

  sub_1E327F454(v20, &v61);
  v31 = v63;
  v32 = v64;
  __swift_project_boxed_opaque_existential_1(&v61, v63);
  result = [v2 vuiView];
  if (!result)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v33 = result;
  (*(*(v32[1] + 1) + 56))(result, v7, v31);

  __swift_destroy_boxed_opaque_existential_1Tm(&v61);
LABEL_28:
  v53 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_lastImpressedIndex;
  result = OUTLINED_FUNCTION_3_0(&v2[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_lastImpressedIndex], &v61);
  *&v2[v53] = a1;
  return result;
}

void sub_1E3C4DFE0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v72 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v72 - v14;
  v16 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v74 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v75 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_77_0();
  if (*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost) == 1)
  {
    sub_1E3C46F28();
    v22 = v12;
    v23 = sub_1E3B21080();

    LOBYTE(v76[0]) = v23;
    v12 = v22;
    LOBYTE(v77) = 2;
    sub_1E3B23850(v24, v25, v26);
    v27 = sub_1E4205E84() ^ 1;
  }

  else
  {
    v27 = 0;
  }

  v28 = (*(*v4 + 552))();
  if (!v28)
  {
    v77 = 0u;
    v78 = 0u;
    goto LABEL_12;
  }

  v76[3] = &type metadata for ViewModelKeys;
  v76[4] = &off_1F5D7BCA8;
  LOBYTE(v76[0]) = 8;
  sub_1E3F9F164(v76, v28, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  if (!*(&v78 + 1))
  {
LABEL_12:
    sub_1E325F6F0(&v77, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if (!swift_dynamicCast())
  {
LABEL_13:
    type metadata accessor for BaseImpressionManager();
    OUTLINED_FUNCTION_16_5();
    v65 = static BaseImpressionManager.getImpressionableChildren(_:)();
    goto LABEL_14;
  }

  v29 = v12;
  v30 = v76[0];
  if ((v27 & 1) == 0)
  {

    v12 = v29;
    goto LABEL_13;
  }

  type metadata accessor for ViewModel();
  v31 = OUTLINED_FUNCTION_61_20();
  if (v31)
  {
    v32 = v31;
    sub_1E3F6AF24(v31, v30);
    OUTLINED_FUNCTION_55_12();

    v73 = v32;
    OUTLINED_FUNCTION_8();
    v34 = *(v33 + 224);

    v34(v35);

    v12 = v29;
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {

      sub_1E325F6F0(v15, &qword_1ECF2B7B0, &qword_1E429EC30);
      v65 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v66 = v74;
      v72[0] = *(v74 + 32);
      v72[1] = v74 + 32;
      (v72[0])(v1, v15, v16);
      (*(v66 + 16))(v75, v1, v16);
      v65 = sub_1E3885C98(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v68 = *(v65 + 16);
      v67 = *(v65 + 24);
      if (v68 >= v67 >> 1)
      {
        v65 = sub_1E3885C98((v67 > 1), v68 + 1, 1, v65);
      }

      v69 = v74 + 8;
      v70 = OUTLINED_FUNCTION_88();
      v71(v70);
      *(v65 + 16) = v68 + 1;
      (v72[0])(v65 + ((*(v69 + 72) + 32) & ~*(v69 + 72)) + *(v69 + 64) * v68, v75, v16);
    }
  }

  else
  {

    v65 = MEMORY[0x1E69E7CC0];
    v12 = v29;
  }

LABEL_14:
  v36 = v2 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_collectionImpressioner;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v37 = *(v36 + 24);
  if (v37)
  {
    v75 = v65;
    v73 = v9;
    v38 = v16;
    v39 = OUTLINED_FUNCTION_146_0();
    v41 = __swift_project_boxed_opaque_existential_1(v39, v40);
    v42 = *(v37 - 8);
    MEMORY[0x1EEE9AC00](v41);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_42_1();
    (*(v42 + 16))(v36);
    OUTLINED_FUNCTION_117_8();
    v44 = (*(v43 + 16))(v37);
    v46 = v45;
    v47 = OUTLINED_FUNCTION_146_0();
    v49 = v48(v47);
    if ((*(*v4 + 576))(v49))
    {
      OUTLINED_FUNCTION_26_0();
      (*(v50 + 224))();
    }

    else
    {
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v51, v52, v53, v38);
    }

    v54 = v75;
    type metadata accessor for BaseImpressionManager();
    v55 = OUTLINED_FUNCTION_35_0();
    static BaseImpressionManager.addElementToTracker(_:impressions:)(v55, v46, v12);
    sub_1E325F6F0(v12, &qword_1ECF2B7B0, &qword_1E429EC30);
    v56 = *(v54 + 16);
    if (v56)
    {
      v57 = v74 + 16;
      v58 = *(v74 + 16);
      v59 = v46;
      v60 = v54 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v61 = *(v74 + 72);
      v62 = v73;
      v63 = v44;
      do
      {
        v64 = v57;
        v58(v62, v60, v38);
        __swift_storeEnumTagSinglePayload(v62, 0, 1, v38);
        static BaseImpressionManager.addElementToTracker(_:impressions:)(v63, v59, v62);
        sub_1E325F6F0(v62, &qword_1ECF2B7B0, &qword_1E429EC30);
        v57 = v64;
        v60 += v61;
        --v56;
      }

      while (v56);
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3C4E6EC()
{
  if (sub_1E3C46500())
  {
    sub_1E3C4C2D0();
  }

  return result;
}

unint64_t sub_1E3C4E738()
{
  v1 = v0;
  sub_1E3C46F28();
  sub_1E3C46500();
  result = [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) mediaInfoIndex];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_1E3B23060();

    sub_1E3B233D4();

    v3 = sub_1E3C46CA4();
    [v3 vui_setNeedsLayout];

    v4 = *(v1 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataView);

    return [v4 vui_layoutIfNeeded];
  }

  return result;
}

void sub_1E3C4E814()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v79 = v7;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v12(v0);
  v13 = OUTLINED_FUNCTION_26_65();
  sub_1E3C58F3C(v13, v14, v15);
  v16 = sub_1E41FFC94();
  v17 = sub_1E4206814();
  v18 = OUTLINED_FUNCTION_26_65();
  sub_1E3C58F50(v18, v19, v20);
  if (os_log_type_enabled(v16, v17))
  {
    v21 = OUTLINED_FUNCTION_6_21();
    v77 = OUTLINED_FUNCTION_100();
    v85 = v77;
    *v21 = 136315138;
    if (v2 == 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A70, &unk_1E42C5CD0);
      v22 = v6;
      v23 = v4;
      v24 = v2;
    }

    v80 = v22;
    v81 = v23;
    v82 = v24;
    v83 = v25;
    v28 = OUTLINED_FUNCTION_26_65();
    sub_1E3C58F3C(v28, v29, v30);
    v31 = sub_1E3294FA4(&v80);
    sub_1E3270FC8(v31, v32, &v85);
    OUTLINED_FUNCTION_41_23();

    *(v21 + 4) = v4;
    OUTLINED_FUNCTION_105_10();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v10 + 8))(v0, v8);
  }

  else
  {

    v26 = OUTLINED_FUNCTION_33_11();
    v27(v26);
  }

  v38 = OUTLINED_FUNCTION_26_65();
  sub_1E3C58F3C(v38, v39, v40);
  if (v2 == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = v6;
  }

  if (v2 == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = v4;
  }

  if (v2 == 1)
  {
    goto LABEL_77;
  }

  if (v6 < 0)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v85 = v79;
  v80 = v6;
  LOBYTE(v81) = 0;
  v43 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
  OUTLINED_FUNCTION_0_32();
  sub_1E328FCF4(v45, &unk_1ECF2C790, &qword_1E42996A0);
  sub_1E38D2054(&v80, &v84);
  if (v84)
  {
    v46 = sub_1E3C466E4();
    if (v47)
    {
      if (v2)
      {
        if (v46 == v4 && v47 == v2)
        {

          goto LABEL_77;
        }

        v49 = sub_1E42079A4();

        if (v49)
        {
LABEL_77:
          v74 = OUTLINED_FUNCTION_26_65();
          sub_1E3C58F50(v74, v75, v76);
          sub_1E3C4EE0C();
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }

      else
      {
      }
    }

    else
    {

      if (!v2)
      {
        goto LABEL_77;
      }
    }
  }

  v50 = sub_1E32AE9B0(v79);
  v51 = 0;
  v78 = MEMORY[0x1E69E7CC0];
  while (v50 != v51)
  {
    if ((v79 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v51, v79);
    }

    else
    {
      if (v51 >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_79;
      }
    }

    if (__OFADD__(v51, 1))
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v52 = sub_1E3C466E4();
    if (!v53)
    {
      if (!v2)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    if (!v2)
    {

      goto LABEL_44;
    }

    if (v52 == v42 && v53 == v2)
    {

LABEL_46:

      goto LABEL_47;
    }

    v55 = sub_1E42079A4();

    if (v55)
    {
LABEL_47:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_1E3997AA8(0, *(v78 + 2) + 1, 1, v78);
      }

      v57 = *(v78 + 2);
      v56 = *(v78 + 3);
      if (v57 >= v56 >> 1)
      {
        v78 = sub_1E3997AA8((v56 > 1), v57 + 1, 1, v78);
      }

      *(v78 + 2) = v57 + 1;
      *&v78[8 * v57 + 32] = v51++;
    }

    else
    {
LABEL_44:
      ++v51;
    }
  }

  v58 = *(v78 + 2);
  if (v58)
  {
    v59 = *(v78 + 4);
    sub_1E39E8C20(1uLL, v58, v78);
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v66 = (v65 >> 1) - v63;
    if (v65 >> 1 != v63)
    {
      if ((v65 >> 1) <= v63)
      {
        goto LABEL_87;
      }

      v68 = (v61 + 8 * v63);
      do
      {
        v70 = *v68++;
        v69 = v70;
        v71 = v70 - v41;
        if (__OFSUB__(v70, v41))
        {
          goto LABEL_80;
        }

        if (v71 < 0)
        {
          v73 = __OFSUB__(0, v71);
          v71 = -v71;
          if (v73)
          {
            goto LABEL_82;
          }

          v72 = v59 - v41;
          if (__OFSUB__(v59, v41))
          {
            goto LABEL_83;
          }
        }

        else
        {
          v72 = v59 - v41;
          if (__OFSUB__(v59, v41))
          {
            goto LABEL_81;
          }
        }

        if (v72 < 0)
        {
          v73 = __OFSUB__(0, v72);
          v72 = -v72;
          if (v73)
          {
            goto LABEL_84;
          }
        }

        if (v71 < v72)
        {
          v59 = v69;
        }
      }

      while (--v66);
    }

    swift_unknownObjectRelease();
    if (v59 < 0)
    {
      goto LABEL_86;
    }

    goto LABEL_77;
  }

  if (!v50)
  {
    goto LABEL_77;
  }

  v67 = sub_1E32AE9B0(v79);
  if (!__OFSUB__(v67, 1))
  {
    if (v67 - 1 < 0)
    {
      goto LABEL_89;
    }

    goto LABEL_77;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
}

void sub_1E3C4EE0C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v58 = v8;
  v10 = v9;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v63 = v12;
  v64 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v61 = v14 - v13;
  OUTLINED_FUNCTION_138();
  v62 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v60 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v59 = v18 - v17;
  OUTLINED_FUNCTION_138();
  v19 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v23 = sub_1E324FBDC();
  (*(v21 + 16))(v0, v23, v19);
  v24 = sub_1E41FFC94();
  v25 = sub_1E4206814();
  if (os_log_type_enabled(v24, v25))
  {
    v57 = v19;
    swift_slowAlloc();
    v71[0] = OUTLINED_FUNCTION_11_16();
    *v5 = 136315394;
    if (v7)
    {
      v26 = 0;
      v27 = 0;
      v66 = 0;
      v67 = 0;
    }

    else
    {
      v27 = MEMORY[0x1E69E6810];
      v26 = v58;
    }

    v65 = v26;
    v68 = v27;
    v30 = sub_1E3294FA4(&v65);
    v32 = sub_1E3270FC8(v30, v31, v71);

    *(v5 + 4) = v32;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v5 & 1;
    _os_log_impl(&dword_1E323F000, v24, v25, "PaginatedMediaController:: update viewModels selectedIndex: %s, append: %{BOOL}d", v5, 0x12u);
    OUTLINED_FUNCTION_113_7();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v21 + 8))(v0, v57);
    v7 = v7;
  }

  else
  {

    v28 = OUTLINED_FUNCTION_57();
    v29(v28);
  }

  if (v5)
  {
    v33 = sub_1E32AE9B0(v10);
    v7 = MEMORY[0x1E69E7CC0];
    if (v33)
    {
      v34 = v33;
      v65 = MEMORY[0x1E69E7CC0];
      sub_1E4207574();
      if (v34 < 0)
      {
        goto LABEL_27;
      }

      v35 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x1E6911E60](v35, v10);
        }

        else
        {
          v36 = *(v10 + 8 * v35 + 32);
        }

        ++v35;
        sub_1E3C4F530(v36);
        OUTLINED_FUNCTION_41_23();

        sub_1E4207544();
        sub_1E4207584();
        OUTLINED_FUNCTION_24_4();
        sub_1E4207594();
        sub_1E4207554();
      }

      while (v34 != v35);
      v7 = v65;
    }

    sub_1E3C4F960();

    OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels, &v65);

    sub_1E379738C(v37);
    swift_endAccess();
    sub_1E3C4F9F4(v10);
    v39 = v38;
    sub_1E3C46D1C();
    v40 = [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) mediaInfoIndex];
    if ((v40 & 0x8000000000000000) == 0)
    {
      sub_1E40797E8(v39, v40, 1);

      goto LABEL_19;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  v41 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels;
  OUTLINED_FUNCTION_3_0(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels, v71);
  *(v0 + v41) = v10;

  sub_1E3C4A524();
LABEL_19:
  v42 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_showsPageControl;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + v42))
  {
LABEL_22:
    v45 = MEMORY[0x1E69E7CC0];
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v46 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v47 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v47);
    v69 = sub_1E3C5907C;
    v70 = v47;
    v65 = MEMORY[0x1E69E9820];
    v66 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v67 = v48;
    v68 = &block_descriptor_36_1;
    v7 = _Block_copy(&v65);

    sub_1E4203FE4();
    v65 = v45;
    OUTLINED_FUNCTION_7_143();
    sub_1E3C59160(v49, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v51, v52, &qword_1E429B000);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v59, v61, v7);
    _Block_release(v7);

    (*(v63 + 8))(v61, v64);
    (*(v60 + 8))(v59, v62);
    goto LABEL_23;
  }

  v43 = sub_1E3C46A28();
  v44 = [v43 superview];

  if (v44)
  {

    goto LABEL_22;
  }

LABEL_23:
  v53 = sub_1E3C46CA4();
  sub_1E3C4ACD4();
  OUTLINED_FUNCTION_55_32();
  (*((*MEMORY[0x1E69E7D40] & v54) + 0x190))();

  sub_1E3C4E738();
  sub_1E3C475DC();
  v55 = [*(v1 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) mediaInfoIndex];
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v55);
    v56 = sub_1E4203E44();
    OUTLINED_FUNCTION_158_6(v56);
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3C4F530(void *a1)
{
  v3 = v1;
  v37 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v9 = VUISignpostLogObject(v8);
  sub_1E41FFBC4();
  v10 = sub_1E4206BA4();
  v11 = VUISignpostLogObject(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E4297BE0;
  v13 = a1[2];
  v14 = a1[3];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1E3283528(v12, v15, v16);
  if (v14)
  {
    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  if (v14)
  {
    v18 = v14;
  }

  *(v12 + 32) = v17;
  *(v12 + 40) = v18;

  OUTLINED_FUNCTION_136_3();
  sub_1E41FFB94();

  sub_1E3DF9E68(v41);
  v40 = v41[16];
  memcpy(v39, v42, sizeof(v39));
  result = [v3 view];
  if (result)
  {
    OUTLINED_FUNCTION_106();
    type metadata accessor for LayoutGrid();
    [v41 bounds];
    OUTLINED_FUNCTION_3();

    v47.origin.x = OUTLINED_FUNCTION_6();
    Width = CGRectGetWidth(v47);
    v21 = sub_1E3A2579C(Width);
    result = [v3 view];
    if (result)
    {
      v22 = result;
      [result bounds];
      v24 = v23;
      v26 = v25;

      v40 = 0;
      v44[0] = v24;
      v44[1] = v26;
      v45 = 0;
      memcpy(v46, v39, sizeof(v46));
      v27 = sub_1E3D41814(v21, v44, v43);
      v28 = v3[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost];
      if (v3[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost])
      {
        if (!(*(*a1 + 552))(v27))
        {
          sub_1E4205CB4();
        }

        v21 = qword_1E42C6050[v28 - 1];
        sub_1E39D7838(&unk_1F5D79478);
        OUTLINED_FUNCTION_128_6();
        OUTLINED_FUNCTION_166_4();
        v29 = OUTLINED_FUNCTION_24_4();
        sub_1E3D431B4(v29, v30, 1, v31, v21);
        OUTLINED_FUNCTION_35_0();

        if (v28 == 1)
        {
          if (v21)
          {
            [v21 setPlaybackDelayInterval_];
LABEL_19:
            OUTLINED_FUNCTION_128_6();
            v38[129] = 0;
            sub_1E39F8998(v38);
            v35 = sub_1E4206B94();
            v36 = VUISignpostLogObject(v35);
            OUTLINED_FUNCTION_136_3();
            sub_1E41FFBA4();

            (*(v6 + 8))(v2, v37);
            return v21;
          }

LABEL_18:
          v21 = [objc_allocWithZone(VUIMediaInfo) init];
          goto LABEL_19;
        }
      }

      else
      {
        sub_1E39D7838(&unk_1F5D79450);
        OUTLINED_FUNCTION_128_6();
        OUTLINED_FUNCTION_166_4();
        v32 = OUTLINED_FUNCTION_24_4();
        sub_1E3D41C40(v32, v33, 35, v34);
        OUTLINED_FUNCTION_35_0();
      }

      if (v21)
      {
        [v21 setPlaybackDelayInterval_];
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E3C4F960()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController);
  sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
  v2 = v1;
  OUTLINED_FUNCTION_32_0();
  sub_1E42062A4();
  OUTLINED_FUNCTION_178_0();
  [v2 appendMediaInfos_];
}

void sub_1E3C4F9F4(unint64_t a1)
{
  v23 = MEMORY[0x1E69E7CC0];
  v3 = sub_1E32AE9B0(a1);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E6911E60](v4, a1);
      v5 = v6;
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v8 = (*(*v5 + 488))(v6);
    if (!v8)
    {
      goto LABEL_11;
    }

    v11 = v8;
    if (*(v8 + 16) && (v12 = sub_1E3740AE8(224, v9, v10), (v13 & 1) != 0))
    {
      v1 = *(*(v11 + 56) + 8 * v12);

      if ((*(*v5 + 392))(v15) && (OUTLINED_FUNCTION_26_0(), (*(v16 + 1560))(), v17 = , (*(*v1 + 392))(v17)))
      {
        v18 = [v22 vuiTraitCollection];
        sub_1E3C2AE10();
        v20 = v19;
        OUTLINED_FUNCTION_36();
        (*(v21 + 1640))();
      }

      else
      {
      }

LABEL_12:
      MEMORY[0x1E6910BF0](v14);
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_24_4();
      sub_1E4206324();
      v4 = v7;
    }

    else
    {

LABEL_11:
      type metadata accessor for ViewModel();
      sub_1E39C02B0();
      OUTLINED_FUNCTION_41_23();

      ++v4;
      if (v1)
      {
        goto LABEL_12;
      }
    }
  }
}

void sub_1E3C4FCE0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  LODWORD(v4) = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v101 = v14 - v13;
  OUTLINED_FUNCTION_138();
  v102 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v100 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v99 = v18 - v17;
  OUTLINED_FUNCTION_138();
  v105 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v98 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v97 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v104 = &v89 - v24;
  OUTLINED_FUNCTION_138();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v26 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v27 = *&v2[v26];
  if (v27 >> 62)
  {
    v28 = OUTLINED_FUNCTION_119_1();
  }

  else
  {
    v28 = OUTLINED_FUNCTION_139_7(v27);
  }

  if (v28 < 1 || v28 <= v6)
  {
    goto LABEL_32;
  }

  v93 = v11;
  v94 = v9;
  v103 = v6;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v30(v1);
  v31 = v2;

  v32 = sub_1E41FFC94();
  v33 = sub_1E4206814();

  v34 = os_log_type_enabled(v32, v33);
  v96 = v8;
  v95 = v4;
  if (v34)
  {
    LODWORD(v91) = v33;
    v92 = v32;
    v4 = OUTLINED_FUNCTION_100();
    v90 = swift_slowAlloc();
    v106[0] = v90;
    *v4 = 136315650;
    v35 = sub_1E3C486F4();
    sub_1E3270FC8(v35, v36, v106);
    OUTLINED_FUNCTION_50();

    *(v4 + 4) = v31;
    *(v4 + 12) = 2080;
    if (v8[3])
    {
      v37 = v8[2];
    }

    else
    {
      v37 = 0;
    }

    v40 = OUTLINED_FUNCTION_32_0();
    sub_1E3270FC8(v40, v41, v42);
    OUTLINED_FUNCTION_12_1();

    *(v4 + 14) = v37;
    *(v4 + 22) = 2048;
    *(v4 + 24) = v103;
    v43 = v92;
    _os_log_impl(&dword_1E323F000, v92, v91, "%s update item: %s, index: %lu", v4, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v44 = OUTLINED_FUNCTION_54_25();
    v45(v44);
    LOBYTE(v4) = v95;
  }

  else
  {

    v38 = OUTLINED_FUNCTION_54_25();
    v39(v38);
  }

  OUTLINED_FUNCTION_11_3(&v2[v26], v106);
  v46 = *&v2[v26];
  v47 = v96;

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *&v2[v26] = v46;
  if (!isUniquelyReferenced_nonNull_bridgeObject || (v46 & 0x8000000000000000) != 0 || (v46 & 0x4000000000000000) != 0)
  {
    v46 = sub_1E37EFA58(v46);
    *&v2[v26] = v46;
  }

  v49 = v103;
  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) > v103)
  {
    *((v46 & 0xFFFFFFFFFFFFFF8) + 8 * v103 + 0x20) = v47;
    *&v2[v26] = v46;
    swift_endAccess();

    v50 = sub_1E3C4F530(v47);
    v51 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController;
    v52 = [*&v31[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController] imageSwappingAnimationType];
    [*&v31[v51] setImageSwappingAnimationType_];
    v53 = *&v31[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController];
    v92 = v50;
    [v53 setMediaInfo:v50 atIndex:v49 animated:v4 & 1];
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v91 = sub_1E4206A04();
    v54 = v97;
    sub_1E4204004();
    v55.n128_u64[0] = 0.5;
    sub_1E4204074(v55);
    v56 = (v98 + 8);
    v98 = *(v98 + 8);
    (v98)(v54, v105);
    OUTLINED_FUNCTION_2_4();
    v57 = swift_allocObject();
    *(v57 + 16) = v31;
    *(v57 + 24) = v52;
    v106[4] = sub_1E3C591A4;
    v106[5] = v57;
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 1107296256;
    v106[2] = sub_1E378AEA4;
    v106[3] = &block_descriptor_42_0;
    v58 = _Block_copy(v106);
    v59 = v31;
    OUTLINED_FUNCTION_11_5();

    v60 = v99;
    sub_1E4203FE4();
    v106[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_7_143();
    sub_1E3C59160(v61, v62);
    v63 = v47;
    v64 = OUTLINED_FUNCTION_33_11();
    __swift_instantiateConcreteTypeFromMangledNameV2(v64, v65);
    OUTLINED_FUNCTION_47();
    v66 = v103;
    sub_1E328FCF4(v67, v68, &qword_1E429B000);
    v69 = v101;
    v70 = v94;
    v71 = v49;
    sub_1E42072E4();
    v72 = v104;
    v73 = OUTLINED_FUNCTION_13_8();
    v74 = v91;
    MEMORY[0x1E69112E0](v73);
    _Block_release(v58);

    (*(v93 + 8))(v69, v70);
    (*(v100 + 8))(v60, v102);
    v75 = (v98)(v72, v105);
    v76 = (*(*v63 + 488))(v75);
    if (v76)
    {
      sub_1E373E010(224, v76, v77);
      OUTLINED_FUNCTION_11_5();

      if (v72)
      {
        OUTLINED_FUNCTION_8();
        if ((*(v78 + 392))())
        {
          OUTLINED_FUNCTION_26_0();
          v56 = (*(v79 + 1560))();

          if ((*(*v72 + 392))(v80))
          {
            sub_1E3C2AE10();
            v56 = v81;
            OUTLINED_FUNCTION_36();
            (*(v82 + 1640))();
          }
        }

        sub_1E3C46D1C();
        v83 = OUTLINED_FUNCTION_38();
        sub_1E407A8EC(v83, v66);

        if (OUTLINED_FUNCTION_126_4() == v66)
        {
          sub_1E3C46D8C();
          v84 = OUTLINED_FUNCTION_126_4();
          sub_1E3926874(v84, 0, *(v71 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost) == 3);
        }
      }
    }

    v85 = OUTLINED_FUNCTION_126_4();
    if (v85 == v66)
    {
      if (v95)
      {
        MEMORY[0x1EEE9AC00](v85);
        *(&v89 - 2) = v71;
        v86 = sub_1E4203E44();
        OUTLINED_FUNCTION_158_6(v86);

LABEL_32:
        OUTLINED_FUNCTION_25_2();
        return;
      }

      v87 = sub_1E3C46CA4();
      sub_1E3C4ACD4();
      OUTLINED_FUNCTION_55_32();
      (*((*MEMORY[0x1E69E7D40] & v88) + 0x190))();

      sub_1E3C4E738();
    }

    goto LABEL_32;
  }

  __break(1u);
}

void sub_1E3C506A4(uint64_t a1, char a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = 0.0;
    if (a2)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
    }

    sub_1E3C46D8C();
    sub_1E39257C0(v8);

    v9 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_showsPageControl;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (v6[v9])
    {
      v7 = v8;
    }

    v10 = sub_1E3C46A28();
    [v10 setVuiAlpha_];

    v11 = v6[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost];
    v12 = v11 > 4;
    v13 = (1 << v11) & 0x16;
    if (!v12 && v13 != 0)
    {
      v15 = sub_1E3C46CA4();
      [v15 setVuiAlpha_];
    }

    if (a3)
    {
      a3();
    }
  }
}

void sub_1E3C507D8(uint64_t a1, char a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1E3C46CA4();
    v8 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x148))();

    [v8 setHidden_];
    if (v6[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost] == 1)
    {
      v9 = sub_1E3C46A28();
      [v9 setHidden_];
    }

    if (a3)
    {
      a3();
    }
  }
}

uint64_t sub_1E3C508F0(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 16) = a3;
  *(v5 + 97) = a2;
  *(v5 + 96) = a1;
  *(v5 + 40) = sub_1E4206434();
  *(v5 + 48) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v7 = sub_1E42063B4();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E3C50994, v7, v6);
}

uint64_t sub_1E3C50994(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 97);
  v6 = *(v1 + 96);
  v7 = sub_1E4206424();
  *(v1 + 72) = v7;
  v8 = swift_task_alloc();
  *(v1 + 80) = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v6;
  *(v8 + 25) = v5;
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
  v9 = swift_task_alloc();
  *(v1 + 88) = v9;
  *v9 = v1;
  v9[1] = sub_1E3C50AC0;
  v10 = MEMORY[0x1E69E85E0];
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v9, v7, v10, 0xD000000000000033, 0x80000001E4278900, sub_1E3C59268, v8, v11);
}

uint64_t sub_1E3C50AC0()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E3C50C20, v3, v2);
}

uint64_t sub_1E3C50C20()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1E3C50C80()
{
  OUTLINED_FUNCTION_31_1();
  v16 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8, &qword_1E42AF868);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_5();
  (*(v12 + 16))(v0, v9, v10);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = swift_allocObject();
  (*(v12 + 32))(v15 + v14, v0, v10);
  sub_1E3C4D0C8(v7, v5, v3, v16, sub_1E39B4010, v15, 0.25);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C50DD4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1E3C4EE0C();
  }

  else
  {
    [*(v2 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) mediaInfoIndex];
    sub_1E3C4A524();
    sub_1E3C50E7C();
  }

  sub_1E3C47C88();
  OUTLINED_FUNCTION_50();
  sub_1E3C2AE10();
  v5 = v3;
  sub_1E3C35CF4(v4, v3);
}

double sub_1E3C50E7C()
{
  sub_1E3C46D8C();
  sub_1E3927714();

  sub_1E3C46F28();
  sub_1E3B23348();

  return result;
}

void sub_1E3C50ED4(double a1)
{
  if (sub_1E3C46280())
  {
    v5 = sub_1E3C468C4();
    v2 = sub_1E3C46984();
    [v2 parallaxRatio];
    v4 = v3;

    sub_1E3B513C4(v4 * a1);
  }
}

id sub_1E3C51004()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) player];

  return v1;
}

void sub_1E3C51094(void *a1)
{
  swift_getKeyPath();
  sub_1E41FE2C4();
  [*(v1 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) setPlayer_];
  swift_getKeyPath();
  sub_1E41FE2D4();
}

id sub_1E3C51130@<X0>(void *a1@<X8>)
{
  result = sub_1E3C51004();
  *a1 = result;
  return result;
}

void sub_1E3C5115C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E3C51094(v1);
}

id sub_1E3C511D0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) avPlayerViewController];

  return v1;
}

void sub_1E3C51260()
{
  OUTLINED_FUNCTION_178_0();
  [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) setAvPlayerViewController_];
}

uint64_t sub_1E3C51370()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController);

  return sub_1E3C58F64(v1);
}

void sub_1E3C51420(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController);
  if (a1)
  {
    sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
    v3 = v2;
    v5 = sub_1E42062A4();
  }

  else
  {
    v4 = v2;
    v5 = 0;
  }

  [v2 setMediaInfos_];
}

void sub_1E3C51644(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_31_1();
  v14 = v13;
  v15 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v59 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_77_0();
  v26 = sub_1E324FBDC();
  v65 = v17;
  isa = v17[2].isa;
  v27 = v17 + 2;
  v63 = v26;
  v64 = isa;
  (isa)(v12);
  v29 = v11;
  v30 = sub_1E41FFC94();
  v31 = sub_1E4206814();
  v32 = os_log_type_enabled(v30, v31);
  v62 = v14;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v61 = v21;
    v34 = v33;
    v35 = OUTLINED_FUNCTION_100();
    v60 = v24;
    v36 = v35;
    v66 = v35;
    *v34 = 136315650;
    v37 = sub_1E3C486F4();
    OUTLINED_FUNCTION_58_0(v37, v38);
    v59 = v15;
    OUTLINED_FUNCTION_122();

    *(v34 + 4) = v15;
    *(v34 + 12) = 1024;
    v39 = [*&v29[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController] isPlaybackEnabled];

    *(v34 + 14) = v39;
    *(v34 + 18) = 1024;
    v15 = v59;
    *(v34 + 20) = v14 & 1;
    _os_log_impl(&dword_1E323F000, v30, v31, "%s set isPlaybackEnabled = %{BOOL}d --> %{BOOL}d", v34, 0x18u);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    v24 = v60;
    OUTLINED_FUNCTION_6_0();
    v21 = v61;
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v40 = v65[1].isa;
  v40(v12, v15);
  sub_1E3C51A88();
  if (v41)
  {
    v64(v24, v63, v15);
    v42 = v29;
    v43 = sub_1E41FFC94();
    v44 = sub_1E4206814();

    if (os_log_type_enabled(v43, v44))
    {
      OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_10_11();
      OUTLINED_FUNCTION_118_7();
      v66 = v45;
      *v14 = 136315138;
      v46 = sub_1E3C486F4();
      v48 = OUTLINED_FUNCTION_58_0(v46, v47);

      *(v14 + 4) = v48;
      _os_log_impl(&dword_1E323F000, v43, v44, "%s Ignore setting isPlaybackEnabled since isVideoAutoPlayDisabled = true", v14, 0xCu);
      OUTLINED_FUNCTION_36_40();
      OUTLINED_FUNCTION_55();

      v49 = OUTLINED_FUNCTION_103_8();
      v50 = v27;
    }

    else
    {

      v49 = OUTLINED_FUNCTION_103_8();
      v50 = v15;
    }

    v40(v49, v50);
    [*&v42[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController] setPlaybackEnabled_];
  }

  else
  {
    v51 = v62;
    if ((v62 & 1) != 0 && [*&v29[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController] isPlaybackEnabled])
    {
      v64(v21, v63, v15);
      v52 = v29;
      sub_1E41FFC94();
      OUTLINED_FUNCTION_118_7();
      v53 = sub_1E4206814();

      if (os_log_type_enabled(v15, v53))
      {
        v54 = OUTLINED_FUNCTION_6_21();
        v55 = OUTLINED_FUNCTION_100();
        v66 = v55;
        *v54 = 136315138;
        v56 = sub_1E3C486F4();
        OUTLINED_FUNCTION_58_0(v56, v57);
        OUTLINED_FUNCTION_6_19();

        *(v54 + 4) = v52;
        _os_log_impl(&dword_1E323F000, v15, v53, "%s Ignore setting isPlaybackEnabled since it's enabled already", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_6_0();
      }

      v58 = OUTLINED_FUNCTION_103_8();
      v40(v58, v27);
    }

    else
    {
      [*&v29[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController] setPlaybackEnabled_];
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C51A88()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_33_0();
  if (v0[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost])
  {
    goto LABEL_12;
  }

  v2 = objc_opt_self();
  v3 = [v2 isFeatureEnabled_];
  v4 = [objc_opt_self() processInfo];
  v28 = [v4 isLowPowerModeEnabled];

  sub_1E3C52544();
  v27 = v5;
  v6 = [v2 isFeatureEnabled_];
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_1E4205ED4();
  v9 = [v7 objectForKey_];

  if (v9)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32[0] = v30;
  v32[1] = v31;
  if (!*(&v31 + 1))
  {
    sub_1E325F6F0(v32, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_9;
  }

  if (!OUTLINED_FUNCTION_21_4())
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v29;
LABEL_10:
  if (v27 & 1 | v3 & 1 | ((v6 & 1) == 0) | v28 & 1 || v10)
  {
    sub_1E324FBDC();
    v11 = OUTLINED_FUNCTION_71_21();
    v12(v11);
    v13 = v0;
    OUTLINED_FUNCTION_141_7();
    v14 = sub_1E41FFC94();
    v15 = sub_1E4206814();

    if (os_log_type_enabled(v14, v15))
    {
      v26 = v3;
      v16 = swift_slowAlloc();
      *&v32[0] = OUTLINED_FUNCTION_100();
      *v16 = 136316418;
      v17 = sub_1E3C486F4();
      sub_1E3270FC8(v17, v18, v32);
      OUTLINED_FUNCTION_112();

      *(v16 + 4) = v9;
      *(v16 + 12) = 1024;
      *(v16 + 14) = v26;
      *(v16 + 18) = 1024;
      *(v16 + 20) = v28;
      *(v16 + 24) = 1024;
      *(v16 + 26) = v6;
      *(v16 + 30) = 1024;
      *(v16 + 32) = v27 & 1;
      *(v16 + 36) = 1024;
      *(v16 + 38) = v10;
      OUTLINED_FUNCTION_105_10();
      _os_log_impl(v19, v20, v21, v22, v23, 0x2Au);
      OUTLINED_FUNCTION_36_40();
      OUTLINED_FUNCTION_6_0();
    }

    v24 = OUTLINED_FUNCTION_13_8();
    v25(v24);
  }

LABEL_12:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C52544()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33_0();
  if (sub_1E3C465F0())
  {
    v3 = [objc_opt_self() sharedPreferences];
    v4 = [v3 sportsScoreSpoilersAllowed];

    if ((v4 & 1) == 0)
    {
      sub_1E324FBDC();
      v5 = OUTLINED_FUNCTION_71_21();
      v6(v5);
      v7 = v0;
      v8 = sub_1E41FFC94();
      v9 = sub_1E4206814();

      if (os_log_type_enabled(v8, v9))
      {
        swift_slowAlloc();
        v19 = OUTLINED_FUNCTION_11_16();
        *v1 = 136315394;
        v10 = sub_1E3C486F4();
        OUTLINED_FUNCTION_58_0(v10, v11);
        OUTLINED_FUNCTION_26_5();

        *(v1 + 4) = v7;
        *(v1 + 12) = 1024;
        *(v1 + 14) = 1;
        OUTLINED_FUNCTION_12_17();
        _os_log_impl(v12, v13, v14, v15, v16, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      v17 = OUTLINED_FUNCTION_13_8();
      v18(v17);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3C53604()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) videoGravity];

  return v1;
}

void sub_1E3C5369C()
{
  OUTLINED_FUNCTION_178_0();
  [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) setVideoGravity_];
}

void sub_1E3C53938(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController);
  sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
  v3 = v2;
  sub_1E42062A4();
  OUTLINED_FUNCTION_178_0();
  [v3 setMediaInfos_animated_];
}

void sub_1E3C53B10()
{
  [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) play];

  sub_1E3C475DC();
}

id sub_1E3C53C54(const char **a1)
{
  sub_1E3C47690();
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController);
  v4 = *a1;

  return [v3 v4];
}

void sub_1E3C53D48()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v55 = v4;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_77_0();
  v13 = sub_1E324FBDC();
  v14 = (v7 + 16);
  v53 = *(v7 + 16);
  v54 = v13;
  v53(v1);
  v15 = v0;
  v16 = sub_1E41FFC94();
  v17 = sub_1E42067E4();

  if (os_log_type_enabled(v16, v17))
  {
    swift_slowAlloc();
    v52 = OUTLINED_FUNCTION_10_11();
    v56[0] = v52;
    *v14 = 136315650;
    v18 = sub_1E3C48774();
    sub_1E3270FC8(v18, v19, v56);
    OUTLINED_FUNCTION_122();

    *(v7 + 20) = v11;
    *(v7 + 28) = 2048;
    *(v7 + 30) = v55;
    *(v7 + 38) = 1024;
    *(v7 + 40) = v3 & 1;
    _os_log_impl(&dword_1E323F000, v16, v17, "PaginatedMediaController::%s moveContent by %ld, isCarousel: %{BOOL}d", v14, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v20 = *(v7 + 8);
  v20(v1, v5);
  v21 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (sub_1E32AE9B0(*&v15[v21]) < 2)
  {
    (v53)(v11, v54, v5);
    v29 = v15;
    v30 = sub_1E41FFC94();
    v31 = sub_1E42067E4();

    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_6_21();
      v56[0] = OUTLINED_FUNCTION_10_11();
      v32 = OUTLINED_FUNCTION_164_3(4.8149e-34);
      sub_1E3270FC8(v32, v33, v56);
      OUTLINED_FUNCTION_122();

      *(v7 + 20) = v11;
      _os_log_impl(&dword_1E323F000, v30, v31, "%s Less than 2 items, ignore page update", v14, 0xCu);
      OUTLINED_FUNCTION_113_7();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();
    }

    v20(v11, v5);
    goto LABEL_20;
  }

  if (([*&v15[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController] animateImageChange] & 1) == 0)
  {
    [*&v15[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController] setAnimateImageChange_];
  }

  v22 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController;
  v23 = sub_1E3C58F64(*&v15[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController]);
  if (!v23)
  {
LABEL_20:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  v24 = v23;
  if (!sub_1E32AE9B0(v23))
  {

    goto LABEL_20;
  }

  v25 = [*&v15[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController] mediaInfoIndex];
  sub_1E32AE9B0(v24);
  OUTLINED_FUNCTION_31_4();

  if ((&OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v25 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v26 = v25 + v55;
  if (__OFADD__(v25, v55))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v55 < 1 || (v3 & 1) == 0 || v26 < &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController)
  {
    v28 = (v25 < v26) & ~((v55 < 0) & v3 & (v26 < 0));
    if (((v55 < 0) & v3 & (v26 < 0)) != 0)
    {
      v27 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_session + 7;
    }

    else
    {
      v27 = v25 + v55;
    }

    if (v27 < 0)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if (&OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController)
  {
    v27 = v26 % &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
    v28 = 1;
    if (((v26 % &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController) & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    if (v27 < &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController)
    {
      v34 = [*&v15[v22] player];
      if (v34)
      {
        v35 = v34;
        sub_1E3C54318();
      }

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        v36 = OUTLINED_FUNCTION_27_0();
        v37(v36);
        swift_unknownObjectRelease();
      }

      v38 = sub_1E3C46A28();
      [v38 setCurrentPage_];

      v39 = *&v15[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_swipeController];
      if (v39)
      {
        v40 = v39;
        v41 = OUTLINED_FUNCTION_16_5();
        sub_1E41414C0(v41, v28);
      }

      [*&v15[v22] imageTransitionAnimationDuration];
      v43 = v42 + v42;
      v44 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_chevronDebounceTimer;
      v45 = *&v15[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_chevronDebounceTimer];
      if (v45)
      {
        [v45 invalidate];
      }

      v46 = objc_opt_self();
      v47 = swift_unknownObjectWeakInit();
      MEMORY[0x1E69144A0](v47);
      v56[4] = sub_1E3C56BBC;
      v56[5] = 0;
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 1107296256;
      OUTLINED_FUNCTION_7_6();
      v56[2] = v48;
      v56[3] = &block_descriptor_101;
      v49 = [v46 scheduledTimerWithTimeInterval:0 repeats:_Block_copy(v56) block:v43];
      v50 = OUTLINED_FUNCTION_38();
      _Block_release(v50);
      v51 = *&v15[v44];
      *&v15[v44] = v46;
    }

    goto LABEL_20;
  }

LABEL_39:
  __break(1u);
}

uint64_t sub_1E3C54318()
{
  v1 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_elapsedTimeObserverToken;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E3743538(v0 + v1, &v6, &unk_1ECF296E0, &unk_1E4298030);
  if (!*(&v7 + 1))
  {
    return sub_1E325F6F0(&v6, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E329504C(&v6, &v8);
  __swift_project_boxed_opaque_existential_1(&v8, v9);
  sub_1E4207994();
  v2 = OUTLINED_FUNCTION_17_1();
  [v2 v3];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(&v8);
  v6 = 0u;
  v7 = 0u;
  OUTLINED_FUNCTION_11_3(v0 + v1, v5);
  sub_1E3B0D4BC(&v6, v0 + v1, &unk_1ECF296E0, &unk_1E4298030);
  return swift_endAccess();
}

id sub_1E3C54420()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) surrenderCurrentPlayer];

  return v1;
}

uint64_t sub_1E3C54538(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  if (!(v3 >> 62))
  {
    return OUTLINED_FUNCTION_139_7(v3);
  }

  result = OUTLINED_FUNCTION_119_1();
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

void sub_1E3C54584()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v77 - v11;
  v13 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = Strong + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationDelegate;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      (*(v20 + 48))(v18, v4 & 1, ObjectType, v20);
      swift_unknownObjectRelease();
    }

    if ((v4 & 1) == 0)
    {
      type metadata accessor for ViewModel();
      v22 = OUTLINED_FUNCTION_61_20();
      v23 = sub_1E3C46500();
      if (!v23 || (v24 = v23, !v22))
      {
LABEL_19:

        goto LABEL_20;
      }

      v25 = (*(*v23 + 552))(v23);
      if (v25)
      {
        v26 = v25;
        v85 = &type metadata for ViewModelKeys;
        v86 = &off_1F5D7BCA8;
        v27 = OUTLINED_FUNCTION_97(8);
        sub_1E3F9F164(v27, v26, MEMORY[0x1E69E7CA0] + 8);

        __swift_destroy_boxed_opaque_existential_1Tm(v84);
        if (*(&v88 + 1))
        {
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
          if (swift_dynamicCast())
          {
            v80 = v28;
            v82 = v15;
            v29 = v84[0];

            sub_1E3F6AF24(v22, v29);
            OUTLINED_FUNCTION_55_12();

            v81 = v28;
            if (!v28)
            {

LABEL_59:
              v15 = v82;
              goto LABEL_20;
            }

            v85 = &type metadata for ViewModelMetrics;
            v86 = &off_1F5D74828;
            v30 = OUTLINED_FUNCTION_97(3);
            sub_1E3F9F164(v30, v29, MEMORY[0x1E69E7CA0] + 8);

            if (*(&v88 + 1))
            {
              if (swift_dynamicCast())
              {
                v80 = v83;
                __swift_destroy_boxed_opaque_existential_1Tm(v84);
LABEL_53:
                v46 = &v18[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_collectionImpressioner];
                OUTLINED_FUNCTION_25();
                swift_beginAccess();
                if (*(v46 + 24))
                {
                  sub_1E327F454(v46, v84);
                  __swift_project_boxed_opaque_existential_1(v84, v85);
                  OUTLINED_FUNCTION_117_8();
                  v47 = OUTLINED_FUNCTION_55_12();
                  v49 = v48(v47);
                  __swift_destroy_boxed_opaque_existential_1Tm(v84);
                }

                else
                {
                  v49 = 0;
                }

                OUTLINED_FUNCTION_8();
                v51 = (*(v50 + 200))();
                if (v51)
                {
                  v52 = v51;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0, &qword_1E42AB350);
                  v53 = swift_allocObject();
                  *(v53 + 16) = xmmword_1E4297BE0;
                  *(v53 + 32) = v52;
                }

                OUTLINED_FUNCTION_8();
                v55 = *(v54 + 288);
                v79 = v56;
                v78 = v49;
                v55(1, v49, v56, v80);

                goto LABEL_59;
              }

              __swift_destroy_boxed_opaque_existential_1Tm(v84);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v84);
              sub_1E325F6F0(&v87, &unk_1ECF296E0, &unk_1E4298030);
            }

            type metadata accessor for Metrics(0);
            v80 = sub_1E3BA7F00(v24);
            goto LABEL_53;
          }

          goto LABEL_19;
        }
      }

      else
      {

        v87 = 0u;
        v88 = 0u;
      }

      sub_1E325F6F0(&v87, &unk_1ECF296E0, &unk_1E4298030);
    }

LABEL_20:
    sub_1E3C46F28();
    sub_1E3B21268();

    if (v2 && (*(*v2 + 392))(v31))
    {
      type metadata accessor for MediaShowcasingMetadataLayout();
      v32 = swift_dynamicCastClass();
      if (v32 && sub_1E3CCE274(*(v32 + 120), 1u))
      {
        if (!sub_1E3C46500())
        {
LABEL_48:

LABEL_36:
          if ((*(*v2 + 392))(v41))
          {
            type metadata accessor for MediaShowcasingMetadataLayout();
            v42 = swift_dynamicCastClass();
            if (v42 && sub_1E3CCE274(*(v42 + 120), 0))
            {

              sub_1E3B2113C(1);

LABEL_42:

              goto LABEL_43;
            }
          }

LABEL_41:

          sub_1E3B2113C(2);
          goto LABEL_42;
        }

        OUTLINED_FUNCTION_26_0();
        v34 = (*(v33 + 552))();
        if (v34)
        {
          v35 = v34;
          v85 = &type metadata for ViewModelKeys;
          v86 = &off_1F5D7BCA8;
          v36 = OUTLINED_FUNCTION_97(8);
          sub_1E3F9F164(v36, v35, MEMORY[0x1E69E7CA0] + 8);

          __swift_destroy_boxed_opaque_existential_1Tm(v84);
          if (*(&v88 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
            if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
            {
LABEL_47:
              sub_1E3C4DFE0();

              goto LABEL_48;
            }

            v82 = v15;
            v37 = v84[0];
            type metadata accessor for ViewModel();
            v38 = OUTLINED_FUNCTION_61_20();
            if (!v38)
            {

              goto LABEL_47;
            }

            v39 = v38;
            v81 = sub_1E3F6AF24(v38, v37);

            if (v81)
            {
              v80 = v39;
              v79 = *(*v81 + 224);

              (v79)(v40);

              if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
              {
                v60 = v82;
                v61 = OUTLINED_FUNCTION_146();
                v62(v61);
                v63 = &v18[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_collectionImpressioner];
                OUTLINED_FUNCTION_25();
                swift_beginAccess();
                v64 = *(v63 + 3);
                if (v64)
                {
                  v78 = *(v63 + 4);
                  v65 = OUTLINED_FUNCTION_33_11();
                  v67 = __swift_project_boxed_opaque_existential_1(v65, v66);
                  v79 = &v77;
                  v68 = *(v64 - 8);
                  MEMORY[0x1EEE9AC00](v67);
                  OUTLINED_FUNCTION_5();
                  OUTLINED_FUNCTION_42_1();
                  (*(v68 + 16))(v63);
                  OUTLINED_FUNCTION_117_8();
                  v77 = (*(v69 + 16))(v64);
                  v78 = v70;
                  v71 = OUTLINED_FUNCTION_33_11();
                  v72(v71);
                  OUTLINED_FUNCTION_138();
                  type metadata accessor for BaseImpressionManager();
                  v73 = OUTLINED_FUNCTION_26_65();
                  v74(v73);
                  __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
                  static BaseImpressionManager.removeElementFromTracker(_:impressions:)(v77, v78, v9);

                  swift_unknownObjectRelease();

                  sub_1E325F6F0(v9, &qword_1ECF2B7B0, &qword_1E429EC30);
                  v75 = OUTLINED_FUNCTION_98_9();
                  v76(v75);
                }

                else
                {

                  (*(v60 + 8))(v0, v13);
                }

                goto LABEL_47;
              }
            }

            else
            {

              OUTLINED_FUNCTION_32_2();
              __swift_storeEnumTagSinglePayload(v57, v58, v59, v13);
            }

            v43 = &qword_1ECF2B7B0;
            v44 = &qword_1E429EC30;
            v45 = v12;
LABEL_46:
            sub_1E325F6F0(v45, v43, v44);
            goto LABEL_47;
          }
        }

        else
        {
          v87 = 0u;
          v88 = 0u;
        }

        v43 = &unk_1ECF296E0;
        v44 = &unk_1E4298030;
        v45 = &v87;
        goto LABEL_46;
      }
    }

    v41 = sub_1E3C46500();
    if (v41)
    {
      sub_1E3C4C2D0();
    }

    if (!v2)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_43:
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3C55034@<D0>(_OWORD *a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_countDownPresenter);
  v5 = *(v2 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost);

  sub_1E3807434(v5, v4, &v8);
  v6 = v9[0];
  *a2 = v8;
  a2[1] = v6;
  result = *(v9 + 9);
  *(a2 + 25) = *(v9 + 9);
  return result;
}

void sub_1E3C550B0()
{
  OUTLINED_FUNCTION_31_1();
  v24[0] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35C00, &qword_1E42C5FE8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_41();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35C08, qword_1E42C5FF0);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_12();
  v12 = *(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController);
  swift_getKeyPath();
  v13 = v12;
  sub_1E41FE2F4();

  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v14 = sub_1E4206A04();
  v24[1] = v14;
  sub_1E42069A4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  OUTLINED_FUNCTION_10_99();
  sub_1E328FCF4(v19, &qword_1ECF35C00, &qword_1E42C5FE8);
  sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F6F0(v5, &unk_1ECF2D2B0, &unk_1E429D3D0);

  v20 = OUTLINED_FUNCTION_111_6();
  v21(v20, v6);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  v22 = v24[0];
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_15();
  sub_1E328FCF4(v23, &qword_1ECF35C08, qword_1E42C5FF0);
  sub_1E4200844();
  OUTLINED_FUNCTION_31_4();

  (*(v10 + 8))(v1, v8);
  OUTLINED_FUNCTION_44_7(v22 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_observers);
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3C553B4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 mutePlaybackInBackground];
  *a2 = result;
  return result;
}

void sub_1E3C553FC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33_0();
  v7 = v0[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost];
  v8 = objc_opt_self();
  v9 = v8;
  if (v7 == 2)
  {
    v10 = [v8 isFeatureEnabled_];
  }

  else if ([v8 isFeatureEnabled_])
  {
    v10 = 1;
  }

  else
  {
    v10 = 1;
    if (([v9 isFeatureEnabled_] & 1) == 0)
    {
      v11 = v1;
      v12 = v5;
      v13 = [objc_opt_self() processInfo];
      v14 = [v13 isLowPowerModeEnabled];

      if (v14 & 1) != 0 || ([v9 isFeatureEnabled_])
      {
        v10 = 1;
      }

      else
      {
        v10 = [v9 isFeatureEnabled_];
      }

      v5 = v12;
      v1 = v11;
    }
  }

  if (v2[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost])
  {
    v15 = 1;
  }

  else
  {
    v16 = sub_1E3C46984();
    v15 = [v16 isAutoAdvanceToNextPageEnabled];
  }

  v17 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isAutoAdvanceEnabled;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v31 = v10;
  if (v10 & 1 | ((v2[v17] & 1) == 0) || (v18 = v15, v2[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_forceDisableAutoAdvance] == 1))
  {
    v18 = 0;
  }

  v19 = sub_1E324FBDC();
  (*(v5 + 16))(v1, v19, v3);
  v20 = v2;
  v21 = sub_1E41FFC94();
  v22 = sub_1E4206814();
  if (os_log_type_enabled(v21, v22))
  {
    v29 = v3;
    v23 = swift_slowAlloc();
    v30 = v18;
    v24 = OUTLINED_FUNCTION_100();
    v32 = v24;
    *v23 = 136316418;
    v25 = sub_1E3C486F4();
    sub_1E3270FC8(v25, v26, &v32);
    OUTLINED_FUNCTION_122();

    *(v23 + 4) = v5;
    *(v23 + 12) = 1024;
    *(v23 + 14) = v30;
    *(v23 + 18) = 1024;
    v27 = v2[v17];

    *(v23 + 20) = v27;
    *(v23 + 24) = 1024;
    *(v23 + 26) = v31;
    *(v23 + 30) = 1024;
    v28 = v20[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_forceDisableAutoAdvance];

    *(v23 + 32) = v28;
    *(v23 + 36) = 1024;
    *(v23 + 38) = v15;
    _os_log_impl(&dword_1E323F000, v21, v22, "%s shouldEnableAutoAdvance result: %{BOOL}d, isAutoAdvanceEnabled: %{BOOL}d,isAutoAdvanceDisabledByAx: %{BOOL}d, forceDisableAutoAdvance: %{BOOL}d,autoAdvanceEnabledByConfig: %{BOOL}d", v23, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v5 + 8))(v1, v29);
  }

  else
  {

    (*(v5 + 8))(v1, v3);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C55790(double a1)
{
  sub_1E3C47690();
  v3 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (sub_1E32AE9B0(*(v1 + v3)) >= 2)
  {
    v4 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_autoAdvancePageTimer;
    v5 = *(v1 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_autoAdvancePageTimer);
    if (v5)
    {
      [v5 invalidate];
      v6 = *(v1 + v4);
    }

    else
    {
      v6 = 0;
    }

    *(v1 + v4) = 0;

    v7 = objc_opt_self();
    OUTLINED_FUNCTION_4_0();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1E3C5A2B4;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_7_6();
    aBlock[2] = v9;
    aBlock[3] = &block_descriptor_143;
    v10 = _Block_copy(aBlock);

    v11 = [v7 scheduledTimerWithTimeInterval:0 repeats:v10 block:a1];
    _Block_release(v10);
    v12 = *(v1 + v4);
    *(v1 + v4) = v11;
  }
}

void sub_1E3C558F0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v41 - v9;
  v11 = [*&v0[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController] player];
  if (v11)
  {
    v12 = v11;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v13(v10);
    v14 = v0;
    OUTLINED_FUNCTION_145_1();
    v15 = sub_1E41FFC94();
    v16 = sub_1E4206814();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_6_21();
      v18 = OUTLINED_FUNCTION_100();
      v41 = v3;
      v19 = v18;
      *&v43 = v18;
      *v17 = 136315138;
      v20 = sub_1E3C486F4();
      v22 = sub_1E3270FC8(v20, v21, &v43);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1E323F000, v15, v16, "%s cancelPlayerProgressObserver", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_6_0();

      (*(v5 + 8))(v10, v41);
    }

    else
    {

      (*(v5 + 8))(v10, v3);
    }

    sub_1E3C54318();
  }

  else
  {
    v23 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_elapsedTimeObserverToken;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E3743538(&v0[v23], &v43, &unk_1ECF296E0, &unk_1E4298030);
    v24 = *(&v44 + 1);
    sub_1E325F6F0(&v43, &unk_1ECF296E0, &unk_1E4298030);
    if (v24)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_2_26();
      v25(v1);
      v26 = v0;
      v27 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_34_9())
      {
        OUTLINED_FUNCTION_6_21();
        v28 = OUTLINED_FUNCTION_10_11();
        v41 = v3;
        v29 = v28;
        *&v43 = v28;
        v30 = OUTLINED_FUNCTION_164_3(4.8149e-34);
        v32 = sub_1E3270FC8(v30, v31, &v43);

        *(v2 + 4) = v32;
        OUTLINED_FUNCTION_60_3();
        _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        OUTLINED_FUNCTION_79();
        OUTLINED_FUNCTION_55();

        v38 = OUTLINED_FUNCTION_111_6();
        v40 = v41;
      }

      else
      {

        v38 = OUTLINED_FUNCTION_111_6();
        v40 = v3;
      }

      v39(v38, v40);
      v43 = 0u;
      v44 = 0u;
      OUTLINED_FUNCTION_11_3(&v0[v23], &v42);
      sub_1E3B0D4BC(&v43, &v0[v23], &unk_1ECF296E0, &unk_1E4298030);
      swift_endAccess();
    }
  }

  OUTLINED_FUNCTION_25_2();
}