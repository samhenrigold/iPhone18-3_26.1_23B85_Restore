void sub_24350BDEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_24350C0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24350C258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24350CA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24350CCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_24350CF48()
{
  v0 = sub_243517B0C();
  __swift_allocate_value_buffer(v0, qword_27ED77C60);
  __swift_project_value_buffer(v0, qword_27ED77C60);
  result = AXCPSharedResourcesDirectory();
  if (result)
  {
    v2 = result;
    sub_243517C8C();
    sub_243517AAC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24350CFC4()
{
  v0 = sub_243517B0C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, static CLBAppIcons.legacyDirectory);
  __swift_project_value_buffer(v0, static CLBAppIcons.legacyDirectory);
  if (qword_27ED77C58 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27ED77C60);
  (*(v1 + 16))(v4, v5, v0);
  sub_243517ACC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24350D1A0()
{
  v0 = sub_243517B0C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, static CLBAppIcons.directory);
  __swift_project_value_buffer(v0, static CLBAppIcons.directory);
  if (qword_27ED77C58 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27ED77C60);
  (*(v1 + 16))(v4, v5, v0);
  sub_243517ACC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_24350D320(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_243517B0C();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_24350D398@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_243517B0C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t static CLBAppIcons.url(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = 0xEE006E6F69737265;
  v6 = 0x566E776F6E6B6E75;
  v7 = sub_243517B0C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24350E5AC(a1, a2);
  if (v11)
  {
    v12 = v11;
    v13 = [v11 bundleVersion];
    if (v13)
    {
      v14 = v13;
      v6 = sub_243517C7C();
      v5 = v15;
    }

    else
    {
      if (qword_27ED77C98 != -1)
      {
        swift_once();
      }

      v16 = sub_243517B5C();
      __swift_project_value_buffer(v16, static Logger.common);

      v17 = sub_243517B4C();
      v18 = sub_243517D2C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v25 = v18;
        v20 = v19;
        v21 = swift_slowAlloc();
        v26 = v17;
        v22 = v21;
        v28[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_24350E004(a1, a2, v28);
        _os_log_impl(&dword_24350A000, v26, v25, "Unable to get bundle version from application record for %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x245D38C30](v22, -1, -1);
        MEMORY[0x245D38C30](v20, -1, -1);
      }

      else
      {
      }
    }
  }

  if (qword_27ED77C80 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v7, static CLBAppIcons.directory);
  v28[0] = a1;
  v28[1] = a2;

  MEMORY[0x245D382B0](0x6E6F69737265762DLL, 0xE90000000000002DLL);
  MEMORY[0x245D382B0](v6, v5);

  sub_243517ADC();

  sub_243517AEC();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24350D84C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77CE0, &qword_2435189A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243518990;
  *(inited + 32) = sub_243517C7C();
  *(inited + 40) = v1;
  *(inited + 48) = sub_243517C7C();
  *(inited + 56) = v2;
  v3 = sub_243512488(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_27ED77C90 = v3;
  return result;
}

id static CLBAppIcons.shouldDownload(for:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_243517B0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ED77C88 != -1)
  {
    swift_once();
  }

  if (sub_24350DB2C(a1, a2, qword_27ED77C90))
  {
    return 0;
  }

  result = sub_24350E5AC(a1, a2);
  if (result)
  {
    v9 = result;
    v10 = [result URL];
    sub_243517AFC();

    v11 = objc_allocWithZone(MEMORY[0x277D1B188]);
    v12 = sub_243517ABC();
    v13 = [v11 initWithBundleURL_];

    (*(v5 + 8))(v7, v4);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [ObjCClassFromMetadata size];
    v16 = v15;
    v18 = v17;
    [ObjCClassFromMetadata scale];
    LODWORD(ObjCClassFromMetadata) = [v13 assetExistsForSize:v16 scale:{v18, v19}];

    return (ObjCClassFromMetadata ^ 1);
  }

  return result;
}

uint64_t sub_24350DB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_243517FCC();
  sub_243517CAC();
  v6 = sub_243517FEC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_243517F8C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_24350DC24(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_243517E5C();
  }

  else if (*(a2 + 16) && (sub_24350E798(0, &qword_27ED77CD8, 0x277D46F60), v5 = sub_243517DAC(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_243517DBC();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

CLBAppIcons __swiftcall CLBAppIcons.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_24350DEAC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id sub_24350DF28(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_243517C6C();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_243517A9C();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_24350E004(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24350E0D0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24350E828(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24350E0D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24350E1DC(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_243517ECC();
    a6 = v11;
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

void *sub_24350E1DC(uint64_t a1, unint64_t a2)
{
  v3 = sub_24350E228(a1, a2);
  sub_24350E358(&unk_28563DEE0);
  return v3;
}

void *sub_24350E228(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24350E444(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_243517ECC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_243517CCC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24350E444(v10, 0);
        result = sub_243517E9C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24350E358(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24350E4B8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24350E444(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77CE8, &unk_2435189B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24350E4B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77CE8, &unk_2435189B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

id sub_24350E5AC(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  return sub_24350DF28(a1, a2, 0);
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

uint64_t sub_24350E798(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_24350E828(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t Logger.common.unsafeMutableAddressor()
{
  if (qword_27ED77C98 != -1)
  {
    swift_once();
  }

  v0 = sub_243517B5C();

  return __swift_project_value_buffer(v0, static Logger.common);
}

uint64_t sub_24350E950()
{
  v0 = sub_243517B5C();
  __swift_allocate_value_buffer(v0, static Logger.common);
  __swift_project_value_buffer(v0, static Logger.common);
  v1 = [objc_opt_self() commonLog];
  return sub_243517B6C();
}

uint64_t static Logger.common.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ED77C98 != -1)
  {
    swift_once();
  }

  v2 = sub_243517B5C();
  v3 = __swift_project_value_buffer(v2, static Logger.common);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Void __swiftcall Logger.assertionFailureOrFault(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;

  oslog = sub_243517B4C();
  v3 = sub_243517D3C();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24350E004(countAndFlagsBits, object, &v7);
    _os_log_impl(&dword_24350A000, oslog, v3, "Assertion failure: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x245D38C30](v5, -1, -1);
    MEMORY[0x245D38C30](v4, -1, -1);
  }
}

uint64_t OpenApplicationVerifierRequest.verifierDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77CF0, &qword_243518A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v56 - v5;
  v7 = sub_243517B0C();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v56 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_243517EAC();
  MEMORY[0x245D382B0](0x646E756220707061, 0xEF203A646920656CLL);
  v9 = (*(a2 + 8))(a1, a2);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 7104878;
    v11 = 0xE300000000000000;
  }

  MEMORY[0x245D382B0](v9, v11);

  MEMORY[0x245D382B0](0x657473757274202CLL, 0xEB00000000203A64);
  v12 = (*(a2 + 32))(a1, a2);
  v13 = (v12 & 1) == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x245D382B0](v14, v15);

  MEMORY[0x245D382B0](0x72676B636162202CLL, 0xEE00203A646E756FLL);
  v16 = (*(a2 + 24))(a1, a2);
  v17 = (v16 & 1) == 0;
  if (v16)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v17)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x245D382B0](v18, v19);

  MEMORY[0x245D382B0](0x746E65696C63202CLL, 0xE900000000000020);
  v20 = *(a2 + 40);
  v21 = v20(a1, a2);
  v57 = v6;
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = (*(a2 + 48))(a1, a2);
    if (v25)
    {
      v26 = v25;
      v27 = a1;
      v60[0] = 0;
      v60[1] = 0xE000000000000000;
      sub_243517EAC();

      strcpy(v60, "bundle id: ");
      HIDWORD(v60[1]) = -352321536;
      MEMORY[0x245D382B0](v23, v24);

      MEMORY[0x245D382B0](0x7365636F7270202CLL, 0xEE00203A64692073);
      v28 = [v26 description];
      v29 = sub_243517C7C();
      v31 = v30;

      MEMORY[0x245D382B0](v29, v31);

      MEMORY[0x245D382B0](v60[0], v60[1]);

LABEL_22:

      v34 = v59;
      goto LABEL_27;
    }
  }

  v32 = v20(a1, a2);
  if (v33)
  {
    v27 = a1;
    strcpy(v60, "bundle id: ");
    HIDWORD(v60[1]) = -352321536;
    MEMORY[0x245D382B0](v32);

    MEMORY[0x245D382B0](v60[0], v60[1]);
    goto LABEL_22;
  }

  v27 = a1;
  v35 = (*(a2 + 48))(a1, a2);
  v36 = v59;
  if (v35)
  {
    strcpy(v60, "process id: ");
    BYTE5(v60[1]) = 0;
    HIWORD(v60[1]) = -5120;
    v37 = v35;
    v38 = [v35 description];
    v39 = sub_243517C7C();
    v41 = v40;

    MEMORY[0x245D382B0](v39, v41);

    MEMORY[0x245D382B0](v60[0], v60[1]);
  }

  else
  {
    MEMORY[0x245D382B0](0xD000000000000024, 0x80000002435194E0);
  }

  v34 = v36;
LABEL_27:
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_243517EAC();

  v60[0] = 0xD00000000000001CLL;
  v60[1] = 0x8000000243519510;
  v42 = (*(a2 + 56))(v27, a2);
  v43 = (v42 & 1) == 0;
  if (v42)
  {
    v44 = 1702195828;
  }

  else
  {
    v44 = 0x65736C6166;
  }

  if (v43)
  {
    v45 = 0xE500000000000000;
  }

  else
  {
    v45 = 0xE400000000000000;
  }

  MEMORY[0x245D382B0](v44, v45);

  MEMORY[0x245D382B0](v60[0], v60[1]);

  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_243517EAC();

  v60[0] = 0xD000000000000015;
  v60[1] = 0x8000000243519530;
  v46 = (*(a2 + 64))(v27, a2);
  v47 = (v46 & 1) == 0;
  if (v46)
  {
    v48 = 1702195828;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  if (v47)
  {
    v49 = 0xE500000000000000;
  }

  else
  {
    v49 = 0xE400000000000000;
  }

  MEMORY[0x245D382B0](v48, v49);

  MEMORY[0x245D382B0](v60[0], v60[1]);

  v50 = v57;
  (*(a2 + 16))(v27, a2);
  v51 = v58;
  if ((*(v58 + 48))(v50, 1, v34) == 1)
  {
    sub_24351318C(v50, &qword_27ED77CF0, &qword_243518A50);
  }

  else
  {
    v52 = v34;
    v53 = v56;
    (*(v51 + 32))(v56, v50, v52);
    strcpy(v60, ", url: ");
    v60[1] = 0xE700000000000000;
    sub_24350F304();
    v54 = sub_243517F7C();
    MEMORY[0x245D382B0](v54);

    MEMORY[0x245D382B0](v60[0], v60[1]);

    (*(v51 + 8))(v53, v52);
  }

  return v61;
}

unint64_t sub_24350F304()
{
  result = qword_27ED77CF8;
  if (!qword_27ED77CF8)
  {
    sub_243517B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED77CF8);
  }

  return result;
}

uint64_t OpenApplicationVerifierResult.ErrorCode.hashValue.getter(unsigned __int8 a1)
{
  sub_243517FCC();
  MEMORY[0x245D385D0](a1);
  return sub_243517FEC();
}

uint64_t sub_24350F3F0()
{
  v1 = *v0;
  sub_243517FCC();
  MEMORY[0x245D385D0](v1);
  return sub_243517FEC();
}

uint64_t sub_24350F464(uint64_t a1)
{
  v2 = *v1;
  sub_243517FCC();
  MEMORY[0x245D385D0](v2);
  return sub_243517FEC();
}

uint64_t OpenApplicationVerifierResult.Error.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t OpenApplicationVerifierResult.error.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OpenApplicationVerifierResult.error.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t OpenApplicationVerifierResult.pptTestURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OpenApplicationVerifierResult(0) + 20);

  return sub_24350F694(v3, a1);
}

uint64_t type metadata accessor for OpenApplicationVerifierResult(uint64_t a1)
{
  result = qword_27ED77D08;
  if (!qword_27ED77D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24350F694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77CF0, &qword_243518A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OpenApplicationVerifierResult.pptTestURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for OpenApplicationVerifierResult(0) + 20);

  return sub_24350F748(a1, v3);
}

uint64_t sub_24350F748(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77CF0, &qword_243518A50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *OpenApplicationVerifier.__allocating_init(userSelectedApplicationBundleIdentifiers:isPPTURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = sub_243512488(a1);

  v6[2] = v7;
  v6[3] = a2;
  v6[4] = a3;
  return v6;
}

void *OpenApplicationVerifier.init(userSelectedApplicationBundleIdentifiers:isPPTURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243512488(a1);

  v3[2] = v6;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

Swift::Bool __swiftcall OpenApplicationVerifier.shouldOpenApp(bundleIdentifier:)(Swift::String bundleIdentifier)
{
  object = bundleIdentifier._object;
  countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
  if (qword_27ED77CA0 != -1)
  {
    swift_once();
  }

  if (sub_24350DB2C(countAndFlagsBits, object, qword_27ED78168) & 1) != 0 || (sub_243517CDC())
  {
    return 1;
  }

  v5 = *(v1 + 16);

  return sub_24350DB2C(countAndFlagsBits, object, v5);
}

uint64_t OpenApplicationVerifier.verifyRequest(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_243517B0C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77CF0, &qword_243518A50);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_243517D0C();
  v3[12] = sub_243517CFC();
  v6 = sub_243517CEC();

  return MEMORY[0x2822009F8](sub_24350FAC8, v6, v5);
}

uint64_t sub_24350FAC8()
{
  v1 = v0[5];

  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v79 = *(v3 + 8);
  v4 = v79(v2, v3);
  v6 = v5;
  v7 = v1[3];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v7);
  v9 = (*(v8 + 40))(v7, v8);
  if (!v6)
  {
    if (!v10)
    {
      goto LABEL_12;
    }

LABEL_10:

    goto LABEL_14;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  if (v4 == v9 && v6 == v10)
  {
  }

  else
  {
    v12 = sub_243517F8C();

    if ((v12 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_12:
  v13 = v1[3];
  v14 = v1[4];
  __swift_project_boxed_opaque_existential_1(v0[5], v13);
  if ((*(v14 + 64))(v13, v14))
  {
    v15 = v1[3];
    v16 = v1[4];
    __swift_project_boxed_opaque_existential_1(v0[5], v15);
    if (((*(v16 + 24))(v15, v16) & 1) == 0)
    {
      v42 = v0[7];
      v41 = v0[8];
      v43 = v0[4];
      v44 = type metadata accessor for OpenApplicationVerifierResult(0);
      (*(v41 + 56))(&v43[*(v44 + 20)], 1, 1, v42);
      *v43 = 0;
      *(v43 + 1) = 0;
      *(v43 + 2) = 0;
      goto LABEL_53;
    }
  }

LABEL_14:
  v17 = v0[5];
  v78 = *(v0[8] + 56);
  v78(v0[11], 1, 1, v0[7]);
  v18 = v1[3];
  v19 = v1[4];
  __swift_project_boxed_opaque_existential_1(v17, v18);
  if (((*(v19 + 32))(v18, v19) & 1) == 0)
  {
    v35 = xmmword_2435189C0;
    v36 = "Untrusted open application requests are not allowed in Assistive Access.";
LABEL_51:
    v65 = (v36 - 32) | 0x8000000000000000;
    goto LABEL_52;
  }

  v20 = v79(v2, v3);
  if (!v21)
  {
    goto LABEL_19;
  }

  if (qword_27ED77CB0 != -1)
  {
    v73 = v20;
    v74 = v3;
    v75 = v21;
    swift_once();
    v20 = v73;
    v21 = v75;
    v3 = v74;
  }

  v22 = qword_27ED78178;
  v0[2] = v20;
  v0[3] = v21;
  v23 = swift_task_alloc();
  *(v23 + 16) = v0 + 2;
  LOBYTE(v22) = sub_2435123DC(sub_243512B68, v23, v22);

  if ((v22 & 1) == 0)
  {
LABEL_19:
    v77 = v3;
    v24 = v0[5];
    v25 = v1[3];
    v26 = v1[4];
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v76 = (*(v26 + 48))(v25, v26);
    v27 = v1[3];
    v28 = v1[4];
    __swift_project_boxed_opaque_existential_1(v24, v27);
    v29 = (*(v28 + 40))(v27, v28);
    v31 = v30;
    v32 = v1[3];
    v33 = v1[4];
    __swift_project_boxed_opaque_existential_1(v24, v32);
    v34 = (*(v33 + 56))(v32, v33);
    if (v31)
    {
      if (qword_27ED77CC0 != -1)
      {
        swift_once();
      }

      if (sub_24350DB2C(v29, v31, qword_27ED78188))
      {

        v3 = v77;
        goto LABEL_33;
      }
    }

    if (v76)
    {
      v37 = qword_27ED77CB8;
      v38 = v76;
      if (v37 != -1)
      {
        swift_once();
      }

      v39 = sub_24350DC24(v38, qword_27ED78180);

      v40 = v39 | v34;
      v3 = v77;
      if (v40)
      {
        goto LABEL_33;
      }
    }

    else
    {

      v3 = v77;
      if (v34)
      {
        goto LABEL_33;
      }
    }

    v45 = v79(v2, v3);
    v47 = sub_243512714(v45, v46);

    if ((v47 & 1) == 0)
    {
      v35 = xmmword_2435189D0;
      v36 = "Not allowing open application request from unallowed client process.";
      goto LABEL_51;
    }
  }

LABEL_33:
  v48 = v79(v2, v3);
  if (v49)
  {
    v50 = v48;
    v51 = v49;
    v52 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v52 = v48 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      if (qword_27ED77CA0 != -1)
      {
        swift_once();
      }

      if ((sub_24350DB2C(v50, v51, qword_27ED78168) & 1) == 0 && (sub_243517CDC() & 1) == 0)
      {
        v71 = sub_24350DB2C(v50, v51, *(v0[6] + 16));

        v65 = 0x8000000243519620;
        if (v71)
        {
          v65 = 0;
          v72 = -1;
        }

        else
        {
          v72 = 0;
        }

        v35 = vbicq_s8(xmmword_2435189E0, vdupq_n_s64(v72));
        goto LABEL_52;
      }

      goto LABEL_47;
    }
  }

  v53 = v0[10];
  v54 = v0[7];
  v55 = v0[8];
  v57 = v1[3];
  v56 = v1[4];
  __swift_project_boxed_opaque_existential_1(v0[5], v57);
  (*(v56 + 16))(v57, v56);
  if ((*(v55 + 48))(v53, 1, v54) == 1)
  {
    sub_24351318C(v0[10], &qword_27ED77CF0, &qword_243518A50);
LABEL_49:
    v35 = xmmword_2435189F0;
    v36 = "System app URL requests only supported for PPT.";
    goto LABEL_51;
  }

  v58 = v0[9];
  v59 = v0[6];
  v60 = *(v0[8] + 32);
  v60(v58, v0[10], v0[7]);
  v61 = (*(v59 + 24))(v58);
  v62 = v0[7];
  if ((v61 & 1) == 0)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    goto LABEL_49;
  }

  v63 = v0[11];
  v64 = v0[9];
  sub_24351318C(v63, &qword_27ED77CF0, &qword_243518A50);
  v60(v63, v64, v62);
  v78(v63, 0, 1, v62);
LABEL_47:
  v65 = 0;
  v35 = 0uLL;
LABEL_52:
  v66 = v0[11];
  v67 = v0[4];
  *v67 = v35;
  v67[1].i64[0] = v65;
  v68 = type metadata accessor for OpenApplicationVerifierResult(0);
  sub_243512564(v66, v67->i64 + *(v68 + 20));
LABEL_53:

  v69 = v0[1];

  return v69();
}

uint64_t OpenApplicationVerifier.shouldOpenWebsiteInlineForRequest(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  v7 = sub_243517C7C();
  if (!v6)
  {
    goto LABEL_22;
  }

  if (v4 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_243517F8C();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 40))(v11, v12);
  if (!v14)
  {
    return 0;
  }

  v15 = v13;
  v16 = v14;
  if (v13 == sub_243517C7C() && v16 == v17)
  {

LABEL_22:

    return 0;
  }

  v19 = sub_243517F8C();

  if (v19)
  {
    goto LABEL_22;
  }

  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  if (((*(v21 + 64))(v20, v21) & 1) == 0)
  {
    goto LABEL_22;
  }

  if (qword_27ED77C98 != -1)
  {
    swift_once();
  }

  v22 = sub_243517B5C();
  __swift_project_value_buffer(v22, static Logger.common);

  v23 = sub_243517B4C();
  v24 = sub_243517D4C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v25 = 136315138;
    v27 = sub_24350E004(v15, v16, &v29);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_24350A000, v23, v24, "Should open website inline for %s.", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x245D38C30](v26, -1, -1);
    MEMORY[0x245D38C30](v25, -1, -1);
  }

  else
  {
  }

  return 1;
}

id sub_24351054C(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = sub_243517C6C();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_243517A9C();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_243510634()
{
  result = sub_243510654();
  qword_27ED78168 = result;
  return result;
}

uint64_t sub_243510654()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77CE0, &qword_2435189A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243518A00;
  *(inited + 32) = sub_243517C7C();
  *(inited + 40) = v1;
  *(inited + 48) = sub_243517C7C();
  *(inited + 56) = v2;
  *(inited + 64) = sub_243517C7C();
  *(inited + 72) = v3;
  if (qword_27ED77CA8 != -1)
  {
    swift_once();
  }

  sub_243510744(v4);
  v5 = sub_243512488(inited);

  return v5;
}

uint64_t sub_243510744(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_243510E64(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_243510838()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77CE0, &qword_2435189A8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_243518A10;
  *(v0 + 32) = sub_243517C7C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_243517C7C();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_243517C7C();
  *(v0 + 72) = v3;
  result = sub_243517C7C();
  *(v0 + 80) = result;
  *(v0 + 88) = v5;
  qword_27ED78170 = v0;
  return result;
}

uint64_t sub_2435108DC()
{
  if (qword_27ED77CA8 != -1)
  {
    swift_once();
  }

  v0 = qword_27ED78170;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77CE0, &qword_2435189A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243518A20;
  *(inited + 32) = sub_243517C7C();
  *(inited + 40) = v2;

  result = sub_243510744(inited);
  qword_27ED78178 = v0;
  return result;
}

uint64_t sub_2435109A4()
{
  sub_243517C7C();
  sub_243517C7C();
  sub_243517C7C();
  sub_243517C7C();
  v11 = MEMORY[0x277D84F90];
  sub_243517EFC();
  v0 = objc_opt_self();

  v1 = sub_243517C6C();

  v2 = [v0 identityForDaemonJobLabel_];

  sub_243517EDC();
  sub_243517F0C();
  sub_243517F1C();
  sub_243517EEC();

  v3 = sub_243517C6C();

  v4 = [v0 identityForDaemonJobLabel_];

  sub_243517EDC();
  sub_243517F0C();
  sub_243517F1C();
  sub_243517EEC();

  v5 = sub_243517C6C();

  v6 = [v0 identityForDaemonJobLabel_];

  sub_243517EDC();
  sub_243517F0C();
  sub_243517F1C();
  sub_243517EEC();

  v7 = sub_243517C6C();

  v8 = [v0 identityForDaemonJobLabel_];

  sub_243517EDC();
  sub_243517F0C();
  sub_243517F1C();
  sub_243517EEC();
  swift_arrayDestroy();
  v9 = sub_2435125D4(v11);

  qword_27ED78180 = v9;
  return result;
}

uint64_t sub_243510C90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77CE0, &qword_2435189A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243518A30;
  *(inited + 32) = sub_243517C7C();
  *(inited + 40) = v1;
  *(inited + 48) = sub_243517C7C();
  *(inited + 56) = v2;
  *(inited + 64) = sub_243517C7C();
  *(inited + 72) = v3;
  *(inited + 80) = sub_243517C7C();
  *(inited + 88) = v4;
  *(inited + 96) = sub_243517C7C();
  *(inited + 104) = v5;
  *(inited + 112) = sub_243517C7C();
  *(inited + 120) = v6;
  *(inited + 128) = sub_243517C7C();
  *(inited + 136) = v7;
  *(inited + 144) = sub_243517C7C();
  *(inited + 152) = v8;
  *(inited + 160) = sub_243517C7C();
  *(inited + 168) = v9;
  *(inited + 176) = sub_243517C7C();
  *(inited + 184) = v10;
  *(inited + 192) = sub_243517C7C();
  *(inited + 200) = v11;
  v12 = sub_243512488(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_27ED78188 = v12;
  return result;
}

uint64_t OpenApplicationVerifier.deinit()
{

  return v0;
}

uint64_t OpenApplicationVerifier.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_243510E64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77CE0, &qword_2435189A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_243510F70(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_243517FCC();
  sub_243517CAC();
  v8 = sub_243517FEC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_243517F8C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2435119F4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2435110C0(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_243517E3C();

    if (v9)
    {

      sub_24350E798(0, &qword_27ED77CD8, 0x277D46F60);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_243517E2C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2435112F8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_243511748(v20 + 1);
    }

    v18 = v8;
    sub_243511970(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_24350E798(0, &qword_27ED77CD8, 0x277D46F60);
  v11 = sub_243517DAC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_243511B74(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_243517DBC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_2435112F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D30, &qword_243518B90);
    v2 = sub_243517E8C();
    v15 = v2;
    sub_243517E1C();
    if (sub_243517E4C())
    {
      sub_24350E798(0, &qword_27ED77CD8, 0x277D46F60);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_243511748(v9 + 1);
        }

        v2 = v15;
        result = sub_243517DAC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_243517E4C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2435114E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D58, &qword_243518BA8);
  result = sub_243517E7C();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_243517FCC();
      sub_243517CAC();
      result = sub_243517FEC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_243511748(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D30, &qword_243518B90);
  result = sub_243517E7C();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_243517DAC();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_243511970(uint64_t a1, uint64_t a2)
{
  sub_243517DAC();
  result = sub_243517E0C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2435119F4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2435114E8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_243511CE4();
      goto LABEL_16;
    }

    sub_243511F90(v8 + 1);
  }

  v10 = *v4;
  sub_243517FCC();
  sub_243517CAC();
  result = sub_243517FEC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_243517F8C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_243517F9C();
  __break(1u);
  return result;
}

void sub_243511B74(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_243511748(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_243511E40();
      goto LABEL_12;
    }

    sub_2435121C8(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_243517DAC();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_24350E798(0, &qword_27ED77CD8, 0x277D46F60);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_243517DBC();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_243517F9C();
  __break(1u);
}

void *sub_243511CE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D58, &qword_243518BA8);
  v2 = *v0;
  v3 = sub_243517E6C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

id sub_243511E40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D30, &qword_243518B90);
  v2 = *v0;
  v3 = sub_243517E6C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_243511F90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D58, &qword_243518BA8);
  result = sub_243517E7C();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_243517FCC();

      sub_243517CAC();
      result = sub_243517FEC();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2435121C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D30, &qword_243518B90);
  result = sub_243517E7C();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_243517DAC();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2435123DC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_243512488(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x245D38310](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_243510F70(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_243512564(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77CF0, &qword_243518A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2435125D4(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_243517E2C())
  {
    v4 = sub_24350E798(0, &qword_27ED77CD8, 0x277D46F60);
    v5 = sub_243513124();
    result = MEMORY[0x245D38310](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x245D384B0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_2435110C0(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_243517E2C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_243512714(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = _AXSAutomationEnabled();
  if (!result)
  {
    return result;
  }

  sub_24350E798(0, &qword_27ED77D38, 0x277CC1E90);

  v5 = sub_24351054C(a1, a2, 0);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 entitlements];
    v8 = sub_243517C6C();
    sub_24350E798(0, &qword_27ED77D48, 0x277CCAE60);
    v9 = [v7 objectForKey:v8 ofClass:swift_getObjCClassFromMetadata()];

    if (v9)
    {
      sub_243517DDC();
      swift_unknownObjectRelease();
    }

    else
    {

      v16 = 0u;
      v17 = 0u;
    }

    v18[0] = v16;
    v18[1] = v17;
    if (*(&v17 + 1))
    {
      if (swift_dynamicCast())
      {
        return v15;
      }
    }

    else
    {
      sub_24351318C(v18, &qword_27ED77D50, &qword_243518BA0);
    }
  }

  else
  {
    if (qword_27ED77C98 != -1)
    {
      swift_once();
    }

    v10 = sub_243517B5C();
    __swift_project_value_buffer(v10, static Logger.common);

    v11 = sub_243517B4C();
    v12 = sub_243517D2C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v18[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_24350E004(a1, a2, v18);
      _os_log_impl(&dword_24350A000, v11, v12, "LSBundleRecord for %s is nil", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x245D38C30](v14, -1, -1);
      MEMORY[0x245D38C30](v13, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_243512B68(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_243517F8C() & 1;
  }
}

unint64_t sub_243512BC4()
{
  result = qword_27ED77D00;
  if (!qword_27ED77D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED77D00);
  }

  return result;
}

uint64_t sub_243512C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77CF0, &qword_243518A50);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_243512D08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77CF0, &qword_243518A50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243512DB8(uint64_t a1)
{
  sub_243512E3C();
  if (v1 <= 0x3F)
  {
    sub_243512E8C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_243512E3C()
{
  if (!qword_27ED77D18)
  {
    v0 = sub_243517DCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED77D18);
    }
  }
}

void sub_243512E8C(uint64_t a1)
{
  if (!qword_27ED77D20)
  {
    sub_243517B0C();
    v1 = sub_243517DCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED77D20);
    }
  }
}

uint64_t getEnumTagSinglePayload for OpenApplicationVerifierResult.ErrorCode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OpenApplicationVerifierResult.ErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_243513068(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2435130B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243513124()
{
  result = qword_27ED77D28;
  if (!qword_27ED77D28)
  {
    sub_24350E798(255, &qword_27ED77CD8, 0x277D46F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED77D28);
  }

  return result;
}

uint64_t sub_24351318C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t ApplicationSceneClientSettings.navigationTitles.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243517BCC();

  return v1;
}

uint64_t sub_2435132B8@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243517BCC();

  *a2 = v4;
  return result;
}

uint64_t sub_24351333C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243517BDC();
}

uint64_t ApplicationSceneClientSettings.navigationTitles.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243517BDC();
}

uint64_t (*ApplicationSceneClientSettings.navigationTitles.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243517BBC();
  return sub_243515C40;
}

uint64_t ApplicationSceneClientSettings.$navigationTitles.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D80, &qword_243518C18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D78, &qword_243518C10);
  sub_243517BAC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ApplicationSceneClientSettings.$navigationTitles.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D80, &qword_243518C18);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC22ClarityBoardFoundation30ApplicationSceneClientSettings__navigationTitles;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D78, &qword_243518C10);
  sub_243517B9C();
  swift_endAccess();
  return sub_243515C44;
}

uint64_t ApplicationSceneClientSettings.chromeVisible.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243517BCC();

  return v1;
}

uint64_t sub_243513838@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243517BCC();

  *a2 = v4;
  return result;
}

