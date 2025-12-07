void sub_264A2C638(uint64_t a1)
{
  sub_264A2C814(319, &qword_27FF897C0, &qword_27FF897C8, &unk_264B50B00);
  if (v1 <= 0x3F)
  {
    sub_264A2C814(319, &qword_27FF897D0, &qword_27FF88DA8, &qword_264B48500);
    if (v2 <= 0x3F)
    {
      sub_264B40104();
      if (v3 <= 0x3F)
      {
        sub_264A2C814(319, &unk_27FF897E0, &qword_27FF893A0, &unk_264B44E60);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_264A2C814(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_264B41614();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_264A2C868()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_negotiator);
  v2 = v1;
  return v1;
}

uint64_t sub_264A2C8C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
  swift_beginAccess();
  return sub_2649D046C(v1 + v3, a1, &qword_27FF89850, &qword_264B485E0);
}

uint64_t sub_264A2C928(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
  swift_beginAccess();
  sub_2649FECCC(a1, v1 + v3, &qword_27FF89850, &qword_264B485E0);
  return swift_endAccess();
}

void *sub_264A2C9A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_interruptionError);
  v2 = v1;
  return v1;
}

void sub_264A2C9DC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_interruptionError);
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_interruptionError) = a1;
}

uint64_t sub_264A2C9F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649E0EE4;

  return sub_264A26C3C();
}

uint64_t sub_264A2CA98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CD850;

  return sub_264A27AD8(a1);
}

uint64_t sub_264A2CB34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264A29280();
}

uint64_t sub_264A2CBC4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF897C8, &unk_264B50B00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89858, &qword_264B485E8);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89860, &qword_264B485F0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v20 - v14;
  v16 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v1 + v16, v11, &qword_27FF89858, &qword_264B485E8);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_2649D04D4(v11, &qword_27FF89858, &qword_264B485E8);
    v17 = 1;
LABEL_5:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89868, &qword_264B485F8);
    (*(*(v19 - 8) + 56))(v15, v17, 1, v19);
    return sub_2649D04D4(v15, &qword_27FF89860, &qword_264B485F0);
  }

  (*(v4 + 16))(v7, v11, v3);
  result = sub_2649D04D4(v11, &qword_27FF89858, &qword_264B485E8);
  if (a1)
  {
    v20[0] = [a1 streamToken];
    v20[1] = 0;
    v21 = 0;
    sub_264B412A4();
    (*(v4 + 8))(v7, v3);
    v17 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit25MediaTransportAudioStreamC16AVCDelegateEvent33_1825A694C248769AA3E0F65C44D678FELLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_264A2D004(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_264A2D04C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_264A2D090(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id sub_264A2D0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = 0;
  if (v8(a1, 1, v6) != 1)
  {
    v9 = sub_264B400B4();
    (*(v7 + 8))(a1, v6);
  }

  if (v8(a2, 1, v6) == 1)
  {
    v10 = 0;
    if (a3)
    {
LABEL_5:
      v11 = sub_264B40F54();

      goto LABEL_8;
    }
  }

  else
  {
    v10 = sub_264B400B4();
    (*(v7 + 8))(a2, v6);
    if (a3)
    {
      goto LABEL_5;
    }
  }

  v11 = 0;
LABEL_8:
  v17[0] = 0;
  v12 = [v16 initWithRTPNWConnectionClientID:v9 rtcpNWConnectionClientID:v10 options:v11 error:v17];

  if (v12)
  {
    v13 = v17[0];
  }

  else
  {
    v14 = v17[0];
    sub_264B3FF84();

    swift_willThrow();
  }

  return v12;
}

uint64_t sub_264A2D2CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v41 = a1;
  v42 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v43 = v8;
  v44 = 0;
  v45 = v11 & v9;
  v46 = a2;
  v47 = a3;

  sub_264A5B830(&v37);
  if (!*(&v38 + 1))
  {
LABEL_18:
    sub_264A0E7A0(v41);
  }

  while (1)
  {
    v34 = v37;
    v35 = v38;
    v36 = v39;
    sub_264A23FD8(&v40, v33);
    v15 = *a5;
    v16 = sub_264A20A44(&v34);
    v18 = *(v15 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (*(v15 + 24) < v21)
    {
      sub_264A21CC8(v21, a4 & 1);
      v16 = sub_264A20A44(&v34);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v30 = v16;
    sub_264A2395C();
    v16 = v30;
    if (v22)
    {
LABEL_6:
      v12 = *a5;
      v13 = 32 * v16;
      sub_2649C964C(*(*a5 + 56) + 32 * v16, v32);
      __swift_destroy_boxed_opaque_existential_0(v33);
      sub_2649C95C0(&v34);
      v14 = *(v12 + 56);
      __swift_destroy_boxed_opaque_existential_0((v14 + v13));
      sub_264A23FD8(v32, (v14 + v13));
      goto LABEL_7;
    }

LABEL_14:
    v24 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v25 = v24[6] + 40 * v16;
    v26 = v34;
    v27 = v35;
    *(v25 + 32) = v36;
    *v25 = v26;
    *(v25 + 16) = v27;
    sub_264A23FD8(v33, (v24[7] + 32 * v16));
    v28 = v24[2];
    v20 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v24[2] = v29;
LABEL_7:
    sub_264A5B830(&v37);
    a4 = 1;
    if (!*(&v38 + 1))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_264B41AE4();
  __break(1u);
  return result;
}

uint64_t sub_264A2D510(uint64_t a1, void *a2)
{
  v23 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF897C8, &unk_264B50B00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89858, &qword_264B485E8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89860, &qword_264B485F0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v22 - v15;
  v17 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v2 + v17, v12, &qword_27FF89858, &qword_264B485E8);
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_2649D04D4(v12, &qword_27FF89858, &qword_264B485E8);
    v18 = 1;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_2649D04D4(v12, &qword_27FF89858, &qword_264B485E8);
    v24 = v23 & 1;
    v25 = a2;
    v26 = 1;
    v19 = a2;
    sub_264B412A4();
    (*(v5 + 8))(v8, v4);
    v18 = 0;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89868, &qword_264B485F8);
  (*(*(v20 - 8) + 56))(v16, v18, 1, v20);
  return sub_2649D04D4(v16, &qword_27FF89860, &qword_264B485F0);
}

uint64_t sub_264A2D7D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF897C8, &unk_264B50B00);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89858, &qword_264B485E8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89860, &qword_264B485F0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v18 - v12;
  v14 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_audioStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v0 + v14, v9, &qword_27FF89858, &qword_264B485E8);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_2649D04D4(v9, &qword_27FF89858, &qword_264B485E8);
    v15 = 1;
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    sub_2649D04D4(v9, &qword_27FF89858, &qword_264B485E8);
    v18[0] = 0;
    v18[1] = 0;
    v19 = 2;
    sub_264B412A4();
    (*(v2 + 8))(v5, v1);
    v15 = 0;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89868, &qword_264B485F8);
  (*(*(v16 - 8) + 56))(v13, v15, 1, v16);
  return sub_2649D04D4(v13, &qword_27FF89860, &qword_264B485F0);
}

unint64_t sub_264A2DAB0()
{
  result = qword_27FF898B0;
  if (!qword_27FF898B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89898, &unk_264B48618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF898B0);
  }

  return result;
}

uint64_t sub_264A2DB14()
{
  MEMORY[0x266749A30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A2DB4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C8, &qword_264B48628);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_264A2DC30(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C8, &qword_264B48628) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264A25774(a1, v6, v7, v1 + v5, v8);
}

void sub_264A2DD5C(int result, id a2, char a3)
{
  if (a3 != -1)
  {
    sub_264A2DD70(result, a2, a3);
  }
}

void sub_264A2DD70(int a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }
}

id sub_264A2DD88(int a1, id a2, char a3)
{
  if (a3 == 1)
  {
    return a2;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264A2DDF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_264A2DE40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_264A2DEA0(void *a1@<X8>)
{
  v2 = sub_264B41014();
  v3 = [objc_opt_self() interfaceWithIdentifier_];

  v4 = [objc_opt_self() protocolForProtocol_];
  [v3 setServer_];

  [v3 setClientMessagingExpectation_];
  [v3 copy];
  sub_264B41664();
  swift_unknownObjectRelease();
  sub_264A2E090();
  if (swift_dynamicCast())
  {
    v5 = [objc_opt_self() userInteractive];

    *a1 = 0xD000000000000028;
    a1[1] = 0x8000000264B5B6E0;
    a1[2] = 0xD000000000000030;
    a1[3] = 0x8000000264B5B710;
    a1[4] = v5;
    a1[5] = v6;
    a1[6] = 0xD000000000000019;
    a1[7] = 0x8000000264B5B7D0;
  }

  else
  {
    sub_264B41874();
    __break(1u);
  }
}

unint64_t sub_264A2E090()
{
  result = qword_27FF898F8;
  if (!qword_27FF898F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF898F8);
  }

  return result;
}

uint64_t RTIPayload.data.getter()
{
  v1 = *(v0 + 8);
  sub_2649DEF18(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_264A2E194()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_264A2E1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264B41AA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_264A2E2A4(uint64_t a1)
{
  v2 = sub_264A2E8B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A2E2E0(uint64_t a1)
{
  v2 = sub_264A2E8B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RTIPayload.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89900, &qword_264B48760);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - v6;
  v11[0] = *(v1 + 8);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A2E8B8();
  sub_264B41BD4();
  LOBYTE(v12) = 0;
  v9 = v11[1];
  sub_264B41A14();
  if (!v9)
  {
    v12 = v11[0];
    v13 = v8;
    v14 = 1;
    sub_2649DEF18(v11[0], v8);
    sub_264A2E90C();
    sub_264B41A24();
    sub_2649DEF6C(v12, v13);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RTIPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89918, &qword_264B48768);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A2E8B8();
  sub_264B41BC4();
  if (!v2)
  {
    LOBYTE(v13) = 0;
    v10 = sub_264B41974();
    v14 = 1;
    sub_264A2E960();
    sub_264B41984();
    (*(v6 + 8))(v9, v5);
    v11 = v13;
    *a2 = v10;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void RTIPayload.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 version];
  v5 = [a1 data];
  if (v5)
  {
    v6 = v5;
    v7 = sub_264B40024();
    v9 = v8;

    *a2 = v4;
    a2[1] = v7;
    a2[2] = v9;
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_264A2E750(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          v17 = sub_2649DEF18(a3, a4);
          return sub_264A18170(v13, a2, a3, a4, v17) & 1;
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

unint64_t sub_264A2E8B8()
{
  result = qword_27FF89908;
  if (!qword_27FF89908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89908);
  }

  return result;
}

unint64_t sub_264A2E90C()
{
  result = qword_27FF89910;
  if (!qword_27FF89910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89910);
  }

  return result;
}

unint64_t sub_264A2E960()
{
  result = qword_27FF89920;
  if (!qword_27FF89920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89920);
  }

  return result;
}

uint64_t sub_264A2E9B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_264A2EA08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_264A2EA7C()
{
  result = qword_27FF89928;
  if (!qword_27FF89928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89928);
  }

  return result;
}

unint64_t sub_264A2EAD4()
{
  result = qword_27FF89930;
  if (!qword_27FF89930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89930);
  }

  return result;
}

unint64_t sub_264A2EB2C()
{
  result = qword_27FF89938;
  if (!qword_27FF89938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89938);
  }

  return result;
}

id AppleAccountBackedAccountStorePrimitives.isiCloudSignedIn.getter()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_primaryAppleAccount];

    if (v2)
    {
    }

    return (v2 != 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_264A2EC24()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_primaryAppleAccount];

    if (v2)
    {
    }

    return (v2 != 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_264A2ED1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CD9E78]) initWithType_];
  v4 = sub_264B41014();
  v5 = sub_264B41014();
  [v3 setValue:v4 forKey:v5];

  v6 = sub_264B41144();
  v7 = sub_264B41014();
  [v3 setValue:v6 forKey:v7];

  return v3;
}

id sub_264A2EE18(double a1, double a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD9E78]) initWithType_];
  v3 = sub_264B41014();
  v4 = sub_264B41014();
  [v2 setValue:v3 forKey:v4];

  v5 = sub_264B413F4();
  v6 = sub_264B41014();
  [v2 setValue:v5 forKey:v6];

  v7 = sub_264B41454();
  v8 = sub_264B41014();
  [v2 setValue:v7 forKey:v8];

  v9 = sub_264B415B4();
  v10 = sub_264B41014();
  [v2 setValue:v9 forKey:v10];

  v11 = sub_264B413F4();
  v12 = sub_264B41014();
  [v2 setValue:v11 forKey:v12];

  if (qword_27FF883D8 != -1)
  {
    swift_once();
  }

  v13 = sub_264B413F4();
  v14 = sub_264B41014();
  [v2 setValue:v13 forKey:v14];

  v15 = sub_264B413F4();
  v16 = sub_264B41014();
  [v2 setValue:v15 forKey:v16];

  v17 = sub_264B413F4();
  v18 = sub_264B41014();
  [v2 setValue:v17 forKey:v18];

  v19 = sub_264B413F4();
  v20 = sub_264B41014();
  [v2 setValue:v19 forKey:v20];

  return v2;
}

uint64_t sub_264A2F15C()
{

  sub_264A2F51C(v0 + OBJC_IVAR____TtC16ScreenSharingKit26MockLaunchRequestAuthority_currentLaunchRequest);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockLaunchRequestAuthority(uint64_t a1)
{
  result = qword_27FF89940;
  if (!qword_27FF89940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A2F21C(uint64_t a1)
{
  sub_264A2F2BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_264A2F2BC(uint64_t a1)
{
  if (!qword_27FF89950)
  {
    sub_264B40744();
    v1 = sub_264B41614();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF89950);
    }
  }
}

uint64_t sub_264A2F314@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16ScreenSharingKit26MockLaunchRequestAuthority_currentLaunchRequest;
  swift_beginAccess();
  return sub_2649D35CC(v3 + v4, a1);
}

uint64_t sub_264A2F370()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89958, &qword_264B48A58);
  sub_264A2F4B8();
  return sub_264B40AB4();
}

uint64_t sub_264A2F3CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E0, &qword_264B449C0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = *v0;
  v6 = sub_264B40744();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC16ScreenSharingKit26MockLaunchRequestAuthority_currentLaunchRequest;
  swift_beginAccess();
  sub_2649D36FC(v4, v5 + v7);
  return swift_endAccess();
}

unint64_t sub_264A2F4B8()
{
  result = qword_27FF89960;
  if (!qword_27FF89960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89958, &qword_264B48A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89960);
  }

  return result;
}

uint64_t sub_264A2F51C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E0, &qword_264B449C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of iCloudHealthPrimitives.iCloudHealthNeedsRepair()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264A2F69C;

  return v7(a1, a2);
}

uint64_t sub_264A2F69C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_264A2F798(void *a1)
{
  v2 = v1;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE70);
  v5 = a1;
  v6 = sub_264B40944();
  v7 = sub_264B41484();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v8 = 136446210;
    ObjectType = swift_getObjectType();
    v21[0] = v5;
    WitnessTable = swift_getWitnessTable();
    v12 = sub_264A543FC(v21, ObjectType, WitnessTable);
    v14 = sub_2649CC004(v12, v13, v22);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_2649C6000, v6, v7, "Removing connection %{public}s...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v15 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineConnections;
  swift_beginAccess();
  v16 = v5;
  v17 = sub_264A31A48((v2 + v15), v16);

  v18 = *(v2 + v15);
  if (v18 >> 62)
  {
    v19 = sub_264B41884();
    if (v19 >= v17)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19 >= v17)
    {
LABEL_7:
      sub_264AD3DAC(v17, v19);
      return swift_endAccess();
    }
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_264A2F9CC(void *a1)
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE70);
  v3 = a1;
  v4 = sub_264B40944();
  v5 = sub_264B41484();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    ObjectType = swift_getObjectType();
    v14 = v3;
    WitnessTable = swift_getWitnessTable();
    v10 = sub_264A543FC(&v14, ObjectType, WitnessTable);
    v12 = sub_2649CC004(v10, v11, &v15);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_2649C6000, v4, v5, "Connection %{public}s did interrupt", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  [v3 invalidate];
  return sub_264A2F798(v3);
}

uint64_t sub_264A2FB7C(void *a1)
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE70);
  v3 = a1;
  v4 = sub_264B40944();
  v5 = sub_264B41484();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    ObjectType = swift_getObjectType();
    v14 = v3;
    WitnessTable = swift_getWitnessTable();
    v10 = sub_264A543FC(&v14, ObjectType, WitnessTable);
    v12 = sub_2649CC004(v10, v11, &v15);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_2649C6000, v4, v5, "Connection %{public}s did invalidate", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  return sub_264A2F798(v3);
}

void sub_264A2FD28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_264B41014();
  [a1 setUserInfo_];

  [a1 setInterface_];
  Strong = swift_unknownObjectUnownedLoadStrong();
  [a1 setInterfaceTarget_];

  [a1 setServiceQuality_];
  v9 = swift_unknownObjectUnownedLoadStrong();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v22 = sub_264A3297C;
  v23 = v10;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2649F5890;
  v21 = &block_descriptor_56;
  v11 = _Block_copy(&v18);

  [a1 setActivationHandler_];
  _Block_release(v11);
  v12 = swift_unknownObjectUnownedLoadStrong();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v22 = sub_264A32984;
  v23 = v13;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2649F5890;
  v21 = &block_descriptor_62;
  v14 = _Block_copy(&v18);

  [a1 setInvalidationHandler_];
  _Block_release(v14);
  v15 = swift_unknownObjectUnownedLoadStrong();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v22 = sub_264A329A8;
  v23 = v16;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2649F5890;
  v21 = &block_descriptor_68;
  v17 = _Block_copy(&v18);

  [a1 setInterruptionHandler_];
  _Block_release(v17);
}

void sub_264A2FFC8(void *a1)
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE70);
  v3 = a1;
  oslog = sub_264B40944();
  v4 = sub_264B41484();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    ObjectType = swift_getObjectType();
    v13 = v3;
    WitnessTable = swift_getWitnessTable();
    v9 = sub_264A543FC(&v13, ObjectType, WitnessTable);
    v11 = sub_2649CC004(v9, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_2649C6000, oslog, v4, "Connection %{public}s did activate", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_264A30214()
{
  *(v1 + 24) = v0;
  sub_264B41244();
  *(v1 + 32) = sub_264B41234();
  v3 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A302AC, v3, v2);
}

void sub_264A302AC()
{
  v24 = v0;

  v1 = [objc_opt_self() currentContext];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 remoteToken];
  }

  else
  {
    v3 = 0;
  }

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71B8);
  v5 = v3;
  v6 = sub_264B40944();
  v7 = sub_264B41474();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    v0[2] = v3;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF899D8, &qword_264B48AB8);
    v11 = sub_264B41064();
    v13 = sub_2649CC004(v11, v12, &v22);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2649C6000, v6, v7, "Received ping from %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v14 = v0[3];
  v15 = *(v14 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_pongNumber);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v14 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_pongNumber) = v17;
    v22 = 0x2320676E6F50;
    v23 = 0xE600000000000000;
    v0[2] = v17;
    v18 = sub_264B41A64();
    MEMORY[0x266748390](v18);

    v19 = v22;
    v20 = v23;
    v21 = v0[1];

    v21(v19, v20);
  }
}

uint64_t sub_264A30690(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_264B41244();
  v2[4] = sub_264B41234();
  v4 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A30728, v4, v3);
}

uint64_t sub_264A30728()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_264A329CC;

  return sub_264A30214();
}

uint64_t sub_264A307D8()
{
  v1[3] = v0;
  v1[4] = sub_264B41244();
  v1[5] = sub_264B41234();
  v3 = sub_264B411C4();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_264A30874, v3, v2);
}

uint64_t sub_264A30874()
{
  v19 = v0;
  v1 = [objc_opt_self() currentContext];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 remoteToken];
  }

  else
  {
    v3 = 0;
  }

  v0[8] = v3;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71B8);
  v5 = v3;
  v6 = sub_264B40944();
  v7 = sub_264B41484();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v0[2] = v3;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF899D8, &qword_264B48AB8);
    v11 = sub_264B41064();
    v13 = sub_2649CC004(v11, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2649C6000, v6, v7, "Received stopCommandLineSession from %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v14 = v0[3];
  v0[9] = sub_264B41234();
  v15 = swift_task_alloc();
  v0[10] = v15;
  *(v15 + 16) = v14;
  v16 = swift_task_alloc();
  v0[11] = v16;
  *v16 = v0;
  v16[1] = sub_264A30B10;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A30B10()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_264A30C70, v3, v2);
}

uint64_t sub_264A30C70()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264A30CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v9 = 0;
  v10 = -4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_264A380B0(&v9, v5);
  return sub_264A32674(v5);
}

uint64_t sub_264A30F78(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_264B41244();
  v2[4] = sub_264B41234();
  v4 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A31010, v4, v3);
}

uint64_t sub_264A31010()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_264A310C0;

  return sub_264A307D8();
}

uint64_t sub_264A310C0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *v1;

  v7 = *(v3 + 40);
  if (v2)
  {
    v8 = sub_264B3FF74();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 40));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_264A31244()
{
  *(v1 + 24) = v0;
  sub_264B41244();
  *(v1 + 32) = sub_264B41234();
  v3 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A312DC, v3, v2);
}

uint64_t sub_264A312DC()
{
  v21 = v0;

  v1 = [objc_opt_self() currentContext];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 remoteToken];
  }

  else
  {
    v3 = 0;
  }

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71B8);
  v5 = v3;
  v6 = sub_264B40944();
  v7 = sub_264B41484();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    v0[2] = v3;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF899D8, &qword_264B48AB8);
    v11 = sub_264B41064();
    v13 = sub_2649CC004(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2649C6000, v6, v7, "Received currentCommandLineSessionState from %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v14 = *(v0[3] + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState);
  v0[2] = v14;
  sub_264A32420(v14);
  v15 = sub_264B41064();
  v17 = v16;

  v18 = v0[1];

  return v18(v15, v17);
}

uint64_t sub_264A31690(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_264B41244();
  v2[4] = sub_264B41234();
  v4 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A31728, v4, v3);
}

uint64_t sub_264A31728()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_264A317D8;

  return sub_264A31244();
}

uint64_t sub_264A317D8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 24);
  v7 = *v3;

  if (v4)
  {
    v8 = sub_264B3FF74();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = sub_264B41014();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v5 + 40);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

unint64_t sub_264A31968(unint64_t a1, id a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_264B41884();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x266748A70](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;

    if (v8 == a2)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_264A31A48(unint64_t *a1, id a2)
{
  v7 = *a1;
  v8 = sub_264A31968(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_264B41884();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_264B41884())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x266748A70](v11, v7);
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v15 = *(v7 + 8 * v11 + 32);
LABEL_17:
    v16 = v15;

    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x266748A70](v10, v7);
          v17 = MEMORY[0x266748A70](v11, v7);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v18)
          {
            goto LABEL_47;
          }

          if (v11 >= v18)
          {
            goto LABEL_48;
          }

          v19 = *(v7 + 32 + 8 * v11);
          v3 = *(v7 + 32 + 8 * v10);
          v17 = v19;
        }

        v20 = v17;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_264AD39BC(v7);
          v21 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v21) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v22 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v20;

        if ((v7 & 0x8000000000000000) != 0 || v21)
        {
          v7 = sub_264AD39BC(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_44;
      }
    }

    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return sub_264B41884();
}

