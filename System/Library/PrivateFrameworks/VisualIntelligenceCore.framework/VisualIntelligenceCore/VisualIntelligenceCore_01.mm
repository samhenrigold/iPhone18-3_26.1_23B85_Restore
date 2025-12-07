uint64_t sub_1D87A0C6C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D8B16BA0() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Lens_Locale(0);
  sub_1D8B14960();
  sub_1D879F868(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D8B158C0() & 1;
}

uint64_t sub_1D87A0D70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D87A0DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D87A0E38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D87A0EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lens_RequestConfig(0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62860, &qword_1D8B1E070);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v40 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62870, &qword_1D8B1B398);
  MEMORY[0x1EEE9AC00](v45);
  v10 = &v40 - v9;
  v11 = type metadata accessor for Lens_Locale(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62868, &qword_1D8B1B390);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v40 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62878, qword_1D8B1B3A0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  if (!sub_1D87A057C(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    goto LABEL_19;
  }

  v42 = v10;
  v40 = v6;
  v21 = a2;
  VisualDataRequest = type metadata accessor for Lens_FetchVisualDataRequest(0);
  v22 = *(VisualDataRequest + 28);
  v23 = *(v18 + 48);
  v43 = a1;
  sub_1D87A0E38(a1 + v22, v20, &qword_1ECA62868, &qword_1D8B1B390);
  sub_1D87A0E38(v21 + v22, &v20[v23], &qword_1ECA62868, &qword_1D8B1B390);
  v24 = *(v12 + 48);
  if (v24(v20, 1, v11) != 1)
  {
    sub_1D87A0E38(v20, v17, &qword_1ECA62868, &qword_1D8B1B390);
    if (v24(&v20[v23], 1, v11) != 1)
    {
      sub_1D87A0D70(&v20[v23], v14, type metadata accessor for Lens_Locale);
      v28 = sub_1D87A0C6C(v17, v14);
      sub_1D87A0DD8(v14, type metadata accessor for Lens_Locale);
      sub_1D87A0DD8(v17, type metadata accessor for Lens_Locale);
      sub_1D87A14E4(v20, &qword_1ECA62868, &qword_1D8B1B390);
      if ((v28 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }

    sub_1D87A0DD8(v17, type metadata accessor for Lens_Locale);
LABEL_7:
    v25 = &qword_1ECA62878;
    v26 = qword_1D8B1B3A0;
    v27 = v20;
LABEL_18:
    sub_1D87A14E4(v27, v25, v26);
    goto LABEL_19;
  }

  if (v24(&v20[v23], 1, v11) != 1)
  {
    goto LABEL_7;
  }

  sub_1D87A14E4(v20, &qword_1ECA62868, &qword_1D8B1B390);
LABEL_9:
  v29 = v43;
  if ((*(v43 + 16) != *(v21 + 16) || *(v43 + 24) != *(v21 + 24)) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_19;
  }

  v30 = v42;
  v31 = *(VisualDataRequest + 32);
  v32 = *(v45 + 48);
  sub_1D87A0E38(v29 + v31, v42, &qword_1ECA62860, &qword_1D8B1E070);
  sub_1D87A0E38(v21 + v31, v30 + v32, &qword_1ECA62860, &qword_1D8B1E070);
  v33 = v47;
  v34 = *(v46 + 48);
  if (v34(v30, 1, v47) == 1)
  {
    if (v34(v30 + v32, 1, v33) == 1)
    {
      sub_1D87A14E4(v30, &qword_1ECA62860, &qword_1D8B1E070);
LABEL_22:
      sub_1D8B14960();
      sub_1D879F868(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v36 = sub_1D8B158C0();
      return v36 & 1;
    }

    goto LABEL_17;
  }

  v35 = v44;
  sub_1D87A0E38(v30, v44, &qword_1ECA62860, &qword_1D8B1E070);
  if (v34(v30 + v32, 1, v33) == 1)
  {
    sub_1D87A0DD8(v35, type metadata accessor for Lens_RequestConfig);
LABEL_17:
    v25 = &qword_1ECA62870;
    v26 = &qword_1D8B1B398;
    v27 = v30;
    goto LABEL_18;
  }

  v38 = v40;
  sub_1D87A0D70(v30 + v32, v40, type metadata accessor for Lens_RequestConfig);
  v39 = sub_1D87A06E4(v35, v38);
  sub_1D87A0DD8(v38, type metadata accessor for Lens_RequestConfig);
  sub_1D87A0DD8(v35, type metadata accessor for Lens_RequestConfig);
  sub_1D87A14E4(v30, &qword_1ECA62860, &qword_1D8B1E070);
  if (v39)
  {
    goto LABEL_22;
  }

LABEL_19:
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_1D87A14E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D87A1544(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_1D87A1598(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_1D87A1614(uint64_t a1)
{
  sub_1D87A1740(319, &qword_1ECA62890, &type metadata for Lens_RequestConfig.Feature);
  if (v1 <= 0x3F)
  {
    sub_1D87A1740(319, &qword_1ECA62898, &type metadata for Lens_RequestConfig.ExperimentalOption);
    if (v2 <= 0x3F)
    {
      sub_1D8B14960();
      if (v3 <= 0x3F)
      {
        sub_1D87A1A54(319, &qword_1ECA628A0, type metadata accessor for Lens_RequestConfig.ContextData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D87A1740(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D8B15DB0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D87A1818(uint64_t a1)
{
  result = sub_1D8B14960();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D87A18BC(uint64_t a1)
{
  result = sub_1D8B14960();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D87A1968(uint64_t a1)
{
  sub_1D8B14960();
  if (v1 <= 0x3F)
  {
    sub_1D87A1A54(319, &qword_1ECA628D8, type metadata accessor for Lens_Locale);
    if (v2 <= 0x3F)
    {
      sub_1D87A1A54(319, &qword_1ECA628E0, type metadata accessor for Lens_RequestConfig);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D87A1A54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8B16470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D87A1AAC()
{
  result = qword_1ECA628E8;
  if (!qword_1ECA628E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA628E8);
  }

  return result;
}

unint64_t sub_1D87A1B04()
{
  result = qword_1ECA628F0;
  if (!qword_1ECA628F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA628F0);
  }

  return result;
}

unint64_t sub_1D87A1B5C()
{
  result = qword_1ECA628F8;
  if (!qword_1ECA628F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA628F8);
  }

  return result;
}

unint64_t sub_1D87A1BB4()
{
  result = qword_1ECA62900;
  if (!qword_1ECA62900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62900);
  }

  return result;
}

unint64_t sub_1D87A1C0C()
{
  result = qword_1ECA62908;
  if (!qword_1ECA62908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62908);
  }

  return result;
}

unint64_t sub_1D87A1C64()
{
  result = qword_1ECA62910;
  if (!qword_1ECA62910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62910);
  }

  return result;
}

unint64_t sub_1D87A1CBC()
{
  result = qword_1ECA62918;
  if (!qword_1ECA62918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62918);
  }

  return result;
}

unint64_t sub_1D87A1D14()
{
  result = qword_1ECA62920;
  if (!qword_1ECA62920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62920);
  }

  return result;
}

unint64_t sub_1D87A1D6C()
{
  result = qword_1ECA62928;
  if (!qword_1ECA62928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62928);
  }

  return result;
}

unint64_t sub_1D87A1DC4()
{
  result = qword_1ECA62930;
  if (!qword_1ECA62930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62930);
  }

  return result;
}

unint64_t sub_1D87A1E1C()
{
  result = qword_1ECA62938;
  if (!qword_1ECA62938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62938);
  }

  return result;
}

unint64_t sub_1D87A1E74()
{
  result = qword_1ECA62940;
  if (!qword_1ECA62940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62940);
  }

  return result;
}

unint64_t sub_1D87A1ECC()
{
  result = qword_1ECA62948;
  if (!qword_1ECA62948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62948);
  }

  return result;
}

unint64_t sub_1D87A1F24()
{
  result = qword_1ECA62950;
  if (!qword_1ECA62950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62950);
  }

  return result;
}

unint64_t sub_1D87A1F7C()
{
  result = qword_1ECA62958;
  if (!qword_1ECA62958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62958);
  }

  return result;
}

uint64_t sub_1D87A2010(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B6DE0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

void sub_1D87A206C(uint64_t a1@<X8>)
{
  sub_1D87B8FA0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_1D87A20A0(uint64_t a2@<X8>)
{
  sub_1D87B8FA0();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

uint64_t sub_1D87A20D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B7834();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D87A2134()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3408);
  __swift_project_value_buffer(v0, qword_1ECAA3408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1ABA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "center_x";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "center_y";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "height";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87A2388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8B149C0();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          sub_1D8B14A10();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_1D8B149C0();
    }
  }

  return result;
}

uint64_t sub_1D87A2434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 == 0.0 || (result = sub_1D8B14B20(), !v4))
  {
    if (v3[1] == 0.0 || (result = sub_1D8B14B20(), !v4))
    {
      if (v3[2] == 0.0 || (result = sub_1D8B14B20(), !v4))
      {
        if (v3[3] == 0.0 || (result = sub_1D8B14B20(), !v4))
        {
          type metadata accessor for Lens_NormalizedBox(0);
          return sub_1D8B14940();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D87A253C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  return sub_1D8B14950();
}

uint64_t sub_1D87A25D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62DC0, type metadata accessor for Lens_NormalizedBox, &unk_1D8B1D9B4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87A2670(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62D88, type metadata accessor for Lens_NormalizedBox, &unk_1D8B1D9EC);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87A26DC(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62D88, type metadata accessor for Lens_NormalizedBox, &unk_1D8B1D9EC);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87A275C()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3420);
  __swift_project_value_buffer(v0, qword_1ECAA3420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D8B1AB60;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "image_source_url";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1D8B14B90();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 5;
  *v8 = "image_source_bytes";
  *(v8 + 8) = 18;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 6;
  *v10 = "image_source_type";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "height";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "image_action_url";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87A2A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D8B149C0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
LABEL_2:
          sub_1D8B14A40();
          break;
        case 5:
          sub_1D8B14A00();
          break;
        case 6:
          goto LABEL_2;
      }
    }

    else
    {
      if (result == 1)
      {
        goto LABEL_2;
      }

      if (result == 2 || result == 3)
      {
        sub_1D8B14A20();
      }
    }
  }
}

uint64_t sub_1D87A2B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1D8B14B50(), !v4))
  {
    if (!*(v3 + 48) || (result = sub_1D8B14B30(), !v4))
    {
      if (!*(v3 + 52) || (result = sub_1D8B14B30(), !v4))
      {
        v8 = *(v3 + 64);
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = *(v3 + 56) & 0xFFFFFFFFFFFFLL;
        }

        if (!v9 || (result = sub_1D8B14B50(), !v4))
        {
          v10 = *(v3 + 16);
          v11 = *(v3 + 24);
          v12 = v11 >> 62;
          if ((v11 >> 62) > 1)
          {
            if (v12 != 2)
            {
              goto LABEL_22;
            }

            v13 = *(v10 + 16);
            v14 = *(v10 + 24);
          }

          else
          {
            if (!v12)
            {
              if ((v11 & 0xFF000000000000) == 0)
              {
                goto LABEL_22;
              }

LABEL_21:
              result = sub_1D8B14B10();
              if (v4)
              {
                return result;
              }

              goto LABEL_22;
            }

            v13 = v10;
            v14 = v10 >> 32;
          }

          if (v13 != v14)
          {
            goto LABEL_21;
          }

LABEL_22:
          v15 = *(v3 + 40);
          v16 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v16 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
          }

          if (!v16 || (result = sub_1D8B14B50(), !v4))
          {
            type metadata accessor for Lens_ImageThumbnail(0);
            return sub_1D8B14940();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D87A2CA0@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_1D8B1ABB0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  return sub_1D8B14950();
}

uint64_t sub_1D87A2CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1D8B14960();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D87A2D70(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1D8B14960();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D87A2E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62DC8, type metadata accessor for Lens_ImageThumbnail, &unk_1D8B1D84C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87A2ED8(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62D68, type metadata accessor for Lens_ImageThumbnail, &unk_1D8B1D884);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87A2F44(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62D68, type metadata accessor for Lens_ImageThumbnail, &unk_1D8B1D884);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87A2FC4()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3438);
  __swift_project_value_buffer(v0, qword_1ECAA3438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1ABA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "badge_url";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "price";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "price_micros";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "currency_code";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87A3214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D8B149C0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1D8B14A30();
      }

      else if (result == 4)
      {
        goto LABEL_2;
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_1D8B14A40();
    }
  }
}

uint64_t sub_1D87A32C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1D8B14B50(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_1D8B14B50(), !v4))
    {
      if (!v3[4] || (result = sub_1D8B14B40(), !v4))
      {
        v10 = v3[6];
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = v3[5] & 0xFFFFFFFFFFFFLL;
        }

        if (!v11 || (result = sub_1D8B14B50(), !v4))
        {
          type metadata accessor for Lens_ShoppableBadge(0);
          return sub_1D8B14940();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D87A33E0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0xE000000000000000;
  return sub_1D8B14950();
}

uint64_t sub_1D87A3460(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62DD0, type metadata accessor for Lens_ShoppableBadge, &unk_1D8B1D6E4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87A3500(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62D48, type metadata accessor for Lens_ShoppableBadge, &unk_1D8B1D71C);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87A356C(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62D48, type metadata accessor for Lens_ShoppableBadge, &unk_1D8B1D71C);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87A35E8()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3450);
  __swift_project_value_buffer(v0, qword_1ECAA3450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D8B1B900;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "title";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1D8B14B90();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "image_thumbnail";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "item_type";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "referrer_url";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "a11y_label";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "favicon_url";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 11;
  *v19 = "favicon_bytes";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 12;
  *v21 = "favicon_bytes_type";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 7;
  *v22 = "domain_name";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "badge_attributes";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "shoppable_badge";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "video_duration";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v8();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87A3A24()
{
  type metadata accessor for Lens_Item._StorageClass(0);
  swift_allocObject();
  result = sub_1D87A3A64();
  qword_1ECA62960 = result;
  return result;
}

uint64_t sub_1D87A3A64()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__imageThumbnail;
  v2 = type metadata accessor for Lens_ImageThumbnail(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__itemType;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__referrerURL);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__a11YLabel);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconURL);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconBytes) = xmmword_1D8B1ABB0;
  v7 = (v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconBytesType);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__domainName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__badgeAttributes);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__shoppableBadge;
  v11 = type metadata accessor for Lens_ShoppableBadge(0);
  (*(*(v11 - 8) + 56))(v0 + v10, 1, 1, v11);
  v12 = (v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__videoDuration);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1D87A3BC0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DE8, &unk_1D8B1E030);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DF0, &qword_1D8B1DB00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = &v63 - v7;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v8 = OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__imageThumbnail;
  v9 = type metadata accessor for Lens_ImageThumbnail(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = v1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__itemType;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (v1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__referrerURL);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__a11YLabel);
  v64 = v12;
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconURL);
  v66 = v13;
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v67 = (v1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconBytes);
  *v67 = xmmword_1D8B1ABB0;
  v14 = (v1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconBytesType);
  v68 = v14;
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__domainName);
  v69 = v15;
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__badgeAttributes);
  v70 = v16;
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__shoppableBadge;
  v71 = OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__shoppableBadge;
  v18 = type metadata accessor for Lens_ShoppableBadge(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = (v1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__videoDuration);
  v72 = v19;
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  swift_beginAccess();
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v20;
  *(v1 + 24) = v21;
  v22 = OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__imageThumbnail;
  swift_beginAccess();
  v23 = v65;
  sub_1D87A0E38(a1 + v22, v65, &qword_1ECA62DF0, &qword_1D8B1DB00);
  swift_beginAccess();

  sub_1D87B6EFC(v23, v2 + v8, &qword_1ECA62DF0, &qword_1D8B1DB00);
  swift_endAccess();
  v24 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__itemType);
  swift_beginAccess();
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  swift_beginAccess();
  *v10 = v25;
  *(v10 + 8) = v24;
  v26 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__referrerURL);
  swift_beginAccess();
  v28 = *v26;
  v27 = v26[1];
  swift_beginAccess();
  *v11 = v28;
  v11[1] = v27;

  v29 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__a11YLabel);
  swift_beginAccess();
  v31 = *v29;
  v30 = v29[1];
  v32 = v64;
  swift_beginAccess();
  *v32 = v31;
  v32[1] = v30;

  v33 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconURL);
  swift_beginAccess();
  v35 = *v33;
  v34 = v33[1];
  v36 = v66;
  swift_beginAccess();
  *v36 = v35;
  v36[1] = v34;

  v37 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconBytes);
  swift_beginAccess();
  v39 = *v37;
  v38 = v37[1];
  v40 = v67;
  swift_beginAccess();
  v41 = *v40;
  v42 = v40[1];
  *v40 = v39;
  v40[1] = v38;
  sub_1D87A1544(v39, v38);
  sub_1D87A1598(v41, v42);
  v43 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconBytesType);
  swift_beginAccess();
  v45 = *v43;
  v44 = v43[1];
  v46 = v68;
  swift_beginAccess();
  *v46 = v45;
  v46[1] = v44;

  v47 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__domainName);
  swift_beginAccess();
  v49 = *v47;
  v48 = v47[1];
  v50 = v69;
  swift_beginAccess();
  *v50 = v49;
  v50[1] = v48;

  v51 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__badgeAttributes);
  swift_beginAccess();
  v53 = *v51;
  v52 = v51[1];
  v54 = v70;
  swift_beginAccess();
  *v54 = v53;
  v54[1] = v52;

  v55 = OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__shoppableBadge;
  swift_beginAccess();
  v56 = v73;
  sub_1D87A0E38(a1 + v55, v73, &qword_1ECA62DE8, &unk_1D8B1E030);
  v57 = v71;
  swift_beginAccess();
  sub_1D87B6EFC(v56, v2 + v57, &qword_1ECA62DE8, &unk_1D8B1E030);
  swift_endAccess();
  v58 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__videoDuration);
  swift_beginAccess();
  v60 = *v58;
  v59 = v58[1];

  v61 = v72;
  swift_beginAccess();
  *v61 = v60;
  v61[1] = v59;

  return v2;
}

uint64_t sub_1D87A4224()
{

  sub_1D87A14E4(v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__imageThumbnail, &qword_1ECA62DF0, &qword_1D8B1DB00);

  sub_1D87A1598(*(v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconBytes), *(v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconBytes + 8));

  sub_1D87A14E4(v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__shoppableBadge, &qword_1ECA62DE8, &unk_1D8B1E030);

  return v0;
}

uint64_t sub_1D87A4324()
{
  sub_1D87A4224();

  return swift_deallocClassInstance();
}

void sub_1D87A43A0(uint64_t a1)
{
  sub_1D87A4514(319, &qword_1ECA629D8, type metadata accessor for Lens_ImageThumbnail, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D87A4514(319, &qword_1ECA629E0, type metadata accessor for Lens_ShoppableBadge, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D87A4514(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D87A4600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1D8B149C0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 6)
      {
        if (result > 9)
        {
          switch(result)
          {
            case 10:
              v11 = MEMORY[0x1E69AACE0];
              v12 = a2;
              v13 = a1;
              v14 = a3;
              v15 = a4;
              v16 = &OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__videoDuration;
LABEL_5:
              sub_1D87ACB94(v12, v13, v14, v15, v16, v11);
              break;
            case 11:
              v11 = MEMORY[0x1E69AAC78];
              v12 = a2;
              v13 = a1;
              v14 = a3;
              v15 = a4;
              v16 = &OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconBytes;
              goto LABEL_5;
            case 12:
              v11 = MEMORY[0x1E69AACE0];
              v12 = a2;
              v13 = a1;
              v14 = a3;
              v15 = a4;
              v16 = &OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconBytesType;
              goto LABEL_5;
          }
        }

        else
        {
          if (result == 7)
          {
            v11 = MEMORY[0x1E69AACE0];
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__domainName;
            goto LABEL_5;
          }

          if (result == 8)
          {
            v11 = MEMORY[0x1E69AACE0];
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__badgeAttributes;
            goto LABEL_5;
          }

          sub_1D87A4A6C(a2, a1, a3, a4);
        }
      }

      else
      {
        if (result > 3)
        {
          if (result == 4)
          {
            v11 = MEMORY[0x1E69AACE0];
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__referrerURL;
          }

          else
          {
            v11 = MEMORY[0x1E69AACE0];
            if (result == 5)
            {
              v12 = a2;
              v13 = a1;
              v14 = a3;
              v15 = a4;
              v16 = &OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__a11YLabel;
            }

            else
            {
              v12 = a2;
              v13 = a1;
              v14 = a3;
              v15 = a4;
              v16 = &OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconURL;
            }
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 1:
            sub_1D87AC850(a2, a1, a3, a4);
            break;
          case 2:
            sub_1D87A48F4(a2, a1, a3, a4);
            break;
          case 3:
            sub_1D87A49D0(a2, a1, a3, a4);
            break;
        }
      }

      result = sub_1D8B149C0();
    }
  }

  return result;
}

uint64_t sub_1D87A48F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Lens_ImageThumbnail(0);
  sub_1D87B2CEC(&qword_1ECA62D68, type metadata accessor for Lens_ImageThumbnail, &unk_1D8B1D884);
  sub_1D8B14A70();
  return swift_endAccess();
}

uint64_t sub_1D87A49D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D87B6DE0();
  sub_1D8B149F0();
  return swift_endAccess();
}

uint64_t sub_1D87A4A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Lens_ShoppableBadge(0);
  sub_1D87B2CEC(&qword_1ECA62D48, type metadata accessor for Lens_ShoppableBadge, &unk_1D8B1D71C);
  sub_1D8B14A70();
  return swift_endAccess();
}

uint64_t sub_1D87A4B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {

    sub_1D8B14B50();
    if (v4)
    {
    }
  }

  result = sub_1D87A5074(a1, a2, a3, a4);
  if (!v4)
  {
    v12 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__itemType);
    swift_beginAccess();
    if (*v12)
    {
      sub_1D87B6DE0();
      sub_1D8B14B00();
    }

    v13 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__referrerURL);
    swift_beginAccess();
    v14 = *v13;
    v15 = v13[1];
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {

      sub_1D8B14B50();
    }

    v17 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__a11YLabel);
    swift_beginAccess();
    v18 = *v17;
    v19 = v17[1];
    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {

      sub_1D8B14B50();
    }

    v21 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconURL);
    swift_beginAccess();
    v22 = *v21;
    v23 = v21[1];
    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {

      sub_1D8B14B50();
    }

    v25 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__domainName);
    swift_beginAccess();
    v26 = *v25;
    v27 = v25[1];
    v28 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v28 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {

      sub_1D8B14B50();
    }

    v29 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__badgeAttributes);
    swift_beginAccess();
    v30 = *v29;
    v31 = v29[1];
    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {

      sub_1D8B14B50();
    }

    sub_1D87A5290(a1, a2, a3, a4);
    v33 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__videoDuration);
    swift_beginAccess();
    v34 = *v33;
    v35 = v33[1];
    v36 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v36 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (v36)
    {

      sub_1D8B14B50();
    }

    v37 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconBytes);
    swift_beginAccess();
    v38 = *v37;
    v39 = v37[1];
    v40 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v40 != 2)
      {
        goto LABEL_44;
      }

      v41 = *(v38 + 16);
      v42 = *(v38 + 24);
    }

    else
    {
      if (!v40)
      {
        if ((v39 & 0xFF000000000000) == 0)
        {
LABEL_44:
          v43 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconBytesType);
          result = swift_beginAccess();
          v44 = *v43;
          v45 = v43[1];
          v46 = HIBYTE(v45) & 0xF;
          if ((v45 & 0x2000000000000000) == 0)
          {
            v46 = v44 & 0xFFFFFFFFFFFFLL;
          }

          if (v46)
          {

            sub_1D8B14B50();
          }

          return result;
        }

LABEL_43:
        sub_1D87A1544(v38, v39);
        sub_1D8B14B10();
        sub_1D87A1598(v38, v39);
        goto LABEL_44;
      }

      v41 = v38;
      v42 = v38 >> 32;
    }

    if (v41 == v42)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  return result;
}

