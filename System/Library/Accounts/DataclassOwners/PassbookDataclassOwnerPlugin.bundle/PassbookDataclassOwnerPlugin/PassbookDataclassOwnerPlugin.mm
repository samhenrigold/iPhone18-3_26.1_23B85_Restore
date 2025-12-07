Swift::Int sub_13B0()
{
  sub_2794();
  sub_27A4(0);
  return sub_27B4();
}

Swift::Int sub_141C(uint64_t a1)
{
  sub_2794();
  sub_27A4(0);
  return sub_27B4();
}

id sub_166C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_16D0(uint64_t a1, id *a2)
{
  result = sub_26F4();
  *a2 = 0;
  return result;
}

uint64_t sub_1748(uint64_t a1, id *a2)
{
  v3 = sub_2704();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_17C8@<X0>(uint64_t *a1@<X8>)
{
  sub_2714();
  v2 = sub_26E4();

  *a1 = v2;
  return result;
}

uint64_t sub_180C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26E4();

  *a2 = v3;
  return result;
}

uint64_t sub_1854@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2714();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1880(uint64_t a1)
{
  v2 = sub_2660(&qword_8450, &unk_2D94);
  v3 = sub_2660(&qword_8458, &unk_2D3C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1918()
{
  sub_2714();
  v0 = sub_2734();

  return v0;
}

uint64_t sub_1954(uint64_t a1)
{
  sub_2714();
  sub_2724();
}

Swift::Int sub_19A8(uint64_t a1)
{
  sub_2714();
  sub_2794();
  sub_2724();
  v1 = sub_27B4();

  return v1;
}

uint64_t sub_1A1C(void *a1, uint64_t *a2)
{
  v2 = sub_2714();
  v4 = v3;
  if (v2 == sub_2714() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2784();
  }

  return v7 & 1;
}

id sub_1AA4()
{
  v0 = sub_26D4();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v31[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v31[-1] - v6;
  __chkstk_darwin(v5);
  v9 = &v31[-1] - v8;
  v31[3] = &type metadata for WalletFeatureFlag;
  v31[4] = sub_22F8();
  v10 = sub_26A4();
  sub_234C(v31);
  v11 = PKIsPhone();
  if ((v10 & 1) == 0)
  {
    sub_26B4();
    v20 = sub_26C4();
    v21 = sub_2764();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "actionsForDeletingAccount - Feature disabled", v22, 2u);
    }

    (*(v1 + 8))(v9, v0);
    sub_2398(&qword_8418, " \a");
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2B90;
    result = [objc_opt_self() actionWithType:0];
    if (result)
    {
      v23 = result;
      *(v15 + 56) = sub_23E0();
      *(v15 + 32) = v23;
      return v15;
    }

    __break(1u);
    goto LABEL_20;
  }

  if ((v11 & 1) == 0)
  {
    sub_26B4();
    v24 = sub_26C4();
    v25 = sub_2764();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "actionsForDeletingAccount - Platform unsupported", v26, 2u);
    }

    (*(v1 + 8))(v7, v0);
    sub_2398(&qword_8418, " \a");
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2BA0;
    v27 = objc_opt_self();
    result = [v27 destructiveActionWithType:3];
    if (result)
    {
      v28 = result;
      v29 = sub_23E0();
      *(v15 + 56) = v29;
      *(v15 + 32) = v28;
      result = [v27 actionWithType:0];
      if (result)
      {
        *(v15 + 88) = v29;
        *(v15 + 64) = result;
        return v15;
      }

      goto LABEL_23;
    }

    goto LABEL_21;
  }

  sub_26B4();
  v12 = sub_26C4();
  v13 = sub_2764();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "actionsForDeletingAccount - Pass deletion enabled", v14, 2u);
  }

  (*(v1 + 8))(v4, v0);
  sub_2398(&qword_8418, " \a");
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2BB0;
  v16 = objc_opt_self();
  result = [v16 destructiveActionWithType:3];
  if (!result)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = result;
  v19 = sub_23E0();
  *(v15 + 56) = v19;
  *(v15 + 32) = v18;
  result = [v16 actionWithType:2];
  if (!result)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v15 + 88) = v19;
  *(v15 + 64) = result;
  result = [v16 actionWithType:0];
  if (result)
  {
    *(v15 + 120) = v19;
    *(v15 + 96) = result;
    return v15;
  }

LABEL_24:
  __break(1u);
  return result;
}

void *sub_1F5C(uint64_t a1)
{
  v2 = sub_26D4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v29 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v29 - v11;
  result = __chkstk_darwin(v10);
  v15 = &v29 - v14;
  if (result)
  {
    v16 = [result type];
    if (v16 > 8)
    {
      sub_26B4();
      v26 = sub_26C4();
      v27 = sub_2764();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_0, v26, v27, "performActionForAccount - Unknown Default", v28, 2u);
      }

      (*(v3 + 8))(v6, v2);
    }

    else if (((1 << v16) & 0x1F2) != 0)
    {
      sub_26B4();
      v17 = sub_26C4();
      v18 = sub_2764();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_0, v17, v18, "performActionForAccount - Unexpected DataclassAction", v19, 2u);
      }

      (*(v3 + 8))(v9, v2);
    }

    else
    {
      if (((1 << v16) & 5) != 0)
      {
        sub_26B4();
        v20 = sub_26C4();
        v21 = sub_2764();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_0, v20, v21, "performActionForAccount - Disabling pass deletion flag", v22, 2u);
        }

        (*(v3 + 8))(v12, v2);
      }

      else
      {
        sub_26B4();
        v23 = sub_26C4();
        v24 = sub_2764();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_0, v23, v24, "performActionForAccount - Enabling pass deletion flag", v25, 2u);
        }

        (*(v3 + 8))(v15, v2);
      }

      PKSetiCloudSignoutShouldDeleteLocalData();
    }

    return &dword_0 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22F8()
{
  result = qword_84C0;
  if (!qword_84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_84C0);
  }

  return result;
}

uint64_t sub_234C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2398(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23E0()
{
  result = qword_8420;
  if (!qword_8420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8420);
  }

  return result;
}

void type metadata accessor for Dataclass()
{
  if (!qword_8430)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_8430);
    }
  }
}

uint64_t getEnumTagSinglePayload for WalletFeatureFlag(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WalletFeatureFlag(_WORD *result, int a2, int a3)
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

unint64_t sub_2570()
{
  result = qword_84C8[0];
  if (!qword_84C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_84C8);
  }

  return result;
}

uint64_t sub_2660(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Dataclass();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}