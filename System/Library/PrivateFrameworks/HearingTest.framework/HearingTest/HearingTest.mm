uint64_t sub_25207FC24(uint64_t a1, id *a2)
{
  result = sub_252141B7C();
  *a2 = 0;
  return result;
}

uint64_t sub_25207FC9C(uint64_t a1, id *a2)
{
  v3 = sub_252141B8C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25207FD1C@<X0>(uint64_t *a1@<X8>)
{
  sub_252141B9C();
  v2 = sub_252141B6C();

  *a1 = v2;
  return result;
}

uint64_t sub_25207FD60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252141B9C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25207FE30(uint64_t a1, uint64_t a2)
{
  sub_25214255C();
  swift_getWitnessTable();
  sub_25214191C();
  return sub_25214258C();
}

BOOL sub_25207FEDC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_25207FF68@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_25207FF84(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_2520800BC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_252141B6C();

  *a2 = v3;
  return result;
}

uint64_t sub_252080104(uint64_t a1)
{
  v2 = sub_252080208(&qword_27F4CD838, type metadata accessor for Name, &unk_2521437B8);
  v3 = sub_252080208(&qword_27F4CD840, type metadata accessor for Name, &unk_252143758);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_252080208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_252080298()
{
  v0 = sub_252141B9C();
  v1 = MEMORY[0x253098DC0](v0);

  return v1;
}

uint64_t sub_2520802D4(uint64_t a1)
{
  sub_252141B9C();
  sub_252141BEC();
}

uint64_t sub_252080328()
{
  sub_252141B9C();
  sub_25214255C();
  sub_252141BEC();
  v0 = sub_25214258C();

  return v0;
}

uint64_t sub_2520803A0(void *a1, uint64_t *a2)
{
  v2 = sub_252141B9C();
  v4 = v3;
  if (v2 == sub_252141B9C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25214247C();
  }

  return v7 & 1;
}

void sub_25208051C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

char *sub_2520805A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = 0;
  v12 = MEMORY[0x277D84F90];
  v4 = a1 + 32;
  do
  {
    v5 = v3 + 1;
    result = sub_252099194(0, v1, 0, v2);
    v7 = result;
    v8 = *(result + 2);
    v9 = v1;
    do
    {
      v10 = *(v7 + 24);
      v11 = v8 + 1;
      if (v8 >= v10 >> 1)
      {
        result = sub_252099194((v10 > 1), v8 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v11;
      *(v7 + 8 * v8++ + 32) = 0;
      --v9;
    }

    while (v9);
    if (v3 > v11 - 1)
    {
      __break(1u);
      goto LABEL_13;
    }

    *(v7 + 32 + 8 * v3) = *(v4 + 8 * v3);
    result = sub_2520806CC(v7);
    ++v3;
  }

  while (v5 != v1);
  if ((v1 * v1) >> 64 != (v1 * v1) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = v12;
  if (*(v12 + 16) == v1 * v1)
  {
    return v2;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_2520806CC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_252099194(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2520807B8@<X0>(uint64_t result@<X0>, unint64_t a2@<X8>)
{
  v4 = *(result + 16);
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    goto LABEL_34;
  }

  v3 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v8 = *(v5 + 24) >> 1, v8 < v7))
  {
    if (v6 <= v7)
    {
      v9 = v6 + v4;
    }

    else
    {
      v9 = v6;
    }

    result = sub_252099194(result, v9, 1, v5);
    v5 = result;
    v8 = *(result + 24) >> 1;
  }

  v6 = *(v5 + 16);
  a2 = v8 - v6;
  if (v8 != v6)
  {
    if (a2 >= 1)
    {
      v10 = *(v3 + 16);
      if (v10)
      {
        v11 = (v5 + 8 * v6 + 32);
        v12 = v8 + ~v6;
        if (v10 - 1 < v12)
        {
          v12 = v10 - 1;
        }

        v13 = v12 + 1;
        if (v13 > 6 && (v14 = 8 * v6 + v5, (v14 - v3) >= 0x20))
        {
          v17 = v13 & 3;
          if ((v13 & 3) == 0)
          {
            v17 = 4;
          }

          v15 = v13 - v17;
          v16 = v15 + 1;
          v11 += v15;
          v18 = (v3 + 48);
          v19 = (v14 + 48);
          v20 = v15;
          do
          {
            v21 = *v18;
            *(v19 - 1) = *(v18 - 1);
            *v19 = v21;
            v18 += 2;
            v19 += 2;
            v20 -= 4;
          }

          while (v20);
        }

        else
        {
          v15 = 0;
          v16 = 1;
        }

        while (1)
        {
          *v11 = *(v3 + 32 + 8 * v15);
          if (a2 == v16)
          {
            break;
          }

          v15 = v16;
          ++v11;
          if (v10 + 1 == ++v16)
          {
            goto LABEL_26;
          }
        }

        v10 = a2;
      }

LABEL_26:
      if (v10 >= v4)
      {
        if (v10 > 0)
        {
          v22 = __OFADD__(v6, v10);
          v6 += v10;
          if (v22)
          {
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          *(v5 + 16) = v6;
        }

        goto LABEL_30;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v4)
  {
    goto LABEL_35;
  }

  v10 = 0;
LABEL_30:
  if (v10 != a2)
  {
LABEL_31:

    goto LABEL_32;
  }

LABEL_36:
  v23 = *(v3 + 16);
  if (a2 == v23)
  {
    goto LABEL_31;
  }

  if (a2 >= v23)
  {
LABEL_54:
    __break(1u);
    return result;
  }

  v24 = v3 + 32;
  v25 = a2 + 1;
  v26 = *(v3 + 32 + 8 * a2);
LABEL_40:
  while (1)
  {
    v27 = *(v5 + 24);
    v28 = v27 >> 1;
    if ((v27 >> 1) < v6 + 1)
    {
      break;
    }

    v29 = v28 - v6;
    if (v28 > v6)
    {
      goto LABEL_42;
    }

LABEL_39:
    *(v5 + 16) = v6;
  }

  v31 = v5;
  v34 = v24;
  v32 = v25;
  v33 = v26;
  result = sub_252099194((v27 > 1), v6 + 1, 1, v31);
  v26 = v33;
  v25 = v32;
  v24 = v34;
  v5 = result;
  v28 = *(result + 24) >> 1;
  v29 = v28 - v6;
  if (v28 <= v6)
  {
    goto LABEL_39;
  }

LABEL_42:
  v30 = 0;
  while (1)
  {
    *(v5 + 8 * v6 + 32 + 8 * v30) = v26;
    if (v23 - v25 == v30)
    {
      break;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    if (v25 + v30 >= *(v3 + 16))
    {
      goto LABEL_53;
    }

    v26 = *(v24 + 8 * v25 + 8 * v30++);
    if (v29 == v30)
    {
      v25 += v30;
      v6 = v28;
      *(v5 + 16) = v28;
      goto LABEL_40;
    }
  }

  *(v5 + 16) = v6 + v30 + 1;
LABEL_32:
  *v2 = v5;
  return result;
}

uint64_t HTAudiometry.testEnded.getter()
{
  v1 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_252080AA0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_252080BC4(sub_2520A3008, &block_descriptor_1303);
  return sub_252080BC4(sub_2520A2ECC, &block_descriptor_1269);
}

uint64_t HTAudiometry.testEnded.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_252080BC4(sub_2520A3008, &block_descriptor_1303);
  return sub_252080BC4(sub_2520A2ECC, &block_descriptor_1269);
}

uint64_t sub_252080BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_252141A4C();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_252141A8C();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25209D56C();
  v10 = sub_252141FFC();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_252141A6C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0, MEMORY[0x277D83970]);
  sub_25214218C();
  MEMORY[0x2530991B0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

uint64_t (*HTAudiometry.testEnded.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_252080F00;
}

uint64_t sub_252080F00(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_252080BC4(sub_2520A3008, &block_descriptor_1303);
    return sub_252080BC4(sub_2520A2ECC, &block_descriptor_1269);
  }

  return result;
}

uint64_t HTAudiometry.previousAudiogram.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_previousAudiogram;
  swift_beginAccess();
  *(v1 + v3) = a1;

  result = *(v1 + v3);
  if (*(result + 16))
  {

    v6 = sub_25208F534(v5);
    v7 = sub_25209D27C(*(v1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_allFrequencies), v6);

    if (v7)
    {
      return sub_252094B04();
    }
  }

  return result;
}

uint64_t (*HTAudiometry.previousAudiogram.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_previousAudiogram;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_2520810D8;
}

void sub_2520810D8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (*(*(v4 + v3[4]) + 16))
    {

      v6 = sub_25208F534(v5);
      v7 = sub_25209D27C(*(v4 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_allFrequencies), v6);

      if (v7)
      {
        sub_252094B04();
      }
    }
  }

  free(v3);
}

uint64_t HTAudiometry.state.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v8;
  v12 = *(a1 + 64);
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  sub_252081908(a1);
  return sub_25209D35C(v11);
}

void *_s11HearingTest12HTAudiometryC5stateAA09HTHearingB5StateVvg_0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_channel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  result = sub_25214200C();
  v5 = v67;
  if (v67 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v58 = a1;
  v6 = v68;
  v7 = swift_allocObject();
  v7[2] = v66;
  v7[3] = v5;
  v7[4] = v6;
  v8 = swift_allocObject();
  v55 = v3;
  *(v8 + 16) = v3;
  v9 = swift_allocObject();
  v9[2] = sub_2520A2C64;
  v9[3] = v8;
  v9[4] = 0;
  v9[5] = v5;
  v9[6] = sub_2520A2C48;
  v9[7] = v7;
  MEMORY[0x28223BE20](v9);
  result = sub_25214200C();
  v10 = v67;
  if (v67 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = v68;
  v12 = swift_allocObject();
  v12[2] = v66;
  v12[3] = v10;
  v12[4] = v11;
  v13 = swift_allocObject();
  v13[2] = sub_25209446C;
  v13[3] = 0;
  v13[4] = 0;
  v13[5] = v10;
  v13[6] = sub_2520A3750;
  v13[7] = v12;
  v66 = 0;
  v67 = v5;
  v68 = sub_2520A2C70;
  v69 = v9;
  v70 = 0;
  v71 = v10;
  v72 = sub_2520A2D28;
  v73 = v13;

  v14 = sub_252094570(&v66);

  MEMORY[0x28223BE20](v15);
  result = sub_25214200C();
  v16 = *(&v62 + 1);
  if ((*(&v62 + 1) & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  v57 = v14;
  v60 = v1;
  v17 = v63;
  v18 = swift_allocObject();
  v18[2] = v62;
  v18[3] = v16;
  v18[4] = v17;
  v19 = sub_2521124C0(0, v16, sub_2520A3750);

  v20 = *(v19 + 2);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v65 = MEMORY[0x277D84F90];
    result = sub_25209B254(0, v20, 0);
    v22 = 0;
    v23 = v65;
    v24 = v19 + 48;
    v25 = v55;
    while (v22 < *(v19 + 2))
    {
      v61[0] = *(v24 - 1);
      v61[1] = *v24;
      v26 = v23;
      result = sub_25209497C(v61, v25, &v62);
      v23 = v26;
      v27 = v62;
      v28 = v63;
      v29 = *(&v63 + 1);
      v30 = v64;
      v65 = v26;
      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      if (v32 >= v31 >> 1)
      {
        v54 = v62;
        result = sub_25209B254((v31 > 1), v32 + 1, 1);
        v27 = v54;
        v25 = v55;
        v23 = v65;
      }

      *(v23 + 16) = v32 + 1;
      v33 = v23 + 40 * v32;
      *(v33 + 32) = v27;
      ++v22;
      *(v33 + 48) = v28;
      *(v33 + 56) = v29;
      *(v33 + 64) = v30;
      v24 += 2;
      if (v20 == v22)
      {
        v34 = v23;

        v21 = MEMORY[0x277D84F90];
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_12:
  MEMORY[0x28223BE20](v35);
  result = sub_25214200C();
  v36 = *(&v62 + 1);
  if ((*(&v62 + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

  v37 = v62;
  v38 = v63;
  v39 = swift_allocObject();
  v39[2] = v37;
  v39[3] = v36;
  v39[4] = v38;
  v40 = sub_2521124C0(0, v36, sub_2520A3750);

  v41 = *(v40 + 2);
  if (v41)
  {
    *&v62 = v21;
    result = sub_25209B234(0, v41, 0);
    v42 = v62;
    v43 = v40 + 56;
    do
    {
      v44 = *(v43 - 1);
      v45 = *v43 >> 1;
      if (v44 == v45)
      {
        v46 = 0;
      }

      else
      {
        if (v44 >= v45)
        {
          goto LABEL_26;
        }

        v46 = *(*(v43 - 2) + 8 * v44) == 1.0;
      }

      *&v62 = v42;
      v48 = *(v42 + 16);
      v47 = *(v42 + 24);
      if (v48 >= v47 >> 1)
      {
        result = sub_25209B234((v47 > 1), v48 + 1, 1);
        v42 = v62;
      }

      v43 += 4;
      *(v42 + 16) = v48 + 1;
      *(v42 + v48 + 32) = v46;
      --v41;
    }

    while (v41);
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
  v50 = sub_25214200C();
  v59 = v62;
  v56 = v63;
  MEMORY[0x28223BE20](v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA8, &qword_252143D60);
  sub_25214200C();

  v51 = *&v61[0];
  v52 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_previousAudiogram;
  swift_beginAccess();
  v53 = *(v60 + v52);
  *v58 = v59;
  v58[1] = v56;
  *(v58 + 4) = v57;
  *(v58 + 5) = v34;
  *(v58 + 6) = v42;
  *(v58 + 7) = v51;
  *(v58 + 8) = v53;
}

uint64_t sub_252081908(__int128 *a1)
{
  swift_getObjectType();
  v180 = *a1;
  v182 = a1[1];
  v3 = *(a1 + 5);
  v178 = *(a1 + 4);
  v4 = *(a1 + 7);
  v177 = *(a1 + 6);
  v5 = *(a1 + 8);
  v6 = *&v1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2520A375C;
  *(v8 + 24) = v7;
  v185 = sub_2520A3768;
  v186 = v8;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1062;
  v9 = _Block_copy(&aBlock);
  v10 = v1;

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v176 = v5;
  aBlock = v180;
  v184 = v182;
  sub_252084B80(&aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2520A3620;
  *(v12 + 24) = v11;
  v185 = sub_2520A3768;
  v186 = v12;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1073;
  v13 = _Block_copy(&aBlock);
  v181 = v6;
  v7 = v10;

  v14 = v6;

  dispatch_sync(v6, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    swift_once();
    v99 = sub_25214198C();
    __swift_project_value_buffer(v99, qword_27F4CDE68);
    v100 = v4;
    v101 = sub_25214196C();
    v102 = sub_252141FBC();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&aBlock = v105;
      *v103 = 136446466;
      v106 = sub_2521425DC();
      v108 = sub_2520A5448(v106, v107, &aBlock);

      *(v103 + 4) = v108;
      *(v103 + 12) = 2112;
      v109 = v4;
      v110 = _swift_stdlib_bridgeErrorToNSError();
      *(v103 + 14) = v110;
      *v104 = v110;
      _os_log_impl(&dword_25207E000, v101, v102, "[%{public}s] Error during getColumn in setState: %@", v103, 0x16u);
      sub_2520A2584(v104, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v104, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x253099FD0](v105, -1, -1);
      MEMORY[0x253099FD0](v103, -1, -1);
    }

    v111 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
    swift_beginAccess();
    *(v7 + v111) = 1;
LABEL_54:
    sub_252080BC4(sub_2520A3008, &block_descriptor_1303);
    sub_252080BC4(sub_2520A2ECC, &block_descriptor_1269);

LABEL_85:
    sub_252080BC4(sub_2520A3008, &block_descriptor_1303);
    return sub_252080BC4(sub_2520A2ECC, &block_descriptor_1269);
  }

  v4 = *(v178 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v4)
  {
    *&aBlock = MEMORY[0x277D84F90];
    sub_25209B2D4(0, v4, 0);
    v16 = aBlock;
    v17 = (v178 + 40);
    v18 = v4;
    do
    {
      v19 = *(v17 - 1);
      v20 = *v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_252143AB0;
      *(v21 + 32) = v19;
      *(v21 + 40) = v20;
      *&aBlock = v16;
      v23 = v16[2];
      v22 = v16[3];
      if (v23 >= v22 >> 1)
      {
        v174 = v21;
        sub_25209B2D4((v22 > 1), v23 + 1, 1);
        v21 = v174;
        v16 = aBlock;
      }

      v16[2] = v23 + 1;
      v16[v23 + 4] = v21;
      v17 += 5;
      v18 = (v18 - 1);
    }

    while (v18);
    v14 = v181;
  }

  v24 = sub_252110D1C(v16);
  v26 = v25;
  v28 = v27;
  v29 = swift_allocObject();
  v29[2] = v7;
  v29[3] = v24;
  v29[4] = v26;
  v29[5] = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2520A351C;
  *(v30 + 24) = v29;
  v185 = sub_2520A3768;
  v186 = v30;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1084;
  v31 = _Block_copy(&aBlock);
  v7 = v7;

  dispatch_sync(v14, v31);
  _Block_release(v31);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    goto LABEL_89;
  }

  v32 = MEMORY[0x277D84F90];
  if (v4)
  {
    *&aBlock = MEMORY[0x277D84F90];
    sub_25209B2D4(0, v4, 0);
    v32 = aBlock;
    v33 = (v178 + 64);
    v34 = v4;
    do
    {
      v35 = *v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_252143AC0;
      if (v35)
      {
        v37 = 1.0;
      }

      else
      {
        v37 = 0.0;
      }

      *(v36 + 32) = v37;
      *&aBlock = v32;
      v39 = v32[2];
      v38 = v32[3];
      if (v39 >= v38 >> 1)
      {
        v175 = v36;
        sub_25209B2D4((v38 > 1), v39 + 1, 1);
        v36 = v175;
        v32 = aBlock;
      }

      v32[2] = v39 + 1;
      v32[v39 + 4] = v36;
      v33 += 40;
      v34 = (v34 - 1);
    }

    while (v34);
    v14 = v181;
  }

  v40 = sub_252110D1C(v32);
  v42 = v41;
  v44 = v43;
  v45 = swift_allocObject();
  v45[2] = v7;
  v45[3] = v40;
  v45[4] = v42;
  v45[5] = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_2520A3528;
  *(v46 + 24) = v45;
  v185 = sub_2520A3768;
  v186 = v46;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1095;
  v47 = _Block_copy(&aBlock);
  v7 = v7;

  dispatch_sync(v14, v47);
  _Block_release(v47);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
    goto LABEL_90;
  }

  v48 = *(v3 + 16);
  v49 = MEMORY[0x277D84F90];
  if (v48)
  {
    *&aBlock = MEMORY[0x277D84F90];
    sub_25209B2D4(0, v48, 0);
    v49 = aBlock;
    v50 = (v3 + 64);
    do
    {
      v51 = *(v50 - 4);
      v52 = *(v50 - 3);
      v53 = *v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_252143AD0;
      *(v54 + 32) = v51;
      *(v54 + 40) = v52;
      *(v54 + 48) = v53;
      *&aBlock = v49;
      v56 = v49[2];
      v55 = v49[3];
      if (v56 >= v55 >> 1)
      {
        v57 = v54;
        sub_25209B2D4((v55 > 1), v56 + 1, 1);
        v54 = v57;
        v49 = aBlock;
      }

      v50 += 5;
      v49[2] = v56 + 1;
      v49[v56 + 4] = v54;
      --v48;
    }

    while (v48);
    v14 = v181;
  }

  v58 = sub_252110D1C(v49);
  v60 = v59;
  v62 = v61;
  v63 = swift_allocObject();
  v63[2] = v7;
  v63[3] = v58;
  v63[4] = v60;
  v63[5] = v62;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2520A36A8;
  *(v64 + 24) = v63;
  v185 = sub_2520A3768;
  v186 = v64;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1106;
  v65 = _Block_copy(&aBlock);
  v7 = v7;

  dispatch_sync(v14, v65);
  _Block_release(v65);
  LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

  if (v65)
  {
    goto LABEL_91;
  }

  v66 = *(v177 + 16);
  v67 = MEMORY[0x277D84F90];
  if (v66)
  {
    *&aBlock = MEMORY[0x277D84F90];
    sub_25209B2D4(0, v66, 0);
    v67 = aBlock;
    v68 = (v177 + 32);
    do
    {
      v69 = *v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_252143AC0;
      if (v69)
      {
        v71 = 1.0;
      }

      else
      {
        v71 = 0.0;
      }

      *(v70 + 32) = v71;
      *&aBlock = v67;
      v73 = v67[2];
      v72 = v67[3];
      if (v73 >= v72 >> 1)
      {
        v74 = v70;
        sub_25209B2D4((v72 > 1), v73 + 1, 1);
        v70 = v74;
        v67 = aBlock;
      }

      v67[2] = v73 + 1;
      v67[v73 + 4] = v70;
      ++v68;
      --v66;
    }

    while (v66);
    v14 = v181;
  }

  v75 = sub_252110D1C(v67);
  v77 = v76;
  v79 = v78;
  v80 = swift_allocObject();
  v80[2] = v7;
  v80[3] = v75;
  v80[4] = v77;
  v80[5] = v79;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_2520A3534;
  *(v81 + 24) = v80;
  v185 = sub_2520A3768;
  v186 = v81;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1117;
  v82 = _Block_copy(&aBlock);
  v7 = v7;

  dispatch_sync(v14, v82);
  _Block_release(v82);
  LOBYTE(v82) = swift_isEscapingClosureAtFileLocation();

  if (v82)
  {
    goto LABEL_92;
  }

  v83 = MEMORY[0x277D84F90];
  if (v4)
  {
    *&aBlock = MEMORY[0x277D84F90];
    sub_25209B234(0, v4, 0);
    v84 = aBlock;
    v85 = (v178 + 64);
    v86 = *(aBlock + 16);
    do
    {
      v87 = *v85;
      *&aBlock = v84;
      v88 = *(v84 + 24);
      if (v86 >= v88 >> 1)
      {
        sub_25209B234((v88 > 1), v86 + 1, 1);
        v84 = aBlock;
      }

      *(v84 + 16) = v86 + 1;
      *(v84 + v86 + 32) = v87;
      v85 += 40;
      ++v86;
      v4 = (v4 - 1);
    }

    while (v4);
  }

  else
  {
    v84 = MEMORY[0x277D84F90];
  }

  v89 = swift_allocObject();
  *(v89 + 16) = v7;
  *(v89 + 24) = v84;
  v4 = swift_allocObject();
  v4[2] = sub_2520A36BC;
  v4[3] = v89;
  v185 = sub_2520A3768;
  v186 = v4;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1128;
  v90 = _Block_copy(&aBlock);
  v7 = v7;

  dispatch_sync(v14, v90);
  _Block_release(v90);
  LOBYTE(v90) = swift_isEscapingClosureAtFileLocation();

  if (v90)
  {
    goto LABEL_93;
  }

  MEMORY[0x28223BE20](v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA8, &qword_252143D60);
  v4 = 0;
  sub_25214200C();
  v92 = *(aBlock + 16);

  if (v92)
  {
    v94 = swift_allocObject();
    *(v94 + 16) = v7;
    *(v94 + 24) = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = sub_2520A3758;
    *(v95 + 24) = v94;
    v185 = sub_2520A3768;
    v186 = v95;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v184 = sub_252083924;
    *(&v184 + 1) = &block_descriptor_1140;
    v96 = _Block_copy(&aBlock);
    v4 = v7;

    dispatch_sync(v14, v96);
    _Block_release(v96);
    v97 = swift_isEscapingClosureAtFileLocation();

    if ((v97 & 1) == 0)
    {
      if (v176)
      {
        if (*(v176 + 16))
        {

          HTAudiometry.previousAudiogram.setter(v98);
        }
      }

      goto LABEL_85;
    }

    goto LABEL_94;
  }

  MEMORY[0x28223BE20](v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  sub_25214200C();
  v112 = sub_2520EEE44(0, aBlock, *(&aBlock + 1), v184);
  v179 = v7;

  v113 = *(v112 + 16);
  if (v113)
  {
    *&aBlock = v83;
    sub_25209B1F4(0, v113, 0);
    v7 = 32;
    v114 = aBlock;
    while (1)
    {
      v115 = *(v112 + v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252143AC0;
      *(inited + 32) = v115;
      MEMORY[0x28223BE20](inited);
      v117 = sub_2520AABEC(1, sub_2520A3B60);
      swift_setDeallocating();
      MEMORY[0x28223BE20](*(v117 + 16));
      v119 = sub_2520AABEC(v118, sub_2520A3344);

      MEMORY[0x28223BE20](*(v119 + 16));
      v121 = sub_2520AABEC(v120, sub_2520A3B48);

      if (!*(v121 + 16))
      {
        break;
      }

      v122 = *(v121 + 32);

      *&aBlock = v114;
      v124 = *(v114 + 16);
      v123 = *(v114 + 24);
      if (v124 >= v123 >> 1)
      {
        sub_25209B1F4((v123 > 1), v124 + 1, 1);
        v114 = aBlock;
      }

      *(v114 + 16) = v124 + 1;
      *(v114 + 8 * v124 + 32) = round(v122);
      v7 += 8;
      if (!--v113)
      {

        v14 = v181;
        goto LABEL_63;
      }
    }

    __break(1u);
    goto LABEL_87;
  }

  v114 = MEMORY[0x277D84F90];
LABEL_63:
  v125 = *(v114 + 16);
  v126 = v125 == 0;
  v127 = 0;
  if (v125)
  {
    v128 = *&v179[OBJC_IVAR____TtC11HearingTest12HTAudiometry_allFrequencies];
    v129 = *(v128 + 16);
    v130 = (v128 + 32);
LABEL_65:
    v131 = v129;
    v132 = v130;
    while (v131)
    {
      v133 = *v132++;
      --v131;
      if (v133 == *(v114 + 32 + 8 * v127))
      {
        v126 = ++v127 == v125;
        if (v127 != v125)
        {
          goto LABEL_65;
        }

        v127 = 0;
        break;
      }
    }
  }

  MEMORY[0x28223BE20](v134);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAA0, &unk_2521451D0);
  v135 = sub_25214200C();
  v136 = aBlock;
  if (v126)
  {
    MEMORY[0x28223BE20](v135);
    sub_25214200C();
    v127 = *(aBlock + 16);
  }

  v137 = *(v136 + 2);
  if (v137 < v127)
  {
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    swift_once();
    v147 = sub_25214198C();
    __swift_project_value_buffer(v147, qword_27F4CDE68);
    v148 = 0;
    v149 = sub_25214196C();
    v150 = sub_252141FBC();

    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      *&aBlock = v153;
      *v151 = 136446466;
      v154 = sub_2521425DC();
      v156 = sub_2520A5448(v154, v155, &aBlock);

      *(v151 + 4) = v156;
      *(v151 + 12) = 2112;
      v157 = 0;
      v158 = _swift_stdlib_bridgeErrorToNSError();
      *(v151 + 14) = v158;
      *v152 = v158;
      _os_log_impl(&dword_25207E000, v149, v150, "[%{public}s] Error during checkCoverage in setState: %@", v151, 0x16u);
      sub_2520A2584(v152, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v152, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v153);
      MEMORY[0x253099FD0](v153, -1, -1);
      MEMORY[0x253099FD0](v151, -1, -1);
    }

    v159 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
    swift_beginAccess();
    v136[v159] = 1;
    goto LABEL_54;
  }

  if (v137 != v127)
  {
    sub_252098F14(v136, (v136 + 32), 0, (2 * v127) | 1);
    v139 = v138;

    v136 = v139;
  }

  v140 = swift_allocObject();
  *(v140 + 16) = v179;
  *(v140 + 24) = v136;
  v136 = swift_allocObject();
  *(v136 + 2) = sub_2520A36BC;
  *(v136 + 3) = v140;
  v185 = sub_2520A3768;
  v186 = v136;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1157;
  v141 = _Block_copy(&aBlock);
  v142 = v179;

  dispatch_sync(v14, v141);
  _Block_release(v141);
  LOBYTE(v141) = swift_isEscapingClosureAtFileLocation();

  if (v141)
  {
    goto LABEL_96;
  }

  v143 = swift_allocObject();
  *(v143 + 16) = v142;
  *(v143 + 24) = 1;
  v144 = swift_allocObject();
  *(v144 + 16) = sub_2520A3758;
  *(v144 + 24) = v143;
  v185 = sub_2520A3768;
  v186 = v144;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1168;
  v145 = _Block_copy(&aBlock);
  v136 = v142;

  dispatch_sync(v14, v145);
  _Block_release(v145);
  LOBYTE(v145) = swift_isEscapingClosureAtFileLocation();

  if (v145)
  {
    goto LABEL_97;
  }

  MEMORY[0x28223BE20](v146);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
  sub_25214200C();
  if (v184 != 2)
  {
    goto LABEL_85;
  }

  v160 = sub_25208F62C(2, 2, 2.2, 12.5);
  v162 = v161;
  v164 = v163;

  sub_252085D18(v165, v162, v164);

  v166 = sub_252090F78(v160, v162, v164);

  if (v166)
  {
    goto LABEL_85;
  }

  v167 = swift_allocObject();
  *(v167 + 16) = v136;
  *(v167 + 24) = 1065353216;
  v168 = swift_allocObject();
  *(v168 + 16) = sub_2520A344C;
  *(v168 + 24) = v167;
  v185 = sub_2520A3768;
  v186 = v168;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1180;
  v169 = _Block_copy(&aBlock);
  v170 = v136;

  dispatch_sync(v14, v169);
  _Block_release(v169);
  v171 = swift_isEscapingClosureAtFileLocation();

  if ((v171 & 1) == 0)
  {
    sub_252091D3C();
    v173 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
    swift_beginAccess();
    v170[v173] = 1;
    sub_252080BC4(sub_2520A3008, &block_descriptor_1303);
    sub_252080BC4(sub_2520A2ECC, &block_descriptor_1269);
    goto LABEL_85;
  }

  __break(1u);
  return result;
}

void (*HTAudiometry.state.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x128uLL);
  }

  *a1 = v3;
  *(v3 + 288) = v1;
  _s11HearingTest12HTAudiometryC5stateAA09HTHearingB5StateVvg_0(v3);
  return sub_2520834C8;
}

void sub_2520834C8(__int128 **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[1];
    v5 = v2[2];
    v4 = v2[3];
    v2[11] = v5;
    v2[12] = v4;
    v6 = v2[1];
    v7 = *v2;
    v2[9] = *v2;
    v2[10] = v6;
    v8 = v2[3];
    v17 = v5;
    v18 = v8;
    *(v2 + 26) = *(v2 + 8);
    v19 = *(v2 + 8);
    v15 = v7;
    v16 = v3;
    sub_25209D3B0((v2 + 9), v2 + 216);
    sub_252081908(&v15);
    sub_25209D35C((v2 + 9));
    v9 = *v2;
    *(v2 + 88) = v2[1];
    v10 = v2[3];
    *(v2 + 104) = v2[2];
    *(v2 + 120) = v10;
    *(v2 + 17) = *(v2 + 8);
    *(v2 + 72) = v9;
  }

  else
  {
    v11 = *v2;
    *(v2 + 88) = v2[1];
    v12 = v2[1];
    *(v2 + 104) = v2[2];
    v13 = v2[2];
    *(v2 + 120) = v2[3];
    *(v2 + 72) = *v2;
    v14 = v2[3];
    v17 = v13;
    v18 = v14;
    *(v2 + 17) = *(v2 + 8);
    v19 = *(v2 + 8);
    v15 = v11;
    v16 = v12;
    sub_252081908(&v15);
  }

  sub_25209D35C(v2 + 72);

  free(v2);
}

uint64_t sub_252083640(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520A3758;
  *(v6 + 24) = v5;
  v10[4] = sub_2520A3768;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor_532;
  v7 = _Block_copy(v10);
  v8 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t HTAudiometry.initialSampleEnded.setter(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_25209D45C;
  *(v5 + 24) = v4;
  v10[4] = sub_25209D474;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*HTAudiometry.initialSampleEnded.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  MEMORY[0x28223BE20](v3);
  sub_25214200C();
  v4[64] = *v4;
  return sub_252083A2C;
}

void sub_252083A2C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 48);
  isEscapingClosureAtFileLocation = *(*a1 + 56);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_2520A3758;
    *(v7 + 24) = v6;
    v2[4] = sub_2520A3768;
    v2[5] = v7;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_252083924;
    v2[3] = &block_descriptor_16;
    v8 = _Block_copy(v2);
    v9 = v5;

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2520A3758;
  *(v11 + 24) = v10;
  v2[4] = sub_2520A3768;
  v2[5] = v11;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_252083924;
  v2[3] = &block_descriptor_27;
  v12 = _Block_copy(v2);
  v13 = v5;

  dispatch_sync(isEscapingClosureAtFileLocation, v12);
  _Block_release(v12);
  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_252083CC0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520A3460;
  *(v6 + 24) = v5;
  v10[4] = sub_2520A3768;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor_520;
  v7 = _Block_copy(v10);

  v8 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t HTAudiometry.fitMatrix.setter(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_25209D528;
  *(v5 + 24) = v4;
  v10[4] = sub_2520A3768;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor_37;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*HTAudiometry.fitMatrix.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD950, &qword_252143B40);
  sub_25214200C();
  v4[6] = *v4;
  return sub_252084080;
}

void sub_252084080(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if ((a2 & 1) == 0)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    *(v11 + 24) = v3;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2520A3460;
    *(v12 + 24) = v11;
    v2[4] = sub_2520A3768;
    v2[5] = v12;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_252083924;
    v2[3] = &block_descriptor_60;
    v13 = _Block_copy(v2);
    v14 = v5;

    dispatch_sync(v4, v13);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2520A3460;
  *(v7 + 24) = v6;
  v2[4] = sub_2520A3768;
  v2[5] = v7;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_252083924;
  v2[3] = &block_descriptor_49;
  v8 = _Block_copy(v2);
  v9 = v5;

  dispatch_sync(v4, v8);
  _Block_release(v8);
  v10 = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_25208432C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD950, &qword_252143B40);
  sub_25214200C();
  return v2;
}

void *sub_2520843A0@<X0>(void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD950, &qword_252143B40);
  result = sub_25214200C();
  *a3 = v5;
  return result;
}

uint64_t sub_25208441C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520A347C;
  *(v6 + 24) = v5;
  v10[4] = sub_2520A3768;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor_508;
  v7 = _Block_copy(v10);

  v8 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t HTAudiometry.maskingMatrix.setter(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_25209D560;
  *(v5 + 24) = v4;
  v10[4] = sub_2520A3768;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor_70;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*HTAudiometry.maskingMatrix.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD950, &qword_252143B40);
  sub_25214200C();
  v4[6] = *v4;
  return sub_2520847DC;
}

void sub_2520847DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if ((a2 & 1) == 0)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    *(v11 + 24) = v3;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2520A347C;
    *(v12 + 24) = v11;
    v2[4] = sub_2520A3768;
    v2[5] = v12;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_252083924;
    v2[3] = &block_descriptor_94;
    v13 = _Block_copy(v2);
    v14 = v5;

    dispatch_sync(v4, v13);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2520A347C;
  *(v7 + 24) = v6;
  v2[4] = sub_2520A3768;
  v2[5] = v7;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_252083924;
  v2[3] = &block_descriptor_83;
  v8 = _Block_copy(v2);
  v9 = v5;

  dispatch_sync(v4, v8);
  _Block_release(v8);
  v10 = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_252084A70@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry__statusProvider);
  v4 = *(a1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry__statusProvider + 8);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2520A2FE0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_2520A283C(v3, v4);
}

