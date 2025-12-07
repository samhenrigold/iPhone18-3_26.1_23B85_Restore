uint64_t sub_252CD95D8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
  sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
  v2 = sub_252E37264();

  if (v2 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 characteristicType];
      v10 = sub_252E36F34();
      v12 = v11;

      if (qword_27F53F8D0 != -1)
      {
        swift_once();
      }

      v13 = off_27F546248;
      if (*(off_27F546248 + 2))
      {
        v14 = sub_252A44A10(v10, v12);
        if (v15)
        {
          goto LABEL_20;
        }
      }

      if (qword_27F53F8E0 != -1)
      {
        swift_once();
      }

      v13 = off_27F546258;
      if (*(off_27F546258 + 2))
      {
        v14 = sub_252A44A10(v10, v12);
        if (v16)
        {
          goto LABEL_20;
        }
      }

      if (qword_27F53F8C8 != -1)
      {
        swift_once();
      }

      v13 = off_27F546240;
      if (*(off_27F546240 + 2) && (v14 = sub_252A44A10(v10, v12), (v17 & 1) != 0))
      {
LABEL_20:
        v18 = *(v13[7] + 8 * v14);
      }

      else
      {
        v18 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2529F7A6C(0, *(v5 + 2) + 1, 1, v5);
      }

      v20 = *(v5 + 2);
      v19 = *(v5 + 3);
      if (v20 >= v19 >> 1)
      {
        v5 = sub_2529F7A6C((v19 > 1), v20 + 1, 1, v5);
      }

      *(v5 + 2) = v20 + 1;
      *&v5[8 * v20 + 32] = v18;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_33:

  v21 = *(v5 + 2);
  if (v21)
  {
    v22 = (v5 + 32);
    v23 = MEMORY[0x277D84F90];
    do
    {
      v27 = *v22++;
      v26 = v27;
      if (v27)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA360(0, *(v23 + 16) + 1, 1);
        }

        v25 = *(v23 + 16);
        v24 = *(v23 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_2529AA360((v24 > 1), v25 + 1, 1);
        }

        *(v23 + 16) = v25 + 1;
        *(v23 + 8 * v25 + 32) = v26;
      }

      --v21;
    }

    while (v21);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  return v23;
}

uint64_t sub_252CD995C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
  sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
  v2 = sub_252E37264();

  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 characteristicType];
      v10 = sub_252E36F34();
      v12 = v11;

      if (qword_27F53F8E0 != -1)
      {
        swift_once();
      }

      v13 = off_27F546258;
      if (!*(off_27F546258 + 2))
      {

LABEL_14:
        v17 = 0;
        goto LABEL_15;
      }

      v14 = sub_252A44A10(v10, v12);
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        goto LABEL_14;
      }

      v17 = *(v13[7] + 8 * v14);
LABEL_15:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2529F7A6C(0, *(v5 + 2) + 1, 1, v5);
      }

      v19 = *(v5 + 2);
      v18 = *(v5 + 3);
      if (v19 >= v18 >> 1)
      {
        v5 = sub_2529F7A6C((v18 > 1), v19 + 1, 1, v5);
      }

      *(v5 + 2) = v19 + 1;
      *&v5[8 * v19 + 32] = v17;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_26:

  v20 = *(v5 + 2);
  if (v20)
  {
    v21 = (v5 + 32);
    v22 = MEMORY[0x277D84F90];
    do
    {
      v26 = *v21++;
      v25 = v26;
      if (v26)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA360(0, *(v22 + 16) + 1, 1);
        }

        v24 = *(v22 + 16);
        v23 = *(v22 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_2529AA360((v23 > 1), v24 + 1, 1);
        }

        *(v22 + 16) = v24 + 1;
        *(v22 + 8 * v24 + 32) = v25;
      }

      --v20;
    }

    while (v20);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  return v22;
}

uint64_t sub_252CD9C58()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
  sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
  v2 = sub_252E37264();

  if (v2 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v32 = v2 & 0xFFFFFFFFFFFFFF8;
    v33 = v2 & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v33)
      {
        v6 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *(v32 + 16))
        {
          goto LABEL_33;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 characteristicType];
      v10 = sub_252E36F34();
      v12 = v11;

      if (qword_27F53F8E0 != -1)
      {
        v13 = swift_once();
      }

      v14 = off_27F546258;
      if (*(off_27F546258 + 2))
      {
        v13 = sub_252A44A10(v10, v12);
        if (v15)
        {
          goto LABEL_23;
        }
      }

      if (qword_27F53F8A8 != -1)
      {
        v13 = swift_once();
      }

      v34[0] = v10;
      v34[1] = v12;
      MEMORY[0x28223BE20](v13);
      v31[2] = v34;
      if (sub_2529ED970(sub_25296A69C, v31, v16))
      {
        goto LABEL_24;
      }

      if (qword_27F53F8D0 != -1)
      {
        swift_once();
      }

      v14 = off_27F546248;
      if (*(off_27F546248 + 2))
      {
        v13 = sub_252A44A10(v10, v12);
        if (v17)
        {
          goto LABEL_23;
        }
      }

      if (qword_27F53F8C8 != -1)
      {
        swift_once();
      }

      v14 = off_27F546240;
      if (*(off_27F546240 + 2) && (v13 = sub_252A44A10(v10, v12), (v18 & 1) != 0))
      {
LABEL_23:
        v19 = *(v14[7] + 8 * v13);
      }

      else
      {
LABEL_24:
        v19 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2529F7A6C(0, *(v5 + 2) + 1, 1, v5);
      }

      v21 = *(v5 + 2);
      v20 = *(v5 + 3);
      if (v21 >= v20 >> 1)
      {
        v5 = sub_2529F7A6C((v20 > 1), v21 + 1, 1, v5);
      }

      *(v5 + 2) = v21 + 1;
      *&v5[8 * v21 + 32] = v19;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_36:

  v22 = *(v5 + 2);
  if (v22)
  {
    v23 = (v5 + 32);
    v24 = MEMORY[0x277D84F90];
    do
    {
      v28 = *v23++;
      v27 = v28;
      if (v28)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34[0] = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2529AA360(0, *(v24 + 16) + 1, 1);
          v24 = v34[0];
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2529AA360((v25 > 1), v26 + 1, 1);
          v24 = v34[0];
        }

        *(v24 + 16) = v26 + 1;
        *(v24 + 8 * v26 + 32) = v27;
      }

      --v22;
    }

    while (v22);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  return v24;
}

uint64_t sub_252CDA06C(void *a1)
{
  v2 = v1;
  v4 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [a1 groupName];
  if (v6)
  {

    v7 = type metadata accessor for HomeStore(0);
    v8 = static HomeStore.shared.getter(v7);
    v9 = sub_2529F1D14(a1);

    if (v9 >> 62)
    {
LABEL_19:
      v10 = sub_252E378C4();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    while (v10 != v11)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v11, v9);
        if (__OFADD__(v11, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        if (__OFADD__(v11, 1))
        {
          goto LABEL_14;
        }
      }

      v12 = sub_25294FCB4(v2);

      ++v11;
      if (v12)
      {

        v6 = 0;
        goto LABEL_17;
      }
    }

    return 0;
  }

LABEL_17:
  type metadata accessor for Accessory(v6);
  swift_allocObject();
  v14 = v5;
  sub_252D4CE7C(v14);
  v15 = sub_252D50978(a1);

  return v15 & 1;
}

uint64_t sub_252CDA218(void *a1)
{
  v2 = v1;
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v78 - v9;
  if ([a1 deviceType])
  {
    v11 = sub_252CD941C();
    if (v11 != [a1 deviceType])
    {
      v12 = sub_252CD94E0();
      v14 = v13;
      v15 = [a1 deviceType];
      if ((v14 & 1) != 0 || v12 != v15)
      {
        if (sub_252CD941C() != 34)
        {
          goto LABEL_32;
        }

        v51 = [*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
        if (v51)
        {
          v52 = v51;
          v53 = [v51 category];

          v54 = [v53 categoryType];
          v55 = sub_252E36F34();
          v57 = v56;
        }

        else
        {
          v55 = 0;
          v57 = 0;
        }

        v59 = sub_252DE8B3C(v55, v57);

        if (v59 != [a1 deviceType])
        {
LABEL_32:
          if (qword_27F53F4C8 != -1)
          {
            swift_once();
          }

          v60 = __swift_project_value_buffer(v4, qword_27F544D00);
          (*(v5 + 16))(v10, v60, v4);
          v82 = 0;
          v83 = 0xE000000000000000;
          sub_252E379F4();
          v62 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v61 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

          v82 = v62;
          v83 = v61;
          MEMORY[0x2530AD570](0x2065707974207327, 0xE900000000000028);
          v63 = sub_252CD941C();
          v64 = HomeDeviceType.description.getter(v63);
          MEMORY[0x2530AD570](v64);

          MEMORY[0x2530AD570](44, 0xE100000000000000);
          v65 = sub_252CD94E0();
          v67 = v66;
          v68 = 0;
          v69 = 0;
          if ((v67 & 1) == 0)
          {
            v68 = HomeDeviceType.description.getter(v65);
          }

          v80 = v68;
          v81 = v69;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
          v70 = sub_252E36F94();
          MEMORY[0x2530AD570](v70);

          MEMORY[0x2530AD570](0x746F6E2073692029, 0xE900000000000020);
          v71 = HomeDeviceType.description.getter([a1 deviceType]);
          MEMORY[0x2530AD570](v71);

          sub_252CC3D90(v82, v83, 0xD00000000000006DLL, 0x8000000252E928D0);

          (*(v5 + 8))(v10, v4);
          return 0;
        }
      }
    }
  }

  v16 = [a1 outerDeviceName];
  if (v16)
  {
    v17 = v16;
    v18 = sub_252E36F34();
    v20 = v19;

    v21 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);
    v22 = [v21 accessory];
    if (!v22)
    {
LABEL_12:
      if (qword_27F53F4C0 != -1)
      {
        swift_once();
      }

      v32 = __swift_project_value_buffer(v4, qword_27F544CE8);
      (*(v5 + 16))(v8, v32, v4);
      v82 = 0;
      v83 = 0xE000000000000000;
      sub_252E379F4();
      v33 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
      v35 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v34 = *(v33 + 8);

      v82 = v35;
      v83 = v34;
      MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E92940);
      v36 = [v21 accessory];
      if (v36)
      {
        v37 = v36;
        v38 = [v36 name];

        v39 = sub_252E36F34();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0;
      }

      v80 = v39;
      v81 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      v58 = sub_252E36F94();
      MEMORY[0x2530AD570](v58);

      MEMORY[0x2530AD570](0x746F6E2073692029, 0xE900000000000020);
      MEMORY[0x2530AD570](v18, v20);

      sub_252CC3D90(v82, v83, 0xD00000000000006DLL, 0x8000000252E928D0);

      (*(v5 + 8))(v8, v4);
      return 0;
    }

    v79 = v8;
    v23 = v5;
    v24 = v4;
    v25 = v22;
    v26 = [v22 name];

    v27 = sub_252E36F34();
    v29 = v28;

    if (v27 == v18 && v29 == v20)
    {

      v4 = v24;
    }

    else
    {
      v31 = sub_252E37DB4();

      v4 = v24;
      v5 = v23;
      v8 = v79;
      if ((v31 & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  v42 = [*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
  if (v42)
  {
    v43 = v42;
    v79 = v4;
    if (![a1 outerDeviceType])
    {
LABEL_42:

      goto LABEL_43;
    }

    type metadata accessor for Accessory(0);
    swift_allocObject();
    v78 = v43;
    v44 = sub_252D4CE7C(v78);
    v45 = [a1 outerDeviceType];
    v46 = *(*v44 + 256);
    if (v46() == v45 || ((*(*v44 + 272))(), v47 = sub_252DB4F4C(), v48 = , (v47 & 1) != 0))
    {
LABEL_41:

      goto LABEL_42;
    }

    v49 = (v46)(v48);
    if (v49 == 38)
    {
      v50 = &unk_2864A0E78;
    }

    else
    {
      if (v49 != 41)
      {
        goto LABEL_40;
      }

      v50 = &unk_2864A0EA0;
    }

    sub_2529FC004(v50);
LABEL_40:
    v73 = sub_252DB4F4C();

    if ((v73 & 1) == 0)
    {
      v74 = sub_252D4FE78(v45);

      if (!v74)
      {
        if (qword_27F53F4C8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v79, qword_27F544D00);
        v82 = 0;
        v83 = 0xE000000000000000;
        sub_252E379F4();
        v76 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v75 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        v82 = v76;
        v83 = v75;
        MEMORY[0x2530AD570](0x2065707974207327, 0xEF20746F6E207369);
        v77 = HomeDeviceType.description.getter([a1 outerDeviceType]);
        MEMORY[0x2530AD570](v77);

        sub_252CC3D90(v82, v83, 0xD00000000000006DLL, 0x8000000252E928D0);

        return 0;
      }

      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_43:

  return sub_252967EAC(a1);
}

uint64_t sub_252CDAB7C(void *a1)
{
  if ([a1 attribute] == 5)
  {
    v42 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);
    v3 = [v42 characteristics];
    sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
    v4 = sub_252E37264();

    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_61:
      v6 = sub_252E378C4();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    while (v6 != v7)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v4);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_56;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v10 = [v8 characteristicType];
      v11 = sub_252E36F34();
      v13 = v12;

      if (v11 == sub_252E36F34() && v13 == v14)
      {

LABEL_20:

        v19 = [v42 characteristics];
        v4 = sub_252E37264();

        v5 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v4 >> 62)
        {
          v20 = sub_252E378C4();
        }

        else
        {
          v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v21 = 0;
        while (v20 != v21)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x2530ADF00](v21, v4);
          }

          else
          {
            if (v21 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v22 = *(v4 + 8 * v21 + 32);
          }

          v23 = v22;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_57;
          }

          v24 = [v22 characteristicType];
          v25 = sub_252E36F34();
          v27 = v26;

          if (v25 == sub_252E36F34() && v27 == v28)
          {

LABEL_37:

            v31 = [v42 characteristics];
            v5 = sub_252E37264();

            if (v5 >> 62)
            {
              v32 = sub_252E378C4();
            }

            else
            {
              v32 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v4 = 0;
            while (v32 != v4)
            {
              if ((v5 & 0xC000000000000001) != 0)
              {
                v33 = MEMORY[0x2530ADF00](v4, v5);
              }

              else
              {
                if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_60;
                }

                v33 = *(v5 + 8 * v4 + 32);
              }

              v34 = v33;
              if (__OFADD__(v4, 1))
              {
                goto LABEL_59;
              }

              v35 = [v33 characteristicType];
              v36 = sub_252E36F34();
              v38 = v37;

              if (v36 == sub_252E36F34() && v38 == v39)
              {

                goto LABEL_18;
              }

              v41 = sub_252E37DB4();

              ++v4;
              if (v41)
              {
                goto LABEL_18;
              }
            }

            goto LABEL_52;
          }

          v30 = sub_252E37DB4();

          ++v21;
          if (v30)
          {
            goto LABEL_37;
          }
        }

        break;
      }

      v16 = sub_252E37DB4();

      ++v7;
      if (v16)
      {
        goto LABEL_20;
      }
    }

LABEL_52:
  }

  else
  {
    sub_252DE8C4C(a1, v1);
    if (v17)
    {
LABEL_18:

      return 1;
    }
  }

  return 0;
}

uint64_t sub_252CDB028()
{
  v1 = v0;
  v2 = sub_252CD94E0();
  if (v3)
  {
    v2 = sub_252CD941C();
  }

  v4 = v2;
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v5.n128_f64[0] = HomeEntity.Builder.init()();
  v7 = (*(*v6 + 376))(*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v5);

  v8 = (*(*v7 + 384))(7);

  v9 = sub_252E32E24();
  v10 = (*(*v8 + 392))(v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401A0, &qword_252E3BFC8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_252E3C290;
  *(v11 + 32) = v4;
  v12 = (*(*v10 + 400))();

  v13 = (*(*v12 + 408))(0);

  v14 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);
  v15 = [v14 accessory];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 room];

    if (v17)
    {
      v18 = [v17 name];

      v19 = sub_252E36F34();
      v21 = v20;

      v15 = v19;
      goto LABEL_8;
    }

    v15 = 0;
  }

  v21 = 0;
LABEL_8:
  v22 = (*(*v13 + 416))(v15, v21);

  v23 = [v14 accessory];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 home];

    if (v25)
    {
      v26 = [v25 name];

      v27 = sub_252E36F34();
      v25 = v28;

      v23 = v27;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v29 = (*(*v22 + 424))(v23, v25);

  v31 = (*(*v29 + 448))(v30);

  return v31;
}

uint64_t *sub_252CDB44C()
{
  result = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
  if (result)
  {
    v2 = result;
    type metadata accessor for Accessory(0);
    swift_allocObject();
    return sub_252D4CE7C(v2);
  }

  return result;
}

