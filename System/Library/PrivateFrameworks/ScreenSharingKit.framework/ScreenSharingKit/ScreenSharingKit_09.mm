uint64_t sub_264AB0FD0()
{
  v1 = v0[18];
  v2 = OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient;
  v0[19] = OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient;
  v3 = *(v1 + v2);
  if (v3)
  {
    [v3 setDelegate_];
    v4 = *(v1 + v2);
    v0[20] = v4;
    if (v4)
    {
      v0[2] = v0;
      v0[3] = sub_264AB1168;
      v5 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B678, &qword_264B50F00);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_264AB12D8;
      v0[13] = &block_descriptor_13;
      v0[14] = v5;
      [v4 invalidate_];

      return MEMORY[0x282200938](v0 + 2);
    }

    v1 = v0[18];
    v2 = v0[19];
  }

  *(v1 + v2) = 0;
  v6 = (v1 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler);
  v7 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler);
  v8 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler + 8);
  *v6 = 0;
  v6[1] = 0;
  sub_2649CB67C(v7, v8);
  v9 = v0[1];

  return v9();
}

uint64_t sub_264AB1168()
{

  return MEMORY[0x2822009F8](sub_264AB1248, 0, 0);
}

uint64_t sub_264AB1248()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  v3 = *(v2 + v1);
  v4 = *(v0 + 144);
  *(v4 + *(v0 + 152)) = 0;

  v5 = (v4 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler);
  v6 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler);
  v7 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler + 8);
  *v5 = 0;
  v5[1] = 0;
  sub_2649CB67C(v6, v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_264AB12D8(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_264AB130C(_BYTE *a1, uint64_t a2)
{
  *(v3 + 152) = a2;
  *(v3 + 160) = v2;
  *(v3 + 184) = *a1;
  return MEMORY[0x2822009F8](sub_264AB1334, 0, 0);
}

uint64_t sub_264AB1334()
{
  if (*(v0 + 152))
  {
    v1 = sub_264B40F54();
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 168) = v1;
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_264AB149C;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B680, &unk_264B50F10);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_264AB18E8;
  *(v0 + 104) = &block_descriptor_11;
  *(v0 + 112) = v4;
  [v3 sendAsynchronousMessage:v1 withIdentifier:v2 + 1 targetAccessQueue:0 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_264AB149C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_264AB1618;
  }

  else
  {
    v2 = sub_264AB15AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264AB15AC()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264AB1618(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[22];
  swift_willThrow();

  sub_264AB19F0();
  swift_allocError();
  *v4 = v3;
  swift_willThrow();
  v5 = v1[1];

  return v5();
}

void sub_264AB16FC(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient);
  if (a1)
  {
    if (v3 != a1)
    {
      return;
    }
  }

  else if (v3)
  {
    return;
  }

  if (qword_27FF883F0 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AE28);
  v5 = sub_264B40944();
  v6 = sub_264B41494();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2649C6000, v5, v6, "Connection to Annotation UI Service was interrupted", v7, 2u);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v8 = v2 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler;
  v9 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler);
  if (v9)
  {
    v10 = *(v8 + 8);
    sub_2649E24BC();
    v11 = swift_allocError();
    *v12 = 7;

    v9(v11);
    sub_2649CB67C(v9, v10);
  }
}

uint64_t sub_264AB18E8(uint64_t a1, uint64_t a2, void *a3)
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
    **(*(v4 + 64) + 40) = sub_264B40F64();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  return sub_2649C964C(a2 + 32, a1 + 32);
}

{
  return sub_2649C964C(a2 + 32, a1 + 32);
}

unint64_t sub_264AB19F0()
{
  result = qword_27FF8B688;
  if (!qword_27FF8B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B688);
  }

  return result;
}

uint64_t static MediaTransportStreamState.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      if (v3 == 4)
      {
        return 1;
      }
    }

    else if (v2 == 5 && v3 == 5)
    {
      return 1;
    }
  }

  else if (*a1)
  {
    if (v2 == 1 && v3 == 1)
    {
      return 1;
    }
  }

  else if (!*a2)
  {
    return 1;
  }

  return 0;
}

uint64_t MediaTransportStreamState.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

BOOL sub_264AB1B28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 3)
  {
    if (v2 != 4)
    {
      return v2 == 5 && v3 == 5;
    }

    if (v3 == 4)
    {
      return 1;
    }
  }

  else
  {
    if (*a1)
    {
      return v2 == 1 && v3 == 1;
    }

    if (!*a2)
    {
      return 1;
    }
  }

  return 0;
}

BOOL static MediaTransportStreamState.< infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 == 5)
    {
      return 1;
    }
  }

  else
  {
    if (v2 == 1)
    {
      return (v3 & 0xFE) == 4;
    }

    if (*a1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 >= 6;
    }

    if (!v4)
    {
      return (0x32u >> v3) & 1;
    }
  }

  return 0;
}

unint64_t sub_264AB1BE8()
{
  result = qword_27FF8B690;
  if (!qword_27FF8B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B690);
  }

  return result;
}

BOOL sub_264AB1C3C(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 == 5)
    {
      return 1;
    }
  }

  else
  {
    if (v2 == 1)
    {
      return (v3 & 0xFE) == 4;
    }

    if (*a1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 >= 6;
    }

    if (!v4)
    {
      return (0x32u >> v3) & 1;
    }
  }

  return 0;
}

BOOL sub_264AB1CA0(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 == 4)
  {
    if (v2 == 5)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == 1)
    {
      return (v2 & 0xFE) != 4;
    }

    if (*a2)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 >= 6;
    }

    if (!v4)
    {
      return (0xDu >> v2) & 1;
    }
  }

  return 1;
}

BOOL sub_264AB1D04(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 == 5)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == 1)
    {
      return (v3 & 0xFE) != 4;
    }

    if (*a1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 >= 6;
    }

    if (!v4)
    {
      return (0xDu >> v3) & 1;
    }
  }

  return 1;
}

BOOL sub_264AB1D68(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 == 4)
  {
    if (v2 == 5)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == 1)
    {
      return (v2 & 0xFE) == 4;
    }

    if (*a2)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 >= 6;
    }

    if (!v4)
    {
      return (0x32u >> v2) & 1;
    }
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for MediaTransportStreamState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaTransportStreamState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

ScreenSharingKit::AnnotationUIServicesMessageID_optional __swiftcall AnnotationUIServicesMessageID.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010004uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_264AB1F58()
{
  result = qword_27FF8B698;
  if (!qword_27FF8B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B698);
  }

  return result;
}

uint64_t sub_264AB1FAC()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1 + 1);
  return sub_264B41BB4();
}

uint64_t sub_264AB2024(uint64_t a1)
{
  v2 = *v1;
  sub_264B41B84();
  MEMORY[0x266748E90](v2 + 1);
  return sub_264B41BB4();
}

double sub_264AB20EC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_264AB20F8()
{
  result = sub_264B403C4();
  if (!v0)
  {
    v5 = v2;
    sub_264B40384();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AA8, &qword_264B44E78);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_264B44150;
    *(v3 + 32) = 2;
    *(v3 + 40) = v5;
    v4 = v5;
    sub_264B40284();
  }

  return result;
}

void sub_264AB21CC()
{
  v0 = sub_264B3FFD4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF88410 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FF8AE88);
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
    v22 = v12;
    *v11 = 136446722;
    v13 = sub_2649CC004(v7, v9, &v22);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2050;
    *(v11 + 14) = 53;
    *(v11 + 22) = 2082;
    *(v11 + 24) = sub_2649CC004(0x2928656D6F486F67, 0xE800000000000000, &v22);
    _os_log_impl(&dword_2649C6000, v10, v6, "%{public}s:%{public}ld %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  else
  {
  }

  v14 = sub_264B40944();
  v15 = sub_264B414B4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = 12;
    *(v16 + 12) = 2048;
    *(v16 + 14) = 64;
    _os_log_impl(&dword_2649C6000, v14, v15, "Dispatching event with page: %ld and usage %ld", v16, 0x16u);
    MEMORY[0x266749940](v16, -1, -1);
  }

  mach_absolute_time();
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  v18 = sub_264B41464();

  sub_264AB2548(v18);
  mach_absolute_time();
  v19 = IOHIDEventCreateKeyboardEvent();
  v20 = sub_264B41464();

  sub_264AB2548(v20);
}

uint64_t sub_264AB2548(uint64_t a1)
{
  v2 = v1;
  *&v50 = a1;
  v54[5] = *MEMORY[0x277D85DE8];
  v49 = sub_264B40264();
  MEMORY[0x28223BE20](v49, v3);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264B3FFD4();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF88410 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v10 = sub_264B40964();
    v11 = __swift_project_value_buffer(v10, qword_27FF8AE88);
    v12 = sub_264B41484();
    sub_264B3FF94();
    v13 = sub_264B3FFA4();
    v15 = v14;
    (*(v6 + 8))(v9, v5);

    v52 = v11;
    v16 = sub_264B40944();

    if (os_log_type_enabled(v16, v12))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v54[0] = v18;
      *v17 = 136446722;
      v19 = sub_2649CC004(v13, v15, v54);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2050;
      *(v17 + 14) = 66;
      *(v17 + 22) = 2082;
      *(v17 + 24) = sub_2649CC004(0xD000000000000019, 0x8000000264B5F6A0, v54);
      _os_log_impl(&dword_2649C6000, v16, v12, "%{public}s:%{public}ld %{public}s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v18, -1, -1);
      MEMORY[0x266749940](v17, -1, -1);
    }

    else
    {
    }

    v20 = v51;
    v21 = v49;
    v22 = v50;
    v23 = OBJC_IVAR____TtC16ScreenSharingKit29UHIDBackedSystemEventConsumer_deviceID;
    v24 = sub_264B40104();
    (*(*(v24 - 8) + 16))(v20, v2 + v23, v24);
    *(v20 + *(v21 + 20)) = 2;
    v53[3] = MEMORY[0x277D77A78];
    v53[4] = MEMORY[0x277D77A70];
    v53[0] = v22;
    v25 = v22;
    sub_264B40204();
    v27 = v26;
    sub_264AB3950(v54);
    __swift_destroy_boxed_opaque_existential_0(v53);
    v48 = v27;
    v29 = *(v27 + 16);
    if (!v29)
    {
      break;
    }

    v30 = v2[14];
    v2 = (v48 + 40);
    *&v28 = 136315138;
    v50 = v28;
    v49 = v30;
    while (1)
    {
      v31 = *(v2 - 1);
      v32 = *v2;
      sub_2649DEF18(v31, *v2);
      v9 = v52;
      v33 = sub_264B40944();
      v34 = sub_264B414B4();
      if (os_log_type_enabled(v33, v34))
      {
        break;
      }

LABEL_8:
      v2 += 2;
      sub_264B40274();
      sub_2649DEF6C(v31, v32);
      if (!--v29)
      {
        goto LABEL_33;
      }
    }

    v35 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v54[0] = v5;
    *v35 = v50;
    v36 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v36 != 2)
      {
        goto LABEL_19;
      }

      v6 = *(v31 + 16);
      v38 = *(v31 + 24);
    }

    else
    {
      if (!v36)
      {
        if ((v32 & 0xFF000000000000) != 0)
        {
          v37 = v31;
        }

        else
        {
          v37 = 0;
        }

        goto LABEL_32;
      }

      v6 = v31;
      v38 = v31 >> 32;
    }

    if (v6 == v38)
    {
LABEL_19:
      v37 = 0;
      goto LABEL_32;
    }

    if (v36 != 2)
    {
      if (v6 < v31 || v6 >= v31 >> 32)
      {
        goto LABEL_35;
      }

      v47 = sub_264B3FEA4();
      if (!v47)
      {
        __break(1u);
LABEL_41:
        __break(1u);
      }

      v9 = (v32 & 0x3FFFFFFFFFFFFFFFLL);
      v41 = sub_264B3FEC4();
      v40 = v6 - v41;
      if (__OFSUB__(v6, v41))
      {
        goto LABEL_37;
      }

LABEL_31:
      v37 = *(v47 + v40);
LABEL_32:
      LOBYTE(v53[0]) = v37;
      v42 = sub_264B41064();
      v44 = sub_2649CC004(v42, v43, v54);

      *(v35 + 4) = v44;
      _os_log_impl(&dword_2649C6000, v33, v34, "dispatching report with ID: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x266749940](v5, -1, -1);
      MEMORY[0x266749940](v35, -1, -1);

      v20 = v51;
      goto LABEL_8;
    }

    if (v6 >= *(v31 + 16))
    {
      if (v6 >= *(v31 + 24))
      {
        goto LABEL_36;
      }

      v47 = sub_264B3FEA4();
      if (!v47)
      {
        goto LABEL_41;
      }

      v9 = (v32 & 0x3FFFFFFFFFFFFFFFLL);
      v39 = sub_264B3FEC4();
      v40 = v6 - v39;
      if (__OFSUB__(v6, v39))
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

LABEL_33:

  return sub_264AB39B8(v20, MEMORY[0x277D77AA8]);
}

uint64_t sub_264AB2B2C()
{

  v1 = OBJC_IVAR____TtC16ScreenSharingKit29UHIDBackedSystemEventConsumer_deviceID;
  v2 = sub_264B40104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for UHIDBackedSystemEventConsumer(uint64_t a1)
{
  result = qword_27FF8B6B0;
  if (!qword_27FF8B6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264AB2C08(uint64_t a1)
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

uint64_t sub_264AB2CE0()
{
  v13 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71B8);

  v2 = sub_264B40944();
  v3 = sub_264B41484();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v4;
    type metadata accessor for UHIDBackedSystemEventConsumer(0);

    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v2, v3, "%{public}s did invalidate", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  sub_264B40284();
  v10 = v0[1];

  return v10();
}

uint64_t sub_264AB2EB4(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v2[20] = type metadata accessor for ControlMessage(0);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AB2F48, v1, 0);
}

uint64_t sub_264AB2F48()
{
  v50 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  sub_2649CB5C0(v1, (v0 + 2));

  v3 = sub_264B40944();
  v4 = sub_264B41484();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v49 = v7;
    *v6 = 136446466;
    v0[17] = v5;
    type metadata accessor for UHIDBackedSystemEventConsumer(0);

    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v49);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = v0[5];
    v12 = __swift_project_boxed_opaque_existential_1(v0 + 2, v11);
    v0[14] = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 11);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
    __swift_project_boxed_opaque_existential_1(v0 + 11, v0[14]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0(v0 + 11);
    v14 = sub_264B41C44();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v17 = sub_2649CC004(v14, v16, &v49);

    *(v6 + 14) = v17;
    _os_log_impl(&dword_2649C6000, v3, v4, "%{public}s did receive message: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v18 = v0[18];
  v19 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v20 + 8))(v19, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = v0[21];
  if (EnumCaseMultiPayload != 1)
  {
    sub_264AB39B8(v22, type metadata accessor for ControlMessage);

    v37 = sub_264B40944();
    v38 = sub_264B41494();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = v0[19];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49 = v41;
      *v40 = 136446210;
      v0[15] = v39;
      type metadata accessor for UHIDBackedSystemEventConsumer(0);

      v42 = sub_264B41064();
      v44 = sub_2649CC004(v42, v43, &v49);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_2649C6000, v37, v38, "%{public}s error decoding system event", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x266749940](v41, -1, -1);
      MEMORY[0x266749940](v40, -1, -1);
    }

    goto LABEL_14;
  }

  v23 = v22[1];
  if (v23)
  {
    v24 = *v22;
    v26 = v22[2];
    v25 = v22[3];

    sub_264A18774(v24, v23, v26, v25);
    v27 = sub_264B40944();
    v28 = sub_264B41494();

    sub_264A187D4(v24, v23, v26, v25);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v0[19];
      v30 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v48;
      *v30 = 136446466;
      v0[16] = v29;
      type metadata accessor for UHIDBackedSystemEventConsumer(0);

      v31 = sub_264B41064();
      v33 = sub_2649CC004(v31, v32, &v49);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2082;
      v0[7] = v24;
      v0[8] = v23;
      v0[9] = v26;
      v0[10] = v25;
      sub_264A18774(v24, v23, v26, v25);
      v34 = sub_264B41064();
      v36 = sub_2649CC004(v34, v35, &v49);

      *(v30 + 14) = v36;
      _os_log_impl(&dword_2649C6000, v27, v28, "%{public}s unsupported event type: %{public}s received", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v48, -1, -1);
      MEMORY[0x266749940](v30, -1, -1);
    }

    sub_264A187D4(v24, v23, v26, v25);
LABEL_14:
    v45 = 0;
    goto LABEL_15;
  }

  sub_264AB21CC();
  v45 = 1;
LABEL_15:

  v46 = v0[1];

  return v46(v45);
}

uint64_t sub_264AB3524()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649E0EE4;

  return sub_264AB3764();
}

uint64_t sub_264AB35C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264AB2CC0();
}

uint64_t sub_264AB3650(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CBEFC;

  return sub_264AB2EB4(a1);
}

unint64_t sub_264AB36E4(uint64_t a1)
{
  result = sub_264AB370C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_264AB370C()
{
  result = qword_27FF8B6C0;
  if (!qword_27FF8B6C0)
  {
    type metadata accessor for UHIDBackedSystemEventConsumer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B6C0);
  }

  return result;
}

uint64_t sub_264AB3784()
{
  v13 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71B8);

  v2 = sub_264B40944();
  v3 = sub_264B41484();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v4;
    type metadata accessor for UHIDBackedSystemEventConsumer(0);

    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v2, v3, "%{public}s did activate", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  sub_264AB20F8();
  v10 = v0[1];

  return v10();
}

uint64_t sub_264AB3950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B6C8, &unk_264B51240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264AB39B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264AB3A24()
{
  sub_264B41B84();
  sub_264B41084();

  return sub_264B41BB4();
}

uint64_t sub_264AB3B20(uint64_t a1)
{
  sub_264B41084();
}

uint64_t sub_264AB3C08(uint64_t a1)
{
  sub_264B41B84();
  sub_264B41084();

  return sub_264B41BB4();
}

unint64_t sub_264AB3D00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_264AB3F78(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_264AB3D30(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64657472617473;
  v5 = 0x8000000264B58C30;
  v6 = 0xD000000000000019;
  v7 = 0xD000000000000011;
  v8 = 0x8000000264B58C50;
  if (v2 != 3)
  {
    v7 = 0x746169746F67656ELL;
    v8 = 0xEF617461446E6F69;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x646570706F7473;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_264AB3EBC()
{
  result = qword_27FF8B6D0;
  if (!qword_27FF8B6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8B6D8, qword_264B512B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B6D0);
  }

  return result;
}

unint64_t sub_264AB3F24()
{
  result = qword_27FF8B6E0;
  if (!qword_27FF8B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B6E0);
  }

  return result;
}

unint64_t sub_264AB3F78(uint64_t a1, uint64_t a2)
{
  v2 = sub_264B418D4();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_264AB3FC4()
{
  result = qword_27FF8B6E8;
  if (!qword_27FF8B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B6E8);
  }

  return result;
}

uint64_t MediaStreamType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F65646976;
  }

  else
  {
    return 0x6F69647561;
  }
}

ScreenSharingKit::MediaStreamType_optional __swiftcall MediaStreamType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264B418D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_264AB40B4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6F65646976;
  }

  else
  {
    v2 = 0x6F69647561;
  }

  if (*a2)
  {
    v3 = 0x6F65646976;
  }

  else
  {
    v3 = 0x6F69647561;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_264B41AA4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_264AB4138()
{
  result = qword_27FF8B6F0;
  if (!qword_27FF8B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B6F0);
  }

  return result;
}

uint64_t sub_264AB418C()
{
  sub_264B41B84();
  sub_264B41084();

  return sub_264B41BB4();
}

uint64_t sub_264AB41FC(uint64_t a1)
{
  sub_264B41084();
}

uint64_t sub_264AB4250(uint64_t a1)
{
  sub_264B41B84();
  sub_264B41084();

  return sub_264B41BB4();
}

