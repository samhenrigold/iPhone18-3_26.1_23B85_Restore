uint64_t HomeEntityResponse.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v14);
  if (!v15)
  {
    sub_252982F10(v14);
    goto LABEL_8;
  }

  type metadata accessor for HomeEntityResponse();
  if (swift_dynamicCast())
  {
    v2 = [v1 entity];
    v3 = [v13 entity];
    v4 = v3;
    if (v2)
    {
      if (!v3)
      {

        return v4 & 1;
      }

      type metadata accessor for HomeEntity();
      v5 = sub_252E37694();

      if ((v5 & 1) == 0)
      {

        goto LABEL_8;
      }
    }

    else if (v3)
    {

      goto LABEL_8;
    }

    v7 = [v1 taskResponses];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for HomeUserTaskResponse();
      v9 = sub_252E37264();
    }

    else
    {
      v9 = 0;
    }

    v10 = [v13 taskResponses];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for HomeUserTaskResponse();
      v12 = sub_252E37264();

      if (v9)
      {
        if (v12)
        {
          LOBYTE(v4) = sub_252AE9EA0(v9, v12, type metadata accessor for HomeUserTaskResponse);

          return v4 & 1;
        }

        goto LABEL_21;
      }

      if (v12)
      {

        goto LABEL_8;
      }
    }

    else
    {
      if (v9)
      {
LABEL_21:

        goto LABEL_8;
      }
    }

    LOBYTE(v4) = 1;
    return v4 & 1;
  }

LABEL_8:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t HomeUserTaskResponse.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v9);
  if (!v10)
  {
    sub_252982F10(v9);
    goto LABEL_12;
  }

  type metadata accessor for HomeUserTaskResponse();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v6 = 0;
    return v6 & 1;
  }

  v2 = [v1 taskOutcome];
  if (v2 != [v8 taskOutcome])
  {
LABEL_11:

    goto LABEL_12;
  }

  v3 = [v1 userTask];
  v4 = [v8 userTask];
  v5 = v4;
  if (!v3)
  {

    if (!v5)
    {
      v6 = 1;
      return v6 & 1;
    }

    goto LABEL_12;
  }

  if (!v4)
  {

    goto LABEL_11;
  }

  type metadata accessor for HomeUserTask();
  v6 = sub_252E37694();

  return v6 & 1;
}

uint64_t HomeUserTask.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v10);
  if (!v11)
  {
    sub_252982F10(v10);
    goto LABEL_13;
  }

  type metadata accessor for HomeUserTask();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v7 = 0;
    return v7 & 1;
  }

  v2 = [v1 taskType];
  if (v2 != [v9 taskType])
  {
    goto LABEL_12;
  }

  v3 = [v1 attribute];
  if (v3 != [v9 attribute])
  {
    goto LABEL_12;
  }

  v4 = [v1 value];
  v5 = [v9 value];
  v6 = v5;
  if (!v4)
  {

    if (!v6)
    {
      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_13;
  }

  if (!v5)
  {

LABEL_12:
    goto LABEL_13;
  }

  type metadata accessor for HomeAttributeValue();
  v7 = sub_252E37694();

  return v7 & 1;
}

uint64_t HomeFilter.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v110);
  if (!v111)
  {
    sub_252982F10(v110);
    goto LABEL_142;
  }

  type metadata accessor for HomeFilter();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_142:
    v106 = 0;
    return v106 & 1;
  }

  v2 = [v1 entityIdentifiers];
  if (v2)
  {
    v3 = v2;
    v4 = sub_252E37264();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v109 entityIdentifiers];
  if (v5)
  {
    v6 = v5;
    v7 = sub_252E37264();

    if (v4)
    {
      if (!v7)
      {
        goto LABEL_127;
      }

      v8 = sub_252AE83F4(v4, v7);

      if ((v8 & 1) == 0)
      {
        goto LABEL_141;
      }
    }

    else if (v7)
    {
      goto LABEL_28;
    }
  }

  else if (v4)
  {
    goto LABEL_127;
  }

  v9 = [v1 homeEntityName];
  if (v9)
  {
    v10 = v9;
    v11 = sub_252E36F34();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [v109 homeEntityName];
  if (v14)
  {
    v15 = v14;
    v16 = sub_252E36F34();
    v18 = v17;

    if (v13)
    {
      if (!v18)
      {
        goto LABEL_127;
      }

      if (v11 == v16 && v13 == v18)
      {
      }

      else
      {
        v19 = sub_252E37DB4();

        if ((v19 & 1) == 0)
        {
          goto LABEL_141;
        }
      }
    }

    else if (v18)
    {
      goto LABEL_28;
    }
  }

  else if (v13)
  {
    goto LABEL_127;
  }

  v20 = [v1 entityType];
  if (v20 != [v109 entityType])
  {
    goto LABEL_141;
  }

  v21 = [v1 outerDeviceType];
  if (v21 != [v109 outerDeviceType])
  {
    goto LABEL_141;
  }

  v22 = [v1 outerDeviceName];
  if (v22)
  {
    v23 = v22;
    v24 = sub_252E36F34();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = [v109 outerDeviceName];
  if (v27)
  {
    v28 = v27;
    v29 = sub_252E36F34();
    v31 = v30;

    if (v26)
    {
      if (!v31)
      {
        goto LABEL_127;
      }

      if (v24 == v29 && v26 == v31)
      {
      }

      else
      {
        v32 = sub_252E37DB4();

        if ((v32 & 1) == 0)
        {
          goto LABEL_141;
        }
      }
    }

    else if (v31)
    {
      goto LABEL_28;
    }
  }

  else if (v26)
  {
    goto LABEL_127;
  }

  v33 = [v1 deviceType];
  if (v33 != [v109 deviceType])
  {
    goto LABEL_141;
  }

  v34 = [v1 homeName];
  if (v34)
  {
    v35 = v34;
    v36 = sub_252E36F34();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v39 = [v109 homeName];
  if (v39)
  {
    v40 = v39;
    v41 = sub_252E36F34();
    v43 = v42;

    if (v38)
    {
      if (!v43)
      {
        goto LABEL_127;
      }

      if (v36 == v41 && v38 == v43)
      {
      }

      else
      {
        v44 = sub_252E37DB4();

        if ((v44 & 1) == 0)
        {
          goto LABEL_141;
        }
      }
    }

    else if (v43)
    {
      goto LABEL_28;
    }
  }

  else if (v38)
  {
    goto LABEL_127;
  }

  v45 = [v1 groupName];
  if (v45)
  {
    v46 = v45;
    v47 = sub_252E36F34();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v50 = [v109 groupName];
  if (v50)
  {
    v51 = v50;
    v52 = sub_252E36F34();
    v54 = v53;

    if (v49)
    {
      if (!v54)
      {
        goto LABEL_127;
      }

      if (v47 == v52 && v49 == v54)
      {
      }

      else
      {
        v55 = sub_252E37DB4();

        if ((v55 & 1) == 0)
        {
          goto LABEL_141;
        }
      }
    }

    else if (v54)
    {
      goto LABEL_28;
    }
  }

  else if (v49)
  {
    goto LABEL_127;
  }

  v56 = [v1 roomName];
  if (v56)
  {
    v57 = v56;
    v58 = sub_252E36F34();
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0;
  }

  v61 = [v109 roomName];
  if (v61)
  {
    v62 = v61;
    v63 = sub_252E36F34();
    v65 = v64;

    if (v60)
    {
      if (!v65)
      {
        goto LABEL_127;
      }

      if (v58 == v63 && v60 == v65)
      {
      }

      else
      {
        v66 = sub_252E37DB4();

        if ((v66 & 1) == 0)
        {
          goto LABEL_141;
        }
      }
    }

    else if (v65)
    {
      goto LABEL_28;
    }
  }

  else if (v60)
  {
    goto LABEL_127;
  }

  v67 = [v1 zoneName];
  if (v67)
  {
    v68 = v67;
    v69 = sub_252E36F34();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0;
  }

  v72 = [v109 zoneName];
  if (v72)
  {
    v73 = v72;
    v74 = sub_252E36F34();
    v76 = v75;

    if (v71)
    {
      if (!v76)
      {
        goto LABEL_127;
      }

      if (v69 == v74 && v71 == v76)
      {
      }

      else
      {
        v77 = sub_252E37DB4();

        if ((v77 & 1) == 0)
        {
          goto LABEL_141;
        }
      }
    }

    else if (v76)
    {
      goto LABEL_28;
    }
  }

  else if (v71)
  {
    goto LABEL_127;
  }

  v78 = [v1 targetArea];
  if (v78)
  {
    v79 = v78;
    v80 = sub_252E36F34();
    v82 = v81;
  }

  else
  {
    v80 = 0;
    v82 = 0;
  }

  v83 = [v109 targetArea];
  if (!v83)
  {
    if (!v82)
    {
      goto LABEL_117;
    }

    goto LABEL_127;
  }

  v84 = v83;
  v85 = sub_252E36F34();
  v87 = v86;

  if (v82)
  {
    if (v87)
    {
      if (v80 == v85 && v82 == v87)
      {
      }

      else
      {
        v88 = sub_252E37DB4();

        if ((v88 & 1) == 0)
        {
          goto LABEL_141;
        }
      }

      goto LABEL_117;
    }

LABEL_127:

    goto LABEL_142;
  }

  if (v87)
  {
    goto LABEL_28;
  }

LABEL_117:
  v89 = [v108 targetMap];
  if (v89)
  {
    v90 = v89;
    v91 = sub_252E36F34();
    v93 = v92;
  }

  else
  {
    v91 = 0;
    v93 = 0;
  }

  v94 = [v109 targetMap];
  if (!v94)
  {
    if (!v93)
    {
      goto LABEL_131;
    }

    goto LABEL_127;
  }

  v95 = v94;
  v96 = sub_252E36F34();
  v98 = v97;

  if (!v93)
  {
    if (!v98)
    {
      goto LABEL_131;
    }

LABEL_28:

    goto LABEL_141;
  }

  if (!v98)
  {
    goto LABEL_127;
  }

  if (v91 == v96 && v93 == v98)
  {
  }

  else
  {
    v99 = sub_252E37DB4();

    if ((v99 & 1) == 0)
    {
      goto LABEL_141;
    }
  }

LABEL_131:
  v100 = [v108 isExcludeFilter];
  v101 = [v109 isExcludeFilter];
  v102 = v101;
  if (!v100)
  {
    if (!v101)
    {
      goto LABEL_137;
    }

LABEL_141:
    goto LABEL_142;
  }

  if (!v101)
  {
LABEL_140:

    goto LABEL_141;
  }

  sub_252956D08();
  v103 = sub_252E37694();

  if ((v103 & 1) == 0)
  {
    goto LABEL_141;
  }

LABEL_137:
  v100 = [v108 hasAllQuantifier];
  v104 = [v109 hasAllQuantifier];
  v105 = v104;
  if (!v100)
  {

    if (!v105)
    {
      v106 = 1;
      return v106 & 1;
    }

    goto LABEL_142;
  }

  if (!v104)
  {
    goto LABEL_140;
  }

  sub_252956D08();
  v106 = sub_252E37694();

  return v106 & 1;
}

uint64_t sub_252AEB9A8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_252982F10(v10);
  return v8 & 1;
}

unint64_t sub_252AEBA30()
{
  result = qword_27F540F68;
  if (!qword_27F540F68)
  {
    v3 = sub_252E32BA4();
    result = swift_getWitnessTable(MEMORY[0x277CC89A8], v3, v0, v1);
    atomic_store(result, &qword_27F540F68);
  }

  return result;
}

unint64_t sub_252AEBA88()
{
  result = qword_27F542ED0[0];
  if (!qword_27F542ED0[0])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540A28, &qword_252E3DF80);
    result = swift_getWitnessTable(MEMORY[0x277D5F448], v3, v0, v1);
    atomic_store(result, qword_27F542ED0);
  }

  return result;
}

void sub_252AEBAEC(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_28:
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v30 = v3 & 0xFFFFFFFFFFFFFF8;
      v31 = v3 & 0xC000000000000001;
      v28 = v4;
      v29 = v3;
      while (1)
      {
        if (v31)
        {
          v6 = MEMORY[0x2530ADF00](v5, v3);
        }

        else
        {
          if (v5 >= *(v30 + 16))
          {
            goto LABEL_25;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v9 = [v6 aceId];
        if (v9)
        {
          break;
        }

LABEL_5:
        ++v5;
        if (v8 == v4)
        {
          return;
        }
      }

      v32 = v7;
      v10 = v9;
      v11 = sub_252E36F34();
      v13 = v12;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *a2;
      v33 = *a2;
      v16 = a2;
      *a2 = 0x8000000000000000;
      v3 = sub_252A44A10(v11, v13);
      v18 = v15[2];
      v19 = (v17 & 1) == 0;
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        goto LABEL_26;
      }

      a2 = v17;
      if (v15[3] < v20)
      {
        sub_252DFE838(v20, isUniquelyReferenced_nonNull_native);
        v21 = sub_252A44A10(v11, v13);
        if ((a2 & 1) != (v22 & 1))
        {
          sub_252E37E24();
          __break(1u);
          return;
        }

        v3 = v21;
        v23 = v33;
        if ((a2 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_18:
        *(v23[7] + 8 * v3) = MEMORY[0x277D84F90];

LABEL_23:
        a2 = v16;
        *v16 = v23;

        v4 = v28;
        v3 = v29;
        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v23 = v33;
        if (v17)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_252E032D8();
        v23 = v33;
        if (a2)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v23[(v3 >> 6) + 8] |= 1 << v3;
      v24 = (v23[6] + 16 * v3);
      *v24 = v11;
      v24[1] = v13;
      *(v23[7] + 8 * v3) = MEMORY[0x277D84F90];
      v25 = v23[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_27;
      }

      v23[2] = v27;
      goto LABEL_23;
    }
  }
}

void sub_252AEBD5C(unint64_t a1, char **a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_252AEEA6C(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void *sub_252AEBE50()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_252E32E84();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (v12)
  {
    v13 = v12;
    v14 = [v1 aceId];
    if (v14)
    {
      v15 = v14;
      sub_252E36F34();

      sub_252E32E14();

      v16 = *(v6 + 48);
      if (v16(v4, 1, v5) == 1)
      {
        sub_252E32E74();
        if (v16(v4, 1, v5) != 1)
        {
          sub_25293847C(v4, &unk_27F541F20, &qword_252E3C180);
        }
      }

      else
      {
        (*(v6 + 32))(v11, v4, v5);
      }
    }

    else
    {
      sub_252E32E74();
      v11 = v9;
    }

    v18 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v19 = sub_252E32E44();
    v20 = [v18 initWithNSUUID_];

    (*(v6 + 8))(v11, v5);
    [v13 setCommandId_];

    [v13 setCommandType_];
    v21 = [v1 actionRequests];
    if (v21)
    {
      sub_25293F638(0, &qword_27F540358, 0x277D47330);
      v22 = sub_252E37264();

      v31 = MEMORY[0x277D84F90];
      if (v22 >> 62)
      {
LABEL_30:
        v23 = sub_252E378C4();
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = 0;
      while (v23 != v24)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x2530ADF00](v24, v22);
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v25 = *(v22 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v28 = sub_252AEC328();

        ++v24;
        if (v28)
        {
          MEMORY[0x2530AD700]();
          if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v24 = v27;
        }
      }

      sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
      v21 = sub_252E37254();
    }

    [v13 setHomeAutomationRequests_];
  }

  else
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD00000000000006ALL, 0x8000000252E7A4F0, 0xD000000000000012, 0x8000000252E7A590, 17);
    return 0;
  }

  return v13;
}

void *sub_252AEC328()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42 - v3;
  v5 = sub_252E32E84();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
  if (v12)
  {
    v13 = v12;
    v14 = [v1 aceId];
    if (v14)
    {
      v15 = v14;
      sub_252E36F34();

      sub_252E32E14();

      v16 = *(v6 + 48);
      if (v16(v4, 1, v5) == 1)
      {
        sub_252E32E74();
        if (v16(v4, 1, v5) != 1)
        {
          sub_25293847C(v4, &unk_27F541F20, &qword_252E3C180);
        }
      }

      else
      {
        (*(v6 + 32))(v11, v4, v5);
      }
    }

    else
    {
      sub_252E32E74();
      v11 = v9;
    }

    v18 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v19 = sub_252E32E44();
    v20 = [v18 initWithNSUUID_];

    (*(v6 + 8))(v11, v5);
    [v13 setHomeAutomationRequestId_];

    v21 = sub_252AEC8D0();
    if ((v21 & 0x100000000) == 0)
    {
      [v13 setHomeAutomationRequestType_];
    }

    v22 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
    if (v22)
    {
      v23 = v22;
      [v13 setHomeAutomationRequestMetadata_];
      v24 = [v1 filter];
      if (v24)
      {
        v25 = v24;
        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        if (v26)
        {
          v27 = v26;
          v28 = [v13 homeAutomationRequestMetadata];
          if (v28)
          {
            v29 = v28;
            [v28 setSmallestTargetedContainer_];
            v30 = [v27 attribute];
            if (v30)
            {
              v31 = v30;
              sub_252E36F34();

              v32 = sub_252E36FA4();
              v34 = v33;

              v35 = HIBYTE(v34) & 0xF;
              if ((v34 & 0x2000000000000000) == 0)
              {
                v35 = v32 & 0xFFFFFFFFFFFFLL;
              }

              if (v35)
              {
                sub_252E37174();
                v36 = sub_252E36FC4();
                v38 = v37;

                sub_252AD52A0(0xFuLL, 15, v36, v38, v32, v34);
              }

              v39 = sub_252E36F04();

              [v29 setTargetAttribute_];
            }
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      if (qword_27F53F530 != -1)
      {
        swift_once();
      }

      v40 = sub_252E36AD4();
      __swift_project_value_buffer(v40, qword_27F544E38);
      sub_252CC4050(0xD00000000000002ELL, 0x8000000252E7A5D0, 0xD00000000000006ALL, 0x8000000252E7A4F0, 0xD000000000000012, 0x8000000252E7A5B0, 54);
    }
  }

  else
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD00000000000006ALL, 0x8000000252E7A4F0, 0xD000000000000012, 0x8000000252E7A5B0, 39);
    return 0;
  }

  return v13;
}

unint64_t sub_252AEC8D0()
{
  v1 = [v0 actions];
  if (!v1)
  {
    goto LABEL_29;
  }

  v2 = v1;
  sub_25293F638(0, &qword_27F540368, 0x277D47328);
  v3 = sub_252E37264();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_23:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v4 = sub_252E378C4();
  if (!v4)
  {
    goto LABEL_23;
  }

LABEL_4:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v10 = [v8 actionType];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_24;
      }
    }

    v11 = v10;
    v12 = sub_252E36F34();
    v23 = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2529F7A80(0, *(v6 + 2) + 1, 1, v6);
    }

    v15 = *(v6 + 2);
    v14 = *(v6 + 3);
    if (v15 >= v14 >> 1)
    {
      v6 = sub_2529F7A80((v14 > 1), v15 + 1, 1, v6);
    }

    *(v6 + 2) = v15 + 1;
    v16 = &v6[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v23;
  }

  while (v5 != v4);
LABEL_24:

  if (*(v6 + 2) != 1)
  {

LABEL_29:
    v21 = 0;
    v20 = 1;
    return v21 | (v20 << 32);
  }

  v17 = *(v6 + 4);
  v18 = *(v6 + 5);

  v19 = sub_252D13FBC(v17, v18);

  v20 = 0;
  v21 = v19;
  if ((v19 & 0x100000000) != 0)
  {
    v21 = 0;
  }

  return v21 | (v20 << 32);
}

uint64_t sub_252AECB14()
{
  v1 = [v0 groupName];
  if (v1)
  {
    v2 = 4;
  }

  else
  {
    v1 = [v0 roomName];
    if (v1)
    {
      v2 = 3;
    }

    else
    {
      v1 = [v0 zoneName];
      if (v1)
      {
        v2 = 2;
      }

      else
      {
        v1 = [v0 homeName];
        if (!v1)
        {
          return 0;
        }

        v2 = 1;
      }
    }
  }

  return v2;
}

