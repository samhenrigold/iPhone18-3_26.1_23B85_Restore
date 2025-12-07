double sub_252A645C4@<D0>(_OWORD *a1@<X8>)
{
  sub_252A64B88(&v4);
  v2 = v5[0];
  *a1 = v4;
  a1[1] = v2;
  result = *(v5 + 9);
  *(a1 + 25) = *(v5 + 9);
  return result;
}

uint64_t sub_252A64604(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_252A64890(&v5, &v7) & 1;
}

uint64_t sub_252A64650(uint64_t a1)
{
  sub_252A65700();

  return sub_252E36514();
}

uint64_t sub_252A6468C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A65700();

  return MEMORY[0x28213DA58](a1, a2, v4);
}

uint64_t sub_252A646D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A65700();

  return MEMORY[0x28213DA68](a1, a2, a3, v6);
}

uint64_t sub_252A6473C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A65700();

  return MEMORY[0x28213DA60](a1, a2, v4);
}

unint64_t sub_252A6478C()
{
  result = qword_27F541FA8;
  if (!qword_27F541FA8)
  {
    result = swift_getWitnessTable(byte_252E42EAC, &type metadata for PossibleValuesForAttribute, v0, v1);
    atomic_store(result, &qword_27F541FA8);
  }

  return result;
}

unint64_t sub_252A647E4()
{
  result = qword_27F541FB0;
  if (!qword_27F541FB0)
  {
    result = swift_getWitnessTable(byte_252E42EF8, &type metadata for PossibleValuesForAttribute, v0, v1);
    atomic_store(result, &qword_27F541FB0);
  }

  return result;
}

unint64_t sub_252A6483C()
{
  result = qword_27F541FB8;
  if (!qword_27F541FB8)
  {
    result = swift_getWitnessTable(byte_252E42EC8, &type metadata for PossibleValuesForAttribute, v0, v1);
    atomic_store(result, &qword_27F541FB8);
  }

  return result;
}

uint64_t sub_252A64890(uint64_t *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*(a1 + 40) > 1u)
  {
    v13 = a1[2];
    if (*(a1 + 40) == 2)
    {
      if (a2[40] != 2 || v3 != *a2)
      {
        return 0;
      }

      v14 = a1[3];
      v15 = a1[4];
      if (v13)
      {
        if ((a2[16] & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if ((a2[16] & 1) != 0 || v4 != *(a2 + 1))
        {
          return result;
        }
      }

      if (v14 == *(a2 + 3) && v15 == *(a2 + 4))
      {
        return 1;
      }
    }

    else
    {
      if (a2[40] != 3 || v3 != *a2)
      {
        return 0;
      }

      if (v4 == *(a2 + 1) && v13 == *(a2 + 2))
      {
        return 1;
      }
    }

    return sub_252E37DB4();
  }

  if (!*(a1 + 40))
  {
    if (!a2[40])
    {
      v5 = *(a2 + 1);
      v6 = *a2;
      v7 = sub_252A7D814(v3);
      v9 = v8;
      if (v7 == sub_252A7D814(v6) && v9 == v10)
      {

LABEL_30:

        return sub_252AE7D40(v4, v5);
      }

      v12 = sub_252E37DB4();

      if (v12)
      {
        goto LABEL_30;
      }
    }

    return 0;
  }

  if (a2[40] != 1)
  {
    return 0;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v16 = 0x656D75736572;
    }

    else
    {
      v16 = 0x6C65636E6163;
    }

    v17 = 0xE600000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
    v16 = 0x6573756170;
  }

  v19 = 0x656D75736572;
  if (*a2 != 1)
  {
    v19 = 0x6C65636E6163;
  }

  if (*a2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0x6573756170;
  }

  if (*a2)
  {
    v21 = 0xE600000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  if (v16 == v20 && v17 == v21)
  {

    return 1;
  }

  else
  {
    v22 = sub_252E37DB4();

    return v22 & 1;
  }
}

unint64_t sub_252A64B3C(uint64_t a1, uint64_t a2)
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

void *sub_252A64B88@<X0>(uint64_t a3@<X8>)
{
  sub_252E36584();
  __swift_project_boxed_opaque_existential_1(&v26, v28);
  v4 = sub_252E364C4();
  v6 = sub_252A81560(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(&v26);
  if (v6 <= 0x2Bu)
  {
    if (v6 != 42)
    {
      if (v6 == 43)
      {
        sub_252A6551C();
        sub_252A654C8();
        result = sub_252E365A4();
        v13 = v26;
        if (v26 != 3)
        {
          v17 = 0;
          v18 = 0;
          v16 = 0;
          v15 = 0;
          v19 = 1;
          goto LABEL_37;
        }

        if (qword_27F53F568 != -1)
        {
          swift_once();
        }

        v14 = sub_252E36AD4();
        __swift_project_value_buffer(v14, qword_27F544EE0);
        v26 = 0;
        v27 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E75140);
        sub_252E365B4();
        sub_252E37AE4();
        v9 = v26;
        v10 = v27;
        v11 = 99;
        goto LABEL_35;
      }

      goto LABEL_23;
    }

    sub_252A65570();
    sub_252A654C8();
    sub_252E365A4();
    v13 = v26;
    if (v26 == 16 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541FD8, &unk_252E42FD0), sub_252A655C4(), result = sub_252E365A4(), (v17 = v26) == 0))
    {
      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v23 = sub_252E36AD4();
      __swift_project_value_buffer(v23, qword_27F544EE0);
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E75170);
      sub_252E365B4();
      sub_252E37AE4();
      v9 = v26;
      v10 = v27;
      v11 = 90;
      goto LABEL_35;
    }

    v18 = 0;
    v16 = 0;
    v15 = 0;
    v19 = 0;
  }

  else
  {
    switch(v6)
    {
      case ',':
        sub_252A654C8();
        sub_252E365A4();
        if ((v27 & 1) != 0 || (v13 = v26, sub_252E365A4(), (v15 = v27) == 0))
        {
          if (qword_27F53F568 != -1)
          {
            swift_once();
          }

          v21 = sub_252E36AD4();
          __swift_project_value_buffer(v21, qword_27F544EE0);
          v26 = 0;
          v27 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E75100);
          sub_252E365B4();
          sub_252E37AE4();
          v9 = v26;
          v10 = v27;
          v11 = 110;
          goto LABEL_35;
        }

        v16 = v26;
        result = sub_252E365A4();
        v17 = v26;
        v18 = v27;
        v19 = 2;
        break;
      case '-':
        sub_252A654C8();
        sub_252E365A4();
        if ((v27 & 1) != 0 || (v13 = v26, result = sub_252E365A4(), (v18 = v27) == 0))
        {
          if (qword_27F53F568 != -1)
          {
            swift_once();
          }

          v22 = sub_252E36AD4();
          __swift_project_value_buffer(v22, qword_27F544EE0);
          v26 = 0;
          v27 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E750C0);
          sub_252E365B4();
          sub_252E37AE4();
          v9 = v26;
          v10 = v27;
          v11 = 122;
          goto LABEL_35;
        }

        v16 = 0;
        v15 = 0;
        v17 = v26;
        v19 = 3;
        break;
      case '<':
        if (qword_27F53F568 != -1)
        {
          swift_once();
        }

        v7 = sub_252E36AD4();
        __swift_project_value_buffer(v7, qword_27F544EE0);
        v26 = 0;
        v27 = 0xE000000000000000;
        sub_252E379F4();
        v24 = v26;
        v25 = v27;
        MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E74FD0);
        sub_252E36584();
        __swift_project_boxed_opaque_existential_1(&v26, v28);
        v8 = sub_252E364C4();
        MEMORY[0x2530AD570](v8);

        __swift_destroy_boxed_opaque_existential_1(&v26);
        v9 = v24;
        v10 = v25;
        v11 = 77;
LABEL_35:
        sub_252CC4050(v9, v10, 0xD000000000000089, 0x8000000252E75010, 0xD000000000000010, 0x8000000252E6F060, v11);
LABEL_36:

        v13 = 0;
        v17 = 0;
        v18 = 0;
        v16 = 0;
        v15 = 0;
        v19 = -1;
        break;
      default:
LABEL_23:
        if (qword_27F53F568 != -1)
        {
          swift_once();
        }

        v20 = sub_252E36AD4();
        __swift_project_value_buffer(v20, qword_27F544EE0);
        v26 = 0;
        v27 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E750A0);
        sub_252E37AE4();
        sub_252CC4050(v26, v27, 0xD000000000000089, 0x8000000252E75010, 0xD000000000000010, 0x8000000252E6F060, 128);
        goto LABEL_36;
    }
  }

LABEL_37:
  *a3 = v13;
  *(a3 + 8) = v17;
  *(a3 + 16) = v18;
  *(a3 + 24) = v16;
  *(a3 + 32) = v15;
  *(a3 + 40) = v19;
  return result;
}

unint64_t sub_252A654C8()
{
  result = qword_27F541FC0;
  if (!qword_27F541FC0)
  {
    result = swift_getWitnessTable(aMq, &type metadata for PossibleValuesForAttribute.Identifiers, v0, v1);
    atomic_store(result, &qword_27F541FC0);
  }

  return result;
}

unint64_t sub_252A6551C()
{
  result = qword_27F541FC8;
  if (!qword_27F541FC8)
  {
    result = swift_getWitnessTable(byte_252E45080, &type metadata for RobotVacuumBasicRunStateCommand, v0, v1);
    atomic_store(result, &qword_27F541FC8);
  }

  return result;
}

unint64_t sub_252A65570()
{
  result = qword_27F541FD0;
  if (!qword_27F541FD0)
  {
    result = swift_getWitnessTable(byte_252E45038, &type metadata for RobotVacuumCleanerRunState, v0, v1);
    atomic_store(result, &qword_27F541FD0);
  }

  return result;
}

unint64_t sub_252A655C4()
{
  result = qword_27F541FE0;
  if (!qword_27F541FE0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F541FD8, &unk_252E42FD0);
    v4[0] = sub_252A65648();
    result = swift_getWitnessTable(MEMORY[0x277CEB148], v3, v4);
    atomic_store(result, &qword_27F541FE0);
  }

  return result;
}

unint64_t sub_252A65648()
{
  result = qword_27F541FE8;
  if (!qword_27F541FE8)
  {
    result = swift_getWitnessTable(aI_0, &type metadata for RobotVacuumCleanerCleanMode, v0, v1);
    atomic_store(result, &qword_27F541FE8);
  }

  return result;
}

uint64_t sub_252A6569C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6 || a6 == 3 || a6 == 2)
  {
  }

  return result;
}

unint64_t sub_252A65700()
{
  result = qword_27F541FF0;
  if (!qword_27F541FF0)
  {
    result = swift_getWitnessTable(byte_252E42F90, &type metadata for PossibleValuesForAttribute, v0, v1);
    atomic_store(result, &qword_27F541FF0);
  }

  return result;
}

unint64_t sub_252A65768()
{
  result = qword_27F541FF8;
  if (!qword_27F541FF8)
  {
    result = swift_getWitnessTable(byte_252E4302C, &type metadata for PossibleValuesForAttribute.Identifiers, v0, v1);
    atomic_store(result, &qword_27F541FF8);
  }

  return result;
}

uint64_t sub_252A657C0@<X0>(char *a1@<X8>)
{
  v58 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v53 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  v11 = sub_252E36324();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - v15;
  v17 = sub_252A65F0C();
  v57 = v5;
  if (v17)
  {
    v18 = sub_252E37DB4();

    if ((v18 & 1) == 0)
    {
LABEL_12:
      if (sub_252A65F0C() == 1)
      {
      }

      else
      {
        v27 = sub_252E37DB4();

        if ((v27 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v28 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (!v28 || (v29 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue)) == 0 || (*(v29 + 32) & 1) != 0)
      {
LABEL_23:
        if (sub_252A65F0C() > 1u)
        {

          v34 = v12;
        }

        else
        {
          v33 = sub_252E37DB4();

          v34 = v12;
          if ((v33 & 1) == 0)
          {
LABEL_36:
            if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue))
            {
              return sub_252BD646C(v58);
            }

            else
            {
              return (*(v34 + 56))(v58, 1, 1, v11);
            }
          }
        }

        v35 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
        if (v35)
        {
          sub_252956C1C(v35 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v8);
          v36 = *(v34 + 48);
          if (v36(v8, 1, v11) != 1)
          {
            v37 = v56;
            v54 = *(v34 + 32);
            v55 = v34 + 32;
            v54(v56, v8, v11);
            v38 = sub_252E36304();
            v40 = v39;
            v41 = qword_27F53F2C8;

            if (v41 != -1)
            {
              swift_once();
            }

            v42 = off_27F541CF8;
            if (*(off_27F541CF8 + 2) && (v43 = sub_252A44A10(v38, v40), (v44 & 1) != 0))
            {
              v45 = v43;

              v46 = (v42[7] + v45);
            }

            else
            {
              v46 = &v60;
              v47._countAndFlagsBits = v38;
              v47._object = v40;
              StateSemantic.init(rawValue:)(v47);
            }

            v48 = v57;
            if (*v46 == 77)
            {
              v49 = *(v34 + 56);
              v49(v57, 1, 1, v11);
            }

            else
            {
              v59 = *v46;
              StateSemantic.rawValue.getter();
              sub_252E37024();

              v49 = *(v34 + 56);
              v49(v48, 0, 1, v11);
            }

            if (v36(v48, 1, v11) == 1)
            {
              sub_252BD646C(v58);
              (*(v34 + 8))(v37, v11);
              result = v36(v48, 1, v11);
              if (result != 1)
              {
                return sub_25293847C(v48, &qword_27F540298, &unk_252E3C270);
              }
            }

            else
            {
              (*(v34 + 8))(v37, v11);
              v50 = v58;
              v54(v58, v48, v11);
              return (v49)(v50, 0, 1, v11);
            }

            return result;
          }
        }

        else
        {
          (*(v34 + 56))(v8, 1, 1, v11);
        }

        sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
        goto LABEL_36;
      }

      v30 = *(v29 + 24);
      result = sub_252A481A4(v1 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
      if ((~*&v30 & 0x7FF0000000000000) != 0)
      {
        if (v30 > -9.22337204e18)
        {
          if (v30 < 9.22337204e18)
          {
            sub_252A448D0(v10, result, v31 & 1, v30);
            v32 = v12;
            if ((*(v12 + 48))(v10, 1, v11) != 1)
            {
              v51 = *(v12 + 32);
              v51(v16, v10, v11);
              v52 = v58;
              v51(v58, v16, v11);
              return (*(v32 + 56))(v52, 0, 1, v11);
            }

            sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
            goto LABEL_23;
          }

LABEL_51:
          __break(1u);
          return result;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_51;
    }
  }

  else
  {
  }

  v19 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
  v21 = sub_252A481A4(v1 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
  if (v20)
  {
    v23 = 256;
  }

  else
  {
    v23 = 0;
  }

  v24 = v58;
  v25 = v23 & 0xFFFE | v22 & 1;

  return sub_252A44790(v24, v21, v25);
}

uint64_t sub_252A65F0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
  if (!v4)
  {
    v8 = sub_252E36324();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
    return 0;
  }

  sub_252956C1C(v4 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v3);
  v5 = sub_252E36324();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
  if (v6 == 1)
  {
    return *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) != 0;
  }

  return 2;
}

uint64_t sub_252A6608C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  sub_252A657C0(&v11 - v1);
  v3 = sub_252E36324();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);
    v5 = 0;
  }

  else
  {
    v6 = sub_252E36304();
    v8 = v7;
    (*(v4 + 8))(v2, v3);
    if (v6 == 6710895 && v8 == 0xE300000000000000)
    {

      v5 = 1;
    }

    else
    {
      v5 = sub_252E37DB4();
    }
  }

  return v5 & 1;
}

uint64_t sub_252A66208()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - v4;
  sub_252A657C0(&v20 - v4);
  v6 = sub_252E36324();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(v5, 1, v6) == 1)
  {
    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  }

  else
  {
    v10 = sub_252E36304();
    v12 = v11;
    (*(v7 + 8))(v5, v6);
    if (v10 == 0x64656B636F6CLL && v12 == 0xE600000000000000)
    {
LABEL_16:

LABEL_17:
      v9 = 1;
      return v9 & 1;
    }

    v14 = sub_252E37DB4();

    if (v14)
    {
      goto LABEL_17;
    }
  }

  sub_252A657C0(v3);
  if (v8(v3, 1, v6) != 1)
  {
    v15 = sub_252E36304();
    v17 = v16;
    (*(v7 + 8))(v3, v6);
    if (v15 != 0x676E696B636F6CLL || v17 != 0xE700000000000000)
    {
      v9 = sub_252E37DB4();

      return v9 & 1;
    }

    goto LABEL_16;
  }

  sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
  v9 = 0;
  return v9 & 1;
}

uint64_t sub_252A66478()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - v4;
  sub_252A657C0(&v20 - v4);
  v6 = sub_252E36324();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(v5, 1, v6) == 1)
  {
    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  }

  else
  {
    v10 = sub_252E36304();
    v12 = v11;
    (*(v7 + 8))(v5, v6);
    if (v10 == 0x6465736F6C63 && v12 == 0xE600000000000000)
    {
LABEL_16:

LABEL_17:
      v9 = 1;
      return v9 & 1;
    }

    v14 = sub_252E37DB4();

    if (v14)
    {
      goto LABEL_17;
    }
  }

  sub_252A657C0(v3);
  if (v8(v3, 1, v6) != 1)
  {
    v15 = sub_252E36304();
    v17 = v16;
    (*(v7 + 8))(v3, v6);
    if (v15 != 0x676E69736F6C63 || v17 != 0xE700000000000000)
    {
      v9 = sub_252E37DB4();

      return v9 & 1;
    }

    goto LABEL_16;
  }

  sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
  v9 = 0;
  return v9 & 1;
}

uint64_t sub_252A666E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v36 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  sub_252A657C0(&v36 - v11);
  v13 = sub_252E36324();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    sub_25293847C(v12, &qword_27F540298, &unk_252E3C270);
  }

  else
  {
    v36 = v4;
    v37 = v0;
    v17 = sub_252E36304();
    v19 = v18;
    (*(v14 + 8))(v12, v13);
    if (v17 == 0x64656D7261 && v19 == 0xE500000000000000)
    {
      goto LABEL_29;
    }

    v21 = sub_252E37DB4();

    v4 = v36;
    v0 = v37;
    if (v21)
    {
      goto LABEL_30;
    }
  }

  sub_252A657C0(v10);
  if (v15(v10, 1, v13) == 1)
  {
    sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
  }

  else
  {
    v37 = v0;
    v22 = sub_252E36304();
    v24 = v23;
    (*(v14 + 8))(v10, v13);
    if (v22 == 0x77615F64656D7261 && v24 == 0xEA00000000007961)
    {
      goto LABEL_29;
    }

    v26 = sub_252E37DB4();

    if (v26)
    {
      goto LABEL_30;
    }
  }

  sub_252A657C0(v7);
  if (v15(v7, 1, v13) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    goto LABEL_7;
  }

  v27 = sub_252E36304();
  v29 = v28;
  (*(v14 + 8))(v7, v13);
  if (v27 == 0x74735F64656D7261 && v29 == 0xEA00000000007961)
  {
LABEL_29:

LABEL_30:
    v16 = 1;
    return v16 & 1;
  }

  v31 = sub_252E37DB4();

  if (v31)
  {
    goto LABEL_30;
  }

LABEL_7:
  sub_252A657C0(v4);
  if (v15(v4, 1, v13) != 1)
  {
    v32 = sub_252E36304();
    v34 = v33;
    (*(v14 + 8))(v4, v13);
    if (v32 != 0x696E5F64656D7261 || v34 != 0xEB00000000746867)
    {
      v16 = sub_252E37DB4();

      return v16 & 1;
    }

    goto LABEL_29;
  }

  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_252A66B38(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_252956C1C(v2 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, &v10 - v5);
  v7 = sub_252E36324();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    sub_252E37EE4();
  }

  else
  {
    sub_252E36304();
    (*(v8 + 8))(v6, v7);
    sub_252E37EE4();
    sub_252E37044();
  }

  if (!*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue))
  {
    return sub_252E37EE4();
  }

  sub_252E37EE4();
  return HomeAutomationEntityStateValue.hash(into:)(a1);
}

