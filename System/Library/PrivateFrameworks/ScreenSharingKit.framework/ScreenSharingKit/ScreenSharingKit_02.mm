uint64_t sub_2649FB99C()
{
  v1 = *(*v0 + 536);

  return MEMORY[0x2822009F8](sub_264A03304, v1, 0);
}

uint64_t sub_2649FBAAC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 536);
  *(v3 + 600) = a1;
  *(v3 + 608) = a2;

  return MEMORY[0x2822009F8](sub_2649FBBC8, v4, 0);
}

uint64_t sub_2649FBBC8(uint64_t a1)
{
  v40 = v1;
  v2 = *(v1 + 608);
  if (v2 >> 60 == 15)
  {
    v3 = sub_264B40944();
    v4 = sub_264B41494();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v1 + 576);
    v7 = *(v1 + 568);
    if (v5)
    {
      v8 = *(v1 + 641);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v39 = v10;
      *v9 = 136446210;
      *(v1 + 640) = v8;
      v11 = sub_264B41064();
      v13 = sub_2649CC004(v11, v12, &v39);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2649C6000, v3, v4, "Failed to get negotiation answer for stream: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x266749940](v10, -1, -1);
      MEMORY[0x266749940](v9, -1, -1);
    }

    sub_2649DEF6C(v7, v6);

    goto LABEL_12;
  }

  v14 = *(v1 + 600);
  v15 = *(v1 + 641);
  v16 = *(v1 + 536);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  v18 = inited;
  *(inited + 16) = xmmword_264B46DF0;
  *(inited + 32) = 0x79546D6165727473;
  v19 = MEMORY[0x277D837D0];
  v20 = 0x6F69647561;
  if (v15)
  {
    v20 = 0x6F65646976;
  }

  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = v20;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v19;
  *(inited + 80) = 0x746169746F67656ELL;
  v21 = MEMORY[0x277CC9318];
  *(inited + 88) = 0xEF617461446E6F69;
  *(inited + 96) = v14;
  *(inited + 104) = v2;
  *(inited + 120) = v21;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 168) = v19;
  *(inited + 136) = 0x8000000264B5A500;
  *(inited + 144) = 0xD000000000000011;
  *(inited + 152) = 0x8000000264B58BA0;
  sub_2649DEF18(v14, v2);
  v22 = sub_264A24308(v18);
  *(v1 + 616) = v22;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
  swift_arrayDestroy();
  v23 = (v16 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_avStreamActivationDelay);
  if ((*(v16 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_avStreamActivationDelay + 8) & 1) == 0)
  {
    v28 = *(v1 + 608);
    v29 = *(v1 + 600);
    v30 = *(v1 + 576);
    v31 = *(v1 + 568);
    v32 = *(v1 + 641);
    v33 = *(v1 + 544);
    v34 = *(v1 + 536);
    v35 = *v23;
    v36 = sub_264B41274();
    (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    *(v37 + 32) = v35;
    *(v37 + 40) = v32;
    *(v37 + 48) = v34;
    *(v37 + 56) = v22;

    sub_2649CD944(0, 0, v33, &unk_264B47130, v37);
    sub_2649DF384(v29, v28);

    sub_2649DEF6C(v31, v30);
LABEL_12:
    swift_unknownObjectRelease();

    v38 = *(v1 + 8);

    return v38();
  }

  v24 = *(v1 + 641);
  v25 = swift_task_alloc();
  *(v1 + 624) = v25;
  *v25 = v1;
  v25[1] = sub_2649FC024;
  v26 = *(v1 + 536);

  return sub_264A01828(v24, v26, v22);
}

uint64_t sub_2649FC024()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  v3 = *(v2 + 536);
  if (v0)
  {
    v4 = sub_264A03330;
  }

  else
  {
    v4 = sub_264A0337C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2649FC16C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2649FC190, v2, 0);
}

uint64_t sub_2649FC190()
{
  v41 = v0;

  v1 = sub_264B418D4();

  if (v1)
  {
    if (v1 != 1)
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v23 = sub_264B40964();
      __swift_project_value_buffer(v23, qword_27FFA71D0);

      v24 = sub_264B40944();
      v25 = sub_264B41494();

      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_24;
      }

      v27 = *(v0 + 40);
      v26 = *(v0 + 48);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_2649CC004(v27, v26, &v40);
      _os_log_impl(&dword_2649C6000, v24, v25, "Invalid media stream type: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x266749940](v29, -1, -1);
      v30 = v28;
      goto LABEL_23;
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 56);
  v4 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_mediaStreamByType;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_264A20B44(v2);
    if (v7)
    {
      v8 = (*(v5 + 56) + 16 * v6);
      *(v0 + 64) = *v8;
      v9 = v8[1];
      swift_unknownObjectRetain();

      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v10 = sub_264B40964();
      __swift_project_value_buffer(v10, qword_27FFA71D0);
      v11 = sub_264B40944();
      v12 = sub_264B41494();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v40 = v14;
        *v13 = 136446210;
        *(v0 + 89) = v2;
        v15 = sub_264B41064();
        v17 = sub_2649CC004(v15, v16, &v40);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_2649C6000, v11, v12, "Stream invalidated, interrupting stream of type: %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x266749940](v14, -1, -1);
        MEMORY[0x266749940](v13, -1, -1);
      }

      ObjectType = swift_getObjectType();
      sub_264A02DF0();
      v19 = swift_allocError();
      *(v0 + 72) = v19;
      *v20 = 9;
      v39 = (*(v9 + 128) + **(v9 + 128));
      v21 = swift_task_alloc();
      *(v0 + 80) = v21;
      *v21 = v0;
      v21[1] = sub_2649FC724;

      return v39(v19, ObjectType, v9);
    }
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v31 = sub_264B40964();
  __swift_project_value_buffer(v31, qword_27FFA71D0);
  v24 = sub_264B40944();
  v32 = sub_264B414A4();
  if (os_log_type_enabled(v24, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40 = v34;
    *v33 = 136446210;
    *(v0 + 88) = v2;
    v35 = sub_264B41064();
    v37 = sub_2649CC004(v35, v36, &v40);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_2649C6000, v24, v32, "Media stream of type: %{public}s not found, unable to interrupt it", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x266749940](v34, -1, -1);
    v30 = v33;
LABEL_23:
    MEMORY[0x266749940](v30, -1, -1);
  }

LABEL_24:

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_2649FC724()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_2649FC850, v2, 0);
}

uint64_t sub_2649FC850()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2649FC8B0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2649FC8D4, v2, 0);
}

uint64_t sub_2649FC8D4()
{
  v41 = v0;

  v1 = sub_264B418D4();

  if (v1)
  {
    if (v1 != 1)
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v23 = sub_264B40964();
      __swift_project_value_buffer(v23, qword_27FFA71D0);

      v24 = sub_264B40944();
      v25 = sub_264B41494();

      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_24;
      }

      v27 = *(v0 + 40);
      v26 = *(v0 + 48);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_2649CC004(v27, v26, &v40);
      _os_log_impl(&dword_2649C6000, v24, v25, "Invalid media stream type: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x266749940](v29, -1, -1);
      v30 = v28;
      goto LABEL_23;
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 56);
  v4 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_mediaStreamByType;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_264A20B44(v2);
    if (v7)
    {
      v8 = (*(v5 + 56) + 16 * v6);
      *(v0 + 64) = *v8;
      v9 = v8[1];
      swift_unknownObjectRetain();

      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v10 = sub_264B40964();
      __swift_project_value_buffer(v10, qword_27FFA71D0);
      v11 = sub_264B40944();
      v12 = sub_264B41494();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v40 = v14;
        *v13 = 136446210;
        *(v0 + 89) = v2;
        v15 = sub_264B41064();
        v17 = sub_2649CC004(v15, v16, &v40);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_2649C6000, v11, v12, "Stream invalidated, interrupting stream of type: %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x266749940](v14, -1, -1);
        MEMORY[0x266749940](v13, -1, -1);
      }

      ObjectType = swift_getObjectType();
      sub_264A02DF0();
      v19 = swift_allocError();
      *(v0 + 72) = v19;
      *v20 = 9;
      v39 = (*(v9 + 128) + **(v9 + 128));
      v21 = swift_task_alloc();
      *(v0 + 80) = v21;
      *v21 = v0;
      v21[1] = sub_2649FCE64;

      return v39(v19, ObjectType, v9);
    }
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v31 = sub_264B40964();
  __swift_project_value_buffer(v31, qword_27FFA71D0);
  v24 = sub_264B40944();
  v32 = sub_264B414A4();
  if (os_log_type_enabled(v24, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40 = v34;
    *v33 = 136446210;
    *(v0 + 88) = v2;
    v35 = sub_264B41064();
    v37 = sub_2649CC004(v35, v36, &v40);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_2649C6000, v24, v32, "Media stream of type: %{public}s not found, unable to interrupt it", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x266749940](v34, -1, -1);
    v30 = v33;
LABEL_23:
    MEMORY[0x266749940](v30, -1, -1);
  }

LABEL_24:

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_2649FCE64()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_264A03388, v2, 0);
}

void sub_2649FCF90(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v38 - v7;
  v9 = sub_264B40104();
  v10 = a2;
  v11 = v9;
  v12 = *(v9 - 8);
  v13 = MEMORY[0x28223BE20](a1, v10);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v38 - v18;
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    sub_264B40094();
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      sub_2649D04D4(v8, &unk_27FF8BFC0, &qword_264B47140);
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v22 = sub_264B40964();
      __swift_project_value_buffer(v22, qword_27FFA71D0);
      v23 = sub_264B40944();
      v24 = sub_264B41494();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_2649C6000, v23, v24, "Failed to convert SessionID", v25, 2u);
        MEMORY[0x266749940](v25, -1, -1);
      }
    }

    else
    {
      v40 = v2;
      (*(v12 + 32))(v19, v8, v11);
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v26 = sub_264B40964();
      __swift_project_value_buffer(v26, qword_27FFA71D0);
      (*(v12 + 16))(v15, v19, v11);
      v27 = sub_264B40944();
      v28 = sub_264B41484();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v38 = v29;
        v39 = swift_slowAlloc();
        v41 = v39;
        *v29 = 136446210;
        sub_264A03218(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v30 = sub_264B41A64();
        v32 = v31;
        v33 = *(v12 + 8);
        v33(v15, v11);
        v34 = sub_2649CC004(v30, v32, &v41);

        v35 = v38;
        *(v38 + 1) = v34;
        v36 = v35;
        _os_log_impl(&dword_2649C6000, v27, v28, "Setting sessionID: %{public}s", v35, 0xCu);
        v37 = v39;
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x266749940](v37, -1, -1);
        MEMORY[0x266749940](v36, -1, -1);
      }

      else
      {

        v33 = *(v12 + 8);
        v33(v15, v11);
      }

      sub_264AA36B4(v19);
      v33(v19, v11);
    }
  }
}

uint64_t sub_2649FD3E0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 88) = a5;
  *(v7 + 16) = a1;
  v8 = sub_264B41844();
  *(v7 + 40) = v8;
  *(v7 + 48) = *(v8 - 8);
  *(v7 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649FD4A8, 0, 0);
}

uint64_t sub_2649FD4A8()
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2649C6000, v2, v3, "Delaying negotiation answer send by %{public}f seconds", v5, 0xCu);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v6 = sub_264B41C04();
  v8 = v7;
  sub_264B41B14();
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_2649FD650;

  return sub_2649FE7A8(v6, v8, 0, 0, 1);
}

uint64_t sub_2649FD650()
{
  v2 = *v1;
  v3 = *v1;
  *(v2 + 72) = v0;

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    (*(v5 + 8))(v4, v6);

    return MEMORY[0x2822009F8](sub_2649FD944, 0, 0);
  }

  else
  {
    v7 = *(v2 + 88);
    (*(v5 + 8))(v4, v6);
    v8 = swift_task_alloc();
    *(v2 + 80) = v8;
    *v8 = v3;
    v8[1] = sub_2649FD82C;
    v9 = *(v2 + 24);
    v10 = *(v2 + 32);

    return sub_264A00454(v7 & 1, v9, v10);
  }
}

uint64_t sub_2649FD82C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2649FD944()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2649FD9A8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 88) = a5;
  *(v7 + 16) = a1;
  v8 = sub_264B41844();
  *(v7 + 40) = v8;
  *(v7 + 48) = *(v8 - 8);
  *(v7 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649FDA70, 0, 0);
}

uint64_t sub_2649FDA70()
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2649C6000, v2, v3, "Delaying negotiation answer send by %{public}f seconds", v5, 0xCu);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v6 = sub_264B41C04();
  v8 = v7;
  sub_264B41B14();
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_2649FDC18;

  return sub_2649FE7A8(v6, v8, 0, 0, 1);
}

uint64_t sub_2649FDC18()
{
  v2 = *v1;
  v3 = *v1;
  *(v2 + 72) = v0;

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    (*(v5 + 8))(v4, v6);

    return MEMORY[0x2822009F8](sub_264A0332C, 0, 0);
  }

  else
  {
    v7 = *(v2 + 88);
    (*(v5 + 8))(v4, v6);
    v8 = swift_task_alloc();
    *(v2 + 80) = v8;
    *v8 = v3;
    v8[1] = sub_264A03344;
    v9 = *(v2 + 24);
    v10 = *(v2 + 32);

    return sub_264A01828(v7 & 1, v9, v10);
  }
}

void sub_2649FDDF4(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v34 = a3;
  v37 = a2;
  v38 = a1;
  v5 = sub_264B3FFD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v10 = sub_264B40964();
  __swift_project_value_buffer(v10, qword_27FFA71D0);
  v11 = sub_264B41484();
  sub_264B3FF94();
  v12 = sub_264B3FFA4();
  v14 = v13;
  (*(v6 + 8))(v9, v5);

  v15 = sub_264B40944();

  if (os_log_type_enabled(v15, v11))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446722;
    v18 = sub_2649CC004(v12, v14, aBlock);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2050;
    *(v16 + 14) = 254;
    *(v16 + 22) = 2082;
    *(v16 + 24) = sub_2649CC004(0xD00000000000001ALL, 0x8000000264B5A4B0, aBlock);
    _os_log_impl(&dword_2649C6000, v15, v11, "%{public}s:%{public}ld %{public}s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v17, -1, -1);
    MEMORY[0x266749940](v16, -1, -1);
  }

  else
  {
  }

  v19 = sub_264B40944();
  v20 = sub_264B41474();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446210;
    v23 = 0x8000000264B58C30;
    v24 = 0xD000000000000019;
    v25 = 0x8000000264B58C50;
    v26 = 0x746169746F67656ELL;
    if (v38 == 3)
    {
      v26 = 0xD000000000000011;
    }

    else
    {
      v25 = 0xEF617461446E6F69;
    }

    if (v38 != 2)
    {
      v24 = v26;
      v23 = v25;
    }

    v27 = 0x646570706F7473;
    if (!v38)
    {
      v27 = 0x64657472617473;
    }

    if (v38 <= 1u)
    {
      v28 = v27;
    }

    else
    {
      v28 = v24;
    }

    if (v38 <= 1u)
    {
      v29 = 0xE700000000000000;
    }

    else
    {
      v29 = v23;
    }

    v30 = sub_2649CC004(v28, v29, aBlock);

    *(v21 + 4) = v30;
    _os_log_impl(&dword_2649C6000, v19, v20, "registering event:%{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x266749940](v22, -1, -1);
    MEMORY[0x266749940](v21, -1, -1);
  }

  v31 = sub_264B41014();

  v32 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = v35;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649FE5C4;
  aBlock[3] = v36;
  v33 = _Block_copy(aBlock);

  [v37 registerEventID:v31 options:0 handler:{v33, v34}];
  _Block_release(v33);
}

uint64_t sub_2649FE318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v16 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = sub_264B41274();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    v15[5] = a1;
    v15[6] = a2;

    sub_264A10C20(0, 0, v11, a5, v15);
  }

  return result;
}

