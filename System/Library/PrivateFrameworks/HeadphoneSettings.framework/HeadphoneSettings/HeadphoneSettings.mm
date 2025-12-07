void sub_25126E354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_251272914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_251272B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sharedBluetoothSettingsLogComponent(uint64_t a1)
{
  if (sharedBluetoothSettingsLogComponent_onceToken != -1)
  {
    sharedBluetoothSettingsLogComponent_cold_1();
  }

  v2 = sharedBluetoothSettingsLogComponent_sharedBTSLog;

  return v2;
}

uint64_t __sharedBluetoothSettingsLogComponent_block_invoke()
{
  sharedBluetoothSettingsLogComponent_sharedBTSLog = os_log_create("com.apple.bluetooth", "BluetoothSettings");

  return MEMORY[0x2821F96F8]();
}

id sub_251275C4C()
{
  v0 = objc_allocWithZone(MEMORY[0x277D3FA50]);

  return [v0 init];
}

uint64_t sub_251275CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  *v6 = v3;
  v6[1] = sub_251275D78;

  return sub_251276520(v3 + 16, a2, a3);
}

uint64_t sub_251275D78()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v8 = *v0;
  v3 = *(*v0 + 16);
  v6 = *(v1 + 40);
  v7 = *(v1 + 24);

  *v2 = v3;
  *(v2 + 24) = v6;
  *(v2 + 8) = v7;
  v4 = *(v8 + 8);

  return v4();
}

uint64_t sub_251275EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  *v6 = v3;
  v6[1] = sub_251277230;

  return sub_251276520(v3 + 16, a2, a3);
}

unint64_t sub_251275F78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251276044(v11, 0, 0, 1, a1, a2);
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
    sub_2512771D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_251276044(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_251276150(a5, a6);
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
    result = sub_25127ABEC();
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

void *sub_251276150(uint64_t a1, unint64_t a2)
{
  v3 = sub_25127619C(a1, a2);
  sub_2512762CC(&unk_28634F5F8);
  return v3;
}

void *sub_25127619C(uint64_t a1, unint64_t a2)
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

  v6 = sub_2512763B8(v5, 0);
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

  result = sub_25127ABEC();
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
        v10 = sub_25127AB5C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2512763B8(v10, 0);
        result = sub_25127ABDC();
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

uint64_t sub_2512762CC(uint64_t result)
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

  result = sub_25127642C(result, v11, 1, v3);
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

void *sub_2512763B8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F428588, &unk_25127C2E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25127642C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F428588, &unk_25127C2E0);
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

