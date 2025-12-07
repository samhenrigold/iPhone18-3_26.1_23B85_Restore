uint64_t sub_197428988@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X3>, unsigned int a5@<W4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v14 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a5;
  v31 = a6;
  v32 = a1;
  if (a5)
  {
    if (a5 != 1 || (v21 = a4[3]) == 0)
    {
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197526FB0);
      v34 = a4;
      LOBYTE(v35) = a5;
      sub_19752235C();
      goto LABEL_17;
    }

    v19 = a4[2];

    v22 = *(v7 + 16);
    if (v22)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [a4 storeIdentifier];
    v19 = sub_1975217BC();
    v21 = v20;

    v22 = *(v7 + 16);
    if (v22)
    {
LABEL_3:
      v23 = v22;
      goto LABEL_9;
    }
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_14:

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000005CLL, 0x8000000197527010);
    *&v36 = a4;
    BYTE8(v36) = v33;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v36 = v7;
    type metadata accessor for ModelContext(0);
    sub_19752235C();
    goto LABEL_17;
  }

  v23 = Strong;
LABEL_9:
  swift_beginAccess();
  v25 = *(v23 + 56);

  if (!*(v25 + 16))
  {
    goto LABEL_14;
  }

  v26 = sub_1973F4028(v19, v21);
  if ((v27 & 1) == 0)
  {
    goto LABEL_14;
  }

  v30 = *(*(v25 + 56) + 16 * v26);
  swift_unknownObjectRetain();

  type metadata accessor for DefaultStore(0);
  if (swift_dynamicCastClass())
  {

    v28 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    sub_197404E70(v7 + v28, v17);
    sub_197426B00(v32, a2, a3, a4, v33, v31);
    swift_unknownObjectRelease();
    return sub_197428DBC(v17);
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000048, 0x8000000197527070);
  MEMORY[0x19A8DFF80](0x53746C7561666544, 0xEC00000065726F74);
  MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
  v36 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  sub_19752235C();
LABEL_17:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197428DBC(uint64_t a1)
{
  v2 = type metadata accessor for EditingState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_197428E9C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

uint64_t sub_197428ED4@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v31 = a4;
  v34 = a5;
  v7 = sub_19752119C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v29 - v10;
  swift_getWitnessTable();
  v12 = sub_19752115C();
  v36 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v32 = &v29 - v14;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B900, &qword_19752FBE0);
  v35 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v15);
  v33 = &v29 - v16;
  v42 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B908, &qword_19752FBE8);
  sub_1975211AC();
  sub_1975211BC();
  v37 = a3;
  v38 = v31;
  swift_getKeyPath();
  sub_197520EAC();

  (*(v8 + 8))(v11, v7);
  v17 = sub_19742A020(&qword_1ED7C7260, &qword_1EAF2B900, &qword_19752FBE0, MEMORY[0x1E6968D20]);
  WitnessTable = swift_getWitnessTable();
  v19 = sub_19742A020(&qword_1ED7C7150, &qword_1EAF2B908, &qword_19752FBE8, MEMORY[0x1E69E6508]);
  v20 = sub_197411EBC();
  v21 = v30;
  v42 = v30;
  v43 = v12;
  v44 = v17;
  v45 = WitnessTable;
  v46 = v19;
  v47 = v20;
  v22 = sub_197520F2C();
  v23 = v34;
  v34[3] = v22;
  v24 = sub_19742A068();
  v41 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v39 = v24;
  v40 = v25;
  v23[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1Tm_0(v23);
  v26 = v32;
  v27 = v33;
  sub_197520EBC();
  (*(v36 + 8))(v26, v12);
  return (*(v35 + 8))(v27, v21);
}

__n128 sub_19742930C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_197429338(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B228, &qword_19752D3B8);
  result = sub_1975221AC();
  v5 = result;
  if (*(v3 + 16))
  {
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      sub_197522A5C();
      if (v20)
      {
        if (v20 == 1)
        {
          MEMORY[0x19A8E1190](1);
          sub_1974028EC(v19, 1);
          sub_19752180C();
          sub_19752180C();
          if (v19[3])
          {
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          sub_197522A7C();
          v3 = v28;
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_1974028EC(v19, 2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
        }

        sub_19752180C();
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_1974028EC(v19, 0);
        sub_197521F4C();
      }

      result = sub_197522A9C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_37;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_35;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {

LABEL_35:
    *v2 = v5;
  }

  return result;
}

void sub_1974296EC(void *a1, char a2, unint64_t a3, char a4)
{
  v6 = v4;
  v92 = sub_1975212CC();
  v11 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v91 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v6 + 16);
  v15 = *(*v6 + 24);
  v88 = v6;
  if (v15 > v14 && (a4 & 1) != 0)
  {
    goto LABEL_87;
  }

  if (a4)
  {
    sub_19747E614(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_19747FB74();
      goto LABEL_87;
    }

    sub_197429338(v14 + 1);
  }

  v16 = *v6;
  sub_197522A5C();
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_197452CB8(v94);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_197521F4C();
  }

  v17 = sub_197522A9C();
  v18 = v16 + 56;
  v19 = -1 << *(v16 + 32);
  a3 = v17 & ~v19;
  if ((*(v16 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v93 = ~v19;
    v89 = (v11 + 8);
    v90 = v16 + 56;
    v87 = v16;
    while (1)
    {
      v21 = *(v16 + 48) + 16 * a3;
      v5 = *v21;
      v22 = *(v21 + 8);
      if (!*(v21 + 8))
      {
        if (!a2)
        {
          sub_19744CC00(0, &qword_1ED7C8630, 0x1E69E58C0);
          sub_1974028EC(a1, 0);
          sub_1974028EC(v5, 0);
          v20 = sub_197521F3C();
          sub_1974028C8(a1, 0);
          sub_1974028C8(v5, 0);
          if (v20)
          {
            goto LABEL_94;
          }

          goto LABEL_16;
        }

        type metadata accessor for PersistentIdentifierImplementation();
        v28 = swift_allocObject();
        *(v28 + 40) = 0;
        *(v28 + 48) = 0;
        sub_1974028EC(a1, a2);
        sub_1974028EC(v5, 0);
        v29 = [v5 persistentStore];
        if (v29 && (v30 = v29, v31 = [v29 identifier], v30, v31))
        {
          v32 = sub_1975217BC();
          v34 = v33;
        }

        else
        {
          v32 = 0;
          v34 = 0;
        }

        *(v28 + 16) = v32;
        *(v28 + 24) = v34;
        *(v28 + 33) = [v5 isTemporaryID];
        *(v28 + 32) = 1;
        v52 = [v5 URIRepresentation];
        v53 = v91;
        sub_19752127C();

        v54 = sub_19752123C();
        v56 = v55;
        (*v89)(v53, v92);
        *(v28 + 56) = v54;
        *(v28 + 64) = v56;
        v57 = [v5 entityName];
        v58 = sub_1975217BC();
        v60 = v59;

        *(v28 + 72) = v58;
        *(v28 + 80) = v60;
        v18 = v90;
        v42 = a2;
        goto LABEL_57;
      }

      if (v22 != 1)
      {
        break;
      }

      if (a2 != 1)
      {
        sub_1974028EC(v5, 1);
        sub_1974028EC(a1, a2);
        sub_1974028EC(v5, 1);
        v28 = v5;
        v42 = a2;
        if (!a2)
        {
          goto LABEL_52;
        }

LABEL_57:
        if (v42 == 1)
        {
          sub_1974028EC(a1, 1);
          v45 = a1;
        }

        else
        {
          type metadata accessor for PersistentIdentifierImplementation();
          v45 = swift_allocObject();
          v45[5] = 0;
          v45[6] = 0;
          v45[7] = sub_19750A470();
          v45[8] = v61;
          v45[9] = sub_19750A588();
          v45[10] = v62;
          v45[2] = 0;
          v45[3] = 0;
          *(v45 + 16) = 256;
        }

LABEL_62:
        if ((*(v28 + 56) != v45[7] || *(v28 + 64) != v45[8]) && (sub_19752282C() & 1) == 0 || (*(v28 + 72) != v45[9] || *(v28 + 80) != v45[10]) && (sub_19752282C() & 1) == 0)
        {
LABEL_73:

          goto LABEL_75;
        }

        v72 = *(v28 + 24);
        v73 = v45[3];
        if (!v72)
        {

          if (!v73)
          {
            goto LABEL_92;
          }

LABEL_75:

          v41 = a2;
LABEL_76:
          sub_1974028C8(a1, v41);
          sub_1974028C8(v5, v22);
          goto LABEL_16;
        }

        if (!v73)
        {
          goto LABEL_73;
        }

        if (*(v28 + 16) == v45[2] && v72 == v73)
        {

LABEL_92:

LABEL_93:
          sub_1974028C8(a1, a2);
          sub_1974028C8(v5, v22);
LABEL_94:
          sub_1975229BC();
          __break(1u);
          return;
        }

        v74 = sub_19752282C();

        sub_1974028C8(a1, a2);
        v75 = v5;
        v76 = v22;
        goto LABEL_83;
      }

      v23 = v5[7] == a1[7] && v5[8] == a1[8];
      if (v23 || (sub_19752282C() & 1) != 0)
      {
        v24 = v5[9] == a1[9] && v5[10] == a1[10];
        if (v24 || (sub_19752282C() & 1) != 0)
        {
          v25 = v5[3];
          v26 = a1[3];
          if (v25)
          {
            if (v26)
            {
              v27 = v5[2] == a1[2] && v25 == v26;
              if (v27 || (sub_19752282C() & 1) != 0)
              {
                goto LABEL_94;
              }
            }
          }

          else if (!v26)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_16:
      a3 = (a3 + 1) & v93;
      if (((*(v18 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    if (a2 != 2)
    {
      type metadata accessor for PersistentIdentifierImplementation();
      v28 = swift_allocObject();
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      sub_1974028EC(a1, a2);
      sub_1974028EC(v5, 2);
      *(v28 + 56) = sub_19750A470();
      *(v28 + 64) = v43;
      *(v28 + 72) = sub_19750A588();
      *(v28 + 80) = v44;
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      *(v28 + 32) = 256;
      v42 = a2;
      if (a2)
      {
        goto LABEL_57;
      }

LABEL_52:
      type metadata accessor for PersistentIdentifierImplementation();
      v45 = swift_allocObject();
      v45[5] = 0;
      v45[6] = 0;
      v46 = [a1 persistentStore];
      if (v46 && (v47 = v46, v48 = [v46 identifier], v47, v48))
      {
        v49 = sub_1975217BC();
        v51 = v50;
      }

      else
      {
        v49 = 0;
        v51 = 0;
      }

      v45[2] = v49;
      v45[3] = v51;
      *(v45 + 33) = [a1 isTemporaryID];
      *(v45 + 32) = 1;
      v63 = [a1 URIRepresentation];
      v64 = v91;
      sub_19752127C();

      v65 = sub_19752123C();
      v67 = v66;
      (*v89)(v64, v92);
      v45[7] = v65;
      v45[8] = v67;
      v68 = [a1 entityName];
      v69 = sub_1975217BC();
      v71 = v70;

      v45[9] = v69;
      v45[10] = v71;
      v16 = v87;
      v18 = v90;
      goto LABEL_62;
    }

    sub_1974028EC(a1, 2);
    sub_1974028EC(v5, 2);
    v35 = sub_19750A470();
    v37 = v36;
    if (v35 == sub_19750A470() && v37 == v38)
    {
    }

    else
    {
      v40 = sub_19752282C();

      if ((v40 & 1) == 0)
      {
        v41 = 2;
        LOBYTE(v22) = 2;
        goto LABEL_76;
      }
    }

    v77 = sub_19750A588();
    v79 = v78;
    if (v77 == sub_19750A588() && v79 == v80)
    {
      goto LABEL_90;
    }

    v74 = sub_19752282C();

    sub_1974028C8(a1, 2);
    v75 = v5;
    v76 = 2;
LABEL_83:
    sub_1974028C8(v75, v76);
    if (v74)
    {
      goto LABEL_94;
    }

    goto LABEL_16;
  }

LABEL_87:
  v82 = *v88;
  *(v82 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v83 = *(v82 + 48) + 16 * a3;
  *v83 = a1;
  *(v83 + 8) = a2;
  v84 = *(v82 + 16);
  v85 = __OFADD__(v84, 1);
  v86 = v84 + 1;
  if (v85)
  {
    __break(1u);
LABEL_90:

    a2 = 2;
    LOBYTE(v22) = 2;
    goto LABEL_93;
  }

  *(v82 + 16) = v86;
}

uint64_t sub_19742A020(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19742A068()
{
  result = qword_1ED7C7268;
  if (!qword_1ED7C7268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2B900, &qword_19752FBE0);
    sub_197452A0C(&qword_1ED7C7148, sub_197412644, MEMORY[0x1E69E6510]);
    sub_197452A0C(qword_1ED7C7158, sub_197411E68, MEMORY[0x1E69E64F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7268);
  }

  return result;
}

uint64_t sub_19742A1A4(_OWORD *a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = a1[1];
    v11[0] = *a1;
    v11[1] = v4;
    v5 = a1[3];
    v11[2] = a1[2];
    v11[3] = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    sub_19742A344(v11, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_197520DAC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v10;
  }

  else
  {
    sub_197448384(a1, &qword_1EAF2B650, &qword_19752F178);
    sub_19749F5E4(a2, v11);
    v9 = sub_197520DAC();
    (*(*(v9 - 8) + 8))(a2, v9);
    return sub_197448384(v11, &qword_1EAF2B650, &qword_19752F178);
  }

  return result;
}

uint64_t sub_19742A2E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_19742A344(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_197520DAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1974079DC(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_19747C0E8();
      goto LABEL_7;
    }

    sub_197448648(v18, a3 & 1);
    v24 = sub_1974079DC(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_19742A510(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1975229CC();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + (v15 << 6);

  return sub_19744BDE0(a1, v22);
}

uint64_t sub_19742A510(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_197520DAC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + (a1 << 6));
  v12 = a3[3];
  v11[2] = a3[2];
  v11[3] = v12;
  v13 = a3[1];
  *v11 = *a3;
  v11[1] = v13;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_19742A5D8(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a8;
  v9 = v8;
  v69 = a2;
  v70 = a4;
  v68 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v52 = &v51 - v16;
  v55 = a5;
  v53 = *(a5 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v65 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v66 = &v51 - v21;
  v22 = sub_197521F5C();
  v56 = *(v22 - 8);
  v57 = v22;
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v59 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v29 = &v51 - v28;
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v58 = &v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v64 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v51 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a6;
  v71 = swift_getAssociatedTypeWitness();
  v60 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v38);
  v40 = &v51 - v39;
  v41 = sub_1975218FC();
  v72 = sub_19752230C();
  v67 = sub_19752231C();
  sub_1975222BC();
  (*(v64 + 2))(v37, v61, a3);
  v70 = v40;
  v64 = a3;
  result = sub_1975218EC();
  if (v41 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v41)
  {
    v43 = (v63 + 48);
    v44 = (v63 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_197521F8C();
      result = (*v43)(v29, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v68(v29, v66);
      if (v9)
      {
        (*(v60 + 8))(v70, v71);

        (*(v53 + 32))(v54, v66, v55);
        return (*v44)(v29, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v44)(v29, AssociatedTypeWitness);
      sub_1975222FC();
      if (!--v41)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v45 = v59;
  sub_197521F8C();
  v46 = v45;
  v47 = v63;
  v48 = *(v63 + 48);
  v66 = (v63 + 48);
  v64 = v48;
  if (v48(v45, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v60 + 8))(v70, v71);
    (*(v56 + 8))(v46, v57);
    return v72;
  }

  else
  {
    v63 = *(v47 + 32);
    v49 = (v47 + 8);
    v50 = v52;
    while (1)
    {
      (v63)(v50, v46, AssociatedTypeWitness);
      v68(v50, v65);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v49)(v50, AssociatedTypeWitness);
      sub_1975222FC();
      sub_197521F8C();
      if (v64(v46, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v49)(v50, AssociatedTypeWitness);
    (*(v60 + 8))(v70, v71);

    return (*(v53 + 32))(v54, v65, v55);
  }
}

uint64_t sub_19742AD04(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v13);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0Tm, a1, AssociatedTypeWitness);
  a2(v13);
  if (v6)
  {
    *a6 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm_0(v13);
}

uint64_t sub_19742AE44(void *a1, void *a2, char a3)
{
  v90 = sub_1975212CC();
  v7 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v8);
  v89 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  sub_197522A5C();
  v85 = v3;
  v86 = a1;
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_197452CB8(v94);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_197521F4C();
  }

  v11 = sub_197522A9C();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  v93 = v10 + 56;
  if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_78:
    v76 = v85;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94[0] = *v76;
    sub_1974028EC(a2, a3);
    sub_1974296EC(a2, a3, v13, isUniquelyReferenced_nonNull_native);
    *v76 = v94[0];
    v78 = v86;
    *v86 = a2;
    *(v78 + 8) = a3;
    return 1;
  }

  v92 = ~v12;
  v87 = v10;
  v88 = (v7 + 8);
  while (1)
  {
    v15 = 16 * v13;
    v16 = *(v10 + 48) + 16 * v13;
    v17 = *v16;
    v18 = *(v16 + 8);
    if (!*(v16 + 8))
    {
      if (!a3)
      {
        sub_19744CC00(0, &qword_1ED7C8630, 0x1E69E58C0);
        sub_1974028EC(a2, 0);
        sub_1974028EC(v17, 0);
        v14 = sub_197521F3C();
        sub_1974028C8(a2, 0);
        sub_1974028C8(v17, 0);
        if (v14)
        {
          goto LABEL_83;
        }

        goto LABEL_9;
      }

      v91 = 16 * v13;
      type metadata accessor for PersistentIdentifierImplementation();
      v24 = swift_allocObject();
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      sub_1974028EC(a2, a3);
      sub_1974028EC(v17, 0);
      v25 = [v17 persistentStore];
      if (v25 && (v26 = v25, v27 = [v25 identifier], v26, v27))
      {
        v28 = sub_1975217BC();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      *(v24 + 16) = v28;
      *(v24 + 24) = v30;
      *(v24 + 33) = [v17 isTemporaryID];
      *(v24 + 32) = 1;
      v48 = [v17 URIRepresentation];
      v49 = v89;
      sub_19752127C();

      v50 = sub_19752123C();
      v52 = v51;
      (*v88)(v49, v90);
      *(v24 + 56) = v50;
      *(v24 + 64) = v52;
      v53 = [v17 entityName];
      v54 = sub_1975217BC();
      v56 = v55;

      *(v24 + 72) = v54;
      *(v24 + 80) = v56;
      v38 = a3;
      goto LABEL_50;
    }

    if (v18 == 1)
    {
      break;
    }

    if (a3 != 2)
    {
      v91 = 16 * v13;
      type metadata accessor for PersistentIdentifierImplementation();
      v24 = swift_allocObject();
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      sub_1974028EC(a2, a3);
      sub_1974028EC(v17, 2);
      *(v24 + 56) = sub_19750A470();
      *(v24 + 64) = v39;
      *(v24 + 72) = sub_19750A588();
      *(v24 + 80) = v40;
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = 256;
      v38 = a3;
      if (!a3)
      {
LABEL_45:
        type metadata accessor for PersistentIdentifierImplementation();
        v41 = swift_allocObject();
        v41[5] = 0;
        v41[6] = 0;
        v42 = [a2 persistentStore];
        if (v42 && (v43 = v42, v44 = [v42 identifier], v43, v44))
        {
          v45 = sub_1975217BC();
          v47 = v46;
        }

        else
        {
          v45 = 0;
          v47 = 0;
        }

        v41[2] = v45;
        v41[3] = v47;
        *(v41 + 33) = [a2 isTemporaryID];
        *(v41 + 32) = 1;
        v59 = [a2 URIRepresentation];
        v60 = v89;
        sub_19752127C();

        v61 = sub_19752123C();
        v63 = v62;
        (*v88)(v60, v90);
        v41[7] = v61;
        v41[8] = v63;
        v64 = [a2 entityName];
        v65 = sub_1975217BC();
        v67 = v66;

        v41[9] = v65;
        v41[10] = v67;
        v10 = v87;
        goto LABEL_55;
      }

LABEL_50:
      if (v38 == 1)
      {
        sub_1974028EC(a2, 1);
        v41 = a2;
      }

      else
      {
        type metadata accessor for PersistentIdentifierImplementation();
        v41 = swift_allocObject();
        v41[5] = 0;
        v41[6] = 0;
        v41[7] = sub_19750A470();
        v41[8] = v57;
        v41[9] = sub_19750A588();
        v41[10] = v58;
        v41[2] = 0;
        v41[3] = 0;
        *(v41 + 16) = 256;
      }

LABEL_55:
      if ((*(v24 + 56) != v41[7] || *(v24 + 64) != v41[8]) && (sub_19752282C() & 1) == 0 || (*(v24 + 72) != v41[9] || *(v24 + 80) != v41[10]) && (sub_19752282C() & 1) == 0)
      {
LABEL_67:

        goto LABEL_69;
      }

      v68 = *(v24 + 24);
      v69 = v41[3];
      if (!v68)
      {

        if (!v69)
        {
          goto LABEL_81;
        }

LABEL_69:

        v37 = a3;
LABEL_70:
        sub_1974028C8(a2, v37);
        sub_1974028C8(v17, v18);
        goto LABEL_9;
      }

      if (!v69)
      {
        goto LABEL_67;
      }

      if (*(v24 + 16) == v41[2] && v68 == v69)
      {

LABEL_81:

        v80 = a3;
        v15 = v91;
LABEL_82:
        sub_1974028C8(a2, v80);
        sub_1974028C8(v17, v18);
        goto LABEL_83;
      }

      v70 = sub_19752282C();

      sub_1974028C8(a2, a3);
      sub_1974028C8(v17, v18);
      v15 = v91;
      if (v70)
      {
        goto LABEL_83;
      }

      goto LABEL_9;
    }

    sub_1974028EC(a2, 2);
    sub_1974028EC(v17, 2);
    v31 = sub_19750A470();
    v33 = v32;
    if (v31 == sub_19750A470() && v33 == v34)
    {
    }

    else
    {
      v36 = sub_19752282C();

      if ((v36 & 1) == 0)
      {
        v37 = 2;
        LOBYTE(v18) = 2;
        goto LABEL_70;
      }
    }

    v71 = sub_19750A588();
    v73 = v72;
    if (v71 == sub_19750A588() && v73 == v74)
    {

      v80 = 2;
      LOBYTE(v18) = 2;
      goto LABEL_82;
    }

    v75 = sub_19752282C();

    sub_1974028C8(a2, 2);
    sub_1974028C8(v17, 2);
    if (v75)
    {
      goto LABEL_83;
    }

LABEL_9:
    v13 = (v13 + 1) & v92;
    if (((*(v93 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  if (a3 != 1)
  {
    v91 = 16 * v13;
    sub_1974028EC(v17, 1);
    sub_1974028EC(a2, a3);
    sub_1974028EC(v17, 1);
    v24 = v17;
    v38 = a3;
    if (!a3)
    {
      goto LABEL_45;
    }

    goto LABEL_50;
  }

  v19 = v17[7] == a2[7] && v17[8] == a2[8];
  if (!v19 && (sub_19752282C() & 1) == 0)
  {
    goto LABEL_9;
  }

  v20 = v17[9] == a2[9] && v17[10] == a2[10];
  if (!v20 && (sub_19752282C() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v17[3];
  v22 = a2[3];
  if (!v21)
  {
    if (!v22)
    {
      goto LABEL_83;
    }

    goto LABEL_9;
  }

  if (!v22)
  {
    goto LABEL_9;
  }

  if (v17[2] != a2[2] || v21 != v22)
  {
    if (sub_19752282C())
    {
      goto LABEL_83;
    }

    goto LABEL_9;
  }

  a3 = 1;
LABEL_83:
  v81 = v86;
  sub_1974028C8(a2, a3);
  v82 = *(v10 + 48) + v15;
  v83 = *v82;
  *v81 = *v82;
  v84 = *(v82 + 8);
  *(v81 + 8) = v84;
  sub_1974028EC(v83, v84);
  return 0;
}

uint64_t PersistentModel.setValue<A>(forKey:to:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v10 = *a1;
  v11 = MEMORY[0x1E69E77B0];
  v12 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v12, a3))
  {
    sub_1974258A4(v12, v7);
  }

  v13 = sub_19744C800(a1, v12, v7);
  v14 = a1;
  v15 = v13;
  v55 = v14;
  if (!a2)
  {
    v23 = sub_1974C4BBC(v4, v14, v7, a4);
    if (!v23)
    {
      if (!PersistentModel.modelContext.getter(v12, v7))
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v20 = v23;
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v13;
  v18 = *(*(v10 + *v16 + 8) + 16);
  swift_unknownObjectRetain();
  if (sub_1973FE6F0(v18, a4))
  {
    sub_1974258A4(v18, a4);
  }

  swift_unknownObjectRelease();
  v19 = sub_1974C4BBC(v4, v55, v7, a4);
  if (v19)
  {
    v20 = v19;
    *&v58 = v19;
    v56 = a2;
    swift_unknownObjectRetain();
    v21 = sub_19752173C();
    swift_unknownObjectRelease();
    v15 = v17;
    v11 = MEMORY[0x1E69E77B0];
    if (v21)
    {

      return swift_unknownObjectRelease();
    }

LABEL_11:
    sub_197454D38(v15, v20, v12, *(*(v10 + *v11 + 8) + 16), v7, a4);
    swift_unknownObjectRelease();
    if (!PersistentModel.modelContext.getter(v12, v7))
    {
      if (!a2)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

LABEL_18:

    goto LABEL_19;
  }

  v24 = PersistentModel.modelContext.getter(v12, v7);
  v11 = MEMORY[0x1E69E77B0];
  if (v24)
  {
    goto LABEL_18;
  }

LABEL_15:
  v25 = *(*(v10 + *v11 + 8) + 16);
  if (PersistentModel.modelContext.getter(v25, a4))
  {

    v26 = PersistentModel.modelContext.getter(v25, a4);
    sub_197452A84(v26, v12, v7);

    v53 = 0;
    v54 = 1;
    goto LABEL_37;
  }

LABEL_19:
  if (!PersistentModel.modelContext.getter(v12, v7) || (, !a2))
  {
LABEL_23:
    v28 = PersistentModel.modelContext.getter(v12, v7);
    v54 = v28 == 0;
    if (v28)
    {
    }

    if (a2)
    {
      v29 = PersistentModel.modelContext.getter(*(*(v10 + *v11 + 8) + 16), a4);
      v53 = v29 == 0;
      if (v29)
      {
      }

      v30 = PersistentModel.modelContext.getter(v12, v7);
      if (v30)
      {
        v31 = v30;
        v52 = *(*(v10 + *v11 + 8) + 16);
        v32 = PersistentModel.modelContext.getter(v52, a4);
        if (v32)
        {
          v33 = v32;
          if (v31 != v32)
          {
            goto LABEL_56;
          }
        }
      }
    }

    else
    {
      if (PersistentModel.modelContext.getter(v12, v7))
      {
      }

      v53 = 0;
    }

    goto LABEL_37;
  }

  v27 = *(*(v10 + *v11 + 8) + 16);
  if (PersistentModel.modelContext.getter(v27, a4))
  {

    goto LABEL_23;
  }

  v34 = PersistentModel.modelContext.getter(v12, v7);
  sub_197452A84(v34, v27, a4);

  v53 = 1;
  v54 = 0;
LABEL_37:
  if (PersistentModel.modelContext.getter(v12, v7))
  {
    sub_197432658(v5, v12, v7);
  }

  if (swift_getAssociatedTypeWitness() == v12)
  {
    (*(v7 + 56))(&v58, v12, v7);
    v36 = a4;
    v37 = v10;
    v38 = v15;
    v39 = v60;
    v40 = v61;
    __swift_project_boxed_opaque_existential_1Tm_2(&v58, v60);
    v41 = *(*(v37 + *MEMORY[0x1E69E77B0] + 8) + 16);
    v42 = v39;
    v15 = v38;
    v10 = v37;
    a4 = v36;
    (*(v40 + 128))(v55, a2, v41, v36, v42, v40);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v58);
  }

  else
  {
    sub_1974C2DAC(v55, v7, &v58);
    v31 = v59;
    v33 = sub_197521FFC();
    v35 = swift_conformsToProtocol2();
    if (!v35 || !v33)
    {
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
      v46 = sub_197522B8C();
      a4 = v47;
      MEMORY[0x19A8DFF80](v46);

      while (1)
      {
        sub_1975223EC();
        __break(1u);
LABEL_56:
        *&v58 = 0;
        *(&v58 + 1) = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x8000000197527DA0);
        PersistentModel.persistentModelID.getter(v12, v7, &v56);
        v48 = v56;
        v49 = v57;
        v7 = MEMORY[0x1E69E7078];
        sub_19752235C();
        sub_1974028C8(v48, v49);
        MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197527DC0);
        v56 = v31;
        v12 = type metadata accessor for ModelContext(0);
        sub_19752235C();
        MEMORY[0x19A8DFF80](0xD000000000000018, 0x8000000197527DE0);
        PersistentModel.persistentModelID.getter(v52, a4, &v56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
        v50 = sub_1975217CC();
        a4 = v51;
        MEMORY[0x19A8DFF80](v50);

        MEMORY[0x19A8DFF80](0xD000000000000024, 0x8000000197527E00);
        v56 = v33;
        sub_19752235C();
      }
    }

    sub_1974C4FE8(v33, v31, v5, a2, v12, *(*(v10 + *MEMORY[0x1E69E77B0] + 8) + 16), v33, v7, a4, v35);
    sub_1973F82A8(&v58);
  }

  v43 = MEMORY[0x1E69E77B0];
  if (a2)
  {
    v44 = swift_unknownObjectRetain();
    sub_197452DB8(v44, a4, v12, v7);
    sub_1974530DC(v15, a2, v12, *(*(v10 + *v43 + 8) + 16), v7, a4);
    swift_unknownObjectRelease();
  }

  if (v54 && PersistentModel.modelContext.getter(v12, v7))
  {
    sub_197454EEC(v5, v12, v7);
  }

  if (v53 && a2)
  {
    v45 = *(*(v10 + *v43 + 8) + 16);
    if (PersistentModel.modelContext.getter(v45, a4))
    {
      sub_197454EEC(a2, v45, a4);
    }
  }
}

{
  v9 = *a1;
  v10 = MEMORY[0x1E69E77B0];
  v11 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v11, a3))
  {
    sub_1974258A4(v11, a3);
  }

  if (PersistentModel.modelContext.getter(v11, a3))
  {
    sub_197432658(v4, v11, a3);
  }

  if (swift_getAssociatedTypeWitness() == v11)
  {
    (*(a3 + 56))(&v20, v11, a3);
    v17 = v22;
    v18 = v23;
    __swift_project_boxed_opaque_existential_1Tm_2(&v20, v22);
    (*(v18 + 112))(a1, a2, *(v9 + *v10 + 8), a4, v17, v18);
    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v20);
  }

  else
  {
    sub_1974C2DAC(a1, a3, &v20);
    v12 = v21;
    v13 = sub_197521FFC();
    v14 = swift_conformsToProtocol2();
    if (v14)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
      v19 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v19);

      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      sub_1974C3C60(v13, v12, v4, a2, v11, *(v9 + *v10 + 8), v13, a3, a4, v14);
      return sub_1973F82A8(&v20);
    }
  }

  return result;
}

{
  v5 = v4;
  v10 = *a1;
  v11 = MEMORY[0x1E69E77B0];
  v12 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v12, a3))
  {
    sub_1974258A4(v12, a3);
  }

  v13 = *(v10 + *v11 + 8);
  if (sub_1973FE6F0(v13, a4))
  {
    sub_1974258A4(v13, a4);
  }

  v14 = sub_1974C457C(v4, a1, a3, a4);
  *&v40 = v14;
  v38 = a2;
  if (sub_19752173C())
  {
    return swift_unknownObjectRelease();
  }

  sub_197452DB8(a2, a4, v12, a3);
  if (PersistentModel.modelContext.getter(v12, a3))
  {
  }

  else if (PersistentModel.modelContext.getter(v13, a4))
  {
    v18 = v14;

    v19 = PersistentModel.modelContext.getter(v13, a4);
    sub_197452A84(v19, v12, a3);
    v37 = 0;
    v35 = 1;
    goto LABEL_20;
  }

  if (!PersistentModel.modelContext.getter(v12, a3))
  {
    goto LABEL_11;
  }

  if (PersistentModel.modelContext.getter(v13, a4))
  {

LABEL_11:
    v15 = PersistentModel.modelContext.getter(v12, a3);
    v16 = PersistentModel.modelContext.getter(v13, a4);
    if (v15)
    {
      if (v16)
      {
        v17 = v16;

        if (v15 != v17)
        {
          goto LABEL_38;
        }

        goto LABEL_18;
      }
    }

    else if (!v16)
    {
LABEL_18:
      v37 = 0;
      v35 = 0;
      goto LABEL_21;
    }

LABEL_38:
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x8000000197527DA0);
    PersistentModel.persistentModelID.getter(v12, a3, &v38);
    v29 = v38;
    v30 = v39;
    v44 = v38;
    v45 = v39;
    sub_19752235C();
    sub_1974028C8(v29, v30);
    MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197527DC0);
    v38 = PersistentModel.modelContext.getter(v12, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9A8, &qword_19752FD50);
    v31 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v31);

    MEMORY[0x19A8DFF80](0xD000000000000018, 0x8000000197527DE0);
    PersistentModel.persistentModelID.getter(v13, a4, &v38);
    v32 = v38;
    v33 = v39;
    v44 = v38;
    v45 = v39;
    sub_19752235C();
    sub_1974028C8(v32, v33);
    MEMORY[0x19A8DFF80](0xD000000000000024, 0x8000000197527E00);
    v38 = PersistentModel.modelContext.getter(v13, a4);
    v34 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v34);

    goto LABEL_39;
  }

  v18 = v14;
  v20 = PersistentModel.modelContext.getter(v12, a3);
  sub_197452A84(v20, v13, a4);
  v35 = 0;
  v37 = 1;
LABEL_20:

  v14 = v18;
LABEL_21:
  v21 = sub_19744C800(a1, v12, a3);
  if (PersistentModel.modelContext.getter(v12, a3))
  {
    sub_197432658(v5, v12, a3);
  }

  v36 = v21;
  sub_197454D38(v21, v14, v12, v13, a3, a4);
  if (swift_getAssociatedTypeWitness() == v12)
  {
    (*(a3 + 56))(&v40, v12, a3);
    v25 = v42;
    v26 = v43;
    __swift_project_boxed_opaque_existential_1Tm_2(&v40, v42);
    (*(v26 + 120))(a1, a2, v13, a4, v25, v26);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v40);
LABEL_28:
    sub_1974530DC(v36, a2, v12, v13, a3, a4);
    if (v35 && PersistentModel.modelContext.getter(v12, a3))
    {
      sub_197454EEC(v5, v12, a3);
    }

    if (v37)
    {
      if (PersistentModel.modelContext.getter(v13, a4))
      {
        sub_197454EEC(a2, v13, a4);
      }
    }

    return swift_unknownObjectRelease();
  }

  sub_1974C2DAC(a1, a3, &v40);
  v22 = v41;
  v23 = sub_197521FFC();
  v24 = swift_conformsToProtocol2();
  if (v24 && v23)
  {
    sub_1974C49B4(v23, v22, v5, a2, v12, v13, v23, a3, a4, v24);
    sub_1973F82A8(&v40);
    goto LABEL_28;
  }

  v38 = 0;
  v39 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
  v28 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v28);

LABEL_39:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19742C058(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = sub_197403C30(v3, v4);
    if (v9)
    {
      sub_19742FE50(*(v6 + 56) + 32 * v8, &v14);

      LOBYTE(v7) = *(&v14 + 1) != 1;
      if (v14)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    LOBYTE(v7) = 0;
  }

  v14 = xmmword_19752EA60;
  v15 = 0;
  v16 = 0;
LABEL_7:
  if ((v7 & 1) == 0)
  {
    sub_1974050A8(&v14, &qword_1EAF2B640, &unk_19752F160);
    return 0;
  }

LABEL_9:
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = *(&v14 + 1);
  sub_1974050A8(&v14, &qword_1EAF2B640, &unk_19752F160);
  if (Strong)
  {
    *&v14 = Strong;
    *(&v14 + 1) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
    swift_dynamicCast();
    return v13;
  }

  return 0;
}

uint64_t PersistentModel.setTransformableValue<A>(forKey:to:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v9, a3))
  {
    sub_1974258A4(v9, a3);
  }

  if (PersistentModel.modelContext.getter(v9, a3))
  {
    sub_197432658(v3, v9, a3);
  }

  if (swift_getAssociatedTypeWitness() == v9)
  {
    (*(a3 + 56))(&v18, v9, a3);
    v15 = v20;
    v16 = v21;
    __swift_project_boxed_opaque_existential_1Tm_2(&v18, v20);
    (*(v16 + 152))(a1, a2, *(v7 + *v8 + 8), v15, v16);
    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v18);
  }

  else
  {
    sub_1974C2DAC(a1, a3, &v18);
    v10 = v19;
    v11 = sub_197521FFC();
    v12 = swift_conformsToProtocol2();
    if (v12)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
      v17 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v17);

      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      sub_1974C8578(v11, v10, v3, a2, v9, *(v7 + *v8 + 8), v11, a3, v12);
      return sub_1973F82A8(&v18);
    }
  }

  return result;
}

uint64_t sub_19742C490(void *a1, uint64_t a2)
{
  v8 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v4 = v8;
  boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v7);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1Tm_1, a2, v4);

  sub_1973FCF28(v7, a1);
}

uint64_t sub_19742C568@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X8>)
{
  v61 = a4;
  v59 = a6;
  v9 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v60 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55 = AssociatedTypeWitness;
  v13 = swift_getAssociatedTypeWitness();
  v53 = sub_197521F5C();
  v52 = *(v53 - 8);
  v15 = MEMORY[0x1EEE9AC00](v53, v14);
  v17 = &v52 - v16;
  v18 = *(a3 - 8);
  v20 = MEMORY[0x1EEE9AC00](v15, v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v13;
  v23 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v20, v24);
  v26 = &v52 - v25;
  v27 = *a2;
  v28 = *(a2 + 8);
  v63 = a1;
  v57 = v28;
  v56 = v27;
  if (v28)
  {
    if (v28 != 1 || (v32 = v27[3]) == 0)
    {
      v68 = 0;
      v69 = 0xE000000000000000;
      v46 = v28;
      v47 = v27;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197526FB0);
      *&v66 = v47;
      BYTE8(v66) = v46;
      sub_19752235C();
      goto LABEL_19;
    }

    v30 = v27[2];
  }

  else
  {
    v29 = [v27 storeIdentifier];
    v30 = sub_1975217BC();
    v32 = v31;
  }

  v33 = *(v65 + 16);
  v64 = a3;
  if (v33)
  {
    Strong = v33;
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      __break(1u);
LABEL_15:

      *&v66 = 0;
      *(&v66 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000005CLL, 0x8000000197527010);
      *&v67 = v56;
      BYTE8(v67) = v57;
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      *&v67 = v65;
      type metadata accessor for ModelContext(0);
      sub_19752235C();
      goto LABEL_19;
    }
  }

  v35 = Strong;
  swift_beginAccess();
  v36 = *(v35 + 56);

  if (!*(v36 + 16))
  {
    goto LABEL_15;
  }

  v37 = sub_1973F4028(v30, v32);
  if ((v38 & 1) == 0)
  {
    goto LABEL_15;
  }

  v54 = *(*(v36 + 56) + 16 * v37);
  swift_unknownObjectRetain();

  v66 = v54;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  v39 = swift_checkMetadataState();
  if (swift_dynamicCast())
  {
    (*(v18 + 16))(v22, v63, v64);
    v40 = v62;
    if (swift_dynamicCast())
    {

      (*(v23 + 56))(v17, 0, 1, v40);
      (*(v23 + 32))(v26, v17, v40);
      *&v67 = v56;
      BYTE8(v67) = v57;
      v41 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
      v42 = v65;
      swift_beginAccess();
      v43 = v42 + v41;
      v44 = v60;
      sub_197404E70(v43, v60);
      (*(AssociatedConformanceWitness + 32))(v61, v26, &v67, v44, v61, v39);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_19740BE74(v44, type metadata accessor for EditingState);
      return (*(v23 + 8))(v26, v40);
    }

    (*(v23 + 56))(v17, 1, 1, v40);
    (*(v52 + 8))(v17, v53);
    *&v66 = 0;
    *(&v66 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000022, 0x80000001975270C0);
    v49 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v49);

    MEMORY[0x19A8DFF80](0xD000000000000038, 0x80000001975270F0);
    v50 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v50);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    v51 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v51);

    MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
    sub_1975227FC();
  }

  else
  {
    *&v66 = 0;
    *(&v66 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000048, 0x8000000197527070);
    v48 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v48);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    v67 = v54;
    sub_19752235C();
  }