uint64_t sub_2435138BC(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243517BDC();
}

uint64_t ApplicationSceneClientSettings.chromeVisible.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243517BDC();
}

uint64_t (*ApplicationSceneClientSettings.chromeVisible.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243517BBC();
  return sub_243513A48;
}

uint64_t ApplicationSceneClientSettings.$chromeVisible.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D98, &qword_243518C70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D90, &qword_243518C68);
  sub_243517BAC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ApplicationSceneClientSettings.$chromeVisible.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D98, &qword_243518C70);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC22ClarityBoardFoundation30ApplicationSceneClientSettings__chromeVisible;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D90, &qword_243518C68);
  sub_243517B9C();
  swift_endAccess();
  return sub_243513D10;
}

uint64_t ApplicationSceneClientSettings.bottomBarTransitionProgress.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243517BCC();

  return v1;
}

uint64_t sub_243513DE4@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243517BCC();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_243513E70(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243517BDC();
}

uint64_t ApplicationSceneClientSettings.bottomBarTransitionProgress.setter(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243517BDC();
}

uint64_t (*ApplicationSceneClientSettings.bottomBarTransitionProgress.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243517BBC();
  return sub_243515C40;
}

void sub_243514020(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_2435140A4(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_243517B9C();
  return swift_endAccess();
}

uint64_t ApplicationSceneClientSettings.$bottomBarTransitionProgress.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77DB8, &qword_243518CD0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77DB0, &qword_243518CC8);
  sub_243517BAC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ApplicationSceneClientSettings.$bottomBarTransitionProgress.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77DB8, &qword_243518CD0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC22ClarityBoardFoundation30ApplicationSceneClientSettings__bottomBarTransitionProgress;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77DB0, &qword_243518CC8);
  sub_243517B9C();
  swift_endAccess();
  return sub_243515C44;
}