uint64_t sub_252084AF8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry__statusProviderV2);
  v4 = *(a1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry__statusProviderV2 + 8);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2520A2FE0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_2520A283C(v3, v4);
}

uint64_t sub_252084B80(__int128 *a1)
{
  v2 = sub_252141A8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252141A4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252141A3C();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = *a1;
  *(v11 + 40) = a1[1];
  *(v11 + 24) = v12;
  aBlock[4] = sub_2520A2B64;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_1051;
  v13 = _Block_copy(aBlock);

  sub_252141A6C();
  MEMORY[0x2530991B0](0, v5, v9, v13);
  _Block_release(v13);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

void sub_252084DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = &Strong[OBJC_IVAR____TtC11HearingTest12HTAudiometry__stimulus];
    *v10 = a2;
    *(v10 + 1) = a3;
    *(v10 + 2) = a4;
    *(v10 + 3) = a5;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    sub_252080BC4(sub_2520A3008, &block_descriptor_1303);
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_252080BC4(sub_2520A2ECC, &block_descriptor_1269);
  }
}

void HTAudiometry.__allocating_init(channel:)(char *a1)
{
  v3 = *a1;
  v2 = objc_allocWithZone(v1);
  HTAudiometry.init(channel:initialLevel:minLevel:maxLevel:frequencies:kernelLength:)(&v3, &unk_28644C0A0, 60.0, -10.0, 85.0, 4.0);
}

void HTAudiometry.__allocating_init(channel:initialLevel:minLevel:maxLevel:frequencies:)(char *a1, uint64_t a2, double a3, double a4, double a5)
{
  v11 = *a1;
  v10 = objc_allocWithZone(v5);
  HTAudiometry.init(channel:initialLevel:minLevel:maxLevel:frequencies:kernelLength:)(&v11, a2, a3, a4, a5, 4.0);
}

void HTAudiometry.init(channel:initialLevel:minLevel:maxLevel:frequencies:kernelLength:)(unsigned __int8 *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v90 = a2;
  ObjectType = swift_getObjectType();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD958, &qword_252143B48);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = v83 - v13;
  *&v86 = sub_252141FEC();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_252141FCC();
  MEMORY[0x28223BE20](v15);
  v83[1] = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_252141A8C();
  MEMORY[0x28223BE20](v17 - 8);
  v91 = *a1;
  v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded] = 0;
  v18 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_previousAudiogram;
  v19 = MEMORY[0x277D84F90];
  *&v6[v18] = sub_25209CA3C(MEMORY[0x277D84F90]);
  v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v21 = sub_252141B6C();
  v22 = [v20 initWithSuiteName_];

  if (!v22)
  {
    goto LABEL_41;
  }

  v23 = sub_252141B6C();
  v24 = [v22 integerForKey_];

  v25 = 85;
  if (v24)
  {
    v25 = v24;
  }

  *&v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxSampleCount] = v25;
  *&v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxProgress] = 1063675494;
  v83[0] = OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue;
  sub_25209D56C();
  sub_252141A6C();
  *&aBlock = v19;
  sub_2520A2ED4(&qword_27F4CE0E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
  sub_2520A2F1C(&qword_27F4CE0F0, &qword_27F4CD970, &qword_252143B50, MEMORY[0x277D83970]);
  sub_25214218C();
  (*(v85 + 104))(v84, *MEMORY[0x277D85260], v86);
  *&v6[v83[0]] = sub_25214202C();
  *&v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry__theta] = &unk_28644C040;
  v26 = &v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry__xSample];
  *v26 = v19;
  *(v26 + 8) = xmmword_252143AE0;
  v27 = &v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry__ySample];
  *v27 = v19;
  *(v27 + 8) = xmmword_252143AF0;
  v28 = &v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry__maskedSample];
  *v28 = v19;
  *(v28 + 8) = xmmword_252143AF0;
  v29 = &v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry__deleted];
  *v29 = v19;
  *(v29 + 8) = xmmword_252143B00;
  v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry__initialSampleEnded] = 0;
  *&v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry__lastProgress] = 0;
  v30 = OBJC_IVAR____TtC11HearingTest12HTAudiometry__fitMatrix;
  *&v7[v30] = sub_25209C938(v19);
  v31 = OBJC_IVAR____TtC11HearingTest12HTAudiometry__maskingMatrix;
  *&v7[v31] = sub_25209C938(v19);
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__stateHistory] = v19;
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__count] = 0;
  HTHearingTestMetrics.init()(&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__metrics]);
  HTHearingTestMetricsV2.init()(&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__metricsV2]);
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__earlyTaps] = 0;
  v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__initialSamplingTermination] = 0;
  v32 = MEMORY[0x277D84F98];
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__results] = MEMORY[0x277D84F98];
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__masking] = v32;
  v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__preStimulusResponse] = 1;
  v33 = OBJC_IVAR____TtC11HearingTest12HTAudiometry___monitoredStimulus;
  aBlock = 0uLL;
  v86 = xmmword_252143B10;
  v94 = xmmword_252143B10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
  v34 = v87;
  sub_2521419BC();
  (*(v88 + 32))(&v7[v33], v34, v89);
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__cancellables] = MEMORY[0x277D84FA0];
  v35 = &v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__statusProvider];
  *v35 = 0;
  v35[1] = 0;
  v36 = &v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__statusProviderV2];
  *v36 = 0;
  v36[1] = 0;
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__initialSamples] = v19;
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__testFs] = v19;
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__revFs] = v19;
  v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__isFastTap] = 0;
  v37 = &v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__stimulus];
  *v37 = 0;
  *(v37 + 1) = 0;
  *(v37 + 1) = v86;
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry_initialLevel] = a3;
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel] = a4;
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel] = a5;
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry_kernelLength] = a6;
  v38 = v90;
  v39 = *(v90 + 16);
  if (v39)
  {
    v40 = 0;
    v41 = MEMORY[0x277D84F90];
    do
    {
      v42 = *(v38 + 32 + 8 * v40);
      v43 = *(v41 + 2);
      v44 = v43;
      v45 = 32;
      while (v44)
      {
        v46 = *&v41[v45];
        v45 += 8;
        --v44;
        if (v46 == v42)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_252099194(0, v43 + 1, 1, v41);
      }

      v48 = *(v41 + 2);
      v47 = *(v41 + 3);
      if (v48 >= v47 >> 1)
      {
        v41 = sub_252099194((v47 > 1), v48 + 1, 1, v41);
      }

      *(v41 + 2) = v48 + 1;
      *&v41[8 * v48 + 32] = v42;
LABEL_7:
      ++v40;
    }

    while (v40 != v39);
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry_allFrequencies] = v41;
  *&aBlock = v41;

  sub_2520806CC(&unk_28644C070);
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry_resultFrequencies] = aBlock;
  v49 = v91;
  v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry_channel] = v91;
  v97.receiver = v7;
  v97.super_class = ObjectType;
  v50 = objc_msgSendSuper2(&v97, sel_init);
  v51 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_allFrequencies;
  v52 = *&v50[OBJC_IVAR____TtC11HearingTest12HTAudiometry_allFrequencies];
  if (!*(v52 + 16))
  {
    __break(1u);
    goto LABEL_39;
  }

  v53 = v50;
  *&aBlock = *(v52 + 32);
  *(&aBlock + 1) = a3;
  *&v94 = v49;
  *(&v94 + 1) = 0x3FF0000000000000;
  v54 = v50;
  sub_252084B80(&aBlock);

  v56 = sub_25209D6D8(v55);

  v57 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue;
  v58 = *&v54[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v59 = swift_allocObject();
  *(v59 + 16) = v54;
  *(v59 + 24) = v56;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_25209D7B0;
  *(v60 + 24) = v59;
  v95 = sub_2520A3768;
  v96 = v60;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v94 = sub_252083924;
  *(&v94 + 1) = &block_descriptor_106;
  v61 = _Block_copy(&aBlock);
  v62 = v54;

  dispatch_sync(v58, v61);
  _Block_release(v61);
  LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

  if (v58)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252143AD0;
  *(inited + 32) = 0x408F400000000000;
  v64 = *&v53[v51];
  v65 = *(v64 + 16);
  if (v65)
  {
    v66 = *(v64 + 32);
    v67 = v65 - 1;
    if (v67)
    {
      v68 = (v64 + 40);
      do
      {
        v69 = *v68++;
        v70 = v69;
        if (v66 < v69)
        {
          v66 = v70;
        }

        --v67;
      }

      while (v67);
    }
  }

  else
  {
    v66 = 8000.0;
  }

  *(inited + 40) = v66;
  v71 = *(v64 + 16);
  if (v71)
  {
    v72 = *(v64 + 32);
    v73 = v71 - 1;
    if (v73)
    {
      v74 = (v64 + 40);
      do
      {
        v75 = *v74++;
        v76 = v75;
        if (v75 < v72)
        {
          v72 = v76;
        }

        --v73;
      }

      while (v73);
    }
  }

  else
  {
    v72 = 250.0;
  }

  *(inited + 48) = v72;
  v77 = sub_25209D6D8(inited);
  swift_setDeallocating();
  v78 = *&v54[v57];
  v79 = swift_allocObject();
  *(v79 + 16) = v62;
  *(v79 + 24) = v77;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_25209D7BC;
  *(v80 + 24) = v79;
  v95 = sub_2520A3768;
  v96 = v80;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v94 = sub_252083924;
  *(&v94 + 1) = &block_descriptor_116;
  v81 = _Block_copy(&aBlock);
  v82 = v62;

  dispatch_sync(v78, v81);
  _Block_release(v81);
  LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

  if (v78)
  {
    goto LABEL_40;
  }
}

int64_t sub_252085BA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

float HTAudiometry.progress.getter()
{
  v1 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  v2 = swift_beginAccess();
  result = 1.0;
  if ((*(v0 + v1) & 1) == 0)
  {
    MEMORY[0x28223BE20](v2);
    sub_25214200C();
    return v4;
  }

  return result;
}

