unint64_t sub_237FA2D38()
{
  result = qword_280C34AA0;
  if (!qword_280C34AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE55C8, &qword_238035C28);
    sub_238011FC8(&qword_280C34F58, type metadata accessor for _DeviceActivityData.ActivitySegment, &protocol conformance descriptor for _DeviceActivityData.ActivitySegment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34AA0);
  }

  return result;
}

uint64_t _DeviceActivityData.ActivitySegment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v42 - v6;
  v7 = sub_238031654();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5208, &qword_238034428);
  v45 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v12 = &v42 - v11;
  v13 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v16 = xmmword_238033ED0;
  v17 = *(v14 + 28);
  v47 = v8;
  v18 = *(v8 + 56);
  v52 = v17;
  v49 = v7;
  v18(v16 + v17, 1, 1, v7);
  v48 = v13;
  v19 = *(v13 + 32);
  v20 = sub_238031A64();
  (*(*(v20 - 8) + 56))(v16 + v19, 1, 1, v20);
  v21 = a1[3];
  v53 = a1;
  v22 = __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_237FA3634(v22, v23, v24);
  v25 = v51;
  v26 = sub_238032604();
  if (v25)
  {
    v29 = v52;
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    sub_237FA38D0(*v16, v16[1]);
    sub_237FA5750(v16 + v29, &qword_27DEE50C8, &qword_2380357C0);
    return sub_237FA5750(v16 + v19, &qword_27DEE51E0, &qword_2380365F0);
  }

  else
  {
    v42 = v20;
    v51 = v10;
    v31 = v45;
    v30 = v46;
    v56 = 0;
    sub_237FA3688(v26, v27, v28);
    sub_2380323E4();
    v32 = v19;
    v33 = v54;
    v34 = v55;
    sub_237FA38D0(*v16, v16[1]);
    *v16 = v33;
    v16[1] = v34;
    LOBYTE(v54) = 1;
    v16[2] = sub_2380323F4();
    v16[3] = v36;
    LOBYTE(v54) = 2;
    sub_237FA38E4(&qword_280C35070, MEMORY[0x277CC88A8], MEMORY[0x277CC88D0]);
    v37 = v51;
    v38 = v49;
    sub_238032434();
    (*(v47 + 32))(v16 + v48[6], v37, v38);
    LOBYTE(v54) = 3;
    sub_2380323E4();
    sub_237FA39BC(v30, v16 + v52, &qword_27DEE50C8, &qword_2380357C0);
    LOBYTE(v54) = 4;
    sub_237FA38E4(&qword_280C35348, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v39 = v44;
    sub_2380323E4();
    sub_237FA39BC(v39, v16 + v32, &qword_27DEE51E0, &qword_2380365F0);
    LOBYTE(v54) = 5;
    sub_238032414();
    v40 = v48;
    *(v16 + v48[9]) = v41;
    LOBYTE(v54) = 6;
    *(v16 + v40[10]) = sub_238032424();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5200, &qword_238034420);
    v56 = 7;
    sub_237FA3A24(&qword_280C34A70, &qword_280C34FB0, &protocol conformance descriptor for _DeviceActivityData.CategoryActivity, MEMORY[0x277D83978]);
    sub_238032434();
    (*(v31 + 8))(v12, v50);
    *(v16 + v48[11]) = v54;
    sub_237FA4CFC(v16, v43, type metadata accessor for _DeviceActivityData.ActivitySegment);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    return sub_237FA4DCC(v16, type metadata accessor for _DeviceActivityData.ActivitySegment);
  }
}

uint64_t sub_237FA35B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
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

unint64_t sub_237FA3634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C34F78;
  if (!qword_280C34F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34F78);
  }

  return result;
}

unint64_t sub_237FA3688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C35350;
  if (!qword_280C35350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C35350);
  }

  return result;
}

uint64_t sub_237FA36E8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000026;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000015;
    if (v1 == 4)
    {
      v6 = 0x6369507473726966;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6F5A64726F636572;
    v3 = 0x65746E4965746164;
    if (v1 != 2)
    {
      v3 = 0x41747365676E6F6CLL;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000012;
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
}

uint64_t _s15ActivitySegmentV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_237FA38D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_237FA5048(a1, a2);
  }

  return a1;
}

uint64_t sub_237FA38E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s15ActivitySegmentV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_237FA39BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_237FA3A24(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE5200, &qword_238034420);
    sub_237FA38E4(a2, type metadata accessor for _DeviceActivityData.CategoryActivity, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _DeviceActivityData.CategoryActivity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  MEMORY[0x28223BE20](v3 - 8);
  v24 = &v22 - v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5370, &qword_238034A88);
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v22 - v5;
  v7 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v8 + 20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FA4018(v13, v14, v15);
  v26 = v6;
  v16 = v28;
  sub_238032604();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_237FA5750(v10 + v11, &qword_27DEE51D0, &qword_238034400);
  }

  else
  {
    v17 = v24;
    LOBYTE(v30) = 0;
    *v10 = sub_2380323F4();
    v10[1] = v18;
    v28 = v18;
    LOBYTE(v30) = 1;
    sub_237FA41C0(&qword_280C34AF0, MEMORY[0x277CD4B10]);
    sub_2380323E4();
    sub_237FA39BC(v17, v10 + v11, &qword_27DEE51D0, &qword_238034400);
    LOBYTE(v30) = 2;
    sub_238032414();
    *(v10 + v7[6]) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5360, &qword_238034A78);
    v29 = 3;
    sub_237FA4210(&qword_280C34A80, &qword_280C34FD8, &protocol conformance descriptor for _DeviceActivityData.ApplicationActivity, MEMORY[0x277D83978]);
    sub_238032434();
    v20 = v25;
    *(v10 + v7[7]) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5368, &qword_238034A80);
    v29 = 4;
    sub_237FA4B98(&qword_280C34A60, &qword_280C34F88, "qM J\bJ", MEMORY[0x277D83978]);
    sub_238032434();
    (*(v20 + 8))(v26, v27);
    *(v10 + v7[8]) = v30;
    sub_237FA4C34(v10, v23, type metadata accessor for _DeviceActivityData.CategoryActivity);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_237FA4C9C(v10, type metadata accessor for _DeviceActivityData.CategoryActivity);
  }
}

unint64_t sub_237FA4018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C34FD0;
  if (!qword_280C34FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34FD0);
  }

  return result;
}

unint64_t sub_237FA406C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E656B6F74;
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

uint64_t storeEnumTagSinglePayload for DeviceActivityCenter.MonitoringError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237FA41C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE4FF0, &unk_238033980);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237FA4210(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE5360, &qword_238034A78);
    sub_237FDCDF0(a2, type metadata accessor for _DeviceActivityData.ApplicationActivity, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceActivityCenter.MonitoringError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _DeviceActivityData.ApplicationActivity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5318, &qword_2380347A8);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 20);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v15 = *(*(v14 - 8) + 56);
  v41 = v13;
  v16 = v12;
  v15(v12 + v13, 1, 1, v14);
  v17 = a1[3];
  v42 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_237FA47D8(v18, v19, v20);
  v39 = v8;
  v21 = v40;
  sub_238032604();
  if (v21)
  {
    v24 = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    sub_237FA5750(v16 + v24, &qword_27DEE51C0, &unk_238034790);
  }

  else
  {
    v40 = v9;
    v23 = v37;
    v22 = v38;
    v49 = 0;
    *v16 = sub_2380323F4();
    v16[1] = v25;
    v48 = 1;
    sub_237FA49CC(&qword_280C34B08, MEMORY[0x277CD4B10]);
    sub_2380323E4();
    sub_237FA4A1C(v5, v16 + v41);
    v47 = 2;
    v26 = sub_2380323D4();
    v27 = v23;
    v28 = v40;
    v29 = (v16 + v40[6]);
    *v29 = v26;
    v29[1] = v30;
    v46 = 3;
    sub_238032414();
    *(v16 + v28[7]) = v31;
    v45 = 4;
    *(v16 + v28[8]) = sub_238032424();
    v44 = 5;
    *(v16 + v28[9]) = sub_238032424();
    v43 = 6;
    v32 = v39;
    v33 = sub_238032404();
    (*(v27 + 8))(v32, v22);
    *(v16 + v28[10]) = v33 & 1;
    sub_237FA4A8C(v16, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    return sub_237FA4B3C(v16);
  }
}

unint64_t sub_237FA47D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C34FF8;
  if (!qword_280C34FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34FF8);
  }

  return result;
}

