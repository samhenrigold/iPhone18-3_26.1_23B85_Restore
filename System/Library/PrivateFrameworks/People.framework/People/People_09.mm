uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22F0A2E48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22F0A2EA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of BundleResolver.fetchAppInfo(bundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22F00CD54;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AppBundleResolver.fetchAppInfo(bundleId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 112) + **(*v3 + 112));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22F00CF60;

  return v10(a1, a2, a3);
}

uint64_t type metadata accessor for AppBundleResolver.AppInfo(uint64_t a1)
{
  result = qword_27DAA20A0;
  if (!qword_27DAA20A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22F0A32B0()
{
  result = qword_27DAA2088;
  if (!qword_27DAA2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2088);
  }

  return result;
}

uint64_t sub_22F0A3304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppBundleResolver.AppInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F0A3368(uint64_t a1)
{
  v2 = type metadata accessor for AppBundleResolver.AppInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F0A33C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppBundleResolver.AppInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

void sub_22F0A3440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 != 1)
  {

    sub_22F00AB48(a5, a6);
  }
}

uint64_t sub_22F0A34A4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2090, &qword_22F0DAC48);

  return sub_22F0A0C14(a1);
}

unint64_t sub_22F0A3520()
{
  result = qword_27DAA2098;
  if (!qword_27DAA2098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAA2098);
  }

  return result;
}

void sub_22F0A35A4(uint64_t a1)
{
  sub_22F08A8D4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_22F0A361C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22F0D174C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void *sub_22F0A3668(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA20B0, &qword_22F0DACD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F0A37EC();
  sub_22F0D19EC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA20C0, &qword_22F0DACE0);
    sub_22F0A3840();
    sub_22F0D17BC();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

unint64_t sub_22F0A37EC()
{
  result = qword_27DAA20B8;
  if (!qword_27DAA20B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA20B8);
  }

  return result;
}

unint64_t sub_22F0A3840()
{
  result = qword_27DAA20C8;
  if (!qword_27DAA20C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA20C0, &qword_22F0DACE0);
    sub_22F0A3948(&qword_27DAA20D0, type metadata accessor for AppBundleResolver.AppInfo, &unk_22F0DAC84);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA20C8);
  }

  return result;
}

unint64_t sub_22F0A38F4()
{
  result = qword_27DAA20E0;
  if (!qword_27DAA20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA20E0);
  }

  return result;
}

uint64_t sub_22F0A3948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22F0A39B4()
{
  result = qword_27DAA20F0;
  if (!qword_27DAA20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA20F0);
  }

  return result;
}

unint64_t sub_22F0A3A0C()
{
  result = qword_27DAA20F8;
  if (!qword_27DAA20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA20F8);
  }

  return result;
}

unint64_t sub_22F0A3A64()
{
  result = qword_27DAA2100;
  if (!qword_27DAA2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2100);
  }

  return result;
}

unint64_t sub_22F0A3ABC()
{
  result = qword_27DAA2108;
  if (!qword_27DAA2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2108);
  }

  return result;
}

unint64_t sub_22F0A3B14()
{
  result = qword_27DAA2110;
  if (!qword_27DAA2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2110);
  }

  return result;
}

unint64_t sub_22F0A3B6C()
{
  result = qword_27DAA2118;
  if (!qword_27DAA2118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2118);
  }

  return result;
}

void *StatusWithTime.dates.getter()
{
  v20 = sub_22F0D05BC();
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_17;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      v18 = v4 & 0xFFFFFFFFFFFFFF8;
      v19 = v4 & 0xC000000000000001;
      v7 = MEMORY[0x277D84F90];
      v8 = v4;
      while (1)
      {
        if (v19)
        {
          v9 = MEMORY[0x2318FDAB0](v6, v4);
        }

        else
        {
          if (v6 >= *(v18 + 16))
          {
            goto LABEL_16;
          }

          v9 = *(v4 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v9 doubleValue];
        sub_22F0D04BC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_22F03D67C(0, v7[2] + 1, 1, v7);
        }

        v13 = v7[2];
        v12 = v7[3];
        if (v13 >= v12 >> 1)
        {
          v7 = sub_22F03D67C((v12 > 1), v13 + 1, 1, v7);
        }

        v7[2] = v13 + 1;
        (*(v1 + 32))(v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13, v3, v20);
        ++v6;
        v4 = v8;
        if (v11 == v5)
        {
          return v7;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v14 = v4;
      v15 = sub_22F0D143C();
      v4 = v14;
      v5 = v15;
    }

    while (v15);
  }

  return MEMORY[0x277D84F90];
}

void sub_22F0A3DEC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22F0D05BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v19 = a2;
    v21 = MEMORY[0x277D84F90];
    sub_22F0D161C();
    v9 = v5 + 16;
    v20 = *(v5 + 16);
    v10 = *(v5 + 80);
    v18 = a1;
    v11 = a1 + ((v10 + 32) & ~v10);
    v12 = *(v9 + 56);
    v13 = (v9 - 8);
    do
    {
      v20(v7, v11, v4);
      sub_22F0D04CC();
      v15 = v14;
      v16 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      [v16 initWithDouble_];
      (*v13)(v7, v4);
      sub_22F0D15EC();
      sub_22F0D162C();
      sub_22F0D163C();
      sub_22F0D15FC();
      v11 += v12;
      --v8;
    }

    while (v8);

    v17 = v21;
    a2 = v19;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  *a2 = v17;
}

void sub_22F0A40A0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22F0D0C7C();
  v2 = [v0 initWithSuiteName_];

  qword_27DAACF08 = v2;
}

void sub_22F0A4110()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22F0D0C7C();
  v2 = [v0 initWithSuiteName_];

  qword_280CC1268 = v2;
}

uint64_t sub_22F0A4180@<X0>(id a1@<X2>, uint64_t a2@<X8>)
{
  [a1 synchronize];
  v4 = sub_22F0D0C7C();
  v5 = [a1 valueForKey_];

  if (v5)
  {
    sub_22F0D13CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_22F003A4C(v12, &qword_27DAA1270, &qword_22F0D7240);
    goto LABEL_8;
  }

  sub_22F04CF78();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  [v9 doubleValue];
  sub_22F0D04BC();

  v6 = 0;
LABEL_9:
  v7 = sub_22F0D05BC();
  return (*(*(v7 - 8) + 56))(a2, v6, 1, v7);
}

uint64_t sub_22F0A42E4(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_22F0D06FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_22F0D05BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F0A4180(a3, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22F003A4C(v12, &qword_27DAA1440, &unk_22F0D65F0);
    return 1;
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_22F0D06EC();
  v17 = sub_22F0D06DC();
  (*(v7 + 8))(v9, v6);
  if ((v17 & 1) == 0)
  {
    (*(v14 + 8))(v16, v13);
    return 1;
  }

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v18 = sub_22F0D0A1C();
  __swift_project_value_buffer(v18, qword_280CBEC40);
  sub_22F0CFF1C();
  v19 = sub_22F0D09FC();
  v20 = sub_22F0D122C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_22F00A560(0xD000000000000016, 0x800000022F0DF920, &v25);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_22F00A560(a1, a2, &v25);
    _os_log_impl(&dword_22EFE1000, v19, v20, "%s %s is still today", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v22, -1, -1);
    MEMORY[0x2318FE8B0](v21, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  return 0;
}

id static MetricTemplate.displayTimeEnabled.getter()
{
  if (qword_280CBEF20 != -1)
  {
    swift_once();
  }

  [qword_280CBEF28 synchronize];
  v0 = qword_280CBEF28;
  v1 = sub_22F0D0C7C();
  v2 = [v0 BOOLForKey_];

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v3 = sub_22F0D0A1C();
  __swift_project_value_buffer(v3, qword_280CBEC40);
  v4 = sub_22F0D09FC();
  v5 = sub_22F0D122C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_22F00A560(0xD000000000000012, 0x800000022F0DF820, &v9);
    *(v6 + 12) = 1024;
    *(v6 + 14) = v2;
    _os_log_impl(&dword_22EFE1000, v4, v5, "%s value %{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x2318FE8B0](v7, -1, -1);
    MEMORY[0x2318FE8B0](v6, -1, -1);
  }

  return v2;
}

uint64_t static MetricTemplate.keyForKind(_:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22F0CFF1C();
  MEMORY[0x2318FD2C0](46, 0xE100000000000000);
  MEMORY[0x2318FD2C0](a1, a2);
  return a3;
}

void static MetricTemplate.updateRefreshRequestedCount(for:)(NSObject *a1, uint64_t a2)
{
  v4 = sub_22F0D06FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F0D05BC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  if (_s6People14MetricTemplateO14metricsEnabledSbvgZ_0())
  {
    if (qword_280CBD6C8 != -1)
    {
      swift_once();
    }

    if (qword_280CC1268)
    {
      v51 = a2;
      v52 = a1;
      v50 = v8;
      v15 = qword_280CC1268;
      v16 = &off_278879000;
      if (sub_22F0A42E4(0xD000000000000010, 0x800000022F0DF7A0, v15))
      {
        sub_22F0A8018();
        sub_22F0D06EC();
        sub_22F0D05AC();
        sub_22F0D06CC();
        v49 = v9;
        v17 = *(v9 + 8);
        v18 = v12;
        v19 = v50;
        v17(v18, v50);
        (*(v5 + 8))(v7, v4);
        sub_22F0D04CC();
        v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        v22 = sub_22F0D0C7C();
        [v15 setValue:v21 forKey:v22];

        [v15 synchronize];
        v17(v14, v19);
        v16 = &off_278879000;
        v9 = v49;
      }

      strcpy(v53, "requestedCount");
      HIBYTE(v53[1]) = -18;
      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      v23 = v51;
      MEMORY[0x2318FD2C0](v52, v51);
      v25 = v53[0];
      v24 = v53[1];
      sub_22F0CFF1C();
      v26 = sub_22F0A6A60(v25, v24, v15);

      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
      }

      else
      {
        v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_22F0CFF1C();
        v29 = sub_22F0D0C7C();

        [v15 v16[459]];

        if (qword_280CBEC38 == -1)
        {
LABEL_9:
          v30 = sub_22F0D0A1C();
          __swift_project_value_buffer(v30, qword_280CBEC40);
          v31 = sub_22F0D09FC();
          v32 = sub_22F0D122C();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = v9;
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v53[0] = v35;
            *v34 = 136315650;
            *(v34 + 4) = sub_22F00A560(0xD000000000000021, 0x800000022F0DF840, v53);
            *(v34 + 12) = 2080;
            sub_22F0CFF1C();
            v36 = sub_22F00A560(v25, v24, v53);

            *(v34 + 14) = v36;
            *(v34 + 22) = 2048;
            *(v34 + 24) = v27;
            _os_log_impl(&dword_22EFE1000, v31, v32, "%s requestTime count for %s: %ld", v34, 0x20u);
            swift_arrayDestroy();
            v37 = v35;
            v23 = v51;
            MEMORY[0x2318FE8B0](v37, -1, -1);
            v38 = v34;
            v9 = v33;
            v16 = &off_278879000;
            MEMORY[0x2318FE8B0](v38, -1, -1);
          }

          v53[0] = 0x757165527473616CLL;
          v53[1] = 0xEF656D6954747365;
          MEMORY[0x2318FD2C0](46, 0xE100000000000000);
          MEMORY[0x2318FD2C0](v52, v23);

          sub_22F0D05AC();
          sub_22F0CFF1C();
          sub_22F0D04CC();
          v40 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          v41 = sub_22F0D0C7C();

          [v15 v16[459]];

          [v15 synchronize];
          (*(v9 + 8))(v14, v50);
          [v15 synchronize];

          return;
        }
      }

      swift_once();
      goto LABEL_9;
    }

    if (qword_280CBDB70 != -1)
    {
      swift_once();
    }

    v47 = sub_22F0D0A1C();
    __swift_project_value_buffer(v47, qword_280CBDB78);
    v52 = sub_22F0D09FC();
    v43 = sub_22F0D123C();
    if (os_log_type_enabled(v52, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v53[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_22F00A560(0xD000000000000021, 0x800000022F0DF840, v53);
      v46 = "%s no daemon defaults found";
      goto LABEL_20;
    }
  }

  else
  {
    if (qword_280CBDB70 != -1)
    {
      swift_once();
    }

    v42 = sub_22F0D0A1C();
    __swift_project_value_buffer(v42, qword_280CBDB78);
    v52 = sub_22F0D09FC();
    v43 = sub_22F0D122C();
    if (os_log_type_enabled(v52, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v53[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_22F00A560(0xD000000000000021, 0x800000022F0DF840, v53);
      v46 = "%s not enabled";
LABEL_20:
      _os_log_impl(&dword_22EFE1000, v52, v43, v46, v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x2318FE8B0](v45, -1, -1);
      MEMORY[0x2318FE8B0](v44, -1, -1);

      return;
    }
  }

  v48 = v52;
}

void static MetricTemplate.updateStatusCount(for:signaled:)(unsigned __int8 *a1, char a2)
{
  v4 = sub_22F0D06FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F0D05BC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v73 - v13;
  v15 = *a1;
  if (_s6People14MetricTemplateO14metricsEnabledSbvgZ_0())
  {
    if (qword_280CBD6C8 != -1)
    {
      swift_once();
    }

    if (qword_280CC1268)
    {
      v75 = v8;
      v76 = qword_280CC1268;
      if (sub_22F0A42E4(0xD000000000000010, 0x800000022F0DF7A0, v76))
      {
        sub_22F0A8018();
        sub_22F0D06EC();
        sub_22F0D05AC();
        sub_22F0D06CC();
        v16 = *(v9 + 8);
        v73 = "@NSURLResponse16@NSError24";
        v74 = v16;
        v17 = v12;
        v18 = v75;
        v16(v17, v75);
        (*(v5 + 8))(v7, v4);
        sub_22F0D04CC();
        v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        v21 = sub_22F0D0C7C();
        v22 = v76;
        [v76 setValue:v20 forKey:v21];

        [v22 synchronize];
        v74(v14, v18);
      }

      v23 = 0xEF7974696C696261;
      v24 = 0x6C69617641646E64;
      if (a2)
      {
        v25 = v76;
        if (v15 > 4)
        {
          v49 = 0x7373654D64616572;
          v50 = 0xEB00000000656761;
          v51 = 0x614364657373696DLL;
          v52 = 0xEA00000000006C6CLL;
          if (v15 != 8)
          {
            v51 = 0x7261646E656C6163;
            v52 = 0xE800000000000000;
          }

          if (v15 != 7)
          {
            v49 = v51;
            v50 = v52;
          }

          v53 = 0x617453646C696863;
          v54 = 0xEA00000000006574;
          if (v15 != 5)
          {
            v53 = 0x654D646165726E75;
            v54 = 0xED00006567617373;
          }

          if (v15 <= 6)
          {
            v30 = v53;
          }

          else
          {
            v30 = v49;
          }

          if (v15 <= 6)
          {
            v31 = v54;
          }

          else
          {
            v31 = v50;
          }
        }

        else
        {
          v26 = 0xE800000000000000;
          v27 = 0x6E6F697461636F6CLL;
          v28 = 0x7975426F546B7361;
          v29 = 0xEF74736575716552;
          if (v15 != 3)
          {
            v28 = 0xD000000000000011;
            v29 = 0x800000022F0DC350;
          }

          if (v15 != 2)
          {
            v27 = v28;
            v26 = v29;
          }

          if (v15)
          {
            v24 = 0x74536E6F69746F6DLL;
            v23 = 0xEB00000000657461;
          }

          if (v15 <= 1)
          {
            v30 = v24;
          }

          else
          {
            v30 = v27;
          }

          if (v15 <= 1)
          {
            v31 = v23;
          }

          else
          {
            v31 = v26;
          }
        }
      }

      else
      {
        v25 = v76;
        if (v15 > 4)
        {
          v46 = 0x7373654D64616572;
          v55 = 0xEB00000000656761;
          v56 = 0x614364657373696DLL;
          v57 = 0xEA00000000006C6CLL;
          if (v15 != 8)
          {
            v56 = 0x7261646E656C6163;
            v57 = 0xE800000000000000;
          }

          if (v15 != 7)
          {
            v46 = v56;
            v55 = v57;
          }

          v58 = 0x617453646C696863;
          v59 = 0xEA00000000006574;
          if (v15 != 5)
          {
            v58 = 0x654D646165726E75;
            v59 = 0xED00006567617373;
          }

          if (v15 > 6)
          {
            v47 = v55;
          }

          else
          {
            v46 = v58;
            v47 = v59;
          }
        }

        else
        {
          v41 = 0xE800000000000000;
          v42 = 0x6E6F697461636F6CLL;
          v43 = 0x7975426F546B7361;
          v44 = 0x800000022F0DC350;
          if (v15 == 3)
          {
            v44 = 0xEF74736575716552;
          }

          else
          {
            v43 = 0xD000000000000011;
          }

          if (v15 != 2)
          {
            v42 = v43;
            v41 = v44;
          }

          v45 = 0xEB00000000657461;
          if (v15)
          {
            v24 = 0x74536E6F69746F6DLL;
          }

          else
          {
            v45 = 0xEF7974696C696261;
          }

          if (v15 <= 1)
          {
            v46 = v24;
          }

          else
          {
            v46 = v42;
          }

          if (v15 <= 1)
          {
            v47 = v45;
          }

          else
          {
            v47 = v41;
          }
        }

        v79 = v46;
        v80 = v47;
        sub_22F0CFF1C();
        MEMORY[0x2318FD2C0](0x6465726F6E67692ELL, 0xE800000000000000);

        v30 = v79;
        v31 = v80;
      }

      sub_22F0A5BE8(v25, &v79);
      sub_22F04CF78();
      v60 = sub_22F0D0F2C();

      v61 = sub_22F0D0C7C();
      [v25 setValue:v60 forKey:v61];

      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v62 = sub_22F0D0A1C();
      __swift_project_value_buffer(v62, qword_280CBEC40);
      v63 = v25;
      sub_22F0CFF1C();
      v64 = sub_22F0D09FC();
      v65 = sub_22F0D122C();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v79 = v67;
        *v66 = 136315650;
        *(v66 + 4) = sub_22F00A560(0xD000000000000020, 0x800000022F0DF870, &v79);
        *(v66 + 12) = 2080;
        *(v66 + 14) = sub_22F00A560(v30, v31, &v79);
        *(v66 + 22) = 2080;
        sub_22F0A5BE8(v63, &v78);

        v77 = v78;
        v68 = StatusWithTime.dates.getter();

        v69 = MEMORY[0x2318FD490](v68, v75);
        v71 = v70;

        v72 = sub_22F00A560(v69, v71, &v79);

        *(v66 + 24) = v72;
        _os_log_impl(&dword_22EFE1000, v64, v65, "%s requestTime count for %s: %s", v66, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2318FE8B0](v67, -1, -1);
        MEMORY[0x2318FE8B0](v66, -1, -1);
      }

      else
      {
      }

      [v63 synchronize];
    }

    else
    {
      if (qword_280CBDB70 != -1)
      {
        swift_once();
      }

      v37 = sub_22F0D0A1C();
      __swift_project_value_buffer(v37, qword_280CBDB78);
      v76 = sub_22F0D09FC();
      v38 = sub_22F0D123C();
      if (os_log_type_enabled(v76, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v79 = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_22F00A560(0xD000000000000020, 0x800000022F0DF870, &v79);
        _os_log_impl(&dword_22EFE1000, v76, v38, "%s no daemon defaults found", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        MEMORY[0x2318FE8B0](v40, -1, -1);
        MEMORY[0x2318FE8B0](v39, -1, -1);
      }

      else
      {
        v48 = v76;
      }
    }
  }

  else
  {
    if (qword_280CBDB70 != -1)
    {
      swift_once();
    }

    v32 = sub_22F0D0A1C();
    __swift_project_value_buffer(v32, qword_280CBDB78);
    v33 = sub_22F0D09FC();
    v34 = sub_22F0D122C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v79 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_22F00A560(0xD000000000000020, 0x800000022F0DF870, &v79);
      _os_log_impl(&dword_22EFE1000, v33, v34, "%s not enabled", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x2318FE8B0](v36, -1, -1);
      MEMORY[0x2318FE8B0](v35, -1, -1);
    }

    sub_22F0A8018();
  }
}

uint64_t sub_22F0A5BE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22F0D05BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F0D05AC();
  v8 = sub_22F0D0C7C();
  v9 = [a1 valueForKey_];

  if (v9)
  {
    sub_22F0D13CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (!*(&v16 + 1))
  {
    sub_22F003A4C(v17, &qword_27DAA1270, &qword_22F0D7240);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2120, " ~");
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DA8, &qword_22F0D4F88);
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_22F0D2BF0;
    (*(v5 + 16))(v13 + v12, v7, v4);
    sub_22F0A3DEC(v13, a2);
    return (*(v5 + 8))(v7, v4);
  }

  v18 = v14[1];
  sub_22F0D04CC();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  MEMORY[0x2318FD450]();
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22F0D0F8C();
  }

  sub_22F0D0FEC();
  result = (*(v5 + 8))(v7, v4);
  *a2 = v18;
  return result;
}

void static MetricTemplate.updateTimelineCount(for:)(NSObject *a1, uint64_t a2)
{
  v4 = sub_22F0D06FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F0D05BC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  if (_s6People14MetricTemplateO14metricsEnabledSbvgZ_0())
  {
    if (qword_27DAA05F0 != -1)
    {
      swift_once();
    }

    if (qword_27DAACF08)
    {
      v54 = a1;
      v52 = a2;
      v15 = qword_27DAACF08;
      v16 = sub_22F0A42E4(0xD000000000000011, 0x800000022F0DF7C0, v15);
      v53 = v9;
      if (v16)
      {
        sub_22F0A7D80();
        sub_22F0D06EC();
        sub_22F0D05AC();
        sub_22F0D06CC();
        v51 = v8;
        v17 = v15;
        v18 = *(v53 + 8);
        v18(v12, v51);
        v19 = v18;
        v15 = v17;
        (*(v5 + 8))(v7, v4);
        sub_22F0D04CC();
        v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        v22 = sub_22F0D0C7C();
        [v17 setValue:v21 forKey:v22];

        [v17 synchronize];
        v19(v14, v51);
        v9 = v53;
        v8 = v51;
      }

      strcpy(v55, "timelineCount");
      HIWORD(v55[1]) = -4864;
      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      v23 = v52;
      MEMORY[0x2318FD2C0](v54, v52);
      v25 = v55[0];
      v24 = v55[1];
      sub_22F0CFF1C();
      v26 = sub_22F0A6A60(v25, v24, v15);

      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
      }

      else
      {
        v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_22F0CFF1C();
        v29 = sub_22F0D0C7C();

        [v15 setValue:v28 forKey:v29];

        if (qword_280CBEC38 == -1)
        {
LABEL_9:
          v30 = sub_22F0D0A1C();
          __swift_project_value_buffer(v30, qword_280CBEC40);
          v31 = sub_22F0D09FC();
          v32 = sub_22F0D122C();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v55[0] = v34;
            *v33 = 136315650;
            *(v33 + 4) = sub_22F00A560(0xD000000000000019, 0x800000022F0DF8A0, v55);
            *(v33 + 12) = 2080;
            sub_22F0CFF1C();
            v35 = sub_22F00A560(v25, v24, v55);

            *(v33 + 14) = v35;
            *(v33 + 22) = 2048;
            *(v33 + 24) = v27;
            _os_log_impl(&dword_22EFE1000, v31, v32, "%s timelineTime count for %s: %ld", v33, 0x20u);
            swift_arrayDestroy();
            v36 = v34;
            v23 = v52;
            MEMORY[0x2318FE8B0](v36, -1, -1);
            v37 = v33;
            v9 = v53;
            MEMORY[0x2318FE8B0](v37, -1, -1);
          }

          v55[0] = 0xD000000000000010;
          v55[1] = 0x800000022F0DF7E0;
          MEMORY[0x2318FD2C0](46, 0xE100000000000000);
          MEMORY[0x2318FD2C0](v54, v23);

          sub_22F0D05AC();
          sub_22F0CFF1C();
          sub_22F0D04CC();
          v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          v40 = sub_22F0D0C7C();

          [v15 setValue:v39 forKey:v40];

          [v15 synchronize];
          (*(v9 + 8))(v14, v8);

          return;
        }
      }

      swift_once();
      goto LABEL_9;
    }

    if (qword_280CBDB70 != -1)
    {
      swift_once();
    }

    v46 = sub_22F0D0A1C();
    __swift_project_value_buffer(v46, qword_280CBDB78);
    v54 = sub_22F0D09FC();
    v47 = sub_22F0D123C();
    if (os_log_type_enabled(v54, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v55[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_22F00A560(0xD000000000000019, 0x800000022F0DF8A0, v55);
      _os_log_impl(&dword_22EFE1000, v54, v47, "%s no widget defaults found", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x2318FE8B0](v49, -1, -1);
      MEMORY[0x2318FE8B0](v48, -1, -1);
    }

    else
    {
      v50 = v54;
    }
  }

  else
  {
    if (qword_280CBDB70 != -1)
    {
      swift_once();
    }

    v41 = sub_22F0D0A1C();
    __swift_project_value_buffer(v41, qword_280CBDB78);
    v42 = sub_22F0D09FC();
    v43 = sub_22F0D122C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v55[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_22F00A560(0xD000000000000019, 0x800000022F0DF8A0, v55);
      _os_log_impl(&dword_22EFE1000, v42, v43, "%s not enabled", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x2318FE8B0](v45, -1, -1);
      MEMORY[0x2318FE8B0](v44, -1, -1);
    }

    sub_22F0A7D80();
  }
}

id static MetricTemplate.allKeys()()
{
  if (qword_27DAA05F0 != -1)
  {
    swift_once();
  }

  if (qword_27DAACF08)
  {
    v0 = qword_280CBD6C8;
    v1 = qword_27DAACF08;
    if (v0 != -1)
    {
      swift_once();
    }

    if (qword_280CC1268)
    {
      v2 = qword_280CC1268;
      [v1 synchronize];
      [v2 synchronize];
      v22 = MEMORY[0x277D84F98];
      v3 = v1;
      v4 = v2;
      sub_22F0A6B7C(&unk_2843CB750, &v22, v4, v3);

      v5 = _s6People14MetricTemplateO18allStatusCountKeysSaySSGvgZ_0();
      v6 = v4;
      sub_22F0A6D5C(v5, v6, &v22);

      v7 = v6;
      sub_22F0A7004(&unk_2843CB750, v7, &v22);

      v8 = v3;
      sub_22F0A733C(&unk_2843CB750, v8, &v22);

      v9 = _s6People14MetricTemplateO14metricsEnabledSbvgZ_0();
      v21 = MEMORY[0x277D839B0];
      LOBYTE(v20[0]) = v9 & 1;
      sub_22EFFFA24(v20, v19);
      v10 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22F018078(v19, 0xD000000000000015, 0x800000022F0DF8C0, isUniquelyReferenced_nonNull_native);

      return v10;
    }
  }

  if (qword_280CBDB70 != -1)
  {
    swift_once();
  }

  v13 = sub_22F0D0A1C();
  __swift_project_value_buffer(v13, qword_280CBDB78);
  v14 = sub_22F0D09FC();
  v15 = sub_22F0D123C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_22F00A560(0x287379654B6C6C61, 0xE900000000000029, v20);
    _os_log_impl(&dword_22EFE1000, v14, v15, "%s failed to load all defaults", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x2318FE8B0](v17, -1, -1);
    MEMORY[0x2318FE8B0](v16, -1, -1);
  }

  v18 = MEMORY[0x277D84F90];

  return sub_22F07D454(v18);
}

