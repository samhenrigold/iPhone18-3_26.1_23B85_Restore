unint64_t sub_247F19F58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED20, &qword_247F25D00);
    v3 = sub_247F2426C();
    v4 = a1 + 32;

    while (1)
    {
      sub_247F1A89C(v4, &v13, &qword_27EE7EE68, &unk_247F25BA0);
      v5 = v13;
      v6 = v14;
      result = sub_247F0B354(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_247F0C710(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_247F1A088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EED0, &qword_247F25BB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED28, &unk_247F25CF0);
    v7 = sub_247F2426C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_247F1A89C(v9, v5, &qword_27EE7EED0, &qword_247F25BB8);
      v11 = *v5;
      result = sub_247F0B2CC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_247F23DEC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_247F1A270(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_247F1A310()
{
  result = qword_27EE7EEE8;
  if (!qword_27EE7EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EEE8);
  }

  return result;
}

unint64_t sub_247F1A364()
{
  result = qword_27EE7EEF8;
  if (!qword_27EE7EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EEF8);
  }

  return result;
}

void *sub_247F1A3B8(void *a1)
{
  v54 = [a1 style];
  v2 = [a1 identifier];
  v53 = sub_247F23F3C();
  v63 = v3;

  v4 = [a1 clientID];
  v52 = sub_247F23F3C();
  v62 = v5;

  v6 = [a1 schedule];
  sub_247F08408(0, &qword_27EE7ED00, 0x277CCABB0);
  sub_247F23DEC();
  sub_247F12BF4();
  v7 = sub_247F23EAC();

  v8 = [a1 title];
  v51 = sub_247F23F3C();
  v61 = v9;

  v10 = [a1 message];
  v50 = sub_247F23F3C();
  v59 = v11;

  v12 = [a1 notificationTitle];
  if (v12)
  {
    v13 = v12;
    v49 = sub_247F23F3C();
    v60 = v14;
  }

  else
  {
    v49 = 0;
    v60 = 0;
  }

  v15 = [a1 notificationMessage];
  if (v15)
  {
    v16 = v15;
    v48 = sub_247F23F3C();
    v58 = v17;
  }

  else
  {
    v48 = 0;
    v58 = 0;
  }

  v18 = [a1 actionTitle];
  v47 = sub_247F23F3C();
  v57 = v19;

  v20 = [a1 actionURLString];
  v46 = sub_247F23F3C();
  v56 = v21;

  v22 = [a1 dismissTitle];
  if (v22)
  {
    v23 = v22;
    v45 = sub_247F23F3C();
    v55 = v24;
  }

  else
  {
    v45 = 0;
    v55 = 0;
  }

  v25 = [a1 dismissURLString];
  if (v25)
  {
    v26 = v25;
    v44 = sub_247F23F3C();
    v28 = v27;
  }

  else
  {
    v44 = 0;
    v28 = 0;
  }

  v29 = [a1 deadlineURLString];
  v30 = sub_247F23F3C();
  v32 = v31;

  v33 = [a1 lastNagString];
  if (v33)
  {
    v34 = v33;
    v35 = sub_247F23F3C();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  type metadata accessor for DMCCodableNagItem();
  v38 = swift_allocObject();
  v39 = Dictionary<>.DMCNagScheduleString.getter(v7);
  v41 = v40;

  if (v41)
  {
    v38[2] = v54;
    v38[3] = v53;
    v38[4] = v63;
    v38[5] = v52;
    v38[6] = v62;
    v38[7] = v39;
    v38[8] = v41;
    v38[9] = v51;
    v38[10] = v61;
    v38[11] = v50;
    v38[12] = v59;
    v38[13] = v49;
    v38[14] = v60;
    v38[15] = v48;
    v38[16] = v58;
    v38[17] = v47;
    v38[18] = v57;
    v38[19] = v46;
    v38[20] = v56;
    v38[21] = v45;
    v38[22] = v55;
    v38[23] = v44;
    v38[24] = v28;
    v38[25] = v30;
    v38[26] = v32;
    v38[27] = v35;
    v38[28] = v37;
  }

  else
  {

    sub_247F115A4();
    swift_allocError();
    *v42 = 5;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v38;
}

unint64_t sub_247F1A848()
{
  result = qword_27EE7EF18;
  if (!qword_27EE7EF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EF18);
  }

  return result;
}

uint64_t sub_247F1A89C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for DMCCodableNagItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DMCCodableNagItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_247F1AA74()
{
  result = qword_27EE7EF48;
  if (!qword_27EE7EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EF48);
  }

  return result;
}

unint64_t sub_247F1AACC()
{
  result = qword_27EE7EF50;
  if (!qword_27EE7EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EF50);
  }

  return result;
}

unint64_t sub_247F1AB24()
{
  result = qword_27EE7EF58;
  if (!qword_27EE7EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EF58);
  }

  return result;
}