uint64_t sub_264AB42BC@<X0>(char *a2@<X8>)
{
  v3 = sub_264B418D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_264AB431C(uint64_t *a1@<X8>)
{
  v2 = 0x6F69647561;
  if (*v1)
  {
    v2 = 0x6F65646976;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

unint64_t sub_264AB4350()
{
  result = qword_27FF8B6F8;
  if (!qword_27FF8B6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8B700, &qword_264B51440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B6F8);
  }

  return result;
}

uint64_t dispatch thunk of MediaTransportStream.activate()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2649CD850;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MediaTransportStream.invalidate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649CD850;

  return v7(a1, a2);
}

unint64_t sub_264AB46DC()
{
  result = qword_27FF8B708;
  if (!qword_27FF8B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B708);
  }

  return result;
}

uint64_t sub_264AB4744(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F8, &unk_264B51890);
    v2 = sub_264B418B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2649C964C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_264A23FD8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_264A23FD8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_264A23FD8(v31, v32);
    result = sub_264B416D4();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_264A23FD8(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_264AB4A0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896D8, &qword_264B483D8);
    v2 = sub_264B418B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_264A23FD8(&v22, v24);
        sub_264A23FD8(v24, v25);
        sub_264A23FD8(v25, &v23);
        result = sub_264A20ACC(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_264A23FD8(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_264A23FD8(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_264AB4C64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F8, &unk_264B51890);
    v2 = sub_264B418B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    sub_2649DEF18(v17, v18);
    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_264A23FD8(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_264A23FD8(v33, v34);
    result = sub_264B416D4();
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v7 + 8 * (v20 >> 6))) == 0)
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
        v25 = *(v7 + 8 * v21);
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*(v7 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_264A23FD8(v34, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_264AB4F2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F8, &unk_264B51890);
    v2 = sub_264B418B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_264A23FD8(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_264A23FD8(v29, v30);
    result = sub_264B416D4();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_264A23FD8(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_264AB51F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF896F8, &unk_264B51890);
    v2 = sub_264B418B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_264A5EC94();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_264A23FD8(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_264A23FD8(v31, v32);
    result = sub_264B416D4();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_264A23FD8(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_264AB54B4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_264A12A64(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_264AB5590(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v12[2] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(a1 + 48) + ((v9 << 10) | (16 * v10));
    sub_264A13528(v12, *v11, *(v11 + 8));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_264AB5690(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v45 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B7A0, &qword_264B51590);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v44 = &v40 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B870, &qword_264B518A0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v40 - v20;
  LOBYTE(v20) = *(a1 + 16);
  v23 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
  v22 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
  v24 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16);
  v52 = *a1;
  v53 = v20;
  v46 = v1;
  v47 = v23;
  v48 = v22;
  v49 = v24;
  sub_264ACB170(v23, v22, v24);
  if (_s16ScreenSharingKit0aB7SessionC0abD5StateO2eeoiySbAE_AEtFZ_0(&v52, &v47))
  {

LABEL_4:
    sub_264AB62DC(v23, v22, v24);
    return;
  }

  v42 = v11;
  v25 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
  v26 = v46;
  swift_beginAccess();
  v41 = v25;
  sub_2649D046C(v26 + v25, v17, &qword_27FF8B7A0, &qword_264B51590);
  v27 = *(v4 + 48);
  v28 = v27(v17, 1, v3);
  v43 = v4;
  if (v28)
  {
    sub_2649D04D4(v17, &qword_27FF8B7A0, &qword_264B51590);
    v29 = 1;
  }

  else
  {
    v30 = v27;
    v31 = v45;
    (*(v4 + 16))(v45, v17, v3);
    sub_2649D04D4(v17, &qword_27FF8B7A0, &qword_264B51590);
    v47 = v23;
    v48 = v22;
    v49 = v24;
    sub_264ACB170(v23, v22, v24);
    sub_264B412A4();
    v32 = v31;
    v27 = v30;
    (*(v4 + 8))(v32, v3);
    v29 = 0;
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B878, &qword_264B518A8);
  (*(*(v33 - 8) + 56))(v21, v29, 1, v33);
  sub_2649D04D4(v21, &qword_27FF8B870, &qword_264B518A0);
  v47 = v23;
  v48 = v22;
  v49 = v24;
  v50 = xmmword_264B47370;
  v51 = 9;
  if ((_s16ScreenSharingKit0aB7SessionC0abD5StateO2eeoiySbAE_AEtFZ_0(&v47, &v50) & 1) == 0)
  {
    goto LABEL_4;
  }

  v34 = v41;
  v35 = v44;
  sub_2649D046C(v46 + v41, v44, &qword_27FF8B7A0, &qword_264B51590);
  if (v27(v35, 1, v3))
  {
    sub_264AB62DC(v23, v22, v24);
    sub_2649D04D4(v35, &qword_27FF8B7A0, &qword_264B51590);
    v36 = v43;
  }

  else
  {
    v36 = v43;
    v37 = v45;
    (*(v43 + 16))(v45, v35, v3);
    sub_2649D04D4(v35, &qword_27FF8B7A0, &qword_264B51590);
    sub_264B412B4();
    sub_264AB62DC(v23, v22, v24);
    (*(v36 + 8))(v37, v3);
  }

  v38 = v42;
  (*(v36 + 56))(v42, 1, 1, v3);
  v39 = v46;
  swift_beginAccess();
  sub_2649FECCC(v38, v39 + v34, &qword_27FF8B7A0, &qword_264B51590);
  swift_endAccess();
}

uint64_t sub_264AB5BC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889F0, &unk_264B449D0);
  sub_2649CB4C8(&qword_27FF8A8A0, &qword_27FF889F0, &unk_264B449D0, MEMORY[0x277CBCE48]);
  return sub_264B40AB4();
}

uint64_t sub_264AB5C5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8B470, qword_264B4BB60);
  sub_2649CB4C8(&qword_27FF8A5F0, &unk_27FF8B470, qword_264B4BB60, MEMORY[0x277CBCE20]);
  return sub_264B40AB4();
}

uint64_t sub_264AB5CF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889F8, &unk_264B51570);
  sub_2649CB4C8(&qword_27FF8B728, &qword_27FF889F8, &unk_264B51570, MEMORY[0x277CBCE48]);
  return sub_264B40AB4();
}

uint64_t sub_264AB5D84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A00, &unk_264B449E0);
  sub_2649CB4C8(&qword_27FF8B738, &qword_27FF88A00, &unk_264B449E0, MEMORY[0x277CBCE20]);
  return sub_264B40AB4();
}

uint64_t sub_264AB5E18(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B740, &unk_264B51580);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  sub_2649D046C(a1, &v11 - v6, &qword_27FF8B740, &unk_264B51580);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiMessages;
  swift_beginAccess();
  sub_2649FECCC(v7, v8 + v9, &qword_27FF8B740, &unk_264B51580);
  return swift_endAccess();
}

uint64_t sub_264AB5EF8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiMessages;
  swift_beginAccess();
  return sub_2649D046C(v1 + v3, a1, &qword_27FF8B740, &unk_264B51580);
}

uint64_t ScreenSharingSession.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
  swift_beginAccess();
  if (!(*(v3 + 48))(v1 + v7, 1, v2))
  {
    (*(v3 + 16))(v6, v1 + v7, v2);
    sub_264B412B4();
    (*(v3 + 8))(v6, v2);
  }

  sub_264ACB258(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_config, type metadata accessor for ScreenSharingSession.Config);
  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSessionVendor));
  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_localDevicePrimitives));
  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_hidServicePrimitives));

  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiStateCoordinator));
  sub_2649D04D4(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_launchRequest, &qword_27FF889E0, &qword_264B449C0);
  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_featureFlagPrimitives));
  sub_264AB62DC(*(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState), *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8), *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16));
  sub_2649D04D4(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice, &unk_27FF89E30, &qword_264B44270);
  sub_2649D04D4(v1 + v7, &qword_27FF8B7A0, &qword_264B51590);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_2649D04D4(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_videoStream, &qword_27FF8B7C8, &unk_264B51598);
  sub_2649D04D4(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_audioStream, &qword_27FF8B7C8, &unk_264B51598);

  sub_264AB635C(*(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion), *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 8), *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 16), *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 24));

  sub_2649D04D4(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiMessages, &qword_27FF8B740, &unk_264B51580);
  swift_defaultActor_destroy();
  return v1;
}

void sub_264AB62DC(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 > 2u && a3 != 3)
    {
      return;
    }

LABEL_8:

    return;
  }

  if (a3 <= 5u)
  {
    if (a3 != 4 && a3 != 5)
    {
      return;
    }

    goto LABEL_8;
  }

  if (a3 == 6)
  {
    goto LABEL_8;
  }

  if (a3 == 7 || a3 == 8)
  {
  }
}

uint64_t sub_264AB635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t ScreenSharingSession.__deallocating_deinit()
{
  ScreenSharingSession.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264AB63CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v51 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v57 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v53 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B7A0, &qword_264B51590);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v50 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B7F8, &qword_264B515A8);
  v49 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
  v55 = *(v15 - 8);
  v56 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v52 = &v48 - v17;
  v18 = sub_264B3FFD4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v23 = sub_264B40964();
  __swift_project_value_buffer(v23, qword_27FFA71B8);
  v24 = sub_264B41484();
  sub_264B3FF94();
  v25 = sub_264B3FFA4();
  v27 = v26;
  (*(v19 + 8))(v22, v18);

  v28 = sub_264B40944();

  if (os_log_type_enabled(v28, v24))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v58[0] = v30;
    *v29 = 136446722;
    v31 = sub_2649CC004(v25, v27, v58);

    *(v29 + 4) = v31;
    *(v29 + 12) = 2050;
    *(v29 + 14) = 145;
    *(v29 + 22) = 2082;
    *(v29 + 24) = sub_2649CC004(0x6574617669746361, 0xEE00293A726F6628, v58);
    _os_log_impl(&dword_2649C6000, v28, v24, "%{public}s:%{public}ld %{public}s", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v30, -1, -1);
    MEMORY[0x266749940](v29, -1, -1);
  }

  else
  {
  }

  v32 = v59;
  if (*(v59 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16) == 9 && *(v59 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) == 0)
  {
    v35 = v49;
    (*(v49 + 104))(v14, *MEMORY[0x277D85778], v11);
    v36 = v52;
    sub_264B41284();
    (*(v35 + 8))(v14, v11);
    v38 = v55;
    v37 = v56;
    v39 = v50;
    (*(v55 + 16))(v50, v36, v56);
    (*(v38 + 56))(v39, 0, 1, v37);
    v40 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
    swift_beginAccess();
    sub_2649FECCC(v39, v32 + v40, &qword_27FF8B7A0, &qword_264B51590);
    swift_endAccess();
    v41 = v53;
    sub_264ACB1F0(v54, v53, type metadata accessor for ContinuityDevice);
    v42 = type metadata accessor for ContinuityDevice(0);
    (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    v43 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
    swift_beginAccess();
    sub_2649FECCC(v41, v32 + v43, &unk_27FF89E30, &qword_264B44270);
    swift_endAccess();
    v44 = sub_264B41274();
    v45 = v57;
    (*(*(v44 - 8) + 56))(v57, 1, 1, v44);
    v46 = sub_264AB6BD4();
    v47 = swift_allocObject();
    v47[2] = v32;
    v47[3] = v46;
    v47[4] = v32;
    swift_retain_n();
    sub_264A10C20(0, 0, v45, &unk_264B515B8, v47);

    return (*(v38 + 8))(v36, v37);
  }

  else
  {
    sub_264AB6AF0();
    swift_allocError();
    *v33 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_264AB6AF0()
{
  result = qword_27FF8B800;
  if (!qword_27FF8B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B800);
  }

  return result;
}

uint64_t sub_264AB6B44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264AB6D04();
}

unint64_t sub_264AB6BD4()
{
  result = qword_27FF8B808;
  if (!qword_27FF8B808)
  {
    type metadata accessor for ScreenSharingSession(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B808);
  }

  return result;
}

uint64_t sub_264AB6C50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649E0EE4;

  return sub_264AB6B44();
}

uint64_t sub_264AB6D04()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270);
  v1[7] = swift_task_alloc();
  v2 = type metadata accessor for ContinuityDevice(0);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AB6E48, v0, 0);
}

uint64_t sub_264AB6E48()
{
  v30 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
  swift_beginAccess();
  sub_2649D046C(v4 + v5, v3, &unk_27FF89E30, &qword_264B44270);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2649D04D4(v0[7], &unk_27FF89E30, &qword_264B44270);
    sub_2649FEF6C();
    v6 = swift_allocError();
    v0[13] = v6;
    *v7 = 2;
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_264AB71D4;

    return sub_264ABA794(v6);
  }

  else
  {
    v11 = v0[11];
    v10 = v0[12];
    v12 = v0[9];
    v13 = v0[6];
    v14 = v0[5];
    sub_2649D0390(v0[7], v10);
    v15 = *(v14 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSessionVendor + 24);
    v16 = *(v14 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSessionVendor + 32);
    __swift_project_boxed_opaque_existential_1((v14 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSessionVendor), v15);
    v17 = v14 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_config;
    v18 = type metadata accessor for ScreenSharingSession.Config(0);
    v19 = v18[6];
    v29 = *(v17 + v18[5]);
    v20 = (*(v16 + 8))(v10, &v29, *(v17 + v18[7]), *(v14 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry), v15, v16, *(v17 + v19));
    v22 = v21;
    v23 = (v14 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession);
    *v23 = v20;
    v23[1] = v21;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v24 = sub_264B41274();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    sub_264ACB1F0(v10, v11, type metadata accessor for ContinuityDevice);
    v25 = sub_264AB6BD4();
    v26 = (*(v12 + 80) + 56) & ~*(v12 + 80);
    v27 = swift_allocObject();
    v27[2] = v14;
    v27[3] = v25;
    v27[4] = v20;
    v27[5] = v22;
    v27[6] = v14;
    sub_2649D0390(v11, v27 + v26);
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_264A10C20(0, 0, v13, &unk_264B518C0, v27);

    swift_unknownObjectRelease();
    sub_264ACB258(v10, type metadata accessor for ContinuityDevice);

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_264AB71D4()
{
  v1 = *(*v0 + 104);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264AB735C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  result = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v15 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession + 8);
    v10 = sub_264B41274();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_264B41244();
    swift_unknownObjectRetain_n();
    v11 = a1;
    v12 = sub_264B41234();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v8;
    v13[5] = v9;
    v13[6] = v11;
    sub_264A10C20(0, 0, v7, &unk_264B515C8, v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_264AB74B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_264B41244();
  v6[3] = sub_264B41234();
  ObjectType = swift_getObjectType();
  v12 = (*(a5 + 40) + **(a5 + 40));
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_264AB7608;

  return v12(a6, ObjectType, a5);
}

uint64_t sub_264AB7608()
{
  *(*v1 + 40) = v0;

  v3 = sub_264B411C4();
  if (v0)
  {
    v4 = sub_264AB77C4;
  }

  else
  {
    v4 = sub_264AB7764;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_264AB7764()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264AB77C4()
{

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to set screen sharing video layer: %{public}@", v8, 0xCu);
    sub_2649D04D4(v9, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_264AB7970(_BYTE *a1)
{
  *(v2 + 224) = v1;
  *(v2 + 240) = *a1;
  return MEMORY[0x2822009F8](sub_264AB7998, v1, 0);
}

uint64_t sub_264AB7998()
{
  v26 = v0;
  v1 = *(v0 + 224) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v2 = *(v1 + 16);
  if ((v2 - 7) < 2)
  {
    goto LABEL_2;
  }

  if (v2 == 9)
  {
    v10 = *v1;
    v9 = *(v1 + 8);
    if ((*v1 - 3) <= 1)
    {
LABEL_2:
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
        _os_log_impl(&dword_2649C6000, v4, v5, "Session is already in a terminal state. Ignoring", v6, 2u);
        MEMORY[0x266749940](v6, -1, -1);
      }

      v7 = *(v0 + 8);

      return v7();
    }
  }

  else
  {
    v10 = *v1;
    v9 = *(v1 + 8);
  }

  *v1 = xmmword_264B47370;
  *(v1 + 16) = 9;
  sub_264ACB170(v10, v9, v2);
  sub_264AB62DC(v10, v9, v2);
  *&v24 = v10;
  *(&v24 + 1) = v9;
  v25 = v2;
  sub_264AB5690(&v24);
  sub_264AB62DC(v10, v9, v2);
  if (qword_27FF883F8 != -1)
  {
    swift_once();
  }

  v11 = sub_264B40964();
  __swift_project_value_buffer(v11, qword_27FF8AE40);
  v12 = sub_264B40944();
  v13 = sub_264B414B4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 240);
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v14;
    _os_log_impl(&dword_2649C6000, v12, v13, "Invalidation Reason: %ld", v15, 0xCu);
    MEMORY[0x266749940](v15, -1, -1);
  }

  v16 = *(v0 + 240);

  LOBYTE(v24) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6F436E6F73616552;
  v18 = inited + 32;
  *(inited + 16) = xmmword_264B44150;
  *(inited + 40) = 0xEA00000000006564;
  *(inited + 72) = &type metadata for TelemetrySessionEndedReason;
  *(inited + 48) = v16;
  v19 = sub_264A24308(inited);
  swift_setDeallocating();
  sub_2649D04D4(v18, &qword_27FF89220, &qword_264B48430);
  sub_264A9113C(&v24, v19);

  if (v16 == 12)
  {
    LOBYTE(v24) = 1;
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_264B46A70;
    *(v20 + 32) = 0x6E6F73616552;
    *(v20 + 40) = 0xE600000000000000;
    *(v20 + 48) = 0xD000000000000015;
    v21 = MEMORY[0x277D837D0];
    *(v20 + 56) = 0x8000000264B58990;
    *(v20 + 72) = v21;
    *(v20 + 80) = 0x6F436E6F73616552;
    *(v20 + 120) = MEMORY[0x277D83B88];
    *(v20 + 88) = 0xEA00000000006564;
    *(v20 + 96) = 12;
    v22 = sub_264A24308(v20);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
    swift_arrayDestroy();
    sub_264A9113C(&v24, v22);
  }

  v23 = swift_task_alloc();
  *(v0 + 232) = v23;
  *v23 = v0;
  v23[1] = sub_264AB7E2C;

  return sub_264AB7F20();
}

uint64_t sub_264AB7E2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264AB7F20()
{
  v1[27] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B7A0, &qword_264B51590);
  v1[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270);
  v1[29] = swift_task_alloc();
  v2 = sub_264B3FFD4();
  v1[30] = v2;
  v1[31] = *(v2 - 8);
  v1[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AB8050, v0, 0);
}

uint64_t sub_264AB8050()
{
  v46 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = sub_264B40964();
  *(v0 + 264) = __swift_project_value_buffer(v4, qword_27FFA71B8);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v45 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v45);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 701;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD000000000000010, 0x8000000264B5F9C0, &v45);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 216);
  v14 = *(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16);
  if ((v14 - 7) >= 2 && (v14 != 9 || __PAIR128__((*(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) >= 3uLL) + *(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8) - 1, *(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) - 3) >= 2))
  {
    return sub_264B41874();
  }

  if (*(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverEventCancellationHandle))
  {

    sub_264B41304();

    v13 = *(v0 + 216);
  }

  if (*(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragAndDropEventCancellationHandle))
  {

    sub_264B41304();

    v13 = *(v0 + 216);
  }

  if (*(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessibilityEventCancellationHandle))
  {

    sub_264B41304();

    v13 = *(v0 + 216);
  }

  v15 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession;
  *(v0 + 272) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession;
  v16 = *(v13 + v15);
  *(v0 + 280) = v16;
  if (v16)
  {

    return MEMORY[0x2822009F8](sub_264AB8810, v16, 0);
  }

  else
  {
    v17 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream;
    *(v0 + 296) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream;
    v18 = (v13 + v17);
    if (*v18)
    {
      v19 = v18[1];
      ObjectType = swift_getObjectType();
      v21 = *(v19 + 8);
      v22 = *(v21 + 24);
      swift_unknownObjectRetain();
      v22(ObjectType, v21);
      swift_unknownObjectRelease();
      v13 = *(v0 + 216);
    }

    v23 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession;
    *(v0 + 304) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession;
    v24 = (v13 + v23);
    v25 = *(v13 + v23);
    *(v0 + 312) = v25;
    if (v25)
    {
      v26 = v24[1];
      v27 = swift_getObjectType();
      v28 = *(v26 + 8);
      v29 = *(v28 + 24);
      swift_unknownObjectRetain();
      v43 = (v29 + *v29);
      v30 = swift_task_alloc();
      *(v0 + 320) = v30;
      *v30 = v0;
      v30[1] = sub_264AB8CD0;

      return v43(v27, v28);
    }

    else
    {
      v31 = *(v0 + 272);
      v32 = *(v0 + 224);
      v33 = *(v0 + 232);
      v34 = (v13 + *(v0 + 296));
      v44 = 10;
      sub_264A9113C(&v44, 0);
      v35 = type metadata accessor for ContinuityDevice(0);
      (*(*(v35 - 8) + 56))(v33, 1, 1, v35);
      v36 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
      swift_beginAccess();
      sub_2649FECCC(v33, v13 + v36, &unk_27FF89E30, &qword_264B44270);
      swift_endAccess();
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
      (*(*(v37 - 8) + 56))(v32, 1, 1, v37);
      v38 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
      swift_beginAccess();
      sub_2649FECCC(v32, v13 + v38, &qword_27FF8B7A0, &qword_264B51590);
      swift_endAccess();
      *v24 = 0;
      v24[1] = 0;
      swift_unknownObjectRelease();
      *v34 = 0;
      v34[1] = 0;
      swift_unknownObjectRelease();
      *(v13 + v31) = 0;

      *(v0 + 48) = 0;
      *(v0 + 32) = 0u;
      *(v0 + 16) = 0u;
      v39 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_videoStream;
      swift_beginAccess();
      sub_2649FECCC(v0 + 16, v13 + v39, &qword_27FF8B7C8, &unk_264B51598);
      swift_endAccess();
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      v40 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_audioStream;
      swift_beginAccess();
      sub_2649FECCC(v0 + 56, v13 + v40, &qword_27FF8B7C8, &unk_264B51598);
      swift_endAccess();

      v41 = *(v0 + 8);

      return v41();
    }
  }
}

