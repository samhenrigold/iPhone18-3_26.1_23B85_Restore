uint64_t sub_264ACD958()
{
  if (*(v0 + 40) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E80, &unk_264B51AB0);
    sub_264ACDA78();
    sub_264B40A34();
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_264ACD9FC(uint64_t a1)
{
  result = sub_264ACDA24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_264ACDA24()
{
  result = qword_27FF8B8E8;
  if (!qword_27FF8B8E8)
  {
    type metadata accessor for NotifyingPlaybackEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B8E8);
  }

  return result;
}

unint64_t sub_264ACDA78()
{
  result = qword_27FF89EB8;
  if (!qword_27FF89EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89E80, &unk_264B51AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89EB8);
  }

  return result;
}

uint64_t sub_264ACDADC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B968, &unk_264B51BF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - v5;

  v7 = sub_264B40544();

  if (v7)
  {

    sub_264B404C4();
  }

  v8 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragControllerEventContinuation;
  (*(v3 + 16))(v6, v0 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragControllerEventContinuation, v2);
  sub_264B412B4();
  v9 = *(v3 + 8);
  v9(v6, v2);
  if (*(v0 + 24))
  {

    sub_264B41304();
  }

  v10 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragControllerEventStream;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B978, &qword_264B51C08);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  v9((v1 + v8), v2);

  sub_2649CB67C(*(v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onDidEndTracking), *(v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onDidEndTracking + 8));
  sub_2649CB67C(*(v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onFinish), *(v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onFinish + 8));
  return v1;
}

uint64_t sub_264ACDD38()
{
  sub_264ACDADC();

  return swift_deallocClassInstance();
}

void sub_264ACDDB8(uint64_t a1)
{
  sub_264ACFD80(319, &qword_27FF8B930, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_264ACFD80(319, &qword_27FF8B938, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_264ACDF24(uint64_t result, unint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished))
  {
    return result;
  }

  v4 = result;
  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FF8AEA0);

  sub_2649DEF18(v4, a2);
  v6 = sub_264B40944();
  v7 = sub_264B414B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v8 = 136446466;
    result = sub_2649CC004(*(v2 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier), *(v2 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier + 8), v21);
    *(v8 + 4) = result;
    *(v8 + 12) = 2050;
    v10 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v10 != 2)
      {
        v11 = 0;
        goto LABEL_16;
      }

      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      v14 = __OFSUB__(v12, v13);
      v11 = v12 - v13;
      if (!v14)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!v10)
    {
      v11 = BYTE6(a2);
LABEL_16:
      *(v8 + 14) = v11;
      sub_2649DEF6C(v4, a2);
      _os_log_impl(&dword_2649C6000, v6, v7, "Drag %{public}s: Surrogate session received drag data of size %{public}ld bytes", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x266749940](v9, -1, -1);
      MEMORY[0x266749940](v8, -1, -1);
      goto LABEL_17;
    }

    LODWORD(v11) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
      __break(1u);
      return result;
    }

    v11 = v11;
    goto LABEL_16;
  }

  sub_2649DEF6C(v4, a2);
LABEL_17:

  v15 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_unprocessedData;
  swift_beginAccess();
  v16 = *(v2 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v15) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_2649D7E18(0, *(v16 + 2) + 1, 1, v16);
    *(v2 + v15) = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_2649D7E18((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[16 * v19];
  *(v20 + 4) = v4;
  *(v20 + 5) = a2;
  *(v2 + v15) = v16;
  swift_endAccess();
  sub_2649DEF18(v4, a2);
  return sub_264ACE1C4();
}

unint64_t sub_264ACE1C4()
{
  v1 = v0;
  v2 = sub_264B40104();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2, v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isProcessingData) != 1)
  {
    return result;
  }

  v8 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_unprocessedData;
  swift_beginAccess();
  v10 = *(v1 + v8);
  *(v1 + v8) = MEMORY[0x277D84F90];
  v26 = v10;
  v11 = *(v10 + 16);
  if (!v11)
  {
  }

  v30 = v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier;
  v31 = (v3 + 8);
  v12 = (v26 + 40);
  *&v9 = 136446466;
  v29 = v9;
  v27 = v2;
  v28 = v1;
  while (1)
  {
    v14 = *(v12 - 1);
    v13 = *v12;
    sub_2649DEF18(v14, *v12);
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v15 = sub_264B40964();
    __swift_project_value_buffer(v15, qword_27FF8AEA0);
    sub_2649DEF18(v14, v13);

    v16 = sub_264B40944();
    v17 = sub_264B414B4();

    if (os_log_type_enabled(v16, v17))
    {
      break;
    }

    sub_2649DEF6C(v14, v13);

LABEL_5:
    v12 += 2;
    sub_264B404B4();
    sub_264B40484();
    sub_2649DEF6C(v14, v13);
    (*v31)(v7, v2);
    if (!--v11)
    {
    }
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v32 = v19;
  *v18 = v29;
  result = sub_2649CC004(*v30, *(v30 + 8), &v32);
  *(v18 + 4) = result;
  *(v18 + 12) = 2050;
  v20 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (v20)
    {
      LODWORD(v21) = HIDWORD(v14) - v14;
      if (__OFSUB__(HIDWORD(v14), v14))
      {
        goto LABEL_22;
      }

      v21 = v21;
    }

    else
    {
      v21 = BYTE6(v13);
    }

    goto LABEL_19;
  }

  if (v20 != 2)
  {
    v21 = 0;
LABEL_19:
    *(v18 + 14) = v21;
    sub_2649DEF6C(v14, v13);
    _os_log_impl(&dword_2649C6000, v16, v17, "Drag %{public}s: Surrogate session is processing received drag data of size %{public}ld bytes", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x266749940](v19, -1, -1);
    MEMORY[0x266749940](v18, -1, -1);

    v2 = v27;
    goto LABEL_5;
  }

  v23 = *(v14 + 16);
  v22 = *(v14 + 24);
  v24 = __OFSUB__(v22, v23);
  v21 = v22 - v23;
  if (!v24)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_264ACE504()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B978, &qword_264B51C08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v21 - v10;
  v12 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragControllerEventStream;
  v13 = sub_264B41274();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v7, v1 + v12, v2);
  sub_264B41244();

  v15 = sub_264B41234();
  v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v17 = (v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  (*(v3 + 32))(v18 + v16, v7, v2);
  *(v18 + v17) = v14;

  *(v1 + 24) = sub_264A10C20(0, 0, v11, &unk_264B51C18, v18);
}

uint64_t sub_264ACE75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(0);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B988, &qword_264B51C20);
  v5[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8B990, &qword_264B51C28);
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = sub_264B41244();
  v5[16] = sub_264B41234();
  v9 = sub_264B411C4();
  v5[17] = v9;
  v5[18] = v8;

  return MEMORY[0x2822009F8](sub_264ACE900, v9, v8);
}

uint64_t sub_264ACE900()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B978, &qword_264B51C08);
  sub_264B412C4();
  swift_beginAccess();
  v1 = sub_264B41234();
  v0[19] = v1;
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_264ACE9F8;
  v3 = v0[11];
  v4 = v0[12];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v3, v1, v5, v4);
}

uint64_t sub_264ACE9F8()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_264ACEB3C, v3, v2);
}

uint64_t sub_264ACEB3C()
{
  v1 = v0[11];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

LABEL_8:

    v9 = v0[1];

    return v9();
  }

  sub_264AD0E78(v1, v0[10]);
  Strong = swift_weakLoadStrong();
  v0[21] = Strong;
  if (!Strong)
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[12];
    v8 = v0[10];

    sub_264AD0EDC(v8);
    (*(v6 + 8))(v5, v7);
    goto LABEL_8;
  }

  v0[22] = sub_264B41234();
  v4 = sub_264B411C4();
  v0[23] = v4;
  v0[24] = v3;

  return MEMORY[0x2822009F8](sub_264ACECD0, v4, v3);
}

uint64_t sub_264ACECD0()
{
  v29 = v0;
  sub_264AD0F38(*(v0 + 80), *(v0 + 72));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = *(v0 + 168);
      v3 = *(v0 + 72);

      if ((*(v2 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished) & 1) == 0)
      {
        v4 = *v3;
        if (qword_27FF88418 != -1)
        {
          swift_once();
        }

        v5 = sub_264B40964();
        __swift_project_value_buffer(v5, qword_27FF8AEA0);

        v6 = sub_264B40944();
        v7 = sub_264B414B4();

        if (os_log_type_enabled(v6, v7))
        {
          v8 = *(v0 + 168);
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v28 = v10;
          *v9 = 136446466;
          *(v9 + 4) = sub_2649CC004(*(v8 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier), *(v8 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier + 8), &v28);
          *(v9 + 12) = 1026;
          *(v9 + 14) = v4;
          _os_log_impl(&dword_2649C6000, v6, v7, "Drag %{public}s: Surrogate session did end tracking. Success: %{BOOL,public}d", v9, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v10);
          MEMORY[0x266749940](v10, -1, -1);
          MEMORY[0x266749940](v9, -1, -1);
        }

        v11 = *(v0 + 168);
        *(v11 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_didEndTracking) = 1;
        v12 = v11 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onDidEndTracking;
        v13 = *v12;
        if (*v12)
        {
          v14 = *(v12 + 8);

          v13(v15);
          sub_2649CB67C(v13, v14);
        }
      }
    }

    else
    {
      v23 = *(v0 + 72);

      v24 = *v23;
      v25 = *(v23 + 8);
      sub_264ACFA34(v24, v25);
    }

    v26 = *(v0 + 136);
    v27 = *(v0 + 144);

    return MEMORY[0x2822009F8](sub_264ACF1D0, v26, v27);
  }

  else
  {
    v16 = *(v0 + 72);
    v17 = *v16;
    *(v0 + 200) = *v16;
    v18 = v16[1];
    *(v0 + 208) = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB20, &qword_264B4CEB0);
    *(v0 + 232) = *(v19 + 48);
    v20 = *(v16 + *(v19 + 64));
    *(v0 + 216) = v20;
    v21 = swift_task_alloc();
    *(v0 + 224) = v21;
    *v21 = v0;
    v21[1] = sub_264ACEFE0;

    return sub_264ACF29C(v17, v18, v20);
  }
}

uint64_t sub_264ACEFE0()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_264ACF100, v3, v2);
}

uint64_t sub_264ACF100()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v4 = *(v0 + 72);

  sub_2649DEF6C(v3, v1);
  v5 = sub_264B40104();
  (*(*(v5 - 8) + 8))(v4 + v2, v5);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);

  return MEMORY[0x2822009F8](sub_264ACF1D0, v6, v7);
}

uint64_t sub_264ACF1D0()
{
  v1 = v0[10];

  sub_264AD0EDC(v1);
  v2 = sub_264B41234();
  v0[19] = v2;
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_264ACE9F8;
  v4 = v0[11];
  v5 = v0[12];
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v4, v2, v6, v5);
}

uint64_t sub_264ACF29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  sub_264B41244();
  v4[11] = sub_264B41234();
  v6 = sub_264B411C4();
  v4[12] = v6;
  v4[13] = v5;

  return MEMORY[0x2822009F8](sub_264ACF338, v6, v5);
}

unint64_t sub_264ACF338()
{
  v38 = v0;
  if (*(*(v0 + 80) + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished) == 1)
  {
    v1 = *(v0 + 72);

    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = *(v1 + 24);

      v2(v4);
      sub_2649CB67C(v2, v3);
      v5 = *(v1 + 16);
    }

    else
    {
      v5 = 0;
    }

    v18 = *(v1 + 24);
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    sub_2649CB67C(v5, v18);
    v19 = *(v0 + 8);

    return v19();
  }

  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = sub_264B40964();
  *(v0 + 112) = __swift_project_value_buffer(v8, qword_27FF8AEA0);

  sub_2649DEF18(v6, v7);
  v9 = sub_264B40944();
  v10 = sub_264B414B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 80);
    v12 = *(v0 + 64);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37 = v14;
    *v13 = 136446466;
    result = sub_2649CC004(*(v11 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier), *(v11 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier + 8), &v37);
    *(v13 + 4) = result;
    *(v13 + 12) = 2050;
    v16 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v16 != 2)
      {
        v17 = 0;
        goto LABEL_22;
      }

      v20 = *(*(v0 + 56) + 16);
      v21 = *(*(v0 + 56) + 24);
      v22 = __OFSUB__(v21, v20);
      v17 = v21 - v20;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v17 = *(v0 + 70);
LABEL_22:
      v25 = *(v0 + 56);
      v26 = *(v0 + 64);
      *(v13 + 14) = v17;
      sub_2649DEF6C(v25, v26);
      _os_log_impl(&dword_2649C6000, v9, v10, "Drag %{public}s: Surrogate session sending drag data of size %{public}ld bytes", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x266749940](v14, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
      goto LABEL_23;
    }

    v23 = *(v0 + 56);
    v24 = *(v0 + 60);
    v22 = __OFSUB__(v24, v23);
    LODWORD(v17) = v24 - v23;
    if (v22)
    {
      __break(1u);
      return result;
    }

    v17 = v17;
    goto LABEL_22;
  }

  sub_2649DEF6C(*(v0 + 56), *(v0 + 64));
LABEL_23:

  v27 = *(v0 + 80);
  v29 = *(v0 + 56);
  v28 = *(v0 + 64);
  v30 = *(v27 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_messageSender);
  v31 = (v27 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier);
  v32 = *v31;
  *(v0 + 120) = *v31;
  v33 = v31[1];
  *(v0 + 128) = v33;
  *(v0 + 40) = &type metadata for DragAndDropEvent;
  *(v0 + 48) = &off_28765F610;
  v34 = swift_allocObject();
  *(v0 + 16) = v34;
  *(v34 + 16) = v29;
  *(v34 + 24) = v28;
  *(v34 + 32) = v32;
  *(v34 + 40) = v33;
  *(v34 + 48) = 0;
  sub_2649DEF18(v29, v28);

  v36 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 136) = v35;
  *v35 = v0;
  v35[1] = sub_264ACF704;

  return v36(v0 + 16);
}

uint64_t sub_264ACF704()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = v2[12];
    v4 = v2[13];
    v5 = sub_264ACF820;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v3 = v2[12];
    v4 = v2[13];
    v5 = sub_264A8A624;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_264ACF820()
{
  v23 = v0;
  v1 = v0[18];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  if (v5)
  {
    v8 = v0[15];
    v7 = v0[16];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_2649CC004(v8, v7, &v22);
    *(v9 + 12) = 2114;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_2649C6000, v3, v4, "Drag %{public}s: Surrogate session failed to send drag event: %{public}@", v9, 0x16u);
    sub_2649E5608(v10);
    MEMORY[0x266749940](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[9];
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v14 + 24);

    v15(v17);
    sub_2649CB67C(v15, v16);
    v18 = *(v14 + 16);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v14 + 24);
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_2649CB67C(v18, v19);
  v20 = v0[1];

  return v20();
}

void sub_264ACFA34(char a1, void *a2)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished;
  if (*(v2 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished))
  {
    return;
  }

  v4 = v2;
  if (a1)
  {
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FF8AEA0);

    v6 = sub_264B40944();
    v7 = sub_264B414B4();

    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_15;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_2649CC004(*(v4 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier), *(v4 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier + 8), &v24);
    _os_log_impl(&dword_2649C6000, v6, v7, "Drag %{public}s: Surrogate session succeeded", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    v10 = v9;
  }

  else
  {
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v12 = sub_264B40964();
    __swift_project_value_buffer(v12, qword_27FF8AEA0);

    v13 = a2;
    v6 = sub_264B40944();
    v14 = sub_264B41494();

    if (!os_log_type_enabled(v6, v14))
    {
      goto LABEL_15;
    }

    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v8 = 136446466;
    *(v8 + 4) = sub_2649CC004(*(v4 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier), *(v4 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier + 8), &v24);
    *(v8 + 12) = 2114;
    if (a2)
    {
      v17 = a2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      v19 = v18;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    *(v8 + 14) = v18;
    *v15 = v19;
    _os_log_impl(&dword_2649C6000, v6, v14, "Drag %{public}s: Surrogate session failed: %{public}@", v8, 0x16u);
    sub_2649E5608(v15);
    MEMORY[0x266749940](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v10 = v16;
  }

  MEMORY[0x266749940](v10, -1, -1);
  MEMORY[0x266749940](v8, -1, -1);
LABEL_15:

  *(v4 + v3) = 1;
  v20 = v4 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onFinish;
  v21 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onFinish);
  if (v21)
  {
    v22 = *(v20 + 8);

    v21(v23);

    sub_2649CB67C(v21, v22);
  }
}

void sub_264ACFD80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_264ACFDE0(uint64_t a1)
{
  sub_264A8A9FC(319);
  if (v1 <= 0x3F)
  {
    sub_264ACFE68();
    if (v2 <= 0x3F)
    {
      sub_264ACFE98(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_264ACFE68()
{
  result = qword_27FF8B950;
  if (!qword_27FF8B950)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27FF8B950);
  }

  return result;
}

void sub_264ACFE98(uint64_t a1)
{
  if (!qword_27FF8B958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF8BF90, &unk_264B53450);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FF8B958);
    }
  }
}

uint64_t sub_264ACFF28(uint64_t a1, char a2)
{
  v3 = type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B960, &qword_264B51BE8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v13 - v10;
  *v6 = a2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B968, &unk_264B51BF0);
  sub_264B412A4();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_264AD008C(uint64_t a1, char a2, void *a3)
{
  v5 = type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B960, &qword_264B51BE8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v16 - v12;
  *v8 = a2;
  *(v8 + 1) = a3;
  swift_storeEnumTagMultiPayload();
  v14 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B968, &unk_264B51BF0);
  sub_264B412A4();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_264AD0208@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_shieldWindowSceneContainer) + 16);
  if (v3)
  {
    v4 = v3;
    sub_264B405A4();
    v5 = sub_264B405B4();
    v6 = *(*(v5 - 8) + 56);

    return v6(a1, 0, 1, v5);
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

id sub_264AD02EC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_shieldWindowSceneContainer) + 16);
  if (v1)
  {

    return v1;
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

uint64_t sub_264AD0378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v38 = a4;
  v39 = a5;
  v36 = a2;
  v37 = a3;
  v35 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B970, &qword_264B51C00);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B968, &unk_264B51BF0);
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v32 - v14;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B978, &qword_264B51C08);
  v16 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v17);
  v19 = &v32 - v18;
  sub_264B40564();
  swift_allocObject();
  *(v5 + 16) = sub_264B40554();
  *(v5 + 24) = 0;
  v20 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragControllerEventStream;
  v21 = OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragControllerEventContinuation;
  type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(0);
  (*(v8 + 104))(v11, *MEMORY[0x277D85778], v7);
  sub_264B41284();
  (*(v8 + 8))(v11, v7);
  (*(v16 + 32))(v5 + v20, v19, v32);
  (*(v33 + 32))(v5 + v21, v15, v34);
  *(v5 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isProcessingData) = 0;
  *(v5 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_unprocessedData) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_didEndTracking) = 0;
  v22 = (v5 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onDidEndTracking);
  *v22 = 0;
  v22[1] = 0;
  *(v5 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_isFinished) = 0;
  v23 = (v5 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_onFinish);
  *v23 = 0;
  v23[1] = 0;
  v24 = [objc_opt_self() processInfo];
  [v24 systemUptime];
  v26 = v25;

  *(v6 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_creationTimestamp) = v26;
  v27 = (v6 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_dragIdentifier);
  v28 = v36;
  *v27 = v35;
  v27[1] = v28;
  v29 = (v6 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_messageSender);
  v30 = v38;
  *v29 = v37;
  v29[1] = v30;
  *(v6 + OBJC_IVAR____TtC16ScreenSharingKit26ServerDragSurrogateSession_shieldWindowSceneContainer) = v39;
  sub_264AD0B98();

  sub_264B40534();

  sub_264ACE504();
  return v6;
}

uint64_t sub_264AD0738(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v35 = a3;
  v40 = a1;
  v41 = a2;
  v36 = type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(0);
  MEMORY[0x28223BE20](v36, v5);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B960, &qword_264B51BE8);
  v37 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v8);
  v10 = &v35 - v9;
  v11 = sub_264B3FFD4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF88418 != -1)
  {
    swift_once();
  }

  v16 = sub_264B40964();
  __swift_project_value_buffer(v16, qword_27FF8AEA0);
  v17 = sub_264B41484();
  sub_264B3FF94();
  v18 = sub_264B3FFA4();
  v20 = v19;
  (*(v12 + 8))(v15, v11);

  v21 = sub_264B40944();

  if (os_log_type_enabled(v21, v17))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43 = v23;
    *v22 = 136446722;
    v24 = sub_2649CC004(v18, v20, &v43);

    *(v22 + 4) = v24;
    *(v22 + 12) = 2050;
    *(v22 + 14) = 215;
    *(v22 + 22) = 2082;
    *(v22 + 24) = sub_2649CC004(0xD000000000000025, 0x8000000264B5DEF0, &v43);
    _os_log_impl(&dword_2649C6000, v21, v17, "%{public}s:%{public}ld %{public}s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v23, -1, -1);
    MEMORY[0x266749940](v22, -1, -1);
  }

  else
  {
  }

  type metadata accessor for GuaranteedCalledCompletion();
  v25 = swift_allocObject();
  v26 = v38;
  v27 = v39;
  *(v25 + 16) = v38;
  *(v25 + 24) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB20, &qword_264B4CEB0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 64);
  v32 = v40;
  v31 = v41;
  *v7 = v40;
  v7[1] = v31;
  v33 = sub_264B40104();
  (*(*(v33 - 8) + 16))(v7 + v29, v35, v33);
  *(v7 + v30) = v25;
  swift_storeEnumTagMultiPayload();
  sub_264A8B0E0(v26, v27);
  sub_2649DEF18(v32, v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B968, &unk_264B51BF0);
  sub_264B412A4();

  return (*(v37 + 8))(v10, v42);
}