LABEL_19:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19742CDB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v238 = a6;
  *&v239 = a2;
  *(&v239 + 1) = a3;
  v237 = a8;
  v14 = *v9;
  v233 = sub_197521F5C();
  v232 = *(v233 - 8);
  v16 = MEMORY[0x1EEE9AC00](v233, v15);
  v227 = v224 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v228 = v224 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v226 = v224 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v231 = v224 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v230 = v224 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v229 = v224 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v36 = v224 - v35;
  v240 = a7;
  v234 = *(a7 - 1);
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = MEMORY[0x1EEE9AC00](v38, v39);
  v42 = v224 - v41;
  MEMORY[0x1EEE9AC00](v40, v43);
  v45 = v224 - v44;
  v46 = *a5;
  v47 = *(a5 + 8);
  v48 = *(v9[4] + 72);
  v236 = v47;
  v235 = v46;
  v224[1] = v14;
  v225 = v49;
  if (v47)
  {
    if (v47 == 1)
    {
      v50 = v46[9];
      v51 = v46[10];
    }

    else
    {

      v50 = sub_19750A588();
      v51 = v54;
    }
  }

  else
  {

    v52 = [v46 entityName];
    v50 = sub_1975217BC();
    v51 = v53;
  }

  if (!*(v48 + 16))
  {
LABEL_126:

    goto LABEL_127;
  }

  v55 = sub_1973F4028(v50, v51);
  v57 = v56;

  if ((v57 & 1) == 0)
  {
LABEL_127:

    *&v246 = 0;
    *(&v246 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197523F10);
    if (v236)
    {
      if (v236 == 1)
      {
        v189 = v235[9];
        v191 = v235[10];
      }

      else
      {
        v189 = sub_19750A588();
        v191 = v190;
      }
    }

    else
    {
      v193 = [v235 entityName];
      v189 = sub_1975217BC();
      v191 = v194;
    }

    MEMORY[0x19A8DFF80](v189, v191);

    MEMORY[0x19A8DFF80](0xD000000000000028, 0x8000000197523F30);
    *&v244 = v235;
    BYTE8(v244) = v236;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v244 = v9;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    v195 = [*(v9 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) managedObjectModel];
    v196 = [v195 description];
    v197 = sub_1975217BC();
    v199 = v198;

    MEMORY[0x19A8DFF80](v197, v199);

    goto LABEL_155;
  }

  v241 = *(*(v48 + 56) + 8 * v55);

  v59 = *(v9 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v61 = MEMORY[0x1EEE9AC00](v58, v60);
  MEMORY[0x1EEE9AC00](v61, v62);

  os_unfair_lock_lock(v59 + 4);
  sub_197431F54(&v246);
  os_unfair_lock_unlock(v59 + 4);
  v63 = v246;

  if (!v63)
  {
    *&v246 = 0;
    *(&v246 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v244 = v246;
    MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197523F60);
    v246 = v239;
    LOBYTE(v247) = a4;
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197523F90);
    sub_19752135C();
    sub_197413CBC(&qword_1EAF2AF28, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v192 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v192);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    *&v246 = v9;
    sub_19752235C();
    goto LABEL_155;
  }

  v64 = *(&v239 + 1);
  v65 = v239;
  if (a4 > 2u)
  {
    if (a4 == 3)
    {
      swift_beginAccess();
      v116 = v63[5];
      if (*(v116 + 16))
      {

        v117 = sub_197403C30(v235, v236);
        if (v118)
        {
          v119 = *(*(v116 + 56) + 8 * v117);

          if (*(v119 + 16))
          {
            v120 = sub_1973F4028(v65, v64);
            if (v121)
            {
              v122 = *(*(v119 + 56) + 8 * v120);

              *&v244 = v122;
              BYTE8(v244) = 0;
              return swift_dynamicCast();
            }
          }
        }

        v64 = *(&v239 + 1);
        v65 = v239;
      }

      *&v244 = 0;
      *(&v244 + 1) = 0xE000000000000000;
      sub_1975221EC();
      v243 = v244;
      MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197523FB0);
      *&v244 = v65;
      *(&v244 + 1) = v64;
      LOBYTE(v245) = 3;
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      *&v244 = v235;
      BYTE8(v244) = v236;
      sub_19752235C();
      goto LABEL_155;
    }

    v9 = v240;
    if (a4 == 4)
    {
      swift_beginAccess();
      v74 = v63[6];
      if (*(v74 + 16))
      {

        v75 = sub_197403C30(v235, v236);
        if (v76)
        {
          v77 = *(*(v74 + 56) + 8 * v75);

          if (*(v77 + 16))
          {
            v78 = sub_1973F4028(v65, v64);
            if (v79)
            {
              v80 = *(*(v77 + 56) + 8 * v78);

              if (v80 >> 62)
              {
                v81 = sub_1975220EC();
                if (v81)
                {
                  goto LABEL_25;
                }
              }

              else
              {
                v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v81)
                {
LABEL_25:
                  *&v244 = MEMORY[0x1E69E7CC0];
                  sub_197411CB8(0, v81 & ~(v81 >> 63), 0);
                  if ((v81 & 0x8000000000000000) == 0)
                  {
                    v82 = 0;
                    v83 = v244;
                    do
                    {
                      if ((v80 & 0xC000000000000001) != 0)
                      {
                        v84 = MEMORY[0x19A8E0960](v82, v80);
                      }

                      else
                      {
                        v84 = *(v80 + 8 * v82 + 32);
                      }

                      *&v244 = v83;
                      v86 = *(v83 + 16);
                      v85 = *(v83 + 24);
                      if (v86 >= v85 >> 1)
                      {
                        v88 = v84;
                        sub_197411CB8((v85 > 1), v86 + 1, 1);
                        v84 = v88;
                        v83 = v244;
                      }

                      ++v82;
                      *(v83 + 16) = v86 + 1;
                      v87 = v83 + 16 * v86;
                      *(v87 + 32) = v84;
                      *(v87 + 40) = 0;
                    }

                    while (v81 != v82);

                    goto LABEL_122;
                  }

                  __break(1u);
                  goto LABEL_126;
                }
              }

              v83 = MEMORY[0x1E69E7CC0];
LABEL_122:
              *&v244 = v83;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
              return swift_dynamicCast();
            }
          }
        }

        v64 = *(&v239 + 1);
        v65 = v239;
      }

      *&v244 = 0;
      *(&v244 + 1) = 0xE000000000000000;
      sub_1975221EC();
      v243 = v244;
      MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197523FB0);
      *&v244 = v65;
      *(&v244 + 1) = v64;
      LOBYTE(v245) = 4;
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      *&v244 = v235;
      BYTE8(v244) = v236;
      sub_19752235C();
      goto LABEL_155;
    }

    swift_beginAccess();
    v151 = v63[7];
    if (*(v151 + 16))
    {

      v152 = sub_197403C30(v235, v236);
      if (v153)
      {
        v154 = *(*(v151 + 56) + 8 * v152);

        if (*(v154 + 16))
        {
          v155 = sub_1973F4028(v65, v64);
          if (v156)
          {
            sub_197404860(*(v154 + 56) + 32 * v155, &v246);

LABEL_118:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
            return swift_dynamicCast();
          }
        }
      }
    }

    else
    {
    }

    v246 = 0u;
    v247 = 0u;
    goto LABEL_118;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      swift_beginAccess();
      v66 = v63[4];
      v67 = v240;
      v68 = v234;
      if (*(v66 + 16))
      {

        v69 = sub_197403C30(v235, v236);
        if (v70)
        {
          v71 = *(*(v66 + 56) + 8 * v69);

          if (*(v71 + 16))
          {
            v72 = sub_1973F4028(v65, v64);
            if (v73)
            {
              sub_197404860(*(v71 + 56) + 32 * v72, &v246);

LABEL_96:
              sub_1973FE0E4(&v246, &v244, &qword_1EAF2AF20, &unk_19752F320);
              v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
              if (swift_dynamicCast())
              {
                sub_19740C044(&v246, &qword_1EAF2AF20, &unk_19752F320);

                (*(v68 + 56))(v36, 0, 1, v67);
                v170 = *(v68 + 32);
                v170(v45, v36, v67);
                return (v170)(v237, v45, v67);
              }

              v171 = *(v68 + 56);
              v171(v36, 1, 1, v67);
              v172 = *(v232 + 8);
              v172(v36, v233);
              sub_1973FE0E4(&v246, &v244, &qword_1EAF2AF20, &unk_19752F320);
              *&v239 = v169;
              if (!*(&v245 + 1))
              {
                goto LABEL_156;
              }

              *(&v239 + 1) = v172;
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_157;
              }

              v173 = v242;
              *&v244 = a1;
              v174 = swift_conformsToProtocol2();
              v175 = a1;
              if (v174)
              {
                v175 = a1;
                if (a1)
                {
                  v176 = v174;
                  v175 = a1;
                  do
                  {
                    sub_1973F732C(v175, &v244, v175, v176);
                    v175 = v244;
                    v176 = swift_conformsToProtocol2();
                    if (v176)
                    {
                      v177 = v175 == 0;
                    }

                    else
                    {
                      v177 = 1;
                    }
                  }

                  while (!v177);
                }
              }

              v178 = swift_conformsToProtocol2();
              if (v178)
              {
                v179 = v175 == 0;
              }

              else
              {
                v179 = 1;
              }

              if (!v179)
              {
                v180 = v178;
                v181 = v229;
                v182 = v240;
                v171(v229, 1, 1, v240);
                v183 = v182;
                sub_19746CD10(v175, v173, *(&v173 + 1), v181, v182, v175, v180, 1420);
                sub_19744D0E0(v173, *(&v173 + 1));

                swift_beginAccess();
                v184 = v230;
                v185 = v233;
                (*(v232 + 16))(v230, v181, v233);
                v186 = *(&v239 + 1);
                (*(&v239 + 1))(v181, v185);
                v187 = v234;
                v188 = *(v234 + 48);
                if (v188(v184, 1, v183) == 1)
                {
                  v244 = v246;
                  v245 = v247;
                  swift_dynamicCast();
                  result = v188(v184, 1, v183);
                  if (result != 1)
                  {
                    return v186(v184, v185);
                  }
                }

                else
                {
                  sub_19740C044(&v246, &qword_1EAF2AF20, &unk_19752F320);
                  return (*(v187 + 32))(v237, v184, v183);
                }

                return result;
              }

              *&v244 = 0;
              *(&v244 + 1) = 0xE000000000000000;
              sub_1975221EC();
              v242 = v244;
              MEMORY[0x19A8DFF80](0xD000000000000014, 0x8000000197524210);
              sub_1973FE0E4(&v246, &v244, &qword_1EAF2AF20, &unk_19752F320);
              v221 = sub_1975217CC();
              MEMORY[0x19A8DFF80](v221);

              MEMORY[0x19A8DFF80](0xD000000000000022, 0x8000000197524230);
              v222 = sub_197522B8C();
              MEMORY[0x19A8DFF80](v222);

              while (1)
              {
LABEL_155:
                sub_1975223EC();
                __break(1u);
LABEL_156:
                sub_19740C044(&v244, &qword_1EAF2AF20, &unk_19752F320);
LABEL_157:
                *&v244 = 0;
                *(&v244 + 1) = 0xE000000000000000;
                sub_1975221EC();

                *&v242 = 0xD000000000000012;
                *(&v242 + 1) = 0x80000001975241D0;
                sub_1973FE0E4(&v246, &v244, &qword_1EAF2AF20, &unk_19752F320);
                v219 = sub_1975217CC();
                MEMORY[0x19A8DFF80](v219);

                MEMORY[0x19A8DFF80](0xD000000000000012, 0x80000001975241F0);
                v220 = sub_197522B8C();
                MEMORY[0x19A8DFF80](v220);
              }
            }
          }
        }
      }

      v246 = 0u;
      v247 = 0u;
      goto LABEL_96;
    }

    swift_beginAccess();
    v123 = v63[3];
    if (*(v123 + 16))
    {

      v124 = sub_197403C30(v235, v236);
      if (v125)
      {
        v126 = *(*(v123 + 56) + 8 * v124);

        if (*(v126 + 16))
        {
          sub_1973F4028(v65, v64);
          if (v127)
          {

            v128 = sub_1975215EC();
            v129 = v241;
            swift_beginAccess();
            if (*(*(v129 + 96) + 16) && (sub_1973F4028(v65, v64), (v130 & 1) != 0))
            {
              swift_endAccess();
              type metadata accessor for Schema.CompositeAttribute();
              v131 = swift_dynamicCastClass();
              if (v131)
              {
                v132 = v131;

                v133 = sub_19746C608(v128, v132);
                *&v244 = a1;
                v134 = swift_conformsToProtocol2();
                v135 = a1;
                if (v134)
                {
                  v135 = a1;
                  if (a1)
                  {
                    v136 = v134;
                    v135 = a1;
                    do
                    {
                      sub_1973F732C(v135, &v244, v135, v136);
                      v135 = v244;
                      v136 = swift_conformsToProtocol2();
                      if (v136)
                      {
                        v137 = v135 == 0;
                      }

                      else
                      {
                        v137 = 1;
                      }
                    }

                    while (!v137);
                  }
                }

                v138 = dynamic_cast_existential_2_conditional(v135, v135, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
                if (!v138)
                {
                  *&v244 = 0;
                  *(&v244 + 1) = 0xE000000000000000;
                  sub_1975221EC();

                  *&v244 = 0xD000000000000023;
                  *(&v244 + 1) = 0x8000000197524170;
                  v211 = sub_197522B8C();
                  MEMORY[0x19A8DFF80](v211);

                  goto LABEL_155;
                }

                v140 = MEMORY[0x1EEE9AC00](v138, v139);
                v141 = v133;
                *(&v239 + 1) = v133;
                v142 = v240;
                sub_19746CA90(v140, v141, v132, v240, v140, v143);
                v144 = v231;
                if (!swift_dynamicCast())
                {
                  (*(v234 + 56))(v144, 1, 1, v142);
                  (*(v232 + 8))(v144, v233);
                  *&v244 = 0;
                  *(&v244 + 1) = 0xE000000000000000;
                  sub_1975221EC();

                  *&v244 = 0xD000000000000020;
                  *(&v244 + 1) = 0x80000001975241A0;
                  v212 = sub_197522B8C();
                  MEMORY[0x19A8DFF80](v212);

                  MEMORY[0x19A8DFF80](0x206D6F726620, 0xE600000000000000);
                  v213 = [*(&v239 + 1) description];
                  v214 = sub_1975217BC();
                  v216 = v215;

                  MEMORY[0x19A8DFF80](v214, v216);

                  goto LABEL_155;
                }

                v145 = v234;
                (*(v234 + 56))(v144, 0, 1, v142);
                v146 = v144;
                v147 = *(v145 + 32);
                v147(v42, v146, v142);
                v148 = v237;
                v149 = v42;
                v150 = v142;
                return (v147)(v148, v149, v150);
              }
            }

            else
            {
              swift_endAccess();
            }

            *&v244 = 0;
            *(&v244 + 1) = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197524130);
            *&v243 = v235;
            BYTE8(v243) = v236;
            sub_19752235C();
            MEMORY[0x19A8DFF80](0x2074756220, 0xE500000000000000);
            MEMORY[0x19A8DFF80](v239, *(&v239 + 1));
            MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197524150);
            *&v243 = v241;
            type metadata accessor for Schema.Entity();
            sub_19752235C();
            goto LABEL_155;
          }
        }
      }
    }

    *&v244 = 0;
    *(&v244 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000003CLL, 0x80000001975240F0);
    if (v236)
    {
      if (v236 == 1)
      {
        v200 = v235[9];
        v202 = v235[10];
      }

      else
      {
        v200 = sub_19750A588();
        v202 = v201;
      }
    }

    else
    {
      v217 = [v235 entityName];
      v200 = sub_1975217BC();
      v202 = v218;
    }

    MEMORY[0x19A8DFF80](v200, v202);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v239, *(&v239 + 1));
    MEMORY[0x19A8DFF80](0x20726F662029, 0xE600000000000000);
    *&v243 = v235;
    BYTE8(v243) = v236;
    sub_19752235C();
    goto LABEL_155;
  }

  v89 = v241;
  swift_beginAccess();
  v90 = *(v89 + 96);
  if (!*(v90 + 16) || (v91 = sub_1973F4028(v65, v64), (v92 & 1) == 0))
  {
    swift_endAccess();
    *&v246 = 0;
    *(&v246 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197523F10);
    MEMORY[0x19A8DFF80](v65, v64);
    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    *&v244 = v235;
    BYTE8(v244) = v236;
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x8000000197524010);
    *&v244 = v9;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v244 = v241;
    type metadata accessor for Schema.Entity();
    sub_19752235C();
    goto LABEL_155;
  }

  v93 = *(*(v90 + 56) + 8 * v91);
  swift_endAccess();
  *&v246 = a1;
  v94 = swift_conformsToProtocol2();
  if (v94 && a1)
  {
    v95 = v94;
    do
    {
      sub_1973F732C(a1, &v246, a1, v95);
      a1 = v246;
      v95 = swift_conformsToProtocol2();
      if (v95)
      {
        v96 = a1 == 0;
      }

      else
      {
        v96 = 1;
      }
    }

    while (!v96);
  }

  if ((*(v93 + 120) & 0x40) != 0)
  {
    swift_beginAccess();
    v157 = v63[2];
    v158 = *(v157 + 16);

    if (!v158)
    {
      goto LABEL_147;
    }

    v159 = sub_197403C30(v235, v236);
    if ((v160 & 1) == 0 || (v161 = *(*(v157 + 56) + 8 * v159), , , !*(v161 + 16)) || (v162 = sub_1973F4028(v65, v64), (v163 & 1) == 0))
    {

      v64 = *(&v239 + 1);
      v65 = v239;
      goto LABEL_147;
    }

    sub_197404860(*(v161 + 56) + 32 * v162, &v244);

    sub_1974028B8(&v244, &v246);
    sub_1974028B8(&v246, &v244);
    return swift_dynamicCast();
  }

  v97 = swift_conformsToProtocol2();
  if (!v97 || !a1)
  {
    *&v246 = 0;
    *(&v246 + 1) = 0xE000000000000000;

    sub_1975221EC();
    v244 = v246;
    MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x8000000197524050);
    v203 = v241;
    swift_beginAccess();
    v204 = *(v203 + 16);
    v205 = *(v203 + 24);

    MEMORY[0x19A8DFF80](v204, v205);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v65, v64);
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v206 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v206);

    goto LABEL_155;
  }

  v98 = v97;
  swift_beginAccess();
  v99 = v63[2];
  v100 = *(v99 + 16);

  if (!v100)
  {
    goto LABEL_147;
  }

  v101 = sub_197403C30(v235, v236);
  if ((v102 & 1) == 0 || (v103 = *(*(v99 + 56) + 8 * v101), , , !*(v103 + 16)) || (v104 = sub_1973F4028(v65, v64), (v105 & 1) == 0))
  {

    v64 = *(&v239 + 1);
    v65 = v239;
LABEL_147:
    *&v246 = 0;
    *(&v246 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v244 = v246;
    MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197524080);
    v207 = v241;
    swift_beginAccess();
    v208 = *(v207 + 16);
    v209 = *(v207 + 24);

    MEMORY[0x19A8DFF80](v208, v209);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v65, v64);
    MEMORY[0x19A8DFF80](0x20726F662029, 0xE600000000000000);
    *&v242 = v235;
    BYTE8(v242) = v236;
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975240A0);
    sub_19752135C();
    sub_197413CBC(&qword_1EAF2AF28, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v210 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v210);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    *&v242 = v9;
    sub_19752235C();
    goto LABEL_155;
  }

  sub_197404860(*(v103 + 56) + 32 * v104, &v244);

  sub_1974028B8(&v244, &v246);
  sub_197404860(&v246, &v244);
  if (!swift_dynamicCast())
  {
    sub_197404860(&v246, &v244);
    v164 = v227;
    v165 = v240;
    v166 = swift_dynamicCast();
    v167 = v234;
    if (!v166)
    {
      (*(v234 + 56))(v164, 1, 1, v165);
      (*(v232 + 8))(v164, v233);
      *&v244 = 0;
      *(&v244 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000026, 0x80000001975240C0);
      MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
      MEMORY[0x19A8DFF80](544370464, 0xE400000000000000);
      v223 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v223);

      MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
      sub_19752235C();
      goto LABEL_155;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v246);

    (*(v167 + 56))(v164, 0, 1, v165);
    v147 = *(v167 + 32);
    v168 = v225;
    v147(v225, v164, v165);
    v148 = v237;
    v149 = v168;
    v150 = v165;
    return (v147)(v148, v149, v150);
  }

  v106 = v242;
  v107 = v234;
  v108 = v226;
  v109 = v240;
  (*(v234 + 56))(v226, 1, 1, v240);
  sub_19746CD10(a1, v106, *(&v106 + 1), v108, v109, a1, v98, 1486);
  sub_19744D0E0(v106, *(&v106 + 1));

  swift_beginAccess();
  v110 = v232;
  v111 = v228;
  v112 = v233;
  (*(v232 + 16))(v228, v108, v233);
  v113 = *(v110 + 8);
  v113(v108, v112);
  v114 = *(v107 + 48);
  if (v114(v111, 1, v109) == 1)
  {
    sub_1974028B8(&v246, &v244);
    swift_dynamicCast();
    result = v114(v111, 1, v109);
    if (result != 1)
    {
      return (v113)(v111, v233);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v246);
    return (*(v107 + 32))(v237, v111, v109);
  }

  return result;
}

