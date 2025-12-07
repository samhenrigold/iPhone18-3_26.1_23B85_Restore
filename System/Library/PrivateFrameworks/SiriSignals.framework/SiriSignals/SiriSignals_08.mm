_BYTE *sub_2315330A8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_231533194(uint64_t a1)
{
  sub_231533268();
  if (v4 <= 0x3F)
  {
    type metadata accessor for Signal.Source(255, *(a1 + 16), v2, v3);
    sub_231586774();
    if (v5 <= 0x3F)
    {
      sub_231585884();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_231533268()
{
  if (!qword_280D6EA28)
  {
    v0 = sub_231586774();
    if (!v1)
    {
      atomic_store(v0, &qword_280D6EA28);
    }
  }
}

uint64_t _s6RecordVMa(uint64_t a1)
{
  result = qword_280D703C0;
  if (!qword_280D703C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23153332C(uint64_t a1)
{
  result = sub_231585884();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2315333F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v11 = *a1;
  v12 = v4;
  v5 = *(a2 + 8);
  v9 = *a2;
  v10 = v5;
  sub_2314A5168(v11, v4);
  sub_2314A5168(v9, v5);
  v6 = static SignalValue.== infix(_:_:)(&v11, &v9);
  sub_2314A5EEC(v9, v10);
  sub_2314A5EEC(v11, v12);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(_s6RecordVMa(0) + 20);

  return MEMORY[0x28211DA98](a1 + v7, a2 + v7);
}

uint64_t sub_2315334BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_231586C44() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7441646568636163 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_231586C44();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_231533588(char a1)
{
  if (a1)
  {
    return 0x7441646568636163;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_2315335BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BD60, &qword_23158D060);
  OUTLINED_FUNCTION_4_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231533E8C();
  sub_231586D64();
  v11 = *(v3 + 8);
  v16 = *v3;
  v17 = v11;
  v15[15] = 0;
  sub_2314A5168(v16, v11);
  sub_2314BEF60();
  sub_231586C04();
  sub_2314A5EEC(v16, v17);
  if (!v2)
  {
    _s6RecordVMa(0);
    v15[14] = 1;
    sub_231585884();
    OUTLINED_FUNCTION_0_76();
    sub_231533FA0(v12, v13, MEMORY[0x277CC9580]);
    sub_231586C04();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_231533788(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 8))
  {
    case 1:
      MEMORY[0x231930A00](1);
      sub_23156B970(a1, v2);
      break;
    case 2:
      MEMORY[0x231930A00](2);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = v2;
      }

      else
      {
        v4 = 0;
      }

      MEMORY[0x231930A10](v4);
      break;
    case 3:
      MEMORY[0x231930A00](3);
      sub_23156B858(a1, v2);
      break;
    default:
      MEMORY[0x231930A00](0);
      MEMORY[0x231930A00](v2);
      break;
  }

  _s6RecordVMa(0);
  sub_231585884();
  OUTLINED_FUNCTION_0_76();
  sub_231533FA0(v5, v6, MEMORY[0x277CC9588]);
  return sub_231586134();
}

uint64_t sub_231533894()
{
  sub_231586D14();
  v1 = *v0;
  switch(*(v0 + 8))
  {
    case 1:
      MEMORY[0x231930A00](1);
      sub_23156B970(v6, v1);
      break;
    case 2:
      MEMORY[0x231930A00](2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v2 = v1;
      }

      else
      {
        v2 = 0;
      }

      MEMORY[0x231930A10](v2);
      break;
    case 3:
      MEMORY[0x231930A00](3);
      sub_23156B858(v6, v1);
      break;
    default:
      MEMORY[0x231930A00](0);
      MEMORY[0x231930A00](v1);
      break;
  }

  _s6RecordVMa(0);
  sub_231585884();
  OUTLINED_FUNCTION_0_76();
  sub_231533FA0(v3, v4, MEMORY[0x277CC9588]);
  sub_231586134();
  return sub_231586D44();
}

uint64_t sub_2315339C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v24 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BD58, &qword_23158D058);
  OUTLINED_FUNCTION_4_1();
  v26 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = _s6RecordVMa(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231533E8C();
  sub_231586D54();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v15 = v14;
  v17 = v26;
  v16 = v27;
  v32 = 0;
  sub_2314BF09C();
  v18 = v28;
  sub_231586B84();
  v19 = v30;
  *v15 = v29;
  *(v15 + 8) = v19;
  v31 = 1;
  OUTLINED_FUNCTION_0_76();
  sub_231533FA0(v20, v21, MEMORY[0x277CC95A0]);
  sub_231586B84();
  (*(v17 + 8))(v11, v18);
  (*(v24 + 32))(v15 + *(v23 + 20), v7, v16);
  sub_231533EE0(v15, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_231533F44(v15);
}

uint64_t sub_231533CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2315334BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231533CF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231533580();
  *a1 = result;
  return result;
}

uint64_t sub_231533D20(uint64_t a1)
{
  v2 = sub_231533E8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231533D5C(uint64_t a1)
{
  v2 = sub_231533E8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231533DD4(uint64_t a1)
{
  sub_231586D14();
  SignalValue.hash(into:)(v2);
  sub_231585884();
  sub_231533FA0(&qword_27DD5BD68, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_231586134();
  return sub_231586D44();
}

unint64_t sub_231533E8C()
{
  result = qword_280D703F0;
  if (!qword_280D703F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D703F0);
  }

  return result;
}

uint64_t sub_231533EE0(uint64_t a1, uint64_t a2)
{
  v4 = _s6RecordVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231533F44(uint64_t a1)
{
  v2 = _s6RecordVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231533FA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *_s6RecordV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2315340C8()
{
  result = qword_27DD5BD70;
  if (!qword_27DD5BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BD70);
  }

  return result;
}

unint64_t sub_231534120()
{
  result = qword_280D703E0;
  if (!qword_280D703E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D703E0);
  }

  return result;
}

unint64_t sub_231534178()
{
  result = qword_280D703E8;
  if (!qword_280D703E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D703E8);
  }

  return result;
}

void sub_2315341CC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v37 = MEMORY[0x277D84F90];
    sub_23152D598(0, v2, 0);
    v36 = v37;
    v5 = sub_23156C5C8();
    v6 = 0;
    v7 = v1 + 64;
    v30 = v3;
    v31 = v2;
    v29 = v1 + 72;
    v32 = v1 + 64;
    v33 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v1 + 36) != v3)
      {
        goto LABEL_23;
      }

      v35 = v3;
      v34 = v4;
      v9 = *(v1 + 56);
      v10 = (*(v1 + 48) + 16 * v5);
      v11 = *v10;
      v12 = v10[1];
      v13 = v9 + 16 * v5;
      v14 = *v13;
      v15 = *(v13 + 8);
      swift_bridgeObjectRetain_n();
      sub_2314A5168(v14, v15);
      sub_2314A5168(v14, v15);

      sub_2314A5EEC(v14, v15);

      MEMORY[0x23192FF80](61, 0xE100000000000000);
      v16 = SignalValue.description.getter();
      MEMORY[0x23192FF80](v16);

      sub_2314A5EEC(v14, v15);
      v17 = v36;
      v19 = *(v36 + 16);
      v18 = *(v36 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_23152D598(v18 > 1, v19 + 1, 1);
        v17 = v36;
      }

      *(v17 + 16) = v19 + 1;
      v20 = v17 + 16 * v19;
      *(v20 + 32) = v11;
      *(v20 + 40) = v12;
      v1 = v33;
      v21 = 1 << *(v33 + 32);
      if (v5 >= v21)
      {
        goto LABEL_24;
      }

      v7 = v32;
      v22 = *(v32 + 8 * v8);
      if ((v22 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v36 = v17;
      if (*(v33 + 36) != v35)
      {
        goto LABEL_26;
      }

      v23 = v22 & (-2 << (v5 & 0x3F));
      if (v23)
      {
        v21 = __clz(__rbit64(v23)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v8 << 6;
        v25 = v8 + 1;
        v26 = (v29 + 8 * v8);
        while (v25 < (v21 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_2314ABA68(v5, v35, v34 & 1);
            v21 = __clz(__rbit64(v27)) + v24;
            goto LABEL_19;
          }
        }

        sub_2314ABA68(v5, v35, v34 & 1);
      }

LABEL_19:
      v4 = 0;
      ++v6;
      v5 = v21;
      v3 = v30;
      if (v6 == v31)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_2315344E8(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v51 = a2;
  v48 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v50 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_0();
  v49 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BD80, &unk_23158EF40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v48 - v13;
  v15 = _s6RecordVMa(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  swift_beginAccess();
  sub_2314A2C74(v2 + 56, &v53);
  __swift_project_boxed_opaque_existential_1(&v53, v55);
  v20 = a1[3];
  v21 = a1[4];
  v22 = OUTLINED_FUNCTION_7_22();
  __swift_project_boxed_opaque_existential_1(v22, v23);
  OUTLINED_FUNCTION_17_8();
  v24(v20, v21);
  sub_231571694(v14);
  v25 = v19;
  v27 = v49;
  v26 = v50;

  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_2314A2910(v14, &qword_27DD5BD80, &unk_23158EF40);
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v28 = sub_231585FF4();
    __swift_project_value_buffer(v28, qword_280D72248);
    sub_2314A2C74(a1, &v53);
    v29 = sub_231585FE4();
    v30 = sub_2315865D4();
    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_11_1();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_1();
      v32 = swift_slowAlloc();
      v52 = v32;
      *v31 = 136315138;
      v33 = v55;
      v34 = v56;
      __swift_project_boxed_opaque_existential_1(&v53, v55);
      OUTLINED_FUNCTION_17_8();
      v35(v33, v34);
      __swift_destroy_boxed_opaque_existential_1(&v53);
      OUTLINED_FUNCTION_13_7();
      v36 = sub_2314A22E8();

      *(v31 + 4) = v36;
      _os_log_impl(&dword_231496000, v29, v30, "SignalCache: Could not find cache value for key: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v53);
    }
  }

  else
  {
    v40 = v25;
    sub_23153713C(v14, v25);
    v41 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v42 = OUTLINED_FUNCTION_15_6();
    v43(v42, v41);
    if ((v54 & 1) != 0 || (v44 = sub_2315857B4(), (*(v3 + 96))(v44), v45 = sub_2315857E4(), v46 = *(v26 + 8), v47 = v48, v46(v27, v48), v46(v11, v47), (v45 & 1) == 0))
    {
      v37 = *v25;
      v38 = *(v25 + 8);
      sub_2314A5168(*v40, *(v40 + 8));
      sub_231533F44(v40);
      goto LABEL_8;
    }

    sub_231533F44(v25);
  }

  v37 = 0;
  v38 = -1;
LABEL_8:
  v39 = v51;
  *v51 = v37;
  *(v39 + 8) = v38;
  OUTLINED_FUNCTION_3_6();
}

void sub_23153496C(uint64_t a1)
{
  v2 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v96 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = (&v90 - v9);
  v11 = _s6RecordVMa(0);
  OUTLINED_FUNCTION_4_1();
  v98 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_11_12();
  MEMORY[0x28223BE20](v14);
  v16 = (&v90 - v15);
  if (qword_280D701B8 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v17 = qword_280D72230;
    v18 = unk_280D72238;
    __swift_project_boxed_opaque_existential_1(qword_280D72218, qword_280D72230);
    if ((*(v18 + 16))(v17, v18))
    {
      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_3();
        swift_once();
      }

      v19 = sub_231585FF4();
      __swift_project_value_buffer(v19, qword_280D72248);
      v20 = sub_231585FE4();
      v21 = sub_2315865D4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_231496000, v20, v21, "SignalCache: caching ignored by override", v22, 2u);
        OUTLINED_FUNCTION_7();
        MEMORY[0x231931280]();
      }

      OUTLINED_FUNCTION_21_6();
      OUTLINED_FUNCTION_21_6();
      goto LABEL_70;
    }

    v91 = v11;
    v94 = v10;
    v95 = v7;
    v93 = v2;
    v23 = *(a1 + 16);
    v101 = v16;
    if (v23)
    {
      v24 = a1 + 32;

      v7 = MEMORY[0x277D84F90];
      v10 = &qword_23158A9D0;
      v11 = &qword_27DD5B620;
      v2 = &unk_23158AAE0;
      v16 = &qword_27DD5BD88;
      while (1)
      {
        sub_2314A2C74(v24, &v112);
        sub_23149FD3C(&v112, &v109);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(v11, &unk_23158AAE0);
        if (swift_dynamicCast())
        {
          if (*(&v107 + 1))
          {
            sub_23149FD3C(&v106, &v109);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2314F11DC(0, *(v7 + 16) + 1, 1, v7);
              v7 = v35;
            }

            v25 = v11;
            v27 = *(v7 + 16);
            v26 = *(v7 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_2314F11DC(v26 > 1, v27 + 1, 1, v7);
              v28 = v36;
            }

            else
            {
              v28 = v7;
            }

            v29 = __swift_mutable_project_boxed_opaque_existential_1(&v109, v111);
            MEMORY[0x28223BE20](v29);
            OUTLINED_FUNCTION_5();
            v32 = (v31 - v30);
            (*(v33 + 16))(v31 - v30);
            v34 = *v32;
            *(&v107 + 1) = type metadata accessor for NowPlayingScoresSignal();
            v108 = &off_28461A1D8;
            *&v106 = v34;
            v7 = v28;
            *(v28 + 16) = v27 + 1;
            sub_23149FD3C(&v106, v28 + 40 * v27 + 32);
            __swift_destroy_boxed_opaque_existential_1(&v109);
            v10 = &qword_23158A9D0;
            v11 = v25;
            v2 = &unk_23158AAE0;
            v16 = &qword_27DD5BD88;
            goto LABEL_19;
          }
        }

        else
        {
          v108 = 0;
          v106 = 0u;
          v107 = 0u;
        }

        sub_2314A2910(&v106, &qword_27DD5BD88, &unk_23158D220);
LABEL_19:
        v24 += 40;
        if (!--v23)
        {
          goto LABEL_23;
        }
      }
    }

    v7 = MEMORY[0x277D84F90];
LABEL_23:
    v104 = *(v7 + 16);
    if (!v104)
    {
      break;
    }

    v16 = 0;
    v105 = v7;
    v103 = v7 + 32;
    while (1)
    {
      if (v16 >= v105[2])
      {
        goto LABEL_76;
      }

      sub_2314A2C74(v103 + 40 * v16, &v112);
      __swift_project_boxed_opaque_existential_1(&v112, v113);
      swift_getDynamicType();
      v37 = v114[2]();
      v2 = v37;
      v11 = *(v37 + 16);
      if (v11)
      {
        break;
      }

LABEL_43:
      v16 = (v16 + 1);

      __swift_destroy_boxed_opaque_existential_1(&v112);
      if (v16 == v104)
      {
        goto LABEL_44;
      }
    }

    v38 = (v37 + 40);
    while (1)
    {
      v7 = *v38;
      v39 = OUTLINED_FUNCTION_13_7();
      if (!static SignalProviding.cacheable()(v39, v40))
      {
        goto LABEL_42;
      }

      v41 = OUTLINED_FUNCTION_13_7();
      v43 = v42(v41);
      v44 = *(v43 + 16);
      v45 = *(a1 + 16);
      v10 = (v45 + v44);
      if (__OFADD__(v45, v44))
      {
        break;
      }

      v7 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v10 > *(a1 + 24) >> 1)
      {
        if (v45 <= v10)
        {
          v47 = v45 + v44;
        }

        else
        {
          v47 = v45;
        }

        sub_2314F0CB4(isUniquelyReferenced_nonNull_native, v47, 1, a1);
        a1 = v48;
      }

      if (*(v7 + 16))
      {
        if ((*(a1 + 24) >> 1) - *(a1 + 16) < v44)
        {
          goto LABEL_74;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
        swift_arrayInitWithCopy();

        if (v44)
        {
          v49 = *(a1 + 16);
          v50 = __OFADD__(v49, v44);
          v51 = v49 + v44;
          if (v50)
          {
            goto LABEL_75;
          }

          *(a1 + 16) = v51;
        }
      }

      else
      {

        if (v44)
        {
          goto LABEL_73;
        }
      }

LABEL_42:
      v38 += 2;
      if (!--v11)
      {
        goto LABEL_43;
      }
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

LABEL_44:

  v10 = sub_231536918(a1);
  v2 = MEMORY[0x277D837E0];
  v102 = OUTLINED_FUNCTION_20_7();
  v99 = OUTLINED_FUNCTION_20_7();
  *&v106 = MEMORY[0x277D84FA0];
  v104 = *(a1 + 16);
  if (v104)
  {
    v52 = 0;
    v103 = a1 + 32;
    v90 = (v96 + 8);
    while (2)
    {
      if (v52 >= *(a1 + 16))
      {
        goto LABEL_77;
      }

      v105 = (v52 + 1);
      sub_2314A2C74(v103 + 40 * v52, &v112);
      v2 = v114;
      __swift_project_boxed_opaque_existential_1(&v112, v113);
      OUTLINED_FUNCTION_9_15();
      v53 = OUTLINED_FUNCTION_7_22();
      v55 = v54(v53);
      v56 = v55;
      v16 = 0;
      v57 = v55 + 64;
      v58 = 1 << *(v55 + 32);
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      else
      {
        v59 = -1;
      }

      v11 = v59 & *(v55 + 64);
      v60 = (v58 + 63) >> 6;
      while (v11)
      {
LABEL_56:
        v62 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v63 = (*(v56 + 56) + ((v16 << 10) | (16 * v62)));
        v7 = *v63;
        v2 = v63[1];
        swift_bridgeObjectRetain_n();
        sub_2314A00A4(&v109, v7, v2, v64, v65, v66, v67, v68, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, *(&v106 + 1), v107, *(&v107 + 1), v108, v109);

        if (v10[2] && (v69 = sub_23149C888(v7, v2), (v70 & 1) != 0))
        {
          v71 = OUTLINED_FUNCTION_12_9(v69, v10[7]);
          v73 = *(v72 - 256);
          sub_231533EE0(v71, v73);
          sub_23153713C(v73, v101);
          v74 = v114;
          v96 = v113;
          __swift_project_boxed_opaque_existential_1(&v112, v113);
          (v74[8])(&v109, v96, v74);
          if ((v110 & 1) == 0 && (v75 = sub_2315857B4(), (*(v100 + 96))(v75), HIDWORD(v92) = sub_2315857E4(), v96 = *v90, v76 = OUTLINED_FUNCTION_10_11(&v116), v77(v76), v78 = OUTLINED_FUNCTION_10_11(&v115), v79(v78), (v92 & 0x100000000) != 0))
          {
            OUTLINED_FUNCTION_8_18();
            v81 = swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_6_19(v81);

            sub_231533F44(v101);
            v99 = v109;
          }

          else
          {
            OUTLINED_FUNCTION_8_18();
            v80 = swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_6_19(v80);

            sub_231533F44(v101);
            v102 = v109;
          }
        }

        else
        {
        }
      }

      while (1)
      {
        v61 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          goto LABEL_72;
        }

        if (v61 >= v60)
        {
          break;
        }

        v11 = *(v57 + 8 * v61);
        v16 = (v16 + 1);
        if (v11)
        {
          v16 = v61;
          goto LABEL_56;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v112);
      v52 = v105;
      if (v105 != v104)
      {
        continue;
      }

      break;
    }
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v82 = sub_231585FF4();
  __swift_project_value_buffer(v82, qword_280D72248);
  v83 = v106;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v84 = sub_231585FE4();
  v85 = sub_2315865D4();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 134218752;
    *(v86 + 4) = *(v83 + 16);

    *(v86 + 12) = 2048;
    v87 = *(a1 + 16);

    *(v86 + 14) = v87;

    *(v86 + 22) = 2048;
    *(v86 + 24) = *(v99 + 16);

    *(v86 + 32) = 2048;
    v88 = *(v102 + 16);

    *(v86 + 34) = v88;

    _os_log_impl(&dword_231496000, v84, v85, "SignalCache: looked up %ld cacheKeys from %ld signals, found %ld expired and %ld current results.", v86, 0x2Au);
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v89 = swift_allocObject();
  *(v89 + 16) = v83;
  sub_23152B568(sub_2315371A0, v89);

LABEL_70:
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_3_6();
}

unint64_t sub_23153554C(uint64_t a1)
{
  sub_231586954();

  v1 = sub_231586524();
  MEMORY[0x23192FF80](v1);

  return 0xD000000000000018;
}

void sub_2315355DC(void *a1)
{
  v2 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v80 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v79 = v6 - v5;
  v77 = _s6RecordVMa(0);
  OUTLINED_FUNCTION_4_1();
  v76[2] = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_11_12();
  MEMORY[0x28223BE20](v9);
  v78 = v76 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if (static SignalProviding.cacheable()(DynamicType, a1[4]))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_231588340;
    sub_2314A2C74(a1, inited + 32);
    v13 = sub_231536918(inited);
    swift_setDeallocating();
    sub_231536E48(&qword_27DD5B588, &qword_23158A9D0);
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = OUTLINED_FUNCTION_15_6();
    v17 = v16(v15, v14);
    v18 = *(v17 + 16);
    v76[0] = v2;
    if (v18)
    {
      v89 = MEMORY[0x277D84F90];
      sub_23152D598(0, v18, 0);
      v19 = v89;
      v22 = sub_23156C5C8();
      v23 = 0;
      v24 = v17 + 64;
      v83 = v20;
      v84 = v18;
      v81 = v17 + 72;
      v82 = v13;
      v85 = v17 + 64;
      while ((v22 & 0x8000000000000000) == 0 && v22 < 1 << *(v17 + 32))
      {
        v25 = v22 >> 6;
        if ((*(v24 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
        {
          goto LABEL_48;
        }

        if (*(v17 + 36) != v20)
        {
          goto LABEL_49;
        }

        v87 = v23;
        v88 = v20;
        LODWORD(v86) = v21;
        v26 = (*(v17 + 56) + 16 * v22);
        v28 = *v26;
        v27 = v26[1];
        v89 = v19;
        v30 = *(v19 + 16);
        v29 = *(v19 + 24);

        if (v30 >= v29 >> 1)
        {
          sub_23152D598(v29 > 1, v30 + 1, 1);
          v19 = v89;
        }

        *(v19 + 16) = v30 + 1;
        v31 = v19 + 16 * v30;
        *(v31 + 32) = v28;
        *(v31 + 40) = v27;
        v32 = 1 << *(v17 + 32);
        if (v22 >= v32)
        {
          goto LABEL_50;
        }

        v24 = v85;
        v33 = *(v85 + 8 * v25);
        if ((v33 & (1 << v22)) == 0)
        {
          goto LABEL_51;
        }

        if (*(v17 + 36) != v88)
        {
          goto LABEL_52;
        }

        v34 = v33 & (-2 << (v22 & 0x3F));
        if (v34)
        {
          v32 = __clz(__rbit64(v34)) | v22 & 0x7FFFFFFFFFFFFFC0;
          v13 = v82;
        }

        else
        {
          v35 = v19;
          v36 = v25 << 6;
          v37 = v25 + 1;
          v13 = v82;
          v38 = (v81 + 8 * v25);
          while (v37 < (v32 + 63) >> 6)
          {
            v40 = *v38++;
            v39 = v40;
            v36 += 64;
            ++v37;
            if (v40)
            {
              sub_2314ABA68(v22, v88, v86 & 1);
              v32 = __clz(__rbit64(v39)) + v36;
              goto LABEL_20;
            }
          }

          sub_2314ABA68(v22, v88, v86 & 1);
LABEL_20:
          v19 = v35;
        }

        v21 = 0;
        v23 = v87 + 1;
        v22 = v32;
        v20 = v83;
        if (v87 + 1 == v84)
        {

          v2 = v76[0];
          goto LABEL_27;
        }
      }
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
LABEL_27:
      v42 = 0;
      v43 = *(v19 + 16);
      v88 = (v80 + 16);
      v85 = v80 + 40;
      v86 = v80 + 32;
      v44 = MEMORY[0x277D84F98];
      v45 = v19 + 40;
      v87 = v19 + 40;
LABEL_28:
      for (i = (v45 + 16 * v42); ; i += 2)
      {
        if (v43 == v42)
        {

          OUTLINED_FUNCTION_3_6();
          return;
        }

        if (v42 >= *(v19 + 16))
        {
          break;
        }

        if (*(v13 + 16))
        {
          v48 = *(i - 1);
          v47 = *i;

          v49 = OUTLINED_FUNCTION_16_7();
          v51 = sub_23149C888(v49, v50);
          if (v52)
          {
            v53 = OUTLINED_FUNCTION_12_9(v51, *(v13 + 56));
            v55 = *(v54 - 256);
            sub_231533EE0(v53, v55);
            v56 = v55;
            v57 = v78;
            sub_23153713C(v56, v78);
            (*v88)(v79, v57 + *(v77 + 20), v2);
            swift_isUniquelyReferenced_nonNull_native();
            v89 = v44;
            v58 = OUTLINED_FUNCTION_16_7();
            v60 = sub_23149C888(v58, v59);
            if (__OFADD__(*(v44 + 16), (v61 & 1) == 0))
            {
              goto LABEL_53;
            }

            v62 = v60;
            LODWORD(v84) = v61;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BD90, &unk_23158D230);
            if (sub_231586A64())
            {
              v63 = OUTLINED_FUNCTION_16_7();
              v65 = sub_23149C888(v63, v64);
              v67 = v84;
              v45 = v87;
              if ((v84 & 1) != (v66 & 1))
              {
                goto LABEL_55;
              }

              v62 = v65;
            }

            else
            {
              v45 = v87;
              v67 = v84;
            }

            v44 = v89;
            if (v67)
            {
              v68 = OUTLINED_FUNCTION_19_7();
              v2 = v76[0];
              (*(v69 + 40))(v68);

              sub_231533F44(v78);
            }

            else
            {
              *(v89 + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v70 = (*(v44 + 48) + 16 * v62);
              *v70 = v48;
              v70[1] = v47;
              v71 = OUTLINED_FUNCTION_19_7();
              v2 = v76[0];
              (*(v72 + 32))(v71);
              sub_231533F44(v78);
              v73 = *(v44 + 16);
              v74 = __OFADD__(v73, 1);
              v75 = v73 + 1;
              if (v74)
              {
                goto LABEL_54;
              }

              *(v44 + 16) = v75;
            }

            ++v42;
            goto LABEL_28;
          }
        }

        ++v42;
      }

      __break(1u);
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    sub_231586C84();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_3_6();

    sub_2315860F4();
  }
}

uint64_t sub_231535C88(uint64_t a1)
{
  sub_231585884();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  (*(v1 + 96))();
  v20 = v7;
  v21 = a1;
  v8 = sub_231536E98(sub_231537118, v19, a1);
  swift_beginAccess();
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 56, v9);
  (*(v10 + 40))(v8, v9, v10);
  if (v2)
  {
    swift_endAccess();

    v11 = OUTLINED_FUNCTION_7_22();
    return v12(v11);
  }

  else
  {
    v14 = v21;
    swift_endAccess();

    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v15 = sub_231585FF4();
    __swift_project_value_buffer(v15, qword_280D72248);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;

    sub_23152B568(sub_231537134, v16);

    v17 = OUTLINED_FUNCTION_7_22();
    return v18(v17);
  }
}

uint64_t sub_231535EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(_s6RecordVMa(0) + 20);
  v8 = sub_231585884();
  (*(*(v8 - 8) + 16))(a3 + v7, a2, v8);
  *a3 = v5;
  *(a3 + 8) = v6;
  return sub_2314A5168(v5, v6);
}

unint64_t sub_231535F50(uint64_t a1)
{
  sub_231586954();

  v8 = 0xD000000000000015;
  v9 = 0x8000000231592EE0;
  sub_2315341CC(a1);
  v7 = v2;

  sub_231546A58(&v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  sub_2314A7490();
  v3 = sub_231586154();
  v5 = v4;

  MEMORY[0x23192FF80](v3, v5);

  return v8;
}

uint64_t sub_231536060(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = _s6RecordVMa(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *a2;
  v43 = *(a2 + 8);
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v14 = sub_231585FF4();
  __swift_project_value_buffer(v14, qword_280D72248);
  sub_2314A2C74(a1, &v44);
  v15 = sub_231585FE4();
  v16 = sub_2315865D4();
  v41 = a1;
  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_11_1();
    v40 = v13;
    v17 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_1();
    v38 = swift_slowAlloc();
    v39 = a3;
    v47 = v38;
    *v17 = 136315138;
    v18 = v12;
    v19 = v4;
    v20 = v8;
    v22 = v45;
    v21 = v46;
    __swift_project_boxed_opaque_existential_1(&v44, v45);
    OUTLINED_FUNCTION_17_8();
    v23 = v22;
    v8 = v20;
    v4 = v19;
    v12 = v18;
    v24(v23, v21);
    __swift_destroy_boxed_opaque_existential_1(&v44);
    OUTLINED_FUNCTION_13_7();
    v25 = sub_2314A22E8();
    a1 = v41;

    *(v17 + 4) = v25;
    _os_log_impl(&dword_231496000, v15, v16, "SignalCache: caching %s value.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    a3 = v39;
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
    v13 = v40;
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v44);
  }

  v26 = *(v8 + 20);
  sub_231585884();
  OUTLINED_FUNCTION_8();
  (*(v27 + 16))(v12 + v26, a3);
  *v12 = v13;
  *(v12 + 8) = v43;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29 = *(v28 + 24);
  sub_2314A5168(v13, v43);
  v30 = OUTLINED_FUNCTION_7_22();
  v31 = v29(v30);
  v33 = v32;
  swift_beginAccess();
  v34 = *(v4 + 80);
  v35 = *(v4 + 88);
  __swift_mutable_project_boxed_opaque_existential_1(v4 + 56, v34);
  (*(v35 + 32))(v31, v33, v12, v34, v35);
  swift_endAccess();

  if (!v42)
  {
    sub_2314A2C74(v41, &v44);
    v36 = swift_allocObject();
    sub_23149FD3C(&v44, v36 + 16);
    *(v36 + 56) = v13;
    *(v36 + 64) = v43;
    sub_2314A5168(v13, v43);
    sub_23152B568(sub_231537108, v36);
  }

  return sub_231533F44(v12);
}

unint64_t sub_2315363F0(void *a1)
{
  sub_231586954();

  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  MEMORY[0x23192FF80](v4);

  MEMORY[0x23192FF80](61, 0xE100000000000000);
  v5 = SignalValue.description.getter();
  MEMORY[0x23192FF80](v5);

  return 0xD000000000000015;
}

uint64_t sub_2315364E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v40 = _s6RecordVMa(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v43 = *a4;
  v15 = *(a4 + 8);
  v17 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  OUTLINED_FUNCTION_9_15();
  v19 = v18(v17, v16);
  if (*(v19 + 16) && (v20 = sub_23149C888(a2, a3), (v21 & 1) != 0))
  {
    v22 = (*(v19 + 56) + 16 * v20);
    v23 = *v22;
    v24 = v22[1];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_17_8();
    v25 = OUTLINED_FUNCTION_7_22();
    v23 = v26(v25);
    v24 = v27;
  }

  v28 = v23;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v29 = sub_231585FF4();
  __swift_project_value_buffer(v29, qword_280D72248);

  v30 = sub_231585FE4();
  v31 = sub_2315865D4();

  if (os_log_type_enabled(v30, v31))
  {
    OUTLINED_FUNCTION_11_1();
    v32 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_1();
    v44 = swift_slowAlloc();
    *v32 = 136315138;
    *(v32 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v30, v31, "SignalCache: caching %s value.", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
  }

  v33 = *(v40 + 20);
  sub_231585884();
  OUTLINED_FUNCTION_8();
  (*(v34 + 16))(v14 + v33, a5);
  *v14 = v43;
  *(v14 + 8) = v15;
  swift_beginAccess();
  v35 = *(v6 + 80);
  v36 = *(v6 + 88);
  __swift_mutable_project_boxed_opaque_existential_1(v6 + 56, v35);
  v37 = *(v36 + 32);
  sub_2314A5168(v43, v15);
  v37(v28, v24, v14, v35, v36);
  swift_endAccess();
  if (v42)
  {
  }

  else
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v28;
    *(v38 + 24) = v24;
    *(v38 + 32) = v43;
    *(v38 + 40) = v15;
    sub_2314A5168(v43, v15);
    sub_23152B568(sub_2315370F8, v38);
  }

  return sub_231533F44(v14);
}

unint64_t sub_231536854(uint64_t a1, uint64_t a2)
{
  sub_231586954();

  MEMORY[0x23192FF80](a1, a2);
  MEMORY[0x23192FF80](61, 0xE100000000000000);
  v4 = SignalValue.description.getter();
  MEMORY[0x23192FF80](v4);

  return 0xD000000000000015;
}

uint64_t sub_231536918(uint64_t a1)
{
  v10[5] = MEMORY[0x277D84FA0];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      sub_2314A2C74(v3, v10);
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      OUTLINED_FUNCTION_9_15();
      v4 = OUTLINED_FUNCTION_7_22();
      v6 = v5(v4);
      sub_231536B64(v6);
      __swift_destroy_boxed_opaque_existential_1(v10);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  swift_beginAccess();
  v7 = *__swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));

  sub_231571834(v8);
  OUTLINED_FUNCTION_15_6();

  return v7;
}

uint64_t sub_231536C68()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t sub_231536C98()
{
  sub_231536C68();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_231536CE4()
{
  type metadata accessor for SignalCache();
  if (sub_23153449C())
  {
    v0 = OUTLINED_FUNCTION_15_6();
    sub_2315355DC(v0);
    v2 = v1;

    return v2;
  }

  else
  {
    sub_231585884();

    return sub_2315860F4();
  }
}

uint64_t sub_231536E04()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_231536E48(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v2, 32, 7);
}

uint64_t sub_231536E98(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v4 = _s6RecordVMa(0);
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BD78, &unk_23158D210);
  result = sub_231586AC4();
  v8 = result;
  v9 = 0;
  v38 = a3;
  v12 = *(a3 + 64);
  v11 = a3 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = result + 64;
  v35 = result;
  if ((v14 & v10) != 0)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = (*(v38 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(v38 + 56) + 16 * v20;
      v39 = *v24;
      v25 = v39;
      v40 = *(v24 + 8);
      v26 = v40;

      sub_2314A5168(v25, v26);
      v27 = v41;
      v36(&v39);
      v41 = v27;
      if (v27)
      {
        break;
      }

      sub_2314A5EEC(v39, v40);
      *(v33 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v28 = v34;
      v8 = v35;
      v29 = (*(v35 + 48) + 16 * v20);
      *v29 = v22;
      v29[1] = v23;
      result = sub_23153713C(v6, *(v8 + 56) + *(v28 + 72) * v20);
      v30 = *(v8 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_17;
      }

      *(v8 + 16) = v32;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v8 = v35;

    sub_2314A5EEC(v39, v40);
    return v8;
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v8;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_23153713C(uint64_t a1, uint64_t a2)
{
  v4 = _s6RecordVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SignalCacheError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231537288()
{
  result = qword_27DD5BD98;
  if (!qword_27DD5BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BD98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignalCacheExpirationPolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SignalCacheExpirationPolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t static SignalCachingStrategyOption.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_57;
      }

      if (v3 != v6 || v2 != v5)
      {
        v44 = OUTLINED_FUNCTION_1_34();
        OUTLINED_FUNCTION_4_24(v44, v45);
        v46 = OUTLINED_FUNCTION_2_29();
        v48 = OUTLINED_FUNCTION_0_77(v46, v47, 1u);
        v50 = OUTLINED_FUNCTION_0_77(v48, v49, 1u);
        sub_2314A01D4(v50, v51, 1u);
        v16 = OUTLINED_FUNCTION_3_28();
        v18 = 1;
        goto LABEL_32;
      }

      v57 = 1;
      v89 = OUTLINED_FUNCTION_1_34();
      v91 = OUTLINED_FUNCTION_0_77(v89, v90, 1u);
      v93 = OUTLINED_FUNCTION_0_77(v91, v92, 1u);
      sub_2314A01D4(v93, v94, 1u);
      v58 = OUTLINED_FUNCTION_1_34();
      v60 = 1;
      goto LABEL_62;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_57;
      }

      v27 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        OUTLINED_FUNCTION_4_24(v27, v2);
        v29 = OUTLINED_FUNCTION_2_29();
        v31 = OUTLINED_FUNCTION_0_77(v29, v30, 2u);
        v33 = OUTLINED_FUNCTION_0_77(v31, v32, 2u);
        sub_2314A01D4(v33, v34, 2u);
        v16 = OUTLINED_FUNCTION_3_28();
        v18 = 2;
        goto LABEL_32;
      }

      v81 = OUTLINED_FUNCTION_0_77(v27, v2, 2u);
      v83 = OUTLINED_FUNCTION_0_77(v81, v82, 2u);
      sub_2314A01D4(v83, v84, 2u);
      v64 = OUTLINED_FUNCTION_1_34();
      v80 = 2;
      goto LABEL_66;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_57;
      }

      v35 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        OUTLINED_FUNCTION_4_24(v35, v2);
        v37 = OUTLINED_FUNCTION_2_29();
        v39 = OUTLINED_FUNCTION_0_77(v37, v38, 3u);
        v41 = OUTLINED_FUNCTION_0_77(v39, v40, 3u);
        sub_2314A01D4(v41, v42, 3u);
        v16 = OUTLINED_FUNCTION_3_28();
        v18 = 3;
        goto LABEL_32;
      }

      v85 = OUTLINED_FUNCTION_0_77(v35, v2, 3u);
      v87 = OUTLINED_FUNCTION_0_77(v85, v86, 3u);
      sub_2314A01D4(v87, v88, 3u);
      v64 = OUTLINED_FUNCTION_1_34();
      v80 = 3;
      goto LABEL_66;
    case 4u:
      if (v7 != 4)
      {
        goto LABEL_57;
      }

      v19 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        OUTLINED_FUNCTION_4_24(v19, v2);
        v21 = OUTLINED_FUNCTION_2_29();
        v23 = OUTLINED_FUNCTION_0_77(v21, v22, 4u);
        v25 = OUTLINED_FUNCTION_0_77(v23, v24, 4u);
        sub_2314A01D4(v25, v26, 4u);
        v16 = OUTLINED_FUNCTION_3_28();
        v18 = 4;
        goto LABEL_32;
      }

      v75 = OUTLINED_FUNCTION_0_77(v19, v2, 4u);
      v77 = OUTLINED_FUNCTION_0_77(v75, v76, 4u);
      sub_2314A01D4(v77, v78, 4u);
      v64 = OUTLINED_FUNCTION_1_34();
      v80 = 4;
      goto LABEL_66;
    case 5u:
      if (!(v3 | v2))
      {
        if (v7 != 5 || (v5 | v6) != 0)
        {
          goto LABEL_57;
        }

        v62 = OUTLINED_FUNCTION_1_34();
        sub_2314A01D4(v62, v63, 5u);
        v64 = 0;
LABEL_65:
        v79 = 0;
        v80 = 5;
LABEL_66:
        sub_2314A01D4(v64, v79, v80);
        return 1;
      }

      if (v3 ^ 1 | v2)
      {
        if (v7 != 5 || v6 != 2 || v5 != 0)
        {
          goto LABEL_57;
        }

        v99 = OUTLINED_FUNCTION_1_34();
        sub_2314A01D4(v99, v100, 5u);
        v64 = 2;
        goto LABEL_65;
      }

      if (v7 != 5 || v6 != 1 || v5 != 0)
      {
LABEL_57:
        v67 = OUTLINED_FUNCTION_3_28();
        v69 = OUTLINED_FUNCTION_0_77(v67, v68, v7);
        v71 = OUTLINED_FUNCTION_0_77(v69, v70, v4);
        sub_2314A01D4(v71, v72, v4);
        v73 = OUTLINED_FUNCTION_3_28();
        sub_2314A01D4(v73, v74, v7);
        return 0;
      }

      v55 = OUTLINED_FUNCTION_1_34();
      sub_2314A01D4(v55, v56, 5u);
      v57 = 1;
      v58 = 1;
      v59 = 0;
      v60 = 5;
LABEL_62:
      sub_2314A01D4(v58, v59, v60);
      return v57;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_57;
      }

      v8 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        v95 = OUTLINED_FUNCTION_0_77(v8, v2, 0);
        v97 = OUTLINED_FUNCTION_0_77(v95, v96, 0);
        sub_2314A01D4(v97, v98, 0);
        v64 = OUTLINED_FUNCTION_1_34();
        v80 = 0;
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_4_24(v8, v2);
      v10 = OUTLINED_FUNCTION_2_29();
      v12 = OUTLINED_FUNCTION_0_77(v10, v11, 0);
      v14 = OUTLINED_FUNCTION_0_77(v12, v13, 0);
      sub_2314A01D4(v14, v15, 0);
      v16 = OUTLINED_FUNCTION_3_28();
      v18 = 0;
LABEL_32:
      sub_2314A01D4(v16, v17, v18);
      return v4 & 1;
  }
}

uint64_t SignalCachingStrategyOption.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_231586D14();
  switch(v3)
  {
    case 1:
      v4 = 1;
      goto LABEL_7;
    case 2:
      v4 = 2;
      goto LABEL_7;
    case 3:
      v4 = 3;
      goto LABEL_7;
    case 4:
      v4 = 4;
      goto LABEL_7;
    case 5:
      if (v2 | v1)
      {
        if (v2 ^ 1 | v1)
        {
          v6 = 7;
        }

        else
        {
          v6 = 6;
        }
      }

      else
      {
        v6 = 5;
      }

      MEMORY[0x231930A00](v6);
      return sub_231586D44();
    default:
      v4 = 0;
LABEL_7:
      MEMORY[0x231930A00](v4);
      sub_231586274();
      return sub_231586D44();
  }
}

