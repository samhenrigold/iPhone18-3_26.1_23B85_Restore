void sub_275431DA0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_25();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_2754323B8(0, a5, a6, MEMORY[0x277D84560]);
      v15 = OUTLINED_FUNCTION_15_5();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 32);
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 32 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_10_7();
  if (!v11)
  {
    OUTLINED_FUNCTION_2_22();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_275431E9C(uint64_t a1, uint64_t a2, double a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_0_29(a1, &qword_2809DB580, &type metadata for TransitionTime);
  v5 = OUTLINED_FUNCTION_15_5();
  v6 = _swift_stdlib_malloc_size(v5);
  v5[2] = a1;
  v5[3] = 2 * ((v6 - 32) / 8);
  return v5;
}

void *sub_275431F10(uint64_t a1, uint64_t a2, double a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_0_29(a1, &qword_2809DAE28, &_s14LoudnessSampleVN);
  v5 = OUTLINED_FUNCTION_15_5();
  v6 = _swift_stdlib_malloc_size(v5);
  v5[2] = a1;
  v5[3] = 2 * ((v6 - 32) / 16);
  return v5;
}

void *sub_275431F84(uint64_t a1, uint64_t a2, double a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_0_29(a1, &qword_2809DB5C8, &type metadata for Transition.Complexity);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  v5[2] = a1;
  v5[3] = 2 * v6 - 64;
  return v5;
}

void *sub_275431FF4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_275432158(0, &qword_2809DB5C0, MEMORY[0x277CD8320]);
  v4 = *(sub_27546E490() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_275432100()
{
  if (!qword_2809DB598)
  {
    v0 = sub_27546E6B0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DB598);
    }
  }
}

void sub_275432158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_27546E990();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *_s28StepTransitionTimeCalculatorV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275432278);
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

unint64_t sub_2754322B4()
{
  result = qword_2809DB5D0;
  if (!qword_2809DB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB5D0);
  }

  return result;
}

unint64_t sub_27543230C()
{
  result = qword_2809DB5D8;
  if (!qword_2809DB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB5D8);
  }

  return result;
}

unint64_t sub_275432364()
{
  result = qword_2809DB5E0;
  if (!qword_2809DB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB5E0);
  }

  return result;
}

void sub_2754323B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void OUTLINED_FUNCTION_0_29(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84560];

  sub_2754323B8(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_8_11(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_5()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_17_4@<X0>(char *a1@<X3>, unint64_t a2@<X8>)
{

  return sub_275431C68((a2 > 1), v2, 1, a1);
}

uint64_t sub_275432550()
{
  v0 = sub_27546E3E0();
  __swift_allocate_value_buffer(v0, qword_2809F3C00);
  __swift_project_value_buffer(v0, qword_2809F3C00);
  return sub_27546E3D0();
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

BOOL sub_275432624(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  do
  {
    sub_27546E570();
    v4 = v3 != 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_27546E4B0();
  }

  while ((v5 & 1) != 0);

  return v4;
}

void TransitionPlanner.Configuration.transitionSchedulingPolicy.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

void TransitionPlanner.Configuration.init(transitionSchedulingPolicy:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if ((v3 & 1) == 0 && (v2 >= 0.0001 ? (v4 = v2 > 1.0) : (v4 = 1), v4))
  {
    sub_275408F98();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
  }

  else
  {
    *a2 = v2;
    *(a2 + 8) = v3;
  }
}

uint64_t static TransitionPlanner.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s26TransitionSchedulingPolicyOwet(uint64_t a1, int a2)
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

uint64_t _s13ConfigurationVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

BOOL static TransitionPlanner.TransitionSchedulingPolicy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t _s26TransitionSchedulingPolicyOwst(uint64_t result, int a2, int a3)
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

uint64_t sub_275432870(uint64_t a1)
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

uint64_t sub_27543288C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

BOOL static TransitionPlanner.Criteria.IncomingPlacement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) != 1)
    {
      v7 = *(a2 + 8) | *&v2;
      return v3 == 2 && v7 == 0;
    }

    if (v3 != 1 || v2 - *a1 != 0.0)
    {
      return 0;
    }

    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v4 = *a1;
    v5 = *a2;
  }

  return v5 - v4 == 0.0;
}

uint64_t sub_27543294C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x796C726165 && a2 == 0xE500000000000000)
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

uint64_t sub_2754329D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_275432A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27543294C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_275432A9C(uint64_t a1)
{
  v2 = sub_275433284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275432AD8(uint64_t a1)
{
  v2 = sub_275433284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275432B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2754329D4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_275432B44(uint64_t a1)
{
  v2 = sub_275433230();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275432B80(uint64_t a1)
{
  v2 = sub_275433230();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Criteria.IncomingPlacement.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_19();
  v5 = MEMORY[0x277D84538];
  sub_27543332C(0, v6, v7, v8, MEMORY[0x277D84538]);
  v31 = v9;
  OUTLINED_FUNCTION_8_9();
  v33 = v10;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = OUTLINED_FUNCTION_2_23();
  sub_27543332C(v14, v15, v16, v17, v5);
  v19 = v18;
  OUTLINED_FUNCTION_8_9();
  v32 = v20;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v21);
  v23 = &v29 - v22;
  v24 = v3[1];
  v30 = *v3;
  v25 = *(v3 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275433284();
  v26 = v19;
  sub_27546EB00();
  sub_275433230();
  sub_27546E8F0();
  v27 = v31;
  v34 = v30;
  v35 = v24;
  v36 = v25;
  sub_2754332D8();
  sub_27546E950();
  (*(v33 + 8))(v13, v27);
  return (*(v32 + 8))(v23, v26);
}

void TransitionPlanner.Criteria.IncomingPlacement.init(from:)(void *a1@<X0>, uint64_t a3@<X8>)
{
  v42 = a3;
  OUTLINED_FUNCTION_3_19();
  v4 = MEMORY[0x277D844C8];
  sub_27543332C(0, v5, v6, v7, MEMORY[0x277D844C8]);
  v9 = v8;
  OUTLINED_FUNCTION_8_9();
  v40[1] = v10;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_2_23();
  sub_27543332C(v12, v13, v14, &_s17IncomingPlacementO10CodingKeysON, v4);
  v16 = v15;
  OUTLINED_FUNCTION_8_9();
  v41 = v17;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v18);
  v20 = v40 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275433284();
  v21 = v45;
  sub_27546EAE0();
  if (v21)
  {
    goto LABEL_7;
  }

  v45 = v9;
  v22 = v42;
  v23 = sub_27546E8E0();
  sub_275433398(v23, 0);
  if (v26 == v27 >> 1)
  {
    goto LABEL_6;
  }

  if (v26 < (v27 >> 1))
  {
    v28 = sub_2754337E8(v26 + 1, v27 >> 1, v24, v25, v26, v27);
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    if (v30 == v32 >> 1)
    {
      v40[0] = v28;
      sub_275433230();
      sub_27546E850();
      sub_275433488();
      sub_27546E8D0();
      v36 = v41;
      swift_unknownObjectRelease();
      v37 = OUTLINED_FUNCTION_5_12();
      v38(v37);
      (*(v36 + 8))(v20, v16);
      v39 = v44;
      *v22 = v43;
      *(v22 + 16) = v39;
LABEL_7:
      __swift_destroy_boxed_opaque_existential_1(a1);
      return;
    }

LABEL_6:
    v33 = sub_27546E7D0();
    swift_allocError();
    v35 = v34;
    sub_2754333D4(0);
    *v35 = &type metadata for TransitionPlanner.Criteria.IncomingPlacement;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v41 + 8))(v20, v16);
    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_275433230()
{
  result = qword_2809DB618;
  if (!qword_2809DB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB618);
  }

  return result;
}

unint64_t sub_275433284()
{
  result = qword_2809DB628;
  if (!qword_2809DB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB628);
  }

  return result;
}

unint64_t sub_2754332D8()
{
  result = qword_2809DB630;
  if (!qword_2809DB630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB630);
  }

  return result;
}

void sub_27543332C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_275433398(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_30();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2754333D4(uint64_t a1)
{
  if (!qword_2809DB648)
  {
    sub_275433444();
    sub_27546E7C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809DB648);
    }
  }
}

unint64_t sub_275433444()
{
  result = qword_2809DB650;
  if (!qword_2809DB650)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2809DB650);
  }

  return result;
}

unint64_t sub_275433488()
{
  result = qword_2809DB658;
  if (!qword_2809DB658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB658);
  }

  return result;
}

_BYTE *sub_275433504(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2754335A0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2754335DC()
{
  result = qword_2809DB660;
  if (!qword_2809DB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB660);
  }

  return result;
}

unint64_t sub_275433634()
{
  result = qword_2809DB668;
  if (!qword_2809DB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB668);
  }

  return result;
}

unint64_t sub_27543368C()
{
  result = qword_2809DB670;
  if (!qword_2809DB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB670);
  }

  return result;
}

unint64_t sub_2754336E4()
{
  result = qword_2809DB678;
  if (!qword_2809DB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB678);
  }

  return result;
}

unint64_t sub_27543373C()
{
  result = qword_2809DB680;
  if (!qword_2809DB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB680);
  }

  return result;
}

unint64_t sub_275433794()
{
  result = qword_2809DB688;
  if (!qword_2809DB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB688);
  }

  return result;
}

uint64_t sub_2754337E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_2754338E0(uint64_t result, char a2)
{
  v3 = *v2;
  if (!*(v2 + 16))
  {
    v4 = *v2;
    if (a2)
    {
      goto LABEL_7;
    }

    if (*&result >= 0.0)
    {
      if (v3 < 0.0 || v3 > *&result)
      {
        goto LABEL_25;
      }

      return;
    }

LABEL_28:
    __break(1u);
    return;
  }

  if (*(v2 + 16) != 1)
  {
    return;
  }

  v4 = *(v2 + 8);
  if (a2)
  {
    if (v3 < 0.0)
    {
LABEL_25:
      sub_275408F98();
      v8 = swift_allocError();
      OUTLINED_FUNCTION_12_7(v8, v9);
      return;
    }

LABEL_7:
    if (v4 >= 0.0)
    {
      return;
    }

    goto LABEL_25;
  }

  if (*&result < 0.0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v3 < 0.0 || v3 > *&result)
  {
    goto LABEL_25;
  }

  if (v4 < 0.0 || v4 > *&result)
  {
    goto LABEL_25;
  }
}

