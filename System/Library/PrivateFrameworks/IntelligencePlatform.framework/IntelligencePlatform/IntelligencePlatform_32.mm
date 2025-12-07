uint64_t sub_1ABCF5920(char a1)
{
  result = 0x7469746E65627573;
  switch(a1)
  {
    case 1:
      result = 0x7461447472617473;
      break;
    case 2:
      result = 0x65746144646E65;
      break;
    case 3:
      result = 0x6E6572727563636FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABCF59C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCF57B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCF59EC(uint64_t a1)
{
  v2 = sub_1ABD0E474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCF5A28(uint64_t a1)
{
  v2 = sub_1ABD0E474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphDateRelationship.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  sub_1ABAD219C(&qword_1EB4D7178, &qword_1ABF51070);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v25 = sub_1ABD0E474();
  sub_1ABA8D27C(&type metadata for CustomGraphDateRelationship.CodingKeys, v26, v25);
  sub_1ABD0E36C();
  sub_1ABF24F84();
  if (!v23)
  {
    type metadata accessor for CustomGraphDateRelationship(0);
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA80C14();
    sub_1ABD0C9E8(v27);
    sub_1ABD1AC08();
    sub_1ABF24F84();
    sub_1ABD1AC08();
    sub_1ABF24F84();
    sub_1ABD1AC08();
    sub_1ABF24F84();
  }

  v28 = sub_1ABA89DE4();
  v29(v28);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void CustomGraphDateRelationship.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  v22 = v21;
  v40[2] = v23;
  sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v40 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v40[3] = sub_1ABAD219C(&qword_1EB4D7188, &qword_1ABF51078);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7BCE0();
  v40[4] = type metadata accessor for CustomGraphDateRelationship(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7C21C();
  v41 = v31;
  v43 = v22;
  v32 = sub_1ABA7ABE4();
  sub_1ABA88DCC(v32, v33);
  sub_1ABD0E474();
  sub_1ABAA0704();
  sub_1ABF252C4();
  if (v20)
  {
    sub_1ABA84B54(v43);
  }

  else
  {
    v42 = v27;
    sub_1ABD0E3C0();
    sub_1ABF24E64();
    *v41 = v44;
    LOBYTE(v44) = 1;
    sub_1ABA7F460();
    sub_1ABD0C9E8(v34);
    sub_1ABD1B874();
    v40[1] = v35;
    sub_1ABF24E64();
    sub_1ABAE2F1C();
    LOBYTE(v44) = 2;
    sub_1ABD1B874();
    sub_1ABA9E3E8();
    sub_1ABF24E64();
    sub_1ABAE2F1C();
    LOBYTE(v44) = 3;
    sub_1ABD1B874();
    sub_1ABF24E64();
    v36 = sub_1ABA8CC40();
    v37(v36);
    sub_1ABA94EB8();
    sub_1ABA8AA88();
    sub_1ABD0AD58();
    sub_1ABA84B54(v43);
    v38 = sub_1ABA7D000();
    sub_1ABD0ADB0(v38, v39);
  }

  sub_1ABD1C004();
  sub_1ABA7BC90();
}

void static CustomGraphEmploymentRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x1F8), *(_Records_GDEntityClass_records + 0x200), *(_Records_GDEntityClass_records + 0x208), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABCF60E8(__n128 a1, uint64_t a2, unint64_t a3)
{
  EntityClass.init(intValue:)(HIBYTE(a3), &v24);
  v3 = *(&v24 + 1);
  if (!*(&v24 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v9 = sub_1ABF237F4();
    sub_1ABA7AA24(v9, qword_1ED871B40);
    v10 = sub_1ABF237D4();
    v11 = sub_1ABF24674();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1ABA78000, v10, v11, "entityClass is nil in CustomGraphEmploymentRelationship init", v12, 2u);
      MEMORY[0x1AC5AB8B0](v12, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v13 = 2;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 33) = 0u;
    *(v13 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v4 = v24;
    v5 = v25;
    v6 = v26;
    v7 = v27;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x1F8), *(_Records_GDEntityClass_records + 0x200), *(_Records_GDEntityClass_records + 0x208), v37);
    v8 = v38 == v5 && v6 == v39;
    if (v8 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v37);
LABEL_9:
      sub_1ABAA8FA8(v4, v3, v5, v6);
      return;
    }

    *&v24 = v4;
    *(&v24 + 1) = v3;
    v25 = v5;
    v26 = v6;
    LOBYTE(v27) = v7;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v37, v14, v15, v16, v17, v18, v19, v20, v24, SBYTE8(v24), v25, v26, v27, v28, v29, v30, v31, v32, v33, *(&v33 + 1), v34, v35, v36, v37[0], v37[1], v38, v39, v40, v41, v42);
    v22 = v21;

    sub_1ABA88934(v37);
    if (v22)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x1F8), *(_Records_GDEntityClass_records + 0x200), *(_Records_GDEntityClass_records + 0x208), &v33);
      v24 = v33;
      v25 = v34;
      v26 = v35;
      LOBYTE(v27) = v36;
      v28 = v4;
      v29 = v3;
      v30 = v5;
      v31 = v6;
      LOBYTE(v32) = v7;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v24, v23);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCF671C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v78 = a4;
  v82 = *(a5 - 8);
  v83 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v73 - v16;
  v18 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v80 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v73 - v23;
  v25 = *(v18 + 24);
  v86 = a1;
  v25(v90, a5, v18, v22);
  v75 = a3;
  v76 = v11;
  v79 = v14;
  v84 = a5;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v27 = v90[0];
  v26 = v90[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[600], *(_Records_GDEntityPredicate_records + 151), *(_Records_GDEntityPredicate_records + 152), &v88);
  if (v88 == v27 && v89 == v26)
  {

LABEL_9:

    v30 = v84;
    (*(v18 + 32))(v84, v18);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v34 = v33;
    (*(v85 + 1))(v24, AssociatedTypeWitness);
    if (v34)
    {
      v35 = v83;
      swift_beginAccess();
      sub_1ABB4DC20();
      v36 = *(*(v35 + 16) + 16);
      sub_1ABB4E024(v36);
      v37 = *(v35 + 16);
      *(v37 + 16) = v36 + 1;
      v38 = v37 + 16 * v36;
      *(v38 + 32) = v32;
      *(v38 + 40) = v34;
      *(v35 + 16) = v37;
LABEL_11:
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v39 = sub_1ABF237F4();
    sub_1ABA7AA24(v39, qword_1ED871B40);
    v40 = v81;
    v41 = v82;
    v42 = *(v82 + 16);
    v42(v81, v86, v30);
    v43 = sub_1ABF237D4();
    v44 = sub_1ABF24664();
    if (!os_log_type_enabled(v43, v44))
    {

      (*(v41 + 8))(v40, v30);
      return;
    }

    v45 = swift_slowAlloc();
    LODWORD(v86) = v44;
    v46 = v45;
    v85 = swift_slowAlloc();
    v88 = v85;
    *v46 = 136642819;
    v42(v79, v40, v30);
    v47 = sub_1ABF23C94();
    v49 = v48;
    (*(v41 + 8))(v40, v30);
    v50 = sub_1ABADD6D8(v47, v49, &v88);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_1ABA78000, v43, v86, "Failed to parse %{sensitive}s.", v46, 0xCu);
    v51 = v85;
    sub_1ABA84B54(v85);
    MEMORY[0x1AC5AB8B0](v51, -1, -1);
    v52 = v46;
    goto LABEL_30;
  }

  v74 = v6;
  v29 = sub_1ABF25054();

  if (v29)
  {
    goto LABEL_9;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_36;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[588], *(_Records_GDEntityPredicate_records + 148), *(_Records_GDEntityPredicate_records + 149), &v88);
  v53 = v88 == v27 && v89 == v26;
  v54 = v74;
  if (v53)
  {
  }

  else
  {
    v55 = sub_1ABF25054();

    if ((v55 & 1) == 0)
    {
      return;
    }
  }

  v56 = v80;
  v57 = v84;
  (*(v18 + 32))(v84, v18);
  v58 = swift_getAssociatedConformanceWitness();
  (*(v58 + 32))(&v88, AssociatedTypeWitness, v58);
  (*(v85 + 1))(v56, AssociatedTypeWitness);
  if (v89)
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v59 = sub_1ABF237F4();
    sub_1ABA7AA24(v59, qword_1ED871B40);
    v60 = v82;
    v61 = *(v82 + 16);
    v62 = v76;
    v61(v76, v86, v57);
    v43 = sub_1ABF237D4();
    v63 = sub_1ABF24664();
    if (os_log_type_enabled(v43, v63))
    {
      v64 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v88 = v86;
      *v64 = 136642819;
      LODWORD(v85) = v63;
      v61(v79, v62, v57);
      v65 = sub_1ABF23C94();
      v67 = v66;
      (*(v60 + 8))(v62, v57);
      v68 = sub_1ABADD6D8(v65, v67, &v88);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_1ABA78000, v43, v85, "Failed to parse %{sensitive}s.", v64, 0xCu);
      v69 = v86;
      sub_1ABA84B54(v86);
      MEMORY[0x1AC5AB8B0](v69, -1, -1);
      v52 = v64;
LABEL_30:
      MEMORY[0x1AC5AB8B0](v52, -1, -1);

      return;
    }

    (*(v60 + 8))(v62, v57);
  }

  else
  {
    v70 = v78;
    v71 = *(v77 + 8);
    TypedEntityIdentifier.init(untyped:)(&v88, v78, v71, &v91);
    if (!v54)
    {
      v87 = v91;
      swift_beginAccess();
      type metadata accessor for TypedEntityIdentifier(255, v70, v71, v72);
      sub_1ABF241F4();
      sub_1ABF241A4();
      goto LABEL_11;
    }
  }
}

uint64_t sub_1ABCF6FC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D747261706564 && a2 == 0xEA0000000000746ELL;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x617A696E6167726FLL && a2 == 0xEE0064496E6F6974)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

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

uint64_t sub_1ABCF70E4(char a1)
{
  if (!a1)
  {
    return 0x7469746E65627573;
  }

  if (a1 == 1)
  {
    return 0x656D747261706564;
  }

  return 0x617A696E6167726FLL;
}

uint64_t sub_1ABCF7160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCF6FC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCF7190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABCF71E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABCF7260(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return GraphObjectRelationship.id.getter(a1, WitnessTable);
}

double sub_1ABCF73A4@<D0>(void (*a1)(void *__return_ptr, uint64_t (*)(), void, uint64_t (*)(), void *)@<X0>, void *a2@<X8>)
{
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v6;

  v8 = v20;
  a1(v19, sub_1ABCF7868, 0, sub_1ABD19888, v7);
  if (v8)
  {
  }

  else
  {

    v10 = v19[0];
    v11 = v19[1];
    swift_beginAccess();
    v12 = *(v3 + 16);
    if (*(v12 + 16) || (swift_beginAccess(), *(*(v5 + 16) + 16)) || (swift_beginAccess(), *(*(v6 + 16) + 16)))
    {
      v20 = sub_1ABB2B834(v12);
      v17 = v13;
      swift_beginAccess();
      v14 = *(v5 + 16);
      swift_beginAccess();
      v15 = *(v6 + 16);

      *a2 = v10;
      a2[1] = v11;
      v16 = v20;
      a2[2] = v12;
      a2[3] = v16;
      a2[4] = v17;
      a2[5] = v14;
      a2[6] = v15;
    }

    else
    {

      a2[6] = 0;
      result = 0.0;
      *(a2 + 1) = 0u;
      *(a2 + 2) = 0u;
      *a2 = 0u;
    }
  }

  return result;
}

void sub_1ABCF762C(void (*a1)(void *__return_ptr, uint64_t (*)(), void, uint64_t (*)(), void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, __n128 *a4@<X8>)
{
  sub_1ABA7D028();
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABA7D028();
  v8 = swift_allocObject();
  sub_1ABD1BEF0(v8);
  sub_1ABA7D028();
  v9 = swift_allocObject();
  sub_1ABD1BED8(v9);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v7;
  v10[5] = v8;
  v10[6] = v9;

  v11 = v32;
  a1(v31, sub_1ABCF7868, 0, sub_1ABD194C8, v10);
  if (v11)
  {
  }

  else
  {

    v13 = v31[0];
    v14 = v31[1];
    v15 = sub_1ABA890D8(v12, v31);
    v16 = *(v7 + 16);
    if (*(v16 + 16) || (v17 = sub_1ABAA9068(v15, v28), *(*v4 + 16)) || (sub_1ABAAA634(v17, v27), sub_1ABD1B9FC(), v18))
    {
      v32 = sub_1ABB2B834(v16);
      v26 = v19;
      v20 = sub_1ABAA9068(v32, v30);
      v21 = *(v8 + 16);
      sub_1ABAAA634(v20, v29);
      v22 = *(v9 + 16);

      a4->n128_u64[0] = v13;
      a4->n128_u64[1] = v14;
      v23 = v32;
      a4[1].n128_u64[0] = v16;
      a4[1].n128_u64[1] = v23;
      a4[2].n128_u64[0] = v26;
      a4[2].n128_u64[1] = v21;
      a4[3].n128_u64[0] = v22;
    }

    else
    {

      a4[3].n128_u64[0] = 0;
      sub_1ABD1BA2C(a4, 0);
    }
  }
}

void sub_1ABCF7888(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_41;
  }

  v8 = *a1;
  v9 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[432], *(_Records_GDEntityPredicate_records + 109), *(_Records_GDEntityPredicate_records + 110), v37);
  if (*&v37[0] == v8 && *(&v37[0] + 1) == v9)
  {
  }

  else
  {
    v36 = a4;
    v11 = sub_1ABF25054();

    if ((v11 & 1) == 0)
    {
      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[420], *(_Records_GDEntityPredicate_records + 106), *(_Records_GDEntityPredicate_records + 107), v37);
        if (*&v37[0] == v8 && *(&v37[0] + 1) == v9)
        {
        }

        else
        {
          v13 = sub_1ABF25054();

          if ((v13 & 1) == 0)
          {
            if (_Records_GDEntityPredicate_records)
            {
              sub_1ABA91D48(_Records_GDEntityPredicate_records[408], *(_Records_GDEntityPredicate_records + 103), *(_Records_GDEntityPredicate_records + 104), v37);
              if (*&v37[0] == v8 && *(&v37[0] + 1) == v9)
              {
              }

              else
              {
                v15 = sub_1ABF25054();

                if ((v15 & 1) == 0)
                {
                  return;
                }
              }

              if ((a1[7] & 1) == 0)
              {
                v32 = a1[5];
                v31 = a1[6];
                a3 = v36;
                goto LABEL_34;
              }

              goto LABEL_29;
            }

LABEL_42:
            __break(1u);
            return;
          }
        }

        if ((a1[7] & 1) == 0)
        {
          v32 = a1[5];
          v31 = a1[6];
LABEL_34:
          swift_beginAccess();

          sub_1ABB4DC20();
          v33 = *(*(a3 + 16) + 16);
          sub_1ABB4E024(v33);
          v34 = *(a3 + 16);
          *(v34 + 16) = v33 + 1;
          v35 = v34 + 16 * v33;
          *(v35 + 32) = v32;
          *(v35 + 40) = v31;
          *(a3 + 16) = v34;
          goto LABEL_35;
        }

LABEL_29:
        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v30 = sub_1ABF237F4();
        sub_1ABA7AA24(v30, qword_1ED871B40);
        sub_1ABD1927C(a1, v37);
        v17 = sub_1ABF237D4();
        v18 = sub_1ABF24664();
        if (!os_log_type_enabled(v17, v18))
        {
LABEL_32:

          sub_1ABB6DBB8(a1);
          return;
        }

LABEL_25:
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v39 = v20;
        *v19 = 136642819;
        v21 = *(a1 + 1);
        v37[0] = *a1;
        v37[1] = v21;
        v38[0] = *(a1 + 2);
        *(v38 + 9) = *(a1 + 41);
        v22 = sub_1ABF23C94();
        v24 = sub_1ABADD6D8(v22, v23, &v39);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_1ABA78000, v17, v18, "Failed to parse %{sensitive}s.", v19, 0xCu);
        sub_1ABA84B54(v20);
        MEMORY[0x1AC5AB8B0](v20, -1, -1);
        MEMORY[0x1AC5AB8B0](v19, -1, -1);

        return;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

  if (a1[7])
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v16 = sub_1ABF237F4();
    sub_1ABA7AA24(v16, qword_1ED871B40);
    sub_1ABD1927C(a1, v37);
    v17 = sub_1ABF237D4();
    v18 = sub_1ABF24664();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  v26 = a1[5];
  v25 = a1[6];
  swift_beginAccess();

  sub_1ABB4DC20();
  v27 = *(*(a2 + 16) + 16);
  sub_1ABB4E024(v27);
  v28 = *(a2 + 16);
  *(v28 + 16) = v27 + 1;
  v29 = v28 + 16 * v27;
  *(v29 + 32) = v26;
  *(v29 + 40) = v25;
  *(a2 + 16) = v28;
LABEL_35:
  swift_endAccess();
}

void sub_1ABCF7CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v78 = a4;
  v81 = a3;
  v85 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = v75 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v75 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v84 = v75 - v16;
  v18 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v83 = v75 - v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v75 - v25;
  (*(v18 + 24))(v91, v5, v18, v24);
  v86 = AssociatedTypeWitness;
  v77 = v9;
  v87 = a1;
  v82 = v14;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v28 = v91[0];
  v27 = v91[1];
  v29 = v91[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[432], *(_Records_GDEntityPredicate_records + 109), *(_Records_GDEntityPredicate_records + 110), &v89);
  if (v89 == v28 && v90 == v27)
  {

    goto LABEL_9;
  }

  v75[1] = v29;
  v76 = v5;
  v31 = sub_1ABF25054();

  if (v31)
  {
    v5 = v76;
LABEL_9:

    v32 = v87;
    (*(v18 + 32))(v5, v18);
    v33 = v86;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v35 = (*(AssociatedConformanceWitness + 24))(v33, AssociatedConformanceWitness);
    v37 = v36;
    (v88[1])(v26, v33);
    if (v37)
    {
      swift_beginAccess();
      sub_1ABB4DC20();
      v38 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v38);
      v39 = *(a2 + 16);
      *(v39 + 16) = v38 + 1;
      v40 = v39 + 16 * v38;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      *(a2 + 16) = v39;
LABEL_28:
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v41 = sub_1ABF237F4();
    sub_1ABA7AA24(v41, qword_1ED871B40);
    v42 = v84;
    v43 = v85;
    v44 = *(v85 + 16);
    v44(v84, v32, v5);
    goto LABEL_14;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_47;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[420], *(_Records_GDEntityPredicate_records + 106), *(_Records_GDEntityPredicate_records + 107), &v89);
  v53 = v89 == v28 && v90 == v27;
  v43 = v85;
  if (v53)
  {

    v5 = v76;
LABEL_25:
    v55 = v83;

    v56 = v87;
    (*(v18 + 32))(v5, v18);
    v57 = v86;
    v58 = swift_getAssociatedConformanceWitness();
    v59 = (*(v58 + 24))(v57, v58);
    v61 = v60;
    (v88[1])(v55, v57);
    if (v61)
    {
      v62 = v81;
LABEL_27:
      swift_beginAccess();
      sub_1ABB4DC20();
      v63 = *(*(v62 + 16) + 16);
      sub_1ABB4E024(v63);
      v64 = *(v62 + 16);
      *(v64 + 16) = v63 + 1;
      v65 = v64 + 16 * v63;
      *(v65 + 32) = v59;
      *(v65 + 40) = v61;
      *(v62 + 16) = v64;
      goto LABEL_28;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v66 = sub_1ABF237F4();
    sub_1ABA7AA24(v66, qword_1ED871B40);
    v44 = *(v43 + 16);
    v42 = v80;
    v44(v80, v56, v5);
    goto LABEL_14;
  }

  v54 = sub_1ABF25054();

  v5 = v76;
  if (v54)
  {
    goto LABEL_25;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_48:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[408], *(_Records_GDEntityPredicate_records + 103), *(_Records_GDEntityPredicate_records + 104), &v89);
  if (v89 == v28 && v90 == v27)
  {
  }

  else
  {
    v68 = sub_1ABF25054();

    if ((v68 & 1) == 0)
    {
      return;
    }
  }

  v69 = v79;
  v70 = v87;
  (*(v18 + 32))(v5, v18);
  v71 = v86;
  v72 = swift_getAssociatedConformanceWitness();
  v59 = (*(v72 + 24))(v71, v72);
  v61 = v73;
  (v88[1])(v69, v71);
  if (v61)
  {
    v62 = v78;
    goto LABEL_27;
  }

  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v74 = sub_1ABF237F4();
  sub_1ABA7AA24(v74, qword_1ED871B40);
  v44 = *(v43 + 16);
  v42 = v77;
  v44(v77, v70, v5);
LABEL_14:
  v45 = sub_1ABF237D4();
  v46 = sub_1ABF24664();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v89 = v88;
    *v47 = 136642819;
    v44(v82, v42, v5);
    v48 = sub_1ABF23C94();
    v50 = v49;
    (*(v43 + 8))(v42, v5);
    v51 = sub_1ABADD6D8(v48, v50, &v89);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_1ABA78000, v45, v46, "Failed to parse %{sensitive}s.", v47, 0xCu);
    v52 = v88;
    sub_1ABA84B54(v88);
    MEMORY[0x1AC5AB8B0](v52, -1, -1);
    MEMORY[0x1AC5AB8B0](v47, -1, -1);
  }

  else
  {

    (*(v43 + 8))(v42, v5);
  }
}

uint64_t CustomGraphHandleRelationship.init(subentityId:all_label:all_emailAddresses:all_phoneNumbers:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a1;
  if (*(a2 + 16))
  {
    v9 = *(a2 + 32);
  }

  else
  {
    v9 = 0;
    result = 0;
  }

  *(a5 + 16) = a2;
  *(a5 + 24) = v9;
  *(a5 + 32) = result;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  return result;
}

uint64_t sub_1ABCF867C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6464416C69616D65 && a2 == 0xEE00736573736572;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEC00000073726562)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

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

uint64_t sub_1ABCF87E0(char a1)
{
  result = 0x7469746E65627573;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 0x6464416C69616D65;
      break;
    case 3:
      result = 0x6D754E656E6F6870;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABCF8884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCF867C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCF88AC(uint64_t a1)
{
  v2 = sub_1ABD0E4F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCF88E8(uint64_t a1)
{
  v2 = sub_1ABD0E4F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphHandleRelationship.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABD1BABC();
  sub_1ABAD219C(&qword_1EB4D7190, &qword_1ABF51080);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7E338();
  sub_1ABD1B2D8();
  sub_1ABA88DCC(v1, v1[3]);
  sub_1ABD0E4F8();
  sub_1ABA82E0C();
  sub_1ABA9EE14();
  sub_1ABF252E4();
  sub_1ABD0E36C();
  v3 = sub_1ABA80C2C();
  sub_1ABD1B97C(v3, v4, v5);
  if (!v0)
  {
    sub_1ABD1AC6C(v18, v17);

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v6 = sub_1ABAA2D10();
    sub_1ABAA6564(v6, v7, v8);
    sub_1ABD1AFA0();

    sub_1ABD1B178();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80C3C(&qword_1EB4D4308, MEMORY[0x1E69E6160]);
    sub_1ABA80C2C();
    sub_1ABAB5FAC();
    sub_1ABAA6564(v9, v10, v11);
    if (!v19)
    {
      sub_1ABD1AF94();
      sub_1ABA80C2C();
      sub_1ABAB5FAC();
      sub_1ABAA6564(v12, v13, v14);
    }
  }

  v15 = sub_1ABA7D0EC();
  v16(v15);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphHandleRelationship.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA841B8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D71A0, &qword_1ABF51088);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA8176C();
  sub_1ABA8A074(v1);
  sub_1ABD0E4F8();
  sub_1ABD1B684();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v1);
  }

  else
  {
    sub_1ABD0E3C0();
    sub_1ABD1AF3C();
    sub_1ABA827AC();
    sub_1ABD1B9CC(v6, v7, v8, v9);
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABA89A14();
    sub_1ABD0A2D4();
    sub_1ABAA112C();
    sub_1ABA9F49C();
    sub_1ABF24E64();
    v10 = sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABD1B178();
    sub_1ABA7E810(&qword_1ED870660, MEMORY[0x1E69E6190]);
    v11 = sub_1ABD1AC44();
    sub_1ABD1B9CC(v11, v12, v4, v10);
    sub_1ABA8AB1C(3);
    sub_1ABD1B9CC(v10, v13, v4, v10);
    v14 = sub_1ABA9F1EC();
    v15(v14, v4);
    *v3 = v16;
    v3[1] = v17;
    v3[2] = v16;
    v3[3] = v17;
    v3[4] = v18;
    v3[5] = v16;
    v3[6] = v16;

    sub_1ABA84B54(v1);
  }

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void static CustomGraphIdentifierRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x1C8), *(_Records_GDEntityClass_records + 0x1D0), *(_Records_GDEntityClass_records + 0x1D0 + 8), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