uint64_t sub_2649FE45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2649CD850;

  return sub_264A00958(a5);
}

uint64_t sub_2649FE510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2649E0EE4;

  return sub_264A01FBC(a5);
}

uint64_t sub_2649FE5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_264B40F64();
  if (a3)
  {
    a3 = sub_264B40F64();
  }

  v4(v5, a3);
}

void sub_2649FE684(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t sub_2649FE6B0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_264A0331C;

  return v6(a1);
}

uint64_t sub_2649FE7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_264B41824();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2649FE8A8, 0, 0);
}

uint64_t sub_2649FE8A8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_264B41844();
  v5 = sub_264A03218(&qword_27FF89228, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_264B41AF4();
  sub_264A03218(&qword_27FF89230, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_264B41854();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2649FEA38;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_2649FEA38()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2649FEBF4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2649FEBF4()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_2649FEC60()
{
  result = qword_27FF89180;
  if (!qword_27FF89180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89180);
  }

  return result;
}

uint64_t sub_2649FECCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2649FED34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2649FEE0C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_2649EE328(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_2649FEF10()
{
  result = qword_27FF891B0;
  if (!qword_27FF891B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF891B0);
  }

  return result;
}

unint64_t sub_2649FEF6C()
{
  result = qword_27FF891C8;
  if (!qword_27FF891C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF891C8);
  }

  return result;
}

uint64_t sub_2649FEFF0(uint64_t (*a1)(uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89148, &qword_264B46EB0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2649FF070(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89148, &qword_264B46EB0);

  return sub_2649F3BCC(a1, a2, a3);
}

uint64_t sub_2649FF118(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89148, &qword_264B46EB0);

  return sub_2649F3D70(a1, a2);
}

double block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2649FF1BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2649FF1FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891C0, &qword_264B46FE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_2649FF378(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891C0, &qword_264B46FE0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2649E0EE4;

  return sub_2649F0724(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

void sub_2649FF518(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_2649FF52C(a1, a2, a3, a4);
  }
}

void sub_2649FF52C(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

void sub_2649FF5A8(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    v6 = a1;

    v7 = a2;
  }

  else if (!a4)
  {
    v4 = a1;
  }
}

uint64_t sub_2649FF63C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2649FF67C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_2649F6874(a1, v4, v5, v6);
}

uint64_t sub_2649FF730()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2649FF780(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2649E0EE4;

  return sub_2649F5A98(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2649FF854()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2649FF88C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return sub_2649FE6B0(a1, v4);
}

const char *RPStreamTypeToString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "?";
  }

  else
  {
    return off_279B7A018[a1];
  }
}

uint64_t sub_2649FF968()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2649FF9B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649E0EE4;

  return sub_2649F6BE4(a1, v4, v5, v6, v7);
}

void sub_2649FFA78()
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v0 = sub_264B40964();
  __swift_project_value_buffer(v0, qword_27FFA71D0);
  oslog = sub_264B40944();
  v1 = sub_264B41494();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2649C6000, oslog, v1, "Received unexpected started message", v2, 2u);
    MEMORY[0x266749940](v2, -1, -1);
  }
}

void sub_2649FFB60()
{
  v0 = sub_264B3FFD4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FFA71D0);
  v6 = sub_264B41484();
  sub_264B3FF94();
  v7 = sub_264B3FFA4();
  v9 = v8;
  (*(v1 + 8))(v4, v0);

  v10 = sub_264B40944();

  if (os_log_type_enabled(v10, v6))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136446722;
    v13 = sub_2649CC004(v7, v9, &v15);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2050;
    *(v11 + 14) = 98;
    *(v11 + 22) = 2082;
    *(v11 + 24) = sub_2649CC004(0xD000000000000028, 0x8000000264B5A520, &v15);
    _os_log_impl(&dword_2649C6000, v10, v6, "%{public}s:%{public}ld %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  else
  {
  }
}

void sub_2649FFDD8(uint64_t a1)
{
  v2 = sub_264B40104();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FFA71D0);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_264B40944();
  v9 = sub_264B41494();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    sub_264A03218(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v12 = sub_264B41A64();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_2649CC004(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2649C6000, v8, v9, "Unsupported server side action: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

BOOL sub_264A00048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_264A002C4();
  v4 = sub_264B41624();
  return ((v4 | sub_264B41624()) & 1) == 0;
}

uint64_t sub_264A0011C()
{
  MEMORY[0x266749A30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_264A0015C()
{
  result = qword_27FF89200;
  if (!qword_27FF89200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89200);
  }

  return result;
}

uint64_t objectdestroy_82Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

unint64_t sub_264A002C4()
{
  result = qword_27FF89210;
  if (!qword_27FF89210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89210);
  }

  return result;
}

uint64_t sub_264A00318()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A0038C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649E0EE4;

  return sub_2649FE510(a1, v4, v5, v6, v7);
}

uint64_t sub_264A00454(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 66) = a1;
  return MEMORY[0x2822009F8](sub_264A00474, a2, 0);
}

uint64_t sub_264A00474()
{
  v17 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  *(v0 + 32) = __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 66);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;
    *(v0 + 65) = v4 & 1;
    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v2, v3, "Sending negotiation answer for stream: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v10 = sub_264B41044();
  v12 = v11;
  *(v0 + 40) = v11;
  v13 = swift_task_alloc();
  *(v0 + 48) = v13;
  *v13 = v0;
  v13[1] = sub_264A0067C;
  v14 = *(v0 + 24);

  return sub_264A5973C(4, v14, v10, v12);
}

uint64_t sub_264A0067C()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_264A008F4;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_264A007A4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264A007A4(uint64_t a1)
{
  v13 = v1;
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 66);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    *(v1 + 64) = v4 & 1;
    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v2, v3, "Sent negotiation answer for stream: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_264A008F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A00958(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x2822009F8](sub_264A00978, v1, 0);
}

uint64_t sub_264A00978()
{
  v73 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71D0);

  v2 = sub_264B40944();
  v3 = sub_264B414B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v67[0] = v5;
    *v4 = 136446210;
    v6 = sub_264B40F74();
    v8 = sub_2649CC004(v6, v7, v67);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2649C6000, v2, v3, "received inEvent: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x266749940](v5, -1, -1);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v9 = *(v0 + 184);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState;
  v11 = *(v9 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  if (v11 <= 2)
  {
    if (v11 == 2)
    {
      sub_2649FE684(2);
      sub_2649FE684(2);

      v12 = sub_264B40944();
      v13 = sub_264B41494();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v67[0] = v15;
        *v14 = 136446210;
        v16 = *(v9 + v10);
        *(v0 + 160) = v16;
        sub_2649DDB20(v16);
        v17 = sub_264B41064();
        v19 = sub_2649CC004(v17, v18, v67);

        *(v14 + 4) = v19;
        _os_log_impl(&dword_2649C6000, v12, v13, "receivedEvent while in state: %{public}s, ignoring.", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x266749940](v15, -1, -1);
        v20 = v14;
LABEL_26:
        MEMORY[0x266749940](v20, -1, -1);
      }

LABEL_27:

LABEL_48:
      v63 = *(v0 + 8);

      return v63();
    }

    sub_2649DDB20(*(v9 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState));
    sub_2649FE684(v11);
    sub_2649FE684(2);
  }

  v21 = *(v0 + 176);
  *(v0 + 144) = 0x746169746F67656ELL;
  *(v0 + 152) = 0xEF617461446E6F69;
  sub_264B416F4();
  if (*(v21 + 16))
  {
    v22 = sub_264A20A44(v0 + 16);
    if (v23)
    {
      sub_2649C964C(*(*(v0 + 176) + 56) + 32 * v22, v0 + 56);
      sub_2649C95C0(v0 + 16);
      sub_2649D04D4(v0 + 56, &qword_27FF8BB60, qword_264B44A80);
      v24 = swift_task_alloc();
      *(v0 + 192) = v24;
      *v24 = v0;
      v24[1] = sub_264A01480;
      v25 = *(v0 + 176);

      return sub_2649F9B20(v25);
    }
  }

  v27 = *(v0 + 176);
  sub_2649C95C0(v0 + 16);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  sub_2649D04D4(v0 + 56, &qword_27FF8BB60, qword_264B44A80);
  *(v0 + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89218, &qword_264B470F8);
  *(v0 + 88) = v27;

  sub_2649E7150((v0 + 88), 1, v67);
  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  v29 = v67[0];
  v28 = v67[1];
  *(v0 + 200) = v67[0];
  *(v0 + 208) = v28;
  v31 = v68;
  v30 = v69;
  *(v0 + 216) = v68;
  *(v0 + 224) = v30;
  v32 = v70;
  v33 = v71;
  *(v0 + 232) = v70;
  *(v0 + 240) = v33;
  v34 = v72;
  *(v0 + 248) = v72;
  if (!v31)
  {

    v12 = sub_264B40944();
    v41 = sub_264B41494();

    if (os_log_type_enabled(v12, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v67[0] = v43;
      *v42 = 136315138;
      v44 = sub_264B40F74();
      v46 = sub_2649CC004(v44, v45, v67);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_2649C6000, v12, v41, "inEvent payload not handled: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x266749940](v43, -1, -1);
      v20 = v42;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v54 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v54 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (!v54)
      {
        v50 = v29;
        v51 = v28;
        v52 = v31;
        goto LABEL_46;
      }

      v65 = v30;
      sub_264AA3374(v28, v31);
    }

    else
    {
      v65 = v30;
      if (v29 == 3)
      {

        v35 = sub_264B40944();
        v36 = sub_264B414B4();
        sub_264A02CC4(v29, v28, v31, v65, v32, v33, v34);
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v67[0] = v38;
          *v37 = 136446210;

          v39 = sub_2649CC004(v65, v32, v67);

          *(v37 + 4) = v39;
          _os_log_impl(&dword_2649C6000, v35, v36, "received streamInvalidated for %{public}s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v38);
          MEMORY[0x266749940](v38, -1, -1);
          MEMORY[0x266749940](v37, -1, -1);
        }

        v40 = swift_task_alloc();
        *(v0 + 256) = v40;
        *v40 = v0;
        v40[1] = sub_264A01574;

        return sub_2649FC16C(v65, v32);
      }

      v55 = sub_264B40944();
      v56 = sub_264B41494();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = v32;
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_2649C6000, v55, v56, "Unexpected JSON payload type", v58, 2u);
        MEMORY[0x266749940](v58, -1, -1);

        v50 = v29;
        v51 = v28;
        v52 = v31;
        v30 = v65;
        v53 = v57;
LABEL_47:
        sub_264A02CC4(v50, v51, v52, v30, v53, v33, v34);
        goto LABEL_48;
      }
    }

    v50 = v29;
    v51 = v28;
    v52 = v31;
    v30 = v65;
LABEL_46:
    v53 = v32;
    goto LABEL_47;
  }

  if (!v29)
  {
    v64 = v32;
    v66 = v30;
    v47 = sub_264B40944();
    v48 = sub_264B414B4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2649C6000, v47, v48, "received started", v49, 2u);
      MEMORY[0x266749940](v49, -1, -1);
    }

    sub_2649FCF90(v33, v34);
    sub_264AA1904();
    v50 = v29;
    v51 = v28;
    v52 = v31;
    v53 = v64;
    v30 = v66;
    goto LABEL_47;
  }

  v59 = sub_264B40944();
  v60 = sub_264B414B4();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_2649C6000, v59, v60, "received stopped", v61, 2u);
    MEMORY[0x266749940](v61, -1, -1);
  }

  v62 = swift_task_alloc();
  *(v0 + 264) = v62;
  *v62 = v0;
  v62[1] = sub_264A016F0;

  return sub_264AA1C00();
}

uint64_t sub_264A01480()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264A01574()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_264A01684, v1, 0);
}

uint64_t sub_264A01684()
{
  sub_264A02CC4(v0[25], v0[26], v0[27], v0[28], v0[29], v0[30], v0[31]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_264A016F0()
{
  v2 = *v1;

  v3 = *(v2 + 184);
  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_264A03334, v3, 0);
}

uint64_t sub_264A01828(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 66) = a1;
  return MEMORY[0x2822009F8](sub_264A01848, a2, 0);
}

uint64_t sub_264A01848()
{
  v17 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  *(v0 + 32) = __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 66);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;
    *(v0 + 65) = v4 & 1;
    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v2, v3, "Sending negotiation answer for stream: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v10 = sub_264B41044();
  v12 = v11;
  *(v0 + 40) = v11;
  v13 = swift_task_alloc();
  *(v0 + 48) = v13;
  *v13 = v0;
  v13[1] = sub_264A01A50;
  v14 = *(v0 + 24);

  return sub_264A59FDC(4, v14, v10, v12);
}

uint64_t sub_264A01A50()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_264A03378;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_264A0333C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

void sub_264A01B78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v37 - v6;
  v8 = sub_264B40104();
  v9 = a2;
  v10 = v8;
  v11 = *(v8 - 8);
  v12 = MEMORY[0x28223BE20](a1, v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v37 - v17;
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    sub_264B40094();
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {
      sub_2649D04D4(v7, &unk_27FF8BFC0, &qword_264B47140);
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v21 = sub_264B40964();
      __swift_project_value_buffer(v21, qword_27FFA71D0);
      v22 = sub_264B40944();
      v23 = sub_264B41494();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_2649C6000, v22, v23, "Failed to convert SessionID", v24, 2u);
        MEMORY[0x266749940](v24, -1, -1);
      }
    }

    else
    {
      (*(v11 + 32))(v18, v7, v10);
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v25 = sub_264B40964();
      __swift_project_value_buffer(v25, qword_27FFA71D0);
      (*(v11 + 16))(v14, v18, v10);
      v26 = sub_264B40944();
      v27 = sub_264B41484();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v38 = v28;
        v39 = swift_slowAlloc();
        v40 = v39;
        *v28 = 136446210;
        sub_264A03218(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v29 = sub_264B41A64();
        v31 = v30;
        v32 = *(v11 + 8);
        v32(v14, v10);
        v33 = sub_2649CC004(v29, v31, &v40);

        v34 = v38;
        *(v38 + 1) = v33;
        v35 = v34;
        _os_log_impl(&dword_2649C6000, v26, v27, "Setting sessionID: %{public}s", v34, 0xCu);
        v36 = v39;
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x266749940](v36, -1, -1);
        MEMORY[0x266749940](v35, -1, -1);
      }

      else
      {

        v32 = *(v11 + 8);
        v32(v14, v10);
      }

      sub_2649FFDD8(v18);
      v32(v18, v10);
    }
  }
}

uint64_t sub_264A01FBC(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x2822009F8](sub_264A01FDC, v1, 0);
}

