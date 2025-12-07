void sub_242FB6A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CRSLogForCategory(unint64_t a1)
{
  if (a1 >= 4)
  {
    CRSLogForCategory_cold_2();
  }

  if (CRSLogForCategory_onceToken != -1)
  {
    CRSLogForCategory_cold_1();
  }

  v2 = CRSLogForCategory_logObjects[a1];

  return v2;
}

uint64_t __CRSLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.CarPlayServices", "CarPlayServices");
  v1 = CRSLogForCategory_logObjects[0];
  CRSLogForCategory_logObjects[0] = v0;

  v2 = os_log_create("com.apple.CarPlayServices", "IconLayout");
  v3 = qword_281505A38;
  qword_281505A38 = v2;

  v4 = os_log_create("com.apple.CarPlayServices", "InCall");
  v5 = qword_281505A40;
  qword_281505A40 = v4;

  qword_281505A48 = os_log_create("com.apple.CarPlayServices", "Session");

  return MEMORY[0x2821F96F8]();
}

void sub_242FB8418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242FB857C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242FB8688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242FB8794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242FB88A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242FB8C78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v7 - 104));
  _Unwind_Resume(a1);
}

void sub_242FB9BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_242FBD318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242FBD5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242FBEF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242FBF0F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_242FC0924(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id CRSWidgetStackRow.init(stacks:)(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for CRSWidgetStack(0);
  v2 = sub_242FCB31C();

  v3 = [v1 initWithStacks_];

  return v3;
}

{
  *(v1 + OBJC_IVAR___CRSWidgetStackRow_stacks) = a1;
  v3.super_class = CRSWidgetStackRow;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_242FC2BEC@<X0>(void *a1@<X8>)
{
  v3 = [v1 stacks];
  type metadata accessor for CRSWidgetStack(0);
  v4 = sub_242FCB32C();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:

    v10 = objc_allocWithZone(CRSWidgetStackRow);
    v11 = sub_242FCB31C();

    v12 = [v10 initWithStacks_];

    result = type metadata accessor for CRSWidgetStackRow();
    a1[3] = result;
    *a1 = v12;
    return result;
  }

  v5 = sub_242FCB43C();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  result = sub_242FCB3FC();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x245D28B90](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      [v8 copy];
      sub_242FCB3BC();
      swift_unknownObjectRelease();

      swift_dynamicCast();
      sub_242FCB3DC();
      sub_242FCB40C();
      sub_242FCB41C();
      sub_242FCB3EC();
    }

    while (v5 != v7);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for CRSWidgetStackRow()
{
  result = qword_27ED5DD60[0];
  if (!qword_27ED5DD60[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27ED5DD60);
  }

  return result;
}

BOOL sub_242FC2E98(uint64_t a1, uint64_t a2)
{
  v2 = sub_242FCB44C();

  return v2 != 0;
}

uint64_t sub_242FC2EFC()
{
  sub_242FCB48C();
  sub_242FCB2FC();
  return sub_242FCB4AC();
}

uint64_t sub_242FC2F60(uint64_t a1)
{
  sub_242FCB48C();
  sub_242FCB2FC();
  return sub_242FCB4AC();
}

uint64_t sub_242FC2FAC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_242FCB44C();

  *a2 = v3 != 0;
  return result;
}