void sub_252CDB4B0()
{
  v1 = v0;
  v67 = sub_252E32E84();
  v2 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HomeStore(0);
  v6 = static HomeStore.shared.getter(v5);
  v7 = sub_2529D8DC0();

  if (v7 >> 62)
  {
    goto LABEL_64;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_65:

    return;
  }

LABEL_3:
  v9 = 0;
  v10 = v7 & 0xC000000000000001;
  v11 = v7 & 0xFFFFFFFFFFFFFF8;
  v12 = v7 + 32;
  v66 = (v2 + 8);
  while (v10)
  {
    v13 = MEMORY[0x2530ADF00](v9, v7);
    v14 = __OFADD__(v9++, 1);
    if (v14)
    {
      goto LABEL_66;
    }

LABEL_7:
    v15 = sub_2529E7424();
    if (v15 >> 62)
    {
      v47 = v15;
      v16 = sub_252E378C4();
      v15 = v47;
      if (v16)
      {
LABEL_9:
        v17 = 0;
        v18 = v15 & 0xC000000000000001;
        v19 = v15 & 0xFFFFFFFFFFFFFF8;
        v20 = v15 + 32;
        v60 = v15;
        v61 = v7;
        v51 = v15 & 0xC000000000000001;
        v52 = v16;
        v49 = v15 + 32;
        v50 = v15 & 0xFFFFFFFFFFFFFF8;
        v57 = v8;
        v58 = v1;
        v62 = v13;
        v55 = v10;
        v56 = v9;
        v53 = v12;
        v54 = v11;
        do
        {
          if (v18)
          {
            v46 = v17;
            v65 = MEMORY[0x2530ADF00](v17, v15);
            v14 = __OFADD__(v46, 1);
            v22 = v46 + 1;
            if (v14)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v17 >= *(v19 + 16))
            {
              goto LABEL_68;
            }

            v65 = *(v20 + 8 * v17);
            v21 = v17;

            v14 = __OFADD__(v21, 1);
            v22 = v21 + 1;
            if (v14)
            {
              goto LABEL_69;
            }
          }

          v59 = v22;
          v23 = sub_252E32E24();
          v68 = v24;
          v64 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
          v25 = [*(v65 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) services];
          v63 = sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
          v7 = sub_252E37264();

          v1 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v7 >> 62)
          {
            v26 = sub_252E378C4();
          }

          else
          {
            v26 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v27 = 0;
          v2 = v7 & 0xC000000000000001;
          while (v26 != v27)
          {
            if (v2)
            {
              v29 = MEMORY[0x2530ADF00](v27, v7);
            }

            else
            {
              if (v27 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_61;
              }

              v29 = *(v7 + 8 * v27 + 32);
            }

            v30 = v29;
            if (__OFADD__(v27, 1))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              v8 = sub_252E378C4();
              if (!v8)
              {
                goto LABEL_65;
              }

              goto LABEL_3;
            }

            v31 = [v29 uniqueIdentifier];
            sub_252E32E64();

            v32 = sub_252E32E24();
            v34 = v33;
            (*v66)(v4, v67);
            if (v32 == v23 && v34 == v68)
            {

LABEL_57:

              return;
            }

            v28 = sub_252E37DB4();

            ++v27;
            if (v28)
            {

              goto LABEL_57;
            }
          }

          v35 = [*(v65 + v64) services];
          v36 = sub_252E37264();

          if (v36 >> 62)
          {
            v7 = sub_252E378C4();
            if (v7)
            {
LABEL_28:
              v37 = 0;
              v63 = v36 & 0xFFFFFFFFFFFFFF8;
              v64 = v36 & 0xC000000000000001;
              do
              {
                if (v64)
                {
                  v38 = MEMORY[0x2530ADF00](v37, v36);
                }

                else
                {
                  if (v37 >= *(v63 + 16))
                  {
                    goto LABEL_63;
                  }

                  v38 = *(v36 + 8 * v37 + 32);
                }

                v39 = v38;
                v2 = v37 + 1;
                if (__OFADD__(v37, 1))
                {
                  goto LABEL_62;
                }

                v40 = [v38 assistantIdentifier];
                if (v40)
                {
                  v41 = v40;
                  v42 = sub_252E36F34();
                  v44 = v43;

                  if (v42 == v23 && v44 == v68)
                  {

                    goto LABEL_59;
                  }

                  v1 = sub_252E37DB4();

                  if (v1)
                  {

LABEL_59:

                    return;
                  }
                }

                else
                {
                }

                ++v37;
              }

              while (v2 != v7);
            }
          }

          else
          {
            v7 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v7)
            {
              goto LABEL_28;
            }
          }

          v12 = v53;
          v1 = v58;
          v17 = v59;
          v7 = v61;
          v9 = v56;
          v8 = v57;
          v11 = v54;
          v10 = v55;
          v15 = v60;
          v19 = v50;
          v18 = v51;
          v20 = v49;
        }

        while (v59 != v52);
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_9;
      }
    }

    if (v9 == v8)
    {
      goto LABEL_65;
    }
  }

  if (v9 >= *(v11 + 16))
  {
    goto LABEL_67;
  }

  v13 = *(v12 + 8 * v9);

  v14 = __OFADD__(v9++, 1);
  if (!v14)
  {
    goto LABEL_7;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

id sub_252CDBAB8()
{
  result = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
  if (result)
  {
    v2 = result;
    type metadata accessor for Accessory(0);
    swift_allocObject();
    v3 = [*(sub_252D4CE7C(v2) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for Room(0);
      swift_allocObject();
      v5 = sub_2529A1E08(v4);

      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_252CDBB90()
{
  v109[0] = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

  MEMORY[0x2530AD570](0x3A65707974207B20, 0xE900000000000020);
  v1 = sub_252CD941C();
  v2 = HomeDeviceType.description.getter(v1);
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](44, 0xE100000000000000);
  v3 = v109[0];
  strcpy(v109, "identifier: ");
  BYTE5(v109[1]) = 0;
  HIWORD(v109[1]) = -5120;
  sub_252E32E84();
  sub_252950ADC(&qword_27F5404A8, MEMORY[0x277CC9628]);
  v4 = sub_252E37D94();
  MEMORY[0x2530AD570](v4);

  MEMORY[0x2530AD570](44, 0xE100000000000000);

  MEMORY[0x2530AD570](v109[0], v109[1]);

  sub_252E379F4();

  v109[0] = 0xD000000000000015;
  v109[1] = 0x8000000252E6AA20;
  v108[0] = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
  v108[1] = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v5 = sub_252E36F94();
  MEMORY[0x2530AD570](v5);

  MEMORY[0x2530AD570](44, 0xE100000000000000);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6AA20);

  v109[0] = 0;
  v109[1] = 0xE000000000000000;
  sub_252CD94E0();
  if (v6)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    strcpy(v108, "subtype: ");
    WORD1(v108[1]) = 0;
    HIDWORD(v108[1]) = -385875968;
    sub_252CD94E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543730, &qword_252E4DC38);
    v9 = sub_252E36F94();
    MEMORY[0x2530AD570](v9);

    MEMORY[0x2530AD570](44, 0xE100000000000000);
    v7 = v108[0];
    v8 = v108[1];
  }

  MEMORY[0x2530AD570](v7, v8);

  MEMORY[0x2530AD570](v109[0], v109[1]);

  v107 = v3;
  v109[0] = 0;
  v109[1] = 0xE000000000000000;
  v10 = sub_252CD95D8();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 32);
    v13 = MEMORY[0x277D84F90];
    do
    {
      v17 = *v12++;
      v16 = v17;
      if (v17)
      {
        v108[0] = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA360(0, *(v13 + 16) + 1, 1);
          v13 = v108[0];
        }

        v15 = *(v13 + 16);
        v14 = *(v13 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_2529AA360((v14 > 1), v15 + 1, 1);
          v13 = v108[0];
        }

        *(v13 + 16) = v15 + 1;
        *(v13 + 8 * v15 + 32) = v16;
      }

      --v11;
    }

    while (v11);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v18 = *(v13 + 16);

  if (v18)
  {
    sub_252E379F4();

    strcpy(v108, "attributes: ");
    BYTE5(v108[1]) = 0;
    HIWORD(v108[1]) = -5120;
    v19 = sub_252CD95D8();
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 32);
      v22 = MEMORY[0x277D84F90];
      do
      {
        v26 = *v21++;
        v25 = v26;
        if (v26)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA360(0, v22[2] + 1, 1);
          }

          v24 = v22[2];
          v23 = v22[3];
          if (v24 >= v23 >> 1)
          {
            sub_2529AA360((v23 > 1), v24 + 1, 1);
          }

          v22[2] = v24 + 1;
          v22[v24 + 4] = v25;
        }

        --v20;
      }

      while (v20);
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    v29 = v22[2];
    if (v29)
    {
      v30 = v22 + 4;
      v31 = MEMORY[0x277D84F90];
      do
      {
        v32 = *v30++;
        v33 = HomeAttributeType.description.getter(v32);
        v35 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_2529F7A80(0, *(v31 + 2) + 1, 1, v31);
        }

        v37 = *(v31 + 2);
        v36 = *(v31 + 3);
        if (v37 >= v36 >> 1)
        {
          v31 = sub_2529F7A80((v36 > 1), v37 + 1, 1, v31);
        }

        *(v31 + 2) = v37 + 1;
        v38 = &v31[16 * v37];
        *(v38 + 4) = v33;
        *(v38 + 5) = v35;
        --v29;
      }

      while (v29);
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
    }

    v39 = MEMORY[0x2530AD730](v31, MEMORY[0x277D837D0]);
    v41 = v40;

    MEMORY[0x2530AD570](v39, v41);

    MEMORY[0x2530AD570](8236, 0xE200000000000000);
    v27 = v108[0];
    v28 = v108[1];
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v27, v28);

  MEMORY[0x2530AD570](v109[0], v109[1]);

  v109[0] = 0;
  v109[1] = 0xE000000000000000;
  v42 = sub_252CD995C();
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = (v42 + 32);
    v45 = MEMORY[0x277D84F90];
    do
    {
      v49 = *v44++;
      v48 = v49;
      if (v49)
      {
        v108[0] = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA360(0, *(v45 + 16) + 1, 1);
          v45 = v108[0];
        }

        v47 = *(v45 + 16);
        v46 = *(v45 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_2529AA360((v46 > 1), v47 + 1, 1);
          v45 = v108[0];
        }

        *(v45 + 16) = v47 + 1;
        *(v45 + 8 * v47 + 32) = v48;
      }

      --v43;
    }

    while (v43);
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  v50 = *(v45 + 16);

  if (v50)
  {
    sub_252E379F4();

    v108[0] = 0xD000000000000012;
    v108[1] = 0x8000000252E92800;
    v51 = sub_252CD995C();
    v52 = *(v51 + 16);
    if (v52)
    {
      v53 = (v51 + 32);
      v54 = MEMORY[0x277D84F90];
      do
      {
        v58 = *v53++;
        v57 = v58;
        if (v58)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA360(0, v54[2] + 1, 1);
          }

          v56 = v54[2];
          v55 = v54[3];
          if (v56 >= v55 >> 1)
          {
            sub_2529AA360((v55 > 1), v56 + 1, 1);
          }

          v54[2] = v56 + 1;
          v54[v56 + 4] = v57;
        }

        --v52;
      }

      while (v52);
    }

    else
    {
      v54 = MEMORY[0x277D84F90];
    }

    v61 = v54[2];
    if (v61)
    {
      v62 = v54 + 4;
      v63 = MEMORY[0x277D84F90];
      do
      {
        v64 = *v62++;
        v65 = HomeAttributeType.description.getter(v64);
        v67 = v66;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_2529F7A80(0, *(v63 + 2) + 1, 1, v63);
        }

        v69 = *(v63 + 2);
        v68 = *(v63 + 3);
        if (v69 >= v68 >> 1)
        {
          v63 = sub_2529F7A80((v68 > 1), v69 + 1, 1, v63);
        }

        *(v63 + 2) = v69 + 1;
        v70 = &v63[16 * v69];
        *(v70 + 4) = v65;
        *(v70 + 5) = v67;
        --v61;
      }

      while (v61);
    }

    else
    {
      v63 = MEMORY[0x277D84F90];
    }

    v71 = MEMORY[0x2530AD730](v63, MEMORY[0x277D837D0]);
    v73 = v72;

    MEMORY[0x2530AD570](v71, v73);

    MEMORY[0x2530AD570](8236, 0xE200000000000000);
    v59 = v108[0];
    v60 = v108[1];
  }

  else
  {
    v59 = 0;
    v60 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v59, v60);

  MEMORY[0x2530AD570](v109[0], v109[1]);

  v109[0] = 0;
  v109[1] = 0xE000000000000000;
  v74 = sub_252CD9C58();
  v75 = *(v74 + 16);
  if (v75)
  {
    v76 = (v74 + 32);
    v77 = MEMORY[0x277D84F90];
    do
    {
      v81 = *v76++;
      v80 = v81;
      if (v81)
      {
        v108[0] = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA360(0, *(v77 + 16) + 1, 1);
          v77 = v108[0];
        }

        v79 = *(v77 + 16);
        v78 = *(v77 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_2529AA360((v78 > 1), v79 + 1, 1);
          v77 = v108[0];
        }

        *(v77 + 16) = v79 + 1;
        *(v77 + 8 * v79 + 32) = v80;
      }

      --v75;
    }

    while (v75);
  }

  else
  {
    v77 = MEMORY[0x277D84F90];
  }

  v82 = *(v77 + 16);

  v83 = 0xE000000000000000;
  if (v82)
  {
    sub_252E379F4();

    v108[0] = 0xD000000000000014;
    v108[1] = 0x8000000252E92820;
    v84 = sub_252CD9C58();
    v85 = *(v84 + 16);
    if (v85)
    {
      v86 = (v84 + 32);
      v87 = MEMORY[0x277D84F90];
      do
      {
        v91 = *v86++;
        v90 = v91;
        if (v91)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA360(0, v87[2] + 1, 1);
          }

          v89 = v87[2];
          v88 = v87[3];
          if (v89 >= v88 >> 1)
          {
            sub_2529AA360((v88 > 1), v89 + 1, 1);
          }

          v87[2] = v89 + 1;
          v87[v89 + 4] = v90;
        }

        --v85;
      }

      while (v85);
    }

    else
    {
      v87 = MEMORY[0x277D84F90];
    }

    v93 = v87[2];
    if (v93)
    {
      v94 = v87 + 4;
      v95 = MEMORY[0x277D84F90];
      do
      {
        v96 = *v94++;
        v97 = HomeAttributeType.description.getter(v96);
        v99 = v98;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_2529F7A80(0, *(v95 + 2) + 1, 1, v95);
        }

        v101 = *(v95 + 2);
        v100 = *(v95 + 3);
        if (v101 >= v100 >> 1)
        {
          v95 = sub_2529F7A80((v100 > 1), v101 + 1, 1, v95);
        }

        *(v95 + 2) = v101 + 1;
        v102 = &v95[16 * v101];
        *(v102 + 4) = v97;
        *(v102 + 5) = v99;
        --v93;
      }

      while (v93);
    }

    else
    {
      v95 = MEMORY[0x277D84F90];
    }

    v103 = MEMORY[0x2530AD730](v95, MEMORY[0x277D837D0]);
    v105 = v104;

    MEMORY[0x2530AD570](v103, v105);

    v92 = v108[0];
    v83 = v108[1];
  }

  else
  {
    v92 = 0;
  }

  MEMORY[0x2530AD570](v92, v83);

  MEMORY[0x2530AD570](v109[0], v109[1]);

  MEMORY[0x2530AD570](125, 0xE100000000000000);

  return v107;
}

uint64_t sub_252CDC7C8()
{
  v136[0] = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v136[1] = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  MEMORY[0x2530AD570](31520, 0xE200000000000000);
  v1 = v136[0];
  v2 = v136[1];
  v3 = sub_2529F7A80(0, 1, 1, MEMORY[0x277D84F90]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_2529F7A80((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[16 * v5];
  *(v6 + 4) = v1;
  *(v6 + 5) = v2;
  v7 = 0xE000000000000000;
  v136[0] = 0;
  v136[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0x203A657079742020, 0xE800000000000000);
  v8 = sub_252CD941C();
  v9 = HomeDeviceType.description.getter(v8);
  MEMORY[0x2530AD570](v9);

  MEMORY[0x2530AD570](0x69746E656469202CLL, 0xEE00203A72656966);
  sub_252E32E84();
  sub_252950ADC(&qword_27F5404A8, MEMORY[0x277CC9628]);
  v10 = sub_252E37D94();
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E92840);
  v11 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
  if (v11)
  {
    v12 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v7 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
  }

  MEMORY[0x2530AD570](v12, v7);

  v13 = v136[0];
  v14 = v136[1];
  v16 = *(v3 + 2);
  v15 = *(v3 + 3);
  if (v16 >= v15 >> 1)
  {
    v3 = sub_2529F7A80((v15 > 1), v16 + 1, 1, v3);
  }

  *(v3 + 2) = v16 + 1;
  v17 = &v3[16 * v16];
  *(v17 + 4) = v13;
  *(v17 + 5) = v14;
  sub_252CD94E0();
  if ((v18 & 1) == 0)
  {
    v136[0] = 0;
    v136[1] = 0xE000000000000000;
    MEMORY[0x2530AD570](0x7079746275732020, 0xEB00000000203A65);
    sub_252E37AE4();
    v20 = *(v3 + 2);
    v19 = *(v3 + 3);
    if (v20 >= v19 >> 1)
    {
      v3 = sub_2529F7A80((v19 > 1), v20 + 1, 1, v3);
    }

    *(v3 + 2) = v20 + 1;
    v21 = &v3[16 * v20];
    *(v21 + 4) = 0;
    *(v21 + 5) = 0xE000000000000000;
  }

  v22 = sub_252CD95D8();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = (v22 + 32);
    v25 = MEMORY[0x277D84F90];
    do
    {
      v29 = *v24++;
      v28 = v29;
      if (v29)
      {
        v136[0] = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA360(0, *(v25 + 16) + 1, 1);
          v25 = v136[0];
        }

        v27 = *(v25 + 16);
        v26 = *(v25 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_2529AA360((v26 > 1), v27 + 1, 1);
          v25 = v136[0];
        }

        *(v25 + 16) = v27 + 1;
        *(v25 + 8 * v27 + 32) = v28;
      }

      --v23;
    }

    while (v23);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v30 = *(v25 + 16);

  if (v30)
  {
    sub_252E379F4();

    strcpy(v136, "  attributes: ");
    HIBYTE(v136[1]) = -18;
    v31 = sub_252CD95D8();
    v32 = *(v31 + 16);
    v33 = MEMORY[0x277D84F90];
    if (v32)
    {
      v34 = (v31 + 32);
      do
      {
        v38 = *v34++;
        v37 = v38;
        if (v38)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA360(0, *(v33 + 16) + 1, 1);
          }

          v36 = *(v33 + 16);
          v35 = *(v33 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_2529AA360((v35 > 1), v36 + 1, 1);
          }

          *(v33 + 16) = v36 + 1;
          *(v33 + 8 * v36 + 32) = v37;
        }

        --v32;
      }

      while (v32);
    }

    v39 = *(v33 + 16);
    if (v39)
    {
      v133 = MEMORY[0x277D84F90];
      sub_2529AA3A0(0, v39, 0);
      v40 = 32;
      v41 = v133;
      do
      {
        v42 = HomeAttributeType.description.getter(*(v33 + v40));
        v45 = *(v133 + 16);
        v44 = *(v133 + 24);
        if (v45 >= v44 >> 1)
        {
          v47 = v42;
          v48 = v43;
          sub_2529AA3A0((v44 > 1), v45 + 1, 1);
          v43 = v48;
          v42 = v47;
        }

        *(v133 + 16) = v45 + 1;
        v46 = v133 + 16 * v45;
        *(v46 + 32) = v42;
        *(v46 + 40) = v43;
        v40 += 8;
        --v39;
      }

      while (v39);
    }

    else
    {

      v41 = MEMORY[0x277D84F90];
    }

    v49 = MEMORY[0x2530AD730](v41, MEMORY[0x277D837D0]);
    v51 = v50;

    MEMORY[0x2530AD570](v49, v51);

    v52 = v136[0];
    v53 = v136[1];
    v55 = *(v3 + 2);
    v54 = *(v3 + 3);
    if (v55 >= v54 >> 1)
    {
      v3 = sub_2529F7A80((v54 > 1), v55 + 1, 1, v3);
    }

    *(v3 + 2) = v55 + 1;
    v56 = &v3[16 * v55];
    *(v56 + 4) = v52;
    *(v56 + 5) = v53;
  }

  v57 = sub_252CD995C();
  v58 = *(v57 + 16);
  if (v58)
  {
    v59 = (v57 + 32);
    v60 = MEMORY[0x277D84F90];
    do
    {
      v64 = *v59++;
      v63 = v64;
      if (v64)
      {
        v136[0] = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA360(0, *(v60 + 16) + 1, 1);
          v60 = v136[0];
        }

        v62 = *(v60 + 16);
        v61 = *(v60 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_2529AA360((v61 > 1), v62 + 1, 1);
          v60 = v136[0];
        }

        *(v60 + 16) = v62 + 1;
        *(v60 + 8 * v62 + 32) = v63;
      }

      --v58;
    }

    while (v58);
  }

  else
  {
    v60 = MEMORY[0x277D84F90];
  }

  v65 = *(v60 + 16);

  if (v65)
  {
    sub_252E379F4();

    v136[0] = 0xD000000000000014;
    v136[1] = 0x8000000252E92860;
    v66 = sub_252CD995C();
    v67 = *(v66 + 16);
    v68 = MEMORY[0x277D84F90];
    if (v67)
    {
      v69 = (v66 + 32);
      do
      {
        v73 = *v69++;
        v72 = v73;
        if (v73)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA360(0, *(v68 + 16) + 1, 1);
          }

          v71 = *(v68 + 16);
          v70 = *(v68 + 24);
          if (v71 >= v70 >> 1)
          {
            sub_2529AA360((v70 > 1), v71 + 1, 1);
          }

          *(v68 + 16) = v71 + 1;
          *(v68 + 8 * v71 + 32) = v72;
        }

        --v67;
      }

      while (v67);
    }

    v74 = *(v68 + 16);
    if (v74)
    {
      v134 = MEMORY[0x277D84F90];
      sub_2529AA3A0(0, v74, 0);
      v75 = 32;
      v76 = v134;
      do
      {
        v77 = HomeAttributeType.description.getter(*(v68 + v75));
        v80 = *(v134 + 16);
        v79 = *(v134 + 24);
        if (v80 >= v79 >> 1)
        {
          v82 = v77;
          v83 = v78;
          sub_2529AA3A0((v79 > 1), v80 + 1, 1);
          v78 = v83;
          v77 = v82;
        }

        *(v134 + 16) = v80 + 1;
        v81 = v134 + 16 * v80;
        *(v81 + 32) = v77;
        *(v81 + 40) = v78;
        v75 += 8;
        --v74;
      }

      while (v74);
    }

    else
    {

      v76 = MEMORY[0x277D84F90];
    }

    v84 = MEMORY[0x2530AD730](v76, MEMORY[0x277D837D0]);
    v86 = v85;

    MEMORY[0x2530AD570](v84, v86);

    v87 = v136[0];
    v88 = v136[1];
    v90 = *(v3 + 2);
    v89 = *(v3 + 3);
    if (v90 >= v89 >> 1)
    {
      v3 = sub_2529F7A80((v89 > 1), v90 + 1, 1, v3);
    }

    *(v3 + 2) = v90 + 1;
    v91 = &v3[16 * v90];
    *(v91 + 4) = v87;
    *(v91 + 5) = v88;
  }

  v92 = sub_252CD9C58();
  v93 = *(v92 + 16);
  if (v93)
  {
    v94 = (v92 + 32);
    v95 = MEMORY[0x277D84F90];
    do
    {
      v99 = *v94++;
      v98 = v99;
      if (v99)
      {
        v136[0] = v95;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA360(0, *(v95 + 16) + 1, 1);
          v95 = v136[0];
        }

        v97 = *(v95 + 16);
        v96 = *(v95 + 24);
        if (v97 >= v96 >> 1)
        {
          sub_2529AA360((v96 > 1), v97 + 1, 1);
          v95 = v136[0];
        }

        *(v95 + 16) = v97 + 1;
        *(v95 + 8 * v97 + 32) = v98;
      }

      --v93;
    }

    while (v93);
  }

  else
  {
    v95 = MEMORY[0x277D84F90];
  }

  v100 = *(v95 + 16);

  if (v100)
  {
    sub_252E379F4();

    v136[0] = 0xD000000000000016;
    v136[1] = 0x8000000252E92880;
    v101 = sub_252CD9C58();
    v102 = *(v101 + 16);
    v103 = MEMORY[0x277D84F90];
    if (v102)
    {
      v104 = (v101 + 32);
      v105 = MEMORY[0x277D84F90];
      do
      {
        v109 = *v104++;
        v108 = v109;
        if (v109)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA360(0, *(v105 + 16) + 1, 1);
          }

          v107 = *(v105 + 16);
          v106 = *(v105 + 24);
          if (v107 >= v106 >> 1)
          {
            sub_2529AA360((v106 > 1), v107 + 1, 1);
          }

          *(v105 + 16) = v107 + 1;
          *(v105 + 8 * v107 + 32) = v108;
        }

        --v102;
      }

      while (v102);
    }

    else
    {
      v105 = MEMORY[0x277D84F90];
    }

    v111 = *(v105 + 16);
    if (v111)
    {
      v135 = v103;
      sub_2529AA3A0(0, v111, 0);
      v112 = 32;
      v113 = v135;
      do
      {
        v114 = HomeAttributeType.description.getter(*(v105 + v112));
        v117 = *(v135 + 16);
        v116 = *(v135 + 24);
        if (v117 >= v116 >> 1)
        {
          v119 = v114;
          v120 = v115;
          sub_2529AA3A0((v116 > 1), v117 + 1, 1);
          v115 = v120;
          v114 = v119;
        }

        *(v135 + 16) = v117 + 1;
        v118 = v135 + 16 * v117;
        *(v118 + 32) = v114;
        *(v118 + 40) = v115;
        v112 += 8;
        --v111;
      }

      while (v111);
    }

    else
    {

      v113 = MEMORY[0x277D84F90];
    }

    v121 = MEMORY[0x2530AD730](v113, MEMORY[0x277D837D0]);
    v123 = v122;

    MEMORY[0x2530AD570](v121, v123);

    v124 = v136[0];
    v125 = v136[1];
    v127 = *(v3 + 2);
    v126 = *(v3 + 3);
    v110 = v127 + 1;
    if (v127 >= v126 >> 1)
    {
      v3 = sub_2529F7A80((v126 > 1), v127 + 1, 1, v3);
    }

    *(v3 + 2) = v110;
    v128 = &v3[16 * v127];
    *(v128 + 4) = v124;
    *(v128 + 5) = v125;
  }

  else
  {
    v110 = *(v3 + 2);
  }

  v129 = *(v3 + 3);
  if (v110 >= v129 >> 1)
  {
    v3 = sub_2529F7A80((v129 > 1), v110 + 1, 1, v3);
  }

  *(v3 + 2) = v110 + 1;
  v130 = &v3[16 * v110];
  *(v130 + 4) = 125;
  *(v130 + 5) = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529508A0();
  v131 = sub_252E36EA4();

  return v131;
}

