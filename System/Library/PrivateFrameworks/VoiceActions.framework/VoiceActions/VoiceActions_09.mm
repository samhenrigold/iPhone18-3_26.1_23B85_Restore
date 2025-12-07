uint64_t sub_2722BAF90(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_2722005CC(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2722005CC((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_2722BB104(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_272377DEC();
  if (!v19)
  {
    return sub_272377B4C();
  }

  v41 = v19;
  v45 = sub_2723782EC();
  v32 = sub_2723782FC();
  sub_27237828C();
  result = sub_272377DCC();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_272377E3C();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_2723782DC();
      result = sub_272377E0C();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2722BB58C(uint64_t a1, char *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v27 = 0;
  v7 = *&v3[OBJC_IVAR___FeatureExtractObjc_stateAccessQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = &v27;
  *(v8 + 24) = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2722C3598;
  *(v9 + 24) = v8;
  v25 = sub_272259128;
  v26 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_27225537C;
  v24 = &unk_28818D448;
  v10 = _Block_copy(&aBlock);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v27 & 1) == 0)
  {
    if (qword_28088DF80 == -1)
    {
LABEL_6:
      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v17 = swift_allocObject();
      v18 = MEMORY[0x277D83B88];
      *(v17 + 16) = xmmword_27237AF80;
      v19 = MEMORY[0x277D83C10];
      *(v17 + 56) = v18;
      *(v17 + 64) = v19;
      *(v17 + 32) = a2;
      OS_os_log.info(_:_:)("Ignoring addSamples %d float bytes when not running", 51, 2, v17);

      v16 = 0;
      v12 = 0;
      return sub_272273524(v16, v12);
    }

LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a2;
  v12[4] = a1;
  v12[5] = ObjectType;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2722C2404;
  *(v13 + 24) = v12;
  v25 = sub_272259128;
  v26 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_27225537C;
  v24 = &unk_28818D4C0;
  v14 = _Block_copy(&aBlock);
  a2 = v11;

  dispatch_sync(v7, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_272377F6C();

  v16 = sub_2722C2404;
  return sub_272273524(v16, v12);
}

uint64_t sub_2722BB96C(uint64_t a1, char *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v27 = 0;
  v7 = *&v3[OBJC_IVAR___FeatureExtractObjc_stateAccessQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = &v27;
  *(v8 + 24) = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2722C25D0;
  *(v9 + 24) = v8;
  v25 = sub_272259128;
  v26 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_27225537C;
  v24 = &unk_28818D538;
  v10 = _Block_copy(&aBlock);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v27 & 1) == 0)
  {
    if (qword_28088DF80 == -1)
    {
LABEL_6:
      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v17 = swift_allocObject();
      v18 = MEMORY[0x277D83B88];
      *(v17 + 16) = xmmword_27237AF80;
      v19 = MEMORY[0x277D83C10];
      *(v17 + 56) = v18;
      *(v17 + 64) = v19;
      *(v17 + 32) = a2;
      OS_os_log.info(_:_:)("Ignoring addSamples %d int16 bytes when not running", 51, 2, v17);

      v16 = 0;
      v12 = 0;
      return sub_272273524(v16, v12);
    }

LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a2;
  v12[4] = a1;
  v12[5] = ObjectType;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2722C25E8;
  *(v13 + 24) = v12;
  v25 = sub_272259128;
  v26 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_27225537C;
  v24 = &unk_28818D5B0;
  v14 = _Block_copy(&aBlock);
  a2 = v11;

  dispatch_sync(v7, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_272377F6C();

  v16 = sub_2722C25E8;
  return sub_272273524(v16, v12);
}

uint64_t sub_2722BBD4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a1;
  v24 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_2723776AC();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2723776EC();
  v7 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2723776BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27221982C(0, &qword_280881910, 0x277D85C78);
  (*(v11 + 104))(v13, *MEMORY[0x277D851C8], v10);
  v14 = sub_272377F1C();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  v16 = v23;
  v17 = v24;
  v15[2] = v3;
  v15[3] = v16;
  v18 = ObjectType;
  v15[4] = v17;
  v15[5] = v18;
  aBlock[4] = sub_2722C2818;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2722454D0;
  aBlock[3] = &unk_28818D600;
  v19 = _Block_copy(aBlock);
  v20 = v3;

  sub_2723776CC();
  v27 = MEMORY[0x277D84F90];
  sub_2722C2C10(&qword_280882928, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2721F065C(&qword_280882930, &qword_272382AD8);
  sub_2722C1724(&qword_280882938, &qword_280882930, &qword_272382AD8);
  sub_27237815C();
  MEMORY[0x2743C5050](0, v9, v6, v19);
  _Block_release(v19);

  (*(v26 + 8))(v6, v4);
  (*(v7 + 8))(v9, v25);
}

uint64_t sub_2722BC13C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_2722BC1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v68 = a6;
  v66 = a4;
  v67 = a5;
  v64 = a2;
  v65 = a3;
  v59 = a1;
  v74 = a7;
  v77[36] = *MEMORY[0x277D85DE8];
  v75 = sub_272376E5C();
  v72 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v62 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_272376C7C();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v58 - v12;
  v14 = sub_272376D5C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v63 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v60 = &v58 - v18;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27237AFA0;
  *(inited + 32) = sub_27237782C();
  *(inited + 40) = v20;
  *(inited + 72) = MEMORY[0x277D84CC0];
  *(inited + 48) = 1819304813;
  *(inited + 80) = sub_27237782C();
  *(inited + 88) = v21;
  v22 = MEMORY[0x277D83B88];
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 96) = 16;
  v23 = sub_27237782C();
  v24 = MEMORY[0x277D839B0];
  *(inited + 128) = v23;
  *(inited + 136) = v25;
  *(inited + 168) = v24;
  *(inited + 144) = 0;
  *(inited + 176) = sub_27237782C();
  *(inited + 184) = v26;
  *(inited + 216) = MEMORY[0x277D83A90];
  *(inited + 192) = 1182400512;
  *(inited + 224) = sub_27237782C();
  *(inited + 232) = v27;
  *(inited + 264) = v22;
  *(inited + 240) = 1;
  sub_27221651C(inited);
  swift_setDeallocating();
  sub_2721F065C(&qword_280881A60, &unk_27237CA40);
  swift_arrayDestroy();
  v28 = NSTemporaryDirectory();
  sub_27237782C();

  v71 = v15;
  v29 = *(v15 + 56);
  v73 = v14;
  v69 = v29;
  v70 = v15 + 56;
  v29(v13, 1, 1, v14);
  (*(v8 + 104))(v10, *MEMORY[0x277CC91D8], v61);
  v30 = v62;
  v31 = v60;
  sub_272376D4C();
  sub_272376E4C();
  v32 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v32 timeIntervalSince1970];

  v77[0] = 0;
  v77[1] = 0xE000000000000000;
  sub_27237820C();
  sub_2722C2C10(&qword_280881BA8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v33 = sub_27237862C();
  MEMORY[0x2743C4AD0](v33);

  MEMORY[0x2743C4AD0](95, 0xE100000000000000);
  MEMORY[0x2743C4AD0](v64, v65);
  MEMORY[0x2743C4AD0](95, 0xE100000000000000);
  MEMORY[0x2743C4AD0](v66, v67);
  MEMORY[0x2743C4AD0](95, 0xE100000000000000);
  sub_272377D2C();
  MEMORY[0x2743C4AD0](95, 0xE100000000000000);
  v76 = v68;
  v34 = sub_27237862C();
  MEMORY[0x2743C4AD0](v34);

  MEMORY[0x2743C4AD0](1986098990, 0xE400000000000000);
  v35 = v63;
  sub_272376CEC();

  v36 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v37 = v35;
  v38 = sub_272376CCC();
  v39 = sub_27237770C();

  v77[0] = 0;
  v40 = [v36 initForWriting:v38 settings:v39 commonFormat:3 interleaved:1 error:v77];

  v41 = v77[0];
  if (v40)
  {
    v77[0] = 0;
    v42 = v41;
    if ([v40 writeFromBuffer:v59 error:v77])
    {
      v43 = v77[0];

      (*(v72 + 8))(v30, v75);
      v44 = v71;
      v45 = v73;
      (*(v71 + 8))(v31, v73);
      v46 = v74;
      (*(v44 + 32))(v74, v37, v45);
      v47 = v46;
      v48 = 0;
      return v69(v47, v48, 1, v45);
    }

    v51 = v77[0];
    v50 = sub_272376C6C();

    swift_willThrow();
  }

  else
  {
    v49 = v77[0];
    v50 = sub_272376C6C();

    swift_willThrow();
  }

  v45 = v73;
  v52 = *(v71 + 8);
  v52(v37, v73);
  (*(v72 + 8))(v30, v75);
  v52(v31, v45);
  if (qword_28088DF80 != -1)
  {
    swift_once();
  }

  sub_2721F065C(&qword_280881CB0, qword_27237D820);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_27237AF80;
  swift_getErrorValue();
  v54 = sub_2723786CC();
  v56 = v55;
  *(v53 + 56) = MEMORY[0x277D837D0];
  *(v53 + 64) = sub_27225CAF0();
  *(v53 + 32) = v54;
  *(v53 + 40) = v56;
  OS_os_log.error(_:_:)("Error: %{public}@", 17, 2, v53);

  v48 = 1;
  v47 = v74;
  return v69(v47, v48, 1, v45);
}

uint64_t sub_2722BCBCC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_2721F0560(a1, a2);
  v15 = sub_2722BCD7C(a1, a2, a1, a2);
  (*((*MEMORY[0x277D85000] & *v7) + 0x3A0))(v15, a3, a4, a5, a6, a7);
}

void *sub_2722BCCC4@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(a2 + 16);
    v6 = *(a2 + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 + 1 >= 3)
      {
        v10 = v5 + (v5 >> 63);
        v11 = result;
        v12 = a4;
        v9 = sub_2722C2204(v5 / 2, 0);
        result = memcpy(v9 + 4, v11, v10 & 0xFFFFFFFFFFFFFFFELL);
        a4 = v12;
        goto LABEL_13;
      }

LABEL_11:
      v9 = MEMORY[0x277D84F90];
LABEL_13:
      *a4 = v9;
      return result;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a3);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(a2) - a2;
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

char *sub_2722BCD7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v8 = v4;
    if (!v7)
    {
      v19[0] = a1;
      LOWORD(v19[1]) = a2;
      BYTE2(v19[1]) = BYTE2(a2);
      BYTE3(v19[1]) = BYTE3(a2);
      BYTE4(v19[1]) = BYTE4(a2);
      BYTE5(v19[1]) = BYTE5(a2);
      v9 = a3;
      v10 = a4;
      goto LABEL_10;
    }

    v16 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = a1;
    v13 = v16;
    v14 = a3;
    v15 = a4;
LABEL_8:
    v8 = sub_2722C322C(a1, v13, v12, v14, v15);
    sub_2721F05C8(a3, a4);
    return v8;
  }

  if (v7 == 2)
  {
    v11 = *(a1 + 24);
    v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = *(a1 + 16);
    v13 = v11;
    v14 = a3;
    v15 = a4;
    goto LABEL_8;
  }

  memset(v19, 0, 14);
  v9 = a3;
  v10 = a4;
  v8 = v4;
LABEL_10:
  sub_2722BCCC4(v19, v9, v10, &v18);
  sub_2721F05C8(a3, a4);
  if (!v8)
  {
    return v18;
  }

  return v8;
}

uint64_t sub_2722BD170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v80) = a6;
  v78 = a4;
  v79 = a5;
  v76 = a2;
  v77 = a3;
  v72 = a7;
  v85[36] = *MEMORY[0x277D85DE8];
  v83 = sub_272376E5C();
  v71 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_272376C7C();
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x28223BE20](v9);
  v73 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v66 - v12;
  v14 = sub_272376D5C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v81 = &v66 - v19;
  v66 = a1;
  v20 = *(a1 + 16);
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27237AFA0;
  *(inited + 32) = sub_27237782C();
  *(inited + 40) = v22;
  *(inited + 72) = MEMORY[0x277D84CC0];
  *(inited + 48) = 1819304813;
  *(inited + 80) = sub_27237782C();
  *(inited + 88) = v23;
  v24 = MEMORY[0x277D83B88];
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 96) = 16;
  v25 = sub_27237782C();
  v26 = MEMORY[0x277D839B0];
  *(inited + 128) = v25;
  *(inited + 136) = v27;
  *(inited + 168) = v26;
  *(inited + 144) = 0;
  *(inited + 176) = sub_27237782C();
  *(inited + 184) = v28;
  *(inited + 216) = MEMORY[0x277D839F8];
  *(inited + 192) = 0x40CF400000000000;
  *(inited + 224) = sub_27237782C();
  *(inited + 232) = v29;
  *(inited + 264) = v24;
  *(inited + 240) = 1;
  sub_27221651C(inited);
  swift_setDeallocating();
  sub_2721F065C(&qword_280881A60, &unk_27237CA40);
  swift_arrayDestroy();
  v30 = NSTemporaryDirectory();
  sub_27237782C();

  v69 = v15;
  v70 = v14;
  v67 = *(v15 + 56);
  v68 = v15 + 56;
  v67(v13, 1, 1, v14);
  (*(v74 + 104))(v73, *MEMORY[0x277CC91D8], v75);
  sub_272376D4C();
  sub_272376E4C();
  v31 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v31 timeIntervalSince1970];

  v85[0] = 0;
  v85[1] = 0xE000000000000000;
  sub_27237820C();
  sub_2722C2C10(&qword_280881BA8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v32 = sub_27237862C();
  MEMORY[0x2743C4AD0](v32);

  MEMORY[0x2743C4AD0](95, 0xE100000000000000);
  MEMORY[0x2743C4AD0](v76, v77);
  MEMORY[0x2743C4AD0](95, 0xE100000000000000);
  MEMORY[0x2743C4AD0](v78, v79);
  MEMORY[0x2743C4AD0](95, 0xE100000000000000);
  sub_272377D2C();
  MEMORY[0x2743C4AD0](95, 0xE100000000000000);
  v84 = v80;
  v33 = sub_27237862C();
  MEMORY[0x2743C4AD0](v33);

  MEMORY[0x2743C4AD0](1986098990, 0xE400000000000000);
  sub_272376CEC();

  v34 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v35 = sub_272376CCC();
  v36 = MEMORY[0x277D84F70];
  v37 = sub_27237770C();
  v85[0] = 0;
  v38 = [v34 initForWriting:v35 settings:v37 commonFormat:3 interleaved:1 error:v85];

  v39 = v85[0];
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v41 = v39;
    v42 = sub_272376C6C();

    swift_willThrow();
    v40 = 0;
  }

  v43 = objc_allocWithZone(MEMORY[0x277CB83A8]);
  v44 = sub_27237770C();
  v45 = [v43 initWithSettings_];

  if (!v45)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  if (HIDWORD(v20))
  {
    __break(1u);
    goto LABEL_20;
  }

  v80 = v38;
  v46 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v45 frameCapacity:v20];
  if (!v46)
  {
    goto LABEL_23;
  }

  v44 = v46;
  if (v20)
  {
    v47 = 0;
    v48 = v66 + 32;
    while (1)
    {
      v49 = [v44 int16ChannelData];
      if (!v49)
      {
        break;
      }

      *(*v49 + 2 * v47) = *(v48 + 2 * v47);
      if (v20 == ++v47)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_11:

  [v44 setFrameLength_];
  if (!v40)
  {
    v54 = v45;
    v52 = v71;
    v51 = v72;
    v53 = v83;
    v55 = v81;
    goto LABEL_15;
  }

  v85[0] = 0;
  if (![v40 writeFromBuffer:v44 error:v85])
  {
    v36 = v18;
    v59 = v85[0];
    v20 = sub_272376C6C();

    swift_willThrow();
    v38 = v80;
    if (qword_28088DF80 == -1)
    {
LABEL_17:
      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_27237AF80;
      swift_getErrorValue();
      v61 = sub_2723786CC();
      v63 = v62;
      *(v60 + 56) = MEMORY[0x277D837D0];
      *(v60 + 64) = sub_27225CAF0();
      *(v60 + 32) = v61;
      *(v60 + 40) = v63;
      OS_os_log.error(_:_:)("Error: %{public}@", 17, 2, v60);

      v56 = v70;
      v64 = *(v69 + 8);
      v64(v36, v70);
      (*(v71 + 8))(v82, v83);
      v64(v81, v56);
      v58 = 1;
      v51 = v72;
      return (v67)(v51, v58, 1, v56);
    }

LABEL_20:
    swift_once();
    goto LABEL_17;
  }

  v50 = v85[0];

  v52 = v71;
  v51 = v72;
  v53 = v83;
  v54 = v80;
  v55 = v81;
LABEL_15:

  (*(v52 + 8))(v82, v53);
  v57 = v69;
  v56 = v70;
  (*(v69 + 8))(v55, v70);
  (*(v57 + 32))(v51, v18, v56);
  v58 = 0;
  return (v67)(v51, v58, 1, v56);
}

void sub_2722BDCA8()
{
  v1 = v0;
  v2 = OBJC_IVAR___FeatureExtractObjc_config;
  v3 = *(v0 + OBJC_IVAR___FeatureExtractObjc_config);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + 0x90);
  v6 = v3;
  v7 = v5();

  v8 = (*((*v4 & *v7) + 0xB8))();
  v9 = *(v1 + v2);
  v10 = *((*v4 & *v9) + 0x90);
  v11 = v9;
  v12 = v10();

  v13 = (*((*v4 & *v12) + 0xD0))();
  v14 = v8 + v13;
  if (__OFADD__(v8, v13))
  {
    __break(1u);
    goto LABEL_6;
  }

  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = OBJC_IVAR___FeatureExtractObjc_spliceBufferLength;
  *(v1 + OBJC_IVAR___FeatureExtractObjc_spliceBufferLength) = v16;
  v18 = (v16 * 40) >> 64;
  v19 = 40 * v16;
  if (v18 == v19 >> 63)
  {
    *(v1 + OBJC_IVAR___FeatureExtractObjc_splicedVectorDim) = v19;
    *(v1 + OBJC_IVAR___FeatureExtractObjc_stopSignaled) = 0;
    v20 = sub_272377B5C();
    *(v20 + 16) = 40;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
    *(v20 + 80) = 0u;
    *(v20 + 96) = 0u;
    *(v20 + 112) = 0u;
    *(v20 + 128) = 0u;
    *(v20 + 144) = 0u;
    *(v20 + 160) = 0u;
    *(v20 + 176) = 0u;
    v21 = *(v1 + v2);
    v22 = *((*v4 & *v21) + 0x90);
    v23 = v21;
    v24 = v22();

    v25 = (*((*v4 & *v24) + 0x88))();
    v26 = sub_27220392C(v20, v25);

    *(v1 + OBJC_IVAR___FeatureExtractObjc_slidingCmvnBuffer) = v26;

    v27 = sub_272377B5C();
    *(v27 + 16) = 40;
    *(v27 + 32) = 0u;
    *(v27 + 48) = 0u;
    *(v27 + 64) = 0u;
    *(v27 + 80) = 0u;
    *(v27 + 96) = 0u;
    *(v27 + 112) = 0u;
    *(v27 + 128) = 0u;
    *(v27 + 144) = 0u;
    *(v27 + 160) = 0u;
    *(v27 + 176) = 0u;
    v28 = sub_27220392C(v27, *(v1 + v17));

    *(v1 + OBJC_IVAR___FeatureExtractObjc_spliceBuffer) = v28;

    *(v1 + OBJC_IVAR___FeatureExtractObjc_numSamplesRemovedFromAudioSampleInjestionBuffer) = 0;
    *(v1 + OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBufferStartIndex) = 0;
    v29 = OBJC_IVAR___FeatureExtractObjc_audioSampleWorkBuffer;
    swift_beginAccess();

    v30 = sub_272376ECC();
    *(v1 + v29) = *v30;
    swift_endAccess();
    v31 = OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBuffer;
    swift_beginAccess();
    *(v1 + v31) = *v30;

    *(v1 + OBJC_IVAR___FeatureExtractObjc_nnetIntakeBuffer) = MEMORY[0x277D84F90];

    *(v1 + OBJC_IVAR___FeatureExtractObjc_spliceBufferCounter) = 0;
    *(v1 + OBJC_IVAR___FeatureExtractObjc_spliceBufferCounterAll) = 0;
    *(v1 + OBJC_IVAR___FeatureExtractObjc_frameCounter) = 0;
    v32 = sub_272377B5C();
    *(v32 + 16) = 40;
    *(v32 + 32) = 0u;
    *(v32 + 48) = 0u;
    *(v32 + 64) = 0u;
    *(v32 + 80) = 0u;
    *(v32 + 96) = 0u;
    *(v32 + 112) = 0u;
    *(v32 + 128) = 0u;
    *(v32 + 144) = 0u;
    *(v32 + 160) = 0u;
    *(v32 + 176) = 0u;
    *(v1 + OBJC_IVAR___FeatureExtractObjc_cmvnSlidingWindowSum) = v32;

    *(v1 + OBJC_IVAR___FeatureExtractObjc_cmvnBufferCount) = 0;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_2722BE09C()
{
  v1 = v0;
  v2 = OBJC_IVAR___FeatureExtractObjc_audioSampleWorkBuffer;
  v69 = OBJC_IVAR___FeatureExtractObjc_fftCalculator;
  result = swift_beginAccess();
  v4 = *(v0 + v2);
  v5 = v4 + 3;
  if (v4[3] < 401)
  {
    return result;
  }

  v70 = v1;
  v68 = v2;
  while (1)
  {
    sub_2721F065C(&qword_280881848, &unk_27237C250);
    v6 = swift_allocObject();
    v7 = j__malloc_size(v6);
    v8 = v7 - 32;
    if (v7 < 32)
    {
      v8 = v7 - 29;
    }

    *(v6 + 2) = 400;
    *(v6 + 3) = 2 * (v8 >> 2);
    v9 = v6 + 8;
    v73 = xmmword_272382AA0;
    v74 = v4;
    v10 = MEMORY[0x28223BE20](v7);
    MEMORY[0x28223BE20](v10);
    swift_retain_n();
    result = sub_272237D54(v4 + 2, (v4 + 5), sub_2722C3618);
    if (v12)
    {
      v13 = v70;
      if (*v5 < 1)
      {
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v14 = 0;
      while (1)
      {
        v15 = v4[4];
        v16 = v14 + v15 >= v4[2] ? v4[2] : 0;
        v9[v14] = *(v4 + v14 + v15 - v16 + 10);
        if (v14 == 399)
        {
          break;
        }

        if (++v14 >= *v5)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
      v17 = v11;

      v13 = v70;
      if (v17 != 400)
      {
        goto LABEL_88;
      }
    }

    v18 = *(v6 + 2);
    if (qword_28088DF90 != -1)
    {
      result = swift_once();
    }

    v19 = qword_280893AC8;
    if (v18 != *(qword_280893AC8 + 16))
    {
      goto LABEL_81;
    }

    v20 = *(v6 + 2);
    if (!v20)
    {
      v23 = MEMORY[0x277D84F90];
      goto LABEL_24;
    }

    if (v20 <= 7)
    {
      v21 = 0;
      v22 = 0.0;
LABEL_71:
      v61 = v20 - v21;
      v62 = &v6[v21 + 8];
      do
      {
        v63 = *v62++;
        v22 = v22 + v63;
        --v61;
      }

      while (v61);
      goto LABEL_73;
    }

    v21 = v20 & 0x7FFFFFFFFFFFFFF8;
    v59 = v6 + 12;
    v22 = 0.0;
    v60 = v20 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v22 = (((((((v22 + COERCE_FLOAT(*(v59 - 1))) + COERCE_FLOAT(HIDWORD(*(v59 - 2)))) + COERCE_FLOAT(*(v59 - 1))) + COERCE_FLOAT(HIDWORD(*(v59 - 1)))) + COERCE_FLOAT(*v59)) + COERCE_FLOAT(HIDWORD(*v59))) + COERCE_FLOAT(v59[1])) + COERCE_FLOAT(HIDWORD(*v59));
      v59 += 4;
      v60 -= 8;
    }

    while (v60);
    if (v20 != v21)
    {
      goto LABEL_71;
    }

LABEL_73:
    v64 = v22 / v20;
    *&v73 = MEMORY[0x277D84F90];
    sub_2722005AC(0, v20, 0);
    v23 = v73;
    v65 = *(v73 + 16);
    do
    {
      v66 = *v9;
      *&v73 = v23;
      v67 = *(v23 + 3);
      if (v65 >= v67 >> 1)
      {
        sub_2722005AC((v67 > 1), v65 + 1, 1);
        v23 = v73;
      }

      *(v23 + 2) = v65 + 1;
      *&v23[4 * v65 + 32] = v66 - v64;
      ++v9;
      ++v65;
      --v20;
    }

    while (v20);
LABEL_24:

    v24 = *(v23 + 2);

    if (v24 >= 2)
    {
      break;
    }

LABEL_29:
    if (!*(v23 + 2))
    {
      goto LABEL_82;
    }

    v26 = *(v23 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_2722002AC(v23);
    }

    *(v23 + 8) = v26 * 0.03;
    v27 = sub_272377B5C();
    *(v27 + 16) = 400;
    bzero((v27 + 32), 0x640uLL);
    v28 = *(v19 + 16);
    v72 = v27;

    MEMORY[0x2743C6BD0](v23 + 32, 1, v19 + 32, 1, v27 + 32, 1, v28);

    sub_272242274(v23, v19, &v72);
    v29 = v72;
    v30 = *(**(v13 + v69) + 136);

    v31 = v30(v29);

    if (qword_28088DF88 != -1)
    {
      result = swift_once();
    }

    if (qword_280893AC0 < -3)
    {
      goto LABEL_83;
    }

    v32 = qword_280893AC0 / 2;
    v33 = *(v31 + 16);
    if (v33 <= qword_280893AC0 / 2)
    {
      goto LABEL_84;
    }

    v34 = v32 + 1;
    if (v33 != v32 + 1)
    {
      sub_272241D34(v31, v31 + 32, 0, (2 * v34) | 1);
      v36 = v35;

      v31 = v36;
    }

    v37 = sub_272377B5C();
    *(v37 + 16) = 40;
    *(v37 + 32) = 0u;
    *(v37 + 48) = 0u;
    *(v37 + 64) = 0u;
    *(v37 + 80) = 0u;
    *(v37 + 96) = 0u;
    *(v37 + 112) = 0u;
    *(v37 + 128) = 0u;
    *(v37 + 144) = 0u;
    *(v37 + 160) = 0u;
    *(v37 + 176) = 0u;
    v71 = v37;
    if (qword_28088DF98 != -1)
    {
      swift_once();
    }

    sub_272242158(v31, qword_280893AD0, &v71, 1uLL, 0x28uLL, v34);

    v38 = v71;
    v39 = *(v71 + 2);
    if (v39)
    {
      *&v73 = MEMORY[0x277D84F90];
      sub_2722005AC(0, v39, 0);
      v40 = v73;
      v41 = *(v73 + 16);
      v42 = 32;
      do
      {
        v43 = *&v38[v42];
        if (v43 <= 1.2e-38)
        {
          v43 = 1.2e-38;
        }

        v44 = logf(v43);
        *&v73 = v40;
        v45 = *(v40 + 24);
        if (v41 >= v45 >> 1)
        {
          v46 = v44;
          sub_2722005AC((v45 > 1), v41 + 1, 1);
          v44 = v46;
          v40 = v73;
        }

        *(v40 + 16) = v41 + 1;
        *(v40 + 4 * v41 + 32) = v44;
        v42 += 4;
        ++v41;
        --v39;
      }

      while (v39);

      v13 = v70;
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }

    (*((*MEMORY[0x277D85000] & *v13) + 0x3D0))(v40);

    swift_beginAccess();
    result = *(v13 + v68);
    if (*(result + 24) < 160)
    {
      goto LABEL_85;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_272237B98();
    }

    v47 = *(v13 + v68);
    v48 = v47[4];
    v49 = v47[2];
    if (v48 >= v49)
    {
      v50 = v47[2];
    }

    else
    {
      v50 = 0;
    }

    v51 = v48 - v50;
    if (v48 + 160 >= v49)
    {
      v52 = v47[2];
    }

    else
    {
      v52 = 0;
    }

    v53 = v51 >= v48 + 160 - v52 && __OFSUB__(v49, v51);
    if (v53)
    {
      goto LABEL_89;
    }

    v53 = __OFADD__(v48, 160);
    v54 = v48 + 160;
    if (v53)
    {
      goto LABEL_86;
    }

    v55 = __OFSUB__(v54, v49);
    v56 = v54 - v49;
    if (v56 < 0 == v55)
    {
      v54 = v56;
      if (v55)
      {
        goto LABEL_90;
      }
    }

    v47[4] = v54;
    v57 = v47[3];
    v53 = __OFSUB__(v57, 160);
    v58 = v57 - 160;
    if (v53)
    {
      goto LABEL_87;
    }

    v47[3] = v58;
    swift_endAccess();

    v4 = *(v13 + v68);
    v5 = v4 + 3;
    if (v4[3] <= 400)
    {
      return result;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2722002AC(v23);
    v23 = result;
  }

  while (1)
  {
    v25 = v24 - 1;
    if (v24 - 1 >= *(v23 + 2))
    {
      break;
    }

    *&v23[4 * v24 + 28] = *&v23[4 * v24 + 28] + (*&v23[4 * v24 + 24] * -0.97);
    --v24;
    if (v25 <= 1)
    {
      goto LABEL_29;
    }
  }

LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
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
LABEL_90:
  __break(1u);
  return result;
}

uint64_t sub_2722BE8D8()
{
  v1 = v0;
  v2 = OBJC_IVAR___FeatureExtractObjc_nnetIntakeBuffer;
  v3 = *(*(v0 + OBJC_IVAR___FeatureExtractObjc_nnetIntakeBuffer) + 16);
  v4 = *(v0 + OBJC_IVAR___FeatureExtractObjc_config);
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x90);
  v7 = v4;
  v8 = v6();

  v9 = (*((*v5 & *v8) + 0x100))();
  if (v3 != v9)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = *(v1 + v2);
  if (!*(v11 + 16))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (*(*(v11 + 32) + 16) != *(v1 + OBJC_IVAR___FeatureExtractObjc_splicedVectorDim))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = *(**(v1 + OBJC_IVAR___FeatureExtractObjc_nn) + 216);

  v15 = v13(v14);
  v40 = v17;
  v41 = v16;

  v18 = *(v15 + 16);
  if (!v18)
  {
LABEL_40:
    __break(1u);
    return MEMORY[0x2821F9378](isUniquelyReferenced_nonNull_native);
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  do
  {
    if (v19 >= *(v15 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v21 = *(v15 + 8 * v19 + 32);
    v22 = *(v21 + 16);
    v23 = *(v20 + 2);
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
      goto LABEL_31;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v24 <= *(v20 + 3) >> 1)
    {
      if (!*(v21 + 16))
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v23 <= v24)
      {
        v25 = v23 + v22;
      }

      else
      {
        v25 = v23;
      }

      isUniquelyReferenced_nonNull_native = sub_2721FF8B4(isUniquelyReferenced_nonNull_native, v25, 1, v20);
      v20 = isUniquelyReferenced_nonNull_native;
      if (!*(v21 + 16))
      {
LABEL_6:

        if (v22)
        {
          goto LABEL_32;
        }

        goto LABEL_7;
      }
    }

    v26 = *(v20 + 2);
    if ((*(v20 + 3) >> 1) - v26 < v22)
    {
      goto LABEL_33;
    }

    memcpy(&v20[4 * v26 + 32], (v21 + 32), 4 * v22);

    if (v22)
    {
      v27 = *(v20 + 2);
      v28 = __OFADD__(v27, v22);
      v29 = v27 + v22;
      if (v28)
      {
        goto LABEL_34;
      }

      *(v20 + 2) = v29;
    }

LABEL_7:
    ++v19;
  }

  while (v18 != v19);
  v30 = *(v15 + 16);
  if (!v30)
  {
    goto LABEL_40;
  }

  v31 = *(v15 + 32);

  v32 = *(v31 + 16);

  v33 = v30 * v32;
  if ((v30 * v32) >> 64 != (v30 * v32) >> 63)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if ((v33 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_39;
  }

  v34 = [objc_allocWithZone(MEMORY[0x277CBEA90]) initWithBytes:v20 + 32 length:4 * v33];

  v35 = v1 + OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable;
  v36 = *(v1 + OBJC_IVAR___FeatureExtractObjc_acousticModelOutputAvailable);
  if (v36)
  {
    v37 = *(v35 + 8);
    sub_2722734B4(v36, v37);
    v38 = v34;
    v36(v34, v41, v40);

    sub_272273524(v36, v37);
  }

  isUniquelyReferenced_nonNull_native = v12;

  return MEMORY[0x2821F9378](isUniquelyReferenced_nonNull_native);
}

void sub_2722BEC60()
{
  v1 = *(v0 + OBJC_IVAR___FeatureExtractObjc_splicedVectorDim);
  if (v1 < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v1)
  {
    v2 = sub_272377B5C();
    *(v2 + 16) = v1;
    bzero((v2 + 32), 4 * v1);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(v0 + OBJC_IVAR___FeatureExtractObjc_spliceBufferCounterAll);
  v4 = *(v0 + OBJC_IVAR___FeatureExtractObjc_spliceBufferLength);
  if (v3 >= v4)
  {
    v18 = *(v2 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = *(v0 + OBJC_IVAR___FeatureExtractObjc_spliceBuffer);
      v21 = v20 + 32;
      v22 = *(v20 + 16);
      while (1)
      {
        v23 = v19 / 0x28;
        if (v19 / 0x28 >= v22)
        {
          break;
        }

        v24 = *(v21 + 8 * v23);
        if (v19 % 0x28 >= *(v24 + 16))
        {
          goto LABEL_37;
        }

        if (v19 >= v18)
        {
          goto LABEL_38;
        }

        *(v2 + 32 + 4 * v19) = *(v24 + 32 - 160 * v23 + 4 * v19);
        if (v18 == ++v19)
        {
          return;
        }
      }

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
      goto LABEL_42;
    }
  }

  else
  {
    v5 = v4 - v3;
    if (__OFSUB__(v4, v3))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v6 = 40 * v5;
    if ((v5 * 40) >> 64 != (40 * v5) >> 63)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v6)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v7 = *(v0 + OBJC_IVAR___FeatureExtractObjc_spliceBuffer);
      if (v5 >= *(v7 + 16))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v8 = 0;
      v9 = v7 + 32;
      v10 = 32;
      while (1)
      {
        v11 = *(v9 + 8 * v5);
        if (v8 % 0x28 >= *(v11 + 16))
        {
          break;
        }

        v12 = *(v2 + 16);
        if (v8 >= v12)
        {
          goto LABEL_35;
        }

        *(v2 + 32 + 4 * v8) = *(v11 + v10 - 160 * (v8 / 0x28));
        v10 += 4;
        if (v6 == ++v8)
        {
          if (v12 >= v6)
          {
            goto LABEL_17;
          }

          __break(1u);
          break;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v12 = *(v2 + 16);
LABEL_17:
    if (v6 != v12)
    {
      if (v6 >= v12)
      {
LABEL_48:
        __break(1u);
        return;
      }

      v13 = *(v0 + OBJC_IVAR___FeatureExtractObjc_spliceBuffer);
      v14 = v13 + 32;
      v15 = *(v13 + 16);
      while (1)
      {
        v16 = v6 / 0x28;
        if (v6 / 0x28 >= v15)
        {
          goto LABEL_39;
        }

        v17 = *(v14 + 8 * v16);
        if (v6 % 0x28 >= *(v17 + 16))
        {
          goto LABEL_40;
        }

        if (v6 >= *(v2 + 16))
        {
          goto LABEL_41;
        }

        *(v2 + 32 + 4 * v6) = *(v17 - 160 * v16 + 4 * v6 + 32);
        if (v12 == ++v6)
        {
          return;
        }
      }
    }
  }
}

void sub_2722BEF00()
{
  v5 = OBJC_IVAR___FeatureExtractObjc_spliceBufferCounterAll;
  v6 = *(v1 + OBJC_IVAR___FeatureExtractObjc_spliceBufferCounterAll);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    goto LABEL_37;
  }

  v0 = v1;
  *(v1 + OBJC_IVAR___FeatureExtractObjc_spliceBufferCounterAll) = v8;
  v2 = OBJC_IVAR___FeatureExtractObjc_spliceBufferCounter;
  v9 = *(v1 + OBJC_IVAR___FeatureExtractObjc_spliceBufferCounter);
  v7 = __OFADD__(v9, 1);
  v10 = v9 + 1;
  if (v7)
  {
    goto LABEL_38;
  }

  *(v1 + OBJC_IVAR___FeatureExtractObjc_spliceBufferCounter) = v10;
  v3 = OBJC_IVAR___FeatureExtractObjc_config;
  v11 = *(v1 + OBJC_IVAR___FeatureExtractObjc_config);
  v4 = MEMORY[0x277D85000];
  v12 = *((*MEMORY[0x277D85000] & *v11) + 0x90);
  v13 = v11;
  v14 = v12();

  v1 = (*((*v4 & *v14) + 0xD0))();
  v15 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    goto LABEL_39;
  }

  v16 = *(v0 + v2);
  v17 = *(v0 + v3);
  v18 = *((*v4 & *v17) + 0x90);
  v19 = v17;
  v20 = v18();

  v21 = (*((*v4 & *v20) + 0xE8))();
  if (v16 >= v21 && *(v0 + v5) >= v15)
  {
    v1 = (*((*v4 & *v0) + 0x3C0))();
    *(v0 + v2) = 0;
    v5 = OBJC_IVAR___FeatureExtractObjc_nnetIntakeBuffer;
    v2 = *(v0 + OBJC_IVAR___FeatureExtractObjc_nnetIntakeBuffer);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + v5) = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v24 = *(v2 + 16);
      v23 = *(v2 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v2 = sub_272241E04((v23 > 1), v24 + 1, 1, v2);
      }

      *(v2 + 16) = v25;
      *(v2 + 8 * v24 + 32) = v1;
      *(v0 + v5) = v2;
      v26 = *(v0 + v3);
      v27 = *((*v4 & *v26) + 0x90);
      v28 = v26;
      v2 = v27();

      v29 = (*((*v4 & *v2) + 0x100))();
      if (v25 != v29)
      {
        break;
      }

      v1 = *(v0 + v5);
      v37 = v1[2];
      if (!v37)
      {
LABEL_28:
        (*((*v4 & *v0) + 0x3B8))();
        *(v0 + v5) = MEMORY[0x277D84F90];

        return;
      }

      v3 = 0;
      while (v3 < v1[2])
      {
        v4 = *(v1[v3 + 4] + 16);
        if (v4)
        {
          v2 = 0;
          while (v3 < v1[2])
          {
            v30 = v1[v3 + 4];
            if (v2 >= *(v30 + 16))
            {
              goto LABEL_32;
            }

            if (v2 == 280)
            {
              goto LABEL_33;
            }

            v31 = *(v30 + 4 * v2 + 32);
            v32 = flt_28818CA30[v2 + 8];
            v33 = flt_28818CEB0[v2 + 8];
            v34 = swift_isUniquelyReferenced_nonNull_native();
            *(v0 + v5) = v1;
            if ((v34 & 1) == 0)
            {
              v1 = sub_272200344(v1);
              *(v0 + v5) = v1;
            }

            if (v3 >= v1[2])
            {
              goto LABEL_34;
            }

            v35 = v1[v3 + 4];
            v36 = swift_isUniquelyReferenced_nonNull_native();
            v1[v3 + 4] = v35;
            if ((v36 & 1) == 0)
            {
              v35 = sub_2722002AC(v35);
              v1[v3 + 4] = v35;
            }

            if (v2 >= *(v35 + 2))
            {
              goto LABEL_35;
            }

            *&v35[4 * v2 + 32] = (v31 + v32) * v33;
            *(v0 + v5) = v1;
            if (v4 == ++v2)
            {
              goto LABEL_12;
            }
          }

          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          break;
        }

LABEL_12:
        ++v3;
        v4 = MEMORY[0x277D85000];
        if (v3 == v37)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v2 = sub_272241E04(0, *(v2 + 16) + 1, 1, v2);
      *(v0 + v5) = v2;
    }
  }
}

uint64_t sub_2722BF3D4(void *a1)
{
  if (a1[2] != 40)
  {
    goto LABEL_78;
  }

  v4 = v1;
  v2 = a1;
  v3 = OBJC_IVAR___FeatureExtractObjc_slidingCmvnBuffer;
  v1 = *(v1 + OBJC_IVAR___FeatureExtractObjc_slidingCmvnBuffer);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v3) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_79;
  }

  while (1)
  {
    v7 = v1[2];
    v6 = v1[3];
    if (v7 >= v6 >> 1)
    {
      v1 = sub_272241E04((v6 > 1), v7 + 1, 1, v1);
    }

    v1[2] = v7 + 1;
    v1[v7 + 4] = v2;
    *(v4 + v3) = v1;
    v8 = OBJC_IVAR___FeatureExtractObjc_cmvnBufferCount;
    v9 = *(v4 + OBJC_IVAR___FeatureExtractObjc_cmvnBufferCount);
    v96 = OBJC_IVAR___FeatureExtractObjc_config;
    v10 = *(v4 + OBJC_IVAR___FeatureExtractObjc_config);
    v11 = MEMORY[0x277D85000];
    v12 = *((*MEMORY[0x277D85000] & *v10) + 0x90);
    v13 = v10;
    v14 = v12();

    v15 = (*((*v11 & *v14) + 0x88))();
    if (v9 < v15)
    {
      v16 = *(v4 + v8);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_81;
      }

      *(v4 + v8) = v18;
    }

    v19 = *(v4 + v3);
    if (!*(v19 + 16))
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v20 = *(v19 + 32);

    v94 = v3;
    sub_2722C2B50(0, 1);
    v21 = OBJC_IVAR___FeatureExtractObjc_cmvnSlidingWindowSum;

    v23 = sub_2722BFE3C(v22, v2);

    *(v4 + v21) = v23;

    v25 = sub_2722C0018(v24, v20);

    *(v4 + v21) = v25;

    v26 = *(v4 + v96);
    v27 = *((*v11 & *v26) + 0x90);
    v28 = v26;
    v29 = v27();

    v30 = (*((*v11 & *v29) + 0x88))();
    v31 = *(v4 + v8);
    if (v31 >= v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = *(v4 + v8);
    }

    v33 = *(v4 + v21);
    v34 = *(v33 + 16);
    v35 = MEMORY[0x277D84F90];
    v95 = v4;
    if (v34)
    {
      v36 = v32;
      v98[0] = MEMORY[0x277D84F90];

      sub_2722005AC(0, v34, 0);
      v35 = v98[0];
      v37 = *(v98[0] + 16);
      v38 = 32;
      do
      {
        v39 = *(v33 + v38);
        v98[0] = v35;
        v40 = *(v35 + 24);
        if (v37 >= v40 >> 1)
        {
          sub_2722005AC((v40 > 1), v37 + 1, 1);
          v35 = v98[0];
        }

        *(v35 + 16) = v37 + 1;
        *(v35 + 4 * v37 + 32) = v39 / v36;
        v38 += 4;
        ++v37;
        --v34;
      }

      while (v34);

      v41 = v8;
      v31 = *(v4 + v8);
      v11 = MEMORY[0x277D85000];
    }

    else
    {
      v41 = v8;
    }

    v42 = v96;
    v43 = *(v4 + v96);
    v44 = *((*v11 & *v43) + 0x90);
    v45 = v43;
    v46 = v44();

    v47 = (*((*v11 & *v46) + 0xA0))();
    if (v31 < v47)
    {
      goto LABEL_20;
    }

    v49 = *(v4 + v41);
    v50 = *(v4 + v96);
    v51 = *((*v11 & *v50) + 0x90);
    v52 = v50;
    v53 = v51();

    v54 = (*((*v11 & *v53) + 0xA0))();
    if (v49 != v54)
    {
      break;
    }

    v55 = *(v4 + v96);
    v56 = *((*v11 & *v55) + 0x90);
    v14 = ((*v11 & *v55) + 144);
    v57 = v55;
    v2 = v56();

    v15 = (*((*v11 & *v2) + 0xA0))();
    v93 = v15;
    if (v15 < 0)
    {
      goto LABEL_82;
    }

    if (!v15)
    {
LABEL_20:
    }

    v97 = 0;
    v92 = *(v35 + 16);
    v90 = *((*v11 & *v4) + 0x3C8);
    v91 = OBJC_IVAR___FeatureExtractObjc_spliceBuffer;
    while (1)
    {
      v58 = *(v4 + v42);
      v59 = *((*v11 & *v58) + 0x90);
      v60 = v58;
      v61 = v59();

      v3 = (*((*v11 & *v61) + 0x88))();
      v62 = *(v4 + v42);
      v63 = *((*v11 & *v62) + 0x90);
      v64 = v62;
      v2 = v63();

      v1 = (*((*v11 & *v2) + 0xA0))();
      v65 = v3 - v1;
      if (__OFSUB__(v3, v1))
      {
        break;
      }

      v17 = __OFADD__(v65, v97);
      v66 = v65 + v97;
      if (v17)
      {
        goto LABEL_74;
      }

      if ((v66 & 0x8000000000000000) != 0)
      {
        goto LABEL_75;
      }

      v67 = *(v4 + v94);
      if (v66 >= *(v67 + 16))
      {
        goto LABEL_76;
      }

      v2 = *(v67 + 8 * v66 + 32);
      if (v92 >= v2[2])
      {
        v3 = v2[2];
      }

      else
      {
        v3 = v92;
      }

      v98[0] = MEMORY[0x277D84F90];

      v1 = v98;
      sub_2722005AC(0, v3, 0);
      v68 = v98[0];
      if (v3)
      {
        v69 = 0;
        v4 = v2[2];
        v70 = v35 + 32;
        while (v4 != v69)
        {
          if (v69 >= v2[2])
          {
            goto LABEL_68;
          }

          v71 = *(v35 + 16);
          if (v69 == v71)
          {
            goto LABEL_69;
          }

          if (v69 >= v71)
          {
            goto LABEL_70;
          }

          v72 = *(v2 + v69 + 8);
          v73 = *(v70 + 4 * v69);
          v98[0] = v68;
          v75 = *(v68 + 16);
          v74 = *(v68 + 24);
          if (v75 >= v74 >> 1)
          {
            v1 = v98;
            sub_2722005AC((v74 > 1), v75 + 1, 1);
            v70 = v35 + 32;
            v68 = v98[0];
          }

          ++v69;
          *(v68 + 16) = v75 + 1;
          *(v68 + 4 * v75 + 32) = v72 - v73;
          if (v3 == v69)
          {
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

LABEL_43:
      v76 = v2[2];
      if (v3 != v76)
      {
        v4 = v95;
        v42 = v96;
        while (v3 < v76)
        {
          v81 = *(v35 + 16);
          if (v3 == v81)
          {
            goto LABEL_45;
          }

          if (v3 >= v81)
          {
            goto LABEL_72;
          }

          v82 = *(v2 + v3 + 8);
          v83 = *(v35 + 4 * v3 + 32);
          v98[0] = v68;
          v85 = *(v68 + 16);
          v84 = *(v68 + 24);
          if (v85 >= v84 >> 1)
          {
            v1 = v98;
            sub_2722005AC((v84 > 1), v85 + 1, 1);
            v68 = v98[0];
          }

          ++v3;
          *(v68 + 16) = v85 + 1;
          *(v68 + 4 * v85 + 32) = v82 - v83;
          v76 = v2[2];
          if (v3 == v76)
          {
            goto LABEL_45;
          }
        }

LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        break;
      }

      v4 = v95;
      v42 = v96;
LABEL_45:

      v1 = *(v4 + v91);
      v77 = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + v91) = v1;
      if ((v77 & 1) == 0)
      {
        v1 = sub_272241E04(0, v1[2] + 1, 1, v1);
        *(v4 + v91) = v1;
      }

      v79 = v1[2];
      v78 = v1[3];
      v2 = (v79 + 1);
      if (v79 >= v78 >> 1)
      {
        v1 = sub_272241E04((v78 > 1), v79 + 1, 1, v1);
      }

      v1[2] = v2;
      v1[v79 + 4] = v68;
      *(v4 + v91) = v1;
      if (!v1[2])
      {
        goto LABEL_77;
      }

      v80 = sub_2722C2B50(0, 1);
      v90(v80);
      ++v97;
      v11 = MEMORY[0x277D85000];
      if (v97 == v93)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    v1 = sub_272241E04(0, v1[2] + 1, 1, v1);
    *(v4 + v3) = v1;
  }

  v15 = sub_2722C0018(v86, v35);

  v2 = OBJC_IVAR___FeatureExtractObjc_spliceBuffer;
  v14 = *(v4 + OBJC_IVAR___FeatureExtractObjc_spliceBuffer);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v4) = v14;
  if (result)
  {
    goto LABEL_61;
  }

LABEL_83:
  result = sub_272241E04(0, v14[2] + 1, 1, v14);
  v14 = result;
  *(v2 + v4) = result;
LABEL_61:
  v88 = v14[2];
  v87 = v14[3];
  if (v88 >= v87 >> 1)
  {
    result = sub_272241E04((v87 > 1), v88 + 1, 1, v14);
    v14 = result;
  }

  v14[2] = v88 + 1;
  v14[v88 + 4] = v15;
  *(v2 + v4) = v14;
  if (v14[2])
  {
    sub_2722C2B50(0, 1);
    v89 = *((*v11 & *v4) + 0x3C8);

    return v89();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2722BFE3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v27 = MEMORY[0x277D84F90];
  sub_2722005AC(0, v6, 0);
  result = v27;
  v26 = v4;
  v24 = a1;
  v25 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v28 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v23 = v12;
        sub_2722005AC((v15 > 1), v16 + 1, 1);
        v12 = v23;
        result = v28;
      }

      --v11;
      *(result + 16) = v16 + 1;
      *(result + 4 * v16 + 32) = v13 + v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v26 > v12)
  {
    while (v6 < v26)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v18 = *(v24 + 32 + 4 * v6);
        v19 = *(v25 + 32 + 4 * v6);
        v29 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v12;
          sub_2722005AC((v20 > 1), v21 + 1, 1);
          v12 = v22;
          result = v29;
        }

        *(result + 16) = v21 + 1;
        *(result + 4 * v21 + 32) = v18 + v19;
        ++v6;
        if (v17 != v26)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2722C0018(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v27 = MEMORY[0x277D84F90];
  sub_2722005AC(0, v6, 0);
  result = v27;
  v26 = v4;
  v24 = a1;
  v25 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v28 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v23 = v12;
        sub_2722005AC((v15 > 1), v16 + 1, 1);
        v12 = v23;
        result = v28;
      }

      --v11;
      *(result + 16) = v16 + 1;
      *(result + 4 * v16 + 32) = v13 - v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v26 > v12)
  {
    while (v6 < v26)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v18 = *(v24 + 32 + 4 * v6);
        v19 = *(v25 + 32 + 4 * v6);
        v29 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v12;
          sub_2722005AC((v20 > 1), v21 + 1, 1);
          v12 = v22;
          result = v29;
        }

        *(result + 16) = v21 + 1;
        *(result + 4 * v21 + 32) = v18 - v19;
        ++v6;
        if (v17 != v26)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void sub_2722C01F4()
{
  v0 = sub_272377B5C();
  *(v0 + 16) = 400;
  bzero((v0 + 32), 0x640uLL);
  v1 = xmmword_272382AB0;
  v2 = xmmword_272382AC0;
  v3 = 32;
  v13 = vdupq_n_s32(0x43C78000u);
  v14 = vdupq_n_s32(0x40490FDAu);
  v11 = vdupq_n_s32(0x3F0A3D71u);
  v12 = vdupq_n_s32(0xBEEB851F);
  v10 = vdupq_n_s64(4uLL);
  do
  {
    v15 = v2;
    v16 = v1;
    v4 = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v2)), vcvtq_f64_u64(v1));
    v20 = vdivq_f32(vmulq_f32(vaddq_f32(v4, v4), v14), v13);
    v17 = cosf(v20.f32[1]);
    v5.f32[0] = cosf(v20.f32[0]);
    v5.f32[1] = v17;
    v18 = v5;
    v6 = cosf(v20.f32[2]);
    v7 = v18;
    v7.f32[2] = v6;
    v19 = v7;
    v8 = cosf(v20.f32[3]);
    v9 = v19;
    v9.f32[3] = v8;
    *(v0 + v3) = vaddq_f32(vmulq_f32(v9, v12), v11);
    v1 = vaddq_s64(v16, v10);
    v2 = vaddq_s64(v15, v10);
    v3 += 16;
  }

  while (v3 != 1632);
  qword_280893AC8 = v0;
}