unint64_t sub_237FA482C()
{
  v1 = *v0;
  v2 = 0x6E656B6F74;
  v3 = 0xD000000000000015;
  if (v1 != 5)
  {
    v3 = 0x6574737572547369;
  }

  v4 = 0x664F7265626D756ELL;
  if (v1 == 3)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t _s19ApplicationActivityV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_237FA49CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE4FF8, &unk_2380343E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237FA4A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237FA4A8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_237FA4B3C(uint64_t a1)
{
  v2 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237FA4B98(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE5368, &qword_238034A80);
    sub_237FDCDF0(a2, type metadata accessor for _DeviceActivityData.WebDomainActivity, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237FA4C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FA4C9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_237FA4CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FA4D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FA4DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_237FA4E2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_237FA4EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_2380325B4();
  sub_238031ED4();
  v5 = sub_2380325F4();

  return a3(a1, a2, v5);
}

unint64_t sub_237FA4F28(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2380324E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_237FA4FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FA5048(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_237FA509C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FA5104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25 = a8;
  v9 = v8;
  v23 = a6;
  v24 = a7;
  v21 = a3;
  v22 = a4;
  v13 = sub_238031994();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  v19 = v9[3];
  v18 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v19);
  v26 = v17;
  (*(v18 + 128))(a1, a2, v21, v22, &v26, v23, v24, v19, v18);
  sub_238000CE8(v16, type metadata accessor for _DeviceActivityData.ActivitySegment, sub_23800CC10, type metadata accessor for _DeviceActivityData.ActivitySegment, v25);
  return (*(v14 + 8))(v16, v13);
}

uint64_t DeviceActivityDataSource.fetchCodableActivitySegment(userAltDSID:deviceIdentifier:segmentInterval:recordName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v57 = a1;
  v9 = v8;
  v53 = a6;
  v54 = a7;
  v55 = a3;
  v56 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54A8, &qword_2380359E0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v52 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v16);
  v49 = &v49 - v19;
  v20 = type metadata accessor for _DeviceActivityData.User(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = (&v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = *a5;
  v23 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = 1;
  v59 = a8;
  v60 = v23;
  v50 = v25;
  v51 = v24 + 56;
  (v25)(a8, 1, 1);
  if (a2)
  {
    sub_237FAB488(v22);
    v28 = *v22;
    v27 = v22[1];

    sub_237FAB7D4(v22, type metadata accessor for _DeviceActivityData.User);
    if (v27)
    {
      if (v28 == v57 && v27 == a2)
      {
        v26 = 1;
      }

      else
      {
        v26 = sub_2380324E4();
      }
    }

    else
    {
      v26 = 0;
    }
  }

  v31 = v9[15];
  v30 = v9[16];
  __swift_project_boxed_opaque_existential_1(v9 + 12, v31);
  v32 = v58;
  v33 = (*(v30 + 120))(v31, v30);
  if (v32)
  {

    v35 = v59;
    goto LABEL_21;
  }

  v36 = v33 == v55 && v34 == v56;
  v35 = v59;
  if (v36)
  {

    if ((v26 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v37 = sub_2380324E4();

  if (v26 & v37)
  {
LABEL_20:
    v38 = v9[15];
    v39 = v9[16];
    __swift_project_boxed_opaque_existential_1(v9 + 12, v38);
    v62 = v61;
    (*(v39 + 72))(&v62, v53, v54, v38, v39);
    sub_237FA5750(v35, &qword_27DEE54A8, &qword_2380359E0);
    v40 = v49;
    v50(v49, 0, 1, v60);
    sub_237FA5AE0(v40, v35, &qword_27DEE54A8, &qword_2380359E0);
  }

LABEL_21:
  sub_237FA90E4(v35, v18, &qword_27DEE54A8, &qword_2380359E0);
  v41 = (*(v24 + 48))(v18, 1, v60);
  result = sub_237FA5750(v18, &qword_27DEE54A8, &qword_2380359E0);
  if (v41 == 1 && a2 != 0)
  {
    v44 = v9[15];
    v45 = v9[16];
    __swift_project_boxed_opaque_existential_1(v9 + 12, v44);
    v63 = v61;
    v46 = *(v45 + 88);
    v48 = v45;
    v47 = v52;
    v46(v57, a2, v55, v56, &v63, v53, v54, v44, v48);
    sub_237FA5750(v35, &qword_27DEE54A8, &qword_2380359E0);
    v50(v47, 0, 1, v60);
    return sub_237FA5AE0(v47, v35, &qword_27DEE54A8, &qword_2380359E0);
  }

  return result;
}

uint64_t sub_237FA5750(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_237FA57C4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_238031654();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_237FA595C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_238031654();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_237FA5AE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _DeviceActivityResults.next()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54A8, &qword_2380359E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v46 - v7);
  v9 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  v10 = MEMORY[0x28223BE20](v9);
  v11 = MEMORY[0x28223BE20](v10);
  v15 = *v2;
  v16 = v2[6];
  if (*v2 >= *(v16 + 16))
  {
    result = (*(*(a1[2] - 8) + 56))(a2, 1, 1);
    v37 = *v2 + 1;
    if (!__OFADD__(*v2, 1))
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_9;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    v49 = v14;
    v50 = v11;
    v46 = v13;
    v47 = &v46 - v12;
    v54 = a1;
    v55 = a2;
    v17 = v16 + 16 * v15;
    v18 = *(v17 + 40);
    v53 = *(v17 + 32);
    v19 = v2[10];
    v20 = v2[11];
    v21 = __swift_project_boxed_opaque_existential_1(v2 + 7, v19);
    v22 = v2[1];
    v23 = v2[2];
    v25 = v2[3];
    v24 = v2[4];
    v56 = v2;
    LOBYTE(v58[0]) = *(v2 + 40);
    v51 = *(v20 + 8);
    v52 = v21;

    v45 = v20;
    v48 = v8;
    a1 = 0;
    v51(v22, v23, v25, v24, v58, v53, v18, v19, v45);
LABEL_9:

    v28 = v48;
    v3 = v50;
    if ((*(v49 + 48))(v48, 1, v50) != 1)
    {
      goto LABEL_17;
    }

    sub_237FA5750(v28, &qword_27DEE54A8, &qword_2380359E0);
    result = (*(*(v54[2] - 8) + 56))(v55, 1, 1);
    v2 = v56;
    v37 = *v56 + 1;
    if (!__OFADD__(*v56, 1))
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_13;
  }

  __break(1u);
  swift_once();
  v26 = sub_238031DB4();
  __swift_project_value_buffer(v26, qword_280C36C50);
  v27 = a1;
  v28 = sub_238031D94();
  v29 = sub_2380320F4();

  v30 = os_log_type_enabled(v28, v29);
  v2 = v56;
  if (!v30)
  {
LABEL_13:

    goto LABEL_14;
  }

  v3 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v57 = a1;
  v58[0] = v31;
  *v3 = 136446210;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
  v33 = sub_238031EB4();
  v35 = sub_237FDF8EC(v33, v34, v58);

  *(v3 + 4) = v35;
  _os_log_impl(&dword_237FA1000, v28, v29, "Failed to fetch codable activity segment: %{public}s", v3, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  MEMORY[0x2383E5E30](v31, -1, -1);
  MEMORY[0x2383E5E30](v3, -1, -1);

LABEL_14:
  result = (*(*(v54[2] - 8) + 56))(v55, 1, 1);
  v37 = *v2 + 1;
  if (!__OFADD__(*v2, 1))
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_17:
  v38 = v47;
  sub_237FA608C(v28, v47, type metadata accessor for _DeviceActivityData.ActivitySegment);
  v39 = *(v3 + 44);
  v40 = v54;
  v2 = v56;
  v41 = Array<A>.filterCategoryActivities(with:)(v56 + *(v54 + 12), *(v38 + v39));

  *(v38 + v39) = v41;
  sub_237FAB208(v38, v46, type metadata accessor for _DeviceActivityData.ActivitySegment);
  v42 = v40[2];
  v43 = v55;
  v44 = swift_dynamicCast();
  (*(*(v42 - 8) + 56))(v43, v44 ^ 1u, 1, v42);
  result = sub_237FAB270(v38);
  v37 = *v2 + 1;
  if (!__OFADD__(*v2, 1))
  {
LABEL_18:
    *v2 = v37;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_237FA608C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *Array<A>.filterCategoryActivities(with:)(int64_t a1, uint64_t a2)
{
  v126 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v128 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v108 = &v106 - v7;
  MEMORY[0x28223BE20](v6);
  v141 = &v106 - v8;
  v113 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v10 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v123 = *(v135 - 8);
  v13 = MEMORY[0x28223BE20](v135);
  v122 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v127 = &v106 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v106 - v17;
  v119 = sub_238031C44();
  v131 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v130 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53F0, &qword_2380350C8);
  v20 = *(v121 - 8);
  v21 = MEMORY[0x28223BE20](v121);
  v118 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v106 - v23;
  swift_beginAccess();
  v25 = qword_27DEE4D00;

  if (v25 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    v124 = v18;
    v26 = sub_238031CE4();
    v27 = __swift_project_value_buffer(v26, qword_27DEE9550);
    v145 = v26;
    v146 = MEMORY[0x277D265B0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v144);
    v29 = *(v26 - 8);
    v30 = *(v29 + 16);
    v116 = v27;
    v117 = v26;
    v115 = v30;
    v114 = v29 + 16;
    v30(boxed_opaque_existential_1, v27, v26);
    sub_238031D34();
    swift_allocObject();
    v134 = sub_238031CF4();
    v129 = type metadata accessor for DeviceActivityFilter(0);
    v31 = sub_237FA74E0(*(a1 + v129[11]), &qword_27DEE4FF0, &unk_238033980);
    v33 = MEMORY[0x277D84FA0];
    v143 = MEMORY[0x277D84FA0];
    v34 = *(v31 + 16);
    v35 = &off_238033000;
    v137 = a1;
    v36 = v121;
    v125 = v31;
    v133 = v20;
    v140 = v34;
    if (!v34)
    {
      break;
    }

    v18 = v31;
    v37 = 0;
    v138 = (v20 + 8);
    v139 = v20 + 16;
    *&v32 = 136446210;
    v132 = v32;
    v136 = v24;
    while (v37 < *(v18 + 2))
    {
      (*(v20 + 16))(v24, &v18[((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v37], v36);
      v39 = sub_238031D14();
      sub_237FB5F68(&v144, v39, v38);

      ++v37;
      (*v138)(v24, v36);
      if (v140 == v37)
      {
        v33 = v143;
        v35 = &off_238033000;
        goto LABEL_8;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
  }

LABEL_8:
  v143 = v33;
  v40 = *(a1 + v129[16]);
  v18 = (v40 + 56);
  v41 = 1 << *(v40 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v24 = v42 & *(v40 + 56);
  a1 = (v41 + 63) >> 6;
  v138 = (v131 + 8);
  v139 = v131 + 16;
  v140 = v40;

  v43 = 0;
  *&v132 = MEMORY[0x277D84F90];
  if (!v24)
  {
    goto LABEL_13;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v44 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v20 = v131;
      v45 = v130;
      v46 = v119;
      (*(v131 + 16))(v130, *(v140 + 48) + *(v131 + 72) * (v44 | (v43 << 6)), v119);
      v136 = sub_238031C24();
      v47 = v45;
      v49 = v48;
      (*(v20 + 8))(v47, v46);
      v35 = &off_238033000;
      if (v49)
      {
        break;
      }

      if (!v24)
      {
        goto LABEL_13;
      }
    }

    v20 = v136;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      *&v132 = sub_237FB5A94(0, *(v132 + 16) + 1, 1, v132);
    }

    v52 = *(v132 + 16);
    v51 = *(v132 + 24);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      v136 = v52 + 1;
      v120 = v52;
      v56 = sub_237FB5A94((v51 > 1), v52 + 1, 1, v132);
      v53 = v136;
      v52 = v120;
      *&v132 = v56;
    }

    v54 = v132;
    *(v132 + 16) = v53;
    v55 = v54 + 16 * v52;
    *(v55 + 32) = v20;
    *(v55 + 40) = v49;
  }

  while (v24);
  while (1)
  {
LABEL_13:
    v50 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    if (v50 >= a1)
    {
      break;
    }

    v24 = *&v18[8 * v50];
    ++v43;
    if (v24)
    {
      v43 = v50;
      goto LABEL_11;
    }
  }

  sub_237FA78D4(v132);

  *&v132 = *(v126 + 16);
  if (v132)
  {
    v58 = 0;
    LODWORD(v140) = *(v137 + v129[19]);
    v120 = (*(v123 + 80) + 32) & ~*(v123 + 80);
    v131 = v126 + v120;
    v59 = MEMORY[0x277D84F90];
    v139 = *(v123 + 72);
    v123 = *MEMORY[0x277CF9618];
    v107 = (v133 + 8);
    *&v57 = *(v35 + 417);
    v106 = v57;
    v60 = v135;
    v61 = v124;
    while (1)
    {
      v62 = sub_237FA4D64(v131 + v139 * v58, v61, type metadata accessor for _DeviceActivityData.CategoryActivity);
      if ((v140 & 1) == 0)
      {
        v78 = *v61;
        v79 = v61[1];
        if (v78 == sub_238031EA4() && v79 == v80)
        {

          goto LABEL_26;
        }

        v82 = sub_2380324E4();

        if (v82)
        {
          goto LABEL_26;
        }
      }

      v136 = v59;
      MEMORY[0x28223BE20](v62);
      *(&v106 - 2) = v61;
      v64 = sub_237FA7944(sub_237FE006C, (&v106 - 2), v63);
      v142 = 0.0;
      v65 = v137;
      v66 = sub_237FA7A9C(v137, v64 & 1, &v142, *(v61 + v60[7]));
      v67 = sub_237FA9424(v65, v64 & 1, &v142, *(v61 + v60[8]));
      v138 = v66;
      v68 = v66[2];
      v69 = v67[2];
      if ((v64 & 1) != 0 || (!v68 ? (v70 = v69 == 0) : (v70 = 0), !v70 || DeviceActivityFilter.includesAllActivity.getter()))
      {
        v71 = v142;
        v72 = *(v61 + *(v135 + 24));
        v133 = v67;
        if (v142 > 0.0)
        {
          if (v68)
          {
            v73 = *(v111 + 28);
            v74 = v138 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
            v75 = *(v110 + 72);
            v76 = 0.0;
            do
            {
              sub_237FA4D64(v74, v12, type metadata accessor for _DeviceActivityData.ApplicationActivity);
              v77 = *&v12[v73];
              sub_237FA4E2C(v12, type metadata accessor for _DeviceActivityData.ApplicationActivity);
              v76 = v76 + v77;
              v74 += v75;
              v68 = (v68 - 1);
            }

            while (v68);
            if (!v69)
            {
LABEL_51:
              v87 = v72 - v71;
              if (v76 > v72 - v71)
              {
                v87 = v76;
              }

              if (v72 >= v87)
              {
                v72 = v87;
              }

              goto LABEL_55;
            }
          }

          else
          {
            v76 = 0.0;
            if (!v69)
            {
              goto LABEL_51;
            }
          }

          v83 = *(v113 + 24);
          v84 = v133 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
          v85 = *(v112 + 72);
          do
          {
            sub_237FA4D64(v84, v10, type metadata accessor for _DeviceActivityData.WebDomainActivity);
            v86 = *&v10[v83];
            sub_237FA4E2C(v10, type metadata accessor for _DeviceActivityData.WebDomainActivity);
            v76 = v76 + v86;
            v84 += v85;
            --v69;
          }

          while (v69);
          goto LABEL_51;
        }

LABEL_55:
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
        v89 = *(v88 - 8);
        v130 = *(v89 + 56);
        v129 = (v89 + 56);
        (v130)(v141, 1, 1, v88);
        v126 = v88;
        if ((v140 & 1) == 0)
        {
          v90 = v117;
          v145 = v117;
          v146 = MEMORY[0x277D265B0];
          v91 = __swift_allocate_boxed_opaque_existential_1(&v144);
          v115(v91, v116, v90);
          sub_238031D84();
          swift_allocObject();

          v92 = sub_238031D44();
          v93 = v118;
          sub_238031D64();
          v109 = v92;
          v94 = v121;
          sub_238031C54();
          v95 = v108;
          sub_238031C64();

          (*v107)(v93, v94);
          v96 = v141;
          sub_237FA5750(v141, &qword_27DEE51D0, &qword_238034400);
          (v130)(v95, 0, 1, v88);
          sub_237FA5AE0(v95, v96, &qword_27DEE51D0, &qword_238034400);
        }

        v97 = *v61;
        v98 = v61[1];
        v99 = v128;
        sub_237FA90E4(v141, v128, &qword_27DEE51D0, &qword_238034400);
        v60 = v135;
        v100 = *(v135 + 20);
        v101 = v122;
        (v130)(&v122[v100], 1, 1, v126);
        *v101 = v97;
        v101[1] = v98;

        sub_237FAA864(v99, v101 + v100);
        *(v101 + v60[6]) = v72;
        v144 = v138;

        sub_237FAA8D4(&v144);

        *(v101 + v60[7]) = v144;
        v144 = v133;

        sub_237FAAF84(&v144);
        v59 = v136;

        sub_237FA5750(v128, &qword_27DEE51D0, &qword_238034400);
        *(v101 + v60[8]) = v144;
        sub_237FA93BC(v101, v127, type metadata accessor for _DeviceActivityData.CategoryActivity);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v124;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v59 = sub_237FAB1E0(0, v59[2] + 1, 1, v59);
        }

        v104 = v59[2];
        v103 = v59[3];
        if (v104 >= v103 >> 1)
        {
          v59 = sub_237FAB1E0((v103 > 1), v104 + 1, 1, v59);
        }

        sub_237FA5750(v141, &qword_27DEE51D0, &qword_238034400);
        v59[2] = v104 + 1;
        sub_237FA93BC(v127, v59 + v120 + v104 * v139, type metadata accessor for _DeviceActivityData.CategoryActivity);
        goto LABEL_26;
      }

      v60 = v135;
      v59 = v136;
LABEL_26:
      ++v58;
      sub_237FA4E2C(v61, type metadata accessor for _DeviceActivityData.CategoryActivity);
      if (v58 == v132)
      {
        goto LABEL_63;
      }
    }
  }

  v59 = MEMORY[0x277D84F90];
LABEL_63:

  return v59;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_237FA74E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = v33 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53F0, &qword_2380350C8);
  v7 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = v33 - v8;
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v40 = v9;
    v33[1] = v3;
    v48 = MEMORY[0x277D84F90];
    sub_23800F134(0, v10, 0);
    v46 = a1 + 56;
    v47 = v48;
    result = sub_2380321F4();
    v12 = result;
    v13 = v7;
    v14 = 0;
    v38 = v5 + 8;
    v39 = v5 + 16;
    v41 = v13;
    v36 = v5;
    v37 = v13 + 32;
    v34 = a1 + 64;
    v35 = v10;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v17 = v12 >> 6;
      if ((*(v46 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v45 = *(a1 + 36);
      v19 = v43;
      v18 = v44;
      (*(v5 + 16))(v43, *(a1 + 48) + *(v5 + 72) * v12, v44);
      sub_238031C54();
      v20 = a1;
      v21 = v40;
      sub_238031C64();
      (*(v5 + 8))(v19, v18);
      v22 = v47;
      v48 = v47;
      v24 = *(v47 + 16);
      v23 = *(v47 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_23800F134((v23 > 1), v24 + 1, 1);
        v22 = v48;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v47 = v22;
      result = (*(v41 + 32))(v22 + v25 + *(v41 + 72) * v24, v21, v42);
      v15 = 1 << *(v20 + 32);
      if (v12 >= v15)
      {
        goto LABEL_23;
      }

      v26 = *(v46 + 8 * v17);
      if ((v26 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v20;
      if (v45 != *(v20 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v12 & 0x3F));
      if (v27)
      {
        v15 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v16 = v35;
      }

      else
      {
        v28 = v17 << 6;
        v29 = v17 + 1;
        v16 = v35;
        v30 = (v34 + 8 * v17);
        while (v29 < (v15 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_237FC1560(v12, v45, 0);
            v15 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_237FC1560(v12, v45, 0);
      }

LABEL_4:
      ++v14;
      v12 = v15;
      v5 = v36;
      if (v14 == v16)
      {
        return v47;
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
  }

  return result;
}

uint64_t sub_237FA78D4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_237FB5F68(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_237FA7944(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v18[0] = *v13;
      v18[1] = v14;

      v15 = v19(v18);
      if (v3)
      {

        return v17 & 1;
      }

      v16 = v15;

      if (v16)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v17 = 1;
    return v17 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v17 = 0;
        return v17 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_237FA7A9C(uint64_t a1, int a2, double *a3, uint64_t a4)
{
  v142 = a4;
  v143 = a3;
  LODWORD(v4) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v155 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v151 = &v141 - v9;
  v168 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  *&v141 = *(v168 - 1);
  v10 = MEMORY[0x28223BE20](v168);
  v163 = (&v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v171 = &v141 - v12;
  v154 = sub_238031BE4();
  v169 = *(v154 - 8);
  v13 = MEMORY[0x28223BE20](v154);
  v160 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v162 = &v141 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53F0, &qword_2380350C8);
  v172 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v148 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v164 = &v141 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = (&v141 - v21);
  swift_beginAccess();
  v23 = qword_27DEE4D00;

  if (v23 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v24 = sub_238031CE4();
    v25 = __swift_project_value_buffer(v24, qword_27DEE9550);
    v174 = v24;
    v175 = MEMORY[0x277D265B0];
    v26 = __swift_allocate_boxed_opaque_existential_1(&v173);
    v27 = *(v24 - 8);
    v28 = *(v27 + 16);
    v146 = v25;
    v147 = v24;
    v145 = v28;
    v144 = v27 + 16;
    v28(v26, v25, v24);
    sub_238031D34();
    swift_allocObject();
    v29 = sub_238031CF4();
    v159 = type metadata accessor for DeviceActivityFilter(0);
    v153 = *(a1 + v159[9]);
    v30 = 0;
    v31 = sub_237FA74E0(v153, &qword_27DEE4FF8, &unk_2380343E0);
    v33 = MEMORY[0x277D84FA0];
    v178 = MEMORY[0x277D84FA0];
    v34 = *(v31 + 16);
    v152 = v4;
    v156 = a1;
    v158 = v16;
    v157 = v29;
    v165 = v31;
    if (v34)
    {
      v35 = v31;
      v4 = v34;
      v36 = 0;
      i = (v172 + 2);
      v37 = (v172 + 1);
      *&v32 = 136446210;
      v166 = v32;
      v167 = v34;
      while (v36 < *(v35 + 16))
      {
        (v172[2])(v22, v35 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + v172[9] * v36, v16);
        v39 = sub_238031D04();
        sub_237FB5F68(&v173, v39, v38);

        ++v36;
        (*v37)(v22, v16);
        if (v4 == v36)
        {
          v33 = v178;
          a1 = v156;
          goto LABEL_8;
        }
      }

LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

LABEL_8:
    v178 = v33;
    v40 = *(a1 + v159[14]);
    v41 = v40 + 56;
    v42 = 1 << *(v40 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & *(v40 + 56);
    v45 = (v42 + 63) >> 6;
    v167 = v169 + 2;
    *&v166 = v169 + 1;
    v150 = v40;

    v16 = 0;
    for (i = MEMORY[0x277D84F90]; v44; *(v55 + 5) = v22)
    {
LABEL_11:
      while (1)
      {
        v46 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v47 = v169;
        v48 = v162;
        v49 = v154;
        (v169[2])(v162, *(v150 + 48) + v169[9] * (v46 | (v16 << 6)), v154);
        a1 = sub_238031BC4();
        v22 = v50;
        (v47[1])(v48, v49);
        if (v22)
        {
          break;
        }

        if (!v44)
        {
          goto LABEL_13;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        i = sub_237FB5A94(0, *(i + 2) + 1, 1, i);
      }

      v53 = *(i + 2);
      v52 = *(i + 3);
      if (v53 >= v52 >> 1)
      {
        i = sub_237FB5A94((v52 > 1), v53 + 1, 1, i);
      }

      v54 = i;
      *(i + 2) = v53 + 1;
      v55 = &v54[16 * v53];
      *(v55 + 4) = a1;
    }

LABEL_13:
    v4 = v156;
    while (1)
    {
      v51 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      if (v51 >= v45)
      {
        break;
      }

      v44 = *(v41 + 8 * v51);
      ++v16;
      if (v44)
      {
        v16 = v51;
        goto LABEL_11;
      }
    }

    sub_237FA78D4(i);

    v22 = sub_237FA74E0(*(v4 + v159[10]), &qword_27DEE4FF8, &unk_2380343E0);
    v57 = MEMORY[0x277D84FA0];
    v177 = MEMORY[0x277D84FA0];
    v162 = *(v22 + 2);
    if (!v162)
    {
      break;
    }

    v58 = 0;
    i = (v172 + 2);
    v59 = (v172 + 1);
    *&v56 = 136446210;
    v161 = v56;
    v16 = v158;
    v60 = v164;
    v4 = v162;
    while (v58 < *(v22 + 2))
    {
      (v172[2])(v60, v22 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + v172[9] * v58, v16);
      v62 = sub_238031D04();
      sub_237FB5F68(&v173, v62, v61);

      ++v58;
      (*v59)(v60, v16);
      if (v4 == v58)
      {
        v57 = v177;
        v4 = v156;
        goto LABEL_30;
      }
    }

LABEL_97:
    __break(1u);
LABEL_98:
    swift_once();
  }

LABEL_30:

  v177 = v57;
  v63 = *(v4 + v159[15]);
  v66 = *(v63 + 56);
  v65 = v63 + 56;
  v64 = v66;
  v67 = 1 << *(*(v4 + v159[15]) + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & v64;
  v70 = (v67 + 63) >> 6;
  i = *(v4 + v159[15]);

  a1 = 0;
  v165 = MEMORY[0x277D84F90];
  while (v69)
  {
    v4 = v30;
LABEL_40:
    v72 = __clz(__rbit64(v69));
    v69 &= v69 - 1;
    v73 = v169;
    v74 = v160;
    v75 = v154;
    (v169[2])(v160, *(i + 6) + v169[9] * (v72 | (a1 << 6)), v154);
    v16 = sub_238031BC4();
    v77 = v76;
    (v73[1])(v74, v75);
    v30 = v4;
    if (v77)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v165 = sub_237FB5A94(0, *(v165 + 2) + 1, 1, v165);
      }

      v4 = *(v165 + 2);
      v78 = *(v165 + 3);
      if (v4 >= v78 >> 1)
      {
        v165 = sub_237FB5A94((v78 > 1), v4 + 1, 1, v165);
      }

      v79 = v165;
      *(v165 + 2) = v4 + 1;
      v80 = &v79[16 * v4];
      *(v80 + 4) = v16;
      *(v80 + 5) = v77;
    }
  }

  v22 = &off_238033000;
  while (1)
  {
    v71 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      goto LABEL_95;
    }

    if (v71 >= v70)
    {
      break;
    }

    v69 = *(v65 + 8 * v71);
    ++a1;
    if (v69)
    {
      v4 = v30;
      a1 = v71;
      goto LABEL_40;
    }
  }

  sub_237FA78D4(v165);

  v167 = *(v142 + 16);
  if (v167)
  {
    v82 = 0;
    v149 = (*(v141 + 80) + 32) & ~*(v141 + 80);
    *&v166 = v142 + v149;
    v169 = MEMORY[0x277D84F90];
    v142 = (v172 + 1);
    i = *(v141 + 72);
    *&v81 = 136446210;
    v141 = v81;
    v83 = v152;
    v84 = v156;
    v85 = v151;
    v86 = v171;
    do
    {
      v87 = sub_237FA4D64(v166 + i * v82, v86, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      if (v83 & 1) != 0 || !*(v153 + 16) && !*(v150 + 16) && !*(*(v84 + v159[11]) + 16) && !*(*(v84 + v159[16]) + 16) && !*(*(v84 + v159[12]) + 16) && !*(*(v84 + v159[17]) + 16) || (MEMORY[0x28223BE20](v87), *(&v141 - 2) = v86, (sub_237FA7944(sub_237FDFF78, (&v141 - 2), v88)))
      {
        v89 = v177;
        v91 = *v86;
        v90 = v86[1];
        v92 = *(v177 + 16);
        v172 = v82;
        if (v92 && (sub_2380325B4(), sub_238031ED4(), v93 = sub_2380325F4(), v94 = -1 << *(v89 + 32), v95 = v93 & ~v94, ((*(v89 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) != 0))
        {
          v96 = ~v94;
          while (1)
          {
            v97 = (*(v89 + 48) + 16 * v95);
            v98 = *v97 == v91 && v97[1] == v90;
            if (v98 || (sub_2380324E4() & 1) != 0)
            {
              break;
            }

            v95 = (v95 + 1) & v96;
            if (((*(v89 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
            {
              goto LABEL_67;
            }
          }

          v86 = v171;
          v82 = v172;
          *v143 = *&v171[v168[7]] + *v143;
        }

        else
        {
LABEL_67:
          v99 = *(v84 + v159[19]);
          v86 = v171;
          if (v99 & 1) == 0 && ((v100 = &v171[v168[6]], (v101 = *(v100 + 1)) == 0) || (*v100 == v91 ? (v102 = v101 == v90) : (v102 = 0), v102 || (sub_2380324E4())) && *(v86 + v168[7]) <= 0.0)
          {
            v82 = v172;
          }

          else
          {
            v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
            v104 = *(v103 - 8);
            v165 = *(v104 + 56);
            v164 = (v104 + 56);
            (v165)(v85, 1, 1, v103);
            if (v99)
            {
              v105 = v85;
              v106 = v103;
              v162 = v30;
            }

            else
            {
              v107 = v147;
              v174 = v147;
              v175 = MEMORY[0x277D265B0];
              v108 = __swift_allocate_boxed_opaque_existential_1(&v173);
              v145(v108, v146, v107);
              sub_238031D84();
              swift_allocObject();

              v109 = sub_238031D44();
              v110 = v148;
              sub_238031D54();
              if (v30)
              {
                v105 = v85;
                if (qword_280C353A0 != -1)
                {
                  swift_once();
                }

                v106 = v103;
                v111 = sub_238031DB4();
                __swift_project_value_buffer(v111, qword_280C36C80);
                v112 = v30;
                v113 = sub_238031D94();
                v114 = sub_2380320F4();

                if (os_log_type_enabled(v113, v114))
                {
                  v115 = swift_slowAlloc();
                  v162 = v109;
                  v116 = v115;
                  *&v161 = swift_slowAlloc();
                  v173 = v161;
                  *v116 = v141;
                  v176 = v30;
                  v117 = v30;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
                  v118 = sub_238031EB4();
                  v120 = sub_237FDF8EC(v118, v119, &v173);

                  *(v116 + 4) = v120;
                  _os_log_impl(&dword_237FA1000, v113, v114, "Failed to encode application: %{public}s", v116, 0xCu);
                  v121 = v161;
                  __swift_destroy_boxed_opaque_existential_1Tm(v161);
                  MEMORY[0x2383E5E30](v121, -1, -1);
                  MEMORY[0x2383E5E30](v116, -1, -1);
                }

                else
                {
                }

                v162 = 0;
              }

              else
              {
                v162 = 0;
                v122 = v158;
                sub_238031C54();
                v123 = v155;
                sub_238031C64();

                (*v142)(v110, v122);
                sub_237FA5750(v85, &qword_27DEE51C0, &unk_238034790);
                v124 = v85;
                v106 = v103;
                (v165)(v123, 0, 1, v103);
                v105 = v124;
                sub_237FA5AE0(v123, v124, &qword_27DEE51C0, &unk_238034790);
              }

              v86 = v171;
            }

            v125 = v105;
            v126 = v155;
            sub_237FA90E4(v125, v155, &qword_27DEE51C0, &unk_238034790);
            v127 = v168;
            v128 = v168[5];
            v129 = (v86 + v168[6]);
            *&v161 = *v129;
            v130 = v86;
            v131 = v129[1];
            v132 = *(v130 + v168[7]);
            v133 = *(v130 + v168[8]);
            v134 = *(v130 + v168[9]);
            LODWORD(v160) = *(v130 + v168[10]);
            v135 = v163;
            (v165)(v163 + v128, 1, 1, v106);
            v136 = (v135 + v127[6]);
            *v135 = v91;
            v135[1] = v90;

            sub_237FA39BC(v126, v135 + v128, &qword_27DEE51C0, &unk_238034790);
            *v136 = v161;
            v136[1] = v131;
            *(v135 + v127[7]) = v132;
            *(v135 + v127[8]) = v133;
            *(v135 + v127[9]) = v134;
            *(v135 + v127[10]) = v160;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v169 = sub_237FA914C(0, v169[2] + 1, 1, v169);
            }

            v83 = v152;
            v82 = v172;
            v138 = v169[2];
            v137 = v169[3];
            v84 = v156;
            v85 = v151;
            v30 = v162;
            if (v138 >= v137 >> 1)
            {
              v169 = sub_237FA914C((v137 > 1), v138 + 1, 1, v169);
            }

            sub_237FA5750(v85, &qword_27DEE51C0, &unk_238034790);
            v139 = v169;
            v169[2] = v138 + 1;
            sub_237FA93BC(v163, v139 + v149 + v138 * i, type metadata accessor for _DeviceActivityData.ApplicationActivity);
            v86 = v171;
          }
        }
      }

      v82 = (v82 + 1);
      sub_237FA4E2C(v86, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    }

    while (v82 != v167);
  }

  else
  {
    v169 = MEMORY[0x277D84F90];
  }

  return v169;
}

uint64_t sub_237FA90E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_237FA9174(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_237FA9354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FA93BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_237FA9424(int64_t a1, int a2, double *a3, uint64_t a4)
{
  v114 = a4;
  v120 = a3;
  v122 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v123 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v137 = &v111 - v8;
  v131 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v113 = *(v131 - 1);
  v9 = MEMORY[0x28223BE20](v131);
  v130 = (&v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v126 = (&v111 - v11);
  v134 = sub_238031CC4();
  v135 = *(v134 - 8);
  v12 = MEMORY[0x28223BE20](v134);
  *&v121 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  *&v125 = &v111 - v14;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE53F0, &qword_2380350C8);
  v15 = *(v138 - 8);
  v16 = MEMORY[0x28223BE20](v138);
  v119 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v111 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = &v111 - v21;
  swift_beginAccess();
  v23 = qword_27DEE4D00;

  if (v23 != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v24 = sub_238031CE4();
    v25 = __swift_project_value_buffer(v24, qword_27DEE9550);
    v146 = v24;
    v147 = MEMORY[0x277D265B0];
    v26 = __swift_allocate_boxed_opaque_existential_1(&v145);
    v27 = *(v24 - 8);
    v28 = *(v27 + 16);
    v117 = v25;
    v118 = v24;
    v116 = v28;
    v115 = v27 + 16;
    v28(v26, v25, v24);
    sub_238031D34();
    swift_allocObject();
    v29 = sub_238031CF4();
    v30 = type metadata accessor for DeviceActivityFilter(0);
    v31 = *(v30 + 48);
    v128 = a1;
    v112 = *(a1 + v31);
    v32 = sub_237FA74E0(v112, &qword_27DEE4FE8, &unk_238035410);
    v144 = MEMORY[0x277D84FA0];
    v34 = *(v32 + 16);
    v139 = v29;
    v140 = v15;
    v136 = v30;
    v127 = v20;
    v129 = v32;
    v142 = v34;
    if (v34)
    {
      v35 = v32;
      v36 = 0;
      v141 = (v15 + 16);
      *&v33 = 136446210;
      v133 = v33;
      a1 = v138;
      while (v36 < *(v35 + 16))
      {
        (*(v15 + 16))(v22, v35 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v36, a1);
        v38 = sub_238031D24();
        sub_237FB5F68(&v145, v38, v37);

        ++v36;
        (*(v15 + 8))(v22, a1);
        if (v142 == v36)
        {
          v39 = v144;
          v30 = v136;
          goto LABEL_9;
        }
      }

LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v39 = MEMORY[0x277D84FA0];
LABEL_9:
    v144 = v39;
    v40 = *(v128 + *(v30 + 68));
    v41 = v40 + 56;
    v42 = 1 << *(v40 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & *(v40 + 56);
    a1 = (v42 + 63) >> 6;
    *&v133 = v135 + 16;
    v132 = v135 + 8;
    v124 = v40;

    v45 = 0;
    v142 = MEMORY[0x277D84F90];
    if (!v44)
    {
      goto LABEL_14;
    }

    do
    {
LABEL_12:
      while (1)
      {
        v46 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v20 = v135;
        v47 = v125;
        v48 = v134;
        (*(v135 + 2))(v125, *(v124 + 48) + *(v135 + 9) * (v46 | (v45 << 6)), v134);
        v49 = sub_238031CA4();
        v22 = v50;
        v20[1](v47, v48);
        v15 = v140;
        if (v22)
        {
          break;
        }

        if (!v44)
        {
          goto LABEL_14;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v142 = sub_237FB5A94(0, *(v142 + 2) + 1, 1, v142);
      }

      v53 = *(v142 + 2);
      v52 = *(v142 + 3);
      if (v53 >= v52 >> 1)
      {
        v142 = sub_237FB5A94((v52 > 1), v53 + 1, 1, v142);
      }

      v54 = v142;
      *(v142 + 2) = v53 + 1;
      v55 = &v54[16 * v53];
      *(v55 + 4) = v49;
      *(v55 + 5) = v22;
      v15 = v140;
    }

    while (v44);
    while (1)
    {
LABEL_14:
      v51 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if (v51 >= a1)
      {
        break;
      }

      v44 = *(v41 + 8 * v51);
      ++v45;
      if (v44)
      {
        v45 = v51;
        goto LABEL_12;
      }
    }

    sub_237FA78D4(v142);

    v56 = v136;
    v22 = sub_237FA74E0(*(v128 + v136[13]), &qword_27DEE4FE8, &unk_238035410);
    v58 = MEMORY[0x277D84FA0];
    v143 = MEMORY[0x277D84FA0];
    v142 = *(v22 + 16);
    if (!v142)
    {
      break;
    }

    v59 = 0;
    v141 = (v15 + 16);
    *&v57 = 136446210;
    v125 = v57;
    a1 = v138;
    v60 = v127;
    while (v59 < *(v22 + 16))
    {
      (*(v15 + 16))(v60, v22 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v59, a1);
      v62 = sub_238031D24();
      sub_237FB5F68(&v145, v62, v61);

      ++v59;
      (*(v15 + 8))(v60, a1);
      if (v142 == v59)
      {
        v58 = v143;
        v56 = v136;
        goto LABEL_30;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    swift_once();
  }

LABEL_30:

  v143 = v58;
  v63 = *(v128 + v56[18]);
  v65 = *(v63 + 56);
  a1 = v63 + 56;
  v64 = v65;
  v66 = 1 << *(*(v128 + v56[18]) + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v15 = v67 & v64;
  v68 = (v66 + 63) >> 6;
  v142 = *(v128 + v56[18]);

  v22 = 0;
  v141 = MEMORY[0x277D84F90];
  if (!v15)
  {
    goto LABEL_35;
  }

  do
  {
LABEL_33:
    while (1)
    {
      v69 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = v135;
      v70 = v121;
      v71 = v134;
      (*(v135 + 2))(v121, *(v142 + 6) + *(v135 + 9) * (v69 | (v22 << 6)), v134);
      v72 = sub_238031CA4();
      v74 = v73;
      v20[1](v70, v71);
      if (v74)
      {
        break;
      }

      if (!v15)
      {
        goto LABEL_35;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v141 = sub_237FB5A94(0, *(v141 + 2) + 1, 1, v141);
    }

    v77 = *(v141 + 2);
    v76 = *(v141 + 3);
    if (v77 >= v76 >> 1)
    {
      v141 = sub_237FB5A94((v76 > 1), v77 + 1, 1, v141);
    }

    v78 = v141;
    *(v141 + 2) = v77 + 1;
    v79 = &v78[16 * v77];
    *(v79 + 4) = v72;
    *(v79 + 5) = v74;
  }

  while (v15);
  while (1)
  {
LABEL_35:
    v75 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_69;
    }

    if (v75 >= v68)
    {
      break;
    }

    v15 = *(a1 + 8 * v75);
    ++v22;
    if (v15)
    {
      v22 = v75;
      goto LABEL_33;
    }
  }

  sub_237FA78D4(v141);

  v81 = *(v114 + 16);
  if (v81)
  {
    v127 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v82 = v114 + v127;
    v142 = *(v113 + 72);
    v83 = MEMORY[0x277D84F90];
    *&v125 = v140 + 8;
    *&v80 = 136446210;
    v121 = v80;
    v84 = v122;
    v85 = v128;
    v86 = v126;
    v141 = "mber";
    do
    {
      sub_237FA4D64(v82, v86, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v88 = *v86;
      v87 = v86[1];
      v89 = sub_238031F04();
      if ((v89 & 1) == 0)
      {
        if (v84 & 1) != 0 || !*(*(v85 + v136[9]) + 16) && !*(*(v85 + v136[14]) + 16) && !*(*(v85 + v136[11]) + 16) && !*(*(v85 + v136[16]) + 16) && !*(v112 + 16) && !*(v124 + 16) || (MEMORY[0x28223BE20](v89), *(&v111 - 2) = v86, v89 = sub_237FA7944(sub_237FE0050, (&v111 - 4), v90), (v89))
        {
          MEMORY[0x28223BE20](v89);
          *(&v111 - 2) = v86;
          if (sub_237FA7944(sub_237FDFF1C, (&v111 - 4), v91))
          {
            *v120 = *(v86 + v131[6]) + *v120;
          }

          else
          {
            v92 = v85;
            v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
            v94 = *(v93 - 8);
            v140 = *(v94 + 56);
            v135 = (v94 + 56);
            v140(v137, 1, 1, v93);
            v95 = *(v92 + v136[19]);
            *&v133 = v83;
            v132 = v88;
            v129 = v93;
            if ((v95 & 1) == 0)
            {
              v96 = v118;
              v146 = v118;
              v147 = MEMORY[0x277D265B0];
              v97 = __swift_allocate_boxed_opaque_existential_1(&v145);
              v116(v97, v117, v96);
              sub_238031D84();
              swift_allocObject();

              sub_238031D44();
              v98 = v119;
              sub_238031D74();
              v99 = v138;
              sub_238031C54();
              v100 = v123;
              sub_238031C64();

              (*v125)(v98, v99);
              v101 = v137;
              sub_237FA5750(v137, &qword_27DEE51B0, &qword_2380343D0);
              v140(v100, 0, 1, v93);
              sub_237FA5AE0(v100, v101, &qword_27DEE51B0, &qword_2380343D0);
              v86 = v126;
            }

            v102 = v123;
            sub_237FA90E4(v137, v123, &qword_27DEE51B0, &qword_2380343D0);
            v103 = v131;
            v104 = v131[5];
            v105 = *(v86 + v131[6]);
            v106 = *(v86 + v131[7]);
            v107 = v130;
            v140(v130 + v104, 1, 1, v129);
            *v107 = v132;
            v107[1] = v87;

            sub_237FA39BC(v102, v107 + v104, &qword_27DEE51B0, &qword_2380343D0);
            *(v107 + v103[6]) = v105;
            *(v107 + v103[7]) = v106;
            v83 = v133;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v83 = sub_237FAD5A4(0, v83[2] + 1, 1, v83);
            }

            v84 = v122;
            v85 = v128;
            v109 = v83[2];
            v108 = v83[3];
            if (v109 >= v108 >> 1)
            {
              v83 = sub_237FAD5A4((v108 > 1), v109 + 1, 1, v83);
            }

            sub_237FA5750(v137, &qword_27DEE51B0, &qword_2380343D0);
            v83[2] = v109 + 1;
            sub_237FA93BC(v130, v83 + v127 + v109 * v142, type metadata accessor for _DeviceActivityData.WebDomainActivity);
            v86 = v126;
          }
        }
      }

      sub_237FA4E2C(v86, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v82 += v142;
      --v81;
    }

    while (v81);
  }

  else
  {
    v83 = MEMORY[0x277D84F90];
  }

  return v83;
}

uint64_t sub_237FAA864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_237FAA928(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *))
{
  v7 = *(a2(0) - 8);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a3(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11[1] = v9;
  result = a4(v11);
  *a1 = v8;
  return result;
}

void *sub_237FAA9EC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_237FAAC14(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_2380324B4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
        v6 = sub_238031FD4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for _DeviceActivityData.ApplicationActivity(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_237FCF178(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_237FAAD40(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_237FAAD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_237FA4CFC(v24, v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      sub_237FA4CFC(v21, v14, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v25 = *(v8 + 28);
      v26 = *&v18[v25];
      v27 = *&v14[v25];
      sub_237FA4DCC(v14, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      result = sub_237FA4DCC(v18, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_237FA9354(v24, v11, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_237FA9354(v11, v21, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_237FAB024(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2380324B4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
        v6 = sub_238031FD4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for _DeviceActivityData.WebDomainActivity(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_237FCFAA0(v8, v9, a1, v4, type metadata accessor for _DeviceActivityData.WebDomainActivity, type metadata accessor for _DeviceActivityData.WebDomainActivity, type metadata accessor for _DeviceActivityData.WebDomainActivity, type metadata accessor for _DeviceActivityData.WebDomainActivity, sub_237FDC798);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_237FAD5CC(0, v2, 1, a1, type metadata accessor for _DeviceActivityData.WebDomainActivity, type metadata accessor for _DeviceActivityData.WebDomainActivity, type metadata accessor for _DeviceActivityData.WebDomainActivity);
  }

  return result;
}

uint64_t sub_237FAB208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FAB270(uint64_t a1)
{
  v2 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _DeviceActivityData.ActivitySegment.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _DeviceActivityData.ActivitySegment(0) + 24);
  v4 = sub_238031654();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _DeviceActivityData.ActivitySegment.categoryActivities.getter()
{
  type metadata accessor for _DeviceActivityData.ActivitySegment(0);
}

uint64_t _DeviceActivityData.CategoryActivity.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_237FAB488@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54E8, &qword_2380358A0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v14[-v7];
  if (qword_280C35270 != -1)
  {
    v13 = v6;
    swift_once();
    v6 = v13;
  }

  v9 = __swift_project_value_buffer(v6, qword_280C35278);
  swift_beginAccess();
  sub_237FA90E4(v9, v8, &qword_27DEE54E8, &qword_2380358A0);
  v10 = type metadata accessor for _DeviceActivityData.User(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_237FAB70C(v8, a1, type metadata accessor for _DeviceActivityData.User);
  }

  sub_237FA5750(v8, &qword_27DEE54E8, &qword_2380358A0);
  DeviceActivityDataSource.localUser.getter(a1);
  sub_237FFD060(a1, v5, type metadata accessor for _DeviceActivityData.User);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_237FA39BC(v5, v9, &qword_27DEE54E8, &qword_2380358A0);
  return swift_endAccess();
}

uint64_t sub_237FAB70C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FAB774(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_237FAB7D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityDataStore.localDeviceIdentifier()()
{
  v2 = sub_238031AB4();
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_238031994();
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v0[8];
  [v32 lock];
  v8 = v0[3];
  v9 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v8);
  (*(v9 + 16))(v8, v9);
  v10 = sub_237FABF30(v7);
  if (!v1)
  {
    v9 = v10;
    v8 = v11;
    goto LABEL_9;
  }

  v34 = v1;
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
  if (!swift_dynamicCast() || v33)
  {
LABEL_19:
    (*(v5 + 8))(v7, v31);

    [v32 unlock];
    goto LABEL_20;
  }

  if (qword_280C353A8 != -1)
  {
    swift_once();
  }

  if (![swift_getObjCClassFromMetadata() isAuthorized])
  {
    if (qword_280C353A0 != -1)
    {
      swift_once();
    }

    v19 = sub_238031DB4();
    __swift_project_value_buffer(v19, qword_280C36C80);
    v20 = sub_238031D94();
    v21 = sub_2380320F4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_237FA1000, v20, v21, "Failed to generate a new identifier because DeviceActivity is unavailable", v22, 2u);
      MEMORY[0x2383E5E30](v22, -1, -1);
    }

    sub_237FAC9F0(v23, v24, v25);
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    goto LABEL_19;
  }

  sub_238031AA4();
  v9 = sub_238031A74();
  v8 = v13;
  (*(v30 + 8))(v4, v2);

  sub_23800217C(v9, v8, v7);

LABEL_9:
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v14 = sub_238031DB4();
  __swift_project_value_buffer(v14, qword_280C36C80);

  v15 = sub_238031D94();
  v16 = sub_2380320E4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v34 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_237FDF8EC(v9, v8, &v34);
    _os_log_impl(&dword_237FA1000, v15, v16, "Local device identifier is %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2383E5E30](v18, -1, -1);
    MEMORY[0x2383E5E30](v17, -1, -1);
  }

  (*(v5 + 8))(v7, v31);
  [v32 unlock];
LABEL_20:
  v27 = v9;
  v28 = v8;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_237FABD7C()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_2380318F4();
  return (v7)(v6, v0);
}

id sub_237FABF30(uint64_t a1)
{
  v3 = v2;
  v5 = sub_238031994();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v1;
  v9 = *(v1 + 64);
  [v9 lock];
  if (qword_280C353A0 != -1)
  {
    swift_once();
  }

  v10 = sub_238031DB4();
  __swift_project_value_buffer(v10, qword_280C36C80);
  v11 = *(v6 + 16);
  v37 = a1;
  v11(v8, a1, v5);
  v12 = sub_238031D94();
  v13 = sub_2380320E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = v9;
    v15 = v14;
    v34 = swift_slowAlloc();
    v38 = v34;
    *v15 = 136446210;
    sub_238011FC8(&qword_280C35040, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v16 = sub_2380324C4();
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = sub_237FDF8EC(v16, v18, &v38);
    v3 = v2;

    *(v15 + 4) = v19;
    _os_log_impl(&dword_237FA1000, v12, v13, "Reading object from URL %{public}s", v15, 0xCu);
    v20 = v34;
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x2383E5E30](v20, -1, -1);
    v21 = v15;
    v9 = v35;
    MEMORY[0x2383E5E30](v21, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v22 = *(v36 + 56);
  sub_238031964();
  v23 = sub_238031E74();

  v24 = [v22 fileExistsAtPath_];

  if (!v24)
  {
    sub_237FAC9F0(v25, v26, v27);
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
    goto LABEL_10;
  }

  v28 = sub_2380319A4();
  if (v3)
  {
LABEL_10:
    [v9 unlock];
    return v24;
  }

  v30 = v28;
  v31 = v29;
  v24 = sub_237FAC2C0(v28, v29);
  sub_237FA5048(v30, v31);
  [v9 unlock];
  return v24;
}

uint64_t sub_237FAC2C0(uint64_t a1, uint64_t a2)
{
  sub_238031774();
  swift_allocObject();
  sub_238031764();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE55F0, &qword_238035C58);
  sub_237FAC418(&qword_280C350F0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_238031754();
  if (v2)
  {
    goto LABEL_6;
  }

  if (!*(v11 + 16) || (v4 = sub_237FA4E8C(0x65756C6176, 0xE500000000000000), (v5 & 1) == 0))
  {

    sub_237FAC9F0(v6, v7, v8);
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
LABEL_6:

    return a2;
  }

  a2 = *(*(v11 + 56) + 16 * v4);

  return a2;
}

uint64_t sub_237FAC418(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE55F0, &qword_238035C58);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237FAC484@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v5 = v4;
  v9 = sub_238031994();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = v5[3];
  v15 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v14);
  v18 = v13;
  (*(v15 + 72))(&v18, a2, a3, v14, v15);
  sub_238000CE8(v12, type metadata accessor for _DeviceActivityData.ActivitySegment, sub_23800CC10, type metadata accessor for _DeviceActivityData.ActivitySegment, v17);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_237FAC614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  sub_237FAC7A4(v5);
  sub_2380318F4();
  v13 = *(v7 + 8);
  v13(v10, v6);
  v15[0] = a2;
  v15[1] = a3;

  MEMORY[0x2383E5050](0x7473696C702ELL, 0xE600000000000000);
  sub_2380318F4();

  return (v13)(v12, v6);
}

uint64_t sub_237FAC7A4(char a1)
{
  v1 = sub_238031994();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v11 = *(v2 + 8);
  v11(v5, v1);
  sub_2380318F4();
  v11(v8, v1);
  sub_2380318F4();

  return (v11)(v10, v1);
}

unint64_t sub_237FAC9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C353B0;
  if (!qword_280C353B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C353B0);
  }

  return result;
}

uint64_t sub_237FACA4C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v10 = sub_238031994();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v22 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - v18;
  sub_237FACC88(a3, a4, v14);
  sub_2380318F4();

  v20 = *(v11 + 8);
  v20(v14, v10);
  sub_2380318F4();
  v20(v17, v10);
  v26 = v23;
  v27 = v24;

  MEMORY[0x2383E5050](0x7473696C702ELL, 0xE600000000000000);
  sub_2380318F4();

  return (v20)(v19, v10);
}

uint64_t sub_237FACC88@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[2] = a3;
  v20[3] = a4;
  v20[1] = a5;
  v5 = sub_238031994();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v20 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v20 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v20 - v16;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v18 = *(v6 + 8);
  v18(v9, v5);
  sub_2380318F4();
  v18(v12, v5);
  sub_2380318F4();
  v18(v15, v5);
  sub_2380318F4();
  return (v18)(v17, v5);
}

uint64_t _DeviceActivityData.WebDomainActivity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5458, &qword_238035428);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 20);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v15 = *(*(v14 - 8) + 56);
  v30 = v13;
  v15(v12 + v13, 1, 1, v14);
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FAD2A4(v16, v17, v18);
  v19 = v29;
  sub_238032604();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_237FA5750(v12 + v30, &qword_27DEE51B0, &qword_2380343D0);
  }

  else
  {
    v20 = v27;
    v34 = 0;
    *v12 = sub_2380323F4();
    v12[1] = v21;
    v29 = v21;
    v33 = 1;
    sub_237FAD424(&qword_280C34AD8, MEMORY[0x277CD4B10]);
    sub_2380323E4();
    sub_237FAD474(v5, v12 + v30);
    v32 = 2;
    sub_238032414();
    *(v12 + *(v9 + 24)) = v22;
    v31 = 3;
    v23 = sub_238032404();
    (*(v20 + 8))(v8, v28);
    *(v12 + *(v9 + 28)) = v23 & 1;
    sub_237FAD4E4(v12, v26);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_237FAD548(v12);
  }
}

unint64_t sub_237FAD2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C34FA8;
  if (!qword_280C34FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34FA8);
  }

  return result;
}

unint64_t sub_237FAD2F8()
{
  v1 = 0x6E69616D6F64;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0x6574737572547369;
  }

  if (*v0)
  {
    v1 = 0x6E656B6F74;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t _s6DeviceV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_237FAD424(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE4FE8, &unk_238035410);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237FAD474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237FAD4E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237FAD548(uint64_t a1)
{
  v2 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237FAD5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v44 = a7;
  v12 = a5(0);
  v13 = MEMORY[0x28223BE20](v12);
  v43 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  result = MEMORY[0x28223BE20](v15);
  v21 = &v34 - v20;
  v36 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v41 = -v23;
    v42 = v22;
    v25 = a1 - a3;
    v35 = v23;
    v26 = v22 + v23 * a3;
LABEL_5:
    v39 = v24;
    v40 = a3;
    v37 = v26;
    v38 = v25;
    v27 = v25;
    while (1)
    {
      sub_237FA4CFC(v26, v21, a6);
      sub_237FA4CFC(v24, v17, a6);
      v28 = *(v12 + 24);
      v29 = *&v21[v28];
      v30 = *&v17[v28];
      sub_237FA4DCC(v17, a6);
      result = sub_237FA4DCC(v21, a6);
      if (v30 >= v29)
      {
LABEL_4:
        a3 = v40 + 1;
        v24 = v39 + v35;
        v25 = v38 - 1;
        v26 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v31 = v43;
      v32 = v44;
      sub_237FA9354(v26, v43, v44);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_237FA9354(v31, v24, v32);
      v24 += v41;
      v26 += v41;
      if (__CFADD__(v27++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

_DWORD *sub_237FAD828@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_237FAD84C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238031EA4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_237FAD8C0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_237FAD8CC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_237FAD940@<X0>(_BYTE *a1@<X8>)
{
  result = _s14DeviceActivity0aB13AuthorizationC12isOverriddenSbvgZ_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_237FAD974()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237FAD9B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237FAD9E8()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_237FADA84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237FADABC()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_237FADB28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DeviceActivityData.User(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_238031A64();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_237FADCA0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for DeviceActivityData.User(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_238031A64();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_237FADE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _DeviceActivityData.Metadata(0);
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

uint64_t sub_237FADED4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for _DeviceActivityData.Metadata(0);
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

uint64_t sub_237FADF8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for _DeviceActivityData.User(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_238031A64();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_237FAE0B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for _DeviceActivityData.User(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_238031A64();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_237FAE1D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_238031654();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_237FAE340(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_238031654();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_237FAE4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238031BE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_237FAE574(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238031BE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 1;
  }

  return result;
}

uint64_t sub_237FAE62C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_237FAE6E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237FAE798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238031C44();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_237FAE854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238031C44();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_237FAE90C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_237FAE9C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237FAEA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238031CC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_237FAEB44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238031CC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_237FAEBFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_237FAECB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237FAED68()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_237FAEDB8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237FAEDF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_237FAEE28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54E0, &qword_238035898);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_237FAEED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_237FAEF94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_237FAF04C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 19);

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_237FAF0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DeviceActivityFilter(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_237FAF150(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DeviceActivityFilter(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_237FAF1F4(void *a1, id a2)
{
  v3 = [a2 identifier];
  sub_238024F48(a1, v3);
}

uint64_t sub_237FAF260()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237FAF298()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_237FAF320()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237FAF3CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

uint64_t sub_237FAF428(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_238031654();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_238031B94();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_237FAF54C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_238031654();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_238031B94();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_237FAF670(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_238031654();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_238031B94();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_237FAF7E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_238031994();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_238031654();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v15 = sub_238031B94();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_237FAF960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = sub_238031A64();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_238031B94();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_237FAFA90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v8 = sub_238031A64();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_238031B94();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_237FAFBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238031A64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_238031B94();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_237FAFCDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238031A64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_238031B94();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_237FAFE04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_237FAFE54@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27DEE58A0;
  return result;
}

uint64_t sub_237FAFEA0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27DEE58A0 = v1;
  return result;
}

uint64_t sub_237FAFEE8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27DEE58A1;
  return result;
}

uint64_t sub_237FAFF34(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27DEE58A1 = v1;
  return result;
}

uint64_t sub_237FAFF7C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27DEE58A2;
  return result;
}

uint64_t sub_237FAFFC8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27DEE58A2 = v1;
  return result;
}

uint64_t sub_237FB0034(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_237FB004C@<X0>(void *a1@<X8>)
{
  result = [*v1 aa_primaryAppleAccount];
  v4 = result;
  if (result)
  {
    result = sub_237FB0D3C();
    v5 = &off_284AE4A38;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_237FB00EC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_238031EA4();

  return v6;
}

uint64_t sub_237FB0220(uint64_t a1)
{
  v2 = sub_237FB0A38(&qword_27DEE4F38, type metadata accessor for USError, &unk_238033810);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_237FB028C(uint64_t a1)
{
  v2 = sub_237FB0A38(&qword_27DEE4F38, type metadata accessor for USError, &unk_238033810);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_237FB02FC(uint64_t a1)
{
  v2 = sub_237FB0A38(&qword_27DEE4F70, type metadata accessor for USError, &unk_238033850);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_237FB0370(uint64_t a1, id *a2)
{
  result = sub_238031E84();
  *a2 = 0;
  return result;
}

uint64_t sub_237FB03E8(uint64_t a1, id *a2)
{
  v3 = sub_238031E94();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_237FB0468@<X0>(uint64_t *a2@<X8>)
{
  sub_238031EA4();
  v3 = sub_238031E74();

  *a2 = v3;
  return result;
}

uint64_t sub_237FB04AC()
{
  v0 = sub_238031EA4();
  v1 = MEMORY[0x2383E5080](v0);

  return v1;
}

uint64_t sub_237FB04E8(uint64_t a1)
{
  sub_238031EA4();
  sub_238031ED4();
}

uint64_t sub_237FB053C(uint64_t a1)
{
  sub_238031EA4();
  sub_2380325B4();
  sub_238031ED4();
  v1 = sub_2380325F4();

  return v1;
}

uint64_t sub_237FB05D4(uint64_t a1)
{
  v2 = sub_237FB0A38(&qword_27DEE4F70, type metadata accessor for USError, &unk_238033850);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_237FB0640(uint64_t a1)
{
  v2 = sub_237FB0A38(&qword_27DEE4F70, type metadata accessor for USError, &unk_238033850);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_237FB06AC(void *a1, uint64_t a2)
{
  v4 = sub_237FB0A38(&qword_27DEE4F70, type metadata accessor for USError, &unk_238033850);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_237FB0760(uint64_t a1, uint64_t a2)
{
  v4 = sub_237FB0A38(&qword_27DEE4F70, type metadata accessor for USError, &unk_238033850);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_237FB07DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2380325B4();
  sub_238031E34();
  return sub_2380325F4();
}

void *sub_237FB083C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_237FB0864(void *a1, uint64_t *a2)
{
  v2 = sub_238031EA4();
  v4 = v3;
  if (v2 == sub_238031EA4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2380324E4();
  }

  return v7 & 1;
}

uint64_t sub_237FB08EC(uint64_t a1)
{
  v2 = sub_237FB0A38(&qword_27DEE4DE0, type metadata accessor for Identifier, "9i J\\c");
  v3 = sub_237FB0A38(&unk_27DEE4DE8, type metadata accessor for Identifier, &unk_2380333C8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_237FB0A38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237FB0A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237FB0A38(&qword_27DEE4F70, type metadata accessor for USError, &unk_238033850);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_237FB0B18@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_238031E74();

  *a2 = v3;
  return result;
}

uint64_t sub_237FB0B60(uint64_t a1)
{
  v2 = sub_237FB0A38(&qword_27DEE4DD0, type metadata accessor for URLResourceKey, &unk_23803353C);
  v3 = sub_237FB0A38(&qword_27DEE4DD8, type metadata accessor for URLResourceKey, &unk_2380334DC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_237FB0D3C()
{
  result = qword_280C350B0;
  if (!qword_280C350B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C350B0);
  }

  return result;
}

void sub_237FB0F2C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_237FB0FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE4F60;
  if (!qword_27DEE4F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE4F60);
  }

  return result;
}

uint64_t DeviceActivityName.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeviceActivityName.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeviceActivitySchedule.init(intervalStart:intervalEnd:repeats:warningTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v27 = a3;
  v29 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE0, &unk_238033970);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26[-v9];
  v11 = sub_2380316C4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v26[-v16];
  v18 = *(v12 + 16);
  v28 = a1;
  v18(&v26[-v16], a1, v11);
  v18(v15, a2, v11);
  sub_237FB1448(a4, v10);
  v19 = sub_238031694();
  v20 = sub_238031694();
  v21 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v21 = sub_238031694();
    (*(v12 + 8))(v10, v11);
  }

  v22 = objc_allocWithZone(MEMORY[0x277D77B20]);
  v23 = [v22 initWithIntervalStart:v19 intervalEnd:v20 repeats:v27 & 1 warningTime:v21];

  sub_237FB14B8(a4);
  v24 = *(v12 + 8);
  v24(a2, v11);
  v24(v28, v11);
  v24(v15, v11);
  result = (v24)(v17, v11);
  *v29 = v23;
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

uint64_t sub_237FB1448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE0, &unk_238033970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237FB14B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE0, &unk_238033970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237FB15C4@<X0>(SEL *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = [*v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

unint64_t sub_237FB1680()
{
  result = qword_280C349F0;
  if (!qword_280C349F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C349F0);
  }

  return result;
}

uint64_t sub_237FB16EC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2380324E4();
  }
}

uint64_t sub_237FB171C()
{
  sub_2380325B4();
  sub_238031ED4();
  return sub_2380325F4();
}

uint64_t sub_237FB1768(uint64_t a1)
{
  sub_2380325B4();
  sub_238031ED4();
  return sub_2380325F4();
}

uint64_t DeviceActivityEvent.init(applications:categories:webDomains:threshold:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v84 = a5;
  v85 = a4;
  v97 = a3;
  v98 = a2;
  v6 = sub_2380316C4();
  v82 = *(v6 - 8);
  v83 = v6;
  MEMORY[0x28223BE20](v6);
  v81 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v94 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v81 - v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v95 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = &v81 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v10 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = &v81 - v11;
  v12 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  v90 = v10 + 8;
  v91 = v10 + 16;
  v96 = a1;

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  if (v15)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v20 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v20);
    ++v18;
    if (v15)
    {
      v18 = v20;
      do
      {
LABEL_8:
        v22 = v92;
        v21 = v93;
        (*(v10 + 16))(v92, *(v96 + 48) + *(v10 + 72) * (__clz(__rbit64(v15)) | (v18 << 6)), v93);
        v23 = sub_238031C54();
        v25 = v24;
        (*(v10 + 8))(v22, v21);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5BA0(0, *(v19 + 16) + 1, 1, v19);
          v19 = result;
        }

        v27 = *(v19 + 16);
        v26 = *(v19 + 24);
        if (v27 >= v26 >> 1)
        {
          result = sub_237FB5BA0((v26 > 1), v27 + 1, 1, v19);
          v19 = result;
        }

        v15 &= v15 - 1;
        *(v19 + 16) = v27 + 1;
        v28 = v19 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
      }

      while (v15);
    }
  }

  v92 = sub_237FBC874(v19, v29, v30);

  v31 = v98 + 56;
  v32 = 1 << *(v98 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v98 + 56);
  v35 = (v32 + 63) >> 6;
  v96 = v95 + 16;
  v93 = v95 + 8;

  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  if (v34)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v35)
    {

      v95 = sub_237FBC874(v37, v48, v49);

      v50 = v97 + 56;
      v51 = 1 << *(v97 + 32);
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v53 = v52 & *(v97 + 56);
      v54 = (v51 + 63) >> 6;
      v98 = v94 + 16;
      v96 = v94 + 8;

      v55 = 0;
      v56 = MEMORY[0x277D84F90];
      if (v53)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v57 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v57 >= v54)
        {

          sub_237FBC874(v56, v67, v68);

          v69 = v81;
          v70 = v82;
          v71 = v83;
          (*(v82 + 16))(v81, v85, v83);
          v72 = objc_allocWithZone(MEMORY[0x277D77B18]);
          sub_237FBC910(v72, v73, v74);
          v75 = sub_238032064();

          v76 = sub_238032064();

          v77 = sub_238032064();

          v78 = sub_238031694();
          v79 = [v72 initWithApplicationTokens:v75 categoryTokens:v76 webDomainTokens:v77 threshold:v78 includesPastActivity:0];

          v80 = *(v70 + 8);
          v80(v85, v71);
          result = (v80)(v69, v71);
          *v84 = v79;
          return result;
        }

        v53 = *(v50 + 8 * v57);
        ++v55;
        if (v53)
        {
          v55 = v57;
          do
          {
LABEL_34:
            v58 = v94;
            v59 = v86;
            v60 = v87;
            (*(v94 + 16))(v86, *(v97 + 48) + *(v94 + 72) * (__clz(__rbit64(v53)) | (v55 << 6)), v87);
            v61 = sub_238031C54();
            v63 = v62;
            (*(v58 + 8))(v59, v60);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_237FB5BA0(0, *(v56 + 16) + 1, 1, v56);
              v56 = result;
            }

            v65 = *(v56 + 16);
            v64 = *(v56 + 24);
            if (v65 >= v64 >> 1)
            {
              result = sub_237FB5BA0((v64 > 1), v65 + 1, 1, v56);
              v56 = result;
            }

            v53 &= v53 - 1;
            *(v56 + 16) = v65 + 1;
            v66 = v56 + 16 * v65;
            *(v66 + 32) = v61;
            *(v66 + 40) = v63;
          }

          while (v53);
        }
      }

      goto LABEL_43;
    }

    v34 = *(v31 + 8 * v38);
    ++v36;
    if (v34)
    {
      v36 = v38;
      do
      {
LABEL_21:
        v39 = v95;
        v40 = v88;
        v41 = v89;
        (*(v95 + 16))(v88, *(v98 + 48) + *(v95 + 72) * (__clz(__rbit64(v34)) | (v36 << 6)), v89);
        v42 = sub_238031C54();
        v44 = v43;
        (*(v39 + 8))(v40, v41);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5BA0(0, *(v37 + 16) + 1, 1, v37);
          v37 = result;
        }

        v46 = *(v37 + 16);
        v45 = *(v37 + 24);
        if (v46 >= v45 >> 1)
        {
          result = sub_237FB5BA0((v45 > 1), v46 + 1, 1, v37);
          v37 = result;
        }

        v34 &= v34 - 1;
        *(v37 + 16) = v46 + 1;
        v47 = v37 + 16 * v46;
        *(v47 + 32) = v42;
        *(v47 + 40) = v44;
      }

      while (v34);
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.init(applications:categories:webDomains:threshold:includesPastActivity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v83 = a5;
  v87 = a6;
  v88 = a4;
  v100 = a3;
  v101 = a2;
  v7 = sub_2380316C4();
  v85 = *(v7 - 8);
  v86 = v7;
  MEMORY[0x28223BE20](v7);
  v84 = &v82[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v97 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v82[-v9];
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v98 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v82[-v10];
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v11 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v82[-v12];
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v93 = v11 + 8;
  v94 = v11 + 16;
  v99 = a1;

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  if (v16)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v21 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v19;
    if (v16)
    {
      v19 = v21;
      do
      {
LABEL_8:
        v22 = v95;
        v23 = v96;
        (*(v11 + 16))(v95, *(v99 + 48) + *(v11 + 72) * (__clz(__rbit64(v16)) | (v19 << 6)), v96);
        v24 = sub_238031C54();
        v26 = v25;
        (*(v11 + 8))(v22, v23);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5BA0(0, *(v20 + 16) + 1, 1, v20);
          v20 = result;
        }

        v28 = *(v20 + 16);
        v27 = *(v20 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_237FB5BA0((v27 > 1), v28 + 1, 1, v20);
          v20 = result;
        }

        v16 &= v16 - 1;
        *(v20 + 16) = v28 + 1;
        v29 = v20 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
      }

      while (v16);
    }
  }

  v95 = sub_237FBC874(v20, v30, v31);

  v32 = v101 + 56;
  v33 = 1 << *(v101 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v101 + 56);
  v36 = (v33 + 63) >> 6;
  v99 = v98 + 16;
  v96 = v98 + 8;

  v37 = 0;
  v38 = MEMORY[0x277D84F90];
  if (v35)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v39 >= v36)
    {

      v98 = sub_237FBC874(v38, v49, v50);

      v51 = v100 + 56;
      v52 = 1 << *(v100 + 32);
      v53 = -1;
      if (v52 < 64)
      {
        v53 = ~(-1 << v52);
      }

      v54 = v53 & *(v100 + 56);
      v55 = (v52 + 63) >> 6;
      v101 = v97 + 16;
      v99 = v97 + 8;

      v56 = 0;
      v57 = MEMORY[0x277D84F90];
      if (v54)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v58 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          break;
        }

        if (v58 >= v55)
        {

          sub_237FBC874(v57, v68, v69);

          v70 = v84;
          v71 = v85;
          v72 = v86;
          (*(v85 + 16))(v84, v88, v86);
          v73 = objc_allocWithZone(MEMORY[0x277D77B18]);
          sub_237FBC910(v73, v74, v75);
          v76 = sub_238032064();

          v77 = sub_238032064();

          v78 = sub_238032064();

          v79 = sub_238031694();
          v80 = [v73 initWithApplicationTokens:v76 categoryTokens:v77 webDomainTokens:v78 threshold:v79 includesPastActivity:v83 & 1];

          v81 = *(v71 + 8);
          v81(v88, v72);
          result = (v81)(v70, v72);
          *v87 = v80;
          return result;
        }

        v54 = *(v51 + 8 * v58);
        ++v56;
        if (v54)
        {
          v56 = v58;
          do
          {
LABEL_34:
            v59 = v97;
            v60 = v89;
            v61 = v90;
            (*(v97 + 16))(v89, *(v100 + 48) + *(v97 + 72) * (__clz(__rbit64(v54)) | (v56 << 6)), v90);
            v62 = sub_238031C54();
            v64 = v63;
            (*(v59 + 8))(v60, v61);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_237FB5BA0(0, *(v57 + 16) + 1, 1, v57);
              v57 = result;
            }

            v66 = *(v57 + 16);
            v65 = *(v57 + 24);
            if (v66 >= v65 >> 1)
            {
              result = sub_237FB5BA0((v65 > 1), v66 + 1, 1, v57);
              v57 = result;
            }

            v54 &= v54 - 1;
            *(v57 + 16) = v66 + 1;
            v67 = v57 + 16 * v66;
            *(v67 + 32) = v62;
            *(v67 + 40) = v64;
          }

          while (v54);
        }
      }

      goto LABEL_43;
    }

    v35 = *(v32 + 8 * v39);
    ++v37;
    if (v35)
    {
      v37 = v39;
      do
      {
LABEL_21:
        v40 = v98;
        v41 = v91;
        v42 = v92;
        (*(v98 + 16))(v91, *(v101 + 48) + *(v98 + 72) * (__clz(__rbit64(v35)) | (v37 << 6)), v92);
        v43 = sub_238031C54();
        v45 = v44;
        (*(v40 + 8))(v41, v42);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5BA0(0, *(v38 + 16) + 1, 1, v38);
          v38 = result;
        }

        v47 = *(v38 + 16);
        v46 = *(v38 + 24);
        if (v47 >= v46 >> 1)
        {
          result = sub_237FB5BA0((v46 > 1), v47 + 1, 1, v38);
          v38 = result;
        }

        v35 &= v35 - 1;
        *(v38 + 16) = v47 + 1;
        v48 = v38 + 16 * v47;
        *(v48 + 32) = v43;
        *(v48 + 40) = v45;
      }

      while (v35);
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.init(applications:exemptApplications:categories:webDomains:threshold:includesPastActivity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v106 = a6;
  v110 = a7;
  v111 = a5;
  v121 = a4;
  v122 = a3;
  v123 = a2;
  v8 = sub_2380316C4();
  v108 = *(v8 - 8);
  v109 = v8;
  MEMORY[0x28223BE20](v8);
  v107 = &v105[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v118 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v105[-v10];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v119 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v105[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v13 = MEMORY[0x28223BE20](v12);
  v116 = &v105[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v105[-v16];
  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v125 = v15 + 16;
  v126 = v15;
  v124 = (v15 + 8);
  v120 = a1;

  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  v117 = v12;
  if (v21)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v26 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v26);
    ++v24;
    if (v21)
    {
      v24 = v26;
      do
      {
LABEL_8:
        v27 = v126;
        (*(v126 + 2))(v17, *(v120 + 48) + *(v126 + 9) * (__clz(__rbit64(v21)) | (v24 << 6)), v12);
        v28 = sub_238031C54();
        v30 = v29;
        (*(v27 + 1))(v17, v12);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5BA0(0, *(v25 + 16) + 1, 1, v25);
          v25 = result;
        }

        v32 = *(v25 + 16);
        v31 = *(v25 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_237FB5BA0((v31 > 1), v32 + 1, 1, v25);
          v25 = result;
        }

        v21 &= v21 - 1;
        *(v25 + 16) = v32 + 1;
        v33 = v25 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v30;
        v12 = v117;
      }

      while (v21);
    }
  }

  v120 = sub_237FBC874(v25, v34, v35);

  v36 = v123 + 56;
  v37 = 1 << *(v123 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v123 + 56);
  v40 = (v37 + 63) >> 6;

  v41 = 0;
  v42 = MEMORY[0x277D84F90];
  if (v39)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v43 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v43 >= v40)
    {

      v124 = sub_237FBC874(v42, v52, v53);

      v54 = v122 + 56;
      v55 = 1 << *(v122 + 32);
      v56 = -1;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      v57 = v56 & *(v122 + 56);
      v58 = (v55 + 63) >> 6;
      v125 = (v119 + 8);
      v126 = (v119 + 16);

      v59 = 0;
      v60 = MEMORY[0x277D84F90];
      if (v57)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v61 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_56;
        }

        if (v61 >= v58)
        {

          v123 = sub_237FBC874(v60, v71, v72);

          v73 = v121 + 56;
          v74 = 1 << *(v121 + 32);
          v75 = -1;
          if (v74 < 64)
          {
            v75 = ~(-1 << v74);
          }

          v76 = v75 & *(v121 + 56);
          v77 = (v74 + 63) >> 6;
          v125 = (v118 + 8);
          v126 = (v118 + 16);

          v78 = 0;
          v79 = MEMORY[0x277D84F90];
          if (v76)
          {
            goto LABEL_47;
          }

          while (1)
          {
            v80 = v78 + 1;
            if (__OFADD__(v78, 1))
            {
              break;
            }

            if (v80 >= v77)
            {

              sub_237FBC874(v79, v90, v91);

              v92 = v107;
              v93 = v108;
              v94 = v109;
              (*(v108 + 16))(v107, v111, v109);
              v126 = objc_allocWithZone(MEMORY[0x277D77B18]);
              sub_237FBC910(v126, v95, v96);
              v97 = sub_238032064();

              v98 = sub_238032064();

              v99 = sub_238032064();

              v100 = sub_238032064();

              v101 = v92;
              v102 = sub_238031694();
              v103 = [v126 initWithApplicationTokens:v97 exemptApplicationTokens:v98 categoryTokens:v99 webDomainTokens:v100 threshold:v102 includesPastActivity:v106 & 1];

              v104 = *(v93 + 8);
              v104(v111, v94);
              result = (v104)(v101, v94);
              *v110 = v103;
              return result;
            }

            v76 = *(v73 + 8 * v80);
            ++v78;
            if (v76)
            {
              v78 = v80;
              do
              {
LABEL_47:
                v81 = v118;
                v82 = v112;
                v83 = v113;
                (*(v118 + 16))(v112, *(v121 + 48) + *(v118 + 72) * (__clz(__rbit64(v76)) | (v78 << 6)), v113);
                v84 = sub_238031C54();
                v86 = v85;
                (*(v81 + 8))(v82, v83);
                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_237FB5BA0(0, *(v79 + 16) + 1, 1, v79);
                  v79 = result;
                }

                v88 = *(v79 + 16);
                v87 = *(v79 + 24);
                if (v88 >= v87 >> 1)
                {
                  result = sub_237FB5BA0((v87 > 1), v88 + 1, 1, v79);
                  v79 = result;
                }

                v76 &= v76 - 1;
                *(v79 + 16) = v88 + 1;
                v89 = v79 + 16 * v88;
                *(v89 + 32) = v84;
                *(v89 + 40) = v86;
              }

              while (v76);
            }
          }

          goto LABEL_57;
        }

        v57 = *(v54 + 8 * v61);
        ++v59;
        if (v57)
        {
          v59 = v61;
          do
          {
LABEL_34:
            v62 = v119;
            v63 = v114;
            v64 = v115;
            (*(v119 + 16))(v114, *(v122 + 48) + *(v119 + 72) * (__clz(__rbit64(v57)) | (v59 << 6)), v115);
            v65 = sub_238031C54();
            v67 = v66;
            (*(v62 + 8))(v63, v64);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_237FB5BA0(0, *(v60 + 16) + 1, 1, v60);
              v60 = result;
            }

            v69 = *(v60 + 16);
            v68 = *(v60 + 24);
            if (v69 >= v68 >> 1)
            {
              result = sub_237FB5BA0((v68 > 1), v69 + 1, 1, v60);
              v60 = result;
            }

            v57 &= v57 - 1;
            *(v60 + 16) = v69 + 1;
            v70 = v60 + 16 * v69;
            *(v70 + 32) = v65;
            *(v70 + 40) = v67;
          }

          while (v57);
        }
      }
    }

    v39 = *(v36 + 8 * v43);
    ++v41;
    if (v39)
    {
      v41 = v43;
      do
      {
LABEL_21:
        v44 = v126;
        v45 = v116;
        (*(v126 + 2))(v116, *(v123 + 48) + *(v126 + 9) * (__clz(__rbit64(v39)) | (v41 << 6)), v12);
        v46 = sub_238031C54();
        v48 = v47;
        (*(v44 + 1))(v45, v12);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5BA0(0, *(v42 + 16) + 1, 1, v42);
          v42 = result;
        }

        v50 = *(v42 + 16);
        v49 = *(v42 + 24);
        if (v50 >= v49 >> 1)
        {
          result = sub_237FB5BA0((v49 > 1), v50 + 1, 1, v42);
          v42 = result;
        }

        v39 &= v39 - 1;
        *(v42 + 16) = v50 + 1;
        v51 = v42 + 16 * v50;
        *(v51 + 32) = v46;
        *(v51 + 40) = v48;
      }

      while (v39);
    }
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.init(untokenizedApplications:untokenizedCategories:untokenizedWebDomains:threshold:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v86 = a4;
  v95 = a3;
  v83 = a5;
  v84 = a2;
  v6 = sub_2380316C4();
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x28223BE20](v6);
  v80 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_238031CC4();
  v93 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_238031C44();
  v9 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238031BE4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  v91 = (v12 + 8);
  v92 = (v12 + 16);
  v94 = a1;

  v21 = 0;
  v85 = MEMORY[0x277D84F90];
  if (!v18)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v12 + 16))(v14, *(v94 + 48) + *(v12 + 72) * (v22 | (v21 << 6)), v11);
      v23 = sub_238031BC4();
      v25 = v24;
      result = (*(v12 + 8))(v14, v11);
      if (v25)
      {
        break;
      }

      if (!v18)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_237FB5A94(0, *(v85 + 2) + 1, 1, v85);
      v85 = result;
    }

    v28 = *(v85 + 2);
    v27 = *(v85 + 3);
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      v78 = *(v85 + 2);
      v79 = v28 + 1;
      result = sub_237FB5A94((v27 > 1), v28 + 1, 1, v85);
      v28 = v78;
      v29 = v79;
      v85 = result;
    }

    v30 = v85;
    *(v85 + 2) = v29;
    v31 = &v30[16 * v28];
    *(v31 + 4) = v23;
    *(v31 + 5) = v25;
  }

  while (v18);
  while (1)
  {
LABEL_6:
    v26 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v26 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v26);
    ++v21;
    if (v18)
    {
      v21 = v26;
      goto LABEL_4;
    }
  }

  v79 = sub_237FBC964(v85);

  v32 = v84;
  v33 = v84 + 56;
  v34 = 1 << *(v84 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v84 + 56);
  v37 = (v34 + 63) >> 6;
  v94 = v9 + 16;
  v92 = (v9 + 8);

  v38 = 0;
  v91 = MEMORY[0x277D84F90];
  v39 = v90;
  if (!v36)
  {
    goto LABEL_21;
  }

  do
  {
LABEL_19:
    while (1)
    {
      v40 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v41 = v89;
      (*(v9 + 16))(v89, *(v32 + 48) + *(v9 + 72) * (v40 | (v38 << 6)), v39);
      v42 = sub_238031C24();
      v44 = v43;
      result = (*(v9 + 8))(v41, v39);
      if (v44)
      {
        break;
      }

      if (!v36)
      {
        goto LABEL_21;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_237FB5A94(0, *(v91 + 2) + 1, 1, v91);
      v91 = result;
    }

    v47 = *(v91 + 2);
    v46 = *(v91 + 3);
    if (v47 >= v46 >> 1)
    {
      result = sub_237FB5A94((v46 > 1), v47 + 1, 1, v91);
      v91 = result;
    }

    v48 = v91;
    *(v91 + 2) = v47 + 1;
    v49 = &v48[16 * v47];
    *(v49 + 4) = v42;
    *(v49 + 5) = v44;
    v32 = v84;
  }

  while (v36);
LABEL_21:
  while (1)
  {
    v45 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v45 >= v37)
    {

      v90 = sub_237FBC964(v91);

      v50 = v95 + 56;
      v51 = 1 << *(v95 + 32);
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v53 = v52 & *(v95 + 56);
      v54 = (v51 + 63) >> 6;
      v94 = v93 + 16;

      v55 = 0;
      v92 = MEMORY[0x277D84F90];
      if (!v53)
      {
        goto LABEL_36;
      }

      do
      {
LABEL_34:
        while (1)
        {
          v56 = __clz(__rbit64(v53));
          v53 &= v53 - 1;
          v57 = v93;
          v58 = v87;
          v59 = v88;
          (*(v93 + 16))(v87, *(v95 + 48) + *(v93 + 72) * (v56 | (v55 << 6)), v88);
          v60 = sub_238031CA4();
          v62 = v61;
          result = (*(v57 + 8))(v58, v59);
          if (v62)
          {
            break;
          }

          if (!v53)
          {
            goto LABEL_36;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5A94(0, *(v92 + 2) + 1, 1, v92);
          v92 = result;
        }

        v65 = *(v92 + 2);
        v64 = *(v92 + 3);
        if (v65 >= v64 >> 1)
        {
          result = sub_237FB5A94((v64 > 1), v65 + 1, 1, v92);
          v92 = result;
        }

        v66 = v92;
        *(v92 + 2) = v65 + 1;
        v67 = &v66[16 * v65];
        *(v67 + 4) = v60;
        *(v67 + 5) = v62;
      }

      while (v53);
LABEL_36:
      while (1)
      {
        v63 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_49;
        }

        if (v63 >= v54)
        {

          sub_237FBC964(v92);

          v68 = v80;
          v69 = v81;
          v70 = v82;
          (*(v81 + 16))(v80, v86, v82);
          v71 = objc_allocWithZone(MEMORY[0x277D77B18]);
          v72 = sub_238032064();

          v73 = sub_238032064();

          v74 = sub_238032064();

          v75 = sub_238031694();
          v76 = [v71 initWithBundleIdentifiers:v72 categoryIdentifiers:v73 webDomains:v74 threshold:v75 includesPastActivity:0];

          v77 = *(v69 + 8);
          v77(v86, v70);
          result = (v77)(v68, v70);
          *v83 = v76;
          return result;
        }

        v53 = *(v50 + 8 * v63);
        ++v55;
        if (v53)
        {
          v55 = v63;
          goto LABEL_34;
        }
      }
    }

    v36 = *(v33 + 8 * v45);
    ++v38;
    if (v36)
    {
      v38 = v45;
      goto LABEL_19;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.init(untokenizedApplications:untokenizedCategories:untokenizedWebDomains:threshold:includesPastActivity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v81 = a5;
  v88 = a4;
  v97 = a3;
  v85 = a6;
  v86 = a2;
  v7 = sub_2380316C4();
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x28223BE20](v7);
  v82 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_238031CC4();
  v95 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_238031C44();
  v10 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238031BE4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;
  v93 = (v13 + 8);
  v94 = (v13 + 16);
  v96 = a1;

  v22 = 0;
  v87 = MEMORY[0x277D84F90];
  if (!v19)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v13 + 16))(v15, *(v96 + 48) + *(v13 + 72) * (v23 | (v22 << 6)), v12);
      v24 = sub_238031BC4();
      v26 = v25;
      result = (*(v13 + 8))(v15, v12);
      if (v26)
      {
        break;
      }

      if (!v19)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_237FB5A94(0, *(v87 + 2) + 1, 1, v87);
      v87 = result;
    }

    v29 = *(v87 + 2);
    v28 = *(v87 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v79 = *(v87 + 2);
      v80 = v29 + 1;
      result = sub_237FB5A94((v28 > 1), v29 + 1, 1, v87);
      v29 = v79;
      v30 = v80;
      v87 = result;
    }

    v31 = v87;
    *(v87 + 2) = v30;
    v32 = &v31[16 * v29];
    *(v32 + 4) = v24;
    *(v32 + 5) = v26;
  }

  while (v19);
  while (1)
  {
LABEL_6:
    v27 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v27 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v27);
    ++v22;
    if (v19)
    {
      v22 = v27;
      goto LABEL_4;
    }
  }

  v80 = sub_237FBC964(v87);

  v33 = v86;
  v34 = v86 + 56;
  v35 = 1 << *(v86 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v86 + 56);
  v38 = (v35 + 63) >> 6;
  v96 = v10 + 16;
  v94 = (v10 + 8);

  v39 = 0;
  v93 = MEMORY[0x277D84F90];
  v40 = v92;
  if (!v37)
  {
    goto LABEL_21;
  }

  do
  {
LABEL_19:
    while (1)
    {
      v41 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v42 = v91;
      (*(v10 + 16))(v91, *(v33 + 48) + *(v10 + 72) * (v41 | (v39 << 6)), v40);
      v43 = sub_238031C24();
      v45 = v44;
      result = (*(v10 + 8))(v42, v40);
      if (v45)
      {
        break;
      }

      if (!v37)
      {
        goto LABEL_21;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_237FB5A94(0, *(v93 + 2) + 1, 1, v93);
      v93 = result;
    }

    v48 = *(v93 + 2);
    v47 = *(v93 + 3);
    if (v48 >= v47 >> 1)
    {
      result = sub_237FB5A94((v47 > 1), v48 + 1, 1, v93);
      v93 = result;
    }

    v49 = v93;
    *(v93 + 2) = v48 + 1;
    v50 = &v49[16 * v48];
    *(v50 + 4) = v43;
    *(v50 + 5) = v45;
    v33 = v86;
  }

  while (v37);
LABEL_21:
  while (1)
  {
    v46 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v46 >= v38)
    {

      v92 = sub_237FBC964(v93);

      v51 = v97 + 56;
      v52 = 1 << *(v97 + 32);
      v53 = -1;
      if (v52 < 64)
      {
        v53 = ~(-1 << v52);
      }

      v54 = v53 & *(v97 + 56);
      v55 = (v52 + 63) >> 6;
      v96 = v95 + 16;

      v56 = 0;
      v94 = MEMORY[0x277D84F90];
      if (!v54)
      {
        goto LABEL_36;
      }

      do
      {
LABEL_34:
        while (1)
        {
          v57 = __clz(__rbit64(v54));
          v54 &= v54 - 1;
          v58 = v95;
          v60 = v89;
          v59 = v90;
          (*(v95 + 16))(v89, *(v97 + 48) + *(v95 + 72) * (v57 | (v56 << 6)), v90);
          v61 = sub_238031CA4();
          v63 = v62;
          result = (*(v58 + 8))(v60, v59);
          if (v63)
          {
            break;
          }

          if (!v54)
          {
            goto LABEL_36;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5A94(0, *(v94 + 2) + 1, 1, v94);
          v94 = result;
        }

        v66 = *(v94 + 2);
        v65 = *(v94 + 3);
        if (v66 >= v65 >> 1)
        {
          result = sub_237FB5A94((v65 > 1), v66 + 1, 1, v94);
          v94 = result;
        }

        v67 = v94;
        *(v94 + 2) = v66 + 1;
        v68 = &v67[16 * v66];
        *(v68 + 4) = v61;
        *(v68 + 5) = v63;
      }

      while (v54);
LABEL_36:
      while (1)
      {
        v64 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_49;
        }

        if (v64 >= v55)
        {

          sub_237FBC964(v94);

          v69 = v82;
          v70 = v83;
          v71 = v84;
          (*(v83 + 16))(v82, v88, v84);
          v72 = objc_allocWithZone(MEMORY[0x277D77B18]);
          v73 = sub_238032064();

          v74 = sub_238032064();

          v75 = sub_238032064();

          v76 = sub_238031694();
          v77 = [v72 initWithBundleIdentifiers:v73 categoryIdentifiers:v74 webDomains:v75 threshold:v76 includesPastActivity:v81 & 1];

          v78 = *(v70 + 8);
          v78(v88, v71);
          result = (v78)(v69, v71);
          *v85 = v77;
          return result;
        }

        v54 = *(v51 + 8 * v64);
        ++v56;
        if (v54)
        {
          v56 = v64;
          goto LABEL_34;
        }
      }
    }

    v37 = *(v34 + 8 * v46);
    ++v39;
    if (v37)
    {
      v39 = v46;
      goto LABEL_19;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.init(untokenizedApplications:untokenizedExemptApplications:untokenizedCategories:untokenizedWebDomains:threshold:includesPastActivity:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v104 = a6;
  v111 = a5;
  v119 = a4;
  v120 = a2;
  v108 = a7;
  v109 = a3;
  v8 = sub_2380316C4();
  v106 = *(v8 - 8);
  v107 = v8;
  MEMORY[0x28223BE20](v8);
  v105 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_238031CC4();
  v116 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_238031C44();
  v117 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238031BE4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v102 - v17;
  v19 = a1 + 56;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 56);
  v23 = (v20 + 63) >> 6;
  v121 = (v13 + 8);
  v122 = (v13 + 16);
  v118 = a1;

  v25 = 0;
  v110 = MEMORY[0x277D84F90];
  if (!v22)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v13 + 16))(v18, *(v118 + 48) + *(v13 + 72) * (v26 | (v25 << 6)), v12);
      v27 = sub_238031BC4();
      v29 = v28;
      result = (*(v13 + 8))(v18, v12);
      if (v29)
      {
        break;
      }

      if (!v22)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_237FB5A94(0, *(v110 + 2) + 1, 1, v110);
      v110 = result;
    }

    v32 = *(v110 + 2);
    v31 = *(v110 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v102 = *(v110 + 2);
      v103 = v32 + 1;
      result = sub_237FB5A94((v31 > 1), v32 + 1, 1, v110);
      v32 = v102;
      v33 = v103;
      v110 = result;
    }

    v34 = v110;
    *(v110 + 2) = v33;
    v35 = &v34[16 * v32];
    *(v35 + 4) = v27;
    *(v35 + 5) = v29;
  }

  while (v22);
  while (1)
  {
LABEL_6:
    v30 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v30 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v30);
    ++v25;
    if (v22)
    {
      v25 = v30;
      goto LABEL_4;
    }
  }

  v118 = sub_237FBC964(v110);

  v36 = v120 + 56;
  v37 = 1 << v120[32];
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v120 + 7);
  v40 = (v37 + 63) >> 6;

  v41 = 0;
  v42 = MEMORY[0x277D84F90];
  if (!v39)
  {
    goto LABEL_21;
  }

  do
  {
LABEL_19:
    while (1)
    {
      v43 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      (*(v13 + 16))(v16, *(v120 + 6) + *(v13 + 72) * (v43 | (v41 << 6)), v12);
      v44 = sub_238031BC4();
      v46 = v45;
      result = (*(v13 + 8))(v16, v12);
      if (v46)
      {
        break;
      }

      if (!v39)
      {
        goto LABEL_21;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_237FB5A94(0, *(v42 + 16) + 1, 1, v42);
      v42 = result;
    }

    v49 = *(v42 + 16);
    v48 = *(v42 + 24);
    v50 = (v49 + 1);
    if (v49 >= v48 >> 1)
    {
      v110 = (v49 + 1);
      v52 = v42;
      v53 = v49;
      result = sub_237FB5A94((v48 > 1), v49 + 1, 1, v52);
      v50 = v110;
      v49 = v53;
      v42 = result;
    }

    *(v42 + 16) = v50;
    v51 = v42 + 16 * v49;
    *(v51 + 32) = v44;
    *(v51 + 40) = v46;
  }

  while (v39);
LABEL_21:
  while (1)
  {
    v47 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v47 >= v40)
    {

      v110 = sub_237FBC964(v42);

      v54 = v109;
      v55 = v109 + 56;
      v56 = 1 << *(v109 + 32);
      v57 = -1;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      v58 = v57 & *(v109 + 56);
      v59 = (v56 + 63) >> 6;
      v121 = (v117 + 8);
      v122 = (v117 + 16);

      v60 = 0;
      v120 = MEMORY[0x277D84F90];
      v61 = v117;
      if (!v58)
      {
        goto LABEL_36;
      }

      do
      {
LABEL_34:
        while (1)
        {
          v62 = __clz(__rbit64(v58));
          v58 &= v58 - 1;
          v63 = v114;
          v64 = v115;
          (*(v61 + 16))(v114, *(v54 + 48) + *(v61 + 72) * (v62 | (v60 << 6)), v115);
          v65 = sub_238031C24();
          v67 = v66;
          result = (*(v61 + 8))(v63, v64);
          if (v67)
          {
            break;
          }

          if (!v58)
          {
            goto LABEL_36;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_237FB5A94(0, *(v120 + 2) + 1, 1, v120);
          v120 = result;
        }

        v70 = *(v120 + 2);
        v69 = *(v120 + 3);
        if (v70 >= v69 >> 1)
        {
          result = sub_237FB5A94((v69 > 1), v70 + 1, 1, v120);
          v120 = result;
        }

        v71 = v120;
        *(v120 + 2) = v70 + 1;
        v72 = &v71[16 * v70];
        *(v72 + 4) = v65;
        *(v72 + 5) = v67;
        v54 = v109;
      }

      while (v58);
LABEL_36:
      while (1)
      {
        v68 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_64;
        }

        if (v68 >= v59)
        {

          v117 = sub_237FBC964(v120);

          v73 = v119 + 56;
          v74 = 1 << *(v119 + 32);
          v75 = -1;
          if (v74 < 64)
          {
            v75 = ~(-1 << v74);
          }

          v76 = v75 & *(v119 + 56);
          v77 = (v74 + 63) >> 6;
          v122 = (v116 + 16);

          v78 = 0;
          v121 = MEMORY[0x277D84F90];
          if (!v76)
          {
            goto LABEL_51;
          }

          do
          {
LABEL_49:
            while (1)
            {
              v79 = __clz(__rbit64(v76));
              v76 &= v76 - 1;
              v80 = v116;
              v82 = v112;
              v81 = v113;
              (*(v116 + 16))(v112, *(v119 + 48) + *(v116 + 72) * (v79 | (v78 << 6)), v113);
              v83 = sub_238031CA4();
              v85 = v84;
              result = (*(v80 + 8))(v82, v81);
              if (v85)
              {
                break;
              }

              if (!v76)
              {
                goto LABEL_51;
              }
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_237FB5A94(0, *(v121 + 2) + 1, 1, v121);
              v121 = result;
            }

            v88 = *(v121 + 2);
            v87 = *(v121 + 3);
            if (v88 >= v87 >> 1)
            {
              result = sub_237FB5A94((v87 > 1), v88 + 1, 1, v121);
              v121 = result;
            }

            v89 = v121;
            *(v121 + 2) = v88 + 1;
            v90 = &v89[16 * v88];
            *(v90 + 4) = v83;
            *(v90 + 5) = v85;
          }

          while (v76);
LABEL_51:
          while (1)
          {
            v86 = v78 + 1;
            if (__OFADD__(v78, 1))
            {
              goto LABEL_65;
            }

            if (v86 >= v77)
            {

              sub_237FBC964(v121);

              v91 = v105;
              v92 = v106;
              v93 = v107;
              (*(v106 + 16))(v105, v111, v107);
              v122 = objc_allocWithZone(MEMORY[0x277D77B18]);
              v94 = sub_238032064();

              v95 = sub_238032064();

              v96 = sub_238032064();

              v97 = sub_238032064();

              v98 = v91;
              v99 = sub_238031694();
              v100 = [v122 initWithBundleIdentifiers:v94 exemptBundleIdentifiers:v95 categoryIdentifiers:v96 webDomains:v97 threshold:v99 includesPastActivity:v104 & 1];

              v101 = *(v92 + 8);
              v101(v111, v93);
              result = (v101)(v98, v93);
              *v108 = v100;
              return result;
            }

            v76 = *(v73 + 8 * v86);
            ++v78;
            if (v76)
            {
              v78 = v86;
              goto LABEL_49;
            }
          }
        }

        v58 = *(v55 + 8 * v68);
        ++v60;
        if (v58)
        {
          v60 = v68;
          goto LABEL_34;
        }
      }
    }

    v39 = *&v36[8 * v47];
    ++v41;
    if (v39)
    {
      v41 = v47;
      goto LABEL_19;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.applications.getter()
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v1 = *(v28 - 8);
  v2 = MEMORY[0x28223BE20](v28);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v26 = &v25 - v4;
  v5 = [*v0 applicationTokens];
  sub_237FBC910(v5, v6, v7);
  v8 = sub_238032074();

  v10 = v8 + 56;
  v9 = *(v8 + 56);
  v29 = v8;
  v30 = MEMORY[0x277D84FA0];
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  v15 = (v1 + 8);

  for (i = 0; v13; result = (*v15)(v24, v28))
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = (*(v29 + 48) + ((v18 << 10) | (16 * v19)));
    v21 = *v20;
    v22 = v20[1];
    sub_237FBC9FC(*v20, v22);
    sub_237FBC9FC(v21, v22);
    sub_238031BE4();
    v23 = v27;
    sub_238031C64();
    v24 = v26;
    sub_237FB6540(v26, v23);
    sub_237FA5048(v21, v22);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      return v30;
    }

    v13 = *(v10 + 8 * v18);
    ++i;
    if (v13)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.categories.getter()
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v1 = *(v28 - 8);
  v2 = MEMORY[0x28223BE20](v28);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v26 = &v25 - v4;
  v5 = [*v0 categoryTokens];
  sub_237FBC910(v5, v6, v7);
  v8 = sub_238032074();

  v10 = v8 + 56;
  v9 = *(v8 + 56);
  v29 = v8;
  v30 = MEMORY[0x277D84FA0];
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  v15 = (v1 + 8);

  for (i = 0; v13; result = (*v15)(v24, v28))
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = (*(v29 + 48) + ((v18 << 10) | (16 * v19)));
    v21 = *v20;
    v22 = v20[1];
    sub_237FBC9FC(*v20, v22);
    sub_237FBC9FC(v21, v22);
    sub_238031C44();
    v23 = v27;
    sub_238031C64();
    v24 = v26;
    sub_237FB6824(v26, v23);
    sub_237FA5048(v21, v22);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      return v30;
    }

    v13 = *(v10 + 8 * v18);
    ++i;
    if (v13)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.webDomains.getter()
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v1 = *(v28 - 8);
  v2 = MEMORY[0x28223BE20](v28);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v26 = &v25 - v4;
  v5 = [*v0 webDomainTokens];
  sub_237FBC910(v5, v6, v7);
  v8 = sub_238032074();

  v10 = v8 + 56;
  v9 = *(v8 + 56);
  v29 = v8;
  v30 = MEMORY[0x277D84FA0];
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  v15 = (v1 + 8);

  for (i = 0; v13; result = (*v15)(v24, v28))
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = (*(v29 + 48) + ((v18 << 10) | (16 * v19)));
    v21 = *v20;
    v22 = v20[1];
    sub_237FBC9FC(*v20, v22);
    sub_237FBC9FC(v21, v22);
    sub_238031CC4();
    v23 = v27;
    sub_238031C64();
    v24 = v26;
    sub_237FB6B08(v26, v23);
    sub_237FA5048(v21, v22);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      return v30;
    }

    v13 = *(v10 + 8 * v18);
    ++i;
    if (v13)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DeviceActivityEvent.untokenizedCategories.getter()
{
  v25 = sub_238031C44();
  v1 = *(v25 - 8);
  v2 = MEMORY[0x28223BE20](v25);
  v24 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v23 = &v22 - v4;
  v5 = [*v0 categoryIdentifiers];
  type metadata accessor for Identifier(0);
  sub_237FBCC60(&qword_27DEE4DE0, type metadata accessor for Identifier, "9i J\\c");
  v6 = sub_238032074();

  v8 = v6 + 56;
  v7 = *(v6 + 56);
  v26 = v6;
  v27 = MEMORY[0x277D84FA0];
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v12 = (v9 + 63) >> 6;
  v13 = (v1 + 8);

  for (i = 0; v11; result = (*v13)(v21, v25))
  {
    v16 = i;
LABEL_9:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = *(*(v26 + 48) + ((v16 << 9) | (8 * v17)));
    sub_238031EA4();
    v19 = v18;
    v20 = v24;
    sub_238031C14();
    v21 = v23;
    sub_237FB70CC(v23, v20);
  }

  while (1)
  {
    v16 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return v27;
    }

    v11 = *(v8 + 8 * v16);
    ++i;
    if (v11)
    {
      i = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237FB5660(uint64_t (*a1)(void), SEL *a2, void (*a3)(uint64_t, uint64_t), void (*a4)(char *, char *))
{
  v28 = a3;
  v29 = a4;
  v27 = a1(0);
  v6 = *(v27 - 8);
  v7 = MEMORY[0x28223BE20](v27);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = [*v4 *a2];
  v13 = sub_238032074();

  v14 = *(v13 + 56);
  v30 = MEMORY[0x277D84FA0];
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v19 = (v6 + 8);

  for (i = 0; v17; result = (*v19)(v11, v27))
  {
    v22 = i;
LABEL_9:
    v23 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = (*(v13 + 48) + ((v22 << 10) | (16 * v23)));
    v25 = *v24;
    v26 = v24[1];
    swift_bridgeObjectRetain_n();
    v28(v25, v26);
    v29(v11, v9);
  }

  while (1)
  {
    v22 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v22 >= v18)
    {

      return v30;
    }

    v17 = *(v13 + 56 + 8 * v22);
    ++i;
    if (v17)
    {
      i = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_237FB58EC(SEL *a1)
{
  v2 = [*v1 *a1];
  sub_2380316A4();
}

char *sub_237FB5990(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5028, &qword_238033C10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_237FB5A94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50A8, &qword_238033C90);
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

char *sub_237FB5BA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50B8, &unk_238033CA0);
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

char *sub_237FB5CAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5068, &unk_238035CA0);
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

char *sub_237FB5E58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5018, &qword_238033C00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_237FB5F68(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2380325B4();
  sub_238031ED4();
  v8 = sub_2380325F4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2380324E4() & 1) != 0)
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

    sub_237FB95BC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_237FB60B8(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  sub_2380325B4();
  sub_2380319B4();
  v7 = sub_2380325F4();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_237FBC9FC(a2, a3);
    sub_237FB973C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
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
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_237FBC9FC(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_237FBC9FC(v18, v17);
      v32 = sub_238031664();
      if (v32)
      {
        v34 = sub_238031684();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_237FBC9FC(v18, v17);
    v32 = sub_238031664();
    if (v32)
    {
      v33 = sub_238031684();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    sub_238031674();
    a3 = v44;
    sub_237FCBE14(v32, a2, v44, v50);
    sub_237FA5048(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_237FBC9FC(v18, v17);
LABEL_60:
  sub_237FCBE14(v50, a2, a3, &v49);
  sub_237FA5048(v18, v17);
  if ((v49 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_237FA5048(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_237FBC9FC(v39, *(&v39 + 1));
  return 0;
}

uint64_t sub_237FB6540(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - v8;
  v10 = *v2;
  sub_237FBCCF0(&qword_280C34B10, &qword_27DEE4FF8, &unk_2380343E0, MEMORY[0x277CD4B00]);
  v31 = a2;
  v11 = sub_238031E24();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      sub_237FBCCF0(&qword_27DEE50A0, &qword_27DEE4FF8, &unk_2380343E0, MEMORY[0x277CD4B08]);
      v19 = sub_238031E64();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    sub_237FB9BB4(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

uint64_t sub_237FB6824(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - v8;
  v10 = *v2;
  sub_237FBCCF0(&qword_280C34AF8, &qword_27DEE4FF0, &unk_238033980, MEMORY[0x277CD4B00]);
  v31 = a2;
  v11 = sub_238031E24();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      sub_237FBCCF0(&qword_27DEE5098, &qword_27DEE4FF0, &unk_238033980, MEMORY[0x277CD4B08]);
      v19 = sub_238031E64();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    sub_237FB9E58(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

uint64_t sub_237FB6B08(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - v8;
  v10 = *v2;
  sub_237FBCCF0(&qword_280C34AE0, &qword_27DEE4FE8, &unk_238035410, MEMORY[0x277CD4B00]);
  v31 = a2;
  v11 = sub_238031E24();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      sub_237FBCCF0(&qword_27DEE5090, &qword_27DEE4FE8, &unk_238035410, MEMORY[0x277CD4B08]);
      v19 = sub_238031E64();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    sub_237FBA0FC(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

uint64_t sub_237FB6DEC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238031BE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_237FBCC60(&qword_280C34B28, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AB8]);
  v33 = a2;
  v11 = sub_238031E24();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_237FBCC60(&qword_27DEE5088, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AC0]);
      v21 = sub_238031E64();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_237FBA3A0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_237FB70CC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238031C44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_237FBCC60(&qword_280C34B20, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AD8]);
  v33 = a2;
  v11 = sub_238031E24();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_237FBCC60(&qword_27DEE5078, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AE0]);
      v21 = sub_238031E64();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_237FBA644(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_237FB73AC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238031CC4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_237FBCC60(&qword_280C34AD0, MEMORY[0x277CD4B20], MEMORY[0x277CD4B28]);
  v33 = a2;
  v11 = sub_238031E24();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_237FBCC60(&qword_27DEE5070, MEMORY[0x277CD4B20], MEMORY[0x277CD4B30]);
      v21 = sub_238031E64();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_237FBA8E8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_237FB768C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_237FBCC60(&qword_280C35050, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v33 = a2;
  v11 = sub_238031E24();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_237FBCC60(&qword_280C35048, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v21 = sub_238031E64();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_237FBAB8C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_237FB796C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE5760, &unk_238036530);
  result = sub_238032274();
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
      sub_2380325B4();
      sub_238031ED4();
      result = sub_2380325F4();
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

uint64_t sub_237FB7BCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50B0, &qword_238033C98);
  result = sub_238032274();
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
      sub_2380325B4();
      sub_2380319B4();
      result = sub_2380325F4();
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

uint64_t sub_237FB7E2C(uint64_t a1)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE57C0, &qword_238036560);
  result = sub_238032274();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_237FBCCF0(&qword_280C34B10, &qword_27DEE4FF8, &unk_2380343E0, MEMORY[0x277CD4B00]);
      result = sub_238031E24();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_237FB818C(uint64_t a1)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE57B0, &unk_238033C80);
  result = sub_238032274();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_237FBCCF0(&qword_280C34AF8, &qword_27DEE4FF0, &unk_238033980, MEMORY[0x277CD4B00]);
      result = sub_238031E24();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}