uint64_t sub_19742F2AC(void *a1)
{
  v3 = v2;
  v5 = *v2;
  v6 = *a1;
  v7 = v2[2];
  v8 = *(v7 + 24);
  v9 = *(v8 + 16);

  v10 = MEMORY[0x1E69E77B0];
  if (!v9 || (v11 = sub_1973F7814(a1), (v12 & 1) == 0))
  {
    v36 = 0u;
    v37 = 0u;

LABEL_12:
    sub_1973FE5EC(&v36, &qword_1EAF2AF20, &unk_19752F320);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    goto LABEL_13;
  }

  v13 = *(*(v8 + 56) + 8 * v11);
  swift_beginAccess();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = *(v7 + 32);
  if (v13 >= *(v14 + 16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_28;
  }

  sub_197413B20(v14 + 32 * v13 + 32, &v36);

  if (!*(&v37 + 1))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4E0, &qword_197534B50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    goto LABEL_13;
  }

  if (!*(&v34 + 1))
  {
LABEL_13:
    sub_1973FE5EC(&v33, &qword_1EAF2C4E8, &qword_197534B58);
    goto LABEL_14;
  }

  sub_19743099C(&v33, &v36);
  v15 = v3[3];
  v16 = *(v3 + 32);
  sub_1974ADEAC(v15, *(v3 + 32));
  if (v16 != 255)
  {
    *&v33 = v3;
    WitnessTable = swift_getWitnessTable();
    v18 = *(sub_1973FE71C(v5, WitnessTable) + 16);

    if (v18)
    {
      v19 = __swift_project_boxed_opaque_existential_1Tm_5(&v36, *(&v37 + 1));
      v20 = *(v6 + *v10 + 8);
      v31 = v15;
      v32 = v16;
      *(&v34 + 1) = v20;
      v30 = v15;
      boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(&v33);
      sub_19742FAC8();

      sub_19742C568(v19, &v31, &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture, v20, boxed_opaque_existential_1Tm_1);

      sub_1973FCF28(&v33, a1);

      sub_1974A1014(v30, v16);

      __swift_destroy_boxed_opaque_existential_1Tm_7(&v36);
LABEL_14:
      v22 = v3[2];
      v23 = *(v22 + 24);
      v24 = *(v23 + 16);

      if (!v24 || (v25 = sub_1973F7814(a1), (v26 & 1) == 0))
      {
        v36 = 0u;
        v37 = 0u;
        goto LABEL_20;
      }

      v27 = *(*(v23 + 56) + 8 * v25);
      swift_beginAccess();
      if ((v27 & 0x8000000000000000) == 0)
      {
        v28 = *(v22 + 32);
        if (v27 < *(v28 + 16))
        {
          sub_197413B20(v28 + 32 * v27 + 32, &v36);
LABEL_20:

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
          return swift_dynamicCast();
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }

    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000052, 0x800000019752B510);
    v32 = v16;
    sub_19752235C();
    MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
    v31 = a1;
    sub_197522B2C();
    sub_1975227FC();
  }

LABEL_28:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t PersistentModel.getTransformableValue<A>(forKey:)(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = MEMORY[0x1E69E77B0];
  v7 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v7, a2))
  {
    sub_1974258A4(v7, a2);
  }

  if (PersistentModel.modelContext.getter(v7, a2))
  {
    sub_1974B2F38(a1, a2);
  }

  if (swift_getAssociatedTypeWitness() == v7)
  {
    (*(a2 + 56))(&v16, v7, a2);
    v13 = v18;
    v14 = v19;
    __swift_project_boxed_opaque_existential_1Tm_2(&v16, v18);
    (*(v14 + 104))(a1, *(v5 + *v6 + 8), v13, v14);
    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v16);
  }

  else
  {
    sub_1974C2DAC(a1, a2, &v16);
    v8 = v17;
    v9 = sub_197521FFC();
    v10 = swift_conformsToProtocol2();
    if (v10)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
      v15 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v15);

      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      sub_1974C3A5C(v9, v8, v2, v7, *(v5 + *v6 + 8), v9, a2, v10);
      return sub_1973F82A8(&v16);
    }
  }

  return result;
}

uint64_t sub_19742FA88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19742FAC8()
{
  result = qword_1ED7C77A8;
  if (!qword_1ED7C77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C77A8);
  }

  return result;
}

uint64_t sub_19742FB1C()
{

  return swift_deallocClassInstance();
}

_OWORD *sub_19742FEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v12 = MEMORY[0x1E6969080];
  v31 = MEMORY[0x1E6969080];
  v32 = sub_1974122A4();
  v33 = sub_1974122F8();
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v13 = *a6;
  v15 = sub_1973F4028(a3, a4);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a5 & 1) != 0)
  {
LABEL_7:
    v21 = *a6;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 48 * v15);
      __swift_destroy_boxed_opaque_existential_1Tm_2(v22);
      return sub_1974028A0(&v30, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a5 & 1) == 0)
  {
    sub_19747A934();
    goto LABEL_7;
  }

  sub_1973FF110(v18, a5 & 1);
  v24 = sub_1973F4028(a3, a4);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1975229CC();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a6;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = __swift_mutable_project_boxed_opaque_existential_2(&v30, v12);
  MEMORY[0x1EEE9AC00](v26, v26);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_197431368(v15, a3, a4, *v28, v28[1], v21);

  return __swift_destroy_boxed_opaque_existential_1Tm_2(&v30);
}

uint64_t PersistentModel.persistentModelID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getAssociatedTypeWitness() == a1)
  {
    (*(a2 + 56))(v16, a1, a2);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1Tm_2(v16, v17);
    (*(v11 + 32))(&v14, v10, v11);
    v12 = v15;
    if (v15 != 255)
    {
      v13 = v14;
      result = __swift_destroy_boxed_opaque_existential_1Tm_3(v16);
      *a3 = v13;
      *(a3 + 8) = v12;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1Tm_3(v16);
  }

  else
  {
    sub_197434244(a1, a1, a2, a2, v16);
    v6 = v17;
    v7 = v18;
    __swift_project_boxed_opaque_existential_1Tm_2(v16, v17);
    (*(v7 + 32))(&v14, v6, v7);
    v8 = v15;
    if (v15 != 255)
    {
      *a3 = v14;
      *(a3 + 8) = v8;
      return __swift_destroy_boxed_opaque_existential_1Tm_3(v16);
    }
  }

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197430254(uint64_t result)
{
  if (result)
  {
    if ((*(v1 + 48) & 1) == 0)
    {
      v2 = *(sub_197512E44() + 16);

      if (v2)
      {

        if ((*(*(v1 + 40) + 24) & 0x3F) == 1)
        {
          if (qword_1EAF2AC88 != -1)
          {
            swift_once();
          }

          v3 = sub_19752157C();
          __swift_project_value_buffer(v3, qword_1EAF33DD0);
          v4 = sub_19752155C();
          v5 = sub_197521DDC();
          if (os_log_type_enabled(v4, v5))
          {
            v6 = swift_slowAlloc();
            *v6 = 0;
            _os_log_impl(&dword_1973F2000, v4, v5, "Mutated models cannot turn their relationships in to futures.", v6, 2u);
            MEMORY[0x19A8E1B50](v6, -1, -1);
          }
        }

        return sub_1973FD1F4();
      }

      else
      {
        result = sub_1975223EC();
        __break(1u);
      }
    }
  }

  else if (*(v1 + 48))
  {

    return sub_197453618(result);
  }

  return result;
}

uint64_t sub_197430420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC9SwiftData12DefaultStore__contextsByEditorIdentifier;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16) && (v8 = sub_197404D0C(a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    *a3 = *(v10 + 24);
  }

  else
  {
    result = swift_endAccess();
    *a3 = 0;
  }

  return result;
}

void *sub_1974304C8@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t PersistentModel.modelContext.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 16);

  return v2;
}