id sub_252AECBCC(id *a1, void *a2)
{
  v203 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  MEMORY[0x28223BE20](v5 - 8);
  v211 = &v192 - v6;
  v210 = sub_252E32E84();
  v202 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v209 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = v2;
  v8 = [v2 actionResults];
  if (!v8)
  {
    v204 = 0;
    goto LABEL_268;
  }

  v9 = v8;
  sub_25293F638(0, &qword_27F540388, 0x277D47338);
  v10 = sub_252E37264();

  v212 = sub_252AEFBFC(v11);
  v201 = v10;

  v228 = sub_252CC4AC4(MEMORY[0x277D84F90]);
  v12 = [a2 actionRequests];
  if (v12)
  {
    v9 = v12;
    sub_25293F638(0, &qword_27F540358, 0x277D47330);
    v13 = sub_252E37264();

    sub_252AEBAEC(v13, &v228);
    v204 = 0;
  }

  else
  {
    v204 = 0;
  }

  v14 = v212[8];
  v206 = (v212 + 8);
  v15 = 1 << *(v212 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v205 = ((v15 + 63) >> 6);

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v213 = a2;
LABEL_10:
  if (v17)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_313;
    }

    if (v20 >= v205)
    {
      break;
    }

    v17 = *(v206 + 8 * v20);
    ++v18;
    if (v17)
    {
      v18 = v20;
LABEL_15:
      v215 = v18;
      v21 = __clz(__rbit64(v17)) | (v18 << 6);
      v22 = v212[7];
      v23 = (v212[6] + 16 * v21);
      v24 = v23[1];
      v222 = *v23;
      v25 = *(v22 + 8 * v21);

      v214 = v25;

      result = [a2 actionRequests];
      if (result)
      {
        v9 = result;
        sub_25293F638(0, &qword_27F540358, 0x277D47330);
        v27 = sub_252E37264();

        if (v27 >> 62)
        {
          v3 = sub_252E378C4();
        }

        else
        {
          v3 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v17 &= v17 - 1;
        if (!v3)
        {
LABEL_9:

          v18 = v215;
          goto LABEL_10;
        }

        v28 = 0;
        v29 = v27 & 0xC000000000000001;
        v219 = v27 + 32;
        v220 = v27 & 0xFFFFFFFFFFFFFF8;
        v216 = v17;
        v217 = v27;
        v208 = v3;
        v207 = v27 & 0xC000000000000001;
        while (1)
        {
          if (v29)
          {
            v30 = MEMORY[0x2530ADF00](v28, v27);
          }

          else
          {
            if (v28 >= *(v220 + 16))
            {
              goto LABEL_320;
            }

            v30 = *(v219 + 8 * v28);
          }

          v31 = v30;
          v32 = __OFADD__(v28++, 1);
          if (v32)
          {
            goto LABEL_319;
          }

          v33 = [v30 actions];
          if (v33)
          {
            v9 = v33;
            v221 = v31;
            sub_25293F638(0, &qword_27F540368, 0x277D47328);
            v3 = sub_252E37264();

            if (v3 >> 62)
            {
              v34 = sub_252E378C4();
              v218 = v28;
              if (v34)
              {
LABEL_28:
                v35 = 0;
                v223 = v3 & 0xC000000000000001;
                do
                {
                  if (v223)
                  {
                    v36 = MEMORY[0x2530ADF00](v35, v3);
                  }

                  else
                  {
                    if (v35 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_304;
                    }

                    v36 = *(v3 + 8 * v35 + 32);
                  }

                  v9 = v36;
                  v17 = v35 + 1;
                  if (__OFADD__(v35, 1))
                  {
                    __break(1u);
LABEL_304:
                    __break(1u);
                    goto LABEL_305;
                  }

                  v37 = v24;
                  v38 = [v36 aceId];
                  if (v38)
                  {
                    v39 = v38;
                    v40 = sub_252E36F34();
                    v42 = v41;

                    v24 = v37;
                    if (v37)
                    {
                      v43 = v40 == v222 && v37 == v42;
                      if (v43)
                      {

LABEL_53:
                        v45 = v221;
                        result = [v221 aceId];
                        v19 = MEMORY[0x277D84F90];
                        if (!result)
                        {
                          goto LABEL_330;
                        }

                        v46 = result;

                        v47 = sub_252E36F34();
                        v9 = v48;

                        v49 = sub_252AEE95C(&v225, v47, v9);
                        if (*v50)
                        {
                          sub_25297A838(v214);
                        }

                        else
                        {
                        }

                        (v49)(&v225, 0);

                        a2 = v213;
                        v18 = v215;
                        v17 = v216;
                        goto LABEL_10;
                      }

                      v44 = sub_252E37DB4();

                      if (v44)
                      {
                        goto LABEL_51;
                      }
                    }

                    else
                    {
                    }
                  }

                  else
                  {

                    if (!v24)
                    {
LABEL_51:

                      goto LABEL_53;
                    }
                  }

                  ++v35;
                }

                while (v17 != v34);
              }
            }

            else
            {
              v34 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v218 = v28;
              if (v34)
              {
                goto LABEL_28;
              }
            }

            v19 = MEMORY[0x277D84F90];
            a2 = v213;
            v17 = v216;
            v27 = v217;
            v3 = v208;
            v28 = v218;
            v29 = v207;
            if (v218 == v208)
            {
              goto LABEL_9;
            }
          }

          else
          {

            if (v28 == v3)
            {
              goto LABEL_9;
            }
          }
        }
      }

      __break(1u);
LABEL_330:
      __break(1u);
      return result;
    }
  }

  v9 = v212;

  v51 = *(v228 + 64);
  v200 = v228 + 64;
  v52 = 1 << *(v228 + 32);
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  else
  {
    v53 = -1;
  }

  v3 = v53 & v51;
  v199 = (v52 + 63) >> 6;
  v216 = "ound for action outcome ";
  v217 = 0x8000000252E7A3D0;
  v215 = "/Mappers/AceMapper.swift";
  v212 = (v202 + 48);
  v205 = (v202 + 32);
  v208 = (v202 + 8);
  v196 = "taskOutcome(from:)";
  v195 = "ion request id: ";
  v194 = "App/ACE/SAHA+Metrics.swift";
  v198 = v228;

  v54 = 0;
LABEL_63:
  v55 = &off_279711000;
LABEL_64:
  if (v3)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v56 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      goto LABEL_314;
    }

    if (v56 >= v199)
    {
      break;
    }

    v3 = *(v200 + 8 * v56);
    ++v54;
    if (v3)
    {
      v54 = v56;
LABEL_69:
      v201 = v54;
      v57 = __clz(__rbit64(v3)) | (v54 << 6);
      v58 = *(v198 + 56);
      v59 = (*(v198 + 48) + 16 * v57);
      v61 = *v59;
      v60 = v59[1];
      v213 = v61;
      v214 = v60;
      v62 = *(v58 + 8 * v57);
      v227 = v19;
      if (v62 >> 62)
      {
        v63 = sub_252E378C4();
      }

      else
      {
        v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v223 = v62 & 0xC000000000000001;
      v206 = v3;
      v219 = v62;
      v220 = v63;
      if (!v63)
      {
        v222 = v62 & 0xFFFFFFFFFFFFFF8;
        v89 = v19;
        goto LABEL_115;
      }

      v64 = 0;
      v222 = v62 & 0xFFFFFFFFFFFFFF8;
      v218 = (v62 + 32);
      while (2)
      {
        while (2)
        {
          if (v223)
          {
            v65 = MEMORY[0x2530ADF00](v64, v62);
          }

          else
          {
            if (v64 >= *(v222 + 16))
            {
              goto LABEL_311;
            }

            v65 = *&v218[8 * v64];
          }

          v9 = v65;
          v32 = __OFADD__(v64++, 1);
          if (v32)
          {
            goto LABEL_310;
          }

          if (qword_27F53F730 != -1)
          {
            swift_once();
          }

          v66 = qword_27F575C40;
          v67 = [v9 outcome];
          if (!v67)
          {
            v79 = 0;
            if (*(v66 + 16))
            {
              goto LABEL_104;
            }

LABEL_109:
            v63 = v220;
LABEL_110:
            v17 = &v227;
            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
            if (v64 == v63)
            {
              goto LABEL_113;
            }

            continue;
          }

          break;
        }

        v221 = v9;
        v68 = v67;
        v3 = sub_252E36F34();
        v70 = v69;

        if (qword_27F53F6C8 != -1)
        {
          swift_once();
        }

        v9 = 0;
        v71 = off_27F5456C8;
        v72 = off_27F5456C8 + 64;
        v73 = 1 << *(off_27F5456C8 + 32);
        if (v73 < 64)
        {
          v74 = ~(-1 << v73);
        }

        else
        {
          v74 = -1;
        }

        v75 = v74 & *(off_27F5456C8 + 8);
        v76 = (v73 + 63) >> 6;
        while (2)
        {
          if (v75)
          {
            goto LABEL_92;
          }

          while (2)
          {
            v77 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
              goto LABEL_299;
            }

            if (v77 >= v76)
            {
              if (qword_27F53F4B0 != -1)
              {
                swift_once();
              }

              v82 = sub_252E36AD4();
              __swift_project_value_buffer(v82, qword_27F544CB8);
              v225 = 0;
              v226 = 0xE000000000000000;
              sub_252E379F4();

              v225 = 0xD000000000000028;
              v226 = v217;
              MEMORY[0x2530AD570](v3, v70);
              v3 = v226;
              sub_252CC4050(v225, v226, 0xD000000000000078, v216 | 0x8000000000000000, 0xD000000000000012, v215 | 0x8000000000000000, 444);

              v79 = 0;
              goto LABEL_101;
            }

            v75 = *&v72[8 * v77];
            ++v9;
            if (!v75)
            {
              continue;
            }

            break;
          }

          v9 = v77;
LABEL_92:
          v78 = __clz(__rbit64(v75)) | (v9 << 6);
          v79 = *(v71[6] + 8 * v78);
          v80 = (v71[7] + 16 * v78);
          if (*v80 != v3 || v80[1] != v70)
          {
            v75 &= v75 - 1;
            if ((sub_252E37DB4() & 1) == 0)
            {
              continue;
            }
          }

          break;
        }

LABEL_101:

        v55 = &off_279711000;
        v62 = v219;
        v9 = v221;
        if (!*(v66 + 16))
        {
          goto LABEL_109;
        }

LABEL_104:
        sub_252E37EC4();
        v17 = &v225;
        MEMORY[0x2530AE390](v79);
        v83 = sub_252E37F14();
        v84 = v66 + 56;
        v85 = -1 << *(v66 + 32);
        v86 = v83 & ~v85;
        if (((*(v66 + 56 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
        {
          goto LABEL_109;
        }

        v87 = ~v85;
        v88 = *(v66 + 48);
        v63 = v220;
        while (*(v88 + 8 * v86) != v79)
        {
          v86 = (v86 + 1) & v87;
          if (((*(v84 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
          {
            goto LABEL_110;
          }
        }

        if (v64 != v63)
        {
          continue;
        }

        break;
      }

LABEL_113:
      v89 = v227;
      v19 = MEMORY[0x277D84F90];
LABEL_115:
      v17 = 0;
      v206 &= v206 - 1;
      v225 = v19;
      v202 = v62 + 32;
      while (v63 != v17)
      {
        if (v223)
        {
          v90 = MEMORY[0x2530ADF00](v17, v62);
        }

        else
        {
          if (v17 >= *(v222 + 16))
          {
            goto LABEL_306;
          }

          v90 = *(v62 + 8 * v17 + 32);
        }

        v91 = v90;
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          v173 = sub_252E378C4();
          goto LABEL_271;
        }

        v92 = [v90 v55[221]];

        ++v17;
        if (v92)
        {
          MEMORY[0x2530AD700]();
          if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v19 = v225;
          v17 = v9;
        }
      }

      v93 = sub_252DF8A34(v19);

      if (v93 >> 62)
      {
        v193 = sub_252E378C4();
      }

      else
      {
        v193 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v94 = v204;

      v9 = MEMORY[0x277D84F90];
      v227 = MEMORY[0x277D84F90];
      sub_252AEBD5C(v62, &v227);
      v225 = v9;
      v204 = v94;
      if ((v89 & 0x8000000000000000) != 0 || (v89 & 0x4000000000000000) != 0)
      {
        v95 = sub_252E378C4();
      }

      else
      {
        v95 = *(v89 + 2);
      }

      v96 = 0;
      v17 = MEMORY[0x277D84F90];
      while (v95 != v96)
      {
        if ((v89 & 0xC000000000000001) != 0)
        {
          v97 = MEMORY[0x2530ADF00](v96, v89);
        }

        else
        {
          if (v96 >= *(v89 + 2))
          {
            goto LABEL_308;
          }

          v97 = *&v89[8 * v96 + 32];
        }

        v3 = v97;
        v9 = v96 + 1;
        if (__OFADD__(v96, 1))
        {
          goto LABEL_307;
        }

        v98 = [v97 v55[221]];

        ++v96;
        if (v98)
        {
          MEMORY[0x2530AD700]();
          if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v17 = v225;
          v96 = v9;
        }
      }

      v99 = sub_252DF8A34(v17);

      if (v99 >> 62)
      {
        v100 = sub_252E378C4();
      }

      else
      {
        v100 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v101 = v212;

      v102 = [*v203 homeAutomationRequests];
      if (v102)
      {
        v103 = v102;
        sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
        v104 = sub_252E37264();

        if (v104 >> 62)
        {
          v105 = sub_252E378C4();
        }

        else
        {
          v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v17 = v211;
        if (v105)
        {
          v192 = v100;
          v3 = 0;
          v218 = (v104 & 0xC000000000000001);
          v207 = v104 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v218)
            {
              v107 = MEMORY[0x2530ADF00](v3, v104);
              v108 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_315;
              }
            }

            else
            {
              if (v3 >= *(v207 + 16))
              {
                goto LABEL_316;
              }

              v107 = *(v104 + 8 * v3 + 32);
              v108 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_315;
              }
            }

            v221 = v107;
            v109 = [v107 homeAutomationRequestId];
            sub_252E32E14();
            v9 = *v101;
            v110 = v210;
            if ((*v101)(v17, 1, v210) == 1)
            {
              v111 = v209;
              sub_252E32E74();
              if ((v9)(v17, 1, v110) != 1)
              {
                sub_25293847C(v17, &unk_27F541F20, &qword_252E3C180);
              }
            }

            else
            {
              v111 = v209;
              (*v205)(v209, v17, v110);
            }

            v112 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v113 = sub_252E32E44();
            v114 = [v112 initWithNSUUID_];

            (*v208)(v111, v110);
            if (!v109)
            {
              break;
            }

            v101 = v212;
            v106 = v219;
            if (!v114)
            {
              v114 = v109;
LABEL_150:

              goto LABEL_151;
            }

            sub_25293F638(0, &qword_27F543150, 0x277D5AC78);
            v115 = sub_252E37694();

            if (v115)
            {
LABEL_172:

              v118 = v193;
              v17 = v221;
              sub_252C77358(v193);
              v119 = v192;
              sub_252C77A20(v192);
              v214 = v227;
              sub_252C76E8C(v227);
              v55 = &off_279711000;
              if (v119)
              {
                v43 = v119 == v118;
                v19 = MEMORY[0x277D84F90];
                v3 = v206;
                v9 = v220;
                v17 = v221;
                if (v43)
                {
                  v120 = 1;
                }

                else
                {
                  v120 = 3;
                }

                [v221 setHomeAutomationRequestOutcome_];
              }

              else
              {
                [v17 setHomeAutomationRequestOutcome_];
                v19 = MEMORY[0x277D84F90];
                v3 = v206;
                v9 = v220;
              }

              if ([v17 homeAutomationRequestOutcome] == 1)
              {

                goto LABEL_171;
              }

              v224 = v19;
              if (v9)
              {
                v121 = 0;
                while (1)
                {
                  while (1)
                  {
                    if (v223)
                    {
                      v122 = MEMORY[0x2530ADF00](v121, v106);
                    }

                    else
                    {
                      if (v121 >= *(v222 + 16))
                      {
                        goto LABEL_324;
                      }

                      v122 = *(v202 + 8 * v121);
                    }

                    v123 = v122;
                    v32 = __OFADD__(v121++, 1);
                    if (v32)
                    {
                      goto LABEL_323;
                    }

                    if (qword_27F53F730 != -1)
                    {
                      swift_once();
                    }

                    v124 = qword_27F575C40;
                    v125 = [v123 outcome];
                    if (v125)
                    {
                      v218 = v123;
                      v126 = v125;
                      v3 = sub_252E36F34();
                      v128 = v127;

                      if (qword_27F53F6C8 != -1)
                      {
                        swift_once();
                      }

                      v9 = 0;
                      v17 = off_27F5456C8;
                      v129 = off_27F5456C8 + 64;
                      v130 = 1 << *(off_27F5456C8 + 32);
                      if (v130 < 64)
                      {
                        v131 = ~(-1 << v130);
                      }

                      else
                      {
                        v131 = -1;
                      }

                      v132 = v131 & *(off_27F5456C8 + 8);
                      v133 = (v130 + 63) >> 6;
                      do
                      {
                        if (!v132)
                        {
                          while (1)
                          {
                            v134 = v9 + 1;
                            if (__OFADD__(v9, 1))
                            {
                              goto LABEL_309;
                            }

                            if (v134 >= v133)
                            {
                              if (qword_27F53F4B0 != -1)
                              {
                                swift_once();
                              }

                              v139 = sub_252E36AD4();
                              v140 = __swift_project_value_buffer(v139, qword_27F544CB8);
                              v225 = 0;
                              v226 = 0xE000000000000000;
                              sub_252E379F4();

                              v225 = 0xD000000000000028;
                              v226 = v217;
                              MEMORY[0x2530AD570](v3, v128);
                              v17 = v140;
                              sub_252CC4050(v225, v226, 0xD000000000000078, v216 | 0x8000000000000000, 0xD000000000000012, v215 | 0x8000000000000000, 444);

                              v136 = 0;
                              goto LABEL_215;
                            }

                            v132 = *&v129[8 * v134];
                            ++v9;
                            if (v132)
                            {
                              v9 = v134;
                              break;
                            }
                          }
                        }

                        v135 = __clz(__rbit64(v132)) | (v9 << 6);
                        v136 = *(*(v17 + 48) + 8 * v135);
                        v137 = (*(v17 + 56) + 16 * v135);
                        if (*v137 == v3 && v137[1] == v128)
                        {
                          break;
                        }

                        v132 &= v132 - 1;
                      }

                      while ((sub_252E37DB4() & 1) == 0);
LABEL_215:

                      v3 = v206;
                      v106 = v219;
                      v9 = v220;
                      v123 = v218;
                      if (*(v124 + 16))
                      {
                        break;
                      }

                      goto LABEL_187;
                    }

                    v136 = 0;
                    if (*(v124 + 16))
                    {
                      break;
                    }

LABEL_187:

                    if (v121 == v9)
                    {
                      goto LABEL_226;
                    }
                  }

                  sub_252E37EC4();
                  v17 = &v225;
                  MEMORY[0x2530AE390](v136);
                  v141 = sub_252E37F14();
                  v142 = -1 << *(v124 + 32);
                  v143 = v141 & ~v142;
                  if (((*(v124 + 56 + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v143) & 1) == 0)
                  {
                    goto LABEL_187;
                  }

                  v144 = ~v142;
                  while (*(*(v124 + 48) + 8 * v143) != v136)
                  {
                    v143 = (v143 + 1) & v144;
                    if (((*(v124 + 56 + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v143) & 1) == 0)
                    {
                      goto LABEL_187;
                    }
                  }

                  v17 = &v224;
                  sub_252E37A94();
                  sub_252E37AC4();
                  sub_252E37AD4();
                  sub_252E37AA4();
                  if (v121 == v9)
                  {
LABEL_226:
                    v145 = v224;
                    v19 = MEMORY[0x277D84F90];
                    goto LABEL_228;
                  }
                }
              }

              v145 = v19;
LABEL_228:

              if (v145 < 0 || (v145 & 0x4000000000000000) != 0)
              {
                v146 = sub_252E378C4();
                if (v146)
                {
LABEL_231:
                  v147 = 0;
                  v222 = v145 + 32;
                  v223 = v145 & 0xC000000000000001;
                  v218 = v19;
                  v219 = v146;
                  v220 = v145;
                  while (1)
                  {
                    if (v223)
                    {
                      v150 = MEMORY[0x2530ADF00](v147, v145);
                    }

                    else
                    {
                      if (v147 >= *(v145 + 16))
                      {
                        goto LABEL_326;
                      }

                      v150 = *(v222 + 8 * v147);
                    }

                    v151 = v150;
                    v32 = __OFADD__(v147++, 1);
                    if (v32)
                    {
                      goto LABEL_325;
                    }

                    v152 = [v150 outcome];
                    if (v152)
                    {
                      v17 = v152;
                      v3 = sub_252E36F34();
                      v154 = v153;

                      if (qword_27F53F6C8 != -1)
                      {
                        swift_once();
                      }

                      v155 = 0;
                      v9 = off_27F5456C8;
                      v156 = off_27F5456C8 + 64;
                      v157 = 1 << *(off_27F5456C8 + 32);
                      if (v157 < 64)
                      {
                        v158 = ~(-1 << v157);
                      }

                      else
                      {
                        v158 = -1;
                      }

                      v159 = v158 & *(off_27F5456C8 + 8);
                      v160 = (v157 + 63) >> 6;
                      do
                      {
                        if (!v159)
                        {
                          while (1)
                          {
                            v161 = v155 + 1;
                            if (__OFADD__(v155, 1))
                            {
                              goto LABEL_312;
                            }

                            if (v161 >= v160)
                            {
                              if (qword_27F53F4B0 != -1)
                              {
                                swift_once();
                              }

                              v148 = sub_252E36AD4();
                              v149 = __swift_project_value_buffer(v148, qword_27F544CB8);
                              v225 = 0;
                              v226 = 0xE000000000000000;
                              sub_252E379F4();

                              v9 = 0xD000000000000012;
                              v225 = 0xD000000000000028;
                              v226 = v217;
                              MEMORY[0x2530AD570](v3, v154);
                              v17 = v149;
                              sub_252CC4050(v225, v226, 0xD000000000000078, v216 | 0x8000000000000000, 0xD000000000000012, v215 | 0x8000000000000000, 444);

                              v3 = v206;
                              v146 = v219;
                              v145 = v220;
                              goto LABEL_235;
                            }

                            v159 = *&v156[8 * v161];
                            ++v155;
                            if (v159)
                            {
                              v155 = v161;
                              break;
                            }
                          }
                        }

                        v162 = __clz(__rbit64(v159)) | (v155 << 6);
                        v17 = *(*(v9 + 48) + 8 * v162);
                        v163 = (*(v9 + 56) + 16 * v162);
                        if (*v163 == v3 && v163[1] == v154)
                        {
                          break;
                        }

                        v159 &= v159 - 1;
                      }

                      while ((sub_252E37DB4() & 1) == 0);

                      v17 = sub_252B9ACF0(v17);
                      v166 = v165;

                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v3 = v206;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v218 = sub_2529F7A80(0, *(v218 + 2) + 1, 1, v218);
                      }

                      v146 = v219;
                      v145 = v220;
                      v9 = *(v218 + 2);
                      v168 = *(v218 + 3);
                      if (v9 >= v168 >> 1)
                      {
                        v218 = sub_2529F7A80((v168 > 1), v9 + 1, 1, v218);
                      }

                      v169 = v218;
                      *(v218 + 2) = v9 + 1;
                      v170 = &v169[16 * v9];
                      *(v170 + 4) = v17;
                      *(v170 + 5) = v166;
                      if (v147 != v146)
                      {
                        continue;
                      }

                      goto LABEL_266;
                    }

LABEL_235:

                    if (v147 == v146)
                    {
                      goto LABEL_266;
                    }
                  }
                }
              }

              else
              {
                v146 = *(v145 + 16);
                if (v146)
                {
                  goto LABEL_231;
                }
              }

              v218 = v19;
LABEL_266:

              sub_252AD4414(v218);

              v17 = sub_252E37254();
              v19 = MEMORY[0x277D84F90];

              v9 = v221;
              [v221 setHomeAutomationRequestErrorReasons_];

              v54 = v201;
              goto LABEL_63;
            }

LABEL_151:

            ++v3;
            v17 = v211;
            v55 = &off_279711000;
            if (v108 == v105)
            {
              goto LABEL_167;
            }
          }

          v101 = v212;
          v106 = v219;
          if (!v114)
          {
            goto LABEL_172;
          }

          goto LABEL_150;
        }

LABEL_167:
      }

      v3 = v206;
      if (qword_27F53F530 != -1)
      {
        swift_once();
      }

      v116 = sub_252E36AD4();
      v117 = __swift_project_value_buffer(v116, qword_27F544E38);
      v225 = 0;
      v226 = 0xE000000000000000;
      sub_252E379F4();
      v9 = 0xD000000000000012;
      MEMORY[0x2530AD570](0xD000000000000040, v196 | 0x8000000000000000);
      MEMORY[0x2530AD570](v213, v214);

      v17 = v117;
      sub_252CC4050(v225, v226, 0xD00000000000006ALL, v195 | 0x8000000000000000, 0xD000000000000027, v194 | 0x8000000000000000, 156);

      v19 = MEMORY[0x277D84F90];
LABEL_171:
      v54 = v201;
      goto LABEL_64;
    }
  }

LABEL_268:
  v9 = *v203;
  v171 = [*v203 homeAutomationRequests];
  if (v171)
  {
    v172 = v171;
    sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
    v17 = sub_252E37264();

    v3 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 >> 62)
    {
      goto LABEL_327;
    }

    v173 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_271:
    v174 = 0;
    while (v173 != v174)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v175 = MEMORY[0x2530ADF00](v174, v17);
      }

      else
      {
        if (v174 >= *(v3 + 16))
        {
          goto LABEL_318;
        }

        v175 = *(v17 + 8 * v174 + 32);
      }

      v176 = v175;
      if (__OFADD__(v174, 1))
      {
        goto LABEL_317;
      }

      v177 = [v175 homeAutomationRequestOutcome];

      ++v174;
      if (v177 == 2)
      {

        v183 = 2;
        goto LABEL_301;
      }
    }
  }

  v178 = [v197 commandOutcome];
  if (v178)
  {
    v179 = v178;
    v180 = sub_252E36F34();
    v182 = v181;
  }

  else
  {
    v180 = 0;
    v182 = 0;
  }

  v183 = sub_252D143E4(v180, v182);

  if ((v183 & 0x100000000) != 0)
  {
    v185 = [v9 homeAutomationRequests];
    if (v185)
    {
      v186 = v185;
      sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
      v17 = sub_252E37264();

      v3 = v17 & 0xFFFFFFFFFFFFFF8;
      if (v17 >> 62)
      {
        v187 = sub_252E378C4();
      }

      else
      {
        v187 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v188 = 0;
      while (v187 != v188)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v189 = MEMORY[0x2530ADF00](v188, v17);
        }

        else
        {
          if (v188 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_322;
          }

          v189 = *(v17 + 8 * v188 + 32);
        }

        v190 = v189;
        if (__OFADD__(v188, 1))
        {
          goto LABEL_321;
        }

        v191 = [v189 homeAutomationRequestOutcome];

        ++v188;
        if (v191 == 3)
        {

          v183 = 3;
          goto LABEL_301;
        }
      }

LABEL_299:
    }

    v183 = 1;
LABEL_301:
    v184 = &selRef_setCommandOutcome_;
  }

  else
  {
    [v9 setCommandOutcome_];
    v184 = &selRef_setCommandErrorReason_;
  }

  return [v9 *v184];
}

void (*sub_252AEE95C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_252AEF660(v6, a2, a3);
  return sub_252AA9630;
}

void (*sub_252AEE9E4(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_252AEF70C(v6, a2, a3);
  return sub_25292DC78;
}

void sub_252AEEA6C(id *a1, char **a2)
{
  v5 = sub_252E32CB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v68 - v13;
  v15 = [*a1 entity];
  if (!v15)
  {
    return;
  }

  v73 = v6;
  v74 = v15;
  v16 = [v15 entityType];
  if (v16)
  {
    v72 = v2;
    v17 = v16;
    v18 = sub_252E36F34();
    v20 = v19;

    v21 = sub_252E36F34();
    if (v20)
    {
      if (v18 == v21 && v20 == v22)
      {

        v25 = v73;
        v26 = v74;
      }

      else
      {
        v24 = sub_252E37DB4();

        v25 = v73;
        v26 = v74;
        if ((v24 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      v27 = [v26 identifier];
      if (v27)
      {
        v28 = v27;
        sub_252E32C94();

        (*(v25 + 56))(v12, 0, 1, v5);
      }

      else
      {
        (*(v25 + 56))(v12, 1, 1, v5);
      }

      sub_25293EED0(v12, v14);
      if ((*(v25 + 48))(v14, 1, v5))
      {
        sub_25293847C(v14, &qword_27F540370, &qword_252E3C450);
        goto LABEL_42;
      }

      (*(v25 + 16))(v8, v14, v5);
      sub_25293847C(v14, &qword_27F540370, &qword_252E3C450);
      v29 = sub_252E32C64();
      v31 = v30;
      (*(v25 + 8))(v8, v5);
      v32 = type metadata accessor for HomeStore(0);
      v33 = static HomeStore.shared.getter(v32);
      v34 = sub_2529F53FC(v29, v31);
      LOBYTE(v29) = v35;

      if (v29)
      {
        sub_252956C8C(v34, 1);
        goto LABEL_42;
      }

      if (!v34)
      {
        goto LABEL_42;
      }

      v36 = v34;
      v37 = sub_252B2F470();
      v69 = v34;
      sub_252956C8C(v34, 0);
      if (v37 >> 62)
      {
        v38 = sub_252E378C4();
        if (v38)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v38)
        {
LABEL_23:
          v39 = 0;
          v73 = v37 & 0xC000000000000001;
          v26 = MEMORY[0x277D84F90];
          v70 = a2;
          v71 = v37 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v73)
            {
              v5 = MEMORY[0x2530ADF00](v39, v37);
              v40 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                goto LABEL_52;
              }
            }

            else
            {
              if (v39 >= *(v71 + 16))
              {
                goto LABEL_53;
              }

              v5 = *(v37 + 8 * v39 + 32);

              v40 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
LABEL_52:
                __break(1u);
LABEL_53:
                __break(1u);
LABEL_54:
                v38 = sub_2529F7A80(0, *(v38 + 16) + 1, 1, v38);
                *a2 = v38;
LABEL_48:
                v65 = *(v38 + 16);
                v64 = *(v38 + 24);
                if (v65 >= v64 >> 1)
                {
                  *a2 = sub_2529F7A80((v64 > 1), v65 + 1, 1, v38);
                }

                v66 = *a2;
                *(v66 + 2) = v65 + 1;
                v67 = &v66[16 * v65];
                *(v67 + 4) = v36;
                *(v67 + 5) = v5;
                return;
              }
            }

            v41 = v37;
            v42 = [*(v5 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
            v43 = sub_252E36F34();
            v45 = v44;

            if (qword_27F53F8B8 != -1)
            {
              swift_once();
            }

            v46 = off_27F546230;
            if (*(off_27F546230 + 2) && (v47 = sub_252A44A10(v43, v45), (v48 & 1) != 0))
            {
              v49 = *(v46[7] + 8 * v47);
            }

            else
            {
              v49 = 0;
            }

            v36 = HomeDeviceType.description.getter(v49);
            v51 = v50;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_2529F7A80(0, *(v26 + 2) + 1, 1, v26);
            }

            v5 = *(v26 + 2);
            v52 = *(v26 + 3);
            if (v5 >= v52 >> 1)
            {
              v26 = sub_2529F7A80((v52 > 1), v5 + 1, 1, v26);
            }

            *(v26 + 2) = v5 + 1;
            v53 = &v26[16 * v5];
            *(v53 + 4) = v36;
            *(v53 + 5) = v51;
            ++v39;
            v37 = v41;
            a2 = v70;
            if (v40 == v38)
            {
              goto LABEL_57;
            }
          }
        }
      }

      v26 = MEMORY[0x277D84F90];
LABEL_57:

      sub_25297A744(v26);

      sub_252956C8C(v69, 0);
      return;
    }
  }

  else
  {
    sub_252E36F34();
  }

  v26 = v74;
LABEL_42:
  v54 = [v26 serviceType];
  if (v54)
  {
    v55 = v54;
    v56 = sub_252E36F34();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  v59 = sub_252D141D4(v56, v58);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
    v36 = HomeDeviceType.description.getter(v59);
    v5 = v62;
    v38 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }
}

uint64_t sub_252AEF114(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_252E37844() + 1) & ~v5;
    do
    {
      sub_252E37EC4();

      sub_252E37044();
      v9 = sub_252E37F14();

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

uint64_t sub_252AEF2C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_252E37844() + 1) & ~v5;
    do
    {
      sub_252E37EC4();

      sub_252E37044();
      v10 = sub_252E37F14();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_252AEF474(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_252E37844() + 1) & ~v5;
    while (1)
    {
      sub_252E37EC4();

      sub_252E37044();
      v9 = sub_252E37F14();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_252E35EF4() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t (*sub_252AEF660(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_252AEFBA0(v7);
  v7[9] = sub_252AEF81C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_252AEFEAC;
}

uint64_t (*sub_252AEF70C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_252AEFBC8(v7);
  v7[9] = sub_252AEF98C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_252AEF7B8;
}

void sub_252AEF7BC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_252AEF81C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_252A44A10(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_252E032D8();
      v13 = v21;
      goto LABEL_11;
    }

    sub_252DFE838(v18, a4 & 1);
    v13 = sub_252A44A10(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_252E37E24();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_252AEF974;
}

void (*sub_252AEF98C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_252A44A10(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_252E03300();
      v13 = v21;
      goto LABEL_11;
    }

    sub_252DFEE00(v18, a4 & 1);
    v13 = sub_252A44A10(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_252E37E24();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_252AEF974;
}

void sub_252AEFAE4(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = **a1;
  v5 = *(*a1 + 40);
  if (v4)
  {
    v6 = v3[4];
    v7 = *v3[3];
    if (v5)
    {
      *(*(v7 + 56) + 8 * v6) = v4;
    }

    else
    {
      a3(v6, v3[1], v3[2], v4, v7);
    }
  }

  else if ((*a1)[5])
  {
    v8 = v3[4];
    v9 = *v3[3];
    sub_252A01B34(*(v9 + 48) + 16 * v8);
    sub_252AEF114(v8, v9);
  }

  free(v3);
}

uint64_t (*sub_252AEFBA0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_252AEFEA8;
}

uint64_t (*sub_252AEFBC8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_252AEFBF0;
}

void *sub_252AEFBFC(unint64_t a1)
{
  v1 = a1;
  v31 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_27:
    v2 = sub_252E378C4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v29 = v1 & 0xFFFFFFFFFFFFFF8;
      v30 = v1 & 0xC000000000000001;
      v4 = MEMORY[0x277D84F98];
      v28 = v1;
      while (1)
      {
        if (v30)
        {
          v7 = MEMORY[0x2530ADF00](v3, v1);
        }

        else
        {
          if (v3 >= *(v29 + 16))
          {
            goto LABEL_24;
          }

          v7 = *(v1 + 8 * v3 + 32);
        }

        v8 = v7;
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v10 = [v7 requestActionId];
        if (v10)
        {
          v11 = v10;
          v12 = sub_252E36F34();
          v1 = v13;
        }

        else
        {
          v12 = 0;
          v1 = 0;
        }

        v15 = sub_252A44BF0(v12, v1);
        v16 = v4[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_25;
        }

        v19 = v14;
        if (v4[3] < v18)
        {
          sub_252DFE84C(v18, 1);
          v4 = v31;
          v20 = sub_252A44BF0(v12, v1);
          if ((v19 & 1) != (v21 & 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
            result = sub_252E37E24();
            __break(1u);
            return result;
          }

          v15 = v20;
        }

        if (v19)
        {

          v6 = (v4[7] + 8 * v15);
          MEMORY[0x2530AD700](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_252E3C130;
          *(v22 + 32) = v8;
          v4[(v15 >> 6) + 8] |= 1 << v15;
          v23 = (v4[6] + 16 * v15);
          *v23 = v12;
          v23[1] = v1;
          *(v4[7] + 8 * v15) = v22;
          v24 = v4[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_26;
          }

          v4[2] = v26;
        }

        v1 = v28;
        ++v3;
        if (v9 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_252AEFEB0()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v10, v0, sizeof(v10));
  if (qword_27F53F5A8 != -1)
  {
    swift_once();
  }

  v5 = qword_27F544F30;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  type metadata accessor for SELFPerformanceLogger();
  swift_initStackObject();
  v6 = sub_252D2D190(202, 0x6E776F6E6B6E75, 0xE700000000000000);
  sub_252AF00C0(v10, v9);
  if (v6)
  {

    sub_252D2D83C(0, 0);
  }

  v7 = sub_252E375C4();
  sub_252E36A74(v7, &dword_252917000, v5, "NLToControlHomeMapping", 22, 2, v4, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);

  (*(v2 + 8))(v4, v1);
  return v9[0];
}

void sub_252AF00C0(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v4 = a1[62];
  if (v4 && (type metadata accessor for ControlHomeIntent(), (a1 = swift_dynamicCastClass()) != 0))
  {
    v5 = a1;
    v6 = qword_27F53F4B0;
    v7 = v4;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544CB8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E7A700);
    v9 = v7;
    v10 = [v5 description];
    v11 = sub_252E36F34();
    v13 = v12;

    MEMORY[0x2530AD570](v11, v13);
  }

  else
  {
    sub_252B680FC(a1);
    memcpy(__dst, v2, sizeof(__dst));
    v14 = sub_252B64768(__dst);

    if (!v14)
    {
      memcpy(__dst, v2, sizeof(__dst));
      v20 = sub_252BADB6C();
      memcpy(__dst, v2, sizeof(__dst));
      v21 = sub_252BAC7E4();
      memcpy(__dst, v2, sizeof(__dst));
      sub_252BB024C(v21, v20);

      v22 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
      v23 = v20;
      v24 = [v22 init];
      [v24 setUserTask_];
      type metadata accessor for HomeFilter();
      v25 = sub_252E37254();

      [v24 setFilters_];

      [v24 setTime_];
      v27 = sub_252B680FC(v26);
      swift_beginAccess();
      v5 = v24;
      sub_2529353AC(v2, __dst);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = *(v27 + 64);
      *(v27 + 64) = 0x8000000000000000;
      sub_2529FB668(v5, v2, isUniquelyReferenced_nonNull_native);
      sub_252935408(v2);
      *(v27 + 64) = __dst[0];
      swift_endAccess();

      goto LABEL_12;
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544CB8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000049, 0x8000000252E7A620);
    v5 = v14;
    v16 = [v5 description];
    v17 = sub_252E36F34();
    v19 = v18;

    MEMORY[0x2530AD570](v17, v19);
  }

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000087, 0x8000000252E7A670);

LABEL_12:
  *a2 = v5;
}

uint64_t sub_252AF04C0()
{
  v1 = v0;
  v2 = [v0 deviceTypes];
  if (v2)
  {
    v3 = v2;
    v4 = sub_252E37264();

    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (v4 + 32);
      v7 = MEMORY[0x277D84F90];
      do
      {
        v8 = *v6++;
        v9 = sub_252E25FC4(v8);
        if ((v10 & 1) == 0)
        {
          v11 = v9;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_2529F7B8C(0, *(v7 + 2) + 1, 1, v7);
          }

          v13 = *(v7 + 2);
          v12 = *(v7 + 3);
          if (v13 >= v12 >> 1)
          {
            v7 = sub_2529F7B8C((v12 > 1), v13 + 1, 1, v7);
          }

          *(v7 + 2) = v13 + 1;
          *&v7[8 * v13 + 32] = v11;
        }

        --v5;
      }

      while (v5);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v7 = 0;
  }

  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v14 = HomeFilter.Builder.init()();
  v16 = v15;
  v17 = [v1 homeEntityName];
  if (v17)
  {
    v18 = v17;
    v19 = sub_252E36F34();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = (*(*v16 + 576))(v19, v21);

  if (v7)
  {
    if (*(v7 + 2))
    {
      v23 = *(v7 + 4);
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = (*(*v22 + 624))(v23);

  v25 = (*(*v24 + 592))([v1 type]);

  v26 = [v1 room];
  if (v26)
  {
    v27 = v26;
    v28 = sub_252E36F34();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = (*(*v25 + 680))(v28, v30);

  v32 = [v1 home];
  if (v32)
  {
    v33 = v32;
    v34 = sub_252E36F34();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = (*(*v31 + 632))(v34, v36);

  v38 = [v1 group];
  if (v38)
  {
    v39 = v38;
    v40 = sub_252E36F34();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v43 = (*(*v37 + 664))(v40, v42);

  v44 = [v1 zones];
  if (!v44)
  {
    goto LABEL_36;
  }

  v45 = v44;
  v46 = sub_252E37264();

  if (!v46[2])
  {

LABEL_36:
    v48 = 0;
    v47 = 0;
    goto LABEL_37;
  }

  v48 = v46[4];
  v47 = v46[5];

LABEL_37:
  v49 = (*(*v43 + 648))(v48, v47);

  v51 = (*(*v49 + 760))(v50);

  return v51;
}

uint64_t sub_252AF09DC(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252AF0B68(a1);
}

uint64_t sub_252AF0A84(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 144);
  v3 = *(v2 + 16);
  while (1)
  {
    v5 = v1;
    if (v3 == v1)
    {
      return v3 != v5;
    }

    if (v1 >= *(v2 + 16))
    {
      break;
    }

    if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v6 == 0xE800000000000000)
    {

      return v3 != v5;
    }

    ++v1;
    v4 = sub_252E37DB4();

    if (v4)
    {
      return v3 != v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252AF0B68(void *__src)
{
  *(v1 + 1024) = __src;
  memcpy((v1 + 16), __src, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252AF0BDC, 0, 0);
}

uint64_t sub_252AF0BDC()
{
  v29 = v1;
  v2 = *(v1 + 160);
  memcpy(__dst, *(v1 + 1024), sizeof(__dst));
  v3 = *(v2 + 2);
  sub_2529353AC(v1 + 16, v1 + 520);
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if (v4 >= *(v2 + 2))
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v28 = v2[v4 + 32];
      v5 = AccessoryTypeSemantic.rawValue.getter();
      v0 = v6;
      if (v5 == 0x706F4D746F626F72 && v6 == 0xE800000000000000)
      {
        break;
      }

      v7 = sub_252E37DB4();

      if (v7)
      {
        goto LABEL_10;
      }

      if (v3 == ++v4)
      {
        goto LABEL_8;
      }
    }

LABEL_10:
    v9 = *(v2 + 2);
    if (v9 - 1 == v4)
    {
      v8 = v4 + 1;
      goto LABEL_12;
    }

    v19 = v4 + 33;
    while (1)
    {
      v22 = v19 - 32;
      if (v19 - 32 >= v9)
      {
        break;
      }

      v28 = v2[v19];
      v0 = &v28;
      if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v23 == 0xE800000000000000)
      {
      }

      else
      {
        v0 = v23;
        v24 = sub_252E37DB4();

        if ((v24 & 1) == 0)
        {
          if (v22 != v4)
          {
            if (v4 < 0)
            {
              goto LABEL_50;
            }

            v25 = *(v2 + 2);
            if (v4 >= v25)
            {
              goto LABEL_51;
            }

            if (v22 >= v25)
            {
              goto LABEL_52;
            }

            v0 = v2[v4 + 32];
            v26 = v2[v19];
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_252D57AD4(v2);
              v2 = result;
            }

            v2[v4 + 32] = v26;
            v2[v19] = v0;
          }

          ++v4;
        }
      }

      v9 = *(v2 + 2);
      v20 = v19 + 1;
      v21 = v19 - 31;
      ++v19;
      if (v21 == v9)
      {
        v8 = v20 - 32;
        if (v20 - 32 < v4)
        {
          __break(1u);
          goto LABEL_48;
        }

        if (v4 < 0)
        {
          __break(1u);
          return result;
        }

        goto LABEL_12;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
LABEL_8:
    v8 = *(v2 + 2);
    v4 = v8;
LABEL_12:
    v0 = &__dst[18];
    if (!__OFADD__(v8, v4 - v8))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[18] = v2;
      if (!isUniquelyReferenced_nonNull_native || v4 > *(v2 + 3) >> 1)
      {
        if (v8 <= v4)
        {
          v11 = v4;
        }

        else
        {
          v11 = v8;
        }

        v2 = sub_2529F80DC(isUniquelyReferenced_nonNull_native, v11, 1, v2);
        __dst[18] = v2;
      }

      sub_252B7DA90();
      __dst[18] = v2;
      if (!sub_2529A78C8(50, v2))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2529F80DC(0, *(v2 + 2) + 1, 1, v2);
        }

        v13 = *(v2 + 2);
        v12 = *(v2 + 3);
        if (v13 >= v12 >> 1)
        {
          v2 = sub_2529F80DC((v12 > 1), v13 + 1, 1, v2);
        }

        *(v2 + 2) = v13 + 1;
        v2[v13 + 32] = 50;
        __dst[18] = v2;
      }

      v0 = *(v1 + 208);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_26;
      }

      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_54:
  v0 = sub_2529F82C4(0, *(v0 + 2) + 1, 1, v0);
LABEL_26:
  v15 = *(v0 + 2);
  v14 = *(v0 + 3);
  if (v15 >= v14 >> 1)
  {
    v0 = sub_2529F82C4((v14 > 1), v15 + 1, 1, v0);
  }

  *(v0 + 2) = v15 + 1;
  v0[v15 + 32] = 58;
  __dst[24] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_252E3C290;
  memcpy((v16 + 32), __dst, 0x1F8uLL);
  v17 = *(v1 + 8);

  return v17(v16);
}

uint64_t sub_252AF0FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[279] = v3;
  v4[278] = a3;
  v4[277] = a2;
  v4[276] = a1;
  sub_252E33944();
  v4[280] = swift_task_alloc();
  v5 = sub_252E34014();
  v4[281] = v5;
  v4[282] = *(v5 - 8);
  v4[283] = swift_task_alloc();
  v4[284] = swift_task_alloc();
  v6 = sub_252E32A64();
  v4[285] = v6;
  v4[286] = *(v6 - 8);
  v4[287] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4[288] = swift_task_alloc();
  v7 = sub_252E36324();
  v4[289] = v7;
  v4[290] = *(v7 - 8);
  v4[291] = swift_task_alloc();
  v4[292] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AF11C8, 0, 0);
}

uint64_t sub_252AF11C8()
{
  v1 = v0[278];
  if (!v1 || (v2 = [v1 entityResponses]) == 0)
  {
    sub_2529318DC();
    swift_allocError();
    *v18 = 6;
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }

  v3 = v2;
  type metadata accessor for HomeEntityResponse();
  v4 = sub_252E37264();

  v82 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_112;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v6 = MEMORY[0x277D84F90];
    v81 = v0;
    if (i)
    {
      v7 = 0;
      v77 = v4 & 0xFFFFFFFFFFFFFF8;
      v79 = v4 & 0xC000000000000001;
      v71 = v4;
      v73 = i;
      v75 = v4 + 32;
      v4 = &off_279711000;
      while (1)
      {
        if (v79)
        {
          v8 = MEMORY[0x2530ADF00](v7, v71);
        }

        else
        {
          if (v7 >= *(v77 + 16))
          {
            goto LABEL_111;
          }

          v8 = *(v75 + 8 * v7);
        }

        v0 = v8;
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_110;
        }

        v10 = [v8 taskResponses];
        if (v10)
        {
          v11 = v10;
          type metadata accessor for HomeUserTaskResponse();
          v12 = sub_252E37264();

          if (v12 >> 62)
          {
            v13 = sub_252E378C4();
          }

          else
          {
            v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v14 = 0;
          while (1)
          {
            if (v13 == v14)
            {

              i = v73;
              goto LABEL_8;
            }

            if ((v12 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x2530ADF00](v14, v12);
            }

            else
            {
              if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_103;
              }

              v15 = *(v12 + 8 * v14 + 32);
            }

            v16 = v15;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            v17 = [v15 taskOutcome];

            ++v14;
            if (v17 == 1)
            {

              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              i = v73;
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

LABEL_8:
        v0 = v81;
        if (v7 == i)
        {
          v21 = v82;
          v6 = MEMORY[0x277D84F90];
          goto LABEL_33;
        }
      }
    }

    v21 = MEMORY[0x277D84F90];
LABEL_33:

    v82 = v6;
    if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
    {
      v4 = sub_252E378C4();
    }

    else
    {
      v4 = *(v21 + 16);
    }

    v22 = MEMORY[0x277D84F90];
    if (v4)
    {
      v23 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x2530ADF00](v23, v21);
        }

        else
        {
          if (v23 >= *(v21 + 16))
          {
            goto LABEL_105;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v0 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          break;
        }

        sub_252C6FEAC(v81[277], v24);

        MEMORY[0x2530AD700]();
        if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v23;
        v26 = v0 == v4;
        v0 = v81;
        if (v26)
        {
          v27 = v82;
          v22 = MEMORY[0x277D84F90];
          goto LABEL_49;
        }
      }

LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    v27 = MEMORY[0x277D84F90];
LABEL_49:

    v28 = sub_252B6EBB0(v27);
    v4 = v29;

    v82 = v22;
    v30 = v28 & 0xFFFFFFFFFFFFFF8;
    if (v28 >> 62)
    {
      v31 = sub_252E378C4();
    }

    else
    {
      v31 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v78 = v4;
    v80 = v0[279];
    v0[293] = v22;
    v76 = v28;
    if (v31)
    {
      v4 = 0;
      v32 = v28 & 0xC000000000000001;
      v74 = MEMORY[0x277D84F90];
LABEL_53:
      v33 = v4;
      while (1)
      {
        if (v32)
        {
          v34 = MEMORY[0x2530ADF00](v33, v76);
        }

        else
        {
          if (v33 >= *(v30 + 16))
          {
            goto LABEL_107;
          }

          v34 = *(v76 + 8 * v33 + 32);
        }

        v35 = v34;
        v4 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        sub_252DA49A4();
        v37 = v36;
        memcpy(v0 + 2, v80 + 112, 0x1F8uLL);
        if (sub_252956B94(v0 + 2) == 1 || (v38 = v0[27], !*(v38 + 2)))
        {
          v39 = 4;
        }

        else
        {
          v39 = v38[32];
        }

        sub_252C3AC5C(v39);
        v41 = v40;

        v42 = sub_252DA124C(0);
        if (v42)
        {
          MEMORY[0x2530AD700]();
          if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
            v0 = v81;
          }

          sub_252E372D4();
          v74 = v82;
          v0[293] = v82;
          v22 = MEMORY[0x277D84F90];
          if (v4 != v31)
          {
            goto LABEL_53;
          }

          goto LABEL_71;
        }

        ++v33;
        if (v4 == v31)
        {
          v22 = MEMORY[0x277D84F90];
          goto LABEL_71;
        }
      }

LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v74 = v22;
LABEL_71:
    v82 = v22;
    v43 = v78 >> 62 ? sub_252E378C4() : *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v43)
    {
      break;
    }

    v72 = MEMORY[0x277D84F90];
    v44 = 0;
    while (1)
    {
      if ((v78 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x2530ADF00](v44, v78);
      }

      else
      {
        if (v44 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_109;
        }

        v45 = *(v78 + 8 * v44 + 32);
      }

      v46 = v45;
      v4 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      sub_252DA49A4();
      v48 = v47;
      memcpy(v0 + 65, v80 + 112, 0x1F8uLL);
      if (sub_252956B94(v0 + 65) == 1 || (v49 = v0[90], !*(v49 + 2)))
      {
        v50 = 4;
      }

      else
      {
        v50 = v49[32];
      }

      sub_252C3AC5C(v50);
      v52 = v51;

      v53 = sub_252DA124C(0);
      if (v53)
      {
        MEMORY[0x2530AD700]();
        if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
          v0 = v81;
        }

        sub_252E372D4();
        v72 = v82;
        if (v4 == v43)
        {
          goto LABEL_92;
        }

        ++v44;
      }

      else
      {
        ++v44;
        if (v4 == v43)
        {
          goto LABEL_92;
        }
      }
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    ;
  }

  v72 = MEMORY[0x277D84F90];
LABEL_92:
  v54 = v0[278];
  v55 = v0[277];

  v0[294] = type metadata accessor for HomeAutomationEntityResponses.Builder();
  v56 = swift_allocObject();
  v57 = MEMORY[0x277D84F90];
  *(v56 + 16) = MEMORY[0x277D84F90];
  type metadata accessor for HomeAutomationClimateResponses();
  v58 = swift_allocObject();
  v0[295] = v58;
  *(v58 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v58 + 24) = v74;
  *(swift_allocObject() + 16) = v57;
  v59 = swift_allocObject();
  v0[296] = v59;
  *(v59 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v59 + 24) = v72;

  v0[297] = sub_252AF4570(v55, v54);
  v0[298] = v60;
  if (v60)
  {
    v61 = 1;
  }

  else
  {
    v61 = sub_252DC6D48(v0[277], v0[278]);
  }

  *(v0 + 2707) = v61;
  v62 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v61);
  sub_252929E74((v62 + 288), (v0 + 254));

  v63 = v0[257];
  v64 = v0[258];
  __swift_project_boxed_opaque_existential_1(v0 + 254, v63);
  v65 = v64[15](v63, v64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 254);
  if (v65)
  {
    v0[299] = *(v0[279] + 8);

    v66 = swift_task_alloc();
    v0[300] = v66;
    *v66 = v0;
    v66[1] = sub_252AF1C30;

    return sub_252D2B14C(v58, v59);
  }

  else
  {

    v67 = *__swift_project_boxed_opaque_existential_1(v0[279] + 3, *(v0[279] + 6));

    v68 = swift_task_alloc();
    v0[329] = v68;
    *v68 = v0;
    v68[1] = sub_252AF3234;
    v69 = v0[296];
    v70 = v0[295];

    return sub_252C11B48(0, v67, v70, v69);
  }
}

uint64_t sub_252AF1C30(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2408) = a1;
  *(v3 + 2416) = v1;

  if (v1)
  {

    v4 = sub_252AF3CBC;
  }

  else
  {

    v4 = sub_252AF1D98;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252AF1D98()
{
  v9 = v0;
  v1 = v0[296];
  v2 = v0[295];
  v3 = v0[279];
  v4 = v0[277];
  memcpy(v0 + 128, (v3 + 112), 0x1F8uLL);
  memcpy(__dst, (v3 + 112), sizeof(__dst));
  sub_252938414((v0 + 128), (v0 + 191), &qword_27F5404C8, &unk_252E3FD60);
  v5 = v4;
  v0[303] = sub_252953488(v4, __dst, 0);

  v0[304] = *(v3 + 64);

  v6 = swift_task_alloc();
  v0[305] = v6;
  *v6 = v0;
  v6[1] = sub_252AF1EC8;

  return sub_252D2B5A4(v2, v1);
}

uint64_t sub_252AF1EC8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2448) = a1;
  *(v3 + 2456) = v1;

  if (v1)
  {
    v4 = sub_252AF3D94;
  }

  else
  {

    v4 = sub_252AF2000;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252AF2000()
{
  v1 = *(v0 + 2424);
  v2 = *(v0 + 2336);
  v3 = *(v0 + 2320);
  v4 = *(v0 + 2312);
  v13 = *(v0 + 2344);
  v14 = *(v0 + 2304);
  v12 = *(v0 + 2232);
  *(v0 + 2704) = 0;
  sub_252E36374();
  sub_252E37024();

  *(v0 + 2464) = sub_252E36304();
  *(v0 + 2472) = v5;
  v6 = *(v3 + 8);
  *(v0 + 2480) = v6;
  *(v0 + 2488) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  *(v0 + 2705) = 1;
  sub_252E36374();
  sub_252E37024();

  *(v0 + 2496) = sub_252E36304();
  *(v0 + 2504) = v7;
  v6(v2, v4);
  *(swift_allocObject() + 16) = MEMORY[0x277D84F90];
  type metadata accessor for HomeAutomationEntityResponses();
  v8 = swift_allocObject();
  *(v0 + 2512) = v8;
  *(v8 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v8 + 24) = v13;
  *(v0 + 2520) = *(v12 + 64);
  (*(v3 + 56))(v14, 1, 1, v4);

  v9 = swift_task_alloc();
  *(v0 + 2528) = v9;
  *v9 = v0;
  v9[1] = sub_252AF2238;
  v10 = *(v0 + 2304);

  return sub_252D2715C(v8, v1, v10);
}

uint64_t sub_252AF2238(uint64_t a1)
{
  v3 = *v2;
  v3[317] = a1;
  v3[318] = v1;

  sub_25293847C(v3[288], &qword_27F540298, &unk_252E3C270);

  if (v1)
  {

    v4 = sub_252AF3EAC;
  }

  else
  {
    v4 = sub_252AF2424;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252AF2424()
{
  v1 = *(v0 + 2480);
  v2 = *(v0 + 2328);
  v3 = *(v0 + 2312);
  *(v0 + 2706) = 0;
  sub_252E36374();
  sub_252E37024();

  v4 = sub_252E36304();
  v6 = v5;
  v1(v2, v3);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    sub_252E37174();
    v8 = sub_252E36FC4();
    v10 = v9;

    v48 = sub_252AD52A0(0xFuLL, 15, v8, v10, v4, v6);
    v12 = v11;

    v6 = v12;
  }

  else
  {
    v48 = v4;
  }

  *(v0 + 2552) = v6;
  v13 = *(v0 + 2504);
  v14 = *(v0 + 2496);
  v15 = *(v0 + 2296);
  v16 = *(v0 + 2288);
  v17 = *(v0 + 2280);
  v49 = sub_252AF5EB8();
  *(v0 + 2152) = v14;
  *(v0 + 2160) = v13;
  sub_252E32A44();
  sub_252947DBC();
  v18 = sub_252E37784();
  v19 = *(v16 + 8);
  v19(v15, v17);
  *(v0 + 2192) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529508A0();
  v20 = sub_252E36EA4();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    goto LABEL_16;
  }

  v24 = *(v0 + 2472);
  v25 = *(v0 + 2296);
  v26 = *(v0 + 2280);
  *(v0 + 2168) = *(v0 + 2464);
  *(v0 + 2176) = v24;
  sub_252E32A44();
  v27 = sub_252E37784();
  v19(v25, v26);
  *(v0 + 2200) = v27;
  v28 = sub_252E36EA4();
  v30 = v29;

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v31 && v49 != 2)
  {
    v32 = *(v0 + 2504);
    v33 = *(v0 + 2496);
    v47 = *(v0 + 2464);
    v34 = *(v0 + 2408);
    v35 = *(v0 + 2224);
    v36 = *(v0 + 2216);
    v37 = swift_task_alloc();
    *(v0 + 2560) = v37;
    *(v37 + 16) = v48;
    *(v37 + 24) = v6;
    *(v37 + 32) = v47;
    *(v37 + 48) = v33;
    *(v37 + 56) = v32;
    *(v37 + 64) = v49 & 1;
    *(v37 + 72) = v36;
    sub_252E33924();
    sub_252E33F54();
    v38 = v34;
    v39 = v35;
    v40 = swift_task_alloc();
    *(v0 + 2568) = v40;
    *v40 = v0;
    v40[1] = sub_252AF28D4;

    return sub_252DC810C(v39);
  }

  else
  {
LABEL_16:
    v42 = *(v0 + 2408);

    v43 = *__swift_project_boxed_opaque_existential_1((*(v0 + 2232) + 24), *(*(v0 + 2232) + 48));

    v44 = swift_task_alloc();
    *(v0 + 2632) = v44;
    *v44 = v0;
    v44[1] = sub_252AF3234;
    v45 = *(v0 + 2368);
    v46 = *(v0 + 2360);

    return sub_252C11B48(0, v43, v46, v45);
  }
}

uint64_t sub_252AF28D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2576) = a1;
  *(v3 + 2584) = v1;

  if (v1)
  {

    v4 = sub_252AF30C4;
  }

  else
  {
    v4 = sub_252AF2F2C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252AF29F4()
{
  v2 = *v1;
  *(*v1 + 2624) = v0;

  if (v0)
  {

    v3 = sub_252AF2DBC;
  }

  else
  {
    v4 = *(v2 + 2592);

    v3 = sub_252AF2B8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252AF2B8C()
{
  v1 = v0[279];
  v2 = v0[277];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[324];
  v14 = v0[301];
  v13 = v0[284];
  v9 = v0[282];
  v10 = v0[281];
  (*(v4 + 112))(v7, v0 + 264, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 264);
  (*(v9 + 8))(v13, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_252AF2DBC()
{
  v1 = v0[324];
  v2 = v0[284];
  v3 = v0[282];
  v4 = v0[281];

  (*(v3 + 8))(v2, v4);
  v5 = v0[301];

  v6 = v0[1];

  return v6();
}

uint64_t sub_252AF2F2C()
{
  v1 = *(v0 + 2576);
  v2 = *(v0 + 2408);
  if (v1)
  {
    v3 = sub_252BE92A0(*(v0 + 2576));

    v2 = v3;
  }

  *(v0 + 2592) = v2;
  v4 = *(v0 + 2560);
  v5 = *(v0 + 2232);

  __swift_project_boxed_opaque_existential_1((v5 + 72), *(v5 + 96));
  v6 = swift_task_alloc();
  *(v0 + 2600) = v6;
  *(v6 + 16) = v2;
  v7 = swift_task_alloc();
  *(v0 + 2608) = v7;
  *(v7 + 16) = &unk_252E4A678;
  *(v7 + 24) = v4;
  v8 = v2;
  v9 = swift_task_alloc();
  *(v0 + 2616) = v9;
  *v9 = v0;
  v9[1] = sub_252AF29F4;
  v10 = *(v0 + 2376);
  v11 = *(v0 + 2272);

  return sub_252A199A8(v0 + 2112, &unk_252E400A0, v6, &unk_252E3D1A0, v7, v11, 0, v10);
}

uint64_t sub_252AF30C4()
{
  v1 = v0[301];
  v2 = v0[284];
  v3 = v0[282];
  v4 = v0[281];
  v5 = v0[278];

  (*(v3 + 8))(v2, v4);
  v6 = v0[301];

  v7 = v0[1];

  return v7();
}

uint64_t sub_252AF3234(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2640) = a1;
  *(v3 + 2648) = v1;

  if (v1)
  {

    v4 = sub_252AF355C;
  }

  else
  {
    v4 = sub_252AF3380;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252AF3380()
{
  v1 = *(v0 + 2224);
  v2 = *(v0 + 2640);
  v3 = v1;
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 2656) = v5;
  *v5 = v0;
  v5[1] = sub_252AF343C;

  return sub_252E174F4(v3);
}

uint64_t sub_252AF343C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2664) = a1;
  *(v3 + 2672) = v1;

  if (v1)
  {

    v4 = sub_252AF3790;
  }

  else
  {
    v4 = sub_252AF3634;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252AF355C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AF3634()
{
  v1 = (v0 + 2184);
  v2 = *(v0 + 2664);
  v3 = *(v0 + 2640);
  *(v0 + 2184) = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = *(v0 + 2232);
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  *(v0 + 2680) = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  *(v0 + 2688) = v11;
  *v11 = v0;
  v11[1] = sub_252AF3888;
  v12 = *(v0 + 2707);
  v13 = *(v0 + 2384);
  v14 = *(v0 + 2376);
  v15 = *(v0 + 2264);

  return sub_252BDB88C(v0 + 2072, &unk_252E3F140, v10, v15, v14, v13, v12, v9);
}

uint64_t sub_252AF3790()
{
  v1 = *(v0 + 2640);
  v2 = *(v0 + 2224);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252AF3888()
{
  v2 = *v1;
  *(*v1 + 2696) = v0;

  (*(v2[282] + 8))(v2[283], v2[281]);

  if (v0)
  {
    v3 = sub_252AF3BA8;
  }

  else
  {

    v3 = sub_252AF3A00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252AF3A00()
{
  v1 = *(v0 + 2232);
  v2 = *(v0 + 2216);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 2664);
  v9 = *(v0 + 2640);
  v10 = *(v0 + 2224);
  (*(v4 + 112))(v7, v0 + 2072, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2072));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252AF3BA8()
{
  v1 = *(v0 + 2664);
  v2 = *(v0 + 2640);
  v3 = *(v0 + 2224);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252AF3CBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AF3D94()
{
  v1 = *(v0 + 2408);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252AF3EAC()
{
  v1 = *(v0 + 2408);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252AF3FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 226) = a8;
  *(v8 + 176) = a7;
  *(v8 + 184) = v11;
  *(v8 + 160) = a5;
  *(v8 + 168) = a6;
  *(v8 + 144) = a3;
  *(v8 + 152) = a4;
  *(v8 + 128) = a1;
  *(v8 + 136) = a2;
  *(v8 + 192) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AF4080, 0, 0);
}

uint64_t sub_252AF4080()
{
  v1 = v0;
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v19 = v3;
  v4 = *(v0 + 200);
  v21 = *(v0 + 226);
  v5 = *(v0 + 184);
  v20 = *(v1 + 176);
  v14 = *(v1 + 152);
  v15 = *(v1 + 160);
  v17 = *(v1 + 144);
  v18 = *(v1 + 168);
  v16 = *(v1 + 136);
  v6 = *(v1 + 128);
  type metadata accessor for ServiceCollectionDecorator();
  swift_initStackObject();
  v7 = sub_252B7DA9C(v5);
  sub_252A2F9E8(v7, 0, v3);

  v8 = type metadata accessor for TemperatureSnippetModel(0);
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v9 = *(v8 + 24);
  *(v1 + 72) = 0;
  *(v1 + 64) = 0;
  sub_252E330C4();
  *(v1 + 224) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v10 = sub_252E32CB4();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  sub_252938414(v2, v4, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v2, &qword_27F540370, &qword_252E3C450);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v11 - 8) + 8))(v6 + v9, v11);
  *(v1 + 80) = v14;
  *(v1 + 88) = v15;

  sub_252E330C4();
  *(v1 + 96) = v16;
  *(v1 + 104) = v17;

  sub_252E330C4();
  *(v1 + 112) = v18;
  *(v1 + 120) = v20;

  sub_252E330F4();
  *(v1 + 225) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  sub_252E330F4();
  sub_252938414(v19, v2, &qword_27F540370, &qword_252E3C450);
  sub_252938414(v2, v4, &qword_27F540370, &qword_252E3C450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  sub_252E330F4();
  sub_25293847C(v2, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v19, &qword_27F540370, &qword_252E3C450);
  type metadata accessor for HomeAutomationSnippetModels(0);
  swift_storeEnumTagMultiPayload();

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_252AF4458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252AF0FC8(a1, a2, a3);
}

void *sub_252AF450C@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SetSingleTemperatureValueResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252AF4570(void *a1, void *a2)
{
  v172 = a1;
  v3 = sub_252E32E84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E32A64();
  MEMORY[0x28223BE20](v7);
  v10 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v167 = v8;
  v11 = a2;
  v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v11);
  sub_252929E74((v12 + 288), &v178);

  v13 = *(&v179 + 1);
  v14 = v180;
  __swift_project_boxed_opaque_existential_1(&v178, *(&v179 + 1));
  v15 = (*(v14 + 192))(v13, v14);
  v16 = __swift_destroy_boxed_opaque_existential_1(&v178);
  if ((v15 & 1) == 0)
  {
    if (qword_27F53F4D0 != -1)
    {
LABEL_168:
      swift_once();
    }

    v45 = sub_252E36AD4();
    __swift_project_value_buffer(v45, qword_27F544D18);
    sub_252CC3D90(0x20746F6E20454153, 0xEF64656C62616E65, 0xD0000000000000A0, 0x8000000252E7A790);

    return 0;
  }

  v169 = v10;
  v170 = v7;
  v163 = v6;
  v164 = v4;
  v165 = v3;
  v168 = v11;
  v17 = &v178;
  v18 = sub_252B680FC(v16);
  v19 = sub_252B63B0C();

  v20 = *(v19 + 16);
  if (!v20)
  {
    v171 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

  v21 = 0;
  v22 = v19 + 32;
  v166 = v20 - 1;
  v171 = MEMORY[0x277D84F90];
  v23 = 1701736302;
  v173 = v19 + 32;
  do
  {
    v24 = v22 + 152 * v21;
    v25 = v21;
    while (1)
    {
      if (v25 >= *(v19 + 16))
      {
LABEL_101:
        __break(1u);
LABEL_102:

        sub_252929F10(v19, 0);
        v100 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
        if (v100 >> 62)
        {
          v19 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
          v156 = sub_252E378C4();
          v100 = v19;
          v101 = v156;
        }

        else
        {
          v101 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v158 = v18;
        v102 = MEMORY[0x277D84F90];
        if (v101)
        {
          v23 = 0;
          v172 = (v100 & 0xFFFFFFFFFFFFFF8);
          v173 = v100 & 0xC000000000000001;
          v162 = v100;
          do
          {
            if (v173)
            {
              MEMORY[0x2530ADF00](v23, v100);
              v19 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                goto LABEL_186;
              }
            }

            else
            {
              if (v23 >= v172[2])
              {
                goto LABEL_187;
              }

              v19 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
LABEL_186:
                __break(1u);
LABEL_187:
                __break(1u);
LABEL_188:
                __break(1u);
                goto LABEL_189;
              }
            }

            v103 = sub_252E32E24();
            v105 = v104;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v102 = sub_2529F7A80(0, *(v102 + 2) + 1, 1, v102);
            }

            v25 = *(v102 + 2);
            v106 = *(v102 + 3);
            if (v25 >= v106 >> 1)
            {
              v102 = sub_2529F7A80((v106 > 1), v25 + 1, 1, v102);
            }

            *(v102 + 2) = v25 + 1;
            v107 = &v102[16 * v25];
            *(v107 + 4) = v103;
            *(v107 + 5) = v105;
            ++v23;
            v100 = v162;
          }

          while (v19 != v101);
        }

        v157 = sub_252C75848(v102);

        v81 = 0;
        v108 = v171;
        v160 = (v171 + 4);
        v109 = v166;
        ++v167;
        v11 = MEMORY[0x277D84F90];
        v76 = MEMORY[0x277D84F90];
        while (v81 < v108[2])
        {
          v110 = v160 + 152 * v81;
          v111 = *(v110 + 16);
          *v17 = *v110;
          v17[1] = v111;
          v112 = *(v110 + 32);
          v113 = *(v110 + 48);
          v114 = *(v110 + 80);
          v17[4] = *(v110 + 64);
          v17[5] = v114;
          v17[2] = v112;
          v17[3] = v113;
          v115 = *(v110 + 96);
          v116 = *(v110 + 112);
          v117 = *(v110 + 128);
          v187 = *(v110 + 144);
          v17[7] = v116;
          v17[8] = v117;
          v17[6] = v115;
          if (*(&v178 + 1))
          {
            *&v161 = v81;
            v162 = v76;
            v176 = v178;
            v174 = 0x6965636976726573;
            v175 = 0xEA00000000003A64;
            sub_25297DE08(&v178, v177);
            v173 = sub_252947DBC();
            v118 = sub_252E37794();
            v119 = *(v118 + 16);
            v23 = v119 != 0;
            if (v119 > 1)
            {
              v159 = v118;
              v19 = v119 - v23;
              *&v176 = MEMORY[0x277D84F90];
              sub_2529AA3A0(0, (v119 - v23) & ~((v119 - v23) >> 63), 0);
              if (((v119 - v23) & 0x8000000000000000) != 0)
              {
                goto LABEL_193;
              }

              v25 = v176;
              v120 = (v159 + 16 * v23 + 40);
              v172 = v119;
              while (v23 < v119)
              {
                v121 = *v120;
                *&v177[0] = *(v120 - 1);
                *(&v177[0] + 1) = v121;

                v122 = v169;
                sub_252E32A44();
                v123 = sub_252E377A4();
                v11 = v124;
                (*v167)(v122, v170);

                *&v176 = v25;
                v126 = *(v25 + 16);
                v125 = *(v25 + 24);
                if (v126 >= v125 >> 1)
                {
                  sub_2529AA3A0((v125 > 1), v126 + 1, 1);
                  v25 = v176;
                }

                *(v25 + 16) = v126 + 1;
                v127 = v25 + 16 * v126;
                *(v127 + 32) = v123;
                *(v127 + 40) = v11;
                ++v23;
                v120 += 2;
                v119 = v172;
                if (v172 == v23)
                {

                  sub_2529AEC80(&v178);
                  v109 = v166;
                  v11 = MEMORY[0x277D84F90];
                  goto LABEL_131;
                }
              }

              __break(1u);
              goto LABEL_168;
            }

            sub_2529AEC80(&v178);
            v11 = MEMORY[0x277D84F90];
            v25 = MEMORY[0x277D84F90];
            v109 = v166;
LABEL_131:
            v76 = v162;
            v81 = v161;
          }

          else
          {
            v25 = v11;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v76 = sub_2529F8300(0, *(v76 + 16) + 1, 1, v76);
          }

          v19 = *(v76 + 16);
          v128 = *(v76 + 24);
          v108 = v171;
          if (v19 >= v128 >> 1)
          {
            v76 = sub_2529F8300((v128 > 1), v19 + 1, 1, v76);
            v108 = v171;
          }

          ++v81;
          *(v76 + 16) = v19 + 1;
          *(v76 + 8 * v19 + 32) = v25;
          if (v81 == v109)
          {
            goto LABEL_140;
          }
        }

LABEL_184:
        __break(1u);
LABEL_185:
        swift_once();
        goto LABEL_40;
      }

      v26 = *(v24 + 16);
      v178 = *v24;
      v179 = v26;
      v27 = *(v24 + 32);
      v28 = *(v24 + 48);
      v29 = *(v24 + 80);
      v182 = *(v24 + 64);
      v183 = v29;
      v180 = v27;
      v181 = v28;
      v30 = *(v24 + 96);
      v31 = *(v24 + 112);
      v32 = *(v24 + 128);
      v187 = *(v24 + 144);
      v185 = v31;
      v186 = v32;
      v184 = v30;
      if (v187)
      {
        if (v187 == 1)
        {
          v18 = 0xEE006C616E6F6974;
        }

        else
        {
          v18 = 0xE400000000000000;
        }

        v33 = sub_252E37DB4();
        sub_25297DE08(&v178, v177);

        if ((v33 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_25297DE08(&v178, v177);
      }

      if (*(&v186 + 1) > 0.05)
      {
        break;
      }

LABEL_8:
      sub_2529AEC80(&v178);
      ++v25;
      v24 += 152;
      if (v20 == v25)
      {
        goto LABEL_25;
      }
    }

    v18 = v171;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v176 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA580(0, v18[2] + 1, 1);
      v18 = v176;
    }

    v36 = v18[2];
    v35 = v18[3];
    if (v36 >= v35 >> 1)
    {
      sub_2529AA580((v35 > 1), v36 + 1, 1);
      v18 = v176;
    }

    v21 = v25 + 1;
    v18[2] = v36 + 1;
    v171 = v18;
    v37 = &v18[19 * v36];
    v38 = v179;
    *(v37 + 2) = v178;
    *(v37 + 3) = v38;
    v39 = v180;
    v40 = v181;
    v41 = v183;
    *(v37 + 6) = v182;
    *(v37 + 7) = v41;
    *(v37 + 4) = v39;
    *(v37 + 5) = v40;
    v42 = v184;
    v43 = v185;
    v44 = v186;
    *(v37 + 88) = v187;
    *(v37 + 9) = v43;
    *(v37 + 10) = v44;
    *(v37 + 8) = v42;
    v22 = v173;
  }

  while (v166 != v25);
LABEL_25:

  v23 = v171[2];
  if (!v23)
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v56 = sub_252E36AD4();
    __swift_project_value_buffer(v56, qword_27F544D18);
    v57 = "atching entity in response";
    v58 = 0xD00000000000006ELL;
    goto LABEL_38;
  }

  v46 = v172;
  v47 = [v172 userTask];
  if (!v47 || (v48 = v47, v49 = [v47 taskType], v48, v49 != 2))
  {
    v50 = [v46 userTask];
    if (!v50 || (v51 = v50, v52 = [v50 taskType], v51, v52 != 3))
    {

      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v59 = sub_252E36AD4();
      __swift_project_value_buffer(v59, qword_27F544D18);
      v57 = "nseHandler.swift";
      v58 = 0xD000000000000030;
LABEL_38:
      sub_252CC3D90(v58, v57 | 0x8000000000000000, 0xD0000000000000A0, 0x8000000252E7A790);

      return 0;
    }
  }

  v53 = [v168 entityResponses];
  if (v53)
  {
    v54 = v53;
    type metadata accessor for HomeEntityResponse();
    v55 = sub_252E37264();

    goto LABEL_41;
  }

  if (qword_27F53F4E8 != -1)
  {
    goto LABEL_185;
  }

LABEL_40:
  v60 = sub_252E36AD4();
  __swift_project_value_buffer(v60, qword_27F544D60);
  *&v178 = 0;
  *(&v178 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v178 = 0xD00000000000002FLL;
  *(&v178 + 1) = 0x8000000252E69700;
  v61 = v168;
  v62 = [v61 description];
  v63 = sub_252E36F34();
  v65 = v64;

  MEMORY[0x2530AD570](v63, v65);

  sub_252CC3D90(v178, *(&v178 + 1), 0xD000000000000098, 0x8000000252E69730);

  v55 = MEMORY[0x277D84F90];
LABEL_41:
  *&v178 = MEMORY[0x277D84F90];
  if (v55 >> 62)
  {
    v66 = sub_252E378C4();
  }

  else
  {
    v66 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v67 = MEMORY[0x277D84F90];
  v166 = v23;
  if (v66)
  {
    v68 = 0;
    v173 = v55 & 0xC000000000000001;
    v23 = v55 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v173)
      {
        v69 = MEMORY[0x2530ADF00](v68, v55);
      }

      else
      {
        if (v68 >= *(v23 + 16))
        {
          goto LABEL_158;
        }

        v69 = *(v55 + 8 * v68 + 32);
      }

      v70 = v69;
      v71 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v72 = [v69 entity];
      if (v72)
      {
        v73 = v55;
        v74 = v72;
        v75 = [v72 type];

        if (v75 == 7)
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        v55 = v73;
      }

      else
      {
      }

      ++v68;
    }

    while (v71 != v66);
    v76 = v178;
    v67 = MEMORY[0x277D84F90];
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
  }

  *&v178 = v67;
  if (v76 < 0 || (v76 & 0x4000000000000000) != 0)
  {
    v19 = sub_252E378C4();
  }

  else
  {
    v19 = *(v76 + 16);
  }

  v77 = 0;
  while (2)
  {
    if (v19 == v77)
    {

      v19 = sub_252DF8EF0(v67);

      if (v19 >> 62)
      {
        v153 = sub_252E378C4();
        v25 = v172;
        v81 = 0x279711000;
        if (v153 == 1)
        {
          if (sub_252E378C4())
          {
            goto LABEL_75;
          }

LABEL_176:
          v19 = v168;
          if (qword_27F53F4D0 != -1)
          {
            swift_once();
          }

          v154 = sub_252E36AD4();
          __swift_project_value_buffer(v154, qword_27F544D18);
          v95 = "on delta request";
          v96 = 0xD00000000000001DLL;
LABEL_179:
          sub_252CC3D90(v96, v95 | 0x8000000000000000, 0xD0000000000000A0, 0x8000000252E7A790);

          return 0;
        }
      }

      else
      {
        v25 = v172;
        v81 = &off_279711000;
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
        {
LABEL_75:
          if ((v19 & 0xC000000000000001) != 0)
          {
            goto LABEL_182;
          }

          if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v82 = *(v19 + 32);
            goto LABEL_78;
          }

          __break(1u);
          goto LABEL_184;
        }
      }

LABEL_175:

      goto LABEL_176;
    }

    if ((v76 & 0xC000000000000001) != 0)
    {
      v78 = MEMORY[0x2530ADF00](v77, v76);
    }

    else
    {
      if (v77 >= *(v76 + 16))
      {
        goto LABEL_139;
      }

      v78 = *(v76 + 8 * v77 + 32);
    }

    v79 = v78;
    v23 = v77 + 1;
    if (!__OFADD__(v77, 1))
    {
      v80 = [v78 entity];

      ++v77;
      if (v80)
      {
        MEMORY[0x2530AD700]();
        if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v67 = v178;
        v77 = v23;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:

  v17 = *(v76 + 16);
  if (v17)
  {
    v25 = 0;
    v81 = v76 + 32;
    v129 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v25 >= *(v76 + 16))
      {
        goto LABEL_188;
      }

      v19 = v76;
      v130 = *(v81 + 8 * v25);
      v131 = *(v130 + 16);
      v132 = *(v129 + 2);
      v133 = v132 + v131;
      if (__OFADD__(v132, v131))
      {
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
        goto LABEL_191;
      }

      v134 = swift_isUniquelyReferenced_nonNull_native();
      if (!v134 || v133 > *(v129 + 3) >> 1)
      {
        if (v132 <= v133)
        {
          v135 = v132 + v131;
        }

        else
        {
          v135 = v132;
        }

        v129 = sub_2529F7A80(v134, v135, 1, v129);
      }

      v76 = v19;
      if (*(v130 + 16))
      {
        if ((*(v129 + 3) >> 1) - *(v129 + 2) < v131)
        {
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          if (sub_252E378C4() != 1)
          {
            goto LABEL_200;
          }

          v160 = sub_252E378C4();
          if (!v160)
          {
LABEL_197:

            sub_252929F10(v25, 0);

            if (qword_27F53F4D0 != -1)
            {
              swift_once();
            }

            v155 = sub_252E36AD4();
            __swift_project_value_buffer(v155, qword_27F544D18);
            v57 = "Created thermostat punchout ";
            v58 = 0xD00000000000002ALL;
            goto LABEL_38;
          }

LABEL_90:
          v23 = 0;
          v162 = v25 & 0xC000000000000001;
          v161 = xmmword_252E3C290;
          while (1)
          {
            if (v162)
            {
              v19 = v25;
              v18 = MEMORY[0x2530ADF00](v23, v25);
              v25 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
LABEL_100:
                __break(1u);
                goto LABEL_101;
              }
            }

            else
            {
              if (v23 >= *(v76 + 16))
              {
                __break(1u);
LABEL_182:
                v82 = MEMORY[0x2530ADF00](0, v19);
LABEL_78:
                v83 = v82;

                v84 = [v83 entityIdentifier];

                if (!v84)
                {
                  goto LABEL_175;
                }

                v172 = sub_252E36F34();
                v173 = v85;

                v86 = type metadata accessor for HomeStore(0);
                v87 = static HomeStore.shared.getter(v86);
                v88 = v87[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
                if (v88 != 2 && (v88 & 1) == 0 || (v89 = [v25 filters]) == 0)
                {

                  goto LABEL_85;
                }

                v90 = v89;
                type metadata accessor for HomeFilter();
                v91 = sub_252E37264();

                v92 = [v25 *(v81 + 1712)];
                v25 = HomeStore.accessories(matching:supporting:)(v91, v92);
                v81 = v93;

                if (v81)
                {
                  sub_252929F10(v25, 1);

                  goto LABEL_85;
                }

                v76 = v25 & 0xFFFFFFFFFFFFFF8;
                if (!(v25 >> 62))
                {
                  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
                  {
                    v160 = 1;
                    goto LABEL_90;
                  }

LABEL_200:

                  sub_252929F10(v25, 0);
LABEL_85:
                  v19 = v168;
                  if (qword_27F53F4D0 == -1)
                  {
LABEL_86:
                    v94 = sub_252E36AD4();
                    __swift_project_value_buffer(v94, qword_27F544D18);
                    v95 = "Targeted more than one entity";
                    v96 = 0xD00000000000002DLL;
                    goto LABEL_179;
                  }

LABEL_191:
                  swift_once();
                  goto LABEL_86;
                }

                goto LABEL_195;
              }

              v19 = v25;
              v18 = *(v25 + 8 * v23 + 32);

              v25 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                goto LABEL_100;
              }
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
            v97 = swift_allocObject();
            *(v97 + 16) = v161;
            *(v97 + 32) = v172;
            *(v97 + 40) = v173;
            v98 = *(*v18 + 176);
            v81 = *v18 + 176;

            LOBYTE(v98) = v98(v97);

            if (v98)
            {
              goto LABEL_102;
            }

            ++v23;
            v99 = v25 == v160;
            v25 = v19;
            if (v99)
            {
              goto LABEL_197;
            }
          }
        }

        swift_arrayInitWithCopy();

        if (v131)
        {
          v136 = *(v129 + 2);
          v137 = __OFADD__(v136, v131);
          v138 = v136 + v131;
          if (v137)
          {
            goto LABEL_194;
          }

          *(v129 + 2) = v138;
        }
      }

      else
      {

        if (v131)
        {
          goto LABEL_190;
        }
      }

      if (v17 == ++v25)
      {
        goto LABEL_160;
      }
    }
  }

LABEL_159:
  v129 = MEMORY[0x277D84F90];
LABEL_160:

  v139 = sub_252C75848(v129);

  v140 = sub_252A1218C(v157, v139);

  if ((v140 & 1) == 0)
  {
    v151 = v168;
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v152 = sub_252E36AD4();
    __swift_project_value_buffer(v152, qword_27F544D18);
    sub_252CC3D90(0xD000000000000035, 0x8000000252E7A8D0, 0xD0000000000000A0, 0x8000000252E7A790);

    return 0;
  }

  v141 = v163;
  v142 = v164;
  v143 = v165;
  (*(v164 + 16))(v163, v158 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v165);
  v144 = sub_252E32E24();
  v146 = v145;
  (*(v142 + 8))(v141, v143);
  strcpy(&v178, "com.apple.Home");
  HIBYTE(v178) = -18;
  MEMORY[0x2530AD570](3092282, 0xE300000000000000);
  MEMORY[0x2530AD570](0x726F737365636361, 0xE900000000000079);
  MEMORY[0x2530AD570](47, 0xE100000000000000);

  MEMORY[0x2530AD570](v144, v146);
  swift_bridgeObjectRelease_n();
  v147 = v178;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v148 = sub_252E36AD4();
  __swift_project_value_buffer(v148, qword_27F544D18);
  *&v178 = 0;
  *(&v178 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v178 = 0xD00000000000001CLL;
  *(&v178 + 1) = 0x8000000252E7A910;
  v177[0] = v147;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v149 = sub_252E36F94();
  MEMORY[0x2530AD570](v149);

  sub_252CC7784(v178, *(&v178 + 1), 0, 0xD0000000000000A0, 0x8000000252E7A790);

  return v147;
}

BOOL sub_252AF5BFC()
{
  swift_beginAccess();
  v0 = sub_252D8D5A8(&unk_27F545D10, 6);
  swift_endAccess();
  if (!v0)
  {
    return sub_252D8C850() || (sub_25299C950(17) & 1) != 0 && (sub_25299C950(19) & 1) == 0;
  }

  swift_beginAccess();
  v1 = sub_252D8D5A8(&unk_27F545D10, 6);
  swift_endAccess();
  if (!v1)
  {
LABEL_26:

    return sub_252D8C850() || (sub_25299C950(17) & 1) != 0 && (sub_25299C950(19) & 1) == 0;
  }

  v2 = v0[3];
  if (v2 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_25;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

  v3 = v1[3];
  if (v3 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_25;
    }

    goto LABEL_7;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_25:

    goto LABEL_26;
  }

LABEL_7:

  if (!sub_25299909C())
  {
LABEL_12:

    goto LABEL_25;
  }

  v4 = sub_252C99DD8();
  if (!v4 || (v5 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue), , , !v5) || (v6 = *(v5 + 24), v7 = *(v5 + 32), , (v7 & 1) != 0))
  {

    goto LABEL_12;
  }

  v8 = sub_25299909C();

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = *(v9 + 24);
  v11 = *(v9 + 32);

  if (v11)
  {
    goto LABEL_12;
  }

  v12 = sub_252C9A2AC();

  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

    if (v13)
    {
      v14 = *(v13 + 24);
      v15 = *(v13 + 32);

      if ((v15 & 1) == 0 && v10 < v6 && v10 < v14)
      {
        return 1;
      }
    }
  }

  return sub_252D8C850() || (sub_25299C950(17) & 1) != 0 && (sub_25299C950(19) & 1) == 0;
}

uint64_t sub_252AF5EB8()
{
  if (sub_252AF5BFC())
  {
    return 0;
  }

  swift_beginAccess();
  v1 = sub_252D8D5A8(&unk_27F545D10, 6);
  swift_endAccess();
  if (!v1)
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v2 = sub_252D8D5A8(&unk_27F545D10, 6);
  swift_endAccess();
  if (!v2)
  {
LABEL_28:

    goto LABEL_29;
  }

  v3 = v1[3];
  if (v3 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_27;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v4 = v2[3];
  if (v4 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_27;
    }

    goto LABEL_9;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_27:

    goto LABEL_28;
  }

LABEL_9:

  if (!sub_25299909C())
  {
LABEL_14:

    goto LABEL_27;
  }

  v5 = sub_252C99DD8();
  if (!v5 || (v6 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue), , , !v6) || (v7 = *(v6 + 24), v8 = *(v6 + 32), , (v8 & 1) != 0))
  {

    goto LABEL_14;
  }

  v9 = sub_25299909C();

  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = *(v10 + 24);
  v12 = *(v10 + 32);

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = sub_252C9A2AC();

  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

    if (v14)
    {
      v15 = *(v14 + 24);
      v16 = *(v14 + 32);

      if ((v16 & 1) == 0 && v7 < v11 && v15 < v11)
      {
        return 1;
      }
    }
  }

LABEL_29:
  if (sub_252D8CCA4() || (sub_25299C950(19) & 1) != 0 && (sub_25299C950(17) & 1) == 0)
  {
    return 1;
  }

  return 2;
}

BOOL sub_252AF6184(void *a1)
{
  if (!sub_252C4B5D4())
  {
    return 0;
  }

  v2 = [a1 userTask];
  if (!v2)
  {
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  v4 = [v2 attribute];

  if (v4 != 6 || (sub_252CCFCB8() & 1) == 0)
  {
    return 0;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = [v5 value];

  if (!v7)
  {
    return 1;
  }

  v8 = [v7 type];

  return v8 != 6;
}

uint64_t sub_252AF6268(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25294B954;

  return sub_252AF3FB0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_252AF636C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = (result + 321);
  v4 = v2 + 1;
  v5 = MEMORY[0x277D84F90];
  do
  {
    if (!--v4)
    {
      return v5;
    }

    v6 = v3;
    v3 += 504;
  }

  while ((*v6 & 1) != 0 || (*(v6 - 1) & 1) == 0 || *(v6 - 9));
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v22 = 32;
  do
  {
    v9 = v22 + 504 * v7;
    v10 = v7;
    while (1)
    {
      if (v10 >= v2)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      result = memcpy(v26, (v1 + v9), 0x1F8uLL);
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_34;
      }

      if ((v26[36] & 0x100) == 0 && (v26[36] & 1) != 0 && !v26[35])
      {
        break;
      }

      ++v10;
      v9 += 504;
      if (v7 == v2)
      {
        goto LABEL_19;
      }
    }

    sub_2529353AC(v26, v25);
    v23[0] = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2529AA480(0, *(v8 + 16) + 1, 1);
      v8 = v23[0];
    }

    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_2529AA480((v11 > 1), v12 + 1, 1);
      v8 = v23[0];
    }

    *(v8 + 16) = v12 + 1;
    result = memcpy((v8 + 504 * v12 + 32), v26, 0x1F8uLL);
  }

  while (v7 != v2);
LABEL_19:

  v13 = 0;
  v5 = MEMORY[0x277D84F90];
LABEL_20:
  v21 = v5;
  v14 = v22 + 504 * v13;
  for (i = v13; i < v2; ++i)
  {
    result = memcpy(v26, (v1 + v14), 0x1F8uLL);
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_36;
    }

    v16 = memcpy(v25, (v1 + v14), sizeof(v25));
    MEMORY[0x28223BE20](v16);
    v20[2] = v25;
    sub_2529353AC(v26, v23);
    if ((sub_2529EDA1C(sub_25295AD78, v20, v1) & 1) == 0 || v26[37])
    {
      v5 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA480(0, *(v5 + 16) + 1, 1);
        v5 = v24;
      }

      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2529AA480((v18 > 1), v19 + 1, 1);
        v5 = v24;
      }

      *(v5 + 16) = v19 + 1;
      result = memcpy((v5 + 504 * v19 + 32), v26, 0x1F8uLL);
      if (v13 != v2)
      {
        goto LABEL_20;
      }

      return v5;
    }

    result = sub_252935408(v26);
    v14 += 504;
    if (v13 == v2)
    {
      return v21;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_252AF6684(uint64_t a1)
{
  v3 = a1;
  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v4 + 288), __dst);

  v5 = __dst[3];
  v6 = __dst[4];
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  v7 = (*(v6 + 152))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  if ((v7 & 1) == 0)
  {
    goto LABEL_88;
  }

  v8 = *(v3 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v3 + 32;
    v11 = MEMORY[0x277D84F90];
    do
    {
      v12 = (v10 + 504 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= v8)
        {
          __break(1u);
LABEL_307:
          __break(1u);
          goto LABEL_308;
        }

        memcpy(__dst, v12, 0x1F8uLL);
        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_307;
        }

        if (*(__dst[61] + 16))
        {
          break;
        }

        ++v13;
        v12 += 504;
        if (v9 == v8)
        {
          goto LABEL_17;
        }
      }

      sub_2529353AC(__dst, v201);
      v199[0] = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2529AA480(0, *(v11 + 16) + 1, 1);
        v11 = v199[0];
      }

      v1 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v1 >= v14 >> 1)
      {
        sub_2529AA480((v14 > 1), v1 + 1, 1);
        v11 = v199[0];
      }

      *(v11 + 16) = v1 + 1;
      memcpy((v11 + 504 * v1 + 32), __dst, 0x1F8uLL);
    }

    while (v9 != v8);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