uint64_t sub_23153777C(uint64_t a1)
{
  sub_231586D14();
  SignalCachingStrategyOption.hash(into:)();
  return sub_231586D44();
}

unint64_t sub_2315377D0()
{
  result = qword_280D6FEC8[0];
  if (!qword_280D6FEC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D6FEC8);
  }

  return result;
}

uint64_t sub_231537828(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231537868(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

void __swiftcall SignalComputationContext.init(bundleIds:entityId:sharedUserId:domainUseCases:)(SiriSignals::SignalComputationContext *__return_ptr retstr, Swift::OpaquePointer bundleIds, Swift::String_optional entityId, Swift::String_optional sharedUserId, Swift::OpaquePointer_optional domainUseCases)
{
  retstr->bundleIds = bundleIds;
  retstr->entityId = entityId;
  retstr->sharedUserId = sharedUserId;
  retstr->domainUseCases.value._rawValue = domainUseCases.value._rawValue;
}

uint64_t SignalComputationContext.entityId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SignalComputationContext.sharedUserId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

double SignalComputationContext.entityValue.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = xmmword_23158D490;
    v4 = *(v1 + 8);
  }

  else
  {
    v4 = 0;
    v3 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v2;

  return result;
}

void sub_23153795C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v39 = MEMORY[0x277D84F90];
    sub_23152D774(0, v3, 0);
    v5 = v39;
    v8 = sub_2315634C4();
    v9 = 0;
    v38 = v4 + 56;
    v31 = v4 + 64;
    v32 = v3;
    v33 = v4;
    v34 = a2;
    if ((v8 & 0x8000000000000000) == 0)
    {
      while (v8 < 1 << *(v4 + 32))
      {
        v10 = v8 >> 6;
        if ((*(v38 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v4 + 36) != v6)
        {
          goto LABEL_31;
        }

        v35 = v7;
        v36 = v6;
        v11 = (*(v4 + 48) + 16 * v8);
        v13 = *v11;
        v12 = v11[1];
        v14 = *(a2 + 16);

        if (v14)
        {

          v15 = sub_23149C888(v13, v12);
          v16 = 0;
          if (v17)
          {
            v16 = *(*(a2 + 56) + 8 * v15);
          }
        }

        else
        {
          v16 = 0;
        }

        v19 = *(v5 + 16);
        v18 = *(v5 + 24);
        v20 = v36;
        if (v19 >= v18 >> 1)
        {
          sub_23152D774(v18 > 1, v19 + 1, 1);
          v20 = v36;
        }

        *(v5 + 16) = v19 + 1;
        v21 = (v5 + 24 * v19);
        v21[4] = v13;
        v21[5] = v12;
        v21[6] = v16;
        if (v35)
        {
          goto LABEL_35;
        }

        v4 = v33;
        a2 = v34;
        v22 = 1 << *(v33 + 32);
        if (v8 >= v22)
        {
          goto LABEL_32;
        }

        v23 = *(v38 + 8 * v10);
        if ((v23 & (1 << v8)) == 0)
        {
          goto LABEL_33;
        }

        if (*(v33 + 36) != v20)
        {
          goto LABEL_34;
        }

        v24 = v23 & (-2 << (v8 & 0x3F));
        if (v24)
        {
          v22 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
          v25 = v32;
        }

        else
        {
          v37 = v5;
          v26 = v10 << 6;
          v27 = v10 + 1;
          v25 = v32;
          v28 = (v31 + 8 * v10);
          while (v27 < (v22 + 63) >> 6)
          {
            v30 = *v28++;
            v29 = v30;
            v26 += 64;
            ++v27;
            if (v30)
            {
              sub_2314ABA68(v8, v20, 0);
              v22 = __clz(__rbit64(v29)) + v26;
              goto LABEL_24;
            }
          }

          sub_2314ABA68(v8, v20, 0);
LABEL_24:
          v5 = v37;
        }

        if (++v9 == v25)
        {
          goto LABEL_28;
        }

        v7 = 0;
        v6 = *(v33 + 36);
        v8 = v22;
        if (v22 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_28:
  }
}

uint64_t sub_231537C28(uint64_t a1, double *a2, void *a3, uint64_t a4)
{
  v4 = a3;
  v5 = a1;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = 0;
  v48 = a1 + 64;

  for (i = v10; v9; v6 = v48)
  {
LABEL_8:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v5 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *a2;
    v51 = *v15;
    if (*a2 == 0.0)
    {
      v19 = *(a4 + 16);

      swift_isUniquelyReferenced_nonNull_native();
      v52 = *v4;
      v20 = sub_23149C888(v16, v17);
      if (__OFADD__(v52[2], (v21 & 1) == 0))
      {
        goto LABEL_33;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
      if (sub_231586A64())
      {
        v24 = sub_23149C888(v51, v17);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_37;
        }

        v22 = v24;
      }

      v26 = 1.0 / v19;
      if (v23)
      {
        *(v52[7] + 8 * v22) = v26;
        v5 = v45;
      }

      else
      {
        v52[(v22 >> 6) + 8] |= 1 << v22;
        v36 = (v52[6] + 16 * v22);
        *v36 = v51;
        v36[1] = v17;
        *(v52[7] + 8 * v22) = v26;
        v37 = v52[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        v5 = v45;
        if (v38)
        {
          goto LABEL_35;
        }

        v52[2] = v39;
      }

      v4 = a3;
      *a3 = v52;
    }

    else
    {
      v27 = *(*(v5 + 56) + 8 * v14);

      swift_isUniquelyReferenced_nonNull_native();
      v28 = *v4;
      v53 = v28;
      v29 = sub_23149C888(v16, v17);
      if (__OFADD__(v28[2], (v30 & 1) == 0))
      {
        goto LABEL_34;
      }

      v31 = v29;
      v32 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
      if (sub_231586A64())
      {
        v33 = v17;
        v34 = sub_23149C888(v51, v17);
        if ((v32 & 1) != (v35 & 1))
        {
          goto LABEL_37;
        }

        v31 = v34;
      }

      else
      {
        v33 = v17;
      }

      v40 = v27 / v18;
      if (v32)
      {
        *(v28[7] + 8 * v31) = v40;
      }

      else
      {
        v28[(v31 >> 6) + 8] |= 1 << v31;
        v41 = (v28[6] + 16 * v31);
        *v41 = v51;
        v41[1] = v33;
        *(v28[7] + 8 * v31) = v40;
        v42 = v28[2];
        v38 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v38)
        {
          goto LABEL_36;
        }

        v28[2] = v43;
      }

      v4 = a3;
      *a3 = v53;
    }

    v10 = i;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_231537FC0()
{
  result = sub_231586964();
  qword_27DD5BDA0 = result;
  *algn_27DD5BDA8 = v1;
  return result;
}

uint64_t static NowPlayingOneDayCountSignal.signalName.getter()
{
  if (qword_27DD5AE48 != -1)
  {
    swift_once();
  }

  v0 = qword_27DD5BDA0;

  return v0;
}

uint64_t NowPlayingOneDayCountSignal.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static NowPlayingOneDayCountSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = type metadata accessor for NowPlayingOneDayCountSignal();
  v2 = swift_allocObject();
  v3 = sub_231538DF8(v2);
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for NowPlayingOneDayCountSignal;
  *(v0 + 32) = v3;
  return v0;
}

uint64_t static NowPlayingOneDayCountSignal.instances(with:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_231538C68(v4, v1, v2, v3);
}

uint64_t static NowPlayingOneDayCountSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612888);
  *a1 = result;
  return result;
}

uint64_t sub_2315381AC(uint64_t a1, int64_t a2)
{
  LOBYTE(v3) = v2;
  v6 = sub_2314D1500(0, 0);
  if (qword_280D70420 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v7 = sub_231585FF4();
    v8 = __swift_project_value_buffer(v7, qword_280D72248);

    v9 = sub_231585FE4();
    v10 = sub_2315865D4();

    v46 = a2;
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v11 = 136315394;
      *(v11 + 4) = sub_2314A22E8();
      *(v11 + 12) = 2080;
      sub_2315860E4();
      v12 = sub_2314A22E8();

      *(v11 + 14) = v12;
      _os_log_impl(&dword_231496000, v9, v10, "NowPlayingOneDayCountSignal: Computed %s=%s", v11, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    a1 = sub_23149FF38(v13, v14, v15, v16, v17, v18, v19, v20, v8, v3, v46, a1, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
    sub_23153861C(v6, a1);
    v22 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
    v23 = sub_231586AC4();
    v6 = v23;
    a2 = 0;
    v24 = 1 << *(v22 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v22 + 64);
    v27 = (v24 + 63) >> 6;
    v28 = v23 + 64;
    if (!v26)
    {
      break;
    }

    while (1)
    {
      v29 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_13:
      v3 = v29 | (a2 << 6);
      v32 = (*(v22 + 48) + 16 * v3);
      v33 = *v32;
      a1 = v32[1];

      v34 = Double.rounded(to:)(3);
      *(v28 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
      v35 = (v6[6] + 16 * v3);
      *v35 = v33;
      v35[1] = a1;
      *(v6[7] + 8 * v3) = v34;
      v36 = v6[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        break;
      }

      v6[2] = v38;
      if (!v26)
      {
        goto LABEL_8;
      }
    }

LABEL_22:
    __break(1u);
LABEL_23:
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

LABEL_8:
  v30 = a2;
  while (1)
  {
    a2 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (a2 >= v27)
    {
      break;
    }

    v31 = *(v22 + 64 + 8 * a2);
    ++v30;
    if (v31)
    {
      v29 = __clz(__rbit64(v31));
      v26 = (v31 - 1) & v31;
      goto LABEL_13;
    }
  }

  v39 = sub_231585FE4();
  v40 = sub_2315865D4();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v41 = 136315394;
    *(v41 + 4) = sub_2314A22E8();
    *(v41 + 12) = 2080;
    sub_2315860E4();
    v42 = sub_2314A22E8();

    *(v41 + 14) = v42;
    _os_log_impl(&dword_231496000, v39, v40, "NowPlayingOneDayCountSignal: Normalized Counts %s=%s", v41, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v48 = v6;
  LOBYTE(v49) = 3;
  v47(&v48);
  v43 = v48;
  v44 = v49;

  return sub_2314A5EEC(v43, v44);
}

void sub_23153861C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
  v4 = sub_231586AC4();
  v5 = v4;
  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = v4 + 64;
  if (v9)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v15 = v12 | (v6 << 6);
      v16 = (*(a1 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(a1 + 56) + 8 * v15);
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v5[6] + 16 * v15);
      *v20 = v18;
      v20[1] = v17;
      *(v5[7] + 8 * v15) = v19;
      v21 = v5[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v5[2] = v23;

      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        sub_2315388E0(v5, a2, 0);

        return;
      }

      v14 = *(a1 + 64 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t NowPlayingOneDayCountSignal.deinit()
{

  return v0;
}

uint64_t NowPlayingOneDayCountSignal.__deallocating_deinit()
{
  NowPlayingOneDayCountSignal.deinit();

  return MEMORY[0x2821FE8D8](v0, 73, 7);
}

uint64_t sub_23153882C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_231538C68(v4, v1, v2, v3);
}

uint64_t sub_2315388E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {

    sub_23153795C(a2, a1);
    v7 = sub_231507660(v6);
  }

  else
  {

    v7 = a1;
  }

  if (qword_280D70420 != -1)
  {
LABEL_23:
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v8 = sub_231585FF4();
  __swift_project_value_buffer(v8, qword_280D72248);

  v9 = sub_231585FE4();
  v10 = sub_2315865D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v11 = 136315138;
    sub_2315860E4();
    v12 = sub_2314A22E8();

    *(v11 + 4) = v12;
    _os_log_impl(&dword_231496000, v9, v10, "Normalize#values %s...", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v13 = 0;
  v14 = 1 << *(v7 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v7 + 64);
  v17 = (v14 + 63) >> 6;
  v18 = 0.0;
  if (v16)
  {
    while (1)
    {
      v19 = v13;
LABEL_15:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v18 = v18 + *(*(v7 + 56) + ((v19 << 9) | (8 * v20)));
      if (!v16)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v7 + 64 + 8 * v19);
    ++v13;
    if (v16)
    {
      v13 = v19;
      goto LABEL_15;
    }
  }

  v21 = fabs(v18);
  if (a3)
  {
    v18 = v21;
  }

  v31 = v18;
  v30 = MEMORY[0x277D84F98];

  sub_231537C28(v22, &v31, &v30, v7);

  v23 = sub_231585FE4();
  v24 = sub_2315865D4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v25 = 136315138;
    swift_beginAccess();

    sub_2315860E4();

    v26 = sub_2314A22E8();

    *(v25 + 4) = v26;
    _os_log_impl(&dword_231496000, v23, v24, "Normalize#values result: %s...", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  swift_beginAccess();
  return v30;
}

uint64_t sub_231538C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = *(v6 + 16);
  v12(&v18 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_231588340;
  v14 = type metadata accessor for NowPlayingOneDayCountSignal();
  v15 = swift_allocObject();
  (v12)(v9, v11, a3);
  v16 = sub_231538FD4(v9, v15, a3, a4);
  *(v13 + 56) = v14;
  *(v13 + 64) = &protocol witness table for NowPlayingOneDayCountSignal;
  *(v13 + 32) = v16;
  (*(v6 + 8))(v11, a3);
  return v13;
}

uint64_t sub_231538DF8(uint64_t a1)
{
  if (qword_27DD5AE48 != -1)
  {
    swift_once();
  }

  v2 = *algn_27DD5BDA8;
  *(a1 + 16) = qword_27DD5BDA0;
  *(a1 + 24) = v2;
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v3 = swift_allocObject();

  v4 = MEMORY[0x277D84F90];
  *(a1 + 32) = sub_231528564(MEMORY[0x277D84F90], sub_23149A718, 0, v3);
  *(a1 + 40) = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  return a1;
}

_BYTE *storeEnumTagSinglePayload for Normalize(_BYTE *result, int a2, int a3)
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

uint64_t sub_231538FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v16 = a4;
  __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 32))();
  if (qword_27DD5AE48 != -1)
  {
    swift_once();
  }

  v7 = *algn_27DD5BDA8;
  *(a2 + 16) = qword_27DD5BDA0;
  *(a2 + 24) = v7;
  v8 = v15;
  v9 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v10 = *(a4 + 8);

  v11 = v10(a3, a4);
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v12 = swift_allocObject();
  *(a2 + 32) = sub_231528564(v11, sub_23149A718, 0, v12);
  *(a2 + 40) = v10(v8, v9);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  __swift_destroy_boxed_opaque_existential_1(v14);
  return a2;
}

double SignalDefinitionParametersProvider.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 88) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 65) = 0u;
  return result;
}

void __swiftcall EntityValue.init(fieldName:entityId:)(SiriSignals::EntityValue_optional *__return_ptr retstr, Swift::String_optional fieldName, Swift::String_optional entityId)
{
  if (fieldName.value._object && entityId.value._object)
  {
    retstr->value.fieldName = fieldName.value;
    retstr->value.fieldValue = entityId.value;
  }

  else
  {

    retstr->value.fieldName = 0u;
    retstr->value.fieldValue = 0u;
  }
}

double sub_231539240@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double SignalDefinitionParametersProviding.entityValue.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t EntityValue.fieldName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EntityValue.fieldValue.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SignalDefinitionParametersProvider.sharedUserId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void SignalDefinitionParametersProvider.entityValue.getter(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_23149A8A0(v2, v3, v4, v5);
}

void *SignalDefinitionParametersProvider.intent.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t sub_231539348(uint64_t a1)
{
  *(v1 + 16) = a1;
}

uint64_t sub_23153938C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_2315393D4(uint64_t a1)
{
  *(v1 + 40) = a1;
}

uint64_t sub_231539418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[6];
  v6 = v4[7];
  v7 = v4[8];
  v8 = v4[9];
  v4[6] = a3;
  v4[7] = a4;
  v4[8] = a1;
  v4[9] = a2;

  sub_2314A0D38(v5, v6, v7, v8);
}

uint64_t sub_23153949C(void *a1)
{
  v2 = *(v1 + 88);
  *(v1 + 88) = a1;
  v3 = a1;
}

_BYTE *storeEnumTagSinglePayload for NoParameters(_BYTE *result, int a2, int a3)
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

uint64_t sub_231539628(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_231539668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231539828()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B600, &qword_23158AAC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23158D740;
  *(v0 + 32) = type metadata accessor for CalendarSignal(0);
  *(v0 + 40) = &protocol witness table for CalendarSignal;
  *(v0 + 48) = &type metadata for ClientLanguageSignal;
  *(v0 + 56) = &protocol witness table for ClientLanguageSignal;
  *(v0 + 64) = &type metadata for ClientLocaleSignal;
  *(v0 + 72) = &protocol witness table for ClientLocaleSignal;
  *(v0 + 80) = &type metadata for ClientRegionSignal;
  *(v0 + 88) = &protocol witness table for ClientRegionSignal;
  *(v0 + 96) = &type metadata for DeviceClassSignal;
  *(v0 + 104) = &protocol witness table for DeviceClassSignal;
  *(v0 + 112) = &type metadata for ClientTimeRangeSignal;
  *(v0 + 120) = &protocol witness table for ClientTimeRangeSignal;
  *(v0 + 128) = &type metadata for HashedLocationSignal;
  *(v0 + 136) = &protocol witness table for HashedLocationSignal;
  *(v0 + 144) = &type metadata for IsCarPlayConnectedSignal;
  *(v0 + 152) = &protocol witness table for IsCarPlayConnectedSignal;
  *(v0 + 160) = &type metadata for IsScreenLockedSignal;
  *(v0 + 168) = &protocol witness table for IsScreenLockedSignal;
  *(v0 + 176) = &type metadata for DeviceMotionStateSignal;
  *(v0 + 184) = &protocol witness table for DeviceMotionStateSignal;
  *(v0 + 192) = type metadata accessor for DomainRecencySignal(0);
  *(v0 + 200) = &protocol witness table for DomainRecencySignal;
  *(v0 + 208) = type metadata accessor for DomainRecencyRankSignal(0);
  *(v0 + 216) = &protocol witness table for DomainRecencyRankSignal;
  *(v0 + 224) = type metadata accessor for DomainFrequencySignal(0);
  *(v0 + 232) = &protocol witness table for DomainFrequencySignal;
  *(v0 + 240) = &type metadata for DomainTaskAbandonmentSignal;
  *(v0 + 248) = &protocol witness table for DomainTaskAbandonmentSignal;
  *(v0 + 256) = type metadata accessor for LastAppDisambiguationResultSignal(0);
  *(v0 + 264) = &protocol witness table for LastAppDisambiguationResultSignal;
  *(v0 + 272) = type metadata accessor for LastAppDisambiguationRecencySignal(0);
  *(v0 + 280) = &protocol witness table for LastAppDisambiguationRecencySignal;
  *(v0 + 288) = type metadata accessor for LastActionDisambiguationResultSignal(0);
  *(v0 + 296) = &protocol witness table for LastActionDisambiguationResultSignal;
  *(v0 + 304) = type metadata accessor for LastActionDisambiguationRecencySignal(0);
  *(v0 + 312) = &protocol witness table for LastActionDisambiguationRecencySignal;
  *(v0 + 320) = &type metadata for TimeSpentInAppAffinityScore;
  *(v0 + 328) = &protocol witness table for TimeSpentInAppAffinityScore;
  *(v0 + 336) = type metadata accessor for ActionDisambiguationFrequencySignal(0);
  *(v0 + 344) = &protocol witness table for ActionDisambiguationFrequencySignal;
  *(v0 + 352) = type metadata accessor for AppDisambiguationFrequencySignal(0);
  *(v0 + 360) = &protocol witness table for AppDisambiguationFrequencySignal;
  *(v0 + 368) = type metadata accessor for SelectedActionDisambiguationFrequencySignal(0);
  *(v0 + 376) = &protocol witness table for SelectedActionDisambiguationFrequencySignal;
  *(v0 + 384) = type metadata accessor for SelectedAppDisambiguationFrequencySignal(0);
  *(v0 + 392) = &protocol witness table for SelectedAppDisambiguationFrequencySignal;
  *(v0 + 400) = &type metadata for TimeSinceAppLastLaunchedSignal;
  *(v0 + 408) = &protocol witness table for TimeSinceAppLastLaunchedSignal;
  *(v0 + 416) = &type metadata for ForegroundAppRecencySignal;
  *(v0 + 424) = &protocol witness table for ForegroundAppRecencySignal;
  *(v0 + 432) = type metadata accessor for AppLaunchCountSignal();
  *(v0 + 440) = &protocol witness table for AppLaunchCountSignal;
  *(v0 + 448) = type metadata accessor for DomainUserPersonaSignal(0);
  *(v0 + 456) = protocol witness table for DomainUserPersonaSignal;
  *(v0 + 464) = type metadata accessor for LastNowPlayingSignal();
  *(v0 + 472) = &protocol witness table for LastNowPlayingSignal;
  *(v0 + 480) = type metadata accessor for LastNowPlayingAtSignal();
  *(v0 + 488) = &protocol witness table for LastNowPlayingAtSignal;
  *(v0 + 496) = type metadata accessor for LastNowPlayingRecencySignal();
  *(v0 + 504) = &protocol witness table for LastNowPlayingRecencySignal;
  *(v0 + 512) = &type metadata for NowPlayingCountSignal;
  *(v0 + 520) = &protocol witness table for NowPlayingCountSignal;
  *(v0 + 528) = &type metadata for NowPlayingSignal;
  *(v0 + 536) = &protocol witness table for NowPlayingSignal;
  *(v0 + 544) = type metadata accessor for NowPlayingScoresSignal();
  *(v0 + 552) = &protocol witness table for NowPlayingScoresSignal;
  *(v0 + 560) = &type metadata for NowPlayingStateSignal;
  *(v0 + 568) = &protocol witness table for NowPlayingStateSignal;
  *(v0 + 576) = &type metadata for MediaSubscriptionStatusSignal;
  *(v0 + 584) = &protocol witness table for MediaSubscriptionStatusSignal;
  *(v0 + 592) = &type metadata for TotalTimeSpentInApp;
  *(v0 + 600) = &protocol witness table for TotalTimeSpentInApp;
  result = type metadata accessor for UsageScoreSignal(0);
  *(v0 + 608) = result;
  *(v0 + 616) = &protocol witness table for UsageScoreSignal;
  *(v0 + 624) = &type metadata for ClientWorkoutSignal;
  *(v0 + 632) = &protocol witness table for ClientWorkoutSignal;
  qword_280D721C0 = v0;
  return result;
}

uint64_t sub_231539B94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B600, &qword_23158AAC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23158D750;
  *(v0 + 32) = type metadata accessor for DomainToContactRecencySignal(0);
  *(v0 + 40) = &protocol witness table for DomainToContactRecencySignal;
  *(v0 + 48) = type metadata accessor for DomainToContactRecencyRankSignal(0);
  *(v0 + 56) = &protocol witness table for DomainToContactRecencyRankSignal;
  *(v0 + 64) = type metadata accessor for DomainToContactFrequencySignal(0);
  *(v0 + 72) = &protocol witness table for DomainToContactFrequencySignal;
  *(v0 + 80) = type metadata accessor for DomainToContactAffinityScoreSignal(0);
  *(v0 + 88) = &protocol witness table for DomainToContactAffinityScoreSignal;
  *(v0 + 96) = type metadata accessor for DomainToHandleAffinityScoreSignal(0);
  *(v0 + 104) = &protocol witness table for DomainToHandleAffinityScoreSignal;
  *(v0 + 112) = type metadata accessor for DomainToContactAffinityScoreByNameSignal(0);
  *(v0 + 120) = &protocol witness table for DomainToContactAffinityScoreByNameSignal;
  *(v0 + 128) = type metadata accessor for DomainToContactAffinityScoreByIntentSignal(0);
  *(v0 + 136) = &protocol witness table for DomainToContactAffinityScoreByIntentSignal;
  *(v0 + 144) = type metadata accessor for DomainToContactTimeSinceLastUsedSignal(0);
  *(v0 + 152) = &protocol witness table for DomainToContactTimeSinceLastUsedSignal;
  *(v0 + 160) = type metadata accessor for DomainToContactFrequencyByIntentSignal(0);
  *(v0 + 168) = &protocol witness table for DomainToContactFrequencyByIntentSignal;
  *(v0 + 176) = type metadata accessor for DomainToContactTotalFrequencyByIntentSignal(0);
  *(v0 + 184) = &protocol witness table for DomainToContactTotalFrequencyByIntentSignal;
  *(v0 + 192) = type metadata accessor for DomainTotalFrequencyByCountryCodeSignal(0);
  *(v0 + 200) = &protocol witness table for DomainTotalFrequencyByCountryCodeSignal;
  *(v0 + 208) = type metadata accessor for DomainAffinityScoreSignal(0);
  *(v0 + 216) = &protocol witness table for DomainAffinityScoreSignal;
  *(v0 + 224) = &type metadata for TimeSinceAppLastInstalledSignal;
  *(v0 + 232) = &protocol witness table for TimeSinceAppLastInstalledSignal;
  *(v0 + 240) = &type metadata for TimeTodaySpentInApp;
  *(v0 + 248) = &protocol witness table for TimeTodaySpentInApp;
  *(v0 + 256) = &type metadata for ForegroundAppBiomeSignal;
  *(v0 + 264) = &protocol witness table for ForegroundAppBiomeSignal;
  *(v0 + 272) = &type metadata for ForegroundAppRecencySignal;
  *(v0 + 280) = &protocol witness table for ForegroundAppRecencySignal;
  *(v0 + 288) = &type metadata for IsFirstPartyAppSignal;
  *(v0 + 296) = &protocol witness table for IsFirstPartyAppSignal;
  *(v0 + 304) = type metadata accessor for DomainTotalFrequencySignal(0);
  *(v0 + 312) = &protocol witness table for DomainTotalFrequencySignal;
  *(v0 + 320) = &type metadata for ForegroundAppInFocusSignal;
  *(v0 + 328) = &protocol witness table for ForegroundAppInFocusSignal;
  *(v0 + 336) = type metadata accessor for NowPlayingOneDayCountSignal();
  *(v0 + 344) = &protocol witness table for NowPlayingOneDayCountSignal;
  return v0;
}

uint64_t static SignalFactory.all.getter()
{
  if (qword_280D6E250 != -1)
  {
    OUTLINED_FUNCTION_0_79(&qword_280D6E250);
  }

  v0 = qword_280D721C0;
  v1 = sub_231539B94();

  sub_23152C978(v1);
  return v0;
}

SiriSignals::SignalFactory __swiftcall SignalFactory.init(classes:context:)(Swift::OpaquePointer classes, SiriSignals::SignalComputationContext *context)
{
  v19 = v2;
  rawValue = context->bundleIds._rawValue;
  v20 = *&context->entityId.value._object;
  object = context->sharedUserId.value._object;
  v21 = context->domainUseCases.value._rawValue;
  v5 = *(classes._rawValue + 2);
  if (v5)
  {
    countAndFlagsBits = context->entityId.value._countAndFlagsBits;
    v7 = MEMORY[0x277D84F90];
    v8 = (classes._rawValue + 40);
    while (1)
    {
      v9 = *v8;
      v22[0] = rawValue;
      v22[1] = countAndFlagsBits;
      v23 = v20;
      v24 = object;
      v25 = v21;
      result.instances._rawValue = (*(v9 + 96))(v22);
      v11 = *(result.instances._rawValue + 2);
      v12 = v7[2];
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        break;
      }

      v14 = result.instances._rawValue;
      result.instances._rawValue = swift_isUniquelyReferenced_nonNull_native();
      if (!LODWORD(result.instances._rawValue) || v13 > v7[3] >> 1)
      {
        if (v12 <= v13)
        {
          v15 = v12 + v11;
        }

        else
        {
          v15 = v12;
        }

        sub_2314F0CB4(result.instances._rawValue, v15, 1, v7);
        v7 = result.instances._rawValue;
      }

      if (v14[2])
      {
        if ((v7[3] >> 1) - v7[2] < v11)
        {
          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
        swift_arrayInitWithCopy();

        if (v11)
        {
          v16 = v7[2];
          v17 = __OFADD__(v16, v11);
          v18 = v16 + v11;
          if (v17)
          {
            goto LABEL_23;
          }

          v7[2] = v18;
        }
      }

      else
      {

        if (v11)
        {
          goto LABEL_21;
        }
      }

      v8 += 2;
      if (!--v5)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_19:

    *v19 = v7;
  }

  return result;
}

SiriSignals::SignalFactory static SignalFactory.instantiatingAll(context:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (qword_280D6E250 != -1)
  {
    OUTLINED_FUNCTION_0_79(&qword_280D6E250);
  }

  v7._rawValue = qword_280D721C0;
  v8 = sub_231539B94();

  sub_23152C978(v8);
  v10.bundleIds._rawValue = v1;
  v10.entityId.value._countAndFlagsBits = v2;
  v10.entityId.value._object = v3;
  v10.sharedUserId.value._countAndFlagsBits = v4;
  v10.sharedUserId.value._object = v5;
  v10.domainUseCases.value._rawValue = v6;

  return SignalFactory.init(classes:context:)(v7, &v10);
}

uint64_t SignalGatherer.__allocating_init(signals:candidateAppBundleIds:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SignalGatherer.init(signals:candidateAppBundleIds:)(a1, a2);
  return v4;
}

uint64_t SignalGathererError.hashValue.getter()
{
  v1 = *v0;
  sub_231586D14();
  MEMORY[0x231930A00](v1);
  return sub_231586D44();
}

SiriSignals::SignalGatherer::ValuesWithTimings __swiftcall SignalGatherer.ValuesWithTimings.init(values:timings:overallTime:)(Swift::OpaquePointer values, Swift::OpaquePointer timings, Swift::Double overallTime)
{
  *v3 = values;
  *(v3 + 8) = timings;
  *(v3 + 16) = overallTime;
  result.overallTime = overallTime;
  result.timings = timings;
  result.values = values;
  return result;
}

void *SignalGatherer.init(signals:candidateAppBundleIds:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v2;
    v38 = MEMORY[0x277D84F90];
    sub_23152D5B8(0, v6, 0);
    v8 = v38;
    v9 = v5 + 32;
    do
    {
      sub_2314A5780(v9, v34);
      sub_2314A5780(v34, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB30, &qword_23158C660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v34);
        v10 = v31;
        v11 = &v35;
      }

      else
      {
        v32 = 0;
        memset(v31, 0, sizeof(v31));
        v36 = &type metadata for SignalProvidingAdapter;
        v37 = &off_28461B890;
        *&v35 = swift_allocObject();
        v10 = v34;
        v11 = (v35 + 16);
      }

      sub_23149FD3C(v10, v11);
      v38 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        v21 = OUTLINED_FUNCTION_18(v12);
        sub_23152D5B8(v21, v13 + 1, 1);
      }

      v15 = v36;
      v14 = v37;
      __swift_mutable_project_boxed_opaque_existential_1(&v35, v36);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x28223BE20](v16);
      OUTLINED_FUNCTION_5();
      v19 = v18 - v17;
      (*(v20 + 16))(v18 - v17);
      sub_231540938(v13, v19, &v38, v15, v14);
      __swift_destroy_boxed_opaque_existential_1(&v35);
      v8 = v38;
      v9 += 40;
      --v6;
    }

    while (v6);
    v3 = v29;
    v4 = a2;
    v5 = a1;
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v3[2] = v8;
  v33[0] = v7;
  v22 = *(v5 + 16);
  if (v22)
  {
    v23 = v5 + 32;
    v24 = MEMORY[0x277D84F90];
    do
    {
      sub_2314A5780(v23, &v35);
      sub_23149FD3C(&v35, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB30, &qword_23158C660);
      type metadata accessor for CoreDuetBackedSignal();
      if ((swift_dynamicCast() & 1) != 0 && *&v31[0])
      {
        MEMORY[0x231930040]();
        v25 = *((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v25 >> 1)
        {
          OUTLINED_FUNCTION_18(v25);
          sub_2315863C4();
        }

        sub_231586404();
        v24 = v33[0];
      }

      v23 += 40;
      --v22;
    }

    while (v22);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v26 = sub_23153A5EC(v24);

  v3[5] = v26;
  v3[3] = v4;
  type metadata accessor for SignalCache();
  v3[4] = sub_23153449C();
  return v3;
}

uint64_t sub_23153A5EC(uint64_t a1)
{
  if (sub_2314A7080(a1))
  {
    v2 = sub_231566740(a1);
    if (!v2)
    {
      goto LABEL_9;
    }

    v3 = v2;
    sub_2315869F4();
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x231930660](v4, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        ++v4;
        v6 = *(v5 + 24);

        sub_2315869C4();
        sub_231586A04();
        sub_231586A14();
        sub_2315869D4();
      }

      while (v3 != v4);
LABEL_9:
      v7 = [objc_opt_self() userContext];
      if (v7)
      {
        v8 = v7;
        sub_2314A207C(0, &qword_280D6FE80, 0x277CFE358);
        v9 = sub_231586374();

        v10 = [v8 valuesForKeyPaths_];

        if (v10)
        {
          sub_2314A207C(0, &qword_280D6FEA0, 0x277CFE340);
          sub_2314DFED8();
          v11 = sub_2315860D4();

          return v11;
        }

        else
        {
          if (qword_280D70420 != -1)
          {
            swift_once();
          }

          v19 = sub_231585FF4();
          __swift_project_value_buffer(v19, qword_280D72248);
          v20 = sub_231585FE4();
          v21 = sub_2315865E4();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 0;
            _os_log_impl(&dword_231496000, v20, v21, "Unable to look up values from user CDClientContext", v22, 2u);
            MEMORY[0x231931280](v22, -1, -1);
          }

          sub_2314A207C(0, &qword_280D6FEA0, 0x277CFE340);
          sub_2314DFED8();
          v23 = sub_2315860F4();

          return v23;
        }
      }

      if (qword_280D70420 != -1)
      {
        swift_once();
      }

      v18 = sub_231585FF4();
      __swift_project_value_buffer(v18, qword_280D72248);
      v14 = sub_231585FE4();
      v15 = sub_2315865E4();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        v17 = "Unable to look up CDClientContext";
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    __break(1u);
  }

  else if (qword_280D70420 == -1)
  {
    goto LABEL_13;
  }

  swift_once();