uint64_t sub_252085D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = *MEMORY[0x277D85DE8];
  v8 = *&v3[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v28 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  sub_25214200C();

  if (a1 && v23 >= 20)
  {
    v10 = sub_2520EEE44(4, a1, a2, a3);
    v18 = *(v10 + 16);
    aBlock = 0x7FF8000000000000;
    vDSP_meanvD((v10 + 32), 1, &aBlock, v18);
    v19 = *&aBlock;

    v20 = v19;
    v21 = v20 * 0.9;
  }

  else
  {
    v21 = v23 / 60.0;
  }

  MEMORY[0x28223BE20](v9);
  v11 = sub_25214200C();
  if (v21 <= *&aBlock)
  {
    MEMORY[0x28223BE20](v11);
    sub_25214200C();
    v21 = *&aBlock + 0.015;
  }

  if (v21 > 0.9)
  {
    v21 = 0.9;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v21;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2520A344C;
  *(v13 + 24) = v12;
  v26 = sub_2520A3768;
  v27 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_252083924;
  v25 = &block_descriptor_782;
  v14 = _Block_copy(&aBlock);
  v15 = v4;

  dispatch_sync(v8, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void *HTAudiometry.nextStatus(HTAudiometryStatusV2Handler:)(void (*a1)(_BYTE *), uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_25209D7E4;
  *(v7 + 24) = v6;
  v47[4] = sub_2520A3768;
  v47[5] = v7;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 1107296256;
  v47[2] = sub_252083924;
  v47[3] = &block_descriptor_126;
  v8 = _Block_copy(v47);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return result;
  }

  v12 = v46;
  v13 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  v14 = swift_beginAccess();
  if (v9[v13] == 1)
  {
    HTAudiometry.resultSamples.getter(v47);
    v15 = v47[0];
    HTAudiometry.resultSamples.getter(v46);
    v16 = BYTE8(v46[0]);

    sub_252086B9C();
    *(&v45[12] + 7) = v41;
    *(&v45[13] + 7) = v42;
    *(&v45[14] + 7) = v43;
    *(&v45[15] + 7) = v44;
    *(&v45[8] + 7) = v37;
    *(&v45[9] + 7) = v38;
    *(&v45[10] + 7) = v39;
    *(&v45[11] + 7) = v40;
    *(&v45[4] + 7) = v33;
    *(&v45[5] + 7) = v34;
    *(&v45[6] + 7) = v35;
    *(&v45[7] + 7) = v36;
    *(v45 + 7) = v29;
    *(&v45[1] + 7) = v30;
    *(&v45[2] + 7) = v31;
    *(&v45[3] + 7) = v32;
    *(&v46[13] + 1) = v45[12];
    *(&v46[14] + 1) = v45[13];
    *(&v46[15] + 1) = v45[14];
    v46[16] = *(&v45[14] + 15);
    *(&v46[9] + 1) = v45[8];
    *(&v46[10] + 1) = v45[9];
    *(&v46[11] + 1) = v45[10];
    *(&v46[12] + 1) = v45[11];
    *(&v46[5] + 1) = v45[4];
    *(&v46[6] + 1) = v45[5];
    *(&v46[7] + 1) = v45[6];
    *(&v46[8] + 1) = v45[7];
    *(&v46[1] + 1) = v45[0];
    *(&v46[2] + 1) = v45[1];
    *(&v46[3] + 1) = v45[2];
    *&v46[0] = 0;
    *(&v46[0] + 1) = v15;
    LOBYTE(v46[1]) = v16;
    *(&v46[4] + 1) = v45[3];
    sub_25209D844(v46);
    memcpy(v28, v46, sizeof(v28));
    a1(v28);
    memcpy(v47, v28, 0x110uLL);
    return sub_25209D858(v47);
  }

  v17 = a1;
  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
  result = sub_25214200C();
  v18 = v47[2];
  if (LOBYTE(v47[2]) == 2)
  {
    v19 = swift_allocObject();
    v19[2] = v9;
    v19[3] = v17;
    v19[4] = a2;
    v20 = swift_allocObject();
    v18 = v20;
    *(v20 + 16) = sub_2520A34A4;
    *(v20 + 24) = v19;
    v47[4] = sub_2520A3768;
    v47[5] = v20;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 1107296256;
    v47[2] = sub_252083924;
    v47[3] = &block_descriptor_137;
    v21 = _Block_copy(v47);
    v12 = v47[5];
    swift_retain_n();
    v22 = v9;

    dispatch_sync(v5, v21);

    _Block_release(v21);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    if ((v21 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v23 = v47[3];
  v24 = v12[17];
  v25 = 1.0;
  if ((v9[v13] & 1) == 0)
  {
    MEMORY[0x28223BE20](result);
    v27 = v26;
    sub_25214200C();
    v24 = v27;
    v25 = *v47;
  }

  v12[17] = v24;
  LOBYTE(v47[2]) = v18 & 1;
  v47[3] = v23;
  *&v47[4] = v25;
  sub_25209D834(v47);
  memcpy(v46, v47, sizeof(v46));
  return v17(v46);
}

void *HTAudiometry.resultSamples.getter@<X0>(void *a1@<X8>)
{
  v43 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA90, &qword_2521451E0);
  v2 = 0;
  sub_25214200C();
  v3 = v48;
  v4 = *(v48 + 16);
  if (v4)
  {
    v54 = MEMORY[0x277D84F90];
    sub_25209B314(0, v4, 0);
    v5 = v54;
    v2 = v48 + 64;
    v6 = sub_25214219C();
    v7 = 0;
    v46 = *(v48 + 36);
    v8 = *(v48 + 32);
    v44 = v48 + 72;
    v45 = v4;
    v47 = (v48 + 64);
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << v8)
    {
      v11 = v6 >> 6;
      if ((*(v2 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_35;
      }

      sub_252093808(v1, &v48, *(*(v3 + 48) + 8 * v6), *(*(v3 + 56) + 8 * v6));
      v12 = v48;
      v13 = v49;
      v14 = v50;
      v15 = v51;
      v16 = v52;
      v17 = v53;
      v54 = v5;
      v2 = *(v5 + 16);
      v18 = *(v5 + 24);
      v19 = v5;
      if (v2 >= v18 >> 1)
      {
        v41 = v48;
        v40 = v49;
        v39 = v50;
        v38 = v53;
        sub_25209B314((v18 > 1), v2 + 1, 1);
        v17 = v38;
        v14 = v39;
        v13 = v40;
        v12 = v41;
        v1 = v43;
        v19 = v54;
      }

      *(v19 + 16) = v2 + 1;
      v20 = v19 + 56 * v2;
      *(v20 + 32) = v12;
      *(v20 + 48) = v13;
      *(v20 + 56) = v14;
      *(v20 + 64) = v15;
      *(v20 + 72) = v16;
      *(v20 + 80) = v17;
      v8 = *(v3 + 32);
      v9 = 1 << v8;
      if (v6 >= 1 << v8)
      {
        goto LABEL_36;
      }

      v5 = v19;
      v2 = v47;
      v21 = v47[v11];
      if ((v21 & (1 << v6)) == 0)
      {
        goto LABEL_37;
      }

      if (v46 != *(v3 + 36))
      {
        goto LABEL_38;
      }

      v22 = v21 & (-2 << (v6 & 0x3F));
      if (v22)
      {
        v9 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v10 = v45;
      }

      else
      {
        v23 = v11 << 6;
        v24 = v11 + 1;
        v10 = v45;
        v25 = (v44 + 8 * v11);
        while (v24 < (v9 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            v9 = __clz(__rbit64(v26)) + v23;
            break;
          }
        }
      }

      ++v7;
      v6 = v9;
      if (v7 == v10)
      {

        v2 = 0;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_20:
  *&v48 = v5;

  sub_25209A0C8(&v48);

  v29 = v48;
  MEMORY[0x28223BE20](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  sub_25214200C();
  v30 = *(v48 + 16);

  if (v30 >= *(v43 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxSampleCount))
  {
    v37 = 1;
LABEL_33:
    *a1 = v29;
    *(a1 + 8) = v37;
    return result;
  }

  MEMORY[0x28223BE20](result);
  v32 = sub_25214200C();
  v33 = v48;
  MEMORY[0x28223BE20](v32);
  sub_25214200C();

  if (*(&v48 + 1) + 0x4000000000000000 >= 0)
  {
    if (v33 >= 2 * *(&v48 + 1))
    {
      v37 = 2;
    }

    else
    {
      MEMORY[0x28223BE20](result);
      result = sub_25214200C();
      if (v48 == 1)
      {
        MEMORY[0x28223BE20](result);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAA0, &unk_2521451D0);
        sub_25214200C();
        v34 = *(v48 + 16);
        v35 = (v48 + 32);
        while (v34)
        {
          v36 = *v35++;
          --v34;
          if ((v36 & 1) == 0)
          {
            v37 = 4;
            goto LABEL_32;
          }
        }

        v37 = 3;
LABEL_32:
      }

      else
      {
        v37 = 0;
      }
    }

    goto LABEL_33;
  }

LABEL_39:
  __break(1u);

  __break(1u);
  return result;
}

void *sub_252086B9C()
{
  v2 = *&v1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  sub_25214200C();

  v139 = v1;
  sub_25214200C();
  *&v146 = *(&v146 + 1);
  v3 = swift_allocObject();
  v4 = v159;
  *(v3 + 216) = v158;
  *(v3 + 232) = v4;
  *(v3 + 248) = v160;
  v5 = v155;
  *(v3 + 152) = v154;
  *(v3 + 168) = v5;
  v6 = v157;
  *(v3 + 184) = v156;
  *(v3 + 200) = v6;
  v7 = v151;
  *(v3 + 88) = v150;
  *(v3 + 104) = v7;
  v8 = v153;
  *(v3 + 120) = v152;
  *(v3 + 136) = v8;
  v9 = v147;
  *(v3 + 24) = v146;
  *(v3 + 40) = v9;
  v10 = v149;
  *(v3 + 56) = v148;
  *(v3 + 16) = v139;
  *(v3 + 264) = v161;
  *(v3 + 72) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2520A2864;
  *(v11 + 24) = v3;
  v144 = sub_2520A3768;
  v145 = v11;
  v140 = MEMORY[0x277D85DD0];
  v141 = 1107296256;
  v142 = sub_252083924;
  v143 = &block_descriptor_977;
  v12 = _Block_copy(&v140);
  v13 = v139;

  dispatch_sync(v2, v12);
  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_70;
  }

  MEMORY[0x28223BE20](result);
  sub_25214200C();

  v16 = *(&v146 + 1);
  MEMORY[0x28223BE20](v15);
  sub_25214200C();
  *&v147 = v16;
  v17 = swift_allocObject();
  v18 = v159;
  *(v17 + 216) = v158;
  *(v17 + 232) = v18;
  *(v17 + 248) = v160;
  v19 = v155;
  *(v17 + 152) = v154;
  *(v17 + 168) = v19;
  v20 = v157;
  *(v17 + 184) = v156;
  *(v17 + 200) = v20;
  v21 = v151;
  *(v17 + 88) = v150;
  *(v17 + 104) = v21;
  v22 = v153;
  *(v17 + 120) = v152;
  *(v17 + 136) = v22;
  v23 = v147;
  *(v17 + 24) = v146;
  *(v17 + 40) = v23;
  v24 = v149;
  *(v17 + 56) = v148;
  *(v17 + 16) = v13;
  *(v17 + 264) = v161;
  *(v17 + 72) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2520A3660;
  *(v25 + 24) = v17;
  v144 = sub_2520A3768;
  v145 = v25;
  v140 = MEMORY[0x277D85DD0];
  v141 = 1107296256;
  v142 = sub_252083924;
  v143 = &block_descriptor_990;
  v26 = _Block_copy(&v140);
  v27 = v13;

  dispatch_sync(v2, v26);
  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  result = HTAudiometry.resultSamples.getter(&v146);
  v129 = v146;
  v130 = v2;
  v28 = *(v146 + 16);
  v126 = v27;
  if (!v28)
  {
    v31 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v29 = *&v27[OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel];
  if (v29 <= 5.0)
  {
    v30 = (v146 + 80);
    v31 = MEMORY[0x277D84F90];
    v32 = *(v146 + 16);
    do
    {
      if ((*(v30 - 2) & 1) == 0)
      {
        v36 = *(v30 - 3);
        if (v29 <= v36 && v36 < 5.0)
        {
          v132 = *(v30 - 3);
          v38 = *(v30 - 32);
          v135 = *(v30 - 1);
          v39 = *v30;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v146 = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25209B314(0, *(v31 + 16) + 1, 1);
            v31 = v146;
          }

          v34 = *(v31 + 16);
          v33 = *(v31 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_25209B314((v33 > 1), v34 + 1, 1);
            v31 = v146;
          }

          *(v31 + 16) = v34 + 1;
          v35 = v31 + 56 * v34;
          *(v35 + 32) = v132;
          *(v35 + 48) = v38;
          *(v35 + 56) = v36;
          *(v35 + 64) = 0;
          *(v35 + 72) = v135;
          *(v35 + 80) = v39;
        }
      }

      v30 += 7;
      --v32;
    }

    while (v32);
LABEL_19:
    v41 = *(v31 + 16);

    MEMORY[0x28223BE20](v42);
    sub_25214200C();
    *(&v148 + 1) = v41;
    v43 = swift_allocObject();
    v44 = v159;
    *(v43 + 216) = v158;
    *(v43 + 232) = v44;
    *(v43 + 248) = v160;
    v45 = v155;
    *(v43 + 152) = v154;
    *(v43 + 168) = v45;
    v46 = v157;
    *(v43 + 184) = v156;
    *(v43 + 200) = v46;
    v47 = v151;
    *(v43 + 88) = v150;
    *(v43 + 104) = v47;
    v48 = v153;
    *(v43 + 120) = v152;
    *(v43 + 136) = v48;
    v49 = v147;
    *(v43 + 24) = v146;
    *(v43 + 40) = v49;
    v50 = v149;
    *(v43 + 56) = v148;
    *(v43 + 16) = v126;
    *(v43 + 264) = v161;
    *(v43 + 72) = v50;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_2520A3660;
    *(v51 + 24) = v43;
    v144 = sub_2520A3768;
    v145 = v51;
    v140 = MEMORY[0x277D85DD0];
    v141 = 1107296256;
    v142 = sub_252083924;
    v143 = &block_descriptor_1002;
    v52 = _Block_copy(&v140);
    v53 = v126;

    dispatch_sync(v130, v52);
    _Block_release(v52);
    LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

    if ((v52 & 1) == 0)
    {
      v127 = v53;
      if (v28)
      {
        v54 = (v129 + 80);
        v55 = MEMORY[0x277D84F90];
        v56 = v28;
        do
        {
          if ((*(v54 - 2) & 1) == 0)
          {
            v60 = *(v54 - 3);
            if (v60 >= 5.0 && v60 < 10.0)
            {
              v133 = *(v54 - 3);
              v62 = *(v54 - 32);
              v136 = *(v54 - 1);
              v63 = *v54;
              v64 = swift_isUniquelyReferenced_nonNull_native();
              *&v146 = v55;
              if ((v64 & 1) == 0)
              {
                sub_25209B314(0, *(v55 + 16) + 1, 1);
                v55 = v146;
              }

              v58 = *(v55 + 16);
              v57 = *(v55 + 24);
              if (v58 >= v57 >> 1)
              {
                sub_25209B314((v57 > 1), v58 + 1, 1);
                v55 = v146;
              }

              *(v55 + 16) = v58 + 1;
              v59 = v55 + 56 * v58;
              *(v59 + 32) = v133;
              *(v59 + 48) = v62;
              *(v59 + 56) = v60;
              *(v59 + 64) = 0;
              *(v59 + 72) = v136;
              *(v59 + 80) = v63;
            }
          }

          v54 += 7;
          --v56;
        }

        while (v56);
      }

      else
      {
        v55 = MEMORY[0x277D84F90];
      }

      v65 = *(v55 + 16);

      MEMORY[0x28223BE20](v66);
      sub_25214200C();
      *&v149 = v65;
      v67 = swift_allocObject();
      v68 = v159;
      *(v67 + 216) = v158;
      *(v67 + 232) = v68;
      *(v67 + 248) = v160;
      v69 = v155;
      *(v67 + 152) = v154;
      *(v67 + 168) = v69;
      v70 = v157;
      *(v67 + 184) = v156;
      *(v67 + 200) = v70;
      v71 = v151;
      *(v67 + 88) = v150;
      *(v67 + 104) = v71;
      v72 = v153;
      *(v67 + 120) = v152;
      *(v67 + 136) = v72;
      v73 = v147;
      *(v67 + 24) = v146;
      *(v67 + 40) = v73;
      v74 = v149;
      *(v67 + 56) = v148;
      *(v67 + 16) = v127;
      *(v67 + 264) = v161;
      *(v67 + 72) = v74;
      v75 = swift_allocObject();
      *(v75 + 16) = sub_2520A3660;
      *(v75 + 24) = v67;
      v144 = sub_2520A3768;
      v145 = v75;
      v140 = MEMORY[0x277D85DD0];
      v141 = 1107296256;
      v142 = sub_252083924;
      v143 = &block_descriptor_1014;
      v76 = _Block_copy(&v140);
      v77 = v127;

      dispatch_sync(v130, v76);
      _Block_release(v76);
      LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

      if ((v76 & 1) == 0)
      {
        v128 = v77;
        if (v28)
        {
          v78 = (v129 + 80);
          v79 = MEMORY[0x277D84F90];
          v80 = v28;
          v131 = v28;
          do
          {
            if ((*(v78 - 2) & 1) == 0)
            {
              v84 = *(v78 - 3);
              if (v84 >= 10.0 && v84 < 15.0)
              {
                v137 = *(v78 - 3);
                v86 = *(v78 - 32);
                v87 = *(v78 - 1);
                v88 = *v78;
                v89 = swift_isUniquelyReferenced_nonNull_native();
                *&v146 = v79;
                if ((v89 & 1) == 0)
                {
                  sub_25209B314(0, *(v79 + 16) + 1, 1);
                  v79 = v146;
                }

                v82 = *(v79 + 16);
                v81 = *(v79 + 24);
                if (v82 >= v81 >> 1)
                {
                  sub_25209B314((v81 > 1), v82 + 1, 1);
                  v79 = v146;
                }

                *(v79 + 16) = v82 + 1;
                v83 = v79 + 56 * v82;
                *(v83 + 32) = v137;
                *(v83 + 48) = v86;
                *(v83 + 56) = v84;
                *(v83 + 64) = 0;
                *(v83 + 72) = v87;
                *(v83 + 80) = v88;
                v28 = v131;
              }
            }

            v78 += 7;
            --v80;
          }

          while (v80);
        }

        else
        {
          v79 = MEMORY[0x277D84F90];
        }

        v90 = *(v79 + 16);

        MEMORY[0x28223BE20](v91);
        sub_25214200C();
        *(&v149 + 1) = v90;
        v92 = swift_allocObject();
        v93 = v159;
        *(v92 + 216) = v158;
        *(v92 + 232) = v93;
        *(v92 + 248) = v160;
        v94 = v155;
        *(v92 + 152) = v154;
        *(v92 + 168) = v94;
        v95 = v157;
        *(v92 + 184) = v156;
        *(v92 + 200) = v95;
        v96 = v151;
        *(v92 + 88) = v150;
        *(v92 + 104) = v96;
        v97 = v153;
        *(v92 + 120) = v152;
        *(v92 + 136) = v97;
        v98 = v147;
        *(v92 + 24) = v146;
        *(v92 + 40) = v98;
        v99 = v149;
        *(v92 + 56) = v148;
        *(v92 + 16) = v128;
        *(v92 + 264) = v161;
        *(v92 + 72) = v99;
        v100 = swift_allocObject();
        *(v100 + 16) = sub_2520A3660;
        *(v100 + 24) = v92;
        v144 = sub_2520A3768;
        v145 = v100;
        v140 = MEMORY[0x277D85DD0];
        v141 = 1107296256;
        v142 = sub_252083924;
        v143 = &block_descriptor_1026;
        v101 = _Block_copy(&v140);
        v102 = v128;

        dispatch_sync(v130, v101);
        _Block_release(v101);
        LOBYTE(v101) = swift_isEscapingClosureAtFileLocation();

        if ((v101 & 1) == 0)
        {
          v134 = v102;
          if (v28)
          {
            v103 = (v129 + 80);
            v104 = MEMORY[0x277D84F90];
            do
            {
              if ((*(v103 - 2) & 1) == 0)
              {
                v108 = *(v103 - 3);
                if (v108 >= 15.0 && v108 < 20.0)
                {
                  v138 = *(v103 - 3);
                  v110 = *(v103 - 32);
                  v111 = *(v103 - 1);
                  v112 = *v103;
                  v113 = swift_isUniquelyReferenced_nonNull_native();
                  *&v146 = v104;
                  if ((v113 & 1) == 0)
                  {
                    sub_25209B314(0, *(v104 + 16) + 1, 1);
                    v104 = v146;
                  }

                  v106 = *(v104 + 16);
                  v105 = *(v104 + 24);
                  if (v106 >= v105 >> 1)
                  {
                    sub_25209B314((v105 > 1), v106 + 1, 1);
                    v104 = v146;
                  }

                  *(v104 + 16) = v106 + 1;
                  v107 = v104 + 56 * v106;
                  *(v107 + 32) = v138;
                  *(v107 + 48) = v110;
                  *(v107 + 56) = v108;
                  *(v107 + 64) = 0;
                  *(v107 + 72) = v111;
                  *(v107 + 80) = v112;
                }
              }

              v103 += 7;
              --v28;
            }

            while (v28);
          }

          else
          {
            v104 = MEMORY[0x277D84F90];
          }

          v114 = *(v104 + 16);

          MEMORY[0x28223BE20](v115);
          sub_25214200C();
          *&v150 = v114;
          v116 = swift_allocObject();
          v117 = v159;
          *(v116 + 216) = v158;
          *(v116 + 232) = v117;
          *(v116 + 248) = v160;
          v118 = v155;
          *(v116 + 152) = v154;
          *(v116 + 168) = v118;
          v119 = v157;
          *(v116 + 184) = v156;
          *(v116 + 200) = v119;
          v120 = v151;
          *(v116 + 88) = v150;
          *(v116 + 104) = v120;
          v121 = v153;
          *(v116 + 120) = v152;
          *(v116 + 136) = v121;
          v122 = v147;
          *(v116 + 24) = v146;
          *(v116 + 40) = v122;
          v123 = v149;
          *(v116 + 56) = v148;
          *(v116 + 16) = v134;
          *(v116 + 264) = v161;
          *(v116 + 72) = v123;
          v124 = swift_allocObject();
          *(v124 + 16) = sub_2520A3660;
          *(v124 + 24) = v116;
          v144 = sub_2520A3768;
          v145 = v124;
          v140 = MEMORY[0x277D85DD0];
          v141 = 1107296256;
          v142 = sub_252083924;
          v143 = &block_descriptor_1038;
          v125 = _Block_copy(&v140);
          v134;

          dispatch_sync(v130, v125);
          _Block_release(v125);
          LOBYTE(v125) = swift_isEscapingClosureAtFileLocation();

          if ((v125 & 1) == 0)
          {
            MEMORY[0x28223BE20](result);
            return sub_25214200C();
          }

          goto LABEL_74;
        }

LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_75:
  __break(1u);
  return result;
}

void *HTAudiometry.nextStatus(_:)(void (*a1)(__int128 *), uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_25209D974;
  *(v7 + 24) = v6;
  *&v62 = sub_2520A3768;
  *(&v62 + 1) = v7;
  *&v60 = MEMORY[0x277D85DD0];
  *(&v60 + 1) = 1107296256;
  *&v61 = sub_252083924;
  *(&v61 + 1) = &block_descriptor_148;
  v8 = _Block_copy(&v60);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return result;
  }

  v27 = a1;
  v12 = v59;
  v13 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  v14 = swift_beginAccess();
  if (v9[v13] == 1)
  {
    HTAudiometry.resultSamples.getter(&v42);
    v15 = v42;
    v16 = v43;
    sub_2520883BC();
    *&v58[167] = v54;
    *&v58[183] = v55;
    *&v58[199] = v56;
    *&v58[215] = v57;
    *&v58[103] = v50;
    *&v58[119] = v51;
    *&v58[135] = v52;
    *&v58[151] = v53;
    *&v58[39] = v46;
    *&v58[55] = v47;
    *&v58[71] = v48;
    *&v58[87] = v49;
    *&v58[7] = v44;
    *&v58[23] = v45;
    *&v59[169] = *&v58[160];
    *&v59[185] = *&v58[176];
    *&v59[201] = *&v58[192];
    *&v59[216] = *&v58[207];
    *&v59[105] = *&v58[96];
    *&v59[121] = *&v58[112];
    *&v59[137] = *&v58[128];
    *&v59[153] = *&v58[144];
    *&v59[41] = *&v58[32];
    *&v59[57] = *&v58[48];
    *&v59[73] = *&v58[64];
    *&v59[89] = *&v58[80];
    *&v59[9] = *v58;
    *v59 = v15;
    v59[8] = v16;
    *&v59[25] = *&v58[16];
    sub_25209D9B0(v59);
    v40 = *&v59[192];
    v41[0] = *&v59[208];
    *(v41 + 9) = *&v59[217];
    v36 = *&v59[128];
    v37 = *&v59[144];
    v38 = *&v59[160];
    v39 = *&v59[176];
    v32 = *&v59[64];
    v33 = *&v59[80];
    v34 = *&v59[96];
    v35 = *&v59[112];
    v28 = *v59;
    v29 = *&v59[16];
    v30 = *&v59[32];
    v31 = *&v59[48];
    a1(&v28);
    v72 = v40;
    v73[0] = v41[0];
    *(v73 + 9) = *(v41 + 9);
    v68 = v36;
    v69 = v37;
    v71 = v39;
    v70 = v38;
    v64 = v32;
    v65 = v33;
    v67 = v35;
    v66 = v34;
    v60 = v28;
    v61 = v29;
    v62 = v30;
    v63 = v31;
    return sub_25209D9BC(&v60);
  }

  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
  result = sub_25214200C();
  v17 = v61;
  if (v61 == 2)
  {
    v18 = swift_allocObject();
    v18[2] = v9;
    v18[3] = v27;
    v18[4] = a2;
    v19 = swift_allocObject();
    v17 = v19;
    *(v19 + 16) = sub_2520A34B8;
    *(v19 + 24) = v18;
    *&v62 = sub_2520A3768;
    *(&v62 + 1) = v19;
    *&v60 = MEMORY[0x277D85DD0];
    *(&v60 + 1) = 1107296256;
    *&v61 = sub_252083924;
    *(&v61 + 1) = &block_descriptor_160;
    v20 = _Block_copy(&v60);
    v12 = *(&v62 + 1);
    swift_retain_n();
    v21 = v9;

    dispatch_sync(v5, v20);

    _Block_release(v20);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    if ((v20 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v22 = *(&v61 + 1);
  v23 = v60;
  v24 = 1.0;
  if ((v9[v13] & 1) == 0)
  {
    MEMORY[0x28223BE20](result);
    v26 = v25;
    sub_25214200C();
    v23 = v26;
    v24 = *&v60;
  }

  v60 = v23;
  LOBYTE(v61) = v17 & 1;
  *(&v61 + 1) = v22;
  *&v62 = v24;
  sub_25209D9A8(&v60);
  *&v59[192] = v72;
  *&v59[208] = v73[0];
  *(v12 + 217) = *(v73 + 9);
  *&v59[128] = v68;
  *&v59[144] = v69;
  *&v59[160] = v70;
  *&v59[176] = v71;
  *&v59[64] = v64;
  *&v59[80] = v65;
  *&v59[96] = v66;
  *&v59[112] = v67;
  *v59 = v60;
  *&v59[16] = v61;
  *&v59[32] = v62;
  *&v59[48] = v63;
  return (v27)(v59);
}

void *sub_2520883BC()
{
  v2 = *&v1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  sub_25214200C();

  v133 = v1;
  sub_25214200C();
  *&v140 = *(&v140 + 1);
  v3 = swift_allocObject();
  v4 = v151;
  *(v3 + 184) = v150;
  *(v3 + 200) = v4;
  *(v3 + 216) = v152;
  v5 = v147;
  *(v3 + 120) = v146;
  *(v3 + 136) = v5;
  v6 = v149;
  *(v3 + 152) = v148;
  *(v3 + 168) = v6;
  v7 = v143;
  *(v3 + 56) = v142;
  *(v3 + 72) = v7;
  v8 = v145;
  *(v3 + 88) = v144;
  *(v3 + 104) = v8;
  v9 = v141;
  *(v3 + 24) = v140;
  *(v3 + 16) = v133;
  *(v3 + 232) = v153;
  *(v3 + 40) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2520A3328;
  *(v10 + 24) = v3;
  v138 = sub_2520A3768;
  v139 = v10;
  v134 = MEMORY[0x277D85DD0];
  v135 = 1107296256;
  v136 = sub_252083924;
  v137 = &block_descriptor_903;
  v11 = _Block_copy(&v134);
  v12 = v133;

  dispatch_sync(v2, v11);
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_70;
  }

  MEMORY[0x28223BE20](result);
  sub_25214200C();

  v15 = *(&v140 + 1);
  MEMORY[0x28223BE20](v14);
  sub_25214200C();
  *&v141 = v15;
  v16 = swift_allocObject();
  v17 = v151;
  *(v16 + 184) = v150;
  *(v16 + 200) = v17;
  *(v16 + 216) = v152;
  v18 = v147;
  *(v16 + 120) = v146;
  *(v16 + 136) = v18;
  v19 = v149;
  *(v16 + 152) = v148;
  *(v16 + 168) = v19;
  v20 = v143;
  *(v16 + 56) = v142;
  *(v16 + 72) = v20;
  v21 = v145;
  *(v16 + 88) = v144;
  *(v16 + 104) = v21;
  v22 = v141;
  *(v16 + 24) = v140;
  *(v16 + 16) = v12;
  *(v16 + 232) = v153;
  *(v16 + 40) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2520A3328;
  *(v23 + 24) = v16;
  v138 = sub_2520A3768;
  v139 = v23;
  v134 = MEMORY[0x277D85DD0];
  v135 = 1107296256;
  v136 = sub_252083924;
  v137 = &block_descriptor_916;
  v24 = _Block_copy(&v134);
  v25 = v12;

  dispatch_sync(v2, v24);
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  result = HTAudiometry.resultSamples.getter(&v140);
  v123 = v140;
  v124 = v2;
  v26 = *(v140 + 16);
  v120 = v25;
  if (!v26)
  {
    v29 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v27 = *&v25[OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel];
  if (v27 <= 5.0)
  {
    v28 = (v140 + 80);
    v29 = MEMORY[0x277D84F90];
    v30 = *(v140 + 16);
    do
    {
      if ((*(v28 - 2) & 1) == 0)
      {
        v34 = *(v28 - 3);
        if (v27 <= v34 && v34 < 5.0)
        {
          v126 = *(v28 - 3);
          v36 = *(v28 - 32);
          v129 = *(v28 - 1);
          v37 = *v28;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v140 = v29;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25209B314(0, *(v29 + 16) + 1, 1);
            v29 = v140;
          }

          v32 = *(v29 + 16);
          v31 = *(v29 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_25209B314((v31 > 1), v32 + 1, 1);
            v29 = v140;
          }

          *(v29 + 16) = v32 + 1;
          v33 = v29 + 56 * v32;
          *(v33 + 32) = v126;
          *(v33 + 48) = v36;
          *(v33 + 56) = v34;
          *(v33 + 64) = 0;
          *(v33 + 72) = v129;
          *(v33 + 80) = v37;
        }
      }

      v28 += 7;
      --v30;
    }

    while (v30);
LABEL_19:
    v39 = *(v29 + 16);

    MEMORY[0x28223BE20](v40);
    sub_25214200C();
    *(&v142 + 1) = v39;
    v41 = swift_allocObject();
    v42 = v151;
    *(v41 + 184) = v150;
    *(v41 + 200) = v42;
    *(v41 + 216) = v152;
    v43 = v147;
    *(v41 + 120) = v146;
    *(v41 + 136) = v43;
    v44 = v149;
    *(v41 + 152) = v148;
    *(v41 + 168) = v44;
    v45 = v143;
    *(v41 + 56) = v142;
    *(v41 + 72) = v45;
    v46 = v145;
    *(v41 + 88) = v144;
    *(v41 + 104) = v46;
    v47 = v141;
    *(v41 + 24) = v140;
    *(v41 + 16) = v120;
    *(v41 + 232) = v153;
    *(v41 + 40) = v47;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_2520A3328;
    *(v48 + 24) = v41;
    v138 = sub_2520A3768;
    v139 = v48;
    v134 = MEMORY[0x277D85DD0];
    v135 = 1107296256;
    v136 = sub_252083924;
    v137 = &block_descriptor_928;
    v49 = _Block_copy(&v134);
    v50 = v120;

    dispatch_sync(v124, v49);
    _Block_release(v49);
    LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

    if ((v49 & 1) == 0)
    {
      v121 = v50;
      if (v26)
      {
        v51 = (v123 + 80);
        v52 = MEMORY[0x277D84F90];
        v53 = v26;
        do
        {
          if ((*(v51 - 2) & 1) == 0)
          {
            v57 = *(v51 - 3);
            if (v57 >= 5.0 && v57 < 10.0)
            {
              v127 = *(v51 - 3);
              v59 = *(v51 - 32);
              v130 = *(v51 - 1);
              v60 = *v51;
              v61 = swift_isUniquelyReferenced_nonNull_native();
              *&v140 = v52;
              if ((v61 & 1) == 0)
              {
                sub_25209B314(0, *(v52 + 16) + 1, 1);
                v52 = v140;
              }

              v55 = *(v52 + 16);
              v54 = *(v52 + 24);
              if (v55 >= v54 >> 1)
              {
                sub_25209B314((v54 > 1), v55 + 1, 1);
                v52 = v140;
              }

              *(v52 + 16) = v55 + 1;
              v56 = v52 + 56 * v55;
              *(v56 + 32) = v127;
              *(v56 + 48) = v59;
              *(v56 + 56) = v57;
              *(v56 + 64) = 0;
              *(v56 + 72) = v130;
              *(v56 + 80) = v60;
            }
          }

          v51 += 7;
          --v53;
        }

        while (v53);
      }

      else
      {
        v52 = MEMORY[0x277D84F90];
      }

      v62 = *(v52 + 16);

      MEMORY[0x28223BE20](v63);
      sub_25214200C();
      *&v143 = v62;
      v64 = swift_allocObject();
      v65 = v151;
      *(v64 + 184) = v150;
      *(v64 + 200) = v65;
      *(v64 + 216) = v152;
      v66 = v147;
      *(v64 + 120) = v146;
      *(v64 + 136) = v66;
      v67 = v149;
      *(v64 + 152) = v148;
      *(v64 + 168) = v67;
      v68 = v143;
      *(v64 + 56) = v142;
      *(v64 + 72) = v68;
      v69 = v145;
      *(v64 + 88) = v144;
      *(v64 + 104) = v69;
      v70 = v141;
      *(v64 + 24) = v140;
      *(v64 + 16) = v121;
      *(v64 + 232) = v153;
      *(v64 + 40) = v70;
      v71 = swift_allocObject();
      *(v71 + 16) = sub_2520A3328;
      *(v71 + 24) = v64;
      v138 = sub_2520A3768;
      v139 = v71;
      v134 = MEMORY[0x277D85DD0];
      v135 = 1107296256;
      v136 = sub_252083924;
      v137 = &block_descriptor_940;
      v72 = _Block_copy(&v134);
      v73 = v121;

      dispatch_sync(v124, v72);
      _Block_release(v72);
      LOBYTE(v72) = swift_isEscapingClosureAtFileLocation();

      if ((v72 & 1) == 0)
      {
        v122 = v73;
        if (v26)
        {
          v74 = (v123 + 80);
          v75 = MEMORY[0x277D84F90];
          v76 = v26;
          v125 = v26;
          do
          {
            if ((*(v74 - 2) & 1) == 0)
            {
              v80 = *(v74 - 3);
              if (v80 >= 10.0 && v80 < 15.0)
              {
                v131 = *(v74 - 3);
                v82 = *(v74 - 32);
                v83 = *(v74 - 1);
                v84 = *v74;
                v85 = swift_isUniquelyReferenced_nonNull_native();
                *&v140 = v75;
                if ((v85 & 1) == 0)
                {
                  sub_25209B314(0, *(v75 + 16) + 1, 1);
                  v75 = v140;
                }

                v78 = *(v75 + 16);
                v77 = *(v75 + 24);
                if (v78 >= v77 >> 1)
                {
                  sub_25209B314((v77 > 1), v78 + 1, 1);
                  v75 = v140;
                }

                *(v75 + 16) = v78 + 1;
                v79 = v75 + 56 * v78;
                *(v79 + 32) = v131;
                *(v79 + 48) = v82;
                *(v79 + 56) = v80;
                *(v79 + 64) = 0;
                *(v79 + 72) = v83;
                *(v79 + 80) = v84;
                v26 = v125;
              }
            }

            v74 += 7;
            --v76;
          }

          while (v76);
        }

        else
        {
          v75 = MEMORY[0x277D84F90];
        }

        v86 = *(v75 + 16);

        MEMORY[0x28223BE20](v87);
        sub_25214200C();
        *(&v143 + 1) = v86;
        v88 = swift_allocObject();
        v89 = v151;
        *(v88 + 184) = v150;
        *(v88 + 200) = v89;
        *(v88 + 216) = v152;
        v90 = v147;
        *(v88 + 120) = v146;
        *(v88 + 136) = v90;
        v91 = v149;
        *(v88 + 152) = v148;
        *(v88 + 168) = v91;
        v92 = v143;
        *(v88 + 56) = v142;
        *(v88 + 72) = v92;
        v93 = v145;
        *(v88 + 88) = v144;
        *(v88 + 104) = v93;
        v94 = v141;
        *(v88 + 24) = v140;
        *(v88 + 16) = v122;
        *(v88 + 232) = v153;
        *(v88 + 40) = v94;
        v95 = swift_allocObject();
        *(v95 + 16) = sub_2520A3328;
        *(v95 + 24) = v88;
        v138 = sub_2520A3768;
        v139 = v95;
        v134 = MEMORY[0x277D85DD0];
        v135 = 1107296256;
        v136 = sub_252083924;
        v137 = &block_descriptor_952;
        v96 = _Block_copy(&v134);
        v97 = v122;

        dispatch_sync(v124, v96);
        _Block_release(v96);
        LOBYTE(v96) = swift_isEscapingClosureAtFileLocation();

        if ((v96 & 1) == 0)
        {
          v128 = v97;
          if (v26)
          {
            v98 = (v123 + 80);
            v99 = MEMORY[0x277D84F90];
            do
            {
              if ((*(v98 - 2) & 1) == 0)
              {
                v103 = *(v98 - 3);
                if (v103 >= 15.0 && v103 < 20.0)
                {
                  v132 = *(v98 - 3);
                  v105 = *(v98 - 32);
                  v106 = *(v98 - 1);
                  v107 = *v98;
                  v108 = swift_isUniquelyReferenced_nonNull_native();
                  *&v140 = v99;
                  if ((v108 & 1) == 0)
                  {
                    sub_25209B314(0, *(v99 + 16) + 1, 1);
                    v99 = v140;
                  }

                  v101 = *(v99 + 16);
                  v100 = *(v99 + 24);
                  if (v101 >= v100 >> 1)
                  {
                    sub_25209B314((v100 > 1), v101 + 1, 1);
                    v99 = v140;
                  }

                  *(v99 + 16) = v101 + 1;
                  v102 = v99 + 56 * v101;
                  *(v102 + 32) = v132;
                  *(v102 + 48) = v105;
                  *(v102 + 56) = v103;
                  *(v102 + 64) = 0;
                  *(v102 + 72) = v106;
                  *(v102 + 80) = v107;
                }
              }

              v98 += 7;
              --v26;
            }

            while (v26);
          }

          else
          {
            v99 = MEMORY[0x277D84F90];
          }

          v109 = *(v99 + 16);

          MEMORY[0x28223BE20](v110);
          sub_25214200C();
          *&v144 = v109;
          v111 = swift_allocObject();
          v112 = v151;
          *(v111 + 184) = v150;
          *(v111 + 200) = v112;
          *(v111 + 216) = v152;
          v113 = v147;
          *(v111 + 120) = v146;
          *(v111 + 136) = v113;
          v114 = v149;
          *(v111 + 152) = v148;
          *(v111 + 168) = v114;
          v115 = v143;
          *(v111 + 56) = v142;
          *(v111 + 72) = v115;
          v116 = v145;
          *(v111 + 88) = v144;
          *(v111 + 104) = v116;
          v117 = v141;
          *(v111 + 24) = v140;
          *(v111 + 16) = v128;
          *(v111 + 232) = v153;
          *(v111 + 40) = v117;
          v118 = swift_allocObject();
          *(v118 + 16) = sub_2520A3328;
          *(v118 + 24) = v111;
          v138 = sub_2520A3768;
          v139 = v118;
          v134 = MEMORY[0x277D85DD0];
          v135 = 1107296256;
          v136 = sub_252083924;
          v137 = &block_descriptor_964;
          v119 = _Block_copy(&v134);
          v128;

          dispatch_sync(v124, v119);
          _Block_release(v119);
          LOBYTE(v119) = swift_isEscapingClosureAtFileLocation();

          if ((v119 & 1) == 0)
          {
            MEMORY[0x28223BE20](result);
            return sub_25214200C();
          }

          goto LABEL_74;
        }

LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t HTAudiometry.nextStatus()(uint64_t a1)
{
  *(v2 + 832) = v1;
  *(v2 + 824) = a1;
  return MEMORY[0x2822009F8](sub_252089574, 0, 0);
}

uint64_t sub_252089574()
{
  v58 = v0;
  v1 = *(v0 + 832);
  v2 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  *(v0 + 840) = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v3 = *(v0 + 824);
    HTAudiometry.resultSamples.getter(&v56);
    v4 = v56;
    v5 = v57;
    sub_2520883BC();
    *&v41[167] = v52;
    *&v41[183] = v53;
    *&v41[199] = v54;
    *&v41[215] = v55;
    *&v41[103] = v48;
    *&v41[119] = v49;
    *&v41[135] = v50;
    *&v41[151] = v51;
    *&v41[39] = v44;
    *&v41[55] = v45;
    *&v41[71] = v46;
    *&v41[87] = v47;
    *&v41[7] = v42;
    *&v41[23] = v43;
    *(v0 + 496) = v4;
    *(v0 + 504) = v5;
    *(v0 + 665) = *&v41[160];
    *(v0 + 681) = *&v41[176];
    *(v0 + 697) = *&v41[192];
    *(v0 + 712) = *&v41[207];
    *(v0 + 601) = *&v41[96];
    *(v0 + 617) = *&v41[112];
    *(v0 + 633) = *&v41[128];
    *(v0 + 649) = *&v41[144];
    *(v0 + 537) = *&v41[32];
    *(v0 + 553) = *&v41[48];
    *(v0 + 569) = *&v41[64];
    *(v0 + 585) = *&v41[80];
    *(v0 + 505) = *v41;
    *(v0 + 521) = *&v41[16];
    sub_25209D9B0(v0 + 496);
    v6 = *(v0 + 496);
    v7 = *(v0 + 528);
    v3[1] = *(v0 + 512);
    v3[2] = v7;
    *v3 = v6;
    v8 = *(v0 + 544);
    v9 = *(v0 + 560);
    v10 = *(v0 + 592);
    v3[5] = *(v0 + 576);
    v3[6] = v10;
    v3[3] = v8;
    v3[4] = v9;
    v11 = *(v0 + 608);
    v12 = *(v0 + 624);
    v13 = *(v0 + 656);
    v3[9] = *(v0 + 640);
    v3[10] = v13;
    v3[7] = v11;
    v3[8] = v12;
    v14 = *(v0 + 672);
    v15 = *(v0 + 688);
    v16 = *(v0 + 704);
    *(v3 + 217) = *(v0 + 713);
    v3[12] = v15;
    v3[13] = v16;
    v3[11] = v14;
LABEL_10:
    v38 = *(v0 + 8);

    return v38();
  }

  v17 = *(v0 + 832);
  *(v0 + 848) = *(v17 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  *(swift_task_alloc() + 16) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
  sub_25214200C();
  *(v0 + 856) = 0;

  v18 = *(v0 + 752);
  if (v18 != 2)
  {
    v22 = *(v0 + 760);
    v23 = *(v0 + 736);
    v24 = 1.0;
    if ((*(v1 + v2) & 1) == 0)
    {
      v25 = *(v0 + 832);
      v40 = *(v0 + 736);
      *(swift_task_alloc() + 16) = v25;
      sub_25214200C();

      v23 = v40;
      v24 = *(v0 + 492);
    }

    v26 = *(v0 + 824);
    *(v0 + 256) = v23;
    *(v0 + 272) = v18 & 1;
    *(v0 + 280) = v22;
    *(v0 + 288) = v24;
    sub_25209D9A8(v0 + 256);
    v27 = *(v0 + 256);
    v28 = *(v0 + 288);
    v26[1] = *(v0 + 272);
    v26[2] = v28;
    *v26 = v27;
    v29 = *(v0 + 304);
    v30 = *(v0 + 320);
    v31 = *(v0 + 352);
    v26[5] = *(v0 + 336);
    v26[6] = v31;
    v26[3] = v29;
    v26[4] = v30;
    v32 = *(v0 + 368);
    v33 = *(v0 + 384);
    v34 = *(v0 + 416);
    v26[9] = *(v0 + 400);
    v26[10] = v34;
    v26[7] = v32;
    v26[8] = v33;
    v35 = *(v0 + 432);
    v36 = *(v0 + 448);
    v37 = *(v0 + 464);
    *(v26 + 217) = *(v0 + 473);
    v26[12] = v36;
    v26[13] = v37;
    v26[11] = v35;
    goto LABEL_10;
  }

  v19 = *(v0 + 832);
  v20 = swift_task_alloc();
  *(v0 + 864) = v20;
  *(v20 + 16) = v19;
  v21 = swift_task_alloc();
  *(v0 + 872) = v21;
  *v21 = v0;
  v21[1] = sub_252089960;

  return MEMORY[0x2822007B8](v0 + 768, 0, 0, 0x746174537478656ELL, 0xEC00000029287375, sub_25209DA10, v20, &type metadata for HTHearingTestTone);
}

uint64_t sub_252089960()
{

  return MEMORY[0x2822009F8](sub_252089A78, 0, 0);
}

uint64_t sub_252089A78()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 768);
  v3 = *(v0 + 784);
  v4 = *(v0 + 792);
  v5 = 1.0;
  if ((*(v1 + *(v0 + 840)) & 1) == 0)
  {
    v20 = *(v0 + 768);
    *(swift_task_alloc() + 16) = v1;
    sub_25214200C();

    v2 = v20;
    v5 = *(v0 + 252);
  }

  v6 = *(v0 + 824);
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  sub_25209D9A8(v0 + 16);
  v7 = *(v0 + 16);
  v8 = *(v0 + 48);
  v6[1] = *(v0 + 32);
  v6[2] = v8;
  *v6 = v7;
  v9 = *(v0 + 64);
  v10 = *(v0 + 80);
  v11 = *(v0 + 112);
  v6[5] = *(v0 + 96);
  v6[6] = v11;
  v6[3] = v9;
  v6[4] = v10;
  v12 = *(v0 + 128);
  v13 = *(v0 + 144);
  v14 = *(v0 + 176);
  v6[9] = *(v0 + 160);
  v6[10] = v14;
  v6[7] = v12;
  v6[8] = v13;
  v15 = *(v0 + 192);
  v16 = *(v0 + 208);
  v17 = *(v0 + 224);
  *(v6 + 217) = *(v0 + 233);
  v6[12] = v16;
  v6[13] = v17;
  v6[11] = v15;
  v18 = *(v0 + 8);

  return v18();
}

__n128 sub_252089BC4@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t HTAudiometry.nextStatusV2()(uint64_t a1)
{
  *(v2 + 928) = v1;
  *(v2 + 920) = a1;
  return MEMORY[0x2822009F8](sub_252089BF4, 0, 0);
}

uint64_t sub_252089BF4()
{
  v31 = v0;
  v1 = *(v0 + 928);
  v2 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  *(v0 + 936) = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v3 = *(v0 + 920);
    HTAudiometry.resultSamples.getter(v29);
    v4 = *&v29[0];
    HTAudiometry.resultSamples.getter(v28);
    v5 = v28[8];

    sub_252086B9C();
    *&v28[199] = v29[12];
    *&v28[215] = v29[13];
    *&v28[231] = v29[14];
    *&v28[247] = v30;
    *&v28[135] = v29[8];
    *&v28[151] = v29[9];
    *&v28[167] = v29[10];
    *&v28[183] = v29[11];
    *&v28[71] = v29[4];
    *&v28[87] = v29[5];
    *&v28[103] = v29[6];
    *&v28[119] = v29[7];
    *&v28[7] = v29[0];
    *&v28[23] = v29[1];
    *&v28[39] = v29[2];
    *&v28[55] = v29[3];
    *(v0 + 560) = 0;
    *(v0 + 568) = v4;
    *(v0 + 576) = v5;
    v6 = *&v28[208];
    *(v0 + 769) = *&v28[192];
    *(v0 + 785) = v6;
    *(v0 + 801) = *&v28[224];
    *(v0 + 816) = *&v28[239];
    v7 = *&v28[144];
    *(v0 + 705) = *&v28[128];
    *(v0 + 721) = v7;
    v8 = *&v28[176];
    *(v0 + 737) = *&v28[160];
    *(v0 + 753) = v8;
    v9 = *&v28[80];
    *(v0 + 641) = *&v28[64];
    *(v0 + 657) = v9;
    v10 = *&v28[112];
    *(v0 + 673) = *&v28[96];
    *(v0 + 689) = v10;
    v11 = *&v28[16];
    *(v0 + 577) = *v28;
    *(v0 + 593) = v11;
    v12 = *&v28[48];
    *(v0 + 609) = *&v28[32];
    *(v0 + 625) = v12;
    sub_25209D844(v0 + 560);
    v13 = (v0 + 560);
    v14 = v3;
LABEL_10:
    memcpy(v14, v13, 0x110uLL);
    v25 = *(v0 + 8);

    return v25();
  }

  v15 = *(v0 + 928);
  *(v0 + 944) = *(v15 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  *(swift_task_alloc() + 16) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
  sub_25214200C();
  *(v0 + 952) = 0;

  v16 = *(v0 + 848);
  if (v16 != 2)
  {
    v20 = *(v0 + 856);
    v21 = *(v0 + 832);
    v22 = 1.0;
    if ((*(v1 + v2) & 1) == 0)
    {
      v23 = *(v0 + 928);
      v27 = *(v0 + 832);
      *(swift_task_alloc() + 16) = v23;
      sub_25214200C();

      v21 = v27;
      v22 = *(v0 + 980);
    }

    v24 = *(v0 + 920);
    *(v0 + 288) = v21;
    *(v0 + 304) = v16 & 1;
    *(v0 + 312) = v20;
    *(v0 + 320) = v22;
    sub_25209D834(v0 + 288);
    v13 = (v0 + 288);
    v14 = v24;
    goto LABEL_10;
  }

  v17 = *(v0 + 928);
  v18 = swift_task_alloc();
  *(v0 + 960) = v18;
  *(v18 + 16) = v17;
  v19 = swift_task_alloc();
  *(v0 + 968) = v19;
  *v19 = v0;
  v19[1] = sub_252089F8C;

  return MEMORY[0x2822007B8](v0 + 864, 0, 0, 0x746174537478656ELL, 0xEE00292832567375, sub_25209DA5C, v18, &type metadata for HTHearingTestTone);
}

uint64_t sub_252089F8C()
{

  return MEMORY[0x2822009F8](sub_25208A0A4, 0, 0);
}

uint64_t sub_25208A0A4()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 864);
  v3 = *(v0 + 880);
  v4 = *(v0 + 888);
  v5 = 1.0;
  if ((*(v1 + *(v0 + 936)) & 1) == 0)
  {
    v9 = *(v0 + 864);
    *(swift_task_alloc() + 16) = v1;
    sub_25214200C();

    v2 = v9;
    v5 = *(v0 + 976);
  }

  v6 = *(v0 + 920);
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  sub_25209D834(v0 + 16);
  memcpy(v6, (v0 + 16), 0x110uLL);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25208A1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v23[1] = a3;
  v28 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBD0, &qword_252143D88);
  v5 = *(v27 - 8);
  v26 = *(v5 + 64);
  MEMORY[0x28223BE20](v27);
  v25 = v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBD8, &qword_252143D90);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBE0, &qword_252143D98);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - v13;
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBE8, &qword_252143DA0);
  v24 = *(v23[0] - 8);
  MEMORY[0x28223BE20](v23[0]);
  v16 = v23 - v15;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD958, &qword_252143B48);
  sub_2521419CC();
  swift_endAccess();
  sub_2520A2F1C(&qword_27F4CDBF0, &qword_27F4CDBD8, &qword_252143D90, MEMORY[0x277CBCEC8]);
  sub_2521419EC();
  (*(v8 + 8))(v10, v7);
  sub_2520A2F1C(&qword_27F4CDBF8, &qword_27F4CDBE0, &qword_252143D98, MEMORY[0x277CBCB10]);
  sub_2521419FC();
  (*(v12 + 8))(v14, v11);
  v17 = v25;
  v18 = v27;
  (*(v5 + 16))(v25, v28, v27);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v19, v17, v18);
  sub_2520A2F1C(&qword_27F4CDC00, &qword_27F4CDBE8, &qword_252143DA0, MEMORY[0x277CBCC58]);
  v21 = v23[0];
  sub_252141A0C();

  (*(v24 + 8))(v16, v21);
  swift_beginAccess();
  sub_2521419AC();
  swift_endAccess();
}

void sub_25208A68C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC48, &qword_252143DF0);
    sub_25214200C();

    if (v6)
    {
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;
        sub_2520A283C(v6, v7);
        sub_2520A10E0(v5, v6, v7);
        sub_2520A1FE4(v6, v7);
        sub_2520A1FE4(v6, v7);
      }

      else
      {
        sub_2520A1FE4(v6, v7);
      }
    }
  }
}

void sub_25208A7DC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC40, &qword_252143DE8);
    sub_25214200C();

    if (v6)
    {
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;
        sub_2520A283C(v6, v7);
        sub_2520A0AF8(v5, v6, v7);
        sub_2520A1FE4(v6, v7);
        sub_2520A1FE4(v6, v7);
      }

      else
      {
        sub_2520A1FE4(v6, v7);
      }
    }
  }
}