uint64_t sub_1D87A5074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DF0, &qword_1D8B1DB00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_ImageThumbnail(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__imageThumbnail;
  swift_beginAccess();
  sub_1D87A0E38(a1 + v12, v7, &qword_1ECA62DF0, &qword_1D8B1DB00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62DF0, &qword_1D8B1DB00);
  }

  sub_1D87B6E34(v7, v11, type metadata accessor for Lens_ImageThumbnail);
  sub_1D87B2CEC(&qword_1ECA62D68, type metadata accessor for Lens_ImageThumbnail, &unk_1D8B1D884);
  sub_1D8B14B80();
  return sub_1D87B6E9C(v11, type metadata accessor for Lens_ImageThumbnail);
}

uint64_t sub_1D87A5290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DE8, &unk_1D8B1E030);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_ShoppableBadge(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__shoppableBadge;
  swift_beginAccess();
  sub_1D87A0E38(a1 + v12, v7, &qword_1ECA62DE8, &unk_1D8B1E030);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62DE8, &unk_1D8B1E030);
  }

  sub_1D87B6E34(v7, v11, type metadata accessor for Lens_ShoppableBadge);
  sub_1D87B2CEC(&qword_1ECA62D48, type metadata accessor for Lens_ShoppableBadge, &unk_1D8B1D71C);
  sub_1D8B14B80();
  return sub_1D87B6E9C(v11, type metadata accessor for Lens_ShoppableBadge);
}

BOOL sub_1D87A54AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lens_ShoppableBadge(0);
  v96 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v93 = (&v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DF8, &qword_1D8B1DB08);
  MEMORY[0x1EEE9AC00](v95);
  v7 = &v90 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DE8, &unk_1D8B1E030);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v94 = (&v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v90 - v11;
  v101 = type metadata accessor for Lens_ImageThumbnail(0);
  v12 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v98 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64F60, &qword_1D8B1DB10);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v90 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DF0, &qword_1D8B1DB00);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v99 = (&v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v90 - v20;
  swift_beginAccess();
  v102 = a1;
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  swift_beginAccess();
  if (__PAIR128__(v22, v23) != *(a2 + 16) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  v91 = v4;
  v92 = v7;
  v100 = a2;
  v24 = OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__imageThumbnail;
  v25 = v102;
  swift_beginAccess();
  sub_1D87A0E38(v25 + v24, v21, &qword_1ECA62DF0, &qword_1D8B1DB00);
  v26 = OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__imageThumbnail;
  v27 = v100;
  swift_beginAccess();
  v28 = *(v14 + 48);
  sub_1D87A0E38(v21, v16, &qword_1ECA62DF0, &qword_1D8B1DB00);
  sub_1D87A0E38(v27 + v26, &v16[v28], &qword_1ECA62DF0, &qword_1D8B1DB00);
  v29 = *(v12 + 48);
  v30 = v101;
  if (v29(v16, 1, v101) == 1)
  {

    sub_1D87A14E4(v21, &qword_1ECA62DF0, &qword_1D8B1DB00);
    if (v29(&v16[v28], 1, v30) == 1)
    {
      sub_1D87A14E4(v16, &qword_1ECA62DF0, &qword_1D8B1DB00);
      goto LABEL_13;
    }

LABEL_8:
    v32 = &unk_1ECA64F60;
    v33 = &qword_1D8B1DB10;
    v34 = v16;
LABEL_9:
    sub_1D87A14E4(v34, v32, v33);
    goto LABEL_10;
  }

  v31 = v99;
  sub_1D87A0E38(v16, v99, &qword_1ECA62DF0, &qword_1D8B1DB00);
  if (v29(&v16[v28], 1, v30) == 1)
  {

    sub_1D87A14E4(v21, &qword_1ECA62DF0, &qword_1D8B1DB00);
    sub_1D87B6E9C(v31, type metadata accessor for Lens_ImageThumbnail);
    goto LABEL_8;
  }

  v36 = v98;
  sub_1D87B6E34(&v16[v28], v98, type metadata accessor for Lens_ImageThumbnail);
  v25 = v102;

  v37 = sub_1D87B67E4(v31, v36);
  sub_1D87B6E9C(v36, type metadata accessor for Lens_ImageThumbnail);
  sub_1D87A14E4(v21, &qword_1ECA62DF0, &qword_1D8B1DB00);
  sub_1D87B6E9C(v31, type metadata accessor for Lens_ImageThumbnail);
  v27 = v100;
  sub_1D87A14E4(v16, &qword_1ECA62DF0, &qword_1D8B1DB00);
  if ((v37 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v38 = OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__itemType;
  swift_beginAccess();
  v39 = *(v25 + v38);
  v40 = v27 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__itemType;
  swift_beginAccess();
  v41 = *v40;
  if (*(v40 + 8) == 1)
  {
    if (v41)
    {
      if (v41 == 1)
      {
        if (v39 != 1)
        {
          goto LABEL_10;
        }
      }

      else if (v39 != 2)
      {
        goto LABEL_10;
      }
    }

    else if (v39)
    {
      goto LABEL_10;
    }
  }

  else if (v39 != v41)
  {
    goto LABEL_10;
  }

  v42 = (v25 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__referrerURL);
  swift_beginAccess();
  v43 = *v42;
  v44 = v42[1];
  v45 = (v27 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__referrerURL);
  swift_beginAccess();
  if ((v43 != *v45 || v44 != v45[1]) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v46 = (v25 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__a11YLabel);
  swift_beginAccess();
  v47 = *v46;
  v48 = v46[1];
  v49 = (v27 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__a11YLabel);
  swift_beginAccess();
  if ((v47 != *v49 || v48 != v49[1]) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v50 = (v25 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconURL);
  swift_beginAccess();
  v51 = *v50;
  v52 = v50[1];
  v53 = (v27 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconURL);
  swift_beginAccess();
  if ((v51 != *v53 || v52 != v53[1]) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v54 = (v25 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconBytes);
  swift_beginAccess();
  v56 = *v54;
  v55 = v54[1];
  v57 = (v27 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconBytes);
  swift_beginAccess();
  v58 = v27;
  v60 = *v57;
  v59 = v57[1];
  sub_1D87A1544(v56, v55);
  sub_1D87A1544(v60, v59);
  v61 = sub_1D87A057C(v56, v55, v60, v59);
  sub_1D87A1598(v60, v59);
  sub_1D87A1598(v56, v55);
  if (!v61)
  {
    goto LABEL_10;
  }

  v62 = (v25 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconBytesType);
  swift_beginAccess();
  v63 = *v62;
  v64 = v62[1];
  v65 = (v58 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconBytesType);
  swift_beginAccess();
  v66 = v58;
  if ((v63 != *v65 || v64 != v65[1]) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v67 = (v25 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__domainName);
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  v70 = (v58 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__domainName);
  swift_beginAccess();
  if ((v68 != *v70 || v69 != v70[1]) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v71 = (v25 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__badgeAttributes);
  swift_beginAccess();
  v72 = *v71;
  v73 = v71[1];
  v74 = (v58 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__badgeAttributes);
  swift_beginAccess();
  if ((v72 != *v74 || v73 != v74[1]) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v75 = OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__shoppableBadge;
  swift_beginAccess();
  v76 = v97;
  sub_1D87A0E38(v25 + v75, v97, &qword_1ECA62DE8, &unk_1D8B1E030);
  v77 = OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__shoppableBadge;
  swift_beginAccess();
  v78 = *(v95 + 48);
  v79 = v92;
  sub_1D87A0E38(v76, v92, &qword_1ECA62DE8, &unk_1D8B1E030);
  sub_1D87A0E38(v66 + v77, v79 + v78, &qword_1ECA62DE8, &unk_1D8B1E030);
  v80 = *(v96 + 48);
  v81 = v91;
  if (v80(v79, 1, v91) != 1)
  {
    v82 = v94;
    sub_1D87A0E38(v79, v94, &qword_1ECA62DE8, &unk_1D8B1E030);
    if (v80(v79 + v78, 1, v81) != 1)
    {
      v83 = v93;
      sub_1D87B6E34(v79 + v78, v93, type metadata accessor for Lens_ShoppableBadge);
      v84 = sub_1D87B4920(v82, v83);
      sub_1D87B6E9C(v83, type metadata accessor for Lens_ShoppableBadge);
      sub_1D87A14E4(v97, &qword_1ECA62DE8, &unk_1D8B1E030);
      sub_1D87B6E9C(v82, type metadata accessor for Lens_ShoppableBadge);
      v66 = v100;
      sub_1D87A14E4(v79, &qword_1ECA62DE8, &unk_1D8B1E030);
      if (v84)
      {
        goto LABEL_50;
      }

LABEL_10:

      return 0;
    }

    sub_1D87A14E4(v97, &qword_1ECA62DE8, &unk_1D8B1E030);
    sub_1D87B6E9C(v82, type metadata accessor for Lens_ShoppableBadge);
    goto LABEL_48;
  }

  sub_1D87A14E4(v76, &qword_1ECA62DE8, &unk_1D8B1E030);
  if (v80(v79 + v78, 1, v81) != 1)
  {
LABEL_48:
    v32 = &qword_1ECA62DF8;
    v33 = &qword_1D8B1DB08;
    v34 = v79;
    goto LABEL_9;
  }

  sub_1D87A14E4(v79, &qword_1ECA62DE8, &unk_1D8B1E030);
LABEL_50:
  v85 = (v25 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__videoDuration);
  swift_beginAccess();
  v86 = *v85;
  v87 = v85[1];
  v88 = (v66 + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__videoDuration);
  swift_beginAccess();
  if (v86 != *v88 || v87 != v88[1])
  {
    v89 = sub_1D8B16BA0();

    return (v89 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1D87A610C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62DD8, type metadata accessor for Lens_Item, &unk_1D8B1D57C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87A61AC(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62D28, type metadata accessor for Lens_Item, &unk_1D8B1D5B4);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87A6218(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62D28, type metadata accessor for Lens_Item, &unk_1D8B1D5B4);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87A62D8()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3468);
  __swift_project_value_buffer(v0, qword_1ECAA3468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1AB70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SIMILAR_IMAGE";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PRODUCT";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "VIDEO";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87A650C()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3480);
  __swift_project_value_buffer(v0, qword_1ECAA3480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1ABA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "source_url";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "snippet";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "domain_name";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87A676C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8B149C0();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          sub_1D8B14A40();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_1D8B149C0();
    }
  }

  return result;
}

uint64_t sub_1D87A6818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1D8B14B50(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_1D8B14B50(), !v4))
    {
      v10 = v3[5];
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = sub_1D8B14B50(), !v4))
      {
        v12 = v3[7];
        v13 = HIBYTE(v12) & 0xF;
        if ((v12 & 0x2000000000000000) == 0)
        {
          v13 = v3[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v13 || (result = sub_1D8B14B50(), !v4))
        {
          type metadata accessor for Lens_SearchResult(0);
          return sub_1D8B14940();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D87A693C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  return sub_1D8B14950();
}

uint64_t sub_1D87A69BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62E00, type metadata accessor for Lens_SearchResult, &unk_1D8B1D3EC);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87A6A5C(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62D08, type metadata accessor for Lens_SearchResult, &unk_1D8B1D424);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87A6AC8(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62D08, type metadata accessor for Lens_SearchResult, &unk_1D8B1D424);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87A6B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8B149C0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Lens_Item(0);
        sub_1D87B2CEC(&qword_1ECA62D28, type metadata accessor for Lens_Item, &unk_1D8B1D5B4);
        sub_1D8B14A60();
      }

      else if (result == 2)
      {
        sub_1D8B149E0();
      }

      result = sub_1D8B149C0();
    }
  }

  return result;
}

uint64_t sub_1D87A6C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Lens_Item(0), sub_1D87B2CEC(&qword_1ECA62D28, type metadata accessor for Lens_Item, &unk_1D8B1D5B4), result = sub_1D8B14B70(), !v4))
  {
    if (v3[8] != 1 || (result = sub_1D8B14AF0(), !v4))
    {
      type metadata accessor for Lens_ExploreGrid(0);
      return sub_1D8B14940();
    }
  }

  return result;
}

uint64_t sub_1D87A6D70@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  return sub_1D8B14950();
}

uint64_t sub_1D87A6DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62E08, type metadata accessor for Lens_ExploreGrid, &unk_1D8B1D284);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87A6E8C(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62CE8, type metadata accessor for Lens_ExploreGrid, &unk_1D8B1D2BC);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87A6EF8(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62CE8, type metadata accessor for Lens_ExploreGrid, &unk_1D8B1D2BC);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87A6F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1D88E4044(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D8B158C0() & 1;
}

uint64_t sub_1D87A702C()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA34B0);
  __swift_project_value_buffer(v0, qword_1ECAA34B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D8B1AB90;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "items";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1D8B14B90();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1D8B14BA0();
}

uint64_t sub_1D87A7198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8B149C0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Lens_Item(0);
        sub_1D87B2CEC(&qword_1ECA62D28, type metadata accessor for Lens_Item, &unk_1D8B1D5B4);
        sub_1D8B14A60();
      }

      result = sub_1D8B149C0();
    }
  }

  return result;
}

uint64_t sub_1D87A7278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Lens_Item(0), sub_1D87B2CEC(&qword_1ECA62D28, type metadata accessor for Lens_Item, &unk_1D8B1D5B4), result = sub_1D8B14B70(), !v4))
  {
    type metadata accessor for Lens_ExactMatch(0);
    return sub_1D8B14940();
  }

  return result;
}

uint64_t sub_1D87A73DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62E10, type metadata accessor for Lens_ExactMatch, &unk_1D8B1D11C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87A747C(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62CC8, type metadata accessor for Lens_ExactMatch, &unk_1D8B1D154);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87A74E8(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62CC8, type metadata accessor for Lens_ExactMatch, &unk_1D8B1D154);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87A7564(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1D88E4044(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D8B158C0() & 1;
}

uint64_t sub_1D87A760C()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA34C8);
  __swift_project_value_buffer(v0, qword_1ECAA34C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1AB70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action_url";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "image_thumbnail";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87A782C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D8B149C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_1D87A78CC(a1, v5, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      sub_1D8B14A40();
    }
  }

  return result;
}

uint64_t sub_1D87A78CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Lens_RelatedSearch(0);
  type metadata accessor for Lens_ImageThumbnail(0);
  sub_1D87B2CEC(&qword_1ECA62D68, type metadata accessor for Lens_ImageThumbnail, &unk_1D8B1D884);
  return sub_1D8B14A70();
}

uint64_t sub_1D87A7980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1D8B14B50(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_1D8B14B50(), !v4))
    {
      result = sub_1D87A7A5C(v3, a1, a2, a3);
      if (!v4)
      {
        type metadata accessor for Lens_RelatedSearch(0);
        return sub_1D8B14940();
      }
    }
  }

  return result;
}

uint64_t sub_1D87A7A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DF0, &qword_1D8B1DB00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_ImageThumbnail(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Lens_RelatedSearch(0);
  sub_1D87A0E38(a1 + *(v12 + 28), v7, &qword_1ECA62DF0, &qword_1D8B1DB00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62DF0, &qword_1D8B1DB00);
  }

  sub_1D87B6E34(v7, v11, type metadata accessor for Lens_ImageThumbnail);
  sub_1D87B2CEC(&qword_1ECA62D68, type metadata accessor for Lens_ImageThumbnail, &unk_1D8B1D884);
  sub_1D8B14B80();
  return sub_1D87B6E9C(v11, type metadata accessor for Lens_ImageThumbnail);
}

uint64_t sub_1D87A7C6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  sub_1D8B14950();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Lens_ImageThumbnail(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1D87A7D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62E18, type metadata accessor for Lens_RelatedSearch, &unk_1D8B1CFB4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87A7DE4(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62CA8, type metadata accessor for Lens_RelatedSearch, &unk_1D8B1CFEC);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87A7E50()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA34E0);
  __swift_project_value_buffer(v0, qword_1ECAA34E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D8B1B910;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "title";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1D8B14B90();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "query";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "ally_label";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "action_url";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "image_thumbnail";
  *(v14 + 8) = 15;
  *(v14 + 16) = 2;
  v8();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87A80E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D8B149C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        sub_1D8B14A40();
      }
    }

    else
    {
      if (result == 3 || result == 4)
      {
        goto LABEL_2;
      }

      if (result == 5)
      {
        sub_1D87A81B4(a1, v5, a2, a3);
      }
    }
  }
}

uint64_t sub_1D87A81B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Lens_Answer(0);
  type metadata accessor for Lens_ImageThumbnail(0);
  sub_1D87B2CEC(&qword_1ECA62D68, type metadata accessor for Lens_ImageThumbnail, &unk_1D8B1D884);
  return sub_1D8B14A70();
}

uint64_t sub_1D87A8268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1D8B14B50(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_1D8B14B50(), !v4))
    {
      v13 = v3[5];
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v14 || (result = sub_1D8B14B50(), !v4))
      {
        v15 = v3[7];
        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = v3[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v16 || (result = sub_1D8B14B50(), !v4))
        {
          result = sub_1D87A83A4(v3, a1, a2, a3);
          if (!v4)
          {
            type metadata accessor for Lens_Answer(0);
            return sub_1D8B14940();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D87A83A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DF0, &qword_1D8B1DB00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_ImageThumbnail(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Lens_Answer(0);
  sub_1D87A0E38(a1 + *(v12 + 36), v7, &qword_1ECA62DF0, &qword_1D8B1DB00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62DF0, &qword_1D8B1DB00);
  }

  sub_1D87B6E34(v7, v11, type metadata accessor for Lens_ImageThumbnail);
  sub_1D87B2CEC(&qword_1ECA62D68, type metadata accessor for Lens_ImageThumbnail, &unk_1D8B1D884);
  sub_1D8B14B80();
  return sub_1D87B6E9C(v11, type metadata accessor for Lens_ImageThumbnail);
}

uint64_t sub_1D87A85B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0xE000000000000000;
  sub_1D8B14950();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Lens_ImageThumbnail(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1D87A8668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1D8B14960();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D87A86DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1D8B14960();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D87A8780(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62E20, type metadata accessor for Lens_Answer, &unk_1D8B1CEB4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87A8820(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62C90, type metadata accessor for Lens_Answer, &unk_1D8B1CEEC);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87A888C(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62C90, type metadata accessor for Lens_Answer, &unk_1D8B1CEEC);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87A890C()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA34F8);
  __swift_project_value_buffer(v0, qword_1ECAA34F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1AB70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "answer";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sources";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "confidence";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87A8B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8B149C0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1D8B14A10();
          break;
        case 2:
          type metadata accessor for Lens_SearchResult(0);
          sub_1D87B2CEC(&qword_1ECA62D08, type metadata accessor for Lens_SearchResult, &unk_1D8B1D424);
          sub_1D8B14A60();
          break;
        case 1:
          sub_1D8B14A40();
          break;
      }

      result = sub_1D8B149C0();
    }
  }

  return result;
}

uint64_t sub_1D87A8C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1D8B14B50(), !v4))
  {
    if (!*(*(v3 + 16) + 16) || (type metadata accessor for Lens_SearchResult(0), sub_1D87B2CEC(&qword_1ECA62D08, type metadata accessor for Lens_SearchResult, &unk_1D8B1D424), result = sub_1D8B14B70(), !v4))
    {
      if (*(v3 + 24) == 0.0 || (result = sub_1D8B14B20(), !v4))
      {
        type metadata accessor for Lens_LlmAnswer(0);
        return sub_1D8B14940();
      }
    }
  }

  return result;
}

uint64_t sub_1D87A8D80@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  return sub_1D8B14950();
}

uint64_t sub_1D87A8E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62E28, type metadata accessor for Lens_LlmAnswer, &unk_1D8B1CD4C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87A8EAC(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62C70, type metadata accessor for Lens_LlmAnswer, &unk_1D8B1CD84);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87A8F18(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62C70, type metadata accessor for Lens_LlmAnswer, &unk_1D8B1CD84);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87A8FB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D8B1AB80;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 5;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_1D8B14B90();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87A91C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62E30, type metadata accessor for Lens_CallToAction, &unk_1D8B1CBE4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87A9264(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62C50, type metadata accessor for Lens_CallToAction, &unk_1D8B1CC1C);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87A92D0(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62C50, type metadata accessor for Lens_CallToAction, &unk_1D8B1CC1C);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87A934C()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3528);
  __swift_project_value_buffer(v0, qword_1ECAA3528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1AB80;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "about_this_ad_url";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ad_disclosure_label";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87A9540(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = sub_1D8B14B50(), !v5))
  {
    v10 = v4[3];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (result = sub_1D8B14B50(), !v5))
    {
      a4(0);
      return sub_1D8B14940();
    }
  }

  return result;
}

uint64_t sub_1D87A9630(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62E38, type metadata accessor for Lens_AdDisclosureData, &unk_1D8B1CA7C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87A96D0(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62C30, type metadata accessor for Lens_AdDisclosureData, &unk_1D8B1CAB4);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87A973C(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62C30, type metadata accessor for Lens_AdDisclosureData, &unk_1D8B1CAB4);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87A97BC()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3540);
  __swift_project_value_buffer(v0, qword_1ECAA3540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1AB70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "url";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "original_width";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "original_height";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87A99DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D8B149C0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_1D8B14A20();
    }

    else if (result == 1)
    {
      sub_1D8B14A40();
    }
  }

  return result;
}

uint64_t sub_1D87A9A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1D8B14B50(), !v4))
  {
    if (!*(v3 + 16) || (result = sub_1D8B14B30(), !v4))
    {
      if (!*(v3 + 20) || (result = sub_1D8B14B30(), !v4))
      {
        type metadata accessor for Lens_ProductImage(0);
        return sub_1D8B14940();
      }
    }
  }

  return result;
}

uint64_t sub_1D87A9B50@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  return sub_1D8B14950();
}

uint64_t sub_1D87A9BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62E40, type metadata accessor for Lens_ProductImage, &unk_1D8B1C914);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87A9C68(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62C10, type metadata accessor for Lens_ProductImage, &unk_1D8B1C94C);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87A9CD4(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62C10, type metadata accessor for Lens_ProductImage, &unk_1D8B1C94C);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87A9D54()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3558);
  __swift_project_value_buffer(v0, qword_1ECAA3558);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1AB70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "average_rating";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rating_count";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "formatted_rating_count";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87A9F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D8B149C0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1D8B14A40();
        break;
      case 2:
        sub_1D8B14A50();
        break;
      case 1:
        sub_1D8B14A10();
        break;
    }
  }

  return result;
}

uint64_t sub_1D87AA014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 == 0.0 || (result = sub_1D8B14B20(), !v4))
  {
    if (!*(v3 + 4) || (result = sub_1D8B14B60(), !v4))
    {
      v6 = *(v3 + 16);
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = sub_1D8B14B50(), !v4))
      {
        type metadata accessor for Lens_ProductRating(0);
        return sub_1D8B14940();
      }
    }
  }

  return result;
}

uint64_t sub_1D87AA0F0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  return sub_1D8B14950();
}