LABEL_13:
  v13 = sub_231585FF4();
  __swift_project_value_buffer(v13, qword_280D72248);
  v14 = sub_231585FE4();
  v15 = sub_2315865D4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "No CoreDuet-backed signals in signal set, skipping CD lookup cache fill";
LABEL_19:
    _os_log_impl(&dword_231496000, v14, v15, v17, v16, 2u);
    MEMORY[0x231931280](v16, -1, -1);
  }

LABEL_20:

  sub_2314A207C(0, &qword_280D6FE80, 0x277CFE358);
  sub_2314A207C(0, &qword_280D6FEA0, 0x277CFE340);
  sub_2314DFED8();

  return sub_2315860F4();
}

void sub_23153AAC4(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, void *a12)
{
  v131 = a6;
  v132 = a8;
  v143 = a7;
  v140 = a4;
  LODWORD(v169) = a3;
  LODWORD(v170) = a2;
  v154 = a1;
  v130 = a10;
  v141 = a9;
  v174 = sub_231586024();
  v151 = *(v174 - 1);
  MEMORY[0x28223BE20](v174);
  v160 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_231586064();
  v150 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v158 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_231586014();
  v138 = *(v15 - 8);
  v139 = v15;
  MEMORY[0x28223BE20](v15);
  v135 = (&v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_231586094();
  v136 = *(v17 - 8);
  v137 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v133 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v134 = &v127 - v20;
  v21 = sub_231585FD4();
  v22 = *(v21 - 8);
  v165 = v21;
  v166 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v171 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v24;
  MEMORY[0x28223BE20](v23);
  v168 = &v127 - v25;
  v147 = sub_231585884();
  v149 = *(v147 - 8);
  v26 = MEMORY[0x28223BE20](v147);
  v129 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v127 - v28;
  v142 = a11;
  swift_retain_n();
  v148 = a12;
  v146 = v29;
  sub_231585874();
  v30 = swift_allocObject();
  v145 = v30;
  v31 = MEMORY[0x277D84F90];
  v32 = sub_2315860F4();
  *(v30 + 16) = 0;
  v128 = (v30 + 16);
  *(v30 + 24) = v32;
  v33 = swift_allocObject();
  v144 = v33;
  sub_2314A207C(0, &qword_280D6FE68, 0x277CCABB0);
  v34 = sub_2315860F4();
  *(v33 + 16) = 0;
  v127 = (v33 + 16);
  *(v33 + 24) = v34;
  sub_23152F23C(&v185);
  v167 = dispatch_group_create();
  v35 = swift_allocObject();
  v164 = v35;
  *(v35 + 16) = v30;
  *(v35 + 24) = v33;
  v161 = a5;
  v36 = *(a5 + 16);
  v37 = *(v36 + 2);
  v38 = (v36 + 32);

  v39 = v31;

  v40 = 0;
  v172 = v36;
  v173 = v36 + 32;
  v41 = (v36 + 32);
  while (v37 != v40)
  {
    if (v40 >= *(v36 + 2))
    {
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_18;
    }

    sub_2314A5780(v41, &v176);
    v42 = v178;
    v43 = v179;
    v44 = __swift_project_boxed_opaque_existential_1(&v176, v178);
    v45 = v42;
    v38 = v44;
    if (sub_23153DE6C(v45, v43))
    {
      sub_23149FD3C(&v176, &v182);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v181[0] = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23152D5B8(0, *(v39 + 16) + 1, 1);
        v39 = *&v181[0];
      }

      v48 = *(v39 + 16);
      v47 = *(v39 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_23152D5B8(v47 > 1, v48 + 1, 1);
      }

      v38 = v183;
      v49 = v184;
      v50 = __swift_mutable_project_boxed_opaque_existential_1(&v182, v183);
      MEMORY[0x28223BE20](v50);
      v52 = &v127 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v53 + 16))(v52);
      sub_231540938(v48, v52, v181, v38, v49);
      __swift_destroy_boxed_opaque_existential_1(&v182);
      v39 = *&v181[0];
      v36 = v172;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v176);
    }

    v41 += 40;
    ++v40;
  }

  if (v170)
  {

    v54 = sub_2315860F4();
    v55 = sub_2315860F4();
    v36 = v168;
  }

  else
  {
    v36 = v168;
    if (*(v161 + 32))
    {
      sub_23153496C(v39);
      v54 = v56;
      v55 = v57;
    }

    else
    {

      v54 = sub_2315860F4();
      v55 = sub_2315860F4();
    }
  }

  v41 = v55;
  v38 = v54;
  if (qword_280D70418 != -1)
  {
    goto LABEL_35;
  }