id CRSWidgetStackRow.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED5DB00, &qword_242FCCD68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_242FCB1CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRSWidgetStack(0);
  if (sub_242FCB38C())
  {
    v11 = sub_242FCB31C();

    v12 = [v2 initWithStacks_];
  }

  else
  {
    sub_242FCB1BC();
    v13 = sub_242FCB23C();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = sub_242FCB1DC();
    sub_242FC3650(v6, &unk_27ED5DB00, &qword_242FCCD68);
    (*(v8 + 8))(v10, v7);
    v15 = sub_242FCB1EC();

    [a1 failWithError_];
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

Swift::Void __swiftcall CRSWidgetStackRow.encode(with:)(NSCoder with)
{
  v3 = [v1 stacks];
  if (!v3)
  {
    type metadata accessor for CRSWidgetStack(0);
    sub_242FCB32C();
    v3 = sub_242FCB31C();
  }

  v4 = sub_242FCB2DC();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

uint64_t CRSWidgetStackRow.isEqual(_:)(uint64_t a1)
{
  sub_242FC35E0(a1, v9);
  if (!v10)
  {
    sub_242FC3650(v9, &qword_27ED5D990, &qword_242FCCFF0);
    goto LABEL_5;
  }

  type metadata accessor for CRSWidgetStackRow();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v6 = 0;
    return v6 & 1;
  }

  v2 = [v1 stacks];
  type metadata accessor for CRSWidgetStack(0);
  v3 = sub_242FCB32C();

  v4 = [v8 stacks];
  v5 = sub_242FCB32C();

  v6 = sub_242FC36B0(v3, v5);

  return v6 & 1;
}

uint64_t sub_242FC35E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED5D990, &qword_242FCCFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242FC3650(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_242FC36B0(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for CRSWidgetStack(0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x245D28B90](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x245D28B90](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_242FCB39C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_242FCB39C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_242FCB43C();
  }

  result = sub_242FCB43C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t CRSWidgetStackRow.hash.getter()
{
  v1 = [v0 stacks];
  type metadata accessor for CRSWidgetStack(0);
  sub_242FCB32C();

  sub_242FC3A88(v2, v3);
  v4 = sub_242FCB34C();

  return v4;
}

unint64_t sub_242FC3A88(uint64_t a1, uint64_t a2)
{
  result = qword_27ED5D998;
  if (!qword_27ED5D998)
  {
    type metadata accessor for CRSWidgetStack(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED5D998);
  }

  return result;
}

uint64_t CRSWidgetStackRow.description.getter()
{
  v1 = [v0 stacks];
  v2 = type metadata accessor for CRSWidgetStack(0);
  v3 = sub_242FCB32C();

  v4 = MEMORY[0x245D28B00](v3, v2);

  return v4;
}

id CRSWidgetStackRow.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_242FC3CC0()
{
  result = qword_27ED5D9A0;
  if (!qword_27ED5D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED5D9A0);
  }

  return result;
}

uint64_t _s4KeysOwet(unsigned int *a1, int a2)
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

_WORD *_s4KeysOwst(_WORD *result, int a2, int a3)
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

id CRSWidgetLayoutState.init(showWidgets:showWallpaper:showSuggestions:smartRotate:widgetStackRows:)(char a1, char a2, char a3, char a4, uint64_t a5)
{
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for CRSWidgetStackRow();
  v10 = sub_242FCB31C();

  v11 = [v9 initWithShowWidgets:a1 & 1 showWallpaper:a2 & 1 showSuggestions:a3 & 1 smartRotate:a4 & 1 widgetStackRows:v10];

  return v11;
}

{
  *(v5 + OBJC_IVAR___CRSWidgetLayoutState_showWidgets) = a1;
  *(v5 + OBJC_IVAR___CRSWidgetLayoutState_showWallpaper) = a2;
  *(v5 + OBJC_IVAR___CRSWidgetLayoutState_showSuggestions) = a3;
  *(v5 + OBJC_IVAR___CRSWidgetLayoutState_smartRotate) = a4;
  *(v5 + OBJC_IVAR___CRSWidgetLayoutState_widgetStackRows) = a5;
  v7.super_class = CRSWidgetLayoutState;
  return objc_msgSendSuper2(&v7, sel_init);
}

id static CRSWidgetLayoutState.load(from:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_242FC4244(0, &qword_27ED5DAF8, 0x277CCAAC8);
  type metadata accessor for CRSWidgetLayoutState(v3);
  result = sub_242FCB36C();
  if (!v2 && !result)
  {
    v5 = objc_allocWithZone(CRSWidgetLayoutState);
    type metadata accessor for CRSWidgetStackRow();
    v6 = sub_242FCB31C();
    v7 = [v5 initWithShowWidgets:1 showWallpaper:0 showSuggestions:1 smartRotate:1 widgetStackRows:v6];

    return v7;
  }

  return result;
}

uint64_t sub_242FC4244(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t CRSWidgetLayoutState.save(to:)(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = sub_242FCB23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = 0;
  v6 = [v1 saveAndReturnError_];
  v7 = v18[0];
  if (v6)
  {
    v8 = sub_242FCB26C();
    v10 = v9;

    v11 = [objc_opt_self() defaultManager];
    sub_242FCB21C();
    v12 = sub_242FCB20C();
    (*(v3 + 8))(v5, v2);
    v18[0] = 0;
    v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v18];

    if (v13)
    {
      v14 = v18[0];
      sub_242FCB27C();
    }

    else
    {
      v17 = v18[0];
      sub_242FCB1FC();

      swift_willThrow();
    }

    return sub_242FC6298(v8, v10);
  }

  else
  {
    v15 = v7;
    sub_242FCB1FC();

    return swift_willThrow();
  }
}

void *CRSWidgetLayoutState.save()()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v5];
  v2 = v5[0];
  if (v1)
  {
    v3 = sub_242FCB26C();
  }

  else
  {
    v3 = v2;
    sub_242FCB1FC();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_242FC4A7C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 widgetStackRows];
  type metadata accessor for CRSWidgetStackRow();
  v5 = sub_242FCB32C();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:

LABEL_12:
    v11 = [v2 showWidgets];
    v12 = [v2 showWallpaper];
    v13 = [v2 showSuggestions];
    v14 = [v2 smartRotate];
    v15 = objc_allocWithZone(CRSWidgetLayoutState);
    v16 = sub_242FCB31C();

    v17 = [v15 initWithShowWidgets:v11 showWallpaper:v12 showSuggestions:v13 smartRotate:v14 widgetStackRows:v16];

    result = type metadata accessor for CRSWidgetLayoutState(v18);
    a1[3] = result;
    *a1 = v17;
    return result;
  }

  v6 = sub_242FCB43C();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  result = sub_242FCB3FC();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v19 = v2;
    v20 = a1;
    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x245D28B90](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      [v9 copy];
      sub_242FCB3BC();
      swift_unknownObjectRelease();

      swift_dynamicCast();
      sub_242FCB3DC();
      sub_242FCB40C();
      sub_242FCB41C();
      sub_242FCB3EC();
    }

    while (v6 != v8);

    v2 = v19;
    a1 = v20;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_242FC4D44(unsigned __int8 a1)
{
  v1 = 0x7453746567646977;
  v2 = 0x6C6C6157776F6873;
  v3 = 0x67677553776F6873;
  if (a1 != 3)
  {
    v3 = 0x746F527472616D73;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x67646957776F6873;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_242FC4E20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF73776F526B6361;
  v3 = 0x7453746567646977;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x67646957776F6873;
    }

    else
    {
      v5 = 0x7453746567646977;
    }

    if (v4)
    {
      v6 = 0xEB00000000737465;
    }

    else
    {
      v6 = 0xEF73776F526B6361;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6C6C6157776F6873;
    v6 = 0xED00007265706170;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x67677553776F6873;
    }

    else
    {
      v5 = 0x746F527472616D73;
    }

    if (v4 == 3)
    {
      v6 = 0xEF736E6F69747365;
    }

    else
    {
      v6 = 0xEB00000000657461;
    }
  }

  v7 = 0x6C6C6157776F6873;
  v8 = 0xED00007265706170;
  v9 = 0x67677553776F6873;
  v10 = 0xEF736E6F69747365;
  if (a2 != 3)
  {
    v9 = 0x746F527472616D73;
    v10 = 0xEB00000000657461;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x67646957776F6873;
    v2 = 0xEB00000000737465;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_242FCB47C();
  }

  return v13 & 1;
}

