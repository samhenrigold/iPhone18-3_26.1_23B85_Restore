uint64_t dispatch thunk of CentralManagerProtocol.await(state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 96) + **(a3 + 96));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CentralManagerProtocol.await(states:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 104) + **(a3 + 104));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CentralManagerProtocol.scanForPeripherals(scanMode:garbageCollectInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 112) + **(a6 + 112));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_24AC20274;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of CentralManagerProtocol.retrievePeripheral(macAddress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 120) + **(a3 + 120));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC2BA00;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CentralManagerProtocol.retrievePeripherals(serialNumbers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 128) + **(a3 + 128));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC2BA00;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CentralManagerProtocol.retrievePeripherals(beaconIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 136) + **(a3 + 136));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC2BA00;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CentralManagerProtocol.retrievePeripherals(identifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 144) + **(a3 + 144));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC2BA00;

  return v9(a1, a2, a3);
}

uint64_t sub_24AC7E90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24AC7E974(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24AC7E9BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24AC7EA24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AC7EA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24AC2B5DC(a3, v25 - v10, &qword_27EF9DF00, &qword_24ACD3BC8);
  v12 = sub_24ACD07C0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AC212F4(v11, &qword_27EF9DF00, &qword_24ACD3BC8);
  }

  else
  {
    sub_24ACD07B0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24ACD0740();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24ACD05C0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24AC212F4(a3, &qword_27EF9DF00, &qword_24ACD3BC8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AC212F4(a3, &qword_27EF9DF00, &qword_24ACD3BC8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24AC7ED6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24AC2B5DC(a3, v25 - v10, &qword_27EF9DF00, &qword_24ACD3BC8);
  v12 = sub_24ACD07C0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AC212F4(v11, &qword_27EF9DF00, &qword_24ACD3BC8);
  }

  else
  {
    sub_24ACD07B0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24ACD0740();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24ACD05C0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E680, &qword_24ACD5CB8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_24AC212F4(a3, &qword_27EF9DF00, &qword_24ACD3BC8);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AC212F4(a3, &qword_27EF9DF00, &qword_24ACD3BC8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E680, &qword_24ACD5CB8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24AC7F080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24AC2B5DC(a3, v22 - v9, &qword_27EF9DF00, &qword_24ACD3BC8);
  v11 = sub_24ACD07C0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24AC212F4(v10, &qword_27EF9DF00, &qword_24ACD3BC8);
  }

  else
  {
    sub_24ACD07B0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24ACD0740();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24ACD05C0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24AC212F4(a3, &qword_27EF9DF00, &qword_24ACD3BC8);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AC212F4(a3, &qword_27EF9DF00, &qword_24ACD3BC8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24AC7F32C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_24AC633D4(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_24ACD0420();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_24AC2ABC8(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_24AC5E3F0();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_24ACD0420();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_24AC9DAD8(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_24ACD0420();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_24AC7F518(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
    result = (*(*(v10 - 8) + 8))(a2, v10);
    *v4 = v24;
  }

  else
  {
    v13 = sub_24AC2AC60(a2);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      v25 = *v5;
      if (!v16)
      {
        a4();
        v17 = v25;
      }

      v18 = *(v17 + 48);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
      v20 = *(v19 - 8);
      v21 = *(v20 + 8);
      v21(v18 + *(v20 + 72) * v15, v19);

      sub_24AC9DDF8(v15, v17);
      result = (v21)(a2, v19);
      *v5 = v17;
    }

    else
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_24AC7F70C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6E8, &qword_24ACD9140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_24AC212F4(a1, &qword_27EF9E6E8, &qword_24ACD9140);
    sub_24AC9D920(a2, v7);
    v12 = sub_24ACD0420();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_24AC212F4(v7, &qword_27EF9E6E8, &qword_24ACD9140);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_24AC63BDC(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_24ACD0420();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_24AC7F940(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_24AC63DEC(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_24AC2AC60(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_24AC5F240();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_24AC9DDF8(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

int *sub_24AC7FB24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v53 - v6;
  v8 = sub_24ACD0090();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v13 = [result retrievePairingInfoForPeripheral_];
  v14 = sub_24ACD0500();

  v15 = sub_24AC924B8(v14);

  if (!v15)
  {
    if (qword_2814AD278 != -1)
    {
      swift_once();
    }

    v43 = sub_24ACD0490();
    __swift_project_value_buffer(v43, qword_2814AD280);
    v44 = sub_24ACD0470();
    v45 = sub_24ACD0910();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_29;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v61[0] = v47;
    *v46 = 136446210;
    *(v46 + 4) = sub_24AC29E20(0xD000000000000017, 0x800000024ACDA6E0, v61);
    v48 = "%{public}s Missing pairing info!";
    goto LABEL_28;
  }

  v57 = v11;
  if (qword_2814AD278 != -1)
  {
    swift_once();
  }

  v16 = sub_24ACD0490();
  v17 = __swift_project_value_buffer(v16, qword_2814AD280);

  v61[5] = v17;
  v18 = sub_24ACD0470();
  v19 = sub_24ACD0900();

  v20 = os_log_type_enabled(v18, v19);
  v58 = v9;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v61[0] = v55;
    *v21 = 136315138;
    v22 = sub_24ACD0510();
    v56 = v8;
    v24 = v7;
    v25 = sub_24AC29E20(v22, v23, v61);
    v8 = v56;

    *(v21 + 4) = v25;
    v7 = v24;
    _os_log_impl(&dword_24AC18000, v18, v19, "Pairing info: %s", v21, 0xCu);
    v26 = v55;
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x24C22DC60](v26, -1, -1);
    MEMORY[0x24C22DC60](v21, -1, -1);
  }

  if (!*(v15 + 16))
  {
    goto LABEL_25;
  }

  v27 = sub_24AC2AB50(0xD000000000000016, 0x800000024ACDA700);
  if ((v28 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_24AC2B940(*(v15 + 56) + 32 * v27, v61);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v30 = v59;
  v29 = v60;
  if (!*(v15 + 16))
  {
    goto LABEL_24;
  }

  v31 = sub_24AC2AB50(0xD00000000000001ALL, 0x800000024ACDA720);
  if ((v32 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_24AC2B940(*(v15 + 56) + 32 * v31, v61);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_31;
  }

  if (!*(v15 + 16) || (v56 = v59, v33 = sub_24AC2AB50(0xD000000000000012, 0x800000024ACDA740), (v34 & 1) == 0))
  {
LABEL_24:
    sub_24AC46698(v30, v29);
LABEL_25:

LABEL_26:
    v44 = sub_24ACD0470();
    v45 = sub_24ACD0910();
    if (!os_log_type_enabled(v44, v45))
    {
LABEL_29:

      type metadata accessor for CentralManager.Error(0);
      sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v61[0] = v47;
    *v46 = 136446210;
    *(v46 + 4) = sub_24AC29E20(0xD000000000000017, 0x800000024ACDA6E0, v61);
    v48 = "%{public}s Invalid pairing info!";
LABEL_28:
    _os_log_impl(&dword_24AC18000, v44, v45, v48, v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x24C22DC60](v47, -1, -1);
    MEMORY[0x24C22DC60](v46, -1, -1);
    goto LABEL_29;
  }

  sub_24AC2B940(*(v15 + 56) + 32 * v33, v61);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    sub_24AC46698(v30, v29);
    goto LABEL_26;
  }

  v54 = v60;
  v55 = v59;
  v35 = v29;
  sub_24AC46630(v30, v29);
  sub_24ACD0070();
  v36 = v58;
  if ((*(v58 + 48))(v7, 1, v8) == 1)
  {
    v37 = v54;
    sub_24AC212F4(v7, &qword_27EF9E048, &qword_24ACD5910);
    v38 = sub_24ACD0470();
    v39 = sub_24ACD0910();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61[0] = v41;
      *v40 = 136446210;
      *(v40 + 4) = sub_24AC29E20(0xD000000000000017, 0x800000024ACDA6E0, v61);
      _os_log_impl(&dword_24AC18000, v38, v39, "%{public}s Invalid remote address!", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      v35 = v29;
      MEMORY[0x24C22DC60](v41, -1, -1);
      MEMORY[0x24C22DC60](v40, -1, -1);
    }

    v42 = v55;
    type metadata accessor for CentralManager.Error(0);
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_24AC46698(v42, v37);
    return sub_24AC46698(v30, v35);
  }

  else
  {
    sub_24AC46698(v30, v29);
    v49 = *(v36 + 32);
    v50 = v57;
    v49(v57, v7, v8);
    v49(a2, v50, v8);
    result = type metadata accessor for PeripheralPairingInfo(0);
    v51 = &a2[result[5]];
    v52 = v54;
    *v51 = v55;
    *(v51 + 1) = v52;
  }

  return result;
}

uint64_t sub_24AC803C8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_24AC803F0, a1, 0);
}

uint64_t sub_24AC803F0()
{
  v1 = *(v0 + 56);
  *(v0 + 64) = swift_weakLoadStrong();

  return MEMORY[0x2822009F8](sub_24AC80470, v1, 0);
}

uint64_t sub_24AC80470()
{
  v28 = v0;
  v1 = v0[8];
  if (!v1)
  {
    goto LABEL_4;
  }

  if (v1 != v0[7])
  {

LABEL_4:
    type metadata accessor for CentralManager.Error(0);
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v2 = v0[1];
    goto LABEL_14;
  }

  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v3 = v0[6];
  v4 = sub_24ACD0490();
  __swift_project_value_buffer(v4, qword_2814AD8C0);

  v5 = sub_24ACD0470();
  v6 = sub_24ACD0930();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27[0] = v9;
    *v8 = 136446466;
    v10 = sub_24AC39074();
    v12 = sub_24AC29E20(v10, v11, v27);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v0[2] = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E168, &unk_24ACD45F0);
    v13 = sub_24ACD05A0();
    v15 = sub_24AC29E20(v13, v14, v27);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_24AC18000, v5, v6, "CentralManger.connect() for %{public}s options: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v9, -1, -1);
    MEMORY[0x24C22DC60](v8, -1, -1);
  }

  v16 = v0[7];
  v17 = v0[5];
  v18 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id;
  v19 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27[0] = *(v16 + v19);
  *(v16 + v19) = 0x8000000000000000;
  sub_24AC635A0(v17, v17 + v18, isUniquelyReferenced_nonNull_native);
  *(v16 + v19) = v27[0];
  result = swift_endAccess();
  v22 = *(v16 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
  if (!v22)
  {
    __break(1u);
    return result;
  }

  v23 = v0[6];
  v24 = *(v0[5] + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  v25 = v22;
  if (v23)
  {
    sub_24AC82C24(v3);
    v26 = sub_24ACD04F0();
  }

  else
  {
    v26 = 0;
  }

  [v25 connectPeripheral:v24 options:v26];

  v2 = v0[1];
LABEL_14:

  return v2();
}

uint64_t sub_24AC80820(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_24AC80848, a1, 0);
}

uint64_t sub_24AC80848()
{
  v1 = *(v0 + 64);
  *(v0 + 72) = swift_weakLoadStrong();

  return MEMORY[0x2822009F8](sub_24AC808C8, v1, 0);
}

void sub_24AC808C8()
{
  v27 = v0;
  v1 = v0[9];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v0[8];
  if (v1 != v2)
  {

LABEL_4:
    type metadata accessor for CentralManager.Error(0);
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_5:
    v3 = v0[1];
    goto LABEL_6;
  }

  v4 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  swift_beginAccess();
  if (!*(*(v2 + v4) + 16) || (v5 = v0[6], v6 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id, , sub_24AC2AC60(v5 + v6), LOBYTE(v5) = v7, , (v5 & 1) == 0))
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_5;
  }

  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v8 = v0[7];
  v9 = sub_24ACD0490();
  __swift_project_value_buffer(v9, qword_2814AD8C0);

  v10 = sub_24ACD0470();
  v11 = sub_24ACD0930();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[7];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v13 = 136446466;
    v15 = sub_24AC39074();
    v17 = sub_24AC29E20(v15, v16, v26);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v0[5] = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E168, &unk_24ACD45F0);
    v18 = sub_24ACD05A0();
    v20 = sub_24AC29E20(v18, v19, v26);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_24AC18000, v10, v11, "Calling cancelConnection() for %{public}s options: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v14, -1, -1);
    MEMORY[0x24C22DC60](v13, -1, -1);
  }

  v21 = *(v0[8] + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
  if (!v21)
  {
    __break(1u);
    return;
  }

  v22 = v0[7];
  v23 = *(v0[6] + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  v24 = v21;
  if (v22)
  {
    sub_24AC82EB0(v8);
    v25 = sub_24ACD04F0();
  }

  else
  {
    v25 = 0;
  }

  [v24 cancelPeripheralConnection:v23 options:v25];

  v3 = v0[1];
LABEL_6:

  v3();
}

uint64_t sub_24AC80CDC()
{
  v1[8] = v0;
  v1[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC80D7C, v0, 0);
}

uint64_t sub_24AC80D7C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  sub_24ACD0A20();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  *(v0 + 56) = v2;
  v3 = type metadata accessor for Peripheral(0);
  v4 = sub_24AC9FA1C(&qword_2814AE1A0, type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v5 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v5);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v6 = MEMORY[0x24C22D370](v3, v4);
  MEMORY[0x24C22CD50](v6);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24AC2B6A8(&qword_27EF9E108, &qword_27EF9E040, qword_24ACD4100, MEMORY[0x277D088C8]);
  v7 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](0x203D2043414D202CLL, 0xE800000000000000);
  v8 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress;
  swift_beginAccess();
  sub_24AC2B5DC(v2 + v8, v1, &qword_27EF9E048, &qword_24ACD5910);
  v9 = sub_24ACD05A0();
  MEMORY[0x24C22CD50](v9);

  MEMORY[0x24C22CD50](0x206574617473202CLL, 0xEA0000000000203DLL);
  v10 = [*(v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) state];
  if (v10 < 4)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 0;
  }

  *(v0 + 88) = v11;
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);

  v14 = *(v0 + 8);

  return v14(v12, v13);
}

uint64_t sub_24AC8106C()
{
  v1[11] = v0;
  v1[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC8110C, v0, 0);
}

uint64_t sub_24AC8110C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  sub_24ACD0A20();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  *(v0 + 80) = v2;
  v3 = type metadata accessor for MockPeripheral(0);
  v4 = sub_24AC9FA1C(&qword_27EF9E100, type metadata accessor for MockPeripheral, &protocol conformance descriptor for MockPeripheral);
  v5 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v5);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v6 = MEMORY[0x24C22D370](v3, v4);
  MEMORY[0x24C22CD50](v6);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24AC2B6A8(&qword_27EF9E108, &qword_27EF9E040, qword_24ACD4100, MEMORY[0x277D088C8]);
  v7 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](0x203D2043414D202CLL, 0xE800000000000000);
  v8 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_macAddress;
  swift_beginAccess();
  sub_24AC2B5DC(v2 + v8, v1, &qword_27EF9E048, &qword_24ACD5910);
  v9 = sub_24ACD05A0();
  MEMORY[0x24C22CD50](v9);

  MEMORY[0x24C22CD50](0x206574617473202CLL, 0xEA0000000000203DLL);
  v10 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *(v0 + 112) = *(v2 + v10);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);

  v13 = *(v0 + 8);

  return v13(v11, v12);
}

uint64_t sub_24AC813FC()
{
  if (*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_isPairingCentralManager) == 1)
  {
    sub_24ACD0A20();

    v1 = type metadata accessor for MockCentralManager(0);
    v2 = sub_24AC9FA1C(&qword_27EF9E6E0, type metadata accessor for MockCentralManager, &protocol conformance descriptor for MockCentralManager);
    v3 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v3);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v4 = MEMORY[0x24C22D370](v1, v2);
    MEMORY[0x24C22CD50](v4);

    v5 = 0x800000024ACDA2D0;
    v6 = 0xD00000000000001DLL;
  }

  else
  {
    sub_24ACD0A20();

    v7 = type metadata accessor for MockCentralManager(0);
    v8 = sub_24AC9FA1C(&qword_27EF9E6E0, type metadata accessor for MockCentralManager, &protocol conformance descriptor for MockCentralManager);
    v9 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v9);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v10 = MEMORY[0x24C22D370](v7, v8);
    MEMORY[0x24C22CD50](v10);

    v6 = 0x69746E656469202CLL;
    v5 = 0xEF203D2072656966;
  }

  MEMORY[0x24C22CD50](v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  sub_24AC2B6A8(&qword_2814AE258, &qword_27EF9E120, &qword_24ACD4550, MEMORY[0x277D088C8]);
  v11 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v11);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AC816B0()
{
  if (*(v0 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_isPairingCentralManager) == 1)
  {
    sub_24ACD0A20();

    v1 = type metadata accessor for CentralManager(0);
    v2 = sub_24AC9FA1C(&qword_2814AD858, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
    v3 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v3);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v4 = MEMORY[0x24C22D370](v1, v2);
    MEMORY[0x24C22CD50](v4);

    v5 = 0x800000024ACDA2D0;
    v6 = 0xD00000000000001DLL;
  }

  else
  {
    sub_24ACD0A20();

    v7 = type metadata accessor for CentralManager(0);
    v8 = sub_24AC9FA1C(&qword_2814AD858, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
    v9 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v9);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v10 = MEMORY[0x24C22D370](v7, v8);
    MEMORY[0x24C22CD50](v10);

    v6 = 0x69746E656469202CLL;
    v5 = 0xEF203D2072656966;
  }

  MEMORY[0x24C22CD50](v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  sub_24AC2B6A8(&qword_2814AE258, &qword_27EF9E120, &qword_24ACD4550, MEMORY[0x277D088C8]);
  v11 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v11);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AC8195C()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_2814AD8C0);
  v1 = __swift_project_value_buffer(v0, qword_2814AD8C0);
  if (qword_2814AD278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814AD280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AC81A24()
{
  type metadata accessor for PairingManagerAccessController();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = swift_weakInit();
  qword_27EF9E518 = v0;
  return result;
}

uint64_t static CentralManager.pairingCentralManager.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC1E290;

  return sub_24AC9F2E4();
}

uint64_t CentralManager.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC81B94@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager__state);
  if (v2 >= 6)
  {
    if (qword_2814AD8F0 != -1)
    {
      v3 = a1;
      result = swift_once();
      a1 = v3;
    }

    if (qword_2814AEE28 == v2)
    {
      LOBYTE(v2) = 6;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  *a1 = v2;
  return result;
}

uint64_t CentralManager.__allocating_init(options:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  type metadata accessor for CentralManager(0);
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_24AC81CE8;

  return sub_24AC81DE4(0, (v1 + 16));
}

uint64_t sub_24AC81CE8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_24AC81DE4(char a1, uint64_t *a2)
{
  *(v3 + 48) = v2;
  *(v3 + 144) = a1;
  *(v3 + 56) = sub_24ACD0940();
  *(v3 + 64) = swift_task_alloc();
  sub_24ACD04B0();
  *(v3 + 72) = swift_task_alloc();
  v5 = sub_24ACD0950();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  sub_24ACD0420();
  v6 = swift_task_alloc();
  v7 = *a2;
  *(v3 + 104) = v6;
  *(v3 + 112) = v7;
  *(v3 + 145) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_24AC81F40, 0, 0);
}

uint64_t sub_24AC81F40()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 48);
  v15 = *(v0 + 144);
  swift_defaultActor_initialize();
  sub_24ACD0410();
  type metadata accessor for CentralManager(0);
  sub_24ACD0000();
  v14 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateQueue;
  sub_24AC2B8F8(0, &qword_2814ACFC8, 0x277D85C78);
  (*(v2 + 104))(v1, *MEMORY[0x277D85268], v3);
  sub_24ACD04A0();
  *(v0 + 32) = MEMORY[0x277D84F90];
  sub_24AC9FA1C(&qword_2814ACFD0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E758, &unk_24ACD5EA0);
  sub_24AC2B6A8(&unk_2814AD020, &qword_27EF9E758, &unk_24ACD5EA0, MEMORY[0x277D83970]);
  sub_24ACD0990();
  *(v4 + v14) = sub_24ACD0960();
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateTrampoline) = 0;
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject) = 0;
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager__state) = 0;
  v5 = v4 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_garbageCollectInterval;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = MEMORY[0x277D84F98];
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_garbageCollectTasks) = MEMORY[0x277D84F98];
  v7 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5B8, &qword_24ACD58D8);
  (*(*(v8 - 8) + 56))(v4 + v7, 1, 1, v8);
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered) = v6;
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected) = v6;
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_stateContinuations) = v6;
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_pairingAgent) = 0;
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress) = v6;
  v9 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStream;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStreamContinuation;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  (*(*(v12 - 8) + 56))(v4 + v11, 1, 1, v12);
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventMonitoringTask) = 0;
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_isPairingCentralManager) = v15;

  return MEMORY[0x2822009F8](sub_24AC822EC, v4, 0);
}

void sub_24AC822EC()
{
  v37 = v0;
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateQueue;
  v3 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateQueue);
  v4 = type metadata accessor for DelegateTrampoline_CBCentralManagerPrivateDelegate();
  v5 = objc_allocWithZone(v4);
  swift_weakInit();
  *&v5[OBJC_IVAR____TtC15FindMyBluetoothP33_70F3B43C606FCD1D14F1E1CF221D31A750DelegateTrampoline_CBCentralManagerPrivateDelegate_delegateQueue] = v3;
  swift_weakAssign();
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  v6 = v3;
  v7 = objc_msgSendSuper2((v0 + 16), sel_init);
  v8 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateTrampoline;
  v9 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateTrampoline);
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateTrampoline) = v7;

  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v10 = sub_24ACD0490();
  *(v0 + 120) = __swift_project_value_buffer(v10, qword_2814AD8C0);
  v11 = sub_24ACD0470();
  v12 = sub_24ACD0930();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 145);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136446210;
    if (v13)
    {
      v16 = 0;
    }

    else
    {
      v36 = *(v0 + 112);
      v16 = sub_24ACBDD38();
    }

    *(v0 + 40) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E168, &unk_24ACD45F0);
    v17 = sub_24ACD05A0();
    v19 = sub_24AC29E20(v17, v18, &v35);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_24AC18000, v11, v12, "Creating CBCentralManager with options: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C22DC60](v15, -1, -1);
    MEMORY[0x24C22DC60](v14, -1, -1);
  }

  v20 = *(v1 + v8);
  v21 = *(v1 + v2);
  if (*(v0 + 145) == 1)
  {
    v22 = v20;
    v23 = v21;
  }

  else
  {
    v36 = *(v0 + 112);
    v24 = v20;
    v25 = v21;
    v26 = sub_24ACBDD38();
    if (v26)
    {
      sub_24AC82C24(v26);

      v27 = sub_24ACD04F0();

      goto LABEL_13;
    }
  }

  v27 = 0;
