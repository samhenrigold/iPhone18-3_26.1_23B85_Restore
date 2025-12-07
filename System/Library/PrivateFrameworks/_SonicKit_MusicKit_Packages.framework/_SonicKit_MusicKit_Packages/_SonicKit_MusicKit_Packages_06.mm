uint64_t sub_275453490(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x656D6954676E6F73;
  }

  return 0x6576727563;
}

uint64_t sub_2754534E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275453388(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275453510(uint64_t a1)
{
  v2 = sub_275453754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545354C(uint64_t a1)
{
  v2 = sub_275453754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.ContinuousSchedule.AutomationPoint.encode(to:)(void *a1)
{
  sub_2754539E8(0, &qword_2809DC780, MEMORY[0x277D84538]);
  v5 = v4;
  OUTLINED_FUNCTION_8_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  v11 = *(v1 + 8);
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275453754();
  sub_27546EB00();
  v18 = 0;
  sub_27546E930();
  if (!v2)
  {
    v14[1] = v11;
    v17 = 1;
    sub_27542D5D8();
    sub_27546E950();
    v16 = v12;
    v15 = 2;
    sub_2754537A8();
    sub_27546E950();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_275453754()
{
  result = qword_2809DC788;
  if (!qword_2809DC788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC788);
  }

  return result;
}

unint64_t sub_2754537A8()
{
  result = qword_2809DC790;
  if (!qword_2809DC790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC790);
  }

  return result;
}

uint64_t Transition.ContinuousSchedule.AutomationPoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2754539E8(0, &qword_2809DC798, MEMORY[0x277D844C8]);
  v6 = v5;
  OUTLINED_FUNCTION_8_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275453754();
  sub_27546EAE0();
  if (!v2)
  {
    v21 = 0;
    sub_27546E8B0();
    v13 = v12;
    v20 = 1;
    sub_27542D478();
    OUTLINED_FUNCTION_1_41(&type metadata for SongTime);
    v14 = v17[1];
    v18 = 2;
    sub_275453A4C();
    OUTLINED_FUNCTION_1_41(&type metadata for Transition.ContinuousSchedule.AutomationCurve);
    (*(v8 + 8))(v11, v6);
    v16 = v19;
    *a2 = v13;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2754539E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_275453754();
    v7 = a3(a1, &_s15AutomationPointV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_275453A4C()
{
  result = qword_2809DC7A0;
  if (!qword_2809DC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7A0);
  }

  return result;
}

uint64_t _s15AutomationPointVwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 17))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
      if (v2 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t _s15AutomationPointVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

_BYTE *_s15AutomationPointV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275453C48);
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

unint64_t sub_275453C84()
{
  result = qword_2809DC7A8;
  if (!qword_2809DC7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7A8);
  }

  return result;
}

unint64_t sub_275453CDC()
{
  result = qword_2809DC7B0;
  if (!qword_2809DC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7B0);
  }

  return result;
}

unint64_t sub_275453D34()
{
  result = qword_2809DC7B8;
  if (!qword_2809DC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_41(uint64_t a1)
{

  return sub_27546E8D0();
}

long double sub_275453DA8(double *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  result = *(v1 + 24);
  if (*a1 >= result)
  {
    return v3;
  }

  v5 = *v1;
  v6 = *(v1 + 16);
  if (v6 >= v2)
  {
    return v5;
  }

  if (result >= v6)
  {
    v7 = *(v1 + 16);
  }

  else
  {
    v7 = *(v1 + 24);
  }

  if (v6 > result)
  {
    v8 = *(v1 + 16);
  }

  else
  {
    v8 = *(v1 + 24);
  }

  if (v7 > v8)
  {
    __break(1u);
    return result;
  }

  v9 = *(v1 + 32);
  if (v7 >= v2)
  {
    v11 = v6 < result;
    v12 = 1.0;
    v13 = 0.0;
  }

  else
  {
    if (v2 < v8)
    {
      v10 = (v2 - v6) / (result - v6);
      goto LABEL_18;
    }

    v11 = v6 < result;
    v12 = 0.0;
    v13 = 1.0;
  }

  if (v11)
  {
    v10 = v13;
  }

  else
  {
    v10 = v12;
  }

LABEL_18:
  if (!(v9 >> 6))
  {
    if (!*(v1 + 32))
    {
      v15 = 1.0;
      v16 = sqrt(1.0 - v10);
LABEL_31:
      v10 = v15 - v16;
      goto LABEL_34;
    }

    if (v9 == 1)
    {
      v10 = v10 * v10;
      goto LABEL_34;
    }

    v14 = pow(v10, 4.0);
    goto LABEL_33;
  }

  if (v9 >> 6 == 1)
  {
    if ((v9 & 0x3F) != 0)
    {
      if ((v9 & 0x3F) == 1)
      {
        v10 = 1.0 - (1.0 - v10) * (1.0 - v10);
        goto LABEL_34;
      }

      v15 = 1.0;
      v16 = pow(1.0 - v10, 4.0);
      goto LABEL_31;
    }

    v14 = sqrt(v10);
LABEL_33:
    v10 = v14;
    goto LABEL_34;
  }

  if (v9 == 129)
  {
    v5 = log2(*v1);
    v3 = log2(v3);
  }

LABEL_34:
  if (v10 > 0.0)
  {
    if (v10 >= 1.0)
    {
      v5 = v3;
    }

    else
    {
      v5 = v5 + v10 * (v3 - v5);
    }
  }

  if (v9 != 129)
  {
    return v5;
  }

  return exp2(v5);
}

__n128 Transition.ContinuousSchedule.AutomationRamp.songTimeRange.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t sub_275453F90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61567472617473 && a2 == 0xEA00000000006575;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6156646E65 && a2 == 0xE800000000000000;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D6954676E6F73 && a2 == 0xED000065676E6152;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6576727563 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_27546E9A0();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2754540F4(char a1)
{
  result = 0x6C61567472617473;
  switch(a1)
  {
    case 1:
      result = 0x65756C6156646E65;
      break;
    case 2:
      result = 0x656D6954676E6F73;
      break;
    case 3:
      result = 0x6576727563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27545419C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275453F90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2754541C4(uint64_t a1)
{
  v2 = sub_2754544A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275454200(uint64_t a1)
{
  v2 = sub_2754544A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.ContinuousSchedule.AutomationRamp.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_1_42();
  sub_2754547A0(0, v3, v4, &_s14AutomationRampV10CodingKeysON_0, MEMORY[0x277D84538]);
  v6 = v5;
  OUTLINED_FUNCTION_8_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754544A8();
  sub_27546EB00();
  LOBYTE(v21) = 0;
  v15 = v20[1];
  sub_27546E930();
  if (!v15)
  {
    LOBYTE(v21) = 1;
    sub_27546E930();
    v21 = v12;
    v22 = v13;
    v23 = 2;
    OUTLINED_FUNCTION_0_41();
    sub_2754547A0(0, v16, v17, v18, MEMORY[0x277D83638]);
    sub_275454808(&qword_2809DB6E0, sub_27542D5D8, MEMORY[0x277D83640]);
    sub_27546E950();
    LOBYTE(v21) = v14;
    v23 = 3;
    sub_2754537A8();
    sub_27546E950();
  }

  return (*(v8 + 8))(v11, v6);
}

unint64_t sub_2754544A8()
{
  result = qword_2809DC7C8;
  if (!qword_2809DC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7C8);
  }

  return result;
}

uint64_t Transition.ContinuousSchedule.AutomationRamp.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  OUTLINED_FUNCTION_1_42();
  sub_2754547A0(0, v4, v5, &_s14AutomationRampV10CodingKeysON_0, MEMORY[0x277D844C8]);
  v7 = v6;
  OUTLINED_FUNCTION_8_9();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754544A8();
  sub_27546EAE0();
  if (!v2)
  {
    v13 = v26;
    LOBYTE(v27) = 0;
    OUTLINED_FUNCTION_2_36();
    sub_27546E8B0();
    v15 = v14;
    LOBYTE(v27) = 1;
    OUTLINED_FUNCTION_2_36();
    sub_27546E8B0();
    v17 = v16;
    OUTLINED_FUNCTION_0_41();
    sub_2754547A0(0, v18, v19, v20, MEMORY[0x277D83638]);
    v29 = 2;
    sub_275454808(&qword_2809DB708, sub_27542D478, MEMORY[0x277D83668]);
    OUTLINED_FUNCTION_2_36();
    sub_27546E8D0();
    v21 = v27;
    v22 = v28;
    v29 = 3;
    sub_275453A4C();
    OUTLINED_FUNCTION_2_36();
    sub_27546E8D0();
    (*(v9 + 8))(v12, v7);
    v24 = v27;
    *v13 = v15;
    *(v13 + 8) = v17;
    *(v13 + 16) = v21;
    *(v13 + 24) = v22;
    *(v13 + 32) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2754547A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_275454808(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_41();
    sub_2754547A0(255, v6, v7, v8, MEMORY[0x277D83638]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2754548CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 33))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (*(a1 + 32) & 0x3C | (*(a1 + 32) >> 6)) ^ 0x3F;
      if (v2 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_275454914(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

_BYTE *_s14AutomationRampV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x275454A44);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_275454A80()
{
  result = qword_2809DC7D8;
  if (!qword_2809DC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7D8);
  }

  return result;
}

unint64_t sub_275454AD8()
{
  result = qword_2809DC7E0;
  if (!qword_2809DC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7E0);
  }

  return result;
}

unint64_t sub_275454B30()
{
  result = qword_2809DC7E8;
  if (!qword_2809DC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7E8);
  }

  return result;
}

uint64_t Transition.ContinuousSchedule.outgoingSongSchedule.getter()
{
  OUTLINED_FUNCTION_2_37();
  memcpy(v1, v2, v3);
  OUTLINED_FUNCTION_2_37();
  memcpy(v4, v5, v6);
  return sub_275454C48(v9, &v8);
}

uint64_t Transition.ContinuousSchedule.incomingSongSchedule.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 80), 0x49uLL);
  memcpy(a1, (v1 + 80), 0x49uLL);
  return sub_275454C48(__dst, &v4);
}

uint64_t sub_275454CF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000027546F6C0 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000027546F6E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

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

uint64_t sub_275454E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275454CF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275454E2C(uint64_t a1)
{
  v2 = sub_2754550A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275454E68(uint64_t a1)
{
  v2 = sub_2754550A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.ContinuousSchedule.encode(to:)(void *a1)
{
  sub_275455400(0, &qword_2809DC7F0, MEMORY[0x277D84538]);
  v5 = v4;
  OUTLINED_FUNCTION_8_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19[-v9 - 8];
  OUTLINED_FUNCTION_2_37();
  memcpy(v11, v12, v13);
  memcpy(__dst, (v1 + 80), 0x49uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275454C48(__src, v22);
  sub_2754550A4();
  sub_27546EB00();
  memcpy(v22, __src, 0x49uLL);
  v26 = 0;
  sub_2754550F8();
  OUTLINED_FUNCTION_3_30(v22, &v26, v14, &type metadata for Transition.ContinuousSchedule.SongSchedule);
  memcpy(v21, v22, 0x49uLL);
  if (v2)
  {
    v15 = v21;
  }

  else
  {
    sub_27545514C(v21);
    memcpy(v20, __dst, 0x49uLL);
    v25 = 1;
    sub_275454C48(__dst, v19);
    OUTLINED_FUNCTION_3_30(v20, &v25, v16, &type metadata for Transition.ContinuousSchedule.SongSchedule);
    memcpy(v19, v20, 0x49uLL);
    v15 = v19;
  }

  sub_27545514C(v15);
  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2754550A4()
{
  result = qword_2809DC7F8;
  if (!qword_2809DC7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC7F8);
  }

  return result;
}

unint64_t sub_2754550F8()
{
  result = qword_2809DC800;
  if (!qword_2809DC800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC800);
  }

  return result;
}

uint64_t Transition.ContinuousSchedule.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  sub_275455400(0, &qword_2809DC808, MEMORY[0x277D844C8]);
  v5 = v4;
  OUTLINED_FUNCTION_8_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754550A4();
  sub_27546EAE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v7;
  v12 = v14;
  __dst[183] = 0;
  sub_275455464();
  OUTLINED_FUNCTION_0_42(&type metadata for Transition.ContinuousSchedule.SongSchedule);
  memcpy(__dst, v18, 0x49uLL);
  __dst[182] = 1;
  OUTLINED_FUNCTION_0_42(&type metadata for Transition.ContinuousSchedule.SongSchedule);
  (*(v11 + 8))(v10, v5);
  memcpy(&__dst[80], v17, 0x49uLL);
  memcpy(v15, __dst, 0x99uLL);
  memcpy(v12, __dst, 0x99uLL);
  sub_2754554B8(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  memcpy(v16, __dst, 0x99uLL);
  return sub_2754554F0(v16);
}

void sub_275455400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2754550A4();
    v7 = a3(a1, &_s18ContinuousScheduleV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_275455464()
{
  result = qword_2809DC810;
  if (!qword_2809DC810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC810);
  }

  return result;
}

void Transition.ContinuousSchedule.timeRange.getter(float64x2_t *a1@<X8>)
{
  v2 = *v1;
  v3.i64[0] = *(v1 + 80);
  v3.i64[1] = *(v1 + 8);
  v2.i64[1] = *(v1 + 88);
  v4 = vbslq_s8(vcgtq_f64(*v1, *(v1 + 80)), v3, v2);
  if (vmovn_s64(vcgtq_f64(v4, vdupq_laneq_s64(v4, 1))).u8[0])
  {
    __break(1u);
  }

  else
  {
    *a1 = v4;
  }
}

void Transition.ContinuousSchedule.duration.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[10] < *v0)
  {
    v1 = v0[10];
  }

  if (v0[11] >= v2)
  {
    v2 = v0[11];
  }

  if (v2 < v1)
  {
    __break(1u);
  }
}

__n128 Transition.ContinuousSchedule.playbackEndState.getter@<Q0>(__n128 *a1@<X8>)
{
  OUTLINED_FUNCTION_2_37();
  memcpy(v3, v4, v5);
  memcpy(v9, (v1 + 80), sizeof(v9));
  sub_275455954(v10);
  v6 = v10[0];
  v7 = v10[1];
  sub_275455954(v11[0].n128_f64);
  result = v11[0];
  a1->n128_f64[0] = v6;
  a1->n128_f64[1] = v7;
  a1[1] = result;
  return result;
}

uint64_t sub_275455634(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 153))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_275455674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s18ContinuousScheduleV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2754557B8);
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

unint64_t sub_2754557F4()
{
  result = qword_2809DC818;
  if (!qword_2809DC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC818);
  }

  return result;
}