uint64_t sub_264A01FDC()
{
  v70 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71D0);

  v2 = sub_264B40944();
  v3 = sub_264B414B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v64[0] = v5;
    *v4 = 136446210;
    v6 = sub_264B40F74();
    v8 = sub_2649CC004(v6, v7, v64);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2649C6000, v2, v3, "received inEvent: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x266749940](v5, -1, -1);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v9 = *(v0 + 184);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState;
  v11 = *(v9 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState);
  if (v11 <= 2)
  {
    if (v11 == 2)
    {
      sub_2649FE684(2);
      sub_2649FE684(2);

      v12 = sub_264B40944();
      v13 = sub_264B41494();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v64[0] = v15;
        *v14 = 136446210;
        v16 = *(v9 + v10);
        *(v0 + 160) = v16;
        sub_2649DDB20(v16);
        v17 = sub_264B41064();
        v19 = sub_2649CC004(v17, v18, v64);

        *(v14 + 4) = v19;
        _os_log_impl(&dword_2649C6000, v12, v13, "receivedEvent while in state: %{public}s, ignoring.", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x266749940](v15, -1, -1);
        v20 = v14;
LABEL_26:
        MEMORY[0x266749940](v20, -1, -1);
      }

LABEL_27:

LABEL_47:
      v62 = *(v0 + 8);

      return v62();
    }

    sub_2649DDB20(*(v9 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState));
    sub_2649FE684(v11);
    sub_2649FE684(2);
  }

  v21 = *(v0 + 176);
  *(v0 + 144) = 0x746169746F67656ELL;
  *(v0 + 152) = 0xEF617461446E6F69;
  sub_264B416F4();
  if (*(v21 + 16))
  {
    v22 = sub_264A20A44(v0 + 16);
    if (v23)
    {
      sub_2649C964C(*(*(v0 + 176) + 56) + 32 * v22, v0 + 56);
      sub_2649C95C0(v0 + 16);
      sub_2649D04D4(v0 + 56, &qword_27FF8BB60, qword_264B44A80);
      v24 = swift_task_alloc();
      *(v0 + 192) = v24;
      *v24 = v0;
      v24[1] = sub_264A03320;
      v25 = *(v0 + 176);

      return sub_2649FAF74(v25);
    }
  }

  v27 = *(v0 + 176);
  sub_2649C95C0(v0 + 16);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  sub_2649D04D4(v0 + 56, &qword_27FF8BB60, qword_264B44A80);
  *(v0 + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89218, &qword_264B470F8);
  *(v0 + 88) = v27;

  sub_2649E7150((v0 + 88), 1, v64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  v29 = v64[0];
  v28 = v64[1];
  *(v0 + 200) = v64[0];
  *(v0 + 208) = v28;
  v31 = v65;
  v30 = v66;
  *(v0 + 216) = v65;
  *(v0 + 224) = v30;
  v32 = v67;
  v33 = v68;
  *(v0 + 232) = v67;
  *(v0 + 240) = v33;
  v34 = v69;
  *(v0 + 248) = v69;
  if (!v31)
  {

    v12 = sub_264B40944();
    v41 = sub_264B41494();

    if (os_log_type_enabled(v12, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v64[0] = v43;
      *v42 = 136315138;
      v44 = sub_264B40F74();
      v46 = sub_2649CC004(v44, v45, v64);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_2649C6000, v12, v41, "inEvent payload not handled: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x266749940](v43, -1, -1);
      v20 = v42;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v50 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v50 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (v50)
      {
        sub_2649FFB60();
      }

      v54 = v29;
      v55 = v28;
      v56 = v31;
      v57 = v30;
      goto LABEL_46;
    }

    v63 = v30;
    if (v29 == 3)
    {

      v35 = sub_264B40944();
      v36 = sub_264B414B4();
      sub_264A02CC4(v29, v28, v31, v63, v32, v33, v34);
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v64[0] = v38;
        *v37 = 136446210;

        v39 = sub_2649CC004(v63, v32, v64);

        *(v37 + 4) = v39;
        _os_log_impl(&dword_2649C6000, v35, v36, "received streamInvalidated for %{public}s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x266749940](v38, -1, -1);
        MEMORY[0x266749940](v37, -1, -1);
      }

      v40 = swift_task_alloc();
      *(v0 + 256) = v40;
      *v40 = v0;
      v40[1] = sub_264A02AA4;

      return sub_2649FC8B0(v63, v32);
    }

    v51 = sub_264B40944();
    v52 = sub_264B41494();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2649C6000, v51, v52, "Unexpected JSON payload type", v53, 2u);
      MEMORY[0x266749940](v53, -1, -1);
    }

LABEL_39:
    v54 = v29;
    v55 = v28;
    v56 = v31;
    v57 = v63;
LABEL_46:
    sub_264A02CC4(v54, v55, v56, v57, v32, v33, v34);
    goto LABEL_47;
  }

  if (!v29)
  {
    v63 = v30;
    v47 = sub_264B40944();
    v48 = sub_264B414B4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2649C6000, v47, v48, "received started", v49, 2u);
      MEMORY[0x266749940](v49, -1, -1);
    }

    sub_264A01B78(v33, v34);
    sub_2649FFA78();
    goto LABEL_39;
  }

  v58 = sub_264B40944();
  v59 = sub_264B414B4();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_2649C6000, v58, v59, "received stopped", v60, 2u);
    MEMORY[0x266749940](v60, -1, -1);
  }

  v61 = swift_task_alloc();
  *(v0 + 264) = v61;
  *v61 = v0;
  v61[1] = sub_264A02BB4;

  return sub_2649E912C();
}

uint64_t sub_264A02AA4()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_264A03334, v1, 0);
}

uint64_t sub_264A02BB4()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_264A03334, v1, 0);
}

void sub_264A02CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
  }
}

uint64_t sub_264A02D18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2649E0EE4;

  return sub_2649FD9A8(v6, a1, v4, v5, v7, v9, v8);
}

unint64_t sub_264A02DF0()
{
  result = qword_27FF898A0;
  if (!qword_27FF898A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF898A0);
  }

  return result;
}

unint64_t sub_264A02E44()
{
  result = qword_27FF89238;
  if (!qword_27FF89238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89238);
  }

  return result;
}

uint64_t sub_264A02EA0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264A02EE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649E0EE4;

  return sub_2649F93CC(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_197Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264A03030(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649CD850;

  return sub_2649FE45C(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_209Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_264A03140(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2649CD850;

  return sub_2649FD3E0(v6, a1, v4, v5, v7, v9, v8);
}

uint64_t sub_264A03218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_264A03260()
{
  result = qword_27FF89260;
  if (!qword_27FF89260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89260);
  }

  return result;
}

Swift::Bool __swiftcall FeatureFlagsBackedFeatureFlagPrimitives.isFeatureEnabled(_:)(ScreenSharingKit::OnenessFeatureFlags a1)
{
  v1 = *a1;
  v4[3] = &type metadata for OnenessFeatureFlags;
  v4[4] = sub_264A033E8();
  LOBYTE(v4[0]) = v1;
  v2 = sub_264B401C4();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

unint64_t sub_264A033E8()
{
  result = qword_27FF89E40;
  if (!qword_27FF89E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89E40);
  }

  return result;
}

uint64_t sub_264A0343C(char *a1)
{
  v1 = *a1;
  v4[3] = &type metadata for OnenessFeatureFlags;
  v4[4] = sub_264A033E8();
  LOBYTE(v4[0]) = v1;
  v2 = sub_264B401C4();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

unint64_t sub_264A034B8()
{
  result = qword_27FF89268;
  if (!qword_27FF89268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89268);
  }

  return result;
}

uint64_t ScreenContinuityServicesBackedLocalDeviceEligibilityPrimitives.isLocalDeviceEligible.getter()
{
  v0 = sub_264B3FFD4();
  MEMORY[0x28223BE20](v0, v1);
  return sub_264B406D4() & 1;
}

char *SharingBackedAuthenticationPrimitives.init(continuityDevice:)(uint64_t a1)
{
  v26 = a1;
  v2 = sub_264B41544();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264B414F4();
  MEMORY[0x28223BE20](v5, v6);
  v22 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264B40EE4();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_trustDeviceContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v12 = *(*(v11 - 8) + 56);
  v12(&v1[v10], 1, 1, v11);
  v12(&v1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockDeviceContinuation], 1, 1, v11);
  v13 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockGeneration;
  v14 = sub_264B40104();
  v15 = *(*(v14 - 8) + 56);
  v15(&v1[v13], 1, 1, v14);
  v15(&v1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_resetGeneration], 1, 1, v14);
  v12(&v1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_disableDeviceContinuation], 1, 1, v11);
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_approveByMacDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_2649D8B90(0, &qword_27FF89DF0, 0x277D85C78);
  sub_264B40EC4();
  v28 = MEMORY[0x277D84F90];
  sub_264A05738(&qword_27FF88CA0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88CA8, &unk_264B471C0);
  sub_264A05780(&qword_27FF88CB0, &qword_27FF88CA8, &unk_264B471C0);
  sub_264B41684();
  (*(v24 + 104))(v23, *MEMORY[0x277D85260], v25);
  v16 = sub_264B41574();
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277D54C10]) initWithQueue_];
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationManager] = v17;
  v18 = v26;
  sub_2649E3EAC(v26, &v1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice]);
  v19 = type metadata accessor for SharingBackedAuthenticationPrimitives(0);
  v27.receiver = v1;
  v27.super_class = v19;
  v20 = objc_msgSendSuper2(&v27, sel_init);
  [*&v20[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationManager] setDelegate_];
  sub_264A03DE8(v18);
  return v20;
}

uint64_t type metadata accessor for SharingBackedAuthenticationPrimitives(uint64_t a1)
{
  result = qword_27FF892E0;
  if (!qword_27FF892E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264A03DE8(uint64_t a1)
{
  v2 = type metadata accessor for ContinuityDevice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_264A03E44(uint64_t a2@<X8>)
{
  v4 = sub_264B3FF74();
  v5 = [v4 code];

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v5))
  {
LABEL_22:
    __break(1u);
    JUMPOUT(0x264A03FF0);
  }

  switch(v5)
  {
    case 4:
      v8 = xmmword_264B47350;
      goto LABEL_20;
    case 5:
      v12 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 24);
      *a2 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 16);
      *(a2 + 8) = v12;
      v7 = 1;
      goto LABEL_13;
    case 8:
    case 11:
    case 26:
    case 27:
    case 36:
      v6 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 24);
      *a2 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 16);
      *(a2 + 8) = v6;
      v7 = 2;
      goto LABEL_13;
    case 12:
      v10 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 24);
      *a2 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 16);
      *(a2 + 8) = v10;
      v7 = 3;
      goto LABEL_13;
    case 17:
      v8 = xmmword_264B47340;
      goto LABEL_20;
    case 21:
      v11 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 24);
      *a2 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 16);
      *(a2 + 8) = v11;
      *(a2 + 16) = 0;
      goto LABEL_14;
    case 28:
    case 29:
      v9 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 24);
      *a2 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 16);
      *(a2 + 8) = v9;
      v7 = 5;
      goto LABEL_13;
    case 30:
    case 31:
    case 32:
      v8 = xmmword_264B47310;
      goto LABEL_20;
    case 33:
      v13 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 24);
      *a2 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 16);
      *(a2 + 8) = v13;
      v7 = 6;
      goto LABEL_13;
    case 35:
      v8 = xmmword_264B47330;
      goto LABEL_20;
    case 39:
      v8 = xmmword_264B47320;
LABEL_20:
      *a2 = v8;
      *(a2 + 16) = 7;
      break;
    default:
      v14 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 24);
      *a2 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 16);
      *(a2 + 8) = v14;
      v7 = 4;
LABEL_13:
      *(a2 + 16) = v7;
LABEL_14:

      break;
  }
}

uint64_t sub_264A040A0()
{
  v1 = v0[24];
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice;
  v0[25] = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice);
  v0[26] = *(v2 + 8);
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationManager);
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_264A041E8;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A8, &unk_264B474E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_264A04AE0;
  v0[13] = &block_descriptor_85;
  v0[14] = v4;
  [v3 listCandidateDevicesForType:5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264A041E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_264A04858;
  }

  else
  {
    v2 = sub_264A042F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264A042F8(uint64_t a1, uint64_t a2)
{
  v55 = v2;
  v4 = (v2 + 23);
  v3 = v2[23];
  v50 = (v2 + 10);
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_264B416B4();
    sub_2649D8B90(0, &qword_27FF893B0, 0x277D54C08);
    sub_264A0E738();
    sub_264B41444();
    v3 = v2[18];
    v5 = v2[19];
    v6 = v2[20];
    v7 = v2[21];
    v8 = v2[22];
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v10 = ~v9;
    v11 = -v9;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(v3 + 56);

    v6 = v10;
    v7 = 0;
  }

  v13 = ((v6 + 64) >> 6);
  while (1)
  {
    if (v3 < 0)
    {
      v19 = sub_264B416C4();
      if (!v19 || (*v4 = v19, sub_2649D8B90(0, &qword_27FF893B0, 0x277D54C08), swift_dynamicCast(), v18 = *v50, v16 = v7, v17 = v8, !*v50))
      {
LABEL_25:
        sub_264A0E7A0(v3);

        sub_264A0DFC0();
        v13 = swift_allocError();
        *v28 = 0;
        *(v28 + 8) = 0;
        *(v28 + 16) = 7;
        swift_willThrow();
        *v4 = v13;
        v29 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
        if (swift_dynamicCast())
        {

          v30 = v2;
          v31 = v2[10];
          v32 = v2[11];
          v33 = *(v30 + 96);
          swift_allocError();
          *v34 = v31;
          *(v34 + 8) = v32;
          v2 = v30;
          *(v34 + 16) = v33;
          swift_willThrow();
          v35 = v30[23];
LABEL_31:

          v47 = v2[1];

          return v47();
        }

        if (qword_27FF883E0 == -1)
        {
LABEL_28:
          v36 = sub_264B40964();
          __swift_project_value_buffer(v36, qword_27FFA71B8);
          v37 = v13;
          v38 = sub_264B40944();
          v39 = sub_264B41494();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v54 = v41;
            *v40 = 136446210;
            *v50 = v13;
            v42 = v13;
            v43 = sub_264B41064();
            v45 = sub_2649CC004(v43, v44, &v54);

            *(v40 + 4) = v45;
            _os_log_impl(&dword_2649C6000, v38, v39, "Failed to get list of candidate devices with error: %{public}s", v40, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v41);
            MEMORY[0x266749940](v41, -1, -1);
            MEMORY[0x266749940](v40, -1, -1);
          }

          swift_allocError();
          sub_264A03E44(v46);
          swift_willThrow();
          v35 = v13;
          goto LABEL_31;
        }

LABEL_39:
        swift_once();
        goto LABEL_28;
      }
    }

    else
    {
      v14 = v7;
      v15 = v8;
      v16 = v7;
      if (!v8)
      {
        while (1)
        {
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v16 >= v13)
          {
            goto LABEL_25;
          }

          v15 = *(v5 + 8 * v16);
          ++v14;
          if (v15)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

LABEL_14:
      v17 = (v15 - 1) & v15;
      v18 = *(*(v3 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v18)
      {
        goto LABEL_25;
      }
    }

    v20 = [v18 uniqueID];
    if (v20)
    {
      break;
    }

LABEL_8:

    v7 = v16;
    v8 = v17;
  }

  v21 = v20;
  v53 = v18;
  v22 = v13;
  v51 = v2[25];
  v52 = v2[26];
  v23 = sub_264B41044();
  v25 = v24;

  if (v23 != v51 || v25 != v52)
  {
    v27 = sub_264B41AA4();

    v13 = v22;
    v18 = v53;
    if (v27)
    {
      goto LABEL_35;
    }

    goto LABEL_8;
  }

  v18 = v53;
LABEL_35:
  sub_264A0E7A0(v3);

  v49 = v2[1];

  return v49(v18);
}

uint64_t sub_264A04858(uint64_t a1)
{
  v23 = v1;
  swift_willThrow();
  v2 = *(v1 + 216);
  *(v1 + 184) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  if (swift_dynamicCast())
  {

    v5 = *(v1 + 80);
    v4 = *(v1 + 88);
    v6 = *(v1 + 96);
    sub_264A0DFC0();
    swift_allocError();
    *v7 = v5;
    *(v7 + 8) = v4;
    *(v7 + 16) = v6;
    swift_willThrow();
    v8 = *(v1 + 184);
  }

  else
  {

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FFA71B8);
    v10 = v2;
    v11 = sub_264B40944();
    v12 = sub_264B41494();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136446210;
      *(v1 + 80) = v2;
      v15 = v2;
      v16 = sub_264B41064();
      v18 = sub_2649CC004(v16, v17, &v22);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_2649C6000, v11, v12, "Failed to get list of candidate devices with error: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x266749940](v14, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
    }

    sub_264A0DFC0();
    swift_allocError();
    sub_264A03E44(v19);
    swift_willThrow();
    v8 = v2;
  }

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_264A04AE0(uint64_t a1, uint64_t a2, void *a3)
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
    sub_2649D8B90(0, &qword_27FF893B0, 0x277D54C08);
    sub_264A0E738();
    **(*(v4 + 64) + 40) = sub_264B41414();

    return MEMORY[0x282200950](v4);
  }
}

