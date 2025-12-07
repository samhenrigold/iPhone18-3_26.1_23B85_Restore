unint64_t sub_21BC239D4()
{
  result = qword_27CDB7540;
  if (!qword_27CDB7540)
  {
    result = swift_getWitnessTable(a0F, &type metadata for FamilyDestinations.MemberPendingDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7540);
  }

  return result;
}

unint64_t sub_21BC23A2C()
{
  result = qword_27CDB7548;
  if (!qword_27CDB7548)
  {
    result = swift_getWitnessTable(aMF, &type metadata for FamilyDestinations.MemberPendingDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7548);
  }

  return result;
}

unint64_t sub_21BC23A84()
{
  result = qword_27CDB7550;
  if (!qword_27CDB7550)
  {
    result = swift_getWitnessTable(byte_21BE37EF4, &type metadata for FamilyDestinations.AskToBuyMemberDestination.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7550);
  }

  return result;
}

unint64_t sub_21BC23ADC()
{
  result = qword_27CDB7558;
  if (!qword_27CDB7558)
  {
    result = swift_getWitnessTable(byte_21BE37F1C, &type metadata for FamilyDestinations.AskToBuyMemberDestination.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7558);
  }

  return result;
}

unint64_t sub_21BC23B34()
{
  result = qword_27CDB7560;
  if (!qword_27CDB7560)
  {
    result = swift_getWitnessTable(aE1Fd, &type metadata for FamilyDestinations.MemberAccountDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7560);
  }

  return result;
}

unint64_t sub_21BC23B8C()
{
  result = qword_27CDB7568;
  if (!qword_27CDB7568)
  {
    result = swift_getWitnessTable(aUF, &type metadata for FamilyDestinations.MemberAccountDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7568);
  }

  return result;
}

unint64_t sub_21BC23BE4()
{
  result = qword_27CDB7570;
  if (!qword_27CDB7570)
  {
    result = swift_getWitnessTable(byte_21BE37DEC, &type metadata for FamilyDestinations.AppleCashDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7570);
  }

  return result;
}

unint64_t sub_21BC23C3C()
{
  result = qword_27CDB7578;
  if (!qword_27CDB7578)
  {
    result = swift_getWitnessTable(byte_21BE37E14, &type metadata for FamilyDestinations.AppleCashDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7578);
  }

  return result;
}

unint64_t sub_21BC23C94()
{
  result = qword_27CDB7580;
  if (!qword_27CDB7580)
  {
    result = swift_getWitnessTable(byte_21BE37D9C, &type metadata for FamilyDestinations.Location.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7580);
  }

  return result;
}

unint64_t sub_21BC23CEC()
{
  result = qword_27CDB7588;
  if (!qword_27CDB7588)
  {
    result = swift_getWitnessTable(byte_21BE37DC4, &type metadata for FamilyDestinations.Location.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7588);
  }

  return result;
}

unint64_t sub_21BC23D44()
{
  result = qword_27CDB7590;
  if (!qword_27CDB7590)
  {
    result = swift_getWitnessTable(byte_21BE37CE4, &type metadata for FamilyDestinations.MemberDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7590);
  }

  return result;
}

unint64_t sub_21BC23D9C()
{
  result = qword_27CDB7598;
  if (!qword_27CDB7598)
  {
    result = swift_getWitnessTable(byte_21BE37D0C, &type metadata for FamilyDestinations.MemberDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDB7598);
  }

  return result;
}

uint64_t sub_21BC23DF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D45657469766E69 && a2 == 0xEB000000006C6961;
  if (v4 || (sub_21BE2995C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021BE583D0 == a2 || (sub_21BE2995C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449796C696D6166 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21BE2995C();

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

unint64_t sub_21BC23F70()
{
  result = qword_27CDB75B0;
  if (!qword_27CDB75B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyLinkDestination, &type metadata for AnyLinkDestination, v0, v1);
    atomic_store(result, &qword_27CDB75B0);
  }

  return result;
}

uint64_t sub_21BC23FC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7278, &qword_21BE3A250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BC240F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v14 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v11 = a3;
    v5 = (a2 + 64);
    while (1)
    {
      v7 = *(v5 - 4);
      v6 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v12[0] = v7;
      v12[1] = v6;
      v12[2] = v8;
      v12[3] = v9;
      v13 = v10;

      result = v14(v12);
      if (v3)
      {
      }

      if (result)
      {
        goto LABEL_7;
      }

      v5 += 40;
      if (!--v4)
      {
        v7 = 0;
        v6 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
LABEL_7:
        a3 = v11;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_9:
    *a3 = v7;
    *(a3 + 8) = v6;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
    *(a3 + 32) = v10;
  }

  return result;
}

void *sub_21BC241EC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CF047C0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
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

uint64_t sub_21BC24300()
{
  v0 = sub_21BE25D1C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  sub_21BE25D0C();
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  (*(v1 + 16))(v4, qword_280BD7CD0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_launchDate, v0);
  sub_21BE25C9C();
  v8 = v7;
  v9 = v7;
  v10 = *(v1 + 8);
  v10(v4, v0);
  result = (v10)(v6, v0);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 < 9.22337204e18)
  {
    return v8;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_21BC244C0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000018;
    v7 = 0x6572656767697274;
    if (a1 != 10)
    {
      v7 = 0x6574617473;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    v9 = 1701667182;
    if (a1 != 7)
    {
      v9 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x79547265626D656DLL;
    v2 = 0x6D69547972746E65;
    v3 = 0x656D695474697865;
    if (a1 != 4)
    {
      v3 = 0x5464657370616C65;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x695468636E75616CLL;
    if (a1 != 1)
    {
      v4 = 0x61676E4572657375;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21BC24668(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(a2 + 16) + 40))(a1, *(a2 + 16));
  result = 0;
  if (v4)
  {
    v8 = (*(a2 + 32))(a1, a2);
    MEMORY[0x28223BE20](v8);
    swift_getAssociatedTypeWitness();
    v6 = sub_21BE28CBC();
    swift_getWitnessTable(MEMORY[0x277D83998], v6);
    sub_21BE296AC();
    v7 = sub_21BE28C9C();

    return v7;
  }

  return result;
}

uint64_t sub_21BC247C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 24);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness) & 1;
}

uint64_t sub_21BC2487C()
{
  if (qword_27CDB5028 != -1)
  {
    swift_once();
  }

  v0 = qword_27CDD43E8;
  v11 = type metadata accessor for FamilyChecklistStore();
  v12 = &off_282D994A0;
  v10[0] = v0;
  type metadata accessor for ChecklistMetricsLogger();
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  MEMORY[0x28223BE20](v2);
  v4 = (&v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4);
  v6 = *v4;
  swift_retain_n();
  v7 = sub_21BC26C94(v6, v1);

  result = __swift_destroy_boxed_opaque_existential_0Tm(v10);
  qword_27CDD41D8 = v7;
  return result;
}

uint64_t sub_21BC249EC()
{
  v0[5] = -1;
  v0[6] = -1;
  v0[2] = MEMORY[0x277D84F98];

  v1 = MEMORY[0x277D84F90];
  v0[3] = MEMORY[0x277D84F90];

  v0[4] = v1;

  v0[7] = 0;
  return result;
}

uint64_t sub_21BC24A48()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v46[0] = v1;
  v46[1] = v2;

  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v31 = v3;
    v6 = v46[v4];
    v7 = *(v6 + 16);

    v34 = v7;
    if (v7)
    {
      break;
    }

LABEL_2:

    v3 = 1;
    v4 = 1;
    if (v31)
    {
LABEL_23:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75C8, &qword_21BE382F8);
      swift_arrayDestroy();
      *(v30 + 64) = v5;
    }
  }

  v9 = 0;
  v32 = v6;
  v33 = v6 + 32;
  while (v9 < *(v6 + 16))
  {
    v10 = (v33 + 32 * v9);
    v35 = v10[1];
    v36 = *v10;
    v11 = v10[2];
    v37 = v9 + 1;
    v38 = v5;
    v5 = *(v11 + 16);

    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      v14 = 0uLL;
      v15 = v5;
      v16 = 0uLL;
      v17 = 0uLL;
      if (v12 != v5)
      {
        if (v12 >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v15 = v12 + 1;
        *&v42 = v12;
        sub_21BB3A35C(v11 + 32 + 40 * v12, &v42 + 8);
        v14 = v42;
        v16 = v43;
        v17 = v44;
      }

      v45[0] = v14;
      v45[1] = v16;
      v45[2] = v17;
      if (!v17)
      {
        break;
      }

      v39 = v14;
      sub_21BB3D104((v45 + 8), &v42);
      __swift_project_boxed_opaque_existential_1Tm(&v42, *(&v43 + 1));
      sub_21BE295FC();
      v18 = *(&v43 + 1);
      v19 = v44;
      __swift_project_boxed_opaque_existential_1Tm(&v42, *(&v43 + 1));
      v20 = (*(v19 + 24))(v18, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_21BBBD310(0, *(v13 + 2) + 1, 1, v13);
      }

      v22 = *(v13 + 2);
      v21 = *(v13 + 3);
      v23 = v39;
      if (v22 >= v21 >> 1)
      {
        v25 = sub_21BBBD310((v21 > 1), v22 + 1, 1, v13);
        v23 = v39;
        v13 = v25;
      }

      *(v13 + 2) = v22 + 1;
      v24 = &v13[40 * v22];
      *(v24 + 4) = v40;
      *(v24 + 5) = v41;
      *(v24 + 6) = v9;
      *(v24 + 7) = v23;
      v24[64] = v20 & 1;
      __swift_destroy_boxed_opaque_existential_0Tm(&v42);
      v12 = v15;
    }

    v26 = sub_21BC24300();

    v5 = v38;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21BBBD1F0(0, *(v38 + 16) + 1, 1, v38);
      v5 = result;
    }

    v6 = v32;
    v28 = *(v5 + 16);
    v27 = *(v5 + 24);
    if (v28 >= v27 >> 1)
    {
      result = sub_21BBBD1F0((v27 > 1), v28 + 1, 1, v5);
      v5 = result;
    }

    *(v5 + 16) = v28 + 1;
    v29 = (v5 + 40 * v28);
    v29[4] = v26;
    v29[5] = v36;
    v29[6] = v35;
    v29[7] = v9;
    v29[8] = v13;
    ++v9;
    if (v37 == v34)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC24D94(void *a1, unint64_t a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v54 - v9;
  sub_21BE2611C();
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FCC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21BB35000, v11, v12, "Create  session...", v13, 2u);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  v14 = *(v5 + 8);
  v14(v10, v4);
  if ((v54[5] & 0x8000000000000000) == 0)
  {
    sub_21BE2611C();
    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FDC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21BB35000, v15, v16, "Prior session not ended!", v17, 2u);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    v14(v8, v4);
  }

  sub_21BC249EC();
  v18 = [a1 me];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 memberType];
  }

  else
  {
    v20 = -1;
  }

  v21 = v54;
  v54[6] = v20;
  v21[5] = sub_21BC24300();
  v22 = *(*__swift_project_boxed_opaque_existential_1Tm(v21 + 9, v21[12]) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75C0, &qword_21BE382F0);
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = sub_21BE0476C;
  v23[4] = 0;

  sub_21BDE83F8(a2);
  v25 = v24;
  v27 = v26;

  v21[3] = v25;

  v21[4] = v27;

  sub_21BC24A48();
  v28 = sub_21BBB5AAC(MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1Tm(v21 + 9, v21[12]);
  sub_21BE08538();
  v56 = *(v29 + 16);
  if (!v56)
  {
LABEL_25:

    v54[2] = v28;
  }

  v30 = 0;
  v31 = (v29 + 40);
  v55 = v29;
  while (v30 < *(v29 + 16))
  {
    v33 = *v31;
    ObjectType = swift_getObjectType();
    v35 = *(v33 + 24);
    swift_unknownObjectRetain();
    v36 = v35(ObjectType, v33);
    v38 = v37;
    v39 = sub_21BC24668(ObjectType, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v28;
    v41 = sub_21BBB3108(v36, v38);
    v43 = v28[2];
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
      goto LABEL_27;
    }

    v47 = v42;
    if (v28[3] < v46)
    {
      sub_21BC7C4B4(v46, isUniquelyReferenced_nonNull_native);
      v41 = sub_21BBB3108(v36, v38);
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_29;
      }

LABEL_20:
      if (v47)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    v52 = v41;
    sub_21BC81174();
    v41 = v52;
    if (v47)
    {
LABEL_12:
      v32 = v41;

      v28 = v57;
      *(v57[7] + 8 * v32) = v39;
      swift_unknownObjectRelease();
      goto LABEL_13;
    }

LABEL_21:
    v28 = v57;
    v57[(v41 >> 6) + 8] |= 1 << v41;
    v49 = (v28[6] + 16 * v41);
    *v49 = v36;
    v49[1] = v38;
    *(v28[7] + 8 * v41) = v39;
    swift_unknownObjectRelease();
    v50 = v28[2];
    v45 = __OFADD__(v50, 1);
    v51 = v50 + 1;
    if (v45)
    {
      goto LABEL_28;
    }

    v28[2] = v51;
LABEL_13:
    ++v30;
    v31 += 2;
    v29 = v55;
    if (v56 == v30)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_21BE299FC();
  __break(1u);
  return result;
}

uint64_t sub_21BC25284()
{
  v1 = v0;
  v99 = sub_21BE26A4C();
  v2 = *(v99 - 8);
  v3 = MEMORY[0x28223BE20](v99);
  v96 = v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v93 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = (v93 - v8);
  sub_21BE2611C();
  v10 = sub_21BE26A2C();
  v11 = sub_21BE28FCC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_21BB35000, v10, v11, "End session...", v12, 2u);
    MEMORY[0x21CF05C50](v12, -1, -1);
  }

  v13 = *(v2 + 8);
  v98 = v2 + 8;
  v97 = v13;
  v13(v9, v99);
  if ((v1[5] & 0x8000000000000000) == 0)
  {
    v14 = *(*(*__swift_project_boxed_opaque_existential_1Tm(v1 + 9, v1[12]) + 24) + 16);
    if (v14)
    {
      v100 = v1;

      v101 = MEMORY[0x277D84F98];
      v93[1] = v15;
      v16 = (v15 + 40);
      *&v17 = 136315138;
      v94 = v17;
      while (1)
      {
        v19 = *(v16 - 1);
        v18 = *v16;
        ObjectType = swift_getObjectType();
        v21 = *(v18 + 24);
        swift_unknownObjectRetain();
        v22 = v21(ObjectType, v18);
        v24 = v23;
        v25 = v100[2];
        if (!*(v25 + 16))
        {
          goto LABEL_15;
        }

        v26 = sub_21BBB3108(v22, v24);
        if ((v27 & 1) == 0)
        {
          break;
        }

        v28 = *(*(v25 + 56) + 8 * v26);

        *&v111 = v19;
        if ((*(*(v18 + 16) + 40))(ObjectType))
        {
          v29 = sub_21BC24668(ObjectType, v18);
          if (v29 == v28)
          {
            v30 = 0xE900000000000065;
            v31 = 0x676E616863206F4ELL;
          }

          else
          {
            v31 = 0x6576697469736F50;
            if (v28 >= v29)
            {
              v31 = 0x657669746167654ELL;
            }

            v30 = 0xEF65676E61686320;
          }
        }

        else
        {
          v30 = 0xEA0000000000726FLL;
          v31 = 0x7272652064616F4CLL;
        }

        v37 = MEMORY[0x277D837D0];
        v112 = MEMORY[0x277D837D0];
        v113 = &protocol witness table for String;
        *&v111 = v31;
        *(&v111 + 1) = v30;
        sub_21BB3D104(&v111, v109);
        v38 = v101;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = v38;
        v40 = __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
        v95 = v93;
        MEMORY[0x28223BE20](v40);
        v42 = (v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v43 + 16))(v42);
        v44 = *v42;
        v45 = v42[1];
        v106 = v37;
        v107 = &protocol witness table for String;
        *&v105 = v44;
        *(&v105 + 1) = v45;
        v9 = v38;
        v46 = sub_21BBB3108(v22, v24);
        v48 = v38;
        v49 = v46;
        isa = v48[2].isa;
        v51 = (v47 & 1) == 0;
        v52 = isa + v51;
        if (__OFADD__(isa, v51))
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v53 = v47;
        if (v48[3].isa >= v52)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21BC8142C();
          }
        }

        else
        {
          sub_21BC7CFA8(v52, isUniquelyReferenced_nonNull_native);
          v54 = sub_21BBB3108(v22, v24);
          if ((v53 & 1) != (v55 & 1))
          {
            result = sub_21BE299FC();
            __break(1u);
            return result;
          }

          v49 = v54;
        }

        v101 = v108;
        if (v53)
        {
          v9 = (v108[7].isa + 40 * v49);
          __swift_destroy_boxed_opaque_existential_0Tm(v9);
          sub_21BB3D104(&v105, v9);
          swift_unknownObjectRelease();
        }

        else
        {
          v9 = v106;
          v56 = __swift_mutable_project_boxed_opaque_existential_1(&v105, v106);
          MEMORY[0x28223BE20](v56);
          v58 = (v93 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v59 + 16))(v58);
          v60 = *v58;
          v61 = v58[1];
          v103 = MEMORY[0x277D837D0];
          v104 = &protocol witness table for String;
          *&v102 = v60;
          *(&v102 + 1) = v61;
          v101[(v49 >> 6) + 8].isa = (v101[(v49 >> 6) + 8].isa | (1 << v49));
          v62 = (v101[6].isa + 16 * v49);
          *v62 = v22;
          v62[1] = v24;
          sub_21BB3D104(&v102, v101[7].isa + 40 * v49);
          v63 = v101[2].isa;
          v64 = __OFADD__(v63, 1);
          v65 = (v63 + 1);
          if (v64)
          {
            goto LABEL_41;
          }

          v101[2].isa = v65;
          __swift_destroy_boxed_opaque_existential_0Tm(&v105);
          swift_unknownObjectRelease();
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v109);
LABEL_8:
        v16 += 2;
        if (!--v14)
        {

          v1 = v100;
          goto LABEL_37;
        }
      }