uint64_t sub_247F1AB78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (sub_247F2430C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_247F2430C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000 || (sub_247F2430C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEE00676E69727453 || (sub_247F2430C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_247F2430C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_247F2430C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000247F274A0 == a2 || (sub_247F2430C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000247F274C0 == a2 || (sub_247F2430C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x69546E6F69746361 && a2 == 0xEB00000000656C74 || (sub_247F2430C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x52556E6F69746361 && a2 == 0xEF676E697274534CLL || (sub_247F2430C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x547373696D736964 && a2 == 0xEC000000656C7469 || (sub_247F2430C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000247F27500 == a2 || (sub_247F2430C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000247F279B0 == a2 || (sub_247F2430C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x5367614E7473616CLL && a2 == 0xED0000676E697274)
  {

    return 13;
  }

  else
  {
    v6 = sub_247F2430C();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_247F1B00C(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v92[1] = *MEMORY[0x277D85DE8];
  v3 = sub_247F23D3C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v83 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v78 = v76 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v76 - v9;
  v91 = MEMORY[0x277D84F90];
  v86 = objc_opt_self();
  v11 = [v86 defaultManager];
  v12 = sub_247F23CDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EFC0, &qword_247F25EC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_247F25650;
  v14 = *MEMORY[0x277CBE868];
  *(v13 + 32) = *MEMORY[0x277CBE868];
  type metadata accessor for URLResourceKey(0);
  v15 = v14;
  v16 = sub_247F2402C();

  v92[0] = 0;
  v17 = [v11 contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:v16 options:0 error:v92];

  v18 = v92[0];
  if (v17)
  {
    v19 = sub_247F2403C();
    v20 = v18;

    v22 = *(v19 + 16);
    if (v22)
    {
      v23 = v3;
      v25 = v4 + 16;
      v24 = *(v4 + 16);
      v88 = 0;
      v89 = v24;
      v26 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v76[1] = v19;
      v27 = v19 + v26;
      v28 = *(v4 + 72);
      v84 = (v4 + 8);
      v85 = v28;
      *&v21 = 136315394;
      v77 = v21;
      v29 = v83;
      v30 = v78;
      v82 = v23;
      v89(v78, v19 + v26, v23);
      while (1)
      {
        v90[0] = 0;
        v32 = [v86 defaultManager];
        sub_247F23D0C();
        v33 = sub_247F23EFC();

        v34 = [v32 fileExistsAtPath:v33 isDirectory:v90];

        if (v34 && v90[0] == 1)
        {
          v35 = sub_247F1B00C(v30, v79);
          sub_247F1B8E0(v35);
          (*v84)(v30, v23);
        }

        else
        {
          v87 = v22;
          v36 = v88;
          v37 = sub_247F23D4C();
          if (v36)
          {
            v88 = 0;
            if (qword_27EE7EC00 != -1)
            {
              swift_once();
            }

            v42 = sub_247F23E1C();
            __swift_project_value_buffer(v42, qword_27EE7F098);
            v89(v29, v30, v23);
            v43 = v36;
            v44 = sub_247F23DFC();
            v45 = v30;
            v46 = sub_247F2409C();

            if (os_log_type_enabled(v44, v46))
            {
              v47 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              v92[0] = v48;
              *v47 = v77;
              v49 = sub_247F23D0C();
              v50 = v25;
              v52 = v51;
              v81 = *v84;
              v81(v83, v82);
              v53 = sub_247F082C8(v49, v52, v92);
              v25 = v50;
              v29 = v83;

              *(v47 + 4) = v53;
              *(v47 + 12) = 2112;
              v54 = v36;
              v55 = _swift_stdlib_bridgeErrorToNSError();
              *(v47 + 14) = v55;
              v56 = v80;
              *v80 = v55;
              _os_log_impl(&dword_247F03000, v44, v46, "DMCFileManager failed to decode item at '%s' with error: %@", v47, 0x16u);
              sub_247F0C720(v56, &qword_27EE7EC10, &qword_247F251F0);
              MEMORY[0x24C1BF4F0](v56, -1, -1);
              __swift_destroy_boxed_opaque_existential_0(v48);
              v57 = v48;
              v23 = v82;
              MEMORY[0x24C1BF4F0](v57, -1, -1);
              MEMORY[0x24C1BF4F0](v47, -1, -1);

              v30 = v78;
              v81(v78, v23);
            }

            else
            {

              v31 = *v84;
              (*v84)(v29, v23);
              v31(v45, v23);
              v30 = v45;
            }
          }

          else
          {
            v39 = v37;
            v40 = v38;
            type metadata accessor for DMCCodableNagItem();
            sub_247F2045C(&qword_27EE7EF70, type metadata accessor for DMCCodableNagItem, &unk_247F25C9C);
            v41 = sub_247F23C1C();
            v88 = 0;
            MEMORY[0x24C1BEB30](v41);
            if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_247F2404C();
            }

            sub_247F2406C();
            v58 = sub_247F1FD14(v39, v40);
            (*v84)(v30, v23, v58);
          }

          v22 = v87;
        }

        v27 += v85;
        if (!--v22)
        {
          break;
        }

        v89(v30, v27, v23);
      }
    }

    return v91;
  }

  else
  {
    v59 = v92[0];
    v60 = sub_247F23C9C();

    swift_willThrow();
    if (qword_27EE7EC00 != -1)
    {
      swift_once();
    }

    v61 = sub_247F23E1C();
    __swift_project_value_buffer(v61, qword_27EE7F098);
    (*(v4 + 16))(v10, a1, v3);
    v62 = v60;
    v63 = sub_247F23DFC();
    v64 = sub_247F2409C();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v82 = v3;
      v66 = v65;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v92[0] = v68;
      *v66 = 136315394;
      v69 = sub_247F23D0C();
      v71 = v70;
      (*(v4 + 8))(v10, v82);
      v72 = sub_247F082C8(v69, v71, v92);

      *(v66 + 4) = v72;
      *(v66 + 12) = 2112;
      v73 = v60;
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 14) = v74;
      *v67 = v74;
      _os_log_impl(&dword_247F03000, v63, v64, "DMCFileManager failed to get contents of directory '%s' with error: %@", v66, 0x16u);
      sub_247F0C720(v67, &qword_27EE7EC10, &qword_247F251F0);
      MEMORY[0x24C1BF4F0](v67, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x24C1BF4F0](v68, -1, -1);
      MEMORY[0x24C1BF4F0](v66, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v10, v3);
    }

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_247F1B8E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_247F2423C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_247F2423C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_247F223A8();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_247F1F828(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t DMCNagScheduler.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id DMCNagScheduler.init(taskName:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_247F23EFC();

  v6 = [v4 initWithTaskName:v5 delegate:a3];

  swift_unknownObjectRelease();
  return v6;
}

char *DMCNagScheduler.init(taskName:delegate:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___DMCNagScheduler_backgroundTask] = 0;
  if (qword_27EE7EC00 != -1)
  {
    swift_once();
  }

  v7 = sub_247F23E1C();
  __swift_project_value_buffer(v7, qword_27EE7F098);

  v8 = sub_247F23DFC();
  v9 = sub_247F240AC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_247F082C8(a1, a2, v19);
    _os_log_impl(&dword_247F03000, v8, v9, "DMCNagScheduler init with task name: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1BF4F0](v11, -1, -1);
    MEMORY[0x24C1BF4F0](v10, -1, -1);
  }

  v20.receiver = v4;
  v20.super_class = DMCNagScheduler;
  v12 = objc_msgSendSuper2(&v20, sel_init);
  v13 = objc_allocWithZone(DMCBackgroundTask);
  v14 = v12;
  v15 = sub_247F23EFC();

  v16 = [v13 initWithName:v15 queue:0];

  v17 = *&v14[OBJC_IVAR___DMCNagScheduler_backgroundTask];
  *&v14[OBJC_IVAR___DMCNagScheduler_backgroundTask] = v16;

  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return v14;
}

id DMCNagScheduler.startNaggingItem(_:)(void *a1)
{
  v2 = v1;
  v20[1] = *MEMORY[0x277D85DE8];
  if (qword_27EE7EC00 != -1)
  {
    swift_once();
  }

  v4 = sub_247F23E1C();
  __swift_project_value_buffer(v4, qword_27EE7F098);
  v5 = a1;
  v6 = sub_247F23DFC();
  v7 = sub_247F240AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20[0] = v19;
    *v8 = 136315138;
    v9 = [v5 properties];
    v10 = sub_247F23EAC();

    v11 = Dictionary<>.DMCDictionaryString(separator:)(10, 0xE100000000000000, v10);
    v12 = v2;
    v14 = v13;

    v15 = sub_247F082C8(v11, v14, v20);
    v2 = v12;

    *(v8 + 4) = v15;
    _os_log_impl(&dword_247F03000, v6, v7, "DMCNagScheduler start nagging item: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x24C1BF4F0](v19, -1, -1);
    MEMORY[0x24C1BF4F0](v8, -1, -1);
  }

  v20[0] = 0;
  if ([v2 nag:v5 error:v20])
  {
    v16 = v20[0];
    return [v2 evaluateNags];
  }

  else
  {
    v18 = v20[0];
    sub_247F23C9C();

    return swift_willThrow();
  }
}

Swift::Void __swiftcall DMCNagScheduler.stopNaggingItem(withID:clientID:)(Swift::String withID, Swift::String clientID)
{
  v3 = v2;
  object = clientID._object;
  countAndFlagsBits = clientID._countAndFlagsBits;
  v6 = withID._object;
  v7 = withID._countAndFlagsBits;
  if (qword_27EE7EC00 != -1)
  {
    swift_once();
  }

  v8 = sub_247F23E1C();
  __swift_project_value_buffer(v8, qword_27EE7F098);

  v9 = sub_247F23DFC();
  v10 = sub_247F240AC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_247F082C8(v7, v6, &v15);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_247F082C8(countAndFlagsBits, object, &v15);
    _os_log_impl(&dword_247F03000, v9, v10, "DMCNagScheduler stop nagging item: %s/%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BF4F0](v12, -1, -1);
    MEMORY[0x24C1BF4F0](v11, -1, -1);
  }

  sub_247F1F9A8(v7, v6, countAndFlagsBits, object);
  v13 = sub_247F23EFC();
  v14 = sub_247F23EFC();
  [v3 deleteNagItemWithId:v13 clientID:v14];
}

char *DMCNagScheduler.nagItems()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_247F23D3C();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247F23C3C();
  swift_allocObject();
  v31 = sub_247F23C2C();
  v11 = [v0 delegate];
  if (v11)
  {
    v12 = v11;
    if ([v11 respondsToSelector_])
    {
      v13 = [v12 readEncodedNagItems];
      swift_unknownObjectRelease();
      v14 = sub_247F2403C();

      v6 = MEMORY[0x277D84F90];
      v32 = MEMORY[0x277D84F90];
      v30 = *(v14 + 16);
      if (v30)
      {
        v15 = 0;
        v7 = (v14 + 40);
        while (1)
        {
          if (v15 >= *(v14 + 16))
          {
            goto LABEL_36;
          }

          v16 = *(v7 - 1);
          v3 = *v7;
          type metadata accessor for DMCCodableNagItem();
          sub_247F1FCC0(v16, v3);
          sub_247F2045C(&qword_27EE7EF70, type metadata accessor for DMCCodableNagItem, &unk_247F25C9C);
          sub_247F23C1C();
          if (v2)
          {
            break;
          }

          sub_247F16E8C();
          v2 = 0;
          sub_247F1FD14(v16, v3);

          MEMORY[0x24C1BEB30](v17);
          if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_247F2404C();
          }

          ++v15;
          sub_247F2406C();
          v6 = v32;
          v7 += 2;
          if (v30 == v15)
          {
            goto LABEL_31;
          }
        }

        sub_247F1FD14(v16, v3);
      }

      else
      {
LABEL_31:
      }

      return v6;
    }

    swift_unknownObjectRelease();
  }

  v18 = DMCNagItemsDirectory();
  if (v18)
  {
    v19 = v18;
    sub_247F23F3C();

    sub_247F23D1C();

    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      v28 = v8;
      (*(v8 + 32))(v10, v6, v7);
      v27 = v10;
      v21 = sub_247F1B00C(v10, v31);
      v3 = v21;
      v32 = MEMORY[0x277D84F90];
      if (v21 >> 62)
      {
        goto LABEL_37;
      }

      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v29 = v7;
      if (!v22)
      {
LABEL_38:
        v6 = MEMORY[0x277D84F90];
LABEL_39:

        (*(v28 + 8))(v27, v29);
        return v6;
      }

LABEL_19:
      v23 = 0;
      v30 = v3 & 0xC000000000000001;
      v7 = (v3 & 0xFFFFFFFFFFFFFF8);
      v6 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v30)
        {
          MEMORY[0x24C1BED10](v23, v3);
          v24 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v23 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v24 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            v22 = sub_247F2423C();
            v29 = v7;
            if (!v22)
            {
              goto LABEL_38;
            }

            goto LABEL_19;
          }
        }

        sub_247F16E8C();
        if (v2)
        {
          (*(v28 + 8))(v27, v29);

          goto LABEL_16;
        }

        MEMORY[0x24C1BEB30](v25);
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_247F2404C();
        }

        sub_247F2406C();
        v6 = v32;
        ++v23;
        if (v24 == v22)
        {
          goto LABEL_39;
        }
      }
    }

    sub_247F0C720(v6, &qword_27EE7ED30, &qword_247F25660);
  }

  sub_247F115A4();
  swift_allocError();
  *v20 = 3;
  swift_willThrow();
LABEL_16:

  return v6;
}

id sub_247F1C9E8(void *a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v4 = sub_247F23F3C();
  v6 = v5;

  v7 = [a1 clientID];
  v8 = sub_247F23F3C();
  v10 = v9;

  sub_247F1F9A8(v4, v6, v8, v10);

  v20[0] = 0;
  v11 = [a1 followUpAndReturnError_];
  v12 = v20[0];
  if (v11 && (v13 = v11, v20[0] = 0, v14 = v12, v15 = [v13 presentAndReturnError_], v13, v15))
  {
    v16 = v20[0];
    [a1 didNag];
    v20[0] = 0;
    if ([v1 saveNagItem:a1 error:v20])
    {
      return v20[0];
    }

    v19 = v20[0];
    sub_247F23C9C();
  }

  else
  {
    v18 = v20[0];
    sub_247F23C9C();
  }

  return swift_willThrow();
}

BOOL sub_247F1CBD0(void *a1)
{
  v2 = v1;
  aBlock[7] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC68, &unk_247F25BC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v48 - v5;
  v7 = sub_247F23DEC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE7EC00 != -1)
  {
    swift_once();
  }

  v10 = sub_247F23E1C();
  __swift_project_value_buffer(v10, qword_27EE7F098);
  v11 = a1;
  v12 = sub_247F23DFC();
  v13 = sub_247F240AC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v48 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    *(v15 + 4) = v11;
    *v16 = a1;
    v17 = v11;
    _os_log_impl(&dword_247F03000, v12, v13, "DMCNagScheduler evaluating nags with background task: %{public}@", v15, 0xCu);
    sub_247F0C720(v16, &qword_27EE7EC10, &qword_247F251F0);
    MEMORY[0x24C1BF4F0](v16, -1, -1);
    v18 = v15;
    v2 = v1;
    v6 = v48;
    MEMORY[0x24C1BF4F0](v18, -1, -1);
  }

  aBlock[0] = 0;
  v19 = [v2 nagItemsWithError_];
  v20 = aBlock[0];
  if (v19)
  {
    v21 = v19;
    type metadata accessor for DMCNagItem(0);
    v22 = sub_247F2403C();
    v23 = v20;
  }

  else
  {
    v24 = aBlock[0];
    v25 = sub_247F23C9C();

    swift_willThrow();
    v26 = v25;
    v27 = sub_247F23DFC();
    v28 = sub_247F2409C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543362;
      v31 = v25;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_247F03000, v27, v28, "DMCNagScheduler failed to read nag items with error: %{public}@", v29, 0xCu);
      sub_247F0C720(v30, &qword_27EE7EC10, &qword_247F251F0);
      MEMORY[0x24C1BF4F0](v30, -1, -1);
      MEMORY[0x24C1BF4F0](v29, -1, -1);
    }

    else
    {
    }

    v22 = MEMORY[0x277D84F90];
  }

  v33 = v49;
  if (v22 >> 62)
  {
    v34 = sub_247F2423C();
    if (v34)
    {
      goto LABEL_13;
    }

LABEL_23:

    [v11 setCompleted];
    v36 = [v2 backgroundTask];
    [v36 cancel];
    goto LABEL_24;
  }

  v34 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_23;
  }

