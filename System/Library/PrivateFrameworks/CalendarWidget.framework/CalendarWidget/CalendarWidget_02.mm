uint64_t sub_1E4799434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1E4877FBC();
  v6 = *(v2 + *(a1 + 36) + 16);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C058, &qword_1E487C600);
  return sub_1E4797034(v2, a2 + *(v7 + 44));
}

uint64_t sub_1E47994A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RectangularNextEventContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E47902EC(v4, a1);
}

uint64_t sub_1E4799530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4799598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4799600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E47996A0()
{
  result = qword_1EE2B1258;
  if (!qword_1EE2B1258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BF50, &qword_1E487C1C0);
    sub_1E479978C(qword_1EE2B1CA8, type metadata accessor for RectangularNextEventContentView.SingleEventView, &unk_1E487C3A8);
    sub_1E479978C(qword_1EE2B1D50, type metadata accessor for RectangularNextEventContentView.ConflictingEventsView, &unk_1E487C358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1258);
  }

  return result;
}

uint64_t sub_1E479978C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E4799824(uint64_t a1)
{
  sub_1E47998AC(319);
  if (v1 <= 0x3F)
  {
    sub_1E4799944(319);
    if (v2 <= 0x3F)
    {
      sub_1E47999E8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1E47998AC(uint64_t a1)
{
  if (!qword_1EE2B46A0)
  {
    sub_1E487719C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BF68, &qword_1E487C298);
    type metadata accessor for Event(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2B46A0);
    }
  }
}

void sub_1E4799944(uint64_t a1)
{
  if (!qword_1EE2B4698)
  {
    sub_1E487719C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BF68, &qword_1E487C298);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BF70, &unk_1E487C2A0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2B4698);
    }
  }
}

uint64_t sub_1E47999E8()
{
  result = qword_1EE2B0DA8;
  if (!qword_1EE2B0DA8)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EE2B0DA8);
  }

  return result;
}

void sub_1E4799A40(uint64_t a1)
{
  sub_1E4799C20(319, &qword_1EE2B1670, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC8]);
  if (v1 <= 0x3F)
  {
    sub_1E4799BBC(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
    if (v2 <= 0x3F)
    {
      sub_1E4799BBC(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1E487719C();
        if (v4 <= 0x3F)
        {
          sub_1E4799C20(319, &qword_1EE2B0E20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E4799BBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E4799C20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1E4799C98(uint64_t a1)
{
  sub_1E4799C20(319, &qword_1EE2B1670, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC8]);
  if (v1 <= 0x3F)
  {
    sub_1E4799BBC(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Event(319);
      if (v3 <= 0x3F)
      {
        sub_1E487719C();
        if (v4 <= 0x3F)
        {
          sub_1E4799C20(319, &qword_1EE2B0E20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E4799DFC(uint64_t a1)
{
  sub_1E4799C20(319, &qword_1EE2B1670, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC8]);
  if (v1 <= 0x3F)
  {
    sub_1E4877CCC();
    if (v2 <= 0x3F)
    {
      sub_1E4799F04();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E4799F04()
{
  result = qword_1EE2B0D18;
  if (!qword_1EE2B0D18)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE2B0D18);
  }

  return result;
}

unint64_t sub_1E4799FD0()
{
  result = qword_1EE2B1388;
  if (!qword_1EE2B1388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BF88, &qword_1E487C408);
    v3 = sub_1E479A05C();
    sub_1E477A28C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1388);
  }

  return result;
}

unint64_t sub_1E479A05C()
{
  result = qword_1EE2B14C8;
  if (!qword_1EE2B14C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BFA0, &qword_1E487C420);
    sub_1E4773680(&qword_1EE2B1010, &qword_1ECF7BF98, &qword_1E487C418, MEMORY[0x1E6981800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14C8);
  }

  return result;
}

unint64_t sub_1E479A114()
{
  result = qword_1EE2B11F0;
  if (!qword_1EE2B11F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BFA8, &qword_1E487C428);
    sub_1E4799FD0();
    sub_1E479A05C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11F0);
  }

  return result;
}

uint64_t sub_1E479A1A0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1E478B8E0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E479A1F0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1E477A3C8(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1E479A240()
{
  result = qword_1EE2B1400;
  if (!qword_1EE2B1400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C000, &unk_1E48825D0);
    sub_1E477A490();
    sub_1E4773680(&qword_1EE2B4710, &qword_1ECF7BB70, &unk_1E487B230, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1400);
  }

  return result;
}

unint64_t sub_1E479A2F8()
{
  result = qword_1EE2B1398;
  if (!qword_1EE2B1398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C020, &qword_1E487C590);
    sub_1E479A3B0();
    sub_1E4773680(&qword_1EE2B4710, &qword_1ECF7BB70, &unk_1E487B230, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1398);
  }

  return result;
}

unint64_t sub_1E479A3B0()
{
  result = qword_1EE2B14D8;
  if (!qword_1EE2B14D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C028, &qword_1E487C598);
    sub_1E4773680(&qword_1EE2B5A50, &qword_1ECF7BB68, &qword_1E487C5A0, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14D8);
  }

  return result;
}

unint64_t sub_1E479A468()
{
  result = qword_1EE2B1128;
  if (!qword_1EE2B1128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C090, &qword_1E487C638);
    sub_1E479A520();
    sub_1E4773680(&qword_1EE2B0E88, &qword_1ECF7C068, &qword_1E487C610, MEMORY[0x1E6981F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1128);
  }

  return result;
}

unint64_t sub_1E479A520()
{
  result = qword_1EE2B1170;
  if (!qword_1EE2B1170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C080, &qword_1E487C628);
    sub_1E4773680(&qword_1EE2B0E78, &qword_1ECF7C088, &qword_1E487C630, MEMORY[0x1E6981F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1170);
  }

  return result;
}

unint64_t sub_1E479A5D0()
{
  result = qword_1EE2B1110;
  if (!qword_1EE2B1110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C098, &qword_1E487C640);
    sub_1E479A468();
    sub_1E4773680(&qword_1EE2B0E78, &qword_1ECF7C088, &qword_1E487C630, MEMORY[0x1E6981F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1110);
  }

  return result;
}

unint64_t sub_1E479A688()
{
  result = qword_1EE2B14B8;
  if (!qword_1EE2B14B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C0C8, &qword_1E487C670);
    v3 = sub_1E4773680(&qword_1EE2B0FA8, &qword_1ECF7C0E8, &qword_1E487C690, MEMORY[0x1E6981800]);
    sub_1E477A28C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14B8);
  }

  return result;
}

unint64_t sub_1E479A740()
{
  result = qword_1EE2B1178;
  if (!qword_1EE2B1178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C0B8, &qword_1E487C660);
    sub_1E4773680(&qword_1EE2B0E80, &qword_1ECF7C0A8, &qword_1E487C650, MEMORY[0x1E6981F50]);
    sub_1E479A5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1178);
  }

  return result;
}

unint64_t sub_1E479A7F8()
{
  result = qword_1EE2B14C0;
  if (!qword_1EE2B14C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C130, &qword_1E487C6D8);
    v3 = sub_1E4773680(&qword_1EE2B1018, &qword_1ECF7C150, &qword_1E487C6F8, MEMORY[0x1E6981800]);
    sub_1E477A28C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14C0);
  }

  return result;
}