LABEL_15:
      v32 = v96;
      sub_21BE2611C();

      v9 = sub_21BE26A2C();
      v33 = sub_21BE28FDC();

      if (os_log_type_enabled(v9, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v111 = v35;
        *v34 = v94;
        v36 = sub_21BB3D81C(v22, v24, &v111);

        *(v34 + 4) = v36;
        _os_log_impl(&dword_21BB35000, v9, v33, "%s does not have a previous state", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        MEMORY[0x21CF05C50](v35, -1, -1);
        MEMORY[0x21CF05C50](v34, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v97(v32, v99);
      goto LABEL_8;
    }

    v101 = MEMORY[0x277D84F98];
LABEL_37:
    v70 = sub_21BC24300();
    v71 = v1[5];
    v72 = v70 - v71;
    if (__OFSUB__(v70, v71))
    {
LABEL_42:
      __break(1u);
    }

    else
    {
      v73 = MEMORY[0x277D83B88];
      v112 = MEMORY[0x277D83B88];
      v113 = &protocol witness table for Int;
      *&v111 = v70;
      sub_21BB3D104(&v111, v109);
      v74 = v101;
      v75 = swift_isUniquelyReferenced_nonNull_native();
      *&v105 = v74;
      v76 = __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
      sub_21BC26D64(*v76, 0x656D695474697865, 0xE800000000000000, v75, &v105);
      __swift_destroy_boxed_opaque_existential_0Tm(v109);
      v77 = v105;
      v112 = v73;
      v113 = &protocol witness table for Int;
      *&v111 = v72;
      sub_21BB3D104(&v111, v109);
      v78 = swift_isUniquelyReferenced_nonNull_native();
      *&v105 = v77;
      v79 = __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
      sub_21BC26D64(*v79, 0x5464657370616C65, 0xEB00000000656D69, v78, &v105);
      __swift_destroy_boxed_opaque_existential_0Tm(v109);
      v80 = v105;
      v81 = v1[6];
      v112 = v73;
      v113 = &protocol witness table for Int;
      *&v111 = v81;
      sub_21BB3D104(&v111, v109);
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *&v105 = v80;
      v83 = __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
      sub_21BC26D64(*v83, 0x79547265626D656DLL, 0xEA00000000006570, v82, &v105);
      __swift_destroy_boxed_opaque_existential_0Tm(v109);
      v84 = v105;
      v85 = v1[5];
      v112 = v73;
      v113 = &protocol witness table for Int;
      *&v111 = v85;
      sub_21BB3D104(&v111, v109);
      v86 = swift_isUniquelyReferenced_nonNull_native();
      *&v105 = v84;
      v87 = __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
      sub_21BC26D64(*v87, 0x695468636E75616CLL, 0xEA0000000000656DLL, v86, &v105);
      __swift_destroy_boxed_opaque_existential_0Tm(v109);
      v88 = v105;
      v89 = v1[7] > 0;
      v112 = MEMORY[0x277D839B0];
      v113 = &protocol witness table for Bool;
      LOBYTE(v111) = v89;
      sub_21BB3D104(&v111, v109);
      v90 = swift_isUniquelyReferenced_nonNull_native();
      *&v105 = v88;
      v91 = __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
      sub_21BC26ECC(*v91, 0x61676E4572657375, 0xEB00000000646567, v90, &v105);
      __swift_destroy_boxed_opaque_existential_0Tm(v109);
      v9 = v105;
      if (qword_27CDB4F68 == -1)
      {
LABEL_39:
        LOBYTE(v111) = 40;

        v92 = sub_21BCA2CBC(v9);

        sub_21BCA55DC(&v111, v92);

        return sub_21BC249EC();
      }
    }

    swift_once();
    goto LABEL_39;
  }

  sub_21BE2611C();
  v66 = sub_21BE26A2C();
  v67 = sub_21BE28FDC();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_21BB35000, v66, v67, "Prior session already ended!", v68, 2u);
    MEMORY[0x21CF05C50](v68, -1, -1);
  }

  return (v97)(v7, v99);
}

uint64_t sub_21BC25DC8(void *a1)
{
  v79 = sub_21BE26A4C();
  v3 = *(v79 - 8);
  v4 = MEMORY[0x28223BE20](v79);
  v70 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v76 = &v69 - v7;
  result = MEMORY[0x28223BE20](v6);
  v9 = v1;
  v11 = &v69 - v10;
  if ((v9[5] & 0x8000000000000000) != 0)
  {
    sub_21BE261BC();
    v66 = sub_21BE26A2C();
    v67 = sub_21BE28FFC();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_21BB35000, v66, v67, "No Prior session/already ended?", v68, 2u);
      MEMORY[0x21CF05C50](v68, -1, -1);
    }

    return (*(v3 + 8))(v11, v79);
  }

  else
  {
    v12 = v9[7];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (!v13)
    {
      v9[7] = v14;
      v75 = v9;
      v15 = *(v9[8] + 16);
      v80 = v9[8];

      v78 = v15;
      if (!v15)
      {
      }

      v17 = 0;
      v77 = (v3 + 8);
      v18 = 0;
      v73 = 0x800000021BE584D0;
      v74 = 0x800000021BE584B0;
      v72 = 0x800000021BE584F0;
      v19 = (v80 + 64);
      *&v16 = 136315394;
      v69 = v16;
      v71 = xmmword_21BE381E0;
      v81 = a1;
      while (v18 < *(v80 + 16))
      {
        v31 = *(v19 - 2);
        v87 = *(v19 - 3);
        v89 = v19;
        v32 = *v19;
        MEMORY[0x28223BE20](result);
        *(&v69 - 2) = a1;
        swift_bridgeObjectRetain_n();

        sub_21BC240F0(sub_21BC27154, v32, v95);

        if (v96)
        {
          v84 = v97;
          v85 = v98;
          v33 = v76;
          sub_21BE2611C();
          sub_21BB3A35C(a1, v93);

          v34 = sub_21BE26A2C();
          v35 = sub_21BE28FCC();

          v36 = os_log_type_enabled(v34, v35);
          v86 = v18;
          if (v36)
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v92 = v38;
            *v37 = v69;
            __swift_project_boxed_opaque_existential_1Tm(v93, v94);
            sub_21BE295FC();
            v39 = v90;
            v40 = v91;
            __swift_destroy_boxed_opaque_existential_0Tm(v93);
            v41 = sub_21BB3D81C(v39, v40, &v92);

            *(v37 + 4) = v41;
            *(v37 + 12) = 2080;

            v42 = sub_21BB3D81C(v87, v31, &v92);

            *(v37 + 14) = v42;
            _os_log_impl(&dword_21BB35000, v34, v35, "%s found in section %s", v37, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CF05C50](v38, -1, -1);
            v43 = v37;
            a1 = v81;
            MEMORY[0x21CF05C50](v43, -1, -1);

            (*v77)(v76, v79);
          }

          else
          {

            (*v77)(v33, v79);
            __swift_destroy_boxed_opaque_existential_0Tm(v93);
          }

          v88 = v17;
          if (qword_27CDB4F68 != -1)
          {
            swift_once();
          }

          v55 = a1[3];
          v56 = a1[4];
          __swift_project_boxed_opaque_existential_1Tm(a1, v55);
          v57 = (*(v56 + 32))(v55, v56);
          v58 = sub_21BC5A608(v57);
          v60 = v59;
          v61 = v75[6];
          v83 = v75[5];
          v62 = a1[3];
          v63 = a1[4];
          __swift_project_boxed_opaque_existential_1Tm(a1, v62);
          v82 = (*(v63 + 24))(v62, v63);
          v87 = sub_21BC24300();
          v64 = a1[3];
          v65 = a1[4];
          __swift_project_boxed_opaque_existential_1Tm(a1, v64);
          if ((*(v65 + 24))(v64, v65))
          {
            v24 = 0xE800000000000000;
            v23 = 0x6574656C706D6F63;
          }

          else
          {
            v20 = a1[3];
            v21 = a1[4];
            __swift_project_boxed_opaque_existential_1Tm(a1, v20);
            v22 = sub_21BBE7DA8(v20, v21);
            if (v22)
            {
              v23 = 0x657373696D736964;
            }

            else
            {
              v23 = 0x656C706D6F636E69;
            }

            if (v22)
            {
              v24 = 0xE900000000000064;
            }

            else
            {
              v24 = 0xEA00000000006574;
            }
          }

          LOBYTE(v93[0]) = 41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
          inited = swift_initStackObject();
          *(inited + 16) = v71;
          *(inited + 32) = 1701667182;
          v26 = MEMORY[0x277D837D0];
          *(inited + 72) = MEMORY[0x277D837D0];
          *(inited + 40) = 0xE400000000000000;
          *(inited + 48) = v58;
          *(inited + 56) = v60;
          *(inited + 80) = &protocol witness table for String;
          *(inited + 88) = 0x79547265626D656DLL;
          *(inited + 96) = 0xEA00000000006570;
          v27 = MEMORY[0x277D83B88];
          *(inited + 128) = MEMORY[0x277D83B88];
          *(inited + 104) = v61;
          *(inited + 136) = &protocol witness table for Int;
          *(inited + 144) = 0x695468636E75616CLL;
          *(inited + 184) = v27;
          *(inited + 192) = &protocol witness table for Int;
          v28 = v83;
          *(inited + 152) = 0xEA0000000000656DLL;
          *(inited + 160) = v28;
          *(inited + 200) = 0xD000000000000015;
          *(inited + 208) = v74;
          *(inited + 240) = v27;
          *(inited + 248) = &protocol witness table for Int;
          *(inited + 216) = v84;
          v29 = v73;
          *(inited + 256) = 0xD000000000000011;
          *(inited + 264) = v29;
          *(inited + 296) = v27;
          *(inited + 304) = &protocol witness table for Int;
          *(inited + 272) = v85;
          *(inited + 312) = 0xD000000000000018;
          *(inited + 320) = v72;
          *(inited + 352) = MEMORY[0x277D839B0];
          *(inited + 328) = v82 & 1;
          *(inited + 360) = &protocol witness table for Bool;
          strcpy((inited + 368), "triggeredTime");
          *(inited + 382) = -4864;
          *(inited + 408) = v27;
          *(inited + 416) = &protocol witness table for Int;
          *(inited + 384) = v87;
          *(inited + 424) = 0x6574617473;
          *(inited + 432) = 0xE500000000000000;
          *(inited + 440) = v23;
          *(inited + 464) = v26;
          *(inited + 472) = &protocol witness table for String;
          *(inited + 448) = v24;

          v30 = sub_21BBB5E60(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
          swift_arrayDestroy();
          sub_21BCA55DC(v93, v30);
          sub_21BC27174(v95);

          a1 = v81;
          v18 = v86;
          v17 = v88;
        }

        else
        {
          v44 = v70;
          sub_21BE2611C();
          sub_21BB3A35C(a1, v93);

          v45 = sub_21BE26A2C();
          v46 = sub_21BE28FCC();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v92 = v48;
            *v47 = v69;
            v88 = v17;
            v49 = v18;
            __swift_project_boxed_opaque_existential_1Tm(v93, v94);
            sub_21BE295FC();
            v50 = v90;
            v51 = v91;
            __swift_destroy_boxed_opaque_existential_0Tm(v93);
            v52 = sub_21BB3D81C(v50, v51, &v92);
            v18 = v49;
            v17 = v88;

            *(v47 + 4) = v52;
            *(v47 + 12) = 2080;

            v53 = sub_21BB3D81C(v87, v31, &v92);

            *(v47 + 14) = v53;
            _os_log_impl(&dword_21BB35000, v45, v46, "%s not found in section %s", v47, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CF05C50](v48, -1, -1);
            v54 = v47;
            a1 = v81;
            MEMORY[0x21CF05C50](v54, -1, -1);

            result = (*v77)(v70, v79);
          }

          else
          {

            (*v77)(v44, v79);
            result = __swift_destroy_boxed_opaque_existential_0Tm(v93);
          }
        }

        ++v18;
        v19 = v89 + 5;
        if (v78 == v18)
        {
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21BC267BC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  sub_21BE295FC();
  if (v2 == v7 && v3 == v8)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21BE2995C();
  }

  return v5 & 1;
}

uint64_t sub_21BC2685C(void *a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 40) & 0x8000000000000000) != 0)
  {
    sub_21BE261BC();
    v19 = sub_21BE26A2C();
    v20 = sub_21BE28FFC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_21BB35000, v19, v20, "No Prior session/already ended?", v21, 2u);
      MEMORY[0x21CF05C50](v21, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v7);
    v9 = (*(v8 + 32))(v7, v8);
    v10 = sub_21BC5A608(v9);
    v12 = v11;
    v13 = sub_21BC24300();
    v23 = 42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
    inited = swift_initStackObject();
    *(inited + 32) = 1701667182;
    v15 = MEMORY[0x277D837D0];
    *(inited + 16) = xmmword_21BE33260;
    *(inited + 72) = v15;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v10;
    *(inited + 56) = v12;
    v16 = MEMORY[0x277D83B88];
    strcpy((inited + 88), "triggeredTime");
    *(inited + 102) = -4864;
    *(inited + 128) = v16;
    *(inited + 136) = &protocol witness table for Int;
    *(inited + 104) = v13;

    v17 = sub_21BBB5E60(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
    swift_arrayDestroy();
    sub_21BCA55DC(&v23, v17);
  }
}

uint64_t sub_21BC26B20()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21BC26BB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21BC26C00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BC26C58@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ChecklistMetricsLogger();
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

void *sub_21BC26C94(uint64_t a1, void *a2)
{
  v8 = type metadata accessor for FamilyChecklistStore();
  v9 = &off_282D994A0;
  *&v7 = a1;
  v4 = MEMORY[0x277D84F90];
  a2[2] = sub_21BBB5AAC(MEMORY[0x277D84F90]);
  a2[3] = v4;
  a2[4] = v4;
  a2[5] = -1;
  a2[6] = -1;
  a2[7] = 0;
  a2[8] = v4;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v5 = qword_280BD79E0;
  a2[17] = type metadata accessor for FamilyCircleStore(0);
  a2[18] = &protocol witness table for FamilyCircleStore;
  a2[14] = v5;
  sub_21BB3D104(&v7, (a2 + 9));

  return a2;
}

uint64_t sub_21BC26D64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v23 = a1;
  v24 = MEMORY[0x277D83B88];
  v25 = &protocol witness table for Int;
  v9 = *a5;
  v11 = sub_21BBB3108(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      return sub_21BB3D104(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_21BC8142C();
    goto LABEL_7;
  }

  sub_21BC7CFA8(v14, a4 & 1);
  v20 = sub_21BBB3108(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_21BE299FC();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, MEMORY[0x277D83B88]);
  sub_21BC270C0(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v23);
}

uint64_t sub_21BC26ECC(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v23) = a1;
  v24 = MEMORY[0x277D839B0];
  v25 = &protocol witness table for Bool;
  v9 = *a5;
  v11 = sub_21BBB3108(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      return sub_21BB3D104(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_21BC8142C();
    goto LABEL_7;
  }

  sub_21BC7CFA8(v14, a4 & 1);
  v20 = sub_21BBB3108(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_21BE299FC();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, MEMORY[0x277D839B0]);
  sub_21BC27030(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v23);
}