void sub_264A31C84(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = [a1 remoteToken];
  v8 = sub_264B41014();
  v9 = [v7 hasEntitlement_];

  if (v9)
  {
    v10 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineServiceSpecification + 16);
    v50 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineServiceSpecification);
    v51 = v10;
    v11 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineServiceSpecification + 48);
    v52 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineServiceSpecification + 32);
    v53 = v11;
    v12 = sub_264B41014();
    v13 = [a2 decodeStringForKey_];

    if (v13)
    {
      v14 = sub_264B41044();
      v16 = v15;

      if (qword_27FF88408 != -1)
      {
        swift_once();
      }

      v17 = sub_264B40964();
      __swift_project_value_buffer(v17, qword_27FF8AE70);
      v18 = a1;

      v19 = sub_264B40944();
      v20 = sub_264B41484();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v48[0] = v22;
        *v21 = 136446722;
        aBlock[0] = v18;
        WitnessTable = swift_getWitnessTable();
        v24 = sub_264A543FC(aBlock, ObjectType, WitnessTable);
        v26 = sub_2649CC004(v24, v25, v48);

        *(v21 + 4) = v26;
        *(v21 + 12) = 2082;
        *(v21 + 14) = sub_2649CC004(v14, v16, v48);
        *(v21 + 22) = 2082;
        v27 = [objc_opt_self() currentContext];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 remoteProcess];
        }

        else
        {
          v29 = 0;
        }

        aBlock[0] = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89A50, qword_264B48B18);
        v37 = sub_264B41064();
        v39 = sub_2649CC004(v37, v38, v48);

        *(v21 + 24) = v39;
        _os_log_impl(&dword_2649C6000, v19, v20, "Received incoming connection %{public}s with identifier %{public}s from process: %{public}s", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266749940](v22, -1, -1);
        MEMORY[0x266749940](v21, -1, -1);
      }

      v40 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v41 = swift_allocObject();
      *(v41 + 16) = v14;
      *(v41 + 24) = v16;
      v42 = v51;
      *(v41 + 32) = v50;
      *(v41 + 48) = v42;
      v43 = v53;
      *(v41 + 64) = v52;
      *(v41 + 80) = v43;
      *(v41 + 96) = v40;
      v44 = swift_allocObject();
      *(v44 + 16) = sub_264A328A8;
      *(v44 + 24) = v41;
      aBlock[4] = sub_264A328C8;
      aBlock[5] = v44;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264AD75DC;
      aBlock[3] = &block_descriptor_5;
      v45 = _Block_copy(aBlock);
      sub_264A328E8(&v50, v48);

      [v18 configureConnection_];
      _Block_release(v45);
      LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

      if (v45)
      {
        __break(1u);
      }

      else
      {
        v46 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineConnections;
        swift_beginAccess();
        v18 = v18;
        MEMORY[0x266748430]();
        if (*((*(v3 + v46) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v3 + v46) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_26:
          sub_264B41194();
          swift_endAccess();
          [v18 activate];

          return;
        }
      }

      sub_264B41174();
      goto LABEL_26;
    }

    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v34 = sub_264B40964();
    __swift_project_value_buffer(v34, qword_27FF8AE70);
    oslog = sub_264B40944();
    v35 = sub_264B41494();
    if (os_log_type_enabled(oslog, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2649C6000, oslog, v35, "Failed to decode context identifier, dropping event", v36, 2u);
      MEMORY[0x266749940](v36, -1, -1);
    }
  }

  else
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v30 = sub_264B40964();
    __swift_project_value_buffer(v30, qword_27FF8AE70);
    v31 = sub_264B40944();
    v32 = sub_264B41494();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2649C6000, v31, v32, "Incoming connection missing required entitlement, ignoring", v33, 2u);
      MEMORY[0x266749940](v33, -1, -1);
    }

    [a1 invalidate];
  }
}

uint64_t sub_264A32374()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2649E0EE4;

  return sub_264A31690(v2, v3);
}

id sub_264A32420(id result)
{
  if (result >= 7)
  {
    return result;
  }

  return result;
}

uint64_t sub_264A32430()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2649CD850;

  return sub_264A30F78(v2, v3);
}

uint64_t sub_264A324E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2649E0EE4;

  return sub_264A9F788(v2, v3, v4);
}

uint64_t sub_264A325A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264A9F870(a1, v4, v5, v6);
}

uint64_t sub_264A32674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264A3271C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2649E0EE4;

  return sub_264A30690(v2, v3);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264A32808()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A32840()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

double block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_264A32944()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t dispatch thunk of RemoteAuthenticationPrimitives.isDevicePairedForMacUnlock()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264A2F69C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of RemoteAuthenticationPrimitives.isDeviceAvailableForPairing()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of RemoteAuthenticationPrimitives.pairDeviceForMacUnlock()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of RemoteAuthenticationPrimitives.unlockWithAuthenticationToken(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2649CD850;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RemoteAuthenticationPrimitives.disablePairedDevice()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of RemoteAuthenticationPrimitives.startListeningForAuthApprovalRequests(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2649E0EE4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AuthApprovalRequestDelegate.didReceiveApprovalRequest(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_264A33224;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_264A33224(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of AuthApprovalRequestDelegate.approvalRequestDidFail(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2649CD850;

  return v9(a1, a2, a3);
}

uint64_t sub_264A334B8()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit51MediaExperienceBackedMicrophoneDeviceSensorObserver_notificationToken;
  swift_beginAccess();
  if (notify_is_valid_token(*(v0 + v1)))
  {
    notify_cancel(*(v0 + v1));
  }

  v2 = OBJC_IVAR____TtC16ScreenSharingKit51MediaExperienceBackedMicrophoneDeviceSensorObserver__sensorsInUse;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D90, &unk_264B49480);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MediaExperienceBackedMicrophoneDeviceSensorObserver(uint64_t a1)
{
  result = qword_27FF89AD0;
  if (!qword_27FF89AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A335E8(uint64_t a1)
{
  sub_2649DAE24(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_264A33694()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264A33708()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D90, &unk_264B49480);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v26 = v24 - v4;
  v25 = sub_264B41544();
  v5 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264B414F4();
  MEMORY[0x28223BE20](v9, v10);
  v11 = sub_264B40EE4();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = sub_2649CB2F0();
  v24[0] = "notificationToken";
  v24[1] = v13;
  sub_264B40EC4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264A346F4(&qword_27FF88CA0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88CA8, &unk_264B471C0);
  sub_2649CB4C8(&qword_27FF88CB0, &qword_27FF88CA8, &unk_264B471C0, MEMORY[0x277D83970]);
  sub_264B41684();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v25);
  *(v0 + 16) = sub_264B41574();
  v14 = OBJC_IVAR____TtC16ScreenSharingKit51MediaExperienceBackedMicrophoneDeviceSensorObserver__sensorsInUse;
  v15 = sub_2649E5670();
  aBlock[0] = MEMORY[0x266748730](1, &type metadata for DeviceSensorType, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D80, &qword_264B45588);
  v16 = v26;
  sub_264B40A44();
  (*(v27 + 32))(v1 + v14, v16, v28);
  v17 = OBJC_IVAR____TtC16ScreenSharingKit51MediaExperienceBackedMicrophoneDeviceSensorObserver_notificationToken;
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit51MediaExperienceBackedMicrophoneDeviceSensorObserver_notificationToken) = -1;
  v18 = *(v1 + 16);
  v19 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_264A3473C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264A33BD0;
  aBlock[3] = &block_descriptor_16;
  v20 = _Block_copy(aBlock);
  v21 = v18;

  v22 = sub_264B41074();
  swift_beginAccess();
  notify_register_dispatch((v22 + 32), (v1 + v17), v21, v20);
  swift_endAccess();

  _Block_release(v20);

  return v1;
}

uint64_t sub_264A33B70(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_264A33C24(v2);
  }

  return result;
}

uint64_t sub_264A33BD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_264A33C24(int a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v3 = sub_264B40EB4();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_264B40EE4();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264B40F14();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v14 = sub_264B40964();
  __swift_project_value_buffer(v14, qword_27FF8AE70);
  v15 = sub_264B40944();
  v16 = sub_264B414B4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2649C6000, v15, v16, "Received notification from MediaExperience regarding attempted microphone use", v17, 2u);
    MEMORY[0x266749940](v17, -1, -1);
  }

  v18 = *(v1 + 16);
  *v13 = v18;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v18;
  LOBYTE(v18) = sub_264B40F34();
  (*(v10 + 8))(v13, v9);
  if ((v18 & 1) == 0)
  {
    __break(1u);
  }

  state64 = 0;
  if (notify_get_state(a1, &state64))
  {
    v19 = sub_264B40944();
    v20 = sub_264B414A4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2649C6000, v19, v20, "Unable to parse MediaExperience Darwin notification, ignoring", v21, 2u);
      MEMORY[0x266749940](v21, -1, -1);
    }
  }

  else
  {
    v22 = state64;
    v23 = sub_264B40944();
    if (v22 == 1)
    {
      v24 = sub_264B41474();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_2649C6000, v23, v24, "MediaExperience notification state indicates recording was attempted", v25, 2u);
        MEMORY[0x266749940](v25, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v26 = sub_264B40A74();
      sub_264A12A64(&v38, 1);
      v26(aBlock, 0);

      v27 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_264A346D4;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2649D68F4;
      aBlock[3] = &block_descriptor_6;
      v28 = _Block_copy(aBlock);

      sub_264B40EC4();
      v38 = MEMORY[0x277D84F90];
      sub_264A346F4(&qword_27FF892C0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
      sub_2649CB4C8(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0, MEMORY[0x277D83970]);
      v29 = v34;
      v30 = v37;
      sub_264B41684();
      MEMORY[0x266748860](0, v8, v29, v28);
      _Block_release(v28);
      (*(v36 + 8))(v29, v30);
      (*(v33 + 8))(v8, v35);
    }

    else
    {
      v31 = sub_264B414A4();
      if (os_log_type_enabled(v23, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2649C6000, v23, v31, "Unknown MediaExperience notification state, ignoring", v32, 2u);
        MEMORY[0x266749940](v32, -1, -1);
      }
    }
  }
}

uint64_t sub_264A342A4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v2 = sub_264B40964();
    __swift_project_value_buffer(v2, qword_27FF8AE70);
    v3 = sub_264B40944();
    v4 = sub_264B41484();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2649C6000, v3, v4, "Resetting microphone sensor use", v5, 2u);
      MEMORY[0x266749940](v5, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v6 = sub_264B40A74();
    v8 = v7;

    *v8 = MEMORY[0x277D84FA0];
    v6(v9, 0);
  }

  return result;
}

uint64_t sub_264A34434()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF88C80, &unk_264B455A0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D90, &unk_264B49480);
  sub_264B40A54();
  swift_endAccess();
  sub_2649CB4C8(&qword_27FF88C90, &unk_27FF88C80, &unk_264B455A0, MEMORY[0x277CBCEC8]);
  v5 = sub_264B40AB4();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_264A34598@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  return result;
}

uint64_t sub_264A34618(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_264A3469C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_264A346F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264A34760(void *a1)
{
  sub_264B40C54();
  sub_264A347C4();
  return swift_getWitnessTable();
}

unint64_t sub_264A347C4()
{
  result = qword_27FF89AE0;
  if (!qword_27FF89AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89AE0);
  }

  return result;
}

uint64_t sub_264A34868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89AE8, &qword_264B48D88);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v11 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89AF0, &qword_264B48D90);
  sub_264B40DE4();
  v8 = &v7[*(v4 + 36)];
  *v8 = 0x405E000000000000;
  v8[8] = 1;
  v11[0] = xmmword_264B48CD0;
  v11[1] = xmmword_264B48CE0;
  v11[2] = xmmword_264B48CF0;
  v12 = 1106334188;
  v14 = 0;
  v13 = 0;
  v15 = 0;
  v16 = 1065353216;
  sub_264A34A24();
  sub_264B40DC4();
  sub_264A34AE0(v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89B00, &qword_264B48D98);
  return (*(*(v9 - 8) + 16))(a2, a1, v9);
}

unint64_t sub_264A34A24()
{
  result = qword_27FF89AF8;
  if (!qword_27FF89AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89AE8, &qword_264B48D88);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89AF8);
  }

  return result;
}

uint64_t sub_264A34AE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89AE8, &qword_264B48D88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264A34B4C()
{
  result = qword_27FF89B08;
  if (!qword_27FF89B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89AF0, &qword_264B48D90);
    sub_2649CB4C8(&qword_27FF89B10, &qword_27FF89B00, &qword_264B48D98, MEMORY[0x277CE04B0]);
    sub_2649CB4C8(&qword_27FF89B18, &qword_27FF89B20, &unk_264B48DA0, MEMORY[0x277CDFB08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89B08);
  }

  return result;
}

uint64_t sub_264A34C30@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  return result;
}

uint64_t sub_264A34CB0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_264A34D24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264A34DA0(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t (*sub_264A34E10(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264B40A74();
  return sub_264A34EB4;
}

void sub_264A34EB4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_264A34F1C(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A54();
  return swift_endAccess();
}

uint64_t sub_264A34F94(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89F00, &unk_264B48E00);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A64();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t sub_264A35118()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A54();
  return swift_endAccess();
}

uint64_t sub_264A3518C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89F00, &unk_264B48E00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A64();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_264A352C4(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89F00, &unk_264B48E00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives__isWiFiPoweredOn;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A54();
  swift_endAccess();
  return sub_264A35434;
}

void sub_264A35434(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_264B40A64();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_264B40A64();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t CoreWiFiBackedLocalWiFiPrimitives.__allocating_init()()
{
  v0 = swift_allocObject();
  CoreWiFiBackedLocalWiFiPrimitives.init()();
  return v0;
}

uint64_t CoreWiFiBackedLocalWiFiPrimitives.init()()
{
  v1 = v0;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v28 - v5;
  v7 = OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives__isWiFiPoweredOn;
  LOBYTE(aBlock[0]) = 0;
  sub_264B40A44();
  (*(v3 + 32))(v1 + v7, v6, v2);
  v8 = [objc_allocWithZone(MEMORY[0x277D02B18]) init];
  v9 = OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives_coreWiFiInterface;
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives_coreWiFiInterface) = v8;
  v10 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_264A35AF0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649F5890;
  aBlock[3] = &block_descriptor_7;
  v11 = _Block_copy(aBlock);
  v12 = v8;

  [v12 setEventHandler_];
  _Block_release(v11);

  [*(v1 + v9) activate];
  LOBYTE(v12) = [*(v1 + v9) powerOn];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = v12;

  sub_264B40A94();
  v13 = *(v1 + v9);
  aBlock[0] = 0;
  if ([v13 startMonitoringEventType:1 error:aBlock])
  {
    v14 = aBlock[0];
  }

  else
  {
    v15 = aBlock[0];
    v16 = sub_264B3FF84();

    swift_willThrow();
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v17 = sub_264B40964();
    __swift_project_value_buffer(v17, qword_27FFA71B8);
    v18 = v16;
    v19 = sub_264B40944();
    v20 = sub_264B41494();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136446210;
      v28[1] = v16;
      v23 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
      v24 = sub_264B41064();
      v26 = sub_2649CC004(v24, v25, aBlock);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2649C6000, v19, v20, "Failed to start monitoring core WiFi events: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x266749940](v22, -1, -1);
      MEMORY[0x266749940](v21, -1, -1);
    }

    else
    {
    }
  }

  return v1;
}

uint64_t sub_264A359EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A35A24(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if ([a1 type] == 1)
    {
      [*(v4 + OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives_coreWiFiInterface) powerOn];
      swift_getKeyPath();
      swift_getKeyPath();
      return sub_264B40A94();
    }

    else
    {
    }
  }

  return result;
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t CoreWiFiBackedLocalWiFiPrimitives.deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives_coreWiFiInterface;
  [*(v0 + OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives_coreWiFiInterface) invalidate];
  v2 = OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives__isWiFiPoweredOn;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return v0;
}

uint64_t CoreWiFiBackedLocalWiFiPrimitives.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives_coreWiFiInterface;
  [*(v0 + OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives_coreWiFiInterface) invalidate];
  v2 = OBJC_IVAR____TtC16ScreenSharingKit33CoreWiFiBackedLocalWiFiPrimitives__isWiFiPoweredOn;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t CoreWiFiBackedLocalWiFiPrimitives.wifiPoweredOnPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89F00, &unk_264B48E00);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A54();
  swift_endAccess();
  sub_264A35F48();
  v5 = sub_264B40AB4();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_264A35DA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264A35E18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89F00, &unk_264B48E00);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D98, &qword_264B45870);
  sub_264B40A54();
  swift_endAccess();
  sub_264A35F48();
  v5 = sub_264B40AB4();
  (*(v1 + 8))(v4, v0);
  return v5;
}

unint64_t sub_264A35F48()
{
  result = qword_27FF89B38;
  if (!qword_27FF89B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF89F00, &unk_264B48E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89B38);
  }

  return result;
}

uint64_t type metadata accessor for CoreWiFiBackedLocalWiFiPrimitives(uint64_t a1)
{
  result = qword_27FF89B40;
  if (!qword_27FF89B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A36008(uint64_t a1)
{
  sub_264A361A8();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_264A361A8()
{
  if (!qword_27FF8A990)
  {
    v0 = sub_264B40AA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF8A990);
    }
  }
}

uint64_t getEnumTagSinglePayload for MediaTransportStreamError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaTransportStreamError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264A3635C()
{
  result = qword_27FF89B50;
  if (!qword_27FF89B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89B50);
  }

  return result;
}

unint64_t sub_264A363B4()
{
  result = qword_27FF89B58;
  if (!qword_27FF89B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89B58);
  }

  return result;
}

uint64_t sub_264A36408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3())
  {
    type metadata accessor for RTIMessageConsumer(0);
    swift_allocObject();

    v5 = sub_264A68EA4(a1, a2);

    v6 = &unk_27FF89B68;
    v7 = type metadata accessor for RTIMessageConsumer;
    v8 = &unk_264B4A730;
  }

  else
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FF8AEB8);
    v10 = sub_264B40944();
    v11 = sub_264B414B4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2649C6000, v10, v11, "Client (Mac) does not support RTI returning EmptyRTIMessageConsumer", v12, 2u);
      MEMORY[0x266749940](v12, -1, -1);
    }

    type metadata accessor for EmptyRTIMessageConsumer();
    v5 = swift_allocObject();
    swift_defaultActor_initialize();
    v6 = &unk_27FF89B60;
    v7 = type metadata accessor for EmptyRTIMessageConsumer;
    v8 = &unk_264B4DE60;
  }

  sub_264A365E8(v6, v7, v8);
  return v5;
}