uint64_t sub_1E479A8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for RectangularNextEventContentView.RedactionProvider(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  return sub_1E4791B44(a1, v3 + v9, *(v3 + v10), *(v3 + (v10 & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + (v10 & 0xFFFFFFFFFFFFFFF8) + 16), *(v3 + (((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)), *(v3 + (((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8), a3, *(v3 + (((((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v6, v7);
}

uint64_t sub_1E479A9C8(uint64_t a1)
{
  v2 = sub_1E487722C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v52[-v7];
  v9 = type metadata accessor for Event(0);
  v59 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52[-v12];
  v66 = type metadata accessor for DayEvents(0);
  MEMORY[0x1EEE9AC00](v66);
  v16 = &v52[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(a1 + 16);
  v65 = v17;
  if (!v17)
  {
    v49 = 0;
    LOBYTE(v21) = 0;
    return v17 | v49 | v21 & 1;
  }

  v55 = v13;
  v71 = v9;
  v56 = v8;
  v18 = 0;
  v53 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v63 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v22 = 0;
  v62 = (v3 + 8);
  v61 = *(v14 + 72);
  v64 = &v52[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = v2;
  v57 = v5;
  do
  {
    v69 = v22;
    sub_1E479B13C(v63 + v61 * v22, v16, type metadata accessor for DayEvents);
    v23 = *(v66 + 20);
    v68 = *(*&v16[*(v66 + 24)] + 16) != 0;
    v24 = *&v16[v23];
    v25 = *(v24 + 16);
    v70 = v21;
    if (v25)
    {
      v26 = *(v59 + 80);
      v67 = v24;
      v27 = v24 + ((v26 + 32) & ~v26);
      v28 = *(v59 + 72);
      v60 = v27;
      v29 = v56;
      v30 = v71;
      v31 = v55;
      do
      {
        sub_1E479B13C(v27, v31, type metadata accessor for Event);
        v20 |= *(v31 + v30[7]) != 0.0;
        sub_1E479B1A4(v31 + v30[15], v29);
        v32 = type metadata accessor for Location(0);
        v19 |= (*(*(v32 - 8) + 48))(v29, 1, v32) != 1;
        sub_1E47738B8(v29, &qword_1ECF7C048, &qword_1E487C5F0);
        v33 = v28;
        v34 = *(v31 + v30[14]);
        sub_1E479B2E0(v31, type metadata accessor for Event);
        v35 = v34 & 0xFE;
        v28 = v33;
        v18 |= v35 == 6;
        v27 += v33;
        --v25;
      }

      while (v25);
      v36 = *(v67 + 16);
      if (v36)
      {
        *&v74 = MEMORY[0x1E69E7CC0];
        sub_1E48581AC(0, v36, 0);
        v37 = v74;
        v38 = v54;
        v39 = v60;
        do
        {
          sub_1E479B13C(v39, v38, type metadata accessor for Event);
          v40 = v71[5];
          v41 = sub_1E487732C();
          *(&v77 + 1) = v41;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v76);
          (*(*(v41 - 8) + 16))(boxed_opaque_existential_0, v38 + v40, v41);
          sub_1E479B2E0(v38, type metadata accessor for Event);
          *&v74 = v37;
          v44 = *(v37 + 16);
          v43 = *(v37 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_1E48581AC((v43 > 1), v44 + 1, 1);
            v37 = v74;
          }

          *(v37 + 16) = v44 + 1;
          sub_1E479B278(&v76, (v37 + 32 * v44 + 32));
          v39 += v33;
          --v36;
        }

        while (v36);
      }

      v2 = v58;
      v5 = v57;
    }

    v45 = objc_allocWithZone(MEMORY[0x1E696AB50]);
    v46 = sub_1E4878C9C();

    v47 = [v45 initWithArray_];

    sub_1E4878DFC();
    sub_1E479B288();
    while (1)
    {
      sub_1E4878E6C();
      if (!v75)
      {

        (*v62)(v5, v2);
        v76 = 0u;
        v77 = 0u;
        goto LABEL_4;
      }

      sub_1E479B278(&v74, v72);
      __swift_project_boxed_opaque_existential_0(v72, v73);
      v48 = [v47 countForObject_];
      swift_unknownObjectRelease();
      if (v48 > 1)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v72);
    }

    (*v62)(v5, v2);
    sub_1E479B278(v72, &v76);
    v53 = 1;
LABEL_4:
    v22 = v69 + 1;
    v21 = v68 | v70;
    sub_1E47738B8(&v76, &qword_1ECF7C1B8, &unk_1E487C760);
    v16 = v64;
    sub_1E479B2E0(v64, type metadata accessor for DayEvents);
  }

  while (v22 != v65);
  v49 = 0x1000000;
  if (v18)
  {
    v49 = 0x101000000;
  }

  v50 = 0x100000000;
  if ((v18 & 1) == 0)
  {
    v50 = 0;
  }

  if ((v53 & 1) == 0)
  {
    v49 = v50;
  }

  if ((v19 & 1) == 0)
  {
    if (v20)
    {
      goto LABEL_29;
    }

LABEL_32:
    v17 = 0;
    return v17 | v49 | v21 & 1;
  }

  v49 |= 0x10000uLL;
  if ((v20 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  v17 = 256;
  return v17 | v49 | v21 & 1;
}

uint64_t sub_1E479B13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E479B1A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_1E479B278(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1E479B288()
{
  result = qword_1EE2B5A10;
  if (!qword_1EE2B5A10)
  {
    sub_1E487722C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B5A10);
  }

  return result;
}

uint64_t sub_1E479B2E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1E479B464(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1E4877ADC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1E4877ACC();
}

uint64_t sub_1E479B52C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_1E4877F1C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1E4773850(v8, &v21 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    v19 = sub_1E4878DDC();
    v20 = sub_1E48780FC();
    sub_1E4877AAC(v19, &dword_1E475C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t CalendarMonthWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1C0, &qword_1E487C770);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1C8, &qword_1E487C778);
  v31[0] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v31 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1D0, &qword_1E487C780);
  v32 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v9 = v31 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1D8, &unk_1E487C788);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v33 = v31 - v10;
  strcpy(v40, "month widget");
  BYTE5(v40[1]) = 0;
  HIWORD(v40[1]) = -5120;
  LOBYTE(v41) = 0;
  type metadata accessor for CalendarMonthWidget.WidgetView(0);
  v11 = sub_1E479D2AC(qword_1EE2B4338, type metadata accessor for CalendarMonthWidget.WidgetView, &unk_1E487C814);
  sub_1E479BF44(v11, v12, v13);
  sub_1E487899C();
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  v31[1] = qword_1EE2BAF40;
  v40[0] = sub_1E48771EC();
  v40[1] = v14;
  v15 = sub_1E4773680(&qword_1EE2B0E40, &qword_1ECF7C1C0, &qword_1E487C770, MEMORY[0x1E6985A00]);
  v18 = sub_1E477A374(v15, v16, v17);
  v19 = MEMORY[0x1E69E6158];
  sub_1E487800C();

  (*(v2 + 8))(v4, v1);
  v40[0] = v1;
  v40[1] = v19;
  v41 = v15;
  v42 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E487801C();
  (*(v31[0] + 8))(v7, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA20, &qword_1E487BCF0);
  v21 = sub_1E487894C();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E487A7E0;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x1E69857F0], v21);
  v40[0] = v5;
  v40[1] = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = v33;
  v27 = v35;
  sub_1E4877FFC();

  (*(v32 + 8))(v9, v27);
  v40[0] = sub_1E48771EC();
  v40[1] = v28;
  v38 = v27;
  v39 = v25;
  swift_getOpaqueTypeConformance2();
  v29 = v36;
  sub_1E4877FEC();

  return (*(v34 + 8))(v26, v29);
}

uint64_t sub_1E479BD98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E479D35C(a1, a2);
  KeyPath = swift_getKeyPath();
  v5 = type metadata accessor for CalendarMonthWidget.WidgetView(0);
  *(a2 + v5[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
  swift_storeEnumTagMultiPayload();
  v6 = swift_getKeyPath();
  *(a2 + v5[7]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v7 = swift_getKeyPath();

  v9 = a2 + v5[6];
  *v9 = v6;
  *(v9 + 8) = 0;
  v10 = a2 + v5[8];
  *v10 = v7;
  *(v10 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for CalendarMonthWidget.WidgetView(uint64_t a1)
{
  result = qword_1EE2B4328;
  if (!qword_1EE2B4328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E479BF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B4938;
  if (!qword_1EE2B4938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B4938);
  }

  return result;
}

uint64_t sub_1E479BF98()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CalendarMonthWidget.WidgetView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC(v7, &dword_1E475C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1E479C0F0@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for CalendarMonthWidget.WidgetView(0);
  sub_1E4773850(v1 + *(v10 + 28), v9, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487893C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E479C2F8()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for CalendarMonthWidget.WidgetView(0) + 32));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E479C448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v68 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v66 = v46 - v3;
  v4 = sub_1E4877A1C();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1E48782AC();
  v6 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E487893C();
  v9 = *(v51 - 8);
  v10 = MEMORY[0x1EEE9AC00](v51);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v46 - v13;
  v15 = sub_1E48779BC();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v53 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E487732C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1E48779CC();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v54 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C200, &qword_1E487C8B8);
  v62 = *(v22 - 8);
  v63 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v60 = v46 - v23;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1F0, &qword_1E487C878);
  MEMORY[0x1EEE9AC00](v58);
  v56 = v46 - v24;
  sub_1E4878D2C();
  v55 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v50 = *(type metadata accessor for CalendarDateTimelineEntry(0) + 20);
  v25 = *(v18 + 16);
  v49 = v20;
  v25(v20, v67 + v50, v17);
  v26 = v14;
  sub_1E479C0F0(v14);
  v48 = sub_1E4877A5C();
  sub_1E487892C();
  v46[1] = sub_1E48788FC();
  v47 = *(v9 + 8);
  v27 = v51;
  v47(v12, v51);
  sub_1E48782DC();
  v28 = v52;
  (*(v6 + 104))(v8, *MEMORY[0x1E6980EA0], v52);
  sub_1E48782CC();

  (*(v6 + 8))(v8, v28);
  sub_1E48781FC();

  sub_1E48782DC();
  sub_1E487827C();
  sub_1E487829C();

  (*(v64 + 104))(v57, *MEMORY[0x1E6993280], v65);
  sub_1E48779AC();
  v47(v26, v27);
  v29 = v54;
  sub_1E487799C();
  v30 = v66;
  sub_1E4877A6C();
  v31 = sub_1E487725C();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  sub_1E479D2AC(&qword_1EE2B4620, MEMORY[0x1E6993268], MEMORY[0x1E6993260]);
  v33 = v60;
  v32 = v61;
  sub_1E48784BC();
  sub_1E479D2F4(v30);
  (*(v59 + 8))(v29, v32);
  v34 = sub_1E487813C();
  if (sub_1E479BF98())
  {
    sub_1E479C2F8();
  }

  sub_1E4877B0C();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v56;
  (*(v62 + 32))(v56, v33, v63);
  v44 = v43 + *(v58 + 36);
  *v44 = v34;
  *(v44 + 8) = v36;
  *(v44 + 16) = v38;
  *(v44 + 24) = v40;
  *(v44 + 32) = v42;
  *(v44 + 40) = 0;
  sub_1E4761F34(v43, v68);
}

uint64_t sub_1E479CC70@<X0>(_WORD *a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = 256;
  return result;
}

uint64_t sub_1E479CD00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v13 = a1;
  v14 = sub_1E48780DC();
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1E0, &qword_1E487C868);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1E479C448(v2, &v13 - v7);
  sub_1E48780CC();
  sub_1E487889C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE98, &qword_1E487C870);
  sub_1E479D13C();
  sub_1E4773680(&qword_1EE2B16D0, &qword_1ECF7BE98, &qword_1E487C870, MEMORY[0x1E697DB70]);
  v9 = v13;
  sub_1E487859C();
  (*(v3 + 8))(v5, v14);
  sub_1E4761EC4(v8);
  KeyPath = swift_getKeyPath();
  v11 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1F8, &qword_1E487C8B0) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA30, &qword_1E487AD80);
  result = sub_1E4877A7C();
  *v11 = KeyPath;
  return result;
}

void sub_1E479CFAC(uint64_t a1)
{
  type metadata accessor for CalendarDateTimelineEntry(319);
  if (v1 <= 0x3F)
  {
    sub_1E479D0CC(319, &qword_1EE2B1678, MEMORY[0x1E697F6A8]);
    if (v2 <= 0x3F)
    {
      sub_1E478305C();
      if (v3 <= 0x3F)
      {
        sub_1E479D0CC(319, &qword_1EE2B1698, MEMORY[0x1E6985780]);
        if (v4 <= 0x3F)
        {
          sub_1E479D0CC(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E479D0CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E479D13C()
{
  result = qword_1ECF7C1E8;
  if (!qword_1ECF7C1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C1E0, &qword_1E487C868);
    sub_1E479D1C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C1E8);
  }

  return result;
}

unint64_t sub_1E479D1C0()
{
  result = qword_1EE2B1548;
  if (!qword_1EE2B1548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C1F0, &qword_1E487C878);
    sub_1E48779CC();
    sub_1E479D2AC(&qword_1EE2B4620, MEMORY[0x1E6993268], MEMORY[0x1E6993260]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1548);
  }

  return result;
}

uint64_t sub_1E479D2AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E479D2F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E479D35C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarDateTimelineEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E479D3C0()
{
  result = qword_1ECF7C208;
  if (!qword_1ECF7C208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C1F8, &qword_1E487C8B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C1E0, &qword_1E487C868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE98, &qword_1E487C870);
    sub_1E479D13C();
    sub_1E4773680(&qword_1EE2B16D0, &qword_1ECF7BE98, &qword_1E487C870, MEMORY[0x1E697DB70]);
    swift_getOpaqueTypeConformance2();
    sub_1E4773680(&qword_1EE2B5A58, &qword_1ECF7BA30, &qword_1E487AD80, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C208);
  }

  return result;
}

uint64_t EventListCellViewModel.init(eventStore:eventIdentifier:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46 - v8;
  v10 = type metadata accessor for Event(0);
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C210, &unk_1E4882DB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_1E48779FC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for EventListCellViewModel(0);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E4878B9C();
  v50 = a1;
  v22 = [a1 eventWithIdentifier_];

  if (!v22)
  {
    if (qword_1ECF7B648 != -1)
    {
      swift_once();
    }

    v28 = sub_1E4877ADC();
    __swift_project_value_buffer(v28, qword_1ECF7EA48);

    v29 = sub_1E4877ABC();
    v30 = sub_1E4878DCC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v53[0] = v32;
      *v31 = 136315138;
      v33 = sub_1E47A0DEC(a2, a3, v53);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_1E475C000, v29, v30, "Unable to fetch EKEvent from identifier: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1E6919FE0](v32, -1, -1);
      MEMORY[0x1E6919FE0](v31, -1, -1);
    }

    else
    {
    }

    goto LABEL_22;
  }

  v23 = v22;
  sub_1E4877A0C();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1E47738B8(v14, &qword_1ECF7C210, &unk_1E4882DB0);
    if (qword_1ECF7B648 != -1)
    {
      swift_once();
    }

    v24 = sub_1E4877ADC();
    __swift_project_value_buffer(v24, qword_1ECF7EA48);
    v25 = sub_1E4877ABC();
    v26 = sub_1E4878DCC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1E475C000, v25, v26, "Unable to convert fetched EKEvent to wrapper", v27, 2u);
      MEMORY[0x1E6919FE0](v27, -1, -1);
    }

LABEL_22:
    v44 = 1;
    v43 = v52;
    return (*(v49 + 56))(v43, v44, 1, v51);
  }

  (*(v16 + 32))(v18, v14, v15);
  v53[3] = v15;
  v53[4] = sub_1E47A13FC(&qword_1EE2B4618, MEMORY[0x1E6993278], MEMORY[0x1E6993270]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v53);
  (*(v16 + 16))(boxed_opaque_existential_0, v18, v15);
  sub_1E47CCD88(v53, v9);
  if ((*(v47 + 48))(v9, 1, v48) == 1)
  {
    sub_1E47738B8(v9, &qword_1ECF7B950, &unk_1E487AE90);
    if (qword_1ECF7B648 != -1)
    {
      swift_once();
    }

    v35 = sub_1E4877ADC();
    __swift_project_value_buffer(v35, qword_1ECF7EA48);
    v36 = sub_1E4877ABC();
    v37 = sub_1E4878DCC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1E475C000, v36, v37, "Unable to convert fetched EKEvent to internal representation", v38, 2u);
      MEMORY[0x1E6919FE0](v38, -1, -1);
    }

    else
    {
    }

    (*(v16 + 8))(v18, v15);
    goto LABEL_22;
  }

  (*(v16 + 8))(v18, v15);

  v39 = v9;
  v40 = v46;
  sub_1E47A1394(v39, v46, type metadata accessor for Event);
  sub_1E47A1394(v40, v20, type metadata accessor for Event);
  v41 = v20;
  v42 = v52;
  sub_1E47A1394(v41, v52, type metadata accessor for EventListCellViewModel);
  v43 = v42;
  v44 = 0;
  return (*(v49 + 56))(v43, v44, 1, v51);
}

uint64_t EventListCellViewModel.init(eventStore:title:startDate:endDate:calendarIdentifier:allDay:birthday:location:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v93) = a8;
  v106 = a5;
  v107 = a4;
  v95 = a2;
  v103 = a9;
  v98 = a3;
  v99 = a12;
  v15 = sub_1E487720C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v88 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v89 = &v86 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v97 = &v86 - v20;
  v21 = sub_1E487732C();
  v104 = *(v21 - 8);
  v105 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v86 - v25;
  v27 = sub_1E487706C();
  v91 = *(v27 - 8);
  v92 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v96 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Event(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_1E4877A3C();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for EventListCellViewModel(0);
  v100 = *(v36 - 8);
  v101 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v94 = &v86 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = a6;
  v38 = a7;
  v39 = sub_1E4878B9C();
  v102 = a1;
  v40 = [a1 calendarWithIdentifier_];

  if (!v40)
  {

    if (qword_1ECF7B648 != -1)
    {
      swift_once();
    }

    v50 = sub_1E4877ADC();
    __swift_project_value_buffer(v50, qword_1ECF7EA48);
    v51 = v38;

    v52 = sub_1E4877ABC();
    v53 = sub_1E4878DCC();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v108[0] = v55;
      *v54 = 136315138;
      v56 = sub_1E47A0DEC(v90, v51, v108);

      *(v54 + 4) = v56;
      _os_log_impl(&dword_1E475C000, v52, v53, "Unable to fetch EKCalendar from identifier: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1E6919FE0](v55, -1, -1);
      MEMORY[0x1E6919FE0](v54, -1, -1);
    }

    else
    {
    }

    goto LABEL_24;
  }

  v41 = v40;
  sub_1E4877A4C();
  sub_1E47A13FC(&qword_1ECF7C218, MEMORY[0x1E6993290], MEMORY[0x1E6993288]);
  v42 = sub_1E48775EC();
  (*(v33 + 8))(v35, v32);
  if (!v42)
  {

    v57 = v38;
    if (qword_1ECF7B648 != -1)
    {
      swift_once();
    }

    v58 = sub_1E4877ADC();
    __swift_project_value_buffer(v58, qword_1ECF7EA48);

    v52 = sub_1E4877ABC();
    v59 = sub_1E4878DCC();

    if (os_log_type_enabled(v52, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v108[0] = v61;
      *v60 = 136315138;
      v62 = sub_1E47A0DEC(v90, v57, v108);

      *(v60 + 4) = v62;
      _os_log_impl(&dword_1E475C000, v52, v59, "Could not process event because event's calendar has no color, calendarIdentifier = %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1E6919FE0](v61, -1, -1);
      MEMORY[0x1E6919FE0](v60, -1, -1);
    }

    else
    {
    }

LABEL_24:
    v83 = v105;
    v84 = *(v104 + 8);
    v84(v106, v105);
    v84(v107, v83);
    v82 = 1;
    v81 = v103;
    return (*(v100 + 56))(v81, v82, 1, v101);
  }

  v90 = v42;

  v43 = *(v104 + 16);
  v44 = v41;
  v45 = v105;
  v43(v26, v107, v105);
  v43(v24, v106, v45);
  sub_1E487702C();
  v46 = sub_1E487725C();
  (*(*(v46 - 8) + 56))(v97, 1, 1, v46);
  v47 = v93;
  v87 = v93 | a10;
  v48 = v44;
  [v48 isHolidayCalendar];
  if (v47)
  {
    v93 = sub_1E4878BDC();
    v86 = v49;
  }

  else
  {

    v93 = 0;
    v86 = 0;
  }

  v63 = v98;
  v64 = v90;
  if (a10)
  {
    v65 = 5;
  }

  else
  {
    v65 = 0;
  }

  v66 = v29[15];
  v67 = type metadata accessor for Location(0);
  v68 = *(*(v67 - 8) + 56);
  v98 = v66;
  v68(v31 + v66, 1, 1, v67);
  v69 = v96;
  *v31 = v95;
  v31[1] = v63;
  sub_1E487704C();
  sub_1E487701C();
  (*(v91 + 8))(v69, v92);
  *(v31 + v29[7]) = 0;
  *(v31 + v29[8]) = 0;
  *(v31 + v29[9]) = v64;
  v70 = (v31 + v29[10]);
  *v70 = 0;
  v70[1] = 0;
  sub_1E47A1444(v97, v31 + v29[11]);
  *(v31 + v29[12]) = v87 & 1;
  *(v31 + v29[13]) = 0;
  v71 = (v31 + v29[16]);
  v72 = v86;
  *v71 = v93;
  v71[1] = v72;
  *(v31 + v29[14]) = v65;
  *(v31 + v29[17]) = 0;
  *(v31 + v29[18]) = 0;
  *(v31 + v29[19]) = 1;
  if (v99)
  {
    sub_1E48771FC();
    v73 = v89;
    sub_1E48771AC();

    v74 = v105;
    v75 = *(v104 + 8);
    v75(v106, v105);
    v75(v107, v74);
    v76 = (v73 + *(v67 + 20));
    *v76 = 0;
    v76[1] = 0;
    v68(v73, 0, 1, v67);
    sub_1E47A14B4(v73, v31 + v98);
  }

  else
  {

    v77 = v105;
    v78 = *(v104 + 8);
    v78(v106, v105);
    v78(v107, v77);
  }

  v79 = v94;
  sub_1E47A1394(v31, v94, type metadata accessor for Event);
  v80 = v79;
  v81 = v103;
  sub_1E47A1394(v80, v103, type metadata accessor for EventListCellViewModel);
  v82 = 0;
  return (*(v100 + 56))(v81, v82, 1, v101);
}

uint64_t EventListCellViewModel.init(title:startDate:endDate:calendarIdentifier:allDay:birthday:location:calendarColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LODWORD(v59) = a7;
  LODWORD(v55) = a6;
  v65 = a4;
  v66 = a3;
  v60 = a1;
  v61 = a2;
  v64 = a8;
  v62 = a11;
  v63 = a10;
  v11 = sub_1E487720C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v51 - v16;
  v18 = sub_1E487732C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v51 - v23;
  v54 = sub_1E487706C();
  v25 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Event(0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));

  v56 = v19;
  v31 = *(v19 + 16);
  v31(v24, v66, v18);
  v57 = v18;
  v31(v22, v65, v18);
  sub_1E487702C();
  v32 = sub_1E487725C();
  v33 = *(*(v32 - 8) + 56);
  v58 = v17;
  v33(v17, 1, 1, v32);
  if (v55)
  {
    v34 = v59;
    v55 = sub_1E4878BDC();
    v53 = v35;
    v36 = 1;
  }

  else
  {
    v55 = 0;
    v53 = 0;
    v34 = v59;
    v36 = v59;
  }

  if (v34)
  {
    v37 = 5;
  }

  else
  {
    v37 = 0;
  }

  v38 = v28[15];
  v39 = type metadata accessor for Location(0);
  v59 = *(*(v39 - 8) + 56);
  v59(v30 + v38, 1, 1, v39);
  v40 = v61;
  *v30 = v60;
  v30[1] = v40;
  sub_1E487704C();
  sub_1E487701C();
  (*(v25 + 8))(v27, v54);
  *(v30 + v28[7]) = 0;
  *(v30 + v28[8]) = 0;
  *(v30 + v28[9]) = v62;
  v41 = (v30 + v28[10]);
  *v41 = 0;
  v41[1] = 0;
  sub_1E47A1444(v58, v30 + v28[11]);
  *(v30 + v28[12]) = v36 & 1;
  *(v30 + v28[13]) = 0;
  v42 = (v30 + v28[16]);
  v43 = v53;
  *v42 = v55;
  v42[1] = v43;
  *(v30 + v28[14]) = v37;
  *(v30 + v28[17]) = 0;
  *(v30 + v28[18]) = 0;
  *(v30 + v28[19]) = 1;
  if (v63)
  {
    sub_1E48771FC();
    v44 = v52;
    sub_1E48771AC();
    v45 = v57;
    v46 = *(v56 + 8);
    v46(v65, v57);
    v46(v66, v45);
    v47 = (v44 + *(v39 + 20));
    *v47 = 0;
    v47[1] = 0;
    v59(v44, 0, 1, v39);
    sub_1E47A14B4(v44, v30 + v38);
  }

  else
  {
    v48 = v57;
    v49 = *(v56 + 8);
    v49(v65, v57);
    v49(v66, v48);
  }

  return sub_1E47A1394(v30, v64, type metadata accessor for Event);
}

uint64_t EventListCellViewModel.init(eventModel:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18[-1] - v5;
  v7 = type metadata accessor for Event(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EventListCellViewModel(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E47A1524(a1, v18);
  sub_1E47CCD88(v18, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E47738B8(v6, &qword_1ECF7B950, &unk_1E487AE90);
    v15 = 1;
  }

  else
  {
    sub_1E47A1394(v6, v10, type metadata accessor for Event);
    sub_1E47A1394(v10, v14, type metadata accessor for Event);
    sub_1E47A1394(v14, a2, type metadata accessor for EventListCellViewModel);
    v15 = 0;
  }

  return (*(v12 + 56))(a2, v15, 1, v11);
}

uint64_t EventListCellViewModel.hash(into:)(uint64_t a1)
{
  sub_1E47CDCB4();
  sub_1E4878C0C();
}

uint64_t EventListCellViewModel.hashValue.getter()
{
  sub_1E487914C();
  sub_1E47CDCB4();
  sub_1E4878C0C();

  return sub_1E487917C();
}

uint64_t sub_1E479EFFC()
{
  sub_1E487914C();
  sub_1E47CDCB4();
  sub_1E4878C0C();

  return sub_1E487917C();
}

uint64_t sub_1E479F058(uint64_t a1)
{
  sub_1E47CDCB4();
  sub_1E4878C0C();
}

uint64_t sub_1E479F0A8(uint64_t a1)
{
  sub_1E487914C();
  sub_1E47CDCB4();
  sub_1E4878C0C();

  return sub_1E487917C();
}

uint64_t sub_1E479F110(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E4877ADC();
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  if (qword_1EE2B16E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v3, qword_1EE2BAD00);
  v6 = *(*(v3 - 8) + 16);

  return v6(v4, v5, v3);
}

uint64_t EventListCell.init(viewModel:displayContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a2;
  v86 = a3;
  v78 = sub_1E487706C();
  v80 = *(v78 - 8);
  v4 = MEMORY[0x1EEE9AC00](v78);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v79 = &v72 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v77 = (&v72 - v8);
  v9 = sub_1E487753C();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CellDisplayContext(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E487732C();
  v82 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v72 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v72 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v81 = &v72 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v72 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v72 - v30;
  v32 = type metadata accessor for EventListCell(0);
  v84 = *(v32 - 8);
  v85 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v87 = a1;
  v83 = &v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E47A15C8(a1, v83, type metadata accessor for Event);
  sub_1E47A15C8(v88, v14, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1E47A1630(v87, type metadata accessor for EventListCellViewModel);
    sub_1E47A1630(v14, type metadata accessor for CellDisplayContext);
LABEL_5:
    v45 = v85;
    v46 = v83;
    sub_1E47A1394(v88, v83 + *(v85 + 20), type metadata accessor for CellDisplayContext);
    v47 = v86;
    sub_1E47A15C8(v46, v86, type metadata accessor for EventListCell);
    (*(v84 + 56))(v47, 0, 1, v45);
    return sub_1E47A1630(v46, type metadata accessor for EventListCell);
  }

  v73 = v18;
  v34 = v82;
  (*(v82 + 32))(v31, v14, v15);
  sub_1E48774FC();
  type metadata accessor for Event(0);
  sub_1E487745C();
  (*(v75 + 8))(v11, v76);
  type metadata accessor for Utils();
  v35 = v77;
  sub_1E4870D68(v77);
  v36 = v15;
  v37 = v81;
  sub_1E487701C();
  v38 = v80 + 8;
  v39 = v35;
  v40 = v78;
  v77 = *(v80 + 1);
  (v77)(v39, v78);
  v41 = *(v34 + 16);
  v76 = v29;
  v41(v24, v29, v36);
  v42 = v41;
  v41(v21, v37, v36);
  v43 = v79;
  sub_1E487702C();
  if (sub_1E487705C())
  {
    sub_1E47A1630(v87, type metadata accessor for EventListCellViewModel);
    (v77)(v43, v40);
    v44 = *(v82 + 8);
    v44(v81, v36);
    v44(v76, v36);
    v44(v31, v36);
    goto LABEL_5;
  }

  v49 = v36;
  if (qword_1ECF7B650 != -1)
  {
    swift_once();
  }

  v50 = sub_1E4877ADC();
  __swift_project_value_buffer(v50, qword_1ECF7EA60);
  v51 = v74;
  (*(v80 + 2))(v74, v43, v40);
  v52 = v73;
  v42(v73, v31, v36);
  v53 = v40;
  v54 = sub_1E4877ABC();
  v55 = sub_1E4878DEC();
  v56 = v38;
  if (os_log_type_enabled(v54, v55))
  {
    v57 = swift_slowAlloc();
    v80 = v31;
    v58 = v52;
    v59 = v57;
    v75 = swift_slowAlloc();
    v89 = v75;
    *v59 = 136315394;
    sub_1E47A13FC(&qword_1ECF7C220, MEMORY[0x1E6968130], MEMORY[0x1E6968158]);
    v60 = sub_1E48790CC();
    v62 = v61;
    (v77)(v51, v53);
    v63 = sub_1E47A0DEC(v60, v62, &v89);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    sub_1E47A13FC(&qword_1EE2B59F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v64 = sub_1E48790CC();
    v66 = v65;
    v74 = v56;
    v67 = *(v82 + 8);
    v67(v58, v49);
    v68 = sub_1E47A0DEC(v64, v66, &v89);

    *(v59 + 14) = v68;
    _os_log_impl(&dword_1E475C000, v54, v55, "Event spanning %s does not belong under the header date %s, returning nil", v59, 0x16u);
    v69 = v75;
    swift_arrayDestroy();
    MEMORY[0x1E6919FE0](v69, -1, -1);
    MEMORY[0x1E6919FE0](v59, -1, -1);

    sub_1E47A1630(v88, type metadata accessor for CellDisplayContext);
    sub_1E47A1630(v87, type metadata accessor for EventListCellViewModel);
    (v77)(v79, v53);
    v67(v81, v49);
    v67(v76, v49);
    v67(v80, v49);
  }

  else
  {

    sub_1E47A1630(v88, type metadata accessor for CellDisplayContext);
    sub_1E47A1630(v87, type metadata accessor for EventListCellViewModel);
    v70 = *(v82 + 8);
    v70(v52, v49);
    v71 = v77;
    (v77)(v51, v53);
    v71(v79, v53);
    v70(v81, v49);
    v70(v76, v49);
    v70(v31, v49);
  }

  sub_1E47A1630(v83, type metadata accessor for Event);
  return (*(v84 + 56))(v86, 1, 1, v85);
}

uint64_t EventListCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v38 = type metadata accessor for WideModernEventDetailsView(0);
  MEMORY[0x1EEE9AC00](v38);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for WideAllDayView(0);
  MEMORY[0x1EEE9AC00](v37);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C228, &qword_1E487C990);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C230, &qword_1E487C998);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C238, &qword_1E487C9A0);
  MEMORY[0x1EEE9AC00](v40);
  v12 = &v34 - v11;
  v13 = type metadata accessor for WideReminderView(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Event(0);
  if ((*(v1 + *(v16 + 56)) & 0xFE) == 6)
  {
    sub_1E47A15C8(v1, v15, type metadata accessor for Event);
    v17 = type metadata accessor for EventListCell(0);
    sub_1E47A15C8(v1 + *(v17 + 20), &v15[v13[5]], type metadata accessor for CellDisplayContext);
    *&v15[v13[6]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *&v15[v13[7]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v15[v13[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *&v15[v13[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v19 = &v15[v13[9]];
    *v19 = KeyPath;
    v19[8] = 0;
    sub_1E47A15C8(v15, v10, type metadata accessor for WideReminderView);
    swift_storeEnumTagMultiPayload();
    sub_1E47A13FC(qword_1EE2B3680, type metadata accessor for WideReminderView, &unk_1E4882334);
    sub_1E47A13FC(&qword_1ECF7C248, type metadata accessor for WideAllDayView, &unk_1E487CEE8);
    sub_1E487803C();
    sub_1E47A177C(v12, v7);
    swift_storeEnumTagMultiPayload();
    sub_1E47A1690();
    sub_1E47A13FC(&qword_1ECF7C250, type metadata accessor for WideModernEventDetailsView, &unk_1E487E9EC);
    sub_1E487803C();
    sub_1E47738B8(v12, &qword_1ECF7C238, &qword_1E487C9A0);
    v20 = type metadata accessor for WideReminderView;
    v21 = v15;
  }

  else
  {
    v22 = v16;
    v35 = v10;
    v36 = v7;
    v23 = v37;
    v24 = v38;
    if (*(v1 + *(v16 + 48)) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
      v25 = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1E487A7E0;
      sub_1E47A15C8(v1, v26 + v25, type metadata accessor for Event);
      v27 = type metadata accessor for EventListCell(0);
      sub_1E47A15C8(v1 + *(v27 + 20), v5 + v23[5], type metadata accessor for CellDisplayContext);
      *(v5 + v23[6]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
      swift_storeEnumTagMultiPayload();
      *(v5 + v23[7]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
      swift_storeEnumTagMultiPayload();
      *(v5 + v23[8]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
      swift_storeEnumTagMultiPayload();
      v28 = swift_getKeyPath();
      *v5 = v26;
      v29 = v5 + v23[9];
      *v29 = v28;
      v29[8] = 0;
      sub_1E47A15C8(v5, v35, type metadata accessor for WideAllDayView);
      swift_storeEnumTagMultiPayload();
      sub_1E47A13FC(qword_1EE2B3680, type metadata accessor for WideReminderView, &unk_1E4882334);
      sub_1E47A13FC(&qword_1ECF7C248, type metadata accessor for WideAllDayView, &unk_1E487CEE8);
      sub_1E487803C();
      sub_1E47A177C(v12, v36);
      swift_storeEnumTagMultiPayload();
      sub_1E47A1690();
      sub_1E47A13FC(&qword_1ECF7C250, type metadata accessor for WideModernEventDetailsView, &unk_1E487E9EC);
      sub_1E487803C();
      sub_1E47738B8(v12, &qword_1ECF7C238, &qword_1E487C9A0);
      v20 = type metadata accessor for WideAllDayView;
      v21 = v5;
    }

    else
    {
      sub_1E47A15C8(v1, v3, type metadata accessor for Event);
      v30 = type metadata accessor for EventListCell(0);
      sub_1E47A15C8(v1 + *(v30 + 20), &v3[v24[5]], type metadata accessor for CellDisplayContext);
      *&v3[v24[6]] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
      swift_storeEnumTagMultiPayload();
      *&v3[v24[7]] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
      swift_storeEnumTagMultiPayload();
      *&v3[v24[8]] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
      swift_storeEnumTagMultiPayload();
      v31 = swift_getKeyPath();
      v32 = &v3[v24[9]];
      *v32 = v31;
      v32[8] = 0;
      sub_1E47A15C8(v3, v36, type metadata accessor for WideModernEventDetailsView);
      swift_storeEnumTagMultiPayload();
      sub_1E47A1690();
      sub_1E47A13FC(&qword_1ECF7C250, type metadata accessor for WideModernEventDetailsView, &unk_1E487E9EC);
      sub_1E487803C();
      v20 = type metadata accessor for WideModernEventDetailsView;
      v21 = v3;
    }
  }

  return sub_1E47A1630(v21, v20);
}

uint64_t TCCDisplayContext.hashValue.getter()
{
  v1 = *v0;
  sub_1E487914C();
  MEMORY[0x1E6919800](v1);
  return sub_1E487917C();
}

uint64_t TCCEventPreview.init(ekEvent:displayContext:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - v6;
  v8 = type metadata accessor for Event(0);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C210, &unk_1E4882DB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_1E48779FC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TCCEventPreview(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  v22 = a1;
  sub_1E4877A0C();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    v23 = &qword_1ECF7C210;
    v24 = &unk_1E4882DB0;
    v25 = v12;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v38[3] = v13;
    v38[4] = sub_1E47A13FC(&qword_1EE2B4618, MEMORY[0x1E6993278], MEMORY[0x1E6993270]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
    (*(v14 + 16))(boxed_opaque_existential_0, v16, v13);
    sub_1E47CCD88(v38, v7);

    (*(v14 + 8))(v16, v13);
    if ((*(v35 + 48))(v7, 1, v36) != 1)
    {
      v29 = v7;
      v30 = v34;
      sub_1E47A1394(v29, v34, type metadata accessor for Event);
      sub_1E47A1394(v30, v20, type metadata accessor for Event);
      v20[*(v17 + 20)] = v21;
      v31 = v37;
      sub_1E47A1394(v20, v37, type metadata accessor for TCCEventPreview);
      v28 = v31;
      v27 = 0;
      return (*(v18 + 56))(v28, v27, 1, v17);
    }

    v23 = &qword_1ECF7B950;
    v24 = &unk_1E487AE90;
    v25 = v7;
  }

  sub_1E47738B8(v25, v23, v24);
  v27 = 1;
  v28 = v37;
  return (*(v18 + 56))(v28, v27, 1, v17);
}

uint64_t TCCEventPreview.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for PlatterStackView(0);
  sub_1E47A15C8(v1, a1 + v3[5], type metadata accessor for Event);
  v4 = *(v1 + *(type metadata accessor for TCCEventPreview(0) + 20));
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  result = swift_storeEnumTagMultiPayload();
  *(a1 + v3[6]) = v4;
  *(a1 + v3[7]) = 0x4030000000000000;
  *(a1 + v3[8]) = 0x4020000000000000;
  *(a1 + v3[9]) = 0x3FEEB851EB851EB8;
  *(a1 + v3[10]) = 0x3FEE147AE147AE14;
  return result;
}

uint64_t sub_1E47A0B44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for PlatterStackView(0);
  sub_1E47A15C8(v2, a2 + v5[5], type metadata accessor for Event);
  LOBYTE(a1) = *(v2 + *(a1 + 20));
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v5[6]) = a1;
  *(a2 + v5[7]) = 0x4030000000000000;
  *(a2 + v5[8]) = 0x4020000000000000;
  *(a2 + v5[9]) = 0x3FEEB851EB851EB8;
  *(a2 + v5[10]) = 0x3FEE147AE147AE14;
  return result;
}

uint64_t sub_1E47A0D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_1E47A0DEC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E47A0EB8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1E47A1CF8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1E47A0EB8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1E47A0FC4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1E4878FCC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1E47A0FC4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E47A1010(a1, a2);
  sub_1E47A1140(&unk_1F5E7B220);
  return v3;
}

void *sub_1E47A1010(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E47A122C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E4878FCC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E4878C3C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E47A122C(v10, 0);
        result = sub_1E4878F8C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E47A1140(uint64_t result)
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

  result = sub_1E47A12A0(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_1E47A122C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C2C8, &qword_1E487CCB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E47A12A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C2C8, &qword_1E487CCB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1E47A1394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47A13FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E47A1444(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47A14B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47A1524(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E47A15C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47A1630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E47A1690()
{
  result = qword_1ECF7C240;
  if (!qword_1ECF7C240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C238, &qword_1E487C9A0);
    sub_1E47A13FC(qword_1EE2B3680, type metadata accessor for WideReminderView, &unk_1E4882334);
    sub_1E47A13FC(&qword_1ECF7C248, type metadata accessor for WideAllDayView, &unk_1E487CEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C240);
  }

  return result;
}

uint64_t sub_1E47A177C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C238, &qword_1E487C9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E47A1874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7C260;
  if (!qword_1ECF7C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C260);
  }

  return result;
}

void sub_1E47A18E4(uint64_t a1)
{
  sub_1E47A196C(319);
  if (v1 <= 0x3F)
  {
    sub_1E47A19D8();
    if (v2 <= 0x3F)
    {
      sub_1E47A1A08();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1E47A196C(uint64_t a1)
{
  if (!qword_1ECF7C268)
  {
    sub_1E487732C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECF7C268);
    }
  }
}

uint64_t sub_1E47A19D8()
{
  result = qword_1ECF7C270;
  if (!qword_1ECF7C270)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1ECF7C270);
  }

  return result;
}

void sub_1E47A1A08()
{
  if (!qword_1ECF7C278)
  {
    v0 = sub_1E487732C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF7C278);
    }
  }
}

uint64_t sub_1E47A1A78(uint64_t a1)
{
  result = type metadata accessor for Event(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E47A1B0C(uint64_t a1)
{
  result = type metadata accessor for Event(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CellDisplayContext(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E47A1BC8(uint64_t a1)
{
  result = type metadata accessor for Event(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E47A1C3C()
{
  result = qword_1ECF7C2B0;
  if (!qword_1ECF7C2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C2B8, &qword_1E487CCB0);
    sub_1E47A1690();
    sub_1E47A13FC(&qword_1ECF7C250, type metadata accessor for WideModernEventDetailsView, &unk_1E487E9EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C2B0);
  }

  return result;
}

uint64_t sub_1E47A1CF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for PlatterStackView(uint64_t a1)
{
  result = qword_1ECF7C2D0;
  if (!qword_1ECF7C2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47A1DC8(uint64_t a1)
{
  sub_1E47801C0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Event(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E47A1E8C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4877F1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1E4773850(v2, &v15 - v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_1E47A208C()
{
  v1 = sub_1E4877B3C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = *(v0 + *(type metadata accessor for PlatterStackView(0) + 24));
  sub_1E47A1E8C(v7);
  (*(v2 + 104))(v5, *MEMORY[0x1E697DBC0], v1);
  v9 = sub_1E4877B2C();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v10(v7, v1);
  if (v9)
  {
    v11 = 3.0;
  }

  else
  {
    v11 = 0.0;
  }

  result = 2.0;
  if (!v8)
  {
    return v11;
  }

  return result;
}

double sub_1E47A2228()
{
  v1 = sub_1E4877B3C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = *(v0 + *(type metadata accessor for PlatterStackView(0) + 24));
  sub_1E47A1E8C(v7);
  (*(v2 + 104))(v5, *MEMORY[0x1E697DBC0], v1);
  v9 = sub_1E4877B2C();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v10(v7, v1);
  if (v9)
  {
    v11 = 3.0;
  }

  else
  {
    v11 = 0.0;
  }

  result = 2.0;
  if (!v8)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1E47A23C4(double a1, double a2)
{
  v3 = sub_1E4877B3C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = *(v2 + *(type metadata accessor for PlatterStackView(0) + 24));
  sub_1E47A1E8C(v9);
  (*(v4 + 104))(v7, *MEMORY[0x1E697DBC0], v3);
  v11 = sub_1E4877B2C();
  v12 = *(v4 + 8);
  v12(v7, v3);
  v12(v9, v3);
  if (v10)
  {
    v13 = objc_opt_self();
    if (v11)
    {
      v14 = [v13 systemGray6Color];
    }

    else
    {
      v14 = [v13 systemGray5Color];
    }

    v16 = v14;
    return sub_1E48785FC();
  }

  else
  {
    if (v11)
    {
      v15 = [objc_opt_self() systemGray6Color];
      sub_1E48785FC();
    }

    else
    {
      sub_1E487866C();
    }

    v18 = sub_1E48786DC();

    return v18;
  }
}

uint64_t sub_1E47A25B8@<X0>(_BYTE *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C2F8, &unk_1E487CD70);
  v4 = MEMORY[0x1EEE9AC00](v36);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v35 - v6);
  v35 = type metadata accessor for PlatterStackView(0);
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v37 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47A4758(a1, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlatterStackView);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_1E47A46F0(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PlatterStackView);
  sub_1E47A4758(a1, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlatterStackView);
  v13 = swift_allocObject();
  sub_1E47A46F0(v10, v13 + v11, type metadata accessor for PlatterStackView);
  *v7 = sub_1E487889C();
  v7[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C300, &qword_1E487CD80);
  sub_1E47A3854(a1, v7 + *(v15 + 44));
  v16 = sub_1E487813C();
  sub_1E4877B0C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C308, &qword_1E487CD88) + 36);
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = sub_1E487816C();
  sub_1E4877B0C();
  v27 = v7 + *(v36 + 36);
  *v27 = v26;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  v32 = v38;
  sub_1E4773850(v7, v38, &qword_1ECF7C2F8, &unk_1E487CD70);
  *a2 = sub_1E47A4360;
  a2[1] = v12;
  a2[2] = sub_1E47A4644;
  a2[3] = v13;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C310, &qword_1E487CD90);
  sub_1E4773850(v32, a2 + *(v33 + 64), &qword_1ECF7C2F8, &unk_1E487CD70);

  sub_1E47738B8(v7, &qword_1ECF7C2F8, &unk_1E487CD70);
  sub_1E47738B8(v32, &qword_1ECF7C2F8, &unk_1E487CD70);
}

uint64_t sub_1E47A2980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v5 = sub_1E4877B3C();
  v65 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v56 - v9;
  v11 = sub_1E4877CDC();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C318, &qword_1E487CD98);
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v56 - v15;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C320, &qword_1E487CDA0);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v56 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C360, &qword_1E487CE70);
  MEMORY[0x1EEE9AC00](v57);
  v62 = &v56 - v17;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C368, &qword_1E487CE78);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v56 - v18;
  sub_1E4878D2C();
  v58 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v63 = a1;
  sub_1E4877BEC();
  v19 = *(type metadata accessor for PlatterStackView(0) + 24);
  if (*(a2 + v19))
  {
    v20 = 6.0;
  }

  else
  {
    v20 = 18.0;
  }

  v21 = *(v11 + 20);
  v22 = *MEMORY[0x1E697F470];
  v23 = sub_1E4877F7C();
  (*(*(v23 - 8) + 104))(v13 + v21, v22, v23);
  *v13 = v20;
  v13[1] = v20;
  v24 = sub_1E47A23C4(0.5, 0.2);
  v25 = v66;
  sub_1E47A46F0(v13, v66, MEMORY[0x1E697EAE8]);
  *(v25 + *(v14 + 36)) = v24;
  sub_1E487866C();
  v26 = MEMORY[0x1E697DBC0];
  if ((*(a2 + v19) & 1) == 0)
  {
    sub_1E47A1E8C(v10);
    v27 = v65;
    (*(v65 + 104))(v8, *v26, v5);
    sub_1E4877B2C();
    v28 = *(v27 + 8);
    v28(v8, v5);
    v28(v10, v5);
  }

  v29 = sub_1E48786DC();

  if ((*(a2 + v19) & 1) != 0 || (sub_1E47A1E8C(v10), v30 = v65, (*(v65 + 104))(v8, *v26, v5), v31 = sub_1E4877B2C(), v32 = *(v30 + 8), v32(v8, v5), v32(v10, v5), v33 = 4.0, (v31 & 1) == 0))
  {
    v33 = 0.0;
  }

  if ((*(a2 + v19) & 1) != 0 || (sub_1E47A1E8C(v10), v34 = v65, (*(v65 + 104))(v8, *v26, v5), v35 = sub_1E4877B2C(), v36 = *(v34 + 8), v36(v8, v5), v36(v10, v5), v37 = 3.0, (v35 & 1) == 0))
  {
    v37 = 0.0;
  }

  v38 = v59;
  sub_1E477372C(v66, v59, &qword_1ECF7C318, &qword_1E487CD98);
  v39 = (v38 + *(v56 + 36));
  *v39 = v29;
  *(v39 + 1) = v33;
  v39[2] = 0;
  *(v39 + 3) = v37;
  sub_1E4877BEC();
  sub_1E487889C();
  sub_1E4877BCC();
  v40 = v62;
  sub_1E477372C(v38, v62, &qword_1ECF7C320, &qword_1E487CDA0);
  v41 = (v40 + *(v57 + 36));
  v42 = v68;
  *v41 = v67;
  v41[1] = v42;
  v41[2] = v69;
  v43 = sub_1E487813C();
  sub_1E4877B0C();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v40;
  v53 = v60;
  sub_1E477372C(v52, v60, &qword_1ECF7C360, &qword_1E487CE70);
  v54 = v53 + *(v61 + 36);
  *v54 = v43;
  *(v54 + 8) = v45;
  *(v54 + 16) = v47;
  *(v54 + 24) = v49;
  *(v54 + 32) = v51;
  *(v54 + 40) = 0;
  sub_1E477372C(v53, v64, &qword_1ECF7C368, &qword_1E487CE78);
}

uint64_t sub_1E47A3064@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E4877BEC();
  type metadata accessor for PlatterStackView(0);
  *a2 = sub_1E487889C();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C338, &qword_1E487CE48);
  sub_1E47A3294(a1, a2 + *(v5 + 44));
  sub_1E4877BEC();
  sub_1E487889C();
  sub_1E4877BCC();
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C340, &qword_1E487CE50) + 36));
  *v6 = v28;
  v6[1] = v29;
  v6[2] = v30;
  v7 = sub_1E487813C();
  sub_1E4877B0C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C348, &qword_1E487CE58) + 36);
  *v16 = v7;
  *(v16 + 1) = v9;
  *(v16 + 2) = v11;
  *(v16 + 3) = v13;
  *(v16 + 4) = v15;
  v16[40] = 0;
  v17 = sub_1E487816C();
  sub_1E4877B0C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C350, &qword_1E487CE60);
  v27 = a2 + *(result + 36);
  *v27 = v17;
  *(v27 + 1) = v19;
  *(v27 + 2) = v21;
  *(v27 + 3) = v23;
  *(v27 + 4) = v25;
  v27[40] = 0;
  return result;
}

uint64_t sub_1E47A3294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C318, &qword_1E487CD98);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v46 - v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C320, &qword_1E487CDA0);
  v4 = MEMORY[0x1EEE9AC00](v54);
  v58 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v52 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v46 - v8;
  v9 = sub_1E4877CDC();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v48 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v46 - v12);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C328, &qword_1E487CDA8);
  v14 = MEMORY[0x1EEE9AC00](v46);
  v53 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v46 - v19;
  sub_1E4878D2C();
  v50 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = *(type metadata accessor for PlatterStackView(0) + 24);
  v56 = a1;
  v21 = 18.0;
  if (*(a1 + v20))
  {
    v22 = 6.0;
  }

  else
  {
    v22 = 18.0;
  }

  v47 = v9;
  v23 = *(v9 + 20);
  v24 = *MEMORY[0x1E697F470];
  v25 = sub_1E4877F7C();
  v26 = *(*(v25 - 8) + 104);
  v26(v13 + v23, v24, v25);
  *v13 = v22;
  v13[1] = v22;
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = MEMORY[0x1E697EAE8];
  sub_1E47A46F0(v13, v18, MEMORY[0x1E697EAE8]);
  v28 = &v18[*(v46 + 36)];
  *v28 = 0x4049000000000000;
  v28[8] = 1;
  v29 = v49;
  sub_1E477372C(v18, v49, &qword_1ECF7C328, &qword_1E487CDA8);
  if (*(v56 + v20))
  {
    v21 = 6.0;
  }

  v30 = v48;
  v26(v48 + *(v47 + 20), v24, v25);
  *v30 = v21;
  v30[1] = v21;
  v31 = sub_1E47A23C4(0.5, 0.3);
  v32 = v55;
  sub_1E47A46F0(v30, v55, v27);
  *(v32 + *(v51 + 36)) = v31;
  sub_1E487866C();
  sub_1E47A2228();
  v33 = sub_1E48786DC();

  sub_1E47A2228();
  v35 = v34;
  v36 = sub_1E47A2228();
  v37 = v32;
  v38 = v52;
  sub_1E477372C(v37, v52, &qword_1ECF7C318, &qword_1E487CD98);
  v39 = (v38 + *(v54 + 36));
  *v39 = v33;
  v39[1] = v35;
  v39[2] = 0;
  *(v39 + 3) = v36;
  v40 = v57;
  sub_1E477372C(v38, v57, &qword_1ECF7C320, &qword_1E487CDA0);
  v41 = v53;
  sub_1E4773850(v29, v53, &qword_1ECF7C328, &qword_1E487CDA8);
  v42 = v58;
  sub_1E4773850(v40, v58, &qword_1ECF7C320, &qword_1E487CDA0);
  v43 = v59;
  sub_1E4773850(v41, v59, &qword_1ECF7C328, &qword_1E487CDA8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C358, &qword_1E487CE68);
  sub_1E4773850(v42, v43 + *(v44 + 48), &qword_1ECF7C320, &qword_1E487CDA0);
  sub_1E47738B8(v40, &qword_1ECF7C320, &qword_1E487CDA0);
  sub_1E47738B8(v29, &qword_1ECF7C328, &qword_1E487CDA8);
  sub_1E47738B8(v42, &qword_1ECF7C320, &qword_1E487CDA0);
  sub_1E47738B8(v41, &qword_1ECF7C328, &qword_1E487CDA8);
}