double sub_1ABCF8EE8@<D0>(void (*a1)(void *__return_ptr, uint64_t (*)(), void, uint64_t (*)(), void *)@<X0>, void *a2@<X8>)
{
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v6;

  v8 = v29;
  a1(v28, sub_1ABCF94AC, 0, sub_1ABD1925C, v7);
  if (v8)
  {
  }

  else
  {

    v10 = v28[0];
    v29 = v28[1];
    swift_beginAccess();
    v11 = *(v3 + 16);
    if (*(v11 + 16) || (swift_beginAccess(), *(*(v5 + 16) + 16)) || (swift_beginAccess(), *(*(v6 + 16) + 16)))
    {
      v12 = sub_1ABB2B834(v11);
      v25 = v13;
      v27 = v12;
      swift_beginAccess();
      v14 = *(v5 + 16);
      v15 = sub_1ABB2B834(v14);
      v23 = v16;
      v24 = v15;
      swift_beginAccess();
      v17 = *(v6 + 16);
      v18 = sub_1ABB2B834(v17);
      v21 = v19;
      v22 = v18;

      v20 = v29;
      *a2 = v10;
      a2[1] = v20;
      a2[2] = v11;
      a2[3] = v27;
      a2[4] = v25;
      a2[5] = v14;
      a2[6] = v24;
      a2[7] = v23;
      a2[8] = v17;
      a2[9] = v22;
      a2[10] = v21;
    }

    else
    {

      a2[10] = 0;
      result = 0.0;
      *(a2 + 3) = 0u;
      *(a2 + 4) = 0u;
      *(a2 + 1) = 0u;
      *(a2 + 2) = 0u;
      *a2 = 0u;
    }
  }

  return result;
}

void sub_1ABCF9198(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  sub_1ABA7D028();
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABA7D028();
  v8 = swift_allocObject();
  sub_1ABD1BED8(v8);
  sub_1ABA7D028();
  v9 = swift_allocObject();
  sub_1ABD1BEF0(v9);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v7;
  v10[5] = v8;
  v10[6] = v9;

  sub_1ABD1B678();
  a1();
  if (v35)
  {
  }

  else
  {

    v12 = v34[0];
    v13 = v34[1];
    v14 = sub_1ABA890D8(v11, v34);
    v15 = *(v7 + 16);
    if (*(v15 + 16) || (sub_1ABAAA634(v14, v31), sub_1ABD1B9FC(), v17) || (sub_1ABAA9068(v16, v30), *(*v4 + 16)))
    {
      v35 = sub_1ABB2B834(v15);
      v29 = v18;
      sub_1ABAAA634(v35, v33);
      v27 = sub_1ABD1C2E4();
      v25 = v19;
      sub_1ABAA9068(v27, v32);
      v20 = *(v9 + 16);
      v21 = sub_1ABB2B834(v20);
      v24 = v22;

      *a4 = v12;
      a4[1] = v13;
      v23 = v35;
      a4[2] = v15;
      a4[3] = v23;
      a4[4] = v29;
      a4[5] = v12;
      a4[6] = v27;
      a4[7] = v25;
      a4[8] = v20;
      a4[9] = v21;
      a4[10] = v24;
    }

    else
    {

      a4[10] = 0;
      *(a4 + 3) = 0u;
      *(a4 + 4) = 0u;
      sub_1ABD1BA2C(a4, 0);
    }
  }
}

uint64_t sub_1ABCF9424()
{
  sub_1ABA81488();
  v1(0);
  sub_1ABA7BBB0();
  v2 = sub_1ABA7D000();
  v3(v2);
  return v0;
}

void sub_1ABCF94AC(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 15), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphIdentifierRelationship init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x1C8), *(_Records_GDEntityClass_records + 0x1D0), *(_Records_GDEntityClass_records + 0x1D0 + 8), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x1C8), *(_Records_GDEntityClass_records + 0x1D0), *(_Records_GDEntityClass_records + 0x1D0 + 8), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCF973C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_41;
  }

  v7 = *a1;
  v8 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[540], *(_Records_GDEntityPredicate_records + 136), *(_Records_GDEntityPredicate_records + 137), v38);
  if (*&v38[0] == v7 && *(&v38[0] + 1) == v8)
  {
  }

  else
  {
    v36 = a4;
    v10 = sub_1ABF25054();

    if ((v10 & 1) == 0)
    {
      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[276], *(_Records_GDEntityPredicate_records + 70), *(_Records_GDEntityPredicate_records + 71), v38);
        if (*&v38[0] == v7 && *(&v38[0] + 1) == v8)
        {
        }

        else
        {
          v12 = sub_1ABF25054();

          if ((v12 & 1) == 0)
          {
            if (_Records_GDEntityPredicate_records)
            {
              sub_1ABA91D48(_Records_GDEntityPredicate_records[2556], *(_Records_GDEntityPredicate_records + 640), *(_Records_GDEntityPredicate_records + 641), v38);
              if (*&v38[0] == v7 && *(&v38[0] + 1) == v8)
              {
              }

              else
              {
                v14 = sub_1ABF25054();

                if ((v14 & 1) == 0)
                {
                  return;
                }
              }

              if ((a1[7] & 1) == 0)
              {
                v31 = a1[5];
                v30 = a1[6];
                v32 = v36;
                goto LABEL_34;
              }

              goto LABEL_29;
            }

LABEL_42:
            __break(1u);
            return;
          }
        }

        if ((a1[7] & 1) == 0)
        {
          v31 = a1[5];
          v30 = a1[6];
          v32 = a3;
LABEL_34:
          swift_beginAccess();

          sub_1ABB4DC20();
          v33 = *(*(v32 + 16) + 16);
          sub_1ABB4E024(v33);
          v34 = *(v32 + 16);
          *(v34 + 16) = v33 + 1;
          v35 = v34 + 16 * v33;
          *(v35 + 32) = v31;
          *(v35 + 40) = v30;
          *(v32 + 16) = v34;
          goto LABEL_35;
        }

LABEL_29:
        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v29 = sub_1ABF237F4();
        sub_1ABA7AA24(v29, qword_1ED871B40);
        sub_1ABD1927C(a1, v38);
        v16 = sub_1ABF237D4();
        v17 = sub_1ABF24664();
        if (!os_log_type_enabled(v16, v17))
        {
LABEL_32:

          sub_1ABB6DBB8(a1);
          return;
        }

LABEL_25:
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v40 = v19;
        *v18 = 136642819;
        v20 = *(a1 + 1);
        v38[0] = *a1;
        v38[1] = v20;
        v39[0] = *(a1 + 2);
        *(v39 + 9) = *(a1 + 41);
        v21 = sub_1ABF23C94();
        v23 = sub_1ABADD6D8(v21, v22, &v40);

        *(v18 + 4) = v23;
        _os_log_impl(&dword_1ABA78000, v16, v17, "Failed to parse %{sensitive}s.", v18, 0xCu);
        sub_1ABA84B54(v19);
        MEMORY[0x1AC5AB8B0](v19, -1, -1);
        MEMORY[0x1AC5AB8B0](v18, -1, -1);

        return;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

  if (a1[7])
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v15 = sub_1ABF237F4();
    sub_1ABA7AA24(v15, qword_1ED871B40);
    sub_1ABD1927C(a1, v38);
    v16 = sub_1ABF237D4();
    v17 = sub_1ABF24664();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  v25 = a1[5];
  v24 = a1[6];
  swift_beginAccess();

  sub_1ABB4DC20();
  v26 = *(*(a2 + 16) + 16);
  sub_1ABB4E024(v26);
  v27 = *(a2 + 16);
  *(v27 + 16) = v26 + 1;
  v28 = v27 + 16 * v26;
  *(v28 + 32) = v25;
  *(v28 + 40) = v24;
  *(a2 + 16) = v27;
LABEL_35:
  swift_endAccess();
}

void sub_1ABCF9BBC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v94 = a4;
  v98 = a3;
  v102 = *(a5 - 8);
  v103 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v92 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v92 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v104 = &v92 - v17;
  v19 = *(v18 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v105 = *(AssociatedTypeWitness - 8);
  v106 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v95 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v100 = &v92 - v23;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v92 - v26;
  v28 = *(v19 + 24);
  v110 = a1;
  v28(v109, a5, v19, v25);
  v96 = 279;
  v97 = v12;
  v93 = v9;
  v99 = v15;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v29 = a5;
  v31 = v109[0];
  v30 = v109[1];
  v32 = v109[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[540], *(_Records_GDEntityPredicate_records + 136), *(_Records_GDEntityPredicate_records + 137), &v107);
  if (v107 == v31 && v108 == v30)
  {

    v35 = v5;
    goto LABEL_9;
  }

  v92 = v32;
  v101 = v5;
  v34 = sub_1ABF25054();

  if (v34)
  {
    v35 = v101;
LABEL_9:

    v36 = v110;
    v37 = v29;
    (*(v19 + 32))(v29, v19);
    v38 = v106;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v40 = (*(AssociatedConformanceWitness + 24))(v38, AssociatedConformanceWitness);
    v42 = v41;
    (*(v105 + 8))(v27, v38);
    v43 = v104;
    if (v42)
    {
      v44 = v103;
LABEL_11:
      swift_beginAccess();
      sub_1ABB4DC20();
      v45 = *(*(v44 + 16) + 16);
      sub_1ABB4E024(v45);
      v46 = *(v44 + 16);
      *(v46 + 16) = v45 + 1;
      v47 = v46 + 16 * v45;
      *(v47 + 32) = v40;
      *(v47 + 40) = v42;
      *(v44 + 16) = v46;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v48 = sub_1ABF237F4();
    sub_1ABA7AA24(v48, qword_1ED871B40);
    v49 = v102;
    v50 = *(v102 + 16);
    v50(v43, v36, v37);
    v51 = sub_1ABF237D4();
    v52 = sub_1ABF24664();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v101 = v35;
      v110 = v54;
      v107 = v54;
      *v53 = 136642819;
      v50(v99, v43, v37);
      v55 = sub_1ABF23C94();
      v57 = v56;
      (*(v49 + 8))(v43, v37);
LABEL_16:
      v58 = sub_1ABADD6D8(v55, v57, &v107);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_1ABA78000, v51, v52, "Failed to parse %{sensitive}s.", v53, 0xCu);
      v59 = v110;
      sub_1ABA84B54(v110);
      MEMORY[0x1AC5AB8B0](v59, -1, -1);
      MEMORY[0x1AC5AB8B0](v53, -1, -1);

      return;
    }

    (*(v49 + 8))(v43, v37);
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_52;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[276], *(_Records_GDEntityPredicate_records + 70), *(_Records_GDEntityPredicate_records + 71), &v107);
  v60 = v107 == v31 && v108 == v30;
  v61 = v29;
  if (!v60)
  {
    v62 = sub_1ABF25054();

    if (v62)
    {
      goto LABEL_26;
    }

    if (v96 < 0xD6)
    {
      __break(1u);
LABEL_50:
      swift_once();
LABEL_46:
      v79 = sub_1ABF237F4();
      sub_1ABA7AA24(v79, qword_1ED871B40);
      v80 = v102;
      v81 = *(v102 + 16);
      v82 = v93;
      v81(v93, v31, v61);
      v83 = sub_1ABF237D4();
      v84 = sub_1ABF24664();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        LODWORD(v110) = v84;
        v86 = v85;
        v87 = swift_slowAlloc();
        v107 = v87;
        *v86 = 136642819;
        v81(v99, v82, v61);
        v88 = sub_1ABF23C94();
        v90 = v89;
        (*(v80 + 8))(v82, v61);
        v91 = sub_1ABADD6D8(v88, v90, &v107);

        *(v86 + 4) = v91;
        _os_log_impl(&dword_1ABA78000, v83, v110, "Failed to parse %{sensitive}s.", v86, 0xCu);
        sub_1ABA84B54(v87);
        MEMORY[0x1AC5AB8B0](v87, -1, -1);
        MEMORY[0x1AC5AB8B0](v86, -1, -1);
      }

      else
      {

        (*(v80 + 8))(v82, v61);
      }

      return;
    }

    if (_Records_GDEntityPredicate_records)
    {
      sub_1ABA91D48(_Records_GDEntityPredicate_records[2556], *(_Records_GDEntityPredicate_records + 640), *(_Records_GDEntityPredicate_records + 641), &v107);
      if (v107 == v31 && v108 == v30)
      {
      }

      else
      {
        v74 = sub_1ABF25054();

        if ((v74 & 1) == 0)
        {
          return;
        }
      }

      v75 = v95;
      v31 = v110;
      (*(v19 + 32))(v29, v19);
      v76 = v106;
      v77 = swift_getAssociatedConformanceWitness();
      v40 = (*(v77 + 24))(v76, v77);
      v42 = v78;
      (*(v105 + 8))(v75, v76);
      if (v42)
      {
        v44 = v94;
        goto LABEL_11;
      }

      if (qword_1ED871B38 == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_50;
    }

LABEL_53:
    __break(1u);
    return;
  }

LABEL_26:

  v63 = v100;
  v64 = v110;
  (*(v19 + 32))(v29, v19);
  v65 = v106;
  v66 = swift_getAssociatedConformanceWitness();
  v40 = (*(v66 + 24))(v65, v66);
  v42 = v67;
  (*(v105 + 8))(v63, v65);
  if (v42)
  {
    v44 = v98;
    goto LABEL_11;
  }

  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v68 = sub_1ABF237F4();
  sub_1ABA7AA24(v68, qword_1ED871B40);
  v69 = v102;
  v70 = *(v102 + 16);
  v71 = v97;
  v70(v97, v64, v61);
  v51 = sub_1ABF237D4();
  v52 = sub_1ABF24664();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v107 = v110;
    *v53 = 136642819;
    v70(v99, v71, v61);
    v55 = sub_1ABF23C94();
    v57 = v72;
    (*(v69 + 8))(v71, v61);
    goto LABEL_16;
  }

  (*(v69 + 8))(v71, v61);
}

uint64_t CustomGraphIdentifierRelationship.init(subentityId:all_type:all_id:all_hasProfileImage:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>, _OWORD *a5@<X0>)
{
  v9 = sub_1ABD1B584(a5, a1, a4);
  a4[2] = a1;
  a4[3] = v9;
  a4[4] = v10;
  v11 = sub_1ABB2B834(a2);
  a4[5] = a2;
  a4[6] = v11;
  a4[7] = v12;
  result = sub_1ABB2B834(a3);
  a4[8] = a3;
  a4[9] = result;
  a4[10] = v14;
  return result;
}

uint64_t sub_1ABCFA730(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 25705 && a2 == 0xE200000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x69666F7250736168 && a2 == 0xEF6567616D49656CLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

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

uint64_t sub_1ABCFA88C(char a1)
{
  result = 0x7469746E65627573;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 0x69666F7250736168;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABCFA918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCFA730(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCFA940(uint64_t a1)
{
  v2 = sub_1ABD0E54C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCFA97C(uint64_t a1)
{
  v2 = sub_1ABD0E54C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABCFA9E0@<X0>(uint64_t *a1@<X8>)
{
  result = CustomGraphSportsTeam.qid.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void CustomGraphIdentifierRelationship.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABAD219C(&qword_1EB4D71A8, &qword_1ABF51090);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABD1B2D8();
  sub_1ABD1BF50();
  v2 = sub_1ABA894A0();
  sub_1ABA88DCC(v2, v3);
  sub_1ABD0E54C();
  sub_1ABA82E0C();
  sub_1ABA8177C();
  sub_1ABF252E4();
  sub_1ABD0E36C();
  v4 = sub_1ABA80C2C();
  sub_1ABD1B97C(v4, v5, v6);
  if (v0)
  {
    v7 = sub_1ABA89DE4();
    v8(v7);
  }

  else
  {
    sub_1ABA8B6EC();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v9 = sub_1ABA80C2C();
    sub_1ABAA03A4(v9, v10, v11);
    if (v20)
    {
      sub_1ABAA1210();
    }

    else
    {
      sub_1ABAA1210();

      sub_1ABD1B178();

      v12 = sub_1ABA80C2C();
      sub_1ABAA03A4(v12, v13, v14);
      sub_1ABD1AFA0();

      sub_1ABAB5EC8();
      sub_1ABD1AF94();

      v15 = sub_1ABA80C2C();
      sub_1ABAA03A4(v15, v16, v17);
      sub_1ABD1AFA0();
    }

    v18 = sub_1ABA7D0EC();
    v19(v18);
  }

  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphIdentifierRelationship.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA841B8();
  v2 = sub_1ABAD219C(&qword_1EB4D71B8, &qword_1ABF51098);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA8176C();
  sub_1ABA8A074(v1);
  sub_1ABD0E54C();
  sub_1ABD1B684();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v1);
  }

  else
  {
    sub_1ABD0E3C0();
    sub_1ABD1B3AC();
    sub_1ABD1B9CC(v4, v5, v2, v4);
    sub_1ABD1B6F4(v34);
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABA9E1A8(1);
    sub_1ABD0A2D4();
    sub_1ABD1B3AC();
    v6 = sub_1ABD1B004();
    sub_1ABD1B9CC(v6, v7, v8, v9);
    v30 = v35;
    v10 = v34;
    sub_1ABD1B77C(v35);
    v31 = v36;
    sub_1ABA9E1A8(2);
    sub_1ABD1B3AC();
    v11 = sub_1ABD1B004();
    sub_1ABD1B9CC(v11, v12, v13, v14);
    sub_1ABAA168C();
    sub_1ABD1AF94();
    sub_1ABD1B66C();
    v15 = sub_1ABD1B004();
    sub_1ABD1B9CC(v15, v16, v17, v18);
    v19 = sub_1ABD1B148();
    v20(v19);
    sub_1ABD1BAA4(v42);
    v33[0] = v32;
    v33[1] = v35;
    v33[2] = v34;
    v33[3] = v29;
    v33[4] = v36;
    v33[5] = v27;
    v33[6] = v26;
    v33[7] = v28;
    v33[8] = v21;
    v33[9] = v43;
    v33[10] = v44;
    v22 = sub_1ABAA63C4();
    memcpy(v22, v23, 0x58uLL);
    sub_1ABD0E5A0(v33, &v34);
    sub_1ABA84B54(v1);
    v34 = v32;
    v35 = v30;
    v36 = v10;
    v37 = v29;
    v38 = v31;
    v39 = v27;
    sub_1ABD1BB28();
    v40 = v24;
    v41 = v28;
    v25 = sub_1ABAA3ED0();
    sub_1ABD0E5D8(v25);
  }

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void static CustomGraphQuantityRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x240), *(_Records_GDEntityClass_records + 0x248), *(_Records_GDEntityClass_records + 0x250), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

double sub_1ABCFAFF0@<D0>(void (*a1)(void *__return_ptr, uint64_t (*)(), void, uint64_t (*)(), uint64_t)@<X0>, void *a2@<X8>)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];

  a1(v13, sub_1ABCFB284, 0, sub_1ABD19460, v5);

  if (v2)
  {
  }

  else
  {
    v7 = v13[0];
    v8 = v13[1];
    swift_beginAccess();
    v9 = *(v5 + 16);
    if (*(v9 + 16))
    {
      v10 = sub_1ABB2B834(v9);
      v12 = v11;

      *a2 = v7;
      a2[1] = v8;
      a2[2] = v9;
      a2[3] = v10;
      a2[4] = v12;
    }

    else
    {

      a2[4] = 0;
      result = 0.0;
      *a2 = 0u;
      *(a2 + 1) = 0u;
    }
  }

  return result;
}

void sub_1ABCFB130(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  sub_1ABA7D028();
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  v10 = v9 + 16;
  sub_1ABAA4EC8();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v9;

  sub_1ABD1BAC8();
  a1();
  if (v4)
  {
  }

  else
  {

    v13 = v16[0];
    v14 = v16[1];
    sub_1ABD1B0E8(v12, v16);
    sub_1ABD1BE24();
    if (v15)
    {
      sub_1ABB2B834(v10);
      sub_1ABD1B6A8();

      *a4 = v13;
      a4[1] = v14;
      a4[2] = v10;
      a4[3] = a1;
      a4[4] = v11;
    }

    else
    {

      a4[4] = 0;
      *a4 = 0u;
      *(a4 + 1) = 0u;
    }
  }

  sub_1ABA7E708();
}

void sub_1ABCFB284(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 15), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphQuantityRelationship init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x240), *(_Records_GDEntityClass_records + 0x248), *(_Records_GDEntityClass_records + 0x250), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x240), *(_Records_GDEntityClass_records + 0x248), *(_Records_GDEntityClass_records + 0x250), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCFB51C(uint64_t *a1, uint64_t a2)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    return;
  }

  v26[7] = v2;
  v26[8] = v3;
  v6 = *a1;
  v7 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[660], *(_Records_GDEntityPredicate_records + 166), *(_Records_GDEntityPredicate_records + 167), v24);
  if (*&v24[0] == v6 && *(&v24[0] + 1) == v7)
  {
  }

  else
  {
    v9 = sub_1ABF25054();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  if (a1[7])
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v10 = sub_1ABF237F4();
    sub_1ABA7AA24(v10, qword_1ED871B40);
    sub_1ABD1927C(a1, v24);
    v11 = sub_1ABF237D4();
    v12 = sub_1ABF24664();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26[0] = v14;
      *v13 = 136642819;
      v15 = *(a1 + 1);
      v24[0] = *a1;
      v24[1] = v15;
      v25[0] = *(a1 + 2);
      *(v25 + 9) = *(a1 + 41);
      v16 = sub_1ABF23C94();
      v18 = sub_1ABADD6D8(v16, v17, v26);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1ABA78000, v11, v12, "Failed to parse %{sensitive}s.", v13, 0xCu);
      sub_1ABA84B54(v14);
      MEMORY[0x1AC5AB8B0](v14, -1, -1);
      MEMORY[0x1AC5AB8B0](v13, -1, -1);
    }

    else
    {

      sub_1ABB6DBB8(a1);
    }
  }

  else
  {
    v20 = a1[5];
    v19 = a1[6];
    swift_beginAccess();

    sub_1ABB4DC20();
    v21 = *(*(a2 + 16) + 16);
    sub_1ABB4E024(v21);
    v22 = *(a2 + 16);
    *(v22 + 16) = v21 + 1;
    v23 = v22 + 16 * v21;
    *(v23 + 32) = v20;
    *(v23 + 40) = v19;
    *(a2 + 16) = v22;
    swift_endAccess();
  }
}