void sub_2435143C4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_243517BAC();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_243517BAC();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_24351452C(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77DB0, &qword_243518CC8);
  v3 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D90, &qword_243518C68);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D78, &qword_243518C10);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC22ClarityBoardFoundation30ApplicationSceneClientSettings__navigationTitles;
  v24 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D68, &qword_243518BC0);
  sub_243517B8C();
  (*(v11 + 32))(v2 + v14, v13, v10);
  v15 = OBJC_IVAR____TtC22ClarityBoardFoundation30ApplicationSceneClientSettings__chromeVisible;
  LOBYTE(v24) = 1;
  sub_243517B8C();
  (*(v7 + 32))(v2 + v15, v9, v6);
  v16 = OBJC_IVAR____TtC22ClarityBoardFoundation30ApplicationSceneClientSettings__bottomBarTransitionProgress;
  v24 = 0;
  v25 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77DA0, &qword_243518C78);
  sub_243517B8C();
  (*(v3 + 32))(v2 + v16, v5, v21);
  v17 = (v2 + OBJC_IVAR____TtC22ClarityBoardFoundation30ApplicationSceneClientSettings_sceneID);
  v18 = v23;
  *v17 = v22;
  v17[1] = v18;
  return v2;
}

void *sub_2435147F0()
{
  result = sub_243515B3C(MEMORY[0x277D84F90]);
  off_27ED77D60 = result;
  return result;
}