char *sub_19743055C(char a1, uint64_t a2, uint64_t a3)
{
  sub_197446EF8(a2, a3, v28);
  if (!AssociatedTypeWitness)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_19743099C(v28, v31);
  v4 = __swift_project_boxed_opaque_existential_1Tm_5(v31, v31[3]);
  MEMORY[0x1EEE9AC00](v4, v4);
  (*(v6 + 16))(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm_1(v28);
  sub_1975218EC();
  __swift_mutable_project_boxed_opaque_existential_1(v28, AssociatedTypeWitness);
  sub_197521F8C();
  if (v26)
  {
    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (a1)
      {
        v7 = swift_getAssociatedTypeWitness();
        v8 = swift_getAssociatedConformanceWitness();
      }

      else
      {
        v7 = swift_getAssociatedTypeWitness();
        v8 = swift_getAssociatedConformanceWitness();
        PersistentModel.persistentModelID.getter(v7, v8, &v26);
        if (v27)
        {
          if (v27 != 1)
          {
            sub_1974028C8(v26, 2);
LABEL_12:
            if (qword_1EAF2AC88 != -1)
            {
              swift_once();
            }

            v12 = sub_19752157C();
            __swift_project_value_buffer(v12, qword_1EAF33DD0);
            v13 = sub_19752155C();
            v14 = sub_197521DDC();
            if (os_log_type_enabled(v13, v14))
            {
              v15 = swift_slowAlloc();
              *v15 = 0;
              _os_log_impl(&dword_1973F2000, v13, v14, "Illegal attempt to map a relationship containing temporary objects to its identifiers.", v15, 2u);
              MEMORY[0x19A8E1B50](v15, -1, -1);
            }

            swift_unknownObjectRelease();
            goto LABEL_17;
          }

          v9 = *(v26 + 33);
          sub_1974028C8(v26, 1);
          if (v9)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v10 = v26;
          v11 = [v26 isTemporaryID];
          sub_1974028C8(v10, 0);
          if (v11)
          {
            goto LABEL_12;
          }
        }
      }

      PersistentModel.persistentModelID.getter(v7, v8, &v26);
      v16 = v25;
      v17 = v26;
      v18 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_197445BA8(0, *(v16 + 2) + 1, 1, v16);
      }

      v20 = *(v16 + 2);
      v19 = *(v16 + 3);
      v25 = v16;
      if (v20 >= v19 >> 1)
      {
        v25 = sub_197445BA8((v19 > 1), v20 + 1, 1, v25);
      }

      swift_unknownObjectRelease();
      v21 = v25;
      *(v25 + 2) = v20 + 1;
      v22 = &v21[16 * v20];
      *(v22 + 4) = v17;
      v22[40] = v18;
LABEL_17:
      __swift_mutable_project_boxed_opaque_existential_1(v28, AssociatedTypeWitness);
      sub_197521F8C();
      if (!v26)
      {
        goto LABEL_27;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_27:
  __swift_destroy_boxed_opaque_existential_1Tm_7(v28);
  __swift_destroy_boxed_opaque_existential_1Tm_7(v31);
  return v25;
}

uint64_t sub_19743099C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1974309B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1975212CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a1 + 8);
  v65 = *a1;
  v66 = v10;
  if (v10 != 1)
  {
    sub_1974028EC(v9, v10);
    goto LABEL_35;
  }

  if (v9[32] && v9[32] == 1)
  {
    sub_1974028EC(v9, 1);
    sub_1974028EC(v9, 1);
  }

  else
  {
    v11 = sub_19752282C();
    sub_1974028EC(v9, 1);
    sub_1974028EC(v9, 1);

    if ((v11 & 1) == 0)
    {
      v10 = 1;
      sub_1974028C8(v9, 1);
      goto LABEL_35;
    }
  }

  v12 = *(v2 + 16);
  v59 = v5;
  v60 = v4;
  v58 = v8;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v13 = result;
  }

  swift_beginAccess();
  v15 = *(v13 + 48);

  v5 = *(v15 + 16);
  if (!v5)
  {

    sub_1974028C8(v9, 1);
LABEL_34:
    v5 = v59;
    v4 = v60;
    v8 = v58;
    v9 = v65;
    v10 = v66;
LABEL_35:
    v22 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
    swift_beginAccess();
    v23 = *(v2 + v22);
    v24 = *(v23 + 16);
    if (v24)
    {
      sub_1974028EC(v9, v10);

      v25 = sub_197403C30(v9, v10);
      if (v26)
      {
        sub_19742FE50(*(v23 + 56) + 32 * v25, &v61);
        sub_1974028C8(v9, v10);

        LOBYTE(v24) = *(&v61 + 1) != 1;
        if (v61)
        {
          goto LABEL_43;
        }

        goto LABEL_41;
      }

      sub_1974028C8(v9, v10);
      LOBYTE(v24) = 0;
    }

    v61 = xmmword_19752EA60;
    v62 = 0;
    v63 = 0;
LABEL_41:
    if ((v24 & 1) == 0)
    {
      sub_1974050A8(&v61, &qword_1EAF2B640, &unk_19752F160);
      goto LABEL_45;
    }

LABEL_43:
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1974050A8(&v61, &qword_1EAF2B640, &unk_19752F160);
    if (Strong)
    {
      sub_1974028C8(v9, v10);
      return Strong;
    }

LABEL_45:
    if (v10)
    {
      if (v10 != 1 || v9[33] == 1)
      {
        goto LABEL_48;
      }
    }

    else if ([v9 isTemporaryID])
    {
LABEL_48:
      v28 = OBJC_IVAR____TtC9SwiftData12ModelContext__allowTemporaryLookup;
      if (*(v2 + OBJC_IVAR____TtC9SwiftData12ModelContext__allowTemporaryLookup))
      {
        goto LABEL_52;
      }

      if (qword_1ED7C7270 != -1)
      {
        swift_once();
      }

      if (*(qword_1ED7CE5B8 + 16))
      {
LABEL_52:
        *(v2 + v28) = 1;
        if (qword_1EAF2ACC0 != -1)
        {
          goto LABEL_66;
        }

        goto LABEL_53;
      }
    }

    v45 = MEMORY[0x19A8E1370]();
    sub_197448C98(&v65, v2, &v61);
    objc_autoreleasePoolPop(v45);
    sub_1974028C8(v65, v66);
    return v61;
  }

  v56 = v2;
  v4 = 0;
  v8 = (v15 + 32);
  v57 = 0x8000000197523720;
  while (v4 < *(v15 + 16))
  {
    sub_1974047F8(v8, &v61, &qword_1EAF2AF38, &qword_19752C6A8);
    type metadata accessor for DefaultStore(0);
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v65;
      if (v66 == 1)
      {
        if (v65[32])
        {
          v18 = v16;
          if (v65[32] == 1)
          {
            sub_1974028EC(v65, 1);
            sub_1974028EC(v17, 1);
            swift_unknownObjectRetain();

LABEL_25:
            v2 = [*(v18 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) persistentStoreCoordinator];
            sub_19750ACDC(v2, v19);
            v20 = sub_197521EDC();
            swift_unknownObjectRelease_n();
            sub_1974028C8(v17, 1);

            if (v20)
            {

              sub_1974028C8(v9, 1);
              sub_1974028C8(v17, 1);
              v17 = v65;
              v21 = v66;
              goto LABEL_32;
            }

            goto LABEL_28;
          }
        }

        else
        {
          v18 = v16;
        }

        v2 = sub_19752282C();
        sub_1974028EC(v17, 1);
        sub_1974028EC(v17, 1);
        swift_unknownObjectRetain();

        if (v2)
        {
          goto LABEL_25;
        }

        swift_unknownObjectRelease_n();
        sub_1974028C8(v17, 1);
LABEL_28:
        sub_1974028C8(v17, 1);
        goto LABEL_16;
      }

      if (!v66)
      {
        sub_1974028EC(v65, 0);
        sub_1974028EC(v17, 0);

        sub_1974028C8(v9, 1);
        swift_unknownObjectRelease();
        sub_1974028C8(v17, 0);
        v21 = 0;
        v20 = v17;
LABEL_32:
        sub_1974028C8(v17, v21);
        v65 = v20;
        v66 = 0;
        sub_197414BEC(&v61);
LABEL_33:
        v2 = v56;
        goto LABEL_34;
      }
    }

    swift_unknownObjectRelease();
LABEL_16:
    ++v4;
    sub_197414BEC(&v61);
    v8 += 56;
    if (v5 == v4)
    {

      sub_1974028C8(v9, 1);
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_66:
  swift_once();
LABEL_53:
  v29 = sub_19752157C();
  __swift_project_value_buffer(v29, qword_1EAF33DE8);

  v30 = sub_19752155C();
  v31 = sub_197521DDC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = v8;
    v33 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v64 = v57;
    *v33 = 136315394;
    *&v61 = v2;
    v34 = sub_197522B3C();
    v36 = sub_197462310(v34, v35, &v64);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    swift_beginAccess();
    v37 = v65;
    if (v66)
    {
      if (v66 == 1)
      {
        v38 = sub_1974028EC(v65, 1);
        v40 = sub_19750ACDC(v38, v39);
        v42 = v41;
        v43 = v37;
        v44 = 1;
      }

      else
      {
        v49 = sub_1974028EC(v65, 2);
        v40 = sub_19750A29C(v49, v50);
        v42 = v51;
        v43 = v37;
        v44 = 2;
      }

      sub_1974028C8(v43, v44);
    }

    else
    {
      sub_1974028EC(v65, 0);
      v46 = [v37 URIRepresentation];
      sub_19752127C();

      v47 = v5;
      v40 = sub_19752121C();
      v42 = v48;
      sub_1974028C8(v37, 0);
      (*(v47 + 8))(v32, v4);
    }

    v52 = v57;
    v53 = sub_197462310(v40, v42, &v64);

    *(v33 + 14) = v53;
    swift_arrayDestroy();
    MEMORY[0x19A8E1B50](v52, -1, -1);
    MEMORY[0x19A8E1B50](v33, -1, -1);
  }

  v54 = MEMORY[0x19A8E1370]();
  sub_1974B0D94(&v65, v2, &v64);
  objc_autoreleasePoolPop(v54);
  sub_1974028C8(v65, v66);
  return v64;
}

_OWORD *sub_197431368(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v18 = MEMORY[0x1E6969080];
  v19 = sub_1974122A4();
  v20 = sub_1974122F8();
  *&v17 = a4;
  *(&v17 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a6[6] + 16 * a1);
  *v12 = a2;
  v12[1] = a3;
  result = sub_1974028A0(&v17, (a6[7] + 48 * a1));
  v14 = a6[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v16;
  }

  return result;
}

uint64_t sub_197431424()
{
  sub_197431458();

  return swift_deallocClassInstance();
}

uint64_t sub_197431458()
{

  sub_1974A1014(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t *sub_19743148C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + 48) != 1)
  {
    v13 = *(v2 + 16);
    v14 = *(v13 + 24);
    v15 = *(v14 + 16);

    if (v15 && (v16 = sub_1973F7814(a1), (v17 & 1) != 0))
    {
      v18 = *(*(v14 + 56) + 8 * v16);
      swift_beginAccess();
      if ((v18 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v19 = *(v13 + 32);
      if (v18 >= *(v19 + 16))
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      sub_197413B20(v19 + 32 * v18 + 32, &v50);

      if (*(&v51 + 1))
      {
        v20 = swift_dynamicCast();
        v21 = v52[0];
        goto LABEL_20;
      }
    }

    else
    {
      v51 = 0u;
      v50 = 0u;
    }

    v22 = &qword_1EAF2AF20;
    v23 = &unk_19752F320;
    v24 = &v50;
    goto LABEL_38;
  }

  v5 = *(sub_197512E44() + 16);

  if (!v5)
  {
LABEL_44:
    sub_1975221EC();

    *&v50 = 0xD000000000000017;
    *(&v50 + 1) = 0x800000019752B400;
    sub_197433F28(&v47);
    v52[0] = v47;
    LOBYTE(v52[1]) = BYTE8(v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
    v43 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v43);

    goto LABEL_45;
  }

  v6 = *(v2 + 16);
  v7 = *(v6 + 24);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = sub_1973F7814(a1);
    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v9);
      swift_beginAccess();
      if ((v11 & 0x8000000000000000) == 0)
      {
        v12 = *(v6 + 32);
        if (v11 < *(v12 + 16))
        {
          sub_197413B20(v12 + 32 * v11 + 32, v52);
          goto LABEL_17;
        }

        goto LABEL_43;
      }

      goto LABEL_41;
    }
  }

  memset(v52, 0, 32);