uint64_t Service.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t Service.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Service(uint64_t a1)
{
  result = qword_27F545518;
  if (!qword_27F545518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252CDD654(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_252E34014();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CDD718, 0, 0);
}

uint64_t sub_252CDD718()
{
  sub_252CDE3C4(v0[20]);
  if (v1)
  {
    if (qword_27F53F4D0 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_49;
  }

  v6 = sub_252B4F670();
  v0[25] = v6;
  v48 = v6;
  v7 = sub_252C285F0();
  v8 = v7;
  v50 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    v9 = sub_252E378C4();
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  v49 = v0;
  if (v9)
  {
    v11 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2530ADF00](v11, v8);
      }

      else
      {
        if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v12 = *(v8 + 8 * v11 + 32);
      }

      v13 = v12;
      v0 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = [v12 entity];
      if (v14 && (v15 = v14, v16 = [v14 type], v15, v16 == 7) && (sub_252DA5218() & 1) == 0)
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v11;
      if (v0 == v9)
      {
        v17 = v50;
        v10 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    swift_once();
LABEL_3:
    v2 = v0[21];
    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544D18);
    sub_252CC3D90(0xD000000000000048, 0x8000000252E929E0, 0xD000000000000097, 0x8000000252E92A30);
    v4 = v2[6];
    v5 = v2[7];
    __swift_project_boxed_opaque_existential_1(v2 + 3, v4);
    sub_252944924(v4, v5);
LABEL_42:

    v47 = v0[1];

    return v47();
  }

  v17 = MEMORY[0x277D84F90];
LABEL_21:

  if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
  {
    v18 = sub_252E378C4();
  }

  else
  {
    v18 = *(v17 + 16);
  }

  v19 = sub_252B4F670();
  v20 = sub_252C285F0();

  v51 = v10;
  if (v20 >> 62)
  {
    v21 = sub_252E378C4();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = 0;
  v0 = (v20 & 0xC000000000000001);
  v23 = MEMORY[0x277D84F90];
  while (v21 != v22)
  {
    if (v0)
    {
      v24 = MEMORY[0x2530ADF00](v22, v20);
    }

    else
    {
      if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v24 = *(v20 + 8 * v22 + 32);
    }

    v25 = v24;
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v27 = sub_252DA124C(0);

    ++v22;
    if (v27)
    {
      MEMORY[0x2530AD700]();
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v23 = v51;
      v22 = v26;
    }
  }

  v28 = v49[21];

  type metadata accessor for HomeAutomationEntityResponses();
  v29 = swift_allocObject();
  v49[26] = v29;
  *(v29 + 16) = 0;
  *(v29 + 24) = v23;
  v30 = v28[6];
  v31 = v28[7];
  __swift_project_boxed_opaque_existential_1(v28 + 3, v30);
  if (!v18)
  {
    v38 = v49[21];
    v39 = v49[20];
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = v29;
    *(v40 + 32) = *v39;
    v41 = *(v39 + 64);
    v43 = *(v39 + 16);
    v42 = *(v39 + 32);
    *(v40 + 80) = *(v39 + 48);
    *(v40 + 96) = v41;
    *(v40 + 48) = v43;
    *(v40 + 64) = v42;
    v45 = *(v39 + 96);
    v44 = *(v39 + 112);
    v46 = *(v39 + 80);
    *(v40 + 160) = *(v39 + 128);
    *(v40 + 128) = v45;
    *(v40 + 144) = v44;
    *(v40 + 112) = v46;

    v0 = v49;
    sub_252B5ADE8(v39, (v49 + 2));
    sub_252943B8C(sub_252CDF508, v40, v30, v31);

    goto LABEL_42;
  }

  v32 = v49[21];
  v33 = swift_task_alloc();
  v49[27] = v33;
  *(v33 + 16) = v32;
  *(v33 + 24) = v29;
  sub_252AD7CC4();
  v34 = swift_task_alloc();
  v49[28] = v34;
  *v34 = v49;
  v34[1] = sub_252CDDCFC;
  v35 = v49[24];
  v36 = v49[19];

  return sub_252BDB88C(v36, &unk_252E5B510, v33, v35, 0, 0, 0, v30);
}

uint64_t sub_252CDDCFC()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  (*(v2[23] + 8))(v2[24], v2[22]);
  if (v0)
  {
    v3 = sub_252CDDEBC;
  }

  else
  {

    v3 = sub_252CDDE4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252CDDE4C()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252CDDEBC()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252CDDF38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252CDDF58, 0, 0);
}

uint64_t sub_252CDDF58()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_252CAED14;
  v3 = v0[3];

  return sub_252C16514(0, v1, v3);
}

uint64_t sub_252CDE02C(uint64_t a1, uint64_t a2)
{
  v3 = sub_252B4F854();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C280;
  *(v4 + 32) = 0x6552797469746E65;
  *(v4 + 40) = 0xEF7365736E6F7073;
  v5 = type metadata accessor for HomeAutomationEntityResponses();
  *(v4 + 48) = a2;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0xD000000000000010;
  *(v4 + 88) = 0x8000000252E69A10;
  v6 = MEMORY[0x277D839B0];
  *(v4 + 96) = 1;
  *(v4 + 120) = v6;
  strcpy((v4 + 128), "intentContext");
  *(v4 + 142) = -4864;
  *(v4 + 168) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v4 + 144) = v3;

  sub_252E362B4();
}

void *sub_252CDE1B4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AsyncHomekitInvocationResponseHandler();
  v2 = swift_allocObject();
  result = sub_252D46D94(v2);
  *a1 = result;
  return result;
}

uint64_t sub_252CDE1F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252CDD654(a1, a2);
}

BOOL sub_252CDE2A0(uint64_t a1)
{
  v2 = sub_252B4F670();
  v3 = sub_252C285CC();

  if (v3 >> 62)
  {
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = sub_252B4F670();
  v6 = sub_252C285F0();

  if (v6 >> 62)
  {
    v7 = sub_252E378C4();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (*(a1 + 64) == 0xD000000000000010 && 0x8000000252E80DF0 == *(a1 + 72) || (v8 = sub_252E37DB4(), result = 0, (v8 & 1) != 0))
  {
    if (v4)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7 == 0;
    }

    return !v10;
  }

  return result;
}

void sub_252CDE3C4(unint64_t a1)
{
  v110 = sub_252E36AD4();
  v5 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v7 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a1;
  v106 = sub_252B4F670();
  v8 = sub_252C2C640();
  v9 = v8;
  v10 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
LABEL_123:
    v11 = sub_252E378C4();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v104 = v7;
  v105 = v5;
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    v115 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v2 = 0;
  v115 = MEMORY[0x277D84F90];
  do
  {
    v13 = v2;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x2530ADF00](v13, v9);
      }

      else
      {
        if (v13 >= *(v10 + 16))
        {
          goto LABEL_113;
        }

        v14 = *(v9 + 8 * v13 + 32);
      }

      v1 = v14;
      v2 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        v83 = 0;
LABEL_118:
        v117[0] = v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
        v84 = sub_252E36F94();
        MEMORY[0x2530AD570](v84);

        MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E92C30);
        v85 = [v2 description];
        v86 = sub_252E36F34();
        v88 = v87;

        MEMORY[0x2530AD570](v86, v88);

        sub_252CC3D90(*&v116[0], *(&v116[0] + 1), 0xD000000000000097, v102 | 0x8000000000000000);

        (*(v1 + 8))(v3, v110);
        return;
      }

      v15 = [v14 entityIdentifier];
      if (v15)
      {
        break;
      }

      ++v13;
      if (v2 == v11)
      {
        goto LABEL_21;
      }
    }

    v16 = v15;
    v17 = sub_252E36F34();
    v19 = v18;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v115 = sub_2529F7A80(0, *(v115 + 2) + 1, 1, v115);
    }

    v3 = *(v115 + 2);
    v20 = *(v115 + 3);
    v1 = v3 + 1;
    if (v3 >= v20 >> 1)
    {
      v115 = sub_2529F7A80((v20 > 1), v3 + 1, 1, v115);
    }

    v21 = v115;
    *(v115 + 2) = v1;
    v22 = &v21[16 * v3];
    *(v22 + 4) = v17;
    *(v22 + 5) = v19;
    v12 = MEMORY[0x277D84F90];
  }

  while (v2 != v11);
LABEL_21:

  v23 = type metadata accessor for HomeStore(0);
  v24 = static HomeStore.shared.getter(v23);
  v25 = sub_2529D9D50();
  v26 = 0;
  v1 = sub_2529D70E4(v25);

  v117[0] = v12;
  if (v1 >> 62)
  {
    v27 = sub_252E378C4();
  }

  else
  {
    v27 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = MEMORY[0x277D84F90];
  if (!v27)
  {
    goto LABEL_36;
  }

  v3 = 0;
  v114 = v1 & 0xC000000000000001;
  while (2)
  {
    if (v114)
    {
      MEMORY[0x2530ADF00](v3, v1);
      v2 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      goto LABEL_30;
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_114;
    }

    v2 = (v3 + 1);
    if (!__OFADD__(v3, 1))
    {
LABEL_30:
      *&v116[0] = sub_252E32E24();
      *(&v116[0] + 1) = v29;
      MEMORY[0x28223BE20](*&v116[0]);
      *(&v99 - 2) = v116;
      v30 = sub_2529ED970(sub_25296A69C, (&v99 - 4), v115);

      if (v30)
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v3;
      if (v2 == v27)
      {
        goto LABEL_35;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_35:
  v28 = v117[0];
LABEL_36:

  v5 = 0x27F53F000uLL;
  v3 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Flow/Async/ResponseHandlers/AsyncHomekitInvocationResponseHandler.swift";
  if (!*(v115 + 2))
  {
    goto LABEL_127;
  }

  LODWORD(v7) = v28 < 0 || (v28 & 0x4000000000000000) != 0;
  if (v7 == 1)
  {
LABEL_126:
    if (!sub_252E378C4())
    {
      goto LABEL_127;
    }

LABEL_42:

    if (*(v5 + 1232) != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v110, qword_27F544D18);
    *&v116[0] = 0;
    *(&v116[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v116[0] = 0xD000000000000013;
    *(&v116[0] + 1) = 0x8000000252E8EBC0;
    v32 = type metadata accessor for Service(0);
    v33 = MEMORY[0x2530AD730](v28, v32);
    MEMORY[0x2530AD570](v33);

    v102 = v3 - 32;
    v103 = v31;
    sub_252CC3D90(*&v116[0], *(&v116[0] + 1), 0xD000000000000097, (v3 - 32) | 0x8000000000000000);

    v34 = *(v113 + 56);
    v35 = sub_252E26F50(*(v34 + 24));
    if ((v36 & 1) != 0 || (v37 = v35, v38 = sub_252DE9C5C(v35), !v39))
    {

      sub_252CC4050(0xD000000000000027, 0x8000000252E92AD0, 0xD000000000000097, v102 | 0x8000000000000000, 0xD000000000000027, 0x8000000252E92B00, 160);
      goto LABEL_130;
    }

    v40 = v38;
    v41 = v39;
    v100 = v34;
    v99 = v26;
    v26 = 0xE000000000000000;
    *&v116[0] = 0;
    *(&v116[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v116[0] = 0xD000000000000028;
    *(&v116[0] + 1) = 0x8000000252E92B30;
    v42 = HomeAttributeType.description.getter(v37);
    MEMORY[0x2530AD570](v42);

    v2 = 0xD000000000000097;
    v1 = v102;
    v3 = v103;
    sub_252CC3D90(*&v116[0], *(&v116[0] + 1), 0xD000000000000097, v102 | 0x8000000000000000);

    *&v116[0] = 0;
    *(&v116[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v116[0] = 0xD000000000000018;
    *(&v116[0] + 1) = 0x8000000252E92B60;

    v114 = v40;
    MEMORY[0x2530AD570](v40, v41);

    sub_252CC3D90(*&v116[0], *(&v116[0] + 1), 0xD000000000000097, v1 | 0x8000000000000000);

    if (v7)
    {
      v5 = sub_252E378C4();
    }

    else
    {
      v5 = *(v28 + 16);
    }

    v7 = MEMORY[0x277D84F90];
    v115 = v41;
    if (v5)
    {
      v117[0] = MEMORY[0x277D84F90];
      v9 = v117;
      sub_2529AA6C0(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
LABEL_132:
        __break(1u);
        return;
      }

      v43 = 0;
      v10 = v117[0];
      v109 = v28 & 0xC000000000000001;
      v101 = v28 + 32;
      v107 = v5;
      v108 = v28;
      do
      {
        if (__OFADD__(v43, 1))
        {
          __break(1u);
          goto LABEL_123;
        }

        v113 = v43 + 1;
        if (v109)
        {
          v44 = MEMORY[0x2530ADF00]();
        }

        else
        {
          if (v43 >= *(v28 + 16))
          {
            __break(1u);
            goto LABEL_126;
          }
        }

        *&v111 = v44;
        v45 = [*(v44 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
        sub_252BAC798();
        v3 = sub_252E37264();

        if (v3 >> 62)
        {
          v46 = sub_252E378C4();
          *&v112 = v10;
          if (v46)
          {
LABEL_60:
            v47 = 0;
            while (1)
            {
              if ((v3 & 0xC000000000000001) != 0)
              {
                v48 = MEMORY[0x2530ADF00](v47, v3);
              }

              else
              {
                if (v47 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_116;
                }

                v48 = *(v3 + 8 * v47 + 32);
              }

              v2 = v48;
              v49 = v47 + 1;
              if (__OFADD__(v47, 1))
              {
                goto LABEL_115;
              }

              v50 = [v48 characteristicType];
              v9 = sub_252E36F34();
              v1 = v51;

              v41 = v115;
              if (v9 == v114 && v115 == v1)
              {
                break;
              }

              v9 = sub_252E37DB4();

              if (v9)
              {
                v1 = v3;
LABEL_75:

                v53 = [v2 value];

                v7 = MEMORY[0x277D84F90];
                v28 = v108;
                v10 = v112;
                if (v53)
                {
                  sub_252E377F4();
                  swift_unknownObjectRelease();

                  v54 = v116[0];
                  v55 = v116[1];
                }

                else
                {

                  v54 = 0uLL;
                  v55 = 0uLL;
                }

                goto LABEL_80;
              }

              ++v47;
              if (v49 == v46)
              {
                goto LABEL_79;
              }
            }

            goto LABEL_75;
          }
        }

        else
        {
          v46 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          *&v112 = v10;
          if (v46)
          {
            goto LABEL_60;
          }
        }

LABEL_79:

        v54 = 0uLL;
        v55 = 0uLL;
        v7 = MEMORY[0x277D84F90];
        v28 = v108;
        v10 = v112;
LABEL_80:
        v117[0] = v10;
        v26 = *(v10 + 16);
        v56 = *(v10 + 24);
        v5 = v26 + 1;
        if (v26 >= v56 >> 1)
        {
          v9 = v117;
          v111 = v55;
          v112 = v54;
          sub_2529AA6C0((v56 > 1), v26 + 1, 1);
          v55 = v111;
          v54 = v112;
          v10 = v117[0];
        }

        *(v10 + 16) = v5;
        v57 = v10 + 32 * v26;
        *(v57 + 32) = v54;
        *(v57 + 48) = v55;
        v43 = v113;
      }

      while (v113 != v107);

      v58 = *(v10 + 16);
      if (!v58)
      {
        goto LABEL_104;
      }
    }

    else
    {

      v10 = MEMORY[0x277D84F90];
      v58 = *(MEMORY[0x277D84F90] + 16);
      if (!v58)
      {
LABEL_104:

        v59 = MEMORY[0x277D84F90];
        v67 = *(MEMORY[0x277D84F90] + 16);
        if (v67)
        {
          goto LABEL_89;
        }

        goto LABEL_105;
      }
    }

    v117[0] = v7;
    sub_2529AA6A0(0, v58, 0);
    v59 = v117[0];
    v60 = v10 + 32;
    do
    {
      sub_252AEA788(v60, v116);
      v61 = sub_252C69438(v114, v41, v116, 0, 0);
      v63 = v62;
      sub_252982F10(v116);
      v117[0] = v59;
      v65 = *(v59 + 16);
      v64 = *(v59 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_2529AA6A0((v64 > 1), v65 + 1, 1);
        v59 = v117[0];
      }

      *(v59 + 16) = v65 + 1;
      v66 = v59 + 16 * v65;
      *(v66 + 32) = v61;
      *(v66 + 40) = v63;
      v60 += 32;
      --v58;
      v41 = v115;
    }

    while (v58);

    v67 = *(v59 + 16);
    if (v67)
    {
LABEL_89:
      v68 = 0;
      while (1)
      {
        if (v68 >= *(v59 + 16))
        {
          __break(1u);
          goto LABEL_132;
        }

        v69 = v59 + 32 + 16 * v68;
        v70 = *(v69 + 8);
        v71 = qword_27F53F730;
        v2 = *v69;
        if (v71 != -1)
        {
          swift_once();
        }

        v72 = qword_27F575C40;
        if (*(qword_27F575C40 + 16))
        {
          sub_252E37EC4();
          MEMORY[0x2530AE390](v70);
          v73 = sub_252E37F14();
          v74 = -1 << *(v72 + 32);
          v75 = v73 & ~v74;
          if ((*(v72 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75))
          {
            v76 = ~v74;
            while (*(*(v72 + 48) + 8 * v75) != v70)
            {
              v75 = (v75 + 1) & v76;
              if (((*(v72 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
              {
                goto LABEL_98;
              }
            }

            *&v116[0] = 0;
            *(&v116[0] + 1) = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E92B80);
            v117[0] = v70;
            sub_252E37AE4();
            sub_252CC3D90(*&v116[0], *(&v116[0] + 1), 0xD000000000000097, v102 | 0x8000000000000000);

            goto LABEL_130;
          }
        }

LABEL_98:
        if (!*(v100 + 32))
        {
          break;
        }

        v77 = sub_252A05A90();

        if (!v77)
        {
          break;
        }

        type metadata accessor for HomeAttributeValue();
        v78 = v2;
        v79 = sub_252E37694();

        if ((v79 & 1) == 0)
        {
          break;
        }

        ++v68;

        if (v68 == v67)
        {

          v89 = sub_252E36AC4();
          v90 = sub_252E374C4();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            *v91 = 0;
            _os_log_impl(&dword_252917000, v89, v90, "All targeted entities were in target", v91, 2u);
            MEMORY[0x2530AED00](v91, -1, -1);
          }

          return;
        }
      }

      v1 = v105;
      v3 = v104;
      (*(v105 + 16))(v104, v103, v110);
      *&v116[0] = 0;
      *(&v116[0] + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000078, 0x8000000252E92BB0);
      if (!*(v100 + 32))
      {
        goto LABEL_117;
      }

      v83 = sub_252A05A90();

      goto LABEL_118;
    }

LABEL_105:

    v80 = sub_252E36AC4();
    v81 = sub_252E374D4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_252917000, v80, v81, "Couldn't find any values.", v82, 2u);
      MEMORY[0x2530AED00](v82, -1, -1);
    }

    goto LABEL_130;
  }

  if (*(v28 + 16))
  {
    goto LABEL_42;
  }

LABEL_127:
  if (*(v5 + 1232) != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v110, qword_27F544D18);
  *&v116[0] = 0;
  *(&v116[0] + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E92C60);
  v92 = MEMORY[0x2530AD730](v115, MEMORY[0x277D837D0]);
  v94 = v93;

  MEMORY[0x2530AD570](v92, v94);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E92C90);
  v95 = type metadata accessor for Service(0);
  v96 = MEMORY[0x2530AD730](v28, v95);
  v98 = v97;

  MEMORY[0x2530AD570](v96, v98);

  sub_252CC4050(*&v116[0], *(&v116[0] + 1), 0xD000000000000097, (v3 - 32) | 0x8000000000000000, 0xD000000000000027, 0x8000000252E92B00, 149);

LABEL_130:
}

uint64_t sub_252CDF470()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252CDDF38(v2, v3);
}

uint64_t sub_252CDF514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6156747365776F6CLL && a2 == 0xEB0000000065756CLL;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252C9A2AC();
    if (result)
    {
LABEL_7:
      v8 = result;
      result = type metadata accessor for HomeAutomationEntityStateValue(0);
      *(a3 + 24) = result;
      *a3 = v8;
      return result;
    }

    goto LABEL_12;
  }

  if (a1 == 0x5674736568676968 && a2 == 0xEC00000065756C61 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252C99DD8();
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (a1 == 0x5665676172657661 && a2 == 0xEC00000065756C61 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252C9A780();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  if (a1 == 0x6C61757145736168 && a2 == 0xED000065756C6156 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252C9AFBC();
LABEL_22:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = result & 1;
    return result;
  }

  if (a1 == 0xD000000000000017 && 0x8000000252E92D50 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252C9B2B8();
    goto LABEL_22;
  }

  if (a1 == 0xD000000000000018 && 0x8000000252E92D70 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252C9B080();
    goto LABEL_22;
  }

  return sub_252C86824(a1, a2, a3);
}

uint64_t sub_252CDF7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *(a1 + 16);
  if (!v16)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = sub_2529FC02C(a3);
    if (*(v4 + 16))
    {
      sub_252E37EC4();
      StateSemantic.rawValue.getter();
      sub_252E37044();

      v5 = sub_252E37F14();
      v6 = -1 << *(v4 + 32);
      v7 = v5 & ~v6;
      if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
      {
        break;
      }
    }

LABEL_3:
    ++v3;

    if (v3 == v16)
    {
      return 0;
    }
  }

  v8 = ~v6;
  while (1)
  {
    v9 = StateSemantic.rawValue.getter();
    v11 = v10;
    if (v9 == StateSemantic.rawValue.getter() && v11 == v12)
    {
      break;
    }

    v14 = sub_252E37DB4();

    if (v14)
    {
      goto LABEL_16;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

LABEL_16:

  return 1;
}

uint64_t sub_252CDF97C(unint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_252E36AB4();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F5A8 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v8 = qword_27F544F30;
    sub_252E36A94();
    sub_252E375D4();
    v23 = v8;
    sub_252E36A84();
    if (!(a1 >> 62))
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        break;
      }

      goto LABEL_4;
    }

    v9 = sub_252E378C4();
    if (!v9)
    {
      break;
    }

LABEL_4:
    v10 = 0;
    v31 = v3;
    v32 = a1 & 0xC000000000000001;
    v26 = a1 + 32;
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    v29 = a1;
    v30 = v7;
    v28 = v9;
    while (v32)
    {
      v11 = MEMORY[0x2530ADF00](v10, a1);
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_45;
      }

LABEL_13:
      sub_252CF38DC(v11);
      v13 = sub_252E34524();
      if (!v13)
      {
        goto LABEL_6;
      }

      v14 = v13;
      v36 = MEMORY[0x277D84F90];
      v15 = v13 & 0xFFFFFFFFFFFFFF8;
      if (v13 >> 62)
      {
        a1 = sub_252E378C4();
        v33 = v10;
        v34 = v11;
        if (!a1)
        {
LABEL_32:
          v7 = MEMORY[0x277D84F90];
          goto LABEL_33;
        }
      }

      else
      {
        a1 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v33 = v10;
        v34 = v11;
        if (!a1)
        {
          goto LABEL_32;
        }
      }

      v16 = 0;
      v7 = MEMORY[0x277D84F90];
      do
      {
        v17 = v16;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v17, v14);
            v16 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_43;
            }
          }

          else
          {
            if (v17 >= *(v15 + 16))
            {
              goto LABEL_44;
            }

            v16 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }
          }

          sub_252E349D4();

          v3 = v35;
          if (v35)
          {
            break;
          }

          ++v17;
          if (v16 == a1)
          {
            goto LABEL_33;
          }
        }

        MEMORY[0x2530AD700](v18);
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v7 = v36;
      }

      while (v16 != a1);
LABEL_33:

      if (v7 >> 62)
      {
        a1 = sub_252E378C4();
        v3 = v31;
        if (a1)
        {
LABEL_35:
          if (a1 < 1)
          {
            goto LABEL_46;
          }

          v19 = 0;
          do
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x2530ADF00](v19, v7);
            }

            else
            {
              v20 = *(v7 + 8 * v19 + 32);
            }

            ++v19;
            sub_252CF38DC(v20);
          }

          while (a1 != v19);
        }
      }

      else
      {
        a1 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v3 = v31;
        if (a1)
        {
          goto LABEL_35;
        }
      }

      a1 = v29;
      v7 = v30;
      v9 = v28;
      v10 = v33;
LABEL_6:

      if (v10 == v9)
      {
        goto LABEL_50;
      }
    }

    if (v10 >= *(v27 + 16))
    {
      goto LABEL_47;
    }

    v11 = *(v26 + 8 * v10);

    v12 = __OFADD__(v10++, 1);
    if (!v12)
    {
      goto LABEL_13;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }

LABEL_50:
  v21 = sub_252E375C4();
  sub_252E36A74(v21, &dword_252917000, v23, "NLX.GenerateAlternativesFromInterpretationGroups", 48, 2, v7, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  return (*(v24 + 8))(v7, v25);
}

