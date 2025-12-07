id sub_252C6FEAC(void *a1, void *a2)
{
  v52 = a2;
  v3 = sub_252E36AD4();
  v4 = *(v3 - 1);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - v8;
  v10 = sub_252C6EB60(a1, v52);
  if (!v10)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v3, qword_27F544D60);
    sub_252CC3D90(0xD000000000000050, 0x8000000252E8E350, 0xD00000000000007ALL, 0x8000000252E8E210);
    v37 = v52;

    return v37;
  }

  v11 = v10;
  v50 = v9;
  v51 = v7;
  type metadata accessor for MutableHomeUserTaskResponse();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = v11;
  v14 = [v13 userTask];
  if (v14)
  {
    v15 = v14;
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    *(v12 + 16) = sub_252D6CA80(v15);
  }

  *(v12 + 24) = [v13 taskOutcome];
  type metadata accessor for MutableHomeEntityResponse();
  swift_initStackObject();
  v16 = v52;
  v17 = sub_252D6D668(v16);

  swift_beginAccess();
  v18 = *(v17 + 24);
  if (v18 >> 62)
  {
LABEL_52:
    v19 = sub_252E378C4();
    if (v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_6:
      v52 = v3;
      v49 = v13;
      v3 = (v18 & 0xC000000000000001);
      v20 = v4;
      v4 = v18 & 0xFFFFFFFFFFFFFF8;
      v47 = (v20 + 16);
      v46 = "tTemperatureValue added: ";
      v45 = "al value without localization ";
      v48 = v20;
      v44 = (v20 + 8);

      v21 = 0;
      v13 = 0;
      v43 = 0xD000000000000036;
LABEL_7:
      v22 = v13;
      do
      {
        if (v3)
        {
          v23 = MEMORY[0x2530ADF00](v22, v18);
          v13 = (v22 + 1);
          if (__OFADD__(v22, 1))
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (v22 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_52;
          }

          v23 = *(v18 + 8 * v22 + 32);

          v13 = (v22 + 1);
          if (__OFADD__(v22, 1))
          {
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }
        }

        v24 = *(v23 + 16);
        if (v24 && *(v24 + 24) == 6 && *(v24 + 16) == 5)
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v25 = v52;
          v26 = __swift_project_value_buffer(v52, qword_27F544D60);
          (*v47)(v50, v26, v25);
          v56 = 0;
          v57 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](v43, v46 | 0x8000000000000000);
          if (*(v23 + 16))
          {
            swift_beginAccess();
          }

          else
          {
            v27 = 0;
          }

          v53 = v27;
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B0, &unk_252E4BE00);
          v28 = sub_252E36F94();
          MEMORY[0x2530AD570](v28);

          MEMORY[0x2530AD570](0x3A6F74202020200ALL, 0xE900000000000020);
          if (*(v12 + 16))
          {
            swift_beginAccess();
          }

          else
          {
            v29 = 0;
          }

          v53 = v29;
          v30 = sub_252E36F94();
          MEMORY[0x2530AD570](v30);

          v31 = v50;
          sub_252CC3D90(v56, v57, 0xD00000000000007ALL, v45 | 0x8000000000000000);

          (*v44)(v31, v52);
          v32 = *(v23 + 16);

          if (!v32)
          {
            v21 = 1;
            if (v13 != v19)
            {
              goto LABEL_7;
            }

            goto LABEL_50;
          }

          v33 = *(v12 + 16);
          if (v33)
          {
            swift_beginAccess();
            v42 = *(v33 + 32);
          }

          else
          {
            v42 = 0;
          }

          v21 = 1;
          swift_beginAccess();
          *(v32 + 32) = v42;

          if (v13 == v19)
          {
LABEL_50:

            v13 = v49;
            goto LABEL_48;
          }

          goto LABEL_7;
        }

        ++v22;
      }

      while (v13 != v19);

      v13 = v49;
      v3 = v52;
      v4 = v48;
      if (v21)
      {
        goto LABEL_48;
      }
    }
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v3, qword_27F544D60);
  v35 = v51;
  (*(v4 + 16))(v51, v34, v3);
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_252E379F4();

  v53 = 0xD000000000000029;
  v54 = 0x8000000252E8E3B0;
  if (*(v12 + 16))
  {
    swift_beginAccess();
  }

  else
  {
    v36 = 0;
  }

  v55 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B0, &unk_252E4BE00);
  v39 = sub_252E36F94();
  MEMORY[0x2530AD570](v39);

  sub_252CC3D90(v53, v54, 0xD00000000000007ALL, 0x8000000252E8E210);

  (*(v4 + 8))(v35, v3);
  swift_beginAccess();

  MEMORY[0x2530AD700](v40);
  if (*((*(v17 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();
LABEL_48:
  v41 = sub_252D6C15C();

  return v41;
}

double sub_252C70710(uint64_t a1, double a2)
{
  if (a1 == 3)
  {
    v2 = (a2 + -32.0) * 5.0 / 9.0;
    return round(v2 * 100.0) / 100.0;
  }

  if (a1 == 2)
  {
    v2 = a2 * 9.0 / 5.0 + 32.0;
    return round(v2 * 100.0) / 100.0;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544C70);
  sub_252E379F4();

  v7 = sub_252C65640(a1);
  MEMORY[0x2530AD570](v7);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E8E4C0);
  sub_252CC3D90(0xD000000000000012, 0x8000000252E8E4A0, 0xD00000000000007ALL, 0x8000000252E8E210);

  return a2;
}

unint64_t sub_252C708D8()
{
  result = qword_27F544778;
  if (!qword_27F544778)
  {
    result = swift_getWitnessTable(asc_252E57D6C, &type metadata for ClimateRequestType, v0, v1);
    atomic_store(result, &qword_27F544778);
  }

  return result;
}

unint64_t sub_252C70950(unint64_t a1, void *a2, void *a3)
{
  if (a1 >> 62)
  {
LABEL_37:
    v26 = a1;
    v3 = sub_252E378C4();
    a1 = v26;
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return 0;
    }
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  v7 = a1 + 32;
  v8 = &off_279711000;
  v32 = a1 & 0xC000000000000001;
  v33 = v3;
  v31 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = a1;
  v30 = a1 + 32;
  while (1)
  {
    if (v5)
    {
      a1 = MEMORY[0x2530ADF00](v4, v29);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_36;
      }

      a1 = *(v7 + 8 * v4);
    }

    v9 = a1;
    if (__OFADD__(v4++, 1))
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v11 = [a1 v8[220]];
    if (v11)
    {
      break;
    }

LABEL_5:

    if (v4 == v3)
    {
      return 0;
    }
  }

  v12 = v11;
  type metadata accessor for HomeUserTaskResponse();
  v13 = sub_252E37264();

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v9;
    if (v14)
    {
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  a1 = sub_252E378C4();
  v14 = a1;
  v34 = v9;
  if (!a1)
  {
LABEL_4:

    v3 = v33;
    v9 = v34;
    v6 = v31;
    v5 = v32;
    v7 = v30;
    v8 = &off_279711000;
    goto LABEL_5;
  }

LABEL_13:
  v15 = 0;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      a1 = MEMORY[0x2530ADF00](v15, v13);
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      a1 = *(v13 + 8 * v15 + 32);
    }

    v16 = a1;
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v37 = a1;
    v18 = sub_252DA58F4(&v37, a2, a3);

    if (v18)
    {
      break;
    }

    ++v15;
    if (v17 == v14)
    {
      goto LABEL_4;
    }
  }

  result = sub_252DA0F40(a2, a3);
  if (result >> 62)
  {
    v27 = result;
    v28 = sub_252E378C4();
    result = v27;
    if (!v28)
    {
      goto LABEL_40;
    }

LABEL_27:
    if ((result & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x2530ADF00](0);
    }

    else
    {
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v20 = *(result + 32);
    }

    v21 = v20;

    v22 = [v21 userTask];

    if (!v22)
    {
      goto LABEL_41;
    }

    v23 = [v22 value];

    if (!v23)
    {
      return 0;
    }

    [v23 doubleValue];
    v25 = v24;

    return v25;
  }

  else
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_40:

LABEL_41:

    return 0;
  }
}

unint64_t sub_252C70C58()
{
  result = qword_27F544788;
  if (!qword_27F544788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F544788);
  }

  return result;
}

unint64_t sub_252C70CB8()
{
  result = qword_27F544790;
  if (!qword_27F544790)
  {
    result = swift_getWitnessTable(byte_252E57E30, &type metadata for ClimateModes, v0, v1);
    atomic_store(result, &qword_27F544790);
  }

  return result;
}

unint64_t sub_252C70D0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252C70D6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252C71B04(a1);
}

BOOL sub_252C70E14(void *a1)
{
  if (*(a1[13] + 16))
  {
    return 1;
  }

  if (*(a1[16] + 16))
  {
    return 1;
  }

  if (*(a1[19] + 16))
  {
    return 1;
  }

  if (*(a1[28] + 16))
  {
    return 1;
  }

  if (*(a1[6] + 16))
  {
    return 1;
  }

  if (*(a1[20] + 16))
  {
    return 1;
  }

  return *(a1[21] + 16) != 0;
}

char *sub_252C70EA0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v71 = sub_252E32A64();
  v6 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v61 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HomeStore(0);
  v9 = static HomeStore.shared.getter(v8);
  v10 = sub_2529DA8E4();

  v76 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
LABEL_43:
    v11 = sub_252E378C4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  v66 = a1;
  if (v11)
  {
    v13 = 0;
    v14 = v10 & 0xC000000000000001;
    v73 = v10 & 0xFFFFFFFFFFFFFF8;
    v64 = (v6 + 1);
    v6 = &OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
    v65 = a2;
    v59 = v10;
    v60 = a3;
    v58 = v11;
    v72 = v10 & 0xC000000000000001;
    while (1)
    {
      if (v14)
      {
        v15 = MEMORY[0x2530ADF00](v13, v10);
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          v40 = v76;
          v12 = MEMORY[0x277D84F90];
          goto LABEL_30;
        }
      }

      else
      {
        if (v13 >= *(v73 + 16))
        {
          __break(1u);
          goto LABEL_43;
        }

        v15 = *(v10 + 8 * v13 + 32);

        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_27;
        }
      }

      if (*(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == a3)
      {
        break;
      }

LABEL_6:
      ++v13;
      if (v16 == v11)
      {
        goto LABEL_28;
      }
    }

    v17 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v18 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    v19 = v17 == a1 && v18 == a2;
    if (v19 || (sub_252E37DB4() & 1) != 0)
    {

LABEL_24:
      v14 = v72;
      v6 = &OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
      goto LABEL_6;
    }

    v74 = v17;
    v75 = v18;
    v20 = v61;
    sub_252E32A44();
    v70 = sub_252947DBC();
    v21 = sub_252E37784();
    v68 = *v64;
    v68(v20, v71);
    v74 = v21;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    v69 = sub_2529508A0();
    v22 = sub_252E36EA4();
    v24 = v23;

    v74 = v22;
    v75 = v24;
    sub_252E32A34();
    v25 = sub_252E37784();
    v26 = v71;
    v27 = v68;
    v68(v20, v71);

    v74 = v25;
    sub_252E36EA4();

    v28 = sub_252E36FA4();
    v62 = v29;
    v63 = v28;

    v74 = v66;
    v75 = v65;
    sub_252E32A44();
    v30 = sub_252E37784();
    v27(v20, v26);
    v74 = v30;
    v31 = sub_252E36EA4();
    v33 = v32;

    v74 = v31;
    v75 = v33;
    sub_252E32A34();
    v34 = sub_252E37784();
    v68(v20, v71);

    v74 = v34;
    sub_252E36EA4();

    v35 = sub_252E36FA4();
    v37 = v36;
    v38 = v62;

    if (v63 == v35 && v38 == v37)
    {

      v10 = v59;
      a3 = v60;
      v11 = v58;
    }

    else
    {
      v39 = sub_252E37DB4();

      v10 = v59;
      a3 = v60;
      v11 = v58;
      if ((v39 & 1) == 0)
      {

        goto LABEL_23;
      }
    }

    sub_252E37A94();
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
LABEL_23:
    a2 = v65;
    a1 = v66;
    goto LABEL_24;
  }

  v40 = MEMORY[0x277D84F90];
LABEL_30:

  if (v40 < 0 || (v40 & 0x4000000000000000) != 0)
  {
    v41 = sub_252E378C4();
    if (v41)
    {
      goto LABEL_33;
    }

LABEL_45:

    goto LABEL_46;
  }

  v41 = *(v40 + 16);
  if (!v41)
  {
    goto LABEL_45;
  }

LABEL_33:
  v74 = v12;
  result = sub_2529AA3A0(0, v41 & ~(v41 >> 63), 0);
  if (v41 < 0)
  {
    __break(1u);
    return result;
  }

  v43 = a2;
  v44 = 0;
  v12 = v74;
  do
  {
    if ((v40 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x2530ADF00](v44, v40);
    }

    else
    {
      v45 = *(v40 + 8 * v44 + 32);
    }

    v47 = *(v45 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v46 = *(v45 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    v74 = v12;
    v49 = *(v12 + 16);
    v48 = *(v12 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_2529AA3A0((v48 > 1), v49 + 1, 1);
      v12 = v74;
    }

    ++v44;
    *(v12 + 16) = v49 + 1;
    v50 = v12 + 16 * v49;
    *(v50 + 32) = v47;
    *(v50 + 40) = v46;
  }

  while (v41 != v44);

  a2 = v43;
LABEL_46:
  v51 = sub_252C75848(v12);

  v52 = *(v51 + 16);
  if (!v52)
  {
LABEL_49:

    v53 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v53 = sub_252DFA3E0(*(v51 + 16), 0);
  v54 = sub_252E082D0(&v74, v53 + 4, v52, v51);
  sub_25297DEB0(v74);
  if (v54 != v52)
  {
    __break(1u);
    goto LABEL_49;
  }

LABEL_50:
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v55 = sub_252E36AD4();
  __swift_project_value_buffer(v55, qword_27F544E08);
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_252E379F4();

  v74 = 0xD000000000000018;
  v75 = 0x8000000252E8E620;
  v56 = MEMORY[0x2530AD730](v53, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v56);

  MEMORY[0x2530AD570](0x20726F6620, 0xE500000000000000);
  MEMORY[0x2530AD570](v66, a2);
  sub_252CC3D90(v74, v75, 0xD00000000000008ALL, 0x8000000252E8E590);

  return v53;
}

char *sub_252C71628(uint64_t a1, uint64_t a2)
{
  v19 = *(a1 + 16);
  if (v19)
  {
    v2 = 0;
    v3 = *(a2 + 16);
    v17 = (a2 + 40);
    v18 = a1 + 32;
    v4 = MEMORY[0x277D84F90];
    v16 = v3;
    while (!v3)
    {
LABEL_3:
      if (++v2 == v19)
      {
        return v4;
      }
    }

    v20 = v2;
    v5 = *(v18 + 8 * v2);

    v6 = v17;
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      *(inited + 32) = v7;
      *(inited + 40) = v8;
      v10 = *(v5 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v12 = *(v5 + 24) >> 1, v13 = v5, v12 <= v10))
      {
        result = sub_2529F7A80(result, v10 + 1, 1, v5);
        v13 = result;
        v12 = *(result + 3) >> 1;
      }

      if (v12 <= *(v13 + 2))
      {
        break;
      }

      swift_arrayInitWithCopy();

      ++*(v13 + 2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2529F8300(0, v4[2] + 1, 1, v4);
      }

      v15 = v4[2];
      v14 = v4[3];
      if (v15 >= v14 >> 1)
      {
        v4 = sub_2529F8300((v14 > 1), v15 + 1, 1, v4);
      }

      v4[2] = v15 + 1;
      v4[v15 + 4] = v13;
      v6 += 2;
      if (!--v3)
      {

        v2 = v20;
        v3 = v16;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_252C71838(uint64_t a1, uint64_t a2)
{
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544E08);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E8E540);
  sub_252E37AE4();
  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E8E570);
  v5 = MEMORY[0x2530AD730](a1, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v5);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008ALL, 0x8000000252E8E590);

  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = (a1 + 40);
  do
  {
    v12 = *(v9 - 1);
    v11 = *v9;

    v13 = sub_252C70EA0(v12, v11, a2);
    v14 = v13[2];
    v15 = v14 != 0;
    if (v8)
    {
      if (v14)
      {
      }

      else
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
        v13 = swift_allocObject();
        *(v13 + 1) = xmmword_252E3C290;
        v13[4] = v12;
        v13[5] = v11;
      }

      v10 = sub_252C71628(v8, v13);

      v8 = v10;
    }

    else
    {
      if (v14)
      {
      }

      else
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
        v13 = swift_allocObject();
        *(v13 + 1) = xmmword_252E3C290;
        v13[4] = v12;
        v13[5] = v11;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416E8, &qword_252E409A8);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_252E3C290;
      *(v8 + 32) = v13;
    }

    v7 |= v15;
    v9 += 2;
    --v6;
  }

  while (v6);
  if ((v7 & 1) == 0)
  {

    return 0;
  }

  return v8;
}

uint64_t sub_252C71B04(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 288) = *a1;
  *(v1 + 304) = v2;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *(v1 + 320) = *(a1 + 32);
  *(v1 + 336) = v4;
  v5 = *(a1 + 88);
  *(v1 + 352) = *(a1 + 72);
  *(v1 + 368) = v5;
  v6 = *(a1 + 104);
  *(v1 + 488) = v3;
  *(v1 + 496) = v6;
  *(v1 + 456) = *(a1 + 112);
  *(v1 + 504) = *(a1 + 128);
  *(v1 + 472) = *(a1 + 136);
  *(v1 + 512) = *(a1 + 152);
  *(v1 + 528) = *(a1 + 168);
  v7 = *(a1 + 208);
  *(v1 + 400) = *(a1 + 192);
  *(v1 + 416) = v7;
  *(v1 + 384) = *(a1 + 176);
  *(v1 + 536) = *(a1 + 224);
  memcpy((v1 + 16), (a1 + 232), 0x110uLL);

  return MEMORY[0x2822009F8](sub_252C71BEC, 0, 0);
}