uint64_t sub_264AB8810()
{
  sub_264A750BC();
  *(v0 + 288) = 0;
  v1 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_264AB88A8, v1, 0);
}

uint64_t sub_264AB88A8()
{
  v30 = v0;
  v1 = *(v0 + 216);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream;
  *(v0 + 296) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream;
  v3 = (v1 + v2);
  if (*v3)
  {
    v4 = v3[1];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    v7 = *(v6 + 24);
    swift_unknownObjectRetain();
    v7(ObjectType, v6);
    swift_unknownObjectRelease();
    v1 = *(v0 + 216);
  }

  v8 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession;
  *(v0 + 304) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession;
  v9 = (v1 + v8);
  v10 = *(v1 + v8);
  *(v0 + 312) = v10;
  if (v10)
  {
    v11 = v9[1];
    v12 = swift_getObjectType();
    v13 = *(v11 + 8);
    v14 = *(v13 + 24);
    swift_unknownObjectRetain();
    v28 = (v14 + *v14);
    v15 = swift_task_alloc();
    *(v0 + 320) = v15;
    *v15 = v0;
    v15[1] = sub_264AB8CD0;

    return v28(v12, v13);
  }

  else
  {
    v17 = *(v0 + 272);
    v18 = *(v0 + 224);
    v19 = *(v0 + 232);
    v20 = (v1 + *(v0 + 296));
    v29 = 10;
    sub_264A9113C(&v29, 0);
    v21 = type metadata accessor for ContinuityDevice(0);
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    v22 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
    swift_beginAccess();
    sub_2649FECCC(v19, v1 + v22, &unk_27FF89E30, &qword_264B44270);
    swift_endAccess();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
    (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
    v24 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
    swift_beginAccess();
    sub_2649FECCC(v18, v1 + v24, &qword_27FF8B7A0, &qword_264B51590);
    swift_endAccess();
    *v9 = 0;
    v9[1] = 0;
    swift_unknownObjectRelease();
    *v20 = 0;
    v20[1] = 0;
    swift_unknownObjectRelease();
    *(v1 + v17) = 0;

    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    v25 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_videoStream;
    swift_beginAccess();
    sub_2649FECCC(v0 + 16, v1 + v25, &qword_27FF8B7C8, &unk_264B51598);
    swift_endAccess();
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    v26 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_audioStream;
    swift_beginAccess();
    sub_2649FECCC(v0 + 56, v1 + v26, &qword_27FF8B7C8, &unk_264B51598);
    swift_endAccess();

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_264AB8CD0()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = *(v2 + 216);
    v4 = sub_264AB95E8;
  }

  else
  {
    v5 = *(v2 + 216);
    swift_unknownObjectRelease();
    v4 = sub_264AB8DF8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264AB8DF8()
{
  v16 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 216);
  v5 = (v4 + *(v0 + 304));
  v6 = (v4 + *(v0 + 296));
  v15 = 10;
  sub_264A9113C(&v15, 0);
  v7 = type metadata accessor for ContinuityDevice(0);
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
  swift_beginAccess();
  sub_2649FECCC(v3, v4 + v8, &unk_27FF89E30, &qword_264B44270);
  swift_endAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
  swift_beginAccess();
  sub_2649FECCC(v2, v4 + v10, &qword_27FF8B7A0, &qword_264B51590);
  swift_endAccess();
  *v5 = 0;
  v5[1] = 0;
  swift_unknownObjectRelease();
  *v6 = 0;
  v6[1] = 0;
  swift_unknownObjectRelease();
  *(v4 + v1) = 0;

  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v11 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_videoStream;
  swift_beginAccess();
  sub_2649FECCC(v0 + 16, v4 + v11, &qword_27FF8B7C8, &unk_264B51598);
  swift_endAccess();
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  v12 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_audioStream;
  swift_beginAccess();
  sub_2649FECCC(v0 + 56, v4 + v12, &qword_27FF8B7C8, &unk_264B51598);
  swift_endAccess();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_264AB909C()
{
  v43 = v0;
  v1 = *(v0 + 288);
  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 288);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42 = v7;
    *v6 = 136446210;
    *(v0 + 208) = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v9 = sub_264B41064();
    v11 = sub_2649CC004(v9, v10, &v42);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2649C6000, v3, v4, "Failed to invalidate ControlMessageSession: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  else
  {
    v12 = *(v0 + 288);
  }

  v13 = *(v0 + 216);
  v14 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream;
  *(v0 + 296) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream;
  v15 = (v13 + v14);
  if (*v15)
  {
    v16 = v15[1];
    ObjectType = swift_getObjectType();
    v18 = *(v16 + 8);
    v19 = *(v18 + 24);
    swift_unknownObjectRetain();
    v19(ObjectType, v18);
    swift_unknownObjectRelease();
    v13 = *(v0 + 216);
  }

  v20 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession;
  *(v0 + 304) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession;
  v21 = (v13 + v20);
  v22 = *(v13 + v20);
  *(v0 + 312) = v22;
  if (v22)
  {
    v23 = v21[1];
    v24 = swift_getObjectType();
    v25 = *(v23 + 8);
    v26 = *(v25 + 24);
    swift_unknownObjectRetain();
    v40 = (v26 + *v26);
    v27 = swift_task_alloc();
    *(v0 + 320) = v27;
    *v27 = v0;
    v27[1] = sub_264AB8CD0;

    return v40(v24, v25);
  }

  else
  {
    v29 = *(v0 + 272);
    v30 = *(v0 + 224);
    v31 = *(v0 + 232);
    v32 = (v13 + *(v0 + 296));
    v41 = 10;
    sub_264A9113C(&v41, 0);
    v33 = type metadata accessor for ContinuityDevice(0);
    (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
    v34 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
    swift_beginAccess();
    sub_2649FECCC(v31, v13 + v34, &unk_27FF89E30, &qword_264B44270);
    swift_endAccess();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
    (*(*(v35 - 8) + 56))(v30, 1, 1, v35);
    v36 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
    swift_beginAccess();
    sub_2649FECCC(v30, v13 + v36, &qword_27FF8B7A0, &qword_264B51590);
    swift_endAccess();
    *v21 = 0;
    v21[1] = 0;
    swift_unknownObjectRelease();
    *v32 = 0;
    v32[1] = 0;
    swift_unknownObjectRelease();
    *(v13 + v29) = 0;

    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    v37 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_videoStream;
    swift_beginAccess();
    sub_2649FECCC(v0 + 16, v13 + v37, &qword_27FF8B7C8, &unk_264B51598);
    swift_endAccess();
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    v38 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_audioStream;
    swift_beginAccess();
    sub_2649FECCC(v0 + 56, v13 + v38, &qword_27FF8B7C8, &unk_264B51598);
    swift_endAccess();

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_264AB95E8()
{
  v37 = v0;
  v1 = *(v0 + 328);
  swift_unknownObjectRelease();
  *(v0 + 192) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 328);
  if (v3)
  {
    v5 = *(v0 + 336) == 9;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {

    v17 = sub_264B40944();
    v18 = sub_264B41484();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2649C6000, v17, v18, "MediaTransportSession already terminal, ignoring error", v19, 2u);
      MEMORY[0x266749940](v19, -1, -1);
    }

    v20 = *(v0 + 192);
  }

  else
  {

    v6 = v4;
    v7 = sub_264B40944();
    v8 = sub_264B41494();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 328);
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v36 = v12;
      *v11 = 136446210;
      *(v0 + 200) = v10;
      v13 = v10;
      v14 = sub_264B41064();
      v16 = sub_2649CC004(v14, v15, &v36);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_2649C6000, v7, v8, "Failed to invalidate MediaTransportClientSession: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x266749940](v12, -1, -1);
      MEMORY[0x266749940](v11, -1, -1);

      goto LABEL_12;
    }

    v20 = v10;
  }

LABEL_12:
  v21 = *(v0 + 272);
  v22 = *(v0 + 224);
  v23 = *(v0 + 232);
  v24 = *(v0 + 216);
  v25 = (v24 + *(v0 + 304));
  v26 = (v24 + *(v0 + 296));
  v35 = 10;
  sub_264A9113C(&v35, 0);
  v27 = type metadata accessor for ContinuityDevice(0);
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
  swift_beginAccess();
  sub_2649FECCC(v23, v24 + v28, &unk_27FF89E30, &qword_264B44270);
  swift_endAccess();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E8, &qword_264B449C8);
  (*(*(v29 - 8) + 56))(v22, 1, 1, v29);
  v30 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_sessionStateContinuation;
  swift_beginAccess();
  sub_2649FECCC(v22, v24 + v30, &qword_27FF8B7A0, &qword_264B51590);
  swift_endAccess();
  *v25 = 0;
  v25[1] = 0;
  swift_unknownObjectRelease();
  *v26 = 0;
  v26[1] = 0;
  swift_unknownObjectRelease();
  *(v24 + v21) = 0;

  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v31 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_videoStream;
  swift_beginAccess();
  sub_2649FECCC(v0 + 16, v24 + v31, &qword_27FF8B7C8, &unk_264B51598);
  swift_endAccess();
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  v32 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_audioStream;
  swift_beginAccess();
  sub_2649FECCC(v0 + 56, v24 + v32, &qword_27FF8B7C8, &unk_264B51598);
  swift_endAccess();

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_264AB9A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 80) = a4;
  *(v6 + 88) = v5;
  *(v6 + 168) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  *(v6 + 96) = type metadata accessor for HIDMessage(0);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = type metadata accessor for HIDReportMessage(0);
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AB9B60, v5, 0);
}

uint64_t sub_264AB9B60()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 168);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 64);
  v9 = *(v3 + 20);
  sub_264ACB1F0(*(v0 + 56), v1 + v9, MEMORY[0x277D77AA8]);
  v10 = sub_264B40264();
  (*(*(v10 - 8) + 56))(v1 + v9, 0, 1, v10);
  *v1 = v7;
  *(v1 + 8) = v5 & 1;
  v11 = (v1 + *(v3 + 24));
  *v11 = v8;
  v11[1] = v6;
  sub_264ACB1F0(v1, v2, type metadata accessor for HIDReportMessage);
  swift_storeEnumTagMultiPayload();
  *(v0 + 40) = v4;
  *(v0 + 48) = &off_28765E6C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_264ACB1F0(v2, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
  sub_2649DEF18(v8, v6);
  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_264AB9D18;

  return sub_264ABA344(v0 + 16);
}

uint64_t sub_264AB9D18()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_264AB9F04;
  }

  else
  {
    v5 = *(v2 + 88);
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_264AB9E40;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264AB9E40()
{
  v1 = v0[17];
  sub_264ACB258(v0[13], type metadata accessor for HIDMessage);
  sub_264ACB258(v1, type metadata accessor for HIDReportMessage);

  v2 = v0[1];

  return v2();
}

uint64_t sub_264AB9F04()
{
  v19 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[17];
  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FFA71B8);
  sub_264ACB1F0(v2, v1, type metadata accessor for HIDReportMessage);
  v4 = sub_264B40944();
  v5 = sub_264B41494();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v8 = v0[15];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    sub_264ACB1F0(v7, v8, type metadata accessor for HIDReportMessage);
    v11 = sub_264B41064();
    v13 = v12;
    sub_264ACB258(v7, type metadata accessor for HIDReportMessage);
    v14 = sub_2649CC004(v11, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to send HID report: %{public}s, tearing down.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  else
  {

    sub_264ACB258(v7, type metadata accessor for HIDReportMessage);
  }

  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_264ABA168;
  v16 = v0[19];

  return sub_264ABA794(v16);
}

uint64_t sub_264ABA168()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_264ABA278, v1, 0);
}

uint64_t sub_264ABA278()
{
  v1 = *(v0 + 136);
  sub_264ACB258(*(v0 + 104), type metadata accessor for HIDMessage);
  sub_264ACB258(v1, type metadata accessor for HIDReportMessage);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264ABA344(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264ABA364, v1, 0);
}

uint64_t sub_264ABA364()
{
  v13 = v0;
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession);
  *(v0 + 32) = v1;
  if (v1)
  {
    *(v0 + 56) = 0;

    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_264ABA5B4;
    v3 = *(v0 + 16);

    return sub_264A75684(v3, (v0 + 56));
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v5 = sub_264B40964();
    __swift_project_value_buffer(v5, qword_27FFA71B8);
    v6 = sub_264B40944();
    v7 = sub_264B41494();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2649CC004(0x7373654D646E6573, 0xEF293A5F28656761, &v12);
      _os_log_impl(&dword_2649C6000, v6, v7, "%s called before we have a control message session", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x266749940](v9, -1, -1);
      MEMORY[0x266749940](v8, -1, -1);
    }

    sub_264AB6AF0();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_264ABA5B4()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_264ABA730;
  }

  else
  {
    v4 = sub_264ABA6CC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264ABA6CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264ABA730()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264ABA794(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_264ABA7B4, v1, 0);
}

uint64_t sub_264ABA7B4()
{
  v28 = v0;
  v1 = v0[4];
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16);
  if ((v3 - 7) < 2 || v3 == 9 && (*v2 - 3) <= 1)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71B8);
    v5 = sub_264B40944();
    v6 = sub_264B41484();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_14;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2649C6000, v5, v6, "Session is already in a terminal state. Ignoring", v7, 2u);
    goto LABEL_13;
  }

  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportIsTearingDown))
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v8 = v0[3];
    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FFA71B8);
    v10 = v8;
    v5 = sub_264B40944();
    v11 = sub_264B414B4();

    if (!os_log_type_enabled(v5, v11))
    {
      goto LABEL_14;
    }

    v12 = v0[3];
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v26 = v13;
    *v7 = 136446210;
    v0[2] = v12;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v15 = sub_264B41064();
    v17 = sub_2649CC004(v15, v16, &v26);

    *(v7 + 4) = v17;
    _os_log_impl(&dword_2649C6000, v5, v11, "MediaTransport is already tearing down. Ignoring interruption for %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x266749940](v13, -1, -1);
LABEL_13:
    MEMORY[0x266749940](v7, -1, -1);
LABEL_14:

    v18 = v0[1];

    return v18();
  }

  v20 = v0[3];
  v21 = *v2;
  v22 = *(v2 + 8);
  *v2 = v20;
  *(v2 + 8) = 0;
  *(v2 + 16) = 7;
  v23 = v20;
  sub_264ACB170(v21, v22, v3);
  sub_264AB62DC(v21, v22, v3);
  *&v26 = v21;
  *(&v26 + 1) = v22;
  v27 = v3;
  sub_264AB5690(&v26);
  sub_264AB62DC(v21, v22, v3);
  v24 = telemetryPayload(_:_:)(0x7075727265746E69, 0xEB00000000646574, v20);
  LOBYTE(v26) = 10;
  sub_264A9113C(&v26, v24);

  v25 = swift_task_alloc();
  v0[5] = v25;
  *v25 = v0;
  v25[1] = sub_264A1B27C;

  return sub_264AB7F20();
}

uint64_t sub_264ABAB88(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = type metadata accessor for HIDMessage(0);
  v3[11] = swift_task_alloc();
  v3[12] = type metadata accessor for HIDUpdateInputDevicesMessage(0);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264ABAC50, v2, 0);
}

uint64_t sub_264ABAC50()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v7 = sub_264B40104();
  (*(*(v7 - 8) + 16))(v1, v6, v7);
  *(v1 + *(v2 + 20)) = v5;
  sub_264ACB1F0(v1, v3, type metadata accessor for HIDUpdateInputDevicesMessage);
  swift_storeEnumTagMultiPayload();
  v0[5] = v4;
  v0[6] = &off_28765E6C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_264ACB1F0(v3, boxed_opaque_existential_1, type metadata accessor for HIDMessage);

  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_264ABADB8;

  return sub_264ABA344((v0 + 2));
}

uint64_t sub_264ABADB8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_264ABAF88;
  }

  else
  {
    v5 = *(v2 + 72);
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_264ABAEE0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264ABAEE0()
{
  v1 = v0[13];
  sub_264ACB258(v0[11], type metadata accessor for HIDMessage);
  sub_264ACB258(v1, type metadata accessor for HIDUpdateInputDevicesMessage);

  v2 = v0[1];

  return v2();
}

uint64_t sub_264ABAF88()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to send HID input devices message: %{public}@, tearing down", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_264ABB15C;
  v12 = v0[15];

  return sub_264ABA794(v12);
}

uint64_t sub_264ABB15C()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_264ABB26C, v1, 0);
}

uint64_t sub_264ABB26C()
{
  v1 = *(v0 + 104);
  sub_264ACB258(*(v0 + 88), type metadata accessor for HIDMessage);
  sub_264ACB258(v1, type metadata accessor for HIDUpdateInputDevicesMessage);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264ABB31C()
{
  v1[7] = v0;
  v1[8] = type metadata accessor for HIDMessage(0);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264ABB3B0, v0, 0);
}

uint64_t sub_264ABB3B0()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_storeEnumTagMultiPayload();
  v0[5] = v1;
  v0[6] = &off_28765E6C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_264ACB1F0(v2, boxed_opaque_existential_1, type metadata accessor for HIDMessage);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_264ABB490;

  return sub_264ABA344((v0 + 2));
}

uint64_t sub_264ABB490()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_264ABB638;
  }

  else
  {
    v5 = *(v2 + 56);
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_264ABB5B8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264ABB5B8()
{
  sub_264ACB258(*(v0 + 72), type metadata accessor for HIDMessage);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264ABB638()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to send HID reset gesture message: %{public}@, tearing down", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_264ABB80C;
  v12 = v0[11];

  return sub_264ABA794(v12);
}

uint64_t sub_264ABB80C()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_264ABB91C, v1, 0);
}