uint64_t sub_21BC27030(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  v13 = &protocol witness table for Bool;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21BB3D104(&v11, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_21BC270C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  v13 = &protocol witness table for Int;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21BB3D104(&v11, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_21BC27174(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75B8, &qword_21BE382E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DeclaredAgeRangeContext.init(altDSIDList:ageRangeController:requestContext:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_21BC27238(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21BC27280(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21BC272D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BC27318(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BC27368()
{
  v1 = sub_21BE25FCC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  (*(v2 + 104))(v4, *MEMORY[0x277D07F18], v1);
  v6 = MEMORY[0x21CF01150](v4);
  (*(v2 + 8))(v4, v1);
  if ((v6 & 1) == 0)
  {
LABEL_4:
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v5 = sub_21BE2599C();

    return v5;
  }

  if (v5 <= 2)
  {
    if ((v5 - 1) >= 2)
    {
      return v5;
    }

    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21BE32770;
  v10 = MEMORY[0x277D83C10];
  *(v9 + 56) = MEMORY[0x277D83B88];
  *(v9 + 64) = v10;
  if (v5 == 3)
  {
    *(v9 + 32) = 1;
  }

  else
  {
    *(v9 + 32) = 10;
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  v11 = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();

  v13 = [v12 bundleForClass_];
  sub_21BE2599C();

  v5 = sub_21BE289DC();

  return v5;
}

uint64_t sub_21BC27720(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseSharingItemView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21BC28CD4(a2, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PurchaseSharingItemView);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  sub_21BC28D3C(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PurchaseSharingItemView);
  v9 = a1;
  sub_21BCE8474(sub_21BC28DA4, v8);
}

void sub_21BC2785C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseSharingItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE26A4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = type metadata accessor for PurchaseSharingItemView(0);
    sub_21BC28CD4(a2 + *(v11 + 20), v6, type metadata accessor for PurchaseSharingItem);
    v12 = type metadata accessor for PurchaseSharingHostViewController(0);
    v13 = objc_allocWithZone(v12);
    sub_21BC28CD4(v6, v13 + OBJC_IVAR____TtC14FamilyCircleUI33PurchaseSharingHostViewController_item, type metadata accessor for PurchaseSharingItem);
    v19.receiver = v13;
    v19.super_class = v12;
    v14 = a1;
    v15 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
    sub_21BC28B68(v6);
    v15[OBJC_IVAR____TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC_shouldAddSpinner] = 1;
    [v14 presentViewController:v15 animated:1 completion:0];
  }

  else
  {
    sub_21BE261BC();
    v16 = sub_21BE26A2C();
    v17 = sub_21BE28FDC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21BB35000, v16, v17, "navigationController is null while presenting purchase sharing VC", v18, 2u);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }
}

id sub_21BC27B10()
{
  v1 = type metadata accessor for PurchaseSharingItem(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for PurchaseSharingHostViewController(0);
  v19.receiver = v0;
  v19.super_class = v8;
  objc_msgSendSuper2(&v19, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v10 = result;
    v11 = [objc_opt_self() systemBackgroundColor];
    [v10 setBackgroundColor_];

    v12 = OBJC_IVAR____TtC14FamilyCircleUI33PurchaseSharingHostViewController_item;
    v13 = sub_21BE28DAC();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_21BC28CD4(v0 + v12, &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PurchaseSharingItem);
    sub_21BE28D7C();
    v14 = v0;
    v15 = sub_21BE28D6C();
    v16 = (*(v2 + 80) + 40) & ~*(v2 + 80);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v15;
    v17[3] = v18;
    v17[4] = v14;
    sub_21BC28D3C(v4, v17 + v16, type metadata accessor for PurchaseSharingItem);
    sub_21BBA932C(0, 0, v7, &unk_21BE38438, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BC27DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v6 = sub_21BE26A4C();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v5[32] = swift_task_alloc();
  v7 = sub_21BE25B9C();
  v5[33] = v7;
  v5[34] = *(v7 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  sub_21BE28D7C();
  v5[37] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v5[38] = v9;
  v5[39] = v8;

  return MEMORY[0x2822009F8](sub_21BC27F78, v9, v8);
}

uint64_t sub_21BC27F78()
{
  v49 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[26];
  v5 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v0[40] = v5;
  v6 = sub_21BBB6068(&unk_282D85890);
  sub_21BB3A4CC(&unk_282D858B0, &unk_27CDB6F40, qword_21BE36348);
  sub_21BCA2A64(v6);

  v7 = sub_21BE288EC();

  [v5 setAdditionalParameters_];

  v8 = type metadata accessor for PurchaseSharingItem(0);
  sub_21BBF0D04(v4 + *(v8 + 20), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v9 = v0[32];

    sub_21BB3A4CC(v9, &unk_27CDB57F0, &qword_21BE328A0);
    sub_21BE261BC();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FDC();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[28];
    v14 = v0[29];
    v15 = v0[27];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v48 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_21BB3D81C(0x6F6C467472617473, 0xED0000293A5F2877, &v48);
      _os_log_impl(&dword_21BB35000, v10, v11, "%s missing url", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x21CF05C50](v17, -1, -1);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    (*(v13 + 8))(v14, v15);

    v18 = v0[1];

    return v18();
  }

  else
  {
    v21 = v0[35];
    v20 = v0[36];
    v23 = v0[33];
    v22 = v0[34];
    (*(v22 + 32))(v20, v0[32], v23);
    v24 = sub_21BE25B2C();
    [v5 setUrlForContext_];

    sub_21BE261BC();
    (*(v22 + 16))(v21, v20, v23);
    v25 = sub_21BE26A2C();
    v26 = sub_21BE28FCC();
    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[34];
    v28 = v0[35];
    v30 = v0[33];
    v31 = v0[31];
    v33 = v0[27];
    v32 = v0[28];
    if (v27)
    {
      v44 = v26;
      v34 = swift_slowAlloc();
      v47 = v5;
      v48 = swift_slowAlloc();
      v35 = v48;
      *v34 = 136315138;
      v45 = v33;
      v46 = v31;
      v36 = sub_21BE25AFC();
      v38 = v37;
      (*(v29 + 8))(v28, v30);
      v39 = sub_21BB3D81C(v36, v38, &v48);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_21BB35000, v25, v44, "PurchaseSharingHost launching %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      v40 = v35;
      v5 = v47;
      MEMORY[0x21CF05C50](v40, -1, -1);
      MEMORY[0x21CF05C50](v34, -1, -1);

      (*(v32 + 8))(v46, v45);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
      (*(v32 + 8))(v31, v33);
    }

    v41 = [objc_allocWithZone(FACircleStateController) initWithPresenter_];
    v0[41] = v41;
    v0[22] = sub_21BC288C8;
    v0[23] = 0;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_21BB42A18;
    v0[21] = &block_descriptor_7;
    v42 = _Block_copy(v0 + 18);
    [v41 setPresentationHandler_];
    _Block_release(v42);
    [v41 setPresentationType_];
    [v41 setModalPresentationStyle_];
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = sub_21BC285CC;
    v43 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BC2D85C;
    v0[13] = &block_descriptor_15;
    v0[14] = v43;
    [v41 performWithContext:v5 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_21BC285CC()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);

  return MEMORY[0x2822009F8](sub_21BC286D4, v2, v1);
}

uint64_t sub_21BC286D4()
{

  v1 = *(v0 + 192);
  v2 = [v1 error];
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 240);
    v5 = *(v0 + 216);
    v6 = *(v0 + 224);
    sub_21BE2614C();
    v7 = v3;
    sub_21BC51D50(v3, 0xD000000000000032, 0x800000021BE585D0);

    (*(v6 + 8))(v4, v5);
  }

  [*(v0 + 200) dismissViewControllerAnimated:1 completion:0];
  v8 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EC0 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 320);
  v9 = *(v0 + 328);
  v11 = *(v0 + 288);
  v12 = *(v0 + 264);
  v13 = *(v0 + 272);
  [v8 postNotificationName:qword_27CDB7E70 object:0 userInfo:0 deliverImmediately:1];

  (*(v13 + 8))(v11, v12);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_21BC288C8()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21BB35000, v4, v5, "Purchase sharing presented", v6, 2u);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

id sub_21BC28A3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchaseSharingHostViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PurchaseSharingHostViewController(uint64_t a1)
{
  result = qword_27CDB75D0;
  if (!qword_27CDB75D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BC28AD8(uint64_t a1)
{
  result = type metadata accessor for PurchaseSharingItem(319);
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

uint64_t sub_21BC28B68(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseSharingItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BC28BC4(uint64_t a1)
{
  v4 = *(type metadata accessor for PurchaseSharingItem(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBA6A64;

  return sub_21BC27DCC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_21BC28CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BC28D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21BC28DA4()
{
  v1 = *(type metadata accessor for PurchaseSharingItemView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_21BC2785C(v2, v3);
}

double sub_21BC28E08(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  v5 = (*(a2 + 40))(a1, a2);
  return v4 + v5 + v5;
}

uint64_t sub_21BC28E78()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21BC28ED8()
{
  v0 = sub_21BE2626C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2909C();
  v4 = sub_21BE2623C();
  v6 = *(v1 + 8);
  v5 = v1 + 8;
  v6(v3, v0);
  v7 = v4 >> 62;
  if (!(v4 >> 62))
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = -v8;
    if (!__OFSUB__(0, v8))
    {
      goto LABEL_3;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v8 = sub_21BE2951C();
  v9 = -v8;
  if (__OFSUB__(0, v8))
  {
    goto LABEL_40;
  }

LABEL_3:
  if ((v9 + 3) >= 4)
  {
    v0 = v8 - 4;
    if (__OFSUB__(v8, 4))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v8 < v0)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (!v7)
    {
LABEL_6:
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }
  }

  else
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v0 = 0;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v10 = sub_21BE2951C();
LABEL_11:
  if (v10 < v0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v0 < 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v7)
  {
    v11 = sub_21BE2951C();
  }

  else
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 < v8)
  {
    goto LABEL_43;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if ((v4 & 0xC000000000000001) == 0 || v0 == v8)
  {

    goto LABEL_25;
  }

  if (v0 >= v8)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);

  v12 = v0;
  do
  {
    v13 = v12 + 1;
    sub_21BE2960C();
    v12 = v13;
  }

  while (v8 != v13);
LABEL_25:

  if (v7)
  {
    v5 = sub_21BE297AC();
    v7 = v14;
    v0 = v15;
    v8 = v16;

    if (v8)
    {
      goto LABEL_30;
    }

LABEL_29:
    sub_21BDE6CB0(v5, v7, v0, v8);
    v18 = v17;
LABEL_36:
    swift_unknownObjectRelease();
    return v18;
  }

  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  v7 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v8 = (2 * v8) | 1;
  if ((v8 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  sub_21BE2999C();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x277D84F90];
  }

  v20 = *(v19 + 16);

  if (__OFSUB__(v8 >> 1, v0))
  {
    goto LABEL_49;
  }

  if (v20 != (v8 >> 1) - v0)
  {
LABEL_50:
    swift_unknownObjectRelease_n();
    goto LABEL_29;
  }

  v18 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v18)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  return v18;
}

double sub_21BC29210()
{
  v0 = sub_21BC28ED8();
  if (v0 >> 62)
  {
    v1 = sub_21BE2951C();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = sub_21BC28ED8();
  if (v2 >> 62)
  {
    v3 = sub_21BE2951C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 70.0;
  if (v3 == 3)
  {
    v4 = 66.0;
  }

  if (v3 == 2)
  {
    v4 = 58.0;
  }

  return (v4 + v1 * -32.0) / (v1 + -1.0);
}

void FAImageMarqueeView.init(familyCircle:membersToRender:)(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for FAImageMarqueeViewModel();
  v7 = swift_allocObject();
  v11 = sub_21BC2AD38(a2, sub_21BDFE090, sub_21BC2ADDC);
  sub_21BC29DF8(&v11);
  *(v7 + 16) = v11;
  a3[3] = v6;
  a3[4] = &off_282D8B0F8;
  *a3 = v7;
  [objc_allocWithZone(FAProfilePictureStore) initWithFamilyCircle_];
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BC2ACA4();
  v8 = sub_21BE270CC();
  v10 = v9;

  a3[5] = v8;
  a3[6] = v10;
}

uint64_t FAImageMarqueeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  *a1 = sub_21BE275DC();
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75E0, &qword_21BE38450);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = sub_21BC2B144(v8);

  v16 = v9;
  swift_getKeyPath();
  sub_21BC2B334(v1, v14);
  v10 = swift_allocObject();
  v11 = v14[1];
  *(v10 + 16) = v14[0];
  *(v10 + 32) = v11;
  *(v10 + 48) = v14[2];
  *(v10 + 64) = v15;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_21BC2B36C;
  *(v12 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75E8, &qword_21BE38478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB75F0, &qword_21BE38480);
  sub_21BB3B038(&qword_280BD8A48, &qword_27CDB75E8, &qword_21BE38478, MEMORY[0x277D83980]);
  sub_21BC2B3A4();
  return sub_21BE285BC();
}

id sub_21BC29684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a3[6];
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v9);
  (*(v10 + 24))(v9, v10);
  result = [v8 profilePictureForFamilyMember:a2 pictureDiameter:?];
  if (result)
  {
    v12 = result;
    v13 = sub_21BE25BFC();
    v15 = v14;

    v16 = sub_21BE2869C();
    v18 = v17;
    sub_21BC297E4(v13, v15, a3, a1, &v27);
    v19 = v27;
    v25 = v28;
    v26 = v29;
    v20 = v30;
    v21 = v31;
    v22 = v28;
    sub_21BBBEE74(v27, v28);
    sub_21BBBEF94(v19, v22);
    result = sub_21BBBEF94(v13, v15);
    v23 = v25;
    v24 = v26;
    LOBYTE(v27) = v21;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v23 = xmmword_21BE38440;
    v24 = 0uLL;
  }

  *a4 = v16;
  *(a4 + 8) = v18;
  *(a4 + 16) = v19;
  *(a4 + 24) = v23;
  *(a4 + 40) = v24;
  *(a4 + 56) = v20;
  *(a4 + 64) = v21;
  return result;
}

uint64_t sub_21BC297E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = a3[3];
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v10);
  v12 = (*(v11 + 24))(v10, v11);
  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v13);
  v15 = (*(v14 + 40))(v13, v14);
  v16 = a3[3];
  v17 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v16);
  v18 = *(v17 + 8);
  sub_21BBBEE74(a1, a2);
  v19 = v18(v16, v17);
  if (v19 >> 62)
  {
    v20 = sub_21BE2951C();

    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = a4 + 1;
  if (__OFADD__(a4, 1))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v23 = 0uLL;
  if (v22 < v20)
  {
    v24 = a3[3];
    v25 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm(a3, v24);
    v30 = (*(v25 + 32))(v24, v25);
    v26 = a3[3];
    v27 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm(a3, v26);
    v28 = (*(v27 + 16))(v26, v27);
    *&v29 = v30;
    *(&v29 + 1) = v28;
    v23 = v29;
  }

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v12;
  *(a5 + 24) = v15;
  *(a5 + 32) = v23;
  *(a5 + 48) = v22 >= v20;
  sub_21BBBEE74(a1, a2);

  return sub_21BBBEF94(a1, a2);
}

uint64_t sub_21BC299EC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  *a1 = sub_21BE275DC();
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75E0, &qword_21BE38450);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = sub_21BC2B144(v8);

  v16 = v9;
  swift_getKeyPath();
  sub_21BC2B334(v1, v14);
  v10 = swift_allocObject();
  v11 = v14[1];
  *(v10 + 16) = v14[0];
  *(v10 + 32) = v11;
  *(v10 + 48) = v14[2];
  *(v10 + 64) = v15;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_21BC2C498;
  *(v12 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75E8, &qword_21BE38478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB75F0, &qword_21BE38480);
  sub_21BB3B038(&qword_280BD8A48, &qword_27CDB75E8, &qword_21BE38478, MEMORY[0x277D83980]);
  sub_21BC2B3A4();
  return sub_21BE285BC();
}

void sub_21BC29BFC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  sub_21BBBEE74(a1, a2);
  sub_21BE2869C();
  sub_21BE26F2C();
  *&v14[5] = v15;
  *&v14[21] = v16;
  *&v14[37] = v17;
  v9 = sub_21BE27B7C();
  sub_21BE26E0C();
  *(a3 + 16) = a4;
  *(a3 + 24) = a4;
  *(a3 + 35) = *v14;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 32) = 1;
  *(a3 + 34) = 1;
  *(a3 + 51) = *&v14[16];
  *(a3 + 67) = *&v14[32];
  *(a3 + 80) = *(&v17 + 1);
  *(a3 + 88) = v9;
  *(a3 + 96) = v10;
  *(a3 + 104) = v11;
  *(a3 + 112) = v12;
  *(a3 + 120) = v13;
  *(a3 + 128) = 0;
}

__n128 sub_21BC29CE4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_21BE282CC();
  sub_21BE2869C();
  sub_21BE26F2C();
  *&v10[6] = v11;
  *&v10[22] = v12;
  *&v10[38] = v13;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7698, &qword_21BE38768) + 36);
  v7 = *MEMORY[0x277CE13C0];
  v8 = sub_21BE286CC();
  (*(*(v8 - 8) + 104))(a1 + v6, v7, v8);
  *a1 = v5;
  *(a1 + 8) = 256;
  *(a1 + 10) = *v10;
  *(a1 + 26) = *&v10[16];
  result = *&v10[32];
  *(a1 + 42) = *&v10[32];
  *(a1 + 56) = *(&v13 + 1);
  *(a1 + 64) = v3 + v4;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_21BC29DF8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_21BDFE08C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21BC29E74(v6);
  return sub_21BE296CC();
}

void sub_21BC29E74(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21BE2991C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
        v6 = sub_21BE28C7C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21BC2A0E8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21BC29F88(0, v2, 1, a1);
  }
}

void sub_21BC29F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
    v6 = &selRef_fa_URLByAddingAirdropInviteParams;
LABEL_5:
    v23 = v4;
    v24 = a3;
    v7 = *(v25 + 8 * a3);
    v22 = v5;
    while (1)
    {
      v8 = *v4;
      v9 = v7;
      v10 = v8;
      v11 = [v9 memberSortOrder];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 v6[236]];
      }

      else
      {
        v13 = 0;
      }

      v14 = [v10 memberSortOrder];
      if (v14)
      {
        v15 = v14;
        v16 = v6;
        v17 = [v14 v6[236]];

        v18 = v17 < v13;
        v6 = v16;
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      else
      {

        if (v13 < 2)
        {
          goto LABEL_4;
        }
      }

      if (!v25)
      {
        break;
      }

      v19 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v19;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
LABEL_4:
        a3 = v24 + 1;
        v4 = v23 + 8;
        v5 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_21BC2A0E8(void ***a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v5;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_115:
    v12 = v6;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_155;
    }

    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = v4;
LABEL_118:
      v4 = *(v106 + 2);
      if (v4 >= 2)
      {
        do
        {
          v107 = *v7;
          if (!*v7)
          {
            goto LABEL_153;
          }

          v7 = (v4 - 1);
          v108 = *&v106[16 * v4];
          v109 = v106;
          v110 = *&v106[16 * v4 + 24];
          sub_21BC2A8D4((v107 + 8 * v108), (v107 + 8 * *&v106[16 * v4 + 16]), (v107 + 8 * v110), v6);
          if (v12)
          {
            break;
          }

          if (v110 < v108)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_21BDFD0AC(v109);
          }

          if (v4 - 2 >= *(v109 + 2))
          {
            goto LABEL_143;
          }

          v111 = &v109[16 * v4];
          *v111 = v108;
          *(v111 + 1) = v110;
          sub_21BDFD020(v4 - 1);
          v106 = v109;
          v4 = *(v109 + 2);
          v7 = a3;
        }

        while (v4 > 1);
      }

LABEL_126:

      return;
    }

LABEL_149:
    v106 = sub_21BDFD0AC(v4);
    goto LABEL_118;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v11 = &off_2782F5000;
  while (1)
  {
    v12 = v9;
    v13 = v9 + 1;
    if (v13 >= v8)
    {
      v123 = v13;
      goto LABEL_8;
    }

    v114 = v10;
    v116 = v12;
    v14 = *v7;
    v4 = *(*v7 + 8 * v12);
    v15 = *(*v7 + 8 * v13);
    v16 = v4;
    v17 = [v15 v11[257]];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 integerValue];

      v11 = &off_2782F5000;
    }

    else
    {
      v19 = 0;
    }

    v38 = [v16 v11[257]];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 integerValue];

      v11 = &off_2782F5000;
      v41 = v40 < v19;
      v7 = a3;
      v42 = v41;
    }

    else
    {

      v42 = v19 > 1;
    }

    v122 = v42;
    v12 = v116;
    v123 = v116 + 2;
    if (v116 + 2 >= v8)
    {
      v10 = v114;
      if (!v42)
      {
        goto LABEL_8;
      }

LABEL_106:
      v100 = v123;
      if (v123 < v12)
      {
        goto LABEL_146;
      }

      if (v12 < v123)
      {
        v101 = 8 * v123 - 8;
        v102 = 8 * v12;
        v103 = v12;
        do
        {
          if (v103 != --v100)
          {
            v104 = *v7;
            if (!*v7)
            {
              goto LABEL_152;
            }

            v105 = *(v104 + v102);
            *(v104 + v102) = *(v104 + v101);
            *(v104 + v101) = v105;
          }

          v103 = (v103 + 1);
          v101 -= 8;
          v102 += 8;
        }

        while (v103 < v100);
      }

      goto LABEL_8;
    }

    v43 = (v14 + 8 * v116 + 16);
    do
    {
      v4 = v8;
      v44 = *(v43 - 1);
      v45 = *v43;
      v46 = v44;
      v47 = [v45 v11[257]];
      if (v47)
      {
        v48 = v47;
        v49 = [v47 integerValue];
      }

      else
      {
        v49 = 0;
      }

      v50 = [v46 v11[257]];
      v8 = v4;
      if (v50)
      {
        v51 = v50;
        v52 = [v50 integerValue];

        v41 = v52 < v49;
        v11 = &off_2782F5000;
        v53 = !v41;
        v7 = a3;
        if (((v122 ^ v53) & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      else
      {

        v7 = a3;
        if (v122 == v49 < 2)
        {
          goto LABEL_105;
        }
      }

      ++v43;
      ++v123;
    }

    while (v4 != v123);
    v123 = v4;
LABEL_105:
    v10 = v114;
    v12 = v116;
    if (v122)
    {
      goto LABEL_106;
    }

LABEL_8:
    v20 = v7[1];
    if (v123 < v20)
    {
      if (__OFSUB__(v123, v12))
      {
        goto LABEL_145;
      }

      if (v123 - v12 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v123 < v12)
    {
      goto LABEL_144;
    }

    v54 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v10 = v54;
    }

    else
    {
      v10 = sub_21BBBCBFC(0, *(v54 + 2) + 1, 1, v54);
    }

    v4 = *(v10 + 2);
    v55 = *(v10 + 3);
    v56 = v4 + 1;
    if (v4 >= v55 >> 1)
    {
      v10 = sub_21BBBCBFC((v55 > 1), v4 + 1, 1, v10);
    }

    *(v10 + 2) = v56;
    v57 = &v10[16 * v4];
    *(v57 + 4) = v12;
    *(v57 + 5) = v123;
    v12 = *a1;
    if (!*a1)
    {
      goto LABEL_154;
    }

    if (v4)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v10 + 4);
          v60 = *(v10 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_74:
          if (v62)
          {
            goto LABEL_133;
          }

          v75 = &v10[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_136;
          }

          v81 = &v10[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_140;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v85 = &v10[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_88:
        if (v80)
        {
          goto LABEL_135;
        }

        v88 = &v10[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_138;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_95:
        v4 = v58 - 1;
        if (v58 - 1 >= v56)
        {
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v7)
        {
          goto LABEL_151;
        }

        v96 = v10;
        v97 = *&v10[16 * v4 + 32];
        v98 = *&v10[16 * v58 + 40];
        sub_21BC2A8D4((*v7 + 8 * v97), (*v7 + 8 * *&v10[16 * v58 + 32]), (*v7 + 8 * v98), v12);
        if (v6)
        {
          goto LABEL_126;
        }

        if (v98 < v97)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_21BDFD0AC(v96);
        }

        if (v4 >= *(v96 + 2))
        {
          goto LABEL_130;
        }

        v99 = &v96[16 * v4];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        sub_21BDFD020(v58);
        v10 = v96;
        v56 = *(v96 + 2);
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v10[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_131;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_132;
      }

      v70 = &v10[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_134;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_137;
      }

      if (v74 >= v66)
      {
        v92 = &v10[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_141;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v123;
    if (v123 >= v8)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v12, a4))
  {
    goto LABEL_147;
  }

  if (v12 + a4 >= v20)
  {
    v21 = v7[1];
  }

  else
  {
    v21 = v12 + a4;
  }

  if (v21 < v12)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v123 == v21)
  {
    goto LABEL_54;
  }

  v115 = v10;
  v117 = v12;
  v112 = v6;
  v22 = *v7;
  v23 = *v7 + 8 * v123 - 8;
  v24 = v12 - v123;
  v25 = v123;
  v119 = v21;
LABEL_20:
  v121 = v23;
  v124 = v25;
  v26 = *(v22 + 8 * v25);
  v4 = v24;
  while (1)
  {
    v27 = *v23;
    v28 = v26;
    v29 = v27;
    v30 = [v28 v11[257]];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 integerValue];
    }

    else
    {
      v32 = 0;
    }

    v33 = [v29 v11[257]];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 integerValue];

      if (v35 >= v32)
      {
        goto LABEL_18;
      }
    }

    else
    {

      if (v32 < 2)
      {
LABEL_18:
        v11 = &off_2782F5000;
LABEL_19:
        v25 = v124 + 1;
        v23 = v121 + 8;
        --v24;
        if ((v124 + 1) == v119)
        {
          v123 = v119;
          v6 = v112;
          v7 = a3;
          v10 = v115;
          v12 = v117;
          goto LABEL_54;
        }

        goto LABEL_20;
      }
    }

    if (!v22)
    {
      break;
    }

    v36 = *v23;
    v26 = *(v23 + 8);
    *v23 = v26;
    *(v23 + 8) = v36;
    v23 -= 8;
    v37 = __CFADD__(v4++, 1);
    v11 = &off_2782F5000;
    if (v37)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_21BC2A8D4(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a4;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
      v5 = __dst;
    }

    v15 = &v13[v9];
    if (v7 < 8 || v5 >= v4)
    {
LABEL_24:
      v28 = v6;
      goto LABEL_50;
    }

    v47 = v15;
    while (1)
    {
      v16 = v5;
      v17 = *v13;
      v18 = *v5;
      v19 = v17;
      v20 = [v18 memberSortOrder];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 integerValue];
      }

      else
      {
        v22 = 0;
      }

      v23 = [v19 memberSortOrder];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 integerValue];

        if (v25 >= v22)
        {
          goto LABEL_20;
        }
      }

      else
      {

        if (v22 < 2)
        {
LABEL_20:
          v26 = v13;
          v27 = v6 == v13++;
          v5 = v16;
          if (v27)
          {
            goto LABEL_22;
          }

LABEL_21:
          *v6 = *v26;
          goto LABEL_22;
        }
      }

      v26 = v16;
      v5 = v16 + 1;
      if (v6 != v16)
      {
        goto LABEL_21;
      }