uint64_t sub_242FC4FFC()
{
  sub_242FCB48C();
  sub_242FCB2FC();

  return sub_242FCB4AC();
}

uint64_t sub_242FC5114(uint64_t a1)
{
  sub_242FCB2FC();
}

uint64_t sub_242FC5218(uint64_t a1)
{
  sub_242FCB48C();
  sub_242FCB2FC();

  return sub_242FCB4AC();
}

unint64_t sub_242FC532C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_242FC62EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_242FC535C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF73776F526B6361;
  v4 = 0x7453746567646977;
  v5 = 0xED00007265706170;
  v6 = 0x6C6C6157776F6873;
  v7 = 0xEF736E6F69747365;
  v8 = 0x67677553776F6873;
  if (v2 != 3)
  {
    v8 = 0x746F527472616D73;
    v7 = 0xEB00000000657461;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x67646957776F6873;
    v3 = 0xEB00000000737465;
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

id CRSWidgetLayoutState.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED5DB00, &qword_242FCCD68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_242FCB1CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRSWidgetStackRow();
  v11 = sub_242FCB38C();
  if (v11)
  {
    *&v2[OBJC_IVAR___CRSWidgetLayoutState_widgetStackRows] = v11;
    v12 = sub_242FCB2DC();
    v13 = [a1 decodeBoolForKey_];

    v2[OBJC_IVAR___CRSWidgetLayoutState_showWidgets] = v13;
    v14 = sub_242FCB2DC();
    v15 = [a1 decodeBoolForKey_];

    v2[OBJC_IVAR___CRSWidgetLayoutState_showWallpaper] = v15;
    v16 = sub_242FCB2DC();
    v17 = [a1 containsValueForKey_];

    if (v17)
    {
      v18 = sub_242FCB2DC();
      v19 = [a1 decodeBoolForKey_];
    }

    else
    {
      v19 = 1;
    }

    v2[OBJC_IVAR___CRSWidgetLayoutState_showSuggestions] = v19;
    v25 = sub_242FCB2DC();
    v26 = [a1 containsValueForKey_];

    if (v26)
    {
      v27 = sub_242FCB2DC();
      v28 = [a1 decodeBoolForKey_];
    }

    else
    {
      v28 = 1;
    }

    v2[OBJC_IVAR___CRSWidgetLayoutState_smartRotate] = v28;
    v30.receiver = v2;
    v30.super_class = CRSWidgetLayoutState;
    v24 = objc_msgSendSuper2(&v30, sel_init);
  }

  else
  {
    sub_242FCB1BC();
    v20 = sub_242FCB23C();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v21 = sub_242FCB1DC();
    sub_242FC3650(v6, &unk_27ED5DB00, &qword_242FCCD68);
    (*(v8 + 8))(v10, v7);
    v22 = sub_242FCB1EC();

    [a1 failWithError_];
    type metadata accessor for CRSWidgetLayoutState(v23);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v24;
}

Swift::Void __swiftcall CRSWidgetLayoutState.encode(with:)(NSCoder with)
{
  v3 = [v1 widgetStackRows];
  if (!v3)
  {
    type metadata accessor for CRSWidgetStackRow();
    sub_242FCB32C();
    v3 = sub_242FCB31C();
  }

  v4 = sub_242FCB2DC();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = [v1 showWidgets];
  v6 = sub_242FCB2DC();
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  v7 = [v1 showWallpaper];
  v8 = sub_242FCB2DC();
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];

  v9 = [v1 showSuggestions];
  v10 = sub_242FCB2DC();
  [(objc_class *)with.super.isa encodeBool:v9 forKey:v10];

  v11 = [v1 smartRotate];
  v12 = sub_242FCB2DC();
  [(objc_class *)with.super.isa encodeBool:v11 forKey:v12];
}