uint64_t sub_252CDFDD4()
{
  v1 = v0;
  v2 = __dst;
  v3 = *v0;
  v4 = v0[12];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[24];
  if (qword_27F53F4F8 != -1)
  {
    goto LABEL_239;
  }

  while (1)
  {
    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544D90);
    *v2 = 0;
    *(v2 + 8) = 0xE000000000000000;
    sub_252E379F4();

    v144 = 0xD000000000000012;
    v145 = 0x8000000252E92DC0;
    *v2 = v3;
    *(v2 + 40) = *(v1 + 40);
    *(v2 + 56) = *(v1 + 56);
    *(v2 + 72) = *(v1 + 72);
    v9 = *(v1 + 88);
    *(v2 + 8) = *(v1 + 8);
    *(v2 + 24) = *(v1 + 24);
    *(v2 + 88) = v9;
    *(v2 + 96) = v4;
    v127 = v4;
    *(v2 + 104) = *(v1 + 104);
    *(v2 + 120) = *(v1 + 120);
    v135 = v6;
    v138 = v7;
    *(v2 + 136) = v6;
    *(v2 + 144) = v5;
    v142 = v5;
    v10 = *(v1 + 184);
    *(v2 + 168) = *(v1 + 168);
    *(v2 + 152) = *(v1 + 152);
    *(v2 + 184) = v10;
    *(v2 + 192) = v7;
    memcpy(&__dst[25], (v1 + 200), 0x130uLL);
    v11 = HomeAutomationIntent.description.getter();
    MEMORY[0x2530AD570](v11);

    sub_252CC3D90(v144, v145, 0xD000000000000077, 0x8000000252E92DE0);

    v6 = *(v3 + 16);
    v4 = MEMORY[0x277D84F90];
    if (!v6)
    {
      break;
    }

    v1 = 0;
    v12 = (v3 + 168);
    while (v1 < *(v3 + 16))
    {
      v7 = *v12;
      v13 = *(*v12 + 16);
      v14 = *(v4 + 2);
      v5 = v14 + v13;
      if (__OFADD__(v14, v13))
      {
        goto LABEL_227;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v5 <= *(v4 + 3) >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v14 <= v5)
        {
          v16 = v14 + v13;
        }

        else
        {
          v16 = v14;
        }

        v4 = sub_2529F80DC(isUniquelyReferenced_nonNull_native, v16, 1, v4);
        if (*(v7 + 16))
        {
LABEL_16:
          v17 = *(v4 + 2);
          if ((*(v4 + 3) >> 1) - v17 < v13)
          {
            goto LABEL_231;
          }

          memcpy(&v4[v17 + 32], (v7 + 32), v13);

          if (v13)
          {
            v18 = *(v4 + 2);
            v19 = __OFADD__(v18, v13);
            v20 = v18 + v13;
            if (v19)
            {
              goto LABEL_232;
            }

            *(v4 + 2) = v20;
          }

          goto LABEL_5;
        }
      }

      if (v13)
      {
        goto LABEL_228;
      }

LABEL_5:
      ++v1;
      v12 += 63;
      if (v6 == v1)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    swift_once();
  }

LABEL_20:
  *v2 = v135;

  sub_25297ADE8(v4);
  v21 = *v2;
  v22 = *(*v2 + 16);
  v131 = v3;
  v133 = v6;
  if (v22)
  {
    v23 = (v21 + 32);
    v5 = 0x8000000252E65350;
    v2 = MEMORY[0x277D84F90];
    v24 = (v21 + 32);
    v25 = v22;
    while (1)
    {
      v27 = *v24++;
      v26 = v27;
      LOBYTE(v144) = v27;
      if (AccessoryTypeSemantic.rawValue.getter() != 0xD000000000000012 || 0x8000000252E65350 != v28)
      {
        v30 = sub_252E37DB4();

        if (v30)
        {
          goto LABEL_23;
        }

        LOBYTE(v144) = v26;
        if (AccessoryTypeSemantic.rawValue.getter() != 0x706F4D746F626F72 || v31 != 0xE800000000000000)
        {
          v32 = sub_252E37DB4();

          if ((v32 & 1) == 0)
          {
            v33 = swift_isUniquelyReferenced_nonNull_native();
            __dst[0] = v2;
            if ((v33 & 1) == 0)
            {
              sub_2529AA4C0(0, *(v2 + 16) + 1, 1);
              v2 = __dst[0];
            }

            v35 = *(v2 + 16);
            v34 = *(v2 + 24);
            if (v35 >= v34 >> 1)
            {
              sub_2529AA4C0((v34 > 1), v35 + 1, 1);
              v2 = __dst[0];
            }

            *(v2 + 16) = v35 + 1;
            *(v2 + v35 + 32) = v26;
          }

          goto LABEL_23;
        }
      }

LABEL_23:
      if (!--v25)
      {
        v3 = MEMORY[0x277D84F90];
        while (1)
        {
          v37 = *v23++;
          v36 = v37;
          LOBYTE(v144) = v37;
          if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v38)
          {
            break;
          }

          v40 = sub_252E37DB4();

          if (v40)
          {
            goto LABEL_46;
          }

          LOBYTE(v144) = v36;
          if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v41 == 0xE800000000000000)
          {
            break;
          }

          v45 = sub_252E37DB4();

          if (v45)
          {
            goto LABEL_46;
          }

LABEL_51:
          if (!--v22)
          {
            v6 = v133;
            goto LABEL_56;
          }
        }

LABEL_46:
        v42 = swift_isUniquelyReferenced_nonNull_native();
        __dst[0] = v3;
        if ((v42 & 1) == 0)
        {
          sub_2529AA4C0(0, *(v3 + 16) + 1, 1);
          v3 = __dst[0];
        }

        v44 = *(v3 + 16);
        v43 = *(v3 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_2529AA4C0((v43 > 1), v44 + 1, 1);
          v3 = __dst[0];
        }

        *(v3 + 16) = v44 + 1;
        *(v3 + v44 + 32) = v36;
        goto LABEL_51;
      }
    }
  }

  v2 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D84F90];
LABEL_56:

  v46 = *(v2 + 16);

  if (v46)
  {
    v47 = *(v3 + 16);

    if (!v47)
    {
      v48 = 0;
      return v48 & 1;
    }
  }

  else
  {
  }

  result = sub_2529FC02C(&unk_2864A33F8);
  v4 = result;
  v50 = v138;
  v1 = *(v138 + 16);
  if (v1)
  {
    v7 = 0;
    v3 = result + 56;
    while (v7 < *(v50 + 16))
    {
      if (*(v4 + 2))
      {
        v51 = *(v138 + 32 + v7);
        sub_252E37EC4();
        LOBYTE(v144) = v51;
        StateSemantic.rawValue.getter();
        sub_252E37044();

        result = sub_252E37F14();
        v52 = -1 << v4[32];
        v53 = result & ~v52;
        if ((*(v3 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53))
        {
          v54 = ~v52;
          while (1)
          {
            LOBYTE(__dst[0]) = *(*(v4 + 6) + v53);
            LOBYTE(v144) = v51;
            v2 = StateSemantic.rawValue.getter();
            v5 = v55;
            if (v2 == StateSemantic.rawValue.getter() && v5 == v56)
            {
              break;
            }

            v2 = sub_252E37DB4();

            if (v2)
            {
              goto LABEL_77;
            }

            v53 = (v53 + 1) & v54;
            if (((*(v3 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
            {
              goto LABEL_62;
            }
          }

LABEL_77:
          v126 = 1;
          if (!v133)
          {
            goto LABEL_96;
          }

          goto LABEL_78;
        }
      }

LABEL_62:
      ++v7;
      v6 = v133;
      v50 = v138;
      if (v7 == v1)
      {
        goto LABEL_74;
      }
    }

    goto LABEL_238;
  }

LABEL_74:
  v126 = 0;
  if (v6)
  {
LABEL_78:
    v58 = 0;
    v59 = v131 + 32;
    v6 = (v4 + 56);
    v1 = 504;
    while (1)
    {
      if (v58 >= *(v131 + 16))
      {
        __break(1u);
        goto LABEL_241;
      }

      result = memcpy(__dst, (v59 + 504 * v58), 0x1F8uLL);
      v5 = __dst[24];
      v139 = *(__dst[24] + 16);
      if (v139)
      {
        break;
      }

LABEL_95:
      if (++v58 == v133)
      {
        goto LABEL_96;
      }
    }

    v124 = v58;
    v129 = __dst[24] + 32;
    sub_2529353AC(__dst, &v144);

    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      if (*(v4 + 2))
      {
        v1 = *(v129 + v7);
        sub_252E37EC4();
        StateSemantic.rawValue.getter();
        sub_252E37044();

        v60 = sub_252E37F14();
        v61 = -1 << v4[32];
        v62 = v60 & ~v61;
        if ((*(v6 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62))
        {
          v63 = ~v61;
          while (1)
          {
            LOBYTE(v144) = *(*(v4 + 6) + v62);
            v64 = StateSemantic.rawValue.getter();
            v2 = v65;
            if (v64 == StateSemantic.rawValue.getter() && v2 == v66)
            {
              break;
            }

            v3 = sub_252E37DB4();

            if (v3)
            {
              goto LABEL_98;
            }

            v62 = (v62 + 1) & v63;
            if (((*(v6 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
            {
              goto LABEL_82;
            }
          }

LABEL_98:

          sub_252935408(__dst);

          v125 = 1;
          goto LABEL_99;
        }
      }

LABEL_82:
      if (++v7 == v139)
      {
        sub_252935408(__dst);

        v59 = v131 + 32;
        v58 = v124;
        v1 = 504;
        goto LABEL_95;
      }
    }

    goto LABEL_237;
  }

LABEL_96:

  v125 = 0;
LABEL_99:
  v68 = 0;
  v2 = v133;
  v6 = v135;
  v140 = *(v135 + 16);
  v1 = v135 + 32;
  v4 = 0x8000000252E65350;
  v7 = 0xE800000000000000;
  do
  {
    v3 = v68;
    if (v140 == v68)
    {
      break;
    }

    if (v68 >= *(v135 + 16))
    {
      goto LABEL_233;
    }

    v69 = *(v1 + v68);
    LOBYTE(__dst[0]) = v69;
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v70)
    {
      goto LABEL_108;
    }

    v5 = sub_252E37DB4();

    if (v5)
    {
      break;
    }

    LOBYTE(__dst[0]) = v69;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v71 == 0xE800000000000000)
    {
LABEL_108:

      break;
    }

    v5 = sub_252E37DB4();

    v68 = v3 + 1;
  }

  while ((v5 & 1) == 0);
  if (v133)
  {
    v1 = 0;
    v72 = v131 + 32;
    v6 = 0xE800000000000000;
    while (2)
    {
      if (v1 >= *(v131 + 16))
      {
LABEL_241:
        __break(1u);
        goto LABEL_242;
      }

      memcpy(__dst, (v72 + 504 * v1), 0x1F8uLL);
      v73 = __dst[17];
      ++v1;
      v2 = *(__dst[17] + 16);
      sub_2529353AC(__dst, &v144);

      v7 = 0;
      while (v2 != v7)
      {
        if (v7 >= *(v73 + 16))
        {
          goto LABEL_235;
        }

        v74 = *(v73 + v7 + 32);
        LOBYTE(v144) = v74;
        if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v75)
        {
          goto LABEL_125;
        }

        v76 = sub_252E37DB4();

        if (v76)
        {
          goto LABEL_126;
        }

        LOBYTE(v144) = v74;
        if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v77 == 0xE800000000000000)
        {
LABEL_125:

LABEL_126:

          result = sub_252935408(__dst);
          v78 = 1;
          goto LABEL_127;
        }

        v5 = sub_252E37DB4();

        ++v7;
        if (v5)
        {
          goto LABEL_126;
        }
      }

      sub_252935408(__dst);

      v78 = 0;
      v72 = v131 + 32;
      if (v1 != v133)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v78 = 0;
  }

LABEL_127:
  v130 = v78;
  v79 = 0;
  v136 = *(v142 + 16);
  v1 = v142 + 32;
  v7 = 0xE800000000000000;
  v5 = __dst;
  v6 = v131;
  do
  {
    v2 = v79;
    if (v136 == v79)
    {
      break;
    }

    if (v79 >= *(v142 + 16))
    {
      goto LABEL_234;
    }

    v81 = *(v1 + v79);
    LOBYTE(__dst[0]) = v81;
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v82)
    {
      goto LABEL_136;
    }

    v83 = sub_252E37DB4();

    if (v83)
    {
      break;
    }

    LOBYTE(__dst[0]) = v81;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v84 == 0xE800000000000000)
    {
LABEL_136:

      break;
    }

    v80 = sub_252E37DB4();

    v79 = v2 + 1;
  }

  while ((v80 & 1) == 0);
  if (!v133)
  {
    v91 = 0;
LABEL_155:
    v92 = MEMORY[0x277D84F90];
    __dst[0] = MEMORY[0x277D84F90];
    v4 = v127;
    v1 = *(v127 + 2);
    v143 = v91;
    if (v1)
    {
      v93 = 0;
      while (v93 < *(v127 + 2))
      {
        v7 = v93 + 1;

        sub_25297AB2C(v94);
        v93 = v7;
        if (v1 == v7)
        {
          v95 = __dst[0];
          v92 = MEMORY[0x277D84F90];
          goto LABEL_161;
        }
      }

      goto LABEL_229;
    }

    v95 = MEMORY[0x277D84F90];
LABEL_161:
    v96 = sub_252C75848(v95);

    v6 = sub_252DA035C(0xD000000000000017, 0x8000000252E64CA0, v96);

    __dst[0] = v92;
    if (v1)
    {
      v97 = 0;
      while (v97 < *(v127 + 2))
      {
        v7 = v97 + 1;

        sub_25297AB2C(v98);
        v97 = v7;
        if (v1 == v7)
        {
          v99 = v6;
          v100 = __dst[0];
          goto LABEL_167;
        }
      }

      goto LABEL_230;
    }

    v99 = v6;
    v100 = v92;
LABEL_167:
    v101 = v126 | v125;
    if (v140 != v3)
    {
      v101 = 1;
    }

    v102 = v101 | v130;
    if (v136 == v2)
    {
      v103 = v102;
    }

    else
    {
      v103 = 1;
    }

    v104 = 1702195828;
    if (v136 == v2)
    {
      v105 = 0x65736C6166;
    }

    else
    {
      v105 = 1702195828;
    }

    v134 = v105;
    if (v136 == v2)
    {
      v106 = 0xE500000000000000;
    }

    else
    {
      v106 = 0xE400000000000000;
    }

    v132 = v106;
    if (v140 == v3)
    {
      v104 = 0x65736C6166;
    }

    v128 = v104;
    if (v140 == v3)
    {
      v107 = 0xE500000000000000;
    }

    else
    {
      v107 = 0xE400000000000000;
    }

    v123 = v107;
    v108 = sub_252C75848(v100);

    v141 = sub_252DA035C(0xD000000000000015, 0x8000000252E64CC0, v108);

    v137 = v103 | v143 | v99 | v141;
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0x7165526376527369, 0xEE00203A74736575);
    if (v137)
    {
      v109 = 1702195828;
    }

    else
    {
      v109 = 0x65736C6166;
    }

    if (((v103 | v143 | v99) | v141))
    {
      v110 = 0xE400000000000000;
    }

    else
    {
      v110 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v109, v110);

    MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E92E60);
    if (v126)
    {
      v111 = 1702195828;
    }

    else
    {
      v111 = 0x65736C6166;
    }

    if (v126)
    {
      v112 = 0xE400000000000000;
    }

    else
    {
      v112 = 0xE500000000000000;
    }

    v113 = 0xE500000000000000;
    MEMORY[0x2530AD570](v111, v112);

    MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E92E80);
    if (v125)
    {
      v114 = 1702195828;
    }

    else
    {
      v114 = 0x65736C6166;
    }

    if (v125)
    {
      v115 = 0xE400000000000000;
    }

    else
    {
      v115 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v114, v115);

    MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E92EB0);
    MEMORY[0x2530AD570](v128, v123);

    MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E92ED0);
    if (v130)
    {
      v116 = 1702195828;
    }

    else
    {
      v116 = 0x65736C6166;
    }

    if (v130)
    {
      v113 = 0xE400000000000000;
    }

    MEMORY[0x2530AD570](v116, v113);

    MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E92F00);
    MEMORY[0x2530AD570](v134, v132);

    MEMORY[0x2530AD570](0xD00000000000002BLL, 0x8000000252E92F30);
    if (v143)
    {
      v117 = 1702195828;
    }

    else
    {
      v117 = 0x65736C6166;
    }

    if (v143)
    {
      v118 = 0xE400000000000000;
    }

    else
    {
      v118 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v117, v118);

    MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E92F60);
    if (v99)
    {
      v119 = 1702195828;
    }

    else
    {
      v119 = 0x65736C6166;
    }

    if (v99)
    {
      v120 = 0xE400000000000000;
    }

    else
    {
      v120 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v119, v120);

    MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E92F80);
    if (v141)
    {
      v121 = 1702195828;
    }

    else
    {
      v121 = 0x65736C6166;
    }

    if (v141)
    {
      v122 = 0xE400000000000000;
    }

    else
    {
      v122 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v121, v122);

    sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000077, 0x8000000252E92DE0);

    v48 = v137;
    return v48 & 1;
  }

  v1 = 0;
  v85 = v131 + 32;
  while (2)
  {
    if (v1 < *(v6 + 16))
    {
      memcpy(__dst, (v85 + 504 * v1), 0x1F8uLL);
      v86 = __dst[18];
      ++v1;
      v7 = *(__dst[18] + 16);
      sub_2529353AC(__dst, &v144);

      v6 = 0;
      while (v7 != v6)
      {
        if (v6 >= *(v86 + 16))
        {
          goto LABEL_236;
        }

        v87 = *(v86 + v6 + 32);
        LOBYTE(v144) = v87;
        if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v88)
        {
          goto LABEL_153;
        }

        v89 = sub_252E37DB4();

        if (v89)
        {
          goto LABEL_154;
        }

        LOBYTE(v144) = v87;
        if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v90 == 0xE800000000000000)
        {
LABEL_153:

LABEL_154:

          sub_252935408(__dst);
          v91 = 1;
          v5 = __dst;
          goto LABEL_155;
        }

        v5 = sub_252E37DB4();

        ++v6;
        if (v5)
        {
          goto LABEL_154;
        }
      }

      sub_252935408(__dst);

      v91 = 0;
      v6 = v131;
      v5 = __dst;
      v85 = v131 + 32;
      if (v1 != v133)
      {
        continue;
      }

      goto LABEL_155;
    }

    break;
  }

LABEL_242:
  __break(1u);
  return result;
}

uint64_t sub_252CE10F0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v5 = (v2 + 136);
  v4 = *(v2 + 136);
  v6 = v4 + 32;
  v7 = *(v4 + 16);
  v8 = 0x8000000252E65350;
  while (v7 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
LABEL_215:
      __break(1u);
      goto LABEL_216;
    }

    LOBYTE(v128) = *(v6 + v3);
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v10)
    {

LABEL_8:
      v11 = *(v4 + 16);
      if (v11)
      {
        v12 = 0;
        while (1)
        {
          if (v12 >= *(v4 + 16))
          {
            goto LABEL_222;
          }

          LOBYTE(v128) = *(v6 + v12);
          if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v13)
          {
            break;
          }

          v14 = sub_252E37DB4();

          if (v14)
          {
            goto LABEL_18;
          }

          if (v11 == ++v12)
          {
            v12 = *(v4 + 16);
            v15 = v12;
            goto LABEL_36;
          }
        }

LABEL_18:
        v16 = *(v4 + 16);
        if (v16 - 1 == v12)
        {
          v15 = v12 + 1;
        }

        else
        {
          v17 = v12 + 33;
          do
          {
            v20 = v17 - 32;
            if (v17 - 32 >= v16)
            {
              goto LABEL_224;
            }

            LOBYTE(v128) = *(v4 + v17);
            if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v21)
            {
            }

            else
            {
              v22 = sub_252E37DB4();

              if ((v22 & 1) == 0)
              {
                if (v20 != v12)
                {
                  if ((v12 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_233;
                  }

                  v23 = *(v4 + 16);
                  if (v12 >= v23)
                  {
                    goto LABEL_234;
                  }

                  if (v20 >= v23)
                  {
                    goto LABEL_235;
                  }

                  v24 = *(v4 + 32 + v12);
                  v25 = *(v4 + v17);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v4 = sub_252D57AD4(v4);
                  }

                  *(v4 + v12 + 32) = v25;
                  *(v4 + v17) = v24;
                  *v5 = v4;
                }

                ++v12;
              }
            }

            v16 = *(v4 + 16);
            v18 = v17 + 1;
            v19 = v17 - 31;
            ++v17;
          }

          while (v19 != v16);
          v15 = v18 - 32;
          if ((v18 - 32) < v12)
          {
            goto LABEL_231;
          }
        }
      }

      else
      {
        v12 = 0;
        v15 = 0;
      }

LABEL_36:
      sub_252D57CE0(v12, v15);
      break;
    }

    ++v3;
    v9 = sub_252E37DB4();

    if (v9)
    {
      goto LABEL_8;
    }
  }

  v26 = 0;
  v4 = 0x706F4D746F626F72;
  v27 = *v5;
  v28 = *v5 + 32;
  v29 = *(*v5 + 16);
  while (1)
  {
    if (v29 == v26)
    {
LABEL_90:
      v58 = a1;
      v57 = a2;
      if (a2)
      {
        goto LABEL_91;
      }

      goto LABEL_109;
    }

    if (v26 >= *(v27 + 2))
    {
      goto LABEL_215;
    }

    LOBYTE(v128) = *(v28 + v26);
    if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v31 == 0xE800000000000000)
    {
      break;
    }

    ++v26;
    v30 = sub_252E37DB4();

    if (v30)
    {
      goto LABEL_44;
    }
  }

LABEL_44:
  v32 = *(v27 + 2);
  if (v32)
  {
    v33 = 0;
    while (1)
    {
      if (v33 >= *(v27 + 2))
      {
        goto LABEL_223;
      }

      LOBYTE(v128) = *(v28 + v33);
      if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v34 == 0xE800000000000000)
      {
        break;
      }

      v35 = sub_252E37DB4();

      if (v35)
      {
        goto LABEL_54;
      }

      if (v32 == ++v33)
      {
        v33 = *(v27 + 2);
        v36 = v33;
        goto LABEL_72;
      }
    }