void sub_2722C034C()
{
  if (qword_28088DF88 != -1)
  {
    goto LABEL_68;
  }

LABEL_2:
  v0 = qword_280893AC0;
  if (qword_280893AC0 < -3)
  {
    __break(1u);
    return;
  }

  v1 = qword_280893AC0 / 2 + 1;
  if (qword_280893AC0 < -1)
  {
    v2 = MEMORY[0x277D84F90];
    if (qword_280893AC0 / 2 == -1)
    {
      goto LABEL_9;
    }

LABEL_7:
    *(v2 + 32) = 0;
    if ((v0 + 1) >= 3)
    {
      bzero((v2 + 36), 4 * (v0 / 2));
    }

    goto LABEL_9;
  }

  v2 = sub_272377B5C();
  *(v2 + 16) = v1;
  if (v0 / 2 != -1)
  {
    goto LABEL_7;
  }

LABEL_9:
  sub_2721F065C(&qword_280881858, &unk_27237C260);
  v3 = 40;
  v4 = sub_272377B5C();
  *(v4 + 16) = 40;
  *(v4 + 32) = v2;
  v5 = v4 + 32;
  do
  {
    *(v4 + v3) = v2;

    v3 += 8;
  }

  while (v3 != 352);
  v6 = 0;
  while (1)
  {
    v7 = v6 + 1;
    if (v1)
    {
      break;
    }

LABEL_12:
    ++v6;
    if (v7 == 40)
    {
      goto LABEL_38;
    }
  }

  v8 = 0;
  v9 = (v6 * 66.864) + 98.598;
  v10 = (v7 * 66.864) + 98.598;
  v11 = ((v6 + 2) * 66.864) + 98.598;
  while (1)
  {
    v13 = (logf((((16000.0 / v0) * v8) / 700.0) + 1.0) / 2.3026) * 2595.0;
    if (v9 >= v13 || v13 >= v11)
    {
      goto LABEL_17;
    }

    v15 = *(v4 + 16);
    if (v13 > v10)
    {
      if (v6 >= v15)
      {
        goto LABEL_59;
      }

      v16 = *(v5 + 8 * v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 8 * v6) = v16;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v16 = sub_2722002AC(v16);
        *(v5 + 8 * v6) = v16;
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }
      }

      if (v8 >= *(v16 + 2))
      {
        goto LABEL_61;
      }

      v12 = (v11 - v13) / (v11 - v10);
      goto LABEL_16;
    }

    if (v6 >= v15)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
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
      swift_once();
      goto LABEL_2;
    }

    v16 = *(v5 + 8 * v6);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 8 * v6) = v16;
    if (v18)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_32;
    }

    v16 = sub_2722002AC(v16);
    *(v5 + 8 * v6) = v16;
    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_32:
    if (v8 >= *(v16 + 2))
    {
      goto LABEL_62;
    }

    v12 = (v13 - v9) / (v10 - v9);