LABEL_17:
  v191 = *(v11 + 16);
  if (!v191)
  {

    goto LABEL_88;
  }

  v183 = v3;
  v2 = 0;
  v10 = 0xEE006C616E6F6974;
  v192 = v11 + 32;
  v193 = v11;
  v188 = MEMORY[0x277D84F90];
  v11 = 152;
LABEL_21:
  if (v2 >= *(v193 + 16))
  {
LABEL_326:
    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    __break(1u);
    goto LABEL_329;
  }

  memcpy(__dst, (v192 + 504 * v2++), 0x1F8uLL);
  v15 = __dst[61];
  v16 = __dst[61] + 56;
  v17 = 1 << *(__dst[61] + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(__dst[61] + 56);
  swift_bridgeObjectRetain_n();
  sub_2529353AC(__dst, v201);
  v20 = 0;
  v21 = (v17 + 63) >> 6;
LABEL_28:
  if (v19)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      sub_252935408(__dst);

      goto LABEL_20;
    }

    v19 = *(v16 + 8 * v22);
    ++v20;
    if (v19)
    {
      v20 = v22;
LABEL_33:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v24 = *(v15 + 48) + 152 * (v23 | (v20 << 6));
      v25 = *(v24 + 136);
      if (*(v24 + 144) == 1)
      {
      }

      else
      {
        v3 = sub_252E37DB4();

        if ((v3 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      if (v25 <= 0.04)
      {
        goto LABEL_28;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v188;
      v199[0] = v188;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA480(0, *(v188 + 16) + 1, 1);
        v27 = v199[0];
      }

      v29 = *(v27 + 16);
      v28 = *(v27 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2529AA480((v28 > 1), v29 + 1, 1);
        v27 = v199[0];
      }

      *(v27 + 16) = v29 + 1;
      v188 = v27;
      memcpy((v27 + 504 * v29 + 32), __dst, 0x1F8uLL);
LABEL_20:
      if (v2 == v191)
      {
        if (*(v188 + 16))
        {
          goto LABEL_42;
        }

        goto LABEL_91;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_91:

  v191 = *(v193 + 16);
  if (!v191)
  {
    goto LABEL_204;
  }

  v42 = 0;
  v188 = MEMORY[0x277D84F90];
  v11 = 152;
  do
  {
    if (v42 >= *(v193 + 16))
    {
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
      goto LABEL_350;
    }

    memcpy(__dst, (v192 + 504 * v42++), 0x1F8uLL);
    v43 = __dst[61];
    v44 = __dst[61] + 56;
    v45 = 1 << *(__dst[61] + 32);
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v47 = v46 & *(__dst[61] + 56);
    swift_bridgeObjectRetain_n();
    sub_2529353AC(__dst, v201);
    v48 = 0;
    v2 = (v45 + 63) >> 6;
    while (v47)
    {
LABEL_104:
      v50 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      if (*(*(v43 + 48) + 152 * (v50 | (v48 << 6)) + 144) == 1)
      {
      }

      else
      {
        v3 = sub_252E37DB4();

        if ((v3 & 1) == 0)
        {

          v51 = swift_isUniquelyReferenced_nonNull_native();
          v52 = v188;
          v199[0] = v188;
          if ((v51 & 1) == 0)
          {
            sub_2529AA480(0, *(v188 + 16) + 1, 1);
            v52 = v199[0];
          }

          v54 = *(v52 + 16);
          v53 = *(v52 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_2529AA480((v53 > 1), v54 + 1, 1);
            v52 = v199[0];
          }

          *(v52 + 16) = v54 + 1;
          v188 = v52;
          memcpy((v52 + 504 * v54 + 32), __dst, 0x1F8uLL);
          goto LABEL_112;
        }
      }
    }

    while (1)
    {
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_253;
      }

      if (v49 >= v2)
      {
        break;
      }

      v47 = *(v44 + 8 * v49);
      ++v48;
      if (v47)
      {
        v48 = v49;
        goto LABEL_104;
      }
    }

    sub_252935408(__dst);

LABEL_112:
    ;
  }

  while (v42 != v191);
LABEL_42:

  v30 = *(v188 + 16);

  v187 = v30;
  if (v30)
  {
    v10 = 0;
    v32 = 0xEE00797469746E45;
    v186 = v31 + 32;
    v191 = 0x8000000252E67980;
    v192 = 0x8000000252E679D0;
    v189 = 0x8000000252E67960;
    v190 = 0x8000000252E67940;
    v185 = MEMORY[0x277D84F90];
    while (v10 < *(v31 + 16))
    {
      v2 = v32;
      memcpy(__dst, (v186 + 504 * v10), 0x1F8uLL);
      v194 = v10 + 1;
      v33 = __dst[47];
      v34 = *(__dst[47] + 16);
      sub_2529353AC(__dst, v201);
      v35 = (v33 + 32);

      v36 = (v33 + 32);
      while (2)
      {
        if (v34)
        {
          v3 = 0xEB00000000656D6FLL;
          switch(*v36)
          {
            case 1:
              v3 = 0xEF746E656D656361;
              goto LABEL_50;
            case 2:
              v3 = 0xEC0000005654416ELL;
              goto LABEL_50;
            case 3:
              v3 = 0xE700000000000000;
              goto LABEL_50;
            case 4:
              v3 = 0xE600000000000000;
              goto LABEL_50;
            case 5:
              v3 = 0x8000000252E67940;
              goto LABEL_50;
            case 6:
              v3 = 0x8000000252E67960;
              if (0x8000000252E679B0 == 0x8000000252E67960)
              {
                goto LABEL_64;
              }

              goto LABEL_50;
            case 7:
              v3 = 0xED0000797469746ELL;
              goto LABEL_50;
            case 8:
              v3 = 0x8000000252E67980;
              goto LABEL_50;
            case 9:
              v3 = 0xEE00656D6F486465;
              goto LABEL_50;
            case 0xA:
LABEL_64:

              goto LABEL_65;
            case 0xB:
              v3 = v2;
              goto LABEL_50;
            case 0xC:
              v3 = 0x8000000252E679D0;
              goto LABEL_50;
            default:
LABEL_50:
              v11 = sub_252E37DB4();

              ++v36;
              --v34;
              if ((v11 & 1) == 0)
              {
                continue;
              }

LABEL_65:
              v37 = *(v33 + 16);
              v32 = v2;
              while (2)
              {
                if (!v37)
                {

                  sub_252935408(__dst);
                  goto LABEL_45;
                }

                v3 = 0x8000000252E679B0;
                switch(*v35)
                {
                  case 1:
                    v3 = 0xEF746E656D656361;
                    goto LABEL_67;
                  case 2:
                    v3 = 0xEC0000005654416ELL;
                    goto LABEL_67;
                  case 3:
                    v3 = 0xE700000000000000;
                    goto LABEL_67;
                  case 4:
                    v3 = 0xE600000000000000;
                    goto LABEL_67;
                  case 5:
                    v3 = 0x8000000252E67940;
                    goto LABEL_67;
                  case 6:
                    v3 = 0x8000000252E67960;
                    goto LABEL_67;
                  case 7:
                    v3 = 0xED0000797469746ELL;
                    goto LABEL_67;
                  case 8:
                    v3 = 0x8000000252E67980;
                    goto LABEL_67;
                  case 9:
                    v3 = 0xEE00656D6F486465;
                    goto LABEL_67;
                  case 0xA:
                    goto LABEL_67;
                  case 0xB:

                    goto LABEL_82;
                  case 0xC:
                    v3 = 0x8000000252E679D0;
                    goto LABEL_67;
                  default:
                    v3 = 0xEB00000000656D6FLL;
LABEL_67:
                    v11 = sub_252E37DB4();

                    ++v35;
                    --v37;
                    if ((v11 & 1) == 0)
                    {
                      continue;
                    }

LABEL_82:

                    v38 = v185;
                    v199[0] = v185;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_2529AA480(0, *(v185 + 16) + 1, 1);
                      v38 = v199[0];
                    }

                    v10 = v194;
                    v40 = *(v38 + 16);
                    v39 = *(v38 + 24);
                    v3 = v40 + 1;
                    if (v40 >= v39 >> 1)
                    {
                      sub_2529AA480((v39 > 1), v40 + 1, 1);
                      v38 = v199[0];
                    }

                    *(v38 + 16) = v3;
                    v185 = v38;
                    memcpy((v38 + 504 * v40 + 32), __dst, 0x1F8uLL);
                    break;
                }

                break;
              }

              break;
          }
        }

        else
        {

          sub_252935408(__dst);
          v32 = v2;
LABEL_45:
          v10 = v194;
        }

        break;
      }

      v31 = v188;
      if (v10 == v187)
      {
        goto LABEL_115;
      }
    }

    goto LABEL_328;
  }

  v185 = MEMORY[0x277D84F90];
LABEL_115:
  v55 = v31;

  v42 = v185;
  if (*(v185 + 16))
  {

    v48 = *(v185 + 16);
    if (!v48)
    {
      goto LABEL_157;
    }
  }

  else
  {

    v42 = v55;
    v48 = *(v55 + 16);
    if (!v48)
    {
LABEL_157:
      v10 = MEMORY[0x277D84F90];
      v3 = MEMORY[0x277D84F90];
      v1 = MEMORY[0x277D84F90];
      v192 = MEMORY[0x277D84F90];
      v193 = MEMORY[0x277D84F90];
      v79 = MEMORY[0x277D84F90];
      v11 = MEMORY[0x277D84F90];
      v2 = MEMORY[0x277D84F90];
      goto LABEL_158;
    }
  }

  v56 = 0;
  v2 = v42 + 32;
  v193 = MEMORY[0x277D84F90];
  v3 = -1;
  v11 = 152;
  v184 = v42;
LABEL_119:
  while (2)
  {
    if (v56 >= *(v42 + 16))
    {
      __break(1u);
LABEL_336:
      __break(1u);
      goto LABEL_337;
    }

    memcpy(__dst, (v2 + 504 * v56), 0x1F8uLL);
    v57 = 0;
    ++v56;
    v58 = 1 << *(__dst[61] + 32);
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v60 = v59 & *(__dst[61] + 56);
    v61 = (v58 + 63) >> 6;
LABEL_124:
    if (v60)
    {
      v62 = v57;
      goto LABEL_130;
    }

    while (1)
    {
      v62 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        __break(1u);
LABEL_204:
        v188 = MEMORY[0x277D84F90];
        goto LABEL_42;
      }

      if (v62 >= v61)
      {
        break;
      }

      v60 = *(__dst[61] + 56 + 8 * v62);
      ++v57;
      if (v60)
      {
        v57 = v62;
LABEL_130:
        v63 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
        if (*(*(__dst[61] + 48) + 152 * (v63 | (v62 << 6)) + 40))
        {

          sub_2529353AC(__dst, v201);

          v64 = v193;
          v199[0] = v193;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA480(0, *(v193 + 16) + 1, 1);
            v64 = v199[0];
          }

          v66 = *(v64 + 16);
          v65 = *(v64 + 24);
          v10 = v66 + 1;
          if (v66 >= v65 >> 1)
          {
            sub_2529AA480((v65 > 1), v66 + 1, 1);
            v64 = v199[0];
          }

          *(v64 + 16) = v10;
          v193 = v64;
          memcpy((v64 + 504 * v66 + 32), __dst, 0x1F8uLL);
          v42 = v184;
          if (v56 == v48)
          {
            goto LABEL_136;
          }

          goto LABEL_119;
        }

        goto LABEL_124;
      }
    }

    if (v56 != v48)
    {
      continue;
    }

    break;
  }

LABEL_136:
  v67 = 0;
  v68 = MEMORY[0x277D84F90];
  v10 = 504;
  v3 = -1;
  do
  {
LABEL_138:
    if (v67 >= *(v42 + 16))
    {
      goto LABEL_336;
    }

    memcpy(__dst, (v2 + 504 * v67), 0x1F8uLL);
    v69 = 0;
    ++v67;
    v70 = 1 << *(__dst[61] + 32);
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    else
    {
      v71 = -1;
    }

    v72 = v71 & *(__dst[61] + 56);
    v73 = (v70 + 63) >> 6;
    do
    {
      if (v72)
      {
        v74 = v69;
        goto LABEL_149;
      }

      do
      {
        v74 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          __break(1u);
          goto LABEL_232;
        }

        if (v74 >= v73)
        {
          if (v67 == v48)
          {
            goto LABEL_164;
          }

          goto LABEL_138;
        }

        v72 = *(__dst[61] + 56 + 8 * v74);
        ++v69;
      }

      while (!v72);
      v69 = v74;
LABEL_149:
      v75 = __clz(__rbit64(v72));
      v72 &= v72 - 1;
    }

    while (!*(*(__dst[61] + 48) + 152 * (v75 | (v74 << 6)) + 72));

    sub_2529353AC(__dst, v201);

    v199[0] = v68;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2529AA480(0, *(v68 + 16) + 1, 1);
      v68 = v199[0];
    }

    v77 = *(v68 + 16);
    v76 = *(v68 + 24);
    v78 = v68;
    if (v77 >= v76 >> 1)
    {
      sub_2529AA480((v76 > 1), v77 + 1, 1);
      v78 = v199[0];
    }

    *(v78 + 16) = v77 + 1;
    memcpy((v78 + 504 * v77 + 32), __dst, 0x1F8uLL);
    v42 = v184;
    v68 = v78;
  }

  while (v67 != v48);