LABEL_17:

  sub_197413B20(v52, &v50);
  if (!*(&v51 + 1))
  {
    sub_1973FE5EC(&v50, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    sub_197413B20(v52, &v50);
    if (*(&v51 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = v47;
        v27 = BYTE8(v47);
        *&v50 = v47;
        BYTE8(v50) = BYTE8(v47);
        *&v50 = sub_1974309B4(&v50);
        *(&v50 + 1) = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
        swift_dynamicCast();
        v29 = v47;
        *(&v51 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
        v30 = swift_allocObject();
        *&v50 = v30;
        *(v30 + 16) = v47;
        *(v30 + 24) = v27;
        *(v30 + 32) = v29;
        *(v30 + 40) = a2;

        sub_1974028EC(v26, v27);
        swift_unknownObjectRetain();

        sub_1973FCF28(&v50, a1);

        sub_1974028C8(v26, v27);
        sub_1973FE5EC(v52, &qword_1EAF2AF20, &unk_19752F320);
        return v29;
      }
    }

    else
    {
      sub_1973FE5EC(&v50, &qword_1EAF2AF20, &unk_19752F320);
    }

    sub_197413B20(v52, v46);
    if (v46[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4E0, &qword_197534B50);
      if (swift_dynamicCast())
      {
        if (*(&v48 + 1))
        {
          sub_19743099C(&v47, &v50);
          if (!*(*(v3 + 40) + 16))
          {
            goto LABEL_46;
          }

          v31 = *(v3 + 32);
          v32 = *(v3 + 24);
          sub_1974ADEAC(v32, *(v3 + 32));
          if (v31 != 255)
          {
            v33 = v31;
            v34 = __swift_project_boxed_opaque_existential_1Tm_5(&v50, *(&v51 + 1));
            v35 = *v34;
            v36 = v34[1];
            v37 = *(v34 + 16);

            sub_197428988(v35, v36, v37, v32, v33, &v47);
            v38 = v47;
            v39 = BYTE8(v47);
            *&v47 = sub_1974309B4(&v47);
            *(&v47 + 1) = v40;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
            swift_dynamicCast();
            v41 = v46[0];
            *(&v48 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
            v42 = swift_allocObject();
            *&v47 = v42;
            *(v42 + 16) = v38;
            *(v42 + 24) = v39;
            *(v42 + 32) = v41;
            *(v42 + 40) = a2;

            sub_1974028EC(v38, v39);
            swift_unknownObjectRetain();
            sub_1973FCF28(&v47, a1);

            sub_1974A1014(v32, v33);

            sub_1974028C8(v38, v39);
            sub_1973FE5EC(v52, &qword_1EAF2AF20, &unk_19752F320);
            __swift_destroy_boxed_opaque_existential_1Tm_7(&v50);
            return v41;
          }

          *&v47 = 0;
          *(&v47 + 1) = 0xE000000000000000;

          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000060, 0x800000019752B420);
          v46[0] = v3;
          sub_1975227FC();
          while (1)
          {
LABEL_45:
            sub_1975223EC();
            __break(1u);
LABEL_46:
            *&v47 = 0;
            *(&v47 + 1) = 0xE000000000000000;
            sub_1975221EC();

            *&v47 = 0xD000000000000017;
            *(&v47 + 1) = 0x800000019752B400;
            sub_197433F28(v46);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
            v44 = sub_1975217CC();
            MEMORY[0x19A8DFF80](v44);
          }
        }
      }

      else
      {
        v49 = 0;
        v47 = 0u;
        v48 = 0u;
      }

      sub_1973FE5EC(v52, &qword_1EAF2AF20, &unk_19752F320);
    }

    else
    {
      sub_1973FE5EC(v52, &qword_1EAF2AF20, &unk_19752F320);

      sub_1973FE5EC(v46, &qword_1EAF2AF20, &unk_19752F320);
      v47 = 0u;
      v48 = 0u;
      v49 = 0;
    }

    v22 = &qword_1EAF2C4E8;
    v23 = &qword_197534B58;
    v24 = &v47;
LABEL_38:
    sub_1973FE5EC(v24, v22, v23);
    return 0;
  }

  sub_1973FE5EC(v52, &qword_1EAF2AF20, &unk_19752F320);

  sub_1974028C8(v47, SBYTE8(v47));
  v50 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  v20 = swift_dynamicCast();
  v21 = v47;
LABEL_20:
  if (v20)
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_197431D74()
{
  sub_1974028C8(*(v0 + 16), *(v0 + 24));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_197431E38()
{
  swift_beginAccess();
  *(v0 + 96) = 0;

  swift_beginAccess();
  *(v0 + 104) = 0;

  *(v0 + 16) = 0;

  *(v0 + 24) |= 0x80000u;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  swift_unknownObjectRelease();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  swift_unknownObjectRelease();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_197431F0C()
{
  sub_197431E38();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_197431FA4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_19744C698(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_19747FCD8();
        goto LABEL_25;
      }

      sub_197440990(v8 + 1);
    }

    v30 = *v4;
    sub_197522A5C();
    ObjectType = swift_getObjectType();
    PersistentModel.persistentModelID.getter(ObjectType, a2, &v32);
    v11 = v32;
    if (v33)
    {
      if (v33 == 1)
      {
        MEMORY[0x19A8E1190](1);
        sub_1974028EC(v11, 1);
        sub_197452CB8(&v34);
        sub_1974028C8(v11, 1);
        sub_1974028C8(v11, 1);
      }

      else
      {
        MEMORY[0x19A8E1190](2);
        sub_1974028EC(v11, 2);
        sub_19750A470();
        sub_19752180C();

        sub_19750A588();
        sub_19752180C();
        sub_1974028C8(v11, 2);
        sub_1974028C8(v11, 2);
      }
    }

    else
    {
      MEMORY[0x19A8E1190](0);
      sub_1974028EC(v11, 0);
      sub_197521F4C();
      sub_1974028C8(v11, 0);
      sub_1974028C8(v11, 0);
    }

    result = sub_197522A9C();
    v12 = -1 << *(v30 + 32);
    a3 = result & ~v12;
    if ((*(v30 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v28 = a2;
      v29 = ~v12;
      do
      {
        v13 = *(*(v30 + 48) + 16 * a3 + 8);
        v14 = swift_getObjectType();
        swift_unknownObjectRetain();
        v31 = v13;
        PersistentModel.persistentModelID.getter(v14, v13, &v34);
        v15 = v34;
        v16 = v35;
        PersistentModel.persistentModelID.getter(ObjectType, a2, &v32);
        v17 = v32;
        v18 = v33;
        v19 = sub_19742291C(v15, v16, v32, v33);
        sub_1974028C8(v17, v18);
        sub_1974028C8(v15, v16);
        if (v19)
        {
          v20 = PersistentModel.modelContext.getter(v14, v31);
          a2 = v28;
          v21 = PersistentModel.modelContext.getter(ObjectType, v28);
          swift_unknownObjectRelease();
          if (!v20)
          {
            if (!v21)
            {
              goto LABEL_28;
            }

LABEL_23:

            goto LABEL_16;
          }

          if (!v21)
          {
            goto LABEL_23;
          }

          if (v20 == v21)
          {
            goto LABEL_28;
          }
        }

        else
        {
          result = swift_unknownObjectRelease();
          a2 = v28;
        }

LABEL_16:
        a3 = (a3 + 1) & v29;
      }

      while (((*(v30 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_25:
  v22 = *v27;
  *(*v27 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v23 = (*(v22 + 48) + 16 * a3);
  *v23 = v7;
  v23[1] = a2;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_28:
    result = sub_1975229BC();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

uint64_t sub_197432360(char a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1973FE074(a2, a3);
  *(v4 + 24) = *(v4 + 24) & 0xFFFFFFFE | a1 & 1;
}

uint64_t sub_197432658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_unknownObjectRetain();
  if ((sub_197432B8C(a2, a3) & 7) != 0)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_197440D38(a1, a2, a3);
    *(v3 + 50) = 1;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1974327FC(&v11, a1, a3);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_197432360(1, a2, a3);
    sub_197440AC4();
    if (*(v3 + 58) == 1 || (*(v3 + 59) & 1) != 0)
    {
      result = swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      v9 = *(v3 + 40);
      if (v9)
      {
        v10 = v9;
        if ([v10 groupsByEvent])
        {
          type metadata accessor for ModelContext(0);
          sub_197521DBC();
        }
      }

      result = swift_unknownObjectRelease();
      *(v4 + 58) = 1;
    }

    *(v4 + 48) = 1;
  }

  return result;
}

uint64_t sub_1974327FC(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = *v3;
  sub_197522A5C();
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a3, &v29);
  v7 = v29;
  if (v30)
  {
    if (v30 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v7, 1);
      sub_197452CB8(&v31);
      sub_1974028C8(v7, 1);
      sub_1974028C8(v7, 1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v7, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
      sub_1974028C8(v7, 2);
      sub_1974028C8(v7, 2);
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v7, 0);
    sub_197521F4C();
    sub_1974028C8(v7, 0);
    sub_1974028C8(v7, 0);
  }

  v8 = sub_197522A9C();
  v9 = -1 << *(v27 + 32);
  v10 = v8 & ~v9;
  if (((*(v27 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_18:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v23;
    v21 = swift_unknownObjectRetain();
    sub_197431FA4(v21, a3, v10, isUniquelyReferenced_nonNull_native);
    *v23 = v31;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v25 = ~v9;
  v26 = a3;
  while (1)
  {
    v11 = *(*(v27 + 48) + 16 * v10 + 8);
    v12 = swift_getObjectType();
    swift_unknownObjectRetain();
    v28 = v11;
    PersistentModel.persistentModelID.getter(v12, v11, &v31);
    v13 = v31;
    v14 = v32;
    PersistentModel.persistentModelID.getter(ObjectType, a3, &v29);
    v15 = v29;
    v16 = v30;
    v17 = sub_19742291C(v13, v14, v29, v30);
    sub_1974028C8(v15, v16);
    sub_1974028C8(v13, v14);
    if ((v17 & 1) == 0)
    {
      swift_unknownObjectRelease();
      a3 = v26;
      goto LABEL_9;
    }

    v18 = PersistentModel.modelContext.getter(v12, v28);
    a3 = v26;
    v19 = PersistentModel.modelContext.getter(ObjectType, v26);
    swift_unknownObjectRelease();
    if (!v18)
    {
      break;
    }

    if (!v19)
    {
      goto LABEL_16;
    }

    if (v18 == v19)
    {
      goto LABEL_19;
    }

LABEL_9:
    v10 = (v10 + 1) & v25;
    if (((*(v27 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (v19)
  {
LABEL_16:

    goto LABEL_9;
  }

LABEL_19:
  swift_unknownObjectRelease();
  *a1 = *(*(v27 + 48) + 16 * v10);
  swift_unknownObjectRetain();
  return 0;
}

uint64_t sub_197432B8C(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return v2;
}

uint64_t sub_197432BB8(void *a1)
{
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 240);
  type metadata accessor for Schema.Entity();
  v5 = sub_1973FDF38(v3, v4);
  swift_beginAccess();
  v92 = v5;
  v6 = *(v5 + 80);
  if ((v6 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Attribute();
    sub_19751E7F8(&qword_1ED7CA320, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
    sub_197521C1C();
    v6 = v103;
    v7 = v104;
    v8 = v105;
    v9 = v106;
    v10 = v107;
  }

  else
  {
    v11 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v6 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  while (1)
  {
    if (v6 < 0)
    {
      v20 = sub_19752212C();
      if (!v20)
      {
        goto LABEL_38;
      }

      *&v108 = v20;
      type metadata accessor for Schema.Attribute();
      swift_dynamicCast();
      v19 = v97;
      v17 = v9;
      v18 = v10;
      if (!v97)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v15 = v9;
      v16 = v10;
      v17 = v9;
      if (!v10)
      {
        while (1)
        {
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v17 >= v14)
          {
            goto LABEL_38;
          }

          v16 = *(v7 + 8 * v17);
          ++v15;
          if (v16)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        *&v108 = 0;
        *(&v108 + 1) = 0xE000000000000000;
        sub_1975221EC();

        *&v108 = 0xD000000000000029;
        *(&v108 + 1) = 0x8000000197527BD0;
        MEMORY[0x19A8DFF80](v9, i);
        while (1)
        {
LABEL_87:
          sub_1975223EC();
          __break(1u);
LABEL_88:
          *&v101 = 0;
          *(&v101 + 1) = 0xE000000000000000;
          sub_1975221EC();

          *&v101 = 0xD000000000000029;
          *(&v101 + 1) = 0x8000000197527BD0;
          v90 = v9;
          v91 = i;
LABEL_86:
          MEMORY[0x19A8DFF80](v90, v91);
        }
      }

LABEL_14:
      v18 = (v16 - 1) & v16;
      v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

      if (!v19)
      {
        goto LABEL_38;
      }
    }

    v93 = v18;
    v21 = *__swift_project_boxed_opaque_existential_1Tm_5(a1, a1[3]);
    swift_beginAccess();
    if (*(v21 + 16))
    {
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);

      v24 = sub_1973F4028(v22, v23);
      v26 = v25;

      if (v26)
      {
        break;
      }
    }

    v101 = 0u;
    v102 = 0u;
LABEL_28:
    sub_1973FE5EC(&v101, &qword_1EAF2AF20, &unk_19752F320);
    v38 = *(v96 + 16);
    v9 = *(v19 + 16);
    i = *(v19 + 24);
    v97 = 0u;
    v98 = 0u;
    v39 = *(v38 + 16);
    v40 = *(v39 + 16);

    if (!v40)
    {
      goto LABEL_84;
    }

    v41 = sub_1973F4028(v9, i);
    if ((v42 & 1) == 0)
    {
      goto LABEL_84;
    }

    v43 = v41;

    i = *(*(v39 + 56) + 8 * v43);
    swift_beginAccess();
    v44 = *(v38 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v38 + 32) = v44;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((i & 0x8000000000000000) != 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v44 = sub_19751C104(v44);
      *(v38 + 32) = v44;
      if ((i & 0x8000000000000000) != 0)
      {
        goto LABEL_78;
      }
    }

    if (i >= v44[2])
    {
      goto LABEL_79;
    }

    sub_1973F7958(&v97, &v44[4 * i + 4]);
    *(v38 + 32) = v44;
    swift_endAccess();

    sub_1973FE5EC(&v97, &qword_1EAF2AF20, &unk_19752F320);
LABEL_8:

    v9 = v17;
    v10 = v93;
  }

  sub_1973FDED4(*(v21 + 56) + 48 * v24, &v97);
  v27 = *(&v98 + 1);
  v28 = __swift_project_boxed_opaque_existential_1Tm_5(&v97, *(&v98 + 1));
  *(&v102 + 1) = v27;
  boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(&v101);
  (*(*(v27 - 8) + 16))(boxed_opaque_existential_1Tm_1, v28, v27);
  __swift_destroy_boxed_opaque_existential_1Tm_7(&v97);
  if (!*(&v102 + 1))
  {
    goto LABEL_28;
  }

  sub_1974028B8(&v101, &v108);
  v30 = *(v96 + 16);
  v9 = *(v19 + 16);
  i = *(v19 + 24);
  sub_197404860(&v108, &v97);
  v31 = *(v30 + 16);
  v32 = *(v31 + 16);

  if (!v32)
  {
    goto LABEL_88;
  }

  v33 = sub_1973F4028(v9, i);
  if ((v34 & 1) == 0)
  {
    goto LABEL_88;
  }

  v35 = v33;

  i = *(*(v31 + 56) + 8 * v35);
  swift_beginAccess();
  v36 = *(v30 + 32);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  *(v30 + 32) = v36;
  if (v37)
  {
    if ((i & 0x8000000000000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

  v36 = sub_19751C104(v36);
  *(v30 + 32) = v36;
  if ((i & 0x8000000000000000) == 0)
  {
LABEL_25:
    if (i >= v36[2])
    {
      goto LABEL_82;
    }

    sub_1973F7958(&v97, &v36[4 * i + 4]);
    *(v30 + 32) = v36;
    swift_endAccess();

    sub_1973FE5EC(&v97, &qword_1EAF2AF20, &unk_19752F320);
    __swift_destroy_boxed_opaque_existential_1Tm_7(&v108);
    goto LABEL_8;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  sub_1973FF47C(v6);
  *(v96 + 48) = 1;
  *(sub_197512E44() + 80) = 0;

  swift_beginAccess();
  v46 = *(v92 + 88);
  if ((v46 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_19751E7F8(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
    sub_197521C1C();
    v47 = *(&v108 + 1);
    v46 = v108;
    v48 = v109;
    v49 = v110;
    v50 = v111;
  }

  else
  {
    v51 = -1 << *(v46 + 32);
    v47 = v46 + 56;
    v48 = ~v51;
    v52 = -v51;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    else
    {
      v53 = -1;
    }

    v50 = v53 & *(v46 + 56);

    v49 = 0;
  }

  v54 = (v48 + 64) >> 6;
  while (2)
  {
    if (v46 < 0)
    {
      v59 = sub_19752212C();
      if (!v59)
      {
        goto LABEL_75;
      }

      *&v101 = v59;
      type metadata accessor for Schema.Relationship();
      swift_dynamicCast();
      v58 = v97;
      i = v49;
      v57 = v50;
      if (!v97)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v55 = v49;
      v56 = v50;
      for (i = v49; !v56; ++v55)
      {
        i = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_77;
        }

        if (i >= v54)
        {
          goto LABEL_75;
        }

        v56 = *(v47 + 8 * i);
      }

      v57 = (v56 - 1) & v56;
      v58 = *(*(v46 + 48) + ((i << 9) | (8 * __clz(__rbit64(v56)))));

      if (!v58)
      {
        goto LABEL_75;
      }
    }

    v94 = v57;
    v60 = *__swift_project_boxed_opaque_existential_1Tm_5(a1, a1[3]);
    swift_beginAccess();
    if (!*(v60 + 16) || (v61 = *(v58 + 16), v62 = *(v58 + 24), , v63 = sub_1973F4028(v61, v62), v65 = v64, , (v65 & 1) == 0))
    {
      v99 = 0u;
      v100 = 0u;
LABEL_65:
      sub_1973FE5EC(&v99, &qword_1EAF2AF20, &unk_19752F320);
      v79 = *(v96 + 16);
      v9 = *(v58 + 16);
      v80 = *(v58 + 24);
      v97 = 0u;
      v98 = 0u;
      v81 = *(v79 + 16);
      v82 = *(v81 + 16);

      if (!v82 || (v83 = sub_1973F4028(v9, v80), (v84 & 1) == 0))
      {
        *&v101 = 0;
        *(&v101 + 1) = 0xE000000000000000;
        sub_1975221EC();

        *&v101 = 0xD000000000000029;
        *(&v101 + 1) = 0x8000000197527BD0;
        v90 = v9;
        v91 = v80;
        goto LABEL_86;
      }

      v85 = v83;

      v86 = *(*(v81 + 56) + 8 * v85);
      swift_beginAccess();
      v87 = *(v79 + 32);
      v88 = swift_isUniquelyReferenced_nonNull_native();
      *(v79 + 32) = v87;
      if (v88)
      {
        if ((v86 & 0x8000000000000000) != 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v87 = sub_19751C104(v87);
        *(v79 + 32) = v87;
        if ((v86 & 0x8000000000000000) != 0)
        {
          goto LABEL_80;
        }
      }

      if (v86 >= v87[2])
      {
        goto LABEL_81;
      }

      sub_1973F7958(&v97, &v87[4 * v86 + 4]);
      *(v79 + 32) = v87;
      swift_endAccess();

      sub_1973FE5EC(&v97, &qword_1EAF2AF20, &unk_19752F320);
      goto LABEL_45;
    }

    sub_1973FDED4(*(v60 + 56) + 48 * v63, &v97);
    v66 = *(&v98 + 1);
    v67 = __swift_project_boxed_opaque_existential_1Tm_5(&v97, *(&v98 + 1));
    *(&v100 + 1) = v66;
    v68 = __swift_allocate_boxed_opaque_existential_1Tm_1(&v99);
    (*(*(v66 - 8) + 16))(v68, v67, v66);
    __swift_destroy_boxed_opaque_existential_1Tm_7(&v97);
    if (!*(&v100 + 1))
    {
      goto LABEL_65;
    }

    sub_1974028B8(&v99, &v101);
    v69 = *(v96 + 16);
    v9 = *(v58 + 16);
    v70 = *(v58 + 24);
    sub_197404860(&v101, &v97);
    v71 = *(v69 + 16);
    v72 = *(v71 + 16);

    if (!v72 || (v73 = sub_1973F4028(v9, v70), (v74 & 1) == 0))
    {
      *&v99 = 0;
      *(&v99 + 1) = 0xE000000000000000;
      sub_1975221EC();

      *&v99 = 0xD000000000000029;
      *(&v99 + 1) = 0x8000000197527BD0;
      MEMORY[0x19A8DFF80](v9, v70);
      goto LABEL_87;
    }

    v75 = v73;

    v76 = *(*(v71 + 56) + 8 * v75);
    swift_beginAccess();
    v77 = *(v69 + 32);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    *(v69 + 32) = v77;
    if (v78)
    {
      if ((v76 & 0x8000000000000000) != 0)
      {
        goto LABEL_74;
      }

LABEL_62:
      if (v76 >= v77[2])
      {
        goto LABEL_83;
      }

      sub_1973F7958(&v97, &v77[4 * v76 + 4]);
      *(v69 + 32) = v77;
      swift_endAccess();

      sub_1973FE5EC(&v97, &qword_1EAF2AF20, &unk_19752F320);
      __swift_destroy_boxed_opaque_existential_1Tm_7(&v101);
LABEL_45:

      v49 = i;
      v50 = v94;
      continue;
    }

    break;
  }

  v77 = sub_19751C104(v77);
  *(v69 + 32) = v77;
  if ((v76 & 0x8000000000000000) == 0)
  {
    goto LABEL_62;
  }

LABEL_74:
  __break(1u);
LABEL_75:
  sub_1973FF47C(v46);
}

uint64_t sub_19743371C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  PersistentModel.persistentModelID.getter(a2, a3, &v21);
  v8 = v21;
  v9 = v22;
  v10 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_197403C30(v8, v9);
    if (v13)
    {
      sub_19742FE50(*(v11 + 56) + 32 * v12, &v25);
      sub_1974028C8(v8, v9);

      v14 = *(&v25 + 1) != 1;
      if (v25)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  sub_1974028C8(v8, v9);
  v14 = 0;
  v25 = xmmword_19752EA60;
  v26 = 0;
  v27 = 0;
LABEL_7:
  if (!v14)
  {
    sub_1974050A8(&v25, &qword_1EAF2B640, &unk_19752F160);
    return sub_1974339E4(a1, v4, a2, a3);
  }

LABEL_9:
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = *(&v25 + 1);
  sub_1974050A8(&v25, &qword_1EAF2B640, &unk_19752F160);
  if (!Strong)
  {
    return sub_1974339E4(a1, v4, a2, a3);
  }

  if (Strong == a1)
  {
    return swift_unknownObjectRelease();
  }

  *&v25 = 0;
  *(&v25 + 1) = 0xE000000000000000;
  v18 = Strong;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197527560);
  PersistentModel.persistentModelID.getter(a2, a3, &v21);
  v19 = v21;
  v20 = v22;
  v23 = v21;
  v24 = v22;
  sub_19752235C();
  sub_1974028C8(v19, v20);
  MEMORY[0x19A8DFF80](10, 0xE100000000000000);
  v21 = v18;
  v22 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  sub_19752235C();
  MEMORY[0x19A8DFF80](10, 0xE100000000000000);
  v21 = a1;
  sub_1975227FC();
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974339E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  PersistentModel.persistentModelID.getter(a3, a4, &v18);
  v7 = v18;
  v8 = BYTE8(v18);
  v9 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v10 = *(a2 + v9);
  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = sub_197403C30(v7, v8);
  if ((v13 & 1) == 0)
  {

    LODWORD(v11) = 0;
LABEL_6:
    v18 = xmmword_19752EA60;
    v19 = 0;
    v20 = 0;
LABEL_7:
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_19742FE50(*(v10 + 56) + 32 * v12, &v18);

  LODWORD(v11) = *(&v18 + 1) != 1;
  if (!v18)
  {
    goto LABEL_7;
  }

LABEL_8:
  swift_unknownObjectWeakLoadStrong();
LABEL_9:
  sub_1974050A8(&v18, &qword_1EAF2B640, &unk_19752F160);
  if (PersistentModel.modelContext.getter(a3, a4))
  {

    PersistentModel.modelContext.getter(a3, a4);
  }

  else
  {
    sub_197452A84(a2, a3, a4);
  }

  v14 = sub_197432B8C(a3, a4);
  sub_197433EE8(v14 & 0xFFF7FF7F, a3, a4);
  *(&v18 + 1) = 0;
  swift_unknownObjectWeakInit();
  *(&v18 + 1) = a4;
  swift_unknownObjectWeakAssign();
  PersistentModel.persistentModelID.getter(a3, a4, &v16);
  v19 = v16;
  v20 = v17;
  swift_beginAccess();
  sub_197433D4C(&v18, v7, v8);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

id sub_197433C04(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_197403C30(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_19747B580();
      v11 = v19;
      goto LABEL_8;
    }

    sub_19743EFD0(v16, a4 & 1);
    v11 = sub_197403C30(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 32 * v11;

    return sub_19744C9D4(a1, v22);
  }

  else
  {
    sub_1974341D0(v11, a2, a3, a1, v21);

    return sub_1974028EC(a2, a3);
  }
}

void sub_197433D4C(void *a1, void *a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1[1] == 1;
  }

  if (v6)
  {
    sub_197448384(a1, &qword_1EAF2B640, &unk_19752F160);
    sub_197459F50(a2, a3, v9);
    sub_1974028C8(a2, a3);
    sub_197448384(v9, &qword_1EAF2B640, &unk_19752F160);
  }

  else
  {
    sub_197433E8C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_197433C04(v9, a2, a3, isUniquelyReferenced_nonNull_native);
    sub_1974028C8(a2, a3);
    *v3 = v8;
  }
}

uint64_t sub_197433EE8(int a1, uint64_t a2, uint64_t a3)
{
  *(sub_1973FE074(a2, a3) + 24) = a1;
}

id sub_197433F28@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  v3 = *(v1 + 32);
  *(a1 + 8) = v3;
  return sub_1974ADEAC(v2, v3);
}

void *sub_197433FA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_0(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1974341D0(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = a5[6] + 16 * a1;
  *v6 = a2;
  *(v6 + 8) = a3;
  result = sub_197433E8C(a4, a5[7] + 32 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_197434244@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = sub_197522AEC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_getAssociatedTypeWitness() != a2)
  {
    v30 = a5;
    v17 = sub_1973FE074(a1, a3);
    swift_beginAccess();
    v18 = *(v17 + 96);

    if (v18)
    {
      if (*(v18 + 16) && (v19 = sub_1973F7950(a2, a4), (v20 & 1) != 0))
      {
        sub_197480E74(*(v18 + 56) + 16 * v19, &v33);

        v21 = *(&v33 + 1) != 1;
        if (v33)
        {
          goto LABEL_13;
        }
      }

      else
      {

        v21 = 0;
        v33 = xmmword_19752EA60;
      }

      if (v21)
      {
LABEL_13:
        Strong = swift_unknownObjectWeakLoadStrong();
        v26 = *(&v33 + 1);
        sub_1973F7E04(&v33, &qword_1EAF2B660, qword_19752F190);
        if (Strong)
        {
          *&v33 = Strong;
          *(&v33 + 1) = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9C8, &qword_19752FE28);
          v32 = a2;
          swift_getExtendedExistentialTypeMetadata();
          if (swift_dynamicCast())
          {
            if (v35)
            {
              v22 = v34;
              v23 = v30;
              return sub_197434660(v22, v23);
            }
          }
        }

        goto LABEL_17;
      }

      sub_1973F7E04(&v33, &qword_1EAF2B660, qword_19752F190);
    }

LABEL_17:
    v35 = a1;
    v34[0] = v6;
    swift_unknownObjectRetain();
    sub_197522ABC();
    sub_1974C24A0(v16, v6, a2, a4, a1, a2, a3, a4, v30);
    return (*(v13 + 8))(v16, v12);
  }

  (*(a3 + 56))(v34, a1, a3);
  *&v33 = a1;
  swift_getExtendedExistentialTypeMetadata();
  *&v33 = a2;
  swift_getExtendedExistentialTypeMetadata();
  if (swift_dynamicCast())
  {
    v22 = &v31;
    v23 = a5;
    return sub_197434660(v22, v23);
  }

  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000023, 0x80000001975284D0);
  v27 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v27);

  MEMORY[0x19A8DFF80](0xD000000000000011, 0x8000000197528500);
  v28 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v28);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197434660(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_197434728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_197404860(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B688, &qword_19752F360);
  if (swift_dynamicCast())
  {
    sub_197434908(&v11, v14);
    sub_197413BF4(v14, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B698, &qword_19752F370);
    if (swift_dynamicCast())
    {
      v4 = *(&v12 + 1);
      v5 = v13;
      __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
      (*(v5 + 8))(&v9, v4, v5);
      __swift_destroy_boxed_opaque_existential_1(&v11);
      if (*(&v10 + 1))
      {
        __swift_destroy_boxed_opaque_existential_1(v14);
        return sub_1974028B8(&v9, a2);
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
      sub_1973F7DA4(&v11, &qword_1EAF2B6A0, &qword_19752F378);
      v9 = 0u;
      v10 = 0u;
    }

    v7 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(a2 + 24) = sub_1974ADEC0(0, &qword_1ED7C7900, 0x1E695DFB0);
    *a2 = v7;
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    if (*(&v10 + 1))
    {
      return sub_1973F7DA4(&v9, &qword_1EAF2AF20, &unk_19752F320);
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1973F7DA4(&v11, &qword_1EAF2B690, &qword_19752F368);
    return sub_197404860(a1, a2);
  }

  return result;
}

uint64_t sub_197434908(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_197434920(uint64_t a1, uint64_t a2, void *a3, void *a4, void **a5)
{
  v211 = a5;
  v221 = a4;
  v226 = a3;
  v230 = a2;
  v246 = *MEMORY[0x1E69E9840];
  v214 = sub_1975211FC();
  v206 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214, v6);
  v213 = &v205 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFC0, &qword_19752C728);
  MEMORY[0x1EEE9AC00](v8, v9);
  v220 = &v205 - v10;
  v11 = sub_197520BFC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v219 = &v205 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1975212CC();
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFC8, &qword_19752C730);
  inited = swift_initStackObject();
  v18 = MEMORY[0x1E69E7CC8];
  inited[2] = MEMORY[0x1E69E7CC8];
  inited[3] = v18;
  inited[4] = MEMORY[0x1E69E7CD0];
  inited[5] = v16;
  v210 = inited;
  v19 = swift_allocBox();
  v212 = v12;
  v20 = *(v12 + 56);
  v207 = v21;
  v209 = v11;
  v20(v21, 1, 1, v11);
  v22 = objc_opt_self();
  v23 = v15;
  v208 = v16;

  v217 = v22;
  v24 = [v22 defaultCenter];
  sub_1973F3D34(0, &qword_1ED7C7908, 0x1E695D628);
  v25 = sub_197521E6C();
  v244 = sub_1974457B8;
  v245 = v19;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v242 = sub_197444BE4;
  v243 = &block_descriptor_99;
  v26 = _Block_copy(&aBlock);
  v27 = v23;
  v218 = v19;

  v216 = [v24 addObserverForName:v25 object:v27 queue:0 usingBlock:v26];
  _Block_release(v26);

  v231 = v27;
  v28 = *(v230 + OBJC_IVAR____TtC9SwiftData12DefaultStore_store);
  if (!v28)
  {
    goto LABEL_144;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFD0, &qword_19752C738);
  v29 = swift_allocObject();
  v29[2] = v18;
  v30 = v29 + 2;
  v29[3] = v18;
  v29[4] = MEMORY[0x1E69E7CD0];
  v31 = MEMORY[0x1E69E7CC0];
  v29[5] = v18;
  v29[6] = v31;
  v233 = v29;
  v32 = *v226;
  v225 = *(*v226 + 16);
  v215 = v28;
  if (v225)
  {
    v222 = v28;
    swift_beginAccess();
    v33 = 0;
    v34 = (v32 + 48);
    v235 = MEMORY[0x1E69E7CC8];
    v35 = v231;
    v223 = v30;
    v224 = v32;
    while (1)
    {
      if (v33 >= *(v32 + 16))
      {
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
        __break(1u);
      }

      v229 = v33;
      v36 = *(v34 - 1);
      v37 = *v34;
      v38 = *v30;
      v39 = *(*v30 + 16);
      v227 = *(v34 - 2);

      sub_1974028EC(v36, v37);
      v232 = v36;
      if (v39)
      {

        v40 = sub_197403C30(v36, v37);
        if (v41)
        {
          v42 = *(*(v38 + 56) + 8 * v40);

          v43 = [v35 objectWithID_];
          goto LABEL_12;
        }
      }

      *&aBlock = v36;
      BYTE8(aBlock) = v37;
      v43 = sub_197440E94(&aBlock, v35);
      v44 = [v43 objectID];
      v45 = [v44 isTemporaryID];

      if (v45)
      {
        [v35 assignObject:v43 toPersistentStore:v222];
      }

      v42 = [v43 objectID];
      v36 = v232;
      sub_19744191C(v232, v37, v42);
LABEL_12:

      v46 = v43;
      sub_1974028EC(v36, v37);
      v47 = v235;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v47;
      sub_197424C58(v46, v36, v37, isUniquelyReferenced_nonNull_native);
      sub_1974028C8(v36, v37);
      v235 = aBlock;
      v49 = [v46 entity];
      v50 = [v49 name];

      if (!v50)
      {
        goto LABEL_138;
      }

      v228 = v34;
      v51 = sub_1975217BC();
      v53 = v52;

      v54 = *(*(v230 + 32) + 72);
      if (!*(v54 + 16) || (v55 = v223, , v56 = sub_1973F4028(v51, v53), v58 = v57, , (v58 & 1) == 0))
      {

LABEL_138:
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197523DF0);
        *&v239 = v230;
        type metadata accessor for DefaultStore(0);
        sub_19752235C();
        MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
        v196 = [v46 description];
        v197 = sub_1975217BC();
        v199 = v198;

        MEMORY[0x19A8DFF80](v197, v199);

        while (1)
        {
LABEL_144:
          sub_1975223EC();
          __break(1u);
        }
      }

      v59 = *(*(v54 + 56) + 8 * v56);

      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFD8, &qword_19752C740);
      v61 = swift_allocObject();
      v62 = MEMORY[0x1E69E7CC0];
      v61[2] = MEMORY[0x1E69E7CC0];
      v63 = v46;

      v64 = v233;

      v61[3] = sub_197441730(v62);
      v61[4] = v64;
      v61[5] = v63;
      v61[6] = v59;
      v65 = v232;
      *&v239 = v227;
      *(&v239 + 1) = v232;
      LOBYTE(v240) = v37;
      v243 = v60;
      v244 = sub_1974717A0(qword_1ED7C7A18, &qword_1EAF2AFD8, &qword_19752C740, &unk_19752E438);
      *&aBlock = v61;

      v66 = v234;
      DefaultSnapshot.encode(to:)(&aBlock);
      v234 = v66;
      if (v66)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
        swift_unexpectedError();
        __break(1u);
LABEL_142:

LABEL_143:
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197523DF0);
        *&v239 = v230;
        type metadata accessor for DefaultStore(0);
        sub_19752235C();
        MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
        v200 = [v55 description];
        v201 = sub_1975217BC();
        v203 = v202;

        MEMORY[0x19A8DFF80](v201, v203);

        goto LABEL_144;
      }

      v33 = v229 + 1;

      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);

      sub_1974028C8(v65, v37);
      v34 = v228 + 24;
      v35 = v231;
      v30 = v55;
      v32 = v224;
      if (v225 == v33)
      {
        goto LABEL_19;
      }
    }
  }

  v67 = v28;
  v235 = MEMORY[0x1E69E7CC8];
  v35 = v231;
LABEL_19:
  v68 = v226;
  v69 = v226[1];
  v225 = *(v69 + 16);
  if (v225)
  {
    v70 = 0;
    v71 = (v69 + 48);
    v224 = v69;
    while (1)
    {
      if (v70 >= *(v69 + 16))
      {
        goto LABEL_131;
      }

      v72 = *(v71 - 1);
      v228 = *(v71 - 2);
      v229 = v71;
      v73 = *v71;
      *&aBlock = v72;
      BYTE8(aBlock) = v73;

      sub_1974028EC(v72, v73);
      sub_1974028EC(v72, v73);
      v55 = sub_197440E94(&aBlock, v35);
      sub_1974028C8(v72, v73);
      v74 = [v55 entity];
      v75 = [v74 name];

      if (!v75)
      {
        goto LABEL_143;
      }

      v232 = v70;
      v76 = sub_1975217BC();
      v78 = v77;

      v79 = *(*(v230 + 32) + 72);
      if (!*(v79 + 16))
      {
        goto LABEL_142;
      }

      v80 = sub_1973F4028(v76, v78);
      v82 = v81;

      if ((v82 & 1) == 0)
      {
        goto LABEL_142;
      }

      v83 = *(*(v79 + 56) + 8 * v80);

      v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFD8, &qword_19752C740);
      v84 = swift_allocObject();
      v85 = MEMORY[0x1E69E7CC0];
      v84[2] = MEMORY[0x1E69E7CC0];
      v86 = v233;

      v87 = v55;
      v84[3] = sub_197441730(v85);
      v84[4] = v86;
      v84[5] = v87;
      v84[6] = v83;
      sub_1974028EC(v72, v73);
      v55 = v87;
      v88 = v235;
      v89 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v88;
      sub_197424C58(v55, v72, v73, v89);
      sub_1974028C8(v72, v73);
      v235 = aBlock;
      sub_1974028EC(v72, v73);

      v90 = [v55 objectID];
      sub_19744191C(v72, v73, v90);

      sub_1974028C8(v72, v73);
      *&v239 = v228;
      *(&v239 + 1) = v72;
      LOBYTE(v240) = v73;
      v243 = v227;
      v244 = sub_1974717A0(qword_1ED7C7A18, &qword_1EAF2AFD8, &qword_19752C740, &unk_19752E438);
      *&aBlock = v84;

      v91 = v234;
      DefaultSnapshot.encode(to:)(&aBlock);
      v234 = v91;
      if (v91)
      {
        break;
      }

      v70 = v232 + 1;

      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);

      sub_1974028C8(v72, v73);
      v71 = (v229 + 24);
      v68 = v226;
      v35 = v231;
      v69 = v224;
      if (v225 == v70)
      {
        goto LABEL_27;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    swift_unexpectedError();
    __break(1u);
    goto LABEL_142;
  }

LABEL_27:
  v92 = v68[2];
  v93 = *(v92 + 16);
  if (v93)
  {
    v94 = (v92 + 48);
    do
    {
      v100 = *(v94 - 2);
      v99 = *(v94 - 1);
      v101 = *v94;
      if (*v94)
      {
        v232 = *(v94 - 2);
        if (v101 == 1)
        {
          v102 = v99[33];

          sub_1974028EC(v99, 1);
          sub_1974028EC(v99, 1);
          if ((v102 & 1) == 0)
          {
            v104 = [v35 persistentStoreCoordinator];
            if (!v104)
            {
              goto LABEL_136;
            }

            v106 = v104;
            sub_19750ACDC(v104, v105);
            v96 = sub_197521EDC();

            if (!v96)
            {
              goto LABEL_135;
            }

            goto LABEL_42;
          }

          v95 = objc_opt_self();
        }

        else
        {
          v95 = objc_opt_self();

          sub_1974028EC(v99, 2);
          sub_1974028EC(v99, 2);
          sub_19750A588();
        }
      }

      else
      {

        sub_1974028EC(v99, 0);
        sub_1974028EC(v99, 0);
        if (![v99 isTemporaryID])
        {
          sub_1974028EC(v99, 0);
          v96 = v99;
LABEL_42:
          v97 = [v35 objectWithID_];
          goto LABEL_31;
        }

        v232 = v100;
        v95 = objc_opt_self();
        v103 = [v99 entityName];
        sub_1975217BC();

        v35 = v231;
      }

      v96 = sub_19752178C();

      v97 = [v95 insertNewObjectForEntityForName:v96 inManagedObjectContext:v35];
LABEL_31:
      v94 += 24;
      v98 = v97;

      sub_1974028C8(v99, v101);
      [v35 deleteObject_];

      sub_1974028C8(v99, v101);
      --v93;
    }

    while (v93);
  }

  *&aBlock = 0;
  if (([v35 save_] & 1) == 0)
  {
    v115 = aBlock;

    v116 = sub_1975211DC();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_19752C280;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_1975221EC();
    *&v239 = v230;
    type metadata accessor for DefaultStore(0);
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000019, 0x8000000197524560);
    *&v239 = v116;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
    sub_19752235C();
    v118 = aBlock;
    *(v117 + 56) = MEMORY[0x1E69E6158];
    *(v117 + 32) = v118;
    sub_197522A3C();

    type metadata accessor for CoreDataErrorSanitizer();
    v119 = sub_1975211CC();
    sub_197465B5C(v119);

    swift_willThrow();

    v120 = [v217 defaultCenter];
    [v120 removeObserver_];

    swift_unknownObjectRelease();

    return;
  }

  v107 = (v235 + 64);
  v108 = 1 << *(v235 + 32);
  v109 = -1;
  if (v108 < 64)
  {
    v109 = ~(-1 << v108);
  }

  v110 = v109 & *(v235 + 64);
  v111 = (v108 + 63) >> 6;
  v112 = aBlock;

  v113 = 0;
  v114 = v220;
  v227 = v111;
  v228 = v107;
LABEL_52:
  if (v110)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v121 = v113 + 1;
    if (__OFADD__(v113, 1))
    {
      goto LABEL_132;
    }

    if (v121 >= v111)
    {
      break;
    }

    v110 = *&v107[8 * v121];
    ++v113;
    if (v110)
    {
      v113 = v121;
LABEL_57:
      v122 = __clz(__rbit64(v110));
      v110 &= v110 - 1;
      v123 = v122 | (v113 << 6);
      v124 = *(v235 + 48) + 16 * v123;
      v125 = *v124;
      v126 = *(v124 + 8);
      v127 = *(*(v235 + 56) + 8 * v123);
      sub_1974028EC(v125, v126);
      v229 = v127;
      v128 = [v127 objectID];
      v232 = v128;
      if (!v126)
      {
        sub_1973F3D34(0, &qword_1ED7C8630, 0x1E69E58C0);
        sub_1974028EC(v125, 0);
        v134 = v128;
        v135 = sub_197521F3C();
        sub_1974028C8(v125, 0);

        if ((v135 & 1) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_50;
      }

      type metadata accessor for PersistentIdentifierImplementation();
      swift_initStackObject();
      sub_1974028EC(v125, v126);
      v129 = v128;
      v130 = sub_19750C5E0(v129);
      if (v126 == 2)
      {
        v131 = swift_allocObject();
        *(v131 + 40) = 0;
        *(v131 + 48) = 0;
        *(v131 + 56) = sub_19750A470();
        *(v131 + 64) = v132;
        *(v131 + 72) = sub_19750A588();
        *(v131 + 80) = v133;
        *(v131 + 16) = 0;
        *(v131 + 24) = 0;
        *(v131 + 32) = 256;
      }

      else
      {

        v131 = v125;
      }

      v136 = v130[7] == *(v131 + 56) && v130[8] == *(v131 + 64);
      if (!v136 && (sub_19752282C() & 1) == 0 || (v130[9] == *(v131 + 72) ? (v137 = v130[10] == *(v131 + 80)) : (v137 = 0), !v137 && (sub_19752282C() & 1) == 0))
      {
LABEL_81:

        goto LABEL_82;
      }

      v138 = v130[3];
      v139 = *(v131 + 24);
      if (!v138)
      {

        if (!v139)
        {
LABEL_49:
          sub_1974028C8(v125, v126);

          v114 = v220;
LABEL_50:

          goto LABEL_51;
        }

LABEL_82:
        sub_1974028C8(v125, v126);

        v114 = v220;
        goto LABEL_83;
      }

      if (!v139)
      {
        goto LABEL_81;
      }

      if (v130[2] == *(v131 + 16) && v138 == v139)
      {

        goto LABEL_49;
      }

      v141 = sub_19752282C();

      sub_1974028C8(v125, v126);

      v114 = v220;
      if (v141)
      {
        goto LABEL_50;
      }

LABEL_83:
      sub_1974028EC(v125, v126);
      v142 = v221;
      v143 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = *v142;
      v144 = aBlock;
      *v142 = 0x8000000000000000;
      v145 = sub_197403C30(v125, v126);
      v147 = *(v144 + 16);
      v148 = (v146 & 1) == 0;
      v149 = __OFADD__(v147, v148);
      v150 = v147 + v148;
      if (v149)
      {
        goto LABEL_133;
      }

      v151 = v146;
      if (*(v144 + 24) >= v150)
      {
        if ((v143 & 1) == 0)
        {
          v162 = v145;
          sub_19747ADC4();
          v145 = v162;
        }
      }

      else
      {
        sub_197458C84(v150, v143);
        v145 = sub_197403C30(v125, v126);
        if ((v151 & 1) != (v152 & 1))
        {
          sub_1975229CC();
          __break(1u);
          goto LABEL_146;
        }
      }

      v153 = v232;
      v154 = aBlock;
      if (v151)
      {
        v155 = *(aBlock + 56) + 16 * v145;
        v156 = *v155;
        *v155 = v232;
        v157 = *(v155 + 8);
        *(v155 + 8) = 0;
        sub_1974028C8(v156, v157);
        sub_1974028C8(v125, v126);
        goto LABEL_93;
      }

      *(aBlock + 8 * (v145 >> 6) + 64) |= 1 << v145;
      v158 = v154[6] + 16 * v145;
      *v158 = v125;
      *(v158 + 8) = v126;
      v159 = v154[7] + 16 * v145;
      *v159 = v153;
      *(v159 + 8) = 0;
      v160 = v154[2];
      v149 = __OFADD__(v160, 1);
      v161 = v160 + 1;
      if (v149)
      {
        goto LABEL_134;
      }

      v154[2] = v161;
LABEL_93:
      *v221 = v154;
LABEL_51:
      sub_1974028C8(v125, v126);

      v35 = v231;
      v111 = v227;
      v107 = v228;
      goto LABEL_52;
    }
  }

  v163 = v207;
  swift_beginAccess();
  sub_1973FE0E4(v163, v114, &qword_1EAF2AFC0, &qword_19752C728);
  v164 = v212;
  v165 = v209;
  if ((*(v212 + 48))(v114, 1, v209) == 1)
  {
    sub_19740C044(v114, &qword_1EAF2AFC0, &qword_19752C728);
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197524580);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE80, &qword_19752C298);
    sub_19752235C();
    goto LABEL_144;
  }

  (*(v164 + 32))(v219, v114, v165);
  v166 = sub_197520BEC();
  v167 = v210;
  if (!v166)
  {
    goto LABEL_104;
  }

  v168 = v166;
  v237 = sub_1975217BC();
  v238 = v169;
  sub_19752218C();
  if (!*(v168 + 16) || (v170 = sub_197445520(&aBlock), (v171 & 1) == 0))
  {

    sub_197420CA4(&aBlock);
LABEL_104:
    v239 = 0u;
    v240 = 0u;
    goto LABEL_105;
  }

  sub_197404860(*(v168 + 56) + 32 * v170, &v239);
  sub_197420CA4(&aBlock);

  if (!*(&v240 + 1))
  {
LABEL_105:
    sub_19740C044(&v239, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_106;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFE0, &qword_19752C748);
  if (swift_dynamicCast())
  {
    v172 = aBlock;
    v173 = v35;
    v174 = v230;

    v175 = v234;
    sub_197444CD8(v172, v174, v173, v167, v211);
    v234 = v175;
  }

LABEL_106:
  v176 = sub_197520BEC();
  if (!v176)
  {
LABEL_113:
    v239 = 0u;
    v240 = 0u;
    goto LABEL_114;
  }

  v177 = v176;
  v237 = sub_1975217BC();
  v238 = v178;
  sub_19752218C();
  if (!*(v177 + 16) || (v179 = sub_197445520(&aBlock), (v180 & 1) == 0))
  {

    sub_197420CA4(&aBlock);
    goto LABEL_113;
  }

  sub_197404860(*(v177 + 56) + 32 * v179, &v239);
  sub_197420CA4(&aBlock);

  if (!*(&v240 + 1))
  {
LABEL_114:
    sub_19740C044(&v239, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_115;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFE0, &qword_19752C748);
  if (swift_dynamicCast())
  {
    v181 = aBlock;
    v182 = v35;
    v183 = v230;

    v184 = v234;
    sub_197444CD8(v181, v183, v182, v167, v211);
    v234 = v184;
  }

LABEL_115:
  v185 = v35;
  v186 = v230;

  sub_197445880(v187, v186, v185, v167, v211);

  v188 = v219;
  v189 = sub_197520BEC();
  if (v189)
  {
    v190 = v189;
    v237 = sub_1975217BC();
    v238 = v191;
    sub_19752218C();
    if (*(v190 + 16) && (v192 = sub_197445520(&aBlock), (v193 & 1) != 0))
    {
      sub_197404860(*(v190 + 56) + 32 * v192, &v239);
      sub_197420CA4(&aBlock);

      if (*(&v240 + 1))
      {
        sub_1973F3D34(0, &qword_1ED7C77E0, 0x1E695DFD8);
        if (swift_dynamicCast())
        {
          v234 = aBlock;
          sub_197521EFC();
          sub_197413CBC(qword_1ED7C77F8, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
          sub_197521F8C();
          if (v243)
          {
            while (1)
            {
              sub_1974028B8(&aBlock, &v239);
              sub_197404860(&v239, &v237);
              sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
              if (!swift_dynamicCast())
              {
                break;
              }

              __swift_destroy_boxed_opaque_existential_1Tm(&v239);
              sub_197521F8C();
              if (!v243)
              {
                goto LABEL_123;
              }
            }

LABEL_146:
            v237 = 0;
            v238 = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD000000000000039, 0x80000001975245C0);
            v204 = sub_197522B8C();
            MEMORY[0x19A8DFF80](v204);

            MEMORY[0x19A8DFF80](8255, 0xE200000000000000);
            sub_19752235C();
            goto LABEL_144;
          }

LABEL_123:

          (*(v206 + 8))(v213, v214);
          (*(v212 + 8))(v219, v209);

          v194 = v217;
        }

        else
        {
          (*(v212 + 8))(v219, v165);

          v194 = v217;
        }

        goto LABEL_128;
      }
    }

    else
    {

      sub_197420CA4(&aBlock);
      v239 = 0u;
      v240 = 0u;
    }

    (*(v164 + 8))(v219, v165);
  }

  else
  {
    (*(v164 + 8))(v188, v165);

    v239 = 0u;
    v240 = 0u;
  }

  v194 = v217;
  sub_19740C044(&v239, &qword_1EAF2AF20, &unk_19752F320);
LABEL_128:
  v195 = [v194 defaultCenter];
  [v195 removeObserver_];

  swift_unknownObjectRelease();

  swift_setDeallocating();
}

uint64_t DefaultSnapshot.encode(to:)(void *a1)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
  MEMORY[0x1EEE9AC00](v59, v4);
  v6 = &v56 - v5;
  v7 = v1[1];
  v74 = *v1;
  LODWORD(v8) = *(v1 + 16);
  v57 = v9;
  if (v8)
  {
    if (v8 == 1)
    {
      v11 = *(v7 + 72);
      v10 = *(v7 + 80);
      sub_1974028EC(v7, 1);
    }

    else
    {
      sub_1974028EC(v7, 2);
      v11 = sub_19750A588();
      v10 = v14;
    }
  }

  else
  {
    sub_1974028EC(v7, 0);
    v12 = [v7 entityName];
    v11 = sub_1975217BC();
    v10 = v13;
  }

  v15 = sub_197442240(v11, v10);

  v58 = v15;
  if (!v15)
  {
    goto LABEL_40;
  }

  __swift_project_boxed_opaque_existential_1Tm_1(a1, a1[3]);
  sub_197442414();
  sub_197522B0C();
  *&v68[0] = v7;
  BYTE8(v68[0]) = v8;
  sub_197411E68();
  v69 = 0uLL;
  v16 = v59;
  sub_1975226EC();
  if (!v2)
  {
    sub_1974028C8(*&v68[0], SBYTE8(v68[0]));
    v18 = v58;
    swift_beginAccess();
    v19 = *(v18 + 64);
    v62 = *(v19 + 16);
    if (!v62)
    {

      return (*(v57 + 8))(v6, v16);
    }

    v63 = v6;
    v61 = v19 + 32;

    v7 = 0;
    v8 = v74;
    v60 = v19;
    while (1)
    {
      if (v7 >= *(v19 + 16))
      {
        __break(1u);
LABEL_40:
        *&v69 = 0;
        *(&v69 + 1) = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000058, 0x8000000197525B80);
        *&v68[0] = v7;
        BYTE8(v68[0]) = v8;
        sub_19752235C();
        goto LABEL_41;
      }

      sub_197413B90(v61 + 40 * v7, v71);
      v23 = v72;
      v24 = v73;
      __swift_project_boxed_opaque_existential_1Tm_1(v71, v72);
      v25 = (*(v24 + 32))(v23, v24);
      if (!*(v8 + 16))
      {

LABEL_25:
        v46 = v72;
        v47 = v73;
        __swift_project_boxed_opaque_existential_1Tm_1(v71, v72);
        *&v68[0] = (*(v47 + 32))(v46, v47);
        *(&v68[0] + 1) = v48;
        swift_beginAccess();
        sub_19752277C();
        swift_endAccess();

LABEL_26:
        v19 = v60;
        v8 = v74;
        goto LABEL_14;
      }

      v27 = sub_1973F4028(v25, v26);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        goto LABEL_25;
      }

      sub_1973FDED4(*(v8 + 56) + 48 * v27, v68);
      sub_1974028A0(v68, &v69);
      sub_1973FDED4(&v69, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
      if (!swift_dynamicCast())
      {
        break;
      }

      v20 = v72;
      v21 = v73;
      __swift_project_boxed_opaque_existential_1Tm_1(v71, v72);
      v64 = (*(v21 + 32))(v20, v21);
      v65 = v22;
      swift_beginAccess();
      sub_1973FF428();
      v16 = v59;
      sub_1975226EC();
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1Tm_2(&v69);

LABEL_13:
      v19 = v60;
LABEL_14:
      ++v7;
      __swift_destroy_boxed_opaque_existential_1Tm_2(v71);
      if (v7 == v62)
      {

        v6 = v63;
        return (*(v57 + 8))(v6, v16);
      }
    }

    v30 = v72;
    v31 = v73;
    __swift_project_boxed_opaque_existential_1Tm_1(v71, v72);
    v32 = (*(v31 + 32))(v30, v31);
    v34 = v33;
    v35 = v58;
    swift_beginAccess();
    v36 = *(v35 + 96);
    if (*(v36 + 16))
    {
      v37 = sub_1973F4028(v32, v34);
      v39 = v38;

      if (v39)
      {
        v40 = *(*(v36 + 56) + 8 * v37);
        swift_endAccess();
        v16 = v59;
        if ((*(v40 + 120) & 0x10) != 0)
        {
          sub_1973FDED4(&v69, v68);
          if (!swift_dynamicCast())
          {
            while (1)
            {
              *&v68[0] = 0;
              *(&v68[0] + 1) = 0xE000000000000000;
              sub_1975221EC();
              MEMORY[0x19A8DFF80](0xD000000000000049, 0x8000000197525BE0);
              MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
              MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197525C30);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
              sub_19752235C();
              MEMORY[0x19A8DFF80](10, 0xE100000000000000);
              __swift_project_boxed_opaque_existential_1Tm_1(&v69, v70);
              swift_getDynamicType();
              v55 = sub_197522B8C();
              MEMORY[0x19A8DFF80](v55);

LABEL_41:
              sub_1975223EC();
              __break(1u);
            }
          }

          v41 = v66;
          v42 = v67;
          v43 = v72;
          v44 = v73;
          __swift_project_boxed_opaque_existential_1Tm_1(v71, v72);
          v64 = (*(v44 + 32))(v43, v44);
          v65 = v45;
          swift_beginAccess();
          sub_1974122F8();
          sub_1975226EC();
          swift_endAccess();

          __swift_destroy_boxed_opaque_existential_1Tm_2(&v69);
          sub_19744D0E0(v41, v42);
          v16 = v59;
          goto LABEL_26;
        }

        goto LABEL_29;
      }
    }

    else
    {
    }

    swift_endAccess();
    v16 = v59;
LABEL_29:
    v49 = v72;
    v50 = v73;
    __swift_project_boxed_opaque_existential_1Tm_1(v71, v72);
    v51 = (*(v50 + 80))(v49, v50);
    *&v68[0] = v51;
    v52 = swift_conformsToProtocol2();
    if (v52)
    {
      v8 = v74;
      if (v51)
      {
        v53 = v52;
        do
        {
          sub_1973F732C(v51, v68, v51, v53);
          v51 = *&v68[0];
          v54 = swift_conformsToProtocol2();
          if (!v54)
          {
            break;
          }

          v53 = v54;
        }

        while (v51);
      }
    }

    else
    {
      v8 = v74;
    }

    sub_197437118(v51, v63, &v69, v71);
    __swift_destroy_boxed_opaque_existential_1Tm_2(&v69);
    goto LABEL_13;
  }

  sub_1974028C8(*&v68[0], SBYTE8(v68[0]));
  return (*(v57 + 8))(v6, v16);
}

void sub_197437118(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v8 = a4[3];
    v9 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v8);
    (*(v9 + 32))(v8, v9);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752269C();
LABEL_3:
    swift_endAccess();
LABEL_6:

    return;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v10 = a4[3];
    v11 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v10);
    (*(v11 + 32))(v10, v11);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752268C();
    swift_endAccess();

    goto LABEL_6;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v12 = a4[3];
    v13 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v12);
    (*(v13 + 32))(v12, v13);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_1975226AC();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v14 = a4[3];
    v15 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v14);
    (*(v15 + 32))(v14, v15);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_1975226BC();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v16 = a4[3];
    v17 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v16);
    (*(v17 + 32))(v16, v17);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_1975226CC();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v18 = a4[3];
    v19 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v18);
    (*(v19 + 32))(v18, v19);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_1975226FC();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v20 = a4[3];
    v21 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v20);
    (*(v21 + 32))(v20, v21);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752270C();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v22 = a4[3];
    v23 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v22);
    (*(v23 + 32))(v22, v23);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752271C();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v24 = a4[3];
    v25 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v24);
    (*(v25 + 32))(v24, v25);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752272C();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v26 = a4[3];
    v27 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v26);
    (*(v27 + 32))(v26, v27);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_1975226DC();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v28 = a4[3];
    v29 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v28);
    (*(v29 + 32))(v28, v29);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752273C();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v30 = a4[3];
    v31 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v30);
    (*(v31 + 32))(v30, v31);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752274C();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v32 = a4[3];
    v33 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v32);
    (*(v33 + 32))(v32, v33);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752275C();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1973FDED4(a3, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v34 = a4[3];
    v35 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v34);
    (*(v35 + 32))(v34, v35);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_19752276C();
    goto LABEL_3;
  }

  if (swift_conformsToProtocol2() && a1)
  {
    v36 = a3[3];
    v37 = a3[5];
    v38 = __swift_project_boxed_opaque_existential_1Tm_1(a3, v36);
    v39 = a4[3];
    v40 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v39);
    v53 = (*(v40 + 32))(v39, v40);
    v54 = v41;
    sub_197438114(v38, &v53, a2, a4, v36, v37);
    goto LABEL_6;
  }

  if (swift_conformsToProtocol2() && a1)
  {
    sub_1975214DC();
    if ((v42 & 0x8000000000000000) == 0)
    {
      if (v42)
      {
        sub_1973FDED4(a3, &v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
        swift_dynamicCast();
        v43 = a4[3];
        v44 = a4[4];
        __swift_project_boxed_opaque_existential_1Tm_1(a4, v43);
        (*(v44 + 32))(v43, v44);
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
        sub_197412788(&qword_1ED7C77C8, sub_197411E68, MEMORY[0x1E69E6300]);
        sub_1975226EC();
        swift_endAccess();

        goto LABEL_6;
      }

      sub_1975221EC();

      v53 = 0xD00000000000001DLL;
      v54 = 0x8000000197524E70;
      v50 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v50);

      goto LABEL_45;
    }

    __break(1u);
  }

  else if (swift_conformsToProtocol2() && a1)
  {
    sub_1973FDED4(a3, &v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
    swift_dynamicCast();
    v45 = a4[3];
    v46 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a4, v45);
    (*(v46 + 32))(v45, v46);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
    sub_197411E68();
    sub_1975226EC();
    swift_endAccess();

    sub_1974028C8(v51, v52);
    return;
  }

  sub_1975221EC();

  v53 = 0xD000000000000023;
  v54 = 0x8000000197525DA0;
  v47 = a4[3];
  v48 = a4[4];
  __swift_project_boxed_opaque_existential_1Tm_1(a4, v47);
  (*(v48 + 80))(v47, v48);
  v49 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v49);

