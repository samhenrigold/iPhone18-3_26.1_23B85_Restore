uint64_t HomeAttributeValueType.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return 0x65676E6172;
      }

      if (a1 == 8)
      {
        return 0x676E696E61656C63;
      }

      goto LABEL_18;
    }

    if (a1 == 4)
    {
      return 0x72656765746E69;
    }

    else
    {
      return 0x74696D696CLL;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x6E776F6E6B6E75;
      }

      if (a1 == 1)
      {
        return 0x6E61656C6F6F62;
      }

LABEL_18:
      result = sub_252E37DF4();
      __break(1u);
      return result;
    }

    if (a1 == 2)
    {
      return 0x656C62756F64;
    }

    else
    {
      return 0x676E69727473;
    }
  }
}

BOOL sub_252B9DA28(void *a1)
{
  if (sub_252C4B5D4())
  {
    v2 = [a1 userTask];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 attribute];

      return v4 == 7;
    }

    sub_252C515AC();
  }

  return 0;
}

uint64_t sub_252B9DAB4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SetThresholdForModifyHumidityRequestHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

id sub_252B9DAE8(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  v6 = [a1 userTask];
  v64 = v3;
  v65 = v2;
  v63 = v5;
  if (v6)
  {
    v7 = v6;
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v66 = sub_252D6CA80(v7);
  }

  else
  {
    v66 = 0;
  }

  v8 = type metadata accessor for HomeStore(0);
  v9 = static HomeStore.shared.getter(v8);
  v10 = [v68 filters];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for HomeFilter();
    v12 = sub_252E37264();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = type metadata accessor for HomeUserTask();
  v14 = objc_allocWithZone(v13);
  v15 = sub_252E36F04();
  v16 = &off_279711000;
  v17 = [v14 initWithIdentifier:0 displayString:v15];

  v18 = v17;
  [v18 setTaskType_];
  [v18 setAttribute_];
  [v18 setValue_];

  v19 = HomeStore.accessories(matching:supporting:)(v12, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    v27 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v19 >> 62)
    {
LABEL_73:
      v28 = sub_252E378C4();
      if (!v28)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v28 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        goto LABEL_48;
      }
    }

    v67 = v27;
    v29 = 0;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v29, v19);
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v29 >= *(v67 + 16))
        {
          goto LABEL_70;
        }

        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }
      }

      v31 = [v68 filters];
      if (v31)
      {
        v32 = v31;
        type metadata accessor for HomeFilter();
        v33 = sub_252E37264();
      }

      else
      {
        v33 = MEMORY[0x277D84F90];
      }

      v34 = sub_252D51310(v33);

      v35 = sub_252C75958(v34);

      v36 = sub_252D51460(&unk_2864ADE18);
      v16 = sub_252C75958(v36);

      v37 = sub_2529F9A94(v16, v35);

      v18 = (v37 & 0xC000000000000001) != 0 ? sub_252E378C4() : *(v37 + 16);

      if (v18)
      {
        break;
      }

      ++v29;
      if (v30 == v28)
      {
        goto LABEL_48;
      }
    }

    sub_252929F10(v19, 0);
    v28 = v66;
    if (v66)
    {
      v66[3] = 23;
    }

LABEL_50:
    v16 = v64;
    v18 = v65;
    v19 = v63;
    if (qword_27F53F500 != -1)
    {
      goto LABEL_71;
    }

    goto LABEL_51;
  }

  sub_252929F10(v19, 1);
  v23 = static HomeStore.shared.getter(v22);
  v24 = [v68 filters];
  if (v24)
  {
    v25 = v24;
    type metadata accessor for HomeFilter();
    v26 = sub_252E37264();
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v38 = objc_allocWithZone(v13);
  v39 = sub_252E36F04();
  v40 = [v38 &off_279711370 + 6];

  v18 = v40;
  [v18 setTaskType_];
  [v18 setAttribute_];
  [v18 setValue_];

  v19 = HomeStore.accessories(matching:supporting:)(v26, v18);
  v16 = v41;

  if (v16)
  {
    v42 = v19;
    v43 = 1;
LABEL_49:
    sub_252929F10(v42, v43);
    v28 = v66;
    goto LABEL_50;
  }

  v27 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
    v28 = sub_252E378C4();
    if (v28)
    {
      goto LABEL_33;
    }

LABEL_48:
    v42 = v19;
    v43 = 0;
    goto LABEL_49;
  }

  v28 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
    goto LABEL_48;
  }

LABEL_33:
  v67 = v19 & 0xFFFFFFFFFFFFFF8;
  v44 = 0;
  while ((v19 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](v44, v19);
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_69;
    }

LABEL_40:
    v46 = [v68 filters];
    if (v46)
    {
      v47 = v46;
      type metadata accessor for HomeFilter();
      v48 = sub_252E37264();
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
    }

    v49 = sub_252D51310(v48);

    v50 = sub_252C75958(v49);

    v16 = sub_252D51460(&unk_2864ADE40);
    v27 = sub_252C75958(v16);

    v51 = sub_2529F9A94(v27, v50);

    if ((v51 & 0xC000000000000001) != 0)
    {
      v18 = sub_252E378C4();
    }

    else
    {
      v18 = *(v51 + 16);
    }

    if (v18)
    {
      sub_252929F10(v19, 0);
      v28 = v66;
      if (v66)
      {
        v66[3] = 24;
      }

      goto LABEL_50;
    }

    ++v44;
    if (v45 == v28)
    {
      goto LABEL_48;
    }
  }

  if (v44 >= *(v67 + 16))
  {
    __break(1u);
    goto LABEL_73;
  }

  v45 = v44 + 1;
  if (!__OFADD__(v44, 1))
  {
    goto LABEL_40;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  swift_once();
LABEL_51:
  v52 = __swift_project_value_buffer(v18, qword_27F544DA8);
  (*(v16 + 16))(v19, v52, v18);
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E84EA0);
  if (v28)
  {
    v53 = *(v28 + 24);
  }

  else
  {
    v53 = 0;
  }

  v69 = v53;
  v70 = v28 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
  v54 = sub_252E36F94();
  MEMORY[0x2530AD570](v54);

  sub_252CC3D90(v71, v72, 0xD0000000000000A4, 0x8000000252E84EE0);

  (*(v16 + 8))(v19, v18);
  if (v28)
  {

    v55 = sub_252D6CB58();
  }

  else
  {
    v55 = 0;
  }

  v56 = [v68 filters];
  if (v56)
  {
    v57 = v56;
    type metadata accessor for HomeFilter();
    v58 = sub_252E37264();
  }

  else
  {
    v58 = 0;
  }

  v59 = [v68 time];
  v60 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v60 setUserTask_];
  if (v58)
  {
    type metadata accessor for HomeFilter();
    v61 = sub_252E37254();
  }

  else
  {
    v61 = 0;
  }

  [v60 setFilters_];

  [v60 setTime_];

  return v60;
}

uint64_t sub_252B9E3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000252E85030 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v6 = 27;
LABEL_5:
    result = sub_252D9E9A0(v6);
LABEL_6:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = result & 1;
    return result;
  }

  if (a1 == 0xD00000000000001BLL && 0x8000000252E85050 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v6 = 2;
    goto LABEL_5;
  }

  if (a1 == 0xD000000000000016 && 0x8000000252E85070 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v6 = 5;
    goto LABEL_5;
  }

  if (a1 == 0xD00000000000001FLL && 0x8000000252E85090 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v6 = 14;
    goto LABEL_5;
  }

  if (a1 == 0xD000000000000015 && 0x8000000252E850B0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D9F3E0(1);
    goto LABEL_6;
  }

  if (a1 == 0xD000000000000014 && 0x8000000252E850D0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D9F3E0(7);
    goto LABEL_6;
  }

  if (a1 == 0xD000000000000016 && 0x8000000252E850F0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D9F3E0(3);
    goto LABEL_6;
  }

  if (a1 == 0xD000000000000012 && 0x8000000252E85110 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D9F3E0(29);
    goto LABEL_6;
  }

  if (a1 == 0xD000000000000015 && 0x8000000252E85130 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v8 = sub_252D9DBCC();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
    *(a3 + 24) = result;
    *a3 = v8;
  }

  else
  {

    return sub_252C86824(a1, a2, a3);
  }

  return result;
}

char *sub_252B9E738(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = (a1 + 512);
  v5 = -1;
  while (v3 != ++v5)
  {
    if (!*(*(v4 - 10) + 16) && !*(*(v4 - 9) + 16) && !*(*(v4 - 8) + 16) && !*(*(v4 - 7) + 16) && !*(*(v4 - 6) + 16) && !*(*(v4 - 5) + 16) && !*(*(v4 - 4) + 16) && !*(*(v4 - 3) + 16) && !*(*(v4 - 2) + 16) && !*(*(v4 - 1) + 16))
    {
      v6 = *v4;
      v4 += 63;
      if (!*(v6 + 16))
      {
        continue;
      }
    }

    v7 = a1 + 512;
    v8 = *(a1 + 16);
    while (*(*(v7 - 80) + 16) || *(*(v7 - 72) + 16) || *(*(v7 - 64) + 16) || *(*(v7 - 56) + 16) || *(*(v7 - 48) + 16) || *(*(v7 - 40) + 16) || *(*(v7 - 32) + 16) || *(*(v7 - 24) + 16) || *(*(v7 - 16) + 16) || *(*(v7 - 8) + 16) || *(*v7 + 16))
    {
      v7 += 504;
      if (!--v8)
      {
        goto LABEL_41;
      }
    }

    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = (a1 + v9);
      if (*(*(a1 + v9 + 432) + 16) || *(v11[55] + 16) || *(v11[56] + 16) || *(v11[57] + 16) || *(v11[58] + 16) || *(v11[59] + 16) || *(v11[60] + 16) || *(v11[61] + 16) || *(v11[62] + 16) || *(v11[63] + 16) || *(v11[64] + 16))
      {
        break;
      }

      ++v10;
      v9 += 504;
      if (v3 == v10)
      {

        v10 = v3;
        goto LABEL_47;
      }
    }

    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_59;
    }

    if (v13 != v3)
    {
      v1 = 504;
      goto LABEL_63;
    }

LABEL_45:
    if (v3 < v10)
    {
      __break(1u);
    }

    else if ((v10 & 0x8000000000000000) == 0)
    {
LABEL_47:
      v13 = v10;
      if (!__OFADD__(v3, v10 - v3))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22[0] = v2;
        if (!isUniquelyReferenced_nonNull_native || v10 > *(v2 + 3) >> 1)
        {
          if (v3 <= v10)
          {
            v15 = v10;
          }

          else
          {
            v15 = v3;
          }

          v2 = sub_2529F7FB0(isUniquelyReferenced_nonNull_native, v15, 1, v2);
          v22[0] = v2;
        }

        sub_252B7B280(v10, v3, 0);
        return v2;
      }

LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      while (1)
      {
        memcpy(__dst, &v2[v9 + 536], sizeof(__dst));
        memcpy(&v2[v9 + 536], __src, 0x1F8uLL);
        result = sub_252935408(__dst);
        v3 = *(v2 + 2);
        while (2)
        {
          ++v10;
          while (1)
          {
            ++v13;
            v9 += 504;
            if (v13 == v3)
            {
              goto LABEL_45;
            }

LABEL_63:
            if (v13 >= v3)
            {
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
              return result;
            }

            v16 = &v2[v9];
            if (!*(*&v2[v9 + 936] + 16) && !*(*(v16 + 118) + 16) && !*(*(v16 + 119) + 16))
            {
              v17 = &v2[v9];
              if (!*(*(v16 + 120) + 16) && !*(*(v17 + 121) + 16) && !*(*(v17 + 122) + 16) && !*(*(v17 + 123) + 16) && !*(*(v17 + 124) + 16) && !*(*(v17 + 125) + 16) && !*(*(v17 + 126) + 16) && !*(*(v17 + 127) + 16))
              {
                break;
              }
            }
          }

          if (v13 == v10)
          {
            continue;
          }

          break;
        }

        if (v10 >= v3)
        {
          goto LABEL_82;
        }

        memcpy(__src, &v2[v10 * v1 + 32], sizeof(__src));
        memcpy(v22, v17 + 536, sizeof(v22));
        sub_2529353AC(__src, __dst);
        sub_2529353AC(v22, __dst);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_252D57AC0(v2);
        }

        v18 = &v2[v10 * v1];
        memcpy(v19, v18 + 32, sizeof(v19));
        memcpy(v18 + 32, v22, 0x1F8uLL);
        result = sub_252935408(v19);
        if (v13 >= *(v2 + 2))
        {
          goto LABEL_83;
        }
      }
    }

    __break(1u);
    goto LABEL_58;
  }

LABEL_41:

  return v2;
}

uint64_t sub_252B9EB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540338, &qword_252E3C340);
  v4[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v4[12] = *(v6 + 64);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B9ECAC, 0, 0);
}

uint64_t sub_252B9ECAC(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v47 = *(v1 + 56);
    v4 = sub_252C285F0();
    v5 = v4;
    v48 = v3;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_25:
      v7 = sub_252E378C4();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    while (v7 != v8)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v8, v5);
      }

      else
      {
        if (v8 >= *(v6 + 16))
        {
          goto LABEL_24;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v12 = sub_252DA124C(0);

      ++v8;
      if (v12)
      {
        MEMORY[0x2530AD700]();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v3 = v48;
        v8 = v11;
      }
    }

    v2 = v47;
  }

  type metadata accessor for HomeAutomationPolledEntityResponses();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v3;
  swift_beginAccess();
  v14 = sub_252BC6360(&unk_27F543C09, 0);
  swift_endAccess();

  if (!v2)
  {
    v17 = 0;
    v16 = 0;
    goto LABEL_28;
  }

  v15 = *(v1 + 56);
  LODWORD(v2) = sub_252C2DF04(4);
  v16 = sub_252C2DF04(28);
  v17 = sub_252C2DF04(27);
  v18 = v15;
  v19 = sub_252C2A5D8();
  if (v19 >> 62)
  {
    v33 = sub_252E378C4();

    if (v33)
    {
      goto LABEL_19;
    }

LABEL_27:

    goto LABEL_28;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v20)
  {
    goto LABEL_27;
  }

LABEL_19:
  v21 = *(v1 + 80);
  v22 = *(v1 + 88);
  v23 = *(v1 + 72);
  sub_252B9F1AC(v18, v23);
  if ((*(v22 + 48))(v23, 1, v21) != 1)
  {
    v26 = *(v1 + 104);
    v25 = *(v1 + 112);
    v27 = *(v1 + 88);
    v28 = *(v1 + 64);
    sub_25294B588(*(v1 + 72), v25);
    v29 = v28[12];
    v30 = v28[13];
    __swift_project_boxed_opaque_existential_1(v28 + 9, v29);
    sub_25295A464(v25, v26);
    v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = swift_allocObject();
    sub_25294B588(v26, v32 + v31);
    sub_252943B8C(sub_252BA02BC, v32, v29, v30);
    sub_25293847C(*(v1 + 112), &qword_27F540330, &unk_252E3C7F0);

LABEL_33:

    goto LABEL_35;
  }

  v24 = *(v1 + 72);

  sub_25293847C(v24, &qword_27F540338, &qword_252E3C340);
LABEL_28:
  if ((sub_252B9FEC8(*(v1 + 48)) & 1) == 0 || ((v34 = *(v14 + 24), v34 >> 62) ? (v35 = sub_252E378C4()) : (v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10)), (v35 == 0) | (v2 | v16 | v17) & 1))
  {
    v36 = *(v1 + 64);
    v37 = v36[12];
    v38 = v36[13];
    __swift_project_boxed_opaque_existential_1(v36 + 9, v37);
    sub_252944924(v37, v38);
    goto LABEL_33;
  }

  v39 = *(v1 + 64);
  v40 = *(v1 + 48);
  v41 = v39[12];
  v42 = v39[13];
  __swift_project_boxed_opaque_existential_1(v39 + 9, v41);
  v43 = swift_allocObject();
  v43[2] = v39;
  v43[3] = v14;
  v43[4] = v40;

  v44 = v40;
  sub_252943B8C(sub_252BA02B0, v43, v41, v42);

LABEL_35:

  v45 = *(v1 + 8);

  return v45();
}

uint64_t sub_252B9F1AC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252E36324();
  v94 = *(v4 - 8);
  v95 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v86 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v90 = v84 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v87 = v84 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v91 = v84 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v88 = v84 - v14;
  MEMORY[0x28223BE20](v13);
  v92 = v84 - v15;
  v16 = sub_252C2A5D8();
  if (v16 >> 62)
  {
    goto LABEL_22;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v17)
  {
LABEL_23:
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v38 = sub_252E36AD4();
    __swift_project_value_buffer(v38, qword_27F544D18);
    sub_252CC3D90(0xD00000000000003ELL, 0x8000000252E85250, 0xD00000000000008FLL, 0x8000000252E6B430);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
    v40 = *(*(v39 - 8) + 56);

    return v40(a2, 1, 1, v39);
  }

  while (1)
  {
    v84[0] = a2;
    v84[1] = a1;
    v18 = sub_252C2E2D8();
    v19 = v18;
    if (v18 >> 62)
    {
      break;
    }

    a2 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a2)
    {
      goto LABEL_29;
    }

LABEL_5:
    v20 = 0;
    v21 = v19 & 0xC000000000000001;
    a1 = v19 & 0xFFFFFFFFFFFFFF8;
    v89 = (v94 + 32);
    v93 = MEMORY[0x277D84F90];
    v85 = v19 & 0xFFFFFFFFFFFFFF8;
    v22 = v88;
    while (1)
    {
      if (v21)
      {
        v23 = MEMORY[0x2530ADF00](v20, v19);
      }

      else
      {
        if (v20 >= *(a1 + 16))
        {
          goto LABEL_21;
        }

        v23 = *(v19 + 8 * v20 + 32);
      }

      v24 = v23;
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v26 = [v23 entity];
      if (v26 && (v27 = v26, v28 = [v26 homeEntityName], v27, v28))
      {
        v29 = v19;
        v30 = v21;
        v31 = a2;
        sub_252E36F34();

        sub_252E37024();

        v32 = *v89;
        (*v89)(v92, v22, v95);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_2529F7F74(0, *(v93 + 2) + 1, 1, v93);
        }

        v34 = *(v93 + 2);
        v33 = *(v93 + 3);
        if (v34 >= v33 >> 1)
        {
          v93 = sub_2529F7F74((v33 > 1), v34 + 1, 1, v93);
        }

        v36 = v93;
        v35 = v94;
        *(v93 + 2) = v34 + 1;
        v32(&v36[((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34], v92, v95);
        a2 = v31;
        v21 = v30;
        v19 = v29;
        a1 = v85;
      }

      else
      {
      }

      ++v20;
      if (v25 == a2)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v37 = sub_252E378C4();

    if (!v37)
    {
      goto LABEL_23;
    }
  }

  a2 = sub_252E378C4();
  if (a2)
  {
    goto LABEL_5;
  }

LABEL_29:
  v93 = MEMORY[0x277D84F90];
LABEL_30:

  v42 = sub_252C2E2FC();
  v43 = v42;
  if (v42 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v45 = 0;
    v46 = v43 & 0xFFFFFFFFFFFFFF8;
    v89 = (v94 + 32);
    v92 = MEMORY[0x277D84F90];
    v88 = (v43 & 0xFFFFFFFFFFFFFF8);
    v47 = v87;
    while (1)
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x2530ADF00](v45, v43);
      }

      else
      {
        if (v45 >= *(v46 + 16))
        {
          goto LABEL_48;
        }

        v48 = *(v43 + 8 * v45 + 32);
      }

      v49 = v48;
      v50 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      v51 = [v48 entity];
      if (v51 && (v52 = v51, v53 = [v51 homeEntityName], v52, v53))
      {
        sub_252E36F34();

        sub_252E37024();

        v54 = *v89;
        (*v89)(v91, v47, v95);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_2529F7F74(0, *(v92 + 2) + 1, 1, v92);
        }

        v56 = *(v92 + 2);
        v55 = *(v92 + 3);
        if (v56 >= v55 >> 1)
        {
          v92 = sub_2529F7F74((v55 > 1), v56 + 1, 1, v92);
        }

        v57 = v91;
        v58 = v92;
        *(v92 + 2) = v56 + 1;
        v54(&v58[((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v56], v57, v95);
        v46 = v88;
      }

      else
      {
      }

      ++v45;
      if (v50 == i)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v92 = MEMORY[0x277D84F90];
LABEL_51:

  v59 = sub_252C2E688();
  v60 = v59;
  if (v59 >> 62)
  {
    goto LABEL_70;
  }

  for (j = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_252E378C4())
  {
    v62 = 0;
    v63 = v60 & 0xFFFFFFFFFFFFFF8;
    v89 = (v94 + 32);
    v91 = MEMORY[0x277D84F90];
    v88 = (v60 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v60 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x2530ADF00](v62, v60);
      }

      else
      {
        if (v62 >= *(v63 + 16))
        {
          goto LABEL_69;
        }

        v64 = *(v60 + 8 * v62 + 32);
      }

      v65 = v64;
      v66 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      v67 = [v64 entity];
      if (v67 && (v68 = v67, v69 = [v67 homeEntityName], v68, v69))
      {
        v70 = j;
        sub_252E36F34();

        v71 = v86;
        sub_252E37024();

        v72 = *v89;
        (*v89)(v90, v71, v95);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_2529F7F74(0, *(v91 + 2) + 1, 1, v91);
        }

        v74 = *(v91 + 2);
        v73 = *(v91 + 3);
        j = v70;
        if (v74 >= v73 >> 1)
        {
          v91 = sub_2529F7F74((v73 > 1), v74 + 1, 1, v91);
        }

        v75 = v90;
        v76 = v91;
        *(v91 + 2) = v74 + 1;
        v63 = v88;
        v72(&v76[((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v74], v75, v95);
      }

      else
      {
      }

      ++v62;
      if (v66 == j)
      {
        goto LABEL_72;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    ;
  }

  v91 = MEMORY[0x277D84F90];
LABEL_72:

  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v77);
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_252E3C280;
  *(v78 + 32) = 0xD000000000000011;
  *(v78 + 40) = 0x8000000252E851F0;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v78 + 48) = v93;
  *(v78 + 72) = v79;
  *(v78 + 80) = 0xD000000000000016;
  v80 = v92;
  *(v78 + 88) = 0x8000000252E85210;
  *(v78 + 96) = v80;
  *(v78 + 120) = v79;
  *(v78 + 128) = 0xD000000000000015;
  *(v78 + 168) = v79;
  v81 = v91;
  *(v78 + 136) = 0x8000000252E85230;
  *(v78 + 144) = v81;
  v82 = v84[0];
  sub_252E362B4();

  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  return (*(*(v83 - 8) + 56))(v82, 0, 1, v83);
}

