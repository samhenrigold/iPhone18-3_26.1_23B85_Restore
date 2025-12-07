Swift::Int sub_1030()
{
  sub_1A44();
  sub_1A54(0);
  return sub_1A64();
}

Swift::Int sub_109C(uint64_t a1)
{
  sub_1A44();
  sub_1A54(0);
  return sub_1A64();
}

uint64_t sub_1104()
{
  v0 = sub_19F4();
  sub_1960(v0, qword_8680);
  sub_1738(v0, qword_8680);
  return sub_19E4();
}

double HIDRMSessionFilter.property(forKey:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

char *HIDRMSessionFilter.init(session:)(void *a1)
{
  *&v1[OBJC_IVAR___HIDRMSessionFilter_manager] = 0;
  v17[3] = &type metadata for AppleHIDRM;
  v17[4] = sub_1674();
  v3 = sub_19C4();
  sub_16C8(v17);
  if (v3)
  {
    v16.receiver = v1;
    v16.super_class = type metadata accessor for HIDRMSessionFilter();
    v4 = objc_msgSendSuper2(&v16, "init");
    v5 = qword_84F0;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_19F4();
    sub_1738(v7, qword_8680);
    v8 = a1;
    v9 = sub_19D4();
    v10 = sub_1A24();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_0, v9, v10, "%@ init", v11, 0xCu);
      sub_1900(v12, &qword_83F0, &unk_1E10);
    }

    sub_1A14();
    v14 = sub_1A04();

    *&v6[OBJC_IVAR___HIDRMSessionFilter_manager] = v14;
  }

  else
  {

    type metadata accessor for HIDRMSessionFilter();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

id HIDRMSessionFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HIDRMSessionFilter.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HIDRMSessionFilter();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void _s18HIDRMSessionFilterAAC8activateyyF_0()
{
  if (qword_84F0 != -1)
  {
    swift_once();
  }

  v0 = sub_19F4();
  sub_1738(v0, qword_8680);
  oslog = sub_19D4();
  v1 = sub_1A24();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "activate", v2, 2u);
  }
}

unint64_t sub_1674()
{
  result = qword_83E8;
  if (!qword_83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_83E8);
  }

  return result;
}

uint64_t sub_16C8(void *a1)
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

uint64_t sub_1738(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1770(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleHIDRM(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AppleHIDRM(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_18AC()
{
  result = qword_8480;
  if (!qword_8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8480);
  }

  return result;
}

uint64_t sub_1900(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1770(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_1960(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}