unint64_t sub_27545584C()
{
  result = qword_2809DC820;
  if (!qword_2809DC820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC820);
  }

  return result;
}

unint64_t sub_2754558A4()
{
  result = qword_2809DC828;
  if (!qword_2809DC828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC828);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_42(uint64_t a1)
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_3_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_27546E950();
}

void sub_275455954(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v28 = *(v1 + 1);
  v29 = v5;
  v30[0] = *(v1 + 3);
  *(v30 + 9) = *(v1 + 57);
  v26 = v3;
  v27 = v4;
  sub_275457480(&v18);
  if (v4 < v20 || v25 > 0xFBu)
  {
    v13 = v19 + v4 - v20;
    v12 = v18 + v13 - v19;
  }

  else
  {
    v16[1] = v18;
    v16[2] = v19;
    v16[3] = v20;
    v16[4] = v21;
    v16[5] = v22;
    v16[6] = v23;
    v16[7] = v24;
    v17 = v25;
    v16[0] = v4;
    *v14 = v21;
    *&v14[1] = v22;
    *&v14[2] = v23;
    *&v14[3] = v24;
    v15 = v25;
    sub_27542DA30(v16, v14, v31, v6, v7, v8, v9, v10, v11);
    v12 = v31[0];
    v13 = v31[1];
  }

  *a1 = v12;
  a1[1] = v13;
}

__n128 Transition.ContinuousSchedule.SongSchedule.transitionTimeRange.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double Transition.ContinuousSchedule.SongSchedule.songTimeRange.getter@<D0>(double *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 32);
  v7 = *(v1 + 16);
  v8 = v4;
  v9[0] = *(v1 + 48);
  *(v9 + 9) = *(v1 + 57);
  v6[2] = v2;
  v6[3] = v3;
  v6[0] = v2;
  v6[1] = v3;
  sub_275455A94(v6, a1);
  return result;
}

void sub_275455A94(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_275457480(&v39);
  if (v4 < v41 || v46 > 0xFBu)
  {
    v11 = v39 + v40 + v4 - v41 - v40;
  }

  else
  {
    v30 = v39;
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v19[0] = v4;
    v22 = v42;
    v23 = v43;
    v24 = v44;
    v25 = v45;
    LOBYTE(v26) = v46;
    sub_27542DA30(v19, &v22, v47, v5, v6, v7, v8, v9, v10);
    v11 = v47[0];
  }

  sub_275457480(&v30);
  if (v3 < v32 || v37 > 0xFBu)
  {
    v18 = v30 + v31 + v3 - v32 - v31;
  }

  else
  {
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v28 = v36;
    v29 = v37;
    v21 = v3;
    v19[0] = v33;
    v19[1] = v34;
    v19[2] = v35;
    v19[3] = v36;
    v20 = v37;
    sub_27542DA30(&v21, v19, v38, v12, v13, v14, v15, v16, v17);
    v18 = v38[0];
  }

  if (v18 < v11)
  {
    __break(1u);
  }

  else
  {
    *a2 = v11;
    a2[1] = v18;
  }
}

__n128 Transition.ContinuousSchedule.SongSchedule.playbackTransitionTimeRange.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

double Transition.ContinuousSchedule.SongSchedule.playbackSongTimeRange.getter@<D0>(double *a1@<X8>)
{
  v7 = *v1;
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = v1[3];
  v10 = v1[2];
  v11[0] = v4;
  *(v11 + 9) = *(v1 + 57);
  v8 = v2;
  v9 = v3;
  v6[0] = v2;
  v6[1] = v3;
  sub_275455A94(v6, a1);
  return result;
}

double Transition.ContinuousSchedule.SongSchedule.referenceTransitionTime.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 32);
  *a1 = result;
  return result;
}

double Transition.ContinuousSchedule.SongSchedule.referenceSongTime.getter@<D0>(double *a1@<X8>)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = *(v1 + 4);
  v9 = *(v1 + 40);
  v10 = *(v1 + 56);
  v11 = *(v1 + 72);
  v8 = v3;
  v5 = v3;
  sub_275455CA8(&v5, a1);
  return result;
}

void sub_275455CA8(double *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  sub_275457480(&v15);
  if (v3 < v17 || v22 > 0xFBu)
  {
    v10 = v15 + v16 + v3 - v17 - v16;
  }

  else
  {
    v13[1] = v15;
    v13[2] = v16;
    v13[3] = v17;
    v13[4] = v18;
    v13[5] = v19;
    v13[6] = v20;
    v13[7] = v21;
    v14 = v22;
    v13[0] = v3;
    *v11 = v18;
    *&v11[1] = v19;
    *&v11[2] = v20;
    *&v11[3] = v21;
    v12 = v22;
    sub_27542DA30(v13, v11, v23, v4, v5, v6, v7, v8, v9);
    v10 = v23[0];
  }

  *a2 = v10;
}

uint64_t sub_275455D6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000027546F700 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x800000027546F720 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x800000027546F740 == a2;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974616D6F747561 && a2 == 0xEB00000000736E6FLL;
        if (v8 || (sub_27546E9A0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x800000027546F760 == a2;
          if (v9 || (sub_27546E9A0() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000018 && 0x800000027546F3E0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_27546E9A0();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_275455F60(char a1)
{
  result = 0x6974616D6F747561;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_275456060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275455D6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275456088@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275455F58();
  *a1 = result;
  return result;
}

uint64_t sub_2754560B0(uint64_t a1)
{
  v2 = sub_275456434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754560EC(uint64_t a1)
{
  v2 = sub_275456434();

  return MEMORY[0x2821FE720](a1, v2);
}

void Transition.ContinuousSchedule.SongSchedule.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_12_12();
  v5 = v4;
  OUTLINED_FUNCTION_3_31();
  sub_275456944(0, v6, v7, &_s12SongScheduleV10CodingKeysON, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_8_16();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = *v2;
  v14 = v2[1];
  v15 = v2[2];
  v16 = v2[3];
  v17 = v2[4];
  v18 = v2[5];
  v19 = v2[6];
  v20 = v2[8];
  v29 = v2[7];
  v30 = v18;
  v28 = v20;
  v34 = *(v2 + 72);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_275456434();
  sub_27546EB00();
  v31 = v13;
  v32 = v14;
  OUTLINED_FUNCTION_0_43();
  sub_275456944(0, v21, v22, v23, MEMORY[0x277D83638]);
  sub_2754569AC(&qword_2809DB4A0, sub_27542D680);
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_7_19();
  sub_27546E950();
  if (!v3)
  {
    v24 = v29;
    v25 = v30;
    v31 = v15;
    v32 = v16;
    OUTLINED_FUNCTION_2_38();
    OUTLINED_FUNCTION_7_19();
    sub_27546E950();
    v31 = v17;
    sub_27542D680();
    OUTLINED_FUNCTION_2_38();
    OUTLINED_FUNCTION_7_19();
    sub_27546E950();
    v31 = v25;
    OUTLINED_FUNCTION_1_43();
    sub_275456F10(0, v26, v27);
    sub_275456488(&qword_2809DC848, sub_2754564F0);
    OUTLINED_FUNCTION_2_38();
    OUTLINED_FUNCTION_7_19();
    sub_27546E950();
    v31 = v19;
    sub_27542D5D8();
    OUTLINED_FUNCTION_2_38();
    OUTLINED_FUNCTION_7_19();
    sub_27546E950();
    v31 = v24;
    v32 = v28;
    v33 = v34;
    sub_275444A30();
    OUTLINED_FUNCTION_2_38();
    OUTLINED_FUNCTION_7_19();
    sub_27546E910();
  }

  (*(v9 + 8))(v12, v1);
  OUTLINED_FUNCTION_13_12();
}

unint64_t sub_275456434()
{
  result = qword_2809DC838;
  if (!qword_2809DC838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC838);
  }

  return result;
}

uint64_t sub_275456488(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_1_43();
    sub_275456F10(255, v5, v6);
    a2();
    result = OUTLINED_FUNCTION_10_14();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2754564F0()
{
  result = qword_2809DC850;
  if (!qword_2809DC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC850);
  }

  return result;
}

void Transition.ContinuousSchedule.SongSchedule.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_12_12();
  v31 = v30;
  v33 = v32;
  OUTLINED_FUNCTION_3_31();
  sub_275456944(0, v34, v35, &_s12SongScheduleV10CodingKeysON, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_8_16();
  MEMORY[0x28223BE20](v36);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_275456434();
  sub_27546EAE0();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v54 = v33;
    OUTLINED_FUNCTION_0_43();
    sub_275456944(0, v37, v38, v39, MEMORY[0x277D83638]);
    LOBYTE(v55[0]) = 0;
    sub_2754569AC(&qword_2809DB4B0, sub_27542D520);
    OUTLINED_FUNCTION_6_22();
    v40 = v56;
    v41 = v57;
    OUTLINED_FUNCTION_9_11(1);
    OUTLINED_FUNCTION_6_22();
    v42 = v56;
    v43 = v57;
    OUTLINED_FUNCTION_9_11(2);
    sub_27542D520();
    OUTLINED_FUNCTION_5_23();
    sub_27546E8D0();
    v44 = v56;
    OUTLINED_FUNCTION_1_43();
    sub_275456F10(0, v45, v46);
    OUTLINED_FUNCTION_9_11(3);
    sub_275456488(&qword_2809DC860, sub_275456A30);
    sub_27546E8D0();
    v47 = v56;
    OUTLINED_FUNCTION_9_11(4);
    sub_27542D478();
    OUTLINED_FUNCTION_5_23();
    sub_27546E8D0();
    v48 = v56;
    sub_275444AE8();
    OUTLINED_FUNCTION_5_23();
    sub_27546E890();
    v49 = OUTLINED_FUNCTION_4_23();
    v50(v49);
    v51 = v66;
    v52 = v67;
    v53 = v68;
    v55[0] = v40;
    v55[1] = v41;
    v55[2] = v42;
    v55[3] = v43;
    v55[4] = v44;
    v55[5] = v47;
    v55[6] = v48;
    v55[7] = v66;
    v55[8] = v67;
    LOBYTE(v55[9]) = v68;
    memcpy(v54, v55, 0x49uLL);
    sub_275454C48(v55, &v56);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v56 = v40;
    v57 = v41;
    v58 = v42;
    v59 = v43;
    v60 = v44;
    v61 = v47;
    v62 = v48;
    v63 = v51;
    v64 = v52;
    v65 = v53;
    sub_27545514C(&v56);
  }

  OUTLINED_FUNCTION_13_12();
}

void sub_275456944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_2754569AC(unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_43();
    sub_275456944(255, v5, v6, v7, MEMORY[0x277D83638]);
    a2();
    result = OUTLINED_FUNCTION_10_14();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_275456A30()
{
  result = qword_2809DC868;
  if (!qword_2809DC868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC868);
  }

  return result;
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Transition.ContinuousSchedule.SongSchedule.playbackRate(at:)(_SonicKit_MusicKit_Packages::TransitionTime at)
{
  v3 = *v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  *&v14 = *v2;
  *(&v14 + 1) = v5;
  v6 = *(v2 + 32);
  v15 = *(v2 + 16);
  v16 = v6;
  v17[0] = *(v2 + 48);
  *(v17 + 9) = *(v2 + 57);
  sub_275456C20(v18);
  v7 = v18[0];
  v19 = v18[1];
  v20 = v18[2];
  v21 = v18[3];
  if (*(&v18[0] + 1))
  {
    if (v3 < v4 || v5 < v3)
    {
      sub_275456E98(v18);
      sub_275408F98();
      v9 = swift_allocError();
      OUTLINED_FUNCTION_11_14(v9, v10);
    }

    else
    {
      *&v14 = v4;
      *(&v14 + 1) = v5;
      v11 = *(v2 + 32);
      v15 = *(v2 + 16);
      v16 = v11;
      v17[0] = *(v2 + 48);
      *(v17 + 9) = *(v2 + 57);
      v22 = v3;
      sub_275455CA8(&v22, &v13);
      v14 = v7;
      v15 = v19;
      v16 = v20;
      v17[0] = v21;
      v3 = sub_27544F528(&v13);
      sub_275456E98(v18);
    }
  }

  else
  {
    if (qword_2809DAD90 != -1)
    {
      swift_once();
    }

    return *&qword_2809DC3D8;
  }

  return v3;
}

void sub_275456C20(_OWORD *a1@<X8>)
{
  v2 = 0;
  v3 = *(v1 + 40);
  v24 = *(v3 + 16);
  for (i = (v3 + 32); ; i += 4)
  {
    if (v24 == v2)
    {
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
      return;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    v6 = i[2];
    v5 = i[3];
    v7 = i[1];
    v26 = *i;
    v27 = v7;
    v28 = v6;
    v29 = v5;
    v8 = v26;
    v9 = v7;
    v11 = v6;
    v10 = v5;
    sub_2753EF21C(&v26, v25);
    v12 = qword_2809DAD90;

    if (v12 != -1)
    {
      swift_once();
    }

    v14 = *&qword_2809DC3C8;
    v13 = unk_2809DC3D0;
    v15 = *&qword_2809DC3D8;
    v16 = qword_2809DC3E0;
    v17 = unk_2809DC3E8;
    v18 = v8 == qword_2809DC3B8 && *(&v8 + 1) == unk_2809DC3C0;
    if (v18 || (sub_27546E9A0()) && *&v9 == v14 && *(&v9 + 1) == v13 && *&v11 == v15)
    {
      if (*(&v11 + 1) == v16 && v10 == v17)
      {

LABEL_24:
        v21 = v27;
        *a1 = v26;
        a1[1] = v21;
        v22 = v29;
        a1[2] = v28;
        a1[3] = v22;
        return;
      }

      v20 = sub_27546E9A0();

      if (v20)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    sub_2753EF278(&v26);
    ++v2;
  }

  __break(1u);
}

_SonicKit_MusicKit_Packages::SongTime __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Transition.ContinuousSchedule.SongSchedule.songTime(at:)(_SonicKit_MusicKit_Packages::TransitionTime at)
{
  v4 = *v1;
  v5 = *(v3 + 8);
  if (*v1 < *v3 || v5 < v4)
  {
    sub_275408F98();
    v7 = swift_allocError();
    result.rawValue = OUTLINED_FUNCTION_11_14(v7, v8);
  }

  else
  {
    v11[1] = *v3;
    v11[2] = v5;
    v9 = *(v3 + 32);
    v12 = *(v3 + 16);
    v13 = v9;
    v14[0] = *(v3 + 48);
    *(v14 + 9) = *(v3 + 57);
    v11[0] = v4;
    sub_275455CA8(v11, v2);
  }

  return result;
}

uint64_t sub_275456E98(uint64_t a1)
{
  sub_275456F10(0, &qword_2809DC870, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_275456F10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Transition.ContinuousSchedule.Automation);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_275456F98(_SonicKit_MusicKit_Packages::TransitionTime *a1@<X0>, void *a2@<X2>, double *a3@<X8>)
{
  v6 = Transition.ContinuousSchedule.SongSchedule.playbackRate(at:)(*&a1->rawValue);
  if (v5)
  {
    *a2 = v5;
  }

  else
  {
    *a3 = v6;
  }
}

uint64_t sub_275457040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), char *a5)
{
  memcpy(__dst, v5, 0x49uLL);
  v12[2] = __dst;
  v10 = sub_27544F86C();
  return sub_275447280(a4, v12, a2, a5, v10, a3, MEMORY[0x277D84950], &v13);
}

void sub_2754570EC(double *a1@<X0>, double *a2@<X1>, uint64_t *a3@<X2>, double *a4@<X8>)
{
  v5 = *a1;
  if (*a1 >= *a2 && a2[1] >= v5)
  {
    memcpy(__dst, a2, sizeof(__dst));
    v9 = v5;
    sub_275455CA8(&v9, a4);
  }

  else
  {
    sub_275408F98();
    v6 = swift_allocError();
    *v7 = 11;
    swift_willThrow();
    *a3 = v6;
  }
}

uint64_t sub_2754571D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_275457210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s12SongScheduleV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x275457340);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27545737C()
{
  result = qword_2809DC878;
  if (!qword_2809DC878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC878);
  }

  return result;
}

unint64_t sub_2754573D4()
{
  result = qword_2809DC880;
  if (!qword_2809DC880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC880);
  }

  return result;
}

unint64_t sub_27545742C()
{
  result = qword_2809DC888;
  if (!qword_2809DC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC888);
  }

  return result;
}

void sub_275457480(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  sub_275456C20(v21);
  if (*(&v21[0] + 1))
  {
    v8 = v22;
    swift_bridgeObjectRetain_n();
    v9 = sub_27544FBA0(1, v8);
    v23[0] = v8;
    v23[1] = v9;
    v23[2] = v10;
    v23[3] = v11;
    v23[4] = v12;
    sub_27544E690(v23);
    v14 = v13;
    swift_unknownObjectRelease();

    sub_275456E98(v21);
    if (*(v14 + 16))
    {
      v19 = *(v14 + 48);
      v20 = *(v14 + 32);
      v15 = *(v14 + 64);
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v15 = -4;
    }

    v17 = v19;
    v16 = v20;
  }

  else
  {
    v16 = 0uLL;
    v15 = -4;
    v17 = 0uLL;
  }

  v18 = v4 + v6 - v5;
  if (v7)
  {
    v18 = v4;
  }

  *a1 = v4;
  *(a1 + 8) = v18;
  *(a1 + 16) = v3;
  *(a1 + 24) = v16;
  *(a1 + 40) = v17;
  *(a1 + 56) = v15;
}

uint64_t OUTLINED_FUNCTION_6_22()
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_10_14()
{

  return swift_getWitnessTable();
}

double OUTLINED_FUNCTION_11_14(uint64_t a1, _BYTE *a2)
{
  *a2 = 11;

  swift_willThrow();
  return result;
}

void *sub_275457740(void *result, void *(*a2)(__int128 *__return_ptr, __int128 *, __int128 *))
{
  v2 = result[4] >> 1;
  v37 = result[3];
  v3 = v2 - v37;
  if (__OFSUB__(v2, v37))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v4 = *result;
  v36 = result[2];
  v41 = *(*result + 16);
  if (v3 >= v41)
  {
    v5 = *(*result + 16);
  }

  else
  {
    v5 = v2 - v37;
  }

  v51 = MEMORY[0x277D84F90];
  result = sub_275441AD4(0, v5 & ~(v5 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v34 = v4;
    v6 = v51;
    v39 = v2;
    if (!v5)
    {

      result = swift_unknownObjectRetain();
      v8 = 0;
      v38 = v37;
LABEL_26:
      v22 = v38;
      v23 = (v36 + 32 * v38 + 16);
      for (i = (v34 + 32 * v8 + 48); v41 != v8; i += 2)
      {
        if (v8 >= v41)
        {
          goto LABEL_42;
        }

        if (__OFADD__(v8, 1))
        {
          goto LABEL_43;
        }

        if (v2 == v22)
        {
          break;
        }

        if (v38 < v37 || v22 >= v2)
        {
          goto LABEL_44;
        }

        v26 = *i;
        v46 = *(i - 1);
        v47 = v26;
        v27 = *v23;
        v48 = *(v23 - 1);
        v49 = v27;
        result = a2(&v42, &v46, &v48);
        v51 = v6;
        v29 = *(v6 + 16);
        v28 = *(v6 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_275441AD4((v28 > 1), v29 + 1, 1);
          v6 = v51;
        }

        *(v6 + 16) = v29 + 1;
        v30 = (v6 + (v29 << 6));
        v31 = v42;
        v32 = v43;
        v33 = v45;
        v30[4] = v44;
        v30[5] = v33;
        v30[2] = v31;
        v30[3] = v32;
        v23 += 2;
        ++v8;
        ++v22;
        v2 = v39;
      }

      swift_unknownObjectRelease();

      return v6;
    }

    v35 = v4 + 32;

    result = swift_unknownObjectRetain();
    v7 = 0;
    v8 = 0;
    v38 = v37;
    while (v7 < v5)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_41;
      }

      if (v8 == v41)
      {
LABEL_14:
        LOBYTE(v42) = 1;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 1;
        goto LABEL_50;
      }

      if (v8 >= v41)
      {
        goto LABEL_45;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_46;
      }

      if (v38 == v2)
      {
        goto LABEL_14;
      }

      if (v38 < v37 || v38 >= v2)
      {
        goto LABEL_47;
      }

      v17 = (v35 + 32 * v8);
      v18 = *v17;
      v19 = v17[1];
      v20 = (v36 + 32 * v38);
      v46 = v18;
      v47 = v19;
      v21 = v20[1];
      v48 = *v20;
      v49 = v21;
      v50 = 0;
      ++v38;
      ++v8;
      result = a2(&v42, &v46, &v48);
      v51 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_275441AD4((v10 > 1), v11 + 1, 1);
        v6 = v51;
      }

      *(v6 + 16) = v11 + 1;
      v12 = (v6 + (v11 << 6));
      v13 = v42;
      v14 = v43;
      v15 = v45;
      v12[4] = v44;
      v12[5] = v15;
      v12[2] = v13;
      v12[3] = v14;
      ++v7;
      v2 = v39;
      if (v9 == v5)
      {
        goto LABEL_26;
      }
    }

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
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

double Transition.SteppedSchedule.Automation.parameter.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;

  return result;
}