uint64_t sub_1E47A3854@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = sub_1E48782AC();
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v82 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for PlatterView(0);
  v5 = MEMORY[0x1EEE9AC00](v86);
  v88 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v71 - v7);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C318, &qword_1E487CD98);
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v71 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C320, &qword_1E487CDA0);
  v10 = MEMORY[0x1EEE9AC00](v78);
  v87 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v77 = &v71 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v71 - v14;
  v15 = sub_1E4877CDC();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v75 = (&v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v71 - v18);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C328, &qword_1E487CDA8);
  v20 = MEMORY[0x1EEE9AC00](v72);
  v83 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v71 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v91 = &v71 - v25;
  sub_1E4878D2C();
  v81 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v73 = type metadata accessor for PlatterStackView(0);
  v26 = *(v73 + 24);
  v80 = a1;
  v71 = v26;
  v27 = 18.0;
  if (a1[v26])
  {
    v28 = 6.0;
  }

  else
  {
    v28 = 18.0;
  }

  v74 = v15;
  v29 = *(v15 + 20);
  v30 = *MEMORY[0x1E697F470];
  v31 = sub_1E4877F7C();
  v32 = *(*(v31 - 8) + 104);
  v32(v19 + v29, v30, v31);
  *v19 = v28;
  v19[1] = v28;
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = MEMORY[0x1E697EAE8];
  sub_1E47A46F0(v19, v24, MEMORY[0x1E697EAE8]);
  v34 = &v24[*(v72 + 36)];
  *v34 = 0x4049000000000000;
  v34[8] = 1;
  sub_1E477372C(v24, v91, &qword_1ECF7C328, &qword_1E487CDA8);
  v35 = v80;
  if (v80[v71])
  {
    v27 = 6.0;
  }

  v36 = v75;
  v32(v75 + *(v74 + 20), v30, v31);
  *v36 = v27;
  v36[1] = v27;
  v37 = sub_1E47A23C4(0.9, 0.5);
  v38 = v36;
  v39 = v79;
  sub_1E47A46F0(v38, v79, v33);
  *(v39 + *(v76 + 36)) = v37;
  sub_1E487866C();
  sub_1E47A208C();
  v40 = sub_1E48786DC();

  sub_1E47A208C();
  v42 = v41;
  v43 = sub_1E47A208C();
  v44 = v77;
  sub_1E477372C(v39, v77, &qword_1ECF7C318, &qword_1E487CD98);
  v45 = (v44 + *(v78 + 36));
  *v45 = v40;
  v45[1] = v42;
  v45[2] = 0;
  *(v45 + 3) = v43;
  sub_1E477372C(v44, v90, &qword_1ECF7C320, &qword_1E487CDA0);
  v46 = v86;
  sub_1E47A4758(&v35[*(v73 + 20)], v8 + *(v86 + 28), type metadata accessor for Event);
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *(v8 + v46[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  v48 = v8 + v46[5];
  *v48 = KeyPath;
  v48[8] = 0;
  v49 = v46[8];
  sub_1E48782DC();
  v50 = *MEMORY[0x1E6980EA0];
  v52 = v84;
  v51 = v85;
  v80 = *(v84 + 104);
  v53 = v82;
  LODWORD(v79) = v50;
  (v80)(v82, v50, v85);
  sub_1E48782CC();

  v84 = *(v52 + 8);
  (v84)(v53, v51);
  sub_1E487827C();
  v54 = sub_1E487829C();

  *(v8 + v49) = v54;
  v55 = v46[9];
  *(v8 + v55) = sub_1E487863C();
  v78 = v46[10];
  sub_1E48782EC();
  v56 = v50;
  v57 = v80;
  (v80)(v53, v56, v51);
  v58 = sub_1E48782CC();

  v59 = v84;
  (v84)(v53, v51);
  *(v8 + v78) = v58;
  v60 = v46[11];
  sub_1E48782EC();
  v57(v53, v79, v51);
  sub_1E48782CC();

  v59(v53, v51);
  sub_1E487827C();
  v61 = sub_1E487829C();

  *(v8 + v60) = v61;
  v62 = v46[12];
  v63 = [objc_opt_self() secondaryLabelColor];
  *(v8 + v62) = sub_1E48785FC();
  *(v8 + v46[13]) = 0x4028000000000000;
  *(v8 + v46[14]) = 0x4024000000000000;
  v64 = v83;
  sub_1E4773850(v91, v83, &qword_1ECF7C328, &qword_1E487CDA8);
  v65 = v90;
  v66 = v87;
  sub_1E4773850(v90, v87, &qword_1ECF7C320, &qword_1E487CDA0);
  v67 = v88;
  sub_1E47A4758(v8, v88, type metadata accessor for PlatterView);
  v68 = v89;
  sub_1E4773850(v64, v89, &qword_1ECF7C328, &qword_1E487CDA8);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C330, &qword_1E487CE40);
  sub_1E4773850(v66, v68 + *(v69 + 48), &qword_1ECF7C320, &qword_1E487CDA0);
  sub_1E47A4758(v67, v68 + *(v69 + 64), type metadata accessor for PlatterView);
  sub_1E47A47C0(v8);
  sub_1E47738B8(v65, &qword_1ECF7C320, &qword_1E487CDA0);
  sub_1E47738B8(v91, &qword_1ECF7C328, &qword_1E487CDA8);
  sub_1E47A47C0(v67);
  sub_1E47738B8(v66, &qword_1ECF7C320, &qword_1E487CDA0);
  sub_1E47738B8(v64, &qword_1ECF7C328, &qword_1E487CDA8);
}

uint64_t sub_1E47A4218@<X0>(uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C2E0, &qword_1E487CD58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v20 - v5);
  *v6 = sub_1E487888C();
  v6[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C2E8, &qword_1E487CD60);
  sub_1E47A25B8(v2, (v6 + *(v8 + 44)));
  v9 = sub_1E487815C();
  sub_1E4877B0C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1E477372C(v6, a2, &qword_1ECF7C2E0, &qword_1E487CD58);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C2F0, &qword_1E487CD68);
  v19 = a2 + *(result + 36);
  *v19 = v9;
  *(v19 + 8) = v11;
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = 0;
  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for PlatterStackView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E4877B3C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 20);

  v7 = type metadata accessor for Event(0);
  v8 = v7[5];
  v9 = sub_1E487732C();
  v10 = *(*(v9 - 8) + 8);
  v10(v6 + v8, v9);
  v10(v6 + v7[6], v9);

  v11 = v7[11];
  v12 = sub_1E487725C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  v14 = v6 + v7[15];
  v15 = type metadata accessor for Location(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v16 = sub_1E487719C();
    (*(*(v16 - 8) + 8))(v14, v16);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E47A465C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PlatterStackView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E47A46F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47A4758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47A47C0(uint64_t a1)
{
  v2 = type metadata accessor for PlatterView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E47A481C()
{
  result = qword_1ECF7C370;
  if (!qword_1ECF7C370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C2F0, &qword_1E487CD68);
    sub_1E47A48A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C370);
  }

  return result;
}

unint64_t sub_1E47A48A8()
{
  result = qword_1ECF7C378;
  if (!qword_1ECF7C378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C2E0, &qword_1E487CD58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C378);
  }

  return result;
}

uint64_t sub_1E47A490C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  [objc_opt_self() lookaheadIntervalForDaysPerEntry_];
  v11 = v10;
  v12 = a3[3];
  v13 = a3[4];
  v14 = __swift_project_boxed_opaque_existential_0(a3, v12);
  sub_1E47A50CC(a1, v14, v5, v12, v13, v11);
  v15 = a3[3];
  v16 = a3[4];
  __swift_project_boxed_opaque_existential_0(a3, v15);
  v17 = (*(v16 + 8))(v15, v16);
  if (v17)
  {
    v18 = v17;
    v19 = [v17 BOOLValue];
  }

  else
  {
    v19 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BED0, &qword_1E487BF80);
  v20 = sub_1E487732C();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1E487A7E0;
  (*(v21 + 16))(v23 + v22, a1, v20);
  v24 = v5[8];

  v25 = sub_1E47A5614(v23, v24, a2, v19);

  swift_setDeallocating();
  (*(v21 + 8))(v23 + v22, v20);
  result = swift_deallocClassInstance();
  if (v25[2])
  {
    v27 = *(type metadata accessor for CalendarEventsTimelineEntry(0) - 8);
    sub_1E47A7408(v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), a4, type metadata accessor for CalendarEventsTimelineEntry);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E47A4BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E487732C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a3, v4);
  LOBYTE(a3) = sub_1E48774CC();
  (*(v5 + 8))(v7, v4);
  return a3 & 1;
}

uint64_t sub_1E47A4CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v19 = sub_1E487751C();
  v4 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_1E487732C();
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Event(0);
  if ((sub_1E48774CC() & 1) == 0)
  {
    return sub_1E48772CC() & 1;
  }

  v17 = a1;
  v13 = v19;
  (*(v4 + 104))(v6, *MEMORY[0x1E6969A88], v19);
  sub_1E48774BC();
  (*(v4 + 8))(v6, v13);
  v14 = v18;
  result = (*(v18 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v12, v9, v10);
    if (sub_1E48772CC())
    {
      v16 = sub_1E48772CC();
    }

    else
    {
      v16 = 0;
    }

    (*(v14 + 8))(v12, v10);
    return v16 & 1;
  }

  return result;
}

uint64_t sub_1E47A4FB4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_1E47A5044(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = *v5;
  v11 = a4[3];
  v12 = a4[4];
  v13 = __swift_project_boxed_opaque_existential_0(a4, v11);

  return sub_1E47A5448(a1, a2, a3, v13, a5, v10, v11, v12);
}

uint64_t sub_1E47A50CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v36 = a5;
  v10 = sub_1E487753C();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1E487732C();
  v13 = *(v37 - 8);
  v14 = MEMORY[0x1EEE9AC00](v37);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v34 - v18);
  v20 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v20 + 16);
  v35 = a4;
  v23(v22, a2, a4);
  sub_1E48772AC();
  v34 = v12;
  sub_1E4877A7C();
  sub_1E487745C();
  v24 = __swift_project_boxed_opaque_existential_0(a3 + 2, a3[5]);
  v25 = sub_1E4847E44(v16, v19, v22, *v24, a4, v36);
  v41 = a1;

  a3[7] = sub_1E48560AC(sub_1E47A72B0, v40, v25);

  type metadata accessor for Utils();

  v27 = sub_1E485B794(v26, v19);

  a3[8] = v27;

  v28 = *(v25 + 16);

  v29 = a3[8];
  LOBYTE(v28) = v28 != *(a3[7] + 16);

  v30 = sub_1E486C514(v28, v16, v29);

  v31 = *(v13 + 8);
  v32 = v37;
  v31(v16, v37);
  (*(v38 + 8))(v34, v39);
  v31(v19, v32);
  a3[8] = v30;

  return (*(v20 + 8))(v22, v35);
}

void *sub_1E47A5448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v17, v18);
  [objc_opt_self() lookaheadIntervalForDaysPerEntry_];
  sub_1E47A50CC(a1, v16, a6, a7, a8, v19);

  v21 = sub_1E47A6300(v20, a1, a2);

  v22 = (*(a8 + 8))(a7, a8);
  if (v22)
  {
    v23 = v22;
    v24 = [v22 BOOLValue];
  }

  else
  {
    v24 = 0;
  }

  v25 = a6[8];

  v26 = sub_1E47A5614(v21, v25, a3, v24);

  (*(v14 + 8))(v16, a7);
  return v26;
}

void *sub_1E47A5614(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v105 = a3;
  v102 = a2;
  v101 = sub_1E487751C();
  v115 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v76 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C380, &qword_1E4882C20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v76 - v11;
  v13 = type metadata accessor for DayEvents(0);
  v103 = *(v13 - 1);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v99 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v98 = &v76 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v97 = &v76 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v112 = &v76 - v20;
  v107 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v83 = *(v107 - 8);
  v21 = MEMORY[0x1EEE9AC00](v107);
  v85 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v76 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v108 = &v76 - v26;
  v27 = sub_1E487732C();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v96 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v76 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v76 - v34;
  v78 = sub_1E487753C();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v113 = &v76 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4877A7C();
  if ((a4 & 1) != 0 && (v37 = [objc_opt_self() unselectedCalendarIdentifiersForFocusMode]) != 0)
  {

    v106 = 1;
  }

  else
  {
    v106 = 0;
  }

  v82 = *(a1 + 16);
  if (v82)
  {
    v84 = 0;
    v39 = *(v28 + 16);
    v38 = v28 + 16;
    v114 = v39;
    v81 = a1 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v95 = (v103 + 48);
    v88 = (v38 + 16);
    v94 = *MEMORY[0x1E6969A48];
    v93 = (v115 + 104);
    v92 = (v115 + 8);
    v91 = (v38 + 32);
    v89 = (v38 + 24);
    v79 = (v38 - 8);
    v115 = v38;
    v80 = *(v38 + 56);
    v40 = 0;
    v86 = MEMORY[0x1E69E7CC0];
    v111 = v9;
    v90 = v12;
    v41 = v108;
    v109 = v33;
    v110 = v35;
    while (1)
    {
      v87 = v40;
      v42 = v114;
      v114(v35, (v81 + v80 * v40), v27);
      v42(v41, v110, v27);
      v43 = v107;
      v42(v41 + *(v107 + 20), v110, v27);
      v104 = *(v43 + 24);
      *(v41 + v104) = MEMORY[0x1E69E7CC0];
      *(v41 + *(v43 + 28)) = v106;
      v44 = (v42)(v109, v110, v27);
      if (v105 >= 1)
      {
        break;
      }

      v47 = v84;
LABEL_27:
      sub_1E47A7408(v41, v85, type metadata accessor for CalendarEventsTimelineEntry);
      v70 = v86;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_1E4860B5C(0, v70[2] + 1, 1, v70);
      }

      v71 = v109;
      v73 = v70[2];
      v72 = v70[3];
      v84 = v47;
      if (v73 >= v72 >> 1)
      {
        v70 = sub_1E4860B5C((v72 > 1), v73 + 1, 1, v70);
      }

      ++v87;
      v70[2] = v73 + 1;
      v74 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v86 = v70;
      sub_1E47A7380(v85, v70 + v74 + *(v83 + 72) * v73, type metadata accessor for CalendarEventsTimelineEntry);
      v41 = v108;
      sub_1E47A7470(v108, type metadata accessor for CalendarEventsTimelineEntry);
      v75 = *v79;
      (*v79)(v71, v27);
      v35 = v110;
      v75(v110, v27);
      v40 = v87;
      if (v87 == v82)
      {
        goto LABEL_34;
      }
    }

    v45 = MEMORY[0x1E69E7CC0];
    v46 = v109;
    v47 = v84;
    while (1)
    {
      MEMORY[0x1EEE9AC00](v44);
      v48 = v113;
      *(&v76 - 2) = v113;
      *(&v76 - 1) = v46;
      sub_1E47F8D94(sub_1E47A7360, v102, v12);
      if ((*v95)(v12, 1, v13) == 1)
      {
        sub_1E47738B8(v12, &qword_1ECF7C380, &qword_1E4882C20);
        v49 = v99;
        v114(v99, v46, v27);
        v50 = MEMORY[0x1E69E7CC0];
        *(v49 + v13[5]) = MEMORY[0x1E69E7CC0];
        *(v49 + v13[6]) = v50;
        *(v49 + v13[7]) = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1E4860B34(0, v45[2] + 1, 1, v45);
        }

        v52 = v45[2];
        v51 = v45[3];
        v53 = v110;
        if (v52 >= v51 >> 1)
        {
          v45 = sub_1E4860B34((v51 > 1), v52 + 1, 1, v45);
        }

        v45[2] = v52 + 1;
        sub_1E47A7380(v99, v45 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v52, type metadata accessor for DayEvents);
      }

      else
      {
        v54 = v112;
        v55 = sub_1E47A7380(v12, v112, type metadata accessor for DayEvents);
        v56 = *(v54 + v13[5]);
        MEMORY[0x1EEE9AC00](v55);
        v53 = v110;
        *(&v76 - 2) = v48;
        *(&v76 - 1) = v53;

        v57 = sub_1E48560AC(sub_1E47A73E8, (&v76 - 4), v56);
        v114(v96, v54, v27);
        v58 = (*(v54 + v13[7]) & 1) != 0 || *(v56 + 16) != *(v57 + 16);
        v59 = *(v112 + v13[6]);
        v60 = v97;
        (*v88)(v97, v96, v27);
        *(v60 + v13[5]) = v57;
        *(v60 + v13[6]) = v59;
        *(v60 + v13[7]) = v58;
        sub_1E47A7408(v60, v98, type metadata accessor for DayEvents);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1E4860B34(0, v45[2] + 1, 1, v45);
        }

        v62 = v45[2];
        v61 = v45[3];
        if (v62 >= v61 >> 1)
        {
          v45 = sub_1E4860B34((v61 > 1), v62 + 1, 1, v45);
        }

        sub_1E47A7470(v97, type metadata accessor for DayEvents);
        v45[2] = v62 + 1;
        sub_1E47A7380(v98, v45 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v62, type metadata accessor for DayEvents);
        sub_1E47A7470(v112, type metadata accessor for DayEvents);
      }

      v63 = v114;
      v114(v25, v53, v27);
      v64 = v107;
      v63(&v25[*(v107 + 20)], v53, v27);
      *&v25[*(v64 + 24)] = v45;
      v25[*(v64 + 28)] = v106;

      v65 = v108;
      sub_1E47A7470(v108, type metadata accessor for CalendarEventsTimelineEntry);
      sub_1E47A7380(v25, v65, type metadata accessor for CalendarEventsTimelineEntry);
      v67 = v100;
      v66 = v101;
      (*v93)(v100, v94, v101);
      v46 = v109;
      sub_1E48774BC();
      v68 = v111;
      (*v92)(v67, v66);
      result = (*v91)(v68, 1, v27);
      if (result == 1)
      {
        break;
      }

      v44 = (*v89)(v46, v68, v27);
      v12 = v90;
      if (*(*(v65 + v104) + 16) >= v105)
      {

        v41 = v108;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
    v86 = MEMORY[0x1E69E7CC0];
LABEL_34:
    (*(v77 + 8))(v113, v78);
    return v86;
  }

  return result;
}