unint64_t sub_264AD0B98()
{
  result = qword_27FF8B980;
  if (!qword_27FF8B980)
  {
    type metadata accessor for ServerDragSurrogateSession(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B980);
  }

  return result;
}

uint64_t sub_264AD0BF0()
{
  sub_2649DEF6C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_264AD0C30()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264AD0C68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B978, &qword_264B51C08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_264AD0D4C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B978, &qword_264B51C08) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264ACE75C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_264AD0E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264AD0EDC(uint64_t a1)
{
  v2 = type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264AD0F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerDragSurrogateSession.DragControllerEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GuaranteedCalledCompletion.__allocating_init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t GuaranteedCalledCompletion.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);

    v2(v4);
    sub_2649CB67C(v2, v3);
    v5 = *(v1 + 16);
  }

  else
  {
    v5 = 0;
  }

  sub_2649CB67C(v5, *(v1 + 24));
  return v1;
}

uint64_t GuaranteedCalledCompletion.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);

    v2(v4);
    sub_2649CB67C(v2, v3);
    v5 = *(v1 + 16);
  }

  else
  {
    v5 = 0;
  }

  sub_2649CB67C(v5, *(v1 + 24));

  return swift_deallocClassInstance();
}

uint64_t GuaranteedCalledCompletion.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_264AD10D0()
{
  v1 = v0;
  v3 = (v0 + 16);
  v2 = *(v0 + 16);
  if (v2)
  {
    v4 = *(v0 + 24);

    v2(v5);
    sub_2649CB67C(v2, v4);
    v6 = *(v1 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v1 + 24);
  *v3 = 0;
  v3[1] = 0;

  return sub_2649CB67C(v6, v7);
}

uint64_t sub_264AD11BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA08, &qword_264B51DD8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventContinuation;
  (*(v3 + 16))(&v12 - v5, v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventContinuation, v2);
  sub_264B412B4();
  v8 = *(v3 + 8);
  v8(v6, v2);
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventMonitoringTask))
  {

    sub_264B41304();
  }

  sub_264A0DF98(v1 + 16);

  v9 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventStream;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA10, &qword_264B51DE0);
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v8((v1 + v7), v2);

  return v1;
}

uint64_t sub_264AD13A8()
{
  sub_264AD11BC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServerDragForwardingManager(uint64_t a1)
{
  result = qword_27FF8B9E0;
  if (!qword_27FF8B9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264AD1454(uint64_t a1)
{
  sub_264AD35A8(319, &qword_27FF8B9F0, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_264AD35A8(319, &qword_27FF8B9F8, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_264AD15B0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_isValid) == 1)
  {
    v7 = result;
    swift_beginAccess();
    v8 = *(v4 + 40);
    if (v8 >> 62)
    {
      goto LABEL_23;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v9)
    {
      v10 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x266748A70](v10, v8);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_18:
            __break(1u);
          }
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_23:
            v9 = sub_264B41884();
            goto LABEL_4;
          }

          v11 = *(v8 + 8 * v10 + 32);

          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_18;
          }
        }

        v13 = *(v11 + 32) == a3 && *(v11 + 40) == a4;
        if (v13 || (sub_264B41AA4() & 1) != 0)
        {

          sub_264A88940(v7, a2);
        }

        ++v10;
      }

      while (v12 != v9);
    }
  }

  return result;
}

void sub_264AD172C()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_isValid;
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_isValid) == 1)
  {
    v2 = v0;
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FF8AEA0);

    v4 = sub_264B40944();
    v5 = sub_264B414B4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v2;
      v20[0] = v7;
      *v6 = 136446210;
      type metadata accessor for ServerDragForwardingManager(0);

      v8 = sub_264B41064();
      v10 = sub_2649CC004(v8, v9, v20);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_2649C6000, v4, v5, "%{public}s: Invalidating", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x266749940](v7, -1, -1);
      MEMORY[0x266749940](v6, -1, -1);
    }

    *(v2 + v1) = 0;
    swift_beginAccess();
    v11 = *(v2 + 40);
    if (v11 >> 62)
    {
      v12 = sub_264B41884();
      if (!v12)
      {
        return;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        return;
      }
    }

    if (v12 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v12; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x266748A70](i, v11);
        }

        else
        {
          v14 = *(v11 + 8 * i + 32);
        }

        if (*(v14 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState))
        {
          if (*(v14 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState) == 1)
          {
            *(v14 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState) = 2;

            v15 = sub_264B40944();
            v16 = sub_264B414B4();

            if (os_log_type_enabled(v15, v16))
            {
              v17 = swift_slowAlloc();
              v18 = swift_slowAlloc();
              v19 = v18;
              *v17 = 136446210;
              *(v17 + 4) = sub_2649CC004(*(v14 + 32), *(v14 + 40), &v19);
              _os_log_impl(&dword_2649C6000, v15, v16, "Drag %{public}s: Canceling forwarding dragController", v17, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v18);
              MEMORY[0x266749940](v18, -1, -1);
              MEMORY[0x266749940](v17, -1, -1);
            }

            sub_264B404C4();
          }
        }

        else
        {
          *(v14 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState) = 2;
        }
      }
    }
  }
}

uint64_t sub_264AD1A78()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA10, &qword_264B51DE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v21 - v10;
  v12 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventStream;
  v13 = sub_264B41274();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v7, v1 + v12, v2);
  sub_264B41244();

  v15 = sub_264B41234();
  v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v17 = (v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  (*(v3 + 32))(v18 + v16, v7, v2);
  *(v18 + v17) = v14;

  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventMonitoringTask) = sub_264A10C20(0, 0, v11, &unk_264B51E18, v18);
}

uint64_t sub_264AD1CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA50, &unk_264B51E20);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = sub_264B41244();
  v5[12] = sub_264B41234();
  v8 = sub_264B411C4();
  v5[13] = v8;
  v5[14] = v7;

  return MEMORY[0x2822009F8](sub_264AD1DDC, v8, v7);
}

uint64_t sub_264AD1DDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA10, &qword_264B51DE0);
  sub_264B412C4();
  swift_beginAccess();
  v1 = sub_264B41234();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_264AD1ED8;
  v3 = v0[8];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 5, v1, v4, v3);
}

uint64_t sub_264AD1ED8()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_264AD201C, v3, v2);
}

uint64_t sub_264AD201C()
{
  v1 = v0[5];
  if ((~v1 & 0xF000000000000007) == 0)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
LABEL_7:

    v2 = v0[1];

    return v2();
  }

  if (!swift_weakLoadStrong())
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    sub_264AD442C(v1);
    goto LABEL_7;
  }

  if (v1 < 0)
  {
    sub_264AD2A4C(v1 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    sub_264AD21B4(v1);
  }

  sub_264AD442C(v1);
  v4 = sub_264B41234();
  v0[15] = v4;
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_264AD1ED8;
  v6 = v0[8];
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 5, v4, v7, v6);
}

void sub_264AD21B4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA28, &unk_264B51DF0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v56 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BA30, &unk_264B4CEB8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AB28, &unk_264B51E00);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v19 = &v56 - v18;
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_isValid) == 1)
  {
    v66 = v17;
    v67 = v16;
    if (sub_264AD33F0())
    {
      if (qword_27FF88418 != -1)
      {
        swift_once();
      }

      v20 = sub_264B40964();
      __swift_project_value_buffer(v20, qword_27FF8AEA0);

      v67 = sub_264B40944();
      v21 = sub_264B41494();

      if (os_log_type_enabled(v67, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v68 = v23;
        *v22 = 136446466;
        v70 = v2;
        type metadata accessor for ServerDragForwardingManager(0);

        v24 = sub_264B41064();
        v26 = sub_2649CC004(v24, v25, &v68);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2082;
        v70 = a1;
        sub_264B40474();

        v27 = sub_264B41064();
        v29 = sub_2649CC004(v27, v28, &v68);

        *(v22 + 14) = v29;
        _os_log_impl(&dword_2649C6000, v67, v21, "%{public}s: Not forwarding drag %{public}s because a surrogate session is active", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266749940](v23, -1, -1);
        MEMORY[0x266749940](v22, -1, -1);
      }

      else
      {
        v55 = v67;
      }
    }

    else
    {
      v62 = v10;
      v63 = v9;
      v61 = v4;
      v68 = 0x4344726576726553;
      v69 = 0xE90000000000003DLL;
      v30 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragCounter;
      v70 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragCounter);
      v31 = sub_264B41A64();
      MEMORY[0x266748390](v31);

      v33 = v68;
      v32 = v69;
      ++*(v1 + v30);
      if (qword_27FF88418 != -1)
      {
        swift_once();
      }

      v64 = a1;
      v34 = sub_264B40964();
      __swift_project_value_buffer(v34, qword_27FF8AEA0);

      v35 = sub_264B40944();
      v36 = sub_264B414B4();
      v37 = v32;
      v38 = v36;
      v65 = v37;

      v39 = os_log_type_enabled(v35, v38);
      v60 = v33;
      if (v39)
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v68 = v41;
        *v40 = 136446210;
        *(v40 + 4) = sub_2649CC004(v33, v65, &v68);
        _os_log_impl(&dword_2649C6000, v35, v38, "Drag %{public}s: Adding forwarding session", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x266749940](v41, -1, -1);
        MEMORY[0x266749940](v40, -1, -1);
      }

      v42 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_messageSender);
      v57 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_messageSender + 8);
      v58 = v42;
      v59 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_shieldWindowSceneContainer);
      type metadata accessor for ServerDragForwardingSession(0);
      v43 = swift_allocObject();
      sub_264B40564();
      *(v43 + 2) = 0;
      *(v43 + 3) = 0;
      swift_allocObject();
      *(v43 + 10) = sub_264B40554();
      v44 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventStream;
      v45 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventContinuation;
      type metadata accessor for ServerDragForwardingSession.DragControllerEvent(0);
      v46 = v61;
      (*(v5 + 104))(v8, *MEMORY[0x277D85778], v61);
      sub_264B41284();
      (*(v5 + 8))(v8, v46);
      (*(v66 + 32))(&v43[v44], v19, v67);
      (*(v62 + 32))(&v43[v45], v13, v63);
      *&v43[OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_dragControllerEventMonitoringTask] = 0;
      v43[OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState] = 0;
      v43[OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_hasSentFirstMessage] = 0;
      v47 = v57;
      *(v43 + 8) = v58;
      *(v43 + 9) = v47;
      v48 = v59;
      v50 = v64;
      v49 = v65;
      *(v43 + 4) = v60;
      *(v43 + 5) = v49;
      *(v43 + 6) = v50;
      *(v43 + 7) = v48;
      sub_264AD4194(&unk_27FF8BA40, type metadata accessor for ServerDragForwardingSession, &unk_264B4CE3C);

      sub_264B40534();

      sub_264A88BD8();
      v51 = swift_allocObject();
      swift_weakInit();
      v52 = *(v43 + 2);
      v53 = *(v43 + 3);
      *(v43 + 2) = sub_264AD4214;
      *(v43 + 3) = v51;

      sub_2649CB67C(v52, v53);

      swift_beginAccess();

      MEMORY[0x266748430](v54);
      if (*((*(v2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_264B41174();
      }

      sub_264B41194();
      swift_endAccess();
      sub_264A884E8();
    }
  }
}

uint64_t sub_264AD29AC(uint64_t a1)
{
  sub_264B41244();
  sub_264B41704();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_264AD2CCC();
  }

  return result;
}

uint64_t sub_264AD2A4C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_isValid) == 1)
  {
    v2 = result;
    swift_beginAccess();
    v3 = *(v1 + 40);
    if (v3 >> 62)
    {
      goto LABEL_25;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v4)
    {
      v5 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x266748A70](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_25:
            v4 = sub_264B41884();
            goto LABEL_4;
          }

          v6 = *(v3 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_14;
          }
        }

        if (v6[6] == v2)
        {

          v9 = v6[4];
          v8 = v6[5];

          goto LABEL_17;
        }

        ++v5;
      }

      while (v7 != v4);
    }

    v8 = 0x8000000264B60060;
    v9 = 0xD000000000000012;
LABEL_17:
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v10 = sub_264B40964();
    __swift_project_value_buffer(v10, qword_27FF8AEA0);

    v11 = sub_264B40944();
    v12 = sub_264B414B4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136446210;
      v15 = sub_2649CC004(v9, v8, &v16);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_2649C6000, v11, v12, "Drag %{public}s: Underlying drag session proxy did end", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x266749940](v14, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
    }

    else
    {
    }
  }

  return result;
}

void sub_264AD2CCC()
{
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_isValid) != 1)
  {
    return;
  }

  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 40);
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  v4 = v2 >> 62;
  if (v2 >> 62)
  {
LABEL_81:
    v5 = sub_264B41884();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = &qword_27FF8A000;
  while (v5 != v6)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x266748A70](v6, v2);
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v8 = *(v2 + 8 * v6 + 32);
    }

    if (*(v8 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingSession_forwardingState) == 2)
    {
      v39 = v1;
      if (qword_27FF88418 != -1)
      {
        swift_once();
      }

      v10 = sub_264B40964();
      v11 = __swift_project_value_buffer(v10, qword_27FF8AEA0);

      v4 = sub_264B40944();
      v12 = sub_264B414B4();

      if (os_log_type_enabled(v4, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v41 = v14;
        *v13 = 136446210;
        v15 = v2;
        v17 = *(v8 + 32);
        v16 = *(v8 + 40);

        v18 = sub_2649CC004(v17, v16, &v41);

        *(v13 + 4) = v18;
        v2 = v15;
        _os_log_impl(&dword_2649C6000, v4, v12, "Drag %{public}s: Removing forwarding session", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        v19 = v14;
        v7 = &qword_27FF8A000;
        MEMORY[0x266749940](v19, -1, -1);
        MEMORY[0x266749940](v13, -1, -1);
      }

      v20 = v6 + 1;
      v1 = v39;
      if (!__OFADD__(v6, 1))
      {
        while (1)
        {
          if (v2 >> 62)
          {
            if (v20 == sub_264B41884())
            {
              goto LABEL_60;
            }
          }

          else if (v20 == *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v3 = v2 & 0xC000000000000001;
          if ((v2 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x266748A70](v20, v2);
          }

          else
          {
            if ((v20 & 0x8000000000000000) != 0)
            {
              goto LABEL_71;
            }

            if (v20 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_72;
            }

            v21 = *(v2 + 8 * v20 + 32);
          }

          if (*(v21 + v7[344]) == 2)
          {
            v40 = v2;

            v22 = sub_264B40944();
            v23 = sub_264B414B4();

            if (os_log_type_enabled(v22, v23))
            {
              v24 = swift_slowAlloc();
              v25 = swift_slowAlloc();
              v41 = v25;
              *v24 = 136446210;
              v26 = *(v21 + 32);
              v4 = *(v21 + 40);

              v3 = sub_2649CC004(v26, v4, &v41);

              *(v24 + 4) = v3;
              _os_log_impl(&dword_2649C6000, v22, v23, "Drag %{public}s: Removing forwarding session", v24, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v25);
              v27 = v25;
              v1 = v39;
              MEMORY[0x266749940](v27, -1, -1);
              MEMORY[0x266749940](v24, -1, -1);
            }

            v2 = v40;
            v7 = &qword_27FF8A000;
          }

          else
          {

            if (v6 != v20)
            {
              if (v3)
              {
                v28 = MEMORY[0x266748A70](v6, v2);
                v29 = MEMORY[0x266748A70](v20, v2);
              }

              else
              {
                if ((v6 & 0x8000000000000000) != 0)
                {
                  goto LABEL_78;
                }

                v30 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v6 >= v30)
                {
                  goto LABEL_79;
                }

                if (v20 >= v30)
                {
                  goto LABEL_80;
                }

                v28 = *(v2 + 32 + 8 * v6);
                v29 = *(v2 + 32 + 8 * v20);
              }

              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *(v1 + 40) = v2;
              if (!isUniquelyReferenced_nonNull_bridgeObject || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
              {
                v2 = sub_264AD39C0(v2);
                *(v1 + 40) = v2;
              }

              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_75;
              }

              v3 = v2 & 0xFFFFFFFFFFFFFF8;
              if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_76;
              }

              *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v29;

              *(v1 + 40) = v2;
              if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
              {
                v2 = sub_264AD39C0(v2);
                *(v1 + 40) = v2;
                v3 = v2 & 0xFFFFFFFFFFFFFF8;
                v7 = &qword_27FF8A000;
                if ((v20 & 0x8000000000000000) != 0)
                {
LABEL_58:
                  __break(1u);
LABEL_59:
                  v6 = sub_264B41884();
                  goto LABEL_60;
                }
              }

              else
              {
                v7 = &qword_27FF8A000;
                if ((v20 & 0x8000000000000000) != 0)
                {
                  goto LABEL_58;
                }
              }

              if (v20 >= *(v3 + 16))
              {
                goto LABEL_77;
              }

              *(v3 + 8 * v20 + 32) = v28;

              *(v1 + 40) = v2;
            }

            v9 = __OFADD__(v6++, 1);
            if (v9)
            {
              goto LABEL_74;
            }
          }

          v9 = __OFADD__(v20++, 1);
          if (v9)
          {
            goto LABEL_73;
          }
        }
      }

      __break(1u);
LABEL_86:
      v38 = sub_264B41884();
      goto LABEL_66;
    }

    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_70;
    }
  }

  if (v4)
  {
    goto LABEL_59;
  }

  v6 = *(v3 + 16);
LABEL_60:
  if (!(v2 >> 62))
  {
    v32 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32 >= v6)
    {
      goto LABEL_62;
    }

LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v32 = sub_264B41884();
  if (v32 < v6)
  {
    goto LABEL_83;
  }

LABEL_62:
  sub_264AD40BC(v6, v32);
  swift_endAccess();
  if (qword_27FF88418 != -1)
  {
LABEL_84:
    swift_once();
  }

  v33 = sub_264B40964();
  __swift_project_value_buffer(v33, qword_27FF8AEA0);
  swift_retain_n();
  v11 = sub_264B40944();
  LOBYTE(v6) = sub_264B414B4();
  if (os_log_type_enabled(v11, v6))
  {
    v4 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v41 = v1;
    v42[0] = v20;
    *v4 = 136446466;
    type metadata accessor for ServerDragForwardingManager(0);

    v34 = sub_264B41064();
    v36 = sub_2649CC004(v34, v35, v42);

    *(v4 + 4) = v36;
    *(v4 + 12) = 2050;
    v37 = *(v1 + 40);
    if (v37 >> 62)
    {
      goto LABEL_86;
    }

    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_66:

    *(v4 + 14) = v38;

    _os_log_impl(&dword_2649C6000, v11, v6, "%{public}s: %{public}ld forwarding sessions still exist", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x266749940](v20, -1, -1);
    MEMORY[0x266749940](v4, -1, -1);

    return;
  }
}

BOOL sub_264AD33F0()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 24);
    swift_beginAccess();
    v4 = *(*(v3 + 40) + 16);
    swift_unknownObjectRelease();
    return v4 != 0;
  }

  else
  {
    if (qword_27FF88418 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FF8AEA0);

    v7 = sub_264B40944();
    v8 = sub_264B41494();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136446210;
      v14[3] = v1;
      type metadata accessor for ServerDragForwardingManager(0);

      v11 = sub_264B41064();
      v13 = sub_2649CC004(v11, v12, v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2649C6000, v7, v8, "%{public}s: Can't check if surrogate session is active because the delegate is nil", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x266749940](v10, -1, -1);
      MEMORY[0x266749940](v9, -1, -1);
    }

    return 0;
  }
}

void sub_264AD35A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ServerDragForwardingManager.DragObserverEvent);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_264AD3608(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_264AD3664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_264AD36E8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA20, &qword_264B51DE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v9 - v6;
  v9[1] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA08, &qword_264B51DD8);
  sub_264B412A4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_264AD37F4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA20, &qword_264B51DE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v9 - v6;
  v9[1] = a2 | 0x8000000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA08, &qword_264B51DD8);
  sub_264B412A4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_264AD3908(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_264B41884();
LABEL_9:
  result = sub_264B41784();
  *v2 = result;
  return result;
}

uint64_t sub_264AD39C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_264B41884();
  }

  return sub_264B41784();
}