void sub_1ABCFB7B0(char *a1, uint64_t a2, uint64_t a3)
{
  v44 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v42 - v9;
  v11 = *(v10 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v42 - v15;
  (*(v11 + 24))(v49, a3, v11, v14);
  v45 = a2;
  v46 = v13;
  v47 = a1;
  v42 = v7;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    return;
  }

  v18 = v49[0];
  v17 = v49[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[660], *(_Records_GDEntityPredicate_records + 166), *(_Records_GDEntityPredicate_records + 167), v48);
  if (v48[0] == v18 && v48[1] == v17)
  {
  }

  else
  {
    v20 = sub_1ABF25054();

    if ((v20 & 1) == 0)
    {
      return;
    }
  }

  v21 = v47;
  (*(v11 + 32))(a3, v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v25 = v24;
  (*(v46 + 8))(v16, AssociatedTypeWitness);
  if (v25)
  {
    v26 = v45;
    swift_beginAccess();
    sub_1ABB4DC20();
    v27 = *(*(v26 + 16) + 16);
    sub_1ABB4E024(v27);
    v28 = *(v26 + 16);
    *(v28 + 16) = v27 + 1;
    v29 = v28 + 16 * v27;
    *(v29 + 32) = v23;
    *(v29 + 40) = v25;
    *(v26 + 16) = v28;
    swift_endAccess();
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v30 = sub_1ABF237F4();
    sub_1ABA7AA24(v30, qword_1ED871B40);
    v32 = v43;
    v31 = v44;
    v33 = *(v44 + 16);
    v33(v43, v21, a3);
    v34 = sub_1ABF237D4();
    v35 = sub_1ABF24664();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48[0] = v47;
      *v36 = 136642819;
      v33(v42, v32, a3);
      v37 = sub_1ABF23C94();
      v39 = v38;
      (*(v31 + 8))(v32, a3);
      v40 = sub_1ABADD6D8(v37, v39, v48);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_1ABA78000, v34, v35, "Failed to parse %{sensitive}s.", v36, 0xCu);
      v41 = v47;
      sub_1ABA84B54(v47);
      MEMORY[0x1AC5AB8B0](v41, -1, -1);
      MEMORY[0x1AC5AB8B0](v36, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v32, a3);
    }
  }
}

uint64_t CustomGraphQuantityRelationship.init(subentityId:all_quantity:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  if (*(a2 + 16))
  {
    v5 = *(a2 + 32);
  }

  else
  {
    v5 = 0;
    result = 0;
  }

  *(a3 + 16) = a2;
  *(a3 + 24) = v5;
  *(a3 + 32) = result;
  return result;
}

uint64_t sub_1ABCFBCE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E617571 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABCFBDB0()
{
  sub_1ABD1B788();
  MEMORY[0x1AC5AA8A0](v0 & 1);
  return sub_1ABF25294();
}

uint64_t sub_1ABCFBDEC(char a1)
{
  if (a1)
  {
    return 0x797469746E617571;
  }

  else
  {
    return 0x7469746E65627573;
  }
}

uint64_t sub_1ABCFBE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABCFBE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCFBCE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCFBEA8(uint64_t a1)
{
  v2 = sub_1ABD0E608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCFBEE4(uint64_t a1)
{
  v2 = sub_1ABD0E608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphQuantityRelationship.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABD1BABC();
  sub_1ABAD219C(&qword_1EB4D71C0, &qword_1ABF510A0);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7E338();
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABD0E608();
  sub_1ABA82E0C();
  sub_1ABA9EE14();
  sub_1ABF252E4();
  sub_1ABD0E36C();
  v4 = sub_1ABA80C2C();
  sub_1ABD1B97C(v4, v5, v6);
  if (!v1)
  {
    sub_1ABD1AC6C(v13, v12);

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v7 = sub_1ABAA2D10();
    sub_1ABAA6564(v7, v8, v9);
    sub_1ABD1AFA0();
  }

  v10 = sub_1ABA7D0EC();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphQuantityRelationship.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA95324();
  sub_1ABAD219C(&qword_1EB4D71D0, &qword_1ABF510A8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABD0E608();
  sub_1ABAA0704();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (!v2)
  {
    sub_1ABD0E3C0();
    sub_1ABD1AF3C();
    sub_1ABA827AC();
    sub_1ABD1B7A4(v4, v5, v6, v7);
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABA89A14();
    sub_1ABD0A2D4();
    v8 = sub_1ABAA112C();
    sub_1ABAA43F0(v8, v9, v10, v11, v12);
    v13 = sub_1ABA7BFF0();
    v14(v13);
    *v1 = v15;
    *(v1 + 8) = v16;
    *(v1 + 16) = v15;
    *(v1 + 24) = v16;
  }

  sub_1ABA84B54(v0);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void static CustomGraphLocationRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABD1C204(_Records_GDEntityClass_records, v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v11, v9, v12, v13, v14);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABCFC2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, BOOL a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1ABD1C050();
  a31 = v33;
  a32 = v34;
  v59 = v35;
  v37 = v36;
  v39 = v38;
  v57 = v40;
  sub_1ABA7D028();
  v41 = swift_allocObject();
  v42 = MEMORY[0x1E69E7CC0];
  *(v41 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABA7D028();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  v44 = v43 + 16;
  sub_1ABA7D9B8();
  v45 = swift_allocObject();
  *(v45 + 16) = v41;
  *(v45 + 24) = v43;

  v39(&a18, v37, 0, v59, v45);
  if (v32)
  {
  }

  else
  {

    v47 = a18;
    v48 = a19;
    v49 = sub_1ABAA9068(v46, &a18);
    v50 = *(v41 + 16);
    if (*(v50 + 16) || (sub_1ABD1B080(v49, &a12), *(*v44 + 16)))
    {
      v58 = v48;
      v60 = v47;
      v51 = sub_1ABB2B834(v50);
      v53 = v52;
      sub_1ABD1B080(v51, &a15);
      sub_1ABD1B610();
      if (v54)
      {
        v55 = *(v43 + 48);
      }

      else
      {
        v55 = 0;
      }

      v56 = v54 == 0;

      a22 = v56;
      *v57 = v60;
      *(v57 + 8) = v58;
      *(v57 + 16) = v50;
      *(v57 + 24) = v51;
      *(v57 + 32) = v53;
      *(v57 + 40) = v44;
      *(v57 + 48) = v55;
      *(v57 + 56) = v56;
    }

    else
    {

      *(v57 + 41) = 0u;
      sub_1ABD1BA2C(v57, 0);
    }
  }

  sub_1ABD1C034();
}

void sub_1ABCFC498(void (*a1)(void *__return_ptr, uint64_t, void *, uint64_t, void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  sub_1ABA7D028();
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v31 = (v12 + 16);
  sub_1ABA7D028();
  v13 = swift_allocObject();
  v33 = type metadata accessor for TypedEntityIdentifier(0, a2, *(a4 + 8), v14);
  *(v13 + 16) = sub_1ABF24154();
  sub_1ABAA267C();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v16 = a5;
  sub_1ABA807B4();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = v16;
  v17[6] = v12;
  v17[7] = v13;

  a1(v42, a7, v15, a8, v17);
  if (v35)
  {

    return;
  }

  v19 = v42[0];
  v20 = v42[1];
  v21 = sub_1ABD1B058(v18, v42);
  v22 = *v31;
  if (!*(*v31 + 16))
  {
    sub_1ABAA9068(v21, v36);
    v39[0] = *(v13 + 16);
    v23 = sub_1ABF241F4();
    sub_1ABA887D0(v23);
    if (sub_1ABF24574())
    {

      *(a6 + 41) = 0u;
      sub_1ABD1BA2C(a6, 0);
      return;
    }

    v22 = *v31;
  }

  v24 = sub_1ABB2B834(v22);
  v26 = v25;
  sub_1ABAA9068(v24, v39);
  v37 = 0;
  v38 = 1;

  OneOf.init(_:potentiallyPreferred:)(v27, &v37, v33, v40);

  v28 = v40[0];
  v29 = v40[1];
  v30 = v41;
  *a6 = v19;
  *(a6 + 8) = v20;
  *(a6 + 16) = v22;
  *(a6 + 24) = v24;
  *(a6 + 32) = v26;
  *(a6 + 40) = v28;
  *(a6 + 48) = v29;
  *(a6 + 56) = v30;
}

void sub_1ABCFC724(__n128 a1, uint64_t a2, unint64_t a3)
{
  EntityClass.init(intValue:)(HIBYTE(a3), &v24);
  v3 = *(&v24 + 1);
  if (!*(&v24 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v9 = sub_1ABF237F4();
    sub_1ABA7AA24(v9, qword_1ED871B40);
    v10 = sub_1ABF237D4();
    v11 = sub_1ABF24674();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1ABA78000, v10, v11, "entityClass is nil in CustomGraphLocationRelationship init", v12, 2u);
      MEMORY[0x1AC5AB8B0](v12, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v13 = 2;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 33) = 0u;
    *(v13 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v4 = v24;
    v5 = v25;
    v6 = v26;
    v7 = v27;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x210), *(_Records_GDEntityClass_records + 0x218), *(_Records_GDEntityClass_records + 0x220), v37);
    v8 = v38 == v5 && v6 == v39;
    if (v8 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v37);
LABEL_9:
      sub_1ABAA8FA8(v4, v3, v5, v6);
      return;
    }

    *&v24 = v4;
    *(&v24 + 1) = v3;
    v25 = v5;
    v26 = v6;
    LOBYTE(v27) = v7;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v37, v14, v15, v16, v17, v18, v19, v20, v24, SBYTE8(v24), v25, v26, v27, v28, v29, v30, v31, v32, v33, *(&v33 + 1), v34, v35, v36, v37[0], v37[1], v38, v39, v40, v41, v42);
    v22 = v21;

    sub_1ABA88934(v37);
    if (v22)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x210), *(_Records_GDEntityClass_records + 0x218), *(_Records_GDEntityClass_records + 0x220), &v33);
      v24 = v33;
      v25 = v34;
      v26 = v35;
      LOBYTE(v27) = v36;
      v28 = v4;
      v29 = v3;
      v30 = v5;
      v31 = v6;
      LOBYTE(v32) = v7;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v24, v23);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCFC9BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_29;
  }

  v7 = *a1;
  v8 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1116], *(_Records_GDEntityPredicate_records + 280), *(_Records_GDEntityPredicate_records + 281), v37);
  if (*&v37[0] == v7 && *(&v37[0] + 1) == v8)
  {

LABEL_15:
    if ((a1[7] & 1) == 0)
    {
      v29 = a1[5];
      v30 = a1[6];
      swift_beginAccess();

      sub_1ABB4DC20();
      v31 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v31);
      v32 = *(a2 + 16);
      *(v32 + 16) = v31 + 1;
      v33 = v32 + 16 * v31;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
      *(a2 + 16) = v32;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  v10 = sub_1ABF25054();

  if (v10)
  {
    goto LABEL_15;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_29:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[612], *(_Records_GDEntityPredicate_records + 154), *(_Records_GDEntityPredicate_records + 155), v37);
  if (*&v37[0] == v7 && *(&v37[0] + 1) == v8)
  {
  }

  else
  {
    v12 = sub_1ABF25054();

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  if (a1[7])
  {
    sub_1ABC4A630(a1[5], v13, v14, v15, v16, v17, v18, v19);
    if (!v3)
    {
      v34 = v39;
      swift_beginAccess();
      sub_1ABB4DD40();
      v35 = *(*(a3 + 16) + 16);
      sub_1ABB4E144(v35);
      v36 = *(a3 + 16);
      *(v36 + 16) = v35 + 1;
      *(v36 + 8 * v35 + 32) = v34;
      *(a3 + 16) = v36;
    }

    return;
  }

  if (qword_1ED871B38 != -1)
  {
LABEL_27:
    swift_once();
  }

LABEL_17:
  v20 = sub_1ABF237F4();
  sub_1ABA7AA24(v20, qword_1ED871B40);
  sub_1ABD1927C(a1, v37);
  v21 = sub_1ABF237D4();
  v22 = sub_1ABF24664();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v39 = v24;
    *v23 = 136642819;
    v25 = *(a1 + 1);
    v37[0] = *a1;
    v37[1] = v25;
    v38[0] = *(a1 + 2);
    *(v38 + 9) = *(a1 + 41);
    v26 = sub_1ABF23C94();
    v28 = sub_1ABADD6D8(v26, v27, &v39);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_1ABA78000, v21, v22, "Failed to parse %{sensitive}s.", v23, 0xCu);
    sub_1ABA84B54(v24);
    MEMORY[0x1AC5AB8B0](v24, -1, -1);
    MEMORY[0x1AC5AB8B0](v23, -1, -1);
  }

  else
  {

    sub_1ABB6DBB8(a1);
  }
}

void sub_1ABCFCD58(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v78 = a4;
  v82 = *(a5 - 8);
  v83 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v73 - v16;
  v18 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v80 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v73 - v23;
  v25 = *(v18 + 24);
  v86 = a1;
  v25(v90, a5, v18, v22);
  v75 = a3;
  v76 = v11;
  v79 = v14;
  v84 = a5;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v27 = v90[0];
  v26 = v90[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1116], *(_Records_GDEntityPredicate_records + 280), *(_Records_GDEntityPredicate_records + 281), &v88);
  if (v88 == v27 && v89 == v26)
  {

LABEL_9:

    v30 = v84;
    (*(v18 + 32))(v84, v18);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v34 = v33;
    (*(v85 + 1))(v24, AssociatedTypeWitness);
    if (v34)
    {
      v35 = v83;
      swift_beginAccess();
      sub_1ABB4DC20();
      v36 = *(*(v35 + 16) + 16);
      sub_1ABB4E024(v36);
      v37 = *(v35 + 16);
      *(v37 + 16) = v36 + 1;
      v38 = v37 + 16 * v36;
      *(v38 + 32) = v32;
      *(v38 + 40) = v34;
      *(v35 + 16) = v37;
LABEL_11:
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v39 = sub_1ABF237F4();
    sub_1ABA7AA24(v39, qword_1ED871B40);
    v40 = v81;
    v41 = v82;
    v42 = *(v82 + 16);
    v42(v81, v86, v30);
    v43 = sub_1ABF237D4();
    v44 = sub_1ABF24664();
    if (!os_log_type_enabled(v43, v44))
    {

      (*(v41 + 8))(v40, v30);
      return;
    }

    v45 = swift_slowAlloc();
    LODWORD(v86) = v44;
    v46 = v45;
    v85 = swift_slowAlloc();
    v88 = v85;
    *v46 = 136642819;
    v42(v79, v40, v30);
    v47 = sub_1ABF23C94();
    v49 = v48;
    (*(v41 + 8))(v40, v30);
    v50 = sub_1ABADD6D8(v47, v49, &v88);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_1ABA78000, v43, v86, "Failed to parse %{sensitive}s.", v46, 0xCu);
    v51 = v85;
    sub_1ABA84B54(v85);
    MEMORY[0x1AC5AB8B0](v51, -1, -1);
    v52 = v46;
    goto LABEL_30;
  }

  v74 = v6;
  v29 = sub_1ABF25054();

  if (v29)
  {
    goto LABEL_9;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_36;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[612], *(_Records_GDEntityPredicate_records + 154), *(_Records_GDEntityPredicate_records + 155), &v88);
  v53 = v88 == v27 && v89 == v26;
  v54 = v74;
  if (v53)
  {
  }

  else
  {
    v55 = sub_1ABF25054();

    if ((v55 & 1) == 0)
    {
      return;
    }
  }

  v56 = v80;
  v57 = v84;
  (*(v18 + 32))(v84, v18);
  v58 = swift_getAssociatedConformanceWitness();
  (*(v58 + 32))(&v88, AssociatedTypeWitness, v58);
  (*(v85 + 1))(v56, AssociatedTypeWitness);
  if (v89)
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v59 = sub_1ABF237F4();
    sub_1ABA7AA24(v59, qword_1ED871B40);
    v60 = v82;
    v61 = *(v82 + 16);
    v62 = v76;
    v61(v76, v86, v57);
    v43 = sub_1ABF237D4();
    v63 = sub_1ABF24664();
    if (os_log_type_enabled(v43, v63))
    {
      v64 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v88 = v86;
      *v64 = 136642819;
      LODWORD(v85) = v63;
      v61(v79, v62, v57);
      v65 = sub_1ABF23C94();
      v67 = v66;
      (*(v60 + 8))(v62, v57);
      v68 = sub_1ABADD6D8(v65, v67, &v88);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_1ABA78000, v43, v85, "Failed to parse %{sensitive}s.", v64, 0xCu);
      v69 = v86;
      sub_1ABA84B54(v86);
      MEMORY[0x1AC5AB8B0](v69, -1, -1);
      v52 = v64;
LABEL_30:
      MEMORY[0x1AC5AB8B0](v52, -1, -1);

      return;
    }

    (*(v60 + 8))(v62, v57);
  }

  else
  {
    v70 = v78;
    v71 = *(v77 + 8);
    TypedEntityIdentifier.init(untyped:)(&v88, v78, v71, &v91);
    if (!v54)
    {
      v87 = v91;
      swift_beginAccess();
      type metadata accessor for TypedEntityIdentifier(255, v70, v71, v72);
      sub_1ABF241F4();
      sub_1ABF241A4();
      goto LABEL_11;
    }
  }
}

void *_s20IntelligencePlatform31CustomGraphAttendeeRelationshipV11subentityId26all_eventParticipationType0i9_attendeeH0ACyxGAA19SubentityIdentifierV_SaySSGSayAA011TypedEntityO0VyxGGtcfC_0()
{
  sub_1ABA9FE20();
  v8 = sub_1ABD1B584(v5, v6, v7);
  *(v4 + 16) = v3;
  *(v4 + 24) = v8;
  *(v4 + 32) = v9;
  v15 = 0;
  v16 = 1;
  v11 = type metadata accessor for TypedEntityIdentifier(0, v1, *(v0 + 8), v10);
  result = OneOf.init(_:potentiallyPreferred:)(v2, &v15, v11, v17);
  v13 = v17[1];
  v14 = v18;
  *(v4 + 40) = v17[0];
  *(v4 + 48) = v13;
  *(v4 + 56) = v14;
  return result;
}

uint64_t sub_1ABCFD680(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEA00000000006449)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

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

uint64_t sub_1ABCFD798()
{
  sub_1ABD1B788();
  MEMORY[0x1AC5AA8A0](v0);
  return sub_1ABF25294();
}

uint64_t sub_1ABCFD7D4(char a1)
{
  if (!a1)
  {
    return 0x7469746E65627573;
  }

  if (a1 == 1)
  {
    return 0x6C6562616CLL;
  }

  return 0x6E6F697461636F6CLL;
}

uint64_t sub_1ABCFD834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, void, void, void))
{
  sub_1ABF25234();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1ABF25294();
}

uint64_t sub_1ABCFD898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCFD680(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCFD8F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABCFD948(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABCFD9C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return GraphObjectRelationship.id.getter(a1, WitnessTable);
}

void sub_1ABCFDA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  v27 = v26;
  v37 = *(v28 + 16);
  v41 = *(v28 + 24);
  v29(255, v37);
  swift_getWitnessTable();
  sub_1ABF24FC4();
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7FBE0();
  v39 = v24[4];
  v40 = v24[2];
  v38 = v24[3];
  sub_1ABA88DCC(v27, v27[3]);
  sub_1ABF252E4();
  sub_1ABD0E36C();
  sub_1ABF24F84();
  if (!v25)
  {
    sub_1ABD1AC6C(v39, v38);

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA0194();
    sub_1ABA81934();
    sub_1ABF24F84();
    sub_1ABD1C224();
    if (!v40)
    {

      sub_1ABD1B178();
      v32 = type metadata accessor for TypedEntityIdentifier(255, v37, *(v41 + 8), v31);
      type metadata accessor for OneOf(0, v32, v33, v34);

      sub_1ABA8A1E0();
      swift_getWitnessTable();
      sub_1ABA9F6E4();
      swift_getWitnessTable();
      sub_1ABA9F2E0();
      swift_getWitnessTable();
      sub_1ABAA0194();
      sub_1ABA9F49C();
      sub_1ABF24F84();
    }
  }

  v35 = sub_1ABA8BBFC();
  v36(v35);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void _s20IntelligencePlatform29CustomGraphHandleRelationshipV14getEntityClassAA0hI0VyFZ_0()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x198), *(_Records_GDEntityClass_records + 0x1A0), *(_Records_GDEntityClass_records + 0x1A0 + 8), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void *sub_1ABCFDDF4@<X0>(void (*a1)(void *__return_ptr, uint64_t (*)(), void, uint64_t (*)(), void *)@<X0>, void *a2@<X8>)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v49 = (v2 + 16);
  v61 = swift_allocObject();
  *(v61 + 16) = v3;
  v4 = swift_allocObject();
  v63 = v4;
  *(v4 + 16) = v3;
  v54 = v4 + 16;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v44 = v8 + 16;
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = v61;
  v11[4] = v63;
  v11[5] = v5;
  v11[6] = v6;
  v11[7] = v7;
  v11[8] = v8;
  v11[9] = v9;
  v11[10] = v10;

  v60 = v5;

  a1(__src, sub_1ABCFEBC4, 0, sub_1ABD19A1C, v11);
  if (v59)
  {
  }

  else
  {
    v58 = v8;
    v43 = v10;
    v13 = v63;

    v41 = __src[1];
    v42 = __src[0];
    swift_beginAccess();
    v14 = *v49;
    if (*(*v49 + 16) || (swift_beginAccess(), *(*(v61 + 16) + 16)) || (swift_beginAccess(), *(*v54 + 16)) || (swift_beginAccess(), *(*(v5 + 16) + 16)) || (swift_beginAccess(), *(*(v6 + 16) + 16)) || (swift_beginAccess(), *(*(v7 + 16) + 16)) || (swift_beginAccess(), *(*v44 + 16)) || (swift_beginAccess(), *(*(v9 + 16) + 16)) || (swift_beginAccess(), *(*(v10 + 16) + 16)))
    {
      v50 = sub_1ABB2B834(v14);
      v40 = v15;
      swift_beginAccess();
      v16 = *(v61 + 16);
      v48 = sub_1ABB2B834(v16);
      v39 = v17;
      swift_beginAccess();
      v32 = *(v13 + 16);
      v55 = sub_1ABB2B834(v32);
      v38 = v18;
      swift_beginAccess();
      v19 = *(v60 + 16);
      v53 = sub_1ABB2B834(v19);
      v37 = v20;
      swift_beginAccess();
      v30 = *(v6 + 16);
      v47 = sub_1ABB2B834(v30);
      v36 = v21;
      swift_beginAccess();
      v22 = *(v7 + 16);
      v46 = sub_1ABB2B834(v22);
      v35 = v23;
      swift_beginAccess();
      v24 = *(v58 + 16);
      v45 = sub_1ABB2B834(v24);
      v34 = v25;
      swift_beginAccess();
      v26 = *(v9 + 16);
      v56 = sub_1ABB2B834(v26);
      v33 = v27;
      swift_beginAccess();
      v28 = *(v43 + 16);
      v52 = sub_1ABB2B834(v28);
      v31 = v29;

      __src[0] = v42;
      __src[1] = v41;
      __src[2] = v14;
      __src[3] = v50;
      __src[4] = v40;
      __src[5] = v16;
      __src[6] = v48;
      __src[7] = v39;
      __src[8] = v32;
      __src[9] = v55;
      __src[10] = v38;
      __src[11] = v19;
      __src[12] = v53;
      __src[13] = v37;
      __src[14] = v30;
      __src[15] = v47;
      __src[16] = v36;
      __src[17] = v22;
      __src[18] = v46;
      __src[19] = v35;
      __src[20] = v24;
      __src[21] = v45;
      __src[22] = v34;
      __src[23] = v26;
      __src[24] = v56;
      __src[25] = v33;
      __src[26] = v28;
      __src[27] = v52;
      __src[28] = v31;
      nullsub_1();
    }

    else
    {

      sub_1ABD0C440(__src);
    }

    return memcpy(a2, __src, 0xE8uLL);
  }
}

