unint64_t sub_266D32DC4()
{
  result = qword_2800CCE58;
  if (!qword_2800CCE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE58);
  }

  return result;
}

unint64_t sub_266D32E1C()
{
  result = qword_2800CCE60;
  if (!qword_2800CCE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE60);
  }

  return result;
}

unint64_t sub_266D32E74()
{
  result = qword_2800CCE68;
  if (!qword_2800CCE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE68);
  }

  return result;
}

unint64_t sub_266D32ECC()
{
  result = qword_2800CCE70;
  if (!qword_2800CCE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE70);
  }

  return result;
}

unint64_t sub_266D32F24()
{
  result = qword_2800CCE78;
  if (!qword_2800CCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_43(uint64_t a1, uint64_t a2)
{

  return sub_266DAAFAC();
}

void sub_266D32FC0()
{
  qword_2800CCE80 = 0xD000000000000027;
  *algn_2800CCE88 = 0x8000000266DC37F0;
  qword_2800CCE90 = 0xD000000000000014;
  unk_2800CCE98 = 0x8000000266DC37D0;
}

uint64_t static DIConfirmationResponse.identifier.getter@<X0>(void *a1@<X8>)
{
  if (qword_2800C9400 != -1)
  {
    swift_once();
  }

  v2 = *algn_2800CCE88;
  v3 = qword_2800CCE90;
  v4 = unk_2800CCE98;
  *a1 = qword_2800CCE80;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_266D33094(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657463656A6572 && a2 == 0xE800000000000000;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
    {

      return 2;
    }

    else
    {
      v8 = sub_266DAB17C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_266D331B4(char a1)
{
  if (!a1)
  {
    return 0x656D7269666E6F63;
  }

  if (a1 == 1)
  {
    return 0x64657463656A6572;
  }

  return 0x656C6C65636E6163;
}

uint64_t sub_266D3320C(uint64_t a1)
{
  v2 = sub_266D3376C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D33248(uint64_t a1)
{
  v2 = sub_266D3376C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266D3328C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D33094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D332B4(uint64_t a1)
{
  v2 = sub_266D33718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D332F0(uint64_t a1)
{
  v2 = sub_266D33718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266D3332C(uint64_t a1)
{
  v2 = sub_266D33814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D33368(uint64_t a1)
{
  v2 = sub_266D33814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266D333A4(uint64_t a1)
{
  v2 = sub_266D337C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D333E0(uint64_t a1)
{
  v2 = sub_266D337C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DIConfirmationResponse.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCEA0, &qword_266DB9710);
  OUTLINED_FUNCTION_0_2();
  v33 = v4;
  v34 = v3;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v32 = &v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCEA8, &qword_266DB9718);
  OUTLINED_FUNCTION_0_2();
  v30 = v8;
  v31 = v7;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v29 = &v26 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCEB0, &qword_266DB9720);
  OUTLINED_FUNCTION_0_2();
  v27 = v12;
  v28 = v11;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCEB8, &qword_266DB9728);
  OUTLINED_FUNCTION_0_2();
  v18 = v17;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v26 - v20;
  v22 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D33718();
  sub_266DAB36C();
  if (v22)
  {
    if (v22 == 1)
    {
      v36 = 1;
      sub_266D337C0();
      v15 = v29;
      OUTLINED_FUNCTION_2_52(&type metadata for DIConfirmationResponse.RejectedCodingKeys, &v36);
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v37 = 2;
      sub_266D3376C();
      v15 = v32;
      OUTLINED_FUNCTION_2_52(&type metadata for DIConfirmationResponse.CancelledCodingKeys, &v37);
      v24 = v33;
      v23 = v34;
    }
  }

  else
  {
    v35 = 0;
    sub_266D33814();
    OUTLINED_FUNCTION_2_52(&type metadata for DIConfirmationResponse.ConfirmedCodingKeys, &v35);
    v24 = v27;
    v23 = v28;
  }

  (*(v24 + 8))(v15, v23);
  return (*(v18 + 8))(v21, v16);
}

unint64_t sub_266D33718()
{
  result = qword_2800CCEC0;
  if (!qword_2800CCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCEC0);
  }

  return result;
}

unint64_t sub_266D3376C()
{
  result = qword_2800CCEC8;
  if (!qword_2800CCEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCEC8);
  }

  return result;
}

unint64_t sub_266D337C0()
{
  result = qword_2800CCED0;
  if (!qword_2800CCED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCED0);
  }

  return result;
}

unint64_t sub_266D33814()
{
  result = qword_2800CCED8;
  if (!qword_2800CCED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCED8);
  }

  return result;
}

uint64_t DIConfirmationResponse.hashValue.getter()
{
  v1 = *v0;
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](v1);
  return sub_266DAB2DC();
}

uint64_t DIConfirmationResponse.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v55 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCEE0, &qword_266DB9730);
  OUTLINED_FUNCTION_0_2();
  v56 = v3;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v58 = &v47 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCEE8, &qword_266DB9738);
  OUTLINED_FUNCTION_0_2();
  v53 = v7;
  v54 = v6;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCEF0, &qword_266DB9740);
  OUTLINED_FUNCTION_0_2();
  v52 = v12;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCEF8, &unk_266DB9748);
  OUTLINED_FUNCTION_0_2();
  v57 = v17;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D33718();
  v21 = v60;
  sub_266DAB34C();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v49 = v11;
  v50 = v15;
  v51 = v10;
  v23 = v58;
  v22 = v59;
  v60 = a1;
  sub_266DAB06C();
  result = sub_266C1E2FC();
  if (v26 == v27 >> 1)
  {
    goto LABEL_9;
  }

  v48 = 0;
  if (v26 >= (v27 >> 1))
  {
    __break(1u);
  }

  else
  {
    LODWORD(v28) = *(v25 + v26);
    sub_266C1E2EC();
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    v33 = v30 == v32 >> 1;
    v34 = v56;
    if (!v33)
    {
LABEL_9:
      v39 = sub_266DAAE4C();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9908, &qword_266DAD8C0);
      *v41 = &type metadata for DIConfirmationResponse;
      sub_266DAAFBC();
      sub_266DAAE3C();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v57 + 8))(v20, v16);
      a1 = v60;
      return __swift_destroy_boxed_opaque_existential_0(a1);
    }

    if (v28)
    {
      if (v28 == 1)
      {
        v62[0] = 1;
        sub_266D337C0();
        v35 = v51;
        OUTLINED_FUNCTION_4_43(&type metadata for DIConfirmationResponse.RejectedCodingKeys, v62);
        v36 = v55;
        v37 = v16;
        v38 = v57;
        swift_unknownObjectRelease();
        (*(v53 + 8))(v35, v54);
        (*(v38 + 8))(v20, v37);
      }

      else
      {
        LODWORD(v54) = v28;
        v62[1] = 2;
        sub_266D3376C();
        v43 = v48;
        sub_266DAAFAC();
        v36 = v55;
        v28 = v16;
        v44 = v57;
        if (v43)
        {
          (*(v57 + 8))(v20, v28);
          swift_unknownObjectRelease();
          a1 = v60;
          return __swift_destroy_boxed_opaque_existential_0(a1);
        }

        swift_unknownObjectRelease();
        (*(v34 + 8))(v23, v22);
        (*(v44 + 8))(v20, v28);
        LOBYTE(v28) = v54;
      }
    }

    else
    {
      v61 = 0;
      sub_266D33814();
      v42 = v50;
      OUTLINED_FUNCTION_4_43(&type metadata for DIConfirmationResponse.ConfirmedCodingKeys, &v61);
      swift_unknownObjectRelease();
      (*(v52 + 8))(v42, v49);
      v45 = OUTLINED_FUNCTION_3_44();
      v46(v45);
      v36 = v55;
    }

    *v36 = v28;
    return __swift_destroy_boxed_opaque_existential_0(v60);
  }

  return result;
}

unint64_t sub_266D33ED4()
{
  result = qword_2800CCF00;
  if (!qword_2800CCF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF00);
  }

  return result;
}

unint64_t sub_266D33F28(void *a1)
{
  a1[1] = sub_266D33F60();
  a1[2] = sub_266D33FB4();
  result = sub_266D33ED4();
  a1[3] = result;
  return result;
}

unint64_t sub_266D33F60()
{
  result = qword_2800CCF08;
  if (!qword_2800CCF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF08);
  }

  return result;
}

unint64_t sub_266D33FB4()
{
  result = qword_2800CCF10;
  if (!qword_2800CCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF10);
  }

  return result;
}

_BYTE *sub_266D34018(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266D34128()
{
  result = qword_2800CCF18;
  if (!qword_2800CCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF18);
  }

  return result;
}

unint64_t sub_266D34180()
{
  result = qword_2800CCF20;
  if (!qword_2800CCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF20);
  }

  return result;
}

unint64_t sub_266D341D8()
{
  result = qword_2800CCF28;
  if (!qword_2800CCF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF28);
  }

  return result;
}

unint64_t sub_266D34230()
{
  result = qword_2800CCF30;
  if (!qword_2800CCF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF30);
  }

  return result;
}

unint64_t sub_266D34288()
{
  result = qword_2800CCF38;
  if (!qword_2800CCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF38);
  }

  return result;
}

unint64_t sub_266D342E0()
{
  result = qword_2800CCF40;
  if (!qword_2800CCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF40);
  }

  return result;
}

unint64_t sub_266D34338()
{
  result = qword_2800CCF48;
  if (!qword_2800CCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF48);
  }

  return result;
}

unint64_t sub_266D34390()
{
  result = qword_2800CCF50;
  if (!qword_2800CCF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCF50);
  }

  return result;
}

unint64_t sub_266D343E8()
{
  result = qword_2800CCF58[0];
  if (!qword_2800CCF58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800CCF58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_52(uint64_t a1, uint64_t a2)
{

  return sub_266DAB08C();
}

uint64_t OUTLINED_FUNCTION_4_43(uint64_t a1, uint64_t a2)
{

  return sub_266DAAFAC();
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy20FriendRecommendationO(uint64_t a1)
{
  if ((*(a1 + 8) & 7u) <= 4)
  {
    return *(a1 + 8) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_266D344B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 9))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266D344F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_266D34538(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_266D34560(unint64_t a1, char a2, unint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        return 0;
      }

      goto LABEL_11;
    case 2:
      if (a4 != 2)
      {
        return 0;
      }

      goto LABEL_9;
    case 3:
      if (a4 == 3)
      {
        goto LABEL_9;
      }

      return 0;
    case 4:
      if (a4 != 4)
      {
        return 0;
      }

LABEL_11:

      return sub_266D71E20(a1, a3);
    case 5:
      if (a1)
      {
        if (a1 == 1)
        {
          if (a4 != 5 || a3 != 1)
          {
            return 0;
          }
        }

        else if (a4 != 5 || a3 != 2)
        {
          return 0;
        }

        return 1;
      }

      return a4 == 5 && !a3;
    default:
      if (a4)
      {
        return 0;
      }

LABEL_9:
      sub_266D34690();
      return sub_266DAABFC() & 1;
  }
}

unint64_t sub_266D34690()
{
  result = qword_28156EFA8;
  if (!qword_28156EFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156EFA8);
  }

  return result;
}

void sub_266D3473C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, uint64_t, void *, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_6();
  v22 = v21;
  v47 = v24;
  v48 = v23;
  v26 = v25;
  v28 = v27;
  v50 = v29;
  v31 = v30;
  v33 = v32;
  v49 = v34;
  v35 = sub_266DA947C();
  OUTLINED_FUNCTION_1_5();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_0_6();
  v41 = v40 - v39;
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_0_6();
  v45 = v44 - v43;
  (*(v46 + 16))(v44 - v43, v22, v26);
  (*(v37 + 16))(v41, v28, v35);
  a21(v45, v33, v31, v48, v49, v50, v41, v26, v47);
  OUTLINED_FUNCTION_5();
}

void sub_266D34940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(void, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_6();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = a22(0, v22, a21);
  sub_266DA946C();
  v41 = sub_266DA947C();
  (*(*(v41 - 8) + 8))(v25, v41);
  (*(*(v23 - 8) + 32))(v39, v37, v23);
  v42 = v39 + v40[11];
  *v42 = v31;
  *(v42 + 8) = v29;
  *(v42 + 16) = v27;
  *(v39 + v40[9]) = v35;
  *(v39 + v40[10]) = v33;
  OUTLINED_FUNCTION_5();
}

void Publishers.Signpost.receive<A>(subscriber:)()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_266DA947C();
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_6();
  v23 = *(v6 + 24);
  v24[0] = *(v6 + 16);
  v24[1] = v4;
  v24[2] = v23;
  v24[3] = v2;
  _s8SignpostV5InnerCMa(0, v24);
  v9 = OUTLINED_FUNCTION_2_53();
  v10(v9);
  v11 = *(v0 + *(v6 + 40));
  v12 = OUTLINED_FUNCTION_6_31();
  v13(v12);
  v14 = v11;
  OUTLINED_FUNCTION_5_36();
  sub_266D34C4C(v15, v16, v17, v18, v19, v20, v21);
  v24[0] = v22;
  swift_getWitnessTable();
  sub_266DA992C();

  OUTLINED_FUNCTION_5();
}

uint64_t *sub_266D34C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v15 = *v7;
  v16 = *(*v7 + 152);
  v17 = swift_slowAlloc();
  *v17 = 0;
  *(v7 + v16) = v17;
  v18 = v7 + *(*v7 + 160);
  *(v18 + 32) = 0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  (*(*(*(v15 + 88) - 8) + 32))(v7 + *(*v7 + 112), a1);
  *(v7 + *(*v7 + 120)) = a2;
  *(v7 + *(*v7 + 128)) = a3;
  v19 = v7 + *(*v7 + 136);
  *v19 = a4;
  *(v19 + 8) = a5;
  *(v19 + 16) = a6;
  v20 = *(*v7 + 144);
  v21 = sub_266DA947C();
  (*(*(v21 - 8) + 32))(v7 + v20, a7, v21);
  return v7;
}

uint64_t *sub_266D34E08()
{
  v1 = *v0;
  v2 = *v0;
  MEMORY[0x26D5F2480](*(v0 + *(*v0 + 152)), -1, -1);
  v3 = *(v1 + 88);
  (*(*(v3 - 8) + 8))(v0 + *(*v0 + 112), v3);

  v4 = *(*v0 + 144);
  v5 = sub_266DA947C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 160);
  v9[0] = *(v1 + 80);
  v9[1] = v3;
  v10 = *(v2 + 96);
  v7 = _s8SignpostV5InnerC18SubscriptionStatusOMa(0, v9);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_266D34FF0()
{
  v1 = sub_266DAB2FC();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD260, &qword_266DBA148);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v10 = v0;
  v7 = sub_266DAB2EC();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_266D35138(v3);

  return sub_266DAB30C();
}

uint64_t sub_266D35138@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D84C38];
  v3 = sub_266DAB2FC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_266D351AC(void *a1@<X8>)
{
  a1[3] = MEMORY[0x277D837D0];
  *a1 = 0x74736F706E676953;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_266D351D4(void *a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(v5);
  v6 = *(*v1 + 160);
  swift_beginAccess();
  v7 = *(v3 + 80);
  v8 = *(v3 + 104);
  v13 = v7;
  v14 = *(v4 + 88);
  v15 = v8;
  v9 = _s8SignpostV5InnerC18SubscriptionStatusOMa(0, &v13);
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v13, v1 + v6, v9);
  v11 = v15;
  (*(v10 + 8))(&v13, v9);
  if (v11)
  {
    os_unfair_lock_unlock(v5);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    return sub_266DA963C();
  }

  else
  {
    sub_266C233D0(a1, &v13);
    swift_beginAccess();
    (*(v10 + 40))(v1 + v6, &v13, v9);
    swift_endAccess();
    os_unfair_lock_unlock(v5);
    sub_266DAABDC();
    sub_266DA945C();
    v15 = v4;
    WitnessTable = swift_getWitnessTable();
    v13 = v1;

    sub_266DA961C();
    return __swift_destroy_boxed_opaque_existential_0(&v13);
  }
}

void sub_266D354FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(v4);
  v5 = *(*v1 + 160);
  swift_beginAccess();
  v6 = *(v2 + 80);
  v7 = *(v2 + 104);
  v11 = v6;
  v12 = *(v3 + 88);
  *&v13 = v7;
  v8 = _s8SignpostV5InnerC18SubscriptionStatusOMa(0, &v11);
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v11, v1 + v5, v8);
  v10 = v13;
  (*(v9 + 8))(&v11, v8);
  if (v10 >= 2)
  {
    v11 = 0;
    v12 = 0uLL;
    v13 = xmmword_266DB3600;
    swift_beginAccess();
    (*(v9 + 40))(v1 + v5, &v11, v8);
    swift_endAccess();
    os_unfair_lock_unlock(v4);
    sub_266DAABCC();
    sub_266DA945C();
    sub_266DA960C();
  }

  else
  {
    os_unfair_lock_unlock(v4);
  }
}

void sub_266D3576C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(v3);
  v4 = *(*v1 + 160);
  swift_beginAccess();
  v5 = *(v2 + 96);
  v8[0] = *(v2 + 80);
  v8[1] = v5;
  v6 = _s8SignpostV5InnerC18SubscriptionStatusOMa(0, v8);
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v9, v1 + v4, v6);
  if (v10 >= 2)
  {
    sub_266C0B0D8(&v9, v11);
    os_unfair_lock_unlock(v3);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_266DA967C();
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    (*(v7 + 8))(&v9, v6);
    os_unfair_lock_unlock(v3);
  }
}