uint64_t sub_264ABB91C()
{
  sub_264ACB258(*(v0 + 72), type metadata accessor for HIDMessage);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264ABB9A4(_OWORD *a1)
{
  *(v2 + 96) = v1;
  v3 = a1[1];
  *(v2 + 104) = *a1;
  *(v2 + 120) = v3;
  return MEMORY[0x2822009F8](sub_264ABB9D0, v1, 0);
}

uint64_t sub_264ABB9D0()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v0[5] = &type metadata for SystemGestureEvent;
  v0[6] = &off_28765C718;
  v5 = swift_allocObject();
  v0[2] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v1;
  v5[5] = v2;
  sub_264A18774(v4, v3, v1, v2);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_264ABBAC8;

  return sub_264ABA344((v0 + 2));
}

uint64_t sub_264ABBAC8()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {
    v3 = v2[12];

    return MEMORY[0x2822009F8](sub_264ABBC04, v3, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_264ABBC04()
{
  v28 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27FF88410 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = sub_264B40964();
  __swift_project_value_buffer(v6, qword_27FF8AE88);
  sub_264A18774(v5, v4, v3, v2);
  v7 = v1;
  v8 = sub_264B40944();
  v9 = sub_264B41494();
  sub_264A187D4(v5, v4, v3, v2);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[18];
    v12 = v0[15];
    v11 = v0[16];
    v14 = v0[13];
    v13 = v0[14];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136446466;
    v0[7] = v14;
    v0[8] = v13;
    v0[9] = v12;
    v0[10] = v11;
    sub_264A18774(v14, v13, v12, v11);
    v17 = sub_264B41064();
    v19 = sub_2649CC004(v17, v18, &v27);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v0[11] = v10;
    v20 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v21 = sub_264B41064();
    v23 = sub_2649CC004(v21, v22, &v27);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_2649C6000, v8, v9, "Failed to send %{public}s due to: %{public}s, tearing down.", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v16, -1, -1);
    MEMORY[0x266749940](v15, -1, -1);
  }

  v24 = swift_task_alloc();
  v0[19] = v24;
  *v24 = v0;
  v24[1] = sub_264ABBEA4;
  v25 = v0[18];

  return sub_264ABA794(v25);
}

uint64_t sub_264ABBEA4()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_264ABBFB4, v1, 0);
}

uint64_t sub_264ABBFB4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264ABC014(_BYTE *a1)
{
  *(v2 + 56) = v1;
  *(v2 + 80) = *a1;
  return MEMORY[0x2822009F8](sub_264ABC03C, v1, 0);
}

uint64_t sub_264ABC03C()
{
  v1 = *(v0 + 80);
  *(v0 + 40) = &type metadata for StatusEvent;
  *(v0 + 48) = &off_28765B558;
  v2 = swift_allocObject();
  *(v0 + 16) = v2;
  v2[2] = v1;
  v2[3] = 0;
  v2[9] = 0x6000000000000000;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_264ABC110;

  return sub_264ABA344(v0 + 16);
}

uint64_t sub_264ABC110()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x2822009F8](sub_264ABC24C, v3, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_264ABC24C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264ABC2B0(uint64_t a1, uint64_t a2)
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71B8);
  v5 = sub_264B40944();
  v6 = sub_264B41484();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2649C6000, v5, v6, "ScreenSharingSession: notification interaction", v7, 2u);
    MEMORY[0x266749940](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891E0, &unk_264B47030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B44150;
  *(inited + 32) = 0x795468636E75614CLL;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v9 = sub_264A24438(inited);
  swift_setDeallocating();
  sub_2649D04D4(inited + 32, &qword_27FF891E8, qword_264B51630);
  v12 = 16;
  v10 = sub_264AB4A0C(v9);

  sub_264A9113C(&v12, v10);
}

uint64_t sub_264ABC468(_OWORD *a1)
{
  *(v2 + 56) = v1;
  *(v2 + 64) = *a1;
  return MEMORY[0x2822009F8](sub_264ABC490, v1, 0);
}

uint64_t sub_264ABC490()
{
  v8 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessibilityTrafficSeen;
  if ((*(v2 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessibilityTrafficSeen) & 1) == 0 && (v1 & 0x2000000000000000) == 0)
  {
    v7 = 17;
    sub_264A9113C(&v7, 0);
    *(v2 + v3) = 1;
    v1 = v0[9];
  }

  v4 = v0[8];
  v0[5] = &type metadata for AccessibilityMessage;
  v0[6] = &off_28765A468;
  v0[2] = v4;
  v0[3] = v1;
  sub_264A5448C(v4, v1);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_264ABC59C;

  return sub_264ABA344((v0 + 2));
}

uint64_t sub_264ABC59C()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x2822009F8](sub_264ABC6D8, v3, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_264ABC6D8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264ABC73C(uint64_t a1)
{
  *(v2 + 56) = v1;
  *(v2 + 64) = *a1;
  v3 = *(a1 + 24);
  *(v2 + 80) = *(a1 + 16);
  *(v2 + 88) = v3;
  *(v2 + 112) = *(a1 + 32);
  *(v2 + 113) = *(a1 + 33);
  return MEMORY[0x2822009F8](sub_264ABC77C, v1, 0);
}

uint64_t sub_264ABC77C()
{
  v13 = v0;
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragNDropUsed;
  if ((*(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragNDropUsed) & 1) == 0)
  {
    v12 = 18;
    sub_264A9113C(&v12, 0);
    *(v1 + v2) = 1;
  }

  v3 = *(v0 + 113);
  v4 = *(v0 + 112);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  *(v0 + 40) = &type metadata for DragAndDropEvent;
  *(v0 + 48) = &off_28765F610;
  v9 = swift_allocObject();
  *(v0 + 16) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  *(v9 + 48) = v4;
  *(v9 + 49) = v3;
  sub_2649DEF18(v8, v7);

  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_264ABC8CC;

  return sub_264ABA344(v0 + 16);
}

uint64_t sub_264ABC8CC()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x2822009F8](sub_264ABCA08, v3, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_264ABCA08()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_264ABCA6C(uint64_t *a1)
{
  v2 = *a1;
  v3 = (v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion);
  *&v16[9] = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 41);
  v4 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 16);
  v15[0] = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion);
  v15[1] = v4;
  *v16 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 32);
  v5 = *&v16[16];
  v6 = v16[24];
  if (*(&v4 + 1))
  {
    v9 = *v3;
    v10 = *(v3 + 2);
    v11 = *(&v4 + 1);
    v12 = v3[2];
    v13 = *&v16[16];
    v14 = v16[24];
    sub_2649D046C(v15, v8, &qword_27FF8B820, &unk_264B51648);
    sub_2649D04D4(&v9, &qword_27FF8B820, &unk_264B51648);
    if ((v6 & 1) == 0)
    {
      return (v2 & ~v5) == 0;
    }
  }

  else
  {
    v9 = *v3;
    v10 = *(v3 + 2);
    v11 = 0;
    v12 = v3[2];
    v13 = *&v16[16];
    v14 = v16[24];
    sub_2649D046C(v15, v8, &qword_27FF8B820, &unk_264B51648);
    sub_2649D04D4(&v9, &qword_27FF8B820, &unk_264B51648);
  }

  return 0;
}

uint64_t sub_264ABCB94(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_264ABCBB4, v1, 0);
}

uint64_t sub_264ABCBB4()
{
  v1 = v0[7];
  v0[5] = type metadata accessor for RTIMessage(0);
  v0[6] = &off_28765CD50;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_264ACB1F0(v1, boxed_opaque_existential_1, type metadata accessor for RTIMessage);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_264ABCC8C;

  return sub_264ABA344((v0 + 2));
}

uint64_t sub_264ABCC8C()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[8];

    return MEMORY[0x2822009F8](sub_264ABCDC8, v3, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_264ABCDC8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AEB8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to send RTI message with error: %@, tearing down", v7, 0xCu);
    sub_2649D04D4(v8, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_264ABCF9C;
  v12 = v0[10];

  return sub_264ABA794(v12);
}

uint64_t sub_264ABCF9C()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_264ABD0AC, v1, 0);
}

uint64_t sub_264ABD0AC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264ABD118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  ObjectType = swift_getObjectType();
  v10 = *(a5 + 8);
  v13 = (*(v10 + 16) + **(v10 + 16));
  v11 = swift_task_alloc();
  v7[16] = v11;
  *v11 = v7;
  v11[1] = sub_264ABD258;

  return v13(v7 + 2, ObjectType, v10);
}

uint64_t sub_264ABD258()
{
  v2 = *(*v1 + 112);
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_264ABE2C4;
  }

  else
  {
    v3 = sub_264ABD380;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_264ABD380()
{
  v26 = v0;
  v1 = v0[15];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = v0[14] + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v5 = *v4;
  v6 = *(v4 + 8);
  *v4 = v3;
  *(v4 + 8) = v2;
  v7 = *(v4 + 16);
  *(v4 + 16) = 0;

  sub_264ACB170(v5, v6, v7);
  sub_264AB62DC(v5, v6, v7);
  *&v24 = v5;
  *(&v24 + 1) = v6;
  v25 = v7;
  sub_264AB5690(&v24);
  sub_264AB62DC(v5, v6, v7);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v8 = sub_264B40964();
  v0[18] = __swift_project_value_buffer(v8, qword_27FFA71B8);
  v9 = sub_264B40944();
  v10 = sub_264B41484();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2649C6000, v9, v10, "Setting up monitoring for MediaTransportClientSession state", v11, 2u);
    MEMORY[0x266749940](v11, -1, -1);
  }

  v12 = v0[5];
  v13 = __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  v14 = *(v12 - 8);
  v15 = swift_task_alloc();
  (*(v14 + 16))(v15, v13, v12);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_264B41334();

  v16 = sub_264AB6BD4();
  v17 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportIsTearingDown;
  v0[19] = v16;
  v0[20] = v17;
  v18 = v0[14];
  v19 = v0[10];
  v20 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v19);
  v22 = swift_task_alloc();
  v0[21] = v22;
  *v22 = v0;
  v22[1] = sub_264ABD674;

  return MEMORY[0x282200310](v0 + 12, v18, v16, v21, v19, v20);
}

uint64_t sub_264ABD674()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 112);

    return MEMORY[0x2822009F8](sub_264ABD784, v4, 0);
  }

  return result;
}

uint64_t sub_264ABD784()
{
  v38 = v0;
  v1 = *(v0 + 96);
  *(v0 + 176) = v1;
  if (v1 == 4)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  sub_2649DDB20(v1);
  v4 = sub_264B40944();
  v5 = sub_264B41484();
  sub_264A545B0(v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37 = v7;
    *v6 = 136446210;
    *(v0 + 104) = v1;
    sub_2649DDB20(v1);
    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v37);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v4, v5, "MediaTransportClientSession state transitioned to: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  if (v1 <= 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v11 = *(v0 + 160);
        v12 = *(v0 + 112);
        sub_2649FE684(1);
        sub_2649FE684(2);
        *(v12 + v11) = 0;
        v13 = sub_264B40944();
        v14 = sub_264B41474();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_2649C6000, v13, v14, "Starting up controlMessageTransport", v15, 2u);
          MEMORY[0x266749940](v15, -1, -1);
        }

        v16 = swift_task_alloc();
        *(v0 + 200) = v16;
        *v16 = v0;
        v16[1] = sub_264ABE0D4;

        return sub_264ABE4CC();
      }

      goto LABEL_20;
    }

    v24 = *(v0 + 160);
    v25 = *(v0 + 112);
    sub_2649FE684(0);
    sub_2649FE684(2);
    *(v25 + v24) = 0;
    goto LABEL_27;
  }

  if (v1 == 2)
  {
    v26 = *(v0 + 160);
    v27 = *(v0 + 112);
    sub_2649FE684(2);
    sub_2649FE684(2);
    *(v27 + v26) = 1;
    v28 = sub_264B40944();
    v29 = sub_264B414B4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2649C6000, v28, v29, "MediaTransportClientSession is tearing down", v30, 2u);
      MEMORY[0x266749940](v30, -1, -1);

      sub_264A545B0(2);
    }

    else
    {
    }

LABEL_27:
    v31 = *(v0 + 152);
    v32 = *(v0 + 112);
    v33 = *(v0 + 80);
    v34 = *(v0 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v33);
    v36 = swift_task_alloc();
    *(v0 + 168) = v36;
    *v36 = v0;
    v36[1] = sub_264ABD674;

    return MEMORY[0x282200310](v0 + 96, v32, v31, v35, v33, v34);
  }

  if (v1 != 3)
  {
LABEL_20:
    v20 = *(v0 + 160);
    v21 = *(v0 + 112);
    v22 = v1;
    sub_2649FE684(v1);
    sub_2649FE684(2);
    *(v21 + v20) = 0;
    sub_2649DDB20(v1);
    v23 = swift_task_alloc();
    *(v0 + 184) = v23;
    *v23 = v0;
    v23[1] = sub_264ABDCF0;

    return sub_264ABA794(v1);
  }

  v17 = *(v0 + 160);
  v18 = *(v0 + 112);
  sub_2649FE684(3);
  sub_2649FE684(2);
  *(v18 + v17) = 0;
  *(v0 + 216) = 0;
  v19 = swift_task_alloc();
  *(v0 + 192) = v19;
  *v19 = v0;
  v19[1] = sub_264ABDEEC;

  return sub_264AB7970((v0 + 216));
}

uint64_t sub_264ABDCF0()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](sub_264ABDE00, v1, 0);
}

uint64_t sub_264ABDE00()
{
  v1 = v0[22];
  sub_264A545B0(v1);
  sub_264A545B0(v1);
  v2 = v0[19];
  v3 = v0[14];
  v4 = v0[10];
  v5 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v4);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_264ABD674;

  return MEMORY[0x282200310](v0 + 12, v3, v2, v6, v4, v5);
}

uint64_t sub_264ABDEEC()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](sub_264ABDFFC, v1, 0);
}

uint64_t sub_264ABDFFC()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v3);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_264ABD674;

  return MEMORY[0x282200310](v0 + 12, v2, v1, v5, v3, v4);
}

uint64_t sub_264ABE0D4()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](sub_264ABE1E4, v1, 0);
}

uint64_t sub_264ABE1E4()
{
  sub_264A545B0(1);
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v3);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_264ABD674;

  return MEMORY[0x282200310](v0 + 12, v2, v1, v5, v3, v4);
}

uint64_t sub_264ABE2C4()
{
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_264ABE35C;
  v2 = *(v0 + 136);

  return sub_264ABA794(v2);
}

uint64_t sub_264ABE35C()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](sub_264ABE46C, v1, 0);
}

uint64_t sub_264ABE46C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264ABE4CC()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v1[3] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264ABE5E4, v0, 0);
}

uint64_t sub_264ABE5E4()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession);
  v2 = *v1;
  *(v0 + 72) = *v1;
  if (v2)
  {
    v3 = v1[1];
    *(v0 + 80) = v3;
    *(v0 + 88) = swift_getObjectType();
    *(v0 + 184) = 0;
    *(v0 + 96) = *(v3 + 24);
    *(v0 + 104) = (v3 + 24) & 0xFFFFFFFFFFFFLL | 0x7A70000000000000;
    swift_unknownObjectRetain();
    v5 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264ABE708, v5, v4);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_264ABE708()
{
  v1 = (*(v0 + 96))(0xD000000000000027, 0x8000000264B5C640, v0 + 184, *(v0 + 88), *(v0 + 80));
  *(v0 + 112) = 0;
  *(v0 + 120) = v1;
  *(v0 + 128) = v2;
  v3 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_264ABE7BC, v3, 0);
}

uint64_t sub_264ABE7BC()
{
  v11 = v0;
  v1 = v0[16];
  v2 = v0[2];
  v3 = type metadata accessor for ControlMessageSession(0);
  ObjectType = swift_getObjectType();
  v10 = 0;
  v5 = *(v1 + 8);
  v6 = swift_unknownObjectRetain();
  v7 = sub_264A78D00(v6, &v10, v3, ObjectType, v5);
  v0[17] = v7;
  *(v2 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession) = v7;

  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_264ABE8C0;

  return sub_264AC26D4();
}

uint64_t sub_264ABE8C0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 152) = v3;
  *v3 = v2;
  v3[1] = sub_264ABEA00;

  return sub_264AC2EB0();
}

uint64_t sub_264ABEA00()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](sub_264ABEB10, v1, 0);
}

uint64_t sub_264ABEB10()
{
  v1 = v0[14];
  sub_264A74A68(v0[8]);
  v0[20] = v1;
  v2 = v0[2];
  if (v1)
  {
    v3 = sub_264ABEFC0;
  }

  else
  {
    v3 = sub_264ABEBA0;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_264ABEBA0()
{
  v1 = *(v0 + 64);
  v15 = v1;
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = sub_264B41274();
  v16 = *(v0 + 120);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v5 + 16))(v2, v1, v4);
  v9 = sub_264AB6BD4();
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v9;
  (*(v5 + 32))(v12 + v10, v2, v4);
  *(v12 + v11) = v6;
  swift_retain_n();
  sub_264A10C20(0, 0, v7, &unk_264B518F0, v12);

  swift_unknownObjectRelease();

  (*(v5 + 8))(v15, v4);
  *(v6 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream) = v16;
  swift_unknownObjectRelease();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_264ABED90()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_264ABEEA0, v1, 0);
}

uint64_t sub_264ABEEA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264ABEF1C()
{
  swift_unknownObjectRelease();
  v1 = v0[14];
  v0[21] = v1;
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_264ABED90;

  return sub_264ABA794(v1);
}

uint64_t sub_264ABEFC0()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = v0[20];
  v0[21] = v1;
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_264ABED90;

  return sub_264ABA794(v1);
}

uint64_t sub_264ABF07C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_264ABF0A0, v2, 0);
}

uint64_t sub_264ABF0A0()
{
  v34 = v0;
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  *(v0 + 88) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v5 = v1 + v4;
  v6 = *(v1 + v4 + 8);
  v7 = *(v1 + v4 + 16);
  v28 = *(v1 + v4);
  v29 = v6;
  v30 = v7;
  v31 = v3;
  v32 = v2;
  v33 = 5;
  sub_264ACB170(v28, v6, v7);

  LOBYTE(v2) = _s16ScreenSharingKit0aB7SessionC0abD5StateO2eeoiySbAE_AEtFZ_0(&v28, &v31);
  sub_264AB62DC(v31, v32, v33);
  sub_264AB62DC(v28, v29, v30);
  if (v2)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v8 = sub_264B40964();
    *(v0 + 96) = __swift_project_value_buffer(v8, qword_27FFA71B8);
    v9 = sub_264B40944();
    v10 = sub_264B414B4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2649C6000, v9, v10, "Creating media streams", v11, 2u);
      MEMORY[0x266749940](v11, -1, -1);
    }

    v12 = swift_task_alloc();
    *(v0 + 104) = v12;
    *v12 = v0;
    v12[1] = sub_264ABF3E0;
    v13 = *(v0 + 72);
    v14 = *(v0 + 64);

    return sub_264ABF838(v14, v13);
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v16 = sub_264B40964();
    __swift_project_value_buffer(v16, qword_27FFA71B8);

    v17 = sub_264B40944();
    v18 = sub_264B41494();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136446210;
      v21 = *v5;
      v22 = *(v5 + 8);
      v23 = *(v5 + 16);
      *(v0 + 16) = *v5;
      *(v0 + 24) = v22;
      *(v0 + 32) = v23;
      sub_264ACB170(v21, v22, v23);
      v24 = sub_264B41064();
      v26 = sub_2649CC004(v24, v25, &v31);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_2649C6000, v17, v18, "currentState changed to %{public}s before we could setup video stream", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266749940](v20, -1, -1);
      MEMORY[0x266749940](v19, -1, -1);
    }

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_264ABF3E0()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_264ABF4F0, v1, 0);
}