LABEL_22:
      ++v6;
      v15 = v47;
      if (v13 >= v47 || v5 >= v4)
      {
        goto LABEL_24;
      }
    }
  }

  if (a4 != __dst || &__dst[v12] <= a4)
  {
    v29 = a4;
    memmove(a4, __dst, 8 * v12);
    v5 = __dst;
    a4 = v29;
  }

  v48 = a4;
  v15 = &a4[v12];
  if (v10 < 8)
  {
    v13 = a4;
    goto LABEL_49;
  }

  v13 = a4;
  if (v5 <= v6)
  {
LABEL_49:
    v28 = v5;
    goto LABEL_50;
  }

  v31 = &off_2782F5000;
  do
  {
    v45 = v5;
    v32 = v5 - 1;
    --v4;
    v33 = v15;
    v46 = v32;
    while (1)
    {
      v34 = *--v33;
      v35 = *v32;
      v36 = v34;
      v37 = v35;
      v38 = [v36 v31[257]];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 integerValue];
      }

      else
      {
        v40 = 0;
      }

      v41 = [v37 v31[257]];
      if (!v41)
      {
        break;
      }

      v42 = v41;
      v43 = [v41 integerValue];

      if (v43 < v40)
      {
        goto LABEL_42;
      }

LABEL_40:
      v32 = v46;
      if (v4 + 1 != v15)
      {
        *v4 = *v33;
      }

      --v4;
      v15 = v33;
      v31 = &off_2782F5000;
      if (v33 <= v48)
      {
        v15 = v33;
        v13 = v48;
        v28 = v45;
        goto LABEL_50;
      }
    }

    if (v40 < 2)
    {
      goto LABEL_40;
    }

LABEL_42:
    v28 = v46;
    if (v4 + 1 != v45)
    {
      *v4 = *v46;
    }

    v13 = v48;
    v31 = &off_2782F5000;
    if (v15 <= v48)
    {
      break;
    }

    v5 = v46;
  }

  while (v46 > v6);
LABEL_50:
  if (v28 != v13 || v28 >= (v13 + ((v15 - v13 + (v15 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v28, v13, 8 * (v15 - v13));
  }

  return 1;
}

unint64_t sub_21BC2ACA4()
{
  result = qword_280BD8A20;
  if (!qword_280BD8A20)
  {
    v3 = sub_21BB3A2A4(255, &qword_280BD8A10, off_2782F0CC0);
    result = swift_getWitnessTable(protocol conformance descriptor for FAProfilePictureStore, v3, v0, v1);
    atomic_store(result, &qword_280BD8A20);
  }

  return result;
}

unint64_t sub_21BC2AD38(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_21BE2951C();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21BC2ADDC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21BE2951C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21BE2951C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21BB3B038(&qword_27CDB76D0, &qword_27CDB5CC8, &qword_21BE36190, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
            v9 = sub_21BC9D564(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC2AF90(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21BE2951C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21BE2951C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21BB3B038(&unk_27CDB76B0, &qword_27CDB76A8, &qword_21BE38780, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB76A8, &qword_21BE38780);
            v9 = sub_21BC9D5EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21BB3A2A4(0, &unk_27CDB6550, 0x277D08338);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_21BC2B144(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x277D84F90] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x21CF047C0](v4, v1);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_21BE2951C();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB76C0, &unk_21BE38788);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_21BC2B3A4()
{
  result = qword_280BD6A20;
  if (!qword_280BD6A20)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB75F0, &qword_21BE38480);
    v4[0] = sub_21BC2B428();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_280BD6A20);
  }

  return result;
}

unint64_t sub_21BC2B428()
{
  result = qword_280BD6A28;
  if (!qword_280BD6A28)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB7600, &qword_21BE38488);
    v4[0] = sub_21BB3B038(&qword_280BD69E8, &qword_27CDB7610, &qword_21BE38490, MEMORY[0x277CE11A8]);
    v4[1] = MEMORY[0x277CE0688];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_280BD6A28);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21BC2B5A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BC2B5E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21BC2B670(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21BC2B6C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void *sub_21BC2B75C(void *result)
{
  v1 = result[2];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x277D84F90] + 32;
    v6 = result + 4;
    while (1)
    {
      v20 = *&v6[2 * v3];
      if (v4)
      {
        swift_unknownObjectRetain();

        v7 = __OFSUB__(v4--, 1);
        if (v7)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7688, &qword_21BE38758);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 24;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = v11 + 4;
        v14 = v2[3] >> 1;
        v5 = &v11[3 * v14 + 4];
        v15 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;
        if (v2[2])
        {
          if (v11 != v2 || v13 >= &v2[3 * v14 + 4])
          {
            memmove(v13, v2 + 4, 24 * v14);
          }

          swift_unknownObjectRetain();

          v2[2] = 0;
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v2 = v11;
        v7 = __OFSUB__(v15, 1);
        v4 = v15 - 1;
        if (v7)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 8) = v20;
      v5 += 24;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v17 = v2[3];
  if (v17 >= 2)
  {
    v18 = v17 >> 1;
    v7 = __OFSUB__(v18, v4);
    v19 = v18 - v4;
    if (v7)
    {
      goto LABEL_30;
    }

    v2[2] = v19;
  }

  return v2;
}

unint64_t sub_21BC2B938(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x277D84F90] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x21CF047C0](v4, v1);
        v9 = result;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_21BE2951C();
          v2 = result;
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);
        result = swift_unknownObjectRetain();
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7680, &qword_21BE38750);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = v9;
      v7 += 2;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

void *sub_21BC2BB28(void *result)
{
  v1 = result[2];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (result + 4);
    v6 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      *&v21[0] = v3;
      result = sub_21BB3A35C(v5, v21 + 8);
      v22 = v21[0];
      v23 = v21[1];
      v24 = v21[2];
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7690, &qword_21BE38760);
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 48;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[6 * v13 + 4])
          {
            memmove(v10 + 4, v2 + 4, 48 * v13);
          }

          v2[2] = 0;
        }

        v6 = (v12 + 48 * v13);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v22;
      v17 = v24;
      v6[1] = v23;
      v6[2] = v17;
      *v6 = v16;
      v6 += 3;
      v5 += 40;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v15 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v15)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_21BC2BCD8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3)
{
  v29 = a1 + 32;

  v6 = 0;
  v7 = 0;
  v30 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90] + 32;
LABEL_4:
  v10 = *(a1 + 16);
  if (v7 == v10)
  {
    goto LABEL_29;
  }

  if (v7 >= v10)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = 16 * v7;
  v31 = *(v29 + 16 * v7);
  swift_unknownObjectRetain();
  a2(&v34, &v31);
  swift_unknownObjectRelease();
  v12 = v34;
  ++v7;
  v13 = (a1 + 48 + v11);

  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_7:
  v9 = *(v12 + 16);
  if (v9)
  {
    v16 = 0;
    while (v16 < v9)
    {
      sub_21BB3A35C(v12 + 40 * v16 + 32, &v31);
      v35 = v31;
      v36 = v32;
      v37 = v33;
      if (!*(&v32 + 1))
      {
        goto LABEL_30;
      }

      result = sub_21BB3D104(&v35, v38);
      if (!v6)
      {
        v17 = v30[3];
        if (((v17 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_38;
        }

        v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E0, &unk_21BE32F50);
        v20 = swift_allocObject();
        v21 = (_swift_stdlib_malloc_size(v20) - 32) / 40;
        v20[2] = v19;
        v20[3] = 2 * v21;
        v22 = (v20 + 4);
        v23 = v30[3] >> 1;
        if (v30[2])
        {
          v24 = v30 + 4;
          if (v20 != v30 || v22 >= v24 + 40 * v23)
          {
            memmove(v20 + 4, v24, 40 * v23);
          }

          v30[2] = 0;
        }

        v8 = v22 + 40 * v23;
        v6 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

        v30 = v20;
      }

      v25 = __OFSUB__(v6--, 1);
      if (v25)
      {
        goto LABEL_36;
      }

      ++v16;
      result = sub_21BB3D104(v38, v8);
      v8 += 40;
      v9 = *(v12 + 16);
      if (v16 == v9)
      {
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
        result = sub_21BC2BFF8(&v31);
        goto LABEL_4;
      }
    }

    goto LABEL_35;
  }

  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  result = sub_21BC2BFF8(&v31);
LABEL_9:
  while (1)
  {
    v14 = *(a1 + 16);
    if (v7 == v14)
    {
      break;
    }

    if (v7 >= v14)
    {
      goto LABEL_34;
    }

    v15 = *v13++;
    v31 = v15;
    swift_unknownObjectRetain();
    a2(&v34, &v31);
    swift_unknownObjectRelease();
    v12 = v34;
    ++v7;

    if (v12)
    {
      goto LABEL_7;
    }
  }

LABEL_29:
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
LABEL_30:

  result = sub_21BC2BFF8(&v35);
  v26 = v30[3];
  if (v26 < 2)
  {
    return v30;
  }

  v27 = v26 >> 1;
  v25 = __OFSUB__(v27, v6);
  v28 = v27 - v6;
  if (!v25)
  {
    v30[2] = v28;
    return v30;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_21BC2BFF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB76A0, &unk_21BE38770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_2()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_21BC2C0A0()
{
  result = qword_27CDB76D8;
  if (!qword_27CDB76D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7698, &qword_21BE38768);
    v4[0] = sub_21BC2C12C();
    v4[1] = MEMORY[0x277CDFC30];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB76D8);
  }

  return result;
}

unint64_t sub_21BC2C12C()
{
  result = qword_27CDB76E0;
  if (!qword_27CDB76E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB76E8, &qword_21BE38798);
    v4[0] = sub_21BC2C1B8();
    v4[1] = MEMORY[0x277CDF748];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB76E0);
  }

  return result;
}

unint64_t sub_21BC2C1B8()
{
  result = qword_27CDB76F0;
  if (!qword_27CDB76F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB76F8, &qword_21BE387A0);
    v4[0] = sub_21BB3B038(&qword_27CDB7700, &qword_27CDB7708, &qword_21BE387A8, MEMORY[0x277CDF3A0]);
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB76F0);
  }

  return result;
}

unint64_t sub_21BC2C270()
{
  result = qword_27CDB7710;
  if (!qword_27CDB7710)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7718, &qword_21BE387B0);
    v4[0] = sub_21BC2C2FC();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB7710);
  }

  return result;
}

unint64_t sub_21BC2C2FC()
{
  result = qword_27CDB7720;
  if (!qword_27CDB7720)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB7728, &qword_21BE387B8);
    v4[0] = sub_21BC2C388();
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB7720);
  }

  return result;
}

unint64_t sub_21BC2C388()
{
  result = qword_280BD6A30;
  if (!qword_280BD6A30)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7738, qword_21BE387C0);
    v4[0] = sub_21BC2C440();
    v4[1] = sub_21BB3B038(&qword_280BD6A38, qword_27CDB7740, &qword_21BE3CA40, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_280BD6A30);
  }

  return result;
}

unint64_t sub_21BC2C440()
{
  result = qword_280BD7700;
  if (!qword_280BD7700)
  {
    result = swift_getWitnessTable(asc_21BE41698, &type metadata for FAImageView, v0, v1);
    atomic_store(result, &qword_280BD7700);
  }

  return result;
}

id sub_21BC2C4DC(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_21BC2C520()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2612C();
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FFC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21BB35000, v4, v5, "Biome stream sunk, it's all over now", v6, 2u);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

char *sub_21BC2C674(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_21BE26A4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 locationChangeType];
  if ((result - 1) <= 1)
  {
    sub_21BE2612C();
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FCC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21BB35000, v12, v13, "Signal on sharing status change event", v14, 2u);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    v15 = sub_21BE28DAC();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v2;

    sub_21BBA9018(0, 0, v6, &unk_21BE388B8, v16);
  }

  return result;
}

uint64_t sub_21BC2C8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_21BC2C8D4, 0, 0);
}

uint64_t sub_21BC2C8D4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  *(v0 + 32) = v2;
  if (v2)
  {
    v3 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    swift_unknownObjectRetain();
    v9 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 40) = v6;
    *v6 = v0;
    v6[1] = sub_21BC2CA5C;

    return v9(ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_21BC2CA5C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_21BC2CB74, 0, 0);
}

void *LocationShareListener.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_21BC2CE60(a1, v2, ObjectType, a2);
}

void *LocationShareListener.init(delegate:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_21BC2CEC0(a1, v2, ObjectType, a2);
}

uint64_t sub_21BC2CC60()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2612C();
  v6 = sub_21BE26A2C();
  v7 = sub_21BE28FCC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21BB35000, v6, v7, "BiomeListener for location shutdown", v8, 2u);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = v1[2];
  if (v9)
  {
    v10 = *(v9 + 16);

    [v10 cancel];
    v11 = *(v9 + 16);
    *(v9 + 16) = 0;
  }

  v1[2] = 0;

  v1[3] = 0;
  v1[4] = 0;
  return swift_unknownObjectRelease();
}

uint64_t LocationShareListener.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t LocationShareListener.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_21BC2CE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocationShareListener();
  v7 = swift_allocObject();

  return sub_21BC2CEC0(a1, v7, a3, a4);
}

void *sub_21BC2CEC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21BE26A4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2[2] = 0;
  a2[3] = a1;
  a2[4] = a4;
  v11 = [objc_opt_self() findMyLocationChangeStream];
  v12 = [v11 publisher];

  v13 = sub_21BDCF5D0(0x6E6F697461636F6CLL, 0xE800000000000000);
  v14 = [v12 subscribeOn_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB7830, &unk_21BE388C0);
  swift_allocObject();
  v15 = v14;

  a2[2] = sub_21BDCF180(v15, sub_21BC2D3B0, a2);

  sub_21BE2612C();
  v16 = sub_21BE26A2C();
  v17 = sub_21BE28FFC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_21BB35000, v16, v17, "LocationShareListener started", v18, 2u);
    MEMORY[0x21CF05C50](v18, -1, -1);
    v19 = v15;
  }

  else
  {
    v19 = v16;
    v16 = v15;
  }

  (*(v8 + 8))(v10, v7);
  return a2;
}

uint64_t dispatch thunk of LocationShareListenerDelegate.notifyLocationChange()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return v7(a1, a2);
}

uint64_t sub_21BC2D2FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BC2C8B4(a1, v4, v5, v6);
}