uint64_t sub_252C71BEC()
{
  v184 = v0;
  v171 = (v0 + 472);
  v172 = (v0 + 456);
  v1 = *(v0 + 496);
  v2 = MEMORY[0x277D84F90];
  v180 = MEMORY[0x277D84F90];
  if (!*(v1 + 16) || (v3 = sub_252C71838(v1, 3)) == 0)
  {
    v21 = *(v0 + 520);
    if (*(v21 + 16) && (v22 = sub_252C71838(v21, 4)) != 0)
    {
      v23 = *(v22 + 16);
      if (v23)
      {
        __src[0] = v2;
        v24 = v22;
        sub_2529AA480(0, v23, 0);
        v174 = v2;
        _s7BuilderCMa_1();
        v148 = v24;
        v25 = v24;
        v165 = v23 - 1;
        for (i = 32; ; i = v151 + 8)
        {
          v27 = *(v0 + 536);
          v28 = *(v0 + 528);
          v30 = *(v0 + 496);
          v29 = *(v0 + 504);
          v31 = *(v0 + 488);
          v151 = i;
          v32 = *(v25 + i);
          swift_allocObject();
          v158 = *(v0 + 512);
          sub_252E1E238();
          v33 = *(v0 + 304);
          v183[0] = *(v0 + 288);
          v183[1] = v33;
          v34 = *(v0 + 336);
          v183[2] = *(v0 + 320);
          *(&v183[3] + 8) = v34;
          v35 = *(v0 + 368);
          *(&v183[4] + 8) = *(v0 + 352);
          *(&v183[5] + 8) = v35;
          *&v183[3] = v31;
          *(&v183[6] + 1) = v30;
          v183[7] = *v172;
          *(&v183[8] + 8) = *v171;
          *(&v183[9] + 8) = v158;
          *&v183[8] = v29;
          *(&v183[10] + 1) = v28;
          v36 = *(v0 + 400);
          v183[11] = *(v0 + 384);
          v183[12] = v36;
          v183[13] = *(v0 + 416);
          *&v183[14] = v27;
          memcpy(&v183[14] + 8, (v0 + 16), 0x110uLL);

          v37 = sub_252E1EBE8(v183);

          v18 = v174;
          if (v32[2])
          {
            v38 = v32[4];
            v39 = v32[5];
            swift_beginAccess();
            v40 = *(v37 + 176);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v37 + 176) = v40;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v40 = sub_2529F7A80(0, *(v40 + 2) + 1, 1, v40);
              *(v37 + 176) = v40;
            }

            v43 = *(v40 + 2);
            v42 = *(v40 + 3);
            if (v43 >= v42 >> 1)
            {
              v40 = sub_2529F7A80((v42 > 1), v43 + 1, 1, v40);
            }

            *(v40 + 2) = v43 + 1;
            v44 = &v40[16 * v43];
            *(v44 + 4) = v38;
            *(v44 + 5) = v39;
            *(v37 + 176) = v40;
            swift_endAccess();
          }

          sub_252E1E4F8(v183);

          __src[0] = v174;
          v46 = *(v174 + 16);
          v45 = *(v174 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_2529AA480((v45 > 1), v46 + 1, 1);
            v18 = __src[0];
          }

          *(v18 + 16) = v46 + 1;
          memcpy((v18 + 504 * v46 + 32), v183, 0x1F8uLL);
          v25 = v148;
          if (!v165)
          {
            break;
          }

          v174 = v18;
          --v165;
        }

        goto LABEL_69;
      }
    }

    else
    {
      v47 = *(v0 + 536);
      if (*(v47 + 16) && (v48 = sub_252C71838(v47, 2)) != 0)
      {
        v49 = *(v48 + 16);
        if (v49)
        {
          v152 = v48;
          sub_2529AA480(0, v49, 0);
          v175 = v2;
          _s7BuilderCMa_1();
          v50 = v152;
          v166 = v49 - 1;
          for (j = 32; ; j += 8)
          {
            v52 = *(v0 + 536);
            v53 = *(v0 + 528);
            v54 = *(v0 + 496);
            v55 = *(v0 + 504);
            v56 = *(v0 + 488);
            v57 = *(v50 + j);
            swift_allocObject();
            v159 = *(v0 + 512);
            sub_252E1E238();
            v58 = *(v0 + 304);
            v183[0] = *(v0 + 288);
            v183[1] = v58;
            v59 = *(v0 + 336);
            v183[2] = *(v0 + 320);
            *(&v183[3] + 8) = v59;
            v60 = *(v0 + 368);
            *(&v183[4] + 8) = *(v0 + 352);
            *(&v183[5] + 8) = v60;
            *&v183[3] = v56;
            *(&v183[6] + 1) = v54;
            v183[7] = *v172;
            *(&v183[8] + 8) = *v171;
            *(&v183[9] + 8) = v159;
            *&v183[8] = v55;
            *(&v183[10] + 1) = v53;
            v61 = *(v0 + 400);
            v183[11] = *(v0 + 384);
            v183[12] = v61;
            v183[13] = *(v0 + 416);
            *&v183[14] = v52;
            memcpy(&v183[14] + 8, (v0 + 16), 0x110uLL);

            v62 = sub_252E1EBE8(v183);

            *(v62 + 240) = v57;

            sub_252E1E4F8(__src);

            v18 = v175;
            v64 = *(v175 + 16);
            v63 = *(v175 + 24);
            if (v64 >= v63 >> 1)
            {
              sub_2529AA480((v63 > 1), v64 + 1, 1);
              v18 = v175;
            }

            *(v18 + 16) = v64 + 1;
            memcpy((v18 + 504 * v64 + 32), __src, 0x1F8uLL);
            if (!v166)
            {
              break;
            }

            v175 = v18;
            --v166;
            v50 = v152;
          }

          goto LABEL_69;
        }
      }

      else
      {
        v65 = *(v0 + 488);
        if (*(v65 + 16) && (v66 = sub_252C71838(v65, 1)) != 0)
        {
          v67 = *(v66 + 16);
          if (v67)
          {
            __src[0] = v2;
            v68 = v66;
            sub_2529AA480(0, v67, 0);
            v176 = v2;
            _s7BuilderCMa_1();
            v149 = v68;
            v69 = v68;
            v167 = v67 - 1;
            for (k = 32; ; k = v153 + 8)
            {
              v71 = *(v0 + 536);
              v72 = *(v0 + 528);
              v74 = *(v0 + 496);
              v73 = *(v0 + 504);
              v75 = *(v0 + 488);
              v153 = k;
              v76 = *(v69 + k);
              swift_allocObject();
              v160 = *(v0 + 512);
              sub_252E1E238();
              v77 = *(v0 + 304);
              v183[0] = *(v0 + 288);
              v183[1] = v77;
              v78 = *(v0 + 336);
              v183[2] = *(v0 + 320);
              *(&v183[3] + 8) = v78;
              v79 = *(v0 + 368);
              *(&v183[4] + 8) = *(v0 + 352);
              *(&v183[5] + 8) = v79;
              *&v183[3] = v75;
              *(&v183[6] + 1) = v74;
              v183[7] = *v172;
              *(&v183[8] + 8) = *v171;
              *(&v183[9] + 8) = v160;
              *&v183[8] = v73;
              *(&v183[10] + 1) = v72;
              v80 = *(v0 + 400);
              v183[11] = *(v0 + 384);
              v183[12] = v80;
              v183[13] = *(v0 + 416);
              *&v183[14] = v71;
              memcpy(&v183[14] + 8, (v0 + 16), 0x110uLL);

              v81 = sub_252E1EBE8(v183);

              v18 = v176;
              if (v76[2])
              {
                v82 = v76[4];
                v83 = v76[5];
                swift_beginAccess();
                v84 = *(v81 + 64);

                v85 = swift_isUniquelyReferenced_nonNull_native();
                *(v81 + 64) = v84;
                if ((v85 & 1) == 0)
                {
                  v84 = sub_2529F7A80(0, *(v84 + 2) + 1, 1, v84);
                  *(v81 + 64) = v84;
                }

                v87 = *(v84 + 2);
                v86 = *(v84 + 3);
                if (v87 >= v86 >> 1)
                {
                  v84 = sub_2529F7A80((v86 > 1), v87 + 1, 1, v84);
                }

                *(v84 + 2) = v87 + 1;
                v88 = &v84[16 * v87];
                *(v88 + 4) = v82;
                *(v88 + 5) = v83;
                *(v81 + 64) = v84;
                swift_endAccess();
              }

              sub_252E1E4F8(v183);

              __src[0] = v176;
              v90 = *(v176 + 16);
              v89 = *(v176 + 24);
              if (v90 >= v89 >> 1)
              {
                sub_2529AA480((v89 > 1), v90 + 1, 1);
                v18 = __src[0];
              }

              *(v18 + 16) = v90 + 1;
              memcpy((v18 + 504 * v90 + 32), v183, 0x1F8uLL);
              v69 = v149;
              if (!v167)
              {
                break;
              }

              v176 = v18;
              --v167;
            }

            goto LABEL_69;
          }
        }

        else
        {
          v91 = *(v0 + 512);
          if (*(v91 + 16) && (v92 = sub_252C71838(v91, 7)) != 0)
          {
            v93 = *(v92 + 16);
            if (v93)
            {
              v154 = v92;
              sub_2529AA480(0, v93, 0);
              v177 = v2;
              _s7BuilderCMa_1();
              v94 = v154;
              v161 = v93 - 1;
              for (m = 32; ; m += 8)
              {
                v96 = *(v0 + 536);
                v97 = *(v0 + 528);
                v98 = *(v0 + 496);
                v99 = *(v0 + 504);
                v100 = *(v0 + 488);
                v101 = *(v94 + m);
                swift_allocObject();
                v168 = *(v0 + 512);
                sub_252E1E238();
                v102 = *(v0 + 304);
                v183[0] = *(v0 + 288);
                v183[1] = v102;
                v103 = *(v0 + 336);
                v183[2] = *(v0 + 320);
                *(&v183[3] + 8) = v103;
                v104 = *(v0 + 368);
                *(&v183[4] + 8) = *(v0 + 352);
                *(&v183[5] + 8) = v104;
                *&v183[3] = v100;
                *(&v183[6] + 1) = v98;
                v183[7] = *v172;
                *(&v183[8] + 8) = *v171;
                *(&v183[9] + 8) = v168;
                *&v183[8] = v99;
                *(&v183[10] + 1) = v97;
                v105 = *(v0 + 400);
                v183[11] = *(v0 + 384);
                v183[12] = v105;
                v183[13] = *(v0 + 416);
                *&v183[14] = v96;
                memcpy(&v183[14] + 8, (v0 + 16), 0x110uLL);

                v106 = sub_252E1EBE8(v183);

                *(v106 + 168) = v101;

                sub_252E1E4F8(__src);

                v18 = v177;
                v108 = *(v177 + 16);
                v107 = *(v177 + 24);
                if (v108 >= v107 >> 1)
                {
                  sub_2529AA480((v107 > 1), v108 + 1, 1);
                  v18 = v177;
                }

                *(v18 + 16) = v108 + 1;
                memcpy((v18 + 504 * v108 + 32), __src, 0x1F8uLL);
                if (!v161)
                {
                  break;
                }

                v177 = v18;
                --v161;
                v94 = v154;
              }

              goto LABEL_69;
            }
          }

          else
          {
            v109 = *(v0 + 528);
            if (*(v109 + 16) && (v110 = sub_252C71838(v109, 7)) != 0)
            {
              v111 = *(v110 + 16);
              if (v111)
              {
                v155 = v110;
                sub_2529AA480(0, v111, 0);
                v178 = v2;
                _s7BuilderCMa_1();
                v112 = v155;
                v169 = v111 - 1;
                for (n = 32; ; n += 8)
                {
                  v114 = *(v0 + 536);
                  v115 = *(v0 + 528);
                  v116 = *(v0 + 496);
                  v117 = *(v0 + 504);
                  v118 = *(v0 + 488);
                  v119 = *(v112 + n);
                  swift_allocObject();
                  v162 = *(v0 + 512);
                  sub_252E1E238();
                  v120 = *(v0 + 304);
                  v183[0] = *(v0 + 288);
                  v183[1] = v120;
                  v121 = *(v0 + 336);
                  v183[2] = *(v0 + 320);
                  *(&v183[3] + 8) = v121;
                  v122 = *(v0 + 368);
                  *(&v183[4] + 8) = *(v0 + 352);
                  *(&v183[5] + 8) = v122;
                  *&v183[3] = v118;
                  *(&v183[6] + 1) = v116;
                  v183[7] = *v172;
                  *(&v183[8] + 8) = *v171;
                  *(&v183[9] + 8) = v162;
                  *&v183[8] = v117;
                  *(&v183[10] + 1) = v115;
                  v123 = *(v0 + 400);
                  v183[11] = *(v0 + 384);
                  v183[12] = v123;
                  v183[13] = *(v0 + 416);
                  *&v183[14] = v114;
                  memcpy(&v183[14] + 8, (v0 + 16), 0x110uLL);

                  v124 = sub_252E1EBE8(v183);

                  *(v124 + 184) = v119;

                  sub_252E1E4F8(__src);

                  v18 = v178;
                  v126 = *(v178 + 16);
                  v125 = *(v178 + 24);
                  if (v126 >= v125 >> 1)
                  {
                    sub_2529AA480((v125 > 1), v126 + 1, 1);
                    v18 = v178;
                  }

                  *(v18 + 16) = v126 + 1;
                  memcpy((v18 + 504 * v126 + 32), __src, 0x1F8uLL);
                  if (!v169)
                  {
                    break;
                  }

                  v178 = v18;
                  --v169;
                  v112 = v155;
                }

                goto LABEL_69;
              }
            }

            else
            {
              v127 = *(v0 + 504);
              if (!*(v127 + 16))
              {
                v129 = MEMORY[0x277D84F90];
                goto LABEL_73;
              }

              v128 = sub_252C71838(v127, 5);
              v129 = MEMORY[0x277D84F90];
              if (!v128)
              {
                goto LABEL_73;
              }

              v130 = *(v128 + 16);
              if (v130)
              {
                v181 = MEMORY[0x277D84F90];
                v156 = v128;
                sub_2529AA480(0, v130, 0);
                v179 = v181;
                _s7BuilderCMa_1();
                v131 = v156;
                v170 = v130 - 1;
                for (ii = 32; ; ii += 8)
                {
                  v133 = *(v0 + 536);
                  v134 = *(v0 + 528);
                  v135 = *(v0 + 496);
                  v136 = *(v0 + 504);
                  v137 = *(v0 + 488);
                  v138 = *(v131 + ii);
                  swift_allocObject();
                  v163 = *(v0 + 512);
                  sub_252E1E238();
                  v139 = *(v0 + 304);
                  v183[0] = *(v0 + 288);
                  v183[1] = v139;
                  v140 = *(v0 + 336);
                  v183[2] = *(v0 + 320);
                  *(&v183[3] + 8) = v140;
                  v141 = *(v0 + 368);
                  *(&v183[4] + 8) = *(v0 + 352);
                  *(&v183[5] + 8) = v141;
                  *&v183[3] = v137;
                  *(&v183[6] + 1) = v135;
                  v183[7] = *v172;
                  *(&v183[8] + 8) = *v171;
                  *(&v183[9] + 8) = v163;
                  *&v183[8] = v136;
                  *(&v183[10] + 1) = v134;
                  v142 = *(v0 + 400);
                  v183[11] = *(v0 + 384);
                  v183[12] = v142;
                  v183[13] = *(v0 + 416);
                  *&v183[14] = v133;
                  memcpy(&v183[14] + 8, (v0 + 16), 0x110uLL);

                  v143 = sub_252E1EBE8(v183);

                  *(v143 + 144) = v138;

                  sub_252E1E4F8(__src);

                  v18 = v179;
                  v145 = *(v179 + 16);
                  v144 = *(v179 + 24);
                  if (v145 >= v144 >> 1)
                  {
                    sub_2529AA480((v144 > 1), v145 + 1, 1);
                    v18 = v179;
                  }

                  *(v18 + 16) = v145 + 1;
                  memcpy((v18 + 504 * v145 + 32), __src, 0x1F8uLL);
                  if (!v170)
                  {
                    break;
                  }

                  v179 = v18;
                  --v170;
                  v131 = v156;
                }

                goto LABEL_69;
              }
            }
          }
        }
      }
    }

LABEL_71:

    v18 = MEMORY[0x277D84F90];
    goto LABEL_72;
  }

  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_71;
  }

  v150 = v3;
  sub_2529AA480(0, v4, 0);
  v173 = v2;
  _s7BuilderCMa_1();
  v5 = v150;
  v164 = v4 - 1;
  for (jj = 32; ; jj += 8)
  {
    v7 = *(v0 + 536);
    v8 = *(v0 + 528);
    v9 = *(v0 + 496);
    v10 = *(v0 + 504);
    v11 = *(v0 + 488);
    v12 = *(v5 + jj);
    swift_allocObject();
    v157 = *(v0 + 512);
    sub_252E1E238();
    v13 = *(v0 + 304);
    v183[0] = *(v0 + 288);
    v183[1] = v13;
    v14 = *(v0 + 336);
    v183[2] = *(v0 + 320);
    *(&v183[3] + 8) = v14;
    v15 = *(v0 + 368);
    *(&v183[4] + 8) = *(v0 + 352);
    *(&v183[5] + 8) = v15;
    *&v183[3] = v11;
    *(&v183[6] + 1) = v9;
    v183[7] = *v172;
    *(&v183[8] + 8) = *v171;
    *(&v183[9] + 8) = v157;
    *&v183[8] = v10;
    *(&v183[10] + 1) = v8;
    v16 = *(v0 + 400);
    v183[11] = *(v0 + 384);
    v183[12] = v16;
    v183[13] = *(v0 + 416);
    *&v183[14] = v7;
    memcpy(&v183[14] + 8, (v0 + 16), 0x110uLL);

    v17 = sub_252E1EBE8(v183);

    *(v17 + 120) = v12;

    sub_252E1E4F8(__src);

    v18 = v173;
    v20 = *(v173 + 16);
    v19 = *(v173 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_2529AA480((v19 > 1), v20 + 1, 1);
      v18 = v173;
    }

    *(v18 + 16) = v20 + 1;
    memcpy((v18 + 504 * v20 + 32), __src, 0x1F8uLL);
    if (!v164)
    {
      break;
    }

    v173 = v18;
    --v164;
    v5 = v150;
  }

LABEL_69:

LABEL_72:
  sub_25297AA34(v18);
  v129 = v180;
LABEL_73:
  v146 = *(v0 + 8);

  return v146(v129);
}

uint64_t sub_252C72AE0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C72BC0, 0, 0);
}

uint64_t sub_252C72BC0()
{
  sub_252C4BEAC();
  if (v1)
  {
    sub_252E37024();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[4];
  v7 = sub_252E36324();
  (*(*(v7 - 8) + 56))(v4, v2, 1, v7);
  v8 = v6[12];
  v9 = v6[13];
  __swift_project_boxed_opaque_existential_1(v6 + 9, v8);
  sub_252956C1C(v4, v3);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_2529439A0(v3, v11 + v10);

  sub_252943BD0(sub_252C72FC8, v11, 1, v8, v9);
  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);

  v12 = v0[1];

  return v12();
}

uint64_t sub_252C72D84(uint64_t a1, uint64_t a2)
{

  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v3);
  sub_252929E74((v4 + 16), v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_252E33914();
  sub_252BFE230(v5 & 1, a2);

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

BOOL sub_252C72E54(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  return *(a2 + v2) == 110;
}

uint64_t sub_252C72EB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252C72AE0(a1, a2);
}

void *sub_252C72F64@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for RemoteAccessNotSetUpResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C72FC8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_252C72D84(v2, v3);
}

uint64_t sub_252C73074()
{
  type metadata accessor for TurnOnSwingModeHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252C730A4(void *a1)
{
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = v3[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v4 != 2 && (v4 & 1) == 0 || (v5 = [a1 filters]) == 0)
  {

    return 0;
  }

  v6 = v5;
  type metadata accessor for HomeFilter();
  v7 = sub_252E37264();

  v8 = [a1 userTask];
  v9 = HomeStore.services(matching:supporting:)(v7, v8);
  LOBYTE(v6) = v10;

  if (v6)
  {
    v11 = v9;
    v12 = 1;
LABEL_109:
    sub_252929F10(v11, v12);
    return 0;
  }

  v13 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
    goto LABEL_107;
  }

  v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_108:
    v11 = v9;
    v12 = 0;
    goto LABEL_109;
  }