LABEL_45:
  sub_1975223EC();
  __break(1u);
}

uint64_t sub_197438114(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = a4[3];
  v7 = a4[4];
  __swift_project_boxed_opaque_existential_1Tm_1(a4, v6);
  (*(v7 + 32))(v6, v7);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B608, &qword_19752EA70);
  sub_1975226EC();
  swift_endAccess();
}

void sub_1974381F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1973FE14C(a2, &v58, &qword_1EAF2AF20, &unk_19752F320);
  if (!*(&v59 + 1))
  {
    sub_1973FE58C(&v58, &qword_1EAF2AF20, &unk_19752F320);
    v11 = sub_19752178C();
    [a5 setValue:0 forKey:v11];

    return;
  }

  sub_1974028B8(&v58, &v62);
  sub_197434728(&v62, v61);
  sub_197404860(v61, &v58);
  sub_197438EA8(0, &qword_1ED7C7900, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    v10 = sub_19752178C();
    [a5 setValue:0 forKey:v10];

LABEL_19:
    v25 = v61;
    goto LABEL_20;
  }

  v12 = *(a1 + 120);
  if ((v12 & 0x20) != 0)
  {
    goto LABEL_16;
  }

  if ((*(a1 + 120) & 8) != 0)
  {
    sub_197404860(v61, &v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5D8, &qword_19752EA20);
    if (!swift_dynamicCast())
    {
      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      sub_1973FE58C(&v58, &qword_1EAF2B5E0, &qword_19752EA28);
      *&v58 = 0;
      *(&v58 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197525840);
      sub_19752235C();
      MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
      *&v55 = a1;
      type metadata accessor for Schema.Attribute();
      sub_19752235C();
      goto LABEL_32;
    }

    sub_197438DC8(&v58, v54);
    sub_19749B32C(v54, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5C8, &unk_19752EA10);
    if (!swift_dynamicCast())
    {
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      sub_1973FE58C(&v55, &qword_1EAF2B5D0, &unk_197534040);
      *&v58 = 0;
      *(&v58 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000005FLL, 0x8000000197525860);
      sub_19752235C();
      MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
      v41 = [*(v5 + 16) description];
      v42 = sub_1975217BC();
      v44 = v43;

      MEMORY[0x19A8DFF80](v42, v44);

      goto LABEL_32;
    }

    sub_19749B314(&v55, &v58);
    __swift_project_boxed_opaque_existential_1Tm_0(&v58, *(&v59 + 1));
    sub_197520BAC();
    swift_allocObject();
    sub_197520B9C();
    v20 = sub_197520B8C();
    v22 = v21;

    v23 = sub_1975212FC();
    v24 = sub_19752178C();
    [a5 setValue:v23 forKey:v24];
    sub_19744D0E0(v20, v22);

    __swift_destroy_boxed_opaque_existential_1Tm_1(v54);
  }

  else
  {
    if ((*(a1 + 120) & 0x90) != 0)
    {
      sub_197404860(v61, &v58);
      if (swift_dynamicCast())
      {
        v13 = v55;
        type metadata accessor for Schema.Attribute();
        sub_19744D340(v55, *(&v55 + 1), a1, &v58);
        sub_1973FE14C(&v58, &v55, &qword_1EAF2AF20, &unk_19752F320);
        v14 = *(&v56 + 1);
        if (*(&v56 + 1))
        {
          v15 = __swift_project_boxed_opaque_existential_1Tm_0(&v55, *(&v56 + 1));
          v16 = *(v14 - 8);
          MEMORY[0x1EEE9AC00](v15, v15);
          v18 = &v53[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
          (*(v16 + 16))(v18);
          v19 = sub_19752281C();
          (*(v16 + 8))(v18, v14);
          __swift_destroy_boxed_opaque_existential_1Tm_1(&v55);
        }

        else
        {
          v19 = 0;
        }

        v28 = sub_19752178C();
        [a5 setValue:v19 forKey:v28];
        swift_unknownObjectRelease();

        sub_19744D0E0(v13, *(&v13 + 1));
        sub_1973FE58C(&v58, &qword_1EAF2AF20, &unk_19752F320);
        goto LABEL_19;
      }

      *&v58 = 0;
      *(&v58 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x8000000197525810);
      MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
      MEMORY[0x19A8DFF80](0xD000000000000025, 0x80000001975251B0);
      sub_19752235C();
      MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
      *&v55 = a1;
      type metadata accessor for Schema.Attribute();
      sub_19752235C();
LABEL_32:
      sub_1975223EC();
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      return;
    }

    if ((*(a1 + 120) & 1) == 0)
    {
LABEL_16:
      __swift_project_boxed_opaque_existential_1Tm_0(&v62, v63);
      v26 = sub_19752281C();
      v27 = sub_19752178C();
      [a5 setValue:v26 forKey:v27];
      swift_unknownObjectRelease();

      goto LABEL_19;
    }

    type metadata accessor for Schema.CompositeAttribute();
    v29 = swift_dynamicCastClass();
    if (!v29)
    {
      *&v58 = 0;
      *(&v58 + 1) = 0xE000000000000000;
      sub_1975221EC();
      v55 = v58;
      MEMORY[0x19A8DFF80](a3, a4);
      MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197525790);
      v45 = *(v5 + 40);
      swift_beginAccess();
      v46 = *(v45 + 16);
      v47 = *(v45 + 24);

      MEMORY[0x19A8DFF80](v46, v47);

      MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x80000001975257C0);
      v54[0] = a1;
      type metadata accessor for Schema.Attribute();
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      v48 = [a5 description];
      v49 = sub_1975217BC();
      v51 = v50;

      MEMORY[0x19A8DFF80](v49, v51);

      goto LABEL_32;
    }

    v30 = v29;
    sub_197404860(v61, v54);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5C8, &unk_19752EA10);
    if (!swift_dynamicCast())
    {
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      sub_1973FE58C(&v55, &qword_1EAF2B5D0, &unk_197534040);
      *&v58 = 0;
      *(&v58 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000001CLL, 0x80000001975257F0);
      sub_19752235C();
      goto LABEL_32;
    }

    sub_19749B314(&v55, &v58);
    v31 = type metadata accessor for CompositeEncoder();
    v32 = swift_allocObject();
    v33 = MEMORY[0x1E69E7CC0];
    *(v32 + 32) = MEMORY[0x1E69E7CC0];

    *(v32 + 40) = sub_197441730(v33);
    v34 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    *(v32 + 16) = a3;
    *(v32 + 24) = a4;
    *(v32 + 48) = v30;
    *(v32 + 56) = v34;
    v52 = v30;
    __swift_project_boxed_opaque_existential_1Tm_0(&v58, *(&v59 + 1));
    *(&v56 + 1) = v31;
    *&v57 = sub_19749B3F4(&qword_1ED7C6928, type metadata accessor for CompositeEncoder, &unk_19752E930);
    *&v55 = v32;

    sub_19752169C();
    __swift_destroy_boxed_opaque_existential_1Tm_1(&v55);
    v35 = *(v32 + 56);
    if ((v12 & 6) != 0)
    {
      v36 = v35;
      v37 = sub_197488AF8(v35, v52);
      v38 = sub_19752178C();
      [a5 setValue:v37 forKey:v38];
    }

    else
    {
      v39 = v35;
      v40 = sub_19752178C();
      [a5 setValue:v39 forKey:{v40, v52}];
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm_1(v61);
  v25 = &v58;
LABEL_20:
  __swift_destroy_boxed_opaque_existential_1Tm_1(v25);
  __swift_destroy_boxed_opaque_existential_1Tm_1(&v62);
}