uint64_t sub_264ABF4F0()
{
  v29 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 80) + *(v0 + 88);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v23 = *v3;
  v24 = v4;
  v25 = v5;
  v26 = v2;
  v27 = v1;
  v28 = 5;

  sub_264ACB170(v23, v4, v5);
  v6 = _s16ScreenSharingKit0aB7SessionC0abD5StateO2eeoiySbAE_AEtFZ_0(&v23, &v26);
  sub_264AB62DC(v26, v27, v28);
  sub_264AB62DC(v23, v24, v25);
  if (v6)
  {
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_264ABF744;
    v8 = *(v0 + 72);
    v9 = *(v0 + 64);

    return sub_264AC03B4(v9, v8);
  }

  else
  {

    v11 = sub_264B40944();
    v12 = sub_264B41494();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 80) + *(v0 + 88);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136446210;
      v16 = *v13;
      v17 = *(v13 + 8);
      v18 = *(v13 + 16);
      *(v0 + 40) = *v13;
      *(v0 + 48) = v17;
      *(v0 + 56) = v18;
      sub_264ACB170(v16, v17, v18);
      v19 = sub_264B41064();
      v21 = sub_2649CC004(v19, v20, &v26);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_2649C6000, v11, v12, "currentState changed to %{public}s before we could setup audio stream", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x266749940](v15, -1, -1);
      MEMORY[0x266749940](v14, -1, -1);
    }

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_264ABF744()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264ABF838(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264ABF8D8, v2, 0);
}

uint64_t sub_264ABF8D8(uint64_t a1, uint64_t a2)
{
  v34 = v2;
  v3 = *(v2 + 240);
  v4 = v3 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession;
  v5 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession);
  *(v2 + 256) = v5;
  if (v5)
  {
    v6 = *(v2 + 224);
    v7 = *(v2 + 232);
    v8 = *(v4 + 8);
    v9 = v3 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
    v10 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
    v11 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16);
    v28 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
    v29 = v10;
    v30 = v11;
    v31 = v6;
    v32 = v7;
    v33 = 5;
    swift_unknownObjectRetain();
    sub_264ACB170(v28, v10, v11);

    LOBYTE(v7) = _s16ScreenSharingKit0aB7SessionC0abD5StateO2eeoiySbAE_AEtFZ_0(&v28, &v31);
    sub_264AB62DC(v31, v32, v33);
    sub_264AB62DC(v28, v29, v30);
    if (v7)
    {
      ObjectType = swift_getObjectType();
      *(v2 + 217) = 1;
      v27 = (*(v8 + 16) + **(v8 + 16));
      v13 = swift_task_alloc();
      *(v2 + 264) = v13;
      *v13 = v2;
      v13[1] = sub_264ABFC40;

      return v27(v2 + 16, v2 + 217, ObjectType, v8);
    }

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v15 = sub_264B40964();
    __swift_project_value_buffer(v15, qword_27FFA71B8);

    v16 = sub_264B40944();
    v17 = sub_264B41494();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136446210;
      v20 = *v9;
      v21 = *(v9 + 8);
      v22 = *(v9 + 16);
      *(v2 + 200) = *v9;
      *(v2 + 208) = v21;
      *(v2 + 216) = v22;
      sub_264ACB170(v20, v21, v22);
      v23 = sub_264B41064();
      v25 = sub_2649CC004(v23, v24, &v31);

      *(v18 + 4) = v25;
      _os_log_impl(&dword_2649C6000, v16, v17, "currentState changed to %{public}s before we could setup video stream", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x266749940](v19, -1, -1);
      MEMORY[0x266749940](v18, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  v26 = *(v2 + 8);

  return v26();
}

uint64_t sub_264ABFC40()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_264AC0264;
  }

  else
  {
    v4 = sub_264ABFD58;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264ABFD58()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_264ABFE84;

  return v5(v0 + 7, v1, v2);
}

uint64_t sub_264ABFE84()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_264AC0308;
  }

  else
  {
    v4 = sub_264ABFFB0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264ABFFB0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 240);
  v3 = sub_264B41274();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  sub_2649CB5C0(v0 + 56, v0 + 96);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  sub_2649D2AAC((v0 + 96), (v5 + 4));
  v5[9] = v4;
  sub_264A10C20(0, 0, v1, &unk_264B519E8, v5);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_2649CB5C0(v0 + 16, v0 + 136);
  v6 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_videoStream;
  swift_beginAccess();
  sub_2649FECCC(v0 + 136, v2 + v6, &qword_27FF8B7C8, &unk_264B51598);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_264AC0154()
{
  v1 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_264ACD250, v1, 0);
}

uint64_t sub_264AC0264()
{
  swift_unknownObjectRelease();
  v1 = v0[34];
  v0[37] = v1;
  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_264AC0154;

  return sub_264ABA794(v1);
}

uint64_t sub_264AC0308()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[36];
  v0[37] = v1;
  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_264AC0154;

  return sub_264ABA794(v1);
}

uint64_t sub_264AC03B4(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AC0454, v2, 0);
}

uint64_t sub_264AC0454(uint64_t a1, uint64_t a2)
{
  v34 = v2;
  v3 = *(v2 + 240);
  v4 = v3 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession;
  v5 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_mediaTransportClientSession);
  *(v2 + 256) = v5;
  if (v5)
  {
    v6 = *(v2 + 224);
    v7 = *(v2 + 232);
    v8 = *(v4 + 8);
    v9 = v3 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
    v10 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
    v11 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16);
    v28 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
    v29 = v10;
    v30 = v11;
    v31 = v6;
    v32 = v7;
    v33 = 5;
    swift_unknownObjectRetain();
    sub_264ACB170(v28, v10, v11);

    LOBYTE(v7) = _s16ScreenSharingKit0aB7SessionC0abD5StateO2eeoiySbAE_AEtFZ_0(&v28, &v31);
    sub_264AB62DC(v31, v32, v33);
    sub_264AB62DC(v28, v29, v30);
    if (v7)
    {
      ObjectType = swift_getObjectType();
      *(v2 + 217) = 0;
      v27 = (*(v8 + 16) + **(v8 + 16));
      v13 = swift_task_alloc();
      *(v2 + 264) = v13;
      *v13 = v2;
      v13[1] = sub_264AC07B8;

      return v27(v2 + 16, v2 + 217, ObjectType, v8);
    }

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v15 = sub_264B40964();
    __swift_project_value_buffer(v15, qword_27FFA71B8);

    v16 = sub_264B40944();
    v17 = sub_264B41494();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136446210;
      v20 = *v9;
      v21 = *(v9 + 8);
      v22 = *(v9 + 16);
      *(v2 + 200) = *v9;
      *(v2 + 208) = v21;
      *(v2 + 216) = v22;
      sub_264ACB170(v20, v21, v22);
      v23 = sub_264B41064();
      v25 = sub_2649CC004(v23, v24, &v31);

      *(v18 + 4) = v25;
      _os_log_impl(&dword_2649C6000, v16, v17, "currentState changed to %{public}s before we could setup video stream", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x266749940](v19, -1, -1);
      MEMORY[0x266749940](v18, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  v26 = *(v2 + 8);

  return v26();
}

uint64_t sub_264AC07B8()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_264AC0E44;
  }

  else
  {
    v4 = sub_264AC08D0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264AC08D0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_264AC09FC;

  return v5(v0 + 7, v1, v2);
}

uint64_t sub_264AC09FC()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_264AC0EE8;
  }

  else
  {
    v4 = sub_264AC0B28;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264AC0B28()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 240);
  v3 = sub_264B41274();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  sub_2649CB5C0(v0 + 56, v0 + 96);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  sub_2649D2AAC((v0 + 96), (v5 + 4));
  v5[9] = v4;
  sub_264A10C20(0, 0, v1, &unk_264B519D8, v5);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_2649CB5C0(v0 + 16, v0 + 136);
  v6 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_audioStream;
  swift_beginAccess();
  sub_2649FECCC(v0 + 136, v2 + v6, &qword_27FF8B7C8, &unk_264B51598);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_264AC0CCC()
{
  v1 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_264AC0DDC, v1, 0);
}

uint64_t sub_264AC0DDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264AC0E44()
{
  swift_unknownObjectRelease();
  v1 = v0[34];
  v0[37] = v1;
  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_264AC0CCC;

  return sub_264ABA794(v1);
}

uint64_t sub_264AC0EE8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[36];
  v0[37] = v1;
  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_264AC0CCC;

  return sub_264ABA794(v1);
}

uint64_t sub_264AC0F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  return MEMORY[0x2822009F8](sub_264AC0FB4, 0, 0);
}

uint64_t sub_264AC0FB4()
{
  v1 = v0[15];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_264B41334();

  swift_beginAccess();
  v6 = v0[5];
  v7 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v6);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_264AC1184;

  return MEMORY[0x282200310](v0 + 24, 0, 0, v0 + 13, v6, v7);
}

uint64_t sub_264AC1184()
{

  if (v0)
  {
    v1 = sub_264AC19D0;
  }

  else
  {
    v1 = sub_264AC1294;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_264AC1294()
{
  v1 = *(v0 + 192);
  if (v1 == 6 || (Strong = swift_weakLoadStrong(), (*(v0 + 144) = Strong) == 0))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    if (v1 > 1)
    {
      if ((v1 - 2) < 2)
      {
        sub_264B41754();

        *(v0 + 193) = v1;
        v3 = sub_264B41064();
        MEMORY[0x266748390](v3);

        return sub_264B41874();
      }

      if (v1 == 4)
      {
        if (qword_27FF883E0 != -1)
        {
          swift_once();
        }

        v11 = sub_264B40964();
        __swift_project_value_buffer(v11, qword_27FFA71B8);
        v12 = sub_264B40944();
        v13 = sub_264B414B4();
        if (!os_log_type_enabled(v12, v13))
        {
          goto LABEL_27;
        }

        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Video stream tearing down";
      }

      else
      {
        if (qword_27FF883E0 != -1)
        {
          swift_once();
        }

        v16 = sub_264B40964();
        __swift_project_value_buffer(v16, qword_27FFA71B8);
        v12 = sub_264B40944();
        v13 = sub_264B414B4();
        if (!os_log_type_enabled(v12, v13))
        {
          goto LABEL_27;
        }

        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Video stream invalidated";
      }

      _os_log_impl(&dword_2649C6000, v12, v13, v15, v14, 2u);
      MEMORY[0x266749940](v14, -1, -1);
LABEL_27:

      goto LABEL_28;
    }

    if (!v1)
    {
LABEL_28:

      v17 = *(v0 + 40);
      v18 = *(v0 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v17);
      v19 = swift_task_alloc();
      *(v0 + 136) = v19;
      *v19 = v0;
      v19[1] = sub_264AC1184;

      return MEMORY[0x282200310](v0 + 192, 0, 0, v0 + 104, v17, v18);
    }

    v6 = Strong;
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v7 = sub_264B40964();
    __swift_project_value_buffer(v7, qword_27FFA71B8);
    v8 = sub_264B40944();
    v9 = sub_264B414B4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2649C6000, v8, v9, "Video stream activated", v10, 2u);
      MEMORY[0x266749940](v10, -1, -1);
    }

    *(v0 + 152) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry;

    return MEMORY[0x2822009F8](sub_264AC16FC, v6, 0);
  }
}

uint64_t sub_264AC1724()
{
  v10 = v0;
  v1 = v0[20];
  v2 = mach_absolute_time();
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer);
  if (v3)
  {
    v4 = v2;
    if (v2)
    {
      __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
      v9 = 11;

      sub_264A560D4(&v9, v4, 0, 0, 0);
    }
  }

  v5 = v0[5];
  v6 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v5);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_264AC1184;

  return MEMORY[0x282200310](v0 + 24, 0, 0, v0 + 13, v5, v6);
}

uint64_t sub_264AC186C()
{

  return MEMORY[0x2822009F8](sub_264AC1968, 0, 0);
}

uint64_t sub_264AC1968()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264AC19D0()
{
  v17 = v0;
  v1 = v0[13];
  v0[22] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FFA71B8);
    v4 = v1;
    v5 = sub_264B40944();
    v6 = sub_264B41494();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136446210;
      v0[14] = v1;
      v9 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
      v10 = sub_264B41064();
      v12 = sub_2649CC004(v10, v11, &v16);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_2649C6000, v5, v6, "Video stream interrupted with: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x266749940](v8, -1, -1);
      MEMORY[0x266749940](v7, -1, -1);
    }

    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = sub_264AC186C;

    return sub_264ABA794(v1);
  }

  else
  {

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_264AC1C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return MEMORY[0x2822009F8](sub_264AC1C68, 0, 0);
}

uint64_t sub_264AC1C68()
{
  v1 = v0[12];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_264B41334();

  v6 = v0[5];
  v7 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v6);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_264AC1E24;

  return MEMORY[0x282200310](v0 + 18, 0, 0, v0 + 10, v6, v7);
}

uint64_t sub_264AC1E24()
{

  if (v0)
  {
    v1 = sub_264AC245C;
  }

  else
  {
    v1 = sub_264AC1F34;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_264AC1F34()
{
  v1 = *(v0 + 144);
  if (v1 <= 3)
  {
    if (v1 - 2 < 2)
    {
      sub_264B41754();

      *(v0 + 145) = v1;
      v2 = sub_264B41064();
      MEMORY[0x266748390](v2);

      return sub_264B41874();
    }

    if (!*(v0 + 144))
    {
      goto LABEL_21;
    }

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FFA71B8);
    v5 = sub_264B40944();
    v6 = sub_264B414B4();
    if (!os_log_type_enabled(v5, v6))
    {
LABEL_20:

LABEL_21:
      v11 = *(v0 + 40);
      v12 = *(v0 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v11);
      v13 = swift_task_alloc();
      *(v0 + 112) = v13;
      *v13 = v0;
      v13[1] = sub_264AC1E24;

      return MEMORY[0x282200310](v0 + 144, 0, 0, v0 + 80, v11, v12);
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Audio stream activated";
LABEL_19:
    _os_log_impl(&dword_2649C6000, v5, v6, v8, v7, 2u);
    MEMORY[0x266749940](v7, -1, -1);
    goto LABEL_20;
  }

  if (v1 == 4)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v10 = sub_264B40964();
    __swift_project_value_buffer(v10, qword_27FFA71B8);
    v5 = sub_264B40944();
    v6 = sub_264B414B4();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_20;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Audio stream tearing down";
    goto LABEL_19;
  }

  if (v1 == 5)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71B8);
    v5 = sub_264B40944();
    v6 = sub_264B414B4();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_20;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Audio stream invalidated";
    goto LABEL_19;
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_264AC22F8()
{

  return MEMORY[0x2822009F8](sub_264AC23F4, 0, 0);
}

uint64_t sub_264AC23F4()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264AC245C()
{
  v17 = v0;
  v1 = v0[10];
  v0[16] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FFA71B8);
    v4 = v1;
    v5 = sub_264B40944();
    v6 = sub_264B41494();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136446210;
      v0[11] = v1;
      v9 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
      v10 = sub_264B41064();
      v12 = sub_2649CC004(v10, v11, &v16);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_2649C6000, v5, v6, "Audio stream interrupted with: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x266749940](v8, -1, -1);
      MEMORY[0x266749940](v7, -1, -1);
    }

    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = sub_264AC22F8;

    return sub_264ABA794(v1);
  }

  else
  {

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_264AC26D4()
{
  v1[2] = v0;
  v2 = sub_264B3FFD4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AC2794, v0, 0);
}

uint64_t sub_264AC2794()
{
  v21 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71B8);
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
    v20 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v20);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 523;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD000000000000018, 0x8000000264B5FB70, &v20);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[2];
  v14 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v0[6] = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v15 = v13 + v14;
  v16 = *(v15 + 16);
  if ((v16 - 7) < 2 || v16 == 9 && __PAIR128__((*v15 >= 3uLL) + *(v15 + 8) - 1, *v15 - 3) < 2)
  {

    v17 = v0[1];

    return v17();
  }

  else
  {
    v0[7] = sub_264AB6BD4();
    v19 = swift_task_alloc();
    v0[8] = v19;
    *v19 = v0;
    v19[1] = sub_264AC2AE0;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_264AC2AE0()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_264AC2BF0, v1, 0);
}

uint64_t sub_264AC2BF0()
{
  v1 = v0[2] + v0[6];
  v2 = *(v1 + 16);
  if ((v2 - 7) < 2 || v2 == 9 && __PAIR128__((*v1 >= 3uLL) + *(v1 + 8) - 1, *v1 - 3) < 2)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_264AC2D40;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_264AC2D40()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_264AC2E50, v1, 0);
}

uint64_t sub_264AC2E50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264AC2EB0()
{
  v1[2] = v0;
  v2 = sub_264B3FFD4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AC2F70, v0, 0);
}

uint64_t sub_264AC2F70()
{
  v19 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71B8);
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
    v18 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v18);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 616;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD000000000000025, 0x8000000264B5FAC0, &v18);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[2];
  v14 = *(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16);
  if ((v14 - 7) < 2 || v14 == 9 && __PAIR128__((*(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) >= 3uLL) + *(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8) - 1, *(v13 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) - 3) < 2)
  {

    v15 = v0[1];

    return v15();
  }

  else
  {
    sub_264AB6BD4();
    v17 = swift_task_alloc();
    v0[6] = v17;
    *v17 = v0;
    v17[1] = sub_264AC32B4;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_264AC32B4()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_264ACD254, v1, 0);
}

uint64_t sub_264AC33C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v7 = type metadata accessor for ContinuityDevice(0);
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270);
  v5[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A5D8, &qword_264B4BB50);
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AC3528, a5, 0);
}

uint64_t sub_264AC3528()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
  sub_264B412C4();
  v1 = sub_264AB6BD4();
  v2 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageStream;
  v0[24] = v1;
  v0[25] = v2;
  v3 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v0[26] = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
  v0[27] = v3;
  v0[28] = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_telemetry;
  swift_beginAccess();
  v4 = v0[24];
  v5 = v0[16];
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_264AC3648;
  v7 = v0[21];

  return MEMORY[0x2822003E8](v0 + 13, v5, v4, v7);
}

uint64_t sub_264AC3648()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](sub_264AC3758, v1, 0);
}