LABEL_18:
  v58 = qword_280D72240;
  sub_231585FC4();
  v59 = v171;
  v60 = *(v172 + 2);
  v61 = v167;
  v162 = v41;
  v163 = v38;
  if (v60)
  {
    v156 += 7;
    v157 = v166 + 16;
    v155 = v166 + 32;
    v153 = v169 & 1;
    v154 &= 1u;
    ++v151;
    v152 = &v177;
    ++v150;
    do
    {
      v170 = v60;
      sub_2314A5780(v173, &v182);
      dispatch_group_enter(v61);
      __swift_project_boxed_opaque_existential_1(&v182, v183);
      swift_getDynamicType();
      v62 = (*(v184 + 128))();
      v63 = &v185 + 8;
      if (v62)
      {
        v63 = &v187 + 8;
      }

      v172 = *v63;
      if (v62)
      {
        v64 = &v188;
      }

      else
      {
        v64 = &v186;
      }

      v169 = *v64;
      sub_2314A5780(&v182, v181);
      v65 = v165;
      v66 = v166;
      (*(v166 + 16))(v59, v36, v165);
      v67 = (*(v66 + 80) + 80) & ~*(v66 + 80);
      v68 = (v156 + v67) & 0xFFFFFFFFFFFFFFF8;
      v69 = v163;
      v70 = swift_allocObject();
      sub_23149FD3C(v181, (v70 + 16));
      v71 = v162;
      *(v70 + 7) = v161;
      *(v70 + 8) = v69;
      *(v70 + 9) = v71;
      v72 = *(v66 + 32);
      v73 = v164;
      v72(&v70[v67], v171, v65);
      v74 = &v70[v68];
      *v74 = sub_231541388;
      v74[1] = v73;
      v75 = &v70[(v68 + 23) & 0xFFFFFFFFFFFFFFF8];
      v76 = v160;
      v77 = v167;
      *v75 = v167;
      v78 = v153;
      v75[8] = v154;
      v75[9] = v78;
      v179 = sub_231541384;
      v180 = v70;
      *&v176 = MEMORY[0x277D85DD0];
      *(&v176 + 1) = 1107296256;
      v177 = sub_23149B484;
      v178 = &block_descriptor_45_0;
      v79 = _Block_copy(&v176);

      v80 = v169;

      v61 = v77;
      v81 = v77;
      v82 = v158;
      sub_231586054();
      v175 = MEMORY[0x277D84F90];
      sub_2314BCC04();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
      sub_2314BCC5C();
      v83 = v159;
      sub_2315867C4();
      MEMORY[0x231930370](0, v82, v76, v79);
      v84 = v79;
      v36 = v168;
      _Block_release(v84);

      v85 = v174;

      (*v151)(v76, v85);
      v86 = v82;
      v59 = v171;
      (*v150)(v86, v83);
      __swift_destroy_boxed_opaque_existential_1(&v182);

      v173 += 40;
      v60 = v170 - 1;
    }

    while (v170 != 1);
  }

  v87 = v133;
  sub_231586074();
  v88 = v139;
  v89 = v135;
  *v135 = v140;
  v90 = v138;
  (*(v138 + 104))(v89, *MEMORY[0x277D85188], v88);
  v91 = v134;
  sub_231586084();
  (*(v90 + 8))(v89, v88);
  v92 = v137;
  v93 = *(v136 + 8);
  v93(v87, v137);
  v94 = sub_231586614();
  v93(v91, v92);
  if (v94)
  {
    v95 = qword_280D70420;
    v96 = v142;

    v97 = v148;
    v98 = v148;
    if (v95 != -1)
    {
      swift_once();
    }

    v99 = sub_231585FF4();
    __swift_project_value_buffer(v99, qword_280D72248);
    v100 = sub_231585FE4();
    v101 = sub_2315865E4();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *&v176 = v103;
      *v102 = 136315138;
      LOBYTE(v182) = 1;
      sub_231586204();
      v104 = sub_2314A22E8();

      *(v102 + 4) = v104;
      v97 = v148;
      _os_log_impl(&dword_231496000, v100, v101, "Signal gathering failed with %s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v103);
      MEMORY[0x231931280](v103, -1, -1);
      MEMORY[0x231931280](v102, -1, -1);
    }

    v105 = v165;
    v106 = v166;
    v107 = v168;
    swift_beginAccess();
    v108 = *(v96 + 16);
    v109 = *(v96 + 24);
    *(v96 + 16) = 1;
    *(v96 + 24) = 1;
    sub_231540AA0(v108, v109);
    sub_2315866F4();

    v182 = v185;
    v110 = v186;
    sub_2315074E4(&v182);

    v181[0] = v187;
    v111 = v188;
    sub_2315074E4(v181);

    (*(v106 + 8))(v107, v105);
    (*(v149 + 8))(v146, v147);
  }

  else
  {
    v112 = v128;
    os_unfair_lock_lock(v128);
    v173 = *(v145 + 24);
    v113 = v173;

    os_unfair_lock_unlock(v112);
    v114 = v127;
    os_unfair_lock_lock(v127);

    os_unfair_lock_unlock(v114);
    v115 = v129;
    sub_231585874();
    sub_2315857A4();
    v116 = *(v149 + 8);
    v149 += 8;
    v174 = v116;
    (v116)(v115, v147);
    v117 = v142;

    v118 = v148;

    v119 = v141;
    sub_23153F684(v113);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B430, &unk_23158B8B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_231588340;
    *(inited + 32) = 0xD000000000000015;
    *(inited + 40) = 0x8000000231590A60;
    v121 = *(v119 + 24);
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    *(inited + 48) = v121;

    sub_2315860F4();
    objc_allocWithZone(sub_231585F84());

    v122 = sub_231585F74();
    swift_beginAccess();
    v123 = *(v117 + 16);
    LOBYTE(v121) = *(v117 + 24);
    *(v117 + 16) = v122;
    *(v117 + 24) = 0;
    v124 = v122;
    sub_231540AA0(v123, v121);
    sub_2315866F4();

    v97 = v148;
    v182 = v185;
    v125 = v186;
    sub_2315074E4(&v182);

    v181[0] = v187;
    v126 = v188;
    sub_2315074E4(v181);

    (*(v166 + 8))(v168, v165);
    (v174)(v146, v147);
  }
}

