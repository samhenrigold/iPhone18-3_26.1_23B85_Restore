uint64_t HomeStore.accessories(with:in:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v3 != 2 && (v3 & 1) == 0)
  {
    sub_2529318DC();
    v7 = swift_allocError();
    *v15 = 12;
    return v7;
  }

  if (a2)
  {
    v4 = sub_2529E7424();
  }

  else
  {
    v5 = sub_2529D8DC0();
    v4 = sub_2529EE3C8(v5);
  }

  v21 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_42;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = 0;
    v18 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v18)
      {
        MEMORY[0x2530ADF00](v8, v4);
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v12 = v21;
          v7 = MEMORY[0x277D84F90];
          goto LABEL_22;
        }
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v6 = sub_252E378C4();
          goto LABEL_8;
        }

        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_19;
        }
      }

      v20[0] = sub_252E32E24();
      v20[1] = v10;
      MEMORY[0x28223BE20](v20[0]);
      v17[2] = v20;
      v11 = sub_2529ED970(sub_252A00B98, v17, v19);

      if (v11)
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v8;
      if (v9 == v6)
      {
        goto LABEL_20;
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_22:

  v20[0] = v7;
  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    v13 = sub_252E378C4();
    if (v13)
    {
LABEL_25:
      v4 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v4, v12);
          v14 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (v4 >= *(v12 + 16))
          {
            goto LABEL_41;
          }

          v14 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_40;
          }
        }

        MEMORY[0x2530AD700]();
        if (*((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v4;
      }

      while (v14 != v13);
      v7 = v20[0];
    }
  }

  else
  {
    v13 = *(v12 + 16);
    if (v13)
    {
      goto LABEL_25;
    }
  }

  return v7;
}

unint64_t HomeStore.getServices(matching:supporting:)(unint64_t a1, void *a2)
{
  if (MEMORY[0x277D84F90] >> 62 && sub_252E378C4())
  {
    v3 = sub_2529FF6BC(MEMORY[0x277D84F90], &qword_27F541860, &qword_252E40AF0);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  result = HomeStore.accessories(matching:supporting:)(a1, a2);
  v5 = result;
  if (v6)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544CB8);
    sub_252E379F4();
    MEMORY[0x2530AD570](32, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E711C0);
    v8 = type metadata accessor for HomeFilter();
    v9 = MEMORY[0x2530AD730](a1, v8);
    MEMORY[0x2530AD570](v9);

    MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E711F0);
    v10 = HomeAttributeType.description.getter([a2 attribute]);
    MEMORY[0x2530AD570](v10);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007FLL, 0x8000000252E70FD0, 0xD000000000000021, 0x8000000252E71210, 212);

    v11 = 1;
    goto LABEL_19;
  }

  if (!(result >> 62))
  {
    v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_18:
    v11 = 0;
LABEL_19:
    sub_252A00A2C(v5, v11, MEMORY[0x277D84FB8]);
    return v3;
  }

  result = sub_252E378C4();
  v12 = result;
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_9:
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = v5 & 0xC000000000000001;
    v15 = v5;
    do
    {
      if (v14)
      {
        MEMORY[0x2530ADF00](v13, v5);
      }

      else
      {
      }

      ++v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540228, &unk_252E3D910);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      *(inited + 32) = [a2 attribute];
      v17 = sub_252D51310(a1);
      v18 = sub_252C75958(v17);

      v19 = sub_252D51460(inited);
      swift_setDeallocating();
      v20 = sub_252C75958(v19);

      v21 = sub_2529F9A94(v20, v18);

      v3 = sub_2529F2424(v21, v3);

      v5 = v15;
    }

    while (v12 != v13);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

unint64_t HomeStore.getAccessories(matching:supporting:)(unint64_t a1, void *a2)
{
  if (MEMORY[0x277D84F90] >> 62 && sub_252E378C4())
  {
    v4 = sub_2529FF6BC(MEMORY[0x277D84F90], &qword_27F541858, &qword_252E40AE8);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  v5 = HomeStore.accessories(matching:supporting:)(a1, a2);
  if (v6)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544CB8);
    sub_252E379F4();
    MEMORY[0x2530AD570](32, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E711C0);
    v8 = type metadata accessor for HomeFilter();
    v9 = MEMORY[0x2530AD730](a1, v8);
    MEMORY[0x2530AD570](v9);

    MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E711F0);
    v10 = HomeAttributeType.description.getter([a2 attribute]);
    MEMORY[0x2530AD570](v10);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007FLL, 0x8000000252E70FD0, 0xD000000000000024, 0x8000000252E71240, 230);

    v11 = 1;
  }

  else
  {

    v4 = sub_252C759D4(v5);
    v11 = 0;
  }

  sub_252A00A2C(v5, v11, MEMORY[0x277D84FB8]);
  return v4;
}

uint64_t sub_2529F53FC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v3 == 2 || (v3 & 1) == 0)
  {
LABEL_25:
    sub_2529318DC();
    v10 = swift_allocError();
    *v17 = 12;
  }

  else
  {
    v6 = sub_2529DA828();
    v7 = v6;
    if (v6 >> 62)
    {
      goto LABEL_31;
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (1)
      {
        v9 = 0;
        while ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x2530ADF00](v9, v7);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_10:
          if (sub_252E32E24() == a1 && v12 == a2)
          {

LABEL_29:

            return v10;
          }

          v14 = sub_252E37DB4();

          if (v14)
          {
            goto LABEL_29;
          }

          v15 = *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
          if (v15)
          {
            v16 = *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == a1 && v15 == a2;
            if (v16 || (sub_252E37DB4() & 1) != 0)
            {
              goto LABEL_29;
            }
          }

          ++v9;
          if (v11 == v8)
          {
            goto LABEL_32;
          }
        }

        if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_31:
        v8 = sub_252E378C4();
        if (!v8)
        {
          goto LABEL_32;
        }
      }

      v10 = *(v7 + 8 * v9 + 32);

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

LABEL_32:

    return 0;
  }

  return v10;
}

unint64_t sub_2529F55F8(void *a1)
{
  v42 = sub_252E32E84();
  v2 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2529F3704(a1);
  v6 = sub_2529EEE20(v5);

  v43 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_39;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = 0;
    v40 = v6 & 0xFFFFFFFFFFFFFF8;
    v41 = v6 & 0xC000000000000001;
    v36 = a1;
    v37 = (v2 + 32);
    v38 = v7;
    v39 = v6;
    do
    {
      if (v41)
      {
        v10 = MEMORY[0x2530ADF00](v9, v6);
      }

      else
      {
        if (v9 >= *(v40 + 16))
        {
          goto LABEL_37;
        }

        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_36;
      }

      type metadata accessor for Zone(0);
      v2 = swift_allocObject();
      *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate) = v11;
      v13 = v11;
      v14 = [v13 uniqueIdentifier];
      v15 = v4;
      sub_252E32E64();

      v16 = [v13 name];
      v17 = sub_252E36F34();
      v19 = v18;

      v20 = [v13 assistantIdentifier];
      if (v20)
      {
        v21 = v20;
        v22 = sub_252E36F34();
        a1 = v23;
      }

      else
      {

        v22 = 0;
        a1 = 0;
      }

      v4 = v15;
      v24 = (*v37)(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v15, v42);
      v25 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v25 = v17;
      v25[1] = v19;
      *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 2;
      v26 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v26 = v22;
      v26[1] = a1;
      MEMORY[0x2530AD700](v24);
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v9;
      v6 = v39;
    }

    while (v12 != v38);
    v2 = v43;
    a1 = v36;
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v27 = [a1 zoneName];
  if (v27)
  {
    v6 = v27;
    v28 = sub_252E36F34();
    v30 = v29;

    v43 = v8;
    if (v2 >> 62)
    {
      v31 = sub_252E378C4();
      if (v31)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v31 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
LABEL_21:
        v4 = 0;
        v42 = v2 & 0xC000000000000001;
        do
        {
          if (v42)
          {
            v32 = MEMORY[0x2530ADF00](v4, v2);
            a1 = (v4 + 1);
            if (__OFADD__(v4, 1))
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v32 = *(v2 + 8 * v4 + 32);

            a1 = (v4 + 1);
            if (__OFADD__(v4, 1))
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
              v7 = sub_252E378C4();
              goto LABEL_3;
            }
          }

          v33 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v28 && *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v30;
          if (v33 || (sub_252E37DB4() & 1) != 0)
          {
            v6 = &v43;
            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v4;
        }

        while (a1 != v31);
      }
    }

    return v43;
  }

  return v2;
}

uint64_t sub_2529F5A80(unint64_t a1)
{
  v199 = a1;
  v198 = sub_252E32E84();
  v2 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v201 = v177 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252E36AD4();
  v192 = *(v4 - 8);
  v193 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v191 = v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v187 = v177 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v188 = v177 - v10;
  MEMORY[0x28223BE20](v9);
  v196 = v177 - v11;
  v12 = sub_252E36AB4();
  v13 = MEMORY[0x28223BE20](v12);
  v16 = v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v17 != 2 && (v17 & 1) == 0)
  {
    sub_2529318DC();
    v40 = swift_allocError();
    *v41 = 12;
    return v40;
  }

  v182 = v14;
  v183 = v13;
  if (qword_27F53F5B8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v18 = qword_27F544F40;
  sub_252E36A94();
  sub_252E375D4();
  v184 = v18;
  v190 = v16;
  sub_252E36A84();
  v19 = sub_2529D8DC0();
  v20 = v199 & 0xFFFFFFFFFFFFFF8;
  if (v199 >> 62)
  {
    v42 = v19;
    v21 = sub_252E378C4();
    v19 = v42;
  }

  else
  {
    v21 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v194 = v2;
  v203 = v19;
  v189 = v1;
  v202 = MEMORY[0x277D84F90];
  if (v21)
  {
    v22 = 0;
    v1 = v199;
    v200 = MEMORY[0x277D84F90];
    v16 = &off_279711000;
    while (2)
    {
      v23 = v22;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x2530ADF00](v23, v1);
        }

        else
        {
          if (v23 >= *(v20 + 16))
          {
            goto LABEL_41;
          }

          v24 = *(v1 + 8 * v23 + 32);
        }

        v2 = v24;
        v22 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v25 = [v24 homeName];
        if (v25)
        {
          break;
        }

        ++v23;
        if (v22 == v21)
        {
          goto LABEL_24;
        }
      }

      v26 = v25;
      v27 = sub_252E36F34();
      v197 = v28;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v200 = sub_2529F7A80(0, *(v200 + 2) + 1, 1, v200);
      }

      v30 = *(v200 + 2);
      v29 = *(v200 + 3);
      v2 = (v30 + 1);
      if (v30 >= v29 >> 1)
      {
        v200 = sub_2529F7A80((v29 > 1), v30 + 1, 1, v200);
      }

      v31 = v200;
      *(v200 + 2) = v2;
      v32 = &v31[16 * v30];
      v33 = v197;
      *(v32 + 4) = v27;
      *(v32 + 5) = v33;
      if (v22 != v21)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v200 = MEMORY[0x277D84F90];
  }

LABEL_24:
  if (!*(v200 + 2))
  {
    goto LABEL_38;
  }

  *&v219 = MEMORY[0x277D84F90];
  v1 = v203;
  if (!(v203 >> 62))
  {
    v34 = *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_27;
    }

LABEL_46:

    v39 = v219;
    goto LABEL_47;
  }

  v34 = sub_252E378C4();
  if (!v34)
  {
    goto LABEL_46;
  }

LABEL_27:
  v16 = 0;
  v197 = v1 & 0xC000000000000001;
  v35 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v197)
  {
    v36 = MEMORY[0x2530ADF00](v16, v203);
    v2 = v36;
    v37 = (v16 + 1);
    if (__OFADD__(v16, 1))
    {
      goto LABEL_37;
    }

LABEL_33:
    v1 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    *&v230[0] = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    *(&v230[0] + 1) = v1;
    MEMORY[0x28223BE20](v36);
    v177[-2] = v230;

    v38 = sub_2529ED970(sub_252A00B98, &v177[-4], v200);

    if (v38)
    {
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      v1 = &v219;
      sub_252E37AA4();
    }

    else
    {
    }

    ++v16;
    if (v37 == v34)
    {
      goto LABEL_46;
    }
  }

  if (v16 >= *(v35 + 16))
  {
    goto LABEL_42;
  }

  v2 = *(v203 + 8 * v16 + 32);

  v37 = (v16 + 1);
  if (!__OFADD__(v16, 1))
  {
    goto LABEL_33;
  }

LABEL_37:
  __break(1u);
LABEL_38:

  v39 = v203;