uint64_t sub_264A365B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264A36408(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_264A365E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_264A36640(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

void *sub_264A36698()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_264A366DC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void sub_264A36774(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  v5 = v2;
}

void *sub_264A367CC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_264A36810(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_264A368A8()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [v1 rootLayer];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 states];

      if (v4)
      {
        v5 = sub_264B41154();

        v6 = sub_264A36970(v5);

        if (v6)
        {
          return v6;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_264A36970(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_264B417F4();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_2649C964C(i, v5);
    sub_2649D8B90(0, &qword_27FF89B78, 0x277CD9FA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_264B417D4();
    sub_264B41804();
    sub_264B41814();
    sub_264B417E4();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_264A36A7C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

void *sub_264A36AD4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_264A36B18(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

id sub_264A36BB0()
{
  swift_beginAccess();
  v1 = [*(v0 + 24) rootLayer];

  return v1;
}

uint64_t CABackedMicaAnimationPrimitives.__allocating_init(packageName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  CABackedMicaAnimationPrimitives.init(packageName:bundle:)(a1, a2, a3);
  return v6;
}

void *CABackedMicaAnimationPrimitives.init(packageName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[4] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v5 = sub_264A37530(a1, a2, a3);

  swift_beginAccess();
  v6 = v3[3];
  v3[3] = v5;
  v7 = v5;

  v8 = [v7 rootLayer];
  v9 = [objc_allocWithZone(MEMORY[0x277CD9FB8]) initWithLayer_];

  swift_beginAccess();
  v10 = v3[2];
  v3[2] = v9;

  return v3;
}

id sub_264A36D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_264B3FFB4();
  v7 = sub_264B41014();

  if (a4)
  {
    v8 = sub_264B40F54();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_264B3FFD4();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_264B3FF84();

    swift_willThrow();
    v15 = sub_264B3FFD4();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

void sub_264A36F24(float a1)
{
  swift_beginAccess();
  v3 = v1[2];
  if (v3)
  {
    swift_beginAccess();
    v4 = v1[4];
    swift_beginAccess();
    v5 = v1[3];
    v6 = v4;
    v7 = v3;
    v8 = [v5 rootLayer];
    *&v9 = a1;
    [v7 setState:v6 ofLayer:v8 transitionSpeed:v9];
  }
}

void sub_264A37000(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v27 = v2;
  v5 = *(v2 + 24);
  if (!v5 || (v6 = [v5 rootLayer]) == 0 || (v7 = v6, v8 = objc_msgSend(v6, sel_states), v7, !v8) || (v9 = sub_264B41154(), v8, v10 = sub_264A36970(v9), , !v10))
  {

    v10 = MEMORY[0x277D84F90];
  }

  if (v10 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_264B41884())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x266748A70](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = [v13 name];
      if (v16)
      {
        v17 = v16;
        v18 = a1;
        v19 = a2;
        v20 = sub_264B41044();
        v22 = v21;

        v23 = v20;
        a2 = v19;
        if (v23 == v18 && v22 == v19)
        {

LABEL_23:

          goto LABEL_28;
        }

        a1 = v18;
        v25 = sub_264B41AA4();

        if (v25)
        {
          goto LABEL_23;
        }
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v14 = 0;
LABEL_28:
  swift_beginAccess();
  v26 = *(v27 + 32);
  *(v27 + 32) = v14;
}

void sub_264A37248(float a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3)
  {
    swift_beginAccess();
    v4 = *(v1 + 24);
    v5 = v3;
    v6 = [v4 rootLayer];
    *&v7 = a1;
    [v5 setInitialStatesOfLayer:v6 transitionSpeed:v7];
  }
}

uint64_t CABackedMicaAnimationPrimitives.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_264A37394()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = v2;
  return v2;
}

id sub_264A373DC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = [*(v1 + 24) rootLayer];

  return v2;
}

void sub_264A37484(float a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (v4)
  {
    swift_beginAccess();
    v5 = *(v3 + 24);
    v6 = v4;
    v7 = [v5 rootLayer];
    *&v8 = a1;
    [v6 setInitialStatesOfLayer:v7 transitionSpeed:v8];
  }
}

id sub_264A37530(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_264B3FFD4();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v24[-v12];
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v24[-v15];
  v17 = sub_264B41014();
  v18 = sub_264B41014();
  v19 = [a3 URLForResource:v17 withExtension:v18];

  if (!v19)
  {
    return 0;
  }

  sub_264B3FFC4();

  (*(v5 + 32))(v16, v13, v4);
  sub_2649D8B90(0, &qword_27FF89B70, 0x277CD9F28);
  (*(v5 + 16))(v9, v16, v4);
  v20 = sub_264B41044();
  v23 = sub_264A36D5C(v9, v20, v21, 0);
  (*(v5 + 8))(v16, v4);
  result = v23;
  if (!v23)
  {
    return 0;
  }

  return result;
}

id sub_264A37770@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

id sub_264A377CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

id sub_264A37828@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

ScreenSharingKit::SignpostCode_optional __swiftcall SignpostCode.init(rawValue:)(Swift::UInt32 rawValue)
{
  v2 = rawValue - 4;
  if (rawValue - 4 >= 0xF)
  {
    v2 = 15;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_264A37B14()
{
  sub_264B41B84();
  sub_264B41BA4();
  return sub_264B41BB4();
}

uint64_t sub_264A37B8C(uint64_t a1)
{
  sub_264B41B84();
  sub_264B41BA4();
  return sub_264B41BB4();
}

const char *SignpostCode.signpostName.getter()
{
  result = "DTHStart";
  switch(*v0)
  {
    case 1:
      result = "DTHHandoff";
      break;
    case 2:
      result = "SSKHIDEventReceived";
      break;
    case 3:
      result = "SSKHIDEventHandoff";
      break;
    case 4:
      result = "SSKMessageSendBegin";
      break;
    case 5:
      result = "SSKMessageSendDone";
      break;
    case 6:
      result = "SSKMessageReceivedBegin";
      break;
    case 7:
      result = "SSKMessageReceivedDone";
      break;
    case 8:
      result = "SSKAppStart";
      break;
    case 9:
      result = "SSKSessionStartup";
      break;
    case 0xA:
      result = "SSKSessionRunning";
      break;
    case 0xB:
      result = "SSKFirstFrame";
      break;
    case 0xC:
      result = "SSKAngelActive";
      break;
    case 0xD:
      result = "SSKAngelSessionStart";
      break;
    case 0xE:
      result = "SSKAngelSessionRunning";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_264A37E00()
{
  result = qword_27FF89B80;
  if (!qword_27FF89B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89B80);
  }

  return result;
}

unint64_t sub_264A37E64()
{
  result = qword_27FF89B88;
  if (!qword_27FF89B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89B88);
  }

  return result;
}

uint64_t AccessibilityControlTransportError.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_264A37F48()
{
  result = qword_27FF89B90;
  if (!qword_27FF89B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89B90);
  }

  return result;
}

uint64_t sub_264A37FAC(uint64_t a1)
{
  sub_2649D046C(a1, &v6, &qword_27FF89FB0, &qword_264B496A0);
  if (!v7)
  {
    return sub_2649D04D4(&v6, &qword_27FF89FB0, &qword_264B496A0);
  }

  sub_2649D2AAC(&v6, v8);
  sub_2649CB5C0(v8, &v6);
  v2 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2649D834C(0, v2[2] + 1, 1, v2);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_2649D834C((v3 > 1), v4 + 1, 1, v2);
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  v2[2] = v4 + 1;
  result = sub_2649D2AAC(&v6, &v2[5 * v4 + 4]);
  *v1 = v2;
  return result;
}

uint64_t sub_264A380B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8, v9);
  v11 = &v42[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v42[-v14];
  v16 = *a1;
  v17 = *(a1 + 8);
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v18 = sub_264B40964();
  __swift_project_value_buffer(v18, qword_27FF8AE70);
  sub_2649E124C(v16, v17);
  v19 = sub_264B40944();
  v20 = sub_264B414B4();
  sub_2649E1290(v16, v17);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v46 = v8;
    v22 = v21;
    v44 = v21;
    v45 = swift_slowAlloc();
    v49 = v45;
    *v22 = 136446210;
    v47 = v16;
    v48 = v17;
    sub_2649E124C(v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DC0, &qword_264B494C0);
    v23 = sub_264B41064();
    v43 = v17;
    LOBYTE(v22) = v20;
    v25 = v16;
    v26 = v7;
    v27 = v3;
    v28 = sub_2649CC004(v23, v24, &v49);
    LOBYTE(v17) = v43;

    v29 = v44;
    *(v44 + 4) = v28;
    v3 = v27;
    v7 = v26;
    v16 = v25;
    v30 = v19;
    v31 = v19;
    v32 = v29;
    _os_log_impl(&dword_2649C6000, v30, v22, "Preparing to tear down the session due to: %{public}s", v29, 0xCu);
    v33 = v45;
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x266749940](v33, -1, -1);
    v8 = v46;
    MEMORY[0x266749940](v32, -1, -1);
  }

  else
  {
  }

  v34 = sub_264B41274();
  (*(*(v34 - 8) + 56))(v15, 1, 1, v34);
  sub_2649D046C(a2, v11, &unk_27FF899E0, &qword_264B53440);
  sub_264B41244();
  sub_2649E124C(v16, v17);
  v35 = v3;
  v36 = sub_264B41234();
  v37 = (*(v7 + 80) + 41) & ~*(v7 + 80);
  v38 = (v8 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = MEMORY[0x277D85700];
  *(v39 + 16) = v36;
  *(v39 + 24) = v40;
  *(v39 + 32) = v16;
  *(v39 + 40) = v17;
  sub_264A52368(v11, v39 + v37);
  *(v39 + v38) = v35;
  sub_2649CD944(0, 0, v15, &unk_264B494B8, v39);
}

id sub_264A38480()
{
  result = sub_264A384A0();
  qword_27FF89BA0 = result;
  return result;
}

id sub_264A384A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D90, &unk_264B49480);
  v69 = *(v0 - 8);
  v70 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v68 = &v50 - v2;
  v115 = &type metadata for SpringBoardUIServicesBackedLaunchPayloadProcessor;
  v116 = &off_28765EC78;
  v117 = &type metadata for FeatureFlagsBackedFeatureFlagPrimitives;
  v118 = &protocol witness table for FeatureFlagsBackedFeatureFlagPrimitives;
  MobileGestaltBackedLocalDeviceInformationPrimitives.init()(&v113);
  v67 = type metadata accessor for AVSystemControllerBackedMicrophoneDeviceSensorObserver(0);
  swift_allocObject();
  v76 = sub_2649E41EC();
  v66 = type metadata accessor for MediaExperienceBackedMicrophoneDeviceSensorObserver(0);
  swift_allocObject();
  v75 = sub_264A33708();
  v64 = type metadata accessor for FigCameraBackedDeviceSensorObserver(0);
  v78 = [objc_allocWithZone(v64) init];
  v65 = type metadata accessor for AXPBackedAccessibilityServerPrimitives();
  v77 = [objc_allocWithZone(v65) &selRef_initWithOffer_error_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A068, &unk_264B49720);
  v3 = swift_allocObject();
  v72 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A070, &qword_264B53F20);
  swift_allocObject();
  *(v3 + 16) = sub_264B409D4();
  v4 = type metadata accessor for ScreenContinuityServicesBackedContinuityDevicePrimitives(0);
  swift_allocObject();
  v63 = ScreenContinuityServicesBackedContinuityDevicePrimitives.init(fetchUnlockabilityStatus:)(0);
  v62 = type metadata accessor for SignpostingTelemetryVendor();
  v61 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A078, &unk_264B49730);
  v5 = swift_allocObject();
  v71 = v5;
  swift_allocObject();
  *(v5 + 16) = sub_264B409D4();
  v58 = type metadata accessor for iOSTelemetryVendor();
  v57 = swift_allocObject();
  v60 = sub_264B408B4();
  v59 = sub_264B408A4();
  v56 = type metadata accessor for MediaExperienceBackedMediaPlaybackStatusPrimitives();
  swift_allocObject();
  v74 = sub_264AFA780();
  v73 = type metadata accessor for TimeBackedTaskSleepPrimitives();
  v55 = swift_allocObject();
  v6 = [objc_opt_self() standardUserDefaults];
  v51 = type metadata accessor for FoundationBackedUserDefaultsPrimitives();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v52 = type metadata accessor for UIDeviceBackedPowerPrimitives();
  swift_allocObject();
  v8 = sub_264B0E248();
  v50 = v8;
  v9 = MEMORY[0x277D83B88];
  v105[3] = MEMORY[0x277D83B88];
  v106 = sub_264A556EC();
  v105[0] = 5;
  v108 = v9;
  v107 = 10;
  v111 = v9;
  v112 = v106;
  v109 = v106;
  v110 = 60;
  LOBYTE(v9) = v113.platform;
  countAndFlagsBits = v113.osBuild._countAndFlagsBits;
  object = v113.osBuild._object;
  v13 = v113.userAssignedDeviceName._countAndFlagsBits;
  v12 = v113.userAssignedDeviceName._object;
  v53 = v113.osBuild._object;
  v54 = v113.userAssignedDeviceName._object;
  LOBYTE(v5) = v113.isDeviceSupported;
  v104[3] = &type metadata for SpringBoardUIServicesBackedSceneInteractorVendor;
  v104[4] = &off_281EE1F38;
  v104[0] = swift_allocObject();
  sub_264A55780(v114, v104[0] + 16);
  v103[3] = &type metadata for MobileGestaltBackedLocalDeviceInformationPrimitives;
  v103[4] = &protocol witness table for MobileGestaltBackedLocalDeviceInformationPrimitives;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 32) = object;
  *(v14 + 40) = v13;
  *(v14 + 56) = v5;
  *(v14 + 24) = countAndFlagsBits;
  v103[0] = v14;
  *(v14 + 48) = v12;
  v102[4] = &off_287657B18;
  v101[3] = v66;
  v101[4] = &off_2876599F8;
  v100[3] = v64;
  v100[4] = &off_287657218;
  v99[3] = &type metadata for CDPStateControllerBackediCloudHealthPrimitives;
  v99[4] = &protocol witness table for CDPStateControllerBackediCloudHealthPrimitives;
  v98[3] = &type metadata for ScreenContinuityServicesBackedLocalDeviceEligibilityPrimitives;
  v98[4] = &protocol witness table for ScreenContinuityServicesBackedLocalDeviceEligibilityPrimitives;
  v97[3] = &type metadata for ManagedConfigurationBackedDeviceRestrictionPrimitives;
  v97[4] = &protocol witness table for ManagedConfigurationBackedDeviceRestrictionPrimitives;
  v96[3] = v65;
  v96[4] = &off_28765D228;
  v95[3] = v4;
  v95[4] = &protocol witness table for ScreenContinuityServicesBackedContinuityDevicePrimitives;
  v94[4] = &protocol witness table for SignpostingTelemetryVendor;
  v94[3] = v62;
  v94[0] = v61;
  v93[4] = &protocol witness table for iOSTelemetryVendor;
  v93[3] = v58;
  v93[0] = v57;
  v89[3] = v56;
  v89[4] = &off_281EE4E98;
  v86[0] = v55;
  v85[3] = v51;
  v85[4] = &protocol witness table for FoundationBackedUserDefaultsPrimitives;
  v85[0] = v7;
  v84[4] = &off_281EE57E0;
  v83[3] = &type metadata for FeatureFlagsBackedFeatureFlagPrimitives;
  v102[3] = v67;
  v87 = v73;
  v102[0] = v76;
  v101[0] = v75;
  v100[0] = v78;
  v96[0] = v77;
  v95[0] = v63;
  v83[4] = &protocol witness table for FeatureFlagsBackedFeatureFlagPrimitives;
  v92 = &off_28765F1A8;
  v15 = v60;
  v91 = v60;
  v90[0] = v59;
  v89[0] = v74;
  v84[3] = v52;
  v88 = &off_28765C058;
  v84[0] = v8;
  v67 = type metadata accessor for AngelServer(0);
  v16 = objc_allocWithZone(v67);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
  MEMORY[0x28223BE20](v17, v17);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v86, v87);
  MEMORY[0x28223BE20](v21, v21);
  v23 = (&v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v19;
  v26 = *v23;
  v82[3] = v15;
  v82[4] = &off_28765F1A8;
  v82[0] = v25;
  v81[3] = v73;
  v81[4] = &off_28765C058;
  v81[0] = v26;
  v27 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineServiceSpecification;

  v78 = v78;
  v28 = v77;

  sub_264A2DEA0(&v16[v27]);
  v29 = MEMORY[0x277D84F90];
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_commandLineConnections] = MEMORY[0x277D84F90];
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState] = 0;
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_pongNumber] = 0;
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations] = v29;
  v30 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_companionDeviceID;
  v31 = sub_264B40104();
  (*(*(v31 - 8) + 56))(&v16[v30], 1, 1, v31);
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer____lazy_storage___commandLineListener] = 0;
  v32 = &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_displayRegistrationVendor];
  *v32 = 0u;
  *(v32 + 1) = 0u;
  *(v32 + 4) = 0;
  v33 = &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_screenContinuityLiveActivityVendor];
  *(v33 + 4) = 0;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion] = 0;
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneDidBecomeActiveTask] = 0;
  v34 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer__bringUpDeviceSensorsInUse;
  v35 = sub_2649E5670();
  v80 = MEMORY[0x266748730](2, &type metadata for DeviceSensorType, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89D80, &qword_264B45588);
  v36 = v68;
  sub_264B40A44();
  (*(v69 + 32))(&v16[v34], v36, v70);
  v37 = &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportActivationContinuation;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v39 - 8) + 56))(&v16[v38], 1, 1, v39);
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportCancellable] = 0;
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportStreamCancellables] = v29;
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackServer] = 0;
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackActiveSubscription] = 0;
  v40 = &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration];
  *v40 = 0u;
  *(v40 + 1) = 0u;
  *(v40 + 2) = 0u;
  *(v40 + 3) = 0u;
  *(v40 + 4) = 0u;
  *(v40 + 5) = 0u;
  *(v40 + 12) = 0;
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneObservationSubscriptions] = v29;
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseBringUpSubscription] = 0;
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseInSessionSubscription] = 0;
  v41 = &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentDisplayRegistration];
  *v41 = 0u;
  *(v41 + 1) = 0u;
  *(v41 + 4) = 0;
  v42 = &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor];
  *(v42 + 4) = 0;
  *v42 = 0u;
  *(v42 + 1) = 0u;
  v43 = &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentContinuityLiveActivity];
  *v43 = 0u;
  *(v43 + 1) = 0u;
  *(v43 + 4) = 0;
  v44 = &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractorStep];
  *v44 = 0;
  v44[8] = -1;
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyEngine] = 0;
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyApplicator] = 0;
  v45 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_unifiedPlaybackEventSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E80, &unk_264B51AB0);
  swift_allocObject();
  *&v16[v45] = sub_264B409D4();
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_unifiedPlaybackEventSubscriptions] = v29;
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_axPrimitivesDataSubscription] = 0;
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerSignposts] = 0;
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry] = 0;
  v46 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_dragAndDropShieldWindowSceneContainer;
  type metadata accessor for DragAndDropSceneContainer();
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *&v16[v46] = v47;
  sub_2649CB5C0(v104, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneInteractorVendor]);
  sub_2649CB5C0(v103, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceInformationPrimitives]);
  sub_2649CB5C0(v102, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_bringupMicrophoneDeviceSensorPrimitives]);
  sub_2649CB5C0(v101, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_inSessionMicrophoneDeviceSensorPrimitives]);
  sub_2649CB5C0(v100, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_cameraDeviceSensorPrimitives]);
  sub_2649CB5C0(v99, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_iCloudHealthPrimitives]);
  sub_2649CB5C0(v98, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceEligibilityPrimitives]);
  sub_2649CB5C0(v97, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceRestrictionPrimitives]);
  sub_2649CB5C0(v96, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_accessibilityPrimitives]);
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_statusEventProxy] = v72;
  sub_2649CB5C0(v95, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_continuityDevicePrimitives]);
  sub_2649CB5C0(v94, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_signpostVendor]);
  sub_2649CB5C0(v93, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_telemetryVendor]);
  sub_2649CB5C0(v82, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sessionHistoryTracker]);
  sub_2649CB5C0(v89, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaPlaybackStatusPrimitives]);
  sub_2649CB5C0(v81, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_taskSleepPrimitives]);
  sub_2649CB5C0(v85, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_userDefaultsPrimitives]);
  sub_2649CB5C0(v84, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_powerPrimitives]);
  *&v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_accessibilityMessageProducer] = v71;
  sub_264A5581C(v105, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_timeoutPrimitives]);
  sub_2649CB5C0(v83, &v16[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_featureFlagPrimitives]);
  v79.receiver = v16;
  v79.super_class = v67;
  v48 = objc_msgSendSuper2(&v79, sel_init);

  sub_2649D2BB4(v105);
  __swift_destroy_boxed_opaque_existential_0(v83);
  __swift_destroy_boxed_opaque_existential_0(v84);
  __swift_destroy_boxed_opaque_existential_0(v85);
  __swift_destroy_boxed_opaque_existential_0(v89);
  __swift_destroy_boxed_opaque_existential_0(v93);
  __swift_destroy_boxed_opaque_existential_0(v94);
  __swift_destroy_boxed_opaque_existential_0(v95);
  __swift_destroy_boxed_opaque_existential_0(v96);
  __swift_destroy_boxed_opaque_existential_0(v97);
  __swift_destroy_boxed_opaque_existential_0(v98);
  __swift_destroy_boxed_opaque_existential_0(v99);
  __swift_destroy_boxed_opaque_existential_0(v100);
  __swift_destroy_boxed_opaque_existential_0(v101);
  __swift_destroy_boxed_opaque_existential_0(v102);
  __swift_destroy_boxed_opaque_existential_0(v103);
  __swift_destroy_boxed_opaque_existential_0(v104);
  __swift_destroy_boxed_opaque_existential_0(v81);
  __swift_destroy_boxed_opaque_existential_0(v82);
  __swift_destroy_boxed_opaque_existential_0(v86);
  __swift_destroy_boxed_opaque_existential_0(v90);
  sub_264A55878(v114);
  return v48;
}

id static AngelServer.sharedInstance.getter()
{
  if (qword_27FF883D0 != -1)
  {
    swift_once();
  }

  v1 = qword_27FF89BA0;

  return v1;
}

id sub_264A39240(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer____lazy_storage___commandLineListener;
  v4 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer____lazy_storage___commandLineListener);
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer____lazy_storage___commandLineListener);
LABEL_5:
    v12 = v4;
    return v5;
  }

  MEMORY[0x28223BE20](a1, a2);
  v13[2] = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_264A55694;
  *(v6 + 24) = v13;
  aBlock[4] = sub_264A556AC;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264A39498;
  aBlock[3] = &block_descriptor_8;
  v7 = _Block_copy(aBlock);
  v8 = objc_opt_self();

  v9 = [v8 listenerWithConfigurator_];
  _Block_release(v7);

  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    v11 = *(v2 + v3);
    *(v2 + v3) = v9;
    v5 = v9;

    v4 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_264A393E4(void *a1, uint64_t a2)
{
  v4 = sub_264B41014();
  [a1 setDomain_];

  v5 = sub_264B41014();
  [a1 setService_];

  return [a1 setDelegate_];
}

uint64_t sub_264A39498(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall AngelServer.startUp()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_signpostVendor + 24);
  v3 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_signpostVendor + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_signpostVendor), v2);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerSignposts);
  *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerSignposts) = v4;

  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v6 = sub_264B40964();
  __swift_project_value_buffer(v6, qword_27FF8AE70);
  v7 = sub_264B40944();
  v8 = sub_264B41474();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2649C6000, v7, v8, "AngelServer starting...", v9, 2u);
    MEMORY[0x266749940](v9, -1, -1);
  }

  if (os_variant_allows_internal_security_policies())
  {
    v10 = sub_264B40944();
    v11 = sub_264B41484();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2649C6000, v10, v11, "Internal security policies detected, activating commandline listener", v12, 2u);
      MEMORY[0x266749940](v12, -1, -1);
    }

    v15 = sub_264A39240(v13, v14);
    [v15 activate];
  }

  v16 = sub_264B40944();
  v17 = sub_264B41474();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2649C6000, v16, v17, "AngelServer started", v18, 2u);
    MEMORY[0x266749940](v18, -1, -1);
  }

  v19 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState);
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState) = 1;

  sub_264A51DF8(v19);
}

uint64_t AngelServer.bootstrapSession()()
{
  v1[2] = v0;
  v2 = sub_264B3FFD4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_264B41244();
  v1[6] = sub_264B41234();
  v4 = sub_264B411C4();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_264A39884, v4, v3);
}

uint64_t sub_264A39884()
{
  v16 = v0;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE70);
  v5 = sub_264B41484();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v15);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 239;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD000000000000012, 0x8000000264B5BE10, &v15);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_264A39AF8;

  return sub_264A39D0C();
}