uint64_t sub_1E47A6300(char *a1, uint64_t a2, uint64_t a3)
{
  v109 = a3;
  v130 = a1;
  v108 = sub_1E48770FC();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v116 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1E487751C();
  v114 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v110 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v112 = &v104 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v132 = &v104 - v11;
  v12 = type metadata accessor for Event(0);
  v129 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E487706C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1E487732C();
  v117 = *(v137 - 8);
  v19 = MEMORY[0x1EEE9AC00](v137);
  v113 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v115 = &v104 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v111 = &v104 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v104 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v126 = &v104 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v118 = &v104 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v131 = &v104 - v32;
  v106 = sub_1E487753C();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v141 = MEMORY[0x1E69E7CD0];
  v134 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4877A7C();
  type metadata accessor for Utils();
  sub_1E4870D68(v18);
  sub_1E487704C();
  v34 = *(v16 + 8);
  v34(v18, v15);
  v133 = a2;
  sub_1E4870D68(v18);
  sub_1E487701C();
  v34(v18, v15);
  v35 = v117;
  v36 = v117 + 8;
  v139 = *(v117 + 8);
  v37 = v118;
  v38 = v137;
  v139(v118, v137);
  v39 = *(v35 + 16);
  v40 = v126;
  v39(v126, a2, v38);
  sub_1E4862374(v37, v40);
  v41 = v137;
  v139(v37, v137);
  v135 = v39;
  v136 = v35 + 16;
  v39(v40, v131, v41);
  v42 = v111;
  sub_1E4862374(v37, v126);
  v138 = v36;
  v139(v37, v41);
  v43 = *(v130 + 2);
  if (v43)
  {
    v44 = &v130[(*(v129 + 80) + 32) & ~*(v129 + 80)];
    v45 = *(v129 + 72);
    v124 = *MEMORY[0x1E6969A88];
    v123 = (v114 + 104);
    v122 = (v114 + 8);
    v121 = (v117 + 48);
    v129 = v45;
    v130 = v27;
    v125 = v12;
    v120 = (v117 + 32);
    do
    {
      sub_1E47A7408(v44, v14, type metadata accessor for Event);
      if ((v14[*(v12 + 48)] & 1) == 0)
      {
        v46 = *(v12 + 24);
        v47 = sub_1E48774CC();
        v48 = &v14[v46];
        if (v47)
        {
          v49 = v137;
          v135(v42, v48, v137);
          v50 = v132;
          v51 = v127;
          v52 = v42;
          v53 = v128;
          (*v123)(v127, v124, v128);
          sub_1E48774BC();
          (*v122)(v51, v53);
          if ((*v121)(v50, 1, v49) == 1)
          {
            sub_1E47738B8(v132, &unk_1ECF7C880, &qword_1E4882710);
            v27 = v130;
            (*v120)(v130, v52, v49);
            v12 = v125;
            v42 = v52;
          }

          else
          {
            v54 = v115;
            v119 = *v120;
            v119(v115, v132, v49);
            sub_1E47A7308();
            v55 = sub_1E4878ACC();
            v42 = v52;
            v27 = v130;
            if (v55)
            {
              v139(v54, v49);
              v56 = v27;
              v57 = v52;
            }

            else
            {
              v139(v52, v49);
              v56 = v27;
              v57 = v54;
            }

            v119(v56, v57, v49);
            v12 = v125;
          }

          v45 = v129;
        }

        else
        {
          v49 = v137;
          v135(v27, v48, v137);
        }

        if (sub_1E48772CC() & 1) != 0 && (sub_1E48772DC())
        {
          v58 = v126;
          v135(v126, v27, v49);
          v59 = v42;
          v60 = v118;
          v61 = v58;
          v45 = v129;
          sub_1E4862374(v118, v61);
          v62 = v60;
          v42 = v59;
          v27 = v130;
          v139(v62, v49);
        }

        v139(v27, v49);
      }

      sub_1E47A7470(v14, type metadata accessor for Event);
      v44 += v45;
      --v43;
    }

    while (v43);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
  v63 = v114;
  v64 = *(v114 + 72);
  v65 = (*(v114 + 80) + 32) & ~*(v114 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1E487BC70;
  v67 = v66 + v65;
  v68 = *(v63 + 104);
  v69 = v128;
  v68(v67, *MEMORY[0x1E6969A50], v128);
  v68(v67 + v64, *MEMORY[0x1E6969A68], v69);
  v68(v67 + 2 * v64, *MEMORY[0x1E6969A78], v69);
  v68(v67 + 3 * v64, *MEMORY[0x1E6969A48], v69);
  v70 = sub_1E486B81C(v66);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v71 = v134;
  sub_1E487747C();

  sub_1E48770BC();
  v72 = v112;
  sub_1E48774AC();
  v73 = v117;
  v74 = *(v117 + 48);
  v75 = v137;
  if (v74(v72, 1, v137) == 1)
  {
    __break(1u);
  }

  else
  {
    v70 = *(v73 + 32);
    v76 = v113;
    v70(v113, v72, v75);
    if (sub_1E48772CC() & 1) != 0 && (sub_1E48772DC())
    {
      v77 = v126;
      v135(v126, v76, v75);
      v78 = v118;
      sub_1E4862374(v118, v77);
      v79 = v78;
      v71 = v134;
      v139(v79, v75);
    }

    sub_1E48770BC();
    v80 = v110;
    sub_1E48774AC();
    if (v74(v80, 1, v75) != 1)
    {
      v139(v76, v75);
      v70(v76, v80, v75);
      if (sub_1E48772CC() & 1) != 0 && (sub_1E48772DC())
      {
        v81 = v126;
        v135(v126, v76, v75);
        v82 = v118;
        sub_1E4862374(v118, v81);
        v139(v82, v75);
      }

      v83 = sub_1E4878DEC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1E487A7E0;
      v85 = v141;
      v86 = *(v141 + 16);
      v87 = MEMORY[0x1E69E65A8];
      *(v84 + 56) = MEMORY[0x1E69E6530];
      *(v84 + 64) = v87;
      *(v84 + 32) = v86;
      sub_1E478E80C();
      v88 = sub_1E4878E4C();
      sub_1E4877AAC(v83, &dword_1E475C000, v88, "Refresh dates calculated: %d dates", v104);

      v89 = *(v85 + 16);
      if (v89)
      {
        v90 = sub_1E4846B50(*(v85 + 16), 0);
        v91 = sub_1E4869E88(v140, &v90[(*(v117 + 80) + 32) & ~*(v117 + 80)], v89, v85);
        v92 = v140[0];
        v71 = v140[2];
        v76 = v140[3];

        sub_1E47A7300(v92);
        if (v91 != v89)
        {
          __break(1u);
          goto LABEL_41;
        }

        v75 = v116;
        v76 = v113;
        v71 = v134;
      }

      else
      {
        v90 = MEMORY[0x1E69E7CC0];
        v75 = v116;
      }

      v140[0] = v90;
      sub_1E47FA8A4(v140);
      v93 = v137;

      v85 = sub_1E47F8CCC(v109, v140[0]);
      if ((v96 & 1) == 0)
      {
LABEL_31:
        sub_1E4860EF8(v85, v94, v95, v96);
        v98 = v97;
        v99 = v108;
        goto LABEL_38;
      }

      v92 = v96;
      v91 = v95;
      v89 = v94;
      sub_1E487910C();
      swift_unknownObjectRetain_n();
      v100 = swift_dynamicCastClass();
      if (!v100)
      {
        swift_unknownObjectRelease();
        v100 = MEMORY[0x1E69E7CC0];
      }

      v101 = *(v100 + 16);

      if (!__OFSUB__(v92 >> 1, v91))
      {
        if (v101 == (v92 >> 1) - v91)
        {
          v98 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v99 = v108;
          v93 = v137;
          if (v98)
          {
LABEL_39:
            v102 = v139;
            v139(v76, v93);
            (*(v107 + 8))(v75, v99);
            v102(v131, v93);
            (*(v105 + 8))(v71, v106);
            return v98;
          }

          v98 = MEMORY[0x1E69E7CC0];
LABEL_38:
          swift_unknownObjectRelease();
          goto LABEL_39;
        }

        goto LABEL_42;
      }

LABEL_41:
      __break(1u);
LABEL_42:
      swift_unknownObjectRelease();
      v96 = v92;
      v95 = v91;
      v94 = v89;
      v93 = v137;
      goto LABEL_31;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1E47A7308()
{
  result = qword_1EE2B5A00;
  if (!qword_1EE2B5A00)
  {
    sub_1E487732C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B5A00);
  }

  return result;
}

uint64_t sub_1E47A7380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47A7408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47A7470(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for WideAllDayView(uint64_t a1)
{
  result = qword_1EE2B3B58;
  if (!qword_1EE2B3B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E47A7544(uint64_t a1)
{
  sub_1E47A7718(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CellDisplayContext(319);
    if (v2 <= 0x3F)
    {
      sub_1E47A7718(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        sub_1E47A7718(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
        if (v4 <= 0x3F)
        {
          sub_1E47A7718(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
          if (v5 <= 0x3F)
          {
            sub_1E47A7718(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1E47A7718(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E47A7798@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WideAllDayView(0);
  sub_1E4773850(v1 + *(v10 + 24), v9, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47A79A0@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WideAllDayView(0);
  sub_1E4773850(v1 + *(v10 + 28), v9, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877B3C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47A7BA8@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WideAllDayView(0);
  sub_1E4773850(v1 + *(v10 + 32), v9, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E47A7DB0()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for WideAllDayView(0) + 36));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1E47A7F00()
{
  v18 = type metadata accessor for Event(0);
  v1 = *(v18 - 8);
  v2 = MEMORY[0x1EEE9AC00](v18);
  v17 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  v7 = *v0;
  v16 = *(*v0 + 16);
  if (v16)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v8 < *(v7 + 16))
    {
      v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v11 = *(v1 + 72);
      sub_1E47ABC84(v7 + v10 + v11 * v8, v6, type metadata accessor for Event);
      sub_1E4878D2C();
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v12 = v6[*(v18 + 56)];

      if (v12 == 5)
      {
        sub_1E47ABD4C(v6, v17, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v9 + 16) + 1, 1);
          v9 = v19;
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1E4858038((v14 > 1), v15 + 1, 1);
          v9 = v19;
        }

        *(v9 + 16) = v15 + 1;
        result = sub_1E47ABD4C(v17, v9 + v10 + v15 * v11, type metadata accessor for Event);
      }

      else
      {
        result = sub_1E47ABCEC(v6, type metadata accessor for Event);
      }

      if (v16 == ++v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E47A8198()
{
  v18 = type metadata accessor for Event(0);
  v1 = *(v18 - 8);
  v2 = MEMORY[0x1EEE9AC00](v18);
  v16 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  v7 = *v0;
  v17 = *(*v0 + 16);
  if (v17)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v8 < *(v7 + 16))
    {
      v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v11 = *(v1 + 72);
      sub_1E47ABC84(v7 + v10 + v11 * v8, v6, type metadata accessor for Event);
      sub_1E4878D2C();
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v12 = v6[*(v18 + 56)];
      if (v12 == 5)
      {
        sub_1E47ABCEC(v6, type metadata accessor for Event);
      }

      else
      {

        if ((v12 & 0xFE) == 6)
        {
          result = sub_1E47ABCEC(v6, type metadata accessor for Event);
        }

        else
        {
          sub_1E47ABD4C(v6, v16, type metadata accessor for Event);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v19 = v9;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E4858038(0, *(v9 + 16) + 1, 1);
            v9 = v19;
          }

          v15 = *(v9 + 16);
          v14 = *(v9 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_1E4858038((v14 > 1), v15 + 1, 1);
            v9 = v19;
          }

          *(v9 + 16) = v15 + 1;
          result = sub_1E47ABD4C(v16, v9 + v10 + v15 * v11, type metadata accessor for Event);
        }
      }

      if (v17 == ++v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E47A8464()
{
  v18 = type metadata accessor for Event(0);
  v1 = *(v18 - 8);
  v2 = MEMORY[0x1EEE9AC00](v18);
  v17 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  v7 = *v0;
  v16 = *(*v0 + 16);
  if (v16)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v8 < *(v7 + 16))
    {
      v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v11 = *(v1 + 72);
      sub_1E47ABC84(v7 + v10 + v11 * v8, v6, type metadata accessor for Event);
      sub_1E4878D2C();
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v12 = v6[*(v18 + 56)];

      if ((v12 & 0xFE) == 6)
      {
        sub_1E47ABD4C(v6, v17, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v9 + 16) + 1, 1);
          v9 = v19;
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1E4858038((v14 > 1), v15 + 1, 1);
          v9 = v19;
        }

        *(v9 + 16) = v15 + 1;
        result = sub_1E47ABD4C(v17, v9 + v10 + v15 * v11, type metadata accessor for Event);
      }

      else
      {
        result = sub_1E47ABCEC(v6, type metadata accessor for Event);
      }

      if (v16 == ++v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E47A8700()
{
  v1 = type metadata accessor for Event(0) - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(*v0 + 16) == 1)
  {
    sub_1E47ABC84(v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Event);
    v6 = sub_1E47CC708();
    sub_1E47ABCEC(v4, type metadata accessor for Event);
    return v6;
  }

  v8 = *(sub_1E47A8198() + 16);

  if (!v8)
  {
    v9 = *(sub_1E47A8464() + 16);

    if (!v9)
    {
      if (qword_1EE2B4848 != -1)
      {
        swift_once();
      }

      sub_1E48771EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1E487A7E0;
      v17 = sub_1E47A7F00();
      goto LABEL_16;
    }
  }

  v10 = *(sub_1E47A8198() + 16);

  if (!v10)
  {
    v11 = *(sub_1E47A7F00() + 16);

    if (!v11)
    {
      if (qword_1EE2B4848 != -1)
      {
        swift_once();
      }

      sub_1E48771EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1E487A7E0;
      v17 = sub_1E47A8464();
LABEL_16:
      v18 = *(v17 + 16);

      v19 = MEMORY[0x1E69E65A8];
      *(v16 + 56) = MEMORY[0x1E69E6530];
      *(v16 + 64) = v19;
      *(v16 + 32) = v18;
      v20 = sub_1E4878BAC();

      return v20;
    }
  }

  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  sub_1E48771EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E487A7E0;
  v13 = *(v5 + 16);
  v14 = MEMORY[0x1E69E65A8];
  *(v12 + 56) = MEMORY[0x1E69E6530];
  *(v12 + 64) = v14;
  *(v12 + 32) = v13;
  v15 = sub_1E4878BAC();

  return v15;
}

uint64_t sub_1E47A8B28()
{
  v0 = type metadata accessor for Event(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(sub_1E47A7F00() + 16);

  if (v4)
  {
    return 0;
  }

  v5 = *(sub_1E47A8464() + 16);

  if (v5)
  {
    return 0;
  }

  v6 = *(sub_1E47A8198() + 16);

  if (v6 != 1)
  {
    return 0;
  }

  result = sub_1E47A8198();
  if (*(result + 16))
  {
    sub_1E47ABC84(result + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v3, type metadata accessor for Event);

    v8 = v3[*(v0 + 56)];
    sub_1E47ABCEC(v3, type metadata accessor for Event);
    return v8 == 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E47A8C80@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for Event(0);
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E487732C();
  v49 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v39 - v8;
  v9 = sub_1E487725C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for CellDisplayContext(0);
  MEMORY[0x1EEE9AC00](v48);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E4877CCC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - v19;
  v21 = v1;
  sub_1E47A7798((&v39 - v19));
  sub_1E4877CAC();
  sub_1E477F9E8();
  v22 = sub_1E4878EAC();
  v23 = *(v15 + 8);
  v23(v18, v14);
  v23(v20, v14);
  if (v22)
  {
    return (*(v10 + 56))(v50, 1, 1, v9);
  }

  v25 = v10;
  v26 = v9;
  v27 = v50;
  v28 = type metadata accessor for WideAllDayView(0);
  sub_1E47ABC84(v21 + *(v28 + 20), v13, type metadata accessor for CellDisplayContext);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    v29 = v49;
    if (result != 1)
    {
      v33 = v41;
      v34 = v44;
      result = (*(v49 + 32))(v41, v13, v44);
      v35 = *(*v21 + 16);
      if (v35 < 2)
      {
        v36 = v42;
        if (v35 != 1)
        {
LABEL_21:
          __break(1u);
          return result;
        }

        v38 = v40;
        sub_1E47ABC84(*v21 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v40, type metadata accessor for Event);
        (*(v29 + 8))(v33, v34);
        sub_1E4773850(v38 + *(v47 + 44), v36, &unk_1ECF7B688, &qword_1E487C160);
        sub_1E47ABCEC(v38, type metadata accessor for Event);
      }

      else
      {
        v36 = v42;
        sub_1E4877A6C();
        (*(v29 + 8))(v33, v34);
        (*(v25 + 56))(v36, 0, 1, v9);
      }

      return sub_1E477372C(v36, v27, &unk_1ECF7B688, &qword_1E487C160);
    }

    v30 = *v13;
  }

  else
  {
    v30 = v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C408, &qword_1E487DDD0) + 48)];
    result = (*(v49 + 8))(v13, v44);
  }

  v31 = v45;
  if (!*(*v21 + 16))
  {
    __break(1u);
    goto LABEL_21;
  }

  v32 = v43;
  sub_1E4773850(*v21 + *(v47 + 44) + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v43, &unk_1ECF7B688, &qword_1E487C160);
  if ((*(v25 + 48))(v32, 1, v26) == 1)
  {
    sub_1E47738B8(v32, &unk_1ECF7B688, &qword_1E487C160);
  }

  else
  {
    v37 = *(v25 + 32);
    v37(v31, v32, v26);
    if (v30)
    {
      v37(v27, v31, v26);
      return (*(v25 + 56))(v27, 0, 1, v26);
    }

    (*(v25 + 8))(v31, v26);
  }

  return (*(v25 + 56))(v27, 1, 1, v26);
}

uint64_t sub_1E47A9310()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v55 = &v51 - v3;
  v4 = sub_1E487757C();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1E487753C();
  v7 = *(v56 - 8);
  v8 = MEMORY[0x1EEE9AC00](v56);
  v52 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v51 - v10);
  v12 = type metadata accessor for Event(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v51 - v17;
  v19 = type metadata accessor for CellDisplayContext(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for WideAllDayView(0);
  sub_1E47ABC84(v1 + *(v22 + 20), v21, type metadata accessor for CellDisplayContext);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v39 = sub_1E487732C();
    (*(*(v39 - 8) + 8))(v21, v39);
    v40 = *(*v1 + 16);
    if (v40)
    {
      sub_1E47ABC84(*v1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v18, type metadata accessor for Event);
      if (v40 == 1)
      {
        sub_1E47A7BA8(v11);
        v41 = sub_1E48774CC();
        (*(v7 + 8))(v11, v56);
        if ((v41 & 1) == 0)
        {
          v47 = sub_1E47A9AB4();
          v48 = sub_1E48772BC();
          v49 = sub_1E48772BC();
          v50 = [v47 stringFromDate:v48 toDate:v49];

          v38 = sub_1E4878BDC();
          goto LABEL_14;
        }
      }

      if (qword_1EE2B4848 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
LABEL_11:
    v38 = sub_1E48771EC();
    goto LABEL_14;
  }

  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_1E47ABC84(*v1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v16, type metadata accessor for Event);
  sub_1E47A7BA8(v11);
  v23 = sub_1E48774CC();
  v24 = *(v7 + 8);
  v25 = v56;
  v24(v11, v56);
  if (v23)
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1E47A7BA8(v11);
    v27 = sub_1E487748C();
    v24(v11, v25);
    [v26 setCalendar_];

    sub_1E47A7BA8(v11);
    sub_1E487750C();
    v24(v11, v25);
    v28 = sub_1E487756C();
    (*(v53 + 8))(v6, v54);
    [v26 setTimeZone_];

    v29 = v52;
    sub_1E47A7BA8(v52);
    v30 = v25;
    v31 = v55;
    sub_1E48774EC();
    v24(v29, v30);
    v32 = sub_1E487744C();
    v33 = *(v32 - 8);
    v34 = 0;
    if ((*(v33 + 48))(v31, 1, v32) != 1)
    {
      v34 = sub_1E48773DC();
      (*(v33 + 8))(v31, v32);
    }

    [v26 setLocale_];

    v35 = sub_1E4878B9C();
    [v26 setLocalizedDateFormatFromTemplate_];

    v36 = sub_1E48772BC();
    v37 = [v26 stringFromDate_];

    v38 = sub_1E4878BDC();
  }

  else
  {
    v42 = sub_1E47A9AB4();
    v43 = sub_1E48772BC();
    v44 = sub_1E48772BC();
    v45 = [v42 stringFromDate:v43 toDate:v44];

    v38 = sub_1E4878BDC();
  }

  v18 = v16;
LABEL_14:
  sub_1E47ABCEC(v18, type metadata accessor for Event);
  return v38;
}

id sub_1E47A9AB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v23 = &v22 - v1;
  v22 = sub_1E487757C();
  v2 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E487753C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v22 - v10);
  v12 = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
  sub_1E47A7BA8(v11);
  v13 = sub_1E487748C();
  v14 = *(v6 + 8);
  v14(v11, v5);
  [v12 setCalendar_];

  sub_1E47A7BA8(v11);
  sub_1E487750C();
  v14(v11, v5);
  v15 = sub_1E487756C();
  (*(v2 + 8))(v4, v22);
  [v12 setTimeZone_];

  v16 = v23;
  sub_1E47A7BA8(v9);
  sub_1E48774EC();
  v14(v9, v5);
  v17 = sub_1E487744C();
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    v19 = sub_1E48773DC();
    (*(v18 + 8))(v16, v17);
  }

  [v12 setLocale_];

  v20 = sub_1E4878B9C();
  [v12 setDateTemplate_];

  return v12;
}

uint64_t sub_1E47A9E20()
{
  v1 = type metadata accessor for Event(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_1E47A7F00() + 16);

  if (v5)
  {
    return 0;
  }

  v6 = *(sub_1E47A8464() + 16);

  if (v6)
  {
    return 0;
  }

  v7 = *(sub_1E47A8198() + 16);

  if (v7 != 1)
  {
    return 0;
  }

  if (*(*v0 + 16))
  {
    sub_1E47ABC84(*v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v4, type metadata accessor for Event);
    v9 = v4[*(v1 + 56)];
    sub_1E47ABCEC(v4, type metadata accessor for Event);
    return (v9 - 3) < 2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E47A9F70()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for WideAllDayView(0) + 36));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    v8 = sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC(v8, &dword_1E475C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v6 = v12[1];
  }

  v10 = *(v6 + 128);

  return v10;
}

uint64_t sub_1E47AA0D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v53 = type metadata accessor for CellDisplayContext(0);
  MEMORY[0x1EEE9AC00](v53);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = &v52 - v6;
  v7 = type metadata accessor for EventBackgroundView(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3B8, &qword_1E487CF58);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3C0, &qword_1E487CF60);
  MEMORY[0x1EEE9AC00](v54);
  v14 = &v52 - v13;
  sub_1E4878D2C();
  v55 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v12 = sub_1E4877F6C();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3C8, &qword_1E487CF68);
  sub_1E47AA6D0(a1, &v12[*(v15 + 44)]);
  sub_1E47A7DB0();

  v16 = sub_1E487814C();
  sub_1E4877B0C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3D0, &qword_1E487CF70) + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = sub_1E487818C();
  sub_1E47A7DB0();

  sub_1E4877B0C();
  v27 = &v12[*(v10 + 36)];
  *v27 = v26;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  v32 = *a1;
  v33 = *(*a1 + 16);
  v34 = type metadata accessor for Event(0);
  v35 = *(v34 - 8);
  if (v33 == 1)
  {
    v36 = v56;
    sub_1E47ABC84(v32 + ((*(*(v34 - 8) + 80) + 32) & ~*(*(v34 - 8) + 80)), v56, type metadata accessor for Event);
    v37 = 0;
  }

  else
  {
    v37 = 1;
    v36 = v56;
  }

  (*(v35 + 56))(v36, v37, 1, v34);
  v38 = type metadata accessor for WideAllDayView(0);
  sub_1E47ABC84(a1 + *(v38 + 20), v4, type metadata accessor for CellDisplayContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v40 = sub_1E487732C();
    (*(*(v40 - 8) + 8))(v4, v40);
  }

  else
  {
    sub_1E47ABCEC(v4, type metadata accessor for CellDisplayContext);
  }

  v41 = EnumCaseMultiPayload != 2;
  KeyPath = swift_getKeyPath();
  *&v9[v7[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *&v9[v7[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *&v9[v7[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v43 = swift_getKeyPath();
  sub_1E477372C(v36, v9, &qword_1ECF7B950, &unk_1E487AE90);
  *&v9[v7[5]] = 3;
  v9[v7[6]] = v41;
  v44 = &v9[v7[7]];
  *v44 = KeyPath;
  v44[8] = 0;
  v45 = &v9[v7[11]];
  *v45 = v43;
  v45[8] = 0;
  v46 = sub_1E487889C();
  v48 = v47;
  v49 = &v14[*(v54 + 36)];
  sub_1E47ABD4C(v9, v49, type metadata accessor for EventBackgroundView);
  v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
  *v50 = v46;
  v50[1] = v48;
  sub_1E477372C(v12, v14, &qword_1ECF7C3B8, &qword_1E487CF58);
  sub_1E477372C(v14, v57, &qword_1ECF7C3C0, &qword_1E487CF60);
}

uint64_t sub_1E47AA6D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3D8, &qword_1E487D060);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - v6;
  v8 = type metadata accessor for AllDayCirclesView(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  sub_1E4878D2C();
  v34 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *a1;

  v15 = sub_1E47A9F70();
  KeyPath = swift_getKeyPath();
  *&v13[v8[5]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *v13 = KeyPath;
  v13[8] = 0;
  *&v13[v8[6]] = v14;
  *&v13[v8[7]] = v15;
  sub_1E48783CC();
  sub_1E47A7DB0();

  sub_1E487889C();
  sub_1E4877BCC();
  v32 = v42;
  v33 = v40;
  v30 = v45;
  v31 = v44;
  v39 = 1;
  v38 = v41;
  v37 = v43;
  *v7 = sub_1E4877F4C();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3E0, &qword_1E487D068);
  sub_1E47AAA90(a1, &v7[*(v17 + 44)]);
  sub_1E47ABC84(v13, v11, type metadata accessor for AllDayCirclesView);
  v18 = v39;
  v19 = v38;
  v20 = v7;
  v21 = v11;
  v22 = v37;
  v23 = v36;
  sub_1E4773850(v20, v36, &qword_1ECF7C3D8, &qword_1E487D060);
  v24 = v35;
  sub_1E47ABC84(v21, v35, type metadata accessor for AllDayCirclesView);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3E8, &qword_1E487D070);
  v26 = v24 + *(v25 + 48);
  *v26 = 0;
  *(v26 + 8) = v18;
  v27 = v32;
  *(v26 + 16) = v33;
  *(v26 + 24) = v19;
  *(v26 + 32) = v27;
  *(v26 + 40) = v22;
  v28 = v30;
  *(v26 + 48) = v31;
  *(v26 + 56) = v28;
  sub_1E4773850(v23, v24 + *(v25 + 64), &qword_1ECF7C3D8, &qword_1E487D060);
  sub_1E47738B8(v20, &qword_1ECF7C3D8, &qword_1E487D060);
  sub_1E47ABCEC(v13, type metadata accessor for AllDayCirclesView);
  sub_1E47738B8(v23, &qword_1ECF7C3D8, &qword_1E487D060);
  sub_1E47ABCEC(v21, type metadata accessor for AllDayCirclesView);
}

uint64_t sub_1E47AAA90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v110 = sub_1E4877B3C();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v108 = (v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Event(0);
  v106 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v107 = v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B908, &unk_1E487AA50);
  v113 = *(v6 - 8);
  v114 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v112 = v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v119 = v105 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3F0, &qword_1E487D078);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v105 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3F8, &qword_1E487DDC0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v118 = v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v105 - v17;
  sub_1E4878D2C();
  v111 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = sub_1E47A8B28();
  v117 = v18;
  if (v19)
  {
    v20 = sub_1E487874C();
    v21 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050) + 36));
    v22 = a1;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
    v24 = *MEMORY[0x1E69816D0];
    v25 = sub_1E487877C();
    v26 = v21 + v23;
    a1 = v22;
    (*(*(v25 - 8) + 104))(v26, v24, v25);
    *v21 = swift_getKeyPath();
    *v13 = v20;
    v27 = sub_1E47A9F70();
    KeyPath = swift_getKeyPath();
    v29 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60) + 36));
    *v29 = KeyPath;
    v29[1] = v27;
    v30 = sub_1E487864C();
    v31 = swift_getKeyPath();
    v32 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0) + 36));
    *v32 = v31;
    v32[1] = v30;
    LOBYTE(v30) = sub_1E487818C();
    sub_1E4877B0C();
    v33 = v13 + *(v10 + 36);
    *v33 = v30;
    *(v33 + 1) = v34;
    *(v33 + 2) = v35;
    *(v33 + 3) = v36;
    *(v33 + 4) = v37;
    v33[40] = 0;
    sub_1E477372C(v13, v18, &qword_1ECF7C3F0, &qword_1E487D078);
    (*(v11 + 56))(v18, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v18, 1, 1, v10);
  }

  v120 = sub_1E47A8700();
  v121 = v38;
  v105[1] = sub_1E477A374(v120, v38, v39);
  v40 = sub_1E487848C();
  v42 = v41;
  v44 = v43;
  sub_1E47A9E20();
  v45 = sub_1E48783EC();
  v47 = v46;
  v49 = v48;
  sub_1E477A3C8(v40, v42, v44 & 1);

  sub_1E47A9F70();
  v50 = sub_1E487842C();
  v52 = v51;
  v54 = v53;
  v105[0] = v55;

  sub_1E477A3C8(v45, v47, v49 & 1);

  v56 = *a1;
  v57 = *(*a1 + 16);
  v116 = *a1;
  if (v57 == 1)
  {
    v58 = v107;
    sub_1E47ABC84(v56 + ((*(v106 + 80) + 32) & ~*(v106 + 80)), v107, type metadata accessor for Event);
    v59 = v108;
    sub_1E47A79A0(v108);
    sub_1E476EA20(v58, v59);
    (*(v109 + 8))(v59, v110);
    sub_1E47ABCEC(v58, type metadata accessor for Event);
  }

  else
  {
    sub_1E48786EC();
  }

  v60 = sub_1E48783FC();
  v62 = v61;
  v64 = v63;
  v66 = v65;

  sub_1E477A3C8(v50, v52, v54 & 1);

  v67 = swift_getKeyPath();
  v120 = v60;
  v121 = v62;
  v122 = v64 & 1;
  v123 = v66;
  v124 = v67;
  v125 = 1;
  v126 = 0;
  sub_1E47A7DB0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  sub_1E487855C();
  sub_1E477A3C8(v60, v62, v64 & 1);

  v120 = sub_1E47A9310();
  v121 = v68;
  v69 = sub_1E487848C();
  v71 = v70;
  v73 = v72;
  sub_1E47A9E20();
  v74 = sub_1E48783EC();
  v76 = v75;
  LOBYTE(v62) = v77;
  sub_1E477A3C8(v69, v71, v73 & 1);

  sub_1E47A7DB0();

  sub_1E48781CC();

  v78 = sub_1E487842C();
  v80 = v79;
  v82 = v81;

  sub_1E477A3C8(v74, v76, v62 & 1);

  if (*(v116 + 16) == 1)
  {
    v83 = v107;
    sub_1E47ABC84(v116 + ((*(v106 + 80) + 32) & ~*(v106 + 80)), v107, type metadata accessor for Event);
    v84 = v108;
    sub_1E47A79A0(v108);
    sub_1E476EA20(v83, v84);
    (*(v109 + 8))(v84, v110);
    sub_1E47ABCEC(v83, type metadata accessor for Event);
  }

  else
  {
    sub_1E48786EC();
  }

  v109 = sub_1E48783FC();
  v108 = v85;
  LODWORD(v110) = v86;
  v116 = v87;

  sub_1E477A3C8(v78, v80, v82 & 1);

  v88 = swift_getKeyPath();
  v89 = v118;
  sub_1E4773850(v117, v118, &qword_1ECF7C3F8, &qword_1E487DDC0);
  v91 = v112;
  v90 = v113;
  v92 = *(v113 + 16);
  v93 = v119;
  v94 = v114;
  v92(v112, v119, v114);
  v95 = v89;
  v96 = v115;
  sub_1E4773850(v95, v115, &qword_1ECF7C3F8, &qword_1E487DDC0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C400, &qword_1E487D0B0);
  v92((v96 + v97[12]), v91, v94);
  v98 = v96 + v97[16];
  *v98 = 0;
  *(v98 + 8) = 1;
  v99 = v96 + v97[20];
  v100 = v109;
  v101 = v108;
  *v99 = v109;
  *(v99 + 8) = v101;
  v102 = v110;
  LOBYTE(v97) = v110 & 1;
  *(v99 + 16) = v110 & 1;
  *(v99 + 24) = v116;
  *(v99 + 32) = v88;
  *(v99 + 40) = 1;
  *(v99 + 48) = 0;
  sub_1E478B8E0(v100, v101, v102 & 1);
  v103 = *(v90 + 8);

  v103(v93, v94);
  sub_1E47738B8(v117, &qword_1ECF7C3F8, &qword_1E487DDC0);
  sub_1E477A3C8(v100, v101, v97);

  v103(v91, v94);
  sub_1E47738B8(v118, &qword_1ECF7C3F8, &qword_1E487DDC0);
}

uint64_t sub_1E47AB5C8@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C388, &qword_1E487CF38);
  MEMORY[0x1EEE9AC00](v25);
  v3 = &v23 - v2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C390, &qword_1E487CF40);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v23 - v4;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C398, &qword_1E487CF48);
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v12 = sub_1E487725C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  sub_1E47A8C80(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1E47738B8(v11, &unk_1ECF7B688, &qword_1E487C160);
    *v3 = sub_1E4877FBC();
    *(v3 + 1) = 0;
    v3[16] = 0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3A0, &qword_1E487CF50);
    sub_1E47AA0D4(v1, &v3[*(v19 + 44)]);
    sub_1E4773850(v3, v5, &qword_1ECF7C388, &qword_1E487CF38);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1ECF7C3A8, &qword_1ECF7C398, &qword_1E487CF48, MEMORY[0x1E697CD08]);
    sub_1E4773680(&qword_1ECF7C3B0, &qword_1ECF7C388, &qword_1E487CF38, MEMORY[0x1E6981868]);
    sub_1E487803C();
    return sub_1E47738B8(v3, &qword_1ECF7C388, &qword_1E487CF38);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    v21 = (*(v13 + 16))(v16, v18, v12);
    MEMORY[0x1EEE9AC00](v21);
    *(&v23 - 2) = v1;
    sub_1E4773680(&qword_1ECF7C3B0, &qword_1ECF7C388, &qword_1E487CF38, MEMORY[0x1E6981868]);
    sub_1E487831C();
    v22 = v24;
    (*(v6 + 16))(v5, v8, v24);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1ECF7C3A8, &qword_1ECF7C398, &qword_1E487CF48, MEMORY[0x1E697CD08]);
    sub_1E487803C();
    (*(v6 + 8))(v8, v22);
    return (*(v13 + 8))(v18, v12);
  }
}