LABEL_13:
  v28 = *(v0 + 48);
  v29 = [objc_allocWithZone(MEMORY[0x277CBDFF8]) initWithDelegate:v20 queue:v21 options:v27];

  v30 = *(v28 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
  *(v28 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject) = v29;
  v31 = v29;

  if (!v31)
  {
    __break(1u);
    goto LABEL_19;
  }

  v32 = [v31 sharedPairingAgent];

  if (!v32)
  {
LABEL_19:
    __break(1u);
    return;
  }

  type metadata accessor for PairingAgent(0);
  swift_allocObject();

  v33 = swift_task_alloc();
  *(v0 + 128) = v33;
  *v33 = v0;
  v33[1] = sub_24AC826AC;
  v34 = *(v0 + 48);

  sub_24AC72428(v34, v32);
}

uint64_t sub_24AC826AC(uint64_t a1)
{
  *(*v1 + 136) = a1;

  sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  swift_getObjectType();
  v3 = sub_24ACD0740();

  return MEMORY[0x2822009F8](sub_24AC82814, v3, v2);
}

uint64_t sub_24AC82814()
{
  v13 = v0;
  *(v0[6] + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_pairingAgent) = v0[17];

  v1 = sub_24ACD0470();
  v2 = sub_24ACD0900();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315138;

    v5 = sub_24AC816B0();
    v7 = v6;

    v8 = sub_24AC29E20(v5, v7, &v12);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_24AC18000, v1, v2, "[%s] init", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C22DC60](v4, -1, -1);
    MEMORY[0x24C22DC60](v3, -1, -1);
  }

  v9 = v0[1];
  v10 = v0[6];

  return v9(v10);
}

unint64_t sub_24AC829BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E710, &unk_24ACD4680);
    v2 = sub_24ACD0B60();
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
        v14 = (v12 << 10) | (16 * v13);
        v15 = (*(a1 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v23 = *(*(a1 + 56) + v14);

        sub_24AC46630(v23, *(&v23 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5D0, &qword_24ACD5900);
        swift_dynamicCast();
        sub_24AC1BFB8(&v24, v26);
        sub_24AC1BFB8(v26, v27);
        sub_24AC1BFB8(v27, &v25);
        result = sub_24AC2AB50(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_24AC1BFB8(&v25, v11);
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
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = sub_24AC1BFB8(&v25, (v2[7] + 32 * result));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
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

unint64_t sub_24AC82C24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E700, &qword_24ACD5E08);
    v2 = sub_24ACD0B60();
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
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_24AC2B940(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_24AC1BFB8(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5D0, &qword_24ACD5900);
        swift_dynamicCast();
        sub_24AC1BFB8(&v23, v25);
        sub_24AC1BFB8(v25, v26);
        sub_24AC1BFB8(v26, &v24);
        result = sub_24AC2AB50(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_24AC1BFB8(&v24, v10);
          v8 = v11;
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
          *(v2[6] + 16 * result) = v17;
          result = sub_24AC1BFB8(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
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

uint64_t sub_24AC82EB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6D0, &qword_24ACD5DA0);
    v2 = sub_24ACD0B60();
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
    sub_24AC2B940(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];

    swift_dynamicCast();
    sub_24AC1BFB8(v33, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5D0, &qword_24ACD5900);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_24AC1BFB8(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_24AC1BFB8(v31, v32);
    result = sub_24ACD09C0();
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
    result = sub_24AC1BFB8(v32, (*(v2 + 56) + 32 * v10));
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

_OWORD *sub_24AC831AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E720, &qword_24ACD5E20);
    v3 = sub_24ACD0B60();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = v3 + 64;

  v10 = 0;
  while (v6)
  {
LABEL_15:
    v13 = (v10 << 9) | (8 * __clz(__rbit64(v6)));
    v14 = *(*(a1 + 48) + v13);
    v28 = *(*(a1 + 56) + v13);
    v15 = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    swift_dynamicCast();
    sub_24AC1BFB8((v29 + 8), v27);
    sub_24AC1BFB8(v27, v29);
    sub_24ACD0590();
    sub_24ACD0D10();
    sub_24ACD05E0();
    v16 = sub_24ACD0D50();

    v17 = -1 << *(v3 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v8 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v8 + 8 * v19);
        if (v23 != -1)
        {
          v11 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v11 = __clz(__rbit64((-1 << v18) & ~*(v8 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v8 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    v6 &= v6 - 1;
    *(*(v3 + 48) + 8 * v11) = v15;
    result = sub_24AC1BFB8(v29, (*(v3 + 56) + 32 * v11));
    ++*(v3 + 16);
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return v3;
    }

    v6 = *(a1 + 64 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t CentralManager.deinit()
{
  v1 = v0;
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814AD8C0);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD0900();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = sub_24AC816B0();
    v9 = sub_24AC29E20(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24AC18000, v3, v4, "[%s] deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C22DC60](v6, -1, -1);
    MEMORY[0x24C22DC60](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_id;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);

  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation, &qword_27EF9E540, &qword_24ACD5868);

  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStream, &unk_27EF9E548, &qword_24ACD5870);
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStreamContinuation, &unk_27EF9E558, qword_24ACD5878);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t CentralManager.__deallocating_deinit()
{
  CentralManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AC83738(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E568, &qword_24ACD8D60);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC83804, v1, 0);
}

uint64_t sub_24AC83804()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  swift_allocObject();
  swift_weakInit();
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_24ACD0820();

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AC83900(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  v37 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v28 - v6;
  v7 = sub_24ACD0420();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v38 = &v28 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  sub_24ACD0410();
  v15 = *(v8 + 16);
  v29 = v7;
  v30 = v15;
  v15(v11, v13, v7);
  v16 = *(v8 + 80);
  v33 = v8;
  v31 = v16 | 7;
  v17 = swift_allocObject();
  *(v17 + 16) = Strong;
  v32 = *(v8 + 32);
  v32(v17 + ((v16 + 24) & ~v16), v11, v7);

  v18 = v34;
  v19 = v35;
  sub_24ACD07E0();
  v20 = sub_24ACD07C0();
  (*(*(v20 - 8) + 56))(v39, 1, 1, v20);
  v21 = v36;
  (*(v36 + 16))(v40, v18, v19);
  v22 = v29;
  v30(v11, v38, v29);
  v23 = v21;
  v24 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v25 = (v37 + v16 + v24) & ~v16;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = Strong;
  (*(v23 + 32))(&v26[v24], v40, v19);
  v32(&v26[v25], v11, v22);

  sub_24AC7ED6C(0, 0, v39, &unk_24ACD5E88, v26);

  return (*(v33 + 8))(v38, v22);
}

uint64_t sub_24AC83CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24ACD0420();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_24ACD07C0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_24AC7ED6C(0, 0, v10, &unk_24ACD5E98, v13);
}

uint64_t sub_24AC83EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24AC83EE8, 0, 0);
}

uint64_t sub_24AC83EE8()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return MEMORY[0x2822009F8](sub_24AC83F28, v1, 0);
  }

  **(v0 + 16) = 1;
  return (*(v0 + 8))();
}

uint64_t sub_24AC83F28()
{
  sub_24AC83FB4(*(v0 + 32));

  return MEMORY[0x2822009F8](sub_24AC83F90, 0, 0);
}

uint64_t sub_24AC83FB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6E8, &qword_24ACD9140);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_24ACD0420();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v11 = sub_24ACD0490();
  __swift_project_value_buffer(v11, qword_2814AD8C0);
  v28 = *(v6 + 16);
  v28(v10, a1, v5);
  v12 = sub_24ACD0470();
  v13 = sub_24ACD0900();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v4;
    v15 = v14;
    v25 = swift_slowAlloc();
    v30[0] = v25;
    *v15 = 136446210;
    sub_24AC9FA1C(&qword_27EF9E4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_24ACD0C20();
    v26 = a1;
    v18 = v17;
    (*(v6 + 8))(v10, v5);
    v19 = sub_24AC29E20(v16, v18, v30);
    a1 = v26;

    *(v15 + 4) = v19;
    _os_log_impl(&dword_24AC18000, v12, v13, "Removing stateContinuation for %{public}s", v15, 0xCu);
    v20 = v25;
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x24C22DC60](v20, -1, -1);
    v21 = v15;
    v4 = v27;
    MEMORY[0x24C22DC60](v21, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  v22 = v29;
  v28(v29, a1, v5);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
  swift_beginAccess();
  sub_24AC7F70C(v4, v22);
  return swift_endAccess();
}

uint64_t sub_24AC84350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_24AC84374, 0, 0);
}

uint64_t sub_24AC84374()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return MEMORY[0x2822009F8](sub_24AC843B4, v1, 0);
  }

  **(v0 + 16) = 1;
  return (*(v0 + 8))();
}

uint64_t sub_24AC843B4()
{
  sub_24AC84420(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2822009F8](sub_24ACA2610, 0, 0);
}

uint64_t sub_24AC84420(void (**a1)(char *, uint64_t), int64_t a2)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E688, &unk_24ACD5CD0);
  v48 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v56 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v58 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6E8, &qword_24ACD9140);
  MEMORY[0x28223BE20](v9 - 8);
  v50 = &v46 - v10;
  v11 = sub_24ACD0420();
  v12 = *(v11 - 1);
  v13 = MEMORY[0x28223BE20](v11);
  v49 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  if (qword_2814AD8B0 != -1)
  {
LABEL_22:
    swift_once();
  }

  v17 = sub_24ACD0490();
  __swift_project_value_buffer(v17, qword_2814AD8C0);
  v52 = *(v12 + 16);
  v52(v16, a2, v11);
  v18 = sub_24ACD0470();
  v19 = sub_24ACD0900();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v46 = v20;
    v47 = swift_slowAlloc();
    v59[0] = v47;
    *v20 = 136446210;
    sub_24AC9FA1C(&qword_27EF9E4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = sub_24ACD0C20();
    v51 = a1;
    v23 = v22;
    (*(v12 + 8))(v16, v11);
    v24 = sub_24AC29E20(v21, v23, v59);
    a1 = v51;

    v25 = v46;
    *(v46 + 1) = v24;
    v26 = v25;
    _os_log_impl(&dword_24AC18000, v18, v19, "Storing stateContinuation for %{public}s", v25, 0xCu);
    v27 = v47;
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x24C22DC60](v27, -1, -1);
    MEMORY[0x24C22DC60](v26, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v16, v11);
  }

  v28 = v49;
  v52(v49, a2, v11);
  v29 = v56;
  v30 = v50;
  v51 = *(v56 + 16);
  v52 = (v56 + 16);
  (v51)(v50, a1, v5);
  v32 = *(v29 + 56);
  v31 = v29 + 56;
  v32(v30, 0, 1, v5);
  v33 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_stateContinuations;
  v34 = v57;
  swift_beginAccess();
  sub_24AC7F70C(v30, v28);
  swift_endAccess();
  v12 = *(v34 + v33);
  v16 = (v12 + 64);
  v35 = 1 << *(v12 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v12 + 64);
  v38 = (v35 + 63) >> 6;
  v49 = (v31 - 24);
  v50 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager__state;
  a1 = (v48 + 8);
  v11 = (v31 - 48);

  a2 = 0;
  while (v37)
  {
LABEL_17:
    v43 = v56;
    v44 = v53;
    (v51)(v53, *(v12 + 56) + *(v56 + 72) * (__clz(__rbit64(v37)) | (a2 << 6)), v5);
    (*(v43 + 32))(v58, v44, v5);
    v39 = *&v50[v57];
    if (v39 >= 6)
    {
      if (qword_2814AD8F0 != -1)
      {
        swift_once();
      }

      if (qword_2814AEE28 == v39)
      {
        LOBYTE(v39) = 6;
      }

      else
      {
        LOBYTE(v39) = 0;
      }
    }

    v37 &= v37 - 1;
    LOBYTE(v59[0]) = v39;
    v40 = v54;
    v41 = v58;
    sub_24ACD07F0();
    (*a1)(v40, v55);
    (*v11)(v41, v5);
  }

  while (1)
  {
    v42 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v42 >= v38)
    {
    }

    v37 = *&v16[8 * v42];
    ++a2;
    if (v37)
    {
      a2 = v42;
      goto LABEL_17;
    }
  }
}

uint64_t sub_24AC84A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v5 = sub_24ACD0420();
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v48 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E548, &qword_24ACD5870);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  if ((*(v2 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_isPairingCentralManager) & 1) == 0 && (v53 = v5, v54 = v9, v46 = a2, v47 = v3, v17 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStream, swift_beginAccess(), sub_24AC2B5DC(v2 + v17, v16, &unk_27EF9E548, &qword_24ACD5870), v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30), LODWORD(v17) = (*(*(v18 - 8) + 48))(v16, 1, v18), sub_24AC212F4(v16, &unk_27EF9E548, &qword_24ACD5870), v17 == 1) && (v19 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStreamContinuation, swift_beginAccess(), sub_24AC2B5DC(v2 + v19, v13, &unk_27EF9E558, qword_24ACD5878), v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890), v21 = (*(*(v20 - 8) + 48))(v13, 1, v20), sub_24AC212F4(v13, &unk_27EF9E558, qword_24ACD5878), v21 == 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E588, &qword_24ACD5898);
    inited = swift_initStackObject();
    v23 = inited;
    v24 = MEMORY[0x277CBDED8];
    *(inited + 16) = xmmword_24ACD39E0;
    v25 = *v24;
    *(inited + 32) = v25;
    v26 = inited + 32;
    v27 = v50;
    v28 = *(v50 + 16);
    if (v28)
    {
      v43 = inited + 32;
      v44 = inited;
      v45 = v2;
      v55 = MEMORY[0x277D84F90];
      v29 = v25;
      sub_24ACD0AB0();
      v30 = objc_opt_self();
      v51 = *(v54 + 16);
      v52 = v30;
      v31 = v27 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v32 = *(v54 + 72);
      v33 = v48;
      ++v49;
      v50 = v32;
      v54 += 16;
      v34 = (v54 - 8);
      do
      {
        v51(v33, v31, v8);
        sub_24ACCFFE0();
        v35 = sub_24ACD03D0();
        v36 = [v52 UUIDWithNSUUID_];

        (*v49)(v7, v53);
        (*v34)(v33, v8);
        sub_24ACD0A90();
        sub_24ACD0AC0();
        sub_24ACD0AD0();
        sub_24ACD0AA0();
        v31 += v50;
        --v28;
      }

      while (v28);
      v37 = v55;
      v23 = v44;
      v26 = v43;
    }

    else
    {
      v39 = v25;
      v37 = MEMORY[0x277D84F90];
    }

    *(v23 + 40) = v37;
    v40 = sub_24AC9F1F4(v23, &qword_27EF9E750, &qword_24ACD5E78);
    swift_setDeallocating();
    sub_24AC212F4(v26, &qword_27EF9E590, &unk_24ACD58A0);
    v41 = sub_24AC831AC(v40, &qword_27EF9E748, &qword_24ACD5E70);

    sub_24AC850E0(v41, v46);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_24AC850E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v41 = *v2;
  v42 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E548, &qword_24ACD5870);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E738, &qword_24ACD5E38);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  v39 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_24AC81B94(v43);
  if (v43[0] == 5 || (sub_24AC81B94(v43), v43[0] > 5u))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6A8, &qword_24ACD5D00);
    (*(v13 + 104))(v15, *MEMORY[0x277D85778], v12);
    v37 = v16;
    v22 = v38;
    sub_24ACD07D0();
    (*(v13 + 8))(v15, v12);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
    v24 = *(v23 - 8);
    (*(v24 + 16))(v11, v22, v23);
    (*(v24 + 56))(v11, 0, 1, v23);
    v25 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStream;
    swift_beginAccess();
    sub_24AC463C4(v11, v3 + v25, &unk_27EF9E548, &qword_24ACD5870);
    swift_endAccess();
    v26 = v39;
    v27 = v37;
    (*(v39 + 16))(v8, v18, v37);
    (*(v26 + 56))(v8, 0, 1, v27);
    v28 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStreamContinuation;
    swift_beginAccess();
    sub_24AC463C4(v8, v3 + v28, &unk_27EF9E558, qword_24ACD5878);
    swift_endAccess();

    sub_24ACD07E0();
    v29 = sub_24ACD07C0();
    v30 = v40;
    (*(*(v29 - 8) + 56))(v40, 1, 1, v29);
    v31 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
    v32 = swift_allocObject();
    v32[2] = v3;
    v32[3] = v31;
    v33 = v41;
    v34 = v42;
    v32[4] = v3;
    v32[5] = v34;
    v32[6] = v33;
    swift_retain_n();

    v35 = sub_24AC7F080(0, 0, v30, &unk_24ACD5E48, v32);
    (*(v26 + 8))(v18, v27);
    *(v3 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventMonitoringTask) = v35;
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    v20 = v19;
    sub_24AC81B94(v43);
    *v20 = v43[0];
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_24AC85700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v7 = &v41 - v6;
  v8 = sub_24ACD0420();
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E548, &qword_24ACD5870);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v41 - v16;
  if ((*(v2 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_isPairingCentralManager) & 1) == 0 && (v48 = a1, v46 = v3, v18 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStream, swift_beginAccess(), sub_24AC2B5DC(v2 + v18, v17, &unk_27EF9E548, &qword_24ACD5870), v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30), LODWORD(v18) = (*(*(v19 - 8) + 48))(v17, 1, v19), sub_24AC212F4(v17, &unk_27EF9E548, &qword_24ACD5870), v18 == 1) && (v20 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStreamContinuation, swift_beginAccess(), sub_24AC2B5DC(v2 + v20, v14, &unk_27EF9E558, qword_24ACD5878), v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890), LODWORD(v20) = (*(*(v21 - 8) + 48))(v14, 1, v21), sub_24AC212F4(v14, &unk_27EF9E558, qword_24ACD5878), v20 == 1))
  {
    v45 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E598, &qword_24ACD58B0);
    inited = swift_initStackObject();
    v23 = inited;
    v24 = MEMORY[0x277CBDED0];
    *(inited + 16) = xmmword_24ACD39E0;
    v25 = *v24;
    *(inited + 32) = v25;
    v26 = inited + 32;
    v27 = v48;
    v28 = *(v48 + 16);
    if (v28)
    {
      v42 = inited + 32;
      v43 = inited;
      v44 = v2;
      v54 = MEMORY[0x277D84F90];
      v29 = v25;
      sub_24AC64D48(0, v28, 0);
      v30 = v54;
      v31 = *(v53 + 16);
      v32 = v27 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v48 = *(v53 + 72);
      v49 = v31;
      v53 += 16;
      v33 = (v53 - 8);
      v47 = v52 + 32;
      do
      {
        v34 = v50;
        v49(v7, v32, v50);
        sub_24ACCFFE0();
        (*v33)(v7, v34);
        v54 = v30;
        v36 = *(v30 + 16);
        v35 = *(v30 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_24AC64D48((v35 > 1), v36 + 1, 1);
          v30 = v54;
        }

        *(v30 + 16) = v36 + 1;
        (*(v52 + 32))(v30 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v36, v11, v51);
        v32 += v48;
        --v28;
      }

      while (v28);
      v23 = v43;
      v26 = v42;
    }

    else
    {
      v38 = v25;
      v30 = MEMORY[0x277D84F90];
    }

    *(v23 + 40) = v30;
    v39 = sub_24AC9F1F4(v23, &qword_27EF9E730, &qword_24ACD5E30);
    swift_setDeallocating();
    sub_24AC212F4(v26, &unk_27EF9E5A0, &qword_24ACD58B8);
    v40 = sub_24AC831AC(v39, &qword_27EF9E728, &qword_24ACD5E28);

    sub_24AC850E0(v40, v45);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_24AC85D58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a3;
  *(v5 + 80) = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  *(v5 + 88) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E5B0, &qword_24ACD58D0);
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 - 8);
  *(v5 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E540, &qword_24ACD5868);
  v8 = swift_task_alloc();
  v9 = *a2;
  *(v5 + 120) = v8;
  *(v5 + 128) = v9;
  *(v5 + 136) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_24AC85ED0, v4, 0);
}

uint64_t sub_24AC85ED0()
{
  v39 = v0;
  sub_24AC81B94(&v37);
  if (v37 != 5)
  {
    sub_24AC81B94(&v37);
    if (v37 <= 5u)
    {
      type metadata accessor for CentralManager.Error(0);
      sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
      swift_allocError();
      v2 = v1;
      sub_24AC81B94(&v37);
      *v2 = v37;
LABEL_11:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v35 = *(v0 + 8);
      goto LABEL_12;
    }
  }

  v3 = *(v0 + 120);
  v4 = *(v0 + 72);
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v3, &qword_27EF9E540, &qword_24ACD5868);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5B8, &qword_24ACD58D8);
  LODWORD(v4) = (*(*(v6 - 8) + 48))(v3, 1, v6);
  sub_24AC212F4(v3, &qword_27EF9E540, &qword_24ACD5868);
  if (v4 != 1)
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    goto LABEL_11;
  }

  v7 = *(v0 + 136);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v10 = *(v0 + 96);
  v12 = *(v0 + 64);
  v11 = *(v0 + 72);
  v13 = *(v0 + 56);
  v37 = *(v0 + 128);
  v38 = v7;
  v14 = sub_24AC9F648(&v37);
  v16 = v15;
  v17 = v11 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_garbageCollectInterval;
  *v17 = v13;
  *(v17 + 8) = v12;
  *(v17 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E5C8, &qword_24ACD58E0);
  (*(v9 + 104))(v8, *MEMORY[0x277D858A0], v10);
  sub_24ACD08D0();
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v18 = sub_24ACD0490();
  __swift_project_value_buffer(v18, qword_2814AD8C0);

  v19 = sub_24ACD0470();
  v20 = sub_24ACD08F0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37 = v22;
    *v21 = 136446466;
    *(v0 + 40) = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E158, &qword_24ACD45B0);
    v23 = sub_24ACD05A0();
    v25 = sub_24AC29E20(v23, v24, &v37);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5D0, &qword_24ACD5900);
    v26 = sub_24ACD0510();
    v28 = sub_24AC29E20(v26, v27, &v37);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_24AC18000, v19, v20, "Calling CBCentralManager.scanForPeripherals() with services: %{public}s options: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v22, -1, -1);
    MEMORY[0x24C22DC60](v21, -1, -1);
  }

  v30 = *(v0 + 80);
  v29 = *(v0 + 88);
  v31 = *(v0 + 72);
  v32 = sub_24ACD07C0();
  (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
  v33 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v34 = swift_allocObject();
  v34[2] = v31;
  v34[3] = v33;
  v34[4] = v31;
  v34[5] = v14;
  v34[6] = v16;
  v34[7] = v30;
  swift_retain_n();
  sub_24AC7EA6C(0, 0, v29, &unk_24ACD58F0, v34);

  v35 = *(v0 + 8);
LABEL_12:

  return v35();
}