uint64_t sub_197438DC8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_197438DE0()
{
  sub_197438F34();

  return swift_deallocClassInstance();
}

uint64_t sub_197438E10()
{
  sub_197438E58(MEMORY[0x1E69E7D48]);

  return swift_deallocClassInstance();
}

uint64_t sub_197438E58(void (*a1)(void))
{

  a1(*(v1 + 48));
  return v1;
}

uint64_t sub_197438EA8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_197438EF0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 56);
}

uint64_t sub_197438F34()
{

  return v0;
}

void sub_197438F7C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19752242C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_197439124(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_19752178C();
  sub_197522B4C();
  v5 = sub_19752178C();

  [v3 setValue:v4 forKey:v5];
}

unint64_t sub_1974391D0()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0xD000000000000014;
  }

  return v1;
}

void sub_197439224(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_19747B580();
    *v5 = v11;
  }

  if (a3 < 0 || 1 << *(v11 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v11 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v11 + 36) == a4)
  {
    v12 = *(v11 + 56);
    v13 = *(v11 + 48) + 16 * a3;
    v14 = *v13;
    LOBYTE(v13) = *(v13 + 8);
    *a1 = v14;
    *(a1 + 8) = v13;
    sub_197433E8C(v12 + 32 * a3, a2);
    sub_197439D60(a3, v11);
    *v5 = v11;
    return;
  }

LABEL_10:
  __break(1u);
}

void *sub_197439308(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1973F8490(MEMORY[0x1E69E7CC0]);
  v4 = sub_1974395C0(v2);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return v3;
  }

  v6 = 0;
  for (i = a1 + 32; ; i += 96)
  {
    sub_1973F7E64(i, v38);
    v9 = v38[0];
    v8 = v38[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v3;
    v11 = sub_1973F4028(v9, v8);
    v13 = v3[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v3[3] < v16)
    {
      sub_1973F8828(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_1973F4028(v9, v8);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_31;
      }

LABEL_10:
      if (v17)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v19 = v11;
    sub_19747A078();
    v11 = v19;
    v3 = v36;
    if (v17)
    {
LABEL_11:
      *(v3[7] + 8 * v11) = v6;
      goto LABEL_15;
    }

LABEL_13:
    v3[(v11 >> 6) + 8] |= 1 << v11;
    v20 = (v3[6] + 16 * v11);
    *v20 = v9;
    v20[1] = v8;
    *(v3[7] + 8 * v11) = v6;
    v21 = v3[2];
    v15 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v15)
    {
      goto LABEL_28;
    }

    v3[2] = v22;

LABEL_15:
    v23 = v38[2];
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v4;
    v25 = sub_1973F7814(v23);
    v27 = v4[2];
    v28 = (v26 & 1) == 0;
    v15 = __OFADD__(v27, v28);
    v29 = v27 + v28;
    if (v15)
    {
      goto LABEL_27;
    }

    v30 = v26;
    if (v4[3] < v29)
    {
      sub_1973F89B0(v29, v24);
      v25 = sub_1973F7814(v23);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_30;
      }

LABEL_20:
      if (v30)
      {
        goto LABEL_3;
      }

      goto LABEL_21;
    }

    if (v24)
    {
      goto LABEL_20;
    }

    v34 = v25;
    sub_197479F1C();
    v25 = v34;
    v4 = v37;
    if (v30)
    {
LABEL_3:
      *(v4[7] + 8 * v25) = v6;
      goto LABEL_4;
    }

LABEL_21:
    v4[(v25 >> 6) + 8] |= 1 << v25;
    *(v4[6] + 8 * v25) = v23;
    *(v4[7] + 8 * v25) = v6;
    v32 = v4[2];
    v15 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v15)
    {
      goto LABEL_29;
    }

    v4[2] = v33;

LABEL_4:
    ++v6;
    sub_1973F82A8(v38);
    if (v5 == v6)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_19752202C();
  sub_1975229CC();
  __break(1u);
LABEL_31:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

unint64_t sub_1974395C0(uint64_t a1)
{
  v1 = sub_1973F84A4(a1);

  return v1;
}

unint64_t sub_1974395F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1973F7950(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_19747B404();
      v13 = v21;
      goto LABEL_8;
    }

    sub_197439744(v18, a5 & 1);
    v13 = sub_1973F7950(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {

    return sub_1974399E4(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_197439744(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1F8, &qword_19752D388);
  result = sub_19752243C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = 16 * (v17 | (v8 << 6));
      v29 = *(*(v5 + 48) + v20);
      v30 = *(*(v5 + 56) + v20);
      if ((v4 & 1) == 0)
      {
      }

      sub_197522A5C();
      MEMORY[0x19A8E1190](v29);
      result = sub_197522A9C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      *(*(v7 + 48) + v16) = v29;
      *(*(v7 + 56) + v16) = v30;
      ++*(v7 + 16);
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

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_1974399E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_197439A78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *(v3 + 16) = 0;
  *(v3 + 24) = -1;
  swift_beginAccess();
  v7 = *(v3 + 16);
  *(v3 + 16) = v5;
  v8 = *(v3 + 24);
  *(v3 + 24) = v6;
  sub_1974A1014(v7, v8);
  *(a3 + 24) |= 0x100000u;
  *(v3 + 56) = type metadata accessor for _ModelMetadata();
  *(v3 + 32) = a3;
  return v3;
}

uint64_t sub_197439B10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_197522AEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1973FE074(a1, a2);
  sub_19743A12C();

  v12 = type metadata accessor for _DestroyedBackingData(0, a1, a2, v11);
  PersistentModel.persistentModelID.getter(a1, a2, &v19);
  v17 = v19;
  v18 = v20;
  v13 = sub_1973FE074(a1, a2);
  v14 = sub_197439D0C(a1, &v17, v13);
  v21 = v12;
  WitnessTable = swift_getWitnessTable();
  v19 = v14;
  (*(a2 + 64))(&v19, a1, a2);
  result = swift_getAssociatedTypeWitness();
  if (result != a1)
  {
    v21 = a1;
    v19 = v3;
    swift_unknownObjectRetain();
    sub_197522ABC();
    sub_1974CB5B4(v10, a1, a1, a1, a2, a2);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_197439D0C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = swift_allocObject();
  sub_197439A78(v5, a2, a3);
  return v5;
}

void sub_197439D60(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    v22 = v8;
    while (1)
    {
      v9 = 16 * v6;
      v10 = *(a2 + 48) + 16 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      sub_197522A5C();
      if (v12)
      {
        if (v12 == 1)
        {
          MEMORY[0x19A8E1190](1);
          sub_1974028EC(v11, 1);
          sub_19752180C();
          sub_19752180C();
          if (v11[3])
          {
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          sub_197522A7C();
          v8 = v22;
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_1974028EC(v11, 2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
        }

        sub_19752180C();
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_1974028EC(v11, 0);
        sub_197521F4C();
      }

      v13 = sub_197522A9C();
      sub_1974028C8(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_19;
      }

LABEL_20:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + v9);
      if (16 * v3 != v9 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = 32 * v3;
      if (32 * v3 < (32 * v6) || *(a2 + 56) + 32 * v3 >= *(a2 + 56) + 32 * v6 + 32)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == 32 * v6)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_19:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_27:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

uint64_t sub_19743A12C()
{
  swift_beginAccess();
  *(v0 + 96) = 0;

  swift_beginAccess();
  *(v0 + 104) = 0;

  *(v0 + 16) = 0;

  *(v0 + 24) |= 0x80000u;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  swift_unknownObjectRelease();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  swift_unknownObjectRelease();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  result = swift_unknownObjectRelease();
  *(v0 + 112) = 256;
  return result;
}

void sub_19743A218(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1973F4028(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_19747BB04();
      v11 = v19;
      goto LABEL_8;
    }

    sub_19743A69C(v16, a4 & 1);
    v11 = sub_1973F4028(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_1975229CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    sub_1973F6E44(a1, v21[7] + 32 * v11, &qword_1EAF2AF20, &unk_19752F320);
  }

  else
  {
    sub_19743EF58(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_19743A360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a6;
  v43 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = AssociatedTypeWitness;
  v14 = type metadata accessor for DataStoreSaveChangesRequest(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v33 - v17);
  v45[0] = a2;
  v45[1] = a3;
  v19 = a3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  swift_dynamicCast();
  v20 = v44;
  sub_19743E100(v44, a7, a8, v18);
  if (sub_19743EE9C(v14))
  {
    (*(v15 + 8))(v18, v14);
    return swift_unknownObjectRelease();
  }

  else
  {
    ObjectType = swift_getObjectType();
    v36 = a8;
    v39 = v20;
    v22 = *(v19 + 40);
    v23 = v22(ObjectType, v19);
    v33 = v24;
    v34 = v23;
    v46 = v14;
    boxed_opaque_existential_1Tm_0 = __swift_allocate_boxed_opaque_existential_1Tm_0(v45);
    v37 = v14;
    v38 = v15;
    (*(v15 + 16))(boxed_opaque_existential_1Tm_0, v18, v14);
    swift_beginAccess();
    sub_19743A964(v45, v34, v33);
    swift_endAccess();
    v26 = v22(ObjectType, v19);
    v28 = v27;
    v29 = v47;
    v30 = (*(v36 + 104))(v18, a7);
    v47 = v29;
    if (v29)
    {
      (*(v38 + 8))(v18, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = v30;
      v46 = type metadata accessor for DataStoreSaveChangesResult(0, v41, AssociatedConformanceWitness, v31);
      v45[0] = v32;
      swift_beginAccess();
      sub_19743A964(v45, v26, v28);
      swift_endAccess();
      swift_unknownObjectRelease();
      return (*(v38 + 8))(v18, v37);
    }
  }
}

uint64_t sub_19743A69C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B258, &qword_19752D3F0);
  v36 = v4;
  result = sub_19752243C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 32 * v22);
      if (v36)
      {
        v27 = v26[1];
        v37 = *v26;
        v38 = v27;
      }

      else
      {
        sub_197404790(v26, &v37, &qword_1EAF2AF20, &unk_19752F320);
      }

      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = (*(v7 + 56) + 32 * v15);
      v18 = v38;
      *v17 = v37;
      v17[1] = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_19743A964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) == 1)
  {
    sub_197448384(a1, &qword_1EAF2B648, &unk_19752FD20);
    sub_19749F53C(a2, a3, v10);

    return sub_197448384(v10, &qword_1EAF2B648, &unk_19752FD20);
  }

  else
  {
    v7 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_19743A218(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  return result;
}

uint64_t sub_19743AA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 40);
  v7 = v6(a2, a3);
  v9 = v8;
  swift_beginAccess();
  if (*(*(v3 + 24) + 16) && (, sub_1973F4028(v7, v9), v11 = v10, , (v11 & 1) != 0))
  {

    v12 = sub_19743ACB4(a2, a3);

    return v12;
  }

  else
  {

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000003ALL, 0x8000000197526F20);
    sub_1975227FC();
    MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
    v14 = v6(a2, a3);
    v16 = v15;
    if (*(*(v3 + 24) + 16) && (v17 = v14, , sub_1973F4028(v17, v16), v19 = v18, , (v19 & 1) != 0))
    {
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B8D8, &qword_19752FB98);
    v20 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v20);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19743ACB4(uint64_t a1, uint64_t a2)
{
  sub_197404860(v2 + 16, v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for DataStoreSaveChangesRequestBuilder.StoreBuilder(0, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
  swift_dynamicCast();
  return v7;
}

uint64_t sub_19743AD6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_197444B2C(0, v1, 0);
  v2 = v23;
  v22 = a1 + 56;
  result = sub_19752206C();
  v5 = result;
  v6 = 0;
  v20 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v22 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    v12 = *(v23 + 16);
    v11 = *(v23 + 24);
    v21 = *(*(a1 + 48) + 16 * v5);
    result = swift_unknownObjectRetain();
    if (v12 >= v11 >> 1)
    {
      result = sub_197444B2C((v11 > 1), v12 + 1, 1);
    }

    *(v23 + 16) = v12 + 1;
    *(v23 + 16 * v12 + 32) = v21;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v13 = *(v22 + 8 * v9);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v7 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v20;
    }

    else
    {
      v15 = v9 << 6;
      v16 = v9 + 1;
      v8 = v20;
      v17 = (a1 + 64 + 8 * v9);
      while (v16 < (v7 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_197444BD8(v5, v10, 0);
          v7 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_197444BD8(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
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
  return result;
}

_OWORD *sub_19743AF90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a6;
  v22 = a7;
  v23 = a8;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v20);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_2, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v15 = (a5[6] + 16 * a1);
  *v15 = a2;
  v15[1] = a3;
  result = sub_1974028A0(&v20, (a5[7] + 48 * a1));
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}

_OWORD *sub_19743B06C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a6;
  v36 = a7;
  v37 = a8;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v34);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_2, a1, a6);
  v17 = *a5;
  v19 = sub_1973F4028(a2, a3);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a4 & 1) != 0)
  {
LABEL_7:
    v25 = *a5;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 48 * v19);
      __swift_destroy_boxed_opaque_existential_1Tm_2(v26);
      return sub_1974028A0(&v34, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a4 & 1) == 0)
  {
    sub_19747A934();
    goto LABEL_7;
  }

  sub_1973FF110(v22, a4 & 1);
  v28 = sub_1973F4028(a2, a3);
  if ((v23 & 1) != (v29 & 1))
  {
LABEL_14:
    result = sub_1975229CC();
    __break(1u);
    return result;
  }

  v19 = v28;
  v25 = *a5;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = __swift_mutable_project_boxed_opaque_existential_2(&v34, v35);
  MEMORY[0x1EEE9AC00](v30, v30);
  v32 = &v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  sub_19743AF90(v19, a2, a3, v32, v25, a6, a7, a8);

  return __swift_destroy_boxed_opaque_existential_1Tm_2(&v34);
}

uint64_t sub_19743B2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  memset(v24, 0, sizeof(v24));
  v10 = sub_19743E750(v4, a2, a3);
  v11 = *(v10 + 24);
  if (!*(v11 + 16) || (v12 = sub_1973F7814(a1), (v13 & 1) == 0))
  {
    v21 = 0u;
    v22 = 0u;
    goto LABEL_9;
  }

  v14 = *(*(v11 + 56) + 8 * v12);
  result = swift_beginAccess();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v16 = *(v10 + 32);
    if (v14 < *(v16 + 16))
    {
      sub_1973FE14C(v16 + 32 * v14 + 32, &v21, &qword_1EAF2AF20, &unk_19752F320);
      if (*(&v22 + 1))
      {
        sub_1974028B8(&v21, v23);
        sub_197404860(v23, &v21);
        if (swift_dynamicCast())
        {
          *(a4 + 24) = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
          *(a4 + 32) = sub_1973FF3D4();
          *(a4 + 40) = sub_1973FF428();

          *a4 = v18;
          *(a4 + 8) = v19;
          *(a4 + 16) = v20;
          __swift_destroy_boxed_opaque_existential_1Tm_1(v23);
          return sub_1973FE58C(v24, &qword_1EAF2B5E8, &qword_19752EA40);
        }

        __swift_destroy_boxed_opaque_existential_1Tm_1(v23);
LABEL_10:
        sub_197521FFC();
        sub_19743C9B4(v17, a1, v5, v10, v24, a2, v17, a3);

        swift_beginAccess();
        sub_1973FE14C(v24, a4, &qword_1EAF2B5E8, &qword_19752EA40);
        return sub_1973FE58C(v24, &qword_1EAF2B5E8, &qword_19752EA40);
      }

LABEL_9:
      sub_1973FE58C(&v21, &qword_1EAF2AF20, &unk_19752F320);
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19743B4F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v57 = *v2;
  v5 = *(v57 + 80);
  v60 = sub_197521F5C();
  v59 = *(v60 - 8);
  v7 = MEMORY[0x1EEE9AC00](v60, v6);
  v56 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v47 - v11;
  v13 = *(v5 - 8);
  v15 = MEMORY[0x1EEE9AC00](v10, v14);
  v58 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v49 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v47 - v21;
  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v23);
  (*(v24 + 32))(&v61, v23, v24);
  LODWORD(v25) = BYTE8(v61);
  if (BYTE8(v61) == 255)
  {
    *&v61 = 0;
    *(&v61 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000038, 0x8000000197526EE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B220, &qword_19752D3B0);
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v26 = v61;
  swift_beginAccess();
  *&v61 = v26;
  BYTE8(v61) = v25;
  sub_1974ADEAC(v26, v25);
  v27 = sub_197405108();

  v55 = v27;
  sub_19752167C();

  sub_1974028C8(v61, SBYTE8(v61));
  if ((*(v13 + 48))(v12, 1, v5) != 1)
  {
    goto LABEL_32;
  }

  v22 = v13;
  (*(v59 + 1))(v12, v60);
  sub_1973FFC48(a1, &v61);
  v13 = sub_197443758(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v29 = *(v13 + 16);
  v28 = *(v13 + 24);
  v30 = v29 + 1;
  v48 = v25;
  v47 = v26;
  if (v29 >= v28 >> 1)
  {
LABEL_35:
    v13 = sub_197443758((v28 > 1), v30, 1, v13);
  }

  *(v13 + 16) = v30;
  sub_197402778(&v61, v13 + 40 * v29 + 32);
  v68 = v13;
  v31 = *(a1 + 24);
  v12 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v31);
  (*(v12 + 4))(&v61, v31, v12);
  v54 = v61;
  LODWORD(v60) = BYTE8(v61);
  v25 = v58;
  if (!*(v13 + 16))
  {
LABEL_33:
    sub_1974A1014(v47, v48);
    sub_1974A1014(v54, v60);
  }

  v59 = v22 + 16;
  v53 = (v22 + 56);
  v52 = (v22 + 8);
  v51 = v3;
  while ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
  {
    v32 = *(v13 + 16);
    if (!v32)
    {
      goto LABEL_31;
    }

LABEL_9:
    *(v13 + 16) = v32 - 1;
    v68 = v13;
    sub_197402778((v13 + 40 * v32 - 8), v67);
    v66 = MEMORY[0x1E69E7CC8];
    sub_1973FFC48(v67, &v61);
    v33 = *(v57 + 88);
    (*(v33 + 32))(&v61, &v66, v5, v33);
    v34 = *(v33 + 24);
    v34(&v61, v5, v33);
    v35 = v61;
    v36 = BYTE8(v61);
    if (BYTE8(v61) == 255)
    {
      v26 = v54;
      if (v60 == 255)
      {
        sub_1974ADEAC(v54, 255);
        sub_1974A1014(v35, 255);
LABEL_18:
        (*v59)(v49, v25, v5);
        sub_197521AAC();
        sub_197521A7C();
        goto LABEL_19;
      }

      sub_1974ADEAC(v54, v60);
LABEL_16:
      sub_1974A1014(v35, v36);
      sub_1974A1014(v26, v60);
      goto LABEL_19;
    }

    v37 = v60;
    v26 = v54;
    if (v60 == 255)
    {
      sub_1974ADEAC(v54, 255);
      sub_1974ADEAC(v35, v36);
      sub_1974028C8(v35, v36);
      v3 = v51;
      goto LABEL_16;
    }

    sub_1974ADEAC(v54, v60);
    sub_1974028EC(v35, v36);
    sub_1974ADEAC(v35, v36);
    sub_1974028EC(v35, v36);
    v38 = sub_19742291C(v35, v36, v26, v37);
    sub_1974028C8(v35, v36);
    sub_1974A1014(v26, v37);
    sub_1974028C8(v35, v36);
    sub_1974028C8(v35, v36);
    sub_1974A1014(v35, v36);
    v3 = v51;
    if (v38)
    {
      goto LABEL_18;
    }

LABEL_19:
    v34(&v64, v5, v33);
    v39 = v64;
    v13 = v65;
    a1 = v56;
    (*v59)(v56, v25, v5);
    (*v53)(a1, 0, 1, v5);
    v62[5] = v39;
    v63 = v13;
    swift_beginAccess();
    sub_19752166C();
    sub_19752168C();
    swift_endAccess();
    v30 = v66;
    v29 = v66 + 64;
    v40 = 1 << *(v66 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & *(v66 + 64);
    v12 = ((v40 + 63) >> 6);
    swift_bridgeObjectRetain_n();
    v22 = 0;
    if (v42)
    {
      while (1)
      {
        v28 = v22;
LABEL_28:
        v43 = __clz(__rbit64(v42));
        v42 &= v42 - 1;
        v44 = v43 | (v28 << 6);
        v45 = *(v30 + 48) + 16 * v44;
        v13 = *v45;
        a1 = *(v45 + 8);
        v26 = &v61;
        sub_1973FFC48(*(v30 + 56) + 40 * v44, v62);
        *&v61 = v13;
        BYTE8(v61) = a1;
        sub_1974028EC(v13, a1);
        sub_1974BF168(&v61, v62, v3, &v68);
        sub_1974050A8(&v61, &qword_1EAF2B8D0, &qword_19752FB90);
        if (!v42)
        {
          goto LABEL_24;
        }
      }
    }

    while (1)
    {
LABEL_24:
      v28 = (v22 + 1);
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v28 >= v12)
      {
        break;
      }

      v42 = *(v29 + 8 * v28);
      ++v22;
      if (v42)
      {
        v22 = v28;
        goto LABEL_28;
      }
    }

    v25 = v58;
    (*v52)(v58, v5);

    __swift_destroy_boxed_opaque_existential_0Tm(v67);

    v13 = v68;
    if (!v68[2])
    {
      goto LABEL_33;
    }
  }

  v13 = sub_19751C2C4(v13);
  v32 = *(v13 + 16);
  if (v32)
  {
    goto LABEL_9;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  (*(v13 + 32))(v22, v12, v5);
  (*(v13 + 16))(v49, v22, v5);
  sub_197521AAC();
  sub_197521A7C();
  sub_1974A1014(v26, v25);
  return (*(v13 + 8))(v22, v5);
}

uint64_t sub_19743BEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v16[3] = a3;
  v16[4] = a4;
  boxed_opaque_existential_1Tm_0 = __swift_allocate_boxed_opaque_existential_1Tm_0(v16);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm_0, a1, a3);
  v11 = sub_1974440A0(boxed_opaque_existential_1Tm_0, a2, a3, a4);
  v13 = v12;
  ObjectType = swift_getObjectType();
  sub_1974437D4(ObjectType, v11, v13, a2, v16, ObjectType, v13, a5);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