void sub_2754339AC(double *a1@<X8>, double a2@<D0>)
{
  v3 = *v2;
  if (!*(v2 + 16))
  {
    if (a2 < 0.0)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v3 < 0.0 || v3 > a2)
    {
LABEL_19:
      sub_275408F98();
      v8 = swift_allocError();
      OUTLINED_FUNCTION_12_7(v8, v9);
      return;
    }

    if (v3 > a2)
    {
      goto LABEL_28;
    }

    *a1 = v3;
LABEL_24:
    a1[1] = a2;
    return;
  }

  if (*(v2 + 16) == 1)
  {
    if (a2 >= 0.0)
    {
      if (v3 >= 0.0 && v3 <= a2)
      {
        v5 = *(v2 + 8);
        if (v5 >= 0.0 && v5 <= a2)
        {
          *a1 = v3;
          a1[1] = v5;
          return;
        }
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (a2 >= 0.0)
  {
    *a1 = 0.0;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

BOOL static TransitionPlanner.Criteria.IncomingPlacement.EarlyPlacementConstraint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    return !*(a2 + 16) && v3 - v2 == 0.0;
  }

  v5 = *(a2 + 8);
  if (*(a1 + 16) != 1)
  {
    v8 = *&v5 | *&v3;
    return v4 == 2 && v8 == 0;
  }

  if (v4 != 1)
  {
    return 0;
  }

  v6 = v3 - v2 == 0.0;
  return v5 - *(a1 + 8) == 0.0 && v6;
}

uint64_t sub_275433B10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6F536E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7265746661 && a2 == 0xE500000000000000;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6968746977 && a2 == 0xE600000000000000)
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

uint64_t sub_275433C14(char a1)
{
  if (!a1)
  {
    return 0x676E6F536E69;
  }

  if (a1 == 1)
  {
    return 0x7265746661;
  }

  return 0x6E6968746977;
}

uint64_t sub_275433C8C(uint64_t a1)
{
  v2 = sub_275434A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275433CC8(uint64_t a1)
{
  v2 = sub_275434A88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275433D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275433B10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275433D34(uint64_t a1)
{
  v2 = sub_275434B30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275433D70(uint64_t a1)
{
  v2 = sub_275434B30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275433DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275433C60(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_275433DDC(uint64_t a1)
{
  v2 = sub_275434ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275433E18(uint64_t a1)
{
  v2 = sub_275434ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275433E54(uint64_t a1)
{
  v2 = sub_275434A34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275433E90(uint64_t a1)
{
  v2 = sub_275434A34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Criteria.IncomingPlacement.EarlyPlacementConstraint.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_13();
  v5 = MEMORY[0x277D84538];
  sub_275434BD8(0, v6, v7, v8, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_8_9();
  v63 = v10;
  v64 = v9;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  v62 = &v57 - v12;
  v13 = OUTLINED_FUNCTION_4_14();
  sub_275434BD8(v13, v14, v15, v16, v5);
  v61 = v17;
  OUTLINED_FUNCTION_8_9();
  v58 = v18;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  v22 = OUTLINED_FUNCTION_3_20();
  sub_275434BD8(v22, v23, v24, v25, v5);
  OUTLINED_FUNCTION_8_9();
  v59 = v27;
  v60 = v26;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v28);
  v30 = &v57 - v29;
  v31 = OUTLINED_FUNCTION_2_24();
  sub_275434BD8(v31, v32, v33, &_s24EarlyPlacementConstraintO10CodingKeysON, v5);
  OUTLINED_FUNCTION_8_9();
  v66 = v35;
  v67 = v34;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v36);
  v38 = &v57 - v37;
  v65 = *v3;
  v39 = v3[1];
  v40 = *(v3 + 16);
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275434B30();
  sub_27546EB00();
  if (!v40)
  {
    v50 = v58;
    LOBYTE(v68[0]) = 1;
    v51 = sub_275434A88();
    OUTLINED_FUNCTION_13_7(&_s24EarlyPlacementConstraintO15AfterCodingKeysON, v68, v52, v53, v51);
    v68[0] = v65;
    sub_27542D5D8();
    v54 = v61;
    sub_27546E950();
    (*(v50 + 8))(v21, v54);
    return (*(v66 + 8))(v38, v41);
  }

  if (v40 == 1)
  {
    LOBYTE(v68[0]) = 2;
    v42 = sub_275434A34();
    v43 = v62;
    OUTLINED_FUNCTION_13_7(&_s24EarlyPlacementConstraintO16WithinCodingKeysON, v68, v44, v45, v42);
    v68[0] = v65;
    v68[1] = v39;
    OUTLINED_FUNCTION_1_26();
    sub_275434BD8(0, v46, v47, v48, MEMORY[0x277D83638]);
    sub_275434C40(&qword_2809DB6E0, sub_27542D5D8, MEMORY[0x277D83640]);
    v49 = v64;
    sub_27546E950();
    (*(v63 + 8))(v43, v49);
    return (*(v66 + 8))(v38, v41);
  }

  LOBYTE(v68[0]) = 0;
  sub_275434ADC();
  v56 = v67;
  sub_27546E8F0();
  (*(v59 + 8))(v30, v60);
  return (*(v66 + 8))(v38, v56);
}

uint64_t TransitionPlanner.Criteria.IncomingPlacement.EarlyPlacementConstraint.init(from:)@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v88 = a3;
  OUTLINED_FUNCTION_5_13();
  v4 = MEMORY[0x277D844C8];
  sub_275434BD8(0, v5, v6, v7, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_8_9();
  v85 = v8;
  v86 = v9;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v10);
  v87 = &v79 - v11;
  v12 = OUTLINED_FUNCTION_4_14();
  sub_275434BD8(v12, v13, v14, v15, v4);
  OUTLINED_FUNCTION_8_9();
  v83 = v16;
  v84 = v17;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v18);
  v90 = &v79 - v19;
  v20 = OUTLINED_FUNCTION_3_20();
  sub_275434BD8(v20, v21, v22, v23, v4);
  v25 = v24;
  OUTLINED_FUNCTION_8_9();
  v82 = v26;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v27);
  v29 = &v79 - v28;
  v30 = OUTLINED_FUNCTION_2_24();
  sub_275434BD8(v30, v31, v32, &_s24EarlyPlacementConstraintO10CodingKeysON, v4);
  OUTLINED_FUNCTION_8_9();
  v89 = v33;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v34);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275434B30();
  v35 = v92;
  sub_27546EAE0();
  if (v35)
  {
    goto LABEL_9;
  }

  v80 = v25;
  v81 = v29;
  v92 = a1;
  v36 = sub_27546E8E0();
  result = sub_275433874(v36, 0);
  if (v39 == v40 >> 1)
  {
LABEL_8:
    v50 = sub_27546E7D0();
    swift_allocError();
    v52 = v51;
    sub_2754333D4(0);
    *v52 = &type metadata for TransitionPlanner.Criteria.IncomingPlacement.EarlyPlacementConstraint;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    v53 = OUTLINED_FUNCTION_6_13();
    v54(v53);
    a1 = v92;
LABEL_9:
    v55 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  if (v39 < (v40 >> 1))
  {
    v41 = *(v38 + v39);
    sub_27543386C(v39 + 1);
    v43 = v42;
    v45 = v44;
    swift_unknownObjectRelease();
    if (v43 == v45 >> 1)
    {
      if (v41)
      {
        if (v41 == 1)
        {
          LOBYTE(v91[0]) = 1;
          v46 = sub_275434A88();
          OUTLINED_FUNCTION_9_7(&_s24EarlyPlacementConstraintO15AfterCodingKeysON, v91, v47, v48, v46);
          v49 = v88;
          sub_27542D478();
          sub_27546E8D0();
          swift_unknownObjectRelease();
          v68 = OUTLINED_FUNCTION_11_9();
          v69(v68);
          v70 = OUTLINED_FUNCTION_7_12();
          v71(v70);
          v72 = 0;
          v73 = 0;
          v74 = v91[0];
        }

        else
        {
          LOBYTE(v91[0]) = 2;
          v60 = sub_275434A34();
          OUTLINED_FUNCTION_9_7(&_s24EarlyPlacementConstraintO16WithinCodingKeysON, v91, v61, v62, v60);
          v49 = v88;
          OUTLINED_FUNCTION_1_26();
          sub_275434BD8(0, v65, v66, v67, MEMORY[0x277D83638]);
          sub_275434C40(&qword_2809DB708, sub_27542D478, MEMORY[0x277D83668]);
          sub_27546E8D0();
          swift_unknownObjectRelease();
          v75 = OUTLINED_FUNCTION_10_8();
          v76(v75);
          v77 = OUTLINED_FUNCTION_7_12();
          v78(v77);
          v74 = v91[0];
          v72 = v91[1];
          v73 = 1;
        }
      }

      else
      {
        LOBYTE(v91[0]) = 0;
        v56 = sub_275434ADC();
        v57 = v81;
        OUTLINED_FUNCTION_9_7(&_s24EarlyPlacementConstraintO16InSongCodingKeysON, v91, v58, v59, v56);
        swift_unknownObjectRelease();
        (*(v82 + 8))(v57, v80);
        v63 = OUTLINED_FUNCTION_6_13();
        v64(v63);
        v74 = 0;
        v72 = 0;
        v73 = 2;
        v49 = v88;
      }

      *v49 = v74;
      *(v49 + 8) = v72;
      *(v49 + 16) = v73;
      v55 = v92;
      return __swift_destroy_boxed_opaque_existential_1(v55);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t sub_275434A34()
{
  result = qword_2809DB698;
  if (!qword_2809DB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB698);
  }

  return result;
}

unint64_t sub_275434A88()
{
  result = qword_2809DB6A8;
  if (!qword_2809DB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB6A8);
  }

  return result;
}

unint64_t sub_275434ADC()
{
  result = qword_2809DB6B8;
  if (!qword_2809DB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB6B8);
  }

  return result;
}

unint64_t sub_275434B30()
{
  result = qword_2809DB6C8;
  if (!qword_2809DB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB6C8);
  }

  return result;
}

unint64_t sub_275434B84()
{
  result = qword_2809DB6D8;
  if (!qword_2809DB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB6D8);
  }

  return result;
}

void sub_275434BD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_275434C40(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_1_26();
    sub_275434BD8(255, v6, v7, v8, MEMORY[0x277D83638]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_275434CD4(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_275434CEC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *_s24EarlyPlacementConstraintO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275434DE0);
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

_BYTE *sub_275434E3C(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x275434ED8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_275434F14()
{
  result = qword_2809DB710;
  if (!qword_2809DB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB710);
  }

  return result;
}

unint64_t sub_275434F6C()
{
  result = qword_2809DB718;
  if (!qword_2809DB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB718);
  }

  return result;
}

unint64_t sub_275434FC4()
{
  result = qword_2809DB720;
  if (!qword_2809DB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB720);
  }

  return result;
}

unint64_t sub_27543501C()
{
  result = qword_2809DB728;
  if (!qword_2809DB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB728);
  }

  return result;
}

unint64_t sub_275435074()
{
  result = qword_2809DB730;
  if (!qword_2809DB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB730);
  }

  return result;
}

unint64_t sub_2754350CC()
{
  result = qword_2809DB738;
  if (!qword_2809DB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB738);
  }

  return result;
}

unint64_t sub_275435124()
{
  result = qword_2809DB740;
  if (!qword_2809DB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB740);
  }

  return result;
}

unint64_t sub_27543517C()
{
  result = qword_2809DB748;
  if (!qword_2809DB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB748);
  }

  return result;
}

unint64_t sub_2754351D4()
{
  result = qword_2809DB750;
  if (!qword_2809DB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB750);
  }

  return result;
}

unint64_t sub_27543522C()
{
  result = qword_2809DB758;
  if (!qword_2809DB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB758);
  }

  return result;
}

unint64_t sub_275435284()
{
  result = qword_2809DB760;
  if (!qword_2809DB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB760);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27546E850();
}

double OUTLINED_FUNCTION_12_7(uint64_t a1, _BYTE *a2)
{
  *a2 = 7;

  swift_willThrow();
  return result;
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27546E8F0();
}

BOOL static TransitionPlanner.Criteria.OutgoingPlacement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 < 0)
  {
    if ((v3 & 0x80000000) == 0)
    {
      return 0;
    }

    if (v2)
    {
      return (v3 & 1) != 0;
    }

    if (v3)
    {
      return 0;
    }
  }

  else if (v3 < 0)
  {
    return 0;
  }

  return *a2 - *a1 == 0.0;
}

uint64_t sub_275435460(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C726165 && a2 == 0xE500000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125932 && a2 == 0xE400000000000000)
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

uint64_t sub_275435524(char a1)
{
  if (a1)
  {
    return 1702125932;
  }

  else
  {
    return 0x796C726165;
  }
}

uint64_t sub_275435558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275435460(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275435580(uint64_t a1)
{
  v2 = sub_2754360E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754355BC(uint64_t a1)
{
  v2 = sub_2754360E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2754355F8(uint64_t a1)
{
  v2 = sub_275436090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275435634(uint64_t a1)
{
  v2 = sub_275436090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275435670(uint64_t a1)
{
  v2 = sub_27543603C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754356AC(uint64_t a1)
{
  v2 = sub_27543603C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Criteria.OutgoingPlacement.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_21();
  v5 = MEMORY[0x277D84538];
  sub_2754361E0(0, v6, v7, v8, MEMORY[0x277D84538]);
  v41 = v9;
  OUTLINED_FUNCTION_8_9();
  v39 = v10;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  v40 = &v38 - v12;
  v13 = OUTLINED_FUNCTION_1_27();
  sub_2754361E0(v13, v14, v15, v16, v5);
  v18 = v17;
  OUTLINED_FUNCTION_8_9();
  v42 = v19;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - v21;
  v23 = OUTLINED_FUNCTION_2_25();
  sub_2754361E0(v23, v24, v25, &_s17OutgoingPlacementO10CodingKeysON, v5);
  OUTLINED_FUNCTION_8_9();
  v44 = v27;
  v45 = v26;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v28);
  v30 = &v38 - v29;
  v43 = *v3;
  v31 = *(v3 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754360E4();
  sub_27546EB00();
  if (v31 < 0)
  {
    v34 = v39;
    LOBYTE(v46) = 1;
    sub_27543603C();
    v35 = v40;
    v36 = v45;
    sub_27546E8F0();
    v46 = v43;
    v47 = v31 & 1;
    sub_275436138();
    v37 = v41;
    sub_27546E950();
    (*(v34 + 8))(v35, v37);
    return (*(v44 + 8))(v30, v36);
  }

  else
  {
    LOBYTE(v46) = 0;
    sub_275436090();
    v32 = v45;
    sub_27546E8F0();
    v46 = v43;
    sub_27543618C();
    sub_27546E950();
    (*(v42 + 8))(v22, v18);
    return (*(v44 + 8))(v30, v32);
  }
}

uint64_t TransitionPlanner.Criteria.OutgoingPlacement.init(from:)@<X0>(void *a1@<X0>, void *a3@<X8>)
{
  v65 = a3;
  OUTLINED_FUNCTION_3_21();
  v4 = MEMORY[0x277D844C8];
  sub_2754361E0(0, v5, v6, v7, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_8_9();
  v67 = v9;
  v68 = v8;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v10);
  v69 = v64 - v11;
  v12 = OUTLINED_FUNCTION_1_27();
  sub_2754361E0(v12, v13, v14, v15, v4);
  v17 = v16;
  OUTLINED_FUNCTION_8_9();
  v66 = v18;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v19);
  v21 = v64 - v20;
  v22 = OUTLINED_FUNCTION_2_25();
  sub_2754361E0(v22, v23, v24, &_s17OutgoingPlacementO10CodingKeysON, v4);
  v26 = v25;
  OUTLINED_FUNCTION_8_9();
  v70 = v27;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v28);
  v30 = v64 - v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754360E4();
  v31 = v73;
  sub_27546EAE0();
  if (v31)
  {
    goto LABEL_9;
  }

  v64[0] = v17;
  v64[1] = v21;
  v73 = a1;
  v32 = sub_27546E8E0();
  result = sub_275433874(v32, 0);
  if (v35 == v36 >> 1)
  {
LABEL_8:
    v46 = sub_27546E7D0();
    swift_allocError();
    v48 = v47;
    sub_2754333D4(0);
    *v48 = &type metadata for TransitionPlanner.Criteria.OutgoingPlacement;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D84160], v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v70 + 8))(v30, v26);
    a1 = v73;
LABEL_9:
    v49 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  if (v35 < (v36 >> 1))
  {
    v37 = v26;
    v38 = *(v34 + v35);
    sub_27543386C(v35 + 1);
    v40 = v39;
    v42 = v41;
    swift_unknownObjectRelease();
    if (v40 == v42 >> 1)
    {
      if (v38)
      {
        LOBYTE(v71) = 1;
        v43 = sub_27543603C();
        OUTLINED_FUNCTION_7_13(&_s17OutgoingPlacementO14LateCodingKeysON, &v71, v44, v45, v43);
        sub_275436248();
        OUTLINED_FUNCTION_8_12(&type metadata for TransitionPlanner.Criteria.OutgoingPlacement.LatePlacementConstraint);
        swift_unknownObjectRelease();
        v53 = OUTLINED_FUNCTION_6_14();
        v54(v53);
        v55 = OUTLINED_FUNCTION_4_15();
        v56(v55);
        v57 = v71;
        v58 = v72 | 0x80;
      }

      else
      {
        LOBYTE(v71) = 0;
        v50 = sub_275436090();
        OUTLINED_FUNCTION_7_13(&_s17OutgoingPlacementO15EarlyCodingKeysON, &v71, v51, v52, v50);
        sub_27543629C();
        OUTLINED_FUNCTION_8_12(&type metadata for TransitionPlanner.Criteria.OutgoingPlacement.EarlyPlacementConstraint);
        swift_unknownObjectRelease();
        v59 = OUTLINED_FUNCTION_6_14();
        v60(v59);
        v61 = OUTLINED_FUNCTION_4_15();
        v62(v61);
        v58 = 0;
        v57 = v71;
      }

      v63 = v65;
      *v65 = v57;
      *(v63 + 8) = v58;
      v49 = v73;
      return __swift_destroy_boxed_opaque_existential_1(v49);
    }

    v26 = v37;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_275435F6C(double *a1@<X8>, double a2@<D0>)
{
  v5 = *v2;
  if ((*(v2 + 8) & 0x80000000) == 0)
  {
    if (a2 < 0.0)
    {
      __break(1u);
    }

    else
    {
      v6 = *v2;
      if (v5 < 0.0 || v5 > a2)
      {
        sub_275408F98();
        swift_allocError();
        *v8 = 6;
        swift_willThrow();
        return;
      }

      if (v5 <= a2)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    return;
  }

  sub_275437658(v9, a2);
  if (v3)
  {
    return;
  }

  v6 = *v9;
  a2 = *&v9[1];
LABEL_12:
  *a1 = v6;
  a1[1] = a2;
}

unint64_t sub_27543603C()
{
  result = qword_2809DB770;
  if (!qword_2809DB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB770);
  }

  return result;
}

unint64_t sub_275436090()
{
  result = qword_2809DB780;
  if (!qword_2809DB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB780);
  }

  return result;
}

unint64_t sub_2754360E4()
{
  result = qword_2809DB790;
  if (!qword_2809DB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB790);
  }

  return result;
}

unint64_t sub_275436138()
{
  result = qword_2809DB798;
  if (!qword_2809DB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB798);
  }

  return result;
}

unint64_t sub_27543618C()
{
  result = qword_2809DB7A0;
  if (!qword_2809DB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7A0);
  }

  return result;
}