uint64_t sub_252B9FBE0(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  *(swift_allocObject() + 16) = MEMORY[0x277D84F90];
  v5 = *(a2 + 24);
  type metadata accessor for HomeAutomationEntityResponses();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v6 + 24) = v5;

  v8 = sub_252B680FC(v7);
  swift_beginAccess();
  v9 = *(v8 + 16);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 504 * v10 - 472);
    memcpy(v15, v11, sizeof(v15));
    memmove(__dst, v11, 0x1F8uLL);
    GEOLocationCoordinate2DMake();
    sub_2529353AC(v15, __src);

    memcpy(__src, __dst, sizeof(__src));
  }

  else
  {

    sub_25293DEE0(__src);
  }

  memcpy(__dst, __src, sizeof(__dst));
  v12 = a3;
  v13 = sub_252953488(a3, __dst, 0);

  sub_252BFE564(v6, v13);
}

uint64_t sub_252B9FDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252B9EB90(a1, a2, a3);
}

void *sub_252B9FE64@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for WatchPostExecutionResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252B9FEC8(void *a1)
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
  v11 = v10;

  if (v11)
  {
    v12 = v9;
    v13 = 1;
LABEL_36:
    sub_252929F10(v12, v13);
    return 0;
  }

  if (!(v9 >> 62))
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_35:
    v12 = v9;
    v13 = 0;
    goto LABEL_36;
  }

LABEL_34:
  v14 = sub_252E378C4();
  if (!v14)
  {
    goto LABEL_35;
  }

LABEL_9:
  v15 = 0;
  v32 = v9 & 0xC000000000000001;
  while (1)
  {
    if (v32)
    {
      v16 = MEMORY[0x2530ADF00](v15, v9);
      v17 = __OFADD__(v15++, 1);
      if (v17)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v15 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v16 = *(v9 + 32 + 8 * v15);

      v17 = __OFADD__(v15++, 1);
      if (v17)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    if (qword_27F53F410 != -1)
    {
      swift_once();
    }

    v18 = qword_27F575A48;
    v19 = [*(v16 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v20 = sub_252E36F34();
    v22 = v21;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v23 = off_27F546230;
    if (*(off_27F546230 + 2) && (v24 = sub_252A44A10(v20, v22), (v25 & 1) != 0))
    {
      v26 = *(v23[7] + 8 * v24);
    }

    else
    {
      v26 = 0;
    }

    if (*(v18 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](v26);
      v27 = sub_252E37F14();
      v28 = -1 << *(v18 + 32);
      v29 = v27 & ~v28;
      if ((*(v18 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        break;
      }
    }

LABEL_10:

    if (v15 == v14)
    {
      goto LABEL_35;
    }
  }

  v30 = ~v28;
  while (*(*(v18 + 48) + 8 * v29) != v26)
  {
    v29 = (v29 + 1) & v30;
    if (((*(v18 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_252929F10(v9, 0);
  return 1;
}

uint64_t sub_252BA01F4(uint64_t a1)
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v1 + 16), v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v2 = sub_252E338C4();
  if ((v2 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
LABEL_6:
    v4 = 0;
    return v4 & 1;
  }

  v3 = *(sub_252B680FC(v2) + 50);

  __swift_destroy_boxed_opaque_existential_1(v6);
  if ((v3 & 1) == 0 || !sub_252C4B5D4())
  {
    goto LABEL_6;
  }

  v4 = sub_252C4E58C(&unk_2864A9AA8) ^ 1;
  return v4 & 1;
}

uint64_t sub_252BA02BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25295A464(v4, a1);
}

BOOL sub_252BA034C(void *a1)
{
  v2 = a1[16];
  v3 = a1[17];
  v4 = a1[18];
  v5 = a1[19];
  v6 = a1[21];
  v7 = a1[28];
  v8 = a1[13];
  memcpy(v29, a1 + 29, sizeof(v29));
  v9 = sub_252A0E3E4();
  v10 = *(v5 + 16);
  if (v9)
  {
    if (v10 >= 2)
    {
      v28 = 1;
LABEL_12:
      memcpy(v29, a1 + 29, sizeof(v29));
      v27 = sub_252A14800();
      goto LABEL_14;
    }

    v11 = *(v6 + 16) > 1uLL || *(v8 + 16) > 1uLL || *(v7 + 16) > 1uLL;
    v28 = v11;
  }

  else
  {
    v28 = 0;
    if (v10 > 1)
    {
      goto LABEL_12;
    }
  }

  if (*(v6 + 16) >= 2uLL)
  {
    goto LABEL_12;
  }

  v27 = 0;
LABEL_14:
  v12 = *(v3 + 16) > 1uLL || *(v4 + 16) > 1uLL;
  v26 = v12;
  v13 = *(v2 + 16);
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v14 = sub_252E36AD4();
  __swift_project_value_buffer(v14, qword_27F544E08);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E85290);
  if (v28)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v28)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v15, v16);

  MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E852C0);
  if (v27)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v27)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v17, v18);

  MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E85300);
  if (v26)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v26)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v19, v20);

  MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E85340);
  v21 = v13 > 1;
  v22 = v13 > 1;
  if (v21)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v21)
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v23, v24);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000009CLL, 0x8000000252E85370);

  return ((v28 | v27 | v26 | v22) & 1) == 0;
}

uint64_t sub_252BA06E4()
{
  v1 = *(v0 + 24);
  v21 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
LABEL_3:
    v3 = 0;
    v19 = v1 & 0xFFFFFFFFFFFFFF8;
    v20 = v1 & 0xC000000000000001;
    v17 = v1;
    v1 = &OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
    v18 = v2;
    do
    {
      if (v20)
      {
        v4 = MEMORY[0x2530ADF00](v3, v17);
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v3 >= *(v19 + 16))
        {
          goto LABEL_34;
        }

        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_33;
        }
      }

      v6 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      if (v6 >> 62)
      {
        v7 = sub_252E378C4();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v7)
      {
        v8 = 0;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x2530ADF00](v8, v6);
            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v9 = *(v6 + 8 * v8 + 32);

            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              v2 = sub_252E378C4();
              if (!v2)
              {
                goto LABEL_36;
              }

              goto LABEL_3;
            }
          }

          v11 = sub_252A481A4(v9 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
          if ((v12 & 1) != 0 || v11 != 27)
          {
          }

          else
          {
            v13 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);

            if (v13)
            {
              v14 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

              if (v14)
              {

                sub_252E37A94();
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
                goto LABEL_5;
              }
            }
          }

          ++v8;
        }

        while (v10 != v7);
      }

LABEL_5:
      ;
    }

    while (v3 != v18);
    v15 = v21;
  }

  else
  {
LABEL_36:
    v15 = MEMORY[0x277D84F90];
  }

  type metadata accessor for HomeAutomationAirPurifierResponses();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v15;
  return result;
}

uint64_t sub_252BA0974()
{
  v1 = sub_25299C0F0(47, 0x4556495443414E49, 0xE800000000000000);
  v2 = v1;
  if (v1 >> 62)
  {
    if (sub_252E378C4())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v4 = *(v0 + 24);
  v22 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_39;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_7:
    v6 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v18 = v4;
    v4 = &OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
    v19 = v5;
    do
    {
      if (v21)
      {
        v7 = MEMORY[0x2530ADF00](v6, v18);
        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v6 >= *(v20 + 16))
        {
          goto LABEL_38;
        }

        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_37;
        }
      }

      v9 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      if (v9 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v10)
      {
        v11 = 0;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x2530ADF00](v11, v9);
            v13 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v12 = *(v9 + 8 * v11 + 32);

            v13 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              v5 = sub_252E378C4();
              if (!v5)
              {
                goto LABEL_40;
              }

              goto LABEL_7;
            }
          }

          v14 = sub_252A481A4(v12 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
          if ((v15 & 1) != 0 || v14 != 27)
          {
          }

          else
          {
            v16 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);

            if (v16)
            {
              v17 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

              if ((v17 & 1) == 0)
              {

                sub_252E37A94();
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
                goto LABEL_9;
              }
            }
          }

          ++v11;
        }

        while (v13 != v10);
      }

LABEL_9:
      ;
    }

    while (v6 != v19);
    v2 = v22;
  }

  else
  {
LABEL_40:
    v2 = MEMORY[0x277D84F90];
  }

LABEL_3:
  type metadata accessor for HomeAutomationAirPurifierResponses();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v2;
  return result;
}

uint64_t sub_252BA0C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25294B954;

  return sub_252BA0D20(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA0D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25294B954;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA0E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25294B954;

  return sub_252BA0D20(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA0F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25294B954;

  return sub_252BA0D20(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA0FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25294B954;

  return sub_252BA0D20(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA10BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25294B954;

  return sub_252BA0D20(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA1184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25294B954;

  return sub_252BA0D20(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA124C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25294B954;

  return sub_252BA0D20(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA1314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return MEMORY[0x2822009F8](sub_252BA133C, 0, 0);
}

uint64_t sub_252BA133C(uint64_t a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v2 + 16), (v1 + 2));

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  if (sub_252E338F4())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v34 = v1[11];
    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544D18);
    sub_252CC3D90(0xD000000000000026, 0x8000000252E85560, 0xD00000000000008FLL, 0x8000000252E6B430);
    v26 = (*(v34 + 32) + **(v34 + 32));
    v4 = swift_task_alloc();
    v1[13] = v4;
    *v4 = v1;
    v4[1] = sub_252BA2000;
    v5 = v1[11];
    v6 = v1[9];
    v7 = v1[10];
    v8 = v1[7];
    v9 = v1[8];
    v10 = v26;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    if (sub_252E33884())
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v35 = v1[11];
      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544D18);
      sub_252CC3D90(0xD000000000000022, 0x8000000252E85530, 0xD00000000000008FLL, 0x8000000252E6B430);
      v27 = (*(v35 + 40) + **(v35 + 40));
      v12 = swift_task_alloc();
      v1[15] = v12;
      *v12 = v1;
      v12[1] = sub_252BA2114;
      v5 = v1[11];
      v6 = v1[9];
      v7 = v1[10];
      v8 = v1[7];
      v9 = v1[8];
      v10 = v27;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      if (sub_252E338D4())
      {
        if (qword_27F53F4D0 != -1)
        {
          swift_once();
        }

        v36 = v1[11];
        v13 = sub_252E36AD4();
        __swift_project_value_buffer(v13, qword_27F544D18);
        sub_252CC3D90(0xD000000000000027, 0x8000000252E85500, 0xD00000000000008FLL, 0x8000000252E6B430);
        v28 = (*(v36 + 48) + **(v36 + 48));
        v14 = swift_task_alloc();
        v1[17] = v14;
        *v14 = v1;
        v14[1] = sub_252BA2228;
        v5 = v1[11];
        v6 = v1[9];
        v7 = v1[10];
        v8 = v1[7];
        v9 = v1[8];
        v10 = v28;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
        if (sub_252E338C4())
        {
          if (qword_27F53F4D0 != -1)
          {
            swift_once();
          }

          v37 = v1[11];
          v15 = sub_252E36AD4();
          __swift_project_value_buffer(v15, qword_27F544D18);
          sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E854D0, 0xD00000000000008FLL, 0x8000000252E6B430);
          v29 = (*(v37 + 56) + **(v37 + 56));
          v16 = swift_task_alloc();
          v1[19] = v16;
          *v16 = v1;
          v16[1] = sub_252BA233C;
          v5 = v1[11];
          v6 = v1[9];
          v7 = v1[10];
          v8 = v1[7];
          v9 = v1[8];
          v10 = v29;
        }

        else
        {
          __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
          if (sub_252E338B4())
          {
            if (qword_27F53F4D0 != -1)
            {
              swift_once();
            }

            v38 = v1[11];
            v17 = sub_252E36AD4();
            __swift_project_value_buffer(v17, qword_27F544D18);
            sub_252CC3D90(0xD000000000000025, 0x8000000252E854A0, 0xD00000000000008FLL, 0x8000000252E6B430);
            v30 = (*(v38 + 64) + **(v38 + 64));
            v18 = swift_task_alloc();
            v1[21] = v18;
            *v18 = v1;
            v18[1] = sub_252BA2450;
            v5 = v1[11];
            v6 = v1[9];
            v7 = v1[10];
            v8 = v1[7];
            v9 = v1[8];
            v10 = v30;
          }

          else
          {
            __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
            if (sub_252E33894())
            {
              if (qword_27F53F4D0 != -1)
              {
                swift_once();
              }

              v39 = v1[11];
              v19 = sub_252E36AD4();
              __swift_project_value_buffer(v19, qword_27F544D18);
              sub_252CC3D90(0xD000000000000023, 0x8000000252E85470, 0xD00000000000008FLL, 0x8000000252E6B430);
              v31 = (*(v39 + 72) + **(v39 + 72));
              v20 = swift_task_alloc();
              v1[23] = v20;
              *v20 = v1;
              v20[1] = sub_252BA25C8;
              v5 = v1[11];
              v6 = v1[9];
              v7 = v1[10];
              v8 = v1[7];
              v9 = v1[8];
              v10 = v31;
            }

            else
            {
              __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
              if (sub_252E338E4())
              {
                if (qword_27F53F4D0 != -1)
                {
                  swift_once();
                }

                v40 = v1[11];
                v21 = sub_252E36AD4();
                __swift_project_value_buffer(v21, qword_27F544D18);
                sub_252CC3D90(0xD000000000000026, 0x8000000252E85440, 0xD00000000000008FLL, 0x8000000252E6B430);
                v32 = (*(v40 + 80) + **(v40 + 80));
                v22 = swift_task_alloc();
                v1[25] = v22;
                *v22 = v1;
                v22[1] = sub_252BA26DC;
                v5 = v1[11];
                v6 = v1[9];
                v7 = v1[10];
                v8 = v1[7];
                v9 = v1[8];
                v10 = v32;
              }

              else
              {
                if (qword_27F53F4D0 != -1)
                {
                  swift_once();
                }

                v41 = v1[11];
                v23 = sub_252E36AD4();
                __swift_project_value_buffer(v23, qword_27F544D18);
                sub_252CC3D90(0xD000000000000026, 0x8000000252E85410, 0xD00000000000008FLL, 0x8000000252E6B430);
                v33 = (*(v41 + 24) + **(v41 + 24));
                v24 = swift_task_alloc();
                v1[27] = v24;
                *v24 = v1;
                v24[1] = sub_252BA27F0;
                v5 = v1[11];
                v6 = v1[9];
                v7 = v1[10];
                v8 = v1[7];
                v9 = v1[8];
                v10 = v33;
              }
            }
          }
        }
      }
    }
  }

  return v10(v8, v9, v6, v7, v5);
}

uint64_t sub_252BA2000()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_252BA2904;
  }

  else
  {
    v2 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BA2114()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_252BA2968;
  }

  else
  {
    v2 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BA2228()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_252BA29CC;
  }

  else
  {
    v2 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BA233C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_252BA2A30;
  }

  else
  {
    v2 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BA2450()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_252BA2A94;
  }

  else
  {
    v2 = sub_252BA2564;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BA2564()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BA25C8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_252BA2AF8;
  }

  else
  {
    v2 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BA26DC()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_252BA2B5C;
  }

  else
  {
    v2 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BA27F0()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_252BA2BC0;
  }

  else
  {
    v2 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BA2904()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BA2968()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BA29CC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BA2A30()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BA2A94()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BA2AF8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BA2B5C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BA2BC0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BA2C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25293B808;

  return sub_252BA0D20(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA2D0C()
{
  v3 = *(v0 + 8);
  v1 = **(v0 + 16);

  return v3(v1);
}

uint64_t sub_252BA2D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  sub_252E37024();
  v10 = sub_252E36324();
  v11 = *(*(v10 - 8) + 56);
  v12 = 1;
  v11(v9, 0, 1, v10);
  v28 = type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters(0);
  sub_252956C98(v9, a1 + *(v28 + 24));
  sub_252E37024();
  v11(v9, 0, 1, v10);
  sub_252956C98(v9, a1);
  v13 = sub_25294833C(1u, 0, 0);
  if (v13)
  {
    v14 = v13;
    v15 = [v13 dictionary];
    if (v15)
    {
      v16 = v15;
      v17 = objc_opt_self();
      v29[0] = 0;
      v18 = [v17 dataWithPropertyList:v16 format:200 options:0 error:v29];
      v19 = v29[0];
      if (v18)
      {
        v20 = sub_252E32D34();
        v27 = v21;

        v22 = v27;
        sub_252E32D24();
        sub_252E362F4();

        sub_25296464C(v20, v22);
        v12 = 0;
      }

      else
      {
        v23 = v19;
        v24 = sub_252E32C54();

        swift_willThrow();
        v12 = 1;
      }
    }

    else
    {
    }
  }

  v11(v7, v12, 1, v10);
  sub_252956C98(v7, a1 + *(v28 + 32));
  sub_252E37024();
  v11(v9, 0, 1, v10);
  return sub_252956C98(v9, a1);
}

uint64_t sub_252BA30C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a3)
  {
    sub_252E37024();
    v15 = sub_252E36324();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v15 = sub_252E36324();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  v16 = type metadata accessor for HomeAutomationSceneEnabledUserDefinedParameters(0);
  v17 = v37;
  sub_252956C98(v14, v37 + *(v16 + 24));
  sub_252E37024();

  sub_252E36324();
  v18 = *(*(v15 - 8) + 56);
  v19 = 1;
  v18(v12, 0, 1, v15);
  v35 = v16;
  sub_252956C98(v12, v17 + *(v16 + 28));
  sub_252E37024();
  v18(v9, 0, 1, v15);
  sub_252956C98(v9, v17);
  v20 = sub_25294833C(1u, 0, 0);
  if (v20)
  {
    v21 = v20;
    v22 = [v20 dictionary];
    if (v22)
    {
      v23 = v22;
      v24 = objc_opt_self();
      v38[0] = 0;
      v25 = [v24 dataWithPropertyList:v23 format:200 options:0 error:v38];
      v26 = v38[0];
      if (v25)
      {
        v27 = sub_252E32D34();
        v29 = v28;

        sub_252E32D24();
        v30 = v36;
        sub_252E362F4();

        sub_25296464C(v27, v29);
        v19 = 0;
      }

      else
      {
        v31 = v26;
        v32 = sub_252E32C54();

        swift_willThrow();
        v19 = 1;
        v30 = v36;
      }
    }

    else
    {

      v30 = v36;
    }
  }

  else
  {
    v30 = v36;
  }

  v18(v30, v19, 1, v15);
  v33 = v37;
  sub_252956C98(v30, v37 + *(v35 + 32));
  sub_252E37024();
  v18(v9, 0, 1, v15);
  return sub_252956C98(v9, v33);
}

uint64_t sub_252BA3510(uint64_t a1, uint64_t a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  sub_252E37024();
  v9 = sub_252E36324();
  v10 = *(*(v9 - 8) + 56);
  v11 = 1;
  v10(v8, 0, 1, v9);
  v27 = type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters(0);
  sub_252956C98(v8, a1 + *(v27 + 24));
  sub_252E37024();
  v10(v8, 0, 1, v9);
  sub_252956C98(v8, a1);
  v12 = sub_25294833C(1u, 0, 0);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 dictionary];
    if (v14)
    {
      v15 = v14;
      v16 = objc_opt_self();
      v28[0] = 0;
      v17 = [v16 dataWithPropertyList:v15 format:200 options:0 error:v28];
      v18 = v28[0];
      if (v17)
      {
        v19 = sub_252E32D34();
        v26 = v20;

        v21 = v26;
        sub_252E32D24();
        sub_252E362F4();

        sub_25296464C(v19, v21);
        v11 = 0;
      }

      else
      {
        v22 = v18;
        v23 = sub_252E32C54();

        swift_willThrow();
        v11 = 1;
      }
    }

    else
    {
    }
  }

  v10(v6, v11, 1, v9);
  sub_252956C98(v6, a1 + *(v27 + 32));
  sub_252E37024();
  v10(v8, 0, 1, v9);
  return sub_252956C98(v8, a1);
}

uint64_t sub_252BA385C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  sub_252E37024();
  v16 = sub_252E36324();
  v17 = *(*(v16 - 8) + 56);
  v18 = 1;
  v17(v15, 0, 1, v16);
  v19 = a4(0);
  sub_252956C98(v15, a1 + v19[6]);
  sub_252E37024();

  v17(v13, 0, 1, v16);
  sub_252956C98(v13, a1 + v19[7]);
  sub_252E37024();
  v17(v15, 0, 1, v16);
  sub_252956C98(v15, a1);
  v20 = sub_25294833C(1u, 0, 0);
  if (v20)
  {
    v21 = v20;
    v22 = [v20 dictionary];
    if (v22)
    {
      v23 = v22;
      v24 = objc_opt_self();
      v37[0] = 0;
      v25 = [v24 dataWithPropertyList:v23 format:200 options:0 error:v37];
      v26 = v37[0];
      if (v25)
      {
        v27 = sub_252E32D34();
        v35 = v28;

        v29 = v35;
        sub_252E32D24();
        sub_252E362F4();

        sub_25296464C(v27, v29);
        v18 = 0;
      }

      else
      {
        v30 = v26;
        v31 = sub_252E32C54();

        swift_willThrow();
        v18 = 1;
      }
    }

    else
    {
    }
  }

  v32 = v36;
  v17(v36, v18, 1, v16);
  sub_252956C98(v32, a1 + v19[8]);
  sub_252E37024();
  v17(v15, 0, 1, v16);
  return sub_252956C98(v15, a1);
}

uint64_t sub_252BA3C14(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2529213F8(a1, a2, a3);
}

uint64_t sub_252BA3C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_252921480(a1, a2, a3);
}

uint64_t sub_252BA3CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_252921504(a1, a2, a3);
}

uint64_t sub_252BA3D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_252921588(a1, a2, a3);
}

uint64_t sub_252BA3D88()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1 + 1);
  return sub_252E37F14();
}

uint64_t sub_252BA3E00(uint64_t a1)
{
  v2 = *v1;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v2 + 1);
  return sub_252E37F14();
}

uint64_t sub_252BA3E44@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252BA3ED8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_252BA3E84()
{
  result = qword_27F543918;
  if (!qword_27F543918)
  {
    result = swift_getWitnessTable(byte_252E4FDCC, &type metadata for HomeContainerType, v0, v1);
    atomic_store(result, &qword_27F543918);
  }

  return result;
}

uint64_t sub_252BA3ED8(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t sub_252BA3EFC(unsigned __int8 a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA3FF0(unsigned __int8 a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA4114(unsigned __int8 a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA4204(unsigned __int8 a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA42F4(unsigned __int8 a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA43C8(unsigned __int8 a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA44B0(unsigned __int8 a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA45DC(uint64_t a1, unsigned __int8 a2)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA46F0(uint64_t a1, unsigned __int8 a2)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA47DC(uint64_t a1, unsigned __int8 a2)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA48C0(uint64_t a1, unsigned __int8 a2)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA49B0(uint64_t a1, unsigned __int8 a2)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA4B28(uint64_t a1, unsigned __int8 a2)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA4BF8(uint64_t a1, unsigned __int8 a2)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA4D0C(uint64_t a1, unsigned __int8 a2)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA4DF8(uint64_t a1, unsigned __int8 a2)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA4F20(uint64_t a1, unsigned __int8 a2)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA5048(uint64_t a1, unsigned __int8 a2)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t AutomationSnippetModel.stringId.getter()
{
  sub_252E379F4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570]();

  sub_252E379F4();

  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  sub_252E330E4();
  v0 = *(v5 + 16);

  v1 = sub_252E37D94();
  MEMORY[0x2530AD570](v1);

  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E85590);

  sub_252E379F4();

  sub_252E330E4();
  MEMORY[0x2530AD570](v0);

  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E855B0);

  sub_252E379F4();

  sub_252E330E4();
  MEMORY[0x2530AD570](v0);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E855D0);

  sub_252E379F4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  sub_252E330E4();
  if (v0)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v0)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v2, v3);

  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E855F0);

  return 0x7265676769727423;
}

uint64_t AutomationSnippetModel.triggerValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v1;
}