Swift::Void __swiftcall HTAudiometry.registerStimulusPlayback()()
{
  v1 = *&v0[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_25209DAA8;
  *(v3 + 24) = v2;
  v15 = sub_2520A3768;
  v16 = v3;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_252083924;
  v14 = &block_descriptor_179;
  v4 = _Block_copy(&v11);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_25209DAC0;
  *(v7 + 24) = v6;
  v15 = sub_2520A3768;
  v16 = v7;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_252083924;
  v14 = &block_descriptor_189;
  v8 = _Block_copy(&v11);
  v9 = v5;

  dispatch_sync(v1, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }
}

Swift::Void __swiftcall HTAudiometry.registerResponse(response:withInterferenceFlag:)(Swift::Bool response, Swift::Bool withInterferenceFlag)
{
  v6 = v2;
  v7 = withInterferenceFlag;
  isEscapingClosureAtFileLocation = response;
  v9 = *&v2[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v10 = sub_25214200C();
  if (v258 != 1)
  {
    goto LABEL_11;
  }

  MEMORY[0x28223BE20](v10);
  sub_25214200C();
  v11 = (v258 + 1);
  if (__OFADD__(v258, 1))
  {
    __break(1u);
    goto LABEL_116;
  }

  v257 = isEscapingClosureAtFileLocation;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v11;
  v11 = swift_allocObject();
  *(v11 + 2) = sub_2520A1A5C;
  *(v11 + 3) = v12;
  *&v260 = sub_2520A3768;
  *(&v260 + 1) = v11;
  *&v258 = MEMORY[0x277D85DD0];
  *(&v258 + 1) = 1107296256;
  *&v259 = sub_252083924;
  *(&v259 + 1) = &block_descriptor_431;
  v13 = _Block_copy(&v258);
  v3 = *(&v260 + 1);
  v14 = v6;

  dispatch_sync(v9, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  MEMORY[0x28223BE20](v15);
  v16 = sub_25214200C();
  v11 = &v249;
  if (v258 != 1)
  {
    MEMORY[0x28223BE20](v16);
    sub_25214200C();
    if (!__OFADD__(*(&v258 + 1), 1))
    {
      v256 = v7;
      ++*(&v258 + 1);
      v28 = swift_allocObject();
      v29 = v269;
      *(v28 + 184) = v268;
      *(v28 + 200) = v29;
      *(v28 + 216) = v270;
      v30 = v265;
      *(v28 + 120) = v264;
      *(v28 + 136) = v30;
      v31 = v267;
      *(v28 + 152) = v266;
      *(v28 + 168) = v31;
      v32 = v261;
      *(v28 + 56) = v260;
      *(v28 + 72) = v32;
      v33 = v263;
      *(v28 + 88) = v262;
      *(v28 + 104) = v33;
      v34 = v259;
      *(v28 + 24) = v258;
      *(v28 + 16) = v14;
      *(v28 + 232) = v271;
      *(v28 + 40) = v34;
      isEscapingClosureAtFileLocation = swift_allocObject();
      *(isEscapingClosureAtFileLocation + 16) = sub_2520A3328;
      *(isEscapingClosureAtFileLocation + 24) = v28;
      *&v279 = sub_2520A3768;
      *(&v279 + 1) = isEscapingClosureAtFileLocation;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v278 = sub_252083924;
      *(&v278 + 1) = &block_descriptor_443;
      v25 = _Block_copy(&aBlock);
      v24 = v14;

      dispatch_sync(v9, v25);
      _Block_release(v25);
      v35 = swift_isEscapingClosureAtFileLocation();

      if (v35)
      {
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v36 = swift_allocObject();
      *(v36 + 16) = v24;
      *(v36 + 24) = 1;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_2520A3764;
      *(v37 + 24) = v36;
      *&v260 = sub_2520A3768;
      *(&v260 + 1) = v37;
      *&v258 = MEMORY[0x277D85DD0];
      *(&v258 + 1) = 1107296256;
      *&v259 = sub_252083924;
      *(&v259 + 1) = &block_descriptor_454;
      v38 = _Block_copy(&v258);
      v39 = v24;

      dispatch_sync(v9, v38);
      _Block_release(v38);
      v24 = swift_isEscapingClosureAtFileLocation();

      v7 = v256;
      isEscapingClosureAtFileLocation = v257;
      if (v24)
      {
LABEL_124:
        __break(1u);
LABEL_125:
        v24 = sub_2520995E8(0, *(v24 + 16) + 1, 1, v24);
        goto LABEL_20;
      }

      goto LABEL_11;
    }

LABEL_118:
    __break(1u);
LABEL_119:
    v11 = sub_2520996DC(0, *(v11 + 2) + 1, 1, v11);
    goto LABEL_14;
  }

  MEMORY[0x28223BE20](v16);
  sub_25214200C();
  if (__OFADD__(*(&v259 + 1), 1))
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  ++*(&v259 + 1);
  v17 = swift_allocObject();
  v18 = v269;
  *(v17 + 184) = v268;
  *(v17 + 200) = v18;
  *(v17 + 216) = v270;
  v19 = v265;
  *(v17 + 120) = v264;
  *(v17 + 136) = v19;
  v20 = v267;
  *(v17 + 152) = v266;
  *(v17 + 168) = v20;
  v21 = v261;
  *(v17 + 56) = v260;
  *(v17 + 72) = v21;
  v22 = v263;
  *(v17 + 88) = v262;
  *(v17 + 104) = v22;
  v23 = v259;
  *(v17 + 24) = v258;
  *(v17 + 16) = v14;
  *(v17 + 232) = v271;
  *(v17 + 40) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2520A3328;
  *(v24 + 24) = v17;
  *&v279 = sub_2520A3768;
  *(&v279 + 1) = v24;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v278 = sub_252083924;
  *(&v278 + 1) = &block_descriptor_466;
  isEscapingClosureAtFileLocation = _Block_copy(&aBlock);
  v25 = *(&v279 + 1);
  v26 = v14;

  dispatch_sync(v9, isEscapingClosureAtFileLocation);
  _Block_release(isEscapingClosureAtFileLocation);
  v27 = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  isEscapingClosureAtFileLocation = v257;
LABEL_11:
  MEMORY[0x28223BE20](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
  v40 = sub_25214200C();
  if (v259 == 2)
  {
    return;
  }

  v3 = *(&v258 + 1);
  v41 = v258;
  MEMORY[0x28223BE20](v40);
  sub_25214200C();
  if (v258)
  {
    return;
  }

  v253 = v41;
  v42 = _s11HearingTest12HTAudiometryC5stateAA09HTHearingB5StateVvg_0(&aBlock);
  MEMORY[0x28223BE20](v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CDAA8, &unk_252143B90);
  sub_25214200C();
  v11 = v258;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v251 = v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_119;
  }

LABEL_14:
  v46 = *(v11 + 2);
  v45 = *(v11 + 3);
  v256 = v7;
  v252 = v3;
  if (v46 >= v45 >> 1)
  {
    v11 = sub_2520996DC((v45 > 1), v46 + 1, 1, v11);
  }

  *(v11 + 2) = v46 + 1;
  v47 = &v11[72 * v46];
  *(v47 + 2) = aBlock;
  v48 = v278;
  v49 = v279;
  v50 = v280;
  *(v47 + 12) = v281;
  *(v47 + 4) = v49;
  *(v47 + 5) = v50;
  *(v47 + 3) = v48;
  v51 = swift_allocObject();
  *(v51 + 16) = v6;
  *(v51 + 24) = v11;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_25209DB1C;
  *(v24 + 24) = v51;
  *&v260 = sub_2520A3768;
  *(&v260 + 1) = v24;
  *&v258 = MEMORY[0x277D85DD0];
  v4 = 1107296256;
  *(&v258 + 1) = 1107296256;
  *&v259 = sub_252083924;
  *(&v259 + 1) = &block_descriptor_201;
  v52 = _Block_copy(&v258);
  v25 = v6;

  dispatch_sync(v9, v52);
  _Block_release(v52);
  LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

  if (v52)
  {
    __break(1u);
    goto LABEL_121;
  }

  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
  v53 = swift_allocObject();
  v255 = xmmword_252143AC0;
  *(v53 + 16) = xmmword_252143AC0;
  *(v53 + 32) = v253;
  v24 = sub_25209D6D8(v53);
  swift_setDeallocating();
  swift_deallocClassInstance();
  if (!*(v24 + 16))
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v5 = *(v24 + 32);

  MEMORY[0x28223BE20](v54);
  v55 = sub_25214200C();
  if (v258)
  {
    goto LABEL_23;
  }

  MEMORY[0x28223BE20](v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAA0, &unk_2521451D0);
  sub_25214200C();
  v24 = v258;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_125;
  }

LABEL_20:
  v57 = *(v24 + 16);
  v56 = *(v24 + 24);
  if (v57 >= v56 >> 1)
  {
    v24 = sub_2520995E8((v56 > 1), v57 + 1, 1, v24);
  }

  *(v24 + 16) = v57 + 1;
  *(v24 + v57 + 32) = isEscapingClosureAtFileLocation & 1;
  v58 = swift_allocObject();
  *(v58 + 16) = v25;
  *(v58 + 24) = v24;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_25209DB28;
  *(v59 + 24) = v58;
  *&v260 = sub_2520A3768;
  *(&v260 + 1) = v59;
  *&v258 = MEMORY[0x277D85DD0];
  *(&v258 + 1) = v4;
  *&v259 = sub_252083924;
  *(&v259 + 1) = &block_descriptor_213;
  v60 = _Block_copy(&v258);
  v61 = v25;

  dispatch_sync(v9, v60);
  _Block_release(v60);
  LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

  if (v60)
  {
    __break(1u);
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

LABEL_23:
  MEMORY[0x28223BE20](v55);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAA0, &unk_2521451D0);
  sub_25214200C();
  v63 = *(v258 + 16);

  if (v63 == 1 && (isEscapingClosureAtFileLocation & 1) == 0)
  {
    v65 = swift_allocObject();
    *(v65 + 16) = v25;
    *(v65 + 24) = 1;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_2520A375C;
    *(v66 + 24) = v65;
    *&v260 = sub_2520A3768;
    *(&v260 + 1) = v66;
    *&v258 = MEMORY[0x277D85DD0];
    *(&v258 + 1) = v4;
    *&v259 = sub_252083924;
    *(&v259 + 1) = &block_descriptor_420;
    v67 = _Block_copy(&v258);
    v68 = v25;

    dispatch_sync(v9, v67);
    _Block_release(v67);
    v69 = swift_isEscapingClosureAtFileLocation();

    if ((v69 & 1) == 0)
    {
      v70 = v68[OBJC_IVAR____TtC11HearingTest12HTAudiometry_channel];
      *&v258 = v253;
      *(&v258 + 1) = v252;
      *&v259 = v70;
      *(&v259 + 1) = 0x3FF0000000000000;
      sub_252084B80(&v258);
      return;
    }

    goto LABEL_127;
  }

  v71 = v252;
  v72 = *&v25[OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel];
  v73 = &loc_252143000;
  v257 = isEscapingClosureAtFileLocation;
  v249 = v62;
  if (v72 == v252 && (isEscapingClosureAtFileLocation & 1) == 0)
  {
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_252143AB0;
    *(v74 + 32) = v5;
    *(v74 + 40) = v72 + 1.0;
    MEMORY[0x28223BE20](v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
    sub_25214200C();
    v75 = *(&v258 + 1);
    *&v272 = v258;
    if (*(&v258 + 1) && v259 != 2)
    {
      goto LABEL_140;
    }

    sub_2520806CC(v74);
    v76 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    v77 = v272;
    v78 = swift_allocObject();
    v78[2] = v25;
    v78[3] = v77;
    v78[4] = v76;
    v78[5] = 2;
    v79 = swift_allocObject();
    *(v79 + 16) = sub_2520A351C;
    *(v79 + 24) = v78;
    *&v260 = sub_2520A3768;
    *(&v260 + 1) = v79;
    *&v258 = MEMORY[0x277D85DD0];
    *(&v258 + 1) = v4;
    *&v259 = sub_252083924;
    *(&v259 + 1) = &block_descriptor_384;
    v80 = _Block_copy(&v258);
    v81 = v25;

    dispatch_sync(v9, v80);
    _Block_release(v80);
    LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();

    if (v80)
    {
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    MEMORY[0x28223BE20](v82);
    sub_25214200C();
    v83 = *(&v258 + 1);
    *&v272 = v258;
    if (*(&v258 + 1) && v259 != 1)
    {
      goto LABEL_143;
    }

    sub_2520806CC(&unk_28644C168);
    v84 = __OFADD__(v83, 1);
    v85 = v83 + 1;
    if (v84)
    {
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v86 = v272;
    v87 = swift_allocObject();
    v87[2] = v81;
    v87[3] = v86;
    v87[4] = v85;
    v87[5] = 1;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_2520A3528;
    *(v88 + 24) = v87;
    *&v260 = sub_2520A3768;
    *(&v260 + 1) = v88;
    *&v258 = MEMORY[0x277D85DD0];
    *(&v258 + 1) = v4;
    *&v259 = sub_252083924;
    *(&v259 + 1) = &block_descriptor_397;
    v89 = _Block_copy(&v258);
    LOBYTE(isEscapingClosureAtFileLocation) = BYTE8(v260);
    v90 = v81;

    dispatch_sync(v9, v89);
    _Block_release(v89);
    LOBYTE(v89) = swift_isEscapingClosureAtFileLocation();

    if (v89)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v91 = swift_allocObject();
    v92 = v91;
    *(v91 + 16) = v255;
    v93 = 0.0;
    if (v256)
    {
      v93 = 1.0;
    }

    *(v91 + 32) = v93;
    MEMORY[0x28223BE20](v91);
    sub_25214200C();
    v94 = *(&v258 + 1);
    *&v272 = v258;
    if (*(&v258 + 1) && v259 != 1)
    {
      goto LABEL_146;
    }

    sub_2520806CC(v92);
    v95 = v94 + 1;
    if (__OFADD__(v94, 1))
    {
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    v96 = v272;
    v73 = swift_allocObject();
    v73[2] = v90;
    v73[3] = v96;
    v73[4] = v95;
    v73[5] = 1;
    v97 = swift_allocObject();
    *(v97 + 16) = sub_2520A3534;
    *(v97 + 24) = v73;
    *&v260 = sub_2520A3768;
    *(&v260 + 1) = v97;
    *&v258 = MEMORY[0x277D85DD0];
    *(&v258 + 1) = v4;
    *&v259 = sub_252083924;
    *(&v259 + 1) = &block_descriptor_409;
    v98 = _Block_copy(&v258);
    v99 = v90;

    dispatch_sync(v9, v98);
    _Block_release(v98);
    LOBYTE(v98) = swift_isEscapingClosureAtFileLocation();

    if ((v98 & 1) == 0)
    {
      goto LABEL_60;
    }

    __break(1u);
  }

  v100 = *&v25[OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel];
  if (v100 == v71 && (isEscapingClosureAtFileLocation & 1) != 0)
  {
    v101 = swift_allocObject();
    *(v101 + 16) = *(v73 + 171);
    *(v101 + 32) = v5;
    *(v101 + 40) = v100 + -1.0;
    MEMORY[0x28223BE20](v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
    sub_25214200C();
    v102 = *(&v258 + 1);
    *&v272 = v258;
    if (*(&v258 + 1) && v259 != 2)
    {
      goto LABEL_150;
    }

    sub_2520806CC(v101);
    v103 = v102 + 1;
    if (__OFADD__(v102, 1))
    {
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    v104 = v272;
    v105 = swift_allocObject();
    v105[2] = v25;
    v105[3] = v104;
    v105[4] = v103;
    v105[5] = 2;
    v106 = swift_allocObject();
    *(v106 + 16) = sub_2520A351C;
    *(v106 + 24) = v105;
    *&v260 = sub_2520A3768;
    *(&v260 + 1) = v106;
    *&v258 = MEMORY[0x277D85DD0];
    *(&v258 + 1) = v4;
    *&v259 = sub_252083924;
    *(&v259 + 1) = &block_descriptor_347;
    v107 = _Block_copy(&v258);
    v108 = v25;

    dispatch_sync(v9, v107);
    _Block_release(v107);
    LOBYTE(v107) = swift_isEscapingClosureAtFileLocation();

    if (v107)
    {
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    MEMORY[0x28223BE20](v109);
    sub_25214200C();
    v110 = *(&v258 + 1);
    *&v272 = v258;
    if (*(&v258 + 1) && v259 != 1)
    {
      goto LABEL_153;
    }

    sub_2520806CC(&unk_28644C190);
    v84 = __OFADD__(v110, 1);
    v111 = v110 + 1;
    if (v84)
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    v112 = v272;
    v113 = swift_allocObject();
    v113[2] = v108;
    v113[3] = v112;
    v113[4] = v111;
    v113[5] = 1;
    v114 = swift_allocObject();
    *(v114 + 16) = sub_2520A3528;
    *(v114 + 24) = v113;
    *&v260 = sub_2520A3768;
    *(&v260 + 1) = v114;
    *&v258 = MEMORY[0x277D85DD0];
    *(&v258 + 1) = v4;
    *&v259 = sub_252083924;
    *(&v259 + 1) = &block_descriptor_360;
    v115 = _Block_copy(&v258);
    v116 = v108;

    dispatch_sync(v9, v115);
    _Block_release(v115);
    LOBYTE(v115) = swift_isEscapingClosureAtFileLocation();

    if (v115)
    {
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    v117 = swift_allocObject();
    v118 = v117;
    *(v117 + 16) = v255;
    v119 = 0.0;
    if (v256)
    {
      v119 = 1.0;
    }

    *(v117 + 32) = v119;
    MEMORY[0x28223BE20](v117);
    sub_25214200C();
    v120 = *(&v258 + 1);
    *&v272 = v258;
    if (*(&v258 + 1) && v259 != 1)
    {
      goto LABEL_156;
    }

    sub_2520806CC(v118);
    v121 = v120 + 1;
    if (__OFADD__(v120, 1))
    {
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    v122 = v272;
    v123 = swift_allocObject();
    v123[2] = v116;
    v123[3] = v122;
    v123[4] = v121;
    v123[5] = 1;
    v124 = swift_allocObject();
    *(v124 + 16) = sub_2520A3534;
    *(v124 + 24) = v123;
    *&v260 = sub_2520A3768;
    *(&v260 + 1) = v124;
    *&v258 = MEMORY[0x277D85DD0];
    *(&v258 + 1) = v4;
    *&v259 = sub_252083924;
    *(&v259 + 1) = &block_descriptor_372;
    v125 = _Block_copy(&v258);
    v126 = v116;

    dispatch_sync(v9, v125);
    _Block_release(v125);
    LOBYTE(v125) = swift_isEscapingClosureAtFileLocation();

    if (v125)
    {
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }
  }

LABEL_60:
  MEMORY[0x28223BE20](v64);
  sub_25214200C();
  v127 = v258 + 1;
  if (__OFADD__(v258, 1))
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v128 = swift_allocObject();
  *(v128 + 16) = v25;
  *(v128 + 24) = v127;
  v129 = swift_allocObject();
  *(v129 + 16) = sub_25209DB84;
  *(v129 + 24) = v128;
  *&v260 = sub_2520A3768;
  *(&v260 + 1) = v129;
  *&v258 = MEMORY[0x277D85DD0];
  *(&v258 + 1) = v4;
  *&v259 = sub_252083924;
  *(&v259 + 1) = &block_descriptor_224;
  v130 = _Block_copy(&v258);
  v131 = v25;

  dispatch_sync(v9, v130);
  _Block_release(v130);
  LOBYTE(v130) = swift_isEscapingClosureAtFileLocation();

  if (v130)
  {
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE070, &qword_252144AE0);
  v132 = swift_allocObject();
  *(v132 + 16) = v255;
  *&v258 = 0;
  *(&v258 + 1) = 0xE000000000000000;
  v133 = sub_25214222C();
  MEMORY[0x28223BE20](v133);
  sub_25214200C();
  v250 = 0;
  v134 = sub_25214244C();
  MEMORY[0x253098DA0](v134);

  MEMORY[0x253098DA0](8238, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
  v135 = swift_allocObject();
  v136 = MEMORY[0x277D839F8];
  *(v135 + 16) = v255;
  v137 = MEMORY[0x277D83A80];
  *(v135 + 56) = v136;
  *(v135 + 64) = v137;
  *(v135 + 32) = v5;
  v138 = sub_252141BAC();
  MEMORY[0x253098DA0](v138);

  MEMORY[0x253098DA0](8236, 0xE200000000000000);
  v139 = swift_allocObject();
  *(v139 + 16) = v255;
  *(v139 + 56) = v136;
  *(v139 + 64) = v137;
  *(v139 + 32) = v253;
  v140 = sub_252141BAC();
  MEMORY[0x253098DA0](v140);

  MEMORY[0x253098DA0](32, 0xE100000000000000);
  sub_252141E8C();
  MEMORY[0x253098DA0](8250, 0xE200000000000000);
  *&v272 = v257 & 1;
  v141 = sub_25214244C();
  MEMORY[0x253098DA0](v141);

  v142 = v258;
  *(v132 + 56) = MEMORY[0x277D837D0];
  *(v132 + 32) = v142;
  sub_25214252C();

  v143 = swift_allocObject();
  *(v143 + 16) = xmmword_252143AB0;
  *(v143 + 32) = v5;
  *(v143 + 40) = v252;
  MEMORY[0x28223BE20](v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  v144 = v250;
  sub_25214200C();
  v145 = *(&v258 + 1);
  *&v272 = v258;
  if (*(&v258 + 1) && v259 != 2)
  {
    goto LABEL_130;
  }

  sub_2520806CC(v143);
  v146 = v145 + 1;
  if (__OFADD__(v145, 1))
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v147 = v272;
  v148 = swift_allocObject();
  v148[2] = v131;
  v148[3] = v147;
  v148[4] = v146;
  v148[5] = 2;
  v149 = swift_allocObject();
  *(v149 + 16) = sub_25209DB98;
  *(v149 + 24) = v148;
  *&v260 = sub_2520A3768;
  *(&v260 + 1) = v149;
  *&v258 = MEMORY[0x277D85DD0];
  *(&v258 + 1) = v4;
  *&v259 = sub_252083924;
  *(&v259 + 1) = &block_descriptor_236;
  v150 = _Block_copy(&v258);
  v151 = v131;

  dispatch_sync(v9, v150);
  _Block_release(v150);
  LOBYTE(v150) = swift_isEscapingClosureAtFileLocation();

  if (v150)
  {
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v152 = swift_allocObject();
  v153 = v152;
  *(v152 + 16) = v255;
  v154 = 0.0;
  if (v257)
  {
    v154 = 1.0;
  }

  *(v152 + 32) = v154;
  MEMORY[0x28223BE20](v152);
  sub_25214200C();
  v155 = *(&v258 + 1);
  *&v272 = v258;
  if (*(&v258 + 1) && v259 != 1)
  {
    goto LABEL_133;
  }

  sub_2520806CC(v153);
  v156 = v155 + 1;
  if (__OFADD__(v155, 1))
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v157 = v272;
  v158 = swift_allocObject();
  v158[2] = v151;
  v158[3] = v157;
  v158[4] = v156;
  v158[5] = 1;
  v159 = swift_allocObject();
  *(v159 + 16) = sub_25209DBA4;
  *(v159 + 24) = v158;
  *&v260 = sub_2520A3768;
  *(&v260 + 1) = v159;
  *&v258 = MEMORY[0x277D85DD0];
  *(&v258 + 1) = v4;
  *&v259 = sub_252083924;
  *(&v259 + 1) = &block_descriptor_247;
  v160 = _Block_copy(&v258);
  v161 = v151;

  dispatch_sync(v9, v160);
  _Block_release(v160);
  v162 = swift_isEscapingClosureAtFileLocation();

  if (v162)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v163 = swift_allocObject();
  v164 = v163;
  *(v163 + 16) = v255;
  v165 = 0.0;
  if (v256)
  {
    v165 = 1.0;
  }

  *(v163 + 32) = v165;
  MEMORY[0x28223BE20](v163);
  sub_25214200C();
  v166 = *(&v258 + 1);
  *&v272 = v258;
  if (*(&v258 + 1) && v259 != 1)
  {
    goto LABEL_136;
  }

  v257 = v144;
  sub_2520806CC(v164);
  if (__OFADD__(v166, 1))
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v167 = v272;
  v168 = swift_allocObject();
  v168[2] = v161;
  v168[3] = v167;
  v168[4] = v166 + 1;
  v168[5] = 1;
  v169 = swift_allocObject();
  *(v169 + 16) = sub_25209DBD0;
  *(v169 + 24) = v168;
  *&v260 = sub_2520A3768;
  *(&v260 + 1) = v169;
  *&v258 = MEMORY[0x277D85DD0];
  *(&v258 + 1) = v4;
  *&v259 = sub_252083924;
  *(&v259 + 1) = &block_descriptor_257;
  v170 = _Block_copy(&v258);
  v171 = v161;

  dispatch_sync(v9, v170);
  _Block_release(v170);
  v172 = swift_isEscapingClosureAtFileLocation();

  if (v172)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v173 = swift_allocObject();
  *(v173 + 16) = v171;
  *(v173 + 24) = 1;
  v174 = swift_allocObject();
  *(v174 + 16) = sub_2520A375C;
  *(v174 + 24) = v173;
  *&v260 = sub_2520A3768;
  *(&v260 + 1) = v174;
  *&v258 = MEMORY[0x277D85DD0];
  *(&v258 + 1) = v4;
  *&v259 = sub_252083924;
  *(&v259 + 1) = &block_descriptor_268;
  v175 = _Block_copy(&v258);
  v176 = v171;

  dispatch_sync(v9, v175);
  _Block_release(v175);
  v177 = swift_isEscapingClosureAtFileLocation();

  if (v177)
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  MEMORY[0x28223BE20](v178);
  v179 = v257;
  v180 = sub_25214200C();
  if (*&v258 >= 0.9)
  {
    MEMORY[0x28223BE20](v180);
    sub_25214200C();
    if (__OFADD__(v260, 1))
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    *&v260 = v260 + 1;
    v181 = swift_allocObject();
    v182 = v269;
    *(v181 + 184) = v268;
    *(v181 + 200) = v182;
    *(v181 + 216) = v270;
    v183 = v265;
    *(v181 + 120) = v264;
    *(v181 + 136) = v183;
    v184 = v267;
    *(v181 + 152) = v266;
    *(v181 + 168) = v184;
    v185 = v261;
    *(v181 + 56) = v260;
    *(v181 + 72) = v185;
    v186 = v263;
    *(v181 + 88) = v262;
    *(v181 + 104) = v186;
    v187 = v259;
    *(v181 + 24) = v258;
    *(v181 + 16) = v176;
    *(v181 + 232) = v271;
    *(v181 + 40) = v187;
    v188 = swift_allocObject();
    *(v188 + 16) = sub_2520A19F0;
    *(v188 + 24) = v181;
    *&v274 = sub_2520A3768;
    *(&v274 + 1) = v188;
    *&v272 = MEMORY[0x277D85DD0];
    *(&v272 + 1) = v4;
    *&v273 = sub_252083924;
    *(&v273 + 1) = &block_descriptor_335;
    v189 = _Block_copy(&v272);
    v190 = v176;

    dispatch_sync(v9, v189);
    _Block_release(v189);
    LOBYTE(v189) = swift_isEscapingClosureAtFileLocation();

    if (v189)
    {
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }
  }

  v191 = sub_25208DC58(0);
  if (v191)
  {
    sub_252085D18(0, 0, 0);
    return;
  }

  MEMORY[0x28223BE20](v191);
  sub_25214200C();
  v192 = *(v258 + 16);

  if (v192)
  {

    v194 = sub_2520A0A6C(v193);

    MEMORY[0x28223BE20](v195);
    sub_25214200C();
    v196 = *(v258 + 16);
    v197 = (v258 + 32);
    while (v196)
    {
      v198 = *v197++;
      --v196;
      if ((v198 & 1) == 0)
      {

        MEMORY[0x28223BE20](v199);
        sub_25214200C();
        v200 = *(v258 + 16);
        v201 = (v258 + 32);
        while (v200)
        {
          v202 = *v201++;
          --v200;
          if (v202 == 1)
          {

            goto LABEL_92;
          }
        }

        v225 = v176;
        v226 = sub_2520A1718(v194, v225, &OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel);

        if (*(v226 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB8, &qword_252147FA0);
          v227 = sub_25214235C();
          goto LABEL_109;
        }

LABEL_108:
        v227 = MEMORY[0x277D84F98];
LABEL_109:
        *&v258 = v227;

        sub_25209BFC4(v237, 1, &v258);
        if (v179)
        {
          goto LABEL_163;
        }

        v238 = v258;
        v239 = swift_allocObject();
        *(v239 + 16) = v225;
        *(v239 + 24) = v238;
        v240 = swift_allocObject();
        *(v240 + 16) = sub_2520A1940;
        *(v240 + 24) = v239;
        *&v260 = sub_2520A3768;
        *(&v260 + 1) = v240;
        *&v258 = MEMORY[0x277D85DD0];
        *(&v258 + 1) = v4;
        *&v259 = sub_252083924;
        *(&v259 + 1) = &block_descriptor_293;
        v241 = _Block_copy(&v258);
        v242 = v225;

        dispatch_sync(v9, v241);
        _Block_release(v241);
        v243 = swift_isEscapingClosureAtFileLocation();

        if ((v243 & 1) == 0)
        {
          v244 = swift_allocObject();
          *(v244 + 16) = v242;
          *(v244 + 24) = 1;
          v245 = swift_allocObject();
          *(v245 + 16) = sub_2520A194C;
          *(v245 + 24) = v244;
          *&v260 = sub_2520A3768;
          *(&v260 + 1) = v245;
          *&v258 = MEMORY[0x277D85DD0];
          *(&v258 + 1) = v4;
          *&v259 = sub_252083924;
          *(&v259 + 1) = &block_descriptor_303;
          v246 = _Block_copy(&v258);
          v236 = v242;

          dispatch_sync(v9, v246);
          _Block_release(v246);
          v247 = swift_isEscapingClosureAtFileLocation();

          if (v247)
          {
            goto LABEL_161;
          }

          goto LABEL_112;
        }

        goto LABEL_160;
      }
    }

    v211 = v176;
    v212 = sub_2520A1718(v194, v211, &OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel);

    if (*(v212 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB8, &qword_252147FA0);
      v213 = sub_25214235C();
    }

    else
    {
      v213 = MEMORY[0x277D84F98];
    }

    *&v258 = v213;

    sub_25209BFC4(v228, 1, &v258);
    if (!v179)
    {

      v229 = v258;
      v230 = swift_allocObject();
      *(v230 + 16) = v211;
      *(v230 + 24) = v229;
      v231 = swift_allocObject();
      *(v231 + 16) = sub_2520A3508;
      *(v231 + 24) = v230;
      *&v260 = sub_2520A3768;
      *(&v260 + 1) = v231;
      *&v258 = MEMORY[0x277D85DD0];
      *(&v258 + 1) = v4;
      *&v259 = sub_252083924;
      *(&v259 + 1) = &block_descriptor_314;
      v232 = _Block_copy(&v258);
      v233 = v211;

      dispatch_sync(v9, v232);
      _Block_release(v232);
      v234 = swift_isEscapingClosureAtFileLocation();

      if (v234)
      {
        goto LABEL_159;
      }

      v179 = swift_allocObject();
      *(v179 + 16) = v233;
      *(v179 + 24) = 1;
      v225 = swift_allocObject();
      *(v225 + 2) = sub_2520A3760;
      *(v225 + 3) = v179;
      *&v260 = sub_2520A3768;
      *(&v260 + 1) = v225;
      *&v258 = MEMORY[0x277D85DD0];
      *(&v258 + 1) = v4;
      *&v259 = sub_252083924;
      *(&v259 + 1) = &block_descriptor_325;
      v235 = _Block_copy(&v258);
      v236 = v233;

      dispatch_sync(v9, v235);
      _Block_release(v235);
      v9 = swift_isEscapingClosureAtFileLocation();

      if (v9)
      {
        __break(1u);
        goto LABEL_108;
      }

LABEL_112:
      v248 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
      swift_beginAccess();
      v236[v248] = 1;
      goto LABEL_113;
    }

    goto LABEL_163;
  }

LABEL_92:
  v258 = 0uLL;
  v259 = xmmword_252143B10;
  sub_252084B80(&v258);
  v203 = sub_25208F62C(2, 2, 2.2, 12.5);
  if (v179)
  {
    MEMORY[0x28223BE20](v203);
    sub_25214200C();
    v206 = *(v258 + 16);
    if (v206)
    {
      v207 = v258 + 72 * v206;
      v258 = *(v207 - 40);
      v208 = *(v207 - 24);
      v209 = *(v207 - 8);
      v210 = *(v207 + 8);
      *&v262 = *(v207 + 24);
      v260 = v209;
      v261 = v210;
      v259 = v208;
      sub_25209D3B0(&v258, &v272);

      v274 = v260;
      v275 = v261;
      v276 = v262;
      v272 = v258;
      v273 = v259;
      sub_252081908(&v272);

      sub_25209D35C(&v258);
    }

    else
    {
    }
  }

  else
  {
    v214 = v203;
    v215 = v204;
    v216 = v205;

    sub_252085D18(v217, v215, v216);

    v218 = sub_252090F78(v214, v215, v216);

    if ((v218 & 1) == 0)
    {
      v219 = swift_allocObject();
      *(v219 + 16) = v176;
      *(v219 + 24) = 1065353216;
      v220 = swift_allocObject();
      *(v220 + 16) = sub_2520A0AE0;
      *(v220 + 24) = v219;
      *&v260 = sub_2520A3768;
      *(&v260 + 1) = v220;
      *&v258 = MEMORY[0x277D85DD0];
      *(&v258 + 1) = v4;
      *&v259 = sub_252083924;
      *(&v259 + 1) = &block_descriptor_283;
      v221 = _Block_copy(&v258);
      v222 = v176;

      dispatch_sync(v9, v221);
      _Block_release(v221);
      v223 = swift_isEscapingClosureAtFileLocation();

      if (v223)
      {
LABEL_162:
        __break(1u);
LABEL_163:
        swift_unexpectedError();
        __break(1u);
        return;
      }

      sub_252091D3C();
      v224 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
      swift_beginAccess();
      v222[v224] = 1;
LABEL_113:
      sub_252080BC4(sub_2520A3008, &block_descriptor_1303);
      sub_252080BC4(sub_2520A2ECC, &block_descriptor_1269);
    }
  }
}

uint64_t sub_25208DC58(char a1)
{
  isEscapingClosureAtFileLocation = v1;
  v8 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_previousAudiogram;
  v9 = swift_beginAccess();
  if (*(*(isEscapingClosureAtFileLocation + v8) + 16))
  {
    v10 = sub_252094B04();
    return v10 & 1;
  }

  v11 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  MEMORY[0x28223BE20](v9);
  p_isa = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA8, &qword_252143D60);
  v13 = 0;
  sub_25214200C();
  v14 = *(aBlock + 16);

  if (!v14 || (MEMORY[0x28223BE20](v15), sub_25214200C(), (aBlock & 1) != 0))
  {
    p_isa = swift_allocObject();
    p_isa[2] = isEscapingClosureAtFileLocation;
    *(p_isa + 24) = 1;
    v13 = swift_allocObject();
    v13[2] = sub_2520A3758;
    v13[3] = p_isa;
    v148 = sub_2520A3768;
    v149 = v13;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v146 = sub_252083924;
    v147 = &block_descriptor_884;
    v16 = _Block_copy(&aBlock);
    v17 = isEscapingClosureAtFileLocation;

    dispatch_sync(v11, v16);
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v18 = sub_25209D6D8(&unk_28644C0F0);
  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_147;
  }

  v4 = *(v18 + 32);

  MEMORY[0x28223BE20](v20);
  sub_25214200C();
  v19 = *(aBlock + 16);
  if (v19)
  {
    v2 = *(aBlock + 32);

    MEMORY[0x28223BE20](v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
    sub_25214200C();
    v22 = sub_2520EEE44(0, aBlock, *(&aBlock + 1), v146);

    if (!v13)
    {
      MEMORY[0x28223BE20](v23);
      sub_25214200C();
      v29 = sub_2520EEE44(1, aBlock, *(&aBlock + 1), v146);

      v31 = *(v29 + 16);
      v140 = v29;
      v32 = (v29 + 8 * v31 + 24);
      v139 = v31;
      if (!v31)
      {
        v32 = (isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_initialLevel);
      }

      v3 = *v32;
      MEMORY[0x28223BE20](v30);
      v138 = v11;
      isUniquelyReferenced_nonNull_native = sub_25214200C();
      v34 = 0;
      v35 = aBlock;
      v142 = *(v22 + 16);
      v137 = MEMORY[0x277D84F90];
      v143 = v22 + 32;
      p_isa = &v144;
      v141 = v22;
      while (v142 != v34)
      {
        v19 = *(v22 + 16);
        if (v34 >= v19)
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        v19 = *(v35 + 16);
        if (v34 == v19)
        {
          break;
        }

        if (v34 >= v19)
        {
          goto LABEL_143;
        }

        v5 = *(v143 + 8 * v34);
        v36 = *(v35 + 32 + 8 * v34);
        v144 = &unk_28644C118;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        v144 = sub_2520AABEC(1, sub_2520A3B60);
        MEMORY[0x28223BE20](v144[2]);
        v38 = sub_2520AABEC(v37, sub_2520A26A4);

        v144 = v38;
        MEMORY[0x28223BE20](*(v38 + 16));
        v40 = sub_2520AABEC(v39, sub_2520A3B48);

        v19 = *(v40 + 16);
        if (!v19)
        {
          goto LABEL_144;
        }

        v41 = *(v40 + 32);

        ++v34;
        v22 = v141;
        if (v5 == v41)
        {
          v42 = v137;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v137;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_25209B214(0, *(v137 + 16) + 1, 1);
            v42 = aBlock;
          }

          v44 = *(v42 + 16);
          v43 = *(v42 + 24);
          if (v44 >= v43 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_25209B214((v43 > 1), v44 + 1, 1);
            v42 = aBlock;
          }

          *(v42 + 16) = v44 + 1;
          v137 = v42;
          v45 = v42 + 16 * v44;
          *(v45 + 32) = v5;
          *(v45 + 40) = v36;
          v22 = v141;
        }
      }

      v46 = *(v137 + 16);
      v47 = v140;
      if (v46)
      {
        v5 = *(v137 + 16 + 16 * v46 + 8);

        v49 = v5 == 0.0;
      }

      else
      {

        v49 = 1;
      }

      LODWORD(v137) = v49;
      v50 = 0;
      v51 = MEMORY[0x277D84F90];
      p_isa = &v144;
      while (v142 != v50)
      {
        v19 = *(v22 + 16);
        if (v50 >= v19)
        {
          goto LABEL_142;
        }

        if (v139 == v50)
        {
          break;
        }

        v19 = *(v47 + 16);
        if (v50 >= v19)
        {
          goto LABEL_145;
        }

        v5 = *(v143 + 8 * v50);
        v52 = *(v140 + 32 + 8 * v50);
        v144 = &unk_28644C140;
        MEMORY[0x28223BE20](v48);
        v144 = sub_2520AABEC(1, sub_2520A3B60);
        MEMORY[0x28223BE20](v144[2]);
        v54 = sub_2520AABEC(v53, sub_2520A3374);

        v144 = v54;
        MEMORY[0x28223BE20](*(v54 + 16));
        v56 = sub_2520AABEC(v55, sub_2520A3B48);

        v19 = *(v56 + 16);
        if (!v19)
        {
          goto LABEL_146;
        }

        v57 = *(v56 + 32);

        ++v50;
        v22 = v141;
        v47 = v140;
        if (v5 == v57)
        {
          v48 = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v51;
          if ((v48 & 1) == 0)
          {
            v48 = sub_25209B214(0, *(v51 + 16) + 1, 1);
            v51 = aBlock;
          }

          v59 = *(v51 + 16);
          v58 = *(v51 + 24);
          if (v59 >= v58 >> 1)
          {
            v48 = sub_25209B214((v58 > 1), v59 + 1, 1);
            v51 = aBlock;
          }

          *(v51 + 16) = v59 + 1;
          v60 = v51 + 16 * v59;
          *(v60 + 32) = v5;
          *(v60 + 40) = v52;
          v22 = v141;
          v47 = v140;
        }
      }

      v61 = *(v51 + 16);
      v62 = (v51 + 16 + 16 * v61 + 8);
      if (!v61)
      {
        v62 = (isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_initialLevel);
      }

      v5 = *v62;

      MEMORY[0x28223BE20](v63);
      sub_25214200C();
      v64 = *(aBlock + 16);
      v65 = 32;
      do
      {
        if (!v64)
        {

          goto LABEL_51;
        }

        v66 = *(aBlock + v65);
        v65 += 8;
        --v64;
      }

      while (v66 != v2);

      if ((a1 & 1) == 0)
      {
        MEMORY[0x28223BE20](v67);
        sub_25214200C();
        v142 = 0;
        v83 = 0;
        v84 = aBlock;
        p_isa = (aBlock + 24);
        v85 = *(v22 + 16);
        v13 = MEMORY[0x277D84F90];
        v86 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v85 == v83)
          {
            goto LABEL_75;
          }

          v19 = *(v22 + 16);
          if (v83 >= v19)
          {
            goto LABEL_150;
          }

          v19 = *(v84 + 16);
          if (v83 == v19)
          {
LABEL_75:

            v93 = *(v86 + 16);
            p_isa = &v138->isa;
            if (v93)
            {
              *&aBlock = v13;
              sub_25209B1F4(0, v93, 0);
              v94 = aBlock;
              v95 = *(aBlock + 16);
              v96 = 40;
              do
              {
                v97 = *(v86 + v96);
                *&aBlock = v94;
                v98 = *(v94 + 24);
                if (v95 >= v98 >> 1)
                {
                  sub_25209B1F4((v98 > 1), v95 + 1, 1);
                  v94 = aBlock;
                }

                *(v94 + 16) = v95 + 1;
                *(v94 + 8 * v95 + 32) = v97;
                v96 += 16;
                ++v95;
                --v93;
              }

              while (v93);
            }

            else
            {

              v94 = MEMORY[0x277D84F90];
            }

            v102 = *(v94 + 16);
            if (!v102 || ((v103 = *(v94 + 8 * v102 + 24), v103 != 1.0) || v3 != *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel)) && (v103 != 0.0 || v3 != *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel)))
            {
              v110 = 32;
              v111 = *(v94 + 16);
              do
              {
                v112 = v111;
                if (!v111)
                {
                  break;
                }

                v113 = *(v94 + v110);
                v110 += 8;
                --v111;
              }

              while (v113 != 0.0);
              v114 = 32;
              do
              {
                if (!v102)
                {
                  goto LABEL_107;
                }

                v115 = *(v94 + v114);
                v114 += 8;
                --v102;
              }

              while (v115 != 1.0);

              if (!v112)
              {
                goto LABEL_108;
              }

              MEMORY[0x28223BE20](v116);
              sub_25214200C();
              v106 = aBlock;
              v109 = *(aBlock + 16);
              if (v109)
              {
                goto LABEL_165;
              }

              goto LABEL_105;
            }

            MEMORY[0x28223BE20](v104);
            sub_25214200C();
            v77 = aBlock;
            v80 = *(aBlock + 16);
            if (v80)
            {
              goto LABEL_158;
            }

            goto LABEL_95;
          }

          if (v83 >= v19)
          {
            goto LABEL_151;
          }

          v87 = *(v143 + 8 * v83++);
          if (vabdd_f64(v87, v2) < 0.01)
          {
            v88 = p_isa[v83];
            v89 = swift_isUniquelyReferenced_nonNull_native();
            *&aBlock = v86;
            if ((v89 & 1) == 0)
            {
              sub_25209B214(0, *(v86 + 16) + 1, 1);
              v86 = aBlock;
            }

            v91 = *(v86 + 16);
            v90 = *(v86 + 24);
            if (v91 >= v90 >> 1)
            {
              sub_25209B214((v90 > 1), v91 + 1, 1);
              v86 = aBlock;
            }

            *(v86 + 16) = v91 + 1;
            v92 = v86 + 16 * v91;
            *(v92 + 32) = v87;
            *(v92 + 40) = v88;
            v22 = v141;
          }
        }
      }

LABEL_51:

      MEMORY[0x28223BE20](v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
      sub_25214200C();
      v69 = v146;
      v70 = *&aBlock;
      p_isa = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252143AC0;
      *(inited + 32) = v2;
      v72 = sub_25209D600(inited);
      swift_setDeallocating();
      v19 = *(v72 + 16);
      if (!v19)
      {
        goto LABEL_152;
      }

      v73 = *(v72 + 32);

      if (v69 == 2)
      {
        v75 = 0.0;
      }

      else
      {
        v75 = v70;
      }

      if (v69 != 2 && v73 == v75)
      {
        MEMORY[0x28223BE20](v74);
        p_isa = &v138->isa;
        sub_25214200C();
        v13 = aBlock;
        v19 = *(aBlock + 16);
        if (v19)
        {
          goto LABEL_154;
        }

        goto LABEL_58;
      }

      if (v2 == v4)
      {
        if (v137)
        {
          v82 = v5 + 10.0;
          goto LABEL_84;
        }

        v101 = v5 + -10.0;
      }

      else
      {
        MEMORY[0x28223BE20](v74);
        sub_25214200C();
        v99 = *(aBlock + 16);
        if (v99)
        {
          v100 = *(aBlock + 8 * v99 + 24);

          if (v100 == 0.0)
          {
            v82 = v3 + 10.0;
LABEL_84:
            if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel) >= v82)
            {
              v2 = v82;
            }

            else
            {
              v2 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel);
            }

LABEL_124:
            MEMORY[0x28223BE20](v74);
            sub_25214200C();
            v19 = *(aBlock + 16);
            if (!v19)
            {
              goto LABEL_153;
            }

            v3 = *(aBlock + 32);

            v126 = swift_initStackObject();
            *(v126 + 16) = xmmword_252143AC0;
            *(v126 + 32) = v3;
            v77 = sub_25209D600(v126);
            swift_setDeallocating();
            if (!v77[2])
            {
              __break(1u);
LABEL_127:

              goto LABEL_128;
            }

LABEL_140:
            v129 = v77[4];

            v130 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_channel);
            *&aBlock = v129;
            *(&aBlock + 1) = v2;
            v146 = v130;
            v147 = 0x3FF0000000000000;
            sub_252084B80(&aBlock);
            v10 = 1;
            return v10 & 1;
          }
        }

        else
        {
        }

        v101 = v3 + -10.0;
      }

      if (v101 > *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel))
      {
        v2 = v101;
      }

      else
      {
        v2 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel);
      }

      goto LABEL_124;
    }

    v24 = swift_allocObject();
    *(v24 + 16) = isEscapingClosureAtFileLocation;
    *(v24 + 24) = 1;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_2520A3758;
    *(v25 + 24) = v24;
    v148 = sub_2520A3768;
    v149 = v25;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v146 = sub_252083924;
    v147 = &block_descriptor_820;
    v26 = _Block_copy(&aBlock);
    p_isa = v149;
    v27 = isEscapingClosureAtFileLocation;

    dispatch_sync(v11, v26);
    _Block_release(v26);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_12:
      v10 = 0;
      return v10 & 1;
    }
  }

  else
  {
LABEL_148:
    __break(1u);
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  sub_252098E44(v13, (v13 + 4), 1, (2 * v19) | 1);
  v132 = v131;

  v13 = v132;
LABEL_58:
  v76 = swift_allocObject();
  *(v76 + 16) = isEscapingClosureAtFileLocation;
  *(v76 + 24) = v13;
  v77 = swift_allocObject();
  v77[2] = sub_2520A3620;
  v77[3] = v76;
  v148 = sub_2520A3768;
  v149 = v77;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v146 = sub_252083924;
  v147 = &block_descriptor_873;
  v78 = _Block_copy(&aBlock);
  isEscapingClosureAtFileLocation = isEscapingClosureAtFileLocation;

  dispatch_sync(p_isa, v78);
  _Block_release(v78);
  v79 = swift_isEscapingClosureAtFileLocation();

  if (v79)
  {
    __break(1u);
LABEL_156:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_158:
      sub_252098E44(v77, (v77 + 4), 1, (2 * v80) | 1);
      v134 = v133;

      v77 = v134;
LABEL_95:
      v105 = swift_allocObject();
      *(v105 + 16) = isEscapingClosureAtFileLocation;
      *(v105 + 24) = v77;
      v106 = swift_allocObject();
      *(v106 + 16) = sub_2520A3620;
      *(v106 + 24) = v105;
      v148 = sub_2520A3768;
      v149 = v106;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v146 = sub_252083924;
      v147 = &block_descriptor_858;
      v107 = _Block_copy(&aBlock);
      isEscapingClosureAtFileLocation = isEscapingClosureAtFileLocation;

      dispatch_sync(p_isa, v107);
      _Block_release(v107);
      v108 = swift_isEscapingClosureAtFileLocation();

      if ((v108 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
      do
      {
        __break(1u);
LABEL_165:
        sub_252098E44(v106, v106 + 32, 1, (2 * v109) | 1);
        v136 = v135;

        v106 = v136;
LABEL_105:
        v117 = swift_allocObject();
        *(v117 + 16) = isEscapingClosureAtFileLocation;
        *(v117 + 24) = v106;
        v118 = swift_allocObject();
        *(v118 + 16) = sub_2520A3620;
        *(v118 + 24) = v117;
        v148 = sub_2520A3768;
        v149 = v118;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v146 = sub_252083924;
        v147 = &block_descriptor_846;
        v119 = _Block_copy(&aBlock);
        isEscapingClosureAtFileLocation = isEscapingClosureAtFileLocation;

        dispatch_sync(p_isa, v119);
        _Block_release(v119);
        v120 = swift_isEscapingClosureAtFileLocation();

        if ((v120 & 1) == 0)
        {
          goto LABEL_59;
        }

        __break(1u);
LABEL_107:

LABEL_108:
        if (v2 != v4)
        {
          goto LABEL_116;
        }

        MEMORY[0x28223BE20](v116);
        v106 = v142;
        sub_25214200C();

        v109 = *(&aBlock + 1);
        v122 = *(&aBlock + 1) - 1;
        if (__OFSUB__(*(&aBlock + 1), 1))
        {
          goto LABEL_160;
        }

        MEMORY[0x28223BE20](v121);
        sub_25214200C();
        v109 = *(&aBlock + 1);
        if (*(&aBlock + 1) < v122 || v146 < 1)
        {
          goto LABEL_161;
        }

        v109 = v122 * v146;
        if ((v122 * v146) >> 64 != (v122 * v146) >> 63)
        {
          goto LABEL_162;
        }

        if ((v109 & 0x8000000000000000) != 0)
        {
          goto LABEL_163;
        }
      }

      while (v109 >= *(aBlock + 16));
      v4 = *(aBlock + 8 * v109 + 32);

      if (v4 != v2)
      {
        if (!v137)
        {
          v127 = v5 + -10.0;
          goto LABEL_135;
        }

        v125 = v5 + 10.0;
        goto LABEL_131;
      }

LABEL_116:
      MEMORY[0x28223BE20](v116);
      sub_25214200C();
      v123 = *(aBlock + 16);
      if (!v123)
      {
        goto LABEL_127;
      }

      v124 = *(aBlock + 8 * v123 + 24);

      if (v124 == 0.0)
      {
        v125 = v3 + 10.0;
LABEL_131:
        if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel) >= v125)
        {
          v2 = v125;
        }

        else
        {
          v2 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel);
        }

        goto LABEL_138;
      }

LABEL_128:
      v127 = v3 + -10.0;
LABEL_135:
      if (v127 > *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel))
      {
        v2 = v127;
      }

      else
      {
        v2 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel);
      }

LABEL_138:
      MEMORY[0x28223BE20](v116);
      v77 = v142;
      sub_25214200C();
      v80 = *(aBlock + 16);
      if (!v80)
      {
        goto LABEL_156;
      }

      v3 = *(aBlock + 32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      v128 = swift_initStackObject();
      *(v128 + 16) = xmmword_252143AC0;
      *(v128 + 32) = v3;
      v77 = sub_25209D600(v128);
      swift_setDeallocating();
      v80 = v77[2];
      if (v80)
      {
        goto LABEL_140;
      }
    }

    v81 = 0;
  }

  else
  {
LABEL_59:
    v81 = 1;
  }

  v10 = sub_25208DC58(v81);
  return v10 & 1;
}

uint64_t sub_25208F534(uint64_t a1)
{
  result = MEMORY[0x253099040](*(a1 + 16), MEMORY[0x277D839F8], MEMORY[0x277D83A18]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_25213EA8C(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25208F62C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = v5;
  v181 = a1;
  v182 = a2;
  v185 = a4;
  v178 = a3;
  *&v7 = MEMORY[0x277D84F90];
  v211 = *MEMORY[0x277D85DE8];
  v210 = MEMORY[0x277D84F90];

  v9 = sub_25209D6D8(v8);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
  inited = swift_initStackObject();
  v202 = xmmword_252143AB0;
  *(inited + 16) = xmmword_252143AB0;
  v12 = *(v9 + 16);
  v204 = NAN;
  vDSP_minvD((v9 + 32), 1, &v204, v12);
  *(inited + 32) = v204;
  v13 = *(v9 + 16);
  v204 = NAN;
  vDSP_maxvD((v9 + 32), 1, &v204, v13);
  v14 = v204;

  *(inited + 40) = v14;
  *&v15 = COERCE_DOUBLE(sub_2520AA548(inited, &unk_28644BE80));

  v204 = *&v7;
  v16 = v4;
  sub_25209B1F4(0, 6, 0);
  v17 = v204;
  v18 = swift_initStackObject();
  v201 = xmmword_252143AC0;
  *(v18 + 16) = xmmword_252143AC0;
  *(v18 + 32) = 0x407F400000000000;
  *&v19 = COERCE_DOUBLE(sub_25209D6D8(v18));
  swift_setDeallocating();
  v20 = *(v19 + 16);
  if (!v20)
  {
    goto LABEL_174;
  }

  v191 = v10;
  v14 = *(v19 + 32);

  v10 = *(*&v17 + 16);
  v20 = *(*&v17 + 24);
  v19 = v10 + 1;
  if (v10 >= v20 >> 1)
  {
    goto LABEL_175;
  }

LABEL_3:
  *(*&v17 + 16) = *&v19;
  *(*&v17 + 8 * v10 + 32) = v14;
  v21 = sub_25209D6D8(&unk_28644BF50);
  v22 = *(v21 + 16);
  if (v22)
  {
    v14 = *(v21 + 32);

    v10 = *(*&v17 + 16);
    v22 = *(*&v17 + 24);
    v19 = v10 + 1;
    if (v10 < v22 >> 1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v22 > 1), v19, 1);
  v17 = v204;
LABEL_5:
  *(*&v17 + 16) = *&v19;
  *(*&v17 + 8 * v10 + 32) = v14;
  v23 = sub_25209D6D8(&unk_28644BF28);
  v24 = *(v23 + 16);
  if (v24)
  {
    v14 = *(v23 + 32);

    v10 = *(*&v17 + 16);
    v24 = *(*&v17 + 24);
    v19 = v10 + 1;
    if (v10 < v24 >> 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v24 > 1), v19, 1);
LABEL_7:
  v25 = v204;
  *(*&v204 + 16) = *&v19;
  *(*&v25 + 8 * v10 + 32) = v14;
  v26 = sub_25209D6D8(&unk_28644BF00);
  v27 = *(v26 + 16);
  if (v27)
  {
    v14 = *(v26 + 32);

    v17 = *(*&v25 + 16);
    v27 = *(*&v25 + 24);
    v19 = *&v17 + 1;
    if (*&v17 < v27 >> 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v27 > 1), v19, 1);
  v25 = v204;
LABEL_9:
  *(*&v25 + 16) = *&v19;
  *(*&v25 + 8 * *&v17 + 32) = v14;
  v28 = sub_25209D6D8(&unk_28644BED8);
  v29 = *(v28 + 16);
  if (v29)
  {
    v14 = *(v28 + 32);

    v17 = *(*&v25 + 16);
    v29 = *(*&v25 + 24);
    v19 = *&v17 + 1;
    if (*&v17 < v29 >> 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v29 > 1), v19, 1);
  v25 = v204;
LABEL_11:
  *(*&v25 + 16) = *&v19;
  *(*&v25 + 8 * *&v17 + 32) = v14;
  v30 = sub_25209D6D8(&unk_28644BEB0);
  v31 = *(v30 + 16);
  if (v31)
  {
    v14 = *(v30 + 32);

    v10 = *(*&v25 + 16);
    v31 = *(*&v25 + 24);
    v19 = v10 + 1;
    if (v10 < v31 >> 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v31 > 1), v19, 1);
LABEL_13:
  v32 = v204;
  *(*&v204 + 16) = *&v19;
  *(*&v32 + 8 * v10 + 32) = v14;

  v204 = *&v15;
  sub_2520806CC(*&v32);

  sub_252099F94(&v204);
  v200 = *&v6;
  if (*&v6 != 0.0)
  {

    __break(1u);
    return result;
  }

  v193 = v204;
  v204 = *&v7;
  v33 = v16;
  sub_25209B1F4(0, 4, 0);
  *&v15 = v204;
  v10 = v191;
  v34 = swift_initStackObject();
  *(v34 + 16) = v201;
  *(v34 + 32) = 0x406F400000000000;
  v16 = sub_25209D6D8(v34);
  swift_setDeallocating();
  v35 = *(v16 + 16);
  if (v35)
  {
    v14 = *(v16 + 32);

    v19 = *(v15 + 16);
    v35 = *(v15 + 24);
    v16 = v19 + 1;
    if (v19 < v35 >> 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v35 > 1), v16, 1);
  *&v15 = v204;
LABEL_16:
  *(v15 + 16) = v16;
  *(v15 + 8 * v19 + 32) = v14;
  v36 = sub_25209D6D8(&unk_28644BFC8);
  v37 = *(v36 + 16);
  if (v37)
  {
    v14 = *(v36 + 32);

    v19 = *(v15 + 16);
    v37 = *(v15 + 24);
    v16 = v19 + 1;
    if (v19 < v37 >> 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v37 > 1), v16, 1);
  *&v15 = v204;
LABEL_18:
  *(v15 + 16) = v16;
  *(v15 + 8 * v19 + 32) = v14;
  v38 = sub_25209D6D8(&unk_28644BFA0);
  v39 = *(v38 + 16);
  if (v39)
  {
    v14 = *(v38 + 32);

    v19 = *(v15 + 16);
    v39 = *(v15 + 24);
    v16 = v19 + 1;
    if (v19 < v39 >> 1)
    {
      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v39 > 1), v16, 1);
LABEL_20:
  v40 = v204;
  *(*&v204 + 16) = v16;
  *(*&v40 + 8 * v19 + 32) = v14;
  v41 = sub_25209D6D8(&unk_28644BF78);
  v42 = *(v41 + 16);
  if (v42)
  {
    v14 = *(v41 + 32);

    v15 = *(*&v40 + 16);
    v42 = *(*&v40 + 24);
    v16 = v15 + 1;
    if (v15 < v42 >> 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v42 > 1), v16, 1);
  v40 = v204;
LABEL_22:
  *(*&v40 + 16) = v16;
  v192 = v40;
  *(*&v40 + 8 * v15 + 32) = v14;

  v204 = *&v7;
  v199 = v33;
  sub_25209B1F4(0, 2, 0);
  *&v7 = v204;
  v43 = swift_initStackObject();
  *(v43 + 16) = v201;
  *(v43 + 32) = 0x407F400000000000;
  *&v6 = COERCE_DOUBLE(sub_25209D6D8(v43));
  swift_setDeallocating();
  v44 = *(v6 + 16);
  if (v44)
  {
    v14 = *(v6 + 32);

    v16 = *(v7 + 2);
    v44 = *(v7 + 3);
    v6 = v16 + 1;
    v45 = *&v7;
    if (v16 < v44 >> 1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v44 > 1), v6, 1);
  v45 = v204;
LABEL_24:
  *(*&v45 + 16) = *&v6;
  *(*&v45 + 8 * v16 + 32) = v14;
  v46 = sub_25209D6D8(&unk_28644BFF0);
  v47 = *(v46 + 16);
  if (!v47)
  {
    __break(1u);
    goto LABEL_197;
  }

  v14 = *(v46 + 32);

  v16 = *(*&v45 + 16);
  v47 = *(*&v45 + 24);
  v6 = v16 + 1;
  if (v16 >= v47 >> 1)
  {
LABEL_197:
    sub_25209B1F4((v47 > 1), v6, 1);
    v45 = v204;
  }

  *(*&v45 + 16) = *&v6;
  v179 = (*&v45 + 32);
  *(*&v45 + 32 + 8 * v16) = v14;

  v48 = v45;
  v49 = v193;
  v190 = *(*&v193 + 16);
  if (!v190)
  {
LABEL_164:

    return v210;
  }

  v50 = 0;
  v188 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel;
  v189 = v48;
  v184 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue;
  v183 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_kernelLength;
  v186 = *&v193 + 32;
  v187 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel;
  v177 = -1.6;
  *&v176 = 1.6;
  v180 = xmmword_252143B20;
  while (1)
  {
    v20 = *(*&v49 + 16);
    if (v50 >= v20)
    {
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      sub_25209B1F4((v20 > 1), v19, 1);
      v17 = v204;
      goto LABEL_3;
    }

    v197 = v50;
    v54 = *(v186 + 8 * v50);
    v55 = *&v199[v188];
    v56 = *&v199[v187];
    v14 = round((v55 - v56) / 2.5);
    v57 = swift_initStackObject();
    *(v57 + 16) = v202;
    *(v57 + 32) = v56;
    *(v57 + 40) = v55;
    v58 = swift_initStackObject();
    *(v58 + 16) = v202;
    *(v58 + 32) = 0;
    *(v58 + 40) = v14;
    *&v59 = COERCE_DOUBLE(sub_2520AA548(v57, v58));

    v61 = *(v59 + 16);
    v198 = v59;
    *&v201 = v61;
    if (v61)
    {
      v62 = (v59 + 32);
      v63 = MEMORY[0x277D84F90];
      while (1)
      {
        v14 = *v62;
        v64 = swift_initStackObject();
        *(v64 + 16) = v202;
        *(v64 + 32) = v54;
        v65 = (v64 + 32);
        *(v64 + 40) = v14;
        v66 = *(v63 + 2);
        v67 = v66 + 2;
        if (__OFADD__(v66, 2))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v69 = *(v63 + 3) >> 1, v69 < v67))
        {
          if (v66 <= v67)
          {
            v70 = v66 + 2;
          }

          else
          {
            v70 = v66;
          }

          v63 = sub_252099194(isUniquelyReferenced_nonNull_native, v70, 1, v63);
          v69 = *(v63 + 3) >> 1;
        }

        v71 = *(v63 + 2);
        if (v69 - v71 < 2)
        {
          goto LABEL_166;
        }

        *&v63[8 * v71 + 32] = *v65;

        v72 = *(v63 + 2);
        v73 = __OFADD__(v72, 2);
        v74 = v72 + 2;
        if (v73)
        {
          goto LABEL_167;
        }

        *(v63 + 2) = v74;
        ++v62;
        if (!--v61)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:

      v173 = 0x8000000252148F50;
      sub_2520A2090();
      swift_allocError();
      v175 = 0xD000000000000031;
      goto LABEL_160;
    }

    v63 = MEMORY[0x277D84F90];
LABEL_51:
    v194 = v63;
    v75 = *&v199[v184];
    MEMORY[0x28223BE20](v60);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
    v77 = v200;
    v78 = sub_25214200C();
    *&v15 = v204;
    MEMORY[0x28223BE20](v78);
    v195 = v76;
    v79 = sub_25214200C();
    v10 = *&v204;
    v80 = v205;
    v200 = v206;
    MEMORY[0x28223BE20](v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA8, &qword_252143D60);
    v196 = v75;
    sub_25214200C();
    *&v19 = v204;
    sub_25209EA3C(v194, v201, 2, v10, v80, *&v200, v15, *&v204, &v204);
    if (v77 != 0.0)
    {
      goto LABEL_153;
    }

    v81 = v205;
    v82 = *&v206;
    v200 = v204;
    *&v201 = v207;
    v83 = v208;
    v6 = v209;

    if (v81 < 1 || v82 <= 0)
    {

      v169 = 0x8000000252148C70;
      sub_2520A2090();
      swift_allocError();
      v171 = 0xD00000000000001DLL;
LABEL_156:
      *v170 = v171;
      v170[1] = v169;
      swift_willThrow();
    }

    if (v83 < 1 || v6 < 1)
    {

      v169 = 0x8000000252148C90;
      sub_2520A2090();
      swift_allocError();
      v171 = 0xD00000000000001ELL;
      goto LABEL_156;
    }

    v16 = &v176;
    v204 = *&v201;
    v205 = v83;
    v206 = *&v6;
    MEMORY[0x28223BE20](*(v201 + 16));
    *&v7 = COERCE_DOUBLE(&v204);
    v85 = COERCE_DOUBLE(sub_2520AABEC(v84, sub_2520A3B00));
    v20 = v83 * v6;
    if ((v83 * v6) >> 64 != (v83 * v6) >> 63)
    {
      goto LABEL_170;
    }

    v15 = *(*&v85 + 16);
    if (v15 != v20)
    {
      goto LABEL_171;
    }

    v16 = &v176;
    v204 = v85;
    v205 = v83;
    v206 = *&v6;
    MEMORY[0x28223BE20](*&v85);
    v10 = &v204;
    v7 = v86;
    *&v19 = COERCE_DOUBLE(sub_2520AABEC(v15, sub_2520A3B60));

    v20 = *(v19 + 16);
    if (v20 != v15)
    {
      goto LABEL_172;
    }

    v16 = &v176;
    v204 = *&v19;
    v205 = v83;
    v206 = *&v6;
    MEMORY[0x28223BE20](v87);
    v88 = COERCE_DOUBLE(sub_2520AABEC(v15, sub_2520A3B30));
    v10 = 0;

    v20 = *(*&v88 + 16);
    if (v20 != v15)
    {
      goto LABEL_173;
    }

    v204 = v88;
    v205 = v83;
    v206 = *&v6;
    MEMORY[0x28223BE20](v89);
    v90 = COERCE_DOUBLE(sub_2520AABEC(v15, sub_2520A335C));

    v204 = v90;
    MEMORY[0x28223BE20](*(*&v90 + 16));
    v92 = COERCE_DOUBLE(sub_2520AABEC(v91, sub_2520A3AE8));

    v203 = v200;
    v204 = v92;
    MEMORY[0x28223BE20](*(*&v92 + 16));
    v94 = sub_2520AABEC(v93, sub_2520A338C);

    v95 = sub_25209E75C(v94);

    v96 = sub_25209DBDC(1, -1, v95, *(v95 + 16), 1);
    v98 = v97;
    v100 = v99;

    v52 = v98 <= 0;
    v19 = v198;
    if (v52)
    {

      goto LABEL_159;
    }

    if (v100 <= 0)
    {
      break;
    }

    v101 = *(v96 + 16);
    v204 = NAN;
    v102 = v96 + 32;
    vDSP_maxvD((v96 + 32), 1, &v204, v101);
    if (v204 < 0.5)
    {

      goto LABEL_80;
    }

    v104 = *(v96 + 16);
    v204 = NAN;
    vDSP_minvD((v96 + 32), 1, &v204, v104);
    if (v204 > 0.5)
    {

      v55 = v56;
      goto LABEL_80;
    }

    v105 = *(v96 + 16);
    if (v105)
    {
      v106 = 0;
      while (*(v102 + 8 * v106) <= 0.5)
      {
        if (v105 == ++v106)
        {
          goto LABEL_70;
        }
      }

      if (!v106)
      {
        if (v100 == 1)
        {
          goto LABEL_168;
        }

        v107 = 1;
        if (v105 <= 1)
        {
LABEL_152:
          __break(1u);
LABEL_153:
        }

        goto LABEL_77;
      }
    }

    else
    {
LABEL_70:
      v106 = 1;
    }

    if (v100 - 1 >= v106)
    {
      v107 = v106;
    }

    else
    {
      v107 = v100 - 1;
    }

    if (v100 == 1)
    {
      goto LABEL_168;
    }

    if (v107 >= v105)
    {
      goto LABEL_152;
    }

LABEL_77:
    if (v107 > v100)
    {
      __break(1u);
LABEL_199:
      __break(1u);
    }

    v108 = *(v102 + 8 * v107);
    v109 = *(v102 + 8 * (v107 - 1));

    if (v107 >= *(v19 + 16))
    {
      goto LABEL_199;
    }

    v110 = *(v19 + 32 + 8 * v107);
    v111 = *(v19 + 32 + 8 * (v107 - 1));

    v55 = v111 + (0.5 - v109) / (v108 - v109) * (v110 - v111);
LABEL_80:
    v112 = v55 - v185;
    v113 = v55 + v185;
    v114 = *(*&v192 + 16);
    v115 = 32;
    ++v197;
    while (v114)
    {
      v116 = *(*&v192 + v115);
      v115 += 8;
      --v114;
      if (v116 == v54)
      {
        v117 = v54 + -1.2;
        v118 = 1.2;
        goto LABEL_89;
      }
    }

    v119 = *(*&v189 + 16);
    v120 = v179;
    while (v119)
    {
      v121 = *v120++;
      --v119;
      if (v121 == v54)
      {
        v118 = *&v176;
        v117 = v54 + v177;
        goto LABEL_89;
      }
    }

    v118 = v178;
    v117 = v54 - v178;
LABEL_89:
    MEMORY[0x28223BE20](v103);
    sub_25214200C();
    v122 = sub_2520EEE44(0, *&v204, v205, *&v206);
    v200 = 0.0;
    v123 = v122;

    v124 = *(v123 + 16);
    if (v124)
    {
      v125 = 0;
      v126 = v54 + v118;
      v127 = MEMORY[0x277D84F90];
      do
      {
        v130 = *(v123 + 32 + 8 * v125);
        if (v117 <= v130 && v130 <= v126)
        {
          v132 = swift_isUniquelyReferenced_nonNull_native();
          v204 = v127;
          if ((v132 & 1) == 0)
          {
            sub_25209B2B4(0, *(*&v127 + 16) + 1, 1);
            v127 = v204;
          }

          v129 = *(*&v127 + 16);
          v128 = *(*&v127 + 24);
          v19 = v129 + 1;
          if (v129 >= v128 >> 1)
          {
            sub_25209B2B4((v128 > 1), v129 + 1, 1);
            v127 = v204;
          }

          *(*&v127 + 16) = *&v19;
          *(*&v127 + 8 * v129 + 32) = v125;
        }

        ++v125;
      }

      while (v124 != v125);
    }

    else
    {
      v127 = MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v133);
    v134 = v200;
    sub_25214200C();
    v135 = sub_2520EEE44(1, *&v204, v205, *&v206);
    v200 = v134;
    if (v134 != 0.0)
    {
    }

    v136 = v135;

    v137 = *(v136 + 16);
    *&v201 = v136;
    if (v137)
    {
      v138 = 0;
      v139 = v136 + 32;
      v140 = MEMORY[0x277D84F90];
      do
      {
        v143 = *(v139 + 8 * v138);
        if (v112 <= v143 && v143 <= v113)
        {
          v145 = swift_isUniquelyReferenced_nonNull_native();
          v204 = v140;
          if ((v145 & 1) == 0)
          {
            sub_25209B2B4(0, *(*&v140 + 16) + 1, 1);
            v140 = v204;
          }

          v142 = *(*&v140 + 16);
          v141 = *(*&v140 + 24);
          v19 = v142 + 1;
          if (v142 >= v141 >> 1)
          {
            sub_25209B2B4((v141 > 1), v142 + 1, 1);
            v140 = v204;
          }

          *(*&v140 + 16) = *&v19;
          *(*&v140 + 8 * v142 + 32) = v138;
        }

        ++v138;
      }

      while (v137 != v138);
    }

    else
    {
      v140 = MEMORY[0x277D84F90];
    }

    v146 = *(*&v127 + 16);
    if (v146)
    {
      v147 = 0;
      v148 = (*&v127 + 32);
      *&v15 = MEMORY[0x277D84F90];
      v198 = *(*&v127 + 16);
      *&v201 = *&v127 + 32;
      do
      {
        v151 = v148[v147];
        v152 = *(*&v140 + 16);
        v153 = 32;
        while (v152)
        {
          v154 = *(*&v140 + v153);
          v153 += 8;
          --v152;
          if (v154 == v151)
          {
            v155 = swift_isUniquelyReferenced_nonNull_native();
            v204 = *&v15;
            if ((v155 & 1) == 0)
            {
              sub_25209B2B4(0, *(v15 + 16) + 1, 1);
              v146 = v198;
              *&v15 = v204;
            }

            v150 = *(v15 + 16);
            v149 = *(v15 + 24);
            v19 = v150 + 1;
            if (v150 >= v149 >> 1)
            {
              sub_25209B2B4((v149 > 1), v150 + 1, 1);
              v146 = v198;
              *&v15 = v204;
            }

            *(v15 + 16) = *&v19;
            *(v15 + 8 * v150 + 32) = v151;
            v148 = v201;
            break;
          }
        }

        ++v147;
      }

      while (v147 != v146);
    }

    else
    {

      *&v15 = MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v156);
    v157 = v200;
    sub_25214200C();
    sub_2520F01BC(v15, *&v204, v205, *&v206);
    v10 = v191;
    v200 = v157;
    if (v157 != 0.0)
    {
    }

    v159 = v158;

    v160 = *(v159 + 16);
    if (v160)
    {

      v161 = 32;
      v162 = MEMORY[0x277D84F90];
      do
      {
        if (*(v159 + v161) == 1.0)
        {
          v164 = swift_isUniquelyReferenced_nonNull_native();
          v204 = v162;
          if ((v164 & 1) == 0)
          {
            sub_25209B1F4(0, *(*&v162 + 16) + 1, 1);
            v162 = v204;
          }

          v19 = *(*&v162 + 16);
          v163 = *(*&v162 + 24);
          v15 = v19 + 1;
          if (v19 >= v163 >> 1)
          {
            sub_25209B1F4((v163 > 1), v19 + 1, 1);
            v162 = v204;
          }

          *(*&v162 + 16) = *&v15;
          *(*&v162 + 8 * v19 + 32) = 0x3FF0000000000000;
        }

        v161 += 8;
        --v160;
      }

      while (v160);
    }

    else
    {
      v162 = MEMORY[0x277D84F90];
    }

    v7 = *(*&v162 + 16);

    v16 = *(v159 + 16);
    if (v16)
    {
      v19 = v159 + 32;
      v51 = MEMORY[0x277D84F90];
      do
      {
        v167 = *v19;
        if (*v19 == 0.0)
        {
          v168 = swift_isUniquelyReferenced_nonNull_native();
          v204 = v51;
          if ((v168 & 1) == 0)
          {
            sub_25209B1F4(0, *(*&v51 + 16) + 1, 1);
            v51 = v204;
          }

          v166 = *(*&v51 + 16);
          v165 = *(*&v51 + 24);
          v15 = v166 + 1;
          if (v166 >= v165 >> 1)
          {
            sub_25209B1F4((v165 > 1), v166 + 1, 1);
            v51 = v204;
          }

          *(*&v51 + 16) = *&v15;
          *(*&v51 + 8 * v166 + 32) = v167;
        }

        v19 += 8;
        --v16;
      }

      while (v16);
    }

    else
    {
      v51 = MEMORY[0x277D84F90];
    }

    v6 = *(*&v51 + 16);

    v52 = v6 < v182 || v7 < v181;
    if (v52)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }

    v53 = swift_initStackObject();
    *(v53 + 16) = v180;
    *(v53 + 32) = v54;
    *(v53 + 40) = v7;
    *(v53 + 48) = v6;
    *(v53 + 56) = v55;
    *(v53 + 64) = v14;
    sub_2520806CC(v53);
    v50 = v197;
    v49 = v193;
    if (v197 == v190)
    {
      goto LABEL_164;
    }
  }

LABEL_159:

  v173 = 0x8000000252148F20;
  sub_2520A2090();
  swift_allocError();
  v175 = 0xD00000000000002CLL;
LABEL_160:
  *v174 = v175;
  v174[1] = v173;
  return swift_willThrow();
}

uint64_t sub_252090F78(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_2520959A0(a1, a2, a3);
  if (v8)
  {
    return 0;
  }

  v10 = *&v3[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  v11 = 0;
  sub_25214200C();

  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAA0, &unk_2521451D0);
  sub_25214200C();
  v13 = aBlock[2];

  if (__OFSUB__(v78, v13))
  {
    __break(1u);
    swift_once();
    v15 = sub_25214198C();
    __swift_project_value_buffer(v15, qword_27F4CDE68);
    v16 = 0;
    v17 = sub_25214196C();
    v18 = sub_252141FBC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock = v21;
      *v19 = 136446466;
      v22 = sub_2521425DC();
      v24 = sub_2520A5448(v22, v23, &aBlock);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      v25 = 0;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v26;
      *v20 = v26;
      _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] Error during newPoint in nextSample: %@", v19, 0x16u);
      sub_2520A2584(v20, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x253099FD0](v21, -1, -1);
      MEMORY[0x253099FD0](v19, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  if (v78 - v13 < 5)
  {
LABEL_5:

    goto LABEL_6;
  }

  MEMORY[0x28223BE20](v14);
  sub_25214200C();
  sub_252095DAC(a1, a2, a3, aBlock, v78, *(&v78 + 1), &aBlock, 4.0);
  v68 = v10;
  v73 = aBlock;
  v33 = v78;
  v71 = v79;
  v34 = v80;
  v72 = v81;
  v35 = v83;
  v69 = v82;
  v36 = v85;
  v70 = v84;
  v74 = v86;
  v75 = v87;

  if (!*(v36 + 16))
  {
    aBlock = v73;
    v78 = v33;
    v79 = v71;
    v80 = v34;
    v81 = v72;
    v82 = v69;
    v83 = v35;
    v84 = v70;
    v85 = v36;
    v86 = v74;
    v87 = v75;
    sub_2520A2584(&aBlock, &qword_27F4CDBC8, &qword_252143D80);
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](v37);
  sub_25214200C();
  *v76 = aBlock;
  *&v76[8] = v78;
  sub_2520EEFF4(v36, v74, v75);

  v38 = swift_allocObject();
  *(v38 + 16) = v4;
  *(v38 + 24) = *v76;
  *(v38 + 40) = *&v76[16];
  v39 = swift_allocObject();
  *(v39 + 16) = sub_2520A2578;
  *(v39 + 24) = v38;
  v80 = sub_2520A3768;
  v81 = v39;
  aBlock = MEMORY[0x277D85DD0];
  *&v78 = 1107296256;
  *(&v78 + 1) = sub_252083924;
  v79 = &block_descriptor_718;
  v40 = _Block_copy(&aBlock);
  v41 = v4;

  dispatch_sync(v68, v40);
  _Block_release(v40);
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if (v40)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = v71;
  v42[4] = v34;
  v42[5] = v72;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_2520A3528;
  *(v43 + 24) = v42;
  v80 = sub_2520A3768;
  v81 = v43;
  aBlock = MEMORY[0x277D85DD0];
  *&v78 = 1107296256;
  *(&v78 + 1) = sub_252083924;
  v79 = &block_descriptor_729;
  v44 = _Block_copy(&aBlock);
  v45 = v41;

  dispatch_sync(v68, v44);
  _Block_release(v44);
  LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

  if (v44)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = v73;
  *(v46 + 32) = v33;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_2520A351C;
  *(v47 + 24) = v46;
  v80 = sub_2520A3768;
  v81 = v47;
  aBlock = MEMORY[0x277D85DD0];
  *&v78 = 1107296256;
  *(&v78 + 1) = sub_252083924;
  v79 = &block_descriptor_740;
  v48 = _Block_copy(&aBlock);
  v49 = v45;

  dispatch_sync(v68, v48);
  _Block_release(v48);
  LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

  if (v48)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    swift_once();
    v54 = sub_25214198C();
    __swift_project_value_buffer(v54, qword_27F4CDE68);
    v55 = v11;
    v56 = sub_25214196C();
    v57 = sub_252141FBC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock = v60;
      *v58 = 136446466;
      v61 = sub_2521425DC();
      v63 = sub_2520A5448(v61, v62, &aBlock);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2112;
      v64 = v11;
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 14) = v65;
      *v59 = v65;
      _os_log_impl(&dword_25207E000, v56, v57, "[%{public}s] Error during checkCoverage after outlier removal in nextSample: %@", v58, 0x16u);
      sub_2520A2584(v59, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v59, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x253099FD0](v60, -1, -1);
      MEMORY[0x253099FD0](v58, -1, -1);
    }

    else
    {
    }

    return 1;
  }

  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = v69;
  v50[4] = v35;
  v50[5] = v70;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_2520A3534;
  *(v51 + 24) = v50;
  v80 = sub_2520A3768;
  v81 = v51;
  aBlock = MEMORY[0x277D85DD0];
  *&v78 = 1107296256;
  *(&v78 + 1) = sub_252083924;
  v79 = &block_descriptor_751;
  v52 = _Block_copy(&aBlock);
  v53 = v49;

  dispatch_sync(v68, v52);
  _Block_release(v52);
  LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

  if (v52)
  {
    goto LABEL_35;
  }

  a1 = sub_25208F62C(2, 2, 2.2, 12.5);
  a2 = v66;
  a3 = v67;
  if (sub_2520959A0(a1, v66, v67))
  {

    return 0;
  }

LABEL_6:
  v27 = sub_252096F0C(a1, a2, a3);

  if (!v27[2])
  {
    __break(1u);
    goto LABEL_30;
  }

  v28 = v27[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252143AC0;
  *(inited + 32) = v28;
  v11 = sub_25209D600(inited);
  swift_setDeallocating();
  if (!v11[2])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v30 = v11[4];

  if (v27[2] < 2uLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v31 = v27[5];

  v32 = v4[OBJC_IVAR____TtC11HearingTest12HTAudiometry_channel];
  aBlock = v30;
  *&v78 = v31;
  *(&v78 + 1) = v32;
  v79 = 0x3FF0000000000000;
  sub_252084B80(&aBlock);
  return 1;
}

void sub_252091D3C()
{
  v1 = v0;
  swift_getObjectType();
  isEscapingClosureAtFileLocation = 0;
  sub_252097390(&aBlock);
  v3 = aBlock;
  v4 = v183;
  v6 = v184;
  v5 = v185;
  v7 = v186;
  v8 = v187;

  v9 = sub_2520EEE44(0, v3, v4, v6);
  v10 = sub_2520EEE44(1, v3, v4, v6);

  v72 = sub_2520EEE44(0, v5, v7, v8);

  v73 = *(v9 + 16);
  v180 = v9;
  if (v73)
  {
    aBlock = MEMORY[0x277D84F90];
    sub_25209B1F4(0, v73, 0);
    v74 = v9;
    v75 = 0;
    v76 = aBlock;
    v77 = v74 + 32;
    v78 = v72;
    do
    {
      v79 = *(v78 + 16);
      v80 = 32;
      while (v79)
      {
        v81 = *(v78 + v80);
        v80 += 8;
        --v79;
        if (v81 == *(v77 + 8 * v75))
        {
          v82 = 1.0;
          goto LABEL_25;
        }
      }

      v82 = 0.0;
LABEL_25:
      aBlock = v76;
      v84 = *(v76 + 16);
      v83 = *(v76 + 24);
      if (v84 >= v83 >> 1)
      {
        sub_25209B1F4((v83 > 1), v84 + 1, 1);
        v78 = v72;
        v76 = aBlock;
      }

      ++v75;
      *(v76 + 16) = v84 + 1;
      *(v76 + 8 * v84 + 32) = v82;
    }

    while (v75 != v73);
    v175 = v76;

    v9 = v180;
  }

  else
  {

    v175 = MEMORY[0x277D84F90];
  }

  v86 = sub_2520A0A6C(v85);

  v87 = *(v86 + 16);
  if (v87)
  {
    v88 = sub_252099E94(*(v86 + 16), 0, &qword_27F4CDA88, &unk_252143B60);
    v89 = sub_25209C308(&aBlock, v88 + 4, v87, v86);
    sub_2520A20E4(aBlock);
    if (v89 == v87)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  v88 = MEMORY[0x277D84F90];
LABEL_34:
  aBlock = v88;

  sub_252099F94(&aBlock);

  v90 = aBlock;
  v91 = aBlock[2];
  v174 = v10;
  if (v91)
  {
    v177 = *&v1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
    v92 = 32;
    v173 = aBlock;
    do
    {
      v176 = v91;
      v93 = *(v90 + v92);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252143AC0;
      *(inited + 32) = v93;
      v95 = sub_25209D6D8(inited);
      swift_setDeallocating();
      if (!*(v95 + 16))
      {
        goto LABEL_86;
      }

      v96 = *(v95 + 32);

      v97 = _s11HearingTest13InterpolatorsC8interp1d7xValues01yE06xPointSdSaySdG_AHSdtFZ_0(v9, v10, v96);
      v99 = v98;
      MEMORY[0x28223BE20](v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA90, &qword_2521451E0);
      sub_25214200C();
      v100 = aBlock;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v100;
      sub_2520A8730(isUniquelyReferenced_nonNull_native, v99, v93);
      v102 = aBlock;
      v103 = swift_allocObject();
      *(v103 + 16) = v1;
      *(v103 + 24) = v102;
      v104 = swift_allocObject();
      *(v104 + 16) = sub_2520A3508;
      *(v104 + 24) = v103;
      v186 = sub_2520A3768;
      v187 = v104;
      aBlock = MEMORY[0x277D85DD0];
      v183 = 1107296256;
      v184 = sub_252083924;
      v185 = &block_descriptor_655;
      v105 = _Block_copy(&aBlock);
      v106 = v1;

      dispatch_sync(v177, v105);
      _Block_release(v105);
      LOBYTE(v102) = swift_isEscapingClosureAtFileLocation();

      if (v102)
      {
        goto LABEL_87;
      }

      v107 = swift_initStackObject();
      *(v107 + 16) = xmmword_252143AC0;
      *(v107 + 32) = v93;
      v108 = sub_25209D6D8(v107);
      swift_setDeallocating();
      if (!*(v108 + 16))
      {
        goto LABEL_88;
      }

      v109 = *(v108 + 32);

      v110 = _s11HearingTest13InterpolatorsC8interp1d7xValues01yE06xPointSdSaySdG_AHSdtFZ_0(v180, v175, v109);
      v112 = v111 == 1.0;
      MEMORY[0x28223BE20](v110);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB98, &qword_252143D50);
      sub_25214200C();
      v113 = aBlock;
      v114 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v113;
      sub_2520A8600(v112, v114, v93);
      v115 = aBlock;
      v116 = swift_allocObject();
      *(v116 + 16) = v106;
      *(v116 + 24) = v115;
      v117 = swift_allocObject();
      *(v117 + 16) = sub_2520A35CC;
      *(v117 + 24) = v116;
      v186 = sub_2520A3768;
      v187 = v117;
      aBlock = MEMORY[0x277D85DD0];
      v183 = 1107296256;
      v184 = sub_252083924;
      v185 = &block_descriptor_666;
      v118 = _Block_copy(&aBlock);
      v119 = v106;

      dispatch_sync(v177, v118);
      _Block_release(v118);
      LOBYTE(v118) = swift_isEscapingClosureAtFileLocation();

      if (v118)
      {
        goto LABEL_89;
      }

      v92 += 8;
      v91 = v176 - 1;
      v9 = v180;
      v10 = v174;
      v90 = v173;
    }

    while (v176 != 1);
  }

  v120 = sub_25209C938(MEMORY[0x277D84F90]);
  v121 = v9;
  v122 = *(v9 + 16);
  if (v122)
  {
    v123 = 0;
    v179 = v121 + 32;
    do
    {
      if (v123 >= *(v180 + 16))
      {
        goto LABEL_90;
      }

      v124 = *(v10 + 16);
      if (v123 == v124)
      {
        break;
      }

      if (v123 >= v124)
      {
        goto LABEL_92;
      }

      v125 = *(v179 + 8 * v123);
      v126 = *(v10 + 8 * v123 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
      v127 = swift_allocObject();
      *(v127 + 16) = xmmword_252143AC0;
      *(v127 + 56) = MEMORY[0x277D839F8];
      *(v127 + 64) = MEMORY[0x277D83A80];
      *(v127 + 32) = v125;
      v128 = sub_252141BAC();
      v130 = v129;
      v131 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v120;
      v133 = sub_25213E648(v128, v130);
      v134 = v120[2];
      v135 = (v132 & 1) == 0;
      v136 = v134 + v135;
      if (__OFADD__(v134, v135))
      {
        goto LABEL_93;
      }

      v137 = v132;
      if (v120[3] >= v136)
      {
        if (v131)
        {
          if (v132)
          {
            goto LABEL_43;
          }
        }

        else
        {
          sub_2520A6E60();
          if (v137)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        sub_2520A79C4(v136, v131);
        v138 = sub_25213E648(v128, v130);
        if ((v137 & 1) != (v139 & 1))
        {
          goto LABEL_99;
        }

        v133 = v138;
        if (v137)
        {
LABEL_43:

          v120 = aBlock;
          *(aBlock[7] + 8 * v133) = v126;
          goto LABEL_44;
        }
      }

      v120 = aBlock;
      aBlock[(v133 >> 6) + 8] |= 1 << v133;
      v140 = (v120[6] + 16 * v133);
      *v140 = v128;
      v140[1] = v130;
      *(v120[7] + 8 * v133) = v126;
      v141 = v120[2];
      v142 = __OFADD__(v141, 1);
      v143 = v141 + 1;
      if (v142)
      {
        goto LABEL_96;
      }

      v120[2] = v143;
LABEL_44:
      v10 = v174;
      ++v123;
    }

    while (v122 != v123);
  }

  v144 = *&v1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v145 = swift_allocObject();
  *(v145 + 16) = v1;
  *(v145 + 24) = v120;
  v146 = swift_allocObject();
  *(v146 + 16) = sub_2520A3460;
  *(v146 + 24) = v145;
  v186 = sub_2520A3768;
  v187 = v146;
  aBlock = MEMORY[0x277D85DD0];
  v183 = 1107296256;
  v184 = sub_252083924;
  v185 = &block_descriptor_677;
  v147 = _Block_copy(&aBlock);
  v148 = v1;

  dispatch_sync(v144, v147);
  _Block_release(v147);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v178 = v144;
    v149 = sub_25209C938(MEMORY[0x277D84F90]);
    v150 = *(v180 + 16);
    if (!v150)
    {
LABEL_77:

      v169 = swift_allocObject();
      *(v169 + 16) = v148;
      *(v169 + 24) = v149;
      v170 = swift_allocObject();
      *(v170 + 16) = sub_2520A347C;
      *(v170 + 24) = v169;
      v186 = sub_2520A3768;
      v187 = v170;
      aBlock = MEMORY[0x277D85DD0];
      v183 = 1107296256;
      v184 = sub_252083924;
      v185 = &block_descriptor_688;
      v171 = _Block_copy(&aBlock);
      v172 = v148;

      dispatch_sync(v178, v171);
      _Block_release(v171);
      v54 = swift_isEscapingClosureAtFileLocation();

      if ((v54 & 1) == 0)
      {
        return;
      }

      __break(1u);
      swift_once();
      v11 = sub_25214198C();
      __swift_project_value_buffer(v11, qword_27F4CDE68);

      v12 = sub_25214196C();
      v13 = sub_252141FBC();

      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_11;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock = v16;
      *v14 = 136446466;
      v17 = sub_2521425DC();
      v19 = sub_2520A5448(v17, v18, &aBlock);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2112;
      sub_2520A2090();
      swift_allocError();
      *v20 = v10;
      v20[1] = v171;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v21;
      *v15 = v21;
      _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] HTAudiometryError in finalSampling: %@", v14, 0x16u);
      sub_2520A2584(v15, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x253099FD0](v16, -1, -1);
      MEMORY[0x253099FD0](v14, -1, -1);
      while (1)
      {

        v55 = sub_25209C938(MEMORY[0x277D84F90]);
        v56 = *(v54 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
        isEscapingClosureAtFileLocation = swift_allocObject();
        *(isEscapingClosureAtFileLocation + 16) = v54;
        *(isEscapingClosureAtFileLocation + 24) = v55;
        v57 = swift_allocObject();
        *(v57 + 16) = sub_2520A3460;
        *(v57 + 24) = isEscapingClosureAtFileLocation;
        v186 = sub_2520A3768;
        v187 = v57;
        aBlock = MEMORY[0x277D85DD0];
        v183 = 1107296256;
        v184 = sub_252083924;
        v185 = &block_descriptor_610;
        v58 = _Block_copy(&aBlock);
        v38 = v54;

        dispatch_sync(v56, v58);
        _Block_release(v58);
        LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

        if ((v58 & 1) == 0)
        {
          break;
        }

        while (1)
        {
          __break(1u);
          swift_once();
          v22 = sub_25214198C();
          __swift_project_value_buffer(v22, qword_27F4CDE68);
          v23 = isEscapingClosureAtFileLocation;
          v24 = sub_25214196C();
          v25 = sub_252141FBC();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            aBlock = v28;
            *v26 = 136446466;
            v29 = sub_2521425DC();
            v31 = sub_2520A5448(v29, v30, &aBlock);

            *(v26 + 4) = v31;
            *(v26 + 12) = 2112;
            v32 = isEscapingClosureAtFileLocation;
            v33 = _swift_stdlib_bridgeErrorToNSError();
            *(v26 + 14) = v33;
            *v27 = v33;
            _os_log_impl(&dword_25207E000, v24, v25, "[%{public}s] Unexpected error in finalSampling: %@", v26, 0x16u);
            sub_2520A2584(v27, &unk_27F4CE080, &qword_252144E30);
            MEMORY[0x253099FD0](v27, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v28);
            MEMORY[0x253099FD0](v28, -1, -1);
            MEMORY[0x253099FD0](v26, -1, -1);
          }

          v34 = sub_25209C938(MEMORY[0x277D84F90]);
          v12 = *&v38[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
          v35 = swift_allocObject();
          *(v35 + 16) = v38;
          *(v35 + 24) = v34;
          v36 = swift_allocObject();
          *(v36 + 16) = sub_2520A3460;
          *(v36 + 24) = v35;
          v186 = sub_2520A3768;
          v187 = v36;
          aBlock = MEMORY[0x277D85DD0];
          v183 = 1107296256;
          v184 = sub_252083924;
          v185 = &block_descriptor_567;
          v37 = _Block_copy(&aBlock);
          v38 = v38;

          dispatch_sync(v12, v37);
          _Block_release(v37);
          LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

          if ((v37 & 1) == 0)
          {
            break;
          }

          __break(1u);
        }

        v39 = sub_25209C938(MEMORY[0x277D84F90]);
        v40 = swift_allocObject();
        *(v40 + 16) = v38;
        *(v40 + 24) = v39;
        v41 = swift_allocObject();
        *(v41 + 16) = sub_2520A347C;
        *(v41 + 24) = v40;
        v186 = sub_2520A3768;
        v187 = v41;
        aBlock = MEMORY[0x277D85DD0];
        v183 = 1107296256;
        v184 = sub_252083924;
        v185 = &block_descriptor_578;
        v42 = _Block_copy(&aBlock);
        v43 = v38;

        dispatch_sync(v12, v42);
        _Block_release(v42);
        LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

        if (v42)
        {
          __break(1u);
          goto LABEL_82;
        }

        v44 = sub_25209CA3C(MEMORY[0x277D84F90]);
        v45 = swift_allocObject();
        *(v45 + 16) = v43;
        *(v45 + 24) = v44;
        v46 = swift_allocObject();
        *(v46 + 16) = sub_2520A3508;
        *(v46 + 24) = v45;
        v186 = sub_2520A3768;
        v187 = v46;
        aBlock = MEMORY[0x277D85DD0];
        v183 = 1107296256;
        v184 = sub_252083924;
        v185 = &block_descriptor_589;
        v47 = _Block_copy(&aBlock);
        v48 = v43;

        dispatch_sync(v12, v47);
        _Block_release(v47);
        LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

        if (v47)
        {
          goto LABEL_83;
        }

        v49 = sub_25209CB18(MEMORY[0x277D84F90]);
        v50 = swift_allocObject();
        *(v50 + 16) = v48;
        *(v50 + 24) = v49;
        v51 = swift_allocObject();
        *(v51 + 16) = sub_2520A2038;
        *(v51 + 24) = v50;
        v186 = sub_2520A3768;
        v187 = v51;
        aBlock = MEMORY[0x277D85DD0];
        v183 = 1107296256;
        v184 = sub_252083924;
        v185 = &block_descriptor_599;
        v52 = _Block_copy(&aBlock);
        v53 = v48;

        dispatch_sync(v12, v52);
        _Block_release(v52);
        v54 = swift_isEscapingClosureAtFileLocation();

        if ((v54 & 1) == 0)
        {
          return;
        }

        __break(1u);
LABEL_11:
      }

      v59 = sub_25209C938(MEMORY[0x277D84F90]);
      isEscapingClosureAtFileLocation = swift_allocObject();
      *(isEscapingClosureAtFileLocation + 16) = v38;
      *(isEscapingClosureAtFileLocation + 24) = v59;
      v60 = swift_allocObject();
      *(v60 + 16) = sub_2520A347C;
      *(v60 + 24) = isEscapingClosureAtFileLocation;
      v186 = sub_2520A3768;
      v187 = v60;
      aBlock = MEMORY[0x277D85DD0];
      v183 = 1107296256;
      v184 = sub_252083924;
      v185 = &block_descriptor_621;
      v61 = _Block_copy(&aBlock);
      v62 = v38;

      dispatch_sync(v56, v61);
      _Block_release(v61);
      LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

      if (v61)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
      }

      else
      {
        v63 = sub_25209CA3C(MEMORY[0x277D84F90]);
        isEscapingClosureAtFileLocation = swift_allocObject();
        *(isEscapingClosureAtFileLocation + 16) = v62;
        *(isEscapingClosureAtFileLocation + 24) = v63;
        v64 = swift_allocObject();
        *(v64 + 16) = sub_2520A3508;
        *(v64 + 24) = isEscapingClosureAtFileLocation;
        v186 = sub_2520A3768;
        v187 = v64;
        aBlock = MEMORY[0x277D85DD0];
        v183 = 1107296256;
        v184 = sub_252083924;
        v185 = &block_descriptor_632;
        v65 = _Block_copy(&aBlock);
        v66 = v62;

        dispatch_sync(v56, v65);
        _Block_release(v65);
        LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

        if ((v65 & 1) == 0)
        {
          v67 = sub_25209CB18(MEMORY[0x277D84F90]);
          isEscapingClosureAtFileLocation = swift_allocObject();
          *(isEscapingClosureAtFileLocation + 16) = v66;
          *(isEscapingClosureAtFileLocation + 24) = v67;
          v68 = swift_allocObject();
          *(v68 + 16) = sub_2520A35CC;
          *(v68 + 24) = isEscapingClosureAtFileLocation;
          v186 = sub_2520A3768;
          v187 = v68;
          aBlock = MEMORY[0x277D85DD0];
          v183 = 1107296256;
          v184 = sub_252083924;
          v185 = &block_descriptor_643;
          v69 = _Block_copy(&aBlock);
          v70 = v66;

          dispatch_sync(v56, v69);
          _Block_release(v69);
          v71 = swift_isEscapingClosureAtFileLocation();

          if ((v71 & 1) == 0)
          {

            return;
          }

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
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
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
          goto LABEL_98;
        }
      }

      __break(1u);
      goto LABEL_85;
    }

    v151 = 0;
    v152 = v175;
    while (1)
    {
      if (v151 >= *(v180 + 16))
      {
        goto LABEL_91;
      }

      v153 = *(v152 + 16);
      if (v151 == v153)
      {
        goto LABEL_77;
      }

      if (v151 >= v153)
      {
        goto LABEL_94;
      }

      v154 = *(v180 + 32 + 8 * v151);
      v155 = *(v152 + 8 * v151 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
      v156 = swift_allocObject();
      *(v156 + 16) = xmmword_252143AC0;
      *(v156 + 56) = MEMORY[0x277D839F8];
      *(v156 + 64) = MEMORY[0x277D83A80];
      *(v156 + 32) = v154;
      v157 = sub_252141BAC();
      v159 = v158;
      isEscapingClosureAtFileLocation = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v149;
      v160 = sub_25213E648(v157, v159);
      v162 = v149[2];
      v163 = (v161 & 1) == 0;
      v142 = __OFADD__(v162, v163);
      v164 = v162 + v163;
      if (v142)
      {
        goto LABEL_95;
      }

      v10 = v161;
      if (v149[3] < v164)
      {
        break;
      }

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_72;
      }

      isEscapingClosureAtFileLocation = v160;
      sub_2520A6E60();
      v160 = isEscapingClosureAtFileLocation;
      if (v10)
      {
LABEL_62:
        isEscapingClosureAtFileLocation = v160;

        v149 = aBlock;
        *(aBlock[7] + 8 * isEscapingClosureAtFileLocation) = v155;
        goto LABEL_63;
      }

LABEL_73:
      v149 = aBlock;
      aBlock[(v160 >> 6) + 8] |= 1 << v160;
      v166 = (v149[6] + 16 * v160);
      *v166 = v157;
      v166[1] = v159;
      *(v149[7] + 8 * v160) = v155;
      v167 = v149[2];
      v142 = __OFADD__(v167, 1);
      v168 = v167 + 1;
      if (v142)
      {
        goto LABEL_97;
      }

      v149[2] = v168;
LABEL_63:
      v152 = v175;
      if (v150 == ++v151)
      {
        goto LABEL_77;
      }
    }

    sub_2520A79C4(v164, isEscapingClosureAtFileLocation);
    v160 = sub_25213E648(v157, v159);
    if ((v10 & 1) != (v165 & 1))
    {
      goto LABEL_99;
    }

LABEL_72:
    if (v10)
    {
      goto LABEL_62;
    }

    goto LABEL_73;
  }

LABEL_98:
  __break(1u);
LABEL_99:
  sub_2521424CC();
  __break(1u);

  __break(1u);
}

uint64_t sub_252093808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB98, &qword_252143D50);
  sub_25214200C();
  if (*(v17 + 16) && (v8 = sub_25213E6C0(a3), (v9 & 1) != 0))
  {
    v10 = *(*(v17 + 56) + v8);
  }

  else
  {
    v10 = 0;
  }

  v12 = *(a1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel);
  if (*(a1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel) == a4)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10;
  }

  v14 = a4;
  v15 = *(a1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_channel);
  if (v13)
  {
    v16 = a4;
  }

  else
  {
    v16 = 0.0;
  }

  if (v12 != a4)
  {
    v14 = 0.0;
  }

  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v13 ^ 1;
  *(a2 + 40) = v14;
  *(a2 + 48) = v12 != a4;
  return result;
}