uint64_t sub_275457B44()
{
  memcpy(__dst, v0, 0x89uLL);
  sub_275458E24();
  v2 = v1;
  if (*(v1 + 16))
  {
    v46 = *(v1 + 48);
    v47 = *(v1 + 32);

    result = sub_27544FBA0(1, v2);
    v4 = result;
    v6 = v5;
    v7 = 0;
    v8 = *(v2 + 16);
    v10 = v9 >> 1;
    v12 = v11 - 8;
    v13 = MEMORY[0x277D84F90];
    v14 = v5;
    v15 = MEMORY[0x277D84F90];
    v16 = v5;
LABEL_3:
    v17 = (v12 + 32 * v14);
    v18 = v2 + 16 + 32 * v7;
    while (v8 != v7)
    {
      if (v7 >= *(v2 + 16))
      {
        goto LABEL_29;
      }

      if (v10 == v16)
      {
        break;
      }

      if (v14 < v6 || v16 >= v10)
      {
        goto LABEL_30;
      }

      v20 = *(v18 + 16);
      v21 = v17[1];
      ++v16;
      v17 += 4;
      v18 += 32;
      ++v7;
      if (v21 != v20)
      {
        v44 = v12;
        v22 = *(v18 - 8);
        v23 = *v18;
        v24 = *(v18 + 8);
        v26 = *(v17 - 2);
        v25 = *(v17 - 1);
        v27 = *v17;
        result = swift_isUniquelyReferenced_nonNull_native();
        __dst[0] = v15;
        v42 = v4;
        if ((result & 1) == 0)
        {
          result = sub_275441AB4(0, *(v15 + 16) + 1, 1);
          v15 = __dst[0];
        }

        v29 = *(v15 + 16);
        v28 = *(v15 + 24);
        v30 = v29 + 1;
        v12 = v44;
        if (v29 >= v28 >> 1)
        {
          result = sub_275441AB4((v28 > 1), v29 + 1, 1);
          v12 = v44;
          v13 = MEMORY[0x277D84F90];
          v30 = v29 + 1;
          v15 = __dst[0];
        }

        *(v15 + 16) = v30;
        v31 = v15 + (v29 << 6);
        *(v31 + 32) = v20;
        *(v31 + 40) = v22;
        *(v31 + 48) = v23;
        *(v31 + 56) = v24;
        *(v31 + 64) = v21;
        *(v31 + 72) = v26;
        v14 = v16;
        *(v31 + 80) = v25;
        *(v31 + 88) = v27;
        v4 = v42;
        goto LABEL_3;
      }
    }

    swift_unknownObjectRelease();

    v32 = *(v15 + 16);
    if (v32)
    {
      __dst[0] = v13;
      result = sub_275441A94(0, v32, 0);
      v33 = 0;
      v34 = __dst[0];
      v35 = (v15 + 80);
      while (v33 < *(v15 + 16))
      {
        v36 = *(v35 - 1);
        v37 = *v35;
        __dst[0] = v34;
        v39 = *(v34 + 16);
        v38 = *(v34 + 24);
        if (v39 >= v38 >> 1)
        {
          v43 = v37;
          v45 = v36;
          result = sub_275441A94((v38 > 1), v39 + 1, 1);
          v37 = v43;
          v36 = v45;
          v34 = __dst[0];
        }

        ++v33;
        *(v34 + 16) = v39 + 1;
        v40 = v34 + 32 * v39;
        *(v40 + 32) = v36;
        *(v40 + 48) = v37;
        v35 += 4;
        if (v32 == v33)
        {

          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v34 = MEMORY[0x277D84F90];
LABEL_27:
    sub_275459120();
    v41 = swift_allocObject();
    v41[1] = xmmword_275474500;
    v41[2] = v47;
    v41[3] = v46;
    __dst[0] = v41;
    sub_275459364(v34);
    return __dst[0];
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

void *sub_275457E80()
{
  memcpy(v66, v0, sizeof(v66));
  memcpy(v65, v0, 0x89uLL);
  sub_275458E24();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32 * v3);
    v60 = *v4;
    v61 = v4[1];
    sub_275459120();
    v5 = swift_allocObject();
    v62 = *(v2 + 48);
    *(v5 + 32) = *(v2 + 32);
    *(v5 + 48) = v62;
    *(v5 + 16) = xmmword_275474500;

    v6 = 1;
    v8 = sub_27544FBA0(1, v2);
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *(v2 + 16);
    v15 = v14 >> 1;
    v16 = *(&v62 + 1);
    v17 = v9;
    v18 = v9;
LABEL_3:
    v19 = 0;
    v20 = v7 + 32 * v17;
    v21 = v2 + 32 * v11;
    while (v13 != v11)
    {
      if (v11 >= *(v2 + 16))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        sub_275431D78(v17 > 1, v2, 1, v5);
        v45 = v61;
        v5 = v54;
LABEL_26:
        *(v5 + 16) = v2;
        v47 = v5 + 32 * v15;
        *(v47 + 32) = v60;
        *(v47 + 48) = v45;
        goto LABEL_27;
      }

      if (v15 == v18)
      {
        break;
      }

      if (v17 < v10 || v18 >= v15)
      {
        goto LABEL_31;
      }

      v23 = *(v21 + v19 + 32);
      v24 = *(v20 + v19);
      ++v18;
      v19 += 32;
      ++v11;
      if (v24 != v23)
      {
        v25 = v21 + v19;
        v26 = *(v21 + v19 + 24);
        v27 = v20 + v19;
        v28 = *(v27 - 24);
        v29 = *(v27 - 8);
        if (v16 < v26)
        {
          v30 = *(v25 + 8);
          v31 = *(v5 + 24);
          v32 = v6 + 1;
          if (v6 >= v31 >> 1)
          {
            v64 = v12;
            v40 = v7;
            v41 = v5;
            v42 = v23;
            v56 = v26;
            v43 = v8;
            v59 = v28;
            v55 = v30;
            sub_275431D78(v31 > 1, v6 + 1, 1, v41);
            v30 = v55;
            v28 = v59;
            v7 = v40;
            v8 = v43;
            v26 = v56;
            v23 = v42;
            v32 = v6 + 1;
            v5 = v44;
            v12 = v64;
          }

          *(v5 + 16) = v32;
          v33 = v5 + 32 * v6;
          *(v33 + 32) = v23;
          *(v33 + 40) = v30;
          *(v33 + 56) = v26;
        }

        v35 = *(v5 + 16);
        v34 = *(v5 + 24);
        v6 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          v63 = v12;
          v57 = v7;
          v37 = v5;
          v38 = v8;
          v58 = v28;
          sub_275431D78(v34 > 1, v35 + 1, 1, v37);
          v28 = v58;
          v7 = v57;
          v8 = v38;
          v5 = v39;
          v12 = v63;
        }

        *(v5 + 16) = v6;
        v36 = v5 + 32 * v35;
        *(v36 + 32) = v24;
        *(v36 + 40) = v28;
        *(v36 + 56) = v29;
        v16 = v29;
        v17 = v18;
        goto LABEL_3;
      }
    }

    swift_unknownObjectRelease();

    v45 = v61;
    if (*(&v62 + 1) - v16 == 0.0 && *(&v62 + 1) < *(&v61 + 1))
    {
      v15 = *(v5 + 16);
      v17 = *(v5 + 24);
      v2 = v15 + 1;
      if (v15 >= v17 >> 1)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

LABEL_27:

    v48 = sub_27544FBA0(1, v5);
    v65[0] = v5;
    v65[1] = v48;
    v65[2] = v49;
    v65[3] = v50;
    v65[4] = v51;
    MEMORY[0x28223BE20](v48);

    v52 = sub_275457740(v65, sub_2754591EC);
    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v52;
}

uint64_t sub_275458218(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x800000027546F780 == a2;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000027546F7A0 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x800000027546F7C0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_27546E9A0();

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

unint64_t sub_275458330(char a1)
{
  if (!a1)
  {
    return 0xD000000000000014;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000016;
}

uint64_t sub_27545838C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275458218(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2754583B4(uint64_t a1)
{
  v2 = sub_275458660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754583F0(uint64_t a1)
{
  v2 = sub_275458660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.Automation.encode(to:)(void *a1)
{
  sub_275458A0C(0, &qword_2809DC890, MEMORY[0x277D84538]);
  v5 = v4;
  OUTLINED_FUNCTION_8_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = v1[1];
  v29 = *v1;
  v30 = v11;
  v12 = v1[3];
  v31 = v1[2];
  v32 = v12;
  v23 = *(v1 + 8);
  v13 = *(v1 + 9);
  v14 = v1[6];
  v33 = v1[5];
  v34 = v14;
  v35[0] = v1[7];
  *(v35 + 9) = *(v1 + 121);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2753EF21C(&v29, v28);
  sub_275458660();
  sub_27546EB00();
  v28[0] = v29;
  v28[1] = v30;
  v28[2] = v31;
  v28[3] = v32;
  v27 = 0;
  v15 = sub_2754564F0();
  OUTLINED_FUNCTION_4_24(v28, &v27, v16, &type metadata for Transition.ContinuousSchedule.Automation, v15);
  if (v2)
  {
    OUTLINED_FUNCTION_3_32();
  }

  else
  {
    OUTLINED_FUNCTION_3_32();
    *&v24[0] = v23;
    *(&v24[0] + 1) = v13;
    v26[0] = 1;
    v17 = sub_2754586B4();
    OUTLINED_FUNCTION_4_24(v24, v26, v18, &_s28StepTransitionTimeCalculatorVN, v17);
    v24[0] = v33;
    v24[1] = v34;
    *v25 = v35[0];
    *&v25[9] = *(v35 + 9);
    v26[0] = 2;
    v19 = sub_2754303A4();
    OUTLINED_FUNCTION_4_24(v24, v26, v20, &_s22PlaybackTimeCalculatorVN, v19);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_275458660()
{
  result = qword_2809DC898;
  if (!qword_2809DC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC898);
  }

  return result;
}

unint64_t sub_2754586B4()
{
  result = qword_2809DC8A0;
  if (!qword_2809DC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8A0);
  }

  return result;
}

void Transition.SteppedSchedule.Automation.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  sub_275458A0C(0, &qword_2809DC8A8, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_8_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275458660();
  sub_27546EAE0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v19 = 0;
    sub_275456A30();
    OUTLINED_FUNCTION_1_44();
    sub_27546E8D0();
    v27 = v20;
    v28 = v21;
    v29 = v22;
    v30 = v23;
    LOBYTE(v10[0]) = 1;
    sub_275458A70();
    OUTLINED_FUNCTION_1_44();
    sub_27546E8D0();
    v9 = v11[0];
    v6 = v11[1];
    v15 = 2;
    sub_27543045C();
    OUTLINED_FUNCTION_1_44();
    sub_27546E8D0();
    v7 = OUTLINED_FUNCTION_0_44();
    v8(v7);
    v24 = v16;
    v25 = v17;
    v26[0] = *v18;
    *(v26 + 9) = *&v18[9];
    v10[0] = v27;
    v10[1] = v28;
    v10[2] = v29;
    v10[3] = v30;
    *(&v10[7] + 9) = *&v18[9];
    v10[6] = v17;
    v10[7] = *v18;
    *&v10[4] = v9;
    *(&v10[4] + 1) = v6;
    v10[5] = v16;
    memcpy(a2, v10, 0x89uLL);
    sub_275458AC4(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
    OUTLINED_FUNCTION_6_23();
    v11[8] = v9;
    v11[9] = v6;
    v12 = v24;
    v13 = v25;
    *v14 = v26[0];
    *&v14[9] = *(v26 + 9);
    sub_275458AFC(v11);
  }
}

void sub_275458A0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_275458660();
    v7 = a3(a1, &_s10AutomationV10CodingKeysON_0, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_275458A70()
{
  result = qword_2809DC8B0;
  if (!qword_2809DC8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8B0);
  }

  return result;
}

uint64_t sub_275458B64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 137))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_275458BA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s10AutomationV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275458CE4);
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

unint64_t sub_275458D20()
{
  result = qword_2809DC8B8;
  if (!qword_2809DC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8B8);
  }

  return result;
}

unint64_t sub_275458D78()
{
  result = qword_2809DC8C0;
  if (!qword_2809DC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8C0);
  }

  return result;
}

unint64_t sub_275458DD0()
{
  result = qword_2809DC8C8;
  if (!qword_2809DC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8C8);
  }

  return result;
}

void sub_275458E24()
{
  v43 = *(v0 + 32);
  v1 = *(v0 + 56);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v46 = *(v0 + 112);
  v47 = *(v0 + 104);
  v44 = *(v0 + 128);
  v45 = *(v0 + 120);
  v5 = *(v0 + 136);
  v6 = sub_275430794(*(v0 + 64), *(v0 + 72));
  v7 = *(v6 + 16);
  if (!v7)
  {

    return;
  }

  v8 = v6;
  v61 = MEMORY[0x277D84F90];
  sub_275441A94(0, v7, 0);
  v15 = 0;
  v16 = v61;
  v17 = *(v1 + 16);
  v48 = v8 + 32;
  v41 = v3;
  v42 = v2;
  while (1)
  {
    v18 = *(v48 + 8 * v15);
    if (v18 < v4 || v5 > 0xFB)
    {
      v19 = v3 + v18 - v4;
      v20 = v2 + v19 - v3;
      if (!v17)
      {
LABEL_6:
        v21 = v43;
        goto LABEL_19;
      }
    }

    else
    {
      v52 = v2;
      v53 = v3;
      v54 = v4;
      v55 = v47;
      v56 = v46;
      v57 = v45;
      v58 = v44;
      v59 = v5;
      v51 = v18;
      v49[0] = v47;
      v49[1] = v46;
      v49[2] = v45;
      v49[3] = v44;
      v50 = v5;
      sub_27542DA30(&v51, v49, v60, v9, v10, v11, v12, v13, v14);
      v20 = v60[0];
      v19 = v60[1];
      v18 = v60[2];
      if (!v17)
      {
        goto LABEL_6;
      }
    }

    v22 = *(v1 + 16);
    if (!v22)
    {
      break;
    }

    if (v17 > v22)
    {
      goto LABEL_25;
    }

    if (v20 >= *(v1 + 40))
    {
      v21 = *(v1 + 24 * v17 + 8);
      swift_bridgeObjectRetain_n();

      v23 = sub_27544FBA0(1, v1);
      v62[0] = v1;
      v62[1] = v23;
      v62[2] = v24;
      v62[3] = v25;
      v62[4] = v26;
      sub_27544E690(v62);
      v28 = v27;
      swift_unknownObjectRelease();

      v29 = *(v28 + 16);
      v30 = v28 + 40 * v29 + 32;
      v31 = v29 + 1;
      while (--v31)
      {
        v32 = v30;
        v30 -= 40;
        v33 = *(v32 - 24);
        if (v20 >= v33)
        {
          v34 = *(v32 - 16);
          if (v34 >= v20)
          {
            v35 = *v30;
            v36 = *(v30 + 8);
            v37 = *(v30 + 32);

            v52 = v35;
            v53 = v36;
            v54 = v33;
            v55 = v34;
            LOBYTE(v56) = v37;
            v49[0] = v20;
            v21 = sub_275453DA8(v49);
            goto LABEL_18;
          }
        }
      }

LABEL_18:

      v3 = v41;
      v2 = v42;
    }

    else
    {
      v21 = *(v1 + 32);
    }

LABEL_19:
    v61 = v16;
    v39 = *(v16 + 16);
    v38 = *(v16 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_275441A94((v38 > 1), v39 + 1, 1);
      v16 = v61;
    }

    ++v15;
    *(v16 + 16) = v39 + 1;
    v40 = v16 + 32 * v39;
    *(v40 + 32) = v21;
    *(v40 + 40) = v20;
    *(v40 + 48) = v19;
    *(v40 + 56) = v18;
    if (v15 == v7)
    {

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_275459120()
{
  if (!qword_2809DB588)
  {
    v0 = sub_27546E990();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DB588);
    }
  }
}

__n128 sub_275459170@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[3];
  v13 = *(a1 + 1);
  v14 = v5;
  v11 = *(a2 + 1);
  v12 = v7;
  sub_27545C6AC(&v13, &v11, v15);
  result = v15[0];
  v9 = v15[1];
  v10 = v15[2];
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = result;
  *(a3 + 32) = v9;
  *(a3 + 48) = v10;
  return result;
}

void sub_2754591F4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_39(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_275459448(v4, 1, sub_275431038);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_24();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2754592AC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_39(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_275459448(v4, 1, sub_2754311BC);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_24();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_275459364(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_275459448(v4 + v3, 1, sub_275431D78);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = *(v5 + 16);
  if ((*(v5 + 24) >> 1) - v6 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 32 * v6 + 32), (a1 + 32), 32 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v7 = *(v5 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v5 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_275459448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t OUTLINED_FUNCTION_3_32()
{
  v2 = v0[11];
  v0[5] = v0[10];
  v0[6] = v2;
  v3 = v0[13];
  v0[7] = v0[12];
  v0[8] = v3;

  return sub_2753EF278((v0 + 5));
}

uint64_t OUTLINED_FUNCTION_4_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27546E950();
}

__n128 OUTLINED_FUNCTION_6_23()
{
  v2 = *(v1 - 144);
  *(v0 + 160) = *(v1 - 160);
  *(v0 + 176) = v2;
  result = *(v1 - 128);
  v4 = *(v1 - 112);
  *(v0 + 192) = result;
  *(v0 + 208) = v4;
  return result;
}

double Transition.SteppedSchedule.AutomationPoint.time.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_27545957C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

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

uint64_t sub_275459640(char a1)
{
  if (a1)
  {
    return 1701669236;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_275459674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27545957C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27545969C(uint64_t a1)
{
  v2 = sub_2754598A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754596D8(uint64_t a1)
{
  v2 = sub_2754598A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.AutomationPoint.encode(to:)(void *a1)
{
  sub_275459B24(0, &qword_2809DC8D0, MEMORY[0x277D84538]);
  v5 = v4;
  OUTLINED_FUNCTION_8_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754598A8();
  sub_27546EB00();
  LOBYTE(v16) = 0;
  sub_27546E930();
  if (!v2)
  {
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v15[7] = 1;
    sub_2754598FC();
    sub_27546E950();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2754598A8()
{
  result = qword_2809DC8D8;
  if (!qword_2809DC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8D8);
  }

  return result;
}

unint64_t sub_2754598FC()
{
  result = qword_2809DC8E0;
  if (!qword_2809DC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8E0);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.AutomationPoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_275459B24(0, &qword_2809DC8E8, MEMORY[0x277D844C8]);
  v6 = v5;
  OUTLINED_FUNCTION_8_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v17[-v10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754598A8();
  sub_27546EAE0();
  if (!v2)
  {
    LOBYTE(v18) = 0;
    sub_27546E8B0();
    v13 = v12;
    v17[15] = 1;
    sub_275459B88();
    sub_27546E8D0();
    (*(v8 + 8))(v11, v6);
    v15 = v19;
    v16 = v18;
    *a2 = v13;
    *(a2 + 8) = v16;
    *(a2 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_275459B24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2754598A8();
    v7 = a3(a1, &_s15AutomationPointV10CodingKeysON_0, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_275459B88()
{
  result = qword_2809DC8F0;
  if (!qword_2809DC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8F0);
  }

  return result;
}

_BYTE *_s15AutomationPointV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275459CE8);
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

unint64_t sub_275459D24()
{
  result = qword_2809DC8F8;
  if (!qword_2809DC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC8F8);
  }

  return result;
}

unint64_t sub_275459D7C()
{
  result = qword_2809DC900;
  if (!qword_2809DC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC900);
  }

  return result;
}

unint64_t sub_275459DD4()
{
  result = qword_2809DC908;
  if (!qword_2809DC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC908);
  }

  return result;
}

__n128 Transition.SteppedSchedule.AutomationRamp.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  result = *(v1 + 48);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_275459E4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61567472617473 && a2 == 0xEA00000000006575;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6156646E65 && a2 == 0xE800000000000000;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_27546E9A0();

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

uint64_t sub_275459F6C(char a1)
{
  if (!a1)
  {
    return 0x6C61567472617473;
  }

  if (a1 == 1)
  {
    return 0x65756C6156646E65;
  }

  return 0x676E6152656D6974;
}

uint64_t sub_275459FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275459E4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275459FFC(uint64_t a1)
{
  v2 = sub_27545A23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545A038(uint64_t a1)
{
  v2 = sub_27545A23C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.AutomationRamp.encode(to:)(void *a1)
{
  sub_27545A4C0(0, &qword_2809DC910, MEMORY[0x277D84538]);
  v5 = v4;
  OUTLINED_FUNCTION_8_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = *(v1 + 16);
  v15 = *(v1 + 32);
  v16 = v11;
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545A23C();
  sub_27546EB00();
  LOBYTE(v18) = 0;
  sub_27546E930();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    sub_27546E930();
    v18 = v16;
    v19 = v15;
    v20 = v12;
    v21 = v13;
    v17 = 2;
    sub_27545A290();
    sub_27546E950();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_27545A23C()
{
  result = qword_2809DC918;
  if (!qword_2809DC918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC918);
  }

  return result;
}

unint64_t sub_27545A290()
{
  result = qword_2809DC920;
  if (!qword_2809DC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC920);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.AutomationRamp.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_27545A4C0(0, &qword_2809DC928, MEMORY[0x277D844C8]);
  v6 = v5;
  OUTLINED_FUNCTION_8_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545A23C();
  sub_27546EAE0();
  if (!v2)
  {
    LOBYTE(v18[0]) = 0;
    OUTLINED_FUNCTION_1_45();
    v13 = v12;
    LOBYTE(v18[0]) = 1;
    OUTLINED_FUNCTION_1_45();
    v15 = v14;
    v19 = 2;
    sub_27545A524();
    sub_27546E8D0();
    (*(v8 + 8))(v11, v6);
    *a2 = v13;
    *(a2 + 8) = v15;
    v17 = v18[1];
    *(a2 + 16) = v18[0];
    *(a2 + 32) = v17;
    *(a2 + 48) = v18[2];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_27545A4C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27545A23C();
    v7 = a3(a1, &_s14AutomationRampV10CodingKeysON_1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_27545A524()
{
  result = qword_2809DC930;
  if (!qword_2809DC930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC930);
  }

  return result;
}

uint64_t sub_27545A5A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27545A5C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

_BYTE *_s14AutomationRampV10CodingKeysOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27545A6E0);
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

unint64_t sub_27545A71C()
{
  result = qword_2809DC938;
  if (!qword_2809DC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC938);
  }

  return result;
}

unint64_t sub_27545A774()
{
  result = qword_2809DC940;
  if (!qword_2809DC940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC940);
  }

  return result;
}

unint64_t sub_27545A7CC()
{
  result = qword_2809DC948;
  if (!qword_2809DC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC948);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_45()
{

  return sub_27546E8B0();
}

uint64_t sub_27545A850(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x800000027546F7E0 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000027546F800 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

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

uint64_t sub_27545A95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27545A850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27545A984(uint64_t a1)
{
  v2 = sub_27545ABB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545A9C0(uint64_t a1)
{
  v2 = sub_27545ABB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.AutomationSchedule.encode(to:)(void *a1)
{
  sub_27545AEB4(0, &qword_2809DC950, MEMORY[0x277D84538]);
  v4 = v3;
  OUTLINED_FUNCTION_8_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = *v1;
  v13 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_27545ABB4();

  sub_27546EB00();
  v15 = v10;
  v14 = 0;
  sub_27545AC08();
  sub_27545AF18(&qword_2809DC968, sub_27545AC58, MEMORY[0x277D83948]);
  OUTLINED_FUNCTION_1_46();

  if (!v11)
  {
    v15 = v13;
    v14 = 1;
    OUTLINED_FUNCTION_1_46();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_27545ABB4()
{
  result = qword_2809DC958;
  if (!qword_2809DC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC958);
  }

  return result;
}

void sub_27545AC08()
{
  if (!qword_2809DC960)
  {
    v0 = sub_27546E640();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DC960);
    }
  }
}

unint64_t sub_27545AC58()
{
  result = qword_2809DC970;
  if (!qword_2809DC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC970);
  }

  return result;
}

void Transition.SteppedSchedule.AutomationSchedule.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  sub_27545AEB4(0, &qword_2809DC978, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_8_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545ABB4();
  sub_27546EAE0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_27545AC08();
    sub_27545AF18(&qword_2809DC980, sub_27545AF84, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_0_45();
    OUTLINED_FUNCTION_0_45();
    v6 = OUTLINED_FUNCTION_2_40();
    v7(v6);
    *a2 = v8;
    a2[1] = v8;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_27545AEB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27545ABB4();
    v7 = a3(a1, &_s18AutomationScheduleV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_27545AF18(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_27545AC08();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27545AF84()
{
  result = qword_2809DC988;
  if (!qword_2809DC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC988);
  }

  return result;
}

_BYTE *_s18AutomationScheduleV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27545B0E4);
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

unint64_t sub_27545B120()
{
  result = qword_2809DC990;
  if (!qword_2809DC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC990);
  }

  return result;
}

unint64_t sub_27545B178()
{
  result = qword_2809DC998;
  if (!qword_2809DC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC998);
  }

  return result;
}

unint64_t sub_27545B1D0()
{
  result = qword_2809DC9A0;
  if (!qword_2809DC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_45()
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_1_46()
{

  return sub_27546E950();
}

uint64_t sub_27545B3C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70614D656D6974 && a2 == 0xE700000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636C6143656D6974 && a2 == 0xEE00726F74616C75)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

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

uint64_t sub_27545B498(char a1)
{
  if (a1)
  {
    return 0x636C6143656D6974;
  }

  else
  {
    return 0x70614D656D6974;
  }
}

uint64_t sub_27545B4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27545B3C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27545B50C(uint64_t a1)
{
  v2 = sub_27545B72C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545B548(uint64_t a1)
{
  v2 = sub_27545B72C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.PlaybackAlignmentSchedule.encode(to:)(void *a1)
{
  v3 = v1;
  sub_27545B9F4(0, &qword_2809DC9A8, MEMORY[0x277D84538]);
  v6 = v5;
  OUTLINED_FUNCTION_8_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v22[-v10 - 8];
  v12 = *(v3 + 4);
  memcpy(v24, v3 + 40, sizeof(v24));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545B72C();
  sub_27546EB00();
  v13 = *v3;
  *&v22[16] = v3[1];
  *v22 = v13;
  *&v22[32] = v12;
  v23 = 0;
  v14 = sub_27545B780();
  OUTLINED_FUNCTION_3_33(v14, v15, v16, &_s17TransitionTimeMapVN, v14);
  if (!v2)
  {
    memcpy(v22, v24, sizeof(v22));
    v23 = 1;
    v17 = sub_27545B7D4();
    OUTLINED_FUNCTION_3_33(v17, v18, v19, &_s34SynchronizedPlaybackTimeCalculatorVN, v17);
  }

  return (*(v8 + 8))(v11, v6);
}

unint64_t sub_27545B72C()
{
  result = qword_2809DC9B0;
  if (!qword_2809DC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9B0);
  }

  return result;
}

unint64_t sub_27545B780()
{
  result = qword_2809DC9B8;
  if (!qword_2809DC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9B8);
  }

  return result;
}

unint64_t sub_27545B7D4()
{
  result = qword_2809DC9C0;
  if (!qword_2809DC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9C0);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.PlaybackAlignmentSchedule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_27545B9F4(0, &qword_2809DC9C8, MEMORY[0x277D844C8]);
  v6 = v5;
  OUTLINED_FUNCTION_8_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545B72C();
  sub_27546EAE0();
  if (!v2)
  {
    v18 = 0;
    sub_27545BA58();
    OUTLINED_FUNCTION_2_41(&_s17TransitionTimeMapVN);
    v15 = *&__src[16];
    v16 = *__src;
    v12 = *&__src[32];
    v18 = 1;
    sub_27545BAAC();
    OUTLINED_FUNCTION_2_41(&_s34SynchronizedPlaybackTimeCalculatorVN);
    (*(v8 + 8))(v11, v6);
    v14 = v15;
    *a2 = v16;
    *(a2 + 16) = v14;
    *(a2 + 32) = v12;
    memcpy((a2 + 40), __src, 0x79uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_27545B9F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27545B72C();
    v7 = a3(a1, &_s25PlaybackAlignmentScheduleV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_27545BA58()
{
  result = qword_2809DC9D0;
  if (!qword_2809DC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9D0);
  }

  return result;
}

unint64_t sub_27545BAAC()
{
  result = qword_2809DC9D8;
  if (!qword_2809DC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9D8);
  }

  return result;
}

uint64_t sub_27545BB38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3D && *(a1 + 161))
    {
      v2 = *a1 + 60;
    }

    else
    {
      v3 = *(a1 + 96) & 0x3C | (*(a1 + 96) >> 6);
      v4 = v3 ^ 0x3F;
      v2 = 62 - v3;
      if (v4 >= 0x3D)
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

uint64_t sub_27545BB88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 161) = 0;
    }

    if (a2)
    {
      *(result + 96) = (a2 ^ 0x3F) & 0xFC | ((a2 ^ 0x3F) << 6);
    }
  }

  return result;
}

_BYTE *_s25PlaybackAlignmentScheduleV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27545BCDCLL);
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

unint64_t sub_27545BD18()
{
  result = qword_2809DC9E0;
  if (!qword_2809DC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9E0);
  }

  return result;
}

unint64_t sub_27545BD70()
{
  result = qword_2809DC9E8;
  if (!qword_2809DC9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9E8);
  }

  return result;
}

unint64_t sub_27545BDC8()
{
  result = qword_2809DC9F0;
  if (!qword_2809DC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC9F0);
  }

  return result;
}

double OUTLINED_FUNCTION_0_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = v12;

  *&result = sub_27542FD18(&a10, v10, a3, a4, a5, a6, a7, a8).n128_u64[0];
  return result;
}

void *OUTLINED_FUNCTION_1_47(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return memcpy(va, (v10 + 40), 0x79uLL);
}

uint64_t OUTLINED_FUNCTION_2_41(uint64_t a1)
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_3_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27546E950();
}

uint64_t sub_27545BEE8(uint64_t a1)
{
  v2 = sub_27545C104();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545BF24(uint64_t a1)
{
  v2 = sub_27545C104();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.PlaybackTime.encode(to:)(void *a1)
{
  sub_27545C334(0, &qword_2809DC9F8, MEMORY[0x277D84538]);
  v5 = v4;
  OUTLINED_FUNCTION_8_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545C104();
  sub_27546EB00();
  v26 = v12;
  v25 = 0;
  v14 = sub_27542D5D8();
  OUTLINED_FUNCTION_1_21(v14, v15, v16, &type metadata for SongTime, v14);
  if (!v2)
  {
    v26 = v11;
    v25 = 1;
    v17 = sub_27542D62C();
    OUTLINED_FUNCTION_1_21(v17, v18, v19, &type metadata for StretchedSongTime, v17);
    v26 = v13;
    v25 = 2;
    v20 = sub_27542D680();
    OUTLINED_FUNCTION_1_21(v20, v21, v22, &type metadata for TransitionTime, v20);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_27545C104()
{
  result = qword_2809DCA00;
  if (!qword_2809DCA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA00);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.PlaybackTime.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_27545C334(0, &qword_2809DCA08, MEMORY[0x277D844C8]);
  v6 = v5;
  OUTLINED_FUNCTION_8_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545C104();
  sub_27546EAE0();
  if (!v2)
  {
    v17 = 0;
    sub_27542D478();
    OUTLINED_FUNCTION_0_25(&type metadata for SongTime);
    v12 = v18;
    v17 = 1;
    sub_27542D4CC();
    OUTLINED_FUNCTION_0_25(&type metadata for StretchedSongTime);
    v13 = v18;
    v17 = 2;
    sub_27542D520();
    OUTLINED_FUNCTION_0_25(&type metadata for TransitionTime);
    (*(v8 + 8))(v11, v6);
    v15 = v18;
    *a2 = v12;
    a2[1] = v13;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_27545C334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27545C104();
    v7 = a3(a1, &_s12PlaybackTimeV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_27545C3A0()
{
  result = qword_2809DCA10;
  if (!qword_2809DCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA10);
  }

  return result;
}

_BYTE *_s12PlaybackTimeV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27545C564);
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

unint64_t sub_27545C5A0()
{
  result = qword_2809DCA18;
  if (!qword_2809DCA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA18);
  }

  return result;
}

unint64_t sub_27545C5F8()
{
  result = qword_2809DCA20;
  if (!qword_2809DCA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA20);
  }

  return result;
}

unint64_t sub_27545C650()
{
  result = qword_2809DCA28;
  if (!qword_2809DCA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA28);
  }

  return result;
}

float64x2_t *sub_27545C6AC@<X0>(float64x2_t *result@<X0>, float64x2_t *a2@<X1>, double *a3@<X8>)
{
  v3 = vmovn_s64(vcgtq_f64(*result, *a2));
  if (v3.i8[0])
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3.i8[4])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result[1].f64[0];
  v5 = a2[1].f64[0];
  if (v5 >= v4)
  {
    v6 = a3;
    v7.val[1] = *a2;
    v7.val[0] = *result;
    vst2q_f64(v6, v7);
    v6 += 4;
    *v6 = v4;
    a3[5] = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_27545C714(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6954676E6F73 && a2 == 0xED000065676E6152;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000027546F820 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x800000027546F700 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_27546E9A0();

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

uint64_t sub_27545C838(char a1)
{
  if (!a1)
  {
    return 0x656D6954676E6F73;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0xD000000000000013;
}

uint64_t sub_27545C8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27545C714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27545C8D8(uint64_t a1)
{
  v2 = sub_27545CB8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545C914(uint64_t a1)
{
  v2 = sub_27545CB8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.PlaybackTimeRange.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_3_34();
  sub_27545D074(0, v4, v5, &_s17PlaybackTimeRangeV10CodingKeysON, MEMORY[0x277D84538]);
  v7 = v6;
  OUTLINED_FUNCTION_8_9();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  v17 = v1[4];
  v18 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545CB8C();
  sub_27546EB00();
  v32 = v13;
  v33 = v14;
  v34 = 0;
  OUTLINED_FUNCTION_1_48();
  sub_27545D074(0, v19, v20, v21, MEMORY[0x277D83638]);
  v22 = sub_27545CBE0();
  OUTLINED_FUNCTION_0_47(v22);
  if (!v2)
  {
    v32 = v15;
    v33 = v16;
    v34 = 1;
    OUTLINED_FUNCTION_2_43();
    sub_27545D074(0, v23, v24, v25, MEMORY[0x277D83638]);
    v26 = sub_27545CC90();
    OUTLINED_FUNCTION_0_47(v26);
    v32 = v17;
    v33 = v18;
    v34 = 2;
    OUTLINED_FUNCTION_4_25();
    sub_27545D074(0, v27, v28, v29, MEMORY[0x277D83638]);
    v30 = sub_27545CD40();
    OUTLINED_FUNCTION_0_47(v30);
  }

  return (*(v9 + 8))(v12, v7);
}

unint64_t sub_27545CB8C()
{
  result = qword_2809DCA38;
  if (!qword_2809DCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA38);
  }

  return result;
}

unint64_t sub_27545CBE0()
{
  result = qword_2809DB6E0;
  if (!qword_2809DB6E0)
  {
    sub_27545D074(255, &qword_2809DB6D0, sub_275434B84, &type metadata for SongTime, MEMORY[0x277D83638]);
    sub_27542D5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB6E0);
  }

  return result;
}

unint64_t sub_27545CC90()
{
  result = qword_2809DCA48;
  if (!qword_2809DCA48)
  {
    sub_27545D074(255, &qword_2809DCA40, sub_2754481A4, &type metadata for StretchedSongTime, MEMORY[0x277D83638]);
    sub_27542D62C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA48);
  }

  return result;
}

unint64_t sub_27545CD40()
{
  result = qword_2809DB4A0;
  if (!qword_2809DB4A0)
  {
    sub_27545D074(255, &qword_2809DB490, sub_27542EFB4, &type metadata for TransitionTime, MEMORY[0x277D83638]);
    sub_27542D680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB4A0);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.PlaybackTimeRange.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  OUTLINED_FUNCTION_3_34();
  sub_27545D074(0, v5, v6, &_s17PlaybackTimeRangeV10CodingKeysON, MEMORY[0x277D844C8]);
  v32 = v7;
  OUTLINED_FUNCTION_8_9();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545CB8C();
  sub_27546EAE0();
  if (!v2)
  {
    v13 = v9;
    OUTLINED_FUNCTION_1_48();
    sub_27545D074(0, v14, v15, v16, MEMORY[0x277D83638]);
    v34 = 0;
    sub_27545D0DC();
    v17 = OUTLINED_FUNCTION_5_25();
    v18 = v32;
    OUTLINED_FUNCTION_6_24(v17);
    v19 = v33;
    OUTLINED_FUNCTION_2_43();
    sub_27545D074(0, v20, v21, v22, MEMORY[0x277D83638]);
    v34 = 1;
    sub_27545D18C();
    v23 = OUTLINED_FUNCTION_5_25();
    OUTLINED_FUNCTION_6_24(v23);
    v24 = v33;
    OUTLINED_FUNCTION_4_25();
    sub_27545D074(0, v25, v26, v27, MEMORY[0x277D83638]);
    v34 = 2;
    sub_27545D23C();
    v28 = OUTLINED_FUNCTION_5_25();
    OUTLINED_FUNCTION_6_24(v28);
    (*(v13 + 8))(v12, v18);
    v30 = v33;
    *a2 = v19;
    a2[1] = v24;
    a2[2] = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_27545D074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_27545D0DC()
{
  result = qword_2809DB708;
  if (!qword_2809DB708)
  {
    sub_27545D074(255, &qword_2809DB6D0, sub_275434B84, &type metadata for SongTime, MEMORY[0x277D83638]);
    sub_27542D478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB708);
  }

  return result;
}

unint64_t sub_27545D18C()
{
  result = qword_2809DCA58;
  if (!qword_2809DCA58)
  {
    sub_27545D074(255, &qword_2809DCA40, sub_2754481A4, &type metadata for StretchedSongTime, MEMORY[0x277D83638]);
    sub_27542D4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA58);
  }

  return result;
}

unint64_t sub_27545D23C()
{
  result = qword_2809DB4B0;
  if (!qword_2809DB4B0)
  {
    sub_27545D074(255, &qword_2809DB490, sub_27542EFB4, &type metadata for TransitionTime, MEMORY[0x277D83638]);
    sub_27542D520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB4B0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_27545D35C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27545D37C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

_BYTE *_s17PlaybackTimeRangeV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27545D490);
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

unint64_t sub_27545D4CC()
{
  result = qword_2809DCA60;
  if (!qword_2809DCA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA60);
  }

  return result;
}

unint64_t sub_27545D524()
{
  result = qword_2809DCA68;
  if (!qword_2809DCA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA68);
  }

  return result;
}

unint64_t sub_27545D57C()
{
  result = qword_2809DCA70;
  if (!qword_2809DCA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_47(uint64_t a1)
{

  return sub_27546E950();
}

uint64_t OUTLINED_FUNCTION_6_24(uint64_t a1)
{

  return sub_27546E8D0();
}

uint64_t sub_27545D6C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000027546F840 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000019 && 0x800000027546F860 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000027546F880 == a2;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000019 && 0x800000027546F8A0 == a2;
        if (v8 || (sub_27546E9A0() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x697469736E617274 && a2 == 0xEE00656D69546E6FLL)
        {

          return 4;
        }

        else
        {
          v10 = sub_27546E9A0();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_27545D874(char a1)
{
  result = 0x697469736E617274;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 4:
      return result;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_27545D938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27545D6C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27545D960(uint64_t a1)
{
  v2 = sub_27545DBEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545D99C(uint64_t a1)
{
  v2 = sub_27545DBEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.SynchronizedPlaybackTime.encode(to:)(void *a1)
{
  sub_27545DE8C(0, &qword_2809DCA78, MEMORY[0x277D84538]);
  v5 = v4;
  OUTLINED_FUNCTION_8_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v12 = *v1;
  v11 = v1[1];
  v14 = v1[2];
  v13 = v1[3];
  v15 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545DBEC();
  sub_27546EB00();
  v42 = v12;
  v41 = 0;
  v16 = sub_27542D5D8();
  v17 = OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_4_26(v17, v18, v19, v20, v16);
  if (!v2)
  {
    v42 = v11;
    v41 = 1;
    v21 = sub_27542D62C();
    v22 = OUTLINED_FUNCTION_1_49();
    OUTLINED_FUNCTION_4_26(v22, v23, v24, v25, v21);
    v42 = v14;
    v41 = 2;
    v26 = OUTLINED_FUNCTION_1_49();
    OUTLINED_FUNCTION_4_26(v26, v27, v28, v29, v16);
    v42 = v13;
    v41 = 3;
    v30 = OUTLINED_FUNCTION_1_49();
    OUTLINED_FUNCTION_4_26(v30, v31, v32, v33, v21);
    v42 = v15;
    v41 = 4;
    sub_27542D680();
    v34 = OUTLINED_FUNCTION_1_49();
    OUTLINED_FUNCTION_4_26(v34, v35, v36, v37, v38);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_27545DBEC()
{
  result = qword_2809DCA80;
  if (!qword_2809DCA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA80);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.SynchronizedPlaybackTime.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_27545DE8C(0, &qword_2809DCA88, MEMORY[0x277D844C8]);
  v6 = v5;
  OUTLINED_FUNCTION_8_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545DBEC();
  sub_27546EAE0();
  if (!v2)
  {
    v24 = 0;
    sub_27542D478();
    OUTLINED_FUNCTION_0_48();
    OUTLINED_FUNCTION_3_35(v12);
    v13 = v25;
    v24 = 1;
    sub_27542D4CC();
    OUTLINED_FUNCTION_0_48();
    OUTLINED_FUNCTION_3_35(v14);
    v15 = v25;
    v24 = 2;
    OUTLINED_FUNCTION_0_48();
    OUTLINED_FUNCTION_3_35(v16);
    v17 = v25;
    v24 = 3;
    OUTLINED_FUNCTION_0_48();
    OUTLINED_FUNCTION_3_35(v18);
    v19 = v25;
    v24 = 4;
    sub_27542D520();
    OUTLINED_FUNCTION_0_48();
    OUTLINED_FUNCTION_3_35(v20);
    (*(v8 + 8))(v11, v6);
    v22 = v25;
    *a2 = v13;
    a2[1] = v15;
    a2[2] = v17;
    a2[3] = v19;
    a2[4] = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_27545DE8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27545DBEC();
    v7 = a3(a1, &_s24SynchronizedPlaybackTimeV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_27545DF28()
{
  result = qword_2809DCA90;
  if (!qword_2809DCA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA90);
  }

  return result;
}

BOOL sub_27545DF7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_275447A28(v5, v7);
}

BOOL sub_27545DFC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_275454BDC(v5, v7);
}

BOOL sub_27545E014(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_2753F4D6C(v5, v7);
}

_BYTE *_s24SynchronizedPlaybackTimeV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x27545E16CLL);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27545E1A8()
{
  result = qword_2809DCA98;
  if (!qword_2809DCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCA98);
  }

  return result;
}

unint64_t sub_27545E200()
{
  result = qword_2809DCAA0;
  if (!qword_2809DCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCAA0);
  }

  return result;
}

unint64_t sub_27545E258()
{
  result = qword_2809DCAA8;
  if (!qword_2809DCAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCAA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_35(uint64_t a1)
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_4_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27546E950();
}

uint64_t sub_27545E328(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000027546F8C0 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ELL && 0x800000027546F8E0 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x800000027546F900 == a2;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ELL && 0x800000027546F920 == a2;
        if (v8 || (sub_27546E9A0() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000013 && 0x800000027546F700 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_27546E9A0();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_27545E4D0(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27545E570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27545E328(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27545E598(uint64_t a1)
{
  v2 = sub_27545E89C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545E5D4(uint64_t a1)
{
  v2 = sub_27545E89C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Transition.SteppedSchedule.SynchronizedPlaybackTimeRange.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_12_13();
  v4 = v3;
  OUTLINED_FUNCTION_1_50();
  sub_27545EBF4(0, v5, v6, &_s29SynchronizedPlaybackTimeRangeV10CodingKeysON, MEMORY[0x277D84538]);
  v8 = v7;
  OUTLINED_FUNCTION_8_9();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - v12;
  v14 = *v1;
  v15 = v1[1];
  v16 = v1[2];
  v57 = v1[3];
  v58 = v16;
  v17 = v1[4];
  v18 = v1[5];
  v19 = v1[6];
  v20 = v1[7];
  v21 = v1[8];
  v22 = v1[9];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_27545E89C();
  OUTLINED_FUNCTION_7_21();
  sub_27546EB00();
  v59 = v14;
  v60 = v15;
  OUTLINED_FUNCTION_3_36();
  sub_27545EBF4(0, v23, v24, v25, MEMORY[0x277D83638]);
  v27 = v26;
  v28 = sub_27545CBE0();
  v29 = OUTLINED_FUNCTION_0_49();
  OUTLINED_FUNCTION_4_26(v29, v30, v31, v27, v28);
  if (!v2)
  {
    v59 = v58;
    v60 = v57;
    OUTLINED_FUNCTION_2_44();
    sub_27545EBF4(0, v32, v33, v34, MEMORY[0x277D83638]);
    sub_27545CC90();
    OUTLINED_FUNCTION_0_49();
    OUTLINED_FUNCTION_7_21();
    OUTLINED_FUNCTION_4_26(v35, v36, v37, v38, v39);
    v59 = v17;
    v60 = v18;
    v40 = OUTLINED_FUNCTION_0_49();
    OUTLINED_FUNCTION_4_26(v40, v41, v42, v27, v28);
    v59 = v19;
    v60 = v20;
    OUTLINED_FUNCTION_0_49();
    OUTLINED_FUNCTION_7_21();
    OUTLINED_FUNCTION_4_26(v43, v44, v45, v46, v47);
    v59 = v21;
    v60 = v22;
    OUTLINED_FUNCTION_4_27();
    sub_27545EBF4(0, v48, v49, v50, MEMORY[0x277D83638]);
    v52 = v51;
    sub_27545CD40();
    v53 = OUTLINED_FUNCTION_0_49();
    OUTLINED_FUNCTION_4_26(v53, v54, v55, v52, v56);
  }

  (*(v10 + 8))(v13, v8);
  OUTLINED_FUNCTION_11_15();
}

unint64_t sub_27545E89C()
{
  result = qword_2809DCAB8;
  if (!qword_2809DCAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCAB8);
  }

  return result;
}

void Transition.SteppedSchedule.SynchronizedPlaybackTimeRange.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_12_13();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_1_50();
  sub_27545EBF4(0, v6, v7, &_s29SynchronizedPlaybackTimeRangeV10CodingKeysON, MEMORY[0x277D844C8]);
  v39 = v8;
  OUTLINED_FUNCTION_8_9();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_27545E89C();
  sub_27546EAE0();
  if (!v1)
  {
    v37 = v5;
    v38 = v10;
    OUTLINED_FUNCTION_3_36();
    sub_27545EBF4(0, v14, v15, v16, MEMORY[0x277D83638]);
    sub_27545D0DC();
    OUTLINED_FUNCTION_6_25();
    v17 = v39;
    OUTLINED_FUNCTION_7_21();
    OUTLINED_FUNCTION_9_12(v18);
    v19 = v40;
    OUTLINED_FUNCTION_2_44();
    sub_27545EBF4(0, v20, v21, v22, MEMORY[0x277D83638]);
    v24 = v23;
    v25 = sub_27545D18C();
    OUTLINED_FUNCTION_6_25();
    OUTLINED_FUNCTION_9_12(v24);
    v36 = v25;
    v26 = v40;
    OUTLINED_FUNCTION_6_25();
    OUTLINED_FUNCTION_7_21();
    OUTLINED_FUNCTION_9_12(v27);
    v28 = v40;
    OUTLINED_FUNCTION_6_25();
    OUTLINED_FUNCTION_9_12(v24);
    v29 = v40;
    OUTLINED_FUNCTION_4_27();
    sub_27545EBF4(0, v30, v31, v32, MEMORY[0x277D83638]);
    v34 = v33;
    sub_27545D23C();
    OUTLINED_FUNCTION_6_25();
    OUTLINED_FUNCTION_9_12(v34);
    (*(v38 + 8))(v13, v17);
    v35 = v37;
    *v37 = v19;
    v35[1] = v26;
    v35[2] = v28;
    v35[3] = v29;
    v35[4] = v40;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_11_15();
}

void sub_27545EBF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_27545ECB8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27545ECD8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

_BYTE *_s29SynchronizedPlaybackTimeRangeV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x27545EDF4);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27545EE30()
{
  result = qword_2809DCAC8;
  if (!qword_2809DCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCAC8);
  }

  return result;
}

unint64_t sub_27545EE88()
{
  result = qword_2809DCAD0;
  if (!qword_2809DCAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCAD0);
  }

  return result;
}

unint64_t sub_27545EEE0()
{
  result = qword_2809DCAD8;
  if (!qword_2809DCAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCAD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_12(uint64_t a1)
{

  return sub_27546E8D0();
}

void *sub_27545F024(void *result)
{
  v1 = result[3];
  v2 = result[4] >> 1;
  v3 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v47 = result[4] >> 1;
  v48 = result[3];
  v4 = *result;
  v5 = result[2];
  v6 = *(*result + 16);
  if (v3 >= v6)
  {
    v7 = *(*result + 16);
  }

  else
  {
    v7 = v2 - v1;
  }

  v56 = MEMORY[0x277D84F90];
  result = sub_275441AF4(0, v7 & ~(v7 >> 63), 0);
  if (v3 < 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    return result;
  }

  v8 = v56;
  v44 = v4;
  if (v7)
  {
    v9 = v7;

    result = swift_unknownObjectRetain();
    v10 = 0;
    v11 = (v4 + 48);
    v13 = v47;
    v12 = v48;
    v14 = v5 + 24 * v48 + 8;
    v15 = v48 - v47;
    while (1)
    {
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v6 == v10)
      {
        goto LABEL_52;
      }

      if (v10 >= v6)
      {
        goto LABEL_41;
      }

      v17 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_42;
      }

      if (!(v15 + v10))
      {
        goto LABEL_52;
      }

      if ((v12 + v10) < v12 || (v12 + v10) >= v13)
      {
        goto LABEL_43;
      }

      v19 = *(v11 - 2);
      v20 = *(v14 - 8);
      if (v20 < v19)
      {
        goto LABEL_44;
      }

      v21 = *(v11 - 1);
      v22 = *v14;
      if (*v14 < v21)
      {
        goto LABEL_45;
      }

      v23 = *v11;
      v24 = *(v14 + 8);
      if (v24 < *v11)
      {
        goto LABEL_46;
      }

      v56 = v8;
      v26 = *(v8 + 16);
      v25 = *(v8 + 24);
      if (v26 >= v25 >> 1)
      {
        v41 = v15;
        result = sub_275441AF4((v25 > 1), v26 + 1, 1);
        v15 = v41;
        v13 = v47;
        v12 = v48;
        v8 = v56;
      }

      *(v8 + 16) = v26 + 1;
      v27 = (v8 + 48 * v26);
      v27[4] = v19;
      v27[5] = v20;
      v27[6] = v21;
      v27[7] = v22;
      v27[8] = v23;
      v27[9] = v24;
      ++v10;
      v11 += 3;
      v14 += 24;
      if (v16 == v9)
      {
        v28 = v12 + v10;
        v4 = v44;
        goto LABEL_26;
      }
    }

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
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  result = swift_unknownObjectRetain();
  v17 = 0;
  v13 = v47;
  v12 = v48;
  v28 = v48;
LABEL_26:
  v29 = 0;
  v45 = v4 + 24 * v17;
  v46 = v5 + 24 * v28;
  for (i = v28; v6 != v17; ++i)
  {
    if (v17 >= v6)
    {
      goto LABEL_47;
    }

    if (__OFADD__(v17, 1))
    {
      goto LABEL_48;
    }

    if (v13 == i)
    {
      break;
    }

    if (v28 < v12 || i >= v13)
    {
      goto LABEL_49;
    }

    v32 = *(v45 + v29 + 48);
    v33 = *(v46 + v29 + 16);
    v51 = *(v45 + v29 + 32);
    v52 = v32;
    v49 = *(v46 + v29);
    v50 = v33;
    result = sub_27545C6AC(&v51, &v49, &v53);
    v34 = v53;
    v35 = v54;
    v36 = v55;
    v56 = v8;
    v38 = *(v8 + 16);
    v37 = *(v8 + 24);
    if (v38 >= v37 >> 1)
    {
      v42 = v54;
      v43 = v53;
      v40 = v55;
      result = sub_275441AF4((v37 > 1), v38 + 1, 1);
      v36 = v40;
      v35 = v42;
      v34 = v43;
      v8 = v56;
    }

    *(v8 + 16) = v38 + 1;
    v39 = (v8 + 48 * v38);
    v39[2] = v34;
    v39[3] = v35;
    v39[4] = v36;
    v29 += 24;
    ++v17;
    v13 = v47;
    v12 = v48;
  }

  swift_unknownObjectRelease();

  return v8;
}

void *Transition.SteppedSchedule.TimeStretchingSchedule.outgoingSongSteps.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v2;
  v4 = *(v0 + 16);
  v3 = *(v0 + 32);
  v8[0] = *(v0 + 48);
  *(v8 + 9) = *(v0 + 57);
  v5 = *(v0 + 8);
  v9 = v1;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  *v13 = *(v0 + 48);
  *&v13[9] = *(v0 + 57);
  memcpy(v14, (v0 + 73), sizeof(v14));
  return sub_27545F404(v1, v7, v5);
}

void *sub_27545F404(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a2 + 56);
  v4 = MEMORY[0x277D84F90];
  if (v3 <= 0xFB)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v31 = *(a2 + 32);
    v32 = *(a2 + 24);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = sub_275430794(a1, a3);
    v11 = *(v10 + 16);
    if (v11)
    {
      v45 = v4;
      sub_275441B14(0, v11, 0);
      v18 = 32;
      v19 = v4;
      do
      {
        v20 = *(v10 + v18);
        if (v20 >= v7)
        {
          v36 = v5;
          v37 = v6;
          v38 = v7;
          v39 = v32;
          v40 = v31;
          v41 = v8;
          v42 = v9;
          v43 = v3;
          v35 = v20;
          v33[0] = v32;
          v33[1] = v31;
          v33[2] = v8;
          v33[3] = v9;
          v34 = v3;
          sub_27542DA30(&v35, v33, v44, v12, v13, v14, v15, v16, v17);
          v22 = v44[0];
          v21 = v44[1];
          v20 = v44[2];
        }

        else
        {
          v21 = v6 + v20 - v7;
          v22 = v5 + v21 - v6;
        }

        v45 = v19;
        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_275441B14((v23 > 1), v24 + 1, 1);
          v19 = v45;
        }

        *(v19 + 16) = v24 + 1;
        v25 = (v19 + 24 * v24);
        v25[4] = v22;
        v25[5] = v21;
        v25[6] = v20;
        v18 += 8;
        --v11;
      }

      while (v11);
    }

    else
    {

      *&v19 = MEMORY[0x277D84F90];
    }

    *&v26 = COERCE_DOUBLE(sub_27544FBA0(1, v19));
    v36 = *&v19;
    v37 = *&v26;
    v38 = v27;
    v39 = v28;
    v40 = v29;
    v4 = sub_27545F024(&v36);
    swift_unknownObjectRelease();
  }

  return v4;
}

void *Transition.SteppedSchedule.TimeStretchingSchedule.incomingSongSteps.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 112);
  v6[0] = *(v0 + 96);
  v6[1] = v3;
  v7[0] = *(v0 + 128);
  v4 = v7[0];
  *(v7 + 9) = *(v0 + 137);
  v9 = v1;
  v10 = v2;
  v11 = v6[0];
  v12 = v3;
  v13[0] = v4;
  *(v13 + 9) = *(v7 + 9);
  return sub_27545F404(v1, v6, v2);
}

uint64_t sub_27545F654(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x800000027546F940 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ELL && 0x800000027546F290 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x800000027546F960 == a2;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001ELL && 0x800000027546F2B0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_27546E9A0();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_27545F7B8(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27545F840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27545F654(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27545F868(uint64_t a1)
{
  v2 = sub_27545FB74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545F8A4(uint64_t a1)
{
  v2 = sub_27545FB74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.TimeStretchingSchedule.encode(to:)(void *a1)
{
  sub_27545FF18(0, &qword_2809DCAE0, MEMORY[0x277D84538]);
  v4 = v3;
  OUTLINED_FUNCTION_8_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = *(v1 + 2);
  v40 = *(v1 + 1);
  v41 = v12;
  v42[0] = *(v1 + 3);
  *(v42 + 9) = *(v1 + 57);
  v46 = v1[10];
  v13 = v1[11];
  *(v45 + 9) = *(v1 + 137);
  v14 = *(v1 + 8);
  v44 = *(v1 + 7);
  v45[0] = v14;
  v43 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_27545FB74();

  sub_27546EB00();
  v36 = v10;
  v37 = v11;
  v39 = 0;
  v16 = sub_2754586B4();
  v17 = OUTLINED_FUNCTION_1_51();
  OUTLINED_FUNCTION_4_26(v17, v18, v19, v20, v16);
  if (v15)
  {
  }

  else
  {
    v21 = v46;

    OUTLINED_FUNCTION_5_26(v40, v41);
    *v38 = v42[0];
    *&v38[9] = *(v42 + 9);
    v39 = 1;
    v22 = sub_2754303A4();
    v23 = OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_4_26(v23, v24, v25, v26, v22);
    v36 = v21;
    v37 = v13;
    v39 = 2;
    v27 = OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_4_26(v27, v28, v29, v30, v16);
    OUTLINED_FUNCTION_5_26(v43, v44);
    *v38 = v45[0];
    *&v38[9] = *(v45 + 9);
    v39 = 3;
    v31 = OUTLINED_FUNCTION_1_51();
    OUTLINED_FUNCTION_4_26(v31, v32, v33, v34, v22);
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_27545FB74()
{
  result = qword_2809DCAE8;
  if (!qword_2809DCAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCAE8);
  }

  return result;
}

void Transition.SteppedSchedule.TimeStretchingSchedule.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  sub_27545FF18(0, &qword_2809DCAF0, MEMORY[0x277D844C8]);
  v34 = v5;
  OUTLINED_FUNCTION_8_9();
  MEMORY[0x28223BE20](v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27545FB74();
  sub_27546EAE0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_275458A70();
    OUTLINED_FUNCTION_2_45(&_s28StepTransitionTimeCalculatorVN);
    v7 = v12[0];
    v23 = 1;
    sub_27543045C();
    OUTLINED_FUNCTION_3_37(&_s22PlaybackTimeCalculatorVN);
    v31 = v24;
    v32 = v25;
    v33[0] = v26[0];
    *(v33 + 9) = *(v26 + 9);
    OUTLINED_FUNCTION_2_45(&_s28StepTransitionTimeCalculatorVN);
    v8 = v12[0];
    v19 = 3;
    OUTLINED_FUNCTION_3_37(&_s22PlaybackTimeCalculatorVN);
    v9 = OUTLINED_FUNCTION_0_50();
    v10(v9);
    v27 = v20;
    v28 = v21;
    *v29 = *v22;
    *&v29[9] = *&v22[9];
    v11[1] = v24;
    v11[2] = v25;
    v11[3] = v33[0];
    *(&v11[3] + 9) = *(v26 + 9);
    *(&v11[8] + 9) = *&v22[9];
    v11[7] = v21;
    v11[8] = *v22;
    v11[0] = v12[0];
    HIDWORD(v11[4]) = *&v30[3];
    *(&v11[4] + 9) = *v30;
    v11[5] = v12[0];
    v11[6] = v20;
    memcpy(a2, v11, 0x99uLL);
    sub_27545FF7C(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v12[0] = v7;
    v12[1] = v31;
    v12[2] = v32;
    *v13 = v33[0];
    *&v13[9] = *(v33 + 9);
    *v14 = *v30;
    *&v14[3] = *&v30[3];
    v15 = v8;
    *&v18[9] = *&v29[9];
    v17 = v28;
    *v18 = *v29;
    v16 = v27;
    sub_27545FFB4(v12);
  }
}

void sub_27545FF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27545FB74();
    v7 = a3(a1, &_s22TimeStretchingScheduleV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_275460014(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 153))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_275460054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s22TimeStretchingScheduleV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x275460198);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2754601D4()
{
  result = qword_2809DCAF8;
  if (!qword_2809DCAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCAF8);
  }

  return result;
}

unint64_t sub_27546022C()
{
  result = qword_2809DCB00;
  if (!qword_2809DCB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB00);
  }

  return result;
}

unint64_t sub_275460284()
{
  result = qword_2809DCB08;
  if (!qword_2809DCB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_45(uint64_t a1)
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_3_37(uint64_t a1)
{

  return sub_27546E8D0();
}

double Transition.SteppedSchedule.TimeStretchingStep.playbackRate.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  result = (v0[1] - *v0) / (v2 - v1);
  if (v2 - v1 <= 0.0)
  {
    return 0.0;
  }

  return result;
}

__n128 Transition.SteppedSchedule.TimeStretchingStep.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_275460394(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_27546E9A0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_275460434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275460394(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_275460460(uint64_t a1)
{
  v2 = sub_275460638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27546049C(uint64_t a1)
{
  v2 = sub_275460638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.TimeStretchingStep.encode(to:)(void *a1)
{
  v2 = v1;
  sub_275460824(0, &qword_2809DCB10, MEMORY[0x277D84538]);
  v5 = v4;
  OUTLINED_FUNCTION_8_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9;
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275460638();
  sub_27546EB00();
  v13 = *(v2 + 16);
  v15[0] = *v2;
  v15[1] = v13;
  v16 = v11;
  v17 = v12;
  sub_27545A290();
  sub_27546E950();
  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_275460638()
{
  result = qword_2809DCB18;
  if (!qword_2809DCB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB18);
  }

  return result;
}

uint64_t Transition.SteppedSchedule.TimeStretchingStep.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_275460824(0, &qword_2809DCB20, MEMORY[0x277D844C8]);
  v6 = v5;
  OUTLINED_FUNCTION_8_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275460638();
  sub_27546EAE0();
  if (!v2)
  {
    sub_27545A524();
    sub_27546E8D0();
    (*(v8 + 8))(v11, v6);
    v12 = v15[1];
    v13 = v15[2];
    *a2 = v15[0];
    a2[1] = v12;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_275460824(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_275460638();
    v7 = a3(a1, &_s18TimeStretchingStepV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *_s18TimeStretchingStepV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x275460964);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2754609A0()
{
  result = qword_2809DCB28;
  if (!qword_2809DCB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB28);
  }

  return result;
}

unint64_t sub_2754609F8()
{
  result = qword_2809DCB30;
  if (!qword_2809DCB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB30);
  }

  return result;
}

unint64_t sub_275460A50()
{
  result = qword_2809DCB38;
  if (!qword_2809DCB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB38);
  }

  return result;
}

__n128 sub_275460AA4@<Q0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, double a3@<D0>)
{
  memcpy(__dst, __src, 0x99uLL);
  v25 = __dst[2];
  v6 = __dst[4];
  v27 = __dst[3];
  v28 = __dst[12];
  v26 = __dst[13];
  memcpy(v31, __src, 0x49uLL);
  sub_275457480(__srca);
  memcpy(v31, &__dst[10], 0x49uLL);
  sub_275457480(&__srca[4]);
  sub_275462084();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_275474510;
  *(v7 + 32) = v25;
  *(v7 + 40) = v28;
  *(v7 + 48) = v6;
  *(v7 + 56) = v27;
  v8 = sub_275460D54(v7);
  v10 = sub_275460F48(v8, v9);

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_275474510;
  *(v11 + 32) = v28;
  *(v11 + 40) = v6;
  *(v11 + 48) = v27;
  *(v11 + 56) = v26;
  v12 = sub_275460D54(v11);
  v14 = sub_275460F48(v12, v13);

  v15 = __dst[5];
  v31[0] = __srca[0];
  v31[1] = __srca[1];
  v31[2] = __srca[2];
  *(&v31[2] + 9) = *(&__srca[2] + 9);

  v16 = sub_2754620D4(v15, v10, v31, a3);

  v31[0] = __srca[4];
  v31[1] = __srca[5];
  v31[2] = __srca[6];
  *(&v31[2] + 9) = *(&__srca[6] + 9);
  v17 = sub_2754620D4(__dst[15], v14, v31, a3);

  memcpy(v31, __dst, 0x49uLL);
  sub_275455954(v30.n128_f64);
  v18 = v30;
  memcpy(v31, &__dst[10], 0x49uLL);
  sub_275455954(v30.n128_f64);
  sub_2754554F0(__dst);
  *&v19 = v25;
  *&v20 = v28;
  *(&v19 + 1) = v27;
  *(&v20 + 1) = v26;
  v29 = v30;
  *a1 = v19;
  *(a1 + 1) = v20;
  a1[4] = v6;
  memcpy(a1 + 5, __srca, 0x79uLL);
  a1[21] = v10;
  *(a1 + 22) = a3;
  v21 = __srca[1];
  *(a1 + 23) = __srca[0];
  *(a1 + 25) = v21;
  *(a1 + 27) = __srca[2];
  *(a1 + 225) = *(&__srca[2] + 9);
  a1[31] = v14;
  *(a1 + 32) = a3;
  v22 = __srca[5];
  v23 = __srca[6];
  *(a1 + 33) = __srca[4];
  *(a1 + 35) = v22;
  *(a1 + 37) = v23;
  *(a1 + 305) = *(&__srca[6] + 9);
  a1[41] = v16;
  a1[42] = v17;
  *(a1 + 43) = v18;
  result = v29;
  *(a1 + 45) = v29;
  return result;
}

uint64_t sub_275460D54(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_275464BF0();
  v4 = MEMORY[0x277C777B0](v2, &type metadata for TransitionTime, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_275462494(&v9, *(a1 + v6));
      v6 += 8;
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

void sub_275460DEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2753F2EC4();
  v4 = 0;
  v9[2] = MEMORY[0x277C777B0](v2, &_s14descr2884101A1C2IDVN, v3);
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    sub_27546258C(v9, v8, v7);
  }

  __break(1u);
}

uint64_t sub_275460EB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_275406708();
  v4 = MEMORY[0x277C777B0](v2, &type metadata for Transition.Complexity, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_2754626D8(&v9, *(a1 + v6++));
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

void *sub_275460F48(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v4 = sub_275431E9C(*(a1 + 16), 0, a2);
  v5 = sub_2754648EC(&v8, v4 + 4, v2, a1);
  v6 = v8;

  sub_2754066A4(v6);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x277D84F90];
  }

  v8 = v4;
  sub_275463ED8(&v8);
  return v8;
}

uint64_t Transition.SteppedSchedule.timeStretchingSchedule.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 168), 0x99uLL);
  memcpy(a1, (v1 + 168), 0x99uLL);
  return sub_27545FF7C(__dst, v4);
}

double Transition.SteppedSchedule.automationSchedule.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 336);
  *a1 = *(v1 + 328);
  a1[1] = v2;

  return result;
}

__n128 Transition.SteppedSchedule.playbackEndState.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 344);
  v3 = *(v1 + 360);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2754610DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x800000027546F980 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000027546F9A0 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x800000027546F9C0 == a2;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x800000027546F9E0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_27546E9A0();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_275461240(char a1)
{
  result = 0xD000000000000019;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2754612E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2754610DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275461308(uint64_t a1)
{
  v2 = sub_275461678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275461344(uint64_t a1)
{
  v2 = sub_275461678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SteppedSchedule.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_0_51();
  sub_275464C58(0, v3, v4, &_s15SteppedScheduleV10CodingKeysON, MEMORY[0x277D84538]);
  v6 = v5;
  OUTLINED_FUNCTION_8_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  memcpy(__dst, (v1 + 168), 0x99uLL);
  v12 = *(v1 + 328);
  v20 = *(v1 + 336);
  v21 = v12;
  v13 = *(v1 + 344);
  v18 = *(v1 + 360);
  v19 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275461678();
  sub_27546EB00();
  memcpy(v26, v1, sizeof(v26));
  v25[0] = 0;
  sub_2754616CC();
  v14 = v22;
  sub_27546E950();
  if (!v14)
  {
    v15 = v20;
    v16 = v21;
    memcpy(v26, __dst, 0x99uLL);
    v29 = 1;
    sub_27545FF7C(__dst, v25);
    sub_275461720();
    sub_27546E950();
    memcpy(v25, v26, 0x99uLL);
    sub_27545FFB4(v25);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    v28 = 2;
    sub_275461774();

    sub_27546E950();

    v23 = v19;
    v24 = v18;
    v28 = 3;
    sub_2754617C8();
    sub_27546E950();
  }

  return (*(v8 + 8))(v11, v6);
}

unint64_t sub_275461678()
{
  result = qword_2809DCB48;
  if (!qword_2809DCB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB48);
  }

  return result;
}

unint64_t sub_2754616CC()
{
  result = qword_2809DCB50;
  if (!qword_2809DCB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB50);
  }

  return result;
}

unint64_t sub_275461720()
{
  result = qword_2809DCB58;
  if (!qword_2809DCB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB58);
  }

  return result;
}

unint64_t sub_275461774()
{
  result = qword_2809DCB60;
  if (!qword_2809DCB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB60);
  }

  return result;
}

unint64_t sub_2754617C8()
{
  result = qword_2809DCB68;
  if (!qword_2809DCB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB68);
  }

  return result;
}

void Transition.SteppedSchedule.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_0_51();
  sub_275464C58(0, v5, v6, &_s15SteppedScheduleV10CodingKeysON, MEMORY[0x277D844C8]);
  v18 = v7;
  OUTLINED_FUNCTION_8_9();
  MEMORY[0x28223BE20](v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275461678();
  sub_27546EAE0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = a2;
    v27[383] = 0;
    sub_275461B7C();
    OUTLINED_FUNCTION_1_52(&type metadata for Transition.SteppedSchedule.PlaybackAlignmentSchedule);
    memcpy(v27, v26, 0xA1uLL);
    v27[382] = 1;
    sub_275461BD0();
    OUTLINED_FUNCTION_1_52(&type metadata for Transition.SteppedSchedule.TimeStretchingSchedule);
    memcpy(&v27[168], v25, 0x99uLL);
    LOBYTE(v19[0]) = 2;
    sub_275461C24();
    OUTLINED_FUNCTION_1_52(&type metadata for Transition.SteppedSchedule.AutomationSchedule);
    v11 = v20[0];
    v10 = v20[1];
    v27[381] = 3;
    sub_275461C78();
    sub_27546E8D0();
    v12 = OUTLINED_FUNCTION_4_28();
    v13(v12, v18);
    v14 = v21;
    v15 = v22;
    v16 = v23;
    v17 = v24;
    memcpy(v19, v27, 0x148uLL);
    v19[41] = v11;
    v19[42] = v10;
    v19[43] = v21;
    v19[44] = v22;
    v19[45] = v23;
    v19[46] = v24;
    memcpy(v9, v19, 0x178uLL);
    sub_275461CCC(v19, v20);
    __swift_destroy_boxed_opaque_existential_1(a1);
    memcpy(v20, v27, 0x148uLL);
    v20[41] = v11;
    v20[42] = v10;
    v20[43] = v14;
    v20[44] = v15;
    v20[45] = v16;
    v20[46] = v17;
    sub_275461D04(v20);
  }
}

unint64_t sub_275461B7C()
{
  result = qword_2809DCB78;
  if (!qword_2809DCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB78);
  }

  return result;
}

unint64_t sub_275461BD0()
{
  result = qword_2809DCB80;
  if (!qword_2809DCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB80);
  }

  return result;
}

unint64_t sub_275461C24()
{
  result = qword_2809DCB88;
  if (!qword_2809DCB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB88);
  }

  return result;
}

unint64_t sub_275461C78()
{
  result = qword_2809DCB90;
  if (!qword_2809DCB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB90);
  }

  return result;
}

uint64_t sub_275461D88(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 376))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 168);
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

uint64_t sub_275461DC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 376) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 376) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s15SteppedScheduleV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x275461F44);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_275461F80()
{
  result = qword_2809DCB98;
  if (!qword_2809DCB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCB98);
  }

  return result;
}