LABEL_54:
    v37 = *(v27 + 2);
    if (v37 - 1 == v33)
    {
      v36 = v33 + 1;
    }

    else
    {
      v38 = v33 + 33;
      do
      {
        v41 = v38 - 32;
        if (v38 - 32 >= v37)
        {
          goto LABEL_225;
        }

        LOBYTE(v128) = v27[v38];
        if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v42 == 0xE800000000000000)
        {
        }

        else
        {
          v43 = sub_252E37DB4();

          if ((v43 & 1) == 0)
          {
            if (v41 != v33)
            {
              if ((v33 & 0x8000000000000000) != 0)
              {
                goto LABEL_236;
              }

              v44 = *(v27 + 2);
              if (v33 >= v44)
              {
                goto LABEL_237;
              }

              if (v41 >= v44)
              {
                goto LABEL_238;
              }

              v45 = v27[v33 + 32];
              v46 = v27[v38];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v27 = sub_252D57AD4(v27);
              }

              v27[v33 + 32] = v46;
              v27[v38] = v45;
              *v5 = v27;
            }

            ++v33;
          }
        }

        v37 = *(v27 + 2);
        v39 = v38 + 1;
        v40 = v38 - 31;
        ++v38;
      }

      while (v40 != v37);
      v36 = v39 - 32;
      if ((v39 - 32) < v33)
      {
        goto LABEL_232;
      }
    }
  }

  else
  {
    v33 = 0;
    v36 = 0;
  }

LABEL_72:
  sub_252D57CE0(v33, v36);
  v47 = 0;
  v5 = v127[18];
  v48 = *(v5 + 2);
  do
  {
    if (v48 == v47)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_80;
      }

      goto LABEL_239;
    }

    if (v47 >= *(v5 + 2))
    {
      goto LABEL_218;
    }

    LOBYTE(v128) = v5[v47 + 32];
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v50)
    {

      goto LABEL_83;
    }

    ++v47;
    v49 = sub_252E37DB4();
  }

  while ((v49 & 1) == 0);
  while (1)
  {
LABEL_83:
    v53 = 0;
    v5 = v127[24];
    v54 = *(v5 + 2);
    while (v54 != v53)
    {
      if (v53 >= *(v5 + 2))
      {
        goto LABEL_219;
      }

      LOBYTE(v128) = v5[v53 + 32];
      if (StateSemantic.rawValue.getter() == 7368557 && v56 == 0xE300000000000000)
      {

        goto LABEL_90;
      }

      ++v53;
      v55 = sub_252E37DB4();

      if (v55)
      {
        goto LABEL_90;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_2529F82C4(0, *(v5 + 2) + 1, 1, v5);
    }

    v63 = *(v5 + 2);
    v62 = *(v5 + 3);
    if (v63 >= v62 >> 1)
    {
      v5 = sub_2529F82C4((v62 > 1), v63 + 1, 1, v5);
    }

    *(v5 + 2) = v63 + 1;
    v5[v63 + 32] = 58;
    v127[24] = v5;
    v58 = a1;
    v57 = a2;
    if (a2)
    {
LABEL_91:
      if (v58 == 7368525 && v57 == 0xE300000000000000 || (sub_252E37DB4() & 1) != 0 || v58 == 0x6F6D20746F626F72 && v57 == 0xE900000000000070 || (sub_252E37DB4() & 1) != 0)
      {
        v59 = 0;
        v60 = v127[18];
        v5 = *(v60 + 2);
        while (v5 != v59)
        {
          if (v59 >= *(v60 + 2))
          {
            goto LABEL_220;
          }

          LOBYTE(v128) = v59[v60 + 32];
          if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && v8 == v61)
          {

            goto LABEL_119;
          }

          ++v59;
          v4 = sub_252E37DB4();

          if (v4)
          {
            goto LABEL_119;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_2529F80DC(0, *(v60 + 2) + 1, 1, v60);
        }

        v72 = *(v60 + 2);
        v71 = *(v60 + 3);
        if (v72 >= v71 >> 1)
        {
          v60 = sub_2529F80DC((v71 > 1), v72 + 1, 1, v60);
        }

        *(v60 + 2) = v72 + 1;
        v60[v72 + 32] = 50;
        v127[18] = v60;
LABEL_119:
        v73 = 0;
        v74 = v127[24];
        v4 = *(v74 + 16);
        while (v4 != v73)
        {
          if (v73 >= *(v74 + 16))
          {
            goto LABEL_221;
          }

          LOBYTE(v128) = *(v74 + v73 + 32);
          if (StateSemantic.rawValue.getter() == 7368557 && v76 == 0xE300000000000000)
          {
          }

          ++v73;
          v8 = sub_252E37DB4();

          if (v8)
          {
            return result;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F82C4(0, *(v74 + 16) + 1, 1, v74);
          v74 = result;
        }

        v78 = *(v74 + 16);
        v77 = *(v74 + 24);
        if (v78 >= v77 >> 1)
        {
          result = sub_2529F82C4((v77 > 1), v78 + 1, 1, v74);
          v74 = result;
        }

        *(v74 + 16) = v78 + 1;
        *(v74 + v78 + 32) = 58;
        v127[24] = v74;
        return result;
      }
    }

LABEL_109:
    v64 = v127[12];
    v65 = MEMORY[0x277D84F90];
    v128 = MEMORY[0x277D84F90];
    v66 = *(v64 + 2);
    v67 = 0xD000000000000012;
    if (!v66)
    {
      break;
    }

    v68 = 0;
    while (v68 < *(v64 + 2))
    {
      v5 = v68 + 1;

      sub_25297AB2C(v69);
      v68 = v5;
      if (v66 == v5)
      {
        v70 = v128;
        goto LABEL_132;
      }
    }

LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    v5 = sub_2529F80DC(0, *(v5 + 2) + 1, 1, v5);
LABEL_80:
    v52 = *(v5 + 2);
    v51 = *(v5 + 3);
    if (v52 >= v51 >> 1)
    {
      v5 = sub_2529F80DC((v51 > 1), v52 + 1, 1, v5);
    }

    *(v5 + 2) = v52 + 1;
    v5[v52 + 32] = 50;
    v127[18] = v5;
  }

  v70 = MEMORY[0x277D84F90];
LABEL_132:
  v5 = sub_252C75848(v70);

  v79 = sub_252DA035C(0xD000000000000017, 0x8000000252E64CA0, v5);

  v128 = v65;
  v80 = *(v64 + 2);
  if (v80)
  {
    v81 = 0;
    while (v81 < *(v64 + 2))
    {
      v5 = v81 + 1;

      sub_25297AB2C(v82);
      v81 = v5;
      if (v80 == v5)
      {
        v65 = v128;
        goto LABEL_137;
      }
    }

    goto LABEL_217;
  }

LABEL_137:
  v83 = sub_252C75848(v65);

  v84 = sub_252DA035C(0xD000000000000015, 0x8000000252E64CC0, v83);

  v85 = v127;
  v86 = v127[24];

  v88 = sub_252CDF7C0(v87, v127, &unk_2864A0F58);

  if ((v88 & 1) == 0)
  {
    if (v79)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v84)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
LABEL_244:
          v86 = sub_2529F82C4(0, *(v86 + 16) + 1, 1, v86);
        }

        v91 = *(v86 + 16);
        v90 = *(v86 + 24);
        v92 = v91 + 1;
        if (v91 >= v90 >> 1)
        {
          v86 = sub_2529F82C4((v90 > 1), v91 + 1, 1, v86);
        }

        v93 = 59;
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v86 = sub_2529F82C4(0, *(v86 + 16) + 1, 1, v86);
        }

        v91 = *(v86 + 16);
        v95 = *(v86 + 24);
        v92 = v91 + 1;
        if (v91 >= v95 >> 1)
        {
          v86 = sub_2529F82C4((v95 > 1), v91 + 1, 1, v86);
        }

        v93 = 57;
      }

LABEL_155:
      *(v86 + 16) = v92;
      *(v86 + v91 + 32) = v93;
    }

    else if (v84)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_2529F82C4(0, *(v86 + 16) + 1, 1, v86);
      }

      v91 = *(v86 + 16);
      v94 = *(v86 + 24);
      v92 = v91 + 1;
      if (v91 >= v94 >> 1)
      {
        v86 = sub_2529F82C4((v94 > 1), v91 + 1, 1, v86);
      }

      v93 = 58;
      goto LABEL_155;
    }

    v96 = sub_252DF8E98(v86);

    v85[24] = v96;
  }

  v5 = 0;
  v99 = v85[18];
  v98 = v85 + 18;
  v97 = v99;
  v100 = *(v99 + 2);
  v127 = v98;
  while (v100 != v5)
  {
    if (v5 >= *(v97 + 2))
    {
      goto LABEL_226;
    }

    LOBYTE(v128) = v5[v97 + 32];
    if (AccessoryTypeSemantic.rawValue.getter() == v67 && v8 == v102)
    {

      goto LABEL_169;
    }

    ++v5;
    v101 = sub_252E37DB4();

    if (v101)
    {
      goto LABEL_169;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2529F80DC(0, *(v97 + 2) + 1, 1, v97);
    v97 = result;
  }

  v104 = *(v97 + 2);
  v103 = *(v97 + 3);
  if (v104 >= v103 >> 1)
  {
    result = sub_2529F80DC((v103 > 1), v104 + 1, 1, v97);
    v97 = result;
  }

  *(v97 + 2) = v104 + 1;
  v97[v104 + 32] = 50;
  *v98 = v97;
LABEL_169:
  v105 = 0;
  v5 = v97 + 32;
  v106 = *(v97 + 2);
  do
  {
    v108 = v105;
    if (v106 == v105)
    {
      break;
    }

    if (v105 >= *(v97 + 2))
    {
      goto LABEL_227;
    }

    LOBYTE(v128) = v5[v105];
    if (AccessoryTypeSemantic.rawValue.getter() == v67 && v8 == v109)
    {

      break;
    }

    ++v105;
    v107 = sub_252E37DB4();
  }

  while ((v107 & 1) == 0);
  v67 = 0;
  v110 = *(v97 + 2);
  while (v110 != v67)
  {
    if (v67 >= *(v97 + 2))
    {
      goto LABEL_228;
    }

    LOBYTE(v128) = v5[v67];
    if (AccessoryTypeSemantic.rawValue.getter() == v4 && v112 == 0xE800000000000000)
    {

LABEL_183:
      if (v106 == v108)
      {
        return result;
      }

      v113 = *(v97 + 2);
      if (!v113)
      {
        v4 = 0;
        v116 = 0;
        return sub_252D57CE0(v4, v116);
      }

      v4 = 0;
      while (v4 < *(v97 + 2))
      {
        LOBYTE(v128) = v5[v4];
        if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && v8 == v114)
        {

LABEL_194:
          v117 = *(v97 + 2);
          if (v117 - 1 == v4)
          {
            v116 = v4 + 1;
            return sub_252D57CE0(v4, v116);
          }

          v5 = (v4 + 33);
          v85 = v127;
          while (1)
          {
            v120 = v5 - 32;
            if ((v5 - 32) >= v117)
            {
              goto LABEL_230;
            }

            LOBYTE(v128) = v5[v97];
            v86 = &v128;
            if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && v8 == v121)
            {
            }

            else
            {
              v86 = v121;
              v122 = sub_252E37DB4();

              if ((v122 & 1) == 0)
              {
                if (v120 != v4)
                {
                  if ((v4 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_241;
                  }

                  v123 = *(v97 + 2);
                  if (v4 >= v123)
                  {
                    goto LABEL_242;
                  }

                  if (v120 >= v123)
                  {
                    goto LABEL_243;
                  }

                  v124 = v97[v4 + 32];
                  v86 = v5[v97];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v97 = sub_252D57AD4(v97);
                  }

                  v97[v4 + 32] = v86;
                  v5[v97] = v124;
                  *v127 = v97;
                }

                ++v4;
              }
            }

            v117 = *(v97 + 2);
            v118 = v5 + 1;
            v119 = v5 - 31;
            ++v5;
            if (v119 == v117)
            {
              v116 = (v118 - 32);
              if ((v118 - 32) >= v4)
              {
                return sub_252D57CE0(v4, v116);
              }

              __break(1u);
LABEL_241:
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
              goto LABEL_244;
            }
          }
        }

        v115 = sub_252E37DB4();

        if (v115)
        {
          goto LABEL_194;
        }

        if (v113 == ++v4)
        {
          v4 = *(v97 + 2);
          v116 = v4;
          return sub_252D57CE0(v4, v116);
        }
      }

      goto LABEL_229;
    }

    ++v67;
    v111 = sub_252E37DB4();

    if (v111)
    {
      goto LABEL_183;
    }
  }

  return result;
}

uint64_t sub_252CE2134(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v130 = *(*v2 + 16);
  if (!v130)
  {

    v12 = MEMORY[0x277D84F90];
LABEL_221:
    *v132 = v12;
    return result;
  }

  v131 = v3 + 32;

  v6 = 0;
  v7 = 0;
  v8 = a2 == 0;
  v10 = a1 == 0x6F6D20746F626F72 && a2 == 0xE900000000000070;
  v126 = v10;
  if (a1 == 7368525 && a2 == 0xE300000000000000)
  {
    v8 = 1;
  }

  v128 = v8;
  v129 = a2 != 0;
  v12 = MEMORY[0x277D84F90];
  v127 = v3;
LABEL_15:
  v134 = v12;
  v136 = v7;
  memcpy(__dst, (v131 + 504 * v6), 0x1F8uLL);
  v13 = __dst[17];
  v14 = __dst[12];
  memcpy(__src, (v131 + 504 * v6), sizeof(__src));
  v15 = *(__dst[17] + 16);
  sub_2529353AC(__dst, v138);
  sub_2529353AC(__dst, v138);

  v17 = 0;
  v135 = v6 + 1;
  v133 = v15;
  while (1)
  {
    v19 = v17;
    if (v15 == v17)
    {

      goto LABEL_52;
    }

    if (v17 >= *(v13 + 16))
    {
      goto LABEL_224;
    }

    LOBYTE(v138[0]) = *(v13 + v17 + 32);
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v20)
    {
      break;
    }

    ++v17;
    v18 = sub_252E37DB4();

    if (v18)
    {
      goto LABEL_23;
    }
  }

LABEL_23:

  v21 = *(v13 + 16);
  if (!v21)
  {
    v22 = 0;
    v26 = 0;
    goto LABEL_51;
  }

  v22 = 0;
  v23 = 33;
  while (1)
  {
    if (v22 >= *(v13 + 16))
    {
      goto LABEL_231;
    }

    LOBYTE(v138[0]) = *(v13 + v22 + 32);
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v24)
    {
      break;
    }

    v25 = sub_252E37DB4();

    if (v25)
    {
      goto LABEL_33;
    }

    ++v22;
    ++v23;
    if (v21 == v22)
    {
      v22 = *(v13 + 16);
      v26 = v22;
      goto LABEL_51;
    }
  }

LABEL_33:
  v27 = *(v13 + 16);
  if (v27 - 1 == v22)
  {
    v26 = v22 + 1;
    goto LABEL_51;
  }

  v28 = v13;
  while (2)
  {
    v31 = v23 - 32;
    if (v23 - 32 >= v27)
    {
      goto LABEL_233;
    }

    LOBYTE(v138[0]) = *(v28 + v23);
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v32)
    {

      goto LABEL_37;
    }

    v33 = sub_252E37DB4();

    if (v33)
    {
LABEL_37:
      v27 = *(v28 + 16);
      v29 = v23 + 1;
      v30 = v23 - 31;
      ++v23;
      if (v30 != v27)
      {
        continue;
      }

      v26 = v29 - 32;
      if (v29 - 32 < v22)
      {
        goto LABEL_238;
      }

LABEL_51:
      sub_252D57CE0(v22, v26);
LABEL_52:
      v37 = *(v13 + 16);

      v38 = 0;
      while (1)
      {
        v40 = v38;
        if (v37 == v38)
        {
          break;
        }

        if (v38 >= *(v13 + 16))
        {
          goto LABEL_225;
        }

        LOBYTE(v138[0]) = *(v13 + v38 + 32);
        if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v41 == 0xE800000000000000)
        {

LABEL_60:

          v42 = __src[17];
          v43 = *(__src[17] + 16);
          if (v43)
          {
            v44 = 0;
            v45 = 33;
            while (1)
            {
              if (v44 >= *(v42 + 16))
              {
                goto LABEL_232;
              }

              LOBYTE(v138[0]) = *(v42 + v44 + 32);
              if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v46 == 0xE800000000000000)
              {
                break;
              }

              v47 = sub_252E37DB4();

              if (v47)
              {
                goto LABEL_70;
              }

              ++v44;
              ++v45;
              if (v43 == v44)
              {
                v44 = *(v42 + 16);
                v48 = v44;
                goto LABEL_87;
              }
            }

LABEL_70:
            v49 = *(v42 + 16);
            if (v49 - 1 == v44)
            {
              v48 = v44 + 1;
            }

            else
            {
              do
              {
                v52 = v45 - 32;
                if (v45 - 32 >= v49)
                {
                  goto LABEL_234;
                }

                LOBYTE(v138[0]) = *(v42 + v45);
                if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v53 == 0xE800000000000000)
                {
                }

                else
                {
                  v54 = sub_252E37DB4();

                  if ((v54 & 1) == 0)
                  {
                    if (v52 != v44)
                    {
                      if ((v44 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_243;
                      }

                      v55 = *(v42 + 16);
                      if (v44 >= v55)
                      {
                        goto LABEL_244;
                      }

                      if (v52 >= v55)
                      {
                        goto LABEL_245;
                      }

                      v56 = *(v42 + 32 + v44);
                      v57 = *(v42 + v45);
                      result = swift_isUniquelyReferenced_nonNull_native();
                      if ((result & 1) == 0)
                      {
                        result = sub_252D57AD4(v42);
                        v42 = result;
                      }

                      *(v42 + v44 + 32) = v57;
                      *(v42 + v45) = v56;
                      __src[17] = v42;
                    }

                    ++v44;
                  }
                }

                v49 = *(v42 + 16);
                v50 = v45 + 1;
                v51 = v45 - 31;
                ++v45;
              }

              while (v51 != v49);
              v48 = v50 - 32;
              if (v50 - 32 < v44)
              {
                goto LABEL_239;
              }
            }
          }

          else
          {
            v44 = 0;
            v48 = 0;
          }

LABEL_87:
          sub_252D57CE0(v44, v48);
          v3 = v127;
LABEL_88:
          v58 = v37 != v40 || v129;
          if (!v128)
          {
            if ((sub_252E37DB4() | v126))
            {
              v58 = 1;
            }

            else
            {
              v58 = (v37 != v40) | sub_252E37DB4();
            }
          }

          v59 = __dst[18];
          v60 = *(__dst[18] + 16);

          v61 = 0;
          while (v60 != v61)
          {
            if (v61 >= *(v59 + 16))
            {
              goto LABEL_226;
            }

            LOBYTE(v138[0]) = *(v59 + v61 + 32);
            if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v63)
            {

LABEL_103:

              if (v133 == v19)
              {
                v64 = __dst[24];
                if ((v58 & 1) == 0)
                {
LABEL_130:
                  v77 = MEMORY[0x277D84F90];
                  goto LABEL_131;
                }

LABEL_111:
                v67 = 0;
                v68 = *(v59 + 16);
                while (v68 != v67)
                {
                  if (v67 >= *(v59 + 16))
                  {
                    goto LABEL_229;
                  }

                  LOBYTE(v138[0]) = *(v59 + v67 + 32);
                  if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v70)
                  {

                    goto LABEL_123;
                  }

                  ++v67;
                  v69 = sub_252E37DB4();

                  if (v69)
                  {
                    goto LABEL_123;
                  }
                }

                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_2529F80DC(0, *(v59 + 16) + 1, 1, v59);
                  v59 = result;
                }

                v72 = *(v59 + 16);
                v71 = *(v59 + 24);
                if (v72 >= v71 >> 1)
                {
                  result = sub_2529F80DC((v71 > 1), v72 + 1, 1, v59);
                  v59 = result;
                }

                *(v59 + 16) = v72 + 1;
                *(v59 + v72 + 32) = 50;
                __src[18] = v59;
LABEL_123:
                v73 = 0;
                v74 = *(v64 + 2);
                while (v74 != v73)
                {
                  if (v73 >= *(v64 + 2))
                  {
                    goto LABEL_230;
                  }

                  LOBYTE(v138[0]) = v64[v73 + 32];
                  if (StateSemantic.rawValue.getter() == 7368557 && v76 == 0xE300000000000000)
                  {

                    goto LABEL_130;
                  }

                  ++v73;
                  v75 = sub_252E37DB4();

                  if (v75)
                  {
                    goto LABEL_130;
                  }
                }

                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_2529F82C4(0, *(v64 + 2) + 1, 1, v64);
                  v64 = result;
                }

                v77 = MEMORY[0x277D84F90];
                v98 = *(v64 + 2);
                v97 = *(v64 + 3);
                if (v98 >= v97 >> 1)
                {
                  result = sub_2529F82C4((v97 > 1), v98 + 1, 1, v64);
                  v64 = result;
                }

                *(v64 + 2) = v98 + 1;
                v64[v98 + 32] = 58;
                __src[24] = v64;
LABEL_131:
                v138[0] = v77;
                v78 = *(v14 + 16);
                if (v78)
                {
                  v79 = 0;
                  while (v79 < *(v14 + 16))
                  {
                    v80 = v79 + 1;

                    result = sub_25297AB2C(v81);
                    v79 = v80;
                    if (v78 == v80)
                    {
                      v82 = v138[0];
                      goto LABEL_137;
                    }
                  }

                  __break(1u);
LABEL_223:
                  __break(1u);
LABEL_224:
                  __break(1u);
LABEL_225:
                  __break(1u);
LABEL_226:
                  __break(1u);
LABEL_227:
                  __break(1u);
LABEL_228:
                  __break(1u);
LABEL_229:
                  __break(1u);
LABEL_230:
                  __break(1u);
LABEL_231:
                  __break(1u);
LABEL_232:
                  __break(1u);
LABEL_233:
                  __break(1u);
LABEL_234:
                  __break(1u);
LABEL_235:
                  __break(1u);
LABEL_236:
                  __break(1u);
LABEL_237:
                  __break(1u);
LABEL_238:
                  __break(1u);
LABEL_239:
                  __break(1u);
LABEL_240:
                  __break(1u);
                  goto LABEL_241;
                }

                v82 = v77;
LABEL_137:
                v83 = sub_252C75848(v82);

                v84 = sub_252DA035C(0xD000000000000017, 0x8000000252E64CA0, v83);

                v138[0] = v77;
                if (v78)
                {
                  v85 = 0;
                  while (v85 < *(v14 + 16))
                  {
                    v86 = v85 + 1;

                    result = sub_25297AB2C(v87);
                    v85 = v86;
                    if (v78 == v86)
                    {
                      v88 = v138[0];
                      goto LABEL_143;
                    }
                  }

                  goto LABEL_223;
                }

                v88 = v77;