uint64_t sub_1D87AA168(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62E48, type metadata accessor for Lens_ProductRating, &unk_1D8B1C7AC);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87AA208(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62BF0, type metadata accessor for Lens_ProductRating, &unk_1D8B1C7E4);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87AA274(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62BF0, type metadata accessor for Lens_ProductRating, &unk_1D8B1C7E4);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87AA2F4()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3570);
  __swift_project_value_buffer(v0, qword_1ECAA3570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1ABA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "full_price";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shipping_cost";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sale_info";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "contract_disclosure";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87AA53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D8B149C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1D87AA5F4(a1, v5, a2, a3);
      }

      else if (result == 4)
      {
        goto LABEL_2;
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_1D8B14A40();
    }
  }
}

uint64_t sub_1D87AA5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Lens_PriceInfo(0);
  type metadata accessor for Lens_PriceInfo.SaleInfo(0);
  sub_1D87B2CEC(&qword_1ECA62BB0, type metadata accessor for Lens_PriceInfo.SaleInfo, &unk_1D8B1C514);
  return sub_1D8B14A70();
}

uint64_t sub_1D87AA6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1D8B14B50(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_1D8B14B50(), !v4))
    {
      result = sub_1D87AA7B4(v3, a1, a2, a3);
      if (!v4)
      {
        v13 = v3[5];
        v14 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v14 = v3[4] & 0xFFFFFFFFFFFFLL;
        }

        if (v14)
        {
          sub_1D8B14B50();
        }

        type metadata accessor for Lens_PriceInfo(0);
        return sub_1D8B14940();
      }
    }
  }

  return result;
}

uint64_t sub_1D87AA7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62A60, &qword_1D8B1E040);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_PriceInfo.SaleInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Lens_PriceInfo(0);
  sub_1D87A0E38(a1 + *(v12 + 32), v7, &qword_1ECA62A60, &qword_1D8B1E040);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62A60, &qword_1D8B1E040);
  }

  sub_1D87B6E34(v7, v11, type metadata accessor for Lens_PriceInfo.SaleInfo);
  sub_1D87B2CEC(&qword_1ECA62BB0, type metadata accessor for Lens_PriceInfo.SaleInfo, &unk_1D8B1C514);
  sub_1D8B14B80();
  return sub_1D87B6E9C(v11, type metadata accessor for Lens_PriceInfo.SaleInfo);
}

uint64_t sub_1D87AA9C8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  sub_1D8B14950();
  v4 = *(a1 + 32);
  v5 = type metadata accessor for Lens_PriceInfo.SaleInfo(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1D87AAAAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62E50, type metadata accessor for Lens_PriceInfo, &unk_1D8B1C644);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87AAB4C(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62BD0, type metadata accessor for Lens_PriceInfo, &unk_1D8B1C67C);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87AABB8(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62BD0, type metadata accessor for Lens_PriceInfo, &unk_1D8B1C67C);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87AAC34()
{
  strcpy(v1, "lens.PriceInfo");
  HIBYTE(v1[1]) = -18;
  result = MEMORY[0x1DA71EFA0](0x666E49656C61532ELL, 0xE90000000000006FLL);
  qword_1ECAA3588 = v1[0];
  unk_1ECAA3590 = v1[1];
  return result;
}

uint64_t sub_1D87AACAC()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3598);
  __swift_project_value_buffer(v0, qword_1ECAA3598);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1AB80;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "original_price";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sale_label";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87AAE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D8B149C0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1D8B14A40();
    }
  }

  return result;
}

uint64_t sub_1D87AAF20@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  return sub_1D8B14950();
}

uint64_t sub_1D87AAF4C()
{
  if (qword_1ECA62068 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECAA3588;

  return v0;
}

uint64_t sub_1D87AAFB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62E60, type metadata accessor for Lens_PriceInfo.SaleInfo, &unk_1D8B1C4DC);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87AB054(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62BB0, type metadata accessor for Lens_PriceInfo.SaleInfo, &unk_1D8B1C514);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87AB0C0(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62BB0, type metadata accessor for Lens_PriceInfo.SaleInfo, &unk_1D8B1C514);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87AB13C(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D8B158C0() & 1;
}

uint64_t sub_1D87AB218()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA35B0);
  __swift_project_value_buffer(v0, qword_1ECAA35B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D8B1B920;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "product_title";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1D8B14B90();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "click_url";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "merchant_name";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "product_image";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "price_info";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "condition";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "rating";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "call_to_action";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87AB564()
{
  type metadata accessor for Lens_ProductAd._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 2) = 0;
  *(v0 + 3) = 0xE000000000000000;
  *(v0 + 4) = 0;
  *(v0 + 5) = 0xE000000000000000;
  *(v0 + 6) = 0;
  *(v0 + 7) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__productImage;
  v2 = type metadata accessor for Lens_ProductImage(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__priceInfo;
  v4 = type metadata accessor for Lens_PriceInfo(0);
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v5 = &v0[OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__condition];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__rating;
  v7 = type metadata accessor for Lens_ProductRating(0);
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__callToAction;
  v9 = type metadata accessor for Lens_CallToAction(0);
  result = (*(*(v9 - 8) + 56))(&v0[v8], 1, 1, v9);
  qword_1ECA62968 = v0;
  return result;
}

char *sub_1D87AB6E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E70, &qword_1D8B1DB20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E78, &qword_1D8B1DB28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E80, &qword_1D8B1DB30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E88, &qword_1D8B1DB38);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v43 = &v41 - v10;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0xE000000000000000;
  *(v1 + 4) = 0;
  *(v1 + 5) = 0xE000000000000000;
  *(v1 + 6) = 0;
  *(v1 + 7) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__productImage;
  v12 = type metadata accessor for Lens_ProductImage(0);
  (*(*(v12 - 8) + 56))(&v1[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__priceInfo;
  v42 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__priceInfo;
  v14 = type metadata accessor for Lens_PriceInfo(0);
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v15 = &v1[OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__condition];
  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  v16 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__rating;
  v44 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__rating;
  v17 = type metadata accessor for Lens_ProductRating(0);
  (*(*(v17 - 8) + 56))(&v1[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__callToAction;
  v46 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__callToAction;
  v19 = type metadata accessor for Lens_CallToAction(0);
  (*(*(v19 - 8) + 56))(&v1[v18], 1, 1, v19);
  swift_beginAccess();
  v21 = a1[2];
  v20 = a1[3];
  swift_beginAccess();
  *(v1 + 2) = v21;
  *(v1 + 3) = v20;
  swift_beginAccess();
  v23 = a1[4];
  v22 = a1[5];
  swift_beginAccess();
  *(v1 + 4) = v23;
  *(v1 + 5) = v22;

  swift_beginAccess();
  v25 = a1[6];
  v24 = a1[7];
  swift_beginAccess();
  *(v1 + 6) = v25;
  *(v1 + 7) = v24;

  v26 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__productImage;
  swift_beginAccess();
  v27 = v43;
  sub_1D87A0E38(a1 + v26, v43, &qword_1ECA62E88, &qword_1D8B1DB38);
  swift_beginAccess();
  sub_1D87B6EFC(v27, &v1[v11], &qword_1ECA62E88, &qword_1D8B1DB38);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__priceInfo;
  swift_beginAccess();
  v29 = v45;
  sub_1D87A0E38(a1 + v28, v45, &qword_1ECA62E80, &qword_1D8B1DB30);
  v30 = v42;
  swift_beginAccess();
  sub_1D87B6EFC(v29, &v1[v30], &qword_1ECA62E80, &qword_1D8B1DB30);
  swift_endAccess();
  v31 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__condition);
  swift_beginAccess();
  v33 = *v31;
  v32 = v31[1];
  swift_beginAccess();
  *v15 = v33;
  *(v15 + 1) = v32;

  v34 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__rating;
  swift_beginAccess();
  v35 = v47;
  sub_1D87A0E38(a1 + v34, v47, &qword_1ECA62E78, &qword_1D8B1DB28);
  v36 = v44;
  swift_beginAccess();
  sub_1D87B6EFC(v35, &v1[v36], &qword_1ECA62E78, &qword_1D8B1DB28);
  swift_endAccess();
  v37 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__callToAction;
  swift_beginAccess();
  v38 = v48;
  sub_1D87A0E38(a1 + v37, v48, &qword_1ECA62E70, &qword_1D8B1DB20);

  v39 = v46;
  swift_beginAccess();
  sub_1D87B6EFC(v38, &v1[v39], &qword_1ECA62E70, &qword_1D8B1DB20);
  swift_endAccess();
  return v1;
}

uint64_t sub_1D87ABCD0()
{

  sub_1D87A14E4(v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__productImage, &qword_1ECA62E88, &qword_1D8B1DB38);
  sub_1D87A14E4(v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__priceInfo, &qword_1ECA62E80, &qword_1D8B1DB30);

  sub_1D87A14E4(v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__rating, &qword_1ECA62E78, &qword_1D8B1DB28);
  sub_1D87A14E4(v0 + OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__callToAction, &qword_1ECA62E70, &qword_1D8B1DB20);

  return swift_deallocClassInstance();
}

void sub_1D87ABDF8(uint64_t a1)
{
  sub_1D87A4514(319, &qword_1ECA62A20, type metadata accessor for Lens_ProductImage, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D87A4514(319, &qword_1ECA62A28, type metadata accessor for Lens_PriceInfo, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D87A4514(319, &qword_1ECA62A30, type metadata accessor for Lens_ProductRating, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D87A4514(319, &qword_1ECA62A38, type metadata accessor for Lens_CallToAction, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1D87AC11C(uint64_t a1)
{
  sub_1D8B14960();
  if (v1 <= 0x3F)
  {
    sub_1D87A4514(319, &qword_1ECA62A78, type metadata accessor for Lens_PriceInfo.SaleInfo, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D87AC270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1D8B14960();
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D87AC3C0(uint64_t a1)
{
  result = sub_1D8B14960();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D87AC45C()
{
  result = qword_1ECA62AD0;
  if (!qword_1ECA62AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62AD0);
  }

  return result;
}

unint64_t sub_1D87AC4B4()
{
  result = qword_1ECA62AD8;
  if (!qword_1ECA62AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62AD8);
  }

  return result;
}

unint64_t sub_1D87AC50C()
{
  result = qword_1ECA62AE0;
  if (!qword_1ECA62AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62AE0);
  }

  return result;
}

uint64_t sub_1D87AC5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v7 + v14);
    a5(0);
    swift_allocObject();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_1D87AC698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1D8B149C0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 4)
      {
        if (result > 7)
        {
          if (result == 8)
          {
            sub_1D87ACC2C(a2, a1, a3, a4);
          }

          else if (result == 9)
          {
            sub_1D87ACD08(a2, a1, a3, a4);
          }
        }

        else if (result == 5)
        {
          sub_1D87ACAB8(a2, a1, a3, a4);
        }

        else if (result == 6)
        {
          sub_1D87ACB94(a2, a1, a3, a4, &OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__condition, MEMORY[0x1E69AACE0]);
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          sub_1D87AC958(a2, a1, a3, a4);
        }

        else
        {
          sub_1D87AC9DC(a2, a1, a3, a4);
        }
      }

      else if (result == 1)
      {
        sub_1D87AC850(a2, a1, a3, a4);
      }

      else if (result == 2)
      {
        sub_1D87AC8D4(a2, a1, a3, a4);
      }

      result = sub_1D8B149C0();
    }
  }

  return result;
}

uint64_t sub_1D87AC850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D8B14A40();
  return swift_endAccess();
}

uint64_t sub_1D87AC8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D8B14A40();
  return swift_endAccess();
}

uint64_t sub_1D87AC958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D8B14A40();
  return swift_endAccess();
}

uint64_t sub_1D87AC9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Lens_ProductImage(0);
  sub_1D87B2CEC(&qword_1ECA62C10, type metadata accessor for Lens_ProductImage, &unk_1D8B1C94C);
  sub_1D8B14A70();
  return swift_endAccess();
}

uint64_t sub_1D87ACAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Lens_PriceInfo(0);
  sub_1D87B2CEC(&qword_1ECA62BD0, type metadata accessor for Lens_PriceInfo, &unk_1D8B1C67C);
  sub_1D8B14A70();
  return swift_endAccess();
}

uint64_t sub_1D87ACB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1D87ACC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Lens_ProductRating(0);
  sub_1D87B2CEC(&qword_1ECA62BF0, type metadata accessor for Lens_ProductRating, &unk_1D8B1C7E4);
  sub_1D8B14A70();
  return swift_endAccess();
}

uint64_t sub_1D87ACD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Lens_CallToAction(0);
  sub_1D87B2CEC(&qword_1ECA62C50, type metadata accessor for Lens_CallToAction, &unk_1D8B1CC1C);
  sub_1D8B14A70();
  return swift_endAccess();
}

uint64_t sub_1D87ACE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_1D8B14940();
  }

  return result;
}

uint64_t sub_1D87ACEA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = a1[3];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (, sub_1D8B14B50(), result = , !v4))
  {
    swift_beginAccess();
    v12 = a1[5];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = a1[4] & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (, sub_1D8B14B50(), result = , !v4))
    {
      swift_beginAccess();
      v14 = a1[7];
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = a1[6] & 0xFFFFFFFFFFFFLL;
      }

      if (!v15 || (, sub_1D8B14B50(), result = , !v4))
      {
        result = sub_1D87AD0FC(a1, a2, a3, a4);
        if (!v4)
        {
          sub_1D87AD318(a1, a2, a3, a4);
          v16 = (a1 + OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__condition);
          swift_beginAccess();
          v17 = *v16;
          v18 = v16[1];
          v19 = HIBYTE(v18) & 0xF;
          if ((v18 & 0x2000000000000000) == 0)
          {
            v19 = v17 & 0xFFFFFFFFFFFFLL;
          }

          if (v19)
          {

            sub_1D8B14B50();
          }

          sub_1D87AD534(a1, a2, a3, a4);
          return sub_1D87AD750(a1, a2, a3, a4);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D87AD0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E88, &qword_1D8B1DB38);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_ProductImage(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__productImage;
  swift_beginAccess();
  sub_1D87A0E38(a1 + v12, v7, &qword_1ECA62E88, &qword_1D8B1DB38);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62E88, &qword_1D8B1DB38);
  }

  sub_1D87B6E34(v7, v11, type metadata accessor for Lens_ProductImage);
  sub_1D87B2CEC(&qword_1ECA62C10, type metadata accessor for Lens_ProductImage, &unk_1D8B1C94C);
  sub_1D8B14B80();
  return sub_1D87B6E9C(v11, type metadata accessor for Lens_ProductImage);
}

uint64_t sub_1D87AD318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E80, &qword_1D8B1DB30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_PriceInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__priceInfo;
  swift_beginAccess();
  sub_1D87A0E38(a1 + v12, v7, &qword_1ECA62E80, &qword_1D8B1DB30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62E80, &qword_1D8B1DB30);
  }

  sub_1D87B6E34(v7, v11, type metadata accessor for Lens_PriceInfo);
  sub_1D87B2CEC(&qword_1ECA62BD0, type metadata accessor for Lens_PriceInfo, &unk_1D8B1C67C);
  sub_1D8B14B80();
  return sub_1D87B6E9C(v11, type metadata accessor for Lens_PriceInfo);
}

uint64_t sub_1D87AD534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E78, &qword_1D8B1DB28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_ProductRating(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__rating;
  swift_beginAccess();
  sub_1D87A0E38(a1 + v12, v7, &qword_1ECA62E78, &qword_1D8B1DB28);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62E78, &qword_1D8B1DB28);
  }

  sub_1D87B6E34(v7, v11, type metadata accessor for Lens_ProductRating);
  sub_1D87B2CEC(&qword_1ECA62BF0, type metadata accessor for Lens_ProductRating, &unk_1D8B1C7E4);
  sub_1D8B14B80();
  return sub_1D87B6E9C(v11, type metadata accessor for Lens_ProductRating);
}

uint64_t sub_1D87AD750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E70, &qword_1D8B1DB20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_CallToAction(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__callToAction;
  swift_beginAccess();
  sub_1D87A0E38(a1 + v12, v7, &qword_1ECA62E70, &qword_1D8B1DB20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62E70, &qword_1D8B1DB20);
  }

  sub_1D87B6E34(v7, v11, type metadata accessor for Lens_CallToAction);
  sub_1D87B2CEC(&qword_1ECA62C50, type metadata accessor for Lens_CallToAction, &unk_1D8B1CC1C);
  sub_1D8B14B80();
  return sub_1D87B6E9C(v11, type metadata accessor for Lens_CallToAction);
}