id sub_22F0A6A60(int a1, int a2, id a3)
{
  [a3 synchronize];
  v4 = sub_22F0D0C7C();
  v5 = [a3 valueForKey_];

  if (v5)
  {
    sub_22F0D13CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    sub_22F04CF78();
    if (swift_dynamicCast())
    {
      v6 = [v8 integerValue];

      return v6;
    }
  }

  else
  {
    sub_22F003A4C(v11, &qword_27DAA1270, &qword_22F0D7240);
  }

  return 0;
}

void sub_22F0A6B7C(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = (a1 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      strcpy(&v18, "requestedCount");
      HIBYTE(v18) = -18;
      sub_22F0CFF1C();
      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      MEMORY[0x2318FD2C0](v9, v8);
      v10 = v18;
      v11 = sub_22F0A6A60(v18, SDWORD2(v18), a3);
      v19 = MEMORY[0x277D83B88];
      *&v18 = v11;
      sub_22EFFFA24(&v18, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *a2;
      sub_22F018078(v17, v10, *(&v10 + 1), isUniquelyReferenced_nonNull_native);

      *a2 = v20;
      strcpy(&v18, "timelineCount");
      HIWORD(v18) = -4864;
      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      MEMORY[0x2318FD2C0](v9, v8);
      v13 = v18;
      v14 = sub_22F0A6A60(v18, SDWORD2(v18), a4);
      v19 = MEMORY[0x277D83B88];
      *&v18 = v14;
      sub_22EFFFA24(&v18, v17);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *a2;
      sub_22F018078(v17, v13, *(&v13 + 1), v15);

      *a2 = v20;

      v7 += 2;
      --v4;
    }

    while (v4);
  }
}

void sub_22F0A6D5C(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v4 = a3;
  v5 = a2;
  for (i = (a1 + 40); ; i += 2)
  {
    v7 = *(i - 1);
    v8 = *i;
    sub_22F0CFF1C();
    v9 = sub_22F0D0C7C();
    v10 = [v5 valueForKey_];

    if (v10)
    {
      sub_22F0D13CC();
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
    }

    v31 = v29;
    v32 = v30;
    if (*(&v30 + 1))
    {
      break;
    }

    sub_22F003A4C(&v31, &qword_27DAA1270, &qword_22F0D7240);
LABEL_4:

LABEL_5:
    if (!--v3)
    {
      return;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2120, " ~");
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_4;
  }

  *(&v32 + 1) = &type metadata for StatusWithTime;
  *&v31 = v33;
  sub_22EFFFA24(&v31, &v29);
  sub_22F0CFF1C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v4;
  v12 = v33;
  v14 = sub_22EFFDA80(v7, v8);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (!__OFADD__(v15, v16))
  {
    v18 = v13;
    if (v12[3] >= v17)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v21 = v33;
        if ((v13 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_22F060778();
        v21 = v33;
        if ((v18 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_22F07B06C(v17, isUniquelyReferenced_nonNull_native);
      v19 = sub_22EFFDA80(v7, v8);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_26;
      }

      v14 = v19;
      v21 = v33;
      if ((v18 & 1) == 0)
      {
LABEL_20:
        v21[(v14 >> 6) + 8] |= 1 << v14;
        v23 = (v21[6] + 16 * v14);
        *v23 = v7;
        v23[1] = v8;
        sub_22EFFFA24(&v29, (v21[7] + 32 * v14));
        v24 = v21[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_25;
        }

        v21[2] = v26;
        goto LABEL_22;
      }
    }

    v22 = (v21[7] + 32 * v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    sub_22EFFFA24(&v29, v22);

LABEL_22:
    v4 = a3;
    *a3 = v21;

    v5 = a2;
    goto LABEL_5;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_22F0D191C();
  __break(1u);
}

void sub_22F0A7004(uint64_t a1, void *a2, id *a3)
{
  v32 = a3;
  v29 = sub_22F0D05BC();
  v5 = MEMORY[0x28223BE20](v29);
  v31 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v30 = &v24 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    v26 = (v7 + 16);
    v27 = (v7 + 32);
    v25 = (v7 + 8);
    v10 = (a1 + 40);
    v28 = a2;
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      *&v35 = 0x757165527473616CLL;
      *(&v35 + 1) = 0xEF656D6954747365;
      sub_22F0CFF1C();
      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      MEMORY[0x2318FD2C0](v12, v11);
      v13 = v35;
      [a2 synchronize];
      v14 = sub_22F0D0C7C();
      v15 = [a2 valueForKey_];

      if (v15)
      {
        sub_22F0D13CC();
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0u;
        v34 = 0u;
      }

      v35 = v33;
      v36 = v34;
      if (*(&v34 + 1))
      {
        sub_22F04CF78();
        if (swift_dynamicCast())
        {
          v16 = v37;
          [v37 doubleValue];
          v17 = v31;
          sub_22F0D04BC();

          v18 = v29;
          v19 = v30;
          (*v27)(v30, v17, v29);
          *(&v36 + 1) = v18;
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v35);
          (*v26)(boxed_opaque_existential_1Tm, v19, v18);
          sub_22EFFFA24(&v35, &v33);
          v21 = v32;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v37 = *v21;
          sub_22F018078(&v33, v13, *(&v13 + 1), isUniquelyReferenced_nonNull_native);

          *v21 = v37;
          v23 = v18;
          a2 = v28;
          (*v25)(v19, v23);
          goto LABEL_5;
        }
      }

      else
      {
        sub_22F003A4C(&v35, &qword_27DAA1270, &qword_22F0D7240);
      }

LABEL_5:

      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

void sub_22F0A733C(uint64_t a1, void *a2, id *a3)
{
  v35 = a3;
  v32 = sub_22F0D05BC();
  v5 = MEMORY[0x28223BE20](v32);
  v34 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v33 = &v26 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0x800000022F0DF7E0;
    v28 = (v7 + 16);
    v29 = (v7 + 32);
    v27 = (v7 + 8);
    v11 = (a1 + 40);
    v30 = 0x800000022F0DF7E0;
    v31 = a2;
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      *&v38 = 0xD000000000000010;
      *(&v38 + 1) = v10;
      sub_22F0CFF1C();
      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      MEMORY[0x2318FD2C0](v13, v12);
      v14 = v38;
      [a2 synchronize];
      v15 = sub_22F0D0C7C();
      v16 = [a2 valueForKey_];

      if (v16)
      {
        sub_22F0D13CC();
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0u;
        v37 = 0u;
      }

      v38 = v36;
      v39 = v37;
      if (*(&v37 + 1))
      {
        sub_22F04CF78();
        if (swift_dynamicCast())
        {
          v17 = v40;
          [v40 doubleValue];
          v18 = v34;
          sub_22F0D04BC();

          v19 = v32;
          v20 = v33;
          (*v29)(v33, v18, v32);
          *(&v39 + 1) = v19;
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v38);
          (*v28)(boxed_opaque_existential_1Tm, v20, v19);
          sub_22EFFFA24(&v38, &v36);
          v22 = v35;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v40 = *v22;
          sub_22F018078(&v36, v14, *(&v14 + 1), isUniquelyReferenced_nonNull_native);

          *v22 = v40;
          v24 = v20;
          v25 = v19;
          v10 = v30;
          a2 = v31;
          (*v27)(v24, v25);
          goto LABEL_5;
        }
      }

      else
      {
        sub_22F003A4C(&v38, &qword_27DAA1270, &qword_22F0D7240);
      }

LABEL_5:

      v11 += 2;
      --v9;
    }

    while (v9);
  }
}

uint64_t _s6People14MetricTemplateO18allStatusCountKeysSaySSGvgZ_0()
{
  v27 = MEMORY[0x277D84F90];
  sub_22EFFC4E8(0, 10, 0);
  v0 = 0;
  v1 = v27;
  v2 = 0x7373654D64616572;
  do
  {
    v3 = byte_2843C9F38[v0 + 32];
    v4 = 0xEA00000000006C6CLL;
    if (v3 == 8)
    {
      v5 = 0x614364657373696DLL;
    }

    else
    {
      v5 = 0x7261646E656C6163;
    }

    if (v3 != 8)
    {
      v4 = 0xE800000000000000;
    }

    if (v3 == 7)
    {
      v5 = v2;
      v4 = 0xEB00000000656761;
    }

    if (v3 == 5)
    {
      v6 = 0x617453646C696863;
    }

    else
    {
      v6 = 0x654D646165726E75;
    }

    v7 = 0xED00006567617373;
    if (v3 == 5)
    {
      v7 = 0xEA00000000006574;
    }

    if (byte_2843C9F38[v0 + 32] <= 6u)
    {
      v5 = v6;
      v4 = v7;
    }

    if (v3 == 3)
    {
      v8 = 0x7975426F546B7361;
    }

    else
    {
      v8 = 0xD000000000000011;
    }

    v9 = 0xEF74736575716552;
    if (v3 != 3)
    {
      v9 = 0x800000022F0DC350;
    }

    if (v3 == 2)
    {
      v8 = 0x6E6F697461636F6CLL;
      v9 = 0xE800000000000000;
    }

    v10 = 0xEB00000000657461;
    if (byte_2843C9F38[v0 + 32])
    {
      v11 = 0x74536E6F69746F6DLL;
    }

    else
    {
      v11 = 0x6C69617641646E64;
    }

    if (!byte_2843C9F38[v0 + 32])
    {
      v10 = 0xEF7974696C696261;
    }

    if (byte_2843C9F38[v0 + 32] <= 1u)
    {
      v8 = v11;
      v9 = v10;
    }

    if (byte_2843C9F38[v0 + 32] <= 4u)
    {
      v12 = v8;
    }

    else
    {
      v12 = v5;
    }

    if (byte_2843C9F38[v0 + 32] <= 4u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }

    v28 = v1;
    v15 = *(v1 + 16);
    v14 = *(v1 + 24);
    if (v15 >= v14 >> 1)
    {
      v17 = v2;
      sub_22EFFC4E8((v14 > 1), v15 + 1, 1);
      v2 = v17;
      v1 = v28;
    }

    ++v0;
    *(v1 + 16) = v15 + 1;
    v16 = v1 + 16 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v13;
  }

  while (v0 != 10);
  v30 = MEMORY[0x277D84F90];
  sub_22EFFC4E8(0, 10, 0);
  v18 = 0;
  do
  {
    v19 = byte_2843C9F38[v18 + 32];
    if (v19 > 4)
    {
      if (byte_2843C9F38[v18 + 32] <= 6u)
      {
        v20 = v19 == 5;
        v21 = 0x617453646C696863;
        if (v20)
        {
          v22 = 0xEA00000000006574;
        }

        else
        {
          v21 = 0x654D646165726E75;
          v22 = 0xED00006567617373;
        }
      }

      else if (v19 == 7)
      {
        v21 = 0x7373654D64616572;
        v22 = 0xEB00000000656761;
      }

      else
      {
        v20 = v19 == 8;
        v21 = 0x614364657373696DLL;
        if (v20)
        {
          v22 = 0xEA00000000006C6CLL;
        }

        else
        {
          v21 = 0x7261646E656C6163;
          v22 = 0xE800000000000000;
        }
      }
    }

    else if (byte_2843C9F38[v18 + 32] <= 1u)
    {
      v20 = v19 == 0;
      v21 = 0x6C69617641646E64;
      if (v20)
      {
        v22 = 0xEF7974696C696261;
      }

      else
      {
        v21 = 0x74536E6F69746F6DLL;
        v22 = 0xEB00000000657461;
      }
    }

    else if (v19 == 2)
    {
      v22 = 0xE800000000000000;
      v21 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v20 = v19 == 3;
      v21 = 0x7975426F546B7361;
      if (v20)
      {
        v22 = 0xEF74736575716552;
      }

      else
      {
        v21 = 0xD000000000000011;
        v22 = 0x800000022F0DC350;
      }
    }

    v29 = v21;
    sub_22F0CFF1C();
    MEMORY[0x2318FD2C0](0x6465726F6E67692ELL, 0xE800000000000000);

    v24 = *(v30 + 16);
    v23 = *(v30 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_22EFFC4E8((v23 > 1), v24 + 1, 1);
    }

    ++v18;
    *(v30 + 16) = v24 + 1;
    v25 = v30 + 16 * v24;
    *(v25 + 32) = v29;
    *(v25 + 40) = v22;
  }

  while (v18 != 10);
  sub_22F007248(v30);
  return v1;
}

id _s6People14MetricTemplateO14metricsEnabledSbvgZ_0()
{
  sub_22F0D0D2C();
  has_internal_ui = os_variant_has_internal_ui();
  sub_22F0D00CC();
  if (!has_internal_ui)
  {
    return 0;
  }

  if (qword_280CBEF20 != -1)
  {
    swift_once();
  }

  [qword_280CBEF28 synchronize];
  v1 = qword_280CBEF28;
  v2 = sub_22F0D0C7C();
  v3 = [v1 BOOLForKey_];

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v4 = sub_22F0D0A1C();
  __swift_project_value_buffer(v4, qword_280CBEC40);
  v5 = sub_22F0D09FC();
  v6 = sub_22F0D122C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_22F00A560(0x457363697274656DLL, 0xEE0064656C62616ELL, &v10);
    *(v7 + 12) = 1024;
    *(v7 + 14) = v3;
    _os_log_impl(&dword_22EFE1000, v5, v6, "%s value %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318FE8B0](v8, -1, -1);
    MEMORY[0x2318FE8B0](v7, -1, -1);
  }

  return v3;
}

id sub_22F0A7D80()
{
  v1 = qword_2843CB770;
  v0 = off_2843CB778;
  v2 = qword_27DAA05F0;
  sub_22F0CFF1C();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_27DAACF08;
  if (qword_27DAACF08)
  {
    MEMORY[0x2318FD2C0](v1, v0);
    v4 = sub_22F0D0C7C();

    [v3 removeObjectForKey_];

    MEMORY[0x2318FD2C0](v1, v0);
    v5 = sub_22F0D0C7C();

    [v3 removeObjectForKey_];
  }

  v7 = qword_2843CB780;
  v6 = off_2843CB788;
  v8 = qword_27DAA05F0;
  sub_22F0CFF1C();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_27DAACF08;
  if (qword_27DAACF08)
  {
    MEMORY[0x2318FD2C0](v7, v6);
    v10 = sub_22F0D0C7C();

    [v9 removeObjectForKey_];

    MEMORY[0x2318FD2C0](v7, v6);
    v11 = sub_22F0D0C7C();

    [v9 removeObjectForKey_];
  }

  if (qword_27DAA05F0 != -1)
  {
    swift_once();
  }

  v12 = qword_27DAACF08;

  return [v12 synchronize];
}

id sub_22F0A8018()
{
  v0 = &off_2843CB778;
  v1 = 2;
  do
  {
    v3 = *(v0 - 1);
    v2 = *v0;
    v4 = qword_280CBD6C8;
    sub_22F0CFF1C();
    if (v4 == -1)
    {
      v5 = qword_280CC1268;
      if (!qword_280CC1268)
      {
        goto LABEL_2;
      }

LABEL_5:
      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      MEMORY[0x2318FD2C0](v3, v2);
      v6 = sub_22F0D0C7C();

      [v5 removeObjectForKey_];

      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      MEMORY[0x2318FD2C0](v3, v2);
      v7 = sub_22F0D0C7C();

      [v5 removeObjectForKey_];

      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      MEMORY[0x2318FD2C0](v3, v2);
      v8 = sub_22F0D0C7C();

      [v5 removeObjectForKey_];

      goto LABEL_2;
    }

    swift_once();
    v5 = qword_280CC1268;
    if (qword_280CC1268)
    {
      goto LABEL_5;
    }

LABEL_2:

    v0 += 2;
    --v1;
  }

  while (v1);
  if (qword_280CBD6C8 != -1)
  {
    swift_once();
  }

  v9 = 0;
  v10 = qword_280CC1268;
  v14 = qword_280CC1268;
  do
  {
    if (v10)
    {
      v11 = sub_22F0D0C7C();

      [v14 removeObjectForKey_];

      sub_22F0CFF1C();
      MEMORY[0x2318FD2C0](0x6465726F6E67692ELL, 0xE800000000000000);

      v12 = sub_22F0D0C7C();

      v10 = v14;
      [v14 removeObjectForKey_];
    }

    ++v9;
  }

  while (v9 != 10);

  return [v10 synchronize];
}

char *sub_22F0A8694(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 24);
  *v48 = *a1;
  *&v48[8] = *(a1 + 8);
  v48[24] = v3;
  v4 = sub_22F0A8F64(v48);
  if (v4)
  {
    v5 = v4;
    if (qword_280CBEC38 != -1)
    {
LABEL_32:
      swift_once();
    }

    v6 = sub_22F0D0A1C();
    __swift_project_value_buffer(v6, qword_280CBEC40);
    v7 = v5;
    v8 = sub_22F0D09FC();
    v9 = sub_22F0D124C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v48 = v40;
      *v10 = 136315138;
      v11 = [v7 debugDescription];
      v12 = sub_22F0D0CAC();
      v13 = v7;
      v15 = v14;

      v16 = sub_22F00A560(v12, v15, v48);
      v7 = v13;

      *(v10 + 4) = v16;
      _os_log_impl(&dword_22EFE1000, v8, v9, "interaction settings %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x2318FE8B0](v40, -1, -1);
      MEMORY[0x2318FE8B0](v10, -1, -1);
    }

    v17 = [v2 adviseInteractionsUsingSettings_];
    if (!v17 || (v18 = v17, v19 = sub_22F0D0F4C(), v18, v20 = sub_22F0A8CF8(v19), , !v20))
    {

      v20 = MEMORY[0x277D84F90];
    }

    sub_22F0CFF1C();
    v21 = sub_22F0D09FC();
    v22 = sub_22F0D124C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v48 = v24;
      *v23 = 136315138;
      v25 = sub_22F01B924(0, &qword_27DAA2130, 0x277CFE070);
      v26 = MEMORY[0x2318FD490](v20, v25);
      v28 = sub_22F00A560(v26, v27, v48);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_22EFE1000, v21, v22, "interactions received %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x2318FE8B0](v24, -1, -1);
      MEMORY[0x2318FE8B0](v23, -1, -1);
    }

    v5 = (v20 & 0xFFFFFFFFFFFFFF8);
    if (v20 >> 62)
    {
      v29 = sub_22F0D143C();
      if (v29)
      {
LABEL_12:
        v30 = 0;
        v2 = (v20 & 0xC000000000000001);
        v31 = MEMORY[0x277D84F90];
        do
        {
          v32 = v30;
          while (1)
          {
            if (v2)
            {
              v33 = MEMORY[0x2318FDAB0](v32, v20);
              v30 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
                goto LABEL_30;
              }
            }

            else
            {
              if (v32 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_31;
              }

              v33 = *(v20 + 8 * v32 + 32);
              v30 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
LABEL_30:
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }
            }

            sub_22F059CB4(v33, v48);
            if (*&v48[16])
            {
              break;
            }

            v46 = v49;
            v47[0] = v50[0];
            *(v47 + 10) = *(v50 + 10);
            v44 = *v48;
            v45 = *&v48[16];
            sub_22F0A935C(&v44);
            ++v32;
            if (v30 == v29)
            {
              goto LABEL_35;
            }
          }

          v46 = v49;
          v47[0] = v50[0];
          *(v47 + 10) = *(v50 + 10);
          v44 = *v48;
          v45 = *&v48[16];
          v34 = v7;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_22F03CEB0(0, *(v31 + 2) + 1, 1, v31);
          }

          v36 = *(v31 + 2);
          v35 = *(v31 + 3);
          if (v36 >= v35 >> 1)
          {
            v31 = sub_22F03CEB0((v35 > 1), v36 + 1, 1, v31);
          }

          *&v43[10] = *(v47 + 10);
          v42 = v46;
          *v43 = v47[0];
          v37 = v44;
          v41 = v45;
          *(v31 + 2) = v36 + 1;
          v38 = &v31[80 * v36];
          *(v38 + 2) = v37;
          *(v38 + 90) = *&v43[10];
          *(v38 + 4) = v42;
          *(v38 + 5) = *v43;
          *(v38 + 3) = v41;
          v7 = v34;
        }

        while (v30 != v29);
        goto LABEL_35;
      }
    }

    else
    {
      v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_12;
      }
    }

    v31 = MEMORY[0x277D84F90];
