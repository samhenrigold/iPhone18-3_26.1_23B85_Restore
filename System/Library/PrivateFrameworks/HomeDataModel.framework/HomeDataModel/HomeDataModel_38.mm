uint64_t sub_1D1A0FA60()
{
  v1 = *(*v0 + 48);
  *(*v0 + 664) = v1;
  if (v1)
  {
    v2 = sub_1D1A0FDC0;
  }

  else
  {
    v2 = sub_1D1A0FB70;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1A0FB70()
{
  v16 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 616);
  *(v0 + 512) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648308, &unk_1D1E8DD70);
  *(v0 + 488) = v2;

  sub_1D1741970(v0 + 488, v0 + 520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 624);
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EE07A0B0);
    sub_1D1741970(v0 + 488, v0 + 552);
    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6834C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      sub_1D1741970(v0 + 552, v0 + 584);
      v9 = sub_1D1E678BC();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1((v0 + 552));
      v12 = sub_1D1B1312C(v9, v11, &v15);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1D16EC000, v5, v6, "Failed to convert results to sendable dictionaries: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1D3893640](v8, -1, -1);
      MEMORY[0x1D3893640](v7, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 552));
    }

    v3 = MEMORY[0x1E69E7CC0];
  }

  **(v0 + 632) = v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + 488));
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D1A0FDC0(uint64_t a1)
{
  v2 = *(v1 + 656);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D1A0FE34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    **(*(v4 + 64) + 40) = sub_1D1E67C1C();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

id sub_1D1A0FF20()
{
  v1 = [v0 hdm_getNodeID];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

id sub_1D1A0FF70()
{
  v1 = [v0 hdm_containingHome];

  return v1;
}

void sub_1D1A0FFA8(void *a1)
{
  [v1 setHdm:a1 containingHome:?];
}

void (*sub_1D1A0FFF0(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 hdm_containingHome];
  return sub_1D1A1004C;
}

void sub_1D1A1004C(id *a1)
{
  v1 = *a1;
  [a1[1] setHdm_containingHome_];
}

uint64_t sub_1D1A100CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D1A00CEC;

  return sub_1D1A106BC(a1, a2, a3);
}

id sub_1D1A10198(uint64_t a1)
{
  if (qword_1EC6422A8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC6BE160;

  return [v1 addDelegate:a1 queue:v3];
}

uint64_t sub_1D1A10228(uint64_t a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return MTRDevice.wait(forAttributeValues:timeout:)(a1, a2);
}

uint64_t sub_1D1A102CC(uint64_t a1, __int16 a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D1A10DD4;

  return MTRDevice.perform(commandGroups:on:)(a1, a2);
}

void sub_1D1A10370(void *a1, uint64_t a2)
{

  v4 = a1;
  oslog = sub_1D1E6707C();
  v5 = sub_1D1E6835C();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349312;
    *(v6 + 4) = *(a2 + 16);

    *(v6 + 12) = 2050;
    v7 = [v4 hdm_getNodeID];
    v8 = [v7 unsignedLongLongValue];

    *(v6 + 14) = v8;
    _os_log_impl(&dword_1D16EC000, oslog, v5, "Successfully read %{public}ld values from device %{public}llu", v6, 0x16u);
    MEMORY[0x1D3893640](v6, -1, -1);
    v9 = oslog;
  }

  else
  {

    v9 = v4;
  }
}

uint64_t sub_1D1A104A8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = (v1 + 35);
  v4 = v2 - 1;
  do
  {
    v5 = v4;
    v6 = (*(v3 - 1) | (*(v3 - 3) == 0)) & (*v3 == 30);
    if (v6)
    {
      break;
    }

    v3 += 12;
    --v4;
  }

  while (v5);
  return v6 ^ 1u;
}

id sub_1D1A10510(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D1E675DC();

  v7[0] = 0;
  v3 = [v1 initWithResponseValue:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1D1E6656C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1D1A105F8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1A0DD44(v8, a1, a2, v6, v7);
}

uint64_t sub_1D1A106BC(uint64_t a1, int a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 96) = a2;
  *(v4 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A106E4, 0, 0);
}

uint64_t sub_1D1A106E4()
{
  type metadata accessor for EndpointPath(0);
  v1 = sub_1D1E692AC();
  v0[6] = v1;
  type metadata accessor for ClusterPath(0);
  v3 = v0[4];
  v2 = v0[5];
  v4 = sub_1D1E692CC();
  v0[7] = v4;
  v5 = sub_1D1E692CC();
  v0[8] = v5;
  v6 = swift_task_alloc();
  v0[9] = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v4;
  v6[5] = v5;
  v6[6] = v3;
  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646D70, &qword_1D1E830B8);
  *v7 = v0;
  v7[1] = sub_1D1A10860;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000003CLL, 0x80000001D1EC3130, sub_1D1A10B64, v6, v8);
}

uint64_t sub_1D1A10860()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1D1A109F0;
  }

  else
  {

    v2 = sub_1D1A1097C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1A1097C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  v3 = *(v0 + 16);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1D1A109F0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1A10A70(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v8 = *(v2 + 24);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1A0F038(a1, a2, v6, v8, v7);
}

uint64_t sub_1D1A10B74(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EC0, &qword_1D1E91548);

  return sub_1D1A0EB48(a1, a2);
}

uint64_t block_copy_helper_24_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D1A10C28()
{
  result = qword_1EC648EC8;
  if (!qword_1EC648EC8)
  {
    sub_1D1741B10(255, &qword_1EC650120, 0x1E696F570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648EC8);
  }

  return result;
}

uint64_t sub_1D1A10C90(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);

  return sub_1D1A0E5F8(a1);
}

uint64_t sub_1D1A10D0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D1A0E66C(a1, v4, v5, v7, v6);
}