uint64_t static ApplicationSceneClientSettings.settingsForSceneID(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_27ED77CC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_27ED77D60;
  if (*(off_27ED77D60 + 2) && (v5 = sub_243515040(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for ApplicationSceneClientSettings(0);
    swift_allocObject();

    v7 = sub_24351452C(a1, a2);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = off_27ED77D60;
    off_27ED77D60 = 0x8000000000000000;
    sub_243515614(v7, a1, a2, isUniquelyReferenced_nonNull_native);

    off_27ED77D60 = v10;
    swift_endAccess();
  }

  return v7;
}

uint64_t static ApplicationSceneClientSettings.removeSettingsForSceneID(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_27ED77CC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v4 = sub_243515040(a1, a2);
  v6 = v5;

  if (v6)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = off_27ED77D60;
    v10 = off_27ED77D60;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_243515790();
      v8 = v10;
    }

    sub_243515464(v4, v8);
    off_27ED77D60 = v8;
  }

  return swift_endAccess();
}

uint64_t ApplicationSceneClientSettings.deinit()
{
  v1 = OBJC_IVAR____TtC22ClarityBoardFoundation30ApplicationSceneClientSettings__navigationTitles;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D78, &qword_243518C10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22ClarityBoardFoundation30ApplicationSceneClientSettings__chromeVisible;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D90, &qword_243518C68);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC22ClarityBoardFoundation30ApplicationSceneClientSettings__bottomBarTransitionProgress;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77DB0, &qword_243518CC8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t ApplicationSceneClientSettings.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22ClarityBoardFoundation30ApplicationSceneClientSettings__navigationTitles;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D78, &qword_243518C10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22ClarityBoardFoundation30ApplicationSceneClientSettings__chromeVisible;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D90, &qword_243518C68);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC22ClarityBoardFoundation30ApplicationSceneClientSettings__bottomBarTransitionProgress;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77DB0, &qword_243518CC8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_243514CF4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ApplicationSceneClientSettings(0);
  result = sub_243517B7C();
  *a2 = result;
  return result;
}