id HTAudiometry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HTAudiometry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

float sub_252093C14()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  v3 = swift_beginAccess();
  result = 1.0;
  if ((*(v1 + v2) & 1) == 0)
  {
    MEMORY[0x28223BE20](v3);
    sub_25214200C();
    return v5;
  }

  return result;
}

uint64_t sub_252093D18()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue;
  v3 = *(*v0 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2520A375C;
  *(v5 + 24) = v4;
  v19 = sub_2520A3768;
  v20 = v5;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_252083924;
  v18 = &block_descriptor_544;
  v6 = _Block_copy(&v15);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v9 = *&v1[v2];
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2520A3764;
  *(v11 + 24) = v10;
  v19 = sub_2520A3768;
  v20 = v11;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_252083924;
  v18 = &block_descriptor_555;
  v12 = _Block_copy(&v15);
  v13 = v7;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall HTAudiometry.dropTrials(_:)(Swift::Int a1)
{
  v3 = v1;
  v5 = *&v1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAA8, &unk_252143B90);
  sub_25214200C();
  v6 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    swift_unknownObjectRelease();
    sub_252098FD4(a1, a1 + 32, 0, (2 * v2) | 1);
    v12 = v22;
    goto LABEL_11;
  }

  a1 = aBlock;
  v7 = *(aBlock + 16);
  v8 = v7 >= v6;
  v9 = v7 - v6;
  if (v8)
  {
    v2 = v9;
  }

  else
  {
    v2 = 0;
  }

  sub_25214248C();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x277D84F90];
  }

  v11 = *(v10 + 16);

  if (v11 != v2)
  {
    goto LABEL_18;
  }

  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