id SharingBackedAuthenticationPrimitives.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingBackedAuthenticationPrimitives.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingBackedAuthenticationPrimitives(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SharingBackedAuthenticationPrimitives.cancelOutstandingRequests()()
{
  v1 = sub_264B40EB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264B40EE4();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *&v0[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_264A05718;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_2;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_264B40EC4();
  v15 = MEMORY[0x277D84F90];
  sub_264A05738(&qword_27FF892C0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_264A05780(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0);
  sub_264B41684();
  MEMORY[0x266748860](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v14);
}

uint64_t sub_264A05080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v51 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v53 = &v49 - v7;
  v8 = sub_264B40104();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v52 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v49 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v23 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v49 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v49 - v28;
  v30 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_trustDeviceContinuation;
  swift_beginAccess();
  sub_2649D046C(a1 + v30, v21, &unk_27FF89360, &unk_264B474A0);
  v31 = *(v23 + 48);
  if (v31(v21, 1, v22) == 1)
  {
    sub_2649D04D4(v21, &unk_27FF89360, &unk_264B474A0);
  }

  else
  {
    (*(v23 + 32))(v29, v21, v22);
    sub_264A0DFC0();
    v32 = swift_allocError();
    *v33 = xmmword_264B47360;
    *(v33 + 16) = 7;
    v57 = v32;
    sub_264B411D4();
    (*(v23 + 8))(v29, v22);
  }

  v34 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockDeviceContinuation;
  swift_beginAccess();
  sub_2649D046C(a1 + v34, v18, &unk_27FF89360, &unk_264B474A0);
  if (v31(v18, 1, v22) == 1)
  {
    sub_2649D04D4(v18, &unk_27FF89360, &unk_264B474A0);
  }

  else
  {
    v35 = v49;
    (*(v23 + 32))(v49, v18, v22);
    sub_264A0DFC0();
    v36 = swift_allocError();
    *v37 = xmmword_264B47360;
    *(v37 + 16) = 7;
    v56 = v36;
    sub_264B411D4();
    (*(v23 + 8))(v35, v22);
  }

  v38 = *(v23 + 56);
  v39 = v52;
  v38(v52, 1, 1, v22);
  swift_beginAccess();
  sub_2649FECCC(v39, a1 + v30, &unk_27FF89360, &unk_264B474A0);
  swift_endAccess();
  v38(v39, 1, 1, v22);
  swift_beginAccess();
  sub_2649FECCC(v39, a1 + v34, &unk_27FF89360, &unk_264B474A0);
  swift_endAccess();
  v40 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockGeneration;
  swift_beginAccess();
  v41 = v53;
  sub_2649D046C(a1 + v40, v53, &unk_27FF8BFC0, &qword_264B47140);
  v43 = v54;
  v42 = v55;
  if ((*(v54 + 48))(v41, 1, v55) == 1)
  {
    return sub_2649D04D4(v41, &unk_27FF8BFC0, &qword_264B47140);
  }

  v45 = v50;
  (*(v43 + 32))(v50, v41, v42);
  v46 = *(a1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationManager);
  v47 = sub_264B400B4();
  [v46 cancelAuthenticationSessionWithID_];

  (*(v43 + 8))(v45, v42);
  v48 = v51;
  (*(v43 + 56))(v51, 1, 1, v42);
  swift_beginAccess();
  sub_2649FECCC(v48, a1 + v40, &unk_27FF8BFC0, &qword_264B47140);
  return swift_endAccess();
}

uint64_t sub_264A056E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_264A05738(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264A05780(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SharingBackedAuthenticationPrimitives.isDevicePairedForMacUnlock()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_264A05860;

  return sub_264A04080();
}

uint64_t sub_264A05860(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_264A059B0, 0, 0);
  }
}

uint64_t sub_264A059B0()
{
  v1 = *(v0 + 24);
  v2 = [v1 enabledAsLock];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t SharingBackedAuthenticationPrimitives.isDeviceAvailableForPairing()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_264A05AB8;

  return sub_264A04080();
}

uint64_t sub_264A05AB8(void *a1)
{
  v4 = *v2;

  if (!v1)
  {
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t SharingBackedAuthenticationPrimitives.pairDeviceForMacUnlock()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_264A05C48;

  return sub_264A04080();
}

uint64_t sub_264A05C48(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_264A05D7C, 0, 0);
  }
}

uint64_t sub_264A05D7C()
{
  v29 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41484();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136446210;
    v10 = [v7 uniqueID];

    if (!v10)
    {
      __break(1u);
      return MEMORY[0x2822008A0](v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v19 = sub_264B41044();
    v21 = v20;

    v22 = sub_2649CC004(v19, v21, &v28);

    *(v8 + 4) = v22;
    _os_log_impl(&dword_2649C6000, v4, v5, "Requesting enablement for device: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  else
  {
  }

  v23 = v0[4];
  v24 = v0[2];
  v25 = *(v24 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  v26 = swift_task_alloc();
  v0[5] = v26;
  v26[2] = v25;
  v26[3] = v24;
  v26[4] = v23;
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_264A05FF0;
  v16 = sub_264A09ED4;
  v15 = 0x8000000264B5A8A0;
  v18 = MEMORY[0x277D84F78] + 8;
  v12 = 0;
  v13 = 0;
  v14 = 0xD000000000000018;
  v17 = v26;

  return MEMORY[0x2822008A0](v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_264A05FF0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_264A0E7D0;
  }

  else
  {

    v2 = sub_264A0E7D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_264A0610C(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = a3;
  v5 = sub_264B40104();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a2, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_trustDeviceContinuation;
  swift_beginAccess();
  sub_2649FECCC(v13, a1 + v16, &unk_27FF89360, &unk_264B474A0);
  swift_endAccess();
  v17 = *(a1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationManager);
  result = [v21 idsDeviceID];
  if (result)
  {
    v19 = result;
    v20 = [v17 requestEnablementForType:5 withIDSDeviceID:result];

    sub_264B400D4();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharingBackedAuthenticationPrimitives.unlockWithAuthenticationToken(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_264A063F4;

  return sub_264A04080();
}

uint64_t sub_264A063F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_264A06528, 0, 0);
  }
}

uint64_t sub_264A06528()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v8 = *(v0 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v8;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_264A06648;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000021, 0x8000000264B5A8C0, sub_264A09F18, v4, v6);
}

uint64_t sub_264A06648()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_264A067C8;
  }

  else
  {

    v2 = sub_264A06764;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264A06764()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A067C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A06834(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v35 = a5;
  v36 = a6;
  v34 = a4;
  v41 = a2;
  v37 = sub_264B40EB4();
  v40 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264B40EE4();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v33 - v19;
  (*(v16 + 16))(&v33 - v19, a1, v15);
  v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  (*(v16 + 32))(v23 + v21, v20, v15);
  v24 = (v23 + v22);
  v26 = v34;
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  v27 = v36;
  *(v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = v36;
  aBlock[4] = sub_264A0E4C8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_76;
  v28 = _Block_copy(aBlock);
  v29 = a3;
  sub_2649DEF18(v26, v25);
  v30 = v27;
  sub_264B40EC4();
  v42 = MEMORY[0x277D84F90];
  sub_264A05738(&qword_27FF892C0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_264A05780(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0);
  v31 = v37;
  sub_264B41684();
  MEMORY[0x266748860](0, v14, v10, v28);
  _Block_release(v28);
  (*(v40 + 8))(v10, v31);
  (*(v38 + 8))(v14, v39);
}

void sub_264A06C00(char *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v57 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v52 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v13 = MEMORY[0x28223BE20](v53, v12);
  v56 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v52 - v16;
  v18 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockGeneration;
  swift_beginAccess();
  v55 = v18;
  sub_2649D046C(&a1[v18], v17, &unk_27FF8BFC0, &qword_264B47140);
  v19 = sub_264B40104();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v54 = v19;
  LODWORD(v18) = v21(v17, 1);
  sub_2649D04D4(v17, &unk_27FF8BFC0, &qword_264B47140);
  if (v18 != 1)
  {
    sub_264A0DFC0();
    v41 = swift_allocError();
    *v42 = xmmword_264B47370;
    *(v42 + 16) = 7;
    v58[0] = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
    sub_264B411D4();
    return;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v23 = *(v22 - 8);
  (*(v23 + 16))(v11, a2, v22);
  (*(v23 + 56))(v11, 0, 1, v22);
  v24 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockDeviceContinuation;
  swift_beginAccess();
  sub_2649FECCC(v11, &a1[v24], &unk_27FF89360, &unk_264B474A0);
  swift_endAccess();
  v25 = [objc_allocWithZone(MEMORY[0x277D54C18]) init];
  v26 = sub_264B40014();
  [v25 setAuthorizationToken_];

  v27 = [a5 idsDeviceID];
  [v25 setIdsDeviceID_];

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v28 = sub_264B40964();
  __swift_project_value_buffer(v28, qword_27FFA71B8);
  v29 = a5;
  v30 = sub_264B40944();
  v31 = sub_264B41484();
  if (os_log_type_enabled(v30, v31))
  {
    v57 = v25;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v58[0] = v33;
    *v32 = 136446210;
    v34 = [v29 uniqueID];

    if (!v34)
    {
      __break(1u);
      return;
    }

    v35 = sub_264B41044();
    v37 = v36;

    v38 = sub_2649CC004(v35, v37, v58);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_2649C6000, v30, v31, "Attempting to unlock paired iPhone with uniqueID: %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x266749940](v33, -1, -1);
    MEMORY[0x266749940](v32, -1, -1);

    v40 = v55;
    v39 = v56;
    v25 = v57;
  }

  else
  {

    v40 = v55;
    v39 = v56;
  }

  v43 = [*&a1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationManager] authenticateForType:6 withOptions:v25];
  sub_264B400D4();

  (*(v20 + 56))(v39, 0, 1, v54);
  swift_beginAccess();
  sub_2649FECCC(v39, &a1[v40], &unk_27FF8BFC0, &qword_264B47140);
  swift_endAccess();
  v44 = a1;
  v45 = sub_264B40944();
  v46 = sub_264B41484();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v58[0] = v48;
    *v47 = 136446210;
    sub_2649D046C(&a1[v40], v39, &unk_27FF8BFC0, &qword_264B47140);
    v49 = sub_264B41064();
    v51 = sub_2649CC004(v49, v50, v58);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_2649C6000, v45, v46, "Unlock generation: %{public}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x266749940](v48, -1, -1);
    MEMORY[0x266749940](v47, -1, -1);
  }
}

uint64_t SharingBackedAuthenticationPrimitives.startListeningForAuthApprovalRequests(delegate:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_264A07288, 0, 0);
}

uint64_t sub_264A07288()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_264A07390;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A07390()
{

  return MEMORY[0x2822009F8](sub_2649F5338, 0, 0);
}

uint64_t sub_264A074A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v33 = a2;
  v7 = sub_264B40EB4();
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264B40EE4();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v27 - v18;
  (*(v16 + 16))(&v27 - v18, a1, v15);
  v20 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v21 = swift_allocObject();
  v23 = v28;
  v22 = v29;
  *(v21 + 2) = a3;
  *(v21 + 3) = v23;
  *(v21 + 4) = v22;
  (*(v16 + 32))(&v21[v20], v19, v15);
  aBlock[4] = sub_264A0E354;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_70;
  v24 = _Block_copy(aBlock);
  v25 = a3;
  swift_unknownObjectRetain();
  sub_264B40EC4();
  v34 = MEMORY[0x277D84F90];
  sub_264A05738(&qword_27FF892C0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_264A05780(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0);
  sub_264B41684();
  MEMORY[0x266748860](0, v14, v10, v24);
  _Block_release(v24);
  (*(v32 + 8))(v10, v7);
  (*(v30 + 8))(v14, v31);
}

uint64_t sub_264A07844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_approveByMacDelegate + 8) = a3;
  swift_unknownObjectWeakAssign();
  [*(a1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationManager) waitForApprovalRequestsForType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  return sub_264B411E4();
}

uint64_t SharingBackedAuthenticationPrimitives.disablePairedDevice()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_264A07944;

  return sub_264A04080();
}

uint64_t sub_264A07944(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_264A07A78, 0, 0);
  }
}

uint64_t sub_264A07A78()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_264A07B88;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000015, 0x8000000264B5A930, sub_264A09F34, v4, v6);
}

uint64_t sub_264A07B88()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_264A07D08;
  }

  else
  {

    v2 = sub_264A07CA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264A07CA4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A07D08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A07D74(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = a7;
  v31[1] = a5;
  v32 = a4;
  v38 = a2;
  v9 = sub_264B40EB4();
  v37 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264B40EE4();
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v31 - v21;
  (*(v18 + 16))(v31 - v21, a1, v17);
  v23 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  (*(v18 + 32))(v24 + v23, v22, v17);
  v26 = v32;
  v25 = v33;
  *(v24 + ((v19 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
  aBlock[4] = v25;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = v34;
  v27 = _Block_copy(aBlock);
  v28 = a3;
  v29 = v26;
  sub_264B40EC4();
  v39 = MEMORY[0x277D84F90];
  sub_264A05738(&qword_27FF892C0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_264A05780(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0);
  sub_264B41684();
  MEMORY[0x266748860](0, v16, v12, v27);
  _Block_release(v27);
  (*(v37 + 8))(v12, v9);
  (*(v35 + 8))(v16, v36);
}

void sub_264A08104(char *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v58 = &v54 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v54 - v19;
  v21 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_resetGeneration;
  swift_beginAccess();
  v59 = v21;
  sub_2649D046C(&a1[v21], v20, &unk_27FF8BFC0, &qword_264B47140);
  v22 = sub_264B40104();
  v56 = *(v22 - 8);
  v57 = v22;
  LODWORD(v21) = (*(v56 + 48))(v20, 1);
  sub_2649D04D4(v20, &unk_27FF8BFC0, &qword_264B47140);
  if (v21 != 1)
  {
    sub_264A0DFC0();
    v38 = swift_allocError();
    *v39 = xmmword_264B47380;
    *(v39 + 16) = 7;
    v60[0] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
    sub_264B411D4();
    return;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v24 = *(v23 - 8);
  (*(v24 + 16))(v9, a2, v23);
  (*(v24 + 56))(v9, 0, 1, v23);
  v25 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_disableDeviceContinuation;
  swift_beginAccess();
  sub_2649FECCC(v9, &a1[v25], &unk_27FF89360, &unk_264B474A0);
  swift_endAccess();
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v26 = sub_264B40964();
  __swift_project_value_buffer(v26, qword_27FFA71B8);
  v27 = a3;
  v28 = sub_264B40944();
  v29 = sub_264B41484();
  v30 = os_log_type_enabled(v28, v29);
  v55 = v14;
  if (v30)
  {
    v54 = v10;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v60[0] = v32;
    *v31 = 136446210;
    v33 = [v27 uniqueID];

    if (!v33)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v34 = sub_264B41044();
    v36 = v35;

    v37 = sub_2649CC004(v34, v36, v60);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_2649C6000, v28, v29, "Attempting to disable paired iPhone with uniqueID: %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x266749940](v32, -1, -1);
    MEMORY[0x266749940](v31, -1, -1);
  }

  else
  {
  }

  v40 = *&a1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationManager];
  v41 = [v27 idsDeviceID];
  if (!v41)
  {
    __break(1u);
    goto LABEL_14;
  }

  v42 = v41;
  v43 = [v40 disableForType:5 withIDSDeviceID:v41];

  v44 = v58;
  sub_264B400D4();

  (*(v56 + 56))(v44, 0, 1, v57);
  v45 = v59;
  swift_beginAccess();
  sub_2649FECCC(v44, &a1[v45], &unk_27FF8BFC0, &qword_264B47140);
  swift_endAccess();
  v46 = a1;
  v47 = sub_264B40944();
  v48 = sub_264B41484();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v60[0] = v50;
    *v49 = 136446210;
    sub_2649D046C(&a1[v45], v55, &unk_27FF8BFC0, &qword_264B47140);
    v51 = sub_264B41064();
    v53 = sub_2649CC004(v51, v52, v60);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_2649C6000, v47, v48, "Reset generation: %{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x266749940](v50, -1, -1);
    MEMORY[0x266749940](v49, -1, -1);
  }
}

uint64_t sub_264A08758()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_264A05860;

  return sub_264A04080();
}

uint64_t sub_264A087E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_264A0E7D4;

  return sub_264A04080();
}

uint64_t sub_264A08878()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649E0EE4;

  return SharingBackedAuthenticationPrimitives.pairDeviceForMacUnlock()();
}

uint64_t sub_264A08908(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649CD850;

  return SharingBackedAuthenticationPrimitives.unlockWithAuthenticationToken(_:)(a1, a2);
}

uint64_t sub_264A089B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649E0EE4;

  return SharingBackedAuthenticationPrimitives.disablePairedDevice()();
}