LABEL_164:
  v190 = v68;
  v83 = 0;
  v84 = MEMORY[0x277D84F90];
  v10 = 504;
  v3 = 1;
  v11 = -1;
LABEL_166:
  if (v83 >= *(v42 + 16))
  {
    __break(1u);
    goto LABEL_340;
  }

  memcpy(__dst, (v2 + 504 * v83), 0x1F8uLL);
  v85 = 0;
  ++v83;
  v86 = 1 << *(__dst[61] + 32);
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  else
  {
    v87 = -1;
  }

  v88 = v87 & *(__dst[61] + 56);
  v89 = (v86 + 63) >> 6;
LABEL_171:
  if (v88)
  {
    v90 = v85;
    goto LABEL_177;
  }

  while (1)
  {
    v90 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      break;
    }

    if (v90 >= v89)
    {
      if (v83 == v48)
      {
        goto LABEL_183;
      }

      goto LABEL_166;
    }

    v88 = *(__dst[61] + 56 + 8 * v90);
    ++v85;
    if (v88)
    {
      v85 = v90;
LABEL_177:
      v91 = __clz(__rbit64(v88));
      v88 &= v88 - 1;
      if (*(*(__dst[61] + 48) + 152 * (v91 | (v90 << 6)) + 24))
      {

        sub_2529353AC(__dst, v201);

        v199[0] = v84;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA480(0, *(v84 + 16) + 1, 1);
          v84 = v199[0];
        }

        v93 = *(v84 + 16);
        v92 = *(v84 + 24);
        v94 = v84;
        if (v93 >= v92 >> 1)
        {
          sub_2529AA480((v92 > 1), v93 + 1, 1);
          v94 = v199[0];
        }

        *(v94 + 16) = v93 + 1;
        memcpy((v94 + 504 * v93 + 32), __dst, 0x1F8uLL);
        v42 = v184;
        v84 = v94;
        if (v83 != v48)
        {
          goto LABEL_166;
        }

LABEL_183:
        v191 = v84;
        v95 = 0;
        v96 = MEMORY[0x277D84F90];
        v10 = 504;
        v1 = 1;
        v11 = -1;
        v79 = 152;
LABEL_185:
        if (v95 >= *(v42 + 16))
        {
          goto LABEL_347;
        }

        memcpy(__dst, (v2 + 504 * v95), 0x1F8uLL);
        v97 = 0;
        ++v95;
        v98 = 1 << *(__dst[61] + 32);
        if (v98 < 64)
        {
          v99 = ~(-1 << v98);
        }

        else
        {
          v99 = -1;
        }

        v100 = v99 & *(__dst[61] + 56);
        v101 = (v98 + 63) >> 6;
LABEL_190:
        if (v100)
        {
          v102 = v97;
          goto LABEL_196;
        }

        while (1)
        {
          v102 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
            break;
          }

          if (v102 >= v101)
          {
            if (v95 == v48)
            {
              goto LABEL_211;
            }

            goto LABEL_185;
          }

          v100 = *(__dst[61] + 56 + 8 * v102);
          ++v97;
          if (v100)
          {
            v97 = v102;
LABEL_196:
            v103 = __clz(__rbit64(v100));
            v100 &= v100 - 1;
            if (*(*(__dst[61] + 48) + 152 * (v103 | (v102 << 6)) + 80) != 52)
            {

              sub_2529353AC(__dst, v201);

              v199[0] = v96;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_2529AA480(0, *(v96 + 16) + 1, 1);
                v96 = v199[0];
              }

              v105 = *(v96 + 16);
              v104 = *(v96 + 24);
              v106 = v96;
              if (v105 >= v104 >> 1)
              {
                sub_2529AA480((v104 > 1), v105 + 1, 1);
                v106 = v199[0];
              }

              *(v106 + 16) = v105 + 1;
              memcpy((v106 + 504 * v105 + 32), __dst, 0x1F8uLL);
              v42 = v184;
              v96 = v106;
              if (v95 != v48)
              {
                goto LABEL_185;
              }

LABEL_211:
              v192 = v96;
              v110 = 0;
              v3 = MEMORY[0x277D84F90];
              v10 = 504;
              v1 = 152;
LABEL_213:
              if (v110 >= *(v42 + 16))
              {
                goto LABEL_349;
              }

              memcpy(__dst, (v2 + 504 * v110), 0x1F8uLL);
              v111 = 0;
              ++v110;
              v112 = 1 << *(__dst[61] + 32);
              if (v112 < 64)
              {
                v113 = ~(-1 << v112);
              }

              else
              {
                v113 = -1;
              }

              v114 = v113 & *(__dst[61] + 56);
              v115 = (v112 + 63) >> 6;
              while (1)
              {
                if (v114)
                {
                  v116 = v111;
                  goto LABEL_224;
                }

                do
                {
                  v116 = v111 + 1;
                  if (__OFADD__(v111, 1))
                  {
                    __break(1u);
LABEL_303:
                    __break(1u);
LABEL_304:
                    v79 = v190;
                    goto LABEL_305;
                  }

                  if (v116 >= v115)
                  {
                    if (v110 == v48)
                    {
                      goto LABEL_232;
                    }

                    goto LABEL_213;
                  }

                  v114 = *(__dst[61] + 56 + 8 * v116);
                  ++v111;
                }

                while (!v114);
                v111 = v116;
LABEL_224:
                v117 = __clz(__rbit64(v114));
                v114 &= v114 - 1;
                if (*(*(__dst[61] + 48) + 152 * (v117 | (v116 << 6)) + 96))
                {

                  sub_2529353AC(__dst, v201);

                  v199[0] = v3;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_2529AA480(0, *(v3 + 16) + 1, 1);
                    v3 = v199[0];
                  }

                  v119 = *(v3 + 16);
                  v118 = *(v3 + 24);
                  if (v119 >= v118 >> 1)
                  {
                    sub_2529AA480((v118 > 1), v119 + 1, 1);
                    v3 = v199[0];
                  }

                  *(v3 + 16) = v119 + 1;
                  memcpy((v3 + 504 * v119 + 32), __dst, 0x1F8uLL);
                  v42 = v184;
                  if (v110 != v48)
                  {
                    goto LABEL_213;
                  }

LABEL_232:
                  v120 = 0;
                  v11 = MEMORY[0x277D84F90];
                  v10 = 504;
                  v1 = 152;
LABEL_234:
                  if (v120 >= *(v42 + 16))
                  {
                    __break(1u);
LABEL_357:
                    __break(1u);
LABEL_358:
                    __break(1u);
LABEL_359:
                    __break(1u);
LABEL_360:

                    v178 = *(v2 + 16);
                    if (v178)
                    {
                      memcpy(__dst, (v2 + 32), 0x1F8uLL);
                      v199[0] = MEMORY[0x277D84F90];
                      sub_2529353AC(__dst, v201);
                      v179 = 0;
                      v180 = 520;
                      while (v179 < *(v2 + 16))
                      {
                        ++v179;

                        sub_25297BDA8(v181);
                        v180 += 504;
                        if (v178 == v179)
                        {
                          goto LABEL_313;
                        }
                      }

                      goto LABEL_376;
                    }

LABEL_366:

                    if (qword_27F53F520 != -1)
                    {
                      goto LABEL_380;
                    }

                    goto LABEL_367;
                  }

                  memcpy(__dst, (v2 + 504 * v120), 0x1F8uLL);
                  v121 = 0;
                  ++v120;
                  v122 = 1 << *(__dst[61] + 32);
                  if (v122 < 64)
                  {
                    v123 = ~(-1 << v122);
                  }

                  else
                  {
                    v123 = -1;
                  }

                  v124 = v123 & *(__dst[61] + 56);
                  v125 = (v122 + 63) >> 6;
                  while (1)
                  {
                    if (v124)
                    {
                      v126 = v121;
                      goto LABEL_245;
                    }

                    do
                    {
                      v126 = v121 + 1;
                      if (__OFADD__(v121, 1))
                      {
                        goto LABEL_303;
                      }

                      if (v126 >= v125)
                      {
                        if (v120 == v48)
                        {
                          goto LABEL_254;
                        }

                        goto LABEL_234;
                      }

                      v124 = *(__dst[61] + 56 + 8 * v126);
                      ++v121;
                    }

                    while (!v124);
                    v121 = v126;
LABEL_245:
                    v127 = __clz(__rbit64(v124));
                    v124 &= v124 - 1;
                    if (*(*(__dst[61] + 48) + 152 * (v127 | (v126 << 6)) + 112))
                    {

                      sub_2529353AC(__dst, v201);

                      v199[0] = v11;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_2529AA480(0, *(v11 + 16) + 1, 1);
                        v11 = v199[0];
                      }

                      v129 = *(v11 + 16);
                      v128 = *(v11 + 24);
                      v130 = v11;
                      if (v129 >= v128 >> 1)
                      {
                        sub_2529AA480((v128 > 1), v129 + 1, 1);
                        v130 = v199[0];
                      }

                      *(v130 + 16) = v129 + 1;
                      memcpy((v130 + 504 * v129 + 32), __dst, 0x1F8uLL);
                      v42 = v184;
                      v11 = v130;
                      if (v120 == v48)
                      {
                        goto LABEL_254;
                      }

                      goto LABEL_234;
                    }
                  }
                }
              }
            }

            goto LABEL_190;
          }
        }

        __break(1u);
