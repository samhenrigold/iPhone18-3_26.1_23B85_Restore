unint64_t sub_2455E6344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15278, &unk_2455F1DE8);
    v3 = sub_2455E9FC0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2455AB718(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2455E64A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F78, &qword_2455EB418);
    v3 = sub_2455E9FC0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_2455AB718(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2455E65A8()
{
  result = qword_27EE15138;
  if (!qword_27EE15138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15138);
  }

  return result;
}

uint64_t sub_2455E661C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2455E6684(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[5];
  v24[4] = a1[4];
  v24[5] = v3;
  v25[0] = a1[6];
  *(v25 + 9) = *(a1 + 105);
  v4 = a1[1];
  v24[0] = *a1;
  v24[1] = v4;
  v5 = a1[3];
  v24[2] = a1[2];
  v24[3] = v5;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[3];
  v26[2] = v2[2];
  v26[3] = v8;
  v26[0] = v6;
  v26[1] = v7;
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2[6];
  *(v27 + 9) = *(v2 + 105);
  v26[5] = v10;
  v27[0] = v11;
  v26[4] = v9;
  v12 = v2[5];
  v21 = v2[4];
  v22 = v12;
  v23[0] = v2[6];
  *(v23 + 9) = *(v2 + 105);
  v13 = v2[1];
  v17 = *v2;
  v18 = v13;
  v14 = v2[3];
  v19 = v2[2];
  v20 = v14;
  sub_2455A5D68(v26, v28);
  v15 = static HIDElement.== infix(_:_:)(v24, &v17);
  v28[4] = v21;
  v28[5] = v22;
  v29[0] = v23[0];
  *(v29 + 9) = *(v23 + 9);
  v28[0] = v17;
  v28[1] = v18;
  v28[2] = v19;
  v28[3] = v20;
  sub_2455A5DA0(v28);
  return v15 & 1;
}

uint64_t sub_2455E6788(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2455E67E8()
{
  result = qword_27EE15160;
  if (!qword_27EE15160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE15160);
  }

  return result;
}

uint64_t sub_2455E6848(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2455E68DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 56);
  v7 = *(v1 + 57);
  v21 = *(v1 + 59);
  v22 = *(v1 + 58);
  report = *(v1 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15180, &qword_2455F1668);
  v9 = (*(*(v8 - 8) + 24))(v3, a1, v8);
  *v4 = (*(*v5 + 832))(v9);
  v10 = 0.0;
  if ((v6 & 1) == 0)
  {
    v11 = sub_2455EA100() * 1000.0;
    sub_2455EA100();
    v10 = v11 + v12 / 1000000.0;
  }

  v13 = v5[37];
  LOBYTE(v24) = v7;
  v14 = sub_2455A72A4(&v24);
  if (v21)
  {
    v15 = 0;
  }

  else
  {
    v15 = v22;
  }

  ReportWithCallback = IOHIDDeviceGetReportWithCallback(v13, v14, v15, report, v4, v10, sub_2455D88A4, v3);
  result = sub_2455D016C(ReportWithCallback, &v24);
  if ((v24 & 0x10000000000) == 0)
  {
    v18 = v24 | (BYTE4(v24) << 32);
    sub_2455ACA40();
    v19 = swift_allocError();
    *v20 = v18;
    *(v20 + 4) = BYTE4(v18) & 1;
    v24 = v19;
    return sub_2455E9C30();
  }

  return result;
}

unint64_t sub_2455E6B10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15270, &qword_2455F1D68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15258, &qword_2455F1D50);
    v7 = sub_2455E9FC0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2455ACBA0(v9, v5, &qword_27EE15270, &qword_2455F1D68);
      result = sub_2455E347C(v5, HIDDeviceClient.ProvideElementUpdate.hash(into:), sub_2455E39CC);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for HIDDeviceClient.ProvideElementUpdate(0);
      result = sub_2455E6F48(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for HIDDeviceClient.ProvideElementUpdate);
      v16 = v7[7] + 16 * v13;
      v17 = v8[8];
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2455E6D2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15268, &qword_2455F1D60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15260, &qword_2455F1D58);
    v7 = sub_2455E9FC0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2455ACBA0(v9, v5, &qword_27EE15268, &qword_2455F1D60);
      result = sub_2455E347C(v5, HIDDeviceClient.RequestElementUpdate.hash(into:), sub_2455E3D58);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for HIDDeviceClient.RequestElementUpdate(0);
      result = sub_2455E6F48(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for HIDDeviceClient.RequestElementUpdate);
      v16 = v7[7] + 16 * v13;
      v17 = v8[8];
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2455E6F48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_2455E6FB0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