LABEL_16:
    *&v16[4 * v8 + 32] = v12;
LABEL_17:
    if (v1 == ++v8)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_38:
  v19 = sub_2722C0764(v4);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        goto LABEL_63;
      }

      v23 = *(v19 + 32 + 8 * v21);
      v24 = *(v23 + 16);
      v25 = *(v22 + 2);
      v26 = v25 + v24;
      if (__OFADD__(v25, v24))
      {
        goto LABEL_64;
      }

      v27 = swift_isUniquelyReferenced_nonNull_native();
      if (v27 && v26 <= *(v22 + 3) >> 1)
      {
        if (!*(v23 + 16))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v25 <= v26)
        {
          v28 = v25 + v24;
        }

        else
        {
          v28 = v25;
        }

        v22 = sub_2721FF8B4(v27, v28, 1, v22);
        if (!*(v23 + 16))
        {
LABEL_40:

          if (v24)
          {
            goto LABEL_65;
          }

          goto LABEL_41;
        }
      }

      v29 = *(v22 + 2);
      if ((*(v22 + 3) >> 1) - v29 < v24)
      {
        goto LABEL_66;
      }

      memcpy(&v22[4 * v29 + 32], (v23 + 32), 4 * v24);

      if (v24)
      {
        v30 = *(v22 + 2);
        v31 = __OFADD__(v30, v24);
        v32 = v30 + v24;
        if (v31)
        {
          goto LABEL_67;
        }

        *(v22 + 2) = v32;
      }

LABEL_41:
      if (v20 == ++v21)
      {
        goto LABEL_57;
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_57:

  qword_280893AD0 = v22;
}

uint64_t sub_2722C0764(uint64_t a1)
{
  v5 = a1;
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v1 = *(*(a1 + 32) + 16);
  MEMORY[0x28223BE20](a1);
  v4[2] = &v5;

  v2 = sub_2722BAF90(sub_2722C31E4, v4, 0, v1);

  return v2;
}

uint64_t sub_2722C0820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v6 = *(*(a3 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = v6;
  v8 = swift_getAssociatedTypeWitness();
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v28 = v26 - v9;
  v10 = sub_27237801C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v12);
  v17 = v26 - v16;
  sub_272377E1C();
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v14, v10);
    swift_getAssociatedTypeWitness();
    sub_272377BAC();
    return sub_272377B4C();
  }

  else
  {
    (*(v15 + 32))(v17, v14, AssociatedTypeWitness);
    v19 = v28;
    v20 = sub_272377DFC();
    v26[1] = v26;
    MEMORY[0x28223BE20](v20);
    v26[-4] = a1;
    v26[-3] = a2;
    v26[-2] = v27;
    v26[-1] = v3;
    swift_getAssociatedTypeWitness();
    v21 = sub_272377BAC();
    v22 = v30;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = sub_2722BB104(sub_2722C2C58, &v26[-6], v22, v21, MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v24);
    (*(v29 + 8))(v19, v22);
    (*(v15 + 8))(v17, AssociatedTypeWitness);
    return v25;
  }
}

id FeatureExtract.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureExtract.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureExtract();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2722C0DC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v10 = MEMORY[0x277D84F90];
    result = sub_2722005AC(0, v3, 0);
    if ((a1 & 0x8000000000000000) == 0)
    {
      v6 = a2 + 32;
      result = v10;
      while (*(*v6 + 16) > a1)
      {
        v7 = *(*v6 + 4 * a1 + 32);
        v11 = result;
        v9 = *(result + 2);
        v8 = *(result + 3);
        if (v9 >= v8 >> 1)
        {
          sub_2722005AC((v8 > 1), v9 + 1, 1);
          result = v11;
        }

        *(result + 2) = v9 + 1;
        *&result[4 * v9 + 32] = v7;
        v6 += 8;
        if (!--v3)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2722C0EAC()
{
  v2 = *(v0 + 16);
  p_aBlock = *(v0 + 24);
  v3 = *&v2[OBJC_IVAR___FeatureExtractObjc_stateAccessQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2722C33E4;
  *(v5 + 24) = v4;
  v60 = sub_272259128;
  v61 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v57 = 1107296256;
  v58 = sub_27225537C;
  v59 = &unk_28818D768;
  v6 = _Block_copy(&aBlock);
  v53 = v2;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    queue = v3;
    if (qword_28088DF80 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_2721F065C(&qword_280881CB0, qword_27237D820);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_27237AF80;
  dispatch_queue_get_label(0);
  v8 = sub_27237798C();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_27225CAF0();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  OS_os_log.info(_:_:)("Start Processing in thread %s", 29, 2, v7);

  v55 = 0;
  v50 = mach_absolute_time();
  p_aBlock();
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v51 = *((*MEMORY[0x277D85000] & *v53) + 0x3B0);
  while (1)
  {
    sub_272377F5C();
    v15 = swift_allocObject();
    *(v15 + 16) = v53;
    *(v15 + 24) = &v55;
    v16 = v53;
    sub_272273524(v11, v12);
    v17 = swift_allocObject();
    *(v17 + 16) = sub_2722C345C;
    *(v17 + 24) = v15;
    v60 = sub_272259128;
    v61 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v57 = 1107296256;
    v58 = sub_27225537C;
    v59 = &unk_28818D7E0;
    p_aBlock = &aBlock;
    v18 = _Block_copy(&aBlock);

    dispatch_sync(queue, v18);
    _Block_release(v18);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v51(v19);
    v54 = 0;
    v20 = swift_allocObject();
    *(v20 + 16) = &v54;
    *(v20 + 24) = v16;
    v21 = v16;
    sub_272273524(v13, v14);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_2722C3464;
    *(v22 + 24) = v20;
    v60 = sub_272259128;
    v61 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v57 = 1107296256;
    v58 = sub_27225537C;
    v59 = &unk_28818D858;
    v23 = _Block_copy(&aBlock);

    dispatch_sync(queue, v23);
    _Block_release(v23);
    LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

    if (v23)
    {
      goto LABEL_21;
    }

    if (v54 == 1)
    {
      break;
    }

    v13 = sub_2722C3464;
    v11 = sub_2722C345C;
    v12 = v15;
    v14 = v20;
  }

  v24 = OBJC_IVAR___FeatureExtractObjc_audioSampleWorkBuffer;
  swift_beginAccess();
  v25 = *&v21[v24];
  v26 = MEMORY[0x277D83B88];
  v27 = MEMORY[0x277D83C10];
  if (*(v25 + 24) > 0)
  {
    goto LABEL_11;
  }

  v28 = OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBuffer;
  result = swift_beginAccess();
  v30 = *(*&v21[v28] + 24);
  v31 = *&v21[OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBufferStartIndex];
  v32 = __OFSUB__(v30, v31);
  v33 = v30 - v31;
  if (v32)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v33 < 1)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_27237AF80;
    v49 = v55;
    *(v34 + 56) = v26;
    *(v34 + 64) = v27;
    *(v34 + 32) = v49;
    v37 = "Stopped after processing %d samples";
    v38 = 35;
  }

  else
  {
LABEL_11:
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_27237AF90;
    v35 = *(v25 + 24);
    *(v34 + 56) = v26;
    *(v34 + 64) = v27;
    *(v34 + 32) = v35;
    v36 = v55;
    *(v34 + 96) = v26;
    *(v34 + 104) = v27;
    *(v34 + 72) = v36;
    v37 = "Ignoring last %d of work buffer when stopping, processed total of %d bytes";
    v38 = 74;
  }

  OS_os_log.debug(_:_:)(v37, v38, 2, v34);

  sub_272377F6C();
  v39 = swift_allocObject();
  *(v39 + 16) = v21;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_2722C347C;
  *(v40 + 24) = v39;
  v60 = sub_272259128;
  v61 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v57 = 1107296256;
  v58 = sub_27225537C;
  v59 = &unk_28818D8D0;
  v41 = _Block_copy(&aBlock);
  v42 = v21;

  dispatch_sync(queue, v41);
  _Block_release(v41);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
    goto LABEL_25;
  }

  v43 = mach_absolute_time();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_27237AF90;
  v45 = v55;
  *(v44 + 56) = v26;
  *(v44 + 64) = v27;
  *(v44 + 32) = v45;
  aBlock = 0;
  result = mach_timebase_info(&aBlock);
  v46 = -1.0;
  if (result)
  {
LABEL_18:
    v48 = MEMORY[0x277D83A80];
    *(v44 + 96) = MEMORY[0x277D839F8];
    *(v44 + 104) = v48;
    *(v44 + 72) = v46;
    OS_os_log.debug(_:_:)("[TIMING] Done processing %d samples in %5.3lf secs", 50, 2, v44);
  }

  v47 = v43 - v50;
  if (v43 < v50)
  {
    goto LABEL_26;
  }

  if (!is_mul_ok(v47, aBlock.numer))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (aBlock.denom)
  {
    v46 = (v47 * aBlock.numer / aBlock.denom) / 1000000000.0;
    goto LABEL_18;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2722C170C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2722C1724(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2722C1778()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR___FeatureExtractObjc_isRunning) != 1)
  {
    return (*((*MEMORY[0x277D85000] & *v1) + 0x3A8))();
  }

  if (qword_28088DF80 != -1)
  {
    swift_once();
  }

  return OS_os_log.info(_:_:)("Ignoring reset when running", 27, 2, MEMORY[0x277D84F90]);
}

char *sub_2722C1840(char *a1, uint64_t a2, char **a3)
{
  result = *a3;
  v5 = *(*a3 + 3);
  v6 = v5 + a2;
  if (__OFADD__(v5, a2))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a3;
    if (*(*a3 + 2) < v6 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2722374C0(isUniquelyReferenced_nonNull_native, v6, 0);
      v10 = *a3;
    }

    return sub_27223766C(v10 + 16, (v10 + 40), a1, a2);
  }

  return result;
}