BOOL sub_1D87AD9B0(void *a1, void *a2)
{
  v4 = type metadata accessor for Lens_CallToAction(0);
  v111 = *(v4 - 8);
  v112 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v107 = (&v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E90, &qword_1D8B1DB40);
  MEMORY[0x1EEE9AC00](v110);
  v7 = &v105 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E70, &qword_1D8B1DB20);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v108 = (&v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v105 - v11;
  v12 = type metadata accessor for Lens_ProductRating(0);
  v117 = *(v12 - 8);
  v118 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v109 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E98, &qword_1D8B1DB48);
  MEMORY[0x1EEE9AC00](v116);
  v119 = &v105 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E78, &qword_1D8B1DB28);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v114 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v126 = &v105 - v18;
  v19 = type metadata accessor for Lens_PriceInfo(0);
  v123 = *(v19 - 8);
  v124 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v115 = (&v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62EA0, &qword_1D8B1DB50);
  MEMORY[0x1EEE9AC00](v122);
  v125 = &v105 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E80, &qword_1D8B1DB30);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v120 = (&v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v127 = &v105 - v25;
  v129 = type metadata accessor for Lens_ProductImage(0);
  v26 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v121 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62EA8, &qword_1D8B1DB58);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v105 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E88, &qword_1D8B1DB38);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v128 = &v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v105 - v34;
  swift_beginAccess();
  v36 = a1[2];
  v37 = a1[3];
  swift_beginAccess();
  if (__PAIR128__(v37, v36) != *(a2 + 1) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v38 = a1[4];
  v39 = a1[5];
  swift_beginAccess();
  if ((v38 != a2[4] || v39 != a2[5]) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v40 = a1[6];
  v41 = a1[7];
  swift_beginAccess();
  if ((v40 != a2[6] || v41 != a2[7]) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  v105 = v7;
  v106 = a2;
  v42 = a1;
  v43 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__productImage;
  swift_beginAccess();
  v44 = a1 + v43;
  v45 = v106;
  sub_1D87A0E38(v44, v35, &qword_1ECA62E88, &qword_1D8B1DB38);
  v46 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__productImage;
  swift_beginAccess();
  v47 = *(v28 + 48);
  sub_1D87A0E38(v35, v30, &qword_1ECA62E88, &qword_1D8B1DB38);
  sub_1D87A0E38(v45 + v46, &v30[v47], &qword_1ECA62E88, &qword_1D8B1DB38);
  v48 = *(v26 + 48);
  v49 = v129;
  if (v48(v30, 1, v129) == 1)
  {

    sub_1D87A14E4(v35, &qword_1ECA62E88, &qword_1D8B1DB38);
    v50 = v48(&v30[v47], 1, v49);
    v51 = v42;
    if (v50 == 1)
    {
      sub_1D87A14E4(v30, &qword_1ECA62E88, &qword_1D8B1DB38);
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v65 = v128;
  sub_1D87A0E38(v30, v128, &qword_1ECA62E88, &qword_1D8B1DB38);
  if (v48(&v30[v47], 1, v49) == 1)
  {

    sub_1D87A14E4(v35, &qword_1ECA62E88, &qword_1D8B1DB38);
    sub_1D87B6E9C(v65, type metadata accessor for Lens_ProductImage);
LABEL_17:
    v66 = &qword_1ECA62EA8;
    v67 = &qword_1D8B1DB58;
    v68 = v30;
LABEL_29:
    sub_1D87A14E4(v68, v66, v67);
LABEL_30:

    return 0;
  }

  v69 = &v30[v47];
  v70 = v121;
  sub_1D87B6E34(v69, v121, type metadata accessor for Lens_ProductImage);
  v51 = v42;
  if ((*v65 != *v70 || *(v65 + 8) != *(v70 + 8)) && (sub_1D8B16BA0() & 1) == 0 || *(v65 + 16) != *(v70 + 16) || *(v65 + 20) != *(v70 + 20))
  {

    sub_1D87A14E4(v35, &qword_1ECA62E88, &qword_1D8B1DB38);
    sub_1D87B6E9C(v70, type metadata accessor for Lens_ProductImage);
    sub_1D87B6E9C(v65, type metadata accessor for Lens_ProductImage);
    v68 = v30;
    v66 = &qword_1ECA62E88;
    v67 = &qword_1D8B1DB38;
    goto LABEL_29;
  }

  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);

  v71 = sub_1D8B158C0();
  sub_1D87A14E4(v35, &qword_1ECA62E88, &qword_1D8B1DB38);
  sub_1D87B6E9C(v70, type metadata accessor for Lens_ProductImage);
  sub_1D87B6E9C(v65, type metadata accessor for Lens_ProductImage);
  sub_1D87A14E4(v30, &qword_1ECA62E88, &qword_1D8B1DB38);
  if ((v71 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  v52 = v51;
  v53 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__priceInfo;
  swift_beginAccess();
  v54 = v52;
  v55 = v52 + v53;
  v56 = v127;
  sub_1D87A0E38(v55, v127, &qword_1ECA62E80, &qword_1D8B1DB30);
  v57 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__priceInfo;
  swift_beginAccess();
  v58 = *(v122 + 48);
  v59 = v125;
  sub_1D87A0E38(v56, v125, &qword_1ECA62E80, &qword_1D8B1DB30);
  sub_1D87A0E38(v45 + v57, v59 + v58, &qword_1ECA62E80, &qword_1D8B1DB30);
  v60 = v124;
  v61 = *(v123 + 48);
  if (v61(v59, 1, v124) == 1)
  {
    sub_1D87A14E4(v56, &qword_1ECA62E80, &qword_1D8B1DB30);
    v62 = v61(v59 + v58, 1, v60);
    v63 = v54;
    v64 = v126;
    if (v62 == 1)
    {
      sub_1D87A14E4(v59, &qword_1ECA62E80, &qword_1D8B1DB30);
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  v72 = v120;
  sub_1D87A0E38(v59, v120, &qword_1ECA62E80, &qword_1D8B1DB30);
  v73 = v61(v59 + v58, 1, v60);
  v64 = v126;
  if (v73 == 1)
  {
    sub_1D87A14E4(v127, &qword_1ECA62E80, &qword_1D8B1DB30);
    sub_1D87B6E9C(v72, type metadata accessor for Lens_PriceInfo);
LABEL_28:
    v66 = &qword_1ECA62EA0;
    v67 = &qword_1D8B1DB50;
    v68 = v59;
    goto LABEL_29;
  }

  v75 = v59 + v58;
  v76 = v115;
  sub_1D87B6E34(v75, v115, type metadata accessor for Lens_PriceInfo);
  v77 = sub_1D87B51B0(v72, v76);
  sub_1D87B6E9C(v76, type metadata accessor for Lens_PriceInfo);
  sub_1D87A14E4(v127, &qword_1ECA62E80, &qword_1D8B1DB30);
  sub_1D87B6E9C(v72, type metadata accessor for Lens_PriceInfo);
  v45 = v106;
  sub_1D87A14E4(v59, &qword_1ECA62E80, &qword_1D8B1DB30);
  v63 = v54;
  if ((v77 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_33:
  v78 = (v63 + OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__condition);
  swift_beginAccess();
  v79 = *v78;
  v80 = v78[1];
  v81 = (v45 + OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__condition);
  swift_beginAccess();
  if ((v79 != *v81 || v80 != v81[1]) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v82 = v63;
  v83 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__rating;
  swift_beginAccess();
  sub_1D87A0E38(v82 + v83, v64, &qword_1ECA62E78, &qword_1D8B1DB28);
  v84 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__rating;
  swift_beginAccess();
  v85 = *(v116 + 48);
  v86 = v119;
  sub_1D87A0E38(v64, v119, &qword_1ECA62E78, &qword_1D8B1DB28);
  sub_1D87A0E38(v45 + v84, v86 + v85, &qword_1ECA62E78, &qword_1D8B1DB28);
  v87 = v118;
  v88 = *(v117 + 48);
  if (v88(v86, 1, v118) == 1)
  {
    sub_1D87A14E4(v64, &qword_1ECA62E78, &qword_1D8B1DB28);
    if (v88(v86 + v85, 1, v87) == 1)
    {
      sub_1D87A14E4(v86, &qword_1ECA62E78, &qword_1D8B1DB28);
      goto LABEL_39;
    }

    goto LABEL_44;
  }

  v96 = v114;
  sub_1D87A0E38(v86, v114, &qword_1ECA62E78, &qword_1D8B1DB28);
  if (v88(v86 + v85, 1, v87) == 1)
  {
    sub_1D87A14E4(v64, &qword_1ECA62E78, &qword_1D8B1DB28);
    sub_1D87B6E9C(v96, type metadata accessor for Lens_ProductRating);
LABEL_44:
    v66 = &qword_1ECA62E98;
    v67 = &qword_1D8B1DB48;
    v68 = v86;
    goto LABEL_29;
  }

  v97 = v109;
  sub_1D87B6E34(v86 + v85, v109, type metadata accessor for Lens_ProductRating);
  if (*v96 != *v97 || *(v96 + 4) != *(v97 + 4) || (*(v96 + 8) != *(v97 + 8) || *(v96 + 16) != *(v97 + 16)) && (sub_1D8B16BA0() & 1) == 0)
  {
    sub_1D87A14E4(v64, &qword_1ECA62E78, &qword_1D8B1DB28);
    sub_1D87B6E9C(v97, type metadata accessor for Lens_ProductRating);
    sub_1D87B6E9C(v96, type metadata accessor for Lens_ProductRating);
    v68 = v119;
    v66 = &qword_1ECA62E78;
    v67 = &qword_1D8B1DB28;
    goto LABEL_29;
  }

  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v98 = sub_1D8B158C0();
  sub_1D87A14E4(v64, &qword_1ECA62E78, &qword_1D8B1DB28);
  sub_1D87B6E9C(v97, type metadata accessor for Lens_ProductRating);
  v45 = v106;
  sub_1D87B6E9C(v96, type metadata accessor for Lens_ProductRating);
  sub_1D87A14E4(v119, &qword_1ECA62E78, &qword_1D8B1DB28);
  if ((v98 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_39:
  v89 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__callToAction;
  swift_beginAccess();
  v90 = v113;
  sub_1D87A0E38(v54 + v89, v113, &qword_1ECA62E70, &qword_1D8B1DB20);
  v91 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__callToAction;
  swift_beginAccess();
  v92 = *(v110 + 48);
  v93 = v105;
  sub_1D87A0E38(v90, v105, &qword_1ECA62E70, &qword_1D8B1DB20);
  sub_1D87A0E38(v45 + v91, v93 + v92, &qword_1ECA62E70, &qword_1D8B1DB20);
  v94 = v112;
  v95 = *(v111 + 48);
  if (v95(v93, 1, v112) != 1)
  {
    v99 = v108;
    sub_1D87A0E38(v93, v108, &qword_1ECA62E70, &qword_1D8B1DB20);
    if (v95(v93 + v92, 1, v94) == 1)
    {

      sub_1D87A14E4(v113, &qword_1ECA62E70, &qword_1D8B1DB20);
      sub_1D87B6E9C(v99, type metadata accessor for Lens_CallToAction);
      goto LABEL_55;
    }

    v103 = v107;
    sub_1D87B6E34(v93 + v92, v107, type metadata accessor for Lens_CallToAction);
    if ((*v99 != *v103 || v99[1] != v103[1]) && (sub_1D8B16BA0() & 1) == 0 || (v99[2] != v103[2] || v99[3] != v103[3]) && (sub_1D8B16BA0() & 1) == 0)
    {

      sub_1D87A14E4(v113, &qword_1ECA62E70, &qword_1D8B1DB20);
      sub_1D87B6E9C(v103, type metadata accessor for Lens_CallToAction);
      sub_1D87B6E9C(v99, type metadata accessor for Lens_CallToAction);
      v102 = v105;
      v100 = &qword_1ECA62E70;
      v101 = &qword_1D8B1DB20;
      goto LABEL_56;
    }

    sub_1D8B14960();
    sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v104 = sub_1D8B158C0();

    sub_1D87A14E4(v113, &qword_1ECA62E70, &qword_1D8B1DB20);
    sub_1D87B6E9C(v103, type metadata accessor for Lens_CallToAction);
    sub_1D87B6E9C(v99, type metadata accessor for Lens_CallToAction);
    sub_1D87A14E4(v105, &qword_1ECA62E70, &qword_1D8B1DB20);
    return (v104 & 1) != 0;
  }

  sub_1D87A14E4(v90, &qword_1ECA62E70, &qword_1D8B1DB20);
  if (v95(v93 + v92, 1, v94) != 1)
  {
LABEL_55:
    v100 = &qword_1ECA62E90;
    v101 = &qword_1D8B1DB40;
    v102 = v93;
LABEL_56:
    sub_1D87A14E4(v102, v100, v101);
    return 0;
  }

  sub_1D87A14E4(v93, &qword_1ECA62E70, &qword_1D8B1DB20);
  return 1;
}

uint64_t sub_1D87AED04@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a5@<X8>)
{
  sub_1D8B14950();
  v9 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t sub_1D87AEDA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D8B14960();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D87AEE0C(uint64_t a1)
{
  v3 = sub_1D8B14960();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1D87AEE74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62E68, type metadata accessor for Lens_ProductAd, &unk_1D8B1C374);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87AEF14(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62B90, type metadata accessor for Lens_ProductAd, &unk_1D8B1C3AC);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87AEF80(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62B90, type metadata accessor for Lens_ProductAd, &unk_1D8B1C3AC);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87AEFFC()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA35C8);
  __swift_project_value_buffer(v0, qword_1ECAA35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1AB70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "product_ads";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "block_level_disclosure";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "feed_index_position";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87AF210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1D8B149C0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1D8B14A20();
          break;
        case 2:
          sub_1D87AF330(a1, v5, a2, a3);
          break;
        case 1:
          type metadata accessor for Lens_ProductAd(0);
          sub_1D87B2CEC(&qword_1ECA62B90, type metadata accessor for Lens_ProductAd, &unk_1D8B1C3AC);
          sub_1D8B14A60();
          break;
      }

      result = sub_1D8B149C0();
    }
  }

  return result;
}

uint64_t sub_1D87AF330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Lens_AdBlock(0);
  type metadata accessor for Lens_AdDisclosureData(0);
  sub_1D87B2CEC(&qword_1ECA62C30, type metadata accessor for Lens_AdDisclosureData, &unk_1D8B1CAB4);
  return sub_1D8B14A70();
}

uint64_t sub_1D87AF3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Lens_ProductAd(0), sub_1D87B2CEC(&qword_1ECA62B90, type metadata accessor for Lens_ProductAd, &unk_1D8B1C3AC), result = sub_1D8B14B70(), !v4))
  {
    result = sub_1D87AF500(v3, a1, a2, a3);
    if (!v4)
    {
      if (v3[2])
      {
        sub_1D8B14B30();
      }

      type metadata accessor for Lens_AdBlock(0);
      return sub_1D8B14940();
    }
  }

  return result;
}

uint64_t sub_1D87AF500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62EB8, &qword_1D8B1DB60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_AdDisclosureData(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Lens_AdBlock(0);
  sub_1D87A0E38(a1 + *(v12 + 28), v7, &qword_1ECA62EB8, &qword_1D8B1DB60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62EB8, &qword_1D8B1DB60);
  }

  sub_1D87B6E34(v7, v11, type metadata accessor for Lens_AdDisclosureData);
  sub_1D87B2CEC(&qword_1ECA62C30, type metadata accessor for Lens_AdDisclosureData, &unk_1D8B1CAB4);
  sub_1D8B14B80();
  return sub_1D87B6E9C(v11, type metadata accessor for Lens_AdDisclosureData);
}

uint64_t sub_1D87AF710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  sub_1D8B14950();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Lens_AdDisclosureData(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1D87AF7F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62EB0, type metadata accessor for Lens_AdBlock, &unk_1D8B1C20C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87AF890(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62B70, type metadata accessor for Lens_AdBlock, &unk_1D8B1C244);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87AF8FC(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62B70, type metadata accessor for Lens_AdBlock, &unk_1D8B1C244);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87AF97C()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA35E0);
  __swift_project_value_buffer(v0, qword_1ECAA35E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D8B1AB60;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "explore_grid";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1D8B14B90();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "exact_match";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "related_searches";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "answers";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "llm_answer";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "ad_blocks";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87AFC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1D8B149C0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        v11 = v4;
        switch(result)
        {
          case 4:
            type metadata accessor for Lens_Answer(0);
            sub_1D87B2CEC(&qword_1ECA62C90, type metadata accessor for Lens_Answer, &unk_1D8B1CEEC);
LABEL_5:
            v4 = v11;
            sub_1D8B14A60();
            break;
          case 7:
            sub_1D87AFFC8(a1, v5, a2, a3);
            break;
          case 8:
            type metadata accessor for Lens_AdBlock(0);
            sub_1D87B2CEC(&qword_1ECA62B70, type metadata accessor for Lens_AdBlock, &unk_1D8B1C244);
            goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_1D87AFE60(a1, v5, a2, a3);
            break;
          case 2:
            sub_1D87AFF14(a1, v5, a2, a3);
            break;
          case 3:
            v11 = v4;
            type metadata accessor for Lens_RelatedSearch(0);
            sub_1D87B2CEC(&qword_1ECA62CA8, type metadata accessor for Lens_RelatedSearch, &unk_1D8B1CFEC);
            goto LABEL_5;
        }
      }

      result = sub_1D8B149C0();
    }
  }

  return result;
}

uint64_t sub_1D87AFE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Lens_Result(0);
  type metadata accessor for Lens_ExploreGrid(0);
  sub_1D87B2CEC(&qword_1ECA62CE8, type metadata accessor for Lens_ExploreGrid, &unk_1D8B1D2BC);
  return sub_1D8B14A70();
}

uint64_t sub_1D87AFF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Lens_Result(0);
  type metadata accessor for Lens_ExactMatch(0);
  sub_1D87B2CEC(&qword_1ECA62CC8, type metadata accessor for Lens_ExactMatch, &unk_1D8B1D154);
  return sub_1D8B14A70();
}

uint64_t sub_1D87AFFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Lens_Result(0);
  type metadata accessor for Lens_LlmAnswer(0);
  sub_1D87B2CEC(&qword_1ECA62C70, type metadata accessor for Lens_LlmAnswer, &unk_1D8B1CD84);
  return sub_1D8B14A70();
}

uint64_t sub_1D87B007C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D87B029C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1D87B04AC(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      type metadata accessor for Lens_RelatedSearch(0);
      sub_1D87B2CEC(&qword_1ECA62CA8, type metadata accessor for Lens_RelatedSearch, &unk_1D8B1CFEC);
      sub_1D8B14B70();
    }

    if (*(v3[1] + 16))
    {
      type metadata accessor for Lens_Answer(0);
      sub_1D87B2CEC(&qword_1ECA62C90, type metadata accessor for Lens_Answer, &unk_1D8B1CEEC);
      sub_1D8B14B70();
    }

    sub_1D87B06BC(v3, a1, a2, a3);
    if (*(v3[2] + 16))
    {
      type metadata accessor for Lens_AdBlock(0);
      sub_1D87B2CEC(&qword_1ECA62B70, type metadata accessor for Lens_AdBlock, &unk_1D8B1C244);
      sub_1D8B14B70();
    }

    type metadata accessor for Lens_Result(0);
    return sub_1D8B14940();
  }

  return result;
}

uint64_t sub_1D87B029C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62ED8, &qword_1D8B1DB80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_ExploreGrid(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Lens_Result(0);
  sub_1D87A0E38(a1 + *(v12 + 32), v7, &qword_1ECA62ED8, &qword_1D8B1DB80);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62ED8, &qword_1D8B1DB80);
  }

  sub_1D87B6E34(v7, v11, type metadata accessor for Lens_ExploreGrid);
  sub_1D87B2CEC(&qword_1ECA62CE8, type metadata accessor for Lens_ExploreGrid, &unk_1D8B1D2BC);
  sub_1D8B14B80();
  return sub_1D87B6E9C(v11, type metadata accessor for Lens_ExploreGrid);
}

uint64_t sub_1D87B04AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62ED0, &qword_1D8B1DB78);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_ExactMatch(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Lens_Result(0);
  sub_1D87A0E38(a1 + *(v12 + 36), v7, &qword_1ECA62ED0, &qword_1D8B1DB78);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62ED0, &qword_1D8B1DB78);
  }

  sub_1D87B6E34(v7, v11, type metadata accessor for Lens_ExactMatch);
  sub_1D87B2CEC(&qword_1ECA62CC8, type metadata accessor for Lens_ExactMatch, &unk_1D8B1D154);
  sub_1D8B14B80();
  return sub_1D87B6E9C(v11, type metadata accessor for Lens_ExactMatch);
}

uint64_t sub_1D87B06BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62EC8, &qword_1D8B1DB70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_LlmAnswer(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Lens_Result(0);
  sub_1D87A0E38(a1 + *(v12 + 40), v7, &qword_1ECA62EC8, &qword_1D8B1DB70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62EC8, &qword_1D8B1DB70);
  }

  sub_1D87B6E34(v7, v11, type metadata accessor for Lens_LlmAnswer);
  sub_1D87B2CEC(&qword_1ECA62C70, type metadata accessor for Lens_LlmAnswer, &unk_1D8B1CD84);
  sub_1D8B14B80();
  return sub_1D87B6E9C(v11, type metadata accessor for Lens_LlmAnswer);
}

uint64_t sub_1D87B08CC@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v4;
  *(a2 + 2) = v4;
  sub_1D8B14950();
  v5 = a1[8];
  v6 = type metadata accessor for Lens_ExploreGrid(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[9];
  v8 = type metadata accessor for Lens_ExactMatch(0);
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = a1[10];
  v10 = type metadata accessor for Lens_LlmAnswer(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(&a2[v9], 1, 1, v10);
}

uint64_t sub_1D87B0A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62EC0, type metadata accessor for Lens_Result, &unk_1D8B1C0A4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87B0ADC(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62B50, type metadata accessor for Lens_Result, &unk_1D8B1C0DC);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87B0B48(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62B50, type metadata accessor for Lens_Result, &unk_1D8B1C0DC);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87B0BC8()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA35F8);
  __swift_project_value_buffer(v0, qword_1ECAA35F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1ABA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "box";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "result";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "status";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "result_panel_url";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87B0E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D8B149C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1D87B1068(a1, v5, a2, a3);
      }

      else if (result == 4)
      {
        sub_1D8B14A40();
      }
    }

    else if (result == 1)
    {
      sub_1D87B0F00(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1D87B0FB4(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1D87B0F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Lens_Object(0);
  type metadata accessor for Lens_NormalizedBox(0);
  sub_1D87B2CEC(&qword_1ECA62D88, type metadata accessor for Lens_NormalizedBox, &unk_1D8B1D9EC);
  return sub_1D8B14A70();
}

uint64_t sub_1D87B0FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Lens_Object(0);
  type metadata accessor for Lens_Result(0);
  sub_1D87B2CEC(&qword_1ECA62B50, type metadata accessor for Lens_Result, &unk_1D8B1C0DC);
  return sub_1D8B14A70();
}

uint64_t sub_1D87B1068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Lens_Object(0);
  type metadata accessor for Lens_Status(0);
  sub_1D87B2CEC(&qword_1ECA62B10, type metadata accessor for Lens_Status, &unk_1D8B1BE0C);
  return sub_1D8B14A70();
}

uint64_t sub_1D87B111C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D87B11F8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1D87B1408(v3, a1, a2, a3);
    sub_1D87B1618(v3, a1, a2, a3);
    v9 = v3[1];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_1D8B14B50();
    }

    type metadata accessor for Lens_Object(0);
    return sub_1D8B14940();
  }

  return result;
}

uint64_t sub_1D87B11F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F10, &qword_1D8B1DBB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_NormalizedBox(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Lens_Object(0);
  sub_1D87A0E38(a1 + *(v12 + 24), v7, &qword_1ECA62F10, &qword_1D8B1DBB0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62F10, &qword_1D8B1DBB0);
  }

  sub_1D87B6E34(v7, v11, type metadata accessor for Lens_NormalizedBox);
  sub_1D87B2CEC(&qword_1ECA62D88, type metadata accessor for Lens_NormalizedBox, &unk_1D8B1D9EC);
  sub_1D8B14B80();
  return sub_1D87B6E9C(v11, type metadata accessor for Lens_NormalizedBox);
}

uint64_t sub_1D87B1408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F08, &qword_1D8B1DBA8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_Result(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Lens_Object(0);
  sub_1D87A0E38(a1 + *(v12 + 28), v7, &qword_1ECA62F08, &qword_1D8B1DBA8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62F08, &qword_1D8B1DBA8);
  }

  sub_1D87B6E34(v7, v11, type metadata accessor for Lens_Result);
  sub_1D87B2CEC(&qword_1ECA62B50, type metadata accessor for Lens_Result, &unk_1D8B1C0DC);
  sub_1D8B14B80();
  return sub_1D87B6E9C(v11, type metadata accessor for Lens_Result);
}

uint64_t sub_1D87B1618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F00, &qword_1D8B1DBA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_Status(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Lens_Object(0);
  sub_1D87A0E38(a1 + *(v12 + 32), v7, &qword_1ECA62F00, &qword_1D8B1DBA0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62F00, &qword_1D8B1DBA0);
  }

  sub_1D87B6E34(v7, v11, type metadata accessor for Lens_Status);
  sub_1D87B2CEC(&qword_1ECA62B10, type metadata accessor for Lens_Status, &unk_1D8B1BE0C);
  sub_1D8B14B80();
  return sub_1D87B6E9C(v11, type metadata accessor for Lens_Status);
}

uint64_t sub_1D87B182C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_1D8B14950();
  v4 = a1[6];
  v5 = type metadata accessor for Lens_NormalizedBox(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for Lens_Result(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for Lens_Status(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(&a2[v8], 1, 1, v9);
}

uint64_t sub_1D87B1994(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62EF8, type metadata accessor for Lens_Object, &unk_1D8B1BF3C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87B1A34(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62B30, type metadata accessor for Lens_Object, &unk_1D8B1BF74);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87B1AA0(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62B30, type metadata accessor for Lens_Object, &unk_1D8B1BF74);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87B1B20()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3610);
  __swift_project_value_buffer(v0, qword_1ECAA3610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1AB80;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "code";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error_message";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87B1CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8B149C0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1D87B7834();
        sub_1D8B149F0();
      }

      else if (result == 2)
      {
        sub_1D8B14A40();
      }

      result = sub_1D8B149C0();
    }
  }

  return result;
}

uint64_t sub_1D87B1DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1D87B7834(), result = sub_1D8B14B00(), !v4))
  {
    v6 = v3[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1D8B14B50(), !v4))
    {
      type metadata accessor for Lens_Status(0);
      return sub_1D8B14940();
    }
  }

  return result;
}

uint64_t sub_1D87B1E90@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  return sub_1D8B14950();
}

uint64_t sub_1D87B1F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62F30, type metadata accessor for Lens_Status, &unk_1D8B1BDD4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87B1FB4(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62B10, type metadata accessor for Lens_Status, &unk_1D8B1BE0C);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87B2020(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62B10, type metadata accessor for Lens_Status, &unk_1D8B1BE0C);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87B20A0()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3628);
  __swift_project_value_buffer(v0, qword_1ECAA3628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1B910;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "OK";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SENSITIVE_NO_RESULT";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NO_RESULT";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "INTERNAL";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "INVALID_INPUT";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87B2350()
{
  v0 = sub_1D8B14BB0();
  __swift_allocate_value_buffer(v0, qword_1ECAA3640);
  __swift_project_value_buffer(v0, qword_1ECAA3640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62830, &unk_1D8B1B370);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62838, &unk_1D8B1DAF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1AB80;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "objects";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D8B14B90();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "status";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1D8B14BA0();
}

uint64_t sub_1D87B2518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1D8B149C0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Lens_Object(0);
        sub_1D87B2CEC(&qword_1ECA62B30, type metadata accessor for Lens_Object, &unk_1D8B1BF74);
        sub_1D8B14A60();
      }

      else if (result == 2)
      {
        sub_1D87B2618(a1, v5, a2, a3);
      }

      result = sub_1D8B149C0();
    }
  }

  return result;
}

uint64_t sub_1D87B2618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Lens_FetchVisualDataResponse(0);
  type metadata accessor for Lens_Status(0);
  sub_1D87B2CEC(&qword_1ECA62B10, type metadata accessor for Lens_Status, &unk_1D8B1BE0C);
  return sub_1D8B14A70();
}

uint64_t sub_1D87B26CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Lens_Object(0), sub_1D87B2CEC(&qword_1ECA62B30, type metadata accessor for Lens_Object, &unk_1D8B1BF74), result = sub_1D8B14B70(), !v4))
  {
    result = sub_1D87B27C8(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Lens_FetchVisualDataResponse(0);
      return sub_1D8B14940();
    }
  }

  return result;
}

uint64_t sub_1D87B27C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F00, &qword_1D8B1DBA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Lens_Status(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  VisualDataResponse = type metadata accessor for Lens_FetchVisualDataResponse(0);
  sub_1D87A0E38(a1 + *(VisualDataResponse + 24), v7, &qword_1ECA62F00, &qword_1D8B1DBA0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62F00, &qword_1D8B1DBA0);
  }

  sub_1D87B6E34(v7, v11, type metadata accessor for Lens_Status);
  sub_1D87B2CEC(&qword_1ECA62B10, type metadata accessor for Lens_Status, &unk_1D8B1BE0C);
  sub_1D8B14B80();
  return sub_1D87B6E9C(v11, type metadata accessor for Lens_Status);
}

uint64_t sub_1D87B29D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  sub_1D8B14950();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Lens_Status(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1D87B2AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D87B2CEC(&qword_1ECA62F40, type metadata accessor for Lens_FetchVisualDataResponse, &unk_1D8B1BC44);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D87B2B50(uint64_t a1)
{
  v2 = sub_1D87B2CEC(&qword_1ECA62AF0, type metadata accessor for Lens_FetchVisualDataResponse, &unk_1D8B1BC7C);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D87B2BBC(uint64_t a1, uint64_t a2)
{
  sub_1D87B2CEC(&qword_1ECA62AF0, type metadata accessor for Lens_FetchVisualDataResponse, &unk_1D8B1BC7C);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87B2CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D87B471C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));
  swift_beginAccess();
  v3 = *(v2 + 16);

  return v3;
}

uint64_t sub_1D87B4770(uint64_t a1)
{
  v2 = (*(v1 + *(a1 + 20)) + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__domainName);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1D87B47D8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D87B4810()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1D87B4840(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Lens_AdDisclosureData(0);
  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D8B158C0() & 1;
}

uint64_t sub_1D87B4920(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D8B16BA0() & 1) == 0 || a1[4] != a2[4] || (a1[5] != a2[5] || a1[6] != a2[6]) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Lens_ShoppableBadge(0);
  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D8B158C0() & 1;
}