unint64_t MatterMetadataKey.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x746169636F737341;
    v7 = 0x496564756C636E49;
    if (v1 != 8)
    {
      v7 = 0x6564644165746144;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000017;
    if (v1 != 5)
    {
      v8 = 0x657A6953656C6954;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x4E79616C70736944;
    v3 = 0x6E6564496E6F6349;
    v4 = 0x657469726F766146;
    if (v1 != 3)
    {
      v4 = 0x61446E4F776F6853;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x44496D6F6F52;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

double sub_1D1A10F50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  swift_beginAccess();
  v10 = objc_getAssociatedObject(v5, &unk_1EC648ED1);
  swift_endAccess();
  if (v10)
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  sub_1D18CA7C0(v21, &v19);
  if (*(&v20 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EE0, &qword_1D1E916D0);
    if (swift_dynamicCast())
    {
      if (*(v18 + 16))
      {
        v11 = sub_1D171D15C(a1);
        if (v12)
        {
          v13 = *(*(v18 + 56) + 8 * v11);

          if (*(v13 + 16))
          {
            v14 = sub_1D171D2F0(a2, a3);
            if (v15)
            {
              sub_1D1741970(*(v13 + 56) + 32 * v14, a4);
              sub_1D18B9B30(v21);

              return result;
            }
          }
        }
      }
    }

    v17 = v21;
  }

  else
  {
    sub_1D18B9B30(v21);
    v17 = &v19;
  }

  sub_1D18B9B30(v17);
  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

double sub_1D1A110EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  swift_beginAccess();
  v8 = objc_getAssociatedObject(v4, &unk_1EC648ED0);
  swift_endAccess();
  if (v8)
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  sub_1D18CA7C0(v16, &v14);
  if (*(&v15 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    if (swift_dynamicCast())
    {
      if (*(v13 + 16))
      {
        v9 = sub_1D171D2F0(a1, a2);
        if (v10)
        {
          sub_1D1741970(*(v13 + 56) + 32 * v9, a3);
          sub_1D18B9B30(v16);

          return result;
        }
      }
    }

    v12 = v16;
  }

  else
  {
    sub_1D18B9B30(v16);
    v12 = &v14;
  }

  sub_1D18B9B30(v12);
  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

HomeDataModel::MatterMetadataKey_optional __swiftcall MatterMetadataKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D1A112BC()
{
  result = qword_1EC648ED8;
  if (!qword_1EC648ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648ED8);
  }

  return result;
}

uint64_t sub_1D1A11310()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1B33174(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A11360(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  sub_1D1B33174(v4, v2);
  return sub_1D1E6926C();
}

unint64_t sub_1D1A113B0@<X0>(unint64_t *a1@<X8>)
{
  result = MatterMetadataKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1D1A113E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = objc_getAssociatedObject(v4, &unk_1EC648ED1);
  swift_endAccess();
  if (v10)
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (!*(&v22 + 1))
  {
    sub_1D18B9B30(&v23);
LABEL_9:
    v11 = sub_1D18D8CF4(MEMORY[0x1E69E7CC0]);
    if (!v11[2])
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EE0, &qword_1D1E916D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = v19;
  if (!v19[2])
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = sub_1D171D15C(a1);
  if (v13)
  {
    v14 = *(v11[7] + 8 * v12);
    v20 = v14;

    goto LABEL_13;
  }

LABEL_12:
  v14 = sub_1D18D6538(MEMORY[0x1E69E7CC0]);
  v20 = v14;
LABEL_13:
  sub_1D18CA7C0(a4, &v23);
  if (*(&v24 + 1))
  {
    sub_1D1742194(&v23, &v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1753F18(&v21, a2, a3, isUniquelyReferenced_nonNull_native);
    v16 = v14;
  }

  else
  {
    sub_1D18B9B30(&v23);
    sub_1D174EC88(a2, a3, &v21);
    sub_1D18B9B30(&v21);
    v16 = v20;
  }

  v17 = swift_isUniquelyReferenced_nonNull_native();
  *&v23 = v11;
  sub_1D1753DF4(v16, a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v18 = sub_1D1E675DC();
  swift_beginAccess();
  objc_setAssociatedObject(v5, &unk_1EC648ED1, v18, 0x301);
  swift_endAccess();
}

void sub_1D1A1165C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = objc_getAssociatedObject(v4, &unk_1EC648ED0);
  swift_endAccess();
  if (v8)
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (*(&v13 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    if (swift_dynamicCast())
    {
      v9 = v16;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D18B9B30(&v14);
  }

  v9 = sub_1D18D6538(MEMORY[0x1E69E7CC0]);
LABEL_9:
  v16 = v9;
  sub_1D18CA7C0(a3, &v14);
  if (*(&v15 + 1))
  {
    sub_1D1742194(&v14, &v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1753F18(&v12, a1, a2, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_1D18B9B30(&v14);
    sub_1D174EC88(a1, a2, &v12);
    sub_1D18B9B30(&v12);
  }

  v11 = sub_1D1E675DC();

  swift_beginAccess();
  objc_setAssociatedObject(v4, &unk_1EC648ED0, v11, 0x301);
  swift_endAccess();
}

uint64_t sub_1D1A11868(uint64_t a1)
{
  v2 = [v1 applicationData];
  v3 = sub_1D1E677EC();
  v4 = [v2 objectForKeyedSubscript_];

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    swift_dynamicCast();
  }

  v5 = sub_1D1E68C2C();

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t MatterTileMetadata.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MatterTileMetadata.iconIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MatterTileMetadata.associatedType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MatterTileMetadata.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MatterTileMetadata(0) + 44);

  return sub_1D174A548(v3, a1);
}

uint64_t MatterTileMetadata.init(displayName:iconIdentifier:associatedType:tileSize:favorite:showOnDashboard:includeInStatus:dateAdded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, __int16 a10, uint64_t a11)
{
  v11 = *a7;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v11;
  *(a9 + 49) = a8;
  *(a9 + 50) = a10;
  v12 = a9 + *(type metadata accessor for MatterTileMetadata(0) + 44);

  return sub_1D19A376C(a11, v12);
}

uint64_t sub_1D1A11AD8()
{
  v1 = *v0;
  v2 = 0x4E79616C70736964;
  v3 = 0x496564756C636E69;
  if (v1 != 6)
  {
    v3 = 0x6564644165746164;
  }

  v4 = 0x657469726F766166;
  if (v1 != 4)
  {
    v4 = 0x61446E4F776F6873;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x746169636F737361;
  if (v1 != 2)
  {
    v5 = 0x657A6953656C6974;
  }

  if (*v0)
  {
    v2 = 0x6E6564496E6F6369;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1A11C10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1A13998(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1A11C38(uint64_t a1)
{
  v2 = sub_1D1A13560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A11C74(uint64_t a1)
{
  v2 = sub_1D1A13560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MatterTileMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648F00, &qword_1D1E916D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A13560();
  sub_1D1E6930C();
  v10[15] = 0;
  sub_1D1E68E0C();
  if (!v2)
  {
    v10[14] = 1;
    sub_1D1E68E0C();
    v10[13] = 2;
    sub_1D1E68E0C();
    v10[12] = *(v3 + 48);
    v10[11] = 3;
    sub_1D1A135B4();
    sub_1D1E68E5C();
    v10[10] = 4;
    sub_1D1E68E1C();
    v10[9] = 5;
    sub_1D1E68E1C();
    v10[8] = 6;
    sub_1D1E68E1C();
    type metadata accessor for MatterTileMetadata(0);
    v10[7] = 7;
    sub_1D1E669FC();
    sub_1D1A13C58(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MatterTileMetadata.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E669FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  if (*(v1 + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
    if (*(v1 + 24))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D1E6922C();
    if (*(v1 + 40))
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1D1E6922C();
  if (!*(v1 + 24))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D1E6922C();
  sub_1D1E678EC();
  if (*(v1 + 40))
  {
LABEL_4:
    sub_1D1E6922C();
    sub_1D1E678EC();
    goto LABEL_8;
  }

LABEL_7:
  sub_1D1E6922C();
LABEL_8:
  if (*(v1 + 48) == 2)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  if (*(v1 + 49) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v1 + 50) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v1 + 51) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v9 = type metadata accessor for MatterTileMetadata(0);
  sub_1D174A548(v1 + *(v9 + 44), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_1D1E6922C();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1D1E6922C();
  sub_1D1A13C58(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D1E676EC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t MatterTileMetadata.hashValue.getter()
{
  sub_1D1E6920C();
  MatterTileMetadata.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t MatterTileMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648F18, &unk_1D1E916E0);
  v7 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v9 = v20 - v8;
  v10 = type metadata accessor for MatterTileMetadata(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D1A13560();
  v24 = v9;
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v21 = v6;
  v34 = 0;
  v14 = v23;
  *v12 = sub_1D1E68C6C();
  *(v12 + 1) = v15;
  v20[1] = v15;
  v33 = 1;
  *(v12 + 2) = sub_1D1E68C6C();
  *(v12 + 3) = v16;
  v32 = 2;
  *(v12 + 4) = sub_1D1E68C6C();
  *(v12 + 5) = v17;
  v30 = 3;
  sub_1D1A13608();
  sub_1D1E68CBC();
  v12[48] = v31;
  v29 = 4;
  v12[49] = sub_1D1E68C7C();
  v28 = 5;
  v12[50] = sub_1D1E68C7C();
  v27 = 6;
  v12[51] = sub_1D1E68C7C();
  sub_1D1E669FC();
  v26 = 7;
  sub_1D1A13C58(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v18 = v21;
  sub_1D1E68CBC();
  (*(v7 + 8))(v24, v14);
  sub_1D19A376C(v18, &v12[*(v10 + 44)]);
  sub_1D1A1365C(v12, v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1D1A136C0(v12);
}

uint64_t sub_1D1A127AC()
{
  sub_1D1E6920C();
  MatterTileMetadata.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A127F0(uint64_t a1)
{
  sub_1D1E6920C();
  MatterTileMetadata.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t MatterTileMetadata.init(device:endpointId:)@<X0>(uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v36 - v8;
  ObjectType = swift_getObjectType();
  LOBYTE(v47) = 6;
  v10 = *(a2 + 64);
  v10(v49, &v47, a3 & 0x1FFFF, ObjectType, a2);
  if (!v50)
  {
    sub_1D1741A30(v49, &qword_1EC649700, &qword_1D1E6E910);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v12 = 2;
    goto LABEL_11;
  }

  v11 = sub_1D1E68C2C();

  if (v11 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (!v11)
  {
    v12 = 0;
  }

LABEL_11:
  v45 = v12;
  LOBYTE(v47) = 0;
  v10(v49, &v47, a3 & 0x1FFFF, ObjectType, a2);
  if (v50)
  {
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v47;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v48;
    }

    else
    {
      v15 = 0;
    }

    v43 = v15;
    v44 = v14;
  }

  else
  {
    sub_1D1741A30(v49, &qword_1EC649700, &qword_1D1E6E910);
    v43 = 0;
    v44 = 0;
  }

  LOBYTE(v47) = 2;
  v10(v49, &v47, a3 & 0x1FFFF, ObjectType, a2);
  if (v50)
  {
    v16 = swift_dynamicCast();
    if (v16)
    {
      v17 = v47;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = v48;
    }

    else
    {
      v18 = 0;
    }

    v41 = v18;
    v42 = v17;
  }

  else
  {
    sub_1D1741A30(v49, &qword_1EC649700, &qword_1D1E6E910);
    v41 = 0;
    v42 = 0;
  }

  LOBYTE(v47) = 7;
  v10(v49, &v47, a3 & 0x1FFFF, ObjectType, a2);
  if (v50)
  {
    v19 = swift_dynamicCast();
    if (v19)
    {
      v20 = v47;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v48;
    }

    else
    {
      v21 = 0;
    }

    v39 = v21;
    v40 = v20;
  }

  else
  {
    sub_1D1741A30(v49, &qword_1EC649700, &qword_1D1E6E910);
    v39 = 0;
    v40 = 0;
  }

  LOBYTE(v47) = 3;
  v10(v49, &v47, a3 & 0x1FFFF, ObjectType, a2);
  if (v50)
  {
    v22 = swift_dynamicCast();
    v23 = v47;
    if (!v22)
    {
      v23 = 2;
    }
  }

  else
  {
    sub_1D1741A30(v49, &qword_1EC649700, &qword_1D1E6E910);
    v23 = 2;
  }

  v38 = v23;
  LOBYTE(v47) = 4;
  v10(v49, &v47, a3 & 0x1FFFF, ObjectType, a2);
  if (v50)
  {
    v24 = swift_dynamicCast();
    v25 = v47;
    if (!v24)
    {
      v25 = 2;
    }
  }

  else
  {
    sub_1D1741A30(v49, &qword_1EC649700, &qword_1D1E6E910);
    v25 = 2;
  }

  v37 = v25;
  LOBYTE(v47) = 8;
  v10(v49, &v47, a3 & 0x1FFFF, ObjectType, a2);
  if (v50)
  {
    if (swift_dynamicCast())
    {
      v26 = v47;
    }

    else
    {
      v26 = 2;
    }
  }

  else
  {
    sub_1D1741A30(v49, &qword_1EC649700, &qword_1D1E6E910);
    v26 = 2;
  }

  LOBYTE(v47) = 9;
  v10(v49, &v47, a3 & 0x1FFFF, ObjectType, a2);
  swift_unknownObjectRelease();
  if (v50)
  {
    v27 = sub_1D1E669FC();
    v28 = v46;
    v29 = swift_dynamicCast();
    (*(*(v27 - 8) + 56))(v28, v29 ^ 1u, 1, v27);
  }

  else
  {
    sub_1D1741A30(v49, &qword_1EC649700, &qword_1D1E6E910);
    v30 = sub_1D1E669FC();
    v28 = v46;
    (*(*(v30 - 8) + 56))(v46, 1, 1, v30);
  }

  v31 = v43;
  *a4 = v44;
  *(a4 + 8) = v31;
  v32 = v41;
  *(a4 + 16) = v42;
  *(a4 + 24) = v32;
  v33 = v39;
  *(a4 + 32) = v40;
  *(a4 + 40) = v33;
  *(a4 + 48) = v45;
  LOBYTE(v33) = v37;
  *(a4 + 49) = v38;
  *(a4 + 50) = v33;
  *(a4 + 51) = v26;
  v34 = type metadata accessor for MatterTileMetadata(0);
  return sub_1D19A376C(v28, a4 + *(v34 + 44));
}

double MatterTileMetadata.init(accessory:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D1A11868(&unk_1F4D5FF10);
  if (v4 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4 & 1;
  }

  v6 = HMAccessory.isFavorite.getter() & 1;
  v7 = HMAccessory.shouldShowInDashboard.getter() & 1;
  v8 = HMAccessory.contributesToHomeStatus.getter() & 1;
  v9 = type metadata accessor for MatterTileMetadata(0);
  HMAccessory.dateAdded.getter((a2 + *(v9 + 44)));

  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 48) = v5;
  *(a2 + 49) = v6;
  *(a2 + 50) = v7;
  *(a2 + 51) = v8;
  return result;
}

double sub_1D1A12EBC()
{
  v0 = type metadata accessor for MatterTileMetadata(0);
  __swift_allocate_value_buffer(v0, qword_1EC648EE8);
  v1 = __swift_project_value_buffer(v0, qword_1EC648EE8);
  v2 = *(v0 + 44);
  v3 = sub_1D1E669FC();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  result = 0.0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *v1 = 0u;
  *(v1 + 48) = 33686018;
  return result;
}

uint64_t static MatterTileMetadata.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC642290 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MatterTileMetadata(0);
  v3 = __swift_project_value_buffer(v2, qword_1EC648EE8);

  return sub_1D1A1365C(v3, a1);
}

BOOL _s13HomeDataModel18MatterTileMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - v13;
  v15 = *(a1 + 8);
  v16 = *(a2 + 8);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (*a1 != *a2 || v15 != v16)
    {
      v17 = v12;
      v18 = sub_1D1E6904C();
      v12 = v17;
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v19 = *(a1 + 24);
  v20 = *(a2 + 24);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v19 != v20)
    {
      v21 = v12;
      v22 = sub_1D1E6904C();
      v12 = v21;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  v23 = *(a1 + 40);
  v24 = *(a2 + 40);
  if (v23)
  {
    if (!v24)
    {
      return 0;
    }

    if (*(a1 + 32) != *(a2 + 32) || v23 != v24)
    {
      v25 = v12;
      v26 = sub_1D1E6904C();
      v12 = v25;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  v27 = *(a1 + 48);
  v28 = *(a2 + 48);
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v28 == 2)
    {
      return 0;
    }

    v49 = v12;
    if (v27)
    {
      v29 = 0xD000000000000019;
    }

    else
    {
      v29 = 0xD000000000000018;
    }

    if (v27)
    {
      v30 = "HFTileResizableSizeSmall";
    }

    else
    {
      v30 = "40-A849-215882E2F008";
    }

    if (v28)
    {
      v31 = 0xD000000000000019;
    }

    else
    {
      v31 = 0xD000000000000018;
    }

    if (v28)
    {
      v32 = "HFTileResizableSizeSmall";
    }

    else
    {
      v32 = "40-A849-215882E2F008";
    }

    if (v29 == v31 && (v30 | 0x8000000000000000) == (v32 | 0x8000000000000000))
    {

      v12 = v49;
    }

    else
    {
      v33 = sub_1D1E6904C();

      v12 = v49;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v34 = *(a1 + 49);
  v35 = *(a2 + 49);
  if (v34 == 2)
  {
    if (v35 != 2)
    {
      return 0;
    }
  }

  else
  {
    v36 = 0;
    if (v35 == 2 || ((v35 ^ v34) & 1) != 0)
    {
      return v36;
    }
  }

  v37 = *(a1 + 50);
  v38 = *(a2 + 50);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      return 0;
    }
  }

  else
  {
    v36 = 0;
    if (v38 == 2 || ((v38 ^ v37) & 1) != 0)
    {
      return v36;
    }
  }

  v39 = *(a1 + 51);
  v40 = *(a2 + 51);
  if (v39 == 2)
  {
    if (v40 != 2)
    {
      return 0;
    }

    goto LABEL_57;
  }

  v36 = 0;
  if (v40 != 2 && ((v40 ^ v39) & 1) == 0)
  {
LABEL_57:
    v41 = v12;
    v42 = *(type metadata accessor for MatterTileMetadata(0) + 44);
    v43 = *(v41 + 48);
    sub_1D174A548(a1 + v42, v14);
    sub_1D174A548(a2 + v42, &v14[v43]);
    v44 = *(v5 + 48);
    if (v44(v14, 1, v4) == 1)
    {
      if (v44(&v14[v43], 1, v4) == 1)
      {
        sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
        return 1;
      }

      goto LABEL_62;
    }

    sub_1D174A548(v14, v10);
    if (v44(&v14[v43], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
LABEL_62:
      sub_1D1741A30(v14, &qword_1EC642AC0, &qword_1D1E6E810);
      return 0;
    }

    (*(v5 + 32))(v7, &v14[v43], v4);
    sub_1D1A13C58(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    v46 = sub_1D1E6775C();
    v47 = *(v5 + 8);
    v47(v7, v4);
    v47(v10, v4);
    sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
    return (v46 & 1) != 0;
  }

  return v36;
}

uint64_t type metadata accessor for MatterTileMetadata(uint64_t a1)
{
  result = qword_1EE07D648;
  if (!qword_1EE07D648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1A13560()
{
  result = qword_1EC648F08;
  if (!qword_1EC648F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F08);
  }

  return result;
}

unint64_t sub_1D1A135B4()
{
  result = qword_1EC648F10;
  if (!qword_1EC648F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F10);
  }

  return result;
}

unint64_t sub_1D1A13608()
{
  result = qword_1EC648F20;
  if (!qword_1EC648F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F20);
  }

  return result;
}

uint64_t sub_1D1A1365C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterTileMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1A136C0(uint64_t a1)
{
  v2 = type metadata accessor for MatterTileMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D1A1378C(uint64_t a1)
{
  sub_1D17BDF80(319, qword_1EE07D1F8, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1D17BDF80(319, &qword_1EE07B820, &type metadata for TileSize);
    if (v2 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EE07D1F0, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        sub_1D17B77BC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D1A13894()
{
  result = qword_1EC648F30;
  if (!qword_1EC648F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F30);
  }

  return result;
}

unint64_t sub_1D1A138EC()
{
  result = qword_1EC648F38;
  if (!qword_1EC648F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F38);
  }

  return result;
}

unint64_t sub_1D1A13944()
{
  result = qword_1EC648F40;
  if (!qword_1EC648F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F40);
  }

  return result;
}

uint64_t sub_1D1A13998(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6564496E6F6369 && a2 == 0xEE00726569666974 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xEE00657079546465 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A6953656C6974 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61446E4F776F6873 && a2 == 0xEF6472616F626873 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x496564756C636E69 && a2 == 0xEF7375746174536ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D1A13C58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of ContextualLocalizedError.contextualize()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return v7(a1, a2);
}

id sub_1D1A13DCC(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for DiscardingMatterDelegate()) init];
  qword_1EC6BE138 = result;
  return result;
}

uint64_t ExpectedValuesBuilder.set(value:attribute:cluster:endpoint:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = v5;
  v11 = *a3;
  v12 = *a1;
  v25 = *(a1 + 8);
  sub_1D1741AF8(*a1, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v5;
  *v7 = 0x8000000000000000;
  v16 = sub_1D171D15C(a4);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v15;
  if (v14[3] >= v19)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_12:
    sub_1D1737DF0();
    goto LABEL_6;
  }

  sub_1D172684C(v19, isUniquelyReferenced_nonNull_native);
  v20 = sub_1D171D15C(a4);
  if ((v6 & 1) != (v21 & 1))
  {
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v16 = v20;
LABEL_6:

  *v7 = v14;
  if ((v6 & 1) == 0)
  {
    sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC();
  }

  v22 = v14[7];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v22 + 8 * v16);
  *(v22 + 8 * v16) = 0x8000000000000000;
  sub_1D1753B88(v12, v25, a2 | (v11 << 32), v23);
  *(v22 + 8 * v16) = v26;
  *a5 = *v7;
}

uint64_t ExpectedValuesBuilder.rawDictionaries.getter()
{
  v2 = *v0;
  v3 = MEMORY[0x1E69E7CC0];
  sub_1D1A1456C(&v2, &v3);
  return v3;
}

uint64_t ExpectedValuesBuilder.init(command:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = MEMORY[0x1E69E7CC8];
  ExpectedValuesBuilder.addValues(from:in:)(a1, a2, &v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ExpectedValuesBuilder.addValues(from:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 56))(v7, v8);
  if (v9)
  {
    v10 = v9;
    v59 = a3;
    v11 = 0;
    v12 = v9 + 64;
    v13 = 1 << *(v9 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v9 + 64);
    v16 = (v13 + 63) >> 6;
    v60 = v16;
    v61 = v9;
    v62 = v9 + 64;
    while (v15)
    {
LABEL_12:
      v23 = __clz(__rbit64(v15)) | (v11 << 6);
      v24 = (*(v10 + 48) + 8 * v23);
      v65 = *(v24 + 4);
      v66 = *v24;
      v25 = *(v10 + 56) + 16 * v23;
      v26 = *v25;
      v27 = *(v25 + 8);
      sub_1D1741AF8(*v25, v27);
      v64 = v26;
      v63 = v27;
      sub_1D1741AF8(v26, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v4;
      v67 = *v4;
      *v4 = 0x8000000000000000;
      v31 = sub_1D171D15C(a2);
      v32 = v29[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_35;
      }

      v35 = v30;
      if (v29[3] >= v34)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D1737DF0();
          v29 = v67;
        }
      }

      else
      {
        sub_1D172684C(v34, isUniquelyReferenced_nonNull_native);
        v29 = v67;
        v36 = sub_1D171D15C(a2);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_40;
        }

        v31 = v36;
      }

      *v4 = v29;
      if ((v35 & 1) == 0)
      {
        v29[(v31 >> 6) + 8] |= 1 << v31;
        *(v29[6] + 2 * v31) = a2;
        *(v29[7] + 8 * v31) = MEMORY[0x1E69E7CC8];
        v38 = v29[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_37;
        }

        v29[2] = v40;
      }

      v41 = a2;
      v42 = v4;
      v43 = v29[7];
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(v43 + 8 * v31);
      *(v43 + 8 * v31) = 0x8000000000000000;
      v46 = sub_1D171D1A4(v66 | (v65 << 32));
      v48 = v45[2];
      v49 = (v47 & 1) == 0;
      v39 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v39)
      {
        goto LABEL_36;
      }

      v51 = v47;
      if (v45[3] >= v50)
      {
        if ((v44 & 1) == 0)
        {
          v57 = v46;
          sub_1D1737C6C();
          v46 = v57;
        }
      }

      else
      {
        sub_1D1726570(v50, v44);
        v46 = sub_1D171D1A4(v66 | (v65 << 32));
        if ((v51 & 1) != (v52 & 1))
        {
          goto LABEL_39;
        }
      }

      v4 = v42;
      a2 = v41;
      if (v51)
      {
        v17 = v45[7] + 16 * v46;
        v18 = *v17;
        v19 = v64;
        *v17 = v64;
        v20 = *(v17 + 8);
        v21 = v63;
        *(v17 + 8) = v63;
        sub_1D1757AE8(v18, v20);
        v12 = v62;
      }

      else
      {
        v45[(v46 >> 6) + 8] |= 1 << v46;
        v53 = v45[6] + 8 * v46;
        *v53 = v66;
        *(v53 + 4) = v65;
        v54 = v45[7] + 16 * v46;
        v19 = v64;
        *v54 = v64;
        v21 = v63;
        *(v54 + 8) = v63;
        v55 = v45[2];
        v39 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        v12 = v62;
        if (v39)
        {
          goto LABEL_38;
        }

        v45[2] = v56;
      }

      v15 &= v15 - 1;
      *(v43 + 8 * v31) = v45;

      sub_1D1757AE8(v19, v21);
      v16 = v60;
      v10 = v61;
    }

    while (1)
    {
      v22 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v22 >= v16)
      {

        a3 = v59;
        goto LABEL_31;
      }

      v15 = *(v12 + 8 * v22);
      ++v11;
      if (v15)
      {
        v11 = v22;
        goto LABEL_12;
      }
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
    sub_1D1E690FC();
    __break(1u);
LABEL_40:
    result = sub_1D1E690FC();
    __break(1u);
  }

  else
  {
LABEL_31:
    *a3 = *v4;
  }

  return result;
}

void ExpectedValuesBuilder.isEmpty.getter()
{
  v1 = 0;
  v2 = 1 << *(*v0 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(*v0 + 64);
  v5 = (v2 + 63) >> 6;
  if (v4)
  {
    while (1)
    {
      v6 = v1;
LABEL_9:
      v7 = *(*(*v0 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
      v8 = 1 << *(v7 + 32);
      v9 = v8 < 64 ? ~(-1 << v8) : -1;
      if ((v9 & *(v7 + 64)) != 0)
      {
        break;
      }

      v4 &= v4 - 1;
      v10 = ((v8 + 63) >> 6) - 1;
      v11 = (v7 + 72);
      while (v10)
      {
        v12 = *v11++;
        --v10;
        if (v12)
        {
          return;
        }
      }

      v1 = v6;
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v6 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v6 >= v5)
      {
        return;
      }

      v4 = *(*v0 + 64 + 8 * v6);
      ++v1;
      if (v4)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D1A1456C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v26 = v2;

  v9 = 0;
LABEL_6:
  if (v6)
  {
    v10 = v9;
LABEL_11:
    v11 = __clz(__rbit64(v6)) | (v10 << 6);
    v12 = *(*(v26 + 48) + 2 * v11);
    v13 = *(*(v26 + 56) + 8 * v11);
    v6 &= v6 - 1;
    v14 = 1 << *(v13 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    while (v16)
    {
      v19 = v18;
LABEL_21:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = v20 | (v19 << 6);
      v22 = *(v13 + 48) + 8 * v21;
      v23 = *v22;
      LOBYTE(v22) = *(v22 + 4);
      v24 = *(v13 + 56) + 16 * v21;
      v25 = *v24;
      LOBYTE(v24) = *(v24 + 8);
      v30 = v23;
      v31 = v22;
      v28 = v25;
      v29 = v24;
      result = sub_1D1A1526C(v12, &v30, &v28, a2);
      if ((result & 1) == 0)
      {

        goto LABEL_23;
      }
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        v9 = v10;
        goto LABEL_6;
      }

      v16 = *(v13 + 64 + 8 * v19);
      ++v18;
      if (v16)
      {
        v18 = v19;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
LABEL_23:
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1D1A14738(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v27 = v2;

  v8 = 0;
  v25 = v7;
  v26 = v3;
LABEL_6:
  if (v6)
  {
    v9 = v8;
LABEL_11:
    v10 = *(*(v27 + 56) + 8 * (__clz(__rbit64(v6)) | (v9 << 6)));
    v6 &= v6 - 1;
    v11 = v10 + 64;
    v12 = 1 << *(v10 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v10 + 64);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    if (v14)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        v8 = v9;
        v7 = v25;
        v3 = v26;
        goto LABEL_6;
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        do
        {
LABEL_20:
          v14 &= v14 - 1;
          v18 = sub_1D1E692AC();
          v19 = sub_1D1E692CC();
          v20 = sub_1D1E692CC();
          v21 = [objc_opt_self() attributePathWithEndpointID:v18 clusterID:v19 attributeID:v20];

          v22 = MatterAttributeDataBuilder.dictionary.getter();
          v23 = sub_1D18A80B0(v22);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = *a2;
          *a2 = 0x8000000000000000;
          sub_1D1755910(v23, v21, isUniquelyReferenced_nonNull_native);

          *a2 = v29;
        }

        while (v14);
        continue;
      }
    }

    __break(1u);
  }

  else
  {
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

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
}

uint64_t ExpectedValuesBuilder.enumerate(_:)(uint64_t (*a1)(void, int *, uint64_t *))
{
  v2 = *v1 + 64;
  v3 = 1 << *(*v1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(*v1 + 64);
  v6 = (v3 + 63) >> 6;
  v29 = *v1;

  v8 = 0;
  v27 = v6;
  v28 = v2;
LABEL_6:
  if (v5)
  {
    v9 = v8;
LABEL_11:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v31 = *(*(v29 + 48) + 2 * v10);
    v11 = *(*(v29 + 56) + 8 * v10);
    v5 &= v5 - 1;
    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v11;

    v17 = 0;
    while (v15)
    {
      v18 = v17;
LABEL_21:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v19 | (v18 << 6);
      v21 = *(v32 + 48) + 8 * v20;
      v22 = *v21;
      LOBYTE(v21) = *(v21 + 4);
      v23 = *(v32 + 56) + 16 * v20;
      v24 = *v23;
      v25 = *(v23 + 8);
      v35 = v22;
      v36 = v21;
      v33 = v24;
      v34 = v25;
      sub_1D1741AF8(v24, v25);
      v26 = a1(v31, &v35, &v33);
      result = sub_1D1757AE8(v24, v25);
      if ((v26 & 1) == 0)
      {

        goto LABEL_23;
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

        v8 = v9;
        v6 = v27;
        v2 = v28;
        goto LABEL_6;
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
LABEL_23:
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ExpectedValuesBuilder.intersects(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v2 + 64;
  v5 = 1 << *(v2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;
  v32 = v2;

  v10 = 0;
  v11 = 0;
  v30 = v8;
  v31 = v4;
LABEL_6:
  if (v7)
  {
    v12 = v10;
LABEL_11:
    v13 = 0;
    v14 = __clz(__rbit64(v7)) | (v12 << 6);
    v35 = *(*(v32 + 48) + 2 * v14);
    v15 = *(*(v32 + 56) + 8 * v14);
    v7 &= v7 - 1;
    v17 = v15 + 64;
    v16 = *(v15 + 64);
    v34 = v15;
    v18 = 1 << *(v15 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & v16;
    v21 = (v18 + 63) >> 6;
    do
    {
      v22 = v11;
      if (v20)
      {
        v33 = v11;
        if (!*(v3 + 16))
        {
          break;
        }
      }

      else
      {
        do
        {
          v23 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
            goto LABEL_29;
          }

          if (v23 >= v21)
          {
            v10 = v12;
            v11 = v22;
            v8 = v30;
            v4 = v31;
            goto LABEL_6;
          }

          v20 = *(v17 + 8 * v23);
          ++v13;
        }

        while (!v20);
        v33 = v22;
        v13 = v23;
        if (!*(v3 + 16))
        {
          break;
        }
      }

      v24 = (*(v34 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v20)))));
      v25 = *v24;
      v26 = *(v24 + 4);
      v27 = sub_1D171D15C(v35);
      if ((v28 & 1) == 0)
      {
        break;
      }

      if (!*(*(*(v3 + 56) + 8 * v27) + 16))
      {
        break;
      }

      v20 &= v20 - 1;
      result = sub_1D171D1A4(v25 | (v26 << 32));
      v11 = 1;
    }

    while ((v29 & 1) != 0);
LABEL_27:

    return v33 & 1;
  }

  else
  {
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        v33 = v11;
        goto LABEL_27;
      }

      v7 = *(v4 + 8 * v12);
      ++v10;
      if (v7)
      {
        goto LABEL_11;
      }
    }

LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t ExpectedValuesBuilder.value(for:cluster:endpoint:)@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  if (*(v6 + 16) && (v7 = result, v8 = *a2, result = sub_1D171D15C(a3), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * result);

    return sub_1D1914BC0(v7 | (v8 << 32), v10, a4);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = -1;
  }

  return result;
}

uint64_t ExpectedValuesBuilder.set(value:attribute:clusterPath:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = a3[3];
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v10);
  (*(v11 + 24))(&v31, v10, v11);
  v12 = v31;
  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  v15 = (*(v14 + 16))(v13, v14);
  v16 = v8;
  sub_1D1741AF8(v8, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v4;
  *v5 = 0x8000000000000000;
  v20 = sub_1D171D15C(v15);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_12;
  }

  LOBYTE(v14) = v19;
  if (v18[3] >= v23)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_12:
    sub_1D1737DF0();
    goto LABEL_6;
  }

  sub_1D172684C(v23, isUniquelyReferenced_nonNull_native);
  v24 = sub_1D171D15C(v15);
  if ((v14 & 1) != (v25 & 1))
  {
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v20 = v24;
LABEL_6:

  *v5 = v18;
  if ((v14 & 1) == 0)
  {
    sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC();
  }

  v26 = v18[7];
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v26 + 8 * v20);
  *(v26 + 8 * v20) = 0x8000000000000000;
  sub_1D1753B88(v16, v9, a2 | (v12 << 32), v27);
  *(v26 + 8 * v20) = v30;
  *a4 = *v5;
}

uint64_t ExpectedValuesBuilder.set(value:clusterAttribute:endpoint:)@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = v4;
  v9 = *a2;
  v10 = *(a2 + 4);
  v11 = *a1;
  v24 = *(a1 + 8);
  sub_1D1741AF8(*a1, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  *v6 = 0x8000000000000000;
  v15 = sub_1D171D15C(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v14;
  if (v13[3] >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_12:
    sub_1D1737DF0();
    goto LABEL_6;
  }

  sub_1D172684C(v18, isUniquelyReferenced_nonNull_native);
  v19 = sub_1D171D15C(a3);
  if ((v5 & 1) != (v20 & 1))
  {
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v15 = v19;
LABEL_6:

  *v6 = v13;
  if ((v5 & 1) == 0)
  {
    sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC();
  }

  v21 = v13[7];
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v21 + 8 * v15);
  *(v21 + 8 * v15) = 0x8000000000000000;
  sub_1D1753B88(v11, v24, v9 | (v10 << 32), v22);
  *(v21 + 8 * v15) = v25;
  *a4 = *v6;
}

uint64_t ExpectedValuesBuilder.merge(_:uniquingBlock:)(uint64_t *a1, void (*a2)(void **__return_ptr, uint64_t *, uint64_t *), uint64_t a3)
{
  v5 = *a1;
  v8 = *v3;
  ExpectedValuesBuilder.isEmpty.getter();
  if (v6)
  {

    *v3 = v5;
  }

  else
  {
    v8 = v5;
    return sub_1D1A155D0(&v8, v3, a2);
  }

  return result;
}

uint64_t sub_1D1A1526C(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v6;
  v7 = sub_1D1E692AC();
  v8 = sub_1D1E692CC();
  v9 = sub_1D1E692CC();
  v10 = [objc_opt_self() attributePathWithEndpointID:v7 clusterID:v8 attributeID:v9];

  *(inited + 72) = sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
  *(inited + 48) = v10;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v11;
  MatterAttributeDataBuilder.dictionary.getter();
  sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
  v12 = sub_1D1E675DC();

  *(inited + 120) = sub_1D1741B10(0, &qword_1EC648F50, 0x1E695DF20);
  *(inited + 96) = v12;
  v13 = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  v14 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1D177D340(0, v14[2] + 1, 1, v14);
    *a4 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1D177D340((v16 > 1), v17 + 1, 1, v14);
    *a4 = v14;
  }

  v14[2] = v17 + 1;
  v14[v17 + 4] = v13;
  return 1;
}

uint64_t ExpectedValuesBuilder.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1856E34(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A15530()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1856E34(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A15580(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  sub_1D1856E34(v4, v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A155D0(uint64_t *a1, uint64_t *a2, void (*a3)(void **__return_ptr, uint64_t *, uint64_t *))
{
  v4 = *a1;
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v81 = v4;

  v10 = 0;
  v79 = v9;
  v80 = v5;
LABEL_6:
  if (v8)
  {
    v11 = v10;
  }

  else
  {
    do
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_55;
      }

      if (v11 >= v9)
      {
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
    }

    while (!v8);
  }

  v82 = v11;
  v12 = __clz(__rbit64(v8)) | (v11 << 6);
  v13 = *(*(v81 + 48) + 2 * v12);
  v14 = *(*(v81 + 56) + 8 * v12);
  v83 = (v8 - 1) & v8;
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v86 = *(*(v81 + 56) + 8 * v12);

  v20 = 0;
  v84 = v19;
  v85 = v15;
  while (v18)
  {
LABEL_22:
    v27 = __clz(__rbit64(v18)) | (v20 << 6);
    v28 = (*(v86 + 48) + 8 * v27);
    v91 = *(v28 + 4);
    v92 = *v28;
    v29 = *(v86 + 56) + 16 * v27;
    v30 = *v29;
    v31 = *(v29 + 8);
    v32 = *a2;
    v90 = *v29;
    v87 = v31;
    if (!*(*a2 + 16) || (v33 = sub_1D171D15C(v13), (v34 & 1) == 0) || (v35 = *(*(v32 + 56) + 8 * v33), !*(v35 + 16)) || (v36 = sub_1D171D1A4(v92 | (v91 << 32)), (v37 & 1) == 0))
    {
      sub_1D1741AF8(v30, v31);
      goto LABEL_29;
    }

    v38 = *(v35 + 56) + 16 * v36;
    v39 = v31;
    v41 = *(v38 + 8);
    v97 = *v38;
    v40 = v97;
    v98 = v41;
    v95 = v30;
    v96 = v39;
    sub_1D1741AF8(v30, v39);
    sub_1D1741AF8(v40, v41);
    if (_s13HomeDataModel015MatterAttributeB7BuilderO2eeoiySbAC_ACtFZ_0(&v97, &v95))
    {
      sub_1D1757AE8(v40, v41);
      v31 = v39;
LABEL_29:
      sub_1D1741AF8(v30, v31);
      v42 = v31;
      v43 = v30;
      goto LABEL_30;
    }

    v95 = v40;
    v96 = v41;
    v93 = v30;
    v94 = v39;
    a3(&v97, &v95, &v93);
    sub_1D1757AE8(v40, v41);
    v43 = v97;
    v42 = v98;
LABEL_30:
    v88 = v43;
    v89 = v42;
    sub_1D1741AF8(v43, v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = *a2;
    v45 = v97;
    *a2 = 0x8000000000000000;
    v47 = sub_1D171D15C(v13);
    v48 = *(v45 + 16);
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_56;
    }

    v51 = v46;
    if (*(v45 + 24) >= v50)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1737DF0();
        v45 = v97;
      }
    }

    else
    {
      sub_1D172684C(v50, isUniquelyReferenced_nonNull_native);
      v45 = v97;
      v52 = sub_1D171D15C(v13);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_61;
      }

      v47 = v52;
    }

    *a2 = v45;

    v54 = *a2;
    if ((v51 & 1) == 0)
    {
      v54[(v47 >> 6) + 8] |= 1 << v47;
      *(v54[6] + 2 * v47) = v13;
      *(v54[7] + 8 * v47) = MEMORY[0x1E69E7CC8];
      v55 = v54[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_58;
      }

      v54[2] = v57;
    }

    v58 = v13;
    v59 = a2;
    v60 = v54[7];
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v97 = *(v60 + 8 * v47);
    v62 = v97;
    *(v60 + 8 * v47) = 0x8000000000000000;
    v63 = sub_1D171D1A4(v92 | (v91 << 32));
    v65 = *(v62 + 16);
    v66 = (v64 & 1) == 0;
    v56 = __OFADD__(v65, v66);
    v67 = v65 + v66;
    if (v56)
    {
      goto LABEL_57;
    }

    v68 = v64;
    if (*(v62 + 24) >= v67)
    {
      v70 = v90;
      if (v61)
      {
        v71 = v97;
        if (v64)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v76 = v63;
        sub_1D1737C6C();
        v63 = v76;
        v70 = v90;
        v71 = v97;
        if (v68)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_1D1726570(v67, v61);
      v63 = sub_1D171D1A4(v92 | (v91 << 32));
      if ((v68 & 1) != (v69 & 1))
      {
        goto LABEL_60;
      }

      v70 = v90;
      v71 = v97;
      if (v68)
      {
LABEL_15:
        v21 = v71[7] + 16 * v63;
        v22 = *v21;
        *v21 = v88;
        v23 = *(v21 + 8);
        v24 = v89;
        *(v21 + 8) = v89;
        sub_1D1757AE8(v22, v23);
        v25 = v88;
        goto LABEL_16;
      }
    }

    v71[(v63 >> 6) + 8] |= 1 << v63;
    v72 = v71[6] + 8 * v63;
    *v72 = v92;
    *(v72 + 4) = v91;
    v73 = v71[7] + 16 * v63;
    v25 = v88;
    *v73 = v88;
    v24 = v89;
    *(v73 + 8) = v89;
    v74 = v71[2];
    v56 = __OFADD__(v74, 1);
    v75 = v74 + 1;
    if (v56)
    {
      goto LABEL_59;
    }

    v71[2] = v75;
LABEL_16:
    v18 &= v18 - 1;
    *(v60 + 8 * v47) = v71;
    sub_1D1757AE8(v25, v24);
    sub_1D1757AE8(v70, v87);
    a2 = v59;
    v13 = v58;
    v19 = v84;
    v15 = v85;
  }

  while (1)
  {
    v26 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v26 >= v19)
    {

      v10 = v82;
      v8 = v83;
      v9 = v79;
      v5 = v80;
      goto LABEL_6;
    }

    v18 = *(v15 + 8 * v26);
    ++v20;
    if (v18)
    {
      v20 = v26;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  sub_1D1E690FC();
  __break(1u);
LABEL_61:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

unint64_t sub_1D1A15B20()
{
  result = qword_1EC648F48;
  if (!qword_1EC648F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F48);
  }

  return result;
}

uint64_t sub_1D1A15B88(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for MatterCommandError(0);
  sub_1D1741C08(v2 + *(v8 + 32), v7, &qword_1EC644780, &qword_1D1E91AA0);
  v9 = type metadata accessor for StaticEndpoint(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1D1741A30(v7, &qword_1EC644780, &qword_1D1E91AA0);
    v17 = a1;
    v18 = a2;

    MEMORY[0x1D3890F70](0x656D614E6F4E5FLL, 0xE700000000000000);
    v10 = static String.hfLocalized(_:)(v17, v18);
  }

  else
  {
    v11 = &v7[*(v9 + 24)];
    v13 = *v11;
    v12 = *(v11 + 1);

    sub_1D1A1EBC8(v7, type metadata accessor for StaticEndpoint);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D1E739C0;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1D1757D20();
    *(v14 + 32) = v13;
    *(v14 + 40) = v12;
    static String.hfLocalized(_:)(a1, a2);
    v10 = sub_1D1E6784C();
  }

  v15 = v10;

  return v15;
}

uint64_t MatterCommandError.statusText.getter()
{
  v1 = *(v0 + *(type metadata accessor for MatterCommandError(0) + 28));

  return v1;
}

uint64_t MatterCommandError.endpoint.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MatterCommandError(0) + 32);

  return sub_1D1A16064(a1, v3);
}

uint64_t _s13HomeDataModel18MatterCommandErrorV9errorCode11clusterPath7command10statusTextA2C0fH0O_AA07ClusterJ0VSo16MTRCommandIDTypeVSSSgtcfC_0@<X0>(__int16 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v11 = *a1;
  v12 = type metadata accessor for MatterCommandError(0);
  v13 = v12[8];
  v14 = type metadata accessor for StaticEndpoint(0);
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  *a6 = v11;
  result = sub_1D1A1EB60(a2, &a6[v12[5]], type metadata accessor for ClusterPath);
  *&a6[v12[6]] = a3;
  v16 = &a6[v12[7]];
  *v16 = a4;
  *(v16 + 1) = a5;
  return result;
}

uint64_t type metadata accessor for MatterCommandError(uint64_t a1)
{
  result = qword_1EC649078;
  if (!qword_1EC649078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1A16064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1A160D8(uint64_t a1)
{
  v2 = sub_1D1A1BBCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A16114(uint64_t a1)
{
  v2 = sub_1D1A1BBCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A16150()
{
  v1 = 0x65646F4D6E7572;
  if (*v0 != 1)
  {
    v1 = 0x646F4D6E61656C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D1A161B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1A1E858(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1A161DC(uint64_t a1)
{
  v2 = sub_1D1A1BB78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A16218(uint64_t a1)
{
  v2 = sub_1D1A1BB78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A16254(uint64_t a1)
{
  v2 = sub_1D1A1BD1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A16290(uint64_t a1)
{
  v2 = sub_1D1A1BD1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A162CC(uint64_t a1)
{
  v2 = sub_1D1A1BC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A16308(uint64_t a1)
{
  v2 = sub_1D1A1BC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MatterCommandError.ErrorCode.RVC.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648F58, &qword_1D1E91AA8);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648F60, &qword_1D1E91AB0);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648F68, &qword_1D1E91AB8);
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648F70, &qword_1D1E91AC0);
  v12 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v14 = &v22 - v13;
  v15 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A1BB78();
  sub_1D1E6930C();
  v16 = (v12 + 8);
  if (v15 >> 14)
  {
    if (v15 >> 14 == 1)
    {
      v33 = 1;
      sub_1D1A1BC74();
      v17 = v29;
      sub_1D1E68DFC();
      v32 = v15 & 0x1FF;
      sub_1D1A1BCC8();
      v18 = v25;
      sub_1D1E68F1C();
      v19 = v24;
    }

    else
    {
      v35 = 2;
      sub_1D1A1BBCC();
      v8 = v26;
      v17 = v29;
      sub_1D1E68DFC();
      v34 = v15 & 0x1FF;
      sub_1D1A1BC20();
      v18 = v28;
      sub_1D1E68F1C();
      v19 = v27;
    }

    (*(v19 + 8))(v8, v18);
    return (*v16)(v14, v17);
  }

  else
  {
    v31 = 0;
    sub_1D1A1BD1C();
    v20 = v29;
    sub_1D1E68DFC();
    v30 = v15;
    sub_1D192CE98();
    sub_1D1E68F1C();
    (*(v23 + 8))(v11, v9);
    return (*v16)(v14, v20);
  }
}

uint64_t MatterCommandError.ErrorCode.RVC.hash(into:)()
{
  v1 = *v0;
  if (!(v1 >> 14))
  {
    MEMORY[0x1D3892850](0);
    if (v1 >> 8)
    {
      if (v1 >> 8 == 1)
      {
        MEMORY[0x1D3892850](1);
        return sub_1D1E6922C();
      }

      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

LABEL_20:
    MEMORY[0x1D3892850](v2);
    return sub_1D1E6922C();
  }

  if (v1 >> 14 == 1)
  {
    MEMORY[0x1D3892850](1);
    if ((v1 & 0x100) == 0)
    {
      v2 = 11;
      goto LABEL_20;
    }

    v3 = v1;
    if (v1 > 4u)
    {
      if (v1 > 7u)
      {
        if (v1 == 8)
        {
          return MEMORY[0x1D3892850](8);
        }

        else if (v1 == 9)
        {
          return MEMORY[0x1D3892850](9);
        }

        else
        {
          return MEMORY[0x1D3892850](10);
        }
      }

      else if (v1 == 5)
      {
        return MEMORY[0x1D3892850](5);
      }

      else if (v1 == 6)
      {
        return MEMORY[0x1D3892850](6);
      }

      else
      {
        return MEMORY[0x1D3892850](7);
      }
    }

    if (v1 > 1u)
    {
      if (v1 != 2)
      {
        if (v1 != 3)
        {
          return MEMORY[0x1D3892850](4);
        }

        return MEMORY[0x1D3892850](3);
      }

      return MEMORY[0x1D3892850](2);
    }
  }

  else
  {
    MEMORY[0x1D3892850](2);
    if ((v1 & 0x100) == 0)
    {
      v2 = 4;
      goto LABEL_20;
    }

    v3 = v1;
    if (v1 > 1u)
    {
      if (v1 != 2)
      {
        return MEMORY[0x1D3892850](3);
      }

      return MEMORY[0x1D3892850](2);
    }
  }

  if (v3)
  {
    return MEMORY[0x1D3892850](1);
  }

  else
  {
    return MEMORY[0x1D3892850](0);
  }
}

uint64_t MatterCommandError.ErrorCode.RVC.hashValue.getter()
{
  sub_1D1E6920C();
  MatterCommandError.ErrorCode.RVC.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t MatterCommandError.ErrorCode.RVC.init(from:)@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  v41 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648FA8, &qword_1D1E91AC8);
  v39 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v40 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648FB0, &qword_1D1E91AD0);
  v5 = *(v4 - 8);
  v37 = v4;
  v38 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648FB8, &qword_1D1E91AD8);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648FC0, &unk_1D1E91AE0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  v15 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D1A1BB78();
  v16 = v42;
  sub_1D1E692FC();
  if (!v16)
  {
    v42 = v12;
    v18 = v40;
    v17 = v41;
    v19 = sub_1D1E68DDC();
    v20 = (2 * *(v19 + 16)) | 1;
    v44 = v19;
    v45 = v19 + 32;
    v46 = 0;
    v47 = v20;
    v21 = sub_1D18085C8();
    if (v21 == 3 || v46 != v47 >> 1)
    {
      v25 = sub_1D1E688EC();
      swift_allocError();
      v26 = v14;
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v28 = &type metadata for MatterCommandError.ErrorCode.RVC;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v25 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v42 + 8))(v26, v11);
      swift_unknownObjectRelease();
    }

    else if (v21)
    {
      if (v21 == 1)
      {
        LOBYTE(v48) = 1;
        sub_1D1A1BC74();
        v22 = v7;
        sub_1D1E68C4C();
        v23 = v42;
        sub_1D1A1BDC4();
        v24 = v37;
        sub_1D1E68D7C();
        (*(v38 + 8))(v22, v24);
        (*(v23 + 8))(v14, v11);
        swift_unknownObjectRelease();
        if (HIBYTE(v48))
        {
          v32 = 256;
        }

        else
        {
          v32 = 0;
        }

        *v17 = v32 | v48 | 0x4000;
      }

      else
      {
        LOBYTE(v48) = 2;
        sub_1D1A1BBCC();
        sub_1D1E68C4C();
        v30 = v42;
        sub_1D1A1BD70();
        v31 = v35;
        sub_1D1E68D7C();
        (*(v39 + 8))(v18, v31);
        (*(v30 + 8))(v14, v11);
        swift_unknownObjectRelease();
        if (HIBYTE(v48))
        {
          v33 = 256;
        }

        else
        {
          v33 = 0;
        }

        *v17 = v33 | v48 | 0x8000;
      }
    }

    else
    {
      LOBYTE(v48) = 0;
      sub_1D1A1BD1C();
      sub_1D1E68C4C();
      sub_1D192D278();
      sub_1D1E68D7C();
      (*(v36 + 8))(v10, v8);
      (*(v42 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v17 = v48;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_1D1A1703C()
{
  sub_1D1E6920C();
  MatterCommandError.ErrorCode.RVC.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1A1708C(uint64_t a1)
{
  sub_1D1E6920C();
  MatterCommandError.ErrorCode.RVC.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1A1710C()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 6518386;
  }
}

uint64_t sub_1D1A17144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6518386 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC3270 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1A17228(uint64_t a1)
{
  v2 = sub_1D1A1C028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A17264(uint64_t a1)
{
  v2 = sub_1D1A1C028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A172A0(uint64_t a1)
{
  v2 = sub_1D1A1C0D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A172DC(uint64_t a1)
{
  v2 = sub_1D1A1C0D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A17318(uint64_t a1)
{
  v2 = sub_1D1A1C07C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A17354(uint64_t a1)
{
  v2 = sub_1D1A1C07C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MatterCommandError.ErrorCode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648FD8, &qword_1D1E91AF0);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v17 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648FE0, &qword_1D1E91AF8);
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648FE8, &qword_1D1E91B00);
  v8 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v10 = &v17 - v9;
  v11 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A1C028();
  sub_1D1E6930C();
  if (v11 >> 10 <= 0x3E)
  {
    v25 = 0;
    sub_1D1A1C0D0();
    v15 = v23;
    sub_1D1E68DFC();
    v24 = v11;
    sub_1D1A1C124();
    v16 = v20;
    sub_1D1E68F1C();
    (*(v19 + 8))(v7, v16);
    return (*(v8 + 8))(v10, v15);
  }

  else
  {
    v26 = 1;
    sub_1D1A1C07C();
    v12 = v18;
    v13 = v23;
    sub_1D1E68DFC();
    (*(v21 + 8))(v12, v22);
    return (*(v8 + 8))(v10, v13);
  }
}

uint64_t MatterCommandError.ErrorCode.hash(into:)()
{
  if (*v0 >> 10 > 0x3Eu)
  {
    return MEMORY[0x1D3892850](1);
  }

  MEMORY[0x1D3892850](0);
  return MatterCommandError.ErrorCode.RVC.hash(into:)();
}

uint64_t MatterCommandError.ErrorCode.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1 >> 10 <= 0x3E)
  {
    MEMORY[0x1D3892850](0);
    MatterCommandError.ErrorCode.RVC.hash(into:)();
  }

  else
  {
    MEMORY[0x1D3892850](1);
  }

  return sub_1D1E6926C();
}

uint64_t MatterCommandError.ErrorCode.init(from:)@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  v32 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649010, &qword_1D1E91B08);
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649018, &qword_1D1E91B10);
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649020, &qword_1D1E91B18);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D1A1C028();
  v13 = v33;
  sub_1D1E692FC();
  if (!v13)
  {
    v14 = v7;
    v28 = v5;
    v33 = v9;
    v15 = v31;
    v16 = v32;
    v17 = sub_1D1E68DDC();
    v18 = (2 * *(v17 + 16)) | 1;
    v35 = v17;
    v36 = v17 + 32;
    v37 = 0;
    v38 = v18;
    v19 = sub_1D18085D0();
    if (v19 == 2 || v37 != v38 >> 1)
    {
      v21 = sub_1D1E688EC();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v23 = &type metadata for MatterCommandError.ErrorCode;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v33 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v19)
    {
      LOBYTE(v39) = 1;
      sub_1D1A1C07C();
      sub_1D1E68C4C();
      v20 = v33;
      (*(v15 + 8))(v4, v29);
      (*(v20 + 8))(v11, v8);
      swift_unknownObjectRelease();
      *v16 = -1024;
    }

    else
    {
      LOBYTE(v39) = 0;
      sub_1D1A1C0D0();
      sub_1D1E68C4C();
      v25 = v33;
      sub_1D1A1C178();
      v26 = v28;
      sub_1D1E68D7C();
      (*(v30 + 8))(v14, v26);
      (*(v25 + 8))(v11, v8);
      swift_unknownObjectRelease();
      *v16 = v39;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_1D1A17C68()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1 >> 10 <= 0x3E)
  {
    MEMORY[0x1D3892850](0);
    MatterCommandError.ErrorCode.RVC.hash(into:)();
  }

  else
  {
    MEMORY[0x1D3892850](1);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1A17CDC()
{
  if (*v0 >> 10 > 0x3Eu)
  {
    return MEMORY[0x1D3892850](1);
  }

  MEMORY[0x1D3892850](0);
  return MatterCommandError.ErrorCode.RVC.hash(into:)();
}

uint64_t sub_1D1A17D48(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  if (v2 >> 10 <= 0x3E)
  {
    MEMORY[0x1D3892850](0);
    MatterCommandError.ErrorCode.RVC.hash(into:)();
  }

  else
  {
    MEMORY[0x1D3892850](1);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1A17DF0()
{
  v1 = *v0;
  v2 = 0x646F43726F727265;
  v3 = 0x49646E616D6D6F63;
  v4 = 0x6554737574617473;
  if (v1 != 3)
  {
    v4 = 0x746E696F70646E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5072657473756C63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1A17EA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1A1E984(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1A17EC8(uint64_t a1)
{
  v2 = sub_1D1A1C7F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A17F04(uint64_t a1)
{
  v2 = sub_1D1A1C7F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MatterCommandError.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649030, &qword_1D1E91B20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A1C7F8();
  sub_1D1E6930C();
  v11 = *v3;
  v10[13] = 0;
  sub_1D1A1C84C();
  sub_1D1E68F1C();
  if (!v2)
  {
    type metadata accessor for MatterCommandError(0);
    v10[12] = 1;
    type metadata accessor for ClusterPath(0);
    sub_1D1A1EC28(&qword_1EC646D88, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
    sub_1D1E68F1C();
    v10[11] = 2;
    sub_1D1E68F5C();
    v10[10] = 3;
    sub_1D1E68E0C();
    v10[9] = 4;
    type metadata accessor for StaticEndpoint(0);
    sub_1D1A1EC28(&qword_1EC6446D8, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MatterCommandError.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for StaticEndpoint(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v15 - v8;
  v10 = *v1;
  if (v10 >> 10 <= 0x3E)
  {
    MEMORY[0x1D3892850](0);
    v15[7] = v10;
    MatterCommandError.ErrorCode.RVC.hash(into:)();
  }

  else
  {
    MEMORY[0x1D3892850](1);
  }

  v11 = type metadata accessor for MatterCommandError(0);
  v12 = v1 + v11[5];
  sub_1D1E66A7C();
  sub_1D1A1EC28(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v13 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*&v12[*(v13 + 20)]);
  sub_1D1E6923C();
  type metadata accessor for ClusterPath(0);
  sub_1D1E6924C();
  sub_1D1E6924C();
  if (*(v1 + v11[7] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1741C08(v1 + v11[8], v9, &qword_1EC644780, &qword_1D1E91AA0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return sub_1D1E6922C();
  }

  sub_1D1A1EB60(v9, v6, type metadata accessor for StaticEndpoint);
  sub_1D1E6922C();
  StaticEndpoint.hash(into:)(a1);
  return sub_1D1A1EBC8(v6, type metadata accessor for StaticEndpoint);
}

uint64_t MatterCommandError.hashValue.getter()
{
  v1 = type metadata accessor for StaticEndpoint(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  sub_1D1E6920C();
  v8 = *v0;
  if (v8 >> 10 <= 0x3E)
  {
    MEMORY[0x1D3892850](0);
    v13[3] = v8;
    MatterCommandError.ErrorCode.RVC.hash(into:)();
  }

  else
  {
    MEMORY[0x1D3892850](1);
  }

  v9 = type metadata accessor for MatterCommandError(0);
  v10 = v0 + v9[5];
  sub_1D1E66A7C();
  sub_1D1A1EC28(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v11 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*&v10[*(v11 + 20)]);
  sub_1D1E6923C();
  type metadata accessor for ClusterPath(0);
  sub_1D1E6924C();
  sub_1D1E6924C();
  if (*(v0 + v9[7] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1741C08(v0 + v9[8], v7, &qword_1EC644780, &qword_1D1E91AA0);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1A1EB60(v7, v4, type metadata accessor for StaticEndpoint);
    sub_1D1E6922C();
    StaticEndpoint.hash(into:)(v14);
    sub_1D1A1EBC8(v4, type metadata accessor for StaticEndpoint);
  }

  return sub_1D1E6926C();
}

uint64_t MatterCommandError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v26 - v4;
  v5 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649048, &qword_1D1E91B28);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v26 - v8;
  v10 = type metadata accessor for MatterCommandError(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 32);
  v15 = type metadata accessor for StaticEndpoint(0);
  v16 = *(*(v15 - 8) + 56);
  v32 = v14;
  v33 = v13;
  v16(&v13[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A1C7F8();
  v29 = v9;
  v17 = v31;
  sub_1D1E692FC();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D1741A30(v33 + v32, &qword_1EC644780, &qword_1D1E91AA0);
  }

  else
  {
    v31 = v15;
    v18 = v28;
    v38 = 0;
    sub_1D1A1C8A0();
    sub_1D1E68D7C();
    v19 = v33;
    *v33 = v39;
    v37 = 1;
    sub_1D1A1EC28(&qword_1EC646DC0, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
    sub_1D1E68D7C();
    sub_1D1A1EB60(v7, v19 + v10[5], type metadata accessor for ClusterPath);
    v36 = 2;
    v20 = v29;
    *(v19 + v10[6]) = sub_1D1E68DBC();
    v35 = 3;
    v21 = sub_1D1E68C6C();
    v22 = (v19 + v10[7]);
    *v22 = v21;
    v22[1] = v23;
    v34 = 4;
    sub_1D1A1EC28(&qword_1EC644740, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
    v24 = v27;
    sub_1D1E68CBC();
    (*(v18 + 8))(v20, v30);
    sub_1D1A16064(v24, v19 + v32);
    sub_1D1A1EC70(v19, v26, type metadata accessor for MatterCommandError);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D1A1EBC8(v19, type metadata accessor for MatterCommandError);
  }
}

uint64_t sub_1D1A18D20(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for StaticEndpoint(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v15 - v9;
  sub_1D1E6920C();
  v11 = *v2;
  if (v11 >> 10 <= 0x3E)
  {
    MEMORY[0x1D3892850](0);
    v15[3] = v11;
    MatterCommandError.ErrorCode.RVC.hash(into:)();
  }

  else
  {
    MEMORY[0x1D3892850](1);
  }

  v12 = v2 + a2[5];
  sub_1D1E66A7C();
  sub_1D1A1EC28(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v13 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*&v12[*(v13 + 20)]);
  sub_1D1E6923C();
  type metadata accessor for ClusterPath(0);
  sub_1D1E6924C();
  sub_1D1E6924C();
  if (*(v2 + a2[7] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1741C08(v2 + a2[8], v10, &qword_1EC644780, &qword_1D1E91AA0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1A1EB60(v10, v7, type metadata accessor for StaticEndpoint);
    sub_1D1E6922C();
    StaticEndpoint.hash(into:)(v16);
    sub_1D1A1EBC8(v7, type metadata accessor for StaticEndpoint);
  }

  return sub_1D1E6926C();
}

uint64_t MatterCommandError.contextualize()()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v1[3] = swift_task_alloc();
  type metadata accessor for ClusterPath(0);
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for MatterStateSnapshot(0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A19194, 0, 0);
}

uint64_t sub_1D1A19194()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for MatterCommandError(0);
  *(v0 + 72) = v3;
  v4 = *(v3 + 20);
  *(v0 + 88) = v4;
  sub_1D1A1EC70(v2 + v4, v1, type metadata accessor for ClusterPath);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1D1A19264;
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);

  return sub_1D1A19514(v6, v7);
}

uint64_t sub_1D1A19264()
{
  v1 = *(*v0 + 32);

  sub_1D1A1EBC8(v1, type metadata accessor for EndpointPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1A19390, 0, 0);
}

uint64_t sub_1D1A19390()
{
  v1 = *(v0 + 40);
  if ((*(*(v0 + 56) + 48))(v1, 1, *(v0 + 48)) == 1)
  {
    sub_1D1741A30(v1, &unk_1EC64F390, &qword_1D1E92B10);
  }

  else
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = *(v0 + 16);
    sub_1D1A1EB60(v1, v3, type metadata accessor for MatterStateSnapshot);
    sub_1D1A1EC70(v7 + v2, v5, type metadata accessor for ClusterPath);
    sub_1D1A19BD8(v5, v3, v6);
    sub_1D1A1EBC8(v3, type metadata accessor for MatterStateSnapshot);
    sub_1D1A1EBC8(v5, type metadata accessor for EndpointPath);
    sub_1D1A16064(v6, v7 + *(v4 + 32));
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D1A19514(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for EndpointPath(0);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v2[5] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[6] = v4;
  v5 = swift_task_alloc();
  v2[7] = v5;
  *v5 = v2;
  v5[1] = sub_1D1A19628;

  return sub_1D1A1A7E8(v4, a2);
}

uint64_t sub_1D1A19628()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1A19724, 0, 0);
}

uint64_t sub_1D1A19724()
{
  v26 = v0;
  v1 = v0[5];
  sub_1D1741C08(v0[6], v1, &unk_1EC64F390, &qword_1D1E92B10);
  v2 = type metadata accessor for MatterStateSnapshot(0);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1D1741A30(v0[5], &unk_1EC64F390, &qword_1D1E92B10);
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v5 = v0[3];
    v4 = v0[4];
    v6 = sub_1D1E6709C();
    __swift_project_value_buffer(v6, qword_1EE07A0B0);
    sub_1D1A1EC70(v5, v4, type metadata accessor for EndpointPath);
    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6833C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[6];
    v11 = v0[4];
    if (v9)
    {
      v12 = swift_slowAlloc();
      v24 = v10;
      v25 = swift_slowAlloc();
      v13 = v25;
      *v12 = 136446210;
      sub_1D1E66A7C();
      sub_1D1A1EC28(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v14 = sub_1D1E68FAC();
      v16 = v15;
      sub_1D1A1EBC8(v11, type metadata accessor for EndpointPath);
      v17 = sub_1D1B1312C(v14, v16, &v25);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1D16EC000, v7, v8, "MatterCommandError.contextualize failed to find home snapshot for home ID %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v12, -1, -1);

      v18 = v24;
    }

    else
    {

      sub_1D1A1EBC8(v11, type metadata accessor for EndpointPath);
      v18 = v10;
    }

    sub_1D1741A30(v18, &unk_1EC64F390, &qword_1D1E92B10);
    v21 = 1;
  }

  else
  {
    v19 = v0[5];
    v20 = v0[2];
    sub_1D1741A30(v0[6], &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1A1EB60(v19, v20, type metadata accessor for MatterStateSnapshot);
    v21 = 0;
  }

  (*(v3 + 56))(v0[2], v21, 1, v2);

  v22 = v0[1];

  return v22();
}

uint64_t MatterCommandError.contextualize(matterSnapshot:)(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  v9 = type metadata accessor for MatterCommandError(0);
  sub_1D1A1EC70(v1 + *(v9 + 20), v5, type metadata accessor for ClusterPath);
  sub_1D1A19BD8(v5, a1, v8);
  sub_1D1A1EBC8(v5, type metadata accessor for EndpointPath);
  return sub_1D1A16064(v8, v1 + *(v9 + 32));
}

uint64_t sub_1D1A19BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a3;
  v113 = type metadata accessor for EndpointPath(0);
  v5 = MEMORY[0x1EEE9AC00](v113);
  v112 = (&v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v5);
  v111 = &v104 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v107 = &v104 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v104 - v11;
  v12 = type metadata accessor for StaticEndpoint(0);
  v115 = *(v12 - 8);
  v116 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for StaticMatterDevice(0);
  v108 = *(v110 - 8);
  v14 = MEMORY[0x1EEE9AC00](v110);
  v105 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v104 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v109 = &v104 - v19;
  v20 = sub_1D1E66A7C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v104 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v104 - v28;
  v30 = type metadata accessor for MatterStateSnapshot(0);
  v31 = *(v30 + 20);
  v114 = v21;
  v32 = *(v21 + 16);
  v118 = v20;
  v33 = v20;
  v34 = a1;
  v32(v29, a2 + v31, v33);
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v50 = sub_1D1E6709C();
    __swift_project_value_buffer(v50, qword_1EE07A0B0);
    v51 = a1;
    v52 = v112;
    sub_1D1A1EC70(v51, v112, type metadata accessor for EndpointPath);
    v53 = v118;
    v32(v24, v29, v118);
    v54 = sub_1D1E6707C();
    v55 = sub_1D1E6833C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v119 = v57;
      *v56 = 136446466;
      sub_1D1A1EC28(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v58 = sub_1D1E68FAC();
      v110 = v29;
      v60 = v59;
      sub_1D1A1EBC8(v52, type metadata accessor for EndpointPath);
      v61 = sub_1D1B1312C(v58, v60, &v119);

      *(v56 + 4) = v61;
      *(v56 + 12) = 2082;
      v62 = sub_1D1E68FAC();
      v64 = v63;
      v65 = *(v114 + 8);
      v65(v24, v53);
      v66 = sub_1D1B1312C(v62, v64, &v119);

      *(v56 + 14) = v66;
      _os_log_impl(&dword_1D16EC000, v54, v55, "MatterCommandError.contextualize passed snapshot for wrong home. Expected %{public}s, received %{public}s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v57, -1, -1);
      MEMORY[0x1D3893640](v56, -1, -1);

      v65(v110, v53);
    }

    else
    {

      v83 = *(v114 + 8);
      v83(v24, v53);
      sub_1D1A1EBC8(v52, type metadata accessor for EndpointPath);
      v83(v29, v53);
    }

    goto LABEL_23;
  }

  v35 = *(a2 + *(v30 + 24));
  v36 = v113;
  if (!*(v35 + 16) || (v37 = sub_1D17420B0(*(a1 + *(v113 + 20))), (v38 & 1) == 0))
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v67 = sub_1D1E6709C();
    __swift_project_value_buffer(v67, qword_1EE07A0B0);
    v68 = v111;
    sub_1D1A1EC70(a1, v111, type metadata accessor for EndpointPath);
    v69 = v29;
    v70 = v29;
    v71 = v118;
    v32(v27, v69, v118);
    v72 = sub_1D1E6707C();
    v73 = sub_1D1E6833C();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v110 = v70;
      v76 = v75;
      v119 = v75;
      *v74 = 134349314;
      v77 = *(v68 + *(v36 + 20));
      sub_1D1A1EBC8(v68, type metadata accessor for EndpointPath);
      *(v74 + 4) = v77;
      *(v74 + 12) = 2082;
      sub_1D1A1EC28(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v78 = sub_1D1E68FAC();
      v80 = v79;
      v81 = *(v114 + 8);
      v81(v27, v71);
      v82 = sub_1D1B1312C(v78, v80, &v119);

      *(v74 + 14) = v82;
      _os_log_impl(&dword_1D16EC000, v72, v73, "MatterCommandError.contextualize failed to find static device for id %{public}llu in home %{public}s", v74, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x1D3893640](v76, -1, -1);
      MEMORY[0x1D3893640](v74, -1, -1);

      v81(v110, v71);
    }

    else
    {
      sub_1D1A1EBC8(v68, type metadata accessor for EndpointPath);

      v84 = *(v114 + 8);
      v84(v27, v71);
      v84(v70, v71);
    }

    goto LABEL_23;
  }

  sub_1D1A1EC70(*(v35 + 56) + *(v108 + 72) * v37, v18, type metadata accessor for StaticMatterDevice);
  v39 = v109;
  sub_1D1A1EB60(v18, v109, type metadata accessor for StaticMatterDevice);
  v40 = *(v39 + *(v110 + 56));
  if (!*(v40 + 16) || (v41 = sub_1D171D15C(*(a1 + *(v36 + 24))), (v42 & 1) == 0))
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v85 = sub_1D1E6709C();
    __swift_project_value_buffer(v85, qword_1EE07A0B0);
    v86 = a1;
    v87 = v106;
    sub_1D1A1EC70(v86, v106, type metadata accessor for EndpointPath);
    v88 = v107;
    sub_1D1A1EC70(v34, v107, type metadata accessor for EndpointPath);
    v89 = v105;
    sub_1D1A1EC70(v39, v105, type metadata accessor for StaticMatterDevice);
    v90 = sub_1D1E6707C();
    v91 = sub_1D1E6833C();
    v92 = os_log_type_enabled(v90, v91);
    v93 = v118;
    if (v92)
    {
      v94 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v119 = v112;
      *v94 = 33686274;
      v95 = v87;
      v96 = *(v87 + *(v36 + 24));
      sub_1D1A1EBC8(v95, type metadata accessor for EndpointPath);
      *(v94 + 4) = v96;
      *(v94 + 6) = 2050;
      v97 = *(v88 + *(v36 + 20));
      sub_1D1A1EBC8(v88, type metadata accessor for EndpointPath);
      *(v94 + 8) = v97;
      *(v94 + 16) = 2080;
      v98 = (v89 + *(v110 + 24));
      v99 = *v98;
      v100 = v98[1];

      sub_1D1A1EBC8(v89, type metadata accessor for StaticMatterDevice);
      v101 = sub_1D1B1312C(v99, v100, &v119);

      *(v94 + 18) = v101;
      _os_log_impl(&dword_1D16EC000, v90, v91, "MatterCommandError.contextualize failed to find endpoint for id %{public}hu in device %{public}llu (%s)", v94, 0x1Au);
      v102 = v112;
      __swift_destroy_boxed_opaque_existential_1(v112);
      MEMORY[0x1D3893640](v102, -1, -1);
      MEMORY[0x1D3893640](v94, -1, -1);

      (*(v114 + 8))(v29, v118);
    }

    else
    {
      sub_1D1A1EBC8(v88, type metadata accessor for EndpointPath);
      sub_1D1A1EBC8(v87, type metadata accessor for EndpointPath);

      sub_1D1A1EBC8(v89, type metadata accessor for StaticMatterDevice);
      (*(v114 + 8))(v29, v93);
    }

    sub_1D1A1EBC8(v39, type metadata accessor for StaticMatterDevice);
LABEL_23:
    v49 = 1;
    v48 = v117;
    v44 = v115;
    return (*(v44 + 56))(v48, v49, 1, v116);
  }

  v43 = *(v40 + 56);
  v44 = v115;
  v45 = v104;
  sub_1D1A1EC70(v43 + *(v115 + 72) * v41, v104, type metadata accessor for StaticEndpoint);
  (*(v114 + 8))(v29, v118);
  sub_1D1A1EBC8(v39, type metadata accessor for StaticMatterDevice);
  v46 = v45;
  v47 = v117;
  sub_1D1A1EB60(v46, v117, type metadata accessor for StaticEndpoint);
  v48 = v47;
  v49 = 0;
  return (*(v44 + 56))(v48, v49, 1, v116);
}

uint64_t sub_1D1A1A7E8(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A1A884, 0, 0);
}

uint64_t sub_1D1A1A884(uint64_t a1)
{
  v2 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v1[13] = v2;
  if (v2)
  {
    v1[14] = v2[3];
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v3 = qword_1EC64ABE8;
    v4 = sub_1D1A1AE2C;
    v5 = 0;
  }

  else
  {
    v1[15] = sub_1D1E67E1C();
    v1[16] = sub_1D1E67E0C();
    v6 = sub_1D1E67D4C();
    v8 = v7;
    v4 = sub_1D1A1A97C;
    v3 = v6;
    v5 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v5);
}

uint64_t sub_1D1A1A97C()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1A1AA14, 0, 0);
}

uint64_t sub_1D1A1AA14(uint64_t a1)
{
  *(v1 + 136) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A1AAA0, v3, v2);
}

uint64_t sub_1D1A1AAA0()
{

  *(v0 + 144) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1A1AB14, 0, 0);
}

uint64_t sub_1D1A1AB14(uint64_t a1)
{
  *(v1 + 152) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A1ABA0, v3, v2);
}

uint64_t sub_1D1A1ABA0()
{
  v1 = v0[18];

  swift_getKeyPath();
  v0[8] = v1;
  sub_1D1A1EC28(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v2 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToMatterSnapshots;
  swift_beginAccess();
  v0[20] = *(v1 + v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1A1ACAC, 0, 0);
}

uint64_t sub_1D1A1ACAC()
{
  if (*(v0[20] + 16) && (v1 = sub_1D1742188(), (v2 & 1) != 0))
  {
    v3 = v1;
    v4 = v0[10];
    v5 = *(v0[20] + 56);
    v6 = type metadata accessor for MatterStateSnapshot(0);
    v7 = *(v6 - 8);
    sub_1D1A1EC70(v5 + *(v7 + 72) * v3, v4, type metadata accessor for MatterStateSnapshot);

    v8 = 0;
  }

  else
  {

    v6 = type metadata accessor for MatterStateSnapshot(0);
    v7 = *(v6 - 8);
    v8 = 1;
  }

  (*(v7 + 56))(v0[10], v8, 1, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1A1AE2C()
{
  v1 = v0[14];
  swift_getKeyPath();
  v0[9] = v1;
  sub_1D1A1EC28(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v2 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v0[21] = *(v1 + v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1A1AF34, 0, 0);
}

uint64_t sub_1D1A1AF34()
{
  if (*(v0[21] + 16))
  {
    v1 = sub_1D1742188();
    v2 = v0[12];
    if (v3)
    {
      v4 = v1;
      v5 = *(v0[21] + 56);
      v6 = type metadata accessor for HomeState(0);
      v7 = *(v6 - 8);
      sub_1D1A1EC70(v5 + *(v7 + 72) * v4, v2, type metadata accessor for HomeState);

      (*(v7 + 56))(v2, 0, 1, v6);
    }

    else
    {

      v6 = type metadata accessor for HomeState(0);
      (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    }
  }

  else
  {
    v8 = v0[12];

    v6 = type metadata accessor for HomeState(0);
    (*(*(v6 - 8) + 56))(v8, 1, 1, v6);
  }

  v9 = v0[12];
  type metadata accessor for HomeState(0);
  v10 = 1;
  if (!(*(*(v6 - 8) + 48))(v9, 1, v6))
  {
    sub_1D1A1EC70(v9 + *(v6 + 24), v0[10], type metadata accessor for MatterStateSnapshot);
    v10 = 0;
  }

  sub_1D1741A30(v9, &qword_1EC649148, &qword_1D1E96490);
  v11 = type metadata accessor for MatterStateSnapshot(0);
  (*(*(v11 - 8) + 56))(v0[10], v10, 1, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D1A1B1DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4BFC;

  return MatterCommandError.contextualize()();
}

uint64_t sub_1D1A1B268(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D1A1EC70(v2 + *(a2 + 20), v7, type metadata accessor for ClusterPath);
  sub_1D1A19BD8(v7, a1, v10);
  sub_1D1A1EBC8(v7, type metadata accessor for EndpointPath);
  return sub_1D1A16064(v10, v2 + *(a2 + 32));
}

uint64_t sub_1D1A1B390()
{
  v1 = sub_1D1A1B510(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;

  return v3;
}

uint64_t MatterCommandError.errorDescription.getter()
{
  v1 = sub_1D1A1B510(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;

  return v3;
}

uint64_t sub_1D1A1B448()
{
  sub_1D1A1B510(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;

  return v3;
}

uint64_t MatterCommandError.failureReason.getter()
{
  sub_1D1A1B510(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;

  return v3;
}

uint64_t sub_1D1A1B510(uint64_t a1)
{
  v2 = *v1;
  if (v2 >> 10 < 0x3F)
  {
    if (v2 >> 14)
    {
      if (v2 >> 14 == 1)
      {
        v10 = v2 & 0x1FF;
        return sub_1D196A9CC(a1);
      }

      else
      {
        return sub_1D196B1D4(a1);
      }
    }

    else
    {
      v9 = *v1;
      return sub_1D196A610(a1);
    }
  }

  else
  {
    v8 = MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for MatterCommandError(0);
    sub_1D1A1EC28(&qword_1EC6474F8, type metadata accessor for MatterCommandError, &protocol conformance descriptor for MatterCommandError);
    v3 = swift_allocError();
    sub_1D1A1EC70(v8, v4, type metadata accessor for MatterCommandError);
    v5 = sub_1D1A1E548(sub_1D1A1EB58, &v7, v3);

    return v5;
  }
}

uint64_t sub_1D1A1B69C(uint64_t a1)
{
  BYTE8(v4) = 0;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC3290);
  v2 = a1 + *(type metadata accessor for MatterCommandError(0) + 20);
  *&v4 = *(v2 + *(type metadata accessor for ClusterPath(0) + 20));
  sub_1D1E68ABC();
  return *(&v4 + 1);
}

uint64_t sub_1D1A1B74C()
{
  v0 = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBEF10);
  v2 = v1;
  result = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBEEE0);
  qword_1EC6BE140 = result;
  *algn_1EC6BE148 = v4;
  qword_1EC6BE150 = v0;
  unk_1EC6BE158 = v2;
  return result;
}

uint64_t _s13HomeDataModel18MatterCommandErrorV0F4CodeO3RVCO2eeoiySbAG_AGtFZ_0(_WORD *a1, _WORD *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 14)
  {
    if (v2 >> 14 == 1)
    {
      if ((v3 & 0xC000) == 0x4000)
      {
        if ((v2 & 0x100) != 0)
        {
          v6 = *a1;
          if (v6 <= 4)
          {
            if (*a1 <= 1u)
            {
              if (*a1)
              {
                if ((v3 & 0x100) != 0 && *a2 == 1)
                {
                  return 1;
                }
              }

              else if ((v3 & 0x100) != 0 && !*a2)
              {
                return 1;
              }
            }

            else if (v6 == 2)
            {
              if ((v3 & 0x100) != 0 && *a2 == 2)
              {
                return 1;
              }
            }

            else if (v6 == 3)
            {
              if ((v3 & 0x100) != 0 && *a2 == 3)
              {
                return 1;
              }
            }

            else if ((v3 & 0x100) != 0 && *a2 == 4)
            {
              return 1;
            }
          }

          else if (*a1 > 7u)
          {
            if (v6 == 8)
            {
              if ((v3 & 0x100) != 0 && *a2 == 8)
              {
                return 1;
              }
            }

            else if (v6 == 9)
            {
              if ((v3 & 0x100) != 0 && *a2 == 9)
              {
                return 1;
              }
            }

            else if ((v3 & 0x100) != 0 && *a2 >= 0xAu)
            {
              return 1;
            }
          }

          else if (v6 == 5)
          {
            if ((v3 & 0x100) != 0 && *a2 == 5)
            {
              return 1;
            }
          }

          else if (v6 == 6)
          {
            if ((v3 & 0x100) != 0 && *a2 == 6)
            {
              return 1;
            }
          }

          else if ((v3 & 0x100) != 0 && *a2 == 7)
          {
            return 1;
          }
        }

        else if ((v3 & 0x100) == 0 && *a1 == v3)
        {
          return 1;
        }
      }
    }

    else if ((v3 & 0xC000) == 0x8000)
    {
      if ((v2 & 0x100) != 0)
      {
        if (*a1 > 1u)
        {
          if (*a1 == 2)
          {
            if ((v3 & 0x100) != 0 && *a2 == 2)
            {
              return 1;
            }
          }

          else if ((v3 & 0x100) != 0 && *a2 >= 3u)
          {
            return 1;
          }
        }

        else if (*a1)
        {
          if ((v3 & 0x100) != 0 && *a2 == 1)
          {
            return 1;
          }
        }

        else if ((v3 & 0x100) != 0 && !*a2)
        {
          return 1;
        }
      }

      else if ((v3 & 0x100) == 0 && *a1 == v3)
      {
        return 1;
      }
    }
  }

  else if (v3 < 0x4000)
  {
    v5 = v3 >> 8;
    if (v2 >> 8)
    {
      if (v2 >> 8 == 1)
      {
        if (v5 == 1 && *a1 == v3)
        {
          return 1;
        }
      }

      else if (v5 == 2 && *a1 == v3)
      {
        return 1;
      }
    }

    else if (!v5 && *a1 == v3)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1D1A1BB78()
{
  result = qword_1EC648F78;
  if (!qword_1EC648F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F78);
  }

  return result;
}

unint64_t sub_1D1A1BBCC()
{
  result = qword_1EC648F80;
  if (!qword_1EC648F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F80);
  }

  return result;
}

unint64_t sub_1D1A1BC20()
{
  result = qword_1EC648F88;
  if (!qword_1EC648F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F88);
  }

  return result;
}

unint64_t sub_1D1A1BC74()
{
  result = qword_1EC648F90;
  if (!qword_1EC648F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F90);
  }

  return result;
}

unint64_t sub_1D1A1BCC8()
{
  result = qword_1EC648F98;
  if (!qword_1EC648F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648F98);
  }

  return result;
}

unint64_t sub_1D1A1BD1C()
{
  result = qword_1EC648FA0;
  if (!qword_1EC648FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648FA0);
  }

  return result;
}

unint64_t sub_1D1A1BD70()
{
  result = qword_1EC648FC8;
  if (!qword_1EC648FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648FC8);
  }

  return result;
}

unint64_t sub_1D1A1BDC4()
{
  result = qword_1EC648FD0;
  if (!qword_1EC648FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648FD0);
  }

  return result;
}

BOOL _s13HomeDataModel18MatterCommandErrorV0F4CodeO2eeoiySbAE_AEtFZ_0(_WORD *a1, _WORD *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 >> 10;
  if (v2 >> 10 <= 0x3E)
  {
    if (v4 > 0x3E)
    {
      return 0;
    }

    if (v2 >> 14)
    {
      if (v2 >> 14 == 1)
      {
        if ((v3 & 0xC000) != 0x4000)
        {
          return 0;
        }

        if ((v2 & 0x100) != 0)
        {
          v6 = *a1;
          if (v6 > 4)
          {
            if (*a1 > 7u)
            {
              if (v6 == 8)
              {
                if ((v3 & 0x100) != 0 && *a2 == 8)
                {
                  return 1;
                }
              }

              else if (v6 == 9)
              {
                if ((v3 & 0x100) != 0 && *a2 == 9)
                {
                  return 1;
                }
              }

              else if ((v3 & 0x100) != 0 && *a2 >= 0xAu)
              {
                return 1;
              }
            }

            else if (v6 == 5)
            {
              if ((v3 & 0x100) != 0 && *a2 == 5)
              {
                return 1;
              }
            }

            else if (v6 == 6)
            {
              if ((v3 & 0x100) != 0 && *a2 == 6)
              {
                return 1;
              }
            }

            else if ((v3 & 0x100) != 0 && *a2 == 7)
            {
              return 1;
            }

            return 0;
          }

          if (*a1 > 1u)
          {
            if (v6 != 2)
            {
              if (v6 == 3)
              {
                if ((v3 & 0x100) != 0 && *a2 == 3)
                {
                  return 1;
                }
              }

              else if ((v3 & 0x100) != 0 && *a2 == 4)
              {
                return 1;
              }

              return 0;
            }

            return (v3 & 0x100) != 0 && *a2 == 2;
          }

          goto LABEL_42;
        }
      }

      else
      {
        if ((v3 & 0xC000) != 0x8000)
        {
          return 0;
        }

        if ((v2 & 0x100) != 0)
        {
          v6 = *a1;
          if (v6 > 1)
          {
            if (v6 != 2)
            {
              return (v3 & 0x100) != 0 && *a2 >= 3u;
            }

            return (v3 & 0x100) != 0 && *a2 == 2;
          }

LABEL_42:
          if (v6)
          {
            if ((v3 & 0x100) != 0 && *a2 == 1)
            {
              return 1;
            }
          }

          else if ((v3 & 0x100) != 0 && !*a2)
          {
            return 1;
          }

          return 0;
        }
      }

      if ((v3 & 0x100) != 0)
      {
        return 0;
      }
    }

    else
    {
      if (v3 >= 0x4000)
      {
        return 0;
      }

      if (v2 >> 8)
      {
        if (v2 >> 8 == 1)
        {
          if (v3 >> 8 != 1)
          {
            return 0;
          }
        }

        else if (v3 >> 8 != 2)
        {
          return 0;
        }
      }

      else if ((v3 & 0xFF00) != 0)
      {
        return 0;
      }
    }

    return *a1 == v3;
  }

  return v4 > 0x3E;
}

unint64_t sub_1D1A1C028()
{
  result = qword_1EC648FF0;
  if (!qword_1EC648FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648FF0);
  }

  return result;
}

unint64_t sub_1D1A1C07C()
{
  result = qword_1EC648FF8;
  if (!qword_1EC648FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648FF8);
  }

  return result;
}

unint64_t sub_1D1A1C0D0()
{
  result = qword_1EC649000;
  if (!qword_1EC649000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649000);
  }

  return result;
}

unint64_t sub_1D1A1C124()
{
  result = qword_1EC649008;
  if (!qword_1EC649008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649008);
  }

  return result;
}

unint64_t sub_1D1A1C178()
{
  result = qword_1EC649028;
  if (!qword_1EC649028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649028);
  }

  return result;
}

BOOL _s13HomeDataModel18MatterCommandErrorV2eeoiySbAC_ACtFZ_0(_WORD *a1, _WORD *a2)
{
  v4 = type metadata accessor for StaticEndpoint(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649150, &qword_1D1E927B0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  v15 = *a1;
  v16 = *a2;
  v17 = v16 >> 10;
  if (v15 >> 10 > 0x3E)
  {
    if (v17 <= 0x3E)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (v17 > 0x3E)
  {
    return 0;
  }

  if (!(v15 >> 14))
  {
    if (v16 >= 0x4000)
    {
      return 0;
    }

    v30 = v15 >> 8;
    if (v30)
    {
      if (v30 == 1)
      {
        v30 = 0;
        if (v16 >> 8 != 1)
        {
          return v30;
        }
      }

      else
      {
        v30 = 0;
        if (v16 >> 8 != 2)
        {
          return v30;
        }
      }
    }

    else if ((v16 & 0xFF00) != 0)
    {
      return v30;
    }

    goto LABEL_45;
  }

  if (v15 >> 14 != 1)
  {
    if ((v16 & 0xC000) != 0x8000)
    {
      return 0;
    }

    if ((v15 & 0x100) != 0)
    {
      v30 = *a1;
      if (*a1 > 1u)
      {
        if (v30 != 2)
        {
          v30 = 0;
          if ((v16 & 0x100) != 0 && *a2 >= 3u)
          {
            goto LABEL_3;
          }

          return v30;
        }

        goto LABEL_57;
      }

LABEL_53:
      if (v30)
      {
        v30 = 0;
        if ((v16 & 0x100) != 0 && *a2 == 1)
        {
          goto LABEL_3;
        }
      }

      else if ((v16 & 0x100) != 0 && !*a2)
      {
        goto LABEL_3;
      }

      return v30;
    }

    goto LABEL_35;
  }

  if ((v16 & 0xC000) != 0x4000)
  {
    return 0;
  }

  if ((v15 & 0x100) == 0)
  {
LABEL_35:
    v30 = 0;
    if ((v16 & 0x100) != 0)
    {
      return v30;
    }

LABEL_45:
    if (*a1 != v16)
    {
      return v30;
    }

    goto LABEL_3;
  }

  v30 = *a1;
  if (*a1 <= 4u)
  {
    if (*a1 > 1u)
    {
      if (v30 != 2)
      {
        if (v30 == 3)
        {
          v30 = 0;
          if ((v16 & 0x100) != 0 && *a2 == 3)
          {
            goto LABEL_3;
          }
        }

        else
        {
          v30 = 0;
          if ((v16 & 0x100) != 0 && *a2 == 4)
          {
            goto LABEL_3;
          }
        }

        return v30;
      }

LABEL_57:
      v30 = 0;
      if ((v16 & 0x100) != 0 && *a2 == 2)
      {
        goto LABEL_3;
      }

      return v30;
    }

    goto LABEL_53;
  }

  if (*a1 > 7u)
  {
    if (v30 == 8)
    {
      v30 = 0;
      if ((v16 & 0x100) != 0 && *a2 == 8)
      {
        goto LABEL_3;
      }
    }

    else if (v30 == 9)
    {
      v30 = 0;
      if ((v16 & 0x100) != 0 && *a2 == 9)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v30 = 0;
      if ((v16 & 0x100) != 0 && *a2 >= 0xAu)
      {
        goto LABEL_3;
      }
    }
  }

  else if (v30 == 5)
  {
    v30 = 0;
    if ((v16 & 0x100) != 0 && *a2 == 5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (v30 == 6)
    {
      v30 = 0;
      if ((v16 & 0x100) == 0 || *a2 != 6)
      {
        return v30;
      }

LABEL_3:
      v37 = v5;
      v18 = v12;
      v19 = type metadata accessor for MatterCommandError(0);
      v20 = v19[5];
      v21 = a1 + v20;
      v22 = a2 + v20;
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
        return 0;
      }

      v23 = type metadata accessor for EndpointPath(0);
      if (*&v21[*(v23 + 20)] != *&v22[*(v23 + 20)])
      {
        return 0;
      }

      if (*&v21[*(v23 + 24)] != *&v22[*(v23 + 24)])
      {
        return 0;
      }

      v24 = type metadata accessor for ClusterPath(0);
      if (dword_1D1E927BC[v21[*(v24 + 20)]] != dword_1D1E927BC[v22[*(v24 + 20)]] || *(a1 + v19[6]) != *(a2 + v19[6]))
      {
        return 0;
      }

      v25 = v19[7];
      v26 = *(a1 + v25 + 8);
      v27 = *(a2 + v25 + 8);
      if (v26)
      {
        if (!v27)
        {
          return 0;
        }

        if (*(a1 + v25) != *(a2 + v25) || (v28 = v18, v26 != v27))
        {
          v29 = sub_1D1E6904C();
          v28 = v18;
          if ((v29 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        v28 = v18;
        if (v27)
        {
          return 0;
        }
      }

      v32 = v19[8];
      v33 = *(v28 + 48);
      sub_1D1741C08(a1 + v32, v14, &qword_1EC644780, &qword_1D1E91AA0);
      sub_1D1741C08(a2 + v32, &v14[v33], &qword_1EC644780, &qword_1D1E91AA0);
      v34 = *(v37 + 48);
      if (v34(v14, 1, v4) == 1)
      {
        if (v34(&v14[v33], 1, v4) == 1)
        {
          sub_1D1741A30(v14, &qword_1EC644780, &qword_1D1E91AA0);
          return 1;
        }
      }

      else
      {
        sub_1D1741C08(v14, v10, &qword_1EC644780, &qword_1D1E91AA0);
        if (v34(&v14[v33], 1, v4) != 1)
        {
          sub_1D1A1EB60(&v14[v33], v7, type metadata accessor for StaticEndpoint);
          v35 = static StaticEndpoint.== infix(_:_:)(v10, v7);
          sub_1D1A1EBC8(v7, type metadata accessor for StaticEndpoint);
          sub_1D1A1EBC8(v10, type metadata accessor for StaticEndpoint);
          sub_1D1741A30(v14, &qword_1EC644780, &qword_1D1E91AA0);
          return (v35 & 1) != 0;
        }

        sub_1D1A1EBC8(v10, type metadata accessor for StaticEndpoint);
      }

      sub_1D1741A30(v14, &qword_1EC649150, &qword_1D1E927B0);
      return 0;
    }

    v30 = 0;
    if ((v16 & 0x100) != 0 && *a2 == 7)
    {
      goto LABEL_3;
    }
  }

  return v30;
}

unint64_t sub_1D1A1C7F8()
{
  result = qword_1EC649038;
  if (!qword_1EC649038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649038);
  }

  return result;
}

unint64_t sub_1D1A1C84C()
{
  result = qword_1EC649040;
  if (!qword_1EC649040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649040);
  }

  return result;
}

unint64_t sub_1D1A1C8A0()
{
  result = qword_1EC649050;
  if (!qword_1EC649050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649050);
  }

  return result;
}

unint64_t sub_1D1A1C8F8()
{
  result = qword_1EC649058;
  if (!qword_1EC649058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649058);
  }

  return result;
}

unint64_t sub_1D1A1C950()
{
  result = qword_1EC649060;
  if (!qword_1EC649060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649060);
  }

  return result;
}

uint64_t sub_1D1A1C9EC(uint64_t a1)
{
  result = sub_1D1A1EC28(&qword_1EC649070, type metadata accessor for MatterCommandError, &protocol conformance descriptor for MatterCommandError);
  *(a1 + 8) = result;
  return result;
}

void sub_1D1A1CAB4(uint64_t a1)
{
  type metadata accessor for ClusterPath(319);
  if (v1 <= 0x3F)
  {
    sub_1D17786E4();
    if (v2 <= 0x3F)
    {
      sub_1D1A1CB68(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D1A1CB68(uint64_t a1)
{
  if (!qword_1EC649088)
  {
    type metadata accessor for StaticEndpoint(255);
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC649088);
    }
  }
}

uint64_t getEnumTagSinglePayload for MatterCommandError.ErrorCode(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3D)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65475;
  if (a2 + 65475 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65475;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65475;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65475;
    }
  }

LABEL_20:
  v7 = (HIBYTE(*a1) & 0x3C | (*a1 >> 14)) ^ 0x3F;
  if (v7 >= 0x3D)
  {
    v7 = -1;
  }

  if (v7 + 1 >= 2)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

_WORD *storeEnumTagSinglePayload for MatterCommandError.ErrorCode(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65475;
  if (a3 + 65475 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0x3D)
  {
    v5 = 0;
  }

  if (a2 > 0x3C)
  {
    v6 = ((a2 - 61) >> 16) + 1;
    *result = a2 - 61;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = ((a2 ^ 0x3F) << 8) & 0xFC00 | ((a2 ^ 0x3F) << 14);
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D1A1CD34(unsigned __int16 *a1)
{
  v1 = HIBYTE(*a1) & 0x3C | (*a1 >> 14);
  v2 = v1 ^ 0x3F;
  v3 = 64 - v1;
  if (v2 >= 0x3D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

_WORD *sub_1D1A1CD5C(_WORD *result, unsigned int a2)
{
  if (a2 > 0x3D)
  {
    LOWORD(v2) = a2 - 62;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (((-a2 >> 2) & 0xF) - 16 * a2) << 10;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MatterCommandError.ErrorCode.RVC(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 65474 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65474 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65474;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65474;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65474;
    }
  }

LABEL_17:
  v6 = (HIBYTE(*a1) & 0x3C | (*a1 >> 14)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for MatterCommandError.ErrorCode.RVC(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65474 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65474 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 16) + 1;
    *result = a2 - 62;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = (((-a2 >> 2) & 0xF) - 16 * a2) << 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1A1CFBC()
{
  result = qword_1EC649090;
  if (!qword_1EC649090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649090);
  }

  return result;
}

unint64_t sub_1D1A1D014()
{
  result = qword_1EC649098;
  if (!qword_1EC649098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649098);
  }

  return result;
}

unint64_t sub_1D1A1D06C()
{
  result = qword_1EC6490A0;
  if (!qword_1EC6490A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490A0);
  }

  return result;
}

unint64_t sub_1D1A1D0C4()
{
  result = qword_1EC6490A8;
  if (!qword_1EC6490A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490A8);
  }

  return result;
}

unint64_t sub_1D1A1D11C()
{
  result = qword_1EC6490B0;
  if (!qword_1EC6490B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490B0);
  }

  return result;
}

unint64_t sub_1D1A1D174()
{
  result = qword_1EC6490B8;
  if (!qword_1EC6490B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490B8);
  }

  return result;
}

unint64_t sub_1D1A1D1CC()
{
  result = qword_1EC6490C0;
  if (!qword_1EC6490C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490C0);
  }

  return result;
}

unint64_t sub_1D1A1D224()
{
  result = qword_1EC6490C8;
  if (!qword_1EC6490C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490C8);
  }

  return result;
}

unint64_t sub_1D1A1D27C()
{
  result = qword_1EC6490D0;
  if (!qword_1EC6490D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490D0);
  }

  return result;
}

unint64_t sub_1D1A1D2D4()
{
  result = qword_1EC6490D8;
  if (!qword_1EC6490D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490D8);
  }

  return result;
}

unint64_t sub_1D1A1D32C()
{
  result = qword_1EC6490E0;
  if (!qword_1EC6490E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490E0);
  }

  return result;
}

unint64_t sub_1D1A1D384()
{
  result = qword_1EC6490E8;
  if (!qword_1EC6490E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490E8);
  }

  return result;
}

unint64_t sub_1D1A1D3DC()
{
  result = qword_1EC6490F0;
  if (!qword_1EC6490F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490F0);
  }

  return result;
}

unint64_t sub_1D1A1D434()
{
  result = qword_1EC6490F8;
  if (!qword_1EC6490F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6490F8);
  }

  return result;
}

unint64_t sub_1D1A1D48C()
{
  result = qword_1EC649100;
  if (!qword_1EC649100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649100);
  }

  return result;
}

unint64_t sub_1D1A1D4E4()
{
  result = qword_1EC649108;
  if (!qword_1EC649108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649108);
  }

  return result;
}

unint64_t sub_1D1A1D53C()
{
  result = qword_1EC649110;
  if (!qword_1EC649110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649110);
  }

  return result;
}

unint64_t sub_1D1A1D594()
{
  result = qword_1EC649118;
  if (!qword_1EC649118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649118);
  }

  return result;
}

unint64_t sub_1D1A1D5EC()
{
  result = qword_1EC649120;
  if (!qword_1EC649120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649120);
  }

  return result;
}

unint64_t sub_1D1A1D644()
{
  result = qword_1EC649128;
  if (!qword_1EC649128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649128);
  }

  return result;
}

unint64_t sub_1D1A1D69C()
{
  result = qword_1EC649130;
  if (!qword_1EC649130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649130);
  }

  return result;
}

unint64_t sub_1D1A1D6F4()
{
  result = qword_1EC649138;
  if (!qword_1EC649138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649138);
  }

  return result;
}

unint64_t sub_1D1A1D74C()
{
  result = qword_1EC649140;
  if (!qword_1EC649140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649140);
  }

  return result;
}

uint64_t sub_1D1A1D7A0(void *a1, __int16 a2)
{
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EE07A0B0);
  v4 = a1;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446210;
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v10 = sub_1D1E678BC();
    v12 = sub_1D1B1312C(v10, v11, &v21);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Unexpected error '%{public}s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  if (byte_1EE07B288 == 1)
  {
    v21 = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBEF10);
    v22 = v13;

    MEMORY[0x1D3890F70](0x6E7265746E495B20, 0xEC000000203A6C61);

    v15 = v21;
    v14 = v22;
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1D1E6884C();

    v21 = 0xD000000000000016;
    v22 = 0x80000001D1EC32B0;
    v16 = StaticRVCClusterGroup.OperationalErrorState.description.getter();
    MEMORY[0x1D3890F70](v16);

    v17 = v21;
    v18 = v22;
    v21 = v15;
    v22 = v14;

    MEMORY[0x1D3890F70](v17, v18);

    MEMORY[0x1D3890F70](93, 0xE100000000000000);

    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBEEE0);
  }

  else
  {
    if (qword_1EC6422A0 != -1)
    {
      swift_once();
    }

    v20 = qword_1EC6BE140;

    return v20;
  }
}

uint64_t sub_1D1A1DAE8(void *a1, __int16 a2)
{
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EE07A0B0);
  v4 = a1;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446210;
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v10 = sub_1D1E678BC();
    v12 = sub_1D1B1312C(v10, v11, &v21);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Unexpected error '%{public}s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  if (byte_1EE07B288 == 1)
  {
    v21 = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBEF10);
    v22 = v13;

    MEMORY[0x1D3890F70](0x6E7265746E495B20, 0xEC000000203A6C61);

    v15 = v21;
    v14 = v22;
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1D1E6884C();

    v21 = 0xD000000000000014;
    v22 = 0x80000001D1EC32D0;
    v16 = StaticRVCClusterGroup.RunModeCommandError.description.getter();
    MEMORY[0x1D3890F70](v16);

    v17 = v21;
    v18 = v22;
    v21 = v15;
    v22 = v14;

    MEMORY[0x1D3890F70](v17, v18);

    MEMORY[0x1D3890F70](93, 0xE100000000000000);

    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBEEE0);
  }

  else
  {
    if (qword_1EC6422A0 != -1)
    {
      swift_once();
    }

    v20 = qword_1EC6BE140;

    return v20;
  }
}

uint64_t sub_1D1A1DE40(void *a1, __int16 a2)
{
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EE07A0B0);
  v4 = a1;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446210;
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v10 = sub_1D1E678BC();
    v12 = sub_1D1B1312C(v10, v11, &v21);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Unexpected error '%{public}s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  if (byte_1EE07B288 == 1)
  {
    v21 = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBEF10);
    v22 = v13;

    MEMORY[0x1D3890F70](0x6E7265746E495B20, 0xEC000000203A6C61);

    v15 = v21;
    v14 = v22;
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1D1E6884C();

    v21 = 0xD000000000000016;
    v22 = 0x80000001D1EC32F0;
    v16 = StaticRVCClusterGroup.CleanModeCommandError.description.getter();
    MEMORY[0x1D3890F70](v16);

    v17 = v21;
    v18 = v22;
    v21 = v15;
    v22 = v14;

    MEMORY[0x1D3890F70](v17, v18);

    MEMORY[0x1D3890F70](93, 0xE100000000000000);

    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBEEE0);
  }

  else
  {
    if (qword_1EC6422A0 != -1)
    {
      swift_once();
    }

    v20 = qword_1EC6BE140;

    return v20;
  }
}

uint64_t sub_1D1A1E198(void *a1, void *a2)
{
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EE07A0B0);
  v4 = a1;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22[0] = v8;
    *v7 = 136446210;
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v10 = sub_1D1E678BC();
    v12 = sub_1D1B1312C(v10, v11, v22);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Unexpected error '%{public}s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  if (byte_1EE07B288 == 1)
  {
    v22[0] = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBEF10);
    v22[1] = v13;

    MEMORY[0x1D3890F70](0x6E7265746E495B20, 0xEC000000203A6C61);

    v15 = v22[0];
    v14 = v22[1];
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    sub_1D1E6884C();

    strcpy(v22, "MTRError.Code.");
    HIBYTE(v22[1]) = -18;
    type metadata accessor for MTRError(0);
    sub_1D1A1EC28(&qword_1EC642838, type metadata accessor for MTRError, &unk_1D1E6E54C);
    sub_1D1E6651C();
    v16 = MTRErrorCode.description.getter(v21);
    MEMORY[0x1D3890F70](v16);

    v17 = v22[0];
    v18 = v22[1];
    v22[0] = v15;
    v22[1] = v14;

    MEMORY[0x1D3890F70](v17, v18);

    MEMORY[0x1D3890F70](93, 0xE100000000000000);

    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBEEE0);
  }

  else
  {
    if (qword_1EC6422A0 != -1)
    {
      swift_once();
    }

    v20 = qword_1EC6BE140;

    return v20;
  }
}

uint64_t sub_1D1A1E548(uint64_t (*a1)(uint64_t), uint64_t a2, void *a3)
{
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1D1E6709C();
  __swift_project_value_buffer(v5, qword_1EE07A0B0);
  v6 = a3;
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6833C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136446210;
    v11 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v12 = sub_1D1E678BC();
    v14 = sub_1D1B1312C(v12, v13, &v24);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1D16EC000, v7, v8, "Unexpected error '%{public}s'", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  if (byte_1EE07B288 == 1)
  {
    v24 = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBEF10);
    v25 = v15;

    MEMORY[0x1D3890F70](0x6E7265746E495B20, 0xEC000000203A6C61);

    v18 = v24;
    v17 = v25;
    v19 = a1(v16);
    v21 = v20;
    v24 = v18;
    v25 = v17;

    MEMORY[0x1D3890F70](v19, v21);

    MEMORY[0x1D3890F70](93, 0xE100000000000000);

    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBEEE0);
  }

  else
  {
    if (qword_1EC6422A0 != -1)
    {
      swift_once();
    }

    v23 = qword_1EC6BE140;

    return v23;
  }
}

uint64_t sub_1D1A1E858(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D1EC08C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4D6E7572 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F4D6E61656C63 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D1A1E984(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5072657473756C63 && a2 == 0xEB00000000687461 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49646E616D6D6F63 && a2 == 0xE900000000000044 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6554737574617473 && a2 == 0xEA00000000007478 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D1A1EB60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A1EBC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A1EC28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1A1EC70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t MatterCommandError.MatterError.init(error:clusterPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for MatterCommandError.MatterError(0);
  v7 = v6[7];
  v8 = type metadata accessor for StaticEndpoint(0);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  *a3 = a1;
  sub_1D1A2198C(a2, &a3[v6[5]], type metadata accessor for EndpointPath);
  LOBYTE(a1) = *(a2 + *(type metadata accessor for ClusterPath(0) + 20));
  result = sub_1D1A21D00(a2, type metadata accessor for ClusterPath);
  a3[v6[6]] = a1;
  return result;
}

uint64_t type metadata accessor for MatterCommandError.MatterError(uint64_t a1)
{
  result = qword_1EC649180;
  if (!qword_1EC649180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MatterCommandError.MatterError.init(error:endpointPath:clusterKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for MatterCommandError.MatterError(0);
  v9 = v8[7];
  v10 = type metadata accessor for StaticEndpoint(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  *a4 = a1;
  result = sub_1D1A21924(a2, &a4[v8[5]], type metadata accessor for EndpointPath);
  a4[v8[6]] = v7;
  return result;
}

uint64_t MatterCommandError.MatterError.clusterKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MatterCommandError.MatterError(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t MatterCommandError.MatterError.code.getter()
{
  type metadata accessor for MTRError(0);
  sub_1D1A21B24(&qword_1EC642838, type metadata accessor for MTRError, &unk_1D1E6E54C);
  sub_1D1E6651C();
  return v1;
}

uint64_t MatterCommandError.MatterError.endpoint.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MatterCommandError.MatterError(0) + 28);

  return sub_1D1A16064(a1, v3);
}

uint64_t MatterCommandError.MatterError.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for StaticEndpoint(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v14 - v8;
  v14[1] = *v1;
  type metadata accessor for MTRError(0);
  sub_1D1A21B24(&qword_1EC6428C0, type metadata accessor for MTRError, &unk_1D1E6E50C);
  sub_1D1E676EC();
  v10 = type metadata accessor for MatterCommandError.MatterError(0);
  v11 = v1 + v10[5];
  sub_1D1E66A7C();
  sub_1D1A21B24(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v12 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*&v11[*(v12 + 20)]);
  sub_1D1E6923C();
  if (*(v1 + v10[6]) == 30)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
  }

  sub_1D1741C08(v1 + v10[7], v9, &qword_1EC644780, &qword_1D1E91AA0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return sub_1D1E6922C();
  }

  sub_1D1A21924(v9, v6, type metadata accessor for StaticEndpoint);
  sub_1D1E6922C();
  StaticEndpoint.hash(into:)(a1);
  return sub_1D1A21D00(v6, type metadata accessor for StaticEndpoint);
}

uint64_t MatterCommandError.MatterError.hashValue.getter()
{
  v1 = type metadata accessor for StaticEndpoint(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13[-1] - v6;
  sub_1D1E6920C();
  v12 = *v0;
  type metadata accessor for MTRError(0);
  sub_1D1A21B24(&qword_1EC6428C0, type metadata accessor for MTRError, &unk_1D1E6E50C);
  sub_1D1E676EC();
  v8 = type metadata accessor for MatterCommandError.MatterError(0);
  v9 = v0 + v8[5];
  sub_1D1E66A7C();
  sub_1D1A21B24(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v10 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*&v9[*(v10 + 20)]);
  sub_1D1E6923C();
  if (*(v0 + v8[6]) == 30)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
  }

  sub_1D1741C08(v0 + v8[7], v7, &qword_1EC644780, &qword_1D1E91AA0);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1A21924(v7, v4, type metadata accessor for StaticEndpoint);
    sub_1D1E6922C();
    StaticEndpoint.hash(into:)(v13);
    sub_1D1A21D00(v4, type metadata accessor for StaticEndpoint);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1A1F684(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for StaticEndpoint(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15[-1] - v9;
  sub_1D1E6920C();
  v14 = *v2;
  type metadata accessor for MTRError(0);
  sub_1D1A21B24(&qword_1EC6428C0, type metadata accessor for MTRError, &unk_1D1E6E50C);
  sub_1D1E676EC();
  v11 = v2 + a2[5];
  sub_1D1E66A7C();
  sub_1D1A21B24(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v12 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*&v11[*(v12 + 20)]);
  sub_1D1E6923C();
  if (*(v2 + a2[6]) == 30)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
  }

  sub_1D1741C08(v2 + a2[7], v10, &qword_1EC644780, &qword_1D1E91AA0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1A21924(v10, v7, type metadata accessor for StaticEndpoint);
    sub_1D1E6922C();
    StaticEndpoint.hash(into:)(v15);
    sub_1D1A21D00(v7, type metadata accessor for StaticEndpoint);
  }

  return sub_1D1E6926C();
}

uint64_t MatterCommandError.MatterError.contextualize()()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  *(v1 + 24) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  v3 = type metadata accessor for MatterStateSnapshot(0);
  *(v1 + 40) = v3;
  *(v1 + 48) = *(v3 - 8);
  *(v1 + 56) = swift_task_alloc();
  v4 = type metadata accessor for MatterCommandError.MatterError(0);
  *(v1 + 64) = v4;
  v5 = *(v4 + 20);
  *(v1 + 80) = v5;
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *v6 = v1;
  v6[1] = sub_1D1A1FAE8;

  return sub_1D1A19514(v2, v0 + v5);
}

uint64_t sub_1D1A1FAE8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1A1FBE4, 0, 0);
}

uint64_t sub_1D1A1FBE4()
{
  v1 = *(v0 + 32);
  if ((*(*(v0 + 48) + 48))(v1, 1, *(v0 + 40)) == 1)
  {
    sub_1D1741A30(v1, &unk_1EC64F390, &qword_1D1E92B10);
  }

  else
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    sub_1D1A21924(v1, v3, type metadata accessor for MatterStateSnapshot);
    sub_1D1A19BD8(v6 + v2, v3, v5);
    sub_1D1A21D00(v3, type metadata accessor for MatterStateSnapshot);
    sub_1D1A16064(v5, v6 + *(v4 + 28));
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t MatterCommandError.MatterError.contextualize(matterSnapshot:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for MatterCommandError.MatterError(0);
  sub_1D1A19BD8(v1 + *(v6 + 20), a1, v5);
  return sub_1D1A16064(v5, v1 + *(v6 + 28));
}

uint64_t sub_1D1A1FDBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4BFC;

  return MatterCommandError.MatterError.contextualize()();
}

uint64_t sub_1D1A1FE48(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  sub_1D1A19BD8(v2 + *(a2 + 20), a1, &v9 - v6);
  return sub_1D1A16064(v7, v2 + *(a2 + 28));
}

id MatterCommandError.MatterError.errorDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = *v0;
  sub_1D1A2198C(v0, &v10 - v2, type metadata accessor for MatterCommandError.MatterError);
  v5 = type metadata accessor for MatterCommandError.MatterError(0);
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  v6 = sub_1D1A2014C(v3, v4);
  v8 = v7;
  sub_1D1741A30(v3, &qword_1EC649158, &qword_1D1E92840);
  if (!v8)
  {
    return 0;
  }

  return v6;
}

uint64_t MatterCommandError.MatterError.failureReason.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = *v0;
  sub_1D1A2198C(v0, &v11 - v2, type metadata accessor for MatterCommandError.MatterError);
  v5 = type metadata accessor for MatterCommandError.MatterError(0);
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  sub_1D1A2014C(v3, v4);
  v7 = v6;
  v9 = v8;
  sub_1D1741A30(v3, &qword_1EC649158, &qword_1D1E92840);
  if (!v7)
  {
    return 0;
  }

  return v9;
}

id sub_1D1A2014C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v71 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v71 - v14;
  v78 = a2;
  type metadata accessor for MTRError(0);
  sub_1D1A21B24(&qword_1EC642838, type metadata accessor for MTRError, &unk_1D1E6E54C);
  sub_1D1E6651C();
  if (v77 > 0x13)
  {
    goto LABEL_15;
  }

  if (((1 << v77) & 0x805FC) != 0)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EE07A0B0);
    v19 = a2;
    v20 = sub_1D1E6707C();
    v21 = sub_1D1E6834C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v73 = v24;
      *v22 = 136315394;
      v77 = v19;
      sub_1D1E6651C();
      v25 = MTRErrorCode.description.getter(v78);
      v27 = sub_1D1B1312C(v25, v26, &v73);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2112;
      v28 = v19;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v29;
      *v23 = v29;
      _os_log_impl(&dword_1D16EC000, v20, v21, "Encountered MTRError.Code.%s which indicates a programming error in error %@", v22, 0x16u);
      sub_1D1741A30(v23, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v22, -1, -1);
    }

LABEL_9:

    v16 = v19;
    v17 = sub_1D1A1ECE4();
    goto LABEL_10;
  }

  if (((1 << v77) & 0x7F800) != 0)
  {
    v16 = a2;
    v17 = sub_1D1A1ECE4();
LABEL_10:
    v30 = v17;

    return v30;
  }

  if (v77 != 9)
  {
LABEL_15:
    if (v77 == 1)
    {
      if (qword_1EC6422A0 != -1)
      {
        swift_once();
      }

      v30 = qword_1EC6BE140;

      return v30;
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v36 = sub_1D1E6709C();
    __swift_project_value_buffer(v36, qword_1EE07A0B0);
    v19 = a2;
    v20 = sub_1D1E6707C();
    v37 = sub_1D1E6833C();

    if (os_log_type_enabled(v20, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v73 = v40;
      *v38 = 136315394;
      v75 = v19;
      sub_1D1E6651C();
      v41 = MTRErrorCode.description.getter(v76);
      v43 = sub_1D1B1312C(v41, v42, &v73);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2112;
      v44 = v19;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v45;
      *v39 = v45;
      _os_log_impl(&dword_1D16EC000, v20, v37, "Encountered unknown MTRErrorCode.%s in error %@", v38, 0x16u);
      sub_1D1741A30(v39, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v39, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1D3893640](v40, -1, -1);
      MEMORY[0x1D3893640](v38, -1, -1);
    }

    goto LABEL_9;
  }

  sub_1D1741C08(a1, v9, &qword_1EC649158, &qword_1D1E92840);
  v32 = type metadata accessor for MatterCommandError.MatterError(0);
  v72 = *(*(v32 - 8) + 48);
  if (v72(v9, 1, v32) == 1)
  {
    v33 = &qword_1EC649158;
    v34 = &qword_1D1E92840;
    v35 = v9;
LABEL_26:
    sub_1D1741A30(v35, v33, v34);
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v47 = result;
      wapiCapability = MobileGestalt_get_wapiCapability();

      if (wapiCapability)
      {
        v49 = 1312902231;
      }

      else
      {
        v49 = 1229343063;
      }

      v73 = 0xD000000000000032;
      v74 = 0x80000001D1EC33D0;
      MEMORY[0x1D3890F70](95, 0xE100000000000000);
      MEMORY[0x1D3890F70](v49, 0xE400000000000000);

      static String.hfLocalized(_:)(v73, v74);
      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_44;
  }

  sub_1D1741C08(&v9[*(v32 + 28)], v15, &qword_1EC644780, &qword_1D1E91AA0);
  sub_1D1A21D00(v9, type metadata accessor for MatterCommandError.MatterError);
  v46 = type metadata accessor for StaticEndpoint(0);
  if ((*(*(v46 - 8) + 48))(v15, 1, v46) == 1)
  {
    v33 = &qword_1EC644780;
    v34 = &qword_1D1E91AA0;
    v35 = v15;
    goto LABEL_26;
  }

  v50 = &v15[*(v46 + 24)];
  v51 = *(v50 + 1);
  v71 = *v50;

  sub_1D1A21D00(v15, type metadata accessor for StaticEndpoint);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v52 = result;
    v53 = MobileGestalt_get_wapiCapability();

    if (v53)
    {
      v54 = 1312902231;
    }

    else
    {
      v54 = 1229343063;
    }

    v73 = 0xD00000000000002BLL;
    v74 = 0x80000001D1EC3470;
    MEMORY[0x1D3890F70](95, 0xE100000000000000);
    MEMORY[0x1D3890F70](v54, 0xE400000000000000);

    v55 = v73;
    v56 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1D1E739C0;
    *(v57 + 56) = MEMORY[0x1E69E6158];
    *(v57 + 64) = sub_1D1757D20();
    *(v57 + 32) = v71;
    *(v57 + 40) = v51;
    static String.hfLocalized(_:)(v55, v56);

    sub_1D1E6784C();
LABEL_36:

    sub_1D1741C08(a1, v7, &qword_1EC649158, &qword_1D1E92840);
    if (v72(v7, 1, v32) == 1)
    {
      v58 = &qword_1EC649158;
      v59 = &qword_1D1E92840;
      v60 = v7;
    }

    else
    {
      sub_1D1741C08(&v7[*(v32 + 28)], v13, &qword_1EC644780, &qword_1D1E91AA0);
      sub_1D1A21D00(v7, type metadata accessor for MatterCommandError.MatterError);
      v61 = type metadata accessor for StaticEndpoint(0);
      if ((*(*(v61 - 8) + 48))(v13, 1, v61) != 1)
      {
        v65 = &v13[*(v61 + 24)];
        v67 = *v65;
        v66 = *(v65 + 1);

        sub_1D1A21D00(v13, type metadata accessor for StaticEndpoint);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_1D1E739C0;
        *(v68 + 56) = MEMORY[0x1E69E6158];
        *(v68 + 64) = sub_1D1757D20();
        *(v68 + 32) = v67;
        *(v68 + 40) = v66;
        static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC3440);
        v69 = sub_1D1E6784C();
        v64 = v70;

        v62 = v69;
        goto LABEL_42;
      }

      v58 = &qword_1EC644780;
      v59 = &qword_1D1E91AA0;
      v60 = v13;
    }

    sub_1D1741A30(v60, v58, v59);
    v62 = static String.hfLocalized(_:)(0xD00000000000002CLL, 0x80000001D1EC3410);
    v64 = v63;
LABEL_42:
    v30 = static String.hfLocalized(_:)(v62, v64);

    return v30;
  }