LABEL_47:
  v43 = sub_2529F442C(v39, v199);
  if (v43)
  {
    v44 = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_252E3C130;
    v203 = v45;
    *(v45 + 32) = v44;
  }

  else
  {
    v203 = v39;
  }

  v180 = sub_2529F38E8(0x72656767697274, 0xE700000000000000, v199, 0);
  v181 = v46;
  v47 = sub_2529D8CA8(v180, v46);
  v48 = 0;
  if (v47)
  {
    v49 = v47;
    v50 = v47 & 0xFFFFFFFFFFFFFF8;
    if (v47 >> 62)
    {
      goto LABEL_72;
    }

    for (i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {

      v52 = 0;
      *&v230[0] = MEMORY[0x277D84F90];
LABEL_54:
      v53 = v52;
      while ((v49 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v53, v49);
        v52 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_70;
        }

LABEL_58:
        type metadata accessor for Trigger(0);
        if (swift_dynamicCastClass())
        {
          MEMORY[0x2530AD700]();
          if (*((*&v230[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v230[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v203 = v48;
            sub_252E372A4();
            v48 = v203;
          }

          sub_252E372D4();
          v202 = *&v230[0];
          if (v52 == i)
          {
LABEL_67:

            if (qword_27F53F4C0 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v193, qword_27F544CE8);
            *&v230[0] = 0;
            *(&v230[0] + 1) = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E713A0);
            MEMORY[0x2530AD570](v180, v181);

            MEMORY[0x2530AD570](0x6163206D6F726620, 0xEB00000000656863);
            sub_252CC3D90(*&v230[0], *(&v230[0] + 1), 0xD00000000000007FLL, 0x8000000252E70FD0);
            v54 = 1;
            v55 = v190;
            v56 = v184;
            goto LABEL_191;
          }

          goto LABEL_54;
        }

        ++v53;
        if (v52 == i)
        {
          goto LABEL_67;
        }
      }

      if (v53 >= *(v50 + 16))
      {
        goto LABEL_71;
      }

      v52 = v53 + 1;
      if (!__OFADD__(v53, 1))
      {
        goto LABEL_58;
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      ;
    }
  }

  if (qword_27F53F4C0 != -1)
  {
    goto LABEL_111;
  }

LABEL_75:
  v57 = __swift_project_value_buffer(v193, qword_27F544CE8);
  v58 = *(v192 + 16);
  v186 = v57;
  v178 = v58;
  v179 = v192 + 16;
  (v58)(v196);
  *&v230[0] = 0;
  *(&v230[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v230[0] = 0xD000000000000018;
  *(&v230[0] + 1) = 0x8000000252E712E0;
  v59 = v203;
  if (v203 >> 62)
  {
    v60 = sub_252E378C4();
  }

  else
  {
    v60 = *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v202 = v60;
  if (v60)
  {
    v61 = 0;
    v200 = (v59 & 0xC000000000000001);
    v62 = v59 & 0xFFFFFFFFFFFFFF8;
    v63 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v200)
      {
        v64 = MEMORY[0x2530ADF00](v61, v203);
        v65 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          goto LABEL_107;
        }
      }

      else
      {
        if (v61 >= *(v62 + 16))
        {
          goto LABEL_108;
        }

        v64 = *(v203 + 8 * v61 + 32);

        v65 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          swift_once();
          goto LABEL_75;
        }
      }

      v67 = *(v64 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v66 = *(v64 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      v68 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_2529F7A80(0, *(v63 + 2) + 1, 1, v63);
      }

      v70 = *(v63 + 2);
      v69 = *(v63 + 3);
      if (v70 >= v69 >> 1)
      {
        v63 = sub_2529F7A80((v69 > 1), v70 + 1, 1, v63);
      }

      *(v63 + 2) = v70 + 1;
      v71 = &v63[16 * v70];
      *(v71 + 4) = v67;
      *(v71 + 5) = v66;
      ++v61;
      v48 = v68;
      if (v65 == v202)
      {
        goto LABEL_92;
      }
    }
  }

  v63 = MEMORY[0x277D84F90];
LABEL_92:
  v72 = MEMORY[0x2530AD730](v63, MEMORY[0x277D837D0]);
  v74 = v73;

  MEMORY[0x2530AD570](v72, v74);

  v185 = "Looking for scenes in ";
  v75 = v196;
  sub_252CC3D90(*&v230[0], *(&v230[0] + 1), 0xD00000000000007FLL, 0x8000000252E70FD0);

  v177[0] = *(v192 + 8);
  v177[1] = v192 + 8;
  (v177[0])(v75, v193);
  v76 = v203;
  v77 = sub_2529EF5D8(v203);
  v48 = v77;
  *&v230[0] = MEMORY[0x277D84F90];
  if (v77 >> 62)
  {
    v78 = sub_252E378C4();
    if (v78)
    {
LABEL_94:
      v79 = 0;
      v200 = (v48 & 0xC000000000000001);
      v196 = v48;
      v197 = v48 & 0xFFFFFFFFFFFFFF8;
      v194 += 4;
      v195 = v78;
      while (1)
      {
        if (v200)
        {
          v80 = MEMORY[0x2530ADF00](v79, v48);
        }

        else
        {
          if (v79 >= *(v197 + 16))
          {
            goto LABEL_110;
          }

          v80 = *(v48 + 8 * v79 + 32);
        }

        v81 = v80;
        v82 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          goto LABEL_109;
        }

        type metadata accessor for Trigger(0);
        v83 = swift_allocObject();
        *(v83 + OBJC_IVAR____TtC22HomeAutomationInternal7Trigger_delegate) = v81;
        v84 = v81;
        v85 = [v84 uniqueIdentifier];
        sub_252E32E64();

        v86 = [v84 name];
        v87 = sub_252E36F34();
        v89 = v88;

        v90 = [v84 assistantIdentifier];
        if (v90)
        {
          v91 = v90;
          v92 = sub_252E36F34();
          v94 = v93;
        }

        else
        {

          v92 = 0;
          v94 = 0;
        }

        v95 = (*v194)(v83 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v201, v198);
        v96 = (v83 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v96 = v87;
        v96[1] = v89;
        *(v83 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 6;
        v97 = (v83 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v97 = v92;
        v97[1] = v94;
        MEMORY[0x2530AD700](v95);
        if (*((*&v230[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v230[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v79;
        v48 = v196;
        if (v82 == v195)
        {
          v98 = *&v230[0];
          v76 = v203;
          goto LABEL_115;
        }
      }
    }
  }

  else
  {
    v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v78)
    {
      goto LABEL_94;
    }
  }

  v98 = MEMORY[0x277D84F90];
LABEL_115:
  v201 = v98;

  v178(v188, v186, v193);
  *&v230[0] = 0;
  *(&v230[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v230[0] = 0xD000000000000010;
  *(&v230[0] + 1) = 0x8000000252E71300;
  if (v202)
  {
    v99 = 0;
    v100 = v76 & 0xC000000000000001;
    v101 = v76 & 0xFFFFFFFFFFFFFF8;
    v102 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v100)
      {
        v103 = MEMORY[0x2530ADF00](v99, v76);
        v104 = v99 + 1;
        if (__OFADD__(v99, 1))
        {
          goto LABEL_177;
        }
      }

      else
      {
        if (v99 >= *(v101 + 16))
        {
          goto LABEL_178;
        }

        v103 = *(v76 + 8 * v99 + 32);

        v104 = v99 + 1;
        if (__OFADD__(v99, 1))
        {
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          v113 = sub_252E378C4();
          goto LABEL_132;
        }
      }

      v106 = *(v103 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v105 = *(v103 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_2529F7A80(0, *(v102 + 2) + 1, 1, v102);
      }

      v108 = *(v102 + 2);
      v107 = *(v102 + 3);
      if (v108 >= v107 >> 1)
      {
        v102 = sub_2529F7A80((v107 > 1), v108 + 1, 1, v102);
      }

      *(v102 + 2) = v108 + 1;
      v109 = &v102[16 * v108];
      *(v109 + 4) = v106;
      *(v109 + 5) = v105;
      ++v99;
      v76 = v203;
      if (v104 == v202)
      {
        goto LABEL_130;
      }
    }
  }

  v102 = MEMORY[0x277D84F90];
LABEL_130:

  v110 = MEMORY[0x2530AD730](v102, MEMORY[0x277D837D0]);
  v112 = v111;

  MEMORY[0x2530AD570](v110, v112);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  v99 = v201;
  if (v201 >> 62)
  {
    goto LABEL_184;
  }

  v113 = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_132:
  v114 = MEMORY[0x277D84F90];
  if (v113)
  {
    v115 = 0;
    v203 = v99 & 0xC000000000000001;
    v116 = v99 & 0xFFFFFFFFFFFFFF8;
    v117 = v113;
    do
    {
      if (v203)
      {
        v118 = MEMORY[0x2530ADF00](v115, v99);
        v119 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          goto LABEL_179;
        }
      }

      else
      {
        if (v115 >= *(v116 + 16))
        {
          goto LABEL_180;
        }

        v118 = *(v99 + 8 * v115 + 32);

        v119 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          goto LABEL_179;
        }
      }

      v120 = *(v118 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v121 = *(v118 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = sub_2529F7A80(0, *(v114 + 2) + 1, 1, v114);
      }

      v123 = *(v114 + 2);
      v122 = *(v114 + 3);
      if (v123 >= v122 >> 1)
      {
        v114 = sub_2529F7A80((v122 > 1), v123 + 1, 1, v114);
      }

      *(v114 + 2) = v123 + 1;
      v124 = &v114[16 * v123];
      *(v124 + 4) = v120;
      *(v124 + 5) = v121;
      ++v115;
      v125 = v119 == v117;
      v113 = v117;
      v99 = v201;
    }

    while (!v125);
  }

  v126 = MEMORY[0x2530AD730](v114, MEMORY[0x277D837D0]);
  v128 = v127;

  MEMORY[0x2530AD570](v126, v128);

  v129 = v188;
  sub_252CC3D90(*&v230[0], *(&v230[0] + 1), 0xD00000000000007FLL, v185 | 0x8000000000000000);

  (v177[0])(v129, v193);
  v130 = MEMORY[0x277D84F90];
  *&v230[0] = MEMORY[0x277D84F90];
  if (!v113)
  {
    goto LABEL_160;
  }

  v131 = 0;
  v132 = v199;
  while (2)
  {
    if ((v99 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v131, v99);
      v133 = v131 + 1;
      if (__OFADD__(v131, 1))
      {
        break;
      }

      goto LABEL_154;
    }

    if (v131 >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_181;
    }

    v133 = v131 + 1;
    if (!__OFADD__(v131, 1))
    {
LABEL_154:
      if (sub_252967B6C(v132))
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v131;
      v132 = v199;
      if (v133 == v113)
      {
        goto LABEL_159;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_159:
  v130 = *&v230[0];
LABEL_160:

  v178(v187, v186, v193);
  *&v230[0] = 0;
  *(&v230[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v230[0] = 0xD00000000000001FLL;
  *(&v230[0] + 1) = 0x8000000252E71320;
  v134 = (v130 >> 62) & 1;
  if (v130 < 0)
  {
    LODWORD(v134) = 1;
  }

  LODWORD(v203) = v134;
  if (v134 == 1)
  {
    v135 = sub_252E378C4();
    v202 = v130;
    if (v135)
    {
      goto LABEL_164;
    }
  }

  else
  {
    v135 = *(v130 + 16);
    v202 = v130;
    if (v135)
    {
LABEL_164:
      v99 = 0;
      v136 = v130 & 0xC000000000000001;
      v137 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v136)
        {
          v138 = MEMORY[0x2530ADF00](v99, v130);
          v139 = v99 + 1;
          if (__OFADD__(v99, 1))
          {
            goto LABEL_182;
          }
        }

        else
        {
          if (v99 >= *(v130 + 16))
          {
            goto LABEL_183;
          }

          v138 = *(v130 + 8 * v99 + 32);

          v139 = v99 + 1;
          if (__OFADD__(v99, 1))
          {
            goto LABEL_182;
          }
        }

        v141 = *(v138 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v140 = *(v138 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = sub_2529F7A80(0, *(v137 + 2) + 1, 1, v137);
        }

        v143 = *(v137 + 2);
        v142 = *(v137 + 3);
        if (v143 >= v142 >> 1)
        {
          v137 = sub_2529F7A80((v142 > 1), v143 + 1, 1, v137);
        }

        *(v137 + 2) = v143 + 1;
        v144 = &v137[16 * v143];
        *(v144 + 4) = v141;
        *(v144 + 5) = v140;
        ++v99;
        v130 = v202;
        if (v139 == v135)
        {
          goto LABEL_187;
        }
      }
    }
  }

  v137 = MEMORY[0x277D84F90];
LABEL_187:
  v145 = MEMORY[0x2530AD730](v137, MEMORY[0x277D837D0]);
  v147 = v146;

  MEMORY[0x2530AD570](v145, v147);

  v148 = v187;
  sub_252CC3D90(*&v230[0], *(&v230[0] + 1), 0xD00000000000007FLL, v185 | 0x8000000000000000);

  (v177[0])(v148, v193);
  if (v203)
  {
    type metadata accessor for Entity(0);

    v149 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity(0);
    v149 = v130;
  }

  v150 = v189;
  v151 = *(v189 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock);
  os_unfair_lock_lock(v151 + 4);
  v152 = (v150 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedResults);
  swift_beginAccess();
  v154 = *v152;
  v153 = v152[1];
  v155 = v181;

  [v153 lock];

  [v153 unlock];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v219 = v154;
  v157 = v180;
  sub_2529FB7E0(v149, v180, v155, isUniquelyReferenced_nonNull_native, sub_252E032C4, sub_252DFE810, sub_252E11364);

  v158 = v219;
  [v153 lock];
  *v152 = v158;

  [v153 unlock];
  swift_endAccess();
  os_unfair_lock_unlock(v151 + 4);

  *&v230[0] = 0;
  *(&v230[0] + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E71340);
  MEMORY[0x2530AD570](v157, v155);

  sub_252CC3D90(*&v230[0], *(&v230[0] + 1), 0xD00000000000007FLL, v185 | 0x8000000000000000);
  v54 = 0;
  v55 = v190;
  v56 = v184;
LABEL_191:

  v218 = 1;
  v217 = 1;
  v216 = 1;
  v215 = 1;
  *&v219 = 0;
  BYTE8(v219) = 1;
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  LOBYTE(v225) = 1;
  v226 = 0uLL;
  *(&v225 + 1) = 0;
  LOBYTE(v227) = 1;
  BYTE1(v227) = v54;
  v228 = 0uLL;
  *(&v227 + 1) = 0;
  v229 = 1;
  GEOLocationCoordinate2DMake();
  v212 = v227;
  v213 = v228;
  v214 = v229;
  v208 = v223;
  v209 = v224;
  v210 = v225;
  v211 = v226;
  v204 = v219;
  v205 = v220;
  v206 = v221;
  v207 = v222;
  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v56, v55, "GetEntitiesForIntent", 20, 2, &v204);
  v230[8] = v212;
  v230[9] = v213;
  v231 = v214;
  v230[4] = v208;
  v230[5] = v209;
  v230[6] = v210;
  v230[7] = v211;
  v230[0] = v204;
  v230[1] = v205;
  v230[2] = v206;
  v230[3] = v207;
  sub_25293847C(v230, &qword_27F5407B0, &unk_252E42860);
  if (qword_27F53F4C0 != -1)
  {
    goto LABEL_208;
  }

LABEL_192:
  v159 = v193;
  v160 = __swift_project_value_buffer(v193, qword_27F544CE8);
  (*(v192 + 16))(v191, v160, v159);
  *&v204 = 0;
  *(&v204 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v204 = 0xD000000000000016;
  *(&v204 + 1) = 0x8000000252E71380;
  v40 = v202;
  if (!(v202 >> 62))
  {
    v161 = *((v202 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v161)
    {
      goto LABEL_210;
    }

    goto LABEL_194;
  }

  v161 = sub_252E378C4();
  if (v161)
  {
LABEL_194:
    v162 = 0;
    v203 = v40 & 0xC000000000000001;
    v163 = v40 & 0xFFFFFFFFFFFFFF8;
    v164 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v203)
      {
        v165 = MEMORY[0x2530ADF00](v162, v40);
        v166 = v162 + 1;
        if (__OFADD__(v162, 1))
        {
          goto LABEL_206;
        }
      }

      else
      {
        if (v162 >= *(v163 + 16))
        {
          goto LABEL_207;
        }

        v165 = *(v40 + 8 * v162 + 32);

        v166 = v162 + 1;
        if (__OFADD__(v162, 1))
        {
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          swift_once();
          goto LABEL_192;
        }
      }

      v168 = *(v165 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v167 = *(v165 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v164 = sub_2529F7A80(0, *(v164 + 2) + 1, 1, v164);
      }

      v170 = *(v164 + 2);
      v169 = *(v164 + 3);
      if (v170 >= v169 >> 1)
      {
        v164 = sub_2529F7A80((v169 > 1), v170 + 1, 1, v164);
      }

      *(v164 + 2) = v170 + 1;
      v171 = &v164[16 * v170];
      *(v171 + 4) = v168;
      *(v171 + 5) = v167;
      ++v162;
      v40 = v202;
      if (v166 == v161)
      {
        goto LABEL_211;
      }
    }
  }

LABEL_210:
  v164 = MEMORY[0x277D84F90];
LABEL_211:
  v172 = MEMORY[0x2530AD730](v164, MEMORY[0x277D837D0]);
  v174 = v173;

  MEMORY[0x2530AD570](v172, v174);

  v175 = v191;
  sub_252CC3D90(v204, *(&v204 + 1), 0xD00000000000007FLL, 0x8000000252E70FD0);

  (*(v192 + 8))(v175, v193);
  (*(v182 + 8))(v190, v183);
  return v40;
}

void *sub_2529F744C(unint64_t a1)
{
  v3 = sub_252E36AB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F600 != -1)
  {
    swift_once();
  }

  v7 = qword_27F544F88;
  sub_252E36A94();
  sub_252E375D4();
  v8 = sub_252E36A84();
  sub_252B680FC(v8);
  sub_252B68288();
  v10 = v9;

  if (!v10)
  {
    v21 = sub_2529F219C();
    if ((v22 & 1) == 0)
    {
      goto LABEL_17;
    }

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544C40);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E713F0);
    v26[1] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(v27, v28, 0xD00000000000007FLL, 0x8000000252E70FD0, 0xD000000000000017, 0x8000000252E71410, 479);

    sub_252A00A2C(v21, 1, MEMORY[0x277D85008]);
LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  v11 = v1;
  v12 = sub_252B4623C(a1);

  v13 = sub_252C758E0(v12);

  v14 = sub_252DD6238(v13);

  if (!v14)
  {
    goto LABEL_16;
  }

  sub_252B680FC(v15);
  v16 = sub_252B68288();
  v18 = v17;

  if (v18)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v21 = sub_2529E72B8(v19, v20);

LABEL_17:
  v24 = sub_252E375C4();
  sub_252E36A74(v24, &dword_252917000, v7, "GetLocalAccessory", 17, 2, v6, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v4 + 8))(v6, v3);
  return v21;
}

void *sub_2529F77F8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_2529F8FA0(result, v1[2] + 1, 1, v1, &qword_27F541790, &qword_252E40A40, &qword_27F540990, &qword_252E3DF50);
    *v0 = result;
  }

  return result;
}

uint64_t sub_2529F787C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

char *sub_2529F78D8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_2529F954C(result, *(v1 + 2) + 1, 1, v1, &qword_27F541798, &qword_252E40A48);
    *v0 = result;
  }

  return result;
}

void *sub_2529F794C(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_2529F8FA0((v2 > 1), result + 1, 1, *v1, &qword_27F541790, &qword_252E40A40, &qword_27F540990, &qword_252E3DF50);
    *v1 = result;
  }

  return result;
}

uint64_t sub_2529F79C8(uint64_t result, uint64_t (*a2)(BOOL, uint64_t, uint64_t))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1, result + 1, 1);
    *v2 = result;
  }

  return result;
}

char *sub_2529F7A18(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_2529F954C((v2 > 1), (result + 1), 1, *v1, &qword_27F541798, &qword_252E40A48);
    *v1 = result;
  }

  return result;
}

char *sub_2529F7A80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
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

void *sub_2529F7C10(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401C8, &unk_252E3BFF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401D0, &unk_252E466B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2529F7D44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540258, &qword_252E3C088);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2529F7E5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541670, &qword_252E40938);
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

