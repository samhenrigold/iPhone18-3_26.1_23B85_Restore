uint64_t sub_252F3409C()
{
  sub_252F34F18();
  result = sub_252F53B4C();
  qword_27F57B818 = result;
  return result;
}

Swift::Void __swiftcall Logger.info(output:addToSummary:test:caller:)(Swift::String output, Swift::Bool addToSummary, Swift::Bool test, Swift::String caller)
{
  countAndFlagsBits = caller._countAndFlagsBits;
  object = output._object;
  v6 = 0x65725F7261646172;
  v35 = 46;
  v36 = 0xE100000000000000;
  if (addToSummary)
  {
    v7 = 0xEF202D2074726F70;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v34 = &v35;
  if (!addToSummary)
  {
    v6 = 0;
  }

  v31 = output._countAndFlagsBits;
  v32 = v6;
  v8 = sub_252F34D68(sub_252F34FC0, v33, caller._countAndFlagsBits, caller._object);
  if (v9)
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_1_2();
    v8 = sub_252F539DC();
  }

  v10 = v8;
  v35 = 47;
  v36 = 0xE100000000000000;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_2();
  sub_252F34D68(v11, v12, v13, v14);
  v16 = v15;

  v17 = sub_252F5315C();
  v18 = sub_252F53A9C();

  v19 = os_log_type_enabled(v17, v18);
  if (v16)
  {
    if (v19)
    {
      v20 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v20 = 136315650;
      v21 = sub_252F347B4(v32, v7, &v35);

      *(v20 + 4) = v21;
      *(v20 + 12) = 2082;
      OUTLINED_FUNCTION_1_2();
      v22 = sub_252F53A4C();
      MEMORY[0x2530AF850](v22);
      OUTLINED_FUNCTION_5_4();
      v23 = sub_252F347B4(countAndFlagsBits, v7, &v35);

      *(v20 + 14) = v23;
      *(v20 + 22) = 2080;
      *(v20 + 24) = sub_252F347B4(v31, object, &v35);
      _os_log_impl(&dword_252F17000, v17, v18, "%s%{public}s: %s", v20, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_4();
LABEL_14:
      OUTLINED_FUNCTION_4_4();
LABEL_16:

      return;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!v19)
  {
    goto LABEL_15;
  }

  v24 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  *v24 = 136315650;
  v25 = sub_252F347B4(v32, v7, &v35);

  *(v24 + 4) = v25;
  *(v24 + 12) = 2082;
  OUTLINED_FUNCTION_1_2();
  if (v10 >> 14 >= sub_252F539DC() >> 14)
  {
    OUTLINED_FUNCTION_1_2();
    v26 = sub_252F53A4C();
    v27 = MEMORY[0x2530AF850](v26);
    v29 = v28;

    v30 = sub_252F347B4(v27, v29, &v35);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_252F347B4(v31, object, &v35);
    _os_log_impl(&dword_252F17000, v17, v18, "%s%{public}s: %s", v24, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_4();
    goto LABEL_14;
  }

  __break(1u);
}

Swift::Void __swiftcall Logger.error(output:test:file:function:line:)(Swift::String output, Swift::Bool test, Swift::String file, Swift::String function, Swift::Int line)
{
  object = file._object;
  countAndFlagsBits = file._countAndFlagsBits;
  v8 = output._object;
  v111 = output._countAndFlagsBits;
  v119[0] = 47;
  v119[1] = 0xE100000000000000;
  v117 = v119;
  sub_252F34D68(sub_252F34FC0, v116, file._countAndFlagsBits, file._object);
  v10 = v9;

  v11 = sub_252F5315C();
  v12 = sub_252F53ABC();

  v13 = os_log_type_enabled(v11, v12);
  if (v10)
  {
    if (v13)
    {
      v14 = swift_slowAlloc();
      v119[0] = swift_slowAlloc();
      v22 = OUTLINED_FUNCTION_2_5(4.8154e-34, v119[0], v15, v16, v17, v18, v19, v20, v21, v91, v98, v105, v111, v116[0], v116[1], v117, v118);
      *(v14 + 4) = v22;
      v30 = OUTLINED_FUNCTION_6_3(v22, v23, v24, v25, v26, v27, v28, v29, v92, v99, line, v112, v116[0], v116[1], v117, v118);
      *(v14 + 24) = OUTLINED_FUNCTION_3_6(v30, v31, v32, v33, v34, v35, v36, v37, v93, v100, v106, v113, v116[0], v116[1], v117, v118);
      *(v14 + 32) = line;
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_1_2();
      v38 = sub_252F53A4C();
      MEMORY[0x2530AF850](v38);
      OUTLINED_FUNCTION_5_4();
      v39 = sub_252F347B4(countAndFlagsBits, v8, v119);

      *(v14 + 34) = v39;
      OUTLINED_FUNCTION_7_4(v40, v41, v42, v43, v44, v45, v46, v47, v94, v101, v107);
      OUTLINED_FUNCTION_8_3(&dword_252F17000, v48, v49, "%s\n%{public}s: %s\n    at %{public}s:%{public}ld");
      swift_arrayDestroy();
LABEL_9:
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_4_4();
    }

LABEL_10:

    return;
  }

  if (!v13)
  {
    goto LABEL_10;
  }

  v50 = swift_slowAlloc();
  v119[0] = swift_slowAlloc();
  v58 = OUTLINED_FUNCTION_2_5(4.8154e-34, v119[0], v51, v52, v53, v54, v55, v56, v57, v91, v119[0], line, v111, v116[0], v116[1], v117, v118);
  *(v50 + 4) = v58;
  v66 = OUTLINED_FUNCTION_6_3(v58, v59, v60, v61, v62, v63, v64, v65, v95, v102, v108, v114, v116[0], v116[1], v117, v118);
  *(v50 + 24) = OUTLINED_FUNCTION_3_6(v66, v67, v68, v69, v70, v71, v72, v73, v96, v103, v109, v115, v116[0], v116[1], v117, v118);
  *(v50 + 32) = line;
  OUTLINED_FUNCTION_1_2();
  v74 = sub_252F539DC();
  v75 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v75 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v75 >= v74 >> 14)
  {
    OUTLINED_FUNCTION_1_2();
    v76 = sub_252F53A4C();
    v77 = MEMORY[0x2530AF850](v76);
    v79 = v78;

    v80 = sub_252F347B4(v77, v79, v119);

    *(v50 + 34) = v80;
    OUTLINED_FUNCTION_7_4(v81, v82, v83, v84, v85, v86, v87, v88, v97, v104, v110);
    OUTLINED_FUNCTION_8_3(&dword_252F17000, v89, v90, "%s\n%{public}s: %s\n    at %{public}s:%{public}ld");
    swift_arrayDestroy();
    goto LABEL_9;
  }

  __break(1u);
}

unint64_t sub_252F347B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_252F34878(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_252F34EB8(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_252F34878(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_252F34978(a5, a6);
    *a1 = v9;
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
    result = sub_252F53BBC();
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

uint64_t sub_252F34978(uint64_t a1, unint64_t a2)
{
  v3 = sub_252F349C4(a1, a2);
  sub_252F34ADC(&unk_2864D6D88);
  return v3;
}

uint64_t sub_252F349C4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_252F53A0C())
  {
    result = sub_252F34BC0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_252F53B7C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_252F53BBC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252F34ADC(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_252F34C30(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_252F34BC0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765A8, &qword_252F55308);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_252F34C30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765A8, &qword_252F55308);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_252F34D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_252F53CAC() & 1;
  }
}

unint64_t sub_252F34D68(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_252F539CC();
    v13[0] = sub_252F53A3C();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_252F34EB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_252F34F18()
{
  result = qword_27F5765B0;
  if (!qword_27F5765B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5765B0);
  }

  return result;
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

unint64_t OUTLINED_FUNCTION_2_5(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  *v17 = a1;

  return sub_252F347B4(0x65725F7261646172, 0xEF202D2074726F70, va);
}

unint64_t OUTLINED_FUNCTION_3_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v16 + 14) = a1;
  *(v16 + 22) = 2080;

  return sub_252F347B4(a12, v17, va);
}

void OUTLINED_FUNCTION_4_4()
{

  JUMPOUT(0x2530AFFE0);
}

uint64_t OUTLINED_FUNCTION_5_4()
{
}

unint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v16 + 12) = 2082;

  return sub_252F347B4(v18, v17, va);
}

void OUTLINED_FUNCTION_8_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x34u);
}

uint64_t IconConfiguration.description.getter()
{
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000014, 0x8000000252F58430);
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  if (v7)
  {
    v0 = 1702195828;
  }

  else
  {
    v0 = 0x65736C6166;
  }

  if (v7)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  MEMORY[0x2530AF890](v0, v1);

  MEMORY[0x2530AF890](0x614E6E6F6369202CLL, 0xEC000000203A656DLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890]();

  MEMORY[0x2530AF890](0x6F436E6F6369202CLL, 0xED0000203A726F6CLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  if (v8)
  {
    v2 = v7;
  }

  else
  {
    v2 = 7104878;
  }

  if (v8)
  {
    v3 = v8;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  MEMORY[0x2530AF890](v2, v3);

  MEMORY[0x2530AF890](0xD000000000000010, 0x8000000252F58450);
  sub_252F530BC();
  if (v8)
  {
    v4 = v7;
  }

  else
  {
    v4 = 7104878;
  }

  if (v8)
  {
    v5 = v8;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x2530AF890](v4, v5);

  return 0;
}

uint64_t IconConfiguration.iconName.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v1;
}