LABEL_44:
  __break(1u);
  return result;
}

id sub_1D1A20BA0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *v1;
  sub_1D1A2198C(v1, &v11 - v4, type metadata accessor for MatterCommandError.MatterError);
  (*(*(a1 - 8) + 56))(v5, 0, 1, a1);
  v7 = sub_1D1A2014C(v5, v6);
  v9 = v8;
  sub_1D1741A30(v5, &qword_1EC649158, &qword_1D1E92840);
  if (!v9)
  {
    return 0;
  }

  return v7;
}

uint64_t sub_1D1A20CC8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = *v1;
  sub_1D1A2198C(v1, &v12 - v4, type metadata accessor for MatterCommandError.MatterError);
  (*(*(a1 - 8) + 56))(v5, 0, 1, a1);
  sub_1D1A2014C(v5, v6);
  v8 = v7;
  v10 = v9;
  sub_1D1741A30(v5, &qword_1EC649158, &qword_1D1E92840);
  if (!v8)
  {
    return 0;
  }

  return v10;
}

id related decl e for MTRErrorCode.errorDescription.getter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for MatterCommandError.MatterError(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = sub_1D1A2014C(v4, a1);
  v8 = v7;
  sub_1D1741A30(v4, &qword_1EC649158, &qword_1D1E92840);
  if (!v8)
  {
    return 0;
  }

  return v6;
}