uint64_t sub_264A08A40(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_264A08A68, 0, 0);
}

uint64_t sub_264A08A68()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_264A08B70;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A08B70()
{

  return MEMORY[0x2822009F8](sub_264A03340, 0, 0);
}

uint64_t sub_264A08EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_264B41244();
  v8[7] = sub_264B41234();
  v10 = sub_264B411C4();
  v8[8] = v10;
  v8[9] = v9;

  return MEMORY[0x2822009F8](sub_264A08F48, v10, v9);
}

uint64_t sub_264A08F48()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_approveByMacDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v3 + 8) + **(v3 + 8));
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_264A090F0;
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);

    return v10(v7, v6, ObjectType, v3);
  }

  else
  {

    (*(v0 + 40))(0, 0xF000000000000000, 0);
    sub_2649DF384(0, 0xF000000000000000);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_264A090F0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = v6[8];
    v8 = v6[9];
    v9 = sub_264A092C0;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    v7 = v6[8];
    v8 = v6[9];
    v9 = sub_264A09224;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_264A09224()
{

  swift_unknownObjectRelease();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  (*(v0 + 40))(v1, v2, 0);
  sub_2649DF384(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264A092C0()
{
  v1 = v0[12];
  v2 = v0[5];

  swift_unknownObjectRelease();
  v3 = v1;
  v2(0, 0xF000000000000000, v1);

  v4 = v0[1];

  return v4();
}

void sub_264A094C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_264B3FF74();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_264B40014();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_264A0956C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_264B41244();
  v5[5] = sub_264B41234();
  v7 = sub_264B411C4();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_264A09604, v7, v6);
}

uint64_t sub_264A09604()
{
  v29 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27[0] = v8;
    *v7 = 136446210;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v10 = sub_264B41064();
    v12 = sub_2649CC004(v10, v11, v27);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2649C6000, v4, v5, "Approval session failed with error: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v13 = v0[4];
  sub_264A03E44(v27);
  v15 = v27[0];
  v14 = v27[1];
  v16 = v28;
  v17 = v13 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_approveByMacDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v19 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    sub_264A0DFC0();
    v21 = swift_allocError();
    v0[9] = v21;
    *v22 = v15;
    *(v22 + 8) = v14;
    *(v22 + 16) = v16;
    v26 = (*(v19 + 16) + **(v19 + 16));
    v23 = swift_task_alloc();
    v0[10] = v23;
    *v23 = v0;
    v23[1] = sub_264A09930;

    return v26(v21, ObjectType, v19);
  }

  else
  {

    sub_264A0E11C(v15, v14, v16);
    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_264A09930()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  swift_unknownObjectRelease();

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_264A09A90, v4, v3);
}

uint64_t sub_264A09A90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A09B08(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(char *, id))
{
  v10 = sub_264B40104();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B400D4();
  v15 = a3;
  v16 = a5;
  v17 = a1;
  a6(v14, v16);

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_264A09C44(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = sub_264B40104();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B400D4();
  v13 = a3;
  v14 = a1;
  a5(v12);

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_264A09F78()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v32[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v32[-v13];
  v15 = sub_264B40F14();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v32[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v21 = v20;
  v22 = sub_264B40F34();
  (*(v16 + 8))(v19, v15);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_trustDeviceContinuation;
  swift_beginAccess();
  sub_2649D046C(v1 + v22, v9, &unk_27FF89360, &unk_264B474A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2649D04D4(v9, &unk_27FF89360, &unk_264B474A0);
    if (qword_27FF883E0 == -1)
    {
LABEL_4:
      v23 = sub_264B40964();
      __swift_project_value_buffer(v23, qword_27FFA71B8);
      v24 = sub_264B40944();
      v25 = sub_264B41494();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_2649C6000, v24, v25, "trustDeviceContinuation is not available.", v26, 2u);
        MEMORY[0x266749940](v26, -1, -1);
      }

      goto LABEL_12;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  (*(v11 + 32))(v14, v9, v10);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v27 = sub_264B40964();
  __swift_project_value_buffer(v27, qword_27FFA71B8);
  v28 = sub_264B40944();
  v29 = sub_264B41484();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2649C6000, v28, v29, "Paired iPhone trusted", v30, 2u);
    MEMORY[0x266749940](v30, -1, -1);
  }

  sub_264B411E4();
  (*(v11 + 8))(v14, v10);
LABEL_12:
  (*(v11 + 56))(v6, 1, 1, v10);
  swift_beginAccess();
  sub_2649FECCC(v6, v1 + v22, &unk_27FF89360, &unk_264B474A0);
  return swift_endAccess();
}

uint64_t sub_264A0A414(uint64_t a1, void *a2)
{
  v3 = v2;
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v48 = &v46 - v15;
  v16 = sub_264B40F14();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  v23 = sub_264B40F34();
  (*(v17 + 8))(v20, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_trustDeviceContinuation;
  swift_beginAccess();
  sub_2649D046C(v3 + v23, v11, &unk_27FF89360, &unk_264B474A0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2649D04D4(v11, &unk_27FF89360, &unk_264B474A0);
    if (qword_27FF883E0 == -1)
    {
LABEL_4:
      v24 = sub_264B40964();
      __swift_project_value_buffer(v24, qword_27FFA71B8);
      v25 = sub_264B40944();
      v26 = sub_264B41494();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_2649C6000, v25, v26, "trustDeviceContinuation is not available.", v27, 2u);
        MEMORY[0x266749940](v27, -1, -1);
      }

      goto LABEL_12;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  (*(v13 + 32))(v48, v11, v12);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v28 = sub_264B40964();
  __swift_project_value_buffer(v28, qword_27FFA71B8);
  v29 = v47;
  v30 = v47;
  v31 = sub_264B40944();
  v32 = sub_264B41484();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v49 = v29;
    v50[0] = v46;
    *v33 = 136446210;
    v34 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v35 = sub_264B41064();
    v37 = sub_2649CC004(v35, v36, v50);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_2649C6000, v31, v32, "Failed to trust paired iPhone with error: %{public}s", v33, 0xCu);
    v38 = v46;
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x266749940](v38, -1, -1);
    MEMORY[0x266749940](v33, -1, -1);
  }

  sub_264A03E44(v50);
  v39 = v50[0];
  v40 = v50[1];
  v41 = v51;
  sub_264A0DFC0();
  v42 = swift_allocError();
  *v43 = v39;
  *(v43 + 8) = v40;
  *(v43 + 16) = v41;
  v50[0] = v42;
  v44 = v48;
  sub_264B411D4();
  (*(v13 + 8))(v44, v12);
LABEL_12:
  (*(v13 + 56))(v8, 1, 1, v12);
  swift_beginAccess();
  sub_2649FECCC(v8, v3 + v23, &unk_27FF89360, &unk_264B474A0);
  return swift_endAccess();
}