void (*AutomationSnippetModel.triggerValue.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t AutomationSnippetModel.targetedEntitiesIcons.getter()
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  sub_252E330E4();
  return v1;
}

uint64_t type metadata accessor for AutomationSnippetModel(uint64_t a1)
{
  result = qword_27F543970;
  if (!qword_27F543970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_252BA5620@<X0>(void *a1@<X8>)
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  result = sub_252E330E4();
  *a1 = v3;
  return result;
}

uint64_t sub_252BA5688(uint64_t *a1)
{
  type metadata accessor for AutomationSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  return sub_252E330F4();
}

uint64_t AutomationSnippetModel.targetedEntitiesIcons.setter(uint64_t a1)
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  return sub_252E330F4();
}

void (*AutomationSnippetModel.targetedEntitiesIcons.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

void *AutomationSnippetModel.triggerIcon.getter()
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
  return sub_252E330E4();
}

void *sub_252BA5840()
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
  return sub_252E330E4();
}

uint64_t sub_252BA5898(uint64_t a1)
{
  v2 = type metadata accessor for IconConfiguration(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_252BA6E60(a1, &v9 - v6, type metadata accessor for IconConfiguration);
  sub_252BA6E60(v7, v5, type metadata accessor for IconConfiguration);
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
  sub_252E330F4();
  return sub_252BA6EC8(v7, type metadata accessor for IconConfiguration);
}

uint64_t AutomationSnippetModel.triggerIcon.setter(uint64_t a1)
{
  v2 = type metadata accessor for IconConfiguration(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_252BA6E60(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IconConfiguration);
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
  sub_252E330F4();
  return sub_252BA6EC8(a1, type metadata accessor for IconConfiguration);
}

void (*AutomationSnippetModel.triggerIcon.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t AutomationSnippetModel.automationSubtext.getter()
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v1;
}

void *sub_252BA5B6C@<X0>(void *a1@<X8>)
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252BA5BD4(void *a1)
{
  type metadata accessor for AutomationSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

uint64_t AutomationSnippetModel.automationSubtext.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

void (*AutomationSnippetModel.automationSubtext.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t AutomationSnippetModel.scheduledText.getter()
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v1;
}

void *sub_252BA5D8C@<X0>(void *a1@<X8>)
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252BA5DF4(void *a1)
{
  type metadata accessor for AutomationSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

uint64_t AutomationSnippetModel.scheduledText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

void (*AutomationSnippetModel.scheduledText.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t AutomationSnippetModel.isSceneAutomation.getter()
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  sub_252E330E4();
  return v1;
}

void *sub_252BA5FAC@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  result = sub_252E330E4();
  *a1 = v3;
  return result;
}

uint64_t sub_252BA6014(char *a1)
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  return sub_252E330F4();
}

uint64_t AutomationSnippetModel.isSceneAutomation.setter(char a1)
{
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  return sub_252E330F4();
}

void (*AutomationSnippetModel.isSceneAutomation.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  *(v3 + 32) = sub_252E330D4();
  return sub_25292DC78;
}

uint64_t sub_252BA617C(uint64_t a1)
{
  sub_252E37044();
}

unint64_t sub_252BA6298@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252BA7E10(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252BA62C8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065756C61;
  v4 = 0x5672656767697274;
  v5 = 0xD000000000000011;
  v6 = 0x8000000252E68060;
  v7 = 0xED00007478655464;
  v8 = 0x656C756465686373;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000252E68080;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x8000000252E68030;
  v10 = 0xD000000000000015;
  if (v2 != 1)
  {
    v10 = 0x4972656767697274;
    v9 = 0xEB000000006E6F63;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_252BA63AC()
{
  v1 = *v0;
  v2 = 0x5672656767697274;
  v3 = 0xD000000000000011;
  v4 = 0x656C756465686373;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 != 1)
  {
    v5 = 0x4972656767697274;
  }

  if (*v0)
  {
    v2 = v5;
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

unint64_t sub_252BA648C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252BA7E10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252BA64C0(uint64_t a1)
{
  v2 = sub_252BA6E0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BA64FC(uint64_t a1)
{
  v2 = sub_252BA6E0C();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall AutomationSnippetModel.responseViewId()()
{
  v0 = 0x8000000252E85610;
  v1 = 0xD000000000000019;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t AutomationSnippetModel.init(triggerValue:targetedEntitiesIcons:triggerIcon:automationSubtext:scheduledText:isSceneAutomation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v24 = a8;
  v21 = a6;
  v22 = a7;
  v23 = a9;
  v14 = type metadata accessor for IconConfiguration(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v21 - v18;
  v25 = a1;
  v26 = a2;
  sub_252E330C4();
  type metadata accessor for AutomationSnippetModel(0);
  v25 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543930, &qword_252E4FE10);
  sub_252E330C4();
  sub_252BA6E60(a4, v19, type metadata accessor for IconConfiguration);
  sub_252BA6E60(v19, v17, type metadata accessor for IconConfiguration);
  sub_252E330C4();
  sub_252BA6EC8(v19, type metadata accessor for IconConfiguration);
  v25 = a5;
  v26 = v21;
  sub_252E330C4();
  v25 = v22;
  v26 = v24;
  sub_252E330C4();
  LOBYTE(v25) = v23;
  sub_252E330C4();
  return sub_252BA6EC8(a4, type metadata accessor for IconConfiguration);
}

uint64_t AutomationSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = type metadata accessor for IconConfiguration(0);
  v3 = MEMORY[0x28223BE20](v26);
  v23 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543938, &qword_252E4FE18);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for AutomationSnippetModel(0);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BA6E0C();
  v11 = v27;
  sub_252E37F74();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v6;
  v21 = v8;
  v27 = a1;
  v12 = v24;
  LOBYTE(v28) = 0;
  v13 = v25;
  v28 = sub_252E37C04();
  v29 = v14;
  sub_252E330C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543930, &qword_252E4FE10);
  LOBYTE(v30) = 1;
  sub_252BA73BC(&qword_27F543948, &qword_27F542A38, protocol conformance descriptor for IconConfiguration, MEMORY[0x277D83978]);
  sub_252E37C64();
  v30 = v28;
  sub_252E330C4();
  LOBYTE(v28) = 2;
  sub_252BA7E5C(&qword_27F542A38, type metadata accessor for IconConfiguration, protocol conformance descriptor for IconConfiguration);
  v15 = v20;
  sub_252E37C64();
  v19[1] = *(v21 + 24);
  sub_252BA6E60(v15, v23, type metadata accessor for IconConfiguration);
  sub_252E330C4();
  sub_252BA6EC8(v15, type metadata accessor for IconConfiguration);
  LOBYTE(v28) = 3;
  v28 = sub_252E37C04();
  v29 = v16;
  sub_252E330C4();
  LOBYTE(v28) = 4;
  v28 = sub_252E37C04();
  v29 = v17;
  sub_252E330C4();
  LOBYTE(v28) = 5;
  LOBYTE(v28) = sub_252E37C14() & 1;
  sub_252E330C4();
  (*(v12 + 8))(0, v13);
  sub_252BA6E60(v10, v22, type metadata accessor for AutomationSnippetModel);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_252BA6EC8(v10, type metadata accessor for AutomationSnippetModel);
}

unint64_t sub_252BA6E0C()
{
  result = qword_27F543940;
  if (!qword_27F543940)
  {
    result = swift_getWitnessTable(a5_1, &type metadata for AutomationSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543940);
  }

  return result;
}

uint64_t sub_252BA6E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252BA6EC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AutomationSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IconConfiguration(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543950, &qword_252E4FE20);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BA6E0C();
  sub_252E37F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v13 = v2;
  sub_252E330E4();
  LOBYTE(v15) = 0;
  v11 = v14;
  sub_252E37CF4();
  if (v11)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v14 = v4;

    type metadata accessor for AutomationSnippetModel(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
    sub_252E330E4();
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543930, &qword_252E4FE10);
    sub_252BA73BC(&qword_27F543958, &qword_27F542A50, protocol conformance descriptor for IconConfiguration, MEMORY[0x277D83948]);
    sub_252E37D54();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
    sub_252E330E4();
    LOBYTE(v15) = 2;
    sub_252BA7E5C(&qword_27F542A50, type metadata accessor for IconConfiguration, protocol conformance descriptor for IconConfiguration);
    sub_252E37D54();
    sub_252BA6EC8(v6, type metadata accessor for IconConfiguration);
    sub_252E330E4();
    LOBYTE(v15) = 3;
    sub_252E37CF4();

    sub_252E330E4();
    LOBYTE(v15) = 4;
    sub_252E37CF4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
    sub_252E330E4();
    LOBYTE(v15) = 5;
    sub_252E37D04();
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_252BA73BC(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543930, &qword_252E4FE10);
    v10 = sub_252BA7E5C(a2, type metadata accessor for IconConfiguration, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t AutomationSnippetModel.description.getter()
{
  v0 = type metadata accessor for IconConfiguration(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0xD000000000000017;
  v15 = 0x8000000252E85630;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v13, "triggerValue: ");
  HIBYTE(v13[1]) = -18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570](v11, v12);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v13[0], v13[1]);

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_252E379F4();

  v13[0] = 0xD000000000000015;
  v13[1] = 0x8000000252E85650;
  type metadata accessor for AutomationSnippetModel(0);
  sub_252E330E4();
  MEMORY[0x2530AD570](v11, v12);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v13[0], v13[1]);

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_252E379F4();

  v13[0] = 0xD000000000000019;
  v13[1] = 0x8000000252E85670;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  sub_252E330E4();
  v3 = *(v11 + 16);

  v11 = v3;
  v4 = sub_252E37D94();
  MEMORY[0x2530AD570](v4);

  MEMORY[0x2530AD570](v13[0], v13[1]);

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_252E379F4();

  v13[0] = 0x656767697274202CLL;
  v13[1] = 0xEF203A6E6F634972;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
  sub_252E330E4();
  v5 = IconConfiguration.description.getter();
  v7 = v6;
  sub_252BA6EC8(v2, type metadata accessor for IconConfiguration);
  MEMORY[0x2530AD570](v5, v7);

  MEMORY[0x2530AD570](v13[0], v13[1]);

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_252E379F4();

  v13[0] = 0xD000000000000011;
  v13[1] = 0x8000000252E85690;
  sub_252E330E4();
  MEMORY[0x2530AD570](v11, v12);

  MEMORY[0x2530AD570](v13[0], v13[1]);

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_252E379F4();

  v13[0] = 0xD000000000000015;
  v13[1] = 0x8000000252E856B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  sub_252E330E4();
  if (v11)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v11)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v8, v9);

  MEMORY[0x2530AD570](v13[0], v13[1]);

  MEMORY[0x2530AD570](41, 0xE100000000000000);
  return v14;
}

uint64_t _s22HomeAutomationInternal0B12SnippetModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_252E33104() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AutomationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543930, &qword_252E4FE10);
  sub_252BA73BC(&qword_27F5439A8, &qword_27F5439B0, protocol conformance descriptor for IconConfiguration, MEMORY[0x277D83968]);
  if ((sub_252E33104() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for IconConfiguration(0);
  sub_252BA7E5C(&qword_27F5439B0, type metadata accessor for IconConfiguration, protocol conformance descriptor for IconConfiguration);
  if ((sub_252E33104() & 1) == 0 || (sub_252E33104() & 1) == 0 || (sub_252E33104() & 1) == 0)
  {
    return 0;
  }

  return sub_252E33104();
}

void sub_252BA7B5C(uint64_t a1)
{
  sub_252930130(319, &qword_27F540118, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_252BA7C3C(319);
    if (v2 <= 0x3F)
    {
      sub_252BA7CA0(319);
      if (v3 <= 0x3F)
      {
        sub_252930130(319, &qword_27F540128, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252BA7C3C(uint64_t a1)
{
  if (!qword_27F543980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543930, &qword_252E4FE10);
    v1 = sub_252E33114();
    if (!v2)
    {
      atomic_store(v1, &qword_27F543980);
    }
  }
}

void sub_252BA7CA0(uint64_t a1)
{
  if (!qword_27F543988)
  {
    type metadata accessor for IconConfiguration(255);
    v1 = sub_252E33114();
    if (!v2)
    {
      atomic_store(v1, &qword_27F543988);
    }
  }
}

unint64_t sub_252BA7D0C()
{
  result = qword_27F543990;
  if (!qword_27F543990)
  {
    result = swift_getWitnessTable(byte_252E4FFCC, &type metadata for AutomationSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543990);
  }

  return result;
}

unint64_t sub_252BA7D64()
{
  result = qword_27F543998;
  if (!qword_27F543998)
  {
    result = swift_getWitnessTable(byte_252E4FF04, &type metadata for AutomationSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543998);
  }

  return result;
}

unint64_t sub_252BA7DBC()
{
  result = qword_27F5439A0;
  if (!qword_27F5439A0)
  {
    result = swift_getWitnessTable(byte_252E4FF2C, &type metadata for AutomationSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5439A0);
  }

  return result;
}

unint64_t sub_252BA7E10(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252BA7E5C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_252BA7EB8(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252BA80CC(a1);
}

uint64_t sub_252BA7F60(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 192);
  v3 = *(v2 + 16);
  while (1)
  {
    if (v3 == v1)
    {
      return 0;
    }

    if (v1 >= *(v2 + 16))
    {
      break;
    }

    if (StateSemantic.rawValue.getter() == 0x6D7575636176 && v5 == 0xE600000000000000)
    {

LABEL_8:
      v6 = 0;
      do
      {
        v8 = v3 != v6;
        if (v3 == v6)
        {
          break;
        }

        if (v6 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        if (StateSemantic.rawValue.getter() == 7368557 && v9 == 0xE300000000000000)
        {

          return 1;
        }

        ++v6;
        v7 = sub_252E37DB4();
      }

      while ((v7 & 1) == 0);
      return v8;
    }

    ++v1;
    v4 = sub_252E37DB4();

    if (v4)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_252BA80CC(void *__src)
{
  *(v1 + 1024) = __src;
  memcpy((v1 + 16), __src, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252BA8140, 0, 0);
}

uint64_t sub_252BA8140()
{
  v32 = v1;
  v2 = *(v1 + 208);
  memcpy(v30, *(v1 + 1024), sizeof(v30));
  v3 = *(v2 + 2);
  sub_2529353AC(v1 + 16, v1 + 520);
  if (!v3)
  {
LABEL_11:
    v5 = *(v2 + 2);
    v4 = v5;
    goto LABEL_15;
  }

  v4 = 0;
  v5 = 0x6D7575636176;
  while (1)
  {
    v6 = *(v2 + 2);
    if (v4 >= v6)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v7 = v2[v4 + 32];
    v31[0] = v7;
    v8 = StateSemantic.rawValue.getter();
    v0 = v9;
    if (v8 == 0x6D7575636176 && v9 == 0xE600000000000000)
    {
      break;
    }

    v10 = sub_252E37DB4();

    if (v10)
    {
      goto LABEL_13;
    }

    v31[0] = v7;
    v11 = StateSemantic.rawValue.getter();
    v0 = v12;
    if (v11 == 7368557 && v12 == 0xE300000000000000)
    {
      break;
    }

    v13 = sub_252E37DB4();

    if (v13)
    {
      goto LABEL_13;
    }

    if (v3 == ++v4)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v6 = *(v2 + 2);
  if (v6 - 1 == v4)
  {
    v5 = v4 + 1;
    goto LABEL_15;
  }

  v19 = v4 + 33;
  do
  {
    v22 = v19 - 32;
    if (v19 - 32 >= v6)
    {
      goto LABEL_46;
    }

    v23 = v2[v19];
    v31[0] = v23;
    v0 = v31;
    if (StateSemantic.rawValue.getter() == 0x6D7575636176 && v24 == 0xE600000000000000)
    {
LABEL_27:

      goto LABEL_28;
    }

    v0 = v24;
    v25 = sub_252E37DB4();

    if ((v25 & 1) == 0)
    {
      v31[0] = v23;
      v0 = v31;
      if (StateSemantic.rawValue.getter() == 7368557 && v26 == 0xE300000000000000)
      {
        goto LABEL_27;
      }

      v0 = v26;
      v27 = sub_252E37DB4();

      if ((v27 & 1) == 0)
      {
        if (v22 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          v28 = *(v2 + 2);
          if (v4 >= v28)
          {
            goto LABEL_51;
          }

          if (v22 >= v28)
          {
            goto LABEL_52;
          }

          v0 = v2[v4 + 32];
          v29 = v2[v19];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_252D57AE8(v2);
            v2 = result;
          }

          v2[v4 + 32] = v29;
          v2[v19] = v0;
        }

        ++v4;
      }
    }

LABEL_28:
    v6 = *(v2 + 2);
    v20 = v19 + 1;
    v21 = v19 - 31;
    ++v19;
  }

  while (v21 != v6);
  v5 = v20 - 32;
  if ((v20 - 32) < v4)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_53:
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

LABEL_15:
  v0 = &v30[24];
  v6 = v4 - v5;
  if (!__OFADD__(v5, v4 - v5))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30[24] = v2;
    if (!isUniquelyReferenced_nonNull_native || v4 > *(v2 + 3) >> 1)
    {
      if (v5 <= v4)
      {
        v15 = v4;
      }

      else
      {
        v15 = v5;
      }

      v2 = sub_2529F82C4(isUniquelyReferenced_nonNull_native, v15, 1, v2);
      v30[24] = v2;
    }

    sub_252B7DA90();
    v4 = *(v2 + 2);
    v6 = *(v2 + 3);
    v0 = v4 + 1;
    if (v4 < v6 >> 1)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  v2 = sub_2529F82C4((v6 > 1), v0, 1, v2);
LABEL_23:
  *(v2 + 2) = v0;
  v2[v4 + 32] = 59;
  v30[24] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_252E3C290;
  memcpy((v16 + 32), v30, 0x1F8uLL);
  v17 = *(v1 + 8);

  return v17(v16);
}

uint64_t sub_252BA8518()
{
  v0 = sub_252E34164();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_252E340E4();
  sub_252AB3FEC(v3, 0, v15);
  (*(v1 + 8))(v3, v0);
  memcpy(v16, v15, sizeof(v16));
  memcpy(v17, v15, sizeof(v17));
  if (sub_252956B94(v17) != 1)
  {
    v7 = BYTE1(v17[1]);
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544DA8);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_252E379F4();

    v15[0] = 0xD000000000000026;
    v15[1] = 0x8000000252E6C420;
    v14[7] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540790, &qword_252E48170);
    v9 = sub_252E36F94();
    MEMORY[0x2530AD570](v9);

    sub_252CC3D90(v15[0], v15[1], 0xD000000000000090, 0x8000000252E85730);

    if (v7 == 3)
    {
      goto LABEL_10;
    }

    if (!v7)
    {
      v11 = swift_bridgeObjectRelease_n();
      v12 = *(sub_252B680FC(v11) + 77);

      if (v12)
      {
        *(sub_252B680FC(v13) + 76) = 1;
      }

      goto LABEL_20;
    }

    v10 = sub_252E37DB4();

    if ((v10 & 1) == 0)
    {
LABEL_10:
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v8, qword_27F544D60);
      sub_252CC3D90(0xD000000000000017, 0x8000000252E6C450, 0xD00000000000006BLL, 0x8000000252E6C470);
      if (qword_27F53F388 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      qword_27F543738 = 0;

      sub_252E37614();
      if (v7 == 3)
      {
        sub_252E33A04();
        return sub_25293847C(v16, &qword_27F5404C8, &unk_252E3FD60);
      }
    }

    if (v7 == 2)
    {
      sub_252E339E4();
      return sub_25293847C(v16, &qword_27F5404C8, &unk_252E3FD60);
    }

LABEL_20:
    sub_252E339F4();
    return sub_25293847C(v16, &qword_27F5404C8, &unk_252E3FD60);
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544DA8);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_252E379F4();

  v15[0] = 0xD000000000000026;
  v15[1] = 0x8000000252E6C3F0;
  v5 = sub_252E340C4();
  MEMORY[0x2530AD570](v5);

  sub_252CC3D90(v15[0], v15[1], 0xD000000000000090, 0x8000000252E85730);

  return sub_252E33A04();
}

uint64_t sub_252BA8990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[130] = a3;
  v3[129] = a2;
  v3[128] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540780, &unk_252E50210);
  v3[131] = swift_task_alloc();
  v3[132] = swift_task_alloc();
  v4 = sub_252E34164();
  v3[133] = v4;
  v3[134] = *(v4 - 8);
  v3[135] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BA8A9C, 0, 0);
}

uint64_t sub_252BA8A9C(uint64_t a1)
{
  v19 = v1;
  v2 = *(v1 + 1080);
  v3 = *(v1 + 1072);
  v4 = *(v1 + 1064);
  *(sub_252B680FC(a1) + 72) = 1;

  sub_252E340E4();
  sub_252AB3FEC(v2, 0, v18);
  (*(v3 + 8))(v2, v4);
  memcpy((v1 + 520), v18, 0x1F8uLL);
  memcpy((v1 + 16), v18, 0x1F8uLL);
  if (sub_252956B94((v1 + 16)) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v5 = *(v1 + 1080);
    v6 = *(v1 + 1048);
    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544DA8);
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000044, 0x8000000252E6C210);
    sub_252E340E4();
    v8 = sub_252AD2138(v5);
    MEMORY[0x2530AD570](v8);

    sub_252CC4050(v18[0], v18[1], 0xD000000000000090, 0x8000000252E85730, 0xD000000000000033, 0x8000000252E857D0, 49);

    v9 = sub_252E33DE4();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E20, &qword_252E42850);
    sub_252E33F24();
    type metadata accessor for ControlHomeIntent();
    sub_252E33D84();
  }

  else
  {
    if (*(v1 + 25) - 2 >= 2)
    {
      v13 = *(v1 + 1056);
      if (*(v1 + 25))
      {
        v14 = MEMORY[0x277D5BED0];
      }

      else
      {
        v14 = MEMORY[0x277D5BED8];
      }

      v15 = *v14;
      v10 = sub_252E33DE4();
      v11 = *(v10 - 8);
      (*(v11 + 104))(v13, v15, v10);
      v12 = 0;
    }

    else
    {
      v10 = sub_252E33DE4();
      v11 = *(v10 - 8);
      v12 = 1;
    }

    (*(v11 + 56))(*(v1 + 1056), v12, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E20, &qword_252E42850);
    sub_252E33F24();
    type metadata accessor for ControlHomeIntent();
    sub_252E33D84();
    sub_25293847C(v1 + 520, &qword_27F5404C8, &unk_252E3FD60);
  }

  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_252BA8EA4(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_252E36AD4();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BA8F68, 0, 0);
}