LABEL_35:

    return v31;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22F0A8B84(unint64_t a1, void *a2)
{
  v7 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_15:
    sub_22F0D143C();
    sub_22F0D161C();
    v3 = sub_22F0D143C();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_22F0D161C();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2318FDAB0](v4, a1);
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();
            sub_22F0D00CC();
            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_22F0D15EC();
        sub_22F0D162C();
        sub_22F0D163C();
        sub_22F0D15FC();
        ++v4;
      }

      while (v5 != v3);
    }
  }

  return v7;
}

uint64_t sub_22F0A8CF8(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_22F0D161C();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_22F003598(i, v5);
    sub_22F01B924(0, &qword_27DAA2130, 0x277CFE070);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22F0D15EC();
    sub_22F0D162C();
    sub_22F0D163C();
    sub_22F0D15FC();
    if (!--v2)
    {
      return v6;
    }
  }

  sub_22F0D00CC();
  return 0;
}

uint64_t sub_22F0A8E28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2138, &unk_22F0DAFD0);
    v3 = sub_22F0D14EC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_22F0D199C();
      MEMORY[0x2318FDEE0](v10);
      result = sub_22F0D19CC();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

id sub_22F0A8F64(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 24);
  v5 = [objc_opt_self() interactionAdvisorSettingsDefault];
  [v5 setResultLimit_];
  if (*(v1 + 16))
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v5;
    v8 = sub_22F0D112C();
    [v7 setConstrainPersonIds_];
  }

  if (*(v3 + 16))
  {
    if (v5)
    {
      v9 = v5;
      v10 = sub_22F0D112C();
      [v9 setConstrainIdentifiers_];

      goto LABEL_10;
    }

    return v5;
  }

  if (!v5)
  {
    return v5;
  }

LABEL_10:
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 != 4)
      {
        v33 = v5;
        v32 = 0;
LABEL_39:
        [v5 setConstrainMechanisms_];

        return v5;
      }

      v13 = MEMORY[0x277D84FA0];
      v14 = *(MEMORY[0x277D84FA0] + 16);
      if (v14)
      {
        goto LABEL_22;
      }

LABEL_19:
      v15 = v5;

      v16 = MEMORY[0x277D84F90];
LABEL_38:
      sub_22F058DAC(v16);

      sub_22F01B924(0, &qword_27DAA1850, 0x277CCABB0);
      sub_22F0A93C4();
      v32 = sub_22F0D112C();

      goto LABEL_39;
    }

    v12 = &unk_2843CB078;
  }

  else
  {
    v11 = &unk_2843CB110;
    if (v4 != 1)
    {
      v11 = &unk_2843CB0A0;
    }

    if (v4)
    {
      v12 = v11;
    }

    else
    {
      v12 = &unk_2843CB0D8;
    }
  }

  v13 = sub_22F0A8E28(v12);
  v14 = *(v13 + 16);
  if (!v14)
  {
    goto LABEL_19;
  }

LABEL_22:
  v36 = MEMORY[0x277D84F90];
  v34 = v5;
  v17 = v5;
  sub_22F0D161C();
  v18 = v13 + 56;
  result = sub_22F0D13FC();
  v20 = result;
  v21 = 0;
  v35 = v14;
  while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(v13 + 32))
  {
    v23 = v20 >> 6;
    if ((*(v18 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
    {
      goto LABEL_43;
    }

    v24 = *(v13 + 36);
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    sub_22F0D15EC();
    sub_22F0D162C();
    sub_22F0D163C();
    result = sub_22F0D15FC();
    v22 = 1 << *(v13 + 32);
    if (v20 >= v22)
    {
      goto LABEL_44;
    }

    v25 = *(v18 + 8 * v23);
    if ((v25 & (1 << v20)) == 0)
    {
      goto LABEL_45;
    }

    if (v24 != *(v13 + 36))
    {
      goto LABEL_46;
    }

    v26 = v25 & (-2 << (v20 & 0x3F));
    if (v26)
    {
      v22 = __clz(__rbit64(v26)) | v20 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v23 << 6;
      v28 = v23 + 1;
      v29 = (v13 + 64 + 8 * v23);
      while (v28 < (v22 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_22F0097CC(v20, v24, 0);
          v22 = __clz(__rbit64(v30)) + v27;
          goto LABEL_24;
        }
      }

      result = sub_22F0097CC(v20, v24, 0);
    }

LABEL_24:
    ++v21;
    v20 = v22;
    if (v21 == v35)
    {

      v16 = v36;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_22F0A935C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2128, &qword_22F0DAFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F0A93C4()
{
  result = qword_27DAA1858;
  if (!qword_27DAA1858)
  {
    sub_22F01B924(255, &qword_27DAA1850, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1858);
  }

  return result;
}

uint64_t sub_22F0A942C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1880, &unk_22F0D8280);
    v3 = sub_22F0D14EC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_22F0D199C();
      sub_22F0CFF1C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_22F0D188C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t LSApplicationProxyProtocol.bundleIdentifier.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 16))(a1);
  if (!v3)
  {
    __break(1u);
  }

  return result;
}

void LSApplicationWorkspace.applications(forIntentClass:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v3)
  {
    sub_22F0D0CAC();
    v3 = sub_22F0D0C7C();
  }

  v4 = [v1 applicationsForUserActivityType_];

  if (v4)
  {
    sub_22F01B06C();
    v5 = sub_22F0D0F4C();

    sub_22F0191C4(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_22F0A9678(uint64_t a1)
{
  v2 = *v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v4)
  {
    sub_22F0D0CAC();
    v4 = sub_22F0D0C7C();
  }

  v5 = [v2 applicationsForUserActivityType_];

  if (v5)
  {
    sub_22F01B06C();
    v6 = sub_22F0D0F4C();

    sub_22F0191C4(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22F0A9730()
{
  v1 = [*v0 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22F0D0CAC();

  return v3;
}

People::Point __swiftcall Point.init(x:y:)(Swift::Double x, Swift::Double y)
{
  *v2 = x;
  v2[1] = y;
  result.y = y;
  result.x = x;
  return result;
}

void __swiftcall BezierSpline.init(_:_:)(People::BezierSpline *__return_ptr retstr, People::Point a2, People::Point a3)
{
  v5 = *v4;
  retstr->point1 = *v3;
  retstr->point2 = v5;
  retstr->tolerance = 0.000001;
}

People::Point __swiftcall BezierSpline.point(atX:)(Swift::Double atX)
{
  v4 = v1;
  v5 = *v2 == v2[1] && v2[2] == v2[3];
  v6 = atX;
  if (!v5)
  {
    v7 = sub_22F0A9A3C(atX);
    KeyPath = swift_getKeyPath();
    v6 = sub_22F0A9980(KeyPath, v7);
    sub_22F0D00CC();
  }

  *v4 = atX;
  *(v4 + 8) = v6;
  result.y = v9;
  result.x = atX;
  return result;
}

double static Point.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27DAA0600 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_27DAA2140;
  *a1 = xmmword_27DAA2140;
  return result;
}

__n128 BezierSpline.point1.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 BezierSpline.point2.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

long double sub_22F0A9980(uint64_t a1, long double a2)
{
  v3 = 1.0 - a2;
  v4 = v3 * v3 * 3.0 * a2;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  return v4 * v6 + a2 * a2 * (v3 * 3.0) * v6 + pow(a2, 3.0);
}

double sub_22F0A9A3C(double a1)
{
  v12 = *(v1 + 1);
  v13 = *v1;
  v3 = v1[4];
  v4 = 0.0;
  v5 = 1.0;
  while (1)
  {
    v6 = v4 + (v5 - v4) * 0.5;
    v7 = *&v12 * (v6 * v6 * ((1.0 - v6) * 3.0)) + *&v13 * (v6 * ((1.0 - v6) * (1.0 - v6) * 3.0)) + pow(v6, 3.0);
    if (v7 - v3 <= a1 && v3 + v7 >= a1)
    {
      break;
    }

    if (v7 < a1)
    {
      v4 = v4 + (v5 - v4) * 0.5;
    }

    else
    {
      v5 = v4 + (v5 - v4) * 0.5;
    }

    if (v4 > v5)
    {
      sub_22F0D169C();
      __break(1u);
      break;
    }
  }

  KeyPath = swift_getKeyPath();
  v10 = sub_22F0A9980(KeyPath, v6);
  sub_22F0D00CC();
  return v10;
}

People::Point __swiftcall BezierSpline.point(atTime:)(Swift::Double atTime)
{
  v3 = v1;
  KeyPath = swift_getKeyPath();
  v5 = sub_22F0A9980(KeyPath, atTime);
  sub_22F0D00CC();
  v6 = swift_getKeyPath();
  v7 = sub_22F0A9980(v6, atTime);
  sub_22F0D00CC();
  *v3 = v5;
  v3[1] = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for Point(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Point(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_22F0A9CC0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F0A9CE0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_22F0A9D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, double))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  return a3(a1, v11);
}

void sub_22F0A9EC8()
{
  v0 = sub_22F0D06BC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v5 = objc_opt_self();
  v6 = sub_22F0D0C7C();
  sub_22F0D066C();
  v7 = sub_22F0D062C();
  (*(v1 + 8))(v3, v0);
  v8 = [v5 dateFormatFromTemplate:v6 options:0 locale:v7];

  [v4 setDateFormat_];
  qword_27DAA2150 = v4;
}

id static Date.todayFormatter.getter()
{
  if (qword_27DAA0608 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAA2150;

  return v1;
}

uint64_t static Date.relativeDateString(from:)(uint64_t a1)
{
  v1 = sub_22F0D05BC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22F0D06FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F0D06EC();
  if (sub_22F0D06DC())
  {
    if (qword_27DAA0608 != -1)
    {
      swift_once();
    }

    v9 = qword_27DAA2150;
    v10 = sub_22F0D051C();
    v11 = [v9 stringFromDate_];

    v12 = sub_22F0D0CAC();
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CCAC78]) init];
    [v13 setUnitsStyle_];
    v14 = sub_22F0D051C();
    sub_22F0D05AC();
    v15 = sub_22F0D051C();
    (*(v2 + 8))(v4, v1);
    v11 = [v13 localizedStringForDate:v14 relativeToDate:v15];

    v12 = sub_22F0D0CAC();
  }

  (*(v6 + 8))(v8, v5);
  return v12;
}

Swift::String __swiftcall Date.relativeDateString()()
{
  v1 = static Date.relativeDateString(from:)(v0);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Date.isExpired(maxAge:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - v2;
  v4 = sub_22F0D05BC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_22F0D05AC();
  v11 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v1 + 8))(v3, v0);
  sub_22F0D054C();
  v12 = sub_22F0D053C();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  return v12 & 1;
}

double sub_22F0AA578(void (*a1)(uint64_t, void))
{
  v2 = sub_22F025B10(MEMORY[0x277D84F90]);
  if (qword_27DAA0568 != -1)
  {
    swift_once();
  }

  v3 = sub_22F0D0A1C();
  __swift_project_value_buffer(v3, qword_27DAA1A10);
  sub_22F0CFF1C();
  v4 = sub_22F0D09FC();
  v5 = sub_22F0D124C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2158, &qword_22F0DB178);
    v8 = sub_22F0D0B0C();
    v10 = sub_22F00A560(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22EFE1000, v4, v5, "overriding status: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x2318FE8B0](v7, -1, -1);
    MEMORY[0x2318FE8B0](v6, -1, -1);
  }

  a1(v2, 0);

  return result;
}

uint64_t static PeopleConstants.deviceClass.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27DAA0610 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_27DAA2160;
  return result;
}