uint64_t CRSWidgetLayoutState.isEqual(_:)(uint64_t a1)
{
  v2 = sub_242FC35E0(a1, v14);
  if (v15)
  {
    type metadata accessor for CRSWidgetLayoutState(v2);
    if (swift_dynamicCast())
    {
      v3 = [v1 widgetStackRows];
      type metadata accessor for CRSWidgetStackRow();
      v4 = sub_242FCB32C();

      v5 = [v13 widgetStackRows];
      v6 = sub_242FCB32C();

      LOBYTE(v5) = sub_242FC5CFC(v4, v6);

      if (v5)
      {
        v7 = [v1 showWidgets];
        if (v7 == [v13 showWidgets])
        {
          v8 = [v1 showWallpaper];
          if (v8 == [v13 showWallpaper])
          {
            v9 = [v1 showSuggestions];
            if (v9 == [v13 showSuggestions])
            {
              v11 = [v1 smartRotate];
              v12 = [v13 smartRotate];

              return v11 ^ v12 ^ 1;
            }
          }
        }
      }
    }
  }

  else
  {
    sub_242FC3650(v14, &qword_27ED5D990, &qword_242FCCFF0);
  }

  return 0;
}

uint64_t sub_242FC5CFC(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for CRSWidgetStackRow();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x245D28B90](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x245D28B90](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_242FCB39C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_242FCB39C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_242FCB43C();
  }

  result = sub_242FCB43C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t CRSWidgetLayoutState.hash.getter()
{
  v1 = [v0 widgetStackRows];
  type metadata accessor for CRSWidgetStackRow();
  sub_242FCB32C();

  sub_242FC6338();
  v2 = sub_242FCB34C();

  [v0 showWidgets];
  v3 = sub_242FCB35C();
  [v0 showWallpaper];
  v4 = v3 ^ sub_242FCB35C();
  [v0 showSuggestions];
  v5 = v4 ^ sub_242FCB35C() ^ v2;
  [v0 smartRotate];
  return v5 ^ sub_242FCB35C();
}

id CRSWidgetLayoutState.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_242FC6184(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = sub_242FCB24C();
  if (!v2)
  {
    v5 = v3;
    v6 = v4;
    v7 = objc_opt_self();
    v8 = sub_242FCB25C();
    sub_242FC6298(v5, v6);
    v11[0] = 0;
    v1 = [v7 loadFrom:v8 error:v11];

    if (v1)
    {
      v9 = v11[0];
    }

    else
    {
      v1 = v11[0];
      sub_242FCB1FC();

      swift_willThrow();
    }
  }

  return v1;
}

uint64_t sub_242FC6298(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_242FC62EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_242FCB44C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_242FC6338()
{
  result = qword_27ED5DB10;
  if (!qword_27ED5DB10)
  {
    type metadata accessor for CRSWidgetStackRow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED5DB10);
  }

  return result;
}

unint64_t sub_242FC6394()
{
  result = qword_27ED5DB18;
  if (!qword_27ED5DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED5DB18);
  }

  return result;
}

uint64_t _s4KeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4KeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t CRSWidgetStack.id.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR___CRSWidgetStack__id);
  v5 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v6 = sub_242FCB2CC();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, &v4[v5], v6);
}