uint64_t sub_264AC3758()
{
  v58 = v0;
  v2 = v0 + 13;
  v1 = v0[13];
  v0[30] = v1;
  if (v1 == 3)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    v3 = v0[1];

    return v3();
  }

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FFA71B8);
  sub_264A1EE08(v1);
  v6 = sub_264B40944();
  v7 = sub_264B41484();
  sub_264A794B4(v1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v57 = v9;
    *v8 = 136446210;
    v0[14] = v1;
    sub_264A1EE08(v1);
    v10 = sub_264B41064();
    v12 = sub_2649CC004(v10, v11, &v57);

    *(v8 + 4) = v12;
    v2 = v0 + 13;
    _os_log_impl(&dword_2649C6000, v6, v7, "controlMessageSession state transitioned to: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  if (!v1)
  {
    goto LABEL_33;
  }

  if (v1 == 1)
  {
    v20 = v0[20];
    v22 = v0[17];
    v21 = v0[18];
    sub_2649D046C(v0[16] + v0[26], v20, &unk_27FF89E30, &qword_264B44270);
    v23 = (*(v21 + 48))(v20, 1, v22);
    v24 = v0[20];
    if (v23)
    {
      sub_2649D04D4(v24, &unk_27FF89E30, &qword_264B44270);
      v25 = 0xE700000000000000;
      v26 = v0;
      v27 = 0x6E776F6E6B6E55;
    }

    else
    {
      v29 = v0[19];
      v30 = v0[20];
      sub_264ACB1F0(v24, v29, type metadata accessor for ContinuityDevice);
      sub_2649D04D4(v30, &unk_27FF89E30, &qword_264B44270);
      v26 = v0;
      v27 = *(v29 + 16);
      v25 = *(v29 + 24);

      sub_264ACB258(v29, type metadata accessor for ContinuityDevice);
    }

    v31 = v26[28];
    v32 = v26[16];
    v33 = v32 + v26[27];
    v34 = *v33;
    v35 = *(v33 + 8);
    *v33 = v27;
    *(v33 + 8) = v25;
    v36 = *(v33 + 16);
    *(v33 + 16) = 1;
    sub_264ACB170(v34, v35, v36);
    sub_264AB62DC(v34, v35, v36);
    v26[10] = v34;
    v26[11] = v35;
    *(v26 + 96) = v36;
    sub_264AB5690((v2 - 3));
    sub_264AB62DC(v34, v35, v36);
    v37 = *(*(v32 + v31) + OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_eventConsumers);
    v0 = v26;
    v55 = *(v37 + 16);
    if (v55)
    {
      v38 = v2 - 11;
      v53 = v37 + 32;

      v39 = 0;
      v54 = v26;
      do
      {
        v40 = v53 + 40 * v39++;
        sub_2649CB5C0(v40, v38);
        v41 = v0[5];
        v42 = v0[6];
        __swift_project_boxed_opaque_existential_1(v38, v41);
        v43 = (*(v42 + 8))(v41, v42);
        v44 = *(v43 + 16);
        v45 = (v43 + 32);
        while (2)
        {
          if (v44)
          {
            switch(*v45)
            {
              case 8:

                break;
              default:
                v46 = sub_264B41AA4();

                ++v45;
                --v44;
                if ((v46 & 1) == 0)
                {
                  continue;
                }

                break;
            }

            v0 = v54;
            v47 = v54[5];
            v48 = v54[6];
            v38 = v2 - 11;
            __swift_project_boxed_opaque_existential_1(v2 - 11, v47);
            v56 = 8;
            (*(v48 + 16))(&v56, 0, v47, v48);
          }

          else
          {

            v0 = v54;
            v38 = v2 - 11;
          }

          break;
        }

        __swift_destroy_boxed_opaque_existential_0(v38);
      }

      while (v39 != v55);

      sub_264A794B4(1);
    }

    else
    {
      sub_264A794B4(1);
    }

    goto LABEL_33;
  }

  if (v1 == 2)
  {
    v13 = sub_264B40944();
    v14 = sub_264B41474();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2649C6000, v13, v14, "Control stream invalidated", v15, 2u);
      MEMORY[0x266749940](v15, -1, -1);
      sub_264A794B4(2);
    }

    v16 = v0;
    v17 = v0[25];
    v18 = v16[16];

    v19 = (v18 + v17);
    v0 = v16;
    *v19 = 0;
    v19[1] = 0;
    swift_unknownObjectRelease();
LABEL_33:
    v49 = v0[24];
    v50 = v0[16];
    v51 = swift_task_alloc();
    v0[29] = v51;
    *v51 = v0;
    v51[1] = sub_264AC3648;
    v52 = v0[21];

    return MEMORY[0x2822003E8](v2, v50, v49, v52);
  }

  sub_264A1EE08(v1);
  v28 = swift_task_alloc();
  v0[31] = v28;
  *v28 = v0;
  v28[1] = sub_264AC40D8;

  return sub_264ABA794(v1);
}

uint64_t sub_264AC40D8()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](sub_264AC41E8, v1, 0);
}

uint64_t sub_264AC41E8()
{
  v1 = v0[30];
  sub_264A794B4(v1);
  sub_264A794B4(v1);
  v2 = v0[24];
  v3 = v0[16];
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_264AC3648;
  v5 = v0[21];

  return MEMORY[0x2822003E8](v0 + 13, v3, v2, v5);
}

uint64_t sub_264AC42B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[126] = a5;
  v5[125] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8B0, &qword_264B51958);
  v5[127] = v6;
  v5[128] = *(v6 - 8);
  v5[129] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8B8, &qword_264B51960);
  v5[130] = v7;
  v5[131] = *(v7 - 8);
  v5[132] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8C0, &qword_264B51968);
  v5[133] = v8;
  v5[134] = *(v8 - 8);
  v5[135] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AC4454, 0, 0);
}

uint64_t sub_264AC4454()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 1088) = Strong;
  if (!Strong)
  {
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    sub_264B411E4();

    v3 = *(v0 + 8);

    return v3();
  }

  v2 = Strong;
  if (sub_264B41314())
  {

    goto LABEL_4;
  }

  return MEMORY[0x2822009F8](sub_264AC4560, v2, 0);
}

uint64_t sub_264AC4560()
{
  *(v0 + 1096) = *(*(v0 + 1088) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession);

  return MEMORY[0x2822009F8](sub_264AC45DC, 0, 0);
}

uint64_t sub_264AC45DC(uint64_t a1)
{
  if (!*(v1 + 1096))
  {
    return sub_264B41874();
  }

  if (sub_264B41314())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    sub_264B411E4();

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(v1 + 1096);

    return MEMORY[0x2822009F8](sub_264AC473C, v4, 0);
  }
}

uint64_t sub_264AC473C()
{
  (*(v0[131] + 104))(v0[132], *MEMORY[0x277D85778], v0[130]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264AC4808, 0, 0);
}

uint64_t sub_264AC4808()
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  v0[138] = __swift_project_value_buffer(v1, qword_27FFA71B8);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Monitoring incoming events", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  if (sub_264B41314())
  {
    (*(v0[134] + 8))(v0[135], v0[133]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_264B412C4();
    v7 = swift_task_alloc();
    v0[139] = v7;
    *v7 = v0;
    v7[1] = sub_264AC4A30;
    v8 = v0[127];

    return MEMORY[0x2822003E8](v0 + 15, 0, 0, v8);
  }
}

uint64_t sub_264AC4A30()
{

  return MEMORY[0x2822009F8](sub_264AC4B2C, 0, 0);
}

uint64_t sub_264AC4B2C(uint64_t a1)
{
  v47 = v1;
  v2 = *(v1 + 136);
  *(v1 + 16) = *(v1 + 120);
  *(v1 + 32) = v2;
  v3 = *(v1 + 168);
  *(v1 + 48) = *(v1 + 152);
  *(v1 + 64) = v3;
  v4 = *(v1 + 200);
  *(v1 + 80) = *(v1 + 184);
  *(v1 + 96) = v4;
  *(v1 + 112) = *(v1 + 216);
  v5 = *(v1 + 72);
  if ((v5 & 0x3FFFFFFFFFFFFF1ELL) == 0xFFFFFFF1ELL)
  {

LABEL_5:
    v13 = *(v1 + 1080);
    v14 = *(v1 + 1072);
    v15 = *(v1 + 1064);
    (*(*(v1 + 1024) + 8))(*(v1 + 1032), *(v1 + 1016));
    (*(v14 + 8))(v13, v15);

    v16 = *(v1 + 8);

    return v16();
  }

  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  if (sub_264B41314())
  {

    sub_2649D04D4(v1 + 16, &qword_27FF8B8C8, &qword_264B51970);
    goto LABEL_5;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v32 = *(v1 + 96);
    *(v1 + 288) = *(v1 + 80);
    *(v1 + 304) = v32;
    *(v1 + 320) = *(v1 + 112);
    v33 = *(v1 + 32);
    *(v1 + 224) = *(v1 + 16);
    *(v1 + 240) = v33;
    v34 = *(v1 + 64);
    *(v1 + 256) = *(v1 + 48);
    *(v1 + 272) = v34;
    sub_264A7D664(v1 + 224, v1 + 328);
    v35 = sub_264B40944();
    v36 = sub_264B41494();
    sub_2649D04D4(v1 + 16, &qword_27FF8B8C8, &qword_264B51970);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v46 = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_2649CC004(0x7645737574617453, 0xEB00000000746E65, &v46);
      _os_log_impl(&dword_2649C6000, v35, v36, "Received unknown type from server (%{public}s, ignoring", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x266749940](v38, -1, -1);
      MEMORY[0x266749940](v37, -1, -1);
    }

    sub_2649D04D4(v1 + 16, &qword_27FF8B8C8, &qword_264B51970);
    v39 = swift_task_alloc();
    *(v1 + 1112) = v39;
    *v39 = v1;
    v39[1] = sub_264AC4A30;
    v40 = *(v1 + 1016);

    return MEMORY[0x2822003E8](v1 + 120, 0, 0, v40);
  }

  else
  {
    v45 = v8;
    v18 = *(v1 + 96);
    *(v1 + 496) = *(v1 + 80);
    *(v1 + 512) = v18;
    *(v1 + 528) = *(v1 + 112);
    v19 = *(v1 + 32);
    *(v1 + 432) = *(v1 + 16);
    *(v1 + 448) = v19;
    v20 = *(v1 + 64);
    *(v1 + 464) = *(v1 + 48);
    *(v1 + 480) = v20;
    sub_264A7D664(v1 + 432, v1 + 536);
    v21 = sub_264B40944();
    v22 = sub_264B41484();
    sub_2649D04D4(v1 + 16, &qword_27FF8B8C8, &qword_264B51970);
    v44 = v22;
    v23 = v22;
    v24 = v21;
    if (os_log_type_enabled(v21, v23))
    {
      buf = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *buf = 136446210;
      *(v1 + 912) = v6;
      *(v1 + 920) = v7;
      *(v1 + 928) = v9;
      *(v1 + 936) = v45;
      *(v1 + 944) = v10;
      *(v1 + 952) = v11;
      *(v1 + 960) = v12;
      *(v1 + 968) = v5;
      v25 = *(v1 + 96);
      *(v1 + 704) = *(v1 + 80);
      *(v1 + 720) = v25;
      *(v1 + 736) = *(v1 + 112);
      v26 = *(v1 + 32);
      *(v1 + 640) = *(v1 + 16);
      *(v1 + 656) = v26;
      v27 = *(v1 + 64);
      *(v1 + 672) = *(v1 + 48);
      *(v1 + 688) = v27;
      sub_264A7D664(v1 + 640, v1 + 744);
      v28 = sub_264B41064();
      v30 = v11;
      v31 = sub_2649CC004(v28, v29, &v46);

      *(buf + 4) = v31;
      v11 = v30;
      _os_log_impl(&dword_2649C6000, v24, v44, "Received server event: %{public}s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x266749940](v43, -1, -1);
      MEMORY[0x266749940](buf, -1, -1);
    }

    else
    {
    }

    *(v1 + 848) = v6;
    *(v1 + 856) = v7;
    *(v1 + 864) = v9;
    *(v1 + 872) = v45;
    *(v1 + 880) = v10;
    *(v1 + 888) = v11;
    *(v1 + 896) = v12;
    *(v1 + 904) = v5;
    v41 = swift_task_alloc();
    *(v1 + 1120) = v41;
    *v41 = v1;
    v41[1] = sub_264AC50A8;

    return sub_264AC5264((v1 + 848));
  }
}

uint64_t sub_264AC50A8()
{

  return MEMORY[0x2822009F8](sub_264AC51A4, 0, 0);
}

uint64_t sub_264AC51A4()
{
  sub_2649D04D4(v0 + 16, &qword_27FF8B8C8, &qword_264B51970);
  v1 = swift_task_alloc();
  *(v0 + 1112) = v1;
  *v1 = v0;
  v1[1] = sub_264AC4A30;
  v2 = *(v0 + 1016);

  return MEMORY[0x2822003E8](v0 + 120, 0, 0, v2);
}

uint64_t sub_264AC5264(_OWORD *a1)
{
  *(v2 + 312) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E0, &qword_264B449C0);
  *(v2 + 320) = swift_task_alloc();
  v4 = type metadata accessor for ContinuityDevice(0);
  *(v2 + 328) = v4;
  *(v2 + 336) = *(v4 - 8);
  *(v2 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89E30, &qword_264B44270);
  *(v2 + 352) = swift_task_alloc();
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  *(v2 + 48) = a1[2];
  *(v2 + 57) = *(a1 + 41);

  return MEMORY[0x2822009F8](sub_264AC53B0, v1, 0);
}