uint64_t DeviceClass.rawValue.getter()
{
  v1 = 0x656E6F685069;
  if (*v0 != 1)
  {
    v1 = 1684099177;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6512973;
  }
}

uint64_t static PeopleWidgetConfiguration.maxContacts(forFamily:)(uint64_t a1)
{
  if ((a1 - 2) > 2)
  {
    return 1;
  }

  else
  {
    return qword_22F0DB2E0[a1 - 2];
  }
}

People::DeviceClass_optional __swiftcall DeviceClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22F0AA904(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  if (v2 != 1)
  {
    v4 = 1684099177;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6512973;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656E6F685069;
  if (*a2 != 1)
  {
    v8 = 1684099177;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6512973;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22F0D188C();
  }

  return v11 & 1;
}

uint64_t sub_22F0AA9E8()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

double sub_22F0AAA78(uint64_t a1)
{
  sub_22F0D0D5C();

  return result;
}

uint64_t sub_22F0AAAF4(uint64_t a1)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F0AAB8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656E6F685069;
  if (v2 != 1)
  {
    v5 = 1684099177;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6512973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_22F0AAC50()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = v0;
  v2 = MobileGestalt_copy_deviceClass_obj();

  if (!v2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = sub_22F0D0CAC();
  v5 = v4;

  v6 = v3;
  v7 = v5;

  DeviceClass.init(rawValue:)(*&v6);
}

uint64_t sub_22F0AB030()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v8 - v3;
  __swift_allocate_value_buffer(v2, qword_27DAA21C8);
  __swift_project_value_buffer(v0, qword_27DAA21C8);
  if (qword_27DAA0630 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27DAA21B0);
  (*(v1 + 16))(v4, v5, v0);
  sub_22F0D018C();
  (*(v1 + 8))(v4, v0);
  v6 = [objc_opt_self() minutes];
  sub_22F014850();
  return sub_22F0D017C();
}

uint64_t sub_22F0AB1F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v8 - v3;
  __swift_allocate_value_buffer(v2, qword_27DAA21E0);
  __swift_project_value_buffer(v0, qword_27DAA21E0);
  if (qword_27DAA0630 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27DAA21B0);
  (*(v1 + 16))(v4, v5, v0);
  sub_22F0D018C();
  (*(v1 + 8))(v4, v0);
  v6 = [objc_opt_self() minutes];
  sub_22F014850();
  return sub_22F0D017C();
}

uint64_t sub_22F0AB4CC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  if (qword_280CBD900 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v3, qword_280CBD908);
  v6 = *(*(v3 - 8) + 16);

  return v6(v4, v5, v3);
}

uint64_t sub_22F0AB618(double a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  v7 = [objc_opt_self() *a4];
  sub_22F014850();
  return sub_22F0D017C();
}

uint64_t sub_22F0AB6E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

id sub_22F0AB7D0()
{
  result = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:0.0 longitude:0.0];
  qword_27DAACF10 = result;
  return result;
}

uint64_t static PeopleWidgetConfiguration.minContacts(forFamily:)(uint64_t a1)
{
  if ((a1 - 2) > 2)
  {
    return -1;
  }

  else
  {
    return qword_22F0DB2F8[a1 - 2];
  }
}

unint64_t sub_22F0ABA80()
{
  result = qword_27DAA2258;
  if (!qword_27DAA2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2258);
  }

  return result;
}

uint64_t sub_22F0ABB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22F015708;

  return StatusFetcher.fetchStatus@Sendable (for:)(a1, a2, a3);
}

uint64_t StatusFetcher.fetchStatus@Sendable (for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_22F0ABBFC, 0, 0);
}

uint64_t sub_22F0ABBFC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1730, &qword_22F0D7740);
  *v4 = v0;
  v4[1] = sub_22F0ABD10;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000011, 0x800000022F0DFC00, sub_22F0AC184, v3, v5);
}

uint64_t sub_22F0ABD10()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_22F0ABE2C;
  }

  else
  {

    v2 = sub_22F054604;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22F0ABE2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22F0ABE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2260, "j{");
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  (*(a5 + 24))(a3, a4, a5);
  (*(v10 + 16))(v12, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_22F0D094C();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t sub_22F0AC01C(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2260, "j{");
    return sub_22F0D107C();
  }

  else
  {
    sub_22F0CFF1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2260, "j{");
    return sub_22F0D108C();
  }
}

uint64_t StatusSource.debugID.getter(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0xE000000000000000;
  (*(a2 + 16))(&v3, a1);
  sub_22F032B24(v3);
  return v4;
}

uint64_t sub_22F0AC0FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2268, &unk_22F0DB360);
  sub_22F035260();
  swift_allocError();
  *v0 = 0xD000000000000023;
  v0[1] = 0x800000022F0DFC20;
  return sub_22F0D095C();
}

uint64_t dispatch thunk of StatusFetcher.fetchStatus(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22F015A70;

  return v9(a1, a2, a3);
}

{
  return (*(a3 + 24))(a1, a2);
}

uint64_t sub_22F0AC2F4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2260, "j{");

  return sub_22F0AC01C(a1);
}

void sub_22F0AC394(uint64_t a1)
{
  sub_22F01276C(a1, v9);
  v2 = v10;
  if (v10)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = *(v2 - 8);
    MEMORY[0x28223BE20](v3);
    v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = sub_22F0D187C();
    (*(v4 + 8))(v6, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_22F0D0C7C();
  [v1 setValue:v7 forKey:v8];
  swift_unknownObjectRelease();
}

double sub_22F0AC4F4@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_22F0D0C7C();
  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_22F0D13CC();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void sub_22F0AC588()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22F0D0C7C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
    v3 = sub_22F0D0C7C();
    [v2 addSuiteNamed_];
  }

  qword_280CBEF28 = v2;
}

id static PeopleUserDefaults.shared.getter()
{
  if (qword_280CBEF20 != -1)
  {
    swift_once();
  }

  v1 = qword_280CBEF28;

  return v1;
}

id sub_22F0AC6A4@<X0>(void *a1@<X8>)
{
  if (qword_280CBEF20 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_280CBEF28;
  *a1 = qword_280CBEF28;

  return v2;
}

uint64_t sub_22F0AC714(id *a1)
{
  v1 = qword_280CBEF20;
  v2 = *a1;
  if (v1 != -1)
  {
    v3 = v2;
    swift_once();
    v2 = v3;
  }

  qword_280CBEF28 = v2;

  return MEMORY[0x2821F96F8]();
}

id PeopleUserDefaults.__allocating_init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_22F0D0C7C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithSuiteName_];

  return v4;
}

id PeopleUserDefaults.init(suiteName:)(__n128 a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_22F0D0C7C();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v3;
  v7.super_class = type metadata accessor for PeopleUserDefaults();
  v5 = objc_msgSendSuper2(&v7, sel_initWithSuiteName_, v4);

  if (v5)
  {
  }

  return v5;
}

id PeopleUserDefaults.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeopleUserDefaults();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SelectPerson.init()@<X0>(uint64_t *a1@<X8>)
{
  v71 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22A0, &qword_22F0DB410);
  MEMORY[0x28223BE20](v1 - 8);
  v63 = v53 - v2;
  v74 = sub_22F0CFFCC();
  v3 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v68 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22A8, &qword_22F0DB418);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1540, &qword_22F0DB420);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v53 - v12;
  v53[0] = v53 - v12;
  v14 = sub_22F0D036C();
  v70 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22B0, &qword_22F0DB428);
  sub_22F0D034C();
  v18 = *(v15 + 56);
  v75 = v15 + 56;
  v73 = v18;
  v18(v13, 1, 1, v14);
  v19 = sub_22F0CFDEC();
  v76 = 0;
  v77 = 0;
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v22 = v20 + 56;
  v21(v10, 1, 1, v19);
  v62 = v8;
  v21(v8, 1, 1, v19);
  v69 = *MEMORY[0x277CBA308];
  v23 = *(v3 + 104);
  v72 = v3 + 104;
  v23(v68);
  sub_22F034BA0();
  v24 = v53[0];
  *v71 = sub_22F0CFEAC();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22B8, &qword_22F0DB430);
  sub_22F0D034C();
  v73(v24, 1, 1, v70);
  LOBYTE(v76) = 0;
  v26 = sub_22F0D105C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v60 = v26;
  v59 = v28;
  v57 = v27 + 56;
  (v28)(v63, 1, 1);
  v21(v10, 1, 1, v19);
  v66 = v23;
  (v23)(v68, v69, v74);
  v58 = v25;
  v71[1] = sub_22F0CFEBC();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22C0, &qword_22F0DB438);
  v61 = v17;
  sub_22F0D034C();
  v29 = v24;
  v73(v24, 1, 1, v70);
  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  v21(v10, 1, 1, v19);
  v67 = v19;
  v65 = v21;
  v64 = v22;
  v21(v62, 1, 1, v19);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22C8, &qword_22F0DB440);
  swift_getKeyPath();
  v55 = v30;
  v80 = sub_22F0D002C();
  v76 = &unk_2843CB790;
  if (qword_280CBEC28 != -1)
  {
    swift_once();
  }

  v31 = qword_280CBEC30;
  v54 = type metadata accessor for ContactFetcher();
  v78 = v54;
  v79 = &protocol witness table for ContactFetcher;
  v77 = v31;
  v32 = v68;
  v66(v68, v69, v74);
  v53[2] = sub_22F0AF338();
  v53[1] = sub_22F04164C();
  swift_retain_n();
  v33 = v62;
  v34 = sub_22F0CFE9C();
  v35 = v71;
  v71[2] = v34;
  v36 = v35;
  sub_22F0D034C();
  v37 = v10;
  v73(v29, 1, 1, v70);
  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  v38 = v10;
  v39 = v67;
  v40 = v65;
  v65(v38, 1, 1, v67);
  v40(v33, 1, 1, v39);
  swift_getKeyPath();
  v80 = sub_22F0D002C();
  v78 = v54;
  v79 = &protocol witness table for ContactFetcher;
  v76 = &unk_2843CB7B8;
  v77 = v31;
  v41 = v32;
  v42 = v69;
  v43 = v74;
  v66(v41, v69, v74);
  v36[3] = sub_22F0CFE9C();
  sub_22F0D034C();
  v44 = v29;
  v45 = v70;
  v73(v29, 1, 1, v70);
  LOBYTE(v76) = 1;
  v46 = v63;
  v59(v63, 1, 1, v60);
  v65(v37, 1, 1, v67);
  v47 = v68;
  v48 = v42;
  v49 = v66;
  v66(v68, v48, v43);
  v50 = sub_22F0CFEBC();
  v51 = v71;
  v71[4] = v50;
  sub_22F0D034C();
  v73(v44, 1, 1, v45);
  LOBYTE(v76) = 0;
  v59(v46, 1, 1, v60);
  v65(v37, 1, 1, v67);
  v49(v47, v69, v74);
  result = sub_22F0CFEBC();
  v51[5] = result;
  return result;
}

uint64_t sub_22F0AD3E0()
{
  v0 = sub_22F0D036C();
  __swift_allocate_value_buffer(v0, qword_27DAA2270);
  __swift_project_value_buffer(v0, qword_27DAA2270);
  return sub_22F0D034C();
}

uint64_t (*static SelectPerson.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27DAA0678 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D036C();
  __swift_project_value_buffer(v1, qword_27DAA2270);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_22F0AD554()
{
  v0 = sub_22F0CFEEC();
  __swift_allocate_value_buffer(v0, qword_27DAA2288);
  __swift_project_value_buffer(v0, qword_27DAA2288);
  return sub_22F0CFEDC();
}

uint64_t sub_22F0AD5E0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a5, v9, v8);
}

uint64_t sub_22F0AD6CC(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (*a2 == -1)
  {
    v7 = a3(0);
  }

  else
  {
    swift_once();
    v7 = a3(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a4);
  swift_beginAccess();
  v10 = *(v8 - 8);
  (*(v10 + 24))(v9, a1, v8);
  swift_endAccess();
  return (*(v10 + 8))(a1, v8);
}

uint64_t (*static SelectPerson.description.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27DAA0680 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0CFEEC();
  __swift_project_value_buffer(v1, qword_27DAA2288);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22F0AD84C@<X0>(void *a1@<X3>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X5>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a5, v9, v8);
}

uint64_t sub_22F0AD904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  if (*a5 == -1)
  {
    v10 = a6(0);
  }

  else
  {
    swift_once();
    v10 = a6(0);
  }

  v11 = v10;
  v12 = __swift_project_value_buffer(v10, a7);
  swift_beginAccess();
  (*(*(v11 - 8) + 24))(v12, a1, v11);
  return swift_endAccess();
}