LABEL_13:
  type metadata accessor for DMCNagItem(0);
  v35 = sub_247F2402C();

  v36 = [v2 nextNagForItems_];

  [v11 setCompleted];
  v37 = [v36 date];
  sub_247F23F3C();

  String.DMCDate.getter(v6);

  v38 = *(v8 + 48);
  if (v38(v6, 1, v7) == 1)
  {
    sub_247F23DDC();
    if (v38(v6, 1, v7) != 1)
    {
      sub_247F0C720(v6, &qword_27EE7EC68, &unk_247F25BC0);
    }
  }

  else
  {
    (*(v8 + 32))(v33, v6, v7);
  }

  sub_247F23DBC();
  v40 = v39;
  (*(v8 + 8))(v33, v7);
  v41 = [v36 nearDeadline];
  v42 = [v2 backgroundTask];
  if (v42)
  {
    v43 = v42;
    if (v41)
    {
      v44 = 3;
    }

    else
    {
      v44 = 0;
    }

    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_247F2054C;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247F05A04;
    aBlock[3] = &block_descriptor_0;
    v46 = _Block_copy(aBlock);

    [v43 submitRequestWithInterval:v44 tolerance:v46 requirements:v40 completion:{fmin(v40, 300.0)}];

    _Block_release(v46);
    v36 = v43;
  }

LABEL_24:

  return v34 != 0;
}

void sub_247F1D284(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong evaluateNagsWithBackgroundTask_];
  }
}