void sub_1ABCFE560()
{
  sub_1ABA7BCA8();
  v84 = v1;
  v80 = v2;
  v82 = v3;
  __dst = v4;
  sub_1ABA7D028();
  v85 = swift_allocObject();
  sub_1ABD1B184(v85);
  v75 = v5;
  sub_1ABA7D028();
  v6 = swift_allocObject();
  sub_1ABD1B184(v6);
  v78 = v7;
  sub_1ABA7D028();
  v104 = swift_allocObject();
  sub_1ABD1B184(v104);
  v73 = v8;
  sub_1ABA7D028();
  v9 = swift_allocObject();
  sub_1ABD1B184(v9);
  v71 = v10;
  sub_1ABA7D028();
  v11 = swift_allocObject();
  sub_1ABD1B184(v11);
  sub_1ABA7D028();
  v12 = swift_allocObject();
  sub_1ABD1B184(v12);
  v68 = v13;
  sub_1ABA7D028();
  v14 = swift_allocObject();
  sub_1ABD1B184(v14);
  v66 = v15;
  sub_1ABA7D028();
  v16 = swift_allocObject();
  sub_1ABD1B184(v16);
  v64 = v17;
  sub_1ABA7D028();
  v18 = swift_allocObject();
  sub_1ABD1B184(v18);
  v62 = v19;
  sub_1ABA88928();
  v20 = swift_allocObject();
  v20[2] = v80;
  v20[3] = v84;
  v20[4] = v85;
  v20[5] = v6;
  v20[6] = v104;
  v20[7] = v9;
  v20[8] = v11;
  v20[9] = v12;
  v20[10] = v14;
  v20[11] = v16;
  v20[12] = v18;

  v82(__src, sub_1ABCFEBC4, 0, sub_1ABD19934, v20);
  if (v0)
  {
  }

  else
  {
    v81 = v12;
    v83 = v16;

    v60 = __src[1];
    v61 = __src[0];
    v22 = v75;
    v23 = sub_1ABD1B03C(v21, &v103);
    v76 = *v75;
    if (*(*v22 + 16) || (v24 = sub_1ABA8A740(v23, v93), *(*v78 + 16)) || (v25 = sub_1ABD1B1F4(v24, v92), *(*v73 + 16)) || (v26 = sub_1ABA890D8(v25, v91), *(*v71 + 16)) || (sub_1ABAAA634(v26, v90), sub_1ABD1B9FC(), v28) || (v29 = sub_1ABD1B080(v27, v89), *(*v68 + 16)) || (v30 = sub_1ABAA9068(v29, v88), *(*v66 + 16)) || (v31 = sub_1ABD1B058(v30, v87), *(*v64 + 16)) || (sub_1ABA8A740(v31, v86), *(*v62 + 16)))
    {
      v32 = sub_1ABB2B834(v76);
      v58 = v33;
      v59 = v32;
      sub_1ABA7F2A0(v78, v101);
      v51 = *(v6 + 16);
      v79 = sub_1ABB2B834(v51);
      v57 = v34;
      sub_1ABD1B1F4(v79, v100);
      v49 = *(v104 + 16);
      v74 = sub_1ABB2B834(v49);
      v56 = v35;
      sub_1ABA890D8(v74, v99);
      v36 = *(v9 + 16);
      v72 = sub_1ABB2B834(v36);
      v55 = v37;
      sub_1ABAAA634(v72, v98);
      v47 = *(v11 + 16);
      v70 = sub_1ABB2B834(v47);
      v54 = v38;
      sub_1ABD1B080(v70, v97);
      v46 = *(v81 + 16);
      v69 = sub_1ABB2B834(v46);
      v53 = v39;
      sub_1ABAA9068(v69, v96);
      v40 = *(v14 + 16);
      v67 = sub_1ABB2B834(v40);
      v52 = v41;
      sub_1ABD1B058(v67, v95);
      v42 = *(v83 + 16);
      v65 = sub_1ABB2B834(v42);
      v50 = v43;
      sub_1ABA8A740(v65, v94);
      v44 = *(v18 + 16);
      v63 = sub_1ABB2B834(v44);
      v48 = v45;

      __src[0] = v61;
      __src[1] = v60;
      __src[2] = v76;
      __src[3] = v59;
      __src[4] = v58;
      __src[5] = v51;
      __src[6] = v79;
      __src[7] = v57;
      __src[8] = v49;
      __src[9] = v74;
      __src[10] = v56;
      __src[11] = v36;
      __src[12] = v72;
      __src[13] = v55;
      __src[14] = v47;
      __src[15] = v70;
      __src[16] = v54;
      __src[17] = v46;
      __src[18] = v69;
      __src[19] = v53;
      __src[20] = v40;
      __src[21] = v67;
      __src[22] = v52;
      __src[23] = v42;
      __src[24] = v65;
      __src[25] = v50;
      __src[26] = v44;
      __src[27] = v63;
      __src[28] = v48;
      nullsub_1();
    }

    else
    {

      sub_1ABD0C440(__src);
    }

    memcpy(__dst, __src, 0xE8uLL);
  }

  sub_1ABA7BC90();
}

void sub_1ABCFED78(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_101;
  }

  v14 = *a1;
  v15 = *(a1 + 1);
  v74 = a1;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[348], *(_Records_GDEntityPredicate_records + 88), *(_Records_GDEntityPredicate_records + 89), &v75);
  if (v75 == v14 && *(&v75 + 1) == v15)
  {

    goto LABEL_57;
  }

  v70 = a8;
  v17 = sub_1ABF25054();

  if (v17)
  {
LABEL_57:
    v34 = v74;
    if (*(v74 + 56))
    {
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v35 = sub_1ABF237F4();
      sub_1ABA7AA24(v35, qword_1ED871B40);
      sub_1ABD1927C(v74, &v75);
      v36 = sub_1ABF237D4();
      v37 = sub_1ABF24664();
      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_71;
      }

LABEL_61:
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v78 = v39;
      *v38 = 136642819;
      v40 = v34[1];
      v75 = *v34;
      v76 = v40;
      v77[0] = v34[2];
      v41 = *(v34 + 41);
LABEL_62:
      *(v77 + 9) = v41;
      v42 = sub_1ABF23C94();
      v44 = sub_1ABADD6D8(v42, v43, &v78);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_1ABA78000, v36, v37, "Failed to parse %{sensitive}s.", v38, 0xCu);
      sub_1ABA84B54(v39);
      MEMORY[0x1AC5AB8B0](v39, -1, -1);
      MEMORY[0x1AC5AB8B0](v38, -1, -1);

      return;
    }

    v46 = *(v74 + 5);
    v45 = *(v74 + 6);
    goto LABEL_64;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[456], *(_Records_GDEntityPredicate_records + 115), *(_Records_GDEntityPredicate_records + 116), &v75);
  if (v75 == v14 && *(&v75 + 1) == v15)
  {

LABEL_67:
    v34 = v74;
    if ((*(v74 + 56) & 1) == 0)
    {
      v53 = *(v74 + 5);
      v52 = *(v74 + 6);
      swift_beginAccess();

      sub_1ABB4DC20();
      v54 = *(*(a3 + 16) + 16);
      sub_1ABB4E024(v54);
      v55 = *(a3 + 16);
      *(v55 + 16) = v54 + 1;
      v56 = v55 + 16 * v54;
      *(v56 + 32) = v53;
      *(v56 + 40) = v52;
      *(a3 + 16) = v55;
      goto LABEL_65;
    }

    goto LABEL_68;
  }

  v19 = sub_1ABF25054();

  if (v19)
  {
    goto LABEL_67;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_102:
    __break(1u);
    __break(1u);
    goto LABEL_103;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[360], *(_Records_GDEntityPredicate_records + 91), *(_Records_GDEntityPredicate_records + 92), &v75);
  if (v75 == v14 && *(&v75 + 1) == v15)
  {

LABEL_76:
    v34 = v74;
    if ((*(v74 + 56) & 1) == 0)
    {
      v58 = *(v74 + 5);
      v57 = *(v74 + 6);
      swift_beginAccess();

      sub_1ABB4DC20();
      v59 = *(*(a4 + 16) + 16);
      sub_1ABB4E024(v59);
      v60 = *(a4 + 16);
      *(v60 + 16) = v59 + 1;
      v61 = v60 + 16 * v59;
      *(v61 + 32) = v58;
      *(v61 + 40) = v57;
      *(a4 + 16) = v60;
      goto LABEL_65;
    }

    goto LABEL_68;
  }

  v21 = sub_1ABF25054();

  if (v21)
  {
    goto LABEL_76;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[468], *(_Records_GDEntityPredicate_records + 118), *(_Records_GDEntityPredicate_records + 119), &v75);
  if (v75 == v14 && *(&v75 + 1) == v15)
  {

    goto LABEL_79;
  }

  v23 = sub_1ABF25054();

  if (v23)
  {
LABEL_79:
    v34 = v74;
    if (*(v74 + 56))
    {
      goto LABEL_68;
    }

    v46 = *(v74 + 5);
    v45 = *(v74 + 6);
    a2 = a5;
    goto LABEL_64;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_106;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[516], *(_Records_GDEntityPredicate_records + 130), *(_Records_GDEntityPredicate_records + 131), &v75);
  if (v75 == v14 && *(&v75 + 1) == v15)
  {

    goto LABEL_82;
  }

  v25 = sub_1ABF25054();

  if (v25)
  {
LABEL_82:
    v34 = v74;
    if (*(v74 + 56))
    {
      goto LABEL_68;
    }

    v46 = *(v74 + 5);
    v45 = *(v74 + 6);
    a2 = a6;
    goto LABEL_64;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[372], *(_Records_GDEntityPredicate_records + 94), *(_Records_GDEntityPredicate_records + 95), &v75);
  if (v75 == v14 && *(&v75 + 1) == v15)
  {

    goto LABEL_85;
  }

  v27 = sub_1ABF25054();

  if (v27)
  {
LABEL_85:
    v34 = v74;
    if (*(v74 + 56))
    {
      goto LABEL_68;
    }

    v46 = *(v74 + 5);
    v45 = *(v74 + 6);
    a2 = a7;
LABEL_64:
    swift_beginAccess();

    sub_1ABB4DC20();
    v47 = *(*(a2 + 16) + 16);
    sub_1ABB4E024(v47);
    v48 = *(a2 + 16);
    *(v48 + 16) = v47 + 1;
    v49 = v48 + 16 * v47;
    *(v49 + 32) = v46;
    *(v49 + 40) = v45;
    *(a2 + 16) = v48;
LABEL_65:
    swift_endAccess();
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[504], *(_Records_GDEntityPredicate_records + 127), *(_Records_GDEntityPredicate_records + 128), &v75);
  if (v75 == v14 && *(&v75 + 1) == v15)
  {
  }

  else
  {
    v29 = sub_1ABF25054();

    if ((v29 & 1) == 0)
    {
      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[1296], *(_Records_GDEntityPredicate_records + 325), *(_Records_GDEntityPredicate_records + 326), &v75);
        if (v75 == v14 && *(&v75 + 1) == v15)
        {
        }

        else
        {
          v31 = sub_1ABF25054();

          if ((v31 & 1) == 0)
          {
            if (_Records_GDEntityPredicate_records)
            {
              sub_1ABA91D48(_Records_GDEntityPredicate_records[2496], *(_Records_GDEntityPredicate_records + 625), *(_Records_GDEntityPredicate_records + 626), &v75);
              if (v75 == v14 && *(&v75 + 1) == v15)
              {
              }

              else
              {
                v33 = sub_1ABF25054();

                if ((v33 & 1) == 0)
                {
                  return;
                }
              }

              if ((*(v74 + 56) & 1) == 0)
              {
                a9 = a10;
                goto LABEL_95;
              }

LABEL_92:
              if (qword_1ED871B38 == -1)
              {
LABEL_93:
                v62 = sub_1ABF237F4();
                sub_1ABA7AA24(v62, qword_1ED871B40);
                sub_1ABD1927C(v74, &v75);
                v36 = sub_1ABF237D4();
                v37 = sub_1ABF24664();
                if (os_log_type_enabled(v36, v37))
                {
                  v38 = swift_slowAlloc();
                  v39 = swift_slowAlloc();
                  v78 = v39;
                  *v38 = 136642819;
                  v63 = v74[1];
                  v75 = *v74;
                  v76 = v63;
                  v77[0] = v74[2];
                  v41 = *(v74 + 41);
                  goto LABEL_62;
                }

                v51 = v74;
                goto LABEL_72;
              }

LABEL_104:
              swift_once();
              goto LABEL_93;
            }

LABEL_109:
            __break(1u);
            return;
          }
        }

        if ((*(v74 + 56) & 1) == 0)
        {
LABEL_95:
          v66 = *(v74 + 5);
          v65 = *(v74 + 6);
          swift_beginAccess();

          sub_1ABB4DC20();
          v67 = *(*(a9 + 16) + 16);
          sub_1ABB4E024(v67);
          v68 = *(a9 + 16);
          *(v68 + 16) = v67 + 1;
          v69 = v68 + 16 * v67;
          *(v69 + 32) = v66;
          *(v69 + 40) = v65;
          *(a9 + 16) = v68;
          goto LABEL_65;
        }

        goto LABEL_92;
      }

LABEL_108:
      __break(1u);
      goto LABEL_109;
    }
  }

  v34 = v74;
  if ((*(v74 + 56) & 1) == 0)
  {
    v46 = *(v74 + 5);
    v45 = *(v74 + 6);
    a2 = v70;
    goto LABEL_64;
  }

LABEL_68:
  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v50 = sub_1ABF237F4();
  sub_1ABA7AA24(v50, qword_1ED871B40);
  sub_1ABD1927C(v34, &v75);
  v36 = sub_1ABF237D4();
  v37 = sub_1ABF24664();
  if (os_log_type_enabled(v36, v37))
  {
    goto LABEL_61;
  }

LABEL_71:

  v51 = v34;
LABEL_72:
  sub_1ABB6DBB8(v51);
}

void sub_1ABCFF6EC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  v203 = a8;
  v206 = a7;
  v209 = a6;
  v211 = a5;
  v214 = a4;
  v216 = a3;
  v13 = *(a11 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v198 = &v195 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v200 = &v195 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v202 = &v195 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v205 = &v195 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v208 = &v195 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v195 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v213 = &v195 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v215 = &v195 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v217 = &v195 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v219 = &v195 - v33;
  v35 = *(v34 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v222 = AssociatedTypeWitness;
  v223 = v37;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v199 = &v195 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v201 = &v195 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v204 = &v195 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v207 = &v195 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v210 = &v195 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v212 = &v195 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v195 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v195 - v53;
  v56 = MEMORY[0x1EEE9AC00](v55);
  v58 = &v195 - v57;
  v59 = *(v35 + 24);
  v232 = a1;
  v224 = a11;
  v59(&v228, a11, v35, v56);
  v218 = 279;
  v220 = v13;
  v221 = v35;
  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_148;
  }

  v60 = v228;
  v61 = v229[0];
  v62 = v229[2];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[348], *(_Records_GDEntityPredicate_records + 88), *(_Records_GDEntityPredicate_records + 89), &v225);
  if (v225 == v60 && v226 == v61)
  {

LABEL_9:
    v66 = v221;

    v51 = v224;
    (*(v66 + 32))(v224, v66);
    v67 = v222;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v69 = (*(AssociatedConformanceWitness + 24))(v67, AssociatedConformanceWitness);
    v71 = v70;
    (*(v223 + 8))(v58, v67);
    if (v71)
    {
      swift_beginAccess();
      sub_1ABB4DC20();
      v72 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v72);
      v73 = *(a2 + 16);
      *(v73 + 16) = v72 + 1;
      v74 = v73 + 16 * v72;
      *(v74 + 32) = v69;
      *(v74 + 40) = v71;
      *(a2 + 16) = v73;
LABEL_51:
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v75 = sub_1ABF237F4();
    sub_1ABA7AA24(v75, qword_1ED871B40);
    v76 = v219;
    v77 = v220;
    v78 = *(v220 + 16);
    v78(v219, v232, v51);
    v79 = sub_1ABF237D4();
    v80 = sub_1ABF24664();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      v225 = v232;
      *v81 = 136642819;
      v78(v217, v76, v51);
      v82 = sub_1ABF23C94();
      v84 = v83;
      (*(v77 + 8))(v76, v51);
      v85 = sub_1ABADD6D8(v82, v84, &v225);
LABEL_15:

      *(v81 + 4) = v85;
      _os_log_impl(&dword_1ABA78000, v79, v80, "Failed to parse %{sensitive}s.", v81, 0xCu);
      v86 = v232;
      sub_1ABA84B54(v232);
      v87 = v86;
LABEL_16:
      MEMORY[0x1AC5AB8B0](v87, -1, -1);
      v88 = v81;
LABEL_35:
      MEMORY[0x1AC5AB8B0](v88, -1, -1);

      return;
    }

    v92 = *(v77 + 8);
    v93 = v76;
LABEL_44:
    v92(v93, v51);
    return;
  }

  v197 = v62;
  v196 = v25;
  v64 = v61;
  v65 = sub_1ABF25054();

  if (v65)
  {
    goto LABEL_9;
  }

  v89 = v221;
  if (v218 < 0x27)
  {
    __break(1u);
LABEL_108:

    goto LABEL_109;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_151:
    swift_once();
LABEL_99:
    v158 = sub_1ABF237F4();
    sub_1ABA7AA24(v158, qword_1ED871B40);
    v104 = v220;
    v105 = *(v220 + 16);
    v151 = &v231;
    goto LABEL_87;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[456], *(_Records_GDEntityPredicate_records + 115), *(_Records_GDEntityPredicate_records + 116), &v225);
  if (v225 == v60 && v226 == v64)
  {

LABEL_27:

    v51 = v224;
    (*(v89 + 32))(v224, v89);
    v94 = v222;
    v95 = swift_getAssociatedConformanceWitness();
    v96 = (*(v95 + 24))(v94, v95);
    v98 = v97;
    (*(v223 + 8))(v54, v94);
    if (v98)
    {
      v99 = v216;
      swift_beginAccess();
      sub_1ABB4DC20();
      v100 = *(*(v99 + 16) + 16);
      sub_1ABB4E024(v100);
      v101 = *(v99 + 16);
      *(v101 + 16) = v100 + 1;
      v102 = v101 + 16 * v100;
      *(v102 + 32) = v96;
      *(v102 + 40) = v98;
LABEL_50:
      *(v99 + 16) = v101;
      goto LABEL_51;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v103 = sub_1ABF237F4();
    sub_1ABA7AA24(v103, qword_1ED871B40);
    v104 = v220;
    v105 = *(v220 + 16);
    v106 = v215;
    goto LABEL_32;
  }

  v91 = sub_1ABF25054();

  if (v91)
  {
    goto LABEL_27;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_153;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[360], *(_Records_GDEntityPredicate_records + 91), *(_Records_GDEntityPredicate_records + 92), &v225);
  if (v225 == v60 && v226 == v64)
  {

LABEL_46:

    (*(v89 + 32))(v224, v89);
    v116 = v222;
    v117 = swift_getAssociatedConformanceWitness();
    v118 = (*(v117 + 24))(v116, v117);
    v120 = v119;
    (*(v223 + 8))(v51, v116);
    if (!v120)
    {
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v124 = sub_1ABF237F4();
      sub_1ABA7AA24(v124, qword_1ED871B40);
      v125 = v220;
      v126 = *(v220 + 16);
      v127 = v213;
      v128 = v224;
      v126(v213, v232, v224);
      v79 = sub_1ABF237D4();
      v107 = sub_1ABF24664();
      if (!os_log_type_enabled(v79, v107))
      {

        (*(v125 + 8))(v127, v128);
        return;
      }

      v108 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      v225 = v232;
      *v108 = 136642819;
      v126(v217, v127, v128);
      v109 = sub_1ABF23C94();
      v111 = v129;
      (*(v125 + 8))(v127, v128);
      goto LABEL_34;
    }

    v121 = &v236;
    goto LABEL_48;
  }

  v115 = sub_1ABF25054();

  if (v115)
  {
    goto LABEL_46;
  }

  if (v218 == 39)
  {
    __break(1u);
LABEL_140:

    goto LABEL_141;
  }

  v51 = v224;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_155:
    __break(1u);
LABEL_156:
    swift_once();
LABEL_127:
    v176 = sub_1ABF237F4();
    sub_1ABA7AA24(v176, qword_1ED871B40);
    v177 = *(v220 + 16);
    v177(v200, v232, v224);
    v79 = sub_1ABF237D4();
    v178 = sub_1ABF24664();
    if (!os_log_type_enabled(v79, v178))
    {

      (*(v220 + 8))(v200, v224);
      return;
    }

    v81 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v225 = v179;
    *v81 = 136642819;
    v180 = v217;
    v181 = v229;
LABEL_129:
    v182 = *(v181 - 32);
    v183 = v224;
    v177(v180, v182, v224);
    v184 = sub_1ABF23C94();
    v186 = v185;
    (*(v220 + 8))(v182, v183);
    v187 = sub_1ABADD6D8(v184, v186, &v225);

    *(v81 + 4) = v187;
    _os_log_impl(&dword_1ABA78000, v79, v178, "Failed to parse %{sensitive}s.", v81, 0xCu);
    sub_1ABA84B54(v179);
    v87 = v179;
    goto LABEL_16;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[468], *(_Records_GDEntityPredicate_records + 118), *(_Records_GDEntityPredicate_records + 119), &v225);
  if (v225 == v60 && v226 == v64)
  {

LABEL_67:

    v132 = v212;
    (*(v89 + 32))(v51, v89);
    v133 = v222;
    v134 = swift_getAssociatedConformanceWitness();
    v118 = (*(v134 + 24))(v133, v134);
    v120 = v135;
    (*(v223 + 8))(v132, v133);
    if (!v120)
    {
      v136 = v51;
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v137 = sub_1ABF237F4();
      sub_1ABA7AA24(v137, qword_1ED871B40);
      v138 = v220;
      v139 = *(v220 + 16);
      v140 = v196;
      v139(v196, v232, v136);
      v79 = sub_1ABF237D4();
      v80 = sub_1ABF24664();
      if (!os_log_type_enabled(v79, v80))
      {

        (*(v138 + 8))(v140, v136);
        return;
      }

      v81 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      v225 = v232;
      *v81 = 136642819;
      v139(v217, v140, v136);
      v141 = sub_1ABF23C94();
      v143 = v142;
      (*(v138 + 8))(v140, v136);
      v85 = sub_1ABADD6D8(v141, v143, &v225);
      goto LABEL_15;
    }

    v121 = &v235;
    goto LABEL_48;
  }

  v131 = sub_1ABF25054();

  if (v131)
  {
    goto LABEL_67;
  }

  if (v218 < 0x2C)
  {
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    swift_once();
LABEL_86:
    v150 = sub_1ABF237F4();
    sub_1ABA7AA24(v150, qword_1ED871B40);
    v104 = v220;
    v105 = *(v220 + 16);
    v151 = &v233;
LABEL_87:
    v106 = *(v151 - 32);
LABEL_32:
    v105(v106, v232, v51);
    v79 = sub_1ABF237D4();
    v107 = sub_1ABF24664();
    if (!os_log_type_enabled(v79, v107))
    {

      v92 = *(v104 + 8);
      v93 = v106;
      goto LABEL_44;
    }

    v108 = swift_slowAlloc();
    v232 = swift_slowAlloc();
    v225 = v232;
    *v108 = 136642819;
    v105(v217, v106, v51);
    v109 = sub_1ABF23C94();
    v111 = v110;
    (*(v104 + 8))(v106, v51);
LABEL_34:
    v112 = sub_1ABADD6D8(v109, v111, &v225);

    *(v108 + 4) = v112;
    _os_log_impl(&dword_1ABA78000, v79, v107, "Failed to parse %{sensitive}s.", v108, 0xCu);
    v113 = v232;
    sub_1ABA84B54(v232);
    MEMORY[0x1AC5AB8B0](v113, -1, -1);
    v88 = v108;
    goto LABEL_35;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_158:
    __break(1u);
LABEL_159:
    swift_once();
LABEL_144:
    v194 = sub_1ABF237F4();
    sub_1ABA7AA24(v194, qword_1ED871B40);
    v177 = *(v220 + 16);
    v177(v198, v232, v224);
    v79 = sub_1ABF237D4();
    v178 = sub_1ABF24664();
    if (!os_log_type_enabled(v79, v178))
    {

      (*(v220 + 8))(v198, v224);
      return;
    }

    v81 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v225 = v179;
    *v81 = 136642819;
    v180 = v217;
    v181 = &v227;
    goto LABEL_129;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[516], *(_Records_GDEntityPredicate_records + 130), *(_Records_GDEntityPredicate_records + 131), &v225);
  if (v225 == v60 && v226 == v64)
  {

    goto LABEL_83;
  }

  v145 = sub_1ABF25054();

  if (v145)
  {
LABEL_83:

    v146 = v210;
    (*(v89 + 32))(v51, v89);
    v147 = v222;
    v148 = swift_getAssociatedConformanceWitness();
    v118 = (*(v148 + 24))(v147, v148);
    v120 = v149;
    (*(v223 + 8))(v146, v147);
    if (v120)
    {
      v121 = &v234;
LABEL_48:
      v99 = *(v121 - 32);
LABEL_49:
      swift_beginAccess();
      sub_1ABB4DC20();
      v122 = *(*(v99 + 16) + 16);
      sub_1ABB4E024(v122);
      v101 = *(v99 + 16);
      *(v101 + 16) = v122 + 1;
      v123 = v101 + 16 * v122;
      *(v123 + 32) = v118;
      *(v123 + 40) = v120;
      goto LABEL_50;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_86;
    }

    goto LABEL_149;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[372], *(_Records_GDEntityPredicate_records + 94), *(_Records_GDEntityPredicate_records + 95), &v225);
  if (v225 == v60 && v226 == v64)
  {

    goto LABEL_96;
  }

  v153 = sub_1ABF25054();

  if (v153)
  {
LABEL_96:

    v154 = v207;
    (*(v89 + 32))(v51, v89);
    v155 = v222;
    v156 = swift_getAssociatedConformanceWitness();
    v118 = (*(v156 + 24))(v155, v156);
    v120 = v157;
    (*(v223 + 8))(v154, v155);
    if (v120)
    {
      v121 = &v232;
      goto LABEL_48;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_99;
    }

    goto LABEL_151;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_161;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[504], *(_Records_GDEntityPredicate_records + 127), *(_Records_GDEntityPredicate_records + 128), &v225);
  if (v225 == v60 && v226 == v64)
  {
    goto LABEL_108;
  }

  v160 = sub_1ABF25054();

  if (v160)
  {
LABEL_109:
    v91 = v232;

    v161 = v204;
    (*(v89 + 32))(v51, v89);
    v162 = v222;
    v163 = swift_getAssociatedConformanceWitness();
    v118 = (*(v163 + 24))(v162, v163);
    v120 = v164;
    (*(v223 + 8))(v161, v162);
    if (v120)
    {
      v121 = &v230;
      goto LABEL_48;
    }

    if (qword_1ED871B38 == -1)
    {
LABEL_112:
      v165 = sub_1ABF237F4();
      sub_1ABA7AA24(v165, qword_1ED871B40);
      v166 = v220;
      v167 = *(v220 + 16);
      v168 = v202;
      v167(v202, v91, v51);
      v79 = sub_1ABF237D4();
      v107 = sub_1ABF24664();
      if (!os_log_type_enabled(v79, v107))
      {

        (*(v166 + 8))(v168, v51);
        return;
      }

      v108 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      v225 = v232;
      *v108 = 136642819;
      v167(v217, v168, v51);
      v109 = sub_1ABF23C94();
      v111 = v169;
      (*(v166 + 8))(v168, v51);
      goto LABEL_34;
    }

LABEL_153:
    swift_once();
    goto LABEL_112;
  }

  if (v218 < 0x6D)
  {
    __break(1u);
    goto LABEL_155;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1296], *(_Records_GDEntityPredicate_records + 325), *(_Records_GDEntityPredicate_records + 326), &v225);
  if (v225 == v60 && v226 == v64)
  {

    goto LABEL_124;
  }

  v171 = sub_1ABF25054();

  if (v171)
  {
LABEL_124:

    v172 = v201;
    (*(v221 + 32))(v224, v221);
    v173 = v222;
    v174 = swift_getAssociatedConformanceWitness();
    v118 = (*(v174 + 24))(v173, v174);
    v120 = v175;
    (*(v223 + 8))(v172, v173);
    if (v120)
    {
      v99 = a9;
      goto LABEL_49;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_127;
    }

    goto LABEL_156;
  }

  if (v218 < 0xD1)
  {
    __break(1u);
    goto LABEL_158;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_163:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2496], *(_Records_GDEntityPredicate_records + 625), *(_Records_GDEntityPredicate_records + 626), &v225);
  if (v225 == v60 && v226 == v64)
  {
    goto LABEL_140;
  }

  v189 = sub_1ABF25054();

  if (v189)
  {
LABEL_141:
    v190 = v199;
    (*(v221 + 32))(v224, v221);
    v191 = v222;
    v192 = swift_getAssociatedConformanceWitness();
    v118 = (*(v192 + 24))(v191, v192);
    v120 = v193;
    (*(v223 + 8))(v190, v191);
    if (v120)
    {
      v99 = a10;
      goto LABEL_49;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_144;
    }

    goto LABEL_159;
  }
}