uint64_t sub_23153BB90(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, void (*a11)(__int128 *), uint64_t a12)
{
  v106 = a6;
  v107 = a8;
  v121 = a7;
  v115 = a4;
  LODWORD(v140) = a3;
  LODWORD(v141) = a2;
  v130 = a1;
  v120 = a12;
  v118 = a11;
  v105 = a10;
  v119 = a9;
  v148 = sub_231586024();
  v127 = *(v148 - 1);
  MEMORY[0x28223BE20](v148);
  v147 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_231586064();
  v126 = *(v134 - 8);
  MEMORY[0x28223BE20](v134 - 8);
  v146 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_231586014();
  v113 = *(v15 - 8);
  v114 = v15;
  MEMORY[0x28223BE20](v15);
  v110 = (&v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_231586094();
  v111 = *(v17 - 8);
  v112 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v108 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v109 = &v101 - v20;
  v144 = sub_231585FD4();
  v138 = *(v144 - 8);
  v21 = MEMORY[0x28223BE20](v144);
  v143 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v22;
  MEMORY[0x28223BE20](v21);
  v137 = &v101 - v23;
  v124 = sub_231585884();
  v117 = *(v124 - 8);
  v24 = MEMORY[0x28223BE20](v124);
  v104 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v123 = &v101 - v26;
  sub_231585874();
  v27 = swift_allocObject();
  v122 = v27;
  v28 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D837E0];
  v30 = sub_2315860F4();
  *(v27 + 16) = 0;
  v103 = (v27 + 16);
  *(v27 + 24) = v30;
  v31 = swift_allocObject();
  v116 = v31;
  sub_2314A207C(0, &qword_280D6FE68, 0x277CCABB0);
  v32 = sub_2315860F4();
  *(v31 + 16) = 0;
  v102 = (v31 + 16);
  *(v31 + 24) = v32;
  sub_23152F23C(&v159);
  v139 = dispatch_group_create();
  v33 = swift_allocObject();
  v125 = v33;
  *(v33 + 16) = v27;
  *(v33 + 24) = v31;
  v135 = a5;
  v34 = *(a5 + 16);
  v35 = *(v34 + 16);

  v36 = 0;
  v145 = v34 + 32;
  v37 = v34 + 32;
  v142 = v34;
  while (v35 != v36)
  {
    if (v36 >= *(v34 + 16))
    {
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_18;
    }

    sub_2314A5780(v37, &v150);
    v38 = v152;
    v39 = v153;
    __swift_project_boxed_opaque_existential_1(&v150, v152);
    if (sub_23153DE6C(v38, v39))
    {
      sub_23149FD3C(&v150, &v156);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v155[0] = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23152D5B8(0, *(v28 + 16) + 1, 1);
        v28 = *&v155[0];
      }

      v42 = *(v28 + 16);
      v41 = *(v28 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_23152D5B8(v41 > 1, v42 + 1, 1);
      }

      v43 = v157;
      v29 = v158;
      v44 = __swift_mutable_project_boxed_opaque_existential_1(&v156, v157);
      MEMORY[0x28223BE20](v44);
      v46 = &v101 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v47 + 16))(v46);
      sub_231540938(v42, v46, v155, v43, v29);
      __swift_destroy_boxed_opaque_existential_1(&v156);
      v28 = *&v155[0];
      v34 = v142;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v150);
    }

    v37 += 40;
    ++v36;
  }

  if (v141)
  {

    v37 = sub_2315860F4();
    v34 = v142;
    v29 = sub_2315860F4();
    v36 = v137;
  }

  else
  {
    v36 = v137;
    if (*(v135 + 32))
    {
      sub_23153496C(v28);
      v37 = v48;
      v29 = v49;
    }

    else
    {

      v37 = sub_2315860F4();
      v34 = v142;
      v29 = sub_2315860F4();
    }
  }

  if (qword_280D70418 != -1)
  {
    goto LABEL_35;
  }

LABEL_18:
  v50 = qword_280D72240;
  sub_231585FC4();
  v51 = *(v34 + 16);
  v53 = v143;
  v52 = v144;
  v54 = v139;
  v55 = v125;
  v136 = v37;
  if (v51)
  {
    v132 += 7;
    v133 = v138 + 16;
    v131 = v138 + 32;
    v129 = v140 & 1;
    v130 &= 1u;
    ++v127;
    v128 = &v151;
    ++v126;
    do
    {
      v142 = v51;
      sub_2314A5780(v145, &v156);
      dispatch_group_enter(v54);
      __swift_project_boxed_opaque_existential_1(&v156, v157);
      swift_getDynamicType();
      v56 = (*(v158 + 128))();
      v57 = &v159 + 8;
      if (v56)
      {
        v57 = &v161 + 8;
      }

      v140 = *v57;
      if (v56)
      {
        v58 = &v162;
      }

      else
      {
        v58 = &v160;
      }

      v141 = *v58;
      sub_2314A5780(&v156, v155);
      v59 = v138;
      (*(v138 + 16))(v53, v36, v52);
      v60 = (*(v59 + 80) + 80) & ~*(v59 + 80);
      v61 = (v132 + v60) & 0xFFFFFFFFFFFFFFF8;
      v62 = v136;
      v63 = swift_allocObject();
      sub_23149FD3C(v155, (v63 + 16));
      *(v63 + 7) = v135;
      *(v63 + 8) = v62;
      *(v63 + 9) = v29;
      (*(v59 + 32))(&v63[v60], v143, v144);
      v64 = &v63[v61];
      *v64 = sub_231541388;
      v64[1] = v55;
      v65 = &v63[(v61 + 23) & 0xFFFFFFFFFFFFFFF8];
      v66 = v139;
      *v65 = v139;
      v67 = v129;
      v65[8] = v130;
      v65[9] = v67;
      v153 = sub_231541384;
      v154 = v63;
      *&v150 = MEMORY[0x277D85DD0];
      *(&v150 + 1) = 1107296256;
      v151 = sub_23149B484;
      v152 = &block_descriptor_58;
      v68 = _Block_copy(&v150);

      v69 = v141;

      v54 = v66;
      v70 = v66;
      v53 = v143;
      sub_231586054();
      v149 = MEMORY[0x277D84F90];
      sub_2314BCC04();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
      sub_2314BCC5C();
      v36 = v137;
      sub_2315867C4();
      MEMORY[0x231930370](0, v146, v147, v68);
      v71 = v68;
      v52 = v144;
      _Block_release(v71);

      (*v127)(v147, v148);
      (*v126)(v146, v134);
      __swift_destroy_boxed_opaque_existential_1(&v156);

      v145 += 40;
      v51 = v142 - 1;
    }

    while (v142 != 1);
  }

  v72 = v108;
  sub_231586074();
  v73 = v114;
  v74 = v110;
  *v110 = v115;
  v75 = v113;
  (*(v113 + 104))(v74, *MEMORY[0x277D85188], v73);
  v76 = v109;
  sub_231586084();
  (*(v75 + 8))(v74, v73);
  v77 = v112;
  v78 = *(v111 + 8);
  v78(v72, v112);
  v79 = sub_231586614();
  v78(v76, v77);
  if (v79)
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v80 = sub_231585FF4();
    __swift_project_value_buffer(v80, qword_280D72248);
    v81 = sub_231585FE4();
    v82 = sub_2315865E4();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v150 = v84;
      *v83 = 136315138;
      LOBYTE(v156) = 1;
      sub_231586204();
      v85 = sub_2314A22E8();

      *(v83 + 4) = v85;
      _os_log_impl(&dword_231496000, v81, v82, "Signal gathering failed with %s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v84);
      MEMORY[0x231931280](v84, -1, -1);
      MEMORY[0x231931280](v83, -1, -1);
    }

    v86 = v144;
    v87 = v138;
    *&v150 = 1;
    BYTE8(v150) = 1;
    v118(&v150);
    v150 = v159;
    v88 = v160;
    sub_2315074E4(&v150);

    v156 = v161;
    v89 = v162;
    sub_2315074E4(&v156);

    (*(v87 + 8))(v36, v86);
    (*(v117 + 8))(v123, v124);
  }

  else
  {
    v90 = v103;
    os_unfair_lock_lock(v103);
    v91 = *(v122 + 24);

    os_unfair_lock_unlock(v90);
    v92 = v102;
    os_unfair_lock_lock(v102);

    os_unfair_lock_unlock(v92);
    v93 = v104;
    sub_231585874();
    sub_2315857A4();
    v148 = *(v117 + 8);
    v148(v93, v124);

    v94 = v119;
    sub_23153F684(v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B430, &unk_23158B8B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_231588340;
    *(inited + 32) = 0xD000000000000015;
    *(inited + 40) = 0x8000000231590A60;
    v96 = *(v94 + 24);
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    *(inited + 48) = v96;

    sub_2315860F4();
    objc_allocWithZone(sub_231585F84());

    *&v150 = sub_231585F74();
    BYTE8(v150) = 0;
    v97 = v150;
    v118(&v150);

    sub_231540AA0(v150, SBYTE8(v150));
    v150 = v159;
    v98 = v160;
    sub_2315074E4(&v150);

    v156 = v161;
    v99 = v162;
    sub_2315074E4(&v156);

    (*(v138 + 8))(v137, v144);
    v148(v123, v124);
  }
}

uint64_t sub_23153CBA4(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v136 = a6;
  v137 = a5;
  v131 = a4;
  LODWORD(v155) = a3;
  LODWORD(v156) = a2;
  LODWORD(v154) = a1;
  v132 = sub_231586014();
  OUTLINED_FUNCTION_4_1();
  v130 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_1(v11 - v10);
  v129 = sub_231586094();
  OUTLINED_FUNCTION_4_1();
  v128 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v125 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13_1(&v121 - v16);
  v151 = sub_231586024();
  v17 = OUTLINED_FUNCTION_16_8(v151);
  v143 = v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_1(v20 - v19);
  v150 = sub_231586064();
  v21 = OUTLINED_FUNCTION_16_8(v150);
  v142 = v22;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_1(v24 - v23);
  v158 = sub_231585FD4();
  OUTLINED_FUNCTION_4_1();
  v157 = v25;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_13_1(&v121 - v30);
  v135 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v134 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_1();
  v123 = v33;
  MEMORY[0x28223BE20](v34);
  v133 = &v121 - v35;
  sub_231585874();
  OUTLINED_FUNCTION_19_8();
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D837E0];
  v39 = sub_2315860F4();
  *(v36 + 16) = 0;
  v122 = (v36 + 16);
  *(v36 + 24) = v39;
  OUTLINED_FUNCTION_19_8();
  v40 = swift_allocObject();
  sub_2314A207C(0, &qword_280D6FE68, 0x277CCABB0);
  v41 = sub_2315860F4();
  *(v40 + 16) = 0;
  v121 = (v40 + 16);
  *(v40 + 24) = v41;
  sub_23152F23C(&v173);
  v162 = dispatch_group_create();
  OUTLINED_FUNCTION_19_8();
  v42 = swift_allocObject();
  v140 = v42;
  *(v42 + 16) = v36;
  *(v42 + 24) = v40;
  isa = v7[2].isa;
  v44 = *(isa + 2);
  v160 = isa;
  v45 = isa + 32;
  v139 = v36;

  v138 = v40;

  v46 = 0;
  v47 = v45;
  v48 = v37;
  v141 = v7;
  v159 = v29;
  while (v44 != v46)
  {
    if (v46 >= *(v160 + 16))
    {
      __break(1u);
LABEL_31:
      swift_once();
      goto LABEL_18;
    }

    sub_2314A5780(v47, &aBlock);
    v49 = v166;
    v50 = v167;
    v51 = __swift_project_boxed_opaque_existential_1(&aBlock, v166);
    v52 = v49;
    v38 = v51;
    if (sub_23153DE6C(v52, v50))
    {
      sub_23149FD3C(&aBlock, &v170);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v169 = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23152D5B8(0, *(v48 + 16) + 1, 1);
        v48 = v169;
      }

      v55 = *(v48 + 16);
      v54 = *(v48 + 24);
      if (v55 >= v54 >> 1)
      {
        v62 = OUTLINED_FUNCTION_18(v54);
        sub_23152D5B8(v62, v55 + 1, 1);
      }

      v38 = v171;
      v56 = v172;
      __swift_mutable_project_boxed_opaque_existential_1(&v170, v171);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x28223BE20](v57);
      OUTLINED_FUNCTION_5();
      v60 = v59 - v58;
      (*(v61 + 16))(v59 - v58);
      sub_231540938(v55, v60, &v169, v38, v56);
      __swift_destroy_boxed_opaque_existential_1(&v170);
      v48 = v169;
      v7 = v141;
      v29 = v159;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    v47 += 40;
    ++v46;
  }

  if (v156)
  {

    v63 = OUTLINED_FUNCTION_9_16();
    v64 = OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    v65 = v7[4].isa;
    OUTLINED_FUNCTION_26_2();
    if (v65)
    {
      sub_23153496C(v48);
      v63 = v66;
      v64 = v67;
    }

    else
    {

      v63 = OUTLINED_FUNCTION_9_16();
      v64 = OUTLINED_FUNCTION_9_16();
    }
  }

  v48 = v45;
  v47 = v64;
  v38 = v63;
  v7 = v162;
  if (qword_280D70418 != -1)
  {
    goto LABEL_31;
  }

LABEL_18:
  v68 = qword_280D72240;
  sub_231585FC4();
  v69 = *(v160 + 16);
  v70 = v157;
  v71 = v141;
  v72 = v124;
  v73 = v140;
  v152 = v38;
  if (v69)
  {
    v149 = v157 + 16;
    v148 += 7;
    v147 = v157 + 32;
    v146 = v154 & 1;
    v145 = v155 & 1;
    v144 = &v165;
    ++v143;
    ++v142;
    do
    {
      v160 = v48;
      v156 = v69;
      sub_2314A5780(v48, &v170);
      dispatch_group_enter(v7);
      __swift_project_boxed_opaque_existential_1(&v170, v171);
      swift_getDynamicType();
      v74 = (*(v172 + 128))();
      v75 = &v173 + 8;
      if (v74)
      {
        v75 = &v175 + 8;
      }

      v154 = *v75;
      if (v74)
      {
        v76 = &v176;
      }

      else
      {
        v76 = &v174;
      }

      v155 = *v76;
      sub_2314A5780(&v170, &v169);
      (*(v70 + 16))(v29, v153, v46);
      v77 = (*(v70 + 80) + 80) & ~*(v70 + 80);
      v78 = (v148 + v77) & 0xFFFFFFFFFFFFFFF8;
      v79 = swift_allocObject();
      sub_23149FD3C(&v169, (v79 + 16));
      v80 = v72;
      v81 = v47;
      v82 = v152;
      *(v79 + 7) = v71;
      *(v79 + 8) = v82;
      *(v79 + 9) = v81;
      (*(v157 + 32))(&v79[v77], v159, v158);
      v83 = &v79[v78];
      *v83 = sub_231540A54;
      *(v83 + 1) = v73;
      v84 = &v79[(v78 + 23) & 0xFFFFFFFFFFFFFFF8];
      v85 = v151;
      *v84 = v162;
      v84[8] = v146;
      v84[9] = v145;
      v167 = sub_231540A5C;
      v168 = v79;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v165 = sub_23149B484;
      v166 = &block_descriptor_17;
      v86 = _Block_copy(&aBlock);

      v87 = v155;

      v47 = v81;
      v72 = v80;

      v88 = v162;
      sub_231586054();
      v163 = MEMORY[0x277D84F90];
      sub_2314BCC04();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
      sub_2314BCC5C();
      v46 = v158;
      sub_2315867C4();
      MEMORY[0x231930370](0, v161, v80, v86);
      v89 = v86;
      v70 = v157;
      _Block_release(v89);

      v7 = v162;

      v90 = v85;
      v29 = v159;
      (*v143)(v80, v90);
      (*v142)(v161, v150);
      __swift_destroy_boxed_opaque_existential_1(&v170);

      v48 = v160 + 40;
      v69 = v156 - 1;
    }

    while (v156 != 1);
  }

  v91 = v125;
  sub_231586074();
  v92 = v127;
  *v127 = v131;
  v93 = v130;
  v94 = v132;
  (*(v130 + 104))(v92, *MEMORY[0x277D85188], v132);
  v95 = v126;
  sub_231586084();
  (*(v93 + 8))(v92, v94);
  v96 = *(v128 + 8);
  v97 = v129;
  v96(v91, v129);
  LOBYTE(v91) = sub_231586614();
  v96(v95, v97);
  if (v91)
  {
    v165 = 0;
    aBlock = 1uLL;
    LOBYTE(v166) = 1;
    v98 = OUTLINED_FUNCTION_17_9();
    v99(v98);
    v170 = v173;
    v100 = v174;
    sub_2315074E4(&v170);

    v169 = v175;
    v101 = v176;
    sub_2315074E4(&v169);

    v102 = OUTLINED_FUNCTION_25_1();
    v103(v102);
    (*(v134 + 8))(v133, v135);
  }

  else
  {
    v104 = v122;
    os_unfair_lock_lock(v122);
    v105 = *(v139 + 24);

    os_unfair_lock_unlock(v104);
    v106 = v121;
    os_unfair_lock_lock(v121);
    v107 = *(v138 + 24);

    os_unfair_lock_unlock(v106);
    v108 = v123;
    sub_231585874();
    v109 = v133;
    sub_2315857A4();
    v111 = v110;
    v112 = *(v134 + 8);
    v113 = v135;
    v112(v108, v135);
    *&aBlock = v105;
    *(&aBlock + 1) = v107;
    v165 = v111;
    LOBYTE(v166) = 0;
    v114 = OUTLINED_FUNCTION_17_9();
    v115(v114);
    v170 = v173;
    v116 = v174;
    sub_2315074E4(&v170);

    v169 = v175;
    v117 = v176;
    sub_2315074E4(&v169);

    sub_231540A60(aBlock, *(&aBlock + 1), v165, v166);
    v118 = OUTLINED_FUNCTION_25_1();
    v119(v118);
    v112(v109, v113);
  }
}

void sub_23153DAA4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, os_unfair_lock_s *a6, uint64_t a7)
{
  v13 = *a4;
  v14 = *(a4 + 8);
  os_unfair_lock_lock(a6 + 4);
  sub_23153DB90(&a6[6], a1, v13, v14, a2, a3);
  os_unfair_lock_unlock(a6 + 4);
  os_unfair_lock_lock((a7 + 16));
  v15 = a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a7 + 24);
  sub_2315761FC(v15, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a7 + 24) = v17;

  os_unfair_lock_unlock((a7 + 16));
}

uint64_t sub_23153DB90(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  v43 = a3;
  v44 = a4;
  (*(v12 + 48))(&v45, &v43, v11, v12);
  v47 = v45;
  v42 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = a5;
  *(inited + 40) = a6;
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  v16 = *(v15 + 32);

  v17 = v16(v14, v15);
  v45 = inited;
  sub_23149B228(v17);
  v40 = v45;
  v39 = *(v45 + 16);
  if (v39)
  {
    v18 = 0;
    v19 = (v45 + 40);
    while (v18 < *(v40 + 16))
    {
      v20 = *(v19 - 1);
      v21 = *v19;

      sub_2314A5168(v47, v42);
      swift_isUniquelyReferenced_nonNull_native();
      v45 = *a1;
      v22 = v45;
      v23 = sub_23149C888(v20, v21);
      if (__OFADD__(*(v22 + 16), (v24 & 1) == 0))
      {
        goto LABEL_15;
      }

      v25 = v23;
      v26 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F0, &unk_23158E160);
      if (sub_231586A64())
      {
        v27 = sub_23149C888(v20, v21);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_17;
        }

        v25 = v27;
      }

      if (v26)
      {

        v29 = v45;
        v30 = *(v45 + 56) + 16 * v25;
        v31 = *v30;
        *v30 = v47;
        v32 = *(v30 + 8);
        *(v30 + 8) = v42;
        sub_2314A5EEC(v31, v32);
      }

      else
      {
        v29 = v45;
        *(v45 + 8 * (v25 >> 6) + 64) |= 1 << v25;
        v33 = (v29[6] + 16 * v25);
        *v33 = v20;
        v33[1] = v21;
        v34 = v29[7] + 16 * v25;
        *v34 = v47;
        *(v34 + 8) = v42;
        v35 = v29[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_16;
        }

        v29[2] = v37;
      }

      ++v18;
      *a1 = v29;
      v19 += 2;
      if (v39 == v18)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_231586C84();
    __break(1u);
  }

  else
  {
LABEL_13:

    return sub_2314A5EEC(v47, v42);
  }

  return result;
}