void sub_2754361E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_275436248()
{
  result = qword_2809DB7C0;
  if (!qword_2809DB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7C0);
  }

  return result;
}

unint64_t sub_27543629C()
{
  result = qword_2809DB7C8;
  if (!qword_2809DB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7C8);
  }

  return result;
}

uint64_t _s17OutgoingPlacementOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 9))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
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

uint64_t _s17OutgoingPlacementOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

_BYTE *_s17OutgoingPlacementO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275436498);
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

_BYTE *sub_2754364E4(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x275436580);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2754365BC()
{
  result = qword_2809DB7D0;
  if (!qword_2809DB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7D0);
  }

  return result;
}

unint64_t sub_275436614()
{
  result = qword_2809DB7D8;
  if (!qword_2809DB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7D8);
  }

  return result;
}

unint64_t sub_27543666C()
{
  result = qword_2809DB7E0;
  if (!qword_2809DB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7E0);
  }

  return result;
}

unint64_t sub_2754366C4()
{
  result = qword_2809DB7E8;
  if (!qword_2809DB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7E8);
  }

  return result;
}

unint64_t sub_27543671C()
{
  result = qword_2809DB7F0;
  if (!qword_2809DB7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7F0);
  }

  return result;
}

unint64_t sub_275436774()
{
  result = qword_2809DB7F8;
  if (!qword_2809DB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7F8);
  }

  return result;
}

unint64_t sub_2754367CC()
{
  result = qword_2809DB800;
  if (!qword_2809DB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB800);
  }

  return result;
}

unint64_t sub_275436824()
{
  result = qword_2809DB808;
  if (!qword_2809DB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB808);
  }

  return result;
}

unint64_t sub_27543687C()
{
  result = qword_2809DB810;
  if (!qword_2809DB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB810);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27546E850();
}

uint64_t OUTLINED_FUNCTION_8_12(uint64_t a1)
{

  return sub_27546E8D0();
}

uint64_t sub_2754369A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7265746661 && a2 == 0xE500000000000000)
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

uint64_t sub_275436A28(uint64_t a1)
{
  v2 = sub_2754371A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275436A64(uint64_t a1)
{
  v2 = sub_2754371A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275436AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2754369A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_275436AD0(uint64_t a1)
{
  v2 = sub_2754371F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275436B0C(uint64_t a1)
{
  v2 = sub_2754371F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Criteria.OutgoingPlacement.EarlyPlacementConstraint.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_26();
  v5 = MEMORY[0x277D84538];
  sub_275437248(0, v6, v7, v8, MEMORY[0x277D84538]);
  v10 = v9;
  OUTLINED_FUNCTION_8_9();
  v29 = v11;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = OUTLINED_FUNCTION_1_28();
  sub_275437248(v15, v16, v17, v18, v5);
  v20 = v19;
  OUTLINED_FUNCTION_8_9();
  v22 = v21;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v23);
  v25 = &v28 - v24;
  v26 = *v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754371F4();
  sub_27546EB00();
  sub_2754371A0();
  sub_27546E8F0();
  v30 = v26;
  sub_27542D5D8();
  sub_27546E950();
  (*(v29 + 8))(v14, v10);
  return (*(v22 + 8))(v25, v20);
}

uint64_t TransitionPlanner.Criteria.OutgoingPlacement.EarlyPlacementConstraint.init(from:)@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v36[0] = a3;
  OUTLINED_FUNCTION_2_26();
  v4 = MEMORY[0x277D844C8];
  sub_275437248(0, v5, v6, v7, MEMORY[0x277D844C8]);
  v9 = v8;
  OUTLINED_FUNCTION_8_9();
  v36[1] = v10;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_1_28();
  sub_275437248(v12, v13, v14, &_s24EarlyPlacementConstraintO10CodingKeysON_0, v4);
  v16 = v15;
  OUTLINED_FUNCTION_8_9();
  v37 = v17;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v18);
  v20 = v36 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754371F4();
  v21 = v38;
  sub_27546EAE0();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v9;
  v22 = sub_27546E8E0();
  result = sub_275433874(v22, 0);
  if (v24 == v25 >> 1)
  {
    goto LABEL_6;
  }

  if (v24 < (v25 >> 1))
  {
    sub_27543386C(v24 + 1);
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease();
    if (v27 == v29 >> 1)
    {
      sub_2754371A0();
      sub_27546E850();
      sub_27542D478();
      sub_27546E8D0();
      v33 = v37;
      swift_unknownObjectRelease();
      v34 = OUTLINED_FUNCTION_4_16();
      v35(v34);
      (*(v33 + 8))(v20, v16);
      *v36[0] = v39;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

LABEL_6:
    v30 = sub_27546E7D0();
    swift_allocError();
    v32 = v31;
    sub_2754333D4(0);
    *v32 = &type metadata for TransitionPlanner.Criteria.OutgoingPlacement.EarlyPlacementConstraint;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v37 + 8))(v20, v16);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __break(1u);
  return result;
}

unint64_t sub_2754371A0()
{
  result = qword_2809DB820;
  if (!qword_2809DB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB820);
  }

  return result;
}

unint64_t sub_2754371F4()
{
  result = qword_2809DB830;
  if (!qword_2809DB830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB830);
  }

  return result;
}

void sub_275437248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for SongTime(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SongTime(uint64_t result, int a2, int a3)
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

_BYTE *sub_275437328(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2754373C4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_275437400()
{
  result = qword_2809DB848;
  if (!qword_2809DB848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB848);
  }

  return result;
}

unint64_t sub_275437458()
{
  result = qword_2809DB850;
  if (!qword_2809DB850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB850);
  }

  return result;
}

unint64_t sub_2754374B0()
{
  result = qword_2809DB858;
  if (!qword_2809DB858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB858);
  }

  return result;
}

unint64_t sub_275437508()
{
  result = qword_2809DB860;
  if (!qword_2809DB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB860);
  }

  return result;
}

unint64_t sub_275437560()
{
  result = qword_2809DB868;
  if (!qword_2809DB868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB868);
  }

  return result;
}

unint64_t sub_2754375B8()
{
  result = qword_2809DB870;
  if (!qword_2809DB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB870);
  }

  return result;
}

void sub_275437658(uint64_t a1@<X8>, double a2@<D0>)
{
  if (*(v2 + 8))
  {
    if (a2 >= 0.0)
    {
      *a1 = 0;
      *(a1 + 8) = a2;
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (a2 < 0.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = *v2;
  if (*v2 < 0.0 || v3 > a2)
  {
    sub_275408F98();
    swift_allocError();
    *v5 = 6;
    swift_willThrow();
    return;
  }

  if (v3 <= a2)
  {
    *a1 = v3;
    *(a1 + 8) = a2;
    return;
  }

LABEL_15:
  __break(1u);
}

BOOL static TransitionPlanner.Criteria.OutgoingPlacement.LatePlacementConstraint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    return (*(a2 + 8) & 1) == 0 && *a2 - *a1 == 0.0;
  }

  return (*(a2 + 8) & 1) != 0;
}

uint64_t sub_275437738(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6F536E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746661 && a2 == 0xE500000000000000)
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

uint64_t sub_2754377F8(char a1)
{
  if (a1)
  {
    return 0x7265746661;
  }

  else
  {
    return 0x676E6F536E69;
  }
}

uint64_t sub_275437828(uint64_t a1)
{
  v2 = sub_27543826C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275437864(uint64_t a1)
{
  v2 = sub_27543826C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2754378A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275437738(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2754378D0(uint64_t a1)
{
  v2 = sub_275438314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27543790C(uint64_t a1)
{
  v2 = sub_275438314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275437948(uint64_t a1)
{
  v2 = sub_2754382C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275437984(uint64_t a1)
{
  v2 = sub_2754382C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Criteria.OutgoingPlacement.LatePlacementConstraint.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_22();
  v5 = MEMORY[0x277D84538];
  sub_275438368(0, v6, v7, v8, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_8_9();
  v40 = v10;
  v41 = v9;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  v39 = &v37 - v12;
  v13 = OUTLINED_FUNCTION_1_29();
  sub_275438368(v13, v14, v15, v16, v5);
  OUTLINED_FUNCTION_8_9();
  v37 = v18;
  v38 = v17;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  v22 = OUTLINED_FUNCTION_2_27();
  sub_275438368(v22, v23, v24, &_s23LatePlacementConstraintO10CodingKeysON, v5);
  v42 = v25;
  OUTLINED_FUNCTION_8_9();
  v27 = v26;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v28);
  v30 = &v37 - v29;
  v31 = *v3;
  LOBYTE(v5) = *(v3 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275438314();
  sub_27546EB00();
  if (v5)
  {
    v43 = 0;
    sub_2754382C0();
    v32 = v42;
    sub_27546E8F0();
    (*(v37 + 8))(v21, v38);
    return (*(v27 + 8))(v30, v32);
  }

  else
  {
    v45 = 1;
    sub_27543826C();
    v34 = v39;
    v35 = v42;
    sub_27546E8F0();
    v44 = v31;
    sub_27542D5D8();
    v36 = v41;
    sub_27546E950();
    (*(v40 + 8))(v34, v36);
    return (*(v27 + 8))(v30, v35);
  }
}

uint64_t TransitionPlanner.Criteria.OutgoingPlacement.LatePlacementConstraint.init(from:)@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v72 = a3;
  OUTLINED_FUNCTION_3_22();
  v4 = MEMORY[0x277D844C8];
  sub_275438368(0, v5, v6, v7, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_8_9();
  v68 = v8;
  v69 = v9;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v10);
  v70 = &v64 - v11;
  v12 = OUTLINED_FUNCTION_1_29();
  sub_275438368(v12, v13, v14, v15, v4);
  v17 = v16;
  OUTLINED_FUNCTION_8_9();
  v71 = v18;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  v22 = OUTLINED_FUNCTION_2_27();
  sub_275438368(v22, v23, v24, &_s23LatePlacementConstraintO10CodingKeysON, v4);
  v26 = v25;
  OUTLINED_FUNCTION_8_9();
  v73 = v27;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v28);
  v30 = &v64 - v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275438314();
  v31 = v74;
  sub_27546EAE0();
  if (v31)
  {
    goto LABEL_9;
  }

  v74 = v21;
  v66 = v17;
  v32 = v30;
  v33 = sub_27546E8E0();
  result = sub_275433874(v33, 0);
  v38 = v26;
  v67 = a1;
  if (v36 == v37 >> 1)
  {
LABEL_8:
    v52 = sub_27546E7D0();
    swift_allocError();
    v54 = v53;
    sub_2754333D4(0);
    *v54 = &type metadata for TransitionPlanner.Criteria.OutgoingPlacement.LatePlacementConstraint;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D84160], v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v73 + 8))(v32, v38);
    a1 = v67;
LABEL_9:
    v63 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v65 = v30;
  if (v36 < (v37 >> 1))
  {
    v39 = v26;
    v40 = *(v35 + v36);
    sub_27543386C(v36 + 1);
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    v45 = v42 == v44 >> 1;
    v46 = v71;
    v47 = v72;
    if (v45)
    {
      v76 = v40;
      if (v40)
      {
        v78 = 1;
        v48 = sub_27543826C();
        OUTLINED_FUNCTION_6_15(&_s23LatePlacementConstraintO15AfterCodingKeysON, &v78, v49, v50, v48);
        v51 = v73;
        sub_27542D478();
        sub_27546E8D0();
        swift_unknownObjectRelease();
        v60 = OUTLINED_FUNCTION_5_14();
        v61(v60);
        (*(v51 + 8))(v65, v39);
        v62 = v75;
        v63 = v67;
      }

      else
      {
        v77 = 0;
        v55 = sub_2754382C0();
        v56 = v74;
        OUTLINED_FUNCTION_6_15(&_s23LatePlacementConstraintO16InSongCodingKeysON, &v77, v57, v58, v55);
        v59 = v73;
        swift_unknownObjectRelease();
        (*(v46 + 8))(v56, v66);
        (*(v59 + 8))(v30, v26);
        v62 = 0;
        v63 = v67;
        v47 = v72;
      }

      *v47 = v62;
      *(v47 + 8) = v76 ^ 1;
      return __swift_destroy_boxed_opaque_existential_1(v63);
    }

    v38 = v26;
    v32 = v65;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t sub_27543826C()
{
  result = qword_2809DB880;
  if (!qword_2809DB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB880);
  }

  return result;
}

unint64_t sub_2754382C0()
{
  result = qword_2809DB890;
  if (!qword_2809DB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB890);
  }

  return result;
}

unint64_t sub_275438314()
{
  result = qword_2809DB8A0;
  if (!qword_2809DB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8A0);
  }

  return result;
}

void sub_275438368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

_BYTE *_s23LatePlacementConstraintO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2754384ACLL);
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

_BYTE *_s23LatePlacementConstraintO15AfterCodingKeysOwst(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x275438590);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2754385CC()
{
  result = qword_2809DB8C0;
  if (!qword_2809DB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8C0);
  }

  return result;
}

unint64_t sub_275438624()
{
  result = qword_2809DB8C8;
  if (!qword_2809DB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8C8);
  }

  return result;
}