uint64_t IconConfiguration.iconColor.getter()
{
  type metadata accessor for IconConfiguration(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_29(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t IconConfiguration.init(iconName:iconColor:circleColor:onStateIconName:offStateIconName:action:rgbIconColor:deviceType:onStateMode:offStateMode:)@<X0>(uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, char *a15, char *a16)
{
  v17 = type metadata accessor for IconConfiguration(0);
  v31 = v17[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  OUTLINED_FUNCTION_12_2();
  sub_252F5309C();
  v29 = v17[6];
  OUTLINED_FUNCTION_13_3();
  sub_252F5309C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765B8, &qword_252F55310);
  sub_252F5309C();
  v18 = v17[10];
  OUTLINED_FUNCTION_12_2();
  sub_252F5309C();
  v30 = v17[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765C0, &qword_252F55318);
  sub_252F5309C();
  v19 = v17[12];
  OUTLINED_FUNCTION_12_2();
  sub_252F5309C();
  v28 = v17[13];
  OUTLINED_FUNCTION_12_2();
  sub_252F5309C();
  v20 = v17[14];
  v21 = type metadata accessor for DirectInvocationConfig(0);
  __swift_storeEnumTagSinglePayload(a9 + v20, 1, 1, v21);

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_1();
  v24 = *(v23 + 8);
  v24(a9 + v18, v22);
  OUTLINED_FUNCTION_12_2();
  sub_252F5309C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_0_1();
  (*(v25 + 8))(a9 + v29);
  sub_252F5309C();
  sub_252F361F0(a12, a9 + v20);
  sub_252F5309C();
  v24(a9 + v31, v22);
  OUTLINED_FUNCTION_12_2();
  sub_252F5309C();
  v24(a9 + v19, v22);
  OUTLINED_FUNCTION_12_2();
  sub_252F5309C();
  v24(a9 + v28, v22);
  OUTLINED_FUNCTION_12_2();
  sub_252F5309C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
  OUTLINED_FUNCTION_0_1();
  (*(v26 + 8))(a9 + v30);
  sub_252F5309C();
  OUTLINED_FUNCTION_13_3();
  sub_252F5309C();
  OUTLINED_FUNCTION_13_3();
  sub_252F5309C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  sub_252F530CC();
  return sub_252F36260(a12);
}

uint64_t IconConfiguration.rgbIconColor.getter()
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
  sub_252F530BC();
  return v1;
}

uint64_t static IconConfiguration.== infix(_:_:)()
{
  v0 = IconConfiguration.description.getter();
  v2 = v1;
  if (v0 == IconConfiguration.description.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_252F53CAC();
  }

  return v5 & 1;
}

uint64_t IconConfiguration.circleColor.setter()
{
  OUTLINED_FUNCTION_30();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  return OUTLINED_FUNCTION_16_1(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t IconConfiguration.shouldRenderCircle.setter(char a1)
{
  type metadata accessor for IconConfiguration(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  return OUTLINED_FUNCTION_17_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, *v11, *&v11[4], v11[6], a1);
}

uint64_t IconConfiguration.iconColor.setter()
{
  OUTLINED_FUNCTION_30();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  return OUTLINED_FUNCTION_16_1(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t IconConfiguration.onStateIconName.setter()
{
  OUTLINED_FUNCTION_30();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  return OUTLINED_FUNCTION_16_1(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t IconConfiguration.offStateIconName.setter()
{
  OUTLINED_FUNCTION_30();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  return OUTLINED_FUNCTION_16_1(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t IconConfiguration.rgbIconColor.setter(uint64_t a1)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
  return sub_252F530CC();
}

uint64_t IconConfiguration.onStateMode.setter()
{
  OUTLINED_FUNCTION_23();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  return OUTLINED_FUNCTION_17_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
}

uint64_t IconConfiguration.offStateMode.setter()
{
  OUTLINED_FUNCTION_23();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  return OUTLINED_FUNCTION_17_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
}

uint64_t IconConfiguration.deviceType.setter()
{
  OUTLINED_FUNCTION_23();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  return OUTLINED_FUNCTION_17_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
}

uint64_t IconConfiguration.id.getter()
{
  v0 = sub_252F52FEC();
  OUTLINED_FUNCTION_16();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252F52FDC();
  v6 = sub_252F52FCC();
  (*(v2 + 8))(v5, v0);
  return v6;
}

uint64_t sub_252F35BF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return IconConfiguration.iconName.setter(v1, v2);
}

uint64_t (*IconConfiguration.iconName.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v2[4] = sub_252F530AC();
  return sub_252F20BA0;
}

uint64_t (*IconConfiguration.iconColor.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

uint64_t IconConfiguration.shouldRenderCircle.getter()
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  return v1;
}

uint64_t type metadata accessor for IconConfiguration(uint64_t a1)
{
  result = qword_27F576640;
  if (!qword_27F576640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*IconConfiguration.shouldRenderCircle.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

void *IconConfiguration.onStateMode.getter()
{
  OUTLINED_FUNCTION_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  return sub_252F530BC();
}

void *sub_252F35E6C@<X0>(_BYTE *a1@<X8>)
{
  result = IconConfiguration.onStateMode.getter();
  *a1 = v3;
  return result;
}

uint64_t (*IconConfiguration.onStateMode.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

void *IconConfiguration.offStateMode.getter()
{
  OUTLINED_FUNCTION_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  return sub_252F530BC();
}

void *sub_252F35F98@<X0>(_BYTE *a1@<X8>)
{
  result = IconConfiguration.offStateMode.getter();
  *a1 = v3;
  return result;
}

uint64_t (*IconConfiguration.offStateMode.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

void *IconConfiguration.deviceType.getter()
{
  OUTLINED_FUNCTION_28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  return sub_252F530BC();
}

void *sub_252F360C4@<X0>(_BYTE *a1@<X8>)
{
  result = IconConfiguration.deviceType.getter();
  *a1 = v3;
  return result;
}

uint64_t (*IconConfiguration.deviceType.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

uint64_t IconConfiguration.circleColor.getter()
{
  type metadata accessor for IconConfiguration(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_29(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_252F361F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F36260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*IconConfiguration.circleColor.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

uint64_t (*IconConfiguration.rgbIconColor.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F1EBA8;
}

uint64_t IconConfiguration.onStateIconName.getter()
{
  type metadata accessor for IconConfiguration(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_29(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t (*IconConfiguration.onStateIconName.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

uint64_t IconConfiguration.offStateIconName.getter()
{
  type metadata accessor for IconConfiguration(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_29(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_252F364D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t (*IconConfiguration.offStateIconName.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

uint64_t IconConfiguration.action.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_28() + 56);

  return sub_252F30B54(v2, v0);
}

uint64_t IconConfiguration.action.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IconConfiguration(0) + 56);

  return sub_252F36604(a1, v3);
}

uint64_t sub_252F36604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_252F366BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_252F53BDC();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252F36718(char a1)
{
  result = 0x4965746174536E6FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x4D65746174536E6FLL;
      break;
    case 3:
      result = 0x657461745366666FLL;
      break;
    case 4:
      result = 0x7954656369766564;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x6F43656C63726963;
      break;
    case 7:
      result = 0x6E6F69746361;
      break;
    case 8:
      result = 0x656D614E6E6F6369;
      break;
    case 9:
      result = 0x6F6C6F436E6F6369;
      break;
    case 10:
      result = 0x436E6F6349626772;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_252F368A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252F366BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_252F368D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_252F36718(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F3691C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252F36708(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252F36944@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F3670C();
  *a1 = result;
  return result;
}

uint64_t sub_252F3696C(uint64_t a1)
{
  v2 = sub_252F3743C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F369A8(uint64_t a1)
{
  v2 = sub_252F3743C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IconConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
  MEMORY[0x28223BE20](v3 - 8);
  v68 = v64 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765C8, &qword_252F55320);
  OUTLINED_FUNCTION_16();
  v70 = v5;
  v71 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = v64 - v7;
  v9 = type metadata accessor for IconConfiguration(0);
  OUTLINED_FUNCTION_1();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 20);
  v84 = 0;
  v85 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  v83 = v14;
  sub_252F5309C();
  v16 = v9[6];
  LOBYTE(v84) = 0;
  v76 = v16;
  OUTLINED_FUNCTION_13_3();
  sub_252F5309C();
  v17 = v9[9];
  LOBYTE(v84) = 48;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765B8, &qword_252F55310);
  v82 = v17;
  v69 = v18;
  sub_252F5309C();
  v19 = v9[10];
  v84 = 0;
  v85 = 0;
  v80 = v19;
  OUTLINED_FUNCTION_13_3();
  sub_252F5309C();
  v20 = v9[11];
  v84 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765C0, &qword_252F55318);
  v81 = v20;
  sub_252F5309C();
  v22 = v9[12];
  v84 = 0;
  v85 = 0;
  v79 = v22;
  OUTLINED_FUNCTION_13_3();
  sub_252F5309C();
  v23 = v9[13];
  v84 = 0;
  v85 = 0;
  v78 = v23;
  OUTLINED_FUNCTION_13_3();
  sub_252F5309C();
  v72 = v9;
  v24 = v9[14];
  v25 = type metadata accessor for DirectInvocationConfig(0);
  v77 = v24;
  v73 = v13;
  __swift_storeEnumTagSinglePayload(&v13[v24], 1, 1, v25);
  v26 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_252F3743C();
  v27 = v74;
  sub_252F53CFC();
  if (v27)
  {
    v28 = v73;
    __swift_destroy_boxed_opaque_existential_1(v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_1();
    v30 = *(v29 + 8);
    v31 = OUTLINED_FUNCTION_26(v83);
    v30(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
    OUTLINED_FUNCTION_0_1();
    (*(v32 + 8))(&v28[v76]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
    OUTLINED_FUNCTION_0_1();
    (*(v33 + 8))(&v28[v82]);
    v34 = OUTLINED_FUNCTION_26(v80);
    v30(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
    OUTLINED_FUNCTION_0_1();
    (*(v35 + 8))(&v28[v81]);
    v36 = OUTLINED_FUNCTION_26(v79);
    v30(v36);
    v37 = OUTLINED_FUNCTION_26(v78);
    v30(v37);
    return sub_252F36260(&v28[v77]);
  }

  else
  {
    v65 = v25;
    v66 = v21;
    OUTLINED_FUNCTION_21(8);
    v84 = sub_252F53C0C();
    v85 = v38;
    v39 = v73;
    sub_252F5309C();
    OUTLINED_FUNCTION_21(9);
    v74 = v8;
    sub_252F53C0C();
    OUTLINED_FUNCTION_27();
    v40 = v15;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_1();
    v43 = *(v42 + 8);
    v44 = v42 + 8;
    v43(v39 + v83, v41);
    OUTLINED_FUNCTION_8_4();
    sub_252F5309C();
    OUTLINED_FUNCTION_21(5);
    v45 = v70;
    OUTLINED_FUNCTION_24();
    v46 = sub_252F53C1C();
    v47 = v40;
    LOBYTE(v40) = v46;
    v64[1] = v44;
    v64[2] = v47;
    v64[3] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
    OUTLINED_FUNCTION_0_1();
    (*(v48 + 8))(v39 + v76);
    LOBYTE(v84) = v40 & 1;
    sub_252F5309C();
    LOBYTE(v84) = 6;
    OUTLINED_FUNCTION_12_2();
    sub_252F53C0C();
    v49 = v45;
    OUTLINED_FUNCTION_27();
    v50 = v68;
    v51 = OUTLINED_FUNCTION_9_3();
    v52(v51);
    OUTLINED_FUNCTION_8_4();
    sub_252F5309C();
    LOBYTE(v84) = 0;
    OUTLINED_FUNCTION_24();
    sub_252F53C0C();
    OUTLINED_FUNCTION_27();
    v53 = OUTLINED_FUNCTION_9_3();
    v54(v53);
    OUTLINED_FUNCTION_8_4();
    sub_252F5309C();
    OUTLINED_FUNCTION_21(1);
    OUTLINED_FUNCTION_24();
    sub_252F53C0C();
    OUTLINED_FUNCTION_27();
    v55 = OUTLINED_FUNCTION_9_3();
    v56(v55);
    OUTLINED_FUNCTION_8_4();
    sub_252F5309C();
    LOBYTE(v84) = 7;
    sub_252F37B74(&qword_27F5765D8, &protocol conformance descriptor for DirectInvocationConfig);
    v57 = v65;
    OUTLINED_FUNCTION_24();
    sub_252F53C2C();
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v57);
    sub_252F36604(v50, v39 + v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765E0, &qword_252F55328);
    v86 = 10;
    sub_252F37C68(&qword_27F5765E8, MEMORY[0x277D83808], MEMORY[0x277D83A30], MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_19_0();
    sub_252F53C2C();
    v58 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
    OUTLINED_FUNCTION_0_1();
    (*(v59 + 8))(v39 + v81);
    v84 = v58;
    sub_252F5309C();
    v86 = 4;
    sub_252F37490();
    OUTLINED_FUNCTION_25();
    sub_252F53C2C();
    LOBYTE(v58) = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
    OUTLINED_FUNCTION_0_1();
    (*(v60 + 8))(v39 + v82);
    LOBYTE(v84) = v58;
    sub_252F5309C();
    v86 = 2;
    sub_252F374E4();
    OUTLINED_FUNCTION_25();
    sub_252F53C2C();
    v86 = v84;
    sub_252F5309C();
    v86 = 3;
    OUTLINED_FUNCTION_19_0();
    sub_252F53C2C();
    v86 = v84;
    sub_252F5309C();
    v61 = OUTLINED_FUNCTION_7_5();
    v62(v61, v49);
    sub_252F37538(v39, v67);
    __swift_destroy_boxed_opaque_existential_1(v75);
    return sub_252F3759C(v39);
  }
}

unint64_t sub_252F3743C()
{
  result = qword_27F5765D0;
  if (!qword_27F5765D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5765D0);
  }

  return result;
}

unint64_t sub_252F37490()
{
  result = qword_27F5765F0;
  if (!qword_27F5765F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5765F0);
  }

  return result;
}

unint64_t sub_252F374E4()
{
  result = qword_27F5765F8;
  if (!qword_27F5765F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5765F8);
  }

  return result;
}

uint64_t sub_252F37538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F3759C(uint64_t a1)
{
  v2 = type metadata accessor for IconConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IconConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576600, &qword_252F55330);
  OUTLINED_FUNCTION_16();
  v32 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F3743C();
  sub_252F53D0C();
  v10 = type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_20_0();
  v34 = v11;
  sub_252F530BC();
  v37 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  sub_252F29F68();
  v33 = v12;
  sub_252F53C7C();
  if (v2)
  {
  }

  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_2_6(1);
  v13 = v2;
  if (v2)
  {

    v13 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_20_0();
  sub_252F530BC();
  LOBYTE(v35) = 5;
  sub_252F53C6C();
  if (v13)
  {
  }

  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_2_6(6);
  if (v13)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  LOBYTE(v35) = 8;
  sub_252F53C5C();

  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_2_6(9);

  v14 = *(v10 + 56);
  LOBYTE(v35) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
  v15 = sub_252F37AD4();
  OUTLINED_FUNCTION_15_1(v3 + v14, &v35, v16, v17, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
  OUTLINED_FUNCTION_20_0();
  sub_252F530BC();
  v37 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765C0, &qword_252F55318);
  v18 = sub_252F37BB8();
  OUTLINED_FUNCTION_15_1(&v35, &v37, v19, v20, v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  OUTLINED_FUNCTION_20_0();
  sub_252F530BC();
  v37 = v35;
  v36 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765B8, &qword_252F55310);
  v21 = sub_252F37CD8();
  OUTLINED_FUNCTION_15_1(&v37, &v36, v22, v23, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  OUTLINED_FUNCTION_20_0();
  sub_252F530BC();
  v37 = v35;
  v36 = 2;
  v24 = sub_252F37DB0();
  OUTLINED_FUNCTION_18_0(v24, v25, v26, &type metadata for SnippetRenderingMode);
  v27 = sub_252F530BC();
  v37 = v35;
  v36 = 3;
  OUTLINED_FUNCTION_18_0(v27, v28, v29, &type metadata for SnippetRenderingMode);
  return (*(v32 + 8))(v9, v5);
}

unint64_t sub_252F37AD4()
{
  result = qword_27F576608;
  if (!qword_27F576608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576460, &qword_252F54F60);
    sub_252F37B74(&qword_27F576610, &protocol conformance descriptor for DirectInvocationConfig);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576608);
  }

  return result;
}

uint64_t sub_252F37B74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DirectInvocationConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252F37BB8()
{
  result = qword_27F576618;
  if (!qword_27F576618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5765C0, &qword_252F55318);
    sub_252F37C68(&qword_27F576620, MEMORY[0x277D837D8], MEMORY[0x277D83A08], MEMORY[0x277D83508]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576618);
  }

  return result;
}

uint64_t sub_252F37C68(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5765E0, &qword_252F55328);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252F37CD8()
{
  result = qword_27F576628;
  if (!qword_27F576628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5765B8, &qword_252F55310);
    sub_252F37D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576628);
  }

  return result;
}

unint64_t sub_252F37D5C()
{
  result = qword_27F576630;
  if (!qword_27F576630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576630);
  }

  return result;
}

unint64_t sub_252F37DB0()
{
  result = qword_27F576638;
  if (!qword_27F576638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576638);
  }

  return result;
}

uint64_t sub_252F37E40@<X0>(uint64_t *a1@<X8>)
{
  result = IconConfiguration.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252F37E94(uint64_t a1)
{
  sub_252F208D4(319, &qword_27F575F18, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_252F2800C(319, &qword_27F576228, &qword_27F5761B8, &qword_252F55E20);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_252F208D4(319, &qword_27F575F30, MEMORY[0x277D839B0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_252F208D4(319, &qword_27F576650, &type metadata for SnippetRenderingMode);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_252F2800C(319, &qword_27F576658, &qword_27F5765B8, &qword_252F55310);
      if (v9 > 0x3F)
      {
        return v6;
      }

      sub_252F2800C(319, &qword_27F576660, &qword_27F5765C0, &qword_252F55318);
      if (v10 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_252F3802C(319);
        v2 = v11;
        if (v12 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_252F3802C(uint64_t a1)
{
  if (!qword_27F576668)
  {
    type metadata accessor for DirectInvocationConfig(255);
    v1 = sub_252F53B5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F576668);
    }
  }
}

uint64_t getEnumTagSinglePayload for IconConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IconConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_252F381EC()
{
  result = qword_27F576670;
  if (!qword_27F576670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576670);
  }

  return result;
}

unint64_t sub_252F38244()
{
  result = qword_27F576678;
  if (!qword_27F576678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576678);
  }

  return result;
}

unint64_t sub_252F3829C()
{
  result = qword_27F576680;
  if (!qword_27F576680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576680);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_6@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;

  return sub_252F53C7C();
}

uint64_t OUTLINED_FUNCTION_3_7(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for IconConfiguration(0);
}

uint64_t OUTLINED_FUNCTION_8_4()
{
  *(v2 - 104) = v0;
  *(v2 - 96) = v1;
  return v2 - 104;
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_252F53C7C();
}

uint64_t OUTLINED_FUNCTION_16_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_252F530CC();
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return sub_252F530CC();
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_252F53C7C();
}

void *OUTLINED_FUNCTION_22()
{

  return sub_252F530BC();
}

uint64_t OUTLINED_FUNCTION_23()
{

  return type metadata accessor for IconConfiguration(0);
}

uint64_t OUTLINED_FUNCTION_28()
{

  return type metadata accessor for IconConfiguration(0);
}

void *OUTLINED_FUNCTION_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_252F530BC();
}

uint64_t OUTLINED_FUNCTION_30()
{

  return type metadata accessor for IconConfiguration(0);
}

uint64_t DisambiguationOption.action.setter()
{
  v0 = OUTLINED_FUNCTION_12_3();
  type metadata accessor for DisambiguationOption(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  return sub_252F5303C();
}

uint64_t DisambiguationOption.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DisambiguationOption.speechLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void (*DisambiguationOption.iconConfig.modify())()
{
  v0 = OUTLINED_FUNCTION_12_3();
  type metadata accessor for DisambiguationOption(v0);
  return nullsub_1;
}

uint64_t DisambiguationOption.action.getter()
{
  type metadata accessor for DisambiguationOption(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  return sub_252F5302C();
}

uint64_t (*DisambiguationOption.action.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for DisambiguationOption(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  v2[4] = sub_252F5301C();
  return sub_252F1EBA8;
}

unint64_t sub_252F38834@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252F1B4A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_252F38864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F1B4F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_252F38898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252F1B4A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252F388C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F38808();
  *a1 = result;
  return result;
}

uint64_t sub_252F388E8(uint64_t a1)
{
  v2 = sub_252F38E14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F38924(uint64_t a1)
{
  v2 = sub_252F38E14();

  return MEMORY[0x2821FE720](a1, v2);
}

void DisambiguationOption.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_20_1();
  v72 = v24;
  v27 = v26;
  v67 = v28;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_16();
  v68 = v29;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17_1();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_10(v31);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v32);
  v34 = &v63 - v33;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576688, &qword_252F55560);
  OUTLINED_FUNCTION_16();
  v69 = v35;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v36);
  v38 = &v63 - v37;
  v39 = type metadata accessor for DisambiguationOption(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_5_0();
  v43 = (v42 - v41);
  v45 = *(v44 + 24);
  v46 = type metadata accessor for IconConfiguration(0);
  v73 = v45;
  v74 = v43;
  __swift_storeEnumTagSinglePayload(v43 + v45, 1, 1, v46);
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_252F38E14();
  v47 = v72;
  sub_252F53CFC();
  if (v47)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
    sub_252F2E3C4(v74 + v73, &qword_27F576260, &qword_252F54AA0);
  }

  else
  {
    v66 = v39;
    v72 = v25;
    v48 = v69;
    v49 = v70;
    v50 = sub_252F53C0C();
    v51 = v38;
    v52 = v74;
    *v74 = v50;
    v52[1] = v53;
    v65 = v53;
    v52[2] = sub_252F53C0C();
    v52[3] = v54;
    sub_252F39128(&qword_27F575EC8, type metadata accessor for IconConfiguration, &protocol conformance descriptor for IconConfiguration);
    v63 = 0;
    v64 = v51;
    sub_252F53C2C();
    v55 = v27;
    v56 = v49;
    v57 = v72;
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v46);
    sub_252F39550(v34, v74 + v73, &qword_27F576260, &qword_252F54AA0);
    sub_252F2A098(&qword_27F576280, MEMORY[0x277D63230]);
    v58 = v71;
    v59 = v64;
    sub_252F53C2C();
    v60 = v68;
    sub_252F5302C();
    (*(v60 + 8))(v57, v56);
    sub_252F290F0();
    v61 = v74;
    sub_252F5300C();
    (*(v48 + 8))(v59, v58);
    OUTLINED_FUNCTION_2_7();
    sub_252F39C2C(v61, v67, v62);
    __swift_destroy_boxed_opaque_existential_1(v55);
    OUTLINED_FUNCTION_0_4();
    sub_252F39C88();
  }

  OUTLINED_FUNCTION_21_0();
}

unint64_t sub_252F38E14()
{
  result = qword_27F576690;
  if (!qword_27F576690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576690);
  }

  return result;
}

void DisambiguationOption.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_20_1();
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_16();
  v36 = v30;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19_1();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576698, &unk_252F55568);
  OUTLINED_FUNCTION_16();
  v35 = v33;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18_1();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_252F38E14();
  sub_252F53D0C();
  sub_252F53C5C();
  if (v24)
  {
  }

  sub_252F53C5C();
  type metadata accessor for DisambiguationOption(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  sub_252F29FE4();
  sub_252F53C7C();
  sub_252F5302C();
  sub_252F290F0();
  sub_252F5300C();
  sub_252F2A098(&qword_27F576298, MEMORY[0x277D63228]);
  sub_252F53C7C();
  (*(v36 + 8))(v25, v29);
  (*(v35 + 8))(v26, v32);
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_252F39128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_252F391A0@<X0>(uint64_t *a1@<X8>)
{
  result = DisambiguationOption.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t DisambiguationSnippetModel.displayText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v1;
}

uint64_t sub_252F39244(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return DisambiguationSnippetModel.displayText.setter(v1, v2);
}

uint64_t (*DisambiguationSnippetModel.displayText.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v2[4] = sub_252F530AC();
  return sub_252F20BA0;
}

uint64_t DisambiguationSnippetModel.options.getter()
{
  type metadata accessor for DisambiguationSnippetModel(0);
}

uint64_t sub_252F39350(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DisambiguationSnippetModel.options.setter()
{
  v2 = OUTLINED_FUNCTION_12_3();
  v3 = *(type metadata accessor for DisambiguationSnippetModel(v2) + 20);

  *(v1 + v3) = v0;
  return result;
}

void (*DisambiguationSnippetModel.options.modify())()
{
  v0 = OUTLINED_FUNCTION_12_3();
  type metadata accessor for DisambiguationSnippetModel(v0);
  return nullsub_1;
}

uint64_t sub_252F39488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_31(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_3_1();
  v6(v5);
  return v4;
}

uint64_t sub_252F39550(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_31(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_3_1();
  v6(v5);
  return v4;
}

void (*DisambiguationSnippetModel.defaultOption.modify())()
{
  v0 = OUTLINED_FUNCTION_12_3();
  type metadata accessor for DisambiguationSnippetModel(v0);
  return nullsub_1;
}

unint64_t sub_252F3960C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252F1B58C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_252F3963C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F1B5D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_252F39670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252F1B58C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252F39698@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F395E0();
  *a1 = result;
  return result;
}

uint64_t sub_252F396C0(uint64_t a1)
{
  v2 = sub_252F39B24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F396FC(uint64_t a1)
{
  v2 = sub_252F39B24();

  return MEMORY[0x2821FE720](a1, v2);
}

void DisambiguationSnippetModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_20_1();
  v25 = v24;
  v50 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A0, &qword_252F55578);
  OUTLINED_FUNCTION_10(v27);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v28);
  v30 = &v49 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A8, &unk_252F55580);
  OUTLINED_FUNCTION_16();
  v51 = v32;
  v52 = v31;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17_1();
  v34 = type metadata accessor for DisambiguationSnippetModel(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5_0();
  v38 = v37 - v36;
  v40 = *(v39 + 24);
  v41 = type metadata accessor for DisambiguationOption(0);
  v53 = v40;
  v54 = v38;
  __swift_storeEnumTagSinglePayload(v38 + v40, 1, 1, v41);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_252F39B24();
  sub_252F53CFC();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_252F2E3C4(v54 + v53, &qword_27F5766A0, &qword_252F55578);
  }

  else
  {
    v49 = v41;
    LOBYTE(v55) = 0;
    v55 = sub_252F53C0C();
    v56 = v42;
    v43 = v54;
    sub_252F5309C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766B8, &qword_252F56900);
    sub_252F39B78();
    sub_252F53C2C();
    *(v43 + *(v34 + 20)) = v55;
    LOBYTE(v55) = 2;
    sub_252F39128(&qword_27F5766C8, type metadata accessor for DisambiguationOption, &protocol conformance descriptor for DisambiguationOption);
    v44 = v49;
    sub_252F53C2C();
    v45 = OUTLINED_FUNCTION_9_4();
    v46(v45);
    v47 = v50;
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v44);
    v48 = v54;
    sub_252F39550(v30, v54 + v53, &qword_27F5766A0, &qword_252F55578);
    sub_252F39C2C(v48, v47, type metadata accessor for DisambiguationSnippetModel);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_252F39C88();
  }

  OUTLINED_FUNCTION_21_0();
}

unint64_t sub_252F39B24()
{
  result = qword_27F5766B0;
  if (!qword_27F5766B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5766B0);
  }

  return result;
}

unint64_t sub_252F39B78()
{
  result = qword_27F5766C0;
  if (!qword_27F5766C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5766B8, &qword_252F56900);
    sub_252F39128(&qword_27F5766C8, type metadata accessor for DisambiguationOption, &protocol conformance descriptor for DisambiguationOption);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5766C0);
  }

  return result;
}

uint64_t sub_252F39C2C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  v4 = OUTLINED_FUNCTION_3_1();
  v5(v4);
  return a2;
}

uint64_t sub_252F39C88()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2(v1);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t DisambiguationSnippetModel.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766D0, &qword_252F55590);
  OUTLINED_FUNCTION_16();
  v8 = v7;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F39B24();
  sub_252F53D0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  LOBYTE(v20) = 0;
  sub_252F53C5C();
  if (v2)
  {
    (*(v8 + 8))(v3, v6);
  }

  else
  {

    v11 = type metadata accessor for DisambiguationSnippetModel(0);
    v20 = *(v4 + *(v11 + 20));
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766B8, &qword_252F56900);
    v12 = sub_252F39EF4();
    OUTLINED_FUNCTION_30_0(&v20, &v19, v13, v14, v12);
    v15 = *(v11 + 24);
    LOBYTE(v20) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A0, &qword_252F55578);
    v16 = sub_252F39FA8();
    OUTLINED_FUNCTION_30_0(v4 + v15, &v20, v17, v18, v16);
    return (*(v8 + 8))(v3, v6);
  }
}