void sub_264A0A998(uint64_t a1)
{
  v3 = sub_264B40104();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264B40F14();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_264B40F34();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (qword_27FF883E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = sub_264B40964();
  __swift_project_value_buffer(v15, qword_27FFA71B8);
  (*(v4 + 16))(v7, a1, v3);
  v16 = sub_264B40944();
  v17 = sub_264B41484();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136446210;
    sub_264A05738(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_264B41A64();
    v22 = v21;
    (*(v4 + 8))(v7, v3);
    v23 = sub_2649CC004(v20, v22, &v25);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_2649C6000, v16, v17, "Authentication started: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x266749940](v19, -1, -1);
    MEMORY[0x266749940](v18, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }
}

void sub_264A0ACE4(uint64_t a1)
{
  v105 = a1;
  v2 = sub_264B40104();
  v103 = *(v2 - 8);
  v104 = v2;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v101 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v97 = &v89 - v8;
  MEMORY[0x28223BE20](v7, v9);
  v96 = &v89 - v10;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89370, &qword_264B474B0);
  MEMORY[0x28223BE20](v102, v11);
  v13 = &v89 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v99 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v100 = &v89 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v89 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  v26 = MEMORY[0x28223BE20](v24 - 8, v25);
  v98 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v89 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v106 = &v89 - v34;
  v35 = sub_264B40F14();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v37);
  v39 = (&v89 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  *v39 = v40;
  (*(v36 + 104))(v39, *MEMORY[0x277D85200], v35);
  v41 = v40;
  LOBYTE(v40) = sub_264B40F34();
  (*(v36 + 8))(v39, v35);
  if ((v40 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v42 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockDeviceContinuation;
  swift_beginAccess();
  sub_2649D046C(v1 + v42, v30, &unk_27FF89360, &unk_264B474A0);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_2649D04D4(v30, &unk_27FF89360, &unk_264B474A0);
    if (qword_27FF883E0 == -1)
    {
LABEL_4:
      v43 = sub_264B40964();
      __swift_project_value_buffer(v43, qword_27FFA71B8);
      v44 = sub_264B40944();
      v45 = sub_264B41494();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_2649C6000, v44, v45, "unlockDeviceContinuation is not available.", v46, 2u);
        MEMORY[0x266749940](v46, -1, -1);
      }

      return;
    }

LABEL_27:
    swift_once();
    goto LABEL_4;
  }

  v92 = v42;
  v94 = v32;
  v47 = *(v32 + 32);
  v95 = v31;
  v47(v106, v30, v31);
  v49 = v103;
  v48 = v104;
  v93 = *(v103 + 16);
  v93(v23, v105, v104);
  v50 = *(v49 + 56);
  v91 = v49 + 56;
  v90 = v50;
  v50(v23, 0, 1, v48);
  v51 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockGeneration;
  swift_beginAccess();
  v52 = *(v102 + 48);
  sub_2649D046C(v23, v13, &unk_27FF8BFC0, &qword_264B47140);
  v102 = v51;
  sub_2649D046C(v1 + v51, &v13[v52], &unk_27FF8BFC0, &qword_264B47140);
  v53 = *(v49 + 48);
  if (v53(v13, 1, v48) == 1)
  {
    sub_2649D04D4(v23, &unk_27FF8BFC0, &qword_264B47140);
    if (v53(&v13[v52], 1, v48) == 1)
    {
      v89 = v1;
      sub_2649D04D4(v13, &unk_27FF8BFC0, &qword_264B47140);
LABEL_20:
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v69 = sub_264B40964();
      __swift_project_value_buffer(v69, qword_27FFA71B8);
      v70 = v97;
      v93(v97, v105, v48);
      v71 = sub_264B40944();
      v72 = sub_264B41484();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = v49;
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v107[0] = v75;
        *v74 = 136446210;
        sub_264A05738(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v76 = sub_264B41A64();
        v78 = v77;
        (*(v73 + 8))(v70, v48);
        v79 = sub_2649CC004(v76, v78, v107);

        *(v74 + 4) = v79;
        _os_log_impl(&dword_2649C6000, v71, v72, "Authentication completed: %{public}s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v75);
        MEMORY[0x266749940](v75, -1, -1);
        MEMORY[0x266749940](v74, -1, -1);
      }

      else
      {

        (*(v49 + 8))(v70, v48);
      }

      v80 = v48;
      v81 = v95;
      v82 = v106;
      sub_264B411E4();
      v83 = v94;
      (*(v94 + 8))(v82, v81);
      v84 = v98;
      (*(v83 + 56))(v98, 1, 1, v81);
      v85 = v89;
      v86 = v92;
      swift_beginAccess();
      sub_2649FECCC(v84, v85 + v86, &unk_27FF89360, &unk_264B474A0);
      swift_endAccess();
      v87 = v99;
      v90(v99, 1, 1, v80);
      v88 = v102;
      swift_beginAccess();
      sub_2649FECCC(v87, v85 + v88, &unk_27FF8BFC0, &qword_264B47140);
      swift_endAccess();
      return;
    }

    goto LABEL_12;
  }

  v54 = v100;
  sub_2649D046C(v13, v100, &unk_27FF8BFC0, &qword_264B47140);
  if (v53(&v13[v52], 1, v48) == 1)
  {
    sub_2649D04D4(v23, &unk_27FF8BFC0, &qword_264B47140);
    (*(v49 + 8))(v54, v48);
LABEL_12:
    sub_2649D04D4(v13, &unk_27FF89370, &qword_264B474B0);
    goto LABEL_13;
  }

  v89 = v1;
  v66 = v96;
  (*(v49 + 32))(v96, &v13[v52], v48);
  sub_264A05738(&unk_27FF89390, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v67 = sub_264B40F94();
  v68 = *(v49 + 8);
  v68(v66, v104);
  sub_2649D04D4(v23, &unk_27FF8BFC0, &qword_264B47140);
  v68(v54, v104);
  v48 = v104;
  sub_2649D04D4(v13, &unk_27FF8BFC0, &qword_264B47140);
  if (v67)
  {
    goto LABEL_20;
  }

LABEL_13:
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v55 = sub_264B40964();
  __swift_project_value_buffer(v55, qword_27FFA71B8);
  v56 = v101;
  v93(v101, v105, v48);
  v57 = sub_264B40944();
  v58 = sub_264B41494();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = v49;
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v107[0] = v61;
    *v60 = 136446210;
    sub_264A05738(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v62 = sub_264B41A64();
    v64 = v63;
    (*(v59 + 8))(v56, v48);
    v65 = sub_2649CC004(v62, v64, v107);

    *(v60 + 4) = v65;
    _os_log_impl(&dword_2649C6000, v57, v58, "Authentication completed for a different unlock generation: %{public}s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x266749940](v61, -1, -1);
    MEMORY[0x266749940](v60, -1, -1);
  }

  else
  {

    (*(v49 + 8))(v56, v48);
  }

  (*(v94 + 8))(v106, v95);
}

void sub_264A0B964(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v55 = &v53 - v6;
  v7 = sub_264B40F14();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_264B3FFD4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v16 = sub_264B40964();
  v17 = __swift_project_value_buffer(v16, qword_27FFA71B8);
  v63 = 0x496E6F6973736573;
  v64 = 0xEB00000000203A44;
  sub_264B40104();
  sub_264A05738(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v18 = sub_264B41A64();
  MEMORY[0x266748390](v18);

  v19 = v64;
  v54 = v63;
  v20 = sub_264B414B4();
  sub_264B3FF94();
  v21 = sub_264B3FFA4();
  v23 = v22;
  (*(v12 + 8))(v15, v11);
  v58 = v17;
  v24 = sub_264B40944();
  if (os_log_type_enabled(v24, v20))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v63 = v26;
    *v25 = 136446978;
    v27 = sub_2649CC004(v21, v23, &v63);

    *(v25 + 4) = v27;
    *(v25 + 12) = 2050;
    *(v25 + 14) = 361;
    *(v25 + 22) = 2082;
    *(v25 + 24) = sub_2649CC004(0xD000000000000049, 0x8000000264B5ABA0, &v63);
    *(v25 + 32) = 2082;
    *(v25 + 34) = sub_2649CC004(v54, v19, &v63);
    _os_log_impl(&dword_2649C6000, v24, v20, "%{public}s:%{public}ld %{public}s %{public}s", v25, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v26, -1, -1);
    MEMORY[0x266749940](v25, -1, -1);
  }

  else
  {
  }

  v28 = v61;
  v29 = v62;
  v30 = *&v62[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue];
  *v10 = v30;
  v31 = v60;
  (*(v60 + 104))(v10, *MEMORY[0x277D85200], v28);
  v32 = v30;
  LOBYTE(v30) = sub_264B40F34();
  (*(v31 + 8))(v10, v28);
  if (v30)
  {
    v33 = [v59 appName];
    if (v33)
    {
      v34 = v33;
      v35 = sub_264B41044();
      v37 = v36;

      v38 = sub_264B40944();
      v39 = sub_264B414B4();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v63 = v41;
        *v40 = 136446210;
        *(v40 + 4) = sub_2649CC004(v35, v37, &v63);
        _os_log_impl(&dword_2649C6000, v38, v39, "Approval request received on behalf of: %{public}s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x266749940](v41, -1, -1);
        MEMORY[0x266749940](v40, -1, -1);
      }

      v42 = sub_264B41274();
      v43 = v55;
      (*(*(v42 - 8) + 56))(v55, 1, 1, v42);
      sub_264B41244();
      v44 = v29;
      v45 = v57;

      v46 = sub_264B41234();
      v47 = swift_allocObject();
      v48 = MEMORY[0x277D85700];
      v47[2] = v46;
      v47[3] = v48;
      v47[4] = v44;
      v47[5] = v35;
      v49 = v56;
      v47[6] = v37;
      v47[7] = v49;
      v47[8] = v45;
      sub_264A10C20(0, 0, v43, &unk_264B474D0, v47);
    }

    else
    {
      v50 = sub_264B40944();
      v51 = sub_264B41494();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_2649C6000, v50, v51, "Approval request came with no appName information - it should never happen.", v52, 2u);
        MEMORY[0x266749940](v52, -1, -1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_264A0BFF4(uint64_t a1, void *a2)
{
  v41 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v40 = &v39 - v4;
  v5 = sub_264B40F14();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_264B3FFD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v14 = sub_264B40964();
  __swift_project_value_buffer(v14, qword_27FFA71B8);
  v45 = 0x496E6F6973736573;
  v46 = 0xEB00000000203A44;
  sub_264B40104();
  sub_264A05738(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v15 = sub_264B41A64();
  MEMORY[0x266748390](v15);

  v16 = v46;
  v39 = v45;
  v17 = sub_264B41494();
  sub_264B3FF94();
  v18 = sub_264B3FFA4();
  v20 = v19;
  (*(v10 + 8))(v13, v9);
  v21 = sub_264B40944();
  if (os_log_type_enabled(v21, v17))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v45 = v23;
    *v22 = 136446978;
    v24 = sub_2649CC004(v18, v20, &v45);

    *(v22 + 4) = v24;
    *(v22 + 12) = 2050;
    *(v22 + 14) = 386;
    *(v22 + 22) = 2082;
    *(v22 + 24) = sub_2649CC004(0xD00000000000002ELL, 0x8000000264B5AB70, &v45);
    *(v22 + 32) = 2082;
    *(v22 + 34) = sub_2649CC004(v39, v16, &v45);
    _os_log_impl(&dword_2649C6000, v21, v17, "%{public}s:%{public}ld %{public}s %{public}s", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v23, -1, -1);
    MEMORY[0x266749940](v22, -1, -1);
  }

  else
  {
  }

  v25 = v43;
  v26 = v44;
  v27 = *&v44[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue];
  *v8 = v27;
  v28 = v42;
  (*(v42 + 104))(v8, *MEMORY[0x277D85200], v25);
  v29 = v27;
  LOBYTE(v27) = sub_264B40F34();
  result = (*(v28 + 8))(v8, v25);
  if (v27)
  {
    v31 = sub_264B41274();
    v32 = v40;
    (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
    sub_264B41244();
    v33 = v41;
    v34 = v41;
    v35 = v26;
    v36 = sub_264B41234();
    v37 = swift_allocObject();
    v38 = MEMORY[0x277D85700];
    v37[2] = v36;
    v37[3] = v38;
    v37[4] = v33;
    v37[5] = v35;
    sub_264A10C20(0, 0, v32, &unk_264B474C0, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_264A0C504(uint64_t a1)
{
  v97 = a1;
  v98 = sub_264B40104();
  v100 = *(v98 - 8);
  v3 = MEMORY[0x28223BE20](v98, v2);
  v95 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v91 = &v83 - v6;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89370, &qword_264B474B0);
  MEMORY[0x28223BE20](v96, v7);
  v9 = &v83 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v93 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v94 = &v83 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v83 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v92 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v83 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v99 = &v83 - v30;
  v31 = sub_264B40F14();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v35 = (&v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  *v35 = v36;
  (*(v32 + 104))(v35, *MEMORY[0x277D85200], v31);
  v37 = v36;
  LOBYTE(v36) = sub_264B40F34();
  (*(v32 + 8))(v35, v31);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v38 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_disableDeviceContinuation;
  swift_beginAccess();
  sub_2649D046C(v1 + v38, v26, &unk_27FF89360, &unk_264B474A0);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_2649D04D4(v26, &unk_27FF89360, &unk_264B474A0);
    if (qword_27FF883E0 == -1)
    {
LABEL_4:
      v39 = sub_264B40964();
      __swift_project_value_buffer(v39, qword_27FFA71B8);
      v40 = sub_264B40944();
      v41 = sub_264B41494();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_2649C6000, v40, v41, "disableDeviceContinuation is not available.", v42, 2u);
        MEMORY[0x266749940](v42, -1, -1);
      }

      return;
    }

LABEL_25:
    swift_once();
    goto LABEL_4;
  }

  v87 = v38;
  v89 = v27;
  v90 = v28;
  (*(v28 + 32))(v99, v26, v27);
  v43 = v100;
  v44 = v98;
  v88 = *(v100 + 16);
  v88(v19, v97, v98);
  v45 = *(v43 + 56);
  v86 = v43 + 56;
  v85 = v45;
  v45(v19, 0, 1, v44);
  v46 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_resetGeneration;
  swift_beginAccess();
  v47 = *(v96 + 48);
  sub_2649D046C(v19, v9, &unk_27FF8BFC0, &qword_264B47140);
  v96 = v46;
  v48 = v1 + v46;
  v49 = v44;
  sub_2649D046C(v48, &v9[v47], &unk_27FF8BFC0, &qword_264B47140);
  v50 = *(v43 + 48);
  if (v50(v9, 1, v44) == 1)
  {
    sub_2649D04D4(v19, &unk_27FF8BFC0, &qword_264B47140);
    v51 = v50(&v9[v47], 1, v44);
    v52 = v90;
    if (v51 == 1)
    {
      v84 = v1;
      sub_2649D04D4(v9, &unk_27FF8BFC0, &qword_264B47140);
      v53 = v89;
LABEL_19:
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v72 = sub_264B40964();
      __swift_project_value_buffer(v72, qword_27FFA71B8);
      v73 = sub_264B40944();
      v74 = sub_264B41484();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_2649C6000, v73, v74, "Paired iPhone disabled", v75, 2u);
        v76 = v75;
        v52 = v90;
        MEMORY[0x266749940](v76, -1, -1);
      }

      v77 = v99;
      sub_264B411E4();
      (*(v52 + 8))(v77, v53);
      v78 = v92;
      (*(v52 + 56))(v92, 1, 1, v53);
      v79 = v84;
      v80 = v87;
      swift_beginAccess();
      sub_2649FECCC(v78, v79 + v80, &unk_27FF89360, &unk_264B474A0);
      swift_endAccess();
      v81 = v93;
      v85(v93, 1, 1, v49);
      v82 = v96;
      swift_beginAccess();
      sub_2649FECCC(v81, v79 + v82, &unk_27FF8BFC0, &qword_264B47140);
      swift_endAccess();
      return;
    }

    goto LABEL_12;
  }

  v54 = v94;
  sub_2649D046C(v9, v94, &unk_27FF8BFC0, &qword_264B47140);
  if (v50(&v9[v47], 1, v44) == 1)
  {
    sub_2649D04D4(v19, &unk_27FF8BFC0, &qword_264B47140);
    (*(v100 + 8))(v54, v44);
    v52 = v90;
LABEL_12:
    sub_2649D04D4(v9, &unk_27FF89370, &qword_264B474B0);
    v53 = v89;
    goto LABEL_13;
  }

  v84 = v1;
  v67 = v100;
  v68 = v91;
  (*(v100 + 32))(v91, &v9[v47], v44);
  sub_264A05738(&unk_27FF89390, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v69 = sub_264B40F94();
  v70 = v54;
  v71 = *(v67 + 8);
  v71(v68, v98);
  sub_2649D04D4(v19, &unk_27FF8BFC0, &qword_264B47140);
  v71(v70, v98);
  v53 = v89;
  v49 = v98;
  sub_2649D04D4(v9, &unk_27FF8BFC0, &qword_264B47140);
  v52 = v90;
  if (v69)
  {
    goto LABEL_19;
  }

LABEL_13:
  v55 = v53;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v56 = sub_264B40964();
  __swift_project_value_buffer(v56, qword_27FFA71B8);
  v57 = v95;
  v88(v95, v97, v49);
  v58 = sub_264B40944();
  v59 = sub_264B41494();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v101[0] = v61;
    *v60 = 136446210;
    sub_264A05738(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v62 = sub_264B41A64();
    v63 = v52;
    v65 = v64;
    (*(v100 + 8))(v57, v49);
    v66 = sub_2649CC004(v62, v65, v101);

    *(v60 + 4) = v66;
    _os_log_impl(&dword_2649C6000, v58, v59, "Disable device completed for a different reset generation: %{public}s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x266749940](v61, -1, -1);
    MEMORY[0x266749940](v60, -1, -1);

    (*(v63 + 8))(v99, v55);
  }

  else
  {

    (*(v100 + 8))(v57, v49);
    (*(v52 + 8))(v99, v53);
  }
}

void sub_264A0D088(uint64_t a1, void *a2, void *a3, void *a4, const char *a5, const char *a6, const char *a7, ...)
{
  v114 = a7;
  v110 = a6;
  v108 = a5;
  v117 = a4;
  v118 = a2;
  v121 = a3;
  v119 = a1;
  v120 = sub_264B40104();
  v123 = *(v120 - 8);
  v9 = MEMORY[0x28223BE20](v120, v8);
  v115 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v109 = &v103 - v12;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89370, &qword_264B474B0);
  MEMORY[0x28223BE20](v116, v13);
  v15 = &v103 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v112 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v113 = &v103 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v103 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v111 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v103 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v35);
  v122 = &v103 - v36;
  v37 = sub_264B40F14();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v39);
  v41 = (&v103 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = *(v7 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  *v41 = v42;
  (*(v38 + 104))(v41, *MEMORY[0x277D85200], v37);
  v43 = v42;
  LOBYTE(v42) = sub_264B40F34();
  (*(v38 + 8))(v41, v37);
  if ((v42 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v44 = *v121;
  swift_beginAccess();
  sub_2649D046C(v7 + v44, v32, &unk_27FF89360, &unk_264B474A0);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_2649D04D4(v32, &unk_27FF89360, &unk_264B474A0);
    if (qword_27FF883E0 == -1)
    {
LABEL_4:
      v45 = sub_264B40964();
      __swift_project_value_buffer(v45, qword_27FFA71B8);
      v46 = sub_264B40944();
      v47 = sub_264B41494();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_2649C6000, v46, v47, v114, v48, 2u);
        MEMORY[0x266749940](v48, -1, -1);
      }

      return;
    }

LABEL_26:
    swift_once();
    goto LABEL_4;
  }

  v106 = v44;
  v114 = v34;
  v49 = *(v34 + 32);
  v121 = v33;
  v49(v122, v32, v33);
  v50 = v123;
  v51 = v120;
  v107 = *(v123 + 16);
  v107(v25, v119, v120);
  v52 = *(v50 + 56);
  v105 = v50 + 56;
  v104 = v52;
  v52(v25, 0, 1, v51);
  v53 = *v117;
  swift_beginAccess();
  v54 = *(v116 + 48);
  sub_2649D046C(v25, v15, &unk_27FF8BFC0, &qword_264B47140);
  v117 = v53;
  sub_2649D046C(v53 + v7, &v15[v54], &unk_27FF8BFC0, &qword_264B47140);
  v55 = *(v50 + 48);
  if (v55(v15, 1, v51) == 1)
  {
    sub_2649D04D4(v25, &unk_27FF8BFC0, &qword_264B47140);
    if (v55(&v15[v54], 1, v51) == 1)
    {
      v116 = v7;
      sub_2649D04D4(v15, &unk_27FF8BFC0, &qword_264B47140);
LABEL_20:
      v78 = v118;
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v79 = sub_264B40964();
      __swift_project_value_buffer(v79, qword_27FFA71B8);
      v80 = v78;
      v81 = sub_264B40944();
      v82 = sub_264B41484();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v124[0] = v84;
        *v83 = 136446210;
        v126 = v78;
        v85 = v78;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
        v86 = sub_264B41064();
        v88 = sub_2649CC004(v86, v87, v124);

        *(v83 + 4) = v88;
        _os_log_impl(&dword_2649C6000, v81, v82, v108, v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v84);
        v89 = v84;
        v51 = v120;
        MEMORY[0x266749940](v89, -1, -1);
        MEMORY[0x266749940](v83, -1, -1);
      }

      v90 = v116;
      sub_264A03E44(v124);
      v91 = v124[0];
      v92 = v124[1];
      v93 = v125;
      sub_264A0DFC0();
      v94 = swift_allocError();
      *v95 = v91;
      *(v95 + 8) = v92;
      *(v95 + 16) = v93;
      v124[0] = v94;
      v96 = v121;
      v97 = v122;
      sub_264B411D4();
      v98 = v114;
      (*(v114 + 1))(v97, v96);
      v99 = v111;
      (*(v98 + 7))(v111, 1, 1, v96);
      v100 = v106;
      swift_beginAccess();
      sub_2649FECCC(v99, v90 + v100, &unk_27FF89360, &unk_264B474A0);
      swift_endAccess();
      v101 = v112;
      v104(v112, 1, 1, v51);
      v102 = v117;
      swift_beginAccess();
      sub_2649FECCC(v101, v102 + v90, &unk_27FF8BFC0, &qword_264B47140);
      swift_endAccess();
      return;
    }

    goto LABEL_12;
  }

  v56 = v113;
  sub_2649D046C(v15, v113, &unk_27FF8BFC0, &qword_264B47140);
  if (v55(&v15[v54], 1, v51) == 1)
  {
    sub_2649D04D4(v25, &unk_27FF8BFC0, &qword_264B47140);
    (*(v123 + 8))(v56, v51);
LABEL_12:
    sub_2649D04D4(v15, &unk_27FF89370, &qword_264B474B0);
    goto LABEL_13;
  }

  v116 = v7;
  v74 = v123;
  v75 = v109;
  (*(v123 + 32))(v109, &v15[v54], v51);
  sub_264A05738(&unk_27FF89390, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v76 = sub_264B40F94();
  v77 = *(v74 + 8);
  v77(v75, v120);
  sub_2649D04D4(v25, &unk_27FF8BFC0, &qword_264B47140);
  v77(v56, v120);
  v51 = v120;
  sub_2649D04D4(v15, &unk_27FF8BFC0, &qword_264B47140);
  if (v76)
  {
    goto LABEL_20;
  }

LABEL_13:
  v57 = v118;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v58 = sub_264B40964();
  __swift_project_value_buffer(v58, qword_27FFA71B8);
  v59 = v115;
  v107(v115, v119, v51);
  v60 = v57;
  v61 = sub_264B40944();
  v62 = v51;
  v63 = sub_264B41494();

  if (os_log_type_enabled(v61, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v124[0] = v65;
    *v64 = 136446466;
    sub_264A05738(&qword_27FF88A70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v66 = sub_264B41A64();
    v68 = v67;
    (*(v123 + 8))(v59, v62);
    v69 = sub_2649CC004(v66, v68, v124);

    *(v64 + 4) = v69;
    *(v64 + 12) = 2082;
    v126 = v57;
    v70 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v71 = sub_264B41064();
    v73 = sub_2649CC004(v71, v72, v124);

    *(v64 + 14) = v73;
    _os_log_impl(&dword_2649C6000, v61, v63, v110, v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v65, -1, -1);
    MEMORY[0x266749940](v64, -1, -1);
  }

  else
  {

    (*(v123 + 8))(v59, v62);
  }

  (*(v114 + 1))(v122, v121);
}

void sub_264A0DD50(uint64_t a1)
{
  type metadata accessor for ContinuityDevice(319);
  if (v1 <= 0x3F)
  {
    sub_264A0DE9C(319);
    if (v2 <= 0x3F)
    {
      sub_264A0DF00(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_264A0DE9C(uint64_t a1)
{
  if (!qword_27FF892F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89278, &unk_264B47390);
    v1 = sub_264B41614();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF892F0);
    }
  }
}

void sub_264A0DF00(uint64_t a1)
{
  if (!qword_27FF89D70)
  {
    sub_264B40104();
    v1 = sub_264B41614();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF89D70);
    }
  }
}

uint64_t sub_264A0DF58()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_264A0DFC0()
{
  result = qword_27FF89388;
  if (!qword_27FF89388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89388);
  }

  return result;
}

uint64_t sub_264A0E014()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264A0E05C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649CD850;

  return sub_264A0956C(a1, v4, v5, v7, v6);
}

uint64_t sub_264A0E11C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u)
  {
  }

  return result;
}

uint64_t sub_264A0E134()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_264A0E184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2649E0EE4;

  return sub_264A08EA8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_264A0E27C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264A0E354()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_264A07844(v1, v2, v3);
}

uint64_t sub_264A0E3C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_2649DEF6C(*(v0 + v5), *(v0 + v5 + 8));

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

void sub_264A0E4C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = v6[1];

  sub_264A06C00(v5, v0 + v2, v8, v9, v7);
}