unint64_t sub_27543867C()
{
  result = qword_2809DB8D0;
  if (!qword_2809DB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8D0);
  }

  return result;
}

unint64_t sub_2754386D4()
{
  result = qword_2809DB8D8;
  if (!qword_2809DB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8D8);
  }

  return result;
}

unint64_t sub_27543872C()
{
  result = qword_2809DB8E0;
  if (!qword_2809DB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8E0);
  }

  return result;
}

unint64_t sub_275438784()
{
  result = qword_2809DB8E8;
  if (!qword_2809DB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8E8);
  }

  return result;
}

unint64_t sub_2754387DC()
{
  result = qword_2809DB8F0;
  if (!qword_2809DB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8F0);
  }

  return result;
}

unint64_t sub_275438834()
{
  result = qword_2809DB8F8;
  if (!qword_2809DB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27546E850();
}

void sub_27543890C()
{
  qword_2809DB900 = 0;
  byte_2809DB908 = -127;
  xmmword_2809DB910 = 0uLL;
  word_2809DB920 = 770;
}

double static TransitionPlanner.Criteria.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_2809DACB8 != -1)
  {
    swift_once();
  }

  v2 = byte_2809DB908;
  v3 = word_2809DB920;
  *a1 = qword_2809DB900;
  *(a1 + 8) = v2;
  result = *&xmmword_2809DB910;
  *(a1 + 16) = xmmword_2809DB910;
  *(a1 + 32) = v3;
  return result;
}

void TransitionPlanner.Criteria.outgoingPlacement.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

__n128 TransitionPlanner.Criteria.incomingPlacement.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

void TransitionPlanner.Criteria.init(outgoingPlacement:incomingPlacement:maximumTransitionComplexity:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 16);
  v11 = *a3;
  v14 = *a1;
  v15 = v7;
  v12[0] = v8;
  v12[1] = v9;
  v13 = v10;
  v16 = v11;
  sub_275438A6C(&v14, v12);
  if (!v4)
  {
    *a4 = v6;
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
    *(a4 + 24) = v9;
    *(a4 + 32) = v10;
    *(a4 + 33) = v11;
  }
}

void sub_275438A6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (((v2 & 0x80000000) == 0 || (v2 & 1) == 0) && *a1 < 0.0)
  {
    v4 = 6;
LABEL_5:
    sub_275408F98();
    swift_allocError();
    *v5 = v4;
    swift_willThrow();
    return;
  }

  if (*(a2 + 16))
  {
    if (*(a2 + 16) == 1)
    {
      v4 = 7;
      if (v3 < 0.0 || *(a2 + 8) < 0.0)
      {
        goto LABEL_5;
      }
    }
  }

  else if (v3 < 0.0)
  {
    v4 = 7;
    goto LABEL_5;
  }
}

uint64_t sub_275438B24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000027546F360 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000027546F380 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001BLL && 0x800000027546F3A0 == a2)
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

unint64_t sub_275438C40(unsigned __int8 a1)
{
  result = 0xD000000000000011;
  if (a1 >= 2u)
  {
    return 0xD00000000000001BLL;
  }

  return result;
}

uint64_t sub_275438C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275438B24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275438CC4(uint64_t a1)
{
  v2 = sub_275438F1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275438D00(uint64_t a1)
{
  v2 = sub_275438F1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Criteria.encode(to:)(void *a1)
{
  sub_275439264(0, &qword_2809DB928, MEMORY[0x277D84538]);
  v4 = v3;
  OUTLINED_FUNCTION_8_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  v12 = v1[2];
  v18 = v1[3];
  v19 = v12;
  v24 = *(v1 + 32);
  v17 = *(v1 + 33);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275438F1C();
  sub_27546EB00();
  v21 = v10;
  LOBYTE(v22) = v11;
  v25 = 0;
  sub_275438F70();
  OUTLINED_FUNCTION_1_30();
  v13 = v20;
  sub_27546E950();
  if (!v13)
  {
    v14 = v17;
    v21 = v19;
    v22 = v18;
    v23 = v24;
    v25 = 1;
    sub_275438FC4();
    OUTLINED_FUNCTION_1_30();
    sub_27546E950();
    LOBYTE(v21) = v14;
    v25 = 2;
    sub_275439018();
    OUTLINED_FUNCTION_1_30();
    sub_27546E950();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_275438F1C()
{
  result = qword_2809DB930;
  if (!qword_2809DB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB930);
  }

  return result;
}

unint64_t sub_275438F70()
{
  result = qword_2809DB938;
  if (!qword_2809DB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB938);
  }

  return result;
}

unint64_t sub_275438FC4()
{
  result = qword_2809DB940;
  if (!qword_2809DB940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB940);
  }

  return result;
}

unint64_t sub_275439018()
{
  result = qword_2809DB948;
  if (!qword_2809DB948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB948);
  }

  return result;
}

uint64_t TransitionPlanner.Criteria.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_275439264(0, &qword_2809DB950, MEMORY[0x277D844C8]);
  v6 = v5;
  OUTLINED_FUNCTION_8_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275438F1C();
  sub_27546EAE0();
  if (!v2)
  {
    v24 = 0;
    sub_2754392C8();
    OUTLINED_FUNCTION_0_31(&type metadata for TransitionPlanner.Criteria.OutgoingPlacement);
    v12 = v20;
    v13 = v21;
    v24 = 1;
    sub_27543931C();
    OUTLINED_FUNCTION_0_31(&type metadata for TransitionPlanner.Criteria.IncomingPlacement);
    v18 = v21;
    v19 = v20;
    v23 = v22;
    v24 = 2;
    sub_275439370();
    OUTLINED_FUNCTION_0_31(&type metadata for Transition.Complexity);
    (*(v8 + 8))(v11, v6);
    v15 = v20;
    *a2 = v12;
    *(a2 + 8) = v13;
    v16 = v18;
    *(a2 + 16) = v19;
    *(a2 + 24) = v16;
    *(a2 + 32) = v23;
    *(a2 + 33) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_275439264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_275438F1C();
    v7 = a3(a1, &_s8CriteriaV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2754392C8()
{
  result = qword_2809DB958;
  if (!qword_2809DB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB958);
  }

  return result;
}

unint64_t sub_27543931C()
{
  result = qword_2809DB960;
  if (!qword_2809DB960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB960);
  }

  return result;
}

unint64_t sub_275439370()
{
  result = qword_2809DB968;
  if (!qword_2809DB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB968);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_275439408(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 34))
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

uint64_t sub_275439448(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

_BYTE *_s8CriteriaV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27543956CLL);
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

unint64_t sub_2754395A8()
{
  result = qword_2809DB970;
  if (!qword_2809DB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB970);
  }

  return result;
}

unint64_t sub_275439600()
{
  result = qword_2809DB978;
  if (!qword_2809DB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB978);
  }

  return result;
}

unint64_t sub_275439658()
{
  result = qword_2809DB980;
  if (!qword_2809DB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB980);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_31(uint64_t a1)
{

  return sub_27546E8D0();
}

uint64_t _s13FailureReasonOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t _s13FailureReasonOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void TransitionPlanner.Song.AdaptiveMusicAnalysis.init()()
{
  sub_275408F98();
  swift_allocError();
  *v0 = 3;
  swift_willThrow();
}

uint64_t sub_2754397F8(uint64_t a1)
{
  v2 = sub_2754399D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275439834(uint64_t a1)
{
  v2 = sub_2754399D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Song.AdaptiveMusicAnalysis.encode(to:)(void *a1)
{
  sub_27543997C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754399D8();
  sub_27546EB00();
  return (*(v4 + 8))(v6, v3);
}

void sub_27543997C(uint64_t a1)
{
  if (!qword_2809DB988)
  {
    sub_2754399D8();
    v1 = sub_27546E960();
    if (!v2)
    {
      atomic_store(v1, &qword_2809DB988);
    }
  }
}

unint64_t sub_2754399D8()
{
  result = qword_2809DB990;
  if (!qword_2809DB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB990);
  }

  return result;
}

_BYTE *_s21AdaptiveMusicAnalysisVwst(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x275439B20);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_275439B6C()
{
  result = qword_2809DB998;
  if (!qword_2809DB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB998);
  }

  return result;
}

unint64_t sub_275439BC4()
{
  result = qword_2809DB9A0;
  if (!qword_2809DB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB9A0);
  }

  return result;
}

BOOL static TransitionPlanner.Song.Analysis.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_18();
  v7 = v6 - v5;
  type metadata accessor for TransitionPlanner.Song.Analysis(0);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v11 = v10 - v9;
  sub_275439E74(0);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_18();
  v15 = v14 - v13;
  v17 = *(v16 + 56);
  sub_275439ED8(a1, v14 - v13);
  sub_275439ED8(a2, v15 + v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_275439ED8(v15, v11);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_27543AE8C(v15 + v17, v7, type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis);
      v20 = static TransitionPlanner.Song.MusicKitAnalysis.== infix(_:_:)(v11, v7);
      sub_275439F3C(v7, type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis);
      sub_275439F3C(v11, type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis);
      v19 = type metadata accessor for TransitionPlanner.Song.Analysis;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_5_15();
    sub_275439F3C(v11, v21);
    goto LABEL_6;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = type metadata accessor for TransitionPlanner.Song.Analysis;
  if (EnumCaseMultiPayload != 1)
  {
LABEL_6:
    v20 = 0;
    v19 = sub_275439E74;
    goto LABEL_8;
  }

  v20 = 1;
LABEL_8:
  sub_275439F3C(v15, v19);
  return v20;
}

uint64_t type metadata accessor for TransitionPlanner.Song.Analysis(uint64_t a1)
{
  result = qword_2809DBA18;
  if (!qword_2809DBA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275439E74(uint64_t a1)
{
  if (!qword_2809DB9A8)
  {
    type metadata accessor for TransitionPlanner.Song.Analysis(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809DB9A8);
    }
  }
}

uint64_t sub_275439ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitionPlanner.Song.Analysis(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275439F3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_19();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_275439F94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74694B636973756DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576697470616461 && a2 == 0xED0000636973754DLL)
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

uint64_t sub_27543A064(char a1)
{
  if (a1)
  {
    return 0x6576697470616461;
  }

  else
  {
    return 0x74694B636973756DLL;
  }
}

uint64_t sub_27543A0A8(uint64_t a1)
{
  v2 = sub_27543AC80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27543A0E4(uint64_t a1)
{
  v2 = sub_27543AC80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27543A128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275439F94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27543A150(uint64_t a1)
{
  v2 = sub_27543AD28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27543A18C(uint64_t a1)
{
  v2 = sub_27543AD28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27543A1C8(uint64_t a1)
{
  v2 = sub_27543ACD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27543A204(uint64_t a1)
{
  v2 = sub_27543ACD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Song.Analysis.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_16();
  v4 = MEMORY[0x277D84538];
  sub_27543ADD0(0, v5, v6, v7, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_8_9();
  v52 = v9;
  v53 = v8;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_9();
  v50 = v11;
  OUTLINED_FUNCTION_7_14(v12, &qword_2809DB9C0, v13, &_s8AnalysisO18MusicKitCodingKeysON);
  v51 = v14;
  OUTLINED_FUNCTION_8_9();
  v49 = v15;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_9();
  v48 = v17;
  v47 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v21 = v20 - v19;
  type metadata accessor for TransitionPlanner.Song.Analysis(0);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  v25 = v24 - v23;
  v26 = OUTLINED_FUNCTION_4_17();
  sub_27543ADD0(v26, v27, v28, &_s8AnalysisO10CodingKeysON, v4);
  v30 = v29;
  OUTLINED_FUNCTION_8_9();
  v55 = v31;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v32);
  v34 = &v47 - v33;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27543AD28();
  sub_27546EB00();
  sub_275439ED8(v54, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v57 = 1;
    v35 = sub_27543AC80();
    v36 = v50;
    OUTLINED_FUNCTION_12_8(&_s8AnalysisO23AdaptiveMusicCodingKeysON, &v57, v37, v38, v35);
    sub_27543AD7C();
    v39 = v53;
    sub_27546E950();
    (*(v52 + 8))(v36, v39);
  }

  else
  {
    sub_27543AE8C(v25, v21, type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis);
    v56 = 0;
    v40 = sub_27543ACD4();
    v41 = v48;
    OUTLINED_FUNCTION_12_8(&_s8AnalysisO18MusicKitCodingKeysON, &v56, v42, v43, v40);
    sub_27543AEEC(&qword_2809DB9E8, &protocol conformance descriptor for TransitionPlanner.Song.MusicKitAnalysis);
    v44 = v51;
    sub_27546E950();
    (*(v49 + 8))(v41, v44);
    OUTLINED_FUNCTION_5_15();
    sub_275439F3C(v21, v45);
  }

  return (*(v55 + 8))(v34, v30);
}

uint64_t TransitionPlanner.Song.Analysis.init(from:)@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v79 = a3;
  OUTLINED_FUNCTION_6_16();
  v4 = MEMORY[0x277D844C8];
  sub_27543ADD0(0, v5, v6, v7, MEMORY[0x277D844C8]);
  v82 = v8;
  OUTLINED_FUNCTION_8_9();
  v85 = v9;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_9();
  v84 = v11;
  OUTLINED_FUNCTION_7_14(v12, &qword_2809DB9F8, v13, &_s8AnalysisO18MusicKitCodingKeysON);
  OUTLINED_FUNCTION_8_9();
  v80 = v15;
  v81 = v14;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_9();
  v83 = v17;
  v18 = OUTLINED_FUNCTION_4_17();
  sub_27543ADD0(v18, v19, v20, v21, v4);
  OUTLINED_FUNCTION_8_9();
  v86 = v23;
  v87 = v22;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v24);
  v26 = &v75 - v25;
  v27 = type metadata accessor for TransitionPlanner.Song.Analysis(0);
  OUTLINED_FUNCTION_19();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v75 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v75 - v35;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27543AD28();
  v37 = v88;
  sub_27546EAE0();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v75 = v31;
  v76 = v34;
  v77 = v36;
  v78 = v27;
  v88 = a1;
  v38 = v87;
  v39 = sub_27546E8E0();
  result = sub_275433874(v39, 0);
  if (v42 == v43 >> 1)
  {
    v44 = v78;
LABEL_9:
    v58 = sub_27546E7D0();
    swift_allocError();
    v60 = v59;
    sub_2754333D4(0);
    *v60 = v44;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D84160], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    v61 = OUTLINED_FUNCTION_2_28();
    v62(v61);
    a1 = v88;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (v42 >= (v43 >> 1))
  {
    __break(1u);
  }

  else
  {
    v45 = *(v41 + v42);
    sub_27543386C(v42 + 1);
    v47 = v46;
    v49 = v48;
    swift_unknownObjectRelease();
    v50 = v85;
    if (v47 != v49 >> 1)
    {
      v44 = v78;
      goto LABEL_9;
    }

    if (v45)
    {
      v90 = 1;
      v51 = sub_27543AC80();
      v52 = v84;
      OUTLINED_FUNCTION_9_8(&_s8AnalysisO23AdaptiveMusicCodingKeysON, &v90, v53, v54, v51);
      v55 = v38;
      sub_27543AE38();
      v56 = v82;
      sub_27546E8D0();
      v57 = v86;
      swift_unknownObjectRelease();
      (*(v50 + 8))(v52, v56);
      (*(v57 + 8))(v26, v55);
      v67 = v75;
      swift_storeEnumTagMultiPayload();
      v68 = v67;
      v69 = v79;
      v70 = v77;
    }

    else
    {
      v89 = 0;
      v63 = sub_27543ACD4();
      OUTLINED_FUNCTION_9_8(&_s8AnalysisO18MusicKitCodingKeysON, &v89, v64, v65, v63);
      v70 = v77;
      type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
      sub_27543AEEC(&qword_2809DBA10, &protocol conformance descriptor for TransitionPlanner.Song.MusicKitAnalysis);
      v66 = v76;
      sub_27546E8D0();
      swift_unknownObjectRelease();
      v71 = OUTLINED_FUNCTION_11_10();
      v72(v71);
      v73 = OUTLINED_FUNCTION_2_28();
      v74(v73);
      swift_storeEnumTagMultiPayload();
      v68 = v66;
      v69 = v79;
    }

    sub_27543AE8C(v68, v70, type metadata accessor for TransitionPlanner.Song.Analysis);
    sub_27543AE8C(v70, v69, type metadata accessor for TransitionPlanner.Song.Analysis);
    return __swift_destroy_boxed_opaque_existential_1(v88);
  }

  return result;
}

unint64_t sub_27543AC80()
{
  result = qword_2809DB9B8;
  if (!qword_2809DB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB9B8);
  }

  return result;
}

unint64_t sub_27543ACD4()
{
  result = qword_2809DB9C8;
  if (!qword_2809DB9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB9C8);
  }

  return result;
}

unint64_t sub_27543AD28()
{
  result = qword_2809DB9D8;
  if (!qword_2809DB9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB9D8);
  }

  return result;
}

unint64_t sub_27543AD7C()
{
  result = qword_2809DB9E0;
  if (!qword_2809DB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB9E0);
  }

  return result;
}