void sub_266D358E8()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 152));
  os_unfair_lock_lock(v2);
  v3 = *(*v0 + 160);
  swift_beginAccess();
  v4 = *(v1 + 96);
  v7[0] = *(v1 + 80);
  v7[1] = v4;
  v5 = _s8SignpostV5InnerC18SubscriptionStatusOMa(0, v7);
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v8, v0 + v3, v5);
  if (v10 >= 2)
  {
    sub_266C0B0D8(&v8, v11);
    v8 = 0uLL;
    v9 = 0;
    v10 = xmmword_266DB3600;
    swift_beginAccess();
    (*(v6 + 40))(v0 + v3, &v8, v5);
    swift_endAccess();
    os_unfair_lock_unlock(v2);
    sub_266DAABCC();
    sub_266DA945C();
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_266DA963C();
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    (*(v6 + 8))(&v8, v5);
    os_unfair_lock_unlock(v2);
  }
}

uint64_t sub_266D35C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_266DA947C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void Publishers.SignpostFirst.receive<A>(subscriber:)()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_266DA947C();
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_6();
  v23 = *(v6 + 24);
  v24[0] = *(v6 + 16);
  v24[1] = v4;
  v24[2] = v23;
  v24[3] = v2;
  _s13SignpostFirstV5InnerCMa(0, v24);
  v9 = OUTLINED_FUNCTION_2_53();
  v10(v9);
  v11 = *(v0 + *(v6 + 40));
  v12 = OUTLINED_FUNCTION_6_31();
  v13(v12);
  v14 = v11;
  OUTLINED_FUNCTION_5_36();
  sub_266D35ED4(v15, v16, v17, v18, v19, v20, v21);
  v24[0] = v22;
  swift_getWitnessTable();
  sub_266DA97DC();

  OUTLINED_FUNCTION_5();
}

void sub_266D35EEC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_allocObject();
  v1(v15, v13, v11, v9, v7, v5, v3);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266D35FA8(uint64_t a1)
{
  sub_266DAB2AC();
  sub_266C16154(v3, *v1);
  return sub_266DAB2DC();
}

uint64_t *sub_266D35FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v15 = *v7;
  *(v7 + *(*v7 + 152)) = 0;
  v16 = *(*v7 + 160);
  v17 = swift_slowAlloc();
  *(v7 + v16) = v17;
  *v17 = 0;
  (*(*(*(v15 + 88) - 8) + 32))(v7 + *(*v7 + 112), a1);
  *(v7 + *(*v7 + 120)) = a2;
  *(v7 + *(*v7 + 128)) = a3;
  v18 = v7 + *(*v7 + 136);
  *v18 = a4;
  *(v18 + 8) = a5;
  *(v18 + 16) = a6;
  v19 = *(*v7 + 144);
  v20 = sub_266DA947C();
  (*(*(v20 - 8) + 32))(v7 + v19, a7, v20);
  return v7;
}

uint64_t sub_266D3618C(uint64_t a1)
{
  v2 = *(v1 + *(*v1 + 160));
  os_unfair_lock_lock(v2);
  v3 = *(*v1 + 152);
  if (!*(v1 + v3))
  {
    sub_266DAABDC();
    sub_266DA945C();
    *(v1 + v3) = 1;
  }

  os_unfair_lock_unlock(v2);
  return sub_266DA961C();
}

uint64_t sub_266D362D0(uint64_t a1)
{
  v2 = *(v1 + *(*v1 + 160));
  os_unfair_lock_lock(v2);
  v3 = *(*v1 + 152);
  if (*(v1 + v3) == 1)
  {
    sub_266DAABCC();
    sub_266DA945C();
    *(v1 + v3) = 2;
  }

  os_unfair_lock_unlock(v2);
  return sub_266DA962C();
}

uint64_t sub_266D3647C()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 112));

  v1 = *(*v0 + 144);
  v2 = sub_266DA947C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_266D36574(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

unint64_t sub_266D36664(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_266C18E7C();
    if (v3 <= 0x3F)
    {
      result = sub_266DA947C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_266D36714(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_266DA947C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = v8;
  v16 = v14 + 17;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v17 = ((v16 + ((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(*(v8 - 8) + 64);
  v18 = 8 * v17;
  if (v17 > 3)
  {
    goto LABEL_10;
  }

  v21 = ((a2 - v12 + ~(-1 << v18)) >> v18) + 1;
  if (HIWORD(v21))
  {
    v19 = *(a1 + v17);
    if (v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v21 <= 0xFF)
    {
      if (v21 < 2)
      {
        goto LABEL_28;
      }

LABEL_10:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_28;
      }

LABEL_18:
      v22 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v22 = 0;
      }

      if (v17)
      {
        if (v17 <= 3)
        {
          v23 = v17;
        }

        else
        {
          v23 = 4;
        }

        switch(v23)
        {
          case 2:
            v24 = *a1;
            break;
          case 3:
            v24 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v24 = *a1;
            break;
          default:
            v24 = *a1;
            break;
        }
      }

      else
      {
        v24 = 0;
      }

      return v12 + (v24 | v22) + 1;
    }

    v19 = *(a1 + v17);
    if (*(a1 + v17))
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  if (v7 == v12)
  {
    v25 = a1;
    v10 = v7;
    v15 = v5;
LABEL_35:

    return __swift_getEnumTagSinglePayload(v25, v10, v15);
  }

  v26 = ((((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) != 0)
  {
    v25 = ((v16 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v14);
    goto LABEL_35;
  }

  v27 = *v26;
  if (*v26 >= 0xFFFFFFFF)
  {
    LODWORD(v27) = -1;
  }

  return (v27 + 1);
}

void sub_266D36990(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_266DA947C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = ((v16 + 17 + ((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + *(*(v10 - 8) + 64);
  v18 = 8 * v17;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_51:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        if (v9 == v14)
        {
          v25 = a1;
          v26 = a2;
          v12 = v9;
          v10 = v7;
        }

        else
        {
          v27 = (((&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v13 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v28 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v28 = (a2 - 1);
            }

            *v27 = v28;
            return;
          }

          v25 = ((v16 + 17 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16);
          v26 = a2;
        }

        __swift_storeEnumTagSinglePayload(v25, v26, v12, v10);
        break;
    }
  }

  else
  {
    v20 = ~v14 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v17 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        break;
      case 2:
        *&a1[v17] = v21;
        break;
      case 3:
        goto LABEL_51;
      case 4:
        *&a1[v17] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_266D36CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_checkMetadataState();
  if (v6 <= 0x3F)
  {
    result = sub_266DA947C();
    if (v7 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_BYTE *sub_266D36DB8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_266D36E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_7Combine10PublishersO10SiriFindMyE8SignpostV5Inner33_EC64DE80AC3D8DD78B8FD84640A7AB55LLC18SubscriptionStatusOy_x_qd___G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_266D37014(uint64_t a1)
{
  OUTLINED_FUNCTION_7_30(a1);
  OUTLINED_FUNCTION_12_21();
  return sub_266DAB2DC();
}

uint64_t sub_266D370D0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_7_30(a1);
  v4 = a2(a1);
  OUTLINED_FUNCTION_9_19(v4, v5, v6);

  return sub_266DAB2DC();
}

uint64_t sub_266D37194(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_7_30(a1);
  OUTLINED_FUNCTION_3_45(v1);
  return sub_266DAB2DC();
}

uint64_t sub_266D3722C(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_7_30(a1);
  a2(v5, a1);
  return sub_266DAB2DC();
}

uint64_t sub_266D37274(uint64_t a1)
{
  OUTLINED_FUNCTION_7_30(a1);
  MEMORY[0x26D5F1C20](a1);
  return sub_266DAB2DC();
}

uint64_t sub_266D372D0(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_11_24();
  }

  sub_266DAA7BC();
}

uint64_t sub_266D37348(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_2_54();
  }

  else
  {
    OUTLINED_FUNCTION_1_49();
  }

  sub_266DAA7BC();
}

uint64_t sub_266D373B8(void *a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_1_49();
      break;
    default:
      break;
  }

  sub_266DAA7BC();
}

uint64_t sub_266D374B8()
{
  OUTLINED_FUNCTION_5_37();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      OUTLINED_FUNCTION_5_37();
      break;
    default:
      break;
  }

  sub_266DAA7BC();
}

uint64_t sub_266D37598(void *a1, char a2)
{
  switch(a2)
  {
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_1_49();
      break;
  }

  sub_266DAA7BC();
}

uint64_t sub_266D37664(uint64_t a1, char a2)
{
  sub_266DAA7BC();
}

uint64_t sub_266D376BC(uint64_t a1, char a2)
{
  sub_266DAA7BC();
}

uint64_t sub_266D37764(void *a1, char a2)
{
  switch(a2)
  {
    case 3:
    case 4:
      OUTLINED_FUNCTION_1_49();
      break;
    default:
      break;
  }

  sub_266DAA7BC();
}

uint64_t sub_266D37824(uint64_t a1, char a2)
{
  sub_266DAA7BC();
}

uint64_t sub_266D3787C(uint64_t a1, char a2)
{
  sub_266DAA7BC();
}

uint64_t sub_266D378DC(void *a1, char a2)
{
  switch(a2)
  {
    case 5:
      OUTLINED_FUNCTION_1_49();
      break;
    default:
      break;
  }

  sub_266DAA7BC();
}

uint64_t sub_266D379C4(void *a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 7:
      OUTLINED_FUNCTION_1_49();
      break;
    default:
      break;
  }

  sub_266DAA7BC();
}

uint64_t sub_266D37B00(uint64_t a1, char a2)
{
  sub_266DAA7BC();
}

uint64_t sub_266D37B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_266DAA7BC();
}

uint64_t sub_266D37BDC(uint64_t a1, char a2)
{
  sub_266DAA7BC();
}

uint64_t sub_266D37C24(uint64_t a1, char a2)
{
  sub_266DAA7BC();
}

uint64_t sub_266D37C8C(uint64_t a1, unsigned __int8 a2)
{
  sub_266DAA7BC();
}

uint64_t sub_266D37D84(uint64_t a1)
{
  v1 = sub_266DAB2AC();
  OUTLINED_FUNCTION_3_45(v1);
  return sub_266DAB2DC();
}

uint64_t sub_266D37DC4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_44(a1, a2);
  sub_266DAA7BC();

  return sub_266DAB2DC();
}

uint64_t sub_266D37E38(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_44(a1, a2);
  sub_266DAA7BC();

  return sub_266DAB2DC();
}

uint64_t sub_266D37EBC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_4_44(a1, a2);
  if (v2)
  {
    v5 = 0x7269656874;
  }

  else
  {
    v5 = 31085;
  }

  OUTLINED_FUNCTION_6_32(v3, v5, v4);

  return sub_266DAB2DC();
}

uint64_t sub_266D37F4C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_4_44(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 28526;
    }

    else
    {
      v5 = 0x6C65636E6163;
    }
  }

  else
  {
    v5 = 7562617;
  }

  OUTLINED_FUNCTION_6_32(v3, v5, v4);

  return sub_266DAB2DC();
}

uint64_t sub_266D37FC4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_4_44(a1, a2);
  if (v2)
  {
    v5 = 0x79627261656ELL;
  }

  else
  {
    v5 = 6647407;
  }

  OUTLINED_FUNCTION_6_32(v3, v5, v4);

  return sub_266DAB2DC();
}

uint64_t sub_266D38028(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_4_44(a1, a2);
  if (v2)
  {
    v5 = 31085;
  }

  else
  {
    v5 = 6647407;
  }

  OUTLINED_FUNCTION_6_32(v3, v5, v4);

  return sub_266DAB2DC();
}

uint64_t sub_266D380B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_266DAB2AC();
  v5 = a3(a2);
  OUTLINED_FUNCTION_9_19(v5, v6, v7);

  return sub_266DAB2DC();
}

uint64_t sub_266D38108(uint64_t a1)
{
  sub_266DAB2AC();
  OUTLINED_FUNCTION_12_21();
  return sub_266DAB2DC();
}

uint64_t sub_266D38144(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_4_44(a1, a2);
  if (v2)
  {
    v5 = 0x63417463656C6573;
  }

  else
  {
    v5 = 0x49746361746E6F63;
  }

  OUTLINED_FUNCTION_6_32(v3, v5, v4);

  return sub_266DAB2DC();
}

uint64_t sub_266D381C0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_44(a1, a2);
  sub_266DAA7BC();

  return sub_266DAB2DC();
}

uint64_t sub_266D3828C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_266DAB2AC();
  a3(v6, a2);
  return sub_266DAB2DC();
}

uint64_t sub_266D382D8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_44(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_2_54();
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x72656E776FLL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_49();
    v7 = 0xD000000000000013;
  }

  OUTLINED_FUNCTION_6_32(v3, v7, v4);

  return sub_266DAB2DC();
}

uint64_t sub_266D3834C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_4_44(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x73656369766564;
    }

    else
    {
      v5 = 0x736D657469;
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_24();
  }

  OUTLINED_FUNCTION_6_32(v3, v5, v4);

  return sub_266DAB2DC();
}

uint64_t sub_266D383C8(uint64_t a1, uint64_t a2)
{
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](a2);
  return sub_266DAB2DC();
}

void sub_266D3840C()
{
  qword_2800CD268 = 0xD000000000000027;
  unk_2800CD270 = 0x8000000266DC37F0;
  qword_2800CD278 = 0xD000000000000018;
  unk_2800CD280 = 0x8000000266DC2510;
}

uint64_t static SetSharedLocationVisibilityInvocation.identifier.getter@<X0>(void *a1@<X8>)
{
  if (qword_2800C9408 != -1)
  {
    swift_once();
  }

  v2 = unk_2800CD270;
  v3 = qword_2800CD278;
  v4 = unk_2800CD280;
  *a1 = qword_2800CD268;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

BOOL sub_266D384DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_266DAAF8C();

  return v2 != 0;
}

BOOL sub_266D38588@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266D384DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_266D385F8@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D384DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D38624(uint64_t a1)
{
  v2 = sub_266D38830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D38660(uint64_t a1)
{
  v2 = sub_266D38830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetSharedLocationVisibilityInvocation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD288, &qword_266DBA150);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D38830();
  sub_266DAB34C();
  if (!v2)
  {
    v11 = sub_266DAB04C();
    v12 = SharedLocationVisibility.init(rawValue:)(v11);
    if (v13)
    {
      sub_266D38884();
      swift_allocError();
      swift_willThrow();
      (*(v7 + 8))(v10, v5);
    }

    else
    {
      v15 = v12;
      (*(v7 + 8))(v10, v5);
      *a2 = v15;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_266D38830()
{
  result = qword_2800CD290;
  if (!qword_2800CD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD290);
  }

  return result;
}

unint64_t sub_266D38884()
{
  result = qword_2800CD298;
  if (!qword_2800CD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD298);
  }

  return result;
}

uint64_t SetSharedLocationVisibilityInvocation.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD2A0, &qword_266DBA158);
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D38830();
  sub_266DAB36C();
  sub_266DAB0CC();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_266D38A08(uint64_t a1)
{
  OUTLINED_FUNCTION_7_30(a1);
  MEMORY[0x26D5F1C20](0);
  return sub_266DAB2DC();
}

unint64_t sub_266D38A94(void *a1)
{
  a1[1] = sub_266D38ACC();
  a1[2] = sub_266D38B20();
  result = sub_266D38B74();
  a1[3] = result;
  return result;
}

unint64_t sub_266D38ACC()
{
  result = qword_2800CD2A8;
  if (!qword_2800CD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD2A8);
  }

  return result;
}

unint64_t sub_266D38B20()
{
  result = qword_2800CD2B0;
  if (!qword_2800CD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD2B0);
  }

  return result;
}

unint64_t sub_266D38B74()
{
  result = qword_2800CD2B8;
  if (!qword_2800CD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD2B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SetSharedLocationVisibilityInvocation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SetSharedLocationVisibilityInvocation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

_BYTE *sub_266D38C28(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_266D38CD4()
{
  result = qword_2800CD2C0;
  if (!qword_2800CD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD2C0);
  }

  return result;
}

unint64_t sub_266D38D2C()
{
  result = qword_2800CD2C8;
  if (!qword_2800CD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD2C8);
  }

  return result;
}

unint64_t sub_266D38D84()
{
  result = qword_2800CD2D0;
  if (!qword_2800CD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD2D0);
  }

  return result;
}

unint64_t sub_266D38DDC()
{
  result = qword_2800CD2D8;
  if (!qword_2800CD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD2D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_45(uint64_t a1, ...)
{

  return sub_266DAA7BC();
}

void *OUTLINED_FUNCTION_4_44(uint64_t a1, uint64_t a2, ...)
{

  return sub_266DAB2AC();
}

uint64_t OUTLINED_FUNCTION_6_32(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_266DAA7BC();
}

void *OUTLINED_FUNCTION_7_30(uint64_t a1, ...)
{

  return sub_266DAB2AC();
}

uint64_t OUTLINED_FUNCTION_9_19(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_266DAA7BC();
}

void OUTLINED_FUNCTION_12_21()
{

  JUMPOUT(0x26D5F1C20);
}

uint64_t sub_266D38F44()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_28156F8A8);
  OUTLINED_FUNCTION_94(v0, qword_28156F8A8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v1 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v2 = *(*(v0 - 8) + 16);

  return v2(qword_28156F8A8, v1, v0);
}

uint64_t sub_266D3904C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697463697665 && a2 == 0xEC000000656D6954;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266D39114(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6E6F697463697665;
  }
}