uint64_t sub_24AC8649C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E540, &qword_24ACD5868);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5B8, &qword_24ACD58D8);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  swift_beginAccess();
  sub_24AC463C4(v6, a2 + v9, &qword_27EF9E540, &qword_24ACD5868);
  swift_endAccess();

  return sub_24ACD0880();
}

uint64_t sub_24AC86634()
{
  sub_24AC86694();
  v1 = *(v0 + 8);

  return v1();
}

void *sub_24AC86694()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E540, &qword_24ACD5868);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  if (qword_2814AD8B0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v5 = sub_24ACD0490();
    __swift_project_value_buffer(v5, qword_2814AD8C0);
    v6 = sub_24ACD0470();
    v7 = sub_24ACD08F0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24AC18000, v6, v7, "Calling CBCentralManager.stopScan()", v8, 2u);
      MEMORY[0x24C22DC60](v8, -1, -1);
    }

    result = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
    if (!result)
    {
      break;
    }

    [result stopScan];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5B8, &qword_24ACD58D8);
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    v11 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
    swift_beginAccess();
    sub_24AC463C4(v4, v1 + v11, &qword_27EF9E540, &qword_24ACD5868);
    swift_endAccess();
    v12 = v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_garbageCollectInterval;
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 1;
    v13 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_garbageCollectTasks;
    swift_beginAccess();
    v14 = *(v1 + v13);
    v17 = *(v14 + 64);
    v16 = v14 + 64;
    v15 = v17;
    v18 = 1 << *(*(v1 + v13) + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v4 = v19 & v15;
    v20 = (v18 + 63) >> 6;

    v21 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        *(v1 + v13) = MEMORY[0x277D84F98];
      }

      v4 = *(v16 + 8 * v22);
      ++v21;
      if (v4)
      {
        v21 = v22;
        do
        {
LABEL_13:
          v4 &= v4 - 1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC00, &qword_24ACD4690);
          sub_24ACD0830();
        }

        while (v4);
        continue;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_24AC869B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_24AC869DC, a4, 0);
}

uint64_t sub_24AC869DC()
{
  sub_24AC86A40(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

void sub_24AC86A40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
  if (v4)
  {
    v7 = a2;
    if (a2)
    {
      sub_24AC2B8F8(0, &qword_27EF9E150, 0x277CBE0A0);
      v8 = v4;
      v7 = sub_24ACD06F0();
    }

    else
    {
      v9 = v4;
    }

    sub_24AC82C24(a3);
    v10 = sub_24ACD04F0();

    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a4;
    v14[4] = sub_24ACA1EC0;
    v14[5] = v12;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_24AC873F8;
    v14[3] = &block_descriptor_222;
    v13 = _Block_copy(v14);

    [v4 scanForPeripheralsWithServices:v7 options:v10 completion:v13];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AC86BE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  result = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v10 = result;
      v11 = sub_24ACD07C0();
      (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = a1;
      v12[5] = v10;
      v12[6] = a4;
      v13 = a1;
      sub_24AC7EA6C(0, 0, v9, &unk_24ACD5E00, v12);
    }
  }

  return result;
}

uint64_t sub_24AC86D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5B8, &qword_24ACD58D8);
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E540, &qword_24ACD5868);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC86E40, 0, 0);
}

uint64_t sub_24AC86E40()
{
  v1 = sub_24ACD0210();
  v0[17] = v1;
  v2 = [v1 domain];
  v3 = sub_24ACD0590();
  v5 = v4;

  if (v3 == sub_24ACD0590() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_24ACD0C40();

    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([v1 code] - 35 <= 1)
  {
    v9 = v0[11];
    v10 = sub_24AC870A8;
    goto LABEL_15;
  }

LABEL_10:
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v11 = v0[10];
  v12 = sub_24ACD0490();
  __swift_project_value_buffer(v12, qword_2814AD8C0);
  v13 = v11;
  v14 = sub_24ACD0470();
  v15 = sub_24ACD0900();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[10];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v16;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_24AC18000, v14, v15, "STUB: unexpected error: %@", v17, 0xCu);
    sub_24AC212F4(v18, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v18, -1, -1);
    MEMORY[0x24C22DC60](v17, -1, -1);
  }

  v21 = v0[11];

  v10 = sub_24AC8728C;
  v9 = v21;
LABEL_15:

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_24AC870A8()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v1, &qword_27EF9E540, &qword_24ACD5868);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_24AC212F4(v0[16], &qword_27EF9E540, &qword_24ACD5868);
  }

  else
  {
    v6 = v0[16];
    v8 = v0[13];
    v7 = v0[14];
    v9 = v0[12];
    (*(v8 + 16))(v7, v6, v9);
    sub_24AC212F4(v6, &qword_27EF9E540, &qword_24ACD5868);
    v0[9] = 0;
    sub_24ACD08A0();
    (*(v8 + 8))(v7, v9);
  }

  return MEMORY[0x2822009F8](sub_24AC87208, 0, 0);
}

uint64_t sub_24AC87208()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC8728C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v1, &qword_27EF9E540, &qword_24ACD5868);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_24AC212F4(v0[15], &qword_27EF9E540, &qword_24ACD5868);
  }

  else
  {
    v6 = v0[14];
    v7 = v0[15];
    v8 = v0[12];
    v9 = v0[13];
    v10 = v0[10];
    (*(v9 + 16))(v6, v7, v8);
    sub_24AC212F4(v7, &qword_27EF9E540, &qword_24ACD5868);
    v0[8] = v10;
    v11 = v10;
    sub_24ACD08A0();
    (*(v9 + 8))(v6, v8);
  }

  return MEMORY[0x2822009F8](sub_24ACA25FC, 0, 0);
}

void sub_24AC873F8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  v5(a2, a3);
}

uint64_t sub_24AC87484(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v2[18] = swift_task_alloc();
  sub_24ACD0420();
  v2[19] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC875CC, v1, 0);
}

uint64_t sub_24AC875CC()
{
  v112 = v0;
  sub_24AC81B94(&v110);
  if (v110 != 5)
  {
    sub_24AC81B94(&v110);
    if (v110 <= 5u)
    {
      type metadata accessor for CentralManager.Error(0);
      sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
      swift_allocError();
      v2 = v1;
      sub_24AC81B94(&v110);
      *v2 = v110;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v3 = v0[1];

      return v3();
    }
  }

  v5 = sub_24ACD0030();
  v7 = v6;
  if (sub_24ACD0080())
  {
    v8 = 0x6D6F646E6152;
  }

  else
  {
    v8 = 0x63696C627550;
  }

  v110 = (v8 & 0xFFFFFFFFFFFFLL | 0x20000000000000);
  v111 = 0xE700000000000000;
  MEMORY[0x24C22CD50](v5, v7);

  v10 = v110;
  v9 = v111;
  if (qword_2814AD278 != -1)
  {
    swift_once();
  }

  v11 = sub_24ACD0490();
  __swift_project_value_buffer(v11, qword_2814AD280);

  v12 = sub_24ACD0470();
  v13 = sub_24ACD08F0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v110 = v15;
    *v14 = 141558275;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    *(v14 + 14) = sub_24AC29E20(v10, v9, &v110);
    _os_log_impl(&dword_24AC18000, v12, v13, "retrievePeripheral for MAC: %{private,mask.hash}s.", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C22DC60](v15, -1, -1);
    MEMORY[0x24C22DC60](v14, -1, -1);
  }

  v24 = *(v0[17] + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
  if (!v24)
  {
    __break(1u);
    return MEMORY[0x2822008A0](v16, v17, v18, v19, v20, v21, v22, v23);
  }

  v25 = v24;
  v26 = sub_24ACD0560();
  Strong = [v25 retrievePeripheralWithAddress_];
  v0[25] = Strong;

  if (Strong)
  {
    v28 = v0[17];
    v109 = Strong;
    v29 = [v109 identifier];
    sub_24ACD03F0();

    v108 = type metadata accessor for Peripheral(0);
    sub_24ACD0000();
    v30 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
    swift_beginAccess();
    v31 = *(v28 + v30);
    v107 = v10;
    if (*(v31 + 16))
    {
      v32 = v0[24];

      v33 = sub_24AC2AC60(v32);
      if (v34)
      {
        v35 = v33;
        v36 = v0[24];
        v38 = v0[20];
        v37 = v0[21];

        v0[26] = *(*(v31 + 56) + 8 * v35);
        v39 = *(v37 + 8);

        v39(v36, v38);

        v40 = sub_24ACD0470();
        v41 = sub_24ACD0930();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v110 = v43;
          *v42 = 141558531;
          *(v42 + 4) = 1752392040;
          *(v42 + 12) = 2081;
          v44 = sub_24AC29E20(v107, v9, &v110);

          *(v42 + 14) = v44;
          *(v42 + 22) = 2082;

          v45 = sub_24AC39074();
          v47 = v46;

          v48 = sub_24AC29E20(v45, v47, &v110);

          *(v42 + 24) = v48;
          _os_log_impl(&dword_24AC18000, v40, v41, "Injecting MAC: %{private,mask.hash}s into discovered peripheral %{public}s", v42, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C22DC60](v43, -1, -1);
          MEMORY[0x24C22DC60](v42, -1, -1);
        }

        else
        {
        }

        v73 = swift_task_alloc();
        v0[27] = v73;
        *v73 = v0;
        v74 = sub_24AC883A4;
LABEL_44:
        v73[1] = v74;
        v89 = v0[16];

        return sub_24AC33170(v89);
      }
    }

    v106 = v28;
    v49 = v0[24];
    v50 = v0[20];
    v51 = v0[21];
    v52 = v0[17];
    v53 = *(v51 + 8);
    v0[29] = v53;
    v0[30] = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53(v49, v50);
    v54 = [v109 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v55 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
    swift_beginAccess();
    v56 = *(v52 + v55);
    if (*(v56 + 16))
    {
      v57 = v0[23];

      v58 = sub_24AC2AC60(v57);
      if (v59)
      {
        v60 = v0[23];
        v61 = v0[20];
        v0[31] = *(*(v56 + 56) + 8 * v58);

        v53(v60, v61);

        v62 = sub_24ACD0470();
        v63 = sub_24ACD0930();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v110 = v65;
          *v64 = 141558531;
          *(v64 + 4) = 1752392040;
          *(v64 + 12) = 2081;
          v66 = sub_24AC29E20(v107, v9, &v110);

          *(v64 + 14) = v66;
          *(v64 + 22) = 2082;

          v67 = sub_24AC39074();
          v69 = v68;

          v70 = sub_24AC29E20(v67, v69, &v110);

          *(v64 + 24) = v70;
          _os_log_impl(&dword_24AC18000, v62, v63, "Injecting MAC: %{private,mask.hash}s into existing peripheral %{public}s", v64, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C22DC60](v65, -1, -1);
          MEMORY[0x24C22DC60](v64, -1, -1);
        }

        else
        {
        }

        v73 = swift_task_alloc();
        v0[32] = v73;
        *v73 = v0;
        v74 = sub_24AC88578;
        goto LABEL_44;
      }
    }

    v71 = v0[23];
    v72 = v0[20];

    v53(v71, v72);
    if ([v109 delegate])
    {
      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (swift_dynamicCastClass())
      {
        Strong = swift_weakLoadStrong();
        swift_unknownObjectRelease();
        if (Strong)
        {

          goto LABEL_39;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v75 = v0[18];
    v76 = v0[16];
    v77 = sub_24ACD0090();
    v78 = *(v77 - 8);
    (*(v78 + 16))(v75, v76, v77);
    (*(v78 + 56))(v75, 0, 1, v77);
    v79 = [v109 identifier];
    sub_24ACD03F0();

    sub_24ACD0000();
    v80 = *(v106 + v30);
    if (*(v80 + 16))
    {
      v81 = v0[22];

      v82 = sub_24AC2AC60(v81);
      if (v83)
      {
LABEL_38:
        Strong = *(*(v80 + 56) + 8 * v82);

        v86 = v0[25];
        v87 = v0[18];
        (v0[29])(v0[22], v0[20]);
        sub_24AC212F4(v87, &qword_27EF9E048, &qword_24ACD5910);

        goto LABEL_39;
      }
    }

    v80 = *(v52 + v55);
    if (*(v80 + 16))
    {
      v84 = v0[22];

      v82 = sub_24AC2AC60(v84);
      if (v85)
      {
        goto LABEL_38;
      }
    }

    v90 = v0[17];
    v91 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
    swift_beginAccess();
    if (*(*(v90 + v91) + 16) && (v92 = v0[22], , sub_24AC2AC60(v92), LOBYTE(v92) = v93, , (v92 & 1) != 0))
    {
      v94 = v0[22];
      v95 = v0[17];
      v96 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
      v97 = swift_task_alloc();
      v0[37] = v97;
      *(v97 + 16) = v95;
      *(v97 + 24) = v94;
      v98 = swift_task_alloc();
      v0[38] = v98;
      *v98 = v0;
      v98[1] = sub_24AC88BD8;
      v21 = sub_24AC9FB3C;
      v16 = v0 + 15;
      v20 = 0x800000024ACDA2F0;
      v17 = v95;
      v18 = v96;
      v19 = 0xD000000000000055;
      v22 = v97;
    }

    else
    {
      v99 = v0[22];
      v100 = v0[17];
      v101 = v0[18];
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = *(v90 + v91);
      *(v90 + v91) = 0x8000000000000000;
      sub_24AC63DEC(MEMORY[0x277D84F90], v99, isUniquelyReferenced_nonNull_native);
      *(v90 + v91) = v110;
      swift_endAccess();
      v103 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
      v104 = swift_task_alloc();
      v0[34] = v104;
      *(v104 + 16) = v100;
      *(v104 + 24) = v99;
      *(v104 + 32) = v109;
      *(v104 + 40) = v101;
      *(v104 + 48) = 1;
      *(v104 + 56) = 0;
      *(v104 + 64) = 0;
      *(v104 + 72) = 1;
      v105 = swift_task_alloc();
      v0[35] = v105;
      *v105 = v0;
      v105[1] = sub_24AC88750;
      v21 = sub_24AC9FB38;
      v16 = v0 + 14;
      v20 = 0x800000024ACDA2F0;
      v17 = v100;
      v18 = v103;
      v19 = 0xD000000000000055;
      v22 = v104;
    }

    v23 = v108;

    return MEMORY[0x2822008A0](v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_39:

  v88 = v0[1];

  return v88(Strong);
}

uint64_t sub_24AC883A4()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_24AC88D00;
  }

  else
  {
    v4 = sub_24AC884D0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC884D0()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24AC88578()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_24AC88DA8;
  }

  else
  {
    v4 = sub_24AC886A4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC886A4()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24AC88750()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = sub_24AC88B00;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_24AC88A28;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC88878()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 200);
  v3 = *(v0 + 144);
  (*(v0 + 232))(*(v0 + 176), *(v0 + 160));
  sub_24AC212F4(v3, &qword_27EF9E048, &qword_24ACD5910);

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_24AC88950()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  (*(v0 + 232))(*(v0 + 176), *(v0 + 160));
  sub_24AC212F4(v2, &qword_27EF9E048, &qword_24ACD5910);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AC88A28()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 200);
  v3 = *(v0 + 144);
  (*(v0 + 232))(*(v0 + 176), *(v0 + 160));
  sub_24AC212F4(v3, &qword_27EF9E048, &qword_24ACD5910);

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_24AC88B00()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  (*(v0 + 232))(*(v0 + 176), *(v0 + 160));
  sub_24AC212F4(v2, &qword_27EF9E048, &qword_24ACD5910);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AC88BD8()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = sub_24AC88950;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_24AC88878;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC88D00()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AC88DA8()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AC88E54(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v2[36] = swift_task_alloc();
  sub_24ACD0420();
  v2[37] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC88F9C, v1, 0);
}

uint64_t sub_24AC88F9C()
{
  v14 = v0;
  v1 = sub_24AC81B94(&v11);
  if (v11 == 5 || (v1 = sub_24AC81B94(&v12), v12 > 5u))
  {
    v6 = v0[35];
    v0[30] = MEMORY[0x277D84F90];
    v7 = *(v6 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
    v0[43] = v7;
    if (v7)
    {
      v8 = v7;
      v9 = sub_24ACD06F0();
      v0[44] = v9;
      v0[2] = v0;
      v0[7] = v0 + 31;
      v0[3] = sub_24AC8922C;
      v10 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5E0, &qword_24ACD5920);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_24AC8B08C;
      v0[13] = &block_descriptor;
      v0[14] = v10;
      [v8 retrievePeripheralsWithFindMySerialNumberStrings:v9 completion:v0 + 10];
      v1 = (v0 + 2);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v1);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    v3 = v2;
    sub_24AC81B94(v13);
    *v3 = v13[0];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24AC8922C()
{
  v1 = *(*v0 + 280);

  return MEMORY[0x2822009F8](sub_24AC89320, v1, 0);
}

uint64_t sub_24AC89320()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[31];
  v0[45] = v3;

  if (v3 >> 62)
  {
LABEL_47:
    v64 = sub_24ACD0B30();
    v0[46] = v64;
    if (v64)
    {
      goto LABEL_3;
    }

LABEL_48:
    v7 = MEMORY[0x277D84F90];
LABEL_49:

    v65 = v0[1];

    return v65(v7);
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[46] = v4;
  if (!v4)
  {
    goto LABEL_48;
  }

LABEL_3:
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  v0[47] = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  v0[48] = v5;
  v0[49] = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[50] = v7;
    v13 = v0[45];
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C22D1B0](v6);
    }

    else
    {
      if (v6 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v14 = *(v13 + 8 * v6 + 32);
    }

    v0[51] = v14;
    v0[52] = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v15 = v0[47];
    v16 = v0[35];
    v17 = v14;
    v18 = [v17 identifier];
    sub_24ACD03F0();

    v19 = type metadata accessor for Peripheral(0);
    sub_24ACD0000();
    if (!*(*(v16 + v15) + 16))
    {
      break;
    }

    v20 = v0[42];

    sub_24AC2AC60(v20);
    if ((v21 & 1) == 0)
    {

      break;
    }

    v8 = v0[42];
    v10 = v0[38];
    v9 = v0[39];

    v11 = *(v9 + 8);

    v11(v8, v10);
LABEL_5:

    MEMORY[0x24C22CE30](v12);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24ACD0720();
    }

    sub_24ACD0730();

LABEL_8:

    v6 = v0[52];
    v7 = v0[30];
    if (v6 == v0[46])
    {
      goto LABEL_49;
    }
  }

  v22 = v0[48];
  v23 = v0[42];
  v24 = v0[38];
  v25 = v0[39];
  v26 = v0[35];
  v27 = *(v25 + 8);
  v0[53] = v27;
  v0[54] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v23, v24);
  v28 = [v17 identifier];

  sub_24ACD03F0();
  sub_24ACD0000();
  if (!*(*(v26 + v22) + 16))
  {
    goto LABEL_21;
  }

  v29 = v0[41];

  sub_24AC2AC60(v29);
  if (v30)
  {
    v31 = v0[41];
    v32 = v0[38];

    v27(v31, v32);
    goto LABEL_5;
  }

LABEL_21:
  v27(v0[41], v0[38]);
  if (![v17 delegate])
  {
    goto LABEL_28;
  }

  type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
  if (swift_dynamicCastClass() && swift_weakLoadStrong())
  {

    MEMORY[0x24C22CE30](v33);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24ACD0720();
    }

    sub_24ACD0730();
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  swift_unknownObjectRelease();
LABEL_28:
  v34 = v0[47];
  v35 = v0[36];
  v36 = v0[35];
  v37 = sub_24ACD0090();
  (*(*(v37 - 8) + 56))(v35, 1, 1, v37);
  v38 = [v17 identifier];
  sub_24ACD03F0();

  sub_24ACD0000();
  if (*(*(v36 + v34) + 16))
  {
    v39 = v0[40];

    sub_24AC2AC60(v39);
    if ((v40 & 1) == 0)
    {

      goto LABEL_31;
    }

LABEL_33:

    v44 = v0[36];
    (v0[53])(v0[40], v0[38]);
    sub_24AC212F4(v44, &qword_27EF9E048, &qword_24ACD5910);

    MEMORY[0x24C22CE30](v45);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24ACD0720();
    }

    v46 = v0[51];
    sub_24ACD0730();

    goto LABEL_8;
  }

LABEL_31:
  v41 = v0[35];
  if (!*(*(v41 + v0[48]) + 16))
  {
    goto LABEL_37;
  }

  v42 = v0[40];

  sub_24AC2AC60(v42);
  if (v43)
  {
    goto LABEL_33;
  }

  v41 = v0[35];
LABEL_37:
  v47 = v0[49];
  if (*(*(v41 + v47) + 16))
  {
    v48 = v0[40];

    sub_24AC2AC60(v48);
    LOBYTE(v48) = v49;

    if (v48)
    {
      v50 = v0[40];
      v51 = v0[35];
      v52 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
      v53 = swift_task_alloc();
      v0[58] = v53;
      *(v53 + 16) = v51;
      *(v53 + 24) = v50;
      v54 = swift_task_alloc();
      v0[59] = v54;
      *v54 = v0;
      v54[1] = sub_24AC8AF3C;
      v55 = sub_24ACA261C;
      v56 = v0 + 33;
      v57 = v51;
      v58 = v52;
      goto LABEL_42;
    }

    v47 = v0[49];
    v41 = v0[35];
  }

  v59 = v0[40];
  v60 = v0[36];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = *(v41 + v47);
  *(v41 + v47) = 0x8000000000000000;
  sub_24AC63DEC(MEMORY[0x277D84F90], v59, isUniquelyReferenced_nonNull_native);
  *(v41 + v47) = v67;
  swift_endAccess();
  v62 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v53 = swift_task_alloc();
  v0[55] = v53;
  *(v53 + 16) = v41;
  *(v53 + 24) = v59;
  *(v53 + 32) = v17;
  *(v53 + 40) = v60;
  *(v53 + 48) = 1;
  *(v53 + 56) = 0;
  *(v53 + 64) = 0;
  *(v53 + 72) = 1;
  v63 = swift_task_alloc();
  v0[56] = v63;
  *v63 = v0;
  v63[1] = sub_24AC89BE4;
  v55 = sub_24ACA2608;
  v56 = v0 + 32;
  v57 = v41;
  v58 = v62;
LABEL_42:

  return MEMORY[0x2822008A0](v56, v57, v58, 0xD000000000000055, 0x800000024ACDA2F0, v55, v53, v19);
}