void sub_27543ADD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_27543AE38()
{
  result = qword_2809DBA08;
  if (!qword_2809DBA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA08);
  }

  return result;
}

uint64_t sub_27543AE8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_19();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_27543AEEC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27543AF38(uint64_t a1)
{
  result = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s8AnalysisO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27543B06CLL);
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

_BYTE *sub_27543B0B8(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x27543B154);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_27543B190()
{
  result = qword_2809DBA28;
  if (!qword_2809DBA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA28);
  }

  return result;
}

unint64_t sub_27543B1E8()
{
  result = qword_2809DBA30;
  if (!qword_2809DBA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA30);
  }

  return result;
}

unint64_t sub_27543B240()
{
  result = qword_2809DBA38;
  if (!qword_2809DBA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA38);
  }

  return result;
}

unint64_t sub_27543B298()
{
  result = qword_2809DBA40;
  if (!qword_2809DBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA40);
  }

  return result;
}

unint64_t sub_27543B2F0()
{
  result = qword_2809DBA48;
  if (!qword_2809DBA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA48);
  }

  return result;
}

unint64_t sub_27543B348()
{
  result = qword_2809DBA50;
  if (!qword_2809DBA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA50);
  }

  return result;
}

unint64_t sub_27543B3A0()
{
  result = qword_2809DBA58;
  if (!qword_2809DBA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA58);
  }

  return result;
}

unint64_t sub_27543B3F8()
{
  result = qword_2809DBA60;
  if (!qword_2809DBA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA60);
  }

  return result;
}

unint64_t sub_27543B450()
{
  result = qword_2809DBA68;
  if (!qword_2809DBA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA68);
  }

  return result;
}

void OUTLINED_FUNCTION_7_14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{

  sub_27543ADD0(0, a2, sub_27543ACD4, a4, v4);
}

uint64_t OUTLINED_FUNCTION_9_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27546E850();
}

uint64_t OUTLINED_FUNCTION_12_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27546E8F0();
}

uint64_t TransitionPlanner.Song.MusicKitAnalysis.audioAnalysis.getter()
{
  type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  OUTLINED_FUNCTION_5_16();
  return sub_27543B680();
}

uint64_t type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(uint64_t a1)
{
  result = qword_2809DBB20;
  if (!qword_2809DBB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TransitionPlanner.Song.MusicKitAnalysis.flexAnalysis.getter()
{
  type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  OUTLINED_FUNCTION_4_18();
  return sub_27543B680();
}

uint64_t sub_27543B680()
{
  v2 = OUTLINED_FUNCTION_15_6();
  sub_27543D684(v2, v3, v4, v5);
  OUTLINED_FUNCTION_19();
  (*(v6 + 16))(v0, v1);
  return v0;
}

uint64_t TransitionPlanner.Song.MusicKitAnalysis.spatialTimingInformation.getter()
{
  type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  OUTLINED_FUNCTION_3_23();
  return sub_27543B680();
}

uint64_t TransitionPlanner.Song.MusicKitAnalysis.init(genres:duration:audioAnalysis:flexAnalysis:spatialTimingInformation:)@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_27543B948(0);
  v14 = OUTLINED_FUNCTION_11_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v17 = v16 - v15;
  v19 = *(v18 + 56);
  OUTLINED_FUNCTION_3_23();
  sub_27543B680();
  if (a3)
  {
    v20 = sub_27546E3B0();
    if (__swift_getEnumTagSinglePayload(v17 + v19, 1, v20) != 1)
    {
      OUTLINED_FUNCTION_0_32();
      sub_27543BA98(v17 + v19, v21, v22);
    }

LABEL_7:
    *a7 = a1;
    *(a7 + 8) = a2;
    *(a7 + 16) = a3 & 1;
    type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
    OUTLINED_FUNCTION_5_16();
    sub_27543BA38();
    OUTLINED_FUNCTION_4_18();
    sub_27543BA38();
    OUTLINED_FUNCTION_3_23();
    return sub_27543BA38();
  }

  v23 = sub_27546E3B0();
  if (__swift_getEnumTagSinglePayload(v17 + v19, 1, v23) != 1)
  {
    OUTLINED_FUNCTION_0_32();
    sub_27543BA98(v17 + v19, v24, v25);
  }

  if (a2 > 0.0)
  {
    goto LABEL_7;
  }

  sub_275408F98();
  swift_allocError();
  *v27 = 4;
  swift_willThrow();
  OUTLINED_FUNCTION_0_32();
  sub_27543BA98(a6, v28, v29);
  OUTLINED_FUNCTION_1_31();
  sub_27543BA98(a5, v30, v31);
  OUTLINED_FUNCTION_2_29();
  return sub_27543BA98(a4, v32, v33);
}

void sub_27543B948(uint64_t a1)
{
  if (!qword_2809DBA70)
  {
    sub_27543B9E8();
    sub_27543D684(255, &qword_2809DAFC0, MEMORY[0x277D2AC90], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809DBA70);
    }
  }
}

void sub_27543B9E8()
{
  if (!qword_2809DBA78)
  {
    v0 = sub_27546E6F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DBA78);
    }
  }
}

uint64_t sub_27543BA38()
{
  v2 = OUTLINED_FUNCTION_15_6();
  sub_27543D684(v2, v3, v4, v5);
  OUTLINED_FUNCTION_19();
  (*(v6 + 32))(v0, v1);
  return v0;
}

uint64_t sub_27543BA98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_27543D684(0, a2, a3, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_19();
  (*(v4 + 8))(a1);
  return a1;
}