uint64_t type metadata accessor for FamilyMemberAccountDetails(uint64_t a1)
{
  result = qword_27CDB7840;
  if (!qword_27CDB7840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC2D438(uint64_t a1)
{
  sub_21BC2D71C(319, &qword_27CDB5EC8, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_21BC2D620(319);
    if (v2 <= 0x3F)
    {
      sub_21BC2D6B4(319);
      if (v3 <= 0x3F)
      {
        sub_21BB3A2A4(319, &qword_280BD8A40, 0x277D08268);
        if (v4 <= 0x3F)
        {
          sub_21BB3A2A4(319, &qword_280BD6980, 0x277D08248);
          if (v5 <= 0x3F)
          {
            type metadata accessor for AgeRangeSharingViewModel(319);
            if (v6 <= 0x3F)
            {
              sub_21BB403C0();
              if (v7 <= 0x3F)
              {
                sub_21BC2D71C(319, &qword_27CDB7860, type metadata accessor for FamilyDependentPasswordResetController, MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  sub_21BC2D71C(319, &qword_27CDB6118, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
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
  }
}

void sub_21BC2D620(uint64_t a1)
{
  if (!qword_27CDB7850)
  {
    type metadata accessor for FamilyMemberAccountDetailsViewModel();
    sub_21BC35B30(&qword_27CDBDBE0, type metadata accessor for FamilyMemberAccountDetailsViewModel, aF_5);
    v1 = sub_21BE270DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB7850);
    }
  }
}

void sub_21BC2D6B4(uint64_t a1)
{
  if (!qword_27CDB7858)
  {
    sub_21BB3A2A4(255, &qword_280BD8A40, 0x277D08268);
    v1 = sub_21BE2946C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB7858);
    }
  }
}

void sub_21BC2D71C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_DWORD *__swift_memcpy7_4(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FamilyMemberAccountDetails.GlobalStateLabel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 7))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FamilyMemberAccountDetails.GlobalStateLabel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21BC2D85C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_21BC2D8C0()
{
  v1 = *(v0 + *(type metadata accessor for FamilyMemberAccountDetails(0) + 28));
  v2 = [v1 appleID];
  if (v2)
  {
    v3 = v2;
    v4 = sub_21BE28A0C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = [v1 iTunesAccountUsername];
  if (!v7)
  {
    if (v6)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v8 = v7;
  v9 = sub_21BE28A0C();
  v11 = v10;

  if (!v6)
  {
    if (v11)
    {
LABEL_15:

      v14 = 1;
      return v14 & 1;
    }

LABEL_17:
    v14 = 0;
    return v14 & 1;
  }

  if (!v11)
  {
    goto LABEL_15;
  }

  if (v4 == v9 && v6 == v11)
  {

    goto LABEL_17;
  }

  v13 = sub_21BE2995C();

  v14 = v13 ^ 1;
  return v14 & 1;
}

uint64_t sub_21BC2D9E8()
{
  v0 = sub_21BE2642C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = [objc_opt_self() sharedBag];
  if (v11)
  {
    v12 = v11;
    v13 = sub_21BE289CC();
    v14 = [v12 configurationAtKey:v13];

    if (v14)
    {
      sub_21BE294BC();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29[0] = v27;
    v29[1] = v28;
    if (*(&v28 + 1))
    {
      if (swift_dynamicCast())
      {
        v15 = v26;
        sub_21BE2614C();
        v16 = sub_21BE26A2C();
        v17 = sub_21BE28FCC();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v25 = v16;
          v19 = v18;
          *v18 = 67109120;
          *(v18 + 4) = v15;
          _os_log_impl(&dword_21BB35000, v25, v17, "FamilyMemberAccountDetails Fetching proxAdvertisementDisabled from AKURLBag: %{BOOL}d", v18, 8u);
          v20 = v19;
          v16 = v25;
          MEMORY[0x21CF05C50](v20, -1, -1);
        }

        goto LABEL_15;
      }
    }

    else
    {

      sub_21BB3A4CC(v29, &qword_27CDB5940, &unk_21BE32B10);
    }
  }

  sub_21BE2614C();
  v12 = sub_21BE26A2C();
  v21 = sub_21BE28FCC();
  if (os_log_type_enabled(v12, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_21BB35000, v12, v21, "FamilyMemberAccountDetails proxAdvertisementDisabled not available in URLBag, assuming it is set to false by default.", v22, 2u);
    MEMORY[0x21CF05C50](v22, -1, -1);
  }

  v15 = 0;
  v10 = v8;
LABEL_15:

  (*(v5 + 8))(v10, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D08050], v0);
  v23 = sub_21BE2641C();
  (*(v1 + 8))(v3, v0);
  return (v15 ^ v23) & 1;
}

uint64_t sub_21BC2DDA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FamilyMemberAccountDetails(0);
  sub_21BBA3854(v1 + *(v10 + 52), v9, &qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BE27B0C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21BE28FEC();
    v13 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_21BC2DFAC(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  sub_21BE25E9C();
  v2[21] = swift_task_alloc();
  v3 = sub_21BE25EBC();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v4 = sub_21BE25B9C();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  sub_21BE28D7C();
  v2[29] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v2[30] = v6;
  v2[31] = v5;

  return MEMORY[0x2822009F8](sub_21BC2E134, v6, v5);
}

uint64_t sub_21BC2E134()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D08348]) init];
  v0[32] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BC2E26C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5808, &qword_21BE328C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_8;
  v0[14] = v2;
  [v1 fetchAAURLConfigurationWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BC2E26C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = sub_21BC2E800;
  }

  else
  {
    v5 = sub_21BC2E39C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BC2E39C()
{
  v1 = v0[32];
  v2 = v0[18];
  v0[34] = v2;

  v3 = [v2 urlForEndpoint_];
  if (v3)
  {
    v4 = v0[27];
    v5 = v0[28];
    v6 = v0[25];
    v7 = v0[26];
    v8 = v3;
    sub_21BE25B5C();

    (*(v7 + 32))(v5, v4, v6);
    v9 = [objc_allocWithZone(FACircleContext) initWithEventType_];
    v0[35] = v9;
    v10 = sub_21BE25B2C();
    [v9 setUrlForContext_];

    v11 = swift_task_alloc();
    v0[36] = v11;
    *v11 = v0;
    v11[1] = sub_21BC2E610;
    v12 = v0[19];

    return sub_21BC2E8A8(v9, v12);
  }

  else
  {
    v15 = v0[23];
    v14 = v0[24];
    v16 = v0[22];

    sub_21BE25E8C();
    sub_21BDCE614(MEMORY[0x277D84F90]);
    sub_21BC35B30(&qword_27CDB7A10, MEMORY[0x277CC9AE8], MEMORY[0x277CC9AE0]);
    sub_21BE25A6C();
    sub_21BE25EAC();
    (*(v15 + 8))(v14, v16);
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21BC2E610()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_21BC2E730, v3, v2);
}

uint64_t sub_21BC2E730()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 200);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21BC2E800()
{
  v1 = *(v0 + 256);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BC2E8A8(uint64_t a1, uint64_t a2)
{
  v2[29] = a1;
  v2[30] = a2;
  v3 = sub_21BE26A4C();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  sub_21BE28D7C();
  v2[34] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[35] = v5;
  v2[36] = v4;

  return MEMORY[0x2822009F8](sub_21BC2E99C, v5, v4);
}

uint64_t sub_21BC2E99C()
{
  v1 = v0[29];
  v2 = [objc_allocWithZone(FACircleStateController) initWithPresenter_];
  v0[37] = v2;
  v0[22] = sub_21BC2EE98;
  v0[23] = 0;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21BB42A18;
  v0[21] = &block_descriptor_70;
  v3 = _Block_copy(v0 + 18);
  [v2 setPresentationHandler_];
  _Block_release(v3);
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_21BC2EB68;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BC2D85C;
  v0[13] = &block_descriptor_73;
  v0[14] = v4;
  [v2 performWithContext:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BC2EB68()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);

  return MEMORY[0x2822009F8](sub_21BC2EC70, v2, v1);
}

void *sub_21BC2EC70()
{
  v22 = v0;

  v1 = v0[27];
  v2 = [v1 error];
  if (v2)
  {
    v3 = v2;
    sub_21BE2614C();
    v4 = v3;
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FDC();

    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[32];
    v8 = v0[33];
    v10 = v0[31];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_21BE29A5C();
      v20 = v10;
      v15 = sub_21BB3D81C(v13, v14, &v21);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_21BB35000, v5, v6, "Error loading stateController: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x21CF05C50](v12, -1, -1);
      MEMORY[0x21CF05C50](v11, -1, -1);

      (*(v9 + 8))(v8, v20);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }
  }

  v16 = v0[37];
  v17 = [v1 success];

  result = *MEMORY[0x277D76620];
  if (*MEMORY[0x277D76620])
  {
    [result endIgnoringInteractionEvents];

    v19 = v0[1];

    return v19(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21BC2EE98()
{
  result = *MEMORY[0x277D76620];
  if (*MEMORY[0x277D76620])
  {
    return [result endIgnoringInteractionEvents];
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC2EEB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7870, &qword_21BE38AA0);
  v74 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v4 = &v57 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7878, &qword_21BE38AA8);
  MEMORY[0x28223BE20](v5);
  v7 = &v57 - v6;
  *v7 = sub_21BE2771C();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7880, &qword_21BE38AB0);
  sub_21BC2FA24(v1, &v7[*(v8 + 44)]);
  v65 = type metadata accessor for FamilyMemberAccountDetails(0);
  v9 = (v1 + *(v65 + 36));
  v11 = *v9;
  v10 = v9[1];
  v79 = v11;
  v80 = v10;
  sub_21BB3B038(&qword_27CDB7888, &qword_27CDB7878, &qword_21BE38AA8, MEMORY[0x277CE1198]);
  sub_21BB41FA4();
  sub_21BE27F9C();
  sub_21BB3A4CC(v7, &qword_27CDB7878, &qword_21BE38AA8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7890, &qword_21BE38AB8);
  v70 = *(v12 - 8);
  v71 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = &v57 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7898, &unk_21BE38AC0);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5060, &qword_21BE31038);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB78A0, &qword_21BE38AD0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v57 - v20;
  v73 = v4;
  v75 = v4;
  v76 = v2;
  v69 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB78A8, &qword_21BE38AD8);
  sub_21BB3B038(&qword_27CDB78B0, &qword_27CDB78A8, &qword_21BE38AD8, MEMORY[0x277CE14C0]);
  sub_21BE27D0C();
  v22 = sub_21BE271DC();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE286DC();
  sub_21BB3B038(&qword_27CDB78B8, &qword_27CDB78A0, &qword_21BE38AD0, MEMORY[0x277CDE580]);
  sub_21BC35B30(&qword_27CDB78C0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  sub_21BE281FC();
  (*(v23 + 8))(v25, v22);
  (*(v19 + 8))(v21, v18);
  v61 = v15;
  v26 = *(v15 + 36);
  v62 = v17;
  v27 = &v17[v26];
  *&v17[v26] = sub_21BC33ECC;
  sub_21BE28D7C();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 1) = 0;
  v28 = sub_21BE28D6C();
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  *(v29 + 16) = v28;
  *(v29 + 24) = v30;
  v31 = sub_21BE28DAC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = &v57 - v34;
  sub_21BE28D8C();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v59 = sub_21BE2715C();
    v60 = &v57;
    v58 = *(v59 - 8);
    MEMORY[0x28223BE20](v59);
    v37 = &v57 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_21BE295EC();

    v79 = 0xD00000000000003CLL;
    v80 = 0x800000021BE58770;
    v77 = 376;
    v38 = sub_21BE2992C();
    MEMORY[0x21CF03CA0](v38);

    MEMORY[0x28223BE20](v39);
    (*(v32 + 16))(&v57 - v34, &v57 - v34, v31);
    sub_21BE2714C();
    (*(v32 + 8))(&v57 - v34, v31);
    v40 = v63;
    sub_21BBB7D84(v62, v63, &qword_27CDB5060, &qword_21BE31038);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5068, &unk_21BE31040);
    (*(v58 + 32))(v40 + *(v41 + 36), v37, v59);
  }

  else
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5070, &qword_21BE38B20);
    v40 = v63;
    v43 = (v63 + *(v42 + 36));
    v44 = sub_21BE2701C();
    (*(v32 + 32))(&v43[*(v44 + 20)], v35, v31);
    *v43 = &unk_21BE38AE8;
    *(v43 + 1) = v29;
    sub_21BBB7D84(v62, v40, &qword_27CDB5060, &qword_21BE31038);
  }

  v45 = sub_21BC3510C();
  v79 = v61;
  v80 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v68;
  v48 = v66;
  sub_21BE27E3C();
  (*(v64 + 8))(v40, v48);
  v49 = *(v69 + *(v65 + 40));
  v50 = sub_21BE25D6C();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v53 = &v57 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v79 = v49;
  sub_21BC35B30(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v54 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken;
  swift_beginAccess();
  (*(v51 + 16))(v53, v49 + v54, v50);
  v77 = v48;
  v78 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21BC35B30(&qword_27CDB78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v55 = v71;
  sub_21BE281CC();
  (*(v51 + 8))(v53, v50);
  (*(v70 + 8))(v47, v55);
  return (*(v74 + 8))(v73, v67);
}

uint64_t sub_21BC2FA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FamilyMemberAccountDetails(0);
  v5 = v4 - 8;
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v56 = v6;
  v57 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A18, &qword_21BE38D80);
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A20, &qword_21BE38D88);
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x28223BE20](v10);
  v58 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A28, &qword_21BE38D90);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  v18 = *(a1 + *(v5 + 36));
  v64 = sub_21BC30030(v18);
  v65 = v19;

  MEMORY[0x21CF03CA0](10, 0xE100000000000000);

  sub_21BB41FA4();
  v20 = sub_21BE27DBC();
  v22 = v21;
  v61 = v23;
  v25 = v24;
  if (sub_21BC2D8C0())
  {
    v26 = 1;
  }

  else
  {
    v54 = v25;
    if ([v18 isMe])
    {
      String.rebrand.getter(0xD000000000000020, 0x800000021BE58970);
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v50 = ObjCClassFromMetadata;
      v51 = objc_opt_self();
      v28 = [v51 bundleForClass_];
      v29 = sub_21BE2599C();
      v52 = v30;
      v53 = v29;

      String.rebrand.getter(0xD000000000000027, 0x800000021BE589A0);
      v31 = [v51 bundleForClass_];
      v32 = sub_21BE2599C();
      v50 = v33;
      v51 = v32;

      v49 = 0x800000021BE58910;
      KeyPath = swift_getKeyPath();
      v35 = v57;
      sub_21BC3559C(a1, v57);
      v36 = (*(v55 + 80) + 16) & ~*(v55 + 80);
      v37 = swift_allocObject();
      sub_21BC35600(v35, v37 + v36);
      v38 = v60;
      v39 = &v9[*(v60 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A38, &qword_21BE38DD0);
      sub_21BE26FDC();
      *v39 = KeyPath;
      v40 = v52;
      *v9 = v53;
      *(v9 + 1) = v40;
      v41 = v50;
      *(v9 + 2) = v51;
      *(v9 + 3) = v41;
      v42 = v49;
      *(v9 + 4) = 0xD000000000000022;
      *(v9 + 5) = v42;
      v9[48] = 0;
      v43 = v58;
      sub_21BBB7D84(v9, v58, &qword_27CDB7A18, &qword_21BE38D80);
      v44 = 0;
    }

    else
    {
      v44 = 1;
      v38 = v60;
      v43 = v58;
    }

    (*(v59 + 56))(v43, v44, 1, v38);
    sub_21BBB7D84(v43, v17, &qword_27CDB7A20, &qword_21BE38D88);
    v26 = 0;
    v25 = v54;
  }

  (*(v62 + 56))(v17, v26, 1, v63);
  sub_21BBA3854(v17, v15, &qword_27CDB7A28, &qword_21BE38D90);
  *a2 = v20;
  *(a2 + 8) = v22;
  v45 = v61 & 1;
  *(a2 + 16) = v61 & 1;
  *(a2 + 24) = v25;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A30, &qword_21BE38D98);
  sub_21BBA3854(v15, a2 + *(v46 + 48), &qword_27CDB7A28, &qword_21BE38D90);
  sub_21BBA4A38(v20, v22, v45);

  sub_21BB3A4CC(v17, &qword_27CDB7A28, &qword_21BE38D90);
  sub_21BB3A4CC(v15, &qword_27CDB7A28, &qword_21BE38D90);
  sub_21BBC7C7C(v20, v22, v45);
}

uint64_t sub_21BC30030(void *a1)
{
  v2 = sub_21BE2917C();
  v4 = v3;
  if ([a1 isMe])
  {

    v5 = sub_21BC2D8C0();
    v6 = (v5 & 1) == 0;
    if (v5)
    {
      v7 = 0xD000000000000022;
    }

    else
    {
      v7 = 0xD000000000000027;
    }

    if (v6)
    {
      v8 = "COUNT_APPLE_ID_FOOTER";
    }

    else
    {
      v8 = "NT_SAME_APPLE_ID_FOOTER";
    }

    String.rebrand.getter(v7, v8 | 0x8000000000000000);

    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = sub_21BE2599C();

    return v11;
  }

  else
  {
    v13 = sub_21BC2D8C0();
    v14 = (v13 & 1) == 0;
    if (v13)
    {
      v15 = 0xD000000000000025;
    }

    else
    {
      v15 = 0xD00000000000002ALL;
    }

    if (v14)
    {
      v16 = "_APPLE_ID_ACTION_FOOTER";
    }

    else
    {
      v16 = "COUNT_SAME_APPLE_ID_FOOTER";
    }

    String.rebrand.getter(v15, v16 | 0x8000000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21BE32770;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_21BBBEFE8();
    *(v17 + 32) = v2;
    *(v17 + 40) = v4;
    type metadata accessor for ConfirmChildAgeViewModel();
    v18 = swift_getObjCClassFromMetadata();
    v19 = objc_opt_self();

    v20 = [v19 bundleForClass_];
    sub_21BE2599C();

    v21 = sub_21BE289DC();

    return v21;
  }
}

uint64_t sub_21BC302BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_21BE27B0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BC2DDA4(v6);
  v9 = a2;
  sub_21BE27AFC();
  (*(v4 + 8))(v6, v3);
  return sub_21BE26FCC();
}

uint64_t sub_21BC303BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21BE28D7C();
  v5[4] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_21BC30454, v7, v6);
}

uint64_t sub_21BC30454()
{
  v1 = [*(v0 + 24) navigationController];
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_21BC30508;

  return sub_21BC2DFAC(v1);
}