char *sub_2529F7FB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 504);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[504 * v8])
    {
      memmove(v12, v13, 504 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2529F8118(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_2529F8360(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541788, &qword_252E40A38);
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

char *sub_2529F84A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401F0, &unk_252E5BAD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2529F8630(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541650, &qword_252E40918);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2529F8778(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541870, &qword_252E40AF8);
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

void *sub_2529F8958(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E50, &qword_252E3F0A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E48, &qword_252E3F0A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2529F8B48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5417C8, &qword_252E40A68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_2529F8CA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2529F8DF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541680, &qword_252E40948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2529F8FA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2529F90FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541718, &qword_252E409D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2529F9208(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403C0, &unk_252E3C470);
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

void *sub_2529F933C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_2529F954C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_2529F964C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416F8, &qword_252E409B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2529F97A8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_2529F9998(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_2529F9A94(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_252E378C4();
      a2 = sub_252DA9974(v4, v5);
      goto LABEL_8;
    }

    v7 = MEMORY[0x277D84FA0];
    v19 = MEMORY[0x277D84FA0];
    sub_252E37874();
    if (sub_252E37904())
    {
      type metadata accessor for Service(0);
      v17 = MEMORY[0x277D84FA0];
      v8 = a1 + 56;
      while (1)
      {
        swift_dynamicCast();
        if (!*(a1 + 16) || (sub_252E37EC4(), sub_252E32E84(), sub_2529FEBDC(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), sub_252E36E94(), MEMORY[0x2530AE390](*(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType)), , sub_252E37044(), , v9 = sub_252E37F14(), v10 = -1 << *(a1 + 32), v11 = v9 & ~v10, ((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0))
        {
LABEL_13:

          goto LABEL_14;
        }

        v12 = ~v10;
        while (1)
        {
          v13 = *(*(a1 + 48) + 8 * v11);

          if ((sub_252E32E54() & 1) == 0 || *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
          {

            goto LABEL_19;
          }

          if (*(v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
          {
            break;
          }

          v15 = sub_252E37DB4();

          if (v15)
          {
            goto LABEL_29;
          }

LABEL_19:
          v11 = (v11 + 1) & v12;
          if (((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

LABEL_29:
        v16 = *(v17 + 16);
        if (*(v17 + 24) <= v16)
        {
          sub_252DAAAAC(v16 + 1);
        }

        v17 = v19;
        sub_252DAD220(v18, v19);
LABEL_14:
        if (!sub_252E37904())
        {
          goto LABEL_36;
        }
      }
    }

    v17 = v7;
LABEL_36:

    return v17;
  }

  else
  {
    if (v3)
    {
LABEL_8:

      return sub_252BBC050(a1, a2);
    }

    return sub_252DFAB78(a1, a2);
  }
}

void *sub_2529F9DE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v5 = MEMORY[0x28223BE20](v4);
  v133 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v141 = &v118 - v7;
  v8 = sub_252E36324();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v120 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v118 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v124 = &v118 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v118 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v135 = &v118 - v21;
  MEMORY[0x28223BE20](v20);
  v119 = &v118 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v127 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v27 = MEMORY[0x28223BE20](v26);
  v28 = MEMORY[0x28223BE20](v27);
  v29 = MEMORY[0x28223BE20](v28);
  v137 = &v118 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v118 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = MEMORY[0x28223BE20](&v118 - v34);
  v40 = &v118 - v39;
  v144 = a1;
  v41 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v41)
    {
      if (a2 >= 0)
      {
        a2 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v42 = sub_252E378C4();
      v43 = sub_252DA999C(a2, v42);
      v44 = v144;
      goto LABEL_8;
    }

    v121 = v35;
    v129 = v38;
    v130 = v37;
    v123 = v36;
    v46 = MEMORY[0x277D84FA0];
    v150 = MEMORY[0x277D84FA0];
    v132 = sub_252E37874();
    v47 = sub_252E37904();
    if (!v47)
    {
      goto LABEL_74;
    }

    v126 = v40;
    v122 = v14;
    v48 = v47;
    v131 = type metadata accessor for HomeAutomationEntityState(0);
    v49 = v48;
    v50 = (v9 + 48);
    v138 = (v9 + 32);
    v139 = (v9 + 8);
    v143 = v144 + 56;
    v140 = v33;
    v147 = (v9 + 48);
    v136 = v4;
    v128 = v19;
LABEL_13:
    v134 = v46;
    v148[0] = v49;
    swift_dynamicCast();
    if (!*(v144 + 16))
    {
LABEL_68:

      v46 = v134;
      goto LABEL_69;
    }

    v51 = v149;
    sub_252E37EC4();
    v52 = v126;
    sub_252956C1C(v51 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v126);
    v145 = *v50;
    if (v145(v52, 1, v8) == 1)
    {
      sub_25293847C(v52, &qword_27F540298, &unk_252E3C270);
      sub_252E37EE4();
    }

    else
    {
      sub_252E36304();
      (*v139)(v52, v8);
      sub_252E37EE4();
      v50 = v147;
      sub_252E37044();
    }

    v53 = v138;
    v54 = *(v51 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
    if (v54)
    {
      sub_252E37EE4();
      v55 = v121;
      sub_252956C1C(v54 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v121);
      if (v145(v55, 1, v8) != 1)
      {
        v56 = v119;
        (*v53)(v119, v55, v8);
        sub_252E36304();
        sub_252E37044();

        (*v139)(v56, v8);
        goto LABEL_24;
      }

      sub_25293847C(v55, &qword_27F540298, &unk_252E3C270);
      if (*(v54 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
      {

        HomeAutomationAbstractMeasurement.hash(into:)(v148);

LABEL_24:
        v57 = sub_252E37F14();
        v58 = -1 << *(v144 + 32);
        v59 = v57 & ~v58;
        if (((*(v143 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
        {
          goto LABEL_68;
        }

        v142 = ~v58;
        while (1)
        {
          v60 = v149;
          v61 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
          v62 = v4;
          v63 = *(v4 + 48);
          v64 = *(*(v144 + 48) + 8 * v59);
          v65 = v141;
          sub_252956C1C(v64 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v141);
          v146 = v60;
          v66 = v60 + v61;
          v50 = v147;
          sub_252956C1C(v66, v65 + v63);
          v67 = v8;
          v68 = v8;
          v69 = v145;
          if (v145(v65, 1, v67) == 1)
          {
            v70 = v69(v65 + v63, 1, v68);
            v8 = v68;
            if (v70 != 1)
            {
              goto LABEL_27;
            }

            v71 = v64;

            sub_25293847C(v65, &qword_27F540298, &unk_252E3C270);
          }

          else
          {
            sub_252956C1C(v65, v33);
            if (v69(v65 + v63, 1, v68) == 1)
            {
              (*v139)(v33, v68);
              v8 = v68;
LABEL_27:
              sub_25293847C(v65, &qword_27F540758, &unk_252E4D160);
              v4 = v62;
              goto LABEL_28;
            }

            v72 = v135;
            (*v138)(v135, v65 + v63, v68);
            sub_2529FEBDC(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
            v71 = v64;

            v73 = sub_252E36EF4();
            v74 = *v139;
            v75 = v72;
            v33 = v140;
            (*v139)(v75, v68);
            v74(v33, v68);
            v50 = v147;
            sub_25293847C(v65, &qword_27F540298, &unk_252E3C270);
            v8 = v68;
            if ((v73 & 1) == 0)
            {
              v4 = v62;

              goto LABEL_28;
            }
          }

          v76 = *(v71 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
          v77 = v146;
          v78 = *(v146 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
          v79 = v137;
          if (v76)
          {
            if (!v78)
            {

              v4 = v136;
              goto LABEL_59;
            }

            v80 = OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue;
            sub_252956C1C(v76 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v137);
            v81 = v145;
            if (v145(v79, 1, v8) == 1)
            {

              sub_25293847C(v79, &qword_27F540298, &unk_252E3C270);
              v82 = v130;
              sub_252956C1C(v78 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v130);
              v83 = v8;
              if (v81(v82, 1, v8) == 1)
              {
                sub_25293847C(v82, &qword_27F540298, &unk_252E3C270);
                v84 = *(v76 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
                v85 = *(v78 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
                if (v84)
                {
                  v77 = v146;
                  if (!v85)
                  {
                    goto LABEL_65;
                  }

                  v86 = _s22HomeAutomationInternal0aB19AbstractMeasurementC2eeoiySbAC_ACtFZ_0(v84, v85);

                  v4 = v136;
                  if ((v86 & 1) == 0)
                  {
LABEL_43:

LABEL_44:
                    v33 = v140;
                    v50 = v147;
                    goto LABEL_28;
                  }
                }

                else
                {
                  v77 = v146;
                  if (v85)
                  {
LABEL_65:

                    v4 = v136;
                    goto LABEL_44;
                  }

                  v114 = *(v76 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
                  v115 = *(v78 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

                  v4 = v136;
                  if (v114 != v115)
                  {
                    goto LABEL_43;
                  }
                }
              }

              else
              {
                v92 = v122;
                v125 = *v138;
                v125(v122, v82, v83);
                v93 = v76 + v80;
                v94 = v123;
                sub_252956C1C(v93, v123);
                if (v81(v94, 1, v83) == 1)
                {

                  (*v139)(v92, v83);
                  v91 = v94;
                  goto LABEL_51;
                }

                v111 = v120;
                v125(v120, v94, v83);
                v112 = sub_252E362E4();

                v113 = *v139;
                (*v139)(v111, v83);
                v113(v92, v83);
                v4 = v136;
                v8 = v83;
                v77 = v146;
                if ((v112 & 1) == 0)
                {
                  goto LABEL_43;
                }
              }
            }

            else
            {
              v87 = v128;
              v88 = v79;
              v83 = v8;
              v89 = *v138;
              (*v138)(v128, v88, v83);
              v90 = v129;
              sub_252956C1C(v78 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v129);
              if (v81(v90, 1, v83) == 1)
              {
                (*v139)(v87, v83);
                v91 = v90;
LABEL_51:
                sub_25293847C(v91, &qword_27F540298, &unk_252E3C270);

                v4 = v136;
                v33 = v140;
                v50 = v147;
                v8 = v83;
                goto LABEL_28;
              }

              v95 = v124;
              v89(v124, v90, v83);
              v96 = sub_252E362E4();
              v97 = *v139;
              (*v139)(v95, v83);
              v97(v87, v83);
              v4 = v136;
              v8 = v83;
              v77 = v146;
              if ((v96 & 1) == 0)
              {
                goto LABEL_43;
              }
            }
          }

          else
          {
            v4 = v136;
            if (v78)
            {
              goto LABEL_43;
            }
          }

          v98 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType;
          v99 = *(v4 + 48);
          v100 = v133;
          sub_252956C1C(v71 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v133);
          sub_252956C1C(v77 + v98, v100 + v99);
          v50 = v147;
          v101 = v145;
          if (v145(v100, 1, v8) == 1)
          {

            if (v101(v100 + v99, 1, v8) == 1)
            {
              sub_25293847C(v100, &qword_27F540298, &unk_252E3C270);
              v33 = v140;
LABEL_71:
              v116 = *(v134 + 16);
              if (*(v134 + 24) <= v116)
              {
                sub_252DAAF70(v116 + 1);
              }

              v46 = v150;
              sub_252DAD224(v149, v150);
LABEL_69:
              v49 = sub_252E37904();
              if (!v49)
              {
LABEL_74:

                return v46;
              }

              goto LABEL_13;
            }

LABEL_58:
            sub_25293847C(v100, &qword_27F540758, &unk_252E4D160);
LABEL_59:
            v33 = v140;
            goto LABEL_28;
          }

          v102 = v4;
          v103 = v8;
          v104 = v101;
          v105 = v127;
          sub_252956C1C(v100, v127);
          if (v104(v100 + v99, 1, v103) == 1)
          {

            (*v139)(v105, v103);
            v8 = v103;
            v4 = v102;
            goto LABEL_58;
          }

          v106 = v135;
          (*v138)(v135, v100 + v99, v103);
          sub_2529FEBDC(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
          v107 = sub_252E36EF4();

          v108 = v105;
          v109 = *v139;
          v110 = v106;
          v50 = v147;
          (*v139)(v110, v103);
          v109(v108, v103);
          sub_25293847C(v100, &qword_27F540298, &unk_252E3C270);
          v33 = v140;
          v8 = v103;
          v4 = v102;
          if (v107)
          {
            goto LABEL_71;
          }

LABEL_28:
          v59 = (v59 + 1) & v142;
          if (((*(v143 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
          {
            goto LABEL_68;
          }
        }
      }
    }

    sub_252E37EE4();
    goto LABEL_24;
  }

  if (v41)
  {
    v44 = v144;
    v43 = a2;
LABEL_8:

    return sub_252BBC390(v44, v43);
  }

  v117 = v144;

  return sub_252DFAED4(v117, a2);
}

_OWORD *sub_2529FAE1C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_252A44A10(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_252E038BC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_252DFF974(v16, a4 & 1);
    v11 = sub_252A44A10(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_252A00AF4(a1, v22);
  }

  else
  {
    sub_252E02F70(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_2529FAF6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_252A44A10(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_252E03A74();
      v11 = v19;
      goto LABEL_8;
    }

    sub_252DFFF08(v16, a4 & 1);
    v11 = sub_252A44A10(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 88 * v11;

    return sub_252A00A98(a1, v22);
  }

  else
  {
    sub_252E02FDC(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_2529FB0B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_252A44A10(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_252E03C44();
      goto LABEL_7;
    }

    sub_252E002B8(v15, a4 & 1);
    v26 = sub_252A44A10(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_252E37E24();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_252E35EF4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_252E03048(v12, a2, a3, a1, v18);
}

uint64_t sub_2529FB234(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_252A454C0(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_252E03EC4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_252E00638(v14, a3 & 1);
    v9 = sub_252A454C0(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for Service(0);
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {
    sub_252E02F2C(v9, a2, a1, v19);
  }
}

void *sub_2529FB360(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_252A44B34(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_252E04198();
      v9 = v17;
      goto LABEL_8;
    }

    sub_252E00F04(v14, a3 & 1);
    v9 = sub_252A44B34(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 504 * v9;

    return sub_252A00A3C(a1, v20);
  }

  else
  {

    return sub_252E030F8(v9, a2, a1, v19);
  }
}

unint64_t sub_2529FB484(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_252A488EC();
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_252E04330();
      v9 = v17;
      goto LABEL_8;
    }

    sub_252E015C8(v14, a3 & 1);
    v9 = sub_252A488EC();
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_252E02F2C(v9, a2, a1, v19);
  }
}

void sub_2529FB668(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_252A44AB4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_252E044C8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_252E018A0(v14, a3 & 1);
    v9 = sub_252A44AB4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      sub_252E37E24();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;
  }

  else
  {
    sub_252E03168(v9, a2, a1, v19);
    sub_2529353AC(a2, v22);
  }
}

uint64_t sub_2529FB7E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_252A44A10(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_252A44A10(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_2529FB98C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_252A44A10(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_252A44A10(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

unint64_t sub_2529FBAF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_252A44B34(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_252E04964();
      v11 = v19;
      goto LABEL_8;
    }

    sub_252E026C0(v16, a4 & 1);
    v11 = sub_252A44B34(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_252E0322C(v11, a3, a1, a2, v21);
  }
}

uint64_t sub_2529FBC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_252A44A10(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_252E04ACC();
      v13 = v21;
      goto LABEL_8;
    }

    sub_252E02944(v18, a5 & 1);
    v13 = sub_252A44A10(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_252E37E24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_252E03274(v13, a3, a4, a1, a2, v23);
  }
}

void (*sub_2529FBD80(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2530ADF00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_252A00B90;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2529FBE00(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2530ADF00](a2, a3);
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
    return sub_252A00B94;
  }

  __break(1u);
  return result;
}

void (*sub_2529FBE80(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2530ADF00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2529FBF00;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2529FBF08(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2530ADF00](a2, a3);
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
    return sub_2529FBF88;
  }

  __break(1u);
  return result;
}

uint64_t sub_2529FBF90(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_252E37DB4() & 1;
  }
}

uint64_t sub_2529FC02C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541638, &qword_252E40900);
    v3 = sub_252E379A4();
    v4 = 0;
    v5 = v3 + 56;
    v20 = v1;
    v21 = a1 + 32;
    while (2)
    {
      v6 = *(v21 + v4);
      sub_252E37EC4();
      StateSemantic.rawValue.getter();
      sub_252E37044();

      result = sub_252E37F14();
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        v11 = StateSemantic.rawValue.getter();
        v13 = v12;
        if (v11 == StateSemantic.rawValue.getter() && v13 == v14)
        {

          goto LABEL_4;
        }

        v16 = sub_252E37DB4();

        if (v16)
        {
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      *(*(v3 + 48) + i) = v6;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v20)
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

uint64_t (*sub_2529FC204(void *a1))(uint64_t)
{
  v257 = sub_252E32E84();
  v225 = *(v257 - 8);
  v2 = MEMORY[0x28223BE20](v257);
  v221 = &v219[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = MEMORY[0x28223BE20](v2);
  v247 = &v219[-v5];
  v6 = MEMORY[0x28223BE20](v4);
  v253 = &v219[-v7];
  v8 = MEMORY[0x28223BE20](v6);
  v255 = &v219[-v9];
  MEMORY[0x28223BE20](v8);
  v11 = &v219[-v10];
  v12 = &qword_252E3C000;
  if ([a1 entityType] == 5)
  {
    v13 = type metadata accessor for HomeStore(0);
    v14 = static HomeStore.shared.getter(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = a1;
    v16 = a1;
    v17 = HomeStore.scenes(matching:)(inited);
    LOBYTE(v19) = v18;

    swift_setDeallocating();
    swift_arrayDestroy();
    if ((v19 & 1) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFFF8;
      if (v17 >> 62)
      {
        goto LABEL_53;
      }

      for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
      {
        v12 = 0;
        v22 = MEMORY[0x277D84F90];
        v249 = v17 & 0xC000000000000001;
        v248 = v17 + 32;
        v256 = (v225 + 8);
        v261 = MEMORY[0x277D84F90];
        v244 = MEMORY[0x277D84F90];
        v247 = i;
        v246 = v17;
        v245 = v20;
        while (1)
        {
          if (v249)
          {
            v24 = MEMORY[0x2530ADF00](v12, v17);
            v25 = __OFADD__(v12++, 1);
            if (v25)
            {
              goto LABEL_51;
            }
          }

          else
          {
            if (v12 >= *(v20 + 16))
            {
              goto LABEL_52;
            }

            v24 = *(v248 + 8 * v12);

            v25 = __OFADD__(v12++, 1);
            if (v25)
            {
              goto LABEL_51;
            }
          }

          v254 = v12;
          v250 = OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate;
          v26 = [*(v24 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
          v27 = sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
          sub_2529E6100();
          v20 = sub_252E373A4();

          v260 = v22;
          v252 = v20;
          v253 = v24;
          v255 = v27;
          if ((v20 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            sub_252E37874();
            sub_252E373E4();
            v20 = v263;
            a1 = v264;
            v19 = v265;
            v17 = v266;
            v12 = v267;
          }

          else
          {
            v28 = -1 << *(v20 + 32);
            a1 = (v20 + 56);
            v19 = ~v28;
            v29 = -v28;
            v30 = v29 < 64 ? ~(-1 << v29) : -1;
            v12 = v30 & *(v20 + 56);

            v17 = 0;
          }

          v251 = v19;
          v31 = (v19 + 64) >> 6;
          if ((v20 & 0x8000000000000000) == 0)
          {
            break;
          }

          while (1)
          {
            LOBYTE(v19) = v20;
            v36 = sub_252E37904();
            if (!v36)
            {
              break;
            }

            v258 = v36;
            swift_dynamicCast();
            v19 = v259;
            v34 = v17;
            v35 = v12;
            if (!v259)
            {
              break;
            }

LABEL_26:
            type metadata accessor for Action();
            v37 = swift_allocObject();
            *(v37 + 16) = v19;
            v38 = v19;
            v39 = [v38 uniqueIdentifier];
            sub_252E32E64();

            v40 = sub_252E32E24();
            v42 = v41;
            (*v256)(v11, v257);
            *(v37 + 24) = v40;
            *(v37 + 32) = v42;
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v43 = 1;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v43 = 2;
              }

              else
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v43 = 3;
                }

                else
                {
                  objc_opt_self();
                  v43 = 4 * (swift_dynamicCastObjCClass() != 0);
                }
              }
            }

            *(v37 + 40) = v43;
            v19 = &v260;
            MEMORY[0x2530AD700]();
            if (*((v260 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v260 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();
            v22 = v260;
            v17 = v34;
            v12 = v35;
            if ((v20 & 0x8000000000000000) == 0)
            {
              goto LABEL_18;
            }
          }

LABEL_37:
          sub_25291AE30(v20);

          if (v22 >> 62)
          {
            a1 = sub_252E378C4();
          }

          else
          {
            a1 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v17 = v246;
          v20 = v245;
          v44 = v253;
          v12 = v254;

          if (a1)
          {
            v45 = [*&v44[v250] home];
            v23 = v247;
            if (v45)
            {
              v46 = v45;
              type metadata accessor for Home(0);
              swift_allocObject();
              a1 = sub_2529E65BC(v46);

              v19 = &v261;
              MEMORY[0x2530AD700](v47);
              if (*((v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_252E372A4();
              }

              sub_252E372D4();
              v244 = v261;
            }

            else
            {
            }
          }

          else
          {

            v23 = v247;
          }

          v99 = v12 == v23;
          v22 = MEMORY[0x277D84F90];
          if (v99)
          {
            sub_252A00A2C(v17, 0, MEMORY[0x277D84FB8]);
            v48 = &v268;
            goto LABEL_239;
          }
        }

LABEL_18:
        v32 = v17;
        v33 = v12;
        v34 = v17;
        if (v12)
        {
LABEL_22:
          v35 = (v33 - 1) & v33;
          v19 = *(*(v20 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v33)))));
          if (!v19)
          {
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        while (1)
        {
          v34 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v34 >= v31)
          {
            goto LABEL_37;
          }

          v33 = *(a1 + v34);
          ++v32;
          if (v33)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        ;
      }
    }

    sub_252A00A2C(v17, v19 & 1, MEMORY[0x277D84FB8]);
  }

  v248 = type metadata accessor for HomeStore(0);
  v49 = static HomeStore.shared.getter(v248);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v50 = swift_allocObject();
  v223 = *(v12 + 304);
  *(v50 + 16) = v223;
  *(v50 + 32) = a1;
  v222 = a1;
  v51 = HomeStore.services(matching:supporting:)(v50, 0);
  v53 = v52;

  LODWORD(v54) = v53;
  if (v53)
  {
    goto LABEL_220;
  }

  v242 = v51;
  v234 = v51 & 0xFFFFFFFFFFFFFF8;
  if (v51 >> 62)
  {
    goto LABEL_141;
  }

  v55 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v227 = v55;
  if (!v55)
  {
    goto LABEL_220;
  }

LABEL_58:
  v241 = v55;
  v220 = v54;
  v263 = MEMORY[0x277D84F90];
  sub_2529AA380(0, v55 & ~(v55 >> 63), 0);
  if ((v241 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_145:
    v57 = MEMORY[0x277D84F90];
    goto LABEL_146;
  }

  v56 = 0;
  v57 = v263;
  v239 = v51 & 0xC000000000000001;
  v226 = v51 + 32;
  v254 = (v225 + 8);
  do
  {
    if (__OFADD__(v56, 1))
    {
      goto LABEL_135;
    }

    v251 = v57;
    v54 = &v269;
    v250 = v56 + 1;
    if (v239)
    {
      v58 = MEMORY[0x2530ADF00]();
      v59 = v58;
    }

    else
    {
      if (v56 >= *(v234 + 16))
      {
        goto LABEL_140;
      }

      v59 = *(v226 + 8 * v56);
    }

    v60 = static HomeStore.shared.getter(v58);
    v61 = sub_2529D8DC0();

    if (v61 >> 62)
    {
      v62 = sub_252E378C4();
      if (!v62)
      {
LABEL_126:

        v103 = 0;
        v102 = 0;
        goto LABEL_127;
      }
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v62)
      {
        goto LABEL_126;
      }
    }

    v63 = 0;
    v64 = v61 & 0xC000000000000001;
    v65 = v61 & 0xFFFFFFFFFFFFFF8;
    v54 = v61 + 32;
    v245 = v59;
    v246 = v61;
    v233 = v62;
    v238 = v61 & 0xC000000000000001;
    v237 = v61 & 0xFFFFFFFFFFFFFF8;
    v236 = v61 + 32;
    while (1)
    {
      if (v64)
      {
        v66 = MEMORY[0x2530ADF00](v63, v61);
        v25 = __OFADD__(v63++, 1);
        if (v25)
        {
          goto LABEL_136;
        }
      }

      else
      {
        if (v63 >= *(v65 + 16))
        {
          goto LABEL_137;
        }

        v66 = *(v54 + 8 * v63);

        v25 = __OFADD__(v63++, 1);
        if (v25)
        {
          goto LABEL_136;
        }
      }

      v67 = sub_2529E7424();
      if (!(v67 >> 62))
      {
        v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v68)
        {
          break;
        }

        goto LABEL_113;
      }

      v12 = v67;
      v68 = sub_252E378C4();
      v67 = v12;
      if (v68)
      {
        break;
      }

LABEL_113:
      v12 = v67;

      v64 = v238;
      v65 = v237;
      v54 = v236;
      if (v63 == v62)
      {
        goto LABEL_126;
      }
    }

    v69 = 0;
    v54 = v67 & 0xC000000000000001;
    v70 = v67 & 0xFFFFFFFFFFFFFF8;
    v71 = v67 + 32;
    v244 = v66;
    v232 = v63;
    v243 = v67;
    v231 = v68;
    v230 = v67 & 0xC000000000000001;
    v229 = v67 & 0xFFFFFFFFFFFFFF8;
    v228 = v67 + 32;
LABEL_74:
    if (v54)
    {
      v101 = v69;
      v72 = MEMORY[0x2530ADF00](v69, v67);
      v25 = __OFADD__(v101, 1);
      v74 = v101 + 1;
      if (v25)
      {
        goto LABEL_139;
      }
    }

    else
    {
      if (v69 >= *(v70 + 16))
      {
        goto LABEL_138;
      }

      v72 = *(v71 + 8 * v69);
      v73 = v69;

      v25 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v25)
      {
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        v220 = v54;
        v108 = sub_252E378C4();
        LOBYTE(v54) = v220;
        v227 = v108;
        if (!v108)
        {
          goto LABEL_220;
        }

        v55 = sub_252E378C4();
        if (!v55)
        {
          goto LABEL_145;
        }

        LODWORD(v54) = v220;
        goto LABEL_58;
      }
    }

    v235 = v74;
    v75 = sub_252E32E24();
    v256 = v76;
    v77 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
    v78 = [*(v72 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) services];
    v79 = sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
    v51 = sub_252E37264();

    v249 = v72;
    v252 = v77;
    v240 = v79;
    if (v51 >> 62)
    {
      v80 = sub_252E378C4();
    }

    else
    {
      v80 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v81 = 0;
    do
    {
      if (v80 == v81)
      {

        v89 = [*(v249 + v252) services];
        v12 = sub_252E37264();

        if (v12 >> 62)
        {
          v90 = sub_252E378C4();
          if (v90)
          {
LABEL_92:
            v91 = 0;
            v252 = v12 & 0xC000000000000001;
            do
            {
              if (v252)
              {
                v92 = MEMORY[0x2530ADF00](v91, v12);
              }

              else
              {
                if (v91 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_134;
                }

                v92 = *(v12 + 8 * v91 + 32);
              }

              v51 = v92;
              v93 = v91 + 1;
              if (__OFADD__(v91, 1))
              {
                goto LABEL_133;
              }

              v94 = [v92 assistantIdentifier];
              if (v94)
              {
                v95 = v94;
                v96 = sub_252E36F34();
                v98 = v97;

                v99 = v96 == v75 && v98 == v256;
                if (v99)
                {

                  goto LABEL_122;
                }

                v100 = sub_252E37DB4();

                if (v100)
                {

LABEL_122:

                  goto LABEL_123;
                }
              }

              else
              {
              }

              ++v91;
            }

            while (v93 != v90);
          }
        }

        else
        {
          v90 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v90)
          {
            goto LABEL_92;
          }
        }

        v69 = v235;
        v51 = v242;
        v61 = v246;
        v62 = v233;
        v63 = v232;
        v67 = v243;
        v54 = v230;
        v70 = v229;
        v71 = v228;
        if (v235 == v231)
        {
          goto LABEL_113;
        }

        goto LABEL_74;
      }

      if ((v51 & 0xC000000000000001) != 0)
      {
        v83 = MEMORY[0x2530ADF00](v81, v51);
      }

      else
      {
        if (v81 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_132;
        }

        v83 = *(v51 + 8 * v81 + 32);
      }

      v84 = v83;
      if (__OFADD__(v81, 1))
      {
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
        goto LABEL_139;
      }

      v85 = [v83 uniqueIdentifier];
      v86 = v255;
      sub_252E32E64();

      v87 = sub_252E32E24();
      v12 = v88;
      (*v254)(v86, v257);
      if (v87 == v75 && v12 == v256)
      {

        goto LABEL_124;
      }

      v82 = sub_252E37DB4();

      ++v81;
    }

    while ((v82 & 1) == 0);

LABEL_123:

LABEL_124:
    v103 = *(v244 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v102 = *(v244 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    v51 = v242;
LABEL_127:
    v57 = v251;
    v263 = v251;
    v105 = *(v251 + 16);
    v104 = *(v251 + 24);
    v106 = v241;
    if (v105 >= v104 >> 1)
    {
      sub_2529AA380((v104 > 1), v105 + 1, 1);
      v106 = v241;
      v57 = v263;
    }

    *(v57 + 16) = v105 + 1;
    v107 = v57 + 16 * v105;
    *(v107 + 32) = v103;
    *(v107 + 40) = v102;
    v56 = v250;
  }

  while (v250 != v106);
LABEL_146:
  v109 = sub_252C75A1C(v57);

  v110 = *(v109 + 16);

  v111 = v234;
  LOBYTE(v54) = v220;
  if (v110)
  {
    v112 = 0;
    v230 = MEMORY[0x277D84F90];
    v263 = MEMORY[0x277D84F90];
    v244 = v51 & 0xC000000000000001;
    v243 = v51 + 32;
    v255 = (v225 + 8);
LABEL_150:
    if (v244)
    {
      v114 = MEMORY[0x2530ADF00](v112, v51);
      v113 = v114;
      v25 = __OFADD__(v112++, 1);
      if (v25)
      {
        goto LABEL_244;
      }
    }

    else
    {
      if (v112 >= *(v111 + 16))
      {
        goto LABEL_245;
      }

      v113 = *(v243 + 8 * v112);

      v25 = __OFADD__(v112++, 1);
      if (v25)
      {
        goto LABEL_244;
      }
    }

    v115 = static HomeStore.shared.getter(v114);
    v116 = sub_2529D8DC0();

    if (v116 >> 62)
    {
      v117 = sub_252E378C4();
      if (!v117)
      {
LABEL_148:

        goto LABEL_149;
      }
    }

    else
    {
      v117 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v117)
      {
        goto LABEL_148;
      }
    }

    v12 = 0;
    v118 = v116 & 0xC000000000000001;
    v119 = v116 & 0xFFFFFFFFFFFFFF8;
    v120 = v116 + 32;
    v241 = v116 & 0xC000000000000001;
    v240 = v116 & 0xFFFFFFFFFFFFFF8;
    v239 = v116 + 32;
    while (1)
    {
      if (v118)
      {
        v121 = MEMORY[0x2530ADF00](v12, v116);
        v25 = __OFADD__(v12++, 1);
        if (v25)
        {
          goto LABEL_246;
        }
      }

      else
      {
        if (v12 >= *(v119 + 16))
        {
          goto LABEL_247;
        }

        v121 = *(v120 + 8 * v12);

        v25 = __OFADD__(v12++, 1);
        if (v25)
        {
          goto LABEL_246;
        }
      }

      v122 = sub_2529E7424();
      if (v122 >> 62)
      {
        v159 = v122;
        v123 = sub_252E378C4();
        v122 = v159;
        if (v123)
        {
LABEL_161:
          v124 = 0;
          v125 = v122 & 0xC000000000000001;
          v126 = v122 & 0xFFFFFFFFFFFFFF8;
          v127 = v122 + 32;
          v246 = v122;
          v235 = v123;
          v233 = v122 & 0xC000000000000001;
          v232 = v122 & 0xFFFFFFFFFFFFFF8;
          v251 = v112;
          v250 = v121;
          v249 = v113;
          v247 = v116;
          v237 = v117;
          v236 = v12;
          v231 = v122 + 32;
          do
          {
            if (v125)
            {
              v158 = v124;
              v128 = MEMORY[0x2530ADF00](v124, v122);
              v25 = __OFADD__(v158, 1);
              v130 = v158 + 1;
              if (v25)
              {
                goto LABEL_249;
              }
            }

            else
            {
              if (v124 >= *(v126 + 16))
              {
                goto LABEL_248;
              }

              v128 = *(v127 + 8 * v124);
              v129 = v124;

              v25 = __OFADD__(v129, 1);
              v130 = v129 + 1;
              if (v25)
              {
LABEL_249:
                __break(1u);
LABEL_250:
                v250 = sub_252E378C4();
                if (v250)
                {
                  v192 = sub_252E378C4();
                  if (v192)
                  {
                    v171 = v192;
                    goto LABEL_224;
                  }

LABEL_254:
                  v173 = MEMORY[0x277D84F90];
                  goto LABEL_255;
                }

                goto LABEL_274;
              }
            }

            v238 = v130;
            v12 = sub_252E32E24();
            v256 = v131;
            v254 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
            v132 = [*(v128 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) services];
            v245 = sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
            v133 = sub_252E37264();

            v252 = v128;
            if (v133 >> 62)
            {
              v134 = sub_252E378C4();
            }

            else
            {
              v134 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v135 = 0;
            while (v134 != v135)
            {
              if ((v133 & 0xC000000000000001) != 0)
              {
                v137 = MEMORY[0x2530ADF00](v135, v133);
              }

              else
              {
                if (v135 >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_241;
                }

                v137 = *(v133 + 8 * v135 + 32);
              }

              v138 = v137;
              if (__OFADD__(v135, 1))
              {
                __break(1u);
LABEL_241:
                __break(1u);
LABEL_242:
                __break(1u);
LABEL_243:
                __break(1u);
LABEL_244:
                __break(1u);
LABEL_245:
                __break(1u);
LABEL_246:
                __break(1u);
LABEL_247:
                __break(1u);
LABEL_248:
                __break(1u);
                goto LABEL_249;
              }

              v139 = [v137 uniqueIdentifier];
              v140 = v253;
              sub_252E32E64();

              v141 = sub_252E32E24();
              v143 = v142;
              (*v255)(v140, v257);
              if (v141 == v12 && v143 == v256)
              {

                goto LABEL_212;
              }

              v136 = sub_252E37DB4();

              ++v135;
              if (v136)
              {

LABEL_211:

LABEL_212:
                v51 = v242;
                v112 = v251;
                MEMORY[0x2530AD700](v160);
                if (*((v263 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v263 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_252E372A4();
                }

                sub_252E372D4();
                v230 = v263;
LABEL_149:
                v111 = v234;
                if (v112 == v227)
                {
                  sub_252A00A2C(v51, 0, MEMORY[0x277D84FB8]);
                  v48 = v262;
LABEL_239:
                  v190 = sub_252C758E0(*(v48 - 32));

                  return v190;
                }

                goto LABEL_150;
              }
            }

            v144 = [*&v254[v252] services];
            v145 = sub_252E37264();

            if (v145 >> 62)
            {
              v146 = sub_252E378C4();
              if (v146)
              {
LABEL_180:
                v147 = 0;
                v254 = (v145 & 0xC000000000000001);
                do
                {
                  if (v254)
                  {
                    v148 = MEMORY[0x2530ADF00](v147, v145);
                  }

                  else
                  {
                    if (v147 >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_243;
                    }

                    v148 = *(v145 + 8 * v147 + 32);
                  }

                  v149 = v148;
                  v150 = v147 + 1;
                  if (__OFADD__(v147, 1))
                  {
                    goto LABEL_242;
                  }

                  v151 = [v148 assistantIdentifier];
                  if (v151)
                  {
                    v152 = v151;
                    v153 = sub_252E36F34();
                    v155 = v154;

                    if (v153 == v12 && v155 == v256)
                    {

                      goto LABEL_210;
                    }

                    v157 = sub_252E37DB4();

                    if (v157)
                    {

LABEL_210:

                      goto LABEL_211;
                    }
                  }

                  else
                  {
                  }

                  ++v147;
                }

                while (v150 != v146);
              }
            }

            else
            {
              v146 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v146)
              {
                goto LABEL_180;
              }
            }

            v124 = v238;
            v51 = v242;
            v112 = v251;
            v113 = v249;
            v116 = v247;
            v117 = v237;
            v12 = v236;
            v122 = v246;
            v125 = v233;
            v126 = v232;
            v127 = v231;
          }

          while (v238 != v235);
        }
      }

      else
      {
        v123 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v123)
        {
          goto LABEL_161;
        }
      }

      v118 = v241;
      v119 = v240;
      v120 = v239;
      if (v12 == v117)
      {
        goto LABEL_148;
      }
    }
  }

LABEL_220:
  sub_252A00A2C(v51, v54 & 1, MEMORY[0x277D84FB8]);
  v162 = static HomeStore.shared.getter(v161);
  v163 = swift_allocObject();
  *(v163 + 16) = v223;
  v164 = v222;
  *(v163 + 32) = v222;
  v165 = v164;
  v12 = HomeStore.accessories(matching:supporting:)(v163, 0);
  v167 = v166;

  if (v167)
  {
    v168 = MEMORY[0x277D84FB8];
    v169 = v12;
    v170 = 1;
LABEL_275:
    sub_252A00A2C(v169, v170, v168);
    return 0;
  }

  v251 = v12 & 0xFFFFFFFFFFFFFF8;
  v255 = v12;
  if (v12 >> 62)
  {
    goto LABEL_250;
  }

  v171 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v250 = v171;
  if (!v171)
  {
    goto LABEL_274;
  }

LABEL_224:
  v263 = MEMORY[0x277D84F90];
  sub_2529AA380(0, v171 & ~(v171 >> 63), 0);
  if (v171 < 0)
  {
    __break(1u);
    goto LABEL_254;
  }

  v172 = 0;
  v173 = v263;
  v256 = (v12 & 0xC000000000000001);
  v252 = v225 + 8;
  v253 = (v225 + 32);
  v254 = v171;
  do
  {
    if (v256)
    {
      v174 = MEMORY[0x2530ADF00](v172, v12);
    }

    else
    {
      v174 = *(v12 + 8 * v172 + 32);
    }

    v175 = [*(v174 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
    if (v175)
    {
      v176 = v175;
      type metadata accessor for Home(0);
      v177 = swift_allocObject();
      v178 = v176;
      v179 = [v178 uniqueIdentifier];
      sub_252E32E64();

      v180 = [v178 name];
      v181 = sub_252E36F34();
      v183 = v182;

      v184 = [v178 assistantIdentifier];
      if (v184)
      {
        v185 = v184;
        sub_252E36F34();
      }

      v186 = v257;
      (*v253)(v177 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v247, v257);

      swift_setDeallocating();
      (*v252)(v177 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v186);

      swift_deallocClassInstance();
      v171 = v254;
      v12 = v255;
    }

    else
    {

      v181 = 0;
      v183 = 0;
    }

    v263 = v173;
    v188 = *(v173 + 16);
    v187 = *(v173 + 24);
    if (v188 >= v187 >> 1)
    {
      sub_2529AA380((v187 > 1), v188 + 1, 1);
      v173 = v263;
    }

    ++v172;
    *(v173 + 16) = v188 + 1;
    v189 = v173 + 16 * v188;
    *(v189 + 32) = v181;
    *(v189 + 40) = v183;
  }

  while (v171 != v172);
LABEL_255:
  v193 = sub_252C75A1C(v173);

  v194 = *(v193 + 16);

  if (!v194)
  {
LABEL_274:
    v168 = MEMORY[0x277D84FB8];
    v169 = v12;
    v170 = 0;
    goto LABEL_275;
  }

  v195 = 0;
  v196 = MEMORY[0x277D84F90];
  v263 = MEMORY[0x277D84F90];
  v197 = v12 & 0xC000000000000001;
  v198 = (v225 + 32);
  v199 = &off_279711000;
  while (2)
  {
    v200 = v195;
LABEL_258:
    if (v197)
    {
      result = MEMORY[0x2530ADF00](v200, v12);
      v201 = result;
      v195 = v200 + 1;
      if (__OFADD__(v200, 1))
      {
        break;
      }

      goto LABEL_261;
    }

    if (v200 >= *(v251 + 16))
    {
      goto LABEL_278;
    }

    v201 = *(v12 + 8 * v200 + 32);

    v195 = v200 + 1;
    if (!__OFADD__(v200, 1))
    {
LABEL_261:
      v202 = [*(v201 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
      if (v202)
      {
        v256 = v198;
        v203 = v202;
        type metadata accessor for Home(0);
        v204 = swift_allocObject();
        *(v204 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v203;
        v205 = v203;
        v206 = [v205 v199[199]];
        sub_252E32E64();

        v207 = [v205 name];
        v254 = sub_252E36F34();
        v209 = v208;

        v210 = [v205 assistantIdentifier];
        if (v210)
        {
          v211 = v210;
          v212 = sub_252E36F34();
          v214 = v213;
        }

        else
        {

          v212 = 0;
          v214 = 0;
        }

        v198 = v256;
        v215 = (*v256)(v204 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v221, v257);
        v216 = (v204 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v216 = v254;
        v216[1] = v209;
        *(v204 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
        v217 = (v204 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v217 = v212;
        v217[1] = v214;
        MEMORY[0x2530AD700](v215);
        if (*((v263 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v263 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
          v198 = v256;
        }

        result = sub_252E372D4();
        v196 = v263;
        v12 = v255;
        v199 = &off_279711000;
        if (v195 == v250)
        {
LABEL_276:
          sub_252A00A2C(v12, 0, MEMORY[0x277D84FB8]);
          v218 = sub_252C758E0(v196);

          return v218;
        }

        continue;
      }

      ++v200;
      if (v195 == v250)
      {
        goto LABEL_276;
      }

      goto LABEL_258;
    }

    break;
  }

  __break(1u);
LABEL_278:
  __break(1u);
  return result;
}

uint64_t sub_2529FE09C(uint64_t a1)
{
  v2 = sub_252E32FE4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541620, &qword_252E408F8);
    v9 = sub_252E379A4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2529FEBDC(&qword_27F541628, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_252E36E84();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2529FEBDC(&qword_27F541630, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_252E36EF4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2529FE3BC(uint64_t a1)
{
  v2 = sub_252E359C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5417A0, &qword_252E40A50);
    v9 = sub_252E379A4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2529FEBDC(&qword_27F5417A8, MEMORY[0x277D5F478], MEMORY[0x277D5F480]);
      v16 = sub_252E36E84();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2529FEBDC(&qword_27F5417B0, MEMORY[0x277D5F478], MEMORY[0x277D5F488]);
          v23 = sub_252E36EF4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2529FE6F0(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_252DA74F8(&v6, v4);
      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

uint64_t sub_2529FE74C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541720, &qword_252E409D8);
    v3 = sub_252E379A4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_252E37EC4();

      sub_252E37044();
      result = sub_252E37F14();
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
          result = sub_252E37DB4();
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

uint64_t sub_2529FE8B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5418B0, &qword_252E40B20);
    v3 = sub_252E379A4();
    v4 = 0;
    v5 = v3 + 56;
    v40 = a1 + 32;
    while (2)
    {
      v6 = (v40 + 152 * v4);
      v7 = v6[7];
      v8 = v6[5];
      v79 = v6[6];
      v80 = v7;
      v9 = v6[7];
      v81 = v6[8];
      v10 = v6[3];
      v11 = v6[1];
      v75 = v6[2];
      v76 = v10;
      v12 = v6[3];
      v13 = v6[5];
      v77 = v6[4];
      v78 = v13;
      v14 = v6[1];
      v74[0] = *v6;
      v74[1] = v14;
      v15 = v6[7];
      v70 = v6[6];
      v71 = v15;
      v72 = v6[8];
      v16 = v6[3];
      v66 = v6[2];
      v67 = v16;
      v17 = v6[5];
      v68 = v6[4];
      v69 = v17;
      v18 = v6[1];
      v64 = *v6;
      v65 = v18;
      v82 = *(v6 + 72);
      v60 = v79;
      v61 = v9;
      v62 = v6[8];
      v56 = v75;
      v57 = v12;
      v58 = v77;
      v59 = v8;
      v73 = *(v6 + 72);
      v63 = *(v6 + 72);
      v54 = v64;
      v55 = v11;
      sub_252E37EC4();
      sub_25297DE08(v74, v52);
      sub_252A34930(&v42);
      result = sub_252E37F14();
      v20 = ~(-1 << *(v3 + 32));
      for (i = result & v20; ; i = (i + 1) & v20)
      {
        v22 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v22) == 0)
        {
          break;
        }

        v23 = *(v3 + 48) + 152 * i;
        v24 = *(v23 + 16);
        v52[0] = *v23;
        v52[1] = v24;
        v25 = *(v23 + 80);
        v27 = *(v23 + 32);
        v26 = *(v23 + 48);
        v52[4] = *(v23 + 64);
        v52[5] = v25;
        v52[2] = v27;
        v52[3] = v26;
        v28 = *(v23 + 96);
        v29 = *(v23 + 112);
        v30 = *(v23 + 128);
        v53 = *(v23 + 144);
        v52[7] = v29;
        v52[8] = v30;
        v52[6] = v28;
        v48 = *(v23 + 96);
        v49 = *(v23 + 112);
        v50 = *(v23 + 128);
        v51 = *(v23 + 144);
        v44 = *(v23 + 32);
        v45 = *(v23 + 48);
        v46 = *(v23 + 64);
        v47 = *(v23 + 80);
        v42 = *v23;
        v43 = *(v23 + 16);
        sub_25297DE08(v52, v41);
        v31 = sub_252A39200(&v42, &v64);
        v60 = v48;
        v61 = v49;
        v62 = v50;
        v63 = v51;
        v56 = v44;
        v57 = v45;
        v58 = v46;
        v59 = v47;
        v54 = v42;
        v55 = v43;
        result = sub_2529AEC80(&v54);
        if (v31)
        {
          v48 = v70;
          v49 = v71;
          v50 = v72;
          v51 = v73;
          v44 = v66;
          v45 = v67;
          v46 = v68;
          v47 = v69;
          v42 = v64;
          v43 = v65;
          sub_2529AEC80(&v42);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v22;
      v32 = *(v3 + 48) + 152 * i;
      v33 = v69;
      *(v32 + 64) = v68;
      *(v32 + 80) = v33;
      v34 = v67;
      *(v32 + 32) = v66;
      *(v32 + 48) = v34;
      *(v32 + 144) = v73;
      v35 = v72;
      *(v32 + 112) = v71;
      *(v32 + 128) = v35;
      *(v32 + 96) = v70;
      v36 = v65;
      *v32 = v64;
      *(v32 + 16) = v36;
      v37 = *(v3 + 16);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (!v38)
      {
        *(v3 + 16) = v39;
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

uint64_t sub_2529FEBDC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_2529FEC24(uint64_t a1, unint64_t a2)
{
  v3 = sub_2529E7424();
  v4 = v3;
  v70 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_66;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v6 = 0;
    v64 = v4 & 0xFFFFFFFFFFFFFF8;
    v65 = v4 & 0xC000000000000001;
    v62 = v4;
    v63 = v4 + 32;
    v67 = a2 + 32;
    v60 = i;
    v61 = a2;
    while (1)
    {
      if (v65)
      {
        v7 = MEMORY[0x2530ADF00](v6, v4);
        v8 = __OFADD__(v6, 1);
        v9 = v6 + 1;
        if (v8)
        {
LABEL_59:
          __break(1u);
LABEL_60:
          v58 = v70;
          goto LABEL_68;
        }

        goto LABEL_9;
      }

      if (v6 >= *(v64 + 16))
      {
        break;
      }

      v7 = *(v63 + 8 * v6);

      v8 = __OFADD__(v6, 1);
      v9 = v6 + 1;
      if (v8)
      {
        goto LABEL_59;
      }

LABEL_9:
      v68 = *(a2 + 16);
      v69 = v9;
      if (!v68)
      {
LABEL_4:

        goto LABEL_5;
      }

      v10 = 0;
      v66 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
      while (1)
      {
        v11 = *(v67 + 8 * v10);
        v12 = (*v7 + 256);
        v13 = *v12;
        if ((*v12)() == v11)
        {
          goto LABEL_56;
        }

        v14 = (*(*v7 + 272))();
        if (*(v14 + 16))
        {
          sub_252E37EC4();
          MEMORY[0x2530AE390](v11);
          v15 = sub_252E37F14();
          v16 = -1 << *(v14 + 32);
          v17 = v15 & ~v16;
          if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
          {
            v18 = ~v16;
            while (*(*(v14 + 48) + 8 * v17) != v11)
            {
              v17 = (v17 + 1) & v18;
              if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            goto LABEL_55;
          }
        }

LABEL_19:

        v20 = (v13)(v19);
        if (v20 == 41)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541750, &qword_252E4A2E0);
          v21 = sub_252E379A4();
          v33 = v21 + 56;
          v34 = qword_2864A91A8;
          sub_252E37EC4();
          MEMORY[0x2530AE390](v34);
          v35 = sub_252E37F14();
          v36 = ~(-1 << *(v21 + 32));
          v37 = v35 & v36;
          v38 = (v35 & v36) >> 6;
          v39 = *(v21 + 56 + 8 * v38);
          v40 = 1 << (v35 & v36);
          v41 = *(v21 + 48);
          if ((v40 & v39) == 0)
          {
LABEL_30:
            *(v33 + 8 * v38) = v40 | v39;
            *(v41 + 8 * v37) = v34;
            v42 = *(v21 + 16);
            v8 = __OFADD__(v42, 1);
            v32 = v42 + 1;
            if (v8)
            {
              goto LABEL_65;
            }

            goto LABEL_31;
          }

          while (*(v41 + 8 * v37) != v34)
          {
            v37 = (v37 + 1) & v36;
            v38 = v37 >> 6;
            v39 = *(v33 + 8 * (v37 >> 6));
            v40 = 1 << v37;
            if (((1 << v37) & v39) == 0)
            {
              goto LABEL_30;
            }
          }
        }

        else
        {
          v21 = MEMORY[0x277D84FA0];
          if (v20 == 38)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541750, &qword_252E4A2E0);
            v21 = sub_252E379A4();
            v22 = v21 + 56;
            v23 = qword_2864A9180;
            sub_252E37EC4();
            MEMORY[0x2530AE390](v23);
            v24 = sub_252E37F14();
            v25 = ~(-1 << *(v21 + 32));
            v26 = v24 & v25;
            v27 = (v24 & v25) >> 6;
            v28 = *(v21 + 56 + 8 * v27);
            v29 = 1 << (v24 & v25);
            v30 = *(v21 + 48);
            if ((v29 & v28) == 0)
            {
LABEL_24:
              *(v22 + 8 * v27) = v29 | v28;
              *(v30 + 8 * v26) = v23;
              v31 = *(v21 + 16);
              v8 = __OFADD__(v31, 1);
              v32 = v31 + 1;
              if (v8)
              {
                goto LABEL_64;
              }

LABEL_31:
              *(v21 + 16) = v32;
              goto LABEL_32;
            }

            while (*(v30 + 8 * v26) != v23)
            {
              v26 = (v26 + 1) & v25;
              v27 = v26 >> 6;
              v28 = *(v22 + 8 * (v26 >> 6));
              v29 = 1 << v26;
              if (((1 << v26) & v28) == 0)
              {
                goto LABEL_24;
              }
            }
          }
        }

LABEL_32:
        if (*(v21 + 16))
        {
          sub_252E37EC4();
          MEMORY[0x2530AE390](v11);
          v43 = sub_252E37F14();
          v44 = -1 << *(v21 + 32);
          v45 = v43 & ~v44;
          if ((*(v21 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
          {
            v46 = ~v44;
            while (*(*(v21 + 48) + 8 * v45) != v11)
            {
              v45 = (v45 + 1) & v46;
              if (((*(v21 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
              {
                goto LABEL_37;
              }
            }

LABEL_55:

            goto LABEL_56;
          }
        }

LABEL_37:

        if (v11 == 42)
        {
          break;
        }

LABEL_12:
        if (++v10 == v68)
        {
          goto LABEL_4;
        }
      }

      v47 = [*(v7 + v66) profiles];
      sub_25293F638(0, &qword_27F540170, 0x277CD1760);
      v48 = sub_252E37264();

      if (!(v48 >> 62))
      {
        v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v49)
        {
          goto LABEL_40;
        }

        goto LABEL_11;
      }

      v49 = sub_252E378C4();
      if (!v49)
      {
LABEL_11:

        a2 = v61;
        v4 = v62;
        i = v60;
        goto LABEL_12;
      }

LABEL_40:
      v50 = 0;
      v4 = v48 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v48 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x2530ADF00](v50, v48);
        }

        else
        {
          if (v50 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v51 = *(v48 + 8 * v50 + 32);
        }

        v52 = v51;
        a2 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        objc_opt_self();
        v53 = swift_dynamicCastObjCClass();
        if (v53)
        {
          break;
        }

        ++v50;
        if (a2 == v49)
        {
          goto LABEL_11;
        }
      }

      v54 = v53;

      v55 = [v54 userSettings];
      a2 = v61;
      v4 = v62;
      i = v60;
      if (!v55)
      {

        goto LABEL_12;
      }

      v56 = v55;
      v57 = [v55 supportedFeatures];

      if ((v57 & 2) == 0)
      {
        goto LABEL_12;
      }

LABEL_56:
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_5:
      v6 = v69;
      if (v69 == i)
      {
        goto LABEL_60;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    ;
  }

  v58 = MEMORY[0x277D84F90];
LABEL_68:

  return v58;
}

uint64_t sub_2529FF268(uint64_t a1, uint64_t a2)
{
  v2 = sub_2529E7424();
  v22 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_22:
    v17 = v2;
    v3 = sub_252E378C4();
    v2 = v17;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v19 = v2;
      v20 = v2 & 0xC000000000000001;
      v5 = v2 & 0xFFFFFFFFFFFFFF8;
      v6 = v2 + 32;
      while (1)
      {
LABEL_5:
        if (v20)
        {
          v7 = MEMORY[0x2530ADF00](v4, v19);
          v8 = __OFADD__(v4++, 1);
          if (v8)
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v16 = v22;
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_22;
          }

          v7 = *(v6 + 8 * v4);

          v8 = __OFADD__(v4++, 1);
          if (v8)
          {
            goto LABEL_19;
          }
        }

        v9 = *(a2 + 16);
        if (v9)
        {
          v10 = 0;
          while (2)
          {
            v11 = *(a2 + 32 + 8 * v10++);
            v12 = (*(*v7 + 336))();
            v13 = *(v12 + 16);
            v14 = 32;
            while (v13)
            {
              v15 = *(v12 + v14);
              v14 += 8;
              --v13;
              if (v15 == v11)
              {

                sub_252E37A94();
                sub_252E37AC4();
                sub_252E37AD4();
                v2 = sub_252E37AA4();
                if (v4 == v3)
                {
                  goto LABEL_20;
                }

                goto LABEL_5;
              }
            }

            if (v10 != v9)
            {
              continue;
            }

            break;
          }
        }

        if (v4 == v3)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v16 = MEMORY[0x277D84F90];
LABEL_24:

  return v16;
}

uint64_t sub_2529FF45C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_252E379A4();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + 8 * v6);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v12);
      result = sub_252E37F14();
      v14 = ~(-1 << *(v5 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v7 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v5 + 48);
      if ((v18 & v17) != 0)
      {
        while (*(v19 + 8 * v15) != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v7 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v16) = v18 | v17;
        *(v19 + 8 * v15) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2529FF590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416A0, &qword_252E40968);
    v3 = sub_252E379A4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_252E37EB4();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
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
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_2529FF6BC(unint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = result;
  v4 = result >> 62;
  if (result >> 62)
  {
    v8 = a3;
    v9 = a2;
    result = sub_252E378C4();
    a2 = v9;
    a3 = v8;
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      result = sub_252E379A4();
      v5 = result;
      v6 = v3 & 0xFFFFFFFFFFFFFF8;
      if (!v4)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_252E378C4();
      v7 = result;
      if (!result)
      {
        return v5;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v5 = MEMORY[0x277D84FA0];
  v6 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = *(v6 + 16);
  if (!v7)
  {
    return v5;
  }

LABEL_9:
  v10 = 0;
  v11 = v5 + 56;
  v31 = v7;
  v32 = v3 & 0xC000000000000001;
  v28 = v3 + 32;
  v29 = v3 & 0xFFFFFFFFFFFFFF8;
  v30 = v3;
  while (v32)
  {
    result = MEMORY[0x2530ADF00](v10, v3);
    v12 = result;
    v13 = __OFADD__(v10, 1);
    v14 = v10 + 1;
    if (v13)
    {
      goto LABEL_35;
    }

LABEL_19:
    v33 = v14;
    sub_252E37EC4();
    sub_252E32E84();
    sub_2529FEBDC(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_252E36E94();
    v15 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
    MEMORY[0x2530AE390](*(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
    v16 = (v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

    sub_252E37044();

    result = sub_252E37F14();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    v20 = *(v11 + 8 * (v18 >> 6));
    v21 = 1 << v18;
    if (((1 << v18) & v20) != 0)
    {
      v22 = ~v17;
      do
      {
        v23 = *(*(v5 + 48) + 8 * v18);

        if ((sub_252E32E54() & 1) != 0 && *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(v12 + v15))
        {
          if (*(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v16 && *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v16[1])
          {

LABEL_11:

            v3 = v30;
            goto LABEL_12;
          }

          v25 = sub_252E37DB4();

          if (v25)
          {
            goto LABEL_11;
          }
        }

        else
        {
        }

        v18 = (v18 + 1) & v22;
        v19 = v18 >> 6;
        v20 = *(v11 + 8 * (v18 >> 6));
        v21 = 1 << v18;
      }

      while ((v20 & (1 << v18)) != 0);
      v3 = v30;
    }

    *(v11 + 8 * v19) = v20 | v21;
    *(*(v5 + 48) + 8 * v18) = v12;
    v26 = *(v5 + 16);
    v13 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v13)
    {
      goto LABEL_36;
    }

    *(v5 + 16) = v27;
LABEL_12:
    v10 = v33;
    if (v33 == v31)
    {
      return v5;
    }
  }

  if (v10 >= *(v29 + 16))
  {
    goto LABEL_37;
  }

  v12 = *(v28 + 8 * v10);

  v13 = __OFADD__(v10, 1);
  v14 = v10 + 1;
  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_2529FFA08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541668, &qword_252E40930);
    v3 = sub_252E379A4();
    v4 = 0;
    v5 = v3 + 56;
    v35 = a1 + 32;
    v34 = v1;
    while (1)
    {
      v6 = *(v35 + v4);
      sub_252E37EC4();
      AccessoryTypeSemantic.rawValue.getter();
      sub_252E37044();

      result = sub_252E37F14();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xE900000000000062;
          v14 = 0x6C7562746867696CLL;
          switch(*(*(v3 + 48) + v9))
          {
            case 1:
              v13 = 0xE800000000000000;
              v14 = 0x6B636F4C726F6F64;
              break;
            case 2:
              v13 = 0xE800000000000000;
              v14 = 0x6172656D61437069;
              break;
            case 3:
              v14 = 0x65526172656D6163;
              v13 = 0xEF676E6964726F63;
              break;
            case 4:
              v14 = 0xD000000000000011;
              v13 = 0x8000000252E65490;
              break;
            case 5:
              v14 = 0xD000000000000010;
              v13 = 0x8000000252E654B0;
              break;
            case 6:
              v13 = 0xE600000000000000;
              v14 = 0x74656C74756FLL;
              break;
            case 7:
              v13 = 0xE600000000000000;
              v14 = 0x686374697773;
              break;
            case 8:
              v13 = 0xEA00000000007461;
              v14 = 0x74736F6D72656874;
              break;
            case 9:
              v14 = 0x616C6C69746E6576;
              v13 = 0xEF6E61466E6F6974;
              break;
            case 0xA:
              v13 = 0xE600000000000000;
              v14 = 0x73646E696C62;
              break;
            case 0xB:
              v14 = 0x53636972656E6567;
              goto LABEL_51;
            case 0xC:
              v14 = 0x65536E6F69746F6DLL;
              v13 = 0xED000073726F736ELL;
              break;
            case 0xD:
              v14 = 0xD000000000000011;
              v13 = 0x8000000252E65510;
              break;
            case 0xE:
              v14 = 0x79746964696D7568;
              v13 = 0xEE00726F736E6553;
              break;
            case 0xF:
              v14 = 0xD000000000000010;
              v13 = 0x8000000252E65540;
              break;
            case 0x10:
              v14 = 0xD000000000000014;
              v13 = 0x8000000252E65560;
              break;
            case 0x11:
              v14 = 0xD000000000000013;
              v13 = 0x8000000252E65580;
              break;
            case 0x12:
              v16 = 0x53656B6F6D73;
              goto LABEL_48;
            case 0x13:
              v14 = 0x53746361746E6F63;
LABEL_51:
              v15 = 1869835877;
              goto LABEL_52;
            case 0x14:
              v14 = 0x657A69726F746F6DLL;
              v15 = 1869562980;
LABEL_52:
              v13 = v15 | 0xED00007200000000;
              break;
            case 0x15:
              v14 = 0x657A69726F746F6DLL;
              v13 = 0xEF776F646E695764;
              break;
            case 0x16:
              v16 = 0x53746867696CLL;
LABEL_48:
              v14 = v16 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
              v13 = 0xEB00000000726F73;
              break;
            case 0x17:
              v14 = 0x636E61707563636FLL;
              v13 = 0xEF726F736E655379;
              break;
            case 0x18:
              v13 = 0xEA0000000000726FLL;
              v14 = 0x736E65536B61656CLL;
              break;
            case 0x19:
              v13 = 0xE700000000000000;
              v14 = 0x79726574746162;
              break;
            case 0x1A:
              v13 = 0xE800000000000000;
              v14 = 0x6C6C6542726F6F64;
              break;
            case 0x1B:
              v13 = 0xEB00000000726569;
              v14 = 0x6669727550726961;
              break;
            case 0x1C:
              v14 = 0xD000000000000011;
              v13 = 0x8000000252E65610;
              break;
            case 0x1D:
              v13 = 0xE600000000000000;
              v14 = 0x726574616568;
              break;
            case 0x1E:
              v13 = 0xE600000000000000;
              v14 = 0x72656C6F6F63;
              break;
            case 0x1F:
              v13 = 0xE400000000000000;
              v14 = 1952541811;
              break;
            case 0x20:
              v14 = 0x7974697275636573;
              v13 = 0xEE006D6574737953;
              break;
            case 0x21:
              v13 = 0xEA00000000007265;
              v14 = 0x69666964696D7568;
              break;
            case 0x22:
              v14 = 0x6964696D75686564;
              v13 = 0xEC00000072656966;
              break;
            case 0x23:
              v14 = 0xD000000000000011;
              v13 = 0x8000000252E65660;
              break;
            case 0x24:
              v14 = 0x5F79616C70726961;
              v13 = 0xEF72656B61657073;
              break;
            case 0x25:
              v13 = 0xE800000000000000;
              v14 = 0x76745F656C707061;
              break;
            case 0x26:
              v14 = 0x5F74726F70726961;
              v13 = 0xEF73736572707865;
              break;
            case 0x27:
              v13 = 0xE700000000000000;
              v14 = 0x646F70656D6F68;
              break;
            case 0x28:
              v14 = 0x5F646F70656D6F68;
              v13 = 0xEC000000696E696DLL;
              break;
            case 0x29:
              v13 = 0xE400000000000000;
              v14 = 1684099177;
              break;
            case 0x2A:
              v13 = 0xE600000000000000;
              v14 = 0x656E6F685069;
              break;
            case 0x2B:
              v13 = 0xE700000000000000;
              v14 = 0x72656B61657073;
              break;
            case 0x2C:
              v14 = 0x69736976656C6574;
              v13 = 0xEA00000000006E6FLL;
              break;
            case 0x2D:
              v14 = 0x6974616769727269;
              v13 = 0xEF65766C61566E6FLL;
              break;
            case 0x2E:
              v13 = 0xE900000000000074;
              v14 = 0x654A7265776F6873;
              break;
            case 0x2F:
              v13 = 0xE600000000000000;
              v14 = 0x7265776F6873;
              break;
            case 0x30:
              v13 = 0xE400000000000000;
              v14 = 1802398067;
              break;
            case 0x31:
              v13 = 0xE900000000000072;
              v14 = 0x656C6B6E69727073;
              break;
            case 0x32:
              v14 = 0xD000000000000012;
              v13 = 0x8000000252E65350;
              break;
            case 0x33:
              v13 = 0xE800000000000000;
              v14 = 0x706F4D746F626F72;
              break;
            default:
              break;
          }

          v17 = 0x6C7562746867696CLL;
          v18 = 0xE900000000000062;
          switch(v6)
          {
            case 1:
              v18 = 0xE800000000000000;
              if (v14 == 0x6B636F4C726F6F64)
              {
                goto LABEL_161;
              }

              goto LABEL_162;
            case 2:
              v18 = 0xE800000000000000;
              if (v14 != 0x6172656D61437069)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 3:
              v18 = 0xEF676E6964726F63;
              if (v14 != 0x65526172656D6163)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 4:
              v18 = 0x8000000252E65490;
              if (v14 != 0xD000000000000011)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 5:
              v18 = 0x8000000252E654B0;
              if (v14 != 0xD000000000000010)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 6:
              v18 = 0xE600000000000000;
              if (v14 != 0x74656C74756FLL)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 7:
              v18 = 0xE600000000000000;
              if (v14 != 0x686374697773)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 8:
              v18 = 0xEA00000000007461;
              if (v14 != 0x74736F6D72656874)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 9:
              v18 = 0xEF6E61466E6F6974;
              if (v14 != 0x616C6C69746E6576)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 10:
              v18 = 0xE600000000000000;
              if (v14 != 0x73646E696C62)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 11:
              v26 = 0x53636972656E6567;
              goto LABEL_141;
            case 12:
              v26 = 0x65536E6F69746F6DLL;
              v27 = 0x73726F736ELL;
              goto LABEL_143;
            case 13:
              v18 = 0x8000000252E65510;
              if (v14 != 0xD000000000000011)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 14:
              v24 = 0x79746964696D7568;
              v25 = 0x726F736E6553;
              goto LABEL_131;
            case 15:
              v18 = 0x8000000252E65540;
              if (v14 != 0xD000000000000010)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 16:
              v18 = 0x8000000252E65560;
              if (v14 != 0xD000000000000014)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 17:
              v18 = 0x8000000252E65580;
              if (v14 != 0xD000000000000013)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 18:
              v29 = 0x53656B6F6D73;
              goto LABEL_136;
            case 19:
              v26 = 0x53746361746E6F63;
LABEL_141:
              v28 = 1869835877;
              goto LABEL_142;
            case 20:
              v26 = 0x657A69726F746F6DLL;
              v28 = 1869562980;
LABEL_142:
              v27 = v28 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
LABEL_143:
              v18 = v27 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              if (v14 != v26)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 21:
              v18 = 0xEF776F646E695764;
              if (v14 != 0x657A69726F746F6DLL)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 22:
              v29 = 0x53746867696CLL;
LABEL_136:
              v18 = 0xEB00000000726F73;
              if (v14 != (v29 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000))
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 23:
              v20 = 0x636E61707563636FLL;
              v21 = 0x6F736E655379;
              goto LABEL_148;
            case 24:
              v18 = 0xEA0000000000726FLL;
              if (v14 != 0x736E65536B61656CLL)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 25:
              v18 = 0xE700000000000000;
              if (v14 != 0x79726574746162)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 26:
              v18 = 0xE800000000000000;
              if (v14 != 0x6C6C6542726F6F64)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 27:
              v18 = 0xEB00000000726569;
              if (v14 != 0x6669727550726961)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 28:
              v18 = 0x8000000252E65610;
              if (v14 != 0xD000000000000011)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 29:
              v18 = 0xE600000000000000;
              v19 = 1952540008;
              goto LABEL_153;
            case 30:
              v18 = 0xE600000000000000;
              v19 = 1819242339;
              goto LABEL_153;
            case 31:
              v18 = 0xE400000000000000;
              if (v14 != 1952541811)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 32:
              v24 = 0x7974697275636573;
              v25 = 0x6D6574737953;
LABEL_131:
              v18 = v25 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              if (v14 != v24)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 33:
              v18 = 0xEA00000000007265;
              if (v14 != 0x69666964696D7568)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 34:
              v22 = 0x6964696D75686564;
              v23 = 1919248742;
              goto LABEL_92;
            case 35:
              v18 = 0x8000000252E65660;
              if (v14 != 0xD000000000000011)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 36:
              v20 = 0x5F79616C70726961;
              v21 = 0x656B61657073;
LABEL_148:
              v18 = v21 & 0xFFFFFFFFFFFFLL | 0xEF72000000000000;
              if (v14 != v20)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 37:
              v18 = 0xE800000000000000;
              if (v14 != 0x76745F656C707061)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 38:
              v18 = 0xEF73736572707865;
              if (v14 != 0x5F74726F70726961)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 39:
              v18 = 0xE700000000000000;
              if (v14 != 0x646F70656D6F68)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 40:
              v22 = 0x5F646F70656D6F68;
              v23 = 1768843629;
LABEL_92:
              v18 = v23 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              if (v14 != v22)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 41:
              v18 = 0xE400000000000000;
              if (v14 != 1684099177)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 42:
              v18 = 0xE600000000000000;
              if (v14 != 0x656E6F685069)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 43:
              v18 = 0xE700000000000000;
              if (v14 != 0x72656B61657073)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 44:
              v18 = 0xEA00000000006E6FLL;
              if (v14 != 0x69736976656C6574)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 45:
              v18 = 0xEF65766C61566E6FLL;
              if (v14 != 0x6974616769727269)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 46:
              v18 = 0xE900000000000074;
              v17 = 0x654A7265776F6873;
              goto LABEL_160;
            case 47:
              v18 = 0xE600000000000000;
              v19 = 2003789939;
LABEL_153:
              if (v14 != (v19 & 0xFFFF0000FFFFFFFFLL | 0x726500000000))
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 48:
              v18 = 0xE400000000000000;
              if (v14 != 1802398067)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 49:
              v18 = 0xE900000000000072;
              if (v14 != 0x656C6B6E69727073)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 50:
              v18 = 0x8000000252E65350;
              if (v14 != 0xD000000000000012)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            case 51:
              v18 = 0xE800000000000000;
              if (v14 != 0x706F4D746F626F72)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            default:
LABEL_160:
              if (v14 != v17)
              {
                goto LABEL_162;
              }

LABEL_161:
              if (v13 == v18)
              {

                goto LABEL_4;
              }

LABEL_162:
              v30 = sub_252E37DB4();

              if (v30)
              {
                goto LABEL_4;
              }

              v9 = (v9 + 1) & v8;
              v10 = v9 >> 6;
              v11 = *(v5 + 8 * (v9 >> 6));
              v12 = 1 << v9;
              if ((v11 & (1 << v9)) == 0)
              {
                goto LABEL_167;
              }

              break;
          }
        }
      }

LABEL_167:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v31 = *(v3 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      *(v3 + 16) = v33;
LABEL_4:
      if (++v4 == v34)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_252A00850(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_252E37DB4() & 1;
  }
}

uint64_t sub_252A008A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416B0, &qword_252E40978);
    v3 = sub_252E379A4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v11 = (v6 + 16 * v4);
      v12 = *v11;
      v13 = *(v11 + 8);
      sub_252E37EC4();
      sub_252E37EE4();
      if (v13 != 1)
      {
        MEMORY[0x2530AE390](v12);
      }

      result = sub_252E37F14();
      v15 = ~(-1 << *(v3 + 32));
      v16 = result & v15;
      v17 = (result & v15) >> 6;
      v18 = *(v5 + 8 * v17);
      v19 = 1 << (result & v15);
      v20 = *(v3 + 48);
      if ((v19 & v18) != 0)
      {
        do
        {
          v22 = v20 + 16 * v16;
          if (*(v22 + 8))
          {
            if (v13)
            {
              goto LABEL_5;
            }
          }

          else
          {
            if (*v22 == v12)
            {
              v21 = v13;
            }

            else
            {
              v21 = 1;
            }

            if ((v21 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v16 = (v16 + 1) & v15;
          v17 = v16 >> 6;
          v18 = *(v5 + 8 * (v16 >> 6));
          v19 = 1 << v16;
        }

        while ((v18 & (1 << v16)) != 0);
      }

      *(v5 + 8 * v17) = v18 | v19;
      v7 = v20 + 16 * v16;
      *v7 = v12;
      *(v7 + 8) = v13;
      v8 = *(v3 + 16);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        break;
      }

      *(v3 + 16) = v10;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_252A00A2C(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

_OWORD *sub_252A00AF4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_252A00B04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v5);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_252A00BB4(char *a1)
{
  v2 = v1;
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (!v8)
  {
    if (qword_27F53F530 != -1)
    {
LABEL_66:
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD000000000000077, 0x8000000252E71550, 0xD000000000000017, 0x8000000252E715D0, 49);
    return 0;
  }

  v9 = v8;
  sub_252E32E74();
  v10 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v11 = sub_252E32E44();
  v12 = [v10 initWithNSUUID_];

  (*(v5 + 8))(v7, v4);
  [v9 setCommandId_];

  v13 = 1;
  [v9 setCommandType_];
  v14 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (v15 <= 4)
  {
    if (!v15)
    {
      v13 = 0;
      goto LABEL_12;
    }

    if (v15 != 3)
    {
      if (v15 != 4)
      {
        goto LABEL_13;
      }

LABEL_12:
      [v9 setCommandOutcome_];
      goto LABEL_13;
    }

LABEL_11:
    v13 = 2;
    goto LABEL_12;
  }

  if ((v15 - 5) < 2 || v15 == 100)
  {
    goto LABEL_11;
  }

LABEL_13:
  v17 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
  if (!v17)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v24 = sub_252E36AD4();
    __swift_project_value_buffer(v24, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD000000000000077, 0x8000000252E71550, 0xD000000000000017, 0x8000000252E715D0, 60);

    return 0;
  }

  v18 = v17;
  if ([v9 commandOutcome] == 1)
  {
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  inited = swift_initStackObject();
  v20 = inited;
  *(inited + 16) = xmmword_252E3C290;
  v21 = *(v2 + v14);
  if (v21 > 4)
  {
    switch(v21)
    {
      case 100:
        v25 = "failureNoMatchingEntities";
        break;
      case 6:
        v25 = "failureRequiringAppLaunch";
        break;
      case 5:
        v22 = 0xE700000000000000;
        v23 = 0x6572756C696166;
        goto LABEL_34;
      default:
LABEL_29:
        v22 = 0xE700000000000000;
        v23 = 0x6E776F6E6B6E75;
        goto LABEL_34;
    }

    v22 = (v25 - 32) | 0x8000000000000000;
    v23 = 0xD000000000000019;
    goto LABEL_34;
  }

  if (!v21)
  {
    goto LABEL_29;
  }

  if (v21 == 3)
  {
    v22 = 0xEA00000000007373;
    v23 = 0x6572676F72506E69;
    goto LABEL_34;
  }

  if (v21 != 4)
  {
    goto LABEL_29;
  }

  v22 = 0xE700000000000000;
  v23 = 0x73736563637573;
LABEL_34:
  *(inited + 32) = v23;
  *(inited + 40) = v22;
  sub_252AD4414(inited);
  swift_setDeallocating();
  sub_252A01B34(v20 + 32);
  v26 = sub_252E37254();

  [v18 setHomeAutomationRequestErrorReasons_];

LABEL_35:
  v27 = [a1 automatableTask];
  if (v27)
  {
    v28 = v27;
    v143 = v9;
    type metadata accessor for ControlAutomateHomeIntent();
    v29 = swift_dynamicCastClass();
    if (!v29)
    {
      v33 = v28;
      goto LABEL_126;
    }

    v30 = *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
    v31 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
    v32 = v30;

    v33 = [v31 init];
    [v33 setUserTask_];
    v34 = type metadata accessor for HomeFilter();
    v35 = sub_252E37254();

    [v33 setFilters_];

    [v33 setTime_];
    v142 = type metadata accessor for HomeStore(0);
    v36 = static HomeStore.shared.getter(v142);
    v37 = v36[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
    if (v37 != 2 && (v37 & 1) == 0 || (v38 = [v33 filters]) == 0)
    {

      goto LABEL_70;
    }

    v39 = v38;
    v141 = v34;
    v40 = sub_252E37264();

    v41 = [v33 userTask];
    v42 = HomeStore.services(matching:supporting:)(v40, v41);
    v44 = v43;

    if (v44)
    {
      sub_252929F10(v42, 1);
LABEL_69:
      v34 = v141;
LABEL_70:
      v67 = [v33 userTask];
      if (v67)
      {
        v68 = v67;
        v69 = [v67 attribute];

        if (v69 != 67)
        {
          goto LABEL_95;
        }

        v71 = static HomeStore.shared.getter(v70);
        v72 = v71[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
        if (v72 == 2 || (v72) && (v73 = [v33 filters]) != 0)
        {
          v74 = v73;
          v75 = sub_252E37264();

          v76 = [v33 userTask];
          v77 = HomeStore.accessories(matching:supporting:)(v75, v76);
          v79 = v78;

          if (v79)
          {
            sub_252929F10(v77, 1);
            goto LABEL_95;
          }

          v140 = a1;
          v141 = v34;
          v80 = v77 & 0xFFFFFFFFFFFFFF8;
          v139 = v33;
          if (v77 >> 62)
          {
            v81 = sub_252E378C4();
            if (v81)
            {
              goto LABEL_81;
            }
          }

          else
          {
            v81 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v81)
            {
LABEL_81:
              v138 = v18;
              v33 = 0;
              v82 = v77;
              v144 = v77 & 0xC000000000000001;
              a1 = MEMORY[0x277D84F90];
              v83 = v77 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if (v144)
                {
                  v84 = MEMORY[0x2530ADF00](v33, v82);
                  v18 = (v33 + 1);
                  if (__OFADD__(v33, 1))
                  {
                    goto LABEL_136;
                  }
                }

                else
                {
                  if (v33 >= *(v80 + 16))
                  {
                    goto LABEL_137;
                  }

                  v84 = v82[v33 + 4];

                  v18 = (v33 + 1);
                  if (__OFADD__(v33, 1))
                  {
LABEL_136:
                    __break(1u);
LABEL_137:
                    __break(1u);
LABEL_138:
                    v127 = sub_252E378C4();

LABEL_125:
                    sub_252C77358(v127);
                    goto LABEL_126;
                  }
                }

                v85 = (*(*v84 + 256))();
                v86 = HomeDeviceType.description.getter(v85);
                v88 = v87;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  a1 = sub_2529F7A80(0, *(a1 + 2) + 1, 1, a1);
                }

                v90 = *(a1 + 2);
                v89 = *(a1 + 3);
                if (v90 >= v89 >> 1)
                {
                  a1 = sub_2529F7A80((v89 > 1), v90 + 1, 1, a1);
                }

                *(a1 + 2) = v90 + 1;
                v91 = &a1[16 * v90];
                *(v91 + 4) = v86;
                *(v91 + 5) = v88;
                ++v33;
                v80 = v83;
                if (v18 == v81)
                {
                  sub_252929F10(v82, 0);
                  v18 = v138;
                  sub_252C76E8C(a1);
                  goto LABEL_94;
                }
              }
            }
          }

          sub_252929F10(v77, 0);
          v33 = v139;
          a1 = v140;
        }

        else
        {
        }
      }

      else
      {
        sub_252C515AC();
      }

LABEL_95:
      v92 = [v33 filters];
      if (v92)
      {
        v93 = v92;
        v94 = sub_252E37264();

        LOBYTE(v93) = sub_252B1F8D4(v94);

        v92 = dword_252E40B2C[v93];
      }

      sub_252C7704C(v92);
      v95 = [v33 userTask];
      if (v95)
      {
        v96 = v95;
        v97 = [v95 attribute];

        if (v97 == 67)
        {
          v98 = [v33 userTask];
          if (v98)
          {
            v99 = v98;
            v100 = [v98 value];

            if (v100)
            {
              v101 = [v100 cleaningJob];

              if (v101)
              {
                v102 = sub_252DB7E0C(v101);
                sub_252C771A8(v102, v103);

                goto LABEL_108;
              }
            }
          }
        }
      }

      else
      {
        sub_252C515AC();
      }

      v104 = [v33 userTask];
      if (v104)
      {
        v105 = v104;
        v106 = [v104 attribute];

        v104 = HomeAttributeType.description.getter(v106);
        v108 = v107;
      }

      else
      {
        v108 = 0;
      }

      sub_252C771A8(v104, v108);
LABEL_108:

      v109 = sub_252C4D664(5);
      if (v109)
      {
        v110 = static HomeStore.shared.getter(v109);
        v111 = [v33 filters];
        if (v111)
        {
          v112 = v111;
          v113 = sub_252E37264();
        }

        else
        {
          v113 = MEMORY[0x277D84F90];
        }

        v114 = HomeStore.scenes(matching:)(v113);
        v116 = v115;

        if ((v116 & 1) == 0)
        {
          v126 = sub_2529289F0(v114);
          sub_252929F10(v114, 0);
          if (v126 >> 62)
          {
            goto LABEL_138;
          }

          v127 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);

          goto LABEL_125;
        }

        sub_252929F10(v114, 1);
      }

      v117 = static HomeStore.shared.getter(v109);
      v118 = v117[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
      if (v118 == 2 || (v118) && (v119 = [v33 filters]) != 0)
      {
        v120 = v119;
        v121 = sub_252E37264();

        v122 = [v33 userTask];
        v123 = HomeStore.services(matching:supporting:)(v121, v122);
        v125 = v124;

        if ((v125 & 1) == 0)
        {
          if (v123 >> 62)
          {
            v127 = sub_252E378C4();
          }

          else
          {
            v127 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_252929F10(v123, 0);
          goto LABEL_125;
        }

        sub_252929F10(v123, 1);
      }

      else
      {

        v33 = v117;
      }

LABEL_126:

      v9 = v143;
      goto LABEL_127;
    }

    v45 = v42 & 0xFFFFFFFFFFFFFF8;
    v140 = a1;
    if (v42 >> 62)
    {
      v46 = sub_252E378C4();
      if (v46)
      {
LABEL_46:
        v138 = v18;
        v139 = v33;
        v47 = 0;
        v48 = MEMORY[0x277D84F90];
        v144 = v42 & 0xC000000000000001;
        do
        {
          if (v144)
          {
            v49 = MEMORY[0x2530ADF00](v47, v42);
            v50 = v47 + 1;
            if (__OFADD__(v47, 1))
            {
              goto LABEL_64;
            }
          }

          else
          {
            if (v47 >= *(v45 + 16))
            {
              goto LABEL_65;
            }

            v49 = *(v42 + 8 * v47 + 32);

            v50 = v47 + 1;
            if (__OFADD__(v47, 1))
            {
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }
          }

          v51 = v46;
          v52 = v45;
          v53 = [*(v49 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
          v54 = sub_252E36F34();
          v56 = v55;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v57 = off_27F546230;
          if (*(off_27F546230 + 2) && (v58 = sub_252A44A10(v54, v56), (v59 & 1) != 0))
          {
            v60 = *(v57[7] + 8 * v58);
          }

          else
          {
            v60 = 0;
          }

          v61 = HomeDeviceType.description.getter(v60);
          v63 = v62;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_2529F7A80(0, *(v48 + 2) + 1, 1, v48);
          }

          v65 = *(v48 + 2);
          v64 = *(v48 + 3);
          if (v65 >= v64 >> 1)
          {
            v48 = sub_2529F7A80((v64 > 1), v65 + 1, 1, v48);
          }

          *(v48 + 2) = v65 + 1;
          v66 = &v48[16 * v65];
          *(v66 + 4) = v61;
          *(v66 + 5) = v63;
          ++v47;
          v46 = v51;
          v45 = v52;
        }

        while (v50 != v51);
        sub_252929F10(v42, 0);
        v18 = v138;
        sub_252C76E8C(v48);
LABEL_94:

        v33 = v139;
        a1 = v140;
        goto LABEL_95;
      }
    }

    else
    {
      v46 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
        goto LABEL_46;
      }
    }

    sub_252929F10(v42, 0);
    a1 = v140;
    goto LABEL_69;
  }

LABEL_127:
  v128 = [a1 trigger];
  if (v128)
  {
    v129 = sub_252B8DE98();

    v130 = v129;
  }

  else
  {
    v130 = 0;
  }

  v145 = v128 == 0;
  sub_252C774DC(v130 | ((v128 == 0) << 32));
  v131 = [a1 trigger];
  if (v131)
  {
    v132 = v131;
    v133 = [v131 recurrence];

    if (v133)
    {

      LOBYTE(v131) = 1;
    }

    else
    {
      LOBYTE(v131) = 0;
    }
  }

  sub_252C7763C(v131);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_252E3C130;
  *(v134 + 32) = v18;
  sub_252A01B88();
  v135 = v18;
  v136 = sub_252E37254();

  [v9 setHomeAutomationRequests_];

  return v9;
}

unint64_t sub_252A01B88()
{
  result = qword_27F5418B8;
  if (!qword_27F5418B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5418B8);
  }

  return result;
}

uint64_t sub_252A01C18@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TurnOffWhenEqualsOrLessThanZeroHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252A01C4C(void *a1)
{
  result = [a1 userTask];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [result value];

  if (!v4)
  {
    return 0;
  }

  if ([v4 type] == 2)
  {
    [v4 doubleValue];
    v6 = v5;
  }

  else
  {
    if ([v4 type] != 4)
    {

      return 0;
    }

    v7 = [v4 integerValue];

    v6 = v7;
  }

  v8 = sub_252C4B5D4();
  result = 0;
  if (!v8 || v6 > 0.0)
  {
    return result;
  }

  v9 = type metadata accessor for HomeStore(0);
  v10 = static HomeStore.shared.getter(v9);
  v11 = v10[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v11 != 2 && (v11 & 1) == 0 || (v12 = [a1 filters]) == 0)
  {

LABEL_48:
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v38 = sub_252E36AD4();
    __swift_project_value_buffer(v38, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000046, 0x8000000252E71680, 0xD00000000000009FLL, 0x8000000252E716D0);
    return 0;
  }

  v13 = v12;
  type metadata accessor for HomeFilter();
  v14 = sub_252E37264();

  v15 = [a1 userTask];
  v16 = HomeStore.services(matching:supporting:)(v14, v15);
  v18 = v17;

  if (v18)
  {
    v19 = v16;
    v20 = 1;
LABEL_47:
    sub_252929F10(v19, v20);
    goto LABEL_48;
  }

  if (v16 >> 62)
  {
LABEL_45:
    v21 = sub_252E378C4();
    if (v21)
    {
      goto LABEL_18;
    }

LABEL_46:
    v19 = v16;
    v20 = 0;
    goto LABEL_47;
  }

  v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_46;
  }

LABEL_18:
  v22 = 0;
  v39 = MEMORY[0x277D84F90];
  while ((v16 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](v22, v16);
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_26;
    }

LABEL_22:
    v24 = sub_252CD9C58();

    sub_25297A864(v24);
    ++v22;
    if (v23 == v21)
    {
      goto LABEL_27;
    }
  }

  if (v22 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_45;
  }

  v23 = v22 + 1;
  if (!__OFADD__(v22, 1))
  {
    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  sub_252929F10(v16, 0);
  v25 = [a1 userTask];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 attribute];

    if (v27 == 11)
    {
      v28 = *(v39 + 16);
      if (v28)
      {
        v29 = 32;
        while (1)
        {
          v30 = vdupq_n_s64(*(v39 + v29));
          if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2864A9218, v30), vceqq_s64(unk_2864A9228, v30)))) & 1) == 0)
          {
            break;
          }

          v29 += 8;
          if (!--v28)
          {
LABEL_33:

            return 1;
          }
        }
      }
    }
  }

  else
  {
    sub_252C515AC();
  }

  v31 = [a1 userTask];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 attribute];

    if (v33 == 2)
    {
      v34 = *(v39 + 16);
      if (v34)
      {
        v35 = 32;
        while (1)
        {
          v36 = *(v39 + v35);
          v37 = vdupq_n_s64(v36);
          if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2864A91D0, v37), vceqq_s64(unk_2864A91E0, v37)))) & 1) == 0 && qword_2864A91F0 != v36)
          {
            break;
          }

          v35 += 8;
          if (!--v34)
          {
            goto LABEL_33;
          }
        }
      }
    }
  }

  else
  {

    sub_252C515AC();
  }

  return 0;
}

id sub_252A020B4(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setBoolValue_];
  [v5 setType_];

  v6 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setTaskType_];
  [v9 setAttribute_];
  [v9 setValue_];

  v10 = [a1 filters];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for HomeFilter();
    v12 = sub_252E37264();
  }

  else
  {
    v12 = 0;
  }

  v13 = [a1 time];
  v14 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v14 setUserTask_];
  if (v12)
  {
    type metadata accessor for HomeFilter();
    v15 = sub_252E37254();
  }

  else
  {
    v15 = 0;
  }

  [v14 setFilters_];

  [v14 setTime_];
  return v14;
}

uint64_t sub_252A02300(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return sub_252A02548(a2);
}

void *sub_252A023B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BlockMulticardinalRequestsHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

BOOL sub_252A023EC(void *a1, void *a2)
{
  v3 = [a1 userTask];
  if (v3 && (v4 = v3, v5 = [v3 attribute], v4, v5 == 6))
  {
    return 0;
  }

  else
  {

    v8 = sub_252C7634C(v7);

    v9 = *(v8 + 16);

    if (v9 <= 1 && (v10 = , v11 = sub_252C7634C(v10), , v12 = *(v11 + 16), , v12 <= 1) && (v13 = , v14 = sub_252C75848(v13), , v15 = *(v14 + 16), , v15 <= 1))
    {
      memcpy(v17, a2 + 19, sizeof(v17));
      return sub_252A0E3E4();
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_252A02548(uint64_t a1)
{
  *(v2 + 1000) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  *(v2 + 1008) = swift_task_alloc();
  v4 = *(a1 + 48);
  *(v2 + 904) = *(a1 + 32);
  *(v2 + 920) = v4;
  *(v2 + 936) = *(a1 + 64);
  v5 = *(a1 + 16);
  *(v2 + 872) = *a1;
  *(v2 + 888) = v5;
  *(v2 + 1016) = *(a1 + 80);
  v6 = *(a1 + 104);
  *(v2 + 952) = *(a1 + 88);
  *(v2 + 968) = v6;
  *(v2 + 984) = *(a1 + 120);
  *(v2 + 1024) = *(a1 + 136);
  memcpy((v2 + 520), (a1 + 152), 0x160uLL);

  return MEMORY[0x2822009F8](sub_252A02644, 0, 0);
}

uint64_t sub_252A02644()
{
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1016);
  v2 = sub_252E36AD4();
  v14 = *(v0 + 1024);
  __swift_project_value_buffer(v2, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E717B0, 0xD000000000000088, 0x8000000252E717E0);
  v3 = *(v0 + 920);
  *(v0 + 48) = *(v0 + 904);
  *(v0 + 64) = v3;
  *(v0 + 80) = *(v0 + 936);
  v4 = *(v0 + 888);
  *(v0 + 16) = *(v0 + 872);
  *(v0 + 32) = v4;
  v5 = *(v0 + 968);
  *(v0 + 104) = *(v0 + 952);
  *(v0 + 96) = v1;
  *(v0 + 120) = v5;
  *(v0 + 136) = *(v0 + 984);
  *(v0 + 152) = v14;
  memcpy((v0 + 168), (v0 + 520), 0x160uLL);
  if (sub_252956B94((v0 + 16)) == 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v8 = *(*(v0 + 1024) + 16) > 1uLL || *(*(v0 + 1032) + 16) > 1uLL;
    v7 = *(*(v0 + 144) + 16) > 1;
    v6 = *(*(v0 + 1016) + 16) > 1uLL;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E3C280;
  *(v9 + 32) = 0xD000000000000015;
  *(v9 + 40) = 0x8000000252E718A0;
  v10 = MEMORY[0x277D839B0];
  *(v9 + 48) = v7;
  *(v9 + 72) = v10;
  *(v9 + 80) = 0xD00000000000001ALL;
  *(v9 + 88) = 0x8000000252E718C0;
  *(v9 + 96) = v8;
  *(v9 + 120) = v10;
  *(v9 + 128) = 0xD000000000000019;
  *(v9 + 136) = 0x8000000252E718E0;
  *(v9 + 168) = v10;
  *(v9 + 144) = v6;

  sub_252E362B4();

  v11 = swift_task_alloc();
  *(v0 + 1040) = v11;
  *v11 = v0;
  v11[1] = sub_252A02928;
  v12 = *(v0 + 1008);

  return sub_252958364(v12);
}

uint64_t sub_252A02928()
{
  v2 = *(*v1 + 1008);
  v3 = *v1;
  *(v3 + 1048) = v0;

  sub_25295A3FC(v2);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252A02A8C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_252A02A8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252A02AF0()
{
  if (*v0)
  {
    return 0x707365526B736174;
  }

  else
  {
    return 0x797469746E65;
  }
}

uint64_t sub_252A02B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x707365526B736174 && a2 == 0xED00007365736E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_252A02C14(uint64_t a1)
{
  v2 = sub_252A05FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A02C50(uint64_t a1)
{
  v2 = sub_252A05FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252A02C8C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5418D8, &qword_252E40EB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A05FE4();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for CodableEntityResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for CodableEntity();
    v10 = 0;
    sub_252A06D60(&qword_27F5418E8, type metadata accessor for CodableEntity, asc_252E40DE0);
    sub_252E37C64();
    *(v1 + 16) = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5418F0, &qword_252E40EB8);
    v10 = 1;
    sub_252A06CC4(&qword_27F5418F8, &qword_27F541900, aY_9, MEMORY[0x277D83978]);
    sub_252E37C64();
    (*(v5 + 8))(v7, v4);
    *(v1 + 24) = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252A02F14(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5419A0, &qword_252E40F10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A05FE4();
  sub_252E37F84();
  v11 = *(v3 + 16);
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5419A8, &qword_252E40F18);
  sub_252A06C10();
  sub_252E37D54();
  if (!v2)
  {
    v11 = *(v3 + 24);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5418F0, &qword_252E40EB8);
    sub_252A06CC4(&qword_27F5419C0, &qword_27F5419C8, aQ_13, MEMORY[0x277D83948]);
    sub_252E37D54();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_252A03108()
{
  type metadata accessor for HomeEntityResponse.Builder();
  v1 = swift_allocObject();
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v2.n128_f64[0] = HomeEntity.Builder.init()();
  v4 = (*(*v3 + 448))(v2);

  v5 = MEMORY[0x277D84F90];
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  if (*(v0 + 16))
  {

    v6 = v1;
    v7 = sub_252A03EDC();

    *(v6 + 16) = v7;
  }

  v8 = *(v0 + 24);
  if (v8 >> 62)
  {
    goto LABEL_26;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v9)
  {
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2530ADF00](v10, v8);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v11 = *(v8 + 8 * v10 + 32);

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          v9 = sub_252E378C4();
          goto LABEL_5;
        }
      }

      v13 = objc_allocWithZone(type metadata accessor for HomeUserTask());
      v14 = sub_252E36F04();
      v15 = [v13 initWithIdentifier:0 displayString:v14];

      v16 = v15;
      [v16 setTaskType_];
      [v16 setAttribute_];
      [v16 setValue_];

      v17 = sub_252E285FC(*(v11 + 24));
      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = v17;
      }

      if (*(v11 + 16))
      {

        v20 = sub_252A05170();

        v16 = v20;
      }

      v21 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
      v22 = v16;
      v23 = sub_252E36F04();
      v24 = [v21 initWithIdentifier:0 displayString:v23];

      v25 = v24;
      [v25 setTaskOutcome_];
      [v25 setUserTask_];

      MEMORY[0x2530AD700](v26);
      if (*(v5 + 16) >= *(v5 + 24) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v10;
      if (v12 == v9)
      {
        v27 = v5;
        goto LABEL_23;
      }
    }
  }

  v27 = MEMORY[0x277D84F90];
LABEL_23:

  v28 = sub_25297D0C0(v27);

  v30 = (*(*v28 + 192))(v29);

  return v30;
}