BOOL static TransitionPlanner.Song.MusicKitAnalysis.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_27546E3B0();
  OUTLINED_FUNCTION_8_9();
  v101 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v99 = v9 - v8;
  OUTLINED_FUNCTION_16_4();
  v10 = MEMORY[0x277D83D88];
  sub_27543D684(0, &qword_2809DAFC0, v2, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_11_0(v11);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_9();
  v100 = v13;
  sub_27543C3E8(0, &qword_2809DBA80, &qword_2809DAFC0, v2);
  v103 = v14;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_9();
  v104 = v16;
  v108 = sub_27546E1B0();
  OUTLINED_FUNCTION_8_9();
  v106 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v102 = v20 - v19;
  v21 = MEMORY[0x277D2A988];
  sub_27543D684(0, &qword_2809DAFB0, MEMORY[0x277D2A988], v10);
  OUTLINED_FUNCTION_11_0(v22);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10_9();
  v105 = v24;
  v25 = a2;
  sub_27543C3E8(0, &qword_2809DBA88, &qword_2809DAFB0, v21);
  v27 = v26;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_9();
  v107 = v29;
  v30 = sub_27546E2E0();
  OUTLINED_FUNCTION_8_9();
  v109 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18();
  v35 = v34 - v33;
  v36 = MEMORY[0x277D2AAB8];
  sub_27543D684(0, &qword_2809DAF60, MEMORY[0x277D2AAB8], v10);
  OUTLINED_FUNCTION_11_0(v37);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v38);
  v40 = &v96 - v39;
  sub_27543C3E8(0, &qword_2809DBA90, &qword_2809DAF60, v36);
  v42 = v41;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v43);
  v45 = &v96 - v44;
  if ((sub_27543C5EC(*a1, *v25) & 1) == 0)
  {
    return 0;
  }

  v46 = *(v25 + 16);
  if (*(a1 + 16))
  {
    if (!*(v25 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(v25 + 8))
    {
      v46 = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  v97 = v5;
  v47 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  v98 = v25;
  v96 = v47;
  v48 = *(v42 + 48);
  sub_27543B680();
  sub_27543B680();
  OUTLINED_FUNCTION_23_4(v45, 1, v30);
  if (v51)
  {
    OUTLINED_FUNCTION_23_4(&v45[v48], 1, v30);
    if (v51)
    {
      OUTLINED_FUNCTION_2_29();
      sub_27543BA98(v45, v49, v50);
      goto LABEL_18;
    }

LABEL_16:
    v52 = &qword_2809DBA90;
    v53 = &qword_2809DAF60;
    v54 = MEMORY[0x277D2AAB8];
LABEL_27:
    v69 = v54;
    v70 = v45;
LABEL_28:
    sub_27543C800(v70, v52, v53, v69);
    return 0;
  }

  OUTLINED_FUNCTION_5_16();
  sub_27543B680();
  OUTLINED_FUNCTION_23_4(&v45[v48], 1, v30);
  if (v51)
  {
    (*(v109 + 8))(v40, v30);
    goto LABEL_16;
  }

  v55 = v109;
  (*(v109 + 32))(v35, &v45[v48], v30);
  OUTLINED_FUNCTION_8_13();
  sub_27543E444(v56, v57, MEMORY[0x277D2AAC8]);
  v58 = sub_27546E4E0();
  v59 = *(v55 + 8);
  v59(v35, v30);
  v59(v40, v30);
  OUTLINED_FUNCTION_2_29();
  sub_27543BA98(v45, v60, v61);
  if ((v58 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v62 = *(v27 + 48);
  v45 = v107;
  sub_27543B680();
  sub_27543B680();
  v63 = v108;
  OUTLINED_FUNCTION_23_4(v45, 1, v108);
  if (v51)
  {
    OUTLINED_FUNCTION_23_4(&v45[v62], 1, v63);
    v64 = v97;
    if (v51)
    {
      OUTLINED_FUNCTION_1_31();
      sub_27543BA98(v45, v65, v66);
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_4_18();
  v67 = v105;
  sub_27543B680();
  OUTLINED_FUNCTION_23_4(&v45[v62], 1, v63);
  v64 = v97;
  if (v68)
  {
    (*(v106 + 8))(v67, v63);
LABEL_26:
    v52 = &qword_2809DBA88;
    v53 = &qword_2809DAFB0;
    v54 = MEMORY[0x277D2A988];
    goto LABEL_27;
  }

  v72 = v106;
  v73 = &v45[v62];
  v74 = v102;
  (*(v106 + 32))(v102, v73, v63);
  OUTLINED_FUNCTION_6_17();
  sub_27543E444(v75, v76, MEMORY[0x277D2A998]);
  v77 = sub_27546E4E0();
  v78 = *(v72 + 8);
  v78(v74, v63);
  v78(v67, v63);
  OUTLINED_FUNCTION_1_31();
  sub_27543BA98(v45, v79, v80);
  if ((v77 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v81 = *(v103 + 48);
  OUTLINED_FUNCTION_16_4();
  v82 = v104;
  sub_27543B680();
  sub_27543B680();
  OUTLINED_FUNCTION_23_4(v82, 1, v64);
  if (v51)
  {
    OUTLINED_FUNCTION_23_4(v82 + v81, 1, v64);
    if (v51)
    {
      OUTLINED_FUNCTION_0_32();
      sub_27543BA98(v82, v83, v84);
      return 1;
    }

    goto LABEL_39;
  }

  OUTLINED_FUNCTION_3_23();
  v85 = v100;
  sub_27543B680();
  OUTLINED_FUNCTION_23_4(v82 + v81, 1, v64);
  if (v86)
  {
    (*(v101 + 8))(v85, v64);
LABEL_39:
    OUTLINED_FUNCTION_3_23();
    v70 = v82;
    goto LABEL_28;
  }

  v87 = v101;
  v88 = v82 + v81;
  v89 = v99;
  (*(v101 + 32))(v99, v88, v64);
  OUTLINED_FUNCTION_9_9();
  sub_27543E444(v90, v91, MEMORY[0x277D2ACA0]);
  v92 = sub_27546E4E0();
  v93 = *(v87 + 8);
  v93(v89, v64);
  v93(v85, v64);
  OUTLINED_FUNCTION_0_32();
  sub_27543BA98(v82, v94, v95);
  return (v92 & 1) != 0;
}

void sub_27543C3E8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_27543D684(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_27543C460(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_27546E9A0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_27543C4EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      v7 = *(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1);
      if (!v7 && (sub_27546E9A0() & 1) == 0)
      {
        break;
      }

      sub_27543C4EC(v5, v6);
      v9 = v8;

      if ((v9 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_27543C5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_27546E490();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_27543E444(&qword_2809DBB48, MEMORY[0x277CD8320], MEMORY[0x277CD8338]);
    v21 = sub_27546E4E0();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_27543C800(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_27543C3E8(0, a2, a3, a4);
  OUTLINED_FUNCTION_19();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_27543C854(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_22();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_20();
  }

  v3 = (a2 + 40);
  v4 = (result + 40);
  while (v2)
  {
    result = *v4 == *v3 && *(v3 - 1) - *(v4 - 1) == 0.0;
    v5 = result != 1 || v2-- == 1;
    v3 += 2;
    v4 += 2;
    if (v5)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27543C8C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v6 = v5;
        v7 = *v4++;
        *&v6.f64[0] = vmovn_s64(vceqzq_f64(vsubq_f64(v7, v6)));
        v8 = LOBYTE(v6.f64[0]) & BYTE4(v6.f64[0]);
        if ((LOBYTE(v6.f64[0]) & BYTE4(v6.f64[0]) & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_27543C938(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v75 = *(result + 16);
  v80 = 0;
  v65 = a2 + 32;
  v66 = result + 32;
  while (1)
  {
    if (v80 == v75)
    {
      goto LABEL_123;
    }

    v3 = v66 + 40 * v80;
    v4 = v65 + 40 * v80;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v3, *v4), vceqq_f64(*(v3 + 16), *(v4 + 16))))) & 1) == 0)
    {
      return 0;
    }

    v5 = *(v3 + 32);
    v6 = *(v4 + 32);
    v7 = *(v5 + 16);
    if (v7 != *(v6 + 16))
    {
      return 0;
    }

    if (v7 && v5 != v6)
    {
      break;
    }

LABEL_13:
    result = 1;
    if (++v80 == v75)
    {
      return result;
    }
  }

  v9 = 0;
  v73 = v6;
  v74 = *(v3 + 32);
  while (v7)
  {
    result = *(v5 + v9 + 32);
    v10 = *(v5 + v9 + 48);
    v11 = *(v5 + v9 + 56);
    v12 = *(v5 + v9 + 64);
    v13 = *(v5 + v9 + 72);
    v14 = *(v5 + v9 + 80);
    v15 = *(v5 + v9 + 88);
    v16 = *(v5 + v9 + 96);
    v18 = *(v5 + v9 + 104);
    v17 = *(v5 + v9 + 112);
    v19 = *(v5 + v9 + 120);
    v79 = *(v5 + v9 + 136);
    v20 = *(v5 + v9 + 144);
    v82 = *(v5 + v9 + 128);
    v83 = *(v5 + v9 + 152);
    v87 = *(v5 + v9 + 160);
    v77 = *(v5 + v9 + 168);
    v84 = *(v5 + v9 + 176);
    v89 = *(v5 + v9 + 177);
    v21 = *(v6 + v9 + 48);
    v22 = *(v6 + v9 + 56);
    v23 = *(v6 + v9 + 64);
    v24 = *(v6 + v9 + 72);
    v25 = *(v6 + v9 + 80);
    v27 = *(v6 + v9 + 88);
    v26 = *(v6 + v9 + 96);
    v29 = *(v6 + v9 + 104);
    v28 = *(v6 + v9 + 112);
    v30 = *(v6 + v9 + 120);
    v81 = *(v6 + v9 + 128);
    v78 = *(v6 + v9 + 136);
    v31 = *(v6 + v9 + 144);
    v85 = *(v6 + v9 + 152);
    v86 = *(v6 + v9 + 160);
    v76 = *(v6 + v9 + 168);
    v90 = *(v6 + v9 + 176);
    v32 = result == *(v6 + v9 + 32) && *(v5 + v9 + 40) == *(v6 + v9 + 40);
    v88 = *(v6 + v9 + 177);
    if (v32)
    {
      if (v10 != v21 || v11 != v22 || v12 != v23)
      {
        return 0;
      }
    }

    else
    {
      v71 = *(v6 + v9 + 96);
      v72 = *(v6 + v9 + 88);
      v69 = *(v6 + v9 + 112);
      v70 = *(v6 + v9 + 104);
      v67 = *(v5 + v9 + 96);
      v68 = *(v5 + v9 + 88);
      v33 = *(v5 + v9 + 104);
      v34 = *(v5 + v9 + 112);
      v35 = sub_27546E9A0();
      result = 0;
      if ((v35 & 1) == 0)
      {
        return result;
      }

      v36 = v10 == v21 && v11 == v22;
      v37 = v36 && v12 == v23;
      v17 = v34;
      v18 = v33;
      v16 = v67;
      v15 = v68;
      v28 = v69;
      v29 = v70;
      v26 = v71;
      v27 = v72;
      if (!v37)
      {
        return result;
      }
    }

    if (v13 == v24 && v14 == v25)
    {
      if (v15 != v27 || v16 != v26 || v18 != v29 || v17 != v28)
      {
        return 0;
      }
    }

    else
    {
      v41 = v27;
      v42 = v26;
      v43 = v29;
      v44 = v28;
      v45 = v15;
      v46 = v17;
      v47 = sub_27546E9A0();
      result = 0;
      if ((v47 & 1) == 0)
      {
        return result;
      }

      v48 = v45 == v41 && v16 == v42;
      v49 = v48 && v18 == v43;
      if (!v49 || v46 != v44)
      {
        return result;
      }
    }

    if (v20)
    {
      if (v20 == 1)
      {
        if (v31 != 1)
        {
          return 0;
        }

        if (*&v19 == *&v30 && v82 == v81)
        {
          goto LABEL_85;
        }

LABEL_78:
        result = sub_27546E9A0();
        if ((result & 1) == 0)
        {
          return 0;
        }

        goto LABEL_85;
      }

      if (v31 != 2 || v19 != v30)
      {
        return 0;
      }
    }

    else
    {
      if (v31 || v19 != v30)
      {
        return 0;
      }

      result = v82;
      if (v82 != v81 || v79 != v78)
      {
        goto LABEL_78;
      }
    }

LABEL_85:
    if (!v84)
    {
      v58 = v88;
      v57 = v89;
      result = v87;
      if (v90 || v83 != v85)
      {
        return 0;
      }

      v61 = v87 == v86;
      v60 = v76;
      v59 = v77;
LABEL_92:
      if (!v61 || v59 != v60)
      {
        result = sub_27546E9A0();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_103;
    }

    v58 = v88;
    v57 = v89;
    v60 = v86;
    v59 = v87;
    if (v84 == 1)
    {
      result = *&v83;
      if (v90 != 1)
      {
        return 0;
      }

      v61 = *&v83 == *&v85;
      goto LABEL_92;
    }

    if (v90 != 2 || v83 != v85)
    {
      return 0;
    }

LABEL_103:
    if (v57 >> 6)
    {
      if (v57 >> 6 == 1)
      {
        result = 0;
        if ((v58 & 0xC0) != 0x40 || ((v58 ^ v57) & 0x3F) != 0)
        {
          return result;
        }
      }

      else if (v57 == 128)
      {
        if (v58 != 128)
        {
          return 0;
        }
      }

      else if (v58 != 129)
      {
        return 0;
      }
    }

    else if (v58 > 0x3F || v57 != v58)
    {
      return 0;
    }

    v9 += 152;
    --v7;
    v6 = v73;
    v5 = v74;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
  return result;
}

uint64_t sub_27543CD70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 152)
    {
      memcpy(__dst, v3, 0x92uLL);
      memcpy(v9, v3, 0x92uLL);
      memcpy(v11, i, 0x92uLL);
      memcpy(__src, i, 0x92uLL);
      sub_2753EF2CC(__dst, v7);
      sub_2753EF2CC(v11, v7);
      v5 = sub_275425EDC(v9, __src);
      memcpy(v12, __src, 0x92uLL);
      sub_2753EF328(v12);
      memcpy(v13, v9, 0x92uLL);
      sub_2753EF328(v13);
      if (!v5)
      {
        break;
      }

      v3 += 152;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_27543CE80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return OUTLINED_FUNCTION_20();
  }

  v3 = (a2 + 48);
  v4 = (a1 + 48);
  while (1)
  {
    result = 0;
    if (*(v4 - 2) != *(v3 - 2) || *(v3 - 1) - *(v4 - 1) != 0.0)
    {
      break;
    }

    v7 = *v4;
    v4 += 3;
    v6 = v7;
    v8 = *v3;
    v9 = v7 >> 6;
    if (v7 >> 6)
    {
      if (v9 == 1)
      {
        result = 0;
        if ((v8 & 0xC0) != 0x40 || ((v8 ^ v6) & 0x3F) != 0)
        {
          return result;
        }
      }

      else if (v6 == 128)
      {
        if (v8 != 128)
        {
          return 0;
        }
      }

      else if (v8 != 129)
      {
        return 0;
      }
    }

    else if (v8 > 0x3F || v6 != v8)
    {
      return 0;
    }

    v3 += 3;
    if (!--v2)
    {
      return OUTLINED_FUNCTION_20();
    }
  }

  return result;
}

uint64_t sub_27543CF50(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_22();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_20();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27543CFA4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_22();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_20();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = v7 - v6;
    result = v8 == 0.0;
    if (v8 != 0.0 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27543CFFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x616E416F69647561 && a2 == 0xED0000736973796CLL;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C616E4178656C66 && a2 == 0xEC00000073697379;
        if (v8 || (sub_27546E9A0() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000018 && 0x800000027546F3C0 == a2)
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

unint64_t sub_27543D1B4(char a1)
{
  result = 0x7365726E6567;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461727564;
      break;
    case 2:
      result = 0x616E416F69647561;
      break;
    case 3:
      result = 0x6C616E4178656C66;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27543D280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27543CFFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27543D2A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27543D1AC();
  *a1 = result;
  return result;
}

uint64_t sub_27543D2D0(uint64_t a1)
{
  v2 = sub_27543D630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27543D30C(uint64_t a1)
{
  v2 = sub_27543D630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Song.MusicKitAnalysis.encode(to:)(void *a1)
{
  v3 = v1;
  sub_27543DC70(0, &qword_2809DBAB0, MEMORY[0x277D84538]);
  v6 = v5;
  OUTLINED_FUNCTION_8_9();
  v8 = v7;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v9);
  v11 = &v21[-v10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27543D630();
  sub_27546EB00();
  v22 = *v3;
  v21[7] = 0;
  OUTLINED_FUNCTION_7_15();
  sub_27543D684(0, v12, v13, MEMORY[0x277D83940]);
  sub_27543DCD4(&qword_2809DBAC8, &qword_2809DBAD0, MEMORY[0x277CD8328], MEMORY[0x277D83948]);
  OUTLINED_FUNCTION_13_8();
  sub_27546E950();
  if (!v2)
  {
    v21[6] = 1;
    sub_27546E900();
    type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
    v21[5] = 2;
    sub_27546E2E0();
    OUTLINED_FUNCTION_8_13();
    sub_27543E444(v14, v15, MEMORY[0x277D2AAC0]);
    OUTLINED_FUNCTION_13_8();
    sub_27546E910();
    v21[4] = 3;
    sub_27546E1B0();
    OUTLINED_FUNCTION_6_17();
    sub_27543E444(v16, v17, MEMORY[0x277D2A990]);
    OUTLINED_FUNCTION_13_8();
    sub_27546E910();
    v21[3] = 4;
    sub_27546E3B0();
    OUTLINED_FUNCTION_9_9();
    sub_27543E444(v18, v19, MEMORY[0x277D2AC98]);
    OUTLINED_FUNCTION_13_8();
    sub_27546E910();
  }

  return (*(v8 + 8))(v11, v6);
}

unint64_t sub_27543D630()
{
  result = qword_2809DBAB8;
  if (!qword_2809DBAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBAB8);
  }

  return result;
}

void sub_27543D684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t TransitionPlanner.Song.MusicKitAnalysis.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  OUTLINED_FUNCTION_0_32();
  v3 = MEMORY[0x277D83D88];
  sub_27543D684(0, v4, v5, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_11_0(v6);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_9();
  v46 = v8;
  OUTLINED_FUNCTION_1_31();
  sub_27543D684(0, v9, v10, v3);
  OUTLINED_FUNCTION_11_0(v11);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v12);
  v14 = v43 - v13;
  OUTLINED_FUNCTION_2_29();
  sub_27543D684(0, v15, v16, v3);
  OUTLINED_FUNCTION_11_0(v17);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v18);
  sub_27543DC70(0, &qword_2809DBAF0, MEMORY[0x277D844C8]);
  v49 = v19;
  OUTLINED_FUNCTION_8_9();
  v47 = v20;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v21);
  v23 = v43 - v22;
  type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v27 = v26 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27543D630();
  v48 = v23;
  v28 = v50;
  sub_27546EAE0();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v50 = v14;
  OUTLINED_FUNCTION_7_15();
  sub_27543D684(0, v29, v30, MEMORY[0x277D83940]);
  v55 = 0;
  sub_27543DCD4(&qword_2809DBAF8, &qword_2809DBB00, MEMORY[0x277CD8340], MEMORY[0x277D83978]);
  sub_27546E8D0();
  v31 = v56;
  *v27 = v56;
  v54 = 1;
  *(v27 + 8) = sub_27546E870();
  *(v27 + 16) = v32 & 1;
  sub_27546E2E0();
  v53 = 2;
  OUTLINED_FUNCTION_8_13();
  sub_27543E444(v33, v34, MEMORY[0x277D2AAD0]);
  v44 = v27;
  OUTLINED_FUNCTION_19_5();
  v43[1] = v31;
  OUTLINED_FUNCTION_5_16();
  sub_27543BA38();
  sub_27546E1B0();
  v52 = 3;
  OUTLINED_FUNCTION_6_17();
  sub_27543E444(v35, v36, MEMORY[0x277D2A9A0]);
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_4_18();
  v37 = v44;
  sub_27543BA38();
  sub_27546E3B0();
  v51 = 4;
  OUTLINED_FUNCTION_9_9();
  sub_27543E444(v38, v39, MEMORY[0x277D2ACA8]);
  OUTLINED_FUNCTION_19_5();
  v40 = OUTLINED_FUNCTION_10_10();
  v41(v40);
  OUTLINED_FUNCTION_3_23();
  sub_27543BA38();
  sub_2753FFEA4(v37, v45);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_275404FBC(v37);
}

void sub_27543DC70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27543D630();
    v7 = a3(a1, &_s16MusicKitAnalysisV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_27543DCD4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_7_15();
    sub_27543D684(255, v8, v9, MEMORY[0x277D83940]);
    sub_27543E444(a2, MEMORY[0x277CD8320], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27543DDCC(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    sub_27543D684(0, v8, v9, MEMORY[0x277D83D88]);
    OUTLINED_FUNCTION_24_3();
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = a3[6];
    }

    else
    {
      OUTLINED_FUNCTION_1_31();
      sub_27543D684(0, v14, v15, MEMORY[0x277D83D88]);
      OUTLINED_FUNCTION_24_3();
      if (*(v17 + 84) == a2)
      {
        v12 = v16;
        v13 = a3[7];
      }

      else
      {
        OUTLINED_FUNCTION_0_32();
        sub_27543D684(0, v18, v19, MEMORY[0x277D83D88]);
        v12 = v20;
        v13 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v13, a2, v12);
  }
}

void *sub_27543DF48(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    sub_27543D684(0, v8, v9, MEMORY[0x277D83D88]);
    OUTLINED_FUNCTION_24_3();
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = a4[6];
    }

    else
    {
      OUTLINED_FUNCTION_1_31();
      sub_27543D684(0, v14, v15, MEMORY[0x277D83D88]);
      OUTLINED_FUNCTION_24_3();
      if (*(v17 + 84) == a3)
      {
        v12 = v16;
        v13 = a4[7];
      }

      else
      {
        OUTLINED_FUNCTION_0_32();
        sub_27543D684(0, v18, v19, MEMORY[0x277D83D88]);
        v12 = v20;
        v13 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v13, a2, a2, v12);
  }

  return result;
}

void sub_27543E0AC(uint64_t a1)
{
  sub_27543D684(319, &qword_2809DBAC0, MEMORY[0x277CD8320], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_27543B9E8();
    if (v2 <= 0x3F)
    {
      sub_27543D684(319, &qword_2809DAF60, MEMORY[0x277D2AAB8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_27543D684(319, &qword_2809DAFB0, MEMORY[0x277D2A988], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_27543D684(319, &qword_2809DAFC0, MEMORY[0x277D2AC90], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *_s16MusicKitAnalysisV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27543E304);
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

unint64_t sub_27543E340()
{
  result = qword_2809DBB30;
  if (!qword_2809DBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB30);
  }

  return result;
}

unint64_t sub_27543E398()
{
  result = qword_2809DBB38;
  if (!qword_2809DBB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB38);
  }

  return result;
}

unint64_t sub_27543E3F0()
{
  result = qword_2809DBB40;
  if (!qword_2809DBB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB40);
  }

  return result;
}

uint64_t sub_27543E444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *OUTLINED_FUNCTION_19_5()
{

  return sub_27546E890();
}

unint64_t sub_27543E648()
{
  result = qword_2809DBB50;
  if (!qword_2809DBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB50);
  }

  return result;
}

unint64_t sub_27543E6A0()
{
  result = qword_2809DBB58;
  if (!qword_2809DBB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB58);
  }

  return result;
}

unint64_t sub_27543E7B0()
{
  result = qword_2809DBB60;
  if (!qword_2809DBB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB60);
  }

  return result;
}

unint64_t sub_27543E808()
{
  result = qword_2809DBB68;
  if (!qword_2809DBB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB68);
  }

  return result;
}

uint64_t sub_27543E908@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = TransitionPlanner.Song.MusicKitAnalysis.Options.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_27543E948@<X0>(uint64_t *a1@<X8>)
{
  result = TransitionPlanner.Song.MusicKitAnalysis.Options.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27543E984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_27546E9A0();
  }
}

uint64_t sub_27543E9D0(char a1)
{
  OUTLINED_FUNCTION_26_2();
  if (v1 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_27546E9A0();
  }

  swift_bridgeObjectRelease_n();
  return v3 & 1;
}

uint64_t sub_27543EA4C(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xED0000656D614E72;
  }

  OUTLINED_FUNCTION_26_2();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_19_6(v2);
  }

  return v8 & 1;
}

uint64_t sub_27543EAE8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 6581861;
  }

  else
  {
    v3 = 0x7472617473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (a2)
  {
    v5 = 6581861;
  }

  else
  {
    v5 = 0x7472617473;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_19_6(v3);
  }

  return v8 & 1;
}

uint64_t sub_27543EB70(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000736E6FLL;
  }

  else
  {
    v1 = 0xE900000000000074;
  }

  OUTLINED_FUNCTION_26_2();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_19_6(v2);
  }

  return v8 & 1;
}

uint64_t sub_27543EC0C(char a1)
{
  if (a1)
  {
    v1 = 0xEF73646E6F636553;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_26_2();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_19_6(v2);
  }

  return v8 & 1;
}

uint64_t sub_27543ECA8(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000644972;
  v3 = 0x6574656D61726170;
  v4 = a1;
  v5 = 0x6574656D61726170;
  v6 = 0xEB00000000644972;
  switch(v4)
  {
    case 1:
      v5 = 0x6D69547472617473;
      v6 = 0xE900000000000065;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v5 = 0x656D6954646E65;
      break;
    case 3:
      v5 = 0x6C61567472617473;
      v6 = 0xEA00000000006575;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v5 = 0x65756C6156646E65;
      break;
    case 5:
      v5 = 0x6C6F707265746E69;
      v6 = 0xED00006E6F697461;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6D69547472617473;
      v2 = 0xE900000000000065;
      break;
    case 2:
      v2 = 0xE700000000000000;
      v3 = 0x656D6954646E65;
      break;
    case 3:
      v3 = 0x6C61567472617473;
      v2 = 0xEA00000000006575;
      break;
    case 4:
      v2 = 0xE800000000000000;
      v3 = 0x65756C6156646E65;
      break;
    case 5:
      v3 = 0x6C6F707265746E69;
      v2 = 0xED00006E6F697461;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_27546E9A0();
  }

  return v8 & 1;
}

uint64_t sub_27543EEB4(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0xE600000000000000;
      v4 = 0x74657366666FLL;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v4 = 0x6E6F697461727564;
      break;
    case 3:
      v4 = 0x7463757274736E69;
      v3 = 0xEC000000736E6F69;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  switch(a2)
  {
    case 1:
      v5 = 0xE600000000000000;
      v6 = 0x74657366666FLL;
      break;
    case 2:
      v5 = 0xE800000000000000;
      v6 = 0x6E6F697461727564;
      break;
    case 3:
      v6 = 0x7463757274736E69;
      v5 = 0xEC000000736E6F69;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_19_6(v4);
  }

  return v8 & 1;
}

double TransitionPlanner.Song.id.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t TransitionPlanner.Song.analysis.getter()
{
  type metadata accessor for TransitionPlanner.Song(0);
  OUTLINED_FUNCTION_3_24();
  return sub_275440AB8();
}

uint64_t type metadata accessor for TransitionPlanner.Song(uint64_t a1)
{
  result = qword_2809DBBD8;
  if (!qword_2809DBBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 TransitionPlanner.Song.context.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TransitionPlanner.Song(0) + 28));
  v4 = v3[1].n128_u8[0];
  v5 = v3[1].n128_u8[1];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  a1[1].n128_u8[1] = v5;
  return result;
}

void TransitionPlanner.Song.init(id:duration:analysis:context:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = *a5;
  v12 = a5[1];
  v13 = *(a5 + 16);
  v14 = *(a5 + 17);
  v24[0] = *a1;
  v24[1] = v9;
  v21[0] = v11;
  v21[1] = v12;
  v22 = v13;
  v20 = v14;
  v23 = v14;
  v15 = a3 & 1;
  v25 = a2;
  sub_27543F240(v24, a2, a3 & 1, a4, v21);
  if (v6)
  {
    OUTLINED_FUNCTION_1_32();
    sub_275440D5C(a4, v16, v17);
  }

  else
  {
    v19 = type metadata accessor for TransitionPlanner.Song(0);
    OUTLINED_FUNCTION_3_24();
    sub_275440B18();
    *a6 = v10;
    *(a6 + 8) = v9;
    *(a6 + 16) = v25;
    *(a6 + 24) = v15;
    v18 = a6 + *(v19 + 28);
    *v18 = v11;
    *(v18 + 8) = v12;
    *(v18 + 16) = v13;
    *(v18 + 17) = v20;
  }
}

void sub_27543F240(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_2754409F4(0, &qword_2809DB048, type metadata accessor for TransitionPlanner.Song.Analysis, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = *a5;
  v16 = *(a5 + 16);
  v17 = *(a5 + 17);
  if (!sub_275432624(v13, v14))
  {
    sub_275408F98();
    swift_allocError();
    v21 = 1;
    goto LABEL_18;
  }

  if ((a3 & 1) == 0)
  {
    if (*&a2 <= 0.0)
    {
      goto LABEL_17;
    }

    if ((v17 & 1) == 0 && (v16 & 1) == 0 && (v15 < 0.0 || v15 > *&a2))
    {
      sub_275408F98();
      swift_allocError();
      v21 = 8;
      goto LABEL_18;
    }
  }

  sub_275440B78(a4, a2, a3 & 1);
  if ((v18 & 0x100) != 0)
  {
LABEL_17:
    sub_275408F98();
    swift_allocError();
    v21 = 2;
    goto LABEL_18;
  }

  sub_275440AB8();
  v19 = type metadata accessor for TransitionPlanner.Song.Analysis(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v19) == 1)
  {
    return;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_275443F60(v12, type metadata accessor for TransitionPlanner.Song.Analysis);
    return;
  }

  sub_275408F98();
  swift_allocError();
  v21 = 3;
LABEL_18:
  *v20 = v21;
  swift_willThrow();
}

uint64_t sub_27543F484(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736973796C616E61 && a2 == 0xE800000000000000;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_27543F5E4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461727564;
      break;
    case 2:
      result = 0x736973796C616E61;
      break;
    case 3:
      result = 0x747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27543F674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27543F484(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27543F69C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27543F5DC();
  *a1 = result;
  return result;
}

uint64_t sub_27543F6C4(uint64_t a1)
{
  v2 = sub_27543F9A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27543F700(uint64_t a1)
{
  v2 = sub_27543F9A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Song.encode(to:)(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_12_9();
  sub_275444268(0, v4, v5, &_s4SongV10CodingKeysON, MEMORY[0x277D84538]);
  v7 = v6;
  OUTLINED_FUNCTION_8_9();
  v9 = v8;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27543F9A8();
  sub_27546EB00();
  v13 = v2[1];
  *&v22 = *v2;
  *(&v22 + 1) = v13;
  v25 = 0;
  v14 = sub_27543F9FC();

  OUTLINED_FUNCTION_27_2();
  sub_27546E950();
  if (v14)
  {
  }

  else
  {

    LOBYTE(v22) = 1;
    OUTLINED_FUNCTION_27_2();
    sub_27546E900();
    v15 = type metadata accessor for TransitionPlanner.Song(0);
    LOBYTE(v22) = 2;
    type metadata accessor for TransitionPlanner.Song.Analysis(0);
    OUTLINED_FUNCTION_14_5();
    sub_275440DC4(v16, v17, &protocol conformance descriptor for TransitionPlanner.Song.Analysis);
    OUTLINED_FUNCTION_27_2();
    sub_27546E910();
    v18 = v2 + *(v15 + 28);
    v19 = v18[16];
    v20 = v18[17];
    v22 = *v18;
    v23 = v19;
    v24 = v20;
    v25 = 3;
    sub_27543FA50();
    OUTLINED_FUNCTION_27_2();
    sub_27546E910();
  }

  return (*(v9 + 8))(v12, v7);
}

unint64_t sub_27543F9A8()
{
  result = qword_2809DBB78;
  if (!qword_2809DBB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB78);
  }

  return result;
}

unint64_t sub_27543F9FC()
{
  result = qword_2809DBB80;
  if (!qword_2809DBB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB80);
  }

  return result;
}

unint64_t sub_27543FA50()
{
  result = qword_2809DBB90;
  if (!qword_2809DBB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB90);
  }

  return result;
}

void TransitionPlanner.Song.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_32();
  sub_2754409F4(0, v3, v4, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_11_0(v5);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_9();
  sub_275444268(0, v7, v8, &_s4SongV10CodingKeysON, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for TransitionPlanner.Song(0);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v14 = v13 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27543F9A8();
  sub_27546EAE0();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_27543FE78();
    OUTLINED_FUNCTION_24_4();
    sub_27546E8D0();
    *v14 = v23;
    OUTLINED_FUNCTION_24_4();
    *(v14 + 16) = sub_27546E870();
    *(v14 + 24) = v15 & 1;
    type metadata accessor for TransitionPlanner.Song.Analysis(0);
    LOBYTE(v23) = 2;
    OUTLINED_FUNCTION_14_5();
    sub_275440DC4(v16, v17, &protocol conformance descriptor for TransitionPlanner.Song.Analysis);
    OUTLINED_FUNCTION_24_4();
    sub_27546E890();
    OUTLINED_FUNCTION_3_24();
    sub_275440B18();
    sub_27543FECC();
    OUTLINED_FUNCTION_24_4();
    sub_27546E890();
    v18 = OUTLINED_FUNCTION_20_4();
    v19(v18);
    v20 = v14 + *(v10 + 28);
    *v20 = v23;
    *(v20 + 16) = v24;
    *(v20 + 17) = v25;
    sub_275440CFC(v14, a2, type metadata accessor for TransitionPlanner.Song);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_275443F60(v14, type metadata accessor for TransitionPlanner.Song);
  }
}

unint64_t sub_27543FE78()
{
  result = qword_2809DBBA0;
  if (!qword_2809DBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBBA0);
  }

  return result;
}

unint64_t sub_27543FECC()
{
  result = qword_2809DBBB0;
  if (!qword_2809DBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBBB0);
  }

  return result;
}

void TransitionPlanner.Song.init(musicKitSong:options:context:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v134 = a4;
  OUTLINED_FUNCTION_1_32();
  sub_2754409F4(0, v7, v8, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_11_0(v9);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v130 - v11;
  sub_27543B948(0);
  v14 = v13;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v147 = v17 - v16;
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_28_2(v18, v19, v20);
  OUTLINED_FUNCTION_11_0(v21);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v130 - v23;
  OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_28_2(v25, v26, v27);
  OUTLINED_FUNCTION_11_0(v28);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v29);
  v151 = &v130 - v30;
  v137 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18();
  v34 = (v33 - v32);
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_28_2(v35, v36, v37);
  v39 = OUTLINED_FUNCTION_11_0(v38);
  v40 = MEMORY[0x28223BE20](v39);
  v150 = &v130 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v145 = &v130 - v43;
  MEMORY[0x28223BE20](v42);
  v152 = &v130 - v44;
  v136 = sub_27546E490();
  OUTLINED_FUNCTION_8_9();
  v156 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_18();
  v135 = v48 - v47;
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_28_2(v49, v50, v51);
  OUTLINED_FUNCTION_11_0(v52);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v53);
  v55 = &v130 - v54;
  v56 = *a2;
  v57 = *a3;
  v140 = a3[1];
  v139 = *(a3 + 16);
  v138 = *(a3 + 17);
  sub_27546E440();
  sub_275440A58(0);
  v59 = v58;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, 1, v58);
  v148 = v12;
  v142 = v34;
  v141 = v57;
  v146 = v14;
  v144 = v56;
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_11_11();
    sub_275440D5C(v55, v61, v62);
    v149 = MEMORY[0x277D84F90];
    v63 = v152;
  }

  else
  {
    v132 = v24;
    v133 = a1;
    v64 = sub_275440DC4(&qword_2809DBBC8, sub_275440A58, MEMORY[0x277CD7CB8]);
    v65 = sub_27546E680();
    if (v65)
    {
      v66 = v65;
      v160[0] = MEMORY[0x277D84F90];
      sub_27544135C(0, v65 & ~(v65 >> 63), 0);
      v149 = v160[0];
      v131 = v55;
      v67 = v59;
      v155 = v64;
      sub_27546E670();
      if (v66 < 0)
      {
        __break(1u);
        return;
      }

      v153 = v156 + 32;
      v154 = (v156 + 16);
      v68 = v136;
      v69 = v135;
      v70 = v131;
      v71 = v149;
      do
      {
        v72 = sub_27546E6A0();
        (*v154)(v69);
        v72(v157, 0);
        v160[0] = v71;
        v74 = *(v71 + 16);
        v73 = *(v71 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_27544135C((v73 > 1), v74 + 1, 1);
          v71 = v160[0];
        }

        *(v71 + 16) = v74 + 1;
        (*(v156 + 32))(v71 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v74, v69, v68);
        sub_27546E690();
        --v66;
      }

      while (v66);
      v149 = v71;
    }

    else
    {
      v149 = MEMORY[0x277D84F90];
      v70 = v55;
      v67 = v59;
    }

    (*(*(v67 - 8) + 8))(v70, v67);
    a1 = v133;
    v63 = v152;
    v24 = v132;
  }

  v156 = sub_27546E450();
  v76 = v75;
  v77 = v145;
  if (v144)
  {
    sub_27546E420();
    v78 = sub_27546E3B0();
    if (__swift_getEnumTagSinglePayload(v77, 1, v78) != 1)
    {
      (*(*(v78 - 8) + 32))(v63, v77, v78);
      v82 = v63;
      v83 = 0;
      v81 = v78;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_2_30();
    sub_275440D5C(v77, v79, v80);
  }

  v81 = sub_27546E3B0();
  v82 = v63;
  v83 = 1;
LABEL_17:
  __swift_storeEnumTagSinglePayload(v82, v83, 1, v81);
  sub_27546E410();
  sub_27546E400();
  sub_275440AB8();
  v84 = v147;
  v85 = *(v146 + 48);
  sub_275440AB8();
  if (v76)
  {
    v86 = sub_27546E3B0();
    v87 = __swift_getEnumTagSinglePayload(v84 + v85, 1, v86);
    v88 = v148;
    v89 = v156;
    if (v87 != 1)
    {
      OUTLINED_FUNCTION_2_30();
      sub_275440D5C(v84 + v85, v90, v91);
    }
  }

  else
  {
    v89 = v156;
    v92 = *&v156;
    v93 = sub_27546E3B0();
    v94 = __swift_getEnumTagSinglePayload(v84 + v85, 1, v93);
    v88 = v148;
    if (v94 != 1)
    {
      OUTLINED_FUNCTION_2_30();
      sub_275440D5C(v84 + v85, v95, v96);
    }

    if (v92 <= 0.0)
    {

      sub_275408F98();
      swift_allocError();
      *v123 = 4;
      swift_willThrow();
      sub_27546E460();
      OUTLINED_FUNCTION_19();
      (*(v124 + 8))(a1);
      v125 = MEMORY[0x277D2AC90];
      sub_275440D5C(v150, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
      OUTLINED_FUNCTION_15_7();
      sub_275440D5C(v24, v126, v127);
      OUTLINED_FUNCTION_13_9();
      sub_275440D5C(v151, v128, v129);
      sub_275440D5C(v152, &qword_2809DAFC0, v125);
      return;
    }
  }

  v97 = v142;
  *v142 = v149;
  *(v97 + 8) = v89;
  v98 = v76 & 1;
  *(v97 + 16) = v76 & 1;
  sub_275440B18();
  sub_275440B18();
  sub_275440B18();
  v99 = sub_27546E430();
  v101 = v100;
  sub_275440CFC(v97, v88, type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis);
  v102 = v88;
  v103 = type metadata accessor for TransitionPlanner.Song.Analysis(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v102, 0, 1, v103);
  v154 = v99;
  v155 = v101;
  v160[0] = v99;
  v160[1] = v101;
  v104 = v141;
  v105 = v140;
  v157[0] = v141;
  v157[1] = v140;
  v106 = v139;
  v158 = v139;
  v107 = v138;
  v159 = v138;
  v108 = v143;
  sub_27543F240(v160, v89, v98, v102, v157);
  sub_27546E460();
  OUTLINED_FUNCTION_19();
  (*(v109 + 8))(a1);
  if (v108)
  {
    OUTLINED_FUNCTION_1_32();
    sub_275440D5C(v102, v110, v111);
    OUTLINED_FUNCTION_6_18();
    sub_275443F60(v97, v112);
    OUTLINED_FUNCTION_2_30();
    sub_275440D5C(v152, v113, v114);
  }

  else
  {
    OUTLINED_FUNCTION_6_18();
    sub_275443F60(v97, v115);
    OUTLINED_FUNCTION_2_30();
    sub_275440D5C(v152, v116, v117);
    v118 = v104;
    v119 = type metadata accessor for TransitionPlanner.Song(0);
    OUTLINED_FUNCTION_3_24();
    v120 = v134;
    sub_275440B18();
    v121 = v155;
    *v120 = v154;
    *(v120 + 8) = v121;
    *(v120 + 16) = v156;
    *(v120 + 24) = v98;
    v122 = v120 + *(v119 + 28);
    *v122 = v118;
    *(v122 + 8) = v105;
    *(v122 + 16) = v106;
    *(v122 + 17) = v107;
  }
}

void sub_2754409F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_275440A58(uint64_t a1)
{
  if (!qword_2809DBBC0)
  {
    sub_27546E490();
    v1 = sub_27546E3F0();
    if (!v2)
    {
      atomic_store(v1, &qword_2809DBBC0);
    }
  }
}

uint64_t sub_275440AB8()
{
  v2 = OUTLINED_FUNCTION_10_11();
  sub_2754409F4(v2, v3, v4, v5);
  OUTLINED_FUNCTION_19();
  (*(v6 + 16))(v0, v1);
  return v0;
}

uint64_t sub_275440B18()
{
  v2 = OUTLINED_FUNCTION_10_11();
  sub_2754409F4(v2, v3, v4, v5);
  OUTLINED_FUNCTION_19();
  (*(v6 + 32))(v0, v1);
  return v0;
}

uint64_t sub_275440B78(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis(0);
  v6 = OUTLINED_FUNCTION_11_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  sub_2754409F4(0, &qword_2809DB048, type metadata accessor for TransitionPlanner.Song.Analysis, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_11_0(v10);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  sub_275440AB8();
  v14 = type metadata accessor for TransitionPlanner.Song.Analysis(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1 || swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2;
    v16 = a3;
  }

  else
  {
    sub_275408E6C(v13, v9);
    v15 = *(v9 + 8);
    v16 = *(v9 + 16);
    OUTLINED_FUNCTION_6_18();
    sub_275443F60(v9, v17);
  }

  if (v16)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t sub_275440CFC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_19();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_275440D5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2754409F4(0, a2, a3, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_19();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_275440DC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_275440E0C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_275440E2C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_275440E4C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_275440E6C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_17(a3, result, 104 * a2);
  }

  return result;
}

char *sub_275440E98(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_275440EC0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_275440EE4(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_17(a3, result, a2);
  }

  return result;
}

void sub_275440F08(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (sub_27546E490(), OUTLINED_FUNCTION_19(), a1 + *(v6 + 72) * a2 <= a3))
  {
    sub_27546E490();
    v8 = OUTLINED_FUNCTION_25_1();

    MEMORY[0x2821FE828](v8);
  }

  else if (a3 != a1)
  {
    v7 = OUTLINED_FUNCTION_25_1();

    MEMORY[0x2821FE820](v7);
  }
}

char *sub_275440FBC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[176 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_17(a3, result, 176 * a2);
  }

  return result;
}