LABEL_275:

        v141 = *(v79 + 16);
        v3 = v192;
        if (v141)
        {

          if (!*(v79 + 16))
          {
            goto LABEL_373;
          }

          memcpy(__dst, (v79 + 32), 0x1F8uLL);
          v199[0] = MEMORY[0x277D84F90];
          sub_2529353AC(__dst, v201);
          v142 = 0;
          v143 = 520;
          while (v142 < *(v79 + 16))
          {
            ++v142;

            sub_25297BDA8(v144);
            v143 += 504;
            if (v141 == v142)
            {
              goto LABEL_313;
            }
          }

          goto LABEL_358;
        }

LABEL_308:

        v156 = *(v1 + 16);
        if (v156)
        {

          if (!*(v1 + 16))
          {
            goto LABEL_375;
          }

          memcpy(__dst, (v1 + 32), 0x1F8uLL);
          v199[0] = MEMORY[0x277D84F90];
          sub_2529353AC(__dst, v201);
          v157 = 0;
          v158 = 520;
          while (v157 < *(v1 + 16))
          {
            ++v157;

            sub_25297BDA8(v159);
            v158 += 504;
            if (v156 == v157)
            {
              goto LABEL_313;
            }
          }

          __break(1u);
          goto LABEL_366;
        }

LABEL_329:

        v166 = *(v3 + 16);
        if (v166)
        {

          if (*(v3 + 16))
          {
            memcpy(__dst, (v3 + 32), 0x1F8uLL);
            v199[0] = MEMORY[0x277D84F90];
            sub_2529353AC(__dst, v201);
            v167 = 0;
            v168 = 520;
            while (v167 < *(v3 + 16))
            {
              ++v167;

              sub_25297BDA8(v169);
              v168 += 504;
              if (v166 == v167)
              {
                goto LABEL_313;
              }
            }

            __break(1u);
            goto LABEL_371;
          }

          goto LABEL_377;
        }

