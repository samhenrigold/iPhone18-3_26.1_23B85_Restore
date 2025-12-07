_BYTE *storeEnumTagSinglePayload for PersonPlaceName.BoundedValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonPlaceName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD54BF74()
{
  result = qword_1ECCDE9E0;
  if (!qword_1ECCDE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9E0);
  }

  return result;
}

unint64_t sub_1DD54BFCC()
{
  result = qword_1ECCDE9E8;
  if (!qword_1ECCDE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9E8);
  }

  return result;
}

unint64_t sub_1DD54C024()
{
  result = qword_1ECCDE9F0;
  if (!qword_1ECCDE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9F0);
  }

  return result;
}

unint64_t sub_1DD54C078()
{
  result = qword_1ECCDE9F8;
  if (!qword_1ECCDE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE9F8);
  }

  return result;
}

unint64_t sub_1DD54C0CC()
{
  result = qword_1ECCDEA00;
  if (!qword_1ECCDEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEA00);
  }

  return result;
}

unint64_t sub_1DD54C120()
{
  result = qword_1ECCDEA08;
  if (!qword_1ECCDEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEA08);
  }

  return result;
}

uint64_t type metadata accessor for PervasiveConfiguration(uint64_t a1)
{
  result = qword_1ECCDEA10;
  if (!qword_1ECCDEA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD54C1F4(uint64_t a1)
{
  sub_1DD5041F0();
  if (v1 <= 0x3F)
  {
    sub_1DD54C2A0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD54C2A0(uint64_t a1)
{
  if (!qword_1EE166640)
  {
    sub_1DD63CE68();
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE166640);
    }
  }
}

uint64_t getEnumTagSinglePayload for SelectedByRate(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SelectedByRate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_1DD54C398(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DD63CE68();
  OUTLINED_FUNCTION_6_28();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - v11;
  if (*(a1 + 32))
  {
    v13 = sub_1DD54E118();
    if (v13)
    {
      v14 = 1.0;
    }

    else
    {
      v14 = 0.0;
    }

    if (*(a1 + 8))
    {
      v15 = *a1;
      v16 = *(a1 + 8);
    }

    else
    {
      v16 = 0x80000001DD672A40;
      v15 = 0xD00000000000001BLL;
    }

    if (sub_1DD54E15C())
    {
      v27 = qword_1ECCDB0F8;

      if (v27 != -1)
      {
        swift_once();
      }

      v28 = __swift_project_value_buffer(v2, qword_1ECD0DE10);
      (*(v6 + 16))(v12, v28, v2);
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v2);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v12, 1, 1, v2);
    }

    v29 = type metadata accessor for PervasiveConfiguration(0);
    OUTLINED_FUNCTION_1_95(*(v29 + 36));
    *a2 = 0x3FF0000000000000;
    *(a2 + 8) = 1;
    *(a2 + 16) = v14;
    *(a2 + 24) = v13 & 1;
    *(a2 + 32) = v15;
    *(a2 + 40) = v16;
    *(a2 + 48) = 0x403E000000000000;
    *(a2 + 56) = 0;
    sub_1DD4D5B84(v12, a2 + *(v30 + 32));
  }

  else
  {
    v17 = [objc_opt_self() clientWithIdentifier_];
    v18 = sub_1DD54CF8C(0xD000000000000031, 0x80000001DD6729E0, v17, 0.01);
    sub_1DD4C193C(0.0, 1.0);
    v33 = v19 < v18;
    v20 = sub_1DD54CF8C(0xD00000000000001ELL, 0x80000001DD672A20, v17, 0.05);
    sub_1DD4C193C(0.0, 1.0);
    v32 = v21 < v20;
    v31 = sub_1DD54D180(0x7365736163657375, 0xE800000000000000, 0xD00000000000001BLL, 0x80000001DD672A40, v17);
    v23 = v22;
    v24 = type metadata accessor for PervasiveConfiguration(0);
    v25 = *(v24 + 32);
    type metadata accessor for PervasiveEntityResolution();
    sub_1DD63B7B8();
    sub_1DD54D570(0x64656C69706D6F63, 0xED00006C65646F4DLL, v9, v17, a2 + v25);

    (*(v6 + 8))(v9, v2);
    __swift_storeEnumTagSinglePayload(a2 + v25, 0, 1, v2);
    OUTLINED_FUNCTION_1_95(*(v24 + 36));
    *a2 = v18;
    v26 = v32;
    *(a2 + 8) = v33;
    *(a2 + 16) = v20;
    *(a2 + 24) = v26;
    *(a2 + 32) = v31;
    *(a2 + 40) = v23;
    *(a2 + 48) = 0x403E000000000000;
    *(a2 + 56) = 0;
  }
}

uint64_t sub_1DD54C784@<X0>(uint64_t *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  sub_1DD63CE68();
  OUTLINED_FUNCTION_6_28();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = type metadata accessor for PervasiveConfiguration(0);
  sub_1DD54DC4C(v1 + *(v16 + 32), v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v2) == 1)
  {
    sub_1DD3ADFD0(v6, &qword_1ECCDBF78, &unk_1DD644440);

    sub_1DD4F1444();
    v18 = v17;
    v20 = v19;
    a1[3] = &type metadata for LearnedChoiceExtractor;
    a1[4] = sub_1DD54DCBC();
    result = swift_allocObject();
    *a1 = result;
    *(result + 16) = v18;
    *(result + 24) = v20;
    *(result + 32) = sub_1DD4802B8;
    *(result + 40) = 0;
  }

  else
  {
    v26 = a1;
    (*(v8 + 32))(v15, v6, v2);
    (*(v8 + 16))(v12, v15, v2);
    v22 = type metadata accessor for ModelBasedLearning();
    swift_allocObject();
    v23 = sub_1DD52DE94(v12);
    v24 = v26;
    v26[3] = v22;
    v24[4] = sub_1DD54DD10(&qword_1ECCDEA30, type metadata accessor for ModelBasedLearning, &unk_1DD657EAC);
    *v24 = v23;
    return (*(v8 + 8))(v15, v2);
  }

  return result;
}

void sub_1DD54CC08()
{
  v0 = sub_1DD63CE68();
  __swift_allocate_value_buffer(v0, qword_1ECD0DE10);
  __swift_project_value_buffer(v0, qword_1ECD0DE10);
  type metadata accessor for PervasiveEntityResolution();
  sub_1DD63B7B8();
}

uint64_t sub_1DD54CC64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  sub_1DD6408D8();
  v20 = v21;
  MEMORY[0x1E12B2260](0x3D656372756F735BLL, 0xE800000000000000);
  v4 = type metadata accessor for PervasiveConfiguration(0);
  v5 = (v0 + *(v4 + 36));
  v6 = *(v5 + 32);
  if (v6)
  {
    v7 = 0x656469727265764FLL;
  }

  else
  {
    v7 = 0x6C61697254;
  }

  if (*(v5 + 32))
  {
    v8 = 0xE900000000000073;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1E12B2260](v7, v8);

  MEMORY[0x1E12B2260](0xD000000000000016, 0x80000001DD672980);
  v9 = sub_1DD54DBA8(*(v0 + 8), *v0);
  MEMORY[0x1E12B2260](v9);

  MEMORY[0x1E12B2260](0xD000000000000016, 0x80000001DD6729A0);
  v10 = sub_1DD54DBA8(*(v0 + 24), *(v0 + 16));
  MEMORY[0x1E12B2260](v10);

  MEMORY[0x1E12B2260](0x736143657375202CLL, 0xEA00000000003D65);
  MEMORY[0x1E12B2260](*(v0 + 32), *(v0 + 40));
  MEMORY[0x1E12B2260](0xD000000000000014, 0x80000001DD6729C0);
  v11 = *(v0 + 56);
  *&v21 = *(v0 + 48);
  BYTE8(v21) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEA20, &unk_1DD65A720);
  v12 = sub_1DD63FE38();
  MEMORY[0x1E12B2260](v12);

  MEMORY[0x1E12B2260](0x556C65646F6D202CLL, 0xEB000000003D4C52);
  sub_1DD54DC4C(v0 + *(v4 + 32), v3);
  v13 = sub_1DD63CE68();
  if (__swift_getEnumTagSinglePayload(v3, 1, v13) == 1)
  {
    sub_1DD3ADFD0(v3, &qword_1ECCDBF78, &unk_1DD644440);
    v14 = 0xE300000000000000;
    v15 = 7104878;
  }

  else
  {
    v15 = sub_1DD63CDC8();
    v14 = v16;
    (*(*(v13 - 8) + 8))(v3, v13);
  }

  MEMORY[0x1E12B2260](v15, v14);

  MEMORY[0x1E12B2260](2108509, 0xE300000000000000);
  v17 = v5[1];
  v21 = *v5;
  v22 = v17;
  v23 = v6;
  v18 = sub_1DD54E214();
  MEMORY[0x1E12B2260](v18);

  return v20;
}

double sub_1DD54CF8C(uint64_t a1, unint64_t a2, void *a3, double a4)
{
  v8 = sub_1DD63FDA8();
  v9 = sub_1DD63FDA8();
  v10 = [a3 levelForFactor:v8 withNamespaceName:v9];

  if (v10)
  {
    [v10 doubleValue];
    a4 = v11;
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
    }

    v12 = sub_1DD63F9F8();
    __swift_project_value_buffer(v12, qword_1ECD0DDF0);

    v10 = sub_1DD63F9D8();
    v13 = sub_1DD640378();

    if (os_log_type_enabled(v10, v13))
    {
      v14 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_1DD39565C(a1, a2, &v19);
      *(v14 + 12) = 2080;
      v15 = sub_1DD63FE38();
      v17 = sub_1DD39565C(v15, v16, &v19);

      *(v14 + 14) = v17;
      _os_log_impl(&dword_1DD38D000, v10, v13, "No value for %s, defaulting to: %s", v14, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }
  }

  return a4;
}

uint64_t sub_1DD54D180(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1DD63FDA8();
  v10 = sub_1DD63FDA8();
  v11 = [a5 levelForFactor:v9 withNamespaceName:v10];

  if (!v11)
  {
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DD63F9F8();
    __swift_project_value_buffer(v15, qword_1ECD0DDF0);

    v16 = sub_1DD63F9D8();
    v17 = sub_1DD640378();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_1DD39565C(a1, a2, &v35);
      *(v18 + 12) = 2080;

      v20 = sub_1DD63FE38();
      v22 = sub_1DD39565C(v20, v21, &v35);

      *(v18 + 14) = v22;
      _os_log_impl(&dword_1DD38D000, v16, v17, "No value for %s, defaulting to: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v19, -1, -1);
      MEMORY[0x1E12B3DA0](v18, -1, -1);
    }

    goto LABEL_14;
  }

  v12 = sub_1DD54DD58(v11);
  if (!v13)
  {
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v23 = sub_1DD63F9F8();
    __swift_project_value_buffer(v23, qword_1ECD0DDF0);

    v24 = v11;
    v25 = sub_1DD63F9D8();
    v26 = sub_1DD640378();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v27 = 138412546;
      *(v27 + 4) = v24;
      *v28 = v11;
      *(v27 + 12) = 2080;

      v30 = v24;
      v31 = sub_1DD63FE38();
      v33 = sub_1DD39565C(v31, v32, &v35);

      *(v27 + 14) = v33;
      _os_log_impl(&dword_1DD38D000, v25, v26, "Cannot extract value from %@, defaulting to: %s", v27, 0x16u);
      sub_1DD3ADFD0(v28, &qword_1ECCDBF90, &qword_1DD6445B0);
      MEMORY[0x1E12B3DA0](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E12B3DA0](v29, -1, -1);
      MEMORY[0x1E12B3DA0](v27, -1, -1);
    }

    else
    {
    }

LABEL_14:

    return a3;
  }

  v14 = v12;

  return v14;
}

uint64_t sub_1DD54D570@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a5;
  v60 = a3;
  v8 = sub_1DD63CE68();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v54 - v17;
  v19 = sub_1DD63FDA8();
  v20 = sub_1DD63FDA8();
  v21 = [a4 levelForFactor:v19 withNamespaceName:v20];

  if (v21)
  {
    sub_1DD5FF528(v18);
    if (__swift_getEnumTagSinglePayload(v18, 1, v8) != 1)
    {

      return (*(v9 + 32))(v59, v18, v8);
    }

    sub_1DD3ADFD0(v18, &qword_1ECCDBF78, &unk_1DD644440);
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v22 = sub_1DD63F9F8();
    __swift_project_value_buffer(v22, qword_1ECD0DDF0);
    v23 = *(v9 + 16);
    v24 = v57;
    v23(v57, v60, v8);
    v25 = v21;
    v26 = sub_1DD63F9D8();
    v27 = sub_1DD640378();

    v56 = v26;
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v61 = v54;
      *v28 = 138412546;
      *(v28 + 4) = v25;
      *v29 = v21;
      *(v28 + 12) = 2080;
      v30 = v23;
      v23(v58, v24, v8);
      v55 = v25;
      v31 = sub_1DD63FE38();
      v33 = v32;
      (*(v9 + 8))(v24, v8);
      v34 = sub_1DD39565C(v31, v33, &v61);
      v23 = v30;

      *(v28 + 14) = v34;
      v35 = v56;
      _os_log_impl(&dword_1DD38D000, v56, v27, "Cannot extract value from %@, defaulting to: %s", v28, 0x16u);
      sub_1DD3ADFD0(v29, &qword_1ECCDBF90, &qword_1DD6445B0);
      MEMORY[0x1E12B3DA0](v29, -1, -1);
      v36 = v54;
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1E12B3DA0](v36, -1, -1);
      MEMORY[0x1E12B3DA0](v28, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v24, v8);
    }

    v51 = v59;
    v52 = v60;
    v53 = v8;
  }

  else
  {
    v37 = v8;
    v38 = a1;
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v39 = sub_1DD63F9F8();
    __swift_project_value_buffer(v39, qword_1ECD0DDF0);
    v23 = *(v9 + 16);
    v23(v15, v60, v37);

    v40 = sub_1DD63F9D8();
    v41 = sub_1DD640378();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v61 = v57;
      *v42 = 136315394;
      *(v42 + 4) = sub_1DD39565C(v38, a2, &v61);
      *(v42 + 12) = 2080;
      v43 = v41;
      v23(v58, v15, v37);
      v44 = sub_1DD63FE38();
      v45 = v23;
      v47 = v46;
      (*(v9 + 8))(v15, v37);
      v48 = sub_1DD39565C(v44, v47, &v61);
      v23 = v45;

      *(v42 + 14) = v48;
      _os_log_impl(&dword_1DD38D000, v40, v43, "No value for %s, defaulting to: %s", v42, 0x16u);
      v49 = v57;
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v49, -1, -1);
      MEMORY[0x1E12B3DA0](v42, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v15, v37);
    }

    v51 = v59;
    v52 = v60;
    v53 = v37;
  }

  return (v23)(v51, v52, v53);
}

uint64_t sub_1DD54DBA8(char a1, double a2)
{
  sub_1DD640228();
  MEMORY[0x1E12B2260](15917, 0xE200000000000000);
  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12B2260](v3, v4);

  return 0;
}

uint64_t sub_1DD54DC4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD54DCBC()
{
  result = qword_1ECCDEA28;
  if (!qword_1ECCDEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEA28);
  }

  return result;
}

uint64_t sub_1DD54DD10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD54DD58(void *a1)
{
  v1 = [a1 stringValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t sub_1DD54DDBC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD54DE10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1DD54DE78(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1DD3B7FC0(0xD000000000000022, 0x80000001DD672A80);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DD63FDA8();
    v6 = [v4 stringForKey_];

    if (v6)
    {
      v7 = sub_1DD63FDD8();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v18 = sub_1DD63FDA8();
    v19 = [v4 stringForKey_];

    if (v19)
    {
      v15 = sub_1DD63FDD8();
      v16 = v20;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v21 = sub_1DD63FDA8();
    v17 = [v4 BOOLForKey_];
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD63F9F8();
    __swift_project_value_buffer(v10, qword_1ECD0DDF0);
    v11 = sub_1DD63F9D8();
    v12 = sub_1DD640378();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1DD39565C(0xD000000000000022, 0x80000001DD672A80, &v22);
      _os_log_impl(&dword_1DD38D000, v11, v12, "Could not find UserDefaults with suiteName [%s]", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E12B3DA0](v14, -1, -1);
      MEMORY[0x1E12B3DA0](v13, -1, -1);
    }

    v7 = 0;
    v9 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v15;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
}

uint64_t sub_1DD54E118()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  if (*(v0 + 16) == 0x6563726F66 && v1 == 0xE500000000000000)
  {
    return 1;
  }

  else
  {
    return sub_1DD640CD8();
  }
}

uint64_t sub_1DD54E15C()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 1;
  }

  v2 = *(v0 + 16);
  if (v2 == 0x6C65646F6DLL && v1 == 0xE500000000000000)
  {
    return 1;
  }

  v4 = sub_1DD640CD8();
  v5 = v2 == 0x6563726F66 && v1 == 0xE500000000000000;
  v6 = v5;
  if ((v4 & 1) != 0 || v6)
  {
    return 1;
  }

  return sub_1DD640CD8();
}

uint64_t sub_1DD54E214()
{
  if (*(v0 + 8))
  {
    MEMORY[0x1E12B2260](*v0);
    sub_1DD3BE2A4();
    v2 = v1;
    v3 = *(v1 + 16);
    if (v3 >= *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v2 = v13;
    }

    *(v2 + 16) = v3 + 1;
    v4 = v2 + 16 * v3;
    *(v4 + 32) = 0x7365736143657375;
    *(v4 + 40) = 0xE90000000000003DLL;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  if (*(v0 + 24))
  {
    MEMORY[0x1E12B2260](*(v0 + 16));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v2 = v14;
    }

    v5 = *(v2 + 16);
    if (v5 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v2 = v15;
    }

    *(v2 + 16) = v5 + 1;
    v6 = v2 + 16 * v5;
    *(v6 + 32) = 0x7967657461727473;
    *(v6 + 40) = 0xE90000000000003DLL;
  }

  if (*(v0 + 32))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v2 = v16;
    }

    v7 = *(v2 + 16);
    if (v7 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v2 = v17;
    }

    *(v2 + 16) = v7 + 1;
    v8 = v2 + 16 * v7;
    *(v8 + 32) = 0xD000000000000017;
    *(v8 + 40) = 0x80000001DD672A60;
  }

  else if (!*(v2 + 16))
  {

    v11 = 0xE400000000000000;
    v9 = 1701736302;
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v9 = sub_1DD63FD58();
  v11 = v10;

LABEL_20:
  MEMORY[0x1E12B2260](v9, v11);

  MEMORY[0x1E12B2260](93, 0xE100000000000000);
  return 0x656469727265764FLL;
}

void sub_1DD54E460(uint64_t a1@<X8>)
{
  v4 = sub_1DD5FFDD8();
  v6 = sub_1DD59B690(*(v2 + 64), *(v2 + 72), v4);

  if (v6)
  {
    sub_1DD5FF528(a1);
  }

  else
  {
    v5 = sub_1DD63CE68();

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v5);
  }
}