char *sub_275440FE8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_275441008(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[256 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_275441028(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_275441050(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_17(a3, result, 88 * a2);
  }

  return result;
}

char *sub_27544107C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275441B34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544109C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275441C54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2754410BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275441D88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544110C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275441FAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544112C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2754420C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544114C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2754421B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544116C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2754422D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544118C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2754423E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2754411AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2754424DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_275441294(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2754426DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544131C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27544282C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544133C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275442A4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_27544135C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275442B7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_275441380()
{
  result = qword_2809DBBD0;
  if (!qword_2809DBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBBD0);
  }

  return result;
}

uint64_t sub_2754413E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_1_32();
    sub_2754409F4(0, v8, v9, MEMORY[0x277D83D88]);
    v11 = v10;
    v12 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v12, a2, v11);
  }
}

uint64_t sub_2754414A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_1_32();
    sub_2754409F4(0, v7, v8, MEMORY[0x277D83D88]);
    v10 = v9;
    v11 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  return result;
}

void sub_275441544(uint64_t a1)
{
  sub_2754442D0(319, &qword_2809DBA78, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2754409F4(319, &qword_2809DB048, type metadata accessor for TransitionPlanner.Song.Analysis, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2754442D0(319, &qword_2809DBBE8, &type metadata for TransitionPlanner.Song.Context, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *_s4SongV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275441734);
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

unint64_t sub_275441770()
{
  result = qword_2809DBBF0;
  if (!qword_2809DBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBBF0);
  }

  return result;
}

unint64_t sub_2754417C8()
{
  result = qword_2809DBBF8;
  if (!qword_2809DBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBBF8);
  }

  return result;
}

unint64_t sub_275441820()
{
  result = qword_2809DBC00;
  if (!qword_2809DBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBC00);
  }

  return result;
}