uint64_t sub_251276520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[36] = a2;
  v3[37] = a3;
  v3[35] = a1;
  v4 = sub_25127AA9C();
  v3[38] = v4;
  v3[39] = *(v4 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v5 = sub_25127AB1C();
  v3[42] = v5;
  v3[43] = *(v5 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  sub_25127AB9C();
  v3[46] = sub_25127AB8C();
  v7 = sub_25127AB7C();
  v3[47] = v7;
  v3[48] = v6;

  return MEMORY[0x2822009F8](sub_25127668C, v7, v6);
}

uint64_t sub_25127668C()
{
  v76 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v7 = *(v0 + 288);
  v8 = sub_2512772B0();
  v72 = *(v2 + 16);
  v73 = v8;
  v72(v1);
  v9 = *(v5 + 16);
  v9(v3, v7, v6);
  v9(v4, v7, v6);
  v10 = sub_25127AAFC();
  v11 = sub_25127ABAC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 328);
    v14 = *(v0 + 304);
    v13 = *(v0 + 312);
    v15 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v74 = v71;
    *v15 = 136315394;
    v16 = sub_25127AA8C();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_251275F78(v16, v18, &v74);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = sub_25127AA6C();
    if (v21)
    {
      v22 = v21;
      v23 = sub_25127AA5C();
      v24 = MEMORY[0x25306F540](v22, v23);
      v26 = v25;
    }

    else
    {
      v26 = 0xE800000000000000;
      v24 = 0x7972657571206F6ELL;
    }

    v36 = *(v0 + 344);
    v69 = *(v0 + 336);
    v70 = *(v0 + 360);
    v19(*(v0 + 320), *(v0 + 304));
    v37 = sub_251275F78(v24, v26, &v74);

    *(v15 + 14) = v37;
    _os_log_impl(&dword_25126C000, v10, v11, "Handle subpath deeplink %s %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306FC10](v71, -1, -1);
    MEMORY[0x25306FC10](v15, -1, -1);

    v35 = *(v36 + 8);
    v35(v70, v69);
  }

  else
  {
    v27 = *(v0 + 360);
    v28 = *(v0 + 336);
    v29 = *(v0 + 344);
    v31 = *(v0 + 320);
    v30 = *(v0 + 328);
    v32 = *(v0 + 304);
    v33 = *(v0 + 312);

    v34 = *(v33 + 8);
    v34(v31, v32);
    v34(v30, v32);
    v35 = *(v29 + 8);
    v35(v27, v28);
  }

  if (sub_251277B60(*(v0 + 296)))
  {
    sub_25127AABC();
    v38 = swift_task_alloc();
    *(v0 + 392) = v38;
    *v38 = v0;
    v38[1] = sub_251276E80;
    v39 = *(v0 + 288);
    v40 = *(v0 + 296);

    return MEMORY[0x2821680E8](v0 + 16, v39, v40);
  }

  v41 = *(v0 + 296);

  v42 = objc_opt_self();
  v43 = sub_25127AA7C();
  v44 = [v42 handleDeeplink:v43 specifier:v41];

  if ([v44 userInfo])
  {
    sub_25127ABCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v45 = v74;
  *(v0 + 72) = v75;
  *(v0 + 56) = v45;
  if (!*(v0 + 80))
  {
    sub_251277088(v0 + 56);
    goto LABEL_26;
  }

  sub_251277138();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    (v72)(*(v0 + 352), v73, *(v0 + 336));
    v51 = sub_25127AAFC();
    v52 = sub_25127ABAC();
    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 352);
    v55 = *(v0 + 336);
    if (v53)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_25126C000, v51, v52, "Deep link yielded empty payload", v56, 2u);
      MEMORY[0x25306FC10](v56, -1, -1);
    }

    v35(v54, v55);
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v49 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v46 = *(v0 + 264);
  *(v0 + 184) = 0xD000000000000014;
  *(v0 + 192) = 0x800000025127CCB0;
  v47 = [v46 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v47)
  {
    sub_25127ABCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v48 = v74;
  *(v0 + 104) = v75;
  *(v0 + 88) = v48;
  if (!*(v0 + 112))
  {

    sub_251277088(v0 + 88);
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F428580, &unk_25127C200);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_26;
  }

  v49 = *(v0 + 272);
  *(v0 + 200) = 0x6867696C68676948;
  *(v0 + 208) = 0xE900000000000074;
  v50 = [v46 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v50)
  {
    sub_25127ABCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v63 = v74;
  *(v0 + 136) = v75;
  *(v0 + 120) = v63;
  if (*(v0 + 144))
  {
    v64 = swift_dynamicCast();
    if (v64)
    {
      v57 = *(v0 + 248);
    }

    else
    {
      v57 = 0;
    }

    if (v64)
    {
      v58 = *(v0 + 256);
    }

    else
    {
      v58 = 0;
    }
  }

  else
  {
    sub_251277088(v0 + 120);
    v57 = 0;
    v58 = 0;
  }

  *(v0 + 216) = 0x6F697463656C6553;
  *(v0 + 224) = 0xE90000000000006ELL;
  v65 = [v46 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v65)
  {
    sub_25127ABCC();

    swift_unknownObjectRelease();
  }

  else
  {

    v74 = 0u;
    v75 = 0u;
  }

  v66 = v74;
  *(v0 + 168) = v75;
  *(v0 + 152) = v66;
  if (*(v0 + 176))
  {
    v67 = swift_dynamicCast();
    if (v67)
    {
      v59 = *(v0 + 232);
    }

    else
    {
      v59 = 0;
    }

    if (v67)
    {
      v60 = *(v0 + 240);
    }

    else
    {
      v60 = 0;
    }
  }

  else
  {
    sub_251277088(v0 + 152);
    v59 = 0;
    v60 = 0;
  }

LABEL_29:
  v61 = *(v0 + 280);

  *v61 = v49;
  v61[1] = v57;
  v61[2] = v58;
  v61[3] = v59;
  v61[4] = v60;
  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_251276E80()
{
  v1 = *v0;

  v2 = *(v1 + 384);
  v3 = *(v1 + 376);

  return MEMORY[0x2822009F8](sub_251276FA0, v3, v2);
}

uint64_t sub_251276FA0()
{

  v1 = *(v0 + 16);
  if (v1)
  {
    v5 = *(v0 + 40);
    v6 = *(v0 + 24);
  }

  else
  {
    v6 = 0u;
    v1 = MEMORY[0x277D84F90];
    v5 = 0u;
  }

  v2 = *(v0 + 280);

  *v2 = v1;
  *(v2 + 24) = v5;
  *(v2 + 8) = v6;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_251277088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F428570, &qword_25127C310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

unint64_t sub_251277138()
{
  result = qword_27F428578;
  if (!qword_27F428578)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F428578);
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

uint64_t sub_2512771D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_251277238()
{
  v0 = sub_25127AB1C();
  __swift_allocate_value_buffer(v0, qword_27F428658);
  __swift_project_value_buffer(v0, qword_27F428658);
  return sub_25127AB0C();
}

uint64_t sub_2512772B0()
{
  if (qword_27F428650 != -1)
  {
    swift_once();
  }

  v0 = sub_25127AB1C();

  return __swift_project_value_buffer(v0, qword_27F428658);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.hpsDeeplink.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F428650 != -1)
  {
    swift_once();
  }

  v2 = sub_25127AB1C();
  v3 = __swift_project_value_buffer(v2, qword_27F428658);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_251277424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  *v6 = v3;
  v6[1] = sub_251275D78;

  return sub_2512775A8(v3 + 16, a2, a3);
}

uint64_t sub_2512774E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  *v6 = v3;
  v6[1] = sub_251277230;

  return sub_2512775A8(v3 + 16, a2, a3);
}