void sub_1DD54E548()
{
  OUTLINED_FUNCTION_18_4();
  v59 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  v6 = OUTLINED_FUNCTION_3(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54[-v7];
  v9 = sub_1DD63CE68();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54[-v19];
  sub_1DD54E460(v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1DD390754(v8, &qword_1ECCDBF78, &unk_1DD644440);
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
    }

    v21 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v21, qword_1EE16EFB8);
    v22 = sub_1DD63F9D8();
    v23 = sub_1DD640368();
    if (OUTLINED_FUNCTION_5_6(v23))
    {
      v24 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v24);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v25, v26, "AppSelectionModelManaging#model: No Trial override, using default model");
      OUTLINED_FUNCTION_0_1();
    }

    v59();
  }

  else
  {
    (*(v11 + 32))(v20, v8, v9);
    v27 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
    [v27 setComputeUnits_];
    v2(&v60, v20, v27);

    if (v61)
    {
      v58 = v4;
      sub_1DD3AA4A8(&v60, v62);
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
      }

      v28 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v28, qword_1EE16EFB8);
      (*(v11 + 16))(v17, v20, v9);
      v29 = sub_1DD63F9D8();
      v30 = sub_1DD640368();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v60 = v59;
        *v31 = 136446210;
        OUTLINED_FUNCTION_6_61();
        sub_1DD5508E4(v32, v33, MEMORY[0x1E6968FE0]);
        v34 = sub_1DD640CB8();
        v36 = v35;
        v37 = *(v11 + 8);
        v37(v17, v9);
        v38 = sub_1DD39565C(v34, v36, &v60);

        *(v31 + 4) = v38;
        _os_log_impl(&dword_1DD38D000, v29, v30, "AppSelectionModelManaging#model: Loaded model from Trial-override; %{public}s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      else
      {

        v37 = *(v11 + 8);
        v37(v17, v9);
      }

      v37(v20, v9);
      sub_1DD3AA4A8(v62, v58);
    }

    else
    {
      sub_1DD390754(&v60, &qword_1ECCDBF80, &unk_1DD657A00);
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
      }

      v39 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v39, qword_1EE16EFB8);
      (*(v11 + 16))(v14, v20, v9);
      v40 = sub_1DD63F9D8();
      v41 = sub_1DD640378();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v56 = v42;
        v57 = swift_slowAlloc();
        *&v62[0] = v57;
        *v42 = 136446210;
        OUTLINED_FUNCTION_6_61();
        sub_1DD5508E4(v43, v44, MEMORY[0x1E6968FE0]);
        v45 = sub_1DD640CB8();
        v58 = v4;
        v47 = v46;
        v48 = *(v11 + 8);
        v55 = v41;
        v49 = OUTLINED_FUNCTION_23_28();
        v48(v49);
        v50 = sub_1DD39565C(v45, v47, v62);

        v51 = v56;
        *(v56 + 1) = v50;
        _os_log_impl(&dword_1DD38D000, v40, v55, "AppSelectionModelManaging#model: Failed to load Trial-overridden model from %{public}s, reverting to default model", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      else
      {

        v48 = *(v11 + 8);
        v53 = OUTLINED_FUNCTION_23_28();
        v52 = (v48)(v53);
      }

      (v59)(v52);
      (v48)(v20, v9);
    }
  }

  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD54EB24(uint64_t a1)
{
  v3 = sub_1DD640478();
  v12 = *(v3 - 8);
  v13 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DD640438();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1DD63FBD8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  v11[1] = "ectionModelCache";
  v11[2] = v8;
  sub_1DD63FBA8();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1DD5508E4(&qword_1EE166488, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3CBFCC(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD640718();
  (*(v12 + 104))(v5, *MEMORY[0x1E69E8090], v13);
  *(v1 + 16) = sub_1DD6404A8();
  v9 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v9;
  *(v1 + 56) = *(a1 + 32);
  *(v1 + 72) = *(a1 + 48);
  return v1;
}

void sub_1DD54EDA4()
{
  OUTLINED_FUNCTION_18_4();
  v13 = OUTLINED_FUNCTION_19_28(v2);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_18_31();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_17_32();
  v8 = OUTLINED_FUNCTION_3(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v9 = sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  OUTLINED_FUNCTION_16_39(v9, "siriinference-atomic");
  OUTLINED_FUNCTION_1_96();
  sub_1DD5508E4(v10, v11, MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3CBFCC(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
  OUTLINED_FUNCTION_14_36();
  sub_1DD640718();
  (*(v4 + 104))(v1, *MEMORY[0x1E69E8090], v13);
  *(v0 + 16) = OUTLINED_FUNCTION_5_68();
  v12 = *(v14 + 16);
  *(v0 + 24) = *v14;
  *(v0 + 40) = v12;
  *(v0 + 56) = *(v14 + 32);
  OUTLINED_FUNCTION_17();
}

void sub_1DD54EF7C()
{
  OUTLINED_FUNCTION_18_4();
  v12 = OUTLINED_FUNCTION_19_28(v2);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_18_31();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_17_32();
  v8 = OUTLINED_FUNCTION_3(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v9 = sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  OUTLINED_FUNCTION_16_39(v9, "siriinference-atomic");
  OUTLINED_FUNCTION_1_96();
  sub_1DD5508E4(v10, v11, MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3CBFCC(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
  OUTLINED_FUNCTION_14_36();
  sub_1DD640718();
  (*(v4 + 104))(v1, *MEMORY[0x1E69E8090], v12);
  v0[2] = OUTLINED_FUNCTION_5_68();
  sub_1DD55097C(v13, v0 + *(*v0 + 96));
  OUTLINED_FUNCTION_17();
}

void sub_1DD54F15C()
{
  OUTLINED_FUNCTION_18_4();
  v12 = OUTLINED_FUNCTION_19_28(v2);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_18_31();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_17_32();
  v8 = OUTLINED_FUNCTION_3(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v9 = sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  OUTLINED_FUNCTION_16_39(v9, "siriinference-atomic");
  OUTLINED_FUNCTION_1_96();
  sub_1DD5508E4(v10, v11, MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3CBFCC(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
  OUTLINED_FUNCTION_14_36();
  sub_1DD640718();
  (*(v4 + 104))(v1, *MEMORY[0x1E69E8090], v12);
  *(v0 + 16) = OUTLINED_FUNCTION_5_68();
  *(v0 + 24) = v13;
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD54F324(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1DD54F384()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4D8, &unk_1DD657A10);
  swift_allocObject();
  sub_1DD54EDA4();
  off_1EE1611B8 = v0;
}

void sub_1DD54F3E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4D0, &unk_1DD65A7D0);
  swift_allocObject();
  sub_1DD54F15C();
  qword_1EE1611D0 = v0;
}

uint64_t sub_1DD54F438()
{
  v7 = sub_1DD640478();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DD640438();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1DD63FBD8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  sub_1DD63FBC8();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1DD5508E4(&qword_1EE166488, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3CBFCC(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD640718();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1DD6404A8();
  qword_1EE1611A8 = result;
  return result;
}

uint64_t sub_1DD54F698()
{
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v1 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v1, qword_1EE16EFB8);
  v2 = sub_1DD63F9D8();
  v3 = sub_1DD640368();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_9();
    *v4 = 0;
    _os_log_impl(&dword_1DD38D000, v2, v3, "AppSelectionModelCache#getPhoneAppSelectionSplashModel", v4, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD54F974();
  v5 = sub_1DD63F9D8();
  v6 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v6))
  {
    v7 = OUTLINED_FUNCTION_9();
    *v7 = 0;
    _os_log_impl(&dword_1DD38D000, v5, v6, "AppSelectionModelCache#getPhoneAppSelectionSplashModel: Returning model", v7, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE1611B0 != -1)
  {
    OUTLINED_FUNCTION_10_42(&qword_1EE1611B0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF80, &unk_1DD657A00);
  sub_1DD640488();
}

uint64_t sub_1DD54F83C()
{
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v0 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v0, qword_1EE16EFB8);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_9();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "AppSelectionModelCache#getPhoneAppSelectionTrialManager", v3, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD54F974();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640368();
  if (OUTLINED_FUNCTION_5_6(v5))
  {
    v6 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v6);
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v7, v8, "AppSelectionModelCache#getPhoneAppSelectionTrialManager: Returning TrialManager");
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE1611C8 != -1)
  {
    OUTLINED_FUNCTION_9_46(&qword_1EE1611C8);
  }

  v9 = sub_1DD508C14();

  return v9;
}

uint64_t sub_1DD54F974()
{
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v0 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v0, qword_1EE16EFB8);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (OUTLINED_FUNCTION_5_6(v2))
  {
    v3 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v3);
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v4, v5, "AppSelectionModelCache#initializeAssets");
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE1611A0 != -1)
  {
    OUTLINED_FUNCTION_4_69(&qword_1EE1611A0);
  }

  v6 = qword_1EE1611A8;
  v10[4] = sub_1DD54F320;
  v10[5] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DD5FFDB0;
  v10[3] = &block_descriptor_5_0;
  v7 = _Block_copy(v10);
  v8 = v6;

  dispatch_sync(v8, v7);

  _Block_release(v7);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD54FAF0()
{
  if (qword_1EE1611B0 != -1)
  {
    OUTLINED_FUNCTION_10_42(&qword_1EE1611B0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF80, &unk_1DD657A00);
  sub_1DD640488();

  v0 = v24;
  result = sub_1DD390754(aBlock, &qword_1ECCDBF80, &unk_1DD657A00);
  if (!v0)
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
    }

    v2 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v2, qword_1EE16EFB8);
    v3 = sub_1DD63F9D8();
    v4 = sub_1DD640368();
    if (OUTLINED_FUNCTION_5_6(v4))
    {
      v5 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v5);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v6, v7, "AppSelectionModelCache#loadAssets phoneAppSelectionSplashModel is nil");
      OUTLINED_FUNCTION_0_1();
    }

    v8 = [objc_opt_self() clientWithIdentifier_];
    v9 = qword_1ECCDEA38;
    v10 = off_1ECCDEA40;
    type metadata accessor for TrialManager();
    v11 = swift_allocObject();
    v12 = v8;

    v13 = sub_1DD5506B4(v12, v9, v10, v11);
    v14 = qword_1ECCDEA48;
    v15 = off_1ECCDEA50;
    type metadata accessor for PhoneAppSelectionModelManager();
    swift_allocObject();
    v16 = sub_1DD550A50(v13, v14, v15);

    v17 = sub_1DD63FDA8();

    if (qword_1EE1611A0 != -1)
    {
      OUTLINED_FUNCTION_4_69(&qword_1EE1611A0);
    }

    v18 = qword_1EE1611A8;
    v19 = swift_allocObject();
    *(v19 + 16) = v13;
    *(v19 + 24) = v16;
    v25 = sub_1DD550894;
    v26 = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DD54F324;
    v24 = &block_descriptor_8_0;
    v20 = _Block_copy(aBlock);

    v21 = v18;

    v22 = [v12 addUpdateHandlerForNamespaceName:v17 queue:v21 usingBlock:v20];
    _Block_release(v20);
    swift_unknownObjectRelease();

    if (qword_1EE1611C8 != -1)
    {
      OUTLINED_FUNCTION_9_46(&qword_1EE1611C8);
    }

    sub_1DD5FFB04();

    sub_1DD5FFBF0();
  }

  return result;
}

void static PhoneAppSelectionModelCache.prewarm()()
{
  OUTLINED_FUNCTION_18_4();
  v0 = sub_1DD63FB78();
  OUTLINED_FUNCTION_0();
  v20 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v5 = v4 - v3;
  v19 = sub_1DD63FBD8();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v12 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v12, qword_1EE16EFB8);
  v13 = sub_1DD63F9D8();
  v14 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v14))
  {
    v15 = OUTLINED_FUNCTION_9();
    *v15 = 0;
    _os_log_impl(&dword_1DD38D000, v13, v14, "AppSelectionModelCache#prewarm", v15, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE1611A0 != -1)
  {
    OUTLINED_FUNCTION_4_69(&qword_1EE1611A0);
  }

  v16 = qword_1EE1611A8;
  v21[4] = sub_1DD54F320;
  v21[5] = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1DD3CBCD0;
  v21[3] = &block_descriptor_14;
  v17 = _Block_copy(v21);
  v18 = v16;
  sub_1DD63FBA8();
  sub_1DD5508E4(&qword_1EE163978, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
  sub_1DD3CBFCC(&qword_1EE1638E0, &qword_1ECCDBFE8, &qword_1DD64F0F0);
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v11, v5, v17);
  _Block_release(v17);

  (*(v20 + 8))(v5, v0);
  (*(v7 + 8))(v11, v19);
  OUTLINED_FUNCTION_17();
}

double block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1DD5501FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE162D98 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD63F9F8();
  __swift_project_value_buffer(v3, qword_1EE16EFB8);
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640368();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DD38D000, v4, v5, "AppSelectionModelCache#loadAssets Trial update handler invoked", v6, 2u);
    MEMORY[0x1E12B3DA0](v6, -1, -1);
  }

  sub_1DD600008();
  if (qword_1EE1611C8 != -1)
  {
    swift_once();
  }

  sub_1DD5FFB04();

  if (qword_1EE1611B0 != -1)
  {
    swift_once();
  }

  sub_1DD5FFBF0();
}

double sub_1DD5503C0(void *a1, uint64_t a2)
{

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v4 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v4, qword_1EE16EFB8);
  v5 = sub_1DD63F9D8();
  v6 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v6))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_8_48(&dword_1DD38D000);
    OUTLINED_FUNCTION_0_1();
  }

  *a1 = a2;

  return result;
}

void sub_1DD550488(uint64_t a1)
{
  sub_1DD390754(a1, &qword_1ECCDBF80, &unk_1DD657A00);
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v1 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v1, qword_1EE16EFB8);
  v2 = sub_1DD63F9D8();
  v3 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v3))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_8_48(&dword_1DD38D000);
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD54E548();
}

id sub_1DD550590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1DD63FDA8();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DD54F324;
  v13[3] = &block_descriptor_14;
  v10 = _Block_copy(v13);

  v11 = [v5 addUpdateHandlerForNamespaceName:v9 queue:a3 usingBlock:v10];

  _Block_release(v10);

  return v11;
}

void *sub_1DD5506B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16[3] = sub_1DD39638C(0, &qword_1EE160130, 0x1E69DB518);
  v16[4] = &off_1F58C3998;
  v16[0] = a1;
  a4[9] = 0;
  a4[2] = a2;
  a4[3] = a3;
  sub_1DD3C2388(v16, (a4 + 4));
  sub_1DD39638C(0, &qword_1EE160140, 0x1E69DB540);
  v17 = sub_1DD63FC88();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEA58, &unk_1DD65A7E0);
  swift_allocObject();
  a4[10] = sub_1DD54EB24(&v17);
  sub_1DD600008();
  v8 = a4[2];
  v9 = a4[3];
  v10 = qword_1EE165278;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE16F008;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = v11;

  v14 = sub_1DD550590(v8, v9, v11, sub_1DD550974, v12);

  a4[9] = v14;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return a4;
}

uint64_t sub_1DD5508E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD55097C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_42(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_28(uint64_t a1)
{
  *(v1 - 96) = a1;

  return sub_1DD640478();
}

uint64_t sub_1DD550A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = "PhoneAppSelectionDefaultModelLoad";
  *(v3 + 24) = 33;
  *(v3 + 32) = 2;
  *(v3 + 40) = "PhoneAppSelectionTrialModelLoad";
  *(v3 + 48) = 31;
  *(v3 + 56) = 2;
  *(v3 + 72) = a3;
  *(v3 + 80) = a1;
  *(v3 + 64) = a2;
  return v3;
}

double sub_1DD550A8C@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v37 = *v1;
  v38 = a1;
  v3 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[2];
  v7 = v2[3];
  v9 = *(v2 + 32);
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2(&qword_1EE166460);
  }

  v10 = qword_1EE16F0C0;
  v11 = &v6[*(v3 + 20)];
  *v11 = v8;
  *(v11 + 1) = v7;
  v11[16] = v9;
  v12 = v10;
  sub_1DD63F9B8();
  *&v6[*(v3 + 24)] = v12;
  v13 = v12;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DD643F90;
  v15 = sub_1DD6408F8();
  v17 = v16;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1DD392BD8();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  OUTLINED_FUNCTION_3_61();
  v39 = v13;
  OUTLINED_FUNCTION_4_70();
  sub_1DD63F998();

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v18 = sub_1DD63F9F8();
  __swift_project_value_buffer(v18, qword_1EE16EFB8);
  v19 = sub_1DD63F9D8();
  v20 = sub_1DD640398();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v21);
    OUTLINED_FUNCTION_8_53(&dword_1DD38D000, v19, v20, "PhoneAppSelectionModelManager#defaultModel Loading default Phone CoreML model");
    OUTLINED_FUNCTION_23_0();
  }

  v22 = v2[8] == 0xD00000000000001ALL && 0x80000001DD672AD0 == v2[9];
  if (v22 || (sub_1DD640CD8() & 1) != 0)
  {
    v23 = sub_1DD63F9D8();
    v24 = sub_1DD640398();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v25);
      OUTLINED_FUNCTION_8_53(&dword_1DD38D000, v23, v24, "PhoneAppSelectionModelManager#defaultModel Loading default people centric app predictor model");
      OUTLINED_FUNCTION_23_0();
    }

    v26 = type metadata accessor for PhoneAppPredictorPeopleCentric();
    v27 = sub_1DD3C5588();
    v28 = sub_1DD63C0E4(v27);
    sub_1DD6404C8();
    OUTLINED_FUNCTION_4_70();
    sub_1DD63F9A8();
    if (v28)
    {
      v29 = &off_1F58BB6A8;
LABEL_20:
      v34 = v38;
      v38[3] = v26;
      v34[4] = v29;
      *v34 = v28;
      sub_1DD41BFFC(v6);
      return result;
    }
  }

  else
  {
    v30 = sub_1DD63F9D8();
    v31 = sub_1DD640398();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v32);
      OUTLINED_FUNCTION_8_53(&dword_1DD38D000, v30, v31, "PhoneAppSelectionModelManager#defaultModel Loading default app predictor model");
      OUTLINED_FUNCTION_23_0();
    }

    v26 = type metadata accessor for PhoneAppPredictor();
    v33 = sub_1DD3C5588();
    v28 = sub_1DD63B9DC(v33);
    sub_1DD6404C8();
    OUTLINED_FUNCTION_4_70();
    sub_1DD63F9A8();
    if (v28)
    {
      v29 = &off_1F58BB6C0;
      goto LABEL_20;
    }
  }

  sub_1DD41BFFC(v6);
  result = 0.0;
  v36 = v38;
  *v38 = 0u;
  *(v36 + 1) = 0u;
  v36[4] = 0;
  return result;
}

double sub_1DD550EA0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v88 = a1;
  v84 = a2;
  v82 = *v2;
  v4 = sub_1DD63CE68();
  v89 = *(v4 - 8);
  v90 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v76 - v7;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v76 - v9;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v76 - v11;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v76 - v13;
  v14 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v3[5];
  v17 = v3[6];
  v19 = *(v3 + 56);
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2(&qword_1EE166460);
  }

  v20 = qword_1EE16F0C0;
  v21 = v91;
  v22 = v91 + *(v14 + 20);
  *v22 = v18;
  *(v22 + 8) = v17;
  *(v22 + 16) = v19;
  v23 = v20;
  sub_1DD63F9B8();
  *(v21 + *(v14 + 24)) = v23;
  v24 = v23;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1DD643F90;
  v26 = sub_1DD6408F8();
  v28 = v27;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1DD392BD8();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  OUTLINED_FUNCTION_3_61();
  v83 = v24;
  v85 = v18;
  v86 = v17;
  v87 = v19;
  sub_1DD63F998();

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v29 = sub_1DD63F9F8();
  v30 = __swift_project_value_buffer(v29, qword_1EE16EFB8);
  v32 = v88;
  v31 = v89;
  v33 = *(v89 + 16);
  v34 = v80;
  v35 = v90;
  v33(v80, v88, v90);
  v79 = v30;
  v36 = sub_1DD63F9D8();
  v37 = sub_1DD640398();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v92 = v39;
    *v38 = 136315138;
    v40 = sub_1DD63CDC8();
    v41 = v34;
    v42 = v33;
    v44 = v43;
    v45 = *(v31 + 8);
    v45(v41, v90);
    v46 = sub_1DD39565C(v40, v44, &v92);
    v33 = v42;
    v47 = v45;

    *(v38 + 4) = v46;
    _os_log_impl(&dword_1DD38D000, v36, v37, "PhoneAppSelectionModelManager#compiledModel Loading compiled Phone CoreML model from url: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v48 = v39;
    v32 = v88;
    MEMORY[0x1E12B3DA0](v48, -1, -1);
    v49 = v38;
    v35 = v90;
    MEMORY[0x1E12B3DA0](v49, -1, -1);
  }

  else
  {

    v50 = v34;
    v47 = *(v31 + 8);
    v47(v50, v35);
  }

  v51 = v81;
  v52 = v3[8] == 0xD00000000000001ALL && 0x80000001DD672AD0 == v3[9];
  if (v52 || (sub_1DD640CD8() & 1) != 0)
  {
    v53 = sub_1DD63F9D8();
    v54 = sub_1DD640398();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v55);
      OUTLINED_FUNCTION_8_53(&dword_1DD38D000, v53, v54, "PhoneAppSelectionModelManager#compiledModel Loading compiled people centric app predictor model");
      OUTLINED_FUNCTION_23_0();
    }

    v33(v51, v32, v35);
    v56 = sub_1DD3C5588();
    sub_1DD51FA60();
    v57 = v78;
    v33(v78, v51, v35);
    v58 = sub_1DD551650(v57, v56);
    v59 = OUTLINED_FUNCTION_0_112();
    (v47)(v59);
    type metadata accessor for PhoneAppPredictorPeopleCentric();
    v60 = swift_allocObject();
    *(v60 + 16) = v58;
    v61 = sub_1DD6404C8();
    OUTLINED_FUNCTION_7_50(v61);
    if (v60)
    {
      v62 = type metadata accessor for PhoneAppPredictorPeopleCentric();
      v63 = &off_1F58BB6A8;
LABEL_21:
      v73 = v84;
      v84[3] = v62;
      v73[4] = v63;
      *v73 = v60;
      sub_1DD41BFFC(v91);
      return result;
    }
  }

  else
  {
    v64 = sub_1DD63F9D8();
    v65 = sub_1DD640398();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v66);
      OUTLINED_FUNCTION_8_53(&dword_1DD38D000, v64, v65, "PhoneAppSelectionModelManager#compiledModel Loading compiled app predictor model");
      OUTLINED_FUNCTION_23_0();
    }

    v67 = v77;
    v33(v77, v32, v35);
    v68 = sub_1DD3C5588();
    sub_1DD51FA60();
    v69 = v76;
    v33(v76, v67, v35);
    v70 = sub_1DD551650(v69, v68);
    v71 = OUTLINED_FUNCTION_0_112();
    (v47)(v71);
    type metadata accessor for PhoneAppPredictor();
    v60 = swift_allocObject();
    *(v60 + 16) = v70;
    v72 = sub_1DD6404C8();
    OUTLINED_FUNCTION_7_50(v72);
    if (v60)
    {
      v62 = type metadata accessor for PhoneAppPredictor();
      v63 = &off_1F58BB6C0;
      goto LABEL_21;
    }
  }

  sub_1DD41BFFC(v91);
  result = 0.0;
  v75 = v84;
  *v84 = 0u;
  *(v75 + 1) = 0u;
  v75[4] = 0;
  return result;
}

id sub_1DD551650(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1DD63CE08();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1DD63CE68();
    OUTLINED_FUNCTION_7();
    v9 = *(v8 + 8);
    v10 = v6;
    v9(a1, v7);
  }

  else
  {
    v11 = v14[0];
    sub_1DD63CD98();

    swift_willThrow();
    sub_1DD63CE68();
    OUTLINED_FUNCTION_7();
    (*(v12 + 8))(a1);
  }

  return v5;
}

uint64_t sub_1DD5517A8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (*(a2 + 1) != 1)
  {
    if (v3)
    {
      v5 = (a1 + 80 * v3 - 48);
      memcpy(__dst, v5, 0x49uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCE8, &qword_1DD6440A8);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1DD643F90;
      memcpy((v2 + 32), v5, 0x49uLL);
      sub_1DD474708(__dst, v7);
      return v2;
    }

LABEL_6:

    return v2;
  }

  if (!v3)
  {
    goto LABEL_6;
  }

  memcpy(__dst, (a1 + 32), 0x49uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCE8, &qword_1DD6440A8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD643F90;
  memcpy((v4 + 32), (v2 + 32), 0x49uLL);
  sub_1DD474708(__dst, v7);
  return v4;
}

void sub_1DD551900(uint64_t a1)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v3 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - v10;
  v12 = 0;
  v20 = a1;
  v13 = *(a1 + 296);
  v14 = *(v13 + 16);
  while (1)
  {
    if (v14 == v12)
    {
      OUTLINED_FUNCTION_1_97();
      return;
    }

    if (v12 >= *(v13 + 16))
    {
      break;
    }

    sub_1DD3CD140(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v5);
    v15 = &v5[*(matched + 20)];
    if (v15[*(type metadata accessor for ContactResolver.SignalSet(0) + 204)])
    {
      sub_1DD3CD200(v5, v8);
      sub_1DD3CD200(v8, v11);
      v19[3] = *(v20 + *(type metadata accessor for ContactResolverRunTimeData(0) + 64) + 2);
      v17 = sub_1DD556FCC();
      MEMORY[0x1EEE9AC00](v17);
      *&v19[-4] = v11;
      sub_1DD450608(sub_1DD551BDC, &v19[-8], v17);

      OUTLINED_FUNCTION_1_97();
      OUTLINED_FUNCTION_0_113();
      sub_1DD551BFC(v11, v18);
      return;
    }

    ++v12;
    OUTLINED_FUNCTION_0_113();
    sub_1DD551BFC(v5, v16);
  }

  __break(1u);
}

uint64_t sub_1DD551BFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_1DD551C70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 27))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1DD551CB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void Place.init(worldPlaceName:domainObjectPlaceName:neighborhoodPlaceName:personPlace:)()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 8);
  sub_1DD3ADFA8(v16);
  memcpy((v11 + 56), v16, 0xCEuLL);
  *v11 = v9;
  *(v11 + 8) = v7;
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;

  *(v11 + 32) = v13;
  *(v11 + 40) = v14;
  *(v11 + 48) = v15;
  memcpy(__dst, (v11 + 56), 0xCEuLL);
  sub_1DD3ADFD0(__dst, &qword_1ECCDB858, &qword_1DD642FE0);
  memcpy((v11 + 56), v1, 0xCEuLL);
  OUTLINED_FUNCTION_17();
}