uint64_t sub_24AC89BE4()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);

    v4 = sub_24AC8AE64;
  }

  else
  {
    v3 = *(v2 + 280);

    v4 = sub_24AC8A63C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC89D34()
{
  v1 = &qword_24ACD5910;
LABEL_2:
  v2 = *(v0 + 288);
  (*(v0 + 424))(*(v0 + 320), *(v0 + 304));
  sub_24AC212F4(v2, &qword_27EF9E048, v1);

  MEMORY[0x24C22CE30](v3);
  if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24ACD0720();
  }

  v4 = *(v0 + 408);
  sub_24ACD0730();

  while (1)
  {

    v12 = *(v0 + 416);
    v13 = *(v0 + 240);
    if (v12 == *(v0 + 368))
    {
      break;
    }

    *(v0 + 400) = v13;
    v14 = *(v0 + 360);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C22D1B0](v12);
    }

    else
    {
      if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v5 = *(v14 + 8 * v12 + 32);
    }

    *(v0 + 408) = v5;
    *(v0 + 416) = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return MEMORY[0x2822008A0](v5, v14, v6, v7, v8, v9, v10, v11);
    }

    v15 = *(v0 + 376);
    v16 = *(v0 + 280);
    v17 = v5;
    v18 = [v17 identifier];
    sub_24ACD03F0();

    v65 = type metadata accessor for Peripheral(0);
    sub_24ACD0000();
    if (*(*(v16 + v15) + 16))
    {
      v19 = *(v0 + 336);

      sub_24AC2AC60(v19);
      if (v20)
      {
        v21 = *(v0 + 336);
        v23 = *(v0 + 304);
        v22 = *(v0 + 312);

        v24 = *(v22 + 8);

        v24(v21, v23);
        goto LABEL_18;
      }
    }

    v25 = *(v0 + 384);
    v26 = *(v0 + 336);
    v27 = *(v0 + 304);
    v28 = *(v0 + 312);
    v29 = v1;
    v30 = *(v0 + 280);
    v31 = *(v28 + 8);
    *(v0 + 424) = v31;
    *(v0 + 432) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v26, v27);
    v32 = [v17 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v33 = *(v30 + v25);
    v1 = v29;
    if (*(v33 + 16))
    {
      v34 = *(v0 + 328);

      sub_24AC2AC60(v34);
      if ((v35 & 1) == 0)
      {

        goto LABEL_22;
      }

      v36 = *(v0 + 328);
      v37 = *(v0 + 304);

      v31(v36, v37);
LABEL_18:

      MEMORY[0x24C22CE30](v38);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
    }

    else
    {
LABEL_22:
      v31(*(v0 + 328), *(v0 + 304));
      if (![v17 delegate])
      {
        goto LABEL_29;
      }

      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (!swift_dynamicCastClass() || !swift_weakLoadStrong())
      {
        swift_unknownObjectRelease();
LABEL_29:
        v40 = *(v0 + 376);
        v41 = *(v0 + 288);
        v42 = *(v0 + 280);
        v43 = sub_24ACD0090();
        (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
        v44 = [v17 identifier];
        sub_24ACD03F0();

        sub_24ACD0000();
        if (*(*(v42 + v40) + 16))
        {
          v45 = *(v0 + 320);

          sub_24AC2AC60(v45);
          if ((v46 & 1) == 0)
          {

            goto LABEL_32;
          }

LABEL_34:

          goto LABEL_2;
        }

LABEL_32:
        v47 = *(v0 + 280);
        if (*(*(v47 + *(v0 + 384)) + 16))
        {
          v48 = *(v0 + 320);

          sub_24AC2AC60(v48);
          if (v49)
          {
            goto LABEL_34;
          }

          v47 = *(v0 + 280);
        }

        v52 = *(v0 + 392);
        if (*(*(v47 + v52) + 16))
        {
          v53 = *(v0 + 320);

          sub_24AC2AC60(v53);
          LOBYTE(v53) = v54;

          v47 = *(v0 + 280);
          if (v53)
          {
            v55 = *(v0 + 320);
            v56 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
            v57 = swift_task_alloc();
            *(v0 + 464) = v57;
            *(v57 + 16) = v47;
            *(v57 + 24) = v55;
            v58 = swift_task_alloc();
            *(v0 + 472) = v58;
            *v58 = v0;
            v58[1] = sub_24AC8AF3C;
            v9 = sub_24ACA261C;
            v5 = (v0 + 264);
            v8 = 0x800000024ACDA2F0;
            v14 = v47;
            v6 = v56;
            v7 = 0xD000000000000055;
            v10 = v57;
LABEL_44:
            v11 = v65;

            return MEMORY[0x2822008A0](v5, v14, v6, v7, v8, v9, v10, v11);
          }

          v52 = *(v0 + 392);
        }

        v59 = *(v0 + 320);
        v60 = *(v0 + 288);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = *(v47 + v52);
        *(v47 + v52) = 0x8000000000000000;
        sub_24AC63DEC(MEMORY[0x277D84F90], v59, isUniquelyReferenced_nonNull_native);
        *(v47 + v52) = v66;
        swift_endAccess();
        v62 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
        v63 = swift_task_alloc();
        *(v0 + 440) = v63;
        *(v63 + 16) = v47;
        *(v63 + 24) = v59;
        *(v63 + 32) = v17;
        *(v63 + 40) = v60;
        *(v63 + 48) = 1;
        *(v63 + 56) = 0;
        *(v63 + 64) = 0;
        *(v63 + 72) = 1;
        v64 = swift_task_alloc();
        *(v0 + 448) = v64;
        *v64 = v0;
        v64[1] = sub_24AC89BE4;
        v9 = sub_24ACA2608;
        v5 = (v0 + 256);
        v8 = 0x800000024ACDA2F0;
        v14 = v47;
        v6 = v62;
        v7 = 0xD000000000000055;
        v10 = v63;
        goto LABEL_44;
      }

      MEMORY[0x24C22CE30](v39);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
      swift_unknownObjectRelease();
    }
  }

  v50 = *(v0 + 8);

  return v50(v13);
}

uint64_t sub_24AC8A564()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 288);
  (*(v0 + 424))(*(v0 + 320), *(v0 + 304));
  sub_24AC212F4(v2, &qword_27EF9E048, &qword_24ACD5910);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AC8A63C()
{
  v1 = &qword_24ACD5910;
LABEL_2:
  v2 = *(v0 + 288);
  (*(v0 + 424))(*(v0 + 320), *(v0 + 304));
  sub_24AC212F4(v2, &qword_27EF9E048, v1);

  MEMORY[0x24C22CE30](v3);
  if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24ACD0720();
  }

  v4 = *(v0 + 408);
  sub_24ACD0730();

  while (1)
  {

    v12 = *(v0 + 416);
    v13 = *(v0 + 240);
    if (v12 == *(v0 + 368))
    {
      break;
    }

    *(v0 + 400) = v13;
    v14 = *(v0 + 360);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C22D1B0](v12);
    }

    else
    {
      if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v5 = *(v14 + 8 * v12 + 32);
    }

    *(v0 + 408) = v5;
    *(v0 + 416) = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return MEMORY[0x2822008A0](v5, v14, v6, v7, v8, v9, v10, v11);
    }

    v15 = *(v0 + 376);
    v16 = *(v0 + 280);
    v17 = v5;
    v18 = [v17 identifier];
    sub_24ACD03F0();

    v65 = type metadata accessor for Peripheral(0);
    sub_24ACD0000();
    if (*(*(v16 + v15) + 16))
    {
      v19 = *(v0 + 336);

      sub_24AC2AC60(v19);
      if (v20)
      {
        v21 = *(v0 + 336);
        v23 = *(v0 + 304);
        v22 = *(v0 + 312);

        v24 = *(v22 + 8);

        v24(v21, v23);
        goto LABEL_18;
      }
    }

    v25 = *(v0 + 384);
    v26 = *(v0 + 336);
    v27 = *(v0 + 304);
    v28 = *(v0 + 312);
    v29 = v1;
    v30 = *(v0 + 280);
    v31 = *(v28 + 8);
    *(v0 + 424) = v31;
    *(v0 + 432) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v26, v27);
    v32 = [v17 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v33 = *(v30 + v25);
    v1 = v29;
    if (*(v33 + 16))
    {
      v34 = *(v0 + 328);

      sub_24AC2AC60(v34);
      if ((v35 & 1) == 0)
      {

        goto LABEL_22;
      }

      v36 = *(v0 + 328);
      v37 = *(v0 + 304);

      v31(v36, v37);
LABEL_18:

      MEMORY[0x24C22CE30](v38);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
    }

    else
    {
LABEL_22:
      v31(*(v0 + 328), *(v0 + 304));
      if (![v17 delegate])
      {
        goto LABEL_29;
      }

      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (!swift_dynamicCastClass() || !swift_weakLoadStrong())
      {
        swift_unknownObjectRelease();
LABEL_29:
        v40 = *(v0 + 376);
        v41 = *(v0 + 288);
        v42 = *(v0 + 280);
        v43 = sub_24ACD0090();
        (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
        v44 = [v17 identifier];
        sub_24ACD03F0();

        sub_24ACD0000();
        if (*(*(v42 + v40) + 16))
        {
          v45 = *(v0 + 320);

          sub_24AC2AC60(v45);
          if ((v46 & 1) == 0)
          {

            goto LABEL_32;
          }

LABEL_34:

          goto LABEL_2;
        }

LABEL_32:
        v47 = *(v0 + 280);
        if (*(*(v47 + *(v0 + 384)) + 16))
        {
          v48 = *(v0 + 320);

          sub_24AC2AC60(v48);
          if (v49)
          {
            goto LABEL_34;
          }

          v47 = *(v0 + 280);
        }

        v52 = *(v0 + 392);
        if (*(*(v47 + v52) + 16))
        {
          v53 = *(v0 + 320);

          sub_24AC2AC60(v53);
          LOBYTE(v53) = v54;

          if (v53)
          {
            v55 = *(v0 + 320);
            v56 = *(v0 + 280);
            v57 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
            v58 = swift_task_alloc();
            *(v0 + 464) = v58;
            *(v58 + 16) = v56;
            *(v58 + 24) = v55;
            v59 = swift_task_alloc();
            *(v0 + 472) = v59;
            *v59 = v0;
            v59[1] = sub_24AC8AF3C;
            v9 = sub_24ACA261C;
            v5 = (v0 + 264);
            v8 = 0x800000024ACDA2F0;
            v14 = v56;
            v6 = v57;
LABEL_44:
            v7 = 0xD000000000000055;
            v10 = v58;
            v11 = v65;

            return MEMORY[0x2822008A0](v5, v14, v6, v7, v8, v9, v10, v11);
          }

          v52 = *(v0 + 392);
          v47 = *(v0 + 280);
        }

        v60 = *(v0 + 320);
        v61 = *(v0 + 288);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = *(v47 + v52);
        *(v47 + v52) = 0x8000000000000000;
        sub_24AC63DEC(MEMORY[0x277D84F90], v60, isUniquelyReferenced_nonNull_native);
        *(v47 + v52) = v66;
        swift_endAccess();
        v63 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
        v58 = swift_task_alloc();
        *(v0 + 440) = v58;
        *(v58 + 16) = v47;
        *(v58 + 24) = v60;
        *(v58 + 32) = v17;
        *(v58 + 40) = v61;
        *(v58 + 48) = 1;
        *(v58 + 56) = 0;
        *(v58 + 64) = 0;
        *(v58 + 72) = 1;
        v64 = swift_task_alloc();
        *(v0 + 448) = v64;
        *v64 = v0;
        v64[1] = sub_24AC89BE4;
        v9 = sub_24ACA2608;
        v5 = (v0 + 256);
        v8 = 0x800000024ACDA2F0;
        v14 = v47;
        v6 = v63;
        goto LABEL_44;
      }

      MEMORY[0x24C22CE30](v39);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
      swift_unknownObjectRelease();
    }
  }

  v50 = *(v0 + 8);

  return v50(v13);
}

uint64_t sub_24AC8AE64()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 288);
  (*(v0 + 424))(*(v0 + 320), *(v0 + 304));
  sub_24AC212F4(v2, &qword_27EF9E048, &qword_24ACD5910);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AC8AF3C()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);

    v4 = sub_24AC8A564;
  }

  else
  {
    v3 = *(v2 + 280);

    v4 = sub_24AC89D34;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC8B08C(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_24AC2B8F8(0, &qword_27EF9E6F0, 0x277CBE060);
  **(*(v2 + 64) + 40) = sub_24ACD0700();

  return MEMORY[0x282200948](v2);
}

uint64_t sub_24AC8B110(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v2[36] = swift_task_alloc();
  v2[37] = sub_24ACD0420();
  v2[38] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v2[39] = v3;
  v2[40] = *(v3 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC8B25C, v1, 0);
}

uint64_t sub_24AC8B25C()
{
  v14 = v0;
  v1 = sub_24AC81B94(&v11);
  if (v11 == 5 || (v1 = sub_24AC81B94(&v12), v12 > 5u))
  {
    v6 = v0[35];
    v0[30] = MEMORY[0x277D84F90];
    v7 = *(v6 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
    v0[44] = v7;
    if (v7)
    {
      v8 = v7;
      v9 = sub_24ACD06F0();
      v0[45] = v9;
      v0[2] = v0;
      v0[7] = v0 + 31;
      v0[3] = sub_24AC8B4FC;
      v10 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5E0, &qword_24ACD5920);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_24AC8B08C;
      v0[13] = &block_descriptor_21;
      v0[14] = v10;
      [v8 retrievePeripheralsWithFindMyIds:v9 completion:v0 + 10];
      v1 = (v0 + 2);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v1);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    v3 = v2;
    sub_24AC81B94(v13);
    *v3 = v13[0];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24AC8B4FC()
{
  v1 = *(*v0 + 280);

  return MEMORY[0x2822009F8](sub_24AC8B5F0, v1, 0);
}

uint64_t sub_24AC8B5F0()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[31];
  v0[46] = v3;

  if (v3 >> 62)
  {
LABEL_47:
    v64 = sub_24ACD0B30();
    v0[47] = v64;
    if (v64)
    {
      goto LABEL_3;
    }

LABEL_48:
    v7 = MEMORY[0x277D84F90];
LABEL_49:

    v65 = v0[1];

    return v65(v7);
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[47] = v4;
  if (!v4)
  {
    goto LABEL_48;
  }

LABEL_3:
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  v0[48] = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  v0[49] = v5;
  v0[50] = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[51] = v7;
    v13 = v0[46];
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C22D1B0](v6);
    }

    else
    {
      if (v6 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v14 = *(v13 + 8 * v6 + 32);
    }

    v0[52] = v14;
    v0[53] = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v15 = v0[48];
    v16 = v0[35];
    v17 = v14;
    v18 = [v17 identifier];
    sub_24ACD03F0();

    v19 = type metadata accessor for Peripheral(0);
    sub_24ACD0000();
    if (!*(*(v16 + v15) + 16))
    {
      break;
    }

    v20 = v0[43];

    sub_24AC2AC60(v20);
    if ((v21 & 1) == 0)
    {

      break;
    }

    v8 = v0[43];
    v10 = v0[39];
    v9 = v0[40];

    v11 = *(v9 + 8);

    v11(v8, v10);
LABEL_5:

    MEMORY[0x24C22CE30](v12);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24ACD0720();
    }

    sub_24ACD0730();

LABEL_8:

    v6 = v0[53];
    v7 = v0[30];
    if (v6 == v0[47])
    {
      goto LABEL_49;
    }
  }

  v22 = v0[49];
  v23 = v0[43];
  v24 = v0[39];
  v25 = v0[40];
  v26 = v0[35];
  v27 = *(v25 + 8);
  v0[54] = v27;
  v0[55] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v23, v24);
  v28 = [v17 identifier];

  sub_24ACD03F0();
  sub_24ACD0000();
  if (!*(*(v26 + v22) + 16))
  {
    goto LABEL_21;
  }

  v29 = v0[42];

  sub_24AC2AC60(v29);
  if (v30)
  {
    v31 = v0[42];
    v32 = v0[39];

    v27(v31, v32);
    goto LABEL_5;
  }

LABEL_21:
  v27(v0[42], v0[39]);
  if (![v17 delegate])
  {
    goto LABEL_28;
  }

  type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
  if (swift_dynamicCastClass() && swift_weakLoadStrong())
  {

    MEMORY[0x24C22CE30](v33);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24ACD0720();
    }

    sub_24ACD0730();
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  swift_unknownObjectRelease();
LABEL_28:
  v34 = v0[48];
  v35 = v0[35];
  v36 = v0[36];
  v37 = sub_24ACD0090();
  (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
  v38 = [v17 identifier];
  sub_24ACD03F0();

  sub_24ACD0000();
  if (*(*(v35 + v34) + 16))
  {
    v39 = v0[41];

    sub_24AC2AC60(v39);
    if ((v40 & 1) == 0)
    {

      goto LABEL_31;
    }

LABEL_33:

    v44 = v0[36];
    (v0[54])(v0[41], v0[39]);
    sub_24AC212F4(v44, &qword_27EF9E048, &qword_24ACD5910);

    MEMORY[0x24C22CE30](v45);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24ACD0720();
    }

    v46 = v0[52];
    sub_24ACD0730();

    goto LABEL_8;
  }

LABEL_31:
  v41 = v0[35];
  if (!*(*(v41 + v0[49]) + 16))
  {
    goto LABEL_37;
  }

  v42 = v0[41];

  sub_24AC2AC60(v42);
  if (v43)
  {
    goto LABEL_33;
  }

  v41 = v0[35];
LABEL_37:
  v47 = v0[50];
  if (*(*(v41 + v47) + 16))
  {
    v48 = v0[41];

    sub_24AC2AC60(v48);
    LOBYTE(v48) = v49;

    if (v48)
    {
      v50 = v0[41];
      v51 = v0[35];
      v52 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
      v53 = swift_task_alloc();
      v0[59] = v53;
      *(v53 + 16) = v51;
      *(v53 + 24) = v50;
      v54 = swift_task_alloc();
      v0[60] = v54;
      *v54 = v0;
      v54[1] = sub_24AC8D068;
      v55 = sub_24ACA261C;
      v56 = v0 + 33;
      v57 = v51;
      v58 = v52;
      goto LABEL_42;
    }

    v47 = v0[50];
    v41 = v0[35];
  }

  v59 = v0[41];
  v60 = v0[36];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = *(v41 + v47);
  *(v41 + v47) = 0x8000000000000000;
  sub_24AC63DEC(MEMORY[0x277D84F90], v59, isUniquelyReferenced_nonNull_native);
  *(v41 + v47) = v67;
  swift_endAccess();
  v62 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v53 = swift_task_alloc();
  v0[56] = v53;
  *(v53 + 16) = v41;
  *(v53 + 24) = v59;
  *(v53 + 32) = v17;
  *(v53 + 40) = v60;
  *(v53 + 48) = 1;
  *(v53 + 56) = 0;
  *(v53 + 64) = 0;
  *(v53 + 72) = 1;
  v63 = swift_task_alloc();
  v0[57] = v63;
  *v63 = v0;
  v63[1] = sub_24AC8BEB8;
  v55 = sub_24ACA2608;
  v56 = v0 + 32;
  v57 = v41;
  v58 = v62;
LABEL_42:

  return MEMORY[0x2822008A0](v56, v57, v58, 0xD000000000000055, 0x800000024ACDA2F0, v55, v53, v19);
}

uint64_t sub_24AC8BEB8()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);

    v4 = sub_24ACA2604;
  }

  else
  {
    v3 = *(v2 + 280);

    v4 = sub_24AC8C83C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC8C008()
{
  v1 = &qword_24ACD5910;
LABEL_2:
  v2 = *(v0 + 288);
  (*(v0 + 432))(*(v0 + 328), *(v0 + 312));
  sub_24AC212F4(v2, &qword_27EF9E048, v1);

  MEMORY[0x24C22CE30](v3);
  if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24ACD0720();
  }

  v4 = *(v0 + 416);
  sub_24ACD0730();

  while (1)
  {

    v12 = *(v0 + 424);
    v13 = *(v0 + 240);
    if (v12 == *(v0 + 376))
    {
      break;
    }

    *(v0 + 408) = v13;
    v14 = *(v0 + 368);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C22D1B0](v12);
    }

    else
    {
      if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v5 = *(v14 + 8 * v12 + 32);
    }

    *(v0 + 416) = v5;
    *(v0 + 424) = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return MEMORY[0x2822008A0](v5, v14, v6, v7, v8, v9, v10, v11);
    }

    v15 = *(v0 + 384);
    v16 = *(v0 + 280);
    v17 = v5;
    v18 = [v17 identifier];
    sub_24ACD03F0();

    v65 = type metadata accessor for Peripheral(0);
    sub_24ACD0000();
    if (*(*(v16 + v15) + 16))
    {
      v19 = *(v0 + 344);

      sub_24AC2AC60(v19);
      if (v20)
      {
        v21 = *(v0 + 344);
        v23 = *(v0 + 312);
        v22 = *(v0 + 320);

        v24 = *(v22 + 8);

        v24(v21, v23);
        goto LABEL_18;
      }
    }

    v25 = *(v0 + 392);
    v26 = *(v0 + 344);
    v27 = *(v0 + 312);
    v28 = *(v0 + 320);
    v29 = v1;
    v30 = *(v0 + 280);
    v31 = *(v28 + 8);
    *(v0 + 432) = v31;
    *(v0 + 440) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v26, v27);
    v32 = [v17 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v33 = *(v30 + v25);
    v1 = v29;
    if (*(v33 + 16))
    {
      v34 = *(v0 + 336);

      sub_24AC2AC60(v34);
      if ((v35 & 1) == 0)
      {

        goto LABEL_22;
      }

      v36 = *(v0 + 336);
      v37 = *(v0 + 312);

      v31(v36, v37);
LABEL_18:

      MEMORY[0x24C22CE30](v38);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
    }

    else
    {
LABEL_22:
      v31(*(v0 + 336), *(v0 + 312));
      if (![v17 delegate])
      {
        goto LABEL_29;
      }

      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (!swift_dynamicCastClass() || !swift_weakLoadStrong())
      {
        swift_unknownObjectRelease();
LABEL_29:
        v40 = *(v0 + 384);
        v41 = *(v0 + 280);
        v42 = *(v0 + 288);
        v43 = sub_24ACD0090();
        (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
        v44 = [v17 identifier];
        sub_24ACD03F0();

        sub_24ACD0000();
        if (*(*(v41 + v40) + 16))
        {
          v45 = *(v0 + 328);

          sub_24AC2AC60(v45);
          if ((v46 & 1) == 0)
          {

            goto LABEL_32;
          }

LABEL_34:

          goto LABEL_2;
        }

LABEL_32:
        v47 = *(v0 + 280);
        if (*(*(v47 + *(v0 + 392)) + 16))
        {
          v48 = *(v0 + 328);

          sub_24AC2AC60(v48);
          if (v49)
          {
            goto LABEL_34;
          }

          v47 = *(v0 + 280);
        }

        v52 = *(v0 + 400);
        if (*(*(v47 + v52) + 16))
        {
          v53 = *(v0 + 328);

          sub_24AC2AC60(v53);
          LOBYTE(v53) = v54;

          v47 = *(v0 + 280);
          if (v53)
          {
            v55 = *(v0 + 328);
            v56 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
            v57 = swift_task_alloc();
            *(v0 + 472) = v57;
            *(v57 + 16) = v47;
            *(v57 + 24) = v55;
            v58 = swift_task_alloc();
            *(v0 + 480) = v58;
            *v58 = v0;
            v58[1] = sub_24AC8D068;
            v9 = sub_24ACA261C;
            v5 = (v0 + 264);
            v8 = 0x800000024ACDA2F0;
            v14 = v47;
            v6 = v56;
            v7 = 0xD000000000000055;
            v10 = v57;
LABEL_44:
            v11 = v65;

            return MEMORY[0x2822008A0](v5, v14, v6, v7, v8, v9, v10, v11);
          }

          v52 = *(v0 + 400);
        }

        v59 = *(v0 + 328);
        v60 = *(v0 + 288);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = *(v47 + v52);
        *(v47 + v52) = 0x8000000000000000;
        sub_24AC63DEC(MEMORY[0x277D84F90], v59, isUniquelyReferenced_nonNull_native);
        *(v47 + v52) = v66;
        swift_endAccess();
        v62 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
        v63 = swift_task_alloc();
        *(v0 + 448) = v63;
        *(v63 + 16) = v47;
        *(v63 + 24) = v59;
        *(v63 + 32) = v17;
        *(v63 + 40) = v60;
        *(v63 + 48) = 1;
        *(v63 + 56) = 0;
        *(v63 + 64) = 0;
        *(v63 + 72) = 1;
        v64 = swift_task_alloc();
        *(v0 + 456) = v64;
        *v64 = v0;
        v64[1] = sub_24AC8BEB8;
        v9 = sub_24ACA2608;
        v5 = (v0 + 256);
        v8 = 0x800000024ACDA2F0;
        v14 = v47;
        v6 = v62;
        v7 = 0xD000000000000055;
        v10 = v63;
        goto LABEL_44;
      }

      MEMORY[0x24C22CE30](v39);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
      swift_unknownObjectRelease();
    }
  }

  v50 = *(v0 + 8);

  return v50(v13);
}