id sub_247F1D33C(unint64_t a1)
{
  v2 = v1;
  v141[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC68, &unk_247F25BC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v134 = &v117 - v8;
  v9 = sub_247F23DEC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v128 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v127 = &v117 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v117 - v15;
  MEMORY[0x28223BE20](v17);
  v122 = &v117 - v18;
  MEMORY[0x28223BE20](v19);
  v121 = &v117 - v20;
  MEMORY[0x28223BE20](v21);
  v124 = &v117 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v117 - v24;
  MEMORY[0x28223BE20](v26);
  v120 = &v117 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v117 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v117 - v32;
  sub_247F23DDC();
  sub_247F23D7C();
  v34 = *(v10 + 8);
  v130 = v30;
  v139 = v34;
  v140 = v10 + 8;
  v34(v30, v9);
  v136 = a1;
  if (a1 >> 62)
  {
    v36 = sub_247F2423C();
    v135 = v33;
    if (v36)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v36 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v135 = v33;
    if (v36)
    {
LABEL_3:
      if (v36 < 1)
      {
        __break(1u);
      }

      v37 = 0;
      v131 = (v10 + 56);
      v132 = v136 & 0xC000000000000001;
      v125 = v6;
      v126 = (v10 + 48);
      v38 = 0;
      v39 = (v10 + 32);
      v123 = (v10 + 16);
      *&v35 = 138543362;
      v117 = v35;
      *&v35 = 138412546;
      v118 = v35;
      v40 = 0x278EED000;
      v129 = v16;
      v137 = v25;
      v119 = v2;
      v133 = v36;
      while (1)
      {
        v138 = v38;
        if (v132)
        {
          v45 = MEMORY[0x24C1BED10](v37, v136);
        }

        else
        {
          v45 = *(v136 + 8 * v37 + 32);
        }

        v46 = v45;
        v47 = [v2 delegate];
        if (!v47)
        {
          goto LABEL_15;
        }

        v48 = v47;
        if (([v47 respondsToSelector_] & 1) == 0)
        {
          break;
        }

        v49 = [v48 *(v40 + 2416)];
        swift_unknownObjectRelease();
        if (v49)
        {
          v50 = v125;
          sub_247F23DCC();

          v51 = 0;
          v52 = v134;
        }

        else
        {
          v51 = 1;
          v52 = v134;
          v50 = v125;
        }

        (*v131)(v50, v51, 1, v9);
        sub_247F204A4(v50, v52);
        if ((*v126)(v52, 1, v9) == 1)
        {
          goto LABEL_16;
        }

        v84 = v120;
        (*v39)(v120, v52, v9);
        v85 = sub_247F23D8C();
        [v46 setDeadline_];

        v139(v84, v9);
        v53 = 1;
LABEL_17:
        v54 = [v46 nextNag];
        if (v54)
        {
          v55 = v54;
          sub_247F23DCC();

          if ((v53 & 1) != 0 || (v56 = v130, sub_247F23DDC(), sub_247F2045C(&qword_27EE7ECE8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]), v57 = sub_247F23EEC(), v139(v56, v9), (v57 & 1) == 0))
          {
            v141[0] = 0;
            if ([v2 nag:v46 error:v141])
            {
              v58 = v141[0];
            }

            else
            {
              v70 = v141[0];
              v71 = sub_247F23C9C();

              swift_willThrow();
              if (qword_27EE7EC00 != -1)
              {
                swift_once();
              }

              v72 = sub_247F23E1C();
              __swift_project_value_buffer(v72, qword_27EE7F098);
              v73 = v46;
              v74 = v71;
              v75 = sub_247F23DFC();
              v76 = sub_247F2409C();

              if (os_log_type_enabled(v75, v76))
              {
                v77 = swift_slowAlloc();
                v78 = swift_slowAlloc();
                *v77 = v118;
                *(v77 + 4) = v73;
                *v78 = v73;
                *(v77 + 12) = 2114;
                v79 = v73;
                v80 = v71;
                v81 = _swift_stdlib_bridgeErrorToNSError();
                *(v77 + 14) = v81;
                v78[1] = v81;
                _os_log_impl(&dword_247F03000, v75, v76, "DMCNagScheduler failed to nag %@ with error: %{public}@", v77, 0x16u);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC10, &qword_247F251F0);
                swift_arrayDestroy();
                v82 = v78;
                v2 = v119;
                MEMORY[0x24C1BF4F0](v82, -1, -1);
                v83 = v77;
                v16 = v129;
                MEMORY[0x24C1BF4F0](v83, -1, -1);
              }

              else
              {
              }

              v25 = v137;
            }

            v86 = [v46 nextNag];
            if (!v86)
            {
              if (qword_27EE7EC00 != -1)
              {
                swift_once();
              }

              v92 = sub_247F23E1C();
              __swift_project_value_buffer(v92, qword_27EE7F098);
              v93 = v46;
              v94 = sub_247F23DFC();
              v95 = sub_247F2409C();

              if (os_log_type_enabled(v94, v95))
              {
                v96 = swift_slowAlloc();
                v97 = swift_slowAlloc();
                *v96 = v117;
                *(v96 + 4) = v93;
                *v97 = v93;
                v98 = v93;
                _os_log_impl(&dword_247F03000, v94, v95, "DMCNagScheduler encountered item missing nag at deadline: %{public}@", v96, 0xCu);
                sub_247F0C720(v97, &qword_27EE7EC10, &qword_247F251F0);
                v99 = v97;
                v25 = v137;
                MEMORY[0x24C1BF4F0](v99, -1, -1);
                MEMORY[0x24C1BF4F0](v96, -1, -1);
              }

              v100 = [v2 launchDeadlineActionFor_];
              v101 = v122;
              sub_247F23DCC();

              sub_247F2045C(&qword_27EE7ECE8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
              v102 = v135;
              v103 = sub_247F23EEC();

              v104 = v25;
              v105 = v139;
              v139(v104, v9);
              if (v103)
              {
                v106 = v102;
              }

              else
              {
                v106 = v101;
              }

              if (v103)
              {
                v107 = v101;
              }

              else
              {
                v107 = v102;
              }

              v105(v106, v9);
              v25 = v137;
              v108 = *v39;
              v109 = v121;
              (*v39)(v121, v107, v9);
              v108(v102, v109, v9);
              v38 = 1;
              goto LABEL_6;
            }

            v87 = v124;
            v88 = v86;
            sub_247F23DCC();

            v139(v25, v9);
            (*v39)(v25, v87, v9);
          }

          sub_247F2045C(&qword_27EE7ECE8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          v89 = v25;
          v90 = v135;
          if (sub_247F23EEC())
          {
            v139(v90, v9);
            (*v123)(v16, v89, v9);
            (*v39)(v90, v16, v9);
          }

          else
          {
            v91 = *v39;
            (*v39)(v16, v90, v9);
            v91(v90, v16, v9);
          }

          if (v138)
          {
            v25 = v137;
            v139(v137, v9);

            v38 = 1;
          }

          else
          {
            v41 = [v46 deadline];
            v42 = v130;
            sub_247F23DCC();

            v25 = v137;
            LODWORD(v41) = sub_247F23EEC();

            v43 = v42;
            v44 = v139;
            v139(v43, v9);
            v44(v25, v9);
            v38 = v41 ^ 1;
          }
        }

        else
        {
          v59 = [v2 launchDeadlineActionFor_];
          v60 = v128;
          sub_247F23DCC();

          sub_247F2045C(&qword_27EE7ECE8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          v61 = v135;
          v62 = sub_247F23EEC();
          v63 = (v62 & 1) == 0;
          if (v62)
          {
            v64 = v61;
          }

          else
          {
            v64 = v60;
          }

          if (v63)
          {
            v65 = v61;
          }

          else
          {
            v65 = v60;
          }

          v139(v64, v9);
          v66 = *v39;
          v67 = v127;
          (*v39)(v127, v65, v9);
          v66(v61, v67, v9);
          if (v53)
          {
            v141[0] = 0;
            v68 = [v2 saveNagItem:v46 error:v141];
            v16 = v129;
            if (v68)
            {
              v69 = v141[0];
            }

            else
            {
              v110 = v141[0];
              v111 = sub_247F23C9C();

              swift_willThrow();
            }

            v38 = 1;
          }

          else
          {

            v38 = 1;
            v16 = v129;
          }

          v25 = v137;
        }

LABEL_6:
        ++v37;
        v40 = 0x278EED000uLL;
        if (v133 == v37)
        {
          goto LABEL_64;
        }
      }

      swift_unknownObjectRelease();
LABEL_15:
      v52 = v134;
      (*v131)(v134, 1, 1, v9);
LABEL_16:
      sub_247F0C720(v52, &qword_27EE7EC68, &unk_247F25BC0);
      v53 = 0;
      goto LABEL_17;
    }
  }

  LOBYTE(v38) = 0;
LABEL_64:
  v112 = objc_allocWithZone(DMCNextNag);
  v113 = v135;
  v114 = sub_247F23D8C();
  v115 = [v112 initWithDate:v114 nearDeadline:v38 & 1];

  v139(v113, v9);
  return v115;
}

uint64_t sub_247F1E138(void *a1)
{
  v2 = v1;
  v4 = sub_247F23DEC();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 delegate];
  if (v9)
  {
    v10 = v9;
    if ([v9 respondsToSelector_])
    {
      v11 = [v10 handleDeadlineActionForNagItem_];
      swift_unknownObjectRelease();
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if (qword_27EE7EC00 != -1)
  {
    swift_once();
  }

  v12 = sub_247F23E1C();
  __swift_project_value_buffer(v12, qword_27EE7F098);
  v13 = a1;
  v14 = sub_247F23DFC();
  v15 = sub_247F240AC();

  v16 = 0x278EED000uLL;
  if (os_log_type_enabled(v14, v15))
  {
    v17 = swift_slowAlloc();
    v45 = v8;
    v18 = v17;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46 = v44;
    *v18 = 136315394;
    v19 = [v13 deadlineURLString];
    v42 = v14;
    v20 = v19;
    v21 = sub_247F23F3C();
    HIDWORD(v41) = v15;
    v22 = v5;
    v23 = v21;
    v24 = v4;
    v26 = v25;

    v27 = v23;
    v5 = v22;
    v28 = sub_247F082C8(v27, v26, &v46);
    v4 = v24;
    v16 = 0x278EED000;

    *(v18 + 4) = v28;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v13;
    v29 = v43;
    *v43 = v13;
    v30 = v13;
    v31 = v42;
    _os_log_impl(&dword_247F03000, v42, BYTE4(v41), "DMCNagScheduler launching deadline URL '%s' for nag: %@", v18, 0x16u);
    sub_247F0C720(v29, &qword_27EE7EC10, &qword_247F251F0);
    MEMORY[0x24C1BF4F0](v29, -1, -1);
    v32 = v44;
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x24C1BF4F0](v32, -1, -1);
    v33 = v18;
    v8 = v45;
    MEMORY[0x24C1BF4F0](v33, -1, -1);
  }

  else
  {
  }

  v34 = [v13 *(v16 + 2152)];
  if (!v34)
  {
    sub_247F23F3C();
    v34 = sub_247F23EFC();
  }

  [v2 launchDeadlineURLString_];

LABEL_14:
  DMCSendNagDeadlineNotification();
  v35 = [a1 shortestInterval];
  v36 = [v35 integerValue];

  v37 = sub_247F1152C(v36);
  if (v38)
  {
    v39 = 6;
  }

  else
  {
    v39 = v37;
  }

  sub_247F23DDC();
  if (v39 >= 0xB)
  {
    v46 = v39;
    result = sub_247F2433C();
    __break(1u);
  }

  else
  {
    sub_247F23D7C();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void sub_247F1E64C(void *a1)
{
  v4 = sub_247F23D3C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9;
  v11 = sub_247F1A3B8(a1);
  if (!v2)
  {
    v12 = v11;
    v13 = [v1 delegate];
    if (v13)
    {
      v14 = v13;
      if ([v13 respondsToSelector_])
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EFA0, &qword_247F25EB8);
        v28 = v15;
        v29 = sub_247F203C0(&qword_27EE7EFA8, &qword_27EE7EF70, &unk_247F25C9C, MEMORY[0x277D84F58]);
        v30 = sub_247F203C0(&qword_27EE7EFB0, &qword_27EE7EFB8, &unk_247F25C74, MEMORY[0x277D84F40]);
        v27[0] = v12;
        sub_247F23C7C();
        swift_allocObject();

        sub_247F23C6C();
        sub_247F23C4C();
        __swift_project_boxed_opaque_existential_1(v27, v15);
        v23 = sub_247F23C5C();
        v25 = v24;

        __swift_destroy_boxed_opaque_existential_0(v27);
        v26 = sub_247F23D5C();
        [v14 &selRef:a1 setUserInfo:v26];

        sub_247F1FD14(v23, v25);

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    v16 = [a1 iOSFilesystemURL];
    if (v16)
    {
      v17 = v16;
      sub_247F23CFC();

      (*(v5 + 32))(v10, v7, v4);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EFA0, &qword_247F25EB8);
      v28 = v18;
      v29 = sub_247F203C0(&qword_27EE7EFA8, &qword_27EE7EF70, &unk_247F25C9C, MEMORY[0x277D84F58]);
      v30 = sub_247F203C0(&qword_27EE7EFB0, &qword_27EE7EFB8, &unk_247F25C74, MEMORY[0x277D84F40]);
      v27[0] = v12;
      sub_247F23C7C();
      swift_allocObject();
      sub_247F23C6C();
      sub_247F23C4C();
      __swift_project_boxed_opaque_existential_1(v27, v18);
      v20 = sub_247F23C5C();
      v22 = v21;

      sub_247F0C864();
      sub_247F23D6C();
      (*(v5 + 8))(v10, v4);
      sub_247F1FD14(v20, v22);
      __swift_destroy_boxed_opaque_existential_0(v27);
    }

    else
    {
      sub_247F115A4();
      swift_allocError();
      *v19 = 3;
      swift_willThrow();
    }
  }
}

uint64_t sub_247F1EB30(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  a5(v7);

  return 1;
}

void sub_247F1EBD0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27[-v10];
  v12 = sub_247F23D3C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v27[-v16];
  v18 = [v4 delegate];
  if (v18)
  {
    v19 = v18;
    if ([v18 respondsToSelector_])
    {
      v20 = sub_247F23EFC();
      v28 = sub_247F23EFC();
      [v19 deleteNagItemWithID:v20 clientID:v28];
      swift_unknownObjectRelease();

      v21 = v28;

      return;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for DMCNagItem(0);
  sub_247F16464(a1, a2, a3, a4, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_247F0C720(v11, &qword_27EE7ED30, &qword_247F25660);
    if (qword_27EE7EC00 != -1)
    {
      swift_once();
    }

    v22 = sub_247F23E1C();
    __swift_project_value_buffer(v22, qword_27EE7F098);

    v23 = sub_247F23DFC();
    v24 = sub_247F2409C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_247F082C8(a3, a4, &v29);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_247F082C8(a1, a2, &v29);
      _os_log_impl(&dword_247F03000, v23, v24, "DMCNagScheduler failed to delete nag item at invalid URL for nag: %s/%s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BF4F0](v26, -1, -1);
      MEMORY[0x24C1BF4F0](v25, -1, -1);
    }
  }

  else
  {
    (*(v13 + 32))(v17, v11, v12);
    sub_247F0CA18(v17);
    (*(v13 + 8))(v17, v12);
  }
}

uint64_t sub_247F1F234(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = sub_247F23F3C();
  v9 = v8;
  v10 = sub_247F23F3C();
  v12 = v11;
  v13 = a1;
  a5(v7, v9, v10, v12);
}

uint64_t DMCNextNag.date.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___DMCNextNag_date);

  return v3;
}

id DMCNextNag.init(date:nearDeadline:)(uint64_t a1, char a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_247F23D8C();
  v6 = [v4 initWithDate:v5 nearDeadline:a2 & 1];

  v7 = sub_247F23DEC();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

{
  v3 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v7 = sub_247F23EFC();
  [v6 setDateFormat_];

  v8 = sub_247F23D8C();
  v9 = [v6 stringFromDate_];

  v10 = sub_247F23F3C();
  v12 = v11;

  v13 = &v3[OBJC_IVAR___DMCNextNag_date];
  *v13 = v10;
  v13[1] = v12;
  v3[OBJC_IVAR___DMCNextNag_nearDeadline] = a2;
  v17.receiver = v3;
  v17.super_class = DMCNextNag;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  v15 = sub_247F23DEC();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

uint64_t (*sub_247F1F7A0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1BED10](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_247F1F820;
  }

  __break(1u);
  return result;
}

uint64_t sub_247F1F828(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_247F2423C();
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
      result = sub_247F2423C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_247F20594();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EFC8, &qword_247F25EC8);
            v9 = sub_247F1F7A0(v13, i, a3);
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
        type metadata accessor for DMCCodableNagItem();
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

void sub_247F1F9A8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = objc_opt_self();
  v9 = sub_247F23EFC();
  v10 = sub_247F23EFC();
  v24[0] = 0;
  LODWORD(v8) = [v8 clearWithID:v9 clientID:v10 error:v24];

  v11 = v24[0];
  if (v8)
  {

    v12 = v11;
  }

  else
  {
    v13 = v24[0];
    v14 = sub_247F23C9C();

    swift_willThrow();
    if (qword_27EE7EC00 != -1)
    {
      swift_once();
    }

    v15 = sub_247F23E1C();
    __swift_project_value_buffer(v15, qword_27EE7F098);

    v16 = v14;
    v17 = sub_247F23DFC();
    v18 = sub_247F2409C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24[0] = v21;
      *v19 = 136315650;
      *(v19 + 4) = sub_247F082C8(a3, a4, v24);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_247F082C8(a1, a2, v24);
      *(v19 + 22) = 2112;
      v22 = v14;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v23;
      *v20 = v23;
      _os_log_impl(&dword_247F03000, v17, v18, "DMCNagScheduler failed to clear follow up for nag: %s/%s with error: %@", v19, 0x20u);
      sub_247F0C720(v20, &qword_27EE7EC10, &qword_247F251F0);
      MEMORY[0x24C1BF4F0](v20, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1BF4F0](v21, -1, -1);
      MEMORY[0x24C1BF4F0](v19, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_247F1FCC0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

double sub_247F1FD14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

id sub_247F1FD74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

void sub_247F1FDEC(uint64_t a1, unint64_t a2)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38[-v5];
  v7 = sub_247F23D3C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_247F23D1C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_247F0C720(v6, &qword_27EE7ED30, &qword_247F25660);
    if (qword_27EE7EC00 != -1)
    {
      swift_once();
    }

    v11 = sub_247F23E1C();
    __swift_project_value_buffer(v11, qword_27EE7F098);

    v12 = sub_247F23DFC();
    v13 = sub_247F2409C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v39[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_247F082C8(a1, a2, v39);
      _os_log_impl(&dword_247F03000, v12, v13, "DMCNagScheduler failed to convert deadline URL string to URL: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1BF4F0](v15, -1, -1);
      MEMORY[0x24C1BF4F0](v14, -1, -1);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EE50, &qword_247F25B90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_247F25E90;
    *(inited + 32) = sub_247F23F3C();
    v17 = MEMORY[0x277D839B0];
    *(inited + 40) = v18;
    *(inited + 72) = v17;
    *(inited + 48) = 1;
    *(inited + 80) = sub_247F23F3C();
    *(inited + 88) = v19;
    *(inited + 120) = v17;
    *(inited + 96) = 1;
    *(inited + 128) = sub_247F23F3C();
    *(inited + 136) = v20;
    *(inited + 168) = MEMORY[0x277D837D0];
    *(inited + 144) = 0xD000000000000030;
    *(inited + 152) = 0x8000000247F27C40;
    sub_247F19F58(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EE68, &unk_247F25BA0);
    swift_arrayDestroy();
    v21 = [objc_opt_self() defaultWorkspace];
    if (v21)
    {
      v22 = v21;
      v23 = sub_247F23CDC();
      v24 = sub_247F23E9C();

      v39[0] = 0;
      v25 = [v22 openSensitiveURL:v23 withOptions:v24 error:v39];

      if (v25)
      {
        v26 = *(v8 + 8);
        v27 = v39[0];
        v26(v10, v7);
      }

      else
      {
        v28 = v39[0];
        v29 = sub_247F23C9C();

        swift_willThrow();
        if (qword_27EE7EC00 != -1)
        {
          swift_once();
        }

        v30 = sub_247F23E1C();
        __swift_project_value_buffer(v30, qword_27EE7F098);
        v31 = v29;
        v32 = sub_247F23DFC();
        v33 = sub_247F2409C();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = 138412290;
          v36 = v29;
          v37 = _swift_stdlib_bridgeErrorToNSError();
          *(v34 + 4) = v37;
          *v35 = v37;
          _os_log_impl(&dword_247F03000, v32, v33, "DMCNagScheduler failed to launch URL with error: %@", v34, 0xCu);
          sub_247F0C720(v35, &qword_27EE7EC10, &qword_247F251F0);
          MEMORY[0x24C1BF4F0](v35, -1, -1);
          MEMORY[0x24C1BF4F0](v34, -1, -1);
        }

        else
        {
        }

        (*(v8 + 8))(v10, v7);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_247F203C0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE7EFA0, &qword_247F25EB8);
    sub_247F2045C(a2, type metadata accessor for DMCCodableNagItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_247F2045C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_247F204A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC68, &unk_247F25BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247F20514()
{
  MEMORY[0x24C1BF540](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_247F20594()
{
  result = qword_27EE7EFD0;
  if (!qword_27EE7EFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE7EFC8, &qword_247F25EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE7EFD0);
  }

  return result;
}

uint64_t sub_247F20600(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7F090, &unk_247F25F40);
    v2 = sub_247F2426C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_247F08AD8(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_247F0C710(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_247F0C710(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_247F0C710(v31, v32);
    result = sub_247F2419C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_247F0C710(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_247F20940(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_247F23F3C();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  *v8 = v6;
  v8[1] = v7;
}

double sub_247F20B40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t DMCSystemAlert.description.getter()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  sub_247F241EC();
  v3 = [v0 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_247F23F3C();
    v2 = v6;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x24C1BEAC0](v5, v2);

  MEMORY[0x24C1BEAC0](2108704, 0xE300000000000000);
  v7 = [v1 message];
  if (v7)
  {
    v8 = v7;
    v9 = sub_247F23F3C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  MEMORY[0x24C1BEAC0](v9, v11);

  MEMORY[0x24C1BEAC0](23328, 0xE200000000000000);
  v12 = [v1 defaultButtonText];
  if (v12)
  {
    v13 = v12;
    v14 = sub_247F23F3C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  MEMORY[0x24C1BEAC0](v14, v16);

  MEMORY[0x24C1BEAC0](5972061, 0xE300000000000000);
  v17 = [v1 alternateButtonText];
  if (v17)
  {
    v18 = v17;
    v19 = sub_247F23F3C();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  MEMORY[0x24C1BEAC0](v19, v21);

  MEMORY[0x24C1BEAC0](5972061, 0xE300000000000000);
  v22 = [v1 otherButtonText];
  if (v22)
  {
    v23 = v22;
    v24 = sub_247F23F3C();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  MEMORY[0x24C1BEAC0](v24, v26);

  MEMORY[0x24C1BEAC0](93, 0xE100000000000000);
  return 0;
}

uint64_t DMCSystemAlert.notificationParametersOutFlags(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_247F19F58(MEMORY[0x277D84F90]);
  v4 = DMCSBUserNotificationDontDismissOnUnlock();
  v5 = MEMORY[0x277D839B0];
  if (v4)
  {
    v6 = v4;
    v7 = sub_247F23F3C();
    v9 = v8;

    v79 = v5;
    LOBYTE(v78) = 1;
    sub_247F0C710(&v78, v77);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_247F0BB40(v77, v7, v9, isUniquelyReferenced_nonNull_native);
  }

  v11 = [v2 title];
  v12 = MEMORY[0x277D837D0];
  if (v11)
  {
    v13 = v11;
    v14 = sub_247F23F3C();
    v16 = v15;

    result = *MEMORY[0x277CBF188];
    if (!*MEMORY[0x277CBF188])
    {
      __break(1u);
      goto LABEL_32;
    }

    v18 = sub_247F23F3C();
    v20 = v19;
    v79 = v12;
    *&v78 = v14;
    *(&v78 + 1) = v16;
    sub_247F0C710(&v78, v77);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_247F0BB40(v77, v18, v20, v21);
  }

  v22 = [v2 message];
  if (!v22)
  {
    goto LABEL_9;
  }

  v23 = v22;
  v24 = sub_247F23F3C();
  v26 = v25;

  result = *MEMORY[0x277CBF198];
  if (!*MEMORY[0x277CBF198])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v27 = sub_247F23F3C();
  v29 = v28;
  v79 = v12;
  *&v78 = v24;
  *(&v78 + 1) = v26;
  sub_247F0C710(&v78, v77);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_247F0BB40(v77, v27, v29, v30);

LABEL_9:
  v31 = [v2 defaultButtonText];
  if (!v31)
  {
    goto LABEL_12;
  }

  v32 = v31;
  v33 = sub_247F23F3C();
  v35 = v34;

  result = *MEMORY[0x277CBF1E8];
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v36 = sub_247F23F3C();
  v38 = v37;
  v79 = v12;
  *&v78 = v33;
  *(&v78 + 1) = v35;
  sub_247F0C710(&v78, v77);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  sub_247F0BB40(v77, v36, v38, v39);

LABEL_12:
  v40 = [v2 alternateButtonText];
  if (!v40)
  {
    goto LABEL_15;
  }

  v41 = v40;
  v42 = sub_247F23F3C();
  v44 = v43;

  result = *MEMORY[0x277CBF1C0];
  if (!*MEMORY[0x277CBF1C0])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v45 = sub_247F23F3C();
  v47 = v46;
  v79 = v12;
  *&v78 = v42;
  *(&v78 + 1) = v44;
  sub_247F0C710(&v78, v77);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  sub_247F0BB40(v77, v45, v47, v48);

LABEL_15:
  v49 = [v2 otherButtonText];
  if (!v49)
  {
    goto LABEL_18;
  }

  v50 = v49;
  v51 = sub_247F23F3C();
  v53 = v52;

  result = *MEMORY[0x277CBF218];
  if (!*MEMORY[0x277CBF218])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v54 = sub_247F23F3C();
  v56 = v55;
  v79 = v12;
  *&v78 = v51;
  *(&v78 + 1) = v53;
  sub_247F0C710(&v78, v77);
  v57 = swift_isUniquelyReferenced_nonNull_native();
  sub_247F0BB40(v77, v54, v56, v57);

LABEL_18:
  v58 = [v2 destructive];
  v59 = MEMORY[0x277D839B0];
  if (v58)
  {
    v79 = MEMORY[0x277D83B88];
    *&v78 = 1;
    sub_247F0C710(&v78, v77);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    sub_247F0BB40(v77, 0xD000000000000032, 0x8000000247F27C80, v60);
  }

  if (![v2 displayOnLockScreen])
  {
    goto LABEL_23;
  }

  result = *MEMORY[0x277CBF1B0];
  if (!*MEMORY[0x277CBF1B0])
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v61 = sub_247F23F3C();
  v63 = v62;
  v79 = v59;
  LOBYTE(v78) = 1;
  sub_247F0C710(&v78, v77);
  v64 = swift_isUniquelyReferenced_nonNull_native();
  sub_247F0BB40(v77, v61, v63, v64);

LABEL_23:
  if ([v2 dismissOnLock])
  {
    v65 = DMCSBUserNotificationDismissOnLock();
    if (v65)
    {
      v66 = v65;
      v67 = sub_247F23F3C();
      v69 = v68;

      v79 = v59;
      LOBYTE(v78) = 1;
      sub_247F0C710(&v78, v77);
      v70 = swift_isUniquelyReferenced_nonNull_native();
      sub_247F0BB40(v77, v67, v69, v70);
    }
  }

  *v76 = 0;
  v71 = [v2 defaultButtonText];
  if (v71)
  {

    v72 = [v2 alternateButtonText];
    if (v72)
    {

      v73 = [v2 otherButtonText];
      if (v73)
      {

        *v76 |= 0x20uLL;
      }
    }
  }

  v74 = sub_247F20600(v3);

  return v74;
}

id DMCSystemAlert.init()()
{
  v1 = (v0 + OBJC_IVAR___DMCSystemAlert_title);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR___DMCSystemAlert_message);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___DMCSystemAlert_defaultButtonText);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR___DMCSystemAlert_alternateButtonText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR___DMCSystemAlert_otherButtonText);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR___DMCSystemAlert_destructive) = 0;
  *(v0 + OBJC_IVAR___DMCSystemAlert_displayOnLockScreen) = 0;
  *(v0 + OBJC_IVAR___DMCSystemAlert_dismissOnLock) = 0;
  *(v0 + OBJC_IVAR___DMCSystemAlert_dismissAfterTimeInterval) = 0;
  *(v0 + OBJC_IVAR___DMCSystemAlert_notification) = 0;
  v6 = (v0 + OBJC_IVAR___DMCSystemAlert_completionBlock);
  *v6 = 0;
  v6[1] = 0;
  v8.super_class = DMCSystemAlert;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_247F216DC()
{
  v7 = sub_247F240DC();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_247F240BC();
  MEMORY[0x28223BE20](v3);
  v4 = sub_247F23E5C();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_247F08408(0, &qword_27EE7F070, 0x277D85C78);
  sub_247F23E4C();
  v8 = MEMORY[0x277D84F90];
  sub_247F238B8(&qword_27EE7F078, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7F080, &qword_247F25F38);
  sub_247F23900(&qword_27EE7F088, &qword_27EE7F080, &qword_247F25F38);
  sub_247F2416C();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_247F2410C();
  qword_27EE7EFE0 = result;
  return result;
}

double static DMCSystemAlertManager.display(_:)(void *a1)
{
  v3 = sub_247F23E2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_247F23E5C();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE7EBF0 != -1)
  {
    swift_once();
  }

  v14[1] = qword_27EE7EFE0;
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_247F22484;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247F23968;
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  sub_247F23E4C();
  v16 = MEMORY[0x277D84F90];
  sub_247F238B8(&qword_27EE7F048, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7F050, &qword_247F25F30);
  sub_247F23900(&qword_27EE7F058, &qword_27EE7F050, &qword_247F25F30);
  sub_247F2416C();
  MEMORY[0x24C1BEC10](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);

  return result;
}

void sub_247F21C3C(uint64_t a1, void *a2)
{
  if (qword_27EE7EBF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = a2;
  MEMORY[0x24C1BEB30]();
  if (*((off_27EE7EFE8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((off_27EE7EFE8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_247F2404C();
  }

  sub_247F2406C();
  swift_endAccess();
  sub_247F226A0();
}

double sub_247F21D10(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_247F21DAC(void *a1, __CFUserNotification *a2)
{
  if (qword_27EE7EC08 != -1)
  {
    swift_once();
  }

  v4 = sub_247F23E1C();
  __swift_project_value_buffer(v4, qword_27EE7F0B0);
  v5 = a1;
  v6 = sub_247F23DFC();
  v7 = sub_247F240AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_247F03000, v6, v7, "DMCSystemAlertManager auto-dismissing alert: %@", v8, 0xCu);
    sub_247F08114(v9);
    MEMORY[0x24C1BF4F0](v9, -1, -1);
    MEMORY[0x24C1BF4F0](v8, -1, -1);
  }

  return CFUserNotificationCancel(a2);
}

void sub_247F21F68(uint64_t a1)
{
  v24 = a1;
  v1 = sub_247F23E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_247F23E5C();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_247F23E3C();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_27EE7EFD8;
  qword_27EE7EFD8 = 0;
  if (v13)
  {
    v14 = [v13 completionBlock];
    if (v14)
    {
      v15 = v14;
      v16 = swift_allocObject();
      v23 = v2;
      v17 = v16;
      *(v16 + 16) = v15;
      sub_247F08408(0, &qword_27EE7F070, 0x277D85C78);
      (*(v9 + 104))(v12, *MEMORY[0x277D851C8], v8);
      v22 = sub_247F2411C();
      (*(v9 + 8))(v12, v8);
      v18 = swift_allocObject();
      v18[2] = sub_247F08E80;
      v18[3] = v17;
      v18[4] = v24;
      aBlock[4] = sub_247F23888;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_247F23968;
      aBlock[3] = &block_descriptor_35;
      v19 = _Block_copy(aBlock);

      sub_247F23E4C();
      v26 = MEMORY[0x277D84F90];
      sub_247F238B8(&qword_27EE7F048, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v24 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7F050, &qword_247F25F30);
      sub_247F23900(&qword_27EE7F058, &qword_27EE7F050, &qword_247F25F30);
      sub_247F2416C();
      v20 = v22;
      MEMORY[0x24C1BEC10](0, v7, v4, v19);
      _Block_release(v19);

      (*(v23 + 8))(v4, v1);
      (*(v25 + 8))(v7, v24);
    }
  }

  sub_247F226A0();
}

uint64_t sub_247F223AC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_247F2423C();
LABEL_9:
  result = sub_247F2420C();
  *v2 = result;
  return result;
}

uint64_t sub_247F2244C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247F224CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for DMCSystemAlert(a1);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_247F2423C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_247F2423C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_247F225C8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_247F2423C();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_247F2423C();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_247F223AC(result, 1);

  return sub_247F224CC(v5, v3, 0);
}

void sub_247F226A0()
{
  v90 = *MEMORY[0x277D85DE8];
  v0 = sub_247F23E2C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_247F23E5C();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v86 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_247F23E7C();
  MEMORY[0x28223BE20](v7);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v76 - v13;
  if (qword_27EE7EFD8)
  {
    return;
  }

  v83 = v11;
  v84 = v12;
  if (qword_27EE7EBF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = off_27EE7EFE8;
  if (off_27EE7EFE8 >> 62)
  {
    if (!sub_247F2423C())
    {
      return;
    }
  }

  else if (!*((off_27EE7EFE8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v81 = v1;
  v82 = v0;
  v79 = v3;
  v80 = v4;
  v78 = v5;
  if ((v15 & 0xC000000000000001) != 0)
  {

    v43 = MEMORY[0x24C1BED10](0, v15);

    v16 = v43;
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_33;
    }

    v16 = *(v15 + 32);
  }

  v88 = 0;
  v85 = v16;
  v17 = [v16 notificationParametersOutFlags_];
  sub_247F23EAC();

  error = 0;
  v18 = *MEMORY[0x277CBECE8];
  v19 = v88;
  v20 = sub_247F23E9C();
  v21 = CFUserNotificationCreate(v18, 0.0, v19, &error, v20);

  if (v21)
  {
    v4 = v21;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v4, sub_247F21DA4, 0);
    if (!RunLoopSource)
    {

      v24 = v85;
      if (qword_27EE7EC08 == -1)
      {
LABEL_26:
        v34 = sub_247F23E1C();
        __swift_project_value_buffer(v34, qword_27EE7F0B0);
        v35 = v24;
        v36 = sub_247F23DFC();
        v37 = sub_247F2409C();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = v4;
          v40 = swift_slowAlloc();
          *v38 = 138412290;
          *(v38 + 4) = v35;
          *v40 = v35;
          v41 = v35;
          _os_log_impl(&dword_247F03000, v36, v37, "DMCSystemAlertManager failed to create run loop source for alert: %@", v38, 0xCu);
          sub_247F08114(v40);
          v42 = v40;
          v4 = v39;
          MEMORY[0x24C1BF4F0](v42, -1, -1);
          MEMORY[0x24C1BF4F0](v38, -1, -1);
          v35 = v36;
          v36 = v41;
        }

        return;
      }

LABEL_57:
      swift_once();
      goto LABEL_26;
    }

    v1 = RunLoopSource;
    if (!(off_27EE7EFE8 >> 62))
    {
      if (*((off_27EE7EFE8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (sub_247F2423C())
    {
LABEL_14:
      swift_beginAccess();
      v23 = off_27EE7EFE8;
      v24 = (off_27EE7EFE8 >> 62);
      if (off_27EE7EFE8 >> 62)
      {
        if (!sub_247F2423C())
        {
          __break(1u);
          return;
        }

        if (sub_247F2423C())
        {
LABEL_16:
          if ((v23 & 0xC000000000000001) == 0)
          {
            if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v25 = *(v23 + 32);
              if (!v24)
              {
LABEL_19:
                v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_45:
                if (!v26)
                {
                  __break(1u);
                }

                sub_247F225C8(0, 1);
                swift_endAccess();

LABEL_47:
                v49 = qword_27EE7EFD8;
                qword_27EE7EFD8 = v85;
                v50 = v85;

                [v50 setNotification_];
                v51 = CFRunLoopGetMain();
                v52 = *MEMORY[0x277CBF048];
                v77 = v1;
                CFRunLoopAddSource(v51, v1, v52);

                if (qword_27EE7EC08 != -1)
                {
                  swift_once();
                }

                v53 = sub_247F23E1C();
                __swift_project_value_buffer(v53, qword_27EE7F0B0);
                v54 = v50;
                v55 = sub_247F23DFC();
                v56 = sub_247F240AC();

                if (os_log_type_enabled(v55, v56))
                {
                  v57 = swift_slowAlloc();
                  v58 = swift_slowAlloc();
                  *v57 = 138412290;
                  *(v57 + 4) = v54;
                  *v58 = v85;
                  v59 = v54;
                  _os_log_impl(&dword_247F03000, v55, v56, "DMCSystemAlertManager displaying alert: %@", v57, 0xCu);
                  sub_247F08114(v58);
                  MEMORY[0x24C1BF4F0](v58, -1, -1);
                  MEMORY[0x24C1BF4F0](v57, -1, -1);
                }

                [v54 dismissAfterTimeInterval];
                if (v60 <= 0.0)
                {
                }

                else
                {
                  v61 = v54;
                  v62 = sub_247F23DFC();
                  v63 = sub_247F240AC();

                  if (os_log_type_enabled(v62, v63))
                  {
                    v64 = swift_slowAlloc();
                    v65 = swift_slowAlloc();
                    *v64 = 138412546;
                    *(v64 + 4) = v61;
                    *v65 = v85;
                    *(v64 + 12) = 2048;
                    [v61 dismissAfterTimeInterval];
                    *(v64 + 14) = v66;
                    _os_log_impl(&dword_247F03000, v62, v63, "DMCSystemAlertManager auto-dismissing alert (%@) in %f seconds", v64, 0x16u);
                    sub_247F08114(v65);
                    MEMORY[0x24C1BF4F0](v65, -1, -1);
                    MEMORY[0x24C1BF4F0](v64, -1, -1);
                  }

                  sub_247F08408(0, &qword_27EE7F070, 0x277D85C78);
                  v76 = sub_247F240EC();
                  sub_247F23E6C();
                  [v61 dismissAfterTimeInterval];
                  sub_247F23E8C();
                  v67 = *(v84 + 8);
                  v84 += 8;
                  v85 = v67;
                  (v67)(v9, v83);
                  v68 = swift_allocObject();
                  *(v68 + 16) = v61;
                  *(v68 + 24) = v4;
                  aBlock[4] = sub_247F23370;
                  aBlock[5] = v68;
                  aBlock[0] = MEMORY[0x277D85DD0];
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_247F23968;
                  aBlock[3] = &block_descriptor_16;
                  v69 = _Block_copy(aBlock);
                  v70 = v4;
                  v71 = v61;

                  v72 = v86;
                  sub_247F23E4C();
                  aBlock[0] = MEMORY[0x277D84F90];
                  sub_247F238B8(&qword_27EE7F048, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7F050, &qword_247F25F30);
                  sub_247F23900(&qword_27EE7F058, &qword_27EE7F050, &qword_247F25F30);
                  v73 = v79;
                  v74 = v82;
                  sub_247F2416C();
                  v75 = v76;
                  MEMORY[0x24C1BEBE0](v14, v72, v73, v69);
                  _Block_release(v69);

                  (*(v81 + 1))(v73, v74);
                  (*(v78 + 8))(v72, v80);
                  (v85)(v14, v83);
                }

                return;
              }

LABEL_44:
              v26 = sub_247F2423C();
              goto LABEL_45;
            }

            __break(1u);
            goto LABEL_57;
          }

LABEL_43:
          v25 = MEMORY[0x24C1BED10](0, v23);
          if (!v24)
          {
            goto LABEL_19;
          }

          goto LABEL_44;
        }

        __break(1u);
      }

      else if (*((off_27EE7EFE8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_43;
    }

LABEL_34:
    v44 = v1;

    if (qword_27EE7EC08 != -1)
    {
      swift_once();
    }

    v45 = sub_247F23E1C();
    __swift_project_value_buffer(v45, qword_27EE7F0B0);
    v46 = sub_247F23DFC();
    v47 = sub_247F2409C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_247F03000, v46, v47, "DMCSystemAlertManager alert queue is unexpectedly empty", v48, 2u);
      MEMORY[0x24C1BF4F0](v48, -1, -1);
    }

    v1 = v44;
    goto LABEL_47;
  }

  if (qword_27EE7EC08 != -1)
  {
    swift_once();
  }

  v27 = sub_247F23E1C();
  __swift_project_value_buffer(v27, qword_27EE7F0B0);
  v28 = v85;
  v29 = sub_247F23DFC();
  v30 = sub_247F2409C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412546;
    *(v31 + 4) = v28;
    *v32 = v28;
    *(v31 + 12) = 1024;
    swift_beginAccess();
    *(v31 + 14) = error;
    v33 = v28;
    _os_log_impl(&dword_247F03000, v29, v30, "DMCSystemAlertManager failed to create alert (%@) with error: %d", v31, 0x12u);
    sub_247F08114(v32);
    MEMORY[0x24C1BF4F0](v32, -1, -1);
    MEMORY[0x24C1BF4F0](v31, -1, -1);
    v28 = v29;
    v29 = v33;
  }
}

uint64_t sub_247F23330()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_247F23378(unint64_t result)
{
  if (result >= 4)
  {
    v1 = result;
    if (qword_27EE7EC08 != -1)
    {
      swift_once();
    }

    v2 = sub_247F23E1C();
    __swift_project_value_buffer(v2, qword_27EE7F0B0);
    v3 = sub_247F23DFC();
    v4 = sub_247F2409C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_247F03000, v3, v4, "DMCSystemAlertManager encountered unknown response flags: %lu", v5, 0xCu);
      MEMORY[0x24C1BF4F0](v5, -1, -1);
    }

    return 4;
  }

  return result;
}

void sub_247F23470(unint64_t a1)
{
  v1 = sub_247F23378(a1);
  if (qword_27EE7EC08 != -1)
  {
    swift_once();
  }

  v2 = sub_247F23E1C();
  __swift_project_value_buffer(v2, qword_27EE7F0B0);
  v3 = sub_247F23DFC();
  v4 = sub_247F2409C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136315138;
    if (v1 <= 1)
    {
      if (!v1)
      {
        v7 = 0x8000000247F27F60;
        v8 = 0xD000000000000011;
        goto LABEL_16;
      }

      if (v1 == 1)
      {
        v7 = 0x8000000247F27F40;
        v8 = 0xD000000000000015;
        goto LABEL_16;
      }
    }

    else
    {
      switch(v1)
      {
        case 2:
          v8 = 0xD000000000000010;
          v7 = 0x8000000247F27F20;
          goto LABEL_16;
        case 3:
          v7 = 0xE600000000000000;
          v8 = 0x6C65636E6163;
          goto LABEL_16;
        case 4:
          v7 = 0xE500000000000000;
          v8 = 0x726F727265;
LABEL_16:
          v9 = sub_247F082C8(v8, v7, v14);

          *(v5 + 4) = v9;
          _os_log_impl(&dword_247F03000, v3, v4, "DMCSystemAlertManager dismissed alert with response: %s", v5, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v6);
          MEMORY[0x24C1BF4F0](v6, -1, -1);
          MEMORY[0x24C1BF4F0](v5, -1, -1);
          goto LABEL_17;
      }
    }

    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    goto LABEL_16;
  }

LABEL_17:

  if (qword_27EE7EBF0 != -1)
  {
    swift_once();
  }

  v10 = qword_27EE7EFE0;
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_247F237D8;
  *(v12 + 24) = v11;
  v14[4] = sub_247F237F0;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_247F22380;
  v14[3] = &block_descriptor_25;
  v13 = _Block_copy(v14);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }
}

uint64_t sub_247F23818()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247F23850()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247F238B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_247F23900(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_247F23A04(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_247F23E1C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_247F23E0C();
}

uint64_t sub_247F23AA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_247F23E1C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
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