uint64_t related decl e for MTRErrorCode.failureReason.getter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for MatterCommandError.MatterError(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1D1A2014C(v4, a1);
  v7 = v6;
  v9 = v8;
  sub_1D1741A30(v4, &qword_1EC649158, &qword_1D1E92840);
  if (!v7)
  {
    return 0;
  }

  return v9;
}

id sub_1D1A21010()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = *v0;
  v5 = type metadata accessor for MatterCommandError.MatterError(0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = sub_1D1A2014C(v3, v4);
  v8 = v7;
  sub_1D1741A30(v3, &qword_1EC649158, &qword_1D1E92840);
  if (!v8)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_1D1A2111C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649158, &qword_1D1E92840);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = *v0;
  v5 = type metadata accessor for MatterCommandError.MatterError(0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_1D1A2014C(v3, v4);
  v7 = v6;
  v9 = v8;
  sub_1D1741A30(v3, &qword_1EC649158, &qword_1D1E92840);
  if (!v7)
  {
    return 0;
  }

  return v9;
}

unint64_t MTRErrorCode.description.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x456C6172656E6567;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x4164696C61766E69;
      break;
    case 4:
    case 7:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x5364696C61766E69;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x74756F656D6974;
      break;
    case 9:
      result = 0x6F54726566667562;
      break;
    case 10:
      result = 0x7845636972626166;
      break;
    case 11:
      result = 0x536E776F6E6B6E75;
      break;
    case 12:
      result = 0x694D616D65686373;
      break;
    case 13:
      result = 0x646F636544766C74;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x656C6C65636E6163;
      break;
    case 16:
      result = 0x6544737365636361;
      break;
    case 17:
      result = 2037609826;
      break;
    case 18:
      result = 0x646E756F46746F6ELL;
      break;
    default:
      v3 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v3);

      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      result = 0x286E776F6E6B6E75;
      break;
  }

  return result;
}