uint64_t sub_252A66CE4()
{
  sub_252E37EC4();
  sub_252A66B38(v1);
  return sub_252E37F14();
}

uint64_t sub_252A66D4C(uint64_t a1)
{
  sub_252E37EC4();
  sub_252A66B38(v2);
  return sub_252E37F14();
}

uint64_t sub_252A66DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v41 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v38[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v14 = MEMORY[0x28223BE20](v13);
  v43 = &v38[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v38[-v17];
  v19 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
  v20 = *(v16 + 48);
  v44 = a1;
  sub_252956C1C(a1 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, &v38[-v17]);
  v42 = a2;
  sub_252956C1C(a2 + v19, &v18[v20]);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) == 1)
  {
    if (v21(&v18[v20], 1, v4) == 1)
    {
      v40 = v7;
      sub_25293847C(v18, &qword_27F540298, &unk_252E3C270);
LABEL_11:
      v26 = *(v44 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      v27 = v42;
      v28 = *(v42 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (v26)
      {
        if (!v28)
        {
          goto LABEL_8;
        }

        v29 = _s22HomeAutomationInternal0aB16EntityStateValueC2eeoiySbAC_ACtFZ_0(v26, v28);

        if ((v29 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else if (v28)
      {
        goto LABEL_8;
      }

      v30 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType;
      v31 = *(v13 + 48);
      v32 = v43;
      sub_252956C1C(v44 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v43);
      sub_252956C1C(v27 + v30, &v32[v31]);
      if (v21(v32, 1, v4) == 1)
      {
        if (v21(&v43[v31], 1, v4) == 1)
        {
          sub_25293847C(v43, &qword_27F540298, &unk_252E3C270);
          v23 = 1;
          return v23 & 1;
        }
      }

      else
      {
        v33 = v43;
        v34 = v41;
        sub_252956C1C(v43, v41);
        if (v21(&v33[v31], 1, v4) != 1)
        {
          v35 = v43;
          v36 = v40;
          (*(v5 + 32))(v40, &v43[v31], v4);
          sub_252A67350(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
          v23 = sub_252E36EF4();
          v37 = *(v5 + 8);
          v37(v36, v4);
          v37(v34, v4);
          sub_25293847C(v35, &qword_27F540298, &unk_252E3C270);
          return v23 & 1;
        }

        (*(v5 + 8))(v34, v4);
      }

      v22 = v43;
      goto LABEL_7;
    }
  }

  else
  {
    sub_252956C1C(v18, v12);
    if (v21(&v18[v20], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v18[v20], v4);
      sub_252A67350(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
      v39 = sub_252E36EF4();
      v25 = *(v5 + 8);
      v40 = v7;
      v25();
      (v25)(v12, v4);
      sub_25293847C(v18, &qword_27F540298, &unk_252E3C270);
      if ((v39 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v12, v4);
  }

  v22 = v18;
LABEL_7:
  sub_25293847C(v22, &qword_27F540758, &unk_252E4D160);
LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_252A67350(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_252A673AC(char *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1;
  v3 = 32;
  v4 = MEMORY[0x277D84F90];
  v5 = *(a1 + 2);
  while (1)
  {
    memcpy(__dst, &v2[v3], sizeof(__dst));
    if (sub_252A13FE0())
    {
      break;
    }

    v3 += 504;
    if (!--v5)
    {
      return v4;
    }
  }

  if (qword_27F53F520 != -1)
  {
LABEL_24:
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544E08);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000042, 0x8000000252E751E0);
  v8 = MEMORY[0x2530AD730](v2, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v8);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000097, 0x8000000252E75230);

  v9 = 0;
  v10 = v2 + 32;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v2 = &v10[504 * v9];
    for (i = v9; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      memcpy(__dst, v2, sizeof(__dst));
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_23;
      }

      memcpy(v16, v2, sizeof(v16));
      sub_2529353AC(__dst, &v15);
      if (sub_252A13FE0())
      {
        break;
      }

      sub_252935408(__dst);
      v2 += 504;
      if (v9 == v1)
      {
        return v4;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA480(0, *(v4 + 16) + 1, 1);
      v4 = v17;
    }

    v14 = *(v4 + 16);
    v13 = *(v4 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_2529AA480((v13 > 1), v14 + 1, 1);
      v4 = v17;
    }

    *(v4 + 16) = v14 + 1;
    memcpy((v4 + 504 * v14 + 32), __dst, 0x1F8uLL);
  }

  while (v9 != v1);
  return v4;
}

uint64_t sub_252A67638(unint64_t *a1, unint64_t *a2, void *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_25293F638(255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252A677A8(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, void *a5)
{
  v8 = [*v5 *a3];
  sub_25293F638(0, a4, a5);
  v9 = sub_252E37264();

  return v9;
}

id sub_252A6789C()
{
  v1 = [*v0 currentUser];

  return v1;
}

id sub_252A67900()
{
  v1 = [*v0 owner];

  return v1;
}

void sub_252A6794C(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_252E32E44();
  v5 = [v3 accessoryWithSiriEndpointIdentifier_];

  *a1 = v5;
}

uint64_t sub_252A679D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v10 = *v7;
  v13[4] = a2;
  v13[5] = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2529E0210;
  v13[3] = a6;
  v11 = _Block_copy(v13);

  [v10 *a7];
  _Block_release(v11);
}

uint64_t sub_252A67AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252A58A5C;
  aBlock[3] = &block_descriptor_87;
  v9 = _Block_copy(aBlock);
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2529E0210;
  v12[3] = &block_descriptor_90;
  v10 = _Block_copy(v12);

  [v5 retrieveResultsWithReportingContext:a1 progressHandler:v9 completionHandler:v10];
  _Block_release(v10);
  _Block_release(v9);
}

id sub_252A67BEC@<X0>(void *a1@<X8>)
{
  result = [*v1 roomForEntireHome];
  *a1 = result;
  return result;
}

id sub_252A67C28(uint64_t a1)
{
  v2 = [*v1 homeAccessControlForUser_];

  return v2;
}

uint64_t sub_252A67C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_252BF09C4;
  v8[3] = &block_descriptor_84;
  v6 = _Block_copy(v8);

  [v5 addEventTriggerFromBuilder:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t sub_252A67D20(uint64_t a1)
{
  result = sub_252A67638(&qword_27F542048, &qword_2814B0210, 0x277CD1A60, MEMORY[0x277D85380]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A67D74(uint64_t a1)
{
  result = sub_252A67638(&qword_27F542050, &qword_2814B0200, 0x277CD1D88, MEMORY[0x277D85380]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A67DC8(uint64_t a1)
{
  result = sub_252A67638(&qword_27F542058, &qword_2814B01E8, 0x277CD1F50, MEMORY[0x277D85380]);
  *(a1 + 8) = result;
  return result;
}

id sub_252A67EA4@<X0>(void *a1@<X8>)
{
  result = [*v1 home];
  *a1 = result;
  return result;
}

id sub_252A67EE0@<X0>(void *a1@<X8>)
{
  result = [*v1 room];
  *a1 = result;
  return result;
}

id sub_252A68008@<X0>(void *a1@<X8>)
{
  result = [*v1 category];
  *a1 = result;
  return result;
}

id sub_252A68044()
{
  v1 = [*v0 matterNodeID];

  return v1;
}

uint64_t sub_252A6807C(uint64_t a1)
{
  result = sub_252A67638(&qword_27F542088, &qword_2814B0270, 0x277CD1650, MEMORY[0x277D85380]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A6816C(uint64_t a1)
{
  result = sub_252A67638(&qword_27F542098, &qword_27F540478, 0x277CD1D90, MEMORY[0x277D85380]);
  *(a1 + 8) = result;
  return result;
}

id sub_252A681E0@<X0>(void *a1@<X8>)
{
  result = [*v1 service];
  *a1 = result;
  return result;
}

uint64_t sub_252A6821C()
{
  v1 = [*v0 properties];
  v2 = sub_252E37264();

  return v2;
}

double sub_252A6826C@<D0>(_OWORD *a1@<X8>)
{
  if ([*v1 value])
  {
    sub_252E377F4();

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

id sub_252A682DC()
{
  v1 = [*v0 metadata];

  return v1;
}

uint64_t sub_252A68314(uint64_t a1)
{
  result = sub_252A67638(&qword_27F5420A0, &qword_27F5412E0, 0x277CD1970, MEMORY[0x277D85380]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A68388(uint64_t a1)
{
  result = sub_252A67638(&qword_27F5420A8, &qword_27F542070, 0x277CD1680, MEMORY[0x277D85380]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A68420()
{
  v1 = [*v0 actions];
  sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
  sub_252A67638(&qword_27F53FBB0, &qword_27F5412F0, 0x277CD17F8, MEMORY[0x277D85378]);
  v2 = sub_252E373A4();

  return v2;
}

uint64_t sub_252A68544(uint64_t a1)
{
  result = sub_252A67638(&qword_27F5420B8, &unk_2814B0260, 0x277CD1800, MEMORY[0x277D85380]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A68598(uint64_t a1)
{
  result = sub_252A67638(&qword_27F53FBB0, &qword_27F5412F0, 0x277CD17F8, MEMORY[0x277D85378]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A685EC(uint64_t a1)
{
  result = sub_252A67638(&qword_27F5420C0, &qword_27F540170, 0x277CD1760, MEMORY[0x277D85380]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A68640(uint64_t a1)
{
  result = sub_252A67638(&qword_27F5420C8, &qword_27F542020, 0x277CD1D68, MEMORY[0x277D85380]);
  *(a1 + 8) = result;
  return result;
}

id sub_252A686D4(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    a3 = 0;
  }

  return sub_252A68700(a1, a2, a3);
}

id sub_252A68700(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = aBlock - v9;
  sub_2529EAFDC(a1, aBlock - v9);
  v11 = sub_252E32E04();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v13 = sub_252E32D64();
    (*(v12 + 8))(v10, v11);
  }

  if (a2)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2529E0210;
    aBlock[3] = &block_descriptor_78;
    a2 = _Block_copy(aBlock);
  }

  v14 = [v4 _refreshBeforeDate_completionHandler_];
  _Block_release(a2);

  return v14;
}

id sub_252A6892C()
{
  v1 = [*v0 policy];

  return v1;
}

uint64_t sub_252A68978(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v9 = *a1;
  v10 = *v7;
  v13[4] = a2;
  v13[5] = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2529E0210;
  v13[3] = a6;
  v11 = _Block_copy(v13);

  [v10 *a7];
  _Block_release(v11);
}

uint64_t sub_252A68A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *v3;
  v11[4] = sub_252A6AF00;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_252BF09C4;
  v11[3] = &block_descriptor_72;
  v9 = _Block_copy(v11);

  [v8 addActionSetOfType:a1 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_252A68B54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_252E36F04();
  if (a4)
  {
    a4 = sub_252E36F04();
  }

  v13[4] = a5;
  v13[5] = a6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2529E0210;
  v13[3] = &block_descriptor_63;
  v11 = _Block_copy(v13);

  [v6 updateName:v10 configuredName:a4 completionHandler:v11];
  _Block_release(v11);
}

void sub_252A68C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *v3;
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_2529E0210;
    v7[3] = &block_descriptor_60;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
    v5 = *v3;
  }

  [v5 updatePolicy:a1 completionHandler:v6];
  _Block_release(v6);
}

uint64_t sub_252A68DD8@<X0>(SEL *a1@<X2>, void (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
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

uint64_t sub_252A68E90(uint64_t a1)
{
  result = sub_252A67638(&qword_27F5420D0, &qword_27F5420D8, 0x277CD1EB0, protocol conformance descriptor for HMTrigger);
  *(a1 + 8) = result;
  return result;
}

id sub_252A68F1C()
{
  v1 = [*v0 predicate];

  return v1;
}

uint64_t sub_252A68F74(uint64_t a1, uint64_t a2, SEL *a3, uint64_t (*a4)(void))
{
  v6 = [*v4 *a3];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  a4(0);
  v8 = sub_252E37264();

  return v8;
}

uint64_t sub_252A69024(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v10 = *v7;
  v13[4] = a2;
  v13[5] = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2529E0210;
  v13[3] = a6;
  v11 = _Block_copy(v13);

  [v10 *a7];
  _Block_release(v11);
}

uint64_t sub_252A690E0(uint64_t a1)
{
  result = sub_252A67638(&qword_27F5420E0, &qword_27F5420E8, 0x277CD19F8, protocol conformance descriptor for HMTrigger);
  *(a1 + 8) = result;
  return result;
}

void sub_252A69134(uint64_t a1, uint64_t a2, SEL *a3, void (*a4)(void))
{
  v6 = [*v4 *a3];
  a4();
}

id sub_252A692C0()
{
  v1 = [*v0 clientContext];

  return v1;
}

void sub_252A692F8(void *a1)
{
  [*v1 setClientContext_];
}

void (*sub_252A69340(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 clientContext];
  return sub_252A6939C;
}

void sub_252A6939C(id *a1)
{
  v1 = *a1;
  [a1[1] setClientContext_];
}

void (*sub_252A693E4())(uint64_t a1)
{
  v1 = [*v0 progressHandler];
  *(swift_allocObject() + 16) = v1;
  return sub_252A6B010;
}

void sub_252A6944C(uint64_t a1, uint64_t a2)
{
  sub_25293F638(0, &qword_27F545340, 0x277CD1D70);
  v3 = sub_252E37254();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_252A694C8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_252A58A5C;
  v6[3] = &block_descriptor_50;
  v4 = _Block_copy(v6);
  [v3 setProgressHandler_];
  _Block_release(v4);
}

uint64_t (*sub_252A69568(uint64_t **a1))()
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
  v2[4] = sub_252A695E0(v2);
  return sub_252A695DC;
}

void (*sub_252A695E0(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 progressHandler];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v5 + 48) = sub_252A6AEF8;
  *(v5 + 56) = v7;
  return sub_252A6969C;
}

void sub_252A6969C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  v2[4] = *(*a1 + 48);
  v2[5] = v4;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_252A58A5C;
  if (a2)
  {
    v2[3] = &block_descriptor_44;
    v5 = _Block_copy(v2);

    [v3 setProgressHandler_];
    _Block_release(v5);
  }

  else
  {
    v2[3] = &block_descriptor_47;
    v6 = _Block_copy(v2);

    [v3 setProgressHandler_];
    _Block_release(v6);
  }

  free(v2);
}

void (*sub_252A697BC())(uint64_t a1)
{
  v1 = [*v0 completionHandler];
  *(swift_allocObject() + 16) = v1;
  return sub_252A6B00C;
}

void sub_252A69824(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_252E32C44();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_252A69888(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2529E0210;
  v6[3] = &block_descriptor_34;
  v4 = _Block_copy(v6);
  [v3 setCompletionHandler_];
  _Block_release(v4);
}

uint64_t (*sub_252A69928(uint64_t **a1))()
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
  v2[4] = sub_252A699E4(v2);
  return sub_252A6AFD8;
}

void sub_252A6999C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_252A699E4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 completionHandler];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v5 + 48) = sub_252A6AED8;
  *(v5 + 56) = v7;
  return sub_252A69AA0;
}

void sub_252A69AA0(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  v2[4] = *(*a1 + 48);
  v2[5] = v4;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_2529E0210;
  if (a2)
  {
    v2[3] = &block_descriptor_6;
    v5 = _Block_copy(v2);

    [v3 setCompletionHandler_];
    _Block_release(v5);
  }

  else
  {
    v2[3] = &block_descriptor_31;
    v6 = _Block_copy(v2);

    [v3 setCompletionHandler_];
    _Block_release(v6);
  }

  free(v2);
}

id sub_252A69BC0()
{
  v1 = [*v0 reportContext];

  return v1;
}

void sub_252A69BF8(void *a1)
{
  [*v1 setReportContext_];
}

void (*sub_252A69C40(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 reportContext];
  return sub_252A69C9C;
}

void sub_252A69C9C(id *a1)
{
  v1 = *a1;
  [a1[1] setReportContext_];
}

id sub_252A69D00@<X0>(void *a1@<X8>)
{
  result = [*v1 actionSet];
  *a1 = result;
  return result;
}

id sub_252A69D3C()
{
  v1 = [*v0 value];

  return v1;
}

id sub_252A69D74()
{
  v1 = [*v0 error];

  return v1;
}

id sub_252A69DF0()
{
  v1 = [*v0 delegate];

  return v1;
}

id sub_252A69E28@<X0>(void *a1@<X8>)
{
  result = [*v1 settings];
  *a1 = result;
  return result;
}

uint64_t sub_252A69E64(uint64_t a1)
{
  result = sub_252A67638(&qword_27F542100, &qword_27F542108, 0x277CD1B18, protocol conformance descriptor for HMAccessoryProfile);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252A69EEC(uint64_t a1)
{
  result = sub_252A67638(&qword_27F542110, &qword_27F5420F8, 0x277CD1B28, MEMORY[0x277D85380]);
  *(a1 + 8) = result;
  return result;
}

id sub_252A69F40()
{
  v1 = [*v0 reportDomain];

  return v1;
}

uint64_t sub_252A69F98(uint64_t a1, uint64_t a2, SEL *a3, uint64_t (*a4)(void))
{
  v6 = [*v4 *a3];
  v7 = a4();

  return v7;
}

id sub_252A6A004()
{
  v1 = [*v0 minimumValue];

  return v1;
}

id sub_252A6A03C()
{
  v1 = [*v0 maximumValue];

  return v1;
}

id sub_252A6A074()
{
  v1 = [*v0 stepValue];

  return v1;
}

id sub_252A6A0AC()
{
  v1 = [*v0 maxLength];

  return v1;
}

uint64_t sub_252A6A108(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_252E36F34();

  return v6;
}

uint64_t sub_252A6A16C()
{
  v1 = [*v0 validValues];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
  v3 = sub_252E37264();

  return v3;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252A6AF00(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_252A6B014(void *a1, void (*a2)(void))
{
  v3 = v2;
  type metadata accessor for HomeAutomationUserDefaults();
  inited = swift_initStackObject();
  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_252E36F04();
  v9 = [v7 initWithSuiteName_];

  *(inited + 16) = v9;
  v10 = sub_2529AF8E4();
  LOBYTE(inited) = v11;

  if (inited)
  {
    v10 = 600;
  }

  else
  {
    if (qword_27F53F510 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544DD8);
    v13 = sub_252E36AC4();
    v14 = sub_252E374C4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v10;
      _os_log_impl(&dword_252917000, v13, v14, "Overriding initial sync timeout to %ld msec", v15, 0xCu);
      MEMORY[0x2530AED00](v15, -1, -1);
    }
  }

  v16 = sub_252B84730(a1, *(v3 + 16), *(v3 + 24), v10, 0, 15000, 0);
  a2();
}

uint64_t sub_252A6B1FC()
{
  v0 = sub_252E32E84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AsyncDefaultHandleDelegate();
  v4 = swift_allocObject();
  sub_252E32E74();
  v5 = sub_252E32E24();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  *(v4 + 16) = v5;
  *(v4 + 24) = v7;
  return v4;
}

uint64_t sub_252A6B2EC(void *a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v2 + 16), v112);

  __swift_project_boxed_opaque_existential_1(v112, v113);
  v3 = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1(v112);
  if ((v3 & 1) == 0 || !sub_252C4B5D4())
  {
    return 0;
  }

  v4 = type metadata accessor for HomeStore(0);
  v5 = static HomeStore.shared.getter(v4);
  v6 = v5[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v6 != 2 && (v6 & 1) == 0 || (v7 = [a1 filters]) == 0)
  {

    return 0;
  }

  v8 = v7;
  type metadata accessor for HomeFilter();
  v9 = sub_252E37264();

  v10 = [a1 userTask];
  v11 = HomeStore.services(matching:supporting:)(v9, v10);
  v13 = v12;

  if (v13)
  {
    v14 = v11;
    v15 = 1;
    goto LABEL_90;
  }

  v16 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
    goto LABEL_99;
  }

  v17 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_89;
  }

  do
  {
    v111 = v17;
    v18 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v17);
    sub_252929E74((v18 + 288), v112);

    v19 = v113;
    v20 = v114;
    __swift_project_boxed_opaque_existential_1(v112, v113);
    v21 = (*(v20 + 72))(v19, v20);
    v22 = __swift_destroy_boxed_opaque_existential_1(v112);
    if ((v21 & 1) == 0)
    {
      goto LABEL_32;
    }

    v23 = 0;
    v24 = v16;
    while ((v11 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x2530ADF00](v23, v11);
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_93;
      }

LABEL_16:
      v27 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v28 = [*(v25 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v29 = sub_252E36F34();
      v31 = v30;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v32 = off_27F546230;
      if (!*(off_27F546230 + 2) || (v33 = sub_252A44A10(v29, v31), (v34 & 1) == 0))
      {

LABEL_23:
        v36 = [*(v25 + v27) serviceType];
        v37 = sub_252E36F34();
        v39 = v38;

        if (v32[2])
        {
          v40 = sub_252A44A10(v37, v39);
          if (v41)
          {
            v42 = *(v32[7] + 8 * v40);

            if (v42 != 2)
            {
              goto LABEL_32;
            }

            goto LABEL_26;
          }
        }

LABEL_32:
        v43 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v22);
        sub_252929E74((v43 + 288), v112);

        v44 = v113;
        v45 = v114;
        __swift_project_boxed_opaque_existential_1(v112, v113);
        v46 = (*(v45 + 80))(v44, v45);
        v47 = __swift_destroy_boxed_opaque_existential_1(v112);
        v48 = v16;
        if (v46)
        {
          v49 = 0;
          while (1)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v50 = MEMORY[0x2530ADF00](v49, v11);
              v16 = v49 + 1;
              if (__OFADD__(v49, 1))
              {
                goto LABEL_95;
              }
            }

            else
            {
              if (v49 >= *(v48 + 16))
              {
                goto LABEL_96;
              }

              v50 = *(v11 + 8 * v49 + 32);

              v16 = v49 + 1;
              if (__OFADD__(v49, 1))
              {
                goto LABEL_95;
              }
            }

            v51 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
            v52 = [*(v50 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
            v53 = sub_252E36F34();
            v55 = v54;

            if (qword_27F53F8B8 != -1)
            {
              swift_once();
            }

            v56 = off_27F546230;
            if (*(off_27F546230 + 2) && (v57 = sub_252A44A10(v53, v55), (v58 & 1) != 0))
            {
              v59 = *(v56[7] + 8 * v57);

              if (v59 == 1)
              {

                goto LABEL_52;
              }
            }

            else
            {
            }

            v60 = [*(v50 + v51) serviceSubtype];
            if (v60)
            {
              v61 = v60;
              v62 = sub_252E36F34();
              v64 = v63;

              if (!v56[2])
              {
                goto LABEL_57;
              }

              v65 = v62;
            }

            else
            {
              v66 = [*(v50 + v51) associatedServiceType];
              if (!v66)
              {

                break;
              }

              v67 = v66;
              v68 = sub_252E36F34();
              v64 = v69;

              if (!v56[2])
              {
                goto LABEL_57;
              }

              v65 = v68;
            }

            v70 = sub_252A44A10(v65, v64);
            if ((v71 & 1) == 0)
            {
LABEL_57:

              break;
            }

            v72 = *(v56[7] + 8 * v70);

            if (v72 != 1)
            {
              break;
            }

LABEL_52:
            ++v49;
            if (v16 == v111)
            {
              goto LABEL_87;
            }
          }
        }

        v73 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v47);
        sub_252929E74((v73 + 288), v112);

        v74 = v113;
        v75 = v114;
        __swift_project_boxed_opaque_existential_1(v112, v113);
        v76 = (*(v75 + 72))(v74, v75);
        v77 = __swift_destroy_boxed_opaque_existential_1(v112);
        if ((v76 & 1) == 0)
        {
          goto LABEL_89;
        }

        v78 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v77);
        sub_252929E74((v78 + 288), v112);

        v79 = v113;
        v80 = v114;
        __swift_project_boxed_opaque_existential_1(v112, v113);
        v81 = (*(v80 + 80))(v79, v80);
        __swift_destroy_boxed_opaque_existential_1(v112);
        if ((v81 & 1) == 0)
        {
          goto LABEL_89;
        }

        v82 = 0;
        v83 = &off_279711000;
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v84 = MEMORY[0x2530ADF00](v82, v11);
            v85 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              goto LABEL_97;
            }
          }

          else
          {
            if (v82 >= *(v48 + 16))
            {
              goto LABEL_98;
            }

            v84 = *(v11 + 8 * v82 + 32);

            v85 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              goto LABEL_97;
            }
          }

          v16 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
          v86 = [*(v84 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) v83[202]];
          v87 = sub_252E36F34();
          v89 = v88;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v90 = off_27F546230;
          if (*(off_27F546230 + 2) && (v91 = sub_252A44A10(v87, v89), (v92 & 1) != 0))
          {
            v93 = *(v90[7] + 8 * v91);

            if (v93 == 1)
            {
              break;
            }
          }

          else
          {
          }

          v94 = sub_252CD94E0();
          if ((v95 & 1) == 0 && v94 == 1)
          {
            break;
          }

          v96 = [*(v84 + v16) v83[202]];
          v97 = sub_252E36F34();
          v99 = v98;

          if (v90[2] && (v100 = sub_252A44A10(v97, v99), (v101 & 1) != 0))
          {
            v102 = *(v90[7] + 8 * v100);

            v83 = &off_279711000;
            if (v102 == 6)
            {
              break;
            }
          }

          else
          {

            v83 = &off_279711000;
          }

          v103 = [*(v84 + v16) v83[202]];
          v104 = sub_252E36F34();
          v106 = v105;

          if (!v90[2] || (v107 = sub_252A44A10(v104, v106), (v108 & 1) == 0))
          {

            goto LABEL_89;
          }

          v109 = *(v90[7] + 8 * v107);

          v83 = &off_279711000;
          if (v109 != 2)
          {
            goto LABEL_89;
          }

LABEL_62:
          ++v82;
          if (v85 == v111)
          {
            goto LABEL_87;
          }
        }

        goto LABEL_62;
      }

      v35 = *(v32[7] + 8 * v33);

      if (v35 != 6)
      {
        goto LABEL_23;
      }

LABEL_26:
      ++v23;
      v24 = v16;
      if (v26 == v111)
      {
LABEL_87:
        sub_252929F10(v11, 0);
        return 1;
      }
    }

    if (v23 >= *(v24 + 16))
    {
      goto LABEL_94;
    }

    v25 = *(v11 + 8 * v23 + 32);

    v26 = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      goto LABEL_16;
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    v17 = sub_252E378C4();
  }

  while (v17);
LABEL_89:
  v14 = v11;
  v15 = 0;
LABEL_90:
  sub_252929F10(v14, v15);
  return 0;
}

uint64_t sub_252A6BBB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_55;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  result = v2;
  if (v2)
  {
    if (v2 == 1)
    {
      return 0;
    }

    else
    {
      while (1)
      {
        v4 = 0;
        v5 = a1 & 0xC000000000000001;
        do
        {
          if (v5)
          {
            v6 = MEMORY[0x2530ADF00](v4, a1);
          }

          else
          {
            if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_50;
            }

            v6 = *(a1 + 8 * v4 + 32);
          }

          v7 = v6;
          v8 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v9 = [v6 outerDeviceName];
          if (!v9 || (v9, (v10 = [v7 homeEntityName]) == 0))
          {

            return 0;
          }

          ++v4;
        }

        while (v8 != v2);
        v41 = MEMORY[0x277D84F90];
        v11 = 0;
        while (1)
        {
          if (v5)
          {
            v12 = MEMORY[0x2530ADF00](v11, a1);
          }

          else
          {
            if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_52;
            }

            v12 = *(a1 + 8 * v11 + 32);
          }

          v13 = v12;
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          v15 = [v12 outerDeviceName];
          if (v15)
          {
            v17 = v15;
            v18 = sub_252E36F34();
            v20 = v19;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = sub_2529F7A80(0, *(v41 + 2) + 1, 1, v41);
            }

            v22 = *(v41 + 2);
            v21 = *(v41 + 3);
            if (v22 >= v21 >> 1)
            {
              v41 = sub_2529F7A80((v21 > 1), v22 + 1, 1, v41);
            }

            *(v41 + 2) = v22 + 1;
            v23 = &v41[16 * v22];
            *(v23 + 4) = v18;
            *(v23 + 5) = v20;
            v16 = &off_279711000;
            if (v14 == v2)
            {
LABEL_31:
              v24 = sub_252DF88E4(v41);

              v25 = 0;
              v26 = MEMORY[0x277D84F90];
LABEL_32:
              v27 = v25;
              while (1)
              {
                if (v5)
                {
                  v28 = MEMORY[0x2530ADF00](v27, a1);
                }

                else
                {
                  if (v27 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_54;
                  }

                  v28 = *(a1 + 8 * v27 + 32);
                }

                v29 = v28;
                v25 = v27 + 1;
                if (__OFADD__(v27, 1))
                {
                  goto LABEL_53;
                }

                v30 = [v28 v16[289]];
                if (v30)
                {
                  v42 = v24;
                  v31 = v30;
                  v32 = sub_252E36F34();
                  v34 = v33;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v26 = sub_2529F7A80(0, *(v26 + 2) + 1, 1, v26);
                  }

                  v36 = *(v26 + 2);
                  v35 = *(v26 + 3);
                  if (v36 >= v35 >> 1)
                  {
                    v26 = sub_2529F7A80((v35 > 1), v36 + 1, 1, v26);
                  }

                  *(v26 + 2) = v36 + 1;
                  v37 = &v26[16 * v36];
                  *(v37 + 4) = v32;
                  *(v37 + 5) = v34;
                  v16 = &off_279711000;
                  v24 = v42;
                  if (v25 != v2)
                  {
                    goto LABEL_32;
                  }

LABEL_46:
                  v38 = sub_252DF88E4(v26);

                  v39 = *(v24 + 16);

                  if (v39 == 1)
                  {
                    v40 = *(v38 + 16);

                    return v40 > 1;
                  }

                  return 0;
                }

                ++v27;
                if (v25 == v2)
                {
                  goto LABEL_46;
                }
              }
            }

            v11 = v14;
          }

          else
          {

            ++v11;
            v16 = &off_279711000;
            if (v14 == v2)
            {
              goto LABEL_31;
            }
          }
        }

LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        result = sub_252E378C4();
        if (!result)
        {
          break;
        }

        v2 = result;
        if (sub_252E378C4() == 1)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_252A6BF88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v51 - v9;
  if (a2 == 7)
  {
    v11 = type metadata accessor for HomeStore(0);
    v12 = static HomeStore.shared.getter(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_252E3C130;
    *(v13 + 32) = a1;
    v14 = a1;
    v15 = [a3 userTask];
    v16 = HomeStore.accessories(matching:supporting:)(v13, v15);
    v18 = v17;

    if (v18)
    {
      sub_252929F10(v16, 1);
      goto LABEL_30;
    }

    v63 = v10;
    if (v16 >> 62)
    {
      v19 = sub_252E378C4();
      if (v19 < 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19 < 1)
      {
        goto LABEL_27;
      }
    }

    v60 = v16 >> 62;
    v61 = v14;
    v62 = a4;
    v68 = MEMORY[0x277D84F90];
    sub_2529AA420(0, v19, 0);
    v20 = 0;
    v21 = v68;
    v22 = v16 & 0xC000000000000001;
    do
    {
      if (v22)
      {
        v23 = MEMORY[0x2530ADF00](v20, v16);
      }

      else
      {
        v23 = *(v16 + 8 * v20 + 32);
      }

      v24 = (*(*v23 + 256))();

      v68 = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        sub_2529AA420((v25 > 1), v26 + 1, 1);
        v21 = v68;
      }

      ++v20;
      *(v21 + 16) = v27;
      *(v21 + 8 * v26 + 32) = v24;
    }

    while (v19 != v20);
    v28 = sub_252C759A0(v21);

    v29 = *(v28 + 16);

    v30 = v29 == 1;
    v31 = v61;
    a4 = v62;
    if (!v30)
    {
      goto LABEL_27;
    }

    if (!v60)
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

LABEL_19:
      if (v22)
      {
        v32 = MEMORY[0x2530ADF00](0, v16);
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_35;
        }

        v32 = *(v16 + 32);
      }

      v22 = v63;
      sub_252929F10(v16, 0);
      (*(*v32 + 456))(&v68, v31, a3);
      v27 = v69;
      if (!v69)
      {

        goto LABEL_30;
      }

      v61 = v32;
      v20 = v68;
      v31 = v70;
      a3 = v71;

      sub_25293847C(&v68, &qword_27F541B80, &unk_252E4E7B0);
      if (qword_27F53F488 == -1)
      {
LABEL_24:
        v33 = sub_252E36AD4();
        __swift_project_value_buffer(v33, qword_27F544C40);
        v66 = 0;
        v67 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E75480);
        MEMORY[0x2530AD570](v20, v27);
        MEMORY[0x2530AD570](0x6F436E6F6369202CLL, 0xEC0000003A726F6CLL);
        v64 = v31;
        v65 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
        sub_252E37AE4();
        v59 = v20;
        sub_252CC3D90(v66, v67, 0xD00000000000007ALL, 0x8000000252E753A0);

        v34 = type metadata accessor for DirectInvocationConfig(0);
        v35 = *(v34 - 8);
        v58 = v27;
        v36 = *(v35 + 56);
        v36(v22, 1, 1, v34);
        v37 = type metadata accessor for IconConfiguration(0);
        v55 = v37[5];
        v66 = 0;
        v67 = 0;
        sub_252E330C4();
        v53 = v37[6];
        LOBYTE(v66) = 0;
        sub_252E330C4();
        v60 = v37[9];
        LOBYTE(v66) = 48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
        sub_252E330C4();
        v54 = v31;
        v38 = v37[10];
        v66 = 0;
        v67 = 0;
        sub_252E330C4();
        v56 = v37[11];
        v66 = 0;
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
        sub_252E330C4();
        v39 = v37[12];
        v66 = 0;
        v67 = 0;
        sub_252E330C4();
        v40 = v37[13];
        v66 = 0;
        v67 = 0;
        sub_252E330C4();
        v52 = a3;
        v41 = v37[14];
        v36(a4 + v41, 1, 1, v34);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
        v43 = *(*(v42 - 8) + 8);
        v43(a4 + v38, v42);
        v66 = 0;
        v67 = 0;
        sub_252E330C4();
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
        (*(*(v44 - 8) + 8))(a4 + v53, v44);
        LOBYTE(v66) = 0;
        sub_252E330C4();
        v45 = v63;
        sub_2529D032C(v63, a4 + v41, &qword_27F540068, &qword_252E3BC90);
        v66 = v59;
        v67 = v58;
        sub_252E330C4();
        v43(a4 + v55, v42);
        v66 = v54;
        v67 = v52;
        sub_252E330C4();
        v43(a4 + v39, v42);
        v66 = 0;
        v67 = 0;
        sub_252E330C4();
        v43(a4 + v40, v42);
        v66 = 0;
        v67 = 0;
        sub_252E330C4();
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
        (*(*(v46 - 8) + 8))(a4 + v56, v46);
        v66 = 0;
        sub_252E330C4();
        LOBYTE(v66) = 2;
        sub_252E330C4();
        LOBYTE(v66) = 2;
        sub_252E330C4();
        LOBYTE(v66) = 48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
        sub_252E330F4();

        sub_25293847C(v45, &qword_27F540068, &qword_252E3BC90);
        return (*(*(v37 - 1) + 56))(a4, 0, 1, v37);
      }

LABEL_35:
      swift_once();
      goto LABEL_24;
    }

    if (sub_252E378C4())
    {
      goto LABEL_19;
    }

LABEL_27:
    sub_252929F10(v16, 0);
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v48 = sub_252E36AD4();
    __swift_project_value_buffer(v48, qword_27F544C40);
    sub_252CC3D90(0xD000000000000053, 0x8000000252E75420, 0xD00000000000007ALL, 0x8000000252E753A0);
  }

LABEL_30:
  v49 = type metadata accessor for IconConfiguration(0);
  v50 = *(*(v49 - 8) + 56);

  return v50(a4, 1, 1, v49);
}

uint64_t sub_252A6C93C(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_252934738(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_252A6C9A8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_252A6C9A8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_252E37D74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401E8, &unk_252E3C010);
        v5 = sub_252E372B4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_252A6CB94(v7, v8, a1, v4);
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
    return sub_252A6CAB0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_252A6CAB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_252E37DB4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      result = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_252A6CB94(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_252934564(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_252A6D1A0((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 24 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = sub_252E37DB4();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 32);
        v17 = v16;
        do
        {
          result = v16[2];
          v19 = v17[3];
          v17 += 3;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_252E37DB4();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 0;
          v22 = 24 * v7;
          v23 = 24 * v9;
          v24 = v9;
          do
          {
            if (v24 != v7 + v21 - 1)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = v30 + v23;
              v26 = v30 + v22;
              v27 = *v25;
              v28 = *(v25 + 8);
              v29 = *(v26 - 24);
              *(v25 + 16) = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v24;
            --v21;
            v22 -= 24;
            v23 += 24;
          }

          while (v24 < v7 + v21);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252934578(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_252934578((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
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
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_252A6D1A0((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_252934564(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_2529344D8(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 24 * v7 - 24;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = (v33 + 24 * v7);
  v37 = *v36;
  v38 = v36[1];
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *v40 && v38 == *(v40 + 8);
    if (v41 || (result = sub_252E37DB4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v42 = *(v40 + 32);
    v43 = *(v40 + 16);
    v37 = *(v40 + 24);
    *(v40 + 24) = *v40;
    *(v40 + 40) = v43;
    *v40 = v37;
    *(v40 + 8) = v42;
    v38 = v42;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_252A6D1A0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (sub_252E37DB4() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (sub_252E37DB4() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_252A6D400(uint64_t a1, id a2)
{
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        v3 = [a2 homeName];
        if (v3)
        {
          goto LABEL_24;
        }

        return 0;
      case 2:
        v3 = [a2 zoneName];
        if (v3)
        {
          goto LABEL_24;
        }

        return 0;
      case 3:
        v3 = [a2 roomName];
        if (v3)
        {
          goto LABEL_24;
        }

        return 0;
    }

LABEL_19:
    v3 = [a2 homeEntityName];
    if (v3)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (a1 > 10)
  {
    if (a1 == 11)
    {
      v3 = [a2 targetArea];
      if (v3)
      {
        goto LABEL_24;
      }

      return 0;
    }

    if (a1 == 12)
    {
      v3 = [a2 targetMap];
      if (v3)
      {
        goto LABEL_24;
      }

      return 0;
    }

    goto LABEL_19;
  }

  if (a1 == 4)
  {
    v3 = [a2 groupName];
    if (v3)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (a1 != 7)
  {
    goto LABEL_19;
  }

  v3 = [a2 outerDeviceName];
  if (!v3)
  {
    v3 = [a2 homeEntityName];
    if (!v3)
    {
      return 0;
    }
  }

LABEL_24:
  v4 = v3;
  v5 = sub_252E36F34();

  return v5;
}

uint64_t sub_252A6D5AC(unsigned __int8 a1)
{
  if (a1 > 0xAu)
  {
    return 0;
  }

  else
  {
    return qword_252E43C18[a1];
  }
}

uint64_t sub_252A6D5D4(void *a1)
{
  v2 = sub_252B680FC(a1);
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    memcpy(__dst, (v3 + 504 * v4 - 472), 0x1F8uLL);
    sub_2529353AC(__dst, v22);

    __dst[35] = __dst[27];
    __dst[36] = __dst[28];
    __dst[37] = __dst[29];
    v24 = *&__dst[30];
    __dst[33] = __dst[25];
    __dst[34] = __dst[26];
    sub_2529855F8(&__dst[25], v22);
    sub_252935408(__dst);
    v5 = sub_252C5CF44();
    v6 = sub_252937BEC(&__dst[25]);
    if (v5)
    {
      goto LABEL_6;
    }

    v7 = sub_252B680FC(v6);
    swift_beginAccess();
    v8 = *(v7 + 16);
    v9 = *(v8 + 16);
    if (v9)
    {
      memcpy(v22, (v8 + 504 * v9 - 472), sizeof(v22));
      sub_2529353AC(v22, v20);

      v20[3] = *&v22[448];
      v20[4] = *&v22[464];
      v21 = *&v22[480];
      v20[0] = *&v22[400];
      v20[1] = *&v22[416];
      v20[2] = *&v22[432];
      sub_2529855F8(&v22[400], v19);
      sub_252935408(v22);
      v10 = sub_252C5DF3C();
      sub_252937BEC(&v22[400]);
      return sub_252A6D5AC(v10);
    }
  }

LABEL_6:
  v12 = *(sub_252B680FC(v6) + 77);

  if (v12)
  {
    return 7;
  }

  if (!a1)
  {
    return 0;
  }

  v13 = [a1 homeEntityName];
  if (v13 || (v13 = [a1 outerDeviceName]) != 0)
  {

    return 7;
  }

  else
  {
    v14 = [a1 roomName];
    if (v14)
    {

      return 3;
    }

    else
    {
      v15 = [a1 zoneName];
      if (v15)
      {

        return 2;
      }

      else
      {
        v16 = [a1 groupName];
        if (v16)
        {

          return 4;
        }

        else
        {
          v17 = [a1 homeName];
          if (v17)
          {

            return 1;
          }

          else
          {
            v18 = [a1 targetArea];
            if (v18)
            {

              return 11;
            }

            else
            {
              result = [a1 targetMap];
              if (result)
              {

                return 12;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_252A6D8E8(unint64_t a1)
{
  v2 = sub_252B680FC(a1);
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    memcpy(__dst, (v3 + 504 * v4 - 472), sizeof(__dst));
    sub_2529353AC(__dst, v109);

    v113 = *&__dst[432];
    v114 = *&__dst[448];
    v115 = *&__dst[464];
    v116 = *&__dst[480];
    v111 = *&__dst[400];
    v112 = *&__dst[416];
    sub_2529855F8(&__dst[400], v109);
    sub_252935408(__dst);
    v5 = sub_252C5CF44();
    result = sub_252937BEC(&__dst[400]);
    if (v5)
    {
      goto LABEL_6;
    }

    v7 = sub_252B680FC(result);
    swift_beginAccess();
    v8 = *(v7 + 16);
    v9 = *(v8 + 16);
    if (v9)
    {
      memcpy(v109, (v8 + 504 * v9 - 472), sizeof(v109));
      sub_2529353AC(v109, v107);

      v107[3] = *&v109[448];
      v107[4] = *&v109[464];
      v108 = *&v109[480];
      v107[0] = *&v109[400];
      v107[1] = *&v109[416];
      v107[2] = *&v109[432];
      sub_2529855F8(&v109[400], v106);
      sub_252935408(v109);
      v10 = sub_252C5DF3C();
      sub_252937BEC(&v109[400]);
      return sub_252A6D5AC(v10);
    }
  }

LABEL_6:
  if (a1 >> 62)
  {
    result = sub_252E378C4();
    v11 = result;
    if (!result)
    {
      return 0;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return 0;
    }
  }

  if ((a1 & 0xC000000000000001) == 0)
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      v13 = v11 - 1;
      if (!__OFSUB__(v11, 1))
      {
        if (v13 < v12)
        {
          v14 = *(a1 + 32 + 8 * v13);
          v15 = *(a1 + 32);
          v16 = v14;
          goto LABEL_13;
        }

        goto LABEL_85;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v15 = MEMORY[0x2530ADF00](0, a1);
  result = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
LABEL_86:
    __break(1u);
    return result;
  }

  v16 = MEMORY[0x2530ADF00](result, a1);
LABEL_13:
  v17 = v16;
  v18 = [v15 homeName];
  if (!v18)
  {
    goto LABEL_19;
  }

  v19 = v18;
  v20 = sub_252E36F34();
  v22 = v21;

  v23 = [v17 homeName];
  if (!v23)
  {
    goto LABEL_18;
  }

  v24 = v23;
  v25 = sub_252E36F34();
  v27 = v26;

  if (v20 == v25 && v22 == v27)
  {

LABEL_18:

    goto LABEL_19;
  }

  v48 = sub_252E37DB4();

  if ((v48 & 1) == 0)
  {

    return 1;
  }

LABEL_19:
  v28 = [v15 zoneName];
  if (!v28)
  {
    goto LABEL_25;
  }

  v29 = v28;
  v30 = sub_252E36F34();
  v32 = v31;

  v33 = [v17 zoneName];
  if (!v33)
  {
    goto LABEL_24;
  }

  v34 = v33;
  v35 = sub_252E36F34();
  v37 = v36;

  if (v30 == v35 && v32 == v37)
  {

LABEL_24:

    goto LABEL_25;
  }

  v59 = sub_252E37DB4();

  if ((v59 & 1) == 0)
  {

    return 2;
  }

LABEL_25:
  v38 = [v15 roomName];
  if (!v38)
  {
    goto LABEL_33;
  }

  v39 = v38;
  v40 = sub_252E36F34();
  v42 = v41;

  v43 = [v17 roomName];
  if (!v43)
  {
    goto LABEL_32;
  }

  v44 = v43;
  v45 = sub_252E36F34();
  v47 = v46;

  if (v40 == v45 && v42 == v47)
  {

LABEL_32:

    goto LABEL_33;
  }

  v70 = sub_252E37DB4();

  if ((v70 & 1) == 0)
  {

    return 3;
  }

LABEL_33:
  v49 = [v15 groupName];
  if (!v49)
  {
    goto LABEL_41;
  }

  v50 = v49;
  v51 = sub_252E36F34();
  v53 = v52;

  v54 = [v17 groupName];
  if (!v54)
  {
    goto LABEL_40;
  }

  v55 = v54;
  v56 = sub_252E36F34();
  v58 = v57;

  if (v51 == v56 && v53 == v58)
  {

LABEL_40:

    goto LABEL_41;
  }

  v81 = sub_252E37DB4();

  if ((v81 & 1) == 0)
  {

    return 4;
  }

LABEL_41:
  v60 = [v15 outerDeviceName];
  if (!v60)
  {
    goto LABEL_49;
  }

  v61 = v60;
  v62 = sub_252E36F34();
  v64 = v63;

  v65 = [v17 outerDeviceName];
  if (!v65)
  {
    goto LABEL_48;
  }

  v66 = v65;
  v67 = sub_252E36F34();
  v69 = v68;

  if (v62 == v67 && v64 == v69)
  {

LABEL_48:

    goto LABEL_49;
  }

  v92 = sub_252E37DB4();

  if ((v92 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_49:
  v71 = [v15 homeEntityName];
  if (!v71)
  {
    goto LABEL_57;
  }

  v72 = v71;
  v73 = sub_252E36F34();
  v75 = v74;

  v76 = [v17 homeEntityName];
  if (!v76)
  {
    goto LABEL_56;
  }

  v77 = v76;
  v78 = sub_252E36F34();
  v80 = v79;

  if (v73 == v78 && v75 == v80)
  {

LABEL_56:

    goto LABEL_57;
  }

  v103 = sub_252E37DB4();

  if ((v103 & 1) == 0)
  {
LABEL_71:

    return 7;
  }

LABEL_57:
  v82 = [v15 targetArea];
  if (!v82)
  {
    goto LABEL_65;
  }

  v83 = v82;
  v84 = sub_252E36F34();
  v86 = v85;

  v87 = [v17 targetArea];
  if (!v87)
  {
    goto LABEL_64;
  }

  v88 = v87;
  v89 = sub_252E36F34();
  v91 = v90;

  if (v84 == v89 && v86 == v91)
  {

LABEL_64:

    goto LABEL_65;
  }

  v104 = sub_252E37DB4();

  if ((v104 & 1) == 0)
  {

    return 11;
  }

LABEL_65:
  v93 = [v15 targetMap];
  if (!v93)
  {
LABEL_73:

    return 0;
  }

  v94 = v93;
  v95 = sub_252E36F34();
  v97 = v96;

  v98 = [v17 targetMap];
  if (!v98)
  {

    goto LABEL_73;
  }

  v99 = v98;
  v100 = sub_252E36F34();
  v102 = v101;

  if (v95 == v100 && v97 == v102)
  {

    return 0;
  }

  v105 = sub_252E37DB4();

  if (v105)
  {
    return 0;
  }

  return 12;
}

void sub_252A6E17C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_109;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_110:

    return;
  }

LABEL_3:
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  do
  {
    if (v4)
    {
      v5 = MEMORY[0x2530ADF00](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_100;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_99;
    }

    v8 = [v5 homeEntityName];
    if (v8)
    {
      v10 = v8;
      v9 = v6;
      v6 = v10;
LABEL_14:

      for (i = 0; ; ++i)
      {
        if (v4)
        {
          v12 = MEMORY[0x2530ADF00](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_101;
          }

          v12 = *(a1 + 8 * i + 32);
        }

        v13 = v12;
        v14 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v15 = [v12 homeEntityName];
        if (v15 || (v15 = [v13 outerDeviceName]) != 0)
        {

          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        if (v14 == v2)
        {
          return;
        }
      }

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
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      v2 = sub_252E378C4();
      if (!v2)
      {
        goto LABEL_110;
      }

      goto LABEL_3;
    }

    v9 = [v6 outerDeviceName];
    if (v9)
    {
      goto LABEL_14;
    }

    ++v3;
  }

  while (v7 != v2);
  v16 = 0;
  do
  {
    if (v4)
    {
      v17 = MEMORY[0x2530ADF00](v16, a1);
    }

    else
    {
      if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_103;
      }

      v17 = *(a1 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_102;
    }

    v20 = [v17 groupName];
    if (v20)
    {

      for (j = 0; ; ++j)
      {
        if (v4)
        {
          v22 = MEMORY[0x2530ADF00](j, a1);
        }

        else
        {
          if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_108;
          }

          v22 = *(a1 + 8 * j + 32);
        }

        v23 = v22;
        v24 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        v25 = [v22 groupName];
        if (v25)
        {

          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        if (v24 == v2)
        {
          return;
        }
      }

      goto LABEL_104;
    }

    ++v16;
  }

  while (v19 != v2);
  v26 = 0;
  while (1)
  {
    if (v4)
    {
      v27 = MEMORY[0x2530ADF00](v26, a1);
    }

    else
    {
      if (v26 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_106;
      }

      v27 = *(a1 + 8 * v26 + 32);
    }

    v28 = v27;
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_105;
    }

    v30 = [v27 roomName];
    if (v30)
    {
      break;
    }

    ++v26;
    if (v29 == v2)
    {
      v36 = 0;
      while (1)
      {
        if (v4)
        {
          v37 = MEMORY[0x2530ADF00](v36, a1);
        }

        else
        {
          if (v36 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_112;
          }

          v37 = *(a1 + 8 * v36 + 32);
        }

        v38 = v37;
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        v40 = [v37 zoneName];
        if (v40)
        {

          for (k = 0; ; ++k)
          {
            if (v4)
            {
              v42 = MEMORY[0x2530ADF00](k, a1);
            }

            else
            {
              if (k >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v42 = *(a1 + 8 * k + 32);
            }

            v43 = v42;
            v44 = k + 1;
            if (__OFADD__(k, 1))
            {
              break;
            }

            v45 = [v42 zoneName];
            if (v45)
            {

              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
            }

            else
            {
            }

            if (v44 == v2)
            {
              return;
            }
          }

          goto LABEL_113;
        }

        ++v36;
        if (v39 == v2)
        {
          v46 = 0;
          while (1)
          {
            if (v4)
            {
              v47 = MEMORY[0x2530ADF00](v46, a1);
            }

            else
            {
              if (v46 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_116;
              }

              v47 = *(a1 + 8 * v46 + 32);
            }

            v48 = v47;
            v49 = v46 + 1;
            if (__OFADD__(v46, 1))
            {
              goto LABEL_115;
            }

            v50 = [v47 homeName];
            if (v50)
            {

              for (m = 0; ; ++m)
              {
                if (v4)
                {
                  v52 = MEMORY[0x2530ADF00](m, a1);
                }

                else
                {
                  if (m >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_119;
                  }

                  v52 = *(a1 + 8 * m + 32);
                }

                v53 = v52;
                v54 = m + 1;
                if (__OFADD__(m, 1))
                {
                  break;
                }

                v55 = [v52 homeName];
                if (v55)
                {

                  sub_252E37A94();
                  sub_252E37AC4();
                  sub_252E37AD4();
                  sub_252E37AA4();
                }

                else
                {
                }

                if (v54 == v2)
                {
                  return;
                }
              }

              goto LABEL_117;
            }

            ++v46;
            if (v49 == v2)
            {
              goto LABEL_110;
            }
          }
        }
      }

      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }
  }

  v31 = 0;
  while (2)
  {
    if (v4)
    {
      v32 = MEMORY[0x2530ADF00](v31, a1);
      goto LABEL_58;
    }

    if (v31 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v32 = *(a1 + 8 * v31 + 32);
LABEL_58:
      v33 = v32;
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_107;
      }

      v35 = [v32 roomName];
      if (v35)
      {

        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v31;
      if (v34 == v2)
      {
        return;
      }

      continue;
    }

    break;
  }

LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
}

void *sub_252A6E87C(unint64_t a1)
{
  v2 = sub_252A6D8E8(a1);
  if (sub_252A6BBB4(a1))
  {
    v3 = 10;
  }

  else
  {
    v3 = v2;
  }

  v4 = sub_252CC703C(MEMORY[0x277D84F90]);
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_6;
    }

    return v4;
  }

LABEL_30:
  v5 = sub_252E378C4();
  if (!v5)
  {
    return v4;
  }

LABEL_6:
  v6 = 0;
  while (2)
  {
    for (i = v6; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v10 = sub_252A6D400(v3, v8);
      if (v11)
      {
        break;
      }

      if (v6 == v5)
      {
        return v4;
      }
    }

    v12 = v11;
    v13 = v10;
    v35 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v13;
    v37 = v4;
    v15 = v13;
    v16 = v12;
    v17 = sub_252A44A10(v15, v12);
    v19 = v4[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      __break(1u);
      break;
    }

    v23 = v18;
    if (v4[3] < v22)
    {
      sub_252E00C54(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_252A44A10(v36, v16);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_34;
      }

LABEL_21:
      v26 = v35;
      v25 = v36;
      if (v23)
      {
LABEL_22:
        v27 = v17;

        v28 = v37[7];
        v29 = *(v28 + 8 * v27);
        *(v28 + 8 * v27) = v26;
        v4 = v37;

        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v30 = v17;
    sub_252E04028();
    v17 = v30;
    v26 = v35;
    v25 = v36;
    if (v23)
    {
      goto LABEL_22;
    }

LABEL_24:
    v4[(v17 >> 6) + 8] |= 1 << v17;
    v31 = (v4[6] + 16 * v17);
    *v31 = v25;
    v31[1] = v16;
    *(v4[7] + 8 * v17) = v26;

    v32 = v4[2];
    v21 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v21)
    {
      v4[2] = v33;
LABEL_26:
      if (v6 != v5)
      {
        continue;
      }

      return v4;
    }

    break;
  }

  __break(1u);
LABEL_34:
  result = sub_252E37E24();
  __break(1u);
  return result;
}

void *sub_252A6EACC(unint64_t a1)
{
  v1 = sub_252A6E87C(a1);
  v2 = v1;
  v3 = v1[2];
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = sub_252DFA618(v1[2], 0);
    v6 = sub_252E08D9C(&v14, v5 + 4, v3, v2);
    v7 = v14;

    sub_25291AE30(v7);
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = v4;
LABEL_5:
  v14 = v5;
  sub_252A6C93C(&v14);

  v8 = v14;
  v14 = v4;
  v9 = v8[2];
  if (v9)
  {
    v10 = 0;
    v11 = v8 + 6;
    while (v10 < v8[2])
    {
      v12 = *v11;
      MEMORY[0x2530AD700]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      ++v10;
      sub_252E372D4();
      v11 += 3;
      if (v9 == v10)
      {
        v4 = v14;
        goto LABEL_12;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_12:

    return v4;
  }

  return result;
}

void *sub_252A6EC64(unint64_t a1)
{
  v2 = sub_252A6D8E8(a1);
  if (sub_252A6BBB4(a1))
  {
    v3 = 10;
  }

  else
  {
    v3 = v2;
  }

  if (a1 >> 62)
  {
LABEL_48:
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_49:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_49;
  }

LABEL_6:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = &off_279711000;
  do
  {
    v8 = v5;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v3 > 3)
      {
        break;
      }

      if (v3 == 1)
      {
        v11 = [v9 v7[241]];
        if (v11)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      if (v3 != 2)
      {
        if (v3 == 3)
        {
          v11 = [v9 roomName];
          if (v11)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        goto LABEL_30;
      }

      v11 = [v9 zoneName];
      if (v11)
      {
        goto LABEL_40;
      }

LABEL_37:

      ++v8;
      if (v5 == v4)
      {
        goto LABEL_50;
      }
    }

    if (v3 > 10)
    {
      if (v3 != 11)
      {
        if (v3 == 12)
        {
          v11 = [v9 targetMap];
          if (v11)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        goto LABEL_30;
      }

      v11 = [v9 targetArea];
      if (v11)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (v3 == 4)
    {
      v11 = [v9 groupName];
      if (v11)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (v3 != 7)
    {
LABEL_30:
      v11 = [v9 homeEntityName];
      if (v11)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v11 = [v9 outerDeviceName];
    if (!v11)
    {
      v11 = [v10 homeEntityName];
      if (!v11)
      {
        goto LABEL_37;
      }
    }

LABEL_40:
    v12 = v11;
    v32 = sub_252E36F34();
    v14 = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2529F7A80(0, *(v6 + 2) + 1, 1, v6);
    }

    v16 = *(v6 + 2);
    v15 = *(v6 + 3);
    if (v16 >= v15 >> 1)
    {
      v6 = sub_2529F7A80((v15 > 1), v16 + 1, 1, v6);
    }

    *(v6 + 2) = v16 + 1;
    v17 = &v6[16 * v16];
    *(v17 + 4) = v32;
    *(v17 + 5) = v14;
    v7 = &off_279711000;
  }

  while (v5 != v4);
LABEL_50:
  v18 = *(v6 + 2);
  if (v18)
  {
    v19 = 0;
    v20 = (v6 + 40);
    v21 = MEMORY[0x277D84F90];
    v22 = v6;
    while (v19 < *(v6 + 2))
    {
      v24 = *(v20 - 1);
      v23 = *v20;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2529F8958(0, v21[2] + 1, 1, v21);
      }

      v26 = v21[2];
      v25 = v21[3];
      if (v26 >= v25 >> 1)
      {
        v21 = sub_2529F8958((v25 > 1), v26 + 1, 1, v21);
      }

      ++v19;
      v21[2] = v26 + 1;
      v27 = &v21[3 * v26];
      v27[4] = v3;
      v27[5] = v24;
      v27[6] = v23;
      v20 += 2;
      v6 = v22;
      if (v18 == v19)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
    goto LABEL_63;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_60:

  if (qword_27F53F488 != -1)
  {
LABEL_63:
    swift_once();
  }

  v28 = sub_252E36AD4();
  __swift_project_value_buffer(v28, qword_27F544C40);
  sub_252E379F4();

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E48, &qword_252E3F0A0);
  v30 = MEMORY[0x2530AD730](v21, v29);
  MEMORY[0x2530AD570](v30);

  sub_252CC3D90(0xD000000000000025, 0x8000000252E754B0, 0xD00000000000007ALL, 0x8000000252E753A0);

  return v21;
}

void *sub_252A6F108(unint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = &v39 - v5;
  v52 = sub_252E36324();
  v6 = *(v52 - 8);
  v7 = MEMORY[0x28223BE20](v52);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = &v39 - v9;
  result = sub_252A6EC64(a1);
  v11 = result;
  if ((a2 & 1) != 0 && result[2] >= 5uLL)
  {
    sub_2529A3834(result, (result + 4), 0, 9uLL);
    v13 = v12;

    v11 = v13;
  }

  v14 = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F90];
  v15 = v11[2];
  if (v15)
  {
    v16 = 0;
    v46 = (v6 + 56);
    v47 = (v6 + 32);
    v44 = (v6 + 8);
    v45 = (v6 + 16);
    v17 = v11 + 6;
    v42 = v15 - 1;
    v43 = v11 + 6;
    do
    {
      v50 = v14;
      v18 = &v17[3 * v16];
      v19 = v16;
      while (1)
      {
        if (v19 >= v11[2])
        {
          __break(1u);
          return result;
        }

        v20 = *(v18 - 1);
        v21 = *v18;
        v16 = v19 + 1;
        v22 = *(v18 - 2);
        swift_bridgeObjectRetain_n();
        v23 = sub_252D161E8(v22, v20, v21);
        sub_252E376D4();
        v25 = v24;

        if (v25)
        {
          break;
        }

        result = swift_bridgeObjectRelease_n();
        v18 += 3;
        ++v19;
        if (v15 == v16)
        {
          v14 = v50;
          goto LABEL_14;
        }
      }

      v26 = v48;
      sub_252E37024();

      v27 = v26;
      v28 = v52;
      (*v47)(v51, v27, v52);
      type metadata accessor for HomeAutomationTappableCommand.Builder(0);
      v29 = swift_allocObject();
      v39 = v29;
      v40 = OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_label;
      v30 = *v46;
      (*v46)(v29 + OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_label, 1, 1, v28);
      v50 = OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_command;
      v31 = v29 + OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_command;
      v32 = v28;
      v30(v31, 1, 1, v28);
      v41 = v30;
      v33 = v49;
      sub_252E37024();

      v30(v33, 0, 1, v32);
      v35 = v39;
      v34 = v40;
      swift_beginAccess();
      sub_2529D032C(v33, v35 + v34, &qword_27F540298, &unk_252E3C270);
      swift_endAccess();
      sub_25293847C(v33, &qword_27F540298, &unk_252E3C270);
      v36 = v52;
      (*v45)(v33, v51, v52);
      v41(v33, 0, 1, v36);
      v37 = v50;
      swift_beginAccess();
      sub_2529D032C(v33, v35 + v37, &qword_27F540298, &unk_252E3C270);
      swift_endAccess();
      sub_25293847C(v33, &qword_27F540298, &unk_252E3C270);
      type metadata accessor for HomeAutomationTappableCommand(0);
      swift_allocObject();
      sub_252D1A938(v35);

      v38 = (*v44)(v51, v52);
      MEMORY[0x2530AD700](v38);
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v14 = v53;
      v17 = v43;
    }

    while (v42 != v19);
  }

LABEL_14:

  return v14;
}

void *sub_252A6F5D8(unint64_t a1, void *a2)
{
  v35 = a2;
  v40 = type metadata accessor for DisambiguationOption(0);
  v34 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v38 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v30 - v7;
  if (qword_27F53F488 != -1)
  {
LABEL_22:
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544C40);
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_252E379F4();

  v42 = 0xD000000000000026;
  v43 = 0x8000000252E75370;
  v9 = type metadata accessor for HomeFilter();
  v10 = MEMORY[0x2530AD730](a1, v9);
  MEMORY[0x2530AD570](v10);

  sub_252CC3D90(v42, v43, 0xD00000000000007ALL, 0x8000000252E753A0);

  v11 = sub_252A6EC64(a1);
  sub_252A6D8E8(a1);
  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_24:
    v15 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

  v12 = sub_252E378C4();
  if (!v12)
  {
    goto LABEL_24;
  }

LABEL_4:
  v13 = 0;
  v14 = v11 + 6;
  v15 = MEMORY[0x277D84F90];
  do
  {
    v41 = v15;
    v16 = &v14[3 * v13];
    v17 = v13;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x2530ADF00](v17, a1);
      }

      else
      {
        if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v18 = *(a1 + 8 * v17 + 32);
      }

      v19 = v18;
      v13 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v17 < v11[2])
      {
        break;
      }

      v16 += 3;
      ++v17;
      if (v13 == v12)
      {
        v15 = v41;
        goto LABEL_25;
      }
    }

    v33 = v14;
    v20 = *(v16 - 2);
    v36 = *(v16 - 1);
    v21 = *v16;

    v22 = v37;
    sub_252A6BF88(v19, v20, v35, v37);
    sub_252A6FA90(v22, v38);

    v32 = sub_252D161E8(v20, v36, v21);

    v23 = *(v40 + 24);
    v31 = v23;
    v24 = type metadata accessor for IconConfiguration(0);
    v25 = v39;
    (*(*(v24 - 8) + 56))(v39 + v23, 1, 1, v24);
    v26 = v36;
    *v25 = v36;
    v25[1] = v21;
    v25[2] = v26;
    v25[3] = v21;
    v36 = *(v40 + 28);
    sub_25293F638(0, &qword_27F541B88, 0x277D47438);

    sub_252E33054();
    sub_252A6FB00(v38, v25 + v31);
    v15 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_2529F8AA0(0, v15[2] + 1, 1, v15);
    }

    v28 = v15[2];
    v27 = v15[3];
    if (v28 >= v27 >> 1)
    {
      v15 = sub_2529F8AA0((v27 > 1), v28 + 1, 1, v15);
    }

    sub_25293847C(v37, &qword_27F541B50, &unk_252E47970);
    v15[2] = v28 + 1;
    sub_252A6FB70(v39, v15 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v28);
    v14 = v33;
  }

  while (v13 != v12);
LABEL_25:

  return v15;
}

uint64_t sub_252A6FA90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A6FB00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A6FB70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisambiguationOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A6FBD4(uint64_t a1, uint64_t a2)
{
  v2[155] = a2;
  v2[154] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2[156] = swift_task_alloc();
  v2[157] = swift_task_alloc();
  v2[158] = swift_task_alloc();
  v3 = sub_252E36324();
  v2[159] = v3;
  v2[160] = *(v3 - 8);
  v2[161] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A6FCE8, 0, 0);
}

uint64_t sub_252A6FCE8()
{
  v1 = sub_252A6D8E8(v0[155]);
  v0[162] = v1;
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v1);
  swift_beginAccess();
  v0[163] = *(v2 + 23);

  sub_252E37024();

  v4 = sub_252B680FC(v3);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    memcpy(v0 + 2, (v5 + 504 * v6 - 472), 0x1F8uLL);
    sub_2529353AC((v0 + 2), (v0 + 65));

    v7 = v0[63];

    sub_252935408((v0 + 2));
    v8 = *(v7 + 16);

    if (v8)
    {
      sub_252BAFC18(v0[155]);
      if (qword_27F53F2A0 != -1)
      {
        swift_once();
      }

      if (*(off_27F541CD0 + 2) && (sub_252A488EC(), (v10 & 1) != 0))
      {
        AccessoryTypeSemantic.rawValue.getter();
        sub_252E362F4();
        v11 = 0;
      }

      else
      {
        v11 = 1;
      }

      v29 = v0[155];
      v30 = *(v0[160] + 56);
      v30(v0[158], v11, 1, v0[159]);
      if (v29 >> 62)
      {
        v31 = sub_252E378C4();
      }

      else
      {
        v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v32 = *(v0[160] + 16);
      v33 = v0[161];
      v34 = v0[159];
      if (v31 == 2)
      {
        v35 = v0[157];
        v32(v35, v33, v0[159]);
        v30(v35, 0, 1, v34);
        v36 = swift_task_alloc();
        v0[164] = v36;
        *v36 = v0;
        v36[1] = sub_252A70588;
        v37 = v0[158];
        v38 = v0[157];

        return sub_252D26DDC(v38, v37);
      }

      else
      {
        v40 = v0[156];
        v32(v40, v33, v0[159]);
        v30(v40, 0, 1, v34);
        v41 = swift_task_alloc();
        v0[167] = v41;
        *v41 = v0;
        v41[1] = sub_252A70D58;
        v42 = v0[158];
        v43 = v0[156];

        return sub_252D263CC(v43, v42);
      }
    }
  }

  else
  {
  }

  v12 = v0[162];
  if (v12 == 1 || v12 == 12)
  {
    (*(v0[160] + 8))(v0[161], v0[159]);

    goto LABEL_20;
  }

  if (v12 != 7)
  {
    v44 = v0[161];
    v45 = v0[160];
    v46 = v0[159];
    v47 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v9);
    sub_252929E74((v47 + 136), (v0 + 128));

    v48 = v0[131];
    v49 = v0[132];
    v50 = __swift_project_boxed_opaque_existential_1(v0 + 128, v48);
    v51 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v50);
    sub_252929E74((v51 + 16), (v0 + 133));

    v24 = (*(v49 + 96))(0xD000000000000010, 0x8000000252E754E0, 0x736C6562614CLL, 0xE600000000000000, v0 + 133, v48, v49);
    v26 = v52;

    __swift_destroy_boxed_opaque_existential_1(v0 + 133);
    (*(v45 + 8))(v44, v46);
    if (v26)
    {
      v27 = v0[155];
      v28 = v0 + 128;
      goto LABEL_33;
    }

    v54 = v0 + 128;
    goto LABEL_36;
  }

  v13 = sub_252B288A4(v0[155]);
  if (qword_27F53F2A0 != -1)
  {
    v65 = v13;
    swift_once();
    v13 = v65;
  }

  v14 = off_27F541CD0;
  if (*(off_27F541CD0 + 2))
  {
    v13 = sub_252A488EC();
    if ((v15 & 1) != 0 && *(v14[7] + v13) != 52)
    {
      v57 = AccessoryTypeSemantic.rawValue.getter();
      v59 = v58;
      if (v57 == AccessoryTypeSemantic.rawValue.getter() && v59 == v60)
      {
      }

      else
      {
        v61 = sub_252E37DB4();

        if ((v61 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v62 = v0[161];
      v63 = v0[160];
      v64 = v0[159];

      (*(v63 + 8))(v62, v64);
LABEL_20:
      v24 = 0;
      v26 = 0;
LABEL_37:
      v27 = 0;
      v53 = 0;
      goto LABEL_38;
    }
  }

LABEL_17:
  v16 = v0[161];
  v17 = v0[160];
  v18 = v0[159];
  v19 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v13);
  sub_252929E74((v19 + 136), (v0 + 138));

  v20 = v0[141];
  v21 = v0[142];
  v22 = __swift_project_boxed_opaque_existential_1(v0 + 138, v20);
  v23 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v22);
  sub_252929E74((v23 + 16), (v0 + 143));

  v24 = (*(v21 + 96))(0x4542414C5F4C4C41, 0xE90000000000004CLL, 0x736C6562614CLL, 0xE600000000000000, v0 + 143, v20, v21);
  v26 = v25;

  __swift_destroy_boxed_opaque_existential_1(v0 + 143);
  (*(v17 + 8))(v16, v18);
  if (!v26)
  {
    v54 = v0 + 138;
LABEL_36:
    __swift_destroy_boxed_opaque_existential_1(v54);
    v24 = 0;
    goto LABEL_37;
  }

  v27 = v0[155];
  v28 = v0 + 138;
LABEL_33:
  __swift_destroy_boxed_opaque_existential_1(v28);

  v53 = 3;
LABEL_38:
  v55 = v0[154];
  *v55 = v24;
  *(v55 + 8) = v26;
  *(v55 + 16) = v24;
  *(v55 + 24) = v26;
  *(v55 + 40) = 0;
  *(v55 + 48) = 0;
  *(v55 + 32) = v27;
  *(v55 + 56) = v53;

  v56 = v0[1];

  return v56();
}

uint64_t sub_252A70588(uint64_t a1)
{
  v4 = *v2;
  v4[165] = v1;

  v5 = v4[157];
  if (v1)
  {
    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    v6 = sub_252A71460;
  }

  else
  {
    v4[166] = a1;
    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    v6 = sub_252A706F0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252A706F0()
{
  v1 = v0[166];
  v2 = [v1 dialog];

  sub_25293F638(0, &qword_27F542128, 0x277D052B0);
  v3 = sub_252E37264();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_25293847C(v0[158], &qword_27F540298, &unk_252E3C270);

    v17 = v0[162];
    if (v17 == 1 || v17 == 12)
    {
      (*(v0[160] + 8))(v0[161], v0[159]);

      goto LABEL_20;
    }

    if (v17 != 7)
    {
      v30 = v0[161];
      v31 = v0[160];
      v32 = v0[159];
      v33 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v16);
      sub_252929E74((v33 + 136), (v0 + 128));

      v34 = v0[131];
      v35 = v0[132];
      v36 = __swift_project_boxed_opaque_existential_1(v0 + 128, v34);
      v37 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v36);
      sub_252929E74((v37 + 16), (v0 + 133));

      v8 = (*(v35 + 96))(0xD000000000000010, 0x8000000252E754E0, 0x736C6562614CLL, 0xE600000000000000, v0 + 133, v34, v35);
      v10 = v38;

      __swift_destroy_boxed_opaque_existential_1(v0 + 133);
      (*(v31 + 8))(v30, v32);
      if (v10)
      {
        v14 = v0[155];
        v29 = v0 + 128;
        goto LABEL_23;
      }

      v39 = v0 + 128;
      goto LABEL_26;
    }

    v4 = sub_252B288A4(v0[155]);
    if (qword_27F53F2A0 == -1)
    {
LABEL_14:
      v18 = off_27F541CD0;
      if (!*(off_27F541CD0 + 2))
      {
        goto LABEL_17;
      }

      v4 = sub_252A488EC();
      if ((v19 & 1) == 0 || *(v18[7] + v4) == 52)
      {
        goto LABEL_17;
      }

      v43 = AccessoryTypeSemantic.rawValue.getter();
      v45 = v44;
      if (v43 == AccessoryTypeSemantic.rawValue.getter() && v45 == v46)
      {
      }

      else
      {
        v47 = sub_252E37DB4();

        if ((v47 & 1) == 0)
        {
LABEL_17:
          v20 = v0[161];
          v21 = v0[160];
          v22 = v0[159];
          v23 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v4);
          sub_252929E74((v23 + 136), (v0 + 138));

          v24 = v0[141];
          v25 = v0[142];
          v26 = __swift_project_boxed_opaque_existential_1(v0 + 138, v24);
          v27 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v26);
          sub_252929E74((v27 + 16), (v0 + 143));

          v8 = (*(v25 + 96))(0x4542414C5F4C4C41, 0xE90000000000004CLL, 0x736C6562614CLL, 0xE600000000000000, v0 + 143, v24, v25);
          v10 = v28;

          __swift_destroy_boxed_opaque_existential_1(v0 + 143);
          (*(v21 + 8))(v20, v22);
          if (v10)
          {
            v14 = v0[155];
            v29 = v0 + 138;
LABEL_23:
            __swift_destroy_boxed_opaque_existential_1(v29);

            v15 = 3;
            goto LABEL_28;
          }

          v39 = v0 + 138;
LABEL_26:
          __swift_destroy_boxed_opaque_existential_1(v39);
          v8 = 0;
          goto LABEL_27;
        }
      }

      v48 = v0[161];
      v49 = v0[160];
      v50 = v0[159];

      (*(v49 + 8))(v48, v50);
LABEL_20:
      v8 = 0;
      v10 = 0;
LABEL_27:
      v14 = 0;
      v15 = 0;
      goto LABEL_28;
    }

LABEL_38:
    v51 = v4;
    swift_once();
    v4 = v51;
    goto LABEL_14;
  }

  v4 = sub_252E378C4();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2530ADF00](0, v3);
    goto LABEL_6;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_38;
  }

  v5 = *(v3 + 32);
LABEL_6:
  v6 = v5;

  v7 = [v6 fullPrint];

  v8 = sub_252E36F34();
  v10 = v9;

  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v11 = v0[160];
  v52 = v0[159];
  v53 = v0[161];
  v12 = v0[158];
  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_27F544C40);
  sub_252E379F4();

  MEMORY[0x2530AD570](v8, v10);
  sub_252CC3D90(0xD000000000000016, 0x8000000252E75500, 0xD00000000000007ALL, 0x8000000252E753A0);

  sub_25293847C(v12, &qword_27F540298, &unk_252E3C270);
  (*(v11 + 8))(v53, v52);

  v14 = v0[155];
  v15 = 3;
LABEL_28:
  v40 = v0[154];
  *v40 = v8;
  *(v40 + 8) = v10;
  *(v40 + 16) = v8;
  *(v40 + 24) = v10;
  *(v40 + 40) = 0;
  *(v40 + 48) = 0;
  *(v40 + 32) = v14;
  *(v40 + 56) = v15;

  v41 = v0[1];

  return v41();
}

uint64_t sub_252A70D58(uint64_t a1)
{
  v4 = *v2;
  v4[168] = v1;

  v5 = v4[156];
  if (v1)
  {
    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    v6 = sub_252A71544;
  }

  else
  {
    v4[169] = a1;
    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    v6 = sub_252A70EC0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252A70EC0()
{
  v1 = v0[169];
  v2 = [v1 dialog];

  sub_25293F638(0, &qword_27F542128, 0x277D052B0);
  v3 = sub_252E37264();

  if (v3 >> 62)
  {
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      if ((v3 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2530ADF00](0, v3);
        goto LABEL_6;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v3 + 32);
LABEL_6:
        v6 = v5;
        v7 = v0[161];
        v8 = v0[160];
        v9 = v0[159];
        v10 = v0[158];

        v11 = [v6 fullPrint];

        v12 = sub_252E36F34();
        v14 = v13;

        sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
        (*(v8 + 8))(v7, v9);

        v15 = v0[155];
        v16 = 3;
        goto LABEL_26;
      }

      __break(1u);
LABEL_36:
      v52 = v4;
      swift_once();
      v4 = v52;
      goto LABEL_12;
    }
  }

  sub_25293847C(v0[158], &qword_27F540298, &unk_252E3C270);

  v18 = v0[162];
  if (v18 == 1 || v18 == 12)
  {
    (*(v0[160] + 8))(v0[161], v0[159]);

    goto LABEL_18;
  }

  if (v18 != 7)
  {
    v31 = v0[161];
    v32 = v0[160];
    v33 = v0[159];
    v34 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v17);
    sub_252929E74((v34 + 136), (v0 + 128));

    v35 = v0[131];
    v36 = v0[132];
    v37 = __swift_project_boxed_opaque_existential_1(v0 + 128, v35);
    v38 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v37);
    sub_252929E74((v38 + 16), (v0 + 133));

    v12 = (*(v36 + 96))(0xD000000000000010, 0x8000000252E754E0, 0x736C6562614CLL, 0xE600000000000000, v0 + 133, v35, v36);
    v14 = v39;

    __swift_destroy_boxed_opaque_existential_1(v0 + 133);
    (*(v32 + 8))(v31, v33);
    if (v14)
    {
      v15 = v0[155];
      v30 = v0 + 128;
      goto LABEL_21;
    }

    v40 = v0 + 128;
    goto LABEL_24;
  }

  v4 = sub_252B288A4(v0[155]);
  if (qword_27F53F2A0 != -1)
  {
    goto LABEL_36;
  }

LABEL_12:
  v19 = off_27F541CD0;
  if (!*(off_27F541CD0 + 2))
  {
    goto LABEL_15;
  }

  v4 = sub_252A488EC();
  if ((v20 & 1) == 0 || *(v19[7] + v4) == 52)
  {
    goto LABEL_15;
  }

  v44 = AccessoryTypeSemantic.rawValue.getter();
  v46 = v45;
  if (v44 == AccessoryTypeSemantic.rawValue.getter() && v46 == v47)
  {
  }

  else
  {
    v48 = sub_252E37DB4();

    if ((v48 & 1) == 0)
    {
LABEL_15:
      v21 = v0[161];
      v22 = v0[160];
      v23 = v0[159];
      v24 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v4);
      sub_252929E74((v24 + 136), (v0 + 138));

      v25 = v0[141];
      v26 = v0[142];
      v27 = __swift_project_boxed_opaque_existential_1(v0 + 138, v25);
      v28 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v27);
      sub_252929E74((v28 + 16), (v0 + 143));

      v12 = (*(v26 + 96))(0x4542414C5F4C4C41, 0xE90000000000004CLL, 0x736C6562614CLL, 0xE600000000000000, v0 + 143, v25, v26);
      v14 = v29;

      __swift_destroy_boxed_opaque_existential_1(v0 + 143);
      (*(v22 + 8))(v21, v23);
      if (v14)
      {
        v15 = v0[155];
        v30 = v0 + 138;
LABEL_21:
        __swift_destroy_boxed_opaque_existential_1(v30);

        v16 = 3;
        goto LABEL_26;
      }

      v40 = v0 + 138;
LABEL_24:
      __swift_destroy_boxed_opaque_existential_1(v40);
      v12 = 0;
      goto LABEL_25;
    }
  }

  v49 = v0[161];
  v50 = v0[160];
  v51 = v0[159];

  (*(v50 + 8))(v49, v51);
LABEL_18:
  v12 = 0;
  v14 = 0;
LABEL_25:
  v15 = 0;
  v16 = 0;
LABEL_26:
  v41 = v0[154];
  *v41 = v12;
  *(v41 + 8) = v14;
  *(v41 + 16) = v12;
  *(v41 + 24) = v14;
  *(v41 + 40) = 0;
  *(v41 + 48) = 0;
  *(v41 + 32) = v15;
  *(v41 + 56) = v16;

  v42 = v0[1];

  return v42();
}

uint64_t sub_252A71460()
{
  v1 = v0[161];
  v2 = v0[160];
  v3 = v0[159];
  v4 = v0[158];

  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_252A71544()
{
  v1 = v0[161];
  v2 = v0[160];
  v3 = v0[159];
  v4 = v0[158];

  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_252A71628(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 128) = v3;
  *v3 = v1;
  v3[1] = sub_252A716D8;

  return sub_252A6FBD4(v1 + 16, a1);
}

uint64_t sub_252A716D8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_252A71808, 0, 0);
  }
}

uint64_t sub_252A71808()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 16);
    *(v0 + 112) = *(v0 + 32);

    sub_252A71EB8(v3, v2, v4, v5);
    v7 = sub_252AD85DC(v6, v1, v3, v2, v4, v5);
    if (v7)
    {
      v8 = v7;
      v9 = (v0 + 80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_252E3C130;
      *(v10 + 32) = v8;
    }

    else
    {
      v9 = (v0 + 96);
      v10 = MEMORY[0x277D84F90];
    }

    *v9 = *(v0 + 112);
    sub_25293847C(v9, &unk_27F541300, &qword_252E3C100);
    sub_252A71E74(v3, v2, v4, v5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_252A71970(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for DisambiguationOption(0);
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[15] = v4;
  *v4 = v1;
  v4[1] = sub_252A71AC4;

  return sub_252A6FBD4((v1 + 2), a1);
}

uint64_t sub_252A71AC4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_252A71C1C, 0, 0);
  }
}

uint64_t sub_252A71C1C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v26 = *(v0 + 56);
    v27 = *(v0 + 48);
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
    v4 = *(v0 + 104);
    v5 = *(v0 + 80);
    v22 = *(v0 + 16);
    v23 = *(v0 + 88);
    v6 = *(v0 + 40);
    v21 = *(v0 + 32);
    v7 = type metadata accessor for IconConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v8(v5, 1, 1, v7);

    v25 = v2;
    v24 = v3;
    v9 = v3;
    v10 = v22;
    sub_252D157C8(v27, v26, v2, v9);
    v11 = *(v23 + 24);
    v8(v4 + v11, 1, 1, v7);
    *v4 = v22;
    v4[1] = v1;
    if (v6)
    {
      v10 = v21;
      v12 = v6;
    }

    else
    {

      v12 = v1;
    }

    v15 = *(v0 + 104);
    v14 = *(v0 + 112);
    v16 = *(v0 + 96);
    v17 = *(v0 + 80);
    *(v15 + 16) = v10;
    *(v15 + 24) = v12;
    sub_25293F638(0, &qword_27F541B88, 0x277D47438);
    sub_252E33054();
    sub_252A6FB00(v17, v4 + v11);
    sub_252A6FB70(v15, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402A0, &unk_252E3C0D0);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_252E3C290;
    sub_252A6FB70(v14, v13 + v18);

    sub_252A71E74(v27, v26, v25, v24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v19 = *(v0 + 8);

  return v19(v13);
}

void sub_252A71E74(void *a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        if (a4 != 4)
        {
          return;
        }

        goto LABEL_5;
      }

      goto LABEL_9;
    }

LABEL_5:

    return;
  }

  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    goto LABEL_5;
  }

LABEL_9:
}

id sub_252A71EB8(id result, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        if (a4 != 4)
        {
          return result;
        }

        return result;
      }
    }

    return result;
  }

  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }

    return result;
  }
}