uint64_t sub_266D39190(uint64_t a1)
{
  sub_266DAB2AC();
  sub_266C0AE04(v3, *v1);
  return sub_266DAB2DC();
}

uint64_t sub_266D391F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D3904C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D39250@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C1B114();
  *a1 = result;
  return result;
}

uint64_t sub_266D39284(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_266D392D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CacheEntry.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v15[0] = a2[4];
  v15[1] = v4;
  v6 = type metadata accessor for CacheEntry.CodingKeys(255, v4, v5, v15[0]);
  OUTLINED_FUNCTION_2_55(v6);
  v7 = sub_266DAB12C();
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266DAB36C();
  v17 = 0;
  v13 = v15[3];
  sub_266DAB0BC();
  if (!v13)
  {
    v16 = 1;
    sub_266DAB11C();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t CacheEntry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v34 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CacheEntry.CodingKeys(255, v10, v11, v12);
  OUTLINED_FUNCTION_2_55(v13);
  v41 = sub_266DAB07C();
  OUTLINED_FUNCTION_0_2();
  v36 = v14;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v38 = a2;
  v39 = a3;
  v18 = type metadata accessor for CacheEntry(0, a2, a3, a4);
  OUTLINED_FUNCTION_0_2();
  v33 = v19;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = v17;
  v23 = v42;
  sub_266DAB34C();
  if (!v23)
  {
    v24 = v38;
    v42 = v18;
    v25 = v36;
    v26 = v37;
    v44 = 0;
    v27 = v22;
    *v22 = sub_266DAAFEC();
    v22[8] = v28 & 1;
    v43 = 1;
    v29 = v26;
    v30 = v24;
    sub_266DAB05C();
    (*(v25 + 8))(v40, v41);
    v32 = v42;
    (*(v34 + 32))(&v27[*(v42 + 44)], v29, v30);
    (*(v33 + 32))(v35, v27, v32);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_266D39820@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for CacheEntry(255, *(*v1 + 80), *(*v1 + 88), *(*v1 + 96));
  sub_266DAAC1C();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  if ((*(v1 + qword_28156FB58) & 1) != 0 || (v7 = [objc_opt_self() defaultManager], sub_266DA735C(), v8 = sub_266DAA6FC(), , v9 = objc_msgSend(v7, sel_fileExistsAtPath_, v8), v7, v8, !v9))
  {
    if (qword_28156F8A0 != -1)
    {
      OUTLINED_FUNCTION_0_68(&qword_28156F8A0);
    }

    v10 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v10, qword_28156F8A8);

    v11 = sub_266DA948C();
    v12 = sub_266DAAB0C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_14_0();
      v14 = OUTLINED_FUNCTION_13_0();
      v35 = v14;
      *v13 = 136315138;
      v15 = sub_266DA735C();
      sub_266C22A3C(v15, v16, &v35);
      OUTLINED_FUNCTION_9_20();
      *(v13 + 4) = v2;
      _os_log_impl(&dword_266C08000, v11, v12, "Cache file %s does not exist", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    OUTLINED_FUNCTION_5_38();

    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  else
  {
    v21 = sub_266DA738C();
    v23 = v22;
    sub_266DA6FEC();
    swift_allocObject();
    sub_266DA6FDC();
    swift_getWitnessTable();
    sub_266DA6FCC();
    sub_266C2BB04(v21, v23);

    OUTLINED_FUNCTION_5_38();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    (*(*(v3 - 8) + 32))(v34, v6, v3);
    OUTLINED_FUNCTION_5_38();
    return __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }
}

void sub_266D39DAC(uint64_t a1)
{
  v2 = *v1;
  sub_266DA701C();
  swift_allocObject();
  sub_266DA700C();
  type metadata accessor for CacheEntry(0, v2[10], v2[11], v2[12]);
  swift_getWitnessTable();
  v3 = sub_266DA6FFC();
  v5 = v4;
  sub_266DA73DC();
  *(v1 + qword_28156FB58) = 0;
  if (qword_28156F8A0 != -1)
  {
    OUTLINED_FUNCTION_0_68(&qword_28156F8A0);
  }

  v6 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v6, qword_28156F8A8);

  v7 = sub_266DA948C();
  v8 = sub_266DAAB0C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_14_0();
    v10 = OUTLINED_FUNCTION_13_0();
    v15 = v10;
    *v9 = 136315138;
    v11 = sub_266DA735C();
    v13 = sub_266C22A3C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_266C08000, v7, v8, "Wrote cache to %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
    sub_266C2BB04(v3, v5);

    OUTLINED_FUNCTION_22_7();
  }

  else
  {
    sub_266C2BB04(v3, v5);

    OUTLINED_FUNCTION_22_7();
  }
}

void sub_266D3A1A8()
{
  v2 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();
  v4 = [v3 defaultManager];
  sub_266DA735C();
  sub_266DAA6FC();
  OUTLINED_FUNCTION_9_20();
  v5 = [v4 fileExistsAtPath_];

  if (v5)
  {
    *(v2 + qword_28156FB58) = 1;
    v6 = [v3 defaultManager];
    v7 = sub_266DA732C();
    v24[0] = 0;
    v8 = [v6 removeItemAtURL:v7 error:v24];

    v9 = v24[0];
    if (v8)
    {

      v10 = v9;
    }

    else
    {
      v11 = v24[0];
      v12 = sub_266DA72FC();

      swift_willThrow();
      if (qword_28156F8A0 != -1)
      {
        OUTLINED_FUNCTION_0_68(&qword_28156F8A0);
      }

      v13 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v13, qword_28156F8A8);

      v14 = v12;
      v15 = sub_266DA948C();
      v16 = sub_266DAAAFC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v24[0] = swift_slowAlloc();
        *v17 = 136315394;
        v18 = sub_266DA735C();
        v20 = sub_266C22A3C(v18, v19, v24);

        *(v17 + 4) = v20;
        *(v17 + 12) = 2082;
        swift_getErrorValue();
        v21 = sub_266DAB23C();
        v23 = sub_266C22A3C(v21, v22, v24);

        *(v17 + 14) = v23;
        _os_log_impl(&dword_266C08000, v15, v16, "Could not delete the cache file at %s due to %{public}s", v17, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }

      else
      {
      }
    }
  }
}

uint64_t DiskCacher.deinit()
{

  v1 = qword_28156FB50;
  v2 = sub_266DA737C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DiskCacher.__deallocating_deinit()
{
  DiskCacher.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_266D3A600(uint64_t a1)
{
  sub_266D3AA08();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_266D3A688(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload((a1 + v7 + 9) & ~v7, v6, v4);
  }

  v9 = ((v7 + 9) & ~v7) + *(*(v4 - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 9) & ~v7, v6, v4);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_19;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return v6 + (v9 | v13) + 1;
}

void sub_266D3A7E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 9) & ~v9) + *(v7 + 64);
  v11 = 8 * v10;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          v20 = &a1[v9 + 9] & ~v9;

          __swift_storeEnumTagSinglePayload(v20, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v10)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_266D3AA08()
{
  if (!qword_28156EFE0)
  {
    v0 = sub_266DAAC1C();
    if (!v1)
    {
      atomic_store(v0, &qword_28156EFE0);
    }
  }
}

uint64_t sub_266D3AA94(uint64_t a1)
{
  result = sub_266DA737C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *sub_266D3ABD4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_68(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_55(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_9_20()
{
}

uint64_t static Snippets.carPlayFriendLocation(friend:userLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_4_3(v6);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  OUTLINED_FUNCTION_2_56();
  sub_266D3BA78(a1, a3);
  sub_266C36200(a2, v9);
  v10 = *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
  v11 = type metadata accessor for Location(0);
  __swift_storeEnumTagSinglePayload(a3 + v10, 1, 1, v11);
  sub_266C25700(v9, a3 + v10);
  type metadata accessor for Snippets(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Snippets.CarPlayFriendLocation.init(friend:userLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
  v7 = type metadata accessor for Location(0);
  __swift_storeEnumTagSinglePayload(a3 + v6, 1, 1, v7);
  OUTLINED_FUNCTION_1_50();
  sub_266D3B2E0(a1, a3);

  return sub_266C25700(a2, a3 + v6);
}

uint64_t type metadata accessor for Snippets.CarPlayFriendLocation(uint64_t a1)
{
  result = qword_2800CD320;
  if (!qword_2800CD320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D3AF48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Snippets.CarPlayFriendLocation.userLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);

  return sub_266C36200(v3, a1);
}

uint64_t Snippets.CarPlayFriendLocation.userLocation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);

  return sub_266C25700(a1, v3);
}

BOOL static Snippets.CarPlayFriendLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Location(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_4_3(v8);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD2E0, &qword_266DBA698);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  static Friend.== infix(_:_:)(a1, a2);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
  v18 = *(v12 + 48);
  sub_266C36200(a1 + v17, v15);
  sub_266C36200(a2 + v17, &v15[v18]);
  OUTLINED_FUNCTION_17_8(v15);
  if (v19)
  {
    OUTLINED_FUNCTION_17_8(&v15[v18]);
    if (v19)
    {
      sub_266C1825C(v15, &qword_2800C9B20, &unk_266DB1EC0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_266C36200(v15, v11);
  OUTLINED_FUNCTION_17_8(&v15[v18]);
  if (v19)
  {
    sub_266D3BAD4(v11, type metadata accessor for Location);
LABEL_10:
    sub_266C1825C(v15, &qword_2800CD2E0, &qword_266DBA698);
    return 0;
  }

  sub_266D3B2E0(&v15[v18], v7);
  v21 = static Location.== infix(_:_:)(v11, v7);
  sub_266D3BAD4(v7, type metadata accessor for Location);
  sub_266D3BAD4(v11, type metadata accessor for Location);
  sub_266C1825C(v15, &qword_2800C9B20, &unk_266DB1EC0);
  return (v21 & 1) != 0;
}

uint64_t sub_266D3B2E0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_2();
  v5(v4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_266D3B33C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E65697266 && a2 == 0xE600000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61636F4C72657375 && a2 == 0xEC0000006E6F6974)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266D3B404(char a1)
{
  if (a1)
  {
    return 0x61636F4C72657375;
  }

  else
  {
    return 0x646E65697266;
  }
}

uint64_t sub_266D3B448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D3B33C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D3B470(uint64_t a1)
{
  v2 = sub_266D3B6A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D3B4AC(uint64_t a1)
{
  v2 = sub_266D3B6A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippets.CarPlayFriendLocation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD2E8, &qword_266DBA6A0);
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D3B6A0();
  sub_266DAB36C();
  v14[15] = 0;
  type metadata accessor for Friend(0);
  OUTLINED_FUNCTION_3_46();
  sub_266D3BBBC(v9, v10, &protocol conformance descriptor for Friend);
  OUTLINED_FUNCTION_7_31();
  sub_266DAB11C();
  if (!v1)
  {
    type metadata accessor for Snippets.CarPlayFriendLocation(0);
    v14[14] = 1;
    type metadata accessor for Location(0);
    OUTLINED_FUNCTION_4_45();
    sub_266D3BBBC(v11, v12, &protocol conformance descriptor for Location);
    OUTLINED_FUNCTION_7_31();
    sub_266DAB0DC();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_266D3B6A0()
{
  result = qword_2800CD2F0;
  if (!qword_2800CD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD2F0);
  }

  return result;
}

uint64_t Snippets.CarPlayFriendLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_4_3(v3);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  type metadata accessor for Friend(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_6();
  v33 = v9 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD300, &qword_266DBA6A8);
  OUTLINED_FUNCTION_0_2();
  v32 = v10;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for Snippets.CarPlayFriendLocation(0);
  v15 = OUTLINED_FUNCTION_4_3(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_6();
  v18 = v17 - v16;
  v20 = *(v19 + 28);
  v21 = type metadata accessor for Location(0);
  v36 = v20;
  __swift_storeEnumTagSinglePayload(v18 + v20, 1, 1, v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D3B6A0();
  v22 = v35;
  sub_266DAB34C();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_266C1825C(v18 + v36, &qword_2800C9B20, &unk_266DB1EC0);
  }

  else
  {
    v23 = v32;
    v38 = 0;
    OUTLINED_FUNCTION_3_46();
    sub_266D3BBBC(v24, v25, &protocol conformance descriptor for Friend);
    sub_266DAB05C();
    OUTLINED_FUNCTION_1_50();
    sub_266D3B2E0(v33, v18);
    v37 = 1;
    OUTLINED_FUNCTION_4_45();
    sub_266D3BBBC(v26, v27, &protocol conformance descriptor for Location);
    v28 = v6;
    v29 = v34;
    sub_266DAB00C();
    (*(v23 + 8))(v13, v29);
    sub_266C25700(v28, v18 + v36);
    sub_266D3BA78(v18, v31);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_266D3BAD4(v18, type metadata accessor for Snippets.CarPlayFriendLocation);
  }
}

uint64_t sub_266D3BA78(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_2();
  v5(v4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_266D3BAD4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_266D3BBBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_266D3BC60(uint64_t a1)
{
  type metadata accessor for Friend(319);
  if (v1 <= 0x3F)
  {
    sub_266D3BCE4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_266D3BCE4(uint64_t a1)
{
  if (!qword_2800CD330)
  {
    type metadata accessor for Location(255);
    v1 = sub_266DAAC1C();
    if (!v2)
    {
      atomic_store(v1, &qword_2800CD330);
    }
  }
}

_BYTE *_s21CarPlayFriendLocationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266D3BE1C()
{
  result = qword_2800CD338;
  if (!qword_2800CD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD338);
  }

  return result;
}

unint64_t sub_266D3BE74()
{
  result = qword_2800CD340;
  if (!qword_2800CD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD340);
  }

  return result;
}

unint64_t sub_266D3BECC()
{
  result = qword_2800CD348;
  if (!qword_2800CD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD348);
  }

  return result;
}

SiriFindMy::MeDeviceInfo __swiftcall MeDeviceInfo.init(isThisDevice:deviceName:supportsAutoMe:)(Swift::Bool isThisDevice, Swift::String_optional deviceName, Swift::Bool supportsAutoMe)
{
  *v3 = isThisDevice;
  *(v3 + 8) = deviceName;
  *(v3 + 24) = supportsAutoMe;
  result.deviceName = deviceName;
  result.supportsAutoMe = supportsAutoMe;
  result.isThisDevice = isThisDevice;
  return result;
}

uint64_t MeDeviceInfo.deviceName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MeDeviceInfo.deviceName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static MeDeviceInfo.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = a1[24];
  v6 = *(a2 + 2);
  v7 = a2[24];
  if (v4)
  {
    if (v6)
    {
      v8 = *(a1 + 1) == *(a2 + 1) && v4 == v6;
      if (v8 || (sub_266DAB17C() & 1) != 0)
      {
        return v5 ^ v7 ^ 1u;
      }
    }
  }

  else if (!v6)
  {
    return v5 ^ v7 ^ 1u;
  }

  return 0;
}

uint64_t sub_266D3C114(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6544736968547369 && a2 == 0xEC00000065636976;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7374726F70707573 && a2 == 0xEE00654D6F747541)
    {

      return 2;
    }

    else
    {
      v8 = sub_266DAB17C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_266D3C238(char a1)
{
  if (!a1)
  {
    return 0x6544736968547369;
  }

  if (a1 == 1)
  {
    return 0x614E656369766564;
  }

  return 0x7374726F70707573;
}

uint64_t sub_266D3C2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D3C114(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D3C2D8(uint64_t a1)
{
  v2 = sub_266D3C4EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D3C314(uint64_t a1)
{
  v2 = sub_266D3C4EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MeDeviceInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD350, &qword_266DBA8A0);
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  v10 = *(v1 + 8);
  v12[0] = *(v1 + 16);
  v12[1] = v10;
  v13 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D3C4EC();
  sub_266DAB36C();
  v16 = 0;
  sub_266DAB0FC();
  if (!v2)
  {
    v15 = 1;
    sub_266DAB09C();
    v14 = 2;
    sub_266DAB0FC();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_266D3C4EC()
{
  result = qword_2800CD358;
  if (!qword_2800CD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD358);
  }

  return result;
}

uint64_t MeDeviceInfo.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_266DAB2CC();
  sub_266DAB2CC();
  if (v2)
  {
    sub_266DAA7BC();
  }

  return sub_266DAB2CC();
}

uint64_t MeDeviceInfo.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_266DAB2AC();
  sub_266DAB2CC();
  sub_266DAB2CC();
  if (v1)
  {
    sub_266DAA7BC();
  }

  sub_266DAB2CC();
  return sub_266DAB2DC();
}

uint64_t MeDeviceInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD360, &qword_266DBA8A8);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D3C4EC();
  sub_266DAB34C();
  if (!v2)
  {
    v21 = 0;
    OUTLINED_FUNCTION_0_69();
    v11 = sub_266DAB02C();
    v20 = 1;
    OUTLINED_FUNCTION_0_69();
    v12 = sub_266DAAFCC();
    v15 = v14;
    v18 = v12;
    v19 = 2;
    OUTLINED_FUNCTION_0_69();
    v16 = sub_266DAB02C();
    (*(v7 + 8))(v10, v5);
    *a2 = v11 & 1;
    *(a2 + 8) = v18;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_266D3C850(uint64_t a1)
{
  v2 = v1[24];
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = v2;
  sub_266DAB2AC();
  MeDeviceInfo.hash(into:)(v4);
  return sub_266DAB2DC();
}

unint64_t sub_266D3C8AC()
{
  result = qword_2800CD368;
  if (!qword_2800CD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD368);
  }

  return result;
}

uint64_t sub_266D3C904(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266D3C958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MeDeviceInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266D3CAA0()
{
  result = qword_2800CD370;
  if (!qword_2800CD370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD370);
  }

  return result;
}

unint64_t sub_266D3CAF8()
{
  result = qword_2800CD378;
  if (!qword_2800CD378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD378);
  }

  return result;
}

unint64_t sub_266D3CB50()
{
  result = qword_2800CD380;
  if (!qword_2800CD380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD380);
  }

  return result;
}

uint64_t sub_266D3CBB4()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CD388);
  v1 = __swift_project_value_buffer(v0, qword_2800CD388);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_266D3CC7C@<X0>(uint64_t *__return_ptr a1@<X8>, unsigned __int8 *__src@<X0>, void *a3@<X1>)
{
  v5 = __src[1];
  memcpy(__dst, __src, 0xF2uLL);
  result = sub_266C9D0E0(__dst);
  if (result == 1)
  {
LABEL_2:
    v7 = 7;
    goto LABEL_13;
  }

  memcpy(__srca, &__dst[120], 0x7AuLL);
  result = sub_266CFBE34(__srca);
  if (result == 1)
  {
    if (v5 != 2 && (v5 & 1) != 0)
    {
      v7 = 4;
      goto LABEL_13;
    }

    goto LABEL_2;
  }

  memcpy(v10, __srca, 0x79uLL);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  result = sub_266C258B4(v10);
  if (result == 2)
  {
    v8 = 6;
  }

  else
  {
    v8 = 7;
  }

  if (result == 1)
  {
    v7 = 5;
  }

  else
  {
    v7 = v8;
  }

LABEL_13:
  *a1 = v7;
  return result;
}

void sub_266D3CD60(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_266C9C118(v8, v9, *v10, a2);
  *a5 = v11;
}

void sub_266D3CDE0(uint64_t a1)
{
  v1 = 0;
  v18 = *(a1 + 16);
  v17 = a1 + 32;
  v2 = MEMORY[0x277D84F90];
  while (v1 != v18)
  {
    v20 = v2;
    memcpy(__dst, (v17 + 160 * v1), 0x99uLL);
    sub_266C9CF60(__dst, v27);
    v3 = sub_266D3D0C4();
    v4 = v3[2];
    if (v4)
    {
      v19 = v1;
      v26 = MEMORY[0x277D84F90];
      sub_266C38AA8(0, v4, 0);
      v5 = v26;
      v6 = v4 - 1;
      for (i = 4; ; i += 9)
      {
        memcpy(__src, &v3[i], 0x41uLL);
        memcpy(v22, __dst, 0x58uLL);
        memcpy(v24, &__dst[88], 0x41uLL);
        sub_266C9CF60(__dst, v21);
        sub_266D3D648(__src, v21);
        sub_266C3A088(v24, &qword_2800C9FD0, &qword_266DAF9A0);
        memcpy(&v22[88], __src, 0x41uLL);
        memcpy(v25, v22, 0x99uLL);
        memcpy(v27, v22, 0x99uLL);
        sub_266C9CF60(v25, v21);
        sub_266C9D1E0(v27);
        v26 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_266C38AA8((v8 > 1), v9 + 1, 1);
          v5 = v26;
        }

        *(v5 + 16) = v9 + 1;
        memcpy((v5 + 160 * v9 + 32), v25, 0x99uLL);
        if (!v6)
        {
          break;
        }

        --v6;
      }

      sub_266C9D1E0(__dst);
      v1 = v19;
    }

    else
    {

      sub_266C9D1E0(__dst);
      v5 = MEMORY[0x277D84F90];
    }

    v2 = v20;
    v10 = *(v5 + 16);
    v11 = *(v20 + 16);
    if (__OFADD__(v11, v10))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || (v12 = *(v20 + 24) >> 1, v12 < v11 + v10))
    {
      sub_266CFA2C4();
      v2 = v13;
      v12 = *(v13 + 24) >> 1;
    }

    if (*(v5 + 16))
    {
      if (v12 - *(v2 + 16) < v10)
      {
        goto LABEL_25;
      }

      swift_arrayInitWithCopy();

      if (v10)
      {
        v14 = *(v2 + 16);
        v15 = __OFADD__(v14, v10);
        v16 = v14 + v10;
        if (v15)
        {
          goto LABEL_26;
        }

        *(v2 + 16) = v16;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_24;
      }
    }

    ++v1;
  }
}

void *sub_266D3D0C4()
{
  v1 = [v0 deviceOwner];
  if (!v1)
  {
    return &unk_28785CBE0;
  }

  v2 = v1;
  v3 = sub_266D3D6B8(v1);
  if (!v3)
  {
LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FC8, &qword_266DAF998);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_266DAE4A0;
    sub_266D3D2F8(v2, __src);
    memcpy((v11 + 32), __src, 0x41uLL);

    return v11;
  }

  v4 = v3;
  if (!sub_266C3A14C())
  {

    goto LABEL_19;
  }

  v5 = sub_266C3A14C();
  if (!v5)
  {

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v18 = MEMORY[0x277D84F90];
  v7 = v5 & ~(v5 >> 63);
  v8 = v0;
  result = sub_266C38BE4(0, v7, 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v18;
    v12 = v6 - 1;
    if ((v4 & 0xC000000000000001) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    for (i = MEMORY[0x26D5F1780](v10, v4); ; i = *(v4 + 8 * v10 + 32))
    {
      v14 = i;
      sub_266D3D2F8(i, __src);

      v18 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_266C38BE4((v15 > 1), v16 + 1, 1);
        v11 = v18;
      }

      memcpy(__dst, __src, sizeof(__dst));
      *(v11 + 16) = v16 + 1;
      result = memcpy((v11 + 72 * v16 + 32), __dst, 0x41uLL);
      if (v12 == v10)
      {

        return v11;
      }

      ++v10;
      if ((v4 & 0xC000000000000001) != 0)
      {
        goto LABEL_7;
      }

LABEL_8:
      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_266D3D2F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F80, &unk_266DB1ED0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v43 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v43 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v43 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v43 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  v22 = [a1 nameComponents];
  if (v22)
  {
    v23 = v22;
    sub_266DA729C();

    v24 = sub_266DA72DC();
    v25 = 0;
  }

  else
  {
    v24 = sub_266DA72DC();
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v19, v25, 1, v24);
  sub_266D3D718(v19, v21);
  sub_266DA72DC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v24);
  v27 = 0;
  v28 = 0;
  if (!EnumTagSinglePayload)
  {
    v27 = sub_266DA721C();
    v28 = v29;
  }

  v44 = v27;
  sub_266C3A088(v21, &qword_2800C9F80, &unk_266DB1ED0);
  v30 = [a1 nameComponents];
  if (v30)
  {
    v31 = v30;
    sub_266DA729C();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v32, 1, v24);
  sub_266D3D718(v13, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v24))
  {
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v33 = sub_266DA72AC();
    v34 = v35;
  }

  sub_266C3A088(v16, &qword_2800C9F80, &unk_266DB1ED0);
  v36 = [a1 nameComponents];
  if (v36)
  {
    v37 = v36;
    sub_266DA729C();

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v38, 1, v24);
  sub_266D3D718(v7, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v24))
  {
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v39 = sub_266DA723C();
    v40 = v41;
  }

  sub_266C3A088(v10, &qword_2800C9F80, &unk_266DB1ED0);
  result = [a1 isMe];
  *a2 = v44;
  *(a2 + 8) = v28;
  *(a2 + 16) = v33;
  *(a2 + 24) = v34;
  *(a2 + 32) = v39;
  *(a2 + 40) = v40;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = result;
  return result;
}