void sub_1DD551DC4()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v4 = 0xEC00000073736572;
  v6 = *v5;
  sub_1DD3ADFA8(__src);
  memcpy(&v34[6], __src, 0xCEuLL);

  v7 = 0x64646120656D6F68;
  switch(v6)
  {
    case 1:
      v7 = 0x646461206B726F77;
      break;
    case 2:
      v8 = "current location";
      goto LABEL_11;
    case 3:
      v4 = 0xE600000000000000;
      v7 = 0x79627261656ELL;
      break;
    case 4:
      v4 = 0xEE00737365726464;
      v7 = 0x61206C6F6F686373;
      break;
    case 5:
      v9 = 544045415;
      goto LABEL_8;
    case 6:
      v4 = 0xED00007373657264;
      v7 = 0x646120726568746FLL;
      break;
    case 7:
      v9 = 544829025;
LABEL_8:
      v7 = v9 | 0x7264646100000000;
      v4 = 0xEB00000000737365;
      break;
    case 8:
      v8 = "parking location";
LABEL_11:
      v4 = (v8 - 32) | 0x8000000000000000;
      v7 = 0xD000000000000010;
      break;
    default:
      break;
  }

  v29 = v7;
  v30 = v4;
  v10 = [v1 givenName];
  v11 = sub_1DD63FDD8();
  v27 = v12;
  v28 = v11;

  v13 = [v1 familyName];
  v14 = sub_1DD63FDD8();
  v16 = v15;

  v17 = [objc_opt_self() stringFromContact:v1 style:0];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1DD63FDD8();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  v22 = v6 | 0x300;
  v23 = [v1 givenName];
  v24 = sub_1DD63FDD8();
  v26 = v25;

  v31[0] = v28;
  v31[1] = v27;
  LOWORD(v31[2]) = 514;
  v31[3] = v14;
  v31[4] = v16;
  LOWORD(v31[5]) = 514;
  v31[6] = v19;
  v31[7] = v21;
  LOWORD(v31[8]) = 514;
  v31[9] = v24;
  v31[10] = v26;
  LOWORD(v31[11]) = 514;
  memset(&v31[12], 0, 17);
  memset(&v31[15], 0, 18);
  memset(&v31[18], 0, 18);
  *(&v31[20] + 2) = 50332416;
  nullsub_1();
  memcpy(&v32[5], v31, 0xA6uLL);
  v32[0] = v29;
  v32[1] = v30;
  LOWORD(v32[2]) = v22;
  WORD1(v32[2]) = 515;
  v32[3] = 0;
  v32[4] = 0;
  nullsub_1();
  memcpy(__dst, &v34[6], 0xCEuLL);
  sub_1DD3ADFD0(__dst, &qword_1ECCDB858, &qword_1DD642FE0);
  memcpy(&v34[6], v32, 0xCEuLL);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  memcpy((v3 + 50), v34, 0xD4uLL);
  OUTLINED_FUNCTION_17();
}

void sub_1DD5520DC()
{
  OUTLINED_FUNCTION_18_4();
  memcpy(__dst, (v0 + 56), 0xCEuLL);
  if (j__OUTLINED_FUNCTION_0_99(__dst) == 1 || !*(&__dst[0] + 1))
  {
    goto LABEL_14;
  }

  v1 = __dst[1];
  memcpy(v58, &__dst[2] + 8, 0xA6uLL);
  if (j__OUTLINED_FUNCTION_0_99(v58) == 1)
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v3 = v58[7];
    if (v58[7])
    {
      v4 = v58[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v5 = swift_allocObject();
      v2 = v5;
      *(v5 + 16) = xmmword_1DD643F90;
      *(v5 + 32) = v4;
    }

    else
    {
      v3 = *(&__dst[7] + 1);
      v6 = *&__dst[7];
      if (!*(&__dst[7] + 1))
      {
        v13 = *(&__dst[2] + 1);
        v14 = *&__dst[3];
        v15 = *(&__dst[4] + 1);
        v16 = *&__dst[4];
        v17 = __dst[5];
        v30 = *(&__dst[5] + 8);
        v28 = WORD4(__dst[6]);
        v29 = WORD4(__dst[3]);
        v18 = __dst[8];
        v37 = __dst[10];
        v38 = *(&__dst[8] + 8);
        v34 = __dst[11];
        v35 = BYTE8(__dst[9]);
        v36 = *(&__dst[11] + 8);
        v32 = WORD5(__dst[12]);
        v33 = WORD4(__dst[12]);
        v31 = WORD6(__dst[12]);
        if (*&__dst[3])
        {
          v27 = *&__dst[4];

          sub_1DD3CDD14(&__dst[2] + 8, &v39, &qword_1ECCDE900, &qword_1DD659DE0);

          sub_1DD3BE2A4();
          v2 = v19;
          v20 = *(v19 + 16);
          if (v20 >= *(v19 + 24) >> 1)
          {
            sub_1DD3BE2A4();
            v2 = v24;
          }

          *(v2 + 16) = v20 + 1;
          v21 = v2 + 16 * v20;
          *(v21 + 32) = v13;
          *(v21 + 40) = v14;
          v16 = v27;
        }

        else
        {

          sub_1DD3CDD14(&__dst[2] + 8, &v39, &qword_1ECCDE900, &qword_1DD659DE0);
          v2 = MEMORY[0x1E69E7CC0];
        }

        v39 = v13;
        v40 = v14;
        v41 = v29;
        v42 = v16;
        v43 = v15;
        v44 = v17;
        v45 = v30;
        v46 = v28;
        v47 = v6;
        v48 = 0;
        v49 = v18;
        v50 = v38;
        v51 = v35;
        v52 = v37;
        v53 = v34;
        v54 = v36;
        v55 = v33;
        v56 = v32;
        v57 = v31;

        sub_1DD54091C(&v39);
        if (v15)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD3BE2A4();
            v2 = v25;
          }

          v22 = *(v2 + 16);
          if (v22 >= *(v2 + 24) >> 1)
          {
            sub_1DD3BE2A4();
            v2 = v26;
          }

          *(v2 + 16) = v22 + 1;
          v23 = v2 + 16 * v22;
          *(v23 + 32) = v16;
          *(v23 + 40) = v15;
        }

        goto LABEL_10;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v5 = swift_allocObject();
      v2 = v5;
      *(v5 + 16) = xmmword_1DD643F90;
      *(v5 + 32) = v6;
    }

    *(v5 + 40) = v3;
  }

LABEL_10:
  if (v1 == 9 || (LOBYTE(v39) = v1, v7 = sub_1DD54AEEC(), v9 = v8, , !*(v2 + 16)))
  {
  }

  else
  {
    v39 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    v10 = sub_1DD63FD58();
    v12 = v11;

    v39 = v10;
    v40 = v12;
    MEMORY[0x1E12B2260](2126631, 0xE300000000000000);
    MEMORY[0x1E12B2260](v7, v9);
  }

LABEL_14:
  OUTLINED_FUNCTION_17();
}

uint64_t Place.worldPlaceName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Place.domainObjectPlaceName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Place.neighborhoodPlaceName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t Place.personPlace.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 56), 0xCEuLL);
  memcpy(a1, (v1 + 56), 0xCEuLL);
  return sub_1DD3CDD14(__dst, v4, &qword_1ECCDB858, &qword_1DD642FE0);
}

void static Place.== infix(_:_:)()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v72 = v2[4];
  v77 = v2[5];
  HIDWORD(v67) = *(v2 + 24);
  memcpy(__dst, v2 + 7, 0xCEuLL);
  v8 = *v1;
  v7 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  v11 = v1[5];
  v62 = v1[4];
  HIDWORD(v57) = *(v1 + 24);
  memcpy(__src, v1 + 7, 0xCEuLL);
  if (!v4)
  {
    if (v7)
    {
      goto LABEL_33;
    }

LABEL_10:
    if (v6)
    {
      if (!v9)
      {
        goto LABEL_33;
      }

      v13 = v5 == v10 && v6 == v9;
      if (!v13 && (sub_1DD640CD8() & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (v9)
    {
      goto LABEL_33;
    }

    if (v77)
    {
      v88[0] = v72;
      v88[1] = v77;
      LOWORD(v88[2]) = WORD2(v67);
      if (v11)
      {
        v86[0] = v62;
        v86[1] = v11;
        LOWORD(v86[2]) = WORD2(v57);
        swift_bridgeObjectRetain_n();

        v14 = static NeighborhoodPlaceName.== infix(_:_:)(v88, v86);

        if ((v14 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_26:
        memcpy(v88, __dst, 0xCEuLL);
        memcpy(&v88[26], __src, 0xCEuLL);
        memcpy(v89, __dst, 0xCEuLL);
        if (j__OUTLINED_FUNCTION_0_99(v89) == 1)
        {
          memcpy(v86, &v88[26], 0xCEuLL);
          if (j__OUTLINED_FUNCTION_0_99(v86) == 1)
          {
            OUTLINED_FUNCTION_5_69(v87);
            OUTLINED_FUNCTION_3_68(__dst, v85);
            OUTLINED_FUNCTION_3_68(__src, v85);
            sub_1DD3ADFD0(v87, &qword_1ECCDB858, &qword_1DD642FE0);
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_3_68(__dst, v87);
          OUTLINED_FUNCTION_3_68(__src, v87);
        }

        else
        {
          OUTLINED_FUNCTION_5_69(v87);
          OUTLINED_FUNCTION_5_69(v85);
          memcpy(v86, &v88[26], 0xCEuLL);
          if (j__OUTLINED_FUNCTION_0_99(v86) != 1)
          {
            memcpy(v84, &v88[26], 0xCEuLL);
            OUTLINED_FUNCTION_2_84(__dst, v36, v37, v38, v39, v40, v41, v42, v57, v62, v67, v72, v77, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v82[13], v82[14], v82[15], v82[16], v82[17], v82[18], v82[19], v82[20], v82[21], v82[22], v82[23], v82[24], v82[25]);
            OUTLINED_FUNCTION_2_84(__src, v43, v44, v45, v46, v47, v48, v49, v60, v65, v70, v75, v80, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v82[13], v82[14], v82[15], v82[16], v82[17], v82[18], v82[19], v82[20], v82[21], v82[22], v82[23], v82[24], v82[25]);
            OUTLINED_FUNCTION_2_84(v87, v50, v51, v52, v53, v54, v55, v56, v61, v66, v71, v76, v81, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v82[13], v82[14], v82[15], v82[16], v82[17], v82[18], v82[19], v82[20], v82[21], v82[22], v82[23], v82[24], v82[25]);
            static PersonPlace.== infix(_:_:)(v85, v84);
            memcpy(v82, v84, 0xCEuLL);
            sub_1DD54A650(v82);
            memcpy(v83, v85, 0xCEuLL);
            sub_1DD54A650(v83);
            OUTLINED_FUNCTION_5_69(v84);
            sub_1DD3ADFD0(v84, &qword_1ECCDB858, &qword_1DD642FE0);
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_5_69(v84);
          OUTLINED_FUNCTION_2_84(__dst, v15, v16, v17, v18, v19, v20, v21, v57, v62, v67, v72, v77, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v82[13], v82[14], v82[15], v82[16], v82[17], v82[18], v82[19], v82[20], v82[21], v82[22], v82[23], v82[24], v82[25]);
          OUTLINED_FUNCTION_2_84(__src, v22, v23, v24, v25, v26, v27, v28, v58, v63, v68, v73, v78, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v82[13], v82[14], v82[15], v82[16], v82[17], v82[18], v82[19], v82[20], v82[21], v82[22], v82[23], v82[24], v82[25]);
          OUTLINED_FUNCTION_2_84(v87, v29, v30, v31, v32, v33, v34, v35, v59, v64, v69, v74, v79, v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v82[13], v82[14], v82[15], v82[16], v82[17], v82[18], v82[19], v82[20], v82[21], v82[22], v82[23], v82[24], v82[25]);
          sub_1DD54A650(v84);
        }

        memcpy(v86, v88, 0x19EuLL);
        sub_1DD3ADFD0(v86, &qword_1ECCDEA60, &qword_1DD65A8E8);
        goto LABEL_33;
      }
    }

    else if (!v11)
    {

      goto LABEL_26;
    }

    goto LABEL_33;
  }

  if (v7)
  {
    v12 = v3 == v8 && v4 == v7;
    if (v12 || (sub_1DD640CD8() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_33:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD552994(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616C50646C726F77 && a2 == 0xEE00656D614E6563;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001DD672C10 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001DD672C30 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C506E6F73726570 && a2 == 0xEB00000000656361)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD640CD8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1DD552B08(char a1)
{
  result = 0x616C50646C726F77;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6C506E6F73726570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD552BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD552994(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD552BD0(uint64_t a1)
{
  v2 = sub_1DD552EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD552C0C(uint64_t a1)
{
  v2 = sub_1DD552EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Place.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEA68, &qword_1DD65A8F0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = v1[3];
  v22 = v1[2];
  v23 = v9;
  v11 = v1[5];
  v20 = v1[4];
  v21 = v10;
  v19 = v11;
  v28 = *(v1 + 24);
  memcpy(v27, v1 + 7, 0xCEuLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD552EB8();
  sub_1DD640EF8();
  LOBYTE(v26[0]) = 0;
  v12 = v24;
  v13 = v8;
  sub_1DD640BC8();
  if (!v12)
  {
    v14 = v28;
    v15 = v19;
    v16 = v20;
    LOBYTE(v26[0]) = 1;
    sub_1DD640BC8();
    v26[0] = v16;
    v26[1] = v15;
    LOWORD(v26[2]) = v14;
    v25[0] = 2;
    sub_1DD552F0C();

    sub_1DD640C08();

    memcpy(v26, v27, 0xCEuLL);
    v29 = 3;
    sub_1DD3CDD14(v27, v25, &qword_1ECCDB858, &qword_1DD642FE0);
    sub_1DD552F60();
    sub_1DD640C08();
    memcpy(v25, v26, 0xCEuLL);
    sub_1DD3ADFD0(v25, &qword_1ECCDB858, &qword_1DD642FE0);
  }

  return (*(v5 + 8))(v13, v3);
}

unint64_t sub_1DD552EB8()
{
  result = qword_1ECCDEA70;
  if (!qword_1ECCDEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEA70);
  }

  return result;
}

unint64_t sub_1DD552F0C()
{
  result = qword_1ECCDEA78;
  if (!qword_1ECCDEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEA78);
  }

  return result;
}

unint64_t sub_1DD552F60()
{
  result = qword_1ECCDEA80;
  if (!qword_1ECCDEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEA80);
  }

  return result;
}

uint64_t Place.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEA88, &qword_1DD65A8F8);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD3ADFA8(v34);
  memcpy(&v33[6], v34, 0xCEuLL);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1DD552EB8();
  sub_1DD640ED8();
  if (v2)
  {
    OUTLINED_FUNCTION_4_71();
    __swift_destroy_boxed_opaque_existential_1(a1);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v20 = a2;
    OUTLINED_FUNCTION_47();
    v18 = sub_1DD640AD8();
    v19 = v11;
    LOBYTE(v25) = 1;
    OUTLINED_FUNCTION_47();
    v12 = sub_1DD640AD8();
    v14 = v13;
    v17 = v12;
    LOBYTE(v23[0]) = 2;
    sub_1DD553354();
    OUTLINED_FUNCTION_47();
    sub_1DD640B18();
    v9 = v25;
    v8 = v26;
    v6 = v27;

    v35 = 3;
    sub_1DD5533A8();
    OUTLINED_FUNCTION_47();
    sub_1DD640B18();
    v15 = OUTLINED_FUNCTION_1_98();
    v16(v15);
    memcpy(v21, v24, sizeof(v21));
    memcpy(v22, &v33[6], 0xCEuLL);
    sub_1DD3ADFD0(v22, &qword_1ECCDB858, &qword_1DD642FE0);
    memcpy(&v33[6], v21, 0xCEuLL);
    v23[0] = v18;
    v23[1] = v19;
    v23[2] = v17;
    v23[3] = v14;
    v23[4] = v9;
    v23[5] = v8;
    LOWORD(v23[6]) = v6;
    memcpy(&v23[6] + 2, v33, 0xD4uLL);
    memcpy(v20, v23, 0x106uLL);
    sub_1DD5533FC(v23, &v25);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v25 = v18;
    v26 = v19;
    v27 = v17;
    v28 = v14;
  }

  v29 = v9;
  v30 = v8;
  v31 = v6;
  memcpy(v32, v33, sizeof(v32));
  return sub_1DD501494(&v25);
}

unint64_t sub_1DD553354()
{
  result = qword_1ECCDEA90;
  if (!qword_1ECCDEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEA90);
  }

  return result;
}

unint64_t sub_1DD5533A8()
{
  result = qword_1ECCDEA98;
  if (!qword_1ECCDEA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEA98);
  }

  return result;
}

uint64_t sub_1DD553470(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 262))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD5534C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 260) = 0;
    *(result + 256) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 262) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 262) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Place.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD553650()
{
  result = qword_1ECCDEAA0;
  if (!qword_1ECCDEAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEAA0);
  }

  return result;
}

unint64_t sub_1DD5536A8()
{
  result = qword_1ECCDEAA8;
  if (!qword_1ECCDEAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEAA8);
  }

  return result;
}

unint64_t sub_1DD553700()
{
  result = qword_1ECCDEAB0;
  if (!qword_1ECCDEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEAB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_68(uint64_t a1, uint64_t a2)
{

  return sub_1DD3CDD14(a1, a2, v2, v3);
}

_BYTE *storeEnumTagSinglePayload for PLUSFeature(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD553818(uint64_t a1)
{
  v3 = type metadata accessor for ContactResolverConfig(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
  }

  v7 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v7, qword_1EE16F068);
  sub_1DD554754(a1, v6, type metadata accessor for ContactResolverConfig);
  v8 = sub_1DD63F9D8();
  v9 = sub_1DD640368();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v48 = v11;
    *v10 = 136315138;
    v12 = MEMORY[0x1E12B2430](*&v6[*(v3 + 44)], MEMORY[0x1E69E6158]);
    v14 = v13;
    OUTLINED_FUNCTION_5_70();
    v15 = sub_1DD39565C(v12, v14, &v48);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1DD38D000, v8, v9, "PLUS: Here are the bundle ids: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    OUTLINED_FUNCTION_5_70();
  }

  sub_1DD558DD8(*(a1 + *(v3 + 44)), sub_1DD5543C8);
  if (!v16)
  {
    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    v23 = v21 == 0xD000000000000011 && 0x80000001DD66A780 == v22;
    if (v23 || (sub_1DD640CD8() & 1) != 0)
    {
      v17 = sub_1DD63F9D8();
      v24 = sub_1DD640368();
      if (OUTLINED_FUNCTION_29_15(v24))
      {
        v25 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_20_0(v25);
        v28 = "PLUS: isSupportedRequest - Request has matching intent";
LABEL_16:
        OUTLINED_FUNCTION_2_85(&dword_1DD38D000, v26, v27, v28);
        v19 = 0;
        goto LABEL_25;
      }

      goto LABEL_32;
    }

    v29 = v21 == 0xD000000000000013 && 0x80000001DD66CB70 == v22;
    if (v29 || (sub_1DD640CD8() & 1) != 0)
    {
      v17 = sub_1DD63F9D8();
      v30 = sub_1DD640368();
      if (OUTLINED_FUNCTION_29_15(v30))
      {
        v31 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_20_0(v31);
        v34 = "PLUS: isSupportedRequest - Request has matching intent";
LABEL_24:
        OUTLINED_FUNCTION_2_85(&dword_1DD38D000, v32, v33, v34);
        v19 = 1;
        goto LABEL_25;
      }
    }

    else
    {
      v35 = sub_1DD63F9D8();
      v36 = sub_1DD640368();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = OUTLINED_FUNCTION_9();
        *v37 = 0;
        _os_log_impl(&dword_1DD38D000, v35, v36, "PLUS: isSupportedRequest - Request does not have matching intent, falling back to search domains", v37, 2u);
        OUTLINED_FUNCTION_0_1();
      }

      v38 = *(a1 + *(v3 + 52));
      v17 = sub_1DD63F9D8();
      v39 = sub_1DD640368();
      v40 = OUTLINED_FUNCTION_29_15(v39);
      if (v38 != 4)
      {
        if (v38 != 1)
        {
          if (v40)
          {
            v43 = OUTLINED_FUNCTION_9();
            OUTLINED_FUNCTION_20_0(v43);
            OUTLINED_FUNCTION_2_85(&dword_1DD38D000, v44, v45, "PLUS: isSupportedRequest - Either unable to determine request type or request is not supported.");
            v19 = 2;
            goto LABEL_25;
          }

LABEL_38:
          v19 = 2;
          goto LABEL_39;
        }

        if (v40)
        {
          v41 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_20_0(v41);
          v28 = "PLUS: isSupportedRequest - Request has matching domain: Phone";
          goto LABEL_16;
        }

LABEL_32:
        v19 = 0;
        goto LABEL_39;
      }

      if (v40)
      {
        v42 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_20_0(v42);
        v34 = "PLUS: isSupportedRequest - Request has matching domain: Messages";
        goto LABEL_24;
      }
    }

    v19 = 1;
    goto LABEL_39;
  }

  v17 = sub_1DD63F9D8();
  v18 = sub_1DD640368();
  if (!os_log_type_enabled(v17, v18))
  {
    goto LABEL_38;
  }

  v19 = 2;
  v20 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20_0(v20);
  _os_log_impl(&dword_1DD38D000, v17, v18, "PLUS: determineIfPhoneCallRequestWithFallback - BundleIds contains 3rd party Bundle Id. Not Running PICS", v1, 2u);
LABEL_25:
  OUTLINED_FUNCTION_0_1();
LABEL_39:

  return v19;
}

uint64_t sub_1DD553C54(uint64_t a1, unsigned __int8 a2)
{
  if ((sub_1DD554444() & 1) != 0 && a2 != 2)
  {
    if (a2 <= 1u)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
      }

      v3 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v3, qword_1EE16F068);
      v4 = sub_1DD63F9D8();
      v5 = sub_1DD640368();
      if (!OUTLINED_FUNCTION_29_15(v5))
      {
        v9 = 1;
        goto LABEL_20;
      }

      v6 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v6);
      OUTLINED_FUNCTION_2_85(&dword_1DD38D000, v7, v8, "PLUS: suggestion surfacing (phoneCall & messages) enabled by default ");
      v9 = 1;
      goto LABEL_17;
    }

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v16 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v16, qword_1EE16F068);
    v4 = sub_1DD63F9D8();
    v17 = sub_1DD640368();
    if (OUTLINED_FUNCTION_29_15(v17))
    {
      v18 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v18);
      v15 = "PLUS: suggestion surfacing (phoneCall): false - request unsupported";
      goto LABEL_16;
    }

LABEL_18:
    v9 = 0;
    goto LABEL_20;
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
  }

  v10 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v10, qword_1EE16F068);
  v4 = sub_1DD63F9D8();
  v11 = sub_1DD640368();
  if (!OUTLINED_FUNCTION_29_15(v11))
  {
    goto LABEL_18;
  }

  v12 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20_0(v12);
  v15 = "PLUS: suggestion querying (all domains): false - Unsupported device or request type";