LABEL_11:
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2520A356C;
  *(v14 + 24) = v13;
  *&v27 = sub_2520A3768;
  *(&v27 + 1) = v14;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v26 = sub_252083924;
  *(&v26 + 1) = &block_descriptor_478;
  v15 = _Block_copy(&aBlock);
  v3;

  dispatch_sync(v5, v15);
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](v16);
    sub_25214200C();
    v17 = *(aBlock + 16);
    if (v17)
    {
      v18 = aBlock + 72 * v17;
      aBlock = *(v18 - 40);
      v19 = *(v18 - 24);
      v20 = *(v18 - 8);
      v21 = *(v18 + 8);
      v29 = *(v18 + 24);
      v27 = v20;
      v28 = v21;
      v26 = v19;
      sub_25209D3B0(&aBlock, v23);

      v23[2] = v27;
      v23[3] = v28;
      v24 = v29;
      v23[0] = aBlock;
      v23[1] = v26;
      sub_252081908(v23);
      swift_unknownObjectRelease();
      sub_25209D35C(&aBlock);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_252094354@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  if (v8)
  {
    sub_25214248C();
    swift_unknownObjectRetain_n();
    v10 = swift_dynamicCastClass();
    if (!v10)
    {
      swift_unknownObjectRelease();
      v10 = MEMORY[0x277D84F90];
    }

    v11 = *(v10 + 16);

    if (__OFSUB__(v8 >> 1, v7))
    {
      goto LABEL_14;
    }

    if (v11 != (v8 >> 1) - v7)
    {
      goto LABEL_15;
    }

    v9 = swift_dynamicCastClass();
    if (!v9)
    {
      swift_unknownObjectRelease();
      v9 = MEMORY[0x277D84F90];
    }

    goto LABEL_9;
  }

  while (1)
  {
    sub_252098E44(v5, v6, v7, v8);
LABEL_9:
    v12 = v9[2];
    if (!v12)
    {
      __break(1u);
      goto LABEL_13;
    }

    if (v12 != 1)
    {
      break;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    swift_unknownObjectRelease();
  }

  v13 = v9[4];
  v14 = v9[5];

  *a3 = v13;
  *(a3 + 8) = v14;
  *(a3 + 16) = a2 & 1;
  *(a3 + 24) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_25209446C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (v6)
  {
    sub_25214248C();
    swift_unknownObjectRetain_n();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
      swift_unknownObjectRelease();
      v8 = MEMORY[0x277D84F90];
    }

    v9 = *(v8 + 16);

    if (__OFSUB__(v6 >> 1, v5))
    {
      goto LABEL_12;
    }

    if (v9 != (v6 >> 1) - v5)
    {
      goto LABEL_13;
    }

    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      swift_unknownObjectRelease();
      v7 = MEMORY[0x277D84F90];
    }

    goto LABEL_9;
  }

  while (1)
  {
    sub_252098E44(v3, v4, v5, v6);
LABEL_9:
    if (*(v7 + 16))
    {
      break;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    swift_unknownObjectRelease();
  }

  v10 = *(v7 + 32);

  *a2 = v10 == 1.0;
  return result;
}