void CustomGraphLocationAddressRelationship.init(subentityId:all_street:all_subLocality:all_city:all_subAdministrativeArea:all_state:all_postalCode:all_country:all_isoCountryCode:all_inferredSemanticLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7E2A8();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1ABAA5CB0();
  v33 = v32;
  v36 = sub_1ABD1B584(v34, v35, v32);
  v33[2] = v25;
  v33[3] = v36;
  v33[4] = v37;
  v38 = sub_1ABB2B834(v24);
  v33[5] = v24;
  v33[6] = v38;
  v33[7] = v39;
  v40 = sub_1ABB2B834(v23);
  v33[8] = v23;
  v33[9] = v40;
  v33[10] = v41;
  v42 = sub_1ABB2B834(v22);
  v33[11] = v22;
  v33[12] = v42;
  v33[13] = v43;
  v44 = sub_1ABB2B834(v31);
  v33[14] = v31;
  v33[15] = v44;
  v33[16] = v45;
  v46 = sub_1ABB2B834(v29);
  v33[17] = v29;
  v33[18] = v46;
  v33[19] = v47;
  v48 = sub_1ABB2B834(v27);
  v33[20] = v27;
  v33[21] = v48;
  v33[22] = v49;
  v50 = sub_1ABB2B834(a21);
  v33[23] = a21;
  v33[24] = v50;
  v33[25] = v51;
  v52 = sub_1ABB2B834(a22);
  v33[26] = a22;
  v33[27] = v52;
  v33[28] = v53;
  sub_1ABA7BC1C();
}

uint64_t sub_1ABD01244(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746565727473 && a2 == 0xE600000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C61636F4C627573 && a2 == 0xEB00000000797469;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 2037672291 && a2 == 0xE400000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001ABF8D740 == a2;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000015 && 0x80000001ABF8D760 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1ABF25054();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABD0156C(char a1)
{
  result = 0x7469746E65627573;
  switch(a1)
  {
    case 1:
      result = 0x746565727473;
      break;
    case 2:
      result = 0x6C61636F4C627573;
      break;
    case 3:
      result = 2037672291;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x6574617473;
      break;
    case 6:
      result = 0x6F436C6174736F70;
      break;
    case 7:
      result = 0x7972746E756F63;
      break;
    case 8:
      result = 0x746E756F436F7369;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABD01698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD01244(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD016C0(uint64_t a1)
{
  v2 = sub_1ABD0E68C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD016FC(uint64_t a1)
{
  v2 = sub_1ABD0E68C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1ABD0175C@<D0>(__n128 *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  *&result = _s20IntelligencePlatform31CustomGraphAttendeeRelationshipV11subentityIdAA19SubentityIdentifierVvg_0(a1).n128_u64[0];
  return result;
}

void CustomGraphLocationAddressRelationship.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  sub_1ABAD219C(&qword_1EB4D71D8, &qword_1ABF510B0);
  sub_1ABA7BB64();
  v28 = v27;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7BCE0();
  v43 = v20[2];
  v42 = v20[8];
  v41 = v20[11];
  v40 = v20[14];
  v39 = v20[17];
  v38 = v20[20];
  sub_1ABD1B8A4(v20[23]);
  sub_1ABD1B6F4(v20[25]);
  sub_1ABD1B77C(v20[27]);
  v30 = v26[3];
  v31 = v26;
  v33 = v32;
  sub_1ABA88DCC(v31, v30);
  sub_1ABD0E68C();
  sub_1ABAA0704();
  sub_1ABF252E4();
  HIBYTE(a10) = 0;
  sub_1ABD0E36C();
  sub_1ABF24F84();
  if (!v21)
  {
    sub_1ABA8B6EC();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABD1AEB0();
    sub_1ABA9E3E8();
    sub_1ABF24F84();
    if (v43 || (sub_1ABD1B84C(), , sub_1ABD1B178(), , , sub_1ABD1AEB0(), sub_1ABA9E3E8(), sub_1ABF24F84(), (sub_1ABD1B84C(), , sub_1ABD1AF94(), , , sub_1ABD1ACF0(), v42) || (sub_1ABD1B84C(), , sub_1ABA8B908(), , , sub_1ABD1ACF0(), v41) || (sub_1ABD1B84C(), , sub_1ABD1AFDC(), , , sub_1ABD1ACF0(), v40) || (sub_1ABD1B84C(), , sub_1ABD1BECC(&a18), sub_1ABD1AFD0(), , , sub_1ABD1ACF0(), v39) || (sub_1ABD1B84C(), , sub_1ABD1BECC(&a15), sub_1ABD1AFC4(), , , sub_1ABD1ACF0(), v38)))
    {
      sub_1ABD1B84C();
    }

    else
    {

      sub_1ABD1BECC(&a12);
      sub_1ABA8D348();
      sub_1ABD1AFB8();

      sub_1ABD1AEB0();
      sub_1ABA9E3E8();
      sub_1ABF24F84();
      sub_1ABD1B84C();

      if (!v37)
      {
        sub_1ABD1BECC(&a10);
        sub_1ABD1AFE8();

        sub_1ABA9E3E8();
        sub_1ABF24F84();
        sub_1ABD1B84C();

        v35 = sub_1ABA8C53C();
        goto LABEL_11;
      }
    }
  }

  v34 = *(v28 + 8);
  v35 = v22;
  v36 = v33;
LABEL_11:
  v34(v35, v36);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphLocationAddressRelationship.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  sub_1ABAD219C(&qword_1EB4D71E8, &qword_1ABF510B8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BCE0();
  v7 = v3[3];
  v8 = v3[4];
  sub_1ABA88DCC(v3, v7);
  sub_1ABD0E68C();
  sub_1ABAA0704();
  sub_1ABA9EE14();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA88688();
    sub_1ABA84B54(v3);
    if (v8)
    {

      if (v7)
      {
        goto LABEL_10;
      }
    }

    else if (v7)
    {
LABEL_10:

      if ((v5 & 1) == 0)
      {
LABEL_11:
        if (!v1)
        {
          goto LABEL_13;
        }

LABEL_12:

        goto LABEL_13;
      }

LABEL_6:

      if ((v1 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_1ABD0E3C0();
  sub_1ABA827AC();
  sub_1ABD1B414(v9, v10, v11, v12);
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  LOBYTE(v88[0]) = 1;
  sub_1ABD0A2D4();
  v13 = sub_1ABD1ACAC();
  sub_1ABD1B414(v13, v14, v15, v16);
  v70 = v89;
  v71 = v90;
  sub_1ABD1BF38();
  v86 = v18;
  v87 = v17;
  v19 = sub_1ABA8B8EC(2);
  sub_1ABA9FABC(v19, v20, v21, v22);
  v69 = v90;
  sub_1ABD1BF38();
  v84 = v24;
  v85 = v23;
  v25 = sub_1ABA8B8EC(3);
  sub_1ABA9FABC(v25, v26, v27, v28);
  v68 = v90;
  v82 = v89;
  v83 = v91;
  v29 = sub_1ABA8B8EC(4);
  sub_1ABD1B414(v29, v30, v31, v32);
  v67 = v90;
  sub_1ABD1BF38();
  v80 = v34;
  v81 = v33;
  v35 = sub_1ABA8B8EC(5);
  sub_1ABA9FABC(v35, v36, v37, v38);
  v66 = v90;
  sub_1ABD1BF38();
  v78 = v40;
  v79 = v39;
  v41 = sub_1ABA8B8EC(6);
  sub_1ABA9FABC(v41, v42, v43, v44);
  v64 = v90;
  v65 = v90;
  v76 = v91;
  v77 = v89;
  v45 = sub_1ABA8B8EC(7);
  sub_1ABA9FABC(v45, v46, v47, v48);
  v63 = v90;
  v74 = v91;
  v75 = v89;
  v49 = sub_1ABA8B8EC(8);
  sub_1ABD1B414(v49, v50, v51, v52);
  v61 = v90;
  v62 = v89;
  v73 = v91;
  sub_1ABD1AFE8();
  sub_1ABD1B66C();
  v53 = sub_1ABD1ACAC();
  sub_1ABD1B414(v53, v54, v55, v56);
  v57 = sub_1ABA7BFF0();
  v58(v57);
  v72 = v118;
  v59 = v120;
  v60 = v119;
  v88[0] = v70;
  v88[1] = v71;
  v88[2] = v86;
  v88[3] = v69;
  v88[4] = v87;
  v88[5] = v84;
  v88[6] = v68;
  v88[7] = v85;
  v88[8] = v82;
  v88[9] = v67;
  v88[10] = v83;
  v88[11] = v80;
  v88[12] = v66;
  v88[13] = v81;
  v88[14] = v78;
  v88[15] = v65;
  v88[16] = v79;
  v88[17] = v77;
  v88[18] = v64;
  v88[19] = v76;
  v88[20] = v75;
  v88[21] = v63;
  v88[22] = v74;
  v88[23] = v62;
  v88[24] = v61;
  v88[25] = v73;
  v88[26] = v118;
  v88[27] = v119;
  v88[28] = v120;
  memcpy(v5, v88, 0xE8uLL);
  sub_1ABC6AB40(v88, &v89);
  sub_1ABA84B54(v3);
  v89 = v70;
  v90 = v71;
  v91 = v86;
  v92 = v69;
  v93 = v87;
  v94 = v84;
  v95 = v68;
  v96 = v85;
  v97 = v82;
  v98 = v67;
  v99 = v83;
  v100 = v80;
  v101 = v66;
  v102 = v81;
  v103 = v78;
  v104 = v65;
  v105 = v79;
  v106 = v77;
  v107 = v64;
  v108 = v76;
  v109 = v75;
  v110 = v63;
  v111 = v74;
  v112 = v62;
  v113 = v61;
  v114 = v73;
  v115 = v72;
  v116 = v60;
  v117 = v59;
  sub_1ABC6AB9C(&v89);
LABEL_13:
  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void static CustomGraphLocationLatLongRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABD1C204(_Records_GDEntityClass_records, v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v11, v9, v12, v13, v14);
  }

  else
  {
    __break(1u);
  }
}

double sub_1ABD02338@<D0>(void (*a1)(void *__return_ptr, uint64_t (*)(), void, uint64_t (*)(), uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = v7 + 16;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v7;

  a1(v24, sub_1ABD02764, 0, sub_1ABD19A00, v9);
  if (v2)
  {

    return result;
  }

  v11 = v24[0];
  v12 = v24[1];
  swift_beginAccess();
  v13 = *(v5 + 16);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v13 + 32);
  }

  else
  {
    swift_beginAccess();
    v15 = 0;
    if (!*(*v8 + 16))
    {

      result = 0.0;
      *(a2 + 41) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      return result;
    }
  }

  v22 = v15;
  v23 = v12;
  v26 = v14 == 0;
  swift_beginAccess();
  v16 = *v8;
  v17 = *(v16 + 16);
  v18 = v11;
  if (v17)
  {
    v19 = *(v16 + 32);
  }

  else
  {
    v19 = 0;
  }

  v20 = v17 == 0;

  v25 = v20;
  v21 = v26;
  *a2 = v18;
  *(a2 + 8) = v23;
  *(a2 + 16) = v13;
  *(a2 + 24) = v22;
  *(a2 + 32) = v21;
  *(a2 + 40) = v16;
  *(a2 + 48) = v19;
  *(a2 + 56) = v20;
  return result;
}

void sub_1ABD02570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, BOOL a22, uint64_t a23, BOOL a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1ABD1C088();
  a33 = v36;
  a34 = v37;
  v60 = v38;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_1ABA7D028();
  v45 = swift_allocObject();
  v46 = MEMORY[0x1E69E7CC0];
  sub_1ABD1BEF0(v45);
  sub_1ABA7D028();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  v48 = v47 + 16;
  sub_1ABAA267C();
  v49 = swift_allocObject();
  v49[2] = v42;
  v49[3] = v40;
  v49[4] = v45;
  v49[5] = v47;

  v44(&a19, sub_1ABD02764, 0, sub_1ABD1999C, v49);
  if (v34)
  {
  }

  else
  {

    v61 = a19;
    v59 = a20;
    v51 = sub_1ABAA9068(v50, &a19);
    v52 = *v35;
    v53 = *(v52 + 16);
    if (v53)
    {
      v54 = *(v52 + 32);
    }

    else
    {
      v51 = sub_1ABD1B080(v51, &a13);
      v54 = 0;
      if (!*(*v48 + 16))
      {

        *(v60 + 41) = 0u;
        *(v60 + 16) = 0u;
        *(v60 + 32) = 0u;
        *v60 = 0u;
        goto LABEL_10;
      }
    }

    a24 = v53 == 0;
    sub_1ABD1B080(v51, &a16);
    sub_1ABD1B610();
    if (v55)
    {
      v56 = *(v47 + 48);
    }

    else
    {
      v56 = 0;
    }

    v57 = v55 == 0;

    a22 = v57;
    v58 = a24;
    *v60 = v61;
    *(v60 + 8) = v59;
    *(v60 + 16) = v52;
    *(v60 + 24) = v54;
    *(v60 + 32) = v58;
    *(v60 + 40) = v48;
    *(v60 + 48) = v56;
    *(v60 + 56) = v57;
  }

LABEL_10:
  sub_1ABD1C06C();
}

void sub_1ABD02764(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 15), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphLocationLatLongRelationship init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x210), *(_Records_GDEntityClass_records + 0x218), *(_Records_GDEntityClass_records + 0x220), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x210), *(_Records_GDEntityClass_records + 0x218), *(_Records_GDEntityClass_records + 0x220), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABD029FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = *a1;
  v7 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1128], *(_Records_GDEntityPredicate_records + 283), *(_Records_GDEntityPredicate_records + 284), v37);
  if (*&v37[0] == v6 && *(&v37[0] + 1) == v7)
  {

    goto LABEL_15;
  }

  v36 = a3;
  v9 = sub_1ABF25054();

  if (v9)
  {
LABEL_15:
    if ((a1[7] & 1) == 0)
    {
      v12 = a1[5];
      v13 = a1[6];

      v14 = sub_1ABB24D04(v12, v13);
      if ((v15 & 1) == 0)
      {
        v25 = v14;
        swift_beginAccess();
        sub_1ABB4DCB0();
        v26 = *(*(a2 + 16) + 16);
        sub_1ABB4E0CC(v26);
        v27 = *(a2 + 16);
        *(v27 + 16) = v26 + 1;
        *(v27 + 8 * v26 + 32) = v25;
        *(a2 + 16) = v27;
        return;
      }
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v16 = sub_1ABF237F4();
    sub_1ABA7AA24(v16, qword_1ED871B40);
    sub_1ABD1927C(a1, v37);
    v17 = sub_1ABF237D4();
    v18 = sub_1ABF24664();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_31:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1140], *(_Records_GDEntityPredicate_records + 286), *(_Records_GDEntityPredicate_records + 287), v37);
  if (*&v37[0] == v6 && *(&v37[0] + 1) == v7)
  {

    goto LABEL_23;
  }

  v11 = sub_1ABF25054();

  if (v11)
  {
LABEL_23:
    if ((a1[7] & 1) == 0)
    {
      v28 = a1[5];
      v29 = a1[6];

      v30 = sub_1ABB24D04(v28, v29);
      if ((v31 & 1) == 0)
      {
        v33 = v30;
        swift_beginAccess();
        sub_1ABB4DCB0();
        v34 = *(*(v36 + 16) + 16);
        sub_1ABB4E0CC(v34);
        v35 = *(v36 + 16);
        *(v35 + 16) = v34 + 1;
        *(v35 + 8 * v34 + 32) = v33;
        *(v36 + 16) = v35;
        return;
      }
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v32 = sub_1ABF237F4();
    sub_1ABA7AA24(v32, qword_1ED871B40);
    sub_1ABD1927C(a1, v37);
    v17 = sub_1ABF237D4();
    v18 = sub_1ABF24664();
    if (!os_log_type_enabled(v17, v18))
    {
LABEL_28:

      sub_1ABB6DBB8(a1);
      return;
    }

LABEL_20:
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v39 = v20;
    *v19 = 136642819;
    v21 = *(a1 + 1);
    v37[0] = *a1;
    v37[1] = v21;
    v38[0] = *(a1 + 2);
    *(v38 + 9) = *(a1 + 41);
    v22 = sub_1ABF23C94();
    v24 = sub_1ABADD6D8(v22, v23, &v39);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_1ABA78000, v17, v18, "Failed to parse %{sensitive}s.", v19, 0xCu);
    sub_1ABA84B54(v20);
    MEMORY[0x1AC5AB8B0](v20, -1, -1);
    MEMORY[0x1AC5AB8B0](v19, -1, -1);
  }
}

void sub_1ABD02E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a3;
  v79 = a2;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v75 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v75 - v14;
  v16 = *(v15 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = *(AssociatedTypeWitness - 8);
  v84 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v77 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v75 - v21;
  v23 = *(v16 + 24);
  v85 = a1;
  v23(v88, a4, v16, v20);
  v75 = v9;
  v78 = v12;
  v80 = v7;
  v82 = a4;
  v89 = v4;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_34;
  }

  v25 = v88[0];
  v24 = v88[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1128], *(_Records_GDEntityPredicate_records + 283), *(_Records_GDEntityPredicate_records + 284), &v86);
  if (v86 == v25 && v87 == v24)
  {

LABEL_9:

    v28 = v85;
    v29 = v82;
    (*(v16 + 32))(v82, v16);
    v30 = v84;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = BaseEntityFactObjectProtocol.asGraphLocationDegrees.getter(v30, AssociatedConformanceWitness);
    v34 = v33;
    (*(v83 + 8))(v22, v30);
    v35 = v81;
    if (v34)
    {
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v36 = sub_1ABF237F4();
      sub_1ABA7AA24(v36, qword_1ED871B40);
      v37 = v80;
      v38 = *(v80 + 16);
      v38(v35, v28, v29);
      v39 = sub_1ABF237D4();
      v40 = sub_1ABF24664();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        LODWORD(v85) = v40;
        v43 = v35;
        v44 = v37;
        v45 = v42;
        v86 = v42;
        *v41 = 136642819;
        v38(v78, v43, v29);
        v46 = sub_1ABF23C94();
        v48 = v47;
        (*(v44 + 8))(v43, v29);
        v49 = sub_1ABADD6D8(v46, v48, &v86);

        *(v41 + 4) = v49;
        _os_log_impl(&dword_1ABA78000, v39, v85, "Failed to parse %{sensitive}s.", v41, 0xCu);
        sub_1ABA84B54(v45);
        MEMORY[0x1AC5AB8B0](v45, -1, -1);
        MEMORY[0x1AC5AB8B0](v41, -1, -1);
      }

      else
      {

        (*(v37 + 8))(v35, v29);
      }

      return;
    }

    v50 = v79;