id sub_2455E6FBC(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_2455E6FC8(uint64_t a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 5);
  v6 = v1[6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A8, &qword_2455F1690);
  (*(*(v7 - 8) + 24))(v3, a1, v7);
  v8 = *(v4 + 296);
  type metadata accessor for IOHIDElement();
  v9 = sub_2455E9BD0();
  v10 = IOHIDDeviceCopyValueMultipleWithCallback(v8, v9, v5, v6, sub_2455E2D90, v3);

  result = sub_2455D016C(v10, &v14);
  if ((v16 & 1) == 0)
  {
    v12 = v14 | (v15 << 32);
    sub_2455ACA40();
    swift_allocError();
    *v13 = v12;
    *(v13 + 4) = BYTE4(v12) & 1;
    return sub_2455E9C30();
  }

  return result;
}

void sub_2455E7110(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_2455E711C(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_2455E7128(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_2455E7134(uint64_t a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = v1[5];
  v7 = *(v1 + 6);
  v6 = *(v1 + 7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F28, &qword_2455EB010);
  (*(*(v8 - 8) + 24))(v3, a1, v8);
  v9 = *(v4 + 296);
  type metadata accessor for IOHIDElement();
  type metadata accessor for IOHIDValue(0);
  sub_2455E6848(&qword_27EE14EA8, 255, type metadata accessor for IOHIDElement, &unk_2455F1CB0);

  v10 = sub_2455E9AD0();

  v11 = IOHIDDeviceSetValueMultipleWithCallback(v9, v10, v5, sub_2455E2D78, v3);

  sub_2455D016C(v11, &v16);
  if (BYTE5(v16) == 1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v7;
    *v7 = 0x8000000000000000;
    sub_2455E5648(0, 0, v6, isUniquelyReferenced_nonNull_native);
    *v7 = v16;
  }

  else
  {
    v13 = v16 | (BYTE4(v16) << 32);
    sub_2455ACA40();
    v14 = swift_allocError();
    *v15 = v13;
    *(v15 + 4) = BYTE4(v13) & 1;
    v16 = v14;
    sub_2455E9C30();
  }
}

unint64_t sub_2455E732C()
{
  result = qword_27EE151C8;
  if (!qword_27EE151C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE151C8);
  }

  return result;
}

uint64_t sub_2455E7380(uint64_t a1)
{
  result = sub_2455E6848(&qword_27EE151D0, 255, type metadata accessor for HIDDeviceClient.ProvideElementUpdate, &protocol conformance descriptor for HIDDeviceClient.ProvideElementUpdate);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2455E7428(uint64_t a1)
{
  result = sub_2455E6848(&qword_27EE151E0, 255, type metadata accessor for HIDDeviceClient.RequestElementUpdate, &protocol conformance descriptor for HIDDeviceClient.RequestElementUpdate);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of HIDDeviceClient.dispatchSetReportRequest(type:id:data:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v18 = (*(*v7 + 896) + **(*v7 + 896));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_2455ABFC8;

  return v18(a1, a2, a3, a4, a5, a6, a7 & 1);
}

uint64_t dispatch thunk of HIDDeviceClient.dispatchGetReportRequest(type:id:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14 = (*(*v5 + 904) + **(*v5 + 904));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2455AC578;

  return v14(a1, a2, a3, a4, a5 & 1);
}

uint64_t dispatch thunk of HIDDeviceClient.updateElements(_:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14 = (*(*v5 + 912) + **(*v5 + 912));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2455ABFC8;

  return v14(a1, a2, a3, a4, a5 & 1);
}

uint64_t getEnumTagSinglePayload for HIDDeviceClient.DeviceReference(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HIDDeviceClient.DeviceReference(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_2455E7D8C(uint64_t a1)
{
  sub_2455E7E00(319);
  if (v1 <= 0x3F)
  {
    sub_2455E7E88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2455E7E00(uint64_t a1)
{
  if (!qword_27EE151F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE15200, &qword_2455F1AA0);
    sub_2455E9E90();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27EE151F8);
    }
  }
}

void sub_2455E7E88()
{
  if (!qword_27EE15208)
  {
    sub_2455E7ED0(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27EE15208);
    }
  }
}

void sub_2455E7ED0(uint64_t a1)
{
  if (!qword_27EE15210)
  {
    type metadata accessor for HIDElement.Value(255);
    v1 = sub_2455E9C00();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE15210);
    }
  }
}

uint64_t sub_2455E7F50(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2455E7F88(uint64_t a1)
{
  sub_2455E8028(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2455E8028(uint64_t a1)
{
  if (!qword_27EE15218)
  {
    type metadata accessor for HIDDeviceClient.Notification(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE14FD0, &qword_2455F1620);
    v1 = sub_2455E9CA0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE15218);
    }
  }
}

void sub_2455E80E4(uint64_t a1)
{
  sub_2455E9E90();
  if (v1 <= 0x3F)
  {
    sub_2455E7ED0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2455E9E90();
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2455E9E90();
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

void sub_2455E8304(uint64_t a1)
{
  sub_2455E9E90();
  if (v1 <= 0x3F)
  {
    sub_2455E8494(319, &qword_27EE15220, &type metadata for HIDElement, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2455E83B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2455E83FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2455E8494(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2455E8614(uint64_t a1, int a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F70, &qword_2455F1D70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  if (a3 && (a2 | 0x10) == 0xE0000110 && (a3 & 1) != 0)
  {
    if (a1)
    {
      type metadata accessor for HIDDeviceClient.Context();
      v9 = swift_allocObject();
      *(v9 + 16) = a1;
      v10 = dispatch_semaphore_create(0);
      v11 = sub_2455E9C60();
      (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = v9;
      *(v12 + 40) = a2;
      *(v12 + 44) = -536870656;
      *(v12 + 48) = v10;

      v13 = v10;
      sub_2455A989C(0, 0, v8, &unk_2455F1DE0, v12);

      sub_2455E9CE0();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2455E87A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F70, &qword_2455F1D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  if (a1)
  {
    type metadata accessor for HIDDeviceClient.Context();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = dispatch_semaphore_create(0);
    v7 = sub_2455E9C60();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v5;
    v8[5] = v6;

    v9 = v6;
    sub_2455A989C(0, 0, v4, &unk_2455F1DD0, v8);

    sub_2455E9CE0();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2455E88F4(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_2455ACD88(a1, &a1[a2]);
  }

  sub_2455E9960();
  swift_allocObject();
  sub_2455E9900();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_2455E99E0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

void sub_2455E89A4(uint64_t a1, int a2, _BYTE *a3, unint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F70, &qword_2455F1D70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  if (a1)
  {
    type metadata accessor for HIDDeviceClient.Context();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    v14 = dispatch_semaphore_create(0);
    v15 = sub_2455E88F4(a3, a4);
    v17 = v16;
    v18 = sub_2455E9C60();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = v13;
    *(v19 + 40) = a2;
    *(v19 + 48) = v15;
    *(v19 + 56) = v17;
    *(v19 + 64) = a5;
    *(v19 + 72) = v14;

    sub_2455A5EE0(v15, v17);
    v20 = v14;
    sub_2455A989C(0, 0, v12, &unk_2455F1DA8, v19);

    sub_2455E9CE0();
    sub_2455A5F34(v15, v17);
  }

  else
  {
    __break(1u);
  }
}

void sub_2455E8B50(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F70, &qword_2455F1D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    type metadata accessor for HIDDeviceClient.Context();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = dispatch_semaphore_create(0);
    v17 = a2;
    type metadata accessor for IOHIDValue(0);
    v10 = v9;
    v11 = a2;
    sub_2455D06E8(&v17, v10, &v18);
    v12 = v18;
    v13 = sub_2455E9C60();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v7;
    v14[5] = v12;
    v14[6] = v8;

    v15 = v12;
    v16 = v8;
    sub_2455A989C(0, 0, v6, &unk_2455F1DB8, v14);

    sub_2455E9CE0();
  }

  else
  {
    __break(1u);
  }
}

void sub_2455E8CE8(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE15180, &qword_2455F1668);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  if (a1)
  {
    (*(v9 + 16))(v12, a1, v8, v10);
    sub_2455D016C(a2, v17);
    if (BYTE5(v17[0]) == 1)
    {
      v17[0] = sub_2455E88F4(a3, a4);
      v17[1] = v13;
      sub_2455E9C40();
    }

    else
    {
      v14 = LODWORD(v17[0]) | (BYTE4(v17[0]) << 32);
      sub_2455ACA40();
      v15 = swift_allocError();
      *v16 = v14;
      *(v16 + 4) = BYTE4(v14) & 1;
      v17[0] = v15;
      sub_2455E9C30();
    }

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_2455E8E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F28, &qword_2455EB010);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  if (a1)
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    sub_2455D016C(a2, &v13);
    if (v15 == 1)
    {
      sub_2455E9C40();
    }

    else
    {
      v9 = v13 | (v14 << 32);
      sub_2455ACA40();
      v10 = swift_allocError();
      *v11 = v9;
      *(v11 + 4) = BYTE4(v9) & 1;
      v12 = v10;
      sub_2455E9C30();
    }

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_2455E8FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE151A8, &qword_2455F1690);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  if (a1)
  {
    (*(v6 + 16))(v9, a1, v5, v7);
    sub_2455D016C(a2, &v14);
    if (BYTE5(v14) != 1)
    {
      v10 = v14 | (BYTE4(v14) << 32);
      sub_2455ACA40();
      v11 = swift_allocError();
      *v12 = v10;
      *(v12 + 4) = BYTE4(v10) & 1;
      v14 = v11;
      sub_2455E9C30();
      goto LABEL_6;
    }

    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    v14 = 0;
    type metadata accessor for IOHIDElement();
    type metadata accessor for IOHIDValue(0);
    sub_2455E6848(&qword_27EE14EA8, 255, type metadata accessor for IOHIDElement, &unk_2455F1CB0);
    sub_2455E9AE0();
    if (v14)
    {
      sub_2455E9C40();
LABEL_6:
      (*(v6 + 8))(v9, v5);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2455E91E4(const uint8_t *a1)
{
  v3 = *(v1 + 25);
  v4 = *(v1 + 26);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(*(v1 + 16) + 296);
  LOBYTE(v20) = *(v1 + 24);
  result = sub_2455A72A4(&v20);
  if (!a1)
  {
    goto LABEL_19;
  }

  v11 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v11 != 2)
    {
      v12 = 0;
      goto LABEL_12;
    }

    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (v11)
  {
LABEL_9:
    if (!__OFSUB__(HIDWORD(v5), v5))
    {
      v12 = HIDWORD(v5) - v5;
      goto LABEL_12;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v12 = BYTE6(v6);
LABEL_12:
  if (v4)
  {
    v15 = 0;
  }

  else
  {
    v15 = v3;
  }

  v16 = IOHIDDeviceSetReportWithCallback(v9, result, v15, a1, v12, v7, sub_2455D8200, v8);
  result = sub_2455D016C(v16, &v20);
  if ((v20 & 0x10000000000) == 0)
  {
    v17 = v20 | (BYTE4(v20) << 32);
    sub_2455ACA40();
    v18 = swift_allocError();
    *v19 = v17;
    *(v19 + 4) = BYTE4(v17) & 1;
    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE14F28, &qword_2455EB010);
    return sub_2455E9C30();
  }

  return result;
}

uint64_t sub_2455E9354()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2455E939C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2455E93E4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2455AD2F4;

  return sub_2455D7660(v4, v5, v6, v2, v3);
}

uint64_t sub_2455E947C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2455E94B4()
{
  swift_unknownObjectRelease();

  sub_2455A5F34(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2455E9504()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2455AD2F4;

  return sub_2455D492C(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_2455E95CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2455E961C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2455AD2F4;

  return sub_2455D4C0C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_2455E96C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2455E970C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2455AD2F4;

  return sub_2455D46D8(v4, v5, v6, v2, v3);
}

uint64_t sub_2455E97A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2455E97EC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 44);
  v5 = *(v0 + 48);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2455AD2F4;

  return sub_2455D44E4(v6, v7, v8, v2, v3, v4, v5);
}