LABEL_16:
  OUTLINED_FUNCTION_2_85(&dword_1DD38D000, v13, v14, v15);
  v9 = 0;
LABEL_17:
  OUTLINED_FUNCTION_0_1();
LABEL_20:

  return v9;
}

uint64_t sub_1DD553DE8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE88, &unk_1DD64C280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - v6;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v9 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v65 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - v15;
  if ((sub_1DD553C54(0, a3) & 1) == 0)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v29 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v29, qword_1EE16F068);
    v30 = sub_1DD63F9D8();
    v31 = sub_1DD640368();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_21;
    }

    v32 = OUTLINED_FUNCTION_9();
    *v32 = 0;
    v33 = "PLUS: suggestion force prompting: false - suggestion surfacing disabled";
    v34 = v31;
    v35 = v30;
    v36 = v32;
    v37 = 2;
LABEL_20:
    _os_log_impl(&dword_1DD38D000, v35, v34, v33, v36, v37);
    OUTLINED_FUNCTION_0_1();
LABEL_21:

    return 0;
  }

  v67 = v11;
  v68 = v7;
  v17 = 0;
  v18 = *(a1 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  while (v18 != v17)
  {
    v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v21 = *(v9 + 72);
    sub_1DD554754(a1 + v20 + v21 * v17, v16, type metadata accessor for ContactMatchRuntimeData);
    v22 = &v16[*(matched + 20)];
    if (v22[*(type metadata accessor for ContactResolver.SignalSet(0) + 204)] == 1)
    {
      sub_1DD3CD200(v16, v69);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD42B564(0, *(v19 + 16) + 1, 1);
        v19 = v70;
      }

      v25 = v19;
      v26 = *(v19 + 16);
      v27 = *(v25 + 24);
      v28 = v26 + 1;
      if (v26 >= v27 >> 1)
      {
        v66 = v26 + 1;
        sub_1DD42B564(v27 > 1, v26 + 1, 1);
        v28 = v66;
        v25 = v70;
      }

      ++v17;
      *(v25 + 16) = v28;
      sub_1DD3CD200(v69, v25 + v20 + v26 * v21);
      v19 = v25;
    }

    else
    {
      OUTLINED_FUNCTION_1_99();
      sub_1DD5547B4(v16, v23);
      ++v17;
    }
  }

  if (*(v19 + 16) > 1uLL)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v38 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v38, qword_1EE16F068);

    v30 = sub_1DD63F9D8();
    v39 = sub_1DD640378();
    if (!os_log_type_enabled(v30, v39))
    {

      return 0;
    }

    v40 = swift_slowAlloc();
    *v40 = 134217984;
    v41 = *(v19 + 16);

    *(v40 + 4) = v41;

    v33 = "PLUS: suggestion force prompting: false - expected at most 1 PLUS result. Found %ld.";
    v34 = v39;
    v35 = v30;
    v36 = v40;
    v37 = 12;
    goto LABEL_20;
  }

  v43 = v68;
  sub_1DD558EE8(v19, v68);

  if (__swift_getEnumTagSinglePayload(v43, 1, matched) == 1)
  {
    sub_1DD55480C(v43);
    return 0;
  }

  v44 = v43;
  v45 = v67;
  sub_1DD3CD200(v44, v67);
  if ((*(v45 + *(matched + 36)) & 1) == 0)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v55 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v55, qword_1EE16F068);
    v56 = sub_1DD63F9D8();
    v57 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_4_0(v57))
    {
      goto LABEL_39;
    }

    *OUTLINED_FUNCTION_9() = 0;
    v60 = "PLUS: suggestion force prompting: true - suggestion will not be surfaced otherwise.";
    goto LABEL_38;
  }

  v46 = v45 + *(matched + 20);
  if (*(v46 + *(type metadata accessor for ContactResolver.SignalSet(0) + 212)) & 1) != 0 || (*(v46 + 338))
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v47 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v47, qword_1EE16F068);
    v48 = sub_1DD63F9D8();
    v49 = sub_1DD640368();
    v50 = OUTLINED_FUNCTION_4_0(v49);
    v51 = v67;
    if (v50)
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v52, v53, "PLUS: suggestion force prompting: false - PLUS suggestion does not meet criteria.");
      OUTLINED_FUNCTION_0_1();
    }

    OUTLINED_FUNCTION_1_99();
    sub_1DD5547B4(v51, v54);
    return 0;
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
  }

  v62 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v62, qword_1EE16F068);
  v56 = sub_1DD63F9D8();
  v63 = sub_1DD640368();
  v64 = OUTLINED_FUNCTION_4_0(v63);
  v45 = v67;
  if (v64)
  {
    *OUTLINED_FUNCTION_9() = 0;
    v60 = "PLUS: suggestion force prompting: true - PLUS suggestion is not confirmed and a new candidate.";
LABEL_38:
    OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v58, v59, v60);
    OUTLINED_FUNCTION_0_1();
  }

LABEL_39:

  OUTLINED_FUNCTION_1_99();
  sub_1DD5547B4(v45, v61);
  return 1;
}

BOOL sub_1DD5543C8(void *a1)
{
  sub_1DD3B52B8();
  sub_1DD3B530C();
  return (sub_1DD63FD48() & 1) == 0;
}

uint64_t sub_1DD554444()
{
  v0 = AFDeviceSupportsSiriUOD();
  if (v0)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v1 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v1, qword_1EE16F068);
    v2 = sub_1DD63F9D8();
    v3 = sub_1DD640368();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_9();
      *v4 = 0;
      v5 = "PLUS: Device and OS is supported";
LABEL_10:
      _os_log_impl(&dword_1DD38D000, v2, v3, v5, v4, 2u);
      OUTLINED_FUNCTION_0_1();
    }
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v6 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v6, qword_1EE16F068);
    v2 = sub_1DD63F9D8();
    v3 = sub_1DD640368();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_9();
      *v4 = 0;
      v5 = "PLUS: Device is not supported";
      goto LABEL_10;
    }
  }

  return v0;
}

uint64_t sub_1DD554570(char a1, char a2)
{
  if (a2 != 2)
  {
    if (sub_1DD554444())
    {
      if (a1)
      {
        if (qword_1EE165FB0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
        }

        v10 = sub_1DD63F9F8();
        OUTLINED_FUNCTION_130(v10, qword_1EE16F068);
        v3 = sub_1DD63F9D8();
        v11 = sub_1DD640368();
        if (!OUTLINED_FUNCTION_29_15(v11))
        {
          v15 = 1;
          goto LABEL_23;
        }

        v12 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_20_0(v12);
        OUTLINED_FUNCTION_2_85(&dword_1DD38D000, v13, v14, "PLUS:  SiriVocab suggestion querying (all domains): true - Trial factor isPICSEnabledAtRuntimeInSiriVocab");
        v15 = 1;
        goto LABEL_21;
      }

      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
      }

      v19 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v19, qword_1EE16F068);
      v3 = sub_1DD63F9D8();
      v20 = sub_1DD640368();
      if (OUTLINED_FUNCTION_29_15(v20))
      {
        v21 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_20_0(v21);
        v8 = "PLUS:  SiriVocab suggestion querying (all domains): false - Trial factor isPICSEnabledAtRuntimeInSiriVocab";
        goto LABEL_20;
      }
    }

    else
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
      }

      v16 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v16, qword_1EE16F068);
      v3 = sub_1DD63F9D8();
      v17 = sub_1DD640368();
      if (OUTLINED_FUNCTION_29_15(v17))
      {
        v18 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_20_0(v18);
        v8 = "PLUS:  SiriVocab suggestion querying (all domains): false - Unsupported device";
        goto LABEL_20;
      }
    }

LABEL_22:
    v15 = 0;
    goto LABEL_23;
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
  }

  v2 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v2, qword_1EE16F068);
  v3 = sub_1DD63F9D8();
  v4 = sub_1DD640368();
  if (!OUTLINED_FUNCTION_29_15(v4))
  {
    goto LABEL_22;
  }

  v5 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20_0(v5);
  v8 = "PLUS: SiriVocab suggestion querying (all domains): false - Unsupported request type";
LABEL_20:
  OUTLINED_FUNCTION_2_85(&dword_1DD38D000, v6, v7, v8);
  v15 = 0;
LABEL_21:
  OUTLINED_FUNCTION_0_1();
LABEL_23:

  return v15;
}

uint64_t sub_1DD554754(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD5547B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD55480C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE88, &unk_1DD64C280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD554874@<X0>(const void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v100 = a4;
  LODWORD(v97) = a2;
  sub_1DD63F8B8();
  OUTLINED_FUNCTION_0();
  v95 = v7;
  v96 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v94 = v9 - v8;
  v88 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v93 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v87 = v13 - v12;
  v91 = sub_1DD63F8A8();
  OUTLINED_FUNCTION_0();
  *&v90 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = sub_1DD63E428();
  OUTLINED_FUNCTION_0();
  v89 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  MEMORY[0x1EEE9AC00](v101);
  v98 = &v84 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEAB8, &qword_1DD65B2B0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v84 - v27;
  v29 = sub_1DD63F8F8();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  v92 = &v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v84 - v35;
  v37 = a1;
  v38 = a1;
  v39 = v99;
  sub_1DD559484(v38, v99, *(v4 + 40), v28);
  v40 = v29;
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_1DD3ADFD0(v28, &qword_1ECCDEAB8, &qword_1DD65B2B0);
    return __swift_storeEnumTagSinglePayload(v100, 1, 1, v101);
  }

  (*(v31 + 32))(v36, v28, v29);
  v41 = sub_1DD553818(v39);
  v42 = v31;
  if ((sub_1DD553C54(v97 & 1, v41) & 1) == 0)
  {
    (*(v31 + 8))(v36, v40);
    return __swift_storeEnumTagSinglePayload(v100, 1, 1, v101);
  }

  v86 = v40;
  v43 = v98;
  sub_1DD4BF298(v37, v98);
  v44 = v89;
  (v89[13])(v24, *MEMORY[0x1E69D1AE8], v19);
  v45 = v36;
  v46 = sub_1DD63E418();
  v99 = v47;
  v48 = (v44[1])(v24, v19);
  MEMORY[0x1E12B1BD0](v48);
  v49 = sub_1DD63F898();
  v51 = v50;
  (*(v90 + 8))(v18, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBDD8, &unk_1DD65AB80);
  v52 = swift_allocObject();
  v90 = xmmword_1DD643F90;
  *(v52 + 16) = xmmword_1DD643F90;
  *(v52 + 32) = 1;
  v53 = v99;
  *(v52 + 40) = v46;
  *(v52 + 48) = v53;
  *(v52 + 56) = v49;
  *(v52 + 64) = v51;
  *(v52 + 72) = 0x3FF0000000000000;

  *(v43 + 240) = v52;
  v54 = v43 + *(v101 + 36);
  v91 = type metadata accessor for ContactResolver.SignalSet(0);
  v55 = *(v91 + 204);
  v97 = v54;
  *(v54 + v55) = 1;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v56 = sub_1DD63F9F8();
  __swift_project_value_buffer(v56, qword_1EE16F068);
  v57 = *(v42 + 16);
  v99 = v45;
  v58 = v86;
  v57(v92, v45, v86);
  v59 = sub_1DD63F9D8();
  v60 = sub_1DD640368();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v102 = v89;
    *v61 = 136315138;
    v62 = v87;
    sub_1DD63F8D8();
    sub_1DD3BB588();
    v63 = v88;
    v85 = sub_1DD640CB8();
    v65 = v64;
    (*(v93 + 8))(v62, v63);
    v66 = OUTLINED_FUNCTION_2_86();
    v67(v66);
    v68 = sub_1DD39565C(v85, v65, &v102);

    *(v61 + 4) = v68;
    _os_log_impl(&dword_1DD38D000, v59, v60, "Setting plusSuggestionId %s", v61, 0xCu);
    v69 = v89;
    __swift_destroy_boxed_opaque_existential_1(v89);
    MEMORY[0x1E12B3DA0](v69, -1, -1);
    MEMORY[0x1E12B3DA0](v61, -1, -1);
  }

  else
  {

    v71 = OUTLINED_FUNCTION_2_86();
    v72(v71);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC60, &qword_1DD664BC0);
  v73 = swift_allocObject();
  *(v73 + 16) = v90;
  v74 = v99;
  sub_1DD63F8D8();
  v75 = v91;
  v76 = *(v91 + 208);
  v77 = v97;

  *(v77 + v76) = v73;
  sub_1DD63F8E8();
  v79 = v94;
  v78 = v95;
  v80 = v96;
  (*(v95 + 104))(v94, *MEMORY[0x1E69D27A8], v96);
  v81 = sub_1DD47ED70();

  (*(v78 + 8))(v79, v80);
  (v92)(v74, v58);
  *(v77 + *(v75 + 212)) = v81 & 1;
  v82 = v98;
  v83 = v100;
  sub_1DD4BF298(v98, v100);
  __swift_storeEnumTagSinglePayload(v83, 0, 1, v101);
  return sub_1DD3ADFD0(v82, &qword_1ECCDBC18, &unk_1DD6459A0);
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningInference41PlusContactSuggestionStoreRuntimeQuerying_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1DD555084()
{
  result = qword_1ECCDEAC0;
  if (!qword_1ECCDEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEAC0);
  }

  return result;
}

uint64_t sub_1DD5550D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001DD672C50 == a2;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001DD672C70 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726F707075736E75 && a2 == 0xEB00000000646574)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD5551F8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x726F707075736E75;
}

uint64_t sub_1DD555264(void *a1, int a2)
{
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEAF8, &qword_1DD65AD00);
  OUTLINED_FUNCTION_0();
  v31 = v4;
  v32 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB00, &qword_1DD65AD08);
  OUTLINED_FUNCTION_0();
  v28 = v8;
  v29 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB08, &qword_1DD65AD10);
  OUTLINED_FUNCTION_0();
  v27 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB10, &qword_1DD65AD18);
  OUTLINED_FUNCTION_0();
  v19 = v18;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v26 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD555D6C();
  sub_1DD640EF8();
  v23 = (v19 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      v35 = 1;
      sub_1DD555E14();
      OUTLINED_FUNCTION_5_71(&type metadata for PLUSRequestSupportStatus.SupportedMessagesCodingKeys, &v35);
      (*(v28 + 8))(v11, v29);
    }

    else
    {
      v36 = 2;
      sub_1DD555DC0();
      v24 = v30;
      OUTLINED_FUNCTION_5_71(&type metadata for PLUSRequestSupportStatus.UnsupportedCodingKeys, &v36);
      (*(v31 + 8))(v24, v32);
    }
  }

  else
  {
    v34 = 0;
    sub_1DD555E68();
    OUTLINED_FUNCTION_5_71(&type metadata for PLUSRequestSupportStatus.SupportedPhoneCallCodingKeys, &v34);
    (*(v27 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

uint64_t sub_1DD555580(void *a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEAC8, &qword_1DD65ACD8);
  OUTLINED_FUNCTION_0();
  v60 = v2;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v52 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEAD0, &qword_1DD65ACE0);
  OUTLINED_FUNCTION_0();
  v57 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEAD8, &qword_1DD65ACE8);
  OUTLINED_FUNCTION_0();
  v56 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEAE0, &unk_1DD65ACF0);
  OUTLINED_FUNCTION_0();
  v61 = v15;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v16);
  v17 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1DD555D6C();
  v18 = v63;
  sub_1DD640ED8();
  if (v18)
  {
    goto LABEL_12;
  }

  v52 = v9;
  v53 = v13;
  v54 = v8;
  v55 = 0;
  v19 = v62;
  v63 = a1;
  sub_1DD640B98();
  result = sub_1DD418088();
  v17 = v14;
  if (v22 == v23 >> 1)
  {
    goto LABEL_10;
  }

  if (v22 < (v23 >> 1))
  {
    v24 = v14;
    v25 = *(v21 + v22);
    v26 = sub_1DD41805C();
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    v31 = v59;
    v32 = v60;
    if (v28 == v30 >> 1)
    {
      v17 = v25;
      if (v25)
      {
        v56 = v26;
        v33 = v55;
        if (v25 == 1)
        {
          v65 = 1;
          sub_1DD555E14();
          v34 = v54;
          OUTLINED_FUNCTION_2_87();
          sub_1DD640AB8();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v57 + 8))(v34, v31);
            v35 = OUTLINED_FUNCTION_4_72();
            v36(v35);
LABEL_21:
            __swift_destroy_boxed_opaque_existential_1(v63);
            return v17;
          }
        }

        else
        {
          LODWORD(v59) = v25;
          v66 = 2;
          sub_1DD555DC0();
          v17 = v58;
          OUTLINED_FUNCTION_2_87();
          sub_1DD640AB8();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v32 + 8))(v17, v19);
            v50 = OUTLINED_FUNCTION_4_72();
            v51(v50);
            v17 = v59;
            goto LABEL_21;
          }
        }

        v46 = OUTLINED_FUNCTION_4_72();
        v47(v46);
      }

      else
      {
        v64 = 0;
        sub_1DD555E68();
        v42 = v53;
        OUTLINED_FUNCTION_2_87();
        v43 = v55;
        sub_1DD640AB8();
        if (!v43)
        {
          swift_unknownObjectRelease();
          (*(v56 + 8))(v42, v52);
          v48 = OUTLINED_FUNCTION_3_69();
          v49(v48, v24);
          goto LABEL_21;
        }

        v44 = OUTLINED_FUNCTION_3_69();
        v45(v44, v24);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v24;
LABEL_10:
    v37 = sub_1DD640938();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5C8, &qword_1DD6559A0);
    *v39 = &type metadata for PLUSRequestSupportStatus;
    sub_1DD640AC8();
    sub_1DD640928();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = OUTLINED_FUNCTION_3_69();
    v41(v40, v17);
LABEL_11:
    a1 = v63;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD555B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5550D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD555B44(uint64_t a1)
{
  v2 = sub_1DD555D6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD555B80(uint64_t a1)
{
  v2 = sub_1DD555D6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD555BBC(uint64_t a1)
{
  v2 = sub_1DD555E14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD555BF8(uint64_t a1)
{
  v2 = sub_1DD555E14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD555C34(uint64_t a1)
{
  v2 = sub_1DD555E68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD555C70(uint64_t a1)
{
  v2 = sub_1DD555E68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD555CAC(uint64_t a1)
{
  v2 = sub_1DD555DC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD555CE8(uint64_t a1)
{
  v2 = sub_1DD555DC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD555D24@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD555580(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1DD555D6C()
{
  result = qword_1EE164008[0];
  if (!qword_1EE164008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE164008);
  }

  return result;
}

unint64_t sub_1DD555DC0()
{
  result = qword_1ECCDEAE8;
  if (!qword_1ECCDEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEAE8);
  }

  return result;
}

unint64_t sub_1DD555E14()
{
  result = qword_1ECCDEAF0;
  if (!qword_1ECCDEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEAF0);
  }

  return result;
}

unint64_t sub_1DD555E68()
{
  result = qword_1EE163FD0;
  if (!qword_1EE163FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FD0);
  }

  return result;
}

_BYTE *sub_1DD555EBC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD555FCC()
{
  result = qword_1ECCDEB18;
  if (!qword_1ECCDEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEB18);
  }

  return result;
}

unint64_t sub_1DD556024()
{
  result = qword_1EE163FC0;
  if (!qword_1EE163FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FC0);
  }

  return result;
}

unint64_t sub_1DD55607C()
{
  result = qword_1EE163FC8;
  if (!qword_1EE163FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FC8);
  }

  return result;
}

unint64_t sub_1DD5560D4()
{
  result = qword_1EE163FD8;
  if (!qword_1EE163FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FD8);
  }

  return result;
}

unint64_t sub_1DD55612C()
{
  result = qword_1EE163FE0;
  if (!qword_1EE163FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FE0);
  }

  return result;
}

unint64_t sub_1DD556184()
{
  result = qword_1EE163FE8;
  if (!qword_1EE163FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FE8);
  }

  return result;
}

unint64_t sub_1DD5561DC()
{
  result = qword_1EE163FF0;
  if (!qword_1EE163FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FF0);
  }

  return result;
}

unint64_t sub_1DD556234()
{
  result = qword_1EE163FF8;
  if (!qword_1EE163FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FF8);
  }

  return result;
}

unint64_t sub_1DD55628C()
{
  result = qword_1EE164000;
  if (!qword_1EE164000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE164000);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PLUSRunTimeData(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[5])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PLUSRunTimeData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

BOOL sub_1DD5563A8(unint64_t a1, unint64_t a2)
{
  v2 = ((a1 >> 24) & 1) == ((a2 >> 24) & 1) && ((a1 ^ a2) & 0xFF00000000) == 0;
  v3 = ((a1 >> 16) & 1) == ((a2 >> 16) & 1) && v2;
  if ((a1 ^ a2))
  {
    v3 = 0;
  }

  return ((a1 >> 8) & 1) == ((a2 >> 8) & 1) && v3;
}

uint64_t sub_1DD5563F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001DD672C90 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DD672CB0 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001DD672CD0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001DD672CF0 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000018 && 0x80000001DD672D10 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD640CD8();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1DD55659C(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD556628(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB28, &qword_1DD65B120);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD556C44();
  sub_1DD640EF8();
  v12[15] = 0;
  OUTLINED_FUNCTION_10();
  sub_1DD640C28();
  if (!v2)
  {
    v12[14] = BYTE1(a2) & 1;
    v12[13] = 1;
    sub_1DD556D40();
    OUTLINED_FUNCTION_10();
    sub_1DD640C68();
    v12[12] = 2;
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    v12[11] = 3;
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    v12[10] = BYTE4(a2);
    v12[9] = 4;
    sub_1DD556D94();
    OUTLINED_FUNCTION_10();
    sub_1DD640C68();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1DD556800(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB20, &qword_1DD65B118);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD556C44();
  sub_1DD640ED8();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  OUTLINED_FUNCTION_13();
  v9 = sub_1DD640B38();
  v24 = 1;
  sub_1DD556C98();
  OUTLINED_FUNCTION_13();
  sub_1DD640B78();
  v10 = v25;
  v23 = 2;
  OUTLINED_FUNCTION_13();
  v11 = sub_1DD640B38();
  v22 = 3;
  OUTLINED_FUNCTION_13();
  v19 = sub_1DD640B38();
  v20 = 4;
  sub_1DD556CEC();
  OUTLINED_FUNCTION_13();
  sub_1DD640B78();
  (*(v5 + 8))(v8, v3);
  v13 = v21;
  __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = 0x1000000;
  if ((v19 & 1) == 0)
  {
    v14 = 0;
  }

  v15 = v14 | (v13 << 32);
  v16 = 0x10000;
  if ((v11 & 1) == 0)
  {
    v16 = 0;
  }

  v17 = 256;
  if (!v10)
  {
    v17 = 0;
  }

  return (v15 | v16 | v17) & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
}

uint64_t sub_1DD556A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5563F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD556A94(uint64_t a1)
{
  v2 = sub_1DD556C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD556AD0(uint64_t a1)
{
  v2 = sub_1DD556C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD556B0C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD556800(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
    a2[2] = BYTE2(result) & 1;
    a2[3] = BYTE3(result) & 1;
    a2[4] = BYTE4(result);
  }

  return result;
}

uint64_t sub_1DD556B5C(void *a1)
{
  v2 = 0x1000000;
  if (!v1[3])
  {
    v2 = 0;
  }

  v3 = v2 | (v1[4] << 32);
  v4 = 0x10000;
  if (!v1[2])
  {
    v4 = 0;
  }

  v5 = 256;
  if (!v1[1])
  {
    v5 = 0;
  }

  return sub_1DD556628(a1, v3 | v4 | v5 | *v1);
}

BOOL sub_1DD556BBC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[4];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = 0x1000000;
  if (a1[3])
  {
    v12 = 0x1000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 | (v5 << 32);
  v14 = v4 == 0;
  v15 = 0x10000;
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0x10000;
  }

  v14 = v3 == 0;
  v17 = 256;
  if (v14)
  {
    v18 = 0;
  }

  else
  {
    v18 = 256;
  }

  v19 = v16 | v18 | v2;
  if (!v9)
  {
    v11 = 0;
  }

  v20 = v11 | (v10 << 32);
  if (!v8)
  {
    v15 = 0;
  }

  if (!v7)
  {
    v17 = 0;
  }

  return sub_1DD5563A8(v13 | v19, v20 | v15 | v17 | v6);
}

unint64_t sub_1DD556C44()
{
  result = qword_1EE165660;
  if (!qword_1EE165660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165660);
  }

  return result;
}

unint64_t sub_1DD556C98()
{
  result = qword_1EE1627D8[0];
  if (!qword_1EE1627D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1627D8);
  }

  return result;
}

