uint64_t getEnumTagSinglePayload for FeatureFlags(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for FeatureFlags(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x13CCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1414()
{
  result = qword_80A0;
  if (!qword_80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80A0);
  }

  return result;
}

Swift::Int sub_14C0()
{
  sub_1E08();
  sub_1E18(0);
  return sub_1E28();
}

Swift::Int sub_150C(uint64_t a1)
{
  sub_1E08();
  sub_1E18(0);
  return sub_1E28();
}

uint64_t sub_154C()
{
  v0 = swift_allocObject();
  sub_1584();
  return v0;
}

uint64_t sub_1584()
{
  v1 = sub_1DC8();
  sub_1B3C();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1B24();
  if (qword_8098 != -1)
  {
    sub_1B04(&qword_8098);
  }

  v5 = sub_1A2C(v1, qword_83E8);
  (*(v3 + 16))(v0, v5, v1);
  v6 = sub_1DB8();
  v7 = sub_1DE8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Initializing ReaderFlowPlugin", v8, 2u);
  }

  (*(v3 + 8))(v0, v1);
  return v0;
}

uint64_t sub_16F4(uint64_t a1)
{
  v3 = sub_1DC8();
  sub_1B3C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1B24();
  if (qword_8098 != -1)
  {
    sub_1B04(&qword_8098);
  }

  v7 = sub_1A2C(v3, qword_83E8);
  (*(v5 + 16))(v1, v7, v3);
  v8 = sub_1DB8();
  v9 = sub_1DE8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Find flow for X called", v10, 2u);
  }

  (*(v5 + 8))(v1, v3);
  v17 = &type metadata for FeatureFlags;
  v18 = sub_1A64();
  v11 = sub_1D68();
  sub_1AB8(v16);
  if ((v11 & 1) == 0)
  {
    return sub_1CE8();
  }

  v12 = sub_1DA8();
  v13 = sub_1D98();
  v17 = v12;
  v18 = &protocol witness table for ReferenceResolutionClient;
  v16[0] = v13;

  sub_1D48();
  sub_1D58();
  sub_1D88();
  swift_allocObject();
  v14 = sub_1D78();
  (*(*v14 + 120))(a1);
}

uint64_t sub_1998@<X0>(uint64_t *a1@<X8>)
{
  result = sub_154C();
  *a1 = result;
  return result;
}

unint64_t sub_19D8()
{
  result = qword_8148;
  if (!qword_8148)
  {
    type metadata accessor for ReaderFlowPlugin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8148);
  }

  return result;
}

uint64_t sub_1A2C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1A64()
{
  result = qword_8150;
  if (!qword_8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8150);
  }

  return result;
}

uint64_t sub_1AB8(void *a1)
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

uint64_t sub_1B04(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1B50()
{
  sub_1CA4();
  result = sub_1DF8();
  qword_83E0 = result;
  return result;
}

uint64_t sub_1BB4()
{
  v0 = sub_1DC8();
  sub_1C40(v0, qword_83E8);
  sub_1A2C(v0, qword_83E8);
  if (qword_8090 != -1)
  {
    swift_once();
  }

  v1 = qword_83E0;
  return sub_1DD8();
}

uint64_t *sub_1C40(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1CA4()
{
  result = qword_8158;
  if (!qword_8158)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8158);
  }

  return result;
}