uint64_t sub_266D3D648(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FD0, &qword_266DAF9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266D3D6B8(void *a1)
{
  v1 = [a1 alternatives];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_266C9A2C4();
  v3 = sub_266DAA93C();

  return v3;
}

uint64_t sub_266D3D718(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F80, &unk_266DB1ED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266D3D788@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v45 = type metadata accessor for Snippets.Contact(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_19();
  v42 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F48, &unk_266DBDCA0);
  OUTLINED_FUNCTION_0_2();
  v43 = v7;
  v44 = v6;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = (&v40 - v9);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v40 = a2;
    v51 = MEMORY[0x277D84F90];
    sub_266C38A28(0, v11, 0);
    v13 = 0;
    v14 = (a1 + 48);
    v12 = v51;
    v41 = v11;
    v15 = v42;
    do
    {
      v16 = *(v14 - 2);
      v48 = *(v14 - 1);
      v49 = v16;
      v17 = *v14;
      v50 = v13;
      swift_bridgeObjectRetain_n();
      v18 = v17;
      v19 = sub_266DAB13C();
      v46 = v20;
      v47 = v19;
      v21 = v45;
      sub_266DA749C();
      v22 = [v18 displayName];
      v23 = sub_266DAA70C();
      v25 = v24;

      *v15 = v23;
      v15[1] = v25;
      v26 = sub_266C39CB4(v18);
      v28 = v27;

      if (v28)
      {
        v29 = v26;
      }

      else
      {
        v29 = 0;
      }

      v30 = 0xE000000000000000;
      if (v28)
      {
        v30 = v28;
      }

      v31 = *(v44 + 44);
      v15[2] = v29;
      v15[3] = v30;
      v32 = (v15 + *(v21 + 28));
      v33 = v46;
      *v32 = v47;
      v32[1] = v33;
      sub_266D3FA8C(v15, v10 + v31, type metadata accessor for Snippets.Contact);

      v34 = v48;

      *v10 = v49;
      v10[1] = v34;
      v51 = v12;
      v36 = *(v12 + 16);
      v35 = *(v12 + 24);
      if (v36 >= v35 >> 1)
      {
        OUTLINED_FUNCTION_7_32(v35);
        v12 = v51;
      }

      ++v13;
      *(v12 + 16) = v36 + 1;
      OUTLINED_FUNCTION_6_33();
      sub_266CC5990(v10, v12 + v37 + *(v38 + 72) * v36, &qword_2800C9F48, &unk_266DBDCA0);
      v14 += 3;
    }

    while (v41 != v13);
    a2 = v40;
  }

  *a2 = v12;
  type metadata accessor for Snippets(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Snippets.DisambiguationItem.init(id:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  v10 = type metadata accessor for Snippets.DisambiguationItem(0, a4, a5, a6);
  v11 = *(*(a4 - 8) + 32);
  v12 = a7 + *(v10 + 44);

  return v11(v12, a3, a4);
}

id sub_266D3DAE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  v5 = v36 - v4;
  v41 = type metadata accessor for Location(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_19();
  v40 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD5A0, &qword_266DBAEF8);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = (v36 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC8D0, &qword_266DB6F30);
  OUTLINED_FUNCTION_0_2();
  v36[1] = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v38 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v36[0] = v36 - v16;
  result = sub_266C3A14C();
  v18 = 0;
  v44 = a1 & 0xC000000000000001;
  v45 = result;
  v42 = a1 & 0xFFFFFFFFFFFFFF8;
  v43 = a1;
  v39 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v45 == v18)
    {
      *v37 = v39;
      type metadata accessor for Snippets(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v44)
    {
      result = MEMORY[0x26D5F1780](v18, v43);
    }

    else
    {
      if (v18 >= *(v42 + 16))
      {
        goto LABEL_22;
      }

      result = *(v43 + 8 * v18 + 32);
    }

    v19 = result;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    v20 = sub_266C1CEB4(result);
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      v46 = v18;
      v24 = v19;
      v25 = sub_266DAB13C();
      sub_266C61918(v24, v25, v26, v5);
      if (__swift_getEnumTagSinglePayload(v5, 1, v41) != 1)
      {
        v28 = v40;
        sub_266D3FA8C(v5, v40, type metadata accessor for Location);
        sub_266D3FA8C(v28, v10 + *(v11 + 44), type metadata accessor for Location);
        v27 = 0;
        *v10 = v22;
        v10[1] = v23;
        goto LABEL_12;
      }

      sub_266C1825C(v5, &qword_2800C9B20, &unk_266DB1EC0);
    }

    v27 = 1;
LABEL_12:
    __swift_storeEnumTagSinglePayload(v10, v27, 1, v11);

    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      result = sub_266C1825C(v10, &qword_2800CD5A0, &qword_266DBAEF8);
      ++v18;
    }

    else
    {
      v29 = v36[0];
      sub_266CC5990(v10, v36[0], &qword_2800CC8D0, &qword_266DB6F30);
      sub_266CC5990(v29, v38, &qword_2800CC8D0, &qword_266DB6F30);
      v30 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266CF9F94();
        v30 = v34;
      }

      v31 = *(v30 + 16);
      if (v31 >= *(v30 + 24) >> 1)
      {
        sub_266CF9F94();
        v30 = v35;
      }

      *(v30 + 16) = v31 + 1;
      OUTLINED_FUNCTION_6_33();
      v39 = v30;
      result = sub_266CC5990(v38, v30 + v32 + *(v33 + 72) * v31, &qword_2800CC8D0, &qword_266DB6F30);
      ++v18;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void *sub_266D3DF40@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F48, &unk_266DBDCA0);
  OUTLINED_FUNCTION_0_2();
  v61 = v5;
  v62 = v4;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v8 = (&v53 - v7);
  if (a1 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_266DAAD5C())
  {
    v10 = MEMORY[0x277D84F90];
    if (!i)
    {
LABEL_34:
      *a2 = v10;
      type metadata accessor for Snippets(0);
      return swift_storeEnumTagMultiPayload();
    }

    v67 = MEMORY[0x277D84F90];
    result = sub_266C38A28(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v54 = a2;
    v10 = v67;
    v12 = sub_266C3A14C();
    v13 = 0;
    v56 = a1 & 0xFFFFFFFFFFFFFF8;
    v59 = a1 & 0xC000000000000001;
    v60 = v12 & ~(v12 >> 63);
    *&v14 = 136315138;
    v55 = v14;
    v57 = a1;
    v58 = i;
    v65 = v8;
    while (v60 != v13)
    {
      if (v59)
      {
        v15 = MEMORY[0x26D5F1780](v13, a1);
      }

      else
      {
        if (v13 >= *(v56 + 16))
        {
          goto LABEL_37;
        }

        v15 = *(a1 + 8 * v13 + 32);
      }

      v16 = v15;
      sub_266C39CB4(v15);
      v64 = v10;
      if (v17)
      {
      }

      else
      {
        if (qword_28156F1D8 != -1)
        {
          swift_once();
        }

        v18 = sub_266DA94AC();
        __swift_project_value_buffer(v18, &unk_28156F1E0);
        v19 = v16;
        v20 = sub_266DA948C();
        v21 = sub_266DAAAFC();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v66 = v23;
          *v22 = v55;
          v24 = v19;
          v25 = [v24 description];
          v26 = sub_266DAA70C();
          v28 = v27;

          v29 = sub_266C22A3C(v26, v28, &v66);

          *(v22 + 4) = v29;
          __swift_destroy_boxed_opaque_existential_0(v23);
          MEMORY[0x26D5F2480](v23, -1, -1);
          MEMORY[0x26D5F2480](v22, -1, -1);
        }
      }

      v30 = sub_266C39CB4(v16);
      if (v31)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0;
      }

      v63 = v32;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = 0xE000000000000000;
      }

      v66 = v13;
      v34 = v16;
      v35 = sub_266DAB13C();
      v37 = v36;
      v38 = (v65 + *(v62 + 44));
      v39 = type metadata accessor for Snippets.Contact(0);
      sub_266DA749C();
      v40 = [v34 displayName];
      v41 = sub_266DAA70C();
      v43 = v42;

      *v38 = v41;
      v38[1] = v43;
      v44 = sub_266C39CB4(v34);
      v46 = v45;

      if (v46)
      {
        v47 = v44;
      }

      else
      {
        v47 = 0;
      }

      v48 = 0xE000000000000000;
      if (v46)
      {
        v48 = v46;
      }

      v38[2] = v47;
      v38[3] = v48;
      v49 = (v38 + *(v39 + 28));
      v8 = v65;
      *v49 = v35;
      v49[1] = v37;
      v10 = v64;
      *v8 = v63;
      v8[1] = v33;
      v67 = v10;
      a1 = *(v10 + 16);
      v50 = *(v10 + 24);
      a2 = (a1 + 1);
      if (a1 >= v50 >> 1)
      {
        OUTLINED_FUNCTION_7_32(v50);
        v10 = v67;
      }

      *(v10 + 16) = a2;
      OUTLINED_FUNCTION_6_33();
      sub_266CC5990(v8, v10 + v51 + *(v52 + 72) * a1, &qword_2800C9F48, &unk_266DBDCA0);
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_36;
      }

      ++v13;
      a1 = v57;
      if (v58 == v13)
      {
        a2 = v54;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  __break(1u);
  return result;
}