char *sub_2754418A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275442D54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2754418F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275442F6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441914(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27544309C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544199C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2754431B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2754419BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2754432E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2754419DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275443400(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2754419FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275443550(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441A1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275443638(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441A3C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27544372C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441A94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275443978(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441AB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275443A90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441AD4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275443B84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441AF4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275443C9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441B14(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275443DC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441B34(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DADC0, &type metadata for Transition.ContinuousSchedule.Automation, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275441C54(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBC60, &type metadata for Transition.ContinuousSchedule.AutomationRamp, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_275441D88(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBC30, &type metadata for Transition.SteppedSchedule.Automation, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[144 * v8] <= v12)
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_275441EB4(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_25();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_10_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_22();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    v11 = OUTLINED_FUNCTION_21_2();
    sub_2754442D0(v11, v12, v14, v13);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    *(v15 + 2) = v9;
    *(v15 + 3) = 2 * ((v16 - 32) / 8);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v17 = v15 + 32;
  v18 = a4 + 32;
  if (a1)
  {
    if (v15 != a4 || &v18[8 * v9] <= v17)
    {
      memmove(v17, v18, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v9);
  }
}

char *sub_275441FAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBCB0, &_s27LinearRegressionObservationVN, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_2754420C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_275444098(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[2 * v8] <= v12)
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

char *sub_2754421B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBCA0, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_2754422D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DAE28, &_s14LoudnessSampleVN, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_2754423E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_275443FB8(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_2754424DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_275444028(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void sub_2754425D8(char a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_25();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_10_7();
      if (v10)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_22();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 2);
  if (v9 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    v14 = OUTLINED_FUNCTION_21_2();
    sub_2754442D0(v14, v15, a6, v16);
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_23_5(v18);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v19 = v17 + 32;
  v20 = a4 + 32;
  if (a1)
  {
    if (v17 != a4 || &v20[80 * v12] <= v19)
    {
      memmove(v19, v20, 80 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_2754426DC(void *result, int64_t a2, char a3, void *a4)
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
    sub_2754409F4(0, &qword_2809DBC38, sub_2753FC38C, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2753FC38C(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_27544282C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DB5A0, &_s22VocalActivityMapRegionVN, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}