uint64_t ApplicationSceneClientSettings.description.getter()
{
  v1 = *v0;
  sub_243517EAC();
  v11 = v1;
  swift_getMetatypeMetadata();
  v2 = sub_243517C9C();
  MEMORY[0x245D382B0](v2);

  MEMORY[0x245D382B0](0x20656E656373203ALL, 0xEB00000000204449);
  v3 = *(v0 + OBJC_IVAR____TtC22ClarityBoardFoundation30ApplicationSceneClientSettings_sceneID);
  v4 = *(v0 + OBJC_IVAR____TtC22ClarityBoardFoundation30ApplicationSceneClientSettings_sceneID + 8);

  MEMORY[0x245D382B0](v3, v4);

  MEMORY[0x245D382B0](0xD00000000000001BLL, 0x8000000243519720);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243517BCC();

  v5 = *(v11 + 16);

  v6 = sub_243517F7C();
  MEMORY[0x245D382B0](v6);

  MEMORY[0x245D382B0](0xD000000000000012, 0x8000000243519740);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243517BCC();

  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v5)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x245D382B0](v7, v8);

  MEMORY[0x245D382B0](0xD000000000000022, 0x8000000243519760);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243517BCC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77DA0, &qword_243518C78);
  v9 = sub_243517C9C();
  MEMORY[0x245D382B0](v9);

  return 0;
}