uint64_t sub_23153DEBC(void *a1, void *a2, int64_t a3, int64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t, __int128 *, int64_t), uint64_t a7, NSObject *a8, char a9, unsigned __int8 a10)
{
  v111 = a8;
  v113 = a6;
  v114 = a7;
  v115 = a4;
  v108 = sub_231585FD4();
  v13 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v109 = v14;
  v110 = v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v15 = (*(*(a1[4] + 8) + 16))();
  v117 = v16;
  LODWORD(v18) = v17;
  sub_2314A5780(a1, &v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
  type metadata accessor for CoreDuetBackedSignal();
  v19 = swift_dynamicCast();
  v112 = v15;
  if (v19)
  {
    *(*&v118[0] + 16) = a2[5];
  }

  sub_2314A5780(a1, &v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B620, &unk_23158AAE0);
  v20 = swift_dynamicCast();
  v116 = a1;
  if (v20)
  {
    sub_231541050(v118, &qword_27DD5BD88, &unk_23158D220);
LABEL_22:
    v31 = a5;
    LOBYTE(v37) = a9;
    sub_2315866D4();
    if (qword_280D70418 != -1)
    {
      goto LABEL_51;
    }

    while (1)
    {
      v56 = qword_280D72240;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A8, &unk_23158E4B0);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_231588340;
      *(v57 + 56) = MEMORY[0x277D837D0];
      *(v57 + 64) = sub_231541298();
      *(v57 + 32) = 1936943469;
      *(v57 + 40) = 0xE400000000000000;
      v107 = v56;
      v58 = v31;
      sub_231585FA4();

      v59 = v116;
      sub_23153FE48(v116, v115);

      v61 = sub_231553EBC(v60);
      sub_231540690(v59, v61);
      v63 = v62;

      if ((v37 & 1) == 0)
      {
        break;
      }

      v64 = v59[3];
      v65 = v59[4];
      __swift_project_boxed_opaque_existential_1(v59, v64);
      if (!sub_23153DE6C(v64, v65))
      {
        break;
      }

      LODWORD(v108) = v18;
      v109 = v31;
      if (v63)
      {
        v37 = -20;
      }

      else
      {
        v37 = -30;
      }

      v66 = v59[3];
      v67 = v59[4];
      __swift_project_boxed_opaque_existential_1(v59, v66);
      v68 = (*(v67 + 40))(v66, v67);
      v31 = v68;
      v18 = 0;
      a2 = (v68 + 64);
      v69 = 1 << *(v68 + 32);
      v70 = -1;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      v71 = v70 & *(v68 + 64);
      v72 = (v69 + 63) >> 6;
      while (v71)
      {
        v73 = v18;
LABEL_36:
        v74 = (*(v31 + 48) + ((v73 << 10) | (16 * __clz(__rbit64(v71)))));
        v75 = *v74;
        v76 = v74[1];
        v71 &= v71 - 1;
        *&v120 = v37;
        BYTE8(v120) = 0;
        sub_2314A207C(0, &qword_280D6FE68, 0x277CCABB0);

        v13 = sub_231586724();
        v113(v116, v75, v76, &v120, v13);
        sub_2314A5168(v37, 0);

        sub_2314A5EEC(v120, BYTE8(v120));
      }

      while (1)
      {
        v73 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v73 >= v72)
        {
          sub_2314A5EEC(v37, 0);

          dispatch_group_leave(v111);
          sub_2315866C4();
          return sub_231585FB4();
        }

        v71 = a2[v73];
        ++v18;
        if (v71)
        {
          v18 = v73;
          goto LABEL_36;
        }
      }

LABEL_50:
      __break(1u);
LABEL_51:
      swift_once();
    }

    LODWORD(v115) = a10;
    v77 = v59;
    if (v63)
    {
      v107 = v13;
      if (qword_280D70420 != -1)
      {
        swift_once();
      }

      v78 = sub_231585FF4();
      __swift_project_value_buffer(v78, qword_280D72248);
      sub_2314A5780(v59, &v120);
      v79 = sub_231585FE4();
      v80 = sub_2315865D4();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *&v118[0] = v82;
        *v81 = 136315138;
        v83 = v18;
        v18 = a2;
        v84 = v58;
        v85 = v121;
        v86 = v122;
        __swift_project_boxed_opaque_existential_1(&v120, v121);
        v87 = *(v86 + 16);
        v88 = v86;
        v58 = v84;
        a2 = v18;
        LOBYTE(v18) = v83;
        v87(v85, v88);
        __swift_destroy_boxed_opaque_existential_1(&v120);
        v89 = sub_2314A22E8();

        *(v81 + 4) = v89;
        v77 = v116;
        _os_log_impl(&dword_231496000, v79, v80, "SignalGatherer: Recalculating expired cached value for %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v82);
        MEMORY[0x231931280](v82, -1, -1);
        MEMORY[0x231931280](v81, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v120);
      }

      v13 = v107;
    }

    v91 = v77[3];
    v92 = v77[4];
    v116 = __swift_project_boxed_opaque_existential_1(v77, v91);
    v107 = a2[3];
    sub_2314A5780(v77, &v120);
    v93 = v110;
    v94 = v108;
    (*(v13 + 16))(v110, v58, v108);
    v95 = (*(v13 + 80) + 113) & ~*(v13 + 80);
    v96 = swift_allocObject();
    v97 = v18;
    v98 = v114;
    *(v96 + 16) = v113;
    *(v96 + 24) = v98;
    sub_23149FD3C(&v120, v96 + 32);
    *(v96 + 72) = v115 & 1;
    *(v96 + 80) = a2;
    v100 = v111;
    v99 = v112;
    *(v96 + 88) = v111;
    *(v96 + 96) = v99;
    *(v96 + 104) = v117;
    *(v96 + 112) = v97;
    (*(v13 + 32))(v96 + v95, v93, v94);
    v101 = *(v92 + 8);

    v102 = v100;
    sub_2314BA9DC(v107, sub_2315412EC, v96, v91, v101);
  }

  v119 = 0;
  memset(v118, 0, sizeof(v118));
  sub_231541050(v118, &qword_27DD5BD88, &unk_23158D220);

  v22 = sub_231553EBC(v21);
  sub_231540538(a1, v22);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_2315866D4();
  if (qword_280D70418 != -1)
  {
    swift_once();
  }

  v25 = qword_280D72240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A8, &unk_23158E4B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_231588340;
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = sub_231541298();
  *(v26 + 32) = 7629160;
  *(v26 + 40) = 0xE300000000000000;
  v103[1] = v25;
  LODWORD(v108) = v18;
  v109 = a5;
  sub_231585FA4();

  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = (*(v28 + 40))(v27, v28);
  a2 = v29;
  v30 = 0;
  v31 = v29 + 64;
  v32 = 1 << *(v29 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v29 + 64);
  v13 = (v32 + 63) >> 6;
  v35 = v115;
  v104 = v29;
  while (v34)
  {
    v36 = v34;
LABEL_18:
    v34 = (v36 - 1) & v36;
    if (*(v35 + 16))
    {
      v39 = __clz(__rbit64(v36)) | (v30 << 6);
      v40 = (a2[6] + 16 * v39);
      v41 = *v40;
      v42 = (a2[7] + 16 * v39);
      v43 = *v42;
      v44 = v42[1];
      v110 = v40[1];

      v45 = sub_23149C888(v43, v44);
      LODWORD(v18) = v46;

      if (v18)
      {
        v47 = *(v35 + 56) + 16 * v45;
        v48 = *v47;
        v49 = v116;
        v106 = v41;
        v50 = v116[3];
        v51 = v116[4];
        v107 = v34;
        v52 = *(v47 + 8);
        __swift_project_boxed_opaque_existential_1(v116, v50);
        *&v118[0] = v48;
        BYTE8(v118[0]) = v52;
        v105 = *(v51 + 56);
        sub_2314A5168(v48, v52);
        v105(&v120, v118, v50, v51);
        v35 = v115;
        sub_2314A5EEC(v48, v52);
        v53 = v120;
        LOBYTE(v48) = BYTE8(v120);
        sub_2314A207C(0, &qword_280D6FE68, 0x277CCABB0);
        v18 = sub_231586724();
        v54 = v49;
        a2 = v104;
        v113(v54, v106, v110, &v120, v18);

        v55 = v53;
        v34 = v107;
        sub_2314A5EEC(v55, v48);
      }

      else
      {
      }
    }
  }

  v37 = v111;
  while (1)
  {
    v38 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v38 >= v13)
    {
      break;
    }

    v36 = *(v31 + 8 * v38);
    ++v30;
    if (v36)
    {
      v30 = v38;
      goto LABEL_18;
    }
  }

  dispatch_group_leave(v37);
  sub_2315866C4();
  return sub_231585FB4();
}

uint64_t sub_23153EA38(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t, uint64_t *, void *), uint64_t a3, void *a4, int a5, uint64_t a6, NSObject *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v49 = a6;
  v55 = a5;
  v53 = a2;
  v54 = a3;
  v46 = a11;
  v47 = a8;
  v45 = a10;
  v43 = a7;
  v44 = a9;
  v42 = sub_231585884();
  MEMORY[0x28223BE20](v42);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v41 = (v13 + 8);
  v56 = a1;

  v21 = 0;
  v50 = 0;
  v51 = a4;
  v48 = v15;
  while (v19)
  {
    v22 = v21;
LABEL_9:
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = v23 | (v22 << 6);
    v25 = (*(v56 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(v56 + 56) + 24 * v24;
    v30 = *(v28 + 8);
    v57 = *v28;
    v29 = v57;
    v58 = v30;
    sub_2314A5168(v57, v30);
    sub_2314A5168(v29, v30);

    v31 = sub_2315864B4();
    v52 = v26;
    v32 = v26;
    v33 = a4;
    v53(a4, v32, v27, &v57, v31);

    sub_2314A5EEC(v57, v58);
    if (v55)
    {

      sub_2314A5EEC(v29, v30);
      v21 = v22;
    }

    else
    {
      v34 = a4[3];
      v35 = v33[4];
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      if (sub_23153DE6C(v34, v35) && (v36 = v48, *(v49 + 32)))
      {
        v57 = v29;
        v58 = v30;
        sub_231585874();
        v37 = v50;
        sub_2315364E4(v51, v52, v27, &v57, v36);
        if (v37)
        {

          (*v41)(v36, v42);
          sub_2314A5EEC(v57, v58);
          v50 = 0;
          goto LABEL_17;
        }

        v50 = 0;

        (*v41)(v36, v42);
        v38 = v57;
        v39 = v58;
      }

      else
      {

        v38 = v29;
        v39 = v30;
      }

      sub_2314A5EEC(v38, v39);
LABEL_17:
      v21 = v22;
      a4 = v51;
    }
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v22 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v22);
    ++v21;
    if (v19)
    {
      goto LABEL_9;
    }
  }

  dispatch_group_leave(v43);
  sub_2315866C4();
  if (qword_280D70418 == -1)
  {
    return sub_231585FB4();
  }

LABEL_22:
  swift_once();
  return sub_231585FB4();
}

uint64_t sub_23153EDCC(unsigned __int8 a1, void (*a2)(__int128 *), uint64_t a3)
{

  OUTLINED_FUNCTION_12_10();
  v6 = OUTLINED_FUNCTION_3_29();
  return sub_23153BB90(v6, v7, v8, v9, v10, v11, v12, 1, v14, a1, a2, a3);
}

uint64_t sub_23153EE2C(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6)
{

  v12 = OUTLINED_FUNCTION_3_29();
  return sub_23153BB90(v12, v13, v14, v15, v16, a2, a3, a4, v18, a1, a5, a6);
}

uint64_t sub_23153EEB4@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  v5 = dispatch_semaphore_create(0);

  OUTLINED_FUNCTION_12_10();
  v6 = OUTLINED_FUNCTION_3_29();
  sub_23153AAC4(v6, v7, v8, v9, v10, v11, v12, 1, v16, a1, v4, v5);

  sub_2315866E4();
  swift_beginAccess();
  v13 = *(v4 + 16);
  v14 = *(v4 + 24);
  *a2 = v13;
  *(a2 + 8) = v14;
  sub_231540AAC(v13, v14);
}

uint64_t sub_23153EF98(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_23153EFBC, 0, 0);
}

uint64_t sub_23153EFBC()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1A0, &qword_231588700);
  *v5 = v0;
  v5[1] = sub_23153F0D8;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000002ALL, 0x8000000231593030, sub_231540AB8, v4, v6);
}

uint64_t sub_23153F0D8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_23153F210;
  }

  else
  {

    v2 = sub_23153F1F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23153F210()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23153F274(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD8, &qword_23158D9A8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  sub_23153CBA4(a3, 0, 0, a4, sub_231540FD4, v12);
}

uint64_t sub_23153F3DC(uint64_t *a1)
{
  v1 = *a1;
  if (*(a1 + 24) == 1)
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v2 = sub_231585FF4();
    __swift_project_value_buffer(v2, qword_280D72248);
    v3 = sub_231585FE4();
    v4 = sub_2315865E4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      sub_2314C1D90();
      swift_allocError();
      v7 = v1 & 1;
      *v8 = v7;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v9;
      *v6 = v9;
      _os_log_impl(&dword_231496000, v3, v4, "SignalGatherer#gather failed with %@", v5, 0xCu);
      sub_231541050(v6, &unk_27DD5B410, &unk_2315890B0);
      MEMORY[0x231931280](v6, -1, -1);
      MEMORY[0x231931280](v5, -1, -1);
    }

    else
    {

      v7 = v1 & 1;
    }

    sub_2314C1D90();
    swift_allocError();
    *v15 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD8, &qword_23158D9A8);
    return sub_231586474();
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v10 = sub_231585FF4();
    __swift_project_value_buffer(v10, qword_280D72248);
    v11 = sub_231585FE4();
    v12 = sub_2315865D4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_231496000, v11, v12, "SignalGatherer#gather succeeded", v13, 2u);
      MEMORY[0x231931280](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD8, &qword_23158D9A8);
    return sub_231586484();
  }
}

uint64_t sub_23153F684(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v117 = MEMORY[0x277D84F90];
  sub_23152D834(0, v4, 0);
  v6 = 0;
  v7 = a1 + 64;
  v102 = v3;
  v103 = v3 + 32;
  result = v117;
  v107 = a1;
  v109 = a1 + 64;
  v101 = v4;
  while (v6 < *(v3 + 16))
  {
    v104 = v6 + 1;
    v105 = result;
    v9 = (v103 + 16 * v6);
    v106 = *v9;
    v108 = v9[1];

    v10 = sub_2315860F4();
    v11 = 1 << *(a1 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(a1 + 64);
    v14 = (v11 + 63) >> 6;

    v23 = 0;
LABEL_8:
    if (v13)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (v24 >= v14)
      {
        break;
      }

      v13 = *(v7 + 8 * v24);
      ++v23;
      if (v13)
      {
        v23 = v24;
LABEL_13:
        v25 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v26 = (v23 << 10) | (16 * v25);
        v27 = (*(a1 + 48) + v26);
        v29 = *v27;
        v28 = v27[1];
        v30 = *(a1 + 56) + v26;
        v31 = *v30;
        switch(*(v30 + 8))
        {
          case 1:
            v50 = *(v31 + 16);

            sub_2314A5168(v31, 1u);
            if (!v50 || (v51 = sub_23149C888(v106, v108), (v52 & 1) == 0))
            {
              v76 = sub_23149C888(v29, v28);
              if (v77)
              {
                v78 = v76;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v113 = v10;
                v10 = v10[3];
                v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD0, &qword_23158D9A0);
                v80 = OUTLINED_FUNCTION_33_0(v79);
                OUTLINED_FUNCTION_32_0(v80, v81, v82, v83, v84, v85, v86, v87, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v113);
                sub_2314D6070((v10[7] + 32 * v78), v114);
                sub_231586A84();

                v74 = v31;
                v75 = 1;
                goto LABEL_42;
              }

              v93 = v31;
              v94 = 1;
              goto LABEL_57;
            }

            v110 = v31;
            v59 = *(*(v31 + 56) + 8 * v51);
            v116 = MEMORY[0x277D83B88];
            v115 = v59;
            OUTLINED_FUNCTION_34_1(v51, v52, v53, v54, v55, v56, v57, v58, v100, v101, v102, v103);
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_2_30();
            OUTLINED_FUNCTION_4_25();
            if (v32)
            {
              goto LABEL_83;
            }

            OUTLINED_FUNCTION_30_1();
            v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD0, &qword_23158D9A0);
            if (OUTLINED_FUNCTION_8_19(v60))
            {
              OUTLINED_FUNCTION_14_6();
              OUTLINED_FUNCTION_10_12();
              a1 = v107;
              if (!v35)
              {
                goto LABEL_86;
              }

              isUniquelyReferenced_nonNull_native = v61;
            }

            else
            {
              a1 = v107;
            }

            v10 = v111;
            if (v28)
            {
              __swift_destroy_boxed_opaque_existential_1((v111[7] + 32 * isUniquelyReferenced_nonNull_native));
              OUTLINED_FUNCTION_31_1(v114);
              v88 = v31;
              v89 = 1;
              goto LABEL_65;
            }

            OUTLINED_FUNCTION_8_7(&v111[isUniquelyReferenced_nonNull_native >> 6]);
            v96 = (v111[6] + 16 * isUniquelyReferenced_nonNull_native);
            *v96 = v31;
            v96[1] = v29;
            sub_2314D6070(v114, (v111[7] + 32 * isUniquelyReferenced_nonNull_native));
            sub_2314A5EEC(v31, 1u);
            OUTLINED_FUNCTION_23_3();
            if (v32)
            {
              goto LABEL_85;
            }

            goto LABEL_70;
          case 2:
            v116 = MEMORY[0x277D839F8];
            v110 = v31;
            v115 = v31;
            OUTLINED_FUNCTION_34_1(v15, v16, v17, v18, v19, v20, v21, v22, v100, v101, v102, v103);

            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_2_30();
            OUTLINED_FUNCTION_4_25();
            if (v32)
            {
              goto LABEL_78;
            }

            OUTLINED_FUNCTION_30_1();
            v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD0, &qword_23158D9A0);
            if (OUTLINED_FUNCTION_8_19(v36))
            {
              OUTLINED_FUNCTION_14_6();
              OUTLINED_FUNCTION_10_12();
              a1 = v107;
              if (!v35)
              {
                goto LABEL_86;
              }

              isUniquelyReferenced_nonNull_native = v37;
            }

            else
            {
              a1 = v107;
            }

            v10 = v111;
            if (v28)
            {
              __swift_destroy_boxed_opaque_existential_1((v111[7] + 32 * isUniquelyReferenced_nonNull_native));
              OUTLINED_FUNCTION_31_1(v114);
              v88 = v31;
              v89 = 2;
              goto LABEL_65;
            }

            OUTLINED_FUNCTION_8_7(&v111[isUniquelyReferenced_nonNull_native >> 6]);
            v90 = (v111[6] + 16 * isUniquelyReferenced_nonNull_native);
            *v90 = v31;
            v90[1] = v29;
            sub_2314D6070(v114, (v111[7] + 32 * isUniquelyReferenced_nonNull_native));
            sub_2314A5EEC(v31, 2u);
            OUTLINED_FUNCTION_23_3();
            if (v32)
            {
              goto LABEL_80;
            }

            goto LABEL_70;
          case 3:
            v38 = *(v31 + 16);

            sub_2314A5168(v31, 3u);
            if (v38 && (v39 = sub_23149C888(v106, v108), (v40 & 1) != 0))
            {
              v110 = v31;
              v47 = *(*(v31 + 56) + 8 * v39);
              v116 = MEMORY[0x277D839F8];
              v115 = v47;
              OUTLINED_FUNCTION_34_1(v39, v40, v41, v42, v43, v44, v45, v46, v100, v101, v102, v103);
              swift_isUniquelyReferenced_nonNull_native();
              OUTLINED_FUNCTION_2_30();
              OUTLINED_FUNCTION_4_25();
              if (v32)
              {
                goto LABEL_82;
              }

              OUTLINED_FUNCTION_30_1();
              v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD0, &qword_23158D9A0);
              if (OUTLINED_FUNCTION_8_19(v48))
              {
                OUTLINED_FUNCTION_14_6();
                OUTLINED_FUNCTION_10_12();
                a1 = v107;
                if (!v35)
                {
                  goto LABEL_86;
                }

                isUniquelyReferenced_nonNull_native = v49;
              }

              else
              {
                a1 = v107;
              }

              v10 = v111;
              if (v28)
              {
                __swift_destroy_boxed_opaque_existential_1((v111[7] + 32 * isUniquelyReferenced_nonNull_native));
                OUTLINED_FUNCTION_31_1(v114);
                v88 = v31;
                v89 = 3;
LABEL_65:
                v15 = sub_2314A5EEC(v88, v89);
                v7 = v109;
              }

              else
              {
                OUTLINED_FUNCTION_8_7(&v111[isUniquelyReferenced_nonNull_native >> 6]);
                v95 = (v111[6] + 16 * isUniquelyReferenced_nonNull_native);
                *v95 = v31;
                v95[1] = v29;
                sub_2314D6070(v114, (v111[7] + 32 * isUniquelyReferenced_nonNull_native));
                sub_2314A5EEC(v31, 3u);
                OUTLINED_FUNCTION_23_3();
                if (v32)
                {
                  goto LABEL_84;
                }

LABEL_70:
                v10[2] = v91;
                v7 = v109;
              }
            }

            else
            {
              v62 = sub_23149C888(v29, v28);
              if (v63)
              {
                v64 = v62;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v112 = v10;
                v10 = v10[3];
                v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD0, &qword_23158D9A0);
                v66 = OUTLINED_FUNCTION_33_0(v65);
                OUTLINED_FUNCTION_32_0(v66, v67, v68, v69, v70, v71, v72, v73, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v112);
                sub_2314D6070((v10[7] + 32 * v64), v114);
                sub_231586A84();

                v74 = v31;
                v75 = 3;
LABEL_42:
                sub_2314A5EEC(v74, v75);
              }

              else
              {

                v93 = v31;
                v94 = 3;
LABEL_57:
                sub_2314A5EEC(v93, v94);
                memset(v114, 0, sizeof(v114));
              }

              v15 = sub_231541050(v114, &qword_27DD5B218, &unk_23158A010);
              v7 = v109;
            }

            break;
          default:
            v116 = MEMORY[0x277D83B88];
            v110 = v31;
            v115 = v31;
            OUTLINED_FUNCTION_34_1(v15, v16, v17, v18, v19, v20, v21, v22, v100, v101, v102, v103);

            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_2_30();
            OUTLINED_FUNCTION_4_25();
            if (v32)
            {
              goto LABEL_77;
            }

            OUTLINED_FUNCTION_30_1();
            v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD0, &qword_23158D9A0);
            if (OUTLINED_FUNCTION_8_19(v33))
            {
              OUTLINED_FUNCTION_14_6();
              OUTLINED_FUNCTION_10_12();
              a1 = v107;
              if (!v35)
              {
                goto LABEL_86;
              }

              isUniquelyReferenced_nonNull_native = v34;
            }

            else
            {
              a1 = v107;
            }

            v10 = v111;
            if (v28)
            {
              __swift_destroy_boxed_opaque_existential_1((v111[7] + 32 * isUniquelyReferenced_nonNull_native));
              OUTLINED_FUNCTION_31_1(v114);
              v88 = v31;
              v89 = 0;
              goto LABEL_65;
            }

            OUTLINED_FUNCTION_8_7(&v111[isUniquelyReferenced_nonNull_native >> 6]);
            v92 = (v111[6] + 16 * isUniquelyReferenced_nonNull_native);
            *v92 = v31;
            v92[1] = v29;
            sub_2314D6070(v114, (v111[7] + 32 * isUniquelyReferenced_nonNull_native));
            sub_2314A5EEC(v31, 0);
            OUTLINED_FUNCTION_23_3();
            if (v32)
            {
              goto LABEL_81;
            }

            goto LABEL_70;
        }

        goto LABEL_8;
      }
    }

    result = v105;
    v117 = v105;
    v98 = *(v105 + 16);
    v97 = *(v105 + 24);
    if (v98 >= v97 >> 1)
    {
      v99 = OUTLINED_FUNCTION_18(v97);
      sub_23152D834(v99, v98 + 1, 1);
      result = v117;
    }

    *(result + 16) = v98 + 1;
    *(result + 8 * v98 + 32) = v10;
    v6 = v104;
    v3 = v102;
    if (v104 == v101)
    {
      return result;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_23153FE48(uint64_t a1, uint64_t a2)
{
  sub_2314A5780(a1, &v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B620, &unk_23158AAE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v87 = 0;
    memset(v86, 0, sizeof(v86));
    return sub_231541050(v86, &qword_27DD5BD88, &unk_23158D220);
  }

  v81 = a2;
  sub_23149FD3C(v86, v92);
  sub_2314A5780(v92, &v88);
  __swift_project_boxed_opaque_existential_1(&v88, v90);
  DynamicType = swift_getDynamicType();
  v4 = v91;
  __swift_destroy_boxed_opaque_existential_1(&v88);
  v5 = (*(v4 + 16))(DynamicType, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    v8 = MEMORY[0x277D84F90];
    do
    {
      v84 = *v7;
      if (static SignalProviding.cacheable()(*v7, v7[1]))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v86[0] = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2314A5918(0, *(v8 + 16) + 1, 1);
          v8 = *&v86[0];
        }

        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          v12 = OUTLINED_FUNCTION_18(v10);
          sub_2314A5918(v12, v11 + 1, 1);
          v8 = *&v86[0];
        }

        *(v8 + 16) = v11 + 1;
        *(v8 + 16 * v11 + 32) = v84;
      }

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v14 = *(v8 + 16);
  if (v14)
  {
    v15 = v8 + 40;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      v17 = (*(*v15 + 88))();
      v18 = *(v17 + 16);
      v19 = *(v16 + 16);
      v20 = v19 + v18;
      if (__OFADD__(v19, v18))
      {
        goto LABEL_68;
      }

      v21 = v17;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      if (!v22 || v20 > *(v16 + 24) >> 1)
      {
        if (v19 <= v20)
        {
          v23 = v19 + v18;
        }

        else
        {
          v23 = v19;
        }

        sub_2314F0CB4(v22, v23, 1, v16);
        v16 = v24;
      }

      if (*(v21 + 16))
      {
        if ((*(v16 + 24) >> 1) - *(v16 + 16) < v18)
        {
          goto LABEL_71;
        }

        swift_arrayInitWithCopy();

        v25 = v81;
        if (v18)
        {
          v26 = *(v16 + 16);
          v27 = __OFADD__(v26, v18);
          v28 = v26 + v18;
          if (v27)
          {
            goto LABEL_72;
          }

          *(v16 + 16) = v28;
        }
      }

      else
      {

        v25 = v81;
        if (v18)
        {
          goto LABEL_69;
        }
      }

      v15 += 16;
      if (!--v14)
      {
        goto LABEL_32;
      }
    }
  }

  v16 = MEMORY[0x277D84F90];
  v25 = v81;