uint64_t sub_252BA8F68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E20, &qword_252E42850);
  v1 = sub_252E33F24();
  v0[18] = v1;
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = __swift_project_value_buffer(v4, qword_27F544C58);
  sub_252CC3D90(0xD000000000000029, 0x8000000252E6A550, 0xD000000000000092, 0x8000000252E85850);
  v0[10] = [v1 userTask];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
  v6 = sub_252E36F94();
  MEMORY[0x2530AD570](v6);

  sub_252CC3D90(0x6B73615472657355, 0xEB000000000A203ALL, 0xD000000000000092, 0x8000000252E85850);

  (*(v3 + 16))(v2, v5, v4);
  v7 = [v1 filters];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for HomeFilter();
    v9 = sub_252E37264();
  }

  else
  {
    v9 = 0;
  }

  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[15];
  v0[11] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
  v13 = sub_252E36F94();
  MEMORY[0x2530AD570](v13);

  sub_252CC3D90(0x3A737265746C6946, 0xEA00000000000A20, 0xD000000000000092, 0x8000000252E85850);

  v14 = (*(v11 + 8))(v10, v12);
  v15 = sub_252B680FC(v14);
  swift_beginAccess();
  v16 = v1;
  MEMORY[0x2530AD700]();
  if (*((*(v15 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();

  v18 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v17);
  sub_252929E74((v18 + 288), (v0 + 2));

  v19 = v0[5];
  v20 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v19);
  v21 = (*(v20 + 120))(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v21)
  {
    v22 = [v16 userTask];
    if (v22 && (v23 = v22, v24 = [v22 attribute], v23, v24 == 6))
    {
      v25 = *(v0[14] + 104);
      v26 = v16;
      v27 = swift_task_alloc();
      v0[19] = v27;
      *v27 = v0;
      v27[1] = sub_252BA94FC;
      v28 = v0[12];
      v29 = v16 | 0xC000000000000000;
    }

    else
    {
      v25 = *(v0[14] + 104);
      v33 = v16;
      v34 = swift_task_alloc();
      v0[21] = v34;
      *v34 = v0;
      v34[1] = sub_252BA9684;
      v28 = v0[12];
      v29 = v16;
    }

    return sub_252C80F04(v28, v29, v25);
  }

  else if (sub_252C4BEB8())
  {
    v30 = swift_task_alloc();
    v0[23] = v30;
    *v30 = v0;
    v30[1] = sub_252BA97A0;
    v31 = v0[12];

    return sub_252BA9B88(v31, v16);
  }

  else
  {
    v35 = swift_task_alloc();
    v0[25] = v35;
    *v35 = v0;
    v35[1] = sub_252BA98B4;
    v36 = v0[12];

    return sub_252BAA1A4(v36, v16);
  }
}

uint64_t sub_252BA94FC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_252BA99C8;
  }

  else
  {

    v3 = sub_252BA9618;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BA9618()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BA9684()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_252BA9A3C;
  }

  else
  {

    v3 = sub_252BAC14C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BA97A0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_252BA9AB0;
  }

  else
  {
    v2 = sub_252BAC14C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BA98B4()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_252BA9B1C;
  }

  else
  {
    v2 = sub_252BAC14C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252BA99C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BA9A3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BA9AB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BA9B1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BA9B88(uint64_t a1, uint64_t a2)
{
  v3[267] = v2;
  v3[266] = a2;
  v3[265] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3[268] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BA9C2C, 0, 0);
}

uint64_t sub_252BA9C2C(uint64_t a1)
{
  v30 = v1;
  v2 = sub_252B680FC(a1);
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 504 * v4 - 472);
    memcpy((v1 + 1024), v5, 0x1F8uLL);
    memmove((v1 + 520), v5, 0x1F8uLL);
    GEOLocationCoordinate2DMake();
    sub_2529353AC(v1 + 1024, v1 + 1528);

    memcpy((v1 + 16), (v1 + 520), 0x1F8uLL);
  }

  else
  {

    sub_25293DEE0(v1 + 16);
  }

  v6 = *(v1 + 2128);
  memcpy(__dst, (v1 + 16), 0x1F8uLL);
  v7 = v6;
  v28 = sub_252953488(v6, __dst, 0);

  type metadata accessor for HomeAutomationEntityResponses();
  v8 = MEMORY[0x277D84F90];
  sub_25299DDFC(MEMORY[0x277D84F90]);
  if (sub_252C4D664(5))
  {
    type metadata accessor for HomeAutomationEntityResponses.Builder();
    *(swift_allocObject() + 16) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_252E3C130;
    type metadata accessor for HomeAutomationEntityResponse.Builder(0);
    v9 = swift_allocObject();
    v10 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
    v11 = sub_252E36324();
    v12 = *(*(v11 - 8) + 56);
    v13 = 1;
    v12(v9 + v10, 1, 1, v11);
    v12(v9 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v11);
    *(v9 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
    *(v9 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = v8;
    *(v9 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
    v12(v9 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v11);
    *(v9 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v8;
    *(v9 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v8;
    sub_252C4E214();
    if (v14)
    {
      sub_252E37024();

      v13 = 0;
    }

    v15 = *(v1 + 2144);
    v12(v15, v13, 1, v11);
    swift_beginAccess();
    sub_252956BAC(v15, v9 + v10);
    swift_endAccess();
    sub_25293847C(v15, &qword_27F540298, &unk_252E3C270);
    type metadata accessor for HomeAutomationEntityResponse(0);
    swift_allocObject();
    v16 = sub_2529605C0(v9);
    swift_setDeallocating();
    sub_25295E9E4();
    swift_deallocClassInstance();
    *(v27 + 32) = v16;

    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v17 + 24) = v27;
  }

  else
  {
    v18 = sub_252BABE9C(*(v1 + 2128));
    v17 = sub_25299DDFC(v18);
  }

  v19 = *(v1 + 2136);
  sub_252929E74(v19 + 24, v1 + 2032);
  v20 = *(v1 + 2056);
  v21 = *(v1 + 2064);
  __swift_project_boxed_opaque_existential_1((v1 + 2032), v20);
  v22 = *(v19 + 104);
  v23 = swift_allocObject();
  v23[2] = v19;
  v23[3] = v28;
  v23[4] = v17;
  v24 = *(v21 + 80);

  v24(v22, sub_252BAC140, v23, v20, v21);

  __swift_destroy_boxed_opaque_existential_1((v1 + 2032));

  v25 = *(v1 + 8);

  return v25();
}

uint64_t sub_252BAA140(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_252BFE424(a2, a3);
}

uint64_t sub_252BAA1A4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_252BAA1C8, 0, 0);
}

uint64_t sub_252BAA1C8()
{
  v1 = [*(v0 + 64) filters];
  if (!v1)
  {
    goto LABEL_11;
  }

  type metadata accessor for HomeFilter();
  v2 = sub_252E37264();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  result = sub_252E378C4();
  if (!result)
  {
LABEL_10:

    v1 = 0;
LABEL_11:
    v5 = sub_252A6D5D4(v1);
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2530ADF00](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v1 = v4;

  if ([v1 entityType] != 5)
  {
    goto LABEL_11;
  }

  v5 = 5;
LABEL_12:
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  sub_252929E74(v6 + 24, v0 + 16);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
  v10 = *(v6 + 104);
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v1;
  v11[4] = v5;
  v12 = *(v9 + 80);
  v13 = v1;
  v14 = v7;
  v12(v10, sub_252BAC134, v11, v8, v9);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_252BAA3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[11] = a1;
  v5 = sub_252E34014();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BAA4D4, 0, 0);
}

uint64_t sub_252BAA4D4()
{
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544C58);
  sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E858F0, 0xD000000000000092, 0x8000000252E85850);
  type metadata accessor for HomeAutomationEntityResponses();
  v2 = MEMORY[0x277D84F90];
  sub_25299DDFC(MEMORY[0x277D84F90]);
  v3 = sub_252C4D664(5);
  v4 = *(v0 + 96);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_252E3C130;
    type metadata accessor for HomeAutomationEntityResponse.Builder(0);
    v5 = swift_allocObject();
    v6 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
    v7 = sub_252E36324();
    v8 = *(*(v7 - 8) + 56);
    v9 = 1;
    v8(v5 + v6, 1, 1, v7);
    v8(v5 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v7);
    *(v5 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
    *(v5 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = v2;
    *(v5 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
    v8(v5 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v7);
    *(v5 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v2;
    *(v5 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v2;
    v10 = [v4 filters];
    if (!v10)
    {
LABEL_15:
      v19 = *(v0 + 136);
      v8(v19, v9, 1, v7);
      swift_beginAccess();
      sub_252956BAC(v19, v5 + v6);
      swift_endAccess();
      sub_25293847C(v19, &qword_27F540298, &unk_252E3C270);
      type metadata accessor for HomeAutomationEntityResponse(0);
      swift_allocObject();
      v20 = sub_2529605C0(v5);
      swift_setDeallocating();
      sub_25295E9E4();
      swift_deallocClassInstance();
      *(v28 + 32) = v20;
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      *(v18 + 24) = v28;
      goto LABEL_16;
    }

    v11 = v10;
    type metadata accessor for HomeFilter();
    v12 = sub_252E37264();

    if (v12 >> 62)
    {
      result = sub_252E378C4();
      if (result)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_7:
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x2530ADF00](0, v12);
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v14 = *(v12 + 32);
        }

        v15 = v14;

        v16 = [v15 homeEntityName];

        if (!v16)
        {
          v9 = 1;
          goto LABEL_15;
        }

        sub_252E36F34();

        sub_252E37024();
        v9 = 0;
      }
    }

    goto LABEL_15;
  }

  v17 = sub_252BABE9C(*(v0 + 96));
  v18 = sub_25299DDFC(v17);
LABEL_16:

  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  *(v0 + 80) = v18;
  sub_252929E74(v21 + 24, v0 + 16);
  v23 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v23);
  v24 = swift_task_alloc();
  *(v0 + 144) = v24;
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = v0 + 80;
  sub_252AD7CC4();
  v25 = swift_task_alloc();
  *(v0 + 152) = v25;
  *v25 = v0;
  v25[1] = sub_252BAAA24;
  v26 = *(v0 + 128);
  v27 = *(v0 + 88);

  return sub_252BDB88C(v27, &unk_252E50240, v24, v26, 0, 0, 0, v23);
}

uint64_t sub_252BAAA24()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  *(*v1 + 160) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252BAAC24;
  }

  else
  {

    v5 = sub_252BAABA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252BAABA4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BAAC24()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BAACAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252BAACD0, 0, 0);
}

uint64_t sub_252BAACD0()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_252BAADA0;
  v5 = v0[3];
  v6 = v0[4];

  return sub_252C14F98(0, v2, v5, v6);
}

uint64_t sub_252BAADA0(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_252BAAEC0(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_252B680FC(a1);
  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 504 * v8 - 472);
    memcpy(v14, v9, sizeof(v14));
    memmove(__dst, v9, 0x1F8uLL);
    GEOLocationCoordinate2DMake();
    sub_2529353AC(v14, __src);

    memcpy(__src, __dst, sizeof(__src));
  }

  else
  {

    sub_25293DEE0(__src);
  }

  memcpy(__dst, __src, sizeof(__dst));
  v10 = a2;
  v11 = sub_252953488(a2, __dst, 0);

  *(a1 + 8) = v11;
  v12 = *a3;

  *(a1 + 16) = v12;
  return result;
}

uint64_t sub_252BAAFEC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_252E33DB4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BAB0B0, 0, 0);
}

uint64_t sub_252BAB0B0()
{
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544C58);
  sub_252CC3D90(0xD00000000000003DLL, 0x8000000252E85810, 0xD000000000000092, 0x8000000252E85850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E20, &qword_252E42850);
  v0[8] = sub_252E33F14();
  v2 = sub_252E33F24();
  v0[9] = v2;
  sub_252E33DC4();
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_252BAB220;
  v5 = v0[2];

  return sub_252BAA3D8(v5, v3, v2);
}

uint64_t sub_252BAB220()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252BAB410, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7();
  }
}

uint64_t sub_252BAB410()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BAB474()
{
  v1 = v0;
  v2 = type metadata accessor for ConfirmationParameters(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E20, &qword_252E42850);
  v6 = sub_252E33F24();
  sub_252BABDD0(v1 + OBJC_IVAR____TtC22HomeAutomationInternal32ControlHomeConfirmIntentStrategy_store, v5 + *(v3 + 28));
  *v5 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5439D8, &unk_252E50228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C280;
  *(inited + 48) = &type metadata for RemoteHomeCondition;
  *(inited + 56) = &off_2864BEDD0;
  *(inited + 32) = &type metadata for WatchAuthUnsafeOperationCondition;
  *(inited + 40) = &off_2864BEDE0;
  *(inited + 64) = &type metadata for TargetTemperatureCondition;
  *(inited + 72) = &off_2864BEDC0;
  if (off_2864BEDE8(v5) & 1) != 0 || ((*(*(inited + 56) + 8))(v5))
  {
    v8 = 1;
  }

  else
  {
    v8 = (*(*(inited + 72) + 8))(v5);
  }

  sub_252BABE40(v5);
  return v8 & 1;
}

uint64_t sub_252BAB614()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal32ControlHomeConfirmIntentStrategy_store, &qword_27F5439D0, &qword_252E50220);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ControlHomeConfirmIntentStrategy(uint64_t a1)
{
  result = qword_27F5439B8;
  if (!qword_27F5439B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252BAB6FC(uint64_t a1)
{
  sub_252BAB7B0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_252BAB7B0(uint64_t a1)
{
  if (!qword_27F5439C8)
  {
    sub_252E35E44();
    v1 = sub_252E37734();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5439C8);
    }
  }
}

uint64_t sub_252BAB80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252BA8990(a1, a2, a3);
}

uint64_t sub_252BAB8D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252BA8EA4(a1, a2);
}

uint64_t sub_252BAB97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomeConfirmIntentStrategy(0);
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9D08](a1, a2, v9, a4);
}

uint64_t sub_252BABA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomeConfirmIntentStrategy(0);
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9D10](a1, a2, v9, a4);
}

uint64_t sub_252BABB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomeConfirmIntentStrategy(0);
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9D18](a1, a2, v9, a4);
}

uint64_t sub_252BABBD4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252BAAFEC(a1, a2);
}

uint64_t sub_252BABC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for ControlHomeConfirmIntentStrategy(0);
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9D00](a1, a2, a3, v11, a5);
}

unint64_t sub_252BABD50(uint64_t a1)
{
  result = sub_252BABD78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_252BABD78()
{
  result = qword_27F543890;
  if (!qword_27F543890)
  {
    v3 = type metadata accessor for ControlHomeConfirmIntentStrategy(255);
    result = swift_getWitnessTable(byte_252E50168, v3, v0, v1);
    atomic_store(result, &qword_27F543890);
  }

  return result;
}

uint64_t sub_252BABDD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5439D0, &qword_252E50220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252BABE40(uint64_t a1)
{
  v2 = type metadata accessor for ConfirmationParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_252BABE9C(void *a1)
{
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = [a1 filters];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = [a1 userTask];
  v8 = HomeStore.services(matching:supporting:)(v6, v7);
  v10 = v9;

  if (v10)
  {
    if (qword_27F53F490 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544C58);
    sub_252E379F4();

    swift_getErrorValue();
    v12 = sub_252E37E54();
    MEMORY[0x2530AD570](v12);

    sub_252CC4050(0xD00000000000002BLL, 0x8000000252E76720, 0xD000000000000092, 0x8000000252E85850, 0x7365636976726573, 0xEE00293A726F6628, 156);

    sub_252929F10(v8, 1);
    return MEMORY[0x277D84F90];
  }

  return v8;
}

uint64_t sub_252BAC08C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252BAACAC(v2, v3, v4);
}

uint64_t MockPlaybackController.deinit()
{
  sub_2529319F4(v0 + OBJC_IVAR____TtC22HomeAutomationInternal22MockPlaybackController_PlaybackResultToReturn);

  return v0;
}

uint64_t MockPlaybackController.__deallocating_deinit()
{
  sub_2529319F4(v0 + OBJC_IVAR____TtC22HomeAutomationInternal22MockPlaybackController_PlaybackResultToReturn);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockPlaybackController(uint64_t a1)
{
  result = qword_27F5439E0;
  if (!qword_27F5439E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252BAC280(uint64_t a1)
{
  sub_252BAC334(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_252BAC334(uint64_t a1)
{
  if (!qword_27F5439F0)
  {
    sub_252E36934();
    sub_252931A5C();
    v1 = sub_252E37F64();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5439F0);
    }
  }
}

char *sub_252BAC3F4(void *a1, SEL *a2)
{
  v4 = [*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
  sub_252BAC798();
  v5 = sub_252E37264();

  v37 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v7 = 0;
    a1 = *a1;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 characteristicType];
      v12 = sub_252E36F34();
      v14 = v13;

      if (v12 == sub_252E36F34() && v14 == v15)
      {
      }

      else
      {
        v17 = sub_252E37DB4();

        if ((v17 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_6:
      ++v7;
      if (v10 == i)
      {
        v18 = v37;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_23:

  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
LABEL_48:
    v19 = sub_252E378C4();
    if (v19)
    {
      goto LABEL_26;
    }

LABEL_49:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_49;
  }

LABEL_26:
  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  do
  {
    v36 = v21;
    v22 = v20;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x2530ADF00](v22, v18);
      }

      else
      {
        if (v22 >= *(v18 + 16))
        {
          goto LABEL_47;
        }

        v23 = *(v18 + 8 * v22 + 32);
      }

      v24 = v23;
      v20 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v25 = [v23 metadata];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 *a2];

        if (v27)
        {
          break;
        }
      }

LABEL_29:
      ++v22;
      if (v20 == v19)
      {
        v21 = v36;
        goto LABEL_50;
      }
    }

    v37 = 0;
    v38 = 1;
    MEMORY[0x2530AD810](v27, &v37);

    if (v38)
    {
      goto LABEL_29;
    }

    v28 = v37;
    v29 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_2529F7D44(0, *(v36 + 2) + 1, 1, v36);
    }

    v32 = *(v29 + 2);
    v31 = *(v29 + 3);
    v33 = v29;
    if (v32 >= v31 >> 1)
    {
      v33 = sub_2529F7D44((v31 > 1), v32 + 1, 1, v29);
    }

    *(v33 + 2) = v32 + 1;
    v21 = v33;
    *&v33[8 * v32 + 32] = v28;
  }

  while (v20 != v19);
LABEL_50:

  return v21;
}

unint64_t sub_252BAC798()
{
  result = qword_27F5412E0;
  if (!qword_27F5412E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5412E0);
  }

  return result;
}

unint64_t sub_252BAC7E4()
{
  v1 = sub_252E36AD4();
  v113 = *(v1 - 8);
  v114 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v112 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v111 - v4;
  v6 = v0[1];
  v204 = *v0;
  v205 = v6;
  v125 = *(v0 + 4);
  v7 = *(v0 + 56);
  v200 = *(v0 + 40);
  v201 = v7;
  v8 = *(v0 + 88);
  v202 = *(v0 + 72);
  v203 = v8;
  v9 = *(v0 + 13);
  v10 = v0[7];
  v11 = *(v0 + 17);
  v121 = *(v0 + 16);
  v122 = v9;
  v120 = v11;
  v12 = *(v0 + 18);
  v118 = *(v0 + 19);
  v119 = v12;
  v13 = *(v0 + 21);
  v123 = *(v0 + 20);
  v14 = v0[12];
  v197 = v0[11];
  v198 = v14;
  v199 = v10;
  v129 = *(v0 + 208);
  v196[0] = *(v0 + 209);
  v15 = *(v0 + 27);
  v126 = *(v0 + 28);
  *(v196 + 7) = v15;
  v16 = *(v0 + 232);
  v116 = *(v0 + 31);
  v117 = v13;
  v194 = v0[16];
  v195 = v16;
  v17 = *(v0 + 35);
  v115 = *(v0 + 34);
  v193 = *(v0 + 288);
  v192 = v17;
  LODWORD(v12) = *(v0 + 289);
  v191 = *(v0 + 147);
  v190 = *(v0 + 290);
  v18 = *(v0 + 37);
  v189 = *(v0 + 62);
  v19 = v0[30];
  v187 = v0[29];
  v188 = v19;
  v20 = v0[28];
  v185 = v0[27];
  v186 = v20;
  v21 = v0[26];
  v183 = v0[25];
  v184 = v21;
  v22 = v0[24];
  v181 = v0[23];
  v182 = v22;
  v23 = v0[22];
  v179 = v0[21];
  v180 = v23;
  v24 = v0[20];
  v177 = v0[19];
  v178 = v24;
  v25 = MEMORY[0x277D84F90];
  v176 = MEMORY[0x277D84F90];
  v130 = v18;
  v124 = v12;
  if ((v12 & 1) != 0 || !v18)
  {
    goto LABEL_38;
  }

  v176 = v18;
  v26 = qword_27F53F4F8;

  if (v26 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v27 = v114;
    v28 = __swift_project_value_buffer(v114, qword_27F544D90);
    (*(v113 + 16))(v5, v28, v27);
    *&v133 = 0;
    *(&v133 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E85EB0);
    v111 = v18 >> 62;
    if (v18 >> 62)
    {
      break;
    }

    v29 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v127 = v5;
    if (!v29)
    {
      goto LABEL_22;
    }

LABEL_6:
    v30 = 0;
    v128 = (v130 & 0xC000000000000001);
    v18 = v130 & 0xFFFFFFFFFFFFFF8;
    v31 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v128)
      {
        v32 = MEMORY[0x2530ADF00](v30, v130);
      }

      else
      {
        if (v30 >= *(v18 + 16))
        {
          goto LABEL_19;
        }

        v32 = *(v130 + 8 * v30 + 32);
      }

      v33 = v32;
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      v35 = [v32 description];
      v36 = sub_252E36F34();
      v38 = v37;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_2529F7A80(0, *(v31 + 2) + 1, 1, v31);
      }

      v5 = *(v31 + 2);
      v39 = *(v31 + 3);
      if (v5 >= v39 >> 1)
      {
        v31 = sub_2529F7A80((v39 > 1), v5 + 1, 1, v31);
      }

      *(v31 + 2) = v5 + 1;
      v40 = &v31[16 * v5];
      *(v40 + 4) = v36;
      *(v40 + 5) = v38;
      ++v30;
      if (v34 == v29)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  v29 = sub_252E378C4();
  v127 = v5;
  if (v29)
  {
    goto LABEL_6;
  }

LABEL_22:
  v31 = MEMORY[0x277D84F90];