uint64_t sub_24AC8C83C()
{
  v1 = &qword_24ACD5910;
LABEL_2:
  v2 = *(v0 + 288);
  (*(v0 + 432))(*(v0 + 328), *(v0 + 312));
  sub_24AC212F4(v2, &qword_27EF9E048, v1);

  MEMORY[0x24C22CE30](v3);
  if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24ACD0720();
  }

  v4 = *(v0 + 416);
  sub_24ACD0730();

  while (1)
  {

    v12 = *(v0 + 424);
    v13 = *(v0 + 240);
    if (v12 == *(v0 + 376))
    {
      break;
    }

    *(v0 + 408) = v13;
    v14 = *(v0 + 368);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C22D1B0](v12);
    }

    else
    {
      if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v5 = *(v14 + 8 * v12 + 32);
    }

    *(v0 + 416) = v5;
    *(v0 + 424) = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return MEMORY[0x2822008A0](v5, v14, v6, v7, v8, v9, v10, v11);
    }

    v15 = *(v0 + 384);
    v16 = *(v0 + 280);
    v17 = v5;
    v18 = [v17 identifier];
    sub_24ACD03F0();

    v65 = type metadata accessor for Peripheral(0);
    sub_24ACD0000();
    if (*(*(v16 + v15) + 16))
    {
      v19 = *(v0 + 344);

      sub_24AC2AC60(v19);
      if (v20)
      {
        v21 = *(v0 + 344);
        v23 = *(v0 + 312);
        v22 = *(v0 + 320);

        v24 = *(v22 + 8);

        v24(v21, v23);
        goto LABEL_18;
      }
    }

    v25 = *(v0 + 392);
    v26 = *(v0 + 344);
    v27 = *(v0 + 312);
    v28 = *(v0 + 320);
    v29 = v1;
    v30 = *(v0 + 280);
    v31 = *(v28 + 8);
    *(v0 + 432) = v31;
    *(v0 + 440) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v26, v27);
    v32 = [v17 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v33 = *(v30 + v25);
    v1 = v29;
    if (*(v33 + 16))
    {
      v34 = *(v0 + 336);

      sub_24AC2AC60(v34);
      if ((v35 & 1) == 0)
      {

        goto LABEL_22;
      }

      v36 = *(v0 + 336);
      v37 = *(v0 + 312);

      v31(v36, v37);
LABEL_18:

      MEMORY[0x24C22CE30](v38);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
    }

    else
    {
LABEL_22:
      v31(*(v0 + 336), *(v0 + 312));
      if (![v17 delegate])
      {
        goto LABEL_29;
      }

      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (!swift_dynamicCastClass() || !swift_weakLoadStrong())
      {
        swift_unknownObjectRelease();
LABEL_29:
        v40 = *(v0 + 384);
        v41 = *(v0 + 280);
        v42 = *(v0 + 288);
        v43 = sub_24ACD0090();
        (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
        v44 = [v17 identifier];
        sub_24ACD03F0();

        sub_24ACD0000();
        if (*(*(v41 + v40) + 16))
        {
          v45 = *(v0 + 328);

          sub_24AC2AC60(v45);
          if ((v46 & 1) == 0)
          {

            goto LABEL_32;
          }

LABEL_34:

          goto LABEL_2;
        }

LABEL_32:
        v47 = *(v0 + 280);
        if (*(*(v47 + *(v0 + 392)) + 16))
        {
          v48 = *(v0 + 328);

          sub_24AC2AC60(v48);
          if (v49)
          {
            goto LABEL_34;
          }

          v47 = *(v0 + 280);
        }

        v52 = *(v0 + 400);
        if (*(*(v47 + v52) + 16))
        {
          v53 = *(v0 + 328);

          sub_24AC2AC60(v53);
          LOBYTE(v53) = v54;

          if (v53)
          {
            v55 = *(v0 + 328);
            v56 = *(v0 + 280);
            v57 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
            v58 = swift_task_alloc();
            *(v0 + 472) = v58;
            *(v58 + 16) = v56;
            *(v58 + 24) = v55;
            v59 = swift_task_alloc();
            *(v0 + 480) = v59;
            *v59 = v0;
            v59[1] = sub_24AC8D068;
            v9 = sub_24ACA261C;
            v5 = (v0 + 264);
            v8 = 0x800000024ACDA2F0;
            v14 = v56;
            v6 = v57;
LABEL_44:
            v7 = 0xD000000000000055;
            v10 = v58;
            v11 = v65;

            return MEMORY[0x2822008A0](v5, v14, v6, v7, v8, v9, v10, v11);
          }

          v52 = *(v0 + 400);
          v47 = *(v0 + 280);
        }

        v60 = *(v0 + 328);
        v61 = *(v0 + 288);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = *(v47 + v52);
        *(v47 + v52) = 0x8000000000000000;
        sub_24AC63DEC(MEMORY[0x277D84F90], v60, isUniquelyReferenced_nonNull_native);
        *(v47 + v52) = v66;
        swift_endAccess();
        v63 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
        v58 = swift_task_alloc();
        *(v0 + 448) = v58;
        *(v58 + 16) = v47;
        *(v58 + 24) = v60;
        *(v58 + 32) = v17;
        *(v58 + 40) = v61;
        *(v58 + 48) = 1;
        *(v58 + 56) = 0;
        *(v58 + 64) = 0;
        *(v58 + 72) = 1;
        v64 = swift_task_alloc();
        *(v0 + 456) = v64;
        *v64 = v0;
        v64[1] = sub_24AC8BEB8;
        v9 = sub_24ACA2608;
        v5 = (v0 + 256);
        v8 = 0x800000024ACDA2F0;
        v14 = v47;
        v6 = v63;
        goto LABEL_44;
      }

      MEMORY[0x24C22CE30](v39);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
      swift_unknownObjectRelease();
    }
  }

  v50 = *(v0 + 8);

  return v50(v13);
}

uint64_t sub_24AC8D068()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);

    v4 = sub_24ACA2600;
  }

  else
  {
    v3 = *(v2 + 280);

    v4 = sub_24AC8C008;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC8D1B8(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v2[36] = swift_task_alloc();
  v2[37] = sub_24ACD0420();
  v2[38] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v2[39] = v3;
  v2[40] = *(v3 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC8D304, v1, 0);
}

uint64_t sub_24AC8D304()
{
  v14 = v0;
  v1 = sub_24AC81B94(&v11);
  if (v11 == 5 || (v1 = sub_24AC81B94(&v12), v12 > 5u))
  {
    v6 = v0[35];
    v0[30] = MEMORY[0x277D84F90];
    v7 = *(v6 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
    v0[44] = v7;
    if (v7)
    {
      v8 = v7;
      v9 = sub_24ACD06F0();
      v0[45] = v9;
      v0[2] = v0;
      v0[7] = v0 + 31;
      v0[3] = sub_24AC8D5A4;
      v10 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5E0, &qword_24ACD5920);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_24AC8B08C;
      v0[13] = &block_descriptor_29;
      v0[14] = v10;
      [v8 retrievePeripheralsWithIdentifiers:v9 completion:v0 + 10];
      v1 = (v0 + 2);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v1);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    v3 = v2;
    sub_24AC81B94(v13);
    *v3 = v13[0];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24AC8D5A4()
{
  v1 = *(*v0 + 280);

  return MEMORY[0x2822009F8](sub_24AC8D698, v1, 0);
}

uint64_t sub_24AC8D698()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[31];
  v0[46] = v3;

  if (v3 >> 62)
  {
LABEL_47:
    v64 = sub_24ACD0B30();
    v0[47] = v64;
    if (v64)
    {
      goto LABEL_3;
    }

LABEL_48:
    v7 = MEMORY[0x277D84F90];
LABEL_49:

    v65 = v0[1];

    return v65(v7);
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[47] = v4;
  if (!v4)
  {
    goto LABEL_48;
  }

LABEL_3:
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  v0[48] = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  v0[49] = v5;
  v0[50] = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[51] = v7;
    v13 = v0[46];
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C22D1B0](v6);
    }

    else
    {
      if (v6 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v14 = *(v13 + 8 * v6 + 32);
    }

    v0[52] = v14;
    v0[53] = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v15 = v0[48];
    v16 = v0[35];
    v17 = v14;
    v18 = [v17 identifier];
    sub_24ACD03F0();

    v19 = type metadata accessor for Peripheral(0);
    sub_24ACD0000();
    if (!*(*(v16 + v15) + 16))
    {
      break;
    }

    v20 = v0[43];

    sub_24AC2AC60(v20);
    if ((v21 & 1) == 0)
    {

      break;
    }

    v8 = v0[43];
    v10 = v0[39];
    v9 = v0[40];

    v11 = *(v9 + 8);

    v11(v8, v10);
LABEL_5:

    MEMORY[0x24C22CE30](v12);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24ACD0720();
    }

    sub_24ACD0730();

LABEL_8:

    v6 = v0[53];
    v7 = v0[30];
    if (v6 == v0[47])
    {
      goto LABEL_49;
    }
  }

  v22 = v0[49];
  v23 = v0[43];
  v24 = v0[39];
  v25 = v0[40];
  v26 = v0[35];
  v27 = *(v25 + 8);
  v0[54] = v27;
  v0[55] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v23, v24);
  v28 = [v17 identifier];

  sub_24ACD03F0();
  sub_24ACD0000();
  if (!*(*(v26 + v22) + 16))
  {
    goto LABEL_21;
  }

  v29 = v0[42];

  sub_24AC2AC60(v29);
  if (v30)
  {
    v31 = v0[42];
    v32 = v0[39];

    v27(v31, v32);
    goto LABEL_5;
  }

LABEL_21:
  v27(v0[42], v0[39]);
  if (![v17 delegate])
  {
    goto LABEL_28;
  }

  type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
  if (swift_dynamicCastClass() && swift_weakLoadStrong())
  {

    MEMORY[0x24C22CE30](v33);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24ACD0720();
    }

    sub_24ACD0730();
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  swift_unknownObjectRelease();
LABEL_28:
  v34 = v0[48];
  v35 = v0[35];
  v36 = v0[36];
  v37 = sub_24ACD0090();
  (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
  v38 = [v17 identifier];
  sub_24ACD03F0();

  sub_24ACD0000();
  if (*(*(v35 + v34) + 16))
  {
    v39 = v0[41];

    sub_24AC2AC60(v39);
    if ((v40 & 1) == 0)
    {

      goto LABEL_31;
    }

LABEL_33:

    v44 = v0[36];
    (v0[54])(v0[41], v0[39]);
    sub_24AC212F4(v44, &qword_27EF9E048, &qword_24ACD5910);

    MEMORY[0x24C22CE30](v45);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24ACD0720();
    }

    v46 = v0[52];
    sub_24ACD0730();

    goto LABEL_8;
  }

LABEL_31:
  v41 = v0[35];
  if (!*(*(v41 + v0[49]) + 16))
  {
    goto LABEL_37;
  }

  v42 = v0[41];

  sub_24AC2AC60(v42);
  if (v43)
  {
    goto LABEL_33;
  }

  v41 = v0[35];
LABEL_37:
  v47 = v0[50];
  if (*(*(v41 + v47) + 16))
  {
    v48 = v0[41];

    sub_24AC2AC60(v48);
    LOBYTE(v48) = v49;

    if (v48)
    {
      v50 = v0[41];
      v51 = v0[35];
      v52 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
      v53 = swift_task_alloc();
      v0[59] = v53;
      *(v53 + 16) = v51;
      *(v53 + 24) = v50;
      v54 = swift_task_alloc();
      v0[60] = v54;
      *v54 = v0;
      v54[1] = sub_24AC8F2C8;
      v55 = sub_24ACA261C;
      v56 = v0 + 33;
      v57 = v51;
      v58 = v52;
      goto LABEL_42;
    }

    v47 = v0[50];
    v41 = v0[35];
  }

  v59 = v0[41];
  v60 = v0[36];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = *(v41 + v47);
  *(v41 + v47) = 0x8000000000000000;
  sub_24AC63DEC(MEMORY[0x277D84F90], v59, isUniquelyReferenced_nonNull_native);
  *(v41 + v47) = v67;
  swift_endAccess();
  v62 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v53 = swift_task_alloc();
  v0[56] = v53;
  *(v53 + 16) = v41;
  *(v53 + 24) = v59;
  *(v53 + 32) = v17;
  *(v53 + 40) = v60;
  *(v53 + 48) = 1;
  *(v53 + 56) = 0;
  *(v53 + 64) = 0;
  *(v53 + 72) = 1;
  v63 = swift_task_alloc();
  v0[57] = v63;
  *v63 = v0;
  v63[1] = sub_24AC8DF60;
  v55 = sub_24ACA2608;
  v56 = v0 + 32;
  v57 = v41;
  v58 = v62;
LABEL_42:

  return MEMORY[0x2822008A0](v56, v57, v58, 0xD000000000000055, 0x800000024ACDA2F0, v55, v53, v19);
}

uint64_t sub_24AC8DF60()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);

    v4 = sub_24AC8F1EC;
  }

  else
  {
    v3 = *(v2 + 280);

    v4 = sub_24AC8E9C0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC8E0B0()
{
  v1 = &qword_24ACD5910;
LABEL_2:
  v2 = *(v0 + 288);
  (*(v0 + 432))(*(v0 + 328), *(v0 + 312));
  sub_24AC212F4(v2, &qword_27EF9E048, v1);

  MEMORY[0x24C22CE30](v3);
  if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24ACD0720();
  }

  v4 = *(v0 + 416);
  sub_24ACD0730();

  while (1)
  {

    v12 = *(v0 + 424);
    v13 = *(v0 + 240);
    if (v12 == *(v0 + 376))
    {
      break;
    }

    *(v0 + 408) = v13;
    v14 = *(v0 + 368);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C22D1B0](v12);
    }

    else
    {
      if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v5 = *(v14 + 8 * v12 + 32);
    }

    *(v0 + 416) = v5;
    *(v0 + 424) = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return MEMORY[0x2822008A0](v5, v14, v6, v7, v8, v9, v10, v11);
    }

    v15 = *(v0 + 384);
    v16 = *(v0 + 280);
    v17 = v5;
    v18 = [v17 identifier];
    sub_24ACD03F0();

    v65 = type metadata accessor for Peripheral(0);
    sub_24ACD0000();
    if (*(*(v16 + v15) + 16))
    {
      v19 = *(v0 + 344);

      sub_24AC2AC60(v19);
      if (v20)
      {
        v21 = *(v0 + 344);
        v23 = *(v0 + 312);
        v22 = *(v0 + 320);

        v24 = *(v22 + 8);

        v24(v21, v23);
        goto LABEL_18;
      }
    }

    v25 = *(v0 + 392);
    v26 = *(v0 + 344);
    v27 = *(v0 + 312);
    v28 = *(v0 + 320);
    v29 = v1;
    v30 = *(v0 + 280);
    v31 = *(v28 + 8);
    *(v0 + 432) = v31;
    *(v0 + 440) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v26, v27);
    v32 = [v17 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v33 = *(v30 + v25);
    v1 = v29;
    if (*(v33 + 16))
    {
      v34 = *(v0 + 336);

      sub_24AC2AC60(v34);
      if ((v35 & 1) == 0)
      {

        goto LABEL_22;
      }

      v36 = *(v0 + 336);
      v37 = *(v0 + 312);

      v31(v36, v37);
LABEL_18:

      MEMORY[0x24C22CE30](v38);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
    }

    else
    {
LABEL_22:
      v31(*(v0 + 336), *(v0 + 312));
      if (![v17 delegate])
      {
        goto LABEL_29;
      }

      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (!swift_dynamicCastClass() || !swift_weakLoadStrong())
      {
        swift_unknownObjectRelease();
LABEL_29:
        v40 = *(v0 + 384);
        v41 = *(v0 + 280);
        v42 = *(v0 + 288);
        v43 = sub_24ACD0090();
        (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
        v44 = [v17 identifier];
        sub_24ACD03F0();

        sub_24ACD0000();
        if (*(*(v41 + v40) + 16))
        {
          v45 = *(v0 + 328);

          sub_24AC2AC60(v45);
          if ((v46 & 1) == 0)
          {

            goto LABEL_32;
          }

LABEL_34:

          goto LABEL_2;
        }

LABEL_32:
        v47 = *(v0 + 280);
        if (*(*(v47 + *(v0 + 392)) + 16))
        {
          v48 = *(v0 + 328);

          sub_24AC2AC60(v48);
          if (v49)
          {
            goto LABEL_34;
          }

          v47 = *(v0 + 280);
        }

        v52 = *(v0 + 400);
        if (*(*(v47 + v52) + 16))
        {
          v53 = *(v0 + 328);

          sub_24AC2AC60(v53);
          LOBYTE(v53) = v54;

          v47 = *(v0 + 280);
          if (v53)
          {
            v55 = *(v0 + 328);
            v56 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
            v57 = swift_task_alloc();
            *(v0 + 472) = v57;
            *(v57 + 16) = v47;
            *(v57 + 24) = v55;
            v58 = swift_task_alloc();
            *(v0 + 480) = v58;
            *v58 = v0;
            v58[1] = sub_24AC8F2C8;
            v9 = sub_24ACA261C;
            v5 = (v0 + 264);
            v8 = 0x800000024ACDA2F0;
            v14 = v47;
            v6 = v56;
            v7 = 0xD000000000000055;
            v10 = v57;
LABEL_44:
            v11 = v65;

            return MEMORY[0x2822008A0](v5, v14, v6, v7, v8, v9, v10, v11);
          }

          v52 = *(v0 + 400);
        }

        v59 = *(v0 + 328);
        v60 = *(v0 + 288);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = *(v47 + v52);
        *(v47 + v52) = 0x8000000000000000;
        sub_24AC63DEC(MEMORY[0x277D84F90], v59, isUniquelyReferenced_nonNull_native);
        *(v47 + v52) = v66;
        swift_endAccess();
        v62 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
        v63 = swift_task_alloc();
        *(v0 + 448) = v63;
        *(v63 + 16) = v47;
        *(v63 + 24) = v59;
        *(v63 + 32) = v17;
        *(v63 + 40) = v60;
        *(v63 + 48) = 1;
        *(v63 + 56) = 0;
        *(v63 + 64) = 0;
        *(v63 + 72) = 1;
        v64 = swift_task_alloc();
        *(v0 + 456) = v64;
        *v64 = v0;
        v64[1] = sub_24AC8DF60;
        v9 = sub_24ACA2608;
        v5 = (v0 + 256);
        v8 = 0x800000024ACDA2F0;
        v14 = v47;
        v6 = v62;
        v7 = 0xD000000000000055;
        v10 = v63;
        goto LABEL_44;
      }

      MEMORY[0x24C22CE30](v39);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
      swift_unknownObjectRelease();
    }
  }

  v50 = *(v0 + 8);

  return v50(v13);
}