double sub_22F0AD9E8@<D0>(_OWORD *a1@<X8>)
{
  sub_22F0CFE6C();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_22F0ADA24(uint64_t *a1, uint64_t *a2)
{
  sub_22F0B12F4(*a1, a1[1]);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE7C();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t (*SelectPerson.person.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_22F0CFE5C();
  return sub_22F034C18;
}

uint64_t sub_22F0ADBE4(char *a1, uint64_t *a2)
{
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE7C();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t (*SelectPerson.shouldShowButtons.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_22F0CFE5C();
  return sub_22F034C18;
}

uint64_t sub_22F0ADD84(uint64_t *a1, uint64_t *a2)
{
  sub_22F0B1290(*a1, a1[1], a1[2], a1[3], a1[4]);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE7C();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t (*SelectPerson.messageButton.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_22F0CFE5C();
  return sub_22F034C18;
}

uint64_t sub_22F0ADF4C(uint64_t *a1, uint64_t *a2)
{
  sub_22F0B1290(*a1, a1[1], a1[2], a1[3], a1[4]);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE7C();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t (*SelectPerson.callButton.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_22F0CFE5C();
  return sub_22F033E90;
}

uint64_t sub_22F0AE124(char *a1, uint64_t *a2)
{
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE7C();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t (*SelectPerson.verticalLayoutDT.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_22F0CFE5C();
  return sub_22F034C18;
}

uint64_t sub_22F0AE2D4(char *a1, uint64_t *a2)
{
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE7C();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t (*SelectPerson.verticalLayoutDF.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_22F0CFE5C();
  return sub_22F034C18;
}

uint64_t sub_22F0AE450()
{
  v1 = v0;
  v2 = sub_22F0D001C();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    swift_getKeyPath();
    sub_22F0B13DC();
    sub_22F0CFECC();
    sub_22F0D00CC();
    sub_22F0D00CC();
    v4 = v39;
    sub_22F0CFE0C();
    v5 = _s6People19PersonTypeAppEntityV15decodeContactID3forSSSgAF_tFZ_0(v38, v39);
    v7 = v6;

    if (v7)
    {
      v8 = v0[4];
      v9 = v0[5];
      __swift_project_boxed_opaque_existential_1(v0 + 1, v8);
      v36 = (*(v9 + 24))(v5, v7, 0, v8, v9);
      if (v36)
      {
        v35 = v5;
        if (qword_280CBDB28 != -1)
        {
          goto LABEL_25;
        }

        while (1)
        {
          v10 = sub_22F0D0A1C();
          __swift_project_value_buffer(v10, qword_280CBDB30);
          sub_22F0CFFAC();
          sub_22F0CFFAC();
          sub_22F0CFF1C();
          v11 = sub_22F0D09FC();
          v12 = sub_22F0D122C();

          sub_22F0D00CC();
          sub_22F0D00CC();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v37[0] = v33;
            *v13 = 136315394;
            sub_22F0CFE0C();
            v14 = sub_22F00A560(v38, v39, v37);

            *(v13 + 4) = v14;
            *(v13 + 12) = 2080;
            *(v13 + 14) = sub_22F00A560(v35, v7, v37);
            _os_log_impl(&dword_22EFE1000, v11, v12, "Decoded quick action person id: %s, contactID: %s", v13, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x2318FE8B0](v33, -1, -1);
            MEMORY[0x2318FE8B0](v13, -1, -1);
          }

          v15 = *v1;
          v16 = *(*v1 + 16);
          if (!v16)
          {
            break;
          }

          v32 = v7;
          v34 = v4;
          v38 = v3;
          sub_22EFFC7F0(0, v16, 0);
          v1 = 0;
          v17 = v38;
          v18 = *(v38 + 16);
          v19 = 16 * v18;
          v20 = MEMORY[0x277D84FA0];
          v21 = (v15 + 32);
          do
          {
            v23 = *v21++;
            v22 = v23;
            v38 = v17;
            v24 = *(v17 + 24);
            v25 = v18 + 1;
            if (v18 >= v24 >> 1)
            {
              sub_22EFFC7F0((v24 > 1), v18 + 1, 1);
              v17 = v38;
            }

            *(v17 + 16) = v25;
            v26 = v17 + v19;
            *(v26 + 32) = v22;
            *(v26 + 40) = v20;
            v19 += 16;
            v18 = v25;
            --v16;
          }

          while (v16);
          sub_22F0D00CC();
          v27 = *(v15 + 16);
          v3 = MEMORY[0x277D84F90];
          v38 = MEMORY[0x277D84F90];
          v7 = v32;
          v4 = v34;
          v28 = v36;
          if (!v27)
          {
            goto LABEL_21;
          }

          v29 = 0;
          while (v29 < *(v15 + 16))
          {
            v30 = v29 + 1;
            LOBYTE(v37[0]) = *(v15 + 32 + v29);
            sub_22F0AE824(v37, v36, &v38, v35, v32);
            v29 = v30;
            if (v27 == v30)
            {
              v3 = v38;
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_25:
          swift_once();
        }

        v28 = v36;
LABEL_21:
      }

      sub_22F0D00CC();
      sub_22F0D00CC();
    }

    else
    {
      sub_22F0D00CC();
      sub_22F0D00CC();
    }
  }

  return v3;
}

void sub_22F0AE824(unsigned __int8 *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v65 = a5;
  v62 = a4;
  v68 = a3;
  v72 = *a1;
  v8 = [a2 phoneNumberStrings];
  v9 = sub_22F0D0F4C();

  v69 = a2;
  v10 = [a2 emailAddressStrings];
  v11 = sub_22F0D0F4C();

  *&v85[0] = v9;
  sub_22F007248(v11);
  v12 = v9;
  v13 = *(v9 + 16);
  if (!v13)
  {
LABEL_50:

    return;
  }

  v14 = 0;
  v74 = *&v85[0] + 32;
  v61 = *MEMORY[0x277D6EF78];
  v88 = *MEMORY[0x277D6EF98];
  v60 = *MEMORY[0x277D6EF88];
  v63 = xmmword_22F0D2BF0;
  v59 = xmmword_22F0D6710;
  v66 = v13;
  v67 = *&v85[0];
LABEL_5:
  if (v14 < *(v12 + 16))
  {
    v15 = (v74 + 16 * v14);
    v16 = v15[1];
    *&v78 = *v15;
    v17 = qword_27DAA0610;
    sub_22F0CFF1C();
    if (v17 != -1)
    {
      swift_once();
    }

    if (byte_27DAA2160 == 3)
    {

      goto LABEL_4;
    }

    v73 = byte_27DAA2160;
    v18 = [v69 phoneNumberStrings];
    v19 = sub_22F0D0F4C();

    *&v85[0] = v78;
    *(&v85[0] + 1) = v16;
    MEMORY[0x28223BE20](v20);
    v58[2] = v85;
    LODWORD(v79) = sub_22F051C9C(sub_22F034BF4, v58, v19);

    v76 = v6;
    if (v72)
    {
      if (v72 != 1)
      {
        v21 = MEMORY[0x277D84F90];
        if (v72 != 2)
        {
          goto LABEL_41;
        }

        v75 = v16;
        v71 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
        v22 = swift_allocObject();
        *(v22 + 16) = v63;
        goto LABEL_19;
      }

      v75 = v16;
      v71 = v14;
LABEL_18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
      v22 = swift_allocObject();
      *(v22 + 16) = v63;
LABEL_19:
      *(v22 + 32) = sub_22F0D0CAC();
      *(v22 + 40) = v26;
      goto LABEL_20;
    }

    v71 = v14;
    v75 = v16;
    if (v73 == 1)
    {
    }

    else
    {
      v23 = sub_22F0D188C();

      if ((v23 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
    v22 = swift_allocObject();
    *(v22 + 16) = v59;
    *(v22 + 32) = sub_22F0D0CAC();
    *(v22 + 40) = v24;
    *(v22 + 48) = sub_22F0D0CAC();
    *(v22 + 56) = v25;
LABEL_20:
    v27 = *(v22 + 16);
    if (!v27)
    {
      v77 = MEMORY[0x277D84F90];
      goto LABEL_40;
    }

    v28 = 0;
    v29 = v22 + 40;
    v77 = MEMORY[0x277D84F90];
    v70 = v22;
    v64 = v22 + 40;
    while (1)
    {
      v30 = (v29 + 16 * v28);
      v31 = v28;
      while (1)
      {
        if (v31 >= v27)
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_52;
        }

        v32 = *(v30 - 1);
        v33 = *v30;
        if (v32 != sub_22F0D0CAC() || v33 != v34)
        {
          break;
        }

        sub_22F0CFF1C();

        if (v79)
        {
          goto LABEL_32;
        }

LABEL_24:

        ++v31;
        v30 += 2;
        if (v28 == v27)
        {
          v6 = v76;
          goto LABEL_40;
        }
      }

      v36 = sub_22F0D188C();
      sub_22F0CFF1C();

      if (!(v79 & 1 | ((v36 & 1) == 0)))
      {
        goto LABEL_24;
      }

LABEL_32:
      sub_22F0CFF1C();
      sub_22F0CFF1C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_22F03CEB0(0, *(v77 + 2) + 1, 1, v77);
      }

      v6 = v76;
      v29 = v64;
      v38 = *(v77 + 2);
      v37 = *(v77 + 3);
      if (v38 >= v37 >> 1)
      {
        v77 = sub_22F03CEB0((v37 > 1), v38 + 1, 1, v77);
        v29 = v64;
      }

      v39 = v77;
      *(v77 + 2) = v38 + 1;
      v40 = &v39[80 * v38];
      v40[32] = v72;
      LODWORD(v39) = *(v85 + 3);
      *(v40 + 33) = v85[0];
      *(v40 + 9) = v39;
      v41 = v65;
      *(v40 + 5) = v62;
      *(v40 + 6) = v41;
      *(v40 + 7) = 0;
      *(v40 + 8) = 0;
      v42 = v75;
      *(v40 + 9) = v78;
      *(v40 + 10) = v42;
      *(v40 + 11) = v32;
      *(v40 + 12) = v33;
      v40[104] = 1;
      v40[105] = v73;
      if (v28 == v27)
      {
LABEL_40:

        v14 = v71;
        v21 = v77;
LABEL_41:

        v43 = *(v21 + 2);
        if (v43)
        {
          v44 = v14;
          v87 = MEMORY[0x277D84F90];
          sub_22EFFC810(0, v43, 0);
          v45 = v87;
          v46 = v43 - 1;
          for (i = 32; ; i += 80)
          {
            v48 = v21;
            v85[0] = *&v21[i];
            v49 = *&v21[i + 16];
            v50 = *&v21[i + 32];
            v51 = *&v21[i + 48];
            *(v86 + 10) = *&v21[i + 58];
            v85[2] = v50;
            v86[0] = v51;
            v85[1] = v49;
            v83[2] = v50;
            v84[0] = v51;
            *(v84 + 10) = *(v86 + 10);
            v83[0] = v85[0];
            v83[1] = v49;
            sub_22F0B1460(v85, &v80);
            QuickActionAppHandle.init(_:)(v83, &v80);
            v52 = v80;
            v53 = v81;
            v54 = v82;
            v87 = v45;
            v56 = *(v45 + 16);
            v55 = *(v45 + 24);
            if (v56 >= v55 >> 1)
            {
              v78 = v82;
              v79 = v80;
              sub_22EFFC810((v55 > 1), v56 + 1, 1);
              v54 = v78;
              v52 = v79;
              v45 = v87;
            }

            *(v45 + 16) = v56 + 1;
            v57 = v45 + 40 * v56;
            *(v57 + 32) = v52;
            *(v57 + 48) = v53;
            *(v57 + 56) = v54;
            if (!v46)
            {
              break;
            }

            --v46;
            v21 = v48;
          }

          v14 = v44;
          v6 = v76;
        }

        else
        {

          v45 = MEMORY[0x277D84F90];
        }

        sub_22F0078E0(v45);
        v13 = v66;
        v12 = v67;
LABEL_4:
        if (++v14 == v13)
        {
          goto LABEL_50;
        }

        goto LABEL_5;
      }
    }
  }

LABEL_53:
  __break(1u);
}

uint64_t sub_22F0AEF08(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22F0AEF28, 0, 0);
}

uint64_t sub_22F0AEF28()
{
  v1 = sub_22F0AE450();
  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];
    v4 = v1[6];
    v5 = v1[7];
    v6 = v1[8];
    sub_22F0CFF1C();
    sub_22F0CFFAC();
    sub_22F0CFFAC();
    sub_22F0CFFAC();
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  v7 = *(v0 + 16);

  *v7 = v3;
  v7[1] = v2;
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = v6;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22F0AF000(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22F0AF020, 0, 0);
}

uint64_t sub_22F0AF020()
{
  v1 = *(v0 + 16);
  *v1 = sub_22F0AE450();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22F0AF088(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F00CD54;

  return sub_22F0AEF08(a1);
}

uint64_t static SelectPerson.parameterSummary.getter()
{
  v0 = sub_22F0D007C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, *MEMORY[0x277CBA3F0], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22D0, &qword_22F0DB470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22D8, &qword_22F0DB478);
  sub_22F0B09CC();
  sub_22F0419F0(&qword_27DAA22E0, &qword_27DAA22D0, &qword_22F0DB470, MEMORY[0x277CBA490]);
  sub_22F0419F0(&qword_27DAA22E8, &qword_27DAA22D8, &qword_22F0DB478, MEMORY[0x277CBA2C0]);
  sub_22F0419F0(&qword_27DAA22F0, &qword_27DAA22B0, &qword_22F0DB428, MEMORY[0x277CB9F10]);
  return sub_22F0D00CC();
}

unint64_t sub_22F0AF338()
{
  result = qword_280CBE628[0];
  if (!qword_280CBE628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CBE628);
  }

  return result;
}

uint64_t sub_22F0AF38C@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = sub_22F0D000C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[2] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22D0, &qword_22F0DB470);
  v16 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v15[3] = swift_getKeyPath();
  (*(v2 + 104))(v4, *MEMORY[0x277CBA378], v1);
  v15[1] = "DSID";
  v15[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2328, &qword_22F0DB758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2330, &qword_22F0DB760);
  sub_22F0B09CC();
  v11 = MEMORY[0x277CBA490];
  sub_22F0419F0(&qword_27DAA2338, &qword_27DAA2328, &qword_22F0DB758, MEMORY[0x277CBA490]);
  sub_22F0419F0(&qword_27DAA2340, &qword_27DAA2330, &qword_22F0DB760, v11);
  sub_22F0419F0(&qword_27DAA22F0, &qword_27DAA22B0, &qword_22F0DB428, MEMORY[0x277CB9F10]);
  sub_22F034BA0();
  sub_22F0D00BC();
  v12 = sub_22F0419F0(&qword_27DAA22E0, &qword_27DAA22D0, &qword_22F0DB470, v11);
  MEMORY[0x2318FC520](v8, &type metadata for SelectPerson, v5, v12);
  v13 = *(v16 + 8);
  v13(v8, v5);
  MEMORY[0x2318FC510](v10, &type metadata for SelectPerson, v5, v12);
  return (v13)(v10, v5);
}

uint64_t sub_22F0AF794(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22D8, &qword_22F0DB478);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_22F0B09CC();
  sub_22F0CFFBC();
  v8 = sub_22F0419F0(&qword_27DAA22E8, &qword_27DAA22D8, &qword_22F0DB478, MEMORY[0x277CBA2C0]);
  MEMORY[0x2318FC520](v5, &type metadata for SelectPerson, v1, v8);
  v9 = *(v2 + 8);
  v9(v5, v1);
  MEMORY[0x2318FC510](v7, &type metadata for SelectPerson, v1, v8);
  return (v9)(v7, v1);
}

uint64_t sub_22F0AF964@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = sub_22F0D000C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[2] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2330, &qword_22F0DB760);
  v16 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v15[3] = swift_getKeyPath();
  (*(v2 + 104))(v4, *MEMORY[0x277CBA378], v1);
  v15[1] = "showVerticalLayoutToggleDT";
  v15[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2328, &qword_22F0DB758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2348, &qword_22F0DB768);
  sub_22F0B09CC();
  v11 = MEMORY[0x277CBA490];
  sub_22F0419F0(&qword_27DAA2338, &qword_27DAA2328, &qword_22F0DB758, MEMORY[0x277CBA490]);
  sub_22F0419F0(&qword_27DAA2350, &qword_27DAA2348, &qword_22F0DB768, v11);
  sub_22F0419F0(&qword_27DAA22F0, &qword_27DAA22B0, &qword_22F0DB428, MEMORY[0x277CB9F10]);
  sub_22F034BA0();
  sub_22F0D00BC();
  v12 = sub_22F0419F0(&qword_27DAA2340, &qword_27DAA2330, &qword_22F0DB760, v11);
  MEMORY[0x2318FC520](v8, &type metadata for SelectPerson, v5, v12);
  v13 = *(v16 + 8);
  v13(v8, v5);
  MEMORY[0x2318FC510](v10, &type metadata for SelectPerson, v5, v12);
  return (v13)(v10, v5);
}

uint64_t sub_22F0AFD04@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  v4 = sub_22F0D008C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2328, &qword_22F0DB758);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  v19[3] = swift_getKeyPath();
  (*(v5 + 104))(v7, *MEMORY[0x277CBA468], v4);
  v20 = 1;
  v19[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22D8, &qword_22F0DB478);
  v19[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2348, &qword_22F0DB768);
  sub_22F0B09CC();
  sub_22F0419F0(&qword_27DAA22E8, &qword_27DAA22D8, &qword_22F0DB478, MEMORY[0x277CBA2C0]);
  v15 = MEMORY[0x277CBA490];
  sub_22F0419F0(&qword_27DAA2350, &qword_27DAA2348, &qword_22F0DB768, MEMORY[0x277CBA490]);
  sub_22F0419F0(&qword_27DAA2358, &qword_27DAA22B8, &qword_22F0DB430, MEMORY[0x277CB9F10]);
  sub_22F0D00DC();
  v16 = sub_22F0419F0(&qword_27DAA2338, &qword_27DAA2328, &qword_22F0DB758, v15);
  MEMORY[0x2318FC520](v12, &type metadata for SelectPerson, v8, v16);
  v17 = *(v9 + 8);
  v17(v12, v8);
  MEMORY[0x2318FC510](v14, &type metadata for SelectPerson, v8, v16);
  return (v17)(v14, v8);
}

uint64_t sub_22F0B00A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v3 = sub_22F0D008C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2348, &qword_22F0DB768);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  swift_getKeyPath();
  (*(v4 + 104))(v6, *MEMORY[0x277CBA468], v3);
  v18 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22D8, &qword_22F0DB478);
  sub_22F0B09CC();
  sub_22F0419F0(&qword_27DAA22E8, &qword_27DAA22D8, &qword_22F0DB478, MEMORY[0x277CBA2C0]);
  sub_22F0419F0(&qword_27DAA2358, &qword_27DAA22B8, &qword_22F0DB430, MEMORY[0x277CB9F10]);
  sub_22F0D00DC();
  v14 = sub_22F0419F0(&qword_27DAA2350, &qword_27DAA2348, &qword_22F0DB768, MEMORY[0x277CBA490]);
  MEMORY[0x2318FC520](v11, &type metadata for SelectPerson, v7, v14);
  v15 = *(v8 + 8);
  v15(v11, v7);
  MEMORY[0x2318FC510](v13, &type metadata for SelectPerson, v7, v14);
  return (v15)(v13, v7);
}

uint64_t sub_22F0B03D8(uint64_t a1)
{
  swift_getKeyPath();
  sub_22F0B09CC();
  v1 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v2 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v3 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v4 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v5 = sub_22F0CFFAC();
  sub_22F0D00CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22F0DB3E0;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  *(v6 + 48) = v3;
  *(v6 + 56) = v4;
  *(v6 + 64) = v5;
  sub_22F0CFFAC();
  v7 = sub_22F0CFF1C();

  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return v7;
}

uint64_t sub_22F0B05B0(uint64_t a1)
{
  swift_getKeyPath();
  sub_22F0B09CC();
  v1 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v2 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v3 = sub_22F0CFFAC();
  sub_22F0D00CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22F0DB3F0;
  *(v4 + 32) = v1;
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  sub_22F0CFFAC();
  v5 = sub_22F0CFF1C();

  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return v5;
}

uint64_t sub_22F0B072C()
{
  swift_getKeyPath();
  sub_22F0B09CC();
  v0 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v1 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v2 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v3 = sub_22F0CFFAC();
  sub_22F0D00CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22F0DB400;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  sub_22F0CFFAC();
  v5 = sub_22F0CFF1C();

  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return v5;
}

uint64_t sub_22F0B08C0(uint64_t a1)
{
  swift_getKeyPath();
  sub_22F0B09CC();
  v1 = sub_22F0CFFAC();
  sub_22F0D00CC();
  swift_getKeyPath();
  sub_22F0CFFAC();
  v2 = sub_22F0CFFAC();
  sub_22F0D00CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22F0D80D0;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  sub_22F0CFFAC();
  v4 = sub_22F0CFF1C();

  sub_22F0D00CC();
  sub_22F0D00CC();
  return v4;
}

unint64_t sub_22F0B09CC()
{
  result = qword_280CBE608;
  if (!qword_280CBE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBE608);
  }

  return result;
}

unint64_t sub_22F0B0A24()
{
  result = qword_280CBE620;
  if (!qword_280CBE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBE620);
  }

  return result;
}

unint64_t sub_22F0B0A80()
{
  result = qword_27DAA22F8;
  if (!qword_27DAA22F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA2300, qword_22F0DB480);
    sub_22F0418A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA22F8);
  }

  return result;
}

uint64_t sub_22F0B0B04()
{
  swift_getKeyPath();
  sub_22F0B09CC();
  v0 = sub_22F0CFFAC();
  sub_22F0D00CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22F0D6C00;
  *(v1 + 32) = v0;
  sub_22F0CFFAC();
  v2 = sub_22F0CFF1C();

  sub_22F0D00CC();
  return v2;
}

unint64_t sub_22F0B0BE0()
{
  result = qword_280CBE600;
  if (!qword_280CBE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBE600);
  }

  return result;
}

unint64_t sub_22F0B0C38()
{
  result = qword_280CBE610;
  if (!qword_280CBE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBE610);
  }

  return result;
}

unint64_t sub_22F0B0C90()
{
  result = qword_280CBD120;
  if (!qword_280CBD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD120);
  }

  return result;
}

uint64_t sub_22F0B0D00@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAA0678 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D036C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA2270);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_22F0B0DD0()
{
  v0 = sub_22F0D007C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, *MEMORY[0x277CBA3F0], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22D0, &qword_22F0DB470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA22D8, &qword_22F0DB478);
  sub_22F0419F0(&qword_27DAA22E0, &qword_27DAA22D0, &qword_22F0DB470, MEMORY[0x277CBA490]);
  sub_22F0419F0(&qword_27DAA22E8, &qword_27DAA22D8, &qword_22F0DB478, MEMORY[0x277CBA2C0]);
  sub_22F0419F0(&qword_27DAA22F0, &qword_27DAA22B0, &qword_22F0DB428, MEMORY[0x277CB9F10]);
  return sub_22F0D00CC();
}

uint64_t sub_22F0B0FE8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_22F0B1388();
  *v4 = v2;
  v4[1] = sub_22F0B1094;

  return MEMORY[0x28210C3E0](a2, v5);
}

uint64_t sub_22F0B1094()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

void sub_22F0B11A0()
{
  sub_22F0B1334();

  JUMPOUT(0x2318FC260);
}

uint64_t sub_22F0B11DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22F0B1224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22F0B1290(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    sub_22F0CFF1C();
    sub_22F0CFFAC();
    sub_22F0CFFAC();

    return sub_22F0CFFAC();
  }

  return result;
}

uint64_t sub_22F0B12F4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    sub_22F0CFFAC();

    return sub_22F0CFFAC();
  }

  return result;
}

unint64_t sub_22F0B1334()
{
  result = qword_280CBE618;
  if (!qword_280CBE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBE618);
  }

  return result;
}

unint64_t sub_22F0B1388()
{
  result = qword_27DAA2318;
  if (!qword_27DAA2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2318);
  }

  return result;
}

unint64_t sub_22F0B13DC()
{
  result = qword_280CBD450;
  if (!qword_280CBD450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA2320, &qword_22F0DB750);
    sub_22F034988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD450);
  }

  return result;
}

void sub_22F0B14F8(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F0D143C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2318FDAB0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v11 = *(a1 + 8 * j + 32);
      }

      v12 = v11;
      v13 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v14 = [v11 dsid];
      if (v14)
      {
        v15 = v14;
        v8 = [v14 integerValue];
      }

      else
      {
        v8 = -1;
      }

      *a2 = v8;
      v16 = *a3;
      v17 = a3[1];
      sub_22F0CFF1C();
      v9 = FAFamilyMember.displayNameWithFallback.getter();
      MEMORY[0x2318FD2C0](v9);

      MEMORY[0x2318FD2C0](0x3A6469736420, 0xE600000000000000);
      v10 = sub_22F0D183C();
      MEMORY[0x2318FD2C0](v10);

      MEMORY[0x2318FD2C0](8236, 0xE200000000000000);
      *a3 = v16;
      a3[1] = v17;

      if (v13 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

void sub_22F0B16C0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_22F0CFFAC();
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
  sub_22F0D00CC();
}

uint64_t FAFamilyMember.displayNameWithFallback.getter()
{
  FAFamilyMember.displayName.getter();
  if (!v1 || (v2 = String.trimToNil()(), countAndFlagsBits = v2.value._countAndFlagsBits, , !v2.value._object))
  {
    if (![v0 isChildAccount])
    {
      [v0 isParent];
    }

    type metadata accessor for DaemonConnection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    countAndFlagsBits = sub_22F0D031C();
  }

  return countAndFlagsBits;
}