void *sub_264AD3A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA00, &qword_264B51DD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA08, &qword_264B51DD8);
  v10 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v11);
  v13 = &v25 - v12;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA10, &qword_264B51DE0);
  v14 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v15);
  v17 = &v25 - v16;
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  sub_264B40594();
  swift_allocObject();
  v18 = sub_264B40574();
  v19 = MEMORY[0x277D84F90];
  v3[4] = v18;
  v3[5] = v19;
  v20 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventStream;
  v21 = OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventContinuation;
  (*(v6 + 104))(v9, *MEMORY[0x277D85778], v5);
  sub_264B41284();
  (*(v6 + 8))(v9, v5);
  (*(v14 + 32))(v4 + v20, v17, v26);
  (*(v10 + 32))(v4 + v21, v13, v27);
  *(v4 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragObserverEventMonitoringTask) = 0;
  *(v4 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_dragCounter) = 1;
  *(v4 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_isValid) = 1;
  v22 = (v4 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_messageSender);
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  *(v4 + OBJC_IVAR____TtC16ScreenSharingKit27ServerDragForwardingManager_shieldWindowSceneContainer) = v30;
  sub_264AD4194(&qword_27FF8BA18, type metadata accessor for ServerDragForwardingManager, &unk_264B51D94);

  sub_264B40584();

  sub_264AD1A78();
  return v4;
}

uint64_t sub_264AD3DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_264B41884();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_264B41884();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_264AD3ED8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_264B41884();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v9 - v8;
  if (__OFSUB__(0, v8 - v9))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v14 = sub_264B41884();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    sub_264AD3908(result, 1);
    return sub_264AD3DC0(v9, v8, 0, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_264AD3FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ServerDragForwardingSession(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_264B41884();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_264B41884();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_264AD40BC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_264B41884();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_264B41884();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_264AD3908(result, 1);

  return sub_264AD3FBC(v5, v3, 0);
}

uint64_t sub_264AD4194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264AD41DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264AD421C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA10, &qword_264B51DE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_264AD4300(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BA10, &qword_264B51DE0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264AD1CD8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_264AD442C(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return sub_264A0E7A0(a1);
  }

  return a1;
}

uint64_t sub_264AD4440()
{
  sub_264B41B84();
  sub_264B41BA4();
  return sub_264B41BB4();
}

uint64_t sub_264AD44B4(uint64_t a1)
{
  sub_264B41B84();
  sub_264B41BA4();
  return sub_264B41BB4();
}

uint64_t sub_264AD44F8@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_264AD52E0(*a1);
  *a2 = result;
  return result;
}

void sub_264AD4530(unsigned __int8 *a1, unint64_t a2)
{
  v4 = sub_264B3FFD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = sub_264A24308(MEMORY[0x277D84F90]);
  }

  v11 = *(v10 + 16);

  if (v11 && (v12 = sub_264A20ACC(0x6E6F73616572, 0xE600000000000000), (v13 & 1) != 0))
  {
    sub_2649C964C(*(v10 + 56) + 32 * v12, v79);

    v14 = swift_dynamicCast();
    v15 = v14 == 0;
    if (v14)
    {
      v16 = v77;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v78;
    }
  }

  else
  {

    v16 = 0;
    v17 = 0;
  }

  v75 = sub_264AD4FB8(v16, v17);

  v76 = sub_264A24664(MEMORY[0x277D84F90]);
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v18 = sub_264B40964();
  v19 = __swift_project_value_buffer(v18, qword_27FF8AE40);
  v74 = v9;
  LOBYTE(v79[0]) = v9;
  v20 = TelemetryEvent.rawValue.getter();
  v22 = v21;
  v23 = sub_264B41484();
  sub_264B3FF94();
  v24 = sub_264B3FFA4();
  v26 = v25;
  (*(v5 + 8))(v8, v4);
  v72 = v19;
  v27 = sub_264B40944();
  if (os_log_type_enabled(v27, v23))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v79[0] = v29;
    *v28 = 136446978;
    v30 = sub_2649CC004(v24, v26, v79);

    *(v28 + 4) = v30;
    *(v28 + 12) = 2050;
    *(v28 + 14) = 66;
    *(v28 + 22) = 2082;
    *(v28 + 24) = sub_2649CC004(0xD00000000000001DLL, 0x8000000264B60180, v79);
    *(v28 + 32) = 2082;
    *(v28 + 34) = sub_2649CC004(v20, v22, v79);
    _os_log_impl(&dword_2649C6000, v27, v23, "%{public}s:%{public}ld %{public}s %{public}s", v28, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v29, -1, -1);
    MEMORY[0x266749940](v28, -1, -1);
  }

  else
  {
  }

  v31 = v74;
  v32 = v75;
  if (v74 <= 7)
  {
    if (!v74)
    {

      *(v73 + 64) = v32;
      return;
    }

    if (v74 == 1)
    {
      v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v34 = v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79[0] = v34;
      sub_264A22DF0(v33, 0x746E657665, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
      v36 = v79[0];
      v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v79[0] = v36;
      sub_264A22DF0(v37, 0x6E6F73616572, 0xE600000000000000, v38);
      v39 = v79[0];
      v40 = v73;
      if ((*(v73 + 65) & 1) == 0)
      {

        return;
      }

      goto LABEL_26;
    }

LABEL_27:

    v47 = sub_264B40944();
    v48 = sub_264B41494();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v79[0] = v50;
      *v49 = 136315138;
      LOBYTE(v77) = v31;
      v51 = TelemetryEvent.rawValue.getter();
      v53 = sub_2649CC004(v51, v52, v79);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_2649C6000, v47, v48, "PLC %s:unknown telemetry event", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      v54 = v50;
LABEL_38:
      MEMORY[0x266749940](v54, -1, -1);
      MEMORY[0x266749940](v49, -1, -1);
    }

LABEL_39:

    return;
  }

  if (v74 == 8)
  {
    v55 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v56 = v76;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v56;
    sub_264A22DF0(v55, 0x746E657665, 0xE500000000000000, v57);
    v58 = v79[0];
    v40 = v73;
    if (!v32)
    {
      v32 = *(v73 + 64);
    }

    v59 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v58;
    sub_264A22DF0(v59, 0x6E6F73616572, 0xE600000000000000, v60);
    v39 = v79[0];
    if (*(v40 + 65) != 1)
    {
      *(v40 + 65) = 1;
      goto LABEL_41;
    }

    v47 = sub_264B40944();
    v61 = sub_264B41494();
    if (!os_log_type_enabled(v47, v61))
    {
      goto LABEL_39;
    }

    v49 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v79[0] = v62;
    *v49 = 136315138;
    LOBYTE(v77) = 8;
    v63 = TelemetryEvent.rawValue.getter();
    v65 = sub_2649CC004(v63, v64, v79);

    *(v49 + 4) = v65;
    v66 = "%s:extra sessionStart event, not logged";
LABEL_37:
    _os_log_impl(&dword_2649C6000, v47, v61, v66, v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    v54 = v62;
    goto LABEL_38;
  }

  if (v74 != 10)
  {
    goto LABEL_27;
  }

  v41 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v42 = v76;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v79[0] = v42;
  sub_264A22DF0(v41, 0x746E657665, 0xE500000000000000, v43);
  v44 = v79[0];
  v45 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v79[0] = v44;
  sub_264A22DF0(v45, 0x6E6F73616572, 0xE600000000000000, v46);
  v39 = v79[0];
  v40 = v73;
  if ((*(v73 + 65) & 1) == 0)
  {

    v47 = sub_264B40944();
    v61 = sub_264B41494();
    if (!os_log_type_enabled(v47, v61))
    {
      goto LABEL_39;
    }

    v49 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v79[0] = v62;
    *v49 = 136315138;
    LOBYTE(v77) = 10;
    v67 = TelemetryEvent.rawValue.getter();
    v69 = sub_2649CC004(v67, v68, v79);

    *(v49 + 4) = v69;
    v66 = "%s:extra sessionEnd event, not logged";
    goto LABEL_37;
  }

LABEL_26:
  *(v40 + 65) = 0;
LABEL_41:
  v70 = *(v40 + 48);
  v71 = *(v40 + 56);
  __swift_project_boxed_opaque_existential_1((v40 + 24), v70);
  (*(v71 + 8))(0, 0, v39, v70, v71);
}

uint64_t sub_264AD4D7C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for StartStopReasons(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StartStopReasons(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264AD4F34()
{
  result = qword_27FF8BA70;
  if (!qword_27FF8BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BA70);
  }

  return result;
}

uint64_t sub_264AD4FB8(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FF8AE40);
    v6 = sub_264B40944();
    v7 = sub_264B41474();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2649C6000, v6, v7, "PowerlogConsumer: missing reason in event", v8, 2u);
      MEMORY[0x266749940](v8, -1, -1);
    }

    return 0;
  }

  if (a1 == 0x7453726577656976 && a2 == 0xED00006465747261 || (sub_264B41AA4() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x7075727265746E69 && a2 == 0xEB00000000646574 || (sub_264B41AA4() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0xD000000000000010 && 0x8000000264B5FBE0 == a2 || (sub_264B41AA4() & 1) != 0)
  {
    return 4;
  }

  if ((a1 != 0xD000000000000015 || 0x8000000264B58990 != a2) && (sub_264B41AA4() & 1) == 0)
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FF8AE40);

    v10 = sub_264B40944();
    v11 = sub_264B41494();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_2649CC004(a1, a2, &v14);
      _os_log_impl(&dword_2649C6000, v10, v11, "PowerlogConsumer: can't convert %s to reasonCode", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x266749940](v13, -1, -1);
      MEMORY[0x266749940](v12, -1, -1);
    }

    return 0;
  }

  return 3;
}

uint64_t sub_264AD52E0(uint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  else
  {
    return result;
  }
}

uint64_t AngelClient.__allocating_init()()
{
  v0 = swift_allocObject();
  AngelClient.init()();
  return v0;
}

void *AngelClient.init()()
{
  v1 = v0;
  v51 = *v0;
  v52 = sub_264B40104();
  v2 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v3);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_connectionIdentifier;
  sub_264B400F4();
  v7 = (v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification);
  sub_264A2DEA0((v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification));
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_isActivated) = 0;
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_currentLaunchingProxy) = 0;

  v8 = sub_264B41014();

  v9 = sub_264B41014();

  v10 = [objc_opt_self() endpointForMachName:v8 service:v9 instance:0];

  v11 = &qword_27FF8B000;
  v50 = v6;
  if (!v10)
  {
    goto LABEL_7;
  }

  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_connectionEndpoint) = v10;
  v12 = v1 + v6;
  v13 = v52;
  (*(v2 + 16))(v5, v12, v52);
  v49 = v10;
  v14 = v10;
  sub_264B400A4();
  v46[0] = *(v2 + 8);
  v46[1] = v2 + 8;
  (v46[0])(v5, v13);
  v15 = sub_264B41014();

  v16 = v7[6];
  v17 = v7[7];
  v18 = swift_allocObject();
  v18[2] = v15;
  v18[3] = v16;
  v18[4] = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_264AD71BC;
  *(v19 + 24) = v18;
  *&v56 = sub_264A556AC;
  *(&v56 + 1) = v19;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v55 = sub_264AD75DC;
  *(&v55 + 1) = &block_descriptor_14;
  v20 = _Block_copy(&aBlock);
  v21 = objc_opt_self();

  v10 = v15;

  v48 = v14;
  v11 = [v21 connectionWithEndpoint:v14 clientContextBuilder:v20];
  _Block_release(v20);

  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
    goto LABEL_18;
  }

  v22 = v7;
  v47 = v10;
  v10 = v49;
  if (v11)
  {
    v53 = &unk_28767DD38;
    v23 = swift_dynamicCastObjCProtocolConditional();
    if (v23)
    {
      v24 = v23;
      *(v1 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceConnection) = v23;
      swift_unownedRetainStrong();
      v25 = v11;
      swift_unownedRetain();

      v7 = swift_allocObject();
      v7[2] = v1;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_264AD7288;
      *(v26 + 24) = v7;
      *&v56 = sub_264AD75E0;
      *(&v56 + 1) = v26;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v55 = sub_264AD75DC;
      *(&v55 + 1) = &block_descriptor_12_0;
      v27 = _Block_copy(&aBlock);

      [v24 configureConnection_];

      _Block_release(v27);
      LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

      v2 = v46[2];
      if ((v24 & 1) == 0)
      {
        return v1;
      }

      __break(1u);
LABEL_7:
      v14 = v2;
      if (qword_27FF88408 == -1)
      {
LABEL_8:
        v28 = sub_264B40964();
        __swift_project_value_buffer(v28, qword_27FF8AE70);

        v29 = sub_264B40944();
        v30 = sub_264B41494();

        v22 = v7;
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v49 = v10;
          v33 = v32;
          *&aBlock = v32;
          *v31 = 136446466;
          v34 = *v7;
          v35 = v7[1];

          v36 = sub_2649CC004(v34, v35, &aBlock);

          *(v31 + 4) = v36;
          *(v31 + 12) = 2082;
          v37 = v22[2];
          v38 = v22[3];

          v39 = sub_2649CC004(v37, v38, &aBlock);

          *(v31 + 14) = v39;
          v11 = &qword_27FF8B000;
          _os_log_impl(&dword_2649C6000, v29, v30, "Failed to lookup endpoint with machName=%{public}s service=%{public}s", v31, 0x16u);
          swift_arrayDestroy();
          v40 = v33;
          v10 = v49;
          MEMORY[0x266749940](v40, -1, -1);
          MEMORY[0x266749940](v31, -1, -1);
        }

        sub_264AD5B0C();
        swift_allocError();
        *v41 = 0;
        swift_willThrow();
        (*(v14 + 1))(v1 + v50, v52);
        goto LABEL_13;
      }

LABEL_18:
      swift_once();
      goto LABEL_8;
    }
  }

  sub_264AD5B0C();
  swift_allocError();
  *v42 = 1;
  swift_willThrow();

  v11 = &qword_27FF8B000;
  (v46[0])(v1 + v50, v52);
LABEL_13:
  v43 = *(v22 + 1);
  aBlock = *v22;
  v55 = v43;
  v44 = *(v22 + 3);
  v56 = *(v22 + 2);
  v57 = v44;
  sub_264AD5B60(&aBlock);
  if (v10)
  {
  }

  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  return v1;
}

unint64_t sub_264AD5B0C()
{
  result = qword_27FF8BAA0;
  if (!qword_27FF8BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BAA0);
  }

  return result;
}

void sub_264AD5BB8(void *a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  v4 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 40);

  [a1 setInterface_];

  swift_unownedRetainStrong();
  v5 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 32);

  [a1 setServiceQuality_];

  swift_unownedRetainStrong();
  v12 = sub_264AD7468;
  v13 = a2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_2649F5890;
  v11 = &block_descriptor_33;
  v6 = _Block_copy(&v8);

  [a1 setInvalidationHandler_];
  _Block_release(v6);
  swift_unownedRetainStrong();
  v12 = sub_264AD7488;
  v13 = a2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_2649F5890;
  v11 = &block_descriptor_36;
  v7 = _Block_copy(&v8);

  [a1 setInterruptionHandler_];
  _Block_release(v7);
}

uint64_t AngelClient.ping()()
{
  v1[20] = v0;
  sub_264B41244();
  v1[21] = sub_264B41234();
  v3 = sub_264B411C4();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_264AD5E94, v3, v2);
}

uint64_t sub_264AD5E94(uint64_t a1, uint64_t a2)
{
  v3 = sub_264AD61F0(a1, a2);
  v2[24] = v3;
  v4 = v3;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FF8AE70);
  v6 = sub_264B40944();
  v7 = sub_264B41484();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2649C6000, v6, v7, "Sending ping to Angel", v8, 2u);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v2[2] = v2;
  v2[7] = v2 + 18;
  v2[3] = sub_264AD60C0;
  v9 = swift_continuation_init();
  v2[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB18, &qword_264B51F78);
  v2[10] = MEMORY[0x277D85DD0];
  v2[11] = 1107296256;
  v2[12] = sub_264AD6500;
  v2[13] = &block_descriptor_15;
  v2[14] = v9;
  [v4 pingWithCompletionHandler_];

  return MEMORY[0x282200938](v2 + 2);
}

uint64_t sub_264AD60C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_264AD75D8;
  }

  else
  {
    v5 = sub_264AD75E4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

id sub_264AD61F0(uint64_t a1, uint64_t a2)
{
  if (*(v3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_isActivated) != 1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_currentLaunchingProxy;
  v4 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_currentLaunchingProxy);
  if (v4)
  {
    swift_unknownObjectRetain();
    return v4;
  }

  v7 = sub_264B41014();
  v8 = sub_264B41014();
  v9 = [objc_opt_self() attributeWithDomain:v7 name:v8];

  v10 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB50, &unk_264B520F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_264B44CE0;
  *(v11 + 32) = v9;
  sub_264A192D0();
  v2 = v9;
  v12 = sub_264B41144();

  v4 = [v10 remoteTargetWithLaunchingAssertionAttributes_];

  if (v4)
  {
    sub_264B41664();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (!*(&v21 + 1))
  {
    sub_2649D3A14(v22);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB68, qword_264B52100);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_264AD5B0C();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();

    return v4;
  }

  v5 = v3;
  v4 = v19;
  if (qword_27FF88408 != -1)
  {
LABEL_17:
    swift_once();
  }

  v13 = sub_264B40964();
  __swift_project_value_buffer(v13, qword_27FF8AE70);
  v14 = sub_264B40944();
  v15 = sub_264B41484();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2649C6000, v14, v15, "Created launching proxy", v16, 2u);
    MEMORY[0x266749940](v16, -1, -1);
  }

  *(v5 + v6) = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_264AD6500(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = sub_264B41044();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x282200950](v4);
  }
}

uint64_t AngelClient.stopSession()()
{
  v1[18] = v0;
  sub_264B41244();
  v1[19] = sub_264B41234();
  v3 = sub_264B411C4();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x2822009F8](sub_264AD666C, v3, v2);
}

uint64_t sub_264AD666C(uint64_t a1, uint64_t a2)
{
  v3 = sub_264AD61F0(a1, a2);
  v2[22] = v3;
  v4 = v3;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FF8AE70);
  v6 = sub_264B40944();
  v7 = sub_264B41484();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2649C6000, v6, v7, "Stopping session on Angel", v8, 2u);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v2[2] = v2;
  v2[3] = sub_264AD6890;
  v9 = swift_continuation_init();
  v2[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
  v2[10] = MEMORY[0x277D85DD0];
  v2[11] = 1107296256;
  v2[12] = sub_2649F4D64;
  v2[13] = &block_descriptor_19_0;
  v2[14] = v9;
  [v4 stopCommandLineSessionWithCompletionHandler_];

  return MEMORY[0x282200938](v2 + 2);
}

uint64_t sub_264AD6890()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);
  if (v2)
  {
    v5 = sub_264AD6A30;
  }

  else
  {
    v5 = sub_264AD69C0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_264AD69C0()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264AD6A30()
{

  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AngelClient.currentSessionState()()
{
  v1[20] = v0;
  sub_264B41244();
  v1[21] = sub_264B41234();
  v3 = sub_264B411C4();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_264AD6B44, v3, v2);
}

uint64_t sub_264AD6B44(uint64_t a1, uint64_t a2)
{
  v3 = sub_264AD61F0(a1, a2);
  v2[24] = v3;
  v4 = v3;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FF8AE70);
  v6 = sub_264B40944();
  v7 = sub_264B41484();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2649C6000, v6, v7, "Getting current session state from Angel", v8, 2u);
    MEMORY[0x266749940](v8, -1, -1);
  }

  v2[2] = v2;
  v2[7] = v2 + 18;
  v2[3] = sub_264AD6D70;
  v9 = swift_continuation_init();
  v2[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB18, &qword_264B51F78);
  v2[10] = MEMORY[0x277D85DD0];
  v2[11] = 1107296256;
  v2[12] = sub_264AD6500;
  v2[13] = &block_descriptor_23;
  v2[14] = v9;
  [v4 currentCommandLineSessionStateWithCompletionHandler_];

  return MEMORY[0x282200938](v2 + 2);
}

uint64_t sub_264AD6D70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_264AD6F14;
  }

  else
  {
    v5 = sub_264AD6EA0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_264AD6EA0()
{

  swift_unknownObjectRelease();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_264AD6F14()
{

  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AngelClient.deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_connectionIdentifier;
  v2 = sub_264B40104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 32);
  v4 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 40);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t AngelClient.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_connectionIdentifier;
  v2 = sub_264B40104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 32);
  v4 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_serviceSpecification + 40);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_264AD717C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_264AD71BC(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_264B41014();
  [a1 encodeObject:v3 forKey:v4];
}

double block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t block_destroy_helper_14(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

uint64_t sub_264AD7250()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for AngelClient(uint64_t a1)
{
  result = qword_27FF8BB30;
  if (!qword_27FF8BB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264AD72FC(uint64_t a1)
{
  result = sub_264B40104();
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

unint64_t sub_264AD7414()
{
  result = qword_27FF8BB40;
  if (!qword_27FF8BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BB40);
  }

  return result;
}

uint64_t sub_264AD74A8(const char *a1)
{
  v3 = v1;
  if (qword_27FF88408 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE70);
  v5 = sub_264B40944();
  v6 = sub_264B41484();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2649C6000, v5, v6, a1, v7, 2u);
    MEMORY[0x266749940](v7, -1, -1);
  }

  *(v3 + OBJC_IVAR____TtC16ScreenSharingKit11AngelClient_currentLaunchingProxy) = 0;

  return swift_unknownObjectRelease();
}

uint64_t dispatch thunk of AnnotationServicesClientProtocol.startAnnotationService()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of AnnotationServicesClientProtocol.stopAnnotationService()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649CD850;

  return v7(a1, a2);
}