uint64_t sub_24AC8E8E4()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 288);
  (*(v0 + 432))(*(v0 + 328), *(v0 + 312));
  sub_24AC212F4(v2, &qword_27EF9E048, &qword_24ACD5910);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AC8E9C0()
{
  v1 = &qword_24ACD5910;
LABEL_2:
  v2 = *(v0 + 288);
  (*(v0 + 432))(*(v0 + 328), *(v0 + 312));
  sub_24AC212F4(v2, &qword_27EF9E048, v1);

  MEMORY[0x24C22CE30](v3);
  if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24ACD0720();
  }

  v4 = *(v0 + 416);
  sub_24ACD0730();

  while (1)
  {

    v12 = *(v0 + 424);
    v13 = *(v0 + 240);
    if (v12 == *(v0 + 376))
    {
      break;
    }

    *(v0 + 408) = v13;
    v14 = *(v0 + 368);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C22D1B0](v12);
    }

    else
    {
      if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v5 = *(v14 + 8 * v12 + 32);
    }

    *(v0 + 416) = v5;
    *(v0 + 424) = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return MEMORY[0x2822008A0](v5, v14, v6, v7, v8, v9, v10, v11);
    }

    v15 = *(v0 + 384);
    v16 = *(v0 + 280);
    v17 = v5;
    v18 = [v17 identifier];
    sub_24ACD03F0();

    v65 = type metadata accessor for Peripheral(0);
    sub_24ACD0000();
    if (*(*(v16 + v15) + 16))
    {
      v19 = *(v0 + 344);

      sub_24AC2AC60(v19);
      if (v20)
      {
        v21 = *(v0 + 344);
        v23 = *(v0 + 312);
        v22 = *(v0 + 320);

        v24 = *(v22 + 8);

        v24(v21, v23);
        goto LABEL_18;
      }
    }

    v25 = *(v0 + 392);
    v26 = *(v0 + 344);
    v27 = *(v0 + 312);
    v28 = *(v0 + 320);
    v29 = v1;
    v30 = *(v0 + 280);
    v31 = *(v28 + 8);
    *(v0 + 432) = v31;
    *(v0 + 440) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v26, v27);
    v32 = [v17 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v33 = *(v30 + v25);
    v1 = v29;
    if (*(v33 + 16))
    {
      v34 = *(v0 + 336);

      sub_24AC2AC60(v34);
      if ((v35 & 1) == 0)
      {

        goto LABEL_22;
      }

      v36 = *(v0 + 336);
      v37 = *(v0 + 312);

      v31(v36, v37);
LABEL_18:

      MEMORY[0x24C22CE30](v38);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
    }

    else
    {
LABEL_22:
      v31(*(v0 + 336), *(v0 + 312));
      if (![v17 delegate])
      {
        goto LABEL_29;
      }

      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (!swift_dynamicCastClass() || !swift_weakLoadStrong())
      {
        swift_unknownObjectRelease();
LABEL_29:
        v40 = *(v0 + 384);
        v41 = *(v0 + 280);
        v42 = *(v0 + 288);
        v43 = sub_24ACD0090();
        (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
        v44 = [v17 identifier];
        sub_24ACD03F0();

        sub_24ACD0000();
        if (*(*(v41 + v40) + 16))
        {
          v45 = *(v0 + 328);

          sub_24AC2AC60(v45);
          if ((v46 & 1) == 0)
          {

            goto LABEL_32;
          }

LABEL_34:

          goto LABEL_2;
        }

LABEL_32:
        v47 = *(v0 + 280);
        if (*(*(v47 + *(v0 + 392)) + 16))
        {
          v48 = *(v0 + 328);

          sub_24AC2AC60(v48);
          if (v49)
          {
            goto LABEL_34;
          }

          v47 = *(v0 + 280);
        }

        v52 = *(v0 + 400);
        if (*(*(v47 + v52) + 16))
        {
          v53 = *(v0 + 328);

          sub_24AC2AC60(v53);
          LOBYTE(v53) = v54;

          if (v53)
          {
            v55 = *(v0 + 328);
            v56 = *(v0 + 280);
            v57 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
            v58 = swift_task_alloc();
            *(v0 + 472) = v58;
            *(v58 + 16) = v56;
            *(v58 + 24) = v55;
            v59 = swift_task_alloc();
            *(v0 + 480) = v59;
            *v59 = v0;
            v59[1] = sub_24AC8F2C8;
            v9 = sub_24ACA261C;
            v5 = (v0 + 264);
            v8 = 0x800000024ACDA2F0;
            v14 = v56;
            v6 = v57;
LABEL_44:
            v7 = 0xD000000000000055;
            v10 = v58;
            v11 = v65;

            return MEMORY[0x2822008A0](v5, v14, v6, v7, v8, v9, v10, v11);
          }

          v52 = *(v0 + 400);
          v47 = *(v0 + 280);
        }

        v60 = *(v0 + 328);
        v61 = *(v0 + 288);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = *(v47 + v52);
        *(v47 + v52) = 0x8000000000000000;
        sub_24AC63DEC(MEMORY[0x277D84F90], v60, isUniquelyReferenced_nonNull_native);
        *(v47 + v52) = v66;
        swift_endAccess();
        v63 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
        v58 = swift_task_alloc();
        *(v0 + 448) = v58;
        *(v58 + 16) = v47;
        *(v58 + 24) = v60;
        *(v58 + 32) = v17;
        *(v58 + 40) = v61;
        *(v58 + 48) = 1;
        *(v58 + 56) = 0;
        *(v58 + 64) = 0;
        *(v58 + 72) = 1;
        v64 = swift_task_alloc();
        *(v0 + 456) = v64;
        *v64 = v0;
        v64[1] = sub_24AC8DF60;
        v9 = sub_24ACA2608;
        v5 = (v0 + 256);
        v8 = 0x800000024ACDA2F0;
        v14 = v47;
        v6 = v63;
        goto LABEL_44;
      }

      MEMORY[0x24C22CE30](v39);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
      swift_unknownObjectRelease();
    }
  }

  v50 = *(v0 + 8);

  return v50(v13);
}

uint64_t sub_24AC8F1EC()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 288);
  (*(v0 + 432))(*(v0 + 328), *(v0 + 312));
  sub_24AC212F4(v2, &qword_27EF9E048, &qword_24ACD5910);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AC8F2C8()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);

    v4 = sub_24AC8E8E4;
  }

  else
  {
    v3 = *(v2 + 280);

    v4 = sub_24AC8E0B0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC8F418(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v2[36] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = sub_24ACD0420();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC8F5F8, v1, 0);
}

uint64_t sub_24AC8F5F8()
{
  v39 = v0;
  sub_24AC81B94(v38);
  if (LOBYTE(v38[0]) == 5 || (sub_24AC81B94(v38), LOBYTE(v38[0]) > 5u))
  {
    v5 = v0[34];
    v6 = MEMORY[0x277D84F90];
    v0[30] = MEMORY[0x277D84F90];
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = v0[46];
      v9 = v0[43];
      v38[0] = v6;
      sub_24ACD0AB0();
      v10 = objc_opt_self();
      v11 = *(v8 + 16);
      v8 += 16;
      v36 = v11;
      v37 = v10;
      v12 = v5 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
      v34 = (v9 + 8);
      v35 = *(v8 + 56);
      v13 = (v8 - 8);
      do
      {
        v14 = v0[47];
        v16 = v0[44];
        v15 = v0[45];
        v17 = v0[42];
        v36(v14, v12, v15);
        sub_24ACCFFE0();
        v18 = sub_24ACD03D0();
        v19 = [v37 UUIDWithNSUUID_];

        (*v34)(v16, v17);
        (*v13)(v14, v15);
        sub_24ACD0A90();
        sub_24ACD0AC0();
        sub_24ACD0AD0();
        sub_24ACD0AA0();
        v12 += v35;
        --v7;
      }

      while (v7);
      v6 = v38[0];
    }

    if (qword_2814AD8B0 != -1)
    {
      swift_once();
    }

    v20 = sub_24ACD0490();
    __swift_project_value_buffer(v20, qword_2814AD8C0);

    v21 = sub_24ACD0470();
    v22 = sub_24ACD0900();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38[0] = v24;
      *v23 = 136315138;
      v25 = sub_24AC2B8F8(0, &qword_27EF9E150, 0x277CBE0A0);
      v26 = MEMORY[0x24C22CE70](v6, v25);
      v28 = sub_24AC29E20(v26, v27, v38);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_24AC18000, v21, v22, "Calling CBCentralManager.retrieveConnectedPeripherals() with services: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x24C22DC60](v24, -1, -1);
      MEMORY[0x24C22DC60](v23, -1, -1);
    }

    v30 = *(v0[35] + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
    v0[48] = v30;
    if (v30)
    {
      v31 = v30;
      sub_24AC919E4(v6);

      v32 = sub_24ACD06F0();
      v0[49] = v32;

      v0[2] = v0;
      v0[7] = v0 + 31;
      v0[3] = sub_24AC8FB48;
      v33 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5E0, &qword_24ACD5920);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_24AC8B08C;
      v0[13] = &block_descriptor_37;
      v0[14] = v33;
      [v31 retrieveConnectedPeripheralsWithServices:v32 completion:v0 + 10];
      v29 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v29);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    v2 = v1;
    sub_24AC81B94(v38);
    *v2 = v38[0];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_24AC8FB48()
{
  v1 = *(*v0 + 280);

  return MEMORY[0x2822009F8](sub_24AC8FC3C, v1, 0);
}

uint64_t sub_24AC8FC3C()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[31];
  v0[50] = v3;

  if (v3 >> 62)
  {
LABEL_47:
    v64 = sub_24ACD0B30();
    v0[51] = v64;
    if (v64)
    {
      goto LABEL_3;
    }

LABEL_48:
    v7 = MEMORY[0x277D84F90];
LABEL_49:

    v65 = v0[1];

    return v65(v7);
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[51] = v4;
  if (!v4)
  {
    goto LABEL_48;
  }

LABEL_3:
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  v0[52] = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  v0[53] = v5;
  v0[54] = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[55] = v7;
    v13 = v0[50];
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C22D1B0](v6);
    }

    else
    {
      if (v6 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v14 = *(v13 + 8 * v6 + 32);
    }

    v0[56] = v14;
    v0[57] = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v15 = v0[52];
    v16 = v0[35];
    v17 = v14;
    v18 = [v17 identifier];
    sub_24ACD03F0();

    v19 = type metadata accessor for Peripheral(0);
    sub_24ACD0000();
    if (!*(*(v16 + v15) + 16))
    {
      break;
    }

    v20 = v0[41];

    sub_24AC2AC60(v20);
    if ((v21 & 1) == 0)
    {

      break;
    }

    v8 = v0[41];
    v10 = v0[37];
    v9 = v0[38];

    v11 = *(v9 + 8);

    v11(v8, v10);
LABEL_5:

    MEMORY[0x24C22CE30](v12);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24ACD0720();
    }

    sub_24ACD0730();

LABEL_8:

    v6 = v0[57];
    v7 = v0[30];
    if (v6 == v0[51])
    {
      goto LABEL_49;
    }
  }

  v22 = v0[53];
  v23 = v0[41];
  v24 = v0[37];
  v25 = v0[38];
  v26 = v0[35];
  v27 = *(v25 + 8);
  v0[58] = v27;
  v0[59] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v23, v24);
  v28 = [v17 identifier];

  sub_24ACD03F0();
  sub_24ACD0000();
  if (!*(*(v26 + v22) + 16))
  {
    goto LABEL_21;
  }

  v29 = v0[40];

  sub_24AC2AC60(v29);
  if (v30)
  {
    v31 = v0[40];
    v32 = v0[37];

    v27(v31, v32);
    goto LABEL_5;
  }

LABEL_21:
  v27(v0[40], v0[37]);
  if (![v17 delegate])
  {
    goto LABEL_28;
  }

  type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
  if (swift_dynamicCastClass() && swift_weakLoadStrong())
  {

    MEMORY[0x24C22CE30](v33);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24ACD0720();
    }

    sub_24ACD0730();
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  swift_unknownObjectRelease();
LABEL_28:
  v34 = v0[52];
  v35 = v0[35];
  v36 = v0[36];
  v37 = sub_24ACD0090();
  (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
  v38 = [v17 identifier];
  sub_24ACD03F0();

  sub_24ACD0000();
  if (*(*(v35 + v34) + 16))
  {
    v39 = v0[39];

    sub_24AC2AC60(v39);
    if ((v40 & 1) == 0)
    {

      goto LABEL_31;
    }

LABEL_33:

    v44 = v0[36];
    (v0[58])(v0[39], v0[37]);
    sub_24AC212F4(v44, &qword_27EF9E048, &qword_24ACD5910);

    MEMORY[0x24C22CE30](v45);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24ACD0720();
    }

    v46 = v0[56];
    sub_24ACD0730();

    goto LABEL_8;
  }

LABEL_31:
  v41 = v0[35];
  if (!*(*(v41 + v0[53]) + 16))
  {
    goto LABEL_37;
  }

  v42 = v0[39];

  sub_24AC2AC60(v42);
  if (v43)
  {
    goto LABEL_33;
  }

  v41 = v0[35];
LABEL_37:
  v47 = v0[54];
  if (*(*(v41 + v47) + 16))
  {
    v48 = v0[39];

    sub_24AC2AC60(v48);
    LOBYTE(v48) = v49;

    if (v48)
    {
      v50 = v0[39];
      v51 = v0[35];
      v52 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
      v53 = swift_task_alloc();
      v0[63] = v53;
      *(v53 + 16) = v51;
      *(v53 + 24) = v50;
      v54 = swift_task_alloc();
      v0[64] = v54;
      *v54 = v0;
      v54[1] = sub_24AC91894;
      v55 = sub_24ACA261C;
      v56 = v0 + 33;
      v57 = v51;
      v58 = v52;
      goto LABEL_42;
    }

    v47 = v0[54];
    v41 = v0[35];
  }

  v59 = v0[39];
  v60 = v0[36];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = *(v41 + v47);
  *(v41 + v47) = 0x8000000000000000;
  sub_24AC63DEC(MEMORY[0x277D84F90], v59, isUniquelyReferenced_nonNull_native);
  *(v41 + v47) = v67;
  swift_endAccess();
  v62 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v53 = swift_task_alloc();
  v0[60] = v53;
  *(v53 + 16) = v41;
  *(v53 + 24) = v59;
  *(v53 + 32) = v17;
  *(v53 + 40) = v60;
  *(v53 + 48) = 1;
  *(v53 + 56) = 0;
  *(v53 + 64) = 0;
  *(v53 + 72) = 1;
  v63 = swift_task_alloc();
  v0[61] = v63;
  *v63 = v0;
  v63[1] = sub_24AC9050C;
  v55 = sub_24ACA2608;
  v56 = v0 + 32;
  v57 = v41;
  v58 = v62;
LABEL_42:

  return MEMORY[0x2822008A0](v56, v57, v58, 0xD000000000000055, 0x800000024ACDA2F0, v55, v53, v19);
}

uint64_t sub_24AC9050C()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);

    v4 = sub_24AC917B0;
  }

  else
  {
    v3 = *(v2 + 280);

    v4 = sub_24AC90F7C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC9065C()
{
  v1 = &qword_24ACD5910;
LABEL_2:
  v2 = *(v0 + 288);
  (*(v0 + 464))(*(v0 + 312), *(v0 + 296));
  sub_24AC212F4(v2, &qword_27EF9E048, v1);

  MEMORY[0x24C22CE30](v3);
  if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24ACD0720();
  }

  v4 = *(v0 + 448);
  sub_24ACD0730();

  while (1)
  {

    v12 = *(v0 + 456);
    v13 = *(v0 + 240);
    if (v12 == *(v0 + 408))
    {
      break;
    }

    *(v0 + 440) = v13;
    v14 = *(v0 + 400);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C22D1B0](v12);
    }

    else
    {
      if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v5 = *(v14 + 8 * v12 + 32);
    }

    *(v0 + 448) = v5;
    *(v0 + 456) = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return MEMORY[0x2822008A0](v5, v14, v6, v7, v8, v9, v10, v11);
    }

    v15 = *(v0 + 416);
    v16 = *(v0 + 280);
    v17 = v5;
    v18 = [v17 identifier];
    sub_24ACD03F0();

    v65 = type metadata accessor for Peripheral(0);
    sub_24ACD0000();
    if (*(*(v16 + v15) + 16))
    {
      v19 = *(v0 + 328);

      sub_24AC2AC60(v19);
      if (v20)
      {
        v21 = *(v0 + 328);
        v23 = *(v0 + 296);
        v22 = *(v0 + 304);

        v24 = *(v22 + 8);

        v24(v21, v23);
        goto LABEL_18;
      }
    }

    v25 = *(v0 + 424);
    v26 = *(v0 + 328);
    v27 = *(v0 + 296);
    v28 = *(v0 + 304);
    v29 = v1;
    v30 = *(v0 + 280);
    v31 = *(v28 + 8);
    *(v0 + 464) = v31;
    *(v0 + 472) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v26, v27);
    v32 = [v17 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v33 = *(v30 + v25);
    v1 = v29;
    if (*(v33 + 16))
    {
      v34 = *(v0 + 320);

      sub_24AC2AC60(v34);
      if ((v35 & 1) == 0)
      {

        goto LABEL_22;
      }

      v36 = *(v0 + 320);
      v37 = *(v0 + 296);

      v31(v36, v37);
LABEL_18:

      MEMORY[0x24C22CE30](v38);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
    }

    else
    {
LABEL_22:
      v31(*(v0 + 320), *(v0 + 296));
      if (![v17 delegate])
      {
        goto LABEL_29;
      }

      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (!swift_dynamicCastClass() || !swift_weakLoadStrong())
      {
        swift_unknownObjectRelease();
LABEL_29:
        v40 = *(v0 + 416);
        v41 = *(v0 + 280);
        v42 = *(v0 + 288);
        v43 = sub_24ACD0090();
        (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
        v44 = [v17 identifier];
        sub_24ACD03F0();

        sub_24ACD0000();
        if (*(*(v41 + v40) + 16))
        {
          v45 = *(v0 + 312);

          sub_24AC2AC60(v45);
          if ((v46 & 1) == 0)
          {

            goto LABEL_32;
          }

LABEL_34:

          goto LABEL_2;
        }

LABEL_32:
        v47 = *(v0 + 280);
        if (*(*(v47 + *(v0 + 424)) + 16))
        {
          v48 = *(v0 + 312);

          sub_24AC2AC60(v48);
          if (v49)
          {
            goto LABEL_34;
          }

          v47 = *(v0 + 280);
        }

        v52 = *(v0 + 432);
        if (*(*(v47 + v52) + 16))
        {
          v53 = *(v0 + 312);

          sub_24AC2AC60(v53);
          LOBYTE(v53) = v54;

          v47 = *(v0 + 280);
          if (v53)
          {
            v55 = *(v0 + 312);
            v56 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
            v57 = swift_task_alloc();
            *(v0 + 504) = v57;
            *(v57 + 16) = v47;
            *(v57 + 24) = v55;
            v58 = swift_task_alloc();
            *(v0 + 512) = v58;
            *v58 = v0;
            v58[1] = sub_24AC91894;
            v9 = sub_24ACA261C;
            v5 = (v0 + 264);
            v8 = 0x800000024ACDA2F0;
            v14 = v47;
            v6 = v56;
            v7 = 0xD000000000000055;
            v10 = v57;
LABEL_44:
            v11 = v65;

            return MEMORY[0x2822008A0](v5, v14, v6, v7, v8, v9, v10, v11);
          }

          v52 = *(v0 + 432);
        }

        v59 = *(v0 + 312);
        v60 = *(v0 + 288);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = *(v47 + v52);
        *(v47 + v52) = 0x8000000000000000;
        sub_24AC63DEC(MEMORY[0x277D84F90], v59, isUniquelyReferenced_nonNull_native);
        *(v47 + v52) = v66;
        swift_endAccess();
        v62 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
        v63 = swift_task_alloc();
        *(v0 + 480) = v63;
        *(v63 + 16) = v47;
        *(v63 + 24) = v59;
        *(v63 + 32) = v17;
        *(v63 + 40) = v60;
        *(v63 + 48) = 1;
        *(v63 + 56) = 0;
        *(v63 + 64) = 0;
        *(v63 + 72) = 1;
        v64 = swift_task_alloc();
        *(v0 + 488) = v64;
        *v64 = v0;
        v64[1] = sub_24AC9050C;
        v9 = sub_24ACA2608;
        v5 = (v0 + 256);
        v8 = 0x800000024ACDA2F0;
        v14 = v47;
        v6 = v62;
        v7 = 0xD000000000000055;
        v10 = v63;
        goto LABEL_44;
      }

      MEMORY[0x24C22CE30](v39);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
      swift_unknownObjectRelease();
    }
  }

  v50 = *(v0 + 8);

  return v50(v13);
}

uint64_t sub_24AC90E98()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 288);
  (*(v0 + 464))(*(v0 + 312), *(v0 + 296));
  sub_24AC212F4(v2, &qword_27EF9E048, &qword_24ACD5910);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AC90F7C()
{
  v1 = &qword_24ACD5910;
LABEL_2:
  v2 = *(v0 + 288);
  (*(v0 + 464))(*(v0 + 312), *(v0 + 296));
  sub_24AC212F4(v2, &qword_27EF9E048, v1);

  MEMORY[0x24C22CE30](v3);
  if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24ACD0720();
  }

  v4 = *(v0 + 448);
  sub_24ACD0730();

  while (1)
  {

    v12 = *(v0 + 456);
    v13 = *(v0 + 240);
    if (v12 == *(v0 + 408))
    {
      break;
    }

    *(v0 + 440) = v13;
    v14 = *(v0 + 400);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C22D1B0](v12);
    }

    else
    {
      if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v5 = *(v14 + 8 * v12 + 32);
    }

    *(v0 + 448) = v5;
    *(v0 + 456) = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return MEMORY[0x2822008A0](v5, v14, v6, v7, v8, v9, v10, v11);
    }

    v15 = *(v0 + 416);
    v16 = *(v0 + 280);
    v17 = v5;
    v18 = [v17 identifier];
    sub_24ACD03F0();

    v65 = type metadata accessor for Peripheral(0);
    sub_24ACD0000();
    if (*(*(v16 + v15) + 16))
    {
      v19 = *(v0 + 328);

      sub_24AC2AC60(v19);
      if (v20)
      {
        v21 = *(v0 + 328);
        v23 = *(v0 + 296);
        v22 = *(v0 + 304);

        v24 = *(v22 + 8);

        v24(v21, v23);
        goto LABEL_18;
      }
    }

    v25 = *(v0 + 424);
    v26 = *(v0 + 328);
    v27 = *(v0 + 296);
    v28 = *(v0 + 304);
    v29 = v1;
    v30 = *(v0 + 280);
    v31 = *(v28 + 8);
    *(v0 + 464) = v31;
    *(v0 + 472) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v26, v27);
    v32 = [v17 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v33 = *(v30 + v25);
    v1 = v29;
    if (*(v33 + 16))
    {
      v34 = *(v0 + 320);

      sub_24AC2AC60(v34);
      if ((v35 & 1) == 0)
      {

        goto LABEL_22;
      }

      v36 = *(v0 + 320);
      v37 = *(v0 + 296);

      v31(v36, v37);
LABEL_18:

      MEMORY[0x24C22CE30](v38);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
    }

    else
    {
LABEL_22:
      v31(*(v0 + 320), *(v0 + 296));
      if (![v17 delegate])
      {
        goto LABEL_29;
      }

      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (!swift_dynamicCastClass() || !swift_weakLoadStrong())
      {
        swift_unknownObjectRelease();
LABEL_29:
        v40 = *(v0 + 416);
        v41 = *(v0 + 280);
        v42 = *(v0 + 288);
        v43 = sub_24ACD0090();
        (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
        v44 = [v17 identifier];
        sub_24ACD03F0();

        sub_24ACD0000();
        if (*(*(v41 + v40) + 16))
        {
          v45 = *(v0 + 312);

          sub_24AC2AC60(v45);
          if ((v46 & 1) == 0)
          {

            goto LABEL_32;
          }

LABEL_34:

          goto LABEL_2;
        }

LABEL_32:
        v47 = *(v0 + 280);
        if (*(*(v47 + *(v0 + 424)) + 16))
        {
          v48 = *(v0 + 312);

          sub_24AC2AC60(v48);
          if (v49)
          {
            goto LABEL_34;
          }

          v47 = *(v0 + 280);
        }

        v52 = *(v0 + 432);
        if (*(*(v47 + v52) + 16))
        {
          v53 = *(v0 + 312);

          sub_24AC2AC60(v53);
          LOBYTE(v53) = v54;

          if (v53)
          {
            v55 = *(v0 + 312);
            v56 = *(v0 + 280);
            v57 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
            v58 = swift_task_alloc();
            *(v0 + 504) = v58;
            *(v58 + 16) = v56;
            *(v58 + 24) = v55;
            v59 = swift_task_alloc();
            *(v0 + 512) = v59;
            *v59 = v0;
            v59[1] = sub_24AC91894;
            v9 = sub_24ACA261C;
            v5 = (v0 + 264);
            v8 = 0x800000024ACDA2F0;
            v14 = v56;
            v6 = v57;
LABEL_44:
            v7 = 0xD000000000000055;
            v10 = v58;
            v11 = v65;

            return MEMORY[0x2822008A0](v5, v14, v6, v7, v8, v9, v10, v11);
          }

          v52 = *(v0 + 432);
          v47 = *(v0 + 280);
        }

        v60 = *(v0 + 312);
        v61 = *(v0 + 288);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = *(v47 + v52);
        *(v47 + v52) = 0x8000000000000000;
        sub_24AC63DEC(MEMORY[0x277D84F90], v60, isUniquelyReferenced_nonNull_native);
        *(v47 + v52) = v66;
        swift_endAccess();
        v63 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
        v58 = swift_task_alloc();
        *(v0 + 480) = v58;
        *(v58 + 16) = v47;
        *(v58 + 24) = v60;
        *(v58 + 32) = v17;
        *(v58 + 40) = v61;
        *(v58 + 48) = 1;
        *(v58 + 56) = 0;
        *(v58 + 64) = 0;
        *(v58 + 72) = 1;
        v64 = swift_task_alloc();
        *(v0 + 488) = v64;
        *v64 = v0;
        v64[1] = sub_24AC9050C;
        v9 = sub_24ACA2608;
        v5 = (v0 + 256);
        v8 = 0x800000024ACDA2F0;
        v14 = v47;
        v6 = v63;
        goto LABEL_44;
      }

      MEMORY[0x24C22CE30](v39);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
      swift_unknownObjectRelease();
    }
  }

  v50 = *(v0 + 8);

  return v50(v13);
}