LABEL_143:

                v89 = sub_252C75848(v88);

                v90 = sub_252DA035C(0xD000000000000015, 0x8000000252E64CC0, v89);

                v7 = v136;
                result = sub_252CDF7C0(v64, v132, &unk_2864A0F80);
                if ((result & 1) == 0)
                {
                  if (v84)
                  {
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if (v90)
                    {
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v64 = sub_2529F82C4(0, *(v64 + 2) + 1, 1, v64);
                      }

                      v93 = *(v64 + 2);
                      v92 = *(v64 + 3);
                      v94 = v93 + 1;
                      if (v93 >= v92 >> 1)
                      {
                        v64 = sub_2529F82C4((v92 > 1), v93 + 1, 1, v64);
                      }

                      v95 = 59;
                    }

                    else
                    {
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v64 = sub_2529F82C4(0, *(v64 + 2) + 1, 1, v64);
                      }

                      v93 = *(v64 + 2);
                      v99 = *(v64 + 3);
                      v94 = v93 + 1;
                      if (v93 >= v99 >> 1)
                      {
                        v64 = sub_2529F82C4((v99 > 1), v93 + 1, 1, v64);
                      }

                      v95 = 57;
                    }

                    goto LABEL_167;
                  }

                  if (v90)
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v64 = sub_2529F82C4(0, *(v64 + 2) + 1, 1, v64);
                    }

                    v93 = *(v64 + 2);
                    v96 = *(v64 + 3);
                    v94 = v93 + 1;
                    if (v93 >= v96 >> 1)
                    {
                      v64 = sub_2529F82C4((v96 > 1), v93 + 1, 1, v64);
                    }

                    v95 = 58;
LABEL_167:
                    *(v64 + 2) = v94;
                    v64[v93 + 32] = v95;
                  }

                  v100 = sub_252DF8E98(v64);

                  __src[24] = v100;
                }

                v101 = 0;
                v102 = *(v59 + 16);
                do
                {
                  v104 = v101;
                  if (v102 == v101)
                  {
                    break;
                  }

                  if (v101 >= *(v59 + 16))
                  {
                    goto LABEL_227;
                  }

                  LOBYTE(v138[0]) = *(v59 + v101 + 32);
                  if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v105)
                  {

                    break;
                  }

                  ++v101;
                  v103 = sub_252E37DB4();
                }

                while ((v103 & 1) == 0);
                v106 = 0;
                while (v102 != v106)
                {
                  if (v106 >= *(v59 + 16))
                  {
                    goto LABEL_228;
                  }

                  LOBYTE(v138[0]) = *(v59 + v106 + 32);
                  if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v108 == 0xE800000000000000)
                  {

LABEL_183:
                    if (v102 != v104)
                    {
                      v109 = *(v59 + 16);
                      if (v109)
                      {
                        v110 = 0;
                        v111 = 33;
                        while (v110 < *(v59 + 16))
                        {
                          LOBYTE(v138[0]) = *(v59 + v110 + 32);
                          if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v112 == 0xE800000000000000)
                          {

LABEL_194:
                            v115 = *(v59 + 16);
                            if (v115 - 1 == v110)
                            {
                              v114 = v110 + 1;
                              goto LABEL_211;
                            }

                            while (1)
                            {
                              v118 = v111 - 32;
                              if (v111 - 32 >= v115)
                              {
                                goto LABEL_236;
                              }

                              LOBYTE(v138[0]) = *(v59 + v111);
                              if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v119 == 0xE800000000000000)
                              {
                              }

                              else
                              {
                                v120 = sub_252E37DB4();

                                if ((v120 & 1) == 0)
                                {
                                  if (v118 != v110)
                                  {
                                    if ((v110 & 0x8000000000000000) != 0)
                                    {
                                      goto LABEL_247;
                                    }

                                    v121 = *(v59 + 16);
                                    if (v110 >= v121)
                                    {
                                      goto LABEL_248;
                                    }

                                    if (v118 >= v121)
                                    {
                                      goto LABEL_249;
                                    }

                                    v122 = *(v59 + 32 + v110);
                                    v123 = *(v59 + v111);
                                    result = swift_isUniquelyReferenced_nonNull_native();
                                    if ((result & 1) == 0)
                                    {
                                      result = sub_252D57AD4(v59);
                                      v59 = result;
                                    }

                                    *(v59 + v110 + 32) = v123;
                                    *(v59 + v111) = v122;
                                    __src[18] = v59;
                                  }

                                  ++v110;
                                }
                              }

                              v115 = *(v59 + 16);
                              v116 = v111 + 1;
                              v117 = v111 - 31;
                              ++v111;
                              if (v117 == v115)
                              {
                                v114 = v116 - 32;
                                if (v116 - 32 < v110)
                                {
                                  goto LABEL_246;
                                }

                                goto LABEL_211;
                              }
                            }
                          }

                          v113 = sub_252E37DB4();

                          if (v113)
                          {
                            goto LABEL_194;
                          }

                          ++v110;
                          ++v111;
                          if (v109 == v110)
                          {
                            v110 = *(v59 + 16);
                            v114 = v110;
                            goto LABEL_211;
                          }
                        }

                        goto LABEL_235;
                      }

                      v110 = 0;
                      v114 = 0;
LABEL_211:
                      sub_252D57CE0(v110, v114);
                    }

                    break;
                  }

                  ++v106;
                  v107 = sub_252E37DB4();

                  if (v107)
                  {
                    goto LABEL_183;
                  }
                }

                memcpy(v138, __src, sizeof(v138));
                sub_2529353AC(v138, v137);
                v12 = v134;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v12 = sub_2529F7FB0(0, *(v134 + 2) + 1, 1, v134);
                }

                v6 = v135;
                v125 = *(v12 + 2);
                v124 = *(v12 + 3);
                if (v125 >= v124 >> 1)
                {
                  v12 = sub_2529F7FB0((v124 > 1), v125 + 1, 1, v12);
                }

                sub_252935408(__dst);
                *(v12 + 2) = v125 + 1;
                memcpy(&v12[504 * v125 + 32], v138, 0x1F8uLL);
                memcpy(v137, __src, 0x1F8uLL);
                result = sub_252935408(v137);
                if (v135 == v130)
                {
                  result = swift_bridgeObjectRelease_n();
                  goto LABEL_221;
                }

                if (v135 < *(v3 + 16))
                {
                  goto LABEL_15;
                }

                goto LABEL_237;
              }

LABEL_106:
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_2529F80DC(0, *(v59 + 16) + 1, 1, v59);
                v59 = result;
              }

              v66 = *(v59 + 16);
              v65 = *(v59 + 24);
              if (v66 >= v65 >> 1)
              {
                result = sub_2529F80DC((v65 > 1), v66 + 1, 1, v59);
                v59 = result;
              }

              *(v59 + 16) = v66 + 1;
              *(v59 + v66 + 32) = 50;
              __src[18] = v59;
              v64 = __dst[24];
              if ((v58 & 1) == 0)
              {
                goto LABEL_130;
              }

              goto LABEL_111;
            }

            ++v61;
            v62 = sub_252E37DB4();

            if (v62)
            {
              goto LABEL_103;
            }
          }

          goto LABEL_106;
        }

        ++v38;
        v39 = sub_252E37DB4();

        if (v39)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_88;
    }

    break;
  }

  if (v31 == v22)
  {
    goto LABEL_49;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_240;
  }

  v34 = *(v28 + 16);
  if (v22 < v34)
  {
    if (v31 >= v34)
    {
      goto LABEL_242;
    }

    v35 = *(v28 + 32 + v22);
    v36 = *(v28 + v23);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252D57AD4(v28);
      v28 = result;
    }

    *(v28 + v22 + 32) = v36;
    *(v28 + v23) = v35;
    __src[17] = v28;
LABEL_49:
    ++v22;
    goto LABEL_37;
  }

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
LABEL_249:
  __break(1u);
  return result;
}

uint64_t sub_252CE3278(uint64_t a1, uint64_t a2)
{
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544D90);
  sub_252E379F4();

  v11[0] = 0xD000000000000023;
  v11[1] = 0x8000000252E935A0;
  v6 = v2[24];
  v7 = MEMORY[0x2530AD730](v6, &type metadata for StateSemantic);
  MEMORY[0x2530AD570](v7);

  sub_252CC3D90(0xD000000000000023, 0x8000000252E935A0, 0xD000000000000077, 0x8000000252E92DE0);

  v11[0] = v6;

  sub_252CEA530(v11, a1, a2);

  v2[24] = v11[0];

  v9 = sub_252D077A0(v8, v2, a1, a2);
  swift_bridgeObjectRelease_n();

  *v2 = v9;
  return result;
}