uint64_t Snippets.Disambiguation.items.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_266D3E400(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_266DAB17C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_266D3E4B4(uint64_t a1)
{
  sub_266DAB2AC();
  sub_266C1617C();
  return sub_266DAB2DC();
}

uint64_t sub_266D3E50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D3E400(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_266D3E56C@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_1();
  *a1 = result & 1;
  return result;
}

uint64_t sub_266D3E5A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_266D3E5F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void Snippets.Disambiguation.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27();
  v21 = v20;
  v23 = v22[2];
  v30 = v22[3];
  v31 = v23;
  v29 = v22[4];
  _s14DisambiguationV10CodingKeysOMa(255, v23, v30, v29);
  OUTLINED_FUNCTION_2_57();
  swift_getWitnessTable();
  v24 = sub_266DAB12C();
  OUTLINED_FUNCTION_0_2();
  v32 = v25;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v29 - v27;
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);

  sub_266DAB36C();
  type metadata accessor for Snippets.DisambiguationItem(255, v31, v30, v29);
  sub_266DAA97C();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_266DAB11C();

  (*(v32 + 8))(v28, v24);
  OUTLINED_FUNCTION_26();
}

void Snippets.Disambiguation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_27();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v26 = v17;
  v28 = v18;
  _s14DisambiguationV10CodingKeysOMa(255, v13, v11, v18);
  OUTLINED_FUNCTION_2_57();
  swift_getWitnessTable();
  v29 = sub_266DAB07C();
  OUTLINED_FUNCTION_0_2();
  v27 = v19;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v25 - v21;
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_266DAB34C();
  if (!v10)
  {
    v23 = v27;
    type metadata accessor for Snippets.DisambiguationItem(255, v14, v12, v28);
    sub_266DAA97C();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    v24 = v29;
    sub_266DAB05C();
    (*(v23 + 8))(v22, v24);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_0(v16);
  OUTLINED_FUNCTION_26();
}

uint64_t Snippets.DisambiguationItem.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Snippets.DisambiguationItem.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_266D3EB78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_266D3EC34(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_266D3EC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D3EB78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D3ECA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_266D3ECF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void Snippets.DisambiguationItem.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_27();
  v40 = v23;
  v41 = v24;
  v26 = v25;
  v28 = v27;
  v29 = *(v25 + 16);
  v30 = *(v26 + 24);
  v39[0] = *(v26 + 32);
  v39[1] = v29;
  v31 = _s18DisambiguationItemV10CodingKeysOMa(255, v29, v30, v39[0]);
  OUTLINED_FUNCTION_3_47(v31);
  v32 = sub_266DAB12C();
  OUTLINED_FUNCTION_0_2();
  v34 = v33;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v35);
  v37 = v39 - v36;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_266DAB36C();
  v38 = v41;
  sub_266DAB0EC();
  if (!v38)
  {
    sub_266DAB11C();
  }

  (*(v34 + 8))(v37, v32);
  OUTLINED_FUNCTION_26();
}

void Snippets.DisambiguationItem.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_27();
  v68 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v61 = v32;
  v60 = *(v28 - 8);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12_19();
  v63 = v33;
  v37 = _s18DisambiguationItemV10CodingKeysOMa(255, v34, v35, v36);
  OUTLINED_FUNCTION_3_47(v37);
  v67 = sub_266DAB07C();
  OUTLINED_FUNCTION_0_2();
  v62 = v38;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v39);
  v41 = &v57 - v40;
  v64 = v29;
  v65 = v27;
  v42 = type metadata accessor for Snippets.DisambiguationItem(0, v29, v27, v25);
  OUTLINED_FUNCTION_0_2();
  v59 = v43;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v44);
  v46 = (&v57 - v45);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  v66 = v41;
  v47 = v68;
  sub_266DAB34C();
  if (v47)
  {
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    v68 = v31;
    v58 = v42;
    v49 = v62;
    v48 = v63;
    v50 = v64;
    v51 = v46;
    *v46 = sub_266DAB01C();
    v46[1] = v52;
    v53 = v48;
    v54 = v50;
    sub_266DAB05C();
    (*(v49 + 8))(v66, v67);
    v55 = v58;
    (*(v60 + 32))(v51 + *(v58 + 44), v53, v54);
    v56 = v59;
    (*(v59 + 16))(v61, v51, v55);
    __swift_destroy_boxed_opaque_existential_0(v68);
    (*(v56 + 8))(v51, v55);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_266D3F228@<X0>(uint64_t *a1@<X8>)
{
  result = Snippets.DisambiguationItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static Snippets.DisambiguationItem<>.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1 == *a2 && a1[1] == a2[1];
  if (!v9 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Snippets.DisambiguationItem(0, a3, a4, a5);
  return sub_266DAA6EC() & 1;
}

uint64_t static Snippets.Disambiguation<>.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Snippets.DisambiguationItem(0, a3, a4, a5);
  swift_getWitnessTable();
  return sub_266DAA98C() & 1;
}

uint64_t sub_266D3F3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_266D3F430(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_266D3F4B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_266D3F630(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_266D3F87C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_266D3F948(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_266D3FA8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_47(uint64_t a1)
{

  return swift_getWitnessTable();
}

void *OUTLINED_FUNCTION_7_32@<X0>(unint64_t a1@<X8>)
{

  return sub_266C38A28((a1 > 1), v1, 1);
}

uint64_t sub_266D3FB68()
{
  v0 = sub_266DAAB7C();
  v25 = *(v0 - 8);
  v26 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_6();
  v24 = v2 - v1;
  v3 = sub_266DAAB6C();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_6();
  v6 = v5 - v4;
  v7 = sub_266DA9FDC();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_0_6();
  v10 = v9 - v8;
  v11 = sub_266DA750C();
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_0_6();
  sub_266DA81BC();
  __swift_project_boxed_opaque_existential_1(v50, v51);
  sub_266DA7AFC();
  v12 = type metadata accessor for FMFManagerWrapper(0);
  swift_allocObject();
  sub_266CE236C();
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_0(v50);
  sub_266DA7AEC();
  v58[0] = sub_266DAA70C();
  v58[1] = v15;
  v59 = xmmword_266DAE510;
  v57[3] = v12;
  v57[4] = &off_2878628A8;
  v57[0] = v14;
  v51 = &type metadata for AceUserLocationProvider;
  v52 = &off_287867C00;
  v50[0] = swift_allocObject();
  sub_266C26B34(v58, v50[0] + 16);
  v55 = &off_2878628A8;
  v54 = v12;
  v53 = v14;
  sub_266C22FD4();
  swift_retain_n();
  sub_266DA9FBC();
  v46[0] = MEMORY[0x277D84F90];
  sub_266C3601C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  sub_266C5D904();
  sub_266DAAD0C();
  (*(v25 + 104))(v24, *MEMORY[0x277D85260], v26);
  v56 = sub_266D689A4(0xD00000000000001ELL, 0x8000000266DC38A0, v10, v6, v24, 0);
  v49[3] = v12;
  v49[4] = &off_2878628A8;
  v48[4] = &off_2878628A8;
  v49[0] = v14;
  v48[3] = v12;
  v48[0] = v14;
  v46[3] = v12;
  v46[4] = &off_2878628A8;
  v45[4] = &off_2878628A8;
  v46[0] = v14;
  v47 = xmmword_266DBAF00;
  v45[3] = v12;
  v45[0] = v14;
  v43 = &type metadata for FMFCoreFriendProvider;
  v44 = &off_287860000;
  OUTLINED_FUNCTION_1_51();
  *&v42 = swift_allocObject();
  sub_266C72488(v57, v42 + 16);
  v40 = &type metadata for FMFCoreFriendLocationProvider;
  v41 = &off_287862E48;
  *&v39 = swift_allocObject();
  sub_266CEDBEC(v50, v39 + 16);
  v37 = &type metadata for AceUserLocationProvider;
  v38 = &off_287867C00;
  *&v36 = swift_allocObject();
  sub_266C26B34(v58, v36 + 16);
  v34 = &type metadata for FMFCoreSharedLocationVisibilitySetter;
  v35 = &off_287862DB0;
  OUTLINED_FUNCTION_1_51();
  *&v33 = swift_allocObject();
  sub_266D40300(v49, v33 + 16);
  v31 = &type metadata for FMFCoreGeoFenceSetter;
  v32 = &off_28785F020;
  OUTLINED_FUNCTION_1_51();
  *&v30 = swift_allocObject();
  sub_266D4035C(v48, v30 + 16);
  v28 = &type metadata for FMFCoreMeDeviceInfoProvider;
  v29 = &off_287866B50;
  *&v27 = swift_allocObject();
  sub_266D403B8(v46, v27 + 16);
  type metadata accessor for FMFCoreFindFriendSession();
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v45, v12);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_6();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  v22 = *v20;
  *(v16 + 40) = v12;
  *(v16 + 48) = &off_2878628A8;
  *(v16 + 16) = v22;
  swift_retain_n();
  sub_266C26CC0(v58);
  *(v16 + 296) = 0;
  sub_266C0B0D8(&v42, v16 + 56);
  sub_266C0B0D8(&v39, v16 + 96);
  sub_266C0B0D8(&v36, v16 + 136);
  sub_266C0B0D8(&v33, v16 + 176);
  sub_266C0B0D8(&v30, v16 + 216);
  sub_266C0B0D8(&v27, v16 + 256);
  __swift_destroy_boxed_opaque_existential_0(v45);
  sub_266D40414(v46);
  sub_266D40468(v48);
  sub_266D404BC(v49);
  sub_266D40510(v50);
  sub_266D40564(v57);
  return v16;
}

uint64_t sub_266D40164()
{
  if (*(v0 + 296))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(*__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC10SiriFindMy17FMFManagerWrapper_errored) ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_266D401B0()
{
  *(v0 + 296) = 1;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  return sub_266CE28F0();
}

void *sub_266D401E8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  return v0;
}

uint64_t sub_266D40238()
{
  sub_266D401E8();

  return MEMORY[0x2821FE8D8](v0, 297, 7);
}

ValueMetadata *sub_266D405C4()
{
  v1 = v0;
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, &unk_28156FCA8);
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266C08000, v3, v4, "Posting personal domain activity notification.", v5, 2u);
    MEMORY[0x26D5F2480](v5, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  return sub_266D04D34(0xD000000000000021, 0x8000000266DC38C0, 0, 0x617A696C61636F4CLL, 0xEB00000000656C62);
}

uint64_t sub_266D4084C()
{
  OUTLINED_FUNCTION_22_0();
  v1[31] = v2;
  v1[32] = v0;
  sub_266DA7C0C();
  v1[33] = OUTLINED_FUNCTION_62();
  v3 = sub_266DA80AC();
  v1[34] = v3;
  OUTLINED_FUNCTION_11_3(v3);
  v1[35] = v4;
  v1[36] = OUTLINED_FUNCTION_62();
  v5 = sub_266DA750C();
  v1[37] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[38] = v6;
  v1[39] = OUTLINED_FUNCTION_62();
  v7 = sub_266DA7F0C();
  v1[40] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[41] = v8;
  v1[42] = OUTLINED_FUNCTION_62();
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_266D409AC()
{
  v57 = v0;
  if (qword_2800C9420 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_2800CD5A8);
  sub_266D420BC(v1, (v0 + 2));
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v56[0] = v6;
    *v5 = 136315138;
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v0[28] = sub_266CBF88C();
    v0[29] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
    v8 = sub_266DAA72C();
    v10 = v9;
    sub_266CE82A4((v0 + 2));
    v11 = sub_266C22A3C(v8, v10, v56);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_266C08000, v3, v4, "[DeviceOwnerStrategy] Identifying owner of device type %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    sub_266CE82A4((v0 + 2));
  }

  if (sub_266D420F4())
  {
    __swift_project_boxed_opaque_existential_1((v0[32] + 120), *(v0[32] + 144));
    sub_266DA7EFC();
    v12 = sub_266DA7B1C();
    v13 = OUTLINED_FUNCTION_38();
    v14(v13);
    if (v12)
    {
      v15 = v0[32];
      v16 = v15[8];
      v17 = v15[9];
      __swift_project_boxed_opaque_existential_1(v15 + 5, v16);
      v18 = (*(v17 + 8))(v16, v17);
      v0[43] = v18;
      v0[44] = 0;
      v38 = v18;
      v39 = sub_266DA948C();
      v40 = sub_266DAAB0C();

      if (os_log_type_enabled(v39, v40))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v56[0] = v43;
        *v42 = 136315138;
        v44 = v38;
        v45 = [v44 description];
        v46 = sub_266DAA70C();
        v48 = v47;

        v49 = sub_266C22A3C(v46, v48, v56);

        *(v42 + 4) = v49;
        OUTLINED_FUNCTION_11_21();
        _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_5_1();
      }

      v36 = swift_task_alloc();
      v0[45] = v36;
      *v36 = v0;
      v37 = sub_266D40FFC;
    }

    else
    {
      v29 = sub_266DA948C();
      v30 = sub_266DAAB0C();
      if (os_log_type_enabled(v29, v30))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_11_21();
        _os_log_impl(v31, v32, v33, v34, v35, 2u);
        OUTLINED_FUNCTION_5_1();
      }

      v36 = swift_task_alloc();
      v0[50] = v36;
      *v36 = v0;
      v37 = sub_266D4153C;
    }

    v36[1] = v37;
    OUTLINED_FUNCTION_51_1();

    return sub_266CEE54C();
  }

  else
  {
    v19 = sub_266DA948C();
    v20 = sub_266DAAB0C();
    if (os_log_type_enabled(v19, v20))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_21();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_5_1();
    }

    v26 = swift_task_alloc();
    v0[54] = v26;
    *v26 = v0;
    v26[1] = sub_266D41958;
    OUTLINED_FUNCTION_51_1();

    return sub_266CEE700();
  }
}

uint64_t sub_266D40FFC()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_21_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  *(v5 + 368) = v0;

  if (v0)
  {
    v9 = sub_266D41F70;
  }

  else
  {
    *(v5 + 376) = v3;
    v9 = sub_266D41110;
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_266D41110()
{
  v1 = v0[43];
  v2 = v0[32];
  v22 = v0[47];
  v23 = v2[13];
  v24 = v2[14];
  __swift_project_boxed_opaque_existential_1(v2 + 10, v23);
  v0[26] = type metadata accessor for Snippets(0);
  v0[27] = sub_266C4DB4C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 23);
  __swift_project_boxed_opaque_existential_1(v2 + 15, v2[18]);
  sub_266DA7AFC();
  v4 = sub_266C36550();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_38();
  v8(v7);
  v9 = [v1 identifier];
  v10 = sub_266DAA70C();
  v12 = v11;

  v13 = type metadata accessor for Snippets.Contact(0);
  sub_266DA749C();
  *boxed_opaque_existential_1 = v4;
  boxed_opaque_existential_1[1] = v6;
  boxed_opaque_existential_1[2] = v10;
  boxed_opaque_existential_1[3] = v12;
  v14 = (boxed_opaque_existential_1 + *(v13 + 28));
  *v14 = 1701736302;
  v14[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v15 = swift_allocObject();
  v0[48] = v15;
  *(v15 + 16) = xmmword_266DAE3B0;
  *(v15 + 32) = v22;
  v16 = v22;
  sub_266DA7BCC();
  OUTLINED_FUNCTION_0_70();
  sub_266DA800C();
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[49] = v17;
  *v17 = v18;
  v17[1] = sub_266D4134C;
  v19 = v0[36];
  v20 = v0[31];

  return MEMORY[0x2821BB468](v20, v0 + 23, v15, v19, v23, v24);
}

uint64_t sub_266D4134C()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_38();
  v7(v6);
  __swift_destroy_boxed_opaque_existential_0((v2 + 184));
  v8 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_266D414B4()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 376);
  v2 = *(v0 + 344);

  OUTLINED_FUNCTION_7_33();

  OUTLINED_FUNCTION_15_4();

  return v3();
}

uint64_t sub_266D4153C()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_21_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_18_16();

    OUTLINED_FUNCTION_28();

    return v9();
  }

  else
  {
    *(v5 + 408) = v3;
    v11 = OUTLINED_FUNCTION_14_3();

    return MEMORY[0x2822009F8](v11);
  }
}

uint64_t sub_266D4167C()
{
  v1 = v0[51];
  OUTLINED_FUNCTION_21_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v2 = swift_allocObject();
  v0[52] = v2;
  *(v2 + 16) = xmmword_266DAE3B0;
  *(v2 + 32) = v1;
  v3 = v1;
  sub_266DA7BCC();
  OUTLINED_FUNCTION_0_70();
  sub_266DA800C();
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[53] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_19(v4);

  return MEMORY[0x2821BB488](v6);
}

uint64_t sub_266D41780()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v2 = v1[36];
  v3 = v1[35];
  v4 = v1[34];
  v5 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  v7 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266D418DC()
{
  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_7_33();

  OUTLINED_FUNCTION_15_4();

  return v1();
}

uint64_t sub_266D41958()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_21_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_18_16();

    OUTLINED_FUNCTION_28();

    return v9();
  }

  else
  {
    *(v5 + 440) = v3;
    v11 = OUTLINED_FUNCTION_14_3();

    return MEMORY[0x2822009F8](v11);
  }
}

uint64_t sub_266D41A98()
{
  v1 = v0[55];
  OUTLINED_FUNCTION_21_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v2 = swift_allocObject();
  v0[56] = v2;
  *(v2 + 16) = xmmword_266DAE3B0;
  *(v2 + 32) = v1;
  v3 = v1;
  sub_266DA7BCC();
  OUTLINED_FUNCTION_0_70();
  sub_266DA800C();
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[57] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_19(v4);

  return MEMORY[0x2821BB488](v6);
}