uint64_t sub_2512775A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_25127AB9C();
  v3[5] = sub_25127AB8C();
  v5 = sub_25127AB7C();

  return MEMORY[0x2822009F8](sub_251277644, v5, v4);
}

uint64_t sub_251277644()
{
  v27 = v0;

  v1 = URLComponents.subscript.getter(0x6867696C68676948, 0xE900000000000074);
  v3 = v2;
  v4 = URLComponents.subscript.getter(0x6F697463656C6553, 0xE90000000000006ELL);
  v6 = v5;
  if (qword_27F428650 != -1)
  {
    swift_once();
  }

  v7 = sub_25127AB1C();
  __swift_project_value_buffer(v7, qword_27F428658);

  v8 = sub_25127AAFC();
  v9 = sub_25127ABBC();

  if (os_log_type_enabled(v8, v9))
  {
    v25 = v4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315394;
    if (v3)
    {
      v12 = v1;
    }

    else
    {
      v12 = 1701736302;
    }

    if (v3)
    {
      v13 = v3;
    }

    else
    {
      v13 = 0xE400000000000000;
    }

    v14 = sub_251275F78(v12, v13, &v26);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (v6)
    {
      v15 = v25;
    }

    else
    {
      v15 = 1701736302;
    }

    if (v6)
    {
      v16 = v6;
    }

    else
    {
      v16 = 0xE400000000000000;
    }

    v17 = sub_251275F78(v15, v16, &v26);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_25126C000, v8, v9, "Deeplinking to main page for and highlighting %s %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306FC10](v11, -1, -1);
    v18 = v10;
    v4 = v25;
    MEMORY[0x25306FC10](v18, -1, -1);
  }

  v19 = v0[4];
  v20 = v0[2];

  v21 = [objc_opt_self() controllerForSpecifier_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F428590, &qword_25127C2D8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25127C220;
  *(v22 + 32) = v21;
  *v20 = v22;
  v20[1] = v1;
  v20[2] = v3;
  v20[3] = v4;
  v20[4] = v6;
  v23 = v0[1];

  return v23();
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

unint64_t static HeadphoneSettingsDeeplinksContainer.registeredDeeplinks.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F428598, &qword_25127C300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25127C2F0;
  v1 = sub_2512773F4();
  v3 = *v1;
  v2 = v1[1];
  *(inited + 32) = v3;
  *(inited + 40) = v2;

  nullsub_1();
  *(inited + 72) = &type metadata for HeadphoneSettingsMainPageDeeplink;
  *(inited + 80) = sub_251277AB8();
  v4 = sub_251275C88();
  v6 = *v4;
  v5 = v4[1];
  *(inited + 88) = v6;
  *(inited + 96) = v5;

  v7 = sub_251277234();
  *(inited + 128) = &type metadata for HeadphoneSettingsSubFlowDeeplink;
  *(inited + 136) = sub_251277B0C();
  *(inited + 104) = v7;
  v8 = sub_2512782B0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4285B0, &qword_25127C308);
  swift_arrayDestroy();
  return v8;
}