uint64_t static FAFamilyCircle.resolveFamily(userDSID:actionUserDSID:withContactFetcher:useCache:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 177) = a6;
  *(v6 + 176) = a4;
  *(v6 + 64) = a3;
  *(v6 + 72) = a5;
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  v7 = type metadata accessor for ResolvedFamily(0);
  *(v6 + 80) = v7;
  *(v6 + 88) = *(v7 - 8);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0B1A5C, 0, 0);
}

uint64_t sub_22F0B1A5C()
{
  if (*(v0 + 177) == 1)
  {
    if (qword_27DAA0688 != -1)
    {
      swift_once();
    }

    *(v0 + 144) = qword_27DAA2360;

    return MEMORY[0x2822009F8](sub_22F0B1BF0);
  }

  else
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    v3 = *(v0 + 176);
    v4 = *(v0 + 56);
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    *(v5 + 32) = v3 & 1;
    *(v5 + 40) = v1;
    v6 = swift_task_alloc();
    *(v0 + 160) = v6;
    *v6 = v0;
    v6[1] = sub_22F0B1E24;
    v7 = *(v0 + 120);
    v8 = *(v0 + 104);

    return MEMORY[0x2822007B8](v7, 0, 0, 0xD000000000000043, 0x800000022F0DE1C0, sub_22F040104, v5, v8);
  }
}

uint64_t sub_22F0B1BF0()
{
  sub_22F0B301C(*(v0 + 56), *(v0 + 136));

  return MEMORY[0x2822009F8](sub_22F0B1C5C, 0, 0);
}

uint64_t sub_22F0B1C5C()
{
  v1 = *(v0 + 136);
  if ((*(*(v0 + 88) + 48))(v1, 1, *(v0 + 80)) == 1)
  {
    sub_22F003A4C(v1, &qword_27DAA1448, &unk_22F0D6640);
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v4 = *(v0 + 176);
    v5 = *(v0 + 56);
    v6 = swift_task_alloc();
    *(v0 + 152) = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v2;
    v7 = swift_task_alloc();
    *(v0 + 160) = v7;
    *v7 = v0;
    v7[1] = sub_22F0B1E24;
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);

    return MEMORY[0x2822007B8](v8, 0, 0, 0xD000000000000043, 0x800000022F0DE1C0, sub_22F040104, v6, v9);
  }

  else
  {
    sub_22F03DCB4(v1, *(v0 + 48));

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_22F0B1E24()
{

  return MEMORY[0x2822009F8](sub_22F0B1F3C, 0, 0);
}

uint64_t sub_22F0B1F3C()
{
  sub_22F040114(v0[15], v0[14]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[15];
    v0[5] = *v0[14];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
    swift_willThrowTypedImpl();
    sub_22F003A4C(v1, &qword_27DAA1760, &unk_22F0D77D8);

    v2 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  sub_22F03DCB4(v0[14], v0[12]);
  if (qword_27DAA0688 != -1)
  {
    swift_once();
  }

  v0[21] = qword_27DAA2360;

  return MEMORY[0x2822009F8](sub_22F0B20C8);
}

uint64_t sub_22F0B20C8()
{
  v1 = [**(v0 + 96) dsid];
  if (v1)
  {
    v2 = *(v0 + 128);
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 80);
    v6 = v1;
    v7 = [v1 integerValue];
    sub_22F01DEA8(v3, v2);
    (*(v4 + 56))(v2, 0, 1, v5);
    swift_beginAccess();
    sub_22F046214(v2, v7);
    swift_endAccess();
  }

  return MEMORY[0x2822009F8](sub_22F0B21E0, 0, 0);
}

uint64_t sub_22F0B21E0()
{
  v1 = v0[12];
  v2 = v0[6];
  sub_22F003A4C(v0[15], &qword_27DAA1760, &unk_22F0D77D8);
  sub_22F03DCB4(v1, v2);

  v3 = v0[1];

  return v3();
}

void *ResolvedFamily.approverByDSID(with:)(id a1)
{
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F0D143C())
  {
    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2318FDAB0](j, v3);
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = [v6 dsid];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 integerValue];

        if (v11 == a1)
        {
          return v7;
        }
      }

      if (v8 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return 0;
}

uint64_t static ResolvedFamily.getFamilyForLoggedInChild(withContactFetcher:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22F0D05BC();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0B24FC, 0, 0);
}

uint64_t sub_22F0B24FC()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_22F0B2620;

  return v6(v2, v3);
}

uint64_t sub_22F0B2620(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_22F0B277C, 0, 0);
}

uint64_t sub_22F0B277C()
{
  v1 = v0[11];
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_8:
      v9 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
      if ([v9 isMe])
      {
        break;
      }

      v5 &= v5 - 1;
      v7 = v8;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    sub_22F0D00CC();

    v18 = 0;
    v42 = MEMORY[0x277D84F90];
    v19 = -1;
    v20 = -1 << *(v1 + 32);
    if (-v20 < 64)
    {
      v19 = ~(-1 << -v20);
    }

    v21 = v19 & *(v1 + 64);
    v22 = (63 - v20) >> 6;
    v23 = &selRef_encodeObject_forKey_;
    if (v21)
    {
      goto LABEL_23;
    }

    while (1)
    {
LABEL_24:
      v24 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_37;
      }

      if (v24 >= v22)
      {
        break;
      }

      v21 = *(v2 + 8 * v24);
      ++v18;
      if (v21)
      {
        while (1)
        {
          v25 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          v26 = *(*(v1 + 56) + ((v24 << 9) | (8 * v25)));
          if ([v26 v23[65]])
          {
            sub_22F0D15EC();
            sub_22F0D162C();
            sub_22F0D163C();
            sub_22F0D15FC();
            v23 = &selRef_encodeObject_forKey_;
            v18 = v24;
            if (!v21)
            {
              goto LABEL_24;
            }
          }

          else
          {

            v18 = v24;
            if (!v21)
            {
              goto LABEL_24;
            }
          }

LABEL_23:
          v24 = v18;
        }
      }
    }

    sub_22F0D00CC();
    if (v42 < 0 || (v42 & 0x4000000000000000) != 0)
    {
      if (sub_22F0D143C())
      {
        goto LABEL_33;
      }
    }

    else if (*(v42 + 16))
    {
LABEL_33:
      v41 = type metadata accessor for ResolvedFamily(0);
      sub_22F0D05AC();
      if (qword_27DAA0618 != -1)
      {
        swift_once();
      }

      v27 = v0[8];
      v28 = v0[6];
      v39 = v0[9];
      v40 = v0[7];
      v30 = v0[4];
      v29 = v0[5];
      v31 = v0[2];
      __swift_project_value_buffer(v30, qword_27DAA2168);
      v32 = [objc_opt_self() seconds];
      sub_22F0D019C();

      sub_22F0D018C();
      (*(v29 + 8))(v28, v30);
      sub_22F0D054C();
      (*(v27 + 8))(v39, v40);
      *v31 = v9;
      v31[1] = 0;
      v31[2] = v42;
      (*(*(v41 - 8) + 56))(v31, 0, 1, v41);
      goto LABEL_15;
    }

    sub_22F0D00CC();
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v33 = sub_22F0D0A1C();
    __swift_project_value_buffer(v33, qword_280CBEC40);
    v34 = sub_22F0D09FC();
    v35 = sub_22F0D123C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22EFE1000, v34, v35, "Found no approvers in family (this should be impossible)", v36, 2u);
      MEMORY[0x2318FE8B0](v36, -1, -1);
    }

    v37 = v0[2];

    v38 = type metadata accessor for ResolvedFamily(0);
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    sub_22F0D00CC();
    swift_bridgeObjectRelease_n();
    if (qword_280CBEC38 == -1)
    {
      goto LABEL_12;
    }

LABEL_38:
    swift_once();
LABEL_12:
    v10 = sub_22F0D0A1C();
    __swift_project_value_buffer(v10, qword_280CBEC40);
    v11 = sub_22F0D09FC();
    v12 = sub_22F0D122C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22EFE1000, v11, v12, "Impossible, can't find me!", v13, 2u);
      MEMORY[0x2318FE8B0](v13, -1, -1);
    }

    v14 = v0[2];

    v15 = type metadata accessor for ResolvedFamily(0);
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

LABEL_15:

  v16 = v0[1];

  return v16();
}

uint64_t static FAFamilyCircle.resolveFamily(userDSID:actionUserDSID:withContactFetcher:completion:)(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84F90];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = a4[3];
  v15 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = v12;
  *(v16 + 40) = a1;
  *(v16 + 48) = v10;
  *(v16 + 56) = v13;
  *(v16 + 64) = a2;
  *(v16 + 72) = a3 & 1;
  *(v16 + 80) = v11;
  v17 = *(v15 + 8);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  v17(sub_22F050688, v16, v14, v15);
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();

  return sub_22F0D00CC();
}

char *FAFamilyMember.allKnownHandles.getter()
{
  v1 = [v0 appleID];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_22F0D0CAC();

  v3 = String.trimToNil()();

  v4 = MEMORY[0x277D84F90];
  if (v3.value._object)
  {
    v4 = sub_22F03C784(0, 1, 1, MEMORY[0x277D84F90]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_22F03C784((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    *&v4[16 * v6 + 32] = v3;
  }

  return v4;
}

uint64_t sub_22F0B2FD0()
{
  type metadata accessor for FamilyCache();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  qword_27DAA2360 = v0;
  return result;
}

uint64_t sub_22F0B301C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22F0D05BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ResolvedFamily(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  swift_beginAccess();
  v16 = *(v2 + 112);
  if (*(v16 + 16))
  {
    v17 = sub_22EFFDADC(a1);
    if (v18)
    {
      sub_22F01DEA8(*(v16 + 56) + *(v10 + 72) * v17, v13);
      sub_22F03DCB4(v13, v15);
      sub_22F0D05AC();
      v19 = sub_22F0D052C();
      (*(v6 + 8))(v8, v5);
      if ((v19 & 1) == 0)
      {
        sub_22F03DCB4(v15, a2);
        v20 = 0;
        return (*(v10 + 56))(a2, v20, 1, v9);
      }

      sub_22F050788(v15);
    }
  }

  v20 = 1;
  return (*(v10 + 56))(a2, v20, 1, v9);
}

uint64_t sub_22F0B3234()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22F0B326C()
{
  if (qword_27DAA0688 != -1)
  {
    swift_once();
  }

  return sub_22F0CFFAC();
}

uint64_t sub_22F0B32C8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FamilyCache();

  return MEMORY[0x2822005F8](v3, a2);
}

void *ResolvedFamily.actionFamilyMember.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

id ResolvedFamily.findMe.getter()
{
  v1 = *v0;
  if ([*v0 isMe])
  {
    v2 = v1;
  }

  else
  {
    v3 = *(v0 + 16);
    if (v3 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F0D143C())
    {
      for (j = 0; ; ++j)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2318FDAB0](j, v3);
        }

        else
        {
          if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * j + 32);
        }

        v1 = v6;
        v7 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        if ([v6 isMe])
        {
          return v1;
        }

        if (v7 == i)
        {
          return 0;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

    return 0;
  }

  return v1;
}

uint64_t ResolvedFamily.init(requestingFamilyMember:actionFamilyMember:approvers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v18 = a2;
  v19 = a3;
  v17 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = sub_22F0D05BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResolvedFamily(0);
  sub_22F0D05AC();
  if (qword_27DAA0618 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_27DAA2168);
  v13 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v6 + 8))(v8, v5);
  sub_22F0D054C();
  result = (*(v10 + 8))(v12, v9);
  v15 = v18;
  *a4 = v17;
  a4[1] = v15;
  a4[2] = v19;
  return result;
}

uint64_t ResolvedFamily.description.getter()
{
  v1 = v0;
  v2 = [*v0 dsid];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = -1;
  }

  v16 = v4;
  sub_22F0D152C();

  v17 = 0xD000000000000012;
  v18 = 0x800000022F0DFCE0;
  v5 = FAFamilyMember.displayNameWithFallback.getter();
  MEMORY[0x2318FD2C0](v5);

  MEMORY[0x2318FD2C0](0x3A6469736420, 0xE600000000000000);
  v6 = sub_22F0D183C();
  MEMORY[0x2318FD2C0](v6);

  v7 = v1[1];
  if (v7)
  {
    v8 = v7;
    v9 = [v8 dsid];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 integerValue];
    }

    else
    {
      v11 = -1;
    }

    v16 = v11;
    sub_22F0D152C();
    sub_22F0CFF1C();

    MEMORY[0x2318FD2C0](0x206E6F697463610ALL, 0xEE00203A72657375);
    v12 = FAFamilyMember.displayNameWithFallback.getter();
    MEMORY[0x2318FD2C0](v12);

    MEMORY[0x2318FD2C0](0x3A6469736420, 0xE600000000000000);
    v13 = sub_22F0D183C();
    MEMORY[0x2318FD2C0](v13);

    v17 = 0xD000000000000012;
    v18 = 0x800000022F0DFCE0;
  }

  v14 = v1[2];
  if (v14 >> 62)
  {
    if (!sub_22F0D143C())
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:
    sub_22F0CFF1C();
    MEMORY[0x2318FD2C0](0x65766F727070610ALL, 0xEC000000203A7372);

    v17 = 0xD000000000000012;
    v18 = 0x800000022F0DFCE0;
  }

LABEL_12:
  sub_22F0B14F8(v14, &v16, &v17);
  return v17;
}

uint64_t FAFamilyMember.displayName.getter()
{
  v1 = [v0 contact];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
    [v3 setStyle_];
    countAndFlagsBits = ContactFormatter.displayName(for:includePhone:)(v2, 1)._countAndFlagsBits;
  }

  else
  {
    v6 = [v0 firstName];
    if (!v6 || (v7 = v6, sub_22F0D0CAC(), v7, v8 = String.trimToNil()(), countAndFlagsBits = v8.value._countAndFlagsBits, , !v8.value._object))
    {
      v9 = [v0 fullName];
      if (v9 && (v10 = v9, sub_22F0D0CAC(), v10, v11 = String.trimToNil()(), countAndFlagsBits = v11.value._countAndFlagsBits, , v11.value._object))
      {
      }

      else
      {
        v12 = [v0 appleID];
        if (v12)
        {
          v13 = v12;
          sub_22F0D0CAC();

          countAndFlagsBits = String.trimToNil()().value._countAndFlagsBits;
          swift_bridgeObjectRelease_n();
        }

        else
        {
          swift_bridgeObjectRelease_n();
          return 0;
        }
      }
    }
  }

  return countAndFlagsBits;
}