uint64_t sub_264A39AF8()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_264A39CA0;
  }

  else
  {
    v5 = sub_264A39C34;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_264A39C34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A39CA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A39D0C()
{
  v1[38] = v0;
  v1[39] = sub_264B41244();
  v1[40] = sub_264B41234();
  v3 = sub_264B411C4();
  v1[41] = v3;
  v1[42] = v2;

  return MEMORY[0x2822009F8](sub_264A39DA8, v3, v2);
}

uint64_t sub_264A39DA8()
{
  v70 = v0;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  *(v0 + 344) = __swift_project_value_buffer(v1, qword_27FF8AE70);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Starting Session...", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  type metadata accessor for AngelServerAssertion();
  swift_allocObject();
  *(v0 + 352) = sub_264A19218();
  v7 = *(v0 + 304);
  v8 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerSignposts;
  *(v0 + 360) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerSignposts;
  v9 = *(v7 + v8);
  if (v9)
  {
    v10 = v9;
    v11 = mach_absolute_time();
    v12 = *&v10[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer];
    if (v12 && (v13 = v11) != 0)
    {
      __swift_project_boxed_opaque_existential_1((v12 + 24), *(v12 + 48));
      v68 = 12;

      sub_264A560D4(&v68, v13, 0, 0, 0);
    }

    else
    {
    }
  }

  v14 = *(v0 + 304);
  v15 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration;
  *(v0 + 368) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration;
  v16 = (v14 + v15);
  v17 = *v16;
  *(v0 + 376) = *v16;
  v18 = v16[1];
  *(v0 + 384) = v18;
  if (v18)
  {
    swift_retain_n();
    v19 = sub_264B40944();
    v20 = sub_264B41474();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134349056;
      *(v21 + 4) = v17;

      _os_log_impl(&dword_2649C6000, v19, v20, "Existing session #%{public}ld underway, tearing down that session first.", v21, 0xCu);
      MEMORY[0x266749940](v21, -1, -1);
    }

    else
    {
    }

    v33 = *(v0 + 304);
    *(v0 + 392) = sub_264B41234();
    v34 = swift_task_alloc();
    *(v0 + 400) = v34;
    *(v34 + 16) = v33;
    v35 = swift_task_alloc();
    *(v0 + 408) = v35;
    *v35 = v0;
    v35[1] = sub_264A3A6F8;

    return MEMORY[0x2822007B8]();
  }

  v22 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
    return MEMORY[0x2822007B8]();
  }

  v23 = sub_264B40944();
  v24 = sub_264B41474();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134349056;
    *(v25 + 4) = v22;
    _os_log_impl(&dword_2649C6000, v23, v24, "Starting session #%{public}ld", v25, 0xCu);
    MEMORY[0x266749940](v25, -1, -1);
  }

  v26 = *(v0 + 360);
  v27 = *(v0 + 304);

  v28 = *(v27 + v26);
  if (v28)
  {
    v29 = v28;
    v30 = mach_absolute_time();
    v31 = *&v29[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer];
    if (v31 && (v32 = v30) != 0)
    {
      __swift_project_boxed_opaque_existential_1((v31 + 24), *(v31 + 48));
      v69[0] = 13;

      sub_264A560D4(v69, v32, 0, 0, 0);
    }

    else
    {
    }
  }

  v36 = *(v0 + 304);
  v37 = *(v36 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState);
  *(v36 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState) = 2;
  sub_264A51DF8(v37);
  v38 = v36 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_displayRegistrationVendor;
  swift_beginAccess();
  if (*(v38 + 24))
  {
    sub_2649CB5C0(v38, v0 + 136);
    if (*(v0 + 160))
    {
LABEL_31:
      sub_2649D2AAC((v0 + 136), v0 + 96);
      v39 = sub_264B40944();
      v40 = sub_264B41484();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 134349056;
        *(v41 + 4) = v22;
        _os_log_impl(&dword_2649C6000, v39, v40, "Vending display registration for session #%{public}ld", v41, 0xCu);
        MEMORY[0x266749940](v41, -1, -1);
      }

      v42 = *(v0 + 120);
      v43 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v42);
      (*(v43 + 16))(v42, v43);
      v44 = sub_264B40944();
      v45 = sub_264B41484();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 134349056;
        *(v46 + 4) = v22;
        _os_log_impl(&dword_2649C6000, v44, v45, "Activating display registration for session #%{public}ld", v46, 0xCu);
        MEMORY[0x266749940](v46, -1, -1);
      }

      v47 = *(v0 + 200);
      v48 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v47);
      (*(v48 + 8))(v47, v48);
      v49 = sub_264B40944();
      v50 = sub_264B41474();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 134349056;
        *(v51 + 4) = v22;
        _os_log_impl(&dword_2649C6000, v49, v50, "Activated display registration for session #%{public}ld", v51, 0xCu);
        MEMORY[0x266749940](v51, -1, -1);
      }

      v52 = *(v0 + 368);
      v53 = *(v0 + 352);
      v54 = *(v0 + 304);

      v55 = (v54 + v52);
      sub_2649CB5C0(v0 + 176, v0 + 216);
      v56 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentDisplayRegistration;
      swift_beginAccess();
      sub_2649FECCC(v0 + 216, v54 + v56, &qword_27FF89DA0, &qword_264B49490);
      swift_endAccess();
      *(v54 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion) = v53;

      type metadata accessor for MediaTransportServerSession(0);
      swift_allocObject();
      v57 = sub_2649E793C(0xD000000000000026, 0x8000000264B5C510);
      *(v0 + 416) = v57;
      *v55 = v22;
      v55[1] = v57;
      swift_retain_n();

      v58 = *(v54 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_telemetryVendor + 24);
      v59 = *(v54 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_telemetryVendor + 32);
      __swift_project_boxed_opaque_existential_1((v54 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_telemetryVendor), v58);
      v60 = (*(v59 + 8))(v58, v59);
      v61 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
      *(v0 + 424) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
      v62 = *(v54 + v61);
      *(v54 + v61) = v60;

      v63 = sub_264A54920(&qword_27FF89DD8, type metadata accessor for MediaTransportServerSession, &unk_264B46EF4);

      v64 = swift_task_alloc();
      *(v0 + 432) = v64;
      *v64 = v0;
      v64[1] = sub_264A3AF1C;

      return sub_264A3BB24(v57, v63, v22);
    }
  }

  else
  {
    v65 = *v38;
    v66 = *(v38 + 16);
    *(v0 + 168) = *(v38 + 32);
    *(v0 + 152) = v66;
    *(v0 + 136) = v65;
    if (*(v0 + 160))
    {
      goto LABEL_31;
    }
  }

  if (*(v0 + 160))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  }

  sub_264A52574();
  swift_allocError();
  *v67 = 7;
  *(v67 + 8) = 0x80;
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_264A3A6F8()
{
  v1 = *v0;

  v2 = *(v1 + 336);
  v3 = *(v1 + 328);

  return MEMORY[0x2822009F8](sub_264A3A858, v3, v2);
}

void sub_264A3A858()
{
  v51 = v0;

  v1 = sub_264B40944();
  v2 = sub_264B41474();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 376);
    v4 = swift_slowAlloc();
    *v4 = 134349056;
    *(v4 + 4) = v3;

    _os_log_impl(&dword_2649C6000, v1, v2, "Prior session #%{public}ld torn down, continuing with session start", v4, 0xCu);
    MEMORY[0x266749940](v4, -1, -1);
  }

  else
  {
  }

  v5 = *(v0 + 376);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    return;
  }

  v7 = sub_264B40944();
  v8 = sub_264B41474();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = v6;
    _os_log_impl(&dword_2649C6000, v7, v8, "Starting session #%{public}ld", v9, 0xCu);
    MEMORY[0x266749940](v9, -1, -1);
  }

  v10 = *(v0 + 360);
  v11 = *(v0 + 304);

  v12 = *(v11 + v10);
  if (v12)
  {
    v13 = v12;
    v14 = mach_absolute_time();
    v15 = *&v13[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer];
    if (v15 && (v16 = v14) != 0)
    {
      __swift_project_boxed_opaque_existential_1((v15 + 24), *(v15 + 48));
      v50[0] = 13;

      sub_264A560D4(v50, v16, 0, 0, 0);
    }

    else
    {
    }
  }

  v17 = *(v0 + 304);
  v18 = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState);
  *(v17 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState) = 2;
  sub_264A51DF8(v18);
  v19 = v17 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_displayRegistrationVendor;
  swift_beginAccess();
  if (*(v19 + 24))
  {
    sub_2649CB5C0(v19, v0 + 136);
    if (*(v0 + 160))
    {
LABEL_14:
      sub_2649D2AAC((v0 + 136), v0 + 96);
      v20 = sub_264B40944();
      v21 = sub_264B41484();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 134349056;
        *(v22 + 4) = v6;
        _os_log_impl(&dword_2649C6000, v20, v21, "Vending display registration for session #%{public}ld", v22, 0xCu);
        MEMORY[0x266749940](v22, -1, -1);
      }

      v23 = *(v0 + 120);
      v24 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v23);
      (*(v24 + 16))(v23, v24);
      v25 = sub_264B40944();
      v26 = sub_264B41484();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134349056;
        *(v27 + 4) = v6;
        _os_log_impl(&dword_2649C6000, v25, v26, "Activating display registration for session #%{public}ld", v27, 0xCu);
        MEMORY[0x266749940](v27, -1, -1);
      }

      v28 = *(v0 + 200);
      v29 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v28);
      (*(v29 + 8))(v28, v29);
      v30 = sub_264B40944();
      v31 = sub_264B41474();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134349056;
        *(v32 + 4) = v6;
        _os_log_impl(&dword_2649C6000, v30, v31, "Activated display registration for session #%{public}ld", v32, 0xCu);
        MEMORY[0x266749940](v32, -1, -1);
      }

      v33 = *(v0 + 368);
      v34 = *(v0 + 352);
      v35 = *(v0 + 304);

      v36 = (v35 + v33);
      sub_2649CB5C0(v0 + 176, v0 + 216);
      v37 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentDisplayRegistration;
      swift_beginAccess();
      sub_2649FECCC(v0 + 216, v35 + v37, &qword_27FF89DA0, &qword_264B49490);
      swift_endAccess();
      *(v35 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion) = v34;

      type metadata accessor for MediaTransportServerSession(0);
      swift_allocObject();
      v38 = sub_2649E793C(0xD000000000000026, 0x8000000264B5C510);
      *(v0 + 416) = v38;
      *v36 = v6;
      v36[1] = v38;
      swift_retain_n();

      v39 = *(v35 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_telemetryVendor + 24);
      v40 = *(v35 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_telemetryVendor + 32);
      __swift_project_boxed_opaque_existential_1((v35 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_telemetryVendor), v39);
      v41 = (*(v40 + 8))(v39, v40);
      v42 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
      *(v0 + 424) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
      v43 = *(v35 + v42);
      *(v35 + v42) = v41;

      v44 = sub_264A54920(&qword_27FF89DD8, type metadata accessor for MediaTransportServerSession, &unk_264B46EF4);

      v45 = swift_task_alloc();
      *(v0 + 432) = v45;
      *v45 = v0;
      v45[1] = sub_264A3AF1C;

      sub_264A3BB24(v38, v44, v6);
      return;
    }
  }

  else
  {
    v46 = *v19;
    v47 = *(v19 + 16);
    *(v0 + 168) = *(v19 + 32);
    *(v0 + 152) = v47;
    *(v0 + 136) = v46;
    if (*(v0 + 160))
    {
      goto LABEL_14;
    }
  }

  if (*(v0 + 160))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  }

  sub_264A52574();
  swift_allocError();
  *v48 = 7;
  *(v48 + 8) = 0x80;
  swift_willThrow();

  v49 = *(v0 + 8);

  v49();
}

uint64_t sub_264A3AF1C()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_264A3B344;
  }

  else
  {

    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_264A3B038;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_264A3B038()
{
  v23 = v0;
  v1 = v0[45];
  v2 = v0[38];

  v3 = *(v2 + v1);
  if (v3)
  {
    v4 = v3;
    v5 = mach_absolute_time();
    v6 = *&v4[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer];
    if (v6 && (v7 = v5) != 0)
    {
      __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
      v21 = 14;

      sub_264A560D4(&v21, v7, 0, 0, 0);
    }

    else
    {
    }
  }

  v8 = v0[38];
  v9 = *(v8 + v0[53]);
  if (v9)
  {
    v22 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B44150;
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE600000000000000;
    strcpy((inited + 48), "remoteRequest");
    *(inited + 62) = -4864;
    v11 = v9;
    v12 = sub_264A24308(inited);
    swift_setDeallocating();
    sub_2649D04D4(inited + 32, &qword_27FF89220, &qword_264B48430);
    sub_264A9113C(&v22, v12);

    v8 = v0[38];
  }

  v13 = *(v8 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_accessibilityPrimitives + 24);
  v14 = *(v8 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_accessibilityPrimitives + 32);
  v15 = __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_accessibilityPrimitives), v13);
  v16 = *(v13 - 8);
  v17 = swift_task_alloc();
  (*(v16 + 16))(v17, v15, v13);
  v18 = (*(v14 + 32))(v13, v14);
  (*(v16 + 8))(v17, v13);
  sub_264A3C244(v18);

  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v19 = v0[1];

  return v19();
}

uint64_t sub_264A3B344()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v1 = v0[1];

  return v1();
}

uint64_t AngelServer.tearDown()()
{
  v1[2] = v0;
  v1[3] = sub_264B41244();
  v1[4] = sub_264B41234();
  v3 = sub_264B411C4();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_264A3B48C, v3, v2);
}

uint64_t sub_264A3B48C()
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FF8AE70);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "External tear down requested", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = v0[2];

  v0[7] = sub_264B41234();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *(v6 + 16) = v5;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_264A3B644;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A3B644()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_264A558EC, v3, v2);
}

void AngelServer.provideDisplayRegistrarVendorIfNeeded(_:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_displayRegistrationVendor;
  swift_beginAccess();
  if (!*(v3 + 24))
  {
    v8 = *(v3 + 16);
    v11 = *v3;
    v12 = v8;
    v13 = *(v3 + 32);
    if (*(&v8 + 1))
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_2649CB5C0(a1, &v11);
    swift_beginAccess();
    v9 = *(&v12 + 1);
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0(v3);
      if (v9)
      {
LABEL_11:
        sub_2649D2AAC(&v11, v3);
LABEL_14:
        swift_endAccess();
        return;
      }
    }

    else if (*(&v12 + 1))
    {
      goto LABEL_11;
    }

    v10 = v12;
    *v3 = v11;
    *(v3 + 16) = v10;
    *(v3 + 32) = v13;
    goto LABEL_14;
  }

  sub_2649CB5C0(v3, &v11);
  if (!*(&v12 + 1))
  {
    goto LABEL_9;
  }

LABEL_3:
  __swift_destroy_boxed_opaque_existential_0(&v11);
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE70);
  v5 = sub_264B40944();
  v6 = sub_264B41494();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2649C6000, v5, v6, "Display registrar vendor has already been provided, ignoring update", v7, 2u);
    MEMORY[0x266749940](v7, -1, -1);
  }
}

uint64_t AngelServer.provideLiveActivityVendor(_:)(uint64_t a1)
{
  sub_2649CB5C0(a1, &v6);
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_screenContinuityLiveActivityVendor;
  swift_beginAccess();
  v3 = *(&v7 + 1);
  if (!*(v2 + 24))
  {
    if (*(&v7 + 1))
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = v7;
    *v2 = v6;
    *(v2 + 16) = v4;
    *(v2 + 32) = v8;
    return swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2649D2AAC(&v6, v2);
  return swift_endAccess();
}

uint64_t sub_264A3B9E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v14 - v9;
  v14 = a3;
  v15 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_264A380B0(&v14, v10);
  return sub_2649D04D4(v10, &unk_27FF899E0, &qword_264B53440);
}

uint64_t sub_264A3BB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = sub_264B41244();
  v4[12] = sub_264B41234();
  v6 = sub_264B411C4();
  v4[13] = v6;
  v4[14] = v5;

  return MEMORY[0x2822009F8](sub_264A3BBC4, v6, v5);
}

uint64_t sub_264A3BBC4()
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FF8AE70);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[9];
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2649C6000, v2, v3, "Starting MediaTransportSession #%{public}ld", v5, 0xCu);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v6 = v0[8];

  ObjectType = swift_getObjectType();
  v8 = *(v6 + 8);
  v11 = (*(v8 + 16) + **(v8 + 16));
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_264A3BDC0;

  return v11(v0 + 2, ObjectType, v8);
}

uint64_t sub_264A3BDC0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_264A3C1E0;
  }

  else
  {
    v5 = sub_264A3BEFC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_264A3BEFC(double a1)
{
  v2 = v1[10];
  v3 = v1[9];
  v1[17] = sub_264B41234();
  v4 = swift_task_alloc();
  v1[18] = v4;
  v4[2] = v2;
  v4[3] = v1 + 2;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v1[19] = v5;
  *v5 = v1;
  v5[1] = sub_264A3C014;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A3C014()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_264A3C174, v3, v2);
}

uint64_t sub_264A3C174()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A3C1E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A3C244(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE0, &qword_264B4BC00);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DE8, &qword_264B494F0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v17 - v11;
  v17[1] = a1;
  sub_2649CB2F0();
  v13 = sub_264B41554();
  v17[0] = v13;
  v14 = sub_264B41514();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DF8, &qword_264B494F8);
  sub_2649CB4C8(&unk_27FF89E00, &qword_27FF89DF8, &qword_264B494F8, MEMORY[0x277CBCD90]);
  sub_264A54920(&qword_27FF887B8, sub_2649CB2F0, MEMORY[0x277D85228]);
  sub_264B40B14();
  sub_2649D04D4(v7, &qword_27FF89DE0, &qword_264B4BC00);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2649CB4C8(&unk_27FF89E10, &qword_27FF89DE8, &qword_264B494F0, MEMORY[0x277CBCD60]);
  v15 = sub_264B40B54();

  (*(v9 + 8))(v12, v8);
  *(v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_axPrimitivesDataSubscription) = v15;
}

uint64_t sub_264A3C530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 776) = a7;
  *(v7 + 768) = a6;
  *(v7 + 177) = a5;
  *(v7 + 760) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  *(v7 + 784) = swift_task_alloc();
  *(v7 + 792) = swift_task_alloc();
  v8 = sub_264B40104();
  *(v7 + 800) = v8;
  *(v7 + 808) = *(v8 - 8);
  *(v7 + 816) = swift_task_alloc();
  *(v7 + 824) = swift_task_alloc();
  v9 = sub_264B41844();
  *(v7 + 832) = v9;
  *(v7 + 840) = *(v9 - 8);
  *(v7 + 848) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  *(v7 + 856) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  *(v7 + 864) = v10;
  *(v7 + 872) = *(v10 - 8);
  *(v7 + 880) = swift_task_alloc();
  *(v7 + 888) = swift_task_alloc();
  *(v7 + 896) = swift_task_alloc();
  sub_264B41244();
  *(v7 + 904) = sub_264B41234();
  v12 = sub_264B411C4();
  *(v7 + 912) = v12;
  *(v7 + 920) = v11;

  return MEMORY[0x2822009F8](sub_264A3C798, v12, v11);
}

uint64_t sub_264A3C798()
{
  v78 = v0;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 760);
  v2 = *(v0 + 177);
  v3 = sub_264B40964();
  *(v0 + 928) = __swift_project_value_buffer(v3, qword_27FF8AE70);
  sub_2649E124C(v1, v2);
  v4 = sub_264B40944();
  v5 = sub_264B414B4();
  sub_2649E1290(v1, v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 760);
    v7 = *(v0 + 177);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v76[0] = v9;
    *v8 = 136446210;
    *(v0 + 744) = v6;
    *(v0 + 752) = v7;
    sub_2649E124C(v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DC0, &qword_264B494C0);
    v10 = sub_264B41064();
    v12 = sub_2649CC004(v10, v11, v76);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2649C6000, v4, v5, "Inside Task for %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v13 = *(v0 + 872);
  v14 = *(v0 + 864);
  v15 = *(v0 + 856);
  sub_2649D046C(*(v0 + 768), v15, &unk_27FF899E0, &qword_264B53440);
  if ((*(v13 + 48))(v15, 1, v14) == 1)
  {
    sub_2649D04D4(*(v0 + 856), &unk_27FF899E0, &qword_264B53440);
  }

  else
  {
    v16 = *(v0 + 896);
    v17 = *(v0 + 888);
    v18 = *(v0 + 872);
    v19 = *(v0 + 864);
    v20 = *(v0 + 776);
    v75 = *(v18 + 32);
    v75(v16, *(v0 + 856), v19);
    (*(v18 + 16))(v17, v16, v19);
    v21 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations;
    v22 = *(v20 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v20 + v21) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_2649D8028(0, *(v22 + 2) + 1, 1, v22);
      *(v20 + v21) = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_2649D8028((v24 > 1), v25 + 1, 1, v22);
    }

    v26 = *(v0 + 896);
    v27 = *(v0 + 888);
    v28 = *(v0 + 872);
    v29 = *(v0 + 864);
    *(v22 + 2) = v25 + 1;
    v75(&v22[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25], v27, v29);
    *(v20 + v21) = v22;
    (*(v28 + 8))(v26, v29);
  }

  v30 = *(v0 + 776);
  v31 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState;
  *(v0 + 936) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState;
  if (*(v30 + v31) > 4uLL)
  {
    v34 = *(v0 + 760);
    v35 = *(v0 + 177);

    sub_2649E124C(v34, v35);
    v36 = sub_264B40944();
    v37 = sub_264B414B4();
    sub_2649E1290(v34, v35);
    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 760);
      v39 = *(v0 + 177);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v76[0] = v41;
      *v40 = 136446210;
      *(v0 + 696) = v38;
      *(v0 + 704) = v39;
      sub_2649E124C(v38, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DC0, &qword_264B494C0);
      v42 = sub_264B41064();
      v44 = sub_2649CC004(v42, v43, v76);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_2649C6000, v36, v37, "Already tearing down, ignoring teardown due to: %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x266749940](v41, -1, -1);
      MEMORY[0x266749940](v40, -1, -1);
    }

    v45 = *(v0 + 8);

    return v45();
  }

  else
  {
    v32 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration;
    *(v0 + 944) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration;
    v33 = *(v30 + v32 + 8);
    *(v0 + 952) = v33;
    if (v33)
    {

      return MEMORY[0x2822009F8](sub_264A3D16C, v33, 0);
    }

    else
    {
      v46 = *(v0 + 760);
      v47 = *(v30 + v31);
      v48 = *(v0 + 177);
      *(v30 + v31) = 5;
      sub_264A51DF8(v47);
      sub_2649E124C(v46, v48);
      v49 = sub_264B40944();
      v50 = sub_264B41494();
      sub_2649E1290(v46, v48);
      if (os_log_type_enabled(v49, v50))
      {
        v51 = *(v0 + 760);
        v52 = *(v0 + 177);
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v76[0] = v54;
        *v53 = 136446210;
        *(v0 + 712) = v51;
        *(v0 + 720) = v52;
        sub_2649E124C(v51, v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DC0, &qword_264B494C0);
        v55 = sub_264B41064();
        v57 = sub_2649CC004(v55, v56, v76);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_2649C6000, v49, v50, "AngelServer should tear down session due to: %{public}s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x266749940](v54, -1, -1);
        MEMORY[0x266749940](v53, -1, -1);
      }

      v58 = *(v0 + 776);
      v59 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneDidBecomeActiveTask;
      if (*(v58 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneDidBecomeActiveTask))
      {

        sub_264B41304();
      }

      v60 = *(v0 + 776);
      *(v58 + v59) = 0;

      sub_264A3FC74();
      sub_264A3FDC0();
      sub_264A3FEAC();
      v61 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_axPrimitivesDataSubscription;
      if (*(v60 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_axPrimitivesDataSubscription))
      {

        sub_264B40994();
      }

      v62 = *(v0 + 776);
      *(v60 + v61) = 0;

      v63 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
      *(v0 + 968) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
      swift_beginAccess();
      sub_2649D046C(v62 + v63, v0 + 224, &qword_27FF89DA8, &qword_264B49498);
      if (*(v0 + 248))
      {
        sub_2649D2AAC((v0 + 224), v0 + 184);
        v64 = sub_264B40944();
        v65 = sub_264B41484();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_2649C6000, v64, v65, "Invalidating current scene interactor", v66, 2u);
          MEMORY[0x266749940](v66, -1, -1);
        }

        __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
        sub_264A7E5F0();
        __swift_destroy_boxed_opaque_existential_0((v0 + 184));
      }

      else
      {
        sub_2649D04D4(v0 + 224, &qword_27FF89DA8, &qword_264B49498);
      }

      v67 = sub_264B40944();
      v68 = sub_264B41484();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_2649C6000, v67, v68, "Notifying client that we are winding down", v69, 2u);
        MEMORY[0x266749940](v69, -1, -1);
      }

      v70 = *(v0 + 760);
      v71 = *(v0 + 177);

      *&v76[0] = v70;
      *(&v76[0] + 1) = v71;
      v77[24] = 0x80;
      sub_2649E124C(v70, v71);
      sub_264A40100(v76);
      v72 = v76[1];
      *(v0 + 120) = v76[0];
      *(v0 + 136) = v72;
      *(v0 + 152) = *v77;
      *(v0 + 161) = *&v77[9];
      sub_264A52520(v0 + 120);
      sub_264B41B14();
      v73 = swift_task_alloc();
      *(v0 + 976) = v73;
      *v73 = v0;
      v73[1] = sub_264A3D884;

      return sub_2649FE7A8(100000000000000000, 0, 0, 0, 1);
    }
  }
}