uint64_t dispatch thunk of AnnotationServicesClientProtocol.sendTapEvent(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v15 = (*(a3 + 24) + **(a3 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2649E0EE4;
  v12.n128_f64[0] = a4;
  v13.n128_f64[0] = a5;

  return v15(a1, a2, a3, v12, v13);
}

uint64_t dispatch thunk of AnnotationServicesClientProtocol.sendDragEvent(_:point:telemetryEventID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v19 = (*(a5 + 32) + **(a5 + 32));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2649E0EE4;
  v16.n128_f64[0] = a6;
  v17.n128_f64[0] = a7;

  return v19(a1, a2, a3, a4, a5, v16, v17);
}

uint64_t LocalScreenActivityType.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_264AD7B3C()
{
  result = qword_27FF8BB70;
  if (!qword_27FF8BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BB70);
  }

  return result;
}

uint64_t DemoModeRemoteAuthenticationPrimitives.__allocating_init(authenticationResponseDelay:)(double a1)
{
  v2 = swift_allocObject();
  DemoModeRemoteAuthenticationPrimitives.init(authenticationResponseDelay:)(a1);
  return v2;
}

uint64_t DemoModeRemoteAuthenticationPrimitives.init(authenticationResponseDelay:)(double a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FFA71B8);
  v4 = sub_264B40944();
  v5 = sub_264B41484();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2649C6000, v4, v5, "Demo mode: all remote authentication operations will succeed for demo purposes", v6, 2u);
    MEMORY[0x266749940](v6, -1, -1);
  }

  return v2;
}

uint64_t sub_264AD7D44()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_264AD7E18;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v1, 0, 0, 0xD000000000000018, 0x8000000264B5A8A0, sub_264AD899C, v2, v3);
}

uint64_t sub_264AD7E18()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_264AD8C50;
  }

  else
  {
    v2 = sub_264AD8C44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264AD7F4C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_264AD8020;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v1, 0, 0, 0xD000000000000021, 0x8000000264B5A8C0, sub_264AD89DC, v2, v3);
}

uint64_t sub_264AD8020()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_264AD814C;
  }

  else
  {
    v2 = sub_264AD8134;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264AD8184()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_264AD7E18;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v1, 0, 0, 0xD000000000000015, 0x8000000264B5A930, sub_264AD8A1C, v2, v3);
}

uint64_t sub_264AD8258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v36 = a1;
  v37 = a3;
  v35 = a2;
  v41 = sub_264B40EB4();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v5);
  v40 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264B40EE4();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v33 - v14;
  v16 = sub_264B40F04();
  v34 = v16;
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v33 - v23;
  sub_2649CB2F0();
  v33 = sub_264B41554();
  sub_264B40EF4();
  sub_264B40F24();
  v25 = *(v17 + 8);
  v25(v21, v16);
  (*(v12 + 16))(v15, v36, v11);
  v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v27 = swift_allocObject();
  (*(v12 + 32))(v27 + v26, v15, v11);
  aBlock[4] = v38;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = v39;
  v28 = _Block_copy(aBlock);
  sub_264B40EC4();
  v45 = MEMORY[0x277D84F90];
  sub_264A1EF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_264AD8AC8();
  v30 = v40;
  v29 = v41;
  sub_264B41684();
  v31 = v33;
  MEMORY[0x266748800](v24, v10, v30, v28);
  _Block_release(v28);

  (*(v44 + 8))(v30, v29);
  (*(v42 + 8))(v10, v43);
  v25(v24, v34);
}

uint64_t sub_264AD86D8()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_264AD7E18;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v1, 0, 0, 0xD000000000000018, 0x8000000264B5A8A0, sub_264AD8C5C, v2, v3);
}

uint64_t sub_264AD87D0()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_264AD7E18;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v1, 0, 0, 0xD000000000000021, 0x8000000264B5A8C0, sub_264AD8C58, v2, v3);
}

uint64_t sub_264AD88C8()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_264AD7E18;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v1, 0, 0, 0xD000000000000015, 0x8000000264B5A930, sub_264AD8C54, v2, v3);
}

double block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_264AD8AC8()
{
  result = qword_27FF892D0;
  if (!qword_27FF892D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF88A78, &qword_264B473A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF892D0);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264AD8CD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_264AD8D28(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 104) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 4 * -a2;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0;
      return result;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264AD8DA8(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 56) & 1 | (a2 << 62);
    *(result + 8) &= 3uLL;
    *(result + 56) = v2;
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0x8000000000000000;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0;
  }

  return result;
}

uint64_t sub_264AD8E08(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BBC8, &qword_264B524C8);
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v37 = &v26 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BBD0, &qword_264B524D0);
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v6);
  v8 = &v26 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BBD8, &qword_264B524D8);
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v9);
  v11 = &v26 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BBE0, &qword_264B524E0);
  v12 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v13);
  v15 = &v26 - v14;
  v16 = *v1;
  v32 = v1[1];
  v40 = v16;
  v17 = *(v1 + 5);
  v29 = *(v1 + 4);
  v28 = v17;
  v18 = *(v1 + 7);
  v27 = *(v1 + 6);
  v19 = v1[4];
  v30 = v1[5];
  v31 = v19;
  v26 = *(v1 + 12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264AD9C60();
  sub_264B41BD4();
  if (!(v18 >> 62))
  {
    LOBYTE(v42) = 1;
    sub_264AD9D5C();
    v21 = v41;
    sub_264B419B4();
    v42 = v40;
    v43 = v32;
    v44 = v29;
    v45 = v28;
    v46 = v27;
    v47 = v18 & 0x3FFFFFFFFFFFFFFFLL;
    v48 = v31;
    v49 = v30;
    v50 = v26;
    sub_264AD9EAC();
    v23 = v36;
    sub_264B41A24();
    (*(v35 + 8))(v8, v23);
    return (*(v12 + 8))(v15, v21);
  }

  if (v18 >> 62 == 1)
  {
    LOBYTE(v42) = 2;
    sub_264AD9CB4();
    v20 = v37;
    v21 = v41;
    sub_264B419B4();
    LOBYTE(v42) = v40;
    sub_264AD9E58();
    v22 = v39;
    sub_264B41A24();
    (*(v38 + 8))(v20, v22);
    return (*(v12 + 8))(v15, v21);
  }

  LOBYTE(v42) = 0;
  sub_264AD9E04();
  v25 = v41;
  sub_264B419B4();
  (*(v33 + 8))(v11, v34);
  return (*(v12 + 8))(v15, v25);
}

uint64_t sub_264AD92DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB78, &qword_264B524A0);
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v3);
  v53 = &v46 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB80, &qword_264B524A8);
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v5);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB88, &qword_264B524B0);
  v52 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB90, &unk_264B524B8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v46 - v15;
  v17 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_264AD9C60();
  v18 = v55;
  sub_264B41BC4();
  if (!v18)
  {
    v19 = v52;
    v47 = 0;
    v55 = v13;
    v20 = v54;
    v21 = sub_264B419A4();
    v22 = (2 * *(v21 + 16)) | 1;
    v65 = v21;
    v66 = v21 + 32;
    v67 = 0;
    v68 = v22;
    v23 = sub_2649E0EDC();
    if (v23 == 3 || v67 != v68 >> 1)
    {
      v37 = sub_264B417A4();
      swift_allocError();
      v38 = v16;
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0);
      *v40 = &type metadata for ClientStatusEvent;
      sub_264B41904();
      sub_264B41794();
      (*(*(v37 - 8) + 104))(v40, *MEMORY[0x277D84160], v37);
      swift_willThrow();
      (*(v55 + 8))(v38, v12);
    }

    else
    {
      if (v23)
      {
        if (v23 != 1)
        {
          LOBYTE(v56) = 2;
          sub_264AD9CB4();
          v43 = v47;
          sub_264B418F4();
          v44 = v55;
          if (!v43)
          {
            v36 = v20;
            sub_264AD9D08();
            v45 = v48;
            sub_264B41984();
            (*(v51 + 8))(0, v45);
            (*(v44 + 8))(v16, v12);
            swift_unknownObjectRelease();
            v34 = 0;
            v27 = v56;
            v35 = 0x4000000000000000;
            goto LABEL_18;
          }

          (*(v55 + 8))(v16, v12);
          goto LABEL_9;
        }

        LOBYTE(v56) = 1;
        sub_264AD9D5C();
        v24 = v47;
        sub_264B418F4();
        v25 = v55;
        if (!v24)
        {
          sub_264AD9DB0();
          v26 = v49;
          sub_264B41984();
          (*(v50 + 8))(v7, v26);
          (*(v25 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v27 = v56;
          v28 = v58;
          v29 = v59;
          v30 = v60;
          v31 = v62;
          v32 = v63;
          v33 = v64;
          v34 = v57 & 3;
          v35 = v61 & 1;
          v36 = v20;
LABEL_18:
          *v36 = v27;
          *(v36 + 8) = v34;
          *(v36 + 16) = v28;
          *(v36 + 32) = v29;
          *(v36 + 48) = v30;
          *(v36 + 56) = v35;
          *(v36 + 64) = v31;
          *(v36 + 80) = v32;
          *(v36 + 96) = v33;
          return __swift_destroy_boxed_opaque_existential_0(v69);
        }
      }

      else
      {
        LOBYTE(v56) = 0;
        sub_264AD9E04();
        v42 = v47;
        sub_264B418F4();
        if (!v42)
        {
          (*(v19 + 8))(v11, v8);
          (*(v55 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v27 = 0;
          v34 = 0;
          v30 = 0;
          v33 = 0;
          v28 = 0uLL;
          v29 = 0uLL;
          v35 = 0x8000000000000000;
          v31 = 0uLL;
          v32 = 0uLL;
          v36 = v20;
          goto LABEL_18;
        }

        v25 = v55;
      }

      (*(v25 + 8))(v16, v12);
    }

LABEL_9:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v69);
}

uint64_t sub_264AD99BC(uint64_t a1)
{
  v2 = sub_264AD9D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AD99F8(uint64_t a1)
{
  v2 = sub_264AD9D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_264AD9A34()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_264AD9A9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_264ADA62C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_264AD9AC4(uint64_t a1)
{
  v2 = sub_264AD9C60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AD9B00(uint64_t a1)
{
  v2 = sub_264AD9C60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264AD9B3C(uint64_t a1)
{
  v2 = sub_264AD9E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AD9B78(uint64_t a1)
{
  v2 = sub_264AD9E04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264AD9BB4(uint64_t a1)
{
  v2 = sub_264AD9CB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264AD9BF0(uint64_t a1)
{
  v2 = sub_264AD9CB4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_264AD9C60()
{
  result = qword_27FF8BB98;
  if (!qword_27FF8BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BB98);
  }

  return result;
}

unint64_t sub_264AD9CB4()
{
  result = qword_27FF8BBA0;
  if (!qword_27FF8BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BBA0);
  }

  return result;
}

unint64_t sub_264AD9D08()
{
  result = qword_27FF8BBA8;
  if (!qword_27FF8BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BBA8);
  }

  return result;
}

unint64_t sub_264AD9D5C()
{
  result = qword_27FF8BBB0;
  if (!qword_27FF8BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BBB0);
  }

  return result;
}

unint64_t sub_264AD9DB0()
{
  result = qword_27FF8BBB8;
  if (!qword_27FF8BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BBB8);
  }

  return result;
}

unint64_t sub_264AD9E04()
{
  result = qword_27FF8BBC0;
  if (!qword_27FF8BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BBC0);
  }

  return result;
}

unint64_t sub_264AD9E58()
{
  result = qword_27FF8BBE8;
  if (!qword_27FF8BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BBE8);
  }

  return result;
}

unint64_t sub_264AD9EAC()
{
  result = qword_27FF8BBF0;
  if (!qword_27FF8BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BBF0);
  }

  return result;
}

BOOL sub_264AD9F00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 80);
  v40 = *(a1 + 64);
  v41 = v3;
  v4 = *(a1 + 16);
  v36 = *a1;
  v37 = v4;
  v5 = *(a1 + 48);
  v7 = *a1;
  v6 = *(a1 + 16);
  v38 = *(a1 + 32);
  v39 = v5;
  v8 = *(a2 + 16);
  v43 = *a2;
  *v44 = v8;
  v9 = *(a2 + 48);
  v10 = *(a2 + 80);
  *v45 = *(a2 + 64);
  *&v45[16] = v10;
  v11 = *(a2 + 48);
  v12 = *a2;
  v13 = *(a2 + 16);
  *&v44[16] = *(a2 + 32);
  *&v44[32] = v11;
  v46[0] = v7;
  v46[1] = v6;
  v14 = *(a1 + 80);
  v46[4] = v40;
  v46[5] = v14;
  v46[2] = v38;
  v46[3] = v2;
  v50 = *&v44[16];
  v49 = v13;
  v42 = *(a1 + 96);
  *&v45[32] = *(a2 + 96);
  v15 = *(a1 + 96);
  v48 = v12;
  v16 = *(a2 + 80);
  v17 = *(a2 + 96);
  v47 = v15;
  v54 = v17;
  v53 = v16;
  v52 = *v45;
  v51 = v9;
  if (!(*(&v39 + 1) >> 62))
  {
    if (!(*(&v11 + 1) >> 62))
    {
      v28 = v36;
      v29 = v37;
      v30 = v38;
      v31 = v39;
      v32 = *(&v39 + 1) & 0x3FFFFFFFFFFFFFFFLL;
      v33 = v40;
      v34 = v41;
      v35 = v42;
      v26[0] = v43;
      v26[1] = *v44;
      v26[2] = *&v44[16];
      v26[3] = __PAIR128__(*(&v11 + 1), *&v44[32]);
      v26[4] = *v45;
      v26[5] = *&v45[16];
      v27 = *&v45[32];
      sub_264A54F24(&v43, v25);
      sub_264A54F24(&v36, v25);
      sub_264A54F24(&v43, v25);
      sub_264A54F24(&v36, v25);
      v18 = sub_264A183B8(&v28, v26);
      sub_264ADA18C(v46);
      sub_264ADA1F4(&v43);
      sub_264ADA1F4(&v36);
      return v18;
    }

    v20 = *(a1 + 80);
    v33 = *(a1 + 64);
    v34 = v20;
    v21 = *(a1 + 96);
    v22 = *(a1 + 16);
    v28 = *a1;
    v29 = v22;
    v23 = *(a1 + 48);
    v30 = *(a1 + 32);
    v31 = v23;
    v35 = v21;
    v32 = *(&v23 + 1) & 0x3FFFFFFFFFFFFFFFLL;
    sub_264A189F8(&v28, v26);
LABEL_12:
    sub_264A54F24(&v43, &v28);
    sub_264ADA18C(v46);
    return 0;
  }

  if (*(&v39 + 1) >> 62 != 1)
  {
    if (*(&v11 + 1) >> 62 == 2 && *(&v11 + 1) == 0x8000000000000000)
    {
      v19 = vorrq_s8(vorrq_s8(*&v45[8], *&v45[24]), vorrq_s8(*&v44[8], *&v44[24]));
      if (!(*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | *v45 | *v44 | *(&v43 + 1) | v43))
      {
        sub_264ADA18C(v46);
        return 1;
      }
    }

    goto LABEL_12;
  }

  if (*(&v11 + 1) >> 62 != 1)
  {
    goto LABEL_12;
  }

  sub_264ADA18C(v46);
  return v43 == v36;
}

uint64_t sub_264ADA18C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BBF8, &qword_264B524E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264ADA268()
{
  result = qword_27FF8BC00;
  if (!qword_27FF8BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC00);
  }

  return result;
}

unint64_t sub_264ADA2C0()
{
  result = qword_27FF8BC08;
  if (!qword_27FF8BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC08);
  }

  return result;
}

unint64_t sub_264ADA318()
{
  result = qword_27FF8BC10;
  if (!qword_27FF8BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC10);
  }

  return result;
}

unint64_t sub_264ADA370()
{
  result = qword_27FF8BC18;
  if (!qword_27FF8BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC18);
  }

  return result;
}

unint64_t sub_264ADA3C8()
{
  result = qword_27FF8BC20;
  if (!qword_27FF8BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC20);
  }

  return result;
}

unint64_t sub_264ADA420()
{
  result = qword_27FF8BC28;
  if (!qword_27FF8BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC28);
  }

  return result;
}

unint64_t sub_264ADA478()
{
  result = qword_27FF8BC30;
  if (!qword_27FF8BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC30);
  }

  return result;
}

unint64_t sub_264ADA4D0()
{
  result = qword_27FF8BC38;
  if (!qword_27FF8BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC38);
  }

  return result;
}

unint64_t sub_264ADA528()
{
  result = qword_27FF8BC40;
  if (!qword_27FF8BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC40);
  }

  return result;
}

unint64_t sub_264ADA580()
{
  result = qword_27FF8BC48;
  if (!qword_27FF8BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC48);
  }

  return result;
}

unint64_t sub_264ADA5D8()
{
  result = qword_27FF8BC50;
  if (!qword_27FF8BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC50);
  }

  return result;
}

uint64_t sub_264ADA62C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000264B60330 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000264B60350 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_264ADA760()
{
  sub_264B41B84();
  sub_264B41084();
  return sub_264B41BB4();
}

uint64_t sub_264ADA7E4(uint64_t a1)
{
  sub_264B41B84();
  sub_264B41084();
  return sub_264B41BB4();
}

uint64_t sub_264ADA840@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_264B418D4();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_264ADA980()
{
  result = qword_27FF8BC58;
  if (!qword_27FF8BC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8BC60, qword_264B52998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC58);
  }

  return result;
}

unint64_t sub_264ADA9E8()
{
  result = qword_27FF8BC68;
  if (!qword_27FF8BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC68);
  }

  return result;
}

unint64_t sub_264ADAA3C()
{
  result = qword_27FF8BC70;
  if (!qword_27FF8BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BC70);
  }

  return result;
}

uint64_t type metadata accessor for HIDMessage(uint64_t a1)
{
  result = qword_27FF8BC78;
  if (!qword_27FF8BC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264ADAADC(uint64_t a1)
{
  result = type metadata accessor for HIDUpdateInputDevicesMessage(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HIDReportMessage(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_264ADAB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HIDMessage(0);
  v21 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v20 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v20 - v14;
  type metadata accessor for ControlMessage(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_264ADBED4(a1, v12, type metadata accessor for HIDMessage);
    sub_264ADBED4(v12, v8, type metadata accessor for HIDMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = type metadata accessor for HIDReportMessage;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v17 = type metadata accessor for HIDUpdateInputDevicesMessage;
    }

    sub_264ADBED4(v8, v15, v17);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    sub_264ADBED4(v15, a2, type metadata accessor for HIDMessage);
    return (*(v21 + 56))(a2, 0, 1, v4);
  }

  sub_264ADC4F8(a1, type metadata accessor for ControlMessage);
  v18 = *(v21 + 56);

  return v18(a2, 1, 1, v4);
}

uint64_t sub_264ADADA8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BCD8, &qword_264B52B40);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v40 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BCE0, &qword_264B52B48);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v41 = &v35 - v7;
  v38 = type metadata accessor for HIDReportMessage(0);
  MEMORY[0x28223BE20](v38, v8);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BCE8, &qword_264B52B50);
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v35 - v12;
  v35 = type metadata accessor for HIDUpdateInputDevicesMessage(0);
  MEMORY[0x28223BE20](v35, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HIDMessage(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BCF0, &unk_264B52B58);
  v21 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v22);
  v24 = &v35 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264ADBF3C();
  sub_264B41BD4();
  sub_264ADBE70(v46, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = v39;
      sub_264ADBED4(v20, v39, type metadata accessor for HIDReportMessage);
      v49 = 1;
      sub_264ADBFE4();
      v27 = v41;
      v28 = v47;
      sub_264B419B4();
      sub_264ADC08C(&qword_27FF8BCF8, type metadata accessor for HIDReportMessage, &unk_264B5308C);
      v29 = v45;
      sub_264B41A24();
      (*(v44 + 8))(v27, v29);
      sub_264ADC4F8(v26, type metadata accessor for HIDReportMessage);
      return (*(v21 + 8))(v24, v28);
    }

    else
    {
      v50 = 2;
      sub_264ADBF90();
      v33 = v40;
      v34 = v47;
      sub_264B419B4();
      (*(v42 + 8))(v33, v43);
      return (*(v21 + 8))(v24, v34);
    }
  }

  else
  {
    sub_264ADBED4(v20, v16, type metadata accessor for HIDUpdateInputDevicesMessage);
    v48 = 0;
    sub_264ADC038();
    v31 = v47;
    sub_264B419B4();
    sub_264ADC08C(&qword_27FF8BD00, type metadata accessor for HIDUpdateInputDevicesMessage, &unk_264B47728);
    v32 = v37;
    sub_264B41A24();
    (*(v36 + 8))(v13, v32);
    sub_264ADC4F8(v16, type metadata accessor for HIDUpdateInputDevicesMessage);
    return (*(v21 + 8))(v24, v31);
  }
}