uint64_t CRSWidgetStack.widgets.getter()
{
  v1 = [v0 _widgets];
  type metadata accessor for CRSWidget(0);
  v2 = sub_242FCB32C();

  return v2;
}

id CRSWidgetStack.init(id:widgets:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_242FCB28C();
  type metadata accessor for CRSWidget(0);
  v5 = sub_242FCB31C();

  v6 = [v3 initWithID:v4 widgets:v5];

  v7 = sub_242FCB2CC();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

{
  v3 = v2;
  v6 = sub_242FCB2CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED5DB28, &unk_242FCCFD0);
  (*(v7 + 16))(v9, a1, v6);
  *&v3[OBJC_IVAR___CRSWidgetStack__id] = sub_242FC87E0(v9);
  *&v3[OBJC_IVAR___CRSWidgetStack__widgets] = a2;
  v12.receiver = v3;
  v12.super_class = CRSWidgetStack;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v7 + 8))(a1, v6);
  return v10;
}

Swift::Void __swiftcall CRSWidgetStack.replacing(widgets:)(Swift::OpaquePointer widgets)
{
  type metadata accessor for CRSWidget(0);
  v2 = sub_242FCB31C();
  [v1 set:v2 widgets:?];
}

uint64_t sub_242FC6CA0@<X0>(void *a2@<X8>)
{
  v3 = v2;
  v5 = sub_242FCB2CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 widgets];
  type metadata accessor for CRSWidget(0);
  v10 = sub_242FCB32C();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_11:

LABEL_12:
    v16 = [v3 id];
    sub_242FCB2AC();

    v17 = objc_allocWithZone(CRSWidgetStack);
    v18 = sub_242FCB28C();
    v19 = sub_242FCB31C();

    v20 = [v17 initWithID:v18 widgets:v19];

    v21 = (*(v6 + 8))(v8, v5);
    result = type metadata accessor for CRSWidgetStack(v21);
    a2[3] = result;
    *a2 = v20;
    return result;
  }

  v11 = sub_242FCB43C();
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_3:
  v28 = MEMORY[0x277D84F90];
  result = sub_242FCB3FC();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v23 = v3;
    v24 = v8;
    v25 = v6;
    v26 = v5;
    v27 = a2;
    v13 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x245D28B90](v13, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      [v14 copy];
      sub_242FCB3BC();
      swift_unknownObjectRelease();

      swift_dynamicCast();
      sub_242FCB3DC();
      sub_242FCB40C();
      sub_242FCB41C();
      sub_242FCB3EC();
    }

    while (v11 != v13);

    v5 = v26;
    a2 = v27;
    v8 = v24;
    v6 = v25;
    v3 = v23;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_242FC6FE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_242FCB44C();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242FC703C(char a1)
{
  if (a1)
  {
    return 0x73746567646977;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_242FC7068(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73746567646977;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x73746567646977;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_242FCB47C();
  }

  return v8 & 1;
}

uint64_t sub_242FC7104()
{
  sub_242FCB48C();
  sub_242FCB2FC();

  return sub_242FCB4AC();
}

uint64_t sub_242FC717C(uint64_t a1)
{
  sub_242FCB2FC();
}

uint64_t sub_242FC71E0(uint64_t a1)
{
  sub_242FCB48C();
  sub_242FCB2FC();

  return sub_242FCB4AC();
}

uint64_t sub_242FC7254@<X0>(char *a2@<X8>)
{
  v3 = sub_242FCB44C();

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

void sub_242FC72B4(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x73746567646977;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

id CRSWidgetStack.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED5DB00, &qword_242FCCD68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v26 - v3;
  v26[0] = sub_242FCB1CC();
  v5 = *(v26[0] - 8);
  MEMORY[0x28223BE20](v26[0]);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED5DB40, &unk_242FCCFE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - v9;
  v11 = sub_242FCB2CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED5DBA0, &qword_242FCCF00);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_242FCCEF0;
  *(v15 + 32) = sub_242FC4244(0, &unk_27ED5DB50, 0x277CCAD78);
  v16 = a1;
  sub_242FCB37C();

  if (!v28)
  {
    sub_242FC3650(v27, &qword_27ED5D990, &qword_242FCCFF0);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_6;
  }

  v17 = swift_dynamicCast();
  (*(v12 + 56))(v10, v17 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_6:
    sub_242FC3650(v10, &unk_27ED5DB40, &unk_242FCCFE0);
    goto LABEL_7;
  }

  (*(v12 + 32))(v14, v10, v11);
  type metadata accessor for CRSWidget(0);
  if (sub_242FCB38C())
  {
    v18 = sub_242FCB28C();
    v19 = sub_242FCB31C();

    v20 = [v26[1] initWithID:v18 widgets:v19];

    (*(v12 + 8))(v14, v11);
    return v20;
  }

  (*(v12 + 8))(v14, v11);
LABEL_7:
  v22 = a1;
  sub_242FCB1BC();
  v23 = sub_242FCB23C();
  (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
  v24 = sub_242FCB1DC();
  sub_242FC3650(v4, &unk_27ED5DB00, &qword_242FCCD68);
  (*(v5 + 8))(v7, v26[0]);
  v25 = sub_242FCB1EC();

  [v22 failWithError_];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall CRSWidgetStack.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = sub_242FCB2CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 id];
  sub_242FCB2AC();

  v9 = sub_242FCB28C();
  (*(v5 + 8))(v7, v4);
  v10 = sub_242FCB2DC();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = [v2 widgets];
  if (!v11)
  {
    type metadata accessor for CRSWidget(0);
    sub_242FCB32C();
    v11 = sub_242FCB31C();
  }

  v12 = sub_242FCB2DC();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
}

uint64_t CRSWidgetStack.isEqual(_:)(uint64_t a1)
{
  v3 = sub_242FCB2CC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = sub_242FC35E0(a1, v22);
  if (!v23)
  {
    sub_242FC3650(v22, &qword_27ED5D990, &qword_242FCCFF0);
    goto LABEL_7;
  }

  type metadata accessor for CRSWidgetStack(v10);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v19 = 0;
    return v19 & 1;
  }

  v11 = v21[1];
  v12 = [v1 id];
  sub_242FCB2AC();

  v13 = [v11 id];
  sub_242FCB2AC();

  LOBYTE(v13) = sub_242FCB29C();
  v14 = *(v4 + 8);
  v14(v7, v3);
  v14(v9, v3);
  if ((v13 & 1) == 0)
  {

    goto LABEL_7;
  }

  v15 = [v1 widgets];
  type metadata accessor for CRSWidget(0);
  v16 = sub_242FCB32C();

  v17 = [v11 widgets];
  v18 = sub_242FCB32C();

  v19 = sub_242FC7C98(v16, v18);

  return v19 & 1;
}