unint64_t sub_252F39EF4()
{
  result = qword_27F5766D8;
  if (!qword_27F5766D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5766B8, &qword_252F56900);
    sub_252F39128(&qword_27F5766E0, type metadata accessor for DisambiguationOption, "AH./4p");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5766D8);
  }

  return result;
}

unint64_t sub_252F39FA8()
{
  result = qword_27F5766E8;
  if (!qword_27F5766E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5766A0, &qword_252F55578);
    sub_252F39128(&qword_27F5766E0, type metadata accessor for DisambiguationOption, "AH./4p");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5766E8);
  }

  return result;
}

uint64_t sub_252F3A05C()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_1();
  v36 = type metadata accessor for DisambiguationOption(0);
  OUTLINED_FUNCTION_16();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A0, &qword_252F55578);
  OUTLINED_FUNCTION_10(v12);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_1();
  sub_252F53B8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  OUTLINED_FUNCTION_16_2();

  MEMORY[0x2530AF890](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  v14 = type metadata accessor for DisambiguationSnippetModel(0);
  v38 = *(v0 + *(v14 + 20));

  sub_252F3AB9C();
  v33 = v14;
  v34 = v1;
  v15 = *(v38 + 16);
  if (v15)
  {
    OUTLINED_FUNCTION_25_0(MEMORY[0x277D84F90]);
    v16 = v37;
    v17 = v38 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v35 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_2_7();
      sub_252F39C2C(v17, v11, v18);
      sub_252F53B8C();

      OUTLINED_FUNCTION_28_0();
      v39 = v19;
      MEMORY[0x2530AF890](*v11, v11[1]);
      OUTLINED_FUNCTION_13_4();
      MEMORY[0x2530AF890](v11[2], v11[3]);
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_24_0(v36);
      v20 = type metadata accessor for IconConfiguration(0);
      if (__swift_getEnumTagSinglePayload(v2, 1, v20) == 1)
      {
        sub_252F2E3C4(v2, &qword_27F576260, &qword_252F54AA0);
        v21 = 0xE300000000000000;
        v22 = 7104878;
      }

      else
      {
        v22 = IconConfiguration.description.getter();
        v21 = v23;
        OUTLINED_FUNCTION_7_6();
      }

      MEMORY[0x2530AF890](v22, v21);

      OUTLINED_FUNCTION_0_4();
      sub_252F39C88();
      v25 = *(v37 + 16);
      v24 = *(v37 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_252F3BEDC((v24 > 1), v25 + 1, 1);
      }

      *(v37 + 16) = v25 + 1;
      v26 = v37 + 16 * v25;
      *(v26 + 32) = v39;
      *(v26 + 40) = 0xE700000000000000;
      v17 += v35;
      --v15;
    }

    while (v15);

    v3 = v0;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v27 = MEMORY[0x2530AF920](v16, MEMORY[0x277D837D0]);
  v29 = v28;

  MEMORY[0x2530AF890](v27, v29);

  MEMORY[0x2530AF890](0xD000000000000011, 0x8000000252F584B0);
  sub_252F39488(v3 + *(v33 + 24), v34, &qword_27F5766A0, &qword_252F55578);
  if (__swift_getEnumTagSinglePayload(v34, 1, v36) == 1)
  {
    sub_252F2E3C4(v34, &qword_27F5766A0, &qword_252F55578);
    v30 = 0xE300000000000000;
    v31 = 7104878;
  }

  else
  {
    v31 = *v34;
    v30 = v34[1];

    OUTLINED_FUNCTION_0_4();
    sub_252F39C88();
  }

  MEMORY[0x2530AF890](v31, v30);

  return 0x5379616C70736964;
}

unint64_t DisambiguationSnippetModel.stringId.getter()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_1();
  v36 = type metadata accessor for DisambiguationOption(0);
  OUTLINED_FUNCTION_16();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A0, &qword_252F55578);
  OUTLINED_FUNCTION_10(v12);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_1();
  sub_252F53B8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  OUTLINED_FUNCTION_16_2();

  v14 = type metadata accessor for DisambiguationSnippetModel(0);
  v37 = *(v0 + *(v14 + 20));

  sub_252F3AB9C();
  v34 = v14;
  v15 = *(v37 + 16);
  if (v15)
  {
    v33 = v2;
    OUTLINED_FUNCTION_25_0(MEMORY[0x277D84F90]);
    v16 = v39;
    v17 = v37 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v35 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_2_7();
      sub_252F39C2C(v17, v11, v18);
      sub_252F53B8C();

      OUTLINED_FUNCTION_28_0();
      v38 = v19;
      MEMORY[0x2530AF890](*v11, v11[1]);
      OUTLINED_FUNCTION_13_4();
      MEMORY[0x2530AF890](v11[2], v11[3]);
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_24_0(v36);
      v20 = type metadata accessor for IconConfiguration(0);
      if (__swift_getEnumTagSinglePayload(v1, 1, v20) == 1)
      {
        sub_252F2E3C4(v1, &qword_27F576260, &qword_252F54AA0);
        v21 = 0xE300000000000000;
        v22 = 7104878;
      }

      else
      {
        v22 = IconConfiguration.description.getter();
        v21 = v23;
        OUTLINED_FUNCTION_7_6();
      }

      MEMORY[0x2530AF890](v22, v21);

      OUTLINED_FUNCTION_0_4();
      sub_252F39C88();
      v25 = *(v39 + 16);
      v24 = *(v39 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_252F3BEDC((v24 > 1), v25 + 1, 1);
      }

      *(v39 + 16) = v25 + 1;
      v26 = v39 + 16 * v25;
      *(v26 + 32) = v38;
      *(v26 + 40) = 0xE700000000000000;
      v17 += v35;
      --v15;
    }

    while (v15);

    v2 = v33;
    v3 = v0;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v27 = MEMORY[0x2530AF920](v16, MEMORY[0x277D837D0]);
  v29 = v28;

  MEMORY[0x2530AF890](v27, v29);

  OUTLINED_FUNCTION_16_2();

  sub_252F53B8C();

  sub_252F39488(v3 + *(v34 + 24), v2, &qword_27F5766A0, &qword_252F55578);
  if (__swift_getEnumTagSinglePayload(v2, 1, v36) == 1)
  {
    sub_252F2E3C4(v2, &qword_27F5766A0, &qword_252F55578);
    v30 = 0xE300000000000000;
    v31 = 7104878;
  }

  else
  {
    v31 = *v2;
    v30 = v2[1];

    OUTLINED_FUNCTION_0_4();
    sub_252F39C88();
  }

  MEMORY[0x2530AF890](v31, v30);

  OUTLINED_FUNCTION_16_2();

  return 0xD000000000000010;
}

char *sub_252F3A9C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576768, &qword_252F559A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_252F3AAC8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for DisambiguationOption(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for DisambiguationOption(0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_252F3AB9C()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = type metadata accessor for DisambiguationOption(v1);
  OUTLINED_FUNCTION_10(v2);
  v4 = v3;
  v5 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_252F3C9C4(v5);
  }

  v6 = v5[2];
  v7[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v7[1] = v6;
  sub_252F3AC3C(v7);
  *v0 = v5;
}

void sub_252F3AC3C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (sub_252F53C8C() < v1)
  {
    if (v1 >= -1)
    {
      v2 = v1 / 2;
      if (v1 <= 1)
      {
        v3 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DisambiguationOption(0);
        v3 = sub_252F53A8C();
        *(v3 + 16) = v2;
      }

      v4 = type metadata accessor for DisambiguationOption(0);
      OUTLINED_FUNCTION_10(v4);
      v6[0] = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v6[1] = v2;
      sub_252F3AFB4(v6);
      *(v3 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v1 < 0)
  {
    goto LABEL_12;
  }

  if (v1)
  {
    sub_252F3AD68(0, v1);
  }
}

void sub_252F3AD68(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v36 = type metadata accessor for DisambiguationOption(0);
  v10 = MEMORY[0x28223BE20](v36);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v28 - v14);
  MEMORY[0x28223BE20](v13);
  v18 = (&v28 - v17);
  v30 = v7;
  if (v5 != v7)
  {
    v19 = *v3;
    v20 = *(v16 + 72);
    v21 = *v3 + v20 * (v5 - 1);
    v22 = -v20;
    v23 = v9 - v5;
    v35 = v19;
    v29 = v20;
    v24 = v19 + v20 * v5;
    while (2)
    {
      v33 = v21;
      v34 = v5;
      v31 = v24;
      v32 = v23;
      while (1)
      {
        sub_252F39C2C(v24, v18, type metadata accessor for DisambiguationOption);
        sub_252F39C2C(v21, v15, type metadata accessor for DisambiguationOption);
        if (*v18 == *v15 && v18[1] == v15[1])
        {
          break;
        }

        v26 = sub_252F53CAC();
        OUTLINED_FUNCTION_5_5();
        sub_252F39C88();
        sub_252F39C88();
        if (v26)
        {
          if (!v35)
          {
            __break(1u);
            return;
          }

          sub_252F3C9D8(v24, v12);
          swift_arrayInitWithTakeFrontToBack();
          sub_252F3C9D8(v12, v21);
          v21 += v22;
          v24 += v22;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_252F39C88();
      sub_252F39C88();
LABEL_14:
      v5 = v34 + 1;
      v21 = v33 + v29;
      v23 = v32 - 1;
      v24 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void sub_252F3AFB4(uint64_t a1)
{
  OUTLINED_FUNCTION_20_1();
  v144 = v1;
  v3 = v2;
  v5 = v4;
  v130 = v6;
  v146 = type metadata accessor for DisambiguationOption(0);
  OUTLINED_FUNCTION_16();
  v137 = v7;
  MEMORY[0x28223BE20](v8);
  v134 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23_0();
  v145 = v11;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_23_0();
  v147 = v13;
  OUTLINED_FUNCTION_13();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v126 - v16);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_23_0();
  v143 = v18;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_23_0();
  v142 = v20;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_23_0();
  v129 = v22;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v23);
  v128 = (&v126 - v24);
  v140 = v5;
  v25 = v5[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_112:
    v26 = *v130;
    if (!*v130)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v118 = (v27 + 16);
      for (i = *(v27 + 16); i >= 2; *v118 = i)
      {
        if (!*v140)
        {
          goto LABEL_149;
        }

        v120 = (v27 + 16 * i);
        v121 = *v120;
        v122 = &v118[2 * i];
        v123 = v122[1];
        v124 = v144;
        sub_252F3B8EC(*v140 + *(v137 + 72) * *v120, *v140 + *(v137 + 72) * *v122, *v140 + *(v137 + 72) * v123, v26, v114, v115, v116, v117, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
        v144 = v124;
        if (v124)
        {
          break;
        }

        if (v123 < v121)
        {
          goto LABEL_137;
        }

        if (i - 2 >= *v118)
        {
          goto LABEL_138;
        }

        *v120 = v121;
        v120[1] = v123;
        v125 = *v118 - i;
        if (*v118 < i)
        {
          goto LABEL_139;
        }

        i = *v118 - 1;
        memmove(v122, v122 + 2, 16 * v125);
      }

LABEL_110:

      OUTLINED_FUNCTION_21_0();
      return;
    }

LABEL_146:
    v27 = sub_252F3BDE8(v27);
    goto LABEL_114;
  }

  v126 = v3;
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v139 = v17;
  while (1)
  {
    v28 = v26++;
    v133 = v28;
    if (v26 < v25)
    {
      v135 = v25;
      v29 = *v140;
      v30 = *(v137 + 72);
      v31 = v128;
      sub_252F39C2C(*v140 + v30 * v26, v128, type metadata accessor for DisambiguationOption);
      v138 = v30;
      v32 = v29 + v30 * v28;
      v33 = v129;
      sub_252F39C2C(v32, v129, type metadata accessor for DisambiguationOption);
      if (*v31 == *v33 && v31[1] == v33[1])
      {
        LODWORD(v136) = 0;
      }

      else
      {
        LODWORD(v136) = sub_252F53CAC();
      }

      v127 = v27;
      OUTLINED_FUNCTION_5_5();
      sub_252F39C88();
      sub_252F39C88();
      v35 = v133 + 2;
      v36 = v138 * (v133 + 2);
      v37 = v29 + v36;
      v38 = v26;
      v39 = v138 * v26;
      v40 = v29 + v138 * v26;
      do
      {
        v41 = v35;
        v42 = v38;
        v26 = v39;
        v27 = v36;
        if (v35 >= v135)
        {
          break;
        }

        v141 = v35;
        v43 = v142;
        sub_252F39C2C(v37, v142, type metadata accessor for DisambiguationOption);
        v44 = v143;
        sub_252F39C2C(v40, v143, type metadata accessor for DisambiguationOption);
        v45 = *v43 == *v44 && v43[1] == v44[1];
        v46 = v45 ? 0 : sub_252F53CAC();
        v41 = v141;
        OUTLINED_FUNCTION_6_4();
        sub_252F39C88();
        sub_252F39C88();
        v35 = v41 + 1;
        v17 = v139;
        v37 += v138;
        v40 += v138;
        v38 = v42 + 1;
        v39 = v26 + v138;
        v36 = v27 + v138;
      }

      while (((v136 ^ v46) & 1) == 0);
      if (v136)
      {
        v28 = v133;
        if (v41 < v133)
        {
          goto LABEL_143;
        }

        if (v133 < v41)
        {
          v47 = v133 * v138;
          v48 = v133;
          do
          {
            if (v48 != v42)
            {
              v49 = *v140;
              if (!*v140)
              {
                goto LABEL_150;
              }

              sub_252F3C9D8(v49 + v47, v134);
              v50 = v47 < v26 || v49 + v47 >= (v49 + v27);
              if (v50)
              {
                OUTLINED_FUNCTION_26_0();
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v47 != v26)
              {
                OUTLINED_FUNCTION_26_0();
                swift_arrayInitWithTakeBackToFront();
              }

              sub_252F3C9D8(v134, v49 + v26);
              v28 = v133;
            }

            ++v48;
            v26 -= v138;
            v27 -= v138;
            v47 += v138;
            v51 = v48 < v42--;
          }

          while (v51);
        }

        v26 = v41;
        v27 = v127;
      }

      else
      {
        v26 = v41;
        v27 = v127;
        v28 = v133;
      }
    }

    v52 = v140[1];
    if (v26 < v52)
    {
      if (__OFSUB__(v26, v28))
      {
        goto LABEL_142;
      }

      if (v26 - v28 < v126)
      {
        break;
      }
    }

LABEL_59:
    if (v26 < v28)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_252F3A9C8(0, *(v27 + 16) + 1, 1, v27);
    }

    v70 = *(v27 + 16);
    v69 = *(v27 + 24);
    v71 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      v27 = sub_252F3A9C8((v69 > 1), v70 + 1, 1, v27);
    }

    *(v27 + 16) = v71;
    v72 = v27 + 32;
    v73 = (v27 + 32 + 16 * v70);
    *v73 = v28;
    v73[1] = v26;
    v141 = *v130;
    if (!v141)
    {
      goto LABEL_151;
    }

    if (v70)
    {
      while (1)
      {
        v74 = v71 - 1;
        v75 = (v72 + 16 * (v71 - 1));
        v76 = (v27 + 16 * v71);
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v77 = *(v27 + 32);
          v78 = *(v27 + 40);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_79:
          if (v80)
          {
            goto LABEL_128;
          }

          v92 = *v76;
          v91 = v76[1];
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_131;
          }

          v96 = v75[1];
          v97 = v96 - *v75;
          if (__OFSUB__(v96, *v75))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v94, v97))
          {
            goto LABEL_136;
          }

          if (v94 + v97 >= v79)
          {
            if (v79 < v97)
            {
              v74 = v71 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v71 < 2)
        {
          goto LABEL_130;
        }

        v99 = *v76;
        v98 = v76[1];
        v87 = __OFSUB__(v98, v99);
        v94 = v98 - v99;
        v95 = v87;
LABEL_94:
        if (v95)
        {
          goto LABEL_133;
        }

        v101 = *v75;
        v100 = v75[1];
        v87 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v87)
        {
          goto LABEL_135;
        }

        if (v102 < v94)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v74 - 1 >= v71)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v140)
        {
          goto LABEL_148;
        }

        v106 = v26;
        v107 = v27;
        v108 = (v72 + 16 * (v74 - 1));
        v109 = *v108;
        v110 = v72;
        v111 = v74;
        v112 = (v72 + 16 * v74);
        v27 = v112[1];
        v113 = v144;
        sub_252F3B8EC(*v140 + *(v137 + 72) * *v108, *v140 + *(v137 + 72) * *v112, *v140 + *(v137 + 72) * v27, v141, v65, v66, v67, v68, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
        v144 = v113;
        if (v113)
        {
          goto LABEL_110;
        }

        if (v27 < v109)
        {
          goto LABEL_123;
        }

        v26 = *(v107 + 16);
        if (v111 > v26)
        {
          goto LABEL_124;
        }

        *v108 = v109;
        v108[1] = v27;
        if (v111 >= v26)
        {
          goto LABEL_125;
        }

        v71 = v26 - 1;
        memmove(v112, v112 + 2, 16 * (v26 - 1 - v111));
        v27 = v107;
        *(v107 + 16) = v26 - 1;
        v51 = v26 > 2;
        v26 = v106;
        v72 = v110;
        v17 = v139;
        if (!v51)
        {
          goto LABEL_108;
        }
      }

      v81 = v72 + 16 * v71;
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_126;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_127;
      }

      v88 = v76[1];
      v89 = v88 - *v76;
      if (__OFSUB__(v88, *v76))
      {
        goto LABEL_129;
      }

      v87 = __OFADD__(v79, v89);
      v90 = v79 + v89;
      if (v87)
      {
        goto LABEL_132;
      }

      if (v90 >= v84)
      {
        v104 = *v75;
        v103 = v75[1];
        v87 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v87)
        {
          goto LABEL_140;
        }

        if (v79 < v105)
        {
          v74 = v71 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v25 = v140[1];
    if (v26 >= v25)
    {
      goto LABEL_112;
    }
  }

  v53 = v28 + v126;
  if (__OFADD__(v28, v126))
  {
    goto LABEL_144;
  }

  if (v53 >= v52)
  {
    v53 = v140[1];
  }

  if (v53 < v28)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v26 == v53)
  {
    goto LABEL_59;
  }

  v127 = v27;
  v54 = *v140;
  v55 = *(v137 + 72);
  v56 = *v140 + v55 * (v26 - 1);
  v57 = -v55;
  v58 = v28 - v26;
  v131 = v55;
  v132 = v53;
  v59 = v54 + v26 * v55;