unint64_t sub_1DD556CEC()
{
  result = qword_1EE161638[0];
  if (!qword_1EE161638[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE161638);
  }

  return result;
}

unint64_t sub_1DD556D40()
{
  result = qword_1EE165570;
  if (!qword_1EE165570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165570);
  }

  return result;
}

unint64_t sub_1DD556D94()
{
  result = qword_1EE163FB8;
  if (!qword_1EE163FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163FB8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PLUSRunTimeData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD556EC8()
{
  result = qword_1ECCDEB30;
  if (!qword_1ECCDEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEB30);
  }

  return result;
}

unint64_t sub_1DD556F20()
{
  result = qword_1EE165650;
  if (!qword_1EE165650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165650);
  }

  return result;
}

unint64_t sub_1DD556F78()
{
  result = qword_1EE165658;
  if (!qword_1EE165658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165658);
  }

  return result;
}

uint64_t sub_1DD556FCC()
{
  v1 = v0;
  v2 = type metadata accessor for Contact(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v14 - v8);
  sub_1DD4279B8(v1, &v14 - v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = MEMORY[0x1E69E7CC0];
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v11 = *v9;
      break;
    case 3:
      return v11;
    default:
      sub_1DD558ABC(v9, v6, type metadata accessor for Contact);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD58, &unk_1DD649DD0);
      v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1DD643F90;
      sub_1DD558ABC(v6, v11 + v12, type metadata accessor for Contact);
      break;
  }

  return v11;
}

void sub_1DD557178(uint64_t a1)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  v189 = v3;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v163 - v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_18_0();
  v186 = v8;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v9);
  v192 = &v163 - v10;
  v11 = type metadata accessor for ContactResolverRunTimeData(0);
  OUTLINED_FUNCTION_0();
  v188 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  v187 = v14;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_0();
  v184 = v16;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_0();
  v183 = v18;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_0();
  v191 = v20;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v163 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  MEMORY[0x1EEE9AC00](v24 - 8);
  OUTLINED_FUNCTION_2_1();
  v185 = v25;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v163 - v27;
  v194 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  v190 = v32;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v33);
  v193 = &v163 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB38, &unk_1DD65B240);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v163 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v163 - v39;
  sub_1DD558F14(a1, &v163 - v39);
  if (__swift_getEnumTagSinglePayload(v40, 1, v11) == 1)
  {
    sub_1DD390754(v40, &qword_1ECCDEB38, &unk_1DD65B240);
    goto LABEL_4;
  }

  v182 = v23;
  v41 = v40[*(v11 + 64) + 4];
  OUTLINED_FUNCTION_0_114();
  sub_1DD558A64(v40, v42);
  if (v41 == 2)
  {
LABEL_4:
    if (qword_1EE165FB0 == -1)
    {
LABEL_5:
      v43 = sub_1DD63F9F8();
      __swift_project_value_buffer(v43, qword_1EE16F068);
      v44 = sub_1DD63F9D8();
      v45 = sub_1DD640368();
      if (!OUTLINED_FUNCTION_9_0(v45))
      {
LABEL_8:

        return;
      }

      *OUTLINED_FUNCTION_9() = 0;
      v48 = "PLUS: PLUS was disabled for this request. No PLUS SELF messages will be emitted.";
LABEL_7:
      OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v46, v47, v48);
      OUTLINED_FUNCTION_0_1();
      goto LABEL_8;
    }

LABEL_61:
    OUTLINED_FUNCTION_0_2();
    swift_once();
    goto LABEL_5;
  }

  sub_1DD558F14(a1, v37);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v11);
  v180 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD390754(v37, &qword_1ECCDEB38, &unk_1DD65B240);
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v52 = &v37[*(v11 + 68)];
    v50 = *v52;
    v51 = v52[1];

    OUTLINED_FUNCTION_0_114();
    sub_1DD558A64(v37, v53);
  }

  sub_1DD5581A8(v50, v51, v28);

  v54 = v194;
  if (__swift_getEnumTagSinglePayload(v28, 1, v194) == 1)
  {
    sub_1DD390754(v28, &qword_1ECCDBAC8, &qword_1DD643E60);
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v55 = sub_1DD63F9F8();
    __swift_project_value_buffer(v55, qword_1EE16F068);
    v44 = sub_1DD63F9D8();
    v56 = sub_1DD640378();
    if (!OUTLINED_FUNCTION_9_0(v56))
    {
      goto LABEL_8;
    }

    *OUTLINED_FUNCTION_9() = 0;
    v48 = "PLUS: Unable to extract plusId - not logging to SELF";
    goto LABEL_7;
  }

  v176 = *(v30 + 32);
  v177 = v30 + 32;
  v176(v193, v28, v54);
  sub_1DD63F888();
  sub_1DD63F958();
  swift_allocObject();
  v57 = sub_1DD63F948();
  v175 = *(a1 + 16);
  if (v175)
  {
    v59 = a1 + ((*(v188 + 80) + 32) & ~*(v188 + 80));
    v60 = 0;
    v178 = (v30 + 8);
    v179 = v57;
    v61 = *(v188 + 72);
    *&v58 = 136315138;
    v174 = v58;
    *&v58 = 67109376;
    v169 = v58;
    *&v58 = 136315394;
    v168 = v58;
    v62 = v182;
    v171 = v61;
    v172 = v59;
LABEL_19:
    v181 = v60;
    OUTLINED_FUNCTION_3_70();
    sub_1DD558A04(v63, v62, v64);
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v65 = sub_1DD63F9F8();
    v188 = __swift_project_value_buffer(v65, qword_1EE16F068);
    v66 = sub_1DD63F9D8();
    v67 = sub_1DD640368();
    if (OUTLINED_FUNCTION_2_4(v67))
    {
      v68 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_10_43(v68);
      OUTLINED_FUNCTION_20_29(&dword_1DD38D000, v66, v69, "PLUS: Logging PlusContactSuggesterRequestMetadata to SELF");
      OUTLINED_FUNCTION_0_1();
    }

    sub_1DD63F908();
    OUTLINED_FUNCTION_3_70();
    v70 = v191;
    sub_1DD558A04(v62, v191, v71);
    v72 = sub_1DD63F9D8();
    v73 = sub_1DD640368();
    if (os_log_type_enabled(v72, v73))
    {
      v173 = v73;
      v74 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v197 = v170;
      v75 = v74;
      *v74 = v174;
      memcpy(v198, v70, sizeof(v198));
      memcpy(v196, v70, sizeof(v196));
      sub_1DD3C9478(v198, v199);
      LOBYTE(v74) = ContactQuery.toUsoPerson()();
      memcpy(v199, v196, 0x108uLL);
      sub_1DD3C9580(v199);
      v77 = sub_1DD632A44(v74);
      v79 = v78;

      OUTLINED_FUNCTION_0_114();
      sub_1DD558A64(v191, v80);
      v81 = sub_1DD39565C(v77, v79, &v197);

      *(v75 + 1) = v81;
      _os_log_impl(&dword_1DD38D000, v72, v173, "PLUS: USO used was: %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v170);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      OUTLINED_FUNCTION_0_114();
      sub_1DD558A64(v70, v76);
    }

    v82 = 0;
    ++v181;
    v83 = *(v62 + 296);
    v84 = *(v83 + 16);
    while (1)
    {
      if (v84 == v82)
      {
        OUTLINED_FUNCTION_3_70();
        v139 = v182;
        v140 = v187;
        sub_1DD558A04(v182, v187, v141);
        v142 = v188;
        v143 = sub_1DD63F9D8();
        v144 = sub_1DD640368();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v198[0] = v146;
          *v145 = v174;
          memcpy(v199, v140, 0x108uLL);
          sub_1DD41E024();
          v142 = v147;
          v148 = MEMORY[0x1E12B2430]();
          v150 = v149;

          OUTLINED_FUNCTION_8_54();
          sub_1DD558A64(v140, v151);
          v152 = sub_1DD39565C(v148, v150, v198);

          *(v145 + 4) = v152;
          _os_log_impl(&dword_1DD38D000, v143, v144, "PLUS: No match. Fields were %s", v145, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v146);
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_0_1();

          (*v178)(v193, v194);
        }

        else
        {

          (*v178)(v193, v194);
          OUTLINED_FUNCTION_8_54();
          sub_1DD558A64(v140, v153);
        }

        v154 = v139;
        v155 = v142;
LABEL_56:
        sub_1DD558A64(v154, v155);
        return;
      }

      if (v82 >= *(v83 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_7_51();
      sub_1DD558A04(v85, v6, v86);
      v87 = &v6[*(matched + 20)];
      v88 = type metadata accessor for ContactResolver.SignalSet(0);
      if (v87[*(v88 + 204)])
      {
        v90 = v88;
        v91 = v186;
        sub_1DD558ABC(v6, v186, type metadata accessor for ContactMatchRuntimeData);
        v92 = v192;
        sub_1DD558ABC(v91, v192, type metadata accessor for ContactMatchRuntimeData);
        v93 = v92 + *(matched + 20);
        v94 = v185;
        sub_1DD558F40(*(v93 + *(v90 + 208)), v185);
        v95 = v194;
        if (__swift_getEnumTagSinglePayload(v94, 1, v194) == 1)
        {
          sub_1DD390754(v94, &qword_1ECCDBAC8, &qword_1DD643E60);
          v156 = sub_1DD63F9D8();
          v157 = sub_1DD640378();
          v158 = OUTLINED_FUNCTION_9_0(v157);
          v159 = v182;
          if (v158)
          {
            *OUTLINED_FUNCTION_9() = 0;
            OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v160, v161, "PLUS: Unable to extract suggestionId - not logging to SELF");
            OUTLINED_FUNCTION_0_1();
          }

          (*v178)(v193, v95);
          OUTLINED_FUNCTION_0_114();
          sub_1DD558A64(v159, v162);
          OUTLINED_FUNCTION_1_100();
          v154 = v192;
          goto LABEL_56;
        }

        v176(v190, v94, v95);
        v96 = sub_1DD556FCC();
        MEMORY[0x1EEE9AC00](v96);
        *(&v163 - 2) = v92;
        v97 = sub_1DD450608(sub_1DD551BDC, (&v163 - 4), v96);

        if ((*(v93 + 338) & 1) != 0 || *(v93 + *(v90 + 216)) == 1)
        {
          v173 = *(v192 + *(matched + 36));
        }

        else
        {
          v173 = 0;
        }

        v98 = sub_1DD63F9D8();
        v99 = sub_1DD640368();
        v100 = OUTLINED_FUNCTION_2_4(v99);
        v62 = v182;
        if (v100)
        {
          v101 = swift_slowAlloc();
          *v101 = v169;
          *(v101 + 4) = v97;
          *(v101 + 8) = 1024;
          *(v101 + 10) = v173;
          _os_log_impl(&dword_1DD38D000, v98, v90, "PLUS suggestion In Model Output: %{BOOL}d\n\nPLUS suggestion already exists: %{BOOL}d", v101, 0xEu);
          OUTLINED_FUNCTION_0_1();
        }

        OUTLINED_FUNCTION_3_70();
        v102 = v183;
        sub_1DD558A04(v62, v183, v103);
        OUTLINED_FUNCTION_7_51();
        v104 = v189;
        sub_1DD558A04(v192, v189, v105);
        v106 = sub_1DD63F9D8();
        LODWORD(v170) = sub_1DD640368();
        if (OUTLINED_FUNCTION_9_0(v170))
        {
          v164 = v106;
          v165 = v97;
          v107 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          v198[0] = v163;
          *v107 = v168;
          memcpy(v199, v102, 0x108uLL);
          sub_1DD41E024();
          v108 = MEMORY[0x1E12B2430]();
          v110 = v109;

          OUTLINED_FUNCTION_0_114();
          sub_1DD558A64(v102, v111);
          v112 = sub_1DD39565C(v108, v110, v198);

          *(v107 + 4) = v112;
          *(v107 + 12) = 2080;
          v115 = sub_1DD632B84();
          v117 = v116;
          v60 = v181;
          OUTLINED_FUNCTION_1_100();
          sub_1DD558A64(v189, v118);
          v119 = sub_1DD39565C(v115, v117, v198);

          *(v107 + 14) = v119;
          v120 = v164;
          _os_log_impl(&dword_1DD38D000, v164, v170, "PLUS: match - Fields used were %s\nPLUS: match - Suggestion was: %s", v107, 0x16u);
          v104 = v163;
          swift_arrayDestroy();
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_0_1();

          v62 = v182;
        }

        else
        {

          OUTLINED_FUNCTION_1_100();
          sub_1DD558A64(v104, v113);
          OUTLINED_FUNCTION_0_114();
          sub_1DD558A64(v102, v114);
          v60 = v181;
        }

        v121 = sub_1DD63F9D8();
        v122 = sub_1DD640368();
        if (OUTLINED_FUNCTION_2_4(v122))
        {
          v123 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_10_43(v123);
          OUTLINED_FUNCTION_20_29(&dword_1DD38D000, v121, v124, "PLUS: Logging ContactSuggesterSuggestionMetadata to SELF");
          OUTLINED_FUNCTION_13_39();
        }

        sub_1DD63F918();
        v125 = sub_1DD63F9D8();
        v126 = sub_1DD640368();
        if (OUTLINED_FUNCTION_2_4(v126))
        {
          v127 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_10_43(v127);
          OUTLINED_FUNCTION_20_29(&dword_1DD38D000, v125, v128, "PLUS: Logging PICSRuntimeMetrics to CoreAnalytics");
          OUTLINED_FUNCTION_13_39();
        }

        OUTLINED_FUNCTION_3_70();
        v129 = v184;
        sub_1DD558A04(v62, v184, v130);
        sub_1DD551900(v129);
        if (v133)
        {
          v166 = v134 & 0x10101 | v166 & 0xFF000000;
          v167 = v131 & 0x10101 | v167 & 0xFF000000;
          sub_1DD5CDEE0(v167, v132, v133, v166);
          v136 = OUTLINED_FUNCTION_9_47();
          v104(v136);
        }

        else
        {
          v135 = OUTLINED_FUNCTION_9_47();
          v104(v135);
        }

        OUTLINED_FUNCTION_0_114();
        sub_1DD558A64(v62, v137);
        OUTLINED_FUNCTION_1_100();
        sub_1DD558A64(v192, v138);
        if (v60 == v175)
        {

          v54 = v194;
          goto LABEL_53;
        }

        goto LABEL_19;
      }

      ++v82;
      OUTLINED_FUNCTION_1_100();
      sub_1DD558A64(v6, v89);
    }

    __break(1u);
    goto LABEL_61;
  }

  v104 = *(v30 + 8);
LABEL_53:
  (v104)(v193, v54);
}

uint64_t sub_1DD5581A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26[-1] - v7;
  v9 = sub_1DD63D0F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1DD63D088();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1DD390754(v8, &qword_1ECCDBAC8, &qword_1DD643E60);
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v13 = sub_1DD63F9F8();
      __swift_project_value_buffer(v13, qword_1EE16F068);

      v14 = sub_1DD63F9D8();
      v15 = sub_1DD640378();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v26[0] = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_1DD39565C(a1, a2, v26);
        _os_log_impl(&dword_1DD38D000, v14, v15, "PLUS: Unable to convert requestId %s to UUID. Not logging to SELF", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x1E12B3DA0](v17, -1, -1);
        MEMORY[0x1E12B3DA0](v16, -1, -1);
      }

      v18 = a3;
      v19 = 1;
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      sub_1DD63F888();
      sub_1DD63F958();
      swift_allocObject();
      sub_1DD63F948();
      sub_1DD63F928();

      (*(v10 + 8))(v12, v9);
      v18 = a3;
      v19 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v18, v19, 1, v9);
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1EE16F068);
    v21 = sub_1DD63F9D8();
    v22 = sub_1DD640378();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DD38D000, v21, v22, "PLUS: RequestId was nil. Not logging to SELF", v23, 2u);
      MEMORY[0x1E12B3DA0](v23, -1, -1);
    }

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v9);
  }
}

uint64_t sub_1DD55858C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v36 = v7;
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v35 = v9 - v8;
  v10 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE16F0C0;
  v16 = v14 + *(v10 + 20);
  *v16 = "ContactResolver.PLUS.plusId";
  *(v16 + 8) = 27;
  *(v16 + 16) = 2;
  v17 = v15;
  sub_1DD63F9B8();
  *(v14 + *(v10 + 24)) = v17;
  v17;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DD643F90;
  v19 = sub_1DD6408F8();
  v21 = v20;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1DD392BD8();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  sub_1DD63F998();

  if (!*(a1 + 16))
  {
    v22 = v37;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v29 = sub_1DD63F9F8();
    __swift_project_value_buffer(v29, qword_1EE16F068);
    v25 = sub_1DD63F9D8();
    v26 = sub_1DD640378();
    v30 = OUTLINED_FUNCTION_9_0(v26);
    v23 = v38;
    if (!v30)
    {
      goto LABEL_14;
    }

    v27 = OUTLINED_FUNCTION_9();
    *v27 = 0;
    v28 = "PLUS: Unable to extract requestId - not logging to SELF";
    goto LABEL_13;
  }

  sub_1DD63D088();
  v22 = v37;
  if (__swift_getEnumTagSinglePayload(v5, 1, v37) != 1)
  {
    v33 = v35;
    v32 = v36;
    (*(v36 + 32))(v35, v5, v22);
    sub_1DD63F958();
    v23 = v38;
    sub_1DD63F938();
    (*(v32 + 8))(v33, v22);
    v31 = 0;
    goto LABEL_16;
  }

  sub_1DD390754(v5, &qword_1ECCDBAC8, &qword_1DD643E60);
  v23 = v38;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v24 = sub_1DD63F9F8();
  __swift_project_value_buffer(v24, qword_1EE16F068);
  v25 = sub_1DD63F9D8();
  v26 = sub_1DD640378();
  if (OUTLINED_FUNCTION_9_0(v26))
  {
    v27 = OUTLINED_FUNCTION_9();
    *v27 = 0;
    v28 = "PLUS: Unable to generate requestId UUID - not logging to SELF";
LABEL_13:
    _os_log_impl(&dword_1DD38D000, v25, v26, v28, v27, 2u);
    OUTLINED_FUNCTION_0_1();
  }

LABEL_14:

  v31 = 1;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v23, v31, 1, v22);
  sub_1DD6404C8();
  sub_1DD63F9A8();
  return sub_1DD558A64(v14, type metadata accessor for Signpost);
}