LABEL_340:

        v170 = *(v11 + 16);
        if (v170)
        {

          if (*(v11 + 16))
          {
            memcpy(__dst, (v11 + 32), 0x1F8uLL);
            v199[0] = MEMORY[0x277D84F90];
            sub_2529353AC(__dst, v201);
            v171 = 0;
            v172 = 520;
            while (v171 < *(v11 + 16))
            {
              ++v171;

              sub_25297BDA8(v173);
              v172 += 504;
              if (v170 == v171)
              {
LABEL_313:

                v160 = sub_252C765E0(v199[0]);

                memcpy(v201, __dst, sizeof(v201));
                sub_252E1EBE8(v201);

                sub_252E1E320(v160);

                sub_252935408(__dst);

                sub_252E1E4F8(__src);

                v161 = (__src[4] + 32);
                v162 = *(__src[4] + 16);
                while (v162)
                {
                  if (*v161 <= 2u && *v161 && *v161 != 2)
                  {

LABEL_322:
                    memcpy(v198, __src, sizeof(v198));
                    memcpy(__dst, __src, 0x1F8uLL);
                    sub_2529353AC(v198, v201);
                    sub_252AF86D4(v201, __dst);
                    memcpy(v199, __dst, sizeof(v199));
                    sub_252935408(v199);
                    memcpy(__dst, __src, 0x1F8uLL);
                    sub_252935408(__dst);
                    memcpy(__src, v201, sizeof(__src));
                    if (qword_27F53F520 != -1)
                    {
                      goto LABEL_369;
                    }

                    goto LABEL_323;
                  }

                  v163 = sub_252E37DB4();

                  ++v161;
                  --v162;
                  if (v163)
                  {
                    goto LABEL_322;
                  }
                }

                goto LABEL_324;
              }
            }

            goto LABEL_372;
          }

          goto LABEL_378;
        }