uint64_t sub_264ADB3B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BC88, &qword_264B52B18);
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v66 = &v54 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BC90, &qword_264B52B20);
  v63 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v6);
  v65 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BC98, &qword_264B52B28);
  v9 = *(v8 - 8);
  v58 = v8;
  v59 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v54 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BCA0, &unk_264B52B30);
  v68 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v13);
  v15 = &v54 - v14;
  v16 = type metadata accessor for HIDMessage(0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v54 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v54 - v26;
  v28 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_264ADBF3C();
  v29 = v69;
  sub_264B41BC4();
  if (!v29)
  {
    v55 = v24;
    v56 = v20;
    v30 = v65;
    v31 = v66;
    v69 = 0;
    v57 = v27;
    v32 = v16;
    v33 = v67;
    v34 = v64;
    v35 = sub_264B419A4();
    v36 = (2 * *(v35 + 16)) | 1;
    v71 = v35;
    v72 = v35 + 32;
    v73 = 0;
    v74 = v36;
    v37 = sub_2649E0EDC();
    v38 = v15;
    if (v37 == 3 || v73 != v74 >> 1)
    {
      v44 = sub_264B417A4();
      swift_allocError();
      v46 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0);
      *v46 = v32;
      sub_264B41904();
      sub_264B41794();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
      swift_willThrow();
      (*(v68 + 8))(v38, v34);
    }

    else
    {
      if (v37)
      {
        v59 = v32;
        if (v37 == 1)
        {
          v75 = 1;
          sub_264ADBFE4();
          v39 = v69;
          sub_264B418F4();
          v40 = v68;
          if (!v39)
          {
            v41 = v33;
            type metadata accessor for HIDReportMessage(0);
            sub_264ADC08C(&qword_27FF8BCC0, type metadata accessor for HIDReportMessage, &unk_264B530B4);
            v42 = v56;
            v43 = v60;
            sub_264B41984();
            (*(v63 + 8))(v30, v43);
            (*(v40 + 8))(v38, v34);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v53 = v57;
            sub_264ADBED4(v42, v57, type metadata accessor for HIDMessage);
LABEL_17:
            sub_264ADBED4(v53, v41, type metadata accessor for HIDMessage);
            return __swift_destroy_boxed_opaque_existential_0(v70);
          }
        }

        else
        {
          v75 = 2;
          sub_264ADBF90();
          v49 = v69;
          sub_264B418F4();
          v40 = v68;
          if (!v49)
          {
            v41 = v33;
            (*(v61 + 8))(v31, v62);
            (*(v40 + 8))(v38, v34);
            swift_unknownObjectRelease();
            v53 = v57;
            swift_storeEnumTagMultiPayload();
            goto LABEL_17;
          }
        }
      }

      else
      {
        v75 = 0;
        sub_264ADC038();
        v48 = v69;
        sub_264B418F4();
        if (!v48)
        {
          type metadata accessor for HIDUpdateInputDevicesMessage(0);
          v50 = v12;
          sub_264ADC08C(&qword_27FF8BCD0, type metadata accessor for HIDUpdateInputDevicesMessage, &unk_264B47750);
          v51 = v55;
          v52 = v58;
          sub_264B41984();
          (*(v59 + 8))(v50, v52);
          (*(v68 + 8))(v15, v34);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v53 = v57;
          sub_264ADBED4(v51, v57, type metadata accessor for HIDMessage);
          v41 = v33;
          goto LABEL_17;
        }

        v40 = v68;
      }

      (*(v40 + 8))(v15, v34);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v70);
}

unint64_t sub_264ADBB84()
{
  v1 = 0x74726F706572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_264ADBBE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_264ADC960(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_264ADBC0C(uint64_t a1)
{
  v2 = sub_264ADBF3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264ADBC48(uint64_t a1)
{
  v2 = sub_264ADBF3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264ADBC84(uint64_t a1)
{
  v2 = sub_264ADBFE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264ADBCC0(uint64_t a1)
{
  v2 = sub_264ADBFE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264ADBCFC(uint64_t a1)
{
  v2 = sub_264ADBF90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264ADBD38(uint64_t a1)
{
  v2 = sub_264ADBF90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264ADBD74(uint64_t a1)
{
  v2 = sub_264ADC038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264ADBDB0(uint64_t a1)
{
  v2 = sub_264ADC038();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264ADBE20@<X0>(uint64_t a1@<X8>)
{
  sub_264ADBE70(v1, a1);
  type metadata accessor for ControlMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_264ADBE70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HIDMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264ADBED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_264ADBF3C()
{
  result = qword_27FF8BCA8;
  if (!qword_27FF8BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BCA8);
  }

  return result;
}

unint64_t sub_264ADBF90()
{
  result = qword_27FF8BCB0;
  if (!qword_27FF8BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BCB0);
  }

  return result;
}

unint64_t sub_264ADBFE4()
{
  result = qword_27FF8BCB8;
  if (!qword_27FF8BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BCB8);
  }

  return result;
}

unint64_t sub_264ADC038()
{
  result = qword_27FF8BCC8;
  if (!qword_27FF8BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BCC8);
  }

  return result;
}

uint64_t sub_264ADC08C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_264ADC0D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HIDReportMessage(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HIDUpdateInputDevicesMessage(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HIDMessage(0);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89530, &qword_264B47C10);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v24 = &v32 - v23;
  v25 = *(v22 + 56);
  sub_264ADBE70(a1, &v32 - v23);
  sub_264ADBE70(a2, &v24[v25]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_264ADBE70(v24, v19);
    if (swift_getEnumCaseMultiPayload())
    {
      v28 = type metadata accessor for HIDUpdateInputDevicesMessage;
      v29 = v19;
LABEL_10:
      sub_264ADC4F8(v29, v28);
      goto LABEL_11;
    }

    sub_264ADBED4(&v24[v25], v11, type metadata accessor for HIDUpdateInputDevicesMessage);
    if ((sub_264B400C4() & 1) == 0 || (sub_264A16F8C(*&v19[*(v8 + 20)], *&v11[*(v8 + 20)]), (v31 & 1) == 0))
    {
      sub_264ADC4F8(v11, type metadata accessor for HIDUpdateInputDevicesMessage);
      sub_264ADC4F8(v19, type metadata accessor for HIDUpdateInputDevicesMessage);
      sub_264ADC4F8(v24, type metadata accessor for HIDMessage);
      return 0;
    }

    sub_264ADC4F8(v11, type metadata accessor for HIDUpdateInputDevicesMessage);
    sub_264ADC4F8(v19, type metadata accessor for HIDUpdateInputDevicesMessage);
LABEL_8:
    sub_264ADC4F8(v24, type metadata accessor for HIDMessage);
    return 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_11:
      sub_264ADC490(v24);
      return 0;
    }

    goto LABEL_8;
  }

  sub_264ADBE70(v24, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28 = type metadata accessor for HIDReportMessage;
    v29 = v16;
    goto LABEL_10;
  }

  sub_264ADBED4(&v24[v25], v7, type metadata accessor for HIDReportMessage);
  v27 = sub_264ADDE28(v16, v7);
  sub_264ADC4F8(v7, type metadata accessor for HIDReportMessage);
  sub_264ADC4F8(v16, type metadata accessor for HIDReportMessage);
  sub_264ADC4F8(v24, type metadata accessor for HIDMessage);
  return v27;
}

uint64_t sub_264ADC490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89530, &qword_264B47C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264ADC4F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_264ADC59C()
{
  result = qword_27FF8BD08;
  if (!qword_27FF8BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD08);
  }

  return result;
}

unint64_t sub_264ADC5F4()
{
  result = qword_27FF8BD10;
  if (!qword_27FF8BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD10);
  }

  return result;
}

unint64_t sub_264ADC64C()
{
  result = qword_27FF8BD18;
  if (!qword_27FF8BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD18);
  }

  return result;
}

unint64_t sub_264ADC6A4()
{
  result = qword_27FF8BD20;
  if (!qword_27FF8BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD20);
  }

  return result;
}

unint64_t sub_264ADC6FC()
{
  result = qword_27FF8BD28;
  if (!qword_27FF8BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD28);
  }

  return result;
}

unint64_t sub_264ADC754()
{
  result = qword_27FF8BD30;
  if (!qword_27FF8BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD30);
  }

  return result;
}

unint64_t sub_264ADC7AC()
{
  result = qword_27FF8BD38;
  if (!qword_27FF8BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD38);
  }

  return result;
}

unint64_t sub_264ADC804()
{
  result = qword_27FF8BD40;
  if (!qword_27FF8BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD40);
  }

  return result;
}

unint64_t sub_264ADC85C()
{
  result = qword_27FF8BD48;
  if (!qword_27FF8BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD48);
  }

  return result;
}

unint64_t sub_264ADC8B4()
{
  result = qword_27FF8BD50;
  if (!qword_27FF8BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD50);
  }

  return result;
}

unint64_t sub_264ADC90C()
{
  result = qword_27FF8BD58;
  if (!qword_27FF8BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD58);
  }

  return result;
}

uint64_t sub_264ADC960(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000264B60370 == a2;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74726F706572 && a2 == 0xE600000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000264B60390 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t FoundationBackedUserDefaultsPrimitives.__allocating_init(defaults:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id sub_264ADCAB4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_264B41014();
  v5 = [v3 integerForKey_];

  return v5;
}

uint64_t sub_264ADCAFC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_264B41014();
  v5 = [v3 stringForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_264B41044();

  return v6;
}

uint64_t sub_264ADCB80@<X0>(char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((a3 & 1) != 0 && (sub_264B41074(), v7 = os_variant_allows_internal_security_policies(), , (v7 & 1) == 0))
  {
    v13 = *(*(a4 - 8) + 56);

    return v13(a5, 1, 1, a4);
  }

  else
  {
    v8 = [objc_opt_self() standardUserDefaults];
    v9 = sub_264B41014();
    v10 = [v8 objectForKey_];

    if (v10)
    {
      sub_264B41664();
      swift_unknownObjectRelease();
      sub_264A23FD8(&v14, v15);
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BB60, qword_264B44A80);
    v11 = swift_dynamicCast();
    return (*(*(a4 - 8) + 56))(a5, v11 ^ 1u, 1, a4);
  }
}

uint64_t FoundationBackedUserDefaultsPrimitives.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_264ADCDCC(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  v4 = sub_264B41014();
  v5 = [v3 integerForKey_];

  return v5;
}

uint64_t sub_264ADCE18(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  v4 = sub_264B41014();
  v5 = [v3 stringForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_264B41044();

  return v6;
}

id sub_264ADCE9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_264B41074();
    v3 = os_variant_allows_internal_security_policies();

    if (!v3)
    {
      return 0;
    }
  }

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_264B41014();
  v6 = [v4 BOOLForKey_];

  return v6;
}

void sub_264ADCF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() standardUserDefaults];
  sub_264A7BE8C(a1, v12);
  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x28223BE20](v6, v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_264B41A94();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_264B41014();
  [v4 setObject:v10 forKey:v11];

  swift_unknownObjectRelease();
}

unint64_t static TimeoutPrimitives.defaultForBuildConfiguration()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D83B88];
  a1[3] = MEMORY[0x277D83B88];
  result = sub_264A556EC();
  *a1 = 5;
  a1[8] = v2;
  a1[9] = result;
  a1[4] = result;
  a1[5] = 10;
  a1[13] = v2;
  a1[14] = result;
  a1[10] = 60;
  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_264ADD298(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264ADD2E0(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264ADD360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8) >> 60;
    if (((4 * v12) & 0xC) != 0)
    {
      return 16 - ((4 * v12) & 0xC | (v12 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_264ADD454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v13 = (a1 + *(a4 + 24));
    *v13 = 0;
    v13[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t type metadata accessor for HIDReportMessage(uint64_t a1)
{
  result = qword_27FF8BD60;
  if (!qword_27FF8BD60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264ADD578(uint64_t a1)
{
  sub_264ADD604();
  if (v1 <= 0x3F)
  {
    sub_264AAEA40(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264ADD604()
{
  if (!qword_27FF8BD70)
  {
    v0 = sub_264B41614();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF8BD70);
    }
  }
}

uint64_t sub_264ADD654(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BD90, &qword_264B530E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264ADDCBC();
  sub_264B41BD4();
  LOBYTE(v15) = 0;
  sub_264B419D4();
  if (!v2)
  {
    v10 = type metadata accessor for HIDReportMessage(0);
    LOBYTE(v15) = 1;
    sub_264B40264();
    sub_264ADDDE4(&qword_27FF8BD98, MEMORY[0x277D77AB0]);
    sub_264B419C4();
    v11 = (v3 + *(v10 + 24));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 2;
    sub_2649DEF18(v15, v12);
    sub_264A2E90C();
    sub_264B41A24();
    sub_2649DEF6C(v15, v16);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_264ADD854@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BD78, &qword_264B530E0);
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for HIDReportMessage(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264ADDCBC();
  sub_264B41BC4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v7;
  v17 = v24;
  LOBYTE(v26) = 0;
  v18 = v15;
  *v15 = sub_264B41934();
  v15[8] = v19 & 1;
  sub_264B40264();
  LOBYTE(v26) = 1;
  sub_264ADDDE4(&qword_27FF8BD88, MEMORY[0x277D77AB8]);
  sub_264B41924();
  sub_264ADDD10(v16, &v15[*(v12 + 20)]);
  v27 = 2;
  sub_264A2E960();
  v20 = v25;
  sub_264B41984();
  (*(v17 + 8))(v11, v20);
  *(v18 + *(v12 + 24)) = v26;
  sub_264ADDD80(v18, v23);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_264ADE124(v18, type metadata accessor for HIDReportMessage);
}

uint64_t sub_264ADDB8C()
{
  v1 = 0x7265646E6573;
  if (*v0 != 1)
  {
    v1 = 0x614474726F706572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449746E657665;
  }
}

uint64_t sub_264ADDBE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_264ADE300(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_264ADDC10(uint64_t a1)
{
  v2 = sub_264ADDCBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264ADDC4C(uint64_t a1)
{
  v2 = sub_264ADDCBC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_264ADDCBC()
{
  result = qword_27FF8BD80;
  if (!qword_27FF8BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BD80);
  }

  return result;
}

uint64_t sub_264ADDD10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264ADDD80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HIDReportMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264ADDDE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_264B40264();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_264ADDE28(uint64_t a1, uint64_t a2)
{
  v4 = sub_264B40264();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89520, &unk_264B47C00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89528, &qword_264B530F0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v26 - v15;
  v17 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = type metadata accessor for HIDReportMessage(0);
  v19 = *(v18 + 20);
  v20 = *(v13 + 48);
  sub_264A18824(a1 + v19, v16);
  sub_264A18824(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_2649D04D4(v16, &qword_27FF89520, &unk_264B47C00);
      return sub_264A2E750(*(a1 + *(v18 + 24)), *(a1 + *(v18 + 24) + 8), *(a2 + *(v18 + 24)), *(a2 + *(v18 + 24) + 8));
    }

    goto LABEL_12;
  }

  sub_264A18824(v16, v12);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_264ADE124(v12, MEMORY[0x277D77AA8]);
LABEL_12:
    sub_2649D04D4(v16, &qword_27FF89528, &qword_264B530F0);
    return 0;
  }

  sub_264ADE184(&v16[v20], v8);
  v24 = sub_264B40254();
  v25 = MEMORY[0x277D77AA8];
  sub_264ADE124(v8, MEMORY[0x277D77AA8]);
  sub_264ADE124(v12, v25);
  sub_2649D04D4(v16, &qword_27FF89520, &unk_264B47C00);
  if (v24)
  {
    return sub_264A2E750(*(a1 + *(v18 + 24)), *(a1 + *(v18 + 24) + 8), *(a2 + *(v18 + 24)), *(a2 + *(v18 + 24) + 8));
  }

  return 0;
}

uint64_t sub_264ADE124(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264ADE184(uint64_t a1, uint64_t a2)
{
  v4 = sub_264B40264();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_264ADE1FC()
{
  result = qword_27FF8BDA0;
  if (!qword_27FF8BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BDA0);
  }

  return result;
}

unint64_t sub_264ADE254()
{
  result = qword_27FF8BDA8;
  if (!qword_27FF8BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BDA8);
  }

  return result;
}

unint64_t sub_264ADE2AC()
{
  result = qword_27FF8BDB0;
  if (!qword_27FF8BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8BDB0);
  }

  return result;
}

uint64_t sub_264ADE300(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614474726F706572 && a2 == 0xEA00000000006174)
  {

    return 2;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_264ADE41C(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v4 = sub_264B3FFD4();
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264ADE588, 0, 0);
}

uint64_t sub_264ADE588()
{
  v88 = v0;
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_interruptionError;
  if (*&v1[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_interruptionError])
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
      v1 = v0[17];
    }

    v3 = v0[16];
    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71D0);
    v5 = v1;
    v6 = v3;
    v7 = sub_264B40944();
    v8 = sub_264B41494();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_7;
    }

    v9 = v0[16];
    v10 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v87 = v12;
    *v11 = 136446466;
    v0[14] = v10;
    type metadata accessor for MediaTransportAudioStream(0);
    v13 = v10;
    v14 = sub_264B41064();
    v16 = sub_2649CC004(v14, v15, &v87);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    v0[15] = v9;
    v17 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v18 = sub_264B41064();
    v20 = sub_2649CC004(v18, v19, &v87);

    *(v11 + 14) = v20;
    v21 = "%{public}s has already interrupted, ignoring: %{public}s";
LABEL_6:
    _os_log_impl(&dword_2649C6000, v7, v8, v21, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
LABEL_7:

    goto LABEL_8;
  }

  v24 = v1[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_currentState];
  if (v24 == 4)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
      v1 = v0[17];
    }

    v39 = v0[16];
    v40 = sub_264B40964();
    __swift_project_value_buffer(v40, qword_27FFA71D0);
    v41 = v1;
    v42 = v39;
    v7 = sub_264B40944();
    v8 = sub_264B41494();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_7;
    }

    v43 = v0[16];
    v44 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v87 = v12;
    *v11 = 136446466;
    v0[10] = v44;
    type metadata accessor for MediaTransportAudioStream(0);
    v45 = v44;
    v46 = sub_264B41064();
    v48 = sub_2649CC004(v46, v47, &v87);

    *(v11 + 4) = v48;
    *(v11 + 12) = 2082;
    v0[11] = v43;
    v49 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v50 = sub_264B41064();
    v52 = sub_2649CC004(v50, v51, &v87);

    *(v11 + 14) = v52;
    v21 = "%{public}s is already tearing down, ignoring interruption due to: %{public}s)";
    goto LABEL_6;
  }

  if (v24 == 5)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
      v1 = v0[17];
    }

    v25 = v0[16];
    v26 = sub_264B40964();
    __swift_project_value_buffer(v26, qword_27FFA71D0);
    v27 = v1;
    v28 = v25;
    v7 = sub_264B40944();
    v8 = sub_264B41494();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_7;
    }

    v29 = v0[16];
    v30 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v87 = v12;
    *v11 = 136446466;
    v0[12] = v30;
    type metadata accessor for MediaTransportAudioStream(0);
    v31 = v30;
    v32 = sub_264B41064();
    v34 = sub_2649CC004(v32, v33, &v87);

    *(v11 + 4) = v34;
    *(v11 + 12) = 2082;
    v0[13] = v29;
    v35 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v36 = sub_264B41064();
    v38 = sub_2649CC004(v36, v37, &v87);

    *(v11 + 14) = v38;
    v21 = "%{public}s is already invalidated, ignoring interruption due to: %{public}s)";
    goto LABEL_6;
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v54 = v0[24];
  v53 = v0[25];
  v86 = v0[23];
  v55 = v0[16];
  v56 = sub_264B40964();
  __swift_project_value_buffer(v56, qword_27FFA71D0);
  v57 = sub_264B41494();
  v0[8] = v55;
  v58 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  v85 = sub_264B41064();
  v60 = v59;
  sub_264B3FF94();
  v61 = sub_264B3FFA4();
  v63 = v62;
  (*(v54 + 8))(v53, v86);
  v64 = sub_264B40944();
  v65 = v57;
  if (os_log_type_enabled(v64, v57))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v87 = v67;
    *v66 = 136446978;
    v68 = sub_2649CC004(v61, v63, &v87);

    *(v66 + 4) = v68;
    *(v66 + 12) = 2050;
    *(v66 + 14) = 60;
    *(v66 + 22) = 2082;
    *(v66 + 24) = sub_2649CC004(0xD000000000000010, 0x8000000264B5A2B0, &v87);
    *(v66 + 32) = 2082;
    *(v66 + 34) = sub_2649CC004(v85, v60, &v87);
    _os_log_impl(&dword_2649C6000, v64, v65, "%{public}s:%{public}ld %{public}s %{public}s", v66, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v67, -1, -1);
    MEMORY[0x266749940](v66, -1, -1);
  }

  else
  {
  }

  v69 = v0[22];
  v70 = v0[18];
  v71 = v0[19];
  v72 = v0[16];
  v73 = v0[17];
  v74 = *&v1[v2];
  *&v1[v2] = v72;
  v75 = v72;

  v76 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportAudioStream_stateContinuation;
  swift_beginAccess();
  sub_2649D046C(v73 + v76, v69, &qword_27FF89850, &qword_264B485E0);
  v77 = (*(v71 + 48))(v69, 1, v70);
  v78 = v0[22];
  if (v77)
  {
    sub_2649D04D4(v0[22], &qword_27FF89850, &qword_264B485E0);
  }

  else
  {
    v80 = v0[19];
    v79 = v0[20];
    v81 = v0[18];
    v82 = v0[16];
    (*(v80 + 16))(v79, v0[22], v81);
    sub_2649D04D4(v78, &qword_27FF89850, &qword_264B485E0);
    v0[9] = v72;
    v83 = v82;
    sub_264B41384();
    (*(v80 + 8))(v79, v81);
  }

  v84 = v0[21];
  (*(v0[19] + 56))(v84, 1, 1, v0[18]);
  swift_beginAccess();
  sub_2649FECCC(v84, v73 + v76, &qword_27FF89850, &qword_264B485E0);
  swift_endAccess();