uint64_t sub_242FC7C98(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for CRSWidget(0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x245D28B90](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x245D28B90](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_242FCB39C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_242FCB39C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_242FCB43C();
  }

  result = sub_242FCB43C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t CRSWidgetStack.hash.getter()
{
  v1 = v0;
  v2 = sub_242FCB2CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 id];
  sub_242FCB2AC();

  v7 = sub_242FCB2BC();
  (*(v3 + 8))(v5, v2);
  v8 = [v1 widgets];
  type metadata accessor for CRSWidget(0);
  sub_242FCB32C();

  sub_242FC8498(&qword_27ED5DB60, type metadata accessor for CRSWidget, MEMORY[0x277D85378]);
  v9 = sub_242FCB34C();

  return v9 ^ v7;
}

uint64_t CRSWidgetStack.description.getter()
{
  v1 = v0;
  v2 = sub_242FCB2CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 id];
  sub_242FCB2AC();

  sub_242FC8498(&qword_27ED5DB68, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v15[0] = sub_242FCB45C();
  v15[1] = v7;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x245D28AD0](10, 0xE100000000000000);
  v8 = [v1 widgets];
  v9 = type metadata accessor for CRSWidget(0);
  v10 = sub_242FCB32C();

  v11 = MEMORY[0x245D28B00](v10, v9);
  v13 = v12;

  MEMORY[0x245D28AD0](v11, v13);

  return v15[0];
}

uint64_t sub_242FC8498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id CRSWidgetStack.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_242FC85C8()
{
  result = qword_27ED5DB70;
  if (!qword_27ED5DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED5DB70);
  }

  return result;
}

uint64_t _s4KeysOwet_1(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4KeysOwst_1(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_242FC87E0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_242FCA790(a1);
  (*(*(*(v2 + 10) - 8) + 8))(a1);
  return v5;
}

id sub_242FC8858(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = sub_242FCA790(a1);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(a1);
  return v5;
}

id sub_242FC88E4()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_242FC8968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Box(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t CRSWidget.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CRSWidget__id);
  v4 = *((*MEMORY[0x277D85000] & *v3) + 0x58);
  v5 = sub_242FCB2CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, &v3[v4], v5);
}