LABEL_350:

        v174 = *(v10 + 16);
        if (v174)
        {

          if (*(v10 + 16))
          {
            memcpy(__dst, (v10 + 32), 0x1F8uLL);
            v199[0] = MEMORY[0x277D84F90];
            sub_2529353AC(__dst, v201);
            v175 = 0;
            v176 = 520;
            while (v175 < *(v10 + 16))
            {
              ++v175;

              sub_25297BDA8(v177);
              v176 += 504;
              if (v174 == v175)
              {
                goto LABEL_313;
              }
            }

            goto LABEL_374;
          }

          goto LABEL_379;
        }

        goto LABEL_360;
      }

      goto LABEL_171;
    }
  }

  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  v188 = v11;
  v131 = 0;
  v10 = MEMORY[0x277D84F90];
  v11 = 504;
  do
  {
LABEL_256:
    if (v131 >= *(v42 + 16))
    {
      goto LABEL_357;
    }

    memcpy(__dst, (v2 + 504 * v131), 0x1F8uLL);
    v132 = 0;
    ++v131;
    v133 = 1 << *(__dst[61] + 32);
    if (v133 < 64)
    {
      v134 = ~(-1 << v133);
    }

    else
    {
      v134 = -1;
    }

    v135 = v134 & *(__dst[61] + 56);
    v136 = (v133 + 63) >> 6;
LABEL_261:
    if (v135)
    {
      v137 = v132;
      goto LABEL_267;
    }

    while (1)
    {
      v137 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
        __break(1u);
        goto LABEL_326;
      }

      if (v137 >= v136)
      {
        break;
      }

      v135 = *(__dst[61] + 56 + 8 * v137);
      ++v132;
      if (v135)
      {
        v132 = v137;
LABEL_267:
        v138 = __clz(__rbit64(v135));
        v135 &= v135 - 1;
        if (!*(*(__dst[61] + 48) + 152 * (v138 | (v137 << 6)) + 128))
        {
          goto LABEL_261;
        }

        sub_2529353AC(__dst, v201);

        v199[0] = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA480(0, *(v10 + 16) + 1, 1);
          v10 = v199[0];
        }

        v140 = *(v10 + 16);
        v139 = *(v10 + 24);
        if (v140 >= v139 >> 1)
        {
          sub_2529AA480((v139 > 1), v140 + 1, 1);
          v10 = v199[0];
        }

        *(v10 + 16) = v140 + 1;
        v11 = 504;
        memcpy((v10 + 504 * v140 + 32), __dst, 0x1F8uLL);
        v42 = v184;
        if (v131 == v48)
        {
          goto LABEL_281;
        }

        goto LABEL_256;
      }
    }
  }

  while (v131 != v48);
LABEL_281:
  v145 = 0;
  v189 = MEMORY[0x277D84F90];
  v11 = 152;
  do
  {
    v1 = v191;
LABEL_284:
    if (v145 >= *(v42 + 16))
    {
      goto LABEL_359;
    }

    memcpy(__dst, (v2 + 504 * v145), 0x1F8uLL);
    v146 = 0;
    ++v145;
    v147 = 1 << *(__dst[61] + 32);
    if (v147 < 64)
    {
      v148 = ~(-1 << v147);
    }

    else
    {
      v148 = -1;
    }

    v149 = v148 & *(__dst[61] + 56);
    v150 = (v147 + 63) >> 6;
    do
    {
      if (v149)
      {
        v151 = v146;
        goto LABEL_295;
      }

      do
      {
        v151 = v146 + 1;
        if (__OFADD__(v146, 1))
        {
          goto LABEL_327;
        }

        if (v151 >= v150)
        {
          if (v145 == v48)
          {
            goto LABEL_304;
          }

          goto LABEL_284;
        }

        v149 = *(__dst[61] + 56 + 8 * v151);
        ++v146;
      }

      while (!v149);
      v146 = v151;
LABEL_295:
      v152 = __clz(__rbit64(v149));
      v149 &= v149 - 1;
    }

    while (!*(*(__dst[61] + 48) + 152 * (v152 | (v151 << 6)) + 56));

    sub_2529353AC(__dst, v201);

    v153 = v189;
    v199[0] = v189;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2529AA480(0, *(v189 + 16) + 1, 1);
      v153 = v199[0];
    }

    v155 = *(v153 + 16);
    v154 = *(v153 + 24);
    if (v155 >= v154 >> 1)
    {
      sub_2529AA480((v154 > 1), v155 + 1, 1);
      v153 = v199[0];
    }

    *(v153 + 16) = v155 + 1;
    v189 = v153;
    memcpy((v153 + 504 * v155 + 32), __dst, 0x1F8uLL);
    v42 = v184;
  }

  while (v145 != v48);
  while (1)
  {
    v79 = v190;
    v1 = v191;
LABEL_305:
    v11 = v188;
    v2 = v189;
LABEL_158:

    _s7BuilderCMa_1();
    swift_allocObject();
    sub_252E1E238();
    v80 = *(v3 + 16);
    if (!v80)
    {
      break;
    }

    if (!*(v3 + 16))
    {
      __break(1u);
LABEL_369:
      swift_once();
LABEL_323:
      v164 = sub_252E36AD4();
      __swift_project_value_buffer(v164, qword_27F544E08);
      sub_252E379F4();
      v196 = 0;
      v197 = 0xE000000000000000;
      MEMORY[0x2530AD570](0xD000000000000052, 0x8000000252E7A9D0);
      memcpy(v195, __src, 0x1E8uLL);
      v195[61] = __src[61];
      v195[62] = __src[62];
      v165 = HomeAutomationIntent.description.getter();
      MEMORY[0x2530AD570](v165);

      sub_252CC3D90(v196, v197, 0xD00000000000009CLL, 0x8000000252E7AA30);

      __src[61] = MEMORY[0x277D84FA0];
LABEL_324:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_252E3C290;
      memcpy((v3 + 32), __src, 0x1F8uLL);

      return v3;
    }

    memcpy(__dst, (v3 + 32), 0x1F8uLL);
    v199[0] = MEMORY[0x277D84F90];
    sub_2529353AC(__dst, v201);
    v81 = 0;
    v10 = 520;
    while (v81 < *(v3 + 16))
    {
      ++v81;

      sub_25297BDA8(v82);
      v10 += 504;
      if (v80 == v81)
      {
        goto LABEL_313;
      }
    }

LABEL_337:
    __break(1u);
  }

  v107 = *(v193 + 16);
  if (!v107)
  {
    goto LABEL_275;
  }

  if (*(v193 + 16))
  {
    memcpy(__dst, (v193 + 32), 0x1F8uLL);
    v199[0] = MEMORY[0x277D84F90];
    sub_2529353AC(__dst, v201);
    v10 = 0;
    v108 = 520;
    while (v10 < *(v193 + 16))
    {
      ++v10;

      sub_25297BDA8(v109);
      v108 += 504;
      if (v107 == v10)
      {
        goto LABEL_313;
      }
    }

    goto LABEL_348;
  }

LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  swift_once();
LABEL_367:
  v182 = sub_252E36AD4();
  __swift_project_value_buffer(v182, qword_27F544E08);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E7AAD0, 0xD00000000000009CLL, 0x8000000252E7AA30);

  v3 = v183;
LABEL_88:

  return v3;
}