uint64_t sub_252CE341C(uint64_t a1, int a2)
{
  LODWORD(v107) = a2;
  v3 = sub_252E34354();
  v112 = *(v3 - 8);
  v113 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v108 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v105 = &v98 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v110 = &v98 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v106 = &v98 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v98 - v13;
  MEMORY[0x28223BE20](v12);
  v111 = &v98 - v15;
  v16 = sub_252E34284();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_252E36AB4();
  v116 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F5A8 != -1)
  {
    swift_once();
  }

  v23 = qword_27F544F30;
  sub_252E36A94();
  sub_252E375D4();
  v114 = v23;
  v115 = v22;
  sub_252E36A84();
  sub_252E34264();
  if (v24 < 0.5)
  {
    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v25 = sub_252E36AD4();
    __swift_project_value_buffer(v25, qword_27F544D90);
    v119[0] = 0;
    v119[1] = 0xE000000000000000;
    sub_252E379F4();

    v118[0] = 0xD00000000000002CLL;
    v118[1] = 0x8000000252E93720;
    v26 = *(v17 + 16);
    v26(v19, a1, v16);
    sub_252E344B4();
    v119[3] = v16;
    v119[4] = sub_252D07DD4(&qword_27F542FF8, MEMORY[0x277D5DB08], MEMORY[0x277D5DB00]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v119);
    v26(boxed_opaque_existential_0, v19, v16);
    v28 = sub_252E344A4();
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1(v119);
    v119[0] = v28;
    v119[1] = v30;
    v31 = sub_252E37184();
    v33 = v32;
    (*(v17 + 8))(v19, v16);
    MEMORY[0x2530AD570](v31, v33);

    sub_252CC7784(v118[0], v118[1], 0, 0xD000000000000077, 0x8000000252E92DE0);

    goto LABEL_7;
  }

  v104 = v20;
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v36 = sub_252E36AD4();
  v37 = __swift_project_value_buffer(v36, qword_27F544D90);
  v119[0] = 0;
  v119[1] = 0xE000000000000000;
  sub_252E379F4();

  v103 = 0xD00000000000001ALL;
  v118[0] = 0xD00000000000001ALL;
  v118[1] = 0x8000000252E93640;
  v38 = *(v17 + 16);
  v38(v19, a1, v16);
  sub_252E344B4();
  v119[3] = v16;
  v119[4] = sub_252D07DD4(&qword_27F542FF8, MEMORY[0x277D5DB08], MEMORY[0x277D5DB00]);
  v39 = __swift_allocate_boxed_opaque_existential_0(v119);
  v38(v39, v19, v16);
  v40 = sub_252E344A4();
  v42 = v41;
  __swift_destroy_boxed_opaque_existential_1(v119);
  v119[0] = v40;
  v119[1] = v42;
  v43 = sub_252E37184();
  v45 = v44;
  (*(v17 + 8))(v19, v16);
  MEMORY[0x2530AD570](v43, v45);

  sub_252CC3D90(v118[0], v118[1], 0xD000000000000077, 0x8000000252E92DE0);

  v46 = sub_252E34254();
  if (!*(v46 + 16))
  {

    sub_252CC4050(0xD00000000000001DLL, 0x8000000252E93700, 0xD000000000000077, 0x8000000252E92DE0, 0xD000000000000028, 0x8000000252E936D0, 63);
    goto LABEL_15;
  }

  v101 = "Checking for RVC: ";
  v102 = v37;
  v20 = v112;
  v47 = v113;
  v48 = (*(v112 + 80) + 32) & ~*(v112 + 80);
  v50 = (v112 + 16);
  v49 = *(v112 + 16);
  v49(v14, v46 + v48, v113);

  v51 = (v20 + 32);
  v52 = v111;
  v100 = *(v20 + 32);
  v100();
  if (sub_252E342E4())
  {
    (*(v20 + 8))(v52, v47);
    v109[9] = 0;
LABEL_15:
    v53 = sub_252E375C4();
    v97 = MEMORY[0x277D84F90];
LABEL_16:
    v35 = v115;
    sub_252E36A74(v53, &dword_252917000, v114, "NLX.SetNLParametersFromUSOParse", 31, 2, v115, " enableTelemetry=YES ", 21, 2, v97);
    v20 = v104;
    return (*(v116 + 8))(v35, v20);
  }

  if (sub_252E342F4())
  {
    if ((v107 & 1) == 0)
    {
      (*(v20 + 8))(v52, v47);
      v109[9] = 1;
      goto LABEL_15;
    }

    v55 = sub_252E34254();
    v56 = v55;
    v108 = *(v55 + 16);
    if (v108)
    {
      v99 = v20 + 32;
      v57 = 0;
      v52 = (v55 + v48);
      v58 = (v20 + 8);
      v107 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (v57 < *(v56 + 16))
      {
        v20 = v56;
        v47 = v113;
        v59 = v110;
        v49(v110, &v52[*(v112 + 72) * v57], v113);
        if (sub_252E342C4())
        {
          v52 = v111;
          (*v58)(v111, v47);

          v64 = v106;
          goto LABEL_43;
        }

        ++v57;
        v51 = *v58;
        (*v58)(v59, v47);
        v56 = v20;
        if (v108 == v57)
        {
          v47 = v113;
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_114;
    }

    v51 = *(v20 + 8);
LABEL_37:
    (v51)(v111, v47);
LABEL_41:

    goto LABEL_15;
  }

  if (sub_252E34304())
  {
    if ((v107 & 1) == 0)
    {
      (*(v20 + 8))(v52, v47);
      v109[9] = 2;
      v53 = sub_252E375C4();
      v97 = MEMORY[0x277D84F90];
      goto LABEL_16;
    }

    v60 = sub_252E34254();
    v61 = v60;
    v110 = *(v60 + 16);
    if (!v110)
    {
      v52 = *(v20 + 8);
LABEL_40:
      (v52)(v111, v113);
      goto LABEL_41;
    }

    v99 = v20 + 32;
    v62 = 0;
    v107 = v60 + v48;
    v51 = (v20 + 8);
    v106 = ((v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    while (1)
    {
      if (v62 >= *(v61 + 16))
      {
        __break(1u);
        goto LABEL_125;
      }

      v63 = v61;
      v59 = v108;
      v47 = v113;
      v49(v108, v107 + *(v20 + 72) * v62, v113);
      if (sub_252E342C4())
      {
        break;
      }

      ++v62;
      v52 = *v51;
      (*v51)(v59, v47);
      v61 = v63;
      if (v110 == v62)
      {
        goto LABEL_40;
      }
    }

    v52 = v111;
    (*v51)(v111, v47);

    v64 = v105;
LABEL_43:
    v65 = v100;
    (v100)(v64, v59, v47);
    (v65)(v52, v64, v47);
  }

  v66 = sub_252B08B50(v52);
  if (v66 >> 62)
  {
    v93 = v66;
    v94 = sub_252E378C4();
    v66 = v93;
    v20 = v104;
    if (v94)
    {
LABEL_46:
      if ((v66 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](0);
      }

      else
      {
        if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_148;
        }
      }

      sub_252A3564C(&unk_2864A5FA8, v119);
      v67 = v119[0];
      v68 = v119[1];
      v69 = BYTE1(v119[1]);
      v70 = v119[2];
      v71 = v119[3];

      if (sub_252B05F4C(&unk_2864A5FD0, v70, v71))
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        sub_252CC3D90(0xD000000000000017, 0x8000000252E936B0, 0xD000000000000077, v101 | 0x8000000000000000);

        (*(v112 + 8))(v111, v113);
        v34 = sub_252E375C4();
        v96 = MEMORY[0x277D84F90];
        goto LABEL_8;
      }

      if (v70 >> 62)
      {
        v72 = sub_252E378C4();
      }

      else
      {
        v72 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v72)
      {

        swift_bridgeObjectRelease_n();
        v73 = 1;
      }

      else
      {
        if (v71 >> 62)
        {
          v74 = sub_252E378C4();
        }

        else
        {
          v74 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        swift_bridgeObjectRelease_n();
        v73 = v74 != 0;
      }

      v75 = v109;
      v109[386] = v73;
      *(v75 + 35) = v67;
      v75[288] = v68;
      v50 = v75;
      v75[289] = v69;

      sub_252E34DA4();

      sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
      if (v119[3])
      {
        sub_252E34F84();
        v76 = swift_dynamicCast();
        v52 = v111;
        v51 = 0xD000000000000077;
        if (v76)
        {
          sub_252CE528C(v118[0]);
          goto LABEL_101;
        }
      }

      else
      {
        sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
        v52 = v111;
        v51 = 0xD000000000000077;
      }

      sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
      if (v119[3])
      {
        sub_252E35034();
        if (swift_dynamicCast())
        {
          sub_252CE56F0(v118[0]);
          goto LABEL_101;
        }
      }

      else
      {
        sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
      if (v119[3])
      {
        sub_252E34FA4();
        if (swift_dynamicCast())
        {
          v77 = v118[0];
          v78 = 2;
          v50[208] = 2;
LABEL_73:
          v50[384] = v78;
          sub_252CE958C(v77);
          goto LABEL_101;
        }
      }

      else
      {
        sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
      if (v119[3])
      {
        sub_252E34E44();
        if (swift_dynamicCast())
        {
          v77 = v118[0];
          v50[208] = 0;
          v78 = 3;
          goto LABEL_73;
        }
      }

      else
      {
        sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
      if (v119[3])
      {
        sub_252E35164();
        if (swift_dynamicCast())
        {
          v79 = v118[0];
          v80 = 4;
LABEL_82:
          v50[384] = v80;
LABEL_87:
          sub_252CED5E8(v79);
          goto LABEL_101;
        }
      }

      else
      {
        sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
      if (v119[3])
      {
        sub_252E35244();
        if (swift_dynamicCast())
        {
          v79 = v118[0];
          v50[24] = 0;
          v80 = 5;
          goto LABEL_82;
        }
      }

      else
      {
        sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
      if (v119[3])
      {
        sub_252E35234();
        if (swift_dynamicCast())
        {
          v79 = v118[0];
          v50[24] = 1;
          v50[384] = 6;
          goto LABEL_87;
        }
      }

      else
      {
        sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
      if (v119[3])
      {
        sub_252E354A4();
        if (swift_dynamicCast())
        {
          v81 = v118[0];
          v82 = 7;
LABEL_100:
          v50[384] = v82;
          sub_252CEF824(v81);
          goto LABEL_101;
        }
      }

      else
      {
        sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
      if (v119[3])
      {
        sub_252E356E4();
        if (swift_dynamicCast())
        {
          v81 = v118[0];
          v50[24] = 0;
          v82 = 8;
          goto LABEL_100;
        }
      }

      else
      {
        sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
      if (v119[3])
      {
        sub_252E356D4();
        if (swift_dynamicCast())
        {
          v81 = v118[0];
          v50[24] = 1;
          v82 = 9;
          goto LABEL_100;
        }
      }

      else
      {
        sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
      if (!v119[3])
      {
LABEL_114:
        sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
LABEL_115:
        sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
        if (v119[3])
        {
          sub_252E35484();
          if (swift_dynamicCast())
          {
            sub_252CE6FFC(v118[0]);
            goto LABEL_101;
          }
        }

        else
        {
          sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
        }

        sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
        if (v119[3])
        {
          sub_252E35154();
          if (swift_dynamicCast())
          {
            v50[384] = 12;
            sub_252E34504();
            v88 = v119[0];
            if (v119[0])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
              v89 = swift_allocObject();
              *(v89 + 16) = xmmword_252E3C130;
              *(v89 + 32) = v88;
              sub_252CDF97C(v89, 0);

              swift_setDeallocating();
              swift_arrayDestroy();
              swift_deallocClassInstance();
            }

            else
            {
            }

            v52 = v111;
            goto LABEL_102;
          }
        }

        else
        {
LABEL_125:
          sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
        }

        sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
        if (v119[3])
        {
          sub_252E34F94();
          if (swift_dynamicCast())
          {
            v50[384] = 13;
            sub_252CF32BC();
            goto LABEL_101;
          }
        }

        else
        {
          sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
        }

        sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
        if (v119[3])
        {
          sub_252E355C4();
          if (swift_dynamicCast())
          {
            v90 = v118[0];
            v50 = v109;
            v91 = 14;
            v92 = 5;
LABEL_143:
            sub_252CE7278(v90, v91, v92);
            goto LABEL_144;
          }
        }

        else
        {
          sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
        }

        sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
        if (v119[3])
        {
          sub_252E35364();
          if (swift_dynamicCast())
          {
            v50 = v109;
            sub_252CE70CC();
LABEL_144:

            v20 = v104;
            v52 = v111;
            goto LABEL_102;
          }
        }

        else
        {
          sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
        }

        sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
        if (v119[3])
        {
          sub_252E35494();
          if (swift_dynamicCast())
          {
            v90 = v118[0];
            v50 = v109;
            v91 = 15;
            v92 = 6;
            goto LABEL_143;
          }

LABEL_149:
          sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
          if (v119[3])
          {
            sub_252E35254();
            if (swift_dynamicCast())
            {
              v50 = v109;
              sub_252CE7328();
              goto LABEL_144;
            }
          }

          else
          {
            sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
          }

          sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
          if (v119[3])
          {
            sub_252E35374();
            if (swift_dynamicCast())
            {
              v50 = v109;
              sub_252CE741C(v118[0]);
              goto LABEL_144;
            }
          }

          else
          {
            sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
          }

          sub_252938414(v122, v120, &qword_27F541E80, &qword_252E3DFA0);
          if (v121)
          {
            sub_252E34E94();
            if (swift_dynamicCast())
            {
              v50 = v109;
              memcpy(v118, v109, sizeof(v118));
              memcpy(v117, v109, sizeof(v117));
              sub_2529353AC(v118, v119);
              v95 = sub_252CE7650();
              memcpy(v119, v117, sizeof(v119));
              sub_252935408(v119);

              *(v50 + 37) = v95;
              sub_252CE80E0();
              goto LABEL_144;
            }
          }

          else
          {
            sub_25293847C(v120, &qword_27F541E80, &qword_252E3DFA0);
          }

          sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
          if (v119[3])
          {
            sub_252E34E34();
            if (swift_dynamicCast())
            {
              v50 = v109;
              sub_252CE87A4(v118[0]);
              goto LABEL_144;
            }
          }

          else
          {
            sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
          }

          sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
          if (v119[3])
          {
            sub_252E34EA4();
            if (swift_dynamicCast())
            {
              v50 = v109;
              sub_252CE8C8C(v118[0]);
              goto LABEL_144;
            }
          }

          else
          {
            sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
          }

          sub_252938414(v122, v119, &qword_27F541E80, &qword_252E3DFA0);
          if (v119[3])
          {
            sub_252E34E04();
            if (swift_dynamicCast())
            {
              v50 = v109;
              sub_252CE9174();
              goto LABEL_144;
            }
          }

          else
          {
            sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
          }

          v20 = v104;
          v52 = v111;
          v50 = v109;
          goto LABEL_102;
        }

LABEL_148:
        sub_25293847C(v119, &qword_27F541E80, &qword_252E3DFA0);
        goto LABEL_149;
      }

      sub_252E35174();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_115;
      }

      sub_252CE6314(v118[0]);
LABEL_101:

LABEL_102:
      if (*(*v50 + 16))
      {
        sub_252CC3D90((v51 - 9), 0x8000000252E93660, 0xD000000000000077, v101 | 0x8000000000000000);
        v83 = *(v50 + 47);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_2529F846C(0, *(v83 + 2) + 1, 1, v83);
        }

        v85 = *(v83 + 2);
        v84 = *(v83 + 3);
        if (v85 >= v84 >> 1)
        {
          v83 = sub_2529F846C((v84 > 1), v85 + 1, 1, v83);
        }

        *(v83 + 2) = v85 + 1;
        v83[v85 + 32] = 4;
        *(v50 + 47) = v83;
        v52 = v111;
      }

      sub_252CE941C(v86);

      v119[0] = 0;
      v119[1] = 0xE000000000000000;
      sub_252E379F4();

      v118[0] = v103;
      v118[1] = 0x8000000252E93690;
      memcpy(v119, v50, sizeof(v119));
      v87 = HomeAutomationIntent.description.getter();
      MEMORY[0x2530AD570](v87);

      sub_252CC3D90(v118[0], v118[1], 0xD000000000000077, v101 | 0x8000000000000000);

      sub_25293847C(v122, &qword_27F541E80, &qword_252E3DFA0);
      (*(v112 + 8))(v52, v113);
      goto LABEL_7;
    }
  }

  else
  {
    v20 = v104;
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }
  }

  sub_252CC4050(0xD000000000000012, 0x8000000252E870B0, 0xD000000000000077, v101 | 0x8000000000000000, 0xD000000000000028, 0x8000000252E936D0, 94);
  (*(v112 + 8))(v52, v47);
LABEL_7:
  v34 = sub_252E375C4();
  v96 = MEMORY[0x277D84F90];
LABEL_8:
  v35 = v115;
  sub_252E36A74(v34, &dword_252917000, v114, "NLX.SetNLParametersFromUSOParse", 31, 2, v115, " enableTelemetry=YES ", 21, 2, v96);
  return (*(v116 + 8))(v35, v20);
}

uint64_t sub_252CE4F38(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545620, &qword_252E5B720);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D0827C();
  sub_252E37F84();
  v8[15] = 0;
  sub_252E37D34();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_252E37D34();
  v8[13] = 2;
  sub_252E37CC4();
  v8[12] = 3;
  sub_252E37C94();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_252CE50FC()
{
  v1 = 0x6B6F547472617473;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x65756C6176;
  }

  if (*v0)
  {
    v1 = 0x6E656B6F54646E65;
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

uint64_t sub_252CE5190@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252D07EE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252CE51B8(uint64_t a1)
{
  v2 = sub_252D0827C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CE51F4(uint64_t a1)
{
  v2 = sub_252D0827C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_252CE5230@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_252D08060(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_252CE528C(uint64_t a1)
{
  v2 = v1;
  *(v1 + 208) = 0;
  *(v1 + 384) = 0;
  sub_252CE958C(a1);
  v3 = *(v1 + 48);
  *&v43[32] = *(v1 + 32);
  *&v43[48] = v3;
  v4 = *(v1 + 80);
  *&v43[64] = *(v1 + 64);
  *&v43[80] = v4;
  v5 = *(v1 + 16);
  *v43 = *v1;
  *&v43[16] = v5;
  v6 = *(v1 + 96);
  *&v43[136] = *(v1 + 136);
  *&v43[152] = *(v1 + 152);
  *&v43[168] = *(v1 + 168);
  *&v43[104] = *(v1 + 104);
  *&v43[120] = *(v1 + 120);
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);
  v9 = *(v1 + 344);
  *&v43[328] = *(v1 + 328);
  *&v43[344] = v9;
  *&v43[360] = *(v1 + 360);
  *&v43[372] = *(v1 + 372);
  v10 = *(v1 + 280);
  *&v43[264] = *(v1 + 264);
  *&v43[280] = v10;
  v11 = *(v1 + 312);
  *&v43[296] = *(v1 + 296);
  *&v43[312] = v11;
  *&v43[200] = *(v1 + 200);
  *&v43[216] = *(v1 + 216);
  *&v43[232] = *(v1 + 232);
  *&v43[248] = *(v1 + 248);
  v12 = *(v1 + 388);
  v44 = v12;
  *&v43[184] = v7;
  *&v43[96] = v6;
  *&v43[192] = v8;
  v43[388] = v12;
  v13 = *(v1 + 469);
  *&v43[453] = *(v1 + 453);
  *&v43[469] = v13;
  *&v43[485] = *(v1 + 485);
  v14 = *(v1 + 405);
  *&v43[389] = *(v1 + 389);
  *&v43[405] = v14;
  v15 = *(v1 + 437);
  *&v43[421] = *(v1 + 421);
  *&v43[437] = v15;
  *&v43[500] = *(v1 + 500);
  if (sub_252AB5058())
  {
    goto LABEL_15;
  }

  if (!*(v8 + 2))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2529F82C4(0, 1, 1, v8);
    }

    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    if (v17 >= v16 >> 1)
    {
      v8 = sub_2529F82C4((v16 > 1), v17 + 1, 1, v8);
    }

    *(v8 + 2) = v17 + 1;
    v8[v17 + 32] = 0;
    *(v1 + 192) = v8;
    if (v44)
    {
      goto LABEL_14;
    }

LABEL_10:

    v19 = sub_252C75848(v18);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  while (1)
  {
    sub_252CEAF6C(0, &qword_27F5428D8);
LABEL_15:
    memcpy(__dst, v2, sizeof(__dst));
    memcpy(v41, v2, sizeof(v41));
    sub_2529353AC(__dst, v43);
    v22 = sub_252CDFDD4();
    memcpy(v43, v41, sizeof(v43));
    result = sub_252935408(v43);
    if ((v22 & 1) == 0)
    {
      return result;
    }

    sub_252E352C4();
    if (v41[0])
    {
      v24 = sub_252E34D74();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    sub_252CE10F0(v24, v26);

    sub_252E352C4();
    if (v41[0])
    {
      v27 = sub_252E34D74();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v6 = 0x64656B636F64;
    v30 = v27;
    v19 = v2;
    sub_252CE2134(v30, v29);

    v31 = 0;
    v32 = v2[24];
    v33 = *(v32 + 16);
    v34 = &unk_2864A5C90;
    while (1)
    {
      if (v33 == v31)
      {
        v38 = &unk_2864A5CB8;
        goto LABEL_31;
      }

      if (v31 >= *(v32 + 16))
      {
        break;
      }

      LOBYTE(v41[0]) = *(v32 + 32 + v31);
      v36 = StateSemantic.rawValue.getter();
      v19 = v37;
      if (v36 == 0x64656B636F64 && v37 == 0xE600000000000000)
      {

        v38 = &unk_2864A5C68;
        v34 = &unk_2864A5C40;
LABEL_31:
        v39 = sub_2529FC02C(v34);
        v40 = sub_2529FC02C(v38);
        sub_252CE3278(v39, v40);
      }

      ++v31;
      v35 = sub_252E37DB4();

      if (v35)
      {
        v34 = &unk_2864A5C40;
        v38 = &unk_2864A5C68;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_34:
    v6 = sub_2529F8278(0, *(v6 + 16) + 1, 1, v6);
LABEL_11:
    v21 = *(v6 + 16);
    v20 = *(v6 + 24);
    if (v21 >= v20 >> 1)
    {
      v6 = sub_2529F8278((v20 > 1), v21 + 1, 1, v6);
    }

    *(v6 + 16) = v21 + 1;
    *(v6 + 8 * v21 + 32) = v19;
    v2[12] = v6;
  }
}

uint64_t sub_252CE56F0(uint64_t a1)
{
  v2 = v1;
  *(v1 + 208) = 0;
  *(v1 + 384) = 1;
  sub_252CE958C(a1);
  v3 = *(v1 + 48);
  *&v96[32] = *(v1 + 32);
  *&v96[48] = v3;
  v4 = *(v1 + 80);
  *&v96[64] = *(v1 + 64);
  *&v96[80] = v4;
  v5 = *(v1 + 16);
  *v96 = *v1;
  *&v96[16] = v5;
  v6 = *(v1 + 96);
  *&v96[136] = *(v1 + 136);
  *&v96[152] = *(v1 + 152);
  *&v96[168] = *(v1 + 168);
  *&v96[104] = *(v1 + 104);
  *&v96[120] = *(v1 + 120);
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);
  v9 = *(v1 + 344);
  *&v96[328] = *(v1 + 328);
  *&v96[344] = v9;
  *&v96[360] = *(v1 + 360);
  *&v96[372] = *(v1 + 372);
  v10 = *(v1 + 280);
  *&v96[264] = *(v1 + 264);
  *&v96[280] = v10;
  v11 = *(v1 + 312);
  *&v96[296] = *(v1 + 296);
  *&v96[312] = v11;
  *&v96[200] = *(v1 + 200);
  *&v96[216] = *(v1 + 216);
  *&v96[232] = *(v1 + 232);
  *&v96[248] = *(v1 + 248);
  v12 = *(v1 + 388);
  v97 = v12;
  *&v96[184] = v7;
  *&v96[96] = v6;
  *&v96[192] = v8;
  v96[388] = v12;
  v13 = *(v1 + 469);
  *&v96[453] = *(v1 + 453);
  *&v96[469] = v13;
  *&v96[485] = *(v1 + 485);
  v14 = *(v1 + 405);
  *&v96[389] = *(v1 + 389);
  *&v96[405] = v14;
  v15 = *(v1 + 437);
  *&v96[421] = *(v1 + 421);
  *&v96[437] = v15;
  *&v96[500] = *(v1 + 500);
  if ((sub_252AB5058() & 1) == 0)
  {
    if (*(v8 + 2))
    {
      if (v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2529F82C4(0, 1, 1, v8);
      }

      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      if (v17 >= v16 >> 1)
      {
        v8 = sub_2529F82C4((v16 > 1), v17 + 1, 1, v8);
      }

      *(v8 + 2) = v17 + 1;
      v8[v17 + 32] = 1;
      *(v1 + 192) = v8;
      if (v97)
      {
        goto LABEL_14;
      }
    }

    v19 = sub_252C75848(v18);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_11;
  }

LABEL_15:
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(__src, v2, sizeof(__src));
  sub_2529353AC(__dst, v96);
  v22 = sub_252CDFDD4();
  memcpy(v96, __src, sizeof(v96));
  result = sub_252935408(v96);
  if (v22)
  {
    v6 = __dst[24];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_136;
    }

    while (1)
    {
      v25 = *(v6 + 16);
      v24 = *(v6 + 24);
      if (v25 >= v24 >> 1)
      {
        v6 = sub_2529F82C4((v24 > 1), v25 + 1, 1, v6);
      }

      v26 = __dst[18];
      *(v6 + 16) = v25 + 1;
      *(v6 + v25 + 32) = 1;
      v2[24] = v6;
      if (!sub_2529A78C8(50, v26))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_2529F80DC(0, *(v26 + 2) + 1, 1, v26);
        }

        v28 = *(v26 + 2);
        v27 = *(v26 + 3);
        if (v28 >= v27 >> 1)
        {
          v26 = sub_2529F80DC((v27 > 1), v28 + 1, 1, v26);
        }

        *(v26 + 2) = v28 + 1;
        v26[v28 + 32] = 50;
        v2[18] = v26;
      }

      v29 = __dst[17];
      v30 = *(__dst[17] + 16);
      if (!v30)
      {
        v32 = 0;
        v38 = 0;
        goto LABEL_60;
      }

      v31 = v2;
      v32 = 0;
      v6 = __dst[17] + 32;
      v2 = 0x8000000252E65350;
      while (1)
      {
        if (v32 >= *(v29 + 2))
        {
          goto LABEL_132;
        }

        v33 = *(v6 + v32);
        LOBYTE(__src[0]) = v33;
        if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v34)
        {
          break;
        }

        v35 = sub_252E37DB4();

        if (v35)
        {
          goto LABEL_38;
        }

        LOBYTE(__src[0]) = v33;
        if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v36 == 0xE800000000000000)
        {
          break;
        }

        v37 = sub_252E37DB4();

        if (v37)
        {
          goto LABEL_38;
        }

        if (v30 == ++v32)
        {
          v32 = *(v29 + 2);
          v38 = v32;
          goto LABEL_40;
        }
      }

LABEL_38:
      v39 = *(v29 + 2);
      if (v39 - 1 != v32)
      {
        break;
      }

      v38 = v32 + 1;
LABEL_40:
      v2 = v31;
LABEL_60:
      v50 = __dst[0];
      sub_252D57CE0(v32, v38);
      v6 = *(v50 + 16);
      if (!v6)
      {

        v52 = MEMORY[0x277D84F90];
LABEL_123:
        *v2 = v52;
        v85 = sub_2529FC02C(&unk_2864A5CE0);
        v86 = sub_2529FC02C(&unk_2864A5D08);
        sub_252CE3278(v85, v86);
      }

      v87 = v2;
      v93 = MEMORY[0x277D84F90];
      sub_2529AA480(0, v6, 0);
      if (!*(v50 + 16))
      {
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      v51 = 0;
      v89 = v50;
      v90 = v50 + 32;
      v52 = v93;
      v2 = 0x8000000252E65350;
      v53 = 1;
      v88 = v6;
      while (2)
      {
        v54 = (v90 + 504 * v51);
        v51 = v53;
        memcpy(__src, v54, sizeof(__src));
        v55 = __src[24];
        v56 = __src[18];
        memcpy(v92, v54, sizeof(v92));
        sub_2529353AC(__src, v91);
        sub_2529353AC(__src, v91);

        LOBYTE(v54) = sub_2529A78B0(1, v55);

        if ((v54 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_2529F82C4(0, *(v55 + 2) + 1, 1, v55);
          }

          v58 = *(v55 + 2);
          v57 = *(v55 + 3);
          if (v58 >= v57 >> 1)
          {
            v55 = sub_2529F82C4((v57 > 1), v58 + 1, 1, v55);
          }

          *(v55 + 2) = v58 + 1;
          v55[v58 + 32] = 1;
          v92[24] = v55;
        }

        v59 = sub_2529A78C8(50, v56);

        if (!v59)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = sub_2529F80DC(0, *(v56 + 2) + 1, 1, v56);
          }

          v61 = *(v56 + 2);
          v60 = *(v56 + 3);
          if (v61 >= v60 >> 1)
          {
            v56 = sub_2529F80DC((v60 > 1), v61 + 1, 1, v56);
          }

          *(v56 + 2) = v61 + 1;
          v56[v61 + 32] = 50;
          v92[18] = v56;
        }

        v62 = __src[17];
        v6 = *(__src[17] + 16);
        if (!v6)
        {
          v70 = 0;
          v63 = 0;
          goto LABEL_109;
        }

        v63 = 0;
        v64 = 33;
        while (1)
        {
          if (v63 >= *(v62 + 2))
          {
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

          v65 = v62[v63 + 32];
          v91[0] = v65;
          if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v66)
          {
            break;
          }

          v67 = sub_252E37DB4();

          if (v67)
          {
            goto LABEL_88;
          }

          v91[0] = v65;
          if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v68 == 0xE800000000000000)
          {
            break;
          }

          v69 = sub_252E37DB4();

          if (v69)
          {
            goto LABEL_88;
          }

          ++v63;
          ++v64;
          if (v6 == v63)
          {
            v70 = *(v62 + 2);
            v63 = v70;
            goto LABEL_109;
          }
        }

LABEL_88:
        v71 = *(v62 + 2);
        if (v71 - 1 == v63)
        {
          v70 = v63 + 1;
          goto LABEL_109;
        }

        do
        {
          v6 = v64 - 32;
          if (v64 - 32 >= v71)
          {
            __break(1u);
            goto LABEL_126;
          }

          v74 = v62[v64];
          v91[0] = v74;
          if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v75)
          {
LABEL_90:

            goto LABEL_91;
          }

          v76 = sub_252E37DB4();

          if ((v76 & 1) == 0)
          {
            v91[0] = v74;
            if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v77 == 0xE800000000000000)
            {
              goto LABEL_90;
            }

            v78 = sub_252E37DB4();

            if ((v78 & 1) == 0)
            {
              if (v6 != v63)
              {
                if (v63 < 0)
                {
                  goto LABEL_133;
                }

                v79 = *(v62 + 2);
                if (v63 >= v79)
                {
                  goto LABEL_134;
                }

                if (v6 >= v79)
                {
                  goto LABEL_135;
                }

                v80 = v62[v63 + 32];
                v6 = v62[v64];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v62 = sub_252D57AD4(v62);
                }

                v62[v63 + 32] = v6;
                v62[v64] = v80;
              }

              ++v63;
            }
          }

LABEL_91:
          v71 = *(v62 + 2);
          v72 = v64 + 1;
          v73 = v64 - 31;
          ++v64;
        }

        while (v73 != v71);
        v70 = v72 - 32;
        if (v72 - 32 < v63)
        {
          goto LABEL_128;
        }

        if ((v63 & 0x8000000000000000) == 0)
        {
LABEL_109:
          if (__OFADD__(v70, v63 - v70))
          {
            goto LABEL_130;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v92[17] = v62;
          if (!isUniquelyReferenced_nonNull_native || v63 > *(v62 + 3) >> 1)
          {
            if (v70 <= v63)
            {
              v82 = v63;
            }

            else
            {
              v82 = v70;
            }

            v62 = sub_2529F80DC(isUniquelyReferenced_nonNull_native, v82, 1, v62);
            v92[17] = v62;
          }

          sub_252B7DA90();
          sub_252935408(__src);
          v92[17] = v62;
          memcpy(v91, v92, sizeof(v91));
          v93 = v52;
          v84 = *(v52 + 16);
          v83 = *(v52 + 24);
          if (v84 >= v83 >> 1)
          {
            sub_2529AA480((v83 > 1), v84 + 1, 1);
            v52 = v93;
          }

          *(v52 + 16) = v84 + 1;
          memcpy((v52 + 504 * v84 + 32), v91, 0x1F8uLL);
          v6 = v88;
          if (v51 == v88)
          {

            v2 = v87;
            goto LABEL_123;
          }

          v53 = v51 + 1;
          if (v51 >= *(v89 + 16))
          {
            goto LABEL_127;
          }

          continue;
        }

        break;
      }

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
      v6 = sub_2529F82C4(0, *(v6 + 16) + 1, 1, v6);
    }

    v40 = v32 + 33;
    while (1)
    {
      v6 = v40 - 32;
      if (v40 - 32 >= v39)
      {
        goto LABEL_131;
      }

      v43 = v29[v40];
      LOBYTE(__src[0]) = v43;
      v19 = __src;
      if (AccessoryTypeSemantic.rawValue.getter() != 0xD000000000000012 || 0x8000000252E65350 != v44)
      {
        v19 = v44;
        v45 = sub_252E37DB4();

        if (v45)
        {
          goto LABEL_43;
        }

        LOBYTE(__src[0]) = v43;
        v19 = __src;
        if (AccessoryTypeSemantic.rawValue.getter() != 0x706F4D746F626F72 || v46 != 0xE800000000000000)
        {
          v19 = v46;
          v47 = sub_252E37DB4();

          if ((v47 & 1) == 0)
          {
            if (v6 != v32)
            {
              if ((v32 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_140:
                __break(1u);
LABEL_141:
                __break(1u);
                return result;
              }

              v48 = *(v29 + 2);
              if (v32 >= v48)
              {
                goto LABEL_140;
              }

              if (v6 >= v48)
              {
                goto LABEL_141;
              }

              v49 = v29[v32 + 32];
              v19 = v29[v40];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v29 = sub_252D57AD4(v29);
              }

              v29[v32 + 32] = v19;
              v29[v40] = v49;
              v31[17] = v29;
            }

            ++v32;
          }

          goto LABEL_43;
        }
      }

LABEL_43:
      v39 = *(v29 + 2);
      v41 = v40 + 1;
      v42 = v40 - 31;
      ++v40;
      if (v42 == v39)
      {
        v38 = v41 - 32;
        v2 = v31;
        if ((v41 - 32) >= v32)
        {
          goto LABEL_60;
        }

        __break(1u);
LABEL_138:
        v6 = sub_2529F8278(0, *(v6 + 16) + 1, 1, v6);
LABEL_11:
        v21 = *(v6 + 16);
        v20 = *(v6 + 24);
        if (v21 >= v20 >> 1)
        {
          v6 = sub_2529F8278((v20 > 1), v21 + 1, 1, v6);
        }

        *(v6 + 16) = v21 + 1;
        *(v6 + 8 * v21 + 32) = v19;
        v2[12] = v6;
LABEL_14:
        sub_252CEAF6C(1, &qword_27F5428E0);
        goto LABEL_15;
      }
    }
  }

  return result;
}

uint64_t sub_252CE6314(uint64_t a1)
{
  v69 = sub_252E36CA4();
  v3 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_252E36D04();
  v5 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v72 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B08, &qword_252E41A00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B10, &qword_252E5B650);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = &v56 - v11;
  sub_252CF0EC8(a1);
  result = sub_252CF1B58();
  v13 = *v1;
  v14 = *(*v1 + 16);
  if (v14)
  {
    v57 = v9;
    v59 = v1;
    v65 = &v104[1];
    v66 = 0x8000000252E72DC0;
    v63 = (v5 + 8);
    v64 = (v3 + 8);
    v15 = v103;
    v74 = v14 - 1;
    v62 = xmmword_252E41C50;
    v58 = v13;
    v76 = MEMORY[0x277D84F90];
    v61 = v103;
    while (1)
    {
      memcpy(v135, (v13 + 32), 0x1F8uLL);
      v134 = *(v13 + 32);
      v16 = *(v13 + 200);
      v130 = *(v13 + 184);
      v131 = v16;
      v132 = *(v13 + 216);
      v17 = *(v13 + 136);
      v126 = *(v13 + 120);
      v127 = v17;
      v18 = *(v13 + 168);
      v128 = *(v13 + 152);
      v129 = v18;
      v19 = *(v13 + 72);
      v122 = *(v13 + 56);
      v123 = v19;
      v20 = *(v13 + 104);
      v124 = *(v13 + 88);
      v125 = v20;
      v21 = *(v13 + 353);
      v22 = *(v13 + 385);
      v120 = *(v13 + 369);
      v121[0] = v22;
      *(v121 + 15) = *(v13 + 400);
      v23 = *(v13 + 289);
      v24 = *(v13 + 321);
      v25 = *(v13 + 337);
      v116 = *(v13 + 305);
      v117 = v24;
      v119 = v21;
      v118 = v25;
      v26 = *(v13 + 257);
      v27 = *(v13 + 273);
      v112 = *(v13 + 241);
      v113 = v26;
      v28 = v135[2];
      v133 = *(v13 + 232);
      v115 = v23;
      v114 = v27;
      v29 = LOBYTE(v135[48]);
      v30 = *(v13 + 497);
      v109 = *(v13 + 481);
      v110 = v30;
      v111[0] = *(v13 + 513);
      *(v111 + 15) = *(v13 + 528);
      v31 = *(v13 + 433);
      v105 = *(v13 + 417);
      v106 = v31;
      v32 = *(v13 + 465);
      v107 = *(v13 + 449);
      v108 = v32;
      v104[0] = *(v13 + 32);
      *(&v104[9] + 8) = *(v13 + 184);
      *(&v104[10] + 8) = *(v13 + 200);
      *(&v104[11] + 8) = *(v13 + 216);
      *(&v104[12] + 1) = *(v13 + 232);
      *(&v104[5] + 8) = *(v13 + 120);
      *(&v104[6] + 8) = *(v13 + 136);
      *(&v104[7] + 8) = *(v13 + 152);
      *(&v104[8] + 8) = *(v13 + 168);
      *(&v104[1] + 8) = *(v13 + 56);
      *(&v104[2] + 8) = *(v13 + 72);
      *(&v104[3] + 8) = *(v13 + 88);
      *(&v104[4] + 8) = *(v13 + 104);
      *&v104[1] = v135[2];
      LODWORD(v73) = LOBYTE(v135[26]);
      LOBYTE(v104[13]) = v135[26];
      *(&v104[20] + 1) = *(v13 + 353);
      *(&v104[21] + 1) = *(v13 + 369);
      *(&v104[22] + 1) = *(v13 + 385);
      v104[23] = *(v13 + 400);
      *(&v104[16] + 1) = *(v13 + 289);
      *(&v104[17] + 1) = *(v13 + 305);
      *(&v104[18] + 1) = *(v13 + 321);
      *(&v104[19] + 1) = *(v13 + 337);
      *(&v104[13] + 1) = *(v13 + 241);
      *(&v104[14] + 1) = *(v13 + 257);
      *(&v104[15] + 1) = *(v13 + 273);
      LOBYTE(v104[24]) = v135[48];
      *(&v104[28] + 1) = *(v13 + 481);
      *(&v104[29] + 1) = *(v13 + 497);
      *(&v104[30] + 1) = *(v13 + 513);
      *&v104[31] = *(v13 + 528);
      *(&v104[24] + 1) = *(v13 + 417);
      *(&v104[25] + 1) = *(v13 + 433);
      *(&v104[26] + 1) = *(v13 + 449);
      *(&v104[27] + 1) = *(v13 + 465);
      sub_2529353AC(v135, &v77);
      sub_2529353AC(v135, &v77);
      v33 = sub_252A15CE0();
      v75 = v28;
      if (v33)
      {
        v34 = 3;
        v35 = v28;
        goto LABEL_30;
      }

      v35 = v28;
      if (!v28)
      {
        break;
      }

      LODWORD(v71) = v29;
      if (sub_252E35DA4() || sub_252E35DB4())
      {
        goto LABEL_8;
      }

      v36 = v60;
      sub_252E35D44();
      v37 = sub_252E35C84();
      v38 = (*(*(v37 - 8) + 48))(v36, 1, v37);
      sub_25293847C(v36, &qword_27F541B10, &qword_252E5B650);
      if (v38 != 1)
      {
        goto LABEL_9;
      }

      if (sub_252E35D84())
      {
LABEL_8:

LABEL_9:
        v34 = 3;
LABEL_29:
        v35 = v75;
        goto LABEL_30;
      }

      v39 = v57;
      sub_252E35D64();
      v40 = sub_252E35D54();
      v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
      sub_25293847C(v39, &qword_27F541B08, &qword_252E41A00);
      if (v41 != 1 || !sub_252E35D34())
      {
        goto LABEL_9;
      }

      v42 = sub_252B085DC();

      v35 = v75;
      LOBYTE(v29) = v71;
      if (v42)
      {
        break;
      }

      v34 = 3;
LABEL_30:
      v104[0] = v134;
      *&v104[1] = v35;
      *(&v104[9] + 8) = v130;
      *(&v104[10] + 8) = v131;
      *(&v104[11] + 8) = v132;
      *(&v104[12] + 1) = v133;
      *(&v104[5] + 8) = v126;
      *(&v104[6] + 8) = v127;
      *(&v104[7] + 8) = v128;
      *(&v104[8] + 8) = v129;
      *(&v104[1] + 8) = v122;
      *(&v104[2] + 8) = v123;
      *(&v104[3] + 8) = v124;
      *(&v104[4] + 8) = v125;
      LOBYTE(v104[13]) = v34;
      *(&v104[21] + 1) = v120;
      *(&v104[22] + 1) = v121[0];
      v104[23] = *(v121 + 15);
      *(&v104[17] + 1) = v116;
      *(&v104[18] + 1) = v117;
      *(&v104[19] + 1) = v118;
      *(&v104[20] + 1) = v119;
      *(&v104[13] + 1) = v112;
      *(&v104[14] + 1) = v113;
      *(&v104[15] + 1) = v114;
      *(&v104[16] + 1) = v115;
      LOBYTE(v104[24]) = 10;
      *(&v104[28] + 1) = v109;
      *(&v104[29] + 1) = v110;
      *(&v104[30] + 1) = v111[0];
      *&v104[31] = *(v111 + 15);
      *(&v104[24] + 1) = v105;
      *(&v104[25] + 1) = v106;
      *(&v104[26] + 1) = v107;
      *(&v104[27] + 1) = v108;
      sub_2529353AC(v104, &v77);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_2529F7FB0(0, *(v76 + 2) + 1, 1, v76);
      }

      v51 = *(v76 + 2);
      v50 = *(v76 + 3);
      if (v51 >= v50 >> 1)
      {
        v76 = sub_2529F7FB0((v50 > 1), v51 + 1, 1, v76);
      }

      sub_252935408(v135);
      v52 = v76;
      *(v76 + 2) = v51 + 1;
      memcpy(&v52[504 * v51 + 32], v104, 0x1F8uLL);
      v77 = v134;
      v78 = v75;
      v87 = v130;
      v88 = v131;
      v89 = v132;
      v90 = v133;
      v83 = v126;
      v84 = v127;
      v85 = v128;
      v86 = v129;
      v79 = v122;
      v80 = v123;
      v81 = v124;
      v82 = v125;
      v91 = v34;
      v100 = v120;
      *v101 = v121[0];
      *&v101[15] = *(v121 + 15);
      v96 = v116;
      v97 = v117;
      v98 = v118;
      v99 = v119;
      v92 = v112;
      v93 = v113;
      v94 = v114;
      v95 = v115;
      v102 = 10;
      v53 = v110;
      *(v15 + 4) = v109;
      *(v15 + 5) = v53;
      *(v15 + 6) = v111[0];
      *(v15 + 111) = *(v111 + 15);
      v54 = v106;
      *v15 = v105;
      *(v15 + 1) = v54;
      v55 = v108;
      *(v15 + 2) = v107;
      *(v15 + 3) = v55;
      sub_252935408(&v77);
      if (!v74)
      {

        *v59 = v76;
        return result;
      }

      --v74;
      v13 += 504;
    }

    v104[0] = v134;
    *(&v104[9] + 8) = v130;
    *(&v104[10] + 8) = v131;
    *(&v104[11] + 8) = v132;
    *(&v104[12] + 1) = v133;
    *(&v104[5] + 8) = v126;
    *(&v104[6] + 8) = v127;
    *(&v104[7] + 8) = v128;
    *(&v104[8] + 8) = v129;
    *(&v104[1] + 8) = v122;
    *(&v104[2] + 8) = v123;
    *(&v104[3] + 8) = v124;
    *(&v104[4] + 8) = v125;
    *&v104[1] = v35;
    LOBYTE(v104[13]) = v73;
    *(&v104[21] + 1) = v120;
    *(&v104[22] + 1) = v121[0];
    v104[23] = *(v121 + 15);
    *(&v104[17] + 1) = v116;
    *(&v104[18] + 1) = v117;
    *(&v104[19] + 1) = v118;
    *(&v104[20] + 1) = v119;
    *(&v104[13] + 1) = v112;
    *(&v104[14] + 1) = v113;
    *(&v104[15] + 1) = v114;
    *(&v104[16] + 1) = v115;
    LOBYTE(v104[24]) = v29;
    *(&v104[28] + 1) = v109;
    *(&v104[29] + 1) = v110;
    *(&v104[30] + 1) = v111[0];
    *&v104[31] = *(v111 + 15);
    *(&v104[24] + 1) = v105;
    *(&v104[25] + 1) = v106;
    *(&v104[26] + 1) = v107;
    *(&v104[27] + 1) = v108;
    if ((sub_252AB5058() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (qword_2814B0DB8 != -1)
    {
      swift_once();
    }

    v73 = qword_2814B1358;
    sub_252E37604();
    v43 = off_2814B0DC0;
    if (off_2814B0DC0)
    {
    }

    else
    {
      type metadata accessor for LifeCycleManager();
      swift_allocObject();
      v43 = sub_252D7EAE8();
      off_2814B0DC0 = v43;

      sub_252D7E92C();
    }

    v71 = v43;
    sub_252E37614();
    v73 = *(v43 + 2);
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = v62;
    *(v44 + 40) = v66;
    *(v44 + 48) = sub_252979724;
    *(v44 + 56) = 0;
    *&v104[2] = sub_252D083EC;
    *(&v104[2] + 1) = v44;
    *&v104[0] = MEMORY[0x277D85DD0];
    *(&v104[0] + 1) = 1107296256;
    *&v104[1] = sub_252AD686C;
    *(&v104[1] + 1) = &block_descriptor_29;
    v45 = _Block_copy(v104);

    sub_252E36CD4();
    *&v77 = MEMORY[0x277D84F90];
    v70 = sub_252D07DD4(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
    sub_2529905D0();
    v46 = v68;
    v47 = v69;
    sub_252E37824();
    MEMORY[0x2530ADA30](0, v72, v46, v45);
    _Block_release(v45);
    (*v64)(v46, v47);
    (*v63)(v72, v67);

    if (qword_27F53F220 != -1)
    {
      swift_once();
    }

    v73 = qword_27F5753E8;
    sub_252E37604();
    v48 = qword_27F5407C0;
    v15 = v61;
    if (qword_27F5407C0)
    {
    }

    else
    {
      type metadata accessor for ApplicationContext(0);
      swift_allocObject();
      v48 = sub_252978E58();
      qword_27F5407C0 = v48;
    }

    sub_252E37614();
    sub_252929E74((v48 + 368), v104);

    v49 = sub_252C92828(v104);
    __swift_destroy_boxed_opaque_existential_1(v104);
    if (v49)
    {
      v34 = 8;
    }

    else
    {
LABEL_28:
      v34 = 1;
    }

    goto LABEL_29;
  }

  return result;
}

unint64_t sub_252CE6FFC(uint64_t a1)
{
  sub_252E34E64();
  v3 = v9;
  if (v9)
  {
    memcpy(__dst, v1, sizeof(__dst));
    memcpy(__src, v1, sizeof(__src));
    sub_2529353AC(__dst, v8);
    sub_252CF1C30(v3, &v6);

    memcpy(v8, __src, sizeof(v8));
    sub_252935408(v8);
    v1[209] = v6;
  }

  v1[208] = 1;
  v1[384] = 11;
  return sub_252CF0EC8(a1);
}

unint64_t sub_252CE70CC()
{
  *(v0 + 384) = 21;
  result = sub_252E34E54();
  if (result)
  {
    v2 = result;
    v10 = MEMORY[0x277D84F90];
    v3 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_21:
      v4 = sub_252E378C4();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = MEMORY[0x277D84F90];
        do
        {
          v7 = v5;
          while (1)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              MEMORY[0x2530ADF00](v7, v2);
              v5 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                goto LABEL_19;
              }
            }

            else
            {
              if (v7 >= *(v3 + 16))
              {
                goto LABEL_20;
              }

              v5 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
LABEL_19:
                __break(1u);
LABEL_20:
                __break(1u);
                goto LABEL_21;
              }
            }

            sub_252E349D4();

            if (v9)
            {
              break;
            }

            ++v7;
            if (v5 == v4)
            {
              goto LABEL_23;
            }
          }

          MEMORY[0x2530AD700](v8);
          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v6 = v10;
        }

        while (v5 != v4);
        goto LABEL_23;
      }
    }

    else
    {
      v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v6 = MEMORY[0x277D84F90];
LABEL_23:

    *(v0 + 208) = 3;
    sub_252CDF97C(v6, 0);
  }

  return result;
}

