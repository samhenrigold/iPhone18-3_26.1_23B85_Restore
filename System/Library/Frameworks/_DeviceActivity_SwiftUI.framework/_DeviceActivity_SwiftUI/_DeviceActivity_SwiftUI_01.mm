uint64_t sub_23B6D5610()
{

  return MEMORY[0x2822009F8](sub_23B6D5728, 0, 0);
}

uint64_t sub_23B6D5728()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v4 = *(v1 + 88);
  v5 = swift_dynamicCast();
  (*(*(v4 - 8) + 56))(v3, v5 ^ 1u, 1, v4);
  result = __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = *(v2 + 16);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v0[13] + 16) = v9;

    v10 = v0[1];

    return v10();
  }

  return result;
}

void *DeviceActivityResults.Iterator.deinit()
{

  sub_23B6BCE90(v0 + qword_27E179BA8, &qword_27E179BD8, &qword_23B6D87F0);

  sub_23B6BCE90(v0 + qword_27E179BB8, qword_27E179BE0, qword_23B6D87F8);
  return v0;
}

uint64_t DeviceActivityResults.Iterator.__deallocating_deinit()
{
  DeviceActivityResults.Iterator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23B6D591C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23B6CD61C;

  return sub_23B6D50F4(a1);
}

uint64_t sub_23B6D59B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v14 = type metadata accessor for DeviceActivityResults.Iterator(0, *(a5 + 80), *(a5 + 88), v13);
  *v12 = v6;
  v12[1] = sub_23B6D5A98;

  return MEMORY[0x282200320](a1, a2, a3, v14, a6);
}

uint64_t sub_23B6D5A98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B6D5B94@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23B6D5BD8();

  *a1 = v2;
  return result;
}

uint64_t sub_23B6D5BD8()
{
  result = *v0;
  *(*v0 + 16) = 0;
  return result;
}

uint64_t sub_23B6D5C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_23B6D5CFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_23B6D5D44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23B6D5D98(uint64_t a1)
{
  sub_23B6D5FAC(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t dispatch thunk of DeviceActivityResults.Iterator.next()(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23B6C85D8;

  return v6(a1);
}

void sub_23B6D5FAC(uint64_t a1)
{
  if (!qword_27E179CE8)
  {
    sub_23B6D6D60();
    v1 = sub_23B6D7240();
    if (!v2)
    {
      atomic_store(v1, &qword_27E179CE8);
    }
  }
}

uint64_t sub_23B6D6010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_23B6D60E8;
  v7[3] = &block_descriptor_1;
  v4 = _Block_copy(v7);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  [ObjCClassFromMetadata executeQuery:a1 completionHandler:v4];
  _Block_release(v4);
}

uint64_t sub_23B6D60E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_23B6D6174();
  v3 = sub_23B6D70B0();

  v2(v3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23B6D6174()
{
  result = qword_27E179CF0;
  if (!qword_27E179CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E179CF0);
  }

  return result;
}

uint64_t sub_23B6D61C0()
{
  v1 = [*v0 bundleIdentifier];
  v2 = sub_23B6D7050();

  return v2;
}

uint64_t sub_23B6D622C()
{
  v0 = sub_23B6D6E20();
  __swift_allocate_value_buffer(v0, qword_27E17A730);
  __swift_project_value_buffer(v0, qword_27E17A730);
  return sub_23B6D6E10();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_23B6D6304(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    [v1 setConfiguration_];
    return sub_23B6D683C(a1);
  }

  sub_23B6D68A4(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179D00, &unk_23B6D8B60);
    sub_23B6D6914();
    if (swift_dynamicCast())
    {
      [v1 setConfiguration_];

      return sub_23B6D683C(a1);
    }
  }

  else
  {
    sub_23B6D683C(v15);
  }

  if (qword_27E179500 != -1)
  {
    swift_once();
  }

  v3 = sub_23B6D6E20();
  __swift_project_value_buffer(v3, qword_27E17A730);
  sub_23B6D68A4(a1, v15);
  v4 = sub_23B6D6E00();
  v5 = sub_23B6D71C0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    sub_23B6D68A4(v15, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179CF8, &qword_23B6D8B58);
    v8 = sub_23B6D7060();
    v10 = v9;
    sub_23B6D683C(v15);
    v11 = sub_23B6BD12C(v8, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_23B6BA000, v4, v5, "Unexpected hostConfiguration value: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23EEA3EE0](v7, -1, -1);
    MEMORY[0x23EEA3EE0](v6, -1, -1);
  }

  else
  {

    sub_23B6D683C(v15);
  }

  return sub_23B6D683C(a1);
}

uint64_t sub_23B6D6544(uint64_t a1)
{
  [v1 setDelegate_];

  return swift_unknownObjectRelease();
}

id sub_23B6D65A8()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [v0 makeXPCConnectionWithError_];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_23B6D69F0();

    swift_willThrow();
  }

  return v1;
}

id sub_23B6D6660@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void sub_23B6D669C(id *a1)
{
  v2 = *a1;
  [*v1 setExtensionIdentity_];
}

uint64_t sub_23B6D683C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179CF8, &qword_23B6D8B58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B6D68A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179CF8, &qword_23B6D8B58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B6D6914()
{
  result = qword_27E179D08;
  if (!qword_27E179D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E179D08);
  }

  return result;
}