LABEL_15:
    swift_beginAccess();
    sub_1ABB4DCB0();
    v51 = *(*(v50 + 16) + 16);
    sub_1ABB4E0CC(v51);
    v52 = *(v50 + 16);
    *(v52 + 16) = v51 + 1;
    *(v52 + 8 * v51 + 32) = v32;
    *(v50 + 16) = v52;
    return;
  }

  v27 = sub_1ABF25054();

  if (v27)
  {
    goto LABEL_9;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_34:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1140], *(_Records_GDEntityPredicate_records + 286), *(_Records_GDEntityPredicate_records + 287), &v86);
  if (v86 == v25 && v87 == v24)
  {
  }

  else
  {
    v54 = sub_1ABF25054();

    if ((v54 & 1) == 0)
    {
      return;
    }
  }

  v55 = v77;
  v56 = v85;
  v57 = v82;
  (*(v16 + 32))(v82, v16);
  v58 = v84;
  v59 = swift_getAssociatedConformanceWitness();
  v32 = BaseEntityFactObjectProtocol.asGraphLocationDegrees.getter(v58, v59);
  v61 = v60;
  (*(v83 + 8))(v55, v58);
  if ((v61 & 1) == 0)
  {
    v50 = v76;
    goto LABEL_15;
  }

  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v62 = sub_1ABF237F4();
  sub_1ABA7AA24(v62, qword_1ED871B40);
  v63 = v80;
  v64 = *(v80 + 16);
  v65 = v75;
  v64(v75, v56, v57);
  v66 = sub_1ABF237D4();
  v67 = sub_1ABF24664();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = v63;
    v70 = swift_slowAlloc();
    v86 = v70;
    *v68 = 136642819;
    LODWORD(v85) = v67;
    v64(v78, v65, v57);
    v71 = sub_1ABF23C94();
    v73 = v72;
    (*(v69 + 8))(v65, v57);
    v74 = sub_1ABADD6D8(v71, v73, &v86);

    *(v68 + 4) = v74;
    _os_log_impl(&dword_1ABA78000, v66, v85, "Failed to parse %{sensitive}s.", v68, 0xCu);
    sub_1ABA84B54(v70);
    MEMORY[0x1AC5AB8B0](v70, -1, -1);
    MEMORY[0x1AC5AB8B0](v68, -1, -1);
  }

  else
  {

    (*(v63 + 8))(v65, v57);
  }
}

_OWORD *CustomGraphLocationLatLongRelationship.init(subentityId:all_latitude:all_longitude:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(a2 + 32);
  }

  else
  {
    v5 = 0;
  }

  *(a4 + 16) = a2;
  *(a4 + 24) = v5;
  *(a4 + 32) = v4 == 0;
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = *(a3 + 32);
  }

  else
  {
    v7 = 0;
  }

  *(a4 + 40) = a3;
  *(a4 + 48) = v7;
  *(a4 + 56) = v6 == 0;
  return result;
}

uint64_t sub_1ABD03684(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

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

uint64_t sub_1ABD037A0(char a1)
{
  if (!a1)
  {
    return 0x7469746E65627573;
  }

  if (a1 == 1)
  {
    return 0x656475746974616CLL;
  }

  return 0x64757469676E6F6CLL;
}

uint64_t sub_1ABD0380C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD03684(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD03834(uint64_t a1)
{
  v2 = sub_1ABD0E6E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD03870(uint64_t a1)
{
  v2 = sub_1ABD0E6E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphLocationLatLongRelationship.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABD1BABC();
  sub_1ABAD219C(&qword_1EB4D71F0, &qword_1ABF510C0);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7E338();
  sub_1ABA88DCC(v1, v1[3]);
  sub_1ABD0E6E0();
  sub_1ABA82E0C();
  sub_1ABA9EE14();
  sub_1ABF252E4();
  sub_1ABD0E36C();
  v3 = sub_1ABA80C2C();
  sub_1ABD1B97C(v3, v4, v5);
  if (!v0)
  {
    sub_1ABA8B6EC();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v6 = sub_1ABAB2B48();
    sub_1ABAA6564(v6, v7, v8);
    sub_1ABD1AFA0();

    sub_1ABD1B178();

    v9 = sub_1ABAB2B48();
    sub_1ABAA6564(v9, v10, v11);
    sub_1ABD1AFA0();
  }

  v12 = sub_1ABA7D0EC();
  v13(v12);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphLocationLatLongRelationship.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  v26 = v25;
  v28 = v27;
  v29 = sub_1ABAD219C(&qword_1EB4D7200, &qword_1ABF510C8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABD0E6E0();
  sub_1ABAA0704();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (v24)
  {
    sub_1ABA84B54(v26);
  }

  else
  {
    LOBYTE(v51) = 0;
    sub_1ABD0E3C0();
    sub_1ABD1B414(&type metadata for SubentityIdentifier, &v51, v29, &type metadata for SubentityIdentifier);
    v50 = v54;
    v49 = v55;
    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    LOBYTE(v51) = 1;
    sub_1ABD0ACD4();
    v31 = sub_1ABD1B014();
    sub_1ABA9FABC(v31, v32, v33, v34);
    v48 = v54;
    v47 = v55;
    v66 = v56;
    sub_1ABD1B178();
    v35 = sub_1ABD1B014();
    sub_1ABA9FABC(v35, v36, v37, v38);
    v39 = sub_1ABA8C53C();
    v40(v39);
    v41 = v64;
    v65 = v64;
    *&v51 = v50;
    *(&v51 + 1) = v49;
    *&v52 = v48;
    *(&v52 + 1) = v47;
    LOBYTE(v53[0]) = v66;
    *(&v53[0] + 1) = v62;
    *&v53[1] = v63;
    BYTE8(v53[1]) = v64;
    v42 = v51;
    v43 = v52;
    v44 = v53[0];
    *(v28 + 41) = *(v53 + 9);
    v28[1] = v43;
    v28[2] = v44;
    *v28 = v42;
    sub_1ABD0C408(&v51, &v54);
    sub_1ABA84B54(v26);
    v54 = v50;
    v55 = v49;
    v56 = v48;
    v57 = v47;
    v58 = v66;
    sub_1ABD1B884();
    v59 = v46;
    v60 = v45;
    v61 = v41;
    sub_1ABC6ABF0(&v54);
  }

  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void static CustomGraphTopicRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x138), *(_Records_GDEntityClass_records + 0x140), *(_Records_GDEntityClass_records + 0x140 + 8), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABD03DE8(__n128 a1, uint64_t a2, unint64_t a3)
{
  EntityClass.init(intValue:)(HIBYTE(a3), &v24);
  v3 = *(&v24 + 1);
  if (!*(&v24 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v9 = sub_1ABF237F4();
    sub_1ABA7AA24(v9, qword_1ED871B40);
    v10 = sub_1ABF237D4();
    v11 = sub_1ABF24674();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1ABA78000, v10, v11, "entityClass is nil in CustomGraphTopicRelationship init", v12, 2u);
      MEMORY[0x1AC5AB8B0](v12, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v13 = 2;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 33) = 0u;
    *(v13 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v4 = v24;
    v5 = v25;
    v6 = v26;
    v7 = v27;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x138), *(_Records_GDEntityClass_records + 0x140), *(_Records_GDEntityClass_records + 0x140 + 8), v37);
    v8 = v38 == v5 && v6 == v39;
    if (v8 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v37);
LABEL_9:
      sub_1ABAA8FA8(v4, v3, v5, v6);
      return;
    }

    *&v24 = v4;
    *(&v24 + 1) = v3;
    v25 = v5;
    v26 = v6;
    LOBYTE(v27) = v7;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v37, v14, v15, v16, v17, v18, v19, v20, v24, SBYTE8(v24), v25, v26, v27, v28, v29, v30, v31, v32, v33, *(&v33 + 1), v34, v35, v36, v37[0], v37[1], v38, v39, v40, v41, v42);
    v22 = v21;

    sub_1ABA88934(v37);
    if (v22)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x138), *(_Records_GDEntityClass_records + 0x140), *(_Records_GDEntityClass_records + 0x140 + 8), &v33);
      v24 = v33;
      v25 = v34;
      v26 = v35;
      LOBYTE(v27) = v36;
      v28 = v4;
      v29 = v3;
      v30 = v5;
      v31 = v6;
      LOBYTE(v32) = v7;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v24, v23);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABD04310(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v46 = a3;
  v47 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v42 - v12;
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = v42 - v18;
  v20 = *(v15 + 24);
  v50 = a1;
  v20(v54, a4, v15, v17);
  v42[1] = a2;
  v43 = v10;
  v44 = v13;
  v49 = v5;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    return;
  }

  v22 = v54[0];
  v21 = v54[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[204], *(_Records_GDEntityPredicate_records + 52), *(_Records_GDEntityPredicate_records + 53), &v52);
  if (v52 == v22 && v53 == v21)
  {
  }

  else
  {
    v24 = sub_1ABF25054();

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  (*(v15 + 32))(a4, v15);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v52, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v48 + 8))(v19, AssociatedTypeWitness);
  if (v53)
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v26 = sub_1ABF237F4();
    sub_1ABA7AA24(v26, qword_1ED871B40);
    v27 = v47;
    v28 = *(v47 + 16);
    v29 = v44;
    v28(v44, v50, a4);
    v30 = sub_1ABF237D4();
    v31 = sub_1ABF24664();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = v50;
      *v32 = 136642819;
      LODWORD(v48) = v31;
      v28(v43, v29, a4);
      v33 = sub_1ABF23C94();
      v35 = v34;
      (*(v27 + 8))(v29, a4);
      v36 = sub_1ABADD6D8(v33, v35, &v52);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1ABA78000, v30, v48, "Failed to parse %{sensitive}s.", v32, 0xCu);
      v37 = v50;
      sub_1ABA84B54(v50);
      MEMORY[0x1AC5AB8B0](v37, -1, -1);
      MEMORY[0x1AC5AB8B0](v32, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v29, a4);
    }
  }

  else
  {
    v38 = v46;
    v39 = *(v45 + 8);
    v40 = v49;
    TypedEntityIdentifier.init(untyped:)(&v52, v46, v39, &v55);
    if (!v40)
    {
      v51 = v55;
      swift_beginAccess();
      type metadata accessor for TypedEntityIdentifier(255, v38, v39, v41);
      sub_1ABF241F4();
      sub_1ABF241A4();
      swift_endAccess();
    }
  }
}

uint64_t sub_1ABD04830(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496369706F74 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABD048FC(char a1)
{
  if (a1)
  {
    return 0x64496369706F74;
  }

  else
  {
    return 0x7469746E65627573;
  }
}

uint64_t sub_1ABD0494C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD04830(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD0497C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD049D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD04A4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return GraphObjectRelationship.id.getter(a1, WitnessTable);
}

void sub_1ABD04B30()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v30 = v7;
  v8(255);
  swift_getWitnessTable();
  sub_1ABA82858();
  sub_1ABF24EB4();
  sub_1ABA7BB64();
  v31 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BCE0();
  v11 = sub_1ABA8BBFC();
  v13 = sub_1ABA93E20(v11, v12);
  sub_1ABF252C4();
  if (v0)
  {
    v26 = v6;
  }

  else
  {
    sub_1ABD0E3C0();
    sub_1ABD1AF3C();
    sub_1ABD1B7A4(v14, v15, v31, v14);
    type metadata accessor for TypedEntityIdentifier(255, v4, *(v2 + 8), v16);
    v17 = sub_1ABA82858();
    type metadata accessor for OneOf(v17, v13, v18, v19);
    sub_1ABA8B6EC();
    sub_1ABA8A1E0();
    swift_getWitnessTable();
    sub_1ABA9F6E4();
    swift_getWitnessTable();
    sub_1ABA8AE78();
    swift_getWitnessTable();
    sub_1ABA8B4F0();
    sub_1ABA96C48();
    sub_1ABD1B7A4(v20, v21, v22, v23);
    v24 = sub_1ABA7BFF0();
    v25(v24);
    sub_1ABD1AF54();
    v26 = v6;
    *v30 = v32;
    *(v30 + 8) = v33;
    *(v30 + 16) = v27;
    *(v30 + 24) = v28;
    *(v30 + 32) = v29;
  }

  sub_1ABA84B54(v26);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void static CustomGraphSongRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x588), *(_Records_GDEntityClass_records + 0x590), *(_Records_GDEntityClass_records + 0x598), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABD04DE4(__n128 a1, uint64_t a2, unint64_t a3)
{
  EntityClass.init(intValue:)(HIBYTE(a3), &v24);
  v3 = *(&v24 + 1);
  if (!*(&v24 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v9 = sub_1ABF237F4();
    sub_1ABA7AA24(v9, qword_1ED871B40);
    v10 = sub_1ABF237D4();
    v11 = sub_1ABF24674();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1ABA78000, v10, v11, "entityClass is nil in CustomGraphSongRelationship init", v12, 2u);
      MEMORY[0x1AC5AB8B0](v12, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v13 = 2;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 33) = 0u;
    *(v13 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v4 = v24;
    v5 = v25;
    v6 = v26;
    v7 = v27;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x588), *(_Records_GDEntityClass_records + 0x590), *(_Records_GDEntityClass_records + 0x598), v37);
    v8 = v38 == v5 && v6 == v39;
    if (v8 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v37);
LABEL_9:
      sub_1ABAA8FA8(v4, v3, v5, v6);
      return;
    }

    *&v24 = v4;
    *(&v24 + 1) = v3;
    v25 = v5;
    v26 = v6;
    LOBYTE(v27) = v7;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v37, v14, v15, v16, v17, v18, v19, v20, v24, SBYTE8(v24), v25, v26, v27, v28, v29, v30, v31, v32, v33, *(&v33 + 1), v34, v35, v36, v37[0], v37[1], v38, v39, v40, v41, v42);
    v22 = v21;

    sub_1ABA88934(v37);
    if (v22)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x588), *(_Records_GDEntityClass_records + 0x590), *(_Records_GDEntityClass_records + 0x598), &v33);
      v24 = v33;
      v25 = v34;
      v26 = v35;
      LOBYTE(v27) = v36;
      v28 = v4;
      v29 = v3;
      v30 = v5;
      v31 = v6;
      LOBYTE(v32) = v7;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v24, v23);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABD0507C(uint64_t *a1, uint64_t a2)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    return;
  }

  v32[7] = v3;
  v32[8] = v4;
  v7 = *a1;
  v8 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1812], *(_Records_GDEntityPredicate_records + 454), *(_Records_GDEntityPredicate_records + 455), v30);
  if (*&v30[0] == v7 && *(&v30[0] + 1) == v8)
  {
  }

  else
  {
    v10 = sub_1ABF25054();

    if ((v10 & 1) == 0)
    {
      return;
    }
  }

  if (a1[7])
  {
    sub_1ABC4CABC(a1[5], v11, v12, v13, v14, v15, v16, v17);
    if (!v2)
    {
      v18 = v32[0];
      swift_beginAccess();
      sub_1ABB4DE18();
      v19 = *(*(a2 + 16) + 16);
      sub_1ABB4E21C(v19);
      v20 = *(a2 + 16);
      *(v20 + 16) = v19 + 1;
      *(v20 + 8 * v19 + 32) = v18;
      *(a2 + 16) = v20;
    }
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v21 = sub_1ABF237F4();
    sub_1ABA7AA24(v21, qword_1ED871B40);
    sub_1ABD1927C(a1, v30);
    v22 = sub_1ABF237D4();
    v23 = sub_1ABF24664();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[0] = v25;
      *v24 = 136642819;
      v26 = *(a1 + 1);
      v30[0] = *a1;
      v30[1] = v26;
      v31[0] = *(a1 + 2);
      *(v31 + 9) = *(a1 + 41);
      v27 = sub_1ABF23C94();
      v29 = sub_1ABADD6D8(v27, v28, v32);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1ABA78000, v22, v23, "Failed to parse %{sensitive}s.", v24, 0xCu);
      sub_1ABA84B54(v25);
      MEMORY[0x1AC5AB8B0](v25, -1, -1);
      MEMORY[0x1AC5AB8B0](v24, -1, -1);
    }

    else
    {

      sub_1ABB6DBB8(a1);
    }
  }
}

void sub_1ABD05318(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v46 = a3;
  v47 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v42 - v12;
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = v42 - v18;
  v20 = *(v15 + 24);
  v50 = a1;
  v20(v54, a4, v15, v17);
  v42[1] = a2;
  v43 = v10;
  v44 = v13;
  v49 = v5;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    return;
  }

  v22 = v54[0];
  v21 = v54[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1812], *(_Records_GDEntityPredicate_records + 454), *(_Records_GDEntityPredicate_records + 455), &v52);
  if (v52 == v22 && v53 == v21)
  {
  }

  else
  {
    v24 = sub_1ABF25054();

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  (*(v15 + 32))(a4, v15);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v52, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v48 + 8))(v19, AssociatedTypeWitness);
  if (v53)
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v26 = sub_1ABF237F4();
    sub_1ABA7AA24(v26, qword_1ED871B40);
    v27 = v47;
    v28 = *(v47 + 16);
    v29 = v44;
    v28(v44, v50, a4);
    v30 = sub_1ABF237D4();
    v31 = sub_1ABF24664();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = v50;
      *v32 = 136642819;
      LODWORD(v48) = v31;
      v28(v43, v29, a4);
      v33 = sub_1ABF23C94();
      v35 = v34;
      (*(v27 + 8))(v29, a4);
      v36 = sub_1ABADD6D8(v33, v35, &v52);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1ABA78000, v30, v48, "Failed to parse %{sensitive}s.", v32, 0xCu);
      v37 = v50;
      sub_1ABA84B54(v50);
      MEMORY[0x1AC5AB8B0](v37, -1, -1);
      MEMORY[0x1AC5AB8B0](v32, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v29, a4);
    }
  }

  else
  {
    v38 = v46;
    v39 = *(v45 + 8);
    v40 = v49;
    TypedEntityIdentifier.init(untyped:)(&v52, v46, v39, &v55);
    if (!v40)
    {
      v51 = v55;
      swift_beginAccess();
      type metadata accessor for TypedEntityIdentifier(255, v38, v39, v41);
      sub_1ABF241F4();
      sub_1ABF241A4();
      swift_endAccess();
    }
  }
}

uint64_t sub_1ABD05840(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449676E6F73 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABD05908(char a1)
{
  if (a1)
  {
    return 0x6449676E6F73;
  }

  else
  {
    return 0x7469746E65627573;
  }
}

uint64_t sub_1ABD05954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD05840(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD05984(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD059D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD05A54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return GraphObjectRelationship.id.getter(a1, WitnessTable);
}

void static CustomGraphVisualIdentifierRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x558), *(_Records_GDEntityClass_records + 0x560), *(_Records_GDEntityClass_records + 0x568), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABD05BE4()
{
  sub_1ABA7BCA8();
  v30 = v3;
  v5 = v4;
  v7 = v6;
  sub_1ABD1BE10(v8, v9, v10, v11);
  v29 = *(v12 + 8);
  swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7E338();
  v16 = *(v5 + 24);
  v17 = sub_1ABA9FF6C();
  v16(v17);
  v18 = sub_1ABD1BA14();
  v19(v18);
  if (v1)
  {
LABEL_10:
    sub_1ABA8869C();
    sub_1ABA7BC90();
    return;
  }

  (*(v29 + 32))(v7);
  v20 = sub_1ABF240E4();
  sub_1ABD1BDC4(v20);
  while (1)
  {
    sub_1ABD1BEB4();
    if (v31 == sub_1ABF24194())
    {

      (v16)(v7, v5);
      goto LABEL_10;
    }

    sub_1ABD1BEB4();
    v21 = sub_1ABF24174();
    sub_1ABD1BC14(v21);
    if (v0)
    {
      sub_1ABD1B7FC();
      v22 = sub_1ABD1BEC0();
      v23(v22);
      goto LABEL_6;
    }

    sub_1ABAA030C();
    v26 = sub_1ABF24B04();
    if (v14 != 8)
    {
      break;
    }

    sub_1ABD1BAF8(v26);
    v27 = sub_1ABD1BEC0();
    v28(v27);
    swift_unknownObjectRelease();
LABEL_6:
    sub_1ABF241D4();
    v30(v2);
    v24 = sub_1ABAB6768();
    v25(v24);
  }

  __break(1u);
}

double sub_1ABD05E38@<D0>(void (*a1)(void *__return_ptr, uint64_t (*)(), void, uint64_t (*)(), void *)@<X0>, void *a2@<X8>)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = v6 + 16;
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v6;

  v9 = v38;
  a1(v37, sub_1ABD064C8, 0, sub_1ABD198A8, v8);
  if (v9)
  {
  }

  else
  {
    v36 = v6;
    v38 = v2;

    v11 = v37[0];
    v12 = v37[1];
    swift_beginAccess();
    v13 = *(v2 + 16);
    if (*(v13 + 16) || (swift_beginAccess(), *(*(v4 + 16) + 16)) || (swift_beginAccess(), *(*(v5 + 16) + 16)) || (swift_beginAccess(), *(*v7 + 16)))
    {
      v14 = sub_1ABB2B834(v13);
      v31 = v15;
      v32 = v14;
      swift_beginAccess();
      v16 = v13;
      v17 = *(v4 + 16);
      v33 = sub_1ABB2B834(v17);
      v30 = v18;
      swift_beginAccess();
      v27 = v12;
      v19 = *(v5 + 16);
      v20 = sub_1ABB2B834(v19);
      v28 = v21;
      v29 = v20;
      swift_beginAccess();
      v22 = *(v36 + 16);
      v23 = sub_1ABB2B834(v22);
      v25 = v24;
      v26 = v23;

      *a2 = v11;
      a2[1] = v27;
      a2[2] = v16;
      a2[3] = v32;
      a2[4] = v31;
      a2[5] = v17;
      a2[6] = v33;
      a2[7] = v30;
      a2[8] = v19;
      a2[9] = v29;
      a2[10] = v28;
      a2[11] = v22;
      a2[12] = v26;
      a2[13] = v25;
    }

    else
    {

      result = 0.0;
      *(a2 + 5) = 0u;
      *(a2 + 6) = 0u;
      *(a2 + 3) = 0u;
      *(a2 + 4) = 0u;
      *(a2 + 1) = 0u;
      *(a2 + 2) = 0u;
      *a2 = 0u;
    }
  }

  return result;
}