uint64_t objectdestroy_60Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_264A0E670(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

unint64_t sub_264A0E738()
{
  result = qword_27FF893B8;
  if (!qword_27FF893B8)
  {
    sub_2649D8B90(255, &qword_27FF893B0, 0x277D54C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF893B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaTransportTestConfiguration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MediaTransportTestConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_264A0E838()
{
  v1 = v0;
  if ((v0[2])())
  {
    v3 = *v0;
    v2 = v0[1];
    v4 = v1[4];
    type metadata accessor for DragAndDropEventConsumer();
    v5 = swift_allocObject();

    swift_defaultActor_initialize();
    *(v5 + 144) = 0;
    *(v5 + 112) = v3;
    *(v5 + 120) = v2;
    *(v5 + 128) = v4;
    *(v5 + 136) = 0;
    v6 = &unk_27FF893C8;
    v7 = type metadata accessor for DragAndDropEventConsumer;
    v8 = &unk_264B475E8;
  }

  else
  {
    type metadata accessor for EmptyDragAndDropEventConsumer();
    v5 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v5 + 112) = 0;
    v6 = &unk_27FF893C0;
    v7 = type metadata accessor for EmptyDragAndDropEventConsumer;
    v8 = &unk_264B54940;
  }

  sub_264A0E968(v6, v7, v8);
  return v5;
}

uint64_t sub_264A0E940@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264A0E838();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_264A0E968(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264A0E9C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264A0EA0C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_264A0EA64()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264A0EAD0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_264A0EAF4, v2, 0);
}

uint64_t sub_264A0EAF4()
{
  v1 = v0[4];
  if (v1[17])
  {
    sub_264A0F89C();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[2];
    v5 = v0[3];
    v8 = v1[14];
    v7 = v1[15];
    v9 = swift_allocObject();
    v0[5] = v9;
    swift_weakInit();
    v10 = swift_allocObject();
    v0[6] = v10;
    v10[2] = v8;
    v10[3] = v7;
    v10[4] = v9;
    v10[5] = v6;
    v10[6] = v5;
    v0[7] = v1[16];
    sub_264B41244();

    v0[8] = sub_264B41234();
    v12 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A0EC94, v12, v11);
  }
}

uint64_t sub_264A0EC94()
{
  v1 = v0[7];
  v2 = v0[6];
  v3 = v0[4];

  type metadata accessor for DragAndDropEventRouter();
  v4 = swift_allocObject();
  v0[9] = v4;
  type metadata accessor for ServerDragForwardingManager(0);
  swift_allocObject();

  v5 = sub_264AD3A24(&unk_264B47648, v2, v1);

  *(v4 + 16) = v5;
  type metadata accessor for ServerDragSurrogateManager();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F98];
  *(v6 + 48) = 1;
  *(v6 + 16) = &unk_264B47648;
  *(v6 + 24) = v2;
  *(v6 + 32) = v1;
  *(v6 + 40) = v7;
  *(v4 + 24) = v6;
  v5[3] = &off_287657540;
  swift_unknownObjectWeakAssign();

  return MEMORY[0x2822009F8](sub_264A0EDEC, v3, 0);
}

uint64_t sub_264A0EDEC()
{
  *(v0[4] + 136) = v0[9];

  v1 = v0[1];

  return v1();
}

uint64_t sub_264A0EE5C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v6[8] = v8;
  *v8 = v6;
  v8[1] = sub_264A0EF58;

  return v10(a1);
}

uint64_t sub_264A0EF58()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_264A0F104, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_264A0F08C(uint64_t a1)
{
  v2 = *(v1 + 72);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_264A0F104()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  v2 = v0[9];
  if (Strong)
  {
    v3 = Strong;
    sub_264A0F89C();
    v0[11] = swift_allocError();
    *v4 = v2;
    v5 = v2;
    v6 = v2;

    return MEMORY[0x2822009F8](sub_264A0F224, v3, 0);
  }

  else
  {
    v7 = v2;
    v8 = v0[9];
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_264A0F224()
{
  v1 = v0[10];
  if (*(v1 + 136) && (*(v1 + 144) & 1) == 0)
  {
    v2 = v0[11];
    v3 = v0[6];
    *(v1 + 144) = 1;
    v4 = v1;
    v5 = sub_264A0FA34(&qword_27FF893C8, &unk_264B475E8);
    v3(v4, v5, v2);
  }

  v6 = v0[11];

  return MEMORY[0x2822009F8](sub_264A0F08C, 0, 0);
}

uint64_t sub_264A0F320()
{
  v1 = v0[2];
  v2 = *(v1 + 136);
  v0[3] = v2;
  if (v2)
  {
    *(v1 + 136) = 0;
    sub_264B41244();
    v0[4] = sub_264B41234();
    v4 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A0F430, v4, v3);
  }

  else
  {
    sub_264A0F89C();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_264A0F430()
{
  v1 = *(v0 + 16);

  sub_2649DECD8();

  return MEMORY[0x2822009F8](sub_264A0F4A0, v1, 0);
}

uint64_t sub_264A0F4A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A0F504(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return sub_264A0EAD0(a1, a2);
}

uint64_t sub_264A0F5A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264A0F300();
}

uint64_t sub_264A0F634(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264A0F654, v1, 0);
}

uint64_t sub_264A0F654()
{
  v1 = *(v0[3] + 136);
  v0[4] = v1;
  if (v1)
  {
    sub_264B41244();

    v0[5] = sub_264B41234();
    v3 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A0F76C, v3, v2);
  }

  else
  {
    sub_264A0F89C();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_264A0F76C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  *(v0 + 48) = sub_2649DE81C(v2);

  return MEMORY[0x2822009F8](sub_264A0F7F0, v1, 0);
}

uint64_t sub_264A0F7F0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_264A0F858(uint64_t a1)
{
  result = sub_264A0FA34(&qword_27FF893D0, &unk_264B47604);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_264A0F89C()
{
  result = qword_27FF893D8;
  if (!qword_27FF893D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF893D8);
  }

  return result;
}

uint64_t sub_264A0F8F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A0F928()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264A0F970(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264A0EE5C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_264A0FA34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DragAndDropEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit24DragAndDropEventConsumerC0H5ErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_264A0FA8C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_264A0FAE0(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_264A0FB3C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_264A0FB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264A0FC50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264B40104();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for HIDUpdateInputDevicesMessage(uint64_t a1)
{
  result = qword_27FF893E0;
  if (!qword_27FF893E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A0FD54(uint64_t a1)
{
  sub_264B40104();
  if (v1 <= 0x3F)
  {
    sub_264A0FDD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264A0FDD8()
{
  if (!qword_27FF893F0)
  {
    v0 = sub_264B411B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF893F0);
    }
  }
}

uint64_t sub_264A0FE28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89428, &qword_264B47788);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A105F8();
  sub_264B41BD4();
  v13 = 0;
  sub_264B40104();
  sub_264A10760(&qword_27FF89430, MEMORY[0x277CC95F8]);
  sub_264B41A24();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for HIDUpdateInputDevicesMessage(0) + 20));
    v11[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89410, &qword_264B47780);
    sub_264A107A4(&qword_27FF89438, sub_264A1081C, MEMORY[0x277D83948]);
    sub_264B41A24();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_264A10028@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_264B40104();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893F8, &qword_264B47778);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for HIDUpdateInputDevicesMessage(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A105F8();
  sub_264B41BC4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = v12;
  v16 = v15;
  v17 = v26;
  v32 = 0;
  sub_264A10760(&qword_27FF89408, MEMORY[0x277CC9618]);
  v18 = v29;
  v19 = v27;
  sub_264B41984();
  v20 = *(v17 + 32);
  v23 = v16;
  v20(v16, v6, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89410, &qword_264B47780);
  v31 = 1;
  sub_264A107A4(&qword_27FF89418, sub_264A1064C, MEMORY[0x277D83978]);
  sub_264B41984();
  (*(v28 + 8))(v11, v19);
  v21 = v23;
  *(v23 + *(v24 + 20)) = v30;
  sub_264A106A0(v21, v25);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_264A10704(v21);
}

uint64_t sub_264A103B8()
{
  if (*v0)
  {
    return 0x7665447475706E69;
  }

  else
  {
    return 0x4449656369766564;
  }
}

uint64_t sub_264A103FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656369766564 && a2 == 0xE800000000000000;
  if (v6 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7665447475706E69 && a2 == 0xEC00000073656369)
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

uint64_t sub_264A104E8(uint64_t a1)
{
  v2 = sub_264A105F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A10524(uint64_t a1)
{
  v2 = sub_264A105F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_264A10590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_264B400C4())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);

    sub_264A16F8C(v7, v8);
  }
}

unint64_t sub_264A105F8()
{
  result = qword_27FF89400;
  if (!qword_27FF89400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89400);
  }

  return result;
}

unint64_t sub_264A1064C()
{
  result = qword_27FF89420;
  if (!qword_27FF89420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89420);
  }

  return result;
}

uint64_t sub_264A106A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HIDUpdateInputDevicesMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A10704(uint64_t a1)
{
  v2 = type metadata accessor for HIDUpdateInputDevicesMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264A10760(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_264B40104();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_264A107A4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89410, &qword_264B47780);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264A1081C()
{
  result = qword_27FF89440;
  if (!qword_27FF89440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89440);
  }

  return result;
}

unint64_t sub_264A10884()
{
  result = qword_27FF89448;
  if (!qword_27FF89448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89448);
  }

  return result;
}

unint64_t sub_264A108DC()
{
  result = qword_27FF89450;
  if (!qword_27FF89450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89450);
  }

  return result;
}

unint64_t sub_264A10934()
{
  result = qword_27FF89458;
  if (!qword_27FF89458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89458);
  }

  return result;
}

uint64_t sub_264A1099C(uint64_t a1, uint64_t a2)
{
  v4 = sub_264B40104();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264A10A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_264B40104();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for IdentifiablePoint(uint64_t a1)
{
  result = qword_27FF89460;
  if (!qword_27FF89460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A10AD8(uint64_t a1)
{
  sub_264B40104();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_264A10B60()
{
  result = qword_27FF89470;
  if (!qword_27FF89470)
  {
    sub_264B40104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89470);
  }

  return result;
}

uint64_t sub_264A10BB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264B40104();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_264A10C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_264A16208(a3, v26 - v11);
  v13 = sub_264B41274();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2649D04D4(v12, &qword_27FF898C0, &unk_264B44190);
  }

  else
  {
    sub_264B41264();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_264B411C4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_264B41074() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_2649D04D4(a3, &qword_27FF898C0, &unk_264B44190);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2649D04D4(a3, &qword_27FF898C0, &unk_264B44190);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_264A10F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_264A16208(a3, v26 - v11);
  v13 = sub_264B41274();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2649D04D4(v12, &qword_27FF898C0, &unk_264B44190);
  }

  else
  {
    sub_264B41264();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_264B411C4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_264B41074() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89518, &qword_264B47A70);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_2649D04D4(a3, &qword_27FF898C0, &unk_264B44190);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2649D04D4(a3, &qword_27FF898C0, &unk_264B44190);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89518, &qword_264B47A70);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t ActivityAssertionManager.Assertion.deinit()
{
  v1 = v0;
  v2 = sub_264B40104();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v6 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v19 - v9;
  v19[1] = OBJC_IVAR____TtCC16ScreenSharingKit24ActivityAssertionManager9Assertion_manager;
  Strong = swift_weakLoadStrong();
  v12 = OBJC_IVAR____TtCC16ScreenSharingKit24ActivityAssertionManager9Assertion_identifier;
  v13 = sub_264B41274();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  (*(v3 + 16))(v6, v0 + v12, v2);
  sub_264B41244();

  v14 = sub_264B41234();
  v15 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 2) = v14;
  *(v16 + 3) = v17;
  *(v16 + 4) = Strong;
  (*(v3 + 32))(&v16[v15], v6, v2);
  sub_264A10F10(0, 0, v10, &unk_264B47920, v16);

  (*(v3 + 8))(v1 + v12, v2);
  swift_weakDestroy();
  return v1;
}

uint64_t sub_264A1146C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_264B41244();
  v5[5] = sub_264B41234();
  v7 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A11508, v7, v6);
}

uint64_t sub_264A11508()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    sub_264A120C0(*(v0 + 32));
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264A1158C(uint64_t a1)
{
  v4 = *(sub_264B40104() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_264A1146C(a1, v6, v7, v8, v1 + v5);
}

uint64_t ActivityAssertionManager.Assertion.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_264B40104();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v6 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v19 - v9;
  v19[1] = OBJC_IVAR____TtCC16ScreenSharingKit24ActivityAssertionManager9Assertion_manager;
  Strong = swift_weakLoadStrong();
  v12 = OBJC_IVAR____TtCC16ScreenSharingKit24ActivityAssertionManager9Assertion_identifier;
  v13 = sub_264B41274();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  (*(v3 + 16))(v6, v0 + v12, v2);
  sub_264B41244();

  v14 = sub_264B41234();
  v15 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 2) = v14;
  *(v16 + 3) = v17;
  *(v16 + 4) = Strong;
  (*(v3 + 32))(&v16[v15], v6, v2);
  sub_264A10F10(0, 0, v10, &unk_264B47928, v16);

  (*(v3 + 8))(v1 + v12, v2);
  swift_weakDestroy();
  return swift_deallocClassInstance();
}