uint64_t static RestrictedGuestCheckUtils.makeRestrictedGuestBlockingResponse(forHome:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 184) = a1;
  v4 = swift_task_alloc();
  *(v2 + 192) = v4;
  *v4 = v2;
  v4[1] = sub_252A71FA0;

  return static RestrictedGuestCheckUtils.makeRestrictedGuestBlockingOutput(forHome:)(v2 + 56, a2);
}

uint64_t sub_252A71FA0()
{

  return MEMORY[0x2822009F8](sub_252A7209C, 0, 0);
}

uint64_t sub_252A7209C()
{
  if (*(v0 + 80))
  {
    sub_252A52D18((v0 + 56), v0 + 16);
    if (qword_27F53F300 != -1)
    {
      swift_once();
    }

    sub_252929E74(&unk_27F542160, v0 + 96);
    sub_252929E74(v0 + 16, v0 + 136);
    v1 = swift_allocObject();
    sub_252A52D18((v0 + 136), v1 + 16);
    sub_252E331C4();
    swift_allocObject();
    *(v0 + 176) = sub_252E331B4();
    sub_252E33AE4();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    sub_25293847C(v0 + 56, &qword_27F542188, &qword_252E43C80);
    if (qword_27F53F508 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544DC0);
    sub_252CC4050(0xD000000000000031, 0x8000000252E75520, 0xD000000000000080, 0x8000000252E75560, 0xD00000000000002DLL, 0x8000000252E755F0, 57);
    sub_252E33B24();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252A722CC(uint64_t a1)
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v1 + 136), qword_27F542130);
}