uint64_t sub_19743BFB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v47 - v11;
  if (*(v3 + 48) != 1)
  {
LABEL_29:
    v38 = *(v4 + 16);
    v39 = *(v38 + 24);
    v40 = *(v39 + 16);

    if (!v40 || (v41 = sub_1973F7814(a1), (v42 & 1) == 0))
    {
      v64 = 0u;
      v65 = 0u;
      goto LABEL_35;
    }

    v43 = *(*(v39 + 56) + 8 * v41);
    swift_beginAccess();
    if ((v43 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v44 = *(v38 + 32);
      if (v43 < *(v44 + 16))
      {
        sub_197413B20(v44 + 32 * v43 + 32, &v64);
LABEL_35:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
        return swift_dynamicCast();
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v50 = v10;
  v51 = v9;
  v52 = v8;
  v53 = a3;
  v13 = *(sub_197512E44() + 16);

  if (!v13)
  {
LABEL_42:
    *&v64 = 0;
    *(&v64 + 1) = 0xE000000000000000;
    sub_1975221EC();

    *&v64 = 0xD000000000000017;
    *(&v64 + 1) = 0x800000019752B400;
    sub_197433F28(&v54);
    v69[0] = v54;
    LOBYTE(v69[1]) = BYTE8(v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
    v45 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v45);

    goto LABEL_43;
  }

  v14 = *(v3 + 16);
  v15 = *(v14 + 24);
  v16 = *(v15 + 16);

  if (v16 && (v17 = sub_1973F7814(a1), (v18 & 1) != 0))
  {
    v19 = *(*(v15 + 56) + 8 * v17);
    swift_beginAccess();
    if ((v19 & 0x8000000000000000) != 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v20 = *(v14 + 32);
    if (v19 >= *(v20 + 16))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    sub_197413B20(v20 + 32 * v19 + 32, v69);
  }

  else
  {
    memset(v69, 0, 32);
  }

  sub_197413B20(v69, &v54);
  if (!*(&v55 + 1))
  {
    sub_1973FE5EC(&v54, &qword_1EAF2AF20, &unk_19752F320);
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    goto LABEL_15;
  }

  if (!v64)
  {
LABEL_15:
    sub_1973FE5EC(&v64, &qword_1EAF2B5F8, &qword_19752EA50);
    sub_197413B20(v69, &v64);
    if (*(&v65 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
      if (swift_dynamicCast())
      {
        v21 = v54;
        v22 = v52;
        sub_19744CC48(v54, v13, v7, v52);
        *(&v65 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
        v23 = swift_allocObject();
        *&v64 = v23;
        v23[2] = v21;
        v23[6] = v7;
        v23[7] = v22;
        boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v23 + 3);
        v25 = v51;
        (*(v51 + 16))(boxed_opaque_existential_1Tm_1, v12, v7);
        v23[8] = 1;
        v23[9] = 0;
        v23[10] = 0;
        v23[11] = 0;

        sub_1973FCF28(&v64, a1);

        sub_1973FE5EC(v69, &qword_1EAF2AF20, &unk_19752F320);
        return (*(v25 + 32))(v53, v12, v7);
      }
    }

    else
    {
      sub_1973FE5EC(&v64, &qword_1EAF2AF20, &unk_19752F320);
    }

    sub_197413B20(v69, &v61);
    if (v63)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4E0, &qword_197534B50);
      if (swift_dynamicCast())
      {
        if (*(&v55 + 1))
        {
          sub_19743099C(&v54, &v64);
          v27 = *(*(v4 + 40) + 16);
          if (!v27)
          {
            goto LABEL_44;
          }

          v28 = *(v4 + 32);
          v49 = *(v4 + 24);
          sub_1974ADEAC(v49, v28);
          v48 = v28;
          if (v28 != 255)
          {
            v29 = __swift_project_boxed_opaque_existential_1Tm_5(&v64, *(&v65 + 1));
            v30 = *v29;
            v31 = v29[1];
            v32 = *(v29 + 16);

            v33 = sub_197450578(v30, v31, v32, v49, v48);
            v34 = v52;
            sub_19744CC48(v33, v27, v7, v52);
            *(&v55 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
            v35 = swift_allocObject();
            *&v54 = v35;
            v35[2] = v33;
            v35[6] = v7;
            v35[7] = v34;
            v36 = __swift_allocate_boxed_opaque_existential_1Tm_1(v35 + 3);
            v37 = v51;
            (*(v51 + 16))(v36, v12, v7);
            v35[8] = 1;
            v35[9] = 0;
            v35[10] = 0;
            v35[11] = 0;

            sub_1973FCF28(&v54, a1);

            sub_1974A1014(v49, v48);

            sub_1973FE5EC(v69, &qword_1EAF2AF20, &unk_19752F320);
            (*(v37 + 32))(v53, v12, v7);
            return __swift_destroy_boxed_opaque_existential_1Tm_7(&v64);
          }

          *&v54 = 0;
          *(&v54 + 1) = 0xE000000000000000;

          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000060, 0x800000019752B420);
          v61 = v4;
          sub_1975227FC();
          while (1)
          {
LABEL_43:
            sub_1975223EC();
            __break(1u);
LABEL_44:
            *&v54 = 0;
            *(&v54 + 1) = 0xE000000000000000;
            sub_1975221EC();

            *&v54 = 0xD000000000000017;
            *(&v54 + 1) = 0x800000019752B400;
            sub_197433F28(&v61);
            v59 = v61;
            v60 = v62;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
            v46 = sub_1975217CC();
            MEMORY[0x19A8DFF80](v46);
          }
        }
      }

      else
      {
        *&v56 = 0;
        v54 = 0u;
        v55 = 0u;
      }

      sub_1973FE5EC(v69, &qword_1EAF2AF20, &unk_19752F320);
    }

    else
    {
      sub_1973FE5EC(v69, &qword_1EAF2AF20, &unk_19752F320);

      sub_1973FE5EC(&v61, &qword_1EAF2AF20, &unk_19752F320);
      v54 = 0u;
      v55 = 0u;
      *&v56 = 0;
    }

    sub_1973FE5EC(&v54, &qword_1EAF2C4E8, &qword_197534B58);
    goto LABEL_29;
  }

  sub_1973FE5EC(v69, &qword_1EAF2AF20, &unk_19752F320);

  v54 = v64;
  v55 = v65;
  v56 = v66;
  v57 = v67;
  v58 = v68;

  sub_1974416CC(v57, *(&v57 + 1), v58, *(&v58 + 1));
  sub_19743099C((&v54 + 8), &v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B680, &unk_197534B40);
  return swift_dynamicCast();
}

uint64_t sub_19743C900()
{

  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 24));
  if (*(v0 + 64) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_19743C9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v164 = a5;
  v159 = a4;
  v160 = a3;
  v156 = sub_197521F5C();
  v155 = *(v156 - 8);
  v14 = MEMORY[0x1EEE9AC00](v156, v13);
  v157 = &v153 - v15;
  v16 = a7;
  v158 = *(a7 - 8);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v153 - v22;
  *&v165 = a2;
  v24 = sub_1973F8364(a2);
  v26 = v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v161 = a8;
  v28 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Schema.Entity();
  v30 = sub_1973FDF38(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_beginAccess();
  v162 = v30;
  v31 = *(v30 + 96);
  v32 = *(v31 + 16);
  v163 = v26;
  if (!v32 || (v33 = sub_1973F4028(v24, v26), (v34 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_15;
  }

  v35 = *(*(v31 + 56) + 8 * v33);
  swift_endAccess();
  if ((*(v35 + 120) & 0x90) == 0)
  {
LABEL_15:
    v42 = swift_conformsToProtocol2();
    if (v42 && a1)
    {
      v43 = v42;

      sub_19749244C(a1, v165, v160, v159, v28, a1, v161, &v166, v43);
      goto LABEL_18;
    }

    v46 = swift_conformsToProtocol2();
    if (v46 && a1)
    {
      v47 = v46;
      *&v170[0] = a1;
      v48 = a1;
      do
      {
        sub_1973F732C(v48, v170, v48, v47);
        v48 = *&v170[0];
        v47 = swift_conformsToProtocol2();
        if (v47)
        {
          v49 = v48 == 0;
        }

        else
        {
          v49 = 1;
        }
      }

      while (!v49);
      v50 = swift_conformsToProtocol2();
      if (v50)
      {
        v51 = v48 == 0;
      }

      else
      {
        v51 = 1;
      }

      if (!v51)
      {
        v70 = v50;

        sub_197447C98(v48, v165, v160, v159, v28, v48, v161, &v166, v70);
LABEL_18:
        v44 = v167;
        if (v167 == 255)
        {

          memset(v170, 0, 48);
        }

        else
        {
          v45 = v166;
          *(&v170[1] + 1) = &type metadata for PersistentIdentifier;
          *&v170[2] = sub_197412644();
          *(&v170[2] + 1) = sub_197411E68();

          BYTE8(v170[0]) = v44;
          *&v170[0] = v45;
        }

        goto LABEL_89;
      }

      if (swift_conformsToProtocol2() && v48)
      {
        sub_1975214DC();
        if ((v52 & 0x8000000000000000) == 0)
        {
          if (v52)
          {
            v53 = sub_1975214DC();
            if (v54 >= 1)
            {
              v55 = *v53;
              v56 = swift_conformsToProtocol2();
              if (v56 && v55)
              {
                v57 = v56;

                v58 = sub_197447300(v55, v165, v160, v28, v16, v55, v161, v57);
                if (v58)
                {
                  *(&v170[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
                  *&v170[2] = sub_197412710(&qword_1ED7C77C0, sub_197412644, MEMORY[0x1E69E6330]);
                  *(&v170[2] + 1) = sub_197412710(&qword_1ED7C77C8, sub_197411E68, MEMORY[0x1E69E6300]);
                }

                else
                {

                  memset(v170 + 8, 0, 40);
                }

                v146 = v164;
                *&v170[0] = v58;
                swift_beginAccess();
                v144 = v146;
                return sub_19743E090(v170, v144);
              }

              v122 = dynamic_cast_existential_2_conditional(v48, v48, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
              if (!v122)
              {
                *&v170[0] = 0;
                *(&v170[0] + 1) = 0xE000000000000000;
                sub_1975221EC();

                *&v170[0] = 0xD00000000000001ALL;
                *(&v170[0] + 1) = 0x8000000197524F40;
                v152 = sub_197522B8C();
                MEMORY[0x19A8DFF80](v152);

                goto LABEL_108;
              }

              v125 = v122;
              v126 = v123;
              v127 = v124;

              v128 = sub_197521F5C();
              v129 = *(v128 - 8);
              MEMORY[0x1EEE9AC00](v128, v130);
              v132 = &v153 - v131;
              sub_19743EA84(v159, v165, v125, &v153 - v131);
              v133 = *(v125 - 8);
              if ((*(v133 + 48))(v132, 1, v125) == 1)
              {

                (*(v129 + 8))(v132, v128);
                goto LABEL_76;
              }

              *&v168 = v125;
              *(&v168 + 1) = v126;
              v169 = v127;
              v145 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v166);
              (*(v133 + 32))(v145, v132, v125);
              goto LABEL_79;
            }

LABEL_97:
            __break(1u);
            goto LABEL_98;
          }

          v81 = dynamic_cast_existential_2_conditional(v48, v48, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
          if (v81)
          {
            goto LABEL_72;
          }

LABEL_101:
          *&v170[0] = 0;
          *(&v170[0] + 1) = 0xE000000000000000;
          sub_1975221EC();

          *&v170[0] = 0xD00000000000001DLL;
          *(&v170[0] + 1) = 0x8000000197524E70;
          v148 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v148);

          goto LABEL_108;
        }

LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v81 = dynamic_cast_existential_2_conditional(v48, v48, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
      if (v81)
      {
LABEL_72:
        v84 = v81;
        v85 = v82;
        v86 = v83;

        v87 = sub_197521F5C();
        v88 = *(v87 - 8);
        MEMORY[0x1EEE9AC00](v87, v114);
        v91 = &v153 - v115;
        sub_19743EA84(v159, v165, v84, &v153 - v115);
        goto LABEL_73;
      }

LABEL_52:
      *&v170[0] = 0;
      *(&v170[0] + 1) = 0xE000000000000000;
      sub_1975221EC();

      *&v170[0] = 0xD000000000000029;
      *(&v170[0] + 1) = 0x8000000197524E40;
      v69 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v69);

LABEL_108:
      result = sub_1975223EC();
      __break(1u);
      return result;
    }

    v59 = swift_conformsToProtocol2();
    if (v59 && a1)
    {
      v60 = v59;
      sub_1975214DC();
      if (v61 < 0)
      {
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      if (v61)
      {
        v62 = sub_1975214DC();
        if (v63 >= 1)
        {
          v64 = *v62;
          if (swift_conformsToProtocol2() && v64)
          {

            v65 = sub_19749295C(a1, v165, v160, v159, v28, v16, a1, v161, v60);
            *(&v170[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
            *&v170[2] = sub_197412710(&qword_1ED7C77C0, sub_197412644, MEMORY[0x1E69E6330]);
            *(&v170[2] + 1) = sub_197412710(&qword_1ED7C77C8, sub_197411E68, MEMORY[0x1E69E6300]);

            *&v170[0] = v65;
LABEL_89:
            v143 = v164;
            swift_beginAccess();
            v144 = v143;
            return sub_19743E090(v170, v144);
          }

          if (!dynamic_cast_existential_2_conditional(v64, v64, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]))
          {
            *&v170[0] = 0;
            *(&v170[0] + 1) = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD000000000000039, 0x8000000197524E90);
            v149 = sub_197522B8C();
            MEMORY[0x19A8DFF80](v149);

            goto LABEL_108;
          }

          v101 = dynamic_cast_existential_2_conditional(a1, a1, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
          if (!v101)
          {
            *&v170[0] = 0;
            *(&v170[0] + 1) = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197524ED0);
            v150 = sub_197522B8C();
            MEMORY[0x19A8DFF80](v150);

            MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
            MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197524EF0);
            MEMORY[0x19A8DFF80](0xD000000000000025, 0x8000000197524F10);
            v151 = sub_197522B8C();
            MEMORY[0x19A8DFF80](v151);

            goto LABEL_108;
          }

          v104 = v101;
          v105 = v102;
          v106 = v103;

          v107 = sub_197521F5C();
          v108 = *(v107 - 8);
          MEMORY[0x1EEE9AC00](v107, v109);
          v111 = &v153 - v110;
          sub_19743EC54(v165, v159, v28, v104, v161, &v153 - v110, v105);
          v112 = *(v104 - 8);
          if ((*(v112 + 48))(v111, 1, v104) == 1)
          {

            (*(v108 + 8))(v111, v107);
LABEL_76:
            memset(v170, 0, 48);
            goto LABEL_89;
          }

          *&v168 = v104;
          *(&v168 + 1) = v105;
          v169 = v106;
          v134 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v166);
          (*(v112 + 32))(v134, v111, v104);
LABEL_79:
          v118 = v169;
          v165 = v168;
          v119 = v168;
          v120 = __swift_project_boxed_opaque_existential_1Tm_0(&v166, v168);
          *(&v170[1] + 8) = v165;
          *(&v170[2] + 1) = v118;
          boxed_opaque_existential_2Tm_0 = __swift_allocate_boxed_opaque_existential_2Tm_0(v170);
          (*(*(v119 - 8) + 16))(boxed_opaque_existential_2Tm_0, v120, v119);

          __swift_destroy_boxed_opaque_existential_1Tm_1(&v166);
          goto LABEL_89;
        }

        goto LABEL_95;
      }

      v66 = dynamic_cast_existential_2_conditional(a1, a1, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
      if (!v66)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v66 = dynamic_cast_existential_2_conditional(a1, a1, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
      if (!v66)
      {
        goto LABEL_52;
      }
    }

    v84 = v66;
    v85 = v67;
    v86 = v68;

    v87 = sub_197521F5C();
    v88 = *(v87 - 8);
    MEMORY[0x1EEE9AC00](v87, v89);
    v91 = &v153 - v90;
    sub_19743EC54(v165, v159, v28, v84, v161, &v153 - v90, v85);
LABEL_73:
    v116 = *(v84 - 8);
    if ((*(v116 + 48))(v91, 1, v84) == 1)
    {

      (*(v88 + 8))(v91, v87);
      goto LABEL_76;
    }

    *&v168 = v84;
    *(&v168 + 1) = v85;
    v169 = v86;
    v117 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v166);
    (*(v116 + 32))(v117, v91, v84);
    goto LABEL_79;
  }

  *&v170[0] = a1;
  v36 = v16;
  MetatypeMetadata = swift_getMetatypeMetadata();

  if ((sub_1974482A8(v170, MetatypeMetadata) & 1) == 0)
  {
    v154 = v24;
    sub_197522B2C();
    v71 = v165;
    v72 = swift_dynamicCastClass();
    if (v72)
    {
      v73 = v72;
      v74 = v161;
      v75 = *(v161 + 104);

      v75(v73, v36, v28, v74);
      type metadata accessor for Schema.Attribute();
      *(&v170[1] + 1) = v36;
      v76 = __swift_allocate_boxed_opaque_existential_2Tm_0(v170);
      v77 = v158;
      (*(v158 + 16))(v76, v23, v36);
      v78 = sub_1974480F8(v170, v35);
      v80 = v79;
      __swift_destroy_boxed_opaque_existential_1Tm_1(v170);
      if (v80 >> 60 != 15)
      {

        *(&v170[1] + 1) = MEMORY[0x1E6969080];
        *&v170[2] = sub_1974122A4();
        *(&v170[2] + 1) = sub_1974122F8();

        *&v170[0] = v78;
        *(&v170[0] + 1) = v80;
        (*(v77 + 8))(v23, v36);
        goto LABEL_89;
      }

      goto LABEL_100;
    }

    v92 = sub_1973F8364(v71);
    v94 = v159;
    v95 = *(v159 + 16);
    if (*(v95 + 16))
    {
      v96 = sub_1973F4028(v92, v93);
      v98 = v97;

      if (v98)
      {
        v99 = *(*(v95 + 56) + 8 * v96);
        swift_beginAccess();
        if ((v99 & 0x8000000000000000) == 0)
        {
          v100 = *(v94 + 32);
          if (v99 < *(v100 + 16))
          {
            sub_1973FE14C(v100 + 32 * v99 + 32, v170, &qword_1EAF2AF20, &unk_19752F320);
LABEL_86:
            v135 = v158;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
            v136 = v157;
            v137 = swift_dynamicCast();
            v138 = *(v135 + 56);
            if ((v137 & 1) == 0)
            {
              v138(v136, 1, 1, v36);
              (*(v155 + 8))(v136, v156);
              goto LABEL_108;
            }

            v138(v136, 0, 1, v36);
            (*(v135 + 32))(v20, v136, v36);
            type metadata accessor for Schema.Attribute();
            *(&v170[1] + 1) = v36;
            v139 = __swift_allocate_boxed_opaque_existential_2Tm_0(v170);
            (*(v135 + 16))(v139, v20, v36);
            v140 = sub_1974480F8(v170, v35);
            v142 = v141;
            __swift_destroy_boxed_opaque_existential_1Tm_1(v170);
            if (v142 >> 60 != 15)
            {

              *(&v170[1] + 1) = MEMORY[0x1E6969080];
              *&v170[2] = sub_1974122A4();
              *(&v170[2] + 1) = sub_1974122F8();

              *&v170[0] = v140;
              *(&v170[0] + 1) = v142;
              (*(v135 + 8))(v20, v36);
              goto LABEL_89;
            }

            goto LABEL_100;
          }

LABEL_99:
          __break(1u);
LABEL_100:
          *&v170[0] = 0;
          *(&v170[0] + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD00000000000001ELL, 0x80000001975259F0);
          v147 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v147);

          MEMORY[0x19A8DFF80](46, 0xE100000000000000);
          MEMORY[0x19A8DFF80](v154, v163);
          MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
          MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
          MEMORY[0x19A8DFF80](0xD000000000000039, 0x8000000197525A10);
          MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
          goto LABEL_108;
        }

LABEL_98:
        __break(1u);
        goto LABEL_99;
      }
    }

    else
    {
    }

    memset(v170, 0, 32);
    goto LABEL_86;
  }

  *&v170[0] = a1;
  v38 = swift_conformsToProtocol2();
  if (v38)
  {
    v39 = v163;
    if (a1)
    {
      v40 = v38;
      do
      {
        sub_1973F732C(a1, v170, a1, v40);
        a1 = *&v170[0];
        v40 = swift_conformsToProtocol2();
        if (v40)
        {
          v41 = a1 == 0;
        }

        else
        {
          v41 = 1;
        }
      }

      while (!v41);
    }
  }

  else
  {
    v39 = v163;
  }

  sub_1974494AC(a1, v165, v160, v35, v24, v39, v164, v28, v16, a1, v161);
}