uint64_t sub_266D41B9C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v2 = v1[36];
  v3 = v1[35];
  v4 = v1[34];
  v5 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  v7 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266D41CF8()
{
  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_7_33();

  OUTLINED_FUNCTION_15_4();

  return v1();
}

uint64_t sub_266D41D74()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v6 + 472) = v0;

  if (v0)
  {
    v7 = sub_266D41EF0;
  }

  else
  {
    v7 = sub_266D41E74;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266D41E74()
{
  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_7_33();

  OUTLINED_FUNCTION_15_4();

  return v1();
}

uint64_t sub_266D41EF0()
{
  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_19_16();

  OUTLINED_FUNCTION_28();

  return v1();
}

uint64_t sub_266D41F70()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 344);

  OUTLINED_FUNCTION_19_16();

  OUTLINED_FUNCTION_28();

  return v2();
}

uint64_t sub_266D41FF4()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CD5A8);
  v1 = __swift_project_value_buffer(v0, qword_2800CD5A8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_266D420F4()
{
  v1 = __swift_project_boxed_opaque_existential_1(v0, v0[3])[6];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 deviceType];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_266DAA70C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v7 != 0;
}

uint64_t sub_266D42180(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  v2[9] = swift_task_alloc();
  v3 = sub_266DA7E9C();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v4 = swift_task_alloc();
  v2[12] = v4;
  v5 = swift_task_alloc();
  v2[13] = v5;
  *v5 = v2;
  v5[1] = sub_266D422B4;

  return MEMORY[0x2821BAED8](v4);
}

uint64_t sub_266D422B4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v6 + 112) = v0;

  if (v0)
  {
    v7 = sub_266D42528;
  }

  else
  {
    v7 = sub_266D423B4;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266D423B4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + 120), *(*(v0 + 64) + 144));
  sub_266DA7B3C();
  v3 = sub_266DA7E5C();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  v4 = sub_266DA820C();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v5 = MEMORY[0x277D5C1D8];
  v2[3] = v4;
  v2[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_266DA7D0C();
  sub_266C3A088(v0 + 16, &qword_2800CD5C0, &qword_266DBB010);
  sub_266C3A088(v1, &qword_2800CA048, &unk_266DAFC00);
  v6 = OUTLINED_FUNCTION_38();
  v7(v6);

  OUTLINED_FUNCTION_15_4();

  return v8();
}

uint64_t sub_266D42528()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266D42590(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266D425D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_33()
{
}

uint64_t OUTLINED_FUNCTION_18_16()
{
}

uint64_t OUTLINED_FUNCTION_19_16()
{
}

uint64_t FMFCoreUISession.__allocating_init(locale:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FMFCoreUISession.init(locale:)(a1);
  return v2;
}

uint64_t FMFCoreUISession.init(locale:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_266DA750C();
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  (*(v6 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  type metadata accessor for FMFManagerWrapper(0);
  swift_allocObject();
  sub_266CE236C();
  v10 = v9;
  (*(v6 + 8))(a1, v4);
  *(v2 + 16) = v10;
  return v2;
}

uint64_t sub_266D42858()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD5C8, &qword_266DBB080);
  OUTLINED_FUNCTION_0_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = v9 - v4;
  sub_266CE2A64();
  v9[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD5D0, &qword_266DBB088);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD5D8, &qword_266DBB090);
  sub_266C230E8(&qword_2800CD5E0, &qword_2800CD5D0, &qword_266DBB088, MEMORY[0x277CBCD90]);
  sub_266C230E8(&qword_2800CD5E8, &qword_2800CD5D8, &qword_266DBB090, MEMORY[0x277CBCE90]);
  sub_266DA987C();

  sub_266C230E8(&qword_2800CD5F0, &qword_2800CD5C8, &qword_266DBB080, MEMORY[0x277CBCC40]);
  v7 = sub_266DA97EC();
  (*(v2 + 8))(v5, v0);
  return v7;
}

uint64_t sub_266D42A60()
{
  v0 = type metadata accessor for Friend(0);
  v1 = MEMORY[0x277D84A98];
  v2 = MEMORY[0x277D84AC0];

  return MEMORY[0x28210E988](1, v0, v1, v2);
}