void *sub_252094570(void *result)
{
  v1 = *(result + 1);
  v51 = *result;
  v52 = v1;
  v2 = *(result + 3);
  v49 = *(result + 2);
  v50 = v2;
  v3 = *(&v51 + 1);
  v43 = v51;
  if (__OFSUB__(*(&v51 + 1), v51))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v4 = *(&v49 + 1);
  v5 = v49;
  if (__OFSUB__(*(&v49 + 1), v49))
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (*(&v49 + 1) - v49 >= *(&v51 + 1) - v51)
  {
    v6 = *(&v51 + 1) - v51;
  }

  else
  {
    v6 = *(&v49 + 1) - v49;
  }

  v48 = MEMORY[0x277D84F90];
  result = sub_25209B274(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_57;
  }

  v7 = v48;
  v37 = v50;
  v38 = *(&v49 + 1);
  v40 = v52;
  v39 = *(&v51 + 1);
  if (v6)
  {
    sub_2520A2D9C(&v51, &v45, &qword_27F4CDC20, &qword_252143DC0);
    result = sub_2520A2D9C(&v49, &v45, &qword_27F4CDC28, &qword_252143DC8);
    v8 = 0;
    if (v3 <= v43)
    {
      v9 = v43;
    }

    else
    {
      v9 = v3;
    }

    v33 = v9 - v43;
    if (v4 <= v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v4;
    }

    v30 = v10 - v5;
    v31 = v5 - v4;
    v35 = v43 - v3;
    while (v35 + v8)
    {
      if (v3 < v43)
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v33 == v8)
      {
        goto LABEL_47;
      }

      v44 = v43 + v8;
      result = v40(&v45, &v44);
      if (!(v31 + v8))
      {
        goto LABEL_59;
      }

      if (v4 < v5)
      {
        goto LABEL_48;
      }

      if (v30 == v8)
      {
        goto LABEL_49;
      }

      v41 = v45;
      v11 = v46;
      v12 = v47;
      *&v45 = v5 + v8;
      result = v37(&v44, &v45);
      v13 = v44;
      v48 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_25209B274((v14 > 1), v15 + 1, 1);
        v7 = v48;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 40 * v15;
      *(v16 + 32) = v41;
      ++v8;
      *(v16 + 48) = v11;
      *(v16 + 56) = v12;
      *(v16 + 64) = v13;
      v4 = v38;
      v3 = v39;
      if (v6 == v8)
      {
        v36 = v5 + v8;
        v17 = v43 + v8;
        if (v43 + v8 == v39)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }

    goto LABEL_59;
  }

  sub_2520A2D9C(&v51, &v45, &qword_27F4CDC20, &qword_252143DC0);
  result = sub_2520A2D9C(&v49, &v45, &qword_27F4CDC28, &qword_252143DC8);
  v36 = v5;
  v17 = v43;
  if (v43 == v3)
  {
LABEL_27:

    return v7;
  }

LABEL_28:
  if (v3 >= v43)
  {
    if (v17 <= v3)
    {
      v18 = v3;
    }

    else
    {
      v18 = v17;
    }

    v19 = v36;
    if (v36 <= v4)
    {
      v20 = v4;
    }

    else
    {
      v20 = v36;
    }

    v32 = v20;
    v34 = v18;
    v21 = v17;
    v29 = v5;
    while (v17 >= v43)
    {
      if (v34 == v21)
      {
        goto LABEL_51;
      }

      v44 = v21;
      result = v40(&v45, &v44);
      if (v4 == v19)
      {
        goto LABEL_27;
      }

      if (v4 < v5)
      {
        goto LABEL_52;
      }

      if (v36 < v5)
      {
        goto LABEL_53;
      }

      if (v32 == v19)
      {
        goto LABEL_54;
      }

      v22 = v17;
      v42 = v45;
      v23 = v46;
      v24 = v47;
      *&v45 = v19;
      result = v37(&v44, &v45);
      v25 = v44;
      v48 = v7;
      v27 = *(v7 + 16);
      v26 = *(v7 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_25209B274((v26 > 1), v27 + 1, 1);
        v7 = v48;
      }

      *(v7 + 16) = v27 + 1;
      v28 = v7 + 40 * v27;
      *(v28 + 32) = v42;
      ++v21;
      *(v28 + 48) = v23;
      *(v28 + 56) = v24;
      *(v28 + 64) = v25;
      ++v19;
      v4 = v38;
      v17 = v22;
      v5 = v29;
      if (v39 == v21)
      {
        goto LABEL_27;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}