LABEL_8:

  v22 = v0[1];

  return v22();
}

uint64_t sub_264ADEE50(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v4 = sub_264B3FFD4();
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264ADEFBC, 0, 0);
}

uint64_t sub_264ADEFBC()
{
  v88 = v0;
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_interruptionError;
  if (*&v1[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_interruptionError])
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
      v1 = v0[17];
    }

    v3 = v0[16];
    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71D0);
    v5 = v1;
    v6 = v3;
    v7 = sub_264B40944();
    v8 = sub_264B41494();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_7;
    }

    v9 = v0[16];
    v10 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v87 = v12;
    *v11 = 136446466;
    v0[14] = v10;
    type metadata accessor for MediaTransportVideoStream(0);
    v13 = v10;
    v14 = sub_264B41064();
    v16 = sub_2649CC004(v14, v15, &v87);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    v0[15] = v9;
    v17 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v18 = sub_264B41064();
    v20 = sub_2649CC004(v18, v19, &v87);

    *(v11 + 14) = v20;
    v21 = "%{public}s has already interrupted, ignoring: %{public}s";
LABEL_6:
    _os_log_impl(&dword_2649C6000, v7, v8, v21, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
LABEL_7:

    goto LABEL_8;
  }

  v24 = v1[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState];
  if (v24 == 4)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
      v1 = v0[17];
    }

    v39 = v0[16];
    v40 = sub_264B40964();
    __swift_project_value_buffer(v40, qword_27FFA71D0);
    v41 = v1;
    v42 = v39;
    v7 = sub_264B40944();
    v8 = sub_264B41494();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_7;
    }

    v43 = v0[16];
    v44 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v87 = v12;
    *v11 = 136446466;
    v0[10] = v44;
    type metadata accessor for MediaTransportVideoStream(0);
    v45 = v44;
    v46 = sub_264B41064();
    v48 = sub_2649CC004(v46, v47, &v87);

    *(v11 + 4) = v48;
    *(v11 + 12) = 2082;
    v0[11] = v43;
    v49 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v50 = sub_264B41064();
    v52 = sub_2649CC004(v50, v51, &v87);

    *(v11 + 14) = v52;
    v21 = "%{public}s is already tearing down, ignoring interruption due to: %{public}s)";
    goto LABEL_6;
  }

  if (v24 == 5)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
      v1 = v0[17];
    }

    v25 = v0[16];
    v26 = sub_264B40964();
    __swift_project_value_buffer(v26, qword_27FFA71D0);
    v27 = v1;
    v28 = v25;
    v7 = sub_264B40944();
    v8 = sub_264B41494();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_7;
    }

    v29 = v0[16];
    v30 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v87 = v12;
    *v11 = 136446466;
    v0[12] = v30;
    type metadata accessor for MediaTransportVideoStream(0);
    v31 = v30;
    v32 = sub_264B41064();
    v34 = sub_2649CC004(v32, v33, &v87);

    *(v11 + 4) = v34;
    *(v11 + 12) = 2082;
    v0[13] = v29;
    v35 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v36 = sub_264B41064();
    v38 = sub_2649CC004(v36, v37, &v87);

    *(v11 + 14) = v38;
    v21 = "%{public}s is already invalidated, ignoring interruption due to: %{public}s)";
    goto LABEL_6;
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v54 = v0[24];
  v53 = v0[25];
  v86 = v0[23];
  v55 = v0[16];
  v56 = sub_264B40964();
  __swift_project_value_buffer(v56, qword_27FFA71D0);
  v57 = sub_264B41494();
  v0[8] = v55;
  v58 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  v85 = sub_264B41064();
  v60 = v59;
  sub_264B3FF94();
  v61 = sub_264B3FFA4();
  v63 = v62;
  (*(v54 + 8))(v53, v86);
  v64 = sub_264B40944();
  v65 = v57;
  if (os_log_type_enabled(v64, v57))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v87 = v67;
    *v66 = 136446978;
    v68 = sub_2649CC004(v61, v63, &v87);

    *(v66 + 4) = v68;
    *(v66 + 12) = 2050;
    *(v66 + 14) = 60;
    *(v66 + 22) = 2082;
    *(v66 + 24) = sub_2649CC004(0xD000000000000010, 0x8000000264B5A2B0, &v87);
    *(v66 + 32) = 2082;
    *(v66 + 34) = sub_2649CC004(v85, v60, &v87);
    _os_log_impl(&dword_2649C6000, v64, v65, "%{public}s:%{public}ld %{public}s %{public}s", v66, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v67, -1, -1);
    MEMORY[0x266749940](v66, -1, -1);
  }

  else
  {
  }

  v69 = v0[22];
  v70 = v0[18];
  v71 = v0[19];
  v72 = v0[16];
  v73 = v0[17];
  v74 = *&v1[v2];
  *&v1[v2] = v72;
  v75 = v72;

  v76 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
  swift_beginAccess();
  sub_2649D046C(v73 + v76, v69, &qword_27FF89850, &qword_264B485E0);
  v77 = (*(v71 + 48))(v69, 1, v70);
  v78 = v0[22];
  if (v77)
  {
    sub_2649D04D4(v0[22], &qword_27FF89850, &qword_264B485E0);
  }

  else
  {
    v80 = v0[19];
    v79 = v0[20];
    v81 = v0[18];
    v82 = v0[16];
    (*(v80 + 16))(v79, v0[22], v81);
    sub_2649D04D4(v78, &qword_27FF89850, &qword_264B485E0);
    v0[9] = v72;
    v83 = v82;
    sub_264B41384();
    (*(v80 + 8))(v79, v81);
  }

  v84 = v0[21];
  (*(v0[19] + 56))(v84, 1, 1, v0[18]);
  swift_beginAccess();
  sub_2649FECCC(v84, v73 + v76, &qword_27FF89850, &qword_264B485E0);
  swift_endAccess();
LABEL_8:

  v22 = v0[1];

  return v22();
}

uint64_t sub_264ADF878(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_264AE9C14(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_264AE9D50(v3, v4);
    }

    else
    {
      v6 = sub_264AE9CCC(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

void sub_264ADF934(unsigned __int8 *a1)
{
  v2 = *a1;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FFA71D0);
  v4 = v1;
  v5 = sub_264B40944();
  v6 = sub_264B41474();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446466;
    v9 = sub_264B41064();
    v11 = sub_2649CC004(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = sub_264B41064();
    v14 = sub_2649CC004(v12, v13, &v15);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_2649C6000, v5, v6, "MediaTransportVideoStream state changed from %{public}s to %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  if (v2 == 5)
  {
    sub_264B41874();
    __break(1u);
  }
}

id sub_264ADFB4C()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream____lazy_storage___screenCapture;
  v2 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream____lazy_storage___screenCapture);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream____lazy_storage___screenCapture);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CE5740]) init];
    [v4 setDisplayMode_];
    v5 = [objc_allocWithZone(MEMORY[0x277CE5738]) initWithDelegate:v0 withConfig:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_264ADFC04()
{
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState) == 5)
  {
    v2.receiver = v0;
    v2.super_class = type metadata accessor for MediaTransportVideoStream(0);
    return objc_msgSendSuper2(&v2, sel_dealloc);
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for MediaTransportVideoStream(uint64_t a1)
{
  result = qword_27FF8BE30;
  if (!qword_27FF8BE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_264ADFEF8(uint64_t a1, void *a2)
{
  v4 = v2;
  v91 = a1;
  v96 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA0, &qword_264B53480);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v94 = &v80 - v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFB8, &unk_264B53498);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v9);
  v87 = &v80 - v10;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v11);
  v90 = &v80 - v12;
  v13 = sub_264B40104();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v85 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v18 = MEMORY[0x28223BE20](v84, v17);
  v86 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v80 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46A70;
  *(inited + 32) = sub_264B41044();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v24;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x8000000264B5B600;
  *(inited + 80) = sub_264B41044();
  *(inited + 88) = v25;
  v26 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_sessionID;
  *(inited + 120) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  (*(v14 + 16))(boxed_opaque_existential_1, &v4[v26], v13);
  v28 = sub_264A24308(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
  swift_arrayDestroy();

  v29 = sub_264AB4744(v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v95[0] = a2;
  sub_264A2D2CC(v29, sub_264AE9B3C, 0, isUniquelyReferenced_nonNull_native, v95);
  if (!v3)
  {

    v31 = v95[0];
    v32 = *&v4[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_rapportStream];
    v33 = [v32 streamType];
    v34 = v4;
    if (v33 != 1)
    {
      if (v33 == 3)
      {
        v82 = v31;
        v83 = 0;

        if (qword_27FF883E8 != -1)
        {
          swift_once();
        }

        v35 = sub_264B40964();
        __swift_project_value_buffer(v35, qword_27FFA71D0);
        v36 = v4;
        v37 = sub_264B40944();
        v38 = sub_264B41474();

        if (os_log_type_enabled(v37, v38))
        {
          v81 = v4;
          v39 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v95[0] = v80;
          *v39 = 136315138;
          v40 = [v32 nwClientID];
          if (v40)
          {
            v41 = v40;
            sub_264B400D4();

            v42 = 0;
          }

          else
          {
            v42 = 1;
          }

          (*(v14 + 56))(v22, v42, 1, v13);
          v58 = sub_264B41064();
          v60 = sub_2649CC004(v58, v59, v95);

          *(v39 + 4) = v60;
          _os_log_impl(&dword_2649C6000, v37, v38, "Creating video stream over nw path using clientID: %s", v39, 0xCu);
          v61 = v80;
          __swift_destroy_boxed_opaque_existential_0(v80);
          MEMORY[0x266749940](v61, -1, -1);
          MEMORY[0x266749940](v39, -1, -1);

          v34 = v81;
        }

        else
        {
        }

        v62 = [v32 nwClientID];
        v63 = v86;
        if (v62)
        {
          v64 = v85;
          v65 = v62;
          sub_264B400D4();

          (*(v14 + 32))(v63, v64, v13);
          v66 = 0;
        }

        else
        {
          v66 = 1;
        }

        (*(v14 + 56))(v63, v66, 1, v13);
        v67 = objc_allocWithZone(MEMORY[0x277CE5758]);
        v68 = sub_264B40F54();

        v95[0] = 0;
        v53 = [v67 initWithNWConnectionClientID:v63 options:v68 error:v95];

        v22 = v95[0];
        if (!v53)
        {
          v78 = v95[0];
          sub_264B3FF84();

          swift_willThrow();
          sub_2649D04D4(v63, &unk_27FF8BFC0, &qword_264B47140);
          return v22;
        }

        v69 = v95[0];
        sub_2649D04D4(v63, &unk_27FF8BFC0, &qword_264B47140);
        goto LABEL_29;
      }

      sub_264A02DF0();
      swift_allocError();
      *v55 = 0;
      goto LABEL_20;
    }

    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v43 = sub_264B40964();
    __swift_project_value_buffer(v43, qword_27FFA71D0);
    v44 = sub_264B40944();
    v45 = sub_264B41474();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2649C6000, v44, v45, "Creating video stream over socket path", v46, 2u);
      MEMORY[0x266749940](v46, -1, -1);
    }

    v47 = [v32 streamSocket];
    if ((v47 & 0x80000000) != 0)
    {

      v22 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v56 = sub_264B41014();
      [v22 initWithDomain:v56 code:-1 userInfo:0];

LABEL_20:
      swift_willThrow();
      return v22;
    }

    v48 = v47;
    v83 = 0;
    v49 = xpc_dictionary_create(0, 0, 0);
    v50 = *MEMORY[0x277CE5788];
    if (*MEMORY[0x277CE5788])
    {
      v22 = v49;

      xpc_dictionary_set_fd(v22, v50, v48);
      v51 = objc_allocWithZone(MEMORY[0x277CE5758]);
      v52 = sub_264B40F54();

      v95[0] = 0;
      v53 = [v51 initWithNetworkSockets:v22 options:v52 error:v95];

      if (v53)
      {
        v54 = v95[0];
        swift_unknownObjectRelease();
LABEL_29:
        v70 = v88;
        v71 = v87;
        v72 = v89;
        (*(v88 + 104))(v87, *MEMORY[0x277D85778], v89);
        v22 = v53;
        v73 = v90;
        sub_264B41284();
        (*(v70 + 8))(v71, v72);
        v74 = v92;
        v75 = v94;
        v76 = v93;
        (*(v92 + 16))(v94, v73, v93);
        (*(v74 + 56))(v75, 0, 1, v76);
        v77 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
        swift_beginAccess();
        sub_2649FECCC(v75, &v34[v77], &qword_27FF8BFA0, &qword_264B53480);
        swift_endAccess();
        [v22 setDelegate_];

        (*(v74 + 8))(v73, v76);
        return v22;
      }

      v57 = v95[0];
      sub_264B3FF84();

      swift_willThrow();
      swift_unknownObjectRelease();
      return v22;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_264AE0A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0);
  v5[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89870, &qword_264B48600);
  v5[32] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF88, &qword_264B53448);
  v5[33] = v8;
  v5[34] = *(v8 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = sub_264B41244();
  v5[37] = sub_264B41234();
  v10 = sub_264B411C4();
  v5[38] = v10;
  v5[39] = v9;

  return MEMORY[0x2822009F8](sub_264AE0CEC, v10, v9);
}

uint64_t sub_264AE0CEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF78, &qword_264B53418);
  sub_264B412C4();
  swift_beginAccess();
  v1 = sub_264B41234();
  v0[40] = v1;
  v2 = swift_task_alloc();
  v0[41] = v2;
  *v2 = v0;
  v2[1] = sub_264AE0DE8;
  v3 = v0[33];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 14, v1, v4, v3);
}

uint64_t sub_264AE0DE8()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_264AE0F2C, v3, v2);
}

uint64_t sub_264AE0F2C()
{
  v115 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  *(v0 + 336) = v1;
  *(v0 + 344) = v2;
  v3 = *(v0 + 128);
  if (v3 == 255)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
LABEL_15:

    goto LABEL_16;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    sub_264AEB15C(v1, v2, v3);
    goto LABEL_15;
  }

  v5 = Strong;
  if (v3 > 2)
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        sub_264AEB200(v1, v2, 3u);
        if (qword_27FF883E8 != -1)
        {
          swift_once();
        }

        v6 = sub_264B40964();
        __swift_project_value_buffer(v6, qword_27FFA71D0);
        sub_264AEB200(v1, v2, 3u);
        v7 = sub_264B40944();
        v8 = sub_264B414B4();
        sub_264AEB15C(v1, v2, 3u);
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v114 = v108;
          *v9 = 67240450;
          *(v9 + 4) = v1 & 1;
          *(v9 + 8) = 2082;
          *(v0 + 152) = v2;
          sub_264AEB200(v1, v2, 3u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BF90, &unk_264B53450);
          v10 = sub_264B41064();
          v12 = sub_2649CC004(v10, v11, &v114);

          *(v9 + 10) = v12;
          _os_log_impl(&dword_2649C6000, v7, v8, "ScreenCapture didStart=%{BOOL,public}d withError=%{public}s", v9, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v108);
          MEMORY[0x266749940](v108, -1, -1);
          MEMORY[0x266749940](v9, -1, -1);
        }

        if ((v1 & 1) != 0 || v5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState] == 5)
        {

          sub_264AEB15C(v1, v2, 3u);
          v13 = v1;
          v14 = v2;
          v15 = 3;
LABEL_66:
          sub_264AEB15C(v13, v14, v15);
          goto LABEL_67;
        }

        if (v2)
        {
          v67 = v2;
        }

        else
        {
          sub_264A02DF0();
          v67 = swift_allocError();
          *v104 = 11;
        }

        *(v0 + 408) = v67;
        sub_264AEB200(v1, v2, 3u);
        v69 = swift_task_alloc();
        *(v0 + 416) = v69;
        *v69 = v0;
        v70 = sub_264AE2994;
      }

      else
      {
        sub_264AEB200(v1, v2, 4u);
        if (qword_27FF883E8 != -1)
        {
          swift_once();
        }

        v56 = sub_264B40964();
        __swift_project_value_buffer(v56, qword_27FFA71D0);
        sub_264AEB200(v1, v2, 4u);
        v57 = sub_264B40944();
        v58 = sub_264B414B4();
        sub_264AEB15C(v1, v2, 4u);
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v114 = v112;
          *v59 = 67240450;
          *(v59 + 4) = v1 & 1;
          *(v59 + 8) = 2082;
          *(v0 + 144) = v2;
          sub_264AEB200(v1, v2, 4u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BF90, &unk_264B53450);
          v60 = sub_264B41064();
          v62 = sub_2649CC004(v60, v61, &v114);

          *(v59 + 10) = v62;
          _os_log_impl(&dword_2649C6000, v57, v58, "ScreenCapture didStop=%{BOOL,public}d withError=%{public}s", v59, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v112);
          MEMORY[0x266749940](v112, -1, -1);
          MEMORY[0x266749940](v59, -1, -1);
        }

        if ((v1 & 1) != 0 || v5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState] == 5)
        {

          sub_264AEB15C(v1, v2, 4u);
          v13 = v1;
          v14 = v2;
          v15 = 4;
          goto LABEL_66;
        }

        if (v2)
        {
          v67 = v2;
        }

        else
        {
          sub_264A02DF0();
          v67 = swift_allocError();
          *v105 = 12;
        }

        *(v0 + 424) = v67;
        sub_264AEB200(v1, v2, 4u);
        v69 = swift_task_alloc();
        *(v0 + 432) = v69;
        *v69 = v0;
        v70 = sub_264AE2BDC;
      }

      goto LABEL_96;
    }

    if (v3 == 5)
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v22 = sub_264B40964();
      __swift_project_value_buffer(v22, qword_27FFA71D0);
      v23 = v1;
      v24 = v2;
      v25 = sub_264B40944();
      v26 = sub_264B41484();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v114 = v109;
        *v27 = 138543618;
        *(v27 + 4) = v23;
        *v106 = v1;
        *(v27 + 12) = 2082;
        *(v0 + 136) = v2;
        v28 = v23;
        v29 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BF90, &unk_264B53450);
        v30 = sub_264B41064();
        v32 = sub_2649CC004(v30, v31, &v114);

        *(v27 + 14) = v32;
        _os_log_impl(&dword_2649C6000, v25, v26, "ScreenCapture didUpdate attributes=%{public}@ error=%{public}s", v27, 0x16u);
        sub_2649D04D4(v106, &unk_27FF89880, &unk_264B46B20);
        MEMORY[0x266749940](v106, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v109);
        MEMORY[0x266749940](v109, -1, -1);
        MEMORY[0x266749940](v27, -1, -1);
      }

      if (!v2)
      {

        v13 = v1;
        v14 = 0;
        v15 = 5;
        goto LABEL_66;
      }

      v33 = v5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState];
      v34 = v2;
      if (v33 != 5)
      {
        v85 = swift_task_alloc();
        *(v0 + 440) = v85;
        *v85 = v0;
        v85[1] = sub_264AE2E24;
        v86 = v2;
LABEL_97:

        return sub_264ADEE50(v86);
      }

      sub_264AEB15C(v1, v2, 5u);