uint64_t sub_252A72314(uint64_t a1)
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  swift_beginAccess();
  v2 = *(v1 + 23);

  qword_27F542158 = v2;
  return result;
}

uint64_t sub_252A72370(uint64_t a1)
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v1 + 96), &unk_27F542160);
}

uint64_t static RestrictedGuestCheckUtils.makeRestrictedGuestBlockingOutput(forHome:)(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  sub_252E33944();
  v2[15] = swift_task_alloc();
  v3 = sub_252E34014();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2[19] = swift_task_alloc();
  type metadata accessor for CallToActionSnippetModel(0);
  v2[20] = swift_task_alloc();
  v4 = sub_252E36324();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A72564, 0, 0);
}

uint64_t sub_252A72564()
{
  v1 = [*(v0 + 112) name];
  sub_252E36F34();

  sub_252E37024();

  if (qword_27F53F508 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 160);
  v3 = *(v0 + 112);
  v4 = sub_252E36AD4();
  *(v0 + 192) = __swift_project_value_buffer(v4, qword_27F544DC0);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  MEMORY[0x2530AD570](0x656D614E656D6F68, 0xEA0000000000203ALL);
  sub_252E37AE4();
  sub_252CC3D90(*(v0 + 80), *(v0 + 88), 0xD000000000000080, 0x8000000252E75560);

  sub_252A73144(v3, v2);
  if (qword_27F53F2F8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  (*(v5 + 16))(v7, *(v0 + 184), v6);
  (*(v5 + 56))(v7, 0, 1, v6);
  v8 = swift_task_alloc();
  *(v0 + 200) = v8;
  *v8 = v0;
  v8[1] = sub_252A727AC;
  v9 = *(v0 + 152);

  return sub_252D2B76C(v9);
}

uint64_t sub_252A727AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {
    v5 = sub_252A72DBC;
  }

  else
  {
    v5 = sub_252A728F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A728F0()
{
  v1 = v0[26];
  sub_252E33924();
  *(swift_task_alloc() + 16) = v1;
  sub_252E33F54();

  sub_252E379F4();

  v2 = [v1 description];
  v3 = sub_252E36F34();
  v5 = v4;

  MEMORY[0x2530AD570](v3, v5);

  sub_252CC3D90(0xD000000000000017, 0x8000000252E75690, 0xD000000000000080, 0x8000000252E75560);

  if (qword_27F53F2F0 != -1)
  {
    swift_once();
  }

  v6 = v0[26];
  v7 = v0[20];
  __swift_project_boxed_opaque_existential_1(qword_27F542130, qword_27F542148);
  v8 = swift_task_alloc();
  v0[28] = v8;
  *(v8 + 16) = v6;
  v9 = swift_task_alloc();
  v0[29] = v9;
  *(v9 + 16) = v7;
  v10 = swift_task_alloc();
  v0[30] = v10;
  *v10 = v0;
  v10[1] = sub_252A72B60;
  v11 = v0[18];

  return sub_252A199A8((v0 + 2), &unk_252E43CA8, v8, &unk_252E43CB8, v9, v11, 1, 0);
}

uint64_t sub_252A72B60()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_252A72F6C;
  }

  else
  {
    v2 = sub_252A72CB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252A72CB4()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_252A52D18((v0 + 16), v7);
  sub_252A73C58(*(v0 + 160));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252A72DBC()
{
  v1 = v0[27];
  v8 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[13];
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E75620);
  swift_getErrorValue();
  v5 = sub_252E37E54();
  MEMORY[0x2530AD570](v5);

  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E75560, 0xD00000000000002BLL, 0x8000000252E75660, 42);

  (*(v3 + 8))(v8, v2);
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  sub_252A73C58(v0[20]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_252A72F6C()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 248);
  v11 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 104);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E75620);
  swift_getErrorValue();
  v8 = sub_252E37E54();
  MEMORY[0x2530AD570](v8);

  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E75560, 0xD00000000000002BLL, 0x8000000252E75660, 42);

  (*(v6 + 8))(v11, v5);
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  sub_252A73C58(*(v0 + 160));

  v9 = *(v0 + 8);

  return v9();
}