unint64_t sub_243515040(uint64_t a1, uint64_t a2)
{
  sub_243517FCC();
  sub_243517CAC();
  v4 = sub_243517FEC();

  return sub_243515104(a1, a2, v4);
}

uint64_t type metadata accessor for ApplicationSceneClientSettings(uint64_t a1)
{
  result = qword_27ED77DC8;
  if (!qword_27ED77DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_243515104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_243517F8C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2435151BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77DF0, &qword_243518D78);
  v34 = v4;
  result = sub_243517F5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_243517FCC();
      sub_243517CAC();
      result = sub_243517FEC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_243515464(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_243517DFC() + 1) & ~v5;
    do
    {
      sub_243517FCC();

      sub_243517CAC();
      v9 = sub_243517FEC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_243515614(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_243515040(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2435151BC(v16, a4 & 1);
      v11 = sub_243515040(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_243517FAC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_243515790();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_243515790()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77DF0, &qword_243518D78);
  v2 = *v0;
  v3 = sub_243517F4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_243515914(uint64_t a1)
{
  sub_243515AE8(319, &qword_27ED77DD8, &qword_27ED77D68, &qword_243518BC0);
  if (v1 <= 0x3F)
  {
    sub_243515A98();
    if (v2 <= 0x3F)
    {
      sub_243515AE8(319, &qword_27ED77DE8, &qword_27ED77DA0, &qword_243518C78);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_243515A98()
{
  if (!qword_27ED77DE0)
  {
    v0 = sub_243517BEC();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED77DE0);
    }
  }
}

void sub_243515AE8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_243517BEC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_243515B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77DF0, &qword_243518D78);
    v3 = sub_243517F6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_243515040(v5, v6);
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

uint64_t LockState.isLocked.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243517BCC();

  return v1;
}

uint64_t sub_243515CEC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243517BCC();

  *a2 = v4;
  return result;
}

uint64_t sub_243515D70(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243517BDC();
}

uint64_t LockState.isLocked.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243517BDC();
}

void (*LockState.isLocked.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_243517BBC();
  return sub_243514020;
}

uint64_t LockState.$isLocked.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D90, &qword_243518C68);
  sub_243517B9C();
  return swift_endAccess();
}