uint64_t sub_21BC30508()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_21BC30688;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_21BC30624;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BC30624()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BC30688()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BC306F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v161 = a3;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB78E0, &qword_21BE38B28);
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v148 = &v132 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB78E8, &qword_21BE38B30);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v160 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v163 = &v132 - v9;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB78F0, &qword_21BE38B38);
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v147 = &v132 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB78F8, &qword_21BE38B40);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v159 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v167 = &v132 - v14;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7900, &qword_21BE38B48);
  v151 = *(v152 - 1);
  MEMORY[0x28223BE20](v152);
  v146 = &v132 - v15;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7908, &qword_21BE38B50);
  v144 = *(v145 - 8);
  v16 = MEMORY[0x28223BE20](v145);
  v143 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v142 = &v132 - v18;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7910, &qword_21BE38B58);
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v134 = &v132 - v19;
  v20 = sub_21BE25FCC();
  v135 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7918, &qword_21BE38B60);
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v136 = &v132 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7920, &qword_21BE38B68);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v141 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v149 = &v132 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7928, &qword_21BE38B70);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v166 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v132 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7870, &qword_21BE38AA0);
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v132 - v35;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7930, &qword_21BE38B78);
  v155 = *(v156 - 8);
  v37 = MEMORY[0x28223BE20](v156);
  v165 = &v132 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v132 - v39;
  (*(v34 + 16))(v36, a1, v33);
  v168 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7878, &qword_21BE38AA8);
  v42 = sub_21BB3B038(&qword_27CDB7888, &qword_27CDB7878, &qword_21BE38AA8, MEMORY[0x277CE1198]);
  v43 = sub_21BB41FA4();
  v170 = v41;
  v171 = MEMORY[0x277D837D0];
  v172 = v42;
  v173 = v43;
  v150 = v43;
  v44 = 1;
  swift_getOpaqueTypeConformance2();
  v164 = v40;
  v45 = a2;
  sub_21BE2861C();
  v46 = sub_21BC31BA8();
  v162 = v32;
  if (v46)
  {
    v47 = [*(a2 + *(type metadata accessor for FamilyMemberAccountDetails(0) + 28)) shortName];
    if (v47)
    {
      v48 = v47;
      sub_21BE28A0C();

      v49 = v135;
      (*(v135 + 104))(v22, *MEMORY[0x277D07F08], v20);
      v50 = MEMORY[0x21CF01150](v22);
      (*(v49 + 8))(v22, v20);
      if ((v50 & 1) != 0 && (v51 = sub_21BC2D9E8(), (v51 & 1) == 0))
      {
        MEMORY[0x28223BE20](v51);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79C0, &qword_21BE38C00);
        v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D48, &qword_21BE36038);
        v59 = sub_21BB3B038(&qword_27CDB6D40, &qword_27CDB6D48, &qword_21BE36038, MEMORY[0x277CE19B0]);
        v170 = v58;
        v171 = v59;
        swift_getOpaqueTypeConformance2();
        v60 = v134;
        sub_21BE2860C();

        v54 = v137;
        v55 = v136;
        v61 = v138;
        (*(v137 + 32))(v136, v60, v138);
        v53 = v61;
        v52 = 0;
      }

      else
      {

        v52 = 1;
        v53 = v138;
        v54 = v137;
        v55 = v136;
      }

      (*(v54 + 56))(v55, v52, 1, v53);
      v57 = v149;
      sub_21BBB7D84(v55, v149, &qword_27CDB7918, &qword_21BE38B60);
      v56 = 0;
      v45 = a2;
    }

    else
    {
      v56 = 1;
      v57 = v149;
    }

    v133 = v45;
    (*(v139 + 56))(v57, v56, 1, v140);
    String.rebrand.getter(0xD00000000000001CLL, 0x800000021BE587D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_21BE32770;
    v63 = sub_21BE2917C();
    v65 = v64;
    *(v62 + 56) = MEMORY[0x277D837D0];
    *(v62 + 64) = sub_21BBBEFE8();
    *(v62 + 32) = v63;
    *(v62 + 40) = v65;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v67 = objc_opt_self();

    v68 = [v67 bundleForClass_];
    sub_21BE2599C();

    v69 = sub_21BE289DC();
    v71 = v70;

    v170 = v69;
    v171 = v71;
    v170 = sub_21BE27DBC();
    v171 = v72;
    LOBYTE(v172) = v73 & 1;
    v173 = v74;
    MEMORY[0x28223BE20](v170);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79A8, &qword_21BE38BF0);
    sub_21BB3B038(&qword_27CDB79B0, &qword_27CDB79A8, &qword_21BE38BF0, MEMORY[0x277CE1138]);
    v75 = v142;
    sub_21BE2861C();
    v76 = v141;
    sub_21BBA3854(v57, v141, &qword_27CDB7920, &qword_21BE38B68);
    v77 = v144;
    v78 = *(v144 + 16);
    v79 = v143;
    v80 = v145;
    v78(v143, v75, v145);
    v81 = v146;
    sub_21BBA3854(v76, v146, &qword_27CDB7920, &qword_21BE38B68);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79B8, &qword_21BE38BF8);
    v78((v81 + *(v82 + 48)), v79, v80);
    v83 = *(v77 + 8);
    v84 = v75;
    v45 = v133;
    v83(v84, v80);
    sub_21BB3A4CC(v149, &qword_27CDB7920, &qword_21BE38B68);
    v83(v79, v80);
    sub_21BB3A4CC(v76, &qword_27CDB7920, &qword_21BE38B68);
    v32 = v162;
    sub_21BBB7D84(v81, v162, &qword_27CDB7900, &qword_21BE38B48);
    v44 = 0;
  }

  v85 = 1;
  (*(v151 + 56))(v32, v44, 1, v152);
  v86 = sub_21BC3302C();
  v87 = v167;
  v88 = v154;
  v89 = v153;
  if (v86)
  {
    v90 = type metadata accessor for FamilyMemberAccountDetails(0);
    v152 = &v132;
    v170 = *(v45 + *(v90 + 28));
    MEMORY[0x28223BE20](v90);
    v92 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7980, &qword_21BE38BD8);
    sub_21BC3542C();
    sub_21BC354E4();
    v93 = v32;
    v94 = v147;
    sub_21BE2709C();
    v95 = v94;
    v32 = v93;
    (*(v89 + 32))(v87, v95, v88);
    v85 = 0;
  }

  v96 = 1;
  (*(v89 + 56))(v87, v85, 1, v88);
  v97 = sub_21BC2D8C0();
  v98 = v158;
  if (v97)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v99 = swift_getObjCClassFromMetadata();
    v100 = [objc_opt_self() bundleForClass_];
    v101 = sub_21BE2599C();
    v103 = v102;

    v170 = v101;
    v171 = v103;
    v104 = sub_21BE27DBC();
    v106 = v105;
    LOBYTE(v103) = v107;
    v109 = v108;
    v110 = sub_21BE27B8C();
    sub_21BE26E0C();
    v181 = v103 & 1;
    v180 = 0;
    v170 = v104;
    v171 = v106;
    LOBYTE(v172) = v103 & 1;
    v173 = v109;
    v174 = v110;
    v175 = v111;
    v176 = v112;
    v177 = v113;
    v178 = v114;
    v179 = 0;
    sub_21BC33330(&v169);
    MEMORY[0x28223BE20](v115);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7940, &qword_21BE47630);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7948, &qword_21BE38B90);
    sub_21BC35268();
    sub_21BC352EC();
    sub_21BC353D0();
    v116 = v148;
    sub_21BE285FC();
    v117 = sub_21BE2833C();
    KeyPath = swift_getKeyPath();
    v119 = (v116 + *(v98 + 36));
    *v119 = KeyPath;
    v119[1] = v117;
    sub_21BBB7D84(v116, v163, &qword_27CDB78E0, &qword_21BE38B28);
    v96 = 0;
  }

  v120 = v163;
  (*(v157 + 56))(v163, v96, 1, v98);
  v121 = v155;
  v122 = *(v155 + 16);
  v123 = v165;
  v124 = v156;
  v122(v165, v164, v156);
  v125 = v166;
  sub_21BBA3854(v32, v166, &qword_27CDB7928, &qword_21BE38B70);
  v126 = v159;
  sub_21BBA3854(v87, v159, &qword_27CDB78F8, &qword_21BE38B40);
  v127 = v160;
  sub_21BBA3854(v120, v160, &qword_27CDB78E8, &qword_21BE38B30);
  v128 = v161;
  v122(v161, v123, v124);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7938, &unk_21BE38B80);
  sub_21BBA3854(v125, &v128[v129[12]], &qword_27CDB7928, &qword_21BE38B70);
  sub_21BBA3854(v126, &v128[v129[16]], &qword_27CDB78F8, &qword_21BE38B40);
  sub_21BBA3854(v127, &v128[v129[20]], &qword_27CDB78E8, &qword_21BE38B30);
  sub_21BB3A4CC(v120, &qword_27CDB78E8, &qword_21BE38B30);
  sub_21BB3A4CC(v167, &qword_27CDB78F8, &qword_21BE38B40);
  sub_21BB3A4CC(v162, &qword_27CDB7928, &qword_21BE38B70);
  v130 = *(v121 + 8);
  v130(v164, v124);
  sub_21BB3A4CC(v127, &qword_27CDB78E8, &qword_21BE38B30);
  sub_21BB3A4CC(v126, &qword_27CDB78F8, &qword_21BE38B40);
  sub_21BB3A4CC(v166, &qword_27CDB7928, &qword_21BE38B70);
  return (v130)(v165, v124);
}

uint64_t sub_21BC31B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + *(type metadata accessor for FamilyMemberAccountDetails(0) + 28)) appleID];
  if (v3)
  {
    v4 = v3;
    sub_21BE28A0C();
  }

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

id sub_21BC31BA8()
{
  v1 = type metadata accessor for FamilyMemberAccountDetails(0);
  result = [*(v0 + *(v1 + 28)) isChildAccount];
  if (result)
  {
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v3 = result;
      v4 = [result hasLocalSecret];

      if (v4)
      {
        result = *(v0 + *(v1 + 24));
        if (result)
        {
          return [result isGuardian];
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21BC31C54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D48, &qword_21BE36038);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[4] = &type metadata for ProximityTip;
  v9[5] = sub_21BC35548();
  v9[1] = a1;
  v9[2] = a2;

  sub_21BE26AAC();
  sub_21BB3B038(&qword_27CDB6D40, &qword_27CDB6D48, &qword_21BE36038, MEMORY[0x277CE19B0]);
  sub_21BE27E0C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21BC31DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21BE275DC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79D0, &unk_21BE38C08);
  return sub_21BC31E3C(a1, a2 + *(v4 + 44));
}

uint64_t sub_21BC31E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820);
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x28223BE20](v3);
  v72 = &v71 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79D8, &qword_21BE38C18);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v87 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v86 = &v71 - v8;
  v9 = type metadata accessor for FamilyMemberAccountDetails(0);
  v74 = *(v9 - 8);
  v10 = *(v74 + 64);
  MEMORY[0x28223BE20](v9);
  v75 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x28223BE20](v11);
  v77 = &v71 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79E0, &qword_21BE3F220);
  v13 = MEMORY[0x28223BE20](v76);
  v83 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v71 - v16;
  MEMORY[0x28223BE20](v15);
  v82 = &v71 - v18;
  v19 = sub_21BE257FC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v9;
  v81 = a1;
  v23 = sub_21BE2917C();
  v25 = v24;
  v90 = v23;
  v91 = v24;
  sub_21BE257DC();
  v26 = sub_21BB41FA4();
  v27 = MEMORY[0x277D837D0];
  v73 = v26;
  v28 = sub_21BE2948C();
  v30 = v29;
  (*(v20 + 8))(v22, v19);

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_21BE32770;
    *(v32 + 56) = v27;
    *(v32 + 64) = sub_21BBBEFE8();
    *(v32 + 32) = v23;
    *(v32 + 40) = v25;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = objc_opt_self();

    v35 = [v34 bundleForClass_];
    sub_21BE2599C();

    v36 = sub_21BE289DC();
    v38 = v37;
  }

  else
  {

    type metadata accessor for ConfirmChildAgeViewModel();
    v39 = swift_getObjCClassFromMetadata();
    v40 = [objc_opt_self() bundleForClass_];
    v36 = sub_21BE2599C();
    v38 = v41;
  }

  v90 = v36;
  v91 = v38;
  v42 = v81;
  v43 = v75;
  sub_21BC3559C(v81, v75);
  v44 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v45 = swift_allocObject();
  sub_21BC35600(v43, v45 + v44);
  v46 = v77;
  sub_21BE2845C();
  v47 = v80;
  v48 = *(v42 + *(v80 + 24));
  v49 = v86;
  v50 = v82;
  if (v48)
  {
    v51 = [v48 hasHSA2] ^ 1;
  }

  else
  {
    v51 = 0;
  }

  v52 = v85;
  KeyPath = swift_getKeyPath();
  v54 = swift_allocObject();
  *(v54 + 16) = v51;
  (*(v78 + 32))(v17, v46, v79);
  v55 = &v17[*(v76 + 36)];
  *v55 = KeyPath;
  v55[1] = sub_21BC0AE98;
  v55[2] = v54;
  sub_21BBB7D84(v17, v50, &qword_27CDB79E0, &qword_21BE3F220);
  v56 = v42 + *(v47 + 56);
  v57 = *v56;
  v58 = *(v56 + 8);
  LOBYTE(v90) = v57;
  v91 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  v59 = 1;
  if (v89 == 1)
  {
    v60 = v72;
    sub_21BE26EEC();
    *(v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)) = 257;
    v61 = (v60 + *(v52 + 36));
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
    v63 = *MEMORY[0x277CDF438];
    v64 = sub_21BE26E7C();
    (*(*(v64 - 8) + 104))(v61 + v62, v63, v64);
    *v61 = swift_getKeyPath();
    sub_21BBB7D84(v60, v49, &qword_27CDB5E00, &unk_21BE33820);
    v59 = 0;
  }

  (*(v84 + 56))(v49, v59, 1, v52);
  v65 = v83;
  sub_21BBA3854(v50, v83, &qword_27CDB79E0, &qword_21BE3F220);
  v66 = v87;
  sub_21BBA3854(v49, v87, &qword_27CDB79D8, &qword_21BE38C18);
  v67 = v88;
  sub_21BBA3854(v65, v88, &qword_27CDB79E0, &qword_21BE3F220);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79E8, &qword_21BE38C58);
  v69 = v67 + *(v68 + 48);
  *v69 = 0;
  *(v69 + 8) = 1;
  sub_21BBA3854(v66, v67 + *(v68 + 64), &qword_27CDB79D8, &qword_21BE38C18);
  sub_21BB3A4CC(v49, &qword_27CDB79D8, &qword_21BE38C18);
  sub_21BB3A4CC(v50, &qword_27CDB79E0, &qword_21BE3F220);
  sub_21BB3A4CC(v66, &qword_27CDB79D8, &qword_21BE38C18);
  return sub_21BB3A4CC(v65, &qword_27CDB79E0, &qword_21BE3F220);
}

uint64_t sub_21BC3270C(uint64_t a1)
{
  v2 = sub_21BE27B0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = (a1 + *(type metadata accessor for FamilyMemberAccountDetails(0) + 56));
  v11 = *v10;
  v12 = *(v10 + 1);
  v18[16] = v11;
  v19 = v12;
  v18[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  sub_21BE2614C();
  v13 = sub_21BE26A2C();
  v14 = sub_21BE28FFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21BB35000, v13, v14, "Fetching dependent's tokens for password reset.", v15, 2u);
    MEMORY[0x21CF05C50](v15, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v16 = sub_21BC2DDA4(v5);
  MEMORY[0x28223BE20](v16);
  *&v18[-16] = a1;
  sub_21BE27AFC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21BC3298C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyMemberAccountDetails(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v23[1] = *(a2 + *(v7 + 20) + 8);
  v8 = [*(a2 + *(v7 + 28)) altDSID];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21BE28A0C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = *(a2 + *(v4 + 24));
  if (v13 && (v14 = [v13 altDSID]) != 0)
  {
    v15 = v14;
    v16 = sub_21BE28A0C();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  sub_21BC3559C(a2, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_21BC35600(v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  *(v20 + ((v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v21 = a1;
  sub_21BC0FFAC(v10, v12, v16, v18, sub_21BC35684, v20);
}

uint64_t sub_21BC32B78(void *a1, char a2, uint64_t a3, void *a4)
{
  v35 = a4;
  v7 = type metadata accessor for FamilyMemberAccountDetails(0);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  if (a2)
  {
    sub_21BE2614C();
    sub_21BC51D50(a1, 0xD00000000000002FLL, 0x800000021BE58870);
    (*(v10 + 8))(v13, v9);
    v16 = (a3 + *(v7 + 56));
    v17 = *v16;
    v18 = *(v16 + 1);
    LOBYTE(v37) = v17;
    v38 = v18;
    LOBYTE(v36) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    return sub_21BE2840C();
  }

  else
  {
    v33 = a1;
    sub_21BE2614C();
    v20 = sub_21BE26A2C();
    v21 = sub_21BE28FFC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_21BB35000, v20, v21, "Launching dependent's password reset RUI.", v22, 2u);
      MEMORY[0x21CF05C50](v22, -1, -1);
    }

    (*(v10 + 8))(v15, v9);
    v23 = (a3 + *(v7 + 48));
    v25 = *v23;
    v24 = v23[1];
    v37 = v25;
    v38 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79F0, &qword_21BE38CA0);
    sub_21BE283FC();
    v26 = v36;
    v27 = [v35 navigationController];
    sub_21BC3559C(a3, &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v29 = swift_allocObject();
    sub_21BC35600(&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    sub_21BC0D5DC(v27, v33, sub_21BC35730, v29);

    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    LOBYTE(v37) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 32) = 0xD000000000000018;
    *(inited + 40) = 0x800000021BE588A0;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 80) = &protocol witness table for Bool;
    *(inited + 48) = 1;

    v31 = sub_21BBB5E60(inited);
    swift_setDeallocating();
    sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
    sub_21BCA55DC(&v37, v31);
  }
}

uint64_t sub_21BC32FBC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FamilyMemberAccountDetails(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  return sub_21BE2840C();
}

BOOL sub_21BC3302C()
{
  v1 = type metadata accessor for FamilyMemberAccountDetails(0);
  v2 = *(v0 + *(v1 + 24));
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  if (([v4 isOrganizer] & 1) != 0 || objc_msgSend(v4, sel_isGuardian))
  {
    v5 = *(v0 + *(v3 + 28));
    if ([v5 isMe] || objc_msgSend(v5, sel_isChildAccount))
    {

      return 1;
    }

    else
    {
      v11 = [v5 memberType];

      return v11 == 1;
    }
  }

  else
  {

    v7 = *(v0 + *(v3 + 28));
    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    v8 = v4;
    v9 = v7;
    v10 = sub_21BE2940C();

    return v10 & 1;
  }
}

double sub_21BC33150@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FamilyMemberAccountDetails(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21BE275DC();
  v20 = 1;
  sub_21BC340A0(a1, &v15);
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25[0] = v15;
  v25[1] = v16;
  v25[2] = v17;
  v26 = v18;
  sub_21BBA3854(&v21, &v14, &qword_27CDB79F8, &unk_21BE38CA8);
  sub_21BB3A4CC(v25, &qword_27CDB79F8, &unk_21BE38CA8);
  *(v19 + 7) = v21;
  *(&v19[1] + 7) = v22;
  *(&v19[2] + 7) = v23;
  *(&v19[3] + 7) = v24;
  v8 = v20;
  sub_21BC3559C(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_21BC35600(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = v19[1];
  *(a2 + 17) = v19[0];
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 33) = v11;
  *(a2 + 49) = v19[2];
  result = *(&v19[2] + 15);
  *(a2 + 64) = *(&v19[2] + 15);
  *(a2 + 80) = sub_21BC357A0;
  *(a2 + 88) = v10;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  return result;
}

void sub_21BC33330(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FamilyMemberAccountDetails(0) + 28));
  v4 = sub_21BE2917C();
  v6 = v5;
  v7 = [v3 isMe];
  v8 = "AGE_RANGE_SHARING_TITLE";
  if (v7)
  {
    v8 = "apple.com/HT207937";
    v9 = 0xD000000000000024;
  }

  else
  {
    v9 = 0xD000000000000021;
  }

  String.rebrand.getter(v9, v8 | 0x8000000000000000);
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21BE32770;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_21BBBEFE8();
  *(v12 + 32) = v4;
  *(v12 + 40) = v6;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();

  v15 = [v14 bundleForClass_];
  v23 = v11;
  sub_21BE2599C();

  v16 = sub_21BE289DC();
  v18 = v17;

  v19 = [v14 bundleForClass_];
  v20 = sub_21BE2599C();
  v22 = v21;

  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20;
  *(a1 + 24) = v22;
  *(a1 + 32) = 0xD000000000000022;
  *(a1 + 40) = 0x800000021BE58910;
  *(a1 + 48) = 0;
}

uint64_t sub_21BC33574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21BE275DC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A00, &qword_21BE38D40);
  sub_21BC3360C(a1, (a2 + *(v4 + 44)));
  v5 = sub_21BE2832C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7948, &qword_21BE38B90);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v5;
  return result;
}

uint64_t sub_21BC3360C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for FamilyMemberAccountDetails(0);
  v4 = v3 - 8;
  v31 = *(v3 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v33 = &v30 - v11;
  v12 = *(a1 + *(v4 + 36));
  v13 = [v12 iTunesAccountUsername];
  if (v13)
  {
    v14 = v13;
    v15 = sub_21BE28A0C();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v34 = v15;
  v35 = v17;
  sub_21BC3559C(a1, &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v19 = swift_allocObject();
  sub_21BC35600(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_21BB41FA4();
  sub_21BE2845C();
  if ([v12 isMe])
  {
    LOBYTE(v34) = 1;
    v31 = 1;
    v20 = &unk_282D85900;
    v21 = &unk_282D858D0;
    v22 = 1536;
  }

  else
  {
    v31 = 0;
    v22 = 0;
    v21 = 0;
    v20 = 0;
  }

  v23 = *(v7 + 16);
  v24 = v33;
  v23(v10, v33, v6);
  v25 = v32;
  v23(v32, v10, v6);
  v26 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A08, &qword_21BE38D48) + 48)];
  v27 = v31;
  *v26 = 0;
  *(v26 + 1) = v27;
  *(v26 + 2) = v22;
  *(v26 + 3) = 0;
  *(v26 + 4) = v21;
  *(v26 + 5) = v20;
  v26[48] = 0;
  sub_21BC35934(0, v27, v22, 0, v21, v20);
  v28 = *(v7 + 8);
  v28(v24, v6);
  sub_21BC35980(0, v27, v22, 0, v21, v20);
  return (v28)(v10, v6);
}

id sub_21BC3395C(uint64_t a1)
{
  v2 = sub_21BE27B0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a1 + *(type metadata accessor for FamilyMemberAccountDetails(0) + 28)) isMe];
  if (result)
  {
    v7 = sub_21BC2DDA4(v5);
    MEMORY[0x28223BE20](v7);
    *(&v8 - 2) = a1;
    sub_21BE27AFC();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_21BC33A90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FamilyMemberAccountDetails(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  sub_21BE28D8C();
  v13 = sub_21BE28DAC();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_21BC3559C(a2, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21BE28D7C();
  v14 = a1;
  v15 = sub_21BE28D6C();
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_21BC35600(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  *(v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  sub_21BC54908(0, 0, v12, a4, v17);
}

uint64_t sub_21BC33C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21BE28D7C();
  v5[4] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_21BC33CFC, v7, v6);
}

uint64_t sub_21BC33CFC()
{
  v1 = [*(v0 + 24) navigationController];
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_21BC33DB0;

  return sub_21BC2DFAC(v1);
}

uint64_t sub_21BC33DB0()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_21BC363EC;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_21BC363F0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BC33ECC()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6976614E77656976;
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF6F546465746167;
  *(inited + 48) = 0xD00000000000001ALL;
  *(inited + 56) = 0x800000021BE38910;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(&v3, v1);
}

uint64_t sub_21BC3400C()
{
  sub_21BE28D7C();
  *(v0 + 16) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC03810, v2, v1);
}