void sub_252A73144(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27F53F2F0 != -1)
  {
    swift_once();
  }

  v4 = qword_27F542148;
  v5 = unk_27F542150;
  v6 = __swift_project_boxed_opaque_existential_1(qword_27F542130, qword_27F542148);
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6);
  sub_252929E74((v7 + 16), &v47);

  v8 = (*(v5 + 96))(0xD000000000000013, 0x8000000252E758A0, 0x736C6562614CLL, 0xE600000000000000, &v47, v4, v5);
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_1(&v47);
  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0x20746361746E6F43;
  }

  if (!v10)
  {
    v10 = 0xED000072656E774FLL;
  }

  v12 = [a1 owner];
  if (v12)
  {
    v13 = v12;
    v44 = v10;
    v45 = v11;
    v14 = [v12 name];
    v15 = sub_252E36F34();
    v17 = v16;

    v18 = [v13 userID];
    if (v18)
    {
      v19 = v18;
      v20 = sub_252E36F34();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 0x4E746361746E6F63;
    v24 = inited + 32;
    v25 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xEB00000000656D61;
    *(inited + 48) = v15;
    *(inited + 56) = v17;
    v26 = sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v24, &unk_27F541F10, &unk_252E42870);
    if (v22)
    {
      v48 = v25;
      *&v47 = v20;
      *(&v47 + 1) = v22;
      sub_252A00AF4(&v47, v46);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_2529FAE1C(v46, 0xD000000000000013, 0x8000000252E75940, isUniquelyReferenced_nonNull_native);
    }

    v48 = v25;
    *&v47 = 0xD000000000000013;
    *(&v47 + 1) = 0x8000000252E758C0;
    sub_252A00AF4(&v47, v46);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_2529FAE1C(v46, 0x6C646E7542707061, 0xEB00000000644965, v28);
    v29 = v26;
    if (qword_27F53F508 != -1)
    {
      swift_once();
    }

    v30 = sub_252E36AD4();
    __swift_project_value_buffer(v30, qword_27F544DC0);
    *&v47 = 0x6174614472657375;
    *(&v47 + 1) = 0xEA0000000000203ALL;
    v31 = sub_252E36E54();
    MEMORY[0x2530AD570](v31);

    sub_252CC3D90(v47, *(&v47 + 1), 0xD000000000000080, 0x8000000252E75560);

    v32 = objc_allocWithZone(MEMORY[0x277D5C220]);
    v33 = sub_252E36F04();
    v34 = [v32 initWithIdentifier_];

    sub_252CC1408(v29);

    v35 = sub_252E36E24();

    [v34 setUserData_];

    v36 = objc_opt_self();
    v37 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v36);
    sub_252929E74((v37 + 16), &v47);

    __swift_project_boxed_opaque_existential_1(&v47, v48);
    v38 = sub_252E33904();
    v39 = [v36 runSiriKitExecutorCommandWithContext:v38 payload:v34];

    __swift_destroy_boxed_opaque_existential_1(&v47);
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v47 = 0xD000000000000012;
    *(&v47 + 1) = 0x8000000252E75920;
    v40 = [v39 description];
    v41 = sub_252E36F34();
    v43 = v42;

    MEMORY[0x2530AD570](v41, v43);

    sub_252CC3D90(v47, *(&v47 + 1), 0xD000000000000080, 0x8000000252E75560);

    *(a2 + *(type metadata accessor for CallToActionSnippetModel(0) + 24)) = 1;
    *&v47 = v45;
    *(&v47 + 1) = v44;
    sub_252E330C4();
    sub_252A75B60();
    sub_252E33054();
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277D47438]) init];
    *(a2 + *(type metadata accessor for CallToActionSnippetModel(0) + 24)) = 0;
    *&v47 = v11;
    *(&v47 + 1) = v10;
    sub_252E330C4();
    sub_252A75B60();
    sub_252E33054();
  }
}