uint64_t sub_264A3D16C()
{
  v1 = *(v0[119] + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState);
  v0[120] = v1;
  sub_2649DDB20(v1);
  v2 = v0[115];
  v3 = v0[114];

  return MEMORY[0x2822009F8](sub_264A3D1E8, v3, v2);
}

uint64_t sub_264A3D1E8()
{
  v47 = v0;
  v1 = *(v0 + 960);
  if (v1 == 2)
  {
    v2 = *(v0 + 760);
    v3 = *(v0 + 177);
    sub_2649FE684(2);
    sub_2649FE684(2);

    sub_2649E124C(v2, v3);
    v4 = sub_264B40944();
    v5 = sub_264B414B4();
    sub_2649E1290(v2, v3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 760);
      v7 = *(v0 + 177);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v45[0] = v9;
      *v8 = 136446210;
      *(v0 + 728) = v6;
      *(v0 + 736) = v7;
      sub_2649E124C(v6, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DC0, &qword_264B494C0);
      v10 = sub_264B41064();
      v12 = sub_2649CC004(v10, v11, v45);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_2649C6000, v4, v5, "Tear down requested for %{public}s, but MediaTransport is already tearing down, deferring to MediaTransport as the cause of tear down", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x266749940](v9, -1, -1);
      MEMORY[0x266749940](v8, -1, -1);
    }

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    sub_2649FE684(v1);
    sub_2649FE684(2);

    v15 = *(v0 + 936);
    v16 = *(v0 + 776);
    v17 = *(v0 + 760);
    v18 = *(v16 + v15);
    v19 = *(v0 + 177);
    *(v16 + v15) = 5;
    sub_264A51DF8(v18);
    sub_2649E124C(v17, v19);
    v20 = sub_264B40944();
    v21 = sub_264B41494();
    sub_2649E1290(v17, v19);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 760);
      v23 = *(v0 + 177);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v45[0] = v25;
      *v24 = 136446210;
      *(v0 + 712) = v22;
      *(v0 + 720) = v23;
      sub_2649E124C(v22, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DC0, &qword_264B494C0);
      v26 = sub_264B41064();
      v28 = sub_2649CC004(v26, v27, v45);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_2649C6000, v20, v21, "AngelServer should tear down session due to: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x266749940](v25, -1, -1);
      MEMORY[0x266749940](v24, -1, -1);
    }

    v29 = *(v0 + 776);
    v30 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneDidBecomeActiveTask;
    if (*(v29 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneDidBecomeActiveTask))
    {

      sub_264B41304();
    }

    v31 = *(v0 + 776);
    *(v29 + v30) = 0;

    sub_264A3FC74();
    sub_264A3FDC0();
    sub_264A3FEAC();
    v32 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_axPrimitivesDataSubscription;
    if (*(v31 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_axPrimitivesDataSubscription))
    {

      sub_264B40994();
    }

    v33 = *(v0 + 776);
    *(v31 + v32) = 0;

    v34 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
    *(v0 + 968) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
    swift_beginAccess();
    sub_2649D046C(v33 + v34, v0 + 224, &qword_27FF89DA8, &qword_264B49498);
    if (*(v0 + 248))
    {
      sub_2649D2AAC((v0 + 224), v0 + 184);
      v35 = sub_264B40944();
      v36 = sub_264B41484();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_2649C6000, v35, v36, "Invalidating current scene interactor", v37, 2u);
        MEMORY[0x266749940](v37, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
      sub_264A7E5F0();
      __swift_destroy_boxed_opaque_existential_0((v0 + 184));
    }

    else
    {
      sub_2649D04D4(v0 + 224, &qword_27FF89DA8, &qword_264B49498);
    }

    v38 = sub_264B40944();
    v39 = sub_264B41484();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2649C6000, v38, v39, "Notifying client that we are winding down", v40, 2u);
      MEMORY[0x266749940](v40, -1, -1);
    }

    v41 = *(v0 + 760);
    v42 = *(v0 + 177);

    *&v45[0] = v41;
    *(&v45[0] + 1) = v42;
    v46[24] = 0x80;
    sub_2649E124C(v41, v42);
    sub_264A40100(v45);
    v43 = v45[1];
    *(v0 + 120) = v45[0];
    *(v0 + 136) = v43;
    *(v0 + 152) = *v46;
    *(v0 + 161) = *&v46[9];
    sub_264A52520(v0 + 120);
    sub_264B41B14();
    v44 = swift_task_alloc();
    *(v0 + 976) = v44;
    *v44 = v0;
    v44[1] = sub_264A3D884;

    return sub_2649FE7A8(100000000000000000, 0, 0, 0, 1);
  }
}

uint64_t sub_264A3D884()
{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v4 = *(*v1 + 840);
  v5 = *(*v1 + 832);
  *(*v1 + 984) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 920);
  v7 = *(v2 + 912);
  if (v0)
  {
    v8 = sub_264A3DC78;
  }

  else
  {
    v8 = sub_264A3DA1C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_264A3DA1C()
{
  v21 = v0;
  v1 = *(v0 + 776);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackActiveSubscription;
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackActiveSubscription))
  {

    sub_264B40994();
  }

  v3 = *(v0 + 776);
  *(v1 + v2) = 0;

  v4 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackServer;
  *(v0 + 992) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_playbackServer;
  v5 = *(v3 + v4);
  *(v0 + 1000) = v5;
  if (v5)
  {

    v6 = swift_task_alloc();
    *(v0 + 1008) = v6;
    *v6 = v0;
    v6[1] = sub_264A3DD68;

    return PlaybackServer.invalidate(waitsForSession:)(1);
  }

  else
  {
    v8 = *(v0 + 177);
    if (v8 <= 0xFB)
    {
      v12 = *(v0 + 760);
      sub_264A52574();
      v9 = swift_allocError();
      *v13 = v12;
      *(v13 + 8) = v8;
      LOBYTE(v8) = *(v0 + 177);
      v10 = 0xE500000000000000;
      v11 = 0x726F727265;
    }

    else
    {
      v9 = 0;
      v10 = 0xEB00000000646E65;
      v11 = 0x206E6F6973736573;
    }

    v14 = *(v0 + 776);
    sub_2649E124C(*(v0 + 760), v8);
    v15 = telemetryPayload(_:_:)(v11, v10, v9);

    v16 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
    *(v0 + 1016) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
    v17 = *(v14 + v16);
    if (v17)
    {
      v20 = 10;
      v18 = v17;
      sub_264A9113C(&v20, v15);
    }

    v19 = swift_task_alloc();
    *(v0 + 1024) = v19;
    *v19 = v0;
    v19[1] = sub_264A3E02C;

    return sub_264A403A8();
  }
}

uint64_t sub_264A3DC78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A3DD68()
{
  v1 = *v0;

  v2 = *(v1 + 920);
  v3 = *(v1 + 912);

  return MEMORY[0x2822009F8](sub_264A3DEAC, v3, v2);
}

uint64_t sub_264A3DEAC(uint64_t a1)
{
  v16 = v1;
  v2 = *(v1 + 177);
  if (v2 <= 0xFB)
  {
    v6 = *(v1 + 760);
    sub_264A52574();
    v3 = swift_allocError();
    *v7 = v6;
    *(v7 + 8) = v2;
    LOBYTE(v2) = *(v1 + 177);
    v4 = 0xE500000000000000;
    v5 = 0x726F727265;
  }

  else
  {
    v3 = 0;
    v4 = 0xEB00000000646E65;
    v5 = 0x206E6F6973736573;
  }

  v8 = *(v1 + 776);
  sub_2649E124C(*(v1 + 760), v2);
  v9 = telemetryPayload(_:_:)(v5, v4, v3);

  v10 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
  *(v1 + 1016) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_angelServerTelemetry;
  v11 = *(v8 + v10);
  if (v11)
  {
    v15 = 10;
    v12 = v11;
    sub_264A9113C(&v15, v9);
  }

  v13 = swift_task_alloc();
  *(v1 + 1024) = v13;
  *v13 = v1;
  v13[1] = sub_264A3E02C;

  return sub_264A403A8();
}

uint64_t sub_264A3E02C()
{
  v1 = *v0;

  v2 = *(v1 + 920);
  v3 = *(v1 + 912);

  return MEMORY[0x2822009F8](sub_264A3E14C, v3, v2);
}

uint64_t sub_264A3E14C()
{
  v1 = *(v0 + 936);
  v2 = *(v0 + 776);
  v3 = *(v2 + v1);
  *(v2 + v1) = 6;
  sub_264A51DF8(v3);
  v4 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentContinuityLiveActivity;
  *(v0 + 1032) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentContinuityLiveActivity;
  swift_beginAccess();
  sub_2649D046C(v2 + v4, v0 + 304, &unk_27FF89DB0, &unk_264B494A0);
  if (*(v0 + 328))
  {
    sub_2649D2AAC((v0 + 304), v0 + 264);
    v5 = *(v0 + 288);
    v6 = *(v0 + 296);
    __swift_project_boxed_opaque_existential_1((v0 + 264), v5);
    v57 = (*(v6 + 16) + **(v6 + 16));
    v7 = swift_task_alloc();
    *(v0 + 1040) = v7;
    *v7 = v0;
    v7[1] = sub_264A3E8BC;

    return v57(v5, v6);
  }

  else
  {
    sub_2649D04D4(v0 + 304, &unk_27FF89DB0, &unk_264B494A0);
    v9 = *(v0 + 808);
    v10 = *(v0 + 800);
    v11 = *(v0 + 792);
    v12 = *(v0 + 776);
    v13 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_companionDeviceID;
    *(v0 + 1048) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_companionDeviceID;
    swift_beginAccess();
    sub_2649D046C(v12 + v13, v11, &unk_27FF8BFC0, &qword_264B47140);
    v14 = (*(v9 + 48))(v11, 1, v10);
    v15 = *(v0 + 792);
    if (v14 == 1)
    {

      sub_2649D04D4(v15, &unk_27FF8BFC0, &qword_264B47140);
      v16 = sub_264B40944();
      v17 = sub_264B41494();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2649C6000, v16, v17, "Cannot record end of session because transport session lacks device ID", v18, 2u);
        MEMORY[0x266749940](v18, -1, -1);
      }

      v19 = *(v0 + 1048);
      v20 = *(v0 + 1016);
      v21 = *(v0 + 992);
      v22 = *(v0 + 968);
      v23 = *(v0 + 784);
      v24 = *(v0 + 776);
      (*(*(v0 + 808) + 56))(v23, 1, 1, *(v0 + 800));
      swift_beginAccess();
      sub_2649FECCC(v23, v24 + v19, &unk_27FF8BFC0, &qword_264B47140);
      swift_endAccess();
      *(v24 + v21) = 0;

      v25 = *(v24 + v20);
      *(v24 + v20) = 0;

      *(v0 + 376) = 0;
      *(v0 + 344) = 0u;
      *(v0 + 360) = 0u;
      swift_beginAccess();
      sub_2649FECCC(v0 + 344, v24 + v22, &qword_27FF89DA8, &qword_264B49498);
      swift_endAccess();
      v26 = v24 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentDisplayRegistration;
      swift_beginAccess();
      if (*(v26 + 24))
      {
        sub_2649CB5C0(v26, v0 + 424);
        v27 = *(v0 + 448);
        v28 = *(v0 + 456);
        __swift_project_boxed_opaque_existential_1((v0 + 424), v27);
        (*(v28 + 16))(v27, v28);
        __swift_destroy_boxed_opaque_existential_0((v0 + 424));
      }

      v29 = *(v0 + 776);
      *(v0 + 384) = 0u;
      *(v0 + 400) = 0u;
      *(v0 + 416) = 0;
      swift_beginAccess();
      sub_2649FECCC(v0 + 384, v26, &qword_27FF89DA0, &qword_264B49490);
      swift_endAccess();
      v30 = v29 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration;
      v32 = *(v29 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 16);
      v31 = *(v29 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 32);
      *(v0 + 16) = *(v29 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration);
      *(v0 + 32) = v32;
      *(v0 + 48) = v31;
      v34 = *(v30 + 64);
      v33 = *(v30 + 80);
      v35 = *(v30 + 48);
      *(v0 + 112) = *(v30 + 96);
      *(v0 + 80) = v34;
      *(v0 + 96) = v33;
      *(v0 + 64) = v35;
      *(v30 + 96) = 0;
      *(v30 + 64) = 0u;
      *(v30 + 80) = 0u;
      *(v30 + 32) = 0u;
      *(v30 + 48) = 0u;
      *v30 = 0u;
      *(v30 + 16) = 0u;
      sub_2649D04D4(v0 + 16, &qword_27FF89DC8, &unk_264B494D0);
      v36 = *(v29 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations);
      *(v29 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations) = MEMORY[0x277D84F90];
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = *(v0 + 872);
        v41 = *(v38 + 16);
        v39 = v38 + 16;
        v40 = v41;
        v42 = v36 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
        v43 = *(v39 + 56);
        do
        {
          v44 = *(v0 + 880);
          v45 = *(v0 + 864);
          v40(v44, v42, v45);
          sub_264B411E4();
          (*(v39 - 8))(v44, v45);
          v42 += v43;
          --v37;
        }

        while (v37);
      }

      v46 = *(v0 + 776);
      v47 = sub_264B40944();
      v48 = sub_264B414B4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = *(v0 + 944);
        v50 = *(v0 + 776);
        v51 = swift_slowAlloc();
        *v51 = 134349056;
        *(v51 + 4) = *&v50[v49];

        _os_log_impl(&dword_2649C6000, v47, v48, "Droppping keepAliveAssertion for session #%{public}ld", v51, 0xCu);
        MEMORY[0x266749940](v51, -1, -1);
        v52 = *(v0 + 776);
      }

      else
      {

        v52 = *(v0 + 776);
        v47 = v52;
      }

      *(&v52->isa + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion) = 0;

      v56 = *(v0 + 8);

      return v56();
    }

    else
    {
      v53 = *(v0 + 776);
      (*(*(v0 + 808) + 32))(*(v0 + 824), *(v0 + 792), *(v0 + 800));
      __swift_project_boxed_opaque_existential_1((v53 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sessionHistoryTracker), *(v53 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sessionHistoryTracker + 24));
      v58 = (*MEMORY[0x277D4B7E0] + MEMORY[0x277D4B7E0]);
      v54 = swift_task_alloc();
      *(v0 + 1056) = v54;
      *v54 = v0;
      v54[1] = sub_264A3F01C;
      v55 = *(v0 + 824);

      return v58(v55);
    }
  }
}

uint64_t sub_264A3E8BC()
{
  v1 = *v0;

  v2 = *(v1 + 920);
  v3 = *(v1 + 912);

  return MEMORY[0x2822009F8](sub_264A3E9DC, v3, v2);
}

uint64_t sub_264A3E9DC()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 776);
  *(v0 + 464) = 0u;
  *(v0 + 480) = 0u;
  *(v0 + 496) = 0;
  swift_beginAccess();
  sub_2649FECCC(v0 + 464, v2 + v1, &unk_27FF89DB0, &unk_264B494A0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);
  v5 = *(v0 + 792);
  v6 = *(v0 + 776);
  v7 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_companionDeviceID;
  *(v0 + 1048) = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_companionDeviceID;
  swift_beginAccess();
  sub_2649D046C(v6 + v7, v5, &unk_27FF8BFC0, &qword_264B47140);
  v8 = (*(v3 + 48))(v5, 1, v4);
  v9 = *(v0 + 792);
  if (v8 == 1)
  {

    sub_2649D04D4(v9, &unk_27FF8BFC0, &qword_264B47140);
    v10 = sub_264B40944();
    v11 = sub_264B41494();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2649C6000, v10, v11, "Cannot record end of session because transport session lacks device ID", v12, 2u);
      MEMORY[0x266749940](v12, -1, -1);
    }

    v13 = *(v0 + 1048);
    v14 = *(v0 + 1016);
    v15 = *(v0 + 992);
    v16 = *(v0 + 968);
    v17 = *(v0 + 784);
    v18 = *(v0 + 776);
    (*(*(v0 + 808) + 56))(v17, 1, 1, *(v0 + 800));
    swift_beginAccess();
    sub_2649FECCC(v17, v18 + v13, &unk_27FF8BFC0, &qword_264B47140);
    swift_endAccess();
    *(v18 + v15) = 0;

    v19 = *(v18 + v14);
    *(v18 + v14) = 0;

    *(v0 + 376) = 0;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    swift_beginAccess();
    sub_2649FECCC(v0 + 344, v18 + v16, &qword_27FF89DA8, &qword_264B49498);
    swift_endAccess();
    v20 = v18 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentDisplayRegistration;
    swift_beginAccess();
    if (*(v20 + 24))
    {
      sub_2649CB5C0(v20, v0 + 424);
      v21 = *(v0 + 448);
      v22 = *(v0 + 456);
      __swift_project_boxed_opaque_existential_1((v0 + 424), v21);
      (*(v22 + 16))(v21, v22);
      __swift_destroy_boxed_opaque_existential_0((v0 + 424));
    }

    v23 = *(v0 + 776);
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0;
    swift_beginAccess();
    sub_2649FECCC(v0 + 384, v20, &qword_27FF89DA0, &qword_264B49490);
    swift_endAccess();
    v24 = v23 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration;
    v26 = *(v23 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 16);
    v25 = *(v23 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 32);
    *(v0 + 16) = *(v23 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration);
    *(v0 + 32) = v26;
    *(v0 + 48) = v25;
    v28 = *(v24 + 64);
    v27 = *(v24 + 80);
    v29 = *(v24 + 48);
    *(v0 + 112) = *(v24 + 96);
    *(v0 + 80) = v28;
    *(v0 + 96) = v27;
    *(v0 + 64) = v29;
    *(v24 + 96) = 0;
    *(v24 + 64) = 0u;
    *(v24 + 80) = 0u;
    *(v24 + 32) = 0u;
    *(v24 + 48) = 0u;
    *v24 = 0u;
    *(v24 + 16) = 0u;
    sub_2649D04D4(v0 + 16, &qword_27FF89DC8, &unk_264B494D0);
    v30 = *(v23 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations);
    *(v23 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations) = MEMORY[0x277D84F90];
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = *(v0 + 872);
      v35 = *(v32 + 16);
      v33 = v32 + 16;
      v34 = v35;
      v36 = v30 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
      v37 = *(v33 + 56);
      do
      {
        v38 = *(v0 + 880);
        v39 = *(v0 + 864);
        v34(v38, v36, v39);
        sub_264B411E4();
        (*(v33 - 8))(v38, v39);
        v36 += v37;
        --v31;
      }

      while (v31);
    }

    v40 = *(v0 + 776);
    v41 = sub_264B40944();
    v42 = sub_264B414B4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 944);
      v44 = *(v0 + 776);
      v45 = swift_slowAlloc();
      *v45 = 134349056;
      *(v45 + 4) = *&v44[v43];

      _os_log_impl(&dword_2649C6000, v41, v42, "Droppping keepAliveAssertion for session #%{public}ld", v45, 0xCu);
      MEMORY[0x266749940](v45, -1, -1);
      v46 = *(v0 + 776);
    }

    else
    {

      v46 = *(v0 + 776);
      v41 = v46;
    }

    *(&v46->isa + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion) = 0;

    v51 = *(v0 + 8);

    return v51();
  }

  else
  {
    v47 = *(v0 + 776);
    (*(*(v0 + 808) + 32))(*(v0 + 824), *(v0 + 792), *(v0 + 800));
    __swift_project_boxed_opaque_existential_1((v47 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sessionHistoryTracker), *(v47 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sessionHistoryTracker + 24));
    v52 = (*MEMORY[0x277D4B7E0] + MEMORY[0x277D4B7E0]);
    v48 = swift_task_alloc();
    *(v0 + 1056) = v48;
    *v48 = v0;
    v48[1] = sub_264A3F01C;
    v49 = *(v0 + 824);

    return v52(v49);
  }
}