LABEL_23:
  v41 = MEMORY[0x2530AD730](v31, MEMORY[0x277D837D0]);
  v43 = v42;

  MEMORY[0x2530AD570](v41, v43);

  v44 = v127;
  sub_252CC3D90(v133, *(&v133 + 1), 0xD00000000000007ALL, 0x8000000252E85990);

  (*(v113 + 8))(v44, v114);
  if (!v29)
  {
    v25 = v130;
LABEL_38:
    v53 = (v125 + 32);
    v54 = *(v125 + 16);
    while (v54)
    {
      v56 = *v53;
      if (v56 >= 4)
      {

LABEL_63:
        v133 = v204;
        v134 = v205;
        v59 = v125;
        v135 = v125;
        v136 = v200;
        v137 = v201;
        v138 = v202;
        v139 = v203;
        v61 = v121;
        v60 = v122;
        v140 = v122;
        v141 = v199;
        v63 = v119;
        v62 = v120;
        v142 = v121;
        v143 = v120;
        v65 = v117;
        v64 = v118;
        v144 = v119;
        v145 = v118;
        v146 = v123;
        v147 = v117;
        v148 = v197;
        v149 = v198;
        v150 = v129;
        *v151 = v196[0];
        *&v151[7] = *(v196 + 7);
        v152 = v126;
        v153 = v195;
        v154 = v116;
        v155 = v194;
        v158 = v193;
        v156 = v115;
        v157 = v192;
        v159 = v124;
        v128 = &v160;
        v160 = v190;
        v161 = v191;
        v66 = v130;
        v162 = v130;
        v175 = v189;
        v173 = v187;
        v174 = v188;
        v171 = v185;
        v172 = v186;
        v169 = v183;
        v170 = v184;
        v167 = v181;
        v168 = v182;
        v165 = v179;
        v166 = v180;
        v163 = v177;
        v164 = v178;
        sub_252BB2B50(MEMORY[0x277D84F90]);
        v133 = v204;
        v134 = v205;
        v135 = v59;
        v136 = v200;
        v137 = v201;
        v138 = v202;
        v139 = v203;
        v140 = v60;
        v141 = v199;
        v142 = v61;
        v143 = v62;
        v144 = v63;
        v145 = v64;
        v146 = v123;
        v147 = v65;
        v148 = v197;
        v149 = v198;
        v150 = v129;
        *&v151[7] = *(v196 + 7);
        *v151 = v196[0];
        v152 = v126;
        v153 = v195;
        v154 = v116;
        v155 = v194;
        v158 = v193;
        v156 = v115;
        v157 = v192;
        v159 = v124;
        *v128 = v190;
        v161 = v191;
        v162 = v66;
        v173 = v187;
        v174 = v188;
        v175 = v189;
        v169 = v183;
        v170 = v184;
        v171 = v185;
        v172 = v186;
        v165 = v179;
        v166 = v180;
        v167 = v181;
        v168 = v182;
        v163 = v177;
        v164 = v178;
        v68 = v67;
        v69 = sub_252BB48FC(v67);
        sub_25297A8D8(v69);

LABEL_64:
        v133 = v204;
        v134 = v205;
        v135 = v125;
        v136 = v200;
        v137 = v201;
        v138 = v202;
        v139 = v203;
        v140 = v122;
        v141 = v199;
        v142 = v121;
        v143 = v120;
        v144 = v119;
        v145 = v118;
        v146 = v123;
        v147 = v117;
        v148 = v197;
        v149 = v198;
        v150 = v129;
        *&v151[7] = *(v196 + 7);
        *v151 = v196[0];
        v152 = v126;
        v153 = v195;
        v154 = v116;
        v155 = v194;
        v158 = v193;
        v156 = v115;
        v157 = v192;
        v159 = v124;
        v160 = v190;
        v161 = v191;
        v162 = v130;
        v165 = v179;
        v166 = v180;
        v163 = v177;
        v164 = v178;
        v169 = v183;
        v170 = v184;
        v167 = v181;
        v168 = v182;
        v175 = v189;
        v173 = v187;
        v174 = v188;
        v171 = v185;
        v172 = v186;
        v49 = sub_252BB5B20(v176);

        v70 = qword_27F53F4F8;

        if (v70 == -1)
        {
          goto LABEL_65;
        }

        goto LABEL_154;
      }

      v55 = sub_252E37DB4();

      ++v53;
      --v54;
      if (v55)
      {
        goto LABEL_63;
      }
    }

    v57 = *(v121 + 16);
    if (v57 <= *(v118 + 16))
    {
      v57 = *(v118 + 16);
    }

    if (v57 <= *(v126 + 16))
    {
      v57 = *(v126 + 16);
    }

    if (v57 <= *(v122 + 16))
    {
      v57 = *(v122 + 16);
    }

    if (v57 <= *(v120 + 16))
    {
      v57 = *(v120 + 16);
    }

    if (v57 <= *(v117 + 16))
    {
      v57 = *(v117 + 16);
    }

    if (v57 <= *(v119 + 16))
    {
      v57 = *(v119 + 16);
    }

    if (v57 <= 1)
    {
      v57 = 1;
    }

    for (i = v57 - 1; ; --i)
    {
      v133 = v204;
      v134 = v205;
      v136 = v200;
      v137 = v201;
      v138 = v202;
      v139 = v203;
      v135 = v125;
      v140 = v122;
      v141 = v199;
      v142 = v121;
      v143 = v120;
      v144 = v119;
      v145 = v118;
      v146 = v123;
      v147 = v117;
      v148 = v197;
      v149 = v198;
      v150 = v129;
      *&v151[7] = *(v196 + 7);
      *v151 = v196[0];
      v153 = v195;
      v152 = v126;
      v154 = v116;
      v155 = v194;
      v156 = v115;
      v158 = v193;
      v157 = v192;
      v159 = v124;
      v161 = v191;
      v160 = v190;
      v162 = v130;
      v165 = v179;
      v166 = v180;
      v163 = v177;
      v164 = v178;
      v169 = v183;
      v170 = v184;
      v167 = v181;
      v168 = v182;
      v175 = v189;
      v173 = v187;
      v174 = v188;
      v171 = v185;
      v172 = v186;
      sub_252BB2B50(v25);
      MEMORY[0x2530AD700]();
      if (*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v176 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      if (!i)
      {
        break;
      }

      v25 = v176;
    }

    goto LABEL_64;
  }

  v45 = v130;
  v46 = v130 & 0xFFFFFFFFFFFFFF8;
  if (v111)
  {
    v47 = sub_252E378C4();
  }

  else
  {
    v47 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = 0;
  v49 = v45 & 0xC000000000000001;
  while (1)
  {
    if (v47 == v48)
    {
      v25 = v45;
      goto LABEL_38;
    }

    if (v49)
    {
      v50 = MEMORY[0x2530ADF00](v48, v45);
    }

    else
    {
      if (v48 >= *(v46 + 16))
      {
        goto LABEL_153;
      }

      v50 = *(v45 + 8 * v48 + 32);
    }

    v51 = v50;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    v52 = sub_252A20B84();

    ++v48;
    if ((v52 & 1) == 0)
    {
      return v45;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    swift_once();
LABEL_65:
    v71 = v114;
    v72 = __swift_project_value_buffer(v114, qword_27F544D90);
    (*(v113 + 16))(v112, v72, v71);
    *&v133 = 0;
    *(&v133 + 1) = 0xE000000000000000;
    sub_252E379F4();

    v131 = 0xD000000000000010;
    v132 = 0x8000000252E85E90;
    v128 = v49 >> 62 ? sub_252E378C4() : *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v127 = v49;
    if (!v128)
    {
      break;
    }

    v73 = 0;
    v74 = v49 & 0xC000000000000001;
    v75 = v49 & 0xFFFFFFFFFFFFFF8;
    v76 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v74)
      {
        v77 = MEMORY[0x2530ADF00](v73, v49);
      }

      else
      {
        if (v73 >= *(v75 + 16))
        {
          goto LABEL_151;
        }

        v77 = *(v49 + 8 * v73 + 32);
      }

      v49 = v77;
      v78 = (v73 + 1);
      if (__OFADD__(v73, 1))
      {
        break;
      }

      v79 = [v77 description];
      v80 = sub_252E36F34();
      v82 = v81;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_2529F7A80(0, *(v76 + 2) + 1, 1, v76);
      }

      v84 = *(v76 + 2);
      v83 = *(v76 + 3);
      if (v84 >= v83 >> 1)
      {
        v76 = sub_2529F7A80((v83 > 1), v84 + 1, 1, v76);
      }

      *(v76 + 2) = v84 + 1;
      v85 = &v76[16 * v84];
      *(v85 + 4) = v80;
      *(v85 + 5) = v82;
      ++v73;
      v49 = v127;
      if (v78 == v128)
      {
        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_151:
    __break(1u);
  }

  v76 = MEMORY[0x277D84F90];
LABEL_81:

  v86 = MEMORY[0x2530AD730](v76, MEMORY[0x277D837D0]);
  v88 = v87;

  MEMORY[0x2530AD570](v86, v88);

  MEMORY[0x2530AD570](0x496C6E20726F6620, 0xEE0020746E65746ELL);
  v133 = v204;
  v134 = v205;
  v135 = v125;
  v136 = v200;
  v137 = v201;
  v138 = v202;
  v139 = v203;
  v140 = v122;
  v141 = v199;
  v142 = v121;
  v143 = v120;
  v144 = v119;
  v145 = v118;
  v146 = v123;
  v147 = v117;
  v148 = v197;
  v149 = v198;
  LODWORD(v88) = v129;
  v150 = v129;
  *&v151[7] = *(v196 + 7);
  *v151 = v196[0];
  v152 = v126;
  v153 = v195;
  v89 = v115;
  v154 = v116;
  v155 = v194;
  v158 = v193;
  v156 = v115;
  v157 = v192;
  v159 = v124;
  v128 = &v160;
  v160 = v190;
  v161 = v191;
  v162 = v130;
  v165 = v179;
  v166 = v180;
  v163 = v177;
  v164 = v178;
  v169 = v183;
  v170 = v184;
  v167 = v181;
  v168 = v182;
  v175 = v189;
  v173 = v187;
  v174 = v188;
  v171 = v185;
  v172 = v186;
  v90 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v90);

  v91 = v112;
  sub_252CC3D90(v131, v132, 0xD00000000000007ALL, 0x8000000252E85990);

  (*(v113 + 8))(v91, v114);
  if (v88 != 9)
  {
    for (j = 0; j != 4; ++j)
    {
      v99 = byte_2864A3420[j + 32];
      if (v99 <= 3)
      {
        v102 = 7628147;
        v103 = 0x656C67676F74;
        if (v99 != 2)
        {
          v103 = 2003789939;
        }

        v104 = 0xE600000000000000;
        if (v99 != 2)
        {
          v104 = 0xE400000000000000;
        }

        if (byte_2864A3420[j + 32])
        {
          v102 = 7628135;
        }

        if (byte_2864A3420[j + 32] <= 1u)
        {
          v100 = v102;
        }

        else
        {
          v100 = v103;
        }

        if (byte_2864A3420[j + 32] <= 1u)
        {
          v101 = 0xE300000000000000;
        }

        else
        {
          v101 = v104;
        }
      }

      else if (byte_2864A3420[j + 32] <= 5u)
      {
        if (v99 == 4)
        {
          v100 = 0x746E756F63;
        }

        else
        {
          v100 = 0xD000000000000011;
        }

        if (v99 == 4)
        {
          v101 = 0xE500000000000000;
        }

        else
        {
          v101 = 0x8000000252E678A0;
        }
      }

      else if (v99 == 6)
      {
        v100 = 0xD000000000000010;
        v101 = 0x8000000252E678C0;
      }

      else if (v99 == 7)
      {
        v100 = 0xD000000000000012;
        v101 = 0x8000000252E678E0;
      }

      else
      {
        v100 = 0x656E4F6863696877;
        v101 = 0xEF64656C69614673;
      }

      if (v129 <= 3)
      {
        if (v129 > 1)
        {
          if (v129 == 2)
          {
            v96 = 0x656C67676F74;
          }

          else
          {
            v96 = 2003789939;
          }

          if (v129 == 2)
          {
            v97 = 0xE600000000000000;
          }

          else
          {
            v97 = 0xE400000000000000;
          }

          if (v100 != v96)
          {
            goto LABEL_94;
          }
        }

        else if (v129)
        {
          v97 = 0xE300000000000000;
          if (v100 != 7628135)
          {
            goto LABEL_94;
          }
        }

        else
        {
          v97 = 0xE300000000000000;
          if (v100 != 7628147)
          {
            goto LABEL_94;
          }
        }
      }

      else
      {
        v105 = 0xD000000000000012;
        if (v129 != 7)
        {
          v105 = 0x656E4F6863696877;
        }

        v106 = 0xEF64656C69614673;
        if (v129 == 7)
        {
          v106 = 0x8000000252E678E0;
        }

        if (v129 == 6)
        {
          v105 = 0xD000000000000010;
          v106 = 0x8000000252E678C0;
        }

        if (v129 == 4)
        {
          v107 = 0x746E756F63;
        }

        else
        {
          v107 = 0xD000000000000011;
        }

        v108 = 0xE500000000000000;
        if (v129 != 4)
        {
          v108 = 0x8000000252E678A0;
        }

        if (v129 <= 5)
        {
          v109 = v107;
        }

        else
        {
          v109 = v105;
        }

        if (v129 <= 5)
        {
          v97 = v108;
        }

        else
        {
          v97 = v106;
        }

        if (v100 != v109)
        {
          goto LABEL_94;
        }
      }

      if (v101 == v97)
      {

        return v127;
      }

LABEL_94:
      v98 = sub_252E37DB4();

      if (v98)
      {
        return v127;
      }
    }
  }

  v133 = v204;
  v134 = v205;
  v135 = v125;
  v136 = v200;
  v137 = v201;
  v138 = v202;
  v139 = v203;
  v140 = v122;
  v141 = v199;
  v142 = v121;
  v143 = v120;
  v144 = v119;
  v145 = v118;
  v92 = v116;
  v146 = v123;
  v147 = v117;
  v148 = v197;
  v149 = v198;
  v150 = v129;
  *v151 = v196[0];
  *&v151[7] = *(v196 + 7);
  v152 = v126;
  v153 = v195;
  v154 = v116;
  v155 = v194;
  v158 = v193;
  v156 = v89;
  v157 = v192;
  v159 = v124;
  *v128 = v190;
  v161 = v191;
  v93 = v130;
  v162 = v130;
  v175 = v189;
  v173 = v187;
  v174 = v188;
  v171 = v185;
  v172 = v186;
  v169 = v183;
  v170 = v184;
  v167 = v181;
  v168 = v182;
  v165 = v179;
  v166 = v180;
  v163 = v177;
  v164 = v178;
  if (!sub_252A12D08())
  {
    return v127;
  }

  v45 = v127;
  if (v92 | v89)
  {
    v133 = v204;
    v134 = v205;
    v135 = v125;
    v136 = v200;
    v137 = v201;
    v138 = v202;
    v139 = v203;
    v140 = v122;
    v141 = v199;
    v142 = v121;
    v143 = v120;
    v144 = v119;
    v145 = v118;
    v146 = v123;
    v147 = v117;
    v148 = v197;
    v149 = v198;
    v150 = v129;
    *&v151[7] = *(v196 + 7);
    *v151 = v196[0];
    v152 = v126;
    v153 = v195;
    v154 = v92;
    v155 = v194;
    v158 = v193;
    v156 = v89;
    v157 = v192;
    v159 = v124;
    v160 = v190;
    v161 = v191;
    v162 = v93;
    v165 = v179;
    v166 = v180;
    v163 = v177;
    v164 = v178;
    v169 = v183;
    v170 = v184;
    v167 = v181;
    v168 = v182;
    v175 = v189;
    v173 = v187;
    v174 = v188;
    v171 = v185;
    v172 = v186;
    v94 = sub_252BB5D44(v127);

    return v94;
  }

  return v45;
}

id sub_252BADB6C()
{
  v1 = v0[3];
  v96 = v0[2];
  v97 = v1;
  v98 = v0[4];
  v2 = v0[1];
  v94 = *v0;
  v95 = v2;
  v3 = *(v0 + 10);
  v4 = *(v0 + 88);
  v5 = *(v0 + 104);
  v6 = *(v0 + 16);
  v93 = *(v0 + 15);
  v91 = v4;
  v92 = v5;
  v7 = *(v0 + 136);
  v8 = *(v0 + 152);
  v9 = *(v0 + 168);
  v10 = *(v0 + 184);
  v90 = *(v0 + 25);
  v89[4] = v9;
  v89[5] = v10;
  v89[2] = v7;
  v89[3] = v8;
  v11 = *(v0 + 208);
  v12 = *(v0 + 209);
  v13 = *(v0 + 225);
  v14 = *(v0 + 31);
  *(v89 + 15) = *(v0 + 30);
  v88 = v12;
  v89[0] = v13;
  v87 = v0[16];
  v15 = *(v0 + 34);
  v16 = *(v0 + 296);
  v73 = *(v0 + 280);
  v74 = v16;
  v17 = *(v0 + 312);
  v18 = *(v0 + 328);
  v19 = *(v0 + 360);
  v77 = *(v0 + 344);
  v78 = v19;
  v75 = v17;
  v76 = v18;
  v20 = *(v0 + 376);
  v21 = *(v0 + 392);
  v22 = *(v0 + 424);
  v81 = *(v0 + 408);
  v82 = v22;
  v79 = v20;
  v80 = v21;
  v23 = *(v0 + 440);
  v24 = *(v0 + 456);
  v25 = *(v0 + 488);
  v85 = *(v0 + 472);
  v86 = v25;
  v26 = 0x27F53F000uLL;
  v83 = v23;
  v84 = v24;
  v27 = &off_279711000;
  v70 = v14;
  v71 = v3;
  if (*(v6 + 16))
  {
    v28 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v29 = sub_252E36F04();
    v30 = [v28 initWithIdentifier:0 displayString:v29];

    v31 = v30;
    [v31 setBoolValue_];
    [v31 setType_];

    v32 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v33 = sub_252E36F04();
    v34 = [v32 initWithIdentifier:0 displayString:v33];

    v35 = v34;
    [v35 setTaskType_];
    [v35 setAttribute_];
    [v35 setValue_];

    v36 = v35;
LABEL_3:

    goto LABEL_4;
  }

  v44 = sub_252BB84E8();
  v69 = sub_252BB776C(v44);
  v45 = sub_252BBB45C(v44);
  v68 = type metadata accessor for HomeUserTask();
  v46 = objc_allocWithZone(v68);
  v47 = sub_252E36F04();
  v48 = [v46 initWithIdentifier:0 displayString:v47];

  v49 = v48;
  [v49 setTaskType_];
  [v49 setAttribute_];
  [v49 setValue_];

  v50 = qword_27F53F4F8;
  v36 = v49;
  if (v50 != -1)
  {
    swift_once();
  }

  v51 = sub_252E36AD4();
  __swift_project_value_buffer(v51, qword_27F544D90);
  sub_252E379F4();

  v52 = [v36 description];
  v53 = sub_252E36F34();
  v55 = v54;

  MEMORY[0x2530AD570](v53, v55);

  MEMORY[0x2530AD570](32, 0xE100000000000000);
  sub_252CC3D90(0xD000000000000022, 0x8000000252E85A10, 0xD00000000000007ALL, 0x8000000252E85990);

  v56 = [v36 taskType];

  if (v56 != 1)
  {
    v26 = 0x27F53F000;
    goto LABEL_14;
  }

  v57 = [v36 value];
  if (v57)
  {
    v26 = 0x27F53F000;
LABEL_12:

    goto LABEL_14;
  }

  v26 = 0x27F53F000;
  if (v11 == 9 && [v36 attribute] != 27)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v59 = v36;
    sub_252D6CA80(v59)[2] = 4;
    v36 = sub_252D6CB58();

    v57 = v59;
    goto LABEL_12;
  }

LABEL_14:
  if (sub_2529A6F1C(62, v71) && [v36 attribute] == 27)
  {
    v58 = [v36 value];
    if (v58)
    {
    }

    else if (v11 == 9 || v70 || v15)
    {
      v61 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v62 = sub_252E36F04();
      v63 = [v61 initWithIdentifier:0 displayString:v62];

      v64 = v63;
      [v64 setBoolValue_];
      [v64 setType_];

      v65 = objc_allocWithZone(v68);
      v66 = sub_252E36F04();
      v67 = [v65 initWithIdentifier:0 displayString:v66];

      v35 = v67;
      [v35 setTaskType_];
      [v35 setAttribute_];
      [v35 setValue_];

      v36 = v35;
      v27 = &off_279711000;
      goto LABEL_3;
    }
  }

  if ([v36 attribute] == 27)
  {
    v60 = [v36 value];
    v27 = &off_279711000;
    if (v60)
    {
      v35 = v60;
      goto LABEL_3;
    }

    if (v11 == 9)
    {
      type metadata accessor for MutableHomeUserTask();
      swift_allocObject();
      v35 = v36;
      sub_252D6CA80(v35)[2] = 6;
      v36 = sub_252D6CB58();

      goto LABEL_3;
    }
  }

  else
  {
    v27 = &off_279711000;
  }

LABEL_4:
  if (*(v26 + 1272) != -1)
  {
    swift_once();
  }

  v37 = sub_252E36AD4();
  __swift_project_value_buffer(v37, qword_27F544D90);
  sub_252E379F4();

  strcpy(v72, "Created task ");
  HIWORD(v72[1]) = -4864;
  v38 = [v36 v27[204]];
  v39 = sub_252E36F34();
  v41 = v40;

  MEMORY[0x2530AD570](v39, v41);

  MEMORY[0x2530AD570](0x496C6E20726F6620, 0xEE0020746E65746ELL);
  v42 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v42);

  sub_252CC3D90(v72[0], v72[1], 0xD00000000000007ALL, 0x8000000252E85990);

  return v36;
}

uint64_t sub_252BAE648(uint64_t a1, uint64_t a2)
{
  v3[29] = a1;
  v3[30] = a2;
  v4 = sub_252E35BD4();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A40, &qword_252E50390);
  v3[34] = v5;
  v3[35] = *(v5 - 8);
  v3[36] = swift_task_alloc();
  v6 = sub_252E32E04();
  v3[37] = v6;
  v3[38] = *(v6 - 8);
  v3[39] = swift_task_alloc();
  v7 = sub_252E32FF4();
  v3[40] = v7;
  v3[41] = *(v7 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v8 = sub_252E33044();
  v3[44] = v8;
  v3[45] = *(v8 - 8);
  v3[46] = swift_task_alloc();
  sub_252E32F04();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v9 = sub_252E35C24();
  v3[50] = v9;
  v3[51] = *(v9 - 8);
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *(v2 + 16);
  v3[54] = v10;
  v3[55] = v11;

  return MEMORY[0x2822009F8](sub_252BAE94C, 0, 0);
}