uint64_t sub_1E47ABAD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_1E4877FBC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C3A0, &qword_1E487CF50);
  sub_1E47AA0D4(a1, a2 + *(v4 + 44));
}

double sub_1E47ABBAC(uint64_t a1)
{
  v2 = *(sub_1E47A7DB0() + 112);

  v3 = fmax(v2, 1.0);
  v4 = *(sub_1E47A7DB0() + 48);

  v5 = v4 + v4 + 0.0;
  v6 = sub_1E47A9F70();
  sub_1E487201C(v6, a1);
  v8 = v7;

  v9 = v3 * v8;
  sub_1E47A7DB0();

  v10 = sub_1E48781CC();

  sub_1E487201C(v10, a1);
  v12 = v11;

  if (v9 > v12)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  return v5 + v13;
}

uint64_t sub_1E47ABC84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47ABCEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E47ABD4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E47ABDB4()
{
  result = qword_1ECF7C410;
  if (!qword_1ECF7C410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C418, &unk_1E487D148);
    sub_1E4773680(&qword_1ECF7C3A8, &qword_1ECF7C398, &qword_1E487CF48, MEMORY[0x1E697CD08]);
    sub_1E4773680(&qword_1ECF7C3B0, &qword_1ECF7C388, &qword_1E487CF38, MEMORY[0x1E6981868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7C410);
  }

  return result;
}

uint64_t sub_1E47ABE98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_10:
    v12 = sub_1E4878F0C();
    result = sub_1E47B53A0(0, 0, v5, v12, 0, v3);
    if (v13)
    {
      v14 = sub_1E4878F0C();
      v15 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v3 = a2;
  v5 = a1;
  v4 = a3;
  if (a2 >> 62)
  {
    goto LABEL_10;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  result = sub_1E47B53A0(0, 0, a1, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), 0, a2);
  if (v9)
  {
    v8 = 0;
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = result;
LABEL_8:
    *v4 = result;
    v4[1] = v8;
    v4[2] = v10;
    v4[3] = 0;
    v4[4] = v3;
    return result;
  }

  v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10 < result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = *(v6 + 16);
  if ((result & 0x8000000000000000) == 0)
  {
    while (v11 < v10)
    {
LABEL_13:
      __break(1u);
LABEL_14:
      v15 = v8;
      v14 = result;
LABEL_15:
      result = sub_1E4878F0C();
      if (result < v14)
      {
        goto LABEL_20;
      }

      v10 = result;
      result = sub_1E4878F0C();
      if (result < 0)
      {
        goto LABEL_19;
      }

      v11 = result;
      result = v14;
      v8 = v15;
      if (v14 < 0)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_8;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E47AC06C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E4866DD0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    sub_1E47B488C(v9 + 2, a2);
    result = memmove(v9 + 2, v9 + 72, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E47AC108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v27 = a2;
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C448, &qword_1E487D640);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v34 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v26 - v12;
  sub_1E4878D2C();
  v33 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E487889C();
  sub_1E4877BCC();
  v30 = v41;
  v31 = v39;
  v28 = v44;
  v29 = v43;
  v38 = 0;
  v37 = v40;
  v36 = v42;
  v14 = sub_1E4877FBC();
  v15 = *(v27 + 112);
  *v13 = v14;
  *(v13 + 1) = v15;
  v13[16] = 0;
  v27 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C450, &qword_1E487D648) + 44);
  swift_beginAccess();
  v35 = *(a1 + 32);
  swift_getKeyPath();
  (*(v7 + 16))(v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C458, &qword_1E487D678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C460, &qword_1E487D680);
  sub_1E4773680(&qword_1EE2B46E8, &qword_1ECF7C458, &qword_1E487D678, MEMORY[0x1E69E6338]);
  sub_1E4773680(&qword_1EE2B0F20, &qword_1ECF7C460, &qword_1E487D680, MEMORY[0x1E6981868]);
  sub_1E487885C();

  v18 = v38;
  v19 = v37;
  v20 = v36;
  v21 = v34;
  sub_1E4773850(v13, v34, &qword_1ECF7C448, &qword_1E487D640);
  *a4 = 0;
  *(a4 + 8) = v18;
  v22 = v30;
  *(a4 + 16) = v31;
  *(a4 + 24) = v19;
  *(a4 + 32) = v22;
  *(a4 + 40) = v20;
  v23 = v28;
  *(a4 + 48) = v29;
  *(a4 + 56) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C468, &qword_1E487D688);
  sub_1E4773850(v21, a4 + *(v24 + 48), &qword_1ECF7C448, &qword_1E487D640);
  sub_1E47738B8(v13, &qword_1ECF7C448, &qword_1E487D640);
  sub_1E47738B8(v21, &qword_1ECF7C448, &qword_1E487D640);
}

uint64_t sub_1E47AC5A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_1E4877FBC();
  *(a3 + 8) = 0x4010000000000000;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C470, &qword_1E487D690);
  sub_1E47AC67C(v5, a2, a3 + *(v6 + 44));
}

uint64_t sub_1E47AC67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = sub_1E4877C5C();
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = sub_1E487732C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1E4878D2C();
  v29 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  swift_beginAccess();
  v33 = *(a1 + v13);
  swift_getKeyPath();
  v27 = *(v11 + 16);
  v27(&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v14 = *(v11 + 80);
  v26 = a2;
  v15 = (v14 + 24) & ~v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  (*(v11 + 32))(v16 + v15, &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C478, &qword_1E487D6C0);
  v25 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C480, &qword_1E487D6C8);
  sub_1E4773680(&qword_1EE2B46E0, &qword_1ECF7C478, &qword_1E487D6C0, MEMORY[0x1E69E6338]);
  sub_1E4773680(&qword_1EE2B0EA0, &qword_1ECF7C480, &qword_1E487D6C8, MEMORY[0x1E6981F50]);
  v17 = v32;
  sub_1E487885C();
  sub_1E4877C4C();
  v19 = v30;
  v18 = v31;
  (*(v30 + 16))(v28, v9, v31);
  sub_1E47B45D0(&qword_1EE2B1600, 255, MEMORY[0x1E697E468], MEMORY[0x1E697E458]);
  v20 = sub_1E4877BDC();
  (*(v19 + 8))(v9, v18);
  *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C488, &qword_1E487D6D0) + 36)) = v20;
  v21 = sub_1E48788AC();
  v22 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C490, &qword_1E487D6D8) + 36));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C498, &qword_1E487D6E0);
  v27(v22 + *(v23 + 36), v26, v25);

  *v22 = v21;
  return result;
}