uint64_t sub_21BC340A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v6 = sub_21BE27DBC();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(a1 + *(type metadata accessor for FamilyMemberAccountDetails(0) + 40));
  swift_getKeyPath();
  sub_21BC35B30(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  if (*(v13 + 56))
  {
    v14 = 0;
    v15 = 0x200000000;
  }

  else
  {
    v25 = *(v13 + 52);
    swift_getKeyPath();
    v26 = v10;
    sub_21BE25F1C();

    v24 = *(v13 + 80);
    swift_getKeyPath();
    sub_21BE25F1C();

    v16 = *(v13 + 81);
    swift_getKeyPath();
    sub_21BE25F1C();

    v17 = *(v13 + 82);
    v14 = sub_21BE2796C();
    v18 = 0x100000000;
    if (!v24)
    {
      v18 = 0;
    }

    v19 = v18 | v25;
    v20 = v16 == 0;
    v10 = v26;
    v21 = 0x10000000000;
    if (v20)
    {
      v21 = 0;
    }

    v22 = 0x1000000000000;
    if (!v17)
    {
      v22 = 0;
    }

    v15 = v19 | v21 | v22;
  }

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 44) = v15;
  *(a2 + 52) = v14;
  sub_21BBA4A38(v6, v8, v10 & 1);

  sub_21BBC7C7C(v6, v8, v10 & 1);
}

uint64_t sub_21BC34374(uint64_t a1)
{
  v2 = type metadata accessor for FamilyMemberAccountDetails(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_21BE28DAC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21BC3559C(a1, v5);
  sub_21BE28D7C();
  v10 = sub_21BE28D6C();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_21BC35600(v5, v12 + v11);
  sub_21BBA932C(0, 0, v8, &unk_21BE38CC0, v12);
}

uint64_t sub_21BC3452C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21BE28D7C();
  v4[3] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21BC345C4, v6, v5);
}

uint64_t sub_21BC345C4()
{
  type metadata accessor for FamilyMemberAccountDetails(0);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_21BC34664;

  return sub_21BCF8840();
}

uint64_t sub_21BC34664()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21BBAFEE4, v3, v2);
}

uint64_t sub_21BC34784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
LABEL_6:
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v15 = sub_21BE2599C();
    v17 = v16;

    *&v30 = v15;
    *(&v30 + 1) = v17;
    sub_21BB41FA4();
    v8 = sub_21BE27DBC();
    v10 = v18;
    v12 = v19 & 1;
    sub_21BBA4A38(v8, v18, v19 & 1);

    sub_21BE2784C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C08, &unk_21BE3F270);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A40, &unk_21BE38DF0);
    sub_21BC0AD50();
    sub_21BC3623C();
    goto LABEL_7;
  }

  if (a1 != 3)
  {
    if (a1 != 2)
    {
      type metadata accessor for ConfirmChildAgeViewModel();
      v25 = swift_getObjCClassFromMetadata();
      v26 = [objc_opt_self() bundleForClass_];
      v27 = sub_21BE2599C();
      v29 = v28;

      *&v31 = v27;
      *(&v31 + 1) = v29;
      sub_21BB41FA4();
      sub_21BE27DBC();
      sub_21BE2784C();
      sub_21BC361AC(v27, v29, v32, *(&v32 + 1));
      sub_21BC361AC(v27, v29, v32, *(&v32 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C08, &unk_21BE3F270);
      sub_21BC0AD50();
      sub_21BE2784C();
      sub_21BC361E8(v27, v29, v32, *(&v32 + 1), v33, SHIBYTE(v33));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A40, &unk_21BE38DF0);
      sub_21BC3623C();
      sub_21BE2784C();
      sub_21BC362C8(v27, v29, v32, *(&v32 + 1));
      sub_21BC36304(v27, v29, v32, *(&v32 + 1), v33, SHIBYTE(v33));
      result = sub_21BC362C8(v27, v29, v32, *(&v32 + 1));
      v21 = v31;
      v22 = v32;
      v23 = v33;
      v24 = v34;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  v3 = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_21BE2599C();
  v7 = v6;

  *&v30 = v5;
  *(&v30 + 1) = v7;
  sub_21BB41FA4();
  v8 = sub_21BE27DBC();
  v10 = v9;
  v12 = v11 & 1;
  sub_21BBA4A38(v8, v9, v11 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C08, &unk_21BE3F270);
  sub_21BC0AD50();
  sub_21BE2784C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A40, &unk_21BE38DF0);
  sub_21BC3623C();
LABEL_7:
  sub_21BE2784C();
  sub_21BBC7C7C(v8, v10, v12);

  v21 = v30;
  v22 = v32;
  v23 = v33;
  v24 = v34;
LABEL_9:
  *a2 = v21;
  *(a2 + 16) = v22;
  *(a2 + 32) = v23;
  *(a2 + 34) = v24;
  return result;
}

uint64_t sub_21BC34EA8@<X0>(uint64_t a1@<X8>)
{
  v2 = 0x1000000000000;
  if (!v1[6])
  {
    v2 = 0;
  }

  v3 = 0x10000000000;
  if (!v1[5])
  {
    v3 = 0;
  }

  v4 = 0x100000000;
  if (!v1[4])
  {
    v4 = 0;
  }

  return sub_21BC34784(v4 | *v1 | v3 | v2, a1);
}

uint64_t sub_21BC34F18()
{
  sub_21BE29ACC();
  sub_21BE2941C();
  return sub_21BE29B0C();
}

uint64_t sub_21BC34F80(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE2941C();
  return sub_21BE29B0C();
}

unint64_t sub_21BC35018()
{
  result = qword_27CDB7868;
  if (!qword_27CDB7868)
  {
    result = swift_getWitnessTable(byte_21BE38A34, &type metadata for AgeRangeSharingDestination, v0, v1);
    atomic_store(result, &qword_27CDB7868);
  }

  return result;
}

uint64_t sub_21BC35074()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB7EB8;

  return sub_21BC3400C();
}

unint64_t sub_21BC3510C()
{
  result = qword_27CDB78C8;
  if (!qword_27CDB78C8)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5060, &qword_21BE31038);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB78A0, &qword_21BE38AD0);
    v4[3] = sub_21BE271DC();
    v4[4] = sub_21BB3B038(&qword_27CDB78B8, &qword_27CDB78A0, &qword_21BE38AD0, MEMORY[0x277CDE580]);
    v4[5] = sub_21BC35B30(&qword_27CDB78C0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB78C8);
  }

  return result;
}

unint64_t sub_21BC35268()
{
  result = qword_27CDB7950;
  if (!qword_27CDB7950)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7940, &qword_21BE47630);
    v4[0] = MEMORY[0x277CE0BC8];
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB7950);
  }

  return result;
}

unint64_t sub_21BC352EC()
{
  result = qword_27CDB7958;
  if (!qword_27CDB7958)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7948, &qword_21BE38B90);
    v4[0] = sub_21BB3B038(&qword_27CDB7960, &qword_27CDB7968, &qword_21BE38B98, MEMORY[0x277CE1138]);
    v4[1] = sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB7958);
  }

  return result;
}

unint64_t sub_21BC353D0()
{
  result = qword_27CDB7978;
  if (!qword_27CDB7978)
  {
    result = swift_getWitnessTable(byte_21BE47E14, &type metadata for FAInformativeLabel, v0, v1);
    atomic_store(result, &qword_27CDB7978);
  }

  return result;
}

unint64_t sub_21BC3542C()
{
  result = qword_27CDB7988;
  if (!qword_27CDB7988)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7980, &qword_21BE38BD8);
    v4[0] = sub_21BB3B038(&qword_27CDB7990, &qword_27CDB7998, &unk_21BE38BE0, MEMORY[0x277CE1138]);
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB7988);
  }

  return result;
}

unint64_t sub_21BC354E4()
{
  result = qword_27CDB79A0;
  if (!qword_27CDB79A0)
  {
    result = swift_getWitnessTable(asc_21BE38A5C, &type metadata for AgeRangeSharingDestination, v0, v1);
    atomic_store(result, &qword_27CDB79A0);
  }

  return result;
}

unint64_t sub_21BC35548()
{
  result = qword_27CDB79C8;
  if (!qword_27CDB79C8)
  {
    result = swift_getWitnessTable(byte_21BE4B744, &type metadata for ProximityTip, v0, v1);
    atomic_store(result, &qword_27CDB79C8);
  }

  return result;
}

uint64_t sub_21BC3559C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyMemberAccountDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC35600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyMemberAccountDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC35684(void *a1, char a2)
{
  v5 = *(type metadata accessor for FamilyMemberAccountDetails(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21BC32B78(a1, a2 & 1, v2 + v6, v7);
}

uint64_t sub_21BC35730(uint64_t a1)
{
  v3 = *(type metadata accessor for FamilyMemberAccountDetails(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BC32FBC(a1, v4);
}

uint64_t sub_21BC357B8(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyMemberAccountDetails(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BC3452C(a1, v6, v7, v1 + v5);
}

uint64_t sub_21BC358C0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FamilyMemberAccountDetails(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_21BC35934(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    v6 = a4;
  }
}

void sub_21BC35980(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
  }
}

uint64_t sub_21BC35A10(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyMemberAccountDetails(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBB7EB8;

  return sub_21BC33C64(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_21BC35B30(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_17Tm()
{
  v1 = type metadata accessor for FamilyMemberAccountDetails(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21BE26FEC();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE27B0C();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BC35DA4(uint64_t a1)
{
  v3 = *(type metadata accessor for FamilyMemberAccountDetails(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BC302BC(a1, v4);
}

uint64_t objectdestroy_61Tm()
{
  v1 = type metadata accessor for FamilyMemberAccountDetails(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21BE26FEC();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
  }

  v6 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21BE27B0C();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21BC3608C(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyMemberAccountDetails(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBA6A64;

  return sub_21BC303BC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_21BC361AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_21BBA4A38(a1, a2, a3 & 1);
}

uint64_t sub_21BC361E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    return sub_21BC361AC(a1, a2, a3, a4);
  }

  else
  {
    sub_21BBA4A38(a1, a2, a3 & 1);
  }
}

unint64_t sub_21BC3623C()
{
  result = qword_27CDB7A48;
  if (!qword_27CDB7A48)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7A40, &unk_21BE38DF0);
    v4 = sub_21BC0AD50();
    v5[0] = MEMORY[0x277CE0BC8];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v5);
    atomic_store(result, &qword_27CDB7A48);
  }

  return result;
}

uint64_t sub_21BC362C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_21BBC7C7C(a1, a2, a3 & 1);
}

uint64_t sub_21BC36304(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    return sub_21BC362C8(a1, a2, a3, a4);
  }

  else
  {
    sub_21BBC7C7C(a1, a2, a3 & 1);
  }
}

unint64_t sub_21BC36358()
{
  result = qword_27CDB7A50;
  if (!qword_27CDB7A50)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7A58, &unk_21BE3F280);
    v4[0] = sub_21BC0AD50();
    v4[1] = sub_21BC3623C();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB7A50);
  }

  return result;
}

uint64_t sub_21BC363F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21BC39020(a3, v25 - v10);
  v12 = sub_21BE28DAC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21BBDE578(v11);
  }

  else
  {
    sub_21BE28D9C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21BE28D0C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21BE28A8C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60D8, &qword_21BE390D0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60D8, &qword_21BE390D0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21BC366A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21BC39020(a3, v25 - v10);
  v12 = sub_21BE28DAC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21BBDE578(v11);
  }

  else
  {
    sub_21BE28D9C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21BE28D0C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21BE28A8C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

unint64_t sub_21BC36940@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BC38C00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_21BC3696C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for ChecklistStateVars(0);
  sub_21BBEAC94();

  v8 = sub_21BE26E9C();
  v10 = v9;
  type metadata accessor for SharedPasswordsItemModel(0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = [objc_opt_self() sharedMonitor];
  sub_21BE25F4C();
  result = sub_21BE283EC();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v8;
  *(a4 + 32) = v10 & 1;
  *(a4 + 40) = v13;
  *(a4 + 48) = v14;
  return result;
}

double sub_21BC36A78@<D0>(uint64_t a1@<X8>)
{
  sub_21BC3696C(*v1, *(v1 + 8), *(v1 + 16), v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_21BC36B34()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BC36C58;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A90, &qword_21BE390E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BC36ED8;
  v0[13] = &block_descriptor_9;
  v0[14] = v2;
  [ObjCClassFromMetadata fetchSharingGroupsThatIncludeFamilyMembers_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BC36C58(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v1 + 144);
    v6 = *(v2 + 8);

    return v6(v5);
  }
}

uint64_t sub_21BC36DC0(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB8C3C;

  return v7(a1, a2);
}

uint64_t sub_21BC36ED8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_21BC392B8();
    **(*(v4 + 64) + 40) = sub_21BE28C3C();

    return MEMORY[0x282200950](v4);
  }
}

id sub_21BC36FEC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SharedPasswordsItemProvider(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21BC37064(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for SharedPasswordsItemProvider(0);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t type metadata accessor for SharedPasswordsItemProvider(uint64_t a1)
{
  result = qword_27CDB7A60;
  if (!qword_27CDB7A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BC371CC(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BC37418();
}

uint64_t sub_21BC3727C(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BC37314, v4, v3);
}

uint64_t sub_21BC37314()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_21BBCDD2C;

    return sub_21BBCB2AC();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21BC37418()
{
  v1[3] = v0;
  v2 = sub_21BE26A4C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v1[8] = swift_task_alloc();
  v1[9] = sub_21BE28D7C();
  v1[10] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x2822009F8](sub_21BC37554, v4, v3);
}

uint64_t sub_21BC37554()
{
  v1 = v0[3];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();

  v0[13] = sub_21BC84D18(v3, v2, "computeItems", 12, 2u);
  v4 = *(v1 + qword_27CDD4200 + 24);
  v5 = *(v1 + qword_27CDD4200 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + qword_27CDD4200), v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_21BE2905C();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v0[14] = v8;
  v9 = v0[8];
  v10 = v0[3];
  v11 = sub_21BE28DAC();
  v0[15] = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v0[16] = v13;
  v0[17] = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(v9, 1, 1, v11);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v10;
  v15 = v10;
  v16 = sub_21BC366A8(0, 0, v9, &unk_21BE39070, v14);
  v0[18] = v16;
  sub_21BBDE578(v9);
  v13(v9, 1, 1, v11);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;
  v18 = v15;
  v0[19] = sub_21BC366A8(0, 0, v9, &unk_21BE39080, v17);
  sub_21BBDE578(v9);
  v19 = swift_task_alloc();
  v0[20] = v19;
  *v19 = v0;
  v19[1] = sub_21BC377F4;
  v20 = MEMORY[0x277D839B0];

  return MEMORY[0x282200460](v0 + 24, v16, v20);
}

uint64_t sub_21BC377F4()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21BC37914, v3, v2);
}

uint64_t sub_21BC37914(uint64_t a1)
{
  if (*(v1 + 192))
  {
    v2 = *(v1 + 128);
    v4 = *(v1 + 112);
    v3 = *(v1 + 120);
    v5 = *(v1 + 64);
    v6 = *(v1 + 24);
    sub_21BE28D8C();
    v2(v5, 0, 1, v3);
    v7 = v6;
    v8 = sub_21BE28D6C();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    v9[5] = v4;
    v11 = sub_21BBA9958(0, 0, v5, &unk_21BE39090, v9);
    *(v1 + 176) = v11;
    v12 = swift_task_alloc();
    *(v1 + 184) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58D0, &qword_21BE50610);
    *v12 = v1;
    v12[1] = sub_21BC37F4C;
    v14 = v1 + 16;
    v15 = v11;
  }

  else
  {
    v16 = swift_task_alloc();
    *(v1 + 168) = v16;
    *v16 = v1;
    v16[1] = sub_21BC37AD8;
    v15 = *(v1 + 152);
    v13 = MEMORY[0x277D839B0];
    v14 = v1 + 193;
  }

  return MEMORY[0x282200460](v14, v15, v13);
}

uint64_t sub_21BC37AD8()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21BC37BF8, v3, v2);
}