void *sub_2722C18D0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  v79 = a1;
  sub_2722C20B0(a1, a2, v73);
  v69 = a3;
  result = sub_2722C215C(a3, &v74);
  v11 = v78;
  v12 = v74;
  v13 = v75;
  if (v78)
  {
    v14 = MEMORY[0x28223BE20](result);
    v15 = &v63;
    v64 = v12;
    v65 = v13;
    v70 = a4;
    v71 = a5;
    v72 = a6;
    MEMORY[0x28223BE20](v14);
    v60 = &v70;
    v61 = sub_2722C34CC;
    v62 = v16;
    v17 = a6 + 5;
    result = sub_2722C2280(a6 + 2, (a6 + 5), sub_2722C34E4);
    if ((v18 & 1) == 0)
    {
LABEL_78:
      v57 = v79[1];
      v58 = __OFADD__(v57, v69);
      v11 = v57 + v69;
      if (!v58)
      {
        v79[1] = v11;
        return result;
      }

      __break(1u);
      goto LABEL_81;
    }

    v70 = a4;
    v71 = a5;
    v15 = a5;
    v72 = a6;
    v19 = MEMORY[0x28223BE20](result);
    v64 = v12;
    v65 = v13;
    MEMORY[0x28223BE20](v19);
    v60 = &v70;
    v61 = sub_2722C35BC;
    v62 = v20;

    result = sub_272237D54(a6 + 2, (a6 + 5), sub_2722C3618);
    if (v22)
    {
      v11 = a4;
      v23 = a5;
      if (v12)
      {
        v11 = a4;
        if (v13)
        {
          if (v13 < 0)
          {
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

          if (a5 <= a4)
          {
            v24 = a4;
          }

          else
          {
            v24 = a5;
          }

          v11 = a4 - a5;
          if (a4 != a5)
          {
            v25 = 0;
            v26 = v24 - a4;
            while (v26 != v25)
            {
              if ((a4 & 0x8000000000000000) != 0)
              {
                goto LABEL_85;
              }

              if (a4 + v25 >= a6[3])
              {
                goto LABEL_86;
              }

              v27 = a6[4];
              v28 = a4 + v25;
              if (a4 + v25 + v27 >= a6[2])
              {
                v29 = a6[2];
              }

              else
              {
                v29 = 0;
              }

              v12[v25] = *(v17 + &v28[v27 - v29]);
              if (v13 - 1 == v25)
              {
                v11 = (v28 + 1);
                goto LABEL_42;
              }

              ++v25;
              if (!(v11 + v25))
              {
                goto LABEL_77;
              }
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }
      }
    }

    else
    {
      v11 = a4 + v21;
      if (__OFADD__(a4, v21))
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v23 = a5;
    }

LABEL_42:
    if (v11 == v23)
    {
LABEL_77:

      goto LABEL_78;
    }

    if (v11 < a4 || v11 >= a5)
    {
      goto LABEL_108;
    }

    if (v11 < 0)
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    if (v11 >= a6[3])
    {
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    __break(1u);
LABEL_48:
    v11 = a4 + v36;
    v38 = v68;
    if (__OFADD__(a4, v36))
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    goto LABEL_49;
  }

  v15 = a4 + v75;
  if (__OFADD__(a4, v75))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v15 < a4)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (a5 < v15)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v68 = a5;
  v66 = v77;
  v67 = v76;
  v30 = MEMORY[0x28223BE20](result);
  v64 = v12;
  v65 = v13;
  v70 = a4;
  v71 = v15;
  v72 = a6;
  MEMORY[0x28223BE20](v30);
  v60 = &v70;
  v61 = sub_2722C35D4;
  v62 = v31;
  v17 = a6 + 5;

  v32 = sub_2722C2280(a6 + 2, (a6 + 5), sub_2722C3630);
  if ((v33 & 1) == 0)
  {
    a5 = &v70;
    v41 = v67;
    a4 = v68;
    v42 = v66;
    goto LABEL_51;
  }

  v70 = a4;
  v71 = v15;
  v72 = a6;
  v34 = MEMORY[0x28223BE20](v32);
  v64 = v12;
  v65 = v13;
  MEMORY[0x28223BE20](v34);
  a5 = &v70;
  v60 = &v70;
  v61 = sub_2722C35BC;
  v62 = v35;

  result = sub_272237D54(a6 + 2, (a6 + 5), sub_2722C3618);
  if ((v37 & 1) == 0)
  {
    goto LABEL_48;
  }

  v11 = a4;
  v38 = v68;
  if (v12)
  {
    v11 = a4;
    if (v13)
    {
      if (v13 < 0)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      if (v15 != a4)
      {
        v11 = a4;
        while ((a4 & 0x8000000000000000) == 0)
        {
          if (v11 >= a6[3])
          {
            goto LABEL_88;
          }

          v39 = a6[4];
          if (v11 + v39 >= a6[2])
          {
            v40 = a6[2];
          }

          else
          {
            v40 = 0;
          }

          *v12 = *(v17 + v11 + v39 - v40);
          if (!--v13)
          {
            ++v11;
            goto LABEL_49;
          }

          ++v12;
          ++v11;
        }

        goto LABEL_87;
      }

      goto LABEL_50;
    }
  }

LABEL_49:
  if (v11 != v15)
  {
    goto LABEL_98;
  }

LABEL_50:

  v42 = v66;
  v41 = v67;
  a4 = v38;
LABEL_51:
  v43 = MEMORY[0x28223BE20](v32);
  v64 = v41;
  v65 = v42;
  v70 = v15;
  v71 = a4;
  v72 = a6;
  MEMORY[0x28223BE20](v43);
  v60 = a5;
  v61 = sub_2722C35D4;
  v62 = v44;
  v45 = sub_2722C2280(a6 + 2, v17, sub_2722C3630);
  if ((v46 & 1) == 0)
  {
    goto LABEL_77;
  }

  v70 = v15;
  v71 = a4;
  v47 = a4;
  v72 = a6;
  v48 = MEMORY[0x28223BE20](v45);
  v64 = v41;
  v65 = v42;
  MEMORY[0x28223BE20](v48);
  a4 = &v59;
  v60 = &v70;
  v61 = sub_2722C35BC;
  v62 = v49;

  result = sub_272237D54(a6 + 2, v17, sub_2722C3618);
  if ((v51 & 1) == 0)
  {
    v11 = v15 + v50;
    if (__OFADD__(v15, v50))
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v52 = v47;
    goto LABEL_75;
  }

  if (!v41)
  {
    v11 = v15;
    v52 = v47;
LABEL_75:
    if (v11 != v52)
    {
      goto LABEL_103;
    }

LABEL_76:

    goto LABEL_77;
  }

  v52 = v47;
  if (!v42)
  {
    v11 = v15;
    goto LABEL_75;
  }

  if ((v42 & 0x8000000000000000) == 0)
  {
    v11 = v47 - v15;
    if (v47 != v15)
    {
      v53 = 0;
      while (v11 != v53)
      {
        if (v15 < 0)
        {
          goto LABEL_90;
        }

        if (v15 + v53 >= a6[3])
        {
          goto LABEL_91;
        }

        v54 = a6[4];
        v55 = v15 + v53;
        if (v15 + v53 + v54 >= a6[2])
        {
          v56 = a6[2];
        }

        else
        {
          v56 = 0;
        }

        v41[v53] = *(v17 + v55 + v54 - v56);
        if (v42 - 1 == v53)
        {
          v11 = v55 + 1;
          goto LABEL_75;
        }

        if (v11 == ++v53)
        {
          goto LABEL_76;
        }
      }

LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    goto LABEL_76;
  }

LABEL_97:
  __break(1u);
LABEL_98:
  if (v11 < a4 || v11 >= v15)
  {
    goto LABEL_111;
  }

  if (v11 < 0)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if (v11 >= a6[3])
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  __break(1u);
LABEL_103:
  if (v11 < v15 || v11 >= v68)
  {
    goto LABEL_114;
  }

  if (v11 < 0)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (v11 < a6[3])
  {

    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

LABEL_116:
  __break(1u);
  return result;
}

void *sub_2722C20B0@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[1];
  v3 = result[2];
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = *result;
    v7 = __OFSUB__(v5, *result);
    if (v5 < *result)
    {
      goto LABEL_9;
    }

    v5 -= *result;
    if (!v7)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v6 = *result;
  if (v5 < 0)
  {
    v7 = __OFADD__(v5, v6);
    v5 += v6;
    if (v7)
    {
      goto LABEL_26;
    }
  }

LABEL_9:
  if (v4 >= v6)
  {
    goto LABEL_14;
  }

  if (v5 < v3)
  {
    v8 = v3 - v5;
    if (!__OFSUB__(v3, v5))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    v8 = 0;
LABEL_15:
    v9 = 0;
    v3 = 0;
    v10 = 1;
LABEL_22:
    *a3 = a2 + 4 * v5;
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
    *(a3 + 24) = v3;
    *(a3 + 32) = v10;
    return result;
  }

  v8 = v6 - v5;
  if (!__OFSUB__(v6, v5))
  {
    if ((v3 & 0x8000000000000000) == 0 && v6 >= v5)
    {
      v10 = v3 == 0;
      if (v3)
      {
        v9 = a2;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_22;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2722C215C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v2 + 24);
  }

  if (__OFADD__(v3, v6))
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(v2 + 16);
  if (v3 + v6 <= result)
  {
LABEL_23:
    *a2 = *v2;
    *(a2 + 8) = v3;
    *(a2 + 16) = v7;
    *(a2 + 24) = v4;
    *(a2 + 32) = v5 & 1;
    return result;
  }

  if (v3 >= result)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v4 = 0;
      v5 = 1;
      v3 = result;
      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((*(v2 + 32) & 1) == 0)
  {
    v8 = result - v3;
    if (!__OFSUB__(result, v3))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v4 >= v8)
        {
          v9 = result - v3;
        }

        else
        {
          v9 = *(v2 + 24);
        }

        if (v4 >= 0)
        {
          v4 = v9;
        }

        else
        {
          v4 = result - v3;
        }

        if (!v8)
        {
          v4 = 0;
        }

        v5 = v4 == 0;
        if (!v4)
        {
          v7 = 0;
        }

        goto LABEL_23;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2722C2204(uint64_t a1, uint64_t a2)
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

  sub_2721F065C(&qword_280881A78, &unk_27237CA50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void *sub_2722C2280(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 4 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

uint64_t *sub_2722C2308(uint64_t *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v4 = result[2];
  v5 = *result;
  v6 = result[1] + v4;
  if (*result >= v6)
  {
    if (v6 < v4)
    {
      __break(1u);
    }

    else if (!__OFSUB__(v6, v4))
    {
      result = a3(&v7, a2 + 4 * v4, result[1]);
      if (v3)
      {
        return result;
      }

      return (v5 < v6);
    }

    __break(1u);
    return result;
  }

  return (v5 < v6);
}

uint64_t sub_2722C2394()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722C23CC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2722C2404()
{
  v2 = v0[2];
  v1 = v0[3];
  if (*(v2 + OBJC_IVAR___FeatureExtractObjc_stopSignaled) == 1)
  {
    if (qword_28088DF80 != -1)
    {
      swift_once();
    }

    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v3 = swift_allocObject();
    v4 = MEMORY[0x277D83B88];
    *(v3 + 16) = xmmword_27237AF80;
    v5 = MEMORY[0x277D83C10];
    *(v3 + 56) = v4;
    *(v3 + 64) = v5;
    *(v3 + 32) = v1;
    OS_os_log.info(_:_:)("Ignoring addSamples %d int16 bytes when running but stop is pending", 67, 2, v3);
  }

  else
  {
    if (v1)
    {
      v7 = v0[4];
      v8 = sub_27223743C(v1, 0);
      memcpy(v8 + 32, v7, 4 * v1);
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v9 = OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBuffer;
    swift_beginAccess();
    v10 = *(v8 + 2);
    result = *(v2 + v9);
    v11 = *(result + 24);
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v2 + v9);
      if (*(v14 + 16) < v12 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2722374C0(isUniquelyReferenced_nonNull_native, v12, 0);
        v14 = *(v2 + v9);
      }

      sub_27223766C((v14 + 16), v14 + 40, v8 + 32, v10);
      swift_endAccess();
    }
  }

  return result;
}

void sub_2722C25E8()
{
  v2 = v0[2];
  v1 = v0[3];
  if (*(v2 + OBJC_IVAR___FeatureExtractObjc_stopSignaled) == 1)
  {
    if (qword_28088DF80 != -1)
    {
      swift_once();
    }

    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v3 = swift_allocObject();
    v4 = MEMORY[0x277D83B88];
    *(v3 + 16) = xmmword_27237AF80;
    v5 = MEMORY[0x277D83C10];
    *(v3 + 56) = v4;
    *(v3 + 64) = v5;
    *(v3 + 32) = v1;
    OS_os_log.info(_:_:)("Ignoring addSamples %d int16 bytes when running but stop is pending", 67, 2, v3);

    return;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v6 = v0[4];
  if (v1)
  {
    v7 = sub_272377B5C();
    *(v7 + 16) = v1;
    bzero((v7 + 32), 4 * v1);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  vDSP_vflt16(v6, 1, (v7 + 32), 1, v1);
  v8 = OBJC_IVAR___FeatureExtractObjc_audioSampleIngestionBuffer;
  swift_beginAccess();
  v9 = *(v7 + 16);
  v10 = *(*(v2 + v8) + 24);
  v11 = v10 + v9;
  if (__OFADD__(v10, v9))
  {
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + v8);
  if (*(v13 + 16) < v11 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2722374C0(isUniquelyReferenced_nonNull_native, v11, 0);
    v13 = *(v2 + v8);
  }

  sub_27223766C((v13 + 16), v13 + 40, (v7 + 32), v9);

  swift_endAccess();
}

uint64_t sub_2722C27D8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2722C2818()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = *&v1[OBJC_IVAR___FeatureExtractObjc_stateAccessQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2722C3304;
  *(v6 + 24) = v5;
  v10[4] = sub_272259128;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_27225537C;
  v10[3] = &unk_28818D6F0;
  v7 = _Block_copy(v10);
  v1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LODWORD(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_272377F6C();
    v9 = sub_272377F5C();
    v2(v9);
  }

  return result;
}

void *sub_2722C29AC@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(uint64_t *__return_ptr, char *, uint64_t)@<X3>, void *a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = result + 4 * v6;
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v14, v13, v11);
  if (!v4)
  {
    *a4 = v14;
  }

  return result;
}

uint64_t sub_2722C2A24(uint64_t result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = *a3;
  v5 = a3[1];
  v6 = __OFSUB__(v5, *a3);
  v7 = v5 - *a3;
  if (v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = __OFADD__(v4, v7);
  v8 = v4 + v7;
  if (v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8 - v4;
  if (v8 < v4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = result + 4 * v4;
  if (result)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return a4(v11, v9);
}

unint64_t sub_2722C2A80(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  sub_2721F065C(&qword_280881858, &unk_27237C260);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_2722C2B50(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_272241E04(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_2722C2A80(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_2722C2C10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2722C2C58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  v10 = v2[2];
  v11 = v4;
  v12 = v5;
  v13 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_2722BB104(sub_2722C30D4, &v9, v10, AssociatedTypeWitness, MEMORY[0x277D84A98], v4, MEMORY[0x277D84AC0], v7);
  *a2 = result;
  return result;
}

uint64_t sub_2722C3070()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2722C30D4@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_272377E3C();
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v4, AssociatedTypeWitness);
  return v2(&v7, 0);
}

char *sub_2722C31E4@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  result = sub_2722C0DC0(*a1, **(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

char *sub_2722C322C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_272376BDC();
  v11 = result;
  if (result)
  {
    result = sub_272376BFC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_272376BEC();
  result = sub_2722BCCC4(v11, a4, a5, &v12);
  if (!v5)
  {
    return v12;
  }

  return result;
}

uint64_t sub_2722C32CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722C3304()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR___FeatureExtractObjc_isRunning) == 1)
  {
    if (qword_28088DF80 != -1)
    {
      swift_once();
    }

    result = OS_os_log.info(_:_:)("stop signalled", 14, 2, MEMORY[0x277D84F90]);
    *(v1 + OBJC_IVAR___FeatureExtractObjc_stopSignaled) = 1;
  }

  return result;
}

uint64_t sub_2722C33AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2722C33E4()
{
  v1 = *(v0 + 16);
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x3A8))();
  *(v1 + OBJC_IVAR___FeatureExtractObjc_isRunning) = 1;
  *(v1 + OBJC_IVAR___FeatureExtractObjc_stopSignaled) = 0;
  return result;
}

void *sub_2722C3504@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!__src)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return __src;
  }

  if (*(v3 + 24) >= a2)
  {
    __src = memcpy(*(v3 + 16), __src, 4 * a2);
    goto LABEL_6;
  }

  __break(1u);
  return __src;
}

uint64_t sub_2722C3674()
{
  sub_2722C4C1C();
  result = sub_27237800C();
  qword_280893AD8 = result;
  return result;
}

uint64_t sub_2722C36DC()
{
  sub_2722C4C1C();
  result = sub_27237800C();
  qword_280893AE0 = result;
  return result;
}

uint64_t sub_2722C3810(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_27237728C();
  sub_2721F408C(v8, a2);
  sub_2721F08DC(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_27237729C();
}

uint64_t sub_2722C390C()
{
  v0 = sub_272377FFC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2723771FC();
  sub_2721F408C(v1, qword_28088DFF8);
  sub_2721F08DC(v1, qword_28088DFF8);
  sub_272377FEC();
  return sub_2723771EC();
}

uint64_t sub_2722C39D0(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return sub_2721F08DC(v5, a3);
}

uint64_t sub_2722C3A68@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_2721F08DC(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t static VALog.event(_:_:)(const char *a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_2723771CC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v29 - v14);
  v16 = &unk_28088D000;
  if (!a5)
  {
    goto LABEL_8;
  }

  if (qword_28088DFF0 != -1)
  {
    swift_once();
  }

  v17 = sub_2723771FC();
  sub_2721F08DC(v17, qword_28088DFF8);

  sub_2723771BC();
  v13 = sub_2723771DC();
  v18 = sub_272377F4C();
  result = sub_272377FDC();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  v30 = v9;
  if (a3)
  {
    if (a1 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (a1 >> 16 <= 0x10)
      {

        a1 = &v31;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (a1)
  {
LABEL_19:
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_2721FFD04(a4, a5, &v31);
    v26 = sub_2723771AC();
    _os_signpost_emit_with_name_impl(&dword_2721E4000, v13, v18, v26, a1, "%s", v24, 0xCu);
    sub_2722039C8(v25);
    MEMORY[0x2743C69C0](v25, -1, -1);
    MEMORY[0x2743C69C0](v24, -1, -1);

    return (*(v10 + 8))(v15, v30);
  }

  __break(1u);
LABEL_8:
  if (v16[510] != -1)
  {
    swift_once();
  }

  v20 = sub_2723771FC();
  sub_2721F08DC(v20, qword_28088DFF8);
  sub_2723771BC();
  v15 = sub_2723771DC();
  v21 = sub_272377F4C();
  result = sub_272377FDC();
  if ((result & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((a3 & 1) == 0)
  {
    if (!a1)
    {
      __break(1u);
LABEL_14:

      v22 = *(v10 + 8);
      v23 = v15;
      return v22(v23, v9);
    }

    goto LABEL_24;
  }

  if (a1 >> 32)
  {
    goto LABEL_29;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v32;
LABEL_24:
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = sub_2723771AC();
      _os_signpost_emit_with_name_impl(&dword_2721E4000, v15, v21, v28, a1, "", v27, 2u);
      MEMORY[0x2743C69C0](v27, -1, -1);
LABEL_25:

      v22 = *(v10 + 8);
      v23 = v13;
      return v22(v23, v9);
    }

    goto LABEL_30;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t static VALog.begin(_:_:)@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a4;
  v44 = a2;
  v45 = a3;
  v9 = sub_2723771FC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v42 = sub_2723771CC();
  v16 = *(v42 - 8);
  v17 = MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - v19;
  if (qword_28088DFF0 != -1)
  {
    swift_once();
  }

  v21 = sub_2721F08DC(v9, qword_28088DFF8);
  sub_2723771DC();
  sub_27237719C();
  v43 = a1;
  if (a5)
  {
    (*(v10 + 16))(v15, v21, v9);

    v22 = sub_2723771DC();
    v38 = sub_272377F3C();
    result = sub_272377FDC();
    if ((result & 1) == 0)
    {

LABEL_25:
      v32 = v42;
      (*(v16 + 16))(v41, v20, v42);
      sub_27237723C();
      swift_allocObject();
      v33 = sub_27237722C();
      (*(v16 + 8))(v20, v32);
      (*(v10 + 32))(a6, v15, v9);
      result = type metadata accessor for VASignpostInterval(0);
      v34 = a6 + *(result + 20);
      v35 = v44;
      *v34 = v43;
      *(v34 + 8) = v35;
      *(v34 + 16) = v45;
      *(a6 + *(result + 24)) = v33;
      return result;
    }

    v40 = a6;
    if (v45)
    {
      if (!(a1 >> 32))
      {
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (a1 >> 16 <= 0x10)
        {

          v37 = &v46;
          goto LABEL_17;
        }

        goto LABEL_28;
      }
    }

    else
    {

      if (a1)
      {
        v37 = a1;
LABEL_17:
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v46 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_2721FFD04(v39, a5, &v46);
        v29 = sub_2723771AC();
        _os_signpost_emit_with_name_impl(&dword_2721E4000, v22, v38, v29, v37, "%s", v27, 0xCu);
        sub_2722039C8(v28);
        MEMORY[0x2743C69C0](v28, -1, -1);
        MEMORY[0x2743C69C0](v27, -1, -1);

LABEL_24:
        a6 = v40;
        goto LABEL_25;
      }

      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v40 = a6;
  (*(v10 + 16))(v13, v21, v9);
  v24 = sub_2723771DC();
  v25 = sub_272377F3C();
  result = sub_272377FDC();
  if ((result & 1) == 0)
  {
LABEL_23:

    v15 = v13;
    goto LABEL_24;
  }

  if ((v45 & 1) == 0)
  {
    if (!a1)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v26 = a1;
    goto LABEL_22;
  }

  if (a1 >> 32)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 > 0x10)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v26 = &v47;
LABEL_22:
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = sub_2723771AC();
    _os_signpost_emit_with_name_impl(&dword_2721E4000, v24, v25, v31, v26, "", v30, 2u);
    MEMORY[0x2743C69C0](v30, -1, -1);
    goto LABEL_23;
  }

LABEL_33:
  __break(1u);
  return result;
}

id VALog.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VALog.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VALog.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall VASignpostInterval.end(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v4 = sub_27237720C();
  v39 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v36[-v8];
  v40 = sub_2723771CC();
  v10 = *(v40 - 8);
  v11 = MEMORY[0x28223BE20](v40);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v36[-v14];
  if (object)
  {
    v38 = countAndFlagsBits;
    v16 = v1 + *(type metadata accessor for VASignpostInterval(0) + 20);
    v17 = *v16;
    v18 = *(v16 + 16);

    v19 = sub_2723771DC();
    sub_27237721C();
    v37 = sub_272377F2C();
    if ((sub_272377FDC() & 1) == 0)
    {

LABEL_19:
      (*(v10 + 8))(v15, v40);
      return;
    }

    if (v18)
    {
      if (!(v17 >> 32))
      {
        v20 = v39;
        if ((v17 & 0xFFFFF800) == 0xD800)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if (v17 >> 16 <= 0x10)
        {

          v17 = &v41;
          goto LABEL_15;
        }

        goto LABEL_32;
      }
    }

    else
    {

      if (v17)
      {
        v20 = v39;
LABEL_15:

        sub_27237724C();

        if ((*(v20 + 88))(v9, v4) == *MEMORY[0x277D85B00])
        {
          v27 = 0;
          v28 = 0;
          v29 = "[Error] Interval already ended";
        }

        else
        {
          (*(v20 + 8))(v9, v4);
          v29 = "%s";
          v28 = 2;
          v27 = 1;
        }

        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v41 = v31;
        *v30 = v28;
        *(v30 + 1) = v27;
        *(v30 + 2) = 2080;
        *(v30 + 4) = sub_2721FFD04(v38, object, &v41);
        v32 = sub_2723771AC();
        _os_signpost_emit_with_name_impl(&dword_2721E4000, v19, v37, v32, v17, v29, v30, 0xCu);
        sub_2722039C8(v31);
        MEMORY[0x2743C69C0](v31, -1, -1);
        MEMORY[0x2743C69C0](v30, -1, -1);

        goto LABEL_19;
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v21 = v1 + *(type metadata accessor for VASignpostInterval(0) + 20);
  v22 = *v21;
  v23 = *(v21 + 16);
  v24 = sub_2723771DC();
  sub_27237721C();
  v25 = sub_272377F2C();
  if (sub_272377FDC())
  {
    if (v23)
    {
      if (v22 >> 32)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v26 = v39;
      if ((v22 & 0xFFFFF800) == 0xD800)
      {
LABEL_37:
        __break(1u);
        return;
      }

      if (v22 >> 16 > 0x10)
      {
        goto LABEL_35;
      }

      v22 = &v42;
    }

    else
    {
      if (!v22)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v26 = v39;
    }

    sub_27237724C();

    if ((*(v26 + 88))(v7, v4) == *MEMORY[0x277D85B00])
    {
      v33 = "[Error] Interval already ended";
    }

    else
    {
      (*(v26 + 8))(v7, v4);
      v33 = "";
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = sub_2723771AC();
    _os_signpost_emit_with_name_impl(&dword_2721E4000, v24, v25, v35, v22, v33, v34, 2u);
    MEMORY[0x2743C69C0](v34, -1, -1);
  }

  (*(v10 + 8))(v13, v40);
}

uint64_t type metadata accessor for VASignpostInterval(uint64_t a1)
{
  result = qword_28088E010;
  if (!qword_28088E010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2722C4A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2723771FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2722C4AD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2723771FC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2722C4B90(uint64_t a1)
{
  result = sub_2723771FC();
  if (v2 <= 0x3F)
  {
    result = sub_27237723C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2722C4C1C()
{
  result = qword_280882130;
  if (!qword_280882130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280882130);
  }

  return result;
}

Swift::Void __swiftcall DetectionInfo.reset()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = -1;
  *(v0 + 40) = -1;
  *(v0 + 52) = 0;
  *(v0 + 54) = 2;
}

void *sub_2722C4C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = 0;
  v7 = MEMORY[0x277D84F90];
  result[4] = a3;
  result[5] = v7;
  result[6] = a2;
  return result;
}

uint64_t sub_2722C4CDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  result = swift_beginAccess();
  v5 = *(v1 + 40);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 32);
    v8 = *(v5 + 64);
    v35 = *(v5 + 48);
    *v36 = v8;
    *&v36[15] = *(v5 + 79);
    v34 = v7;
    v9 = *&v35;
    v10 = v8;
    v11 = *&v36[16];
    v12 = v36[20];
    v13 = v36[21];
    v15 = *(&v7 + 1);
    v14 = v7;
    if (v6 == 1)
    {
      result = sub_2722C5138(&v34, &v31);
    }

    else
    {
      v26 = v8;
      v27 = v36[20];
      sub_2722C5138(&v34, &v31);

      v16 = v6 - 2;
      for (i = 88; ; i += 56)
      {
        v18 = *(v5 + i);
        v19 = *(v5 + i + 16);
        v20 = *(v5 + i + 32);
        *&v33[15] = *(v5 + i + 47);
        v32 = v19;
        *v33 = v20;
        v31 = v18;
        v29 = v14;
        v30 = v15;
        sub_2722C5138(&v31, v28);

        MEMORY[0x2743C4AD0](95, 0xE100000000000000);
        v21 = v31;
        sub_2722C5138(&v31, v28);
        MEMORY[0x2743C4AD0](v21, *(&v21 + 1));
        sub_2722CAC5C(&v31);

        sub_2722CAC5C(&v31);
        v14 = v29;
        v15 = v30;
        v13 |= v33[21];
        v9 = v9 * *&v32;
        if (!v16)
        {
          break;
        }

        --v16;
      }

      v12 = v27;
      v10 = v26;
    }

    v22 = *(v2 + 40);
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = v22 + 56 * v23;
      v25 = *(v24 + 16);
      LOBYTE(v24) = *(v24 + 30);
      *a1 = v14;
      *(a1 + 8) = v15;
      *(a1 + 16) = v9;
      *(a1 + 24) = 0;
      *(a1 + 32) = v10;
      *(a1 + 40) = v25;
      *(a1 + 48) = v11;
      *(a1 + 52) = v12;
      *(a1 + 53) = v13 & 1;
      *(a1 + 54) = v24;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2722C4EB8()
{
  v1 = v0[3];
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v0[3] = v3;
    if (v3 >= v0[2])
    {
      v0[3] = 0;
      swift_beginAccess();
      v0[5] = MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_2722C4F20@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v34 = *a1;
  v35 = v4;
  v36[0] = a1[2];
  *(v36 + 15) = *(a1 + 47);
  swift_beginAccess();
  v5 = v2[4];
  v6 = v2[5];
  v7 = *(v6 + 2);
  if (v7 >= *(v5 + 16))
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 16 * v7;
    result = v34;
    if (v34 != *(v8 + 32) || *(&v34 + 1) != *(v8 + 40))
    {
      result = sub_27237865C();
      if ((result & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if (v7)
    {
      v11 = *&v6[56 * v7 + 16];
    }

    else
    {
      v11 = 0;
    }

    v12 = __OFSUB__(v11, *&v36[0]);
    v13 = v11 - *&v36[0];
    if (!v12)
    {
      if (v2[6] < v13)
      {
        goto LABEL_16;
      }

      swift_beginAccess();
      sub_2722C5138(&v34, v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[5] = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_22:
  v6 = sub_2722CA038(0, v7 + 1, 1, v6);
  v2[5] = v6;
LABEL_13:
  v16 = *(v6 + 2);
  v15 = *(v6 + 3);
  if (v16 >= v15 >> 1)
  {
    v6 = sub_2722CA038((v15 > 1), v16 + 1, 1, v6);
  }

  *(v6 + 2) = v16 + 1;
  v17 = &v6[56 * v16];
  v18 = v34;
  v19 = v35;
  v20 = v36[0];
  *(v17 + 79) = *(v36 + 15);
  *(v17 + 3) = v19;
  *(v17 + 4) = v20;
  *(v17 + 2) = v18;
  v2[5] = v6;
  result = swift_endAccess();
  v2[3] = 0;
LABEL_16:
  if (*(v6 + 2) == *(v2[4] + 16))
  {
    sub_2722C4CDC(v28);
    v26 = v28[0];
    v27 = v28[1];
    v21 = v29;
    v22 = v30;
    v23 = v31 | ((v32 | (v33 << 16)) << 32);
    v2[3] = 0;
    v2[5] = MEMORY[0x277D84F90];

    v24 = v26;
    v25 = v27;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0uLL;
    v25 = 0uLL;
  }

  *a2 = v24;
  *(a2 + 16) = v25;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22;
  *(a2 + 48) = v23;
  *(a2 + 54) = BYTE6(v23);
  *(a2 + 52) = WORD2(v23);
  return result;
}

uint64_t VAWordDecoder.deinit()
{

  return v0;
}

uint64_t VAWordDecoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2722C51D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

uint64_t sub_2722C522C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 352);

  return v2(v3);
}

double sub_2722C5288()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2722C52C0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
}

double sub_2722C5358()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2722C5390(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;
}

uint64_t sub_2722C542C(void *a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = v2;
  v257 = sub_272376BCC();
  v248 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v256 = &v228 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VARuntimeParameters(0);
  MEMORY[0x28223BE20](v7 - 8);
  v249 = (&v228 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v241 = sub_27237728C();
  v244 = *(v241 - 8);
  v9 = MEMORY[0x28223BE20](v241);
  v233 = &v228 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v250 = &v228 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v228 - v13;
  v15 = MEMORY[0x277D84F90];
  *(v2 + 128) = MEMORY[0x277D84F90];
  *(v2 + 120) = v15;
  v237 = (v2 + 128);
  *(v2 + 16) = a1;
  v16 = MEMORY[0x277D85000];
  v17 = *((*MEMORY[0x277D85000] & *a1) + 0xD0);
  v18 = a1;
  v19 = v17();
  if (!v19)
  {
    sub_2722032B4();
    swift_allocError();
    *v34 = 0xD00000000000001BLL;
    v34[1] = 0x800000027238E410;
    swift_willThrow();

    sub_272216BD8(a2);

    type metadata accessor for VAResultGenerator();
    swift_deallocPartialClassInstance();
    return isUniquelyReferenced_nonNull_native;
  }

  v246 = a2;
  *(v2 + 24) = v19;
  v20 = *((*v16 & *v18) + 0xA0);
  v230 = v19;
  v21 = v20();
  v254 = v2;
  v231 = v18;
  if (v21)
  {

    v22 = v20();
    v23 = MEMORY[0x277D84F90];
    if (!v22)
    {
      goto LABEL_163;
    }

    v24 = v22;
    v25 = MEMORY[0x277D85000];
    v26 = (*((*MEMORY[0x277D85000] & *v22) + 0x190))();

    *(isUniquelyReferenced_nonNull_native + 96) = v26;
    v27 = v20();
    if (v27)
    {
      v28 = v27;
      v29 = (*((*v25 & *v27) + 0xB8))();

      *(isUniquelyReferenced_nonNull_native + 40) = v29;
      v30 = v20();
      if (v30)
      {
        v31 = v30;
        v32 = (*((*v25 & *v30) + 0x198))();

        *(isUniquelyReferenced_nonNull_native + 136) = v32;
        v33 = *(isUniquelyReferenced_nonNull_native + 96);
        if (v33 < 0)
        {
          goto LABEL_142;
        }

LABEL_25:
        if (v33)
        {
          v57 = sub_272377B5C();
          *(v57 + 16) = v33;
          bzero((v57 + 32), 4 * v33);
          v58 = *(isUniquelyReferenced_nonNull_native + 96);
          *(isUniquelyReferenced_nonNull_native + 144) = v57;
          if (v58 < 0)
          {
            goto LABEL_154;
          }

          if (v58)
          {
            v59 = sub_272377B5C();
            *(v59 + 16) = v58;
            bzero((v59 + 32), 4 * v58);
            v60 = *(isUniquelyReferenced_nonNull_native + 96);
            *(isUniquelyReferenced_nonNull_native + 152) = v59;
            *(isUniquelyReferenced_nonNull_native + 48) = v23;
            if (v60 < 0)
            {
              goto LABEL_155;
            }

            if (v60)
            {
              v61 = sub_272377B5C();
              *(v61 + 16) = v60;
              bzero((v61 + 32), 4 * v60);
              v62 = *(isUniquelyReferenced_nonNull_native + 96);
              *(isUniquelyReferenced_nonNull_native + 56) = v61;
              if (v62 < 0)
              {
                goto LABEL_158;
              }

              if (v62)
              {
                v63 = sub_272377B5C();
                *(v63 + 16) = v62;
                bzero((v63 + 32), 4 * v62);
                v64 = *(isUniquelyReferenced_nonNull_native + 96);
                goto LABEL_36;
              }

              goto LABEL_143;
            }

LABEL_35:
            v64 = 0;
            *(isUniquelyReferenced_nonNull_native + 56) = v23;
            v63 = v23;
            goto LABEL_36;
          }
        }

        else
        {
          *(isUniquelyReferenced_nonNull_native + 144) = v23;
        }

        *(isUniquelyReferenced_nonNull_native + 152) = v23;
        *(isUniquelyReferenced_nonNull_native + 48) = v23;
        goto LABEL_35;
      }
    }

    else
    {
LABEL_164:
      __break(1u);
    }

    __break(1u);
LABEL_166:
    sub_2723786BC();
    __break(1u);
    goto LABEL_167;
  }

  v35 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

  *(v2 + 96) = v35;
  *(v2 + 136) = v35;
  v255 = VARuntimeParameters.keywordsNoThresholds.getter();
  *(v2 + 40) = sub_2722CAA80(MEMORY[0x277D84F90]);
  v36 = (v2 + 40);
  v37 = *(v2 + 96);
  v23 = MEMORY[0x277D84F90];
  if ((v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_159;
  }

  if (v37)
  {
    v38 = 0;
    v39 = v255 + 5;
    *&v258 = v14;
    v253 = v37;
    do
    {
      if (v38 >= v255[2])
      {
        goto LABEL_146;
      }

      v41 = *(v39 - 1);
      v42 = *v39;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v263 = *v36;
      v43 = v263;
      *v36 = 0x8000000000000000;
      v45 = sub_272200404(v38);
      v46 = v43[2];
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      v49 = v44;
      if (v43[3] >= v48)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_272201C10();
        }
      }

      else
      {
        sub_2722016EC(v48, isUniquelyReferenced_nonNull_native);
        v50 = sub_272200404(v38);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_166;
        }

        v45 = v50;
      }

      isUniquelyReferenced_nonNull_native = v254;
      v52 = v263;
      if (v49)
      {
        v40 = (v263[7] + 16 * v45);
        *v40 = v41;
        v40[1] = v42;
      }

      else
      {
        v263[(v45 >> 6) + 8] |= 1 << v45;
        *(v52[6] + 8 * v45) = v38;
        v53 = (v52[7] + 16 * v45);
        *v53 = v41;
        v53[1] = v42;
        v54 = v52[2];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_148;
        }

        v52[2] = v56;
      }

      ++v38;
      *v36 = v52;
      swift_endAccess();
      v39 += 2;
      v14 = v258;
    }

    while (v253 != v38);

    v23 = MEMORY[0x277D84F90];
    v33 = *(isUniquelyReferenced_nonNull_native + 96);
    if (v33 < 0)
    {
      goto LABEL_142;
    }

    goto LABEL_25;
  }

  v33 = *(v2 + 96);
  if ((v33 & 0x8000000000000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_142:
  __break(1u);
LABEL_143:
  v64 = 0;
  v63 = MEMORY[0x277D84F90];
LABEL_36:
  *(isUniquelyReferenced_nonNull_native + 80) = v63;
  v265[0] = 0;
  v265[1] = 0xE000000000000000;
  v266 = 0;
  v268 = 0;
  v269 = 0;
  v267 = 0;
  v270 = -1082130432;
  v271 = 0;
  v272 = 2;
  v65 = sub_2722CAB94(v265, v64);
  sub_2722CAC5C(v265);
  *(isUniquelyReferenced_nonNull_native + 88) = v65;
  v252 = (isUniquelyReferenced_nonNull_native + 80);
  *(isUniquelyReferenced_nonNull_native + 112) = v23;
  v66 = VARuntimeParameters.keywordsToThresholds.getter();
  v67 = v251;
  sub_2722C6F68(v66);
  if (!v67)
  {
    v69 = v68;

    if (*(v69 + 16))
    {
      sub_2721F065C(&qword_280882940, qword_272382B70);
      v70 = sub_2723783EC();
    }

    else
    {
      v70 = MEMORY[0x277D84F98];
    }

    v264 = v70;

    sub_2722CA180(v71, 1, &v264);

    v72 = v264;
    *(isUniquelyReferenced_nonNull_native + 64) = 0;
    *(isUniquelyReferenced_nonNull_native + 72) = v72;
    v73 = *(isUniquelyReferenced_nonNull_native + 24);
    v74 = *((*MEMORY[0x277D85000] & *v73) + 0x258);
    v75 = v73;
    v76 = v74();

    *(isUniquelyReferenced_nonNull_native + 32) = v76;
    v77 = sub_2722C389C();
    v78 = v244 + 16;
    v79 = *(v244 + 16);
    v80 = v241;
    v79(v14, v77, v241);

    v81 = sub_27237725C();
    v82 = sub_272377E7C();

    v83 = os_log_type_enabled(v81, v82);
    v251 = 0;
    v232 = v78;
    if (v83)
    {
      v84 = swift_slowAlloc();
      v255 = swift_slowAlloc();
      v264 = v255;
      *v84 = 136315138;
      swift_beginAccess();

      v85 = sub_27237773C();
      LODWORD(v253) = v82;
      v86 = v79;
      v87 = v77;
      v88 = v85;
      *&v258 = v14;
      v90 = v89;

      v91 = v88;
      v77 = v87;
      v79 = v86;
      v92 = sub_2721FFD04(v91, v90, &v264);

      *(v84 + 4) = v92;
      _os_log_impl(&dword_2721E4000, v81, v253, "Keywords Trained for: %s", v84, 0xCu);
      v93 = v255;
      sub_2722039C8(v255);
      MEMORY[0x2743C69C0](v93, -1, -1);
      MEMORY[0x2743C69C0](v84, -1, -1);

      v94 = *(v244 + 8);
      v95 = v258;
    }

    else
    {

      v94 = *(v244 + 8);
      v95 = v14;
    }

    v235 = v94;
    v94(v95, v80);
    v96 = v250;
    v228 = v79;
    v79(v250, v77, v80);
    v97 = v249;
    sub_272216374(v246, v249);
    v98 = sub_27237725C();
    v99 = sub_272377E7C();
    v100 = os_log_type_enabled(v98, v99);
    v229 = v77;
    if (v100)
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v264 = v102;
      *v101 = 136315138;
      VARuntimeParameters.keywordsNoThresholds.getter();
      v103 = MEMORY[0x2743C4C60]();
      v105 = v104;

      sub_272216BD8(v97);
      v106 = sub_2721FFD04(v103, v105, &v264);

      *(v101 + 4) = v106;
      _os_log_impl(&dword_2721E4000, v98, v99, "Keywords Looking for: %s", v101, 0xCu);
      sub_2722039C8(v102);
      MEMORY[0x2743C69C0](v102, -1, -1);
      MEMORY[0x2743C69C0](v101, -1, -1);

      v107 = v250;
      v108 = v241;
    }

    else
    {

      sub_272216BD8(v97);
      v107 = v96;
      v108 = v80;
    }

    v235(v107, v108);
    v110 = MEMORY[0x277D85000];
    v111 = v251;
    v112 = *(isUniquelyReferenced_nonNull_native + 96);
    if ((v112 & 0x8000000000000000) != 0)
    {
      goto LABEL_156;
    }

    v113 = MEMORY[0x277D84F90];
    if (v112)
    {
      LODWORD(v109) = *(v246 + 8);
      v258 = v109;
      v114 = sub_272377B5C();
      *(v114 + 16) = v112;
      v115 = (v114 + 32);
      if (v112 > 7)
      {
        v116 = v112 & 0x7FFFFFFFFFFFFFF8;
        v115 += v112 & 0x7FFFFFFFFFFFFFF8;
        v117 = v258;
        v118 = vdupq_lane_s32(*&v258, 0);
        v119 = (v114 + 48);
        v120 = v112 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v119[-1] = v118;
          *v119 = v118;
          v119 += 2;
          v120 -= 8;
        }

        while (v120);
        if (v112 == v116)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v116 = 0;
        v117 = v258;
      }

      v121 = v112 - v116;
      do
      {
        *v115++ = v117;
        --v121;
      }

      while (v121);
    }

    else
    {
      v114 = MEMORY[0x277D84F90];
    }

LABEL_56:
    *(isUniquelyReferenced_nonNull_native + 104) = v114;
    v122 = VARuntimeParameters.keywordsToThresholds.getter();
    v123 = v122[8];
    v240 = v122 + 8;
    v124 = 1 << *(v122 + 32);
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    else
    {
      v125 = -1;
    }

    v126 = v125 & v123;
    swift_beginAccess();
    swift_beginAccess();
    v127 = 0;
    v128 = (v124 + 63) >> 6;
    v255 = v248 + 8;
    v234 = v128;
    v236 = v122;
LABEL_60:
    if (v126)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v129 = v127 + 1;
      if (__OFADD__(v127, 1))
      {
        goto LABEL_145;
      }

      if (v129 >= v128)
      {
        break;
      }

      v126 = v240[v129];
      ++v127;
      if (v126)
      {
        v127 = v129;
LABEL_65:
        v239 = (v126 - 1) & v126;
        v238 = v127;
        v130 = __clz(__rbit64(v126)) | (v127 << 6);
        v131 = v122[7];
        v132 = (v122[6] + 16 * v130);
        v133 = v132[1];
        v249 = *v132;
        v134 = *(v131 + 4 * v130);
        v135 = *(isUniquelyReferenced_nonNull_native + 40);
        v136 = *(v135 + 8);
        v243 = v135 + 64;
        v137 = 1 << v135[32];
        if (v137 < 64)
        {
          v138 = ~(-1 << v137);
        }

        else
        {
          v138 = -1;
        }

        v139 = v138 & v136;
        v242 = (v137 + 63) >> 6;
        v250 = v133;

        v140 = 0;
        v245 = v135;
        while (v139)
        {
LABEL_75:
          v253 = v139;
          v144 = __clz(__rbit64(v139)) | (v140 << 6);
          v145 = *(v135 + 7);
          v247 = *(*(v135 + 6) + 8 * v144);
          v146 = (v145 + 16 * v144);
          v148 = *v146;
          v147 = v146[1];
          v259 = v148;
          v260 = v147;
          v261 = 44;
          v262 = 0xE100000000000000;
          *&v258 = sub_272203AC4();
          v149 = sub_2723780BC();
          v150 = *(v149 + 16);
          if (v150)
          {
            v251 = v111;
            v261 = v113;
            sub_27220056C(0, v150, 0);
            v113 = v261;
            v248 = v149;
            v151 = (v149 + 40);
            do
            {
              v152 = *v151;
              v259 = *(v151 - 1);
              v260 = v152;

              v153 = v256;
              sub_272376B4C();
              v154 = sub_2723780EC();
              v156 = v155;
              (*v255)(v153, v257);

              v261 = v113;
              v158 = *(v113 + 16);
              v157 = *(v113 + 24);
              if (v158 >= v157 >> 1)
              {
                sub_27220056C((v157 > 1), v158 + 1, 1);
                v113 = v261;
              }

              *(v113 + 16) = v158 + 1;
              v159 = v113 + 16 * v158;
              *(v159 + 32) = v154;
              *(v159 + 40) = v156;
              v151 += 2;
              --v150;
            }

            while (v150);

            isUniquelyReferenced_nonNull_native = v254;
            v110 = MEMORY[0x277D85000];
            v111 = v251;
            v135 = v245;
          }

          else
          {
          }

          v139 = (v253 - 1) & v253;
          v259 = v249;
          v260 = v250;
          MEMORY[0x28223BE20](v141);
          *(&v228 - 2) = &v259;
          v142 = sub_2722160A8(sub_272204258, (&v228 - 4), v113);

          v113 = MEMORY[0x277D84F90];
          if (v142)
          {
            v248 = sub_2721FFBF8(0, 1, 1, MEMORY[0x277D84F90]);
            v201 = *(v248 + 2);
            v200 = *(v248 + 3);
            if (v201 >= v200 >> 1)
            {
              v248 = sub_2721FFBF8((v200 > 1), v201 + 1, 1, v248);
            }

            v202 = v248;
            *(v248 + 2) = v201 + 1;
            v203 = &v202[16 * v201];
            v204 = v250;
            *(v203 + 4) = v249;
            *(v203 + 5) = v204;
            v205 = v252;
            v206 = *v252;
            v207 = swift_isUniquelyReferenced_nonNull_native();
            *v205 = v206;
            if ((v207 & 1) == 0)
            {
              v206 = sub_2722002AC(v206);
            }

            v208 = v247;
            if ((v247 & 0x8000000000000000) != 0)
            {
              goto LABEL_160;
            }

            if (v247 >= *(v206 + 2))
            {
              goto LABEL_161;
            }

            *&v206[4 * v247 + 32] = 1065353216;
            *(isUniquelyReferenced_nonNull_native + 80) = v206;
            v209 = *(isUniquelyReferenced_nonNull_native + 104);
            v210 = swift_isUniquelyReferenced_nonNull_native();
            *(isUniquelyReferenced_nonNull_native + 104) = v209;
            if ((v210 & 1) == 0)
            {
              v209 = sub_2722002AC(v209);
            }

            if (v208 < *(v209 + 2))
            {
              *&v209[4 * v208 + 32] = v134;
              *(isUniquelyReferenced_nonNull_native + 104) = v209;

              goto LABEL_130;
            }

            goto LABEL_162;
          }
        }

        while (1)
        {
          v143 = v140 + 1;
          if (__OFADD__(v140, 1))
          {
            break;
          }

          if (v143 >= v242)
          {

            v160 = v249;
            v161 = v250;
            if (sub_27237791C() <= 0)
            {

              v248 = v113;
              goto LABEL_130;
            }

            v251 = v111;

            *&v258 = v160;
            v248 = v113;
LABEL_84:
            v162 = *(isUniquelyReferenced_nonNull_native + 40);
            v163 = 1 << *(v162 + 32);
            if (v163 < 64)
            {
              v164 = ~(-1 << v163);
            }

            else
            {
              v164 = -1;
            }

            isUniquelyReferenced_nonNull_native = v164 & *(v162 + 64);

            swift_beginAccess();
            LODWORD(v253) = 0;
            v165 = 0;
            v166 = ((v163 + 63) >> 6);
            while (1)
            {
              while (1)
              {
                v167 = v165;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  while (1)
                  {
                    v165 = v167 + 1;
                    if (__OFADD__(v167, 1))
                    {
                      break;
                    }

                    if (v165 >= v166)
                    {

                      if (v253)
                      {
                        v199 = sub_27237791C();
                        isUniquelyReferenced_nonNull_native = v254;
                        if (v199 > 0)
                        {
                          goto LABEL_84;
                        }

                        v110 = MEMORY[0x277D85000];
                        v111 = v251;
                        v113 = MEMORY[0x277D84F90];
LABEL_130:
                        v211 = *(isUniquelyReferenced_nonNull_native + 24);
                        v212 = *((*v110 & *v211) + 0x168);
                        v213 = v211;
                        v214 = v212();

                        if (!__OFADD__(v214, 100))
                        {
                          type metadata accessor for VAWordDecoder();
                          v215 = swift_allocObject();
                          v215[2] = v214 + 100;
                          v215[3] = 0;
                          v215[4] = v248;
                          v215[5] = v113;
                          v215[6] = 10;
                          v216 = v237;
                          v217 = swift_beginAccess();
                          MEMORY[0x2743C4C30](v217);
                          if (*((*v216 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v216 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                          {
                            sub_272377B2C();
                          }

                          sub_272377B7C();
                          swift_endAccess();
                          v110 = MEMORY[0x277D85000];
                          v122 = v236;
                          v126 = v239;
                          v128 = v234;
                          v127 = v238;
                          goto LABEL_60;
                        }

LABEL_153:
                        __break(1u);
LABEL_154:
                        __break(1u);
LABEL_155:
                        __break(1u);
LABEL_156:
                        __break(1u);
LABEL_157:
                        __break(1u);
LABEL_158:
                        __break(1u);
LABEL_159:
                        __break(1u);
LABEL_160:
                        __break(1u);
LABEL_161:
                        __break(1u);
LABEL_162:
                        __break(1u);
LABEL_163:
                        __break(1u);
                        goto LABEL_164;
                      }

                      v135 = v233;
                      v165 = v241;
                      v228(v233, v229, v241);
                      v139 = v250;

                      v166 = sub_27237725C();
                      v218 = sub_272377E8C();

                      if (os_log_type_enabled(v166, v218))
                      {
                        v219 = swift_slowAlloc();
                        v220 = swift_slowAlloc();
                        v259 = v220;
                        *v219 = 136315138;
                        isUniquelyReferenced_nonNull_native = v249;
                        *(v219 + 4) = sub_2721FFD04(v249, v139, &v259);
                        _os_log_impl(&dword_2721E4000, v166, v218, "Could not create keyword %s", v219, 0xCu);
                        sub_2722039C8(v220);
                        MEMORY[0x2743C69C0](v220, -1, -1);
                        MEMORY[0x2743C69C0](v219, -1, -1);

                        v235(v135, v165);
                        v221 = v246;
                        v222 = v231;
                        v223 = v230;
LABEL_139:
                        v259 = 0;
                        v260 = 0xE000000000000000;
                        sub_27237820C();

                        v259 = 0xD000000000000019;
                        v260 = 0x800000027238E450;
                        MEMORY[0x2743C4AD0](isUniquelyReferenced_nonNull_native, v139);

                        v224 = v259;
                        v225 = v260;
                        sub_2722032B4();
                        swift_allocError();
                        *v226 = v224;
                        v226[1] = v225;
                        swift_willThrow();

                        sub_272216BD8(v221);

                        return isUniquelyReferenced_nonNull_native;
                      }

LABEL_138:

                      v235(v135, v165);
                      v221 = v246;
                      v222 = v231;
                      v223 = v230;
                      isUniquelyReferenced_nonNull_native = v249;
                      goto LABEL_139;
                    }

                    isUniquelyReferenced_nonNull_native = *(v162 + 64 + 8 * v165);
                    ++v167;
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      goto LABEL_92;
                    }
                  }

                  __break(1u);
                  goto LABEL_138;
                }

LABEL_92:
                v168 = __clz(__rbit64(isUniquelyReferenced_nonNull_native));
                isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
                v169 = v168 | (v165 << 6);
                v170 = *(*(v162 + 48) + 8 * v169);
                v171 = (*(v162 + 56) + 16 * v169);
                v139 = *v171;
                v135 = v171[1];

                if (sub_2723779FC())
                {
                  break;
                }
              }

              v253 = *v252;
              v172 = swift_isUniquelyReferenced_nonNull_native();
              v173 = v253;
              *v252 = v253;
              if (v172)
              {
                if ((v170 & 0x8000000000000000) != 0)
                {
                  goto LABEL_149;
                }
              }

              else
              {
                v173 = sub_2722002AC(v173);
                if ((v170 & 0x8000000000000000) != 0)
                {
                  goto LABEL_149;
                }
              }

              if (v170 >= *(v173 + 2))
              {
                goto LABEL_150;
              }

              *&v173[4 * v170 + 32] = 1065353216;
              v174 = v254;
              *(v254 + 80) = v173;
              v253 = *(v174 + 104);
              v175 = swift_isUniquelyReferenced_nonNull_native();
              v176 = v253;
              *(v254 + 104) = v253;
              if ((v175 & 1) == 0)
              {
                v176 = sub_2722002AC(v176);
              }

              if (v170 >= *(v176 + 2))
              {
                break;
              }

              *&v176[4 * v170 + 32] = v134;
              *(v254 + 104) = v176;
              sub_27237791C();
              v177 = v258;
              v178 = sub_27237794C();
              v179 = HIBYTE(v161) & 0xF;
              if ((v161 & 0x2000000000000000) == 0)
              {
                v179 = v177 & 0xFFFFFFFFFFFFLL;
              }

              if (4 * v179 < v178 >> 14)
              {
                goto LABEL_152;
              }

              *&v258 = sub_272377A5C();
              v253 = v180;
              v247 = v181;
              v183 = v182;
              v245 = v182;

              v184 = MEMORY[0x2743C4A20](v258, v253, v247, v183);
              v161 = v185;

              if (sub_2723779FC())
              {
                v186 = sub_27237794C();
                v187 = HIBYTE(v161) & 0xF;
                if ((v161 & 0x2000000000000000) == 0)
                {
                  v187 = v184 & 0xFFFFFFFFFFFFLL;
                }

                if (4 * v187 < v186 >> 14)
                {
                  goto LABEL_157;
                }

                *&v258 = sub_272377A5C();
                v253 = v188;
                v247 = v189;
                v191 = v190;

                *&v258 = MEMORY[0x2743C4A20](v258, v253, v247, v191);
                v161 = v192;
              }

              else
              {
                *&v258 = v184;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v248 = sub_2721FFBF8(0, *(v248 + 2) + 1, 1, v248);
              }

              v194 = *(v248 + 2);
              v193 = *(v248 + 3);
              v195 = v194 + 1;
              if (v194 >= v193 >> 1)
              {
                v253 = v194 + 1;
                v198 = sub_2721FFBF8((v193 > 1), v194 + 1, 1, v248);
                v195 = v253;
                v248 = v198;
              }

              v196 = v248;
              *(v248 + 2) = v195;
              v197 = &v196[16 * v194];
              *(v197 + 4) = v139;
              *(v197 + 5) = v135;
              LODWORD(v253) = 1;
            }

LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
            goto LABEL_153;
          }

          v139 = *&v243[8 * v143];
          ++v140;
          if (v139)
          {
            v140 = v143;
            goto LABEL_75;
          }
        }

        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }
    }

    sub_272216BD8(v246);

    return isUniquelyReferenced_nonNull_native;
  }

LABEL_167:

  type metadata accessor for VAResultGenerator();
  swift_deallocPartialClassInstance();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_2722C6F68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_2722CA918(0, v1, 0);
    v3 = a1 + 64;
    v4 = sub_27237816C();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_2722CA918((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = (v23 + 24 * v10);
      v12[4] = v22;
      v12[5] = v9;
      v12[6] = -100;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 64;
      v13 = *(a1 + 64 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 72 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_2722CB07C(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_2722CB07C(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_2722C719C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(*v7 + 608))();
  v15 = *(*v7 + 600);

  return v15(a1, a2, a3, a4, a5, a6, a7);
}

void *sub_2722C7278(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  LOBYTE(v278) = a7;
  LOBYTE(v279) = a6;
  LOBYTE(v280) = a5;
  v11 = v7[8];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    goto LABEL_315;
  }

  v10 = v7;
  v8 = a1;
  v276 = a3;
  v277 = a4;
  v7[8] = v13;
  v286 = (*v7 + 536);
  v287 = *v286;
  v14 = *((*v286)(a1, a2) + 16);

  v288 = *(*v7 + 552);
  v7 = (v288)(&v294);
  v16 = v15;
  v9 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_2721FF8B4(0, *(v9 + 16), 0, v9);
  }

  *v16 = v9;

  vDSP_vclr((v9 + 32), 1, v14);
  (v7)(&v294, 0);

  v19 = *(v10 + 96);
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_316;
  }

  if (v19)
  {
    if (v19 > *(v8 + 16))
    {
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
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      result = sub_2723786BC();
      __break(1u);
      return result;
    }

    v20 = *(*v10 + 344);
    v21 = 8;
    do
    {
      v22 = *(v8 + 4 * v21);
      v7 = v10;
      v23 = v20(v18);
      if ((v21 - 8) >= *(v23 + 16))
      {
        goto LABEL_270;
      }

      v24 = *(v23 + 4 * v21);

      v25 = *(v10 + 56);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + 56) = v25;
      if ((v18 & 1) == 0)
      {
        v18 = sub_2722002AC(v25);
        v25 = v18;
      }

      if ((v21 - 8) >= *(v25 + 16))
      {
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
        goto LABEL_275;
      }

      *(v25 + 4 * v21) = (v22 * v24) + *(v25 + 4 * v21);
      *(v10 + 56) = v25;
      ++v21;
      --v19;
    }

    while (v19);
  }

  v9 = v10 + 48;
  v7 = *(v10 + 48);

  v26 = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 48) = v7;
  if ((v26 & 1) == 0)
  {
    goto LABEL_317;
  }

  while (2)
  {
    v28 = v7[2];
    v27 = v7[3];
    if (v28 >= v27 >> 1)
    {
      v7 = sub_272241E04((v27 > 1), v28 + 1, 1, v7);
    }

    v7[2] = v28 + 1;
    v7[v28 + 4] = v8;
    *(v10 + 48) = v7;
    v29 = *(v10 + 64);
    v7 = *(v10 + 24);
    v285 = v7;
    v30 = *((*MEMORY[0x277D85000] & *v7) + 0x168);
    v293 = v10;
    if (v30() >= v29)
    {
      v40 = *(v10 + 96);
      if (v40 < 0)
      {
        goto LABEL_324;
      }

      if (v40)
      {
        v41 = 8;
        while (1)
        {
          v42 = *(v10 + 56);
          if ((v41 - 8) >= *(v42 + 16))
          {
            break;
          }

          v43 = *(v42 + 4 * v41);
          v44 = *(v10 + 64);
          v7 = (v288)(&v294);
          v8 = v45;
          v46 = *v45;
          v47 = swift_isUniquelyReferenced_nonNull_native();
          *v8 = v46;
          if ((v47 & 1) == 0)
          {
            v46 = sub_2722002AC(v46);
            *v8 = v46;
          }

          if ((v41 - 8) >= *(v46 + 2))
          {
            goto LABEL_276;
          }

          *&v46[4 * v41] = v43 / v44;
          (v7)(&v294, 0);
          ++v41;
          if (!--v40)
          {
            goto LABEL_40;
          }
        }

LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
        goto LABEL_277;
      }
    }

    else
    {
      if (!*(*v9 + 16))
      {
        goto LABEL_323;
      }

      v31 = *(*v9 + 32);

      sub_2722CAD58(0, 1, sub_272241E04, sub_2722C2A80);
      v10 = *(v10 + 96);
      if (v10 < 0)
      {
        goto LABEL_325;
      }

      if (v10)
      {
        if (v10 > *(v31 + 16))
        {
          goto LABEL_330;
        }

        v32 = 8;
        while (1)
        {
          v33 = *(v31 + 4 * v32);
          v7 = v293;
          v34 = v293[7];
          v35 = swift_isUniquelyReferenced_nonNull_native();
          v293[7] = v34;
          if ((v35 & 1) == 0)
          {
            v34 = sub_2722002AC(v34);
          }

          if ((v32 - 8) >= *(v34 + 2))
          {
            break;
          }

          *&v34[4 * v32] = *&v34[4 * v32] - v33;
          v293[7] = v34;
          v36 = *&v34[4 * v32];
          v8 = v30();
          v7 = (v288)(&v294);
          v9 = v37;
          v38 = *v37;
          v39 = swift_isUniquelyReferenced_nonNull_native();
          *v9 = v38;
          if ((v39 & 1) == 0)
          {
            v38 = sub_2722002AC(v38);
            *v9 = v38;
          }

          if ((v32 - 8) >= *(v38 + 2))
          {
            goto LABEL_278;
          }

          *&v38[4 * v32] = v36 / v8;
          (v7)(&v294, 0);
          ++v32;
          if (!--v10)
          {
            goto LABEL_39;
          }
        }

LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
LABEL_283:
        __break(1u);
LABEL_284:
        __break(1u);
LABEL_285:
        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
LABEL_297:
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
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
        goto LABEL_310;
      }

LABEL_39:

      v10 = v293;
    }

LABEL_40:
    v288 = (*v10 + 560);
    v289 = *v288;
    v48 = *((*v288)() + 16);

    v49 = (*v10 + 576);
    v50 = *v49;
    v51 = (*v49)(&v294);
    v53 = v52;
    v8 = *v52;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *v53 = v8;
    if ((v54 & 1) == 0)
    {
      v8 = sub_2721FF8B4(0, *(v8 + 16), 0, v8);
    }

    *v53 = v8;

    vDSP_vclr((v8 + 32), 1, v48);
    v51(&v294, 0);

    v56 = (*((*MEMORY[0x277D85000] & *v285) + 0x240))(v55);
    if (v56)
    {
      v8 = v286;
      v57 = (v287)();
      v58 = (v287)();
      v59 = sub_2722C9638(v58);

      if ((v59 & 0x100000000) != 0)
      {
        goto LABEL_331;
      }

      v60 = *(v57 + 16);
      v61 = v60 != 0;
      v62 = 0;
      if (v60)
      {
        while (*(v57 + 32 + 4 * v62) != *&v59)
        {
          v61 = v60 != ++v62;
          if (v60 == v62)
          {
            v62 = 0;
            break;
          }
        }
      }

      v63 = *(v10 + 96);
      if (v63 < 0)
      {
        goto LABEL_327;
      }

      if (v63)
      {
        v9 = 0;
        v10 = &v294;
        do
        {
          if (v61 && v62 == v9)
          {
            v7 = v293;
            v64 = (v287)(v56);
            if (v62 >= *(v64 + 16))
            {
              goto LABEL_295;
            }

            v65 = *(v64 + 4 * v62 + 32);

            v7 = (v50)(&v294);
            v8 = v66;
            v67 = *v66;
            v68 = swift_isUniquelyReferenced_nonNull_native();
            *v8 = v67;
            if ((v68 & 1) == 0)
            {
              v67 = sub_2722002AC(v67);
              *v8 = v67;
            }

            if (v62 >= *(v67 + 2))
            {
              goto LABEL_297;
            }

            *&v67[4 * v62 + 32] = v65;
          }

          else
          {
            v7 = (v50)(&v294);
            v8 = v69;
            v70 = *v69;
            v71 = swift_isUniquelyReferenced_nonNull_native();
            *v8 = v70;
            if ((v71 & 1) == 0)
            {
              v70 = sub_2722002AC(v70);
              *v8 = v70;
            }

            if (v9 >= *(v70 + 2))
            {
              goto LABEL_296;
            }

            *&v70[4 * v9 + 32] = 0;
          }

          v56 = (v7)(&v294, 0);
          ++v9;
        }

        while (v63 != v9);
      }
    }

    else
    {
      v72 = *(v10 + 96);
      if (v72 < 0)
      {
        goto LABEL_326;
      }

      if (v72)
      {
        v73 = 8;
        do
        {
          v9 = v73 - 8;
          v7 = v293;
          v74 = (v287)();
          if ((v73 - 8) >= *(v74 + 16))
          {
            goto LABEL_279;
          }

          v75 = *(v74 + 4 * v73);

          v7 = (v50)(&v294);
          v8 = v76;
          v77 = *v76;
          v78 = swift_isUniquelyReferenced_nonNull_native();
          *v8 = v77;
          if ((v78 & 1) == 0)
          {
            v77 = sub_2722002AC(v77);
            *v8 = v77;
          }

          if (v9 >= *(v77 + 2))
          {
            goto LABEL_280;
          }

          *&v77[4 * v73] = v75;
          v56 = (v7)(&v294, 0);
          ++v73;
        }

        while (--v72);
      }
    }

    v79 = MEMORY[0x277D85000];
    if (v280 == 2)
    {
      LOBYTE(v280) = (*((*MEMORY[0x277D85000] & *v285) + 0xD8))(v56);
    }

    v81 = v276;
    v80 = v277;
    if (v279 == 2)
    {
      LOBYTE(v279) = (*((*v79 & *v285) + 0xF0))();
    }

    v10 = v293;
    if (v278 == 2)
    {
      LOBYTE(v278) = (*((*v79 & *v285) + 0x108))();
    }

    v8 = v293[12];
    if (v8 < 0)
    {
      __break(1u);
LABEL_319:
      __break(1u);
      goto LABEL_320;
    }

    v49 = &v299;
    if (!v8)
    {
      v275 = MEMORY[0x277D84F90];
      goto LABEL_197;
    }

    swift_beginAccess();
    v82 = swift_beginAccess();
    v49 = (v276 + 32);
    v50 = v277 + 32;
    v79 = 8;
    v83 = 6;
    v275 = (v276 + 32);
    do
    {
      v9 = v79 - 8;
      v7 = v10;
      v85 = (v289)(v82);
      if ((v79 - 8) >= *(v85 + 16))
      {
        goto LABEL_272;
      }

      v86 = *(v85 + 4 * v79);

      v87 = *(v10 + 104);
      if (v9 >= *(v87 + 16))
      {
        goto LABEL_273;
      }

      if (*(v87 + 4 * v79) <= v86)
      {
        v7 = v10;
        v91 = (v289)(v82);
        if (v9 >= *(v91 + 16))
        {
          goto LABEL_281;
        }

        v92 = *(v91 + 4 * v79);

        v7 = *(v10 + 88);
        if (v9 >= v7[2])
        {
          goto LABEL_283;
        }

        if (*&v7[v83] > v92)
        {
          swift_beginAccess();
          v93 = swift_isUniquelyReferenced_nonNull_native();
          *(v10 + 88) = v7;
          if ((v93 & 1) == 0)
          {
            v7 = sub_2722CA4FC(v7);
          }

          if (v9 >= v7[2])
          {
            goto LABEL_298;
          }

          v89 = &v7[v83];
          v94 = v7[v83 + 1];
          v12 = __OFADD__(v94, 1);
          v84 = v94 + 1;
          if (v12)
          {
            goto LABEL_300;
          }

          goto LABEL_81;
        }

        if (v81)
        {
          v95 = *(v81 + 16);
          v96 = (v276 + 32);
          if (v95 != 1)
          {
            v96 = v49;
            if (v9 >= v95)
            {
              goto LABEL_312;
            }
          }

          v97 = *v96;
          if (v80)
          {
            goto LABEL_107;
          }
        }

        else
        {
          v97 = 0;
          if (v80)
          {
LABEL_107:
            v98 = *(v80 + 16);
            v99 = (v277 + 32);
            if (v98 != 1)
            {
              v99 = v50;
              if (v9 >= v98)
              {
                goto LABEL_313;
              }
            }

            v100 = *v99;
            goto LABEL_112;
          }
        }

        v100 = 0;
LABEL_112:
        LOBYTE(v294) = v80 == 0;
        v7 = v10;
        v10 = sub_2722C9D70(v97 | ((v81 == 0) << 32), v100 | ((v80 == 0) << 32));
        v102 = v101;
        swift_beginAccess();
        v103 = v7[11];
        v104 = swift_isUniquelyReferenced_nonNull_native();
        v7[11] = v103;
        if ((v104 & 1) == 0)
        {
          v103 = sub_2722CA4FC(v103);
        }

        if (v9 >= *(v103 + 2))
        {
          goto LABEL_299;
        }

        *&v103[v83 * 8 + 16] = v10;
        v7 = v293;
        v293[11] = v103;
        if (v9 >= *(v103 + 2))
        {
          goto LABEL_301;
        }

        v281 = v102;
        *&v103[v83 * 8 + 24] = v102;
        v293[11] = v103;
        swift_endAccess();
        if (v280)
        {
          v105 = (*(*v293 + 616))(v10);
        }

        else
        {
          v105 = 1;
        }

        swift_beginAccess();
        v106 = v293[11];
        v107 = swift_isUniquelyReferenced_nonNull_native();
        v293[11] = v106;
        if ((v107 & 1) == 0)
        {
          v106 = sub_2722CA4FC(v106);
        }

        if (v9 >= *(v106 + 2))
        {
          goto LABEL_302;
        }

        v106[v83 * 8 + 36] = v105 & 1;
        v7 = v293;
        v293[11] = v106;
        swift_endAccess();
        if (v279)
        {
          v108 = (*(*v293 + 624))(v281);
        }

        else
        {
          v108 = 1;
        }

        swift_beginAccess();
        v109 = v293[11];
        v110 = swift_isUniquelyReferenced_nonNull_native();
        v293[11] = v109;
        if ((v110 & 1) == 0)
        {
          v109 = sub_2722CA4FC(v109);
        }

        if (v9 >= *(v109 + 2))
        {
          goto LABEL_303;
        }

        v109[v83 * 8 + 38] = v108;
        v7 = v293;
        v293[11] = v109;
        swift_endAccess();
        if (v278)
        {
          v111 = (*(*v293 + 632))(v10, v281);
        }

        else
        {
          v111 = 1;
        }

        v10 = v293;
        swift_beginAccess();
        v112 = v293[11];
        v113 = swift_isUniquelyReferenced_nonNull_native();
        v293[11] = v112;
        if ((v113 & 1) == 0)
        {
          v112 = sub_2722CA4FC(v112);
        }

        if (v9 >= *(v112 + 2))
        {
          goto LABEL_304;
        }

        v112[v83 * 8 + 37] = v111 & 1;
        v293[11] = v112;
        v114 = swift_endAccess();
        v115 = v293[5];
        if (*(v115 + 16))
        {
          v114 = sub_272200404(v79 - 8);
          if (v116)
          {
            v117 = (*(v115 + 56) + 16 * v114);
            v10 = *v117;
            v7 = v117[1];
            swift_beginAccess();

            v118 = swift_isUniquelyReferenced_nonNull_native();
            v293[11] = v112;
            if ((v118 & 1) == 0)
            {
              v112 = sub_2722CA4FC(v112);
              v293[11] = v112;
            }

            if (v9 >= *(v112 + 2))
            {
              goto LABEL_314;
            }

            v119 = &v112[v83 * 8];
            *(v119 - 2) = v10;
            *(v119 - 1) = v7;
            v10 = v293;
            v293[11] = v112;
            swift_endAccess();
          }
        }

        v7 = v10;
        v120 = (v287)(v114);
        if (v9 >= *(v120 + 16))
        {
          goto LABEL_305;
        }

        v121 = *(v120 + 4 * v79);

        swift_beginAccess();
        v7 = *(v10 + 88);
        v122 = swift_isUniquelyReferenced_nonNull_native();
        *(v10 + 88) = v7;
        if ((v122 & 1) == 0)
        {
          v7 = sub_2722CA4FC(v7);
        }

        v81 = v276;
        v80 = v277;
        if (v9 >= v7[2])
        {
          goto LABEL_306;
        }

        LODWORD(v7[v83]) = v121;
        *(v10 + 88) = v7;
        v123 = *(v10 + 104);
        if (v9 >= *(v123 + 16))
        {
          goto LABEL_307;
        }

        if (v9 >= v7[2])
        {
          goto LABEL_308;
        }

        v124 = *(v123 + 4 * v79);
        v89 = &v7[v83];
        LODWORD(v7[v83 + 4]) = v124;
        *(v10 + 88) = v7;
        if (v9 >= v7[2])
        {
          goto LABEL_309;
        }

        v84 = 1;
        goto LABEL_81;
      }

      v7 = *(v10 + 88);
      if (v9 >= v7[2])
      {
        goto LABEL_282;
      }

      if (v7[v83 + 1] >= 1)
      {
        swift_beginAccess();
        v88 = swift_isUniquelyReferenced_nonNull_native();
        *(v10 + 88) = v7;
        if ((v88 & 1) == 0)
        {
          v7 = sub_2722CA4FC(v7);
        }

        if (v9 >= v7[2])
        {
          goto LABEL_293;
        }

        v89 = &v7[v83];
        v90 = v7[v83 + 1];
        v12 = __OFADD__(v90, 1);
        v84 = v90 + 1;
        if (v12)
        {
          goto LABEL_294;
        }

LABEL_81:
        v89[1] = v84;
        *(v10 + 88) = v7;
        v82 = swift_endAccess();
      }

      ++v79;
      v83 += 7;
      v50 += 4;
      v49 = (v49 + 4);
      --v8;
    }

    while (v8);
    v125 = *(v10 + 96);
    if (v125 < 0)
    {
      goto LABEL_319;
    }

    if (v125)
    {
      v271 = *(v10 + 96);
      swift_beginAccess();
      v126 = v271;
      v127 = 0;
      v275 = MEMORY[0x277D84F90];
      v79 = MEMORY[0x277D85000];
      v49 = &v299;
      do
      {
        v128 = *(v10 + 128);
        if (v128 >> 62)
        {
          v163 = sub_2723783AC();
          v126 = v271;
          v7 = v163;
          if (!v163)
          {
            goto LABEL_152;
          }

LABEL_155:
          v8 = *(v10 + 32);
          v9 = v128 & 0xC000000000000001;

          swift_beginAccess();
          swift_beginAccess();
          v129 = 0;
          v272 = v127;
          v273 = v128 & 0xFFFFFFFFFFFFFF8;
          v290 = 56 * v127;
          v278 = v7;
          v279 = v128;
          v276 = v128 & 0xC000000000000001;
          v277 = v8;
          while (1)
          {
            if (v9)
            {
              v130 = MEMORY[0x2743C5370](v129, v128);
              v131 = (v129 + 1);
              if (__OFADD__(v129, 1))
              {
                goto LABEL_264;
              }
            }

            else
            {
              if (v129 >= *(v273 + 16))
              {
                goto LABEL_266;
              }

              v130 = *(v128 + 8 * v129 + 32);

              v131 = (v129 + 1);
              if (__OFADD__(v129, 1))
              {
LABEL_264:
                __break(1u);
LABEL_265:
                __break(1u);
LABEL_266:
                __break(1u);
LABEL_267:
                __break(1u);
LABEL_268:
                __break(1u);
LABEL_269:
                __break(1u);
LABEL_270:
                __break(1u);
                goto LABEL_271;
              }
            }

            v132 = *(v10 + 88);
            if (v127 >= *(v132 + 16))
            {
              goto LABEL_265;
            }

            v133 = v132 + v290;
            if (*(v133 + 56) >= v8)
            {
              break;
            }

LABEL_157:
            ++v129;
            if (v131 == v7)
            {

              v79 = MEMORY[0x277D85000];
              v126 = v271;
              goto LABEL_152;
            }
          }

          v134 = *(v133 + 32);
          v135 = *(v133 + 48);
          v136 = *(v133 + 64);
          *&v313[15] = *(v133 + 79);
          v312 = v135;
          *v313 = v136;
          v311 = v134;
          v299 = *(v133 + 32);
          v300 = *(v133 + 48);
          *v301 = *(v133 + 64);
          *&v301[15] = *(v133 + 79);
          v137 = *(*v130 + 248);
          v8 = *v130 + 248;
          sub_2722C5138(&v311, v298);
          v137(&v302, &v299);
          v294 = v299;
          v295 = v300;
          *v296 = *v301;
          *&v296[15] = *&v301[15];
          sub_2722CAC5C(&v294);
          v9 = v303;
          if (!v303)
          {

LABEL_190:
            v7 = v278;
            v128 = v279;
            v9 = v276;
            v8 = v277;
            goto LABEL_157;
          }

          v7 = *(v10 + 72);
          if (!v7[2])
          {
            goto LABEL_267;
          }

          v138 = v302;
          v280 = v305;
          v282 = v304;
          v288 = v306;
          v286 = v307;
          v139 = v310;
          v10 = v309;
          v140 = v308;

          v287 = v138;
          v141 = sub_27220038C(v138, v9);
          v8 = v142;

          if ((v8 & 1) == 0)
          {
            goto LABEL_268;
          }

          v143 = *(v7[7] + 8 * v141);

          v7 = v285;
          v145 = (*((*MEMORY[0x277D85000] & *v285) + 0x150))(v144);
          if (__OFSUB__(v143, v145))
          {
            goto LABEL_269;
          }

          if (v143 - v145 >= v288)
          {

LABEL_189:
            v10 = v293;
            v49 = &v299;
            v127 = v272;
            goto LABEL_190;
          }

          v146 = v140 | ((v10 | (v139 << 16)) << 32);
          v10 = v293;
          swift_beginAccess();
          v8 = v287;
          *&v299 = v287;
          *(&v299 + 1) = v9;
          *&v300 = v282;
          *(&v300 + 1) = v280;
          *v301 = v288;
          *&v301[8] = v286;
          v301[22] = BYTE6(v146);
          *&v301[20] = WORD2(v146);
          *&v301[16] = v146;
          sub_2722C5138(&v299, v298);
          v147 = swift_isUniquelyReferenced_nonNull_native();
          v298[0] = v293[9];
          v7 = v298[0];
          v293[9] = 0x8000000000000000;
          v149 = sub_27220038C(v287, v9);
          v150 = v7[2];
          v151 = (v148 & 1) == 0;
          v152 = v150 + v151;
          if (__OFADD__(v150, v151))
          {
            goto LABEL_274;
          }

          v8 = v148;
          if (v7[3] < v152)
          {
            sub_2722CA678(v152, v147);
            v7 = v298[0];
            v153 = sub_27220038C(v287, v9);
            if ((v8 & 1) != (v154 & 1))
            {
              goto LABEL_332;
            }

            v149 = v153;
            if ((v8 & 1) == 0)
            {
              goto LABEL_182;
            }

LABEL_180:

            v155 = v298[0];
            *(*(v298[0] + 56) + 8 * v149) = v286;
LABEL_184:
            v293[9] = v155;
            swift_endAccess();
            v159 = v275;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v159 = sub_2722CA038(0, *(v275 + 2) + 1, 1, v275);
            }

            v161 = *(v159 + 2);
            v160 = *(v159 + 3);
            if (v161 >= v160 >> 1)
            {
              v275 = sub_2722CA038((v160 > 1), v161 + 1, 1, v159);
            }

            else
            {
              v275 = v159;
            }

            *(v275 + 2) = v161 + 1;
            v162 = &v275[56 * v161];
            *(v162 + 4) = v287;
            *(v162 + 5) = v9;
            *(v162 + 12) = v282;
            *(v162 + 7) = v280;
            *(v162 + 8) = v288;
            *(v162 + 9) = v286;
            *(v162 + 20) = v146;
            v162[84] = BYTE4(v146) & 1;
            v162[85] = BYTE5(v146) & 1;
            v162[86] = BYTE6(v146);
            goto LABEL_189;
          }

          if (v147)
          {
            if (v148)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v7 = v298;
            sub_2722CA510();
            if (v8)
            {
              goto LABEL_180;
            }
          }

LABEL_182:
          v155 = v298[0];
          *(v298[0] + 8 * (v149 >> 6) + 64) |= 1 << v149;
          v156 = (v155[6] + 16 * v149);
          *v156 = v287;
          v156[1] = v9;
          *(v155[7] + 8 * v149) = v286;
          v157 = v155[2];
          v12 = __OFADD__(v157, 1);
          v158 = v157 + 1;
          if (v12)
          {
            goto LABEL_284;
          }

          v155[2] = v158;
          goto LABEL_184;
        }

        v7 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          goto LABEL_155;
        }

LABEL_152:
        ++v127;
      }

      while (v127 != v126);
      v266 = *(v10 + 96);
      if (v266 < 0)
      {
        goto LABEL_329;
      }

      if (!v266)
      {
        goto LABEL_197;
      }

      v8 = *(v10 + 32);
      swift_beginAccess();
      v267 = 0;
      v268 = 0;
      while (1)
      {
        v7 = *(v10 + 88);
        if (v268 >= v7[2])
        {
          break;
        }

        if (v7[v267 + 7] >= v8)
        {
          swift_beginAccess();
          v269 = swift_isUniquelyReferenced_nonNull_native();
          *(v10 + 88) = v7;
          if ((v269 & 1) == 0)
          {
            v7 = sub_2722CA4FC(v7);
          }

          if (v268 >= v7[2])
          {
            goto LABEL_311;
          }

          v270 = &v7[v267];
          *(v270 + 12) = 0;
          v270[7] = 0;
          v270[8] = -1;
          v270[9] = -1;
          *(v270 + 42) = 0;
          *(v270 + 86) = 2;
          *(v10 + 88) = v7;
          swift_endAccess();
        }

        ++v268;
        v267 += 7;
        if (v266 == v268)
        {
          goto LABEL_196;
        }
      }

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
      v7 = sub_272241E04(0, v7[2] + 1, 1, v7);
      *v9 = v7;
      continue;
    }

    break;
  }

  v275 = MEMORY[0x277D84F90];
LABEL_196:
  v79 = MEMORY[0x277D85000];
  v49 = &v299;
LABEL_197:
  swift_beginAccess();
  v50 = *(v10 + 128);
  if (v50 >> 62)
  {
LABEL_320:
    v164 = sub_2723783AC();
    if (!v164)
    {
      goto LABEL_206;
    }

LABEL_199:
    if (v164 >= 1)
    {

      for (i = 0; i != v164; ++i)
      {
        if ((v50 & 0xC000000000000001) != 0)
        {
          v166 = MEMORY[0x2743C5370](i, v50);
        }

        else
        {
          v166 = *(v50 + 8 * i + 32);
        }

        (*(*v166 + 240))();
      }

      goto LABEL_206;
    }

    goto LABEL_328;
  }

  v164 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v164)
  {
    goto LABEL_199;
  }

LABEL_206:
  v167 = *(v275 + 2);
  if (v167)
  {
    v168 = v275 + 32;
    v169 = MEMORY[0x277D84F90];
    while (1)
    {
      v174 = *v168;
      v175 = *(v168 + 1);
      v176 = *(v168 + 2);
      *(v49 + 159) = *(v168 + 47);
      v49[8] = v175;
      v49[9] = v176;
      v49[7] = v174;
      v177 = v313[22];
      if (v313[22] == 2)
      {
        swift_beginAccess();
        v178 = *(v10 + 120);
        sub_2722C5138(&v311, &v294);
        v179 = swift_isUniquelyReferenced_nonNull_native();
        *(v10 + 120) = v178;
        if ((v179 & 1) == 0)
        {
          v178 = sub_2722CA038(0, *(v178 + 2) + 1, 1, v178);
          *(v10 + 120) = v178;
        }

        v181 = *(v178 + 2);
        v180 = *(v178 + 3);
        if (v181 >= v180 >> 1)
        {
          v178 = sub_2722CA038((v180 > 1), v181 + 1, 1, v178);
        }

        *(v178 + 2) = v181 + 1;
        v170 = &v178[56 * v181];
        v171 = v49[7];
        v172 = v49[8];
        v173 = v49[9];
        *(v170 + 79) = *(v49 + 159);
        *(v170 + 3) = v172;
        *(v170 + 4) = v173;
        *(v170 + 2) = v171;
        *(v10 + 120) = v178;
        swift_endAccess();
      }

      else
      {
        v283 = v167;
        v9 = v169;
        v182 = *v313;
        v8 = *((*v79 & *v285) + 0x138);
        v183 = (*v79 & *v285) + 312;
        v184 = sub_2722C5138(&v311, &v294);
        v7 = v285;
        v185 = (v8)(v184);
        v287 = v182;
        if ((v182 * v185) >> 64 != (v182 * v185) >> 63)
        {
          goto LABEL_285;
        }

        v279 = v182 * v185;
        LOBYTE(v280) = v177;
        v288 = v8;
        v291 = v9;
        v186 = v183;
        v187 = v79;
        v188 = *(v10 + 16);
        v189 = *((*v187 & *v188) + 0x88);
        v8 = (*v187 & *v188) + 136;
        v190 = v189();
        v191 = (*((*v187 & *v190) + 0x190))();

        v192 = v189();
        v193 = (*((*v187 & *v192) + 0x198))();

        v194 = v189();
        v9 = (*((*v187 & *v194) + 0xA0))();

        v10 = *&v313[8];
        v7 = v285;
        v286 = v186;
        v195 = v288();
        if ((v10 * v195) >> 64 != (v10 * v195) >> 63)
        {
          goto LABEL_286;
        }

        v277 = v10 * v195;
        v196 = v189();
        v197 = (*((*v187 & *v196) + 0x190))();

        v198 = v189();
        v199 = (*((*v187 & *v198) + 0x198))();

        v200 = v189();
        v276 = (*((*v187 & *v200) + 0xA0))();

        v201 = *(&v311 + 1);
        v202 = v311;
        v203 = *((*v187 & *v188) + 0x118);
        v204 = sub_2722C5138(&v311, &v294);
        v205 = v203(v204);
        v278 = v9;
        if (v205)
        {
          v206 = (*(*v205 + 200))();
          if (*(v206 + 16) && (v207 = sub_27220038C(v202, v201), (v208 & 1) != 0))
          {
            v209 = v207;
            sub_2722CAC5C(&v311);
            v210 = (*(v206 + 56) + 16 * v209);
            v212 = *v210;
            v211 = v210[1];
          }

          else
          {

            v212 = v202;
            v211 = v201;
          }

          v205 = sub_2722C5138(&v311, &v294);
          v213 = v202;
          v9 = v201;
          v202 = v212;
          v201 = v211;
        }

        else
        {
          v213 = 0;
          v9 = 0;
        }

        v7 = v285;
        v214 = *&v312;
        v215 = (v288)(v205);
        v8 = v287 * v215;
        if ((v287 * v215) >> 64 != (v287 * v215) >> 63)
        {
          goto LABEL_287;
        }

        v216 = v288();
        if ((v10 * v216) >> 64 != (v10 * v216) >> 63)
        {
          goto LABEL_288;
        }

        sub_27232409C(v202, v201, v8, v10 * v216, v313[20], v280 & 1, v313[21], v213, &v294, v214, (v191 * v279 + v193) / v278, (v197 * v277 + v199) / v276, v9);
        sub_2722CAC5C(&v311);
        v169 = v291;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v169 = sub_272205014(0, *(v291 + 16) + 1, 1, v291);
        }

        v10 = v293;
        v79 = MEMORY[0x277D85000];
        v49 = &v299;
        v167 = v283;
        v218 = *(v169 + 2);
        v217 = *(v169 + 3);
        if (v218 >= v217 >> 1)
        {
          v169 = sub_272205014((v217 > 1), v218 + 1, 1, v169);
        }

        *(v169 + 2) = v218 + 1;
        v219 = &v169[80 * v218];
        *(v219 + 2) = v294;
        v220 = v295;
        v221 = *v296;
        v222 = v297;
        *(v219 + 5) = *&v296[16];
        *(v219 + 6) = v222;
        *(v219 + 3) = v220;
        *(v219 + 4) = v221;
      }

      v168 += 56;
      if (!--v167)
      {
        goto LABEL_232;
      }
    }
  }

  v169 = MEMORY[0x277D84F90];
LABEL_232:
  swift_beginAccess();
  v8 = *(v10 + 120);
  v223 = *(v8 + 16);
  if (v223)
  {
    v280 = *v10 + 624;
    v284 = *v280;

    v288 = (v223 - 1);
    v224 = MEMORY[0x277D84F90];
    v225 = 32;
    v226 = v285;
    v274 = v8;
    while (1)
    {
      v286 = v225;
      v227 = v8 + v225;
      v228 = *v227;
      v229 = *(v227 + 16);
      v230 = *(v227 + 32);
      *(v49 + 159) = *(v227 + 47);
      v49[8] = v229;
      v49[9] = v230;
      v49[7] = v228;
      v9 = *&v313[8];
      sub_2722C5138(&v311, &v294);
      v231 = v284(v9);
      if (v231 == 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v224 = sub_2722CA038(0, *(v224 + 2) + 1, 1, v224);
        }

        v232 = v288;
        v234 = *(v224 + 2);
        v233 = *(v224 + 3);
        if (v234 >= v233 >> 1)
        {
          v224 = sub_2722CA038((v233 > 1), v234 + 1, 1, v224);
        }

        *(v224 + 2) = v234 + 1;
        v235 = &v224[56 * v234];
        v236 = v49[7];
        v237 = v49[8];
        v238 = v49[9];
        *(v235 + 79) = *(v49 + 159);
        *(v235 + 3) = v237;
        *(v235 + 4) = v238;
        *(v235 + 2) = v236;
        if (!v288)
        {
          goto LABEL_251;
        }
      }

      else
      {
        LOBYTE(v279) = v231;
        LOBYTE(v278) = v224;
        v239 = *v313;
        v7 = v226;
        v287 = *((*v79 & *v226) + 0x138);
        v240 = (v287)();
        if ((v239 * v240) >> 64 != (v239 * v240) >> 63)
        {
          goto LABEL_289;
        }

        v277 = v239 * v240;
        v292 = v169;
        v10 = *(v10 + 16);
        v8 = *((*v79 & *v10) + 0x88);
        v241 = (v8)();
        v242 = (*((*v79 & *v241) + 0x190))();

        v243 = (v8)();
        v244 = (*((*v79 & *v243) + 0x198))();

        v245 = (v8)();
        v276 = (*((*v79 & *v245) + 0xA0))();

        v7 = v226;
        v246 = (v287)();
        v247 = v9 * v246;
        if ((v9 * v246) >> 64 != (v9 * v246) >> 63)
        {
          goto LABEL_290;
        }

        v248 = (v8)();
        v249 = (*((*v79 & *v248) + 0x190))();

        v250 = (v8)();
        v251 = (*((*v79 & *v250) + 0x198))();

        v252 = (v8)();
        v253 = (*((*v79 & *v252) + 0xA0))();

        v10 = *(&v311 + 1);
        v254 = v311;
        v255 = *&v312;
        v256 = sub_2722C5138(&v311, &v294);
        v7 = v226;
        v257 = (v287)(v256);
        v8 = v239 * v257;
        if ((v239 * v257) >> 64 != (v239 * v257) >> 63)
        {
          goto LABEL_291;
        }

        v7 = v226;
        v258 = (v287)();
        if ((v9 * v258) >> 64 != (v9 * v258) >> 63)
        {
          goto LABEL_292;
        }

        sub_27232409C(v254, v10, v8, v9 * v258, v313[20], v279 & 1, v313[21], 0, &v294, v255, (v242 * v277 + v244) / v276, (v249 * v247 + v251) / v253, 0);
        sub_2722CAC5C(&v311);
        v169 = v292;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v169 = sub_272205014(0, *(v292 + 2) + 1, 1, v292);
        }

        v10 = v293;
        v226 = v285;
        v79 = MEMORY[0x277D85000];
        v49 = &v299;
        v8 = v274;
        v232 = v288;
        v260 = *(v169 + 2);
        v259 = *(v169 + 3);
        if (v260 >= v259 >> 1)
        {
          v169 = sub_272205014((v259 > 1), v260 + 1, 1, v169);
        }

        *(v169 + 2) = v260 + 1;
        v261 = &v169[80 * v260];
        *(v261 + 2) = v294;
        v262 = v295;
        v263 = *v296;
        v264 = v297;
        *(v261 + 5) = *&v296[16];
        *(v261 + 6) = v264;
        *(v261 + 3) = v262;
        *(v261 + 4) = v263;
        if (!v288)
        {
LABEL_251:

          goto LABEL_253;
        }
      }

      v288 = (v232 - 1);
      v225 = (v286 + 7);
    }
  }

  v224 = MEMORY[0x277D84F90];
LABEL_253:
  *(v10 + 120) = v224;

  type metadata accessor for VAKeywordResult();
  return VAKeywordResult.__allocating_init(detections:)(v169);
}

unint64_t sub_2722C9638(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_2722C9690(float a1)
{
  v5 = *(v1 + 112);
  v4 = (v1 + 112);
  v3 = v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2721FF8B4(0, *(v3 + 16) + 1, 1, v3);
    v3 = result;
    *v4 = result;
  }

  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_2721FF8B4((v7 > 1), v8 + 1, 1, v3);
    v3 = result;
  }

  *(v3 + 16) = v8 + 1;
  *(v3 + 4 * v8 + 32) = a1;
  *v4 = v3;
  if (v8 >= 0xBB8)
  {
    return sub_2722CAD58(0, 1, sub_2721FF8B4, sub_2722CACB0);
  }

  return result;
}

void sub_2722C9774(uint64_t a1)
{
  v2 = v1[8];
  v3 = *(v1[14] + 16);
  v4 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    goto LABEL_23;
  }

  if (v4 >= a1)
  {
    return;
  }

  v6 = v1;
  v7 = v1[3];
  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v7) + 0x180);
  v10 = v9();
  v11 = v9();
  if (v11 < 0)
  {
    goto LABEL_24;
  }

  v12 = v11;
  if (!v11)
  {
    v15 = 0;
LABEL_18:
    if (__OFADD__(v15, v10))
    {
      goto LABEL_25;
    }

    (*((*v8 & *v7) + 0x198))();
    return;
  }

  v13 = __OFSUB__(a1, v4);
  v14 = a1 - v4;
  if (v13)
  {
    goto LABEL_26;
  }

  v15 = 0;
  v16 = 0;
  v17 = v14;
  while (1)
  {
    if (v16 >= v14)
    {
      goto LABEL_8;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

    v18 = v6[14];
    if (v17 >= *(v18 + 16))
    {
      goto LABEL_21;
    }

    v19 = *(v18 + 4 * v17 + 32);
    if ((*((*v8 & *v7) + 0x1B0))() <= v19)
    {
      v13 = __OFADD__(v15++, 1);
      if (v13)
      {
        __break(1u);
        return;
      }
    }

    v13 = __OFSUB__(v10--, 1);
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_8:
    ++v16;
    --v17;
    if (v12 == v16)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_2722C9940(uint64_t a1)
{
  v2 = v1[8];
  v3 = *(v1[14] + 16);
  v4 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = v1;
  v7 = v1[3];
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v7) + 0x210))();
  if (__OFSUB__(v2, v9))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v2 - v9 < a1)
  {
    return;
  }

  v10 = *((*v8 & *v7) + 0x1F8);
  v11 = v10();
  v12 = a1 - v4;
  if (__OFSUB__(a1, v4))
  {
    goto LABEL_27;
  }

  v13 = v11;
  v14 = v10();
  v15 = v12 + v14;
  if (__OFADD__(v12, v14))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v15 < v12)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v12 == v15)
  {
    if (v13 <= 0)
    {
      goto LABEL_21;
    }

LABEL_9:
    (*((*v8 & *v7) + 0x210))();
    return;
  }

  if (v12 >= v15)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v16 = v14;
  v17 = 0;
  while (1)
  {
    v19 = v5[14];
    if (v12 < *(v19 + 16))
    {
      break;
    }

LABEL_13:
    ++v12;
    if (!--v16)
    {
      goto LABEL_20;
    }
  }

  if (v12 < 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = *(v19 + 4 * v12 + 32);
  if ((*((*v8 & *v7) + 0x228))() > v20 || (v18 = __OFADD__(v17, 1), ++v17, !v18))
  {
    v18 = __OFSUB__(v13--, 1);
    if (v18)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_20:
  if (v13 >= 1)
  {
    goto LABEL_9;
  }

LABEL_21:
  (*((*v8 & *v7) + 0x210))();
}

void sub_2722C9B98(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  v4 = *(*(v2 + 112) + 16);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if (v5)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = a1 - v6;
  if (__OFSUB__(a1, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v5 = __OFSUB__(a2, v6);
  v10 = a2 - v6;
  if (v5)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v11 = v8 & ~(v8 >> 63);
  if (v4 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(*(v2 + 112) + 16);
  }

  if (v12 < v11)
  {
    goto LABEL_26;
  }

  v13 = MEMORY[0x277D85000];
  if (v11 != v12)
  {
    if (v11 >= v12)
    {
LABEL_31:
      __break(1u);
      return;
    }

    v15 = 0;
    v16 = *((*MEMORY[0x277D85000] & **(v2 + 24)) + 0x1E0);
    while (1)
    {
      v17 = *(v2 + 112);
      if (v11 >= *(v17 + 16))
      {
        break;
      }

      v18 = 1.0 - *(v17 + 4 * v11 + 32);
      if (v16() <= v18)
      {
        v5 = __OFADD__(v15++, 1);
        if (v5)
        {
          __break(1u);
          break;
        }
      }

      if (v12 == ++v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_9:
  if (__OFSUB__(a2, a1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v14 = ((*((*v13 & **(v2 + 24)) + 0x1C8))() * (a2 - a1)) + 0.5;
  if ((LODWORD(v14) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v14 <= -9.2234e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v14 >= 9.2234e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }
}

uint64_t sub_2722C9D70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *&a2;
  v5 = *&a1;
  v6 = a2 | a1;
  v7 = *(v2 + 24);
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v7) + 0x120))();
  result = (*((*v8 & *v7) + 0x138))();
  v11 = *(v3 + 64);
  if ((v6 & 0x100000000) != 0)
  {
    if (result)
    {
      if (v9 == 0x8000000000000000 && result == -1)
      {
        goto LABEL_40;
      }

      v13 = v11 & ~(v11 >> 63);
      if (!__OFSUB__(v13, v9 / result))
      {
        return (v13 - v9 / result) & ~((v13 - v9 / result) >> 63);
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!result)
  {
    goto LABEL_28;
  }

  if (v9 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_41;
  }

  v15 = v11 - v9 / result / 2;
  if (__OFSUB__(v11, v9 / result / 2))
  {
    goto LABEL_30;
  }

  if ((~LODWORD(v5) & 0x7F800000) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = __OFADD__(v15, v5);
  v17 = v15 + v5;
  if (v16)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v18 = roundf(v4 * (v9 / result));
  if ((LODWORD(v18) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v18 <= -9.2234e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v18 >= 9.2234e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = v18;
  v16 = __OFSUB__(v17, v18 / 2);
  v20 = v17 - v18 / 2;
  if (v16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  result = v20 & ~(v20 >> 63);
  if (__OFADD__(result, v19))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  if (result + v19 >= v11 && __OFSUB__(v11, 1))
  {
    goto LABEL_42;
  }

  return result;
}

uint64_t VAResultGenerator.deinit()
{

  return v0;
}

uint64_t VAResultGenerator.__deallocating_deinit()
{
  VAResultGenerator.deinit();

  return swift_deallocClassInstance();
}

char *sub_2722CA038(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280882958, &qword_272382CC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2722CA180(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_27220038C(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_2722CA678(v15, v5 & 1);
    v10 = sub_27220038C(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_2723786BC();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_2722CA510();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_27237820C();
    MEMORY[0x2743C4AD0](0xD00000000000001BLL, 0x800000027238E620);
    sub_27237836C();
    MEMORY[0x2743C4AD0](39, 0xE100000000000000);
    sub_27237837C();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v25 = *v5;
      v26 = *a3;

      v27 = sub_27220038C(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_2722CA678(v31, 1);
        v27 = sub_27220038C(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_2722CA510()
{
  v1 = v0;
  sub_2721F065C(&qword_280882940, qword_272382B70);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_2722CA678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2721F065C(&qword_280882940, qword_272382B70);
  v34 = v4;
  result = sub_2723783DC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_2722CA918(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2722CA938(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2722CA938(void *result, int64_t a2, char a3, void *a4)
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
    sub_2721F065C(&qword_280882948, &qword_272382CB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_2721F065C(&qword_280882950, &qword_272382CC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2722CAA80(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_2721F065C(&qword_280881870, &qword_272383BC0);
  v3 = sub_2723783EC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_272200404(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_272200404(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}