void sub_1ABD061B0(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v50 = a3;
  sub_1ABA7D028();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABA7D028();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  sub_1ABA7D028();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  sub_1ABA7D028();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  sub_1ABA807B4();
  v9 = swift_allocObject();
  v10 = v50;
  v9[2] = a2;
  v9[3] = v10;
  v9[4] = v4;
  v9[5] = v6;
  v9[6] = v7;
  v9[7] = v8;

  v50 = v8;

  sub_1ABD1B678();
  a1();
  if (v42)
  {
  }

  else
  {

    v12 = v49[0];
    v41 = v49[1];
    sub_1ABD1B1F4(v11, v49);
    sub_1ABD1BFD0();
    if (v14 || (sub_1ABAAA634(v13, v45), sub_1ABD1B9FC(), v16) || (v17 = sub_1ABD1B0E8(v15, v44), *(*(v7 + 16) + 16)) || (sub_1ABD1B03C(v17, v43), *(*(v8 + 16) + 16)))
    {
      v18 = sub_1ABB2B834(v4 + 16);
      v38 = v19;
      v39 = v18;
      sub_1ABAAA634(v18, v48);
      v20 = v4 + 16;
      v21 = *(v6 + 16);
      v22 = sub_1ABB2B834(v21);
      v34 = v23;
      v35 = v22;
      sub_1ABD1B0E8(v22, v47);
      v31 = v12;
      v24 = *(v7 + 16);
      v25 = sub_1ABB2B834(v24);
      v32 = v26;
      v33 = v25;
      sub_1ABD1B03C(v25, v46);
      v27 = *(v50 + 16);
      v28 = sub_1ABB2B834(v27);
      v30 = v29;

      *a4 = v31;
      a4[1] = v41;
      a4[2] = v20;
      a4[3] = v39;
      a4[4] = v38;
      a4[5] = v21;
      a4[6] = v35;
      a4[7] = v34;
      a4[8] = v24;
      a4[9] = v33;
      a4[10] = v32;
      a4[11] = v27;
      a4[12] = v28;
      a4[13] = v30;
    }

    else
    {

      *(a4 + 5) = 0u;
      *(a4 + 6) = 0u;
      *(a4 + 3) = 0u;
      *(a4 + 4) = 0u;
      sub_1ABD1BA2C(a4, 0);
    }
  }
}

void sub_1ABD064C8(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 15), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphVisualIdentifierRelationship init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x558), *(_Records_GDEntityClass_records + 0x560), *(_Records_GDEntityClass_records + 0x568), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x558), *(_Records_GDEntityClass_records + 0x560), *(_Records_GDEntityClass_records + 0x568), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABD06760(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_50;
  }

  v9 = *a1;
  v10 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1560], *(_Records_GDEntityPredicate_records + 391), *(_Records_GDEntityPredicate_records + 392), v47);
  if (*&v47[0] == v9 && *(&v47[0] + 1) == v10)
  {

    goto LABEL_27;
  }

  v45 = a5;
  v12 = sub_1ABF25054();

  if (v12)
  {
LABEL_27:
    if (a1[7])
    {
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v19 = sub_1ABF237F4();
      sub_1ABA7AA24(v19, qword_1ED871B40);
      sub_1ABD1927C(a1, v47);
      v20 = sub_1ABF237D4();
      v21 = sub_1ABF24664();
      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_39;
      }

LABEL_31:
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49 = v23;
      *v22 = 136642819;
      v24 = *(a1 + 1);
      v47[0] = *a1;
      v47[1] = v24;
      v48[0] = *(a1 + 2);
      *(v48 + 9) = *(a1 + 41);
      v25 = sub_1ABF23C94();
      v27 = sub_1ABADD6D8(v25, v26, &v49);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1ABA78000, v20, v21, "Failed to parse %{sensitive}s.", v22, 0xCu);
      sub_1ABA84B54(v23);
      MEMORY[0x1AC5AB8B0](v23, -1, -1);
      MEMORY[0x1AC5AB8B0](v22, -1, -1);

      return;
    }

    v29 = a1[5];
    v28 = a1[6];
    swift_beginAccess();

    sub_1ABB4DC20();
    v30 = *(*(a2 + 16) + 16);
    sub_1ABB4E024(v30);
    v31 = *(a2 + 16);
    *(v31 + 16) = v30 + 1;
    v32 = v31 + 16 * v30;
    *(v32 + 32) = v29;
    *(v32 + 40) = v28;
    *(a2 + 16) = v31;
    goto LABEL_33;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2424], *(_Records_GDEntityPredicate_records + 607), *(_Records_GDEntityPredicate_records + 608), v47);
  if (*&v47[0] == v9 && *(&v47[0] + 1) == v10)
  {

    goto LABEL_35;
  }

  v14 = sub_1ABF25054();

  if (v14)
  {
LABEL_35:
    if (a1[7])
    {
      goto LABEL_36;
    }

    v35 = a1[5];
    v34 = a1[6];
    swift_beginAccess();

    sub_1ABB4DC20();
    v36 = *(*(a3 + 16) + 16);
    sub_1ABB4E024(v36);
    v37 = *(a3 + 16);
    *(v37 + 16) = v36 + 1;
    v38 = v37 + 16 * v36;
    *(v38 + 32) = v35;
    *(v38 + 40) = v34;
    *(a3 + 16) = v37;
LABEL_33:
    swift_endAccess();
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2448], *(_Records_GDEntityPredicate_records + 613), *(_Records_GDEntityPredicate_records + 614), v47);
  if (*&v47[0] == v9 && *(&v47[0] + 1) == v10)
  {

LABEL_43:
    if ((a1[7] & 1) == 0)
    {
      v40 = a1[5];
      v39 = a1[6];
      v41 = a4;
LABEL_45:
      swift_beginAccess();

      sub_1ABB4DC20();
      v42 = *(*(v41 + 16) + 16);
      sub_1ABB4E024(v42);
      v43 = *(v41 + 16);
      *(v43 + 16) = v42 + 1;
      v44 = v43 + 16 * v42;
      *(v44 + 32) = v40;
      *(v44 + 40) = v39;
      *(v41 + 16) = v43;
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  v16 = sub_1ABF25054();

  if (v16)
  {
    goto LABEL_43;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_52:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2748], *(_Records_GDEntityPredicate_records + 688), *(_Records_GDEntityPredicate_records + 689), v47);
  if (*&v47[0] == v9 && *(&v47[0] + 1) == v10)
  {
  }

  else
  {
    v18 = sub_1ABF25054();

    if ((v18 & 1) == 0)
    {
      return;
    }
  }

  if ((a1[7] & 1) == 0)
  {
    v40 = a1[5];
    v39 = a1[6];
    v41 = v45;
    goto LABEL_45;
  }

LABEL_36:
  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v33 = sub_1ABF237F4();
  sub_1ABA7AA24(v33, qword_1ED871B40);
  sub_1ABD1927C(a1, v47);
  v20 = sub_1ABF237D4();
  v21 = sub_1ABF24664();
  if (os_log_type_enabled(v20, v21))
  {
    goto LABEL_31;
  }

LABEL_39:

  sub_1ABB6DBB8(a1);
}

void sub_1ABD06CD0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v97[3] = a5;
  v100 = a4;
  v103 = a3;
  v108 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v97[2] = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v99 = v97 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v102 = v97 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v97 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v106 = v97 - v19;
  v21 = *(v20 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v111 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v98 = v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v101 = v97 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v105 = v97 - v27;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = v97 - v30;
  v32 = *(v21 + 24);
  v116 = a1;
  v112 = a6;
  v32(v115, a6, v21, v29);
  v107 = a2;
  v110 = AssociatedTypeWitness;
  v104 = v17;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v33 = v115[0];
  v34 = v115[1];
  v35 = v115[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1560], *(_Records_GDEntityPredicate_records + 391), *(_Records_GDEntityPredicate_records + 392), &v113);
  if (v113 == v33 && v114 == v34)
  {

    v38 = v6;
    goto LABEL_9;
  }

  v97[1] = v35;
  v109 = v6;
  v37 = sub_1ABF25054();

  if (v37)
  {
    v38 = v109;
LABEL_9:

    v39 = v116;
    v40 = v112;
    (*(v21 + 32))(v112, v21);
    v41 = v40;
    v42 = v110;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v44 = (*(AssociatedConformanceWitness + 24))(v42, AssociatedConformanceWitness);
    v46 = v45;
    (*(v111 + 8))(v31, v42);
    if (v46)
    {
      v47 = v107;
      swift_beginAccess();
      sub_1ABB4DC20();
      v48 = *(*(v47 + 16) + 16);
      sub_1ABB4E024(v48);
      v49 = *(v47 + 16);
      *(v49 + 16) = v48 + 1;
      v50 = v49 + 16 * v48;
      *(v50 + 32) = v44;
      *(v50 + 40) = v46;
      *(v47 + 16) = v49;
LABEL_41:
      swift_endAccess();
      return;
    }

    v109 = v38;
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v51 = sub_1ABF237F4();
    sub_1ABA7AA24(v51, qword_1ED871B40);
    v52 = v108;
    v53 = *(v108 + 16);
    v54 = v106;
    v53(v106, v39, v41);
    v55 = sub_1ABF237D4();
    v56 = sub_1ABF24664();
    if (!os_log_type_enabled(v55, v56))
    {

      (*(v52 + 8))(v54, v41);
      return;
    }

    v57 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v113 = v116;
    *v57 = 136642819;
    v53(v104, v54, v41);
    v58 = sub_1ABF23C94();
    v60 = v59;
    (*(v52 + 8))(v54, v41);
    goto LABEL_48;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_65;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2424], *(_Records_GDEntityPredicate_records + 607), *(_Records_GDEntityPredicate_records + 608), &v113);
  v61 = v113 == v33 && v114 == v34;
  v62 = v108;
  if (v61)
  {

LABEL_24:

    v64 = v105;
    v65 = v112;
    (*(v21 + 32))(v112, v21);
    v66 = v110;
    v67 = swift_getAssociatedConformanceWitness();
    v68 = (*(v67 + 24))(v66, v67);
    v70 = v69;
    (*(v111 + 8))(v64, v66);
    if (v70)
    {
      v71 = v103;
LABEL_40:
      swift_beginAccess();
      sub_1ABB4DC20();
      v82 = *(*(v71 + 16) + 16);
      sub_1ABB4E024(v82);
      v83 = *(v71 + 16);
      *(v83 + 16) = v82 + 1;
      v84 = v83 + 16 * v82;
      *(v84 + 32) = v68;
      *(v84 + 40) = v70;
      *(v71 + 16) = v83;
      goto LABEL_41;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v72 = sub_1ABF237F4();
    sub_1ABA7AA24(v72, qword_1ED871B40);
    v73 = *(v62 + 16);
    v74 = v102;
    v73(v102, v116, v65);
    goto LABEL_46;
  }

  v63 = sub_1ABF25054();

  if (v63)
  {
    goto LABEL_24;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_66;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2448], *(_Records_GDEntityPredicate_records + 613), *(_Records_GDEntityPredicate_records + 614), &v113);
  if (v113 == v33 && v114 == v34)
  {

LABEL_37:

    v77 = v101;
    v65 = v112;
    (*(v21 + 32))(v112, v21);
    v78 = v110;
    v79 = swift_getAssociatedConformanceWitness();
    v68 = (*(v79 + 24))(v78, v79);
    v70 = v80;
    (*(v111 + 8))(v77, v78);
    if (v70)
    {
      v81 = &v120;
LABEL_39:
      v71 = *(v81 - 32);
      goto LABEL_40;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v85 = sub_1ABF237F4();
    sub_1ABA7AA24(v85, qword_1ED871B40);
    v73 = *(v62 + 16);
    v86 = &v119;
    goto LABEL_45;
  }

  v76 = sub_1ABF25054();

  if (v76)
  {
    goto LABEL_37;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_67:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2748], *(_Records_GDEntityPredicate_records + 688), *(_Records_GDEntityPredicate_records + 689), &v113);
  if (v113 == v33 && v114 == v34)
  {
  }

  else
  {
    v91 = sub_1ABF25054();

    if ((v91 & 1) == 0)
    {
      return;
    }
  }

  v92 = v98;
  v65 = v112;
  (*(v21 + 32))(v112, v21);
  v93 = v110;
  v94 = swift_getAssociatedConformanceWitness();
  v68 = (*(v94 + 24))(v93, v94);
  v70 = v95;
  (*(v111 + 8))(v92, v93);
  if (v70)
  {
    v81 = &v118;
    goto LABEL_39;
  }

  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v96 = sub_1ABF237F4();
  sub_1ABA7AA24(v96, qword_1ED871B40);
  v73 = *(v62 + 16);
  v86 = &v117;
LABEL_45:
  v74 = *(v86 - 32);
  v73(v74, v116, v65);
LABEL_46:
  v55 = sub_1ABF237D4();
  v56 = sub_1ABF24664();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v113 = v116;
    *v57 = 136642819;
    v73(v104, v74, v65);
    v58 = sub_1ABF23C94();
    v60 = v87;
    (*(v62 + 8))(v74, v65);
LABEL_48:
    v88 = sub_1ABADD6D8(v58, v60, &v113);

    *(v57 + 4) = v88;
    _os_log_impl(&dword_1ABA78000, v55, v56, "Failed to parse %{sensitive}s.", v57, 0xCu);
    v89 = v116;
    sub_1ABA84B54(v116);
    MEMORY[0x1AC5AB8B0](v89, -1, -1);
    MEMORY[0x1AC5AB8B0](v57, -1, -1);

    return;
  }

  (*(v62 + 8))(v74, v65);
}

uint64_t CustomGraphVisualIdentifierRelationship.init(subentityId:all_visualIdentifier:all_associationReason:all_suggestedName:all_suggestedRelationshipToDeviceOwner:)()
{
  sub_1ABA9FE20();
  v8 = sub_1ABD1B584(v5, v6, v7);
  v4[2] = v3;
  v4[3] = v8;
  v4[4] = v9;
  v10 = sub_1ABB2B834(v2);
  v4[5] = v2;
  v4[6] = v10;
  v4[7] = v11;
  v12 = sub_1ABB2B834(v1);
  v4[8] = v1;
  v4[9] = v12;
  v4[10] = v13;
  result = sub_1ABB2B834(v0);
  v4[11] = v0;
  v4[12] = result;
  v4[13] = v15;
  return result;
}

uint64_t sub_1ABD0795C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001ABF86E60 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001ABF8D780 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574736567677573 && a2 == 0xED0000656D614E64;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000022 && 0x80000001ABF8D7A0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

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

unint64_t sub_1ABD07B10(char a1)
{
  result = 0x7469746E65627573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6574736567677573;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABD07BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABD07C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD0795C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD07C50(uint64_t a1)
{
  v2 = sub_1ABD0E764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD07C8C(uint64_t a1)
{
  v2 = sub_1ABD0E764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1ABD07CF0@<D0>(__n128 *a1@<X8>)
{
  memcpy(v4, v1, sizeof(v4));
  *&result = _s20IntelligencePlatform31CustomGraphAttendeeRelationshipV11subentityIdAA19SubentityIdentifierVvg_0(a1).n128_u64[0];
  return result;
}

void CustomGraphVisualIdentifierRelationship.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4D7208, &qword_1ABF510D0);
  sub_1ABA96D00();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  sub_1ABD1B2D8();
  sub_1ABD1BF50();
  sub_1ABA8A074(v4);
  sub_1ABD0E764();
  sub_1ABF252E4();
  sub_1ABD0E36C();
  sub_1ABA80C2C();
  sub_1ABF24F84();
  if (!v1)
  {
    sub_1ABD1AC6C(v9, v8);

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABA80C2C();
    sub_1ABA9E3E8();
    sub_1ABF24F84();
    if (!v10)
    {
      sub_1ABAA1210();

      sub_1ABD1B178();

      sub_1ABD1ABF4();
      sub_1ABA9E3E8();
      sub_1ABF24F84();
      sub_1ABAA1210();

      sub_1ABAB5EC8();
      sub_1ABD1AF94();

      sub_1ABD1ABF4();
      sub_1ABA9E3E8();
      sub_1ABF24F84();
      sub_1ABD1AFA0();

      sub_1ABA8B908();

      sub_1ABD1ABF4();
      sub_1ABA9E3E8();
      sub_1ABF24F84();
    }

    sub_1ABAA1210();
  }

  (*(v6 + 8))(v2, v0);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphVisualIdentifierRelationship.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D7218, &qword_1ABF510D8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA8176C();
  v7 = v2[3];
  v8 = sub_1ABA954F0();
  sub_1ABA88DCC(v8, v9);
  sub_1ABD0E764();
  sub_1ABD1B684();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABAB5E80();
    sub_1ABA84B54(v2);
    if (v7)
    {

      if ((v2 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (!v2)
    {
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  sub_1ABD0E3C0();
  v10 = v5;
  sub_1ABA827AC();
  sub_1ABD1B51C(v11, v12, v13, v14);
  v43 = v46;
  v15 = sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABD0A2D4();
  v16 = sub_1ABA9F8E0();
  sub_1ABD1B51C(v16, v17, v18, v19);
  v40 = v47;
  v41 = v46;
  v42 = v48;
  v20 = sub_1ABA9F8E0();
  sub_1ABD1B51C(v20, v21, v22, v23);
  v38 = v48;
  v39 = v46;
  LOBYTE(v45[0]) = 3;
  v24 = sub_1ABA9F8E0();
  sub_1ABD1B51C(v24, v25, v26, v27);
  v35 = v47;
  v36 = v47;
  v28 = v47;
  v37 = v46;
  v29 = v48;
  sub_1ABA8B908();
  sub_1ABD1B66C();
  sub_1ABD1B51C(v15, v30, v10, v15);
  v31 = sub_1ABA9F1EC();
  v32(v31, v10);
  v44 = v60;
  v33 = v62;
  v34 = v61;
  v45[0] = v43;
  v45[1] = v40;
  v45[2] = v41;
  v45[3] = v36;
  v45[4] = v42;
  v45[5] = v39;
  v45[6] = v35;
  v45[7] = v38;
  v45[8] = v37;
  v45[9] = v28;
  v45[10] = v29;
  v45[11] = v60;
  v45[12] = v61;
  v45[13] = v62;
  memcpy(v4, v45, 0x70uLL);
  sub_1ABD0E7B8(v45, &v46);
  sub_1ABA84B54(v2);
  v46 = v43;
  v47 = v40;
  v48 = v41;
  v49 = v36;
  v50 = v42;
  v51 = v39;
  v52 = v35;
  v53 = v38;
  v54 = v37;
  v55 = v28;
  v56 = v29;
  v57 = v44;
  v58 = v34;
  v59 = v33;
  sub_1ABD0E7F0(&v46);
LABEL_8:
  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void static CustomGraphSoftwareRelationship.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5B8), *(_Records_GDEntityClass_records + 0x5C0), *(_Records_GDEntityClass_records + 0x5C8), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABD08410@<X0>(uint64_t (*a1)(_OWORD *)@<X0>, uint64_t (*a2)(__int128 *)@<X2>, uint64_t a3@<X4>, _OWORD *a4@<X8>)
{
  v30[0] = *a3;
  result = a1(v30);
  if (!v4)
  {
    v9 = *(a3 + 16);
    v10 = *(v9 + 16);
    for (i = (v9 + 32); v10; --v10)
    {
      v12 = *i;
      v13 = i[1];
      v14 = i[2];
      *&v31[9] = *(i + 41);
      v30[1] = v13;
      *v31 = v14;
      v30[0] = v12;
      v15 = i[1];
      v27 = *i;
      v28 = v15;
      v29[0] = i[2];
      *(v29 + 9) = *(i + 41);
      sub_1ABD1927C(v30, v24);
      v16 = a2(&v27);
      result = sub_1ABD1B5AC(v16, v17, v18, v19, v20, v21, v22, v23, v24[0], v24[1], v24[2], v25, v26, v27, v28, v29[0]);
      i += 4;
    }

    *a4 = *a3;
  }

  return result;
}

void sub_1ABD08514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1ABA7BCA8();
  v52 = v23;
  v25 = v24;
  sub_1ABD1BE10(v26, v27, v28, v29);
  v51 = *(a21 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7E5C0();
  v36 = *(a21 + 24);
  v36(&v53, v25, a21);
  v37 = sub_1ABD1BA14();
  v38(v37);
  if (v22)
  {
LABEL_10:
    sub_1ABA8869C();
    sub_1ABA7BC90();
    return;
  }

  v50 = v34;
  v39 = (*(v51 + 32))(v25);
  v40 = sub_1ABF240E4();
  sub_1ABD1BDC4(v40);
  v41 = a21;
  while (1)
  {
    v42 = sub_1ABF24194();
    v43 = v53;
    if (v53 == v42)
    {

      (v36)(v25, v41);
      goto LABEL_10;
    }

    v44 = v41;
    v45 = sub_1ABF24174();
    sub_1ABF24124();
    if (v45)
    {
      (*(v32 + 16))(v21, v39 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v43, AssociatedTypeWitness);
      goto LABEL_6;
    }

    sub_1ABA7ABE4();
    v48 = sub_1ABF24B04();
    if (v50 != 8)
    {
      break;
    }

    sub_1ABD1BAF8(v48);
    v49(v21);
    swift_unknownObjectRelease();
LABEL_6:
    v41 = v44;
    sub_1ABF241D4();
    v52(v21);
    v46 = sub_1ABD1BFA8();
    v47(v46);
  }

  __break(1u);
}

double sub_1ABD08790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1ABD1B3D0();
  sub_1ABA7D028();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x1E69E7CC0];

  v7(v17, a4, 0, a5, v10);

  if (v6)
  {
  }

  else
  {
    v13 = v17[0];
    v14 = v17[1];
    sub_1ABD1B0E8(v11, v17);
    sub_1ABD1BE24();
    if (v15)
    {
      v16 = *(v10 + 48);

      *v5 = v13;
      *(v5 + 8) = v14;
      *(v5 + 16) = v10 + 16;
      *(v5 + 24) = v16;
      *(v5 + 32) = 0;
    }

    else
    {

      *(v5 + 32) = 0;
      result = 0.0;
      *v5 = 0u;
      *(v5 + 16) = 0u;
    }
  }

  return result;
}

void sub_1ABD08894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_1ABD1C088();
  a33 = v37;
  a34 = v38;
  a24 = v36;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v66 = v47;
  v62 = v48;
  v64 = a35;
  v65 = a36;
  sub_1ABA7D028();
  v49 = swift_allocObject();
  v63 = type metadata accessor for TypedEntityIdentifier(0, v46, *(v42 + 8), v50);
  *(v49 + 16) = sub_1ABF24154();
  sub_1ABAA267C();
  v51 = swift_allocObject();
  v51[2] = v46;
  v51[3] = v44;
  v51[4] = v42;
  v51[5] = v40;
  sub_1ABAB10A4();
  v52 = swift_allocObject();
  v52[2] = v46;
  v52[3] = v44;
  v52[4] = v42;
  v52[5] = v40;
  v52[6] = v49;

  v53 = a24;
  v66(&a20, v64, v51, v65, v52);
  if (v53)
  {
  }

  else
  {

    v56 = a20;
    v55 = a21;
    sub_1ABAAA634(v54, &a20);
    a17 = *(v49 + 16);
    v57 = sub_1ABF241F4();
    sub_1ABA887D0(v57);
    if (sub_1ABF24574())
    {

      *(v62 + 32) = 0;
      *v62 = 0u;
      *(v62 + 16) = 0u;
    }

    else
    {
      a15 = 0;
      a16 = 1;

      OneOf.init(_:potentiallyPreferred:)(v58, &a15, v63, &a17);

      v59 = a17;
      v60 = a18;
      v61 = a19;
      *v62 = v56;
      *(v62 + 8) = v55;
      *(v62 + 16) = v59;
      *(v62 + 24) = v60;
      *(v62 + 32) = v61;
    }
  }

  sub_1ABD1C06C();
}

void sub_1ABD08A58(__n128 a1, uint64_t a2, unint64_t a3)
{
  EntityClass.init(intValue:)(HIBYTE(a3), &v24);
  v3 = *(&v24 + 1);
  if (!*(&v24 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v9 = sub_1ABF237F4();
    sub_1ABA7AA24(v9, qword_1ED871B40);
    v10 = sub_1ABF237D4();
    v11 = sub_1ABF24674();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1ABA78000, v10, v11, "entityClass is nil in CustomGraphSoftwareRelationship init", v12, 2u);
      MEMORY[0x1AC5AB8B0](v12, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v13 = 2;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 33) = 0u;
    *(v13 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v4 = v24;
    v5 = v25;
    v6 = v26;
    v7 = v27;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5B8), *(_Records_GDEntityClass_records + 0x5C0), *(_Records_GDEntityClass_records + 0x5C8), v37);
    v8 = v38 == v5 && v6 == v39;
    if (v8 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v37);
LABEL_9:
      sub_1ABAA8FA8(v4, v3, v5, v6);
      return;
    }

    *&v24 = v4;
    *(&v24 + 1) = v3;
    v25 = v5;
    v26 = v6;
    LOBYTE(v27) = v7;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v37, v14, v15, v16, v17, v18, v19, v20, v24, SBYTE8(v24), v25, v26, v27, v28, v29, v30, v31, v32, v33, *(&v33 + 1), v34, v35, v36, v37[0], v37[1], v38, v39, v40, v41, v42);
    v22 = v21;

    sub_1ABA88934(v37);
    if (v22)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5B8), *(_Records_GDEntityClass_records + 0x5C0), *(_Records_GDEntityClass_records + 0x5C8), &v33);
      v24 = v33;
      v25 = v34;
      v26 = v35;
      LOBYTE(v27) = v36;
      v28 = v4;
      v29 = v3;
      v30 = v5;
      v31 = v6;
      LOBYTE(v32) = v7;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v24, v23);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABD08CF0(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t), uint64_t a8)
{
  EntityClass.init(intValue:)(*(a1 + 15), &v51);
  v12 = *(&v51 + 1);
  if (*(&v51 + 1))
  {
    v13 = v51;
    v14 = v52;
    v15 = v53;
    HIDWORD(v40) = v54;
    v16 = a7(0, a2, a5);
    static GraphObjectBase.entityClass.getter(v16, a8);
    v17 = v61 == v14 && v15 == v62;
    if (v17 || (sub_1ABAB603C(), (sub_1ABF25054() & 1) != 0))
    {
      sub_1ABA88934(v60);
LABEL_8:
      v18 = sub_1ABD1AEFC();
      sub_1ABAA8FA8(v18, v19, v20, v21);
      return;
    }

    *&v51 = v13;
    *(&v51 + 1) = v12;
    v52 = v14;
    v53 = v15;
    LOBYTE(v54) = BYTE4(v40);
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v60, v29, v30, v31, v32, v33, v34, v35, v40, v42, v44, v45, v47, v49, v51, *(&v51 + 1), v52, v53, v54, v55, v56, v57, v58, v59, v60[0], v60[1], v61, v62, v63, v64);
    v37 = v36;

    sub_1ABA88934(v60);
    if (v37)
    {
      goto LABEL_8;
    }

    static GraphObjectBase.entityClass.getter(v16, a8);
    v51 = v43;
    v52 = v46;
    v53 = v48;
    LOBYTE(v54) = v50;
    *(&v54 + 1) = *v65;
    HIDWORD(v54) = *&v65[3];
    v55 = v13;
    v56 = v12;
    v57 = v14;
    v58 = v15;
    LOBYTE(v59) = v41;
    v38 = sub_1ABC7B1C0();
    sub_1ABA7BD00(&type metadata for GraphObjectConstructionError, v38);
    sub_1ABC81B08(&v51, v39);
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178(&qword_1ED871B38);
    }

    v22 = sub_1ABF237F4();
    sub_1ABAA2318(v22, qword_1ED871B40);
    v23 = sub_1ABF237D4();
    v24 = sub_1ABF24674();
    if (sub_1ABA9E624(v24))
    {
      v25 = sub_1ABA88598();
      sub_1ABA96044(v25);
      sub_1ABD1B2B4(&dword_1ABA78000);
      sub_1ABA90C1C();
    }

    v26 = sub_1ABB6DA08();
    v27 = sub_1ABA7BD00(&type metadata for BaseEntityConstructionError, v26);
    sub_1ABA8A3DC(v27, v28);
  }

  swift_willThrow();
}