BOOL _s13HomeDataModel18MatterCommandErrorV0dF0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for StaticEndpoint(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649150, &qword_1D1E927B0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  type metadata accessor for MTRError(0);
  v14 = *a1;
  v30 = *a2;
  v31 = v14;
  sub_1D1A21B24(&qword_1EC642838, type metadata accessor for MTRError, &unk_1D1E6E54C);
  if ((sub_1D1E6650C() & 1) == 0)
  {
    return 0;
  }

  v29 = v5;
  v15 = type metadata accessor for MatterCommandError.MatterError(0);
  v16 = v15[5];
  v17 = a1 + v16;
  v18 = a2 + v16;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v19 = type metadata accessor for EndpointPath(0);
  if (*&v17[*(v19 + 20)] != *&v18[*(v19 + 20)] || *&v17[*(v19 + 24)] != *&v18[*(v19 + 24)])
  {
    return 0;
  }

  v20 = v15[6];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 30)
  {
    if (v22 != 30)
    {
      return 0;
    }
  }

  else if (v22 == 30 || dword_1D1E92A4C[v21] != dword_1D1E92A4C[v22])
  {
    return 0;
  }

  v23 = v15[7];
  v24 = *(v11 + 48);
  sub_1D1741C08(a1 + v23, v13, &qword_1EC644780, &qword_1D1E91AA0);
  sub_1D1741C08(a2 + v23, &v13[v24], &qword_1EC644780, &qword_1D1E91AA0);
  v25 = *(v29 + 48);
  if (v25(v13, 1, v4) == 1)
  {
    if (v25(&v13[v24], 1, v4) == 1)
    {
      sub_1D1741A30(v13, &qword_1EC644780, &qword_1D1E91AA0);
      return 1;
    }

    goto LABEL_15;
  }

  sub_1D1741C08(v13, v10, &qword_1EC644780, &qword_1D1E91AA0);
  if (v25(&v13[v24], 1, v4) == 1)
  {
    sub_1D1A21D00(v10, type metadata accessor for StaticEndpoint);
LABEL_15:
    sub_1D1741A30(v13, &qword_1EC649150, &qword_1D1E927B0);
    return 0;
  }

  sub_1D1A21924(&v13[v24], v7, type metadata accessor for StaticEndpoint);
  v27 = static StaticEndpoint.== infix(_:_:)(v10, v7);
  sub_1D1A21D00(v7, type metadata accessor for StaticEndpoint);
  sub_1D1A21D00(v10, type metadata accessor for StaticEndpoint);
  sub_1D1741A30(v13, &qword_1EC644780, &qword_1D1E91AA0);
  return (v27 & 1) != 0;
}