uint64_t sub_1D87B4A34(void *a1, void *a2)
{
  v4 = type metadata accessor for Lens_ImageThumbnail(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DF0, &qword_1D8B1DB00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64F60, &qword_1D8B1DB10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_1D8B16BA0() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_12;
  }

  v21 = v7;
  v22 = type metadata accessor for Lens_RelatedSearch(0);
  v14 = *(v22 + 28);
  v15 = *(v11 + 48);
  sub_1D87A0E38(a1 + v14, v13, &qword_1ECA62DF0, &qword_1D8B1DB00);
  sub_1D87A0E38(a2 + v14, &v13[v15], &qword_1ECA62DF0, &qword_1D8B1DB00);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D87A14E4(v13, &qword_1ECA62DF0, &qword_1D8B1DB00);
LABEL_14:
      sub_1D8B14960();
      sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1D8B158C0();
      return v17 & 1;
    }

    goto LABEL_11;
  }

  sub_1D87A0E38(v13, v10, &qword_1ECA62DF0, &qword_1D8B1DB00);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D87B6E9C(v10, type metadata accessor for Lens_ImageThumbnail);
LABEL_11:
    sub_1D87A14E4(v13, &unk_1ECA64F60, &qword_1D8B1DB10);
    goto LABEL_12;
  }

  v18 = v21;
  sub_1D87B6E34(&v13[v15], v21, type metadata accessor for Lens_ImageThumbnail);
  v19 = sub_1D87B67E4(v10, v18);
  sub_1D87B6E9C(v18, type metadata accessor for Lens_ImageThumbnail);
  sub_1D87B6E9C(v10, type metadata accessor for Lens_ImageThumbnail);
  sub_1D87A14E4(v13, &qword_1ECA62DF0, &qword_1D8B1DB00);
  if (v19)
  {
    goto LABEL_14;
  }

LABEL_12:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D87B4DD8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Lens_ProductRating(0);
  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D8B158C0() & 1;
}

uint64_t sub_1D87B4EB4(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D8B16BA0() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Lens_SearchResult(0);
  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D8B158C0() & 1;
}

uint64_t sub_1D87B4FDC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1D8B16BA0() & 1) == 0 || *(a1 + 4) != *(a2 + 16) || *(a1 + 5) != *(a2 + 20))
  {
    return 0;
  }

  type metadata accessor for Lens_ProductImage(0);
  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D8B158C0() & 1;
}

uint64_t sub_1D87B50BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D8B158C0() & 1;
}

uint64_t sub_1D87B51B0(void *a1, void *a2)
{
  v4 = type metadata accessor for Lens_PriceInfo.SaleInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62A60, &qword_1D8B1E040);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E58, &qword_1D8B1DB18);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  if (*a1 != *a2 && (sub_1D8B16BA0() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_13;
  }

  v27 = v7;
  v26 = type metadata accessor for Lens_PriceInfo(0);
  v14 = *(v26 + 32);
  v15 = *(v11 + 48);
  sub_1D87A0E38(a1 + v14, v13, &qword_1ECA62A60, &qword_1D8B1E040);
  sub_1D87A0E38(a2 + v14, &v13[v15], &qword_1ECA62A60, &qword_1D8B1E040);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D87A0E38(v13, v10, &qword_1ECA62A60, &qword_1D8B1E040);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = &v13[v15];
      v22 = v27;
      sub_1D87B6E34(v21, v27, type metadata accessor for Lens_PriceInfo.SaleInfo);
      v23 = *v10 == *v22 && v10[1] == v22[1];
      if (v23 || (sub_1D8B16BA0() & 1) != 0)
      {
        v24 = v10[2] == v22[2] && v10[3] == v22[3];
        if (v24 || (sub_1D8B16BA0() & 1) != 0)
        {
          sub_1D8B14960();
          sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v25 = sub_1D8B158C0();
          sub_1D87B6E9C(v22, type metadata accessor for Lens_PriceInfo.SaleInfo);
          sub_1D87B6E9C(v10, type metadata accessor for Lens_PriceInfo.SaleInfo);
          sub_1D87A14E4(v13, &qword_1ECA62A60, &qword_1D8B1E040);
          if ((v25 & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_26;
        }
      }

      sub_1D87B6E9C(v22, type metadata accessor for Lens_PriceInfo.SaleInfo);
      sub_1D87B6E9C(v10, type metadata accessor for Lens_PriceInfo.SaleInfo);
      v17 = &qword_1ECA62A60;
      v18 = &qword_1D8B1E040;
LABEL_12:
      sub_1D87A14E4(v13, v17, v18);
      goto LABEL_13;
    }

    sub_1D87B6E9C(v10, type metadata accessor for Lens_PriceInfo.SaleInfo);
LABEL_11:
    v17 = &qword_1ECA62E58;
    v18 = &qword_1D8B1DB18;
    goto LABEL_12;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_1D87A14E4(v13, &qword_1ECA62A60, &qword_1D8B1E040);
LABEL_26:
  if (a1[4] == a2[4] && a1[5] == a2[5] || (sub_1D8B16BA0() & 1) != 0)
  {
    sub_1D8B14960();
    sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v19 = sub_1D8B158C0();
    return v19 & 1;
  }

LABEL_13:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1D87B5650(float *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_1D8B16BA0() & 1) == 0 || (sub_1D88E4D3C(*(a1 + 2), *(a2 + 16)) & 1) == 0 || a1[6] != *(a2 + 24))
  {
    return 0;
  }

  type metadata accessor for Lens_LlmAnswer(0);
  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D8B158C0() & 1;
}

uint64_t sub_1D87B5730(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Lens_AdDisclosureData(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62EB8, &qword_1D8B1DB60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v28 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64F50, &qword_1D8B1DB68);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  if ((sub_1D88E56F0(*a1, *a2) & 1) == 0)
  {
    goto LABEL_22;
  }

  v14 = type metadata accessor for Lens_AdBlock(0);
  v15 = *(v14 + 28);
  v16 = a1;
  v17 = *(v11 + 48);
  v28 = v14;
  v29 = v16;
  sub_1D87A0E38(v16 + v15, v13, &qword_1ECA62EB8, &qword_1D8B1DB60);
  v18 = a2 + v15;
  v19 = a2;
  sub_1D87A0E38(v18, &v13[v17], &qword_1ECA62EB8, &qword_1D8B1DB60);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v17], 1, v4) == 1)
    {
      sub_1D87A14E4(v13, &qword_1ECA62EB8, &qword_1D8B1DB60);
      goto LABEL_20;
    }

    goto LABEL_7;
  }

  sub_1D87A0E38(v13, v10, &qword_1ECA62EB8, &qword_1D8B1DB60);
  if (v20(&v13[v17], 1, v4) == 1)
  {
    sub_1D87B6E9C(v10, type metadata accessor for Lens_AdDisclosureData);
LABEL_7:
    v21 = &unk_1ECA64F50;
    v22 = &qword_1D8B1DB68;
LABEL_8:
    sub_1D87A14E4(v13, v21, v22);
LABEL_22:
    v26 = 0;
    return v26 & 1;
  }

  sub_1D87B6E34(&v13[v17], v7, type metadata accessor for Lens_AdDisclosureData);
  v23 = *v10 == *v7 && v10[1] == v7[1];
  if (!v23 && (sub_1D8B16BA0() & 1) == 0 || (v10[2] == v7[2] ? (v24 = v10[3] == v7[3]) : (v24 = 0), !v24 && (sub_1D8B16BA0() & 1) == 0))
  {
    sub_1D87B6E9C(v7, type metadata accessor for Lens_AdDisclosureData);
    sub_1D87B6E9C(v10, type metadata accessor for Lens_AdDisclosureData);
    v21 = &qword_1ECA62EB8;
    v22 = &qword_1D8B1DB60;
    goto LABEL_8;
  }

  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v19 = a2;
  v25 = sub_1D8B158C0();
  sub_1D87B6E9C(v7, type metadata accessor for Lens_AdDisclosureData);
  sub_1D87B6E9C(v10, type metadata accessor for Lens_AdDisclosureData);
  sub_1D87A14E4(v13, &qword_1ECA62EB8, &qword_1D8B1DB60);
  if ((v25 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (*(v29 + 2) != *(v19 + 2))
  {
    goto LABEL_22;
  }

  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v26 = sub_1D8B158C0();
  return v26 & 1;
}

uint64_t sub_1D87B5B94(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 <= 1)
    {
      if (v3)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2)
      {
        return 0;
      }
    }

    else if (v3 == 2)
    {
      if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v3 == 3)
    {
      if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v2 != 4)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {
    type metadata accessor for Lens_Status(0);
    sub_1D8B14960();
    sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1D8B158C0() & 1;
  }

  return 0;
}