unint64_t sub_275461FD8()
{
  result = qword_2809DCBA0;
  if (!qword_2809DCBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCBA0);
  }

  return result;
}

unint64_t sub_275462030()
{
  result = qword_2809DCBA8;
  if (!qword_2809DCBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DCBA8);
  }

  return result;
}

void sub_275462084()
{
  if (!qword_2809DB580)
  {
    v0 = sub_27546E990();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DB580);
    }
  }
}

uint64_t sub_2754620D4(uint64_t result, uint64_t a2, __int128 *a3, double a4)
{
  v5 = 0;
  v6 = a3[1];
  v72 = *a3;
  v73 = v6;
  v74[0] = a3[2];
  *(v74 + 9) = *(a3 + 41);
  v7 = *(result + 16);
  v8 = result + 32;
  v56 = MEMORY[0x277D84F90];
  v57 = v7;
  v55 = result + 32;
LABEL_2:
  v9 = (v8 + (v5 << 6));
  while (v7 != v5)
  {
    if (v5 >= v7)
    {
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    v10 = v9[1];
    v68 = *v9;
    v69 = v10;
    v11 = v9[3];
    v70 = v9[2];
    v71 = v11;
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_45;
    }

    v13 = v68;
    v14 = v69;
    v16 = v70;
    v15 = v71;
    sub_2753EF21C(&v68, v67);
    v17 = qword_2809DAD90;

    if (v17 != -1)
    {
      swift_once();
    }

    v19 = *&qword_2809DC3C8;
    v18 = unk_2809DC3D0;
    v20 = *&qword_2809DC3D8;
    v21 = qword_2809DC3E0;
    v22 = unk_2809DC3E8;
    v23 = v13 == qword_2809DC3B8 && *(&v13 + 1) == unk_2809DC3C0;
    if (!v23 && (sub_27546E9A0() & 1) == 0 || (*&v14 == v19 ? (v24 = *(&v14 + 1) == v18) : (v24 = 0), v24 ? (v25 = *&v16 == v20) : (v25 = 0), !v25))
    {

LABEL_30:
      v28 = v56;
      result = swift_isUniquelyReferenced_nonNull_native();
      *&v59 = v56;
      if ((result & 1) == 0)
      {
        result = sub_27544107C(0, *(v56 + 16) + 1, 1);
        v28 = v59;
      }

      v8 = v55;
      v30 = *(v28 + 16);
      v29 = *(v28 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_27544107C((v29 > 1), v30 + 1, 1);
        v28 = v59;
      }

      *(v28 + 16) = v30 + 1;
      v56 = v28;
      v31 = (v28 + (v30 << 6));
      v32 = v68;
      v33 = v69;
      v34 = v71;
      v31[4] = v70;
      v31[5] = v34;
      v31[2] = v32;
      v31[3] = v33;
      v5 = v12;
      v7 = v57;
      goto LABEL_2;
    }

    if (*(&v16 + 1) == v21 && v15 == v22)
    {
    }

    else
    {
      v27 = sub_27546E9A0();

      if ((v27 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    result = sub_2753EF278(&v68);
    ++v5;
    v9 += 4;
    v7 = v57;
  }

  v35 = *(v56 + 16);
  if (v35)
  {
    v66 = MEMORY[0x277D84F90];
    sub_2754410BC(0, v35, 0);
    v36 = v66;
    v37 = v35 - 1;
    for (i = 32; ; i += 64)
    {
      v39 = *(v56 + i);
      v40 = *(v56 + i + 16);
      v41 = *(v56 + i + 48);
      v67[2] = *(v56 + i + 32);
      v67[3] = v41;
      v67[0] = v39;
      v67[1] = v40;
      v42 = *(v56 + i);
      v43 = *(v56 + i + 16);
      v44 = *(v56 + i + 48);
      v61 = *(v56 + i + 32);
      v62 = v44;
      v59 = v42;
      v60 = v43;
      v63 = v72;
      v64 = v73;
      v65[0] = v74[0];
      *(v65 + 9) = *(v74 + 9);
      v70 = v61;
      v71 = v44;
      v68 = v42;
      v69 = v43;
      sub_2753EF21C(v67, v58);
      v66 = v36;
      v45 = *(v36 + 16);
      v46 = *(v36 + 24);

      if (v45 >= v46 >> 1)
      {
        sub_2754410BC((v46 > 1), v45 + 1, 1);
        v36 = v66;
      }

      *(v36 + 16) = v45 + 1;
      v47 = v36 + 144 * v45;
      v48 = v68;
      v49 = v69;
      v50 = v71;
      *(v47 + 64) = v70;
      *(v47 + 80) = v50;
      *(v47 + 32) = v48;
      *(v47 + 48) = v49;
      *(v47 + 96) = a2;
      *(v47 + 104) = a4;
      v51 = v63;
      v52 = v64;
      v53 = v65[0];
      *(v47 + 153) = *(v65 + 9);
      *(v47 + 128) = v52;
      *(v47 + 144) = v53;
      *(v47 + 112) = v51;
      if (!v37)
      {
        break;
      }

      --v37;
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v36;
}

BOOL sub_275462494(double *a1, double a2)
{
  v5 = *v2;
  sub_27546EA90();
  sub_27540C440(a2);
  v6 = sub_27546EAC0();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    v10 = *(*(v5 + 48) + 8 * v8);
    if (a2 - v10 == 0.0)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v2;
  sub_275462F4C(v8, isUniquelyReferenced_nonNull_native, a2);
  *v2 = v13;
  v10 = a2;
LABEL_6:
  result = v9 == 0;
  *a1 = v10;
  return result;
}

BOOL sub_27546258C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_27546EA90();
  sub_27546E550();
  v8 = sub_27546EAC0();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_27546E9A0() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_275463088(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

BOOL sub_2754626D8(_BYTE *a1, unint64_t a2)
{
  v5 = *v2;
  sub_27546EA90();
  MEMORY[0x277C77BF0](a2);
  v6 = sub_27546EAC0();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_2754631F0(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_2754627C8(uint64_t a1)
{
  v2 = *v1;
  sub_275464C58(0, &qword_2809DCBB8, sub_275464BF0, &type metadata for TransitionTime, MEMORY[0x277D84098]);
  result = sub_27546E730();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_30:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      sub_275463328(0, (v25 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v25;
    }

    *(v2 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    sub_27546EA90();
    v16 = v15 == 0.0 ? 0.0 : v15;
    MEMORY[0x277C77C00](*&v16);
    result = sub_27546EAC0();
    v17 = -1 << *(v4 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v4 + 48) + 8 * v20) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v11 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_275462A4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_275464C58(0, &qword_2809DCBC0, sub_2753F2EC4, &_s14descr2884101A1C2IDVN, MEMORY[0x277D84098]);
  result = sub_27546E730();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_275463328(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_27546EA90();
    sub_27546E550();
    result = sub_27546EAC0();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_275462CD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_275464C58(0, &qword_2809DAFC8, sub_275406708, &type metadata for Transition.Complexity, MEMORY[0x277D84098]);
  result = sub_27546E730();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_275463328(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_27546EA90();
    MEMORY[0x277C77BF0](v16);
    result = sub_27546EAC0();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_275462F4C(unint64_t result, char a2, double a3)
{
  v4 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_2754627C8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_2754637E8(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_27546EA90();
      sub_27540C440(a3);
      result = sub_27546EAC0();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        v4 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (a3 - *(*(v12 + 48) + 8 * v4) == 0.0)
        {
          goto LABEL_15;
        }

        result = v4 + 1;
      }
    }

    result = sub_27546338C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (v4 >> 6) + 56) |= 1 << v4;
  *(*(v8 + 48) + 8 * v4) = a3;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_27546EA40();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_275463088(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_275462A4C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_275463A30(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_27546EA90();
      sub_27546E550();
      v16 = sub_27546EAC0();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_27546E9A0() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_2754634F8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_27546EA40();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

unint64_t sub_2754631F0(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_275462CD4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_275463C90(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_27546EA90();
      MEMORY[0x277C77BF0](v5);
      result = sub_27546EAC0();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_27546367C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_27546EA40();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_275463328(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_27547EE20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_27546338C()
{
  v1 = v0;
  sub_275464C58(0, &qword_2809DCBB8, sub_275464BF0, &type metadata for TransitionTime, MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_27546E720();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_2754634F8()
{
  v1 = v0;
  sub_275464C58(0, &qword_2809DCBC0, sub_2753F2EC4, &_s14descr2884101A1C2IDVN, MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_27546E720();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}