uint64_t sub_264A3F01C()
{
  v2 = *v1;
  *(*v1 + 1064) = v0;

  v3 = *(v2 + 920);
  v4 = *(v2 + 912);
  if (v0)
  {
    v5 = sub_264A3F734;
  }

  else
  {
    v5 = sub_264A3F158;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_264A3F158()
{
  v60 = v0;
  v1 = v0 + 344;
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 808);
  v5 = *(v0 + 800);

  (*(v4 + 16))(v3, v2, v5);
  v6 = sub_264B40944();
  v7 = sub_264B414B4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 824);
  v10 = *(v0 + 816);
  v11 = *(v0 + 808);
  v12 = *(v0 + 800);
  if (v8)
  {
    v13 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59 = v57;
    *v13 = 136315138;
    sub_264A54920(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_264B41A64();
    v58 = v9;
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_2649CC004(v14, v16, &v59);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2649C6000, v6, v7, "Ended session for device: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x266749940](v57, -1, -1);
    v19 = v13;
    v1 = v0 + 344;
    MEMORY[0x266749940](v19, -1, -1);

    v17(v58, v12);
  }

  else
  {

    v20 = *(v11 + 8);
    v20(v10, v12);
    v20(v9, v12);
  }

  v21 = *(v0 + 1048);
  v22 = *(v0 + 1016);
  v23 = *(v0 + 992);
  v24 = *(v0 + 968);
  v25 = *(v0 + 784);
  v26 = *(v0 + 776);
  (*(*(v0 + 808) + 56))(v25, 1, 1, *(v0 + 800));
  swift_beginAccess();
  sub_2649FECCC(v25, v26 + v21, &unk_27FF8BFC0, &qword_264B47140);
  swift_endAccess();
  *(v26 + v23) = 0;

  v27 = *(v26 + v22);
  *(v26 + v22) = 0;

  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  swift_beginAccess();
  sub_2649FECCC(v1, v26 + v24, &qword_27FF89DA8, &qword_264B49498);
  swift_endAccess();
  v28 = v26 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentDisplayRegistration;
  swift_beginAccess();
  if (*(v28 + 24))
  {
    sub_2649CB5C0(v28, v0 + 424);
    v29 = *(v0 + 448);
    v30 = *(v0 + 456);
    __swift_project_boxed_opaque_existential_1((v0 + 424), v29);
    (*(v30 + 16))(v29, v30);
    __swift_destroy_boxed_opaque_existential_0((v0 + 424));
  }

  v31 = *(v0 + 776);
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0;
  swift_beginAccess();
  sub_2649FECCC(v0 + 384, v28, &qword_27FF89DA0, &qword_264B49490);
  swift_endAccess();
  v32 = v31 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration;
  v34 = *(v31 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 16);
  v33 = *(v31 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 32);
  *(v0 + 16) = *(v31 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration);
  *(v0 + 32) = v34;
  *(v0 + 48) = v33;
  v36 = *(v32 + 64);
  v35 = *(v32 + 80);
  v37 = *(v32 + 48);
  *(v0 + 112) = *(v32 + 96);
  *(v0 + 80) = v36;
  *(v0 + 96) = v35;
  *(v0 + 64) = v37;
  *(v32 + 96) = 0;
  *(v32 + 64) = 0u;
  *(v32 + 80) = 0u;
  *(v32 + 32) = 0u;
  *(v32 + 48) = 0u;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  sub_2649D04D4(v0 + 16, &qword_27FF89DC8, &unk_264B494D0);
  v38 = *(v31 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations);
  *(v31 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations) = MEMORY[0x277D84F90];
  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = *(v0 + 872);
    v43 = *(v40 + 16);
    v41 = v40 + 16;
    v42 = v43;
    v44 = v38 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v45 = *(v41 + 56);
    do
    {
      v46 = *(v0 + 880);
      v47 = *(v0 + 864);
      v42(v46, v44, v47);
      sub_264B411E4();
      (*(v41 - 8))(v46, v47);
      v44 += v45;
      --v39;
    }

    while (v39);
  }

  v48 = *(v0 + 776);
  v49 = sub_264B40944();
  v50 = sub_264B414B4();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = *(v0 + 944);
    v52 = *(v0 + 776);
    v53 = swift_slowAlloc();
    *v53 = 134349056;
    *(v53 + 4) = *&v52[v51];

    _os_log_impl(&dword_2649C6000, v49, v50, "Droppping keepAliveAssertion for session #%{public}ld", v53, 0xCu);
    MEMORY[0x266749940](v53, -1, -1);
    v54 = *(v0 + 776);
  }

  else
  {

    v54 = *(v0 + 776);
    v49 = v54;
  }

  *(&v54->isa + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion) = 0;

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_264A3F734()
{
  v1 = *(v0 + 1064);

  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1064);
  v7 = *(v0 + 824);
  v8 = *(v0 + 808);
  v9 = *(v0 + 800);
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2649C6000, v3, v4, "Unable to record end of session: %{public}@", v10, 0xCu);
    sub_2649D04D4(v11, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  v14 = *(v0 + 1048);
  v15 = *(v0 + 1016);
  v16 = *(v0 + 992);
  v17 = *(v0 + 968);
  v18 = *(v0 + 784);
  v19 = *(v0 + 776);
  (*(*(v0 + 808) + 56))(v18, 1, 1, *(v0 + 800));
  swift_beginAccess();
  sub_2649FECCC(v18, v19 + v14, &unk_27FF8BFC0, &qword_264B47140);
  swift_endAccess();
  *(v19 + v16) = 0;

  v20 = *(v19 + v15);
  *(v19 + v15) = 0;

  *(v0 + 376) = 0;
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  swift_beginAccess();
  sub_2649FECCC(v0 + 344, v19 + v17, &qword_27FF89DA8, &qword_264B49498);
  swift_endAccess();
  v21 = v19 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentDisplayRegistration;
  swift_beginAccess();
  if (*(v21 + 24))
  {
    sub_2649CB5C0(v21, v0 + 424);
    v22 = *(v0 + 448);
    v23 = *(v0 + 456);
    __swift_project_boxed_opaque_existential_1((v0 + 424), v22);
    (*(v23 + 16))(v22, v23);
    __swift_destroy_boxed_opaque_existential_0((v0 + 424));
  }

  v24 = *(v0 + 776);
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0;
  swift_beginAccess();
  sub_2649FECCC(v0 + 384, v21, &qword_27FF89DA0, &qword_264B49490);
  swift_endAccess();
  v25 = v24 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration;
  v27 = *(v24 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 16);
  v26 = *(v24 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration + 32);
  *(v0 + 16) = *(v24 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_clientConfiguration);
  *(v0 + 32) = v27;
  *(v0 + 48) = v26;
  v29 = *(v25 + 64);
  v28 = *(v25 + 80);
  v30 = *(v25 + 48);
  *(v0 + 112) = *(v25 + 96);
  *(v0 + 80) = v29;
  *(v0 + 96) = v28;
  *(v0 + 64) = v30;
  *(v25 + 96) = 0;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  sub_2649D04D4(v0 + 16, &qword_27FF89DC8, &unk_264B494D0);
  v31 = *(v24 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations);
  *(v24 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_tearDownContinuations) = MEMORY[0x277D84F90];
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = *(v0 + 872);
    v36 = *(v33 + 16);
    v34 = v33 + 16;
    v35 = v36;
    v37 = v31 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v38 = *(v34 + 56);
    do
    {
      v39 = *(v0 + 880);
      v40 = *(v0 + 864);
      v35(v39, v37, v40);
      sub_264B411E4();
      (*(v34 - 8))(v39, v40);
      v37 += v38;
      --v32;
    }

    while (v32);
  }

  v41 = *(v0 + 776);
  v42 = sub_264B40944();
  v43 = sub_264B414B4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = *(v0 + 944);
    v45 = *(v0 + 776);
    v46 = swift_slowAlloc();
    *v46 = 134349056;
    *(v46 + 4) = *&v45[v44];

    _os_log_impl(&dword_2649C6000, v42, v43, "Droppping keepAliveAssertion for session #%{public}ld", v46, 0xCu);
    MEMORY[0x266749940](v46, -1, -1);
    v47 = *(v0 + 776);
  }

  else
  {

    v47 = *(v0 + 776);
    v42 = v47;
  }

  *(&v47->isa + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_keepAliveAssertion) = 0;

  v48 = *(v0 + 8);

  return v48();
}

void sub_264A3FC74()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyApplicator;
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyApplicator))
  {
    v2 = v0;
    v3 = qword_27FF88408;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FF8AE70);
    v5 = sub_264B40944();
    v6 = sub_264B414B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "Stopping policy application", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }

    sub_264B3F87C();

    *(v2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_policyEngine) = 0;

    *(v2 + v1) = 0;
  }
}

uint64_t sub_264A3FDC0()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_unifiedPlaybackEventSubscriptions;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x277D84F90];
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  result = sub_264B41884();
  v4 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x266748A70](i, v3);
      }

      else
      {
      }

      sub_264B40994();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264A3FEAC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseBringUpSubscription;
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseBringUpSubscription))
  {

    sub_264B40994();
  }

  v3 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseInSessionSubscription;
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceSensorInUseInSessionSubscription))
  {

    sub_264B40994();
  }

  *(v0 + v2) = 0;

  *(v0 + v3) = 0;

  v4 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneObservationSubscriptions;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5 >> 62)
  {
    goto LABEL_23;
  }

  for (result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = sub_264B41884())
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v7 = sub_264B40964();
    __swift_project_value_buffer(v7, qword_27FF8AE70);
    v8 = sub_264B40944();
    v9 = sub_264B41484();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2649C6000, v8, v9, "Throwing away scene observation cancellables", v10, 2u);
      MEMORY[0x266749940](v10, -1, -1);
    }

    v11 = *(v1 + v4);
    *(v1 + v4) = MEMORY[0x277D84F90];
    if (v11 >> 62)
    {
      v1 = sub_264B41884();
      if (!v1)
      {
      }
    }

    else
    {
      v1 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v1)
      {
      }
    }

    v12 = 0;
    v4 = v11 & 0xC000000000000001;
    while (v4)
    {
      MEMORY[0x266748A70](v12, v11);
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

LABEL_17:
      sub_264B40994();

      ++v12;
      if (v13 == v1)
      {
      }
    }

    if (v12 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    v13 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_17;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  return result;
}

void sub_264A40100(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v26 = *a1;
  v27 = v3;
  *v28 = a1[2];
  *&v28[9] = *(a1 + 41);
  v4 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState;
  if ((*&v1[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v21 = *v28;
    v5 = *&v28[16];
    v6 = v28[24] & 0xE1;
    v22[3] = &type metadata for StatusEvent;
    v22[4] = &off_28765B558;
    v7 = swift_allocObject();
    v22[0] = v7;
    v8 = v27;
    *(v7 + 16) = v26;
    *(v7 + 32) = v8;
    *(v7 + 48) = v21;
    *(v7 + 64) = v5;
    *(v7 + 72) = v6;
    sub_264A525C8(&v26, v24);
    sub_264B409C4();
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FF8AE70);
    sub_264A525C8(&v26, v24);
    v10 = v1;
    v11 = sub_264B40944();
    v12 = sub_264B41484();
    sub_264A52520(&v26);

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446466;
      v24[0] = v26;
      v24[1] = v27;
      v25[0] = *v28;
      *(v25 + 9) = *&v28[9];
      sub_264A525C8(&v26, v22);
      v15 = sub_264B41064();
      v17 = sub_2649CC004(v15, v16, &v23);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      *&v24[0] = *&v2[v4];
      sub_264A32420(*&v24[0]);
      v18 = sub_264B41064();
      v20 = sub_2649CC004(v18, v19, &v23);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_2649C6000, v11, v12, "Cannot send status event: %{public}s, invalid state: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v14, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
    }
  }
}

uint64_t sub_264A403A8()
{
  v1[9] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v1[10] = swift_task_alloc();
  sub_264B41244();
  v1[11] = sub_264B41234();
  v3 = sub_264B411C4();
  v1[12] = v3;
  v1[13] = v2;

  return MEMORY[0x2822009F8](sub_264A40478, v3, v2);
}

uint64_t sub_264A40478()
{
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration;
  v0[14] = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration;
  v3 = (v1 + v2);
  v5 = *v3;
  v4 = v3[1];
  v0[15] = v4;
  v6 = qword_27FF88408;

  if (v6 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v7 = sub_264B40964();
    v0[16] = __swift_project_value_buffer(v7, qword_27FF8AE70);

    v8 = sub_264B40944();
    v9 = sub_264B41474();
    if (!os_log_type_enabled(v8, v9))
    {
      break;
    }

    v10 = swift_slowAlloc();
    *v10 = 134349056;
    *(v10 + 4) = v5;

    _os_log_impl(&dword_2649C6000, v8, v9, "Stopping MediaTransport session #%{public}ld...", v10, 0xCu);
    MEMORY[0x266749940](v10, -1, -1);

    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_4:
    v11 = v0[9];
    v12 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportStreamCancellables;
    swift_beginAccess();
    v13 = *(v11 + v12);
    *(v11 + v12) = MEMORY[0x277D84F90];
    v5 = *(v13 + 16);
    if (!v5)
    {
LABEL_8:

      return MEMORY[0x2822009F8](sub_264A40770, v4, 0);
    }

    v14 = 0;
    while (v14 < *(v13 + 16))
    {
      v15 = v14 + 1;

      sub_264B41304();

      v14 = v15;
      if (v5 == v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  if (v4)
  {
    goto LABEL_4;
  }

LABEL_12:

  v16 = sub_264B40944();
  v17 = sub_264B414B4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134349056;
    *(v18 + 4) = v5;
    _os_log_impl(&dword_2649C6000, v16, v17, "No MediaTransport session for session #%{public}ld to stop, bailing out early", v18, 0xCu);
    MEMORY[0x266749940](v18, -1, -1);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_264A40770()
{
  v1 = *(v0[15] + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState);
  v0[17] = v1;
  sub_2649DDB20(v1);
  v2 = v0[12];
  v3 = v0[13];

  return MEMORY[0x2822009F8](sub_264A407E8, v2, v3);
}

uint64_t sub_264A407E8()
{
  v22 = v0;
  v1 = *(v0 + 136);
  sub_2649DDB20(v1);
  sub_2649FE684(v1);
  sub_2649FE684(2);
  if (v1 > 1)
  {
    v4 = *(v0 + 136);

    sub_2649DDB20(v4);
    v5 = sub_264B40944();
    v6 = sub_264B414B4();
    sub_2649FE684(v4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 136);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136446210;
      *(v0 + 64) = v7;
      sub_2649DDB20(v7);
      v10 = sub_264B41064();
      v12 = sub_2649CC004(v10, v11, &v21);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_2649C6000, v5, v6, "MediaTransportServerSession is in state: %{public}s, not tearing it down again", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x266749940](v9, -1, -1);
      MEMORY[0x266749940](v8, -1, -1);
    }

    v13 = *(v0 + 72);
    *(v13 + *(v0 + 112) + 8) = 0;

    v14 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportCancellable;
    v15 = *(v0 + 136);
    if (*(v13 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportCancellable))
    {

      sub_264B41304();
      sub_2649FE684(v15);
    }

    else
    {
      sub_2649FE684(*(v0 + 136));
    }

    v16 = *(v0 + 72);
    v17 = *(v0 + 80);

    *(v13 + v14) = 0;

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportActivationContinuation;
    swift_beginAccess();
    sub_2649FECCC(v17, v16 + v19, &unk_27FF899E0, &qword_264B53440);
    swift_endAccess();

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    *v2 = v0;
    v2[1] = sub_264A40B04;

    return sub_2649E912C();
  }
}

uint64_t sub_264A40B04()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_264A40C24, v3, v2);
}

uint64_t sub_264A40C24()
{

  v1 = *(v0 + 72);
  *(v1 + *(v0 + 112) + 8) = 0;

  v2 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportCancellable;
  v3 = *(v0 + 136);
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportCancellable))
  {

    sub_264B41304();
    sub_2649FE684(v3);
  }

  else
  {
    sub_2649FE684(*(v0 + 136));
  }

  v4 = *(v0 + 72);
  v5 = *(v0 + 80);

  *(v1 + v2) = 0;

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportActivationContinuation;
  swift_beginAccess();
  sub_2649FECCC(v5, v4 + v7, &unk_27FF899E0, &qword_264B53440);
  swift_endAccess();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_264A40DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v16 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportActivationContinuation;
  swift_beginAccess();
  sub_2649FECCC(v11, a2 + v14, &unk_27FF899E0, &qword_264B53440);
  swift_endAccess();
  return sub_264A40F14(a3, a4);
}

uint64_t sub_264A40F14(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  sub_264B41254();
  v9 = sub_264B41274();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_2649CB5C0(a1, v16);
  sub_264B41244();
  v10 = v2;
  v11 = sub_264B41234();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  sub_2649D2AAC(v16, (v12 + 4));
  v12[9] = a2;
  v12[10] = v10;
  *&v10[OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportCancellable] = sub_264A10C20(0, 0, v8, &unk_264B49548, v12);
}

uint64_t sub_264A41084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[32] = a5;
  v6[33] = a6;
  v6[31] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v6[34] = v7;
  v6[35] = *(v7 - 8);
  v6[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v6[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = sub_264B41244();
  v6[43] = sub_264B41234();
  v9 = sub_264B411C4();
  v6[44] = v9;
  v6[45] = v8;

  return MEMORY[0x2822009F8](sub_264A41220, v9, v8);
}

uint64_t sub_264A41220()
{
  v1 = v0[31];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_264B41334();

  v6 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration;
  v0[46] = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentServerState;
  v0[47] = v6;
  v7 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportActivationContinuation;
  v0[48] = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportStreamCancellables;
  v0[49] = v7;
  swift_beginAccess();
  v0[50] = 0;
  v8 = sub_264B41234();
  v0[51] = v8;
  v9 = v0[5];
  v10 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v9);
  v12 = swift_task_alloc();
  v0[52] = v12;
  *v12 = v0;
  v12[1] = sub_264A41434;
  v13 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 28, v8, v13, v11, v9, v10);
}

uint64_t sub_264A41434()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 352);
    v5 = *(v2 + 360);

    return MEMORY[0x2822009F8](sub_264A41548, v4, v5);
  }

  return result;
}

uint64_t sub_264A41548()
{
  v113 = v0;
  v2 = v0 + 224;
  v3 = *(v0 + 224);
  v4 = v0 + 16;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_33;
      }

      v7 = *(v0 + 400);
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_68;
      }

      if (qword_27FF88408 != -1)
      {
        swift_once();
      }

      v9 = sub_264B40964();
      __swift_project_value_buffer(v9, qword_27FF8AE70);
      v10 = sub_264B40944();
      v11 = sub_264B414B4();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = *(v0 + 256);
        v13 = swift_slowAlloc();
        *v13 = 134349312;
        *(v13 + 4) = v12;
        *(v13 + 12) = 2050;
        *(v13 + 14) = v8;
        _os_log_impl(&dword_2649C6000, v10, v11, "2. MediaTransportServerSession #%{public}ld state: Activated #%{public}ld", v13, 0x16u);
        MEMORY[0x266749940](v13, -1, -1);
      }

      v15 = *(v0 + 368);
      v14 = *(v0 + 376);
      v16 = *(v0 + 264);

      v17 = *(v16 + v15);
      *(v16 + v15) = 4;
      sub_264A51DF8(v17);
      v18 = *(v16 + v14 + 8);
      if (v18)
      {
        v106 = v8;
        v19 = *(v0 + 328);
        v20 = *(v0 + 264);
        v107 = *(v0 + 320);
        v109 = *&v20[*(v0 + 376)];
        v21 = sub_264B41274();
        v22 = *(v21 - 8);
        v105 = *(v22 + 56);
        v105(v19, 1, 1, v21);
        swift_retain_n();
        v23 = v20;
        v24 = sub_264B41234();
        v25 = swift_allocObject();
        v26 = MEMORY[0x277D85700];
        v25[2] = v24;
        v25[3] = v26;
        v27 = v107;
        v25[4] = v109;
        v25[5] = v18;
        v25[6] = v18;
        v25[7] = v23;
        sub_2649D046C(v19, v107, &qword_27FF898C0, &unk_264B44190);
        v108 = *(v22 + 48);
        LODWORD(v23) = v108(v27, 1, v21);

        v28 = *(v0 + 320);
        if (v23 == 1)
        {
          sub_2649D04D4(v28, &qword_27FF898C0, &unk_264B44190);
        }

        else
        {
          sub_264B41264();
          (*(v22 + 8))(v28, v21);
        }

        v104 = v22;
        v74 = v25[2];
        swift_unknownObjectRetain();

        if (v74)
        {
          swift_getObjectType();
          v75 = sub_264B411C4();
          v77 = v76;
          swift_unknownObjectRelease();
        }

        else
        {
          v75 = 0;
          v77 = 0;
        }

        sub_2649D04D4(*(v0 + 328), &qword_27FF898C0, &unk_264B44190);
        v78 = swift_allocObject();
        *(v78 + 16) = &unk_264B49560;
        *(v78 + 24) = v25;
        if (v77 | v75)
        {
          *(v0 + 56) = 0;
          *(v0 + 64) = 0;
          *(v0 + 72) = v75;
          *(v0 + 80) = v77;
        }

        v79 = *(v0 + 264) + *(v0 + 376);
        swift_task_create();

        v80 = *(v79 + 8);
        if (v80)
        {
          v82 = *(v0 + 304);
          v81 = *(v0 + 312);
          v83 = *(v0 + 264);
          v111 = *&v83[*(v0 + 376)];
          v105(v81, 1, 1, v21);
          swift_retain_n();
          v84 = v83;
          v85 = sub_264B41234();
          v86 = swift_allocObject();
          v86[2] = v85;
          v86[3] = MEMORY[0x277D85700];
          v86[4] = v111;
          v86[5] = v80;
          v86[6] = v80;
          v86[7] = v84;
          sub_2649D046C(v81, v82, &qword_27FF898C0, &unk_264B44190);
          LODWORD(v81) = v108(v82, 1, v21);

          v87 = *(v0 + 304);
          if (v81 == 1)
          {
            sub_2649D04D4(*(v0 + 304), &qword_27FF898C0, &unk_264B44190);
          }

          else
          {
            sub_264B41264();
            (*(v104 + 8))(v87, v21);
          }

          v88 = v86[2];
          swift_unknownObjectRetain();

          if (v88)
          {
            swift_getObjectType();
            v89 = sub_264B411C4();
            v91 = v90;
            swift_unknownObjectRelease();
          }

          else
          {
            v89 = 0;
            v91 = 0;
          }

          sub_2649D04D4(*(v0 + 312), &qword_27FF898C0, &unk_264B44190);
          v92 = swift_allocObject();
          *(v92 + 16) = &unk_264B49578;
          *(v92 + 24) = v86;
          if (v91 | v89)
          {
            *(v0 + 88) = 0;
            *(v0 + 96) = 0;
            *(v0 + 104) = v89;
            *(v0 + 112) = v91;
          }

          v4 = v0 + 16;
          v93 = *(v0 + 384);
          v94 = *(v0 + 264);
          v95 = swift_task_create();
          swift_beginAccess();
          v96 = *(v94 + v93);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v94 + v93) = v96;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v102 = *(v0 + 384);
            v103 = *(v0 + 264);
            v96 = sub_2649D8218(0, v96[2] + 1, 1, v96);
            *(v103 + v102) = v96;
          }

          v99 = v96[2];
          v98 = v96[3];
          if (v99 >= v98 >> 1)
          {
            v96 = sub_2649D8218((v98 > 1), v99 + 1, 1, v96);
          }

          v100 = *(v0 + 384);
          v101 = *(v0 + 264);
          v96[2] = v99 + 1;
          v96[v99 + 4] = v95;
          *(v101 + v100) = v96;
          swift_endAccess();

          v59 = v106;
          goto LABEL_39;
        }
      }
    }

    else
    {
      if (qword_27FF88408 != -1)
      {
        swift_once();
      }

      v42 = sub_264B40964();
      __swift_project_value_buffer(v42, qword_27FF8AE70);
      v43 = sub_264B40944();
      v44 = sub_264B41484();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = *(v0 + 256);
        v46 = swift_slowAlloc();
        *v46 = 134349056;
        *(v46 + 4) = v45;
        _os_log_impl(&dword_2649C6000, v43, v44, "MediaTransportServerSession #%{public}ld state: Unactivated", v46, 0xCu);
        MEMORY[0x266749940](v46, -1, -1);
      }

      v47 = *(v0 + 256);

      v112[0] = 0;
      v112[1] = 0xE000000000000000;
      sub_264B41754();
      MEMORY[0x266748390](0xD000000000000017, 0x8000000264B5C5F0);
      *(v0 + 240) = v47;
      v48 = sub_264B41A64();
      MEMORY[0x266748390](v48);

      MEMORY[0x266748390](0xD00000000000002BLL, 0x8000000264B5C610);
    }

    return sub_264B41874();
  }

  switch(v3)
  {
    case 2:
      if (qword_27FF88408 != -1)
      {
        swift_once();
      }

      v29 = sub_264B40964();
      __swift_project_value_buffer(v29, qword_27FF8AE70);
      v30 = sub_264B40944();
      v31 = sub_264B414B4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 256);
        v33 = swift_slowAlloc();
        *v33 = 134349056;
        *(v33 + 4) = v32;
        _os_log_impl(&dword_2649C6000, v30, v31, "MediaTransportServerSession #%{public}ld state: Tearing Down", v33, 0xCu);
        MEMORY[0x266749940](v33, -1, -1);
      }

      goto LABEL_38;
    case 3:
      v1 = v0 + 208;
      if (qword_27FF88408 != -1)
      {
        swift_once();
      }

      v34 = sub_264B40964();
      __swift_project_value_buffer(v34, qword_27FF8AE70);
      v35 = sub_264B40944();
      v36 = sub_264B414B4();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = *(v0 + 256);
        v38 = swift_slowAlloc();
        *v38 = 134349056;
        *(v38 + 4) = v37;
        _os_log_impl(&dword_2649C6000, v35, v36, "MediaTransportServerSession #%{public}ld state: Invalidated", v38, 0xCu);
        MEMORY[0x266749940](v38, -1, -1);
      }

      v39 = *(v0 + 296);
      v40 = *(v0 + 272);
      v41 = *(v0 + 280);

      *(v0 + 208) = 0;
      *(v0 + 216) = -4;
      (*(v41 + 56))(v39, 1, 1, v40);
      goto LABEL_37;
    case 4:

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));

      v5 = *(v0 + 8);

      return v5();
  }