uint64_t LockState.$isLocked.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D98, &qword_243518C70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D90, &qword_243518C68);
  sub_243517BAC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*LockState.$isLocked.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D98, &qword_243518C70);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC22ClarityBoardFoundation9LockState__isLocked;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D90, &qword_243518C68);
  sub_243517B9C();
  swift_endAccess();
  return sub_2435143C4;
}

uint64_t LockState.__allocating_init(mobileKeybagManager:)(void *a1)
{
  v2 = swift_allocObject();
  LockState.init(mobileKeybagManager:)(a1);
  return v2;
}

uint64_t LockState.init(mobileKeybagManager:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77E00, &qword_243518DD8);
  MEMORY[0x28223BE20](v3 - 8);
  v21 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D90, &qword_243518C68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC22ClarityBoardFoundation9LockState_lockStateChangedBlockIdentifier;
  v10 = sub_243517B3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v20 = v11 + 56;
  v12(v1 + v9, 1, 1, v10);
  v13 = OBJC_IVAR____TtC22ClarityBoardFoundation9LockState__isLocked;
  LOBYTE(aBlock[0]) = 1;
  sub_243517B8C();
  (*(v6 + 32))(v1 + v13, v8, v5);
  *(v1 + 16) = a1;
  swift_unknownObjectRetain();
  sub_243516CCC();
  v14 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_243516EE8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243516800;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  v16 = [a1 registerLockStateChangedBlock_];
  _Block_release(v15);
  v17 = v21;
  sub_243517B2C();
  swift_unknownObjectRelease();

  v12(v17, 0, 1, v10);
  v18 = OBJC_IVAR____TtC22ClarityBoardFoundation9LockState_lockStateChangedBlockIdentifier;
  swift_beginAccess();
  sub_243516F08(v17, v1 + v18);
  swift_endAccess();
  return v1;
}

uint64_t sub_243516538(uint64_t a1)
{
  v2 = sub_243517C0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243517C2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243517834();
  v10 = sub_243517D6C();
  aBlock[4] = sub_24351793C;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243516800;
  aBlock[3] = &block_descriptor_12;
  v11 = _Block_copy(aBlock);

  sub_243517C1C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243517880();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77E30, &qword_243518E68);
  sub_2435178D8();
  sub_243517DEC();
  MEMORY[0x245D38370](0, v9, v5, v11);
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2435167A8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_243516CCC();
  }

  return result;
}