uint64_t sub_252BAE94C()
{
  v1 = *(v0 + 440);
  if (v1)
  {
    v2 = qword_27F53F4B0;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 432);
    v4 = *(v0 + 408);
    v5 = sub_252E36AD4();
    *(v0 + 448) = __swift_project_value_buffer(v5, qword_27F544CB8);
    sub_252E379F4();

    *(v0 + 200) = v1;
    *(v0 + 456) = sub_252E35DD4();
    *(v0 + 464) = sub_252BBF590(&qword_27F543A48, MEMORY[0x277D56498], MEMORY[0x277D564C0]);
    v6 = sub_252E37D94();
    MEMORY[0x2530AD570](v6);

    sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E85FA0, 0xD00000000000007ALL, 0x8000000252E85990);

    *(v0 + 504) = *MEMORY[0x277D56158];
    v7 = *(v4 + 104);
    *(v0 + 472) = v7;
    *(v0 + 480) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v8 = v7(v3);
    v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v8);
    sub_252929E74((v9 + 240), v0 + 16);

    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
    v15 = (*(v11 + 8) + **(v11 + 8));
    v12 = swift_task_alloc();
    *(v0 + 488) = v12;
    *v12 = v0;
    v12[1] = sub_252BAECD4;

    return v15(v10, v11);
  }

  else
  {

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_252BAECD4(uint64_t a1)
{
  *(*v1 + 496) = a1;

  return MEMORY[0x2822009F8](sub_252BAEDD4, 0, 0);
}

uint64_t sub_252BAEDD4()
{
  v1 = *(v0 + 496);
  if (v1)
  {
    v2 = *(v0 + 472);
    v3 = *(v0 + 504);
    v5 = *(v0 + 424);
    v4 = *(v0 + 432);
    v6 = *(v0 + 400);
    v7 = *(v0 + 408);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    [v1 lat];
    v9 = v8;

    (*(v7 + 8))(v4, v6);
    if (v9 <= 0.0)
    {
      v10 = v3;
    }

    else
    {
      v10 = *MEMORY[0x277D56150];
    }

    v2(v5, v10, v6);
    v11 = (*(v7 + 32))(v4, v5, v6);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    sub_252CC4050(0xD000000000000031, 0x8000000252E85FC0, 0xD00000000000007ALL, 0x8000000252E85990, 0xD00000000000001ELL, 0x8000000252E86000, 928);
  }

  v12 = *(v0 + 408);
  v63 = *(v0 + 400);
  v66 = *(v0 + 432);
  v60 = *(v0 + 416);
  v13 = *(v0 + 304);
  v67 = *(v0 + 312);
  v70 = *(v0 + 296);
  v61 = *(v0 + 240);
  v14 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v11);
  sub_252929E74((v14 + 16), v0 + 56);

  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v15 = sub_252E33844();
  v16 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v15);
  sub_252929E74((v16 + 16), v0 + 96);

  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  v17 = sub_252E33844();
  v18 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v17);
  sub_252929E74((v18 + 16), v0 + 136);

  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  sub_252E33844();
  sub_252E33034();
  (*(v12 + 16))(v60, v66, v63);
  sub_252E32FC4();
  (*(v13 + 16))(v67, v61, v70);
  sub_252E35C44();
  swift_allocObject();
  sub_252E35C34();
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_252E35BC4();
  sub_252E35BB4();
  v19 = *(v0 + 280);
  v20 = *(v0 + 288);
  v21 = *(v0 + 272);
  (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  v22 = (*(v19 + 88))(v20, v21);
  if (v22 == *MEMORY[0x277D56080])
  {
    v71 = *(v0 + 408);
    v74 = *(v0 + 400);
    v77 = *(v0 + 432);
    v24 = *(v0 + 360);
    v23 = *(v0 + 368);
    v25 = *(v0 + 344);
    v68 = *(v0 + 352);
    v26 = *(v0 + 328);
    v27 = *(v0 + 336);
    v28 = *(v0 + 288);
    v64 = *(v0 + 320);
    (*(*(v0 + 280) + 96))(v28, *(v0 + 272));
    v29 = *v28;
    sub_252E379F4();

    *(v0 + 224) = v29;
    v30 = sub_252E37D94();
    MEMORY[0x2530AD570](v30);

    sub_252CC3D90(0xD000000000000012, 0x8000000252E860E0, 0xD00000000000007ALL, 0x8000000252E85990);

    sub_252E32FC4();
    sub_252E32FC4();
    sub_252E32FD4();
    v31 = *(v26 + 8);
    v31(v27, v64);
    v80 = sub_252E35D94();

    (*(v24 + 8))(v23, v68);
    v31(v25, v64);
    (*(v71 + 8))(v77, v74);
    goto LABEL_14;
  }

  if (v22 == *MEMORY[0x277D56068])
  {
    v75 = *(v0 + 400);
    v78 = *(v0 + 432);
    v32 = *(v0 + 368);
    v65 = *(v0 + 360);
    v33 = *(v0 + 344);
    v69 = *(v0 + 352);
    v72 = *(v0 + 408);
    v34 = *(v0 + 328);
    v35 = *(v0 + 336);
    v36 = *(v0 + 288);
    v62 = *(v0 + 320);
    (*(*(v0 + 280) + 96))(v36, *(v0 + 272));
    v37 = *v36;
    sub_252E379F4();

    *(v0 + 216) = v37;
    v38 = sub_252E37D94();
    MEMORY[0x2530AD570](v38);

    MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E86100);
    sub_252CC3D90(0xD000000000000012, 0x8000000252E860E0, 0xD00000000000007ALL, 0x8000000252E85990);

    sub_252E32FC4();
    sub_252E32FC4();
    sub_252E32FD4();
    v39 = *(v34 + 8);
    v39(v35, v62);
    v80 = sub_252E35D94();

    (*(v65 + 8))(v32, v69);
    v39(v33, v62);
    (*(v72 + 8))(v78, v75);
    goto LABEL_14;
  }

  if (v22 != *MEMORY[0x277D56070])
  {
    if (v22 != *MEMORY[0x277D56078])
    {
      v57 = *(v0 + 280);
      v58 = *(v0 + 288);
      v59 = *(v0 + 272);
      (*(*(v0 + 408) + 8))(*(v0 + 432), *(v0 + 400));

      (*(v57 + 8))(v58, v59);
LABEL_8:
      v80 = 0;
      goto LABEL_14;
    }

    v54 = *(v0 + 432);
    v56 = *(v0 + 400);
    v55 = *(v0 + 408);
    sub_252CC3D90(0xD000000000000022, 0x8000000252E86060, 0xD00000000000007ALL, 0x8000000252E85990);

LABEL_29:

    (*(v55 + 8))(v54, v56);
    goto LABEL_8;
  }

  v42 = *(v0 + 456);
  v43 = *(v0 + 288);
  (*(*(v0 + 280) + 96))(v43, *(v0 + 272));
  v44 = *v43;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E86090);
  v45 = MEMORY[0x2530AD730](v44, v42);
  MEMORY[0x2530AD570](v45);

  MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E860B0);
  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E85990);

  if (v44 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

  result = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_28:
    v54 = *(v0 + 432);
    v56 = *(v0 + 400);
    v55 = *(v0 + 408);

    goto LABEL_29;
  }

LABEL_20:
  if ((v44 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](0, v44);
  }

  else
  {
    if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v46 = *(v0 + 408);
  v76 = *(v0 + 400);
  v79 = *(v0 + 432);
  v47 = *(v0 + 360);
  v48 = *(v0 + 368);
  v49 = *(v0 + 344);
  v73 = *(v0 + 352);
  v51 = *(v0 + 328);
  v50 = *(v0 + 336);
  v52 = *(v0 + 320);

  sub_252E32FC4();
  sub_252E32FC4();
  sub_252E32FD4();
  v53 = *(v51 + 8);
  v53(v50, v52);
  v80 = sub_252E35D94();

  (*(v47 + 8))(v48, v73);
  v53(v49, v52);
  (*(v46 + 8))(v79, v76);
LABEL_14:

  v40 = *(v0 + 8);

  return v40(v80);
}

BOOL sub_252BAF91C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_14:
  v3 = sub_252E378C4();
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v4 = 0;
  do
  {
    v5 = v3 != v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2530ADF00](v4, a2);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v6 = *(a2 + 8 * v4 + 32);
      if (__OFADD__(v4, 1))
      {
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    v7 = v6;
    swift_getAtKeyPath();

    ++v4;
  }

  while (!v9);
  return v5;
}

BOOL sub_252BAFA20(id a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_16:
  v4 = sub_252E378C4();
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = 0;
  do
  {
    v6 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v5, a2);
    }

    else
    {
      if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(a2 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if ([v7 deviceType] == a1)
    {

      return 1;
    }

    v9 = [v8 outerDeviceType];

    ++v5;
  }

  while (v9 != a1);
  return v6;
}

BOOL sub_252BAFB3C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return 1;
  }

LABEL_14:
  v2 = sub_252E378C4();
  if (!v2)
  {
    return 1;
  }

LABEL_3:
  v3 = 0;
  do
  {
    v4 = v2 == v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2530ADF00](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v7 = sub_252A20088();

    ++v3;
  }

  while ((v7 & 1) != 0);
  return v4;
}

id sub_252BAFC18(unint64_t a1)
{
  v1 = a1;
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_61;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = v1 & 0xFFFFFFFFFFFFFF8;
  v7 = &off_279711000;
  while (v3 != v4)
  {
    if (v5)
    {
      v8 = MEMORY[0x2530ADF00](v4, v1);
    }

    else
    {
      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v8 = *(v1 + 8 * v4 + 32);
    }

    v9 = v8;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      v3 = sub_252E378C4();
      if (!v3)
      {
        return 0;
      }

      goto LABEL_3;
    }

    v10 = [v8 deviceType];

    ++v4;
    if (v10)
    {
      goto LABEL_17;
    }
  }

  v11 = type metadata accessor for HomeStore(0);
  v12 = static HomeStore.shared.getter(v11);
  if (v2)
  {
    type metadata accessor for HomeFilter();

    v2 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for HomeFilter();
    v2 = v1;
  }

  v4 = HomeStore.services(matching:supporting:)(v2, 0);
  v9 = v13;

  if (v9)
  {
    sub_252929F10(v4, 1);
LABEL_17:
    if (v5)
    {
      goto LABEL_64;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v1 + 32);
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFFF8;
    if (!(v4 >> 62))
    {
      v39 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v39)
      {
LABEL_67:
        sub_252929F10(v4, 0);
        return 0;
      }

      goto LABEL_32;
    }
  }

  result = sub_252E378C4();
  v39 = result;
  if (!result)
  {
    goto LABEL_67;
  }

LABEL_32:
  v37 = v9;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x2530ADF00](0, v4);
  }

  else
  {
    if (!*(v9 + 16))
    {
      __break(1u);
      return result;
    }

    v38 = *(v4 + 32);
  }

  v6 = 0;
  v22 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
  v7 = &off_279711000;
  while (1)
  {
    if (v39 == v6)
    {
      sub_252929F10(v4, 0);
      v36 = sub_252CD941C();

      return v36;
    }

    if ((v4 & 0xC000000000000001) == 0)
    {
      break;
    }

    v2 = MEMORY[0x2530ADF00](v6, v4);
    if (__OFADD__(v6, 1))
    {
      goto LABEL_60;
    }

LABEL_45:
    v24 = [*&v2[OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate] v7[202]];
    v25 = sub_252E36F34();
    v27 = v26;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v28 = off_27F546230;
    if (*(off_27F546230 + 2) && (v29 = sub_252A44A10(v25, v27), (v30 & 1) != 0))
    {
      v1 = *(v28[7] + 8 * v29);
    }

    else
    {
      v1 = 0;
    }

    v3 = v7;
    v31 = [*(v38 + v22) v7[202]];
    v5 = sub_252E36F34();
    v33 = v32;

    if (v28[2] && (v34 = sub_252A44A10(v5, v33), (v35 & 1) != 0))
    {
      v23 = *(v28[7] + 8 * v34);
    }

    else
    {
      v23 = 0;
    }

    v7 = v3;

    ++v6;
    if (v1 != v23)
    {
      sub_252929F10(v4, 0);

      return 0;
    }
  }

  if (v6 < *(v37 + 16))
  {
    v2 = *(v4 + 8 * v6 + 32);

    if (__OFADD__(v6, 1))
    {
      goto LABEL_60;
    }

    goto LABEL_45;
  }

  __break(1u);
LABEL_64:
  v15 = MEMORY[0x2530ADF00](0, v1);
LABEL_20:
  v16 = v15;
  for (i = 0; v3 != i; ++i)
  {
    if (v5)
    {
      v18 = MEMORY[0x2530ADF00](i, v1);
    }

    else
    {
      if (i >= *(v6 + 16))
      {
        goto LABEL_59;
      }

      v18 = *(v1 + 8 * i + 32);
    }

    v19 = v18;
    if (__OFADD__(i, 1))
    {
      goto LABEL_58;
    }

    v2 = [v18 v7[218]];
    v20 = [v16 v7[218]];

    if (v2 != v20)
    {

      return 0;
    }
  }

  v21 = [v16 v7[218]];

  return v21;
}