uint64_t FMFCoreUISession.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t type metadata accessor for FindDeviceAndPlaySoundCATsSimple(uint64_t a1)
{
  result = qword_2800CD5F8;
  if (!qword_2800CD5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D42C44(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D42C5C()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = OUTLINED_FUNCTION_36_5(v2);
  *(v3 + 32) = 0x7449646E69467369;
  *(v3 + 40) = 0xEA00000000006D65;
  *(v3 + 72) = MEMORY[0x277D839B0];
  v4 = MEMORY[0x277D55C70];
  *(v3 + 48) = v1;
  v7 = (v4 + *v4);
  *(v0 + 24) = v3;
  *(v3 + 16) = xmmword_266DAE4A0;
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_266CB5CA0;

  return v7(0xD000000000000026, 0x8000000266DC3EF0, v3);
}

uint64_t sub_266D42D7C(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D42D94()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v5 = OUTLINED_FUNCTION_41_1(v4);
  *(OUTLINED_FUNCTION_35_3(v5) + 16) = xmmword_266DB05C0;
  OUTLINED_FUNCTION_1_52();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  *(v1 + 48) = v3;
  OUTLINED_FUNCTION_49_8();
  *(v1 + 72) = v9;
  *(v1 + 80) = v10;
  *(v1 + 88) = 0xEC000000654D746FLL;
  *(v1 + 120) = MEMORY[0x277D839B0];
  *(v1 + 96) = v2;
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);

  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_28_3(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_10_10(v12);
  OUTLINED_FUNCTION_14_14(53);
  OUTLINED_FUNCTION_102();

  return v17(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_266D42EB8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D42ECC()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = OUTLINED_FUNCTION_36_5(v2);
  *(v0 + 32) = v3;
  *(v3 + 16) = xmmword_266DAE4A0;
  OUTLINED_FUNCTION_1_52();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  *(v3 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  *(v3 + 48) = v1;
  v11 = OUTLINED_FUNCTION_11_25(MEMORY[0x277D55C70]);

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_28_3(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_23_16(v8);

  return (v11)(0xD000000000000033, 0x8000000266DC3E70, v3);
}

uint64_t sub_266D42FE4()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v5);
  *(v1 + 40) = OUTLINED_FUNCTION_62();
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D43070()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  v3 = OUTLINED_FUNCTION_14_27(v2, xmmword_266DB05D0);
  OUTLINED_FUNCTION_54_5(v3, v4, &qword_2800CA038, &unk_266DAFBF0);
  v5 = sub_266DA919C();
  if (OUTLINED_FUNCTION_18_17(v5) == 1)
  {
    sub_266C3A088(v1, &qword_2800CA038, &unk_266DAFBF0);
    OUTLINED_FUNCTION_46_5();
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_25_4();
    v6();
  }

  v7 = *(v0 + 72);
  v8 = *(v0 + 24);
  OUTLINED_FUNCTION_1_52();
  v2[5].n128_u64[0] = v9;
  v2[5].n128_u64[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  v2[6].n128_u64[0] = v8;
  OUTLINED_FUNCTION_49_8();
  v2[7].n128_u64[1] = v11;
  v2[8].n128_u64[0] = v12;
  v2[8].n128_u64[1] = 0xEC000000654D746FLL;
  v2[10].n128_u64[1] = MEMORY[0x277D839B0];
  v2[9].n128_u8[0] = v7;
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);

  v13 = swift_task_alloc();
  *(v0 + 56) = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_28_9(v13);
  OUTLINED_FUNCTION_14_14(52);
  OUTLINED_FUNCTION_102();

  return v17(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_266D4321C()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 76) = v3;
  OUTLINED_FUNCTION_38_10(v4, v2, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v9);
  *(v1 + 40) = OUTLINED_FUNCTION_62();
  v10 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_266D432A8()
{
  OUTLINED_FUNCTION_51_3();
  v26 = v1;
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  v4 = OUTLINED_FUNCTION_14_27(v3, xmmword_266DB05B0);
  OUTLINED_FUNCTION_54_5(v4, v5, &qword_2800CA038, &unk_266DAFBF0);
  v6 = sub_266DA919C();
  if (OUTLINED_FUNCTION_18_17(v6) == 1)
  {
    sub_266C3A088(v2, &qword_2800CA038, &unk_266DAFBF0);
    OUTLINED_FUNCTION_46_5();
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_25_4();
    v7();
  }

  v8 = *(v0 + 76);
  v9 = *(v0 + 75);
  v10 = *(v0 + 74);
  v11 = *(v0 + 73);
  v12 = *(v0 + 72);
  OUTLINED_FUNCTION_1_52();
  v3[5].n128_u64[0] = v13;
  v3[5].n128_u64[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  OUTLINED_FUNCTION_27_11(v15);
  v3[9].n128_u8[0] = v12;
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_35_6(v16);
  v3[12].n128_u8[0] = v11;
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_34_6(v17);
  v3[15].n128_u8[0] = v10;
  v3[16].n128_u64[1] = v18;
  strcpy(&v3[17], "ownerIsNotMe");
  v3[17].n128_u8[13] = 0;
  v3[17].n128_u16[7] = -5120;
  v3[18].n128_u8[0] = v9;
  OUTLINED_FUNCTION_12_22();
  v3[19].n128_u64[1] = v19;
  v3[20].n128_u64[0] = v20;
  OUTLINED_FUNCTION_16_17();
  v3[20].n128_u64[1] = v21;
  v3[22].n128_u64[1] = v22;
  v25 = OUTLINED_FUNCTION_11_25(MEMORY[0x277D55C70]);
  v3[21].n128_u8[0] = v8;

  v23 = swift_task_alloc();
  *(v0 + 56) = v23;
  *v23 = v0;
  OUTLINED_FUNCTION_28_9(v23);

  return (v25)(0xD000000000000034);
}

uint64_t sub_266D434B8(uint64_t a1, char a2, char a3, char a4, char a5)
{
  *(v6 + 59) = a5;
  *(v6 + 58) = a4;
  *(v6 + 57) = a3;
  *(v6 + 56) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = v5;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D434DC()
{
  OUTLINED_FUNCTION_51_3();
  v24 = v2;
  v3 = *(v0 + 59);
  v4 = *(v0 + 58);
  v5 = *(v0 + 57);
  v6 = *(v0 + 56);
  v7 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v8 = swift_allocObject();
  *(OUTLINED_FUNCTION_35_3(v8) + 16) = xmmword_266DB4180;
  OUTLINED_FUNCTION_1_52();
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  *(v1 + 48) = v7;
  OUTLINED_FUNCTION_47_7();
  *(v1 + 72) = v12;
  *(v1 + 80) = 0xD000000000000012;
  *(v1 + 88) = v13;
  v14 = MEMORY[0x277D839B0];
  *(v1 + 96) = v6;
  *(v1 + 120) = v14;
  *(v1 + 128) = 0xD000000000000016;
  *(v1 + 136) = 0x8000000266DC3DD0;
  *(v1 + 144) = v5;
  OUTLINED_FUNCTION_12_22();
  *(v1 + 168) = v15;
  *(v1 + 176) = v16;
  OUTLINED_FUNCTION_16_17();
  *(v1 + 184) = v17;
  *(v1 + 192) = v4;
  *(v1 + 216) = v18;
  *(v1 + 224) = 0x7449646E69467369;
  *(v1 + 232) = 0xEA00000000006D65;
  *(v1 + 264) = v18;
  v23 = OUTLINED_FUNCTION_11_25(MEMORY[0x277D55C70]);
  *(v1 + 240) = v3;

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_28_3(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_23_16(v20);

  return (v23)(0xD00000000000002ALL, 0x8000000266DC3D80, v1);
}

uint64_t sub_266D43690(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D436AC()
{
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_266DB05D0;
  *(v3 + 32) = 0x7372656E776FLL;
  *(v3 + 40) = 0xE600000000000000;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5D0, &qword_266DB4298);
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0x656369766564;
  *(v3 + 88) = 0xE600000000000000;
  if (v1)
  {
    type metadata accessor for FindmyDevice(0);
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  *(v3 + 96) = v1;
  OUTLINED_FUNCTION_12_22();
  *(v3 + 120) = v5;
  *(v3 + 128) = v6;
  OUTLINED_FUNCTION_16_17();
  *(v3 + 136) = v7;
  *(v3 + 168) = MEMORY[0x277D839B0];
  *(v3 + 144) = v8;
  v11 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_266CB2CF4;

  return v11(0xD000000000000029, 0x8000000266DC3D50, v3);
}

BOOL sub_266D43848(uint64_t a1, uint64_t a2)
{
  v2 = sub_266DAAF8C();

  return v2 != 0;
}

BOOL sub_266D4389C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266D43848(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_266D438F4()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v4);
  v1[5] = OUTLINED_FUNCTION_62();
  v5 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_266D4397C()
{
  v2 = v1[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = OUTLINED_FUNCTION_41_1(v3);
  v1[6] = v4;
  v5 = OUTLINED_FUNCTION_3_48(v4, xmmword_266DB05C0);
  v7 = OUTLINED_FUNCTION_32_9(v5, v6 & 0xFFFFFFFFFFFFLL | 0x6544000000000000);
  if (v2)
  {
    v7 = type metadata accessor for FindmyDevice(v7);
  }

  else
  {
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  v8 = v1[5];
  v9 = v1[3];
  *(v4 + 48) = v2;
  *(v4 + 72) = v7;
  *(v4 + 80) = 0xD000000000000012;
  *(v4 + 88) = 0x8000000266DC3CF0;
  sub_266C744CC(v9, v8, &qword_2800CA038, &unk_266DAFBF0);
  v10 = sub_266DA919C();
  if (OUTLINED_FUNCTION_18_17(v10) == 1)
  {

    sub_266C3A088(v8, &qword_2800CA038, &unk_266DAFBF0);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_25_4();
    v11();
  }

  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C68]);
  v12 = swift_task_alloc();
  v1[7] = v12;
  v13 = sub_266D456D8();
  *v12 = v1;
  v12[1] = sub_266CB30E4;

  return v15(0xD000000000000030, 0x8000000266DC3D10, v4, &type metadata for FindDeviceAndPlaySoundCATsSimple.DisambiguationButtonTitleDialogIds, v13);
}

uint64_t sub_266D43B6C()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  OUTLINED_FUNCTION_38_10(v3, v2, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v8);
  v1[5] = OUTLINED_FUNCTION_62();
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_266D43BF4()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  v3 = OUTLINED_FUNCTION_14_27(v2, xmmword_266DB5800);
  OUTLINED_FUNCTION_54_5(v3, v4, &qword_2800CA038, &unk_266DAFBF0);
  v5 = sub_266DA919C();
  if (OUTLINED_FUNCTION_18_17(v5) == 1)
  {
    sub_266C3A088(v1, &qword_2800CA038, &unk_266DAFBF0);
    OUTLINED_FUNCTION_46_5();
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_25_4();
    v6();
  }

  v7 = *(v0 + 75);
  v8 = *(v0 + 74);
  v9 = *(v0 + 73);
  v10 = *(v0 + 72);
  OUTLINED_FUNCTION_1_52();
  v2[5].n128_u64[0] = v11;
  v2[5].n128_u64[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  OUTLINED_FUNCTION_27_11(v13);
  v2[9].n128_u8[0] = v10;
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_35_6(v14);
  v2[12].n128_u8[0] = v9;
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_34_6(v15);
  v2[15].n128_u8[0] = v8;
  OUTLINED_FUNCTION_12_22();
  v2[16].n128_u64[1] = v16;
  v2[17].n128_u64[0] = v17;
  OUTLINED_FUNCTION_16_17();
  v2[17].n128_u64[1] = v18;
  v2[19].n128_u64[1] = v19;
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);
  v2[18].n128_u8[0] = v7;

  v20 = swift_task_alloc();
  *(v0 + 56) = v20;
  *v20 = v0;
  OUTLINED_FUNCTION_28_9(v20);
  v21 = OUTLINED_FUNCTION_14_14(49);

  return v22(v21);
}

uint64_t sub_266D43DD4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D43DE8()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = OUTLINED_FUNCTION_36_5(v3);
  v5 = OUTLINED_FUNCTION_35_3(v4);
  v6 = OUTLINED_FUNCTION_25_12(v5, xmmword_266DAE4A0);
  if (v2)
  {
    v6 = type metadata accessor for FindmyDevice(v6);
  }

  else
  {
    v1[7] = 0;
    v1[8] = 0;
  }

  v1[6] = v2;
  v1[9] = v6;
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_28_3(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_10_10(v8);
  OUTLINED_FUNCTION_14_14(41);
  OUTLINED_FUNCTION_102();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_266D43ED8(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D43EF0()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 56);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *(OUTLINED_FUNCTION_35_3(v4) + 16) = xmmword_266DB05C0;
  OUTLINED_FUNCTION_1_52();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  OUTLINED_FUNCTION_22_14(v8);
  *(v1 + 120) = MEMORY[0x277D839B0];
  *(v1 + 96) = v2;
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_28_3(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_10_10(v10);
  OUTLINED_FUNCTION_14_14(44);
  OUTLINED_FUNCTION_102();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_266D43FFC(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D44014()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = OUTLINED_FUNCTION_41_1(v3);
  v5 = OUTLINED_FUNCTION_35_3(v4);
  v6 = OUTLINED_FUNCTION_3_48(v5, xmmword_266DB05C0);
  v8 = OUTLINED_FUNCTION_32_9(v6, v7 & 0xFFFFFFFFFFFFLL | 0x6544000000000000);
  if (v2)
  {
    type metadata accessor for FindmyDevice(v8);
  }

  else
  {
    v1[7] = 0;
    v1[8] = 0;
  }

  v1[6] = v2;
  OUTLINED_FUNCTION_12_22();
  v1[9] = v9;
  v1[10] = v10;
  OUTLINED_FUNCTION_16_17();
  v1[11] = v11;
  OUTLINED_FUNCTION_45_6(v12);
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);

  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_28_3(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_10_10(v14);
  OUTLINED_FUNCTION_14_14(40);
  OUTLINED_FUNCTION_102();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_266D44134(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D44148()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = OUTLINED_FUNCTION_36_5(v2);
  *(v0 + 32) = v3;
  *(v3 + 16) = xmmword_266DAE4A0;
  OUTLINED_FUNCTION_1_52();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  *(v3 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  *(v3 + 48) = v1;
  v11 = OUTLINED_FUNCTION_11_25(MEMORY[0x277D55C70]);

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_28_3(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_23_16(v8);

  return (v11)(0xD000000000000029, 0x8000000266DC3BF0, v3);
}

uint64_t sub_266D44260()
{
  OUTLINED_FUNCTION_22_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v8);
  v1[9] = OUTLINED_FUNCTION_62();
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_266D442F0()
{
  OUTLINED_FUNCTION_51_3();
  v26 = v1;
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = swift_allocObject();
  v0[10] = v3;
  v4 = OUTLINED_FUNCTION_25_12(v3, xmmword_266DB5800);
  if (v2)
  {
    v4 = type metadata accessor for FindmyDevice(v4);
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  v5 = v0[3];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  strcpy((v3 + 80), "deviceLocation");
  *(v3 + 95) = -18;
  v6 = 0;
  if (v5)
  {
    v6 = sub_266DA8F2C();
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  v7 = v0[9];
  v8 = v0[4];
  *(v3 + 96) = v5;
  *(v3 + 120) = v6;
  strcpy((v3 + 128), "locationType");
  *(v3 + 141) = 0;
  *(v3 + 142) = -5120;
  sub_266C744CC(v8, v7, &qword_2800CA038, &unk_266DAFBF0);
  v9 = sub_266DA919C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v9);
  v11 = v0[9];
  if (EnumTagSinglePayload == 1)
  {

    sub_266C3A088(v11, &qword_2800CA038, &unk_266DAFBF0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    (*(*(v9 - 8) + 32))(boxed_opaque_existential_1, v11, v9);
  }

  v13 = v0[5];
  OUTLINED_FUNCTION_47_7();
  *(v3 + 176) = 0xD000000000000011;
  *(v3 + 184) = v14;
  if (v13)
  {
    sub_266DA907C();
    v15 = v13;
  }

  else
  {
    v15 = 0;
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
  }

  v16 = v0[6];
  *(v3 + 192) = v15;
  OUTLINED_FUNCTION_47_7();
  *(v3 + 216) = v17;
  *(v3 + 224) = 0xD000000000000014;
  *(v3 + 232) = v18;
  if (v16)
  {
    v19 = sub_266DA90CC();
    v20 = v16;
  }

  else
  {
    v20 = 0;
    v19 = 0;
    *(v3 + 248) = 0;
    *(v3 + 256) = 0;
  }

  v21 = v0[7];
  *(v3 + 240) = v20;
  *(v3 + 264) = v19;
  *(v3 + 272) = 0xD000000000000010;
  *(v3 + 280) = 0x8000000266DC3B90;
  v22 = 0;
  if (v21)
  {
    v22 = sub_266DA8F9C();
  }

  else
  {
    *(v3 + 296) = 0;
    *(v3 + 304) = 0;
  }

  *(v3 + 288) = v21;
  *(v3 + 312) = v22;
  v25 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v23 = swift_task_alloc();
  v0[11] = v23;
  *v23 = v0;
  v23[1] = sub_266D4461C;

  return v25(0xD000000000000035, 0x8000000266DC3BB0, v3);
}

uint64_t sub_266D4461C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_20();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_49();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_11_10();

    return v9(v8);
  }
}

uint64_t sub_266D4474C()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266D447B0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D447C8()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = OUTLINED_FUNCTION_36_5(v2);
  OUTLINED_FUNCTION_47_7();
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = v5;
  *(v4 + 72) = MEMORY[0x277D839B0];
  v6 = MEMORY[0x277D55C70];
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_1_30(v6);
  *(v0 + 24) = v3;
  *(v3 + 16) = v7;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  *v8 = v0;
  v8[1] = sub_266D448DC;

  return v10(0xD00000000000002DLL, 0x8000000266DC3B40, v3);
}

uint64_t sub_266D448DC()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_20();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_7();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_2_28();

    return v9(v8);
  }
}

uint64_t sub_266D44A04(uint64_t a1, char a2, char a3)
{
  *(v4 + 57) = a3;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D44A20()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 57);
  v3 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = swift_allocObject();
  *(OUTLINED_FUNCTION_35_3(v4) + 16) = xmmword_266DB05D0;
  OUTLINED_FUNCTION_1_52();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CD608, &unk_266DBB200);
  OUTLINED_FUNCTION_22_14(v8);
  v9 = MEMORY[0x277D839B0];
  *(v1 + 96) = v3;
  *(v1 + 120) = v9;
  *(v1 + 128) = 0x4D72656E774F7369;
  *(v1 + 136) = 0xE900000000000065;
  *(v1 + 168) = v9;
  *(v1 + 144) = v2;
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);

  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_28_3(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_10_10(v11);
  OUTLINED_FUNCTION_14_14(48);
  OUTLINED_FUNCTION_102();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_266D44B5C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v1[1] = sub_266CB4814;
  OUTLINED_FUNCTION_22_6();
  v3 = OUTLINED_FUNCTION_23_7(40);

  return v4(v3);
}

uint64_t sub_266D44C04()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v1[1] = sub_266CB62BC;
  OUTLINED_FUNCTION_22_6();
  v3 = OUTLINED_FUNCTION_23_7(51);

  return v4(v3);
}

uint64_t sub_266D44CAC()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v1[1] = sub_266CB62BC;
  OUTLINED_FUNCTION_22_6();
  v3 = OUTLINED_FUNCTION_23_7(58);

  return v4(v3);
}

uint64_t sub_266D44D54(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D44D6C()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = OUTLINED_FUNCTION_41_1(v3);
  v5 = OUTLINED_FUNCTION_35_3(v4);
  v6 = OUTLINED_FUNCTION_3_48(v5, xmmword_266DB05C0);
  v8 = OUTLINED_FUNCTION_32_9(v6, v7 & 0xFFFFFFFFFFFFLL | 0x7551000000000000);
  if (v2)
  {
    v8 = type metadata accessor for FindmyDevice(v8);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_24_10(v8);
  OUTLINED_FUNCTION_45_6(v9);
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);

  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_28_3(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_10_10(v11);
  OUTLINED_FUNCTION_14_14(61);
  OUTLINED_FUNCTION_102();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_266D44E78(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D44E90()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v4 = OUTLINED_FUNCTION_41_1(v3);
  v5 = OUTLINED_FUNCTION_35_3(v4);
  v6 = OUTLINED_FUNCTION_3_48(v5, xmmword_266DB05C0);
  v8 = OUTLINED_FUNCTION_32_9(v6, v7 & 0xFFFFFFFFFFFFLL | 0x7551000000000000);
  if (v2)
  {
    v8 = type metadata accessor for FindmyDevice(v8);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_24_10(v8);
  OUTLINED_FUNCTION_45_6(v9);
  OUTLINED_FUNCTION_4_46(MEMORY[0x277D55C70]);

  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_28_3(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_10_10(v11);
  OUTLINED_FUNCTION_14_14(49);
  OUTLINED_FUNCTION_102();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_266D44F9C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v1[1] = sub_266CB62BC;
  OUTLINED_FUNCTION_22_6();
  v3 = OUTLINED_FUNCTION_23_7(53);

  return v4(v3);
}

uint64_t sub_266D45044()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v4);
  *(v1 + 32) = OUTLINED_FUNCTION_62();
  v5 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_266D450CC()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[4];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v3 = OUTLINED_FUNCTION_41_1(v2);
  v0[5] = v3;
  *(v3 + 16) = xmmword_266DB05C0;
  *(v3 + 32) = 0x6E6F73616572;
  *(v3 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_54_5(v3, v4, &qword_2800CA038, &unk_266DAFBF0);
  v5 = sub_266DA919C();
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_266C3A088(v0[4], &qword_2800CA038, &unk_266DAFBF0);
    OUTLINED_FUNCTION_46_5();
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_25_4();
    v6();
  }

  OUTLINED_FUNCTION_12_22();
  *(v3 + 80) = v7;
  *(v3 + 88) = 0xED000073646F5072;
  OUTLINED_FUNCTION_45_6(v8);
  OUTLINED_FUNCTION_1_30(MEMORY[0x277D55C70]);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_23_16(v9);
  OUTLINED_FUNCTION_22_6();

  return v11(0xD000000000000027);
}

uint64_t sub_266D45274()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_20();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_49();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_11_10();

    return v9(v8);
  }
}

uint64_t sub_266D453A4()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266D45408()
{
  swift_allocObject();
  OUTLINED_FUNCTION_25_4();
  return sub_266D45458(v0, v1, v2);
}

uint64_t sub_266D45458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_266DA926C();
  OUTLINED_FUNCTION_37_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  v12 = OUTLINED_FUNCTION_4_3(v11);
  MEMORY[0x28223BE20](v12);
  sub_266C744CC(a1, &v16 - v13, &qword_2800C9C48, &unk_266DAEBA0);
  (*(v7 + 16))(v10, a2, v3);
  v14 = sub_266DA91AC();
  (*(v7 + 8))(a2, v3);
  sub_266C3A088(a1, &qword_2800C9C48, &unk_266DAEBA0);
  return v14;
}

uint64_t sub_266D455D0(uint64_t a1, uint64_t a2)
{
  sub_266DA926C();
  OUTLINED_FUNCTION_37_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_266DA91BC();
  (*(v5 + 8))(a2, v2);
  return v9;
}

unint64_t sub_266D456D8()
{
  result = qword_2800CD610;
  if (!qword_2800CD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD610);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FindDeviceAndPlaySoundCATsSimple.DisambiguationButtonTitleDialogIds(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_266D457DC()
{
  result = qword_2800CD618;
  if (!qword_2800CD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CD618);
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_14_27(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x76654464656B7361;
  result[2].n128_u64[1] = 0xEF65707954656369;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_14(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  strcpy((v2 + 80), "isFindAirPods");
  *(v2 + 94) = -4864;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_10(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  strcpy((v2 + 80), "ownerIsNotMe");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_12(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  strcpy(&a1[2], "targetDevice");
  a1[2].n128_u8[13] = 0;
  a1[2].n128_u16[7] = -5120;
  return 0;
}

uint64_t OUTLINED_FUNCTION_27_11(uint64_t result)
{
  v2[12] = v1;
  v2[15] = result;
  v2[16] = 0x4E656D6153736168;
  v2[17] = 0xEB00000000656D61;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_9@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = v2;
  return 0;
}

void OUTLINED_FUNCTION_34_6(uint64_t a1@<X8>)
{
  v2[27] = a1;
  v2[28] = v1 & 0xFFFFFFFFFFFFLL | 0x4F65000000000000;
  v2[29] = 0xEC00000072656E77;
}

void OUTLINED_FUNCTION_35_6(uint64_t a1@<X8>)
{
  v2[21] = a1;
  v2[22] = v1 & 0xFFFFFFFFFFFFLL | 0x4D65000000000000;
  v2[23] = 0xEC0000006C65646FLL;
}

uint64_t OUTLINED_FUNCTION_38_10(uint64_t result, uint64_t a2, char a3, char a4, char a5, char a6)
{
  *(v6 + 75) = a6;
  *(v6 + 74) = a5;
  *(v6 + 73) = a4;
  *(v6 + 72) = a3;
  *(v6 + 16) = result;
  return result;
}

double OUTLINED_FUNCTION_46_5()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_266C744CC(v4, v5, a3, a4);
}

uint64_t *OUTLINED_FUNCTION_55_3()
{
  *(v1 + 72) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 48));
}

uint64_t sub_266D45AC8()
{
  sub_266DA929C();
  result = sub_266DA927C();
  qword_2800E64E8 = result;
  return result;
}

uint64_t sub_266D45B24()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800E64F0);
  v1 = __swift_project_value_buffer(v0, qword_2800E64F0);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy0B6FriendO6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_266D45C1C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266D45C5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_266D45CA4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void sub_266D45CE0(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v57 = sub_266DA7C9C();
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v59 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - v9;
  v11 = sub_266DA812C();
  OUTLINED_FUNCTION_0_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  *&v52 = v16;
  sub_266DA810C();
  v51 = v2;
  sub_266D46D08(v2, v61);
  v17 = sub_266C3A14C();
  v56 = a1;
  if (v17)
  {
    v18 = v17;
    v60 = MEMORY[0x277D84F90];
    sub_266C38978(0, v17 & ~(v17 >> 63), 0);
    if (v18 < 0)
    {
      goto LABEL_43;
    }

    v48 = v13;
    v49 = v11;
    v19 = 0;
    v20 = v60;
    v58 = a1 & 0xC000000000000001;
    v54 = v5 + 32;
    v55 = a1 & 0xFFFFFFFFFFFFFF8;
    v53 = *(&v62 + 1);
    do
    {
      if (v58)
      {
        v21 = MEMORY[0x26D5F1780](v19, a1);
      }

      else
      {
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v19 >= *(v55 + 16))
        {
          goto LABEL_42;
        }

        v21 = *(a1 + 8 * v19 + 32);
      }

      v22 = v21;
      sub_266C1CEB4(v21);

      sub_266DA7C8C();

      v60 = v20;
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_266C38978(v23 > 1, v24 + 1, 1);
        v20 = v60;
      }

      ++v19;
      *(v20 + 16) = v24 + 1;
      (*(v5 + 32))(v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, v10, v57);
      a1 = v56;
    }

    while (v18 != v19);
    v11 = v49;
    v13 = v48;
  }

  else
  {
    v58 = a1 & 0xC000000000000001;
    v55 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  sub_266D46D40(v61);
  v25 = v52;
  v49 = sub_266DA811C();

  (*(v13 + 8))(v25, v11);
  sub_266D46D08(v51, v61);
  v26 = sub_266C3A14C();
  v27 = 0;
  v53 = (v5 + 8);
  v54 = v26;
  v28 = MEMORY[0x277D84F90];
  v52 = xmmword_266DAE4A0;
  while (1)
  {
    if (v54 == v27)
    {
      sub_266D46D40(v61);
      *&v61[0] = v28;
      sub_266C3815C(v49);
      v45 = *&v61[0];
      v46 = v51;
      sub_266D463D8(a1);
      sub_266CC4918();
      sub_266CC4FB8();

      v47 = __swift_project_boxed_opaque_existential_1(v46, v46[3]);
      v61[0] = *v47;
      v61[1] = v47[1];
      v62 = v47[2];
      v63 = v47[3];
      sub_266CC0DAC(v45);

      return;
    }

    if (v58)
    {
      v29 = MEMORY[0x26D5F1780](v27, a1);
    }

    else
    {
      if (v27 >= *(v55 + 16))
      {
        goto LABEL_36;
      }

      v29 = *(a1 + 8 * v27 + 32);
    }

    v30 = v29;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    sub_266C1CEB4(v29);

    sub_266DA7C8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FA8, &qword_266DAF990);
    v31 = swift_allocObject();
    *(v31 + 16) = v52;
    v32 = [v30 name];
    v33 = v32;
    if (v32)
    {
      v34 = [v32 spokenPhrase];

      sub_266DAA70C();
    }

    v35 = sub_266DA7C8C();
    MEMORY[0x28223BE20](v35);
    v36 = v59;
    *(&v48 - 2) = v59;
    v37 = sub_266D69690(sub_266D46D70, (&v48 - 4), v31);
    swift_setDeallocating();
    sub_266C6F4C8();
    (*v53)(v36, v57);

    v38 = *(v37 + 16);
    v39 = *(v28 + 16);
    if (__OFADD__(v39, v38))
    {
      goto LABEL_37;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v39 + v38 > *(v28 + 24) >> 1)
    {
      sub_266CF9C84();
      v28 = v40;
    }

    a1 = v56;
    if (*(v37 + 16))
    {
      v41 = (*(v28 + 24) >> 1) - *(v28 + 16);
      sub_266DA7C2C();
      if (v41 < v38)
      {
        goto LABEL_39;
      }

      swift_arrayInitWithCopy();

      if (v38)
      {
        v42 = *(v28 + 16);
        v43 = __OFADD__(v42, v38);
        v44 = v42 + v38;
        if (v43)
        {
          goto LABEL_40;
        }

        *(v28 + 16) = v44;
      }
    }

    else
    {

      if (v38)
      {
        goto LABEL_38;
      }
    }

    ++v27;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
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
}

uint64_t sub_266D463D8(unint64_t a1)
{
  v17 = sub_266DA835C();
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_266DA838C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  sub_266DA837C();
  v21 = MEMORY[0x277D84F90];
  v19 = v1;
  v20 = &v21;
  sub_266CB9F3C(sub_266D46D90, v18, a1);
  sub_266DA836C();
  sub_266DA834C();
  (*(v7 + 16))(v10, v12, v6);
  sub_266DA832C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B8, &unk_266DB79E0);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_266DAE4A0;
  (*(v3 + 32))(v14 + v13, v5, v17);
  (*(v7 + 8))(v12, v6);
  return v14;
}

uint64_t sub_266D46638(uint64_t a1, uint64_t a2)
{
  v4 = sub_266DA7C9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FB8, &qword_266DBB450);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v13 - v9;
  v11 = *(v5 + 16);
  v11(v13 - v9, a2, v4);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v4);
  v11(v7, a1, v4);
  return sub_266DA7C1C();
}

uint64_t sub_266D467A8(void **a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_266DA824C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_266DA82EC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v18[-v11];
  v13 = *a1;
  sub_266DA82DC();
  sub_266D469B8(v13);
  v14 = sub_266DA82AC();
  sub_266DA82FC();
  v14(v18, 0);
  (*(v7 + 16))(v10, v12, v6);
  sub_266C386B0();
  v15 = *(*a3 + 16);
  sub_266C3873C(v15);
  (*(v7 + 8))(v12, v6);
  v16 = *a3;
  *(v16 + 16) = v15 + 1;
  return (*(v7 + 32))(v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v10, v6);
}

uint64_t sub_266D469B8(void *a1)
{
  sub_266DA8BAC();
  swift_allocObject();
  v2 = sub_266DA8B9C();
  sub_266DA8A5C();
  swift_allocObject();
  sub_266DA8A4C();
  sub_266DA895C();
  swift_allocObject();
  sub_266DA894C();
  sub_266DA8ACC();
  swift_allocObject();
  sub_266DA8ABC();
  sub_266C62498(a1);
  sub_266DA8AAC();

  sub_266DA892C();

  sub_266DA8A2C();

  sub_266DA8B6C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_266DAE3B0;
  *(v3 + 32) = v2;

  sub_266D46B84(v3);
}

uint64_t sub_266D46B84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7E8, &unk_266DB79F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_266DA86BC();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  MEMORY[0x26D5EEFB0](a1, v4);
  sub_266D04C1C(v4);
  sub_266DA83DC();
}

uint64_t sub_266D46DAC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EachFlow();
  sub_266D478EC();
  return sub_266DA79AC();
}