uint64_t sub_24AC917B0()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 288);
  (*(v0 + 464))(*(v0 + 312), *(v0 + 296));
  sub_24AC212F4(v2, &qword_27EF9E048, &qword_24ACD5910);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AC91894()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);

    v4 = sub_24AC90E98;
  }

  else
  {
    v3 = *(v2 + 280);

    v4 = sub_24AC9065C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

char *sub_24AC919E4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24ACD0B30();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_24AC64D68(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x24C22D1B0](i, a1);
        sub_24AC2B8F8(0, &qword_27EF9E150, 0x277CBE0A0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_24AC64D68((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_24AC1BFB8(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_24AC2B8F8(0, &qword_27EF9E150, 0x277CBE0A0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_24AC64D68((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_24AC1BFB8(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AC91BEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214BC;

  return sub_24AC9F2E4();
}

uint64_t sub_24AC91C8C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC91D20(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AC91D40, v1, 0);
}

uint64_t sub_24AC91D40()
{
  sub_24AC81B94(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC91DA0(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  type metadata accessor for CentralManager(0);
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_24ACA25F8;

  return sub_24AC81DE4(0, (v1 + 16));
}

uint64_t sub_24AC91E64(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E568, &qword_24ACD8D60);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC91F30, v1, 0);
}

uint64_t sub_24AC91F30()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  swift_allocObject();
  swift_weakInit();
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_24ACD0820();

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AC9202C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24AC20274;

  return sub_24AC85D58(a1, a2, a3, a4);
}

uint64_t sub_24AC920EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24AC87484(a1);
}

uint64_t sub_24AC92180(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24AC88E54(a1);
}

uint64_t sub_24AC92214(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24AC8B110(a1);
}

uint64_t sub_24AC922A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24AC8D1B8(a1);
}

uint64_t sub_24AC9236C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_id;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24AC923F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC283BC;

  return sub_24ACC4098();
}

unint64_t sub_24AC924B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E700, &qword_24ACD5E08);
    v2 = sub_24ACD0B60();
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
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_24AC2B370(*(a1 + 48) + 40 * v12, v27);
        sub_24AC2B940(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_24AC2B370(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_24AC2B940(v25 + 8, v20);
        sub_24AC212F4(v24, &qword_27EF9E768, &qword_24ACD5EC8);
        v21 = v18;
        sub_24AC1BFB8(v20, v22);
        v13 = v21;
        sub_24AC1BFB8(v22, v23);
        sub_24AC1BFB8(v23, &v21);
        result = sub_24AC2AB50(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_24AC1BFB8(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_24AC1BFB8(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_24AC212F4(v24, &qword_27EF9E768, &qword_24ACD5EC8);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_24AC92794(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DD68, &qword_24ACD37B0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (*(v14 + 16))
  {

    v15 = sub_24AC2AC60(v30);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);

      (*(v10 + 16))(v12, a1, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_24AC1D55C(0, v17[2] + 1, 1, v17);
      }

      v19 = v17[2];
      v18 = v17[3];
      if (v19 >= v18 >> 1)
      {
        v17 = sub_24AC1D55C((v18 > 1), v19 + 1, 1, v17);
      }

      v17[2] = v19 + 1;
      (*(v10 + 32))(v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v19, v12, v9);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v3 + v13);
      *(v3 + v13) = 0x8000000000000000;
      sub_24AC63DEC(v17, v30, isUniquelyReferenced_nonNull_native);
      *(v3 + v13) = v31;
      swift_endAccess();
      return;
    }
  }

  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v21 = sub_24ACD0490();
  __swift_project_value_buffer(v21, qword_2814AD8C0);
  (*(v6 + 16))(v8, v30, v5);
  v22 = sub_24ACD0470();
  v23 = sub_24ACD0920();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32[0] = v25;
    *v24 = 136446210;
    sub_24AC2B6A8(&qword_27EF9E108, &qword_27EF9E040, qword_24ACD4100, MEMORY[0x277D088C8]);
    v26 = sub_24ACD0C20();
    v28 = v27;
    (*(v6 + 8))(v8, v5);
    v29 = sub_24AC29E20(v26, v28, v32);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_24AC18000, v22, v23, "Expected peripheralCreationInProgress[%{public}s] to have a value!", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x24C22DC60](v25, -1, -1);
    MEMORY[0x24C22DC60](v24, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_24AC92BEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v45 = a7;
  v46 = a8;
  v40 = a5;
  v42 = a4;
  v43 = a9;
  v44 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v36 = v12;
  v13 = *(v12 - 8);
  v41 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v37 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v38 = *(v16 - 8);
  v17 = *(v38 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v36 - v21;
  v39 = &v36 - v21;
  sub_24AC92794(a1, a3);
  v23 = sub_24ACD07C0();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  sub_24AC2B5DC(v40, v19, &qword_27EF9E048, &qword_24ACD5910);
  (*(v13 + 16))(v15, a3, v12);
  v24 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v25 = (*(v38 + 80) + 48) & ~*(v38 + 80);
  v26 = v25 + v17;
  v27 = (v25 + v17) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v13 + 80) + v28 + 9) & ~*(v13 + 80);
  v30 = swift_allocObject();
  v30[2] = a2;
  v30[3] = v24;
  v31 = v42;
  v30[4] = a2;
  v30[5] = v31;
  sub_24ACA1C8C(v19, v30 + v25);
  *(v30 + v26) = v44;
  v32 = v46;
  *(v30 + v27 + 8) = v45;
  v33 = v30 + v28;
  *v33 = v32;
  v33[8] = v43 & 1;
  (*(v13 + 32))(v30 + v29, v37, v36);

  swift_retain_n();
  v34 = v31;
  sub_24AC7EA6C(0, 0, v39, &unk_24ACD5DD0, v30);
}

uint64_t sub_24AC92F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 313) = v15;
  *(v8 + 208) = v14;
  *(v8 + 216) = v16;
  *(v8 + 312) = a7;
  *(v8 + 192) = a6;
  *(v8 + 200) = a8;
  *(v8 + 176) = a4;
  *(v8 + 184) = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DD68, &qword_24ACD37B0);
  *(v8 + 224) = v10;
  *(v8 + 232) = *(v10 - 8);
  *(v8 + 240) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  *(v8 + 248) = v11;
  *(v8 + 256) = *(v11 - 8);
  *(v8 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  *(v8 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC930E8, a4, 0);
}

uint64_t sub_24AC930E8()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 313);
  v3 = *(v0 + 192);
  v4 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6F8, &qword_24ACD5DD8);
  inited = swift_initStackObject();
  *(v0 + 280) = inited;
  *(inited + 16) = v4;
  sub_24AC2B5DC(v3, v1, &qword_27EF9E048, &qword_24ACD5910);
  type metadata accessor for Peripheral(0);
  swift_allocObject();
  v6 = v4;

  v7 = swift_task_alloc();
  *(v0 + 288) = v7;
  *v7 = v0;
  v7[1] = sub_24AC93230;
  v8 = *(v0 + 272);
  v9 = *(v0 + 200);
  v10 = *(v0 + 208);
  v11 = *(v0 + 312);
  v12 = *(v0 + 176);

  return sub_24AC2D50C(v12, inited, v8, v11, v9, v10, v2 & 1);
}

uint64_t sub_24AC93230(uint64_t a1)
{
  v3 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  v4 = v3[22];
  if (v1)
  {
    v5 = sub_24AC93610;
  }

  else
  {
    v5 = sub_24AC93348;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC93348()
{
  v1 = v0[37];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  v5 = v0[22];
  v6 = *(v3 + 16);
  v6(v2, v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id, v4);
  v7 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v5 + v7);
  *(v5 + v7) = 0x8000000000000000;
  sub_24AC635A0(v1, v2, isUniquelyReferenced_nonNull_native);
  (*(v3 + 8))(v2, v4);
  *(v5 + v7) = v29;
  swift_endAccess();
  v9 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  v10 = *(v5 + v9);
  if (*(v10 + 16))
  {
    v11 = v0[27];

    v12 = sub_24AC2AC60(v11);
    if (v13)
    {
      v28 = v6;
      v14 = *(*(v10 + 56) + 8 * v12);

      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = v0[29];
        v19 = *(v16 + 16);
        v17 = v16 + 16;
        v18 = v19;
        v20 = v14 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
        v21 = *(v17 + 56);
        do
        {
          v22 = v0[37];
          v23 = v0[30];
          v24 = v0[28];
          v18(v23, v20, v24);
          v0[21] = v22;

          sub_24ACD0760();
          (*(v17 - 8))(v23, v24);
          v20 += v21;
          --v15;
        }

        while (v15);
      }

      v6 = v28;
    }

    else
    {
    }
  }

  v25 = v0[33];
  v6(v25, v0[27], v0[31]);
  swift_beginAccess();
  sub_24AC7F940(0, v25);
  swift_endAccess();

  v26 = v0[1];

  return v26();
}

uint64_t sub_24AC93610()
{
  v1 = v0[38];
  v2 = v0[22];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  v6 = v1;
  if (v5)
  {
    v7 = v0[27];

    v8 = sub_24AC2AC60(v7);
    if (v9)
    {
      v10 = *(*(v4 + 56) + 8 * v8);

      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v0[29];
        v15 = *(v12 + 16);
        v14 = v12 + 16;
        v13 = v15;
        v16 = v10 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
        v17 = *(v14 + 56);
        do
        {
          v18 = v0[38];
          v19 = v0[30];
          v20 = v0[28];
          v13(v19, v16, v20);
          v0[20] = v18;
          v21 = v18;
          sub_24ACD0750();
          (*(v14 - 8))(v19, v20);
          v16 += v17;
          --v11;
        }

        while (v11);
      }
    }
  }

  v22 = v0[38];
  v23 = v0[33];
  (*(v0[32] + 16))(v23, v0[27], v0[31]);
  swift_beginAccess();
  sub_24AC7F940(0, v23);
  swift_endAccess();

  v24 = v0[1];

  return v24();
}

uint64_t sub_24AC93820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_24ACD07C0();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;

  sub_24AC7EA6C(0, 0, v8, a4, v10);
}

uint64_t sub_24AC93940()
{
  sub_24AC939A0();
  v1 = *(v0 + 8);

  return v1();
}

void *sub_24AC939A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E548, &qword_24ACD5870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v8 = sub_24ACD0490();
  __swift_project_value_buffer(v8, qword_2814AD8C0);
  v9 = sub_24ACD0470();
  v10 = sub_24ACD0930();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24AC18000, v9, v10, "Cancelling connectionEvents stream", v11, 2u);
    MEMORY[0x24C22DC60](v11, -1, -1);
  }

  v12 = sub_24ACD0470();
  v13 = sub_24ACD0930();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24AC18000, v12, v13, "Calling CBCentralManager.registerForConnectionEvents() with nil", v14, 2u);
    MEMORY[0x24C22DC60](v14, -1, -1);
  }

  result = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
  if (result)
  {
    [result registerForConnectionEventsWithOptions_];
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    v17 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStream;
    swift_beginAccess();
    sub_24AC463C4(v7, v1 + v17, &unk_27EF9E548, &qword_24ACD5870);
    swift_endAccess();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    v19 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStreamContinuation;
    swift_beginAccess();
    sub_24AC463C4(v4, v1 + v19, &unk_27EF9E558, qword_24ACD5878);
    swift_endAccess();
    v20 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventMonitoringTask;
    if (*(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventMonitoringTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC00, &qword_24ACD4690);
      sub_24ACD0830();
    }

    *(v1 + v20) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AC93D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E568, &qword_24ACD8D60);
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E740, &unk_24ACD5E50);
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F8, &qword_24ACD5640);
  v5[10] = v9;
  v5[11] = *(v9 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC93EDC, a4, 0);
}

uint64_t sub_24AC93EDC()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  swift_allocObject();
  swift_weakInit();
  (*(v6 + 104))(v4, *MEMORY[0x277D85778], v5);
  sub_24ACD0820();

  sub_24ACD0800();
  (*(v2 + 8))(v1, v3);
  v7 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v8 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject;
  v0[13] = v7;
  v0[14] = v8;
  v0[15] = 0;
  v9 = v0[2];
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_24AC940A8;
  v11 = v0[10];

  return MEMORY[0x2822003E8](v0 + 17, v9, v7, v11);
}

uint64_t sub_24AC940A8()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_24AC941B8, v1, 0);
}

uint64_t sub_24AC941B8()
{
  v24 = v0;
  v1 = *(v0 + 136);
  if (v1 != 7)
  {
    v2 = *(v0 + 120);
    sub_24ACD0850();
    if (!v2)
    {
      if ((v1 - 5) <= 1)
      {
        if (qword_2814AD8B0 != -1)
        {
          swift_once();
        }

        v5 = sub_24ACD0490();
        __swift_project_value_buffer(v5, qword_2814AD8C0);

        v6 = sub_24ACD0470();
        v7 = sub_24ACD0930();

        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v23 = v9;
          *v8 = 136446210;
          type metadata accessor for CBConnectionEventMatchingOption(0);
          sub_24AC9FA1C(&qword_2814ACFC0, type metadata accessor for CBConnectionEventMatchingOption, &unk_24ACD369C);
          v10 = sub_24ACD0510();
          v12 = sub_24AC29E20(v10, v11, &v23);

          *(v8 + 4) = v12;
          _os_log_impl(&dword_24AC18000, v6, v7, "Calling CBCentralManager.registerForConnectionEvents(): %{public}s", v8, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v9);
          MEMORY[0x24C22DC60](v9, -1, -1);
          MEMORY[0x24C22DC60](v8, -1, -1);
        }

        v17 = *(*(v0 + 16) + *(v0 + 112));
        if (!v17)
        {
          __break(1u);
          return MEMORY[0x2822003E8](v13, v14, v15, v16);
        }

        type metadata accessor for CBConnectionEventMatchingOption(0);
        sub_24AC9FA1C(&qword_2814ACFC0, type metadata accessor for CBConnectionEventMatchingOption, &unk_24ACD369C);
        v18 = v17;
        v19 = sub_24ACD04F0();
        [v18 registerForConnectionEventsWithOptions_];
      }

      *(v0 + 120) = 0;
      v20 = *(v0 + 104);
      v21 = *(v0 + 16);
      v22 = swift_task_alloc();
      *(v0 + 128) = v22;
      *v22 = v0;
      v22[1] = sub_24AC940A8;
      v16 = *(v0 + 80);
      v13 = v0 + 136;
      v14 = v21;
      v15 = v20;

      return MEMORY[0x2822003E8](v13, v14, v15, v16);
    }
  }

  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AC94588(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DD68, &qword_24ACD37B0);
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5B8, &qword_24ACD58D8);
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E540, &qword_24ACD5868);
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC946F4, v1, 0);
}

uint64_t sub_24AC946F4()
{
  v82 = v0;
  v1 = v0;
  if (qword_2814AD8B0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v2 = *(v1 + 128);
  v3 = sub_24ACD0490();
  __swift_project_value_buffer(v3, qword_2814AD8C0);

  v4 = v2;
  v5 = sub_24ACD0470();
  v6 = sub_24ACD0930();

  v80 = v1;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 128);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v81 = v10;
    *v8 = 136446722;
    v11 = sub_24AC816B0();
    v13 = sub_24AC29E20(v11, v12, &v81);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    *(v8 + 22) = 2082;
    sub_24AC81B94((v80 + 248));
    v16 = sub_24ACD05A0();
    v18 = sub_24AC29E20(v16, v17, &v81);

    *(v8 + 24) = v18;
    _os_log_impl(&dword_24AC18000, v5, v6, "%{public}s Invalidating due to %{public}@. Power state: %{public}s", v8, 0x20u);
    sub_24AC212F4(v9, &qword_27EF9E6A0, &qword_24ACD5590);
    v19 = v9;
    v1 = v80;
    MEMORY[0x24C22DC60](v19, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v10, -1, -1);
    MEMORY[0x24C22DC60](v8, -1, -1);
  }

  v20 = *(v1 + 192);
  v21 = *(v1 + 168);
  v22 = *(v1 + 176);
  v23 = *(v1 + 136);
  v24 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v23 + v24, v20, &qword_27EF9E540, &qword_24ACD5868);
  v25 = (*(v22 + 48))(v20, 1, v21);
  v26 = *(v1 + 192);
  if (v25)
  {
    sub_24AC212F4(*(v1 + 192), &qword_27EF9E540, &qword_24ACD5868);
  }

  else
  {
    v28 = *(v1 + 176);
    v27 = *(v1 + 184);
    v29 = *(v1 + 168);
    v30 = *(v1 + 128);
    (*(v28 + 16))(v27, *(v1 + 192), v29);
    sub_24AC212F4(v26, &qword_27EF9E540, &qword_24ACD5868);
    *(v1 + 120) = v30;
    v31 = v30;
    sub_24ACD08A0();
    (*(v28 + 8))(v27, v29);
  }

  v32 = *(v1 + 152);
  v33 = *(v1 + 136);
  v34 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  v73 = v34;
  v74 = v33;
  v35 = *(v33 + v34);
  v36 = *(v35 + 64);
  v76 = v35 + 64;
  v37 = -1;
  v38 = -1 << *(v35 + 32);
  if (-v38 < 64)
  {
    v37 = ~(-1 << -v38);
  }

  v39 = v37 & v36;
  v75 = (63 - v38) >> 6;
  v78 = v32;
  v40 = (v32 + 8);

  v42 = 0;
  v77 = v41;
  while (v39)
  {
LABEL_15:
    v44 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v45 = *(*(v41 + 56) + ((v42 << 9) | (8 * v44)));
    v46 = *(v45 + 16);
    if (v46)
    {
      v79 = v39;
      v47 = v45 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      v48 = *(v78 + 72);
      v49 = *(v78 + 16);

      do
      {
        v50 = *(v1 + 160);
        v51 = *(v1 + 144);
        v52 = *(v80 + 128);
        v49(v50, v47, v51);
        *(v80 + 112) = v52;
        v53 = v52;
        v1 = v80;
        v54 = v53;
        sub_24ACD0750();
        (*v40)(v50, v51);
        v47 += v48;
        --v46;
      }

      while (v46);

      v41 = v77;
      v39 = v79;
    }
  }

  while (1)
  {
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v43 >= v75)
    {
      break;
    }

    v39 = *(v76 + 8 * v43);
    ++v42;
    if (v39)
    {
      v42 = v43;
      goto LABEL_15;
    }
  }

  v55 = *(v1 + 136);

  v56 = MEMORY[0x277D84F98];
  *(v74 + v73) = MEMORY[0x277D84F98];

  v57 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  *(v1 + 200) = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  swift_beginAccess();
  v58 = *(v55 + v57);
  *(v1 + 208) = v58;
  v59 = *(v58 + 32);
  *(v1 + 249) = v59;
  v60 = -1;
  v61 = -1 << v59;
  if (-(-1 << v59) < 64)
  {
    v60 = ~(-1 << -v61);
  }

  v62 = v60 & *(v58 + 64);

  if (v62)
  {
    v64 = 0;
LABEL_26:
    *(v1 + 216) = v62;
    *(v1 + 224) = v64;
    *(v1 + 232) = *(*(v63 + 56) + ((v64 << 9) | (8 * __clz(__rbit64(v62)))));

    v66 = swift_task_alloc();
    *(v1 + 240) = v66;
    *v66 = v1;
    v66[1] = sub_24AC94D88;
    v67 = *(v1 + 128);

    return sub_24AC39224(v67);
  }

  else
  {
    v65 = 0;
    while (((63 - v61) >> 6) - 1 != v65)
    {
      v64 = v65 + 1;
      v62 = *(v63 + 8 * v65++ + 72);
      if (v62)
      {
        goto LABEL_26;
      }
    }

    v69 = *(v1 + 200);
    v70 = *(v1 + 136);

    *(v70 + v69) = v56;

    v71 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
    swift_beginAccess();
    *(v70 + v71) = v56;

    v72 = *(v1 + 8);

    return v72();
  }
}

uint64_t sub_24AC94D88()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](sub_24AC94E98, v1, 0);
}