id CRSWidget.init(id:chsWidget:suggestionSource:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_242FCB28C();
  v8 = [v6 initWithID:v7 chsWidget:a2 suggestionSource:a3];

  v9 = sub_242FCB2CC();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

char *CRSWidget.init(id:chsWidget:suggestionSource:)(char *a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v6 = sub_242FCB2CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v10(v9, a1, v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED5DB28, &unk_242FCCFD0);
  v12 = objc_allocWithZone(v11);
  v10(&v12[*((*MEMORY[0x277D85000] & *v12) + 0x58)], v9, v6);
  v20.receiver = v12;
  v20.super_class = v11;
  v13 = objc_msgSendSuper2(&v20, sel_init);
  v14 = *(v7 + 8);
  v14(v9, v6);
  *&v3[OBJC_IVAR___CRSWidget__id] = v13;
  *&v3[OBJC_IVAR___CRSWidget_chsWidget] = a2;
  *&v3[OBJC_IVAR___CRSWidget_suggestionSource] = v18;
  v19.receiver = v3;
  v19.super_class = CRSWidget;
  v15 = objc_msgSendSuper2(&v19, sel_init);
  v14(a1, v6);
  return v15;
}

uint64_t sub_242FC90C4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_242FCB2CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 id];
  sub_242FCB2AC();

  v9 = [v2 chsWidget];
  v10 = [v2 suggestionSource];
  v11 = objc_allocWithZone(CRSWidget);
  v12 = sub_242FCB28C();
  v13 = [v11 initWithID:v12 chsWidget:v9 suggestionSource:v10];

  v14 = (*(v5 + 8))(v7, v4);
  result = type metadata accessor for CRSWidget(v14);
  a1[3] = result;
  *a1 = v13;
  return result;
}

uint64_t sub_242FC929C(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x746567646977;
  }

  return 0xD000000000000010;
}

uint64_t sub_242FC92E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746567646977;
  v5 = 0x8000000242FCDF90;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000242FCDF90;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 25705;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 0x746567646977;
  if (*a2 == 1)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242FCB47C();
  }

  return v11 & 1;
}

uint64_t sub_242FC93D4()
{
  sub_242FCB48C();
  sub_242FCB2FC();

  return sub_242FCB4AC();
}

uint64_t sub_242FC946C(uint64_t a1)
{
  sub_242FCB2FC();
}

uint64_t sub_242FC94F0(uint64_t a1)
{
  sub_242FCB48C();
  sub_242FCB2FC();

  return sub_242FCB4AC();
}

unint64_t sub_242FC9584@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_242FCA89C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_242FC95B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x746567646977;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000242FCDF90;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id CRSWidget.init(coder:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED5DB00, &qword_242FCCD68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v36 = sub_242FCB1CC();
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED5DB40, &unk_242FCCFE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_242FCB2CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED5DBA0, &qword_242FCCF00);
  v14 = swift_allocObject();
  v34 = xmmword_242FCCEF0;
  *(v14 + 16) = xmmword_242FCCEF0;
  *(v14 + 32) = sub_242FC4244(0, &unk_27ED5DB50, 0x277CCAD78);
  v15 = a1;
  sub_242FCB37C();

  if (!v40)
  {
    sub_242FC3650(v39, &qword_27ED5D990, &qword_242FCCFF0);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_10;
  }

  v16 = swift_dynamicCast();
  (*(v12 + 56))(v10, v16 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_10:
    v26 = &unk_27ED5DB40;
    v27 = &unk_242FCCFE0;
    v28 = v10;
LABEL_11:
    sub_242FC3650(v28, v26, v27);
LABEL_12:
    sub_242FCB1BC();
    v29 = sub_242FCB23C();
    (*(*(v29 - 8) + 56))(v4, 1, 1, v29);
    v30 = sub_242FCB1DC();
    sub_242FC3650(v4, &unk_27ED5DB00, &qword_242FCCD68);
    (*(v5 + 8))(v7, v36);
    v31 = sub_242FCB1EC();

    [v15 failWithError_];
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v12 + 32))(v35, v10, v11);
  v17 = swift_allocObject();
  *(v17 + 16) = v34;
  *(v17 + 32) = sub_242FC4244(0, &qword_27ED5DBA8, 0x277CFA358);
  sub_242FCB37C();

  if (!v40)
  {
    (*(v12 + 8))(v35, v11);
    v26 = &qword_27ED5D990;
    v27 = &qword_242FCCFF0;
    v28 = v39;
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v12 + 8))(v35, v11);
    goto LABEL_12;
  }

  v18 = v38;
  v19 = sub_242FCB2DC();
  v20 = [a1 containsValueForKey_];

  if (v20)
  {
    v21 = sub_242FCB2DC();
    v22 = [v15 decodeIntegerForKey_];

    v23 = v35;
    v24 = sub_242FCB28C();
    if (v22 >= 2)
    {
      v25 = 2 * (v22 == 2);
    }

    else
    {
      v25 = v22;
    }
  }

  else
  {
    v23 = v35;
    v24 = sub_242FCB28C();
    v25 = 0;
  }

  v33 = [v37 initWithID:v24 chsWidget:v18 suggestionSource:v25];

  (*(v12 + 8))(v23, v11);
  return v33;
}