LABEL_33:
  v1 = v0 + 192;
  if (qword_27FF88408 != -1)
  {
LABEL_68:
    swift_once();
  }

  v49 = sub_264B40964();
  __swift_project_value_buffer(v49, qword_27FF8AE70);
  sub_2649DDB20(v3);
  v50 = sub_264B40944();
  v51 = sub_264B414B4();
  sub_264A545B0(v3);
  if (os_log_type_enabled(v50, v51))
  {
    v52 = *(v0 + 256);
    v53 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v112[0] = v110;
    *v53 = 134349314;
    *(v53 + 4) = v52;
    *(v53 + 12) = 2082;
    *(v0 + 232) = v3;
    sub_2649DDB20(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v54 = sub_264B41064();
    v56 = sub_2649CC004(v54, v55, v112);

    *(v53 + 14) = v56;
    v4 = v0 + 16;
    v2 = v0 + 224;
    _os_log_impl(&dword_2649C6000, v50, v51, "MediaTransportServerSession #%{public}ld state: Interrupted with error: %{public}s", v53, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v110);
    MEMORY[0x266749940](v110, -1, -1);
    MEMORY[0x266749940](v53, -1, -1);
  }

  v39 = *(v0 + 296);
  v57 = *(v0 + 272);
  v58 = *(v0 + 280);
  *(v0 + 192) = 3;
  *(v0 + 200) = 0x80;
  (*(v58 + 56))(v39, 1, 1, v57);
LABEL_37:
  sub_264A380B0(v1, v39);
  sub_2649D04D4(v39, &unk_27FF899E0, &qword_264B53440);
LABEL_38:
  v59 = *(v0 + 400);
LABEL_39:
  v60 = *(v0 + 392);
  v62 = *(v0 + 272);
  v61 = *(v0 + 280);
  v63 = *(v0 + 264);
  if ((*(v61 + 48))(v63 + v60, 1, v62))
  {
    sub_264A545B0(v3);
  }

  else
  {
    v64 = *(v0 + 288);
    (*(v61 + 16))(v64, v63 + v60, v62);
    sub_264B411E4();
    sub_264A545B0(v3);
    (*(v61 + 8))(v64, v62);
  }

  v65 = *(v0 + 392);
  v66 = *(v0 + 296);
  v67 = *(v0 + 264);
  (*(*(v0 + 280) + 56))(v66, 1, 1, *(v0 + 272));
  swift_beginAccess();
  sub_2649FECCC(v66, v67 + v65, &unk_27FF899E0, &qword_264B53440);
  swift_endAccess();
  *(v0 + 400) = v59;
  v68 = sub_264B41234();
  *(v0 + 408) = v68;
  v69 = *(v0 + 40);
  v70 = *(v0 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v69);
  v72 = swift_task_alloc();
  *(v0 + 416) = v72;
  *v72 = v0;
  v72[1] = sub_264A41434;
  v73 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v2, v68, v73, v71, v69, v70);
}

uint64_t sub_264A423D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[31] = a6;
  v7[32] = a7;
  v7[29] = a4;
  v7[30] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89FF8, &unk_264B496F0);
  v7[35] = v8;
  v7[36] = *(v8 - 8);
  v7[37] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A000, &qword_264B471A8);
  v7[38] = v9;
  v7[39] = *(v9 - 8);
  v7[40] = swift_task_alloc();
  v7[41] = sub_264B41244();
  v7[42] = sub_264B41234();
  v11 = sub_264B411C4();
  v7[43] = v11;
  v7[44] = v10;

  return MEMORY[0x2822009F8](sub_264A42584, v11, v10);
}

uint64_t sub_264A42584()
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  v0[45] = __swift_project_value_buffer(v1, qword_27FF8AE70);

  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[29];
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;

    _os_log_impl(&dword_2649C6000, v2, v3, "Setting up audioVideoMessageStreams for session #%{public}ld", v5, 0xCu);
    MEMORY[0x266749940](v5, -1, -1);
  }

  else
  {
  }

  v6 = v0[31];

  return MEMORY[0x2822009F8](sub_264A426DC, v6, 0);
}

uint64_t sub_264A426DC()
{
  (*(v0[39] + 16))(v0[40], v0[31] + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_audioVideoStreams, v0[38]);
  v1 = v0[43];
  v2 = v0[44];

  return MEMORY[0x2822009F8](sub_264A42764, v1, v2);
}

uint64_t sub_264A42764()
{
  sub_264B412C4();
  v1 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportSessionGeneration;
  v0[46] = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_mediaTransportStreamCancellables;
  v0[47] = v1;
  v2 = sub_264B41234();
  v0[48] = v2;
  v3 = swift_task_alloc();
  v0[49] = v3;
  *v3 = v0;
  v3[1] = sub_264A42840;
  v4 = v0[35];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v2, v5, v4);
}

uint64_t sub_264A42840()
{
  v1 = *v0;

  v2 = *(v1 + 352);
  v3 = *(v1 + 344);

  return MEMORY[0x2822009F8](sub_264A42984, v3, v2);
}

uint64_t sub_264A42984()
{
  v55 = v0;
  if (*(v0 + 40))
  {
    v1 = *(v0 + 256);
    sub_2649D2AAC((v0 + 16), v0 + 56);
    sub_2649CB5C0(v0 + 56, v0 + 96);
    v2 = v1;
    v3 = sub_264B40944();
    v4 = sub_264B41484();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 376);
      v6 = *(v0 + 256);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v53 = v8;
      *v7 = 134349314;
      *(v7 + 4) = *&v6[v5];

      *(v7 + 12) = 2082;
      v9 = *(v0 + 120);
      v10 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v9);
      (*(v10 + 8))(&v54, v9, v10);
      *(v0 + 400) = v54;
      v11 = sub_264B41064();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      v14 = sub_2649CC004(v11, v13, &v53);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_2649C6000, v3, v4, "Session #%{public}ld received media message stream of type: %{public}s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x266749940](v8, -1, -1);
      MEMORY[0x266749940](v7, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    }

    v23 = *(v0 + 264);
    v24 = *(v0 + 272);
    v25 = *(v0 + 256);
    v26 = sub_264B41274();
    v27 = *(v26 - 8);
    (*(v27 + 56))(v24, 1, 1, v26);
    sub_2649CB5C0(v0 + 56, v0 + 136);
    v28 = v25;
    v29 = sub_264B41234();
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    v30[2] = v29;
    v30[3] = v31;
    v30[4] = v28;
    sub_2649D2AAC((v0 + 136), (v30 + 5));
    sub_2649D046C(v24, v23, &qword_27FF898C0, &unk_264B44190);
    LODWORD(v23) = (*(v27 + 48))(v23, 1, v26);

    v32 = *(v0 + 264);
    if (v23 == 1)
    {
      sub_2649D04D4(*(v0 + 264), &qword_27FF898C0, &unk_264B44190);
    }

    else
    {
      sub_264B41264();
      (*(v27 + 8))(v32, v26);
    }

    v33 = v30[2];
    swift_unknownObjectRetain();

    if (v33)
    {
      swift_getObjectType();
      v34 = sub_264B411C4();
      v36 = v35;
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    sub_2649D04D4(*(v0 + 272), &qword_27FF898C0, &unk_264B44190);
    v37 = swift_allocObject();
    *(v37 + 16) = &unk_264B49708;
    *(v37 + 24) = v30;
    if (v36 | v34)
    {
      *(v0 + 176) = 0;
      *(v0 + 184) = 0;
      *(v0 + 192) = v34;
      *(v0 + 200) = v36;
    }

    v38 = *(v0 + 368);
    v39 = *(v0 + 256);
    v40 = swift_task_create();
    swift_beginAccess();
    v41 = *(v39 + v38);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v39 + v38) = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v51 = *(v0 + 368);
      v52 = *(v0 + 256);
      v41 = sub_2649D8218(0, v41[2] + 1, 1, v41);
      *(v52 + v51) = v41;
    }

    v44 = v41[2];
    v43 = v41[3];
    if (v44 >= v43 >> 1)
    {
      v41 = sub_2649D8218((v43 > 1), v44 + 1, 1, v41);
    }

    v45 = *(v0 + 368);
    v46 = *(v0 + 256);
    v41[2] = v44 + 1;
    v41[v44 + 4] = v40;
    *(v46 + v45) = v41;
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v47 = sub_264B41234();
    *(v0 + 384) = v47;
    v48 = swift_task_alloc();
    *(v0 + 392) = v48;
    *v48 = v0;
    v48[1] = sub_264A42840;
    v49 = *(v0 + 280);
    v50 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 16, v47, v50, v49);
  }

  else
  {
    v16 = *(v0 + 312);
    v15 = *(v0 + 320);
    v18 = *(v0 + 296);
    v17 = *(v0 + 304);
    v19 = *(v0 + 280);
    v20 = *(v0 + 288);

    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_264A42F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[55] = a4;
  v5[56] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v5[57] = swift_task_alloc();
  v5[58] = sub_264B41244();
  v5[59] = sub_264B41234();
  v7 = sub_264B411C4();
  v5[60] = v7;
  v5[61] = v6;

  return MEMORY[0x2822009F8](sub_264A43040, v7, v6);
}

uint64_t sub_264A43040()
{
  if (sub_264B41314())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = *(v0 + 440);
    v3 = *(v0 + 448);
    sub_2649CB5C0(v4 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_taskSleepPrimitives, v0 + 16);
    v5 = *(v0 + 40);
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v5);
    v7 = *(v5 - 8);
    v8 = swift_task_alloc();
    (*(v7 + 16))(v8, v6, v5);
    v9 = *v8;
    v10 = type metadata accessor for TimeBackedTaskSleepPrimitives();
    *(v0 + 80) = v10;
    *(v0 + 88) = &off_28765C058;
    *(v0 + 56) = v9;
    type metadata accessor for TaskBackedTimer();
    v11 = swift_allocObject();
    *(v0 + 496) = v11;
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v10);
    v13 = *(v10 - 8);
    v14 = swift_task_alloc();
    (*(v13 + 16))(v14, v12, v10);
    v15 = *v14;
    *(v11 + 40) = v10;
    *(v11 + 48) = &off_28765C058;
    *(v11 + 16) = v15;
    *(v11 + 88) = 0;
    *(v11 + 72) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 96) = 1;
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v16 = (v4 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_timeoutPrimitives);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2649CB5C0(v3, v0 + 96);
    sub_2649CB5C0(v16, v0 + 136);
    v18 = swift_allocObject();
    sub_2649D2AAC((v0 + 96), v18 + 16);
    sub_2649D2AAC((v0 + 136), v18 + 56);
    *(v18 + 96) = v17;
    v19 = *(v11 + 64);
    v20 = *(v11 + 72);
    *(v11 + 64) = sub_264A55684;
    *(v11 + 72) = v18;

    sub_2649CB67C(v19, v20);

    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v21 = sub_264B41C14();
    sub_264B0D954(v21, v22);
    v23 = v3[3];
    v24 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v23);
    v26 = (*(v24 + 16) + **(v24 + 16));
    v25 = swift_task_alloc();
    *(v0 + 504) = v25;
    *v25 = v0;
    v25[1] = sub_264A43450;

    return v26(v0 + 176, v23, v24);
  }
}

uint64_t sub_264A43450()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 488);
  v4 = *(v2 + 480);
  if (v0)
  {
    v5 = sub_264A43DC0;
  }

  else
  {
    v5 = sub_264A4358C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_264A4358C()
{
  v1 = v0[25];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 22, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[35] = swift_getAssociatedTypeWitness();
  v0[36] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 32);
  sub_264B41334();

  v5 = sub_264B41234();
  v0[65] = v5;
  v6 = v0[35];
  v7 = v0[36];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 32), v6);
  v8 = swift_task_alloc();
  v0[66] = v8;
  *v8 = v0;
  v8[1] = sub_264A43760;
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 537, v5, v9, v0 + 53, v6, v7);
}

uint64_t sub_264A43760()
{
  v2 = *v1;

  v3 = *(v2 + 480);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_264A4414C;
  }

  else
  {
    v5 = sub_264A43880;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_264A43880()
{
  v39 = v0;
  v1 = *(v0 + 537);
  if (v1 == 6 || (sub_264B41314() & 1) != 0)
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (v1 == 1)
    {
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 448);
      v5 = sub_264B40964();
      __swift_project_value_buffer(v5, qword_27FFA71B8);
      sub_2649CB5C0(v4, v0 + 376);
      v6 = sub_264B40944();
      v7 = sub_264B414B4();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v37 = v9;
        *v8 = 136446210;
        v10 = *(v0 + 400);
        v11 = *(v0 + 408);
        __swift_project_boxed_opaque_existential_1((v0 + 376), v10);
        (*(v11 + 8))(&v38, v10, v11);
        *(v0 + 541) = v38;
        v12 = sub_264B41064();
        v14 = v13;
        __swift_destroy_boxed_opaque_existential_0((v0 + 376));
        v15 = sub_2649CC004(v12, v14, &v37);

        *(v8 + 4) = v15;
        _os_log_impl(&dword_2649C6000, v6, v7, "Media stream type: %{public}s activated, cancelling timeout", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x266749940](v9, -1, -1);
        MEMORY[0x266749940](v8, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0((v0 + 376));
      }

      v31 = *(v0 + 496);
      *(v31 + 80) = 0;
      *(v31 + 88) = 0;
      *(v31 + 96) = 1;
      if (*(v31 + 56))
      {

        sub_264B41304();
      }

      *(*(v0 + 496) + 56) = 0;
    }

    else
    {
      if (qword_27FF88408 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 448);
      v17 = sub_264B40964();
      __swift_project_value_buffer(v17, qword_27FF8AE70);
      sub_2649CB5C0(v16, v0 + 336);
      v18 = sub_264B40944();
      v19 = sub_264B414B4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v37 = v21;
        *v20 = 136446466;
        v22 = *(v0 + 360);
        v23 = *(v0 + 368);
        __swift_project_boxed_opaque_existential_1((v0 + 336), v22);
        (*(v23 + 8))(&v38, v22, v23);
        *(v0 + 539) = v38;
        v24 = sub_264B41064();
        v26 = v25;
        __swift_destroy_boxed_opaque_existential_0((v0 + 336));
        v27 = sub_2649CC004(v24, v26, &v37);

        *(v20 + 4) = v27;
        *(v20 + 12) = 2082;
        *(v0 + 540) = v1;
        v28 = sub_264B41064();
        v30 = sub_2649CC004(v28, v29, &v37);

        *(v20 + 14) = v30;
        _os_log_impl(&dword_2649C6000, v18, v19, "Media stream of type: %{public}s transitioned to %{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266749940](v21, -1, -1);
        MEMORY[0x266749940](v20, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0((v0 + 336));
      }
    }

    v32 = sub_264B41234();
    *(v0 + 520) = v32;
    v33 = *(v0 + 280);
    v34 = *(v0 + 288);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, v33);
    v35 = swift_task_alloc();
    *(v0 + 528) = v35;
    *v35 = v0;
    v35[1] = sub_264A43760;
    v36 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 537, v32, v36, v0 + 424, v33, v34);
  }
}

uint64_t sub_264A43DC0()
{
  v29 = v0;
  v1 = *(v0 + 496);

  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;
  if (*(v1 + 56))
  {

    sub_264B41304();
  }

  *(*(v0 + 496) + 56) = 0;

  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 512);
  v3 = *(v0 + 448);
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE70);
  sub_2649CB5C0(v3, v0 + 216);
  v5 = v2;
  v6 = sub_264B40944();
  v7 = sub_264B41494();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 512);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136446466;
    v11 = *(v0 + 240);
    v12 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_1((v0 + 216), v11);
    (*(v12 + 8))(&v28, v11, v12);
    *(v0 + 536) = v28;
    v13 = sub_264B41064();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
    v16 = sub_2649CC004(v13, v15, &v26);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2082;
    *(v0 + 416) = v8;
    v17 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v18 = sub_264B41064();
    v20 = sub_2649CC004(v18, v19, &v26);

    *(v9 + 14) = v20;
    _os_log_impl(&dword_2649C6000, v6, v7, "Failed to activate stream of type: %{public}s with error: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  }

  v21 = *(v0 + 512);
  v22 = *(v0 + 456);
  v26 = 5;
  v27 = 0x80;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  sub_264A380B0(&v26, v22);

  sub_2649D04D4(v22, &unk_27FF899E0, &qword_264B53440);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_264A4414C()
{
  v27 = v0;
  v1 = *(v0 + 496);

  v2 = *(v0 + 424);
  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;
  if (*(v1 + 56))
  {

    sub_264B41304();
  }

  *(*(v0 + 496) + 56) = 0;

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 448);
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71B8);
  sub_2649CB5C0(v3, v0 + 296);
  v5 = v2;
  v6 = sub_264B40944();
  v7 = sub_264B41494();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136446466;
    v10 = *(v0 + 320);
    v11 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1((v0 + 296), v10);
    (*(v11 + 8))(&v26, v10, v11);
    *(v0 + 538) = v26;
    v12 = sub_264B41064();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0((v0 + 296));
    v15 = sub_2649CC004(v12, v14, &v24);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2082;
    *(v0 + 432) = v2;
    v16 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v17 = sub_264B41064();
    v19 = sub_2649CC004(v17, v18, &v24);

    *(v8 + 14) = v19;
    _os_log_impl(&dword_2649C6000, v6, v7, "Media stream type: %{public}s interrupted with: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  }

  v20 = *(v0 + 456);
  v24 = 4;
  v25 = 0x80;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  sub_264A380B0(&v24, v20);

  sub_2649D04D4(v20, &unk_27FF899E0, &qword_264B53440);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  v22 = *(v0 + 8);

  return v22();
}

void *sub_264A444E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v27[-v7];
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FFA71B8);
  sub_2649CB5C0(a1, v33);
  sub_2649CB5C0(a2, &v30);
  v10 = sub_264B40944();
  v11 = sub_264B41494();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136446466;
    v14 = v34;
    v15 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    (*(v15 + 8))(&v28, v14, v15);
    v27[6] = v28;
    v16 = sub_264B41064();
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_0(v33);
    v19 = sub_2649CC004(v16, v18, &v29);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1(&v30, v32);
    v20 = sub_264B41A64();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0(&v30);
    v23 = sub_2649CC004(v20, v22, &v29);

    *(v12 + 14) = v23;
    _os_log_impl(&dword_2649C6000, v10, v11, "Failed to activate %{public}s after %{public}s seconds, tearing down", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v13, -1, -1);
    MEMORY[0x266749940](v12, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v33);
    __swift_destroy_boxed_opaque_existential_0(&v30);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = result;
    v30 = 6;
    v31 = 0x80;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
    sub_264A380B0(&v30, v8);

    return sub_2649D04D4(v8, &unk_27FF899E0, &qword_264B53440);
  }

  return result;
}

uint64_t sub_264A44824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E20, &unk_264B49588);
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89248, &qword_264B471A0);
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = sub_264B41244();
  v7[15] = sub_264B41234();
  v11 = sub_264B411C4();
  v7[16] = v11;
  v7[17] = v10;

  return MEMORY[0x2822009F8](sub_264A44994, v11, v10);
}

uint64_t sub_264A44994()
{
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  v0[18] = __swift_project_value_buffer(v1, qword_27FF8AE70);

  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;

    _os_log_impl(&dword_2649C6000, v2, v3, "Setting up controlMessageStreams for session #%{public}ld", v5, 0xCu);
    MEMORY[0x266749940](v5, -1, -1);
  }

  else
  {
  }

  v6 = v0[6];

  return MEMORY[0x2822009F8](sub_264A44AEC, v6, 0);
}

uint64_t sub_264A44AEC()
{
  (*(v0[12] + 16))(v0[13], v0[6] + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_controlMessageStreams, v0[11]);
  v1 = v0[16];
  v2 = v0[17];

  return MEMORY[0x2822009F8](sub_264A44B74, v1, v2);
}

uint64_t sub_264A44B74()
{
  sub_264B412C4();
  v1 = sub_264B41234();
  v0[19] = v1;
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_264A44C3C;
  v3 = v0[8];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v1, v4, v3);
}

uint64_t sub_264A44C3C()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_264A44D80, v3, v2);
}

uint64_t sub_264A44D80()
{
  v36 = v0;
  v1 = v0[2];
  v0[21] = v1;
  if (!v1)
  {
LABEL_4:
    v4 = v0[12];
    v3 = v0[13];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[8];
    v8 = v0[9];

    (*(v8 + 8))(v6, v7);
    (*(v4 + 8))(v3, v5);

    v9 = v0[1];

    return v9();
  }

  v2 = v0[3];
  if (sub_264B41314())
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  swift_unknownObjectRetain();
  v11 = sub_264B40944();
  v12 = sub_264B414B4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v34 = v12;
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v14 = 134349314;
    *(v14 + 4) = v13;

    *(v14 + 12) = 2082;
    ObjectType = swift_getObjectType();
    v16 = *(v2 + 16);
    v17 = v16(ObjectType, v2);
    v19 = v2;
    v20 = sub_2649CC004(v17, v18, &v35);

    *(v14 + 14) = v20;
    v2 = v19;
    v21 = v16;
    _os_log_impl(&dword_2649C6000, v11, v34, "3. Session #%{public}ld received control message stream with identifier: %{public}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x266749940](v33, -1, -1);
    MEMORY[0x266749940](v14, -1, -1);
  }

  else
  {

    v21 = *(v2 + 16);
  }

  v22 = swift_getObjectType();
  if (v21(v22, v2) == 0xD000000000000027 && 0x8000000264B5C640 == v23)
  {
  }

  else
  {
    v25 = sub_264B41AA4();

    if ((v25 & 1) == 0)
    {
      swift_unknownObjectRelease();
      v26 = sub_264B41234();
      v0[19] = v26;
      v27 = swift_task_alloc();
      v0[20] = v27;
      *v27 = v0;
      v27[1] = sub_264A44C3C;
      v28 = v0[8];
      v29 = MEMORY[0x277D85700];

      return MEMORY[0x2822003E8](v0 + 2, v26, v29, v28);
    }
  }

  v30 = swift_task_alloc();
  v0[22] = v30;
  *v30 = v0;
  v30[1] = sub_264A4515C;
  v31 = v0[4];
  v32 = v0[5];

  return sub_264A45340(v1, v2, v31, v32);
}