uint64_t sub_1E47ACADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v178 = a3;
  v193 = a2;
  v194 = a1;
  v191 = a4;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4A0, &qword_1E487D6E8);
  MEMORY[0x1EEE9AC00](v171);
  v174 = &v162[-v4];
  v173 = type metadata accessor for NoEventsView(0);
  MEMORY[0x1EEE9AC00](v173);
  v165 = &v162[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4A8, &qword_1E487D6F0);
  v187 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v172 = &v162[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4B0, &qword_1E487D6F8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v190 = &v162[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v202 = &v162[-v10];
  v177 = sub_1E48782AC();
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v175 = &v162[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v192 = type metadata accessor for NarrowTextHeaderView(0);
  v185 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v170 = &v162[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4B8, &qword_1E487D700);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v189 = &v162[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v200 = &v162[-v16];
  v169 = type metadata accessor for NarrowXMoreView(0);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v164 = &v162[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4C0, &qword_1E487D708);
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v167 = &v162[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4C8, &qword_1E487D710);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v199 = &v162[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v206 = &v162[-v22];
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4D0, &qword_1E487D718);
  v181 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v166 = &v162[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4D8, &qword_1E487D720);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v198 = &v162[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v162[-v27];
  v29 = type metadata accessor for NarrowConflictsView(0);
  v180 = *(v29 - 1);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v162[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4E0, &qword_1E487D728);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v197 = &v162[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33);
  v204 = &v162[-v35];
  v36 = type metadata accessor for NarrowReminderView(0);
  v179 = *(v36 - 1);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v162[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4E8, &qword_1E487D730);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v196 = &v162[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v40);
  v205 = &v162[-v42];
  v43 = type metadata accessor for NarrowEventDetailsView(0);
  v44 = *(v43 - 1);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v162[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4F0, &qword_1E487D738);
  v48 = MEMORY[0x1EEE9AC00](v47 - 8);
  v195 = &v162[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v48);
  v207 = &v162[-v50];
  sub_1E4878D2C();
  v186 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47A1524(v194, v210);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
  v203 = v51;
  v52 = swift_dynamicCast();
  v201 = v28;
  if (v52)
  {
    v53 = v208;
    sub_1E47B4C1C(v208 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_event, v46, type metadata accessor for Event);
    v54 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_date;
    v55 = v43[5];
    v56 = sub_1E487732C();
    (*(*(v56 - 8) + 16))(&v46[v55], v193 + v54, v56);
    v163 = *(v53 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingTravelTime);
    LOBYTE(v54) = *(v53 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingLocation);

    *&v46[v43[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
    swift_storeEnumTagMultiPayload();
    *&v46[v43[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v46[v43[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *&v46[v43[12]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    v28 = v201;
    swift_storeEnumTagMultiPayload();
    v58 = swift_getKeyPath();
    v46[v43[6]] = v163;
    v46[v43[7]] = v54;
    v59 = &v46[v43[11]];
    *v59 = KeyPath;
    v59[8] = 0;
    v60 = &v46[v43[13]];
    *v60 = v58;
    v60[8] = 0;
    v61 = v207;
    sub_1E47B49FC(v46, v207, type metadata accessor for NarrowEventDetailsView);
    v62 = 0;
    v63 = v205;
  }

  else
  {
    v62 = 1;
    v63 = v205;
    v61 = v207;
  }

  (*(v44 + 56))(v61, v62, 1, v43);
  v64 = v194;
  sub_1E47A1524(v194, v210);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
  if (swift_dynamicCast())
  {
    sub_1E47B4C1C(v208 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_event, v38, type metadata accessor for Event);

    v65 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_date;
    v66 = v36[5];
    v67 = sub_1E487732C();
    (*(*(v67 - 8) + 16))(&v38[v66], v193 + v65, v67);
    *&v38[v36[6]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
    swift_storeEnumTagMultiPayload();
    *&v38[v36[7]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v38[v36[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    v68 = swift_getKeyPath();
    *&v38[v36[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    *&v38[v36[11]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    v69 = swift_getKeyPath();
    v70 = &v38[v36[9]];
    *v70 = v68;
    v70[8] = 0;
    v71 = &v38[v36[12]];
    *v71 = v69;
    v71[8] = 0;
    sub_1E47B49FC(v38, v63, type metadata accessor for NarrowReminderView);
    v72 = 0;
  }

  else
  {
    v72 = 1;
  }

  v73 = v192;
  (*(v179 + 56))(v63, v72, 1, v36);
  sub_1E47A1524(v64, v210);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
  if (swift_dynamicCast())
  {
    v74 = v208;
    v75 = *(v208 + 32);
    v76 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_date;
    v77 = v29[5];
    v78 = sub_1E487732C();
    (*(*(v78 - 8) + 16))(&v31[v77], v193 + v76, v78);
    v79 = *(v74 + 40);

    *&v31[v29[7]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
    swift_storeEnumTagMultiPayload();
    *&v31[v29[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    v80 = swift_getKeyPath();
    *&v31[v29[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v81 = swift_getKeyPath();
    *&v31[v29[12]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *v31 = v75;
    *&v31[v29[6]] = v79;
    v82 = &v31[v29[9]];
    *v82 = v80;
    v82[8] = 0;
    v83 = &v31[v29[11]];
    *v83 = v81;
    v83[8] = 0;
    v84 = v31;
    v85 = v204;
    sub_1E47B49FC(v84, v204, type metadata accessor for NarrowConflictsView);
    v86 = 0;
    v87 = v200;
  }

  else
  {
    v86 = 1;
    v87 = v200;
    v85 = v204;
  }

  v88 = v206;
  (*(v180 + 56))(v85, v86, 1, v29);
  sub_1E47A1524(v64, v210);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
  if (swift_dynamicCast())
  {
    v89 = v208;
    v90 = sub_1E4877FBC();
    v91 = v166;
    *v166 = v90;
    *(v91 + 8) = 0x4010000000000000;
    *(v91 + 16) = 0;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C500, &qword_1E487D840);
    sub_1E47AE7E0(v89, v193, v91 + *(v92 + 44));

    sub_1E477372C(v91, v28, &qword_1ECF7C4D0, &qword_1E487D718);
    v93 = 0;
  }

  else
  {
    v93 = 1;
  }

  (*(v181 + 56))(v28, v93, 1, v182);
  sub_1E47A1524(v64, v210);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
  if (swift_dynamicCast())
  {
    v94 = v208;
    if (*(v208 + 48) == 1 && (swift_beginAccess(), v95 = *(v94 + 32), *(v95 + 16)))
    {

      v193 = swift_getKeyPath();
      v96 = v85;
      v97 = v87;
      v98 = swift_getKeyPath();
      v99 = swift_getKeyPath();
      v100 = v169;
      v101 = v164;
      *&v164[*(v169 + 32)] = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
      swift_storeEnumTagMultiPayload();
      *v101 = v95;
      *(v101 + 8) = 0;
      *(v101 + 16) = v193;
      *(v101 + 24) = 0;
      *(v101 + 32) = v98;
      v87 = v97;
      v85 = v96;
      *(v101 + 40) = 0;
      v102 = v167;
      sub_1E47B49FC(v101, v167, type metadata accessor for NarrowXMoreView);
      v103 = v100;
      v104 = 0;
    }

    else
    {

      v104 = 1;
      v103 = v169;
      v102 = v167;
    }

    (*(v168 + 56))(v102, v104, 1, v103);
    sub_1E477372C(v102, v88, &qword_1ECF7C4C0, &qword_1E487D708);
    v105 = 0;
  }

  else
  {
    v105 = 1;
  }

  (*(v183 + 56))(v88, v105, 1, v184);
  sub_1E47A1524(v64, v210);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.HeaderViewModel(0);
  if (swift_dynamicCast())
  {
    v106 = v209;
    v107 = sub_1E487732C();
    v108 = *(*(v107 - 8) + 16);
    v109 = v170;
    v108(v170, v178, v107);
    v108((v109 + v73[5]), v106 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel15HeaderViewModel_date, v107);
    *(v109 + v73[7]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    *(v109 + v73[6]) = 0;
    v110 = (v109 + v73[8]);
    *v110 = 0x4D4D202C45454545;
    v110[1] = 0xEB0000000064204DLL;
    v111 = v109 + v73[9];
    strcpy(v111, "EEEE, MMMM d");
    *(v111 + 13) = 0;
    *(v111 + 14) = -5120;
    v112 = (v109 + v73[10]);
    *v112 = 1162167621;
    v112[1] = 0xE400000000000000;
    v113 = v73[11];
    sub_1E48782DC();
    v114 = v176;
    v115 = v175;
    v116 = v177;
    (*(v176 + 104))(v175, *MEMORY[0x1E6980EA0], v177);
    sub_1E48782CC();

    v117 = v116;
    v73 = v192;
    (*(v114 + 8))(v115, v117);
    v118 = sub_1E48781FC();
    v85 = v204;

    *(v109 + v113) = v118;
    sub_1E47B49FC(v109, v87, type metadata accessor for NarrowTextHeaderView);
    v119 = 0;
  }

  else
  {
    v119 = 1;
  }

  v120 = v207;
  (*(v185 + 56))(v87, v119, 1, v73);
  sub_1E47A1524(v64, v210);
  type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EmptyStateViewModel();
  if (swift_dynamicCast())
  {
    v121 = v209;
    if (*(v209 + 33) == 1)
    {
      v122 = sub_1E487732C();
      v123 = v165;
      (*(*(v122 - 8) + 16))(v165, v178, v122);
      LODWORD(v194) = *(v121 + 32);
      sub_1E48781BC();
      v124 = *MEMORY[0x1E6980EA0];
      v125 = v176;
      v126 = *(v176 + 104);
      v203 = v121;
      v127 = v175;
      v128 = v177;
      v126(v175, v124, v177);
      sub_1E48782CC();

      v129 = *(v125 + 8);
      v129(v127, v128);
      sub_1E487827C();
      v130 = sub_1E487829C();

      sub_1E48781BC();
      v126(v127, v124, v128);
      v131 = sub_1E48782CC();

      v129(v127, v128);
      v132 = swift_getKeyPath();
      v133 = swift_getKeyPath();
      v134 = v173;
      *(v123 + *(v173 + 40)) = v133;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
      swift_storeEnumTagMultiPayload();
      *(v123 + v134[11]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
      swift_storeEnumTagMultiPayload();
      v135 = v200;
      *(v123 + v134[5]) = (v194 & 1) == 0;
      *(v123 + v134[6]) = 1;
      *(v123 + v134[7]) = v130;
      *(v123 + v134[8]) = v131;
      v136 = v123 + v134[9];
      *v136 = v132;
      *(v136 + 8) = 0;
      sub_1E47B4C1C(v123, v174, type metadata accessor for NoEventsView);
      swift_storeEnumTagMultiPayload();
      v137 = sub_1E47B45D0(qword_1EE2B3DE0, 255, type metadata accessor for NoEventsView, &unk_1E48830DC);
      sub_1E47B49A8(v137, v138, v139);
      v140 = v172;
      v85 = v204;
      sub_1E487803C();

      sub_1E47B4C84(v123, type metadata accessor for NoEventsView);
    }

    else
    {
      v135 = v87;
      v142 = *(v209 + 32);
      v143 = swift_getKeyPath();
      v144 = v174;
      *v174 = v142;
      v144[1] = 1;
      *(v144 + 1) = v143;
      v144[16] = 0;
      swift_storeEnumTagMultiPayload();
      v145 = sub_1E47B45D0(qword_1EE2B3DE0, 255, type metadata accessor for NoEventsView, &unk_1E48830DC);
      sub_1E47B49A8(v145, v146, v147);
      swift_retain_n();
      v140 = v172;
      sub_1E487803C();
    }

    sub_1E477372C(v140, v202, &qword_1ECF7C4A8, &qword_1E487D6F0);
    v141 = 0;
    v120 = v207;
  }

  else
  {
    v135 = v87;
    v141 = 1;
  }

  v148 = v202;
  (*(v187 + 56))(v202, v141, 1, v188);
  v149 = v195;
  sub_1E4773850(v120, v195, &qword_1ECF7C4F0, &qword_1E487D738);
  v150 = v196;
  sub_1E4773850(v205, v196, &qword_1ECF7C4E8, &qword_1E487D730);
  v151 = v197;
  sub_1E4773850(v85, v197, &qword_1ECF7C4E0, &qword_1E487D728);
  v152 = v198;
  sub_1E4773850(v201, v198, &qword_1ECF7C4D8, &qword_1E487D720);
  v153 = v148;
  v154 = v199;
  sub_1E4773850(v206, v199, &qword_1ECF7C4C8, &qword_1E487D710);
  v155 = v189;
  sub_1E4773850(v135, v189, &qword_1ECF7C4B8, &qword_1E487D700);
  v156 = v153;
  v157 = v190;
  sub_1E4773850(v156, v190, &qword_1ECF7C4B0, &qword_1E487D6F8);
  v158 = v149;
  v159 = v191;
  sub_1E4773850(v158, v191, &qword_1ECF7C4F0, &qword_1E487D738);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C4F8, &qword_1E487D740);
  sub_1E4773850(v150, v159 + v160[12], &qword_1ECF7C4E8, &qword_1E487D730);
  sub_1E4773850(v151, v159 + v160[16], &qword_1ECF7C4E0, &qword_1E487D728);
  sub_1E4773850(v152, v159 + v160[20], &qword_1ECF7C4D8, &qword_1E487D720);
  sub_1E4773850(v154, v159 + v160[24], &qword_1ECF7C4C8, &qword_1E487D710);
  sub_1E4773850(v155, v159 + v160[28], &qword_1ECF7C4B8, &qword_1E487D700);
  sub_1E4773850(v157, v159 + v160[32], &qword_1ECF7C4B0, &qword_1E487D6F8);
  sub_1E47738B8(v202, &qword_1ECF7C4B0, &qword_1E487D6F8);
  sub_1E47738B8(v200, &qword_1ECF7C4B8, &qword_1E487D700);
  sub_1E47738B8(v206, &qword_1ECF7C4C8, &qword_1E487D710);
  sub_1E47738B8(v201, &qword_1ECF7C4D8, &qword_1E487D720);
  sub_1E47738B8(v204, &qword_1ECF7C4E0, &qword_1E487D728);
  sub_1E47738B8(v205, &qword_1ECF7C4E8, &qword_1E487D730);
  sub_1E47738B8(v207, &qword_1ECF7C4F0, &qword_1E487D738);
  sub_1E47738B8(v157, &qword_1ECF7C4B0, &qword_1E487D6F8);
  sub_1E47738B8(v155, &qword_1ECF7C4B8, &qword_1E487D700);
  sub_1E47738B8(v199, &qword_1ECF7C4C8, &qword_1E487D710);
  sub_1E47738B8(v198, &qword_1ECF7C4D8, &qword_1E487D720);
  sub_1E47738B8(v197, &qword_1ECF7C4E0, &qword_1E487D728);
  sub_1E47738B8(v196, &qword_1ECF7C4E8, &qword_1E487D730);
  sub_1E47738B8(v195, &qword_1ECF7C4F0, &qword_1E487D738);
}

uint64_t sub_1E47AE7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v75 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C508, &qword_1E487D8B8);
  MEMORY[0x1EEE9AC00](v73);
  v64 = &v59 - v4;
  v59 = type metadata accessor for NarrowXMoreView(0);
  v5 = MEMORY[0x1EEE9AC00](v59);
  v61 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v59 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C510, &qword_1E487D8C0);
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v60 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v59 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C518, &qword_1E487D8C8);
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v14 = &v59 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C520, &qword_1E487D8D0);
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v59 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C528, &qword_1E487D8D8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C530, &qword_1E487D8E0);
  MEMORY[0x1EEE9AC00](v69);
  v20 = &v59 - v19;
  v21 = type metadata accessor for NarrowAllDayView(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C538, &qword_1E487D8E8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v71 = &v59 - v25;
  sub_1E4878D2C();
  v70 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 40) == 1)
  {
    v26 = *(a1 + 32);
    v27 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_date;
    v28 = v21[5];
    v29 = sub_1E487732C();
    (*(*(v29 - 8) + 16))(&v23[v28], v75 + v27, v29);
    *&v23[v21[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
    swift_storeEnumTagMultiPayload();
    *&v23[v21[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v23[v21[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *&v23[v21[12]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v31 = swift_getKeyPath();
    *v23 = v26;
    *&v23[v21[6]] = 0;
    v23[v21[7]] = 0;
    v32 = &v23[v21[11]];
    *v32 = KeyPath;
    v32[8] = 0;
    v33 = &v23[v21[13]];
    *v33 = v31;
    v33[8] = 0;
    sub_1E47B4C1C(v23, v18, type metadata accessor for NarrowAllDayView);
    swift_storeEnumTagMultiPayload();
    sub_1E47B45D0(qword_1EE2B5800, 255, type metadata accessor for NarrowAllDayView, &unk_1E487A844);
    sub_1E47B4B44();

    sub_1E487803C();
    sub_1E4773850(v20, v72, &qword_1ECF7C530, &qword_1E487D8E0);
    swift_storeEnumTagMultiPayload();
    sub_1E47B4A84();
    sub_1E4773680(&qword_1EE2B0E68, &qword_1ECF7C508, &qword_1E487D8B8, MEMORY[0x1E6981F50]);
    v34 = v71;
    sub_1E487803C();
    sub_1E47738B8(v20, &qword_1ECF7C530, &qword_1E487D8E0);
    sub_1E47B4C84(v23, type metadata accessor for NarrowAllDayView);
LABEL_9:
    sub_1E477372C(v34, v74, &qword_1ECF7C538, &qword_1E487D8E8);
  }

  v35 = *(a1 + 48);
  if (v35 == *(*(a1 + 32) + 16))
  {
    v76 = *(a1 + 32);
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF70, &unk_1E487C2A0);
    sub_1E4773680(&qword_1EE2B0DD8, &qword_1ECF7BF70, &unk_1E487C2A0, MEMORY[0x1E69E6338]);
    sub_1E47B45D0(qword_1EE2B5800, 255, type metadata accessor for NarrowAllDayView, &unk_1E487A844);
    sub_1E487885C();
    v36 = v65;
    v37 = v67;
    (*(v65 + 16))(v18, v14, v67);
    swift_storeEnumTagMultiPayload();
    sub_1E47B4B44();
    sub_1E487803C();
    sub_1E4773850(v20, v72, &qword_1ECF7C530, &qword_1E487D8E0);
    swift_storeEnumTagMultiPayload();
    sub_1E47B4A84();
    sub_1E4773680(&qword_1EE2B0E68, &qword_1ECF7C508, &qword_1E487D8B8, MEMORY[0x1E6981F50]);
    v34 = v71;
    sub_1E487803C();
    sub_1E47738B8(v20, &qword_1ECF7C530, &qword_1E487D8E0);
    (*(v36 + 8))(v14, v37);
    goto LABEL_9;
  }

  v76 = sub_1E47F8CE4(v35, *(a1 + 32));
  v77 = v38;
  v78 = v39;
  v79 = v40;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C540, &qword_1E4881C50);
  sub_1E4773680(&qword_1EE2B46B0, &qword_1ECF7C540, &qword_1E4881C50, MEMORY[0x1E69E6970]);
  sub_1E47B45D0(qword_1EE2B5800, 255, type metadata accessor for NarrowAllDayView, &unk_1E487A844);
  v41 = v66;
  result = sub_1E487885C();
  v43 = *(a1 + 32);
  v44 = *(v43 + 16);
  v45 = *(a1 + 48);
  v46 = v44 - v45;
  if (!__OFSUB__(v44, v45))
  {

    v47 = sub_1E47AF728(v46, v43);
    v48 = swift_getKeyPath();
    v49 = swift_getKeyPath();
    *&v8[*(v59 + 32)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *v8 = v47;
    v8[8] = 1;
    *(v8 + 2) = v48;
    v8[24] = 0;
    *(v8 + 4) = v49;
    v8[40] = 0;
    v50 = v62;
    v51 = v63;
    v52 = *(v62 + 16);
    v53 = v60;
    v52(v60, v41, v63);
    v54 = v61;
    sub_1E47B4C1C(v8, v61, type metadata accessor for NarrowXMoreView);
    v55 = v64;
    v52(v64, v53, v51);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C548, &qword_1E487D920);
    sub_1E47B4C1C(v54, v55 + *(v56 + 48), type metadata accessor for NarrowXMoreView);
    sub_1E47B4C84(v54, type metadata accessor for NarrowXMoreView);
    v57 = *(v50 + 8);
    v57(v53, v51);
    v58 = v41;
    sub_1E4773850(v55, v72, &qword_1ECF7C508, &qword_1E487D8B8);
    swift_storeEnumTagMultiPayload();
    sub_1E47B4A84();
    sub_1E4773680(&qword_1EE2B0E68, &qword_1ECF7C508, &qword_1E487D8B8, MEMORY[0x1E6981F50]);
    v34 = v71;
    sub_1E487803C();
    sub_1E47738B8(v55, &qword_1ECF7C508, &qword_1E487D8B8);
    sub_1E47B4C84(v8, type metadata accessor for NarrowXMoreView);
    v57(v58, v51);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E47AF450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a4@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
  v7 = *(type metadata accessor for Event(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E487A7E0;
  sub_1E47B4C1C(a1, v9 + v8, type metadata accessor for Event);
  v10 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_date;
  v11 = type metadata accessor for NarrowAllDayView(0);
  v12 = v11[5];
  v13 = sub_1E487732C();
  (*(*(v13 - 8) + 16))(&a4[v12], a2 + v10, v13);
  *&a4[v11[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  swift_storeEnumTagMultiPayload();
  *&a4[v11[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *&a4[v11[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *&a4[v11[12]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v15 = swift_getKeyPath();

  *a4 = v9;
  *&a4[v11[6]] = 0;
  a4[v11[7]] = 0;
  v17 = &a4[v11[11]];
  *v17 = KeyPath;
  v17[8] = 0;
  v18 = &a4[v11[13]];
  *v18 = v15;
  v18[8] = 0;
  return result;
}

uint64_t sub_1E47AF728(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event(0);
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {

    return MEMORY[0x1E69E7CC0];
  }

  if (*(a2 + 16) >= a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = *(a2 + 16);
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_1E4858038(0, v9, 0);
  v10 = v23;
  v11 = *(a2 + 16);
  if (!v11)
  {

    return v10;
  }

  v12 = 0;
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v21[1] = a2;
  v14 = a2 + v13;
  v15 = *(v5 + 72);
  do
  {
    result = sub_1E47B4C1C(v14, v8, type metadata accessor for Event);
    v17 = *(v10 + 16);
    if (v17 < a1)
    {
      v23 = v10;
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1E4858038((v16 > 1), v17 + 1, 1);
        v10 = v23;
      }

      *(v10 + 16) = v17 + 1;
      sub_1E47B49FC(v8, v10 + v13 + v17 * v15, type metadata accessor for Event);
    }

    else
    {
      if (v12 >= v17)
      {
        __break(1u);
        goto LABEL_27;
      }

      sub_1E47B4CE4(v8, v10 + v13 + v15 * v12);
      if ((v12 + 1) < a1)
      {
        ++v12;
      }

      else
      {
        v12 = 0;
      }
    }

    v14 += v15;
    --v11;
  }

  while (v11);

  if (!v12)
  {
    return v10;
  }

  v18 = *(v10 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  result = sub_1E4858038(0, v18, 0);
  if (v18 >= v12)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v19 = *(v10 + 16);
    if (v19 >= v12 && v19 >= v18)
    {

      sub_1E47B4D48(v20, v10 + v13, v12, (2 * v18) | 1);
      sub_1E47B4D48(v10, v10 + v13, 0, (2 * v12) | 1);
      return v22;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1E47AF9D4()
{
  v1 = *(v0 + 40);
  v2 = sub_1E47AFE3C();
  v3 = v2;
  v23 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E4878F0C())
  {
    v5 = 0;
    v24 = i;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E6919650](v5, v3);
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_27;
      }

LABEL_10:
      v8 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      swift_beginAccess();
      v9 = *(v6 + v8);
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = v9 + 32;

        v12 = 0;
        v13 = 0.0;
        do
        {
          sub_1E47A1524(v11, v25);
          v16 = v26;
          v17 = v27;
          __swift_project_boxed_opaque_existential_0(v25, v26);
          if ((*(v17 + 16))(v16, v17) > 0.0)
          {
            v7 = __OFADD__(v12++, 1);
            if (v7)
            {
              __break(1u);
              goto LABEL_27;
            }
          }

          v14 = v26;
          v15 = v27;
          __swift_project_boxed_opaque_existential_0(v25, v26);
          v13 = v13 + (*(v15 + 16))(v14, v15);
          __swift_destroy_boxed_opaque_existential_1(v25);
          v11 += 40;
          --v10;
        }

        while (v10);

        i = v24;
        v18 = v12 - 1;
        if (__OFSUB__(v12, 1))
        {
          goto LABEL_28;
        }
      }

      else
      {
        v13 = 0.0;
        v18 = -1;
      }

      v19 = (v18 & ~(v18 >> 63));
      v20 = *(v6 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights + 104);

      v1 = v1 + v13 + v20 * v19;
      if (v5 == i)
      {
        goto LABEL_22;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

    v6 = *(v3 + 32 + 8 * v5);

    v7 = __OFADD__(v5++, 1);
    if (!v7)
    {
      goto LABEL_10;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_22:
  if (v23)
  {
    v21 = sub_1E4878F0C();
  }

  else
  {
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v21, 1))
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E47AFC68()
{
  v17 = type metadata accessor for NarrowMultidayLayout.MultiDayViewModel();
  v15 = v0;
  __swift_project_boxed_opaque_existential_0(&v15, v17);
  swift_getDynamicType();
  swift_getMetatypeMetadata();

  v1 = sub_1E4878BFC();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(&v15);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1E4878F9C();

  v15 = 0xD00000000000001DLL;
  v16 = 0x80000001E48A75A0;
  v4 = sub_1E4878D3C();
  MEMORY[0x1E69192D0](v4);

  MEMORY[0x1E69192D0](0x203A78616D202CLL, 0xE700000000000000);
  v5 = sub_1E4878D3C();
  MEMORY[0x1E69192D0](v5);

  MEMORY[0x1E69192D0](2653, 0xE200000000000000);
  v6 = v15;
  v7 = v16;
  v15 = v1;
  v16 = v3;

  MEMORY[0x1E69192D0](v6, v7);

  v8 = v15;
  swift_beginAccess();
  v9 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel(0);

  v11 = MEMORY[0x1E6919360](v10, v9);
  v13 = v12;

  MEMORY[0x1E69192D0](v11, v13);

  return v8;
}

uint64_t sub_1E47AFE3C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v23 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_43:
    v2 = sub_1E4878F0C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    v19 = v1 & 0xC000000000000001;
    v16 = v1;
    v17 = v1 + 32;
    while (1)
    {
      if (v19)
      {
        v4 = MEMORY[0x1E6919650](v3, v16);
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v3 >= *(v18 + 16))
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v4 = *(v17 + 8 * v3);

        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          v14 = v23;
          goto LABEL_39;
        }
      }

      v1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      swift_beginAccess();
      v6 = *(v4 + v1);
      v7 = *(v6 + 16);

      if (!v7)
      {
LABEL_44:

        __break(1u);
        return result;
      }

      v8 = v6 + 40 * v7 - 8;
      while (1)
      {
        if (v7 > *(v6 + 16))
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        sub_1E47A1524(v8, v22);
        sub_1E47B488C(v22, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
        if (swift_dynamicCast())
        {
          break;
        }

        v8 -= 40;
        if (!--v7)
        {
          goto LABEL_44;
        }
      }

      sub_1E47A1524(v8, v21);

      sub_1E47B488C(v21, v22);
      swift_dynamicCast();
      if (*(v20 + 48) != 1)
      {
        break;
      }

      swift_beginAccess();
      v9 = *(v20 + 32);

      v10 = *(v9 + 16);

      if (!v10)
      {
        goto LABEL_20;
      }

LABEL_32:
      sub_1E4878FDC();
      sub_1E487900C();
      sub_1E487901C();
      sub_1E4878FEC();
LABEL_6:
      if (v3 == v2)
      {
        goto LABEL_37;
      }
    }

LABEL_20:
    v11 = *(v4 + v1);
    v12 = *(v11 + 16);

    if (v12)
    {
      v1 = 0;
      v13 = v11 + 32;
      while (1)
      {
        if (v1 >= *(v11 + 16))
        {
          goto LABEL_41;
        }

        sub_1E47A1524(v13, v22);
        sub_1E47A1524(v22, v21);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
        if (swift_dynamicCast())
        {
          break;
        }

        sub_1E47A1524(v22, v21);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EmptyStateViewModel();
        if (swift_dynamicCast())
        {
          break;
        }

        sub_1E47A1524(v22, v21);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
        if (swift_dynamicCast())
        {
          break;
        }

        sub_1E47A1524(v22, v21);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_1E47B488C(v22, v21);
        type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
        if (swift_dynamicCast())
        {

          goto LABEL_31;
        }

        ++v1;
        v13 += 40;
        if (v12 == v1)
        {
          goto LABEL_5;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v22);
LABEL_31:

      goto LABEL_32;
    }

LABEL_5:

    goto LABEL_6;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_39:

  return v14;
}

uint64_t sub_1E47B025C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v8 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_1E4878F0C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6919650](v3, v1);
        v4 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_12:
          __break(1u);
LABEL_13:
          v6 = v8;
          goto LABEL_15;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v4 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_12;
        }
      }

      v5 = sub_1E47B2FC4();

      sub_1E4844EC4(v5);
      ++v3;
      if (v4 == v2)
      {
        goto LABEL_13;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_15:

  return v6;
}

unint64_t sub_1E47B0400()
{
  v1 = sub_1E487732C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
  v17 = v0;
  __swift_project_boxed_opaque_existential_0(&v17, v19);
  v16[1] = swift_getDynamicType();
  swift_getMetatypeMetadata();

  v5 = sub_1E4878BFC();
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(&v17);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1E4878F9C();

  v17 = 0xD000000000000012;
  v18 = 0x80000001E48A7580;
  v8 = v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_event;
  v9 = type metadata accessor for Event(0);
  (*(v2 + 16))(v4, v8 + *(v9 + 20), v1);
  sub_1E47B45D0(&qword_1EE2B59F0, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v10 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v10);

  (*(v2 + 8))(v4, v1);
  MEMORY[0x1E69192D0](0x656C706D6F63202CLL, 0xED0000203A646574);
  if (*(v8 + *(v9 + 56)) == 6)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v8 + *(v9 + 56)) == 6)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v11, v12);

  MEMORY[0x1E69192D0](93, 0xE100000000000000);
  v13 = v17;
  v14 = v18;
  v17 = v5;
  v18 = v7;

  MEMORY[0x1E69192D0](v13, v14);

  return v17;
}

uint64_t sub_1E47B06A4()
{
  sub_1E47B4C84(v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_event, type metadata accessor for Event);

  return swift_deallocClassInstance();
}

uint64_t sub_1E47B073C()
{
  v1 = *(*v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_id);

  return v1;
}

uint64_t sub_1E47B07AC(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingLocation) = 0;
  *(v2 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingTravelTime) = 0;
  v4 = a1[3];
  *(v2 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithTwoLines) = a1[2];
  *(v2 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithThreeLines) = v4;
  *(v2 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithFourLines) = a1[4];
  sub_1E47B4C1C(a2, v2 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_event, type metadata accessor for Event);
  sub_1E4878F9C();

  v5 = sub_1E47CDCB4();
  MEMORY[0x1E69192D0](v5);

  sub_1E47B4C84(a2, type metadata accessor for Event);
  *(v2 + 16) = 0xD000000000000023;
  *(v2 + 24) = 0x80000001E48A76C0;
  return v2;
}

double sub_1E47B08C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  v7 = v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_event;
  v8 = type metadata accessor for Event(0);
  sub_1E4773850(v7 + *(v8 + 60), v6, &qword_1ECF7C048, &qword_1E487C5F0);
  v9 = type metadata accessor for Location(0);
  v10 = *(*(v9 - 8) + 48);
  v11 = v10(v6, 1, v9);
  sub_1E47738B8(v6, &qword_1ECF7C048, &qword_1E487C5F0);
  if (v11 == 1 || (*(v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingLocation) & 1) != 0 || *(v7 + *(v8 + 28)) == 0.0 || *(v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingTravelTime) == 1)
  {
    sub_1E4773850(v7 + *(v8 + 60), v4, &qword_1ECF7C048, &qword_1E487C5F0);
    v12 = v10(v4, 1, v9);
    sub_1E47738B8(v4, &qword_1ECF7C048, &qword_1E487C5F0);
    if ((v12 == 1 || *(v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingLocation) == 1) && (*(v7 + *(v8 + 28)) == 0.0 || *(v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingTravelTime) == 1))
    {
      v13 = &OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithTwoLines;
    }

    else
    {
      v13 = &OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithThreeLines;
    }
  }

  else
  {
    v13 = &OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithFourLines;
  }

  return *(v0 + *v13);
}

unint64_t sub_1E47B0AF8()
{
  v1 = sub_1E487732C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
  v20 = v0;
  __swift_project_boxed_opaque_existential_0(&v20, v22);
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();

  v5 = sub_1E4878BFC();
  v17 = v6;
  v18 = v5;
  __swift_destroy_boxed_opaque_existential_1(&v20);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1E4878F9C();

  v20 = 0xD000000000000013;
  v21 = 0x80000001E48A7560;
  v7 = v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_event;
  v8 = type metadata accessor for Event(0);
  v9 = *(v2 + 16);
  v9(v4, v7 + *(v8 + 20), v1);
  sub_1E47B45D0(&qword_1EE2B59F0, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v10 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v10);

  v11 = *(v2 + 8);
  v11(v4, v1);
  MEMORY[0x1E69192D0](0x676E69646E65202CLL, 0xEA0000000000203ALL);
  v9(v4, v7 + *(v8 + 24), v1);
  v12 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v12);

  v11(v4, v1);
  MEMORY[0x1E69192D0](93, 0xE100000000000000);
  v13 = v20;
  v14 = v21;
  v20 = v18;
  v21 = v17;

  MEMORY[0x1E69192D0](v13, v14);

  return v20;
}

uint64_t sub_1E47B0DAC()
{

  sub_1E47B4C84(v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_event, type metadata accessor for Event);

  return swift_deallocClassInstance();
}

uint64_t sub_1E47B0E5C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v6 = (type metadata accessor for DayEvents(0) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E487A7E0;
  v9 = v8 + v7;
  sub_1E487731C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
  v10 = *(type metadata accessor for Event(0) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E487A7E0;
  sub_1E47B4C1C(v5 + *a3, v12 + v11, type metadata accessor for Event);
  *(v9 + v6[7]) = v12;
  *(v9 + v6[8]) = MEMORY[0x1E69E7CC0];
  *(v9 + v6[9]) = 0;
  return v8;
}

uint64_t sub_1E47B1034(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Event(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 80);
  *(v3 + 48) = *(a1 + 72);
  *(v3 + 56) = *(a1 + 88);
  *(v3 + 72) = v14;
  *(v3 + 32) = a2;
  *(v3 + 40) = *(a2 + 16);
  v23 = 0;
  v24 = 0xE000000000000000;

  sub_1E4878F9C();

  v23 = 0xD00000000000002FLL;
  v24 = 0x80000001E48A76F0;
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1E47B4C1C(a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v13, type metadata accessor for Event);

  (*(v7 + 16))(v9, &v13[*(v10 + 20)], v6);
  sub_1E47B4C84(v13, type metadata accessor for Event);
  if (qword_1EE2B2888 != -1)
  {
LABEL_5:
    swift_once();
  }

  v15 = qword_1EE2B2890;
  v16 = sub_1E48772BC();
  v17 = [v15 stringFromDate_];

  v18 = sub_1E4878BDC();
  v20 = v19;

  (*(v7 + 8))(v9, v6);
  MEMORY[0x1E69192D0](v18, v20);

  v21 = v24;
  *(v3 + 16) = v23;
  *(v3 + 24) = v21;
  return v3;
}

uint64_t sub_1E47B1300()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v21 - v2;
  v4 = *(v0 + 72) + *(v0 + 48);
  result = sub_1E47F8CE4(*(v0 + 40), *(v0 + 32));
  v9 = v7 - (v8 >> 1);
  if (v7 != v8 >> 1)
  {
    if (v7 >= (v8 >> 1))
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v11 = v6;
    v12 = v7;
    v21[1] = result;
    v13 = type metadata accessor for Event(0);
    v14 = *(*(v13 - 8) + 72);
    v15 = (*(v13 - 8) + 56);

    v16 = v11 + v12 * v14;
    v17 = 2;
    while (1)
    {
      sub_1E47B4C1C(v16, v3, type metadata accessor for Event);
      result = (*v15)(v3, 0, 1, v13);
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v4 = v4 + *(v0 + 56);
      sub_1E47738B8(v3, &qword_1ECF7B950, &unk_1E487AE90);
      ++v17;
      v16 += v14;
      if (v9 + v17 == 2)
      {
        swift_unknownObjectRelease();
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_unknownObjectRelease();
  v10 = 2;
LABEL_8:
  v18 = type metadata accessor for Event(0);
  result = (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  v19 = *(v0 + 40);
  if (v19 >= 1 && v19 < *(*(v0 + 32) + 16) && __OFADD__(v10++, 1))
  {
    goto LABEL_16;
  }

  if (__OFSUB__(v10, 1))
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1E47B1568(uint64_t a1)
{
  v12 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
  v10 = v1;
  __swift_project_boxed_opaque_existential_0(&v10, v12);
  swift_getDynamicType();
  swift_getMetatypeMetadata();

  v2 = sub_1E4878BFC();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(&v10);
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1E4878F9C();

  v10 = 0x456C61746F74203ALL;
  v11 = 0xEF5B2073746E6576;
  v5 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v5);

  MEMORY[0x1E69192D0](0x536F546D756E205DLL, 0xED00005B20776F68);
  v6 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v6);

  MEMORY[0x1E69192D0](93, 0xE100000000000000);
  v7 = v10;
  v8 = v11;
  v10 = v2;
  v11 = v4;

  MEMORY[0x1E69192D0](v7, v8);

  return v10;
}

uint64_t sub_1E47B1744()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v2 = (type metadata accessor for DayEvents(0) - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E487A7E0;
  v5 = v4 + v3;
  sub_1E487731C();
  *(v5 + v2[7]) = *(v1 + 32);
  *(v5 + v2[8]) = MEMORY[0x1E69E7CC0];
  *(v5 + v2[9]) = 0;

  return v4;
}

uint64_t sub_1E47B1858(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Event(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 40) = 0;
  v14 = a1[13];
  *(v3 + 56) = a1[1];
  *(v3 + 64) = v14;
  *(v3 + 72) = a1[6];
  *(v3 + 32) = a2;
  *(v3 + 48) = *(a2 + 16);
  v23 = 0;
  v24 = 0xE000000000000000;

  sub_1E4878F9C();

  v23 = 0xD000000000000024;
  v24 = 0x80000001E48A7740;
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1E47B4C1C(a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v13, type metadata accessor for Event);

  (*(v7 + 16))(v9, &v13[*(v10 + 20)], v6);
  sub_1E47B4C84(v13, type metadata accessor for Event);
  if (qword_1EE2B28A0 != -1)
  {
LABEL_5:
    swift_once();
  }

  v15 = qword_1EE2B28A8;
  v16 = sub_1E48772BC();
  v17 = [v15 stringFromDate_];

  v18 = sub_1E4878BDC();
  v20 = v19;

  (*(v7 + 8))(v9, v6);
  MEMORY[0x1E69192D0](v18, v20);

  v21 = v24;
  *(v3 + 16) = v23;
  *(v3 + 24) = v21;
  return v3;
}

void sub_1E47B1B28()
{
  if (*(v0 + 40) != 1)
  {
    v1 = *(v0 + 48);
    if (__OFSUB__(v1, 1))
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E47B1B88(uint64_t a1)
{
  v14 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
  v12 = v1;
  __swift_project_boxed_opaque_existential_0(&v12, v14);
  swift_getDynamicType();
  swift_getMetatypeMetadata();

  v2 = sub_1E4878BFC();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(&v12);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1E4878F9C();
  MEMORY[0x1E69192D0](0x6576456D756E203ALL, 0xED00005B2073746ELL);
  v5 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v5);

  MEMORY[0x1E69192D0](0x70616C6C6F63205DLL, 0xED00005B20646573);
  if (*(v1 + 40))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v1 + 40))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v6, v7);

  MEMORY[0x1E69192D0](0xD000000000000021, 0x80000001E48A7530);
  v8 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v8);

  MEMORY[0x1E69192D0](93, 0xE100000000000000);
  v9 = v12;
  v10 = v13;
  v12 = v2;
  v13 = v4;

  MEMORY[0x1E69192D0](v9, v10);

  return v12;
}

uint64_t sub_1E47B1DC0()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v2 = (type metadata accessor for DayEvents(0) - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E487A7E0;
  v5 = v4 + v3;
  sub_1E487731C();
  v6 = *(v1 + 32);
  *(v5 + v2[7]) = MEMORY[0x1E69E7CC0];
  *(v5 + v2[8]) = v6;
  *(v5 + v2[9]) = 0;

  return v4;
}

uint64_t sub_1E47B1ED4(uint64_t a1)
{
  v8 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
  v7[0] = v1;
  __swift_project_boxed_opaque_existential_0(v7, v8);
  swift_getDynamicType();
  swift_getMetatypeMetadata();

  v2 = sub_1E4878BFC();
  __swift_destroy_boxed_opaque_existential_1(v7);
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_1E4878F9C();

  swift_beginAccess();
  v3 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v3);

  MEMORY[0x1E69192D0](0x6C6269736976205DLL, 0xEB000000005B2065);
  if (*(v1 + 48))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v1 + 48))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1E69192D0](v4, v5);

  MEMORY[0x1E69192D0](93, 0xE100000000000000);

  MEMORY[0x1E69192D0](0x2065726F4D78203ALL, 0xE90000000000005BLL);

  return v2;
}

uint64_t sub_1E47B2090()
{
  if (*(v0 + 48) != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  result = MEMORY[0x1E69E7CC0];
  if (*(*(v0 + 32) + 16))
  {
    v2 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
    v3 = (type metadata accessor for DayEvents(0) - 8);
    v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1E487A7E0;
    v6 = v5 + v4;
    sub_1E487731C();
    *(v6 + v3[7]) = *(v0 + 32);
    *(v6 + v3[8]) = v2;
    *(v6 + v3[9]) = 0;

    return v5;
  }

  return result;
}

uint64_t sub_1E47B21D4(uint64_t a1)
{

  return swift_deallocClassInstance();
}

double sub_1E47B2220()
{
  v1 = *v0;
  v2 = 0.0;
  if (*(*v0 + 48) == 1)
  {
    swift_beginAccess();
    if (*(*(v1 + 32) + 16))
    {
      return *(v1 + 40);
    }
  }

  return v2;
}

uint64_t sub_1E47B22D0()
{

  return swift_deallocClassInstance();
}

double sub_1E47B2308()
{
  v1 = 40;
  if (*(*v0 + 33))
  {
    v1 = 48;
  }

  return *(*v0 + v1);
}

uint64_t sub_1E47B2334(uint64_t a1)
{
  v2 = *v1;
  v6 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EmptyStateViewModel();
  v5[0] = v2;
  __swift_project_boxed_opaque_existential_0(v5, v6);
  swift_getDynamicType();
  swift_getMetatypeMetadata();

  v3 = sub_1E4878BFC();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1E47B23BC(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel15HeaderViewModel_height) = *a1;
  v5 = OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel15HeaderViewModel_date;
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v3 + v5, a2, v6);
  sub_1E4878F9C();

  if (qword_1EE2B28A0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE2B28A8;
  v9 = sub_1E48772BC();
  v10 = [v8 stringFromDate_];

  v11 = sub_1E4878BDC();
  v13 = v12;

  MEMORY[0x1E69192D0](v11, v13);

  (*(v7 + 8))(a2, v6);
  *(v3 + 16) = 0xD000000000000024;
  *(v3 + 24) = 0x80000001E48A7770;
  return v3;
}

uint64_t sub_1E47B255C()
{
  v1 = sub_1E487732C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.HeaderViewModel(0);
  v13 = v0;
  __swift_project_boxed_opaque_existential_0(&v13, v15);
  v12[1] = swift_getDynamicType();
  swift_getMetatypeMetadata();

  v5 = sub_1E4878BFC();
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(&v13);
  v13 = 0x5B2065746164203ALL;
  v14 = 0xE800000000000000;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel15HeaderViewModel_date, v1);
  sub_1E47B45D0(&qword_1EE2B59F0, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v8 = sub_1E48790CC();
  MEMORY[0x1E69192D0](v8);

  (*(v2 + 8))(v4, v1);
  MEMORY[0x1E69192D0](93, 0xE100000000000000);
  v9 = v13;
  v10 = v14;
  v13 = v5;
  v14 = v7;

  MEMORY[0x1E69192D0](v9, v10);

  return v13;
}

uint64_t sub_1E47B275C()
{

  v1 = OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel15HeaderViewModel_date;
  v2 = sub_1E487732C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E47B2838(uint64_t a1, char a2, _OWORD *a3)
{
  v4 = v3;
  *(v4 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels) = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_date;
  v9 = sub_1E487732C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v4 + v8, a1, v9);
  v11 = (v4 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewHeights);
  v12 = a3[5];
  v11[4] = a3[4];
  v11[5] = v12;
  v13 = a3[7];
  v11[6] = a3[6];
  v11[7] = v13;
  v14 = a3[1];
  *v11 = *a3;
  v11[1] = v14;
  v15 = a3[3];
  v11[2] = a3[2];
  v11[3] = v15;
  *(v4 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_eventsExistBeforeFirst) = a2;
  sub_1E4878F9C();

  if (qword_1EE2B28A0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE2B28A8;
  v17 = sub_1E48772BC();
  v18 = [v16 stringFromDate_];

  v19 = sub_1E4878BDC();
  v21 = v20;

  MEMORY[0x1E69192D0](v19, v21);

  (*(v10 + 8))(a1, v9);
  v22 = (v4 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_id);
  *v22 = 0xD000000000000014;
  v22[1] = 0x80000001E48A77A0;
  return v4;
}

uint64_t sub_1E47B2A28()
{
  v1 = *(v0 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_id);

  return v1;
}

uint64_t sub_1E47B2A64()
{
  v1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = v2 + 32;
    while (1)
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1E47A1524(v6, v7);
      sub_1E47A1524(v7, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
      type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
      if (swift_dynamicCast())
      {
        break;
      }

      ++v5;
      result = __swift_destroy_boxed_opaque_existential_1(v7);
      v6 += 40;
      if (v3 == v5)
      {
        goto LABEL_6;
      }
    }

    sub_1E47B488C(v7, v8);
    if (swift_dynamicCast())
    {
      return *&v7[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_6:

    return 0;
  }
}

uint64_t sub_1E47B2BAC()
{
  v1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v0 = v2 + 40 * v3 - 8;
    while (v3 <= *(v2 + 16))
    {
      sub_1E47A1524(v0, v7);
      sub_1E47B488C(v7, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
      type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
      result = swift_dynamicCast();
      if (result)
      {
        goto LABEL_7;
      }

      v0 -= 40;
      if (!--v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    __break(1u);
LABEL_7:

    sub_1E47A1524(v0, v6);

    sub_1E47B488C(v6, v7);
    swift_dynamicCast();
    return v5;
  }

  return result;
}

uint64_t sub_1E47B2CEC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;

    v7 = 0;
    v8 = 0.0;
    while (1)
    {
      sub_1E47A1524(v6, v14);
      v11 = v15;
      v12 = v16;
      __swift_project_boxed_opaque_existential_0(v14, v15);
      if ((*(v12 + 16))(v11, v12) > 0.0 && __OFADD__(v7++, 1))
      {
        break;
      }

      v9 = v15;
      v10 = v16;
      __swift_project_boxed_opaque_existential_0(v14, v15);
      v8 = v8 + (*(v10 + 16))(v9, v10);
      __swift_destroy_boxed_opaque_existential_1(v14);
      v6 += 40;
      if (!--v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_8:

    if (__OFSUB__(v7, 1))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E47B2E50()
{
  v14 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel(0);
  v13[0] = v0;
  __swift_project_boxed_opaque_existential_0(v13, v14);
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();

  v1 = sub_1E4878BFC();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(v13);
  v4 = v1;
  v16 = v1;
  v17 = v3;
  v5 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = *(v6 + 16);
  if (!v7)
  {
    return v4;
  }

  v8 = v6 + 32;

  do
  {
    sub_1E47A1524(v8, v13);
    __swift_project_boxed_opaque_existential_0(v13, v14);
    v9 = sub_1E48790CC();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E69192D0](v9, v11);

    MEMORY[0x1E69192D0](10, 0xE100000000000000);

    v8 += 40;
    --v7;
  }

  while (v7);

  return v16;
}

void *sub_1E47B2FC4()
{
  v1 = sub_1E487732C();
  v92 = *(v1 - 8);
  v93 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v91 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Event(0);
  v100 = *(v97 - 8);
  v3 = MEMORY[0x1EEE9AC00](v97);
  v86 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v95 = &v85 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v94 = &v85 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v87 = &v85 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v90 = &v85 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v96 = &v85 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v85 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v85 - v18;
  v20 = type metadata accessor for DayEvents(0);
  v101 = *(v20 - 8);
  v102 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v88 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v85 - v23;
  v25 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
  swift_beginAccess();
  v89 = v0;
  result = *(v0 + v25);
  v27 = result[2];
  if (v27)
  {
    v28 = (result + 4);
    v99 = *(v0 + v25);

    v29 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1E47A1524(v28, v104);
      v30 = v105;
      v31 = v106;
      __swift_project_boxed_opaque_existential_0(v104, v105);
      v32 = (*(v31 + 32))(v30, v31);
      result = __swift_destroy_boxed_opaque_existential_1(v104);
      v33 = *(v32 + 16);
      v34 = v29[2];
      v35 = v34 + v33;
      if (__OFADD__(v34, v33))
      {
        goto LABEL_66;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v35 <= v29[3] >> 1)
      {
        if (*(v32 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v34 <= v35)
        {
          v36 = v34 + v33;
        }

        else
        {
          v36 = v34;
        }

        result = sub_1E4860B34(result, v36, 1, v29);
        v29 = result;
        if (*(v32 + 16))
        {
LABEL_14:
          if ((v29[3] >> 1) - v29[2] < v33)
          {
            goto LABEL_68;
          }

          swift_arrayInitWithCopy();

          if (v33)
          {
            v37 = v29[2];
            v38 = __OFADD__(v37, v33);
            v39 = v37 + v33;
            if (v38)
            {
              goto LABEL_69;
            }

            v29[2] = v39;
          }

          goto LABEL_4;
        }
      }

      if (v33)
      {
        goto LABEL_67;
      }

LABEL_4:
      v28 += 40;
      if (!--v27)
      {

        goto LABEL_20;
      }
    }
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v104[0] = MEMORY[0x1E69E7CD0];
  v99 = v29[2];
  if (v99)
  {
    v40 = 0;
    v98 = v29 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
    while (v40 < v29[2])
    {
      sub_1E47B4C1C(&v98[*(v101 + 72) * v40], v24, type metadata accessor for DayEvents);
      v41 = *&v24[*(v102 + 20)];
      v42 = *(v41 + 16);
      if (v42)
      {
        v43 = v41 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
        v44 = *(v100 + 72);
        do
        {
          sub_1E47B4C1C(v43, v17, type metadata accessor for Event);
          sub_1E4862654(v19, v17);
          sub_1E47B4C84(v19, type metadata accessor for Event);
          v43 += v44;
          --v42;
        }

        while (v42);
      }

      v45 = *&v24[*(v102 + 24)];
      v46 = *(v45 + 16);
      if (v46)
      {
        v47 = v45 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
        v48 = *(v100 + 72);
        do
        {
          sub_1E47B4C1C(v47, v17, type metadata accessor for Event);
          sub_1E4862654(v19, v17);
          sub_1E47B4C84(v19, type metadata accessor for Event);
          v47 += v48;
          --v46;
        }

        while (v46);
      }

      ++v40;
      result = sub_1E47B4C84(v24, type metadata accessor for DayEvents);
      if (v40 == v99)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
LABEL_31:

    (*(v92 + 16))(v91, v89 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_date, v93);
    v49 = v104[0];
    v50 = v104[0] + 56;
    v51 = 1 << *(v104[0] + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v104[0] + 56);
    v54 = (v51 + 63) >> 6;

    v55 = 0;
    v56 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v57 = v90;
    v58 = v55;
    if (!v53)
    {
      goto LABEL_36;
    }

    do
    {
      v55 = v58;
LABEL_39:
      v59 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v60 = *(v100 + 72);
      sub_1E47B4C1C(*(v49 + 48) + v60 * (v59 | (v55 << 6)), v57, type metadata accessor for Event);
      v61 = v96;
      sub_1E47B49FC(v57, v96, type metadata accessor for Event);
      if ((*(v61 + *(v97 + 48)) & 1) == 0)
      {
        sub_1E47B49FC(v61, v87, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103 = v56;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v56 + 16) + 1, 1);
          v56 = v103;
        }

        v64 = *(v56 + 16);
        v63 = *(v56 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_1E4858038((v63 > 1), v64 + 1, 1);
          v56 = v103;
        }

        *(v56 + 16) = v64 + 1;
        result = sub_1E47B49FC(v87, v56 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + v64 * v60, type metadata accessor for Event);
        goto LABEL_34;
      }

      result = sub_1E47B4C84(v61, type metadata accessor for Event);
      v58 = v55;
    }

    while (v53);
    while (1)
    {
LABEL_36:
      v55 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        __break(1u);
        goto LABEL_64;
      }

      if (v55 >= v54)
      {
        break;
      }

      v53 = *(v50 + 8 * v55);
      ++v58;
      if (v53)
      {
        goto LABEL_39;
      }
    }

    v65 = 0;
    v66 = 1 << *(v49 + 32);
    v67 = -1;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    v68 = v67 & *(v49 + 56);
    v69 = (v66 + 63) >> 6;
    v70 = MEMORY[0x1E69E7CC0];
    while (v68)
    {
      v71 = v65;
LABEL_55:
      v72 = __clz(__rbit64(v68));
      v68 &= v68 - 1;
      v73 = *(v100 + 72);
      v74 = v95;
      sub_1E47B4C1C(*(v49 + 48) + v73 * (v72 | (v71 << 6)), v95, type metadata accessor for Event);
      v75 = v74;
      v76 = v94;
      sub_1E47B49FC(v75, v94, type metadata accessor for Event);
      if (*(v76 + *(v97 + 48)) == 1)
      {
        sub_1E47B49FC(v76, v86, type metadata accessor for Event);
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v103 = v70;
        if ((v77 & 1) == 0)
        {
          sub_1E4858038(0, *(v70 + 16) + 1, 1);
          v70 = v103;
        }

        v79 = *(v70 + 16);
        v78 = *(v70 + 24);
        v80 = v79 + 1;
        if (v79 >= v78 >> 1)
        {
          sub_1E4858038((v78 > 1), v79 + 1, 1);
          v80 = v79 + 1;
          v70 = v103;
        }

        *(v70 + 16) = v80;
        result = sub_1E47B49FC(v86, v70 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + v79 * v73, type metadata accessor for Event);
        v65 = v71;
      }

      else
      {
        result = sub_1E47B4C84(v76, type metadata accessor for Event);
        v65 = v71;
      }
    }

    while (1)
    {
      v71 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (v71 >= v69)
      {

        v81 = v88;
        (*(v92 + 32))(v88, v91, v93);
        v82 = v102;
        *(v81 + *(v102 + 20)) = v56;
        *(v81 + *(v82 + 24)) = v70;
        *(v81 + *(v82 + 28)) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
        v83 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v84 = swift_allocObject();
        *(v84 + 16) = xmmword_1E487A7E0;
        sub_1E47B49FC(v81, v84 + v83, type metadata accessor for DayEvents);
        return v84;
      }

      v68 = *(v50 + 8 * v71);
      ++v65;
      if (v68)
      {
        goto LABEL_55;
      }
    }

LABEL_64:
    __break(1u);
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

id sub_1E47B3A40()
{
  result = sub_1E47B3A60();
  qword_1EE2B2890 = result;
  return result;
}

id sub_1E47B3A60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C558, qword_1E487D928);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1E487744C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v8 = sub_1E4878B9C();
  [v7 setDateFormat_];

  sub_1E487737C();
  v9 = sub_1E48773DC();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];

  sub_1E487755C();
  v10 = sub_1E487757C();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v2, 1, v10) != 1)
  {
    v12 = sub_1E487756C();
    (*(v11 + 8))(v2, v10);
  }

  [v7 setTimeZone_];

  return v7;
}

id sub_1E47B3CB0()
{
  result = sub_1E47B3CD0();
  qword_1EE2B28A8 = result;
  return result;
}

id sub_1E47B3CD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C558, qword_1E487D928);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1E487744C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v8 = sub_1E4878B9C();
  [v7 setDateFormat_];

  sub_1E487737C();
  v9 = sub_1E48773DC();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];

  sub_1E487755C();
  v10 = sub_1E487757C();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v2, 1, v10) != 1)
  {
    v12 = sub_1E487756C();
    (*(v11 + 8))(v2, v10);
  }

  [v7 setTimeZone_];

  return v7;
}

uint64_t sub_1E47B3F20()
{
  v1 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_date;
  v2 = sub_1E487732C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E47B4004()
{
  v1 = *(*v0 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_id);

  return v1;
}

uint64_t sub_1E47B410C(uint64_t a1)
{
  result = sub_1E487732C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E47B4244(uint64_t a1)
{
  result = type metadata accessor for Event(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E47B43E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  result = a5(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1E47B44A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E47B44C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
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

  *(result + 128) = v3;
  return result;
}

uint64_t sub_1E47B451C(uint64_t a1)
{
  result = sub_1E47B45D0(qword_1EE2B4CD8, 255, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.HeaderViewModel, &unk_1E487D3C4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B4578(uint64_t a1, uint64_t a2)
{
  result = sub_1E47B45D0(qword_1EE2B29D0, a2, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EmptyStateViewModel, &unk_1E487D408);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B45D0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E47B4618(uint64_t a1, uint64_t a2)
{
  result = sub_1E47B45D0(qword_1EE2B4E28, a2, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel, &unk_1E487D44C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B4670(uint64_t a1, uint64_t a2)
{
  result = sub_1E47B45D0(qword_1EE2B5178, a2, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel, &unk_1E487D490);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B46C8(uint64_t a1, uint64_t a2)
{
  result = sub_1E47B45D0(qword_1EE2B5318, a2, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel, &unk_1E487D4D4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B4720(uint64_t a1)
{
  result = sub_1E47B45D0(qword_1EE2B4FD8, 255, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel, &unk_1E487D518);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B477C(uint64_t a1)
{
  result = sub_1E47B45D0(&qword_1ECF7C420, 255, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel, &unk_1E487D55C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B47D8(uint64_t a1)
{
  result = sub_1E47B45D0(&qword_1ECF7C428, 255, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel, &unk_1E487D5A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B4834(uint64_t a1, uint64_t a2)
{
  result = sub_1E47B45D0(&qword_1ECF7C430, a2, type metadata accessor for NarrowMultidayLayout.MultiDayViewModel, &unk_1E487D5E4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E47B488C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1E47B48A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1E487732C() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E47AC5A0(a1, v6, a2);
}

uint64_t sub_1E47B4924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1E487732C() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1E47ACADC(a1, v6, v7, a2);
}

unint64_t sub_1E47B49A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2B2A18[0];
  if (!qword_1EE2B2A18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2B2A18);
  }

  return result;
}

uint64_t sub_1E47B49FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E47B4A84()
{
  result = qword_1EE2B1230;
  if (!qword_1EE2B1230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C530, &qword_1E487D8E0);
    sub_1E47B45D0(qword_1EE2B5800, 255, type metadata accessor for NarrowAllDayView, &unk_1E487A844);
    sub_1E47B4B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1230);
  }

  return result;
}

unint64_t sub_1E47B4B44()
{
  result = qword_1EE2B0EB0;
  if (!qword_1EE2B0EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C518, &qword_1E487D8C8);
    sub_1E47B45D0(qword_1EE2B5800, 255, type metadata accessor for NarrowAllDayView, &unk_1E487A844);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B0EB0);
  }

  return result;
}

uint64_t sub_1E47B4C1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E47B4C84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E47B4CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1E47B4D48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v53 = a2;
  v62 = type metadata accessor for Event(0);
  v59 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - v17;
  v19 = a4 >> 1;
  v54 = a3;
  v20 = v19 - a3;
  if (__OFSUB__(v19, a3))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v51 = v16;
  v21 = *v4;
  v22 = *(*v4 + 16);
  v23 = v22 + v20;
  if (__OFADD__(v22, v20))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v21;
  if (result)
  {
    v24 = *(v21 + 24) >> 1;
    if (v24 >= v23)
    {
      goto LABEL_12;
    }

    if (v22 <= v23)
    {
      v25 = v22 + v20;
    }

    else
    {
      v25 = v22;
    }
  }

  else if (v22 <= v23)
  {
    v25 = v22 + v20;
  }

  else
  {
    v25 = v22;
  }

  result = sub_1E4858038(result, v25, 1);
  v21 = *v4;
  v24 = *(*v4 + 24) >> 1;
LABEL_12:
  v58 = v9;
  v26 = v21;
  v27 = v24 - *(v21 + 16);
  if (v19 == v54)
  {
    if (v20 <= 0)
    {
      v28 = v54;
      if (v27)
      {
LABEL_15:
        result = swift_unknownObjectRelease();
LABEL_23:
        *v4 = v26;
        return result;
      }

LABEL_21:
      v49 = a1;
      v32 = *(v21 + 16);
      v33 = v59;
      v34 = *(v59 + 56);
      v35 = v62;
      v56 = v59 + 56;
      v57 = v19;
      v55 = v34;
      v34(v18, 1, 1, v62);
      v36 = v51;
      sub_1E4773850(v18, v51, &qword_1ECF7B950, &unk_1E487AE90);
      v60 = *(v33 + 48);
      v61 = v33 + 48;
      if (v60(v36, 1, v35) != 1)
      {
        v50 = v4;
        do
        {
          sub_1E47738B8(v36, &qword_1ECF7B950, &unk_1E487AE90);
          v39 = *(v26 + 24);
          if (v32 + 1 > (v39 >> 1))
          {
            sub_1E4858038((v39 > 1), v32 + 1, 1);
          }

          v40 = *v4;
          v41 = *(*v4 + 24);
          v42 = *(v59 + 80);
          sub_1E4773850(v18, v13, &qword_1ECF7B950, &unk_1E487AE90);
          v43 = v60(v13, 1, v62);
          v52 = v40;
          if (v43 != 1)
          {
            v44 = v40 + ((v42 + 32) & ~v42);
            if (v32 <= (v41 >> 1))
            {
              v37 = v41 >> 1;
            }

            else
            {
              v37 = v32;
            }

            do
            {
              v47 = v58;
              sub_1E47B49FC(v13, v58, type metadata accessor for Event);
              if (v37 == v32)
              {
                sub_1E47B4C84(v47, type metadata accessor for Event);
                v32 = v37;
                goto LABEL_26;
              }

              sub_1E47738B8(v18, &qword_1ECF7B950, &unk_1E487AE90);
              v48 = *(v59 + 72);
              result = sub_1E47B49FC(v47, v44 + v48 * v32, type metadata accessor for Event);
              if (v28 == v57)
              {
                v45 = 1;
                v28 = v57;
              }

              else
              {
                if (v28 < v54 || v28 >= v57)
                {
                  __break(1u);
                  goto LABEL_42;
                }

                sub_1E47B4C1C(v53 + v48 * v28, v18, type metadata accessor for Event);
                v45 = 0;
                ++v28;
              }

              v46 = v62;
              v55(v18, v45, 1, v62);
              sub_1E4773850(v18, v13, &qword_1ECF7B950, &unk_1E487AE90);
              ++v32;
            }

            while (v60(v13, 1, v46) != 1);
          }

          sub_1E47738B8(v13, &qword_1ECF7B950, &unk_1E487AE90);
          v37 = v32;
LABEL_26:
          v36 = v51;
          v26 = v52;
          *(v52 + 16) = v37;
          sub_1E4773850(v18, v36, &qword_1ECF7B950, &unk_1E487AE90);
          v38 = v60(v36, 1, v62);
          v4 = v50;
        }

        while (v38 != 1);
      }

      sub_1E47738B8(v18, &qword_1ECF7B950, &unk_1E487AE90);
      swift_unknownObjectRelease();
      result = sub_1E47738B8(v36, &qword_1ECF7B950, &unk_1E487AE90);
      goto LABEL_23;
    }

    goto LABEL_44;
  }

  if (v27 < v20)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  result = swift_arrayInitWithCopy();
  if (v20 <= 0)
  {
LABEL_20:
    v28 = v19;
    if (v20 != v27)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v29 = *(v21 + 16);
  v30 = __OFADD__(v29, v20);
  v31 = v29 + v20;
  if (!v30)
  {
    *(v21 + 16) = v31;
    goto LABEL_20;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1E47B52D0(uint64_t result, uint64_t a2)
{
  if (result < 0 || (*v3 <= result ? (v4 = *(v3 + 16) <= result) : (v4 = 1), v4))
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = *(v3 + 32);
    if (!(v3 >> 62))
    {
      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
      {
        goto LABEL_8;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  v5 = result;
  v6 = sub_1E4878F0C();
  result = v5;
  if (v6 <= v5)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_15:
    MEMORY[0x1E6919650]();
    return v2;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E47B53A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = a4 - result;
  if (__OFSUB__(a4, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a3 >= 1)
  {
    if (v7 < 0 || v7 >= a3)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v7 <= 0 && v7 > a3)
  {
    return 0;
  }

LABEL_9:
  v6 = result;
  v8 = __OFADD__(result, a3);
  result += a3;
  if (v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a3 < 0)
  {
    if (a6 >> 62)
    {
      goto LABEL_19;
    }

    if (*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10) == v6)
    {
      a2 = v6;
    }
  }

  while (1)
  {
    v8 = __OFADD__(a2, a3);
    a2 += a3;
    if (!v8)
    {
      break;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    v14 = result;
    v9 = a3;
    v10 = a2;
    v11 = sub_1E4878F0C();
    a2 = v10;
    a3 = v9;
    v12 = v11;
    result = v14;
    if (v12 == v6)
    {
      v13 = sub_1E4878F0C();
      a3 = v9;
      a2 = v13;
      result = v14;
    }
  }

  return result;
}

void *sub_1E47B549C(uint64_t a1, uint64_t a2, void *a3)
{
  v205 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v208 = &v195 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v207 = &v195 - v8;
  v9 = type metadata accessor for Event(0);
  v211 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v220 = &v195 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v217 = &v195 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v216 = &v195 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v223 = &v195 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v229 = &v195 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v195 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v231 = &v195 - v23;
  v24 = sub_1E487732C();
  v232 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v195 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v204 = &v195 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v195 - v30;
  v218 = type metadata accessor for DayEvents(0);
  v32 = *(v218 - 1);
  MEMORY[0x1EEE9AC00](v218);
  v34 = &v195 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_1E487753C();
  v196 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v36 = &v195 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NarrowMultidayLayout.MultiDayViewModel();
  v37 = swift_allocObject();
  v39 = a3[14];
  v38 = a3[15];
  v221 = a3;
  v40 = v34;
  v37[5] = v38;
  v37[6] = v38;
  v37[2] = 0xD000000000000011;
  v37[3] = 0x80000001E487D190;
  v37[4] = MEMORY[0x1E69E7CC0];
  v203 = v37 + 4;
  v195 = v37;
  v37[7] = v39;
  v209 = v36;
  sub_1E4877A7C();
  v242 = MEMORY[0x1E69E7CD0];
  v202 = *(a2 + 16);
  if (v202)
  {
    v41 = 0;
    v236 = (v232 + 16);
    v230 = v232 + 32;
    v206 = 0x80000001E48A76C0;
    v210 = 0x80000001E48A7690;
    v199 = 0x80000001E48A7660;
    v201 = a2 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v200 = *(v32 + 72);
    v219 = v9;
    v233 = v31;
    v234 = v22;
    v198 = v27;
    v213 = v34;
    v224 = (v232 + 8);
    v226 = v24;
    while (1)
    {
      sub_1E47B4C1C(v201 + v200 * v41, v40, type metadata accessor for DayEvents);
      if (*(v242 + 16) >= 0xAuLL)
      {
        (*(v196 + 8))(v209, v197);
        sub_1E47B4C84(v40, type metadata accessor for DayEvents);
        goto LABEL_114;
      }

      v212 = v41;
      v42 = *(v40 + v218[5]);
      v43 = *(v42 + 16);
      v215 = v42;
      if (v43)
      {
        *&v237 = MEMORY[0x1E69E7CC0];
        sub_1E48580E0(0, v43, 0);
        v44 = v237;
        v45 = v42 + ((*(v211 + 80) + 32) & ~*(v211 + 80));
        v46 = *(v211 + 72);
        v47 = v198;
        do
        {
          v48 = v231;
          sub_1E47B4C1C(v45, v231, type metadata accessor for Event);
          (*v236)(v47, (v48 + *(v9 + 20)), v24);
          sub_1E47B4C84(v48, type metadata accessor for Event);
          *&v237 = v44;
          v50 = *(v44 + 16);
          v49 = *(v44 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_1E48580E0((v49 > 1), v50 + 1, 1);
            v44 = v237;
          }

          *(v44 + 16) = v50 + 1;
          (*(v232 + 32))(v44 + ((*(v232 + 80) + 32) & ~*(v232 + 80)) + *(v232 + 72) * v50, v47, v24);
          v45 += v46;
          --v43;
        }

        while (v43);
        v31 = v233;
        v22 = v234;
      }

      else
      {
        v44 = MEMORY[0x1E69E7CC0];
      }

      v51 = *(v44 + 16);
      v52 = v236;
      v228 = v236 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v53 = v204;
      if (v51)
      {
        v54 = v44 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
        v55 = *(v232 + 72);
        v56 = *(v232 + 16);
        v57 = v224;
        do
        {
          v56(v53, v54, v24);
          sub_1E4862374(v31, v53);
          (*v57)(v31, v24);
          v54 += v55;
          --v51;
        }

        while (v51);

        v58 = v56;
        v22 = v234;
      }

      else
      {

        v58 = *v52;
      }

      v59 = v213;
      v58(v31, v213, v24);
      v60 = *(v59 + v218[7]);
      type metadata accessor for NarrowMultidayLayout.SingleDayViewModel(0);
      v227 = swift_allocObject();
      sub_1E47B2838(v31, v60, v221);
      if ((sub_1E48774CC() & 1) == 0)
      {
        v58(v31, v59, v24);
        v61 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.HeaderViewModel(0);
        v62 = swift_allocObject();
        sub_1E47B23BC(v221, v31);
        v63 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
        v64 = v227;
        swift_beginAccess();
        v65 = *(v64 + v63);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v64 + v63) = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v65 = sub_1E4860B84(0, v65[2] + 1, 1, v65);
          *(v227 + v63) = v65;
        }

        v68 = v65[2];
        v67 = v65[3];
        if (v68 >= v67 >> 1)
        {
          v65 = sub_1E4860B84((v67 > 1), v68 + 1, 1, v65);
        }

        v238 = v61;
        v239 = sub_1E47B45D0(&qword_1EE2B4CD0, 255, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.HeaderViewModel, &unk_1E487D3EC);
        *&v237 = v62;
        v65[2] = v68 + 1;
        sub_1E47B488C(&v237, &v65[5 * v68 + 4]);
        *(v227 + v63) = v65;
        swift_endAccess();
        v22 = v234;
      }

      v225 = v58;
      v69 = *(v59 + v218[6]);
      v9 = v219;
      v70 = v227;
      if (*(v69 + 16))
      {
        v71 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel();
        v72 = swift_allocObject();

        sub_1E47B1858(v221, v69);
        v73 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
        swift_beginAccess();
        v74 = *(v70 + v73);
        v75 = swift_isUniquelyReferenced_nonNull_native();
        *(v70 + v73) = v74;
        if ((v75 & 1) == 0)
        {
          v74 = sub_1E4860B84(0, v74[2] + 1, 1, v74);
          *(v70 + v73) = v74;
        }

        v78 = v74[2];
        v77 = v74[3];
        if (v78 >= v77 >> 1)
        {
          v74 = sub_1E4860B84((v77 > 1), v78 + 1, 1, v74);
        }

        v238 = v71;
        v239 = sub_1E47B45D0(&qword_1EE2B5170, v76, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.AllDayViewModel, &unk_1E487D4B8);
        *&v237 = v72;
        v74[2] = v78 + 1;
        sub_1E47B488C(&v237, &v74[5 * v78 + 4]);
        *(v70 + v73) = v74;
        swift_endAccess();
        v22 = v234;
      }

      v79 = *(v215 + 16);
      if (v79)
      {
        v222 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
        v235 = (*(v211 + 80) + 32) & ~*(v211 + 80);
        v80 = v215 + v235;
        v81 = *(v211 + 72);
        v82 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1E47B4C1C(v80, v22, type metadata accessor for Event);
          if (v82[2])
          {
            v91 = v9;
            v92 = v82 + v235;
            v93 = v82 + v235 + *(v9 + 20);
            v94 = v31;
            v86 = v22;
            v95 = v31;
            v96 = v226;
            v225(v94, v93, v226);
            v97 = sub_1E48772EC();
            (*v224)(v95, v96);
            if (v97)
            {
              sub_1E47B4C1C(v86, v223, type metadata accessor for Event);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v82 = sub_1E4860A08(0, v82[2] + 1, 1, v82);
              }

              v9 = v91;
              v89 = v82[2];
              v98 = v82[3];
              v90 = v89 + 1;
              if (v89 >= v98 >> 1)
              {
                v82 = sub_1E4860A08((v98 > 1), v89 + 1, 1, v82);
              }

              v87 = v223;
            }

            else
            {
              v100 = v82[2];
              if (v100)
              {
                if (v100 == 1)
                {
                  if ((*(v92 + *(v91 + 56)) & 0xFE) == 6)
                  {
                    v101 = v216;
                    sub_1E47B4C1C(v92, v216, type metadata accessor for Event);
                    v214 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
                    v102 = swift_allocObject();
                    *(v102 + 16) = v221[5];
                    v215 = v102;
                    sub_1E47B4C1C(v101, v102 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_event, type metadata accessor for Event);
                    *&v237 = 0;
                    *(&v237 + 1) = 0xE000000000000000;
                    sub_1E4878F9C();

                    *&v237 = 0xD000000000000026;
                    *(&v237 + 1) = v210;
                    v240 = 0;
                    v241 = 0xE000000000000000;
                    v103 = v207;
                    sub_1E4773850(v101 + *(v91 + 44), v207, &unk_1ECF7B688, &qword_1E487C160);
                    v104 = sub_1E487725C();
                    v105 = *(v104 - 8);
                    if ((*(v105 + 48))(v103, 1, v104) == 1)
                    {
                      sub_1E47738B8(v103, &unk_1ECF7B688, &qword_1E487C160);
                      v106 = 0;
                      v107 = 0xE000000000000000;
                    }

                    else
                    {
                      v126 = sub_1E487723C();
                      v107 = v127;
                      (*(v105 + 8))(v103, v104);
                      v106 = v126;
                    }

                    MEMORY[0x1E69192D0](v106, v107);

                    MEMORY[0x1E69192D0](45, 0xE100000000000000);
                    v91 = v219;
                    v128 = v216;
                    if (*(v216 + *(v219 + 52)))
                    {
                      v129 = 1702195828;
                    }

                    else
                    {
                      v129 = 0x65736C6166;
                    }

                    if (*(v216 + *(v219 + 52)))
                    {
                      v130 = 0xE400000000000000;
                    }

                    else
                    {
                      v130 = 0xE500000000000000;
                    }

                    MEMORY[0x1E69192D0](v129, v130);

                    MEMORY[0x1E69192D0](v240, v241);

                    v132 = *(&v237 + 1);
                    v131 = v237;
                    sub_1E47B4C84(v128, type metadata accessor for Event);
                    v133 = v215;
                    *(v215 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_id) = __PAIR128__(v132, v131);
                    v134 = v227;
                    v135 = v222;
                    swift_beginAccess();
                    v136 = *(v134 + v135);
                    v137 = swift_isUniquelyReferenced_nonNull_native();
                    *(v134 + v135) = v136;
                    if ((v137 & 1) == 0)
                    {
                      v136 = sub_1E4860B84(0, v136[2] + 1, 1, v136);
                      *(v227 + v222) = v136;
                    }

                    v139 = v136[2];
                    v138 = v136[3];
                    v140 = v139 + 1;
                    if (v139 >= v138 >> 1)
                    {
                      v136 = sub_1E4860B84((v138 > 1), v139 + 1, 1, v136);
                    }

                    v238 = v214;
                    v83 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel;
                    v84 = &unk_1E487D584;
                    v85 = &qword_1ECF7C550;
                  }

                  else
                  {
                    v117 = v217;
                    sub_1E47B4C1C(v92, v217, type metadata accessor for Event);
                    v214 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
                    v118 = swift_allocObject();
                    *(v118 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingLocation) = 0;
                    *(v118 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_overrideShowingTravelTime) = 0;
                    v119 = v221;
                    v120 = v221[3];
                    *(v118 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithTwoLines) = v221[2];
                    *(v118 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithThreeLines) = v120;
                    *(v118 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_heightWithFourLines) = v119[4];
                    v215 = v118;
                    sub_1E47B4C1C(v117, v118 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel14EventViewModel_event, type metadata accessor for Event);
                    *&v237 = 0;
                    *(&v237 + 1) = 0xE000000000000000;
                    sub_1E4878F9C();

                    *&v237 = 0xD000000000000023;
                    *(&v237 + 1) = v206;
                    v240 = 0;
                    v241 = 0xE000000000000000;
                    v121 = v208;
                    sub_1E4773850(v117 + *(v91 + 44), v208, &unk_1ECF7B688, &qword_1E487C160);
                    v122 = sub_1E487725C();
                    v123 = *(v122 - 8);
                    if ((*(v123 + 48))(v121, 1, v122) == 1)
                    {
                      sub_1E47738B8(v121, &unk_1ECF7B688, &qword_1E487C160);
                      v124 = 0;
                      v125 = 0xE000000000000000;
                    }

                    else
                    {
                      v124 = sub_1E487723C();
                      v125 = v141;
                      (*(v123 + 8))(v121, v122);
                    }

                    MEMORY[0x1E69192D0](v124, v125);

                    MEMORY[0x1E69192D0](45, 0xE100000000000000);
                    v91 = v219;
                    v142 = v217;
                    if (*(v217 + *(v219 + 52)))
                    {
                      v143 = 1702195828;
                    }

                    else
                    {
                      v143 = 0x65736C6166;
                    }

                    if (*(v217 + *(v219 + 52)))
                    {
                      v144 = 0xE400000000000000;
                    }

                    else
                    {
                      v144 = 0xE500000000000000;
                    }

                    MEMORY[0x1E69192D0](v143, v144);

                    MEMORY[0x1E69192D0](v240, v241);

                    v146 = *(&v237 + 1);
                    v145 = v237;
                    sub_1E47B4C84(v142, type metadata accessor for Event);
                    v133 = v215;
                    *(v215 + 16) = __PAIR128__(v146, v145);
                    v147 = v227;
                    v148 = v222;
                    swift_beginAccess();
                    v136 = *(v147 + v148);
                    v149 = swift_isUniquelyReferenced_nonNull_native();
                    *(v147 + v148) = v136;
                    if ((v149 & 1) == 0)
                    {
                      v136 = sub_1E4860B84(0, v136[2] + 1, 1, v136);
                      *(v227 + v222) = v136;
                    }

                    v150 = v214;
                    v139 = v136[2];
                    v151 = v136[3];
                    v140 = v139 + 1;
                    if (v139 >= v151 >> 1)
                    {
                      v136 = sub_1E4860B84((v151 > 1), v139 + 1, 1, v136);
                    }

                    v238 = v150;
                    v83 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel;
                    v84 = &unk_1E487D540;
                    v85 = &qword_1EE2B4FD0;
                  }

                  v239 = sub_1E47B45D0(v85, 255, v83, v84);
                  *&v237 = v133;
                  v136[2] = v140;
                  sub_1E47B488C(&v237, &v136[5 * v139 + 4]);
                  *(v227 + v222) = v136;
                  swift_endAccess();
                }

                else
                {
                  v108 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
                  v109 = swift_allocObject();

                  sub_1E47B1034(v221, v82);
                  v110 = v227;
                  v111 = v222;
                  swift_beginAccess();
                  v112 = *(v110 + v111);
                  v113 = swift_isUniquelyReferenced_nonNull_native();
                  *(v110 + v111) = v112;
                  if ((v113 & 1) == 0)
                  {
                    v112 = sub_1E4860B84(0, v112[2] + 1, 1, v112);
                    *(v227 + v222) = v112;
                  }

                  v116 = v112[2];
                  v115 = v112[3];
                  if (v116 >= v115 >> 1)
                  {
                    v112 = sub_1E4860B84((v115 > 1), v116 + 1, 1, v112);
                  }

                  v238 = v108;
                  v239 = sub_1E47B45D0(&qword_1EE2B5310, v114, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel, &unk_1E487D4FC);
                  *&v237 = v109;
                  v112[2] = v116 + 1;
                  sub_1E47B488C(&v237, &v112[5 * v116 + 4]);
                  *(v227 + v222) = v112;
                  swift_endAccess();
                  v91 = v219;
                }

                v86 = v234;
              }

              v87 = v220;
              sub_1E47B4C1C(v86, v220, type metadata accessor for Event);
              v82 = sub_1E4860A08(0, 1, 1, MEMORY[0x1E69E7CC0]);
              v89 = v82[2];
              v88 = v82[3];
              v90 = v89 + 1;
              if (v89 >= v88 >> 1)
              {
                v82 = sub_1E4860A08((v88 > 1), v89 + 1, 1, v82);
              }

              v9 = v91;
            }
          }

          else
          {
            sub_1E47B4C1C(v22, v229, type metadata accessor for Event);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v82 = sub_1E4860A08(0, 1, 1, v82);
            }

            v89 = v82[2];
            v99 = v82[3];
            v90 = v89 + 1;
            if (v89 >= v99 >> 1)
            {
              v82 = sub_1E4860A08((v99 > 1), v89 + 1, 1, v82);
            }

            v87 = v229;
          }

          v22 = v234;
          sub_1E47B4C84(v234, type metadata accessor for Event);
          v82[2] = v90;
          sub_1E47B49FC(v87, v82 + v235 + v89 * v81, type metadata accessor for Event);
          v80 += v81;
          --v79;
          v31 = v233;
        }

        while (v79);
      }

      else
      {
        v82 = MEMORY[0x1E69E7CC0];
      }

      v152 = v82[2];
      v24 = v226;
      if (v152)
      {
        break;
      }

LABEL_105:
      v182 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel();
      v183 = swift_allocObject();
      *(v183 + 48) = 1;
      *(v183 + 40) = v221[6];
      v184 = MEMORY[0x1E69E7CC0];
      *(v183 + 16) = 0xD000000000000021;
      *(v183 + 24) = v199;
      *(v183 + 32) = v184;
      v185 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      v186 = v227;
      swift_beginAccess();
      v187 = *(v186 + v185);
      v188 = swift_isUniquelyReferenced_nonNull_native();
      *(v186 + v185) = v187;
      if ((v188 & 1) == 0)
      {
        v187 = sub_1E4860B84(0, v187[2] + 1, 1, v187);
        *(v227 + v185) = v187;
      }

      v191 = v187[2];
      v190 = v187[3];
      if (v191 >= v190 >> 1)
      {
        v187 = sub_1E4860B84((v190 > 1), v191 + 1, 1, v187);
      }

      v238 = v182;
      v239 = sub_1E47B45D0(&qword_1EE2B4E20, v189, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.XMoreViewModel, &unk_1E487D474);
      *&v237 = v183;
      v187[2] = v191 + 1;
      sub_1E47B488C(&v237, &v187[5 * v191 + 4]);
      *(v227 + v185) = v187;
      swift_endAccess();
      v192 = v203;
      swift_beginAccess();

      MEMORY[0x1E6919330](v193);
      if (*((*v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E4878CCC();
      }

      v41 = v212 + 1;
      sub_1E4878CEC();
      swift_endAccess();

      v40 = v213;
      sub_1E47B4C84(v213, type metadata accessor for DayEvents);

      v31 = v233;
      v22 = v234;
      if (v41 == v202)
      {
        goto LABEL_112;
      }
    }

    if (v152 == 1)
    {
      v153 = v82 + ((*(v211 + 80) + 32) & ~*(v211 + 80));
      v154 = *(v153 + *(v9 + 56)) & 0xFE;
      v155 = v231;
      sub_1E47B4C1C(v153, v231, type metadata accessor for Event);
      if (v154 == 6)
      {
        v156 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel(0);
        v157 = swift_allocObject();
        *(v157 + 16) = v221[5];
        sub_1E47B4C1C(v155, v157 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_event, type metadata accessor for Event);
        *&v237 = 0;
        *(&v237 + 1) = 0xE000000000000000;
        sub_1E4878F9C();

        *&v237 = 0xD000000000000026;
        *(&v237 + 1) = v210;
        v158 = sub_1E47CDCB4();
        MEMORY[0x1E69192D0](v158);

        v159 = v155;
        v161 = *(&v237 + 1);
        v160 = v237;
        sub_1E47B4C84(v159, type metadata accessor for Event);
        *(v157 + OBJC_IVAR____TtCCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel17ReminderViewModel_id) = __PAIR128__(v161, v160);
        v162 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
        v163 = v227;
        swift_beginAccess();
        v164 = *(v163 + v162);
        v165 = swift_isUniquelyReferenced_nonNull_native();
        *(v163 + v162) = v164;
        if ((v165 & 1) == 0)
        {
          v164 = sub_1E4860B84(0, v164[2] + 1, 1, v164);
          *(v227 + v162) = v164;
        }

        v167 = v164[2];
        v166 = v164[3];
        if (v167 >= v166 >> 1)
        {
          v164 = sub_1E4860B84((v166 > 1), v167 + 1, 1, v164);
        }

        v238 = v156;
        v239 = sub_1E47B45D0(&qword_1ECF7C550, 255, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ReminderViewModel, &unk_1E487D584);
        *&v237 = v157;
        v164[2] = v167 + 1;
        sub_1E47B488C(&v237, &v164[5 * v167 + 4]);
        *(v227 + v162) = v164;
        goto LABEL_104;
      }

      v177 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel(0);
      v178 = swift_allocObject();
      sub_1E47B07AC(v221, v155);
      v170 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      v179 = v227;
      swift_beginAccess();
      v172 = *(v179 + v170);
      v180 = swift_isUniquelyReferenced_nonNull_native();
      *(v179 + v170) = v172;
      if ((v180 & 1) == 0)
      {
        v172 = sub_1E4860B84(0, v172[2] + 1, 1, v172);
        *(v227 + v170) = v172;
      }

      v176 = v172[2];
      v181 = v172[3];
      if (v176 >= v181 >> 1)
      {
        v172 = sub_1E4860B84((v181 > 1), v176 + 1, 1, v172);
      }

      v238 = v177;
      v239 = sub_1E47B45D0(&qword_1EE2B4FD0, 255, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.EventViewModel, &unk_1E487D540);
      *&v237 = v178;
      v172[2] = v176 + 1;
    }

    else
    {
      v168 = type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel();
      v169 = swift_allocObject();

      sub_1E47B1034(v221, v82);
      v170 = OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_viewModels;
      v171 = v227;
      swift_beginAccess();
      v172 = *(v171 + v170);
      v173 = swift_isUniquelyReferenced_nonNull_native();
      *(v171 + v170) = v172;
      if ((v173 & 1) == 0)
      {
        v172 = sub_1E4860B84(0, v172[2] + 1, 1, v172);
        *(v227 + v170) = v172;
      }

      v176 = v172[2];
      v175 = v172[3];
      if (v176 >= v175 >> 1)
      {
        v172 = sub_1E4860B84((v175 > 1), v176 + 1, 1, v172);
      }

      v238 = v168;
      v239 = sub_1E47B45D0(&qword_1EE2B5310, v174, type metadata accessor for NarrowMultidayLayout.SingleDayViewModel.ConflictingEventsViewModel, &unk_1E487D4FC);
      *&v237 = v169;
      v172[2] = v176 + 1;
    }

    sub_1E47B488C(&v237, &v172[5 * v176 + 4]);
    *(v227 + v170) = v172;
LABEL_104:
    swift_endAccess();
    goto LABEL_105;
  }

LABEL_112:
  (*(v196 + 8))(v209, v197);
LABEL_114:

  return v195;
}