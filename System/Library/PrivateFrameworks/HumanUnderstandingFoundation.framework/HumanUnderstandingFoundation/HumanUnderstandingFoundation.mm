void sub_2546A16F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  handleAmbientLightEvent(_:_:_:_:)(a1, v5, v6, v7);
}

void handleAmbientLightEvent(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    Current = CFAbsoluteTimeGetCurrent();
    if (Current - *(a1 + 48) < 10.0)
    {

      return;
    }

    *(a1 + 48) = Current;
    IOHIDEventGetDoubleValue();
    v16 = round(v15 * 100.0) / 100.0;
    IOHIDEventGetDoubleValue();
    v18 = round(v17 * 100.0) / 100.0;
    IOHIDEventGetDoubleValue();
    sub_2546A1950(v16, v18, round(v19 * 100.0) / 100.0);
    sub_2546A1AC4(0, &qword_281369640, 0x277CF1048);
    v20 = sub_2546B55A4();
    v21 = sub_2546B55A4();
    v22 = sub_2546B55A4();
    oslog = sub_2546A1B04(v20, v21, v22);
    AmbientLightMonitor.sendEvent(_:)(oslog);
  }

  else
  {
    if (qword_281369798 != -1)
    {
      sub_2546A322C(&qword_281369798);
    }

    v6 = sub_2546B53D4();
    sub_2546A1C48(v6, qword_2813697A0);
    oslog = sub_2546B53B4();
    v7 = sub_2546B5614();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      sub_2546A1C80(&dword_2546A0000, v9, v10, "AmbientLightMonitor handleAmbientLightEvent() target is nil", v11, v12, v13, v14, v23, oslog);
      MEMORY[0x259C16A90](v8, -1, -1);
    }
  }
}

void sub_2546A1950(double a1, double a2, double a3)
{
  v5 = v3;
  v11 = *(v3 + 56);
  v9 = (v3 + 56);
  v10 = v11;
  if (*(v11 + 16) > 4uLL)
  {
    v4 = *(v5 + 64);
    sub_2546A2DF4(&qword_27F60F5D0, &qword_2546B6300);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2546B6100;
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    *(v12 + 48) = a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 56) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_10;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
    sub_2546A2DF4(&qword_27F60F5D0, &qword_2546B6300);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2546B6100;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    *(v10 + 48) = a3;
    sub_2546A30F0();
    v12 = *(*v9 + 16);
    sub_2546A313C(v12);
    v13 = *v9;
    *(v13 + 16) = v12 + 1;
    *(v13 + 8 * v12 + 32) = v10;
    *v9 = v13;
    while (1)
    {
      v15 = *(v5 + 64);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        break;
      }

      __break(1u);
LABEL_10:
      sub_2546A317C(v10);
      v10 = v18;
      *v9 = v18;
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_11;
      }

LABEL_5:
      if (v4 >= *(v10 + 16))
      {
        goto LABEL_12;
      }

      *(v10 + 8 * v4 + 32) = v12;
      *v9 = v10;
    }

    *(v5 + 64) = v17 % 5;
  }
}

uint64_t sub_2546A1AC4(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_2546A1B04(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAmbientLightColorComponent0:a1 ambientLightColorComponent1:a2 ambientLightColorComponent2:a3];

  return v6;
}

void AmbientLightMonitor.sendEvent(_:)(uint64_t a1)
{
  [*(v1 + 40) sendEvent_];
  if (qword_281369798 != -1)
  {
    sub_2546A322C(&qword_281369798);
  }

  v2 = sub_2546B53D4();
  sub_2546A1C48(v2, qword_2813697A0);
  oslog = sub_2546B53B4();
  v3 = sub_2546B5614();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    sub_2546A1C80(&dword_2546A0000, v5, v6, "Finished writing ambient light values to the biome stream", v7, v8, v9, v10, v11, oslog);
    MEMORY[0x259C16A90](v4, -1, -1);
  }
}

uint64_t sub_2546A1C48(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_2546A1C80(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

__n128 sub_2546A1CCC(__n128 *a1)
{
  result = *(v1 - 192);
  a1[1] = result;
  return result;
}

uint64_t sub_2546A1CEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2546A1D24()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

char *sub_2546A1DA0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_2546ACF68(a3, result);
  }

  return result;
}

uint64_t sub_2546A1E24()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2546A1E64()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