uint64_t sub_21BC37BF8()
{
  v26 = v0;

  if (*(v0 + 193))
  {
    sub_21BE261BC();
    v1 = sub_21BE26A2C();
    v2 = sub_21BE28FFC();
    v3 = os_log_type_enabled(v1, v2);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 32);
    if (v3)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_21BB3D81C(0x49657475706D6F63, 0xEE002928736D6574, &v25);
      _os_log_impl(&dword_21BB35000, v1, v2, "%s iCloud is disabled for passwords, but can be enabled", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x21CF05C50](v8, -1, -1);
      MEMORY[0x21CF05C50](v7, -1, -1);
    }

    (*(v5 + 8))(v4, v6);
    v9 = MEMORY[0x277D84F90];
    v10 = sub_21BBBD590(0, 1, 1, MEMORY[0x277D84F90]);
    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_21BBBD590((v11 > 1), v12 + 1, 1, v10);
    }

    v13 = *(v0 + 112);

    *(v10 + 2) = v12 + 1;
    v14 = &v10[24 * v12];
    v14[32] = 15;
    *(v14 + 5) = v9;
    *(v14 + 6) = v13;
  }

  else
  {

    sub_21BE261BC();
    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FFC();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 56);
    v19 = *(v0 + 32);
    v20 = *(v0 + 40);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_21BB3D81C(0x49657475706D6F63, 0xEE002928736D6574, &v25);
      _os_log_impl(&dword_21BB35000, v15, v16, "%s iCloud is disabled for passwords and cannot be enabled", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x21CF05C50](v22, -1, -1);
      MEMORY[0x21CF05C50](v21, -1, -1);
    }

    (*(v20 + 8))(v18, v19);
    v10 = MEMORY[0x277D84F90];
  }

  sub_21BC852D8();

  v23 = *(v0 + 8);

  return v23(v10);
}

uint64_t sub_21BC37F4C()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21BC3806C, v3, v2);
}

uint64_t sub_21BC3806C()
{

  v1 = *(v0 + 16);
  sub_21BC852D8();

  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_21BC38154()
{
  result = qword_27CDB7A70;
  if (!qword_27CDB7A70)
  {
    result = swift_getWitnessTable(byte_21BE38FAC, &type metadata for SharedPasswordsItem, v0, v1);
    atomic_store(result, &qword_27CDB7A70);
  }

  return result;
}

unint64_t sub_21BC381A8(uint64_t a1)
{
  *(a1 + 8) = sub_21BC381D8();
  result = sub_21BC3822C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BC381D8()
{
  result = qword_27CDB7A78;
  if (!qword_27CDB7A78)
  {
    result = swift_getWitnessTable(byte_21BE38FD4, &type metadata for SharedPasswordsItem, v0, v1);
    atomic_store(result, &qword_27CDB7A78);
  }

  return result;
}

unint64_t sub_21BC3822C()
{
  result = qword_27CDB7A80;
  if (!qword_27CDB7A80)
  {
    result = swift_getWitnessTable(a5_1, &type metadata for SharedPasswordsItem, v0, v1);
    atomic_store(result, &qword_27CDB7A80);
  }

  return result;
}

unint64_t sub_21BC38284()
{
  result = qword_27CDB7A88;
  if (!qword_27CDB7A88)
  {
    result = swift_getWitnessTable(aY_1, &type metadata for SharedPasswordsItemView, v0, v1);
    atomic_store(result, &qword_27CDB7A88);
  }

  return result;
}

uint64_t sub_21BC382D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_21BC382F8, 0, 0);
}

uint64_t sub_21BC382F8()
{
  *(v0 + 32) = qword_27CDD4208;
  sub_21BE28D7C();
  *(v0 + 40) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC38398, v2, v1);
}

uint64_t sub_21BC38398()
{

  return MEMORY[0x2822009F8](sub_21BC38400, 0, 0);
}

uint64_t sub_21BC38400()
{
  v1 = v0[2];
  v2 = (v0[3] + v0[4]);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  *v1 = (*(v4 + 8))(v3, v4) & 1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_21BC384A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_21BC384C0, 0, 0);
}

uint64_t sub_21BC384C0()
{
  *(v0 + 32) = qword_27CDD4208;
  sub_21BE28D7C();
  *(v0 + 40) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC38560, v2, v1);
}

uint64_t sub_21BC38560()
{

  return MEMORY[0x2822009F8](sub_21BC385C8, 0, 0);
}

uint64_t sub_21BC385C8()
{
  v1 = v0[2];
  v2 = (v0[3] + v0[4]);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  *v1 = (*(v4 + 16))(v3, v4) & 1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_21BC38668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_21BE26A4C();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_21BE28D7C();
  v5[8] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x2822009F8](sub_21BC38760, v8, v7);
}

uint64_t sub_21BC38760()
{
  v1 = (*(v0 + 24) + qword_27CDD4210);
  v3 = *v1;
  v2 = v1[1];
  v6 = (*(v2 + 8) + **(v2 + 8));
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_21BC38884;

  return v6(v3, v2);
}

uint64_t sub_21BC38884(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_21BC38A68;
  }

  else
  {
    v4[13] = a1;
    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_21BC389AC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BC389AC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A48, &qword_21BE390A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21BE32770;
  *(v3 + 32) = 15;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  **(v0 + 16) = v3;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21BC38A68()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);

  sub_21BE261BC();
  v6 = v1;
  sub_21BE295EC();
  MEMORY[0x21CF03CA0](0x49657475706D6F63, 0xEE002928736D6574);
  MEMORY[0x21CF03CA0](0xD000000000000035, 0x800000021BE58BA0);
  sub_21BC51D50(v1, 0, 0xE000000000000000);

  (*(v4 + 8))(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A48, &qword_21BE390A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21BE32770;
  *(v7 + 32) = 15;
  *(v7 + 40) = MEMORY[0x277D84F90];
  *(v7 + 48) = v5;

  **(v0 + 16) = v7;

  v8 = *(v0 + 8);

  return v8();
}

unint64_t sub_21BC38C00(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x696D694C6D6D6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x69636966656E6562;
      break;
    case 7:
      result = 0x6C5064756F6C4369;
      break;
    case 8:
      result = 0x6D657449656D6F68;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x736143656C707061;
      break;
    case 11:
      result = 0x49746361746E6F63;
      break;
    case 12:
    case 15:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21BC38DF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BC382D8(a1, v4, v5, v6);
}

uint64_t sub_21BC38EAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BC384A0(a1, v4, v5, v6);
}

uint64_t sub_21BC38F60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BC38668(a1, v4, v5, v7, v6);
}

uint64_t sub_21BC39020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC39090(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BBB41B4(a1, v4);
}

uint64_t sub_21BC39148(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBA6A64;

  return sub_21BBB41B4(a1, v4);
}

uint64_t sub_21BC39200(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BBB44B0(a1, v4);
}

unint64_t sub_21BC392B8()
{
  result = qword_27CDB7A98;
  if (!qword_27CDB7A98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB7A98);
  }

  return result;
}

uint64_t sub_21BC39404(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21BC39464(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21BBA70C8;
}

id ExpressParentalControlHook.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExpressParentalControlHook.init()()
{
  type metadata accessor for ParentalControlStore(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore__presets;
  v2 = sub_21BE2679C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
  v4 = sub_21BE266DC();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_user;
  v6 = sub_21BE2688C();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  sub_21BE2670C();
  v7 = sub_21BC3F624(v0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t sub_21BC397F4(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_21BE2688C();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v4 = sub_21BE26A4C();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v5 = sub_21BE2679C();
  v2[35] = v5;
  v2[36] = *(v5 - 8);
  v2[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDB7AF8, &qword_21BE391D0);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AC8, &qword_21BE3CC70);
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BC39A18, 0, 0);
}

uint64_t sub_21BC39A18()
{
  v56 = v0;
  v1 = *(v0 + 320);
  v2 = (*(v0 + 192) + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore);
  v3 = *__swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  v4 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
  swift_beginAccess();
  sub_21BBA3854(v3 + v4, v1, &qword_27CDB7AC8, &qword_21BE3CC70);
  v5 = sub_21BE266DC();
  LODWORD(v3) = (*(*(v5 - 8) + 48))(v1, 1, v5);
  sub_21BB3A4CC(v1, &qword_27CDB7AC8, &qword_21BE3CC70);
  if (v3 != 1)
  {
LABEL_19:

    v34 = *(v0 + 8);

    return v34();
  }

  v6 = [*(v0 + 184) clientInfo];
  if (!v6 || (v7 = v6, v8 = sub_21BE2890C(), v7, !v8))
  {
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
LABEL_15:
    sub_21BB3A4CC(v0 + 96, &qword_27CDB5940, &unk_21BE32B10);
LABEL_16:
    sub_21BE2614C();
    v26 = sub_21BE26A2C();
    v27 = sub_21BE28FFC();
    v28 = os_log_type_enabled(v26, v27);
    v30 = *(v0 + 232);
    v29 = *(v0 + 240);
    v31 = *(v0 + 224);
    if (v28)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v55 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_21BB3D81C(0xD000000000000023, 0x800000021BE58E60, &v55);
      _os_log_impl(&dword_21BB35000, v26, v27, "%s presets not found in clientInfo", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x21CF05C50](v33, -1, -1);
      MEMORY[0x21CF05C50](v32, -1, -1);
    }

    (*(v30 + 8))(v29, v31);
    goto LABEL_19;
  }

  *(v0 + 152) = 0x73746573657270;
  *(v0 + 160) = 0xE700000000000000;

  sub_21BE2958C();
  if (!*(v8 + 16) || (v9 = sub_21BBB31E8(v0 + 16), (v10 & 1) == 0))
  {

    sub_21BBB7238(v0 + 16);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_14;
  }

  sub_21BB3DCD4(*(v8 + 56) + 32 * v9, v0 + 96);
  sub_21BBB7238(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_14:

    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_16;
  }

  v12 = *(v0 + 304);
  v11 = *(v0 + 312);
  v13 = *(v0 + 280);
  v14 = *(v0 + 288);
  sub_21BD51D84(*(v0 + 168), *(v0 + 176), v11);
  sub_21BBA3854(v11, v12, qword_27CDB7AF8, &qword_21BE391D0);
  v15 = (*(v14 + 48))(v12, 1, v13);
  v16 = *(v0 + 304);
  if (v15 == 1)
  {

    sub_21BB3A4CC(v16, qword_27CDB7AF8, &qword_21BE391D0);
    sub_21BE2614C();
    v17 = sub_21BE26A2C();
    v18 = sub_21BE28FFC();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 312);
    v21 = *(v0 + 248);
    v22 = *(v0 + 224);
    v23 = *(v0 + 232);
    if (v19)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v55 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_21BB3D81C(0xD000000000000023, 0x800000021BE58E60, &v55);
      _os_log_impl(&dword_21BB35000, v17, v18, "%s unable to parse presets string", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x21CF05C50](v25, -1, -1);
      MEMORY[0x21CF05C50](v24, -1, -1);
    }

    (*(v23 + 8))(v21, v22);
    sub_21BB3A4CC(v20, qword_27CDB7AF8, &qword_21BE391D0);
    goto LABEL_19;
  }

  (*(*(v0 + 288) + 32))(*(v0 + 296), *(v0 + 304), *(v0 + 280));
  sub_21BE2614C();
  v36 = sub_21BE26A2C();
  v37 = sub_21BE28FFC();
  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 272);
  v40 = *(v0 + 224);
  v41 = *(v0 + 232);
  if (v38)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v55 = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_21BB3D81C(0xD000000000000023, 0x800000021BE58E60, &v55);
    _os_log_impl(&dword_21BB35000, v36, v37, "%s will load presets settings from store", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x21CF05C50](v43, -1, -1);
    MEMORY[0x21CF05C50](v42, -1, -1);
  }

  v44 = *(v41 + 8);
  v44(v39, v40);
  *(v0 + 328) = v44;
  sub_21BB3A35C(v2, v0 + 56);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 56), *(v0 + 80));
  v45 = sub_21BD55FDC(v8);
  v47 = v46;

  v49 = *(v0 + 208);
  v48 = *(v0 + 216);
  v50 = *(v0 + 200);
  if (v47)
  {
    v51 = MEMORY[0x277D4BD78];
  }

  else
  {
    *v48 = v45;
    v51 = MEMORY[0x277D4BD80];
  }

  (*(v49 + 104))(v48, *v51, v50);
  v52 = swift_task_alloc();
  *(v0 + 336) = v52;
  *v52 = v0;
  v52[1] = sub_21BC3A168;
  v53 = *(v0 + 296);
  v54 = *(v0 + 216);

  return sub_21BC8F0B8(v54, v53);
}

uint64_t sub_21BC3A168()
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  *(*v1 + 344) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_21BC3A554;
  }

  else
  {
    v5 = sub_21BC3A2D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21BC3A2D8()
{
  v20 = v0;
  v1 = v0[23];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  sub_21BC3ED54(v1);
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[41];
  v6 = v0[39];
  v7 = v0[36];
  v8 = v0[37];
  v18 = v0[35];
  v9 = v0[33];
  v10 = v0[28];
  if (v4)
  {
    v17 = v0[39];
    v11 = swift_slowAlloc();
    v16 = v8;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(0xD000000000000023, 0x800000021BE58E60, &v19);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s loaded presets settings from store", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);

    v5(v9, v10);
    (*(v7 + 8))(v16, v18);
    v13 = v17;
  }

  else
  {

    v5(v9, v10);
    (*(v7 + 8))(v8, v18);
    v13 = v6;
  }

  sub_21BB3A4CC(v13, qword_27CDB7AF8, &qword_21BE391D0);

  v14 = v0[1];

  return v14();
}

uint64_t sub_21BC3A554()
{
  v26 = v0;
  v1 = v0[43];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  sub_21BE2614C();
  v2 = v1;
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FDC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[43];
  v7 = v0[39];
  v9 = v0[36];
  v8 = v0[37];
  v10 = v0[35];
  v23 = v0[32];
  v24 = v0[41];
  v11 = v0[28];
  if (v5)
  {
    v22 = v0[35];
    v12 = swift_slowAlloc();
    v21 = v8;
    v13 = swift_slowAlloc();
    v20 = v7;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_21BB3D81C(0xD000000000000023, 0x800000021BE58E60, &v25);
    *(v12 + 12) = 2112;
    v15 = v6;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_21BB35000, v3, v4, "%s error loading prests into STExpressSettingsController: %@", v12, 0x16u);
    sub_21BB3A4CC(v13, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x21CF05C50](v14, -1, -1);
    MEMORY[0x21CF05C50](v12, -1, -1);

    v24(v23, v11);
    (*(v9 + 8))(v21, v22);
    v17 = v20;
  }

  else
  {

    v24(v23, v11);
    (*(v9 + 8))(v8, v10);
    v17 = v7;
  }

  sub_21BB3A4CC(v17, qword_27CDB7AF8, &qword_21BE391D0);

  v18 = v0[1];

  return v18();
}

id sub_21BC3A840(void *a1)
{
  result = [a1 name];
  if (result)
  {
    v2 = result;
    sub_21BE28A0C();

    LOBYTE(v2) = sub_21BE28B6C();

    return (v2 & 1);
  }

  return result;
}

uint64_t sub_21BC3A9B0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2[4] = swift_task_alloc();
  v3 = sub_21BE26A4C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BC3AAC0, 0, 0);
}

id sub_21BC3AAC0(uint64_t a1)
{
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "ExpressParentalControlHook.processObjectModel: invoked", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v5 = v1[9];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[2];

  v9 = *(v7 + 8);
  v9(v5, v6);
  result = [v8 clientInfo];
  if (result)
  {
    v11 = result;
    v12 = sub_21BE2890C();

    LOBYTE(v11) = sub_21BD56CF4(v12);

    if (v11)
    {
      sub_21BE2614C();
      v13 = sub_21BE26A2C();
      v14 = sub_21BE28FFC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_21BB35000, v13, v14, "ExpressParentalControlHook.processObjectModel: performing setup", v15, 2u);
        MEMORY[0x21CF05C50](v15, -1, -1);
      }

      v16 = v1[8];
      v17 = v1[5];
      v19 = v1[3];
      v18 = v1[4];
      v20 = v1[2];

      v9(v16, v17);
      v21 = sub_21BE28DAC();
      (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
      sub_21BE28D7C();
      v22 = v19;
      v23 = v20;
      v24 = sub_21BE28D6C();
      v25 = swift_allocObject();
      v26 = MEMORY[0x277D85700];
      v25[2] = v24;
      v25[3] = v26;
      v25[4] = v22;
      v25[5] = v23;
      sub_21BBA932C(0, 0, v18, &unk_21BE39108, v25);
    }

    else
    {
      sub_21BE2614C();
      v27 = sub_21BE26A2C();
      v28 = sub_21BE28FFC();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v1[7];
      v31 = v1[5];
      if (v29)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_21BB35000, v27, v28, "ExpressParentalControlHook.processObjectModel: no key found", v32, 2u);
        MEMORY[0x21CF05C50](v32, -1, -1);
      }

      v9(v30, v31);
    }

    v33 = v1[1];

    return v33(1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BC3AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_21BE28D7C();
  v5[3] = sub_21BE28D6C();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_21BBAFDA8;

  return sub_21BC397F4(a5);
}

uint64_t sub_21BC3B094(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_21BC3B158;

  return sub_21BC3A9B0(v6);
}

uint64_t sub_21BC3B158(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = sub_21BE25A7C();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v12 = *(v9 + 8);

  return v12();
}

void sub_21BC3B308(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v53 = a4;
  v54 = a5;
  v52 = a3;
  v8 = sub_21BE26A4C();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v51 - v15;
  v17 = [a1 name];
  if (!v17)
  {
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = sub_21BE28A0C();
  v21 = v20;

  v22 = sub_21BD56E5C(v19, v21);

  if (v22 == 8)
  {
    sub_21BE2614C();
    v23 = a1;
    v24 = sub_21BE26A2C();
    v25 = sub_21BE28FDC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v59 = v27;
      *v26 = 136315138;
      v28 = [v23 name];
      if (v28)
      {
        v29 = v28;
        v30 = sub_21BE28A0C();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v57 = v30;
      v58 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
      v48 = sub_21BE28A5C();
      v50 = sub_21BB3D81C(v48, v49, &v59);

      *(v26 + 4) = v50;
      _os_log_impl(&dword_21BB35000, v24, v25, "ExpressParentalControlHook.processElement: Unrecognized element: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x21CF05C50](v27, -1, -1);
      MEMORY[0x21CF05C50](v26, -1, -1);
    }

    (*(v55 + 8))(v11, v56);
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = [Strong presentationContextForHook_];
    swift_unknownObjectRelease();
    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (v35)
    {
      v36 = v35;
LABEL_10:
      v37 = sub_21BE28DAC();
      (*(*(v37 - 8) + 56))(v16, 1, 1, v37);
      sub_21BE28D7C();
      v38 = v5;
      v39 = v52;

      v40 = v36;
      v41 = v54;

      v42 = sub_21BE28D6C();
      v43 = swift_allocObject();
      v44 = MEMORY[0x277D85700];
      *(v43 + 16) = v42;
      *(v43 + 24) = v44;
      *(v43 + 32) = v38;
      *(v43 + 40) = v39;
      *(v43 + 48) = v22;
      *(v43 + 56) = a2;
      *(v43 + 64) = v40;
      *(v43 + 72) = v53;
      *(v43 + 80) = v41;
      sub_21BBA932C(0, 0, v16, &unk_21BE39120, v43);

      return;
    }

    v36 = [v34 navigationController];

    if (v36)
    {
      goto LABEL_10;
    }
  }

  sub_21BE2614C();
  v45 = sub_21BE26A2C();
  v46 = sub_21BE28FDC();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_21BB35000, v45, v46, "ExpressParentalControlHook.processElement: No presenting viewcontroller.", v47, 2u);
    MEMORY[0x21CF05C50](v47, -1, -1);
  }

  (*(v55 + 8))(v13, v56);
}