LABEL_9:
  v15 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v16 = sub_252E36F04();
  v17 = [v15 initWithIdentifier:0 displayString:v16];

  v18 = v17;
  [v18 setBoolValue_];
  [v18 setType_];

  v19 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v20 = sub_252E36F04();
  v21 = [v19 initWithIdentifier:0 displayString:v20];

  v22 = v21;
  [v22 setTaskType_];
  [v22 setAttribute_];
  [v22 setValue_];

  v23 = v9;
  v9 = 0;
  v89 = MEMORY[0x277D84F90];
  v24 = v23 & 0xC000000000000001;
  v80 = v23;
  v25 = (v23 + 32);
  v26 = &off_279711000;
  v83 = v14;
  v84 = v13;
  v81 = (v23 + 32);
  v82 = v23 & 0xC000000000000001;
  v85 = v22;
  do
  {
    if (v24)
    {
      v87 = MEMORY[0x2530ADF00](v9, v80);
      v27 = __OFADD__(v9, 1);
      v9 = v9 + 1;
      if (v27)
      {
        goto LABEL_103;
      }
    }

    else
    {
      if (v9 >= *(v13 + 16))
      {
        goto LABEL_104;
      }

      v87 = *&v25[8 * v9];

      v27 = __OFADD__(v9, 1);
      v9 = v9 + 1;
      if (v27)
      {
        goto LABEL_103;
      }
    }

    if ([v22 v26[203]] == 5)
    {
      v86 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v28 = [*(v87 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
      sub_252BAC798();
      v29 = sub_252E37264();

      if (v29 >> 62)
      {
        v30 = sub_252E378C4();
      }

      else
      {
        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v31 = 0;
      while (1)
      {
        if (v30 == v31)
        {
          goto LABEL_67;
        }

        if ((v29 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x2530ADF00](v31, v29);
        }

        else
        {
          if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_98;
          }

          v32 = *(v29 + 8 * v31 + 32);
        }

        v33 = v32;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        v34 = [v32 characteristicType];
        v13 = sub_252E36F34();
        v36 = v35;

        if (v13 == sub_252E36F34() && v36 == v37)
        {

LABEL_35:

          v40 = [*(v87 + v86) characteristics];
          v41 = sub_252E37264();

          if (v41 >> 62)
          {
            v42 = sub_252E378C4();
          }

          else
          {
            v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v43 = 0;
          while (v42 != v43)
          {
            if ((v41 & 0xC000000000000001) != 0)
            {
              v44 = MEMORY[0x2530ADF00](v43, v41);
            }

            else
            {
              if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_100;
              }

              v44 = *(v41 + 8 * v43 + 32);
            }

            v45 = v44;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_99;
            }

            v13 = [v44 characteristicType];
            v46 = sub_252E36F34();
            v48 = v47;

            if (v46 == sub_252E36F34() && v48 == v49)
            {

LABEL_52:

              v51 = [*(v87 + v86) characteristics];
              v52 = sub_252E37264();

              if (v52 >> 62)
              {
                v53 = sub_252E378C4();
              }

              else
              {
                v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v54 = 0;
              while (v53 != v54)
              {
                if ((v52 & 0xC000000000000001) != 0)
                {
                  v55 = MEMORY[0x2530ADF00](v54, v52);
                }

                else
                {
                  if (v54 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_102;
                  }

                  v55 = *(v52 + 8 * v54 + 32);
                }

                v56 = v55;
                if (__OFADD__(v54, 1))
                {
                  goto LABEL_101;
                }

                v57 = [v55 characteristicType];
                v58 = sub_252E36F34();
                v60 = v59;

                if (v58 == sub_252E36F34() && v60 == v61)
                {

LABEL_69:

                  v13 = v84;
                  v22 = v85;
                  v24 = v82;
                  v14 = v83;
                  v25 = v81;
                  v26 = &off_279711000;
                  goto LABEL_70;
                }

                v13 = sub_252E37DB4();

                ++v54;
                if (v13)
                {
                  goto LABEL_69;
                }
              }

              break;
            }

            v13 = sub_252E37DB4();

            ++v43;
            if (v13)
            {
              goto LABEL_52;
            }
          }

LABEL_67:

          v13 = v84;
          v22 = v85;
          v24 = v82;
          v14 = v83;
          v25 = v81;
          v26 = &off_279711000;
          goto LABEL_11;
        }

        v13 = sub_252E37DB4();

        ++v31;
        if (v13)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      v14 = sub_252E378C4();
      if (!v14)
      {
        goto LABEL_108;
      }

      goto LABEL_9;
    }

    sub_252DE8C4C(v22, v87);
    if (v39)
    {

LABEL_70:
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
    }

LABEL_11:
    ;
  }

  while (v9 != v14);
  sub_252929F10(v80, 0);
  if (v89 < 0 || (v89 & 0x4000000000000000) != 0)
  {
    v63 = sub_252E378C4();
    if (v63)
    {
      goto LABEL_80;
    }

LABEL_112:

    return 0;
  }

  v63 = *(v89 + 16);
  if (!v63)
  {
    goto LABEL_112;
  }

LABEL_80:
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v64.n128_f64[0] = HomeFilter.Builder.init()();
  v66 = v65;
  v67 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v68 = v67;
    while (1)
    {
      if ((v89 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2530ADF00](v68, v89, v64);
        v67 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          goto LABEL_105;
        }
      }

      else
      {
        if (v68 >= *(v89 + 16))
        {
          goto LABEL_106;
        }

        v13 = *(v89 + 8 * v68 + 32);

        v67 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          goto LABEL_105;
        }
      }

      v69 = [*(v13 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) assistantIdentifier];
      if (v69)
      {
        break;
      }

      ++v68;
      if (v67 == v63)
      {
        goto LABEL_96;
      }
    }

    v70 = v69;
    v71 = sub_252E36F34();
    v88 = v72;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2529F7A80(0, *(v9 + 2) + 1, 1, v9);
    }

    v74 = *(v9 + 2);
    v73 = *(v9 + 3);
    v13 = v74 + 1;
    if (v74 >= v73 >> 1)
    {
      v9 = sub_2529F7A80((v73 > 1), v74 + 1, 1, v9);
    }

    *(v9 + 2) = v13;
    v75 = v9 + 16 * v74;
    *(v75 + 4) = v71;
    *(v75 + 5) = v88;
  }

  while (v67 != v63);
LABEL_96:

  v76 = (*(*v66 + 568))(v9);

  v78 = (*(*v76 + 760))(v77);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  result = swift_allocObject();
  *(result + 16) = xmmword_252E3C130;
  *(result + 32) = v78;
  return result;
}

void sub_252C73AA0(void *a1, void (*a2)(char *), uint64_t a3)
{
  v5 = [a1 userTask];
  if (v5)
  {
    v35 = v5;
    v6 = [a1 filters];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for HomeFilter();
      v8 = sub_252E37264();

      v9 = sub_252C730A4(a1);
      if (v9)
      {
        v11 = v9;
        v12 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401C8, &unk_252E3BFF0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_252E3C290;
        *(inited + 32) = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_252E3C130;
        *(v14 + 32) = v35;
        *(inited + 40) = v14;
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_252E3C130;
        *(v15 + 32) = v12;
        v34 = v35;

        v33 = v12;
        v16 = sub_2529F7C10(1, 2, 1, inited);
        v16[2] = 2;
        v16[6] = v11;
        v16[7] = v15;
        v38 = MEMORY[0x277D84F90];
        sub_2529AA440(0, 2, 0);
        v17 = v38;
        *v36 = *(v16 + 2);
        v18 = *(v38 + 16);
        v19 = *(v38 + 24);
        v20 = v18 + 1;

        if (v18 >= v19 >> 1)
        {
          sub_2529AA440((v19 > 1), v18 + 1, 1);
          v17 = v38;
        }

        *(v17 + 16) = v20;
        *(v17 + 16 * v18 + 32) = *v36;
        *v37 = *(v16 + 3);
        v21 = *(v17 + 24);

        if (v20 >= v21 >> 1)
        {
          sub_2529AA440((v21 > 1), v18 + 2, 1);
        }

        *(v17 + 16) = v18 + 2;
        *(v17 + 16 * v20 + 32) = *v37;

        v22 = sub_252B4D7EC(v17, 0, 1);
        v24 = v23;

        if (v24)
        {
          v25 = v22;
          if (qword_27F53F498 != -1)
          {
            swift_once();
          }

          v26 = sub_252E36AD4();
          __swift_project_value_buffer(v26, qword_27F544C70);
          MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
          sub_252E37AE4();
          sub_252CC4050(0, 0xE000000000000000, 0xD000000000000083, 0x8000000252E8E6D0, 0xD000000000000021, 0x8000000252E68B10, 50);

          v27 = parse(error:with:)(v22, a1);
          (a2)();

          sub_252927D3C(v22);
        }

        else
        {
          a2(v22);

          sub_252927D3C(v22);
        }

        sub_252927D3C(v22);
      }

      else
      {

        _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v32);

        sub_252DE14FC(a1, a2);
      }

      return;
    }
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v28 = sub_252E36AD4();
  __swift_project_value_buffer(v28, qword_27F544C70);
  sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD000000000000083, 0x8000000252E8E6D0, 0xD000000000000021, 0x8000000252E68B10, 32);
  v29 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v30 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v29[v30] = 5;
  [v29 setUserActivity_];
  type metadata accessor for HomeEntityResponse();
  v31 = sub_252E37254();
  [v29 setEntityResponses_];

  a2(v29);
}