LABEL_67:
      v71 = sub_264B41234();
      *(v0 + 320) = v71;
      v72 = swift_task_alloc();
      *(v0 + 328) = v72;
      *v72 = v0;
      v72[1] = sub_264AE0DE8;
      v73 = *(v0 + 264);
      v74 = MEMORY[0x277D85700];

      return MEMORY[0x2822003E8](v0 + 112, v71, v74, v73);
    }

    if (!(v1 | v2))
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v75 = sub_264B40964();
      __swift_project_value_buffer(v75, qword_27FFA71D0);
      v76 = sub_264B40944();
      v77 = sub_264B41484();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_2649C6000, v76, v77, "AVCVideoStream didStop", v78, 2u);
        MEMORY[0x266749940](v78, -1, -1);
      }

      v79 = *(v0 + 216);
      v81 = *(v0 + 184);
      v80 = *(v0 + 192);

      v5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isVideoStreamRunning] = 0;
      v82 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_streamDidStopContinuation;
      swift_beginAccess();
      sub_2649D046C(&v5[v82], v79, &unk_27FF899E0, &qword_264B53440);
      v83 = (*(v80 + 48))(v79, 1, v81);
      v84 = *(v0 + 216);
      if (v83)
      {
        sub_264AEB15C(v1, v2, 6u);
        sub_2649D04D4(v84, &unk_27FF899E0, &qword_264B53440);
      }

      else
      {
        v94 = *(v0 + 192);
        v93 = *(v0 + 200);
        v95 = *(v0 + 184);
        (*(v94 + 16))(v93, *(v0 + 216), v95);
        sub_2649D04D4(v84, &unk_27FF899E0, &qword_264B53440);
        sub_264B411E4();
        sub_264AEB15C(v1, v2, 6u);
        (*(v94 + 8))(v93, v95);
      }

      v96 = *(v0 + 208);
      (*(*(v0 + 192) + 56))(v96, 1, 1, *(v0 + 184));
      swift_beginAccess();
      sub_2649FECCC(v96, &v5[v82], &unk_27FF899E0, &qword_264B53440);
      swift_endAccess();

      goto LABEL_67;
    }

    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v63 = sub_264B40964();
    __swift_project_value_buffer(v63, qword_27FFA71D0);
    v64 = sub_264B40944();
    v65 = sub_264B41494();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2649C6000, v64, v65, "Video stream serverDidDie", v66, 2u);
      MEMORY[0x266749940](v66, -1, -1);
    }

    v5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isVideoStreamRunning] = 0;
    if (v5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState] == 5)
    {

      v13 = v1;
      v14 = v2;
      v15 = 6;
      goto LABEL_66;
    }

    sub_264A02DF0();
    v67 = swift_allocError();
    *(v0 + 392) = v67;
    *v87 = 10;
    v69 = swift_task_alloc();
    *(v0 + 400) = v69;
    *v69 = v0;
    v70 = sub_264AE2778;
    goto LABEL_96;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v18 = sub_264B40964();
      __swift_project_value_buffer(v18, qword_27FFA71D0);
      v19 = sub_264B40944();
      v20 = sub_264B41494();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134349056;
        *(v21 + 4) = v1;
        _os_log_impl(&dword_2649C6000, v19, v20, "Video streamDidRTCPTimeOut streamToken=%{public}ld", v21, 0xCu);
        MEMORY[0x266749940](v21, -1, -1);
      }

      v5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isVideoStreamRunning] = 0;
      if (v5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState] == 5)
      {

        goto LABEL_67;
      }

      sub_264A02DF0();
      v67 = swift_allocError();
      *(v0 + 360) = v67;
      *v68 = 8;
      v69 = swift_task_alloc();
      *(v0 + 368) = v69;
      *v69 = v0;
      v70 = sub_264AE2338;
    }

    else
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v49 = sub_264B40964();
      __swift_project_value_buffer(v49, qword_27FFA71D0);
      sub_264AEB200(v1, v2, 2u);
      v50 = sub_264B40944();
      v51 = sub_264B414B4();
      sub_264AEB15C(v1, v2, 2u);
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v114 = v111;
        *v52 = 136446210;
        *(v0 + 160) = v2;
        sub_264AEB200(v1, v2, 2u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BF90, &unk_264B53450);
        v53 = sub_264B41064();
        v55 = sub_2649CC004(v53, v54, &v114);

        *(v52 + 4) = v55;
        _os_log_impl(&dword_2649C6000, v50, v51, "Video stream didStart error=%{public}s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v111);
        MEMORY[0x266749940](v111, -1, -1);
        MEMORY[0x266749940](v52, -1, -1);
      }

      if ((v1 & 1) != 0 || v5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState] == 5)
      {
        sub_264AEB15C(v1, v2, 2u);
        v5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isVideoStreamRunning] = v1 & 1;

        goto LABEL_67;
      }

      if (v2)
      {
        v67 = v2;
      }

      else
      {
        sub_264A02DF0();
        v67 = swift_allocError();
        *v103 = 13;
      }

      *(v0 + 376) = v67;
      sub_264AEB200(v1, v2, 2u);
      v69 = swift_task_alloc();
      *(v0 + 384) = v69;
      *v69 = v0;
      v70 = sub_264AE2540;
    }

LABEL_96:
    v69[1] = v70;
    v86 = v67;
    goto LABEL_97;
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v35 = sub_264B40964();
  __swift_project_value_buffer(v35, qword_27FFA71D0);
  sub_264AEB200(v1, v2, 0);
  v36 = sub_264B40944();
  v37 = sub_264B414B4();
  sub_264AEB15C(v1, v2, 0);
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v114 = v110;
    *v38 = 136446210;
    sub_264AEB200(v1, v2, 0);
    v39 = [v1 description];
    v40 = sub_264B41044();
    v107 = v37;
    v42 = v41;

    sub_264AEB15C(v1, v2, 0);
    v43 = sub_2649CC004(v40, v42, &v114);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_2649C6000, v36, v107, "Did receive first video frame for client=%{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v110);
    MEMORY[0x266749940](v110, -1, -1);
    MEMORY[0x266749940](v38, -1, -1);
  }

  if (v5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_role] != 1)
  {

    v13 = v1;
    v14 = v2;
    v15 = 0;
    goto LABEL_66;
  }

  v44 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState;
  v45 = v5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState];
  if (v45 != 5)
  {
    v88 = *(v0 + 248);
    v89 = *(v0 + 232);
    v113 = *(v0 + 224);
    v5[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState] = 1;
    LOBYTE(v114) = v45;
    sub_264ADF934(&v114);
    v90 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
    swift_beginAccess();
    sub_2649D046C(&v5[v90], v88, &qword_27FF89850, &qword_264B485E0);
    if ((*(v89 + 48))(v88, 1, v113))
    {
      v91 = *(v0 + 248);

      sub_264AEB15C(v1, v2, 0);
      sub_2649D04D4(v91, &qword_27FF89850, &qword_264B485E0);
      v92 = 1;
    }

    else
    {
      v97 = *(v0 + 248);
      v99 = *(v0 + 232);
      v98 = *(v0 + 240);
      v100 = *(v0 + 224);
      (*(v99 + 16))(v98, v97, v100);
      sub_2649D04D4(v97, &qword_27FF89850, &qword_264B485E0);
      *(v0 + 129) = v5[v44];
      sub_264B41374();

      sub_264AEB15C(v1, v2, 0);
      (*(v99 + 8))(v98, v100);
      v92 = 0;
    }

    v101 = *(v0 + 256);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
    (*(*(v102 - 8) + 56))(v101, v92, 1, v102);
    sub_2649D04D4(v101, &unk_27FF89870, &qword_264B48600);
    goto LABEL_67;
  }

  v47 = *(v0 + 272);
  v46 = *(v0 + 280);
  v48 = *(v0 + 264);

  sub_264AEB15C(v1, v2, 0);
  (*(v47 + 8))(v46, v48);
LABEL_16:

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_264AE2338()
{
  v1 = *v0;
  v2 = *(*v0 + 360);

  v3 = *(v1 + 312);
  v4 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_264AE247C, v4, v3);
}

uint64_t sub_264AE247C()
{
  v1 = sub_264B41234();
  *(v0 + 320) = v1;
  v2 = swift_task_alloc();
  *(v0 + 328) = v2;
  *v2 = v0;
  v2[1] = sub_264AE0DE8;
  v3 = *(v0 + 264);
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 112, v1, v4, v3);
}

uint64_t sub_264AE2540()
{
  v1 = *v0;
  v2 = *(*v0 + 376);

  v3 = *(v1 + 312);
  v4 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_264AE2684, v4, v3);
}

uint64_t sub_264AE2684()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  sub_264AEB15C(v3, v1, 2u);

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_264AE2778()
{
  v1 = *v0;
  v2 = *(*v0 + 392);

  v3 = *(v1 + 312);
  v4 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_264AE28BC, v4, v3);
}

uint64_t sub_264AE28BC()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 336);

  sub_264AEB15C(v2, v1, 6u);
  v3 = sub_264B41234();
  *(v0 + 320) = v3;
  v4 = swift_task_alloc();
  *(v0 + 328) = v4;
  *v4 = v0;
  v4[1] = sub_264AE0DE8;
  v5 = *(v0 + 264);
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 112, v3, v6, v5);
}

uint64_t sub_264AE2994()
{
  v1 = *v0;
  v2 = *(*v0 + 408);

  v3 = *(v1 + 312);
  v4 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_264AE2AD8, v4, v3);
}

uint64_t sub_264AE2AD8()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  sub_264AEB15C(v3, v1, 3u);
  sub_264AEB15C(v3, v1, 3u);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_264AE2BDC()
{
  v1 = *v0;
  v2 = *(*v0 + 424);

  v3 = *(v1 + 312);
  v4 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_264AE2D20, v4, v3);
}

uint64_t sub_264AE2D20()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  sub_264AEB15C(v3, v1, 4u);
  sub_264AEB15C(v3, v1, 4u);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_264AE2E24()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_264AE2F44, v3, v2);
}

uint64_t sub_264AE2F44()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  sub_264AEB15C(v3, v1, 5u);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_264AE3040()
{
  v1[15] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89870, &qword_264B48600);
  v1[25] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B4F8, &unk_264B50AF0);
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BFA0, &qword_264B53480);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v5 = sub_264B3FFD4();
  v1[31] = v5;
  v1[32] = *(v5 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = sub_264B41244();
  v1[35] = sub_264B41234();
  v7 = sub_264B411C4();
  v1[36] = v7;
  v1[37] = v6;

  return MEMORY[0x2822009F8](sub_264AE333C, v7, v6);
}

uint64_t sub_264AE333C()
{
  v93 = v0;
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState;
  *(v0 + 304) = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState;
  if (*(v1 + v2) != 4)
  {
    return sub_264B41874();
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = sub_264B40964();
  *(v0 + 312) = __swift_project_value_buffer(v6, qword_27FFA71D0);
  v7 = sub_264B414B4();
  sub_264B3FF94();
  v8 = sub_264B3FFA4();
  v10 = v9;
  (*(v4 + 8))(v3, v5);

  v11 = sub_264B40944();

  if (os_log_type_enabled(v11, v7))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v92 = v13;
    *v12 = 136446722;
    v14 = sub_2649CC004(v8, v10, &v92);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2050;
    *(v12 + 14) = 229;
    *(v12 + 22) = 2082;
    *(v12 + 24) = sub_2649CC004(0x6E776F4472616574, 0xEA00000000002928, &v92);
    _os_log_impl(&dword_2649C6000, v11, v7, "%{public}s:%{public}ld %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v13, -1, -1);
    MEMORY[0x266749940](v12, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 120);
  *(v16 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_clientActivated) = 0;
  if ((*(v16 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_role) & 1) == 0)
  {
    v17 = sub_264ADFB4C();
    [v17 stopCapture];
  }

  v18 = *(v0 + 120);
  v19 = *&v18[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStream];
  *(v0 + 320) = v19;
  if (v19)
  {
    v20 = v19;
    v21 = v18;
    v22 = sub_264B40944();
    v23 = sub_264B414B4();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 120);
    if (v24)
    {
      v26 = swift_slowAlloc();
      *v26 = 67240192;
      *(v26 + 4) = v25[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isVideoStreamRunning];

      _os_log_impl(&dword_2649C6000, v22, v23, "Attempting to stop video stream, isVideoStreamRunning == %{BOOL,public}d", v26, 8u);
      MEMORY[0x266749940](v26, -1, -1);
    }

    else
    {
    }

    v33 = *(v0 + 120);
    *(v0 + 328) = sub_264B41234();
    v34 = swift_task_alloc();
    *(v0 + 336) = v34;
    *(v34 + 16) = v33;
    *(v34 + 24) = v20;
    v35 = swift_task_alloc();
    *(v0 + 344) = v35;
    *v35 = v0;
    v35[1] = sub_264AE3F2C;

    return MEMORY[0x2822007B8]();
  }

  v27 = *(v0 + 240);
  v28 = *(v0 + 208);
  v29 = *(v0 + 216);
  v30 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(&v18[v30], v27, &qword_27FF8BFA0, &qword_264B53480);
  v31 = (*(v29 + 48))(v27, 1, v28);
  v32 = *(v0 + 240);
  if (v31)
  {
    sub_2649D04D4(*(v0 + 240), &qword_27FF8BFA0, &qword_264B53480);
  }

  else
  {
    v37 = *(v0 + 216);
    v36 = *(v0 + 224);
    v38 = *(v0 + 208);
    (*(v37 + 16))(v36, *(v0 + 240), v38);
    sub_2649D04D4(v32, &qword_27FF8BFA0, &qword_264B53480);
    sub_264B412B4();
    (*(v37 + 8))(v36, v38);
  }

  v39 = *(v0 + 232);
  v40 = *(v0 + 120);
  (*(*(v0 + 216) + 56))(v39, 1, 1, *(v0 + 208));
  swift_beginAccess();
  sub_2649FECCC(v39, &v18[v30], &qword_27FF8BFA0, &qword_264B53480);
  swift_endAccess();
  v41 = *(v40 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient);
  *(v40 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient) = 0;

  v42 = v40 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentSession;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (!Strong)
  {

    goto LABEL_24;
  }

  if (*(*(v0 + 120) + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_interruptionError))
  {

    swift_unknownObjectRelease();
LABEL_24:
    v44 = *(v0 + 304);
    v45 = *(v0 + 192);
    v46 = *(v0 + 152);
    v47 = *(v0 + 160);
    v48 = *(v0 + 120);
    [*(v48 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_rapportStream) invalidate];
    v49 = *(v48 + v44);
    *(v48 + v44) = 5;
    v91 = v49;
    sub_264ADF934(&v91);
    v50 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
    swift_beginAccess();
    sub_2649D046C(v48 + v50, v45, &qword_27FF89850, &qword_264B485E0);
    v51 = *(v47 + 48);
    if (v51(v45, 1, v46))
    {
      sub_2649D04D4(*(v0 + 192), &qword_27FF89850, &qword_264B485E0);
      v52 = 1;
    }

    else
    {
      v53 = *(v0 + 192);
      v89 = *(v0 + 304);
      v55 = *(v0 + 160);
      v54 = *(v0 + 168);
      v56 = *(v0 + 152);
      v57 = *(v0 + 120);
      (*(v55 + 16))(v54, v53, v56);
      sub_2649D04D4(v53, &qword_27FF89850, &qword_264B485E0);
      *(v0 + 384) = *(v57 + v89);
      sub_264B41374();
      (*(v55 + 8))(v54, v56);
      v52 = 0;
    }

    v58 = *(v0 + 200);
    v59 = *(v0 + 184);
    v60 = *(v0 + 152);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
    (*(*(v61 - 8) + 56))(v58, v52, 1, v61);
    sub_2649D04D4(v58, &unk_27FF89870, &qword_264B48600);
    sub_2649D046C(v48 + v50, v59, &qword_27FF89850, &qword_264B485E0);
    v62 = v51(v59, 1, v60);
    v63 = *(v0 + 184);
    if (v62)
    {
      sub_2649D04D4(*(v0 + 184), &qword_27FF89850, &qword_264B485E0);
    }

    else
    {
      v65 = *(v0 + 160);
      v64 = *(v0 + 168);
      v66 = *(v0 + 152);
      (*(v65 + 16))(v64, *(v0 + 184), v66);
      sub_2649D04D4(v63, &qword_27FF89850, &qword_264B485E0);
      *(v0 + 112) = 0;
      sub_264B41384();
      (*(v65 + 8))(v64, v66);
    }

    v67 = *(v0 + 176);
    v68 = *(v0 + 120);
    (*(*(v0 + 160) + 56))(v67, 1, 1, *(v0 + 152));
    swift_beginAccess();
    sub_2649FECCC(v67, v48 + v50, &qword_27FF89850, &qword_264B485E0);
    swift_endAccess();
    v69 = *(v68 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations);
    *(v68 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations) = MEMORY[0x277D84F90];
    v70 = *(v69 + 16);
    if (v70)
    {

      v71 = sub_264B40944();
      v72 = sub_264B414B4();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 134217984;
        *(v73 + 4) = *(v69 + 16);

        _os_log_impl(&dword_2649C6000, v71, v72, "Resuming %ld waiting invalidations", v73, 0xCu);
        MEMORY[0x266749940](v73, -1, -1);
      }

      else
      {
      }

      v74 = *(v0 + 136);
      v77 = *(v74 + 16);
      v75 = v74 + 16;
      v76 = v77;
      v78 = v69 + ((*(v75 + 64) + 32) & ~*(v75 + 64));
      v79 = *(v75 + 56);
      do
      {
        v80 = *(v0 + 144);
        v81 = *(v0 + 128);
        v76(v80, v78, v81);
        sub_264B411E4();
        (*(v75 - 8))(v80, v81);
        v78 += v79;
        --v70;
      }

      while (v70);
    }

    v82 = *(v0 + 8);

    return v82();
  }

  v83 = *(v42 + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 385) = 1;
  v85 = sub_264B41044();
  v87 = v86;
  *(v0 + 360) = v86;
  v90 = (*(v83 + 144) + **(v83 + 144));
  v88 = swift_task_alloc();
  *(v0 + 368) = v88;
  *v88 = v0;
  v88[1] = sub_264AE48D0;

  return v90(v0 + 385, v85, v87, ObjectType, v83);
}

uint64_t sub_264AE3F2C()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_264AE408C, v3, v2);
}

uint64_t sub_264AE408C(uint64_t a1)
{
  v70 = v1;
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Video stream did stop cleanly", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = *(v1 + 320);

  v6 = *(v1 + 240);
  v7 = *(v1 + 208);
  v8 = *(v1 + 216);
  v9 = *(v1 + 120);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStreamDelegateContinuation;
  swift_beginAccess();
  sub_2649D046C(v9 + v10, v6, &qword_27FF8BFA0, &qword_264B53480);
  v11 = (*(v8 + 48))(v6, 1, v7);
  v12 = *(v1 + 240);
  if (v11)
  {
    sub_2649D04D4(*(v1 + 240), &qword_27FF8BFA0, &qword_264B53480);
  }

  else
  {
    v14 = *(v1 + 216);
    v13 = *(v1 + 224);
    v15 = *(v1 + 208);
    (*(v14 + 16))(v13, *(v1 + 240), v15);
    sub_2649D04D4(v12, &qword_27FF8BFA0, &qword_264B53480);
    sub_264B412B4();
    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v1 + 232);
  v17 = *(v1 + 120);
  (*(*(v1 + 216) + 56))(v16, 1, 1, *(v1 + 208));
  swift_beginAccess();
  sub_2649FECCC(v16, v9 + v10, &qword_27FF8BFA0, &qword_264B53480);
  swift_endAccess();
  v18 = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient);
  *(v17 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient) = 0;

  v19 = v17 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentSession;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v1 + 352) = Strong;
  if (!Strong)
  {

    goto LABEL_10;
  }

  if (*(*(v1 + 120) + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_interruptionError))
  {

    swift_unknownObjectRelease();
LABEL_10:
    v21 = *(v1 + 304);
    v22 = *(v1 + 192);
    v23 = *(v1 + 152);
    v24 = *(v1 + 160);
    v25 = *(v1 + 120);
    [*(v25 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_rapportStream) invalidate];
    v26 = *(v25 + v21);
    *(v25 + v21) = 5;
    v69 = v26;
    sub_264ADF934(&v69);
    v27 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
    swift_beginAccess();
    sub_2649D046C(v25 + v27, v22, &qword_27FF89850, &qword_264B485E0);
    v28 = *(v24 + 48);
    if (v28(v22, 1, v23))
    {
      sub_2649D04D4(*(v1 + 192), &qword_27FF89850, &qword_264B485E0);
      v29 = 1;
    }

    else
    {
      v30 = *(v1 + 192);
      v67 = *(v1 + 304);
      v32 = *(v1 + 160);
      v31 = *(v1 + 168);
      v33 = *(v1 + 152);
      v34 = *(v1 + 120);
      (*(v32 + 16))(v31, v30, v33);
      sub_2649D04D4(v30, &qword_27FF89850, &qword_264B485E0);
      *(v1 + 384) = *(v34 + v67);
      sub_264B41374();
      (*(v32 + 8))(v31, v33);
      v29 = 0;
    }

    v35 = *(v1 + 200);
    v36 = *(v1 + 184);
    v37 = *(v1 + 152);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
    (*(*(v38 - 8) + 56))(v35, v29, 1, v38);
    sub_2649D04D4(v35, &unk_27FF89870, &qword_264B48600);
    sub_2649D046C(v25 + v27, v36, &qword_27FF89850, &qword_264B485E0);
    v39 = v28(v36, 1, v37);
    v40 = *(v1 + 184);
    if (v39)
    {
      sub_2649D04D4(*(v1 + 184), &qword_27FF89850, &qword_264B485E0);
    }

    else
    {
      v42 = *(v1 + 160);
      v41 = *(v1 + 168);
      v43 = *(v1 + 152);
      (*(v42 + 16))(v41, *(v1 + 184), v43);
      sub_2649D04D4(v40, &qword_27FF89850, &qword_264B485E0);
      *(v1 + 112) = 0;
      sub_264B41384();
      (*(v42 + 8))(v41, v43);
    }

    v44 = *(v1 + 176);
    v45 = *(v1 + 120);
    (*(*(v1 + 160) + 56))(v44, 1, 1, *(v1 + 152));
    swift_beginAccess();
    sub_2649FECCC(v44, v25 + v27, &qword_27FF89850, &qword_264B485E0);
    swift_endAccess();
    v46 = *(v45 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations);
    *(v45 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations) = MEMORY[0x277D84F90];
    v47 = *(v46 + 16);
    if (v47)
    {

      v48 = sub_264B40944();
      v49 = sub_264B414B4();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 134217984;
        *(v50 + 4) = *(v46 + 16);

        _os_log_impl(&dword_2649C6000, v48, v49, "Resuming %ld waiting invalidations", v50, 0xCu);
        MEMORY[0x266749940](v50, -1, -1);
      }

      else
      {
      }

      v51 = *(v1 + 136);
      v54 = *(v51 + 16);
      v52 = v51 + 16;
      v53 = v54;
      v55 = v46 + ((*(v52 + 64) + 32) & ~*(v52 + 64));
      v56 = *(v52 + 56);
      do
      {
        v57 = *(v1 + 144);
        v58 = *(v1 + 128);
        v53(v57, v55, v58);
        sub_264B411E4();
        (*(v52 - 8))(v57, v58);
        v55 += v56;
        --v47;
      }

      while (v47);
    }

    v59 = *(v1 + 8);

    return v59();
  }

  v61 = *(v19 + 8);
  ObjectType = swift_getObjectType();
  *(v1 + 385) = 1;
  v63 = sub_264B41044();
  v65 = v64;
  *(v1 + 360) = v64;
  v68 = (*(v61 + 144) + **(v61 + 144));
  v66 = swift_task_alloc();
  *(v1 + 368) = v66;
  *v66 = v1;
  v66[1] = sub_264AE48D0;

  return v68(v1 + 385, v63, v65, ObjectType, v61);
}

