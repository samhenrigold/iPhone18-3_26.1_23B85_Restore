uint64_t MultiSampleEnumerator.init(profile:sampleTypes:dateRange:additionalPredicateBySampleType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for MultiSampleEnumerator(0);
  result = sub_251646254(a3, a5 + *(v8 + 24));
  *(a5 + *(v8 + 28)) = a4;
  return result;
}

uint64_t type metadata accessor for MultiSampleEnumerator(uint64_t a1)
{
  result = qword_27F451998;
  if (!qword_27F451998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251646254(uint64_t a1, uint64_t a2)
{
  sub_2516462B8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2516462B8(uint64_t a1)
{
  if (!qword_27F451960)
  {
    sub_25164DDA8();
    sub_25164631C();
    v1 = sub_25164DEC8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F451960);
    }
  }
}

unint64_t sub_25164631C()
{
  result = qword_27F451968;
  if (!qword_27F451968)
  {
    sub_25164DDA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F451968);
  }

  return result;
}

uint64_t MultiSampleEnumerator.enumerate(_:onCompletion:)(void (*a1)(void *), uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v32 = a4;
  v33 = a3;
  v44 = *MEMORY[0x277D85DE8];
  v6 = sub_25164DE88();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v31 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v4[1];
  v40 = v4;
  sub_251646F14(sub_251646E30, v39, v8);
  sub_25164DEF8();
  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = sub_25164DEE8();

  v11 = [v9 initWithKey:v10 ascending:1];

  sub_251647704(0, &qword_27F451970, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25164E5C0;
  *(v12 + 32) = v11;
  v13 = *v4;
  v14 = objc_allocWithZone(MEMORY[0x277D10780]);
  sub_25164762C(0, &qword_27F451978, 0x277D10820);
  v30 = v11;
  v15 = sub_25164DF08();

  sub_25164762C(0, &qword_27F451980, 0x277CCAC98);
  v16 = sub_25164DF08();

  v17 = [v14 initWithQueryDescriptors:v15 includeDeletedObjects:0 anchor:0 sortDescriptors:v16 bufferSize:100 profile:v13];

  *&v43[0] = 0;
  v18 = [v17 advanceWithError_];
  v19 = *&v43[0];
  if (v18)
  {
    do
    {
      v21 = v19;
      if ([v17 object])
      {
        sub_25164DFA8();
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0u;
        v42 = 0u;
      }

      v43[0] = v41;
      v43[1] = v42;
      if (*(&v42 + 1))
      {
        sub_25164762C(0, &qword_27F451990, 0x277CCD8A8);
        if (swift_dynamicCast())
        {
          v22 = v36;
          a1(v36);
        }
      }

      else
      {
        sub_2516471EC(v43);
      }

      *&v43[0] = 0;
      v20 = [v17 advanceWithError_];
      v19 = *&v43[0];
    }

    while ((v20 & 1) != 0);
  }

  v23 = v19;
  v24 = sub_25164DD48();

  swift_willThrow();
  swift_getErrorValue();
  if (sub_251647088(v37, v38))
  {
    v26 = v34;
    v25 = v35;
    v27 = v31;
    (*(v34 + 104))(v31, *MEMORY[0x277D10C80], v35);
  }

  else
  {
    v27 = v31;
    *v31 = v24;
    v26 = v34;
    v25 = v35;
    (*(v34 + 104))(v27, *MEMORY[0x277D10C78], v35);
    v28 = v24;
  }

  v33(v27);

  return (*(v26 + 8))(v27, v25);
}

void sub_251646808(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v39 = a2;
  v44 = a3;
  v42 = sub_25164DDA8();
  v5 = *(v42 - 8);
  v6 = MEMORY[0x28223BE20](v42);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v43 = sub_25164DD18();
  v10 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *a1;
  v13 = HDSampleEntityPredicateForDataType();
  v14 = sub_25164762C(0, &qword_27F4519C8, 0x277D10B70);
  v50[3] = v14;
  v50[0] = v13;
  v38 = type metadata accessor for MultiSampleEnumerator(0);
  v15 = a2 + *(v38 + 24);
  v16 = *(v5 + 16);
  v17 = v42;
  v16(v9, v15, v42);
  sub_2516462B8(0);
  v16(v41, v15 + *(v18 + 36), v17);
  sub_25164DD08();
  v19 = sub_25164DCF8();
  (*(v10 + 8))(v12, v43);
  v20 = v40;
  v21 = HDSampleEntityPredicateForDateInterval();

  v51[3] = v14;
  v51[0] = v21;
  v22 = sub_251646E50(v20, *(v39 + *(v38 + 28)));
  if (!v22)
  {
    v14 = 0;
    v52[1] = 0;
    v52[2] = 0;
  }

  v52[0] = v22;
  v52[3] = v14;
  sub_251647D04(v50, &v48);
  v45 = v48;
  v46 = v49;
  if (*(&v49 + 1))
  {
    sub_251648074(&v45, v47);
    v23 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_251648E78(0, *(v23 + 2) + 1, 1, v23);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_251648E78((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    sub_251648074(v47, &v23[32 * v25 + 32]);
  }

  else
  {
    sub_2516471EC(&v45);
    v23 = MEMORY[0x277D84F90];
  }

  sub_251647D04(v51, &v48);
  v45 = v48;
  v46 = v49;
  if (*(&v49 + 1))
  {
    sub_251648074(&v45, v47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_251648E78(0, *(v23 + 2) + 1, 1, v23);
    }

    v27 = *(v23 + 2);
    v26 = *(v23 + 3);
    if (v27 >= v26 >> 1)
    {
      v23 = sub_251648E78((v26 > 1), v27 + 1, 1, v23);
    }

    *(v23 + 2) = v27 + 1;
    sub_251648074(v47, &v23[32 * v27 + 32]);
  }

  else
  {
    sub_2516471EC(&v45);
  }

  sub_251647D04(v52, &v48);
  v45 = v48;
  v46 = v49;
  if (*(&v49 + 1))
  {
    sub_251648074(&v45, v47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_251648E78(0, *(v23 + 2) + 1, 1, v23);
    }

    v29 = *(v23 + 2);
    v28 = *(v23 + 3);
    if (v29 >= v28 >> 1)
    {
      v23 = sub_251648E78((v28 > 1), v29 + 1, 1, v23);
    }

    *(v23 + 2) = v29 + 1;
    sub_251648074(v47, &v23[32 * v29 + 32]);
  }

  else
  {
    sub_2516471EC(&v45);
  }

  sub_251647704(0, &qword_27F451988, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  swift_arrayDestroy();
  v30 = sub_25164DF08();

  v31 = [objc_opt_self() predicateMatchingAllPredicates_];

  sub_251647704(0, &qword_27F451970, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25164E5C0;
  *(inited + 32) = v20;
  v33 = v20;
  sub_251647D90(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v34 = objc_allocWithZone(MEMORY[0x277D10820]);
  sub_25164762C(0, &qword_27F4519B8, 0x277CCD8D8);
  sub_251647674();
  v35 = v31;
  v36 = sub_25164DF38();

  v37 = [v34 initWithSampleTypes:v36 encodingOptions:0 restrictedSourceEntities:0 authorizationFilter:0 samplePredicate:v35];

  *v44 = v37;
}

void *sub_251646E50(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_25164E048();

    if (v4)
    {
      sub_25164762C(0, &qword_27F4519C8, 0x277D10B70);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_251647754(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_251646F14(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25164E058())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    sub_25164E018();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x25307CAB0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_25164DFF8();
      sub_25164E028();
      sub_25164E038();
      sub_25164E008();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

id sub_251647088(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_25164E078();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_25164DD38();

  v11 = [v10 hk:900 isHealthKitErrorWithCode:?];
  return v11;
}

uint64_t sub_2516471EC(uint64_t a1)
{
  sub_251647704(0, &qword_27F451988, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25164727C(void (*a1)(_OWORD *), uint64_t a2, void (*a3)(void *), uint64_t a4)
{

  sub_25164786C(a3, a4, v4, a1);
}

uint64_t sub_251647300(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2516462B8(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_2516473C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2516462B8(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_251647464(uint64_t a1)
{
  sub_25164762C(319, &qword_27F4519A8, 0x277D107F8);
  if (v1 <= 0x3F)
  {
    sub_251647528(319);
    if (v2 <= 0x3F)
    {
      sub_2516462B8(319);
      if (v3 <= 0x3F)
      {
        sub_251647590(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_251647528(uint64_t a1)
{
  if (!qword_27F4519B0)
  {
    sub_25164762C(255, &qword_27F4519B8, 0x277CCD8D8);
    v1 = sub_25164DF28();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4519B0);
    }
  }
}

void sub_251647590(uint64_t a1)
{
  if (!qword_27F4519C0)
  {
    sub_25164762C(255, &qword_27F4519B8, 0x277CCD8D8);
    sub_25164762C(255, &qword_27F4519C8, 0x277D10B70);
    sub_251647674();
    v1 = sub_25164DE98();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4519C0);
    }
  }
}

uint64_t sub_25164762C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_251647674()
{
  result = qword_27F4519D0;
  if (!qword_27F4519D0)
  {
    sub_25164762C(255, &qword_27F4519B8, 0x277CCD8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4519D0);
  }

  return result;
}

void sub_251647704(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_251647754(uint64_t a1)
{
  v2 = sub_25164DF78();

  return sub_251647798(a1, v2);
}

unint64_t sub_251647798(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_25164762C(0, &qword_27F4519B8, 0x277CCD8D8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25164DF88();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_25164786C(void (*a1)(void *), uint64_t a2, void *a3, void (*a4)(_OWORD *))
{
  v32 = a2;
  v33 = a1;
  v44 = *MEMORY[0x277D85DE8];
  v6 = sub_25164DE88();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v31 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a3[1];
  v40 = a3;
  sub_251646F14(sub_2516480F8, v39, v8);
  sub_25164DEF8();
  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = sub_25164DEE8();

  v11 = [v9 initWithKey:v10 ascending:1];

  sub_251647704(0, &qword_27F451970, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25164E5C0;
  *(v12 + 32) = v11;
  v13 = *a3;
  v14 = objc_allocWithZone(MEMORY[0x277D10780]);
  sub_25164762C(0, &qword_27F451978, 0x277D10820);
  v30 = v11;
  v15 = sub_25164DF08();

  sub_25164762C(0, &qword_27F451980, 0x277CCAC98);
  v16 = sub_25164DF08();

  v17 = [v14 initWithQueryDescriptors:v15 includeDeletedObjects:0 anchor:0 sortDescriptors:v16 bufferSize:100 profile:v13];

  *&v43[0] = 0;
  v18 = [v17 advanceWithError_];
  v19 = *&v43[0];
  if (v18)
  {
    do
    {
      v21 = v19;
      if ([v17 object])
      {
        sub_25164DFA8();
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0u;
        v42 = 0u;
      }

      v43[0] = v41;
      v43[1] = v42;
      if (*(&v42 + 1))
      {
        sub_25164762C(0, &qword_27F451990, 0x277CCD8A8);
        if (swift_dynamicCast())
        {
          v22 = v36;
          *&v43[0] = v36;
          a4(v43);
        }
      }

      else
      {
        sub_2516471EC(v43);
      }

      *&v43[0] = 0;
      v20 = [v17 advanceWithError_];
      v19 = *&v43[0];
    }

    while ((v20 & 1) != 0);
  }

  v23 = v19;
  v24 = sub_25164DD48();

  swift_willThrow();
  swift_getErrorValue();
  if (sub_251647088(v37, v38))
  {
    v26 = v34;
    v25 = v35;
    v27 = v31;
    (*(v34 + 104))(v31, *MEMORY[0x277D10C80], v35);
  }

  else
  {
    v27 = v31;
    *v31 = v24;
    v26 = v34;
    v25 = v35;
    (*(v34 + 104))(v27, *MEMORY[0x277D10C78], v35);
    v28 = v24;
  }

  v33(v27);

  return (*(v26 + 8))(v27, v25);
}

uint64_t sub_251647D04(uint64_t a1, uint64_t a2)
{
  sub_251647704(0, &qword_27F451988, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_251647D90(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_25164E058())
    {
LABEL_3:
      sub_251648084(0);
      v3 = sub_25164DFB8();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_25164E058();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x25307CAB0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_25164DF78();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_25164762C(0, &qword_27F4519B8, 0x277CCD8D8);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_25164DF88();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_25164DF78();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_25164762C(0, &qword_27F4519B8, 0x277CCD8D8);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_25164DF88();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

_OWORD *sub_251648074(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_251648084(uint64_t a1)
{
  if (!qword_27F4519E0)
  {
    sub_25164762C(255, &qword_27F4519B8, 0x277CCD8D8);
    sub_251647674();
    v1 = sub_25164DFC8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4519E0);
    }
  }
}

uint64_t SampleEnumerator.enumerate(_:onCompletion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v65 = a5;
  v58[1] = a4;
  v59 = a3;
  v67 = a1;
  v68 = a2;
  v78[12] = *MEMORY[0x277D85DE8];
  v7 = sub_25164DE88();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v58[0] = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25164DDA8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v64 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v58 - v13;
  v66 = sub_25164DD18();
  v63 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v16 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_opt_self();
  v18 = *v5;
  v19 = v5[1];
  v62 = v5;
  v69 = [v17 entityEnumeratorWithType:v19 profile:v18];
  v20 = HDSampleEntityPredicateForDataType();
  v21 = sub_25164762C(0, &qword_27F4519C8, 0x277D10B70);
  v78[3] = v21;
  v78[0] = v20;
  v22 = v65;
  v23 = v6 + *(v65 + 32);
  v24 = *(v10 + 16);
  v24(v14, v23, v9);
  sub_2516462B8(0);
  v24(v64, &v23[*(v25 + 36)], v9);
  v26 = v22;
  sub_25164DD08();
  v27 = sub_25164DCF8();
  (*(v63 + 8))(v16, v66);
  v28 = HDSampleEntityPredicateForDateInterval();

  v78[7] = v21;
  v78[4] = v28;
  v29 = *(v62 + *(v26 + 36));
  if (!v29)
  {
    v21 = 0;
    v78[9] = 0;
    v78[10] = 0;
  }

  v78[8] = v29;
  v78[11] = v21;
  v30 = v29;
  v31 = &v77;
  sub_251647D04(v78, &v70);
  v74 = v70;
  v75 = v71;
  v32 = v69;
  if (!*(&v71 + 1))
  {
    sub_2516471EC(&v74);
    v33 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  sub_251648074(&v74, v76);
  v33 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v35 = *(v33 + 16);
    v34 = *(v33 + 24);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_251648E78((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 16) = v35 + 1;
    sub_251648074(v76, (v33 + 32 * v35 + 32));
LABEL_9:
    sub_251647D04((v31 + 8), &v70);
    v74 = v70;
    v75 = v71;
    if (*(&v71 + 1))
    {
      sub_251648074(&v74, v76);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_251648E78(0, *(v33 + 16) + 1, 1, v33);
      }

      v37 = *(v33 + 16);
      v36 = *(v33 + 24);
      if (v37 >= v36 >> 1)
      {
        v33 = sub_251648E78((v36 > 1), v37 + 1, 1, v33);
      }

      *(v33 + 16) = v37 + 1;
      sub_251648074(v76, (v33 + 32 * v37 + 32));
    }

    else
    {
      sub_2516471EC(&v74);
    }

    sub_251647D04((v31 + 12), &v70);
    v74 = v70;
    v75 = v71;
    if (*(&v71 + 1))
    {
      sub_251648074(&v74, v76);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_251648E78(0, *(v33 + 16) + 1, 1, v33);
      }

      v39 = *(v33 + 16);
      v38 = *(v33 + 24);
      if (v39 >= v38 >> 1)
      {
        v33 = sub_251648E78((v38 > 1), v39 + 1, 1, v33);
      }

      *(v33 + 16) = v39 + 1;
      sub_251648074(v76, (v33 + 32 * v39 + 32));
    }

    else
    {
      sub_2516471EC(&v74);
    }

    sub_251649340(0, &qword_27F451988, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
    swift_arrayDestroy();
    v40 = sub_25164DF08();

    v41 = [objc_opt_self() predicateMatchingAllPredicates_];

    [v32 setPredicate_];
    sub_251649340(0, &qword_27F451970, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_25164E5C0;
    v43 = *MEMORY[0x277D104B0];
    sub_25164762C(0, &qword_27F4519E8, 0x277D10848);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v42 + 32) = [objc_opt_self() orderingTermWithProperty:v43 entityClass:ObjCClassFromMetadata ascending:1];
    sub_25164762C(0, &qword_27F4519F0, 0x277D10B68);
    v45 = sub_25164DF08();

    [v32 setOrderingTerms_];

    v31 = swift_allocObject();
    v46 = v67;
    v47 = v68;
    v31[2] = *(v26 + 16);
    v31[3] = v46;
    v31[4] = v47;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_251648AE4;
    *(v33 + 24) = v31;
    v72 = sub_251648B00;
    v73 = v33;
    *&v70 = MEMORY[0x277D85DD0];
    *(&v70 + 1) = 1107296256;
    *&v71 = sub_251648B2C;
    *(&v71 + 1) = &block_descriptor;
    v48 = _Block_copy(&v70);

    *&v70 = 0;
    v49 = [v32 enumerateWithError:&v70 handler:v48];
    _Block_release(v48);
    v50 = v70;
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_29:
    v33 = sub_251648E78(0, *(v33 + 16) + 1, 1, v33);
  }

  if (v49)
  {
    v53 = v60;
    v52 = v61;
    v54 = v58[0];
    (*(v60 + 104))(v58[0], *MEMORY[0x277D10C80], v61);
    v59(v54);
  }

  else
  {
    v55 = sub_25164DD48();

    swift_willThrow();
    v54 = v58[0];
    *v58[0] = v55;
    v53 = v60;
    v52 = v61;
    (*(v60 + 104))(v54, *MEMORY[0x277D10C78], v61);
    v56 = v55;
    v59(v54);
  }

  (*(v53 + 8))(v54, v52);
}

BOOL sub_251648A04(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v9 = swift_dynamicCastUnknownClass();
  if (v9)
  {
    v10 = a1;
    a4(v9);
  }

  else if (a3)
  {
    *a3 = [objc_opt_self() hk:3 error:0 userInfo:?];
  }

  return v9 != 0;
}

uint64_t sub_251648AAC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251648B2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251648BA0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = *(a5 + 16);
  v10[3] = a1;
  v10[4] = a2;

  SampleEnumerator.enumerate(_:onCompletion:)(sub_251649308, v10, a3, a4, a5);
}

id sub_251648C98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, SEL *a4@<X3>, unint64_t *a5@<X4>, unint64_t *a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  sub_25164762C(0, &qword_27F4519B8, 0x277CCD8D8);
  result = [swift_getObjCClassFromMetadata() *a4];
  if (result)
  {
    v16 = result;
    sub_251649020(0, a5, a6, a7, type metadata accessor for SampleEnumerator);
    v18 = v17;
    sub_251648FBC(a2, a8 + *(v17 + 32));
    *a8 = a1;
    a8[1] = v16;
    *(a8 + *(v18 + 36)) = a3;
    v19 = a3;

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static SampleEnumerator<>.audiogram(profile:dateRange:additionalPredicate:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  sub_25164762C(0, &qword_27F4519B8, 0x277CCD8D8);
  v7 = [swift_getObjCClassFromMetadata() audiogramSampleType];
  sub_251649020(0, &qword_27F451A18, qword_27F451A20, 0x277CCD030, type metadata accessor for SampleEnumerator);
  v9 = v8;
  sub_251648FBC(a2, a4 + *(v8 + 32));
  *a4 = a1;
  a4[1] = v7;
  *(a4 + *(v9 + 36)) = a3;
  v10 = a3;

  return a1;
}

char *sub_251648E78(char *result, int64_t a2, char a3, char *a4)
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
    sub_251649340(0, &qword_27F451AB0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
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

uint64_t sub_251648FBC(uint64_t a1, uint64_t a2)
{
  sub_2516462B8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_251649020(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_25164762C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251649090(uint64_t a1)
{
  sub_25164762C(319, &qword_27F4519A8, 0x277D107F8);
  if (v1 <= 0x3F)
  {
    sub_25164762C(319, &qword_27F4519B8, 0x277CCD8D8);
    if (v2 <= 0x3F)
    {
      sub_2516462B8(319);
      if (v3 <= 0x3F)
      {
        sub_251649020(319, &qword_27F451AA8, &qword_27F4519C8, 0x277D10B70, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2516491A4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2516462B8(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_251649264(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2516462B8(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_251649308(uint64_t a1)
{
  v2 = *(v1 + 24);
  v4 = a1;
  return v2(&v4);
}

void sub_251649340(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t RawQuantitySampleEnumerator.init(profile:quantityType:dateRange:additionalPredicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for RawQuantitySampleEnumerator(0);
  result = sub_25164A550(a3, a5 + *(v8 + 24), sub_2516462B8);
  *(a5 + *(v8 + 28)) = a4;
  return result;
}

uint64_t type metadata accessor for RawQuantitySampleEnumerator(uint64_t a1)
{
  result = qword_27F451AB8;
  if (!qword_27F451AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RawQuantitySampleEnumerator.enumerate(_:onCompletion:)(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v55 = a4;
  v56 = a3;
  v64 = a1;
  v65 = a2;
  v74[12] = *MEMORY[0x277D85DE8];
  v5 = sub_25164DE88();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = sub_25164DDA8();
  v7 = *(v62 - 8);
  v8 = MEMORY[0x28223BE20](v62);
  v61 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v63 = sub_25164DD18();
  v12 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v4[1];
  v59 = v4;
  v60 = v15;
  v16 = HDSampleEntityPredicateForDataType();
  v17 = sub_25164762C(0, &qword_27F4519C8, 0x277D10B70);
  v74[3] = v17;
  v74[0] = v16;
  v18 = type metadata accessor for RawQuantitySampleEnumerator(0);
  v19 = v4 + *(v18 + 24);
  v20 = *(v7 + 16);
  v21 = v62;
  v20(v11, v19, v62);
  sub_2516462B8(0);
  v20(v61, v19 + *(v22 + 36), v21);
  sub_25164DD08();
  v23 = sub_25164DCF8();
  (*(v12 + 8))(v14, v63);
  v24 = HDSampleEntityPredicateForDateInterval();

  v74[7] = v17;
  v74[4] = v24;
  v25 = *(v18 + 28);
  v26 = v59;
  v27 = *(v59 + v25);
  if (!v27)
  {
    v17 = 0;
    v74[9] = 0;
    v74[10] = 0;
  }

  v74[8] = v27;
  v74[11] = v17;
  v28 = v27;
  v29 = &v73;
  sub_25164A4E8(v74, &v66, sub_251649C74);
  v70 = v66;
  v71 = v67;
  if (!*(&v67 + 1))
  {
    sub_2516471EC(&v70);
    v30 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  sub_251648074(&v70, v72);
  v30 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v32 = *(v30 + 16);
    v31 = *(v30 + 24);
    if (v32 >= v31 >> 1)
    {
      v30 = sub_251648E78((v31 > 1), v32 + 1, 1, v30);
    }

    *(v30 + 16) = v32 + 1;
    sub_251648074(v72, (v30 + 32 * v32 + 32));
LABEL_9:
    sub_25164A4E8((v29 + 8), &v66, sub_251649C74);
    v70 = v66;
    v71 = v67;
    if (*(&v67 + 1))
    {
      sub_251648074(&v70, v72);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_251648E78(0, *(v30 + 16) + 1, 1, v30);
      }

      v34 = *(v30 + 16);
      v33 = *(v30 + 24);
      if (v34 >= v33 >> 1)
      {
        v30 = sub_251648E78((v33 > 1), v34 + 1, 1, v30);
      }

      *(v30 + 16) = v34 + 1;
      sub_251648074(v72, (v30 + 32 * v34 + 32));
    }

    else
    {
      sub_2516471EC(&v70);
    }

    sub_25164A4E8((v29 + 12), &v66, sub_251649C74);
    v70 = v66;
    v71 = v67;
    if (*(&v67 + 1))
    {
      sub_251648074(&v70, v72);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_251648E78(0, *(v30 + 16) + 1, 1, v30);
      }

      v36 = *(v30 + 16);
      v35 = *(v30 + 24);
      if (v36 >= v35 >> 1)
      {
        v30 = sub_251648E78((v35 > 1), v36 + 1, 1, v30);
      }

      *(v30 + 16) = v36 + 1;
      sub_251648074(v72, (v30 + 32 * v36 + 32));
    }

    else
    {
      sub_2516471EC(&v70);
    }

    sub_251649C74();
    swift_arrayDestroy();
    v37 = sub_25164DF08();

    v38 = [objc_opt_self() predicateMatchingAllPredicates_];

    v39 = objc_opt_self();
    v40 = *v26;
    v41 = swift_allocObject();
    v42 = v65;
    *(v41 + 16) = v64;
    *(v41 + 24) = v42;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_25164A0F4;
    *(v30 + 24) = v41;
    v68 = sub_25164A130;
    v69 = v30;
    *&v66 = MEMORY[0x277D85DD0];
    *(&v66 + 1) = 1107296256;
    *&v67 = sub_25164A15C;
    *(&v67 + 1) = &block_descriptor_0;
    v43 = _Block_copy(&v66);
    v26 = v69;
    v44 = v38;

    *&v66 = 0;
    v45 = [v39 orderedQuantityValuesForPredicate:v44 profile:v40 options:0 error:&v66 handler:v43];
    _Block_release(v43);

    v29 = v66;
    v46 = v66;
    LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

    if ((v39 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_29:
    v30 = sub_251648E78(0, *(v30 + 16) + 1, 1, v30);
  }

  if (v45)
  {
    v48 = v57;
    v47 = v58;
    v49 = v54;
    (*(v57 + 104))(v54, *MEMORY[0x277D10C80], v58);
    v56(v49);
  }

  else
  {
    v50 = sub_25164DD48();

    swift_willThrow();
    v49 = v54;
    *v54 = v50;
    v48 = v57;
    v47 = v58;
    (*(v57 + 104))(v49, *MEMORY[0x277D10C78], v58);
    v51 = v50;
    v56(v49);
  }

  (*(v48 + 8))(v49, v47);
}

void sub_251649C74()
{
  if (!qword_27F451988)
  {
    v0 = sub_25164DF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27F451988);
    }
  }
}

uint64_t sub_251649CC8(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(char *), uint64_t a14)
{
  sub_25164A480(0);
  v16 = v15;
  v17 = MEMORY[0x28223BE20](v15);
  v48 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  sub_2516462B8(0);
  v49 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_25164DE28();
  v24 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25164DDA8();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v42 - v31;
  sub_25164DD58();
  sub_25164DD58();
  sub_25164631C();
  result = sub_25164DEB8();
  if (result)
  {
    v46 = v32;
    v47 = a14;
    v44 = a13;
    v45 = v24;
    v34 = v27[2];
    v34(v20, v32, v26);
    v35 = &v20[*(v16 + 48)];
    v43 = v30;
    v34(v35, v30, v26);
    v36 = v48;
    sub_25164A4E8(v20, v48, sub_25164A480);
    v37 = *(v16 + 48);
    v38 = v16;
    v39 = v27[4];
    v39(v23, v36, v26);
    v40 = v27[1];
    v40(v36 + v37, v26);
    sub_25164A550(v20, v36, sub_25164A480);
    v39(&v23[*(v49 + 36)], v36 + *(v38 + 48), v26);
    v40(v36, v26);
    v41 = v50;
    sub_25164DE18();
    v44(v41);
    (*(v45 + 8))(v41, v51);
    v40(v43, v26);
    v40(v46, v26);
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25164A0BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25164A1E0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2516462B8(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_25164A2A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2516462B8(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_25164A344(uint64_t a1)
{
  sub_25164762C(319, &qword_27F4519A8, 0x277D107F8);
  if (v1 <= 0x3F)
  {
    sub_25164762C(319, &qword_27F451AC8, 0x277CCD830);
    if (v2 <= 0x3F)
    {
      sub_2516462B8(319);
      if (v3 <= 0x3F)
      {
        sub_25164A418(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25164A418(uint64_t a1)
{
  if (!qword_27F451AA8)
  {
    sub_25164762C(255, &qword_27F4519C8, 0x277D10B70);
    v1 = sub_25164DF98();
    if (!v2)
    {
      atomic_store(v1, &qword_27F451AA8);
    }
  }
}

void sub_25164A480(uint64_t a1)
{
  if (!qword_27F451AD0)
  {
    sub_25164DDA8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F451AD0);
    }
  }
}

uint64_t sub_25164A4E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25164A550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25164A5B8(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_25164E018();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_25164B268(i, v5);
    sub_25164762C(0, &qword_27F451AE0, 0x277CCD0B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_25164DFF8();
    sub_25164E028();
    sub_25164E038();
    sub_25164E008();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_25164A6C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v6 = MEMORY[0x277D84F90];
    sub_25164E018();
    v4 = a1 + 32;
    do
    {
      sub_25164B268(v4, &v5);
      sub_25164762C(0, &qword_27F451AE0, 0x277CCD0B0);
      swift_dynamicCast();
      sub_25164DFF8();
      sub_25164E028();
      sub_25164E038();
      sub_25164E008();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_25164A7BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_25164E058();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_25164E058();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_25164A8AC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_25164A94C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25164A8AC(uint64_t a1, char a2)
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

  sub_25164E058();
LABEL_9:
  result = sub_25164DFE8();
  *v2 = result;
  return result;
}

uint64_t sub_25164A94C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25164E058();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_25164E058();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25164B1B8(0);
          sub_25164B220(&qword_27F451AF0, sub_25164B1B8, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_25164D340(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25164762C(0, &qword_27F451AE0, 0x277CCD0B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25164AAF8(uint64_t a1, uint64_t a2)
{
  v70[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25164DDA8();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v67 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v55 - v8;
  v9 = sub_25164DD18();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() _categoryTypeWithCode_];
  if (!v12)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  v13 = v12;
  sub_25164B16C(0, &qword_27F451AB0, MEMORY[0x277D84F70] + 8);
  v62 = v14;
  v15 = swift_allocObject();
  v61 = xmmword_25164E740;
  *(v15 + 16) = xmmword_25164E740;
  v16 = HDSampleEntityPredicateForDataType();
  v17 = sub_25164762C(0, &qword_27F4519C8, 0x277D10B70);
  *(v15 + 56) = v17;
  *(v15 + 32) = v16;
  v63 = a1;
  v18 = sub_25164DD88();
  v19 = HDSampleEntityPredicateForStartDate();

  *(v15 + 88) = v17;
  *(v15 + 64) = v19;
  v20 = sub_25164DF08();

  v21 = objc_opt_self();
  v22 = [v21 predicateMatchingAllPredicates_];

  if (!v22)
  {
    goto LABEL_25;
  }

  sub_25164762C(0, &qword_27F451AD8, 0x277D105E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v70[0] = 0;
  v60 = ObjCClassFromMetadata;
  v24 = a2;
  v25 = [ObjCClassFromMetadata samplesWithType:v13 profile:a2 encodingOptions:0 predicate:v22 limit:1 anchor:0 error:v70];
  v26 = v70[0];
  if (!v25)
  {
    v33 = v70[0];
    sub_25164DD48();

    swift_willThrow();
LABEL_20:

    return;
  }

  v27 = v25;
  v59 = v21;
  v28 = sub_25164DF18();
  v29 = v26;

  v30 = sub_25164A5B8(v28);

  v57 = v24;
  v58 = v22;
  v55 = v2;
  if (v30)
  {
    if (v30 >> 62)
    {
      if (sub_25164E058())
      {
        goto LABEL_7;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v30 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x25307CAB0](0, v30);
        goto LABEL_10;
      }

      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v31 = *(v30 + 32);
LABEL_10:
        v56 = v31;

        v32 = v63;
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_24;
    }
  }

  v56 = 0;
  v32 = v63;
LABEL_15:
  v34 = swift_allocObject();
  *(v34 + 16) = v61;
  v35 = HDSampleEntityPredicateForDataType();
  *(v34 + 56) = v17;
  *(v34 + 32) = v35;
  v36 = v69;
  v37 = *(v68 + 16);
  v37(v64, v32, v69);
  sub_2516462B8(0);
  v37(v67, v32 + *(v38 + 36), v36);
  sub_25164DD08();
  v39 = sub_25164DCF8();
  (*(v65 + 8))(v11, v66);
  v40 = HDSampleEntityPredicateForDateInterval();

  *(v34 + 88) = v17;
  *(v34 + 64) = v40;
  v41 = sub_25164DF08();

  v42 = [v59 predicateMatchingAllPredicates_];

  if (!v42)
  {
    __break(1u);
    return;
  }

  v43 = *MEMORY[0x277D10C08];
  v70[0] = 0;
  v44 = [v60 samplesWithType:v13 profile:v57 encodingOptions:0 predicate:v42 limit:v43 anchor:0 error:v70];
  v45 = v70[0];
  v46 = v58;
  if (!v44)
  {
    v54 = v70[0];
    sub_25164DD48();

    swift_willThrow();
    v22 = v56;
    goto LABEL_20;
  }

  v47 = v44;
  v48 = sub_25164DF18();
  v49 = v45;

  v50 = sub_25164A6C4(v48);

  v51 = v56;
  if (v56)
  {
    sub_25164B16C(0, &qword_27F451970, MEMORY[0x277D84F68] + 8);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_25164E5C0;
    *(v52 + 32) = v51;
    v70[0] = v52;
    v53 = v51;
    sub_25164A7BC(v50);
  }

  else
  {
  }
}

void sub_25164B16C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25164E068();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25164B1B8(uint64_t a1)
{
  if (!qword_27F451AE8)
  {
    sub_25164762C(255, &qword_27F451AE0, 0x277CCD0B0);
    v1 = sub_25164DF28();
    if (!v2)
    {
      atomic_store(v1, &qword_27F451AE8);
    }
  }
}

uint64_t sub_25164B220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25164B268(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25164B2CC()
{
  sub_25164E0C8();
  MEMORY[0x25307CBB0](0);
  return sub_25164E0E8();
}

uint64_t sub_25164B338(uint64_t a1)
{
  sub_25164E0C8();
  MEMORY[0x25307CBB0](0);
  return sub_25164E0E8();
}

void sub_25164B388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  *&v9 = 0;
  v3 = [objc_opt_self() mostRecentSampleWithType:a1 profile:a2 encodingOptions:0 predicate:a3 anchor:0 error:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = v9;
    sub_25164DFA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v6 = v4;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (v4)
  {
    swift_willThrow();
    sub_2516471EC(v11);
  }

  else
  {
    sub_251647D04(v11, &v7);
    if (v8)
    {
      sub_251648074(&v7, &v9);
      sub_25164B268(&v9, &v7);
      sub_25164B9D0();
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_25164B734();
        swift_allocError();
        swift_willThrow();
      }

      __swift_destroy_boxed_opaque_existential_0(&v9);
      sub_2516471EC(v11);
    }

    else
    {
      sub_2516471EC(v11);
      sub_2516471EC(&v7);
    }
  }
}

uint64_t static HDSampleEntity.mostRecentSample<A>(of:expecting:profile:predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  *&v14 = 0;
  v6 = [objc_opt_self() mostRecentSampleWithType:a1 profile:a3 encodingOptions:0 predicate:a4 anchor:0 error:&v14];
  v7 = v14;
  if (v6)
  {
    v8 = v14;
    sub_25164DFA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v9 = v7;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (v7)
  {
    swift_willThrow();
    sub_2516471EC(v16);
  }

  else
  {
    sub_251647D04(v16, &v12);
    if (v13)
    {
      sub_251648074(&v12, &v14);
      sub_25164B268(&v14, &v12);
      if (swift_dynamicCast())
      {
        a5 = v11;
      }

      else
      {
        sub_25164B734();
        swift_allocError();
        swift_willThrow();
      }

      __swift_destroy_boxed_opaque_existential_0(&v14);
      sub_2516471EC(v16);
    }

    else
    {
      sub_2516471EC(v16);
      sub_2516471EC(&v12);
      return 0;
    }
  }

  return a5;
}

unint64_t sub_25164B734()
{
  result = qword_27F451AF8;
  if (!qword_27F451AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F451AF8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void static HDSampleEntity.mostRecentSampleStartDate(of:profile:predicate:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_25164B388(a1, a2, a3);
  if (!v4)
  {
    if (v6)
    {
      v7 = v6;
      v8 = [v6 startDate];
      sub_25164DD98();

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = sub_25164DDA8();
    (*(*(v10 - 8) + 56))(a4, v9, 1, v10);
  }
}

uint64_t _s21MostRecentSampleErrorOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s21MostRecentSampleErrorOwst(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_25164B97C()
{
  result = qword_27F451B00;
  if (!qword_27F451B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F451B00);
  }

  return result;
}

unint64_t sub_25164B9D0()
{
  result = qword_27F451990;
  if (!qword_27F451990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F451990);
  }

  return result;
}

uint64_t HDProfile.fetchFactorTimeline(of:over:calendar:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[0] = a4;
  sub_25164BBFC(0);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25164DE78();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  HDProfile.factorTimeline(of:over:calendar:)(a1, a2, a3, v13);
  (*(v11 + 16))(v9, v13, v10);
  swift_storeEnumTagMultiPayload();
  (v15[0])(v9);
  sub_25164CA20(v9);
  return (*(v11 + 8))(v13, v10);
}

void sub_25164BBFC(uint64_t a1)
{
  if (!qword_27F451B08)
  {
    sub_25164DE78();
    sub_25164BC6C();
    v1 = sub_25164E0F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F451B08);
    }
  }
}

unint64_t sub_25164BC6C()
{
  result = qword_27F451B10;
  if (!qword_27F451B10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F451B10);
  }

  return result;
}

void HDProfile.factorTimeline(of:over:calendar:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v121 = a2;
  v102 = a4;
  v7 = sub_25164DE08();
  v103 = *(v7 - 8);
  v104 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v101 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v100 = &v91 - v10;
  sub_2516462B8(0);
  v123 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v109 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v108 = &v91 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v112 = &v91 - v17;
  MEMORY[0x28223BE20](v16);
  v114 = &v91 - v18;
  v118 = sub_25164DE58();
  v99 = *(v118 - 8);
  v19 = MEMORY[0x28223BE20](v118);
  v98 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v113 = &v91 - v21;
  v96 = sub_25164DDB8();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_25164DD28();
  v115 = *(v23 - 8);
  v116 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v93 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v92 = &v91 - v26;
  v27 = MEMORY[0x277D83D88];
  sub_25164DC4C(0, &qword_27F451B18, MEMORY[0x277D10C18], MEMORY[0x277D83D88]);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v97 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v106 = &v91 - v32;
  MEMORY[0x28223BE20](v31);
  v117 = &v91 - v33;
  sub_25164DC4C(0, &qword_27F451B20, MEMORY[0x277CC8990], v27);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v105 = &v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v107 = &v91 - v38;
  MEMORY[0x28223BE20](v37);
  v119 = &v91 - v39;
  v40 = sub_25164DE38();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v91 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v41 + 104);
  v44(v43, *MEMORY[0x277D10C40], v40);
  v120 = a1;
  LOBYTE(a1) = sub_25164CA7C(v43, a1);
  v45 = *(v41 + 8);
  v45(v43, v40);
  if (a1)
  {
    v46 = v122;
    sub_25164AAF8(v121, v4);
    if (v46)
    {
      return;
    }

    v110 = v47;
    v111 = v4;
    v91 = a3;
    v48 = 0;
  }

  else
  {
    v111 = v4;
    v91 = a3;
    v48 = v122;
    v110 = MEMORY[0x277D84F90];
  }

  v44(v43, *MEMORY[0x277D10C48], v40);
  v49 = v120;
  v50 = sub_25164CA7C(v43, v120);
  v45(v43, v40);
  if (v50)
  {
    v51 = sub_25164CC94(v121);
    if (v48)
    {
      goto LABEL_18;
    }

    v52 = v51;
    v122 = 0;
    v49 = v120;
  }

  else
  {
    v122 = v48;
    v52 = MEMORY[0x277D84F90];
  }

  v44(v43, *MEMORY[0x277D10C50], v40);
  v53 = sub_25164CA7C(v43, v49);
  v45(v43, v40);
  if (v53)
  {
    v54 = v107;
    v55 = v122;
    sub_25164CE18(v107);
    if (v55)
    {
LABEL_17:

LABEL_18:

      return;
    }

    v122 = 0;
    sub_25164D540(v54, v119, &qword_27F451B20, MEMORY[0x277CC8990]);
    v49 = v120;
  }

  else
  {
    (*(v115 + 56))(v119, 1, 1, v116);
  }

  v44(v43, *MEMORY[0x277D10C58], v40);
  v56 = sub_25164CA7C(v43, v49);
  v45(v43, v40);
  if (v56)
  {
    v57 = v122;
    v58 = sub_25164CFAC();
    v60 = v108;
    v59 = v109;
    v62 = v115;
    v61 = v116;
    if (v57)
    {
      sub_25164D3C8(v119, &qword_27F451B20, MEMORY[0x277CC8990]);
      goto LABEL_17;
    }

    v120 = v58;
    v122 = 0;
  }

  else
  {
    v120 = 0;
    v60 = v108;
    v59 = v109;
    v62 = v115;
    v61 = v116;
  }

  v63 = v105;
  sub_25164D4C0(v119, v105, &qword_27F451B20, MEMORY[0x277CC8990]);
  v64 = (*(v62 + 48))(v63, 1, v61);
  v65 = v118;
  v66 = v91;
  if (v64 == 1)
  {
    sub_25164D3C8(v63, &qword_27F451B20, MEMORY[0x277CC8990]);
    v67 = 1;
    v68 = v106;
  }

  else
  {
    v69 = v92;
    (*(v62 + 32))(v92, v63, v61);
    (*(v62 + 16))(v93, v69, v61);
    (*(v95 + 16))(v94, v66, v96);
    v68 = v106;
    sub_25164DDC8();
    v70 = v69;
    v65 = v118;
    (*(v62 + 8))(v70, v61);
    v67 = 0;
  }

  v71 = sub_25164DDD8();
  (*(*(v71 - 8) + 56))(v68, v67, 1, v71);
  sub_25164D540(v68, v117, &qword_27F451B18, MEMORY[0x277D10C18]);
  v72 = v121;
  sub_251648FBC(v121, v114);
  sub_25164DE48();
  sub_251648FBC(v72, v112);
  v73 = v122;
  if (v52 >> 62)
  {
    v84 = v122;
    v85 = sub_25164E058();
    v73 = v84;
    v74 = v85;
    if (v85)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v74 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v74)
    {
LABEL_26:
      v124 = MEMORY[0x277D84F90];
      sub_25164D124(0, v74 & ~(v74 >> 63), 0);
      if (v74 < 0)
      {
        __break(1u);
        return;
      }

      v75 = v124;
      if ((v52 & 0xC000000000000001) != 0)
      {
        v76 = 0;
        do
        {
          MEMORY[0x25307CAB0](v76, v52);
          sub_25164DF68();
          swift_unknownObjectRelease();
          v124 = v75;
          v78 = *(v75 + 16);
          v77 = *(v75 + 24);
          if (v78 >= v77 >> 1)
          {
            sub_25164D124((v77 > 1), v78 + 1, 1);
            v75 = v124;
          }

          ++v76;
          *(v75 + 16) = v78 + 1;
          sub_251646254(v60, v75 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 9) * v78);
        }

        while (v74 != v76);
      }

      else
      {
        v79 = 32;
        do
        {
          v80 = *(v52 + v79);
          sub_25164DF68();

          v124 = v75;
          v82 = *(v75 + 16);
          v81 = *(v75 + 24);
          if (v82 >= v81 >> 1)
          {
            sub_25164D124((v81 > 1), v82 + 1, 1);
            v75 = v124;
          }

          *(v75 + 16) = v82 + 1;
          sub_251646254(v59, v75 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 9) * v82);
          v79 += 8;
          --v74;
        }

        while (v74);
      }

      v83 = v118;
      goto LABEL_40;
    }
  }

  v122 = v73;

  v75 = MEMORY[0x277D84F90];
  v83 = v65;
LABEL_40:
  v124 = v75;
  sub_25164DC4C(0, &qword_27F451B28, sub_2516462B8, MEMORY[0x277D83940]);
  sub_25164D438();
  v86 = v100;
  sub_25164DDF8();
  sub_251648FBC(v72, v114);
  v123 = MEMORY[0x277D10C18];
  sub_25164D4C0(v117, v97, &qword_27F451B18, MEMORY[0x277D10C18]);
  v87 = v99;
  v88 = v113;
  (*(v99 + 16))(v98, v113, v83);
  v90 = v103;
  v89 = v104;
  (*(v103 + 16))(v101, v86, v104);
  sub_25164DE68();
  (*(v90 + 8))(v86, v89);
  (*(v87 + 8))(v88, v118);
  sub_25164D3C8(v117, &qword_27F451B18, v123);
  sub_25164D3C8(v119, &qword_27F451B20, MEMORY[0x277CC8990]);
}

uint64_t sub_25164CA20(uint64_t a1)
{
  sub_25164BBFC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25164CA7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_25164DE38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_25164DCB0(&qword_27F451B58, MEMORY[0x277D10C60], MEMORY[0x277D10C68]), v7 = sub_25164DEA8(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_25164DCB0(&unk_27F451B60, MEMORY[0x277D10C60], MEMORY[0x277D10C70]);
      v15 = sub_25164DED8();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

id sub_25164CC94(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  sub_25164762C(0, &qword_27F451AD8, 0x277D105E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_25164762C(0, &qword_27F451B38, 0x277CCD0C0);
  v3 = MEMORY[0x25307CA20](*MEMORY[0x277CCBA68]);
  sub_25164D5C0();
  v5 = v4;
  v6 = *MEMORY[0x277D10C08];
  v13[0] = 0;
  v7 = [ObjCClassFromMetadata samplesWithType:v3 profile:v1 encodingOptions:0 predicate:v4 limit:v6 anchor:0 error:v13];

  v8 = v13[0];
  if (v7)
  {
    v9 = sub_25164DF18();
    v10 = v8;

    v11 = sub_25164A6C4(v9);
  }

  else
  {
    v11 = v13[0];
    sub_25164DD48();

    swift_willThrow();
  }

  return v11;
}

uint64_t sub_25164CE18@<X0>(uint64_t a1@<X8>)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = [v1 userCharacteristicsManager];
  sub_25164762C(0, &qword_27F451B48, 0x277CCD0D0);
  v4 = MEMORY[0x25307CA30](*MEMORY[0x277CCBB18]);
  v11[0] = 0;
  v5 = [v3 userCharacteristicForType:v4 error:v11];

  if (v5)
  {
    v6 = v11[0];
    sub_25164DFA8();
    swift_unknownObjectRelease();
    v7 = sub_25164DD28();
    v8 = swift_dynamicCast();
    return (*(*(v7 - 8) + 56))(a1, v8 ^ 1u, 1, v7);
  }

  else
  {
    v10 = v11[0];
    sub_25164DD48();

    return swift_willThrow();
  }
}

uint64_t sub_25164CFAC()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v1 = [v0 userCharacteristicsManager];
  sub_25164762C(0, &qword_27F451B48, 0x277CCD0D0);
  v2 = MEMORY[0x25307CA30](*MEMORY[0x277CCBB08]);
  v8[0] = 0;
  v3 = [v1 userCharacteristicForType:v2 error:v8];

  if (v3)
  {
    v4 = v8[0];
    sub_25164DFA8();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = v8[0];
    sub_25164DD48();

    return swift_willThrow();
  }
}

void *sub_25164D124(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25164D144(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25164D144(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_25164DC4C(0, &qword_27F451B50, sub_2516462B8, MEMORY[0x277D84560]);
  sub_2516462B8(0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_2516462B8(0);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void (*sub_25164D340(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25307CAB0](a2, a3);
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
    return sub_25164D3C0;
  }

  __break(1u);
  return result;
}

uint64_t sub_25164D3C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_25164DC4C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_25164D438()
{
  result = qword_27F451B30;
  if (!qword_27F451B30)
  {
    sub_25164DC4C(255, &qword_27F451B28, sub_2516462B8, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F451B30);
  }

  return result;
}

uint64_t sub_25164D4C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25164DC4C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25164D540(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25164DC4C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_25164D5C0()
{
  v0 = sub_25164DDA8();
  v1 = *(v0 - 8);
  v55 = v0;
  v56 = v1;
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v51 - v5;
  sub_25164DBF8();
  v7 = swift_allocObject();
  v57 = xmmword_25164E740;
  *(v7 + 16) = xmmword_25164E740;
  v8 = sub_25164DD88();
  v9 = HDSampleEntityPredicateForStartDate();

  v10 = sub_25164762C(0, &qword_27F4519C8, 0x277D10B70);
  *(v7 + 56) = v10;
  *(v7 + 32) = v9;
  sub_2516462B8(0);
  v11 = sub_25164DD88();
  v12 = HDSampleEntityPredicateForStartDate();

  *(v7 + 88) = v10;
  *(v7 + 64) = v12;
  v13 = sub_25164DF08();

  v14 = objc_opt_self();
  v15 = [v14 predicateMatchingAllPredicates_];

  v54 = v15;
  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_25164DDE8();
  sub_25164DD78();
  v16 = swift_allocObject();
  *(v16 + 16) = v57;
  v53 = v6;
  v17 = sub_25164DD88();
  v18 = HDSampleEntityPredicateForEndDate();

  *(v16 + 56) = v10;
  *(v16 + 32) = v18;
  v19 = sub_25164DD88();
  v20 = HDSampleEntityPredicateForEndDate();

  *(v16 + 88) = v10;
  *(v16 + 64) = v20;
  v21 = sub_25164DF08();

  v22 = [v14 predicateMatchingAllPredicates_];

  if (!v22)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v57;
  v24 = sub_25164DD88();
  v25 = HDSampleEntityPredicateForStartDate();

  *(v23 + 56) = v10;
  *(v23 + 32) = v25;
  v26 = sub_25164DD88();
  v27 = HDSampleEntityPredicateForEndDate();

  *(v23 + 88) = v10;
  *(v23 + 64) = v27;
  v28 = sub_25164DF08();

  v29 = [v14 predicateMatchingAllPredicates_];

  if (!v29)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v30 = swift_allocObject();
  *(v30 + 16) = v57;
  v31 = sub_25164DD88();
  v32 = HDSampleEntityPredicateForStartDate();

  *(v30 + 56) = v10;
  *(v30 + 32) = v32;
  sub_25164DD68();
  v33 = sub_25164DD88();
  v34 = *(v56 + 8);
  v56 += 8;
  v34(v4, v55);
  v35 = HDSampleEntityPredicateForEndDate();

  *(v30 + 88) = v10;
  *(v30 + 64) = v35;
  v36 = sub_25164DF08();

  v37 = [v14 predicateMatchingAllPredicates_];

  if (!v37)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_25164E820;
  v39 = sub_25164762C(0, &qword_27F451B40, 0x277D10B20);
  v40 = v54;
  *(v38 + 32) = v54;
  *(v38 + 56) = v39;
  *(v38 + 64) = v22;
  *(v38 + 88) = v39;
  *(v38 + 96) = v29;
  *(v38 + 152) = v39;
  *(v38 + 120) = v39;
  *(v38 + 128) = v37;
  v54 = v40;
  v52 = v22;
  v41 = v29;
  v42 = v37;
  v43 = sub_25164DF08();

  v44 = [v14 predicateMatchingAnyPredicates_];

  if (!v44)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v45 = swift_allocObject();
  *(v45 + 16) = v57;
  sub_25164762C(0, &qword_27F451B38, 0x277CCD0C0);
  v46 = MEMORY[0x25307CA20](*MEMORY[0x277CCBA68]);
  v47 = HDSampleEntityPredicateForDataType();

  *(v45 + 32) = v47;
  *(v45 + 88) = v39;
  *(v45 + 56) = v10;
  *(v45 + 64) = v44;
  v48 = v44;
  v49 = sub_25164DF08();

  v50 = [v14 predicateMatchingAllPredicates_];

  if (v50)
  {
    v34(v53, v55);

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_25164DBF8()
{
  if (!qword_27F451AB0)
  {
    v0 = sub_25164E068();
    if (!v1)
    {
      atomic_store(v0, &qword_27F451AB0);
    }
  }
}

void sub_25164DC4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25164DCB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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