uint64_t sub_1D1A21924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A2198C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A21A3C(uint64_t a1)
{
  result = sub_1D1A21B24(&qword_1EC649168, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1A21B24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1A21B70()
{
  result = qword_1EC649170;
  if (!qword_1EC649170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649178, &qword_1D1E929D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649170);
  }

  return result;
}

void sub_1D1A21BFC(uint64_t a1)
{
  type metadata accessor for MTRError(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EndpointPath(319);
    if (v2 <= 0x3F)
    {
      sub_1D1A21CB0();
      if (v3 <= 0x3F)
      {
        sub_1D1A1CB68(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D1A21CB0()
{
  if (!qword_1EC649190)
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC649190);
    }
  }
}

uint64_t sub_1D1A21D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A21D60()
{
  v0 = sub_1D1E683AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D1E6845C();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1D1E6753C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1D1A21F60();
  sub_1D1E6751C();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1D1A21FAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FE30, &qword_1D1E92AC8);
  sub_1D1A22004();
  sub_1D1E6868C();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v0);
  result = sub_1D1E6846C();
  qword_1EC6BE160 = result;
  return result;
}

unint64_t sub_1D1A21F60()
{
  result = qword_1EE079CA0;
  if (!qword_1EE079CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE079CA0);
  }

  return result;
}