void *sub_252BB00B0(uint64_t a1)
{
  v2 = sub_252CC5CF8(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = (a1 + 32);
  while (1)
  {
    v6 = *v4++;
    v5 = v6;
    v7 = v2[2];
    if (v7)
    {
      v8 = sub_252A488EC();
      if (v9)
      {
        v7 = *(v2[7] + 8 * v8);
      }

      else
      {
        v7 = 0;
      }
    }

    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_252A488EC();
    v14 = v2[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_22;
    }

    v18 = v13;
    if (v2[3] >= v17)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v22 = v12;
      sub_252E03770();
      v12 = v22;
      if (v18)
      {
        goto LABEL_3;
      }

LABEL_15:
      v2[(v12 >> 6) + 8] |= 1 << v12;
      *(v2[6] + 8 * v12) = v5;
      *(v2[7] + 8 * v12) = v10;
      v20 = v2[2];
      v16 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v21;
      if (!--v3)
      {
        return v2;
      }
    }

    else
    {
      sub_252DFF6F4(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_252A488EC();
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_24;
      }

LABEL_14:
      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_3:
      *(v2[7] + 8 * v12) = v10;
      if (!--v3)
      {
        return v2;
      }
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_252E37E24();
  __break(1u);
  return result;
}

unint64_t sub_252BB024C(unint64_t a1, void *a2)
{
  v5 = sub_252E32A64();
  v122 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v121 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_252E32E84();
  v131 = *(v136 - 8);
  v7 = MEMORY[0x28223BE20](v136);
  v135 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v134 = &v117 - v9;
  memcpy(v140, v2, sizeof(v140));
  if (sub_252BB6A08(a2))
  {
    v118 = a2;
    v119 = v5;
    v10 = type metadata accessor for HomeStore(0);
    v11 = static HomeStore.shared.getter(v10);
    v12 = sub_2529F744C(a1);

    v132 = v12;
    if (v12)
    {
      v123 = v10;
      v14 = static HomeStore.shared.getter(v13);
      v15 = sub_2529D9884();

      v129 = a1;
      if (v15 >> 62)
      {
        v16 = sub_252E378C4();
        if (v16)
        {
LABEL_5:
          v17 = 0;
          a1 = 0;
          v137 = (v15 & 0xFFFFFFFFFFFFFF8);
          v138 = v15 & 0xC000000000000001;
          while (1)
          {
            if (v138)
            {
              v18 = MEMORY[0x2530ADF00](v17, v15);
              v19 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
LABEL_14:
                __break(1u);
                goto LABEL_15;
              }
            }

            else
            {
              if (v17 >= v137[2])
              {
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

              v19 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                goto LABEL_14;
              }
            }

            v20 = v18;
            v21 = sub_2529A2A0C();
            v140[0] = v132;
            MEMORY[0x28223BE20](v21);
            *(&v117 - 2) = v140;
            v22 = sub_252A00B58(sub_2529E963C, (&v117 - 4), v21);

            if (v22)
            {
              break;
            }

            ++v17;
            if (v19 == v16)
            {
              goto LABEL_34;
            }
          }

          v138 = v20;

          v27 = static HomeStore.shared.getter(v26);
          a1 = sub_2529D8DC0();

          if (!(a1 >> 62))
          {
            v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v29 = v138;
            if (v28)
            {
              goto LABEL_19;
            }

LABEL_44:

            v34 = 0;
            goto LABEL_45;
          }

          v28 = sub_252E378C4();
          v29 = v138;
          if (!v28)
          {
            goto LABEL_44;
          }

LABEL_19:
          v30 = 0;
          while (2)
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v31 = MEMORY[0x2530ADF00](v30, a1);
              v32 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
                break;
              }

              goto LABEL_23;
            }

            if (v30 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v31 = *(a1 + 8 * v30 + 32);

            v32 = v30 + 1;
            if (!__OFADD__(v30, 1))
            {
LABEL_23:
              if (sub_2529E7DBC(v29))
              {
                goto LABEL_29;
              }

              ++v30;
              v29 = v138;
              if (v32 == v28)
              {
                goto LABEL_44;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_29:

          v34 = v31;
LABEL_45:
          v38 = static HomeStore.shared.getter(v33);
          v39 = sub_2529D984C();

          v140[0] = MEMORY[0x277D84F90];
          if (v39 >> 62)
          {
            goto LABEL_126;
          }

          v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          while (2)
          {
            v120 = v34;
            if (!v40)
            {
              v57 = MEMORY[0x277D84F90];
              v58 = MEMORY[0x277D84F90];
              goto LABEL_71;
            }

            v41 = 0;
            v133 = OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate;
            v127 = v39 & 0xFFFFFFFFFFFFFF8;
            v128 = v39 & 0xC000000000000001;
            v125 = v39;
            v126 = v39 + 32;
            v34 = v131 + 8;
            v124 = v40;
LABEL_51:
            if (!v128)
            {
              if (v41 < *(v127 + 16))
              {
                v42 = *(v126 + 8 * v41);

                v43 = __OFADD__(v41, 1);
                v44 = (v41 + 1);
                if (!v43)
                {
                  goto LABEL_54;
                }

LABEL_121:
                __break(1u);
              }

              __break(1u);
LABEL_123:
              __break(1u);
LABEL_124:
              __break(1u);
LABEL_125:
              __break(1u);
LABEL_126:
              v40 = sub_252E378C4();
              continue;
            }

            break;
          }

          v42 = MEMORY[0x2530ADF00](v41, v39);
          v43 = __OFADD__(v41, 1);
          v44 = (v41 + 1);
          if (v43)
          {
            goto LABEL_121;
          }

LABEL_54:
          v45 = [*(v42 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate) rooms];
          sub_252BBF4DC();
          v46 = sub_252E37264();

          v130 = v42;
          v131 = v44;
          v137 = (v46 & 0xFFFFFFFFFFFFFF8);
          if (v46 >> 62)
          {
            v39 = sub_252E378C4();
          }

          else
          {
            v39 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v47 = 0;
          do
          {
            if (v39 == v47)
            {

              goto LABEL_50;
            }

            if ((v46 & 0xC000000000000001) != 0)
            {
              v48 = MEMORY[0x2530ADF00](v47, v46);
            }

            else
            {
              if (v47 >= v137[2])
              {
                goto LABEL_120;
              }

              v48 = *(v46 + 8 * v47 + 32);
            }

            v49 = v48;
            if (__OFADD__(v47, 1))
            {
              __break(1u);
LABEL_120:
              __break(1u);
              goto LABEL_121;
            }

            v50 = [v48 uniqueIdentifier];
            v51 = v134;
            sub_252E32E64();

            v52 = [*(v138 + v133) uniqueIdentifier];
            v53 = v135;
            sub_252E32E64();

            LOBYTE(v52) = sub_252E32E54();
            v54 = *v34;
            v55 = v53;
            v56 = v136;
            (*v34)(v55, v136);
            v54(v51, v56);
            ++v47;
          }

          while ((v52 & 1) == 0);

          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
LABEL_50:
          v39 = v125;
          v41 = v131;
          if (v131 != v124)
          {
            goto LABEL_51;
          }

          v57 = v140[0];
          v34 = v120;
          v58 = MEMORY[0x277D84F90];
LABEL_71:

          if (qword_27F53F4B0 != -1)
          {
            swift_once();
          }

          v59 = sub_252E36AD4();
          v60 = __swift_project_value_buffer(v59, qword_27F544CB8);
          v140[0] = 0;
          v140[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E86240);
          v139 = v34;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542190, "p%\a");
          v61 = sub_252E36F94();
          MEMORY[0x2530AD570](v61);

          MEMORY[0x2530AD570](0x3A73656E6F5A202CLL, 0xE900000000000020);
          v62 = type metadata accessor for Zone(0);
          v63 = MEMORY[0x2530AD730](v57, v62);
          MEMORY[0x2530AD570](v63);

          MEMORY[0x2530AD570](0x3A6D6F6F52202CLL, 0xE700000000000000);
          v64 = v138;
          v65 = sub_2529A30FC();
          MEMORY[0x2530AD570](v65);

          v117 = "esult";
          v124 = v60;
          sub_252CC3D90(v140[0], v140[1], 0xD00000000000007ALL, 0x8000000252E85990);

          v66 = *(v64 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v67 = *(v64 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
          v130 = (v64 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v140[0] = v66;
          v140[1] = v67;

          v68 = v121;
          sub_252E329F4();
          sub_252947DBC();
          v69 = sub_252E377A4();
          v71 = v70;
          (*(v122 + 8))(v68, v119);

          v72 = HIBYTE(v71) & 0xF;
          if ((v71 & 0x2000000000000000) == 0)
          {
            v72 = v69 & 0xFFFFFFFFFFFFLL;
          }

          if (v72)
          {
            v139 = v58;
            v39 = v129;
            if (v129 >> 62)
            {
              v73 = sub_252E378C4();
            }

            else
            {
              v73 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v74 = v57;
            if (v73)
            {
              if (v57 < 0 || (v57 & 0x4000000000000000) != 0)
              {
                v116 = sub_252E378C4();
                v74 = v57;
                v75 = v116;
              }

              else
              {
                v75 = *(v57 + 16);
              }

              v76 = 0;
              v127 = v73;
              v128 = v39 & 0xC000000000000001;
              v125 = v39 + 32;
              v126 = v39 & 0xFFFFFFFFFFFFFF8;
              v134 = (v74 & 0xC000000000000001);
              v135 = v74;
              v136 = v75;
              do
              {
                if (v128)
                {
                  v78 = v74;
                  v79 = MEMORY[0x2530ADF00](v76, v39);
                }

                else
                {
                  if (v76 >= *(v126 + 16))
                  {
                    goto LABEL_125;
                  }

                  v78 = v74;
                  v79 = *(v125 + 8 * v76);
                }

                v80 = v79;
                v43 = __OFADD__(v76, 1);
                v81 = v76 + 1;
                if (v43)
                {
                  goto LABEL_123;
                }

                v133 = v81;
                v140[0] = v58;
                type metadata accessor for HomeFilter.Builder();
                v82 = swift_allocObject();
                *(v82 + 16) = 0;
                *(v82 + 24) = 0;
                *(v82 + 32) = 0;
                *(v82 + 40) = 7;
                *(v82 + 48) = 0u;
                *(v82 + 64) = 0u;
                *(v82 + 80) = 0u;
                *(v82 + 96) = 0u;
                *(v82 + 112) = 0u;
                *(v82 + 128) = 0u;
                *(v82 + 144) = 0u;
                *(v82 + 160) = 0u;
                *(v82 + 175) = 0;
                v83 = v80;
                v84 = sub_252B72040(v80);

                v131 = v83;

                v85 = *v130;
                v86 = v130[1];
                v87 = *(*v84 + 680);

                v88 = v87(v85, v86);

                if (v34)
                {
                  v89 = *&v34[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
                  v39 = *&v34[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];
                }

                else
                {
                  v89 = 0;
                  v39 = 0;
                }

                v90 = v136;
                v137 = (*(*v88 + 632))(v89, v39);

                v76 = v133;
                if (v90)
                {
                  if (v90 < 1)
                  {
                    goto LABEL_124;
                  }

                  v91 = v78;
                  v92 = 0;
                  v93 = *(*v137 + 768);
                  do
                  {
                    if (v134)
                    {
                      v94 = MEMORY[0x2530ADF00](v92, v91);
                    }

                    else
                    {
                      v94 = *&v91[8 * v92 + 32];
                    }

                    v95 = v93();
                    v96 = *(v94 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                    v97 = *(v94 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
                    v98 = *(*v95 + 648);

                    v99 = v98(v96, v97);

                    (*(*v99 + 760))(v100);

                    MEMORY[0x2530AD700](v101);
                    if (*((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_252E372A4();
                    }

                    ++v92;
                    sub_252E372D4();

                    v91 = v135;
                  }

                  while (v136 != v92);
                  v77 = v140[0];
                  v34 = v120;
                  v58 = MEMORY[0x277D84F90];
                  v76 = v133;
                }

                else
                {
                  v77 = v58;
                  v91 = v78;
                }

                v39 = v129;
                v102 = v91;
                if (v77 >> 62)
                {
                  v103 = v77;
                  v104 = sub_252E378C4();
                  v77 = v103;
                  if (!v104)
                  {
LABEL_106:
                    (*(*v137 + 760))();
                    MEMORY[0x2530AD700]();
                    if (*((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_252E372A4();
                    }

                    sub_252E372D4();
                    v77 = v140[0];
                    v39 = v129;
                  }
                }

                else if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_106;
                }

                sub_25297A8D8(v77);

                v74 = v102;
              }

              while (v76 != v127);
            }

            v106 = static HomeStore.shared.getter(v105);
            v107 = v139;
            v108 = HomeStore.accessories(matching:supporting:)(v139, v118);
            v110 = v109;

            if (v110)
            {
              sub_252929F10(v108, 1);
              v111 = v117;
            }

            else
            {
              v111 = v117;
              if (v108 >> 62)
              {
                v112 = sub_252E378C4();
              }

              else
              {
                v112 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              sub_252929F10(v108, 0);
              if (v112)
              {
                v140[0] = 0;
                v140[1] = 0xE000000000000000;
                sub_252E379F4();

                v140[0] = 0xD00000000000001ALL;
                v140[1] = 0x8000000252E862C0;
                v113 = type metadata accessor for HomeFilter();

                v115 = MEMORY[0x2530AD730](v114, v113);
                MEMORY[0x2530AD570](v115);

                sub_252CC3D90(v140[0], v140[1], 0xD00000000000007ALL, v111 | 0x8000000000000000);

                return v107;
              }
            }

            sub_252CC3D90(0xD00000000000003FLL, 0x8000000252E86280, 0xD00000000000007ALL, v111 | 0x8000000000000000);
          }

          else
          {
          }

          a1 = v129;
          goto LABEL_38;
        }
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_5;
        }
      }

LABEL_34:

      a1 = v129;
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v35 = sub_252E36AD4();
    __swift_project_value_buffer(v35, qword_27F544CB8);
    sub_252CC4050(0xD000000000000064, 0x8000000252E86180, 0xD00000000000007ALL, 0x8000000252E85990, 0xD000000000000020, 0x8000000252E861F0, 586);
LABEL_38:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v36 = sub_252E36AD4();
    __swift_project_value_buffer(v36, qword_27F544CB8);
    v24 = "cation(to:with:)";
    v25 = 0xD00000000000001ALL;
    goto LABEL_41;
  }

LABEL_15:
  if (qword_27F53F4B0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v23 = sub_252E36AD4();
  __swift_project_value_buffer(v23, qword_27F544CB8);
  v24 = ", but should confirm";
  v25 = 0xD000000000000059;
LABEL_41:
  sub_252CC3D90(v25, v24 | 0x8000000000000000, 0xD00000000000007ALL, 0x8000000252E85990);

  return a1;
}

void *sub_252BB1378(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5415C8, &qword_252E40550);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v67 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543728, &qword_252E4DBE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v67 - v6;
  v8 = sub_252E32BA4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = MEMORY[0x28223BE20](v12);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v67 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v67 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v26 = &v67 - v25;
  if (!a1)
  {
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v31 = sub_252E36AD4();
    __swift_project_value_buffer(v31, qword_27F544C40);
    sub_252CC3D90(0xD000000000000018, 0x8000000252E85F60, 0xD00000000000007ALL, 0x8000000252E85990);
    return 0;
  }

  v68 = v21;
  v69 = v24;
  v70 = v23;
  v67 = v22;
  v27 = v20;
  v28 = a1;
  v29 = [v28 frequency];
  v71 = v28;
  v72 = v9;
  if (v29 == 3)
  {
    v30 = 127;
  }

  else
  {
    v32 = [v28 weeklyRecurrenceDays];
    v30 = v32;
    if ((v32 & 0x40) == 0)
    {
      v33 = MEMORY[0x277D84F90];
      if ((v32 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }
  }

  v34 = sub_252E32FF4();
  (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
  v35 = sub_252E33044();
  (*(*(v35 - 8) + 56))(v4, 1, 1, v35);
  sub_252E32B94();
  v33 = sub_2529F8F40(0, 1, 1, MEMORY[0x277D84F90]);
  v37 = v33[2];
  v36 = v33[3];
  if (v37 >= v36 >> 1)
  {
    v33 = sub_2529F8F40((v36 > 1), v37 + 1, 1, v33);
  }

  v33[2] = v37 + 1;
  v9 = v72;
  (*(v72 + 32))(v33 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v37, v26, v27);
  if (v30)
  {
LABEL_13:
    v38 = sub_252E32FF4();
    (*(*(v38 - 8) + 56))(v7, 1, 1, v38);
    v39 = sub_252E33044();
    (*(*(v39 - 8) + 56))(v4, 1, 1, v39);
    sub_252E32B94();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_2529F8F40(0, v33[2] + 1, 1, v33);
    }

    v41 = v33[2];
    v40 = v33[3];
    if (v41 >= v40 >> 1)
    {
      v33 = sub_2529F8F40((v40 > 1), v41 + 1, 1, v33);
    }

    v33[2] = v41 + 1;
    v42 = v33 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v41;
    v9 = v72;
    (*(v72 + 32))(v42, v19, v27);
  }

LABEL_18:
  if ((v30 & 2) != 0)
  {
    v43 = sub_252E32FF4();
    (*(*(v43 - 8) + 56))(v7, 1, 1, v43);
    v44 = sub_252E33044();
    (*(*(v44 - 8) + 56))(v4, 1, 1, v44);
    sub_252E32B94();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_2529F8F40(0, v33[2] + 1, 1, v33);
    }

    v46 = v33[2];
    v45 = v33[3];
    if (v46 >= v45 >> 1)
    {
      v33 = sub_2529F8F40((v45 > 1), v46 + 1, 1, v33);
    }

    v33[2] = v46 + 1;
    (*(v9 + 32))(v33 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v46, v16, v27);
    if ((v30 & 4) == 0)
    {
LABEL_20:
      if ((v30 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }
  }

  else if ((v30 & 4) == 0)
  {
    goto LABEL_20;
  }

  v47 = sub_252E32FF4();
  (*(*(v47 - 8) + 56))(v7, 1, 1, v47);
  v48 = sub_252E33044();
  (*(*(v48 - 8) + 56))(v4, 1, 1, v48);
  sub_252E32B94();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_2529F8F40(0, v33[2] + 1, 1, v33);
  }

  v50 = v33[2];
  v49 = v33[3];
  if (v50 >= v49 >> 1)
  {
    v33 = sub_2529F8F40((v49 > 1), v50 + 1, 1, v33);
  }

  v33[2] = v50 + 1;
  (*(v9 + 32))(v33 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v50, v68, v27);
  if ((v30 & 8) == 0)
  {
LABEL_21:
    if ((v30 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_34:
  v51 = sub_252E32FF4();
  (*(*(v51 - 8) + 56))(v7, 1, 1, v51);
  v52 = sub_252E33044();
  (*(*(v52 - 8) + 56))(v4, 1, 1, v52);
  sub_252E32B94();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_2529F8F40(0, v33[2] + 1, 1, v33);
  }

  v54 = v33[2];
  v53 = v33[3];
  if (v54 >= v53 >> 1)
  {
    v33 = sub_2529F8F40((v53 > 1), v54 + 1, 1, v33);
  }

  v33[2] = v54 + 1;
  (*(v9 + 32))(v33 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v54, v69, v27);
  if ((v30 & 0x10) == 0)
  {
LABEL_22:
    if ((v30 & 0x20) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

LABEL_39:
  v55 = sub_252E32FF4();
  (*(*(v55 - 8) + 56))(v7, 1, 1, v55);
  v56 = sub_252E33044();
  (*(*(v56 - 8) + 56))(v4, 1, 1, v56);
  sub_252E32B94();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_2529F8F40(0, v33[2] + 1, 1, v33);
  }

  v58 = v33[2];
  v57 = v33[3];
  if (v58 >= v57 >> 1)
  {
    v33 = sub_2529F8F40((v57 > 1), v58 + 1, 1, v33);
  }

  v33[2] = v58 + 1;
  (*(v9 + 32))(v33 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v58, v70, v27);
  if ((v30 & 0x20) != 0)
  {
LABEL_44:
    v59 = sub_252E32FF4();
    (*(*(v59 - 8) + 56))(v7, 1, 1, v59);
    v60 = sub_252E33044();
    (*(*(v60 - 8) + 56))(v4, 1, 1, v60);
    v61 = v67;
    sub_252E32B94();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_2529F8F40(0, v33[2] + 1, 1, v33);
    }

    v63 = v33[2];
    v62 = v33[3];
    if (v63 >= v62 >> 1)
    {
      v33 = sub_2529F8F40((v62 > 1), v63 + 1, 1, v33);
    }

    v33[2] = v63 + 1;
    (*(v9 + 32))(v33 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v63, v61, v27);
  }

LABEL_49:
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v64 = sub_252E36AD4();
  __swift_project_value_buffer(v64, qword_27F544D90);
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_252E379F4();

  v73 = 0xD000000000000011;
  v74 = 0x8000000252E85F80;
  v65 = MEMORY[0x2530AD730](v33, v27);
  MEMORY[0x2530AD570](v65);

  sub_252CC3D90(v73, v74, 0xD00000000000007ALL, 0x8000000252E85990);

  if (!v33[2])
  {

    return 0;
  }

  return v33;
}

uint64_t sub_252BB2304()
{
  if (*(v0 + 40) != 4)
  {
    return 1;
  }

  if (!*(v0 + 16))
  {
    return 0;
  }

  v1 = sub_252E35DB4();

  if (v1)
  {

    return 1;
  }

  if (sub_252E35D34())
  {

    if (!sub_252E35D84())
    {
      return 1;
    }
  }

  result = sub_252E35D84();
  if (!result)
  {
    return result;
  }

  v3 = sub_252E35D74();

  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    sub_252E35DD4();
    sub_252BBF590(&qword_27F542C38, MEMORY[0x277D56498], MEMORY[0x277D564A8]);
    result = sub_252E373E4();
    v5 = v18;
    v4 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);

    v7 = 0;
    v5 = v3;
  }

  v12 = (v6 + 64) >> 6;
  while (1)
  {
    if (v5 < 0)
    {
      if (!sub_252E37904() || (sub_252E35DD4(), swift_dynamicCast(), !v17))
      {
LABEL_27:
        sub_25291AE30(v5);

        return 0;
      }

      goto LABEL_18;
    }

    v15 = v7;
    v16 = v8;
    if (!v8)
    {
      break;
    }

LABEL_17:
    v8 = (v16 - 1) & v16;
    v13 = *(*(v5 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v13)
    {
      goto LABEL_27;
    }

LABEL_18:
    v14 = sub_252E35DB4();

    if (v14)
    {

      sub_25291AE30(v5);

      return 1;
    }
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_27;
    }

    v16 = *(v4 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252BB25AC()
{
  v0 = sub_252CC5E24(qword_2864A40D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A28, &qword_252E50370);
  result = swift_arrayDestroy();
  qword_27F575908 = v0;
  return result;
}

uint64_t sub_252BB2608()
{
  v0 = sub_252CC5DD4(&unk_2864A3CD8);
  result = sub_25293847C(&unk_2864A3CF8, &qword_27F543A38, &qword_252E50380);
  qword_27F575910 = v0;
  return result;
}

uint64_t sub_252BB2658()
{
  v0 = sub_252CC5DFC(&unk_2864A3DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A30, &qword_252E50378);
  result = swift_arrayDestroy();
  qword_27F575918 = v0;
  return result;
}

uint64_t sub_252BB26B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A08, &qword_252E502E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E502A0;
  *(v0 + 32) = 66;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A10, &qword_252E502E8);
  v2 = MEMORY[0x277D839B0];
  *(v0 + 40) = MEMORY[0x277D839B0];
  *(v0 + 64) = v1;
  *(v0 + 72) = 2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5439F8, &qword_252E502D0);
  v4 = MEMORY[0x277D83A90];
  *(v0 + 80) = MEMORY[0x277D83A90];
  *(v0 + 104) = v3;
  *(v0 + 112) = 5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A18, &qword_252E502F0);
  v6 = MEMORY[0x277D837D0];
  *(v0 + 120) = MEMORY[0x277D837D0];
  *(v0 + 144) = v5;
  *(v0 + 152) = 59;
  *(v0 + 160) = v4;
  *(v0 + 184) = v3;
  *(v0 + 192) = 3;
  *(v0 + 200) = v4;
  *(v0 + 224) = v3;
  *(v0 + 232) = 11;
  *(v0 + 240) = v4;
  *(v0 + 264) = v3;
  *(v0 + 272) = 7;
  *(v0 + 280) = v4;
  *(v0 + 304) = v3;
  *(v0 + 312) = 8;
  *(v0 + 320) = v2;
  *(v0 + 344) = v1;
  *(v0 + 352) = 10;
  *(v0 + 360) = v2;
  *(v0 + 384) = v1;
  *(v0 + 392) = 9;
  *(v0 + 400) = v4;
  *(v0 + 424) = v3;
  *(v0 + 432) = 27;
  *(v0 + 440) = v2;
  *(v0 + 464) = v1;
  *(v0 + 472) = 12;
  *(v0 + 480) = v6;
  *(v0 + 504) = v5;
  *(v0 + 512) = 6;
  *(v0 + 544) = v3;
  *(v0 + 520) = v4;
  *(v0 + 552) = 32;
  *(v0 + 584) = v1;
  *(v0 + 560) = v2;
  *(v0 + 592) = 33;
  *(v0 + 624) = v3;
  *(v0 + 600) = v4;
  *(v0 + 632) = 34;
  *(v0 + 664) = v3;
  *(v0 + 640) = v4;
  *(v0 + 672) = 35;
  *(v0 + 704) = v1;
  *(v0 + 680) = v2;
  *(v0 + 712) = 36;
  *(v0 + 744) = v3;
  *(v0 + 720) = v4;
  *(v0 + 752) = 37;
  *(v0 + 784) = v3;
  *(v0 + 760) = v4;
  *(v0 + 792) = 31;
  *(v0 + 824) = v1;
  *(v0 + 800) = v2;
  *(v0 + 832) = 38;
  *(v0 + 864) = v1;
  *(v0 + 840) = v2;
  *(v0 + 872) = 40;
  *(v0 + 904) = v1;
  *(v0 + 880) = v2;
  *(v0 + 912) = 42;
  *(v0 + 944) = v3;
  *(v0 + 920) = v4;
  *(v0 + 952) = 41;
  *(v0 + 984) = v1;
  *(v0 + 960) = v2;
  *(v0 + 992) = 39;
  *(v0 + 1024) = v1;
  *(v0 + 1000) = v2;
  *(v0 + 1032) = 14;
  *(v0 + 1064) = v5;
  *(v0 + 1040) = v6;
  *(v0 + 1072) = 4;
  *(v0 + 1104) = v3;
  *(v0 + 1080) = v4;
  *(v0 + 1112) = 29;
  *(v0 + 1144) = v3;
  *(v0 + 1120) = v4;
  *(v0 + 1152) = 30;
  *(v0 + 1184) = v5;
  *(v0 + 1160) = v6;
  *(v0 + 1192) = 28;
  *(v0 + 1224) = v5;
  *(v0 + 1200) = v6;
  *(v0 + 1232) = 43;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A00, &qword_252E502D8);
  v8 = MEMORY[0x277D83B88];
  *(v0 + 1264) = v7;
  *(v0 + 1240) = v8;
  *(v0 + 1272) = 44;
  *(v0 + 1304) = v5;
  *(v0 + 1280) = v6;
  *(v0 + 1312) = 45;
  *(v0 + 1344) = v5;
  *(v0 + 1320) = v6;
  *(v0 + 1352) = 13;
  *(v0 + 1384) = v5;
  *(v0 + 1360) = v6;
  *(v0 + 1392) = 46;
  *(v0 + 1424) = v7;
  *(v0 + 1400) = v8;
  *(v0 + 1432) = 19;
  *(v0 + 1464) = v3;
  *(v0 + 1440) = v4;
  *(v0 + 1472) = 17;
  *(v0 + 1504) = v3;
  *(v0 + 1480) = v4;
  *(v0 + 1512) = 56;
  *(v0 + 1544) = v3;
  *(v0 + 1520) = v4;
  *(v0 + 1552) = 55;
  *(v0 + 1584) = v3;
  *(v0 + 1560) = v4;
  *(v0 + 1592) = 47;
  *(v0 + 1624) = v5;
  *(v0 + 1600) = v6;
  *(v0 + 1632) = 15;
  *(v0 + 1664) = v5;
  *(v0 + 1640) = v6;
  *(v0 + 1672) = 20;
  *(v0 + 1704) = v5;
  *(v0 + 1680) = v6;
  *(v0 + 1712) = 23;
  *(v0 + 1744) = v3;
  *(v0 + 1720) = v4;
  *(v0 + 1752) = 24;
  *(v0 + 1784) = v3;
  *(v0 + 1760) = v4;
  *(v0 + 1792) = 18;
  *(v0 + 1824) = v5;
  *(v0 + 1800) = v6;
  *(v0 + 1832) = 48;
  *(v0 + 1864) = v1;
  *(v0 + 1840) = v2;
  *(v0 + 1872) = 49;
  *(v0 + 1904) = v3;
  *(v0 + 1880) = v4;
  *(v0 + 1912) = 26;
  *(v0 + 1944) = v7;
  *(v0 + 1920) = v8;
  *(v0 + 1952) = 51;
  *(v0 + 1984) = v7;
  *(v0 + 1960) = v8;
  *(v0 + 1992) = 22;
  *(v0 + 2024) = v5;
  *(v0 + 2000) = v6;
  *(v0 + 2032) = 58;
  *(v0 + 2064) = v3;
  *(v0 + 2040) = v4;
  *(v0 + 2072) = 53;
  *(v0 + 2104) = v3;
  *(v0 + 2080) = v4;
  *(v0 + 2112) = 54;
  *(v0 + 2144) = v3;
  *(v0 + 2120) = v4;
  *(v0 + 2152) = 57;
  *(v0 + 2184) = v3;
  *(v0 + 2160) = v4;
  *(v0 + 2192) = 67;
  v9 = type metadata accessor for HomeAttributeCleaningJob();
  *(v0 + 2224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A20, qword_252E502F8);
  *(v0 + 2200) = v9;
  v10 = sub_252CC5E4C(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545060, &qword_252E5A3E0);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F575920 = v10;
  return result;
}

void sub_252BB2B50(uint64_t a1)
{
  v221 = *(v1 + 32);
  v225 = *(v1 + 48);
  v215 = *(v1 + 80);
  v216 = *(v1 + 88);
  v4 = *(v1 + 128);
  v222 = *(v1 + 120);
  v223 = *(v1 + 112);
  v5 = *(v1 + 144);
  v230 = *(v1 + 152);
  v224 = *(v1 + 160);
  v226 = *(v1 + 168);
  v227 = *(v1 + 224);
  v228 = *(v1 + 104);
  v256 = *(v1 + 232);
  *&v220 = *(v1 + 272);
  *(&v220 + 1) = *(v1 + 248);
  v255 = *(v1 + 389);
  v240 = sub_252A47B1C(*(v1 + 136));
  v231 = sub_252A47B1C(v5);
  v249 = a1 >> 62;
  v245 = *(v4 + 16);
  v229 = v4;
  if (!v245)
  {
LABEL_60:
    v8 = 0;
    v5 = 0;
LABEL_61:
    v214 = v8;
    v219 = v5;
    v245 = *(v230 + 16);
    if (v245)
    {
      v5 = 0;
      v55 = a1 & 0xFFFFFFFFFFFFFF8;
      v253 = (a1 & 0xFFFFFFFFFFFFFF8);
      if (a1 < 0)
      {
        v55 = a1;
      }

      v244 = v55;
      v56 = v230;
LABEL_68:
      if (v5 >= *(v56 + 16))
      {
        goto LABEL_394;
      }

      v57 = (v230 + 32 + 16 * v5);
      v9 = *v57;
      v254 = v57[1];
      if (v249)
      {
        v58 = sub_252E378C4();
        if (v58)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v58 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v58)
        {
LABEL_71:
          ++v5;

          v59 = 0;
          while (1)
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v60 = MEMORY[0x2530ADF00](v59, a1);
            }

            else
            {
              if (v59 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_383;
              }

              v60 = *(a1 + 8 * v59 + 32);
            }

            v61 = v60;
            v62 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
              goto LABEL_382;
            }

            v63 = [v60 homeName];
            if (v63)
            {
              v64 = v63;
              v2 = sub_252E36F34();
              v66 = v65;

              if (v2 == v9 && v66 == v254)
              {
LABEL_116:

LABEL_66:

                goto LABEL_67;
              }

              v68 = sub_252E37DB4();

              if (v68)
              {
                goto LABEL_117;
              }
            }

            v69 = [v61 roomName];
            if (v69)
            {
              v2 = v69;
              v70 = sub_252E36F34();
              v72 = v71;

              if (v70 == v9 && v72 == v254)
              {
                goto LABEL_116;
              }

              v73 = sub_252E37DB4();

              if (v73)
              {
                goto LABEL_117;
              }
            }

            v74 = [v61 groupName];
            if (v74)
            {
              v75 = v74;
              v2 = sub_252E36F34();
              v77 = v76;

              if (v2 == v9 && v77 == v254)
              {
                goto LABEL_116;
              }

              v78 = sub_252E37DB4();

              if (v78)
              {
LABEL_117:

                goto LABEL_66;
              }
            }

            v79 = [v61 zoneName];
            if (v79)
            {
              v80 = v79;
              v2 = sub_252E36F34();
              v82 = v81;

              if (v2 == v9 && v82 == v254)
              {
LABEL_65:

                goto LABEL_66;
              }

              v83 = sub_252E37DB4();

              if (v83)
              {
                goto LABEL_115;
              }
            }

            v84 = [v61 homeEntityName];
            if (v84)
            {
              v85 = v84;
              v2 = sub_252E36F34();
              v87 = v86;

              if (v2 == v9 && v87 == v254)
              {
                goto LABEL_65;
              }

              v88 = sub_252E37DB4();

              if (v88)
              {
                goto LABEL_115;
              }
            }

            v89 = [v61 outerDeviceName];
            if (v89)
            {
              v90 = v89;
              v2 = sub_252E36F34();
              v92 = v91;

              if (v2 == v9 && v92 == v254)
              {
                goto LABEL_65;
              }

              v93 = sub_252E37DB4();

              if (v93)
              {
                goto LABEL_115;
              }
            }

            v94 = [v61 targetArea];
            if (v94)
            {
              v95 = v94;
              v2 = sub_252E36F34();
              v97 = v96;

              if (v2 == v9 && v97 == v254)
              {
                goto LABEL_65;
              }

              v98 = sub_252E37DB4();

              if (v98)
              {
LABEL_115:

LABEL_67:
                v56 = v230;
                if (v5 == v245)
                {
                  goto LABEL_120;
                }

                goto LABEL_68;
              }
            }

            v99 = [v61 targetMap];
            if (v99)
            {
              v100 = v99;
              v2 = sub_252E36F34();
              v102 = v101;

              if (v2 == v9 && v102 == v254)
              {
                goto LABEL_65;
              }

              v103 = sub_252E37DB4();

              if (v103)
              {
                goto LABEL_66;
              }
            }

            else
            {
            }

            ++v59;
            if (v62 == v58)
            {
              goto LABEL_121;
            }
          }
        }
      }
    }

    else
    {
LABEL_120:
      v9 = 0;
      v254 = 0;
    }

LABEL_121:
    v104 = v228;
    v105 = v226;
    v253 = *(v226 + 16);
    if (v253)
    {
      v106 = 0;
      v5 = a1 & 0xC000000000000001;
LABEL_123:
      if (v106 >= *(v105 + 16))
      {
        goto LABEL_401;
      }

      v107 = (v226 + 32 + 16 * v106);
      v236 = *v107;
      v245 = v107[1];
      if (v249)
      {
        v108 = sub_252E378C4();
      }

      else
      {
        v108 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v108)
      {
        v109 = 0;
        ++v106;
        while (v108 != v109)
        {
          if (v5)
          {
            v110 = MEMORY[0x2530ADF00](v109, a1);
          }

          else
          {
            if (v109 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_371;
            }

            v110 = *(a1 + 8 * v109 + 32);
          }

          v111 = v110;
          if (__OFADD__(v109, 1))
          {
            __break(1u);
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
            goto LABEL_380;
          }

          v2 = sub_252A1FCFC(v236, v245);

          ++v109;
          if (v2)
          {

            v105 = v226;
            if (v106 == v253)
            {
              v236 = 0;
              v245 = 0;
              break;
            }

            goto LABEL_123;
          }
        }
      }

      v104 = v228;
    }

    else
    {
      v236 = 0;
      v245 = 0;
    }

    v112 = v227;
    v218 = *(v227 + 16);
    if (v218)
    {
      v5 = 0;
      if (a1 < 0)
      {
        v113 = a1;
      }

      else
      {
        v113 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v253 = v113;
LABEL_146:
      if (v5 >= *(v112 + 16))
      {
        goto LABEL_402;
      }

      v114 = (v227 + 32 + 16 * v5);
      v235 = *v114;
      v244 = v114[1];
      if (v249)
      {
        v115 = sub_252E378C4();
      }

      else
      {
        v115 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v115)
      {
        v116 = 0;
        ++v5;
        while (v115 != v116)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v117 = MEMORY[0x2530ADF00](v116, a1);
          }

          else
          {
            if (v116 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_373;
            }

            v117 = *(a1 + 8 * v116 + 32);
          }

          v118 = v117;
          if (__OFADD__(v116, 1))
          {
            goto LABEL_372;
          }

          v2 = sub_252A1FCFC(v235, v244);

          ++v116;
          if (v2)
          {

            v112 = v227;
            if (v5 == v218)
            {
              v235 = 0;
              v244 = 0;
              break;
            }

            goto LABEL_146;
          }
        }
      }

      v104 = v228;
    }

    else
    {
      v235 = 0;
      v244 = 0;
    }

    v217 = *(v104 + 16);
    if (v217)
    {
      v119 = v104;
      v5 = 0;
      v120 = v104 + 32;
      if (a1 < 0)
      {
        v121 = a1;
      }

      else
      {
        v121 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v253 = v121;
LABEL_169:
      if (v5 >= *(v119 + 16))
      {
        goto LABEL_403;
      }

      v122 = (v120 + 16 * v5);
      v234 = *v122;
      v239 = v122[1];
      if (v249)
      {
        v123 = sub_252E378C4();
      }

      else
      {
        v123 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v123)
      {
        v124 = 0;
        ++v5;
        while (v123 != v124)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v125 = MEMORY[0x2530ADF00](v124, a1);
          }

          else
          {
            if (v124 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_375;
            }

            v125 = *(a1 + 8 * v124 + 32);
          }

          v126 = v125;
          if (__OFADD__(v124, 1))
          {
            goto LABEL_374;
          }

          v2 = sub_252A1FCFC(v234, v239);

          ++v124;
          if (v2)
          {

            v119 = v228;
            if (v5 != v217)
            {
              goto LABEL_169;
            }

            goto LABEL_185;
          }
        }
      }
    }

    else
    {
LABEL_185:
      v234 = 0;
      v239 = 0;
    }

    v127 = v225;
    v253 = *(v225 + 16);
    if (v253)
    {
      v128 = 0;
      v5 = a1 & 0xC000000000000001;
LABEL_188:
      if (v128 >= *(v127 + 16))
      {
        goto LABEL_404;
      }

      v129 = (v225 + 32 + 16 * v128);
      v233 = *v129;
      v238 = v129[1];
      if (v249)
      {
        v130 = sub_252E378C4();
      }

      else
      {
        v130 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v130)
      {
        v131 = 0;
        ++v128;
        while (v130 != v131)
        {
          if (v5)
          {
            v132 = MEMORY[0x2530ADF00](v131, a1);
          }

          else
          {
            if (v131 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_377;
            }

            v132 = *(a1 + 8 * v131 + 32);
          }

          v133 = v132;
          if (__OFADD__(v131, 1))
          {
            goto LABEL_376;
          }

          v2 = sub_252A1FCFC(v233, v238);

          ++v131;
          if (v2)
          {

            v127 = v225;
            if (v128 != v253)
            {
              goto LABEL_188;
            }

            goto LABEL_204;
          }
        }
      }
    }

    else
    {
LABEL_204:
      v233 = 0;
      v238 = 0;
    }

    v134 = v224;
    v253 = *(v224 + 16);
    if (v253)
    {
      v135 = 0;
      v5 = a1 & 0xC000000000000001;
LABEL_207:
      if (v135 >= *(v134 + 16))
      {
        goto LABEL_405;
      }

      v136 = (v224 + 32 + 16 * v135);
      v232 = *v136;
      v237 = v136[1];
      if (v249)
      {
        v137 = sub_252E378C4();
      }

      else
      {
        v137 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v137)
      {
        v138 = 0;
        ++v135;
        while (v137 != v138)
        {
          if (v5)
          {
            v139 = MEMORY[0x2530ADF00](v138, a1);
          }

          else
          {
            if (v138 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_379;
            }

            v139 = *(a1 + 8 * v138 + 32);
          }

          v140 = v139;
          if (__OFADD__(v138, 1))
          {
            goto LABEL_378;
          }

          v2 = sub_252A1FCFC(v232, v237);

          ++v138;
          if (v2)
          {

            v134 = v224;
            if (v135 != v253)
            {
              goto LABEL_207;
            }

            goto LABEL_223;
          }
        }
      }
    }

    else
    {
LABEL_223:
      v232 = 0;
      v237 = 0;
    }

    v141 = v240;
    v247 = *(v240 + 2);
    if (!v247)
    {
LABEL_244:

      v253 = 0;
LABEL_245:
      v147 = v231;
      v241 = *(v231 + 2);
      if (!v241)
      {
LABEL_265:

        v2 = 0;
        goto LABEL_266;
      }

      v148 = 0;
      v5 = a1 & 0xC000000000000001;
LABEL_247:
      if (v148 >= *(v147 + 2))
      {
        goto LABEL_400;
      }

      v2 = *&v231[8 * v148 + 32];
      if (v249)
      {
        v149 = sub_252E378C4();
        if (v149)
        {
LABEL_250:
          v150 = v148;
          v151 = 0;
          v251 = v150 + 1;
          while (v149 != v151)
          {
            if (v5)
            {
              v152 = MEMORY[0x2530ADF00](v151, a1);
            }

            else
            {
              if (v151 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_391;
              }

              v152 = *(a1 + 8 * v151 + 32);
            }

            v153 = v152;
            if (__OFADD__(v151, 1))
            {
              goto LABEL_390;
            }

            if ([v152 deviceType] == v2)
            {

LABEL_261:
              v148 = v251;
              v147 = v231;
              if (v251 != v241)
              {
                goto LABEL_247;
              }

              goto LABEL_265;
            }

            v154 = [v153 outerDeviceType];

            ++v151;
            if (v154 == v2)
            {
              goto LABEL_261;
            }
          }
        }
      }

      else
      {
        v149 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v149)
        {
          goto LABEL_250;
        }
      }

LABEL_266:
      v155 = v223;
      v231 = v2;
      v242 = *(v223 + 16);
      if (!v242)
      {
LABEL_285:
        v248 = 0;
        v252 = 0;
LABEL_286:
        v162 = v222;
        v213 = *(v222 + 16);
        if (!v213)
        {
LABEL_305:
          v243 = 0;
          v166 = 0;
LABEL_306:
          v171 = v229;
          if (v220 != 0 && (sub_252CDFDD4() & 1) != 0)
          {

            if (!v217)
            {
              v248 = 0;
              v252 = 0;
              if (v218)
              {
                goto LABEL_328;
              }

              goto LABEL_348;
            }

            v5 = 0;
            v172 = v228;
LABEL_310:
            if (v5 < *(v172 + 16))
            {
              v173 = (v228 + 32 + 16 * v5);
              v248 = *v173;
              v252 = v173[1];
              if (v249)
              {
                v174 = sub_252E378C4();
              }

              else
              {
                v174 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (v174)
              {
                v175 = 0;
                ++v5;
                while (1)
                {
                  v2 = v231;
                  if (v174 == v175)
                  {
                    break;
                  }

                  if ((a1 & 0xC000000000000001) != 0)
                  {
                    v176 = MEMORY[0x2530ADF00](v175, a1);
                  }

                  else
                  {
                    if (v175 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_396;
                    }

                    v176 = *(a1 + 8 * v175 + 32);
                  }

                  v177 = v176;
                  if (__OFADD__(v175, 1))
                  {
                    goto LABEL_395;
                  }

                  v178 = sub_252A1FCFC(v248, v252);

                  ++v175;
                  if (v178)
                  {

                    v172 = v228;
                    v2 = v231;
                    if (v5 != v217)
                    {
                      goto LABEL_310;
                    }

                    goto LABEL_392;
                  }
                }
              }

              v234 = 0;
              v239 = 0;
              goto LABEL_327;
            }

            goto LABEL_414;
          }

LABEL_349:
          type metadata accessor for HomeFilter.Builder();
          swift_allocObject();
          HomeFilter.Builder.init()();
          v189 = v188;
          if (v219)
          {
            v190 = v219;

            v191 = v214;
          }

          else
          {
            v191 = v9;
            v190 = v254;
          }

          v192 = (*(*v189 + 576))(v191, v190);

          if (v256 == 1)
          {
            if (*(v171 + 16) || sub_2529A6F1C(19, v215))
            {
              v193 = 5;
            }

            else
            {
              v193 = 7;
            }
          }

          else
          {
            v193 = 6;
          }

          v194 = (*(*v192 + 592))(v193);

          v195 = (*(*v194 + 600))(v2);

          v196 = (*(*v195 + 608))(v236, v245);

          v197 = (*(*v196 + 624))(v253);

          v198 = (*(*v197 + 632))(v233, v238);

          v199 = (*(*v198 + 648))(v235, v244);

          v200 = (*(*v199 + 696))(v248, v252);

          v201 = (*(*v200 + 712))(v243, v166);

          v202 = (*(*v201 + 664))(v232, v237);

          v203 = (*(*v202 + 680))(v234, v239);

          v204 = sub_2529A6DAC(2u, v221) || sub_2529A6DAC(3u, v221) || sub_2529A6F34(0, v216);
          v205 = (*(*v203 + 736))(v204);

          v206 = (*(*v205 + 744))(v255);

          v5 = (*(*v206 + 760))(v207);

          if (!v249)
          {
            v208 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v208)
            {
              return;
            }

            goto LABEL_363;
          }

LABEL_408:
          v208 = sub_252E378C4();
          if (!v208)
          {
            return;
          }

LABEL_363:
          v209 = __OFSUB__(v208, 1);
          v210 = v208 - 1;
          if (v209)
          {
            __break(1u);
          }

          else if ((a1 & 0xC000000000000001) == 0)
          {
            if ((v210 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v210 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v211 = *(a1 + 8 * v210 + 32);
LABEL_368:
              v212 = v211;
              sub_252A20280(v5);

              return;
            }

            __break(1u);
LABEL_414:
            __break(1u);
            goto LABEL_415;
          }

          v211 = MEMORY[0x2530ADF00](v210, a1);
          goto LABEL_368;
        }

        v163 = 0;
        v164 = v222 + 32;
        v5 = a1 & 0xC000000000000001;
        while (v163 < *(v162 + 16))
        {
          v165 = (v164 + 16 * v163);
          v166 = v165[1];
          v243 = *v165;
          if (v249)
          {
            v167 = sub_252E378C4();
          }

          else
          {
            v167 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v167)
          {
            goto LABEL_306;
          }

          v168 = 0;
          ++v163;
          do
          {
            if (v167 == v168)
            {
              v2 = v231;
              goto LABEL_306;
            }

            if (v5)
            {
              v169 = MEMORY[0x2530ADF00](v168, a1);
            }

            else
            {
              if (v168 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_389;
              }

              v169 = *(a1 + 8 * v168 + 32);
            }

            v170 = v169;
            if (__OFADD__(v168, 1))
            {
              goto LABEL_388;
            }

            v2 = sub_252A1FCFC(v243, v166);

            ++v168;
          }

          while ((v2 & 1) == 0);

          v164 = v222 + 32;
          v162 = v222;
          v2 = v231;
          if (v163 == v213)
          {
            goto LABEL_305;
          }
        }

LABEL_407:
        __break(1u);
        goto LABEL_408;
      }

      v156 = 0;
      v5 = a1 & 0xC000000000000001;
      while (v156 < *(v155 + 16))
      {
        v157 = (v223 + 32 + 16 * v156);
        v248 = *v157;
        v252 = v157[1];
        if (v249)
        {
          v158 = sub_252E378C4();
        }

        else
        {
          v158 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v158)
        {
          goto LABEL_286;
        }

        v159 = 0;
        ++v156;
        do
        {
          if (v158 == v159)
          {
            v2 = v231;
            goto LABEL_286;
          }

          if (v5)
          {
            v160 = MEMORY[0x2530ADF00](v159, a1);
          }

          else
          {
            if (v159 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_385;
            }

            v160 = *(a1 + 8 * v159 + 32);
          }

          v161 = v160;
          if (__OFADD__(v159, 1))
          {
            goto LABEL_384;
          }

          v2 = sub_252A1FCFC(v248, v252);

          ++v159;
        }

        while ((v2 & 1) == 0);

        v155 = v223;
        v2 = v231;
        if (v156 == v242)
        {
          goto LABEL_285;
        }
      }

LABEL_406:
      __break(1u);
      goto LABEL_407;
    }

    v142 = 0;
    v5 = a1 & 0xC000000000000001;
LABEL_226:
    if (v142 >= *(v141 + 2))
    {
      goto LABEL_399;
    }

    v253 = *&v240[8 * v142 + 32];
    if (v249)
    {
      v143 = sub_252E378C4();
      if (v143)
      {
LABEL_229:
        v144 = 0;
        ++v142;
        while (v143 != v144)
        {
          if (v5)
          {
            v145 = MEMORY[0x2530ADF00](v144, a1);
          }

          else
          {
            if (v144 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_387;
            }

            v145 = *(a1 + 8 * v144 + 32);
          }

          v146 = v145;
          if (__OFADD__(v144, 1))
          {
            goto LABEL_386;
          }

          if ([v145 deviceType] == v253)
          {

LABEL_240:
            v141 = v240;
            if (v142 != v247)
            {
              goto LABEL_226;
            }

            goto LABEL_244;
          }

          v2 = [v146 outerDeviceType];

          ++v144;
          if (v2 == v253)
          {
            goto LABEL_240;
          }
        }
      }
    }

    else
    {
      v143 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v143)
      {
        goto LABEL_229;
      }
    }

    goto LABEL_245;
  }

  v2 = 0;
  v246 = v4 + 32;
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  v254 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v6 = a1;
  }

  v244 = v6;
  v253 = (a1 & 0xC000000000000001);
  while (1)
  {
    if (v2 >= *(v229 + 16))
    {
      __break(1u);
LABEL_394:
      __break(1u);
LABEL_395:
      __break(1u);
LABEL_396:
      __break(1u);
LABEL_397:
      __break(1u);
LABEL_398:
      __break(1u);
LABEL_399:
      __break(1u);
LABEL_400:
      __break(1u);
LABEL_401:
      __break(1u);
LABEL_402:
      __break(1u);
LABEL_403:
      __break(1u);
LABEL_404:
      __break(1u);
LABEL_405:
      __break(1u);
      goto LABEL_406;
    }

    v7 = (v246 + 16 * v2);
    v8 = *v7;
    v5 = v7[1];
    if (!v249)
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        goto LABEL_59;
      }

      goto LABEL_11;
    }

    v9 = sub_252E378C4();
    if (!v9)
    {
LABEL_59:

      goto LABEL_61;
    }

LABEL_11:
    v250 = ++v2;

    v10 = 0;
LABEL_12:
    if (v253)
    {
      v11 = MEMORY[0x2530ADF00](v10, a1);
    }

    else
    {
      if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_381;
      }

      v11 = *(a1 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v14 = [v11 homeName];
    if (v14)
    {
      v15 = v14;
      v16 = sub_252E36F34();
      v18 = v17;

      if (v16 == v8 && v18 == v5)
      {
LABEL_56:

LABEL_6:

        goto LABEL_7;
      }

      v2 = sub_252E37DB4();

      if (v2)
      {
        goto LABEL_57;
      }
    }

    v20 = [v12 roomName];
    if (v20)
    {
      v21 = v20;
      v22 = sub_252E36F34();
      v24 = v23;

      if (v22 == v8 && v24 == v5)
      {
        goto LABEL_56;
      }

      v2 = sub_252E37DB4();

      if (v2)
      {
        goto LABEL_57;
      }
    }

    v25 = [v12 groupName];
    if (v25)
    {
      v26 = v25;
      v27 = sub_252E36F34();
      v29 = v28;

      if (v27 == v8 && v29 == v5)
      {
        goto LABEL_56;
      }

      v2 = sub_252E37DB4();

      if (v2)
      {
LABEL_57:

        goto LABEL_6;
      }
    }

    v30 = [v12 zoneName];
    if (v30)
    {
      v31 = v30;
      v32 = sub_252E36F34();
      v34 = v33;

      if (v32 == v8 && v34 == v5)
      {
LABEL_5:

        goto LABEL_6;
      }

      v2 = sub_252E37DB4();

      if (v2)
      {
        goto LABEL_55;
      }
    }

    v35 = [v12 homeEntityName];
    if (v35)
    {
      v36 = v35;
      v37 = sub_252E36F34();
      v39 = v38;

      if (v37 == v8 && v39 == v5)
      {
        goto LABEL_5;
      }

      v2 = sub_252E37DB4();

      if (v2)
      {
        goto LABEL_55;
      }
    }

    v40 = [v12 outerDeviceName];
    if (v40)
    {
      v41 = v40;
      v42 = sub_252E36F34();
      v44 = v43;

      if (v42 == v8 && v44 == v5)
      {
        goto LABEL_5;
      }

      v2 = sub_252E37DB4();

      if (v2)
      {
        goto LABEL_55;
      }
    }

    v45 = [v12 targetArea];
    if (!v45)
    {
      goto LABEL_46;
    }

    v46 = v45;
    v47 = sub_252E36F34();
    v49 = v48;

    if (v47 == v8 && v49 == v5)
    {
      goto LABEL_5;
    }

    v2 = sub_252E37DB4();

    if ((v2 & 1) == 0)
    {
LABEL_46:
      v50 = [v12 targetMap];
      if (v50)
      {
        v51 = v50;
        v52 = sub_252E36F34();
        v54 = v53;

        if (v52 == v8 && v54 == v5)
        {
          goto LABEL_5;
        }

        v2 = sub_252E37DB4();

        if (v2)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }

      ++v10;
      if (v13 == v9)
      {
        goto LABEL_61;
      }

      goto LABEL_12;
    }

LABEL_55:

LABEL_7:
    v2 = v250;
    if (v250 == v245)
    {
      goto LABEL_60;
    }
  }

LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  __break(1u);
LABEL_383:
  __break(1u);
LABEL_384:
  __break(1u);
LABEL_385:
  __break(1u);
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  __break(1u);
LABEL_389:
  __break(1u);
LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  v248 = 0;
  v252 = 0;
LABEL_327:
  v171 = v229;
  if (!v218)
  {
LABEL_348:
    v243 = 0;
    v166 = 0;
    goto LABEL_349;
  }

LABEL_328:
  v179 = 0;
  v180 = v227;
  v181 = v227 + 32;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_329:
  if (v179 < *(v180 + 16))
  {
    v182 = (v181 + 16 * v179);
    v166 = v182[1];
    v243 = *v182;
    if (v249)
    {
      v183 = sub_252E378C4();
    }

    else
    {
      v183 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v183)
    {
      v184 = 0;
      ++v179;
      while (1)
      {
        v2 = v231;
        if (v183 == v184)
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v185 = MEMORY[0x2530ADF00](v184, a1);
        }

        else
        {
          if (v184 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_398;
          }

          v185 = *(a1 + 8 * v184 + 32);
        }

        v186 = v185;
        if (__OFADD__(v184, 1))
        {
          goto LABEL_397;
        }

        v187 = sub_252A1FCFC(v243, v166);

        ++v184;
        if (v187)
        {

          v180 = v227;
          v181 = v227 + 32;
          v2 = v231;
          if (v179 == v218)
          {
            v243 = 0;
            v166 = 0;
            goto LABEL_346;
          }

          goto LABEL_329;
        }
      }
    }

    v235 = 0;
    v244 = 0;
LABEL_346:
    v171 = v229;
    goto LABEL_349;
  }

LABEL_415:
  __break(1u);
}