void *sub_252CE7278(uint64_t a1, char a2, char a3)
{
  *(v3 + 384) = a2;
  result = sub_252E34E64();
  if (v7)
  {
    *(v3 + 208) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = v7;
    sub_252CDF97C(inited, 0);
    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  return result;
}

void *sub_252CE7328()
{
  *(v0 + 384) = 16;
  result = sub_252E35194();
  if (v4)
  {
    sub_252E35184();
    v2 = sub_252E34A14();

    if (v2)
    {

      *(v0 + 208) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C130;
      *(inited + 32) = v4;
      sub_252CDF97C(inited, 0);
      swift_setDeallocating();
      return swift_arrayDestroy();
    }

    else
    {
    }
  }

  return result;
}

unint64_t sub_252CE741C(uint64_t a1)
{
  sub_252E34E64();
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = v11;

    sub_252CF2854(inited);

    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  result = sub_252E34E54();
  if (result)
  {
    v3 = result;
    v12 = MEMORY[0x277D84F90];
    v4 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_23:
      v5 = sub_252E378C4();
      if (v5)
      {
LABEL_6:
        v6 = 0;
        v7 = MEMORY[0x277D84F90];
        do
        {
          v8 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              MEMORY[0x2530ADF00](v8, v3);
              v6 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                goto LABEL_21;
              }
            }

            else
            {
              if (v8 >= *(v4 + 16))
              {
                goto LABEL_22;
              }

              v6 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
LABEL_21:
                __break(1u);
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }
            }

            sub_252E349D4();

            if (v10)
            {
              break;
            }

            ++v8;
            if (v6 == v5)
            {
              goto LABEL_25;
            }
          }

          MEMORY[0x2530AD700](v9);
          if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v7 = v12;
        }

        while (v6 != v5);
        goto LABEL_25;
      }
    }

    else
    {
      v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_6;
      }
    }

    v7 = MEMORY[0x277D84F90];
LABEL_25:

    sub_252CF2854(v7);
  }

  return result;
}

uint64_t sub_252CE7650()
{
  v64 = sub_252E36C24();
  v59 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = v54 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_252E36B34();
  v65 = *(v61 - 8);
  v1 = MEMORY[0x28223BE20](v61);
  v62 = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v58 = v54 - v3;
  v4 = sub_252E36BC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C00, &unk_252E41DD0);
  MEMORY[0x28223BE20](v8);
  v10 = v54 - v9;
  v11 = sub_252E36C44();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v60 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v54 - v15;
  sub_252E34504();
  v17 = v66;
  if (!v66)
  {
    return 0;
  }

  v18 = sub_252E34A24();

  if (v18)
  {
    v55 = v16;
    v56 = v12;
    v57 = v11;

    v20 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v19);
    sub_252929E74((v20 + 368), &v66);

    v21 = v68;
    v22 = v69;
    __swift_project_boxed_opaque_existential_1(&v66, v68);

    v23 = sub_252E34644();

    *v7 = v23;
    (*(v5 + 104))(v7, *MEMORY[0x277D5FEA8], v4);
    (*(v22 + 8))(v7, v21, v22);
    (*(v5 + 8))(v7, v4);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v54[1] = v17;
      v27 = v55;
      v26 = v56;
      v28 = v57;
      (*(v56 + 32))(v55, v10, v57);
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v29 = v60;
      (*(v26 + 16))(v60, v27, v28);
      v30 = (*(v26 + 88))(v29, v28);
      if (v30 == *MEMORY[0x277D5FEC0])
      {
        (*(v26 + 96))(v29, v28);
        v31 = v58;
        v32 = v29;
        v33 = v61;
        (*(v65 + 32))(v58, v32, v61);
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v34 = sub_252E36AD4();
        __swift_project_value_buffer(v34, qword_27F544D60);
        v66 = 0;
        v67 = 0xE000000000000000;
        sub_252E379F4();

        v66 = 0xD000000000000021;
        v67 = 0x8000000252E905C0;
        sub_252D07DD4(&qword_27F541C10, MEMORY[0x277D5FE08], MEMORY[0x277D5FE10]);
        v35 = sub_252E37D94();
        MEMORY[0x2530AD570](v35);

        sub_252CC3D90(v66, v67, 0xD000000000000077, 0x8000000252E92DE0);

        v36 = v63;
        sub_252E36B24();
        v37 = sub_252C907E8();
        (*(v59 + 8))(v36, v64);
        if (!v37)
        {

          (*(v65 + 8))(v31, v33);
          (*(v26 + 8))(v27, v28);
          return 0;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_252E3C130;
        *(v24 + 32) = v37;

        (*(v65 + 8))(v31, v33);
      }

      else
      {
        v38 = v61;
        if (v30 != *MEMORY[0x277D5FEC8])
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v51 = sub_252E36AD4();
          __swift_project_value_buffer(v51, qword_27F544D60);
          v66 = 0;
          v67 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E72E30);
          sub_252D07DD4(&qword_27F541C08, MEMORY[0x277D5FEE8], MEMORY[0x277D5FEF0]);
          v52 = sub_252E37D94();
          MEMORY[0x2530AD570](v52);

          sub_252CC4050(v66, v67, 0xD000000000000077, 0x8000000252E92DE0, 0xD000000000000023, 0x8000000252E93830, 2229);

          v53 = *(v26 + 8);
          v53(v27, v28);
          v53(v29, v28);
          return 0;
        }

        (*(v26 + 96))(v29, v28);
        v39 = *v29;
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v40 = sub_252E36AD4();
        __swift_project_value_buffer(v40, qword_27F544D60);
        v66 = 0;
        v67 = 0xE000000000000000;
        sub_252E379F4();

        v66 = 0xD000000000000021;
        v67 = 0x8000000252E90590;
        v41 = MEMORY[0x2530AD730](v39, v38);
        MEMORY[0x2530AD570](v41);

        sub_252CC3D90(v66, v67, 0xD000000000000077, 0x8000000252E92DE0);

        v66 = MEMORY[0x277D84F90];
        v42 = *(v39 + 16);
        if (v42)
        {
          v60 = *(v65 + 16);
          v43 = *(v65 + 80);
          v54[0] = v39;
          v44 = v39 + ((v43 + 32) & ~v43);
          v58 = *(v65 + 72);
          v45 = (v59 + 8);
          v65 += 16;
          v46 = (v65 - 8);
          v24 = MEMORY[0x277D84F90];
          do
          {
            v47 = v62;
            (v60)(v62, v44, v38);
            v48 = v63;
            sub_252E36B24();
            v49 = sub_252C907E8();
            (*v45)(v48, v64);
            v50 = (*v46)(v47, v38);
            if (v49)
            {
              MEMORY[0x2530AD700](v50);
              if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_252E372A4();
              }

              sub_252E372D4();
              v24 = v66;
            }

            v44 += v58;
            --v42;
          }

          while (v42);

          v26 = v56;
          v28 = v57;
          v27 = v55;
        }

        else
        {

          v24 = MEMORY[0x277D84F90];
        }
      }

      (*(v26 + 8))(v27, v28);
      return v24;
    }

    sub_25293847C(v10, &qword_27F541C00, &unk_252E41DD0);
    __swift_destroy_boxed_opaque_existential_1(&v66);
  }

  else
  {
  }

  return 0;
}

void *sub_252CE80E0()
{
  v1 = v0;
  v2 = sub_252E34E84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545540, &qword_252E5B5D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545548, &qword_252E5B5D8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  result = sub_252E34504();
  v18 = v46;
  if (!v46)
  {
    return result;
  }

  v19 = sub_252E34A14();

  v43 = v1;
  v45 = v18;
  if (v19)
  {
    sub_252E34E74();
  }

  else
  {
    (*(v3 + 56))(v16, 1, 1, v2);
  }

  (*(v3 + 104))(v14, *MEMORY[0x277D5EA28], v2);
  (*(v3 + 56))(v14, 0, 1, v2);
  v20 = *(v5 + 48);
  sub_252938414(v16, v7, &qword_27F545548, &qword_252E5B5D8);
  sub_252938414(v14, &v7[v20], &qword_27F545548, &qword_252E5B5D8);
  v21 = *(v3 + 48);
  if (v21(v7, 1, v2) == 1)
  {
    sub_25293847C(v14, &qword_27F545548, &qword_252E5B5D8);
    sub_25293847C(v16, &qword_27F545548, &qword_252E5B5D8);
    if (v21(&v7[v20], 1, v2) == 1)
    {
      sub_25293847C(v7, &qword_27F545548, &qword_252E5B5D8);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_252938414(v7, v11, &qword_27F545548, &qword_252E5B5D8);
  if (v21(&v7[v20], 1, v2) == 1)
  {
    sub_25293847C(v14, &qword_27F545548, &qword_252E5B5D8);
    sub_25293847C(v16, &qword_27F545548, &qword_252E5B5D8);
    (*(v3 + 8))(v11, v2);
LABEL_10:
    sub_25293847C(v7, &qword_27F545540, &qword_252E5B5D0);
  }

  v22 = &v7[v20];
  v23 = v44;
  (*(v3 + 32))(v44, v22, v2);
  sub_252D07DD4(&qword_27F545550, MEMORY[0x277D5EA60], MEMORY[0x277D5EA70]);
  v24 = sub_252E36EF4();
  v25 = *(v3 + 8);
  v25(v23, v2);
  sub_25293847C(v14, &qword_27F545548, &qword_252E5B5D8);
  sub_25293847C(v16, &qword_27F545548, &qword_252E5B5D8);
  v25(v11, v2);
  sub_25293847C(v7, &qword_27F545548, &qword_252E5B5D8);
  if ((v24 & 1) == 0)
  {
  }

LABEL_12:
  v26 = v43;
  v27 = *(v43 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_2529F8B34(0, *(v27 + 16) + 1, 1, v27);
    v27 = isUniquelyReferenced_nonNull_native;
  }

  v30 = *(v27 + 16);
  v29 = *(v27 + 24);
  if (v30 >= v29 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_2529F8B34((v29 > 1), v30 + 1, 1, v27);
    v27 = isUniquelyReferenced_nonNull_native;
  }

  *(v27 + 16) = v30 + 1;
  *(v27 + v30 + 32) = 2;
  *(v26 + 32) = v27;
  v31 = *(sub_252B680FC(isUniquelyReferenced_nonNull_native) + 72);

  if (v31 != 1)
  {
  }

  v33 = *(sub_252B680FC(v32) + 120);

  if (!v33)
  {
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v34 = sub_252E36AD4();
  __swift_project_value_buffer(v34, qword_27F544D90);

  v35 = sub_252E36AC4();
  v36 = sub_252E374C4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46 = v38;
    *v37 = 136315138;
    v39 = type metadata accessor for HomeFilter();
    v40 = MEMORY[0x2530AD730](v33, v39);
    v42 = sub_252BE2CE0(v40, v41, &v46);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_252917000, v35, v36, "All quantifier with disambiguation candidates: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x2530AED00](v38, -1, -1);
    MEMORY[0x2530AED00](v37, -1, -1);
  }

  *(v26 + 304) = v33;
  return result;
}