uint64_t sub_1DD558A04(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD558A64(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD558ABC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_13_39()
{

  JUMPOUT(0x1E12B3DA0);
}

uint64_t sub_1DD558B64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD558BB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1DD558C68(uint64_t a1)
{
  result = sub_1DD55ADA0(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1DD55ADFC(result, v3, 0, a1);
  }
}

uint64_t sub_1DD558CFC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  if (v7)
  {
    sub_1DD55B13C(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
  }

  v9 = OUTLINED_FUNCTION_13_40();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

unint64_t sub_1DD558DD8(uint64_t a1, uint64_t (*a2)(void *))
{
  result = sub_1DD55B0A4(a1, a2);
  v4 = *(a1 + 16);
  if (result == v4)
  {
    return OUTLINED_FUNCTION_15_0();
  }

  if (result < v4)
  {

    return OUTLINED_FUNCTION_15_0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD558E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  if (v4)
  {
    sub_1DD4B69D8(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, &qword_1ECCDBBE8, &qword_1DD644470);
  }

  v6 = OUTLINED_FUNCTION_13_40();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1DD558F58@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
  }

  v7 = OUTLINED_FUNCTION_13_40();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1DD559054(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  return OUTLINED_FUNCTION_15_0();
}

uint64_t sub_1DD5590A8()
{
  type metadata accessor for ContactResolver.SignalSet(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  v4 = v3 - v2;
  type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  sub_1DD6408D8();

  OUTLINED_FUNCTION_15_38();
  v14 = v9;
  sub_1DD55B13C(v0, v8, type metadata accessor for Contact);
  v10 = sub_1DD63FE38();
  MEMORY[0x1E12B2260](v10);

  OUTLINED_FUNCTION_14_37();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  sub_1DD55B13C(v0 + *(v11 + 36), v4, type metadata accessor for ContactResolver.SignalSet);
  v12 = sub_1DD63FE38();
  MEMORY[0x1E12B2260](v12);

  return v14;
}

uint64_t sub_1DD559214()
{
  v1 = type metadata accessor for ContactResolver.SignalSet(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1DD6408D8();

  v11 = 0x203A65756C6176;
  v12 = 0xE700000000000000;
  memcpy(v13, v0, sizeof(v13));
  memcpy(v10, v0, sizeof(v10));
  sub_1DD3C9478(v13, &v9);
  v4 = sub_1DD63FE38();
  MEMORY[0x1E12B2260](v4);

  MEMORY[0x1E12B2260](0x736C616E6769730ALL, 0xEA0000000000203ALL);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  sub_1DD55B13C(v0 + *(v5 + 36), v3, type metadata accessor for ContactResolver.SignalSet);
  v6 = sub_1DD63FE38();
  MEMORY[0x1E12B2260](v6);

  return v11;
}

uint64_t sub_1DD5593B0()
{
  *&v6 = 0;
  *(&v6 + 1) = 0xE000000000000000;
  sub_1DD6408D8();

  OUTLINED_FUNCTION_15_38();
  v8 = v1;
  v9 = v2;
  memcpy(__dst, v0, sizeof(__dst));
  sub_1DD4B69D8(v0, &v6, &qword_1ECCDEB48, &unk_1DD65B2C0);
  v3 = sub_1DD63FE38();
  MEMORY[0x1E12B2260](v3);

  OUTLINED_FUNCTION_14_37();
  v6 = v0[8];
  v4 = sub_1DD63FE38();
  MEMORY[0x1E12B2260](v4);

  return v8;
}

uint64_t sub_1DD559484@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v156 = a2;
  v157 = a3;
  v165 = a1;
  v167 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  OUTLINED_FUNCTION_3(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_3();
  v155 = v6;
  OUTLINED_FUNCTION_6_2();
  sub_1DD63F8A8();
  OUTLINED_FUNCTION_0();
  v151 = v8;
  v152 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v150 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEAB8, &qword_1DD65B2B0);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_3();
  v154 = v13;
  OUTLINED_FUNCTION_6_2();
  v169 = sub_1DD63F8F8();
  OUTLINED_FUNCTION_0();
  v163 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v153 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v18);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_7_3();
  v161 = v20;
  OUTLINED_FUNCTION_6_2();
  v168 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v158 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2();
  v164 = v24 - v23;
  v25 = OUTLINED_FUNCTION_6_2();
  v26 = type metadata accessor for Signpost(v25);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v27);
  v171 = &v150 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v172 = &v150 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v150 - v32;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2(&qword_1EE166460);
  }

  v34 = qword_1EE16F0C0;
  v35 = &v33[*(v26 + 20)];
  *v35 = "ContactResolver.PLUS.QueryExpander.Handle";
  *(v35 + 1) = 41;
  v35[16] = 2;
  v36 = v34;
  sub_1DD63F9B8();
  *&v33[*(v26 + 24)] = v36;
  v37 = v36;
  sub_1DD6404D8();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v39 = OUTLINED_FUNCTION_12_6(v38);
  v170 = xmmword_1DD643F90;
  *(v39 + 16) = xmmword_1DD643F90;
  v40 = sub_1DD6408F8();
  v42 = v41;
  *(v39 + 56) = MEMORY[0x1E69E6158];
  v43 = sub_1DD392BD8();
  *(v39 + 64) = v43;
  *(v39 + 32) = v40;
  *(v39 + 40) = v42;
  OUTLINED_FUNCTION_22_27();
  v166 = v33;
  sub_1DD63F998();

  v44 = v172;
  v45 = v172 + *(v26 + 20);
  *v45 = "ContactResolver.PLUS.QueryExpander.USOMap";
  *(v45 + 8) = 41;
  *(v45 + 16) = 2;
  v46 = v37;
  sub_1DD63F9B8();
  v160 = v26;
  *(v44 + *(v26 + 24)) = v46;
  v47 = v46;
  sub_1DD6404D8();
  v159 = v38;
  v48 = OUTLINED_FUNCTION_12_6(v38);
  *(v48 + 16) = v170;
  v49 = sub_1DD6408F8();
  *(v48 + 56) = MEMORY[0x1E69E6158];
  *(v48 + 64) = v43;
  v50 = v43;
  *(v48 + 32) = v49;
  *(v48 + 40) = v51;
  OUTLINED_FUNCTION_3_61();
  OUTLINED_FUNCTION_22_27();
  sub_1DD63F998();

  v52 = v165;
  memcpy(v176, v165, sizeof(v176));
  memcpy(v175, v165, sizeof(v175));
  sub_1DD3C9478(v176, v177);
  v53 = ContactQuery.toUsoPerson()();
  memcpy(v177, v175, 0x108uLL);
  sub_1DD3C9580(v177);
  if (v53)
  {
    sub_1DD6404C8();
    OUTLINED_FUNCTION_22_27();
    sub_1DD63F9A8();
    v54 = v160;
    v55 = v171;
    v56 = v171 + *(v160 + 20);
    *v56 = "ContactResolver.PLUS.QueryExpander.Query";
    *(v56 + 8) = 40;
    *(v56 + 16) = 2;
    v165 = v47;
    v57 = v47;
    sub_1DD63F9B8();
    *(v55 + *(v54 + 24)) = v57;
    v58 = v57;
    sub_1DD6404D8();
    v59 = OUTLINED_FUNCTION_12_6(v159);
    *(v59 + 16) = v170;
    v60 = sub_1DD6408F8();
    *(v59 + 56) = MEMORY[0x1E69E6158];
    *(v59 + 64) = v50;
    *(v59 + 32) = v60;
    *(v59 + 40) = v61;
    *&v170 = v58;
    sub_1DD63F998();

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v62 = sub_1DD63F9F8();
    __swift_project_value_buffer(v62, qword_1EE16F068);

    v63 = sub_1DD63F9D8();
    v64 = sub_1DD640368();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = OUTLINED_FUNCTION_62();
      v175[0] = v66;
      *v65 = 136315138;
      v67 = sub_1DD63270C();
      v84 = sub_1DD39565C(v67, v83, v175);

      *(v65 + 4) = v84;
      _os_log_impl(&dword_1DD38D000, v63, v64, "PLUS: [queryPlusSuggestion] Runtime: USO used was: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v85 = v169;
    v86 = v164;
    v87 = v161;
    sub_1DD4B69D8(v162, &v173, &qword_1ECCDCCE0, &unk_1DD64AF80);
    v88 = v172;
    v89 = v168;
    v90 = v163;
    if (!v174)
    {
      sub_1DD390754(&v173, &qword_1ECCDCCE0, &unk_1DD64AF80);
      v91 = sub_1DD63F9D8();
      v92 = sub_1DD640378();
      if (OUTLINED_FUNCTION_4_0(v92))
      {
        v93 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_16_38(v93);
        OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v94, v95, "PLUS [queryPlusSuggestion]: Store Id lookup before the store was initialized");
        OUTLINED_FUNCTION_0_1();
      }

      sub_1DD41BFFC(v171);
      sub_1DD41BFFC(v88);
      OUTLINED_FUNCTION_6_62();
      __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
      goto LABEL_44;
    }

    sub_1DD3AA4A8(&v173, v175);
    sub_1DD55858C(v156, v87);
    if (__swift_getEnumTagSinglePayload(v87, 1, v89) == 1)
    {
      sub_1DD63D0E8();
      if (__swift_getEnumTagSinglePayload(v87, 1, v89) != 1)
      {
        sub_1DD390754(v87, &qword_1ECCDBAC8, &qword_1DD643E60);
      }
    }

    else
    {
      (*(v158 + 32))(v86, v87, v89);
    }

    __swift_project_boxed_opaque_existential_1(v175, v175[3]);
    v100 = sub_1DD63F968();
    sub_1DD6404C8();
    sub_1DD63F9A8();
    v101 = sub_1DD63F9D8();
    v102 = sub_1DD640378();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = OUTLINED_FUNCTION_9();
      *v103 = 0;
      _os_log_impl(&dword_1DD38D000, v101, v102, "PLUS [queryPlusSuggestion]: Found matching suggestions in PICS Store", v103, 2u);
      v86 = v164;
      OUTLINED_FUNCTION_0_1();
    }

    if (*(v100 + 16) >= 2uLL)
    {

      v104 = sub_1DD63F9D8();
      v105 = sub_1DD640378();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = v86;
        v107 = swift_slowAlloc();
        v108 = OUTLINED_FUNCTION_62();
        *&v173 = v108;
        *v107 = 136446210;
        v109 = MEMORY[0x1E12B2430](v100, v85);
        v111 = v110;

        v112 = sub_1DD39565C(v109, v111, &v173);

        *(v107 + 4) = v112;
        _os_log_impl(&dword_1DD38D000, v104, v105, "PLUS: [queryPlusSuggestion]: Not matching PLUSSuggestion as multiple matches were found. Count was %{public}s, max is 1.", v107, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v108);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();

        OUTLINED_FUNCTION_10_44();
        v114 = v106;
      }

      else
      {

        OUTLINED_FUNCTION_10_44();
        v114 = v86;
      }

      v113(v114, v168);
      sub_1DD41BFFC(v171);
      sub_1DD41BFFC(v172);
      OUTLINED_FUNCTION_6_62();
LABEL_43:
      __swift_storeEnumTagSinglePayload(v122, v123, v124, v125);
      __swift_destroy_boxed_opaque_existential_1(v175);
LABEL_44:
      v78 = v166;
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_4_73();
    v115 = v154;
    sub_1DD558F58(v100, v116, v154);

    if (__swift_getEnumTagSinglePayload(v115, 1, v85) != 1)
    {
      v126 = *(v90 + 32);
      v127 = v153;
      *&v170 = v126;
      v128 = v126(v153, v115, v85);
      v129 = v85;
      v130 = v150;
      MEMORY[0x1E12B1BD0](v128);
      v131 = sub_1DD63F898();
      v133 = v132;
      (*(v151 + 8))(v130, v152);

      v134 = HIBYTE(v133) & 0xF;
      if ((v133 & 0x2000000000000000) == 0)
      {
        v134 = v131 & 0xFFFFFFFFFFFFLL;
      }

      if (v134)
      {
        OUTLINED_FUNCTION_10_44();
        v135(v164, v168);

        sub_1DD41BFFC(v171);
        sub_1DD41BFFC(v172);
        v136 = v167;
        (v170)(v167, v127, v129);
        v122 = v136;
        v123 = 0;
      }

      else
      {
        v143 = sub_1DD63F9D8();
        v144 = sub_1DD640378();
        if (OUTLINED_FUNCTION_4_0(v144))
        {
          v145 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_16_38(v145);
          OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v146, v147, "PLUS [queryPlusSuggestion]: Match has no contactId. Suggestion will not be submitted.");
          OUTLINED_FUNCTION_0_1();
        }

        (*(v163 + 8))(v153, v129);
        OUTLINED_FUNCTION_10_44();
        v148(v164, v168);
        sub_1DD41BFFC(v171);
        sub_1DD41BFFC(v172);
        v122 = v167;
        v123 = 1;
      }

      v124 = 1;
      v125 = v129;
      goto LABEL_43;
    }

    sub_1DD390754(v115, &qword_1ECCDEAB8, &qword_1DD65B2B0);
    v117 = sub_1DD63F9D8();
    v118 = sub_1DD640368();
    if (OUTLINED_FUNCTION_4_0(v118))
    {
      v119 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_16_38(v119);
      OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v120, v121, "PLUS [queryPlusSuggestion]: Match NOT found in store");
      OUTLINED_FUNCTION_0_1();
    }

    else
    {
    }

    v78 = v166;
    v137 = v172;
    OUTLINED_FUNCTION_10_44();
    v138(v86, v168);
    sub_1DD41BFFC(v171);
    sub_1DD41BFFC(v137);
    OUTLINED_FUNCTION_6_62();
    __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
    __swift_destroy_boxed_opaque_existential_1(v175);
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v68 = sub_1DD63F9F8();
    __swift_project_value_buffer(v68, qword_1EE16F068);
    v69 = v155;
    sub_1DD4B69D8(v52, v155, &qword_1ECCDBC18, &unk_1DD6459A0);
    v70 = sub_1DD63F9D8();
    v71 = sub_1DD640378();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = OUTLINED_FUNCTION_62();
      v175[0] = v73;
      *v72 = 136315138;
      v74 = sub_1DD559214();
      v76 = v75;
      sub_1DD390754(v69, &qword_1ECCDBC18, &unk_1DD6459A0);
      v77 = sub_1DD39565C(v74, v76, v175);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_1DD38D000, v70, v71, "PLUS [queryPlusSuggestion]: Converting query %s failed. Not running PLUS", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      sub_1DD390754(v69, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    sub_1DD41BFFC(v44);
    v78 = v166;
    OUTLINED_FUNCTION_6_62();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  }

LABEL_45:
  sub_1DD6404C8();
  OUTLINED_FUNCTION_22_27();
  sub_1DD63F9A8();
  return sub_1DD41BFFC(v78);
}

uint64_t sub_1DD55A32C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  LODWORD(v105) = a4;
  v102 = a2;
  v103 = a3;
  v8 = sub_1DD63F8A8();
  OUTLINED_FUNCTION_0();
  v99 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v98 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEAB8, &qword_1DD65B2B0);
  OUTLINED_FUNCTION_3(v13);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_3();
  v101 = v15;
  OUTLINED_FUNCTION_6_2();
  v16 = sub_1DD63F8F8();
  OUTLINED_FUNCTION_0();
  v100 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v97 = v20 - v19;
  OUTLINED_FUNCTION_6_2();
  v104 = sub_1DD63F8B8();
  OUTLINED_FUNCTION_0();
  v106 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v91 - v26;
  v28 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2();
  v32 = v31 - v30;
  memcpy(v111, a1, 0x108uLL);
  sub_1DD4B69D8(v5, v109, &qword_1ECCDCCE0, &unk_1DD64AF80);
  if (*&v109[24])
  {
    sub_1DD3AA4A8(v109, v110);
    memcpy(v109, v111, sizeof(v109));
    v33 = ContactQuery.toUsoPerson()();
    if (!v33)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
      }

      v52 = sub_1DD63F9F8();
      __swift_project_value_buffer(v52, qword_1EE16F068);
      sub_1DD3C9478(v111, v109);
      v53 = sub_1DD63F9D8();
      v54 = sub_1DD640378();
      sub_1DD3C9580(v111);
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        *v55 = 136315394;
        *(v55 + 4) = sub_1DD39565C(0xD000000000000047, 0x80000001DD672DE0, &v108);
        *(v55 + 12) = 2080;
        memcpy(v107, v111, sizeof(v107));
        v56 = sub_1DD3C9478(v111, v109);
        v57 = ContactQuery.description.getter(v56);
        v59 = v58;
        memcpy(v109, v107, sizeof(v109));
        sub_1DD3C9580(v109);
        v60 = sub_1DD39565C(v57, v59, &v108);

        *(v55 + 14) = v60;
        _os_log_impl(&dword_1DD38D000, v53, v54, "PLUS [%s]: Converting query failed, not running PLUS. Query: %s", v55, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB40, &qword_1DD65B2B8);
      OUTLINED_FUNCTION_25_17(v61);
      return __swift_destroy_boxed_opaque_existential_1(v110);
    }

    v92 = v8;
    v93 = v16;
    v95 = a5;
    v96 = v33;
    if (qword_1EE166460 != -1)
    {
      OUTLINED_FUNCTION_4_2(&qword_1EE166460);
    }

    v34 = qword_1EE16F0C0;
    v35 = v32 + *(v28 + 20);
    *v35 = "UnifiedContactGenerator.PLUS.queryPlusSuggestionMatches";
    *(v35 + 8) = 55;
    *(v35 + 16) = 2;
    v36 = v34;
    sub_1DD63F9B8();
    *(v32 + *(v28 + 24)) = v36;
    v37 = v36;
    sub_1DD6404D8();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v39 = OUTLINED_FUNCTION_12_6(v38);
    *(v39 + 16) = xmmword_1DD643F90;
    v40 = sub_1DD6408F8();
    v42 = v41;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = sub_1DD392BD8();
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    OUTLINED_FUNCTION_3_61();
    v94 = v37;
    OUTLINED_FUNCTION_12_34();
    sub_1DD63F998();

    *v109 = MEMORY[0x1E69E7CD0];
    if (v105)
    {
      if (v105 != 1)
      {
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB40, &qword_1DD65B2B8);
        v80 = v95;
        goto LABEL_29;
      }

      v43 = MEMORY[0x1E69D2798];
    }

    else
    {
      v43 = MEMORY[0x1E69D27A0];
    }

    v62 = *v43;
    v63 = v106;
    v64 = v104;
    v105 = *(v106 + 104);
    v105(v24, v62, v104);
    sub_1DD56EB4C();
    v65 = *(v63 + 8);
    v106 = v63 + 8;
    v65(v27, v64);
    __swift_project_boxed_opaque_existential_1(v110, v110[3]);
    v66 = sub_1DD63F978();

    v67 = sub_1DD3C6868(v66);

    if (*(v67 + 16) == 1)
    {
      OUTLINED_FUNCTION_4_73();
      v68 = v101;
      sub_1DD558F58(v67, v69, v101);
      v70 = v93;
      if (__swift_getEnumTagSinglePayload(v68, 1, v93) != 1)
      {

        v81 = v97;
        (*(v100 + 32))(v97, v68, v70);
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB40, &qword_1DD65B2B8);
        v101 = *(v82 + 48);
        v102 = *(v82 + 64);
        v103 = v82;
        v83 = v98;
        MEMORY[0x1E12B1BD0]();
        v84 = sub_1DD63F898();
        v86 = v85;
        OUTLINED_FUNCTION_10_44();
        v87(v83, v92);
        v88 = v95;
        *v95 = v84;
        *(v88 + 8) = v86;
        sub_1DD63F8D8();
        sub_1DD63F8E8();
        v89 = v104;
        v105(v27, *MEMORY[0x1E69D27A8], v104);
        OUTLINED_FUNCTION_29();
        LOBYTE(v86) = sub_1DD47ED70();

        v65(v27, v89);
        (*(v100 + 8))(v81, v93);
        v90 = v103;
        *(v88 + v102) = v86 & 1;
        __swift_storeEnumTagSinglePayload(v88, 0, 1, v90);
        sub_1DD6404C8();
        OUTLINED_FUNCTION_12_34();
        sub_1DD63F9A8();
        goto LABEL_30;
      }

      sub_1DD390754(v68, &qword_1ECCDEAB8, &qword_1DD65B2B0);
    }

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v71 = sub_1DD63F9F8();
    __swift_project_value_buffer(v71, qword_1EE16F068);

    v72 = sub_1DD63F9D8();
    v73 = sub_1DD640378();
    v74 = os_log_type_enabled(v72, v73);
    v75 = v95;
    if (v74)
    {
      v76 = swift_slowAlloc();
      v77 = OUTLINED_FUNCTION_62();
      v107[0] = v77;
      *v76 = 136315394;
      *(v76 + 4) = sub_1DD39565C(0xD000000000000047, 0x80000001DD672DE0, v107);
      *(v76 + 12) = 2050;
      v78 = *(v67 + 16);

      *(v76 + 14) = v78;

      _os_log_impl(&dword_1DD38D000, v72, v73, "PLUS [%s]: Matching suggestions count is not exactly 1. Ignoring... (was %{public}ld)", v76, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v77);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB40, &qword_1DD65B2B8);
    v80 = v75;
LABEL_29:
    __swift_storeEnumTagSinglePayload(v80, 1, 1, v79);
    sub_1DD6404C8();
    OUTLINED_FUNCTION_12_34();
    sub_1DD63F9A8();
LABEL_30:

    sub_1DD41BFFC(v32);
    return __swift_destroy_boxed_opaque_existential_1(v110);
  }

  sub_1DD390754(v109, &qword_1ECCDCCE0, &unk_1DD64AF80);
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
  }

  v44 = sub_1DD63F9F8();
  __swift_project_value_buffer(v44, qword_1EE16F068);
  v45 = sub_1DD63F9D8();
  v46 = sub_1DD640378();
  if (OUTLINED_FUNCTION_4_0(v46))
  {
    v47 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_16_38(v47);
    OUTLINED_FUNCTION_11_4(&dword_1DD38D000, v48, v49, "PLUS [hydrateCandidatesWithPlusSignal]: PICS Store queried before store was initalised.");
    OUTLINED_FUNCTION_0_1();
  }

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB40, &qword_1DD65B2B8);
  return OUTLINED_FUNCTION_25_17(v50);
}

uint64_t sub_1DD55AD40(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1DD640768();
  }

  else
  {
    return sub_1DD640728();
  }
}

uint64_t sub_1DD55ADFC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {

    return OUTLINED_FUNCTION_15_0();
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1DD55AE74(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      v5 = OUTLINED_FUNCTION_29();
      v13 = MEMORY[0x1E12B2AE0](v5);
      type metadata accessor for DateTimeConstraint();
      swift_dynamicCast();
      return;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    type metadata accessor for DateTimeConstraint();
    OUTLINED_FUNCTION_29();
    if (sub_1DD640798() == *(a4 + 36))
    {
      OUTLINED_FUNCTION_29();
      v13 = sub_1DD6407A8();
      swift_dynamicCast();
      v6 = v12[0];
      sub_1DD640E28();
      sub_1DD48E664(v12);
      v7 = sub_1DD640E78();
      v8 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v9 = v7 & v8;
        if (((*(a4 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
        {
          goto LABEL_21;
        }

        v11 = sub_1DD48E554(v10, v6);

        if (v11)
        {
          goto LABEL_15;
        }

        v7 = v9 + 1;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:

    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }
}

uint64_t sub_1DD55B050@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1DD55B0A4(uint64_t a1, uint64_t (*a2)(void *))
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = (a1 + 40);
  while (v4 != v3)
  {
    v6 = *v5;
    v9[0] = *(v5 - 1);
    v9[1] = v6;

    v7 = a2(v9);

    if (v7)
    {
      return v3;
    }

    ++v3;
    v5 += 2;
  }

  return v4;
}

uint64_t sub_1DD55B13C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_15_0();
  v5(v4);
  return a2;
}

void OUTLINED_FUNCTION_14_37()
{

  JUMPOUT(0x1E12B2260);
}

_BYTE *storeEnumTagSinglePayload for PLUSTrialFactors(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD55B2E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000021 && 0x80000001DD66C4E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD640CD8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD55B384(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB58, &qword_1DD65B388);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD55B6F0();
  sub_1DD640EF8();
  sub_1DD640C28();
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1DD55B4A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB50, &qword_1DD65B380);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD55B6F0();
  sub_1DD640ED8();
  if (!v1)
  {
    v9 = sub_1DD640B38();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9 & 1;
}

uint64_t sub_1DD55B5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD55B2E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD55B620(uint64_t a1)
{
  v2 = sub_1DD55B6F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD55B65C(uint64_t a1)
{
  v2 = sub_1DD55B6F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD55B698@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD55B4A8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_1DD55B6F0()
{
  result = qword_1EE165588;
  if (!qword_1EE165588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165588);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PLUSTrialFactors.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD55B7F4()
{
  result = qword_1ECCDEB60;
  if (!qword_1ECCDEB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEB60);
  }

  return result;
}

unint64_t sub_1DD55B84C()
{
  result = qword_1EE165578;
  if (!qword_1EE165578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165578);
  }

  return result;
}

unint64_t sub_1DD55B8A4()
{
  result = qword_1EE165580;
  if (!qword_1EE165580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165580);
  }

  return result;
}

SiriInference::POILandmark __swiftcall POILandmark.init(name:prefix:)(SiriInference::POILandmark name, SiriInference::POILandmark::Prefix_optional prefix)
{
  v3 = *prefix.value;
  *v2 = name.name;
  *(v2 + 16) = v3;
  name.prefix = prefix;
  return name;
}

SiriInference::POILandmark::Prefix_optional __swiftcall POILandmark.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t POILandmark.Prefix.rawValue.getter()
{
  result = 0x656874206F74;
  switch(*v0)
  {
    case 1:
      result = 29793;
      break;
    case 2:
      result = 0x7373656E69737562;
      break;
    case 3:
      result = 28265;
      break;
    case 4:
      result = 0x65687420726F66;
      break;
    case 5:
      result = 31074;
      break;
    case 6:
      result = 26223;
      break;
    case 7:
      result = 7499622;
      break;
    case 8:
      result = 1918985582;
      break;
    case 9:
      result = 28532;
      break;
    case 0xA:
      result = 0x656874207461;
      break;
    case 0xB:
      result = 0x656874206E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD55BA60@<X0>(uint64_t *a1@<X8>)
{
  result = POILandmark.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t POILandmark.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static POILandmark.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = sub_1DD640CD8(), result = 0, (v5 & 1) != 0))
  {
    result = v3 == 12 && (v2 == 12);
    if (v2 != 12 && v3 != 12)
    {

      return sub_1DD3B1724(v2, v3);
    }
  }

  return result;
}

uint64_t sub_1DD55BC10(uint64_t a1)
{
  v2 = sub_1DD55C014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD55BC4C(uint64_t a1)
{
  v2 = sub_1DD55C014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t POILandmark.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB68, &qword_1DD65B4A8);
  OUTLINED_FUNCTION_0();
  v11 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD55C014();
  sub_1DD640EF8();
  v15 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_1DD55C068();
    sub_1DD640C08();
  }

  return (*(v11 + 8))(v8, v4);
}

uint64_t POILandmark.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB80, &qword_1DD65B4B0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD55C014();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_1DD640B28();
  v8 = v7;
  sub_1DD55C0BC();
  sub_1DD640B18();
  v9 = OUTLINED_FUNCTION_41();
  v10(v9);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD55C014()
{
  result = qword_1ECCDEB70;
  if (!qword_1ECCDEB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEB70);
  }

  return result;
}

unint64_t sub_1DD55C068()
{
  result = qword_1ECCDEB78;
  if (!qword_1ECCDEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEB78);
  }

  return result;
}