uint64_t sub_252C7409C(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_60;
  }

  v3 = v2;
  v4 = [v2 attribute];

  if (v4 != 22)
  {
    return 0;
  }

  v5 = [a1 userTask];
  v6 = [v5 value];

  v7 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v8 = sub_252E36F04();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  [v10 setBoolValue_];
  [v10 setType_];

  if (!v6)
  {

    return 0;
  }

  v11 = sub_252E37694();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = type metadata accessor for HomeStore(0);
  v13 = static HomeStore.shared.getter(v12);
  v14 = v13[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v14 != 2 && (v14 & 1) == 0 || (v15 = [a1 filters]) == 0)
  {

    return 0;
  }

  v16 = v15;
  type metadata accessor for HomeFilter();
  v17 = sub_252E37264();

  v18 = [a1 userTask];
  v19 = HomeStore.accessories(matching:supporting:)(v17, v18);
  v21 = v20;

  if (v21)
  {
    v22 = v19;
    v23 = 1;
LABEL_64:
    sub_252929F10(v22, v23);
    return 0;
  }

  v24 = [a1 userTask];
  if (!v24)
  {
LABEL_59:
    sub_252929F10(v19, 0);
LABEL_60:
    sub_252C515AC();
    return 0;
  }

  v25 = v24;
  v26 = [v24 taskType];

  if (v26 != 1)
  {
LABEL_63:
    v22 = v19;
    v23 = 0;
    goto LABEL_64;
  }

  if (v19 >> 62)
  {
LABEL_70:
    v27 = sub_252E378C4();
  }

  else
  {
    v27 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = 0;
  v29 = v19 & 0xC000000000000001;
  v30 = v19 + 32;
  v65 = v27;
  while (1)
  {
    if (v28 == v27)
    {
      goto LABEL_63;
    }

    if (v29)
    {
      v31 = MEMORY[0x2530ADF00](v28, v19);
      v32 = __OFADD__(v28++, 1);
      if (v32)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
      if (v28 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_70;
      }

      v31 = *(v30 + 8 * v28);

      v32 = __OFADD__(v28++, 1);
      if (v32)
      {
        goto LABEL_58;
      }
    }

    v33 = (*v31 + 256);
    v34 = *v33;
    if ((*v33)() == 39)
    {
      goto LABEL_68;
    }

    v35 = (*v31 + 272);
    v36 = *v35;
    v37 = (*v35)();
    if (*(v37 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](39);
      v38 = sub_252E37F14();
      v39 = -1 << *(v37 + 32);
      v40 = v38 & ~v39;
      if ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
      {
        v41 = ~v39;
        while (*(*(v37 + 48) + 8 * v40) != 39)
        {
          v40 = (v40 + 1) & v41;
          if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

LABEL_65:
        sub_252929F10(v19, 0);

LABEL_66:

        return 1;
      }
    }

LABEL_27:

    v43 = (v34)(v42);
    if (v43 == 38)
    {
      v45 = &unk_2864AC3F8;
      goto LABEL_31;
    }

    v44 = MEMORY[0x277D84FA0];
    if (v43 == 41)
    {
      v45 = &unk_2864AC420;
LABEL_31:
      v44 = sub_2529FC004(v45);
    }

    if (*(v44 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](39);
      v46 = sub_252E37F14();
      v47 = -1 << *(v44 + 32);
      v48 = v46 & ~v47;
      if ((*(v44 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
      {
        v49 = ~v47;
        while (*(*(v44 + 48) + 8 * v48) != 39)
        {
          v48 = (v48 + 1) & v49;
          if (((*(v44 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        goto LABEL_65;
      }
    }

LABEL_37:

    if (sub_252D4FE78(39) || v34() == 5)
    {
LABEL_68:
      sub_252929F10(v19, 0);
      goto LABEL_66;
    }

    v50 = v36();
    if (*(v50 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](5);
      v51 = sub_252E37F14();
      v52 = -1 << *(v50 + 32);
      v53 = v51 & ~v52;
      if ((*(v50 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53))
      {
        break;
      }
    }

LABEL_44:

    v56 = (v34)(v55);
    if (v56 == 38)
    {
      v58 = &unk_2864AC448;
      goto LABEL_48;
    }

    v57 = MEMORY[0x277D84FA0];
    if (v56 == 41)
    {
      v58 = &unk_2864AC470;
LABEL_48:
      v57 = sub_2529FC004(v58);
    }

    if (*(v57 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](5);
      v59 = sub_252E37F14();
      v60 = -1 << *(v57 + 32);
      v61 = v59 & ~v60;
      if ((*(v57 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
      {
        v62 = ~v60;
        while (*(*(v57 + 48) + 8 * v61) != 5)
        {
          v61 = (v61 + 1) & v62;
          if (((*(v57 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_67;
      }
    }

LABEL_54:

    v63 = sub_252D4FE78(5);

    v29 = v19 & 0xC000000000000001;
    v27 = v65;
    v30 = v19 + 32;
    if (v63)
    {
      sub_252929F10(v19, 0);
      return 1;
    }
  }

  v54 = ~v52;
  while (*(*(v50 + 48) + 8 * v53) != 5)
  {
    v53 = (v53 + 1) & v54;
    if (((*(v50 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

LABEL_67:
  sub_252929F10(v19, 0);

  return 1;
}

uint64_t sub_252C74774(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_252A54248();
  result = MEMORY[0x2530AD880](v2, &type metadata for StateSemantic, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_252DA7E00(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252C7486C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_252C75FB8();
  result = MEMORY[0x2530AD880](v2, &type metadata for HomeAttributeModeType, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_252DA74DC(&v12, *(*(a1 + 56) + ((v10 << 9) | (8 * v11)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *Array<A>.contains(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v36 = MEMORY[0x277D84F90];
    result = sub_2529AA380(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v35 = a1;
    v7 = 0;
    v5 = v36;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, a2);
      }

      else
      {
        v8 = *(a2 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 name];
      if (v10)
      {
        v11 = v10;
        v12 = sub_252E36F34();
        v14 = v13;
      }

      else
      {

        v12 = 0;
        v14 = 0;
      }

      v16 = *(v36 + 16);
      v15 = *(v36 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2529AA380((v15 > 1), v16 + 1, 1);
      }

      ++v7;
      *(v36 + 16) = v16 + 1;
      v17 = v36 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v4 != v7);
    a1 = v35;
  }

  v18 = sub_252C75A1C(v5);

  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = a1 + 32;
    v22 = v18 + 56;
    while (1)
    {
      v23 = (v21 + 16 * v20);
      v24 = v23[1];
      if (!*(v18 + 16))
      {
        break;
      }

      v25 = *v23;
      sub_252E37EC4();
      sub_252E37EE4();
      swift_bridgeObjectRetain_n();
      sub_252E37044();
      v26 = sub_252E37F14();
      v27 = -1 << *(v18 + 32);
      v28 = v26 & ~v27;
      if (((*(v22 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
LABEL_30:

        goto LABEL_31;
      }

      ++v20;
      v29 = ~v27;
      v30 = *(v18 + 48);
      while (1)
      {
        v31 = (v30 + 16 * v28);
        v32 = v31[1];
        if (v32)
        {
          v33 = *v31 == v25 && v32 == v24;
          if (v33 || (sub_252E37DB4() & 1) != 0)
          {
            break;
          }
        }

        v28 = (v28 + 1) & v29;
        if (((*(v22 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      swift_bridgeObjectRelease_n();
      if (v20 == v19)
      {
        goto LABEL_29;
      }
    }

LABEL_31:

    v34 = 0;
  }

  else
  {
LABEL_29:
    v34 = 1;
  }

  return v34;
}

{
  if (a2 >> 62)
  {
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v36 = MEMORY[0x277D84F90];
    result = sub_2529AA380(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v35 = a1;
    v7 = 0;
    v5 = v36;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, a2);
      }

      else
      {
        v8 = *(a2 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 name];
      if (v10)
      {
        v11 = v10;
        v12 = sub_252E36F34();
        v14 = v13;
      }

      else
      {

        v12 = 0;
        v14 = 0;
      }

      v16 = *(v36 + 16);
      v15 = *(v36 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2529AA380((v15 > 1), v16 + 1, 1);
      }

      ++v7;
      *(v36 + 16) = v16 + 1;
      v17 = v36 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v4 != v7);
    a1 = v35;
  }

  v18 = sub_252C75A1C(v5);

  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = a1 + 32;
    v22 = v18 + 56;
    while (1)
    {
      v23 = (v21 + 16 * v20);
      v24 = v23[1];
      if (!*(v18 + 16))
      {
        break;
      }

      v25 = *v23;
      sub_252E37EC4();
      sub_252E37EE4();
      swift_bridgeObjectRetain_n();
      sub_252E37044();
      v26 = sub_252E37F14();
      v27 = -1 << *(v18 + 32);
      v28 = v26 & ~v27;
      if (((*(v22 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
LABEL_30:

        goto LABEL_31;
      }

      ++v20;
      v29 = ~v27;
      v30 = *(v18 + 48);
      while (1)
      {
        v31 = (v30 + 16 * v28);
        v32 = v31[1];
        if (v32)
        {
          v33 = *v31 == v25 && v32 == v24;
          if (v33 || (sub_252E37DB4() & 1) != 0)
          {
            break;
          }
        }

        v28 = (v28 + 1) & v29;
        if (((*(v22 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      swift_bridgeObjectRelease_n();
      if (v20 == v19)
      {
        goto LABEL_29;
      }
    }

LABEL_31:

    v34 = 0;
  }

  else
  {
LABEL_29:
    v34 = 1;
  }

  return v34;
}

uint64_t HomeAttributeTargetArea.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](8315, 0xE200000000000000);
  v2 = [v0 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_252E36F34();
    v6 = v5;
  }

  else
  {
    v6 = 0xE600000000000000;
    v4 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v4, v6);

  MEMORY[0x2530AD570](0x444961657261202CLL, 0xEA0000000000203ALL);
  [v1 areaID];
  sub_252E37374();
  MEMORY[0x2530AD570](0x3A444970616D202CLL, 0xE900000000000020);
  [v1 mapID];
  sub_252E37374();
  MEMORY[0x2530AD570](32032, 0xE200000000000000);
  return 0;
}

uint64_t HomeAttributeTargetArea.indentedDescription.getter()
{
  v1 = v0;
  sub_252E379F4();
  v2 = [v0 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_252E36F34();
    v6 = v5;
  }

  else
  {
    v6 = 0xE600000000000000;
    v4 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v4, v6);

  MEMORY[0x2530AD570](0x4961657261207B20, 0xEB00000000203A44);
  [v1 areaID];
  sub_252E37374();
  MEMORY[0x2530AD570](0x3A444970616D202CLL, 0xE900000000000020);
  [v1 mapID];
  sub_252E37374();
  MEMORY[0x2530AD570](32032, 0xE200000000000000);
  v7 = sub_252AD24A4(1, 8224, 0xE200000000000000);

  return v7;
}

BOOL HomeAttributeTargetArea.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v22);
  if (v23)
  {
    type metadata accessor for HomeAttributeTargetArea();
    if (swift_dynamicCast())
    {
      v2 = [v21 name];
      if (v2)
      {
        v3 = v2;
        v4 = sub_252E36F34();
        v6 = v5;
      }

      else
      {
        v4 = 0;
        v6 = 0;
      }

      v7 = [v1 name];
      if (v7)
      {
        v8 = v7;
        v9 = sub_252E36F34();
        v11 = v10;

        if (!v6)
        {
          if (!v11)
          {
            goto LABEL_18;
          }

          goto LABEL_20;
        }

        if (v11)
        {
          if (v4 == v9 && v6 == v11)
          {

            goto LABEL_18;
          }

          v12 = sub_252E37DB4();

          if (v12)
          {
LABEL_18:
            [v21 areaID];
            v14 = v13;
            [v1 areaID];
            if (v14 == v15)
            {
              [v21 mapID];
              v17 = v16;
              [v1 mapID];
              v19 = v18;

              return v17 == v19;
            }
          }

LABEL_20:

          return 0;
        }
      }

      else if (!v6)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    sub_252982F10(v22);
  }

  return 0;
}

char *Array<A>.contains(_:)(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_31;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v26 = MEMORY[0x277D84F90];
    result = sub_2529AA660(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    v5 = v26;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v7 + 32);
      }

      v9 = v8;
      [v8 areaID];
      v11 = v10;

      v13 = *(v26 + 16);
      v12 = *(v26 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2529AA660((v12 > 1), v13 + 1, 1);
      }

      ++v7;
      *(v26 + 16) = v13 + 1;
      *(v26 + 8 * v13 + 32) = v11;
    }

    while (v4 != v7);
  }

  v14 = sub_252C75AFC(v5);

  if (a1 >> 62)
  {
    v2 = sub_252E378C4();
    if (v2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_14:
      v15 = 0;
      v16 = v14 + 56;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x2530ADF00](v15, a1);
        }

        else
        {
          if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            v4 = sub_252E378C4();
            goto LABEL_3;
          }

          v17 = *(a1 + 32 + 8 * v15);
        }

        v18 = v17;
        if (__OFADD__(v15++, 1))
        {
          goto LABEL_30;
        }

        [v17 areaID];
        if (!*(v14 + 16) || (v21 = v20, v22 = sub_252E37EB4(), v23 = -1 << *(v14 + 32), v24 = v22 & ~v23, ((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0))
        {
LABEL_28:

          return 0;
        }

        v25 = ~v23;
        while (*(*(v14 + 48) + 8 * v24) != v21)
        {
          v24 = (v24 + 1) & v25;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      while (v15 != v2);
    }
  }

  return 1;
}

uint64_t Array<A>.contains(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v6 = sub_252E378C4();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v31 = MEMORY[0x277D84F90];
    result = sub_2529AA380(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v29 = a1;
    v30 = a2;
    v9 = 0;
    v7 = v31;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2530ADF00](v9, a3);
      }

      else
      {
        v10 = *(a3 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 name];
      if (v12)
      {
        v13 = v12;
        v14 = sub_252E36F34();
        v16 = v15;
      }

      else
      {

        v14 = 0;
        v16 = 0;
      }

      v18 = *(v31 + 16);
      v17 = *(v31 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2529AA380((v17 > 1), v18 + 1, 1);
      }

      ++v9;
      *(v31 + 16) = v18 + 1;
      v19 = v31 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v6 != v9);
    a1 = v29;
    a2 = v30;
  }

  v20 = sub_252C75A1C(v7);

  if (*(v20 + 16) && (sub_252E37EC4(), sub_252E37EE4(), sub_252E37044(), v21 = sub_252E37F14(), v22 = -1 << *(v20 + 32), v23 = v21 & ~v22, ((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
  {
    v24 = ~v22;
    v25 = *(v20 + 48);
    while (1)
    {
      v26 = (v25 + 16 * v23);
      v27 = v26[1];
      if (v27)
      {
        v28 = *v26 == a1 && v27 == a2;
        if (v28 || (sub_252E37DB4() & 1) != 0)
        {
          break;
        }
      }

      v23 = (v23 + 1) & v24;
      if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    return 1;
  }

  else
  {
LABEL_27:

    return 0;
  }
}

{
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(a3 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 name];
      if (v11)
      {
        v12 = v11;
        v13 = sub_252E36F34();
        v15 = v14;

        if (v13 == a1 && v15 == a2)
        {

          return 1;
        }

        v17 = sub_252E37DB4();

        if (v17)
        {
          return 1;
        }
      }

      else
      {
      }

      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return 0;
}

uint64_t Array<A>.filter(_:)(uint64_t a1, unint64_t a2)
{
  v17 = a1;
  v19 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v16 = a2 & 0xC000000000000001;
    while (1)
    {
      if (v16)
      {
        v5 = MEMORY[0x2530ADF00](v4, a2);
      }

      else
      {
        if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(a2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 name];
      if (v8)
      {
        v9 = v8;
        v10 = sub_252E36F34();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0xE000000000000000;
      }

      v18[0] = v10;
      v18[1] = v12;
      MEMORY[0x28223BE20](v8);
      v15[2] = v18;
      v13 = sub_2529ED970(sub_25296A69C, v15, v17);

      if (v13)
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        return v19;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

{
  v17 = a1;
  v19 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v16 = a2 & 0xC000000000000001;
    while (1)
    {
      if (v16)
      {
        v5 = MEMORY[0x2530ADF00](v4, a2);
      }

      else
      {
        if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(a2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 name];
      if (v8)
      {
        v9 = v8;
        v10 = sub_252E36F34();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0xE000000000000000;
      }

      v18[0] = v10;
      v18[1] = v12;
      MEMORY[0x28223BE20](v8);
      v15[2] = v18;
      v13 = sub_2529ED970(sub_25296A69C, v15, v17);

      if (v13)
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        return v19;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252C75848(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2530AD880](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_252DA6CD0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_252C75A1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v4 = sub_252C76D0C();
  result = MEMORY[0x2530AD880](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_252DA7244(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_252C75AFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2530AD880](v2, MEMORY[0x277D839F8], MEMORY[0x277D83A18]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_252DA73E8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_252C75BA4(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for HomeAutomationEntityState(0);
  v5 = sub_252C76508(&qword_27F540E40, type metadata accessor for HomeAutomationEntityState, byte_252E430B8);
  result = MEMORY[0x2530AD880](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_252DA7524(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_252E378C4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t (*sub_252C75E50(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(id *, uint64_t (*)(void))))(uint64_t)
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a2(0); ; i = v20(0))
  {
    v12 = i;
    v13 = sub_252C76508(a3, a4, MEMORY[0x277D85378]);
    result = MEMORY[0x2530AD880](v10, v12, v13);
    v22 = result;
    if (v9)
    {
      break;
    }

    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v15 = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2530ADF00](v15, a1);
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      a2 = v16;
      v17 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      a4 = &v22;
      a5(&v21, v16);

      ++v15;
      if (v17 == a3)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v18 = a2;
    v19 = sub_252E378C4();
    v20 = v18;
    v10 = v19;
  }

  a4 = result;
  a3 = sub_252E378C4();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_252C75FB8()
{
  result = qword_27F5447A0;
  if (!qword_27F5447A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAttributeModeType, &type metadata for HomeAttributeModeType, v0, v1);
    atomic_store(result, &qword_27F5447A0);
  }

  return result;
}

uint64_t sub_252C76054(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2530AD880](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_252DA87DC(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_252C760C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_252B3AD80();
  result = MEMORY[0x2530AD880](v2, &type metadata for HueSemantic, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_252DA8BCC(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_252C7613C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_252C762E8();
  result = MEMORY[0x2530AD880](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_252DA88E8(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t sub_252C762E8()
{
  result = qword_27F542C40;
  if (!qword_27F542C40)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540A28, &qword_252E3DF80);
    result = swift_getWitnessTable(MEMORY[0x277D5F440], v3, v0, v1);
    atomic_store(result, &qword_27F542C40);
  }

  return result;
}

uint64_t sub_252C76380(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x2530AD880](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

unint64_t sub_252C76400()
{
  result = qword_27F5447A8;
  if (!qword_27F5447A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessoryTypeSemantic, &type metadata for AccessoryTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F5447A8);
  }

  return result;
}

uint64_t sub_252C76488(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x2530AD880](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_252C76508(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_252C765E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_252ABC210();
  result = MEMORY[0x2530AD880](v2, &type metadata for ReferencedEntityValue, v3);
  v14 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 112);
      v15[6] = *(v5 + 96);
      v15[7] = v6;
      v15[8] = *(v5 + 128);
      v16 = *(v5 + 144);
      v7 = *(v5 + 48);
      v15[2] = *(v5 + 32);
      v15[3] = v7;
      v8 = *(v5 + 80);
      v15[4] = *(v5 + 64);
      v15[5] = v8;
      v9 = *(v5 + 16);
      v15[0] = *v5;
      v15[1] = v9;
      sub_25297DE08(v15, v12);
      sub_252DA8480(v10, v15);
      v12[6] = v10[6];
      v12[7] = v10[7];
      v12[8] = v10[8];
      v13 = v11;
      v12[2] = v10[2];
      v12[3] = v10[3];
      v12[4] = v10[4];
      v12[5] = v10[5];
      v12[0] = v10[0];
      v12[1] = v10[1];
      sub_2529AEC80(v12);
      v5 += 152;
      --v2;
    }

    while (v2);
    return v14;
  }

  return result;
}

uint64_t (*sub_252C76730(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(uint64_t *, uint64_t)))(uint64_t)
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v18 = a2;
    v19 = sub_252E378C4();
    v20 = v18;
    v10 = v19;
    v11 = v20(0);
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = a2(0);
  }

  v12 = v11;
  v13 = sub_252C76508(a3, a4, protocol conformance descriptor for Entity);
  result = MEMORY[0x2530AD880](v10, v12, v13);
  v22 = result;
  if (!v9)
  {
    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v15 = 0;
    v9 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v9)
      {
        v16 = MEMORY[0x2530ADF00](v15, a1);
        v17 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
LABEL_15:
          __break(1u);
          return v22;
        }
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v16 = *(a1 + 8 * v15 + 32);

        v17 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_15;
        }
      }

      a4 = &v22;
      a5(&v21, v16);

      ++v15;
      if (v17 == a3)
      {
        return v22;
      }
    }
  }

  a4 = result;
  a3 = sub_252E378C4();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_252C768DC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_25293F638(255, a2, a3);
    result = swift_getWitnessTable(MEMORY[0x277D85378], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252C7692C()
{
  result = qword_27F5447B0;
  if (!qword_27F5447B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeSceneType, &type metadata for HomeSceneType, v0, v1);
    atomic_store(result, &qword_27F5447B0);
  }

  return result;
}

uint64_t sub_252C76980(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_252C76A2C();
  result = MEMORY[0x2530AD880](v2, &type metadata for IconInfo, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v11[0] = *v5;
      v11[1] = v6;
      v7 = v5[3];
      v11[2] = v5[2];
      v11[3] = v7;
      sub_252C76A80(v11, v9);
      sub_252DA8F78(v8, v11);
      v9[0] = v8[0];
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      sub_252C76ADC(v9);
      v5 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_252C76A2C()
{
  result = qword_27F5447B8;
  if (!qword_27F5447B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IconInfo, &type metadata for IconInfo, v0, v1);
    atomic_store(result, &qword_27F5447B8);
  }

  return result;
}

unint64_t *sub_252C76B60(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v12 = sub_25293F638(0, a2, a3);
    v13 = sub_252C768DC(a4, a2, a3);
    result = MEMORY[0x2530AD880](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x2530ADF00](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_252E378C4();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_252C76CB8()
{
  result = qword_27F5447F0;
  if (!qword_27F5447F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeTaskOutcome, &type metadata for HomeTaskOutcome, v0, v1);
    atomic_store(result, &qword_27F5447F0);
  }

  return result;
}

unint64_t sub_252C76D0C()
{
  result = qword_27F5447F8;
  if (!qword_27F5447F8)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F541300, &qword_252E3C100);
    v4[0] = MEMORY[0x277D837E0];
    result = swift_getWitnessTable(MEMORY[0x277D84F48], v3, v4);
    atomic_store(result, &qword_27F5447F8);
  }

  return result;
}

uint64_t sub_252C76D88(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_252C76E34();
  result = MEMORY[0x2530AD880](v2, &type metadata for HomeAutomationIntent, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      memcpy(__dst, v5, sizeof(__dst));
      sub_2529353AC(__dst, v7);
      sub_252DA977C(v6, __dst);
      memcpy(v7, v6, sizeof(v7));
      sub_252935408(v7);
      v5 += 504;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_252C76E34()
{
  result = qword_27F544800;
  if (!qword_27F544800)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent, &type metadata for HomeAutomationIntent, v0, v1);
    atomic_store(result, &qword_27F544800);
  }

  return result;
}

void sub_252C76E8C(uint64_t a1)
{
  v3 = [v1 homeAutomationRequestMetadata];
  if (v3)
  {
    v4 = v3;
    sub_252AD4414(a1);
    v8 = sub_252E37254();

    [v4 setTargetedEntityTypes_];

LABEL_5:

    return;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
  if (v5)
  {
    v8 = v5;
    sub_252AD4414(a1);
    v6 = sub_252E37254();

    [v8 setTargetedEntityTypes_];

    [v1 setHomeAutomationRequestMetadata_];
    goto LABEL_5;
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544E38);
  sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000019, 0x8000000252E8E880, 398);
}

void sub_252C7704C(uint64_t a1)
{
  v3 = [v1 homeAutomationRequestMetadata];
  if (v3)
  {
    v6 = v3;
    [v3 setSmallestTargetedContainer_];
LABEL_5:

    return;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
  if (v4)
  {
    v6 = v4;
    [v4 setSmallestTargetedContainer_];
    [v1 setHomeAutomationRequestMetadata_];
    goto LABEL_5;
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544E38);
  sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD00000000000001FLL, 0x8000000252E8E900, 414);
}

void sub_252C771A8(unint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v5 = [v2 homeAutomationRequestMetadata];
  if (v5)
  {
    v6 = v5;
    v10 = sub_252E36F04();
    [v6 setTargetAttribute_];

LABEL_6:

    return;
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
  if (v7)
  {
    v10 = v7;
    sub_252AD41C0(a1, a2);
    v8 = sub_252E36F04();

    [v10 setTargetAttribute_];

    [v2 setHomeAutomationRequestMetadata_];
    goto LABEL_6;
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544E38);
  sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000015, 0x8000000252E8E8E0, 434);
}

void sub_252C77358(unint64_t a1)
{
  v3 = [v1 homeAutomationRequestMetadata];
  if (!v3)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
    if (!v4)
    {
      if (qword_27F53F530 == -1)
      {
LABEL_13:
        v5 = sub_252E36AD4();
        __swift_project_value_buffer(v5, qword_27F544E38);
        sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000019, 0x8000000252E8E8C0, 366);
        return;
      }

LABEL_18:
      swift_once();
      goto LABEL_13;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(a1))
      {
        v6 = v4;
        [v4 setTargetedEntityCount_];
        [v1 setHomeAutomationRequestMetadata_];
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (HIDWORD(a1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v3;
  [v3 setTargetedEntityCount_];
LABEL_9:
}

void sub_252C774DC(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    return;
  }

  v3 = [v1 homeAutomationRequestMetadata];
  if (v3)
  {
    v6 = v3;
    [v3 setConditionType_];
LABEL_6:

    return;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
  if (v4)
  {
    v6 = v4;
    [v4 setConditionType_];
    [v1 setHomeAutomationRequestMetadata_];
    goto LABEL_6;
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544E38);
  sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000013, 0x8000000252E8E940, 454);
}

void sub_252C7763C(char a1)
{
  v3 = [v1 homeAutomationRequestMetadata];
  if (v3)
  {
    v6 = v3;
    [v3 setIsRecurring_];
LABEL_5:

    return;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
  if (v4)
  {
    v6 = v4;
    [v4 setIsRecurring_];
    [v1 setHomeAutomationRequestMetadata_];
    goto LABEL_5;
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544E38);
  sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000011, 0x8000000252E8E920, 470);
}

void sub_252C77798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return;
  }

  v5 = [v3 homeAutomationRequests];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  sub_252A01B88();
  v7 = sub_252E37264();

  v8 = [v3 commandDuration];
  if (v7 >> 62)
  {
    v19 = v8;
    v9 = sub_252E378C4();
    v8 = v19;
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_21:

    return;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_5:
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2530ADF00](v10, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = [v13 homeAutomationRequestMetadata];
      if (v15)
      {
        v12 = v15;
        [v15 setIsHomeAutomationRequestAsynchronous_];
      }

      else
      {
        v16 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
        if (!v16)
        {
          if (qword_27F53F530 != -1)
          {
            swift_once();
          }

          v18 = sub_252E36AD4();
          __swift_project_value_buffer(v18, qword_27F544E38);
          sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000029, 0x8000000252E8EAB0, 350);
          goto LABEL_9;
        }

        v17 = v16;
        [v16 setIsHomeAutomationRequestAsynchronous_];
        v12 = v17;
        [v14 setHomeAutomationRequestMetadata_];
      }

LABEL_9:
      ++v10;

      if (v9 == v10)
      {
        goto LABEL_21;
      }
    }
  }

  __break(1u);
}

void sub_252C77A20(unint64_t a1)
{
  v3 = [v1 homeAutomationRequestMetadata];
  if (!v3)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
    if (!v4)
    {
      if (qword_27F53F530 == -1)
      {
LABEL_13:
        v5 = sub_252E36AD4();
        __swift_project_value_buffer(v5, qword_27F544E38);
        sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD00000000000001ALL, 0x8000000252E8E8A0, 382);
        return;
      }

LABEL_18:
      swift_once();
      goto LABEL_13;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(a1))
      {
        v6 = v4;
        [v4 setFulfilledEntityCount_];
        [v1 setHomeAutomationRequestMetadata_];
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (HIDWORD(a1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v3;
  [v3 setFulfilledEntityCount_];
LABEL_9:
}

uint64_t sub_252C77BA4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_252E32E84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252C4AE84(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_252C7898C(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  v12 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v13 = sub_252E32E44();
  v14 = [v12 initWithNSUUID_];

  [v2 setCommandId_];
  return (*(v8 + 8))(v10, v7);
}

void sub_252C77D64(char a1)
{
  v3 = [v1 homeAutomationRequestMetadata];
  if (v3)
  {
    v6 = v3;
    [v3 setIsHomeAutomationRequestAsynchronous_];
LABEL_5:

    return;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
  if (v4)
  {
    v6 = v4;
    [v4 setIsHomeAutomationRequestAsynchronous_];
    [v1 setHomeAutomationRequestMetadata_];
    goto LABEL_5;
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544E38);
  sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000029, 0x8000000252E8EAB0, 350);
}

void sub_252C77EC4(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = a1;
    v4 = [v2 homeAutomationRequests];
    if (v4)
    {
      v5 = v4;
      sub_252A01B88();
      v6 = sub_252E37264();

      v7 = v3;
      MEMORY[0x2530AD700]();
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
      v7 = v3;
      MEMORY[0x2530AD700]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      sub_252A01B88();
    }

    v8 = sub_252E37254();

    [v2 setHomeAutomationRequests_];
  }
}

uint64_t sub_252C78058(unint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    goto LABEL_2;
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a1))
    {
      v6 = v5;
      [v6 setHomeCount_];

      return v3;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D575A0]) init];
  if (!v8)
  {
    if (qword_27F53F530 == -1)
    {
LABEL_13:
      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544E38);
      sub_252CC4050(0xD00000000000001BLL, 0x8000000252E8EA10, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000010, 0x8000000252E8EA90, 26);
      goto LABEL_2;
    }

LABEL_18:
    swift_once();
    goto LABEL_13;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  if (HIDWORD(a1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  [v8 setHomeCount_];
  v10 = *(v3 + 16);
  *(v3 + 16) = v9;

LABEL_2:

  return v3;
}

uint64_t sub_252C781CC(unint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    goto LABEL_2;
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a1))
    {
      v6 = v5;
      [v6 setHomePodCount_];

      return v3;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D575A0]) init];
  if (!v8)
  {
    if (qword_27F53F530 == -1)
    {
LABEL_13:
      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544E38);
      sub_252CC4050(0xD00000000000001BLL, 0x8000000252E8EA10, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000013, 0x8000000252E8EA70, 48);
      goto LABEL_2;
    }

LABEL_18:
    swift_once();
    goto LABEL_13;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  if (HIDWORD(a1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  [v8 setHomePodCount_];
  v10 = *(v3 + 16);
  *(v3 + 16) = v9;

LABEL_2:

  return v3;
}

uint64_t sub_252C7833C(unint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    goto LABEL_2;
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a1))
    {
      v6 = v5;
      [v6 setAppleTvCount_];

      return v3;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D575A0]) init];
  if (!v8)
  {
    if (qword_27F53F530 == -1)
    {
LABEL_13:
      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544E38);
      sub_252CC4050(0xD00000000000001BLL, 0x8000000252E8EA10, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000013, 0x8000000252E8EA50, 70);
      goto LABEL_2;
    }

LABEL_18:
    swift_once();
    goto LABEL_13;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  if (HIDWORD(a1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  [v8 setAppleTvCount_];
  v10 = *(v3 + 16);
  *(v3 + 16) = v9;

LABEL_2:

  return v3;
}

uint64_t sub_252C784AC(char a1)
{
  v2 = v1;
  if (a1 != 2)
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = v4;
      [v5 setHasCurrentHome_];

      return v2;
    }

    v7 = [objc_allocWithZone(MEMORY[0x277D575A0]) init];
    if (v7)
    {
      v8 = a1 & 1;
      v9 = v7;
      [v7 setHasCurrentHome_];
      v10 = *(v2 + 16);
      *(v2 + 16) = v9;
    }

    else
    {
      if (qword_27F53F530 != -1)
      {
        swift_once();
      }

      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544E38);
      sub_252CC4050(0xD00000000000001BLL, 0x8000000252E8EA10, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD000000000000015, 0x8000000252E8EA30, 92);
    }
  }

  return v2;
}

void *sub_252C785FC()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544E38);
    sub_252CC4050(0xD000000000000042, 0x8000000252E8E980, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0x2928646C697562, 0xE700000000000000, 261);
    return 0;
  }

  v2 = objc_allocWithZone(MEMORY[0x277D57578]);
  v3 = v1;
  v4 = [v2 init];
  if (!v4)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D60);
    sub_252CC4050(0xD00000000000003BLL, 0x8000000252E8E9D0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0x2928646C697562, 0xE700000000000000, 266);

    return 0;
  }

  v5 = v4;
  if (*(v0 + 16))
  {
    [v4 setHomeContext_];
  }

  [v5 setHomeAutomationCommand_];

  return v5;
}

uint64_t sub_252C787CC()
{

  return swift_deallocClassInstance();
}

void sub_252C78830(char a1)
{
  v3 = [v1 homeAutomationRequestMetadata];
  if (v3)
  {
    v6 = v3;
    [v3 setIsIntentSelectionCacheHit_];
LABEL_5:

    return;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
  if (v4)
  {
    v6 = v4;
    [v4 setIsIntentSelectionCacheHit_];
    [v1 setHomeAutomationRequestMetadata_];
    goto LABEL_5;
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544E38);
  sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD00000000000001FLL, 0x8000000252E8E960, 486);
}

uint64_t sub_252C7898C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_252C789F4(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v25);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v6 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_252E378C4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_252E378C4();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v13 >> 1) - v12) < v8)
          {
            goto LABEL_43;
          }

          v32 = v3;
          v16 = v11 + 8 * v12 + 32;
          v27 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            sub_25292A398();
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F53FBC0, &unk_252E3B240);
              v18 = sub_2529FBE00(v31, i, v6);
              v20 = *v19;

              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            type metadata accessor for Service(0);
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v8 >= 1)
          {
            v21 = *(v27 + 16);
            v5 = __OFADD__(v21, v8);
            v22 = v21 + v8;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v27 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_24;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
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
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_252C78D40(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t *a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v2 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v4 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v27 = v2;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v3, v26);
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v3 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v7 = sub_252D51310(v6);

      v8 = v7 >> 62;
      v9 = v7 >> 62 ? sub_252E378C4() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v4 >> 62;
      if (v4 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v9;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          v12 = v4 & 0xFFFFFFFFFFFFFF8;
          if (v11 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_252E378C4();
        goto LABEL_19;
      }

      if (v10)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        v16 = v12;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v12 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v14 >> 1) - v13) < v32)
          {
            goto LABEL_43;
          }

          v17 = v12 + 8 * v13 + 32;
          v28 = v12;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_45;
            }

            sub_25292A398();
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F53FBC0, &unk_252E3B240);
              v19 = sub_2529FBE00(v31, i, v7);
              v21 = *v20;

              (v19)(v31, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for Service(0);
            swift_arrayInitWithCopy();
          }

          v2 = v27;
          if (v32 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v32);
            v23 = v22 + v32;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_24;
        }
      }

      if (v32 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v3 == v2)
      {
        return v4;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
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
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v2 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252C790CC()
{
  type metadata accessor for WaterSystemHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252C790FC(unint64_t a1)
{
  v1 = a1;
  v39 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2530ADF00](v4, v1);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v5 = *(v1 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v2 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v7 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
      if (v7 >> 62)
      {
        if (sub_252E378C4() > 1)
        {
LABEL_12:
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_6;
        }
      }

      else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
      {
        goto LABEL_12;
      }

LABEL_6:
      ++v4;
      if (v6 == v2)
      {
        v8 = v39;
        v3 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_20:
  v9 = sub_252C789F4(v8);

  v39 = v3;
  if (v9 >> 62)
  {
    v1 = sub_252E378C4();
    if (v1)
    {
      goto LABEL_22;
    }

LABEL_45:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_46;
  }

  v1 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    goto LABEL_45;
  }

LABEL_22:
  v10 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2530ADF00](v10, v9);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v10 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v11 = *(v9 + 8 * v10 + 32);

      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }
    }

    v13 = [*(v11 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v14 = sub_252E36F34();
    v16 = v15;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v17 = off_27F546230;
    if (!*(off_27F546230 + 2) || (v18 = sub_252A44A10(v14, v16), (v19 & 1) == 0))
    {

LABEL_24:

      goto LABEL_25;
    }

    v20 = *(v17[7] + 8 * v18);

    if (v20 != 33)
    {
      goto LABEL_24;
    }

    sub_252E37A94();
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
LABEL_25:
    ++v10;
  }

  while (v12 != v1);
  v21 = v39;
LABEL_46:

  if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
  {
LABEL_68:
    v22 = sub_252E378C4();
    if (!v22)
    {
      goto LABEL_69;
    }

LABEL_49:
    v23 = MEMORY[0x277D84F90];
    v24 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x2530ADF00](v24, v21);
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
          return result;
        }

        v28 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        v27 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

        swift_unknownObjectRelease();
        if (v27)
        {
          goto LABEL_57;
        }

LABEL_54:
        v24 = v25;
        if (v25 == v22)
        {
          goto LABEL_70;
        }
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        if (v24 >= *(v21 + 16))
        {
          goto LABEL_67;
        }

        v25 = v24 + 1;
        v26 = (*(v21 + 32 + 8 * v24) + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        v27 = v26[1];
        if (!v27)
        {
          goto LABEL_54;
        }

        v28 = *v26;

LABEL_57:
        v38 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_2529F7A80(0, *(v23 + 2) + 1, 1, v23);
        }

        v30 = *(v23 + 2);
        v29 = *(v23 + 3);
        if (v30 >= v29 >> 1)
        {
          v23 = sub_2529F7A80((v29 > 1), v30 + 1, 1, v23);
        }

        *(v23 + 2) = v30 + 1;
        v31 = &v23[16 * v30];
        *(v31 + 4) = v38;
        *(v31 + 5) = v27;
        if (v25 == v22)
        {
          goto LABEL_70;
        }

        v24 = v25;
      }
    }
  }

  v22 = *(v21 + 16);
  if (v22)
  {
    goto LABEL_49;
  }

LABEL_69:
  v23 = MEMORY[0x277D84F90];
LABEL_70:

  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v33.n128_f64[0] = HomeFilter.Builder.init()();
  v35 = (*(*v34 + 568))(v23, v33);

  v37 = (*(*v35 + 760))(v36);

  return v37;
}

uint64_t sub_252C7964C(unint64_t a1)
{
  v1 = a1;
  v2 = sub_252C789F4(a1);
  v3 = v2;
  v72 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_62;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = MEMORY[0x277D84F90];
  v69 = v1;
  if (v4)
  {
    v6 = 0;
    v1 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, v3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v7 = *(v3 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          v4 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v9 = [*(v7 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v10 = sub_252E36F34();
      v12 = v11;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v13 = off_27F546230;
      if (*(off_27F546230 + 2) && (v14 = sub_252A44A10(v10, v12), (v15 & 1) != 0))
      {
        v16 = *(v13[7] + 8 * v14);

        if (v16 == 34)
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_7;
        }
      }

      else
      {
      }

LABEL_7:
      ++v6;
      if (v8 == v4)
      {
        v17 = v72;
        v1 = v69;
        v5 = MEMORY[0x277D84F90];
        goto LABEL_22;
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_22:

  v73 = v5;
  if (v1 >> 62)
  {
    v3 = sub_252E378C4();
    if (v3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_24:
      v18 = 0;
      v19 = v1 & 0xC000000000000001;
      v20 = v1 & 0xFFFFFFFFFFFFFF8;
      v21 = &OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services;
      v1 += 32;
      v70 = v3;
      while (1)
      {
        while (1)
        {
          if (v19)
          {
            v22 = MEMORY[0x2530ADF00](v18, v69);
            v23 = __OFADD__(v18++, 1);
            if (v23)
            {
              goto LABEL_60;
            }
          }

          else
          {
            if (v18 >= *(v20 + 16))
            {
              goto LABEL_61;
            }

            v22 = *(v1 + 8 * v18);

            v23 = __OFADD__(v18++, 1);
            if (v23)
            {
              goto LABEL_60;
            }
          }

          v24 = *(v22 + *v21);
          if (v24 >> 62)
          {
            if (sub_252E378C4() != 1)
            {
              goto LABEL_25;
            }
          }

          else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
          {
            goto LABEL_25;
          }

          v25 = (*v22 + 256);
          v26 = *v25;
          if ((*v25)() != 33)
          {
            break;
          }

LABEL_50:
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          if (v18 == v3)
          {
LABEL_57:
            v48 = v73;
            goto LABEL_65;
          }
        }

        v27 = (*(*v22 + 272))();
        if (*(v27 + 16))
        {
          v28 = v1;
          v29 = v20;
          v30 = v19;
          v31 = v21;
          v32 = v27;
          sub_252E37EC4();
          MEMORY[0x2530AE390](33);
          v33 = sub_252E37F14();
          v34 = v32;
          v21 = v31;
          v19 = v30;
          v20 = v29;
          v1 = v28;
          v3 = v70;
          v35 = -1 << *(v34 + 32);
          v36 = v33 & ~v35;
          if ((*(v34 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
          {
            v37 = ~v35;
            while (*(*(v34 + 48) + 8 * v36) != 33)
            {
              v36 = (v36 + 1) & v37;
              if (((*(v34 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
              {
                goto LABEL_37;
              }
            }

            goto LABEL_49;
          }
        }

LABEL_37:

        v39 = (v26)(v38);
        if (v39 == 38)
        {
          v42 = &unk_2864A1B60;
        }

        else
        {
          v40 = v39;
          v41 = MEMORY[0x277D84FA0];
          if (v40 != 41)
          {
            goto LABEL_42;
          }

          v42 = &unk_2864A1B88;
        }

        v41 = sub_2529FC004(v42);
LABEL_42:
        if (*(v41 + 16))
        {
          v43 = v41;
          sub_252E37EC4();
          MEMORY[0x2530AE390](33);
          v44 = sub_252E37F14();
          v45 = -1 << *(v43 + 32);
          v46 = v44 & ~v45;
          if ((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
          {
            v47 = ~v45;
            while (*(*(v43 + 48) + 8 * v46) != 33)
            {
              v46 = (v46 + 1) & v47;
              if (((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
              {
                goto LABEL_47;
              }
            }

LABEL_49:

            goto LABEL_50;
          }
        }

LABEL_47:

        if (sub_252D4FE78(33))
        {
          goto LABEL_50;
        }

LABEL_25:

        if (v18 == v3)
        {
          goto LABEL_57;
        }
      }
    }
  }

  v48 = MEMORY[0x277D84F90];
LABEL_65:
  v49 = sub_252C789F4(v48);

  sub_25297A6EC(v49);
  if (v17 >> 62)
  {
LABEL_86:
    v50 = sub_252E378C4();
    if (v50)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v50 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
LABEL_67:
      v51 = MEMORY[0x277D84F90];
      v52 = 0;
      while (1)
      {
        while ((v17 & 0xC000000000000001) == 0)
        {
          if ((v52 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

          if (v52 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }

          v53 = v52 + 1;
          v54 = (*(v17 + 32 + 8 * v52) + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
          v55 = v54[1];
          if (!v55)
          {
            goto LABEL_72;
          }

          v71 = *v54;

LABEL_75:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = sub_2529F7A80(0, *(v51 + 2) + 1, 1, v51);
          }

          v57 = *(v51 + 2);
          v56 = *(v51 + 3);
          v58 = v57 + 1;
          v59 = v71;
          if (v57 >= v56 >> 1)
          {
            v63 = sub_2529F7A80((v56 > 1), v57 + 1, 1, v51);
            v58 = v57 + 1;
            v59 = v71;
            v51 = v63;
          }

          *(v51 + 2) = v58;
          v60 = &v51[16 * v57];
          *(v60 + 4) = v59;
          *(v60 + 5) = v55;
          if (v53 == v50)
          {
            goto LABEL_88;
          }

          v52 = v53;
        }

        result = MEMORY[0x2530ADF00](v52, v17);
        v53 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          __break(1u);
          return result;
        }

        v62 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        v55 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

        swift_unknownObjectRelease();
        if (v55)
        {
          v71 = v62;
          goto LABEL_75;
        }

LABEL_72:
        v52 = v53;
        if (v53 == v50)
        {
          goto LABEL_88;
        }
      }
    }
  }

  v51 = MEMORY[0x277D84F90];
LABEL_88:

  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v64.n128_f64[0] = HomeFilter.Builder.init()();
  v66 = (*(*v65 + 568))(v51, v64);

  v68 = (*(*v66 + 760))(v67);

  return v68;
}

void sub_252C79DF8(void *a1, void *a2, void (*a3)(void *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_252E3C130;
  *(v5 + 32) = a1;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C130;
  v85 = type metadata accessor for HomeAttributeValue();
  v7 = objc_allocWithZone(v85);
  v8 = a1;
  v9 = sub_252E36F04();
  v10 = &off_279711000;
  v11 = [v7 initWithIdentifier:0 displayString:v9];

  v12 = v11;
  [v12 setBoolValue_];
  [v12 setType_];

  v87 = type metadata accessor for HomeUserTask();
  v13 = objc_allocWithZone(v87);
  v14 = sub_252E36F04();
  v15 = [v13 initWithIdentifier:0 displayString:v14];

  v18 = v15;
  [v18 setTaskType_];
  [v18 setAttribute_];
  [v18 setValue_];

  *(inited + 32) = v18;
  v16 = sub_252B4CA9C(v5, inited, 0, 1);
  LOBYTE(v18) = v17;

  swift_setDeallocating();
  swift_arrayDestroy();
  v19 = MEMORY[0x277D84F90];
  v20 = sub_2529F7BEC(0, 1, 1, MEMORY[0x277D84F90]);
  v22 = v20[2];
  v21 = v20[3];
  v23 = v22 + 1;
  if (v22 >= v21 >> 1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v20[2] = v23;
    v24 = &v20[2 * v22];
    v24[4] = v16;
    *(v24 + 40) = v18 & 1;
    v25 = v20;
    v26 = objc_allocWithZone(v87);
    v27 = sub_252E36F04();
    v28 = [v26 *(v10 + 1808)];

    v29 = v28;
    [v29 setTaskType_];
    [v29 setAttribute_];
    [v29 setValue_];

    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_252E3C130;
    *(v30 + 32) = a2;
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_252E3C130;
    *(v31 + 32) = v29;
    v10 = v29;
    v84 = a2;
    v32 = sub_252B4CA9C(v30, v31, 0, 1);
    v34 = v33;

    swift_setDeallocating();
    swift_arrayDestroy();
    v89 = v34;
    v35 = v34 & 1;
    v88 = v32;
    sub_2529904E4(v32);
    v36 = v25;
    v16 = v25[2];
    v37 = v25[3];
    if (v16 >= v37 >> 1)
    {
      v36 = sub_2529F7BEC((v37 > 1), v16 + 1, 1, v25);
    }

    v36[2] = v16 + 1;
    v38 = &v36[2 * v16];
    v39 = v32;
    v38[4] = v32;
    *(v38 + 40) = v35;
    if (v89)
    {
      break;
    }

    v83 = v36;
    v43 = v32;
    v18 = &off_279711000;
    v44 = [v43 entityResponses];
    if (v44)
    {
      v45 = v44;
      type metadata accessor for HomeEntityResponse();
      v16 = sub_252E37264();

      if (v16 >> 62)
      {
        v81 = sub_252E378C4();
      }

      else
      {
        v81 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v81 = 0;
    }

    v46 = [v43 entityResponses];
    if (!v46)
    {
      goto LABEL_64;
    }

    v47 = v46;
    type metadata accessor for HomeEntityResponse();
    v23 = sub_252E37264();

    v97 = v19;
    v82 = v23;
    if (v23 >> 62)
    {
      a2 = sub_252E378C4();
      if (!a2)
      {
LABEL_56:
        v60 = MEMORY[0x277D84F90];
LABEL_57:

        if ((v60 & 0x8000000000000000) != 0 || (v60 & 0x4000000000000000) != 0)
        {
          v61 = sub_252E378C4();
        }

        else
        {
          v61 = *(v60 + 2);
        }

        if (v61 == v81)
        {
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_252E3C130;
          *(v62 + 32) = v84;
          v63 = swift_initStackObject();
          *(v63 + 16) = xmmword_252E3C130;
          v64 = objc_allocWithZone(v85);
          v65 = v84;
          v66 = sub_252E36F04();
          v67 = [v64 initWithIdentifier:0 displayString:v66];

          v68 = v67;
          [v68 setBoolValue_];
          [v68 setType_];

          v69 = objc_allocWithZone(v87);
          v70 = sub_252E36F04();
          v71 = [v69 initWithIdentifier:0 displayString:v70];

          v72 = v71;
          [v72 setTaskType_];
          [v72 setAttribute_];
          [v72 setValue_];

          *(v63 + 32) = v72;
          v73 = sub_252B4CA9C(v62, v63, 0, 1);
          v75 = v74;

          swift_setDeallocating();
          swift_arrayDestroy();
          v76 = v83;
          v78 = v83[2];
          v77 = v83[3];
          if (v78 >= v77 >> 1)
          {
            v76 = sub_2529F7BEC((v77 > 1), v78 + 1, 1, v83);
          }

          v76[2] = v78 + 1;
          v79 = &v76[2 * v78];
          v79[4] = v73;
          *(v79 + 40) = v75 & 1;
        }

        else
        {
LABEL_64:
          v76 = v83;
        }

        v80 = sub_252B4F134(v76);

        v42 = combineResults(results:)(v80);

        v39 = v88;
        goto LABEL_66;
      }
    }

    else
    {
      a2 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a2)
      {
        goto LABEL_56;
      }
    }

    v22 = 0;
    v93 = v23 & 0xFFFFFFFFFFFFFF8;
    v94 = v23 & 0xC000000000000001;
    v92 = v23 + 32;
    v90 = a2;
    v91 = v10;
    while (1)
    {
      if (v94)
      {
        v48 = MEMORY[0x2530ADF00](v22, v82);
      }

      else
      {
        v21 = *(v93 + 16);
        if (v22 >= v21)
        {
          goto LABEL_52;
        }

        v48 = *(v92 + 8 * v22);
      }

      v49 = v48;
      if (__OFADD__(v22++, 1))
      {
        break;
      }

      v19 = [v10 attribute];
      v51 = [v49 taskResponses];
      if (v51)
      {
        v16 = v51;
        type metadata accessor for HomeUserTaskResponse();
        v23 = sub_252E37264();

        v95 = v49;
        v96 = v22;
        if (v23 >> 62)
        {
          v22 = sub_252E378C4();
          if (v22)
          {
LABEL_26:
            v10 = 0;
            a2 = (v23 & 0xC000000000000001);
            while (1)
            {
              if (a2)
              {
                v52 = MEMORY[0x2530ADF00](v10, v23);
              }

              else
              {
                v21 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v10 >= v21)
                {
                  goto LABEL_50;
                }

                v52 = *(v23 + 8 * v10 + 32);
              }

              v16 = v52;
              v53 = (v10 + 1);
              if (__OFADD__(v10, 1))
              {
                __break(1u);
LABEL_50:
                __break(1u);
                goto LABEL_51;
              }

              v54 = [v52 userTask];
              if (v54)
              {
                v18 = v54;
                v55 = [v54 attribute];

                if (v55 == v19)
                {
                  break;
                }
              }

              ++v10;
              if (v53 == v22)
              {
                goto LABEL_17;
              }
            }

            v19 = [v16 userTask];

            v10 = v91;
            v22 = v96;
            if (v19)
            {
              v23 = [v19 value];

              a2 = v90;
              v16 = v95;
              if (v23 && (v19 = [v23 BOOLValue], v23, (v19 & 1) == 0))
              {
                v19 = &v97;
                sub_252E37A94();
                v23 = *(v97 + 2);
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
              }

              else
              {
              }
            }

            else
            {

              a2 = v90;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v22 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v22)
          {
            goto LABEL_26;
          }
        }

LABEL_17:

        a2 = v90;
        v10 = v91;
        v22 = v96;
      }

      else
      {
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v56 = sub_252E36AD4();
        v23 = __swift_project_value_buffer(v56, qword_27F544D60);
        v98 = 0;
        v99 = 0xE000000000000000;
        sub_252E379F4();

        v98 = 0xD00000000000002DLL;
        v99 = 0x8000000252E6E870;
        v57 = [v49 description];
        v58 = sub_252E36F34();
        v18 = v59;

        MEMORY[0x2530AD570](v58, v18);

        v16 = v99;
        v19 = v23;
        sub_252CC3D90(v98, v99, 0xD00000000000008CLL, 0x8000000252E6E8A0);
      }

LABEL_18:
      if (v22 == a2)
      {
        v60 = v97;
        goto LABEL_57;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v20 = sub_2529F7BEC((v21 > 1), v23, 1, v20);
  }

  v40 = v32;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v41 = sub_252E36AD4();
  __swift_project_value_buffer(v41, qword_27F544C70);
  v98 = 0;
  v99 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
  v97 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E8ED30);
  sub_252CC4050(v98, v99, 0xD00000000000007FLL, 0x8000000252E8EB20, 0xD00000000000001BLL, 0x8000000252E8ED50, 280);

  v42 = parse(error:with:)(v32, 0);
LABEL_66:
  a3(v42);

  sub_252927D3C(v39);
  sub_252927D3C(v39);
}

void sub_252C7A9E8(void *a1, void *a2, void *a3, void (*a4)(void *))
{
  v92 = type metadata accessor for HomeUserTask();
  v5 = objc_allocWithZone(v92);
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setTaskType_];
  [v8 setAttribute_];
  [v8 setValue_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E3C130;
  *(v9 + 32) = a2;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C130;
  *(inited + 32) = v8;
  v11 = v8;
  v90 = a2;
  v12 = sub_252B4CA9C(v9, inited, 0, 1);
  LOBYTE(v8) = v13;

  swift_setDeallocating();
  swift_arrayDestroy();
  if (v8)
  {
    inited = v12;
    if (qword_27F53F498 != -1)
    {
      goto LABEL_49;
    }

    goto LABEL_3;
  }

  v91 = v12;
  v16 = [v12 entityResponses];
  if (v16)
  {
    v17 = v16;
    type metadata accessor for HomeEntityResponse();
    v18 = sub_252E37264();

    if (v18 >> 62)
    {
      v87 = sub_252E378C4();
    }

    else
    {
      v87 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v87 = 0;
  }

  v19 = [v91 entityResponses];
  if (!v19)
  {
    goto LABEL_60;
  }

  v20 = v19;
  type metadata accessor for HomeEntityResponse();
  v21 = sub_252E37264();

  v102 = MEMORY[0x277D84F90];
  v88 = v21;
  if (v21 >> 62)
  {
    v22 = sub_252E378C4();
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_52:
    v46 = MEMORY[0x277D84F90];
LABEL_53:

    if (v46 < 0 || (v46 & 0x4000000000000000) != 0)
    {
      v47 = sub_252E378C4();
    }

    else
    {
      v47 = *(v46 + 16);
    }

    if (v47 == v87)
    {
      v48 = sub_252B4CD30(a1, 0, 1);
      v50 = v49;
      v51 = sub_2529F7BEC(0, 1, 1, MEMORY[0x277D84F90]);
      v53 = v51[2];
      v52 = v51[3];
      if (v53 >= v52 >> 1)
      {
        v51 = sub_2529F7BEC((v52 > 1), v53 + 1, 1, v51);
      }

      v51[2] = v53 + 1;
      v54 = &v51[2 * v53];
      v54[4] = v48;
      *(v54 + 40) = v50 & 1;
LABEL_63:
      v86 = sub_252B4F134(v51);

      v15 = combineResults(results:)(v86);

      inited = v91;
      a4(v15);
      goto LABEL_64;
    }

LABEL_60:
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_252E3C130;
    *(v55 + 32) = a3;
    v56 = swift_initStackObject();
    *(v56 + 16) = xmmword_252E3C130;
    v57 = type metadata accessor for HomeAttributeValue();
    v58 = objc_allocWithZone(v57);
    v59 = a3;
    v60 = sub_252E36F04();
    v61 = [v58 initWithIdentifier:0 displayString:v60];

    v62 = v61;
    [v62 setBoolValue_];
    [v62 setType_];

    v63 = objc_allocWithZone(v92);
    v64 = sub_252E36F04();
    v65 = [v63 initWithIdentifier:0 displayString:v64];

    v66 = v65;
    [v66 setTaskType_];
    [v66 setAttribute_];
    [v66 setValue_];

    *(v56 + 32) = v66;
    v67 = sub_252B4CA9C(v55, v56, 0, 1);

    sub_252927D3C(v67);
    swift_setDeallocating();
    swift_arrayDestroy();
    v68 = sub_252B4CD30(a1, 0, 1);
    v70 = v69;
    v51 = sub_2529F7BEC(0, 1, 1, MEMORY[0x277D84F90]);
    v72 = v51[2];
    v71 = v51[3];
    if (v72 >= v71 >> 1)
    {
      v51 = sub_2529F7BEC((v71 > 1), v72 + 1, 1, v51);
    }

    v51[2] = v72 + 1;
    v73 = &v51[2 * v72];
    v73[4] = v68;
    *(v73 + 40) = v70 & 1;
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_252E3C130;
    *(v74 + 32) = v90;
    v75 = swift_initStackObject();
    *(v75 + 16) = xmmword_252E3C130;
    v76 = objc_allocWithZone(v57);
    v77 = v90;
    v78 = sub_252E36F04();
    v79 = [v76 initWithIdentifier:0 displayString:v78];

    v80 = v79;
    [v80 setBoolValue_];
    [v80 setType_];

    v81 = objc_allocWithZone(v92);
    v82 = sub_252E36F04();
    v83 = [v81 initWithIdentifier:0 displayString:v82];

    v84 = v83;
    [v84 setTaskType_];
    [v84 setAttribute_];
    [v84 setValue_];

    *(v75 + 32) = v84;
    v85 = sub_252B4CA9C(v74, v75, 0, 1);

    sub_252927D3C(v85);
    swift_setDeallocating();
    swift_arrayDestroy();
    goto LABEL_63;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_52;
  }

LABEL_12:
  v23 = 0;
  v98 = v21 & 0xFFFFFFFFFFFFFF8;
  v99 = v21 & 0xC000000000000001;
  v97 = v21 + 32;
  v95 = v22;
  v96 = v11;
  while (1)
  {
    if (v99)
    {
      v24 = MEMORY[0x2530ADF00](v23, v88);
    }

    else
    {
      if (v23 >= *(v98 + 16))
      {
        goto LABEL_48;
      }

      v24 = *(v97 + 8 * v23);
    }

    v25 = v24;
    if (__OFADD__(v23++, 1))
    {
      break;
    }

    v27 = [v11 attribute];
    v28 = [v25 taskResponses];
    if (v28)
    {
      v29 = v28;
      v100 = v25;
      v101 = v23;
      type metadata accessor for HomeUserTaskResponse();
      v30 = sub_252E37264();

      if (v30 >> 62)
      {
        v31 = sub_252E378C4();
        if (v31)
        {
LABEL_22:
          inited = 0;
          v11 = (v30 & 0xC000000000000001);
          while (1)
          {
            if (v11)
            {
              v32 = MEMORY[0x2530ADF00](inited, v30);
            }

            else
            {
              if (inited >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_46;
              }

              v32 = *(v30 + 8 * inited + 32);
            }

            v33 = v32;
            v34 = inited + 1;
            if (__OFADD__(inited, 1))
            {
              __break(1u);
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

            v35 = [v32 userTask];
            if (v35)
            {
              v36 = v35;
              v37 = [v35 attribute];

              if (v37 == v27)
              {
                break;
              }
            }

            ++inited;
            if (v34 == v31)
            {
              goto LABEL_13;
            }
          }

          v43 = [v33 userTask];

          v23 = v101;
          if (v43)
          {
            v44 = [v43 value];

            v22 = v95;
            v11 = v96;
            inited = v100;
            if (v44 && (v45 = [v44 BOOLValue], v44, (v45 & 1) != 0))
            {
              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
            }

            else
            {
            }
          }

          else
          {

            v22 = v95;
            v11 = v96;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31)
        {
          goto LABEL_22;
        }
      }

LABEL_13:

      v22 = v95;
      v11 = v96;
      v23 = v101;
    }

    else
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v38 = sub_252E36AD4();
      __swift_project_value_buffer(v38, qword_27F544D60);
      sub_252E379F4();

      v39 = [v25 description];
      v40 = sub_252E36F34();
      v42 = v41;

      MEMORY[0x2530AD570](v40, v42);

      inited = 0x8000000252E6E870;
      sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E6E870, 0xD00000000000008CLL, 0x8000000252E6E8A0);
    }

LABEL_14:
    if (v23 == v22)
    {
      v46 = v102;
      goto LABEL_53;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  swift_once();
LABEL_3:
  v14 = sub_252E36AD4();
  __swift_project_value_buffer(v14, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E8ED70);
  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007FLL, 0x8000000252E8EB20, 0xD000000000000017, 0x8000000252E8EDA0, 336);

  v15 = parse(error:with:)(inited, a1);
  a4(v15);
LABEL_64:

  sub_252927D3C(inited);
}

void sub_252C7B5C4(void *a1, void *a2, unint64_t a3, void (*a4)(void *))
{
  v5 = a1;
  v6 = sub_252B4CD30(a1, 0, 1);
  LOBYTE(v8) = v7;
  v9 = MEMORY[0x277D84F90];
  v10 = sub_2529F7BEC(0, 1, 1, MEMORY[0x277D84F90]);
  v12 = v10[2];
  v11 = v10[3];
  inited = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v10[2] = inited;
    v14 = &v10[2 * v12];
    v14[4] = v6;
    *(v14 + 40) = v8 & 1;
    v62 = type metadata accessor for HomeUserTask();
    v15 = objc_allocWithZone(v62);
    v16 = sub_252E36F04();
    v17 = [v15 initWithIdentifier:0 displayString:v16];

    v18 = v17;
    [v18 setTaskType_];
    [v18 setAttribute_];
    [v18 setValue_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_252E3C130;
    *(v8 + 32) = a3;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = v18;
    v12 = inited + 32;
    v19 = v18;
    v20 = a3;
    v21 = sub_252B4CA9C(v8, inited, 0, 1);
    LOBYTE(v18) = v22;

    swift_setDeallocating();
    swift_arrayDestroy();
    if (v18)
    {
      break;
    }

    v61 = v10;
    v6 = &off_279711000;
    v64 = v21;
    v26 = [v21 entityResponses];
    if (v26)
    {
      v27 = v26;
      type metadata accessor for HomeEntityResponse();
      v28 = sub_252E37264();

      if (v28 >> 62)
      {
        v58 = sub_252E378C4();
      }

      else
      {
        v58 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v58 = 0;
    }

    v29 = [v64 entityResponses];
    if (!v29)
    {
      goto LABEL_60;
    }

    v30 = v29;
    type metadata accessor for HomeEntityResponse();
    v31 = sub_252E37264();

    v70 = v9;
    v60 = v31;
    if (v31 >> 62)
    {
      v5 = sub_252E378C4();
      if (!v5)
      {
LABEL_54:
        v43 = MEMORY[0x277D84F90];
LABEL_55:

        if ((v43 & 0x8000000000000000) != 0 || (v43 & 0x4000000000000000) != 0)
        {
          v44 = sub_252E378C4();
        }

        else
        {
          v44 = *(v43 + 2);
        }

        if (v44 == v59)
        {
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_252E3C130;
          *(v45 + 32) = a2;
          v46 = swift_initStackObject();
          *(v46 + 16) = xmmword_252E3C130;
          v47 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
          v48 = a2;
          v49 = sub_252E36F04();
          v50 = [v47 initWithIdentifier:0 displayString:v49];

          v51 = v50;
          [v51 setBoolValue_];
          [v51 setType_];

          v52 = objc_allocWithZone(v62);
          v53 = sub_252E36F04();
          v54 = [v52 initWithIdentifier:0 displayString:v53];

          v55 = v54;
          [v55 setTaskType_];
          [v55 setAttribute_];
          [v55 setValue_];

          *(v46 + 32) = v55;
          v56 = sub_252B4CA9C(v45, v46, 0, 1);

          sub_252927D3C(v56);
          swift_setDeallocating();
          swift_arrayDestroy();
        }

LABEL_60:
        v57 = sub_252B4F134(v61);

        v25 = combineResults(results:)(v57);

        v23 = v64;
        goto LABEL_61;
      }
    }

    else
    {
      v5 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_54;
      }
    }

    a3 = 0;
    v67 = v19;
    v66 = v5;
    while (1)
    {
      if ((v60 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x2530ADF00](a3, v60);
      }

      else
      {
        v11 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a3 >= v11)
        {
          goto LABEL_50;
        }

        v32 = *(v60 + 32 + 8 * a3);
      }

      v10 = v32;
      if (__OFADD__(a3++, 1))
      {
        break;
      }

      v9 = [v19 attribute];
      v34 = [v10 taskResponses];
      if (v34)
      {
        v8 = v34;
        type metadata accessor for HomeUserTaskResponse();
        inited = sub_252E37264();

        v68 = v10;
        v69 = a3;
        if (inited >> 62)
        {
          v35 = sub_252E378C4();
          if (v35)
          {
LABEL_24:
            v8 = 0;
            v5 = (inited & 0xC000000000000001);
            v10 = (inited & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if (v5)
              {
                v36 = MEMORY[0x2530ADF00](v8, inited);
              }

              else
              {
                v11 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v8 >= v11)
                {
                  goto LABEL_48;
                }

                v36 = *(inited + 8 * v8 + 32);
              }

              v37 = v36;
              a3 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                __break(1u);
LABEL_48:
                __break(1u);
                goto LABEL_49;
              }

              v38 = [v36 userTask];
              if (v38)
              {
                v12 = v38;
                v6 = [v38 attribute];

                if (v6 == v9)
                {
                  break;
                }
              }

              ++v8;
              if (a3 == v35)
              {
                goto LABEL_15;
              }
            }

            v9 = [v37 userTask];

            a3 = v69;
            if (v9)
            {
              v8 = [v9 value];

              v5 = v66;
              v19 = v67;
              inited = v68;
              if (v8 && (v9 = [v8 BOOLValue], v8, (v9 & 1) == 0))
              {
                v9 = &v70;
                sub_252E37A94();
                v6 = *(v70 + 2);
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
              }

              else
              {
              }
            }

            else
            {

              v5 = v66;
              v19 = v67;
            }

            goto LABEL_16;
          }
        }

        else
        {
          v35 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v35)
          {
            goto LABEL_24;
          }
        }

LABEL_15:

        v5 = v66;
        v19 = v67;
        a3 = v69;
      }

      else
      {
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v39 = sub_252E36AD4();
        v8 = __swift_project_value_buffer(v39, qword_27F544D60);
        v71 = 0;
        v72 = 0xE000000000000000;
        sub_252E379F4();

        v6 = 0xD000000000000019;
        v71 = 0xD00000000000002DLL;
        v72 = 0x8000000252E6E870;
        v40 = [v10 description];
        v41 = sub_252E36F34();
        v12 = v42;

        MEMORY[0x2530AD570](v41, v12);

        inited = v72;
        v9 = v8;
        sub_252CC3D90(v71, v72, 0xD00000000000008CLL, 0x8000000252E6E8A0);
      }

LABEL_16:
      if (a3 == v5)
      {
        v43 = v70;
        goto LABEL_55;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v10 = sub_2529F7BEC((v11 > 1), inited, 1, v10);
  }

  v23 = v21;

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v24 = sub_252E36AD4();
  __swift_project_value_buffer(v24, qword_27F544C70);
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
  v70 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E8ED30);
  sub_252CC4050(v71, v72, 0xD00000000000007FLL, 0x8000000252E8EB20, 0xD000000000000019, 0x8000000252E8EDC0, 384);

  v25 = parse(error:with:)(v21, v5);
LABEL_61:
  a4(v25);

  sub_252927D3C(v23);
}

void sub_252C7BFA0(void *a1, void (*a2)(void *), uint64_t a3)
{
  v6 = [a1 filters];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = type metadata accessor for HomeFilter();
  v9 = sub_252E37264();

  v105 = v9;
  v10 = [a1 userTask];
  if (!v10)
  {

LABEL_9:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v24 = sub_252E36AD4();
    __swift_project_value_buffer(v24, qword_27F544C70);
    sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD00000000000007FLL, 0x8000000252E8EB20, 0xD000000000000021, 0x8000000252E68B10, 33);
    v25 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v26 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v25[v26] = 5;
    [v25 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v27 = sub_252E37254();
    [v25 setEntityResponses_];

    a2(v25);
    goto LABEL_48;
  }

  v11 = v10;
  v99 = v8;
  v12 = type metadata accessor for HomeStore(0);
  v13 = static HomeStore.shared.getter(v12);
  v14 = v13[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v14 != 2 && (v14 & 1) == 0 || (v15 = [a1 filters]) == 0)
  {

LABEL_47:
    v25 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v47 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v25[v47] = 102;
    [v25 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v48 = sub_252E37254();
    [v25 setEntityResponses_];

    a2(v25);

LABEL_48:
    return;
  }

  v16 = v15;
  v17 = sub_252E37264();

  v98 = a1;
  v18 = [a1 userTask];
  v19 = HomeStore.accessories(matching:supporting:)(v17, v18);
  v21 = v20;

  if (v21)
  {
    v22 = v19;
    v23 = 1;
LABEL_46:
    sub_252929F10(v22, v23);
    goto LABEL_47;
  }

  if (v19 >> 62)
  {
    goto LABEL_44;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_45:
    v22 = v19;
    v23 = 0;
    goto LABEL_46;
  }

LABEL_15:
  v96 = v11;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v93 = a3;
  v94 = a2;
  v28 = sub_252E36AD4();
  a2 = __swift_project_value_buffer(v28, qword_27F544C70);
  sub_252E379F4();

  v11 = type metadata accessor for Accessory(0);
  v29 = MEMORY[0x2530AD730](v19, v11);
  MEMORY[0x2530AD570](v29);

  sub_252CC3D90(0xD000000000000016, 0x8000000252E8EBA0, 0xD00000000000007FLL, 0x8000000252E8EB20);

  v30 = sub_252C78D40(v19, &v105);
  sub_252E379F4();

  v104[0] = 0xD000000000000013;
  v104[1] = 0x8000000252E8EBC0;
  v95 = v19;
  v31 = MEMORY[0x2530AD730](v19, v11);
  MEMORY[0x2530AD570](v31);

  sub_252CC3D90(0xD000000000000013, 0x8000000252E8EBC0, 0xD00000000000007FLL, 0x8000000252E8EB20);

  if (!(v30 >> 62))
  {
    a3 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v97 = v9;
    if (!a3)
    {
      goto LABEL_50;
    }

    goto LABEL_19;
  }

  a3 = sub_252E378C4();
  v97 = v9;
  if (a3)
  {
LABEL_19:
    v32 = 0;
    v100 = v30 & 0xFFFFFFFFFFFFFF8;
    v102 = v30 & 0xC000000000000001;
    do
    {
      if (v102)
      {
        v9 = v30;
        v34 = MEMORY[0x2530ADF00](v32, v30);
        v35 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v32 >= *(v100 + 16))
        {
          goto LABEL_43;
        }

        v9 = v30;
        v34 = *(v30 + 8 * v32 + 32);

        v35 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          if (!sub_252E378C4())
          {
            goto LABEL_45;
          }

          goto LABEL_15;
        }
      }

      v19 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v36 = [*(v34 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      a2 = sub_252E36F34();
      v38 = v37;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v39 = off_27F546230;
      if (*(off_27F546230 + 2) && (v40 = sub_252A44A10(a2, v38), (v41 & 1) != 0))
      {
        v42 = *(v39[7] + 8 * v40);

        if (v42 == 34)
        {

LABEL_41:
          v46 = 0;
          goto LABEL_51;
        }
      }

      else
      {
      }

      v43 = [*(v34 + v19) accessory];
      if (v43)
      {
        v44 = v43;
        swift_allocObject();
        v45 = *(sub_252D4CE7C(v44) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);

        if (v45 >> 62)
        {
          a2 = sub_252E378C4();
        }

        else
        {
          a2 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (a2 == 1)
        {
          goto LABEL_41;
        }
      }

      else
      {
      }

      ++v32;
      v33 = v35 == a3;
      v30 = v9;
    }

    while (!v33);
  }

LABEL_50:
  v46 = 1;
LABEL_51:

  v49 = sub_252C790FC(v95);
  v50 = sub_252C7964C(v95);
  sub_252929F10(v95, 0);
  sub_252E379F4();

  strcpy(v104, "Valve filter: ");
  HIBYTE(v104[1]) = -18;
  v103 = v49;
  v51 = [v49 description];
  v52 = sub_252E36F34();
  v54 = v53;

  MEMORY[0x2530AD570](v52, v54);

  sub_252CC3D90(v104[0], v104[1], 0xD00000000000007FLL, 0x8000000252E8EB20);

  sub_252E379F4();

  v104[0] = 0xD000000000000015;
  v104[1] = 0x8000000252E8EBE0;
  v55 = [v50 description];
  v56 = sub_252E36F34();
  v58 = v57;

  MEMORY[0x2530AD570](v56, v58);

  sub_252CC3D90(0xD000000000000015, 0x8000000252E8EBE0, 0xD00000000000007FLL, 0x8000000252E8EB20);

  v59 = [v98 userTask];
  v60 = v96;
  if (!v59)
  {
    v101 = v50;
    sub_252C515AC();
    v63 = v97;
    goto LABEL_60;
  }

  v61 = v59;
  v62 = [v59 taskType];

  v63 = v97;
  if (v62 != 1)
  {
    v101 = v50;
    goto LABEL_60;
  }

  v64 = 0xD00000000000007FLL;
  sub_252CC3D90(0xD000000000000025, 0x8000000252E8EC40, 0xD00000000000007FLL, 0x8000000252E8EB20);
  v65 = [v98 userTask];
  if (!v65 || (v66 = v65, v67 = [v65 value], v66, !v67) || (v68 = objc_msgSend(v67, sel_BOOLValue), v67, !v68))
  {
    if (v46)
    {
      sub_252CC3D90(0xD000000000000012, 0x8000000252E8EC70, 0xD00000000000007FLL, 0x8000000252E8EB20);
      v69 = v103;
      sub_252C7B5C4(v98, v50, v103, v94);
      goto LABEL_66;
    }

    sub_252CC3D90(0xD00000000000003ALL, 0x8000000252E8EC90, 0xD00000000000007FLL, 0x8000000252E8EB20);
    v104[0] = MEMORY[0x277D84F90];
    if (v97 >> 62)
    {
      goto LABEL_91;
    }

    v76 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v101 = v50;
    if (v76)
    {
LABEL_69:
      v50 = 0;
      v64 = v63 & 0xC000000000000001;
      v77 = v63 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v64)
        {
          v78 = MEMORY[0x2530ADF00](v50, v63);
        }

        else
        {
          if (v50 >= *(v77 + 16))
          {
            goto LABEL_90;
          }

          v78 = *(v63 + 8 * v50 + 32);
        }

        v79 = v78;
        v63 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          v76 = sub_252E378C4();
          v101 = v50;
          if (!v76)
          {
            goto LABEL_92;
          }

          goto LABEL_69;
        }

        v80 = [v78 isExcludeFilter];
        sub_252956D08();
        v81 = sub_252E37674();
        v82 = v81;
        if (!v80)
        {
          break;
        }

        v83 = sub_252E37694();

        if ((v83 & 1) == 0)
        {
          goto LABEL_78;
        }

LABEL_82:
        MEMORY[0x2530AD700]();
        if (*((v104[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v50;
        v33 = v63 == v76;
        v63 = v97;
        if (v33)
        {
          v89 = v104[0];
          v64 = 0xD00000000000007FLL;
          goto LABEL_93;
        }
      }

LABEL_78:
      v84 = [v79 homeEntityName];
      if (v84)
      {
      }

      else
      {
        v85 = [v79 outerDeviceName];
        if (v85)
        {

          type metadata accessor for MutableMatterHomeFilter();
          swift_initStackObject();
          v86 = v79;
          v87 = sub_2529D0A90(v86);

          v88 = v87[8];
          v87[3] = v87[7];
          v87[4] = v88;

          v87[7] = 0;
          v87[8] = 0;

          sub_2529D0538();
        }
      }

      goto LABEL_82;
    }

LABEL_92:
    v89 = MEMORY[0x277D84F90];
LABEL_93:

    v104[0] = 0;
    v104[1] = 0xE000000000000000;
    sub_252E379F4();

    v104[0] = v64 - 97;
    v104[1] = 0x8000000252E8ECD0;
    v90 = MEMORY[0x2530AD730](v89, v99);
    v92 = v91;

    MEMORY[0x2530AD570](v90, v92);

    sub_252CC3D90(v104[0], v104[1], 0xD00000000000007FLL, 0x8000000252E8EB20);

    v63 = v89;
    v60 = v96;
LABEL_60:
    sub_252CC3D90(0xD000000000000033, 0x8000000252E8EC00, 0xD00000000000007FLL, 0x8000000252E8EB20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = v60;
    v71 = v60;
    v72 = sub_252B4CA9C(v63, inited, 0, 1);
    v74 = v73;
    swift_setDeallocating();
    swift_arrayDestroy();
    if (v74)
    {
      v104[0] = 0;
      v104[1] = 0xE000000000000000;
      MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
      sub_252E37AE4();
      sub_252CC4050(v104[0], v104[1], 0xD00000000000007FLL, 0x8000000252E8EB20, 0xD000000000000021, 0x8000000252E68B10, 93);

      v75 = parse(error:with:)(v72, v98);
      (v94)();
    }

    else
    {
      v94(v72);
    }

    sub_252927D3C(v72);

    return;
  }

  if (v46)
  {
    sub_252CC3D90(0xD000000000000010, 0x8000000252E8ECF0, 0xD00000000000007FLL, 0x8000000252E8EB20);
    v69 = v103;
    sub_252C7A9E8(v98, v50, v103, v94);
  }

  else
  {
    sub_252CC3D90(0xD000000000000017, 0x8000000252E8ED10, 0xD00000000000007FLL, 0x8000000252E8EB20);
    v69 = v103;
    sub_252C79DF8(v50, v103, v94);
  }

LABEL_66:
}

BOOL sub_252C7CEA4(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 attribute];

    if (v4 == 27)
    {
      return sub_252C52230();
    }
  }

  else
  {
    sub_252C515AC();
  }

  v5 = [a1 userTask];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 attribute];

    if (v7 == 46)
    {
      return sub_252C52230();
    }
  }

  else
  {
    sub_252C515AC();
  }

  return 0;
}

uint64_t sub_252C7CF7C(uint64_t a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v2 + 288), (v1 + 2));

  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(v4 + 128))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  if ((v5 & 1) != 0 || (v6 = *(v1[7] + 64), v7 = sub_252C8055C(v6), (v7 & 1) == 0))
  {
    v10 = *(v1[7] + 64);
    if (sub_252C8055C(v10))
    {
      v11 = swift_task_alloc();
      v1[9] = v11;
      *v11 = v1;
      v11[1] = sub_252C7D24C;

      return sub_252C7EA9C(v10);
    }

    else if (sub_252C80C64(v10))
    {
      v12 = swift_task_alloc();
      v1[10] = v12;
      *v12 = v1;
      v12[1] = sub_252C7D340;

      return sub_252C7E540(v10);
    }

    else
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v13 = sub_252E36AD4();
      __swift_project_value_buffer(v13, qword_27F544DA8);
      sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E8F040, 0xD00000000000007DLL, 0x8000000252E8EE40);
      v14 = v1[1];

      return v14();
    }
  }

  else
  {
    *(sub_252B680FC(v7) + 50) = 1;

    v8 = swift_task_alloc();
    v1[8] = v8;
    *v8 = v1;
    v8[1] = sub_252963EC4;

    return sub_252C7D434(v6);
  }
}

uint64_t sub_252C7D24C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_252C7D340()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_252C7D434(uint64_t a1)
{
  v2[76] = v1;
  v2[75] = a1;
  v3 = sub_252E34014();
  v2[77] = v3;
  v2[78] = *(v3 - 8);
  v2[79] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C7D53C, 0, 0);
}

uint64_t sub_252C7D53C()
{
  v62 = v0;
  v60 = (v0 + 688);
  if (qword_27F53F500 != -1)
  {
LABEL_56:
    swift_once();
  }

  v1 = *(v0 + 648);
  v2 = sub_252E36AD4();
  *(v0 + 656) = __swift_project_value_buffer(v2, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E8EFF0, 0xD00000000000007DLL, 0x8000000252E8EE40);
  v3 = sub_252E36324();
  v4 = *(*(v3 - 8) + 56);
  (v4)(v1, 1, 1, v3);
  *(v0 + 576) = 0u;
  *(v0 + 688) = 0;
  if (sub_252C4D664(5))
  {
    v5 = [*(v0 + 600) filters];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for HomeFilter();
      v7 = sub_252E37264();

      if (v7 >> 62)
      {
LABEL_59:
        v8 = sub_252E378C4();
        if (v8)
        {
LABEL_6:
          v59 = v4;
          v9 = 0;
          v65 = v7 & 0xC000000000000001;
          while (1)
          {
            if (v65)
            {
              v10 = MEMORY[0x2530ADF00](v9, v7);
            }

            else
            {
              if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v10 = *(v7 + 8 * v9 + 32);
            }

            v11 = v10;
            v12 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }

            v13 = [v10 isExcludeFilter];
            sub_252956D08();
            v14 = sub_252E37674();
            v15 = v14;
            if (!v13)
            {
              break;
            }

            v16 = sub_252E37694();

            if ((v16 & 1) == 0)
            {
              goto LABEL_48;
            }

            ++v9;
            if (v12 == v8)
            {
              v48 = 1;
LABEL_51:
              v4 = v59;
              goto LABEL_61;
            }
          }

LABEL_48:

          v47 = [v11 homeEntityName];

          if (v47)
          {
            sub_252E36F34();

            sub_252E37024();
            v48 = 0;
            goto LABEL_51;
          }

          v48 = 1;
          v4 = v59;
          goto LABEL_62;
        }
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8)
        {
          goto LABEL_6;
        }
      }

      v48 = 1;
LABEL_61:
    }

    else
    {
      v48 = 1;
    }

LABEL_62:
    v49 = *(v0 + 648);
    v50 = *(v0 + 640);
    (v4)(v50, v48, 1, v3);
    sub_252956C98(v50, v49);
    goto LABEL_66;
  }

  v17 = type metadata accessor for HomeStore(0);
  v18 = static HomeStore.shared.getter(v17);
  v19 = v18[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v19 != 2 && (v19 & 1) == 0 || (v20 = [*(v0 + 600) filters]) == 0)
  {

    goto LABEL_66;
  }

  v21 = v20;
  v22 = *(v0 + 600);
  type metadata accessor for HomeFilter();
  v23 = sub_252E37264();

  v24 = [v22 userTask];
  v3 = HomeStore.services(matching:supporting:)(v23, v24);
  v26 = v25;

  if (v26)
  {
    v27 = v3;
    v28 = 1;
LABEL_65:
    sub_252929F10(v27, v28);
    goto LABEL_66;
  }

  if (!(v3 >> 62))
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_25;
    }

LABEL_64:
    v27 = v3;
    v28 = 0;
    goto LABEL_65;
  }

  v7 = sub_252E378C4();
  if (!v7)
  {
    goto LABEL_64;
  }

LABEL_25:
  v29 = *(v0 + 600);
  type metadata accessor for HomeAutomationEntityResponses();

  *(v0 + 576) = sub_25299DDFC(v30);
  sub_25293DEE0(v0 + 16);
  memcpy(__dst, (v0 + 16), 0x1F8uLL);
  v31 = v29;
  v4 = sub_252953488(v29, __dst, 0);

  v32 = 0;
  *(v0 + 584) = v4;
  v65 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v65)
    {
      v33 = MEMORY[0x2530ADF00](v32, v3);
      v34 = __OFADD__(v32++, 1);
      if (v34)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (v32 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v33 = *(v3 + 32 + 8 * v32);

      v34 = __OFADD__(v32++, 1);
      if (v34)
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    if (qword_27F53F410 != -1)
    {
      swift_once();
    }

    v4 = qword_27F575A48;
    v35 = [*(v33 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v36 = sub_252E36F34();
    v38 = v37;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v39 = off_27F546230;
    if (*(off_27F546230 + 2) && (v40 = sub_252A44A10(v36, v38), (v41 & 1) != 0))
    {
      v42 = *(v39[7] + 8 * v40);
    }

    else
    {
      v42 = 0;
    }

    if (*(v4 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](v42);
      v43 = sub_252E37F14();
      v44 = -1 << *(v4 + 32);
      v45 = v43 & ~v44;
      if ((*(v4 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        break;
      }
    }

LABEL_26:

    if (v32 == v7)
    {
      sub_252929F10(v3, 0);
      *v60 = 0;
      goto LABEL_66;
    }
  }

  v46 = ~v44;
  while (*(*(v4 + 48) + 8 * v45) != v42)
  {
    v45 = (v45 + 1) & v46;
    if (((*(v4 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  sub_252929F10(v3, 0);

  *v60 = 1;
LABEL_66:
  v51 = *(v0 + 648);
  v52 = *(v0 + 608);
  v53 = v52[6];
  v54 = v52[7];
  __swift_project_boxed_opaque_existential_1(v52 + 3, v53);
  v55 = swift_task_alloc();
  *(v0 + 664) = v55;
  v55[2] = v60;
  v55[3] = v51;
  v55[4] = v0 + 584;
  v55[5] = v0 + 576;
  sub_252AD7CC4();
  v56 = swift_task_alloc();
  *(v0 + 672) = v56;
  *v56 = v0;
  v56[1] = sub_252C7DCD0;
  v57 = *(v0 + 632);
  v64 = v54;

  return sub_252BDB88C(v0 + 520, &unk_252E58030, v55, v57, 0, 0, 0, v53);
}

uint64_t sub_252C7DCD0()
{
  v2 = *(*v1 + 632);
  v3 = *(*v1 + 624);
  v4 = *(*v1 + 616);
  *(*v1 + 680) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C7DF0C;
  }

  else
  {

    v5 = sub_252C7DE50;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C7DE50()
{
  sub_252C8082C((v0 + 65));
  __swift_destroy_boxed_opaque_existential_1(v0 + 65);
  v1 = v0[81];

  sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);

  v2 = v0[1];

  return v2();
}

uint64_t sub_252C7DF0C()
{
  v1 = v0[85];

  sub_252E379F4();
  v0[70] = 0;
  v0[71] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E8EEE0);
  v0[74] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v0[70], v0[71], 0xD00000000000007DLL, 0x8000000252E8EE40, 0xD000000000000023, 0x8000000252E8F010, 100);

  v2 = v0[81];

  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252C7E0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for HomeAutomationRequestSentParameters(0);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C7E140, 0, 0);
}

uint64_t sub_252C7E140(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v5 = v1[4];
  v4 = v1[5];
  v7 = v1[2];
  v6 = v1[3];
  v1[8] = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1) + 29);

  v8 = *v7;
  v9 = *(v3 + 28);
  v10 = sub_252E36324();
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = v8;
  v11 = *(v3 + 32);
  *(v2 + v11) = 0;
  sub_252956BAC(v6, v2 + v9);
  *(v2 + 8) = *v5;
  *(v2 + v11) = *v4;

  v12 = sub_252C08158();
  v1[9] = v12;
  v15 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v13 = swift_task_alloc();
  v1[10] = v13;
  *v13 = v1;
  v13[1] = sub_252C7E2D8;

  return v15(0xD00000000000001ALL, 0x8000000252E8EEC0, v12);
}

uint64_t sub_252C7E2D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_252C7E4B4;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_252C7E424;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C7E424()
{
  sub_252C80C04(v0[7], type metadata accessor for HomeAutomationRequestSentParameters);

  v1 = v0[1];
  v2 = v0[12];

  return v1(v2);
}

uint64_t sub_252C7E4B4()
{
  sub_252C80C04(*(v0 + 56), type metadata accessor for HomeAutomationRequestSentParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C7E540(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_252C7E560, 0, 0);
}

uint64_t sub_252C7E560()
{
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E8EF60, 0xD00000000000007DLL, 0x8000000252E8EE40);
  v4 = v1[6];
  v5 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;

  v7 = v2;
  sub_252943BD0(sub_252C80B50, v6, 0, v4, v5);

  sub_252C8082C((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v8 = v0[1];

  return v8();
}

uint64_t sub_252C7E7A4(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-v7 - 8];
  v9 = sub_252E36324();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v8, 1, 1, v9);
  sub_25293DEE0(v19);
  memcpy(v18, v19, sizeof(v18));
  v11 = a2;
  v12 = sub_252953488(a2, v18, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_252E3EF80;
  *(v13 + 32) = 0xD000000000000012;
  *(v13 + 40) = 0x8000000252E728F0;
  sub_252956C1C(v8, v6);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
  }

  else
  {
    *(v13 + 72) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v13 + 48));
    (*(v10 + 32))(boxed_opaque_existential_0, v6, v9);
  }

  *(v13 + 80) = 0x6572756365537369;
  *(v13 + 88) = 0xEF74736575716552;
  v15 = MEMORY[0x277D839B0];
  *(v13 + 96) = 0;
  *(v13 + 120) = v15;
  *(v13 + 128) = 0xD000000000000010;
  *(v13 + 136) = 0x8000000252E72940;
  *(v13 + 144) = 0u;
  *(v13 + 160) = 0u;
  strcpy((v13 + 176), "intentContext");
  *(v13 + 190) = -4864;
  *(v13 + 216) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v13 + 192) = v12;

  sub_252E362B4();

  return sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
}

uint64_t sub_252C7EA9C(uint64_t a1)
{
  v2[77] = v1;
  v2[76] = a1;
  v3 = sub_252E34014();
  v2[78] = v3;
  v2[79] = *(v3 - 8);
  v2[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543448, &unk_252E4BAA8);
  v2[81] = swift_task_alloc();
  v4 = type metadata accessor for CompletionSnippetModel(0);
  v2[82] = v4;
  v2[83] = *(v4 - 8);
  v2[84] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C7EC44, 0, 0);
}

uint64_t sub_252C7EC44()
{
  v80 = v0;
  if (qword_27F53F500 != -1)
  {
LABEL_57:
    swift_once();
  }

  v1 = 0xD000000000000010;
  v2 = *(v0 + 696);
  v3 = sub_252E36AD4();
  *(v0 + 704) = __swift_project_value_buffer(v3, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000015, 0x8000000252E8EE20, 0xD00000000000007DLL, 0x8000000252E8EE40);
  v4 = sub_252E36324();
  v77 = *(v4 - 8);
  v5 = *(v77 + 56);
  (v5)(v2, 1, 1, v4);
  if (sub_252C4D664(5))
  {
    v6 = [*(v0 + 608) filters];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for HomeFilter();
      v8 = sub_252E37264();

      v76 = v4;
      if (v8 >> 62)
      {
LABEL_60:
        v9 = sub_252E378C4();
        if (v9)
        {
LABEL_6:
          v71 = v5;
          v74 = v0;
          v10 = 0;
          v0 = v8 & 0xC000000000000001;
          while (1)
          {
            if (v0)
            {
              v11 = MEMORY[0x2530ADF00](v10, v8);
            }

            else
            {
              if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_56;
              }

              v11 = *(v8 + 8 * v10 + 32);
            }

            v12 = v11;
            v13 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              __break(1u);
LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

            v14 = [v11 isExcludeFilter];
            sub_252956D08();
            v15 = sub_252E37674();
            v16 = v15;
            if (!v14)
            {
              break;
            }

            v17 = sub_252E37694();

            if ((v17 & 1) == 0)
            {
              goto LABEL_49;
            }

            ++v10;
            if (v13 == v9)
            {
              v53 = 1;
              v0 = v74;
LABEL_52:
              v1 = 0xD000000000000010;
              v4 = v76;
              v5 = v71;
              goto LABEL_62;
            }
          }

LABEL_49:

          v52 = [v12 homeEntityName];

          if (v52)
          {
            v0 = v74;
            sub_252E36F34();

            sub_252E37024();
            v53 = 0;
            goto LABEL_52;
          }

          v53 = 1;
          v0 = v74;
          v4 = v76;
          v1 = 0xD000000000000010;
          v5 = v71;
          goto LABEL_63;
        }
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          goto LABEL_6;
        }
      }

      v53 = 1;
      v4 = v76;
LABEL_62:
    }

    else
    {
      v53 = 1;
    }

LABEL_63:
    v54 = *(v0 + 696);
    v55 = *(v0 + 688);
    sub_25293847C(v54, &qword_27F540298, &unk_252E3C270);
    (v5)(v55, v53, 1, v4);
    v29 = sub_2529439A0(v55, v54);
    goto LABEL_67;
  }

  v18 = type metadata accessor for HomeStore(0);
  v19 = static HomeStore.shared.getter(v18);
  v20 = v19;
  v21 = v19[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v21 != 2 && (v21 & 1) == 0)
  {

LABEL_67:
    v30 = 0;
    v31 = 0;
    v8 = 0;
    goto LABEL_68;
  }

  v8 = [*(v0 + 608) filters];
  if (!v8)
  {

    v30 = 0;
    v31 = 0;
    goto LABEL_68;
  }

  v22 = *(v0 + 608);
  type metadata accessor for HomeFilter();
  v23 = sub_252E37264();

  v24 = [v22 userTask];
  v25 = HomeStore.services(matching:supporting:)(v23, v24);
  LOBYTE(v22) = v26;

  if (v22)
  {
    v27 = v25;
    v28 = 1;
LABEL_66:
    sub_252929F10(v27, v28);
    goto LABEL_67;
  }

  v5 = v25 & 0xFFFFFFFFFFFFFF8;
  if (!(v25 >> 62))
  {
    v32 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_26;
    }

LABEL_65:
    v27 = v25;
    v28 = 0;
    goto LABEL_66;
  }

  v32 = sub_252E378C4();
  if (!v32)
  {
    goto LABEL_65;
  }

LABEL_26:
  v70 = v32;
  v33 = *(v0 + 608);
  type metadata accessor for HomeAutomationEntityResponses();

  v8 = sub_25299DDFC(v34);
  sub_25293DEE0(v0 + 16);
  memcpy(__dst, (v0 + 16), 0x1F8uLL);
  v35 = v33;
  v31 = sub_252953488(v33, __dst, 0);

  v36 = 0;
  v69 = v25;
  v73 = (v25 + 32);
  v75 = v25 & 0xC000000000000001;
  v72 = v25 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v75)
    {
      v1 = MEMORY[0x2530ADF00](v36, v69);
      v37 = __OFADD__(v36++, 1);
      if (v37)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v36 >= *(v5 + 16))
      {
        goto LABEL_59;
      }

      v1 = *&v73[8 * v36];

      v37 = __OFADD__(v36++, 1);
      if (v37)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    v38 = v4;
    if (qword_27F53F410 != -1)
    {
      swift_once();
    }

    v39 = qword_27F575A48;
    v40 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v41 = sub_252E36F34();
    v43 = v42;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v44 = off_27F546230;
    if (*(off_27F546230 + 2) && (v45 = sub_252A44A10(v41, v43), (v46 & 1) != 0))
    {
      v47 = *(v44[7] + 8 * v45);
    }

    else
    {
      v47 = 0;
    }

    if (*(v39 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](v47);
      v48 = sub_252E37F14();
      v49 = -1 << *(v39 + 32);
      v50 = v48 & ~v49;
      if ((*(v39 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
      {
        break;
      }
    }

LABEL_27:

    v1 = 0xD000000000000010;
    v4 = v38;
    v5 = v72;
    if (v36 == v70)
    {
      sub_252929F10(v69, 0);
      v30 = 0;
      goto LABEL_68;
    }
  }

  v51 = ~v49;
  while (*(*(v39 + 48) + 8 * v50) != v47)
  {
    v50 = (v50 + 1) & v51;
    if (((*(v39 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  sub_252929F10(v69, 0);

  v30 = 1;
  v1 = 0xD000000000000010;
  v4 = v38;
LABEL_68:
  *(v0 + 712) = v8;
  v56 = *(v0 + 696);
  v57 = *(v0 + 680);
  v58 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v29);
  swift_beginAccess();
  *(v0 + 720) = *(v58 + 23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v59 = swift_allocObject();
  *(v0 + 728) = v59;
  *(v59 + 16) = xmmword_252E3EF80;
  *(v59 + 32) = v1 + 2;
  *(v59 + 40) = 0x8000000252E728F0;
  sub_252956C1C(v56, v57);
  v60 = (*(v77 + 48))(v57, 1, v4);
  v61 = *(v0 + 680);
  if (v60 == 1)
  {
    sub_25293847C(*(v0 + 680), &qword_27F540298, &unk_252E3C270);
    *(v59 + 48) = 0u;
    *(v59 + 64) = 0u;
  }

  else
  {
    *(v59 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v59 + 48));
    (*(v77 + 32))(boxed_opaque_existential_0, v61, v4);
  }

  *(v59 + 80) = 0x6572756365537369;
  *(v59 + 88) = 0xEF74736575716552;
  v63 = MEMORY[0x277D839B0];
  *(v59 + 96) = v30;
  *(v59 + 120) = v63;
  *(v59 + 128) = v1;
  *(v59 + 136) = 0x8000000252E72940;
  if (v8)
  {
    v64 = type metadata accessor for HomeAutomationEntityResponses();
    v65 = v8;
  }

  else
  {
    v65 = 0;
    v64 = 0;
    *(v59 + 152) = 0;
    *(v59 + 160) = 0;
  }

  *(v59 + 144) = v65;
  *(v59 + 168) = v64;
  strcpy((v59 + 176), "intentContext");
  *(v59 + 190) = -4864;
  v66 = 0;
  if (v31)
  {
    v66 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v59 + 200) = 0;
    *(v59 + 208) = 0;
  }

  *(v0 + 736) = v31;
  *(v59 + 192) = v31;
  *(v59 + 216) = v66;
  v78 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v67 = swift_task_alloc();
  *(v0 + 744) = v67;
  *v67 = v0;
  v67[1] = sub_252C7F5B8;

  return v78(v1 + 10, 0x8000000252E8EEC0, v59);
}

uint64_t sub_252C7F5B8(uint64_t a1)
{
  v3 = *v2;
  v3[94] = a1;
  v3[95] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C7F858, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[96] = v4;
    *v4 = v3;
    v4[1] = sub_252C7F744;
    v5 = v3[81];
    v6 = v3[76];

    return sub_252A2B5A4(v5, v6);
  }
}

uint64_t sub_252C7F744()
{
  *(*v1 + 776) = v0;

  if (v0)
  {
    v2 = sub_252C7FF30;
  }

  else
  {
    v2 = sub_252C7FA1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252C7F858()
{

  v1 = v0[95];
  v2 = v0[87];
  sub_252E379F4();
  v0[73] = 0;
  v0[74] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E8EEE0);
  v0[75] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC3D90(v0[73], v0[74], 0xD00000000000007DLL, 0x8000000252E8EE40);

  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252C7FA1C()
{
  v1 = v0[81];
  if ((*(v0[83] + 48))(v1, 1, v0[82]) == 1)
  {
    v2 = v0[94];
    sub_25293847C(v0[87], &qword_27F540298, &unk_252E3C270);

    sub_25293847C(v1, &qword_27F543448, &unk_252E4BAA8);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[94];
    v6 = v0[84];
    v7 = v0[77];
    sub_2529645E8(v1, v6);
    __swift_project_boxed_opaque_existential_1((v7 + 24), *(v7 + 48));
    v8 = swift_task_alloc();
    v0[98] = v8;
    *(v8 + 16) = v5;
    v9 = swift_task_alloc();
    v0[99] = v9;
    *(v9 + 16) = v6;
    sub_252B03B94();
    v10 = swift_task_alloc();
    v0[100] = v10;
    *v10 = v0;
    v10[1] = sub_252C7FC7C;
    v11 = v0[80];

    return sub_252A199A8((v0 + 65), &unk_252E58000, v8, &unk_252E58010, v9, v11, 0, 0);
  }
}

uint64_t sub_252C7FC7C()
{
  v2 = *(*v1 + 640);
  v3 = *(*v1 + 632);
  v4 = *(*v1 + 624);
  *(*v1 + 808) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C800E8;
  }

  else
  {

    v5 = sub_252C7FE08;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C7FE08(uint64_t a1)
{
  v2 = v1[94];
  v3 = v1[87];
  v4 = v1[84];
  *(sub_252B680FC(a1) + 161) = 1;

  sub_252C8082C((v1 + 65));

  __swift_destroy_boxed_opaque_existential_1(v1 + 65);
  sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
  sub_252C80C04(v4, type metadata accessor for CompletionSnippetModel);

  v5 = v1[1];

  return v5();
}

uint64_t sub_252C7FF30()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 696);
  sub_252E379F4();
  *(v0 + 584) = 0;
  *(v0 + 592) = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E8EEE0);
  *(v0 + 600) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC3D90(*(v0 + 584), *(v0 + 592), 0xD00000000000007DLL, 0x8000000252E8EE40);

  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252C800E8()
{
  v1 = *(v0 + 672);

  sub_252C80C04(v1, type metadata accessor for CompletionSnippetModel);
  v2 = *(v0 + 808);
  v3 = *(v0 + 696);
  sub_252E379F4();
  *(v0 + 584) = 0;
  *(v0 + 592) = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E8EEE0);
  *(v0 + 600) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC3D90(*(v0 + 584), *(v0 + 592), 0xD00000000000007DLL, 0x8000000252E8EE40);

  sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252C802D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252C802F8, 0, 0);
}

uint64_t sub_252C802F8()
{
  v1 = v0[2];
  sub_252A31B70(v0[3], v1);
  v2 = type metadata accessor for HomeAutomationSnippetModels(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_252C803B4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_252C80428()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252C804BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252C802D8(a1, v4);
}

uint64_t sub_252C8055C(uint64_t a1)
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v1 + 16), &v17);

  __swift_project_boxed_opaque_existential_1(&v17, v19);
  v2 = sub_252E338C4();
  __swift_destroy_boxed_opaque_existential_1(&v17);
  if ((v2 & 1) == 0)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544D60);
    sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E8F0C0, 0xD00000000000007DLL, 0x8000000252E8EE40);
    goto LABEL_27;
  }

  v3 = sub_252C4B5D4();
  v4 = sub_252C526B4();
  v16 = (v4 != 2) ^ v4;
  v5 = *(sub_252B680FC(v4) + 129);

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544D60);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E8F0F0);
  if (v3)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v7, v8);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E8F120);
  if (v16)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v16)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v9, v10);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E8F140);
  if (v5)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v5)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v11, v12);

  sub_252CC3D90(v17, v18, 0xD00000000000007DLL, 0x8000000252E8EE40);

  if (!v3)
  {
LABEL_27:
    v13 = 0;
    return v13 & 1;
  }

  v13 = v16 & (v5 ^ 1);
  return v13 & 1;
}

void sub_252C8082C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403B0, &unk_252E3C460);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-1] - v3;
  v5 = sub_252E34204();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252929E74(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403B8, &qword_252E58020);
  v9 = swift_dynamicCast();
  v10 = *(v6 + 56);
  if (v9)
  {
    v10(v4, 0, 1, v5);
    (*(v6 + 32))(v8, v4, v5);
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000020, 0x8000000252E8EF30, 0xD00000000000007DLL, 0x8000000252E8EE40);
    v12 = sub_252E341F4();
    v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v12);
    sub_252929E74((v13 + 56), v16);

    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_252E33EC4();

    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v10(v4, 1, 1, v5);
    sub_25293847C(v4, &qword_27F5403B0, &unk_252E3C460);
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000020, 0x8000000252E8EF00, 0xD00000000000007DLL, 0x8000000252E8EE40);
  }
}

uint64_t sub_252C80B58()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25294B7BC;

  return sub_252C7E0A8(v2, v3, v5, v4);
}

uint64_t sub_252C80C04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252C80C64(void *a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v2 + 16), v12);

  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  if ((sub_252E338F4() & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = [a1 userTask];
  if (!v3)
  {
    sub_252C515AC();
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v12);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v3 attribute];

  __swift_destroy_boxed_opaque_existential_1(v12);
  if (v5 == 67 && sub_252C4B5D4())
  {
    v6 = "eply for non HomePod request";
    v7 = 1;
    v8 = 0xD00000000000002BLL;
    v9 = 0xD00000000000002BLL;
    if (qword_27F53F4E8 != -1)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_9:
  v7 = 0;
  v9 = 0xD00000000000002CLL;
  v6 = "No need to send eagerMessage.";
  if (qword_27F53F4E8 != -1)
  {
    v8 = 0xD00000000000002CLL;
LABEL_12:
    swift_once();
    v9 = v8;
  }

LABEL_10:
  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544D60);
  sub_252CC3D90(v9, v6 | 0x8000000000000000, 0xD00000000000007DLL, 0x8000000252E8EE40);
  return v7;
}