uint64_t sub_266D46E08(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_266D46E28);
}

uint64_t sub_266D46E28()
{
  swift_beginAccess();
  if (sub_266C3A14C())
  {
    swift_beginAccess();
    sub_266D46EF0();
    swift_endAccess();
    sub_266DA7D4C();
  }

  else
  {
    sub_266DA7D7C();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_266D46EF0()
{
  v1 = *v0;
  if (!sub_266C3A14C())
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!sub_266C3A14C())
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_266CB9F54();
  if ((v1 & 0xC000000000000001) == 0)
  {
    v2 = *(v1 + 32);

    goto LABEL_5;
  }

LABEL_9:
  v2 = MEMORY[0x26D5F1780](0, v1);
LABEL_5:
  result = sub_266C3A14C();
  if (result)
  {
    sub_266D4774C(0, 1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266D46F90()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_266D47010(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C29DCC;

  return sub_266D46E08(a1);
}

uint64_t sub_266D470AC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EachFlow();

  return sub_266DA79FC();
}

char *sub_266D470E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D47104(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D47124(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D47144(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D4716C(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_266D47208(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D47230(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D47298(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[192 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D472BC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[160 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D472E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

uint64_t sub_266D4732C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_2_58();
  if (v10 && (result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), v6 + *(*(result - 8) + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      v12 = OUTLINED_FUNCTION_1_53();

      return MEMORY[0x2821FE820](v12);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v13 = OUTLINED_FUNCTION_1_53();

    return MEMORY[0x2821FE828](v13);
  }

  return result;
}

char *sub_266D473FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

char *sub_266D47424(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[280 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

uint64_t sub_266D47464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_2_58();
  if (v8 && (result = a4(0), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = OUTLINED_FUNCTION_1_53();

      return MEMORY[0x2821FE820](v10);
    }
  }

  else
  {
    a4(0);
    v11 = OUTLINED_FUNCTION_1_53();

    return MEMORY[0x2821FE828](v11);
  }

  return result;
}

char *sub_266D47520(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_71(a3, result);
  }

  return result;
}

uint64_t sub_266D475D4(uint64_t a1, char a2)
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

  sub_266DAAD5C();
LABEL_9:
  result = sub_266DAAE2C();
  *v2 = result;
  return result;
}

uint64_t sub_266D476D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_266D4774C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = sub_266C36780(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = sub_266C3A14C();
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_266D475D4(result, 1);

  return sub_266D477F0(v4, a2, 0);
}

uint64_t sub_266D477F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_266DA782C();
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
    goto LABEL_6;
  }

LABEL_21:
  result = sub_266DAAD5C();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_266DAAD5C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

unint64_t sub_266D478EC()
{
  result = qword_2800CB820;
  if (!qword_2800CB820)
  {
    type metadata accessor for EachFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB820);
  }

  return result;
}

void sub_266D4797C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  OUTLINED_FUNCTION_4_3(v4);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v7 = v151 - v6;
  v8 = sub_266DA957C();
  OUTLINED_FUNCTION_0_2();
  v158 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_5();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v157 = v151 - v15;
  v16 = sub_266DA8D0C();
  OUTLINED_FUNCTION_0_2();
  v161 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_5();
  v21 = v19 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v151 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v151 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v29);
  if (*v1)
  {
    v153 = v31;
    v155 = v8;
    v156 = v3;
    v159 = v16;
    v32 = v151 - v30;

    v33 = sub_266DA853C();
    v160 = v32;
    sub_266DA877C();
    sub_266DA942C();
    v34 = sub_266DA941C();
    LOBYTE(v32) = sub_266DA940C();

    if (v32)
    {

      sub_266CA1A78(v35, v1 + 2, v7);

      v36 = v155;
      if (__swift_getEnumTagSinglePayload(v7, 1, v155) == 1)
      {
        sub_266D48AFC(v7);
        v37 = v156;
        if (qword_2800C9438 != -1)
        {
          OUTLINED_FUNCTION_0_72(&qword_2800C9438);
        }

        v38 = sub_266DA94AC();
        OUTLINED_FUNCTION_94(v38, qword_2800CD620);
        v39 = sub_266DA948C();
        v40 = sub_266DAAB0C();
        v41 = OUTLINED_FUNCTION_12_0(v40);
        v42 = v161;
        if (v41)
        {
          *OUTLINED_FUNCTION_11() = 0;
          OUTLINED_FUNCTION_21_16();
          _os_log_impl(v43, v44, v45, v46, v47, 2u);
          OUTLINED_FUNCTION_6_1();
        }

        else
        {
        }

        v99 = v159;
        (*(v42 + 8))(v160, v159);
        v96 = v37;
        v97 = 1;
        v98 = v99;
      }

      else
      {
        v154 = v33;
        v83 = v157;
        v82 = v158;
        (*(v158 + 32))(v157, v7, v36);
        if (qword_2800C9438 != -1)
        {
          OUTLINED_FUNCTION_0_72(&qword_2800C9438);
        }

        v84 = sub_266DA94AC();
        OUTLINED_FUNCTION_94(v84, qword_2800CD620);
        (*(v82 + 16))(v13, v83, v36);
        v152 = v34;
        v85 = sub_266DA948C();
        v86 = sub_266DAAB0C();
        if (os_log_type_enabled(v85, v86))
        {
          OUTLINED_FUNCTION_14_0();
          v151[0] = OUTLINED_FUNCTION_11_26();
          v163 = v151[0];
          *v82 = 136315138;
          OUTLINED_FUNCTION_1_54();
          sub_266D492A4(v87, v88, MEMORY[0x277D5FEB8]);
          sub_266DAB13C();
          v90 = v89;
          v91 = OUTLINED_FUNCTION_25_13(v158);
          v92(v91);
          v93 = OUTLINED_FUNCTION_9_21();
          v95 = sub_266C22A3C(v93, v90, v94);
          v83 = v157;

          *(v82 + 4) = v95;
          _os_log_impl(&dword_266C08000, v85, v86, "FindFriendNLv4IntentWrapper findFriendContactQuery resolved entity: %s", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v151[0]);
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_6_34();
        }

        else
        {

          v100 = OUTLINED_FUNCTION_25_13(v82);
          v101(v100);
        }

        v102 = v156;
        v103 = v159;
        sub_266DA956C();
        sub_266DA87BC();
        sub_266DA888C();

        v104 = v163;
        if (v163)
        {

          v105 = sub_266DA948C();
          v106 = sub_266DAAB0C();

          if (os_log_type_enabled(v105, v106))
          {
            OUTLINED_FUNCTION_14_0();
            v107 = OUTLINED_FUNCTION_11_26();
            v162 = v104;
            v163 = v107;
            *v104 = 136315138;

            v108 = sub_266DAA72C();
            v110 = v102;
            v111 = sub_266C22A3C(v108, v109, &v163);

            *(v104 + 4) = v111;
            v102 = v110;
            v103 = v159;
            OUTLINED_FUNCTION_27_12(&dword_266C08000, v112, v113, "FindFriendNLv4IntentWrapper findFriendContactQuery resolved common person entity: %s");
            __swift_destroy_boxed_opaque_existential_0(v107);
            OUTLINED_FUNCTION_6_1();
            v83 = v157;
            OUTLINED_FUNCTION_6_1();
          }

          v114 = v161;
          v115 = v153;
          sub_266DA877C();
          (*(v114 + 16))(v28, v115, v103);
          v116 = sub_266DA948C();
          v117 = v104;
          v118 = sub_266DAAB0C();
          if (os_log_type_enabled(v116, v118))
          {
            v119 = OUTLINED_FUNCTION_14_0();
            v120 = OUTLINED_FUNCTION_13_0();
            v163 = v120;
            *v119 = 136315138;
            OUTLINED_FUNCTION_2_59();
            sub_266D492A4(v121, v122, MEMORY[0x277D56000]);
            v151[0] = v117;
            sub_266DAB13C();
            v124 = v123;
            v152 = *(v161 + 8);
            v152(v28, v159);
            v125 = OUTLINED_FUNCTION_9_21();
            v127 = sub_266C22A3C(v125, v124, v126);
            v103 = v159;

            *(v119 + 4) = v127;
            _os_log_impl(&dword_266C08000, v116, v118, "FindFriendNLv4IntentWrapper findFriendContactQuery resolved common person contact query: %s", v119, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v120);
            v114 = v161;
            OUTLINED_FUNCTION_6_1();
            OUTLINED_FUNCTION_6_1();

            v128 = OUTLINED_FUNCTION_18_18();
            v129(v128);
            v152(v160, v103);
            v102 = v156;
          }

          else
          {

            v148 = *(v114 + 8);
            v148(v28, v103);
            (v151[1])(v83, v155);
            v148(v160, v103);
          }

          (*(v114 + 32))(v102, v153, v103);
        }

        else
        {
          v130 = v161;
          (*(v161 + 16))(v25, v160, v103);
          v131 = sub_266DA948C();
          v132 = sub_266DAAB0C();
          if (os_log_type_enabled(v131, v132))
          {
            v133 = OUTLINED_FUNCTION_14_0();
            v134 = OUTLINED_FUNCTION_13_0();
            v163 = v134;
            *v133 = 136315138;
            OUTLINED_FUNCTION_2_59();
            sub_266D492A4(v135, v136, MEMORY[0x277D56000]);
            sub_266DAB13C();
            v137 = v102;
            v139 = v138;
            (*(v130 + 8))(v25, v159);
            v140 = OUTLINED_FUNCTION_9_21();
            v142 = sub_266C22A3C(v140, v139, v141);
            v102 = v137;
            v103 = v159;

            *(v133 + 4) = v142;
            OUTLINED_FUNCTION_21_16();
            _os_log_impl(v143, v144, v145, v146, v147, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v134);
            OUTLINED_FUNCTION_6_34();
            OUTLINED_FUNCTION_6_1();
          }

          else
          {

            (*(v130 + 8))(v25, v103);
          }

          v149 = OUTLINED_FUNCTION_18_18();
          v150(v149);
          (*(v130 + 32))(v102, v160, v103);
        }

        v96 = v102;
        v97 = 0;
        v98 = v103;
      }
    }

    else
    {
      v154 = v33;
      if (qword_2800C9438 != -1)
      {
        OUTLINED_FUNCTION_0_72(&qword_2800C9438);
      }

      v61 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v61, qword_2800CD620);
      v62 = v161;
      v63 = v159;
      (*(v161 + 16))(v21, v160, v159);
      v64 = sub_266DA948C();
      v65 = sub_266DAAB0C();
      v66 = os_log_type_enabled(v64, v65);
      v67 = v156;
      if (v66)
      {
        v68 = OUTLINED_FUNCTION_14_0();
        v69 = OUTLINED_FUNCTION_13_0();
        v163 = v69;
        *v68 = 136315138;
        OUTLINED_FUNCTION_2_59();
        sub_266D492A4(v70, v71, MEMORY[0x277D56000]);
        sub_266DAB13C();
        v73 = v72;
        (*(v161 + 8))(v21, v63);
        v74 = OUTLINED_FUNCTION_9_21();
        v76 = sub_266C22A3C(v74, v73, v75);
        v62 = v161;

        *(v68 + 4) = v76;
        OUTLINED_FUNCTION_21_16();
        _os_log_impl(v77, v78, v79, v80, v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        OUTLINED_FUNCTION_6_34();
        OUTLINED_FUNCTION_6_1();
      }

      else
      {

        (*(v62 + 8))(v21, v63);
      }

      (*(v62 + 32))(v67, v160, v63);
      v96 = v67;
      v97 = 0;
      v98 = v63;
    }

    __swift_storeEnumTagSinglePayload(v96, v97, 1, v98);
    OUTLINED_FUNCTION_5();
  }

  else
  {
    if (qword_2800C9438 != -1)
    {
      OUTLINED_FUNCTION_0_72(&qword_2800C9438);
    }

    v48 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v48, qword_2800CD620);
    v49 = sub_266DA948C();
    v50 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_12_0(v50))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_21_16();
      _os_log_impl(v51, v52, v53, v54, v55, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    OUTLINED_FUNCTION_5();

    __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  }
}

uint64_t sub_266D485AC()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CD620);
  v1 = __swift_project_value_buffer(v0, qword_2800CD620);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266D48674()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  OUTLINED_FUNCTION_4_3(v3);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_5();
  MEMORY[0x28223BE20](v6);
  v7 = *v0;
  if (v7)
  {
    v7 = sub_266DA853C();
  }

  sub_266CA1A78(v7, v2 + 2, v1);

  OUTLINED_FUNCTION_4_13(v1);
  if (v8)
  {
    sub_266D48AFC(v1);
    if (qword_2800C9438 != -1)
    {
      OUTLINED_FUNCTION_0_72(&qword_2800C9438);
    }

    v9 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v9, qword_2800CD620);
    v10 = sub_266DA948C();
    v11 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_12_0(v11))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v12, v13, "FindFriendNLv4IntentWrapper findFriendContactId unable to obtain resolved entity");
      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_22_15();
    v15(v14);
    if (qword_2800C9438 != -1)
    {
      OUTLINED_FUNCTION_0_72(&qword_2800C9438);
    }

    v16 = sub_266DA94AC();
    __swift_project_value_buffer(v16, qword_2800CD620);
    v17 = OUTLINED_FUNCTION_23_17();
    v18(v17);
    v19 = sub_266DA948C();
    v20 = sub_266DAAB0C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_14_0();
      v22 = OUTLINED_FUNCTION_13_0();
      v51 = v22;
      *v21 = 136315138;
      OUTLINED_FUNCTION_1_54();
      sub_266D492A4(v23, v24, MEMORY[0x277D5FEB8]);
      sub_266DAB13C();
      v26 = v25;
      v27 = OUTLINED_FUNCTION_26_8();
      v28(v27);
      v29 = OUTLINED_FUNCTION_9_21();
      v31 = sub_266C22A3C(v29, v26, v30);

      *(v21 + 4) = v31;
      _os_log_impl(&dword_266C08000, v19, v20, "FindFriendNLv4IntentWrapper findFriendContactId resolved entity: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      v32 = OUTLINED_FUNCTION_26_8();
      v33(v32);
    }

    v34 = sub_266D4E468();
    v35 = sub_266DA948C();
    v36 = sub_266DAAB0C();

    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_14_0();
      v37 = OUTLINED_FUNCTION_11_26();
      v51 = v37;
      *v19 = 136315138;
      v38 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B0, &unk_266DB1FA0);
      v39 = sub_266DAA72C();
      v41 = sub_266C22A3C(v39, v40, &v51);

      *(v19 + 4) = v41;
      OUTLINED_FUNCTION_27_12(&dword_266C08000, v42, v43, "FindFriendNLv4IntentWrapper findFriendContactId inPerson: %s");
      __swift_destroy_boxed_opaque_existential_0(v37);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_34();
    }

    v44 = sub_266D4E468();
    v45 = v44;
    if (v44 && (v46 = [v44 contactIdentifier], v45, v46))
    {
      sub_266DAA70C();

      v47 = OUTLINED_FUNCTION_5_39();
      v48(v47);
    }

    else
    {
      v49 = OUTLINED_FUNCTION_5_39();
      v50(v49);
    }
  }

  OUTLINED_FUNCTION_5();
}