HumanUnderstandingFoundation::AmbientLightType_optional __swiftcall AmbientLightType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2546A1EEC@<X0>(uint64_t *a1@<X8>)
{
  result = AmbientLightType.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_2546A1F14()
{
  type metadata accessor for AmbientLightMonitor();
  v0 = swift_allocObject();
  sub_2546A1FB0(1);
  qword_281369788 = v0;
}

uint64_t static AmbientLightMonitor.shared.getter()
{
  if (qword_281369780 != -1)
  {
    swift_once();
  }
}

void sub_2546A1FB0(char a1)
{
  v2 = v1;
  v21 = sub_2546B5634();
  sub_2546A324C();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_2546A3260();
  v8 = v7 - v6;
  v9 = sub_2546B5624();
  MEMORY[0x28223BE20](v9);
  sub_2546A3260();
  v10 = sub_2546B5444();
  MEMORY[0x28223BE20](v10 - 8);
  sub_2546A3260();
  *(v1 + 16) = xmmword_2546B60F0;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0;
  v11 = MEMORY[0x277D84F90];
  *(v1 + 48) = 0;
  *(v1 + 56) = v11;
  sub_2546A1AC4(0, &qword_281369648, 0x277D85C78);
  sub_2546B5434();
  sub_2546A3190(&unk_281369650, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_2546A2DF4(&qword_27F60F5D8, qword_2546B6308);
  sub_2546A31D8(&unk_281369660, &qword_27F60F5D8, qword_2546B6308);
  sub_2546B5684();
  (*(v4 + 104))(v8, *MEMORY[0x277D85260], v21);
  *(v1 + 72) = sub_2546B5654();
  v12 = [BiomeLibrary() ContextualUnderstanding];
  swift_unknownObjectRelease();
  v13 = [v12 AmbientLight];
  swift_unknownObjectRelease();
  v2[4] = v13;
  v2[5] = [v13 source];
  if (a1)
  {
    v14 = IOHIDEventSystemClientCreateWithType();
    v15 = v2[10];
    v2[10] = v14;
    v16 = v14;

    if (v16)
    {
      IOHIDEventSystemClientScheduleWithDispatchQueue();

      if (v2[10])
      {

        IOHIDEventSystemClientRegisterEventCallback();
        v17 = v2[10];
        if (v17)
        {
          v18 = v17;
          v19 = sub_2546B54B4();
          v20 = sub_2546B5564();
          IOHIDEventSystemClientSetProperty(v18, v19, v20);

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

HumanUnderstandingFoundation::AmbientLightType __swiftcall AmbientLightMonitor.getCurrentAmbientLightType()()
{
  v62 = v0;
  v72 = sub_2546B5404();
  sub_2546A324C();
  v70 = v2;
  MEMORY[0x28223BE20](v3);
  sub_2546A3260();
  v68 = (v5 - v4);
  v71 = sub_2546B5474();
  sub_2546A324C();
  v69 = v6;
  v8 = MEMORY[0x28223BE20](v7);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = &v59 - v10;
  v11 = sub_2546B5424();
  sub_2546A324C();
  v65 = v12;
  MEMORY[0x28223BE20](v13);
  sub_2546A3260();
  v16 = v15 - v14;
  sub_2546B5444();
  sub_2546A324C();
  v63 = v18;
  v64 = v17;
  MEMORY[0x28223BE20](v17);
  sub_2546A3260();
  v21 = v20 - v19;
  v22 = swift_allocObject();
  sub_2546A2D7C();
  v23 = MEMORY[0x277D84F90];
  *(v22 + 16) = sub_2546B54A4();
  v60 = v22 + 16;
  v24 = dispatch_semaphore_create(0);
  v25 = *(v1 + 72);
  v26 = swift_allocObject();
  v26[2] = v1;
  v26[3] = v22;
  v26[4] = v24;
  aBlock[4] = sub_2546A2DD0;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2546A2CC4;
  aBlock[3] = &unk_286683CE0;
  v27 = _Block_copy(aBlock);
  v28 = v25;

  v61 = v22;

  v29 = v24;
  sub_2546B5434();
  v73 = v23;
  sub_2546A3190(&qword_27F60F4E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2546A2DF4(&qword_27F60F4E8, &qword_2546B6140);
  sub_2546A31D8(&qword_27F60F4F0, &qword_27F60F4E8, &qword_2546B6140);
  sub_2546B5684();
  MEMORY[0x259C162A0](0, v21, v16, v27);
  _Block_release(v27);

  v30 = v29;
  (*(v65 + 8))(v16, v11);
  (*(v63 + 8))(v21, v64);

  v31 = v66;
  sub_2546B5454();
  v32 = v68;
  *v68 = 1;
  v33 = v70;
  v34 = v72;
  (*(v70 + 104))(v32, *MEMORY[0x277D85188], v72);
  v35 = v67;
  sub_2546B5464();
  (*(v33 + 8))(v32, v34);
  v36 = *(v69 + 8);
  v37 = v71;
  v36(v31, v71);
  sub_2546B5664();
  v36(v35, v37);
  if ((sub_2546B5414() & 1) == 0)
  {
    v42 = v60;
    swift_beginAccess();
    v43 = 0;
    v44 = 0;
    v45 = *v42;
    v46 = *v42;
    v47 = 1 << *(*v42 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v50 = *(v46 + 64);
    v49 = v46 + 64;
    v51 = v48 & v50;
    v52 = (v47 + 63) >> 6;
    v53 = 7;
    while (1)
    {
      LODWORD(v39) = v53;
      v54 = v43;
      if (!v51)
      {
        break;
      }

LABEL_14:
      v56 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      v57 = v56 | (v44 << 6);
      v53 = *(*(v45 + 48) + v57);
      v43 = *(*(v45 + 56) + 8 * v57);
      if (v54 >= v43 && (v43 != v54 || v53 >= v39))
      {
        v43 = v54;
        v53 = v39;
      }
    }

    while (1)
    {
      v55 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v55 >= v52)
      {

        goto LABEL_19;
      }

      v51 = *(v49 + 8 * v55);
      ++v44;
      if (v51)
      {
        v44 = v55;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  if (qword_281369798 != -1)
  {
LABEL_21:
    sub_2546A322C(&qword_281369798);
  }

  v38 = sub_2546B53D4();
  sub_2546A1C48(v38, qword_2813697A0);
  v39 = sub_2546B53B4();
  v40 = sub_2546B5614();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_2546A0000, v39, v40, "AmbientLightMonitor getCurrentAmbientLightType() timed out waiting for semaphore", v41, 2u);
    MEMORY[0x259C16A90](v41, -1, -1);
  }

  LOBYTE(v39) = 7;
LABEL_19:

  *v62 = v39;
  return result;
}

uint64_t sub_2546A29E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return sub_2546B5674();
  }

  v5 = 32;
  v26 = v2;
  while (1)
  {
    v6 = *(v2 + v5);
    v7 = *(v6 + 16);
    if (!v7)
    {
      break;
    }

    if (v7 == 1)
    {
      goto LABEL_23;
    }

    if (v7 < 3)
    {
      goto LABEL_24;
    }

    sub_2546A2C10(v27, *(v6 + 32), *(v6 + 40), *(v6 + 48));
    v8 = v27[0];
    swift_beginAccess();
    v9 = *(a2 + 16);
    if (*(v9 + 16) && (v10 = sub_2546A4FD8(v8), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v12 = 0;
    }

    swift_endAccess();
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_25;
    }

    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    v15 = v8;
    v16 = sub_2546A4FD8(v8);
    if (__OFADD__(v14[2], (v17 & 1) == 0))
    {
      goto LABEL_26;
    }

    v18 = v16;
    v19 = v17;
    sub_2546A2DF4(&qword_27F60F5C8, &qword_2546B62F8);
    if (sub_2546B5764())
    {
      v20 = sub_2546A4FD8(v15);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_28;
      }

      v18 = v20;
    }

    if (v19)
    {
      *(v14[7] + 8 * v18) = v13;
    }

    else
    {
      v14[(v18 >> 6) + 8] |= 1 << v18;
      *(v14[6] + v18) = v15;
      *(v14[7] + 8 * v18) = v13;
      v22 = v14[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_27;
      }

      v14[2] = v24;
    }

    *(a2 + 16) = v14;
    swift_endAccess();
    v5 += 8;
    --v3;
    v2 = v26;
    if (!v3)
    {

      return sub_2546B5674();
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_2546B5834();
  __break(1u);
  return result;
}

void sub_2546A2C10(char *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  if (a3 >= 4.0)
  {
    if (a3 < 100.0 && a4 < a2 && a4 < a3)
    {
      v4 = 1;
    }

    else
    {
      v7 = a2 * 0.8;
      if (a3 >= 200.0 || v7 > a4)
      {
        if (a3 >= 1000.0 || v7 <= a4)
        {
          if (a3 >= 30000.0 || v7 <= a4)
          {
            if (a3 >= 10000.0)
            {
              v4 = 6;
            }

            else
            {
              v4 = 5;
            }
          }

          else
          {
            v4 = 4;
          }
        }

        else
        {
          v4 = 3;
        }
      }

      else
      {
        v4 = 2;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

uint64_t sub_2546A2CC4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id *AmbientLightMonitor.deinit()
{

  return v0;
}

uint64_t AmbientLightMonitor.__deallocating_deinit()
{
  AmbientLightMonitor.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

unint64_t sub_2546A2D7C()
{
  result = qword_27F60F4D8;
  if (!qword_27F60F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60F4D8);
  }

  return result;
}

uint64_t sub_2546A2DDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2546A2DF4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2546A2E3C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2546A2E88()
{
  result = qword_27F60F4F8;
  if (!qword_27F60F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60F4F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AmbientLightType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AmbientLightType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

void type metadata accessor for IOHIDEventSystemClient()
{
  if (!qword_27F60F5C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F60F5C0);
    }
  }
}

void sub_2546A30F0()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2546A86FC();
    *v0 = v3;
  }
}

void sub_2546A313C(uint64_t result)
{
  if (result + 1 > *(*v1 + 24) >> 1)
  {
    sub_2546A86FC();
    *v1 = v2;
  }
}

uint64_t sub_2546A3190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2546A31D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2546A2E3C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2546A322C(uint64_t a1)
{

  return swift_once();
}

uint64_t BMContextualUnderstandingSoundAnalysis.asHierarchicalDictionary()()
{
  sub_2546A2DF4(&qword_27F60F640, &qword_2546B6348);
  v0 = sub_2546B54A4();
  v1 = BMContextualUnderstandingSoundAnalysis.asFlatDictionary()();
  v2 = sub_2546B54A4();
  v3 = v1 + 64;
  sub_2546A1CA0();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v78 = v1;

  v9 = 0;
  v76 = v1 + 64;
  v77 = v8;
  if (!v6)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(v78 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2546A49D0(*(v78 + 56) + 32 * v11, &v89);
    v83 = v90;
    v81 = v89;

    if (!v13)
    {
LABEL_59:

      return v0;
    }

    v82 = v6;
    v89 = v81;
    v90 = v83;
    v87 = v14;
    v88 = v13;
    v15 = *(v2 + 16);

    v79 = v9;
    v80 = v0;
    if (v15)
    {
      v16 = v13;
      v6 = v2;
      v17 = sub_2546A5044(v14, v13);
      if (v18)
      {
        v19 = (*(v2 + 56) + 16 * v17);
        v9 = *v19;
        v6 = v19[1];
        swift_bridgeObjectRetain_n();
        goto LABEL_12;
      }
    }

    else
    {
      v16 = v13;
    }

    sub_2546A1CBC();
LABEL_12:
    v20 = sub_2546B54A4();
    if (v9 == 1953460082 && v6 == 0xE400000000000000)
    {
      v23 = v14;
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v22 = sub_2546A6BBC();

      if ((v22 & 1) == 0)
      {

        swift_beginAccess();
        while (1)
        {
          v24 = v6;
          sub_2546A2DF4(&qword_27F60F648, &qword_2546B6350);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2546B6320;
          v84 = v14;
          *(inited + 32) = v14;
          *(inited + 40) = v16;
          sub_2546A49D0(&v89, inited + 48);
          v26 = sub_2546B54A4();
          v27 = sub_2546A2DF4(&qword_27F60F650, &qword_2546B6358);
          *&v85 = v26;
          *(&v86 + 1) = v27;
          swift_isUniquelyReferenced_nonNull_native();
          v28 = v9;
          v29 = v24;
          v30 = sub_2546A5044(v9, v24);
          if (__OFADD__(v20[2], (v31 & 1) == 0))
          {
            goto LABEL_61;
          }

          v32 = v30;
          v33 = v31;
          v9 = sub_2546A2DF4(&qword_27F60F658, &qword_2546B6360);
          if (sub_2546B5764())
          {
            v34 = sub_2546A6BE4();
            v36 = sub_2546A5044(v34, v35);
            if ((v33 & 1) != (v37 & 1))
            {
              goto LABEL_65;
            }

            v32 = v36;
          }

          if (v33)
          {
            sub_2546A5604(&v85, v20[7] + 32 * v32);
          }

          else
          {
            sub_2546A6B98(&v20[v32 >> 6]);
            v38 = (v20[6] + 16 * v32);
            *v38 = v28;
            v38[1] = v29;
            v39 = (v20[7] + 32 * v32);
            v40 = v86;
            *v39 = v85;
            v39[1] = v40;
            v41 = v20[2];
            v42 = __OFADD__(v41, 1);
            v43 = v41 + 1;
            if (v42)
            {
              goto LABEL_64;
            }

            v20[2] = v43;
          }

          v44 = sub_2546A5044(v84, v16);
          v46 = v45;

          if (v46)
          {
            swift_isUniquelyReferenced_nonNull_native();
            sub_2546B5764();

            v47 = (v20[7] + 32 * v44);
            v48 = v47[1];
            v85 = *v47;
            v86 = v48;
            sub_2546B5784();
          }

          else
          {
            v85 = 0uLL;
            *&v86 = 0;
            *(&v86 + 1) = 1;
          }

          sub_2546A6B34(&v85, &qword_27F60F660, &qword_2546B6368);
          v87 = v28;
          v88 = v29;

          if (!v20[2])
          {
            goto LABEL_62;
          }

          v49 = sub_2546A6BE4();
          v51 = sub_2546A5044(v49, v50);
          if ((v52 & 1) == 0)
          {
            goto LABEL_63;
          }

          sub_2546A49D0(v20[7] + 32 * v51, &v85);
          sub_2546A6B34(&v89, &qword_27F60F640, &qword_2546B6348);
          v89 = v85;
          v90 = v86;
          if (*(v2 + 16) && (, , v53 = sub_2546A6BE4(), sub_2546A5044(v53, v54), v6 = v55, , , (v6 & 1) != 0))
          {
            if (*(v2 + 16) && (, v56 = sub_2546A6BE4(), v6 = sub_2546A5044(v56, v57), v59 = v58, , (v59 & 1) != 0))
            {
              v60 = (*(v2 + 56) + 16 * v6);
              v9 = *v60;
              v6 = v60[1];
            }

            else
            {
              sub_2546A1CBC();
            }
          }

          else
          {
            if (qword_27F60F4C0 != -1)
            {
              swift_once();
            }

            v61 = sub_2546B53D4();
            sub_2546A1C48(v61, qword_27F60FCE0);
            v6 = sub_2546B53B4();
            v62 = sub_2546B55F4();
            if (os_log_type_enabled(v6, v62))
            {
              v63 = swift_slowAlloc();
              v64 = swift_slowAlloc();
              *&v85 = v64;
              *v63 = 136315138;

              v65 = sub_2546A6BE4();
              v68 = sub_2546A4A68(v65, v66, v67);

              *(v63 + 4) = v68;
              _os_log_impl(&dword_2546A0000, v6, v62, "Soundname: %s is not contained in hierarchy dictionary", v63, 0xCu);
              sub_2546A55B8(v64);
              MEMORY[0x259C16A90](v64, -1, -1);
              MEMORY[0x259C16A90](v63, -1, -1);
            }

            sub_2546A1CBC();
          }

          if (v9 == 1953460082 && v6 == 0xE400000000000000)
          {
            break;
          }

          v70 = sub_2546A6BBC();

          v14 = v28;
          v16 = v29;
          if (v70)
          {

LABEL_52:
            v23 = v28;
            v16 = v29;
            goto LABEL_53;
          }
        }

        swift_bridgeObjectRelease_n();
        goto LABEL_52;
      }

      v23 = v14;

LABEL_53:
      v3 = v76;
    }

    v9 = v79;
    v8 = v77;
    v71 = v82;
    if (v20[2])
    {
    }

    else
    {
      sub_2546A2DF4(&qword_27F60F648, &qword_2546B6350);
      v72 = swift_initStackObject();
      *(v72 + 16) = xmmword_2546B6320;
      *(v72 + 32) = v23;
      *(v72 + 40) = v16;
      sub_2546A49D0(&v89, v72 + 48);
      v73 = sub_2546B54A4();

      v20 = v73;
      v71 = v82;
    }

    v6 = (v71 - 1) & v71;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v85 = v80;
    sub_2546A526C(v20, sub_2546A5234, 0, isUniquelyReferenced_nonNull_native, &v85);
    sub_2546A6B34(&v89, &qword_27F60F640, &qword_2546B6348);

    v0 = v85;
  }

  while (v6);
LABEL_2:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_59;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_2546B5834();
  __break(1u);
  return result;
}

unint64_t BMContextualUnderstandingSoundAnalysis.asFlatDictionary()()
{
  v1 = sub_2546A6C10();
  v2 = sub_2546A6C10();
  v3 = [v0 classifiedSounds];
  sub_2546A1AC4(0, &qword_27F60F668, 0x277CF1070);
  v4 = sub_2546B5574();

  v65 = sub_2546A4A44(v4);
  v5 = 0;
  v64 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v65 == v5)
    {

      v62 = sub_2546A3ECC(v1);

      return v62;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x259C16340](v5, v4);
    }

    else
    {
      if (v5 >= *(v64 + 16))
      {
        goto LABEL_40;
      }

      v6 = *(v4 + 8 * v5 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v8 = sub_2546A6910(v6);
    if (!v9)
    {
      goto LABEL_47;
    }

    v10 = v8;
    v11 = v9;
    v12 = 0.0;
    if (v1[2])
    {
      v13 = sub_2546A6BB0();
      v15 = sub_2546A5044(v13, v14);
      if (v16)
      {
        v12 = *(v1[7] + 8 * v15);
      }
    }

    v66 = v7;
    if (v2[2])
    {
      v17 = sub_2546A6BB0();
      v19 = sub_2546A5044(v17, v18);
      v20 = 1.0;
      v21 = 1.0;
      if (v22)
      {
        v21 = *(v2[7] + 8 * v19);
      }

      v12 = v12 * v21;
      if (v2[2])
      {
        v23 = sub_2546A6BB0();
        v25 = sub_2546A5044(v23, v24);
        if (v26)
        {
          v20 = *(v2[7] + 8 * v25) + 1.0;
        }
      }
    }

    else
    {
      v20 = 1.0;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v27 = sub_2546A6BB0();
    v29 = sub_2546A5044(v27, v28);
    if (__OFADD__(v2[2], (v30 & 1) == 0))
    {
      goto LABEL_41;
    }

    v31 = v29;
    v32 = v30;
    sub_2546A2DF4(&qword_27F60F670, &qword_2546B6370);
    if (sub_2546B5764())
    {
      v33 = sub_2546A6BB0();
      v35 = sub_2546A5044(v33, v34);
      if ((v32 & 1) != (v36 & 1))
      {
        goto LABEL_48;
      }

      v31 = v35;
    }

    if (v32)
    {
      *(v2[7] + 8 * v31) = v20;
    }

    else
    {
      sub_2546A6B98(&v2[v31 >> 6]);
      v37 = (v2[6] + 16 * v31);
      *v37 = v10;
      v37[1] = v11;
      *(v2[7] + 8 * v31) = v20;
      v38 = v2[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_45;
      }

      v2[2] = v40;
    }

    [v66 confidence];
    if (!v2[2])
    {
      goto LABEL_42;
    }

    v42 = v41;
    v43 = sub_2546A6BB0();
    v45 = sub_2546A5044(v43, v44);
    if ((v46 & 1) == 0)
    {
      goto LABEL_43;
    }

    v47 = *(v2[7] + 8 * v45);
    swift_isUniquelyReferenced_nonNull_native();
    v48 = sub_2546A6BB0();
    v50 = sub_2546A5044(v48, v49);
    v52 = v51;
    if (__OFADD__(v1[2], (v51 & 1) == 0))
    {
      goto LABEL_44;
    }

    v53 = v50;
    if (sub_2546B5764())
    {
      v54 = sub_2546A6BB0();
      v56 = sub_2546A5044(v54, v55);
      if ((v52 & 1) != (v57 & 1))
      {
        goto LABEL_48;
      }

      v53 = v56;
    }

    if (v52)
    {
      *(v1[7] + 8 * v53) = (v12 + v42) / v47;
    }

    else
    {
      sub_2546A6B98(&v1[v53 >> 6]);
      v58 = (v1[6] + 16 * v53);
      *v58 = v10;
      v58[1] = v11;
      *(v1[7] + 8 * v53) = v59;
      v60 = v1[2];
      v39 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v39)
      {
        goto LABEL_46;
      }

      v1[2] = v61;
    }

    ++v5;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
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
  result = sub_2546B5834();
  __break(1u);
  return result;
}

unint64_t sub_2546A3ECC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2546A2DF4(&qword_27F60F6A0, &qword_2546B65D0);
    v2 = sub_2546B57D4();
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + 16 * (v10 | (v9 << 6)));
    v13 = *v11;
    v12 = v11[1];

    sub_2546A2DF4(&qword_27F60F640, &qword_2546B6348);
    swift_dynamicCast();
    v26 = v24;
    v27 = v25;
    v23 = v24;
    v24 = v25;
    result = sub_2546A5044(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      result = sub_2546A5604(&v23, v2[7] + 32 * v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = (v2[7] + 32 * result);
      v19 = v24;
      *v18 = v23;
      v18[1] = v19;
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_20;
      }

      v2[2] = v22;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_2546A40FC(void *a1)
{
  if (a1[2])
  {
    sub_2546A2DF4(&qword_27F60F698, &qword_2546B6388);
    v2 = sub_2546B57D4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  sub_2546A1CA0();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  while (v5)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (a1[6] + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a1[7] + 8 * v12);

    sub_2546A2DF4(&qword_27F60F690, &qword_2546B6430);
    swift_dynamicCast();
    sub_2546A6974(&v25, v27);
    sub_2546A6974(v27, v28);
    sub_2546A6974(v28, &v26);
    result = sub_2546A5044(v15, v14);
    v17 = result;
    if (v18)
    {
      v19 = (v2[6] + 16 * result);
      *v19 = v15;
      v19[1] = v14;

      v20 = (v2[7] + 32 * v17);
      sub_2546A55B8(v20);
      result = sub_2546A6974(&v26, v20);
      v9 = v10;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v2[6] + 16 * result);
      *v21 = v15;
      v21[1] = v14;
      result = sub_2546A6974(&v26, (v2[7] + 32 * result));
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v2[2] = v24;
      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v5 = a1[v10 + 8];
    ++v9;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_2546A4338(void *a1)
{
  if (a1[2])
  {
    sub_2546A2DF4(&qword_27F60F680, &qword_2546B6380);
    v2 = sub_2546B57D4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  sub_2546A1CA0();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (a1[6] + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(a1[7] + 8 * v11);
    sub_2546A1AC4(0, &qword_27F60F688, 0x277CBFEF8);

    v16 = v15;
    sub_2546A2DF4(&qword_27F60F690, &qword_2546B6430);
    swift_dynamicCast();
    v17 = sub_2546A5044(v14, v13);
    v18 = v17;
    if (v19)
    {
      v20 = (v2[6] + 16 * v17);
      *v20 = v14;
      v20[1] = v13;

      v21 = v2[7];
      v22 = *(v21 + 8 * v18);
      *(v21 + 8 * v18) = v27;

      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      v23 = (v2[6] + 16 * v17);
      *v23 = v14;
      v23[1] = v13;
      *(v2[7] + 8 * v17) = v27;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v2[2] = v26;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v5 = a1[v9 + 8];
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void *static BMContextualUnderstandingSoundAnalysis.soundHierarchyLabels()()
{
  v0 = sub_2546A6BF0();
  sub_2546A46E0(v0);
  v2 = v1;
  v3 = sub_2546A6BF0();
  v4 = sub_2546A45C4(v3);
  v5 = sub_2546A47E8(v4, v2);
  v6 = sub_2546A48EC(v5);

  return v6;
}

uint64_t sub_2546A45C4(uint64_t a1)
{
  result = MEMORY[0x259C16240](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 56) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_2546A5674(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_2546A46E0(uint64_t a1)
{
  v2 = 0;
  v14 = MEMORY[0x259C16240](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  sub_2546A1CA0();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  if ((v4 & v3) != 0)
  {
    do
    {
      v8 = v2;
LABEL_7:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2546A5674(v13, v11, v12);
    }

    while (v5);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v2;
    if (v5)
    {
      v2 = v8;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_2546A47E8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_2546A5674(v14, v12, v13);
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

      return v15;
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

void *sub_2546A48EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_2546A8C64(*(a1 + 16), 0);
  v4 = sub_2546AC754(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_2546A1D98(v5);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v7 = v3;
  sub_2546A57C0(&v7);
  return v7;
}

uint64_t sub_2546A49D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2546A2DF4(&qword_27F60F640, &qword_2546B6348);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2546A4A44(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

unint64_t sub_2546A4A68(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2546A4B2C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2546A6AD4(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_2546A55B8(v11);
  return v7;
}

unint64_t sub_2546A4B2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2546A4C2C(a5, a6);
    *a1 = v9;
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
    result = sub_2546B56F4();
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

uint64_t sub_2546A4C2C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2546A4C78(a1, a2);
  sub_2546A4D90(&unk_286683BD8);
  return v3;
}

uint64_t sub_2546A4C78(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2546B5554())
  {
    result = sub_2546A4E74(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2546B56C4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2546B56F4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2546A4D90(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2546A4EE4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2546A4E74(uint64_t a1, uint64_t a2)
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

  sub_2546A2DF4(&qword_27F60F6A8, &qword_2546B6390);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2546A4EE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2546A2DF4(&qword_27F60F6A8, &qword_2546B6390);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_2546A4FD8(uint64_t a1)
{
  v1 = a1;
  sub_2546B5864();
  MEMORY[0x259C164D0](v1);
  v2 = sub_2546B5884();

  return sub_2546A50BC(v1, v2);
}

unint64_t sub_2546A5044(uint64_t a1, uint64_t a2)
{
  sub_2546B5864();
  sub_2546B5524();
  v4 = sub_2546B5884();

  return sub_2546A511C(a1, a2, v4);
}

unint64_t sub_2546A50BC(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_2546A511C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2546B5814() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2546A51D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2546B6330;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2546A5234@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2546AF670((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2546A526C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_2546B0058(v39);
  v35 = v39[0];
  v36 = v39[1];
  v37 = v39[2];
  v38 = v40;

  while (1)
  {
    sub_2546A6984(v34);
    v7 = *(&v34[0] + 1);
    if (!*(&v34[0] + 1))
    {
      sub_2546A1D98(v35);
    }

    v8 = *&v34[0];
    v32 = v34[1];
    v33 = v34[2];
    v9 = *a5;
    v11 = sub_2546A5044(*&v34[0], *(&v34[0] + 1));
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_2546A2DF4(&qword_27F60F658, &qword_2546B6360);
        sub_2546B5774();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_2546AEC64(v14, a4 & 1);
      v16 = sub_2546A5044(v8, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_23;
      }

      v11 = v16;
      if (v15)
      {
LABEL_10:
        v18 = *a5;
        sub_2546A49D0(*(*a5 + 56) + 32 * v11, v30);
        sub_2546A49D0(v30, v31);
        sub_2546A2DF4(&qword_27F60F640, &qword_2546B6348);
        sub_2546A2DF4(&qword_27F60F650, &qword_2546B6358);
        if (swift_dynamicCast())
        {
          sub_2546A49D0(&v32, v31);
          if (swift_dynamicCast())
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v31[0] = v29;
            v20 = v41;
            sub_2546A526C(v29, sub_2546A5234, 0, isUniquelyReferenced_nonNull_native, v31);
            v41 = v20;
            v29 = v31[0];
            swift_dynamicCast();
LABEL_15:
            sub_2546A6B34(v30, &qword_27F60F640, &qword_2546B6348);
            sub_2546A6B34(&v32, &qword_27F60F640, &qword_2546B6348);

            sub_2546A5604(v31, *(v18 + 56) + 32 * v11);
            goto LABEL_19;
          }
        }

        sub_2546A49D0(&v32, v31);
        goto LABEL_15;
      }
    }

    v21 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = v8;
    v22[1] = v7;
    v23 = (v21[7] + 32 * v11);
    v24 = v33;
    *v23 = v32;
    v23[1] = v24;
    v25 = v21[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_22;
    }

    v21[2] = v27;
LABEL_19:
    a4 = 1;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_2546B5834();
  __break(1u);
  return result;
}

uint64_t sub_2546A55B8(void *a1)
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

uint64_t sub_2546A5604(uint64_t a1, uint64_t a2)
{
  v4 = sub_2546A2DF4(&qword_27F60F640, &qword_2546B6348);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_2546A5674(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_2546B5864();
  sub_2546B5524();
  v8 = sub_2546B5884();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_2546B5814() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_2546A641C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_2546A57C0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2546ACF00(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2546A582C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2546A582C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2546B57F4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_2546B5594();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2546A59E8(v7, v8, a1, v4);
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
    return sub_2546A5920(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2546A5920(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_2546B5814();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2546A59E8(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_2546B5814();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_2546B5814()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_2546B5814() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2546A87E0();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_2546A87E0();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_2546A601C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_2546A5EF0(&v91, *result, a3);
LABEL_102:
}

uint64_t sub_2546A5EF0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2546AC640(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_2546A601C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_2546A601C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_2546A8E50(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_2546B5814() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_2546A8E50(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_2546B5814() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_2546A61C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2546A2DF4(&qword_27F60F678, &qword_2546B6378);
  result = sub_2546B56B4();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_2546A51D0(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2546B5864();
    sub_2546B5524();
    result = sub_2546B5884();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_2546A641C(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2546A61C0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2546A66DC(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_2546B5864();
      sub_2546B5524();
      result = sub_2546B5884();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_2546B5814() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2546A6584();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2546B5824();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_2546A6584()
{
  v1 = v0;
  sub_2546A2DF4(&qword_27F60F678, &qword_2546B6378);
  v2 = *v0;
  v3 = sub_2546B56A4();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

uint64_t sub_2546A66DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2546A2DF4(&qword_27F60F678, &qword_2546B6378);
  result = sub_2546B56B4();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_2546B5864();

        sub_2546B5524();
        result = sub_2546B5884();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2546A6910(void *a1)
{
  v1 = [a1 soundName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2546B54C4();

  return v3;
}

_OWORD *sub_2546A6974(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2546A6984@<X0>(_OWORD *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  if (v6)
  {
    v18 = v1[2];
    v19 = a1;
    v7 = v1[3];
LABEL_7:
    v8 = (v6 - 1) & v6;
    v9 = __clz(__rbit64(v6)) | (v7 << 6);
    v10 = (*(v2 + 48) + 16 * v9);
    v11 = v10[1];
    v20 = *v10;
    sub_2546A49D0(*(v2 + 56) + 32 * v9, &v21);
    v12 = v21;
    v13 = v22;
    v14 = v23;
    v15 = v24;

    v4 = v18;
    a1 = v19;
LABEL_8:
    *v1 = v2;
    v1[1] = v3;
    v1[2] = v4;
    v1[3] = v5;
    v1[4] = v8;
    if (v11)
    {
      v17 = v1[5];
      v21 = v20;
      v22 = v11;
      v23 = v12;
      v24 = v13;
      v25 = v14;
      v26 = v15;
      v17(&v21);
      return sub_2546A6B34(&v21, &qword_27F60F6B0, qword_2546B6398);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v7 >= ((v4 + 64) >> 6))
      {
        v13 = 0;
        v12 = 0;
        v11 = 0;
        v20 = 0;
        v14 = 0;
        v15 = 0;
        v8 = 0;
        goto LABEL_8;
      }

      v6 = *(v3 + 8 * v7);
      ++v5;
      if (v6)
      {
        v18 = v1[2];
        v19 = a1;
        v5 = v7;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2546A6AD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2546A6B34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2546A2DF4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2546A6BBC()
{

  return sub_2546B5814();
}

uint64_t sub_2546A6BF0()
{

  return sub_2546B54A4();
}

uint64_t sub_2546A6C10()
{

  return sub_2546B54A4();
}

__n128 sub_2546A6C30(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2546A6C3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2546A6C7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id HUFeatureFlags.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HUFeatureFlags.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HUFeatureFlags.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2546A6DF0()
{
  type metadata accessor for FeatureManager();
  v0 = swift_allocObject();
  result = FeatureManager.init()();
  qword_27F60F6B8 = v0;
  return result;
}

uint64_t FeatureManager.__allocating_init()()
{
  v0 = swift_allocObject();
  FeatureManager.init()();
  return v0;
}

uint64_t static FeatureManager.defaultManager.getter()
{
  if (qword_27F60F4B0 != -1)
  {
    swift_once();
  }
}

uint64_t FeatureManager.init()()
{
  v1 = v0;
  v2 = sub_2546B5354();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  static Paths.featureManagerBaseDirectory()();
  type metadata accessor for FeatureRegistry(0);
  swift_allocObject();
  *(v1 + 112) = FeatureRegistry.init(with:)(v4);
  return v1;
}

id sub_2546A6F64(uint64_t a1)
{
  sub_2546A2DF4(&qword_27F60F690, &qword_2546B6430);
  v2 = sub_2546B54A4();
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      FeatureRegistry.feature(for:)(&v27);

      v7 = v28;
      if (v28)
      {
        v8 = v29;
        v9 = v27;
        v10 = sub_2546B54B4();
        v26 = [v8 featureValueForName_];

        sub_2546A7358(v9, v7, v8);
      }

      else
      {
        v26 = 0;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v27 = v2;
      v11 = sub_2546A5044(v6, v5);
      if (__OFADD__(v2[2], (v12 & 1) == 0))
      {
        break;
      }

      v13 = v11;
      v14 = v12;
      sub_2546A2DF4(&qword_27F60F6C0, &qword_2546B6438);
      if (sub_2546B5764())
      {
        v15 = sub_2546A5044(v6, v5);
        if ((v14 & 1) != (v16 & 1))
        {
          goto LABEL_18;
        }

        v13 = v15;
      }

      if (v14)
      {

        v2 = v27;
        v17 = v27[7];
        v18 = *(v17 + 8 * v13);
        *(v17 + 8 * v13) = v26;
      }

      else
      {
        v2 = v27;
        v27[(v13 >> 6) + 8] |= 1 << v13;
        v19 = (v2[6] + 16 * v13);
        *v19 = v6;
        v19[1] = v5;
        *(v2[7] + 8 * v13) = v26;
        v20 = v2[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        v2[2] = v22;
      }

      v4 += 2;
      if (!--v3)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_2546B5834();
    __break(1u);
  }

  else
  {
LABEL_15:
    v23 = sub_2546A40FC(v2);

    v24 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    return sub_2546A7270(v23);
  }

  return result;
}

uint64_t FeatureManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t FeatureManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

id sub_2546A7270(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2546B5484();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_2546B52D4();

    swift_willThrow();
  }

  return v3;
}

void sub_2546A7358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall FeatureRegistry.printRegistry()()
{
  v1 = sub_2546B5354();
  sub_2546A324C();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2546A2DF4(&qword_27F60F6C8, &qword_2546B64B0);
  v8 = swift_allocObject();
  v81 = xmmword_2546B6320;
  *(v8 + 16) = xmmword_2546B6320;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  sub_2546ACF78(v8);

  v10 = sub_2546AD00C();
  sub_2546ACF98(v10);
  *(v11 + 32) = 0xD000000000000028;
  *(v11 + 40) = v12;
  sub_2546ACF78(v11);

  v75 = v0;

  v82[0] = sub_2546A91BC(v13, sub_2546A8DD4, sub_2546ACC1C);
  v14 = 0;
  sub_2546A9074(v82);
  v72 = v6;
  v79 = v1;

  v15 = *(v82[0] + 16);
  if (v15)
  {
    v77 = 0;
    v78 = v3;
    v80 = "ls ---------------------";
    v76 = v82[0];
    v16 = (v82[0] + 56);
    v17 = v7;
    do
    {
      v19 = *(v16 - 3);
      v18 = *(v16 - 2);
      v20 = *v16;
      v21 = sub_2546ACFDC();
      sub_2546AD064(v21);
      v82[0] = 0;
      v82[1] = 0xE000000000000000;

      swift_unknownObjectRetain();
      sub_2546B56D4();

      strcpy(v82, "Signal: ");
      BYTE1(v82[1]) = 0;
      WORD1(v82[1]) = 0;
      HIDWORD(v82[1]) = -402653184;
      ObjectType = swift_getObjectType();
      v84 = v20;
      sub_2546A2DF4(&qword_27F60F6D0, &qword_2546B64B8);
      v22 = sub_2546B5504();
      MEMORY[0x259C16190](v22);

      MEMORY[0x259C16190](0xD000000000000012, v80 | 0x8000000000000000);
      MEMORY[0x259C16190](v19, v18);

      v23 = v82[0];
      v24 = v82[1];
      v21[3].n128_u64[1] = MEMORY[0x277D837D0];
      v21[2].n128_u64[0] = v23;
      v21[2].n128_u64[1] = v24;
      sub_2546ACF78(v21);
      swift_unknownObjectRelease();

      v16 += 4;
      --v15;
    }

    while (v15);

    v7 = v17;
    v9 = MEMORY[0x277D837D0];
    v14 = v77;
    v3 = v78;
  }

  else
  {
  }

  v25 = sub_2546AD00C();
  sub_2546ACF98(v25);
  *(v26 + 32) = 0xD000000000000028;
  *(v26 + 40) = v27;
  v74 = v27;
  sub_2546ACF78(v26);

  v28 = sub_2546AD00C();
  sub_2546AD064(v28);
  v29[7] = v9;
  v29[4] = 0;
  v29[5] = 0xE000000000000000;
  sub_2546ACF78(v29);

  v30 = sub_2546AD00C();
  sub_2546ACF98(v30);
  *(v31 + 32) = 0xD000000000000028;
  *(v31 + 40) = v32;
  sub_2546ACF78(v31);

  v82[0] = sub_2546A91BC(v33, sub_2546A8D50, sub_2546ACA9C);
  sub_2546A8FD0(v82);
  v71 = v14;
  if (v14)
  {

LABEL_17:

    __break(1u);
    return;
  }

  v73 = v82[0];
  v34 = *(v82[0] + 16);
  v80 = v7;
  v35 = v72;
  if (v34)
  {
    v77 = (v3 + 8);
    v78 = "ls ---------------------";
    v36 = (v73 + 48);
    v76 = 0xD000000000000012;
    do
    {
      v38 = *(v36 - 2);
      v37 = *(v36 - 1);
      v39 = *v36;
      v36 += 3;
      v40 = sub_2546AD00C();
      sub_2546AD064(v40);
      v82[0] = 0;
      v82[1] = 0xE000000000000000;

      sub_2546B56D4();

      strcpy(v82, "Transformer: ");
      HIWORD(v82[1]) = -4864;
      v41 = [*(v39 + 16) modelDescription];
      v42 = [v41 modelURL];

      sub_2546B5334();
      v43 = sub_2546B52F4();
      v45 = v44;
      (*v77)(v35, v79);
      MEMORY[0x259C16190](v43, v45);

      MEMORY[0x259C16190](v76, v78 | 0x8000000000000000);
      v46 = v38;
      v9 = MEMORY[0x277D837D0];
      MEMORY[0x259C16190](v46, v37);

      v47 = v82[0];
      v48 = v82[1];
      v40[3].n128_u64[1] = v9;
      v40[2].n128_u64[0] = v47;
      v40[2].n128_u64[1] = v48;
      sub_2546ACF78(v40);

      --v34;
    }

    while (v34);
  }

  v49 = sub_2546AD00C();
  sub_2546AD064(v49);
  v50[7] = v9;
  v51 = v74;
  v50[4] = 0xD000000000000028;
  v50[5] = v51;
  sub_2546ACF78(v50);

  v52 = sub_2546AD00C();
  sub_2546AD064(v52);
  v53[7] = v9;
  v53[4] = 0;
  v53[5] = 0xE000000000000000;
  sub_2546ACF78(v53);

  v54 = sub_2546AD00C();
  sub_2546ACF98(v54);
  *(v55 + 32) = 0xD000000000000028;
  *(v55 + 40) = v56;
  sub_2546ACF78(v55);

  swift_beginAccess();

  ObjectType = sub_2546A91BC(v57, sub_2546A8CCC, sub_2546AC8F4);
  v58 = v71;
  sub_2546A8F2C(&ObjectType);
  if (v58)
  {

    goto LABEL_17;
  }

  v79 = ObjectType;
  v59 = *(ObjectType + 16);
  v60 = MEMORY[0x277D837D0];
  if (v59)
  {
    v61 = v79 + 64;
    do
    {
      v63 = *(v61 - 16);
      v62 = *(v61 - 8);
      v61 += 48;
      v64 = sub_2546AD00C();
      sub_2546AD064(v64);

      swift_unknownObjectRetain();
      ObjectType = 0;
      v84 = 0xE000000000000000;
      sub_2546B56D4();

      ObjectType = 0xD000000000000013;
      v84 = 0x80000002546B74F0;

      MEMORY[0x259C16190](v63, v62);

      v65 = ObjectType;
      v66 = v84;
      v64[3].n128_u64[1] = v60;
      v64[2].n128_u64[0] = v65;
      v64[2].n128_u64[1] = v66;
      sub_2546ACF78(v64);
      swift_unknownObjectRelease();

      --v59;
    }

    while (v59);
  }

  v67 = sub_2546AD00C();
  sub_2546AD064(v67);
  v68[7] = v60;
  v68[4] = 0xD000000000000028;
  v68[5] = v74;
  sub_2546ACF78(v68);

  v69 = sub_2546AD00C();
  sub_2546AD064(v69);
  v70[7] = v60;
  v70[4] = 0;
  v70[5] = 0xE000000000000000;
  sub_2546ACF78(v70);
}

Swift::Void __swiftcall FeatureRegistry.printFeature(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  sub_2546AD0F4();
  v5 = sub_2546B5354();
  sub_2546A324C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(v1 + 32);
  v12 = MEMORY[0x277D837D0];
  if (*(v11 + 16) && (v13 = sub_2546A5044(countAndFlagsBits, object), (v14 & 1) != 0))
  {
    v15 = (*(v11 + 56) + 32 * v13);
    v16 = *v15;
    v17 = v15[1];
    v137 = v7;
    v138 = v16;
    v18 = v15[2];
    swift_endAccess();
    v19 = sub_2546A2DF4(&qword_27F60F6C8, &qword_2546B64B0);
    v20 = swift_allocObject();
    v139 = xmmword_2546B6320;
    *(v20 + 16) = xmmword_2546B6320;
    *(v20 + 56) = v12;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0xE000000000000000;

    swift_unknownObjectRetain();
    sub_2546ACF78(v20);

    v21 = sub_2546ACFDC();
    sub_2546ACFB0(v21, "Feature --------------------------------");
    sub_2546ACF78(v22);

    v23 = sub_2546ACFDC();
    sub_2546A1CCC(v23);
    v141[0] = 0x203A656D614ELL;
    v141[1] = 0xE600000000000000;

    MEMORY[0x259C16190](v138, v17);
    v129[1] = v17;

    v24 = v141[0];
    v25 = v141[1];
    v21[3].n128_u64[1] = v12;
    v21[2].n128_u64[0] = v24;
    v21[2].n128_u64[1] = v25;
    sub_2546ACF78(v21);

    v26 = sub_2546ACFDC();
    sub_2546ACFB0(v26, "----------------------------------------");
    v130 = v27;
    sub_2546ACF78(v28);

    v29 = sub_2546ACFDC();
    sub_2546A1CCC(v29);
    v30[7] = v12;
    v30[4] = 0;
    v30[5] = 0xE000000000000000;
    sub_2546ACF78(v30);

    type metadata accessor for Transformer();
    v31 = swift_dynamicCastClass();
    v131 = v19;
    v129[2] = v18;
    if (v31)
    {
      v32 = v12;
      v33 = v31;
      v34 = sub_2546ACFDC();
      sub_2546AD028(v34);
      v36[7] = v32;
      v36[4] = v2;
      v36[5] = (v35 - 32) | 0x8000000000000000;
      swift_unknownObjectRetain();
      sub_2546ACF78(v34);

      v37 = sub_2546ACFDC();
      *&v38 = sub_2546AD028(v37).n128_u64[0];
      v141[0] = v2 - 22;
      v141[1] = 0x80000002546B75F0;
      v39 = [*(v33 + 16) modelDescription];
      v40 = [v39 modelURL];

      sub_2546B5334();
      v41 = sub_2546B52F4();
      v43 = v42;
      (*(v137 + 8))(v10, v5);
      MEMORY[0x259C16190](v41, v43);

      v44 = v141[0];
      v45 = v141[1];
      v37[3].n128_u64[1] = v32;
      v37[2].n128_u64[0] = v44;
      v37[2].n128_u64[1] = v45;
      sub_2546ACF78(v37);

      v46 = sub_2546ACFDC();
      *&v47 = sub_2546AD028(v46).n128_u64[0];
      strcpy(v141, "Inputs: ");
      BYTE1(v141[1]) = 0;
      WORD1(v141[1]) = 0;
      HIDWORD(v141[1]) = -402653184;
      v48 = [*(v33 + 16) modelDescription];
      v49 = [v48 inputDescriptionsByName];

      sub_2546AC8B0();
      v50 = sub_2546B5494();

      v140[0] = sub_2546A92C8(v50);
      v51 = 0;
      sub_2546A8EC0(v140);

      v52 = MEMORY[0x259C161E0](v140[0], v32);
      v2 = v32;
      v54 = v53;

      MEMORY[0x259C16190](v52, v54);

      v55 = v141[0];
      v56 = v141[1];
      v46[3].n128_u64[1] = v2;
      v46[2].n128_u64[0] = v55;
      v46[2].n128_u64[1] = v56;
      sub_2546ACF78(v46);

      v57 = sub_2546ACFDC();
      sub_2546AD028(v57);
      sub_2546AD0E0();
      v141[0] = v58;
      v141[1] = 0xE900000000000020;
      v59 = [*(v33 + 16) modelDescription];
      v60 = [v59 outputDescriptionsByName];

      v61 = sub_2546B5494();
      v140[0] = sub_2546A92C8(v61);
      sub_2546A8EC0(v140);

      v62 = MEMORY[0x259C161E0](v140[0], v2);
      v64 = v63;

      MEMORY[0x259C16190](v62, v64);

      v65 = v141[0];
      v66 = v141[1];
      v57[3].n128_u64[1] = v2;
      v57[2].n128_u64[0] = v65;
      v57[2].n128_u64[1] = v66;
      sub_2546ACF78(v57);

      v67 = sub_2546ACFDC();
      sub_2546A1CCC(v67);
      *(v68 + 56) = v2;
      sub_2546AD0F4();
      v69 = v130;
      *(v70 + 32) = v2;
      *(v70 + 40) = v69;
      sub_2546ACF78(v70);

      v71 = sub_2546ACFDC();
      sub_2546A1CCC(v71);
      v72[7] = v2;
      v72[4] = 0;
      v72[5] = 0xE000000000000000;
      sub_2546ACF78(v72);

      type metadata accessor for MultiFeatureProvider();
      v73 = swift_dynamicCastClass();
      if (v73)
      {
        v74 = v73;
        v138 = 0;
        swift_beginAccess();
        v75 = *(v74 + 16);
        v76 = 1 << *(v75 + 32);
        v77 = -1;
        if (v76 < 64)
        {
          v77 = ~(-1 << v76);
        }

        v2 = v77 & *(v75 + 64);
        v78 = (v76 + 63) >> 6;
        swift_unknownObjectRetain();

        v79 = 0;
        v51 = MEMORY[0x277D84F90];
        while (v2)
        {
LABEL_14:
          v82 = __clz(__rbit64(v2));
          v2 &= v2 - 1;
          v83 = *(*(v75 + 56) + ((v79 << 9) | (8 * v82)));
          ObjectType = swift_getObjectType();
          v85 = sub_2546A9284(v83, ObjectType, &protocol descriptor for Signal);
          if (v85)
          {
            v87 = v85;
            v88 = v86;
            swift_unknownObjectRetain();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2546A8A8C();
              v51 = v92;
            }

            v89 = v51[1].n128_u64[0];
            v90 = v89 + 1;
            if (v89 >= v51[1].n128_u64[1] >> 1)
            {
              v137 = v89 + 1;
              sub_2546A8A8C();
              v90 = v137;
              v51 = v93;
            }

            v51[1].n128_u64[0] = v90;
            v91 = &v51[v89];
            v91[2].n128_u64[0] = v87;
            v91[2].n128_u64[1] = v88;
          }
        }

        v12 = MEMORY[0x277D837D0];
        v80 = v51;
        while (1)
        {
          v81 = v79 + 1;
          if (__OFADD__(v79, 1))
          {
            goto LABEL_40;
          }

          if (v81 >= v78)
          {
            break;
          }

          v2 = *(v75 + 64 + 8 * v81);
          ++v79;
          if (v2)
          {
            v79 = v81;
            goto LABEL_14;
          }
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_2546AD0F4();
        v51 = v138;
      }

      else
      {
        swift_unknownObjectRelease();
        v80 = MEMORY[0x277D84F90];
        v12 = MEMORY[0x277D837D0];
      }
    }

    else
    {
      v95 = swift_getObjectType();
      v96 = sub_2546A9284(v18, v95, &protocol descriptor for Signal);
      if (v96)
      {
        v98 = v96;
        v99 = v97;
        sub_2546A2DF4(&qword_27F60F6E0, &qword_2546B64C0);
        v80 = swift_allocObject();
        sub_2546AD028(v80);
        *(v100 + 32) = v98;
        *(v100 + 40) = v99;
        swift_unknownObjectRetain();
        v51 = 0;
      }

      else
      {
        v51 = 0;
        v80 = MEMORY[0x277D84F90];
      }
    }

    v101 = sub_2546ACFDC();
    sub_2546ACFB0(v101, "Depends on Signals ---------------------");
    sub_2546ACF78(v102);

    v141[0] = v80;

    sub_2546A9118(v141);
    if (v51)
    {
      goto LABEL_41;
    }

    v103 = 0;
    v132 = *(v141[0] + 16);
    v133 = v141[0];
    v104 = (v141[0] + 40);
    while (v132 != v103)
    {
      if (v103 >= *(v133 + 16))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:

        while (1)
        {

          __break(1u);
        }
      }

      v137 = v103;
      v138 = 0;
      v106 = *(v104 - 1);
      v105 = *v104;
      v136 = v104;
      v107 = sub_2546ACFDC();
      sub_2546A1CCC(v107);
      strcpy(v141, "Signal Name: ");
      HIWORD(v141[1]) = -4864;
      v142 = swift_getObjectType();
      v143 = v105;
      swift_unknownObjectRetain();
      sub_2546A2DF4(&qword_27F60F6D0, &qword_2546B64B8);
      v108 = sub_2546B5504();
      MEMORY[0x259C16190](v108);

      v109 = v141[0];
      v110 = v141[1];
      v101[3].n128_u64[1] = v12;
      v101[2].n128_u64[0] = v109;
      v101[2].n128_u64[1] = v110;
      sub_2546ACF78(v101);

      v111 = sub_2546ACFDC();
      sub_2546AD028(v111);
      sub_2546AD0E0();
      v142 = v112;
      v143 = 0xE900000000000020;
      v135 = v106;
      v113 = [v106 featureNames];
      v114 = sub_2546B55D4();

      v115 = *(v114 + 16);
      if (v115)
      {
        v51 = v80;
        sub_2546A2DF4(&qword_27F60F6D8, &unk_2546B6660);
        v116 = sub_2546AD0C8();
        j__malloc_size(v116);
        sub_2546ACFF8();
        v116[2] = v115;
        v116[3] = v117;
        v134 = sub_2546AC754(v141, v116 + 4, v115, v114);
        v2 = v141[4];

        v118 = sub_2546AD070();
        sub_2546A1D98(v118);
        if (v134 != v115)
        {
          goto LABEL_39;
        }

        sub_2546AD0F4();
        v12 = MEMORY[0x277D837D0];
      }

      else
      {
        v116 = MEMORY[0x277D84F90];
      }

      v141[0] = v116;
      v51 = v138;
      sub_2546A8EC0(v141);
      if (v51)
      {
        goto LABEL_41;
      }

      v101 = v141[0];
      v119 = MEMORY[0x259C161E0](v141[0], v12);
      v121 = v120;

      MEMORY[0x259C16190](v119, v121);

      v122 = v142;
      v123 = v143;
      v111[3].n128_u64[1] = v12;
      v111[2].n128_u64[0] = v122;
      v111[2].n128_u64[1] = v123;
      sub_2546ACF78(v111);
      swift_unknownObjectRelease();

      v104 = v136 + 2;
      v103 = v137 + 1;
    }

    v124 = sub_2546ACFDC();
    sub_2546A1CCC(v124);
    v125[7] = v12;
    v126 = v130;
    v125[4] = v2;
    v125[5] = v126;
    sub_2546ACF78(v125);

    v127 = sub_2546ACFDC();
    sub_2546A1CCC(v127);
    v128[7] = v12;
    v128[4] = 0;
    v128[5] = 0xE000000000000000;
    sub_2546ACF78(v128);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
    sub_2546A2DF4(&qword_27F60F6C8, &qword_2546B64B0);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_2546B6320;
    *(v94 + 56) = v12;
    *(v94 + 32) = v2 + 37;
    *(v94 + 40) = 0x80000002546B7510;
    sub_2546ACF78(v94);
  }
}

void sub_2546A86FC()
{
  sub_2546AD088();
  if (v6)
  {
    sub_2546A1CDC();
    if (v7 != v8)
    {
      sub_2546AD07C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_2546ACFCC();
    }
  }

  sub_2546AD054();
  if (v3)
  {
    sub_2546A2DF4(&qword_27F60F760, &qword_2546B6500);
    v9 = sub_2546AD0C8();
    sub_2546AD0AC(v9);
    sub_2546AD094(v10 / 8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_2546AD0A0();
  if (v1)
  {
    if (v3 != v0 || v5 + 8 * v2 <= v4)
    {
      v12 = sub_2546AD070();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_2546A2DF4(&qword_27F60F768, &qword_2546B6508);
    sub_2546AD034(v15);
  }
}

void sub_2546A87E0()
{
  sub_2546AD088();
  if (v3)
  {
    sub_2546A1CDC();
    if (v5 != v6)
    {
      sub_2546AD07C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_2546ACFCC();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_2546A2DF4(&qword_27F60F728, &qword_2546B64E0);
    v9 = sub_2546AD0C8();
    j__malloc_size(v9);
    sub_2546ACFF8();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_2546A88B4()
{
  sub_2546AD088();
  if (v6)
  {
    sub_2546A1CDC();
    if (v7 != v8)
    {
      sub_2546AD07C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_2546ACFCC();
    }
  }

  sub_2546AD054();
  if (v3)
  {
    sub_2546A2DF4(&qword_27F60F710, &unk_2546B6650);
    v9 = sub_2546AD0C8();
    sub_2546AD0AC(v9);
    sub_2546AD094(v10 / 32);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_2546AD0A0();
  if (v1)
  {
    if (v3 != v0 || v5 + 32 * v2 <= v4)
    {
      v12 = sub_2546AD070();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_2546A2DF4(&qword_27F60F718, &qword_2546B65B0);
    sub_2546AD034(v15);
  }
}

void sub_2546A8998()
{
  sub_2546AD088();
  if (v6)
  {
    sub_2546A1CDC();
    if (v7 != v8)
    {
      sub_2546AD07C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_2546ACFCC();
    }
  }

  sub_2546AD054();
  if (v3)
  {
    sub_2546A2DF4(&qword_27F60F700, &qword_2546B64D8);
    v4 = 24;
    v9 = swift_allocObject();
    sub_2546AD0AC(v9);
    sub_2546AD094(v10 / 24);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_2546AD0A0();
  if (v1)
  {
    if (v3 != v0 || v5 + 24 * v2 <= v4)
    {
      v12 = sub_2546AD070();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_2546A2DF4(&qword_27F60F708, &unk_2546B6630);
    sub_2546AD034(v15);
  }
}

void sub_2546A8A8C()
{
  sub_2546AD088();
  if (v6)
  {
    sub_2546A1CDC();
    if (v7 != v8)
    {
      sub_2546AD07C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_2546ACFCC();
    }
  }

  sub_2546AD054();
  if (v3)
  {
    sub_2546A2DF4(&qword_27F60F6E0, &qword_2546B64C0);
    v9 = sub_2546AD0C8();
    j__malloc_size(v9);
    sub_2546ACFF8();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  sub_2546AD0A0();
  if (v1)
  {
    if (v9 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = sub_2546AD070();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    v15 = sub_2546A2DF4(&qword_27F60F720, &qword_2546B6520);
    sub_2546AD034(v15);
  }
}

void sub_2546A8B70()
{
  sub_2546AD088();
  if (v6)
  {
    sub_2546A1CDC();
    if (v7 != v8)
    {
      sub_2546AD07C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_2546ACFCC();
    }
  }

  sub_2546AD054();
  if (v3)
  {
    sub_2546A2DF4(&qword_27F60F6F0, &qword_2546B64C8);
    v4 = 48;
    v9 = swift_allocObject();
    sub_2546AD0AC(v9);
    sub_2546AD094(v10 / 48);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_2546AD0A0();
  if (v1)
  {
    if (v3 != v0 || v5 + 48 * v2 <= v4)
    {
      v12 = sub_2546AD070();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_2546A2DF4(&qword_27F60F6F8, &qword_2546B64D0);
    sub_2546AD034(v15);
  }
}

void *sub_2546A8C64(uint64_t a1, uint64_t a2)
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

  sub_2546A2DF4(&qword_27F60F6D8, &unk_2546B6660);
  v4 = sub_2546AD0C8();
  j__malloc_size(v4);
  sub_2546ACFF8();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_2546A8CCC(uint64_t a1, uint64_t a2)
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

  sub_2546A2DF4(&qword_27F60F730, &qword_2546B64E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 48);
  return v4;
}

void *sub_2546A8D50(uint64_t a1, uint64_t a2)
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

  sub_2546A2DF4(&qword_27F60F740, &qword_2546B64F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

void *sub_2546A8DD4(uint64_t a1, uint64_t a2)
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

  sub_2546A2DF4(&qword_27F60F750, &qword_2546B64F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 32);
  return v4;
}

char *sub_2546A8E50(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_2546ACF68(a3, result);
  }

  return result;
}

char *sub_2546A8E70(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_2546ACF68(a3, result);
  }

  return result;
}

char *sub_2546A8E98(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_2546ACF68(a3, result);
  }

  return result;
}

uint64_t sub_2546A8EC0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2546ACF00(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2546A9384(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2546A8F2C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2546ACF14(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2546A9478(v6, &qword_27F60F738, &unk_2546B6670, sub_2546A9ED0, sub_2546A9594);
  *a1 = v2;
  return result;
}

uint64_t sub_2546A8FD0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2546ACF28(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2546A9478(v6, &qword_27F60F748, &unk_2546B6680, sub_2546AA428, sub_2546A9680);
  *a1 = v2;
  return result;
}

uint64_t sub_2546A9074(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2546ACF3C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2546A9478(v6, &qword_27F60F758, &unk_2546B6690, sub_2546AA978, sub_2546A975C);
  *a1 = v2;
  return result;
}

uint64_t sub_2546A9118(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2546ACF50(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2546A9478(v6, &qword_27F60F720, &qword_2546B6520, sub_2546AAEB0, sub_2546A9830);
  *a1 = v2;
  return result;
}

uint64_t sub_2546A91BC(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v10, v6 + 32, v3, a1);

  v8 = sub_2546AD070();
  sub_2546A1D98(v8);
  if (v7 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_2546A9284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_2546A92C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2546A8C64(*(a1 + 16), 0);
  v4 = sub_2546ACDA4(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_2546A1D98(v5);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2546A9384(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2546B57F4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_2546B5594();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2546A99C8(v7, v8, a1, v4);
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
    return sub_2546A5920(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2546A9478(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_2546B57F4();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2546A2DF4(a2, a3);
        v14 = sub_2546B5594();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_2546A9594(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 48 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_2546B5814();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v12 + 48);
        v10 = *(v12 + 56);
        v14 = *(v12 + 64);
        v15 = *(v12 + 88);
        v16 = *(v12 + 72);
        v17 = *(v12 + 16);
        *(v12 + 48) = *v12;
        *(v12 + 64) = v17;
        *(v12 + 80) = *(v12 + 32);
        *v12 = result;
        *(v12 + 8) = v10;
        *(v12 + 16) = v14;
        *(v12 + 24) = v16;
        *(v12 + 40) = v15;
        v12 -= 48;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 48;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2546A9680(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_2546B5814();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2546A975C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 32 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_2546B5814();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v12 + 32);
        v14 = *(v12 + 56);
        v15 = *(v12 + 40);
        v16 = *(v12 + 16);
        *(v12 + 32) = *v12;
        *(v12 + 48) = v16;
        *v12 = result;
        *(v12 + 8) = v15;
        *(v12 + 24) = v14;
        v10 = v15;
        v12 -= 32;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 32;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2546A9830(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 16 * a3 - 16);
    v6 = result - a3;
    while (2)
    {
      v18 = a3;
      v16 = v6;
      v17 = v5;
      while (1)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_2546A2DF4(&qword_27F60F6D0, &qword_2546B64B8);
        v7 = sub_2546B5504();
        v9 = v8;
        swift_getObjectType();
        if (v7 == sub_2546B5504() && v9 == v10)
        {
          break;
        }

        v12 = sub_2546B5814();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v12)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          v13 = *v5;
          *v5 = v5[1];
          v5[1] = v13;
          --v5;
          if (!__CFADD__(v6++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_14:
      a3 = v18 + 1;
      v5 = v17 + 1;
      v6 = v16 - 1;
      if (v18 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2546A99C8(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_2546B5814();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_2546B5814()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_2546B5814() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2546A87E0();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_2546A87E0();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_2546ABB74((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_2546AB6AC(&v91, *result, a3);
LABEL_102:
}

void sub_2546A9ED0(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = (*a3 + 48 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*a3 + 48 * v8);
        if (v11 == *v13 && v12 == v13[1])
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_2546B5814();
        }

        v6 = v8 + 2;
        v16 = (v9 + 48 * v8 + 104);
        while (v6 < v5)
        {
          if (*(v16 - 1) == *(v16 - 7) && *v16 == *(v16 - 6))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_2546B5814()))
          {
            break;
          }

          ++v6;
          v16 += 6;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v6 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v6)
        {
          v18 = 48 * v6 - 24;
          v19 = 48 * v8 + 40;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v23 = (v22 + v19);
              v24 = *(v22 + v19 - 40);
              v25 = v22 + v18;
              v26 = *(v23 - 3);
              v27 = *v23;
              v28 = *(v23 - 1);
              v29 = *(v25 + 8);
              v30 = *(v25 - 8);
              *(v23 - 5) = *(v25 - 24);
              *(v23 - 3) = v30;
              *(v23 - 1) = v29;
              *(v25 - 24) = v24;
              *(v25 - 8) = v26;
              *v25 = v28;
              *(v25 + 16) = v27;
            }

            ++v21;
            v18 -= 48;
            v19 += 48;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v31 = a3[1];
      if (v6 < v31)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v31)
          {
            v32 = a3[1];
          }

          else
          {
            v32 = v8 + a4;
          }

          if (v32 < v8)
          {
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
            return;
          }

          if (v6 != v32)
          {
            v33 = *a3;
            v34 = *a3 + 48 * v6 - 48;
            v35 = v8 - v6;
            do
            {
              v36 = (v33 + 48 * v6);
              v37 = *v36;
              v38 = v36[1];
              v39 = v35;
              v40 = v34;
              do
              {
                v41 = v37 == *v40 && v38 == *(v40 + 8);
                if (v41 || (sub_2546B5814() & 1) == 0)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_125;
                }

                v37 = *(v40 + 48);
                v38 = *(v40 + 56);
                v42 = *(v40 + 64);
                v43 = *(v40 + 88);
                v44 = *(v40 + 72);
                v45 = *(v40 + 16);
                *(v40 + 48) = *v40;
                *(v40 + 64) = v45;
                *(v40 + 80) = *(v40 + 32);
                *v40 = v37;
                *(v40 + 8) = v38;
                *(v40 + 16) = v42;
                *(v40 + 24) = v44;
                *(v40 + 40) = v43;
                v40 -= 48;
              }

              while (!__CFADD__(v39++, 1));
              ++v6;
              v34 += 48;
              --v35;
            }

            while (v6 != v32);
            v6 = v32;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2546A87E0();
        v7 = v89;
      }

      v47 = v7[2];
      v48 = v47 + 1;
      if (v47 >= v7[3] >> 1)
      {
        sub_2546A87E0();
        v7 = v90;
      }

      v7[2] = v48;
      v49 = v7 + 4;
      v50 = &v7[2 * v47 + 4];
      *v50 = v8;
      v50[1] = v6;
      v93 = *result;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v47)
      {
        while (1)
        {
          v51 = v48 - 1;
          v52 = &v49[2 * v48 - 2];
          v53 = &v7[2 * v48];
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v54 = v7[4];
            v55 = v7[5];
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
LABEL_69:
            if (v57)
            {
              goto LABEL_110;
            }

            v69 = *v53;
            v68 = v53[1];
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_113;
            }

            v73 = v52[1];
            v74 = v73 - *v52;
            if (__OFSUB__(v73, *v52))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v71, v74))
            {
              goto LABEL_118;
            }

            if (v71 + v74 >= v56)
            {
              if (v56 < v74)
              {
                v51 = v48 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v48 < 2)
          {
            goto LABEL_112;
          }

          v76 = *v53;
          v75 = v53[1];
          v64 = __OFSUB__(v75, v76);
          v71 = v75 - v76;
          v72 = v64;
LABEL_84:
          if (v72)
          {
            goto LABEL_115;
          }

          v78 = *v52;
          v77 = v52[1];
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_117;
          }

          if (v79 < v71)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v51 - 1 >= v48)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v83 = v7;
          v84 = &v49[2 * v51 - 2];
          v85 = *v84;
          v86 = &v49[2 * v51];
          v87 = v86[1];
          sub_2546ABD38((*a3 + 48 * *v84), (*a3 + 48 * *v86), (*a3 + 48 * v87), v93);
          if (v4)
          {
            goto LABEL_103;
          }

          if (v87 < v85)
          {
            goto LABEL_105;
          }

          v88 = v83[2];
          if (v51 > v88)
          {
            goto LABEL_106;
          }

          *v84 = v85;
          v84[1] = v87;
          if (v51 >= v88)
          {
            goto LABEL_107;
          }

          v48 = v88 - 1;
          memmove(&v49[2 * v51], v86 + 2, 16 * (v88 - 1 - v51));
          v7 = v83;
          v83[2] = v88 - 1;
          if (v88 <= 2)
          {
            goto LABEL_98;
          }
        }

        v58 = &v49[2 * v48];
        v59 = *(v58 - 8);
        v60 = *(v58 - 7);
        v64 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        if (v64)
        {
          goto LABEL_108;
        }

        v63 = *(v58 - 6);
        v62 = *(v58 - 5);
        v64 = __OFSUB__(v62, v63);
        v56 = v62 - v63;
        v57 = v64;
        if (v64)
        {
          goto LABEL_109;
        }

        v65 = v53[1];
        v66 = v65 - *v53;
        if (__OFSUB__(v65, *v53))
        {
          goto LABEL_111;
        }

        v64 = __OFADD__(v56, v66);
        v67 = v56 + v66;
        if (v64)
        {
          goto LABEL_114;
        }

        if (v67 >= v61)
        {
          v81 = *v52;
          v80 = v52[1];
          v64 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v64)
          {
            goto LABEL_119;
          }

          if (v56 < v82)
          {
            v51 = v48 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v95 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_2546AB7D8(&v95, *result, a3);
LABEL_103:
}

void sub_2546AA428(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_2546B5814();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_2546B5814()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = v24 + v21;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
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
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v93 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == *(v39 + 8);
                if (v40 || (sub_2546B5814() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v41 = *(v39 + 32);
                v42 = *(v39 + 16);
                v36 = *(v39 + 24);
                *(v39 + 24) = *v39;
                *(v39 + 40) = v42;
                *v39 = v36;
                *(v39 + 8) = v41;
                v37 = v41;
                v39 -= 24;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v93;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2546A87E0();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_2546A87E0();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v94 = *result;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v92 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_2546ABF2C((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v94);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v92;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_2546AB910(&v96, *result, a3);
LABEL_103:
}

void sub_2546AA978(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 32 * v10);
        v12 = (*a3 + 32 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_2546B5814();
        }

        v10 = v9 + 2;
        v15 = 32 * v9;
        v16 = v12 + 9;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 5) && *v16 == *(v16 - 4))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_2546B5814()))
          {
            break;
          }

          ++v10;
          v16 += 4;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 32 * v10 - 8;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = (v21 + v18);
              v24 = *v22;
              v25 = v22[3];
              v26 = *(v22 + 1);
              v27 = *(v23 - 1);
              *v22 = *(v23 - 3);
              *(v22 + 1) = v27;
              *(v23 - 3) = v24;
              *(v23 - 1) = v26;
              *v23 = v25;
            }

            ++v20;
            v18 -= 32;
            v15 += 32;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v28 = a3[1];
      if (v10 < v28)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v28)
          {
            v29 = a3[1];
          }

          else
          {
            v29 = v9 + a4;
          }

          if (v29 < v9)
          {
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
            return;
          }

          if (v10 != v29)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v10 - 32;
            v92 = v9;
            v32 = v9 - v10;
            do
            {
              v33 = v10;
              v34 = (v30 + 32 * v10);
              v35 = *v34;
              v36 = v34[1];
              v37 = v32;
              v38 = v31;
              do
              {
                v39 = v35 == *v38 && v36 == *(v38 + 8);
                if (v39 || (sub_2546B5814() & 1) == 0)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_124;
                }

                v35 = *(v38 + 32);
                v40 = *(v38 + 56);
                v41 = *(v38 + 40);
                v42 = *(v38 + 16);
                *(v38 + 32) = *v38;
                *(v38 + 48) = v42;
                *v38 = v35;
                *(v38 + 8) = v41;
                *(v38 + 24) = v40;
                v36 = v41;
                v38 -= 32;
              }

              while (!__CFADD__(v37++, 1));
              v10 = v33 + 1;
              v31 += 32;
              --v32;
            }

            while (v33 + 1 != v29);
            v10 = v29;
            v9 = v92;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v91 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2546A87E0();
        v8 = v87;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_2546A87E0();
        v8 = v88;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v91;
      v93 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_69:
            if (v54)
            {
              goto LABEL_109;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_112;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_117;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v45 < 2)
          {
            goto LABEL_111;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_84:
          if (v69)
          {
            goto LABEL_114;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_116;
          }

          if (v76 < v68)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = v82[1];
          sub_2546AC120((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v93);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v83 < v81)
          {
            goto LABEL_104;
          }

          v84 = v8;
          v85 = v8[2];
          if (v48 > v85)
          {
            goto LABEL_105;
          }

          *v80 = v81;
          v80[1] = v83;
          if (v48 >= v85)
          {
            goto LABEL_106;
          }

          v45 = v85 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v85 - 1 - v48));
          v84[2] = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          if (!v86)
          {
            goto LABEL_98;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_107;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_108;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_110;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_118;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v91;
      if (v91 >= v6)
      {
        v95 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_2546ABA48(&v95, *result, a3);
LABEL_102:
}

void sub_2546AAEB0(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_108:
    v5 = *result;
    if (!*result)
    {
      goto LABEL_150;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v88 = v4;
LABEL_111:
      v4 = (v88 + 16);
      v89 = *(v88 + 2);
      while (v89 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_147;
        }

        v90 = v88;
        v91 = &v88[16 * v89];
        v92 = *v91;
        v93 = (v4 + 16 * v89);
        v94 = v93[1];
        sub_2546AC2E4((*a3 + 16 * *v91), (*a3 + 16 * *v93), (*a3 + 16 * v94), v5);
        if (v113)
        {
          break;
        }

        if (v94 < v92)
        {
          goto LABEL_135;
        }

        if (v89 - 2 >= *v4)
        {
          goto LABEL_136;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        v95 = *v4 - v89;
        if (*v4 < v89)
        {
          goto LABEL_137;
        }

        v89 = *v4 - 1;
        memmove(v93, v93 + 2, 16 * v95);
        *v4 = v89;
        v88 = v90;
      }

LABEL_119:

      return;
    }

LABEL_144:
    v88 = sub_2546AC640(v4);
    goto LABEL_111;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v103 = v6;
      v108 = v8;
      v5 = *(*a3 + 16 * v7);
      v10 = *a3 + 16 * v9;
      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_2546A2DF4(&qword_27F60F6D0, &qword_2546B64B8);
      v11 = sub_2546B5504();
      v13 = v12;
      swift_getObjectType();
      if (v11 == sub_2546B5504() && v13 == v14)
      {
        v105 = 0;
      }

      else
      {
        v105 = sub_2546B5814();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v16 = v9 + 2;
      v97 = v9;
      v17 = v10 + 24;
      v100 = 16 * v9;
      v18 = 16 * v9 + 16;
      do
      {
        v19 = v16;
        v20 = v7;
        v4 = v18;
        if (v16 >= v103)
        {
          break;
        }

        v111 = v16;
        v5 = *(v17 - 8);
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v21 = sub_2546B5504();
        v23 = v22;
        swift_getObjectType();
        v25 = v21 == sub_2546B5504() && v23 == v24;
        v26 = v25 ? 0 : sub_2546B5814();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v27 = v105 ^ v26;
        v19 = v111;
        v16 = v111 + 1;
        v17 += 16;
        v7 = v20 + 1;
        v18 = v4 + 16;
      }

      while ((v27 & 1) == 0);
      if (v105)
      {
        v28 = v97;
        v8 = v108;
        if (v19 < v97)
        {
          goto LABEL_141;
        }

        if (v97 >= v19)
        {
          v7 = v19;
          v9 = v97;
          goto LABEL_31;
        }

        v29 = v100;
        do
        {
          if (v28 != v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_148;
            }

            v31 = *(v30 + v29);
            *(v30 + v29) = *(v30 + v4);
            *(v30 + v4) = v31;
          }

          ++v28;
          v4 -= 16;
          v29 += 16;
          v32 = v28 < v20--;
        }

        while (v32);
        v7 = v19;
      }

      else
      {
        v7 = v19;
        v8 = v108;
      }

      v9 = v97;
    }

LABEL_31:
    v33 = a3[1];
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_140;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_139;
    }

    v46 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v8 = v46;
    }

    else
    {
      sub_2546A87E0();
      v8 = v86;
    }

    v4 = v8[2];
    v47 = v4 + 1;
    if (v4 >= v8[3] >> 1)
    {
      sub_2546A87E0();
      v8 = v87;
    }

    v8[2] = v47;
    v48 = v8 + 4;
    v49 = &v8[2 * v4 + 4];
    *v49 = v9;
    v49[1] = v7;
    v112 = *result;
    if (!*result)
    {
      goto LABEL_149;
    }

    if (v4)
    {
      v110 = v8;
      while (1)
      {
        v5 = v47 - 1;
        v50 = &v48[2 * v47 - 2];
        v51 = &v8[2 * v47];
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v52 = v8[4];
          v53 = v8[5];
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_74:
          if (v55)
          {
            goto LABEL_126;
          }

          v67 = *v51;
          v66 = v51[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_129;
          }

          v71 = v50[1];
          v72 = v71 - *v50;
          if (__OFSUB__(v71, *v50))
          {
            goto LABEL_132;
          }

          if (__OFADD__(v69, v72))
          {
            goto LABEL_134;
          }

          if (v69 + v72 >= v54)
          {
            if (v54 < v72)
            {
              v5 = v47 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        if (v47 < 2)
        {
          goto LABEL_128;
        }

        v74 = *v51;
        v73 = v51[1];
        v62 = __OFSUB__(v73, v74);
        v69 = v73 - v74;
        v70 = v62;
LABEL_89:
        if (v70)
        {
          goto LABEL_131;
        }

        v76 = *v50;
        v75 = v50[1];
        v62 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v62)
        {
          goto LABEL_133;
        }

        if (v77 < v69)
        {
          v8 = v110;
          goto LABEL_103;
        }

LABEL_96:
        if (v5 - 1 >= v47)
        {
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
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*a3)
        {
          goto LABEL_146;
        }

        v4 = &v48[2 * v5 - 2];
        v81 = *v4;
        v82 = &v48[2 * v5];
        v83 = v82[1];
        sub_2546AC2E4((*a3 + 16 * *v4), (*a3 + 16 * *v82), (*a3 + 16 * v83), v112);
        if (v113)
        {
          goto LABEL_119;
        }

        if (v83 < v81)
        {
          goto LABEL_121;
        }

        v84 = v7;
        v85 = v110[2];
        if (v5 > v85)
        {
          goto LABEL_122;
        }

        *v4 = v81;
        *(v4 + 8) = v83;
        if (v5 >= v85)
        {
          goto LABEL_123;
        }

        v47 = v85 - 1;
        memmove(&v48[2 * v5], v82 + 2, 16 * (v85 - 1 - v5));
        v8 = v110;
        v110[2] = v85 - 1;
        v32 = v85 > 2;
        v7 = v84;
        if (!v32)
        {
          goto LABEL_103;
        }
      }

      v56 = &v48[2 * v47];
      v57 = *(v56 - 8);
      v58 = *(v56 - 7);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_124;
      }

      v61 = *(v56 - 6);
      v60 = *(v56 - 5);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_125;
      }

      v63 = v51[1];
      v64 = v63 - *v51;
      if (__OFSUB__(v63, *v51))
      {
        goto LABEL_127;
      }

      v62 = __OFADD__(v54, v64);
      v65 = v54 + v64;
      if (v62)
      {
        goto LABEL_130;
      }

      if (v65 >= v59)
      {
        v79 = *v50;
        v78 = v50[1];
        v62 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v62)
        {
          goto LABEL_138;
        }

        if (v54 < v80)
        {
          v5 = v47 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_74;
    }

LABEL_103:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_108;
    }
  }

  v34 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_142;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v9)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v7 == v34)
  {
    goto LABEL_53;
  }

  v109 = v8;
  v35 = *a3;
  v4 = *a3 + 16 * v7 - 16;
  v98 = v9;
  v36 = v9 - v7;
  v101 = v34;
LABEL_40:
  v104 = v4;
  v106 = v7;
  v102 = v36;
  v37 = v36;
  while (1)
  {
    v5 = *v4;
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_2546A2DF4(&qword_27F60F6D0, &qword_2546B64B8);
    v38 = sub_2546B5504();
    v40 = v39;
    swift_getObjectType();
    if (v38 == sub_2546B5504() && v40 == v41)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_51:
      v7 = v106 + 1;
      v4 = v104 + 16;
      v36 = v102 - 1;
      if (v106 + 1 == v101)
      {
        v7 = v101;
        v8 = v109;
        v9 = v98;
        goto LABEL_53;
      }

      goto LABEL_40;
    }

    v43 = sub_2546B5814();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if ((v43 & 1) == 0)
    {
      goto LABEL_51;
    }

    if (!v35)
    {
      break;
    }

    v44 = *v4;
    *v4 = *(v4 + 16);
    *(v4 + 16) = v44;
    v4 -= 16;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

uint64_t sub_2546AB6AC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2546AC640(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_2546ABB74((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_2546AB7D8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2546AC640(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_2546ABD38((*a3 + 48 * *v4), (*a3 + 48 * *v9), (*a3 + 48 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_2546AB910(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2546AC640(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_2546ABF2C((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_2546ABA48(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2546AC640(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_2546AC120((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_2546ABB74(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_2546B5814() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_2546B5814() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t sub_2546ABD38(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 48;
  v9 = (a3 - __dst) / 48;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[48 * v8] <= a4)
    {
      memmove(a4, __src, 48 * v8);
    }

    v11 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_2546B5814() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 48;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 48;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 48;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *v14;
    v16 = *(v14 + 2);
    *(v7 + 1) = *(v14 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[48 * v9] <= a4)
  {
    memmove(a4, __dst, 48 * v9);
  }

  v11 = &v4[48 * v9];
LABEL_29:
  v18 = v6 - 48;
  for (v5 -= 48; v11 > v4 && v6 > v7; v5 -= 48)
  {
    v20 = *(v11 - 6) == *(v6 - 6) && *(v11 - 5) == *(v6 - 5);
    if (!v20 && (sub_2546B5814() & 1) != 0)
    {
      v13 = v5 + 48 == v6;
      v6 -= 48;
      if (!v13)
      {
        v23 = *v18;
        v24 = *(v18 + 2);
        *(v5 + 1) = *(v18 + 1);
        *(v5 + 2) = v24;
        *v5 = v23;
        v6 = v18;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 48)
    {
      v21 = *(v11 - 3);
      v22 = *(v11 - 1);
      *(v5 + 1) = *(v11 - 2);
      *(v5 + 2) = v22;
      *v5 = v21;
    }

    v11 -= 48;
  }

LABEL_46:
  v25 = (v11 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v25])
  {
    memmove(v6, v4, 48 * v25);
  }

  return 1;
}

uint64_t sub_2546ABF2C(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 24;
  v9 = (a3 - __dst) / 24;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
    }

    v11 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_2546B5814() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 24;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v15;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v11 = &v4[24 * v9];
LABEL_29:
  v17 = v6 - 24;
  for (v5 -= 24; v11 > v4 && v6 > v7; v5 -= 24)
  {
    v19 = *(v11 - 3) == *(v6 - 3) && *(v11 - 2) == *(v6 - 2);
    if (!v19 && (sub_2546B5814() & 1) != 0)
    {
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v21;
        v6 = v17;
      }

      goto LABEL_29;
    }

    if (v11 != (v5 + 24))
    {
      v20 = *(v11 - 24);
      *(v5 + 16) = *(v11 - 1);
      *v5 = v20;
    }

    v11 -= 24;
  }

LABEL_46:
  v22 = (v11 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_2546AC120(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 32;
  v9 = (a3 - __dst) / 32;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[32 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
    }

    v11 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_2546B5814() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 32;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 32;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 32;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *(v14 + 1);
    *v7 = *v14;
    *(v7 + 1) = v15;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[32 * v9] <= a4)
  {
    memmove(a4, __dst, 32 * v9);
  }

  v11 = &v4[32 * v9];
LABEL_29:
  v17 = v6 - 32;
  for (v5 -= 32; v11 > v4 && v6 > v7; v5 -= 32)
  {
    v19 = *(v11 - 4) == *(v6 - 4) && *(v11 - 3) == *(v6 - 3);
    if (!v19 && (sub_2546B5814() & 1) != 0)
    {
      v13 = v5 + 32 == v6;
      v6 -= 32;
      if (!v13)
      {
        v21 = *(v17 + 1);
        *v5 = *v17;
        *(v5 + 1) = v21;
        v6 = v17;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 32)
    {
      v20 = *(v11 - 1);
      *v5 = *(v11 - 2);
      *(v5 + 1) = v20;
    }

    v11 -= 32;
  }

LABEL_46:
  v22 = (v11 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v22])
  {
    memmove(v6, v4, 32 * v22);
  }

  return 1;
}

uint64_t sub_2546AC2E4(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = (__dst - __src) / 16;
  v8 = (a3 - __dst) / 16;
  if (v7 < v8)
  {
    v9 = a4 == __src && &__src[16 * v7] > a4;
    v10 = __src;
    if (!v9)
    {
      memmove(a4, __src, 16 * v7);
    }

    v11 = &v4[16 * v7];
    v38 = v5;
    v36 = v11;
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v10;
        goto LABEL_47;
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_2546A2DF4(&qword_27F60F6D0, &qword_2546B64B8);
      v13 = sub_2546B5504();
      v15 = v14;
      swift_getObjectType();
      v17 = v13 == sub_2546B5504() && v15 == v16;
      if (v17)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = sub_2546B5814();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v18)
        {
          v19 = v6;
          v20 = v10 == v6;
          v6 += 16;
          goto LABEL_20;
        }
      }

      v19 = v4;
      v20 = v10 == v4;
      v4 += 16;
LABEL_20:
      v5 = v38;
      v11 = v36;
      if (!v20)
      {
        *v10 = *v19;
      }

      v10 += 16;
    }
  }

  if (a4 != __dst || &__dst[16 * v8] <= a4)
  {
    memmove(a4, __dst, 16 * v8);
  }

  v11 = &v4[16 * v8];
  v22 = __src;
  v34 = v4;
LABEL_29:
  v23 = v6 - 16;
  while (1)
  {
    v5 -= 16;
    if (v11 <= v4 || v6 <= v22)
    {
      break;
    }

    v37 = v11;
    v11 -= 16;
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_2546A2DF4(&qword_27F60F6D0, &qword_2546B64B8);
    v25 = sub_2546B5504();
    v27 = v26;
    swift_getObjectType();
    if (v25 == sub_2546B5504() && v27 == v28)
    {
      v30 = 0;
    }

    else
    {
      v30 = sub_2546B5814();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v4 = v34;
    v22 = __src;
    if (v30)
    {
      v17 = v5 + 16 == v6;
      v6 -= 16;
      v11 = v37;
      if (!v17)
      {
        *v5 = *v23;
        v6 = v23;
      }

      goto LABEL_29;
    }

    if (v37 != v5 + 16)
    {
      *v5 = *v11;
    }
  }

LABEL_47:
  v31 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v31])
  {
    memmove(v6, v4, 16 * v31);
  }

  return 1;
}

char *sub_2546AC654(char *result, int64_t a2, char a3, char *a4)
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
    sub_2546A2DF4(&qword_27F60F728, &qword_2546B64E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_2546AC754(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2546AC8B0()
{
  result = qword_27F60F6E8;
  if (!qword_27F60F6E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F60F6E8);
  }

  return result;
}

void *sub_2546AC8F4(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v26 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v16 << 6);
      v19 = (*(a4 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = *(a4 + 56) + 32 * v18;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      *v11 = v21;
      *(v11 + 8) = v20;
      *(v11 + 16) = v23;
      *(v11 + 24) = v24;
      *(v11 + 32) = v25;
      if (v15 == v10)
      {
        break;
      }

      v11 += 48;

      result = swift_unknownObjectRetain();
      v12 = v15;
      v13 = v16;
    }

    swift_unknownObjectRetain();
    v13 = v16;
LABEL_19:
    v7 = v26;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_2546ACA9C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v21 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9)) | (v16 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v15 == v10)
      {
        break;
      }

      v11 += 3;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v21;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_2546ACC1C(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = (v15 << 10) | (16 * v16);
      v18 = (*(a4 + 48) + v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + v17);
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v20;
      if (v14 == v10)
      {

        swift_unknownObjectRetain();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 32;

      result = swift_unknownObjectRetain();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}