unint64_t sub_1DD55C0BC()
{
  result = qword_1ECCDEB88;
  if (!qword_1ECCDEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEB88);
  }

  return result;
}

unint64_t sub_1DD55C114()
{
  result = qword_1ECCDEB90;
  if (!qword_1ECCDEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEB90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for POILandmark.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for POILandmark.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD55C334()
{
  result = qword_1ECCDEB98;
  if (!qword_1ECCDEB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEB98);
  }

  return result;
}

unint64_t sub_1DD55C38C()
{
  result = qword_1ECCDEBA0;
  if (!qword_1ECCDEBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEBA0);
  }

  return result;
}

unint64_t sub_1DD55C3E4()
{
  result = qword_1ECCDEBA8;
  if (!qword_1ECCDEBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEBA8);
  }

  return result;
}

unint64_t sub_1DD55C438()
{
  result = qword_1ECCDEBB0;
  if (!qword_1ECCDEBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEBB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PortraitFetcher(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD55C538(uint64_t a1)
{
  v2 = v1;
  v80 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v3 = a1;
    if (qword_1ECCDB0D0 != -1)
    {
      goto LABEL_46;
    }

    while (1)
    {
      v4 = sub_1DD63F9F8();
      v5 = __swift_project_value_buffer(v4, qword_1ECD0DDD8);

      v70 = v5;
      v6 = sub_1DD63F9D8();
      v7 = sub_1DD640368();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v79 = v9;
        *v8 = 136315138;
        v10 = sub_1DD640278();
        v12 = sub_1DD39565C(v10, v11, &v79);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_1DD38D000, v6, v7, "getTeamQIdsScores(). qIds set = %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      v13 = [objc_allocWithZone(MEMORY[0x1E69BDCC8]) init];
      v14 = [objc_allocWithZone(MEMORY[0x1E69BDCC0]) init];
      sub_1DD56C2F4(&unk_1F58AEB98, v15, v16, v17, v18, v19, v20, v21, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
      sub_1DD55CC1C(v22, v14);
      sub_1DD55CC90(v3, v14);
      v23 = sub_1DD63FDA8();
      v79 = 0;
      v71 = v13;
      v24 = [v13 scoresForTopicMapping:v23 query:v14 error:&v79];

      v25 = v79;
      if (!v24)
      {
        v53 = v79;
        v54 = sub_1DD63CD98();

        swift_willThrow();
        v55 = sub_1DD63F9D8();
        v56 = sub_1DD640378();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_1DD38D000, v55, v56, "getTeamQIdsScores(). Error in fetching Portrait QId and Item Scores.", v57, 2u);
          OUTLINED_FUNCTION_0_1();
        }

        return MEMORY[0x1E69E7CC8];
      }

      sub_1DD5210EC();
      v3 = sub_1DD63FC58();
      v26 = v25;

      v27 = *(v3 + 16);
      if (!v27)
      {
        break;
      }

      v68 = v14;
      v69 = v2;
      v79 = MEMORY[0x1E69E7CC0];
      sub_1DD42BE8C(0, v27, 0);
      v28 = v79;
      v2 = sub_1DD5FAA4C();
      v31 = 0;
      v78 = v3 + 64;
      v73 = v29;
      v74 = v27;
      v72 = v3 + 72;
      while ((v2 & 0x8000000000000000) == 0 && v2 < 1 << *(v3 + 32))
      {
        v32 = v2 >> 6;
        if ((*(v78 + 8 * (v2 >> 6)) & (1 << v2)) == 0)
        {
          goto LABEL_41;
        }

        if (*(v3 + 36) != v29)
        {
          goto LABEL_42;
        }

        HIDWORD(v75) = v30;
        v33 = (*(v3 + 48) + 16 * v2);
        v34 = v33[1];
        v76 = v29;
        v77 = *v33;
        v35 = *(*(v3 + 56) + 8 * v2);

        [v35 doubleValue];
        v37 = v36;
        v79 = v28;
        v39 = v28[2];
        v38 = v28[3];
        if (v39 >= v38 >> 1)
        {
          sub_1DD42BE8C(v38 > 1, v39 + 1, 1);
          v28 = v79;
        }

        v28[2] = v39 + 1;
        v40 = &v28[3 * v39];
        v40[4] = v77;
        v40[5] = v34;
        v40[6] = v37;
        v41 = 1 << *(v3 + 32);
        if (v2 >= v41)
        {
          goto LABEL_43;
        }

        v42 = *(v78 + 8 * v32);
        if ((v42 & (1 << v2)) == 0)
        {
          goto LABEL_44;
        }

        if (*(v3 + 36) != v76)
        {
          goto LABEL_45;
        }

        v43 = v42 & (-2 << (v2 & 0x3F));
        if (v43)
        {
          v41 = __clz(__rbit64(v43)) | v2 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v44 = v32 << 6;
          v45 = v32 + 1;
          v46 = (v72 + 8 * v32);
          while (v45 < (v41 + 63) >> 6)
          {
            v48 = *v46++;
            v47 = v48;
            v44 += 64;
            ++v45;
            if (v48)
            {
              sub_1DD3AA558(v2, v76, BYTE4(v75) & 1);
              v41 = __clz(__rbit64(v47)) + v44;
              goto LABEL_24;
            }
          }

          sub_1DD3AA558(v2, v76, BYTE4(v75) & 1);
        }

LABEL_24:
        v30 = 0;
        ++v31;
        v2 = v41;
        v29 = v73;
        if (v31 == v74)
        {

          v14 = v68;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      OUTLINED_FUNCTION_0_115(&qword_1ECCDB0D0);
    }

    v28 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v58 = sub_1DD3B82D0(v28);

    v59 = sub_1DD63F9D8();
    v60 = sub_1DD640368();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v79 = v62;
      *v61 = 136315138;
      v63 = sub_1DD63FC68();
      v65 = sub_1DD39565C(v63, v64, &v79);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_1DD38D000, v59, v60, "getTeamQIdsScores(). QId(s) with their Score(s) = %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }
  }

  else
  {
    if (qword_1ECCDB0D0 != -1)
    {
      OUTLINED_FUNCTION_0_115(&qword_1ECCDB0D0);
    }

    v49 = sub_1DD63F9F8();
    __swift_project_value_buffer(v49, qword_1ECD0DDD8);
    v50 = sub_1DD63F9D8();
    v51 = sub_1DD640368();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1DD38D000, v50, v51, "getTeamQIdsScores(). qIds set is Empty!", v52, 2u);
      OUTLINED_FUNCTION_0_1();
    }

    return MEMORY[0x1E69E7CC8];
  }

  return v58;
}

void sub_1DD55CC1C(uint64_t a1, void *a2)
{
  v3 = sub_1DD640258();

  [a2 setExcludingSourceBundleIds_];
}

void sub_1DD55CC90(uint64_t a1, void *a2)
{
  v3 = sub_1DD640258();
  [a2 setMatchingMappedTopicIds_];
}

uint64_t sub_1DD55CD08(xpc_activity_t *a1)
{
  v1 = *a1;
  if (*a1 && xpc_activity_should_defer(*a1))
  {
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EE166510);
    }

    v2 = sub_1DD63F9F8();
    __swift_project_value_buffer(v2, qword_1EE16F0C8);
    v3 = sub_1DD63F9D8();
    v4 = sub_1DD640368();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DD38D000, v3, v4, "Defer PSE collections.", v5, 2u);
      MEMORY[0x1E12B3DA0](v5, -1, -1);
    }
  }

  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v8 = swift_allocBox();
  v10 = v9;
  v11 = sub_1DD63D078();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  swift_beginAccess();
  if (v1)
  {
LABEL_9:
    if (!xpc_activity_should_defer(v1))
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_10:
    while ((*(v6 + 16) & 1) == 0)
    {
      v12 = swift_allocObject();
      v12[2] = v6;
      v12[3] = v8;
      v12[4] = v7;

      sub_1DD63F6C8();

      if (v1)
      {
        goto LABEL_9;
      }
    }
  }

  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EE166510);
  }

  v13 = sub_1DD63F9F8();
  __swift_project_value_buffer(v13, qword_1EE16F0C8);

  v14 = sub_1DD63F9D8();
  v15 = sub_1DD640368();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    swift_beginAccess();
    *(v16 + 4) = *(v7 + 16);

    _os_log_impl(&dword_1DD38D000, v14, v15, "Processed %lu PSE collections.", v16, 0xCu);
    MEMORY[0x1E12B3DA0](v16, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DD55D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v48 = sub_1DD63F708();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1DD63D078();
  v53 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDDA8, &unk_1DD65B820);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v45[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45[-v20];
  v22 = swift_projectBox();
  v23 = sub_1DD63F6E8() == 0;
  swift_beginAccess();
  v49 = a2;
  *(a2 + 16) = v23;
  v54 = a1;
  sub_1DD63F6F8();
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v7);
  swift_beginAccess();
  v24 = *(v10 + 56);
  sub_1DD3B7EA0(v21, v12);
  sub_1DD3B7EA0(v22, &v12[v24]);
  if (__swift_getEnumTagSinglePayload(v12, 1, v7) == 1)
  {
    sub_1DD3ADFD0(v21, &qword_1ECCDEBC0, &qword_1DD6445A0);
    if (__swift_getEnumTagSinglePayload(&v12[v24], 1, v7) == 1)
    {
      sub_1DD3ADFD0(v12, &qword_1ECCDEBC0, &qword_1DD6445A0);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1DD3B7EA0(v12, v18);
  if (__swift_getEnumTagSinglePayload(&v12[v24], 1, v7) == 1)
  {
    sub_1DD3ADFD0(v21, &qword_1ECCDEBC0, &qword_1DD6445A0);
    (*(v53 + 8))(v18, v7);
LABEL_6:
    sub_1DD3ADFD0(v12, &qword_1ECCDDDA8, &unk_1DD65B820);
LABEL_7:
    v25 = sub_1DD63F6E8();
    v26 = v52;
    swift_beginAccess();
    v27 = *(v26 + 16);
    v28 = __CFADD__(v27, v25);
    v29 = v27 + v25;
    if (!v28)
    {
      *(v26 + 16) = v29;
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_17;
  }

  v30 = v53;
  v31 = v50;
  (*(v53 + 32))(v50, &v12[v24], v7);
  sub_1DD55D684();
  v46 = sub_1DD63FD98();
  v32 = *(v30 + 8);
  v32(v31, v7);
  sub_1DD3ADFD0(v21, &qword_1ECCDEBC0, &qword_1DD6445A0);
  v32(v18, v7);
  sub_1DD3ADFD0(v12, &qword_1ECCDEBC0, &qword_1DD6445A0);
  if ((v46 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (qword_1EE166510 != -1)
  {
LABEL_17:
    swift_once();
  }

  v33 = sub_1DD63F9F8();
  __swift_project_value_buffer(v33, qword_1EE16F0C8);
  v34 = v47;
  v35 = v51;
  v36 = v48;
  (*(v47 + 16))(v51, v54, v48);
  v37 = sub_1DD63F9D8();
  v38 = sub_1DD640378();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    v40 = v50;
    sub_1DD63F6F8();
    sub_1DD63CF48();
    v42 = v41;
    (*(v53 + 8))(v40, v7);
    (*(v34 + 8))(v51, v36);
    *(v39 + 4) = v42;
    _os_log_impl(&dword_1DD38D000, v37, v38, "The PSE returned lastSessionEndDate does not change: %f", v39, 0xCu);
    MEMORY[0x1E12B3DA0](v39, -1, -1);
  }

  else
  {

    (*(v34 + 8))(v35, v36);
  }

  v43 = v49;
  swift_beginAccess();
  *(v43 + 16) = 1;
LABEL_15:
  sub_1DD63F6F8();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v7);
  swift_beginAccess();
  return sub_1DD49FF04(v15, v22);
}

unint64_t sub_1DD55D684()
{
  result = qword_1EE166050;
  if (!qword_1EE166050)
  {
    sub_1DD63D078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE166050);
  }

  return result;
}

SiriInference::PresentedChoices __swiftcall PresentedChoices.init(choices:identifiers:)(Swift::OpaquePointer choices, Swift::OpaquePointer identifiers)
{
  v2->_rawValue = choices._rawValue;
  v2[1]._rawValue = identifiers._rawValue;
  result.identifiers = identifiers;
  result.choices = choices;
  return result;
}

void sub_1DD55D704(double a1)
{
  if (a1 != 0.0)
  {
    v1 = log10(fabs(a1));
    v2 = *&v1 & 0x7FFFFFFFFFFFFFFFLL;
    if (v1 < 0.0)
    {
      if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      if (v1 <= -9.22337204e18)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v3 = -2.0;
      v2 = 0x43E0000000000000;
      if (v1 < 9.22337204e18)
      {
LABEL_10:
        __exp10(v3 + v1);
        return;
      }

      __break(1u);
    }

    if (v2 <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v1 > -9.22337204e18)
      {
        v3 = -1.0;
        if (v1 < 9.22337204e18)
        {
          goto LABEL_10;
        }

LABEL_16:
        __break(1u);
        return;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_13;
  }
}

uint64_t sub_1DD55D7D8(uint64_t a1)
{
  v1 = 0;
  while (v1 != 10)
  {
    v2 = byte_1F58AAFA8[v1++ + 32];
    if (qword_1DD65B9D0[v2] >= a1)
    {
      return v2;
    }
  }

  return 9;
}

void sub_1DD55D81C(uint64_t a1)
{
  sub_1DD55D704(a1);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t getEnumTagSinglePayload for TimeIntervalBucket(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TimeIntervalBucket(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD55D9F4(uint64_t result)
{
  if (result)
  {
    switch(result)
    {
      case 0x1ELL:
        return 1;
      case 0x7FFFFFFFLL:
        return 9;
      case 0x258:
        return 3;
      case 0xE10:
        return 4;
      case 0x5460:
        return 5;
      case 0x15180:
        return 6;
      case 0x93A80:
        return 7;
      case 0x24EA00:
        return 8;
      case 0x78:
        return 2;
      default:
        return 10;
    }
  }

  return result;
}

uint64_t sub_1DD55DAD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD55D9F4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD55DB00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD55D87C(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1DD55DBF0()
{
  result = qword_1ECCDEBC8;
  if (!qword_1ECCDEBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDEBD0, qword_1DD65B8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEBC8);
  }

  return result;
}

unint64_t sub_1DD55DC58()
{
  result = qword_1ECCDEBD8;
  if (!qword_1ECCDEBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEBD8);
  }

  return result;
}

unint64_t sub_1DD55DCAC()
{
  result = qword_1ECCDEBE0;
  if (!qword_1ECCDEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEBE0);
  }

  return result;
}

uint64_t sub_1DD55DD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrivatizedHandleSignalSet(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = (v7 - v6);
  v237 = type metadata accessor for ContactResolver.HandleSignalSet(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = (v11 - v10);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  OUTLINED_FUNCTION_0();
  v220 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  v236 = &v220 - v15;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD78, &unk_1DD644390);
  OUTLINED_FUNCTION_0();
  v231 = v16;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  v234 = &v220 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  v20 = OUTLINED_FUNCTION_3(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v220 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE510, &qword_1DD65BA20);
  v27 = OUTLINED_FUNCTION_3(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v220 - v31;
  v33 = type metadata accessor for PrivatizedSignalSet(0);
  v34 = *(v33 + 100);
  v35 = sub_1DD63F378();
  v222 = v34;
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  v225 = v33;
  v226 = *(v33 + 104);
  OUTLINED_FUNCTION_65_0();
  v235 = v35;
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v35);
  v42 = *(a1 + 304);
  *(a2 + 8) = *(a1 + 288);
  v43 = *(a1 + 320);
  *a2 = *(a1 + 280);
  *(a2 + 24) = v42;
  *(a2 + 40) = v43;
  *(a2 + 48) = *(a1 + 328);
  *(a2 + 49) = *(a1 + 332);
  *(a2 + 50) = *(a1 + 333);
  *(a2 + 51) = *(a1 + 334);
  *(a2 + 52) = *(a1 + 336);
  *(a2 + 53) = *(a1 + 337);
  *(a2 + 54) = *(a1 + 335);
  *(a2 + 55) = *(a1 + 338);
  *(a2 + 56) = *(a1 + 339);
  *(a2 + 57) = *(a1 + 340);
  sub_1DD55D704(*(a1 + 344));
  *(a2 + 64) = v44;
  sub_1DD55D704(*(a1 + 352));
  *(a2 + 72) = v45;
  *(a2 + 80) = *(a1 + 360);
  *(a2 + 81) = *(a1 + 361);
  *(a2 + 82) = *(a1 + 362);
  *(a2 + 83) = *(a1 + 363);
  sub_1DD55D81C(*(a1 + 368));
  *(a2 + 88) = v46;
  sub_1DD55D81C(*(a1 + 376));
  *(a2 + 96) = v47;
  sub_1DD55D81C(*(a1 + 384));
  *(a2 + 104) = v48;
  v49 = type metadata accessor for ContactResolver.SignalSet(0);
  v50 = v49[30];
  v224 = a1;
  sub_1DD4DDC08(a1 + v50, v25, &qword_1ECCDCB80, &qword_1DD64A0E0);
  v51 = sub_1DD63F148();
  OUTLINED_FUNCTION_27_22(v25);
  if (v52)
  {
    v54 = sub_1DD390754(v25, &qword_1ECCDCB80, &qword_1DD64A0E0);
    v55 = 1;
  }

  else
  {
    sub_1DD63F0D8();
    OUTLINED_FUNCTION_31_19();
    v54 = (*(v53 + 8))(v25, v51);
    v55 = 0;
  }

  OUTLINED_FUNCTION_38_14(v54, v55);
  sub_1DD4DDCBC(v32, a2 + v225[24], &qword_1ECCDE510, &qword_1DD65BA20);
  v56 = v224;
  v57 = v223;
  sub_1DD4DDC08(v224 + v49[31], v223, &qword_1ECCDCB80, &qword_1DD64A0E0);
  OUTLINED_FUNCTION_27_22(v57);
  if (v52)
  {
    sub_1DD390754(v57, &qword_1ECCDCB80, &qword_1DD64A0E0);
    OUTLINED_FUNCTION_43_15();
    v58 = v221;
  }

  else
  {
    v58 = v221;
    sub_1DD63F0D8();
    OUTLINED_FUNCTION_31_19();
    (*(v59 + 8))(v57, v51);
    OUTLINED_FUNCTION_43_15();
  }

  OUTLINED_FUNCTION_38_14(v60, v61);
  sub_1DD563F98(v58, a2 + v222);
  sub_1DD4DDC08(v56 + v49[32], v57, &qword_1ECCDCB80, &qword_1DD64A0E0);
  OUTLINED_FUNCTION_27_22(v57);
  if (v52)
  {
    v64 = sub_1DD390754(v57, &qword_1ECCDCB80, &qword_1DD64A0E0);
    v65 = 1;
    v62 = v227;
  }

  else
  {
    v62 = v227;
    sub_1DD63F0D8();
    OUTLINED_FUNCTION_31_19();
    v64 = (*(v63 + 8))(v57, v51);
    v65 = 0;
  }

  OUTLINED_FUNCTION_38_14(v64, v65);
  sub_1DD563F98(v62, a2 + v34);
  v66 = v225;
  *(a2 + v225[27]) = *(v56 + v49[34]);
  *(a2 + v66[28]) = *(v56 + v49[35]);
  *(a2 + v66[29]) = *(v56 + v49[36]);
  *(a2 + v66[30]) = *(v56 + v49[37]);
  *(a2 + v66[31]) = *(v56 + v49[38]);
  *(a2 + v66[32]) = *(v56 + v49[39]);
  *(a2 + v66[33]) = *(v56 + v49[40]);
  *(a2 + v66[34]) = *(v56 + v49[41]);
  *(a2 + v66[35]) = *(v56 + v49[42] + 9);
  v67 = v56 + v49[43];
  v69 = *(v67 + 16);
  v68 = *(v67 + 24);
  v70 = (a2 + v66[36]);
  *v70 = v69;
  v70[1] = v68;
  *(a2 + v66[37]) = *(v56 + v49[44]);
  *(a2 + v66[38]) = *(v56 + v49[45]);
  v71 = v56 + v49[33];
  v72 = *v71;
  v73 = *(v71 + 16);
  v74 = *(v71 + 32);
  v244 = *(v71 + 48);
  v242 = v73;
  v243 = v74;
  v241 = v72;

  sub_1DD585314(v239);
  v75 = a2 + v66[39];
  v76 = v239[1];
  *v75 = v239[0];
  *(v75 + 16) = v76;
  *(v75 + 32) = v239[2];
  *(v75 + 48) = v240;
  *(a2 + v66[41]) = *(v56 + v49[47]);
  *(a2 + v66[42]) = *(v56 + v49[48]);
  *(a2 + v66[43]) = *(v56 + v49[49] + 9);
  sub_1DD55D704(*(v56 + v49[50] + 16));
  *(a2 + v66[44]) = v77;
  *(a2 + v66[45]) = *(v56 + v49[51]);
  *(a2 + v66[46]) = *(v56 + v49[58]);
  *(a2 + v66[47]) = *(v56 + v49[56]);
  *(a2 + v66[48]) = *(v56 + v49[60]);
  type metadata accessor for MegadomeEntityFeatures();
  swift_allocObject();
  v78 = sub_1DD439928();
  v79 = v66[49];
  v223 = a2;
  *(a2 + v79) = v78;
  v80 = *(v56 + v49[61]);
  sub_1DD55D704(*(v80 + 16));
  v78[2] = v81;
  sub_1DD55D704(*(v80 + 24));
  v78[3] = v82;
  sub_1DD55D704(*(v80 + 32));
  v78[4] = v83;
  sub_1DD55D704(*(v80 + 40));
  v78[5] = v84;
  sub_1DD55D704(*(v80 + 48));
  v78[6] = v85;
  sub_1DD55D704(*(v80 + 56));
  v78[7] = v86;
  sub_1DD55D704(*(v80 + 64));
  v78[8] = v87;
  sub_1DD55D704(*(v80 + 72));
  v78[9] = v88;
  sub_1DD55D704(*(v80 + 80));
  v78[10] = v89;
  sub_1DD55D704(*(v80 + 88));
  v78[11] = v90;
  sub_1DD55D704(*(v80 + 96));
  v78[12] = v91;
  sub_1DD55D704(*(v80 + 104));
  v78[13] = v92;
  sub_1DD55D704(*(v80 + 112));
  v78[14] = v93;
  sub_1DD55D704(*(v80 + 120));
  v78[15] = v94;
  sub_1DD55D704(*(v80 + 128));
  v78[16] = v95;
  sub_1DD55D704(*(v80 + 136));
  v78[17] = v96;
  sub_1DD55D704(*(v80 + 144));
  v78[18] = v97;
  sub_1DD55D704(*(v80 + 152));
  v78[19] = v98;
  sub_1DD55D704(*(v80 + 160));
  v78[20] = v99;
  sub_1DD55D704(*(v80 + 168));
  v78[21] = v100;
  sub_1DD55D704(*(v80 + 176));
  v78[22] = v101;
  sub_1DD55D704(*(v80 + 184));
  v78[23] = v102;
  sub_1DD55D704(*(v80 + 192));
  v78[24] = v103;
  sub_1DD55D704(*(v80 + 200));
  v78[25] = v104;
  sub_1DD55D704(*(v80 + 208));
  v78[26] = v105;
  sub_1DD55D704(*(v80 + 216));
  v78[27] = v106;
  sub_1DD55D704(*(v80 + 224));
  v78[28] = v107;
  sub_1DD55D704(*(v80 + 232));
  v78[29] = v108;
  sub_1DD55D704(*(v80 + 240));
  v78[30] = v109;
  sub_1DD55D704(*(v80 + 248));
  v78[31] = v110;
  sub_1DD55D704(*(v80 + 256));
  v78[32] = v111;
  sub_1DD55D704(*(v80 + 264));
  v78[33] = v112;
  sub_1DD55D704(*(v80 + 272));
  v78[34] = v113;
  sub_1DD55D704(*(v80 + 280));
  v78[35] = v114;
  sub_1DD55D704(*(v80 + 288));
  v78[36] = v115;
  sub_1DD55D704(*(v80 + 296));
  v78[37] = v116;
  sub_1DD55D704(*(v80 + 304));
  v78[38] = v117;
  sub_1DD55D704(*(v80 + 312));
  v78[39] = v118;
  sub_1DD55D704(*(v80 + 320));
  v78[40] = v119;
  sub_1DD55D704(*(v80 + 328));
  v78[41] = v120;
  sub_1DD55D704(*(v80 + 336));
  v78[42] = v121;
  sub_1DD55D704(*(v80 + 344));
  v78[43] = v122;
  sub_1DD55D704(*(v80 + 352));
  v78[44] = v123;
  sub_1DD55D704(*(v80 + 360));
  v78[45] = v124;
  sub_1DD55D704(*(v80 + 368));
  v78[46] = v125;
  sub_1DD55D704(*(v80 + 376));
  v78[47] = v126;
  sub_1DD55D704(*(v80 + 384));
  v78[48] = v127;
  sub_1DD55D704(*(v80 + 392));
  v78[49] = v128;
  sub_1DD55D704(*(v80 + 400));
  v78[50] = v129;
  sub_1DD55D704(*(v80 + 408));
  v78[51] = v130;
  sub_1DD55D704(*(v80 + 416));
  v78[52] = v131;
  sub_1DD55D704(*(v80 + 424));
  v78[53] = v132;
  sub_1DD55D704(*(v80 + 432));
  v78[54] = v133;
  sub_1DD55D704(*(v80 + 440));
  v78[55] = v134;
  sub_1DD55D704(*(v80 + 448));
  v78[56] = v135;
  sub_1DD55D704(*(v80 + 456));
  v78[57] = v136;
  sub_1DD55D704(*(v80 + 464));
  v78[58] = v137;
  sub_1DD55D704(*(v80 + 472));
  v78[59] = v138;
  sub_1DD55D704(*(v80 + 480));
  v78[60] = v139;
  sub_1DD55D704(*(v80 + 488));
  v78[61] = v140;
  sub_1DD55D704(*(v80 + 496));
  v78[62] = v141;
  sub_1DD55D704(*(v80 + 504));
  v78[63] = v142;
  sub_1DD55D704(*(v80 + 512));
  v78[64] = v143;
  sub_1DD55D704(*(v80 + 520));
  v78[65] = v144;
  sub_1DD55D704(*(v80 + 528));
  v78[66] = v145;
  sub_1DD55D704(*(v80 + 536));
  v78[67] = v146;
  sub_1DD55D704(*(v80 + 544));
  v78[68] = v147;
  sub_1DD55D704(*(v80 + 552));
  v78[69] = v148;
  sub_1DD55D704(*(v80 + 560));
  v78[70] = v149;
  sub_1DD55D704(*(v80 + 568));
  v78[71] = v150;
  sub_1DD55D704(*(v80 + 576));
  v78[72] = v151;
  sub_1DD55D704(*(v80 + 584));
  v78[73] = v152;
  sub_1DD55D704(*(v80 + 592));
  v78[74] = v153;
  sub_1DD55D704(*(v80 + 600));
  v78[75] = v154;
  sub_1DD55D704(*(v80 + 608));
  v78[76] = v155;
  sub_1DD55D704(*(v80 + 616));
  v78[77] = v156;
  sub_1DD55D704(*(v80 + 624));
  v78[78] = v157;
  sub_1DD55D704(*(v80 + 632));
  v78[79] = v158;
  sub_1DD55D704(*(v80 + 640));
  v78[80] = v159;
  sub_1DD55D704(*(v80 + 648));
  v78[81] = v160;
  sub_1DD55D704(*(v80 + 656));
  v78[82] = v161;
  sub_1DD55D704(*(v80 + 664));
  v78[83] = v162;
  sub_1DD55D704(*(v80 + 672));
  v78[84] = v163;
  sub_1DD55D704(*(v80 + 680));
  v78[85] = v164;
  sub_1DD55D704(*(v80 + 688));
  v78[86] = v165;
  sub_1DD55D704(*(v80 + 696));
  v78[87] = v166;
  sub_1DD55D704(*(v80 + 704));
  v78[88] = v167;
  sub_1DD55D704(*(v80 + 712));
  v78[89] = v168;
  sub_1DD55D704(*(v80 + 720));
  v78[90] = v169;
  sub_1DD55D704(*(v80 + 728));
  v78[91] = v170;
  sub_1DD55D704(*(v80 + 736));
  v78[92] = v171;
  sub_1DD55D704(*(v80 + 744));
  v78[93] = v172;
  sub_1DD55D704(*(v80 + 752));
  v78[94] = v173;
  sub_1DD55D704(*(v80 + 760));
  v78[95] = v174;
  sub_1DD55D704(*(v80 + 768));
  v78[96] = v175;
  sub_1DD55D704(*(v80 + 776));
  v78[97] = v176;
  sub_1DD55D704(*(v80 + 784));
  v78[98] = v177;
  sub_1DD55D704(*(v80 + 792));
  v78[99] = v178;
  sub_1DD55D704(*(v80 + 800));
  v78[100] = v179;
  sub_1DD55D704(*(v80 + 808));
  v78[101] = v180;
  sub_1DD55D704(*(v80 + 816));
  v78[102] = v181;
  sub_1DD55D704(*(v80 + 824));
  v78[103] = v182;
  sub_1DD55D704(*(v80 + 832));
  v78[104] = v183;
  sub_1DD55D704(*(v80 + 840));
  v78[105] = v184;
  sub_1DD55D704(*(v80 + 848));
  v78[106] = v185;
  sub_1DD55D704(*(v80 + 856));
  v78[107] = v186;
  sub_1DD55D704(*(v80 + 864));
  v78[108] = v187;
  sub_1DD55D704(*(v80 + 872));
  v78[109] = v188;
  sub_1DD55D704(*(v80 + 880));
  v78[110] = v189;
  sub_1DD55D704(*(v80 + 888));
  v78[111] = v190;
  sub_1DD55D704(*(v80 + 896));
  v78[112] = v191;
  sub_1DD55D704(*(v80 + 904));
  v78[113] = v192;
  v78[114] = *(v80 + 912);
  v78[115] = *(v80 + 920);
  v78[116] = *(v80 + 928);
  sub_1DD55D704(*(v80 + 936));
  v78[117] = v193;
  sub_1DD55D704(*(v80 + 944));
  v78[118] = v194;
  sub_1DD55D704(*(v80 + 952));
  v78[119] = v195;
  sub_1DD55D704(*(v80 + 960));
  v78[120] = v196;
  v197 = *(v56 + 272);
  v198 = *(v197 + 16);
  v199 = MEMORY[0x1E69E7CC0];
  if (v198)
  {
    v238 = MEMORY[0x1E69E7CC0];
    sub_1DD42B7EC(0, v198, 0);
    OUTLINED_FUNCTION_3_51();
    v201 = v197 + v200;
    v226 = v51 - 8;
    v199 = v238;
    v227 = *(v202 + 72);
    v228 = v51;
    do
    {
      v203 = v236;
      sub_1DD4DDC08(v201, v236, &qword_1ECCDBBD8, &unk_1DD645A90);
      sub_1DD5640D4(v203 + *(v233 + 36), v12, type metadata accessor for ContactResolver.HandleSignalSet);
      *v8 = *v12;
      v8[1] = v12[1];
      v8[2] = v12[2];
      v8[3] = v12[3];
      v8[4] = v12[4];
      v204 = v230;
      sub_1DD4DDC08(&v12[*(v237 + 36)], v230, &qword_1ECCDCB80, &qword_1DD64A0E0);
      OUTLINED_FUNCTION_27_22(v204);
      if (v52)
      {
        sub_1DD390754(v204, &qword_1ECCDCB80, &qword_1DD64A0E0);
        v206 = 1;
        v205 = v229;
      }

      else
      {
        v205 = v229;
        sub_1DD63F0D8();
        (*(*(v51 - 8) + 8))(v204, v51);
        v206 = 0;
      }

      __swift_storeEnumTagSinglePayload(v205, v206, 1, v235);
      v207 = *(v232 + 36);
      sub_1DD4DDCBC(v205, &v8[v4[9]], &qword_1ECCDE510, &qword_1DD65BA20);
      v208 = v237;
      v209 = v12[*(v237 + 40)];
      v8[v4[10]] = v209;
      v8[v4[11]] = v209;
      v8[v4[12]] = v209;
      v8[v4[13]] = v12[v208[11]];
      v8[v4[14]] = v12[v208[12]];
      v8[v4[15]] = v12[v208[13]];
      v210 = v12[v208[14]];
      sub_1DD564134(v12, type metadata accessor for ContactResolver.HandleSignalSet);
      v8[v4[16]] = v210;
      v211 = v234;
      sub_1DD56418C(v8, &v234[v207]);
      v212 = v236;
      v214 = *(v236 + 56);
      v213 = *(v236 + 64);

      sub_1DD390754(v212, &qword_1ECCDBBD8, &unk_1DD645A90);
      *v211 = v214;
      v211[1] = v213;
      v238 = v199;
      v216 = *(v199 + 16);
      v215 = *(v199 + 24);
      if (v216 >= v215 >> 1)
      {
        sub_1DD42B7EC((v215 > 1), v216 + 1, 1);
        v211 = v234;
        v199 = v238;
      }

      *(v199 + 16) = v216 + 1;
      OUTLINED_FUNCTION_3_51();
      sub_1DD4DDCBC(v211, v199 + v217 + *(v218 + 72) * v216, &qword_1ECCDBD78, &unk_1DD644390);
      v201 += v227;
      --v198;
      v51 = v228;
    }

    while (v198);
    v56 = v224;
  }

  result = sub_1DD564134(v56, type metadata accessor for ContactResolver.SignalSet);
  *(v223 + v225[40]) = v199;
  return result;
}

void sub_1DD55EDF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1DD55D704(*(a1 + 8));
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_16:

    return;
  }

  v13 = MEMORY[0x1E69E7CC0];
  sub_1DD42B80C(0, v2, 0);
  v3 = (v1 + 112);
  while (1)
  {
    v4 = *(v3 - 3);
    v5 = *(v3 - 2);
    v6 = *v3;
    if (*v3 != 0.0)
    {
      break;
    }

LABEL_13:
    v10 = *(v13 + 16);
    v11 = *(v13 + 24);

    if (v10 >= v11 >> 1)
    {
      sub_1DD42B80C(v11 > 1, v10 + 1, 1);
    }

    *(v13 + 16) = v10 + 1;
    v12 = v13 + 24 * v10;
    *(v12 + 32) = v4;
    *(v12 + 40) = v5;
    *(v12 + 48) = v6;
    v3 += 11;
    if (!--v2)
    {
      goto LABEL_16;
    }
  }

  v7 = log10(fabs(v6));
  if (v7 >= 0.0)
  {
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    if (v7 <= -9.22337204e18)
    {
      goto LABEL_21;
    }

    v8 = -1.0;
    if (v7 >= 9.22337204e18)
    {
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v7 <= -9.22337204e18)
    {
      goto LABEL_20;
    }

    v8 = -2.0;
    if (v7 >= 9.22337204e18)
    {
      goto LABEL_22;
    }

LABEL_12:
    v9 = __exp10(v8 + v7);
    v6 = v9 * round(v6 / v9);
    goto LABEL_13;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

BOOL sub_1DD55EFCC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1DD63F378();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE510, &qword_1DD65BA20);
  v12 = OUTLINED_FUNCTION_3(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v68 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBE8, &qword_1DD65BA28);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v68 - v29;
  v31 = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 8), *(a2 + 8)), vceqq_s64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && ((*a1 ^ *a2) & 1) == 0 && *(a1 + 5) == *(a2 + 5))
  {
    if (a1[48] != a2[48])
    {
      return 0;
    }

    if (a1[49] != a2[49])
    {
      return 0;
    }

    if (a1[50] != a2[50])
    {
      return 0;
    }

    if (a1[51] != a2[51])
    {
      return 0;
    }

    if (a1[52] != a2[52])
    {
      return 0;
    }

    if (a1[53] != a2[53])
    {
      return 0;
    }

    if (a1[54] != a2[54])
    {
      return 0;
    }

    if (a1[55] != a2[55])
    {
      return 0;
    }

    if (a1[56] != a2[56])
    {
      return 0;
    }

    if (a1[57] != a2[57])
    {
      return 0;
    }

    if (*(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }

    if (*(a1 + 9) != *(a2 + 9))
    {
      return 0;
    }

    if (a1[80] != a2[80])
    {
      return 0;
    }

    v74 = v28;
    v75 = v27;
    v73 = v15;
    if (a1[81] != a2[81] || a1[82] != a2[82] || a1[83] != a2[83] || *(a1 + 11) != *(a2 + 11) || *(a1 + 12) != *(a2 + 12) || *(a1 + 13) != *(a2 + 13))
    {
      return 0;
    }

    v32 = type metadata accessor for PrivatizedSignalSet(0);
    v33 = *(v32 + 96);
    v70 = v32;
    v71 = v33;
    v72 = *(v75 + 48);
    sub_1DD4DDC08(&a1[v33], v30, &qword_1ECCDE510, &qword_1DD65BA20);
    sub_1DD4DDC08(&a2[v71], &v30[v72], &qword_1ECCDE510, &qword_1DD65BA20);
    OUTLINED_FUNCTION_105(v30);
    if (v34)
    {
      OUTLINED_FUNCTION_105(&v30[v72]);
      if (v34)
      {
        sub_1DD390754(v30, &qword_1ECCDE510, &qword_1DD65BA20);
        goto LABEL_33;
      }
    }

    else
    {
      sub_1DD4DDC08(v30, v21, &qword_1ECCDE510, &qword_1DD65BA20);
      OUTLINED_FUNCTION_105(&v30[v72]);
      if (!v34)
      {
        OUTLINED_FUNCTION_44_14();
        v69 = v30;
        v68 = v10;
        v36(v10, &v30[v72], v4);
        OUTLINED_FUNCTION_0_116();
        sub_1DD563408(v37);
        LODWORD(v72) = sub_1DD63FD98();
        v38 = *(v6 + 8);
        v38(v68, v4);
        v38(v21, v4);
        sub_1DD390754(v69, &qword_1ECCDE510, &qword_1DD65BA20);
        if ((v72 & 1) == 0)
        {
          return 0;
        }

LABEL_33:
        v39 = v70[25];
        v40 = *(v75 + 48);
        sub_1DD4DDC08(&a1[v39], v25, &qword_1ECCDE510, &qword_1DD65BA20);
        v72 = v40;
        sub_1DD4DDC08(&a2[v39], &v25[v40], &qword_1ECCDE510, &qword_1DD65BA20);
        OUTLINED_FUNCTION_105(v25);
        if (v34)
        {
          OUTLINED_FUNCTION_105(&v25[v72]);
          if (v34)
          {
            sub_1DD390754(v25, &qword_1ECCDE510, &qword_1DD65BA20);
LABEL_43:
            v49 = v70[26];
            v50 = v74;
            v51 = *(v75 + 48);
            sub_1DD4DDC08(&a1[v49], v74, &qword_1ECCDE510, &qword_1DD65BA20);
            sub_1DD4DDC08(&a2[v49], v50 + v51, &qword_1ECCDE510, &qword_1DD65BA20);
            OUTLINED_FUNCTION_105(v50);
            if (v34)
            {
              OUTLINED_FUNCTION_105(v74 + v51);
              if (v34)
              {
                sub_1DD390754(v74, &qword_1ECCDE510, &qword_1DD65BA20);
LABEL_56:
                OUTLINED_FUNCTION_30();
                if (v34)
                {
                  OUTLINED_FUNCTION_30();
                  if (v34)
                  {
                    OUTLINED_FUNCTION_30();
                    if (v34)
                    {
                      OUTLINED_FUNCTION_30();
                      if (v34)
                      {
                        OUTLINED_FUNCTION_30();
                        if (v34)
                        {
                          OUTLINED_FUNCTION_30();
                          if (v34)
                          {
                            OUTLINED_FUNCTION_30();
                            if (v34)
                            {
                              OUTLINED_FUNCTION_30();
                              if (v34)
                              {
                                OUTLINED_FUNCTION_30();
                                if (v34)
                                {
                                  v61 = v70[36];
                                  v62 = *&a1[v61];
                                  v63 = *&a1[v61 + 8];
                                  v64 = &a2[v61];
                                  v65 = v62 == *v64 && v63 == *(v64 + 1);
                                  if (v65 || (sub_1DD640CD8() & 1) != 0)
                                  {
                                    OUTLINED_FUNCTION_30();
                                    if (v34)
                                    {
                                      OUTLINED_FUNCTION_30();
                                      if (v34)
                                      {
                                        v66 = v70[39];
                                        v67 = *&a1[v66 + 16];
                                        v76[0] = *&a1[v66];
                                        v76[1] = v67;
                                        v76[2] = *&a1[v66 + 32];
                                        v77 = *&a1[v66 + 48];
                                        OUTLINED_FUNCTION_25_18(v66);
                                        if (sub_1DD585198(v76, v78) && (sub_1DD3C4410(*&a1[v70[40]], *&a2[v70[40]]) & 1) != 0)
                                        {
                                          OUTLINED_FUNCTION_30();
                                          if (v34)
                                          {
                                            OUTLINED_FUNCTION_30();
                                            if (v34)
                                            {
                                              OUTLINED_FUNCTION_30();
                                              if (v34)
                                              {
                                                if (*&a1[v70[44]] == *&a2[v70[44]])
                                                {
                                                  OUTLINED_FUNCTION_30();
                                                  if (v34)
                                                  {
                                                    OUTLINED_FUNCTION_30();
                                                    if (v34)
                                                    {
                                                      OUTLINED_FUNCTION_30();
                                                      if (v34)
                                                      {
                                                        if (*&a1[v70[48]] == *&a2[v70[48]])
                                                        {
                                                          type metadata accessor for MegadomeEntityFeatures();
                                                          return static MegadomeEntityFeatures.== infix(_:_:)(*&a1[v70[49]], *&a2[v70[49]]);
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                return 0;
              }
            }

            else
            {
              v52 = v74;
              sub_1DD4DDC08(v74, v73, &qword_1ECCDE510, &qword_1DD65BA20);
              OUTLINED_FUNCTION_105(v52 + v51);
              if (!v53)
              {
                OUTLINED_FUNCTION_44_14();
                v55 = v74;
                v56(v10, v74 + v51, v4);
                OUTLINED_FUNCTION_0_116();
                sub_1DD563408(v57);
                v58 = v73;
                OUTLINED_FUNCTION_40();
                v59 = sub_1DD63FD98();
                v60 = *(v6 + 8);
                v60(v10, v4);
                v60(v58, v4);
                sub_1DD390754(v55, &qword_1ECCDE510, &qword_1DD65BA20);
                if (v59)
                {
                  goto LABEL_56;
                }

                return 0;
              }

              (*(v6 + 8))(v73, v4);
            }

            v35 = v74;
LABEL_52:
            sub_1DD390754(v35, &qword_1ECCDEBE8, &qword_1DD65BA28);
            return 0;
          }
        }

        else
        {
          sub_1DD4DDC08(v25, v18, &qword_1ECCDE510, &qword_1DD65BA20);
          OUTLINED_FUNCTION_105(&v25[v72]);
          if (!v41)
          {
            OUTLINED_FUNCTION_44_14();
            v44(v10, &v25[v72], v4);
            OUTLINED_FUNCTION_0_116();
            v46 = sub_1DD563408(v45);
            LODWORD(v72) = OUTLINED_FUNCTION_48_14(v46);
            v47 = *(v6 + 8);
            v47(v10, v4);
            v48 = OUTLINED_FUNCTION_47_10();
            (v47)(v48);
            sub_1DD390754(v25, &qword_1ECCDE510, &qword_1DD65BA20);
            if ((v72 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_43;
          }

          v42 = OUTLINED_FUNCTION_47_10();
          v43(v42);
        }

        v35 = v25;
        goto LABEL_52;
      }

      (*(v6 + 8))(v21, v4);
    }

    v35 = v30;
    goto LABEL_52;
  }

  return v31;
}