uint64_t sub_252A73784(uint64_t a1, void *a2)
{
  sub_252E33FB4();
  v3 = [a2 catId];
  sub_252E36F34();

  return sub_252E33FA4();
}

uint64_t sub_252A737F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252A73810, 0, 0);
}

uint64_t sub_252A73810()
{
  v1 = v0[2];
  sub_252A75AFC(v0[3], v1);
  v2 = type metadata accessor for HomeAutomationSnippetModels(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_252A738CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252A738EC, 0, 0);
}

uint64_t sub_252A738EC()
{
  sub_252929E74(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

id static RestrictedGuestCheckUtils.isCurrentUserForHomeARestrictedGuest(home:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
  v2 = [v1 currentUser];
  v3 = [v1 homeAccessControlForUser_];
  v4 = [v3 isRestrictedGuest];

  return v4;
}

id static RestrictedGuestCheckUtils.isCurrentUserForHomeARestrictedGuest(home:)(void *a1)
{
  v2 = [a1 currentUser];
  v3 = [a1 homeAccessControlForUser_];
  v4 = [v3 isRestrictedGuest];

  return v4;
}

uint64_t _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO23isCurrentDeviceCommunalSbyFZ_0(uint64_t a1)
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v1 + 16), v10);

  __swift_project_boxed_opaque_existential_1(v10, v11);
  v2 = sub_252E338F4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    v3 = 1;
  }

  else
  {
    v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2);
    sub_252929E74((v4 + 16), v9);

    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = sub_252E338D4();
    __swift_destroy_boxed_opaque_existential_1(v9);
    v6 = __swift_destroy_boxed_opaque_existential_1(v10);
    if (v5)
    {
      v3 = 1;
    }

    else
    {
      v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6);
      sub_252929E74((v7 + 16), v10);

      __swift_project_boxed_opaque_existential_1(v10, v11);
      v3 = sub_252E33834();
      __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  return v3 & 1;
}

uint64_t sub_252A73BBC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25294B954;

  return sub_252A738CC(a1, v1 + 16);
}

uint64_t sub_252A73C58(uint64_t a1)
{
  v2 = type metadata accessor for CallToActionSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252A73CBC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B7BC;

  return sub_252927C20(v2);
}

uint64_t sub_252A73D50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252A737F0(a1, v4);
}

void sub_252A73DF0(uint64_t a1)
{
  sub_252A75BAC(a1, v5);
  if (v6)
  {
    v1 = *&v5[0];
    if (qword_27F53F508 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544DC0);
    MEMORY[0x2530AD570](0x203A726F727265, 0xE700000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E75560);
  }

  else
  {
    sub_252A52D18(v5, &v4);
    if (qword_27F53F508 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544DC0);
    MEMORY[0x2530AD570](0x203A74757074756FLL, 0xE800000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403B8, &qword_252E58020);
    sub_252E37AE4();
    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E75560);

    __swift_destroy_boxed_opaque_existential_1(&v4);
  }
}