uint64_t sub_264AE48D0()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = *(v2 + 288);
    v4 = *(v2 + 296);
    v5 = sub_264AE4EEC;
  }

  else
  {

    v3 = *(v2 + 288);
    v4 = *(v2 + 296);
    v5 = sub_264AE49EC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_264AE49EC()
{
  v43 = v0;

  swift_unknownObjectRelease();
  v1 = *(v0 + 304);
  v2 = *(v0 + 192);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 120);
  [*(v5 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_rapportStream) invalidate];
  v6 = *(v5 + v1);
  *(v5 + v1) = 5;
  v42 = v6;
  sub_264ADF934(&v42);
  v7 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
  swift_beginAccess();
  sub_2649D046C(v5 + v7, v2, &qword_27FF89850, &qword_264B485E0);
  v8 = *(v4 + 48);
  if (v8(v2, 1, v3))
  {
    sub_2649D04D4(*(v0 + 192), &qword_27FF89850, &qword_264B485E0);
    v9 = 1;
  }

  else
  {
    v10 = *(v0 + 192);
    v41 = *(v0 + 304);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 152);
    v14 = *(v0 + 120);
    (*(v12 + 16))(v11, v10, v13);
    sub_2649D04D4(v10, &qword_27FF89850, &qword_264B485E0);
    *(v0 + 384) = *(v14 + v41);
    sub_264B41374();
    (*(v12 + 8))(v11, v13);
    v9 = 0;
  }

  v15 = *(v0 + 200);
  v16 = *(v0 + 184);
  v17 = *(v0 + 152);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
  (*(*(v18 - 8) + 56))(v15, v9, 1, v18);
  sub_2649D04D4(v15, &unk_27FF89870, &qword_264B48600);
  sub_2649D046C(v5 + v7, v16, &qword_27FF89850, &qword_264B485E0);
  v19 = v8(v16, 1, v17);
  v20 = *(v0 + 184);
  if (v19)
  {
    sub_2649D04D4(*(v0 + 184), &qword_27FF89850, &qword_264B485E0);
  }

  else
  {
    v22 = *(v0 + 160);
    v21 = *(v0 + 168);
    v23 = *(v0 + 152);
    (*(v22 + 16))(v21, *(v0 + 184), v23);
    sub_2649D04D4(v20, &qword_27FF89850, &qword_264B485E0);
    *(v0 + 112) = 0;
    sub_264B41384();
    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 176);
  v25 = *(v0 + 120);
  (*(*(v0 + 160) + 56))(v24, 1, 1, *(v0 + 152));
  swift_beginAccess();
  sub_2649FECCC(v24, v5 + v7, &qword_27FF89850, &qword_264B485E0);
  swift_endAccess();
  v26 = *(v25 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations);
  *(v25 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations) = MEMORY[0x277D84F90];
  v27 = *(v26 + 16);
  if (v27)
  {

    v28 = sub_264B40944();
    v29 = sub_264B414B4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = *(v26 + 16);

      _os_log_impl(&dword_2649C6000, v28, v29, "Resuming %ld waiting invalidations", v30, 0xCu);
      MEMORY[0x266749940](v30, -1, -1);
    }

    else
    {
    }

    v31 = *(v0 + 136);
    v34 = *(v31 + 16);
    v32 = v31 + 16;
    v33 = v34;
    v35 = v26 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v36 = *(v32 + 56);
    do
    {
      v37 = *(v0 + 144);
      v38 = *(v0 + 128);
      v33(v37, v35, v38);
      sub_264B411E4();
      (*(v32 - 8))(v37, v38);
      v35 += v36;
      --v27;
    }

    while (v27);
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_264AE4EEC()
{
  v53 = v0;
  v1 = *(v0 + 376);

  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 376);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v3, v4, "Failed to send stream invalidation message: %{public}@", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v11 = *(v0 + 304);
  v12 = *(v0 + 192);
  v13 = *(v0 + 152);
  v14 = *(v0 + 160);
  v15 = *(v0 + 120);
  [*(v15 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_rapportStream) invalidate];
  v16 = *(v15 + v11);
  *(v15 + v11) = 5;
  v52 = v16;
  sub_264ADF934(&v52);
  v17 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
  swift_beginAccess();
  sub_2649D046C(v15 + v17, v12, &qword_27FF89850, &qword_264B485E0);
  v18 = *(v14 + 48);
  if (v18(v12, 1, v13))
  {
    sub_2649D04D4(*(v0 + 192), &qword_27FF89850, &qword_264B485E0);
    v19 = 1;
  }

  else
  {
    v20 = *(v0 + 192);
    v51 = *(v0 + 304);
    v22 = *(v0 + 160);
    v21 = *(v0 + 168);
    v23 = *(v0 + 152);
    v24 = *(v0 + 120);
    (*(v22 + 16))(v21, v20, v23);
    sub_2649D04D4(v20, &qword_27FF89850, &qword_264B485E0);
    *(v0 + 384) = *(v24 + v51);
    sub_264B41374();
    (*(v22 + 8))(v21, v23);
    v19 = 0;
  }

  v25 = *(v0 + 200);
  v26 = *(v0 + 184);
  v27 = *(v0 + 152);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
  (*(*(v28 - 8) + 56))(v25, v19, 1, v28);
  sub_2649D04D4(v25, &unk_27FF89870, &qword_264B48600);
  sub_2649D046C(v15 + v17, v26, &qword_27FF89850, &qword_264B485E0);
  v29 = v18(v26, 1, v27);
  v30 = *(v0 + 184);
  if (v29)
  {
    sub_2649D04D4(*(v0 + 184), &qword_27FF89850, &qword_264B485E0);
  }

  else
  {
    v32 = *(v0 + 160);
    v31 = *(v0 + 168);
    v33 = *(v0 + 152);
    (*(v32 + 16))(v31, *(v0 + 184), v33);
    sub_2649D04D4(v30, &qword_27FF89850, &qword_264B485E0);
    *(v0 + 112) = 0;
    sub_264B41384();
    (*(v32 + 8))(v31, v33);
  }

  v34 = *(v0 + 176);
  v35 = *(v0 + 120);
  (*(*(v0 + 160) + 56))(v34, 1, 1, *(v0 + 152));
  swift_beginAccess();
  sub_2649FECCC(v34, v15 + v17, &qword_27FF89850, &qword_264B485E0);
  swift_endAccess();
  v36 = *(v35 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations);
  *(v35 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_tearDownContinuations) = MEMORY[0x277D84F90];
  v37 = *(v36 + 16);
  if (v37)
  {

    v38 = sub_264B40944();
    v39 = sub_264B414B4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      *(v40 + 4) = *(v36 + 16);

      _os_log_impl(&dword_2649C6000, v38, v39, "Resuming %ld waiting invalidations", v40, 0xCu);
      MEMORY[0x266749940](v40, -1, -1);
    }

    else
    {
    }

    v41 = *(v0 + 136);
    v44 = *(v41 + 16);
    v42 = v41 + 16;
    v43 = v44;
    v45 = v36 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
    v46 = *(v42 + 56);
    do
    {
      v47 = *(v0 + 144);
      v48 = *(v0 + 128);
      v43(v47, v45, v48);
      sub_264B411E4();
      (*(v42 - 8))(v47, v48);
      v45 += v46;
      --v37;
    }

    while (v37);
  }

  v49 = *(v0 + 8);

  return v49();
}

id sub_264AE54F8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF899E0, &qword_264B53440);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v14 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_streamDidStopContinuation;
  swift_beginAccess();
  sub_2649FECCC(v9, a2 + v12, &unk_27FF899E0, &qword_264B53440);
  swift_endAccess();
  return [a3 stop];
}

void sub_264AE568C(uint64_t a1)
{
  sub_264A2C814(319, &qword_27FF897D0, &qword_27FF88DA8, &qword_264B48500);
  if (v1 <= 0x3F)
  {
    sub_264A2C814(319, &unk_27FF8BE40, &qword_27FF8B4F8, &unk_264B50AF0);
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

void sub_264AE5864(void *a1)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v2 = *&v1[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_negotiator];
  if (!v2)
  {
    sub_264A02DF0();
    swift_allocError();
    v53 = 5;
LABEL_42:
    *v52 = v53;
    swift_willThrow();
    return;
  }

  if (v1[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isNegotiationComplete] != 1)
  {
    sub_264A02DF0();
    swift_allocError();
    v53 = 7;
    goto LABEL_42;
  }

  v60[0] = 0;
  v3 = v2;
  v4 = [v3 generateMediaStreamConfigurationWithError_];
  if (!v4)
  {
    v54 = v60[0];
    sub_264B3FF84();

    swift_willThrow();
    return;
  }

  v5 = v4;
  v6 = *&v1[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_rapportStream];
  v7 = v60[0];
  v8 = [v6 streamKey];
  if (!v8)
  {
    sub_264A02DF0();
    swift_allocError();
    *v55 = 4;
    swift_willThrow();

    return;
  }

  v9 = v8;
  v10 = sub_264B40024();
  v12 = v11;

  sub_264AE9E24(v5, v10, v12);
  v13 = [v5 video];
  if (!v13)
  {
    __break(1u);
    goto LABEL_53;
  }

  v14 = v13;
  [v13 setVideoResolution_];

  v15 = [v5 video];
  if (!v15)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v16 = v15;
  v58 = v10;
  [v15 setCustomHeight_];

  v17 = [v5 video];
  if (!v17)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v18 = v17;
  v57 = v12;
  [v17 setCustomWidth_];

  v19 = [v5 direction];
  v20 = 0x27FF88000;
  if (v19 == 1)
  {
    v21 = [objc_opt_self() mainDisplay];
    if (!v21)
    {
      goto LABEL_28;
    }

    v22 = v21;
    [v21 frame];
    if (CGRectGetHeight(v61) <= 0.0 || ([v22 frame], CGRectGetWidth(v62) <= 0.0))
    {
LABEL_27:

LABEL_28:
      v31 = [v5 video];
      if (v31)
      {
        v32 = v31;
        v33 = sub_264ADFB4C();
        v34 = [v33 captureSourceID];

        [v32 setCaptureSourceID_];
        if (qword_27FF883E8 != -1)
        {
          swift_once();
        }

        v35 = sub_264B40964();
        __swift_project_value_buffer(v35, qword_27FFA71D0);
        v36 = v1;
        v37 = sub_264B40944();
        v38 = sub_264B41484();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v60[0] = v40;
          *v39 = 136315138;
          [*&v36[OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream____lazy_storage___screenCapture] captureSourceID];
          v41 = sub_264B41A64();
          v43 = sub_2649CC004(v41, v42, v60);

          *(v39 + 4) = v43;
          _os_log_impl(&dword_2649C6000, v37, v38, "Set config.video.captureSourceID to %s", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v40);
          MEMORY[0x266749940](v40, -1, -1);
          MEMORY[0x266749940](v39, -1, -1);
        }

        v20 = 0x27FF88000uLL;
        goto LABEL_34;
      }

      goto LABEL_55;
    }

    v23 = [v5 video];
    if (!v23)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return;
    }

    v24 = v23;
    [v22 frame];
    Height = CGRectGetHeight(v63);
    if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (Height > -9.22337204e18)
    {
      if (Height < 9.22337204e18)
      {
        if (Height >= 4096)
        {
          v26 = 4096;
        }

        else
        {
          v26 = Height;
        }

        [v24 setCustomHeight_];

        v27 = [v5 video];
        if (!v27)
        {
          goto LABEL_57;
        }

        v28 = v27;
        [v22 frame];
        Width = CGRectGetWidth(v64);
        if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (Width > -9.22337204e18)
          {
            if (Width < 9.22337204e18)
            {
              if (Width >= 4096)
              {
                v30 = 4096;
              }

              else
              {
                v30 = Width;
              }

              [v28 setCustomWidth_];

              goto LABEL_27;
            }

LABEL_51:
            __break(1u);
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_34:
  if (*(v20 + 1000) != -1)
  {
    swift_once();
  }

  v44 = sub_264B40964();
  __swift_project_value_buffer(v44, qword_27FFA71D0);
  v45 = v5;
  v46 = sub_264B40944();
  v47 = sub_264B41484();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138543362;
    *(v48 + 4) = v45;
    *v49 = v5;
    v50 = v45;
    _os_log_impl(&dword_2649C6000, v46, v47, "video config: %{public}@", v48, 0xCu);
    sub_2649D04D4(v49, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v49, -1, -1);
    MEMORY[0x266749940](v48, -1, -1);
  }

  v60[0] = 0;
  if ([a1 configure:v45 error:v60])
  {
    v51 = v60[0];
    sub_2649DEF6C(v58, v57);
  }

  else
  {
    v56 = v60[0];
    sub_264B3FF84();

    swift_willThrow();
    sub_2649DEF6C(v58, v57);
  }
}

uint64_t sub_264AE5FC0()
{
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DA8, &qword_264B48500);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89850, &qword_264B485E0);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89870, &qword_264B48600);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v1[12] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF78, &qword_264B53418);
  v1[13] = v3;
  v4 = *(v3 - 8);
  v1[14] = v4;
  v1[15] = *(v4 + 64);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = sub_264B41244();
  v1[19] = sub_264B41234();
  v5 = sub_264B411C4();
  v1[20] = v5;
  v1[21] = v6;

  return MEMORY[0x2822009F8](sub_264AE621C, v5, v6);
}

uint64_t sub_264AE621C()
{
  v95 = v0;
  v94 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState;
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState) > 3u || *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentState))
  {
    goto LABEL_3;
  }

  v5 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_negotiator);
  *(v0 + 176) = v5;
  if (!v5 || *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_isNegotiationComplete) != 1)
  {

    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v19 = sub_264B40964();
    __swift_project_value_buffer(v19, qword_27FFA71D0);
    v20 = sub_264B40944();
    v21 = sub_264B41474();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2649C6000, v20, v21, "Not ready to complete activation, negotiation not complete", v22, 2u);
      MEMORY[0x266749940](v22, -1, -1);
    }

    goto LABEL_21;
  }

  v6 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_role);
  if (v6 == 1 && *(v1 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_clientActivated) != 1)
  {
    v24 = v5;

    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v25 = sub_264B40964();
    __swift_project_value_buffer(v25, qword_27FFA71D0);
    v20 = sub_264B40944();
    v26 = sub_264B41474();
    if (os_log_type_enabled(v20, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2649C6000, v20, v26, "Not ready to complete activation, client not activated", v27, 2u);
      MEMORY[0x266749940](v27, -1, -1);
    }

    goto LABEL_21;
  }

  v7 = qword_27FF883E8;
  v8 = v5;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FFA71D0);
  v10 = sub_264B40944();
  v11 = sub_264B41474();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2649C6000, v10, v11, "Activation complete, creating stream", v12, 2u);
    MEMORY[0x266749940](v12, -1, -1);
  }

  *(v0 + 40) = 0;
  v13 = [v8 generateMediaStreamInitOptionsWithError_];
  v14 = *(v0 + 40);
  if (v13)
  {
    v90 = v6;
    v15 = *(v0 + 136);
    v16 = v13;
    v17 = sub_264B40F64();
    v18 = v14;

    v28 = sub_264ADFEF8(v15, v17);
    v86 = *(v0 + 136);
    v29 = *(v0 + 128);
    v84 = v8;
    v85 = v29;
    v88 = *(v0 + 120);
    v31 = *(v0 + 104);
    v30 = *(v0 + 112);
    v32 = *(v0 + 96);
    v87 = v32;
    v33 = *(v0 + 48);

    v34 = *(v33 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStream);
    *(v33 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_videoStream) = v28;
    v89 = v28;

    v35 = sub_264B41274();
    (*(*(v35 - 8) + 56))(v32, 1, 1, v35);
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v30 + 16))(v29, v86, v31);

    v37 = sub_264B41234();
    v38 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v39 = swift_allocObject();
    v40 = MEMORY[0x277D85700];
    *(v39 + 16) = v37;
    *(v39 + 24) = v40;
    (*(v30 + 32))(v39 + v38, v85, v31);
    *(v39 + ((v88 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)) = v36;

    sub_264A10C20(0, 0, v87, &unk_264B53430, v39);

    sub_264AE5864(v89);
    v42 = sub_264B40944();
    v43 = sub_264B41474();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2649C6000, v42, v43, "Starting video stream", v44, 2u);
      MEMORY[0x266749940](v44, -1, -1);
    }

    [v89 start];
    if (!v90)
    {

      v56 = sub_264B40944();
      v57 = sub_264B41474();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_2649C6000, v56, v57, "Role is server, starting screen capture", v58, 2u);
        MEMORY[0x266749940](v58, -1, -1);
      }

      v59 = sub_264ADFB4C();
      [v59 startCapture];

      v60 = sub_264B40944();
      v61 = sub_264B41474();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_2649C6000, v60, v61, "Role is server, activation complete", v62, 2u);
        MEMORY[0x266749940](v62, -1, -1);
      }

      v63 = *(v0 + 80);
      v64 = *(v0 + 56);
      v65 = *(v0 + 64);
      v66 = *(v0 + 48);

      v67 = *(v1 + v2);
      *(v1 + v2) = 1;
      v93[0] = v67;
      sub_264ADF934(v93);
      v68 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_stateContinuation;
      swift_beginAccess();
      sub_2649D046C(v66 + v68, v63, &qword_27FF89850, &qword_264B485E0);
      v69 = (*(v65 + 48))(v63, 1, v64);
      v70 = *(v0 + 104);
      v71 = *(v0 + 112);
      if (v69)
      {
        v72 = *(v0 + 80);
        (*(v71 + 8))(*(v0 + 136), *(v0 + 104));

        sub_2649D04D4(v72, &qword_27FF89850, &qword_264B485E0);
        v73 = 1;
      }

      else
      {
        v74 = *(v0 + 80);
        v75 = *(v0 + 64);
        v76 = *(v0 + 72);
        v77 = *(v0 + 56);
        v92 = *(v0 + 136);
        (*(v75 + 16))(v76, v74, v77);
        sub_2649D04D4(v74, &qword_27FF89850, &qword_264B485E0);
        *(v0 + 200) = *(v1 + v2);
        sub_264B41374();

        (*(v75 + 8))(v76, v77);
        (*(v71 + 8))(v92, v70);
        v73 = 0;
      }

      v78 = *(v0 + 88);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8BF80, &qword_264B48608);
      (*(*(v79 - 8) + 56))(v78, v73, 1, v79);
      sub_2649D04D4(v78, &unk_27FF89870, &qword_264B48600);
      goto LABEL_4;
    }

    v45 = sub_264B40944();
    v46 = sub_264B41474();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2649C6000, v45, v46, "Role is client, setting remoteVideoClient", v47, 2u);
      MEMORY[0x266749940](v47, -1, -1);
    }

    v48 = *(v0 + 48);

    v49 = [v89 streamToken];
    v50 = [objc_allocWithZone(MEMORY[0x277CE5730]) initWithStreamToken:v49 delegate:v48];
    v51 = OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient;
    v52 = *(v48 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient);
    *(v48 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient) = v50;

    v53 = *(v48 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentVideoLayer);
    if (v53)
    {
      v54 = *(v48 + v51);
      if (v54)
      {
        v20 = v53;
        v55 = v54;
        sub_264AEABE4(v20, v55);
        (*(*(v0 + 112) + 8))(*(v0 + 136), *(v0 + 104));

LABEL_21:

        goto LABEL_4;
      }

      v80 = *(v0 + 136);
      v81 = *(v0 + 104);
      v82 = *(*(v0 + 112) + 8);
      v83 = v53;
      v82(v80, v81);
    }

    else
    {
      (*(*(v0 + 112) + 8))(*(v0 + 136), *(v0 + 104));
    }

LABEL_3:

LABEL_4:

    v3 = *(v0 + 8);

    return v3();
  }

  v23 = v14;
  v91 = sub_264B3FF84();

  swift_willThrow();
  *(v0 + 184) = v91;
  v41 = swift_task_alloc();
  *(v0 + 192) = v41;
  *v41 = v0;
  v41[1] = sub_264AE6E04;

  return sub_264ADEE50(v91);
}