uint64_t objectdestroyTm()
{
  v1 = sub_264B40104();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264A119D8(uint64_t a1)
{
  v4 = *(sub_264B40104() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264A1146C(a1, v6, v7, v8, v1 + v5);
}

uint64_t ActivityAssertionManager.deinit()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  if (*(v10 + 16))
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v2 = sub_264B40964();
    __swift_project_value_buffer(v2, qword_27FFA71B8);

    v3 = sub_264B40944();
    v4 = sub_264B414A4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      v6 = *(v10 + 16);

      *(v5 + 4) = v6;

      _os_log_impl(&dword_2649C6000, v3, v4, "ActivityAssertionManager deinitialized with %ld un-released assertions", v5, 0xCu);
      MEMORY[0x266749940](v5, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
  }

  v7 = OBJC_IVAR____TtC16ScreenSharingKit24ActivityAssertionManager__assertions;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89490, &qword_264B47978);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  return v1;
}

uint64_t ActivityAssertionManager.__deallocating_deinit()
{
  ActivityAssertionManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t ActivityAssertionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89498, &qword_264B47980);
  sub_264B40A44();
  return v0;
}

uint64_t ActivityAssertionManager.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89490, &qword_264B47978);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v8 - v4;
  v6 = OBJC_IVAR____TtC16ScreenSharingKit24ActivityAssertionManager__assertions;
  v8[1] = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89498, &qword_264B47980);
  sub_264B40A44();
  (*(v2 + 32))(v0 + v6, v5, v1);
  return v0;
}

uint64_t sub_264A11E7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264A11EF0()
{
  v0 = sub_264B40104();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13[-v7];
  type metadata accessor for ActivityAssertionManager.Assertion(0);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtCC16ScreenSharingKit24ActivityAssertionManager9Assertion_identifier;
  sub_264B400F4();
  swift_weakInit();
  swift_weakAssign();
  (*(v1 + 16))(v5, v9 + v10, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = sub_264B40A74();
  sub_264A12BC4(v8, v5);
  (*(v1 + 8))(v8, v0);
  v11(v13, 0);

  return v9;
}

void sub_264A120C0(uint64_t a1)
{
  v2 = sub_264B40104();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v22 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  v11 = sub_264AA0270(a1, v22[0]);

  if (v11)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = sub_264B40A74();
    sub_264AAA010(a1, v10);
    sub_2649D04D4(v10, &unk_27FF8BFC0, &qword_264B47140);
    v12(v22, 0);
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v13 = sub_264B40964();
    __swift_project_value_buffer(v13, qword_27FFA71B8);
    (*(v3 + 16))(v6, a1, v2);
    v14 = sub_264B40944();
    v15 = sub_264B41494();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136446210;
      sub_264A10760(&qword_27FF88A70, MEMORY[0x277CC9628]);
      v18 = sub_264B41A64();
      v20 = v19;
      (*(v3 + 8))(v6, v2);
      v21 = sub_2649CC004(v18, v20, v22);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_2649C6000, v14, v15, "Attempted to release an assertion (%{public}s) that was already released, this is a bug, ignoring", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x266749940](v17, -1, -1);
      MEMORY[0x266749940](v16, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }
}

uint64_t ActivityAssertionManager.occurringActivityPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894A0, &qword_264B47988);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894A8, &qword_264B47990);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89490, &qword_264B47978);
  sub_264B40A54();
  swift_endAccess();
  sub_2649CB4C8(&qword_27FF894B0, &qword_27FF894A0, &qword_264B47988, MEMORY[0x277CBCEC8]);
  sub_264B40AF4();
  (*(v1 + 8))(v4, v0);
  sub_2649CB4C8(&qword_27FF894B8, &qword_27FF894A8, &qword_264B47990, MEMORY[0x277CBCC08]);
  v10 = sub_264B40AB4();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t sub_264A126D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894A0, &qword_264B47988);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894A8, &qword_264B47990);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89490, &qword_264B47978);
  sub_264B40A54();
  swift_endAccess();
  sub_2649CB4C8(&qword_27FF894B0, &qword_27FF894A0, &qword_264B47988, MEMORY[0x277CBCEC8]);
  sub_264B40AF4();
  (*(v1 + 8))(v4, v0);
  sub_2649CB4C8(&qword_27FF894B8, &qword_27FF894A8, &qword_264B47990, MEMORY[0x277CBCC08]);
  v10 = sub_264B40AB4();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t sub_264A12940@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v4;
  return result;
}

uint64_t sub_264A129C4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_264A12A9C(_BYTE *a1, char a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v9 = v5;
  v12 = *v9;
  sub_264B41B84();
  v13 = a2 & 1;
  MEMORY[0x266748E90](v13);
  v14 = sub_264B41BB4();
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = *(v12 + 48);
      if (*(v18 + v16) == v13)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v13) = *(v18 + v16);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v9;
    sub_264A143D0(v13, v16, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v9 = v21;
    result = 1;
  }

  *a1 = v13;
  return result;
}

uint64_t sub_264A12BC4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_264A10760(&qword_27FF89470, MEMORY[0x277CC9600]);
  v34 = a2;
  v12 = sub_264B40F84();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_264A10760(&unk_27FF89390, MEMORY[0x277CC9610]);
      v22 = sub_264B40F94();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_264A14548(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_264A12EA4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A12EDC(uint64_t a1)
{
  sub_264A12FBC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_264A12FBC(uint64_t a1)
{
  if (!qword_27FF894D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89498, &qword_264B47980);
    v1 = sub_264B40AA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF894D0);
    }
  }
}

uint64_t sub_264A13028(uint64_t a1)
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

uint64_t sub_264A130D8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_264B41B84();
  sub_264B41084();
  v8 = sub_264B41BB4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_264B41AA4() & 1) != 0)
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

    sub_264A147C4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_264A13228(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_264B41B84();
  sub_264B41084();

  v5 = sub_264B41BB4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v26 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v25 = ~v6;
    v8 = 0xEF6573556E49656ELL;
    v27 = v4;
    v9 = 0xE700000000000000;
    while (1)
    {
      v10 = *(*(v4 + 48) + v7);
      v28 = v7;
      if (v10 <= 1)
      {
        if (*(*(v4 + 48) + v7))
        {
          v11 = 0x6E49656369766564;
        }

        else
        {
          v11 = 0x6E776F6E6B6E75;
        }

        if (*(*(v4 + 48) + v7))
        {
          v12 = 0xEB00000000657355;
        }

        else
        {
          v12 = 0xE700000000000000;
        }
      }

      else if (v10 == 2)
      {
        v11 = 0xD000000000000011;
        v12 = 0x8000000264B58BE0;
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0x6F68706F7263696DLL;
        }

        else
        {
          v11 = 0x6E496172656D6163;
        }

        if (v10 == 3)
        {
          v12 = v8;
        }

        else
        {
          v12 = 0xEB00000000657355;
        }
      }

      if (a2 == 3)
      {
        v13 = 0x6F68706F7263696DLL;
      }

      else
      {
        v13 = 0x6E496172656D6163;
      }

      if (a2 == 3)
      {
        v14 = v8;
      }

      else
      {
        v14 = 0xEB00000000657355;
      }

      if (a2 == 2)
      {
        v13 = 0xD000000000000011;
        v14 = 0x8000000264B58BE0;
      }

      if (a2)
      {
        v15 = 0x6E49656369766564;
      }

      else
      {
        v15 = 0x6E776F6E6B6E75;
      }

      if (a2)
      {
        v9 = 0xEB00000000657355;
      }

      v16 = a2 <= 1u ? v15 : v13;
      v17 = a2 <= 1u ? v9 : v14;
      if (v11 == v16 && v12 == v17)
      {
        break;
      }

      v18 = v8;
      v19 = sub_264B41AA4();

      if (v19)
      {
        goto LABEL_43;
      }

      v7 = (v28 + 1) & v25;
      v4 = v27;
      v8 = v18;
      v9 = 0xE700000000000000;
      if (((*(v26 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    result = 0;
    LOBYTE(a2) = *(*(v27 + 48) + v28);
  }

  else
  {
LABEL_41:
    v20 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v23;
    sub_264A14944(a2, v20, isUniquelyReferenced_nonNull_native);
    *v23 = v29;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_264A13528(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *v3;
  sub_264B41B84();
  sub_264B403B4();
  v9 = sub_264B41BB4();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(*(v8 + 48) + 16 * v11 + 8);
      v14 = sub_264B40374();

      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v18 = (*(v8 + 48) + 16 * v11);
    v20 = *v18;
    v19 = v18[1];
    *a1 = v20;
    a1[1] = v19;
    v21 = v19;
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;
    v16 = a3;
    sub_264A14CA8(a2, v16, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v22;
    *a1 = a2;
    a1[1] = v16;
    return 1;
  }
}

uint64_t sub_264A13684(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_264B41724();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      sub_264B41B84();
      MEMORY[0x266748E90](v19);
      result = sub_264B41BB4();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_264A138CC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_264B40104();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89508, &unk_264B47A40);
  result = sub_264B41724();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_264A10760(&qword_27FF89470, MEMORY[0x277CC9600]);
      result = sub_264B40F84();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_264A13C14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894F0, &qword_264B47A20);
  result = sub_264B41724();
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
      sub_264B41B84();
      sub_264B41084();
      result = sub_264B41BB4();
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

uint64_t sub_264A13E74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894F8, &qword_264B47A28);
  result = sub_264B41724();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_264B41B84();
      sub_264B41084();

      result = sub_264B41BB4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_264A14170(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89510, &unk_264B4DDD0);
  result = sub_264B41724();
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
      sub_264B41B84();
      sub_264B403B4();
      result = sub_264B41BB4();
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

uint64_t sub_264A143D0(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_264A13684(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_264A14E4C(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_264A155AC(v8 + 1, a4, a5);
  }

  v11 = *v6;
  sub_264B41B84();
  MEMORY[0x266748E90](v7 & 1);
  result = sub_264B41BB4();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + a2) != (v7 & 1))
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v7 & 1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_264B41AD4();
  __break(1u);
  return result;
}

uint64_t sub_264A14548(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_264A138CC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_264A14F7C();
      goto LABEL_12;
    }

    sub_264A157C4(v11 + 1);
  }

  v13 = *v3;
  sub_264A10760(&qword_27FF89470, MEMORY[0x277CC9600]);
  v14 = sub_264B40F84();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_264A10760(&unk_27FF89390, MEMORY[0x277CC9610]);
      v22 = sub_264B40F94();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_264B41AD4();
  __break(1u);
  return result;
}

uint64_t sub_264A147C4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_264A13C14(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_264A151B4();
      goto LABEL_16;
    }

    sub_264A15ACC(v8 + 1);
  }

  v10 = *v4;
  sub_264B41B84();
  sub_264B41084();
  result = sub_264B41BB4();
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

      result = sub_264B41AA4();
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
  result = sub_264B41AD4();
  __break(1u);
  return result;
}

uint64_t sub_264A14944(uint64_t result, unint64_t a2, char a3)
{
  v33 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_46;
  }

  if (a3)
  {
    sub_264A13E74(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_264A15310();
      goto LABEL_46;
    }

    sub_264A15D04(v5 + 1);
  }

  v7 = 0x6E776F6E6B6E75;
  v8 = *v3;
  sub_264B41B84();
  sub_264B41084();

  result = sub_264B41BB4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  v32 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v30 = v8;
    v31 = ~v9;
    v10 = 0xEF6573556E49656ELL;
    v11 = 0x6F68706F7263696DLL;
    v12 = 0x6E496172656D6163;
    do
    {
      v13 = *(*(v8 + 48) + a2);
      if (v13 <= 1)
      {
        if (*(*(v8 + 48) + a2))
        {
          v15 = 0x6E49656369766564;
        }

        else
        {
          v15 = v7;
        }

        v14 = 0xEB00000000657355;
        if (*(*(v8 + 48) + a2))
        {
          v16 = 0xEB00000000657355;
        }

        else
        {
          v16 = 0xE700000000000000;
        }
      }

      else
      {
        v14 = 0xEB00000000657355;
        if (v13 == 2)
        {
          v15 = 0xD000000000000011;
          v16 = 0x8000000264B58BE0;
        }

        else
        {
          if (v13 == 3)
          {
            v15 = v11;
          }

          else
          {
            v15 = v12;
          }

          if (v13 == 3)
          {
            v16 = v10;
          }

          else
          {
            v16 = 0xEB00000000657355;
          }
        }
      }

      v17 = v11;
      v18 = v12;
      if (v33 != 3)
      {
        v11 = v12;
      }

      v19 = v10;
      if (v33 != 3)
      {
        v10 = 0xEB00000000657355;
      }

      if (v33 == 2)
      {
        v11 = 0xD000000000000011;
        v10 = 0x8000000264B58BE0;
      }

      v20 = v7;
      if (v33)
      {
        v21 = 0x6E49656369766564;
      }

      else
      {
        v21 = v7;
      }

      if (!v33)
      {
        v14 = 0xE700000000000000;
      }

      v22 = v33 <= 1u ? v21 : v11;
      v23 = v33 <= 1u ? v14 : v10;
      if (v15 == v22 && v16 == v23)
      {
        goto LABEL_49;
      }

      v24 = sub_264B41AA4();

      if (v24)
      {
        goto LABEL_50;
      }

      a2 = (a2 + 1) & v31;
      v7 = v20;
      v10 = v19;
      v8 = v30;
      v11 = v17;
      v12 = v18;
    }

    while (((*(v32 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_46:
  v25 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + a2) = v33;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_49:

LABEL_50:
  result = sub_264B41AD4();
  __break(1u);
  return result;
}

void sub_264A14CA8(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    sub_264A14170(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_264A15450();
      goto LABEL_12;
    }

    sub_264A15FD0(v9 + 1);
  }

  v11 = *v4;
  sub_264B41B84();
  sub_264B403B4();
  v12 = sub_264B41BB4();
  v13 = -1 << *(v11 + 32);
  a3 = v12 & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    do
    {
      v15 = *(*(v11 + 48) + 16 * a3 + 8);
      v16 = sub_264B40374();

      if (v16)
      {
        goto LABEL_15;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_12:
  v17 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = a1;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_264B41AD4();
  __break(1u);
}

void *sub_264A14E4C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_264B41714();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_264A14F7C()
{
  v1 = v0;
  v2 = sub_264B40104();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89508, &unk_264B47A40);
  v7 = *v0;
  v8 = sub_264B41714();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_264A151B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894F0, &qword_264B47A20);
  v2 = *v0;
  v3 = sub_264B41714();
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

void *sub_264A15310()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894F8, &qword_264B47A28);
  v2 = *v0;
  v3 = sub_264B41714();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_264A15450()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89510, &unk_264B4DDD0);
  v2 = *v0;
  v3 = sub_264B41714();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        result = v19;
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

uint64_t sub_264A155AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_264B41724();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      sub_264B41B84();
      MEMORY[0x266748E90](v18);
      result = sub_264B41BB4();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_264A157C4(uint64_t a1)
{
  v2 = v1;
  v34 = sub_264B40104();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89508, &unk_264B47A40);
  v8 = sub_264B41724();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_264A10760(&qword_27FF89470, MEMORY[0x277CC9600]);
      result = sub_264B40F84();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_264A15ACC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894F0, &qword_264B47A20);
  result = sub_264B41724();
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
      sub_264B41B84();

      sub_264B41084();
      result = sub_264B41BB4();
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

uint64_t sub_264A15D04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894F8, &qword_264B47A28);
  result = sub_264B41724();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_264B41B84();
      sub_264B41084();

      result = sub_264B41BB4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_264A15FD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89510, &unk_264B4DDD0);
  result = sub_264B41724();
  v5 = result;
  if (*(v3 + 16))
  {
    v28 = v1;
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
      v19 = *v17;
      v18 = v17[1];
      sub_264B41B84();
      v20 = v18;
      sub_264B403B4();
      result = sub_264B41BB4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v20;
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

        v2 = v28;
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

uint64_t sub_264A16208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A16278()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264A162B0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_264A163A4;

  return v5(v2 + 32);
}