unint64_t _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO29removeInaccessibleAccessories4fromSayAA9AccessoryCGAH_tFZ_0(unint64_t a1)
{
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v70 - v8;
  v10 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v7);
  sub_252929E74((v10 + 288), &v83);

  v11 = v85;
  v12 = v86;
  __swift_project_boxed_opaque_existential_1(&v83, v85);
  v13 = (*(v12 + 168))(v11, v12);
  v14 = __swift_destroy_boxed_opaque_existential_1(&v83);
  if ((v13 & 1) == 0)
  {
    if (qword_27F53F508 != -1)
    {
LABEL_70:
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_27F544DC0);
    v16 = "execute deferred to async";
    v17 = 0xD000000000000018;
    goto LABEL_8;
  }

  if (_s22HomeAutomationInternal25RestrictedGuestCheckUtilsO23isCurrentDeviceCommunalSbyFZ_0(v14))
  {
    if (qword_27F53F508 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544DC0);
    v16 = " is within access schedule";
    v17 = 0xD00000000000004ALL;
LABEL_8:
    sub_252CC3D90(v17, v16 | 0x8000000000000000, 0xD000000000000080, 0x8000000252E75560);
LABEL_9:

    return a1;
  }

  v83 = MEMORY[0x277D84F90];
  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v21 = sub_252E378C4();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = v2;
  v80 = v3;
  v81 = a1 & 0xC000000000000001;
  v74 = v6;
  v75 = (v3 + 32);
  v22 = MEMORY[0x277D84F90];
  v76 = a1;
  v77 = a1 & 0xFFFFFFFFFFFFFF8;
  v78 = v21;
  if (v21)
  {
    v23 = 0;
    while (2)
    {
      v24 = v23;
      while (1)
      {
        if (v81)
        {
          v25 = MEMORY[0x2530ADF00](v24, a1);
          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v24 >= *(v20 + 16))
          {
            goto LABEL_67;
          }

          v25 = *(a1 + 8 * v24 + 32);

          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }
        }

        v26 = [*(v25 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
        if (v26)
        {
          break;
        }

        ++v24;
        if (v23 == v21)
        {
          goto LABEL_31;
        }
      }

      v27 = v26;
      type metadata accessor for Home(0);
      v28 = swift_allocObject();
      *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v27;
      v29 = v27;
      v30 = [v29 uniqueIdentifier];
      sub_252E32E64();

      v31 = [v29 name];
      v32 = sub_252E36F34();
      v72 = v33;
      v73 = v32;

      v34 = [v29 assistantIdentifier];
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

      v39 = (*v75)(v28 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v9, v79);
      v40 = (v28 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v41 = v72;
      *v40 = v73;
      v40[1] = v41;
      *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
      v42 = (v28 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v42 = v36;
      v42[1] = v38;
      MEMORY[0x2530AD700](v39);
      v20 = v77;
      v21 = v78;
      if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
        v21 = v78;
      }

      sub_252E372D4();
      v22 = v83;
      a1 = v76;
      if (v23 != v21)
      {
        continue;
      }

      break;
    }
  }

LABEL_31:
  v43 = sub_252C758E0(v22);

  if ((v43 & 0xC000000000000001) != 0)
  {
    v44 = sub_252E378C4();
  }

  else
  {
    v44 = *(v43 + 2);
  }

  v45 = v79;
  v46 = v80;

  if (v44 <= 1)
  {
    goto LABEL_9;
  }

  v82 = MEMORY[0x277D84F90];
  if (!v78)
  {
    return MEMORY[0x277D84F90];
  }

  v47 = 0;
  v71 = "eting immediately";
  v72 = 0x8000000252E75880;
  v73 = (v46 + 8);
  v70 = MEMORY[0x277D84F90];
  v48 = &OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  do
  {
    for (i = v47; ; ++i)
    {
      if (v81)
      {
        v51 = MEMORY[0x2530ADF00](i, a1);
        v50 = v74;
        v47 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_68;
        }
      }

      else
      {
        v50 = v74;
        if (i >= *(v77 + 16))
        {
          goto LABEL_69;
        }

        v51 = *(a1 + 8 * i + 32);

        v47 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_68;
        }
      }

      v52 = [*(v51 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
      if (!v52)
      {
        break;
      }

      v53 = v52;
      type metadata accessor for Home(0);
      v54 = swift_allocObject();
      v55 = v53;
      v56 = [v55 uniqueIdentifier];
      sub_252E32E64();

      v57 = [v55 assistantIdentifier];
      if (v57)
      {
        sub_252E36F34();
        v80 = v58;
      }

      else
      {
        v80 = 0;
      }

      v59 = v48;
      (*v75)(v54 + *v48, v50, v45);
      v60 = [v55 currentUser];
      v61 = [v55 homeAccessControlForUser_];
      v62 = [v61 isRestrictedGuest];

      if (!v62)
      {
LABEL_59:
        swift_setDeallocating();
        v48 = v59;
        v45 = v79;
        (*v73)(v54 + *v59, v79);

        swift_deallocClassInstance();
        a1 = v76;
        break;
      }

      v63 = [v55 currentUser];
      v64 = [v55 homeAccessControlForUser_];
      if ([v64 isRestrictedGuest])
      {
        v65 = [v55 homeLocationStatus];
        v66 = [v64 isRestrictedGuestInAllowedPeriod];

        if (v65 == 1)
        {
          if (v66)
          {
            goto LABEL_59;
          }
        }

        else if (((v65 == 3) & v66) != 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
      }

      if (qword_27F53F508 != -1)
      {
        swift_once();
      }

      v67 = sub_252E36AD4();
      __swift_project_value_buffer(v67, qword_27F544DC0);
      v83 = 0;
      v84 = 0xE000000000000000;
      sub_252E379F4();

      v83 = 0xD000000000000016;
      v84 = v72;
      v69 = (*(*v51 + 144))(v68);
      MEMORY[0x2530AD570](v69);

      sub_252CC3D90(v83, v84, 0xD000000000000080, v71 | 0x8000000000000000);

      swift_setDeallocating();
      v48 = v59;
      v45 = v79;
      (*v73)(v54 + *v59, v79);

      swift_deallocClassInstance();
      a1 = v76;
      if (v47 == v78)
      {
        return v70;
      }
    }

    MEMORY[0x2530AD700]();
    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v70 = v82;
  }

  while (v47 != v78);
  return v70;
}

BOOL _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO02isde14AndHasAccessToA04homeSbSo6HMHomeC_tFZ_0(void *a1)
{
  v2 = [a1 currentUser];
  v3 = [a1 homeAccessControlForUser_];
  if (![v3 isRestrictedGuest])
  {

    return 0;
  }

  v4 = [a1 homeLocationStatus];
  v5 = [v3 isRestrictedGuestInAllowedPeriod];

  if (v4 == 1)
  {
    return (v5 & 1) != 0;
  }

  return ((v4 == 3) & v5) != 0;
}

char *_s22HomeAutomationInternal25RestrictedGuestCheckUtilsO12resolveHomes3forSayAA0A0CGSgSayAA0A6FilterCG_tFZ_0(unint64_t a1)
{
  v2 = sub_252E36AD4();
  v97 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v96 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_252E32E84();
  v4 = *(v93 - 8);
  v5 = MEMORY[0x28223BE20](v93);
  v94 = (&v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v92 = (&v89 - v7);
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_68;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v10 = 0;
  do
  {
    if (v9 == v10)
    {
      v14 = type metadata accessor for HomeStore(0);
      v15 = static HomeStore.shared.getter(v14);
      v16 = HomeStore.accessories(matching:supporting:)(a1, 0);
      v18 = v17;

      if (v18)
      {
        sub_252929F10(v16, 1);
        if (qword_27F53F488 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v2, qword_27F544C40);
        v19 = 132;
LABEL_20:
        sub_252CC4050(0xD000000000000026, 0x8000000252E756E0, 0xD000000000000080, 0x8000000252E75560, 0xD000000000000012, 0x8000000252E75840, v19);
        return 0;
      }

      v99 = MEMORY[0x277D84F90];
      v8 = v16 & 0xFFFFFFFFFFFFFF8;
      if (v16 >> 62)
      {
        a1 = sub_252E378C4();
        v95 = v2;
        if (a1)
        {
LABEL_23:
          v2 = 0;
          v26 = MEMORY[0x277D84F90];
          v4 += 4;
          do
          {
            v27 = v2;
            while (1)
            {
              if ((v16 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x2530ADF00](v27, v16);
                v2 = v27 + 1;
                if (__OFADD__(v27, 1))
                {
                  goto LABEL_64;
                }
              }

              else
              {
                if (v27 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_65;
                }

                v28 = *(v16 + 8 * v27 + 32);

                v2 = v27 + 1;
                if (__OFADD__(v27, 1))
                {
                  goto LABEL_64;
                }
              }

              v29 = [*(v28 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
              if (v29)
              {
                break;
              }

              ++v27;
              if (v2 == a1)
              {
                goto LABEL_61;
              }
            }

            v92 = v4;
            v30 = v29;
            type metadata accessor for Home(0);
            v89 = swift_allocObject();
            *(v89 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v30;
            v31 = v30;
            v32 = [v31 uniqueIdentifier];
            sub_252E32E64();

            v33 = [v31 name];
            v34 = sub_252E36F34();
            v90 = v35;
            v91 = v34;

            v36 = [v31 assistantIdentifier];
            if (v36)
            {
              v37 = v36;
              v38 = sub_252E36F34();
              v40 = v39;
            }

            else
            {

              v38 = 0;
              v40 = 0;
            }

            v4 = v92;
            v41 = v89;
            v42 = (*v92)(v89 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v94, v93);
            v43 = (v41 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v44 = v90;
            *v43 = v91;
            v43[1] = v44;
            *(v41 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
            v45 = (v41 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
            *v45 = v38;
            v45[1] = v40;
            MEMORY[0x2530AD700](v42);
            if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();
            v26 = v99;
          }

          while (v2 != a1);
LABEL_61:
          v65 = v16;
          goto LABEL_74;
        }
      }

      else
      {
        a1 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v95 = v2;
        if (a1)
        {
          goto LABEL_23;
        }
      }

      v26 = MEMORY[0x277D84F90];
      v65 = v16;
      goto LABEL_74;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2530ADF00](v10, a1);
    }

    else
    {
      if (v10 >= *(v8 + 16))
      {
        goto LABEL_63;
      }

      v11 = *(a1 + 8 * v10 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_63:
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
      v9 = sub_252E378C4();
      goto LABEL_3;
    }

    v13 = [v11 entityType];

    ++v10;
  }

  while (v13 != 5);
  v20 = type metadata accessor for HomeStore(0);
  v21 = static HomeStore.shared.getter(v20);
  v22 = HomeStore.scenes(matching:)(a1);
  v24 = v23;

  if (v24)
  {
    sub_252929F10(v22, 1);
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_27F544C40);
    v19 = 126;
    goto LABEL_20;
  }

  v99 = MEMORY[0x277D84F90];
  v8 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
    a1 = sub_252E378C4();
    v95 = v2;
    if (a1)
    {
      goto LABEL_43;
    }

    goto LABEL_72;
  }

  a1 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v95 = v2;
  if (!a1)
  {
LABEL_72:
    v26 = MEMORY[0x277D84F90];
    goto LABEL_73;
  }

LABEL_43:
  v2 = 0;
  v26 = MEMORY[0x277D84F90];
  v4 += 4;
  do
  {
    v46 = v2;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x2530ADF00](v46, v22);
        v2 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v46 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v47 = *(v22 + 8 * v46 + 32);

        v2 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_66;
        }
      }

      v48 = [*(v47 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) home];
      if (v48)
      {
        break;
      }

      ++v46;
      if (v2 == a1)
      {
        goto LABEL_73;
      }
    }

    v94 = v4;
    v49 = v48;
    type metadata accessor for Home(0);
    v89 = swift_allocObject();
    *(v89 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v49;
    v50 = v49;
    v51 = [v50 uniqueIdentifier];
    sub_252E32E64();

    v52 = [v50 name];
    v53 = sub_252E36F34();
    v90 = v54;
    v91 = v53;

    v55 = [v50 assistantIdentifier];
    if (v55)
    {
      v56 = v55;
      v57 = sub_252E36F34();
      v59 = v58;
    }

    else
    {

      v57 = 0;
      v59 = 0;
    }

    v4 = v94;
    v60 = v89;
    v61 = (*v94)(v89 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v92, v93);
    v62 = (v60 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v63 = v90;
    *v62 = v91;
    v62[1] = v63;
    *(v60 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
    v64 = (v60 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    *v64 = v57;
    v64[1] = v59;
    MEMORY[0x2530AD700](v61);
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v26 = v99;
  }

  while (v2 != a1);
LABEL_73:
  v65 = v22;
LABEL_74:
  sub_252929F10(v65, 0);
  v25 = sub_252DF956C(v26);

  v66 = v95;
  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v67 = __swift_project_value_buffer(v66, qword_27F544C40);
  (*(v97 + 16))(v96, v67, v66);
  v99 = 0;
  v100 = 0xE000000000000000;
  sub_252E379F4();

  v99 = 0xD000000000000010;
  v100 = 0x8000000252E75860;
  if (v25 >> 62)
  {
    v68 = sub_252E378C4();
  }

  else
  {
    v68 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v69 = MEMORY[0x277D84F90];
  if (!v68)
  {
LABEL_91:
    v85 = MEMORY[0x2530AD730](v69, MEMORY[0x277D837D0]);
    v87 = v86;

    MEMORY[0x2530AD570](v85, v87);

    v88 = v96;
    sub_252CC3D90(v99, v100, 0xD000000000000080, 0x8000000252E75560);

    (*(v97 + 8))(v88, v66);
    return v25;
  }

  v98 = MEMORY[0x277D84F90];
  result = sub_2529AA3A0(0, v68 & ~(v68 >> 63), 0);
  if ((v68 & 0x8000000000000000) == 0)
  {
    v95 = v66;
    v69 = v98;
    if ((v25 & 0xC000000000000001) != 0)
    {
      v71 = 0;
      do
      {
        v72 = MEMORY[0x2530ADF00](v71, v25);
        v74 = *(v72 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v73 = *(v72 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        swift_unknownObjectRelease();
        v98 = v69;
        v76 = *(v69 + 16);
        v75 = *(v69 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_2529AA3A0((v75 > 1), v76 + 1, 1);
          v69 = v98;
        }

        ++v71;
        *(v69 + 16) = v76 + 1;
        v77 = v69 + 16 * v76;
        *(v77 + 32) = v74;
        *(v77 + 40) = v73;
      }

      while (v68 != v71);
    }

    else
    {
      v78 = (v25 + 32);
      do
      {
        v79 = (*v78 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v81 = *v79;
        v80 = v79[1];
        v98 = v69;
        v82 = *(v69 + 16);
        v83 = *(v69 + 24);

        if (v82 >= v83 >> 1)
        {
          sub_2529AA3A0((v83 > 1), v82 + 1, 1);
          v69 = v98;
        }

        *(v69 + 16) = v82 + 1;
        v84 = v69 + 16 * v82;
        *(v84 + 32) = v81;
        *(v84 + 40) = v80;
        ++v78;
        --v68;
      }

      while (v68);
    }

    v66 = v95;
    goto LABEL_91;
  }

  __break(1u);
  return result;
}

unint64_t sub_252A7564C(unint64_t a1)
{
  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C40);
  sub_252E379F4();

  v3 = type metadata accessor for HomeFilter();
  v4 = MEMORY[0x2530AD730](a1, v3);
  MEMORY[0x2530AD570](v4);

  sub_252CC3D90(0xD000000000000024, 0x8000000252E756B0, 0xD000000000000080, 0x8000000252E75560);

  result = _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO12resolveHomes3forSayAA0A0CGSgSayAA0A6FilterCG_tFZ_0(a1);
  if (!result)
  {
    v15 = 0xD000000000000026;
    v16 = 0x8000000252E756E0;
    v17 = 146;
LABEL_23:
    sub_252CC4050(v15, v16, 0xD000000000000080, 0x8000000252E75560, 0xD000000000000018, 0x8000000252E75710, v17);
    return 3;
  }

  v6 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      if (v7 == 1)
      {
        goto LABEL_7;
      }

LABEL_21:

      sub_252CC4050(0xD000000000000042, 0x8000000252E75730, 0xD000000000000080, 0x8000000252E75560, 0xD000000000000018, 0x8000000252E75710, 156);
      return 2;
    }

    goto LABEL_22;
  }

  v20 = result;
  if (!sub_252E378C4())
  {
LABEL_22:

    v15 = 0xD000000000000034;
    v16 = 0x8000000252E75800;
    v17 = 151;
    goto LABEL_23;
  }

  v21 = sub_252E378C4();
  result = v20;
  if (v21 != 1)
  {
    goto LABEL_21;
  }

LABEL_7:
  v22 = result & 0xC000000000000001;
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = result;
    v9 = MEMORY[0x2530ADF00](0);
LABEL_10:
    v10 = OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate;
    v11 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
    v12 = [v11 currentUser];
    v13 = [v11 homeAccessControlForUser_];
    v14 = [v13 isRestrictedGuest];

    if (v14 && !_s22HomeAutomationInternal25RestrictedGuestCheckUtilsO02isde14AndHasAccessToA04homeSbSo6HMHomeC_tFZ_0(*(v9 + v10)))
    {

      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E757B0);
      v19 = sub_2529E8734();
      MEMORY[0x2530AD570](v19);

      MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E757E0);
      sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E75560);

      return 1;
    }

    sub_252E379F4();

    if (v23)
    {
      MEMORY[0x2530ADF00](0, v8);
LABEL_17:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542190, "p%\a");
      v18 = sub_252E36F94();
      MEMORY[0x2530AD570](v18);

      sub_252CC3D90(0xD000000000000028, 0x8000000252E75780, 0xD000000000000080, 0x8000000252E75560);

      return 0;
    }

    if (*(v6 + 16))
    {

      goto LABEL_17;
    }

    goto LABEL_26;
  }

  if (*(v6 + 16))
  {
    v8 = result;
    v9 = *(result + 32);

    goto LABEL_10;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_252A75AFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallToActionSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_252A75B60()
{
  result = qword_27F541B88;
  if (!qword_27F541B88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F541B88);
  }

  return result;
}

uint64_t sub_252A75BAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542198, &qword_252E53790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A75C1C(uint64_t a1)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v25 = a1 + 32;
  while (1)
  {
    v4 = *(v25 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_252E378C4();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v23 = sub_252E378C4();
      v9 = v23 + v6;
      if (__OFADD__(v23, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v30 = v6;
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_252E378C4();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_252E37A54();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v30)
    {
      goto LABEL_36;
    }

    v27 = v1;
    v28 = v2;
    v15 = v10 + 8 * v11 + 32;
    v24 = v10;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_2529E6488(&qword_27F5421A8, &qword_27F541850, &qword_252E43DC0, MEMORY[0x277D83988]);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541850, &qword_252E43DC0);
        v17 = sub_2529FBD80(v29, i, v4);
        v19 = *v18;
        (v17)(v29, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      type metadata accessor for HomeUserTaskResponse();
      swift_arrayInitWithCopy();
    }

    v1 = v27;
    v2 = v28;
    if (v30 >= 1)
    {
      v20 = *(v24 + 16);
      v21 = __OFADD__(v20, v30);
      v22 = v20 + v30;
      if (v21)
      {
        goto LABEL_37;
      }

      *(v24 + 16) = v22;
    }

LABEL_4:
    if (++v1 == v26)
    {
      return v2;
    }
  }

  v14 = v10;
  result = sub_252E378C4();
  v10 = v14;
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v30 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

id sub_252A75EFC(uint64_t a1, char a2)
{
  v2 = a1;
  if (a2)
  {
    v2 = qword_252E43DC8[a1];
  }

  v3 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v4 = sub_252E36F04();
  v5 = [v3 initWithIdentifier:0 displayString:v4];

  v6 = v5;
  [v6 setTaskType_];
  [v6 setAttribute_];
  [v6 setValue_];

  return v6;
}

void *sub_252A75FBC(void *a1)
{
  v2 = v1;
  sub_25293DEE0(__src);
  memcpy(v2 + 2, __src, 0x1F8uLL);
  v2[68] = sub_252CC7140(&unk_2864AA3E8);
  v2[65] = a1;
  v4 = a1;
  v5 = [v4 filters];
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

  v2[66] = v7;
  type metadata accessor for ServiceCollectionDecorator();
  swift_allocObject();
  v2[67] = sub_252B7DA9C(v4);
  return v2;
}

void sub_252A760A0(uint64_t a1)
{
  v2 = v1;
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v3 + 16), v82);

  __swift_project_boxed_opaque_existential_1(v82, v83);
  v4 = sub_252E338F4();
  v5 = __swift_destroy_boxed_opaque_existential_1(v82);
  if (v4)
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544C70);
    v7 = "eed accessory warmup";
    v8 = 0xD000000000000026;
LABEL_9:
    sub_252CC3D90(v8, v7 | 0x8000000000000000, 0xD000000000000075, 0x8000000252E759F0);
    return;
  }

  v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
  sub_252929E74((v9 + 16), v82);

  __swift_project_boxed_opaque_existential_1(v82, v83);
  v10 = sub_252E338C4();
  __swift_destroy_boxed_opaque_existential_1(v82);
  if (v10)
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544C70);
    v7 = "ssories for suggestions.";
    v8 = 0xD000000000000024;
    goto LABEL_9;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544C70);
  sub_252CC3D90(0xD000000000000017, 0x8000000252E75BF0, 0xD000000000000075, 0x8000000252E759F0);
  v13 = *(v2 + 520);
  if (sub_252C51B7C() & 1) != 0 || (sub_252C51B88() & 1) != 0 || (sub_252C513DC() & 1) != 0 || (sub_252C51B94() & 1) != 0 || (sub_252C51CE8())
  {
  }

  else
  {
    v50 = sub_252C4D664(5);

    if ((v50 & 1) == 0)
    {
      return;
    }
  }

  v15 = *(sub_252B680FC(v14) + 160);

  if (!v15)
  {
    v17 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v16);
    sub_252929E74((v17 + 288), v82);

    v18 = v83;
    v19 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v20 = (*(v19 + 40))(v18, v19);
    v21 = __swift_destroy_boxed_opaque_existential_1(v82);
    if (v20 & 1) != 0 && (v22 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v21), sub_252929E74((v22 + 288), v82), , v23 = v83, v24 = v84, __swift_project_boxed_opaque_existential_1(v82, v83), v25 = (*(v24 + 56))(v23, v24), v26 = __swift_destroy_boxed_opaque_existential_1(v82), (v25) && (v27 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v26), sub_252929E74((v27 + 16), v82), , __swift_project_boxed_opaque_existential_1(v82, v83), v28 = sub_252E338D4(), __swift_destroy_boxed_opaque_existential_1(v82), (v28 & 1) == 0) && (v29 = *(v2 + 520), v30 = sub_252C4DEF0(1), v29, (v30))
    {
      sub_252CC3D90(0xD000000000000028, 0x8000000252E75CB0, 0xD000000000000075, 0x8000000252E759F0);
      sub_252A76B8C(0, 1, 0, 0);
      v31 = sub_2529F7A6C(0, 1, 1, MEMORY[0x277D84F90]);
      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_2529F7A6C((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      *&v31[8 * v33 + 32] = 2;
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
    }

    v34 = [*(v2 + 520) userTask];
    if (v34)
    {
      v35 = v34;
      v36 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v34);
      sub_252929E74((v36 + 288), v82);

      v37 = v83;
      v38 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      v39 = (*(v38 + 160))(v37, v38);
      isUniquelyReferenced_nonNull_native = __swift_destroy_boxed_opaque_existential_1(v82);
      if (v39)
      {
        v41 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(isUniquelyReferenced_nonNull_native);
        sub_252929E74((v41 + 16), v82);

        __swift_project_boxed_opaque_existential_1(v82, v83);
        v42 = sub_252E338D4();
        isUniquelyReferenced_nonNull_native = __swift_destroy_boxed_opaque_existential_1(v82);
        if ((v42 & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = [v35 taskType];
          if (isUniquelyReferenced_nonNull_native == 1)
          {
            v43 = &off_279711000;
            isUniquelyReferenced_nonNull_native = [v35 attribute];
            if (isUniquelyReferenced_nonNull_native)
            {
              isUniquelyReferenced_nonNull_native = [v35 attribute];
              v44 = *(v31 + 2);
              v45 = 32;
              while (v44)
              {
                v46 = *&v31[v45];
                v45 += 8;
                --v44;
                if (v46 == isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_53;
                }
              }

              if (qword_27F53F540 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v12, qword_27F544E68);
              v51 = v35;
              v52 = sub_252E36AC4();
              v53 = sub_252E374C4();

              if (os_log_type_enabled(v52, v53))
              {
                buf = swift_slowAlloc();
                v81 = swift_slowAlloc();
                v82[0] = v81;
                *buf = 136315138;
                v54 = HomeAttributeType.description.getter([v51 attribute]);
                v56 = sub_252BE2CE0(v54, v55, v82);

                *(buf + 4) = v56;
                v43 = &off_279711000;
                _os_log_impl(&dword_252917000, v52, v53, "Will warmup accessories for corrections. \n getCustomAttribute %s", buf, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v81);
                MEMORY[0x2530AED00](v81, -1, -1);
                MEMORY[0x2530AED00](buf, -1, -1);
              }

              sub_252A76B8C([v51 v43[203]], 0, 0, 0);
              v57 = [v51 v43[203]];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                isUniquelyReferenced_nonNull_native = sub_2529F7A6C(0, *(v31 + 2) + 1, 1, v31);
                v31 = isUniquelyReferenced_nonNull_native;
              }

              v59 = *(v31 + 2);
              v58 = *(v31 + 3);
              if (v59 >= v58 >> 1)
              {
                isUniquelyReferenced_nonNull_native = sub_2529F7A6C((v58 > 1), v59 + 1, 1, v31);
                v31 = isUniquelyReferenced_nonNull_native;
              }

              *(v31 + 2) = v59 + 1;
              *&v31[8 * v59 + 32] = v57;
            }
          }
        }
      }

LABEL_53:
      v60 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(isUniquelyReferenced_nonNull_native);
      sub_252929E74((v60 + 288), v82);

      v61 = v83;
      v62 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      v63 = (*(v62 + 120))(v61, v62);
      __swift_destroy_boxed_opaque_existential_1(v82);
      if (v63 & 1) != 0 && (, v64 = sub_252B7DC00(), , (v64) && [v35 taskType] == 1)
      {
        v65 = [v35 value];
        if (!v65)
        {
          goto LABEL_74;
        }

        v66 = v65;
        v67 = [v65 BOOLValue];

        if ((v67 & 1) == 0)
        {
          goto LABEL_74;
        }

        v68 = sub_252B7F858(1);

        if (v68)
        {
          v69 = *(v31 + 2);
          v70 = 32;
          while (v69)
          {
            v71 = *&v31[v70];
            v70 += 8;
            --v69;
            if (v71 == 2)
            {
              goto LABEL_70;
            }
          }

          sub_252CC3D90(0xD00000000000004DLL, 0x8000000252E75C60, 0xD000000000000075, 0x8000000252E759F0);
          sub_252A76B8C(1, 1, 0, 0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_2529F7A6C(0, *(v31 + 2) + 1, 1, v31);
          }

          v73 = *(v31 + 2);
          v72 = *(v31 + 3);
          if (v73 >= v72 >> 1)
          {
            v31 = sub_2529F7A6C((v72 > 1), v73 + 1, 1, v31);
          }

          *(v31 + 2) = v73 + 1;
          *&v31[8 * v73 + 32] = 2;
        }

LABEL_70:

        v74 = sub_252B7F858(5);

        if ((v74 & 1) == 0)
        {
LABEL_74:

          return;
        }

        v75 = *(v31 + 2);
        v76 = 32;
        while (v75)
        {
          v77 = *&v31[v76];
          v76 += 8;
          --v75;
          if (v77 == 11)
          {
            goto LABEL_74;
          }
        }

        sub_252CC3D90(0xD00000000000004ALL, 0x8000000252E75C10, 0xD000000000000075, 0x8000000252E759F0);
        sub_252A76B8C(2, 1, 0, 0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_2529F7A6C(0, *(v31 + 2) + 1, 1, v31);
        }

        v79 = *(v31 + 2);
        v78 = *(v31 + 3);
        if (v79 >= v78 >> 1)
        {
          v31 = sub_2529F7A6C((v78 > 1), v79 + 1, 1, v31);
        }

        *(v31 + 2) = v79 + 1;
        *&v31[8 * v79 + 32] = 11;
      }

      else
      {
      }

      return;
    }

    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, qword_27F544E68);
    v47 = sub_252E36AC4();
    v48 = sub_252E374D4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_252917000, v47, v48, "No user task found from ControlHomeIntent. Will not warm up for correction or snippets.", v49, 2u);
      MEMORY[0x2530AED00](v49, -1, -1);
    }
  }
}