LABEL_46:
  v141 = v26;
  v135 = v59;
  v136 = v58;
  v60 = v59;
  v138 = v56;
  v61 = v56;
  while (1)
  {
    sub_252F39C2C(v60, v17, type metadata accessor for DisambiguationOption);
    sub_252F39C2C(v61, v147, type metadata accessor for DisambiguationOption);
    if (*v17 == *v147 && v17[1] == v147[1])
    {
      sub_252F39C88();
      sub_252F39C88();
LABEL_57:
      v26 = v141 + 1;
      v56 = v138 + v131;
      v58 = v136 - 1;
      v59 = v135 + v131;
      if (v141 + 1 == v132)
      {
        v26 = v132;
        v27 = v127;
        v28 = v133;
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    v63 = sub_252F53CAC();
    OUTLINED_FUNCTION_6_4();
    sub_252F39C88();
    sub_252F39C88();
    if ((v63 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (!v54)
    {
      break;
    }

    v64 = v145;
    sub_252F3C9D8(v60, v145);
    swift_arrayInitWithTakeFrontToBack();
    sub_252F3C9D8(v64, v61);
    v61 += v57;
    v60 += v57;
    v50 = __CFADD__(v58++, 1);
    if (v50)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

void sub_252F3B8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_1();
  a19 = v21;
  a20 = v22;
  v71 = v20;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v77 = type metadata accessor for DisambiguationOption(0);
  v31 = MEMORY[0x28223BE20](v77);
  v76 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v75 = (&v70 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = (&v70 - v36);
  MEMORY[0x28223BE20](v35);
  v39 = (&v70 - v38);
  v41 = *(v40 + 72);
  if (!v41)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v42 = v28 - v30;
  v43 = v28 - v30 == 0x8000000000000000 && v41 == -1;
  if (v43)
  {
    goto LABEL_72;
  }

  v44 = v26 - v28;
  if (v26 - v28 == 0x8000000000000000 && v41 == -1)
  {
    goto LABEL_73;
  }

  v46 = v42 / v41;
  a10 = v30;
  v79 = v24;
  v47 = v44 / v41;
  if (v42 / v41 < v44 / v41)
  {
    sub_252F3AAC8(v30, v42 / v41, v24);
    v48 = v24 + v46 * v41;
    v78 = v48;
    while (1)
    {
      if (v24 >= v48 || v28 >= v26)
      {
        goto LABEL_70;
      }

      sub_252F39C2C(v28, v39, type metadata accessor for DisambiguationOption);
      sub_252F39C2C(v24, v37, type metadata accessor for DisambiguationOption);
      if (*v39 == *v37 && v39[1] == v37[1])
      {
        sub_252F39C88();
        sub_252F39C88();
      }

      else
      {
        LODWORD(v76) = sub_252F53CAC();
        sub_252F39C88();
        sub_252F39C88();
        if (v76)
        {
          if (v30 < v28 || v30 >= v28 + v41)
          {
            OUTLINED_FUNCTION_10_3();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v30 != v28)
          {
            OUTLINED_FUNCTION_10_3();
            swift_arrayInitWithTakeBackToFront();
          }

          v28 += v41;
          goto LABEL_40;
        }
      }

      if (v30 < v24 || v30 >= v24 + v41)
      {
        OUTLINED_FUNCTION_10_3();
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v30 != v24)
      {
        OUTLINED_FUNCTION_10_3();
        swift_arrayInitWithTakeBackToFront();
      }

      v79 = v24 + v41;
      v24 += v41;
LABEL_40:
      v30 += v41;
      a10 = v30;
    }
  }

  sub_252F3AAC8(v28, v44 / v41, v24);
  v53 = v28;
  v54 = v24 + v47 * v41;
  v55 = -v41;
  v56 = v54;
  v74 = -v41;
LABEL_42:
  v73 = v53;
  v57 = v53 + v55;
  v58 = v26;
  v70 = v56;
  while (1)
  {
    if (v54 <= v24)
    {
      a10 = v73;
      v78 = v56;
      goto LABEL_70;
    }

    if (v73 <= v30)
    {
      break;
    }

    v72 = v56;
    v59 = v54 + v55;
    v60 = v75;
    sub_252F39C2C(v54 + v55, v75, type metadata accessor for DisambiguationOption);
    v61 = v57;
    v62 = v57;
    v63 = v76;
    sub_252F39C2C(v62, v76, type metadata accessor for DisambiguationOption);
    if (*v60 == *v63 && v60[1] == v63[1])
    {
      v65 = 0;
    }

    else
    {
      v65 = sub_252F53CAC();
    }

    v26 = v58 + v74;
    sub_252F39C88();
    sub_252F39C88();
    if (v65)
    {
      v67 = v58 < v73 || v26 >= v73;
      v68 = v61;
      if (v67)
      {
        OUTLINED_FUNCTION_10_3();
        swift_arrayInitWithTakeFrontToBack();
        v53 = v61;
        v56 = v72;
        v55 = v74;
      }

      else
      {
        v69 = v72;
        v56 = v72;
        v53 = v68;
        v55 = v74;
        if (v58 != v73)
        {
          OUTLINED_FUNCTION_10_3();
          swift_arrayInitWithTakeBackToFront();
          v53 = v68;
          v56 = v69;
        }
      }

      goto LABEL_42;
    }

    v66 = v58 < v54 || v26 >= v54;
    v57 = v61;
    if (v66)
    {
      OUTLINED_FUNCTION_10_3();
      swift_arrayInitWithTakeFrontToBack();
      v58 = v26;
      v54 = v59;
      v56 = v59;
      v55 = v74;
    }

    else
    {
      v56 = v59;
      v43 = v54 == v58;
      v58 = v26;
      v54 = v59;
      v55 = v74;
      if (!v43)
      {
        OUTLINED_FUNCTION_10_3();
        swift_arrayInitWithTakeBackToFront();
        v58 = v26;
        v54 = v59;
        v56 = v59;
      }
    }
  }

  a10 = v73;
  v78 = v70;
LABEL_70:
  sub_252F3BDFC(&a10, &v79, &v78);
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_252F3BDFC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for DisambiguationOption(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_252F3BEDC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_252F3C708(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_252F3BFB4(uint64_t a1)
{
  sub_252F3C0A8(319, &qword_27F5762D0, type metadata accessor for IconConfiguration, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252F3C0A8(319, &qword_27F5762C8, sub_252F290F0, MEMORY[0x277D63220]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252F3C0A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_252F3C134(uint64_t a1)
{
  sub_252F27FBC();
  if (v1 <= 0x3F)
  {
    sub_252F3C0A8(319, &qword_27F576720, type metadata accessor for DisambiguationOption, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_252F3C0A8(319, &qword_27F576728, type metadata accessor for DisambiguationOption, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for DisambiguationSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DisambiguationSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisambiguationOption.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DisambiguationOption.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_252F3C4FC()
{
  result = qword_27F576730;
  if (!qword_27F576730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576730);
  }

  return result;
}

unint64_t sub_252F3C554()
{
  result = qword_27F576738;
  if (!qword_27F576738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576738);
  }

  return result;
}

unint64_t sub_252F3C5AC()
{
  result = qword_27F576740;
  if (!qword_27F576740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576740);
  }

  return result;
}

unint64_t sub_252F3C604()
{
  result = qword_27F576748;
  if (!qword_27F576748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576748);
  }

  return result;
}

unint64_t sub_252F3C65C()
{
  result = qword_27F576750;
  if (!qword_27F576750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576750);
  }

  return result;
}

unint64_t sub_252F3C6B4()
{
  result = qword_27F576758;
  if (!qword_27F576758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576758);
  }

  return result;
}

char *sub_252F3C708(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576760, &qword_252F55998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_252F3C810(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576770, &unk_252F559A8);
  v10 = *(type metadata accessor for DisambiguationOption(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DisambiguationOption(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_252F3AAC8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_252F3C9D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisambiguationOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return sub_252F39C88();
}

void OUTLINED_FUNCTION_13_4()
{

  JUMPOUT(0x2530AF890);
}

void OUTLINED_FUNCTION_14_2()
{

  JUMPOUT(0x2530AF890);
}

void OUTLINED_FUNCTION_16_2()
{

  JUMPOUT(0x2530AF890);
}

uint64_t OUTLINED_FUNCTION_24_0@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 + *(a1 + 24);

  return sub_252F39488(v6, v3, v1, v2);
}

char *OUTLINED_FUNCTION_25_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;

  return sub_252F3BEDC(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_27_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_30_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_252F53C7C();
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t DirectInvocationConfig.action.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);

  return sub_252F5302C();
}

uint64_t DirectInvocationConfig.action.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);

  return sub_252F5303C();
}

void (*DirectInvocationConfig.action.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  v2[4] = sub_252F5301C();
  return sub_252F1EBAC;
}

uint64_t DirectInvocationConfig.id.getter()
{
  v0 = sub_252F52FEC();
  OUTLINED_FUNCTION_16();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252F52FDC();
  v6 = sub_252F52FCC();
  (*(v2 + 8))(v5, v0);
  return v6;
}

BOOL sub_252F3CEC4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252F1BA5C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_252F3CEF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F3CEA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_252F3CF24@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252F1BA5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252F3CF6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F3CE98();
  *a1 = result & 1;
  return result;
}

uint64_t sub_252F3CF98(uint64_t a1)
{
  v2 = sub_252F3D2F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F3CFD4(uint64_t a1)
{
  v2 = sub_252F3D2F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DirectInvocationConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_16();
  v20 = v4;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576778, &qword_252F559B8);
  OUTLINED_FUNCTION_16();
  v22 = v9;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for DirectInvocationConfig(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F3D2F0();
  v16 = v23;
  sub_252F53CFC();
  if (!v16)
  {
    v17 = v22;
    sub_252F2A098(&qword_27F576280, MEMORY[0x277D63230]);
    sub_252F53C2C();
    sub_252F5302C();
    (*(v20 + 8))(v7, v3);
    sub_252F290F0();
    sub_252F5300C();
    (*(v17 + 8))(v12, v8);
    sub_252F3D344(v15, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for DirectInvocationConfig(uint64_t a1)
{
  result = qword_27F576790;
  if (!qword_27F576790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_252F3D2F0()
{
  result = qword_27F576780;
  if (!qword_27F576780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576780);
  }

  return result;
}

uint64_t sub_252F3D344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectInvocationConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DirectInvocationConfig.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_16();
  v15 = v3;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576788, &qword_252F559C0);
  OUTLINED_FUNCTION_16();
  v9 = v8;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F3D2F0();
  sub_252F53D0C();
  sub_252F5302C();
  sub_252F290F0();
  sub_252F5300C();
  sub_252F2A098(&qword_27F576298, MEMORY[0x277D63228]);
  sub_252F53C7C();
  (*(v15 + 8))(v6, v2);
  return (*(v9 + 8))(v12, v7);
}

uint64_t DirectInvocationConfig.Builder.build()()
{
  v1 = *v0;
  sub_252F290F0();
  v2 = v1;

  return sub_252F5300C();
}

uint64_t sub_252F3D644@<X0>(uint64_t *a1@<X8>)
{
  result = DirectInvocationConfig.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_252F3D694(uint64_t a1)
{
  sub_252F3D700(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_252F3D700(uint64_t a1)
{
  if (!qword_27F5762C8)
  {
    sub_252F290F0();
    v1 = sub_252F5304C();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5762C8);
    }
  }
}

uint64_t sub_252F3D764(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_252F3D7A4(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DirectInvocationConfig.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for DirectInvocationConfig.CodingKeys(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
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
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_252F3D8FC()
{
  result = qword_27F5767A0;
  if (!qword_27F5767A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5767A0);
  }

  return result;
}

unint64_t sub_252F3D954()
{
  result = qword_27F5767A8;
  if (!qword_27F5767A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5767A8);
  }

  return result;
}

unint64_t sub_252F3D9AC()
{
  result = qword_27F5767B0;
  if (!qword_27F5767B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5767B0);
  }

  return result;
}

HomeAutomationUIFramework::SnippetState_optional __swiftcall SnippetState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252F53BDC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SnippetState.rawValue.getter()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 0x64656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

uint64_t sub_252F3DAD0@<X0>(uint64_t *a1@<X8>)
{
  result = SnippetState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252F3DAF8(uint64_t a1, char *a2, char a3, char a4)
{
  v7 = *a2;
  sub_252F3EAE4(a1, v4 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_iconConfig);
  *(v4 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state) = v7;
  *(v4 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_inProgress) = a3;
  *(v4 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_noCircle) = a4;
  return v4;
}

uint64_t sub_252F3DB60@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state))
  {
    if (*(v1 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state) == 1)
    {
      v3 = OUTLINED_FUNCTION_3_8();
    }

    else
    {
      v3 = OUTLINED_FUNCTION_5_6();
    }

    v4 = OUTLINED_FUNCTION_2_8(v3);

    if ((v4 & 1) == 0)
    {
      v6 = "";
      v7 = MEMORY[0x277CDF3C0];
      v8 = 0xD00000000000001ALL;
      v5 = 0xD00000000000001ALL;
      if (qword_27F575E10 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v5 = 0xD00000000000001BLL;
  v6 = "ionStyleSettings.swift";
  v7 = MEMORY[0x277CDF3D0];
  if (qword_27F575E10 == -1)
  {
    goto LABEL_10;
  }

  v8 = 0xD00000000000001BLL;
LABEL_13:
  OUTLINED_FUNCTION_3(&qword_27F575E10);
  v5 = v8;
LABEL_10:
  v9 = sub_252F5316C();
  __swift_project_value_buffer(v9, qword_27F57B800);
  v10._object = (v6 | 0x8000000000000000);
  v11._countAndFlagsBits = 0xD000000000000076;
  v11._object = 0x8000000252F58550;
  v10._countAndFlagsBits = v5;
  Logger.debug(output:test:caller:)(v10, 0, v11);
  v12 = *v7;
  sub_252F531EC();
  OUTLINED_FUNCTION_1();
  v15 = *(v14 + 104);

  return v15(a1, v12, v13);
}

uint64_t sub_252F3DCD8@<X0>(uint64_t *a1@<X8>)
{
  if (!*(v1 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state))
  {

LABEL_7:
    if (qword_27F575E10 != -1)
    {
      OUTLINED_FUNCTION_3(&qword_27F575E10);
    }

    v5 = sub_252F5316C();
    __swift_project_value_buffer(v5, qword_27F57B800);
    OUTLINED_FUNCTION_6_5(0xD000000000000023, "rk material for background.");
    *a1 = sub_252F5369C();
    v6 = MEMORY[0x277D63BB0];
    goto LABEL_13;
  }

  if (*(v1 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state) == 1)
  {
    v3 = OUTLINED_FUNCTION_3_8();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_5_6();
  }

  v4 = OUTLINED_FUNCTION_2_8(v3);

  if (v4)
  {
    goto LABEL_7;
  }

  if (qword_27F575E10 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_27F575E10);
  }

  v7 = sub_252F5316C();
  __swift_project_value_buffer(v7, qword_27F57B800);
  OUTLINED_FUNCTION_6_5(0xD00000000000002BLL, "Picking light color scheme.");
  v8 = *MEMORY[0x277D63BA0];
  sub_252F5382C();
  OUTLINED_FUNCTION_1();
  (*(v9 + 104))(a1, v8);
  v6 = MEMORY[0x277D63BC0];
LABEL_13:
  v10 = *v6;
  sub_252F5383C();
  OUTLINED_FUNCTION_1();
  v13 = *(v12 + 104);

  return v13(a1, v10, v11);
}

uint64_t sub_252F3DEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for IconConfiguration(0);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  sub_252F37538(v3 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_iconConfig, v9 - v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  sub_252F530BC();
  sub_252F3759C(v10);
  if (v17 == 48)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252F4D94C();
  }

  v12 = sub_252F52FFC();
  OUTLINED_FUNCTION_1();
  v14 = *(v13 + 104);
  if (a3 == 1)
  {
    v14(a1, *MEMORY[0x277D62B38], v12);
    if (v11)
    {
      v15 = MEMORY[0x277D62B30];
    }

    else
    {
      v15 = MEMORY[0x277D62B28];
    }
  }

  else if (a3 == 4)
  {
    v14(a1, *MEMORY[0x277D62AA8], v12);
    v15 = MEMORY[0x277D62A90];
  }

  else
  {
    v14(a1, *MEMORY[0x277D62B30], v12);
    v15 = MEMORY[0x277D62B18];
  }

  return (v14)(a2, *v15, v12);
}

uint64_t sub_252F3E064()
{
  if (*(v0 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_noCircle))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_252F3E088(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  switch(v3)
  {
    case 18:
      v4 = sub_252F5362C();
      sub_252F5367C();
      v5 = sub_252F5362C();
LABEL_7:
      v6 = v5;
      if (*(v2 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_noCircle) == 1)
      {
      }

      else
      {

        return v4;
      }

      return v6;
    case 35:
      v4 = sub_252F5369C();
      sub_252F5364C();
      v5 = sub_252F5364C();
      goto LABEL_7;
    case 39:
      v4 = sub_252F5361C();
      sub_252F5367C();
      v5 = sub_252F5361C();
      goto LABEL_7;
  }

  v6 = a2;
  if (*(v2 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_noCircle) == 1)
  {
  }

  else
  {
    v8 = *(v2 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_inProgress);
    v9 = sub_252F5369C();
    if (v8 == 1)
    {
      v10 = sub_252F536EC();

      v9 = v10;
    }

    return v9;
  }

  return v6;
}

uint64_t sub_252F3E1C0()
{
  type metadata accessor for IconConfiguration(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_0();
  v4 = v3 - v2;
  v5 = OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_iconConfig;
  sub_252F37538(v0 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_iconConfig, v3 - v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
  sub_252F530BC();
  sub_252F3759C(v4);
  sub_252F37538(v0 + v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  sub_252F3759C(v4);
  v6 = OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state;
  if (*(v0 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state))
  {
    if (*(v0 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state) != 1)
    {

LABEL_10:

      if (*(v0 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_noCircle))
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    v14 = v15[0];
    OUTLINED_FUNCTION_3_8();
  }

  else
  {
    v14 = v15[0];
  }

  v7 = 0x64656C696166;
  v8 = sub_252F53CAC();

  if (v8)
  {
    goto LABEL_10;
  }

  sub_252F37538(v0 + v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  sub_252F530BC();
  sub_252F3759C(v4);
  v9 = static ColorUtils.getColor(colorString:colorDict:)(v14, v15[1], v15[0]);

  if (!*(v0 + v6))
  {

LABEL_15:
    v10 = sub_252F3E088(v15, v9);
LABEL_25:

    return v10;
  }

  if (*(v0 + v6) == 1)
  {
    v7 = 6710895;
  }

  v11 = OUTLINED_FUNCTION_2_8(v7);

  if (v11)
  {
    goto LABEL_15;
  }

  switch(LOBYTE(v15[0]))
  {
    case 0x12u:
      v10 = sub_252F5362C();
      sub_252F5367C();
      sub_252F5362C();
      goto LABEL_24;
    case 0x23u:
      v10 = sub_252F5369C();
      if (qword_27F575E28 != -1)
      {
        swift_once();
      }

      sub_252F5361C();
      goto LABEL_24;
    case 0x27u:
      sub_252F5369C();
      v10 = sub_252F536EC();

      sub_252F5367C();
      sub_252F5369C();
      sub_252F536EC();

LABEL_24:

      goto LABEL_25;
  }

  if (*(v0 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_noCircle) != 1 && *(v0 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_inProgress) == 1)
  {
    v13 = sub_252F5369C();

    return v13;
  }

  return v9;
}

uint64_t sub_252F3E55C@<X0>(char *a1@<X8>)
{
  type metadata accessor for IconConfiguration(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v6 = v5 - v4;
  v7 = OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_iconConfig;
  sub_252F37538(v1 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_iconConfig, v5 - v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  sub_252F530BC();
  sub_252F3759C(v6);
  v8 = OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state;
  if (*(v1 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state))
  {
    if (*(v1 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state) == 1)
    {
      v9 = OUTLINED_FUNCTION_3_8();
    }

    else
    {
      v9 = OUTLINED_FUNCTION_5_6();
    }

    v11 = OUTLINED_FUNCTION_2_8(v9);

    if ((v11 & 1) == 0)
    {
      if ((v17 | 4) != 0x27)
      {
LABEL_12:
        if (*(v1 + v8))
        {
          if (*(v1 + v8) == 1)
          {
            v13 = 6710895;
          }

          else
          {
            v13 = 0x64656C696166;
          }

          v14 = OUTLINED_FUNCTION_2_8(v13);

          if ((v14 & 1) == 0)
          {
            sub_252F37538(v1 + v7, v6);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
            sub_252F530BC();
            result = sub_252F3759C(v6);
            v12 = v16;
            goto LABEL_20;
          }
        }

        else
        {
        }

        sub_252F37538(v1 + v7, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
        sub_252F530BC();
        result = sub_252F3759C(v6);
        v12 = v15;
        goto LABEL_20;
      }

LABEL_11:
      v12 = 0;
      goto LABEL_20;
    }
  }

  else
  {
  }

  if (v17 == 39)
  {
    goto LABEL_11;
  }

  if (v17 != 35)
  {
    goto LABEL_12;
  }

  v12 = 2;
LABEL_20:
  *a1 = v12;
  return result;
}

uint64_t sub_252F3E764()
{
  v1 = type metadata accessor for IconConfiguration(0);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_5_0();
  v4 = v3 - v2;
  sub_252F37538(v0 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_iconConfig, v3 - v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  sub_252F3759C(v4);
  return v6;
}

uint64_t CompletionStyleSettings.__deallocating_deinit()
{
  sub_252F3759C(v0 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_iconConfig);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_252F3E8A4()
{
  result = qword_27F5767B8;
  if (!qword_27F5767B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5767B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SnippetState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for CompletionStyleSettings(uint64_t a1)
{
  result = qword_27F5767C0;
  if (!qword_27F5767C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F3EA28(uint64_t a1)
{
  result = type metadata accessor for IconConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_252F3EAE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1)
{

  return sub_252F53CAC();
}

void OUTLINED_FUNCTION_6_5(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 0xD000000000000076;

  v4 = a2 | 0x8000000000000000;
  v5 = v2 | 0x8000000000000000;
  Logger.debug(output:test:caller:)(*&a1, 0, *&v6);
}

uint64_t CallToActionView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for CallToActionView(0) + 20));
  sub_252F5394C();
  sub_252F3FB08(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *v4 = sub_252F5326C();
  v4[1] = v5;
  sub_252F3F804(a1, a2, type metadata accessor for CallToActionSnippetModel);
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v6 = sub_252F5316C();
  __swift_project_value_buffer(v6, qword_27F57B800);
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000033, 0x8000000252F57A40);
  v7 = CallToActionSnippetModel.description.getter();
  MEMORY[0x2530AF890](v7);

  v8._countAndFlagsBits = 0;
  v9._countAndFlagsBits = 0xD000000000000069;
  v9._object = 0x8000000252F57A80;
  v8._object = 0xE000000000000000;
  Logger.debug(output:test:caller:)(v8, 0, v9);

  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v10 = qword_27F57B818;
  sub_252F5313C();
  sub_252F53ADC();
  sub_252F5312C();

  return sub_252F3F7A8(a1);
}

uint64_t type metadata accessor for CallToActionView(uint64_t a1)
{
  result = qword_27F576800;
  if (!qword_27F576800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CallToActionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CallToActionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_252F3F804(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CallToActionView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_252F3F864(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5767D0, &qword_252F55D50);
  sub_252F3F938();
  sub_252F5381C();
  sub_252F3F804(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CallToActionView);
  v8 = swift_allocObject();
  sub_252F3F864(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5767F8, &qword_252F55D68);
  v10 = (a1 + *(result + 36));
  *v10 = sub_252F3FB50;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

uint64_t sub_252F3EFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252F5380C();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CallToActionView(0);
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576560, &qword_252F55D60);
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576828, &qword_252F55DF0);
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5767E8, &qword_252F55D58);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v37 = &v31 - v19;
  if (*(a1 + *(type metadata accessor for CallToActionSnippetModel(0) + 24)) == 1)
  {
    v32 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
    sub_252F530BC();
    sub_252F3F804(a1, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CallToActionView);
    v20 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v21 = swift_allocObject();
    sub_252F3F864(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    sub_252F30A14();
    sub_252F5379C();
    sub_252F533FC();
    sub_252F25B24(&qword_27F576568, &qword_27F576560, &qword_252F55D60, MEMORY[0x277CDF028]);
    sub_252F3FB08(&qword_27F5767F0, MEMORY[0x277D63B78], MEMORY[0x277D63B68]);
    v22 = v36;
    sub_252F5357C();
    (*(v35 + 8))(v6, v22);
    (*(v34 + 8))(v11, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576830, &qword_252F55DF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252F55D40;
    v24 = sub_252F5343C();
    *(inited + 32) = v24;
    v25 = sub_252F5345C();
    *(inited + 33) = v25;
    v26 = sub_252F5344C();
    sub_252F5344C();
    if (sub_252F5344C() != v24)
    {
      v26 = sub_252F5344C();
    }

    sub_252F5344C();
    if (sub_252F5344C() != v25)
    {
      v26 = sub_252F5344C();
    }

    v27 = v32;
    (*(v38 + 32))(v18, v14, v39);
    v28 = &v18[*(v15 + 36)];
    *v28 = v26;
    *(v28 + 8) = 0u;
    *(v28 + 24) = 0u;
    v28[40] = 1;
    v29 = v37;
    sub_252F1BD80(v18, v37);
    sub_252F1BD80(v29, v27);
    return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v15);
  }
}

void sub_252F3F568(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for CallToActionView(0) + 20));
  if (v1)
  {
    type metadata accessor for CallToActionSnippetModel(0);
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    v3 = sub_252F5302C();
    sub_252F5393C();
  }

  else
  {
    sub_252F5394C();
    sub_252F3FB08(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    sub_252F5325C();
    __break(1u);
  }
}

void sub_252F3F660(uint64_t a1)
{
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  type metadata accessor for CallToActionView(0);
  sub_252F53ACC();
  sub_252F5311C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v1 = sub_252F5316C();
  __swift_project_value_buffer(v1, qword_27F57B800);
  v2._object = 0x8000000252F58650;
  v3._countAndFlagsBits = 0xD000000000000069;
  v3._object = 0x8000000252F57A80;
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  Logger.debug(output:test:caller:)(v2, 0, v3);
}

uint64_t sub_252F3F7A8(uint64_t a1)
{
  v2 = type metadata accessor for CallToActionSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252F3F804(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_252F3F864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallToActionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F3F8C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CallToActionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_252F3EFD8(v4, a1);
}

unint64_t sub_252F3F938()
{
  result = qword_27F5767D8;
  if (!qword_27F5767D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5767D0, &qword_252F55D50);
    sub_252F3F9BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5767D8);
  }

  return result;
}

unint64_t sub_252F3F9BC()
{
  result = qword_27F5767E0;
  if (!qword_27F5767E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5767E8, &qword_252F55D58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576560, &qword_252F55D60);
    sub_252F5380C();
    sub_252F25B24(&qword_27F576568, &qword_27F576560, &qword_252F55D60, MEMORY[0x277CDF028]);
    sub_252F3FB08(&qword_27F5767F0, MEMORY[0x277D63B78], MEMORY[0x277D63B68]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5767E0);
  }

  return result;
}

uint64_t sub_252F3FB08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_252F3FBAC(uint64_t a1)
{
  type metadata accessor for CallToActionSnippetModel(319);
  if (v1 <= 0x3F)
  {
    sub_252F252C8(319);
    if (v2 <= 0x3F)
    {
      sub_252F5314C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_252F3FC48()
{
  result = qword_27F576810;
  if (!qword_27F576810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5767F8, &qword_252F55D68);
    sub_252F25B24(&qword_27F576818, &qword_27F576820, "vL", MEMORY[0x277D63B90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576810);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for CallToActionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 8))(v0 + v3);
  v6 = *(type metadata accessor for CallToActionSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_1();
  (*(v7 + 8))(v0 + v3 + v6);

  v8 = v1[8];
  sub_252F5314C();
  OUTLINED_FUNCTION_1();
  (*(v9 + 8))(v0 + v3 + v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252F3FE88(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CallToActionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t static ColorUtils.fromString(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_252F5399C();
  v6 = v5;
  if (qword_27F575E20 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_27F575E20);
  }

  v7 = sub_252F408DC(v4, v6, qword_27F57B840);
  if (!v7)
  {
    v7 = sub_252F40984(v4, v6);
  }

  v8 = v7;

  if (qword_27F575E10 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_27F575E10);
  }

  v9 = sub_252F5316C();
  __swift_project_value_buffer(v9, qword_27F57B800);
  sub_252F53B8C();

  MEMORY[0x2530AF890](a1, a2);
  MEMORY[0x2530AF890](540945696, 0xE400000000000000);
  v10 = sub_252F535CC();
  MEMORY[0x2530AF890](v10);

  MEMORY[0x2530AF890](46, 0xE100000000000000);
  v11._countAndFlagsBits = 0xD00000000000001ALL;
  v12._countAndFlagsBits = 0xD000000000000069;
  v12._object = 0x8000000252F586A0;
  v11._object = 0x8000000252F58680;
  Logger.debug(output:test:caller:)(v11, 0, v12);

  return v8;
}

uint64_t sub_252F40088(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      sub_252F5367C();
      break;
    case 1:
      sub_252F5369C();
      break;
    case 2:
      sub_252F5369C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5764F8, &unk_252F55120);
      sub_252F40E38();
      break;
    case 3:
      if (qword_27F575E28 != -1)
      {
        OUTLINED_FUNCTION_2_9(&qword_27F575E28);
      }

      goto LABEL_6;
    default:
LABEL_6:

      break;
  }

  return sub_252F5323C();
}

uint64_t SnippetRenderingMode.toUIMode()(uint64_t a1)
{
  switch(*v1)
  {
    case 1:
      result = sub_252F533AC();
      break;
    case 2:
      result = sub_252F5339C();
      break;
    case 3:
      result = sub_252F533CC();
      break;
    default:
      result = sub_252F533BC();
      break;
  }

  return result;
}

uint64_t static ColorUtils.getColor(colorString:colorDict:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27F575E10 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_27F575E10);
  }

  v6 = sub_252F5316C();
  __swift_project_value_buffer(v6, qword_27F57B800);
  sub_252F53B8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  v7 = sub_252F5398C();
  MEMORY[0x2530AF890](v7);

  MEMORY[0x2530AF890](46, 0xE100000000000000);
  OUTLINED_FUNCTION_7_7(0xD000000000000015, 0x8000000252F58710, v8, v9, 0x8000000252F586A0);

  if (a2)
  {

    if (sub_252F53A1C())
    {
      v10 = sub_252F535BC();
      if (v10)
      {
        v11 = v10;
        sub_252F53B8C();

        v12 = sub_252F535CC();
        MEMORY[0x2530AF890](v12);

        MEMORY[0x2530AF890](46, 0xE100000000000000);
        OUTLINED_FUNCTION_7_7(0xD000000000000013, 0x8000000252F58730, v13, v14, 0x8000000252F586A0);

        return v11;
      }
    }

    else
    {
    }
  }

  v15 = static ColorUtils.fromRGBDictionary(_:)(a3);
  if (!v15)
  {
    if (a2)
    {
      return static ColorUtils.fromString(_:)(a1, a2);
    }

    else
    {
      return sub_252F536BC();
    }
  }

  return v15;
}

uint64_t SnippetHomeDeviceType.onStateColorOverride.getter(uint64_t a1)
{
  v2 = *v1;
  switch(v2)
  {
    case 18:
      v3 = sub_252F5362C();
      sub_252F5367C();
      sub_252F5362C();
      break;
    case 35:
      v3 = sub_252F5369C();
      sub_252F5364C();
      sub_252F5364C();
      break;
    case 39:
      v3 = sub_252F5361C();
      sub_252F5367C();
      sub_252F5361C();
      break;
    default:
      return 0;
  }

  return v3;
}

uint64_t SnippetHomeDeviceType.offStateColorOverride.getter(uint64_t a1)
{
  v2 = *v1;
  switch(v2)
  {
    case 18:
      v3 = sub_252F5362C();
      sub_252F5367C();
      sub_252F5362C();
      break;
    case 35:
      v3 = sub_252F5369C();
      if (qword_27F575E28 != -1)
      {
        OUTLINED_FUNCTION_2_9(&qword_27F575E28);
      }

      sub_252F5361C();
      break;
    case 39:
      sub_252F5369C();
      v3 = sub_252F536EC();

      sub_252F5367C();
      sub_252F5369C();
      sub_252F536EC();

      break;
    default:
      return 0;
  }

  return v3;
}

void SnippetHomeDeviceType.onStateModeOverride.getter(char *a1@<X8>)
{
  v2 = *v1;
  if (v2 == 35)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 == 39)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a1 = v4;
}

uint64_t sub_252F4059C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576838, "xL");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252F55E10;
  *(inited + 32) = 0x6B63616C62;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_252F5365C();
  *(inited + 56) = 1702194274;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = sub_252F535FC();
  *(inited + 80) = 0x6E776F7262;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = sub_252F5366C();
  *(inited + 104) = 0x7261656C63;
  *(inited + 112) = 0xE500000000000000;
  *(inited + 120) = sub_252F5367C();
  *(inited + 128) = 1851881827;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = sub_252F5360C();
  *(inited + 152) = 2036429415;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = sub_252F5361C();
  *(inited + 176) = 0x6E65657267;
  *(inited + 184) = 0xE500000000000000;
  *(inited + 192) = sub_252F5368C();
  *(inited + 200) = 0x6F6769646E69;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 216) = sub_252F536AC();
  *(inited + 224) = 1953393005;
  *(inited + 232) = 0xE400000000000000;
  *(inited + 240) = sub_252F5362C();
  *(inited + 248) = 0x65676E61726FLL;
  *(inited + 256) = 0xE600000000000000;
  *(inited + 264) = sub_252F536BC();
  *(inited + 272) = 1802398064;
  *(inited + 280) = 0xE400000000000000;
  *(inited + 288) = sub_252F5363C();
  *(inited + 296) = 0x7972616D697270;
  *(inited + 304) = 0xE700000000000000;
  *(inited + 312) = sub_252F536FC();
  *(inited + 320) = 0x656C70727570;
  *(inited + 328) = 0xE600000000000000;
  *(inited + 336) = sub_252F536CC();
  *(inited + 344) = 6579570;
  *(inited + 352) = 0xE300000000000000;
  *(inited + 360) = sub_252F535EC();
  *(inited + 368) = 1818322292;
  *(inited + 376) = 0xE400000000000000;
  *(inited + 384) = sub_252F5364C();
  *(inited + 392) = 0x7261646E6F636573;
  *(inited + 400) = 0xE900000000000079;
  *(inited + 408) = sub_252F5370C();
  *(inited + 416) = 0x6574696877;
  *(inited + 424) = 0xE500000000000000;
  *(inited + 432) = sub_252F5369C();
  *(inited + 440) = 0x776F6C6C6579;
  *(inited + 448) = 0xE600000000000000;
  *(inited + 456) = sub_252F536DC();
  result = sub_252F5395C();
  qword_27F57B840 = result;
  return result;
}

uint64_t static ColorUtils.fromRGBDictionary(_:)(uint64_t a1)
{
  sub_252F535DC();
  OUTLINED_FUNCTION_3_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_5();
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_252F40C60(114, 0xE100000000000000);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_7();
  if (v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_5();
  if (v9)
  {
    return 0;
  }

  v11.n128_f64[0] = (*(v5 + 104))(v2, *MEMORY[0x277CE0EE0], v1);
  return OUTLINED_FUNCTION_6_6(v11, v12, v13, v14);
}

uint64_t sub_252F408DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_252F40C60(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_252F4092C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_252F40C60(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_252F40984(uint64_t a1, uint64_t a2)
{
  if (qword_27F575E20 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v2 = qword_27F57B840;
    v3 = qword_27F57B840 + 64;
    v4 = 1 << *(qword_27F57B840 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(qword_27F57B840 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      break;
    }

LABEL_6:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return sub_252F5365C();
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_16:
    OUTLINED_FUNCTION_1_3(&qword_27F575E20);
  }

  while (1)
  {
    v9 = v8;
LABEL_9:
    v10 = *(*(v2 + 56) + 8 * (__clz(__rbit64(v6)) | (v9 << 6)));
    sub_252F30A14();

    if (sub_252F53B6C())
    {
      break;
    }

    v6 &= v6 - 1;

    v8 = v9;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  return v10;
}

uint64_t Color.init(_:)(uint64_t a1)
{
  sub_252F535DC();
  OUTLINED_FUNCTION_3_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_5();
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16) || (sub_252F40C60(114, 0xE100000000000000), (v7 & 1) == 0) || (OUTLINED_FUNCTION_5_7(), (v8 & 1) != 0))
  {

    return 0;
  }

  OUTLINED_FUNCTION_8_5();
  v11 = v10;

  if (v11)
  {
    return 0;
  }

  v12.n128_f64[0] = (*(v5 + 104))(v2, *MEMORY[0x277CE0EE0], v1);
  return OUTLINED_FUNCTION_6_6(v12, v13, v14, v15);
}

uint64_t sub_252F40C1C(uint64_t a1)
{
  sub_252F5365C();
  v1 = sub_252F536EC();

  qword_27F57B848 = v1;
  return result;
}

unint64_t sub_252F40C60(uint64_t a1, uint64_t a2)
{
  sub_252F53CCC();
  sub_252F539BC();
  v4 = sub_252F53CEC();

  return sub_252F40D84(a1, a2, v4);
}

_BYTE *storeEnumTagSinglePayload for ColorUtils(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
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
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_252F40D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_252F53CAC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_252F40E38()
{
  result = qword_27F576500;
  if (!qword_27F576500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5764F8, &unk_252F55120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576500);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_7()
{

  return sub_252F4092C(103, 0xE100000000000000, v0);
}

uint64_t OUTLINED_FUNCTION_6_6(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  a4.n128_u64[0] = 1.0;
  a1.n128_u64[0] = v6;
  a2.n128_u64[0] = v7;
  a3.n128_u64[0] = v8;

  return MEMORY[0x282133528](v4, a1, a2, a3, a4);
}

void OUTLINED_FUNCTION_7_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0xD000000000000069;

  Logger.debug(output:test:caller:)(*&a1, 0, *(&a5 - 1));
}

uint64_t OUTLINED_FUNCTION_8_5()
{

  return sub_252F4092C(98, 0xE100000000000000, v0);
}

uint64_t CompletionView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CompletionView(0);
  v5 = (a2 + v4[5]);
  sub_252F5394C();
  OUTLINED_FUNCTION_2_10();
  sub_252F42B28(v6, v7, MEMORY[0x277D63F50]);
  *v5 = sub_252F5326C();
  v5[1] = v8;
  v9 = v4[8];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
  swift_storeEnumTagMultiPayload();
  sub_252F42BCC(a1, a2);
  type metadata accessor for CompletionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  v10 = a2 + v4[6];
  *v10 = v18;
  *(v10 + 8) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  sub_252F530BC();
  v11 = a2 + v4[7];
  *v11 = (v18 == 2) | v18 & 1;
  *(v11 + 8) = 0;
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v12 = qword_27F57B818;
  sub_252F5313C();
  sub_252F53ADC();
  sub_252F5312C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v13 = sub_252F5316C();
  __swift_project_value_buffer(v13, qword_27F57B800);
  sub_252F53B8C();

  v14 = CompletionSnippetModel.description.getter();
  MEMORY[0x2530AF890](v14);

  v15._countAndFlagsBits = 0xD00000000000002FLL;
  v16._countAndFlagsBits = 0xD000000000000067;
  v16._object = 0x8000000252F587A0;
  v15._object = 0x8000000252F58770;
  Logger.debug(output:test:caller:)(v15, 0, v16);

  return sub_252F42C40(a1, type metadata accessor for CompletionSnippetModel);
}

uint64_t type metadata accessor for CompletionView(uint64_t a1)
{
  result = qword_27F5768B0;
  if (!qword_27F5768B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F412D4(uint64_t a1)
{
  sub_252F531EC();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_252F532BC();
}

uint64_t CompletionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v93 = sub_252F538EC();
  OUTLINED_FUNCTION_16();
  v92 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_8(&v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576840, &qword_252F55E98);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_7_8(v6);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576848, &qword_252F55EA0);
  OUTLINED_FUNCTION_16();
  v97 = v7;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_7_8(v9);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576850, &qword_252F55EA8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_7_8(v11);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576858, &qword_252F55EB0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_7_8(v13);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576860, &qword_252F55EB8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_7_8(v15);
  v90 = type metadata accessor for CompletionView(0);
  OUTLINED_FUNCTION_16();
  v103 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576868, &qword_252F55EC0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_7_8(v21);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576870, &qword_252F55EC8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_7_8(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v87 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v27);
  v29 = &v87 - v28;
  v30 = type metadata accessor for IconConfiguration(0);
  OUTLINED_FUNCTION_1();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v87 - v35;
  type metadata accessor for CompletionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  sub_252F530BC();
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_252F25CDC(v29, &qword_27F576260, &qword_252F54AA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
    sub_252F530BC();
    v37 = MEMORY[0x277D837D0];
    v38 = MEMORY[0x277D63F80];
    v123 = MEMORY[0x277D837D0];
    v124 = MEMORY[0x277D63F80];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    sub_252F530BC();
    v39 = v117;
    v40 = v118;
    v119 = v37;
    v120 = v38;
    if (!v118)
    {
      v39 = 0;
      v40 = 0xE000000000000000;
    }

    v117 = v39;
    v118 = v40;
    v116 = 0;
    v114 = 0u;
    v115 = 0u;
    v113 = 0;
    v111 = 0u;
    v112 = 0u;
    v110 = 0;
    v109 = 0u;
    v108 = 0u;
    v41 = v91;
    sub_252F538DC();
    sub_252F42BCC(v1, &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v42 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v43 = swift_allocObject();
    sub_252F42B70(&v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + v42);
    v44 = v94;
    (*(v92 + 32))(v94, v41, v93);
    v45 = v96;
    v46 = (v44 + *(v96 + 36));
    *v46 = sub_252F42838;
    v46[1] = v43;
    v46[2] = 0;
    v46[3] = 0;
    sub_252F42BCC(v1, &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v47 = swift_allocObject();
    sub_252F42B70(&v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v42);
    v48 = sub_252F42868();
    v49 = v95;
    sub_252F5351C();

    sub_252F25CDC(v44, &qword_27F576840, &qword_252F55E98);
    v121 = v45;
    v122 = v48;
    swift_getOpaqueTypeConformance2();
    v50 = v98;
    v51 = sub_252F534EC();
    (*(v97 + 8))(v49, v50);
    *v106 = v51;
    swift_storeEnumTagMultiPayload();
    sub_252F42924();
    return sub_252F533EC();
  }

  else
  {
    v97 = v18;
    v98 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_252F42B70(v29, v36);
    v96 = v36;
    sub_252F42BCC(v36, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
    sub_252F530BC();
    v53 = v121;
    v95 = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    sub_252F530BC();
    v54 = v121;
    if (!v122)
    {
      v54 = 0;
    }

    v94 = v54;
    v55 = 0xE000000000000000;
    if (v122)
    {
      v55 = v122;
    }

    v93 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    sub_252F530BC();
    v56 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
    sub_252F530BC();
    v57 = v121;
    sub_252F530BC();
    v58 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
    sub_252F530BC();
    sub_252F530BC();
    v59 = v121;
    type metadata accessor for SnippetDetailsModel(0);
    swift_allocObject();
    v60 = sub_252F43314(v34, v53, v95, v94, v93, v56 & 1, v57, v58, v26, v59);
    v61 = *(v1 + *(v90 + 20));
    if (v61)
    {
      v62 = v60;
      v63 = v61;
      sub_252F5391C();

      v64 = sub_252F53B0C();
      v65 = v106;
      v66 = v103;
      if (v64)
      {
        swift_getKeyPath();
        v67 = OUTLINED_FUNCTION_9_5();
        v68 = type metadata accessor for CompletionSnippetViewTVOS(v67);
        v69 = v89;
        *(v89 + *(v68 + 24)) = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
        swift_storeEnumTagMultiPayload();
        *v69 = sub_252F2DDFC;
        *(v69 + 8) = v62;
        *(v69 + 16) = 0;
        sub_252F5394C();
        OUTLINED_FUNCTION_2_10();
        sub_252F42B28(v70, v71, MEMORY[0x277D63F50]);

        *(v69 + 24) = sub_252F5326C();
        *(v69 + 32) = v72;
        v73 = v69 + *(v68 + 28);
        LOBYTE(v117) = 0;
        sub_252F5374C();
        v74 = v122;
        *v73 = v121;
        *(v73 + 8) = v74;
        OUTLINED_FUNCTION_4_6();
        v75 = OUTLINED_FUNCTION_12_4();
        OUTLINED_FUNCTION_5_8(v75);
        v76 = (v69 + *(v99 + 36));
        *v76 = sub_252F42FC4;
        v76[1] = v73;
        v76[2] = 0;
        v76[3] = 0;
        v77 = &qword_27F576868;
        v78 = &qword_252F55EC0;
        sub_252F43050(v69, v101, &qword_27F576868, &qword_252F55EC0);
        swift_storeEnumTagMultiPayload();
        sub_252F429B0();
        sub_252F42A6C();
        OUTLINED_FUNCTION_10_4();
        sub_252F533EC();
        v79 = v69;
      }

      else
      {

        v81 = v88;
        sub_252F2AD70(v80, v88);
        OUTLINED_FUNCTION_4_6();
        v82 = OUTLINED_FUNCTION_12_4();
        OUTLINED_FUNCTION_5_8(v82);
        v83 = (v81 + *(v102 + 36));
        *v83 = sub_252F42C28;
        v83[1] = v63;
        v83[2] = 0;
        v83[3] = 0;
        v77 = &qword_27F576858;
        v78 = &qword_252F55EB0;
        sub_252F43050(v81, v101, &qword_27F576858, &qword_252F55EB0);
        swift_storeEnumTagMultiPayload();
        sub_252F429B0();
        sub_252F42A6C();
        OUTLINED_FUNCTION_10_4();
        sub_252F533EC();
        v79 = v81;
      }

      sub_252F25CDC(v79, v77, v78);
      v84 = v96;
      sub_252F43050(v66, v65, &qword_27F576870, &qword_252F55EC8);
      swift_storeEnumTagMultiPayload();
      sub_252F42924();
      sub_252F533EC();

      sub_252F25CDC(v66, &qword_27F576870, &qword_252F55EC8);
      return sub_252F42C40(v84, type metadata accessor for IconConfiguration);
    }

    else
    {
      sub_252F5394C();
      OUTLINED_FUNCTION_2_10();
      sub_252F42B28(v85, v86, MEMORY[0x277D63F50]);
      result = sub_252F5325C();
      __break(1u);
    }
  }

  return result;
}

void sub_252F420C0(uint64_t a1)
{
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  type metadata accessor for CompletionView(0);
  sub_252F53ACC();
  sub_252F5311C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v1 = sub_252F5316C();
  __swift_project_value_buffer(v1, qword_27F57B800);
  v2._object = 0x8000000252F58810;
  v3._countAndFlagsBits = 0xD000000000000067;
  v3._object = 0x8000000252F587A0;
  v2._countAndFlagsBits = 0xD00000000000002CLL;
  Logger.debug(output:test:caller:)(v2, 0, v3);
}

uint64_t sub_252F42204(uint64_t a1)
{
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  type metadata accessor for CompletionView(0);
  sub_252F53ACC();
  sub_252F5311C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v1 = sub_252F5316C();
  __swift_project_value_buffer(v1, qword_27F57B800);
  sub_252F53B8C();

  v2 = CompletionSnippetModel.description.getter();
  MEMORY[0x2530AF890](v2);

  v3._countAndFlagsBits = 0xD000000000000030;
  v4._countAndFlagsBits = 0xD000000000000067;
  v4._object = 0x8000000252F587A0;
  v3._object = 0x8000000252F58840;
  Logger.debug(output:test:caller:)(v3, 0, v4);
}

uint64_t sub_252F4239C(uint64_t a1)
{
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  type metadata accessor for CompletionView(0);
  sub_252F53ACC();
  sub_252F5311C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v1 = sub_252F5316C();
  __swift_project_value_buffer(v1, qword_27F57B800);
  sub_252F53B8C();

  v2 = CompletionSnippetModel.description.getter();
  MEMORY[0x2530AF890](v2);

  v3._countAndFlagsBits = 0xD000000000000030;
  v4._countAndFlagsBits = 0xD000000000000067;
  v4._object = 0x8000000252F587A0;
  v3._object = 0x8000000252F58880;
  Logger.debug(output:test:caller:)(v3, 0, v4);
}

uint64_t sub_252F42534(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = sub_252F52FBC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CompletionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  sub_252F530BC();
  if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
  {
    sub_252F25CDC(v5, &qword_27F576050, &unk_252F54880);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    return sub_252F25CDC(v7, &qword_27F576050, &unk_252F54880);
  }

  sub_252F52F6C();
  v12 = *(v9 + 8);
  v12(v5, v8);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_252F25CDC(v7, &qword_27F576050, &unk_252F54880);
  }

  (*(v9 + 32))(v11, v7, v8);
  v14 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v15 = sub_252F52F8C();
  [v14 setPunchOutUri_];

  v16 = *(a1 + *(type metadata accessor for CompletionView(0) + 20));
  if (v16)
  {
    v17 = v16;
    v18 = v14;
    sub_252F5392C();

    return (v12)(v11, v8);
  }

  else
  {
    sub_252F5394C();
    sub_252F42B28(&qword_27F575E48, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_252F5325C();
    __break(1u);
  }

  return result;
}

unint64_t sub_252F42868()
{
  result = qword_27F576878;
  if (!qword_27F576878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576840, &qword_252F55E98);
    sub_252F42B28(&qword_27F576880, MEMORY[0x277D63D90], MEMORY[0x277D63D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576878);
  }

  return result;
}

unint64_t sub_252F42924()
{
  result = qword_27F576888;
  if (!qword_27F576888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576870, &qword_252F55EC8);
    sub_252F429B0();
    sub_252F42A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576888);
  }

  return result;
}

unint64_t sub_252F429B0()
{
  result = qword_27F576890;
  if (!qword_27F576890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576868, &qword_252F55EC0);
    sub_252F42B28(&qword_27F576898, type metadata accessor for CompletionSnippetViewTVOS, &protocol conformance descriptor for CompletionSnippetViewTVOS);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576890);
  }

  return result;
}

unint64_t sub_252F42A6C()
{
  result = qword_27F5768A0;
  if (!qword_27F5768A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576858, &qword_252F55EB0);
    sub_252F42B28(&qword_27F5768A8, type metadata accessor for CompletionSnippetView, &protocol conformance descriptor for CompletionSnippetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5768A0);
  }

  return result;
}

uint64_t sub_252F42B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_252F42B70(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_9_5();
  v5(v4);
  OUTLINED_FUNCTION_1();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_252F42BCC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_9_5();
  v5(v4);
  OUTLINED_FUNCTION_1();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_252F42C40(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for CompletionView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v24 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 8))(v0 + v3);
  v6 = type metadata accessor for CompletionSnippetModel(0);
  v7 = v6[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_0_1();
  (*(v8 + 8))(v0 + v3 + v7);
  v9 = v6[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  OUTLINED_FUNCTION_0_1();
  (*(v10 + 8))(v0 + v3 + v9);
  v11 = v6[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_1();
  v14 = *(v13 + 8);
  v14(v0 + v3 + v11, v12);
  v14(v0 + v3 + v6[8], v12);
  v15 = v6[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  OUTLINED_FUNCTION_0_1();
  (*(v16 + 8))(v0 + v3 + v15);
  v17 = v6[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  OUTLINED_FUNCTION_0_1();
  (*(v18 + 8))(v0 + v3 + v17);
  v14(v0 + v3 + v6[11], v12);

  v19 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_252F531EC();
    OUTLINED_FUNCTION_0_1();
    (*(v20 + 8))(v4 + v19);
  }

  else
  {
  }

  v21 = v1[9];
  sub_252F5314C();
  OUTLINED_FUNCTION_0_1();
  (*(v22 + 8))(v4 + v21);

  return MEMORY[0x2821FE8E8](v0, v3 + v24, v2 | 7);
}

uint64_t sub_252F42FDC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CompletionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_252F43050(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_252F430F4(uint64_t a1)
{
  type metadata accessor for CompletionSnippetModel(319);
  if (v1 <= 0x3F)
  {
    sub_252F252C8(319);
    if (v2 <= 0x3F)
    {
      sub_252F2DCBC();
      if (v3 <= 0x3F)
      {
        sub_252F307F8(319);
        if (v4 <= 0x3F)
        {
          sub_252F5314C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_252F431C0()
{
  result = qword_27F5768C0;
  if (!qword_27F5768C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5768C8, "vL");
    sub_252F42924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5768C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_6()
{
  v3 = *(v1 - 392);

  return sub_252F42BCC(v0, v3);
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1)
{

  return sub_252F42B70(v2, a1 + v1);
}

uint64_t OUTLINED_FUNCTION_12_4()
{

  return swift_allocObject();
}

uint64_t sub_252F43314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10)
{
  v38 = a7;
  v39 = a8;
  v37 = a6;
  v35 = a4;
  v36 = a5;
  v31 = a2;
  v32 = a3;
  v42 = a1;
  v41 = a10;
  v40 = a9;
  v30[1] = type metadata accessor for IconConfiguration(0);
  OUTLINED_FUNCTION_1();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576920, &qword_252F55F68);
  v33 = *(v17 - 8);
  v18 = v33;
  MEMORY[0x28223BE20](v17);
  v20 = v30 - v19;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  v21 = MEMORY[0x28223BE20](v34);
  v23 = v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v30 - v24;
  v26 = OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__punchout;
  v27 = sub_252F52FBC();
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v27);
  sub_252F26494(v25, v23);
  sub_252F5319C();
  sub_252F26504(v25);
  (*(v18 + 32))(v10 + v26, v20, v17);
  sub_252F37538(v42, v16);
  swift_beginAccess();
  sub_252F37538(v16, v14);
  sub_252F5319C();
  sub_252F3759C(v16);
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  v43 = v31;
  v44 = v32;
  OUTLINED_FUNCTION_2_11();
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  v43 = v35;
  v44 = v36;
  OUTLINED_FUNCTION_2_11();
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  LOBYTE(v43) = v37;
  OUTLINED_FUNCTION_2_11();
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  LOBYTE(v43) = v38;
  OUTLINED_FUNCTION_2_11();
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  LOBYTE(v43) = v39;
  OUTLINED_FUNCTION_2_11();
  swift_endAccess();
  v28 = v40;
  sub_252F26494(v40, v25);
  swift_beginAccess();
  (*(v33 + 8))(v10 + v26, v17);
  sub_252F26494(v25, v23);
  sub_252F5319C();
  sub_252F26504(v25);
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  LOBYTE(v43) = v41;
  OUTLINED_FUNCTION_2_11();
  swift_endAccess();
  sub_252F26504(v28);
  sub_252F3759C(v42);
  return v10;
}

uint64_t sub_252F436E8(uint64_t a1)
{
  v2 = type metadata accessor for IconConfiguration(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252F37538(a1, v4);

  OUTLINED_FUNCTION_7_9();
  return sub_252F3759C(a1);
}

uint64_t sub_252F437C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_252F531BC();
}

uint64_t sub_252F4387C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252F26494(a1, v4);

  OUTLINED_FUNCTION_7_9();
  return sub_252F26504(a1);
}

uint64_t sub_252F43950(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_252F531BC();
}

uint64_t sub_252F439F8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252F531AC();

  return v3;
}

uint64_t sub_252F43AB4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252F531AC();
}

uint64_t sub_252F43B38(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252F531AC();

  return v3;
}

uint64_t sub_252F43BC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_252F26494(a1, &v6 - v3);
  return sub_252F4387C(v4);
}

uint64_t SnippetDetailsModel.deinit()
{
  v1 = OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__iconConfigs;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5768D8, &qword_252F55F50);
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__primaryText;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5768E8, &qword_252F55F58);
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v7 = OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__secondaryText);
  (v6)(v7);
  v8 = OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__isBooleanTrueResponse;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576900, &qword_252F55F60);
  OUTLINED_FUNCTION_1();
  v11 = *(v10 + 8);
  v11(v0 + v8, v9);
  v12 = OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__isSuccess);
  (v11)(v12);
  v13 = OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__inProgress);
  (v11)(v13);
  v14 = OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__punchout;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576920, &qword_252F55F68);
  OUTLINED_FUNCTION_1();
  (*(v15 + 8))(v0 + v14);
  v16 = OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__toggleEnabled);
  (v11)(v16);
  return v0;
}

uint64_t SnippetDetailsModel.__deallocating_deinit()
{
  SnippetDetailsModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_252F43E68@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SnippetDetailsModel(0);
  result = sub_252F5318C();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for SnippetDetailsModel(uint64_t a1)
{
  result = qword_27F576930;
  if (!qword_27F576930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252F43EFC(uint64_t a1)
{
  sub_252F44078(319);
  if (v1 <= 0x3F)
  {
    sub_252F440D0(319, &qword_27F576948, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_252F440D0(319, &qword_27F576950, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_252F4411C(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_252F44078(uint64_t a1)
{
  if (!qword_27F576940)
  {
    type metadata accessor for IconConfiguration(255);
    v1 = sub_252F531CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27F576940);
    }
  }
}

void sub_252F440D0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_252F531CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_252F4411C(uint64_t a1)
{
  if (!qword_27F576958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576050, &unk_252F54880);
    v1 = sub_252F531CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27F576958);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return sub_252F5319C();
}

uint64_t OUTLINED_FUNCTION_7_9()
{

  return sub_252F531BC();
}

unint64_t CompletionSnippetModel.description.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v1);
  v25 = &v24 - v2;
  v29 = 0xD000000000000017;
  v30 = 0x8000000252F58970;
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_252F53B8C();

  strcpy(v28, "primaryText: ");
  HIWORD(v28[1]) = -4864;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890](v26, v27);

  OUTLINED_FUNCTION_30_1();
  MEMORY[0x2530AF890](v28[0], v28[1]);

  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000017, 0x8000000252F58990);
  type metadata accessor for CompletionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  sub_252F530BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
  sub_252F53BCC();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_6_1();

  strcpy(v28, "isSuccess: ");
  HIDWORD(v28[1]) = -352321536;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  OUTLINED_FUNCTION_13_5();
  if (v3)
  {
    v4 = 0x65736C6166;
  }

  else
  {
    v4 = 1702195828;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x2530AF890](v4, v5);

  OUTLINED_FUNCTION_30_1();
  MEMORY[0x2530AF890](v28[0], v28[1]);

  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_252F53B8C();

  OUTLINED_FUNCTION_18_2(0x6572676F72506E69);
  sub_252F530BC();
  OUTLINED_FUNCTION_13_5();
  if (v6)
  {
    v7 = 0x65736C6166;
  }

  else
  {
    v7 = 1702195828;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x2530AF890](v7, v8);

  OUTLINED_FUNCTION_30_1();
  MEMORY[0x2530AF890](v28[0], v28[1]);

  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_252F53B8C();

  v28[0] = 0x6E45656C67676F74;
  v28[1] = 0xEF203A64656C6261;
  sub_252F530BC();
  OUTLINED_FUNCTION_13_5();
  if (v9)
  {
    v10 = 0x65736C6166;
  }

  else
  {
    v10 = 1702195828;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x2530AF890](v10, v11);

  OUTLINED_FUNCTION_6_1();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  v12 = v28[1];
  if (v28[1])
  {
    v13 = v28[0];
    v28[0] = 0;
    v28[1] = 0xE000000000000000;
    sub_252F53B8C();

    OUTLINED_FUNCTION_23_1();
    v28[0] = v15 - 6;
    v28[1] = v14;
    MEMORY[0x2530AF890](v13, v12);

    OUTLINED_FUNCTION_6_1();
  }

  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_252F53B8C();

  OUTLINED_FUNCTION_23_1();
  v28[0] = v17 - 2;
  v28[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  v18 = v25;
  sub_252F530BC();
  v19 = type metadata accessor for IconConfiguration(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v19);
  sub_252F25CDC(v18, &qword_27F576260, &qword_252F54AA0);
  if (EnumTagSinglePayload == 1)
  {
    v21 = 0x65736C6166;
  }

  else
  {
    v21 = 1702195828;
  }

  if (EnumTagSinglePayload == 1)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x2530AF890](v21, v22);

  MEMORY[0x2530AF890](v28[0], v28[1]);

  MEMORY[0x2530AF890](41, 0xE100000000000000);
  return v29;
}

uint64_t CompletionSnippetModel.secondaryText.getter()
{
  type metadata accessor for CompletionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  return v1;
}

void *CompletionSnippetModel.iconConfiguration.getter()
{
  type metadata accessor for CompletionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  return sub_252F530BC();
}

uint64_t CompletionSnippetModel.isBooleanTrueResponse.getter()
{
  type metadata accessor for CompletionSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

uint64_t CompletionSnippetModel.isSuccess.getter()
{
  type metadata accessor for CompletionSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

uint64_t CompletionSnippetModel.inProgress.getter()
{
  type metadata accessor for CompletionSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

uint64_t CompletionSnippetModel.toggleEnabled.getter()
{
  type metadata accessor for CompletionSnippetModel(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

uint64_t CompletionSnippetModel.primaryText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v1;
}

uint64_t type metadata accessor for CompletionSnippetModel(uint64_t a1)
{
  result = qword_27F576978;
  if (!qword_27F576978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *CompletionSnippetModel.punchOut.getter()
{
  type metadata accessor for CompletionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  return sub_252F530BC();
}

uint64_t CompletionSnippetModel.init(primaryText:secondaryText:isBooleanTrueResponse:iconConfiguration:isSuccess:punchOut:inProgress:toggleEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, unsigned __int8 a11)
{
  v54 = a8;
  v52 = a5;
  v53 = a7;
  v50 = a4;
  v51 = a6;
  v49 = a3;
  v47 = a2;
  v45 = a1;
  v55 = a10;
  v56 = a11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v57 = v13 - v14;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_5();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v41 - v22;
  v24 = type metadata accessor for CompletionSnippetModel(0);
  v25 = v24[5];
  v59 = 0;
  v60 = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  sub_252F5309C();
  v46 = v24[6];
  LOBYTE(v59) = 2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
  sub_252F5309C();
  v41 = v24[9];
  type metadata accessor for IconConfiguration(0);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  sub_252F43050(v23, v20, &qword_27F576260, &qword_252F54AA0);
  sub_252F5309C();
  sub_252F25CDC(v23, &qword_27F576260, &qword_252F54AA0);
  v44 = v24[10];
  sub_252F52FBC();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  sub_252F43050(v17, v57, &qword_27F576050, &unk_252F54880);
  sub_252F5309C();
  sub_252F25CDC(v17, &qword_27F576050, &unk_252F54880);
  v59 = v45;
  v60 = v47;
  sub_252F5309C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_0_1();
  (*(v34 + 8))(a9 + v25);
  v59 = v49;
  v60 = v50;
  sub_252F5309C();
  v35 = v51;
  sub_252F43050(v51, v23, &qword_27F576260, &qword_252F54AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  OUTLINED_FUNCTION_0_1();
  (*(v36 + 8))(a9 + v41);
  sub_252F43050(v23, v20, &qword_27F576260, &qword_252F54AA0);
  sub_252F5309C();
  sub_252F25CDC(v23, &qword_27F576260, &qword_252F54AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  OUTLINED_FUNCTION_0_1();
  (*(v37 + 8))(a9 + v46);
  LOBYTE(v59) = v52;
  sub_252F5309C();
  LOBYTE(v59) = v53;
  OUTLINED_FUNCTION_17_2();
  v38 = v54;
  sub_252F43050(v54, v17, &qword_27F576050, &unk_252F54880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  OUTLINED_FUNCTION_0_1();
  (*(v39 + 8))(a9 + v44);
  sub_252F43050(v17, v57, &qword_27F576050, &unk_252F54880);
  sub_252F5309C();
  sub_252F25CDC(v17, &qword_27F576050, &unk_252F54880);
  LOBYTE(v59) = v55;
  OUTLINED_FUNCTION_17_2();
  LOBYTE(v59) = v56;
  OUTLINED_FUNCTION_17_2();
  sub_252F25CDC(v38, &qword_27F576050, &unk_252F54880);
  return sub_252F25CDC(v35, &qword_27F576260, &qword_252F54AA0);
}

uint64_t sub_252F44E8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CompletionSnippetModel.primaryText.setter(v1, v2);
}

uint64_t (*CompletionSnippetModel.primaryText.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v2[4] = sub_252F530AC();
  return sub_252F20BA0;
}

uint64_t sub_252F44F80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CompletionSnippetModel.secondaryText.setter(v1, v2);
}

uint64_t CompletionSnippetModel.secondaryText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CompletionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  return sub_252F530CC();
}

uint64_t (*CompletionSnippetModel.secondaryText.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_2_12(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

uint64_t CompletionSnippetModel.isBooleanTrueResponse.setter()
{
  OUTLINED_FUNCTION_28_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  return OUTLINED_FUNCTION_17_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
}

uint64_t (*CompletionSnippetModel.isBooleanTrueResponse.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_2_12(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

uint64_t CompletionSnippetModel.isSuccess.setter()
{
  OUTLINED_FUNCTION_28_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  return OUTLINED_FUNCTION_17_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
}

uint64_t (*CompletionSnippetModel.isSuccess.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_2_12(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

uint64_t CompletionSnippetModel.inProgress.setter()
{
  OUTLINED_FUNCTION_28_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  return OUTLINED_FUNCTION_17_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
}

uint64_t (*CompletionSnippetModel.inProgress.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_2_12(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F1EBA8;
}

uint64_t CompletionSnippetModel.iconConfiguration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10_5(v4, v6);
  type metadata accessor for CompletionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  sub_252F530CC();
  return sub_252F25CDC(a1, &qword_27F576260, &qword_252F54AA0);
}

uint64_t (*CompletionSnippetModel.iconConfiguration.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_2_12(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

uint64_t sub_252F453B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_252F43050(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t CompletionSnippetModel.punchOut.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10_5(v4, v6);
  type metadata accessor for CompletionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  sub_252F530CC();
  return sub_252F25CDC(a1, &qword_27F576050, &unk_252F54880);
}

uint64_t (*CompletionSnippetModel.punchOut.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_2_12(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

uint64_t CompletionSnippetModel.toggleEnabled.setter()
{
  OUTLINED_FUNCTION_28_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  return OUTLINED_FUNCTION_17_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
}

uint64_t (*CompletionSnippetModel.toggleEnabled.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_2_12(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0(v3);
  return sub_252F20BA0;
}

unint64_t sub_252F45630(uint64_t a1, uint64_t a2)
{
  v2 = sub_252F53BDC();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252F4568C(char a1)
{
  result = 0x547972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x7261646E6F636573;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x7365636375537369;
      break;
    case 5:
      result = 0x74754F68636E7570;
      break;
    case 6:
      result = 0x6572676F72506E69;
      break;
    case 7:
      result = 0x6E45656C67676F74;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_252F457C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252F45630(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_252F457F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_252F4568C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F45840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252F4567C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252F45868@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F45680();
  *a1 = result;
  return result;
}

uint64_t sub_252F45890(uint64_t a1)
{
  v2 = sub_252F46330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F458CC(uint64_t a1)
{
  v2 = sub_252F46330();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall CompletionSnippetModel.responseViewId()()
{
  v0 = 0x8000000252F57F60;
  v1 = 0xD000000000000019;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t CompletionSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a1;
  v67 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576960, &qword_252F56220);
  OUTLINED_FUNCTION_16();
  v70 = v2;
  v71 = v3;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_1(v5, v63);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v66 = v7 - v8;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v9);
  v72 = &v63 - v10;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v65 = v15 - v16;
  OUTLINED_FUNCTION_13();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v63 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v63 - v21;
  v23 = type metadata accessor for CompletionSnippetModel(0);
  OUTLINED_FUNCTION_1();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v25 + 20);
  v82 = 0;
  v83 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  v78 = v28;
  v68 = v29;
  sub_252F5309C();
  v30 = v23[6];
  LOBYTE(v82) = 2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
  v79 = v30;
  v69 = v31;
  sub_252F5309C();
  v32 = v23[9];
  type metadata accessor for IconConfiguration(0);
  OUTLINED_FUNCTION_26_1();
  v64 = v33;
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  sub_252F43050(v22, v20, &qword_27F576260, &qword_252F54AA0);
  v77 = v32;
  sub_252F5309C();
  v37 = v84;
  sub_252F25CDC(v22, &qword_27F576260, &qword_252F54AA0);
  v74 = v23;
  v38 = v23[10];
  v39 = sub_252F52FBC();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  sub_252F43050(v13, v72, &qword_27F576050, &unk_252F54880);
  v80 = v27;
  v76 = v38;
  sub_252F5309C();
  sub_252F25CDC(v13, &qword_27F576050, &unk_252F54880);
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  sub_252F46330();
  v43 = v75;
  sub_252F53CFC();
  if (v43)
  {
    __swift_destroy_boxed_opaque_existential_1(v84);
    v44 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_0_1();
    (*(v45 + 8))(&v44[v78]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    OUTLINED_FUNCTION_0_1();
    (*(v46 + 8))(&v44[v79]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
    OUTLINED_FUNCTION_0_1();
    (*(v47 + 8))(&v44[v77]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
    OUTLINED_FUNCTION_0_1();
    return (*(v48 + 8))(&v44[v76]);
  }

  else
  {
    v75 = v13;
    LOBYTE(v82) = 0;
    v82 = sub_252F53C0C();
    v83 = v49;
    sub_252F5309C();
    OUTLINED_FUNCTION_21(1);
    v50 = sub_252F53C0C();
    v52 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_0_1();
    v54 = v80;
    (*(v53 + 8))(&v80[v78]);
    v82 = v50;
    v83 = v52;
    sub_252F5309C();
    OUTLINED_FUNCTION_21(2);
    LOBYTE(v52) = sub_252F53C1C() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    OUTLINED_FUNCTION_0_1();
    (*(v55 + 8))(&v54[v79]);
    LOBYTE(v82) = v52;
    sub_252F5309C();
    OUTLINED_FUNCTION_21(4);
    LOBYTE(v82) = sub_252F53C1C() & 1;
    sub_252F5309C();
    OUTLINED_FUNCTION_21(7);
    LOBYTE(v82) = sub_252F53C1C() & 1;
    sub_252F5309C();
    OUTLINED_FUNCTION_21(6);
    LOBYTE(v82) = sub_252F53C1C() & 1;
    sub_252F5309C();
    LOBYTE(v82) = 3;
    sub_252F46D68(&qword_27F575EC8, type metadata accessor for IconConfiguration, &protocol conformance descriptor for IconConfiguration);
    v57 = v64;
    v56 = v65;
    sub_252F53C2C();
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v57);
    sub_252F43050(v56, v22, &qword_27F576260, &qword_252F54AA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
    sub_252F530CC();
    sub_252F25CDC(v56, &qword_27F576260, &qword_252F54AA0);
    LOBYTE(v82) = 5;
    sub_252F46D68(&qword_27F5761D8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v58 = v66;
    sub_252F53C2C();
    v59 = v75;
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v39);
    sub_252F43050(v58, v59, &qword_27F576050, &unk_252F54880);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
    v60 = v80;
    sub_252F530CC();
    sub_252F25CDC(v58, &qword_27F576050, &unk_252F54880);
    OUTLINED_FUNCTION_21_1();
    v61(v81, 0);
    sub_252F46384(v60, v67);
    __swift_destroy_boxed_opaque_existential_1(v84);
    return sub_252F42C40(v60, type metadata accessor for CompletionSnippetModel);
  }
}

unint64_t sub_252F46330()
{
  result = qword_27F576968;
  if (!qword_27F576968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576968);
  }

  return result;
}

uint64_t sub_252F46384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompletionSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CompletionSnippetModel.encode(to:)(uint64_t a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_24_1(v2, v22[0]);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v4);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576970, &qword_252F56228);
  OUTLINED_FUNCTION_16();
  v9 = v8;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  v13 = OUTLINED_FUNCTION_25_1();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_252F46330();
  sub_252F53D0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  LOBYTE(v27) = 0;
  v15 = v26;
  sub_252F53C5C();
  if (v15)
  {
    (*(v9 + 8))(v12, v7);
  }

  else
  {
    v22[1] = v3;
    v23 = v6;
    v26 = v9;

    type metadata accessor for CompletionSnippetModel(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    sub_252F530BC();
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
    sub_252F2750C(&qword_27F5761E8, &qword_27F5761B8, &qword_252F55E20);
    OUTLINED_FUNCTION_19_2();
    OUTLINED_FUNCTION_9_6();
    sub_252F53C7C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    sub_252F530BC();
    v28 = 2;
    v17 = OUTLINED_FUNCTION_25_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    sub_252F2750C(&qword_27F5761F0, &qword_27F5761C0, &qword_252F54890);
    OUTLINED_FUNCTION_19_2();
    OUTLINED_FUNCTION_9_6();
    sub_252F53C7C();
    v19 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
    sub_252F530BC();
    OUTLINED_FUNCTION_7_10(4);
    sub_252F530BC();
    OUTLINED_FUNCTION_7_10(7);
    sub_252F530BC();
    OUTLINED_FUNCTION_7_10(6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
    v20 = v23;
    sub_252F530BC();
    LOBYTE(v27) = 3;
    sub_252F29FE4();
    OUTLINED_FUNCTION_9_6();
    sub_252F53C7C();
    sub_252F25CDC(v20, &qword_27F576260, &qword_252F54AA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
    sub_252F530BC();
    LOBYTE(v27) = 5;
    sub_252F27574();
    OUTLINED_FUNCTION_9_6();
    sub_252F53C7C();
    v21 = v26;
    sub_252F25CDC(v19, &qword_27F576050, &unk_252F54880);
    return (*(v21 + 8))(v12, v7);
  }
}

uint64_t CompletionSnippetModel.stringId.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v1);
  v3 = v14 - v2;
  v16 = type metadata accessor for IconConfiguration(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  v15 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_252F53B8C();

  strcpy(v20, "#primaryText: ");
  HIBYTE(v20[1]) = -18;
  v14[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890](v19[0], v19[1]);

  OUTLINED_FUNCTION_18_2(0x6563637553736923);
  type metadata accessor for CompletionSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  OUTLINED_FUNCTION_13_5();
  if (v6)
  {
    v7 = 0x65736C6166;
  }

  else
  {
    v7 = 1702195828;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x2530AF890](v7, v8);

  MEMORY[0x2530AF890](v19[0], v19[1]);

  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000018, 0x8000000252F589B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  sub_252F530BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
  sub_252F53BCC();
  MEMORY[0x2530AF890](v19[0], v19[1]);

  strcpy(v19, "#inProgress: ");
  HIWORD(v19[1]) = -4864;
  sub_252F530BC();
  OUTLINED_FUNCTION_13_5();
  if (v9)
  {
    v10 = 0x65736C6166;
  }

  else
  {
    v10 = 1702195828;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x2530AF890](v10, v11);

  MEMORY[0x2530AF890](v19[0], v19[1]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  sub_252F530BC();
  if (__swift_getEnumTagSinglePayload(v3, 1, v16) == 1)
  {
    sub_252F25CDC(v3, &qword_27F576260, &qword_252F54AA0);
  }

  else
  {
    v12 = v15;
    sub_252F3EAE4(v3, v15);
    strcpy(v19, "#iconName: ");
    HIDWORD(v19[1]) = -352321536;
    sub_252F530BC();
    MEMORY[0x2530AF890](v17, v18);

    MEMORY[0x2530AF890](v19[0], v19[1]);

    sub_252F42C40(v12, type metadata accessor for IconConfiguration);
  }

  return v20[0];
}

uint64_t sub_252F46D68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_252F46DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_252F46D68(&qword_27F576370, type metadata accessor for CompletionSnippetModel, &protocol conformance descriptor for CompletionSnippetModel);
  sub_252F46D68(&qword_27F576378, type metadata accessor for CompletionSnippetModel, &protocol conformance descriptor for CompletionSnippetModel);
  return sub_252F5306C();
}

uint64_t sub_252F46E78(uint64_t a1, uint64_t a2)
{
  sub_252F46D68(&qword_27F576370, type metadata accessor for CompletionSnippetModel, &protocol conformance descriptor for CompletionSnippetModel);
  sub_252F46D68(&qword_27F576378, type metadata accessor for CompletionSnippetModel, &protocol conformance descriptor for CompletionSnippetModel);
  return sub_252F5305C();
}

uint64_t sub_252F46F80(uint64_t a1)
{
  sub_252F208D4(319, &qword_27F575F18, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_252F2800C(319, &qword_27F576228, &qword_27F5761B8, &qword_252F55E20);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_252F2800C(319, &qword_27F576230, &qword_27F5761C0, &qword_252F54890);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_252F208D4(319, &qword_27F575F30, MEMORY[0x277D839B0]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_252F2800C(319, &qword_27F576988, &qword_27F576260, &qword_252F54AA0);
          if (v11 > 0x3F)
          {
            return v10;
          }

          sub_252F2800C(319, &qword_27F576238, &qword_27F576050, &unk_252F54880);
          if (v12 > 0x3F)
          {
            return v10;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for CompletionSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CompletionSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_252F4726C()
{
  result = qword_27F576990;
  if (!qword_27F576990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576990);
  }

  return result;
}

unint64_t sub_252F472C4()
{
  result = qword_27F576998;
  if (!qword_27F576998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576998);
  }

  return result;
}

unint64_t sub_252F4731C()
{
  result = qword_27F5769A0;
  if (!qword_27F5769A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5769A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_12(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for CompletionSnippetModel(0);
}

uint64_t OUTLINED_FUNCTION_7_10@<X0>(char a2@<W8>)
{
  *(v2 - 96) = a2;

  return sub_252F53C6C();
}

uint64_t OUTLINED_FUNCTION_10_5@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_252F43050(v2, &a2 - a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_17_2()
{

  return sub_252F5309C();
}

uint64_t OUTLINED_FUNCTION_28_1()
{

  return type metadata accessor for CompletionSnippetModel(0);
}

void *OUTLINED_FUNCTION_29_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return sub_252F530BC();
}

void OUTLINED_FUNCTION_30_1()
{

  JUMPOUT(0x2530AF890);
}

HomeAutomationUIFramework::SnippetRenderingMode_optional __swiftcall SnippetRenderingMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252F53BDC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SnippetRenderingMode.rawValue.getter()
{
  result = 0x6863726172656968;
  switch(*v0)
  {
    case 1:
      result = 0x6C6F6369746C756DLL;
      break;
    case 2:
      result = 0x6F7268636F6E6F6DLL;
      break;
    case 3:
      result = 0x657474656C6170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252F475F8@<X0>(uint64_t *a1@<X8>)
{
  result = SnippetRenderingMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

HomeAutomationUIFramework::SnippetHomeDeviceType_optional __swiftcall SnippetHomeDeviceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252F53CBC();

  v5 = 0;
  v6 = 30;
  switch(v3)
  {
    case 0:
      goto LABEL_47;
    case 1:
      v5 = 1;
      goto LABEL_47;
    case 2:
      v5 = 2;
      goto LABEL_47;
    case 3:
      v5 = 3;
      goto LABEL_47;
    case 4:
      v5 = 4;
      goto LABEL_47;
    case 5:
      v5 = 5;
      goto LABEL_47;
    case 6:
      v5 = 6;
      goto LABEL_47;
    case 7:
      v5 = 7;
      goto LABEL_47;
    case 8:
      v5 = 8;
      goto LABEL_47;
    case 9:
      v5 = 9;
      goto LABEL_47;
    case 10:
      v5 = 10;
      goto LABEL_47;
    case 11:
      v5 = 11;
      goto LABEL_47;
    case 12:
      v5 = 12;
      goto LABEL_47;
    case 13:
      v5 = 13;
      goto LABEL_47;
    case 14:
      v5 = 14;
      goto LABEL_47;
    case 15:
      v5 = 15;
      goto LABEL_47;
    case 16:
      v5 = 16;
      goto LABEL_47;
    case 17:
      v5 = 17;
      goto LABEL_47;
    case 18:
      v5 = 18;
      goto LABEL_47;
    case 19:
      v5 = 19;
      goto LABEL_47;
    case 20:
      v5 = 20;
      goto LABEL_47;
    case 21:
      v5 = 21;
      goto LABEL_47;
    case 22:
      v5 = 22;
      goto LABEL_47;
    case 23:
      v5 = 23;
      goto LABEL_47;
    case 24:
      v5 = 24;
      goto LABEL_47;
    case 25:
      v5 = 25;
      goto LABEL_47;
    case 26:
      v5 = 26;
      goto LABEL_47;
    case 27:
      v5 = 27;
      goto LABEL_47;
    case 28:
      v5 = 28;
      goto LABEL_47;
    case 29:
      v5 = 29;
LABEL_47:
      v6 = v5;
      break;
    case 30:
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    default:
      v6 = 48;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t SnippetHomeDeviceType.rawValue.getter()
{
  result = 0x6C7562746867696CLL;
  switch(*v0)
  {
    case 1:
      return 0x686374697773;
    case 2:
      return 0x74736F6D72656874;
    case 3:
      return 0xD000000000000010;
    case 4:
      return 7233894;
    case 5:
      v3 = 1819571567;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x746500000000;
    case 6:
      return 0x6B636F4C726F6F64;
    case 7:
      return 0xD000000000000010;
    case 8:
      return 0x79726574746162;
    case 9:
      return 0xD000000000000013;
    case 0xA:
      return 0xD000000000000014;
    case 0xB:
      return 0x53746361746E6F63;
    case 0xC:
      return 1919905636;
    case 0xD:
      v5 = 0x6964696D7568;
      return v5 & 0xFFFFFFFFFFFFLL | 0x7974000000000000;
    case 0xE:
      return 0x736E65536B61656CLL;
    case 0xF:
      v4 = 0x53746867696CLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
    case 0x10:
      return 0x65536E6F69746F6DLL;
    case 0x11:
      return 0x636E61707563636FLL;
    case 0x12:
      v5 = 0x697275636573;
      return v5 & 0xFFFFFFFFFFFFLL | 0x7974000000000000;
    case 0x13:
      v4 = 0x53656B6F6D73;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
    case 0x14:
      return 0xD000000000000011;
    case 0x15:
      return 0x776F646E6977;
    case 0x16:
      return 0x736564616873;
    case 0x17:
      return 0x6172656D61437069;
    case 0x18:
      return 0x6F68706F7263696DLL;
    case 0x19:
      return 0x72656B61657073;
    case 0x1A:
    case 0x1B:
      return 0x657A69726F746F6DLL;
    case 0x1C:
      return 0x6F43726574616568;
    case 0x1D:
      return 0xD000000000000016;
    case 0x1E:
      return 1952541811;
    case 0x1F:
      return 0x656C6B6E69727073;
    case 0x20:
      return 0x65766C6176;
    case 0x21:
      v3 = 1668637030;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x746500000000;
    case 0x22:
      v2 = 2003789939;
      goto LABEL_50;
    case 0x23:
      return 0x69736976656C6574;
    case 0x24:
      return 0x6C6C6542726F6F64;
    case 0x25:
      return 0x6669727550726961;
    case 0x26:
      v2 = 1953261926;
LABEL_50:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
      break;
    case 0x27:
      result = 0x5654656C707061;
      break;
    case 0x28:
      result = 0x65526172656D6163;
      break;
    case 0x29:
      result = 1802398067;
      break;
    case 0x2A:
      result = 0x706F4D746F626F72;
      break;
    case 0x2B:
      result = 0xD000000000000012;
      break;
    case 0x2C:
      result = 0x74726F70726961;
      break;
    case 0x2D:
      result = 0x726F736E6573;
      break;
    case 0x2E:
      result = 0x6D6F74737563;
      break;
    case 0x2F:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_252F47DCC()
{
  result = qword_27F5769A8;
  if (!qword_27F5769A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5769A8);
  }

  return result;
}

unint64_t sub_252F47E30()
{
  result = qword_27F5769B0;
  if (!qword_27F5769B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5769B0);
  }

  return result;
}

uint64_t sub_252F47EA8@<X0>(uint64_t *a1@<X8>)
{
  result = SnippetHomeDeviceType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SnippetRenderingMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SnippetHomeDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD1)
  {
    if (a2 + 47 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 47) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 48;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x30;
  v5 = v6 - 48;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SnippetHomeDeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 47 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 47) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD0)
  {
    v6 = ((a2 - 209) >> 8) + 1;
    *result = a2 + 47;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 47;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_252F481C0()
{
  result = qword_27F5769B8;
  if (!qword_27F5769B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5769B8);
  }

  return result;
}

unint64_t sub_252F48214()
{
  result = qword_27F5769C0;
  if (!qword_27F5769C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5769C0);
  }

  return result;
}

uint64_t static Signpost.begin(logging:_:)(void *a1)
{
  v5 = a1;
  sub_252F5313C();
  sub_252F53ADC();

  return sub_252F5312C();
}

uint64_t static Signpost.generateSignpostID(for:)(void *a1)
{
  v1 = a1;

  return sub_252F5313C();
}

_BYTE *sub_252F48434(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
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
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}