uint64_t type metadata accessor for ResolvedFamily(uint64_t a1)
{
  result = qword_27DAA23A0;
  if (!qword_27DAA23A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void FAFamilyMember.normalizedPhoneNumbers.getter()
{
  v44 = sub_22F0D01DC();
  v1 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [v0 memberPhoneNumbers];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22F0D0CAC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = String.splitWith(_:)(44, 0xE100000000000000, v6, v8);

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v1 + 8);
    v13 = v9 + 40;
    v41 = v10 - 1;
    v42 = v9 + 40;
    v43 = MEMORY[0x277D84F90];
    do
    {
      v14 = (v13 + 16 * v11);
      v15 = v11;
      while (1)
      {
        if (v15 >= *(v9 + 16))
        {
          __break(1u);
          return;
        }

        v11 = v15 + 1;
        v16 = *v14;
        v45 = *(v14 - 1);
        v46 = v16;
        sub_22F0CFF1C();
        sub_22F0D01CC();
        sub_22F00901C();
        v17 = sub_22F0D136C();
        v19 = v18;
        (*v12)(v3, v44);

        v20 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v20 = v17 & 0xFFFFFFFFFFFFLL;
        }

        if (v20)
        {
          break;
        }

        v14 += 2;
        ++v15;
        if (v10 == v11)
        {
          goto LABEL_20;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_22F03C784(0, *(v43 + 2) + 1, 1, v43);
      }

      v22 = *(v43 + 2);
      v21 = *(v43 + 3);
      if (v22 >= v21 >> 1)
      {
        v43 = sub_22F03C784((v21 > 1), v22 + 1, 1, v43);
      }

      v13 = v42;
      v23 = v43;
      *(v43 + 2) = v22 + 1;
      v24 = &v23[16 * v22];
      *(v24 + 4) = v17;
      *(v24 + 5) = v19;
    }

    while (v41 != v15);
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

LABEL_20:

  v25 = v43;
  v26 = *(v43 + 2);
  if (v26)
  {
    v45 = MEMORY[0x277D84F90];
    sub_22EFFC4E8(0, v26, 0);
    v27 = v45;
    v28 = v25 + 40;
    do
    {
      v29 = objc_allocWithZone(MEMORY[0x277CBDB70]);
      sub_22F0CFF1C();
      v30 = sub_22F0D0C7C();
      v31 = [v29 initWithStringValue_];

      if (v31 && (v32 = [v31 fullyQualifiedDigits]) != 0)
      {
        v33 = v32;
        v34 = sub_22F0D0CAC();
        v36 = v35;
      }

      else
      {
        v34 = sub_22F0D0D0C();
        v36 = v37;
      }

      v45 = v27;
      v39 = *(v27 + 16);
      v38 = *(v27 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_22EFFC4E8((v38 > 1), v39 + 1, 1);
        v27 = v45;
      }

      *(v27 + 16) = v39 + 1;
      v40 = v27 + 16 * v39;
      *(v40 + 32) = v34;
      *(v40 + 40) = v36;
      v28 += 16;
      --v26;
    }

    while (v26);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  sub_22F058B88(v27);
}

uint64_t sub_22F0B3F34(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v25 = a4;
  v24 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA23E8, qword_22F0DBB20);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  (*(v9 + 16))(&v22 - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x277D84F90];
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = a5[4];
  v23 = a5[3];
  __swift_project_boxed_opaque_existential_1(a5, v23);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_22F0B79C0;
  *(v19 + 24) = v13;
  *(v19 + 32) = v16;
  *(v19 + 40) = a2;
  *(v19 + 48) = v14;
  *(v19 + 56) = v17;
  *(v19 + 64) = v24;
  *(v19 + 72) = v25 & 1;
  *(v19 + 80) = v15;
  v20 = *(v18 + 8);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  v20(sub_22F0507E4, v19, v23, v18);
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t sub_22F0B41D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22F040114(a1, &v5 - v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA23E8, qword_22F0DBB20);
  return sub_22F0D108C();
}

uint64_t sub_22F0B427C(char *a1, char a2, unint64_t a3, uint64_t a4, uint64_t a5, id *a6, uint64_t a7, unint64_t a8, id *a9, unsigned __int8 a10, uint64_t a11)
{
  v146 = a7;
  v144 = a6;
  v149 = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v141 = &v132 - v18;
  v19 = sub_22F0D05BC();
  v142 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v145 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for ResolvedFamily(0);
  MEMORY[0x28223BE20](v140);
  v143 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v132 - v24;
  v150 = v23;
  if (a2)
  {
    if (qword_280CBEC38 == -1)
    {
LABEL_3:
      v26 = sub_22F0D0A1C();
      __swift_project_value_buffer(v26, qword_280CBEC40);
      v27 = a1;
      v28 = sub_22F0D09FC();
      v29 = sub_22F0D123C();
      sub_22F015BE4(a1, 1);
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v159 = v151;
        *v30 = 136315138;
        swift_getErrorValue();
        v31 = sub_22F0D192C();
        v33 = a3;
        v34 = v25;
        v35 = sub_22F00A560(v31, v32, &v159);

        *(v30 + 4) = v35;
        v25 = v34;
        a3 = v33;
        _os_log_impl(&dword_22EFE1000, v28, v29, "Family lookup error: %s", v30, 0xCu);
        v36 = v151;
        __swift_destroy_boxed_opaque_existential_1Tm(v151);
        MEMORY[0x2318FE8B0](v36, -1, -1);
        MEMORY[0x2318FE8B0](v30, -1, -1);
      }

      *v25 = a1;
      swift_storeEnumTagMultiPayload();
      v37 = a1;
      (a3)(v25);
      v38 = v25;
      return sub_22F003A4C(v38, &qword_27DAA1760, &unk_22F0D77D8);
    }

LABEL_78:
    swift_once();
    goto LABEL_3;
  }

  v147 = a4;
  v148 = a3;
  v139 = a8;
  v133 = v19;
  v134 = v17;
  v135 = v16;
  v137 = (&v132 - v24);
  v138 = a10;
  v151 = a9;
  v136 = a11;
  v159 = MEMORY[0x277D84F90];
  v39 = a1 + 64;
  v40 = 1 << a1[32];
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v25 = v41 & *(a1 + 8);
  sub_22F015CE4(a1, 0);
  sub_22F0CFF1C();
  v42 = 0;
  a3 = &selRef_encodeObject_forKey_;
  if (v25)
  {
    goto LABEL_11;
  }

  while (1)
  {
LABEL_12:
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    if (v43 >= ((v40 + 63) >> 6))
    {
      break;
    }

    v25 = *&v39[8 * v43];
    ++v42;
    if (v25)
    {
      while (1)
      {
        v44 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v45 = *(*(a1 + 7) + ((v43 << 9) | (8 * v44)));
        if ([v45 isParent])
        {
          sub_22F0D15EC();
          sub_22F0D162C();
          sub_22F0D163C();
          sub_22F0D15FC();
          v42 = v43;
          if (!v25)
          {
            goto LABEL_12;
          }
        }

        else
        {

          v42 = v43;
          if (!v25)
          {
            goto LABEL_12;
          }
        }

LABEL_11:
        v43 = v42;
      }
    }
  }

  sub_22F0D00CC();
  v46 = v159;
  v47 = v149;
  swift_beginAccess();
  *(v47 + 16) = v46;

  v48 = 1 << a1[32];
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  a3 = v49 & *(a1 + 8);
  sub_22F015CE4(a1, 0);
  v25 = 0;
  v50 = (v48 + 63) >> 6;
  v51 = v144;
  while (2)
  {
    if (!a3)
    {
      while (1)
      {
        v52 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_75;
        }

        if (v52 >= v50)
        {
          sub_22F0D00CC();
          v157 = 0;
          v158 = 0xE000000000000000;
          sub_22F0D152C();

          v157 = 0xD000000000000022;
          v158 = 0x800000022F0DFDB0;
          v155 = v51;
          v60 = sub_22F0D183C();
          MEMORY[0x2318FD2C0](v60);

          v62 = v157;
          v61 = v158;
          if (qword_27DAA05E0 != -1)
          {
            swift_once();
          }

          v63 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v62, v61, [qword_27DAACF00 code]);

          v64 = v139;
          swift_beginAccess();
          v65 = *(v64 + 16);
          *(v64 + 16) = v63;

          v59 = v148;
          if (qword_280CBEC38 != -1)
          {
            swift_once();
          }

          v66 = sub_22F0D0A1C();
          __swift_project_value_buffer(v66, qword_280CBEC40);
          sub_22F0CFFAC();
          v67 = sub_22F0D09FC();
          v68 = sub_22F0D123C();
          if (!os_log_type_enabled(v67, v68))
          {
            sub_22F0D00CC();

            if (v138)
            {
              goto LABEL_55;
            }

            goto LABEL_41;
          }

          v132 = a1;
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v155 = v70;
          *v69 = 136315138;
          swift_beginAccess();
          if (!*(v64 + 16))
          {
            sub_22F0D00CC();
            __break(1u);
            goto LABEL_81;
          }

          ErrorValue = swift_getErrorValue();
          v144 = &v132;
          v72 = v152;
          v73 = *(v152 - 8);
          MEMORY[0x28223BE20](ErrorValue);
          v75 = &v132 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v73 + 16))(v75);
          sub_22F0D00CC();
          v76 = sub_22F0D192C();
          v78 = v77;
          (*(v73 + 8))(v75, v72);
          v79 = sub_22F00A560(v76, v78, &v155);

          *(v69 + 4) = v79;
          _os_log_impl(&dword_22EFE1000, v67, v68, "%s", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v70);
          MEMORY[0x2318FE8B0](v70, -1, -1);
          MEMORY[0x2318FE8B0](v69, -1, -1);

          v59 = v148;
          a1 = v132;
          if ((v138 & 1) == 0)
          {
            goto LABEL_41;
          }

          goto LABEL_55;
        }

        a3 = *&v39[8 * v52];
        ++v25;
        if (a3)
        {
          v25 = v52;
          break;
        }
      }
    }

    v53 = *(*(a1 + 7) + ((v25 << 9) | (8 * __clz(__rbit64(a3)))));
    v54 = [v53 dsid];
    if (!v54)
    {
      if (!v51)
      {
        break;
      }

      goto LABEL_22;
    }

    v55 = v54;
    v56 = [v54 integerValue];

    if (v56 != v51)
    {
LABEL_22:
      a3 &= a3 - 1;

      continue;
    }

    break;
  }

  sub_22F0D00CC();
  v57 = v146;
  swift_beginAccess();
  v58 = *(v57 + 16);
  *(v57 + 16) = v53;

  v59 = v148;
  if (v138)
  {
LABEL_55:
    sub_22F015BE4(a1, 0);
    goto LABEL_65;
  }

LABEL_41:
  if (!v151)
  {
    goto LABEL_55;
  }

  v80 = v149;
  swift_beginAccess();
  v81 = *(v80 + 16);
  v132 = a1;
  if (v81 >> 62)
  {
    v82 = sub_22F0D143C();
  }

  else
  {
    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_22F0CFF1C();
  if (v82)
  {
    v83 = 0;
    v25 = v81 & 0xC000000000000001;
    a3 = v81 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v25)
      {
        v84 = MEMORY[0x2318FDAB0](v83, v81);
      }

      else
      {
        if (v83 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v84 = *(v81 + 8 * v83 + 32);
      }

      v85 = v84;
      a1 = (v83 + 1);
      if (__OFADD__(v83, 1))
      {
        goto LABEL_76;
      }

      v86 = [v84 dsid];
      if (v86)
      {
        v87 = v86;
        v88 = [v86 integerValue];

        if (v88 == v151)
        {

          sub_22F015BE4(v132, 0);
          v112 = v136;
          swift_beginAccess();
          v113 = *(v112 + 16);
          *(v112 + 16) = v85;

          goto LABEL_64;
        }
      }

      ++v83;
    }

    while (a1 != v82);
  }

  v155 = 0;
  v156 = 0xE000000000000000;
  sub_22F0D152C();

  v155 = 0xD00000000000002CLL;
  v156 = 0x800000022F0DFD80;
  v154 = v151;
  v89 = sub_22F0D183C();
  MEMORY[0x2318FD2C0](v89);

  v91 = v155;
  v90 = v156;
  if (qword_27DAA05E0 != -1)
  {
    swift_once();
  }

  v92 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v91, v90, [qword_27DAACF00 code]);

  v93 = v139;
  swift_beginAccess();
  v94 = *(v93 + 16);
  *(v93 + 16) = v92;

  v95 = v148;
  v96 = v132;
  v97 = v145;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v98 = sub_22F0D0A1C();
  __swift_project_value_buffer(v98, qword_280CBEC40);
  sub_22F0CFFAC();
  v99 = sub_22F0D09FC();
  v100 = sub_22F0D123C();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v155 = v102;
    *v101 = 136315138;
    swift_beginAccess();
    if (!*(v93 + 16))
    {
LABEL_81:
      result = sub_22F0D00CC();
      __break(1u);
      return result;
    }

    v103 = swift_getErrorValue();
    v151 = &v132;
    v104 = v153;
    v105 = *(v153 - 8);
    MEMORY[0x28223BE20](v103);
    v107 = &v132 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v105 + 16))(v107);
    sub_22F0D00CC();
    v108 = sub_22F0D192C();
    v110 = v109;
    (*(v105 + 8))(v107, v104);
    v111 = sub_22F00A560(v108, v110, &v155);

    *(v101 + 4) = v111;
    _os_log_impl(&dword_22EFE1000, v99, v100, "%s", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
    MEMORY[0x2318FE8B0](v102, -1, -1);
    MEMORY[0x2318FE8B0](v101, -1, -1);
    sub_22F015BE4(v132, 0);

LABEL_64:
    v59 = v148;
LABEL_65:
    v97 = v145;
  }

  else
  {
    sub_22F015BE4(v96, 0);
    sub_22F0D00CC();

    v59 = v95;
  }

  v114 = v146;
  swift_beginAccess();
  v115 = *(v114 + 16);
  if (v115)
  {
    v116 = v136;
    swift_beginAccess();
    v117 = *(v116 + 16);
    v118 = v149;
    swift_beginAccess();
    v119 = *(v118 + 16);
    v120 = v117;
    sub_22F0CFF1C();
    v121 = v115;
    sub_22F0D05AC();
    v122 = v97;
    if (qword_27DAA0618 != -1)
    {
      swift_once();
    }

    v123 = v135;
    __swift_project_value_buffer(v135, qword_27DAA2168);
    v124 = [objc_opt_self() seconds];
    v125 = v141;
    sub_22F0D019C();

    sub_22F0D018C();
    (*(v134 + 8))(v125, v123);
    v126 = v143;
    sub_22F0D054C();
    (*(v142 + 8))(v122, v133);
    *v126 = v121;
    v126[1] = v117;
    v126[2] = v119;
    v127 = v137;
    sub_22F01DEA8(v126, v137);
    swift_storeEnumTagMultiPayload();
    v148(v127);
    sub_22F003A4C(v127, &qword_27DAA1760, &unk_22F0D77D8);
    return sub_22F050788(v126);
  }

  if (qword_27DAA05D0 != -1)
  {
    swift_once();
  }

  v129 = qword_27DAACEF0;
  v130 = v137;
  *v137 = qword_27DAACEF0;
  swift_storeEnumTagMultiPayload();
  v131 = v129;
  v59(v130);
  v38 = v130;
  return sub_22F003A4C(v38, &qword_27DAA1760, &unk_22F0D77D8);
}

unint64_t sub_22F0B52AC()
{
  v1 = 0x7265766F72707061;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_22F0B5318@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F0B7760(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F0B5340(uint64_t a1)
{
  v2 = sub_22F0B7358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F0B537C(uint64_t a1)
{
  v2 = sub_22F0B7358();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResolvedFamily.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v70 = a2;
  v81 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2368, &qword_22F0DB8E8);
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x28223BE20](v2);
  v76 = &v61 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v74 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v61 - v5;
  v7 = sub_22F0D05BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ResolvedFamily(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 36);
  sub_22F0D05AC();
  if (qword_27DAA0618 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_27DAA2168);
  v16 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v74 + 8))(v6, v4);
  v73 = v15;
  sub_22F0D054C();
  v19 = *(v8 + 8);
  v18 = v8 + 8;
  v17 = v19;
  v74 = v7;
  v19(v10, v7);
  v20 = v77;
  __swift_project_boxed_opaque_existential_1(v77, v77[3]);
  sub_22F0B7358();
  v21 = v75;
  sub_22F0D19EC();
  if (v21)
  {
    goto LABEL_5;
  }

  v69 = v18;
  v75 = v14;
  LOBYTE(v78) = 0;
  sub_22F0B73AC();
  v22 = v72;
  sub_22F0D17BC();
  v26 = v79;
  v25 = v80;
  v27 = objc_opt_self();
  v28 = sub_22F0D046C();
  v79 = 0;
  v67 = v27;
  v29 = [v27 JSONObjectWithData:v28 options:0 error:&v79];

  if (!v29)
  {
    v32 = v79;
    sub_22F0D033C();

    swift_willThrow();
    sub_22F00AB5C(v26, v25);
    (*(v71 + 8))(v76, v22);
    v14 = v75;
    v20 = v77;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v23 = v74;
    return v17(&v14[v73], v23);
  }

  v66 = v26;
  v30 = v79;
  sub_22F0D13CC();
  swift_unknownObjectRelease();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0D78, &qword_22F0D4F60);
  v31 = swift_dynamicCast();
  v68 = v25;
  if (!v31)
  {
    sub_22F07DE84(MEMORY[0x277D84F90]);
  }

  v33 = objc_allocWithZone(MEMORY[0x277D08268]);
  v34 = sub_22F0D0AEC();

  v35 = [v33 initWithDictionaryRepresentation_];

  *v75 = v35;
  LOBYTE(v78) = 1;
  sub_22F0D17BC();
  v64 = v35;
  v36 = v79;
  v37 = v80;
  v38 = sub_22F0D046C();
  v79 = 0;
  v39 = [v67 JSONObjectWithData:v38 options:0 error:&v79];

  v40 = v68;
  if (!v39)
  {
    v42 = v79;
    sub_22F0D033C();

    swift_willThrow();
    sub_22F00AB5C(v66, v40);
    sub_22F00AB5C(v36, v37);
    (*(v71 + 8))(v76, v22);
    v43 = v64;
    __swift_destroy_boxed_opaque_existential_1Tm(v77);

    v14 = v75;
LABEL_13:
    v23 = v74;
    return v17(&v14[v73], v23);
  }

  v62 = v36;
  v63 = v37;
  v41 = v79;
  sub_22F0D13CC();
  swift_unknownObjectRelease();
  if (!swift_dynamicCast())
  {
    sub_22F07DE84(MEMORY[0x277D84F90]);
  }

  v44 = objc_allocWithZone(MEMORY[0x277D08268]);
  v45 = sub_22F0D0AEC();

  v46 = [v44 initWithDictionaryRepresentation_];

  v75[1] = v46;
  LOBYTE(v78) = 2;
  sub_22F0D17BC();
  v47 = v80;
  v65 = v79;
  v48 = sub_22F0D046C();
  v79 = 0;
  v49 = [v67 JSONObjectWithData:v48 options:0 error:&v79];

  v50 = v68;
  v51 = v63;
  if (!v49)
  {
    v60 = v79;
    sub_22F0D033C();

    swift_willThrow();
    sub_22F00AB5C(v66, v50);
    sub_22F00AB5C(v62, v51);
    sub_22F00AB5C(v65, v47);
    (*(v71 + 8))(v76, v22);
    v14 = v75;
    __swift_destroy_boxed_opaque_existential_1Tm(v77);

    goto LABEL_13;
  }

  v74 = v47;
  v52 = v79;
  sub_22F0D13CC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2380, &qword_22F0DB8F0);
  v53 = swift_dynamicCast();
  v54 = v75;
  if (v53)
  {
    v55 = *(v78 + 16);
    if (v55)
    {
      v79 = MEMORY[0x277D84F90];
      sub_22F0D161C();
      v56 = 32;
      do
      {
        v57 = objc_allocWithZone(MEMORY[0x277D08268]);
        sub_22F0CFF1C();
        v58 = sub_22F0D0AEC();

        [v57 initWithDictionaryRepresentation_];

        sub_22F0D15EC();
        sub_22F0D162C();
        sub_22F0D163C();
        sub_22F0D15FC();
        v56 += 8;
        --v55;
      }

      while (v55);

      sub_22F00AB5C(v66, v68);
      sub_22F00AB5C(v62, v63);
      sub_22F00AB5C(v65, v74);
      v59 = v79;
      v54 = v75;
      v22 = v72;
      goto LABEL_28;
    }
  }

  sub_22F00AB5C(v66, v50);
  sub_22F00AB5C(v62, v51);
  sub_22F00AB5C(v65, v74);
  v59 = MEMORY[0x277D84F90];
LABEL_28:
  (*(v71 + 8))(v76, v22);
  *(v54 + 16) = v59;
  sub_22F01DEA8(v54, v70);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  return sub_22F050788(v54);
}

uint64_t ResolvedFamily.encode(to:)(void *a1)
{
  v3 = v1;
  v65 = *MEMORY[0x277D85DE8];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2388, &qword_22F0DB8F8);
  v5 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v7 = v57 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F0B7358();
  sub_22F0D19FC();
  v8 = &selRef_encodeObject_forKey_;
  v9 = [*v1 dictionary];
  if (v9)
  {
    v10 = v9;
    sub_22F0D0AFC();
  }

  else
  {
    sub_22F07DE84(MEMORY[0x277D84F90]);
  }

  v11 = objc_opt_self();
  v12 = sub_22F0D0AEC();

  v63 = 0;
  v60 = v11;
  v13 = [v11 dataWithJSONObject:v12 options:0 error:&v63];

  v14 = v63;
  if (!v13)
  {
    goto LABEL_13;
  }

  v15 = sub_22F0D049C();
  v17 = v16;

  v63 = v15;
  v64 = v17;
  v62 = 0;
  v18 = sub_22F0B7400();
  v19 = v61;
  sub_22F0D180C();
  if (v2)
  {
    sub_22F00AB5C(v63, v64);
    return (*(v5 + 8))(v7, v19);
  }

  v59 = v18;
  sub_22F00AB5C(v63, v64);
  v21 = v3[1];
  if (v21 && (v22 = [v21 dictionary]) != 0)
  {
    v23 = v22;
    sub_22F0D0AFC();
  }

  else
  {
    sub_22F07DE84(MEMORY[0x277D84F90]);
  }

  v24 = sub_22F0D0AEC();

  v63 = 0;
  v25 = [v60 dataWithJSONObject:v24 options:0 error:&v63];

  v14 = v63;
  if (v25)
  {
    v26 = sub_22F0D049C();
    v28 = v27;

    v63 = v26;
    v64 = v28;
    v62 = 1;
    sub_22F0D180C();
    sub_22F00AB5C(v63, v64);
    v58 = v5;
    v30 = v3[2];
    if (v30 >> 62)
    {
      v55 = v3[2];
      v56 = sub_22F0D143C();
      v30 = v55;
      v31 = v56;
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57[1] = 0;
    if (v31)
    {
      v57[0] = v7;
      v32 = v30;
      v63 = MEMORY[0x277D84F90];
      sub_22EFFC830(0, v31 & ~(v31 >> 63), 0);
      if (v31 < 0)
      {
        __break(1u);
      }

      v33 = 0;
      v34 = v63;
      v35 = v32;
      v36 = v32 & 0xC000000000000001;
      v37 = v32;
      do
      {
        if (v36)
        {
          v38 = MEMORY[0x2318FDAB0](v33, v35);
        }

        else
        {
          v38 = *(v35 + 8 * v33 + 32);
        }

        v39 = v38;
        v40 = v8;
        v41 = [v38 v8[71]];
        if (v41)
        {
          v42 = v41;
          v43 = sub_22F0D0AFC();

          v39 = v42;
        }

        else
        {
          v43 = MEMORY[0x277D84F98];
        }

        v63 = v34;
        v45 = v34[2];
        v44 = v34[3];
        if (v45 >= v44 >> 1)
        {
          sub_22EFFC830((v44 > 1), v45 + 1, 1);
          v34 = v63;
        }

        ++v33;
        v34[2] = v45 + 1;
        v34[v45 + 4] = v43;
        v8 = v40;
        v35 = v37;
      }

      while (v31 != v33);
      v46 = v61;
      v7 = v57[0];
    }

    else
    {
      v46 = v61;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0D78, &qword_22F0D4F60);
    v47 = sub_22F0D0F2C();

    v63 = 0;
    v48 = [v60 dataWithJSONObject:v47 options:0 error:&v63];

    v49 = v63;
    v50 = v58;
    if (v48)
    {
      v51 = sub_22F0D049C();
      v53 = v52;

      v63 = v51;
      v64 = v53;
      v62 = 2;
      sub_22F0D180C();
      sub_22F00AB5C(v63, v64);
    }

    else
    {
      v54 = v49;
      sub_22F0D033C();

      swift_willThrow();
    }

    return (*(v50 + 8))(v7, v46);
  }

  else
  {
LABEL_13:
    v29 = v14;
    sub_22F0D033C();

    swift_willThrow();
    return (*(v5 + 8))(v7, v61);
  }
}