uint64_t sub_1D87B5CBC(uint64_t *a1, uint64_t *a2)
{
  v71 = a2;
  v3 = type metadata accessor for Lens_LlmAnswer(0);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62EC8, &qword_1D8B1DB70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v58 = &v56 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62EE0, &qword_1D8B1DB88);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v56 - v7;
  v8 = type metadata accessor for Lens_ExactMatch(0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v63 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62ED0, &qword_1D8B1DB78);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = (&v56 - v11);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62EE8, &qword_1D8B1DB90);
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v56 - v12;
  v13 = type metadata accessor for Lens_ExploreGrid(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62ED8, &qword_1D8B1DB80);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62EF0, &qword_1D8B1DB98);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v56 - v22;
  v69 = type metadata accessor for Lens_Result(0);
  v70 = a1;
  v24 = *(v69 + 32);
  v25 = *(v21 + 56);
  sub_1D87A0E38(a1 + v24, v23, &qword_1ECA62ED8, &qword_1D8B1DB80);
  v26 = v71;
  sub_1D87A0E38(v71 + v24, &v23[v25], &qword_1ECA62ED8, &qword_1D8B1DB80);
  v27 = *(v14 + 48);
  if (v27(v23, 1, v13) == 1)
  {
    if (v27(&v23[v25], 1, v13) == 1)
    {
      sub_1D87A14E4(v23, &qword_1ECA62ED8, &qword_1D8B1DB80);
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  sub_1D87A0E38(v23, v19, &qword_1ECA62ED8, &qword_1D8B1DB80);
  if (v27(&v23[v25], 1, v13) == 1)
  {
    sub_1D87B6E9C(v19, type metadata accessor for Lens_ExploreGrid);
LABEL_16:
    v43 = &qword_1ECA62EF0;
    v44 = &qword_1D8B1DB98;
LABEL_20:
    v45 = v23;
LABEL_21:
    sub_1D87A14E4(v45, v43, v44);
    goto LABEL_22;
  }

  sub_1D87B6E34(&v23[v25], v16, type metadata accessor for Lens_ExploreGrid);
  if ((sub_1D88E4044(*v19, *v16) & 1) == 0 || v19[8] != v16[8])
  {
    sub_1D87B6E9C(v16, type metadata accessor for Lens_ExploreGrid);
    sub_1D87B6E9C(v19, type metadata accessor for Lens_ExploreGrid);
    v43 = &qword_1ECA62ED8;
    v44 = &qword_1D8B1DB80;
    goto LABEL_20;
  }

  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v51 = sub_1D8B158C0();
  sub_1D87B6E9C(v16, type metadata accessor for Lens_ExploreGrid);
  sub_1D87B6E9C(v19, type metadata accessor for Lens_ExploreGrid);
  sub_1D87A14E4(v23, &qword_1ECA62ED8, &qword_1D8B1DB80);
  if ((v51 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_4:
  v29 = v69;
  v28 = v70;
  v30 = *(v69 + 36);
  v31 = *(v65 + 48);
  v32 = v68;
  sub_1D87A0E38(v70 + v30, v68, &qword_1ECA62ED0, &qword_1D8B1DB78);
  sub_1D87A0E38(v26 + v30, v32 + v31, &qword_1ECA62ED0, &qword_1D8B1DB78);
  v33 = v67;
  v34 = *(v66 + 48);
  if (v34(v32, 1, v67) == 1)
  {
    if (v34(v32 + v31, 1, v33) == 1)
    {
      sub_1D87A14E4(v32, &qword_1ECA62ED0, &qword_1D8B1DB78);
      goto LABEL_7;
    }

    goto LABEL_26;
  }

  v47 = v64;
  sub_1D87A0E38(v32, v64, &qword_1ECA62ED0, &qword_1D8B1DB78);
  if (v34(v32 + v31, 1, v33) == 1)
  {
    sub_1D87B6E9C(v47, type metadata accessor for Lens_ExactMatch);
LABEL_26:
    v43 = &qword_1ECA62EE8;
    v44 = &qword_1D8B1DB90;
    v45 = v32;
    goto LABEL_21;
  }

  v48 = v32 + v31;
  v49 = v63;
  sub_1D87B6E34(v48, v63, type metadata accessor for Lens_ExactMatch);
  if ((sub_1D88E4044(*v47, *v49) & 1) == 0)
  {
    sub_1D87B6E9C(v49, type metadata accessor for Lens_ExactMatch);
    sub_1D87B6E9C(v47, type metadata accessor for Lens_ExactMatch);
    v43 = &qword_1ECA62ED0;
    v44 = &qword_1D8B1DB78;
    v45 = v32;
    goto LABEL_21;
  }

  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v50 = sub_1D8B158C0();
  sub_1D87B6E9C(v49, type metadata accessor for Lens_ExactMatch);
  sub_1D87B6E9C(v47, type metadata accessor for Lens_ExactMatch);
  sub_1D87A14E4(v32, &qword_1ECA62ED0, &qword_1D8B1DB78);
  if ((v50 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_7:
  if ((sub_1D88E5A04(*v28, *v26) & 1) == 0 || (sub_1D88E61B8(v28[1], v26[1]) & 1) == 0)
  {
    goto LABEL_22;
  }

  v35 = *(v29 + 40);
  v36 = *(v59 + 48);
  v37 = v62;
  sub_1D87A0E38(v28 + v35, v62, &qword_1ECA62EC8, &qword_1D8B1DB70);
  v38 = v26 + v35;
  v39 = v37;
  sub_1D87A0E38(v38, v37 + v36, &qword_1ECA62EC8, &qword_1D8B1DB70);
  v40 = v61;
  v41 = *(v60 + 48);
  if (v41(v37, 1, v61) == 1)
  {
    if (v41(v37 + v36, 1, v40) == 1)
    {
      sub_1D87A14E4(v37, &qword_1ECA62EC8, &qword_1D8B1DB70);
      goto LABEL_12;
    }

    goto LABEL_35;
  }

  v52 = v58;
  sub_1D87A0E38(v39, v58, &qword_1ECA62EC8, &qword_1D8B1DB70);
  if (v41(v39 + v36, 1, v40) == 1)
  {
    sub_1D87B6E9C(v52, type metadata accessor for Lens_LlmAnswer);
LABEL_35:
    v43 = &qword_1ECA62EE0;
    v44 = &qword_1D8B1DB88;
    v45 = v39;
    goto LABEL_21;
  }

  v53 = v39 + v36;
  v54 = v57;
  sub_1D87B6E34(v53, v57, type metadata accessor for Lens_LlmAnswer);
  if ((*v52 != *v54 || *(v52 + 8) != *(v54 + 8)) && (sub_1D8B16BA0() & 1) == 0 || (sub_1D88E4D3C(*(v52 + 16), *(v54 + 16)) & 1) == 0 || *(v52 + 24) != *(v54 + 24))
  {
    sub_1D87B6E9C(v54, type metadata accessor for Lens_LlmAnswer);
    sub_1D87B6E9C(v52, type metadata accessor for Lens_LlmAnswer);
    v43 = &qword_1ECA62EC8;
    v44 = &qword_1D8B1DB70;
    v45 = v39;
    goto LABEL_21;
  }

  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v55 = sub_1D8B158C0();
  sub_1D87B6E9C(v54, type metadata accessor for Lens_LlmAnswer);
  sub_1D87B6E9C(v52, type metadata accessor for Lens_LlmAnswer);
  sub_1D87A14E4(v39, &qword_1ECA62EC8, &qword_1D8B1DB70);
  if ((v55 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((sub_1D88E69A0(v28[2], v26[2]) & 1) == 0)
  {
LABEL_22:
    v42 = 0;
    return v42 & 1;
  }

  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v42 = sub_1D8B158C0();
  return v42 & 1;
}

uint64_t sub_1D87B67E4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1D8B16BA0() & 1) == 0 || !sub_1D87A057C(a1[2], a1[3], *(a2 + 16), *(a2 + 24)) || (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (sub_1D8B16BA0() & 1) == 0 || *(a1 + 12) != *(a2 + 48) || *(a1 + 13) != *(a2 + 52) || (a1[7] != *(a2 + 56) || a1[8] != *(a2 + 64)) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Lens_ImageThumbnail(0);
  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D8B158C0() & 1;
}

uint64_t sub_1D87B691C(void *a1, void *a2)
{
  v4 = type metadata accessor for Lens_ImageThumbnail(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DF0, &qword_1D8B1DB00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64F60, &qword_1D8B1DB10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_1D8B16BA0() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1D8B16BA0() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D8B16BA0() & 1) == 0 || (a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_18;
  }

  v21 = v7;
  v22 = type metadata accessor for Lens_Answer(0);
  v14 = *(v22 + 36);
  v15 = *(v11 + 48);
  sub_1D87A0E38(a1 + v14, v13, &qword_1ECA62DF0, &qword_1D8B1DB00);
  sub_1D87A0E38(a2 + v14, &v13[v15], &qword_1ECA62DF0, &qword_1D8B1DB00);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D87A14E4(v13, &qword_1ECA62DF0, &qword_1D8B1DB00);
LABEL_21:
      sub_1D8B14960();
      sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1D8B158C0();
      return v17 & 1;
    }

    goto LABEL_17;
  }

  sub_1D87A0E38(v13, v10, &qword_1ECA62DF0, &qword_1D8B1DB00);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D87B6E9C(v10, type metadata accessor for Lens_ImageThumbnail);
LABEL_17:
    sub_1D87A14E4(v13, &unk_1ECA64F60, &qword_1D8B1DB10);
    goto LABEL_18;
  }

  v19 = v21;
  sub_1D87B6E34(&v13[v15], v21, type metadata accessor for Lens_ImageThumbnail);
  v20 = sub_1D87B67E4(v10, v19);
  sub_1D87B6E9C(v19, type metadata accessor for Lens_ImageThumbnail);
  sub_1D87B6E9C(v10, type metadata accessor for Lens_ImageThumbnail);
  sub_1D87A14E4(v13, &qword_1ECA62DF0, &qword_1D8B1DB00);
  if (v20)
  {
    goto LABEL_21;
  }

LABEL_18:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D87B6D08(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  type metadata accessor for Lens_NormalizedBox(0);
  sub_1D8B14960();
  sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D8B158C0() & 1;
}

unint64_t sub_1D87B6DE0()
{
  result = qword_1ECA62DE0;
  if (!qword_1ECA62DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62DE0);
  }

  return result;
}

uint64_t sub_1D87B6E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D87B6E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D87B6EFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D87B6F64(void *a1, void *a2)
{
  v70 = a2;
  v71 = a1;
  v2 = type metadata accessor for Lens_Status(0);
  v60 = *(v2 - 8);
  v61 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F00, &qword_1D8B1DBA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v69 = (&v56 - v5);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F18, &qword_1D8B1DBB8);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v56 - v6;
  v7 = type metadata accessor for Lens_Result(0);
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v58 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F08, &qword_1D8B1DBA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v63 = (&v56 - v10);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F20, &qword_1D8B1DBC0);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v56 - v11;
  v12 = type metadata accessor for Lens_NormalizedBox(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F10, &qword_1D8B1DBB0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (&v56 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F28, &qword_1D8B1DBC8);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v56 - v21;
  v68 = type metadata accessor for Lens_Object(0);
  v23 = *(v68 + 24);
  v24 = *(v20 + 56);
  sub_1D87A0E38(v71 + v23, v22, &qword_1ECA62F10, &qword_1D8B1DBB0);
  v25 = v70 + v23;
  v26 = v70;
  sub_1D87A0E38(v25, &v22[v24], &qword_1ECA62F10, &qword_1D8B1DBB0);
  v27 = *(v13 + 48);
  if (v27(v22, 1, v12) == 1)
  {
    if (v27(&v22[v24], 1, v12) == 1)
    {
      sub_1D87A14E4(v22, &qword_1ECA62F10, &qword_1D8B1DBB0);
      goto LABEL_8;
    }

LABEL_6:
    v28 = &qword_1ECA62F28;
    v29 = &qword_1D8B1DBC8;
    v30 = v22;
LABEL_21:
    sub_1D87A14E4(v30, v28, v29);
    goto LABEL_22;
  }

  sub_1D87A0E38(v22, v18, &qword_1ECA62F10, &qword_1D8B1DBB0);
  if (v27(&v22[v24], 1, v12) == 1)
  {
    sub_1D87B6E9C(v18, type metadata accessor for Lens_NormalizedBox);
    goto LABEL_6;
  }

  sub_1D87B6E34(&v22[v24], v15, type metadata accessor for Lens_NormalizedBox);
  v31 = sub_1D87B6D08(v18, v15);
  sub_1D87B6E9C(v15, type metadata accessor for Lens_NormalizedBox);
  sub_1D87B6E9C(v18, type metadata accessor for Lens_NormalizedBox);
  sub_1D87A14E4(v22, &qword_1ECA62F10, &qword_1D8B1DBB0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v32 = v67;
  v33 = v68;
  v34 = *(v68 + 28);
  v35 = *(v64 + 48);
  v36 = v71;
  sub_1D87A0E38(v71 + v34, v67, &qword_1ECA62F08, &qword_1D8B1DBA8);
  sub_1D87A0E38(v26 + v34, v32 + v35, &qword_1ECA62F08, &qword_1D8B1DBA8);
  v37 = v66;
  v38 = *(v65 + 48);
  if (v38(v32, 1, v66) == 1)
  {
    v39 = v38(v32 + v35, 1, v37);
    v40 = v69;
    if (v39 == 1)
    {
      sub_1D87A14E4(v32, &qword_1ECA62F08, &qword_1D8B1DBA8);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v41 = v63;
  sub_1D87A0E38(v32, v63, &qword_1ECA62F08, &qword_1D8B1DBA8);
  v42 = v38(v32 + v35, 1, v37);
  v40 = v69;
  if (v42 == 1)
  {
    sub_1D87B6E9C(v41, type metadata accessor for Lens_Result);
LABEL_13:
    v28 = &qword_1ECA62F20;
    v29 = &qword_1D8B1DBC0;
    v30 = v32;
    goto LABEL_21;
  }

  v43 = v32 + v35;
  v44 = v58;
  sub_1D87B6E34(v43, v58, type metadata accessor for Lens_Result);
  v45 = sub_1D87B5CBC(v41, v44);
  sub_1D87B6E9C(v44, type metadata accessor for Lens_Result);
  sub_1D87B6E9C(v41, type metadata accessor for Lens_Result);
  sub_1D87A14E4(v32, &qword_1ECA62F08, &qword_1D8B1DBA8);
  if ((v45 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v46 = *(v33 + 32);
  v47 = *(v59 + 48);
  v48 = v62;
  sub_1D87A0E38(v36 + v46, v62, &qword_1ECA62F00, &qword_1D8B1DBA0);
  sub_1D87A0E38(v26 + v46, v48 + v47, &qword_1ECA62F00, &qword_1D8B1DBA0);
  v49 = v61;
  v50 = *(v60 + 48);
  if (v50(v48, 1, v61) != 1)
  {
    sub_1D87A0E38(v48, v40, &qword_1ECA62F00, &qword_1D8B1DBA0);
    if (v50(v48 + v47, 1, v49) != 1)
    {
      v53 = v48 + v47;
      v54 = v57;
      sub_1D87B6E34(v53, v57, type metadata accessor for Lens_Status);
      v55 = sub_1D87B5B94(v40, v54);
      sub_1D87B6E9C(v54, type metadata accessor for Lens_Status);
      sub_1D87B6E9C(v40, type metadata accessor for Lens_Status);
      sub_1D87A14E4(v48, &qword_1ECA62F00, &qword_1D8B1DBA0);
      if ((v55 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    sub_1D87B6E9C(v40, type metadata accessor for Lens_Status);
    goto LABEL_20;
  }

  if (v50(v48 + v47, 1, v49) != 1)
  {
LABEL_20:
    v28 = &qword_1ECA62F18;
    v29 = &qword_1D8B1DBB8;
    v30 = v48;
    goto LABEL_21;
  }

  sub_1D87A14E4(v48, &qword_1ECA62F00, &qword_1D8B1DBA0);
LABEL_25:
  if (*v36 == *v26 && v36[1] == v26[1] || (sub_1D8B16BA0() & 1) != 0)
  {
    sub_1D8B14960();
    sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v51 = sub_1D8B158C0();
    return v51 & 1;
  }

LABEL_22:
  v51 = 0;
  return v51 & 1;
}

unint64_t sub_1D87B7834()
{
  result = qword_1ECA62F38;
  if (!qword_1ECA62F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62F38);
  }

  return result;
}

uint64_t sub_1D87B7888(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Lens_Status(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F00, &qword_1D8B1DBA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v23 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F18, &qword_1D8B1DBB8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  if ((sub_1D88E76B8(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  VisualDataResponse = type metadata accessor for Lens_FetchVisualDataResponse(0);
  v15 = a1;
  v16 = a2;
  v23[0] = VisualDataResponse;
  v23[1] = v15;
  v17 = *(VisualDataResponse + 24);
  v18 = *(v11 + 48);
  sub_1D87A0E38(v15 + v17, v13, &qword_1ECA62F00, &qword_1D8B1DBA0);
  sub_1D87A0E38(v16 + v17, &v13[v18], &qword_1ECA62F00, &qword_1D8B1DBA0);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_1D87A14E4(v13, &qword_1ECA62F00, &qword_1D8B1DBA0);
LABEL_11:
      sub_1D8B14960();
      sub_1D87B2CEC(&unk_1ECA64F40, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v20 = sub_1D8B158C0();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_1D87A0E38(v13, v10, &qword_1ECA62F00, &qword_1D8B1DBA0);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_1D87B6E9C(v10, type metadata accessor for Lens_Status);
LABEL_7:
    sub_1D87A14E4(v13, &qword_1ECA62F18, &qword_1D8B1DBB8);
    goto LABEL_8;
  }

  sub_1D87B6E34(&v13[v18], v7, type metadata accessor for Lens_Status);
  v22 = sub_1D87B5B94(v10, v7);
  sub_1D87B6E9C(v7, type metadata accessor for Lens_Status);
  sub_1D87B6E9C(v10, type metadata accessor for Lens_Status);
  sub_1D87A14E4(v13, &qword_1ECA62F00, &qword_1D8B1DBA0);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t __swift_get_extra_inhabitant_index_127Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D8B14960();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_128Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D8B14960();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D87B7DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1D8B14960();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D87B7E58(uint64_t a1)
{
  sub_1D87A4514(319, &qword_1ECA62F78, type metadata accessor for Lens_Item, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D8B14960();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D87B7F34(uint64_t a1)
{
  sub_1D8B14960();
  if (v1 <= 0x3F)
  {
    sub_1D87A4514(319, &qword_1ECA629D8, type metadata accessor for Lens_ImageThumbnail, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_105Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D8B14960();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_106Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D8B14960();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1D87B8174(uint64_t a1)
{
  sub_1D87A4514(319, &qword_1ECA62FA0, type metadata accessor for Lens_SearchResult, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D8B14960();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D8B14960();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D8B14960();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1D87B83F0(uint64_t a1)
{
  sub_1D87A4514(319, &qword_1ECA62FC8, type metadata accessor for Lens_Object, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D8B14960();
    if (v2 <= 0x3F)
    {
      sub_1D87A4514(319, &qword_1ECA62FD0, type metadata accessor for Lens_Status, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D87B8514(uint64_t a1)
{
  sub_1D8B14960();
  if (v1 <= 0x3F)
  {
    sub_1D87A4514(319, &qword_1ECA629D8, type metadata accessor for Lens_ImageThumbnail, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D87B8600(uint64_t a1)
{
  sub_1D87A4514(319, &qword_1ECA62F78, type metadata accessor for Lens_Item, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D8B14960();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D87B86E4(uint64_t a1)
{
  sub_1D87A4514(319, &qword_1ECA63008, type metadata accessor for Lens_ProductAd, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D8B14960();
    if (v2 <= 0x3F)
    {
      sub_1D87A4514(319, &qword_1ECA63010, type metadata accessor for Lens_AdDisclosureData, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D87B8810(uint64_t a1)
{
  sub_1D87A4514(319, &qword_1ECA63028, type metadata accessor for Lens_RelatedSearch, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D87A4514(319, &qword_1ECA63030, type metadata accessor for Lens_Answer, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1D87A4514(319, &qword_1ECA63038, type metadata accessor for Lens_AdBlock, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1D8B14960();
        if (v4 <= 0x3F)
        {
          sub_1D87A4514(319, &qword_1ECA63040, type metadata accessor for Lens_ExploreGrid, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1D87A4514(319, &qword_1ECA63048, type metadata accessor for Lens_ExactMatch, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1D87A4514(319, &qword_1ECA63050, type metadata accessor for Lens_LlmAnswer, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D87B8A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1D8B14960();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D87B8B04(uint64_t a1)
{
  sub_1D8B14960();
  if (v1 <= 0x3F)
  {
    sub_1D87A4514(319, &qword_1ECA63078, type metadata accessor for Lens_NormalizedBox, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D87A4514(319, &qword_1ECA63080, type metadata accessor for Lens_Result, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D87A4514(319, &qword_1ECA62FD0, type metadata accessor for Lens_Status, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_114Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8B14960();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_115Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8B14960();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D87B8E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1D8B14960();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D87B8E9C()
{
  result = qword_1ECA63098;
  if (!qword_1ECA63098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63098);
  }

  return result;
}

unint64_t sub_1D87B8EF4()
{
  result = qword_1ECA630A0;
  if (!qword_1ECA630A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA630A0);
  }

  return result;
}

unint64_t sub_1D87B8F4C()
{
  result = qword_1ECA630A8;
  if (!qword_1ECA630A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA630A8);
  }

  return result;
}

uint64_t sub_1D87B9000@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Lens_ImageThumbnail(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  sub_1D8B12FD0();
  v12 = sub_1D8B13000();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) != 1)
  {
    v9 = v11;
    return (*(v13 + 32))(a1, v9, v12);
  }

  sub_1D87A14E4(v11, &qword_1ECA630C0, &qword_1D8B24530);
  if (qword_1EE0E4538 != -1)
  {
    swift_once();
  }

  v15 = sub_1D8B151E0();
  __swift_project_value_buffer(v15, qword_1EE0E4540);
  sub_1D87C123C(v1, v5, type metadata accessor for Lens_ImageThumbnail);
  v16 = sub_1D8B151C0();
  v17 = sub_1D8B16210();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = a1;
    v28 = v19;
    v20 = v19;
    *v18 = 136315138;
    v25 = *v5;
    v26 = v14;
    v21 = v5[1];

    sub_1D87C11DC(v5, type metadata accessor for Lens_ImageThumbnail);
    v22 = sub_1D89AC714(v25, v21, &v28);
    v14 = v26;

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1D8783000, v16, v17, "Could not create thumbnail image URL from %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v23 = v20;
    a1 = v27;
    MEMORY[0x1DA721330](v23, -1, -1);
    MEMORY[0x1DA721330](v18, -1, -1);
  }

  else
  {

    sub_1D87C11DC(v5, type metadata accessor for Lens_ImageThumbnail);
  }

  sub_1D8B12FD0();
  result = (v14)(v9, 1, v12);
  if (result != 1)
  {
    return (*(v13 + 32))(a1, v9, v12);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D87B936C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(v1 + 16) == *(v1 + 24))
    {
      return 0;
    }
  }

  else if (v3)
  {
    if (v1 == v1 >> 32)
    {
      return 0;
    }
  }

  else if ((v2 & 0xFF000000000000) == 0)
  {
    return 0;
  }

  sub_1D87A1544(v1, v2);
  return v1;
}

uint64_t sub_1D87B941C@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DF0, &qword_1D8B1DB00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Lens_ImageThumbnail(0);
  a1[3] = v6;
  a1[4] = &off_1F5429ED8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(v1 + *(type metadata accessor for Lens_Item(0) + 20));
  v9 = OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__imageThumbnail;
  swift_beginAccess();
  sub_1D87A0E38(v8 + v9, v5, &qword_1ECA62DF0, &qword_1D8B1DB00);
  v10 = *(*(v6 - 8) + 48);
  if (v10(v5, 1, v6) != 1)
  {
    return sub_1D87C1544(v5, boxed_opaque_existential_1, type metadata accessor for Lens_ImageThumbnail);
  }

  *boxed_opaque_existential_1 = 0;
  boxed_opaque_existential_1[1] = 0xE000000000000000;
  *(boxed_opaque_existential_1 + 1) = xmmword_1D8B1ABB0;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = 0xE000000000000000;
  boxed_opaque_existential_1[6] = 0;
  boxed_opaque_existential_1[7] = 0;
  boxed_opaque_existential_1[8] = 0xE000000000000000;
  sub_1D8B14950();
  result = (v10)(v5, 1, v6);
  if (result != 1)
  {
    return sub_1D87A14E4(v5, &qword_1ECA62DF0, &qword_1D8B1DB00);
  }

  return result;
}

uint64_t sub_1D87B95D8()
{
  v1 = (*(v0 + *(type metadata accessor for Lens_Item(0) + 20)) + OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__faviconBytes);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      return 0;
    }
  }

  else if (v4)
  {
    if (v2 == v2 >> 32)
    {
      return 0;
    }
  }

  else if ((v3 & 0xFF000000000000) == 0)
  {
    return 0;
  }

  sub_1D87A1544(v2, v3);
  return v2;
}

uint64_t sub_1D87B9690@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DE8, &unk_1D8B1E030);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *(v1 + *(type metadata accessor for Lens_Item(0) + 20));
  v10 = OBJC_IVAR____TtCV22VisualIntelligenceCore9Lens_ItemP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__shoppableBadge;
  swift_beginAccess();
  sub_1D87A0E38(v9 + v10, v8, &qword_1ECA62DE8, &unk_1D8B1E030);
  v11 = type metadata accessor for Lens_ShoppableBadge(0);
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v8, 1, v11);
  result = sub_1D87A14E4(v8, &qword_1ECA62DE8, &unk_1D8B1E030);
  if (v13 == 1)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v11;
    *(a1 + 32) = &off_1F5429CC8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    sub_1D87A0E38(v9 + v10, v6, &qword_1ECA62DE8, &unk_1D8B1E030);
    if (v12(v6, 1, v11) == 1)
    {
      *boxed_opaque_existential_1 = 0;
      boxed_opaque_existential_1[1] = 0xE000000000000000;
      boxed_opaque_existential_1[2] = 0;
      boxed_opaque_existential_1[3] = 0xE000000000000000;
      boxed_opaque_existential_1[4] = 0;
      boxed_opaque_existential_1[5] = 0;
      boxed_opaque_existential_1[6] = 0xE000000000000000;
      sub_1D8B14950();
      result = v12(v6, 1, v11);
      if (result != 1)
      {
        return sub_1D87A14E4(v6, &qword_1ECA62DE8, &unk_1D8B1E030);
      }
    }

    else
    {
      return sub_1D87C1544(v6, boxed_opaque_existential_1, type metadata accessor for Lens_ShoppableBadge);
    }
  }

  return result;
}

uint64_t sub_1D87B98F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*(v3 + *(a1 + 20)) + *a3);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_1D87B9960(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  sub_1D8B12FD0();
}

uint64_t sub_1D87B99E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62DF0, &qword_1D8B1DB00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Lens_ImageThumbnail(0);
  a1[3] = v6;
  a1[4] = &off_1F5429ED8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = type metadata accessor for Lens_RelatedSearch(0);
  sub_1D87A0E38(v1 + *(v8 + 28), v5, &qword_1ECA62DF0, &qword_1D8B1DB00);
  v9 = *(*(v6 - 8) + 48);
  if (v9(v5, 1, v6) != 1)
  {
    return sub_1D87C1544(v5, boxed_opaque_existential_1, type metadata accessor for Lens_ImageThumbnail);
  }

  *boxed_opaque_existential_1 = 0;
  boxed_opaque_existential_1[1] = 0xE000000000000000;
  *(boxed_opaque_existential_1 + 1) = xmmword_1D8B1ABB0;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = 0xE000000000000000;
  boxed_opaque_existential_1[6] = 0;
  boxed_opaque_existential_1[7] = 0;
  boxed_opaque_existential_1[8] = 0xE000000000000000;
  sub_1D8B14950();
  result = (v9)(v5, 1, v6);
  if (result != 1)
  {
    return sub_1D87A14E4(v5, &qword_1ECA62DF0, &qword_1D8B1DB00);
  }

  return result;
}

uint64_t sub_1D87B9B74(uint64_t a1, uint64_t a2)
{
  sub_1D87C1140(&qword_1ECA62CA8, type metadata accessor for Lens_RelatedSearch, &unk_1D8B1CFEC);

  return sub_1D8B14AC0();
}

uint64_t sub_1D87B9BF0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1D87B9C08(uint64_t a1)
{
  v2 = type metadata accessor for Lens_Item(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D87F3D64(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1D87C123C(v8, v5, type metadata accessor for Lens_Item);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D87F3D64((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_1F5429E88;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1D87C123C(v5, boxed_opaque_existential_1, type metadata accessor for Lens_Item);
      *(v7 + 16) = v11 + 1;
      sub_1D8788F40(&v14, v7 + 40 * v11 + 32);
      sub_1D87C11DC(v5, type metadata accessor for Lens_Item);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D87B9DD8(uint64_t a1)
{
  v2 = type metadata accessor for Lens_RelatedSearch(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D87F3E1C(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1D87C123C(v8, v5, type metadata accessor for Lens_RelatedSearch);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D87F3E1C((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_1F5429E60;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1D87C123C(v5, boxed_opaque_existential_1, type metadata accessor for Lens_RelatedSearch);
      *(v7 + 16) = v11 + 1;
      sub_1D8788F40(&v14, v7 + 40 * v11 + 32);
      sub_1D87C11DC(v5, type metadata accessor for Lens_RelatedSearch);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D87B9FA8(uint64_t a1)
{
  v2 = type metadata accessor for Lens_Object(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D87F3E5C(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1D87C123C(v8, v5, type metadata accessor for Lens_Object);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D87F3E5C((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_1F5429CE8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1D87C123C(v5, boxed_opaque_existential_1, type metadata accessor for Lens_Object);
      *(v7 + 16) = v11 + 1;
      sub_1D8788F40(&v14, v7 + 40 * v11 + 32);
      sub_1D87C11DC(v5, type metadata accessor for Lens_Object);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D87BA178(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D87F4B3C(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630D0, &qword_1D8B1E048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630D8, &qword_1D8B1E050);
      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D87F4B3C((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 24 * v6;
      *(v7 + 32) = v9;
      v4 += 24;
      *(v7 + 40) = v10;
      *(v7 + 48) = v11;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D87BA2C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D87F4B9C(0, v1, 0);
    v4 = a1 + 32;
    v2 = v13;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630E0, &qword_1D8B1E058);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630E8, &qword_1D8B1E060);
      swift_dynamicCast();
      v6 = *(v13 + 16);
      v5 = *(v13 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D87F4B9C((v5 > 1), v6 + 1, 1);
      }

      *(v13 + 16) = v6 + 1;
      v7 = (v13 + (v6 << 6));
      v7[4] = v11;
      v7[5] = v12;
      v7[2] = v9;
      v7[3] = v10;
      v4 += 64;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D87BA414(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12[-v4];
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D87F49CC(0, v6, 0);
    v7 = v13;
    v8 = a1 + 32;
    do
    {
      sub_1D87C1470(v8, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
      swift_dynamicCast();
      v13 = v7;
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D87F49CC((v9 > 1), v10 + 1, 1);
        v7 = v13;
      }

      *(v7 + 16) = v10 + 1;
      sub_1D87C14D4(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10);
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D87BA638(uint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), uint64_t (*a4)(void))
{
  v7 = a2(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v20 = MEMORY[0x1E69E7CC0];
    v18 = a3;
    a3(0, v11, 0);
    v12 = v20;
    v13 = a1 + 32;
    do
    {
      sub_1D87C1470(v13, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
      swift_dynamicCast();
      v20 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        v18(v14 > 1, v15 + 1, 1);
        v12 = v20;
      }

      *(v12 + 16) = v15 + 1;
      sub_1D87C1544(v10, v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, a4);
      v13 += 40;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_1D87BA894@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62A60, &qword_1D8B1E040);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = *(type metadata accessor for Lens_PriceInfo(0) + 32);
  v16 = v1;
  sub_1D87A0E38(v1 + v9, v8, &qword_1ECA62A60, &qword_1D8B1E040);
  v10 = type metadata accessor for Lens_PriceInfo.SaleInfo(0);
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v8, 1, v10);
  result = sub_1D87A14E4(v8, &qword_1ECA62A60, &qword_1D8B1E040);
  if (v12 == 1)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v10;
    *(a1 + 32) = &off_1F5429DE8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    sub_1D87A0E38(v16 + v9, v6, &qword_1ECA62A60, &qword_1D8B1E040);
    if (v11(v6, 1, v10) == 1)
    {
      *boxed_opaque_existential_1 = 0;
      boxed_opaque_existential_1[1] = 0xE000000000000000;
      boxed_opaque_existential_1[2] = 0;
      boxed_opaque_existential_1[3] = 0xE000000000000000;
      sub_1D8B14950();
      result = v11(v6, 1, v10);
      if (result != 1)
      {
        return sub_1D87A14E4(v6, &qword_1ECA62A60, &qword_1D8B1E040);
      }
    }

    else
    {
      return sub_1D87C1544(v6, boxed_opaque_existential_1, type metadata accessor for Lens_PriceInfo.SaleInfo);
    }
  }

  return result;
}

uint64_t sub_1D87BAAB4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  return v1;
}

uint64_t sub_1D87BAB08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  return v1;
}

uint64_t sub_1D87BAB7C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  return v1;
}

uint64_t sub_1D87BABCC()
{
  v1 = (*(v0 + *(type metadata accessor for Lens_ProductAd(0) + 20)) + OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__condition);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  return v2;
}

uint64_t sub_1D87BAC54@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E88, &qword_1D8B1DB38);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Lens_ProductImage(0);
  a1[3] = v6;
  a1[4] = &off_1F5429E28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(v1 + *(type metadata accessor for Lens_ProductAd(0) + 20));
  v9 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__productImage;
  swift_beginAccess();
  sub_1D87A0E38(v8 + v9, v5, &qword_1ECA62E88, &qword_1D8B1DB38);
  v10 = *(*(v6 - 8) + 48);
  if (v10(v5, 1, v6) != 1)
  {
    return sub_1D87C1544(v5, boxed_opaque_existential_1, type metadata accessor for Lens_ProductImage);
  }

  *boxed_opaque_existential_1 = 0;
  boxed_opaque_existential_1[1] = 0xE000000000000000;
  boxed_opaque_existential_1[2] = 0;
  sub_1D8B14950();
  result = (v10)(v5, 1, v6);
  if (result != 1)
  {
    return sub_1D87A14E4(v5, &qword_1ECA62E88, &qword_1D8B1DB38);
  }

  return result;
}

uint64_t sub_1D87BADFC@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E80, &qword_1D8B1DB30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Lens_PriceInfo(0);
  a1[3] = v6;
  a1[4] = &off_1F5429E00;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(v1 + *(type metadata accessor for Lens_ProductAd(0) + 20));
  v9 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__priceInfo;
  swift_beginAccess();
  sub_1D87A0E38(v8 + v9, v5, &qword_1ECA62E80, &qword_1D8B1DB30);
  v10 = *(*(v6 - 8) + 48);
  if (v10(v5, 1, v6) != 1)
  {
    return sub_1D87C1544(v5, boxed_opaque_existential_1, type metadata accessor for Lens_PriceInfo);
  }

  *boxed_opaque_existential_1 = 0;
  boxed_opaque_existential_1[1] = 0xE000000000000000;
  boxed_opaque_existential_1[2] = 0;
  boxed_opaque_existential_1[3] = 0xE000000000000000;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = 0xE000000000000000;
  sub_1D8B14950();
  v11 = *(v6 + 32);
  v12 = type metadata accessor for Lens_PriceInfo.SaleInfo(0);
  (*(*(v12 - 8) + 56))(boxed_opaque_existential_1 + v11, 1, 1, v12);
  result = (v10)(v5, 1, v6);
  if (result != 1)
  {
    return sub_1D87A14E4(v5, &qword_1ECA62E80, &qword_1D8B1DB30);
  }

  return result;
}

uint64_t sub_1D87BAFEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62E78, &qword_1D8B1DB28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Lens_ProductRating(0);
  a1[3] = v6;
  a1[4] = &off_1F5429DC8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(v1 + *(type metadata accessor for Lens_ProductAd(0) + 20));
  v9 = OBJC_IVAR____TtCV22VisualIntelligenceCore14Lens_ProductAdP33_76CE48976919464F8498DDC3FEF7E46313_StorageClass__rating;
  swift_beginAccess();
  sub_1D87A0E38(v8 + v9, v5, &qword_1ECA62E78, &qword_1D8B1DB28);
  v10 = *(*(v6 - 8) + 48);
  if (v10(v5, 1, v6) != 1)
  {
    return sub_1D87C1544(v5, boxed_opaque_existential_1, type metadata accessor for Lens_ProductRating);
  }

  *boxed_opaque_existential_1 = 0;
  boxed_opaque_existential_1[1] = 0;
  boxed_opaque_existential_1[2] = 0xE000000000000000;
  sub_1D8B14950();
  result = (v10)(v5, 1, v6);
  if (result != 1)
  {
    return sub_1D87A14E4(v5, &qword_1ECA62E78, &qword_1D8B1DB28);
  }

  return result;
}

uint64_t sub_1D87BB194(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));
  swift_beginAccess();
  v3 = *(v2 + 32);

  return v3;
}

uint64_t sub_1D87BB1E8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));
  swift_beginAccess();
  v3 = *(v2 + 48);

  return v3;
}

uint64_t sub_1D87BB244@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  swift_beginAccess();

  sub_1D8B12FD0();

  v6 = sub_1D8B13000();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a2, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D87BB388@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + *(a1 + 20));
  swift_beginAccess();
  v5 = *(v4 + 40);
  *a2 = *(v4 + 32);
  a2[1] = v5;
}

uint64_t sub_1D87BB3D8()
{
  v1 = type metadata accessor for Lens_ProductAd(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageSearchProductAd(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v9 = *(*v0 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D87F3DA4(0, v9, 0);
    v10 = v20;
    v11 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_1D87C123C(v11, v4, type metadata accessor for Lens_ProductAd);
      sub_1D87C123C(v4, v7, type metadata accessor for Lens_ProductAd);
      sub_1D87C11DC(v4, type metadata accessor for Lens_ProductAd);
      v20 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D87F3DA4((v13 > 1), v14 + 1, 1);
        v10 = v20;
      }

      v18 = v5;
      v19 = sub_1D87C1140(&qword_1ECA630C8, type metadata accessor for ImageSearchProductAd, &unk_1D8B1F560);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
      sub_1D87C123C(v7, boxed_opaque_existential_1, type metadata accessor for ImageSearchProductAd);
      *(v10 + 16) = v14 + 1;
      sub_1D8788F40(&v17, v10 + 40 * v14 + 32);
      sub_1D87C11DC(v7, type metadata accessor for ImageSearchProductAd);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_1D87BB64C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = type metadata accessor for Lens_AdDisclosureData(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62EB8, &qword_1D8B1DB60);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = *(type metadata accessor for Lens_AdBlock(0) + 28);
  v17 = v1;
  sub_1D87A0E38(v1 + v12, v11, &qword_1ECA62EB8, &qword_1D8B1DB60);
  v13 = *(v3 + 48);
  v14 = v13(v11, 1, v2);
  sub_1D87A14E4(v11, &qword_1ECA62EB8, &qword_1D8B1DB60);
  if (v14 == 1)
  {
    v15 = sub_1D8B13000();
    return (*(*(v15 - 8) + 56))(v18, 1, 1, v15);
  }

  else
  {
    sub_1D87A0E38(v17 + v12, v9, &qword_1ECA62EB8, &qword_1D8B1DB60);
    if (v13(v9, 1, v2) == 1)
    {
      *v5 = 0;
      v5[1] = 0xE000000000000000;
      v5[2] = 0;
      v5[3] = 0xE000000000000000;
      sub_1D8B14950();
      if (v13(v9, 1, v2) != 1)
      {
        sub_1D87A14E4(v9, &qword_1ECA62EB8, &qword_1D8B1DB60);
      }
    }

    else
    {
      sub_1D87C1544(v9, v5, type metadata accessor for Lens_AdDisclosureData);
    }

    sub_1D87C11DC(v5, type metadata accessor for Lens_AdDisclosureData);
    sub_1D8B12FD0();
  }
}

uint64_t sub_1D87BB924()
{
  v1 = type metadata accessor for Lens_AdDisclosureData(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62EB8, &qword_1D8B1DB60);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = *(type metadata accessor for Lens_AdBlock(0) + 28);
  v18 = v0;
  v12 = v0 + v11;
  v13 = v1;
  sub_1D87A0E38(v12, v10, &qword_1ECA62EB8, &qword_1D8B1DB60);
  v14 = *(v2 + 48);
  LODWORD(v1) = v14(v10, 1, v1);
  sub_1D87A14E4(v10, &qword_1ECA62EB8, &qword_1D8B1DB60);
  v15 = 0;
  if (v1 != 1)
  {
    sub_1D87A0E38(v18 + v11, v8, &qword_1ECA62EB8, &qword_1D8B1DB60);
    if (v14(v8, 1, v13) == 1)
    {
      *v4 = 0;
      v4[1] = 0xE000000000000000;
      v4[2] = 0;
      v4[3] = 0xE000000000000000;
      sub_1D8B14950();
      if (v14(v8, 1, v13) != 1)
      {
        sub_1D87A14E4(v8, &qword_1ECA62EB8, &qword_1D8B1DB60);
      }
    }

    else
    {
      sub_1D87C1544(v8, v4, type metadata accessor for Lens_AdDisclosureData);
    }

    v15 = v4[2];

    sub_1D87C11DC(v4, type metadata accessor for Lens_AdDisclosureData);
  }

  return v15;
}

uint64_t sub_1D87BBBB8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D87F3DE4(0, v2, 0);
    v3 = v18;
    v4 = type metadata accessor for Lens_AdBlock(0);
    v5 = 0;
    v6 = *(v4 - 8);
    v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    do
    {
      *(&v16 + 1) = v4;
      v17 = &off_1F5429D48;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_1D87C123C(v7 + *(v6 + 72) * v5, boxed_opaque_existential_1, type metadata accessor for Lens_AdBlock);
      v18 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D87F3DE4((v9 > 1), v10 + 1, 1);
        v3 = v18;
      }

      ++v5;
      *(v3 + 16) = v10 + 1;
      v11 = v3 + 40 * v10;
      v12 = v15;
      v13 = v16;
      *(v11 + 64) = v17;
      *(v11 + 32) = v12;
      *(v11 + 48) = v13;
    }

    while (v2 != v5);
  }

  return v3;
}

uint64_t sub_1D87BBD10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62ED8, &qword_1D8B1DB80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Lens_ExploreGrid(0);
  a2[3] = v8;
  a2[4] = &off_1F5429E48;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1D87A0E38(v2 + *(a1 + 32), v7, &qword_1ECA62ED8, &qword_1D8B1DB80);
  v10 = *(*(v8 - 8) + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return sub_1D87C1544(v7, boxed_opaque_existential_1, type metadata accessor for Lens_ExploreGrid);
  }

  *boxed_opaque_existential_1 = MEMORY[0x1E69E7CC0];
  *(boxed_opaque_existential_1 + 8) = 0;
  sub_1D8B14950();
  result = (v10)(v7, 1, v8);
  if (result != 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62ED8, &qword_1D8B1DB80);
  }

  return result;
}

void sub_1D87BBEA0(_BYTE *a1@<X8>)
{
  if (v1[8] == 1)
  {
    *a1 = 0x504030200uLL >> (8 * *v1);
  }

  else
  {
    *a1 = 3;
  }
}

double sub_1D87BBF1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F10, &qword_1D8B1DBB0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v33 = &v33 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  v11 = type metadata accessor for Lens_NormalizedBox(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v34 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v33 - v16);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v33 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v33 - v21);
  v23 = *(type metadata accessor for Lens_Object(0) + 24);
  v35 = v0;
  sub_1D87A0E38(v0 + v23, v10, &qword_1ECA62F10, &qword_1D8B1DBB0);
  v24 = *(v12 + 48);
  if (v24(v10, 1, v11) == 1)
  {
    *v22 = 0;
    *(v22 + 1) = 0;
    sub_1D8B14950();
    if (v24(v10, 1, v11) != 1)
    {
      sub_1D87A14E4(v10, &qword_1ECA62F10, &qword_1D8B1DBB0);
    }
  }

  else
  {
    sub_1D87C1544(v10, v22, type metadata accessor for Lens_NormalizedBox);
  }

  v25 = *v22;
  sub_1D87C11DC(v22, type metadata accessor for Lens_NormalizedBox);
  v26 = v35;
  sub_1D87A0E38(v35 + v23, v8, &qword_1ECA62F10, &qword_1D8B1DBB0);
  if (v24(v8, 1, v11) == 1)
  {
    *v20 = 0;
    v20[1] = 0;
    sub_1D8B14950();
    if (v24(v8, 1, v11) != 1)
    {
      sub_1D87A14E4(v8, &qword_1ECA62F10, &qword_1D8B1DBB0);
    }
  }

  else
  {
    sub_1D87C1544(v8, v20, type metadata accessor for Lens_NormalizedBox);
  }

  sub_1D87C11DC(v20, type metadata accessor for Lens_NormalizedBox);
  v27 = v33;
  sub_1D87A0E38(v26 + v23, v33, &qword_1ECA62F10, &qword_1D8B1DBB0);
  if (v24(v27, 1, v11) == 1)
  {
    *v17 = 0;
    *(v17 + 1) = 0;
    sub_1D8B14950();
    if (v24(v27, 1, v11) != 1)
    {
      sub_1D87A14E4(v27, &qword_1ECA62F10, &qword_1D8B1DBB0);
    }
  }

  else
  {
    sub_1D87C1544(v27, v17, type metadata accessor for Lens_NormalizedBox);
  }

  v28 = v17[2];
  sub_1D87C11DC(v17, type metadata accessor for Lens_NormalizedBox);
  v29 = v26 + v23;
  v30 = v36;
  sub_1D87A0E38(v29, v36, &qword_1ECA62F10, &qword_1D8B1DBB0);
  if (v24(v30, 1, v11) == 1)
  {
    v31 = v34;
    *v34 = 0;
    v31[1] = 0;
    sub_1D8B14950();
    if (v24(v30, 1, v11) != 1)
    {
      sub_1D87A14E4(v30, &qword_1ECA62F10, &qword_1D8B1DBB0);
    }
  }

  else
  {
    v31 = v34;
    sub_1D87C1544(v30, v34, type metadata accessor for Lens_NormalizedBox);
  }

  sub_1D87C11DC(v31, type metadata accessor for Lens_NormalizedBox);
  return v25 - v28 * 0.5;
}

uint64_t sub_1D87BC474@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F08, &qword_1D8B1DBA8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - v9;
  v11 = *(type metadata accessor for Lens_Object(0) + 28);
  sub_1D87A0E38(v1 + v11, v8, &qword_1ECA62F08, &qword_1D8B1DBA8);
  v12 = type metadata accessor for Lens_Result(0);
  v13 = *(v12 - 1);
  v14 = *(v13 + 48);
  v15 = v14(v8, 1, v12);
  sub_1D87A14E4(v8, &qword_1ECA62F08, &qword_1D8B1DBA8);
  if (v15 == 1)
  {
    (*(v13 + 56))(v10, 1, 1, v12);
    result = sub_1D87A14E4(v10, &qword_1ECA62F08, &qword_1D8B1DBA8);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    v17 = v1 + v11;
    v18 = v28;
    sub_1D87A0E38(v17, v28, &qword_1ECA62F08, &qword_1D8B1DBA8);
    if (v14(v18, 1, v12) == 1)
    {
      v19 = MEMORY[0x1E69E7CC0];
      *v10 = MEMORY[0x1E69E7CC0];
      *(v10 + 1) = v19;
      *(v10 + 2) = v19;
      sub_1D8B14950();
      v20 = v12[8];
      v21 = type metadata accessor for Lens_ExploreGrid(0);
      (*(*(v21 - 8) + 56))(&v10[v20], 1, 1, v21);
      v22 = v12[9];
      v23 = type metadata accessor for Lens_ExactMatch(0);
      (*(*(v23 - 8) + 56))(&v10[v22], 1, 1, v23);
      v24 = v12[10];
      v25 = type metadata accessor for Lens_LlmAnswer(0);
      (*(*(v25 - 8) + 56))(&v10[v24], 1, 1, v25);
      if (v14(v18, 1, v12) != 1)
      {
        sub_1D87A14E4(v18, &qword_1ECA62F08, &qword_1D8B1DBA8);
      }
    }

    else
    {
      sub_1D87C1544(v18, v10, type metadata accessor for Lens_Result);
    }

    (*(v13 + 56))(v10, 0, 1, v12);
    *(a1 + 24) = v12;
    *(a1 + 32) = &off_1F5429D28;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_1D87C1544(v10, boxed_opaque_existential_1, type metadata accessor for Lens_Result);
  }

  return result;
}

uint64_t sub_1D87BC81C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F00, &qword_1D8B1DBA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Lens_Status(0);
  a2[3] = v8;
  a2[4] = &off_1F5429D10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1D87A0E38(v2 + *(a1 + 32), v7, &qword_1ECA62F00, &qword_1D8B1DBA0);
  v10 = *(*(v8 - 8) + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return sub_1D87C1544(v7, boxed_opaque_existential_1, type metadata accessor for Lens_Status);
  }

  *boxed_opaque_existential_1 = 0;
  *(boxed_opaque_existential_1 + 8) = 1;
  boxed_opaque_existential_1[2] = 0;
  boxed_opaque_existential_1[3] = 0xE000000000000000;
  sub_1D8B14950();
  result = (v10)(v7, 1, v8);
  if (result != 1)
  {
    return sub_1D87A14E4(v7, &qword_1ECA62F00, &qword_1D8B1DBA0);
  }

  return result;
}

uint64_t sub_1D87BC9A4()
{
  sub_1D8B134E0();
  v0[36] = swift_task_alloc();
  v1 = sub_1D8B13500();
  v0[37] = v1;
  v0[38] = *(v1 - 8);
  v0[39] = swift_task_alloc();
  v2 = sub_1D8B159C0();
  v0[40] = v2;
  v0[41] = *(v2 - 8);
  v0[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D87BCAE8, 0, 0);
}

uint64_t sub_1D87BCAE8()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  sub_1D8B159B0();
  v4 = sub_1D8B15980();
  v6 = v5;
  v0[43] = v4;
  v0[44] = v5;
  (*(v2 + 8))(v1, v3);
  if (v6 >> 60 == 15)
  {
    if (qword_1EE0E4538 != -1)
    {
      swift_once();
    }

    v7 = sub_1D8B151E0();
    __swift_project_value_buffer(v7, qword_1EE0E4540);
    v8 = sub_1D8B151C0();
    v9 = sub_1D8B16210();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D8783000, v8, v9, "Failed to generate nonce input data", v10, 2u);
      MEMORY[0x1DA721330](v10, -1, -1);
    }

    v12 = v0[38];
    v11 = v0[39];
    v13 = v0[37];

    sub_1D8B134D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630F0, &qword_1D8B1E080);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D8B1AB90;
    *(inited + 32) = 0x6E656B6F74;
    v15 = inited + 32;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0xD000000000000016;
    *(inited + 56) = 0x80000001D8B41360;
    sub_1D893CABC(inited);
    swift_setDeallocating();
    sub_1D87A14E4(v15, &qword_1ECA630F8, &unk_1D8B1E088);
    sub_1D87C1140(&qword_1ECA63100, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    sub_1D8B12EA0();
    sub_1D8B134F0();
    (*(v12 + 8))(v11, v13);
    swift_willThrow();
    goto LABEL_7;
  }

  v18 = sub_1D8B15D60();
  *(v18 + 16) = 32;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  v19 = sub_1D8B13030();
  v20 = [v19 bytes];
  v21 = v19;
  v29 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v29 != 2)
    {
      goto LABEL_22;
    }

    v31 = *(v4 + 16);
    v30 = *(v4 + 24);
    v22 = v30 - v31;
    if (!__OFSUB__(v30, v31))
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  else if (!v29)
  {
    LODWORD(v22) = BYTE6(v6);
    goto LABEL_23;
  }

  if (__OFSUB__(HIDWORD(v4), v4))
  {
LABEL_29:
    __break(1u);
    return MEMORY[0x1EEE6DE38](v21, v22, v23, v24, v25, v26, v27, v28);
  }

  v22 = HIDWORD(v4) - v4;
LABEL_19:
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (!HIDWORD(v22))
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_22:
  LODWORD(v22) = 0;
LABEL_23:
  CC_SHA256(v20, v22, (v18 + 32));
  v32 = sub_1D87C1090(v18);
  v34 = v33;

  v0[45] = v32;
  v0[46] = v34;
  v35 = objc_allocWithZone(MEMORY[0x1E69B37C0]);
  v36 = sub_1D8B15940();
  v37 = sub_1D8B13030();
  v38 = sub_1D8B15CD0();
  v39 = [v35 initRSABlindSignatureChallengeWithIssuerName:v36 redemptionNonce:v37 originNames:v38];
  v0[47] = v39;

  v40 = [v39 challengeData];
  if (v40)
  {
    v41 = v40;
    v42 = sub_1D8B13050();
    v44 = v43;

    v0[48] = v42;
    v0[49] = v44;
    v45 = objc_allocWithZone(MEMORY[0x1E69B37C8]);
    sub_1D87A1544(v42, v44);
    v46 = sub_1D8B13030();
    v47 = [v45 initForKnownIssuerWithChallenge_];
    v0[50] = v47;

    sub_1D87A1598(v42, v44);
    [v47 setSystemClient_];
    v48 = swift_task_alloc();
    v0[51] = v48;
    *(v48 + 16) = v47;
    v49 = swift_task_alloc();
    v0[52] = v49;
    *v49 = v0;
    v49[1] = sub_1D87BD1EC;
    v28 = MEMORY[0x1E6969080];
    v26 = sub_1D87C12B8;
    v21 = v0 + 22;
    v24 = 0xD00000000000001FLL;
    v25 = 0x80000001D8B413D0;
    v22 = 0;
    v23 = 0;
    v27 = v48;

    return MEMORY[0x1EEE6DE38](v21, v22, v23, v24, v25, v26, v27, v28);
  }

  v53 = v0[39];
  v54 = v0[38];
  v50 = v0[37];
  sub_1D8B134D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630F0, &qword_1D8B1E080);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1D8B1AB90;
  *(v51 + 32) = 0x65736E6F70736572;
  v52 = v51 + 32;
  *(v51 + 72) = MEMORY[0x1E69E6158];
  *(v51 + 40) = 0xE800000000000000;
  *(v51 + 48) = 0xD000000000000028;
  *(v51 + 56) = 0x80000001D8B413A0;
  sub_1D893CABC(v51);
  swift_setDeallocating();
  sub_1D87A14E4(v52, &qword_1ECA630F8, &unk_1D8B1E088);
  sub_1D87C1140(&qword_1ECA63100, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
  sub_1D8B12EA0();
  sub_1D8B134F0();
  (*(v54 + 8))(v53, v50);
  swift_willThrow();
  sub_1D87C12A4(v4, v6);
  sub_1D87A1598(v32, v34);

LABEL_7:

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D87BD1EC()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_1D87BD558;
  }

  else
  {

    v2 = sub_1D87BD308;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D87BD308()
{
  v17 = v0[49];
  v18 = v0[50];
  v15 = v0[46];
  v16 = v0[48];
  v14 = v0[45];
  v12 = v0[43];
  v13 = v0[44];
  v19 = v0[47];
  v1 = v0[22];
  v2 = v0[23];
  v0[24] = sub_1D8B13040();
  v0[25] = v3;
  v0[26] = 43;
  v0[27] = 0xE100000000000000;
  v0[28] = 45;
  v0[29] = 0xE100000000000000;
  sub_1D87C12C0();
  v4 = sub_1D8B164D0();
  v6 = v5;

  v0[30] = v4;
  v0[31] = v6;
  v0[32] = 47;
  v0[33] = 0xE100000000000000;
  v0[34] = 95;
  v0[35] = 0xE100000000000000;
  v7 = sub_1D8B164D0();
  v9 = v8;

  sub_1D8B16720();

  MEMORY[0x1DA71EFA0](v7, v9);

  MEMORY[0x1DA71EFA0](34, 0xE100000000000000);
  sub_1D87C12A4(v12, v13);
  sub_1D87A1598(v14, v15);
  sub_1D87A1598(v16, v17);

  sub_1D87A1598(v1, v2);

  v10 = v0[1];

  return v10(0xD000000000000014, 0x80000001D8B413F0);
}

uint64_t sub_1D87BD558()
{
  v1 = v0[50];
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[46];
  v5 = v0[47];
  v6 = v0[45];
  sub_1D87C12A4(v0[43], v0[44]);
  sub_1D87A1598(v6, v4);
  sub_1D87A1598(v3, v2);

  v7 = v0[1];

  return v7();
}

void sub_1D87BD62C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63120, &qword_1D8B1E0A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = sub_1D8B155C0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87C1314();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7F88], v8);
  v12 = sub_1D8B16300();
  (*(v9 + 8))(v11, v8);
  (*(v5 + 16))(v7, a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, v7, v4);
  aBlock[4] = sub_1D87C1360;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D87BDA84;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  [a2 fetchTokenWithQueue:v12 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_1D87BD8BC(uint64_t result, unint64_t a2, id a3)
{
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v4 = a3;
      if (qword_1EE0E4538 != -1)
      {
        swift_once();
      }

      v5 = sub_1D8B151E0();
      __swift_project_value_buffer(v5, qword_1EE0E4540);
      v6 = a3;
      v7 = sub_1D8B151C0();
      v8 = sub_1D8B16210();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        v11 = a3;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 4) = v12;
        *v10 = v12;
        _os_log_impl(&dword_1D8783000, v7, v8, "Failed to fetch private access token %@", v9, 0xCu);
        sub_1D87A14E4(v10, &qword_1ECA63128, &qword_1D8B1E0B0);
        MEMORY[0x1DA721330](v10, -1, -1);
        MEMORY[0x1DA721330](v9, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63120, &qword_1D8B1E0A8);
      return sub_1D8B15E10();
    }
  }

  else
  {
    sub_1D87A1544(result, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63120, &qword_1D8B1E0A8);
    return sub_1D8B15E20();
  }

  return result;
}

uint64_t sub_1D87BDA84(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_1D8B13050();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1D87C12A4(v4, v8);
}

void sub_1D87BDB30()
{
  v0 = [objc_opt_self() ephemeralSessionConfiguration];
  [v0 set:1 usesNWLoader:?];
  [v0 setAllowsCellularAccess_];
  [v0 setAllowsExpensiveNetworkAccess_];
  [v0 setWaitsForConnectivity_];
  v1 = [objc_opt_self() sessionWithConfiguration_];

  qword_1ECAA3658 = v1;
}

uint64_t sub_1D87BDBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 192) = a1;
  *(v4 + 200) = a2;
  sub_1D8B134E0();
  *(v4 + 208) = swift_task_alloc();
  v6 = sub_1D8B13500();
  *(v4 + 216) = v6;
  *(v4 + 224) = *(v6 - 8);
  *(v4 + 232) = swift_task_alloc();
  sub_1D8B159C0();
  *(v4 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62F00, &qword_1D8B1DBA0);
  *(v4 + 248) = swift_task_alloc();
  v7 = type metadata accessor for Lens_Status(0);
  *(v4 + 256) = v7;
  *(v4 + 264) = *(v7 - 8);
  *(v4 + 272) = swift_task_alloc();
  sub_1D8B14980();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = type metadata accessor for Lens_FetchVisualDataResponse(0);
  *(v4 + 296) = swift_task_alloc();
  v8 = sub_1D8B131D0();
  *(v4 + 304) = v8;
  *(v4 + 312) = *(v8 - 8);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  v9 = sub_1D8B12B60();
  *(v4 + 344) = v9;
  *(v4 + 352) = *(v9 - 8);
  *(v4 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA62860, &qword_1D8B1E070);
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = type metadata accessor for Lens_FetchVisualDataRequest(0);
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  v10 = type metadata accessor for Lens_RequestConfig(0);
  *(v4 + 416) = v10;
  *(v4 + 424) = *(v10 - 8);
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = type metadata accessor for Lens_Locale(0);
  *(v4 + 464) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  *(v4 + 472) = swift_task_alloc();
  v11 = sub_1D8B13000();
  *(v4 + 480) = v11;
  *(v4 + 488) = *(v11 - 8);
  *(v4 + 496) = swift_task_alloc();
  *(v4 + 504) = swift_task_alloc();
  v12 = sub_1D8B151E0();
  *(v4 + 512) = v12;
  *(v4 + 520) = *(v12 - 8);
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 161) = *a3;
  *(v4 + 536) = *(a3 + 8);
  *(v4 + 162) = *(a3 + 24);
  v13 = v3[1];
  *(v4 + 552) = *v3;
  *(v4 + 560) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D87BE128, 0, 0);
}

uint64_t sub_1D87BE128()
{
  if (qword_1EE0E4538 != -1)
  {
    swift_once();
  }

  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[64];
  v6 = __swift_project_value_buffer(v5, qword_1EE0E4540);
  (*(v4 + 16))(v3, v6, v5);
  v0[15] = v2;
  v0[16] = v1;
  v7 = swift_task_alloc();
  v0[71] = v7;
  *v7 = v0;
  v7[1] = sub_1D87BE240;

  return sub_1D87BC9A4();
}

uint64_t sub_1D87BE240(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[72] = a1;
  v4[73] = a2;
  v4[74] = v2;

  if (v2)
  {
    v5 = sub_1D87BFD78;
  }

  else
  {
    v5 = sub_1D87BE35C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D87BE35C()
{
  v89 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v3 = *(v0 + 472);
  sub_1D8B12FD0();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 528);
    v5 = *(v0 + 520);
    v6 = *(v0 + 512);
    v7 = *(v0 + 472);

    sub_1D87A14E4(v7, &qword_1ECA630C0, &qword_1D8B24530);
    (*(v5 + 8))(v4, v6);

    v8 = *(v0 + 8);
    v9 = MEMORY[0x1E69E7CC0];

    return v8(v9);
  }

  else
  {
    (*(*(v0 + 488) + 32))(*(v0 + 504), *(v0 + 472), *(v0 + 480));
    if (qword_1ECA620C8 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 592);
    v77 = *(v0 + 162);
    v75 = *(v0 + 536);
    v76 = *(v0 + 544);
    v12 = *(v0 + 161);
    v13 = *(v0 + 464);
    v14 = *(v0 + 448);
    v81 = *(v0 + 408);
    v83 = *(v0 + 400);
    v85 = *(v0 + 392);
    v79 = *(v0 + 200);
    v78 = *(v0 + 192);
    v16 = qword_1ECAA3660;
    v15 = *algn_1ECAA3668;
    sub_1D87C1140(&qword_1ECA62750, type metadata accessor for Lens_Locale, &unk_1D8B1AE18);
    sub_1D8B14AD0();
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = v15;
    *(v17 + 32) = v12;
    *(v17 + 40) = v75;
    *(v17 + 48) = v76;
    *(v17 + 56) = v77;
    sub_1D87C1140(&qword_1ECA62790, type metadata accessor for Lens_RequestConfig, &unk_1D8B1B1B0);
    sub_1D8B14AD0();

    v18 = swift_task_alloc();
    v18[2] = v13;
    v18[3] = v14;
    v18[4] = v78;
    v18[5] = v79;
    sub_1D87C1140(&qword_1ECA62730, type metadata accessor for Lens_FetchVisualDataRequest, &unk_1D8B1ACB0);
    sub_1D8B14AD0();

    sub_1D87C123C(v81, v83, type metadata accessor for Lens_FetchVisualDataRequest);
    sub_1D87C123C(v81, v85, type metadata accessor for Lens_FetchVisualDataRequest);
    v19 = sub_1D8B151C0();
    v20 = sub_1D8B16200();
    if (os_log_type_enabled(v19, v20))
    {
      v86 = v20;
      log = v19;
      v21 = *(v0 + 416);
      v22 = *(v0 + 424);
      v23 = *(v0 + 400);
      v24 = *(v0 + 376);
      v25 = *(v0 + 384);
      v26 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v88[0] = v84;
      *v26 = 136315394;
      v80 = v25;
      sub_1D87A0E38(v23 + *(v25 + 32), v24, &qword_1ECA62860, &qword_1D8B1E070);
      v27 = *(v22 + 48);
      v28 = v27(v24, 1, v21);
      v29 = *(v0 + 440);
      v30 = MEMORY[0x1E69E7CC0];
      v82 = v27;
      if (v28 == 1)
      {
        v31 = *(v0 + 416);
        v32 = *(v0 + 376);
        *v29 = MEMORY[0x1E69E7CC0];
        *(v29 + 8) = 0;
        *(v29 + 16) = 0;
        *(v29 + 24) = 0xE000000000000000;
        *(v29 + 32) = 0;
        *(v29 + 40) = 0xE000000000000000;
        *(v29 + 48) = 0;
        *(v29 + 56) = 1;
        *(v29 + 64) = 0;
        *(v29 + 72) = 1;
        *(v29 + 80) = v30;
        *(v29 + 88) = 0;
        *(v29 + 96) = 1;
        *(v29 + 104) = 0;
        *(v29 + 112) = 0xE000000000000000;
        sub_1D8B14950();
        v33 = *(v31 + 56);
        v34 = type metadata accessor for Lens_RequestConfig.ContextData(0);
        (*(*(v34 - 8) + 56))(v29 + v33, 1, 1, v34);
        if (v27(v32, 1, v31) != 1)
        {
          sub_1D87A14E4(*(v0 + 376), &qword_1ECA62860, &qword_1D8B1E070);
        }
      }

      else
      {
        sub_1D87C1544(*(v0 + 376), v29, type metadata accessor for Lens_RequestConfig);
      }

      v37 = *(v0 + 440);
      v38 = *(v0 + 416);
      v40 = *(v0 + 392);
      v39 = *(v0 + 400);
      v41 = *(v0 + 368);
      v42 = *(v37 + 48);
      v43 = *(v37 + 56);
      sub_1D87C11DC(v37, type metadata accessor for Lens_RequestConfig);
      *(v0 + 152) = v42;
      *(v0 + 160) = v43;
      v44 = sub_1D8B159E0();
      v46 = v45;
      sub_1D87C11DC(v39, type metadata accessor for Lens_FetchVisualDataRequest);
      v47 = sub_1D89AC714(v44, v46, v88);

      *(v26 + 4) = v47;
      *(v26 + 12) = 2080;
      sub_1D87A0E38(v40 + *(v80 + 32), v41, &qword_1ECA62860, &qword_1D8B1E070);
      v48 = v82(v41, 1, v38);
      v49 = *(v0 + 432);
      if (v48 == 1)
      {
        v50 = *(v0 + 416);
        v51 = *(v0 + 368);
        v52 = MEMORY[0x1E69E7CC0];
        *v49 = MEMORY[0x1E69E7CC0];
        *(v49 + 8) = 0;
        *(v49 + 16) = 0;
        *(v49 + 24) = 0xE000000000000000;
        *(v49 + 32) = 0;
        *(v49 + 40) = 0xE000000000000000;
        *(v49 + 48) = 0;
        *(v49 + 56) = 1;
        *(v49 + 64) = 0;
        *(v49 + 72) = 1;
        *(v49 + 80) = v52;
        *(v49 + 88) = 0;
        *(v49 + 96) = 1;
        *(v49 + 104) = 0;
        *(v49 + 112) = 0xE000000000000000;
        sub_1D8B14950();
        v53 = *(v50 + 56);
        v54 = type metadata accessor for Lens_RequestConfig.ContextData(0);
        (*(*(v54 - 8) + 56))(v49 + v53, 1, 1, v54);
        if (v82(v51, 1, v50) != 1)
        {
          sub_1D87A14E4(*(v0 + 368), &qword_1ECA62860, &qword_1D8B1E070);
        }
      }

      else
      {
        sub_1D87C1544(*(v0 + 368), *(v0 + 432), type metadata accessor for Lens_RequestConfig);
      }

      v55 = *(v0 + 432);
      v56 = *(v0 + 392);
      v57 = *(v55 + 88);
      v58 = *(v55 + 96);
      sub_1D87C11DC(v55, type metadata accessor for Lens_RequestConfig);
      *(v0 + 168) = v57;
      *(v0 + 176) = v58;
      v59 = sub_1D8B159E0();
      v61 = v60;
      sub_1D87C11DC(v56, type metadata accessor for Lens_FetchVisualDataRequest);
      v62 = sub_1D89AC714(v59, v61, v88);

      *(v26 + 14) = v62;
      _os_log_impl(&dword_1D8783000, log, v86, "Performing Google search from %s : %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v84, -1, -1);
      MEMORY[0x1DA721330](v26, -1, -1);
    }

    else
    {
      v36 = *(v0 + 392);
      v35 = *(v0 + 400);

      sub_1D87C11DC(v36, type metadata accessor for Lens_FetchVisualDataRequest);
      sub_1D87C11DC(v35, type metadata accessor for Lens_FetchVisualDataRequest);
    }

    (*(*(v0 + 488) + 16))(*(v0 + 496), *(v0 + 504), *(v0 + 480));
    sub_1D8B12B30();
    sub_1D8B12B20();
    sub_1D8B12B40();
    sub_1D8B12B40();

    sub_1D8B12B40();
    sub_1D8B14A90();
    if (v11)
    {
      v63 = *(v0 + 528);
      v64 = *(v0 + 520);
      v66 = *(v0 + 504);
      v65 = *(v0 + 512);
      v67 = *(v0 + 480);
      v68 = *(v0 + 488);
      v69 = *(v0 + 464);
      v70 = *(v0 + 448);
      v71 = *(v0 + 408);
      (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
      sub_1D87C11DC(v71, type metadata accessor for Lens_FetchVisualDataRequest);
      (*(v68 + 8))(v66, v67);
      (*(v64 + 8))(v63, v65);
      sub_1D87C11DC(v70, type metadata accessor for Lens_RequestConfig);
      sub_1D87C11DC(v69, type metadata accessor for Lens_Locale);

      v72 = *(v0 + 8);

      return v72();
    }

    else
    {
      sub_1D8B12B50();
      sub_1D8B131C0();
      if (qword_1ECA620B8 != -1)
      {
        swift_once();
      }

      v73 = swift_task_alloc();
      *(v0 + 600) = v73;
      *v73 = v0;
      v73[1] = sub_1D87BF070;
      v74 = *(v0 + 360);

      return MEMORY[0x1EEDC6260](v74, 0);
    }
  }
}

uint64_t sub_1D87BF070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[76] = a1;
  v5[77] = a2;
  v5[78] = a3;
  v5[79] = v3;

  if (v3)
  {
    v6 = sub_1D87BFF34;
  }

  else
  {
    v6 = sub_1D87BF190;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D87BF190()
{
  (*(*(v0 + 312) + 16))(*(v0 + 328), *(v0 + 336), *(v0 + 304));
  v1 = sub_1D8B151C0();
  v2 = sub_1D8B161F0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 328);
  if (v3)
  {
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    v7 = *(v0 + 304);
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    sub_1D8B131C0();
    sub_1D8B13090();
    v10 = v9;
    v11 = *(v6 + 8);
    v11(v5, v7);
    v109 = v11;
    v11(v4, v7);
    *(v8 + 4) = v10;
    _os_log_impl(&dword_1D8783000, v1, v2, "Retrieved image search results in %f seconds", v8, 0xCu);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  else
  {
    v12 = *(v0 + 304);
    v13 = *(v0 + 312);

    v109 = *(v13 + 8);
    v109(v4, v12);
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14 || [v14 statusCode] != 200)
  {
    v74 = *(v0 + 624);
    v67 = *(v0 + 608);
    v68 = *(v0 + 616);
    v96 = *(v0 + 512);
    v100 = *(v0 + 528);
    v88 = *(v0 + 504);
    v92 = *(v0 + 520);
    v80 = *(v0 + 488);
    v84 = *(v0 + 480);
    v107 = *(v0 + 464);
    v103 = *(v0 + 448);
    v77 = *(v0 + 408);
    v26 = *(v0 + 352);
    v71 = *(v0 + 344);
    v72 = *(v0 + 360);
    v69 = *(v0 + 304);
    v70 = *(v0 + 336);
    v27 = *(v0 + 232);
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    sub_1D8B159B0();
    v30 = sub_1D8B15990();
    v32 = v31;
    sub_1D8B134C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630F0, &qword_1D8B1E080);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D8B1AB90;
    *(inited + 32) = 0x65736E6F70736572;
    v34 = inited + 32;
    *(inited + 72) = MEMORY[0x1E69E6158];
    v35 = 0x206E776F6E6B6E55;
    if (v32)
    {
      v35 = v30;
    }

    v36 = 0xED0000726F727265;
    if (v32)
    {
      v36 = v32;
    }

    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v35;
    *(inited + 56) = v36;
    sub_1D893CABC(inited);
    swift_setDeallocating();
    sub_1D87A14E4(v34, &qword_1ECA630F8, &unk_1D8B1E088);
    sub_1D87C1140(&qword_1ECA63100, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    sub_1D8B12EA0();
    sub_1D8B134F0();
    (*(v28 + 8))(v27, v29);
    swift_willThrow();
    sub_1D87A1598(v67, v68);

    v109(v70, v69);
    (*(v26 + 8))(v72, v71);
    sub_1D87C11DC(v77, type metadata accessor for Lens_FetchVisualDataRequest);
    (*(v80 + 8))(v88, v84);
    (*(v92 + 8))(v100, v96);
    goto LABEL_13;
  }

  v15 = *(v0 + 632);
  v16 = *(v0 + 616);
  v17 = *(v0 + 608);
  *(v0 + 136) = v17;
  *(v0 + 144) = v16;
  sub_1D87A1544(v17, v16);
  sub_1D8B14970();
  sub_1D87C1140(&qword_1ECA62AF0, type metadata accessor for Lens_FetchVisualDataResponse, &unk_1D8B1BC7C);
  sub_1D8B14AA0();
  if (v15)
  {
    v18 = *(v0 + 624);
    v19 = *(v0 + 520);
    v95 = *(v0 + 512);
    v99 = *(v0 + 528);
    v20 = *(v0 + 488);
    v87 = *(v0 + 480);
    v91 = *(v0 + 504);
    v107 = *(v0 + 464);
    v103 = *(v0 + 448);
    v83 = *(v0 + 408);
    v21 = *(v0 + 352);
    v22 = *(v0 + 360);
    v24 = *(v0 + 336);
    v23 = *(v0 + 344);
    v25 = *(v0 + 304);
    sub_1D87A1598(*(v0 + 608), *(v0 + 616));

    v109(v24, v25);
    (*(v21 + 8))(v22, v23);
    sub_1D87C11DC(v83, type metadata accessor for Lens_FetchVisualDataRequest);
    (*(v20 + 8))(v91, v87);
    (*(v19 + 8))(v99, v95);
LABEL_13:
    sub_1D87C11DC(v103, type metadata accessor for Lens_RequestConfig);
    sub_1D87C11DC(v107, type metadata accessor for Lens_Locale);

    v37 = *(v0 + 8);

    return v37();
  }

  v39 = *(v0 + 256);
  v40 = *(v0 + 264);
  v41 = *(v0 + 248);
  sub_1D87A0E38(*(v0 + 296) + *(*(v0 + 288) + 24), v41, &qword_1ECA62F00, &qword_1D8B1DBA0);
  v42 = *(v40 + 48);
  v43 = v42(v41, 1, v39);
  v44 = *(v0 + 272);
  if (v43 == 1)
  {
    v45 = *(v0 + 248);
    v46 = *(v0 + 256);
    *v44 = 0;
    *(v44 + 8) = 1;
    *(v44 + 16) = 0;
    *(v44 + 24) = 0xE000000000000000;
    sub_1D8B14950();
    if (v42(v45, 1, v46) != 1)
    {
      sub_1D87A14E4(*(v0 + 248), &qword_1ECA62F00, &qword_1D8B1DBA0);
    }
  }

  else
  {
    sub_1D87C1544(*(v0 + 248), v44, type metadata accessor for Lens_Status);
  }

  v47 = *(v0 + 272);
  v48 = *v47;
  v49 = *(v47 + 8);
  sub_1D87C11DC(v47, type metadata accessor for Lens_Status);
  if (v49 != 1)
  {
LABEL_25:
    v50 = 3;
LABEL_26:
    v105 = v50;
    v51 = *(v0 + 616);
    v52 = *(v0 + 608);
    v53 = *(v0 + 520);
    v97 = *(v0 + 512);
    v101 = *(v0 + 528);
    v89 = *(v0 + 504);
    v54 = *(v0 + 488);
    v85 = *(v0 + 480);
    v107 = *(v0 + 464);
    v103 = *(v0 + 448);
    v78 = *(v0 + 624);
    v81 = *(v0 + 408);
    v55 = *(v0 + 352);
    v56 = *(v0 + 336);
    v73 = *(v0 + 344);
    v75 = *(v0 + 360);
    v57 = *(v0 + 304);
    v93 = *(v0 + 296);
    sub_1D87C1188();
    swift_allocError();
    swift_getErrorValue();
    **(v0 + 96) = v105;
    swift_willThrow();
    sub_1D87A1598(v52, v51);

    v109(v56, v57);
    (*(v55 + 8))(v75, v73);
    sub_1D87C11DC(v81, type metadata accessor for Lens_FetchVisualDataRequest);
    (*(v54 + 8))(v89, v85);
    (*(v53 + 8))(v101, v97);
    sub_1D87C11DC(v93, type metadata accessor for Lens_FetchVisualDataResponse);
    goto LABEL_13;
  }

  if (v48 > 1)
  {
    if (v48 != 2)
    {
      if (v48 == 3)
      {
        v50 = 4;
      }

      else
      {
        v50 = 5;
      }

      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v48)
  {
    v50 = 2;
    goto LABEL_26;
  }

  v58 = *(v0 + 616);
  v59 = *(v0 + 608);
  v60 = *(v0 + 520);
  v98 = *(v0 + 512);
  v102 = *(v0 + 528);
  v94 = *(v0 + 504);
  v61 = *(v0 + 488);
  v90 = *(v0 + 480);
  v104 = *(v0 + 448);
  v106 = *(v0 + 464);
  v82 = *(v0 + 624);
  v86 = *(v0 + 408);
  v62 = *(v0 + 352);
  v63 = *(v0 + 336);
  v76 = *(v0 + 344);
  v79 = *(v0 + 360);
  v64 = *(v0 + 304);
  v65 = *(v0 + 296);
  v108 = sub_1D87B9FA8(*v65);
  sub_1D87A1598(v59, v58);

  v109(v63, v64);
  (*(v62 + 8))(v79, v76);
  sub_1D87C11DC(v86, type metadata accessor for Lens_FetchVisualDataRequest);
  (*(v61 + 8))(v94, v90);
  (*(v60 + 8))(v102, v98);
  sub_1D87C11DC(v65, type metadata accessor for Lens_FetchVisualDataResponse);
  sub_1D87C11DC(v104, type metadata accessor for Lens_RequestConfig);
  sub_1D87C11DC(v106, type metadata accessor for Lens_Locale);

  v66 = *(v0 + 8);

  return v66(v108);
}

uint64_t sub_1D87BFD78()
{
  (*(v0[65] + 8))(v0[66], v0[64]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D87BFF34()
{
  v12 = v0[66];
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[60];
  v5 = v0[61];
  v13 = v0[56];
  v14 = v0[58];
  v6 = v0[51];
  v7 = v0[44];
  v8 = v0[45];
  v9 = v0[43];
  (*(v0[39] + 8))(v0[42], v0[38]);
  (*(v7 + 8))(v8, v9);
  sub_1D87C11DC(v6, type metadata accessor for Lens_FetchVisualDataRequest);
  (*(v5 + 8))(v3, v4);
  (*(v1 + 8))(v12, v2);
  sub_1D87C11DC(v13, type metadata accessor for Lens_RequestConfig);
  sub_1D87C11DC(v14, type metadata accessor for Lens_Locale);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D87C01B0(uint64_t *a1)
{
  v2 = sub_1D8B134B0();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63118, &qword_1D8B1E0A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_1D8B13350();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  sub_1D8B132F0();
  v14 = sub_1D8B13250();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v13, v7);

  *a1 = v14;
  a1[1] = v16;
  sub_1D8B132F0();
  sub_1D8B132E0();
  v17(v11, v7);
  v18 = sub_1D8B132B0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v6, 1, v18) == 1)
  {
    sub_1D87A14E4(v6, &qword_1ECA63118, &qword_1D8B1E0A0);
    v20 = 0xE200000000000000;
    v21 = 21333;
  }

  else
  {
    v21 = sub_1D8B13260();
    v20 = v22;
    (*(v19 + 8))(v6, v18);
  }

  a1[2] = v21;
  a1[3] = v20;
  v23 = v29;
  sub_1D8B134A0();
  v24 = sub_1D8B13460();
  v26 = v25;
  (*(v30 + 8))(v23, v31);

  a1[4] = v24;
  a1[5] = v26;
  return result;
}

uint64_t sub_1D87C04B0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  *(a1 + 8) = 8;

  *a1 = &unk_1F5423870;
  v13 = [objc_opt_self() processInfo];
  v14 = [v13 operatingSystemVersionString];

  v15 = sub_1D8B15970();
  v17 = v16;

  *(a1 + 16) = v15;
  *(a1 + 24) = v17;

  v18 = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  v19 = 56;
  v20 = 48;
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v19 = 56;
      v18 = 2;
      v20 = 48;
    }
  }

  else if (a4)
  {
    *(a1 + 48) = 1;
    *(a1 + 56) = 1;
    v19 = 72;
    v18 = 2;
    v20 = 64;
  }

  *(a1 + v20) = v18;
  *(a1 + v19) = 1;
  if (a7)
  {
    if (a7 == 1)
    {
      v21 = 1;
      v22 = 1;
    }

    else
    {
      v22 = 0;
      v21 = -1;
    }
  }

  else
  {
    v21 = a7;
    v22 = 1;
  }

  *(a1 + 88) = v21;
  *(a1 + 96) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63110, &qword_1D8B1E098);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D8B1AB90;
  *(v23 + 32) = 5;
  *(v23 + 40) = 1;
  if (qword_1EE0E55D0 != -1)
  {
    swift_once();
  }

  if (byte_1EE0E55D8 == 1)
  {
    v24 = sub_1D87C7884(1, 2, 1, v23);
    *(v24 + 2) = 2;
    *(v24 + 6) = 3;
    v24[56] = 1;
    v25 = *(v24 + 3);
    if (v25 <= 5)
    {
      v24 = sub_1D87C7884((v25 > 1), 3, 1, v24);
      v25 = *(v24 + 3);
    }

    *(v24 + 2) = 3;
    *(v24 + 8) = 1;
    v24[72] = 1;
    if (v25 <= 7)
    {
      v24 = sub_1D87C7884((v25 > 1), 4, 1, v24);
    }

    *(v24 + 2) = 4;
    *(v24 + 10) = 4;
    v24[88] = 1;

    *(a1 + 80) = v24;
    if (a6)
    {

      *(a1 + 104) = a5;
      *(a1 + 112) = a6;
    }
  }

  else
  {

    *(a1 + 80) = v23;
  }

  return result;
}

uint64_t sub_1D87C0798(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v24 = a3;
  v7 = type metadata accessor for Lens_RequestConfig(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Lens_Locale(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87C123C(a2, v14, type metadata accessor for Lens_Locale);
  VisualDataRequest = type metadata accessor for Lens_FetchVisualDataRequest(0);
  v16 = *(VisualDataRequest + 28);
  sub_1D87A14E4(a1 + v16, &qword_1ECA62868, &qword_1D8B1B390);
  sub_1D87C1544(v14, a1 + v16, type metadata accessor for Lens_Locale);
  (*(v12 + 56))(a1 + v16, 0, 1, v11);
  sub_1D87C123C(v24, v10, type metadata accessor for Lens_RequestConfig);
  v17 = *(VisualDataRequest + 32);
  sub_1D87A14E4(a1 + v17, &qword_1ECA62860, &qword_1D8B1E070);
  sub_1D87C1544(v10, a1 + v17, type metadata accessor for Lens_RequestConfig);
  (*(v8 + 56))(a1 + v17, 0, 1, v7);
  v18 = *a1;
  v19 = a1[1];
  v21 = v25;
  v20 = v26;
  sub_1D87A1544(v25, v26);
  result = sub_1D87A1598(v18, v19);
  *a1 = v21;
  a1[1] = v20;
  return result;
}

uint64_t sub_1D87C0A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D87C0B2C;

  return sub_1D87BDBF0(a1, a2, a3);
}

uint64_t sub_1D87C0B2C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1D87C0C2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D87C0C74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D87C0CCC(uint64_t a1)
{
  *(a1 + 8) = sub_1D87C1140(&qword_1ECA62B98, type metadata accessor for Lens_ProductAd, &unk_1D8B1C2E4);
  result = sub_1D87C1140(&qword_1ECA630B0, type metadata accessor for Lens_ProductAd, &unk_1D8B1DEB4);
  *(a1 + 16) = result;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}