uint64_t sub_252A76B8C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v41 = a2;
  v40 = a1;
  v4 = sub_252E36CA4();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E37564();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E37534();
  MEMORY[0x28223BE20](v9 - 8);
  v44 = sub_252E36D04();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_252E36AB4();
  v12 = *(v39 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v39);
  v15 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - v16;
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v18 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F4F0 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544D78);
  sub_252CC3D90(0xD000000000000013, 0x8000000252E759D0, 0xD000000000000075, 0x8000000252E759F0);
  *(sub_252B680FC(v20) + 160) = 1;

  sub_252936DF8();
  sub_252E36CF4();
  sub_252E37524();
  (*(v37 + 104))(v8, *MEMORY[0x277D85260], v38);
  v21 = sub_252E37594();
  v22 = *(v12 + 16);
  v36 = v17;
  v23 = v17;
  v24 = v39;
  v22(v15, v23, v39);
  v25 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v40;
  *(v27 + 16) = v43;
  *(v27 + 24) = v28;
  *(v27 + 32) = v41 & 1;
  (*(v12 + 32))(v27 + v25, v15, v24);
  v29 = (v27 + v26);
  v31 = v45;
  v30 = v46;
  *v29 = v45;
  v29[1] = v30;
  aBlock[4] = sub_252A776A0;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_7;
  v32 = _Block_copy(aBlock);

  sub_252A77750(v31, v30);
  sub_252E36CD4();
  v50 = MEMORY[0x277D84F90];
  sub_252990E98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860, MEMORY[0x277D83970]);
  v33 = v47;
  v34 = v49;
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v11, v33, v32);
  _Block_release(v32);

  (*(v48 + 8))(v33, v34);
  (*(v42 + 8))(v11, v44);
  (*(v12 + 8))(v36, v24);
}

uint64_t sub_252A771A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a3;
  v22 = a2;
  v8 = sub_252E36AB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 528);
  (*(v9 + 16))(v11, a4, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v13, v11, v8);
  *(v15 + v14) = a1;
  v16 = v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = v22;
  *v16 = v22;
  LOBYTE(v9) = v23 & 1;
  *(v16 + 8) = v23 & 1;
  v18 = (v15 + ((v14 + 31) & 0xFFFFFFFFFFFFFFF8));
  v20 = v24;
  v19 = v25;
  *v18 = v24;
  v18[1] = v19;

  sub_252A77750(v20, v19);
  sub_252A6007C(v12, v17, v9, sub_252A77760, v15);
}

void sub_252A77374(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(void))
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_27F544D60);
  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E75A90, 0xD000000000000075, 0x8000000252E759F0);
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F544F58;
  v15 = sub_252E375C4();
  sub_252E36A74(v15, &dword_252917000, v14, "WarmupServices", 14, 2, a3, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v16 = sub_252A77830(a1, a2 & 1, a5, a6 & 1);
  if (a7)
  {
    v17 = v16;
    a7();
    v16 = v17;
  }
}

uint64_t sub_252A7750C()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_25299F5D4(__dst);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for HomeAutomationIntent.ReferenceType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HomeAutomationIntent.ReferenceType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_252A775FC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_252A77618(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_252A7764C()
{
  result = qword_27F5421A0;
  if (!qword_27F5421A0)
  {
    result = swift_getWitnessTable(a5c, &type metadata for WarmupState, v0, v1);
    atomic_store(result, &qword_27F5421A0);
  }

  return result;
}

uint64_t sub_252A776A0()
{
  v1 = *(sub_252E36AB4() - 8);
  v2 = (*(v1 + 80) + 33) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_252A771A8(v3, v4, v5, v0 + v2, v7, v8);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252A77750(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_252A77760(unint64_t a1, char a2)
{
  v5 = *(sub_252E36AB4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + v8 + 8);
  v12 = *(v2 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8));

  sub_252A77374(a1, a2 & 1, v2 + v6, v9, v10, v11, v12);
}

unint64_t sub_252A77830(unint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_252E36AD4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = a1;
    if (qword_27F53F4F0 == -1)
    {
LABEL_3:
      __swift_project_value_buffer(v8, qword_27F544D78);
      v119 = 0;
      v120 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E75AB0);
      v118 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
      sub_252E37AE4();
      sub_252CC4050(v119, v120, 0xD000000000000075, 0x8000000252E759F0, 0xD000000000000028, 0x8000000252E75AE0, 198);

      return a1;
    }

LABEL_90:
    swift_once();
    goto LABEL_3;
  }

  *(sub_252B680FC(v10) + 160) = 2;

  if ((a4 & 1) == 0)
  {
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_27F544E68);
    v119 = 0;
    v120 = 0xE000000000000000;
    sub_252E379F4();

    v119 = 0xD000000000000027;
    v120 = 0x8000000252E75B40;
    v29 = type metadata accessor for HomeEntityResponse();
    v30 = MEMORY[0x2530AD730](a1, v29);
    MEMORY[0x2530AD570](v30);

    sub_252CC3D90(v119, v120, 0xD000000000000075, 0x8000000252E759F0);

    *(sub_252B680FC(v31) + 152) = a1;

    goto LABEL_94;
  }

  v113 = v8;
  if ((a3 - 1) < 2)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v8, qword_27F544D60);
    v15 = *(v9 + 16);
    v115 = v12;
    v15(v12, v14, v8);
    v119 = 0;
    v120 = 0xE000000000000000;
    sub_252E379F4();

    v119 = 0xD000000000000018;
    v120 = 0x8000000252E75B70;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v17 = sub_252E378C4();
      v116 = v9;
      v117 = a1;
      if (v17)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v116 = v9;
      v117 = a1;
      if (v17)
      {
LABEL_10:
        a1 = 0;
        v18 = v117 & 0xC000000000000001;
        v19 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v18)
          {
            v20 = MEMORY[0x2530ADF00](a1, v117);
          }

          else
          {
            if (a1 >= *(v16 + 16))
            {
              goto LABEL_85;
            }

            v20 = *(v117 + 8 * a1 + 32);
          }

          v21 = v20;
          v8 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            break;
          }

          v22 = [v20 description];
          v23 = sub_252E36F34();
          v25 = v24;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_2529F7A80(0, *(v19 + 2) + 1, 1, v19);
          }

          v27 = *(v19 + 2);
          v26 = *(v19 + 3);
          if (v27 >= v26 >> 1)
          {
            v19 = sub_2529F7A80((v26 > 1), v27 + 1, 1, v19);
          }

          *(v19 + 2) = v27 + 1;
          v28 = &v19[16 * v27];
          *(v28 + 4) = v23;
          *(v28 + 5) = v25;
          ++a1;
          if (v8 == v17)
          {
            goto LABEL_93;
          }
        }

        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }
    }

    v19 = MEMORY[0x277D84F90];
LABEL_93:
    v74 = MEMORY[0x2530AD730](v19, MEMORY[0x277D837D0]);
    v76 = v75;

    MEMORY[0x2530AD570](v74, v76);

    v77 = v115;
    sub_252CC3D90(v119, v120, 0xD000000000000075, 0x8000000252E759F0);

    v78 = (*(v116 + 8))(v77, v113);
    v79 = sub_252B680FC(v78);
    v80 = v117;
    *(v79 + 152) = v117;
    sub_252A78618(v80, 0);
LABEL_94:

    goto LABEL_129;
  }

  if (a3)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_27F544D60);
    v119 = 0;
    v120 = 0xE000000000000000;
    sub_252E379F4();

    v119 = 0xD000000000000026;
    v120 = 0x8000000252E75B10;
    v58 = type metadata accessor for HomeEntityResponse();
    v59 = MEMORY[0x2530AD730](a1, v58);
    goto LABEL_128;
  }

  v118 = MEMORY[0x277D84F90];
  v32 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v33 = sub_252E378C4();
  }

  else
  {
    v33 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v33)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_65;
  }

  v34 = a1;
  a1 = 0;
  v116 = v34 & 0xC000000000000001;
  v117 = v34;
  v114 = v33;
  v115 = (v34 + 32);
  v111 = "ponses from entity response: ";
  v112 = 0x8000000252E75B90;
  v109 = v32;
  v110 = 0xD000000000000025;
  do
  {
    if (v116)
    {
      v35 = MEMORY[0x2530ADF00](a1, v117);
    }

    else
    {
      if (a1 >= *(v32 + 16))
      {
        goto LABEL_87;
      }

      v35 = *&v115[8 * a1];
    }

    v36 = v35;
    if (__OFADD__(a1++, 1))
    {
      goto LABEL_86;
    }

    v38 = [v35 entity];
    if (!v38)
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v8, qword_27F544D60);
      v119 = 0;
      v120 = 0xE000000000000000;
      sub_252E379F4();

      v119 = v110;
      v120 = v112;
      v51 = [v36 description];
      v52 = sub_252E36F34();
      v54 = v53;

      MEMORY[0x2530AD570](v52, v54);

      sub_252CC3D90(v119, v120, 0xD00000000000008CLL, v111 | 0x8000000000000000);
      goto LABEL_52;
    }

    v39 = v38;
    v40 = [v38 deviceTypes];
    if (!v40)
    {

      v44 = MEMORY[0x277D84F90];
      goto LABEL_53;
    }

    v41 = v40;
    v42 = sub_252E37264();

    v43 = *(v42 + 16);
    if (!v43)
    {

LABEL_52:

      v44 = MEMORY[0x277D84F90];
      v33 = v114;
      goto LABEL_53;
    }

    v119 = MEMORY[0x277D84F90];
    sub_2529AA420(0, v43, 0);
    v44 = v119;
    v45 = 32;
    do
    {
      v46 = sub_252E25FC4(*(v42 + v45));
      if (v47)
      {
        v48 = 0;
      }

      else
      {
        v48 = v46;
      }

      v119 = v44;
      v50 = *(v44 + 16);
      v49 = *(v44 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_2529AA420((v49 > 1), v50 + 1, 1);
        v44 = v119;
      }

      *(v44 + 16) = v50 + 1;
      *(v44 + 8 * v50 + 32) = v48;
      v45 += 8;
      --v43;
    }

    while (v43);

    v8 = v113;
    v33 = v114;
    v32 = v109;
LABEL_53:
    v55 = *(v44 + 16);
    if (v55)
    {
      v56 = 32;
      while (v55)
      {
        v57 = *(v44 + v56);
        v56 += 8;
        --v55;
        if (v57 == 1)
        {

          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_31;
        }
      }
    }

    else
    {
    }

LABEL_31:
    ;
  }

  while (a1 != v33);
  v8 = v118;
  a1 = v117;
LABEL_65:
  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v61 = a1;
    v62 = sub_252E378C4();
    if (v62)
    {
      goto LABEL_68;
    }

    goto LABEL_97;
  }

  v61 = a1;
  v62 = *(v8 + 16);
  if (!v62)
  {
LABEL_97:
    v65 = MEMORY[0x277D84F90];
    goto LABEL_98;
  }

LABEL_68:
  v63 = 0;
  v64 = v8 & 0xC000000000000001;
  v65 = MEMORY[0x277D84F90];
  do
  {
    a1 = v63;
    while (1)
    {
      if (v64)
      {
        v66 = MEMORY[0x2530ADF00](a1, v8);
      }

      else
      {
        if (a1 >= *(v8 + 16))
        {
          goto LABEL_89;
        }

        v66 = *(v8 + 8 * a1 + 32);
      }

      v67 = v66;
      v63 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        goto LABEL_88;
      }

      v68 = [v66 taskResponses];
      if (v68)
      {
        break;
      }

      ++a1;
      if (v63 == v62)
      {
        goto LABEL_98;
      }
    }

    v69 = v68;
    type metadata accessor for HomeUserTaskResponse();
    v70 = sub_252E37264();

    v71 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_2529F7BB4(0, v65[2] + 1, 1, v65);
    }

    v73 = v65[2];
    v72 = v65[3];
    if (v73 >= v72 >> 1)
    {
      v65 = sub_2529F7BB4((v72 > 1), v73 + 1, 1, v65);
    }

    v65[2] = v73 + 1;
    v65[v73 + 4] = v70;
    v8 = v71;
  }

  while (v63 != v62);
LABEL_98:

  v81 = sub_252A75C1C(v65);

  *(sub_252B680FC(v82) + 152) = v61;
  sub_252A78618(v61, 0);

  if (v81 >> 62)
  {
LABEL_134:
    v83 = sub_252E378C4();
    v84 = v83;
    if (!v83)
    {
      goto LABEL_129;
    }
  }

  else
  {
    v84 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v84)
    {
      goto LABEL_129;
    }
  }

  v117 = sub_252B680FC(v83);
  v85 = 0;
  while (2)
  {
    if ((v81 & 0xC000000000000001) != 0)
    {
      v86 = MEMORY[0x2530ADF00](v85, v81);
    }

    else
    {
      if (v85 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_133;
      }

      v86 = *(v81 + 8 * v85 + 32);
    }

    v87 = v86;
    v88 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v89 = [v86 userTask];
    if (!v89 || (v90 = v89, v91 = [v89 attribute], v90, v91 != 2))
    {
LABEL_117:

      goto LABEL_118;
    }

    v92 = [v87 userTask];
    if (v92)
    {
      v93 = v92;
      v94 = [v92 value];

      if (v94)
      {
        v95 = [v94 integerValue];

        if (v95 == 100)
        {

LABEL_114:
          ++v85;
          if (v88 == v84)
          {

            v106 = 1;
            goto LABEL_119;
          }

          continue;
        }
      }
    }

    break;
  }

  v96 = [v87 userTask];
  if (!v96)
  {
    goto LABEL_117;
  }

  v97 = v96;
  v98 = [v96 value];

  if (!v98)
  {
    goto LABEL_117;
  }

  [v98 doubleValue];
  v100 = v99;

  if (v100 == 100.0)
  {
    goto LABEL_114;
  }

LABEL_118:
  v106 = 0;
LABEL_119:
  *(v117 + 144) = v106;

  v101 = v113;
  if (qword_2814B0AC0 != -1)
  {
    v107 = v113;
    swift_once();
    v101 = v107;
  }

  __swift_project_value_buffer(v101, qword_2814B0AC8);
  v119 = 0;
  v120 = 0xE000000000000000;
  sub_252E379F4();

  v119 = 0xD000000000000028;
  v120 = 0x8000000252E75BC0;
  v103 = *(sub_252B680FC(v102) + 144);

  if (v103)
  {
    v59 = 1702195828;
  }

  else
  {
    v59 = 0x65736C6166;
  }

  if (v103)
  {
    v104 = 0xE400000000000000;
  }

  else
  {
    v104 = 0xE500000000000000;
  }

  v60 = v104;
LABEL_128:
  MEMORY[0x2530AD570](v59, v60);

  sub_252CC3D90(v119, v120, 0xD000000000000075, 0x8000000252E759F0);
LABEL_129:

  return 0;
}