uint64_t *sub_252AF86D4@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>)
{
  memcpy(__dst, __src, 0x1F8uLL);
  v5 = __dst[61];
  if (*(__dst[61] + 16))
  {
    v6 = 0;
    v7 = __dst[61] + 56;
    v8 = 1 << *(__dst[61] + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(__dst[61] + 56);
    while (v10)
    {
LABEL_10:
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = *(__dst[61] + 48) + 152 * (v12 | (v6 << 6));
      if (*(v13 + 8))
      {
        v14 = 0;
      }

      else
      {
        v14 = *(v13 + 24) == 0;
      }

      if (v14 && *(v13 + 40) == 0 && *(v13 + 56) == 0 && *(v13 + 72) == 0)
      {
        v18 = *(v13 + 80);
        v19 = *(v13 + 96);
        v20 = *(v13 + 112);
        v21 = v18 == 52 && v19 == 0;
        if (v21 && v20 == 0)
        {
          goto LABEL_32;
        }
      }
    }

    while (1)
    {
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_159;
      }

      if (v11 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v10 = *(v7 + 8 * v11);
      ++v6;
      if (v10)
      {
        v6 = v11;
        goto LABEL_10;
      }
    }

    _s7BuilderCMa_1();
    swift_allocObject();
    sub_252E1E238();
    memcpy(v195, __src, sizeof(v195));
    v2 = sub_252E1EBE8(v195);

    v24 = 0;
    v25 = 1 << *(v5 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v5 + 56);
    v28 = (v25 + 63) >> 6;
    while (v27)
    {
      v29 = v24;
LABEL_42:
      v30 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      if (!*(*(v5 + 48) + 152 * (v30 | (v29 << 6)) + 96))
      {
        v31 = 0;
        v32 = 1 << *(v5 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & *(v5 + 56);
        v35 = (v32 + 63) >> 6;
        while (v34)
        {
          v36 = v31;
LABEL_52:
          v37 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          if (!*(*(v5 + 48) + 152 * (v37 | (v36 << 6)) + 40))
          {
            v38 = 0;
            v39 = 1 << *(v5 + 32);
            v40 = -1;
            if (v39 < 64)
            {
              v40 = ~(-1 << v39);
            }

            v41 = v40 & *(v5 + 56);
            v42 = (v39 + 63) >> 6;
            while (v41)
            {
              v43 = v38;
LABEL_62:
              v44 = __clz(__rbit64(v41));
              v41 &= v41 - 1;
              if (!*(*(v5 + 48) + 152 * (v44 | (v43 << 6)) + 72))
              {
                v45 = 0;
                v46 = 1 << *(v5 + 32);
                v47 = -1;
                if (v46 < 64)
                {
                  v47 = ~(-1 << v46);
                }

                v48 = v47 & *(v5 + 56);
                v49 = (v46 + 63) >> 6;
                while (v48)
                {
                  v50 = v45;
LABEL_72:
                  v51 = __clz(__rbit64(v48));
                  v48 &= v48 - 1;
                  if (!*(*(v5 + 48) + 152 * (v51 | (v50 << 6)) + 24))
                  {
                    v190 = a1;
                    v52 = 0;
                    v53 = 1 << *(v5 + 32);
                    v54 = -1;
                    if (v53 < 64)
                    {
                      v54 = ~(-1 << v53);
                    }

                    v55 = v54 & *(v5 + 56);
                    v56 = (v53 + 63) >> 6;
                    while (v55)
                    {
                      v57 = v52;
LABEL_82:
                      v58 = __clz(__rbit64(v55));
                      v55 &= v55 - 1;
                      if (*(*(v5 + 48) + 152 * (v58 | (v57 << 6)) + 80) == 52)
                      {
                        v59 = 0;
                        v60 = 1 << *(v5 + 32);
                        v61 = -1;
                        if (v60 < 64)
                        {
                          v61 = ~(-1 << v60);
                        }

                        v62 = v61 & *(v5 + 56);
                        v63 = (v60 + 63) >> 6;
                        while (v62)
                        {
                          v64 = v59;
LABEL_92:
                          v65 = __clz(__rbit64(v62));
                          v62 &= v62 - 1;
                          if (!*(*(v5 + 48) + 152 * (v65 | (v64 << 6)) + 112))
                          {
                            v66 = 0;
                            v67 = 1 << *(v5 + 32);
                            v68 = -1;
                            if (v67 < 64)
                            {
                              v68 = ~(-1 << v67);
                            }

                            v69 = v68 & *(v5 + 56);
                            v70 = (v67 + 63) >> 6;
                            while (v69)
                            {
                              v71 = v66;
LABEL_102:
                              v72 = __clz(__rbit64(v69));
                              v69 &= v69 - 1;
                              if (!*(*(v5 + 48) + 152 * (v72 | (v71 << 6)) + 56))
                              {
                                goto LABEL_121;
                              }
                            }

                            while (1)
                            {
                              v71 = v66 + 1;
                              if (__OFADD__(v66, 1))
                              {
                                goto LABEL_253;
                              }

                              if (v71 >= v70)
                              {
                                goto LABEL_235;
                              }

                              v69 = *(v7 + 8 * v71);
                              ++v66;
                              if (v69)
                              {
                                v66 = v71;
                                goto LABEL_102;
                              }
                            }
                          }
                        }

                        while (1)
                        {
                          v64 = v59 + 1;
                          if (__OFADD__(v59, 1))
                          {
                            break;
                          }

                          if (v64 >= v63)
                          {
                            goto LABEL_217;
                          }

                          v62 = *(v7 + 8 * v64);
                          ++v59;
                          if (v62)
                          {
                            v59 = v64;
                            goto LABEL_92;
                          }
                        }

                        __break(1u);
                        goto LABEL_252;
                      }
                    }

                    while (1)
                    {
                      v57 = v52 + 1;
                      if (__OFADD__(v52, 1))
                      {
                        break;
                      }

                      if (v57 >= v56)
                      {
                        goto LABEL_198;
                      }

                      v55 = *(v7 + 8 * v57);
                      ++v52;
                      if (v55)
                      {
                        v52 = v57;
                        goto LABEL_82;
                      }
                    }

                    __break(1u);
                    goto LABEL_234;
                  }
                }

                while (1)
                {
                  v50 = v45 + 1;
                  if (__OFADD__(v45, 1))
                  {
                    break;
                  }

                  if (v50 >= v49)
                  {
                    goto LABEL_180;
                  }

                  v48 = *(v7 + 8 * v50);
                  ++v45;
                  if (v48)
                  {
                    v45 = v50;
                    goto LABEL_72;
                  }
                }

                __break(1u);
                goto LABEL_216;
              }
            }

            while (1)
            {
              v43 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                break;
              }

              if (v43 >= v42)
              {
                goto LABEL_161;
              }

              v41 = *(v7 + 8 * v43);
              ++v38;
              if (v41)
              {
                v38 = v43;
                goto LABEL_62;
              }
            }

            __break(1u);
            goto LABEL_197;
          }
        }

        while (1)
        {
          v36 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            __break(1u);
            goto LABEL_178;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = *(v7 + 8 * v36);
          ++v31;
          if (v34)
          {
            v31 = v36;
            goto LABEL_52;
          }
        }

        v86 = 1 << *(v5 + 32);
        v87 = -1;
        if (v86 < 64)
        {
          v87 = ~(-1 << v86);
        }

        v88 = v87 & *(v5 + 56);
        v89 = (v86 + 63) >> 6;

        v90 = 0;
        v91 = MEMORY[0x277D84F90];
        v192 = v2;
        if (!v88)
        {
          goto LABEL_129;
        }

        do
        {
LABEL_127:
          while (1)
          {
            v92 = __clz(__rbit64(v88));
            v88 &= v88 - 1;
            v93 = *(v5 + 48) + 152 * (v92 | (v90 << 6));
            v94 = *(v93 + 40);
            if (v94)
            {
              break;
            }

            if (!v88)
            {
              goto LABEL_129;
            }
          }

          v183 = *(v93 + 32);

          v190 = a1;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v91 = sub_2529F7A80(0, *(v91 + 2) + 1, 1, v91);
          }

          v2 = *(v91 + 2);
          v96 = *(v91 + 3);
          if (v2 >= v96 >> 1)
          {
            v91 = sub_2529F7A80((v96 > 1), v2 + 1, 1, v91);
          }

          *(v91 + 2) = v2 + 1;
          v97 = &v91[16 * v2];
          *(v97 + 4) = v183;
          *(v97 + 5) = v94;
        }

        while (v88);
LABEL_129:
        while (1)
        {
          v95 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            break;
          }

          if (v95 >= v89)
          {
            v2 = a1;

            v98 = 1 << *(v5 + 32);
            v99 = -1;
            if (v98 < 64)
            {
              v99 = ~(-1 << v98);
            }

            v100 = v99 & *(v5 + 56);
            v101 = (v98 + 63) >> 6;

            v102 = 0;
            for (i = MEMORY[0x277D84F90]; v100; *(v111 + 5) = v106)
            {
LABEL_142:
              while (1)
              {
                v104 = __clz(__rbit64(v100));
                v100 &= v100 - 1;
                v105 = *(v5 + 48) + 152 * (v104 | (v102 << 6));
                v106 = *(v105 + 72);
                if (v106)
                {
                  break;
                }

                if (!v100)
                {
                  goto LABEL_144;
                }
              }

              v184 = *(v105 + 64);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                i = sub_2529F7A80(0, *(i + 2) + 1, 1, i);
              }

              v109 = *(i + 2);
              v108 = *(i + 3);
              v110 = v109 + 1;
              if (v109 >= v108 >> 1)
              {
                v179 = v109 + 1;
                v112 = i;
                v113 = *(i + 2);
                v114 = sub_2529F7A80((v108 > 1), v109 + 1, 1, v112);
                v109 = v113;
                v110 = v179;
                i = v114;
              }

              *(i + 2) = v110;
              v111 = &i[16 * v109];
              *(v111 + 4) = v184;
            }

LABEL_144:
            a1 = v2;
            while (1)
            {
              v107 = v102 + 1;
              if (__OFADD__(v102, 1))
              {
                goto LABEL_179;
              }

              if (v107 >= v101)
              {

                *(v192 + 168) = v91;

                v115 = *(v91 + 2);

                if (v115 == *(i + 2))
                {
                  *(v192 + 184) = i;
                }

                goto LABEL_120;
              }

              v100 = *(v7 + 8 * v107);
              ++v102;
              if (v100)
              {
                v102 = v107;
                goto LABEL_142;
              }
            }
          }

          v88 = *(v7 + 8 * v95);
          ++v90;
          if (v88)
          {
            v90 = v95;
            goto LABEL_127;
          }
        }

LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v129 = 1 << *(v5 + 32);
        v130 = -1;
        if (v129 < 64)
        {
          v130 = ~(-1 << v129);
        }

        v131 = v130 & *(v5 + 56);
        v132 = (v129 + 63) >> 6;

        v133 = 0;
        v134 = MEMORY[0x277D84F90];
        if (!v131)
        {
          goto LABEL_185;
        }

        do
        {
LABEL_183:
          while (1)
          {
            v135 = __clz(__rbit64(v131));
            v131 &= v131 - 1;
            v136 = *(v5 + 48) + 152 * (v135 | (v133 << 6));
            v137 = *(v136 + 24);
            if (v137)
            {
              break;
            }

            if (!v131)
            {
              goto LABEL_185;
            }
          }

          v190 = a1;
          v194 = v2;
          v186 = *(v136 + 16);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v134 = sub_2529F7A80(0, *(v134 + 2) + 1, 1, v134);
          }

          v140 = *(v134 + 2);
          v139 = *(v134 + 3);
          if (v140 >= v139 >> 1)
          {
            v134 = sub_2529F7A80((v139 > 1), v140 + 1, 1, v134);
          }

          *(v134 + 2) = v140 + 1;
          v141 = &v134[16 * v140];
          *(v141 + 4) = v186;
          *(v141 + 5) = v137;
          v2 = v194;
        }

        while (v131);
LABEL_185:
        while (1)
        {
          v138 = v133 + 1;
          if (__OFADD__(v133, 1))
          {
            break;
          }

          if (v138 >= v132)
          {

            sub_252E1F3E8(v134);

            goto LABEL_121;
          }

          v131 = *(v7 + 8 * v138);
          ++v133;
          if (v131)
          {
            v133 = v138;
            goto LABEL_183;
          }
        }

LABEL_216:
        __break(1u);
LABEL_217:
        v153 = 1 << *(v5 + 32);
        v154 = -1;
        if (v153 < 64)
        {
          v154 = ~(-1 << v153);
        }

        v155 = v154 & *(v5 + 56);
        v156 = (v153 + 63) >> 6;

        v157 = 0;
        v158 = MEMORY[0x277D84F90];
        if (!v155)
        {
          goto LABEL_222;
        }

        do
        {
LABEL_220:
          while (1)
          {
            v159 = __clz(__rbit64(v155));
            v155 &= v155 - 1;
            v160 = *(v5 + 48) + 152 * (v159 | (v157 << 6));
            v161 = *(v160 + 112);
            if (v161)
            {
              break;
            }

            if (!v155)
            {
              goto LABEL_222;
            }
          }

          v180 = *(v160 + 104);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2529F7A80(0, v158[2] + 1, 1, v158);
            v158 = result;
          }

          v164 = v158[2];
          v163 = v158[3];
          v188 = v164 + 1;
          if (v164 >= v163 >> 1)
          {
            result = sub_2529F7A80((v163 > 1), v188, 1, v158);
            v158 = result;
          }

          v158[2] = v188;
          v165 = &v158[2 * v164];
          v165[4] = v180;
          v165[5] = v161;
        }

        while (v155);
LABEL_222:
        while (1)
        {
          v162 = v157 + 1;
          if (__OFADD__(v157, 1))
          {
            break;
          }

          if (v162 >= v156)
          {

            *(v2 + 240) = v158;
            goto LABEL_214;
          }

          v155 = *(v7 + 8 * v162);
          ++v157;
          if (v155)
          {
            v157 = v162;
            goto LABEL_220;
          }
        }

LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
        goto LABEL_254;
      }
    }

    while (1)
    {
      v29 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v29 >= v28)
      {
        v73 = 1 << *(v5 + 32);
        v74 = -1;
        if (v73 < 64)
        {
          v74 = ~(-1 << v73);
        }

        v75 = v74 & *(v5 + 56);
        v76 = (v73 + 63) >> 6;

        v77 = 0;
        v78 = MEMORY[0x277D84F90];
        if (!v75)
        {
          goto LABEL_109;
        }

        do
        {
LABEL_107:
          while (1)
          {
            v79 = __clz(__rbit64(v75));
            v75 &= v75 - 1;
            v80 = *(v5 + 48) + 152 * (v79 | (v77 << 6));
            v81 = *(v80 + 96);
            if (v81)
            {
              break;
            }

            if (!v75)
            {
              goto LABEL_109;
            }
          }

          v182 = *(v80 + 88);

          v190 = a1;
          v191 = v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_2529F7A80(0, *(v78 + 2) + 1, 1, v78);
          }

          v84 = *(v78 + 2);
          v83 = *(v78 + 3);
          if (v84 >= v83 >> 1)
          {
            v78 = sub_2529F7A80((v83 > 1), v84 + 1, 1, v78);
          }

          *(v78 + 2) = v84 + 1;
          v85 = &v78[16 * v84];
          *(v85 + 4) = v182;
          *(v85 + 5) = v81;
          v2 = v191;
        }

        while (v75);
LABEL_109:
        while (1)
        {
          v82 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            goto LABEL_160;
          }

          if (v82 >= v76)
          {

            *(v2 + 120) = v78;
LABEL_120:

LABEL_121:
            sub_252E1E4F8(a1);
          }

          v75 = *(v7 + 8 * v82);
          ++v77;
          if (v75)
          {
            v77 = v82;
            goto LABEL_107;
          }
        }
      }

      v27 = *(v7 + 8 * v29);
      ++v24;
      if (v27)
      {
        v24 = v29;
        goto LABEL_42;
      }
    }

LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    v116 = 1 << *(v5 + 32);
    v117 = -1;
    if (v116 < 64)
    {
      v117 = ~(-1 << v116);
    }

    v118 = v117 & *(v5 + 56);
    v119 = (v116 + 63) >> 6;

    v120 = 0;
    v121 = MEMORY[0x277D84F90];
    if (!v118)
    {
      goto LABEL_166;
    }

    do
    {
LABEL_164:
      while (1)
      {
        v122 = __clz(__rbit64(v118));
        v118 &= v118 - 1;
        v123 = *(v5 + 48) + 152 * (v122 | (v120 << 6));
        v124 = *(v123 + 72);
        if (v124)
        {
          break;
        }

        if (!v118)
        {
          goto LABEL_166;
        }
      }

      v185 = *(v123 + 64);

      v190 = a1;
      v193 = v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v121 = sub_2529F7A80(0, *(v121 + 2) + 1, 1, v121);
      }

      v127 = *(v121 + 2);
      v126 = *(v121 + 3);
      if (v127 >= v126 >> 1)
      {
        v121 = sub_2529F7A80((v126 > 1), v127 + 1, 1, v121);
      }

      *(v121 + 2) = v127 + 1;
      v128 = &v121[16 * v127];
      *(v128 + 4) = v185;
      *(v128 + 5) = v124;
      v2 = v193;
    }

    while (v118);
LABEL_166:
    while (1)
    {
      v125 = v120 + 1;
      if (__OFADD__(v120, 1))
      {
        break;
      }

      if (v125 >= v119)
      {

        *(v2 + 184) = v121;
        goto LABEL_120;
      }

      v118 = *(v7 + 8 * v125);
      ++v120;
      if (v118)
      {
        v120 = v125;
        goto LABEL_164;
      }
    }

LABEL_197:
    __break(1u);
LABEL_198:
    v142 = 1 << *(v5 + 32);
    v143 = -1;
    if (v142 < 64)
    {
      v143 = ~(-1 << v142);
    }

    v144 = v143 & *(v5 + 56);
    v145 = (v142 + 63) >> 6;

    v146 = 0;
    v147 = MEMORY[0x277D84F90];
    if (!v144)
    {
      goto LABEL_203;
    }

    do
    {
LABEL_201:
      while (1)
      {
        v148 = __clz(__rbit64(v144));
        v144 &= v144 - 1;
        v149 = *(*(v5 + 48) + 152 * (v148 | (v146 << 6)) + 80);
        if (v149 != 52)
        {
          break;
        }

        if (!v144)
        {
          goto LABEL_203;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v147 = sub_2529F80DC(0, *(v147 + 2) + 1, 1, v147);
      }

      v152 = *(v147 + 2);
      v151 = *(v147 + 3);
      v187 = v152 + 1;
      if (v152 >= v151 >> 1)
      {
        v147 = sub_2529F80DC((v151 > 1), v187, 1, v147);
      }

      *(v147 + 2) = v187;
      v147[v152 + 32] = v149;
    }

    while (v144);
LABEL_203:
    while (1)
    {
      v150 = v146 + 1;
      if (__OFADD__(v146, 1))
      {
        break;
      }

      if (v150 >= v145)
      {

        *(v2 + 152) = v147;
LABEL_214:

        a1 = v190;
        goto LABEL_121;
      }

      v144 = *(v7 + 8 * v150);
      ++v146;
      if (v144)
      {
        v146 = v150;
        goto LABEL_201;
      }
    }

LABEL_234:
    __break(1u);
LABEL_235:
    v166 = 1 << *(v5 + 32);
    v167 = -1;
    if (v166 < 64)
    {
      v167 = ~(-1 << v166);
    }

    v168 = v167 & *(v5 + 56);
    v169 = (v166 + 63) >> 6;

    v170 = 0;
    v171 = MEMORY[0x277D84F90];
    if (!v168)
    {
      goto LABEL_240;
    }

    do
    {
LABEL_238:
      while (1)
      {
        v172 = __clz(__rbit64(v168));
        v168 &= v168 - 1;
        v173 = *(v5 + 48) + 152 * (v172 | (v170 << 6));
        v174 = *(v173 + 56);
        if (v174)
        {
          break;
        }

        if (!v168)
        {
          goto LABEL_240;
        }
      }

      v181 = *(v173 + 48);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2529F7A80(0, v171[2] + 1, 1, v171);
        v171 = result;
      }

      v177 = v171[2];
      v176 = v171[3];
      v189 = v177 + 1;
      if (v177 >= v176 >> 1)
      {
        result = sub_2529F7A80((v176 > 1), v189, 1, v171);
        v171 = result;
      }

      v171[2] = v189;
      v178 = &v171[2 * v177];
      v178[4] = v181;
      v178[5] = v174;
    }

    while (v168);
LABEL_240:
    while (1)
    {
      v175 = v170 + 1;
      if (__OFADD__(v170, 1))
      {
        break;
      }

      if (v175 >= v169)
      {

        *(v2 + 144) = v171;
        goto LABEL_214;
      }

      v168 = *(v7 + 8 * v175);
      ++v170;
      if (v168)
      {
        v170 = v175;
        goto LABEL_238;
      }
    }

LABEL_254:
    __break(1u);
  }

  else
  {
LABEL_32:
    memcpy(a1, __src, 0x1F8uLL);
    return sub_2529353AC(__dst, v195);
  }

  return result;
}