uint64_t sub_264AC53B0()
{
  v173 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  v4 = *(v0 + 312);
  v5 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentContinuityDevice;
  swift_beginAccess();
  sub_2649D046C(v4 + v5, v1, &unk_27FF89E30, &qword_264B44270);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = *(v0 + 352);
  if (v6)
  {
    sub_2649D04D4(v7, &unk_27FF89E30, &qword_264B44270);
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E55;
  }

  else
  {
    v10 = *(v0 + 344);
    v11 = *(v0 + 352);
    sub_264ACB1F0(v7, v10, type metadata accessor for ContinuityDevice);
    sub_2649D04D4(v11, &unk_27FF89E30, &qword_264B44270);
    v12 = *(v10 + 16);
    v8 = *(v10 + 24);

    sub_264ACB258(v10, type metadata accessor for ContinuityDevice);
    v9 = v12;
  }

  *(v0 + 360) = v8;
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  v15 = *(v0 + 32);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  v18 = *(v0 + 56);
  v19 = *(v0 + 64);
  v20 = *(v0 + 72);
  v21 = v20 >> 5;
  if (v20 >> 5 <= 2)
  {
    if (v21)
    {
      if (v21 == 1)
      {

        v22 = qword_27FF883E0;

        if (v22 != -1)
        {
          swift_once();
        }

        v23 = sub_264B40964();
        __swift_project_value_buffer(v23, qword_27FFA71B8);

        v24 = sub_264B40944();
        v25 = sub_264B414B4();
        sub_264A52520(v0 + 16);
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *&v166 = v27;
          *v26 = 136446210;
          sub_264A54FD4();
          v28 = sub_264B41424();
          v30 = sub_2649CC004(v28, v29, &v166);

          *(v26 + 4) = v30;
          _os_log_impl(&dword_2649C6000, v24, v25, "Received blocked serverStatusEvent, reasons: %{public}s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v27);
          MEMORY[0x266749940](v27, -1, -1);
          MEMORY[0x266749940](v26, -1, -1);
        }

        v31 = *(v0 + 312) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
        v32 = *v31;
        v33 = *(v31 + 8);
        *v31 = v13;
        *(v31 + 8) = 0;
        v34 = *(v31 + 16);
        *(v31 + 16) = 6;
        sub_264ACB170(v32, v33, v34);
        sub_264AB62DC(v32, v33, v34);
        *&v166 = v32;
        *(&v166 + 1) = v33;
        LOBYTE(v167) = v34;
        sub_264AB5690(&v166);
        sub_264AB62DC(v32, v33, v34);
      }

      else
      {

        if (qword_27FF883E0 != -1)
        {
          swift_once();
        }

        v60 = sub_264B40964();
        __swift_project_value_buffer(v60, qword_27FFA71B8);
        v61 = sub_264B40944();
        v62 = sub_264B414B4();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *&v166 = v64;
          *v63 = 136446210;
          *(v0 + 272) = v13;
          *(v0 + 280) = v14;
          v65 = sub_264B41064();
          v67 = v14;
          v68 = sub_2649CC004(v65, v66, &v166);

          *(v63 + 4) = v68;
          v14 = v67;
          _os_log_impl(&dword_2649C6000, v61, v62, "Received orientation status update from server: %{public}s", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v64);
          MEMORY[0x266749940](v64, -1, -1);
          MEMORY[0x266749940](v63, -1, -1);
        }

        LOBYTE(v166) = 13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_264B44150;
        *(v69 + 32) = 0x7461746E6569724FLL;
        v70 = v69 + 32;
        *(v69 + 40) = 0xEB000000006E6F69;
        *(v69 + 72) = &type metadata for SceneInteractorOrientationStatus;
        *(v69 + 48) = v13;
        *(v69 + 56) = v14;
        v71 = sub_264A24308(v69);
        swift_setDeallocating();
        sub_2649D04D4(v70, &qword_27FF89220, &qword_264B48430);
        swift_deallocClassInstance();
        sub_264A9113C(&v166, v71);

        *(v0 + 256) = v13;
        *(v0 + 264) = v14;
        sub_264B409F4();
      }
    }

    else
    {
      v163 = v9;
      v164 = v8;
      v165 = *(v0 + 24);
      v162 = v20 & 0x1F;
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v45 = sub_264B40964();
      __swift_project_value_buffer(v45, qword_27FFA71B8);
      *(v0 + 121) = *(v0 + 57);
      v46 = *(v0 + 32);
      *(v0 + 80) = *(v0 + 16);
      *(v0 + 96) = v46;
      *(v0 + 112) = *(v0 + 48);
      *(v0 + 136) &= 0x1Fu;
      sub_2649D046C(v0 + 80, v0 + 144, &qword_27FF8B8D0, &qword_264B51990);
      v47 = sub_264B40944();
      v48 = sub_264B414B4();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = v13;
        v50 = swift_slowAlloc();
        *v50 = 134349056;
        *(v50 + 4) = v49;
        sub_264A52520(v0 + 16);
        _os_log_impl(&dword_2649C6000, v47, v48, "Connected to remote device using protocol version: %{public}lu", v50, 0xCu);
        v51 = v50;
        v13 = v49;
        MEMORY[0x266749940](v51, -1, -1);
      }

      else
      {
        sub_264A52520(v0 + 16);
      }

      *&v166 = v13;
      *(&v166 + 1) = v165;
      v167 = v15;
      v168 = v16;
      v169 = v17;
      v170 = v18;
      v171 = v19;
      v172 = v162;
      sub_264AC8A90(&v166, v163, v164);
    }

    goto LABEL_59;
  }

  if (v21 == 3)
  {

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v52 = sub_264B40964();
    __swift_project_value_buffer(v52, qword_27FFA71B8);

    v53 = sub_264B40944();
    v54 = sub_264B414B4();
    sub_264A52520(v0 + 16);
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v166 = v56;
      *v55 = 136446210;
      sub_2649E5670();
      v57 = sub_264B41424();
      v59 = sub_2649CC004(v57, v58, &v166);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_2649C6000, v53, v54, "Sensors in use on server: %{public}s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x266749940](v56, -1, -1);
      MEMORY[0x266749940](v55, -1, -1);
    }

    if (sub_264AABDA8())
    {
      LOBYTE(v166) = 14;
      sub_264A9113C(&v166, 0);
    }

    if (sub_264AABDA8())
    {
      LOBYTE(v166) = 15;
      sub_264A9113C(&v166, 0);
    }

    *(v0 + 304) = v13;
    sub_264B409F4();
    goto LABEL_59;
  }

  if (v21 == 4)
  {

    v35 = v14;
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v36 = sub_264B40964();
    __swift_project_value_buffer(v36, qword_27FFA71B8);
    sub_2649E124C(*(v0 + 16), *(v0 + 24));
    v37 = sub_264B40944();
    v38 = sub_264B41494();
    sub_264A52520(v0 + 16);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v166 = v40;
      *v39 = 136446210;
      v41 = v13;
      *(v0 + 288) = v13;
      *(v0 + 296) = v14;
      sub_2649E124C(*(v0 + 16), *(v0 + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89DC0, &qword_264B494C0);
      v42 = sub_264B41064();
      v44 = v14;
      v14 = sub_2649CC004(v42, v43, &v166);

      *(v39 + 4) = v14;
      LOBYTE(v14) = v44;
      _os_log_impl(&dword_2649C6000, v37, v38, "Received serverExiting serverStatusEvent, error: %{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x266749940](v40, -1, -1);
      MEMORY[0x266749940](v39, -1, -1);
    }

    else
    {
      v41 = v13;
    }

    if (v35 <= 0xFB)
    {
      sub_264A52574();
      v91 = swift_allocError();
      v92 = v41;
      *v93 = v41;
      *(v93 + 8) = v35;
    }

    else
    {
      v91 = 0;
      v92 = v41;
    }

    sub_2649E124C(*(v0 + 16), *(v0 + 24));
    v94 = telemetryPayload(_:_:)(0xD000000000000010, 0x8000000264B5FBE0, v91);

    LOBYTE(v166) = 10;
    sub_264A9113C(&v166, v94);

    if (v35 > 0xFB)
    {
      goto LABEL_59;
    }

    if ((v35 & 0xC0) != 0x80)
    {
      goto LABEL_94;
    }

    if (__PAIR128__(-128, 15) >= __PAIR128__(v14, v92))
    {
      if (v14 == 128 && v92 == 11)
      {
        v150 = *(v0 + 312) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
        v151 = *v150;
        v152 = *(v150 + 8);
        *v150 = xmmword_264B47380;
        v153 = *(v150 + 16);
        *(v150 + 16) = 9;
        sub_264ACB170(v151, v152, v153);
        sub_264AB62DC(v151, v152, v153);
        *&v166 = v151;
        *(&v166 + 1) = v152;
        LOBYTE(v167) = v153;
        sub_264AB5690(&v166);
        sub_264AB62DC(v151, v152, v153);
        v106 = swift_task_alloc();
        *(v0 + 392) = v106;
        *v106 = v0;
        v107 = sub_264AC6DE4;
      }

      else
      {
        if (v14 != 128 || v92 != 15)
        {
LABEL_94:
          sub_264A52574();
          v130 = swift_allocError();
          *(v0 + 400) = v130;
          *v131 = v92;
          *(v131 + 8) = v35;
          sub_2649E124C(*(v0 + 16), *(v0 + 24));
          v132 = swift_task_alloc();
          *(v0 + 408) = v132;
          *v132 = v0;
          v132[1] = sub_264AC6F34;

          return sub_264ABA794(v130);
        }

        v99 = *(v0 + 312);
        sub_264A52574();
        v100 = swift_allocError();
        *v101 = v92;
        *(v101 + 8) = v35;
        v102 = v99 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
        v103 = *(v99 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
        v104 = *(v99 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
        *v102 = v100;
        *(v102 + 8) = 0;
        v105 = *(v102 + 16);
        *(v102 + 16) = 8;
        sub_264ACB170(v103, v104, v105);
        sub_264AB62DC(v103, v104, v105);
        *&v166 = v103;
        *(&v166 + 1) = v104;
        LOBYTE(v167) = v105;
        sub_264AB5690(&v166);
        sub_264AB62DC(v103, v104, v105);
        v106 = swift_task_alloc();
        *(v0 + 376) = v106;
        *v106 = v0;
        v107 = sub_264AC6B44;
      }

      goto LABEL_116;
    }

    if (v14 == 128 && v92 == 16)
    {
      v154 = *(v0 + 312);
      sub_264A52574();
      v155 = swift_allocError();
      *v156 = v92;
      *(v156 + 8) = v35;
      v157 = v154 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
      v158 = *(v154 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
      v159 = *(v154 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
      *v157 = v155;
      *(v157 + 8) = 0;
      v160 = *(v157 + 16);
      *(v157 + 16) = 8;
      sub_264ACB170(v158, v159, v160);
      sub_264AB62DC(v158, v159, v160);
      *&v166 = v158;
      *(&v166 + 1) = v159;
      LOBYTE(v167) = v160;
      sub_264AB5690(&v166);
      sub_264AB62DC(v158, v159, v160);
      v106 = swift_task_alloc();
      *(v0 + 384) = v106;
      *v106 = v0;
      v107 = sub_264AC6C94;
LABEL_116:
      v106[1] = v107;

      return sub_264AB7F20();
    }

    if (v14 != 128 || v92 != 19)
    {
      goto LABEL_94;
    }

    v122 = *(v0 + 312);
    sub_264A52574();
    v123 = swift_allocError();
    *v124 = v92;
    *(v124 + 8) = v35;
    v125 = v122 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
    v126 = *(v122 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
    v127 = *(v122 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
    *v125 = v123;
    *(v125 + 8) = 0;
    v128 = *(v125 + 16);
    v129 = 8;
    goto LABEL_105;
  }

  v72 = v15 | v14;
  v73 = v17 | v18 | v19;
  if (v20 == 160 && !(v72 | v13 | v16 | v73))
  {

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v74 = sub_264B40964();
    __swift_project_value_buffer(v74, qword_27FFA71B8);
    v75 = sub_264B40944();
    v76 = sub_264B41484();
    if (!os_log_type_enabled(v75, v76))
    {
      goto LABEL_43;
    }

    v77 = swift_slowAlloc();
    *v77 = 0;
    v78 = "Received unknown serverStatusEvent, ignoring";
    goto LABEL_42;
  }

  v79 = v72 | v16 | v73;
  if (v20 == 160 && v13 == 1 && !v79)
  {
    v80 = v9;
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v81 = v8;
    v82 = sub_264B40964();
    __swift_project_value_buffer(v82, qword_27FFA71B8);
    v83 = sub_264B40944();
    v84 = sub_264B414B4();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_2649C6000, v83, v84, "Received readyForUnlock serverStatusEvent", v85, 2u);
      MEMORY[0x266749940](v85, -1, -1);
    }

    v86 = *(v0 + 312);

    v87 = v86 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
    v88 = *(v86 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
    v89 = *(v86 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
    *v87 = v80;
    *(v87 + 8) = v81;
    v90 = *(v87 + 16);
    *(v87 + 16) = 3;
    sub_264ACB170(v88, v89, v90);
    sub_264AB62DC(v88, v89, v90);
    *&v166 = v88;
    *(&v166 + 1) = v89;
    LOBYTE(v167) = v90;
    sub_264AB5690(&v166);
    sub_264AB62DC(v88, v89, v90);
    goto LABEL_59;
  }

  if (v20 != 160 || v13 != 2 || v79)
  {
    if (v20 == 160 && v13 == 3 && !v79)
    {

      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v133 = sub_264B40964();
      __swift_project_value_buffer(v133, qword_27FFA71B8);
      v134 = sub_264B40944();
      v135 = sub_264B414B4();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        *v136 = 0;
        _os_log_impl(&dword_2649C6000, v134, v135, "Received awaitingRendering serverStatusEvent", v136, 2u);
        MEMORY[0x266749940](v136, -1, -1);
      }

      v137 = *(v0 + 312);

      v125 = v137 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
      v126 = *(v137 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
      v127 = *(v137 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
      *v125 = xmmword_264B4A5F0;
      v128 = *(v125 + 16);
      v129 = 9;
LABEL_105:
      *(v125 + 16) = v129;
      sub_264ACB170(v126, v127, v128);
      sub_264AB62DC(v126, v127, v128);
      *&v166 = v126;
      *(&v166 + 1) = v127;
      LOBYTE(v167) = v128;
      sub_264AB5690(&v166);
      sub_264AB62DC(v126, v127, v128);
      goto LABEL_59;
    }

    if (v20 == 160 && v13 == 4 && !v79)
    {

      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v138 = sub_264B40964();
      __swift_project_value_buffer(v138, qword_27FFA71B8);
      v139 = sub_264B40944();
      v140 = sub_264B414B4();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&dword_2649C6000, v139, v140, "Received active serverStatusEvent", v141, 2u);
        MEMORY[0x266749940](v141, -1, -1);
      }

      v143 = *(v0 + 312);
      v142 = *(v0 + 320);

      v144 = v143 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
      v145 = *(v143 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
      v146 = *(v143 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
      *v144 = xmmword_264B51560;
      v147 = *(v144 + 16);
      *(v144 + 16) = 9;
      sub_264ACB170(v145, v146, v147);
      sub_264AB62DC(v145, v146, v147);
      *&v166 = v145;
      *(&v166 + 1) = v146;
      LOBYTE(v167) = v147;
      sub_264AB5690(&v166);
      sub_264AB62DC(v145, v146, v147);
      v148 = sub_264B40744();
      (*(*(v148 - 8) + 56))(v142, 1, 1, v148);
      v149 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_launchRequest;
      swift_beginAccess();
      sub_2649FECCC(v142, v143 + v149, &qword_27FF889E0, &qword_264B449C0);
      swift_endAccess();
      goto LABEL_59;
    }

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v161 = sub_264B40964();
    __swift_project_value_buffer(v161, qword_27FFA71B8);
    v75 = sub_264B40944();
    v76 = sub_264B414B4();
    if (!os_log_type_enabled(v75, v76))
    {
LABEL_43:

LABEL_59:

      v95 = *(v0 + 8);

      return v95();
    }

    v77 = swift_slowAlloc();
    *v77 = 0;
    v78 = "Received invalidated serverStatusEvent";
LABEL_42:
    _os_log_impl(&dword_2649C6000, v75, v76, v78, v77, 2u);
    MEMORY[0x266749940](v77, -1, -1);
    goto LABEL_43;
  }

  v108 = v9;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v109 = v8;
  v110 = sub_264B40964();
  __swift_project_value_buffer(v110, qword_27FFA71B8);
  v111 = sub_264B40944();
  v112 = sub_264B414B4();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 0;
    _os_log_impl(&dword_2649C6000, v111, v112, "Received readyForVideo serverStatusEvent", v113, 2u);
    MEMORY[0x266749940](v113, -1, -1);
  }

  v114 = *(v0 + 312);

  v115 = v114 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v116 = *(v114 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
  v117 = *(v114 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
  *v115 = v108;
  *(v115 + 8) = v109;
  v118 = *(v115 + 16);
  *(v115 + 16) = 5;

  sub_264ACB170(v116, v117, v118);
  sub_264AB62DC(v116, v117, v118);
  *&v166 = v116;
  *(&v166 + 1) = v117;
  LOBYTE(v167) = v118;
  sub_264AB5690(&v166);
  sub_264AB62DC(v116, v117, v118);
  v119 = swift_task_alloc();
  *(v0 + 368) = v119;
  *v119 = v0;
  v119[1] = sub_264AC69D8;

  return sub_264ABF07C(v108, v109);
}

uint64_t sub_264AC69D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264AC6B44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264AC6C94()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264AC6DE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264AC6F34()
{
  v1 = *(*v0 + 400);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264AC70A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B898, &unk_264B51930);
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8A0, &unk_264B58630);
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8A8, &qword_264B51940);
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AC723C, 0, 0);
}

uint64_t sub_264AC723C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 208) = Strong;
  if (!Strong)
  {
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    sub_264B411E4();

    v3 = *(v0 + 8);

    return v3();
  }

  v2 = Strong;
  if (sub_264B41314())
  {

    goto LABEL_4;
  }

  return MEMORY[0x2822009F8](sub_264AC7348, v2, 0);
}

uint64_t sub_264AC7348()
{
  *(v0 + 216) = *(*(v0 + 208) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession);

  return MEMORY[0x2822009F8](sub_264AC73C4, 0, 0);
}

uint64_t sub_264AC73C4(uint64_t a1)
{
  if (!*(v1 + 216))
  {
    return sub_264B41874();
  }

  if (sub_264B41314())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    sub_264B411E4();

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(v1 + 216);

    return MEMORY[0x2822009F8](sub_264AC7524, v4, 0);
  }
}

uint64_t sub_264AC7524()
{
  (*(v0[21] + 104))(v0[22], *MEMORY[0x277D85778], v0[20]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264AC75EC, 0, 0);
}

uint64_t sub_264AC75EC()
{
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71B8);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Monitoring incoming drag and drop events", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  if (sub_264B41314())
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_264B412C4();
    v0[28] = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_dragAndDropEventSubject;
    v7 = swift_task_alloc();
    v0[29] = v7;
    *v7 = v0;
    v7[1] = sub_264AC7814;
    v8 = v0[17];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v8);
  }
}

uint64_t sub_264AC7814()
{

  return MEMORY[0x2822009F8](sub_264AC7910, 0, 0);
}

uint64_t sub_264AC7910(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  *(v1 + 240) = v3;
  *(v1 + 248) = v2;
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *(v1 + 256) = v4;
  *(v1 + 264) = v5;
  *(v1 + 50) = *(v1 + 48);
  if (!v5)
  {

    goto LABEL_5;
  }

  if (sub_264B41314())
  {

    sub_264ACCD54(v3, v2, v4, v5);
LABEL_5:
    v7 = *(v1 + 192);
    v6 = *(v1 + 200);
    v8 = *(v1 + 184);
    v10 = *(v1 + 144);
    v9 = *(v1 + 152);
    v11 = *(v1 + 136);

    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);

    v12 = *(v1 + 8);

    return v12();
  }

  v14 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_264AC7A74, v14, 0);
}

uint64_t sub_264AC7AA0()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);
  *(v0 + 56) = v4;
  *(v0 + 64) = v3;
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;
  v5 = *(v0 + 50);
  *(v0 + 88) = v5 & 1;
  *(v0 + 89) = HIBYTE(v5) & 1;
  sub_264B409C4();
  sub_264ACCD54(v4, v3, v2, v1);
  v6 = swift_task_alloc();
  *(v0 + 232) = v6;
  *v6 = v0;
  v6[1] = sub_264AC7814;
  v7 = *(v0 + 136);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v7);
}

uint64_t sub_264AC7BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v26 - v16;
  v18 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16);
  if ((v18 - 7) < 2 || v18 == 9 && __PAIR128__((*(a2 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) >= 3uLL) + *(a2 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8) - 1, *(a2 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) - 3) < 2)
  {
    return sub_264B411E4();
  }

  v20 = sub_264B41274();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v27 = a5;
  v22 = v21;
  swift_weakInit();
  (*(v10 + 16))(v13, a1, v9);
  v23 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = v22;
  (*(v10 + 32))(&v24[v23], v13, v9);
  v25 = sub_264A10C20(0, 0, v17, a4, v24);
  *(a2 + *v27) = v25;
}

uint64_t sub_264AC7E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B880, &qword_264B51908);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B888, &qword_264B51910);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B890, &qword_264B51918);
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AC7FB4, 0, 0);
}

uint64_t sub_264AC7FB4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 160) = Strong;
  if (!Strong)
  {
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    sub_264B411E4();

    v3 = *(v0 + 8);

    return v3();
  }

  v2 = Strong;
  if (sub_264B41314())
  {

    goto LABEL_4;
  }

  return MEMORY[0x2822009F8](sub_264AC80C0, v2, 0);
}

uint64_t sub_264AC80C0()
{
  *(v0 + 168) = *(*(v0 + 160) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession);

  return MEMORY[0x2822009F8](sub_264AC813C, 0, 0);
}

uint64_t sub_264AC813C(uint64_t a1)
{
  if (!*(v1 + 168))
  {
    return sub_264B41874();
  }

  if (sub_264B41314())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
    sub_264B411E4();

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(v1 + 168);

    return MEMORY[0x2822009F8](sub_264AC829C, v4, 0);
  }
}

uint64_t sub_264AC829C()
{
  (*(v0[15] + 104))(v0[16], *MEMORY[0x277D85778], v0[14]);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264AC8364, 0, 0);
}

uint64_t sub_264AC8364()
{
  if (qword_27FF88400 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  v0[22] = __swift_project_value_buffer(v1, qword_27FF8AE58);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Monitoring incoming accessibility messages", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  if (sub_264B41314())
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_264B412C4();
    v0[23] = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_accessbilityDataSubject;
    v7 = swift_task_alloc();
    v0[24] = v7;
    *v7 = v0;
    v7[1] = sub_264AC8590;
    v8 = v0[11];

    return MEMORY[0x2822003E8](v0 + 5, 0, 0, v8);
  }
}

uint64_t sub_264AC8590()
{

  return MEMORY[0x2822009F8](sub_264AC868C, 0, 0);
}

uint64_t sub_264AC868C(uint64_t a1)
{
  v17 = v1;
  v3 = v1[5];
  v2 = v1[6];
  v1[25] = v3;
  v1[26] = v2;
  if ((~v2 & 0x3000000000000000) == 0)
  {

LABEL_5:
    v5 = v1[18];
    v4 = v1[19];
    v6 = v1[17];
    (*(v1[12] + 8))(v1[13], v1[11]);
    (*(v5 + 8))(v4, v6);

    v7 = v1[1];

    return v7();
  }

  if (sub_264B41314())
  {

    sub_264ACCBB4(v3, v2);
    goto LABEL_5;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v10 = sub_264B40944();
    v11 = sub_264B41494();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_2649CC004(0xD000000000000014, 0x8000000264B5FB50, &v16);
      _os_log_impl(&dword_2649C6000, v10, v11, "Received unknown type from server (%s, ignoring", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x266749940](v13, -1, -1);
      MEMORY[0x266749940](v12, -1, -1);
    }

    v14 = swift_task_alloc();
    v1[24] = v14;
    *v14 = v1;
    v14[1] = sub_264AC8590;
    v15 = v1[11];

    return MEMORY[0x2822003E8](v1 + 5, 0, 0, v15);
  }

  else
  {
    v9 = v1[20];
    sub_264A5448C(v3, v2);

    return MEMORY[0x2822009F8](sub_264AC8950, v9, 0);
  }
}

uint64_t sub_264AC8950()
{
  *(v0 + 56) = *(v0 + 200);
  sub_264B409C4();

  return MEMORY[0x2822009F8](sub_264AC89CC, 0, 0);
}

uint64_t sub_264AC89CC()
{
  v1 = v0[25];
  v2 = v0[26];
  sub_264ACCBB4(v1, v2);
  sub_264ACCBB4(v1, v2);
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_264AC8590;
  v4 = v0[11];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v4);
}

uint64_t sub_264AC8A90(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v31 - v10;
  v12 = a1[1];
  v37 = *a1;
  v38 = v12;
  v39[0] = a1[2];
  *(v39 + 9) = *(a1 + 41);
  v13 = v4 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState;
  v14 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState);
  v15 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8);
  *v13 = a2;
  *(v13 + 8) = a3;
  LOBYTE(a2) = *(v13 + 16);
  *(v13 + 16) = 2;

  sub_264ACB170(v14, v15, a2);
  sub_264AB62DC(v14, v15, a2);
  *&v34 = v14;
  *(&v34 + 1) = v15;
  LOBYTE(v35) = a2;
  sub_264AB5690(&v34);
  sub_264AB62DC(v14, v15, a2);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v16 = sub_264B40964();
  __swift_project_value_buffer(v16, qword_27FFA71B8);
  sub_264A186B4(&v37, &v34);
  v17 = sub_264B40944();
  v18 = sub_264B414B4();
  sub_264A18710(&v37);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = 136446210;
    v34 = v37;
    v35 = v38;
    v36[0] = v39[0];
    *(v36 + 9) = *(v39 + 9);
    sub_264A186B4(&v37, v33);
    v21 = sub_264B41064();
    v23 = sub_2649CC004(v21, v22, &v32);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_2649C6000, v17, v18, "Connecting to server with configuration: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x266749940](v20, -1, -1);
    MEMORY[0x266749940](v19, -1, -1);
  }

  v24 = (v4 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion);
  v25 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 16);
  v34 = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion);
  v35 = v25;
  v36[0] = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 32);
  *(v36 + 9) = *(v4 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 41);
  v26 = v38;
  *v24 = v37;
  v24[1] = v26;
  v24[2] = v39[0];
  *(v24 + 41) = *(v39 + 9);
  sub_264A186B4(&v37, v33);
  sub_2649D04D4(&v34, &qword_27FF8B820, &unk_264B51648);
  v27 = sub_264B41274();
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v28;
  sub_264A10C20(0, 0, v11, &unk_264B519A0, v29);
}

uint64_t sub_264AC8E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[52] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF889E0, &qword_264B449C0);
  v4[53] = swift_task_alloc();
  v5 = sub_264B40744();
  v4[54] = v5;
  v4[55] = *(v5 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  type metadata accessor for ScreenSharingSession.Config(0);
  v4[59] = swift_task_alloc();
  v4[60] = type metadata accessor for HIDUpdateInputDevicesMessage(0);
  v4[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AC8F80, 0, 0);
}

uint64_t sub_264AC8F80()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[62] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[63] = v2;
    *v2 = v0;
    v2[1] = sub_264AC90BC;

    return sub_264ACA544();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_264AC90BC()
{
  v1 = *v0;

  *(v1 + 512) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_localDevicePrimitives;
  *(v1 + 520) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_featureFlagPrimitives;

  return MEMORY[0x2822009F8](sub_264AC91D0, 0, 0);
}

uint64_t sub_264AC91D0()
{
  v17 = v0;
  v1 = *(v0 + 496);
  v2 = (v1 + *(v0 + 520));
  v3 = (v1 + *(v0 + 512));
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  v15 = 0;
  *(v0 + 857) = (*(v5 + 8))(&v15, v4, v5) & 1;
  v6 = v3[3];
  v7 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v6);
  (*(v7 + 8))(&v16, v6, v7);
  *(v0 + 858) = v16;
  v8 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v8);
  *(v0 + 528) = (*(v9 + 16))(v8, v9);
  *(v0 + 536) = v10;
  v11 = v3[3];
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v11);
  *(v0 + 544) = (*(v12 + 32))(v11, v12);
  *(v0 + 552) = v13;
  *(v0 + 856) = 0;
  *(v0 + 859) = 0;
  *(v0 + 560) = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_hidServicePrimitives;

  return MEMORY[0x2822009F8](sub_264AC9354, 0, 0);
}