unint64_t CRSWidgetSuggestionSource.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 2 * (result == 2);
  }

  return result;
}

Swift::Void __swiftcall CRSWidget.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = sub_242FCB2CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 id];
  sub_242FCB2AC();

  v9 = sub_242FCB28C();
  (*(v5 + 8))(v7, v4);
  v10 = sub_242FCB2DC();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = [v2 chsWidget];
  v12 = sub_242FCB2DC();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = [v2 suggestionSource];
  v14 = sub_242FCB2DC();
  [(objc_class *)with.super.isa encodeInteger:v13 forKey:v14];
}

BOOL CRSWidget.isEqual(_:)(uint64_t a1)
{
  v3 = sub_242FCB2CC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  v10 = sub_242FC35E0(a1, v23);
  if (v24)
  {
    type metadata accessor for CRSWidget(v10);
    if (swift_dynamicCast())
    {
      v11 = v22[1];
      v12 = [v1 id];
      sub_242FCB2AC();

      v13 = [v11 id];
      sub_242FCB2AC();

      LOBYTE(v13) = sub_242FCB29C();
      v14 = *(v4 + 8);
      v14(v7, v3);
      v14(v9, v3);
      if (v13)
      {
        sub_242FC4244(0, &unk_27ED5DBB0, 0x277D82BB8);
        v15 = v1;
        v16 = [v1 chsWidget];
        v17 = [v11 chsWidget];
        v18 = sub_242FCB39C();

        if (v18)
        {
          v19 = [v15 suggestionSource];
          v20 = [v11 suggestionSource];

          return v19 == v20;
        }
      }
    }
  }

  else
  {
    sub_242FC3650(v23, &qword_27ED5D990, &qword_242FCCFF0);
  }

  return 0;
}

uint64_t CRSWidget.hash.getter()
{
  v1 = v0;
  v2 = sub_242FCB2CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 id];
  sub_242FCB2AC();

  v7 = sub_242FCB2BC();
  (*(v3 + 8))(v5, v2);
  v8 = [v1 chsWidget];
  v9 = sub_242FCB3AC();

  v10 = [v1 suggestionSource];
  sub_242FCB48C();
  MEMORY[0x245D28C60](v10);
  return v9 ^ sub_242FCB4AC() ^ v7;
}

uint64_t CRSWidget.description.getter()
{
  v1 = v0;
  v2 = sub_242FCB2CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0xE000000000000000;
  v6 = [v0 id];
  sub_242FCB2AC();

  sub_242FCABC0(&qword_27ED5DB68, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v7 = sub_242FCB45C();
  MEMORY[0x245D28AD0](v7);

  (*(v3 + 8))(v5, v2);
  MEMORY[0x245D28AD0](10, 0xE100000000000000);
  v8 = [v1 chsWidget];
  v9 = [v8 description];
  v10 = sub_242FCB2EC();
  v12 = v11;

  MEMORY[0x245D28AD0](v10, v12);

  MEMORY[0x245D28AD0](10, 0xE100000000000000);
  v14[1] = [v1 suggestionSource];
  type metadata accessor for CRSWidgetSuggestionSource();
  sub_242FCB42C();
  return v15;
}

void __swiftcall CRSWidget.init()(CRSWidget *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t *sub_242FCA690@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 1)
  {
    v2 = 2 * (*result == 2);
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_242FCA6C4()
{
  v1 = *v0;
  sub_242FCB48C();
  MEMORY[0x245D28C60](v1);
  return sub_242FCB4AC();
}

uint64_t sub_242FCA738(uint64_t a1)
{
  v2 = *v1;
  sub_242FCB48C();
  MEMORY[0x245D28C60](v2);
  return sub_242FCB4AC();
}

id sub_242FCA790(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  (*(*(v2 - 8) + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x58)], a1, v2);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for Box(0, v2, v3, v4);
  return objc_msgSendSuper2(&v6, sel_init);
}

unint64_t sub_242FCA89C(uint64_t a1, uint64_t a2)
{
  v2 = sub_242FCB44C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void type metadata accessor for CRSWidgetSuggestionSource()
{
  if (!qword_27ED5DBD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27ED5DBD0);
    }
  }
}

unint64_t sub_242FCA93C()
{
  result = qword_27ED5DBC0;
  if (!qword_27ED5DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED5DBC0);
  }

  return result;
}

uint64_t sub_242FCA994(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s4KeysOwet_2(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4KeysOwst_2(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_242FCABC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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