uint64_t sub_264A4515C()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_264A4527C, v3, v2);
}

uint64_t sub_264A4527C()
{
  swift_unknownObjectRelease();
  v1 = sub_264B41234();
  v0[19] = v1;
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_264A44C3C;
  v3 = v0[8];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v1, v4, v3);
}

uint64_t sub_264A45340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  v6 = type metadata accessor for ContinuityDevice(0);
  v5[34] = v6;
  v5[35] = *(v6 - 8);
  v5[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270);
  v5[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v5[38] = swift_task_alloc();
  v7 = type metadata accessor for ContinuityDeviceInfo(0);
  v5[39] = v7;
  v5[40] = *(v7 - 8);
  v5[41] = swift_task_alloc();
  v8 = sub_264B41534();
  v5[42] = v8;
  v5[43] = *(v8 - 8);
  v5[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88800, qword_264B4CC90);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  sub_264B41244();
  v5[49] = sub_264B41234();
  v10 = sub_264B411C4();
  v5[50] = v10;
  v5[51] = v9;

  return MEMORY[0x2822009F8](sub_264A455EC, v10, v9);
}

uint64_t sub_264A455EC()
{
  v1 = v0[32];
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_264A45828, v1, 0);
  }

  else
  {
    v2 = v0[48];
    v3 = sub_264B40104();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    if (sub_264B41314())
    {
      sub_2649D04D4(v0[48], &unk_27FF8BFC0, &qword_264B47140);

      v4 = v0[1];

      return v4();
    }

    else
    {
      v5 = (v0[33] + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_continuityDevicePrimitives);
      v6 = v5[3];
      v7 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v6);
      sub_264B41524();
      v8 = swift_task_alloc();
      v0[52] = v8;
      *v8 = v0;
      v8[1] = sub_264A45B14;
      v9 = v0[46];
      v10 = v0[44];

      return ContinuityDevicePrimitives.currentContinuityDeviceInfo(timeout:)(v9, v10, v6, v7);
    }
  }
}

uint64_t sub_264A45828()
{
  v1 = *(v0[32] + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession);
  if (v1 && (v2 = [v1 destinationDevice]) != 0)
  {
    v3 = v2;
    v4 = [v2 identifier];

    v5 = v0[48];
    if (v4)
    {
      sub_264B41044();

      sub_264B40094();
      swift_bridgeObjectRelease_n();
      goto LABEL_7;
    }
  }

  else
  {
    v5 = v0[48];
  }

  v6 = sub_264B40104();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
LABEL_7:
  v7 = v0[50];
  v8 = v0[51];

  return MEMORY[0x2822009F8](sub_264A45964, v7, v8);
}

uint64_t sub_264A45964(uint64_t a1)
{
  if (sub_264B41314())
  {
    sub_2649D04D4(v1[48], &unk_27FF8BFC0, &qword_264B47140);

    v2 = v1[1];

    return v2();
  }

  else
  {
    v4 = (v1[33] + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_continuityDevicePrimitives);
    v5 = v4[3];
    v6 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v5);
    sub_264B41524();
    v7 = swift_task_alloc();
    v1[52] = v7;
    *v7 = v1;
    v7[1] = sub_264A45B14;
    v8 = v1[46];
    v9 = v1[44];

    return ContinuityDevicePrimitives.currentContinuityDeviceInfo(timeout:)(v8, v9, v5, v6);
  }
}

uint64_t sub_264A45B14()
{
  v1 = *v0;
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 344);
  v4 = *(*v0 + 336);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 408);
  v6 = *(v1 + 400);

  return MEMORY[0x2822009F8](sub_264A45C98, v6, v5);
}

uint64_t sub_264A45C98(uint64_t a1)
{
  v42 = v1;
  if (sub_264B41314())
  {
    v2 = v1[48];
    v3 = v1[46];

    sub_2649D04D4(v3, &qword_27FF88800, qword_264B4CC90);
    v4 = v2;
LABEL_12:
    sub_2649D04D4(v4, &unk_27FF8BFC0, &qword_264B47140);

    v25 = v1[1];

    return v25();
  }

  v5 = v1[45];
  v6 = v1[39];
  v7 = v1[40];
  sub_2649D046C(v1[46], v5, &qword_27FF88800, qword_264B4CC90);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = v1[45];

    v9 = &qword_27FF88800;
    v10 = qword_264B4CC90;
LABEL_7:
    sub_2649D04D4(v8, v9, v10);
    if (qword_27FF88408 != -1)
    {
      swift_once();
    }

    v16 = sub_264B40964();
    __swift_project_value_buffer(v16, qword_27FF8AE70);
    v17 = sub_264B40944();
    v18 = sub_264B41494();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v1[31];
      v20 = swift_slowAlloc();
      *v20 = 134349056;
      *(v20 + 4) = v19;
      _os_log_impl(&dword_2649C6000, v17, v18, "Unable to fetch current continuity device information for session #%{public}ld, tearing down", v20, 0xCu);
      MEMORY[0x266749940](v20, -1, -1);
    }

    v21 = v1[48];
    v22 = v1[46];
    v23 = v1[38];

    v40 = 18;
    v41 = 0x80;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
    sub_264A380B0(&v40, v23);
    sub_2649D04D4(v23, &unk_27FF899E0, &qword_264B53440);
    sub_2649D04D4(v22, &qword_27FF88800, qword_264B4CC90);
    v4 = v21;
    goto LABEL_12;
  }

  v12 = v1[47];
  v11 = v1[48];
  sub_264A547BC(v1[45], v1[41], type metadata accessor for ContinuityDeviceInfo);
  sub_2649D046C(v11, v12, &unk_27FF8BFC0, &qword_264B47140);
  v13 = sub_264B40104();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v8 = v1[47];
    v15 = v1[41];

    sub_264A551F0(v15, type metadata accessor for ContinuityDeviceInfo);
    v9 = &unk_27FF8BFC0;
    v10 = &qword_264B47140;
    goto LABEL_7;
  }

  v27 = v1[47];
  v1[53] = sub_264B400A4();
  v1[54] = v28;
  (*(v14 + 8))(v27, v13);
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v29 = sub_264B40964();
  v1[55] = __swift_project_value_buffer(v29, qword_27FF8AE70);
  v30 = sub_264B40944();
  v31 = sub_264B414B4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v1[31];
    v33 = swift_slowAlloc();
    *v33 = 134349056;
    *(v33 + 4) = v32;
    _os_log_impl(&dword_2649C6000, v30, v31, "3.5. Session #%{public}ld Checking iCloud health", v33, 0xCu);
    MEMORY[0x266749940](v33, -1, -1);
  }

  v34 = v1[33];

  v35 = (v34 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_iCloudHealthPrimitives);
  v36 = *(v34 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_iCloudHealthPrimitives + 24);
  v37 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v39 = (*(v37 + 8) + **(v37 + 8));
  v38 = swift_task_alloc();
  v1[56] = v38;
  *v38 = v1;
  v38[1] = sub_264A46274;

  return v39(v36, v37);
}

uint64_t sub_264A46274(char a1)
{
  v4 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v5 = *(v4 + 400);
    v6 = *(v4 + 408);
    v7 = sub_264A47420;
  }

  else
  {
    *(v4 + 73) = a1 & 1;
    v5 = *(v4 + 400);
    v6 = *(v4 + 408);
    v7 = sub_264A463A0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

void sub_264A463A0()
{
  v60 = v0;
  if (*(v0 + 73) == 1)
  {

    v1 = sub_264B40944();
    v2 = sub_264B41494();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 248);
      v4 = swift_slowAlloc();
      *v4 = 134349056;
      *(v4 + 4) = v3;
      _os_log_impl(&dword_2649C6000, v1, v2, "Mac iCloud needs repair for session #%{public}ld, tearing down", v4, 0xCu);
      MEMORY[0x266749940](v4, -1, -1);
    }

    v5 = *(v0 + 384);
    v6 = *(v0 + 368);
    v7 = *(v0 + 328);
    v8 = *(v0 + 304);

    v58 = 19;
    v59 = 0x80;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    sub_264A380B0(&v58, v8);
    sub_2649D04D4(v8, &unk_27FF899E0, &qword_264B53440);
    sub_2649D04D4(v6, &qword_27FF88800, qword_264B4CC90);
    sub_2649D04D4(v5, &unk_27FF8BFC0, &qword_264B47140);
    v10 = v7;
LABEL_26:
    sub_264A551F0(v10, type metadata accessor for ContinuityDeviceInfo);

    v55 = *(v0 + 8);

    v55();
  }

  else
  {

    v11 = sub_264B40944();
    v12 = sub_264B41484();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = *(v0 + 424);
      v13 = *(v0 + 432);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v58 = v16;
      *v15 = 136380675;
      *(v15 + 4) = sub_2649CC004(v14, v13, &v58);
      _os_log_impl(&dword_2649C6000, v11, v12, "Current continuity device is: %{private}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x266749940](v16, -1, -1);
      MEMORY[0x266749940](v15, -1, -1);
    }

    v17 = *(*(v0 + 328) + *(*(v0 + 312) + 20));
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = 0;
      v21 = *(v0 + 280);
      v20 = *(v0 + 288);
      v56 = *(v0 + 272);
      v22 = v17 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
      while (v19 < *(v17 + 16))
      {
        v24 = *(v0 + 424);
        v25 = *(v0 + 432);
        v26 = *(v0 + 288);
        sub_264A55188(v22 + *(v21 + 72) * v19, v26, type metadata accessor for ContinuityDevice);
        v27 = *v26 == v24 && *(v20 + 8) == v25;
        if (v27 || (sub_264B41AA4() & 1) != 0)
        {
          v23 = *(v0 + 288);
          if (*(v23 + *(v56 + 44)))
          {
            v47 = *(v0 + 384);
            v48 = *(v0 + 368);
            v57 = *(v0 + 328);
            v49 = *(v0 + 296);
            v50 = *(v0 + 304);
            v52 = *(v0 + 272);
            v51 = *(v0 + 280);
            v53 = *(v0 + 288);

            sub_264A547BC(v53, v49, type metadata accessor for ContinuityDevice);
            (*(v51 + 56))(v49, 0, 1, v52);
            v58 = 0;
            v59 = 0x80;
            v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
            (*(*(v54 - 8) + 56))(v50, 1, 1, v54);
            sub_264A380B0(&v58, v50);
            sub_2649D04D4(v50, &unk_27FF899E0, &qword_264B53440);
            sub_2649D04D4(v49, &unk_27FF89E30, &qword_264B44270);
            sub_2649D04D4(v48, &qword_27FF88800, qword_264B4CC90);
            sub_2649D04D4(v47, &unk_27FF8BFC0, &qword_264B47140);
            v10 = v57;
            goto LABEL_26;
          }
        }

        else
        {
          v23 = *(v0 + 288);
        }

        ++v19;
        sub_264A551F0(v23, type metadata accessor for ContinuityDevice);
        if (v18 == v19)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_18:
      v28 = *(v0 + 296);
      v29 = *(v0 + 272);
      v30 = *(v0 + 280);

      (*(v30 + 56))(v28, 1, 1, v29);
      v31 = sub_264B40944();
      v32 = sub_264B414B4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(v0 + 248);
        v34 = swift_slowAlloc();
        *v34 = 134349056;
        *(v34 + 4) = v33;
        _os_log_impl(&dword_2649C6000, v31, v32, "4. Session #%{public}ld Creating Scene interactor", v34, 0xCu);
        MEMORY[0x266749940](v34, -1, -1);
      }

      v35 = *(v0 + 264);

      v36 = *(v35 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneInteractorVendor + 24);
      v37 = *(v35 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneInteractorVendor + 32);
      __swift_project_boxed_opaque_existential_1((v35 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneInteractorVendor), v36);
      (*(v37 + 16))(v36, v37);
      sub_2649CB5C0(v0 + 80, v0 + 120);
      v38 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
      swift_beginAccess();
      sub_2649FECCC(v0 + 120, v35 + v38, &qword_27FF89DA8, &qword_264B49498);
      swift_endAccess();
      v39 = sub_264B40944();
      v40 = sub_264B414B4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = *(v0 + 248);
        v42 = swift_slowAlloc();
        *v42 = 134349056;
        *(v42 + 4) = v41;
        _os_log_impl(&dword_2649C6000, v39, v40, "5. Session #%{public}ld Standing up the PlaybackServer in the .paused state", v42, 0xCu);
        MEMORY[0x266749940](v42, -1, -1);
      }

      v43 = *(v0 + 240);

      v44 = *(v43 + 8);
      v45 = swift_task_alloc();
      *(v0 + 464) = v45;
      *v45 = v0;
      v45[1] = sub_264A46B30;
      v46 = *(v0 + 232);

      sub_264A47AB0(v46, v44, v0 + 80);
    }
  }
}

uint64_t sub_264A46B30()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);
  if (v0)
  {
    v5 = sub_264A472A8;
  }

  else
  {
    v5 = sub_264A46C6C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_264A46C6C()
{
  v59 = v0;

  if (sub_264B41314())
  {
    v1 = *(v0 + 384);
    v2 = *(v0 + 368);
    v3 = *(v0 + 328);
    v4 = *(v0 + 296);
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    sub_2649D04D4(v4, &unk_27FF89E30, &qword_264B44270);
    sub_2649D04D4(v2, &qword_27FF88800, qword_264B4CC90);
    sub_2649D04D4(v1, &unk_27FF8BFC0, &qword_264B47140);
    v5 = v3;
    goto LABEL_18;
  }

  v6 = sub_264B40944();
  v7 = sub_264B414B4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 248);
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = v8;
    _os_log_impl(&dword_2649C6000, v6, v7, "5a. Session #%{public}ld Checking device eligibility", v9, 0xCu);
    MEMORY[0x266749940](v9, -1, -1);
  }

  v10 = *(v0 + 264);

  v11 = (v10 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceEligibilityPrimitives);
  v12 = *(v10 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceEligibilityPrimitives + 24);
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  if (((*(v13 + 8))(v12, v13) & 1) == 0)
  {
    v22 = *(v0 + 384);
    v23 = *(v0 + 368);
    v24 = *(v0 + 328);
    v26 = *(v0 + 296);
    v25 = *(v0 + 304);
    v27 = 15;
    goto LABEL_11;
  }

  v14 = sub_264B40944();
  v15 = sub_264B414B4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 248);
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    *(v17 + 4) = v16;
    _os_log_impl(&dword_2649C6000, v14, v15, "5b. Session #%{public}ld Checking if device restricted by profile", v17, 0xCu);
    MEMORY[0x266749940](v17, -1, -1);
  }

  v18 = *(v0 + 264);

  v19 = (v18 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceRestrictionPrimitives);
  v20 = *(v18 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceRestrictionPrimitives + 24);
  v21 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v20);
  if ((*(v21 + 8))(v20, v21))
  {
    v22 = *(v0 + 384);
    v23 = *(v0 + 368);
    v24 = *(v0 + 328);
    v26 = *(v0 + 296);
    v25 = *(v0 + 304);
    v27 = 16;
LABEL_11:
    *&v56 = v27;
    BYTE8(v56) = 0x80;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    (*(*(v28 - 8) + 56))(v25, 1, 1, v28);
    sub_264A380B0(&v56, v25);
    sub_2649D04D4(v25, &unk_27FF899E0, &qword_264B53440);
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    sub_2649D04D4(v26, &unk_27FF89E30, &qword_264B44270);
    sub_2649D04D4(v23, &qword_27FF88800, qword_264B4CC90);
    sub_2649D04D4(v22, &unk_27FF8BFC0, &qword_264B47140);
    v5 = v24;
    goto LABEL_18;
  }

  v29 = sub_264B40944();
  v30 = sub_264B414B4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v0 + 248);
    v32 = swift_slowAlloc();
    *v32 = 134349056;
    *(v32 + 4) = v31;
    _os_log_impl(&dword_2649C6000, v29, v30, "6. Session #%{public}ld Letting client know we're alive and waking up", v32, 0xCu);
    MEMORY[0x266749940](v32, -1, -1);
  }

  v53 = *(v0 + 368);
  v54 = *(v0 + 384);
  v55 = *(v0 + 328);
  v52 = *(v0 + 296);
  v33 = *(v0 + 264);

  v34 = (v33 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_deviceInformationPrimitives);
  *(v0 + 184) = &type metadata for OnenessFeatureFlags;
  *(v0 + 192) = sub_264A033E8();
  *(v0 + 160) = 0;
  v35 = sub_264B401C4();
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  if (v35)
  {
    v36 = 7;
  }

  else
  {
    v36 = 3;
  }

  v37 = v34[3];
  v38 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v37);
  (*(v38 + 8))(&v56, v37, v38);
  v39 = v56;
  v40 = v34[3];
  v41 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v40);
  v42 = (*(v41 + 16))(v40, v41);
  v44 = v43;
  v45 = v34[3];
  v46 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v45);
  v47 = (*(v46 + 32))(v45, v46);
  *&v56 = 3;
  *(&v56 + 1) = v39;
  *&v57 = v42;
  *(&v57 + 1) = v44;
  *v58 = v47;
  *&v58[8] = v48;
  *&v58[16] = v36;
  v58[24] = 0;
  sub_264A40100(&v56);
  v49 = v57;
  *(v0 + 16) = v56;
  *(v0 + 32) = v49;
  *(v0 + 48) = *v58;
  *(v0 + 57) = *&v58[9];
  sub_264A52520(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  sub_2649D04D4(v52, &unk_27FF89E30, &qword_264B44270);
  sub_2649D04D4(v53, &qword_27FF88800, qword_264B4CC90);
  sub_2649D04D4(v54, &unk_27FF8BFC0, &qword_264B47140);
  v5 = v55;
LABEL_18:
  sub_264A551F0(v5, type metadata accessor for ContinuityDeviceInfo);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_264A472A8()
{
  v1 = v0[59];
  v2 = v0[48];
  v3 = v0[46];
  v4 = v0[41];
  v5 = v0[37];
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  sub_2649D04D4(v5, &unk_27FF89E30, &qword_264B44270);
  sub_2649D04D4(v3, &qword_27FF88800, qword_264B4CC90);
  sub_2649D04D4(v2, &unk_27FF8BFC0, &qword_264B47140);
  sub_264A551F0(v4, type metadata accessor for ContinuityDeviceInfo);
  sub_264B41754();
  MEMORY[0x266748390](0xD000000000000035, 0x8000000264B5C670);
  v0[28] = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  v7 = sub_264B41064();
  MEMORY[0x266748390](v7);

  return sub_264B41874();
}

void sub_264A47420(uint64_t a1)
{
  v54 = v1;
  v2 = sub_264B40944();
  v3 = sub_264B41494();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Unable to fetch iCloud health, trying connection anyways", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = sub_264B40944();
  v6 = sub_264B41484();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v1 + 424);
    v7 = *(v1 + 432);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v52 = v10;
    *v9 = 136380675;
    *(v9 + 4) = sub_2649CC004(v8, v7, &v52);
    _os_log_impl(&dword_2649C6000, v5, v6, "Current continuity device is: %{private}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  v11 = *(*(v1 + 328) + *(*(v1 + 312) + 20));
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_16:
    v22 = *(v1 + 296);
    v23 = *(v1 + 272);
    v24 = *(v1 + 280);

    (*(v24 + 56))(v22, 1, 1, v23);
    v25 = sub_264B40944();
    v26 = sub_264B414B4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v1 + 248);
      v28 = swift_slowAlloc();
      *v28 = 134349056;
      *(v28 + 4) = v27;
      _os_log_impl(&dword_2649C6000, v25, v26, "4. Session #%{public}ld Creating Scene interactor", v28, 0xCu);
      MEMORY[0x266749940](v28, -1, -1);
    }

    v29 = *(v1 + 264);

    v30 = *(v29 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneInteractorVendor + 24);
    v31 = *(v29 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneInteractorVendor + 32);
    __swift_project_boxed_opaque_existential_1((v29 + OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_sceneInteractorVendor), v30);
    (*(v31 + 16))(v30, v31);
    sub_2649CB5C0(v1 + 80, v1 + 120);
    v32 = OBJC_IVAR____TtC16ScreenSharingKit11AngelServer_currentSceneInteractor;
    swift_beginAccess();
    sub_2649FECCC(v1 + 120, v29 + v32, &qword_27FF89DA8, &qword_264B49498);
    swift_endAccess();
    v33 = sub_264B40944();
    v34 = sub_264B414B4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v1 + 248);
      v36 = swift_slowAlloc();
      *v36 = 134349056;
      *(v36 + 4) = v35;
      _os_log_impl(&dword_2649C6000, v33, v34, "5. Session #%{public}ld Standing up the PlaybackServer in the .paused state", v36, 0xCu);
      MEMORY[0x266749940](v36, -1, -1);
    }

    v37 = *(v1 + 240);

    v38 = *(v37 + 8);
    v39 = swift_task_alloc();
    *(v1 + 464) = v39;
    *v39 = v1;
    v39[1] = sub_264A46B30;
    v40 = *(v1 + 232);

    sub_264A47AB0(v40, v38, v1 + 80);
    return;
  }

  v13 = 0;
  v15 = *(v1 + 280);
  v14 = *(v1 + 288);
  v50 = *(v1 + 272);
  v16 = v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  while (1)
  {
    if (v13 >= *(v11 + 16))
    {
      __break(1u);
      return;
    }

    v18 = *(v1 + 424);
    v19 = *(v1 + 432);
    v20 = *(v1 + 288);
    sub_264A55188(v16 + *(v15 + 72) * v13, v20, type metadata accessor for ContinuityDevice);
    v21 = *v20 == v18 && *(v14 + 8) == v19;
    if (!v21 && (sub_264B41AA4() & 1) == 0)
    {
      v17 = *(v1 + 288);
      goto LABEL_8;
    }

    v17 = *(v1 + 288);
    if (*(v17 + *(v50 + 44)))
    {
      break;
    }

LABEL_8:
    ++v13;
    sub_264A551F0(v17, type metadata accessor for ContinuityDevice);
    if (v12 == v13)
    {
      goto LABEL_16;
    }
  }

  v41 = *(v1 + 384);
  v42 = *(v1 + 368);
  v51 = *(v1 + 328);
  v43 = *(v1 + 296);
  v44 = *(v1 + 304);
  v46 = *(v1 + 272);
  v45 = *(v1 + 280);
  v47 = *(v1 + 288);

  sub_264A547BC(v47, v43, type metadata accessor for ContinuityDevice);
  (*(v45 + 56))(v43, 0, 1, v46);
  v52 = 0;
  v53 = 0x80;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  (*(*(v48 - 8) + 56))(v44, 1, 1, v48);
  sub_264A380B0(&v52, v44);
  sub_2649D04D4(v44, &unk_27FF899E0, &qword_264B53440);
  sub_2649D04D4(v43, &unk_27FF89E30, &qword_264B44270);
  sub_2649D04D4(v42, &qword_27FF88800, qword_264B4CC90);
  sub_2649D04D4(v41, &unk_27FF8BFC0, &qword_264B47140);
  sub_264A551F0(v51, type metadata accessor for ContinuityDeviceInfo);

  v49 = *(v1 + 8);

  v49();
}