void *FAFamilyCircle.requestingFamilyMember.getter()
{
  v1 = [v0 members];
  sub_22F0034D8();
  v2 = sub_22F0D0F4C();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F0D143C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2318FDAB0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isMe])
      {

        return v6;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v8 = sub_22F0D0A1C();
  __swift_project_value_buffer(v8, qword_280CBEC40);
  v9 = sub_22F0D09FC();
  v10 = sub_22F0D122C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22EFE1000, v9, v10, "Impossible, can't find me!", v11, 2u);
    MEMORY[0x2318FE8B0](v11, -1, -1);
  }

  return 0;
}

uint64_t FAFamilyCircle.approvers.getter()
{
  v1 = [v0 members];
  sub_22F0034D8();
  v2 = sub_22F0D0F4C();

  v14 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F0D143C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2318FDAB0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isParent])
      {
        sub_22F0D15EC();
        sub_22F0D162C();
        sub_22F0D163C();
        sub_22F0D15FC();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v8 = v14;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_18:

  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    if (sub_22F0D143C())
    {
      return v8;
    }
  }

  else if (*(v8 + 16))
  {
    return v8;
  }

  sub_22F0D00CC();
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v9 = sub_22F0D0A1C();
  __swift_project_value_buffer(v9, qword_280CBEC40);
  v10 = sub_22F0D09FC();
  v11 = sub_22F0D123C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22EFE1000, v10, v11, "Found no approvers in family (this should be impossible)", v12, 2u);
    MEMORY[0x2318FE8B0](v12, -1, -1);
  }

  return 0;
}

uint64_t sub_22F0B68F0(uint64_t a1, id a2, uint64_t (*a3)(uint64_t, id))
{
  if (a2)
  {
    v5 = a1;
    v6 = a2;
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v7 = sub_22F0D0A1C();
    __swift_project_value_buffer(v7, qword_280CBEC40);
    v8 = a2;
    v9 = sub_22F0D09FC();
    v10 = sub_22F0D123C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_22EFE1000, v9, v10, "Error while fetching FamilyCircle: %@", v11, 0xCu);
      sub_22F003A4C(v12, &qword_27DAA1260, &qword_22F0D5F48);
      MEMORY[0x2318FE8B0](v12, -1, -1);
      MEMORY[0x2318FE8B0](v11, -1, -1);
    }

    else
    {
    }

    a1 = v5;
  }

  return a3(a1, a2);
}

uint64_t static FAFamilyCircle.fetch()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2398, &qword_22F0DB908);
  *v1 = v0;
  v1[1] = sub_22F0B6B6C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x29286863746566, 0xE700000000000000, sub_22F0B6DEC, 0, v2);
}

uint64_t sub_22F0B6B6C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_22F0B6C80;
  }

  else
  {
    v2 = sub_22F054604;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22F0B6C98(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA23E0, &qword_22F0DBB18);
    return sub_22F0D108C();
  }

  if (!a2)
  {
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v5 = sub_22F0D0A1C();
    __swift_project_value_buffer(v5, qword_280CBEC40);
    v6 = sub_22F0D09FC();
    v7 = sub_22F0D123C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22EFE1000, v6, v7, "Both error and FamilyCircle were nil. This probably shouldn't ever happen!", v8, 2u);
      MEMORY[0x2318FE8B0](v8, -1, -1);
    }

    goto LABEL_3;
  }

  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA23E0, &qword_22F0DBB18);
  return sub_22F0D107C();
}

void sub_22F0B6DEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA23E0, &qword_22F0DBB18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  (*(v3 + 16))(aBlock - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  v8 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22F0B7890;
  *(v9 + 24) = v7;
  aBlock[4] = sub_22F0B791C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F0B16C0;
  aBlock[3] = &block_descriptor_12;
  v10 = _Block_copy(aBlock);
  sub_22F0CFFAC();
  sub_22F0D00CC();
  [v8 startRequestWithCompletionHandler_];
  _Block_release(v10);
  sub_22F0D00CC();
}

unint64_t sub_22F0B6FEC(unint64_t result, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = result;
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if (!((a2 & 0x2000000000000000) != 0 ? v4 : result & 0xFFFFFFFFFFFFLL))
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v32[0] = result;
      v32[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v4)
        {
          if (--v4)
          {
            v8 = 0;
            v18 = v32 + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                break;
              }

              v20 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                break;
              }

              v8 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                break;
              }

              ++v18;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_78:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v4)
        {
          v8 = 0;
          v23 = v32;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v4)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v4)
      {
        if (--v4)
        {
          v8 = 0;
          v12 = v32 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              break;
            }

            v14 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            ++v12;
            if (!--v4)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_22F0D15DC();
      }

      v7 = *result;
      if (v7 == 43)
      {
        if (v5 >= 1)
        {
          v4 = v5 - 1;
          if (v5 != 1)
          {
            v8 = 0;
            if (result)
            {
              v15 = (result + 1);
              while (1)
              {
                v16 = *v15 - 48;
                if (v16 > 9)
                {
                  goto LABEL_62;
                }

                v17 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_62;
                }

                v8 = v17 + v16;
                if (__OFADD__(v17, v16))
                {
                  goto LABEL_62;
                }

                ++v15;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_54;
          }

          goto LABEL_62;
        }

        goto LABEL_77;
      }

      if (v7 != 45)
      {
        if (v5)
        {
          v8 = 0;
          if (result)
          {
            while (1)
            {
              v21 = *result - 48;
              if (v21 > 9)
              {
                goto LABEL_62;
              }

              v22 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_62;
              }

              v8 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                goto LABEL_62;
              }

              ++result;
              if (!--v5)
              {
                goto LABEL_54;
              }
            }
          }

          goto LABEL_54;
        }

LABEL_62:
        v8 = 0;
        LOBYTE(v4) = 1;
LABEL_63:
        v33 = v4;
        if ((v4 & 1) == 0)
        {
          goto LABEL_64;
        }

        return 0;
      }

      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v9 = (result + 1);
            while (1)
            {
              v10 = *v9 - 48;
              if (v10 > 9)
              {
                goto LABEL_62;
              }

              v11 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_62;
              }

              v8 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_62;
              }

              ++v9;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_54:
          LOBYTE(v4) = 0;
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  sub_22F0CFF1C();
  sub_22F0BE920(v3, a2, 10);
  v8 = v29;
  v31 = v30;

  if (v31)
  {
    return 0;
  }

LABEL_64:
  v32[0] = v8;
  if (sub_22F0D183C() == v3 && v26 == a2)
  {

    return v8;
  }

  v28 = sub_22F0D188C();

  result = v8;
  if ((v28 & 1) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_22F0B7358()
{
  result = qword_27DAA2370;
  if (!qword_27DAA2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2370);
  }

  return result;
}

unint64_t sub_22F0B73AC()
{
  result = qword_27DAA2378;
  if (!qword_27DAA2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2378);
  }

  return result;
}

unint64_t sub_22F0B7400()
{
  result = qword_27DAA2390;
  if (!qword_27DAA2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2390);
  }

  return result;
}

void sub_22F0B74A0(uint64_t a1)
{
  sub_22F0034D8();
  if (v1 <= 0x3F)
  {
    sub_22F0B758C(319, &qword_27DAA23B0, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22F0B758C(319, &qword_27DAA23B8, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_22F0D05BC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22F0B758C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22F0034D8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22F0B7600()
{
  result = qword_27DAA23C0;
  if (!qword_27DAA23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA23C0);
  }

  return result;
}

unint64_t sub_22F0B7658()
{
  result = qword_27DAA23C8;
  if (!qword_27DAA23C8)
  {
    type metadata accessor for FamilyCache();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA23C8);
  }

  return result;
}

unint64_t sub_22F0B76B4()
{
  result = qword_27DAA23D0;
  if (!qword_27DAA23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA23D0);
  }

  return result;
}

unint64_t sub_22F0B770C()
{
  result = qword_27DAA23D8;
  if (!qword_27DAA23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA23D8);
  }

  return result;
}

uint64_t sub_22F0B7760(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000022F0DFD60 == a2;
  if (v3 || (sub_22F0D188C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022F0DD450 == a2 || (sub_22F0D188C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265766F72707061 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F0D188C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22F0B7890(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA23E0, &qword_22F0DBB18);

  return sub_22F0B6C98(a1, a2);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

uint64_t objectdestroy_28Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_22F0B79C0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA23E8, qword_22F0DBB20);

  return sub_22F0B41D4(a1);
}

uint64_t sub_22F0B7A3C(uint64_t a1)
{
  v2 = sub_22F0D13FC();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_22F0B9120(v2, *(a1 + 36), 0, a1);
  sub_22F0CFF1C();
  return v4;
}

void *static QuickActionStore.default.getter()
{
  result = [objc_opt_self() interactionAdvisor];
  if (result)
  {
    v1 = result;
    v11 = &off_2843D0F88;
    v10 = sub_22F0B7C28();
    v8[4] = &off_2843D14B8;
    *&v9 = v1;
    v8[3] = &type metadata for FindMyLocationSharingProvider;
    v8[0] = MEMORY[0x277D84FA0];
    type metadata accessor for QuickActionStore();
    v2 = swift_allocObject();
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v8, &type metadata for FindMyLocationSharingProvider);
    MEMORY[0x28223BE20](v3);
    v5 = (v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5);
    v7 = *v5;
    v2[10] = &type metadata for FindMyLocationSharingProvider;
    v2[11] = &off_2843D14B8;
    v2[7] = v7;
    sub_22EFE6B9C(&v9, (v2 + 2));
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22F0B7C28()
{
  result = qword_280CBEC60;
  if (!qword_280CBEC60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CBEC60);
  }

  return result;
}

double sub_22F0B7C98@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = [*a1 handles];
  v6 = sub_22F0D0F4C();

  v7 = sub_22F058B88(v6);

  v8 = *__swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  sub_22F0CFF1C();
  v9 = sub_22F0B8AF0(v7, v8);

  v10 = sub_22F0B7A3C(v9);
  v12 = v11;
  sub_22F0D00CC();
  if (v12)
  {
    v13 = [v4 identifier];
    v14 = sub_22F0D0CAC();
    v16 = v15;

    if (qword_27DAA0610 != -1)
    {
      swift_once();
    }

    v18 = byte_27DAA2160;
    *a2 = 4;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = v10;
    *(a2 + 48) = v12;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 73) = v18;
  }

  else
  {
    result = 0.0;
    *(a2 + 58) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_22F0B7DF4@<D0>(char *a1@<X0>, id *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v9 = *a1;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v10 = sub_22F0D0A1C();
  __swift_project_value_buffer(v10, qword_280CBEC40);
  sub_22F0B9174(a2, v44);
  v11 = sub_22F0D09FC();
  v12 = sub_22F0D124C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v42 = v9;
    v41 = swift_slowAlloc();
    v43[0] = v41;
    *v13 = 136315394;
    *(v13 + 4) = sub_22F00A560(0xD000000000000026, 0x800000022F0DFE30, v43);
    *(v13 + 12) = 2080;
    v14 = [v44[0] identifier];
    v15 = sub_22F0D0CAC();
    v16 = a4;
    v17 = a2;
    v18 = v5;
    v19 = a3;
    v21 = v20;

    sub_22F0B91D0(v44);
    v22 = sub_22F00A560(v15, v21, v43);
    LOBYTE(v21) = v19;
    v5 = v18;
    a2 = v17;
    a4 = v16;

    *(v13 + 14) = v22;
    _os_log_impl(&dword_22EFE1000, v11, v12, "%s, person: %s", v13, 0x16u);
    swift_arrayDestroy();
    v9 = v42;
    MEMORY[0x2318FE8B0](v41, -1, -1);
    MEMORY[0x2318FE8B0](v13, -1, -1);

    if ((v21 & 1) == 0)
    {
LABEL_5:
      v23 = [*a2 handles];
      v24 = sub_22F0D0F4C();

      v25 = sub_22F058B88(v24);

      v26 = MEMORY[0x277D84FA0];
      goto LABEL_8;
    }
  }

  else
  {

    sub_22F0B91D0(v44);
    if ((a3 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F0D2BF0;
  v28 = [*a2 identifier];
  v29 = sub_22F0D0CAC();
  v31 = v30;

  *(inited + 32) = v29;
  *(inited + 40) = v31;
  v26 = sub_22F0A942C(inited);
  swift_setDeallocating();
  sub_22F022C14(inited + 32);
  v25 = MEMORY[0x277D84FA0];
LABEL_8:
  v32 = v5[5];
  v33 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v32);
  v44[0] = 10;
  v44[1] = v26;
  *&v45 = v25;
  BYTE8(v45) = v9;
  v34 = *(v33 + 8);
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  v35 = v34(v44, v32, v33);

  if (*(v35 + 16))
  {
    v36 = *(v35 + 48);
    v37 = *(v35 + 80);
    v46 = *(v35 + 64);
    v47[0] = v37;
    *(v47 + 10) = *(v35 + 90);
    *v44 = *(v35 + 32);
    v45 = v36;
    sub_22F0B1460(v44, v43);

    v38 = v47[0];
    a4[2] = v46;
    a4[3] = v38;
    *(a4 + 58) = *(v47 + 10);
    v39 = v45;
    *a4 = *v44;
    a4[1] = v39;
  }

  else
  {

    *(a4 + 58) = 0u;
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_22F0B81D0@<D0>(_BYTE *a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (v5 >= 4)
  {
  }

  else
  {
    v6 = sub_22F0D188C();

    if ((v6 & 1) == 0)
    {
      LOBYTE(v22) = v5;
      sub_22F0B7DF4(&v22, a2, 1, &v33);
      v43 = v33;
      v7 = v34;
      v39 = v35;
      v40 = v36;
      v41 = v37;
      v42 = v38;
      if (v34)
      {
        *a3 = v43;
        *(a3 + 16) = v7;
        v8 = v40;
        *(a3 + 24) = v39;
        *(a3 + 40) = v8;
        result = *&v41;
        *(a3 + 56) = v41;
        *(a3 + 72) = v42;
      }

      else
      {
        v21 = v5;
        sub_22F0B7DF4(&v21, a2, 0, &v22);
        v32 = v22;
        v10 = v23;
        v28 = v24;
        v29 = v25;
        v30 = v26;
        v31 = v27;
        if (v23)
        {
          *a3 = v32;
          *(a3 + 16) = v10;
          v11 = v29;
          *(a3 + 24) = v28;
          *(a3 + 40) = v11;
          result = *&v30;
          *(a3 + 56) = v30;
          *(a3 + 72) = v31;
        }

        else
        {
          v12 = [*a2 identifier];
          v13 = sub_22F0D0CAC();
          v15 = v14;

          if (v5 == 2)
          {
            v16 = sub_22F0D0CAC();
          }

          else
          {
            v16 = 0;
            v17 = 0;
          }

          if (qword_27DAA0610 != -1)
          {
            v19 = v16;
            v20 = v17;
            swift_once();
            v17 = v20;
            v16 = v19;
          }

          v18 = byte_27DAA2160;
          *a3 = v5;
          *(a3 + 8) = v13;
          *(a3 + 16) = v15;
          result = 0.0;
          *(a3 + 24) = 0u;
          *(a3 + 40) = 0u;
          *(a3 + 56) = v16;
          *(a3 + 64) = v17;
          *(a3 + 72) = 0;
          *(a3 + 73) = v18;
        }
      }

      return result;
    }
  }

  return sub_22F0B7C98(a2, a3);
}

uint64_t QuickActionStore.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t QuickActionStore.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_22F0B853C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:
    sub_22F0D00CC();
    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA18C8, &qword_22F0D82C0);
  result = sub_22F0D14EC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_22F0D199C();
    sub_22F0D0D5C();

    result = sub_22F0D19CC();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22F0B88CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:
    sub_22F0D00CC();
    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1880, &unk_22F0D8280);
  result = sub_22F0D14EC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22F0D199C();
    sub_22F0CFF1C();
    sub_22F0D0D5C();
    result = sub_22F0D19CC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_22F0B8AF0(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  sub_22F0CFFAC();
  isStackAllocationSafe = sub_22F0CFFAC();
  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_22F0B8D44((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
    sub_22F0D00CC();
    sub_22F0D00CC();
    sub_22F0D00CC();
  }

  else
  {
    v12 = swift_slowAlloc();
    sub_22F0CFFAC();
    v10 = sub_22F0B8CB4(v12, v6, a2, a1);
    sub_22F0D00CC();
    sub_22F0D00CC();
    MEMORY[0x2318FE8B0](v12, -1, -1);
  }

  return v10;
}

void *sub_22F0B8CB4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_22F0B8D44(result, a2, a3, a4);
    v9 = v8;
    sub_22F0D00CC();
    sub_22F0D00CC();
    return v9;
  }

  return result;
}

void sub_22F0B8D44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_22F0D199C();
      sub_22F0CFF1C();
      sub_22F0D0D5C();
      v26 = sub_22F0D19CC();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_22F0D188C() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(a1 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:
          sub_22F0CFFAC();
          sub_22F0B88CC(a1, a2, v53, v5);
          return;
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_22F0D199C();
      sub_22F0CFF1C();
      sub_22F0D0D5C();
      v39 = sub_22F0D19CC();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_22F0D188C() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        a1[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

uint64_t sub_22F0B9120(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t BMAskToBuyEvent.ProductType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x736B6F6F62;
  v3 = 0x65726F7453707061;
  v4 = 0x7069726373627573;
  if (v1 != 3)
  {
    v4 = 0x5654656C707061;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73656E755469;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

double BMAskToBuyEvent.productFromRequest()@<D0>(char *a1@<X8>)
{
  v3 = [v1 productType];
  sub_22F0D0CAC();

  v4 = String.trimToNil()();
  countAndFlagsBits = v4.value._countAndFlagsBits;
  object = v4.value._object;

  if (!v4.value._object)
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  sub_22F01B924(0, &unk_27DAA23F0, 0x277CF1910);
  static BMAskToBuyEvent.productType(withCode:)(countAndFlagsBits, object, a1);

  return result;
}

BOOL static BMAskToBuyEvent.< infix(_:_:)(void *a1, void *a2)
{
  [a1 eventTime];
  v4 = v3;
  [a2 eventTime];
  return v4 < v5;
}

uint64_t RequestStatus.description.getter()
{
  v1 = 0x6465766F72707041;
  if (*v0 != 1)
  {
    v1 = 0x6465696E6544;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E6550;
  }
}

People::RequestStatus_optional __swiftcall RequestStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22F0B9488(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6465766F72707041;
  if (v2 != 1)
  {
    v4 = 0x6465696E6544;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E69646E6550;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6465766F72707041;
  if (*a2 != 1)
  {
    v8 = 0x6465696E6544;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E69646E6550;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22F0D188C();
  }

  return v11 & 1;
}