unint64_t sub_251277AB8()
{
  result = qword_27F4285A0;
  if (!qword_27F4285A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4285A0);
  }

  return result;
}

unint64_t sub_251277B0C()
{
  result = qword_27F4285A8;
  if (!qword_27F4285A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4285A8);
  }

  return result;
}

uint64_t sub_251277B60(void *a1)
{
  v2 = sub_25127AB1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 userInfo])
  {
    sub_25127ABCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (!*(&v28 + 1))
  {
    goto LABEL_16;
  }

  sub_2512783CC(0, &qword_27F428578, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = v26;
  v7 = [objc_opt_self() deviceKey];
  if (!v7)
  {
    sub_25127AB3C();
    v7 = sub_25127AB2C();
  }

  v8 = [v6 objectForKey_];

  if (v8)
  {
    sub_25127ABCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (!*(&v28 + 1))
  {

LABEL_16:
    sub_251277088(&v29);
    goto LABEL_17;
  }

  sub_2512783CC(0, &qword_27F4285B8, 0x277D0FB78);
  if (swift_dynamicCast())
  {
    v9 = v26;
    v10 = [v26 headphoneDevice];
    if (v10)
    {
      v11 = v10;
      v12 = sub_25127AACC();

      return v12 & 1;
    }
  }

  else
  {
  }

LABEL_17:
  v13 = sub_2512772B0();
  (*(v3 + 16))(v5, v13, v2);
  v14 = a1;
  v15 = sub_25127AAFC();
  v16 = sub_25127ABBC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v29 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_251275F78(0xD000000000000018, 0x800000025127CCF0, &v29);
    *(v17 + 12) = 2080;
    v19 = [v14 debugDescription];
    v20 = sub_25127AB3C();
    v22 = v21;

    v23 = sub_251275F78(v20, v22, &v29);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_25126C000, v15, v16, "%s Showing legacy HPS %s No device!", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306FC10](v18, -1, -1);
    MEMORY[0x25306FC10](v17, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v12 = 0;
  return v12 & 1;
}

uint64_t URLComponents.subscript.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_25127AA5C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  result = sub_25127AA6C();
  if (result)
  {
    v12 = result;
    v13 = *(result + 16);
    v20 = v10;
    v21 = v13;
    if (v13)
    {
      v14 = 0;
      v22 = v5 + 16;
      while (v14 < *(v12 + 16))
      {
        (*(v5 + 16))(v8, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v4);
        if (sub_25127AA3C() == a1 && v15 == a2)
        {

LABEL_12:

          v17 = v20;
          (*(v5 + 32))(v20, v8, v4);
          v18 = sub_25127AA4C();
          (*(v5 + 8))(v17, v4);
          return v18;
        }

        v16 = sub_25127AC0C();

        if (v16)
        {
          goto LABEL_12;
        }

        ++v14;
        result = (*(v5 + 8))(v8, v4);
        if (v21 == v14)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:

      return 0;
    }
  }

  return result;
}

unint64_t sub_251278180(uint64_t a1, uint64_t a2)
{
  sub_25127AC2C();
  sub_25127AB4C();
  v4 = sub_25127AC3C();

  return sub_2512781F8(a1, a2, v4);
}

unint64_t sub_2512781F8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25127AC0C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2512782B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4285C0, qword_25127C370);
    v3 = sub_25127ABFC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2512784F8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_251278180(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_251278568(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_2512783CC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t getEnumTagSinglePayload for HeadphoneSettingsDeeplinksContainer(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HeadphoneSettingsDeeplinksContainer(_WORD *result, int a2, int a3)
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

uint64_t sub_2512784F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4285B0, &qword_25127C308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251278568(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_251278590()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F4286F8 = result;
  return result;
}

uint64_t sub_2512785E4()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F428868);
  __swift_project_value_buffer(v0, qword_27F428868);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_2512786D4()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F428880);
  __swift_project_value_buffer(v0, qword_27F428880);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_251278984()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F4288F8);
  __swift_project_value_buffer(v0, qword_27F4288F8);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_251278A74()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F428910);
  __swift_project_value_buffer(v0, qword_27F428910);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_251278B64()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F428928);
  __swift_project_value_buffer(v0, qword_27F428928);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_251278C54()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F428940);
  __swift_project_value_buffer(v0, qword_27F428940);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_251278D44()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F428958);
  __swift_project_value_buffer(v0, qword_27F428958);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_251278FF4()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F4289D0);
  __swift_project_value_buffer(v0, qword_27F4289D0);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_2512790E4()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F4289E8);
  __swift_project_value_buffer(v0, qword_27F4289E8);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_2512791D4()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F428A00);
  __swift_project_value_buffer(v0, qword_27F428A00);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_2512792C4()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F428A18);
  __swift_project_value_buffer(v0, qword_27F428A18);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_2512793B4()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F428A30);
  __swift_project_value_buffer(v0, qword_27F428A30);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_251279664()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F428AA8);
  __swift_project_value_buffer(v0, qword_27F428AA8);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_2512799EC()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F428B50);
  __swift_project_value_buffer(v0, qword_27F428B50);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_251279D74()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F428BF8);
  __swift_project_value_buffer(v0, qword_27F428BF8);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_251279E88(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25127AAEC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v6 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_251279F74()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F428C28);
  __swift_project_value_buffer(v0, qword_27F428C28);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_25127A064()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F428C40);
  __swift_project_value_buffer(v0, qword_27F428C40);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_25127A154()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F428C58);
  __swift_project_value_buffer(v0, qword_27F428C58);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_25127A244()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F428C70);
  __swift_project_value_buffer(v0, qword_27F428C70);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_25127A334()
{
  v0 = sub_25127AAEC();
  __swift_allocate_value_buffer(v0, qword_27F428C88);
  __swift_project_value_buffer(v0, qword_27F428C88);
  if (qword_27F4286F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4286F8;
  return sub_25127AADC();
}

uint64_t sub_25127A400(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_25127AAEC();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_25127A478@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_25127AAEC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}