uint64_t sub_243516800(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t LockState.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77E00, &qword_243518DD8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_243517B3C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC22ClarityBoardFoundation9LockState_lockStateChangedBlockIdentifier;
  swift_beginAccess();
  sub_243516F78(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_243516FE8(v4);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = *(v1 + 16);
    swift_unknownObjectRetain();
    v11 = sub_243517B1C();
    [v10 unregisterLockStateChangedBlockWithIdentifier_];
    swift_unknownObjectRelease();

    (*(v6 + 8))(v8, v5);
  }

  swift_unknownObjectRelease();
  sub_243516FE8(v1 + v9);
  v12 = OBJC_IVAR____TtC22ClarityBoardFoundation9LockState__isLocked;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D90, &qword_243518C68);
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  return v1;
}

uint64_t LockState.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77E00, &qword_243518DD8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_243517B3C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC22ClarityBoardFoundation9LockState_lockStateChangedBlockIdentifier;
  swift_beginAccess();
  sub_243516F78(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_243516FE8(v4);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = *(v1 + 16);
    swift_unknownObjectRetain();
    v11 = sub_243517B1C();
    [v10 unregisterLockStateChangedBlockWithIdentifier_];
    swift_unknownObjectRelease();

    (*(v6 + 8))(v8, v5);
  }

  swift_unknownObjectRelease();
  sub_243516FE8(v1 + v9);
  v12 = OBJC_IVAR____TtC22ClarityBoardFoundation9LockState__isLocked;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77D90, &qword_243518C68);
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  return swift_deallocClassInstance();
}

void sub_243516CCC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243517BCC();

  [*(v0 + 16) isLocked];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_243517BDC();
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = sub_243517C6C();
  CFNotificationCenterPostNotification(v1, v2, 0, 0, 0);

  if (v7 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243517BCC();

    if ((v6 & 1) == 0)
    {
      if (_AXSVoiceOverTouchEnabled())
      {
        v3 = [objc_allocWithZone(MEMORY[0x277D757B8]) init];
        [v3 notificationOccurred_];
        if (*MEMORY[0x277CE6CC8])
        {
          v4 = *MEMORY[0x277D76438];
          v5 = *MEMORY[0x277CE6CC8];
          UIAccessibilityPostNotification(v4, v5);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

uint64_t sub_243516EB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243516F08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77E00, &qword_243518DD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_243516F78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77E00, &qword_243518DD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243516FE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77E00, &qword_243518DD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Bool __swiftcall LockState.unlock(with:)(Swift::String with)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 16);
  v3 = sub_243517C6C();
  v9[0] = 0;
  v4 = [v2 unlockWithPasscode:v3 error:v9];

  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    v7 = sub_243517A9C();

    swift_willThrow();
    swift_getErrorValue();
    if (sub_243517FBC() == -14)
    {
      sub_243517154();
    }
  }

  sub_243516CCC();
  return v4;
}

id sub_243517154()
{
  v0 = sub_243517C0C();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_243517C2C();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243517BFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_243517C4C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = [objc_opt_self() defaultCenter];
  [v17 postNotificationName:@"CLBLockBackoffBlockNotification" object:0];

  sub_243517834();
  v18 = sub_243517D6C();
  sub_243517C3C();
  result = [*(v28 + 16) backOffTime];
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v20 < 9.22337204e18)
  {
    *v9 = v20;
    (*(v7 + 104))(v9, *MEMORY[0x277D85188], v6);
    MEMORY[0x245D38250](v14, v9);
    (*(v7 + 8))(v9, v6);
    v28 = *(v11 + 8);
    (v28)(v14, v10);
    aBlock[4] = sub_243517600;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243516800;
    aBlock[3] = &block_descriptor_9;
    v21 = _Block_copy(aBlock);
    sub_243517C1C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_243517880();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77E30, &qword_243518E68);
    sub_2435178D8();
    v22 = v27;
    sub_243517DEC();
    MEMORY[0x245D38350](v16, v5, v2, v21);
    _Block_release(v21);

    (*(v26 + 8))(v2, v22);
    (*(v24 + 8))(v5, v25);
    return (v28)(v16, v10);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_243517600()
{
  v0 = [objc_opt_self() defaultCenter];
  [v0 postNotificationName:@"CLBLockBackoffUnblockNotification" object:0];
}

uint64_t sub_243517670@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LockState(0);
  result = sub_243517B7C();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for LockState(uint64_t a1)
{
  result = qword_27ED77E08;
  if (!qword_27ED77E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243517704(uint64_t a1)
{
  sub_2435177DC(319);
  if (v1 <= 0x3F)
  {
    sub_243515A98();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2435177DC(uint64_t a1)
{
  if (!qword_27ED77E18)
  {
    sub_243517B3C();
    v1 = sub_243517DCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED77E18);
    }
  }
}

unint64_t sub_243517834()
{
  result = qword_27ED77E20;
  if (!qword_27ED77E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED77E20);
  }

  return result;
}

unint64_t sub_243517880()
{
  result = qword_27ED77E28;
  if (!qword_27ED77E28)
  {
    sub_243517C0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED77E28);
  }

  return result;
}

unint64_t sub_2435178D8()
{
  result = qword_27ED77E38;
  if (!qword_27ED77E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED77E30, &qword_243518E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED77E38);
  }

  return result;
}

uint64_t NSNotificationCenter.sendableNotifications(named:object:)()
{
  sub_243517D9C();
  sub_243517D8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED77E40, &qword_243518E78);
  sub_243517A30();
  return sub_243517F2C();
}

uint64_t sub_243517A04()
{
  v1 = *(v0 + 16);
  v1[3] = MEMORY[0x277D837D0];
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  return (*(v0 + 8))();
}

unint64_t sub_243517A30()
{
  result = qword_27ED77E48;
  if (!qword_27ED77E48)
  {
    sub_243517D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED77E48);
  }

  return result;
}