void sub_1ABD091A8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v46 = a3;
  v47 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v42 - v12;
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = v42 - v18;
  v20 = *(v15 + 24);
  v50 = a1;
  v20(v54, a4, v15, v17);
  v42[1] = a2;
  v43 = v10;
  v44 = v13;
  v49 = v5;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    return;
  }

  v22 = v54[0];
  v21 = v54[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1764], *(_Records_GDEntityPredicate_records + 442), *(_Records_GDEntityPredicate_records + 443), &v52);
  if (v52 == v22 && v53 == v21)
  {
  }

  else
  {
    v24 = sub_1ABF25054();

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  (*(v15 + 32))(a4, v15);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v52, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v48 + 8))(v19, AssociatedTypeWitness);
  if (v53)
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v26 = sub_1ABF237F4();
    sub_1ABA7AA24(v26, qword_1ED871B40);
    v27 = v47;
    v28 = *(v47 + 16);
    v29 = v44;
    v28(v44, v50, a4);
    v30 = sub_1ABF237D4();
    v31 = sub_1ABF24664();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = v50;
      *v32 = 136642819;
      LODWORD(v48) = v31;
      v28(v43, v29, a4);
      v33 = sub_1ABF23C94();
      v35 = v34;
      (*(v27 + 8))(v29, a4);
      v36 = sub_1ABADD6D8(v33, v35, &v52);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1ABA78000, v30, v48, "Failed to parse %{sensitive}s.", v32, 0xCu);
      v37 = v50;
      sub_1ABA84B54(v50);
      MEMORY[0x1AC5AB8B0](v37, -1, -1);
      MEMORY[0x1AC5AB8B0](v32, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v29, a4);
    }
  }

  else
  {
    v38 = v46;
    v39 = *(v45 + 8);
    v40 = v49;
    TypedEntityIdentifier.init(untyped:)(&v52, v46, v39, &v55);
    if (!v40)
    {
      v51 = v55;
      swift_beginAccess();
      type metadata accessor for TypedEntityIdentifier(255, v38, v39, v41);
      sub_1ABF241F4();
      sub_1ABF241A4();
      swift_endAccess();
    }
  }
}

void *_s20IntelligencePlatform27CustomGraphSongRelationshipV11subentityId08all_songH0ACyxGAA19SubentityIdentifierV_SayAA011TypedEntityL0VyxGGtcfC_0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a1;
  v11 = 0;
  v12 = 1;
  v7 = type metadata accessor for TypedEntityIdentifier(0, a3, *(a4 + 8), a4);
  result = OneOf.init(_:potentiallyPreferred:)(a2, &v11, v7, v13);
  v9 = v13[1];
  v10 = v14;
  *(a5 + 16) = v13[0];
  *(a5 + 24) = v9;
  *(a5 + 32) = v10;
  return result;
}

uint64_t sub_1ABD09744(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E65627573 && a2 == 0xEB00000000644979;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572617774666F73 && a2 == 0xEA00000000006449)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABD09818(char a1)
{
  if (a1)
  {
    return 0x6572617774666F73;
  }

  else
  {
    return 0x7469746E65627573;
  }
}

uint64_t sub_1ABD0985C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, void, void, void))
{
  sub_1ABF25234();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1ABF25294();
}

uint64_t sub_1ABD098C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD09744(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD09924(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD09978(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABD099F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return GraphObjectRelationship.id.getter(a1, WitnessTable);
}

void sub_1ABD09A98()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v14 = *(v6 + 24);
  v15 = *(v6 + 16);
  v7(255, v15);
  swift_getWitnessTable();
  sub_1ABF24FC4();
  sub_1ABA96D00();
  v16 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8176C();
  sub_1ABA88DCC(v5, v5[3]);
  sub_1ABA96C48();
  sub_1ABF252E4();
  sub_1ABD0E36C();
  sub_1ABA80C2C();
  sub_1ABF24F84();
  if (!v0)
  {
    sub_1ABA8B6EC();
    type metadata accessor for TypedEntityIdentifier(255, v15, *(v14 + 8), v10);
    v11 = sub_1ABA82858();
    type metadata accessor for OneOf(v11, v1, v12, v13);
    sub_1ABD1BA80();

    sub_1ABA8A1E0();
    swift_getWitnessTable();
    sub_1ABA9F6E4();
    swift_getWitnessTable();
    sub_1ABA9F2E0();
    swift_getWitnessTable();
    sub_1ABAB56F0();
    sub_1ABA81934();
    sub_1ABF24F84();
    sub_1ABD1AFA0();
  }

  (*(v16 + 8))(v1, v3);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

unint64_t sub_1ABD09D0C()
{
  result = qword_1EB4D6588;
  if (!qword_1EB4D6588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6588);
  }

  return result;
}

unint64_t sub_1ABD09D60()
{
  result = qword_1EB4D65A8;
  if (!qword_1EB4D65A8)
  {
    sub_1ABAE2850(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABD09DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D65A8);
  }

  return result;
}

unint64_t sub_1ABD09DE4()
{
  result = qword_1EB4D65B0;
  if (!qword_1EB4D65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D65B0);
  }

  return result;
}

unint64_t sub_1ABD09E38()
{
  result = qword_1EB4D65C0;
  if (!qword_1EB4D65C0)
  {
    sub_1ABAE2850(&qword_1EB4D65B8, &qword_1ABF50B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D65C0);
  }

  return result;
}

unint64_t sub_1ABD09EBC(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABD09F00()
{
  result = qword_1EB4D65E8;
  if (!qword_1EB4D65E8)
  {
    sub_1ABAE2850(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD1044C(&unk_1EB4D65F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D65E8);
  }

  return result;
}

unint64_t sub_1ABD09FB0()
{
  result = qword_1EB4D6600;
  if (!qword_1EB4D6600)
  {
    sub_1ABAE2850(&qword_1EB4D65F8, &dword_1ABF50B60);
    sub_1ABD1044C(&unk_1EB4D6608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6600);
  }

  return result;
}

unint64_t sub_1ABD0A060()
{
  result = qword_1EB4D6618;
  if (!qword_1EB4D6618)
  {
    sub_1ABAE2850(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD1044C(&unk_1EB4D6620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6618);
  }

  return result;
}

unint64_t sub_1ABD0A110()
{
  result = qword_1EB4D6630;
  if (!qword_1EB4D6630)
  {
    sub_1ABAE2850(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD1044C(&unk_1EB4D6638);
    sub_1ABD1044C(&unk_1EB4D6648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6630);
  }

  return result;
}

unint64_t sub_1ABD0A1FC()
{
  result = qword_1EB4D6660;
  if (!qword_1EB4D6660)
  {
    sub_1ABAE2850(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABD0A280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6660);
  }

  return result;
}

unint64_t sub_1ABD0A280()
{
  result = qword_1EB4D6668;
  if (!qword_1EB4D6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6668);
  }

  return result;
}

unint64_t sub_1ABD0A2D4()
{
  result = qword_1EB4D6670;
  if (!qword_1EB4D6670)
  {
    sub_1ABAE2850(&qword_1EB4D65B8, &qword_1ABF50B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6670);
  }

  return result;
}

unint64_t sub_1ABD0A358(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABD09EBC(&unk_1EB4D65D0);
    sub_1ABA8B588();
    sub_1ABD09EBC(v3);
    result = sub_1ABD1C0A4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABD0A408()
{
  result = qword_1EB4D6680;
  if (!qword_1EB4D6680)
  {
    sub_1ABAE2850(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD1044C(&unk_1EB4D6688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6680);
  }

  return result;
}

unint64_t sub_1ABD0A4B8()
{
  result = qword_1EB4D6690;
  if (!qword_1EB4D6690)
  {
    sub_1ABAE2850(&qword_1EB4D65F8, &dword_1ABF50B60);
    sub_1ABD1044C(&unk_1EB4D6698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6690);
  }

  return result;
}

unint64_t sub_1ABD0A568()
{
  result = qword_1EB4D66A0;
  if (!qword_1EB4D66A0)
  {
    sub_1ABAE2850(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD1044C(&unk_1EB4D66A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D66A0);
  }

  return result;
}

unint64_t sub_1ABD0A618()
{
  result = qword_1EB4D66B0;
  if (!qword_1EB4D66B0)
  {
    sub_1ABAE2850(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD1044C(&unk_1EB4D6638);
    sub_1ABD1044C(&unk_1EB4D6648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D66B0);
  }

  return result;
}

unint64_t sub_1ABD0A704()
{
  result = qword_1EB4D66C0;
  if (!qword_1EB4D66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D66C0);
  }

  return result;
}

unint64_t sub_1ABD0A758()
{
  result = qword_1EB4D66E0;
  if (!qword_1EB4D66E0)
  {
    sub_1ABAE2850(&qword_1EB4D66D8, &qword_1ABF50BA8);
    sub_1ABD1044C(&unk_1EB4D66E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D66E0);
  }

  return result;
}

unint64_t sub_1ABD0A808()
{
  result = qword_1EB4D66F8;
  if (!qword_1EB4D66F8)
  {
    sub_1ABAE2850(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD1044C(&unk_1EB4D6700);
    sub_1ABD1044C(&unk_1EB4D6710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D66F8);
  }

  return result;
}

unint64_t sub_1ABD0A8F4()
{
  result = qword_1EB4D6720;
  if (!qword_1EB4D6720)
  {
    sub_1ABAE2850(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A980();
    sub_1ABD0A9D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6720);
  }

  return result;
}

unint64_t sub_1ABD0A980()
{
  result = qword_1EB4D6728;
  if (!qword_1EB4D6728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6728);
  }

  return result;
}

unint64_t sub_1ABD0A9D4()
{
  result = qword_1EB4D6730;
  if (!qword_1EB4D6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6730);
  }

  return result;
}

unint64_t sub_1ABD0AA28()
{
  result = qword_1EB4D6740;
  if (!qword_1EB4D6740)
  {
    sub_1ABAE2850(&qword_1EB4D6738, &dword_1ABF50BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6740);
  }

  return result;
}

unint64_t sub_1ABD0AAAC()
{
  result = qword_1EB4D6758;
  if (!qword_1EB4D6758)
  {
    sub_1ABAE2850(&qword_1EB4D66D8, &qword_1ABF50BA8);
    sub_1ABD1044C(&unk_1EB4D6760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6758);
  }

  return result;
}

unint64_t sub_1ABD0AB5C()
{
  result = qword_1EB4D6768;
  if (!qword_1EB4D6768)
  {
    sub_1ABAE2850(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD1044C(&unk_1EB4D6700);
    sub_1ABD1044C(&unk_1EB4D6710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6768);
  }

  return result;
}

unint64_t sub_1ABD0AC48()
{
  result = qword_1EB4D6770;
  if (!qword_1EB4D6770)
  {
    sub_1ABAE2850(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A980();
    sub_1ABD0A9D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6770);
  }

  return result;
}

unint64_t sub_1ABD0ACD4()
{
  result = qword_1EB4D6778;
  if (!qword_1EB4D6778)
  {
    sub_1ABAE2850(&qword_1EB4D6738, &dword_1ABF50BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6778);
  }

  return result;
}

uint64_t sub_1ABD0AD58()
{
  sub_1ABA81488();
  v1(0);
  sub_1ABA7BBB0();
  v2 = sub_1ABA7D000();
  v3(v2);
  return v0;
}

uint64_t sub_1ABD0ADB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1ABA7BBB0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1ABD0AE08()
{
  result = qword_1EB4D6788;
  if (!qword_1EB4D6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6788);
  }

  return result;
}

unint64_t sub_1ABD0AE5C()
{
  result = qword_1EB4D67A8;
  if (!qword_1EB4D67A8)
  {
    sub_1ABAE2850(&qword_1EB4D67A0, &unk_1ABF50BF0);
    sub_1ABD1044C(&unk_1EB4D67B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D67A8);
  }

  return result;
}

unint64_t sub_1ABD0AF0C()
{
  result = qword_1EB4D67C8;
  if (!qword_1EB4D67C8)
  {
    sub_1ABAE2850(&qword_1EB4D67A0, &unk_1ABF50BF0);
    sub_1ABD1044C(&unk_1EB4D67D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D67C8);
  }

  return result;
}

unint64_t sub_1ABD0AFBC()
{
  result = qword_1EB4D67E0;
  if (!qword_1EB4D67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D67E0);
  }

  return result;
}

unint64_t sub_1ABD0B010()
{
  result = qword_1EB4D6800;
  if (!qword_1EB4D6800)
  {
    sub_1ABAE2850(&qword_1EB4D67F8, &qword_1ABF50C18);
    sub_1ABD1044C(&unk_1EB4D6808);
    sub_1ABD1044C(&unk_1EB4D6818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6800);
  }

  return result;
}

unint64_t sub_1ABD0B0FC()
{
  result = qword_1EB4D6828;
  if (!qword_1EB4D6828)
  {
    sub_1ABAE2850(&qword_1EB4D6820, &qword_1ABF50C28);
    sub_1ABD0B188();
    sub_1ABD0B1DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6828);
  }

  return result;
}

unint64_t sub_1ABD0B188()
{
  result = qword_1EB4D6830;
  if (!qword_1EB4D6830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6830);
  }

  return result;
}

unint64_t sub_1ABD0B1DC()
{
  result = qword_1EB4D6838;
  if (!qword_1EB4D6838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6838);
  }

  return result;
}

unint64_t sub_1ABD0B230()
{
  result = qword_1EB4D6850;
  if (!qword_1EB4D6850)
  {
    sub_1ABAE2850(&qword_1EB4D67F8, &qword_1ABF50C18);
    sub_1ABD1044C(&unk_1EB4D6808);
    sub_1ABD1044C(&unk_1EB4D6818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6850);
  }

  return result;
}

unint64_t sub_1ABD0B31C()
{
  result = qword_1EB4D6858;
  if (!qword_1EB4D6858)
  {
    sub_1ABAE2850(&qword_1EB4D6820, &qword_1ABF50C28);
    sub_1ABD0B188();
    sub_1ABD0B1DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6858);
  }

  return result;
}

unint64_t sub_1ABD0B3A8()
{
  result = qword_1EB4D6868;
  if (!qword_1EB4D6868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6868);
  }

  return result;
}

unint64_t sub_1ABD0B3FC()
{
  result = qword_1EB4D6898;
  if (!qword_1EB4D6898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6898);
  }

  return result;
}

unint64_t sub_1ABD0B450()
{
  result = qword_1EB4D68C8;
  if (!qword_1EB4D68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D68C8);
  }

  return result;
}

unint64_t sub_1ABD0B4A4()
{
  result = qword_1EB4D68F8;
  if (!qword_1EB4D68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D68F8);
  }

  return result;
}

unint64_t sub_1ABD0B4F8()
{
  result = qword_1EB4D6928;
  if (!qword_1EB4D6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6928);
  }

  return result;
}

unint64_t sub_1ABD0B54C()
{
  result = qword_1EB4D6958;
  if (!qword_1EB4D6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6958);
  }

  return result;
}

unint64_t sub_1ABD0B5A0()
{
  result = qword_1EB4D6988;
  if (!qword_1EB4D6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6988);
  }

  return result;
}

unint64_t sub_1ABD0B5F4()
{
  result = qword_1EB4D69B8;
  if (!qword_1EB4D69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D69B8);
  }

  return result;
}

unint64_t sub_1ABD0B648()
{
  result = qword_1EB4D69E8;
  if (!qword_1EB4D69E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D69E8);
  }

  return result;
}

unint64_t sub_1ABD0B69C()
{
  result = qword_1EB4D6A18;
  if (!qword_1EB4D6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6A18);
  }

  return result;
}

unint64_t sub_1ABD0B6F0()
{
  result = qword_1EB4D6A48;
  if (!qword_1EB4D6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6A48);
  }

  return result;
}

unint64_t sub_1ABD0B744()
{
  result = qword_1EB4D6A78;
  if (!qword_1EB4D6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6A78);
  }

  return result;
}

unint64_t sub_1ABD0B798()
{
  result = qword_1EB4D6A98;
  if (!qword_1EB4D6A98)
  {
    sub_1ABAE2850(&qword_1EB4D6A90, &unk_1ABF50D50);
    sub_1ABD1044C(&unk_1EB4D6AA0);
    sub_1ABD1044C(&unk_1EB4D6AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6A98);
  }

  return result;
}

unint64_t sub_1ABD0B884()
{
  result = qword_1EB4D6AC0;
  if (!qword_1EB4D6AC0)
  {
    sub_1ABAE2850(&qword_1EB4D6A90, &unk_1ABF50D50);
    sub_1ABD1044C(&unk_1EB4D6AA0);
    sub_1ABD1044C(&unk_1EB4D6AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6AC0);
  }

  return result;
}

unint64_t sub_1ABD0B970()
{
  result = qword_1EB4D6AD0;
  if (!qword_1EB4D6AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6AD0);
  }

  return result;
}

unint64_t sub_1ABD0B9C4()
{
  result = qword_1EB4D6B00;
  if (!qword_1EB4D6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6B00);
  }

  return result;
}

unint64_t sub_1ABD0BA18()
{
  result = qword_1EB4D6B30;
  if (!qword_1EB4D6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6B30);
  }

  return result;
}

unint64_t sub_1ABD0BA6C()
{
  result = qword_1EB4D6B60;
  if (!qword_1EB4D6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6B60);
  }

  return result;
}

unint64_t sub_1ABD0BAC0()
{
  result = qword_1EB4D6B90;
  if (!qword_1EB4D6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6B90);
  }

  return result;
}

unint64_t sub_1ABD0BB14()
{
  result = qword_1EB4D6BC0;
  if (!qword_1EB4D6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6BC0);
  }

  return result;
}

unint64_t sub_1ABD0BB68()
{
  result = qword_1EB4D6BF0;
  if (!qword_1EB4D6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6BF0);
  }

  return result;
}

unint64_t sub_1ABD0BBBC()
{
  result = qword_1EB4D6C20;
  if (!qword_1EB4D6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6C20);
  }

  return result;
}

unint64_t sub_1ABD0BC10()
{
  result = qword_1EB4D6C50;
  if (!qword_1EB4D6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6C50);
  }

  return result;
}

unint64_t sub_1ABD0BC64()
{
  result = qword_1EB4D6C80;
  if (!qword_1EB4D6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6C80);
  }

  return result;
}

unint64_t sub_1ABD0BCB8()
{
  result = qword_1EB4D6CB0;
  if (!qword_1EB4D6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6CB0);
  }

  return result;
}

unint64_t sub_1ABD0BD0C()
{
  result = qword_1EB4D6CE0;
  if (!qword_1EB4D6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6CE0);
  }

  return result;
}

unint64_t sub_1ABD0BD60()
{
  result = qword_1EB4D6D10;
  if (!qword_1EB4D6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6D10);
  }

  return result;
}

unint64_t sub_1ABD0BDB4()
{
  result = qword_1EB4D6D40;
  if (!qword_1EB4D6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6D40);
  }

  return result;
}

unint64_t sub_1ABD0BE08()
{
  result = qword_1EB4D6D70;
  if (!qword_1EB4D6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6D70);
  }

  return result;
}

unint64_t sub_1ABD0BE5C()
{
  result = qword_1EB4D6DA0;
  if (!qword_1EB4D6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6DA0);
  }

  return result;
}

unint64_t sub_1ABD0BEB0()
{
  result = qword_1EB4D6DD0;
  if (!qword_1EB4D6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6DD0);
  }

  return result;
}