uint64_t sub_264AC9354()
{
  v1 = (v0[62] + v0[70]);
  v2 = v1[3];
  v0[71] = v2;
  v3 = v1[4];
  v0[72] = v3;
  v0[73] = __swift_project_boxed_opaque_existential_1(v1, v2);
  v0[74] = *(v3 + 8);
  v0[75] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x5571000000000000;
  v0[76] = sub_264B41244();
  v0[77] = sub_264B41234();
  v5 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264AC9420, v5, v4);
}

uint64_t sub_264AC9420()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];

  v0[78] = v1(v3, v2);

  return MEMORY[0x2822009F8](sub_264AC94BC, 0, 0);
}

uint64_t sub_264AC94BC()
{
  v1 = (v0[62] + v0[70]);
  v2 = v1[3];
  v0[79] = v2;
  v0[80] = v1[4];
  v0[81] = __swift_project_boxed_opaque_existential_1(v1, v2);
  v0[82] = sub_264B41234();
  v4 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264AC956C, v4, v3);
}

uint64_t sub_264AC956C()
{
  v1 = v0[80];
  v2 = v0[79];

  v0[83] = HIDServicePrimitives.basicKeyboardAndMouseServiceProperties()(v2, v1);

  return MEMORY[0x2822009F8](sub_264AC95F8, 0, 0);
}

uint64_t sub_264AC95F8()
{
  v1 = v0[62];
  sub_264AB5590(v0[83], v0[78]);
  v0[84] = v2;
  v0[85] = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_config;

  return MEMORY[0x2822009F8](sub_264AC9678, v1, 0);
}

uint64_t sub_264AC9678()
{
  sub_264ACB1F0(v0[62] + v0[85], v0[59], type metadata accessor for ScreenSharingSession.Config);

  return MEMORY[0x2822009F8](sub_264AC9700, 0, 0);
}

uint64_t sub_264AC9700()
{
  v12 = v0;
  v1 = v0[84];
  v2 = v0[61];
  v3 = v0[59];
  v4 = sub_264B40104();
  (*(*(v4 - 8) + 32))(v2, v3, v4);
  v5 = *(v1 + 16);
  v6 = v0[84];
  if (v5)
  {
    v7 = sub_264B152BC(v5, 0);
    v8 = sub_264B15EEC(&v11, v7 + 4, v5, v6);
    sub_264A0E7A0(v11);
    if (v8 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_5:
  v9 = v0[62];
  *(v0[61] + *(v0[60] + 20)) = v7;

  return MEMORY[0x2822009F8](sub_264AC981C, v9, 0);
}

uint64_t sub_264AC981C()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 424);
  v3 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_launchRequest;
  swift_beginAccess();
  sub_2649D046C(v1 + v3, v2, &qword_27FF889E0, &qword_264B449C0);

  return MEMORY[0x2822009F8](sub_264AC98C4, 0, 0);
}

uint64_t sub_264AC98C4()
{
  v54 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v3 = *(v0 + 424);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2649D04D4(v3, &qword_27FF889E0, &qword_264B449C0);
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 4;
  }

  else
  {
    (*(v2 + 32))(*(v0 + 464), v3, v1);
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 456);
    v9 = *(v0 + 464);
    v10 = *(v0 + 432);
    v11 = *(v0 + 440);
    v12 = sub_264B40964();
    __swift_project_value_buffer(v12, qword_27FFA71B8);
    v50 = *(v11 + 16);
    v50(v8, v9, v10);
    v13 = sub_264B40944();
    v14 = sub_264B414B4();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 456);
    v17 = *(v0 + 432);
    v18 = *(v0 + 440);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v53 = v48;
      *v19 = 136446210;
      v46 = sub_264B40724();
      v21 = v20;
      v22 = *(v18 + 8);
      v22(v16, v17);
      v23 = v22;
      v24 = sub_2649CC004(v46, v21, &v53);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_2649C6000, v13, v14, "Including launch request of type %{public}s as part of client configuration", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x266749940](v48, -1, -1);
      MEMORY[0x266749940](v19, -1, -1);
    }

    else
    {

      v25 = *(v18 + 8);
      v25(v16, v17);
      v23 = v25;
    }

    v26 = *(v0 + 464);
    v27 = *(v0 + 448);
    v28 = *(v0 + 432);
    v50(v27, v26, v28);
    v4 = sub_264B40724();
    v7 = v29;
    v5 = sub_264B40734();
    v6 = v30;
    v23(v27, v28);
    v23(v26, v28);
  }

  *(v0 + 712) = v6;
  *(v0 + 704) = v5;
  *(v0 + 696) = v7;
  *(v0 + 688) = v4;
  v52 = *(v0 + 859);
  v49 = *(v0 + 544);
  v51 = *(v0 + 552);
  v47 = *(v0 + 528);
  v45 = *(v0 + 858);
  v31 = *(v0 + 488);
  if (*(v0 + 857))
  {
    v32 = 7;
  }

  else
  {
    v32 = 3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8D8, &unk_264B519B0);
  v33 = *(type metadata accessor for HIDMessage(0) - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_264B44150;
  sub_264ACB1F0(v31, v35 + v34, type metadata accessor for HIDUpdateInputDevicesMessage);
  swift_storeEnumTagMultiPayload();
  *(v0 + 16) = 3;
  *(v0 + 24) = v45;
  *(v0 + 32) = v47;
  *(v0 + 48) = v49;
  *(v0 + 56) = v51;
  *(v0 + 64) = v32;
  *(v0 + 72) = v52;
  *(v0 + 80) = v35;
  *(v0 + 88) = v4;
  *(v0 + 96) = v7;
  *(v0 + 104) = v5;
  *(v0 + 112) = v6;
  sub_264A18764(v4, v7, v5, v6);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v36 = sub_264B40964();
  *(v0 + 720) = __swift_project_value_buffer(v36, qword_27FFA71B8);
  v37 = sub_264B40944();
  v38 = sub_264B41484();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_2649C6000, v37, v38, "Sending client configuration to server", v39, 2u);
    MEMORY[0x266749940](v39, -1, -1);
  }

  v40 = *(v0 + 496);

  v41 = *(v0 + 32);
  *(v0 + 728) = *(v0 + 16);
  *(v0 + 744) = v41;
  v42 = *(v0 + 64);
  *(v0 + 760) = *(v0 + 48);
  *(v0 + 776) = v42;
  v43 = *(v0 + 96);
  *(v0 + 792) = *(v0 + 80);
  *(v0 + 808) = v43;
  *(v0 + 824) = *(v0 + 112);
  sub_264A189F8(v0 + 16, v0 + 120);

  return MEMORY[0x2822009F8](sub_264AC9E08, v40, 0);
}

uint64_t sub_264AC9E08()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 776);
  v3 = *(v0 + 728);
  v4 = *(v0 + 736) & 3;
  v5 = *(v0 + 784) & 1 | 0x2000000000000000;
  *(v0 + 352) = &type metadata for StatusEvent;
  *(v0 + 360) = &off_28765B558;
  v6 = swift_allocObject();
  *(v0 + 328) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = *(v0 + 760);
  *(v6 + 32) = *(v0 + 744);
  *(v6 + 48) = v7;
  *(v6 + 64) = v2;
  *(v6 + 72) = v5;
  v8 = *(v0 + 808);
  *(v6 + 80) = *(v0 + 792);
  *(v6 + 96) = v8;
  *(v6 + 112) = v1;
  sub_264A189F8(v0 + 16, v0 + 224);
  v9 = swift_task_alloc();
  *(v0 + 832) = v9;
  *v9 = v0;
  v9[1] = sub_264AC9F28;

  return sub_264ABA344(v0 + 328);
}

uint64_t sub_264AC9F28()
{
  v2 = *v1;
  *(*v1 + 840) = v0;

  if (v0)
  {
    v3 = *(v2 + 496);
    v4 = sub_264ACA14C;
  }

  else
  {
    sub_264A18A30(v2 + 16);
    __swift_destroy_boxed_opaque_existential_0((v2 + 328));
    v4 = sub_264ACA054;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264ACA054()
{

  v1 = v0[89];
  v2 = v0[88];
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[61];
  sub_264A18A30((v0 + 2));
  sub_264A187C4(v4, v3, v2, v1);
  sub_264ACB258(v5, type metadata accessor for HIDUpdateInputDevicesMessage);

  v6 = v0[1];

  return v6();
}

uint64_t sub_264ACA14C()
{
  sub_264A18A30(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 328));

  return MEMORY[0x2822009F8](sub_264ACA1BC, 0, 0);
}

uint64_t sub_264ACA1BC()
{
  v1 = *(v0 + 840);
  v2 = v1;
  v3 = sub_264B40944();
  v4 = sub_264B41494();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 840);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2649C6000, v3, v4, "Unable to send client configuration, interrupting: %{public}@", v6, 0xCu);
    sub_2649D04D4(v7, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v10 = swift_task_alloc();
  *(v0 + 848) = v10;
  *v10 = v0;
  v10[1] = sub_264ACA344;
  v11 = *(v0 + 840);

  return sub_264ABA794(v11);
}

uint64_t sub_264ACA344()
{

  return MEMORY[0x2822009F8](sub_264ACA440, 0, 0);
}

uint64_t sub_264ACA440()
{
  v1 = v0[105];

  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[61];
  sub_264A18A30((v0 + 2));
  sub_264A187C4(v5, v4, v3, v2);
  sub_264ACB258(v6, type metadata accessor for HIDUpdateInputDevicesMessage);

  v7 = v0[1];

  return v7();
}

uint64_t sub_264ACA544()
{
  v1[45] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B8E0, &unk_264B585F0);
  v1[46] = v2;
  v1[47] = *(v2 - 8);
  v1[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B740, &unk_264B51580);
  v1[49] = swift_task_alloc();
  v3 = sub_264B3FFD4();
  v1[50] = v3;
  v1[51] = *(v3 - 8);
  v1[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264ACA6A4, v0, 0);
}

uint64_t sub_264ACA6A4()
{
  v41 = v0;
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 400);
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AEB8);
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
    v40 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v40);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 901;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD00000000000001BLL, 0x8000000264B5FC00, &v40);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = (*(v0 + 360) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_featureFlagPrimitives);
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v39 = 0;
  v16 = (*(v15 + 8))(&v39, v14, v15);
  v17 = *(v0 + 360);
  if ((v16 & 1) == 0)
  {
    sub_264ACAE64(0);
    v32 = sub_264B40944();
    v33 = sub_264B414B4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "RemoteTextInput feature flag is not enabled, not monitoring incoming RTI messages";
LABEL_24:
      _os_log_impl(&dword_2649C6000, v32, v33, v35, v34, 2u);
      MEMORY[0x266749940](v34, -1, -1);
    }

LABEL_25:

    goto LABEL_26;
  }

  v18 = v17 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion;
  v19 = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion);
  v20 = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 16);
  v21 = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 32);
  *(v0 + 57) = *(v17 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_serverVersion + 41);
  *(v0 + 32) = v20;
  *(v0 + 48) = v21;
  *(v0 + 16) = v19;
  v22 = *(v0 + 40);
  v23 = *(v0 + 64);
  v24 = *(v0 + 72);
  if (!v22)
  {
    v36 = *(v18 + 16);
    *(v0 + 208) = *v18;
    *(v0 + 224) = v36;
    *(v0 + 232) = 0;
    *(v0 + 240) = *(v18 + 32);
    *(v0 + 256) = v23;
    *(v0 + 264) = v24;
    sub_2649D046C(v0 + 16, v0 + 272, &qword_27FF8B820, &unk_264B51648);
    sub_2649D04D4(v0 + 208, &qword_27FF8B820, &unk_264B51648);
    goto LABEL_22;
  }

  v25 = *(v18 + 16);
  *(v0 + 80) = *v18;
  *(v0 + 96) = v25;
  *(v0 + 104) = v22;
  *(v0 + 112) = *(v18 + 32);
  *(v0 + 128) = v23;
  *(v0 + 136) = v24;
  sub_2649D046C(v0 + 16, v0 + 144, &qword_27FF8B820, &unk_264B51648);
  sub_2649D04D4(v0 + 80, &qword_27FF8B820, &unk_264B51648);
  if ((v24 & 1) != 0 || (v23 & 4) == 0)
  {
LABEL_22:
    sub_264ACAE64(0);
    v32 = sub_264B40944();
    v33 = sub_264B414B4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Server does not support RemoteTextInput, not monitoring incoming RTI messages";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v26 = sub_264B40944();
  v27 = sub_264B414B4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2649C6000, v26, v27, "Server supports RemoteTextInput, setting up RTI messages monitor", v28, 2u);
    MEMORY[0x266749940](v28, -1, -1);
  }

  v29 = *(v0 + 360);

  v30 = *(v29 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 16);
  if ((v30 - 7) >= 2 && (v30 != 9 || __PAIR128__((*(v29 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) >= 3uLL) + *(v29 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState + 8) - 1, *(v29 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_currentState) - 3) >= 2))
  {
    v31 = *(*(v0 + 360) + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_controlMessageSession);
    *(v0 + 424) = v31;
    if (!v31)
    {
      return sub_264B41874();
    }

    return MEMORY[0x2822009F8](sub_264ACAC84, v31, 0);
  }

LABEL_26:

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_264ACAC84()
{
  v1 = v0[45];
  (*(v0[47] + 104))(v0[48], *MEMORY[0x277D85778], v0[46]);
  type metadata accessor for RTIMessage(0);
  sub_264B412E4();

  return MEMORY[0x2822009F8](sub_264ACAD4C, v1, 0);
}

uint64_t sub_264ACAD4C()
{
  v1 = v0[49];
  v2 = v0[45];

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A08, &qword_264B449F0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiMessages;
  swift_beginAccess();
  sub_2649FECCC(v1, v2 + v4, &qword_27FF8B740, &unk_264B51580);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_264ACAE64(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiStateCoordinator + 24);
  v4 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiStateCoordinator + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiStateCoordinator), v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t sub_264ACB060()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264ACB0A8(uint64_t a1)
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

  return sub_264AB74B8(a1, v4, v5, v6, v7, v8);
}

id sub_264ACB170(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 > 2u && a3 != 3)
    {
      return result;
    }
  }

  if (a3 <= 5u)
  {
    if (a3 != 4 && a3 != 5)
    {
      return result;
    }
  }

  if (a3 == 6)
  {
  }

  if (a3 == 7 || a3 == 8)
  {
    return result;
  }

  return result;
}

uint64_t sub_264ACB1F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264ACB258(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264ACB2B8()
{
  if (v0[3] >= 4uLL)
  {

    sub_2649DEF6C(v0[4], v0[5]);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264ACB300()
{
  sub_264A52680(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_264ACB35C()
{
  sub_2649DEF6C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_264ACB39C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ScreenSharingKit20ScreenSharingSession_rtiMessages;
  swift_beginAccess();
  return sub_2649D046C(v3 + v4, a2, &qword_27FF8B740, &unk_264B51580);
}

void sub_264ACB414(uint64_t a1)
{
  type metadata accessor for ScreenSharingSession.Config(319);
  if (v1 <= 0x3F)
  {
    sub_264ACC2D0(319, &qword_27FF89950, MEMORY[0x277D4B790]);
    if (v2 <= 0x3F)
    {
      sub_264ACC2D0(319, &qword_27FF8B840, type metadata accessor for ContinuityDevice);
      if (v3 <= 0x3F)
      {
        sub_264A2C814(319, &qword_27FF8B848, &qword_27FF889E8, &qword_264B449C8);
        if (v4 <= 0x3F)
        {
          sub_264A2C814(319, &qword_27FF8B850, &qword_27FF88A08, &qword_264B449F0);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of ScreenSharingSession.invalidate(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 776) + **(*v1 + 776));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2649E0EE4;

  return v6(a1);
}

uint64_t dispatch thunk of ScreenSharingSession.sendHIDReport(sender:reportData:eventID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14 = (*(*v5 + 784) + **(*v5 + 784));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2649E0EE4;

  return v14(a1, a2, a3, a4, a5 & 1);
}

uint64_t dispatch thunk of ScreenSharingSession.sendHIDInputDevices(deviceID:inputDevices:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 792) + **(*v2 + 792));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2649E0EE4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of ScreenSharingSession.sendHIDResetGestureStateMessage()()
{
  v4 = (*(*v0 + 800) + **(*v0 + 800));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2649E0EE4;

  return v4();
}

uint64_t dispatch thunk of ScreenSharingSession.sendSystemGestureEvent(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 808) + **(*v1 + 808));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2649E0EE4;

  return v6(a1);
}

uint64_t dispatch thunk of ScreenSharingSession.sendWindowRecordingEvent(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 816) + **(*v1 + 816));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2649E0EE4;

  return v6(a1);
}

uint64_t dispatch thunk of ScreenSharingSession.sendAccessibilityMessage(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 832) + **(*v1 + 832));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2649E0EE4;

  return v6(a1);
}

uint64_t dispatch thunk of ScreenSharingSession.sendDragAndDropEvent(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 840) + **(*v1 + 840));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2649CD850;

  return v6(a1);
}

uint64_t dispatch thunk of ScreenSharingSession.sendRTIMessage(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 856) + **(*v1 + 856));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2649E0EE4;

  return v6(a1);
}

void sub_264ACC2D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264B41614();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_264ACC348(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_264ACC414(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_264ACC4CC(uint64_t a1)
{
  result = sub_264B40104();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_264ACC558()
{
  result = qword_27FF8B868;
  if (!qword_27FF8B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B868);
  }

  return result;
}

uint64_t sub_264ACC5AC()
{
  v1 = type metadata accessor for ContinuityDevice(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v5 = *(v1 + 24);
  v6 = sub_264B406C4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264ACC710(uint64_t a1)
{
  v4 = *(type metadata accessor for ContinuityDevice(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2649E0EE4;

  return sub_264ABD118(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_264ACC81C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_264ACC900(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_264AC33C4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_264ACCA6C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264ACCAA8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_264AC7E18(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_264ACCBB4(uint64_t result, unint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_2649E7004(result, a2);
  }

  return result;
}

uint64_t sub_264ACCC48(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_264AC70A0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_264ACCD54(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2649DEF6C(result, a2);
  }

  return result;
}

uint64_t objectdestroy_129Tm()
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

uint64_t sub_264ACCE6C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_264AC42B4(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264ACCFB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264AC8E14(a1, v4, v5, v6);
}

uint64_t sub_264ACD078(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264AC1C48(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroy_169Tm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_264ACD180(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_264AC0F94(a1, v4, v5, (v1 + 4), v6);
}

id sub_264ACD27C()
{
  type metadata accessor for ScreenSharingKitBundleMarkerClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27FFA7218 = result;
  return result;
}

uint64_t sub_264ACD2D4()
{
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264ACD338(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_264ACD35C, v2, 0);
}

uint64_t sub_264ACD35C()
{
  v1 = *(v0[4] + 120);
  ObjectType = swift_getObjectType();
  v7 = (*(v1 + 16) + **(v1 + 16));
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_264A1B27C;
  v5 = v0[2];
  v4 = v0[3];

  return v7(v5, v4, ObjectType, v1);
}

uint64_t sub_264ACD4A8()
{
  v1 = *(*(v0 + 16) + 120);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 24) + **(v1 + 24));
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_264ACD5CC;

  return v5(ObjectType, v1);
}

uint64_t sub_264ACD5CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264ACD6C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264ACD6E0, v1, 0);
}

uint64_t sub_264ACD6E0()
{
  v1 = *(v0[3] + 120);
  ObjectType = swift_getObjectType();
  v6 = (*(v1 + 32) + **(v1 + 32));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_264ACD80C;
  v4 = v0[2];

  return v6(v4, ObjectType, v1);
}

uint64_t sub_264ACD80C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {
    v7 = *(v3 + 24);

    return MEMORY[0x2822009F8](sub_264ACD958, v7, 0);
  }
}