LABEL_32:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB68, &unk_23158C810);
  v29 = sub_2315860F4();
  v78 = *(v16 + 16);
  if (!v78)
  {
    goto LABEL_59;
  }

  v30 = 0;
  v76 = v16;
  v77 = v16 + 32;
  do
  {
    if (v30 >= *(v16 + 16))
    {
      goto LABEL_70;
    }

    sub_2314A5780(v77 + 40 * v30, &v88);
    v79 = v30 + 1;
    v31 = v90;
    v32 = v91;
    __swift_project_boxed_opaque_existential_1(&v88, v90);
    v33 = (*(v32 + 40))(v31, v32);
    __swift_destroy_boxed_opaque_existential_1(&v88);
    v34 = 0;
    v35 = v33 + 64;
    v36 = 1 << *(v33 + 32);
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v38 = v37 & *(v33 + 64);
    v39 = (v36 + 63) >> 6;
    v80 = v33;
    if (v38)
    {
      while (1)
      {
        v40 = v34;
LABEL_43:
        v41 = __clz(__rbit64(v38)) | (v40 << 6);
        v42 = (*(v33 + 48) + 16 * v41);
        v43 = v42[1];
        v85 = *v42;
        if (*(v25 + 16))
        {
          v44 = (*(v33 + 56) + 16 * v41);
          v45 = *v44;
          v46 = v44[1];

          v47 = sub_23149C888(v45, v46);
          v49 = v48;

          if (v49)
          {
            v50 = *(v25 + 56) + 16 * v47;
            v83 = *v50;
            v82 = *(v50 + 8);
            sub_2314A5168(*v50, v82);
            goto LABEL_48;
          }
        }

        else
        {
        }

        v83 = 0;
        v82 = -1;
LABEL_48:
        swift_isUniquelyReferenced_nonNull_native();
        *&v86[0] = v29;
        v51 = sub_23149C888(v85, v43);
        if (__OFADD__(v29[2], (v52 & 1) == 0))
        {
          goto LABEL_66;
        }

        v53 = v51;
        v54 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B858, &qword_23158B4F0);
        if (sub_231586A64())
        {
          v55 = sub_23149C888(v85, v43);
          if ((v54 & 1) != (v56 & 1))
          {
            goto LABEL_73;
          }

          v53 = v55;
        }

        v38 &= v38 - 1;
        if (v54)
        {

          v29 = *&v86[0];
          v57 = *(*&v86[0] + 56) + 16 * v53;
          v58 = *v57;
          *v57 = v83;
          v59 = *(v57 + 8);
          *(v57 + 8) = v82;
          sub_2314D70F4(v58, v59);
        }

        else
        {
          v29 = *&v86[0];
          OUTLINED_FUNCTION_8_7(*&v86[0] + 8 * (v53 >> 6));
          v60 = (v29[6] + 16 * v53);
          *v60 = v85;
          v60[1] = v43;
          v61 = v29[7] + 16 * v53;
          *v61 = v83;
          *(v61 + 8) = v82;
          v62 = v29[2];
          v27 = __OFADD__(v62, 1);
          v63 = v62 + 1;
          if (v27)
          {
            goto LABEL_67;
          }

          v29[2] = v63;
        }

        v34 = v40;
        v33 = v80;
        v25 = v81;
        if (!v38)
        {
          goto LABEL_40;
        }
      }
    }

    while (1)
    {
LABEL_40:
      v40 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        result = sub_231586C84();
        __break(1u);
        return result;
      }

      if (v40 >= v39)
      {
        break;
      }

      v38 = *(v35 + 8 * v40);
      ++v34;
      if (v38)
      {
        goto LABEL_43;
      }
    }

    v30 = v79;
    v16 = v76;
  }

  while (v79 != v78);
LABEL_59:

  v64 = v93;
  v65 = v94;
  __swift_project_boxed_opaque_existential_1(v92, v93);
  v66 = (*(*(v65 + 8) + 16))(v64);
  if (*(v25 + 16))
  {
    v68 = sub_23149C888(v66, v67);
    v70 = v69;

    if (v70)
    {
      v71 = *(v25 + 56) + 16 * v68;
      v72 = *v71;
      v73 = *(v71 + 8);
      sub_2314A5168(*v71, v73);
      goto LABEL_64;
    }
  }

  else
  {
  }

  v72 = 0;
  v73 = -1;
LABEL_64:
  v88 = v72;
  v89 = v73;
  v74 = v93;
  v75 = v94;
  __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
  (*(v75 + 24))(&v88, v29, v74, v75);

  sub_2314D70F4(v88, v89);
  return __swift_destroy_boxed_opaque_existential_1(v92);
}

void sub_231540538(void *a1, uint64_t a2)
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = OUTLINED_FUNCTION_18_8();
  v9(v8);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_22_7();
  if (v4)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v5)
    {
      goto LABEL_17;
    }

    v4 = *(v2 + 8 * v10);
    ++v3;
    if (v4)
    {
      v3 = v10;
LABEL_6:
      while (2)
      {
        if (!*(a2 + 16))
        {
LABEL_17:

          return;
        }

        v4 &= v4 - 1;
        OUTLINED_FUNCTION_15_7();

        sub_231586274();
        sub_231586D44();
        do
        {
          OUTLINED_FUNCTION_21_7();
          if ((v11 & 1) == 0)
          {

            goto LABEL_17;
          }

          OUTLINED_FUNCTION_27_1();
          v13 = v13 && v12 == v7;
        }

        while (!v13 && (sub_231586C44() & 1) == 0);

        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
}

void sub_231540690(void *a1, uint64_t a2)
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = OUTLINED_FUNCTION_18_8();
  v9(v8);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_22_7();
LABEL_2:
  while (v4)
  {
    v11 = v4;
LABEL_8:
    v4 = (v11 - 1) & v11;
    if (*(a2 + 16))
    {
      v16 = v10;
      OUTLINED_FUNCTION_15_7();

      sub_231586274();
      sub_231586D44();
      do
      {
        OUTLINED_FUNCTION_21_7();
        if ((v13 & 1) == 0)
        {

          v10 = v16;
          goto LABEL_2;
        }

        OUTLINED_FUNCTION_27_1();
        v15 = v15 && v14 == v7;
      }

      while (!v15 && (sub_231586C44() & 1) == 0);

      return;
    }
  }

  while (1)
  {
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v12 >= v5)
    {

      return;
    }

    v11 = *(v2 + 8 * v12);
    ++v3;
    if (v11)
    {
      v3 = v12;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void *SignalGatherer.deinit()
{

  return v0;
}

uint64_t SignalGatherer.__deallocating_deinit()
{
  SignalGatherer.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_23154085C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_2315408B0(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 24))(a1, a2, v5, v6);
}

uint64_t sub_231540938(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  __swift_allocate_boxed_opaque_existential_1(&v10);
  OUTLINED_FUNCTION_11_2();
  (*(v7 + 32))();
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_23149FD3C(&v10, v8 + 40 * a1 + 32);
}

uint64_t objectdestroy_2Tm(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDB0, &qword_23158D7A0);
  sub_2315409CC(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_2315409CC(v5);
  OUTLINED_FUNCTION_19_8();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_231540A60(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return v5;
}

void sub_231540AA0(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

id sub_231540AAC(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

unint64_t sub_231540ACC()
{
  result = qword_27DD5BDC8;
  if (!qword_27DD5BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BDC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SignalGathererError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of SignalGatherer.gatherAsync(timeoutSeconds:onlyFromCache:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 200) + **(*v2 + 200));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_231540EB8;

  return v8(a1, a2);
}

uint64_t sub_231540EB8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_231540FD4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD8, &qword_23158D9A8);

  return sub_23153F3DC(a1);
}

uint64_t sub_231541050(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_11_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_11Tm()
{
  v1 = sub_231585FD4();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 80) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 10, v4 | 7);
}

uint64_t objectdestroy_8Tm()
{

  OUTLINED_FUNCTION_19_8();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2315411E8()
{
  v1 = sub_231585FD4();
  OUTLINED_FUNCTION_16_8(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_23153DEBC((v0 + 16), *(v0 + 56), *(v0 + 64), *(v0 + 72), v0 + v6, *(v0 + v7), *(v0 + v7 + 8), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 9));
}

unint64_t sub_231541298()
{
  result = qword_280D6FEB8;
  if (!qword_280D6FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6FEB8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_1(_OWORD *a1)
{
  sub_2314D6070(a1, v1);
}

Swift::Void __swiftcall SignalGatheringResults.extract(name:for:to:)(Swift::String name, Swift::String_optional a2, Swift::Int32 *to)
{
  OUTLINED_FUNCTION_0_80();
  v9 = sub_231541514(v4, v5, v6, v7, v8, SignalValue.valueInt());
  if ((v10 & 1) == 0)
  {
    v11 = 0x7FFFFFFFLL;
    if (v9 < 0x7FFFFFFF)
    {
      v11 = v9;
    }

    if (v11 <= 0xFFFFFFFF80000000)
    {
      LODWORD(v11) = 0x80000000;
    }

    *v3 = v11;
  }
}

Swift::Void __swiftcall SignalGatheringResults.extract(name:for:to:)(Swift::String name, Swift::String_optional a2, Swift::Bool *to)
{
  OUTLINED_FUNCTION_0_80();
  v9 = sub_231541514(v4, v5, v6, v7, v8, SignalValue.valueInt());
  if ((v10 & 1) == 0)
  {
    *v3 = v9 != 0;
  }
}

Swift::Void __swiftcall SignalGatheringResults.extract(name:for:to:)(Swift::String name, Swift::String_optional a2, Swift::UInt32 *to)
{
  OUTLINED_FUNCTION_0_80();
  v9 = sub_231541514(v4, v5, v6, v7, v8, SignalValue.valueInt());
  if ((v10 & 1) == 0)
  {
    v11 = 0xFFFFFFFFLL;
    if (v9 < 0xFFFFFFFFLL)
    {
      v11 = v9;
    }

    *v3 = v11 & ~(v11 >> 63);
  }
}

SiriSignals::SignalGatheringResults __swiftcall SignalGatheringResults.init(values:candidateAppBundleIds:)(Swift::OpaquePointer values, Swift::OpaquePointer candidateAppBundleIds)
{
  v2->_rawValue = values._rawValue;
  v2[1]._rawValue = candidateAppBundleIds._rawValue;
  result.candidateAppBundleIds = candidateAppBundleIds;
  result.values = values;
  return result;
}

uint64_t sub_231541514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = *v6;
  if (*(v7 + 16) && (v12 = sub_23149C888(a1, a2), (v13 & 1) != 0))
  {
    v14 = *(v7 + 56) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    if (a4)
    {
      sub_2314A5168(v15, v16);
      v17 = a5(a3, a4);
      sub_2314A5EEC(v15, v16);
    }

    else
    {
      return a6(v12, v13);
    }
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v18 = sub_231585FF4();
    __swift_project_value_buffer(v18, qword_280D72248);

    v19 = sub_231585FE4();
    v20 = sub_2315865E4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v21 = 136315138;
      *(v21 + 4) = sub_2314A22E8();
      _os_log_impl(&dword_231496000, v19, v20, "SignalValueExtractor: No SignalValue for [%s]", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x231931280](v23, -1, -1);
      MEMORY[0x231931280](v21, -1, -1);
    }

    return 0;
  }

  return v17;
}

uint64_t sub_231541740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  result = sub_231541514(a1, a2, a3, a4, a6, a7);
  if ((v9 & 1) == 0)
  {
    *a5 = result;
  }

  return result;
}

Swift::Void __swiftcall SignalGatheringResults.extract(name:for:to:)(Swift::String name, Swift::String_optional a2, Swift::Float *to)
{
  v4 = COERCE_DOUBLE(sub_231541514(name._countAndFlagsBits, name._object, a2.value._countAndFlagsBits, a2.value._object, SignalValue.value(for:), SignalValue.value()));
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    *to = v6;
  }
}

uint64_t sub_23154189C()
{
  sub_231586D14();
  sub_2314AAAAC(v1);
  return sub_231586D44();
}

uint64_t sub_231541924(uint64_t a1)
{
  sub_231586D14();
  sub_2314AAAAC(v2);
  return sub_231586D44();
}

unint64_t sub_23154198C()
{
  result = qword_280D6E500;
  if (!qword_280D6E500)
  {
    _s4NodeCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6E500);
  }

  return result;
}

uint64_t sub_2315419E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v129 = a1;
  v5 = (*(a2 + 16))();
  v6 = v5;
  v111 = *(v5 + 16);
  if (!v111)
  {
  }

  v115 = v5 + 32;
  v117 = a3 & 0xC000000000000001;
  swift_beginAccess();
  v8 = 0;
  v9 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 < 0)
  {
    v9 = a3;
  }

  v104 = v9;
  v99 = a3 + 56;
  *&v7 = 136315138;
  v101 = v7;
  *&v7 = 136315394;
  v94 = v7;
  v113 = v6;
  v106 = a3;
  v125 = v3;
  while (1)
  {
    if (v8 >= *(v6 + 16))
    {
      goto LABEL_59;
    }

    v127 = v8;
    v10 = (v115 + 16 * v8);
    v130 = *v10;
    v123 = v10[1];
    if (v117)
    {
      swift_unknownObjectRetain();
      sub_231586824();
      _s4NodeCMa();
      sub_23152B510();
      sub_231586554();
      v11 = v132;
      v12 = v133;
      v13 = v134;
      v14 = v135;
      v15 = v136;
    }

    else
    {
      v13 = ~(-1 << *(a3 + 32));
      OUTLINED_FUNCTION_6_20();
      v15 = v16 & v17;

      v14 = 0;
      v11 = a3;
      v12 = v99;
    }

    v128 = v127 + 1;
    if ((v11 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (1)
    {
      v25 = sub_231586894();
      if (!v25)
      {
        break;
      }

      v142 = v25;
      _s4NodeCMa();
      swift_dynamicCast();
      v24 = v131;
      v19 = v14;
      v22 = v15;
      if (!v131)
      {
        break;
      }

LABEL_18:
      if (v24[2] == v130)
      {
        OUTLINED_FUNCTION_10_13();

        if (qword_280D70420 == -1)
        {
          goto LABEL_52;
        }

        goto LABEL_60;
      }

      v14 = v19;
      v15 = v22;
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }
    }

LABEL_21:
    OUTLINED_FUNCTION_10_13();
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v26 = sub_231585FF4();
    v108 = __swift_project_value_buffer(v26, qword_280D72248);
    v27 = sub_231585FE4();
    v28 = sub_2315865D4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *v29 = v101;
      sub_231586D94();
      v30 = sub_2314A22E8();

      *(v29 + 4) = v30;
      _os_log_impl(&dword_231496000, v27, v28, "Creating new child node for signal %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v131);
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
      v31 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x231931280](v31);
    }

    v32 = _s4NodeCMa();
    OUTLINED_FUNCTION_11_14(v32);
    v124 = sub_2314AAA54(v130, v123);
    v33 = *(v125 + 16);
    v126 = v32;
    if ((v33 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_231586824();
      sub_23152B510();
      v34 = sub_231586554();
      v43 = v137;
      v42 = v138;
      v44 = v139;
      v45 = v140;
      v46 = v141;
    }

    else
    {
      v42 = v33 + 56;
      v44 = ~(-1 << *(v33 + 32));
      OUTLINED_FUNCTION_6_20();
      v46 = v47 & v48;
      v34 = swift_bridgeObjectRetain_n();
      v45 = 0;
      v43 = v33;
    }

    v119 = v44;
    v49 = (v44 + 64) >> 6;
    if ((v43 & 0x8000000000000000) == 0)
    {
LABEL_29:
      v50 = v45;
      v51 = v45;
      if (v46)
      {
LABEL_33:
        OUTLINED_FUNCTION_9_0();
        v54 = v53 & v52;
        v56 = *(*(v43 + 48) + ((v51 << 9) | (8 * v55)));

        if (v56)
        {
          goto LABEL_37;
        }
      }

      else
      {
        while (1)
        {
          v51 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_58;
          }

          if (v51 >= v49)
          {
            break;
          }

          ++v50;
          if (*(v42 + 8 * v51))
          {
            goto LABEL_33;
          }
        }
      }

LABEL_40:
      OUTLINED_FUNCTION_14_7(v34, v35, v36, v37, v38, v39, v40, v41, v94, *(&v94 + 1), v97, v99, v101, *(&v101 + 1), v104, v106, v108, v111, v113, v115, v117, v119);
      v6 = v113;
      a3 = v106;
      v57 = v130;
      goto LABEL_41;
    }

    while (1)
    {
      v34 = sub_231586894();
      if (!v34)
      {
        goto LABEL_40;
      }

      v142 = v34;
      v34 = swift_dynamicCast();
      v56 = v131;
      v51 = v45;
      v54 = v46;
      if (!v131)
      {
        goto LABEL_40;
      }

LABEL_37:
      if (v56[2] == v129)
      {
        break;
      }

      v45 = v51;
      v46 = v54;
      if ((v43 & 0x8000000000000000) == 0)
      {
        goto LABEL_29;
      }
    }

    OUTLINED_FUNCTION_14_7(v34, v35, v36, v37, v38, v39, v40, v41, v94, *(&v94 + 1), v97, v99, v101, *(&v101 + 1), v104, v106, v108, v111, v113, v115, v117, v119);

    v70 = sub_231585FE4();
    v71 = sub_2315865D4();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *v72 = v102;
      sub_231586D94();
      v73 = sub_2314A22E8();

      *(v72 + 4) = v73;
      _os_log_impl(&dword_231496000, v70, v71, "Found parentNode %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v131);
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
      v74 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x231931280](v74);
    }

    v75 = v124;
    v57 = v130;
    swift_beginAccess();
    swift_retain_n();
    sub_2314AAB1C(&v142, v124, v76, v77, v78, v79, v80, v81, v95, v96, v98, v100, v102, v103, v105, v107, v110, v112, v114, v116, v118, v121, v122, v124, v125, v126, v128, v129, v130, v131);
    swift_endAccess();

    v82 = sub_231585FE4();
    v83 = sub_2315865D4();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *v84 = v94;
      sub_231586D94();
      v85 = sub_2314A22E8();

      *(v84 + 4) = v85;
      *(v84 + 12) = 2080;
      sub_231586D94();
      v86 = sub_2314A22E8();

      *(v84 + 14) = v86;
      v75 = v124;
      _os_log_impl(&dword_231496000, v82, v83, "adding edge from %s to %s", v84, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
      v87 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x231931280](v87);
    }

    v6 = v113;
    a3 = v106;
    sub_231541838(v75);