uint64_t sub_24AC94E98()
{

  v2 = *(v0 + 224);
  v3 = (*(v0 + 216) - 1) & *(v0 + 216);
  if (v3)
  {
    v4 = *(v0 + 208);
LABEL_7:
    *(v0 + 216) = v3;
    *(v0 + 224) = v2;
    *(v0 + 232) = *(*(v4 + 56) + ((v2 << 9) | (8 * __clz(__rbit64(v3)))));

    v6 = swift_task_alloc();
    *(v0 + 240) = v6;
    *v6 = v0;
    v6[1] = sub_24AC94D88;
    v7 = *(v0 + 128);

    return sub_24AC39224(v7);
  }

  else
  {
    while (1)
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= (((1 << *(v0 + 249)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v0 + 208);
      v3 = *(v4 + 8 * v5 + 64);
      ++v2;
      if (v3)
      {
        v2 = v5;
        goto LABEL_7;
      }
    }

    v8 = *(v0 + 200);
    v9 = *(v0 + 136);

    v10 = MEMORY[0x277D84F98];
    *(v9 + v8) = MEMORY[0x277D84F98];

    v11 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
    swift_beginAccess();
    *(v9 + v11) = v10;

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_24AC95064(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E688, &unk_24ACD5CD0);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC951A4, v1, 0);
}

uint64_t sub_24AC951A4()
{
  v98 = v0;
  v1 = *(v0 + 40);
  *(*(v0 + 48) + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager__state) = v1;
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        if (qword_2814AD8B0 != -1)
        {
          swift_once();
        }

        v30 = sub_24ACD0490();
        __swift_project_value_buffer(v30, qword_2814AD8C0);

        v31 = sub_24ACD0470();
        v32 = sub_24ACD0930();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v97 = v34;
          *v33 = 136446210;
          v35 = sub_24AC816B0();
          v37 = sub_24AC29E20(v35, v36, &v97);

          *(v33 + 4) = v37;
          v0 = v96;
          _os_log_impl(&dword_24AC18000, v31, v32, "%{public}s state is .unauthorized.", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
          MEMORY[0x24C22DC60](v34, -1, -1);
          MEMORY[0x24C22DC60](v33, -1, -1);
        }

        type metadata accessor for CentralManager.Error(0);
        sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
        v10 = swift_allocError();
        *(v0 + 160) = v10;
        swift_storeEnumTagMultiPayload();
        v11 = swift_task_alloc();
        *(v0 + 168) = v11;
        *v11 = v0;
        v12 = sub_24AC96478;
        goto LABEL_44;
      case 4:
        if (qword_2814AD8B0 != -1)
        {
          swift_once();
        }

        v54 = sub_24ACD0490();
        __swift_project_value_buffer(v54, qword_2814AD8C0);

        v55 = sub_24ACD0470();
        v56 = sub_24ACD0930();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v97 = v58;
          *v57 = 136446210;
          v59 = sub_24AC816B0();
          v61 = sub_24AC29E20(v59, v60, &v97);

          *(v57 + 4) = v61;
          v0 = v96;
          _os_log_impl(&dword_24AC18000, v55, v56, "%{public}s state is .poweredOff.", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v58);
          MEMORY[0x24C22DC60](v58, -1, -1);
          MEMORY[0x24C22DC60](v57, -1, -1);
        }

        type metadata accessor for CentralManager.Error(0);
        sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
        v10 = swift_allocError();
        *(v0 + 176) = v10;
        swift_storeEnumTagMultiPayload();
        v11 = swift_task_alloc();
        *(v0 + 184) = v11;
        *v11 = v0;
        v12 = sub_24AC965A4;
        goto LABEL_44;
      case 5:
        if (qword_2814AD8B0 != -1)
        {
          swift_once();
        }

        v13 = sub_24ACD0490();
        __swift_project_value_buffer(v13, qword_2814AD8C0);

        v14 = sub_24ACD0470();
        v15 = sub_24ACD0930();

        if (!os_log_type_enabled(v14, v15))
        {
          goto LABEL_52;
        }

        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v97 = v17;
        *v16 = 136446210;
        v18 = sub_24AC816B0();
        v20 = sub_24AC29E20(v18, v19, &v97);

        *(v16 + 4) = v20;
        v0 = v96;
        v21 = "%{public}s state is .poweredOn.";
        goto LABEL_33;
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        if (qword_2814AD8B0 != -1)
        {
LABEL_73:
          swift_once();
        }

        v22 = sub_24ACD0490();
        __swift_project_value_buffer(v22, qword_2814AD8C0);

        v23 = sub_24ACD0470();
        v24 = sub_24ACD0930();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v97 = v26;
          *v25 = 136446210;
          v27 = sub_24AC816B0();
          v29 = sub_24AC29E20(v27, v28, &v97);

          *(v25 + 4) = v29;
          v0 = v96;
          _os_log_impl(&dword_24AC18000, v23, v24, "%{public}s state is .unknown.", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v26);
          MEMORY[0x24C22DC60](v26, -1, -1);
          MEMORY[0x24C22DC60](v25, -1, -1);
        }

        type metadata accessor for CentralManager.Error(0);
        sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
        v10 = swift_allocError();
        *(v0 + 112) = v10;
        swift_storeEnumTagMultiPayload();
        v11 = swift_task_alloc();
        *(v0 + 120) = v11;
        *v11 = v0;
        v12 = sub_24AC960F4;
        goto LABEL_44;
      case 1:
        if (qword_2814AD8B0 != -1)
        {
          swift_once();
        }

        v46 = sub_24ACD0490();
        __swift_project_value_buffer(v46, qword_2814AD8C0);

        v47 = sub_24ACD0470();
        v48 = sub_24ACD0930();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v97 = v50;
          *v49 = 136446210;
          v51 = sub_24AC816B0();
          v53 = sub_24AC29E20(v51, v52, &v97);

          *(v49 + 4) = v53;
          v0 = v96;
          _os_log_impl(&dword_24AC18000, v47, v48, "%{public}s state is .resetting.", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          MEMORY[0x24C22DC60](v50, -1, -1);
          MEMORY[0x24C22DC60](v49, -1, -1);
        }

        type metadata accessor for CentralManager.Error(0);
        sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
        v10 = swift_allocError();
        *(v0 + 128) = v10;
        swift_storeEnumTagMultiPayload();
        v11 = swift_task_alloc();
        *(v0 + 136) = v11;
        *v11 = v0;
        v12 = sub_24AC96220;
        goto LABEL_44;
      case 2:
        if (qword_2814AD8B0 != -1)
        {
          swift_once();
        }

        v2 = sub_24ACD0490();
        __swift_project_value_buffer(v2, qword_2814AD8C0);

        v3 = sub_24ACD0470();
        v4 = sub_24ACD0930();

        if (os_log_type_enabled(v3, v4))
        {
          v5 = swift_slowAlloc();
          v6 = swift_slowAlloc();
          v97 = v6;
          *v5 = 136446210;
          v7 = sub_24AC816B0();
          v9 = sub_24AC29E20(v7, v8, &v97);

          *(v5 + 4) = v9;
          v0 = v96;
          _os_log_impl(&dword_24AC18000, v3, v4, "%{public}s state is .unsupported.", v5, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v6);
          MEMORY[0x24C22DC60](v6, -1, -1);
          MEMORY[0x24C22DC60](v5, -1, -1);
        }

        type metadata accessor for CentralManager.Error(0);
        sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
        v10 = swift_allocError();
        *(v0 + 144) = v10;
        swift_storeEnumTagMultiPayload();
        v11 = swift_task_alloc();
        *(v0 + 152) = v11;
        *v11 = v0;
        v12 = sub_24AC9634C;
LABEL_44:
        v11[1] = v12;

        return sub_24AC94588(v10);
    }
  }

  if (qword_2814AD8F0 != -1)
  {
    swift_once();
    v1 = *(v0 + 40);
  }

  if (qword_2814AEE28 != v1)
  {
    if (qword_2814AD8B0 != -1)
    {
      swift_once();
    }

    v63 = sub_24ACD0490();
    __swift_project_value_buffer(v63, qword_2814AD8C0);

    v14 = sub_24ACD0470();
    v64 = sub_24ACD0910();

    if (!os_log_type_enabled(v14, v64))
    {
      goto LABEL_52;
    }

    v65 = *(v0 + 40);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v97 = v17;
    *v16 = 136446466;
    v66 = sub_24AC816B0();
    v68 = sub_24AC29E20(v66, v67, &v97);

    *(v16 + 4) = v68;
    v0 = v96;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v65;
    v21 = "%{public}s Unknown CBCentralManager state: %ld";
    v42 = v64;
    v43 = v14;
    v44 = v16;
    v45 = 22;
    goto LABEL_51;
  }

  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v38 = sub_24ACD0490();
  __swift_project_value_buffer(v38, qword_2814AD8C0);

  v14 = sub_24ACD0470();
  v15 = sub_24ACD0930();

  if (!os_log_type_enabled(v14, v15))
  {
    goto LABEL_52;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v97 = v17;
  *v16 = 136446210;
  v39 = sub_24AC816B0();
  v41 = sub_24AC29E20(v39, v40, &v97);

  *(v16 + 4) = v41;
  v0 = v96;
  v21 = "%{public}s state is .restricted.";
LABEL_33:
  v42 = v15;
  v43 = v14;
  v44 = v16;
  v45 = 12;
LABEL_51:
  _os_log_impl(&dword_24AC18000, v43, v42, v21, v44, v45);
  __swift_destroy_boxed_opaque_existential_0(v17);
  MEMORY[0x24C22DC60](v17, -1, -1);
  MEMORY[0x24C22DC60](v16, -1, -1);
LABEL_52:

  v69 = *(v0 + 88);
  v70 = *(v0 + 64);
  v71 = *(v0 + 48);
  v72 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_stateContinuations;
  swift_beginAccess();
  v73 = *(v71 + v72);
  v76 = *(v73 + 64);
  v75 = v73 + 64;
  v74 = v76;
  v77 = -1;
  v78 = -1 << *(*(v71 + v72) + 32);
  if (-v78 < 64)
  {
    v77 = ~(-1 << -v78);
  }

  v79 = v77 & v74;
  v80 = (63 - v78) >> 6;
  v94 = v69;
  v95 = *(v71 + v72);
  v92 = (v69 + 8);
  v93 = (v70 + 8);

  v81 = 0;
  while (v79)
  {
    v0 = v96;
LABEL_66:
    v89 = *(v0 + 96);
    v88 = *(v0 + 104);
    v90 = *(v0 + 80);
    v82 = *(v0 + 40);
    (*(v94 + 16))(v88, *(v95 + 56) + *(v94 + 72) * (__clz(__rbit64(v79)) | (v81 << 6)), v90);
    (*(v94 + 32))(v89, v88, v90);
    if (v82 >= 6)
    {
      if (qword_2814AD8F0 != -1)
      {
        swift_once();
      }

      if (qword_2814AEE28 == *(v0 + 40))
      {
        LOBYTE(v82) = 6;
      }

      else
      {
        LOBYTE(v82) = 0;
      }
    }

    v79 &= v79 - 1;
    v83 = *(v0 + 96);
    v85 = *(v0 + 72);
    v84 = *(v0 + 80);
    v86 = *(v0 + 56);
    *(v0 + 192) = v82;
    sub_24ACD07F0();
    (*v93)(v85, v86);
    (*v92)(v83, v84);
  }

  v0 = v96;
  while (1)
  {
    v87 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (v87 >= v80)
    {
      break;
    }

    v79 = *(v75 + 8 * v87);
    ++v81;
    if (v79)
    {
      v81 = v87;
      goto LABEL_66;
    }
  }

  v91 = *(v96 + 8);

  return v91();
}

uint64_t sub_24AC960F4()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_24ACA25F0, v2, 0);
}

uint64_t sub_24AC96220()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_24ACA25F0, v2, 0);
}

uint64_t sub_24AC9634C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_24ACA25F0, v2, 0);
}

uint64_t sub_24AC96478()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_24ACA25F0, v2, 0);
}

uint64_t sub_24AC965A4()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_24AC966D0, v2, 0);
}

uint64_t sub_24AC966D0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_stateContinuations;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = v5 + 64;
  v7 = -1;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);
  v10 = (63 - v8) >> 6;
  v25 = v1;
  v26 = v5;
  v23 = (v1 + 8);
  v24 = (v2 + 8);

  v12 = 0;
  while (v9)
  {
LABEL_13:
    v20 = *(v0 + 96);
    v19 = *(v0 + 104);
    v21 = *(v0 + 80);
    v13 = *(v0 + 40);
    (*(v25 + 16))(v19, *(v26 + 56) + *(v25 + 72) * (__clz(__rbit64(v9)) | (v12 << 6)), v21);
    (*(v25 + 32))(v20, v19, v21);
    if (v13 >= 6)
    {
      if (qword_2814AD8F0 != -1)
      {
        swift_once();
      }

      if (qword_2814AEE28 == *(v0 + 40))
      {
        LOBYTE(v13) = 6;
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    v9 &= v9 - 1;
    v14 = *(v0 + 96);
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 56);
    *(v0 + 192) = v13;
    sub_24ACD07F0();
    (*v24)(v16, v17);
    result = (*v23)(v14, v15);
  }

  while (1)
  {
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v18 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v18);
    ++v12;
    if (v9)
    {
      v12 = v18;
      goto LABEL_13;
    }
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_24AC96934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[66] = v3;
  v4[65] = a3;
  v4[63] = a1;
  v4[64] = a2;
  v4[67] = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5B8, &qword_24ACD58D8);
  v4[68] = v5;
  v4[69] = *(v5 - 8);
  v4[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E540, &qword_24ACD5868);
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6B8, &qword_24ACD5D78);
  v4[73] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v4[74] = swift_task_alloc();
  v6 = sub_24ACD0090();
  v4[75] = v6;
  v4[76] = *(v6 - 8);
  v4[77] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v7 = sub_24ACD0360();
  v4[80] = v7;
  v4[81] = *(v7 - 8);
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  sub_24ACD0420();
  v4[84] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v4[85] = v8;
  v9 = *(v8 - 8);
  v4[86] = v9;
  v4[87] = *(v9 + 64);
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC96CA0, v3, 0);
}

uint64_t sub_24AC96CA0()
{
  v131 = v0;
  if (qword_27EF9DC60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 504);
  v2 = sub_24ACD0490();
  *(v0 + 728) = v2;
  __swift_project_value_buffer(v2, qword_27EF9E528);
  v3 = v1;

  v4 = sub_24ACD0470();
  v5 = sub_24ACD0900();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 520);
    v7 = *(v0 + 504);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v130 = v10;
    *v8 = 138412802;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2080;
    v11 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5D0, &qword_24ACD5900);
    v12 = sub_24ACD0510();
    v14 = sub_24AC29E20(v12, v13, &v130);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v6;
    _os_log_impl(&dword_24AC18000, v4, v5, "didDiscover: %@ advertisementData: %s, rssi: %ld", v8, 0x20u);
    sub_24AC212F4(v9, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C22DC60](v10, -1, -1);
    MEMORY[0x24C22DC60](v8, -1, -1);
  }

  v15 = *(v0 + 512);
  v16 = sub_24ACD0590();
  if (!*(v15 + 16))
  {

LABEL_14:
    if (qword_2814AD8B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_2814AD8C0);

    v38 = sub_24ACD0470();
    v39 = sub_24ACD0910();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v130 = v41;
      *v40 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5D0, &qword_24ACD5900);
      v42 = sub_24ACD0510();
      v44 = sub_24AC29E20(v42, v43, &v130);

      *(v40 + 4) = v44;
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x24C22DC60](v41, -1, -1);
      MEMORY[0x24C22DC60](v40, -1, -1);
    }

    v45 = *(v0 + 8);

    return v45();
  }

  v18 = sub_24AC2AB50(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

  v21 = *(v0 + 512);
  sub_24AC2B940(*(v21 + 56) + 32 * v18, v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5D0, &qword_24ACD5900);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v124 = v21;
  v22 = *(v0 + 528);
  v23 = [*(v0 + 504) identifier];
  sub_24ACD03F0();

  v126 = type metadata accessor for Peripheral(0);
  sub_24ACD0000();
  sub_24ACD0310();
  v24 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  *(v0 + 736) = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  swift_beginAccess();
  v125 = v22;
  v25 = *(v22 + v24);
  if (*(v25 + 16))
  {
    v26 = *(v0 + 720);

    v27 = sub_24AC2AC60(v26);
    if (v28)
    {
      v29 = *(*(v25 + 56) + 8 * v27);
      swift_retain_n();

      v30 = sub_24ACD0470();
      v31 = sub_24ACD08F0();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v130 = v33;
        *v32 = 136315138;

        v34 = sub_24AC39074();
        v36 = v35;

        v37 = sub_24AC29E20(v34, v36, &v130);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_24AC18000, v30, v31, "centralManager didDiscover existing: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x24C22DC60](v33, -1, -1);
        MEMORY[0x24C22DC60](v32, -1, -1);
      }

      goto LABEL_55;
    }
  }

  v47 = *(v0 + 528);
  v48 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  swift_beginAccess();
  v123 = v47;
  v49 = *(v47 + v48);
  if (*(v49 + 16))
  {
    v50 = *(v0 + 720);

    v51 = sub_24AC2AC60(v50);
    if (v52)
    {
      v29 = *(*(v49 + 56) + 8 * v51);
      swift_retain_n();

      v53 = sub_24ACD0470();
      v54 = sub_24ACD08F0();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v130 = v56;
        *v55 = 136315138;

        v57 = sub_24AC39074();
        v59 = v58;

        v60 = sub_24AC29E20(v57, v59, &v130);

        *(v55 + 4) = v60;
        _os_log_impl(&dword_24AC18000, v53, v54, "centralManager didDiscover connected peripheral: %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x24C22DC60](v56, -1, -1);
        MEMORY[0x24C22DC60](v55, -1, -1);
      }

      goto LABEL_54;
    }
  }

  v61 = sub_24ACD0590();
  if (!*(v15 + 16))
  {
    goto LABEL_36;
  }

  v63 = sub_24AC2AB50(v61, v62);
  v65 = v64;

  if ((v65 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_24AC2B940(*(v124 + 56) + 32 * v63, v0 + 16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  v67 = *(v0 + 432);
  v66 = *(v0 + 440);
  v68 = sub_24ACD0590();
  if (!*(v15 + 16))
  {
    sub_24AC46698(v67, v66);
LABEL_36:

    goto LABEL_37;
  }

  v122 = v67;
  v127 = v66;
  v70 = sub_24AC2AB50(v68, v69);
  v72 = v71;

  if (v72 & 1) != 0 && (sub_24AC2B940(*(v124 + 56) + 32 * v70, v0 + 48), (swift_dynamicCast()))
  {
    v73 = *(v0 + 624);
    v74 = *(v0 + 608);
    v75 = *(v0 + 600);
    sub_24ACD0070();
    if ((*(v74 + 48))(v73, 1, v75) != 1)
    {
      v129 = *(v0 + 632);
      v119 = *(v0 + 616);
      v120 = *(v0 + 600);
      v121 = *(*(v0 + 608) + 32);
      v121(v119, *(v0 + 624), v120);
      v121(v129, v119, v120);
      v79 = 0;
      goto LABEL_42;
    }

    sub_24AC212F4(*(v0 + 624), &qword_27EF9E048, &qword_24ACD5910);
  }

  else
  {
    sub_24AC46698(v122, v127);
  }

LABEL_37:
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_2814AD8C0);
  v76 = sub_24ACD0470();
  v77 = sub_24ACD08F0();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_24AC18000, v76, v77, "No MAC address available from advertisementData", v78, 2u);
    MEMORY[0x24C22DC60](v78, -1, -1);
  }

  v79 = 1;
LABEL_42:
  (*(*(v0 + 608) + 56))(*(v0 + 632), v79, 1, *(v0 + 600));
  v80 = sub_24ACD0590();
  if (!*(v15 + 16))
  {

LABEL_47:
    v85 = 0;
    goto LABEL_48;
  }

  v82 = sub_24AC2AB50(v80, v81);
  v84 = v83;

  if ((v84 & 1) == 0)
  {
    goto LABEL_47;
  }

  sub_24AC2B940(*(v124 + 56) + 32 * v82, v0 + 112);
  if (!swift_dynamicCast())
  {
    goto LABEL_47;
  }

  v85 = *(v0 + 457);
LABEL_48:
  v86 = *(v0 + 512);
  v87 = [*(v0 + 504) identifier];
  sub_24ACD03F0();

  sub_24ACD0000();
  v88 = *(v125 + v24);
  if (*(v88 + 16))
  {
    v89 = *(v0 + 712);

    v90 = sub_24AC2AC60(v89);
    if (v91)
    {
LABEL_53:
      v29 = *(*(v88 + 56) + 8 * v90);

      v94 = *(v0 + 632);
      (*(*(v0 + 688) + 8))(*(v0 + 712), *(v0 + 680));
      sub_24AC212F4(v94, &qword_27EF9E048, &qword_24ACD5910);
LABEL_54:

LABEL_55:
      *(v0 + 792) = v29;

      return MEMORY[0x2822009F8](sub_24AC986E8, v29, 0);
    }
  }

  v88 = *(v123 + v48);
  if (*(v88 + 16))
  {
    v92 = *(v0 + 712);

    v90 = sub_24AC2AC60(v92);
    if (v93)
    {
      goto LABEL_53;
    }
  }

  v95 = *(v0 + 528);
  v96 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  if (*(*(v95 + v96) + 16) && (v97 = *(v0 + 712), , sub_24AC2AC60(v97), LOBYTE(v97) = v98, , (v97 & 1) != 0))
  {
    v99 = *(v0 + 712);
    v100 = *(v0 + 528);
    v101 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
    v102 = swift_task_alloc();
    *(v0 + 768) = v102;
    *(v102 + 16) = v100;
    *(v102 + 24) = v99;
    v103 = swift_task_alloc();
    *(v0 + 776) = v103;
    *v103 = v0;
    v103[1] = sub_24AC985C0;
    v104 = sub_24ACA261C;
    v105 = v0 + 480;
    v106 = v100;
    v107 = v101;
    v108 = v102;
  }

  else
  {
    v109 = *(v0 + 712);
    v128 = v86;
    v110 = *(v0 + 632);
    v111 = *(v0 + 528);
    v112 = *(v0 + 520);
    v113 = v85;
    v114 = *(v0 + 504);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v130 = *(v95 + v96);
    *(v95 + v96) = 0x8000000000000000;
    sub_24AC63DEC(MEMORY[0x277D84F90], v109, isUniquelyReferenced_nonNull_native);
    *(v95 + v96) = v130;
    swift_endAccess();
    v116 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
    v117 = swift_task_alloc();
    *(v0 + 744) = v117;
    *(v117 + 16) = v111;
    *(v117 + 24) = v109;
    *(v117 + 32) = v114;
    *(v117 + 40) = v110;
    *(v117 + 48) = v113;
    *(v117 + 56) = v128;
    *(v117 + 64) = v112;
    *(v117 + 72) = 0;
    v118 = swift_task_alloc();
    *(v0 + 752) = v118;
    *v118 = v0;
    v118[1] = sub_24AC97BD0;
    v104 = sub_24ACA2608;
    v105 = v0 + 464;
    v106 = v111;
    v107 = v116;
    v108 = v117;
  }

  return MEMORY[0x2822008A0](v105, v106, v107, 0xD000000000000055, 0x800000024ACDA2F0, v104, v108, v126);
}