unint64_t sub_1D1A21FAC()
{
  result = qword_1EE079CA8;
  if (!qword_1EE079CA8)
  {
    sub_1D1E6845C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE079CA8);
  }

  return result;
}

unint64_t sub_1D1A22004()
{
  result = qword_1EE079E20;
  if (!qword_1EE079E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64FE30, &qword_1D1E92AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE079E20);
  }

  return result;
}

uint64_t static NSUserDefaults.recommendationUILastOpenedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1D1E677EC();
  v4 = [v2 initWithSuiteName_];

  if (!v4)
  {
    v4 = [objc_opt_self() standardUserDefaults];
  }

  v5 = sub_1D1E677EC();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_1D1741A30(v12, &qword_1EC649700, &qword_1D1E6E910);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  sub_1D1E6698C();
  v7 = 0;
LABEL_11:
  v8 = sub_1D1E669FC();
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

id static NSUserDefaults.homeAppGroup.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D1E677EC();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    return v2;
  }

  v4 = [objc_opt_self() standardUserDefaults];

  return v4;
}

uint64_t sub_1D1A222DC()
{
  result = sub_1D1A22300();
  byte_1EC649198 = result & 1;
  return result;
}

id sub_1D1A22300()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D1E677EC();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1D1E677EC();
  v4 = [v2 BOOLForKey_];

  return v4;
}

uint64_t sub_1D1A22404()
{
  result = sub_1D1A22428();
  byte_1EC649199 = result & 1;
  return result;
}

id sub_1D1A22428()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D1E677EC();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1D1E677EC();
  v4 = [v2 BOOLForKey_];

  return v4;
}

uint64_t sub_1D1A2252C()
{
  result = sub_1D1A22550();
  byte_1EC64919A = result & 1;
  return result;
}

id sub_1D1A22550()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D1E677EC();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1D1E677EC();
  v4 = [v2 BOOLForKey_];

  return v4;
}

uint64_t sub_1D1A22654()
{
  result = sub_1D1A22678();
  byte_1EC64919B = result & 1;
  return result;
}

id sub_1D1A22678()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D1E677EC();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1D1E677EC();
  v4 = [v2 BOOLForKey_];

  return v4;
}

uint64_t sub_1D1A2277C()
{
  result = sub_1D1A227A0();
  byte_1EC64919C = result & 1;
  return result;
}

uint64_t sub_1D1A227A0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D1E677EC();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1D1E677EC();
  v4 = [v2 BOOLForKey_];

  v5 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v6 = sub_1D1E677EC();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = sub_1D1E677EC();
    v9 = [v7 BOOLForKey_];
  }

  else
  {
    v9 = 0;
  }

  return (v4 | v9) & 1;
}

void sub_1D1A22948()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D1E677EC();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = sub_1D1E677EC();
  v4 = [v2 BOOLForKey_];

  byte_1EC64919D = v4;
}

uint64_t sub_1D1A22A58(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_1D1A22AA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D174A548(a1, &v6 - v3);
  return _sSo14NSUserDefaultsC13HomeDataModelE30recommendationUILastOpenedDate10Foundation0I0VSgvsZ_0(v4);
}

void (*static NSUserDefaults.recommendationUILastOpenedDate.modify(void **a1))(uint64_t a1, char a2)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    *a1 = swift_coroFrameAlloc();
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v2);
    v3 = malloc(v2);
  }

  a1[1] = v3;
  static NSUserDefaults.recommendationUILastOpenedDate.getter(v3);
  return sub_1D1A22BD8;
}

void sub_1D1A22BD8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    sub_1D174A548(v3, v2);
    _sSo14NSUserDefaultsC13HomeDataModelE30recommendationUILastOpenedDate10Foundation0I0VSgvsZ_0(v2);
    sub_1D1741A30(v3, &qword_1EC642570, &qword_1D1E6C6A0);
  }

  else
  {
    _sSo14NSUserDefaultsC13HomeDataModelE30recommendationUILastOpenedDate10Foundation0I0VSgvsZ_0(v3);
  }

  free(v3);

  free(v2);
}

uint64_t _sSo14NSUserDefaultsC13HomeDataModelE30recommendationUILastOpenedDate10Foundation0I0VSgvsZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v14 - v3;
  v5 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v6 = sub_1D1E677EC();
  v7 = [v5 initWithSuiteName_];

  if (!v7)
  {
    v7 = [objc_opt_self() standardUserDefaults];
  }

  sub_1D174A548(a1, v4);
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    sub_1D1741A30(v4, &qword_1EC642570, &qword_1D1E6C6A0);
    v10 = 0;
  }

  else
  {
    sub_1D1E6699C();
    v14[1] = v11;
    (*(v9 + 8))(v4, v8);
    v10 = sub_1D1E6903C();
  }

  v12 = sub_1D1E677EC();
  [v7 setObject:v10 forKey:v12];

  swift_unknownObjectRelease();
  return sub_1D1741A30(a1, &qword_1EC642570, &qword_1D1E6C6A0);
}

uint64_t sub_1D1A22F40@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_snapshotsStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A0, &unk_1D1E92AF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D1A22FC4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MatterStateSnapshot(0);
  v2[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491E0, &qword_1D1E92C20);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A230BC, v1, 0);
}

uint64_t sub_1D1A230BC()
{
  if (*(v0[3] + OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_forDataModel) == 1)
  {
    v0[8] = sub_1D1E67E1C();
    v0[9] = sub_1D1E67E0C();
    v2 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1A23238, v2, v1);
  }

  else
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[5];
    sub_1D1A28BEC(v0[2], v0[4], type metadata accessor for MatterStateSnapshot);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A8, &unk_1D1EB1930);
    sub_1D1E67ECC();
    (*(v4 + 8))(v3, v5);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D1A23238()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1D1A232D0, v1, 0);
}

uint64_t sub_1D1A232D0(uint64_t a1)
{
  *(v1 + 80) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A2335C, v3, v2);
}

uint64_t sub_1D1A2335C()
{
  v1 = *(v0 + 24);

  *(v0 + 88) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1A233D4, v1, 0);
}

uint64_t sub_1D1A233D4(uint64_t a1)
{
  *(v1 + 96) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A23460, v3, v2);
}

uint64_t sub_1D1A23460()
{
  v1 = *(v0 + 16);

  sub_1D1DE2C6C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t MatterSnapshotModerator.deinit()
{

  v1 = OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_snapshotsStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A0, &unk_1D1E92AF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_snapshotsContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A8, &unk_1D1EB1930);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MatterSnapshotModerator.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_snapshotsStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A0, &unk_1D1E92AF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_snapshotsContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A8, &unk_1D1EB1930);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t MatterSnapshotModerator.rebuildSnapshot(updateType:home:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = v4;
  *(v5 + 64) = a1;
  *(v5 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491B0, &qword_1D1E92B08);
  *(v5 + 96) = swift_task_alloc();
  v8 = type metadata accessor for MatterStateSnapshot(0);
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  v9 = sub_1D1E66A7C();
  *(v5 + 136) = v9;
  *(v5 + 144) = *(v9 - 8);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = *a2;
  *(v5 + 240) = *(a2 + 16);
  *(v5 + 216) = *a4;
  *(v5 + 241) = *(a4 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1D1A2388C, v4, 0);
}

uint64_t sub_1D1A2388C()
{
  v99 = v0;
  v1 = *(v0 + 241);
  v2 = *(v0 + 216);
  if (v1 == 255)
  {
    sub_1D186145C(*(v0 + 216), 255);
    sub_1D1861470(v2, 255);
    sub_1D1861470(0, 3);
  }

  else
  {
    v97 = *(v0 + 216);
    v98 = v1;
    v94 = 0;
    LOBYTE(v95) = 3;
    sub_1D186145C(v2, v1);
    sub_1D186145C(v2, v1);
    v3 = _s13HomeDataModel19MatterStateSnapshotV6FilterO2eeoiySbAE_AEtFZ_0(&v97, &v94);

    sub_1D1861470(v2, v1);
    if (v3)
    {
      v4 = *(v0 + 216);
      v5 = *(v0 + 152);
      v6 = *(v0 + 64);
      v7 = *(v0 + 72);
      v8 = *(v0 + 241);
      v9 = [v7 matterControllerID];
      v10 = sub_1D1E6781C();
      v12 = v11;

      v13 = [v7 uniqueIdentifier];
      sub_1D1E66A5C();

      v14 = sub_1D18D677C(MEMORY[0x1E69E7CC0]);
      v94 = v4;
      LOBYTE(v95) = v8;
      sub_1D186145C(v4, v8);
      sub_1D1A28CB8(v10, v12, v5, v14, &v94, v6);
LABEL_24:

      v73 = *(v0 + 8);

      return v73();
    }
  }

  v15 = *(v0 + 80);
  v16 = [*(v0 + 72) uniqueIdentifier];
  sub_1D1E66A5C();

  swift_beginAccess();
  v17 = *(v15 + 112);
  if (*(v17 + 16))
  {

    v18 = sub_1D1742188();
    if (v19)
    {
      v20 = *(v0 + 160);
      v21 = *(v0 + 136);
      v22 = *(v0 + 144);
      sub_1D1A28BEC(*(v17 + 56) + *(*(v0 + 112) + 72) * v18, *(v0 + 192), type metadata accessor for MatterStateSnapshot);
      (*(v22 + 8))(v20, v21);

      v23 = 0;
      goto LABEL_11;
    }

    v24 = *(v0 + 160);
    v25 = *(v0 + 136);
    v26 = *(v0 + 144);

    (*(v26 + 8))(v24, v25);
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 160), *(v0 + 136));
  }

  v23 = 1;