LABEL_41:
    v58 = dynamic_cast_existential_1_conditional(v57, v57, &protocol descriptor for DependentSignalProviding);
    if (v58)
    {
      v60 = v58;
      v61 = v59;
      v62 = *(v59 + 8);
      OUTLINED_FUNCTION_11_14(v126);

      v63 = sub_2314AAA54(v60, v62);
      sub_2314AAB1C(&v142, v63, v64, v65, v66, v67, v68, v69, v94, *(&v94 + 1), v97, v99, v101, *(&v101 + 1), v104, v106, v109, v111, v113, v115, v117, v120, v122, v124, v125, v126, v128, v129, v130, a3);

      sub_2315419E0(v60, v61, v131);
      if (v122)
      {
      }
    }

    v8 = v128;
    if (v128 == v111)
    {
    }
  }

LABEL_10:
  v18 = v14;
  v19 = v14;
  if (v15)
  {
LABEL_14:
    OUTLINED_FUNCTION_9_0();
    v22 = v21 & v20;
    v24 = *(*(v11 + 48) + ((v19 << 9) | (8 * v23)));

    if (!v24)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= ((v13 + 64) >> 6))
    {
      goto LABEL_21;
    }

    ++v18;
    if (*(v12 + 8 * v19))
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  OUTLINED_FUNCTION_3();
  swift_once();
LABEL_52:
  v88 = sub_231585FF4();
  __swift_project_value_buffer(v88, qword_280D72248);
  v89 = sub_231585FE4();
  v90 = sub_2315865D4();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_231496000, v89, v90, "child node already has a dependency on the parent node, detected cycle", v91, 2u);
    v92 = OUTLINED_FUNCTION_4_5();
    MEMORY[0x231931280](v92);
  }

  sub_2315425C0();
  swift_allocError();
  return swift_willThrow();
}

unint64_t *sub_2315422E0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_2315437D4(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_231542358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_17_10();
  a29 = v31;
  a30 = v32;
  v33 = v30;
  v35 = v34;
  v49 = v36;
  v37 = *v30;
  sub_231586D14();
  sub_231545524(&a10, v35);
  sub_231586D44();
  OUTLINED_FUNCTION_17_7();
  v40 = v39 & ~v38;
  if ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
  {
    v41 = ~v38;
    while (1)
    {
      v42 = 0xE800000000000000;
      v43 = 0x6449656C646E7562;
      switch(*(*(v37 + 48) + v40))
      {
        case 1:
          v43 = 0x6449797469746E65;
          break;
        case 2:
          v43 = 0x73556E69616D6F64;
          v42 = 0xED00006573614365;
          break;
        case 3:
          v43 = 0x7355646572616873;
          v42 = 0xEC00000064497265;
          break;
        case 4:
          v42 = 0xE600000000000000;
          v43 = 0x746E65746E69;
          break;
        default:
          break;
      }

      v44 = 0xE800000000000000;
      v45 = 0x6449656C646E7562;
      switch(v35)
      {
        case 1:
          v45 = 0x6449797469746E65;
          break;
        case 2:
          v45 = 0x73556E69616D6F64;
          v44 = 0xED00006573614365;
          break;
        case 3:
          v45 = 0x7355646572616873;
          v44 = 0xEC00000064497265;
          break;
        case 4:
          v44 = 0xE600000000000000;
          v45 = 0x746E65746E69;
          break;
        default:
          break;
      }

      if (v43 == v45 && v42 == v44)
      {
        break;
      }

      v47 = sub_231586C44();

      if (v47)
      {
        goto LABEL_21;
      }

      v40 = (v40 + 1) & v41;
      if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    LOBYTE(v35) = *(*(v37 + 48) + v40);
  }

  else
  {
LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a10 = *v33;
    sub_231543504(v35, v40, isUniquelyReferenced_nonNull_native);
    *v33 = a10;
  }

  *v49 = v35;
  OUTLINED_FUNCTION_16_9();
}

unint64_t sub_2315425C0()
{
  result = qword_27DD5BDE8;
  if (!qword_27DD5BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BDE8);
  }

  return result;
}

uint64_t sub_231542614(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B110, &unk_231588040);
    v2 = sub_231586914();
    v17 = v2;
    sub_231586824();
    while (1)
    {
      v3 = sub_231586894();
      if (!v3)
      {

        return v2;
      }

      v16[0] = v3;
      _s4NodeCMa();
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_2314AB120(v4 + 1);
      }

      v2 = v17;
      v5 = v16[9];
      sub_231586D14();
      sub_2314AAAAC(v16);
      result = sub_231586D44();
      v7 = v2 + 56;
      v8 = -1 << *(v2 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(v2 + 56 + 8 * (v9 >> 6))) == 0)
      {
        break;
      }

      v11 = __clz(__rbit64((-1 << v9) & ~*(v2 + 56 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v2 + 48) + 8 * v11) = v5;
      ++*(v2 + 16);
    }

    v12 = 0;
    v13 = (63 - v8) >> 6;
    while (++v10 != v13 || (v12 & 1) == 0)
    {
      v14 = v10 == v13;
      if (v10 == v13)
      {
        v10 = 0;
      }

      v12 |= v14;
      v15 = *(v7 + 8 * v10);
      if (v15 != -1)
      {
        v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2315427EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDF0, &qword_23158DAA8);
  result = sub_231586904();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_23149BEE0(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_231586D14();
    sub_231586274();

    result = sub_231586D44();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_231542AE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B108, &unk_23158C980);
  result = sub_231586904();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_23149BEE0(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_231586D14();
    sub_231586274();
    result = sub_231586D44();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_231542D3C(uint64_t a1, void *a2)
{
  sub_231586D14();
  sub_2314AAAAC(v5);
  sub_231586D44();
  OUTLINED_FUNCTION_17_7();
  result = sub_231586804();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void *sub_231542DDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDF0, &qword_23158DAA8);
  v2 = *v0;
  v3 = sub_2315868F4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_231542F1C()
{
  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B108, &unk_23158C980);
  v6 = *v0;
  v7 = sub_2315868F4();
  if (*(v6 + 16))
  {
    v8 = OUTLINED_FUNCTION_5_23();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v1, 8 * v9);
    }

    OUTLINED_FUNCTION_3_30();
    while (v4)
    {
      OUTLINED_FUNCTION_15_8();
LABEL_15:
      v17 = v13 | (v2 << 6);
      v18 = (*(v6 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = (*(v7 + 48) + 16 * v17);
      *v20 = *v18;
      v20[1] = v19;
    }

    v14 = v2;
    while (1)
    {
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + v2))
      {
        OUTLINED_FUNCTION_9_0();
        v4 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

uint64_t sub_23154300C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDF0, &qword_23158DAA8);
  result = sub_231586904();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_231586D14();
        sub_231586274();

        result = sub_231586D44();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2315432D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B108, &unk_23158C980);
  result = sub_231586904();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_231586D14();

        sub_231586274();
        result = sub_231586D44();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_231543504(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    sub_2315427EC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_231542DDC();
      goto LABEL_26;
    }

    sub_23154300C(v7 + 1);
  }

  v9 = *v3;
  sub_231586D14();
  sub_231545524(v22, v6);
  result = sub_231586D44();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = 0xE800000000000000;
      v13 = 0x6449656C646E7562;
      switch(*(*(v9 + 48) + a2))
      {
        case 1:
          v13 = 0x6449797469746E65;
          break;
        case 2:
          v13 = 0x73556E69616D6F64;
          v12 = 0xED00006573614365;
          break;
        case 3:
          v13 = 0x7355646572616873;
          v12 = 0xEC00000064497265;
          break;
        case 4:
          v12 = 0xE600000000000000;
          v13 = 0x746E65746E69;
          break;
        default:
          break;
      }

      v14 = 0xE800000000000000;
      v15 = 0x6449656C646E7562;
      switch(v6)
      {
        case 1:
          v15 = 0x6449797469746E65;
          break;
        case 2:
          v15 = 0x73556E69616D6F64;
          v14 = 0xED00006573614365;
          break;
        case 3:
          v15 = 0x7355646572616873;
          v14 = 0xEC00000064497265;
          break;
        case 4:
          v14 = 0xE600000000000000;
          v15 = 0x746E65746E69;
          break;
        default:
          break;
      }

      if (v13 == v15 && v12 == v14)
      {
        goto LABEL_29;
      }

      v17 = sub_231586C44();

      if (v17)
      {
        goto LABEL_30;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_26:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_29:

LABEL_30:
  result = sub_231586C74();
  __break(1u);
  return result;
}

void sub_2315437D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);

    v15 = sub_2314AB380();

    if (v15)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:

        sub_2314A7E2C(a1, a2, v4, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

_BYTE *storeEnumTagSinglePayload for SignalGraph.InitializationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_2315439C8()
{
  result = qword_27DD5BDF8;
  if (!qword_27DD5BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BDF8);
  }

  return result;
}

void sub_231543A1C(void (*a1)(uint64_t *__return_ptr, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  v6 = (a3 + 32);
  if (v4)
  {
    while (1)
    {
      v19 = *v6;
      a1(&v18, &v19, a2);
      if (v3)
      {

        return;
      }

      v7 = v18;
      v8 = *(v18 + 16);
      v9 = *(v5 + 16);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v10 > *(v5 + 24) >> 1)
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        sub_2314F0CB4(isUniquelyReferenced_nonNull_native, v12, 1, v5);
        v5 = v13;
      }

      if (*(v7 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v8)
        {
          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v14 = *(v5 + 16);
          v15 = __OFADD__(v14, v8);
          v16 = v14 + v8;
          if (v15)
          {
            goto LABEL_23;
          }

          *(v5 + 16) = v16;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_21;
        }
      }

      ++v6;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

uint64_t SignalListBuilder.__allocating_init(context:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_3();
  v2 = swift_allocObject();
  SignalListBuilder.init(context:)(a1);
  return v2;
}

void *SignalListBuilder.init(context:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[5];
  v1[2] = MEMORY[0x277D84F90];
  v1[6] = &type metadata for SignalComputationContext;
  v1[7] = &protocol witness table for SignalComputationContext;
  OUTLINED_FUNCTION_13_3();
  v5 = swift_allocObject();
  v1[3] = v5;
  *(v5 + 16) = v3;
  v6 = *(a1 + 1);
  *(v5 + 40) = *(a1 + 3);
  *(v5 + 24) = v6;
  *(v5 + 56) = v4;
  return v1;
}

uint64_t sub_231543C80(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = a2(v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

void *SignalListBuilder.__allocating_init()()
{
  OUTLINED_FUNCTION_13_3();
  result = swift_allocObject();
  result[6] = &type metadata for NoParameters;
  result[7] = &protocol witness table for NoParameters;
  result[2] = MEMORY[0x277D84F90];
  return result;
}

void *SignalListBuilder.__allocating_init(candidateBundleIds:)(uint64_t a1)
{
  type metadata accessor for SignalDefinitionParametersProvider.Builder();
  swift_initStackObject();
  SignalDefinitionParametersProvider.Builder.init()();
  sub_231539348(a1);

  sub_23149A740(__src);

  OUTLINED_FUNCTION_13_3();
  v2 = swift_allocObject();
  v2[6] = &type metadata for SignalDefinitionParametersProvider;
  v2[7] = &protocol witness table for SignalDefinitionParametersProvider;
  v3 = swift_allocObject();
  v2[3] = v3;
  memcpy((v3 + 16), __src, 0x50uLL);
  v2[2] = MEMORY[0x277D84F90];
  return v2;
}

uint64_t SignalListBuilder.withCommonSignals()@<X0>(uint64_t **a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B600, &qword_23158AAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23158DB70;
  *(inited + 32) = &type metadata for ClientLanguageSignal;
  *(inited + 40) = &protocol witness table for ClientLanguageSignal;
  *(inited + 48) = &type metadata for ClientLocaleSignal;
  *(inited + 56) = &protocol witness table for ClientLocaleSignal;
  *(inited + 64) = &type metadata for DeviceClassSignal;
  *(inited + 72) = &protocol witness table for DeviceClassSignal;
  *(inited + 80) = type metadata accessor for CalendarSignal(0);
  *(inited + 88) = &protocol witness table for CalendarSignal;
  *(inited + 96) = &type metadata for ClientInDayLightHourSignal;
  *(inited + 104) = &protocol witness table for ClientInDayLightHourSignal;
  *(inited + 112) = &type metadata for IsFirstPartyAppSignal;
  *(inited + 120) = &protocol witness table for IsFirstPartyAppSignal;
  *(inited + 128) = &type metadata for HashedLocationSignal;
  *(inited + 136) = &protocol witness table for HashedLocationSignal;
  *(inited + 144) = &type metadata for IsCarPlayConnectedSignal;
  *(inited + 152) = &protocol witness table for IsCarPlayConnectedSignal;
  *(inited + 160) = &type metadata for IsScreenLockedSignal;
  *(inited + 168) = &protocol witness table for IsScreenLockedSignal;
  *(inited + 176) = &type metadata for DeviceMotionStateSignal;
  *(inited + 184) = &protocol witness table for DeviceMotionStateSignal;
  *(inited + 192) = &type metadata for TotalTimeSpentInApp;
  *(inited + 200) = &protocol witness table for TotalTimeSpentInApp;
  *(inited + 208) = &type metadata for TimeTodaySpentInApp;
  *(inited + 216) = &protocol witness table for TimeTodaySpentInApp;
  *(inited + 224) = &type metadata for TimeSinceAppLastLaunchedSignal;
  *(inited + 232) = &protocol witness table for TimeSinceAppLastLaunchedSignal;
  *(inited + 240) = &type metadata for ForegroundAppBiomeSignal;
  *(inited + 248) = &protocol witness table for ForegroundAppBiomeSignal;
  *(inited + 256) = &type metadata for ForegroundAppInFocusSignal;
  *(inited + 264) = &protocol witness table for ForegroundAppInFocusSignal;
  *(inited + 272) = &type metadata for ClientWorkoutSignal;
  *(inited + 280) = &protocol witness table for ClientWorkoutSignal;
  SignalListBuilder.withSignals(ofTypes:)(inited, v6);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v6);
  a1[3] = v3;
  a1[4] = &protocol witness table for SignalListBuilder;
  *a1 = v1;
}

void SignalListBuilder.withSignals(ofTypes:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v18 = *v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = MEMORY[0x277D84F90];
    v6 = a1 + 40;
    while (1)
    {
      v7 = (*(*v6 + 104))(v3 + 3);
      v8 = *(v7 + 16);
      v9 = *(v5 + 16);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        break;
      }

      v11 = v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v10 > *(v5 + 24) >> 1)
      {
        if (v9 <= v10)
        {
          v13 = v9 + v8;
        }

        else
        {
          v13 = v9;
        }

        sub_2314F0CB4(isUniquelyReferenced_nonNull_native, v13, 1, v5);
        v5 = v14;
      }

      if (*(v11 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v8)
        {
          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v15 = *(v5 + 16);
          v16 = __OFADD__(v15, v8);
          v17 = v15 + v8;
          if (v16)
          {
            goto LABEL_23;
          }

          *(v5 + 16) = v17;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_21;
        }
      }

      v6 += 16;
      if (!--v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_19:
    swift_beginAccess();
    sub_23152C7FC(v5);
    swift_endAccess();
    a2[3] = v18;
    a2[4] = &protocol witness table for SignalListBuilder;
    *a2 = v3;
  }
}

uint64_t SignalListBuilder.withDomainSignals(useCase:)@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v65 = a2;
  v62 = v3;
  v64 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_3_1();
  v63 = v6;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v60 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v60 - v11;
  v13 = sub_231585D34();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v60 = v15;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v60 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v60 - v20;
  LOBYTE(a1) = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE00, &qword_23158DB88);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_231588340;
  v23 = MEMORY[0x277D84F90];
  *(v22 + 32) = a1;
  v71 = v23;
  v72 = 0u;
  *v73 = 0u;
  *&v73[16] = v22;
  v69 = &type metadata for SignalComputationContext;
  v70 = &protocol witness table for SignalComputationContext;
  OUTLINED_FUNCTION_13_3();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_1_36(v24);
  OUTLINED_FUNCTION_4_26(v25, *&v73[8]);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v68, v12);
  OUTLINED_FUNCTION_7_24(v12);
  if (v26)
  {
    sub_2314B5064(v12);
    v61 = MEMORY[0x277D84F90];
  }

  else
  {
    v27 = (v14[4])(v21, v12, v13);
    v14 = &v60;
    MEMORY[0x28223BE20](v27);
    OUTLINED_FUNCTION_2_31();
    *(v28 - 16) = v21;

    v29 = OUTLINED_FUNCTION_3_31();
    sub_231543A1C(v29, v30, v31);
    v61 = v32;

    OUTLINED_FUNCTION_5_24();
    v33(v21, v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v68);
  v69 = &type metadata for SignalComputationContext;
  v70 = &protocol witness table for SignalComputationContext;
  OUTLINED_FUNCTION_13_3();
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_1_36(v34);
  OUTLINED_FUNCTION_4_26(v35, *&v73[8]);
  sub_2315144B0(v68, v10);
  OUTLINED_FUNCTION_7_24(v10);
  if (v26)
  {
    sub_2314B5064(v10);
    v41 = MEMORY[0x277D84F90];
  }

  else
  {
    v36 = (v14[4])(v19, v10, v13);
    v14 = &v60;
    MEMORY[0x28223BE20](v36);
    OUTLINED_FUNCTION_2_31();
    *(v37 - 16) = v19;

    v38 = OUTLINED_FUNCTION_3_31();
    v41 = sub_23150466C(v38, v39, v40);

    OUTLINED_FUNCTION_5_24();
    v42(v19, v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v68);
  v67 = v61;
  sub_23152C7FC(v41);
  v43 = v67;
  v69 = &type metadata for SignalComputationContext;
  v70 = &protocol witness table for SignalComputationContext;
  OUTLINED_FUNCTION_13_3();
  v44 = swift_allocObject();
  OUTLINED_FUNCTION_1_36(v44);
  OUTLINED_FUNCTION_4_26(v45, *&v73[8]);
  v46 = v63;
  sub_2315144B0(v68, v63);
  OUTLINED_FUNCTION_7_24(v46);
  if (v26)
  {
    sub_2314B5064(v46);
    v53 = MEMORY[0x277D84F90];
  }

  else
  {
    v47 = v60;
    v48 = (v14[4])(v60, v46, v13);
    MEMORY[0x28223BE20](v48);
    OUTLINED_FUNCTION_2_31();
    *(v49 - 16) = v47;

    v50 = OUTLINED_FUNCTION_3_31();
    v53 = sub_23150466C(v50, v51, v52);

    (v14[1])(v47, v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v68);
  v66 = v43;
  sub_23152C7FC(v53);
  sub_2314EDACC(&v71);
  v55 = v54;
  sub_2314C1D18(&v71);
  sub_23152C7FC(v55);
  v56 = v66;
  v57 = v62;
  swift_beginAccess();
  sub_23152C7FC(v56);
  swift_endAccess();
  v58 = v65;
  v65[3] = v64;
  v58[4] = &protocol witness table for SignalListBuilder;
  *v58 = v57;
}

uint64_t SignalListBuilder.withSignals(instances:)@<X0>(uint64_t **a2@<X8>)
{
  v4 = *v2;
  swift_beginAccess();

  sub_23152C7FC(v5);
  swift_endAccess();
  a2[3] = v4;
  a2[4] = &protocol witness table for SignalListBuilder;
  *a2 = v2;
}

void *SignalListBuilder.toSignalGatherer()()
{
  swift_beginAccess();

  v2 = sub_231522034(v1);

  v3 = v0[6];
  v4 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v3);
  v5 = (*(v4 + 8))(v3, v4);
  type metadata accessor for SignalGatherer();
  swift_allocObject();
  return SignalGatherer.init(signals:candidateAppBundleIds:)(v2, v5);
}

uint64_t SignalListBuilder.toTrainingMessageProviding()@<X0>(uint64_t *a1@<X8>)
{
  v2 = SignalListBuilder.toSignalGatherer()();
  v3 = type metadata accessor for TrainingMessageProvider();
  result = swift_allocObject();
  *(result + 16) = v2;
  a1[3] = v3;
  a1[4] = &protocol witness table for TrainingMessageProvider;
  *a1 = result;
  return result;
}

uint64_t SignalListBuilder.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t SignalListBuilder.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  OUTLINED_FUNCTION_13_3();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void *sub_231544A68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = SignalListBuilder.__allocating_init(candidateBundleIds:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_231544A90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SignalListBuilder.__allocating_init(context:)(a1);
  *a2 = result;
  return result;
}

void *sub_231544B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = sub_231544CA0(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

void *sub_231544CA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[6] = a3;
  a2[7] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 3);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  a2[2] = MEMORY[0x277D84F90];
  return a2;
}