LABEL_11:
  v27 = *(v0 + 208);
  v82 = *(v0 + 216);
  v29 = *(v0 + 192);
  v28 = *(v0 + 200);
  v30 = *(v0 + 184);
  v86 = *(v0 + 128);
  v84 = *(v0 + 152);
  v85 = *(v0 + 112);
  v87 = *(v0 + 104);
  v88 = *(v0 + 176);
  v89 = *(v0 + 96);
  v91 = *(v0 + 88);
  v31 = *(v0 + 72);
  v93 = *(v85 + 56);
  v32 = *(v0 + 240);
  v33 = *(v0 + 241);
  v93(v29, v23, 1);
  v34 = sub_1D1A2725C(v31, v28, v27, v32);
  *(v0 + 224) = v34;
  v83 = v30;
  sub_1D1741C08(v29, v30, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D186145C(v82, v33);
  v35 = sub_1D1A2B978(v30, v28, v27, v32, v31, v82, v33);
  v36 = [v31 matterControllerID];
  v37 = sub_1D1E6781C();
  v39 = v38;

  v40 = [v31 uniqueIdentifier];
  sub_1D1E66A5C();

  v94 = v82;
  LOBYTE(v95) = v33;
  sub_1D1A28CB8(v37, v39, v84, v35, &v94, v86);
  sub_1D1741A30(v83, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1A27A08(v34, v86);
  sub_1D1A28BEC(v86, v88, type metadata accessor for MatterStateSnapshot);
  (v93)(v88, 0, 1, v87);
  v41 = *(v91 + 48);
  sub_1D1741C08(v29, v89, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1741C08(v88, v89 + v41, &unk_1EC64F390, &qword_1D1E92B10);
  v42 = *(v85 + 48);
  if (v42(v89, 1, v87) == 1)
  {
    v43 = *(v0 + 104);
    sub_1D1741A30(*(v0 + 176), &unk_1EC64F390, &qword_1D1E92B10);
    if (v42(v89 + v41, 1, v43) == 1)
    {
      sub_1D1741A30(*(v0 + 96), &unk_1EC64F390, &qword_1D1E92B10);
      v44 = 1;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v45 = *(v0 + 104);
  sub_1D1741C08(*(v0 + 96), *(v0 + 168), &unk_1EC64F390, &qword_1D1E92B10);
  v46 = v42(v89 + v41, 1, v45);
  v47 = *(v0 + 168);
  v48 = *(v0 + 176);
  if (v46 == 1)
  {
    sub_1D1741A30(*(v0 + 176), &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1A28C54(v47, type metadata accessor for MatterStateSnapshot);
LABEL_16:
    sub_1D1741A30(*(v0 + 96), &qword_1EC6491B0, &qword_1D1E92B08);
    v44 = 0;
    goto LABEL_18;
  }

  v49 = *(v0 + 120);
  v50 = *(v0 + 96);
  sub_1D1A28448(v89 + v41, v49);
  v44 = _s13HomeDataModel19MatterStateSnapshotV2eeoiySbAC_ACtFZ_0(v47, v49);
  sub_1D1A28C54(v49, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v48, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1A28C54(v47, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v50, &unk_1EC64F390, &qword_1D1E92B10);
LABEL_18:
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v52 = *(v0 + 200);
  v51 = *(v0 + 208);
  v53 = *(v0 + 72);
  v54 = *(v0 + 240);
  v55 = sub_1D1E6709C();
  __swift_project_value_buffer(v55, qword_1EE07A0B0);
  v56 = v53;
  sub_1D1A28388(v52, v51, v54);
  v57 = sub_1D1E6707C();
  v58 = sub_1D1E6835C();

  sub_1D1A283E8(v52, v51, v54);
  if (os_log_type_enabled(v57, v58))
  {
    v59 = *(v0 + 200);
    v60 = *(v0 + 208);
    v92 = v44;
    v61 = *(v0 + 72);
    v62 = *(v0 + 240);
    v63 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v97 = v90;
    *v63 = 136446722;
    v64 = [v61 matterControllerID];
    v65 = sub_1D1E6781C();
    v67 = v66;

    v44 = v92;
    v68 = sub_1D1B1312C(v65, v67, &v97);

    *(v63 + 4) = v68;
    *(v63 + 12) = 2082;
    v94 = v59;
    v95 = v60;
    v96 = v62;
    sub_1D1A28388(v59, v60, v62);
    updated = MatterStateSnapshot.UpdateType.description.getter();
    v71 = v70;
    sub_1D1A283E8(v94, v95, v96);
    v72 = sub_1D1B1312C(updated, v71, &v97);

    *(v63 + 14) = v72;
    *(v63 + 22) = 1026;
    *(v63 + 24) = !v92;
    _os_log_impl(&dword_1D16EC000, v57, v58, "new matter snapshot for '%{public}s', updateType:%{public}s, didChange:%{BOOL,public}d", v63, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v90, -1, -1);
    MEMORY[0x1D3893640](v63, -1, -1);
  }

  if (v44)
  {
    sub_1D1741A30(*(v0 + 192), &unk_1EC64F390, &qword_1D1E92B10);

    sub_1D1A28448(*(v0 + 128), *(v0 + 64));
    goto LABEL_24;
  }

  v75 = *(v0 + 184);
  v76 = *(v0 + 152);
  v77 = *(v0 + 128);
  v78 = *(v0 + 104);
  v79 = [*(v0 + 72) uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1A28BEC(v77, v75, type metadata accessor for MatterStateSnapshot);
  (v93)(v75, 0, 1, v78);
  swift_beginAccess();
  sub_1D1B0E5E8(v75, v76);
  swift_endAccess();
  v80 = swift_task_alloc();
  *(v0 + 232) = v80;
  *v80 = v0;
  v80[1] = sub_1D1A24294;
  v81 = *(v0 + 128);

  return sub_1D1A22FC4(v81);
}

uint64_t sub_1D1A24294()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1D1A243A4, v1, 0);
}

uint64_t sub_1D1A243A4()
{
  v1 = v0[24];

  sub_1D1741A30(v1, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1A28448(v0[16], v0[8]);

  v2 = v0[1];

  return v2();
}

uint64_t MatterSnapshotModerator.rebuildSnapshotConcurrently(updateType:homes:filter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 64) = *v3;
  v7 = sub_1D1E66A7C();
  *(v4 + 72) = v7;
  *(v4 + 80) = *(v7 - 8);
  *(v4 + 88) = swift_task_alloc();
  type metadata accessor for MatterStateSnapshot(0);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = *a1;
  *(v4 + 160) = *(a1 + 16);
  *(v4 + 128) = *a3;
  *(v4 + 161) = *(a3 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1D1A245EC, v3, 0);
}

uint64_t sub_1D1A245EC()
{
  v51 = v0;
  v1 = *(v0 + 161);
  v2 = *(v0 + 128);
  if (v1 == 255)
  {
    sub_1D186145C(*(v0 + 128), 255);
    sub_1D1861470(v2, 255);
    sub_1D1861470(0, 3);
    goto LABEL_14;
  }

  v47 = *(v0 + 128);
  v48 = v1;
  v49 = 0;
  v50 = 3;
  sub_1D186145C(v2, v1);
  sub_1D186145C(v2, v1);
  v3 = _s13HomeDataModel19MatterStateSnapshotV6FilterO2eeoiySbAE_AEtFZ_0(&v47, &v49);

  sub_1D1861470(v2, v1);
  if ((v3 & 1) == 0)
  {
LABEL_14:
    v46 = *(v42 + 161);
    v23 = *(v42 + 120);
    v44 = *(v42 + 128);
    v24 = *(v42 + 160);
    v25 = *(v42 + 112);
    v26 = *(v42 + 56);
    v27 = *(v42 + 64);
    v28 = *(v42 + 48);
    swift_beginAccess();
    v29 = *(v26 + 112);
    *(v42 + 136) = v29;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646208, &unk_1D1E7E860);
    v54 = sub_1D1A28BA4(&qword_1EC6491B8, type metadata accessor for MatterSnapshotModerator, &protocol conformance descriptor for MatterSnapshotModerator);
    v31 = swift_task_alloc();
    *(v42 + 144) = v31;
    *(v31 + 16) = v28;
    *(v31 + 24) = v29;
    *(v31 + 32) = v25;
    *(v31 + 40) = v23;
    *(v31 + 48) = v24;
    *(v31 + 56) = v44;
    *(v31 + 64) = v46;
    *(v31 + 72) = v26;
    *(v31 + 80) = v27;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491C0, &qword_1D1E92B40);

    v33 = swift_task_alloc();
    *(v42 + 152) = v33;
    *v33 = v42;
    v33[1] = sub_1D1A24AE8;
    v53 = v32;
    v34 = v54;

    return MEMORY[0x1EEE6DBF8](v42 + 40, v30, v32, v26, v34, &unk_1D1E92B38, v31, v30);
  }

  v4 = *(v42 + 48);
  v5 = sub_1D18D72DC(MEMORY[0x1E69E7CC0]);
  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v7 = 0;
    v40 = v4 & 0xFFFFFFFFFFFFFF8;
    v41 = v4 & 0xC000000000000001;
    v37 = *(v42 + 48) + 32;
    v38 = (*(v42 + 80) + 8);
    v39 = i;
    while (1)
    {
      if (v41)
      {
        v8 = MEMORY[0x1D3891EF0](v7, *(v42 + 48));
      }

      else
      {
        if (v7 >= *(v40 + 16))
        {
          goto LABEL_18;
        }

        v8 = *(v37 + 8 * v7);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v45 = v5;
      v11 = *(v42 + 128);
      v12 = *(v42 + 104);
      v43 = *(v42 + 96);
      v13 = *(v42 + 88);
      v54 = *(v42 + 72);
      v14 = *(v42 + 161);
      v15 = [v8 matterControllerID];
      v16 = sub_1D1E6781C();
      v18 = v17;

      v19 = [v9 uniqueIdentifier];
      sub_1D1E66A5C();

      v20 = sub_1D18D677C(MEMORY[0x1E69E7CC0]);
      v49 = v11;
      v50 = v14;
      sub_1D186145C(v11, v14);
      sub_1D1A28CB8(v16, v18, v13, v20, &v49, v12);
      v21 = [v9 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1A28BEC(v12, v43, type metadata accessor for MatterStateSnapshot);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v45;
      v4 = &v49;
      sub_1D1755254(v43, v13, isUniquelyReferenced_nonNull_native);

      (*v38)(v13, v54);
      sub_1D1A28C54(v12, type metadata accessor for MatterStateSnapshot);
      v5 = v49;
      ++v7;
      if (v10 == v39)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:

  v35 = *(v42 + 8);

  return v35(v5);
}

uint64_t sub_1D1A24AE8()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D1A24C38, v1, 0);
}

uint64_t sub_1D1A24C38()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1A24CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 168) = v17;
  *(v8 + 176) = v18;
  *(v8 + 449) = v16;
  *(v8 + 152) = a6;
  *(v8 + 160) = a8;
  *(v8 + 448) = a7;
  *(v8 + 136) = a4;
  *(v8 + 144) = a5;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  *(v8 + 112) = a1;
  *(v8 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491B0, &qword_1D1E92B08);
  *(v8 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v9 = type metadata accessor for MatterStateSnapshot(0);
  *(v8 + 224) = v9;
  v10 = *(v9 - 8);
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 + 64);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  v11 = sub_1D1E66A7C();
  *(v8 + 272) = v11;
  v12 = *(v11 - 8);
  *(v8 + 280) = v12;
  *(v8 + 288) = *(v12 + 64);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491D0, &qword_1D1E92BD8);
  *(v8 + 320) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491D8, &unk_1D1E92BE0);
  *(v8 + 328) = v13;
  *(v8 + 336) = *(v13 - 8);
  *(v8 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A24FC4, v17, 0);
}

uint64_t sub_1D1A24FC4()
{
  v1 = *(v0 + 128);
  v28 = sub_1D18D72DC(MEMORY[0x1E69E7CC0]);
  if (v1 >> 62)
  {
    v5 = sub_1D1E6873C();
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6D8A8](v5, v2, v3, v4);
  }

  v6 = 0;
  v29 = *(v0 + 128) + 32;
  v30 = **(v0 + 120);
  v31 = v1 & 0xC000000000000001;
  v32 = v5;
  do
  {
    v40 = v6;
    if (v31)
    {
      v8 = MEMORY[0x1D3891EF0](v6, *(v0 + 128));
    }

    else
    {
      v8 = *(v29 + 8 * v6);
    }

    v38 = v8;
    v9 = *(v0 + 376);
    v36 = *(v0 + 176);
    v37 = *(v0 + 368);
    v10 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    v34 = v13;
    v33 = v9;
    v14 = *(v0 + 449);
    v35 = *(v0 + 448);
    v15 = sub_1D1E67E7C();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v9, 1, 1, v15);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = v38;
    *(v17 + 40) = v12;
    *(v17 + 48) = v13;
    *(v17 + 56) = v10;
    *(v17 + 64) = v35;
    *(v17 + 72) = v11;
    *(v17 + 80) = v14;
    *(v17 + 88) = v36;
    sub_1D1741C08(v33, v37, &unk_1EC6442C0, &qword_1D1E741A0);
    LODWORD(v13) = (*(v16 + 48))(v37, 1, v15);
    v39 = v38;

    sub_1D1A28388(v34, v10, v35);
    sub_1D186145C(v11, v14);
    v18 = *(v0 + 368);
    if (v13 == 1)
    {
      sub_1D1741A30(*(v0 + 368), &unk_1EC6442C0, &qword_1D1E741A0);
    }

    else
    {
      sub_1D1E67E6C();
      (*(v16 + 8))(v18, v15);
    }

    if (*(v17 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = sub_1D1E67D4C();
      v21 = v20;
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v22 = swift_allocObject();
    *(v22 + 16) = &unk_1D1E92BF8;
    *(v22 + 24) = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646208, &unk_1D1E7E860);
    v23 = v21 | v19;
    if (v21 | v19)
    {
      v23 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v19;
      *(v0 + 40) = v21;
    }

    v6 = v40 + 1;
    v7 = *(v0 + 376);
    *(v0 + 80) = 1;
    *(v0 + 88) = v23;
    *(v0 + 96) = v30;
    swift_task_create();

    sub_1D1741A30(v7, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  while (v32 != v40 + 1);
LABEL_18:
  *(v0 + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646208, &unk_1D1E7E860);
  sub_1D1E67DBC();
  v24 = sub_1D1A28BA4(&qword_1EC6491B8, type metadata accessor for MatterSnapshotModerator, &protocol conformance descriptor for MatterSnapshotModerator);
  *(v0 + 392) = v24;
  *(v0 + 400) = v28;
  v25 = *(v0 + 168);
  v26 = swift_task_alloc();
  *(v0 + 408) = v26;
  *v26 = v0;
  v26[1] = sub_1D1A25464;
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v2 = v25;
  v3 = v24;

  return MEMORY[0x1EEE6D8A8](v5, v2, v3, v4);
}

uint64_t sub_1D1A25464()
{
  v1 = *(*v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1D1A25574, v1, 0);
}

uint64_t sub_1D1A25574()
{
  v1 = v0[48];
  v2 = v0[40];
  v3 = (*(*(v1 - 8) + 48))(v2, 1, v1);
  v4 = v0[50];
  if (v3 == 1)
  {
    v5 = v0[14];
    (*(v0[42] + 8))(v0[43], v0[41]);
    *v5 = v4;

    v6 = v0[1];

    return v6();
  }

  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[34];
  v11 = v0[35];
  v13 = v0[32];
  v12 = v0[33];
  v14 = *(v1 + 48);
  v97 = *(v11 + 32);
  v97(v8, v2, v10);
  sub_1D1A28448(v2 + v14, v12);
  v98 = *(v11 + 16);
  v98(v9, v8, v10);
  sub_1D1A28BEC(v12, v13, type metadata accessor for MatterStateSnapshot);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[13] = v4;
  v16 = sub_1D1742188();
  v18 = *(v4 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
LABEL_42:
    v90 = v16;
    sub_1D173A304();
    v16 = v90;
    goto LABEL_12;
  }

  LOBYTE(v14) = v17;
  if (*(v0[50] + 24) >= v21)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

  sub_1D172AA04(v21, isUniquelyReferenced_nonNull_native);
  v16 = sub_1D1742188();
  if ((v14 & 1) != (v22 & 1))
  {

    return sub_1D1E690FC();
  }

LABEL_12:
  v23 = v0[13];
  v0[52] = v23;
  v24 = v0[38];
  v25 = v0[34];
  v26 = v0[35];
  v27 = v0[32];
  v28 = v0[29];
  v29 = (v26 + 8);
  if (v14)
  {
    v30 = *(v28 + 72);
    sub_1D1A28B40(v0[32], v23[7] + v30 * v16);
    v31 = *v29;
    (*v29)(v24, v25);
  }

  else
  {
    v23[(v16 >> 6) + 8] |= 1 << v16;
    v32 = v16;
    v98(v23[6] + *(v26 + 72) * v16, v24, v25);
    v30 = *(v28 + 72);
    sub_1D1A28448(v27, v23[7] + v30 * v32);
    v31 = *(v26 + 8);
    v33 = v31(v24, v25);
    v37 = v23[2];
    v20 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v20)
    {
      __break(1u);
      return MEMORY[0x1EEE6D8A8](v33, v34, v35, v36);
    }

    v23[2] = v38;
  }

  v0[53] = v31;
  if (*(v0[17] + 16) && (v39 = sub_1D1742188(), (v40 & 1) != 0))
  {
    sub_1D1A28BEC(*(v0[17] + 56) + v39 * v30, v0[27], type metadata accessor for MatterStateSnapshot);
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = v0[33];
  v43 = v0[28];
  v44 = v0[29];
  v46 = v0[26];
  v45 = v0[27];
  v48 = v0[23];
  v47 = v0[24];
  v49 = *(v44 + 56);
  v49(v45, v41, 1, v43);
  sub_1D1A28BEC(v42, v46, type metadata accessor for MatterStateSnapshot);
  v49(v46, 0, 1, v43);
  v50 = *(v48 + 48);
  sub_1D1741C08(v45, v47, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1741C08(v46, v47 + v50, &unk_1EC64F390, &qword_1D1E92B10);
  v51 = *(v44 + 48);
  v52 = v51(v47, 1, v43);
  v53 = v0[28];
  if (v52 == 1)
  {
    v54 = v0[27];
    sub_1D1741A30(v0[26], &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1741A30(v54, &unk_1EC64F390, &qword_1D1E92B10);
    if (v51(v47 + v50, 1, v53) == 1)
    {
      sub_1D1741A30(v0[24], &unk_1EC64F390, &qword_1D1E92B10);
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  sub_1D1741C08(v0[24], v0[25], &unk_1EC64F390, &qword_1D1E92B10);
  if (v51(v47 + v50, 1, v53) == 1)
  {
    v55 = v0[27];
    v56 = v0[25];
    sub_1D1741A30(v0[26], &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1741A30(v55, &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1A28C54(v56, type metadata accessor for MatterStateSnapshot);
LABEL_25:
    sub_1D1741A30(v0[24], &qword_1EC6491B0, &qword_1D1E92B08);
    goto LABEL_26;
  }

  v74 = v0[31];
  v76 = v0[26];
  v75 = v0[27];
  v78 = v0[24];
  v77 = v0[25];
  sub_1D1A28448(v47 + v50, v74);
  v79 = _s13HomeDataModel19MatterStateSnapshotV2eeoiySbAC_ACtFZ_0(v77, v74);
  sub_1D1A28C54(v74, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v76, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1741A30(v75, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1A28C54(v77, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v78, &unk_1EC64F390, &qword_1D1E92B10);
  if (v79)
  {
LABEL_32:
    v80 = v0[53];
    v81 = v0[39];
    v82 = v0[34];
    sub_1D1A28C54(v0[33], type metadata accessor for MatterStateSnapshot);
    v80(v81, v82);
    v0[50] = v0[52];
    v83 = v0[49];
    v84 = v0[21];
    v85 = swift_task_alloc();
    v0[51] = v85;
    *v85 = v0;
    v85[1] = sub_1D1A25464;
    v33 = v0[40];
    v36 = v0[41];
    v34 = v84;
    v35 = v83;

    return MEMORY[0x1EEE6D8A8](v33, v34, v35, v36);
  }

LABEL_26:
  v57 = v0[45];
  v94 = v57;
  v95 = v0[49];
  v96 = v0[44];
  v58 = v0[39];
  v59 = v0[37];
  v60 = v0[34];
  v92 = v0[35];
  v93 = v0[36];
  v61 = v0[33];
  v62 = v0[31];
  v91 = v0[29];
  v63 = v0[21];
  v64 = sub_1D1E67E7C();
  v65 = *(v64 - 8);
  (*(v65 + 56))(v57, 1, 1, v64);
  v98(v59, v58, v60);
  sub_1D1A28BEC(v61, v62, type metadata accessor for MatterStateSnapshot);
  v66 = (*(v92 + 80) + 40) & ~*(v92 + 80);
  v67 = (v93 + *(v91 + 80) + v66) & ~*(v91 + 80);
  v68 = swift_allocObject();
  *(v68 + 2) = v63;
  *(v68 + 3) = v95;
  *(v68 + 4) = v63;
  v97(&v68[v66], v59, v60);
  sub_1D1A28448(v62, &v68[v67]);
  sub_1D1741C08(v94, v96, &unk_1EC6442C0, &qword_1D1E741A0);
  LODWORD(v67) = (*(v65 + 48))(v96, 1, v64);
  swift_retain_n();

  v69 = v0[44];
  if (v67 == 1)
  {
    sub_1D1741A30(v0[44], &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v65 + 8))(v69, v64);
  }

  v70 = *(v68 + 2);
  swift_unknownObjectRetain();

  if (v70)
  {
    swift_getObjectType();
    v71 = sub_1D1E67D4C();
    v73 = v72;
    swift_unknownObjectRelease();
  }

  else
  {
    v71 = 0;
    v73 = 0;
  }

  sub_1D1741A30(v0[45], &unk_1EC6442C0, &qword_1D1E741A0);
  v86 = swift_allocObject();
  *(v86 + 16) = &unk_1D1E92C10;
  *(v86 + 24) = v68;
  if (v73 | v71)
  {
    v0[6] = 0;
    v0[7] = 0;
    v0[8] = v71;
    v0[9] = v73;
  }

  v87 = MEMORY[0x1E69E7CA8];
  v88 = swift_task_create();
  v0[54] = v88;
  v89 = swift_task_alloc();
  v0[55] = v89;
  *v89 = v0;
  v89[1] = sub_1D1A26014;

  return MEMORY[0x1EEE6DA40](v89, v88, v87 + 8);
}